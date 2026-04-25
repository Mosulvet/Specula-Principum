# Universal culture modifier insertion script
# Usage: Define $modifiers hashtable and $srcPath/$outPath, then dot-source this

function Insert-CultureModifiers {
    param(
        [string]$SourcePath,
        [string]$OutputPath,
        [hashtable]$Modifiers
    )
    
    $lines = Get-Content $SourcePath
    $output = New-Object System.Collections.Generic.List[string]
    $i = 0
    $culturesProcessed = 0
    $culturesTotal = 0
    $missingCultures = @()
    
    while ($i -lt $lines.Count) {
        $line = $lines[$i]
        
        # Check if this line starts a top-level culture definition (no leading whitespace)
        if ($line -match '^(\w+)\s*=\s*\{') {
            $cultureName = $Matches[1]
            $culturesTotal++
            
            if ($Modifiers.ContainsKey($cultureName)) {
                $mod = $Modifiers[$cultureName]
                
                # Collect all lines of this culture block
                $cultureLines = @($line)
                $braceCount = ($line.ToCharArray() | Where-Object { $_ -eq '{' }).Count
                $braceCount -= ($line.ToCharArray() | Where-Object { $_ -eq '}' }).Count
                $i++
                
                while ($i -lt $lines.Count -and $braceCount -gt 0) {
                    $cline = $lines[$i]
                    $braceCount += ($cline.ToCharArray() | Where-Object { $_ -eq '{' }).Count
                    $braceCount -= ($cline.ToCharArray() | Where-Object { $_ -eq '}' }).Count
                    $cultureLines += $cline
                    $i++
                }
                
                # Now find insertion point within cultureLines
                # Priority: before opinions, then before culture_groups, then before closing }
                $insertIdx = -1
                for ($j = 0; $j -lt $cultureLines.Count; $j++) {
                    if ($cultureLines[$j] -match '^\s+opinions\s*=\s*\{') {
                        $insertIdx = $j
                        break
                    }
                }
                if ($insertIdx -eq -1) {
                    for ($j = 0; $j -lt $cultureLines.Count; $j++) {
                        if ($cultureLines[$j] -match '^\s+culture_groups\s*=\s*\{') {
                            $insertIdx = $j
                            break
                        }
                    }
                }
                if ($insertIdx -eq -1) {
                    # Insert before the last line (closing brace)
                    $insertIdx = $cultureLines.Count - 1
                }
                
                # Build modifier text
                $modBlock = @(
                    ""
                    "`tcountry_modifier = {"
                    "`t`t$($mod.cc)"
                    "`t`t$($mod.cm)"
                    "`t}"
                    ""
                    "`tlocation_modifier = {"
                    "`t`t$($mod.lc)"
                    "`t`t$($mod.lm)"
                    "`t}"
                )
                
                # Output: lines before insert, modifier block, lines from insert onward
                for ($j = 0; $j -lt $insertIdx; $j++) {
                    $output.Add($cultureLines[$j])
                }
                foreach ($ml in $modBlock) {
                    $output.Add($ml)
                }
                for ($j = $insertIdx; $j -lt $cultureLines.Count; $j++) {
                    $output.Add($cultureLines[$j])
                }
                
                $culturesProcessed++
            } else {
                # Culture not in mapping - output unchanged and track it
                $missingCultures += $cultureName
                $output.Add($line)
                $i++
            }
        } else {
            $output.Add($line)
            $i++
        }
    }
    
    $output | Out-File -FilePath $OutputPath -Encoding UTF8
    Write-Host "Processed $culturesProcessed / $culturesTotal cultures"
    Write-Host "Output: $OutputPath ($($output.Count) lines)"
    if ($missingCultures.Count -gt 0) {
        Write-Host "WARNING - Missing mappings for: $($missingCultures -join ', ')"
    }
}

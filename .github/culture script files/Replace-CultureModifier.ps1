# Replace-CultureModifier.ps1
# Replaces a modifier block (country_modifier or location_modifier) for specified cultures in an output file.
# Usage: Replace-CultureModifier -FilePath "..." -BlockType "country_modifier" -Replacements @{ "culture_name" = @{ comment="# New comment"; modifier="new_modifier = 0.1" } }

function Replace-CultureModifier {
    param(
        [string]$FilePath,
        [string]$BlockType,  # "country_modifier" or "location_modifier"
        [hashtable]$Replacements
    )
    
    $lines = Get-Content $FilePath
    $output = New-Object System.Collections.Generic.List[string]
    $i = 0
    $replaced = 0
    $currentCulture = ""
    
    while ($i -lt $lines.Count) {
        $line = $lines[$i]
        
        # Track current top-level culture
        if ($line -match '^(\w+)\s*=\s*\{') {
            $currentCulture = $Matches[1]
        }
        
        # Check if this is the target block type inside a culture we want to replace
        if ($currentCulture -ne "" -and $Replacements.ContainsKey($currentCulture) -and $line -match "^\s+${BlockType}\s*=\s*\{") {
            $rep = $Replacements[$currentCulture]
            # Skip the old block (find matching close brace)
            $braceCount = ($line.ToCharArray() | Where-Object { $_ -eq '{' }).Count
            $braceCount -= ($line.ToCharArray() | Where-Object { $_ -eq '}' }).Count
            $i++
            while ($i -lt $lines.Count -and $braceCount -gt 0) {
                $braceCount += ($lines[$i].ToCharArray() | Where-Object { $_ -eq '{' }).Count
                $braceCount -= ($lines[$i].ToCharArray() | Where-Object { $_ -eq '}' }).Count
                $i++
            }
            # Write replacement block
            $output.Add("`t${BlockType} = {")
            $output.Add("`t`t$($rep.comment)")
            $output.Add("`t`t$($rep.modifier)")
            $output.Add("`t}")
            $replaced++
            continue
        }
        
        $output.Add($line)
        $i++
    }
    
    $output | Out-File -FilePath $FilePath -Encoding UTF8
    Write-Host "Replaced $replaced $BlockType blocks in $(Split-Path $FilePath -Leaf)"
}

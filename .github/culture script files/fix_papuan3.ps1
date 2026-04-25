$base = "c:\Users\sages\OneDrive - Microsoft\Documents\GitHub\Specula-Principum"
$outDir = "$base\CulturalDifferencesOutput\in_game\common\cultures"
. "$base\CulturalDifferencesOutput\Replace-CultureModifier.ps1"
$lmFix = @{}
$lmFix["manubara_culture"] = @{comment="# The Manubara coastal lowlands supported productive sweet potato and taro garden cultivation."; modifier="local_grain_output_modifier = 0.1"}
Replace-CultureModifier -FilePath "$outDir\papuan.txt" -BlockType "location_modifier" -Replacements $lmFix

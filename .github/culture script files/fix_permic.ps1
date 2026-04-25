# Fix permic.txt with correct culture names
$base = "c:\Users\sages\OneDrive - Microsoft\Documents\GitHub\Specula-Principum"
$outDir = "$base\CulturalDifferencesOutput\in_game\common\cultures"
. "$base\CulturalDifferencesOutput\Replace-CultureModifier.ps1"

$cmFix = @{}
$cmFix["komi"] = @{comment="# The Komi were active participants in the Pechora fur trade, exchanging pelts with Novgorodian merchants."; modifier="trade_efficiency = 0.05"}
Replace-CultureModifier -FilePath "$outDir\permic.txt" -BlockType "country_modifier" -Replacements $cmFix

$lmFix = @{}
$lmFix["komi"] = @{comment="# The Pechora and Vychegda rivers provided freshwater fishing alongside the fur trade."; modifier="local_fish_output_modifier = 0.1"}
$lmFix["udmurt"] = @{comment="# The Udmurt territory along the Kama River supported productive agriculture with rye and barley."; modifier="local_grain_output_modifier = 0.1"}
Replace-CultureModifier -FilePath "$outDir\permic.txt" -BlockType "location_modifier" -Replacements $lmFix

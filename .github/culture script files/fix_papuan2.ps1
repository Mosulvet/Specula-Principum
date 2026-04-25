# Fix papuan - 2 more LM changes needed (69/135 -> 67/135)
$base = "c:\Users\sages\OneDrive - Microsoft\Documents\GitHub\Specula-Principum"
$outDir = "$base\CulturalDifferencesOutput\in_game\common\cultures"
. "$base\CulturalDifferencesOutput\Replace-CultureModifier.ps1"

$lmFix = @{}
$lmFix["kumalu_culture"] = @{comment="# The Kumalu territory along the Markham River provided productive freshwater fishing."; modifier="local_fish_output_modifier = 0.1"}
$lmFix["maiwa_papua_culture"] = @{comment="# The Maiwa highland gardens produced abundant sweet potato and taro crops at moderate elevations."; modifier="local_grain_output_modifier = 0.1"}
Replace-CultureModifier -FilePath "$outDir\papuan.txt" -BlockType "location_modifier" -Replacements $lmFix

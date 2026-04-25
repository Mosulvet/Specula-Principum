# Fix final 3 stragglers
$base = "c:\Users\sages\OneDrive - Microsoft\Documents\GitHub\Specula-Principum"
$outDir = "$base\CulturalDifferencesOutput\in_game\common\cultures"
. "$base\CulturalDifferencesOutput\Replace-CultureModifier.ps1"

# eastcoast CM: global_grain 56/109 -> need 54
$cmFix = @{}
$cmFix["hocak_culture"] = @{comment="# The Ho-Chunk (Winnebago) were renowned warriors and orators of the Great Lakes region."; modifier="army_infantry_power = 0.05"}
$cmFix["doeg_culture"] = @{comment="# The Doeg (Dogue) were Potomac River people who combined tidewater fishing with farming."; modifier="global_fish_output_modifier = 0.1"}
Replace-CultureModifier -FilePath "$outDir\eastcoast.txt" -BlockType "country_modifier" -Replacements $cmFix

# papuan LM: local_hostile 69/135 -> need 67
$lmFix = @{}
$lmFix["wampar_culture"] = @{comment="# The Wampar territory along the Markham Valley supported productive taro and sweet potato gardens."; modifier="local_grain_output_modifier = 0.1"}
$lmFix["iwal_culture"] = @{comment="# The Iwal coastal territory provided productive fishing from the Huon Gulf waters."; modifier="local_fish_output_modifier = 0.1"}
Replace-CultureModifier -FilePath "$outDir\papuan.txt" -BlockType "location_modifier" -Replacements $lmFix

# permic CM: global_livestock 4/6 -> need 2. Change besermyan.
$cmFix2 = @{}
$cmFix2["besermyan"] = @{comment="# The Besermyan maintained unique cultural identity through stable community practices blending Turkic and Finno-Ugric traditions."; modifier="stability_cost_modifier = -0.05"}
Replace-CultureModifier -FilePath "$outDir\permic.txt" -BlockType "country_modifier" -Replacements $cmFix2

Write-Host "Final fixes done."

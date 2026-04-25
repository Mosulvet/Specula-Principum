# Fix small files: caribbean, finno_ugric, bengal, israelite, south_africa
$base = "c:\Users\sages\OneDrive - Microsoft\Documents\GitHub\Specula-Principum"
$outDir = "$base\CulturalDifferencesOutput\in_game\common\cultures"
. "$base\CulturalDifferencesOutput\Replace-CultureModifier.ps1"

# ========== CARIBBEAN (CM: global_fish 6/8=75%, LM: local_fish 8/8=100%) ==========
Write-Host "--- caribbean.txt ---"
$cmFix = @{}
$cmFix["macorix_culture"] = @{comment="# The Macorix were a distinct Hispaniola people who traded with neighboring Taino communities."; modifier="trade_efficiency = 0.05"}
$cmFix["lucayo"] = @{comment="# The Lucayan maintained peaceful, well-ordered communities across the Bahamas archipelago."; modifier="stability_cost_modifier = -0.05"}
$cmFix["ciguayo_culture"] = @{comment="# The Ciguayo fiercely resisted Columbus's landing in the Gulf of Arrows in 1493, renowned as warriors."; modifier="army_infantry_power = 0.05"}
Replace-CultureModifier -FilePath "$outDir\caribbean.txt" -BlockType "country_modifier" -Replacements $cmFix

$lmFix = @{}
$lmFix["taino_culture"] = @{comment="# The Taino cultivated extensive conucos (raised beds) growing cassava, corn, and sweet potato as their agricultural base."; modifier="local_grain_output_modifier = 0.15"}
$lmFix["carib"] = @{comment="# The Island Caribs defended their territories fiercely against both European and rival indigenous attacks."; modifier="local_defensive = 0.1"}
$lmFix["macorix_culture"] = @{comment="# The Macorix participated in inter-island exchange networks across Hispaniola and the Greater Antilles."; modifier="local_trade_output_modifier = 0.1"}
$lmFix["igneri"] = @{comment="# The Igneri (early Arawakan settlers) were skilled agriculturalists who brought cassava cultivation to the Lesser Antilles."; modifier="local_grain_output_modifier = 0.1"}
Replace-CultureModifier -FilePath "$outDir\caribbean.txt" -BlockType "location_modifier" -Replacements $lmFix

# ========== FINNO_UGRIC (CM: global_livestock 12/20=60%, LM: local_hostile_attrition 15/20=75%) ==========
Write-Host "--- finno_ugric.txt ---"
$cmFix = @{}
$cmFix["tavastian"] = @{comment="# The Tavastians were settled Finnish agriculturalists known for stable farming communities in the interior."; modifier="stability_cost_modifier = -0.05"}
$cmFix["mari_culture"] = @{comment="# The Mari practiced slash-and-burn agriculture along the Volga, growing rye, oats, and buckwheat."; modifier="global_grain_output_modifier = 0.05"}
$cmFix["merya_culture"] = @{comment="# The Merya inhabited the upper Volga region and participated in long-distance Volga-Baltic trade networks."; modifier="trade_efficiency = 0.05"}
Replace-CultureModifier -FilePath "$outDir\finno_ugric.txt" -BlockType "country_modifier" -Replacements $cmFix

$lmFix = @{}
$lmFix["bjarmian"] = @{comment="# Bjarmia (Bjarmaland) on the White Sea was a key trading post for Norse-Finnic exchange of furs, walrus ivory, and metals."; modifier="local_trade_output_modifier = 0.1"}
$lmFix["karelian"] = @{comment="# Karelia's vast lake systems (Ladoga, Onega) provided productive freshwater fishing alongside forestry."; modifier="local_fish_output_modifier = 0.1"}
$lmFix["mari_culture"] = @{comment="# The Volga Mari region supported productive slash-and-burn agriculture in the forest clearings."; modifier="local_grain_output_modifier = 0.1"}
$lmFix["merya_culture"] = @{comment="# The Merya territories along the upper Volga were key nodes in the Volga fur and amber trade routes."; modifier="local_trade_output_modifier = 0.1"}
$lmFix["tavastian"] = @{comment="# The Tavastian interior of Finland supported settled agriculture with rye and barley cultivation."; modifier="local_grain_output_modifier = 0.1"}
$lmFix["savonian"] = @{comment="# The Savonian frontier region's dense forests and slash-and-burn clearings provided natural defensive terrain."; modifier="local_defensive = 0.1"}
Replace-CultureModifier -FilePath "$outDir\finno_ugric.txt" -BlockType "location_modifier" -Replacements $lmFix

# ========== BENGAL (CM: army_infantry_power 14/26=54%) ==========
Write-Host "--- bengal.txt ---"
$cmFix = @{}
$cmFix["tharu_culture"] = @{comment="# The Tharu were Terai plains agriculturalists, expert rice paddy farmers in the fertile Gangetic lowlands."; modifier="global_grain_output_modifier = 0.1"}
$cmFix["karbi_culture"] = @{comment="# The Karbi practiced mixed farming with livestock, shifting cultivation, and forest management in the Assam hills."; modifier="global_livestock_output_modifier = 0.1"}
Replace-CultureModifier -FilePath "$outDir\bengal.txt" -BlockType "country_modifier" -Replacements $cmFix

# ========== ISRAELITE (CM: trade_efficiency 8/12=67%, LM: local_production_efficiency 8/12=67%) ==========
Write-Host "--- israelite.txt ---"
$cmFix = @{}
$cmFix["gurji"] = @{comment="# Georgian Jews maintained remarkably cohesive communities for centuries under Georgian royal protection."; modifier="stability_cost_modifier = -0.05"}
$cmFix["mizrahi"] = @{comment="# Mizrahi Jews served as administrators and scholars across the Islamic world, contributing to governance."; modifier="diplomatic_reputation = 1"}
$cmFix["qayfengi"] = @{comment="# Kaifeng Jews in Song/Ming China integrated into the agricultural economy as farmers and civil officials."; modifier="global_grain_output_modifier = 0.05"}
Replace-CultureModifier -FilePath "$outDir\israelite.txt" -BlockType "country_modifier" -Replacements $cmFix

$lmFix = @{}
$lmFix["gurji"] = @{comment="# Georgian Jewish communities in Tiflis and other cities were active in local trade and commerce."; modifier="local_trade_output_modifier = 0.1"}
$lmFix["qayfengi"] = @{comment="# Kaifeng in the Yellow River plain was one of China's most productive agricultural regions."; modifier="local_grain_output_modifier = 0.1"}
$lmFix["mustaarabi"] = @{comment="# The Musta'arabi (Arabized Jews) of the Levant were merchants active in Mediterranean and overland trade."; modifier="local_trade_output_modifier = 0.1"}
Replace-CultureModifier -FilePath "$outDir\israelite.txt" -BlockType "location_modifier" -Replacements $lmFix

# ========== SOUTH_AFRICA (CM: land_morale 13/23=57%, LM: local_hostile_attrition 13/23=57%) ==========
Write-Host "--- south_africa.txt ---"
$cmFix = @{}
$cmFix["amkoe_culture"] = @{comment="# The Amkoe (N|oha) San maintained remarkably egalitarian societies with sophisticated conflict resolution."; modifier="stability_cost_modifier = -0.05"}
$cmFix["gxana_culture"] = @{comment="# The G||ana San of the Okavango region combined foraging with seasonal fishing in the Delta waterways."; modifier="global_fish_output_modifier = 0.1"}
$cmFix["hai_om_culture"] = @{comment="# The Hai||om maintained trade connections with neighboring Ovambo and Herero herding peoples."; modifier="trade_efficiency = 0.05"}
Replace-CultureModifier -FilePath "$outDir\south_africa.txt" -BlockType "country_modifier" -Replacements $cmFix

$lmFix = @{}
$lmFix["gxana_culture"] = @{comment="# The Okavango Delta provided seasonal fish, aquatic plants, and floodplain foraging resources."; modifier="local_fish_output_modifier = 0.1"}
$lmFix["xam_culture"] = @{comment="# The /Xam possessed sophisticated knowledge of Karoo plants, creating tools, poisons, and medicines."; modifier="local_production_efficiency = 0.05"}
$lmFix["amkoe_culture"] = @{comment="# The Amkoe knew every water source and seasonal food patch in their semi-arid territory."; modifier="local_defensive = 0.1"}
Replace-CultureModifier -FilePath "$outDir\south_africa.txt" -BlockType "location_modifier" -Replacements $lmFix

Write-Host "`nSmall files fix complete."

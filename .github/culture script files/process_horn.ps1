# Process horn_of_africa.txt
$base = "c:\Users\sages\OneDrive - Microsoft\Documents\GitHub\Specula-Principum"
. "$base\CulturalDifferencesOutput\Insert-CultureModifiers.ps1"

$m = @{}

# Ethiopian Highland Christians
$m["amhara"] = @{cm="prestige = 5"; cc="# The Amhara-led Solomonic dynasty ruled one of Africa's oldest Christian kingdoms, claiming descent from King Solomon."; lm="local_grain_output_modifier = 0.1"; lc="# The Ethiopian highlands' fertile volcanic soils supported intensive grain agriculture including teff and barley."}
$m["tigrinya"] = @{cm="prestige = 5"; cc="# The Tigrinya were heirs to the ancient Aksumite Empire, one of the great civilizations of the ancient world."; lm="local_grain_output_modifier = 0.1"; lc="# The Eritrean and Tigrayan highlands supported terraced farming of grains in the Aksumite heartland."}
$m["tigre"] = @{cm="global_livestock_output_modifier = 0.1"; cc="# The Tigre were pastoral and agro-pastoral people of the Eritrean lowlands, herding cattle and camels."; lm="local_livestock_output_modifier = 0.1"; lc="# The Eritrean lowlands and coast supported pastoral herding alongside limited agriculture."}
$m["gurage"] = @{cm="trade_efficiency = 0.05"; cc="# The Gurage were renowned traders and cultivators of enset (false banana), a unique Ethiopian crop."; lm="local_grain_output_modifier = 0.1"; lc="# The Gurage homeland in south-central Ethiopia supported intensive enset cultivation."}
$m["agaw_culture"] = @{cm="global_grain_output_modifier = 0.1"; cc="# The Agaw were among the original Cushitic inhabitants of the Ethiopian highlands, skilled grain farmers."; lm="local_grain_output_modifier = 0.1"; lc="# The Agaw homeland in the Ethiopian highlands supported productive grain agriculture."}

# Cushitic/Omotic cultures
$m["gonga_culture"] = @{cm="global_grain_output_modifier = 0.1"; cc="# The Gonga (Kaffa) people gave their name to coffee, which they were the first to cultivate as a beverage crop."; lm="local_grain_output_modifier = 0.1"; lc="# The lush southwestern Ethiopian highlands were among the most fertile regions in the Horn of Africa."}
$m["ometo_culture"] = @{cm="global_grain_output_modifier = 0.1"; cc="# The Ometo peoples of southern Ethiopia maintained organized kingdoms and intensive agriculture."; lm="local_grain_output_modifier = 0.1"; lc="# The Omo River region's fertile soils supported productive farming communities."}
$m["omo_culture"] = @{cm="global_livestock_output_modifier = 0.1"; cc="# The Omo Valley peoples practiced agro-pastoralism along the lower Omo River."; lm="local_livestock_output_modifier = 0.1"; lc="# The lower Omo Valley supported pastoral herding and floodplain agriculture."}
$m["oromo_culture"] = @{cm="army_cavalry_power = 0.1"; cc="# The Oromo were formidable mounted warriors whose great expansion in the 16th century transformed the Horn of Africa."; lm="local_livestock_output_modifier = 0.1"; lc="# The Oromo homeland's grasslands and highlands supported large herds of cattle and horses."}
$m["somali_culture"] = @{cm="trade_efficiency = 0.1"; cc="# The Somali controlled lucrative Indian Ocean trade routes, with Mogadishu and Zeila as major commercial ports."; lm="local_livestock_output_modifier = 0.1"; lc="# The semi-arid Somali regions supported pastoral camel and cattle herding alongside coastal trade."}
$m["afar_culture"] = @{cm="trade_efficiency = 0.05"; cc="# The Afar controlled the vital salt trade from the Danakil Depression, one of the hottest places on Earth."; lm="local_hostile_attrition = 0.15"; lc="# The Danakil Depression and Afar Triangle were among the most inhospitable inhabited regions on Earth."}

# Highland Cushitic/Sidamic
foreach ($c in @("burji_culture","gedeo_culture","hadiya_culture","kambaata_culture","sidama_culture")) {
    $m[$c] = @{cm="global_grain_output_modifier = 0.1"; cc="# This Cushitic-speaking Highland people practiced intensive agriculture in the fertile Ethiopian highlands."; lm="local_grain_output_modifier = 0.1"; lc="# The southern Ethiopian highland valleys supported productive enset and grain cultivation."}
}
$m["harla_culture"] = @{cm="trade_efficiency = 0.05"; cc="# The Harla were an ancient people of eastern Ethiopia, associated with the medieval Adal Sultanate and long-distance trade."; lm="local_production_efficiency = 0.05"; lc="# The Harar region was a crossroads of trade between the Ethiopian highlands and the Red Sea coast."}
$m["beja_culture"] = @{cm="global_livestock_output_modifier = 0.1"; cc="# The Beja were nomadic pastoralists of the Red Sea hills, fierce warriors who resisted Egyptian and Roman control."; lm="local_hostile_attrition = 0.1"; lc="# The arid Red Sea hills were harsh, waterless terrain that provided natural defense for the Beja."}

# Sudanese Arab
$m["sudanese_arab"] = @{cm="trade_efficiency = 0.05"; cc="# The Sudanese Arabs were traders and pastoralists who brought Islam and commerce to the Nilotic Sudan."; lm="local_livestock_output_modifier = 0.1"; lc="# The Sudanese savanna supported cattle, camel, and sheep herding alongside Nile-fed agriculture."}

# Nilotic peoples
foreach ($c in @("dinka_culture","nuer_culture","shilluk_culture")) {
    $m[$c] = @{cm="global_livestock_output_modifier = 0.15"; cc="# This Nilotic cattle-herding people organized their entire society around cattle, which served as wealth, currency, and spiritual center."; lm="local_livestock_output_modifier = 0.1"; lc="# The Sudd and White Nile floodplains provided rich seasonal grazing for enormous cattle herds."}
}
$m["shilluk_culture"] = @{cm="prestige = 5"; cc="# The Shilluk maintained a divine kingship (Reth), one of the most sophisticated political systems among Nilotic peoples."; lm="local_grain_output_modifier = 0.1"; lc="# The Shilluk kingdom along the White Nile practiced agriculture in the river's fertile floodplain."}

# Other Nilotic/Eastern Sudanic
foreach ($c in @("otuho_culture","anuak_culture","moru_culture","surma_culture","seru_culture")) {
    $m[$c] = @{cm="global_livestock_output_modifier = 0.1"; cc="# This Nilotic/Surmic people practiced agro-pastoralism in the South Sudanese and Ethiopian borderlands."; lm="local_hostile_attrition = 0.1"; lc="# The remote South Sudanese/Ethiopian borderlands were difficult terrain for outside powers to control."}
}

# Sudanese kingdoms
$m["funj_culture"] = @{cm="prestige = 5"; cc="# The Funj Sultanate of Sennar was the most powerful state in the Nilotic Sudan, ruling from the Blue Nile confluence."; lm="local_grain_output_modifier = 0.1"; lc="# The Blue and White Nile confluence region supported productive irrigated agriculture."}
$m["fur_culture"] = @{cm="army_infantry_power = 0.05"; cc="# The Fur people founded the Sultanate of Darfur, a major power of the western Sudan with a strong military tradition."; lm="local_grain_output_modifier = 0.1"; lc="# The Jebel Marra highlands of Darfur received enough rainfall to support productive farming."}
$m["nubian"] = @{cm="prestige = 5"; cc="# The Nubians were heirs to the ancient kingdoms of Kush and Meroe, maintaining Christian kingdoms until the 15th century."; lm="local_grain_output_modifier = 0.1"; lc="# The Nubian Nile valley supported irrigated agriculture in a narrow fertile strip."}
$m["tunjur_culture"] = @{cm="global_livestock_output_modifier = 0.1"; cc="# The Tunjur established early sultanates in Darfur and Wadai before being displaced by the Fur and Maba."; lm="local_livestock_output_modifier = 0.1"; lc="# The Sahel grasslands of the Tunjur homeland supported pastoral herding."}
$m["nuba"] = @{cm="local_defensive = 0.1"; cc="# The Nuba peoples of the Nuba Mountains were fierce defenders of their highland refuges against Sudanese raiders."; lm="local_defensive = 0.15"; lc="# The Nuba Mountains provided natural fortress positions that resisted outside control for centuries."}

# Other Sudanese
foreach ($c in @("daju_culture","nyimang_culture","kadu_culture","katla_culture")) {
    $m[$c] = @{cm="global_grain_output_modifier = 0.05"; cc="# This Sudanese people practiced subsistence agriculture and herding in the hills of central Sudan."; lm="local_defensive = 0.1"; lc="# The hilly terrain of the central Sudanese region provided natural defensive positions."}
}
$m["gumuz_culture"] = @{cm="global_grain_output_modifier = 0.05"; cc="# The Gumuz were shifting cultivators of the Ethiopian-Sudanese lowlands, growing sorghum and other crops."; lm="local_hostile_attrition = 0.1"; lc="# The hot, malarial lowlands of the Ethiopian-Sudanese border were dangerous for highland armies."}
$m["kunama_culture"] = @{cm="global_grain_output_modifier = 0.1"; cc="# The Kunama were settled farmers of the Eritrean-Ethiopian lowlands, cultivating sorghum and practicing apiculture."; lm="local_grain_output_modifier = 0.1"; lc="# The Kunama lowlands supported sorghum cultivation in the Gash-Barka region."}
$m["berta_culture"] = @{cm="global_grain_output_modifier = 0.05"; cc="# The Berta were farmers and gold-washers of the Ethiopian-Sudanese borderlands."; lm="local_iron_output_modifier = 0.1"; lc="# The Berta homeland in the Blue Nile headwaters region contained alluvial gold deposits."}
$m["zande_culture"] = @{cm="army_infantry_power = 0.05"; cc="# The Zande were formidable warriors who built a powerful kingdom in the Congo-Nile watershed through military conquest."; lm="local_grain_output_modifier = 0.1"; lc="# The Zande homeland's tropical forests and savannas supported productive agriculture."}
$m["masalit_culture"] = @{cm="global_grain_output_modifier = 0.05"; cc="# The Masalit established a sultanate in western Darfur, practicing agriculture and trading across the Sahel."; lm="local_grain_output_modifier = 0.1"; lc="# The Masalit homeland in western Darfur received enough seasonal rainfall for grain cultivation."}

Insert-CultureModifiers -SourcePath "$base\CulturalDifferencesSource\in_game\common\cultures\horn_of_africa.txt" `
    -OutputPath "$base\CulturalDifferencesOutput\in_game\common\cultures\horn_of_africa.txt" `
    -Modifiers $m

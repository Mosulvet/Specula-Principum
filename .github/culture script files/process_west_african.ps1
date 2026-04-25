# Process west_african.txt
$base = "c:\Users\sages\OneDrive - Microsoft\Documents\GitHub\Specula-Principum"
. "$base\CulturalDifferencesOutput\Insert-CultureModifiers.ps1"

$m = @{}

# Great Empires
$m["mandinka"] = @{cm="prestige = 5"; cc="# The Mandinka built the Mali Empire, one of the richest empires in world history under Mansa Musa, controlling trans-Saharan gold trade."; lm="local_grain_output_modifier = 0.1"; lc="# The Niger River inland delta and surrounding farmland supported the dense populations of the Mali Empire."}
$m["songhai"] = @{cm="prestige = 5"; cc="# The Songhai Empire under Sunni Ali and Askia Muhammad was the largest empire in African history, controlling the trans-Saharan trade."; lm="local_grain_output_modifier = 0.1"; lc="# The Niger River bend and its floodplains were among West Africa's most productive agricultural regions."}
$m["hausa"] = @{cm="trade_efficiency = 0.1"; cc="# The Hausa city-states of Kano, Katsina, and Zaria were among the greatest trading centers of the western Sudan."; lm="local_production_efficiency = 0.1"; lc="# The Hausa cities were major production centers for textiles, leatherwork, and metalwork traded across the Sahara."}
$m["yoruba"] = @{cm="prestige = 5"; cc="# The Yoruba city-states, led by Oyo and Ife, were among the most urbanized civilizations in pre-colonial Africa."; lm="local_production_efficiency = 0.1"; lc="# Yoruba cities were major centers of bronze-casting, weaving, and artistic production."}
$m["edo"] = @{cm="prestige = 5"; cc="# The Kingdom of Benin was one of Africa's most powerful and culturally sophisticated states, famed for its bronze art."; lm="local_production_efficiency = 0.1"; lc="# Benin City's bronze-casters, weavers, and other artisans produced some of the finest works of art in human history."}
$m["igbo"] = @{cm="trade_efficiency = 0.1"; cc="# The Igbo maintained a decentralized but highly commercial society, with extensive trading networks and the Nri priestly kingdom."; lm="local_production_efficiency = 0.05"; lc="# The Igbo heartland's fertile soils supported both agriculture and productive local industries."}
$m["akan"] = @{cm="expand_rgo_mining_cost_modifier = -0.1"; cc="# The Akan controlled the richest gold deposits in West Africa, the foundation of the trans-Saharan gold trade."; lm="local_iron_output_modifier = 0.1"; lc="# The Akan forest zone contained abundant gold deposits that were the source of much of medieval Europe's gold."}
$m["wolof"] = @{cm="trade_efficiency = 0.1"; cc="# The Jolof Empire was a major Senegambian state that controlled trade between the Sahara and the Atlantic coast."; lm="local_grain_output_modifier = 0.1"; lc="# The Senegal River valley and coastal plains supported productive millet and sorghum agriculture."}
$m["fulbe"] = @{cm="army_cavalry_power = 0.1"; cc="# The Fulbe (Fulani) were the greatest pastoralist-warriors of West Africa, their jihads transforming the political landscape."; lm="local_livestock_output_modifier = 0.15"; lc="# The Sahel grasslands supported the enormous Fulani cattle herds that were the foundation of their pastoral economy."}
$m["bambara"] = @{cm="army_infantry_power = 0.05"; cc="# The Bambara were fierce warriors who founded the Kingdoms of Segou and Kaarta, rivaling the Mali successor states."; lm="local_grain_output_modifier = 0.1"; lc="# The Bambara homeland along the Niger River supported productive millet and sorghum agriculture."}

# Mande peoples
$m["soninke"] = @{cm="trade_efficiency = 0.1"; cc="# The Soninke founded the ancient Ghana Empire, the earliest great trading empire of the western Sudan."; lm="local_grain_output_modifier = 0.1"; lc="# The Soninke homeland in the southern Sahara-Sahel supported agriculture and gold mining."}
$m["susu"] = @{cm="global_grain_output_modifier = 0.1"; cc="# The Susu were Mande farmers and traders of coastal Guinea, once rulers of the Sosso Kingdom."; lm="local_grain_output_modifier = 0.1"; lc="# The Guinean coast's tropical rainfall supported productive rice and millet agriculture."}
$m["dyula"] = @{cm="trade_efficiency = 0.15"; cc="# The Dyula (Juula) were the preeminent long-distance traders of West Africa, linking the forest gold zone with Saharan trade routes."; lm="local_production_efficiency = 0.05"; lc="# Dyula trading towns served as commercial centers connecting the gold fields with trans-Saharan markets."}
foreach ($c in @("kpelle","kono_cul","dan")) {
    $m[$c] = @{cm="global_grain_output_modifier = 0.1"; cc="# This Mande-speaking forest people practiced rice and yam cultivation in the Guinea and Liberian forests."; lm="local_hostile_attrition = 0.1"; lc="# The dense West African forests were difficult terrain for outsiders to penetrate."}
}

# Senegambian peoples
$m["serer"] = @{cm="global_grain_output_modifier = 0.1"; cc="# The Serer were among the finest farmers of Senegambia, developing sophisticated systems of crop rotation and land management."; lm="local_grain_output_modifier = 0.15"; lc="# The Serer homeland's deep soils supported intensive millet farming with careful land management."}
foreach ($c in @("jola","manjak","balanta")) {
    $m[$c] = @{cm="global_grain_output_modifier = 0.1"; cc="# This Senegambian people was skilled rice farmers of the coastal lowlands, building complex paddy systems."; lm="local_grain_output_modifier = 0.1"; lc="# The coastal mangrove regions of Guinea-Bissau and Casamance supported wet-rice cultivation."}
}
$m["tenda_culture"] = @{cm="global_grain_output_modifier = 0.05"; cc="# The Tenda peoples were farmers of the Fouta Djallon foothills, among the earliest inhabitants of the region."; lm="local_hostile_attrition = 0.1"; lc="# The Fouta Djallon highlands were remote and difficult terrain to control."}

# Sierra Leone/Liberia coast
foreach ($c in @("temne","baga_culture","sherbro","bullom","kissi","gola")) {
    $m[$c] = @{cm="global_grain_output_modifier = 0.1"; cc="# This coastal West African people practiced rice farming and fishing along the Sierra Leone-Liberia coast."; lm="local_fish_output_modifier = 0.1"; lc="# The West African coast provided abundant fishing alongside agricultural production."}
}

# Voltaic/Gur peoples
$m["mossi"] = @{cm="army_cavalry_power = 0.05"; cc="# The Mossi kingdoms were among the most stable and long-lasting states in West Africa, with powerful cavalry forces."; lm="local_grain_output_modifier = 0.1"; lc="# The Mossi plateau in Burkina Faso supported intensive millet and sorghum agriculture."}
foreach ($c in @("mamprusi","dagbani","tem","kabiye","gurunsi","gurma")) {
    $m[$c] = @{cm="global_grain_output_modifier = 0.1"; cc="# This Voltaic people practiced intensive grain farming in the West African savanna."; lm="local_grain_output_modifier = 0.1"; lc="# The West African savanna supported millet and sorghum cultivation during the rainy season."}
}
$m["senufo"] = @{cm="global_grain_output_modifier = 0.1"; cc="# The Senufo were skilled farmers and renowned woodcarvers of the Ivory Coast-Mali-Burkina Faso region."; lm="local_grain_output_modifier = 0.1"; lc="# The Senufo homeland's savanna-forest transition zone supported productive agriculture."}

# Kru peoples
foreach ($c in @("western_kru","eastern_kru")) {
    $m[$c] = @{cm="global_sailors_modifier = 0.1"; cc="# The Kru were expert seafarers and canoe-men of the Liberian and Ivory Coast, renowned for their maritime skills."; lm="local_fish_output_modifier = 0.1"; lc="# The Kru coast provided rich fishing grounds exploited by these skilled maritime people."}
}

# Bariba and Gonja
$m["bariba"] = @{cm="army_cavalry_power = 0.05"; cc="# The Bariba founded the Borgu kingdoms, fielding cavalry forces that controlled trade routes in the Niger bend."; lm="local_grain_output_modifier = 0.1"; lc="# The Borgu savanna supported grain farming and pastoral herding."}
$m["gonja"] = @{cm="trade_efficiency = 0.05"; cc="# The Gonja kingdom was founded by Mande warriors and traders, controlling trade routes in the northern Gold Coast."; lm="local_grain_output_modifier = 0.1"; lc="# The Gonja savanna supported farming and served as a trade crossroads."}

# Ewe, Aja, Fon - Slave Coast
$m["ewe"] = @{cm="global_grain_output_modifier = 0.1"; cc="# The Ewe were skilled farmers and weavers of the Volta region, known for their kente cloth tradition."; lm="local_grain_output_modifier = 0.1"; lc="# The Volta River region supported productive agriculture for Ewe farming communities."}
$m["ajan"] = @{cm="global_grain_output_modifier = 0.1"; cc="# The Aja were the founding people of the Dahomey and Allada kingdoms of the Slave Coast."; lm="local_grain_output_modifier = 0.1"; lc="# The Aja homeland's coastal and inland plains supported productive tropical agriculture."}
$m["fon"] = @{cm="army_infantry_power = 0.05"; cc="# The Fon built the Kingdom of Dahomey, one of West Africa's most militarized states, with elite warrior regiments including the famous Amazons."; lm="local_grain_output_modifier = 0.1"; lc="# The Abomey plateau supported the agriculture that fed Dahomey's large military establishment."}

# Niger Delta/Benue
$m["ijaw"] = @{cm="global_sailors_modifier = 0.1"; cc="# The Ijaw were expert fishermen and canoe warriors of the Niger Delta, controlling the waterways of southern Nigeria."; lm="local_fish_output_modifier = 0.15"; lc="# The Niger Delta's vast network of creeks and rivers provided abundant fishing."}
$m["nupe"] = @{cm="trade_efficiency = 0.05"; cc="# The Nupe kingdom controlled trade at the Niger-Benue confluence, known for glassmaking and bronze-casting."; lm="local_production_efficiency = 0.1"; lc="# The Nupe homeland at the Niger-Benue confluence supported agriculture and specialized craft production."}
foreach ($c in @("igala","bantoid","benue","idoma","gbari")) {
    $m[$c] = @{cm="global_grain_output_modifier = 0.1"; cc="# This Middle Belt Nigerian people practiced mixed farming of grains, yams, and other crops."; lm="local_grain_output_modifier = 0.1"; lc="# The Nigerian Middle Belt's fertile soils supported productive mixed agriculture."}
}

# Volta peoples
$m["bobo"] = @{cm="global_grain_output_modifier = 0.1"; cc="# The Bobo were skilled farmers of Burkina Faso, maintaining an egalitarian society resistant to centralized rule."; lm="local_grain_output_modifier = 0.1"; lc="# The Bobo homeland in southwestern Burkina Faso supported productive grain farming."}
$m["dogon"] = @{cm="local_defensive = 0.1"; cc="# The Dogon were renowned for their cliff-dwelling villages on the Bandiagara Escarpment, virtually impregnable natural fortresses."; lm="local_defensive = 0.15"; lc="# The Bandiagara Escarpment's cliff faces provided extraordinary natural defensive positions for Dogon villages."}

# Saharan/Lake Chad peoples
$m["kanembu_culture"] = @{cm="prestige = 5"; cc="# The Kanembu founded the Bornu Empire, one of the longest-lasting empires in African history, dominating the Lake Chad basin."; lm="local_grain_output_modifier = 0.1"; lc="# The Lake Chad basin's seasonal flooding supported productive agriculture for the Bornu state."}
foreach ($c in @("bilala_culture","zaghawa_culture","maba_africa_culture","runga_culture","tunjur_culture")) {
    $m[$c] = @{cm="global_livestock_output_modifier = 0.1"; cc="# This Lake Chad-Sahel people combined pastoral herding with farming in the transitional savanna-desert zone."; lm="local_livestock_output_modifier = 0.1"; lc="# The Sahel grasslands supported seasonal pastoral herding of cattle and camels."}
}
$m["masalit_culture"] = @{cm="global_grain_output_modifier = 0.05"; cc="# The Masalit established a sultanate in the Chad-Darfur borderlands, practicing agriculture and herding."; lm="local_grain_output_modifier = 0.1"; lc="# The Masalit homeland received enough seasonal rainfall for grain cultivation."}
$m["mandara_culture"] = @{cm="army_infantry_power = 0.05"; cc="# The Mandara Sultanate in the Mandara Mountains fielded strong armies and controlled trade in northern Cameroon."; lm="local_defensive = 0.1"; lc="# The Mandara Mountains provided natural defensive positions for the sultanate."}
$m["sao_culture"] = @{cm="global_production_efficiency = 0.05"; cc="# The Sao civilization was known for elaborate terracotta art and metalwork around Lake Chad."; lm="local_production_efficiency = 0.05"; lc="# The Lake Chad shoreline supported fishing, farming, and artisan production."}
$m["baguirmi_culture"] = @{cm="trade_efficiency = 0.05"; cc="# The Baguirmi Sultanate was a major slave-raiding and trading state south of Lake Chad."; lm="local_grain_output_modifier = 0.1"; lc="# The Baguirmi homeland south of Lake Chad supported agriculture along the Chari River."}
$m["adamawa_culture"] = @{cm="global_livestock_output_modifier = 0.1"; cc="# The Adamawa plateau peoples combined farming with cattle herding in the highland grasslands of Cameroon."; lm="local_livestock_output_modifier = 0.1"; lc="# The Adamawa Plateau's highland grasslands supported pastoral herding."}

# Saharan trading peoples  
foreach ($c in @("messufa_culture","lamtuna_culture","godala_culture")) {
    $m[$c] = @{cm="trade_efficiency = 0.15"; cc="# This Sanhaja Berber-related Saharan people were masters of the trans-Saharan caravan trade, controlling vital desert routes."; lm="local_hostile_attrition = 0.15"; lc="# The Sahara Desert was one of the most hostile environments on Earth, deadly to those without local knowledge."}
}

# Central African
foreach ($c in @("sara_culture","mbay_culture","mandja_culture","gbaya_culture","bulu_culture","baka_culture","gyele_culture","madi_culture","lugbara_culture","banda_culture","bomassa_culture","gula_iro_culture","ngbandi_culture","fang_culture")) {
    $m[$c] = @{cm="global_grain_output_modifier = 0.05"; cc="# This Central African people practiced shifting cultivation and foraging in the forest-savanna transition zone."; lm="local_hostile_attrition = 0.1"; lc="# The dense forests and remote savannas of Central Africa were difficult for outside forces to penetrate."}
}
$m["fang_culture"] = @{cm="army_infantry_power = 0.05"; cc="# The Fang were aggressive warriors who expanded through military conquest across the equatorial forests of Cameroon and Gabon."; lm="local_hostile_attrition = 0.1"; lc="# The dense equatorial rainforest provided Fang warriors with terrain advantages."}
$m["baka_culture"] = @{cm="land_morale = 0.05"; cc="# The Baka (Pygmy) were expert forest hunter-gatherers with unmatched knowledge of the equatorial rainforest."; lm="local_hostile_attrition = 0.15"; lc="# The Baka's dense forest homeland was virtually impenetrable to outsiders."}
$m["bubi_culture"] = @{cm="global_fish_output_modifier = 0.1"; cc="# The Bubi were the indigenous inhabitants of Bioko Island (Fernando Po), living by fishing and farming."; lm="local_fish_output_modifier = 0.1"; lc="# The volcanic island of Bioko's coastal waters provided rich fishing grounds."}
$m["bassa_culture"] = @{cm="global_grain_output_modifier = 0.1"; cc="# The Bassa were farming people of southern Cameroon, cultivating yams and other tropical crops."; lm="local_grain_output_modifier = 0.1"; lc="# The southern Cameroon coastal plain supported productive tropical agriculture."}

Insert-CultureModifiers -SourcePath "$base\CulturalDifferencesSource\in_game\common\cultures\west_african.txt" `
    -OutputPath "$base\CulturalDifferencesOutput\in_game\common\cultures\west_african.txt" `
    -Modifiers $m

# Process kongolese.txt
$base = "c:\Users\sages\OneDrive - Microsoft\Documents\GitHub\Specula-Principum"
. "$base\CulturalDifferencesOutput\Insert-CultureModifiers.ps1"

$m = @{}

# Major kingdoms
$m["kongo"] = @{cm="prestige = 5"; cc="# The Kingdom of Kongo was one of the largest and most centralized states in sub-Saharan Africa, with sophisticated administration."; lm="local_grain_output_modifier = 0.1"; lc="# The Kongo heartland's tropical climate and fertile soils supported productive agriculture."}
$m["luba"] = @{cm="prestige = 5"; cc="# The Luba Empire developed one of Central Africa's most sophisticated political systems, the bulopwe sacred kingship."; lm="local_grain_output_modifier = 0.1"; lc="# The Luba heartland on the Katanga plateau supported productive agriculture alongside copper mining."}
$m["lunda"] = @{cm="prestige = 5"; cc="# The Lunda Empire spread across a vast territory through a sophisticated system of client chieftainships and tribute."; lm="local_grain_output_modifier = 0.1"; lc="# The Lunda homeland in the Katanga-Kasai region supported farming and trade networks."}
$m["kuba"] = @{cm="global_production_efficiency = 0.1"; cc="# The Kuba Kingdom was renowned for its extraordinary artistic traditions, producing some of Africa's finest textiles, carvings, and metalwork."; lm="local_production_efficiency = 0.1"; lc="# The Kuba homeland between the Kasai and Sankuru rivers supported both agriculture and artisan production."}
$m["ovimbundu"] = @{cm="trade_efficiency = 0.1"; cc="# The Ovimbundu were the greatest long-distance traders of Angola, organizing caravans deep into the interior."; lm="local_grain_output_modifier = 0.1"; lc="# The Benguela Highland of Angola provided productive farmland for the Ovimbundu."}
$m["ambundu"] = @{cm="expand_rgo_mining_cost_modifier = -0.1"; cc="# The Ambundu Kingdom of Ndongo controlled iron production and trade in western Central Africa."; lm="local_iron_output_modifier = 0.1"; lc="# The Ambundu homeland contained significant iron deposits exploited for tools, weapons, and trade."}
$m["lozi_culture"] = @{cm="global_grain_output_modifier = 0.1"; cc="# The Lozi (Barotse) Kingdom managed the Zambezi floodplain with sophisticated flood-retreat agriculture and canal systems."; lm="local_grain_output_modifier = 0.15"; lc="# The Zambezi floodplain's annual floods deposited rich alluvial soils ideal for agriculture."}
$m["herero"] = @{cm="global_livestock_output_modifier = 0.15"; cc="# The Herero were quintessential pastoral cattle herders, their entire social organization built around cattle wealth."; lm="local_livestock_output_modifier = 0.15"; lc="# The semi-arid grasslands of Namibia supported large Herero cattle herds."}
$m["owambo_culture"] = @{cm="global_grain_output_modifier = 0.1"; cc="# The Owambo were settled agro-pastoralists of northern Namibia, the most populous group in the region."; lm="local_grain_output_modifier = 0.1"; lc="# The Owambo floodplain of northern Namibia supported productive farming during the seasonal rains."}

# Kongo-related cultures
$kongoRelated = @{cm="global_grain_output_modifier = 0.1"; cc="# This Kongo-related people practiced agriculture in the tropical forests and savannas of the Congo basin."; lm="local_grain_output_modifier = 0.1"; lc="# The fertile tropical soils supported productive agriculture of cassava, yams, and plantains."}
foreach ($c in @("vili","cabinda","bwende","nsudi","kakongo","mboma","solongo","bazombo","mushikongo","yombe")) {
    $m[$c] = $kongoRelated.Clone()
}

# Teke and river peoples
$m["teke"] = @{cm="trade_efficiency = 0.05"; cc="# The Teke Kingdom controlled trade along the Congo River, serving as middlemen between the coast and interior."; lm="local_fish_output_modifier = 0.1"; lc="# The Congo River and its tributaries provided abundant fishing for riverside communities."}
foreach ($c in @("bangi","kuyu")) {
    $m[$c] = @{cm="trade_efficiency = 0.05"; cc="# This Congo River people controlled riverine trade, ferrying goods between upstream and downstream markets."; lm="local_fish_output_modifier = 0.1"; lc="# The Congo River system provided abundant freshwater fishing and trade transport."}
}

# Gabonese/Equatorial
foreach ($c in @("omiene","mitsogo","eshira","bandjabi","kota_gabun","fang_gabun","bakele","basingui","mbaka","wumbu")) {
    $m[$c] = @{cm="global_grain_output_modifier = 0.05"; cc="# This equatorial forest people practiced shifting cultivation and traded forest products including ivory and rubber."; lm="local_hostile_attrition = 0.1"; lc="# The dense equatorial rainforest was difficult terrain for outside forces to penetrate."}
}
$m["fang_gabun"] = @{cm="army_infantry_power = 0.05"; cc="# The Fang were formidable warriors of equatorial Africa, expanding through military prowess across a vast forest territory."; lm="local_hostile_attrition = 0.1"; lc="# The dense Gabonese and Cameroonian rainforest gave Fang warriors a defensive advantage."}

# Southern/Zambian cultures
$southernBantu = @{cm="global_grain_output_modifier = 0.1"; cc="# This Bantu-speaking people practiced mixed farming of grains and cattle in the southern savanna."; lm="local_grain_output_modifier = 0.1"; lc="# The southern Central African savanna supported productive grain agriculture."}
foreach ($c in @("tonga","kunda","bemba","tabwa","nsenga")) {
    $m[$c] = $southernBantu.Clone()
}
$m["bemba"] = @{cm="army_infantry_power = 0.05"; cc="# The Bemba were expansionist warriors of the Zambian plateau, building a powerful military chieftainship."; lm="local_grain_output_modifier = 0.1"; lc="# The Bemba heartland's miombo woodland supported shifting cultivation of millet."}

# Luba-related/Katanga
foreach ($c in @("hemba","kasayi","bindji","kete","bena_lwalwa","lwalwa","pende","kusu_culture")) {
    $m[$c] = @{cm="global_grain_output_modifier = 0.1"; cc="# This Bantu people of the Congo basin practiced agriculture and participated in regional trade networks."; lm="local_grain_output_modifier = 0.1"; lc="# The fertile Congo basin soils supported productive tropical agriculture."}
}
$m["songye"] = @{cm="army_infantry_power = 0.05"; cc="# The Songye were powerful warriors of the central Congo, known for their fierce military resistance and sophisticated carvings."; lm="local_grain_output_modifier = 0.1"; lc="# The Songye homeland in the eastern Kasai supported agriculture and iron production."}
$m["chokwe"] = @{cm="trade_efficiency = 0.05"; cc="# The Chokwe were skilled hunters, traders, and renowned woodcarvers who expanded across a vast area of Central Africa."; lm="local_production_efficiency = 0.05"; lc="# The Chokwe homeland supported hunting, farming, and renowned artistic production."}

# Eastern Congo
foreach ($c in @("lega","shi_culture","bembe","komo")) {
    $m[$c] = @{cm="global_grain_output_modifier = 0.05"; cc="# This eastern Congo people practiced agriculture in the forests and highlands near the Great Rift."; lm="local_defensive = 0.1"; lc="# The mountainous eastern Congo terrain provided natural defensive positions."}
}
$m["twa_culture"] = @{cm="land_morale = 0.05"; cc="# The Twa (Pygmy) were forest hunter-gatherers with unmatched knowledge of the equatorial rainforest."; lm="local_hostile_attrition = 0.15"; lc="# The dense Ituri and Kivu forests were virtually impenetrable to outsiders."}

# Western Kongo basin
foreach ($c in @("dinga","suku","yaka","kolo_culture","mbala","bashilele","mbuun")) {
    $m[$c] = @{cm="global_grain_output_modifier = 0.05"; cc="# This Bantu people of the western Congo practiced agriculture and participated in regional trade."; lm="local_grain_output_modifier = 0.1"; lc="# The western Congo basin's tropical soils supported productive agriculture."}
}

# Angola-related
foreach ($c in @("haneka_humbe","mbunda","luchazi_culture","luvale","xindonga")) {
    $m[$c] = @{cm="global_livestock_output_modifier = 0.1"; cc="# This Bantu people of the southern Congo-Angola region combined farming with cattle herding."; lm="local_livestock_output_modifier = 0.1"; lc="# The southern Angolan and Zambian savanna supported pastoral herding alongside agriculture."}
}

Insert-CultureModifiers -SourcePath "$base\CulturalDifferencesSource\in_game\common\cultures\kongolese.txt" `
    -OutputPath "$base\CulturalDifferencesOutput\in_game\common\cultures\kongolese.txt" `
    -Modifiers $m

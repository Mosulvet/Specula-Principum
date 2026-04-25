# Process great_bassin.txt (92 cultures)
$base = "c:\Users\sages\OneDrive - Microsoft\Documents\GitHub\Specula-Principum"
. "$base\CulturalDifferencesOutput\Insert-CultureModifiers.ps1"

$m = @{}

# Navajo/Dine
$m["dine_culture"] = @{cm="army_infantry_power = 0.05"; cc="# The Dine (Navajo) were formidable warriors and raiders of the American Southwest, building a large and resilient nation."; lm="local_hostile_attrition = 0.1"; lc="# The Dine homeland's rugged canyons and deserts were difficult terrain for enemies."}

# Ute
$m["nuuchi_culture"] = @{cm="army_infantry_power = 0.05"; cc="# The Ute were powerful mountain warriors of the Great Basin and Rocky Mountains, later becoming expert horsemen."; lm="local_hostile_attrition = 0.1"; lc="# The Rocky Mountain terrain gave the Ute a significant defensive advantage."}

# Southern Paiute
foreach ($c in @("nuwuvi_culture","nuwuvu_culture","kawaiisu_culture")) {
    $m[$c] = @{cm="land_morale = 0.05"; cc="# This Southern Paiute people survived through expert desert foraging and small-scale irrigation in the Great Basin."; lm="local_hostile_attrition = 0.15"; lc="# The Great Basin desert was extremely arid and harsh, providing natural protection."}
}

# Northern Shoshone/Bannock
foreach ($c in @("agaideka_culture","tukudeka_culture","bannock_culture")) {
    $m[$c] = @{cm="global_livestock_output_modifier = 0.1"; cc="# This Shoshone-Bannock people hunted bison, elk, and mountain game across the northern Great Basin and Rockies."; lm="local_hostile_attrition = 0.1"; lc="# The Snake River plain and Rocky Mountain foothills were rugged terrain."}
}

# Western Shoshone
$shoshoneDefault = @{cm="land_morale = 0.05"; cc="# This Western Shoshone band survived through expert foraging and rabbit drives in the Great Basin desert."; lm="local_hostile_attrition = 0.15"; lc="# The Great Basin's extreme aridity and remoteness provided natural barriers against outsiders."}
foreach ($c in @("kuccuntikka_culture","penkwitikka_culture","kusiutta_culture","tetadeka_culture","haivodika_culture","watatikka_culture","wiyimpihtikka_culture")) {
    $m[$c] = $shoshoneDefault.Clone()
}

# Northern Paiute/Numic
foreach ($c in @("numu_culture","monachi_culture","timbisha_culture")) {
    $m[$c] = @{cm="land_morale = 0.05"; cc="# This Northern Paiute/Mono people were expert desert and mountain foragers of the western Great Basin."; lm="local_hostile_attrition = 0.15"; lc="# The Great Basin and eastern Sierra Nevada were harsh, remote terrain."}
}

# Cahuilla
$m["taaqtam_culture"] = @{cm="global_grain_output_modifier = 0.05"; cc="# The Cahuilla were desert oasis farmers and gatherers of southern California's Coachella Valley."; lm="local_hostile_attrition = 0.1"; lc="# The Sonoran Desert of southern California was harsh terrain for outsiders."}

# Washoe
$m["waashiw_culture"] = @{cm="global_fish_output_modifier = 0.1"; cc="# The Washoe were fishermen and foragers centered on Lake Tahoe, one of the richest fishing lakes in the West."; lm="local_fish_output_modifier = 0.1"; lc="# Lake Tahoe and the Truckee River provided abundant trout fishing for the Washoe."}

# Central California - Yokuts
foreach ($c in @("north_valley_yokut_culture","south_valley_yokut_culture","foothill_yokut_culture","tulumni_culture")) {
    $m[$c] = @{cm="global_grain_output_modifier = 0.05"; cc="# The Yokuts were the most populous people of California's Central Valley, with rich acorn and fish resources."; lm="local_fish_output_modifier = 0.1"; lc="# The San Joaquin Valley's rivers and tule marshes provided abundant fishing and gathering."}
}

# Northern California
foreach ($c in @("miwok_culture","maiduan_culture","nisenan_culture","koyoongkawi_culture","wintuan_culture","nomlaki_culture","patwin_culture")) {
    $m[$c] = @{cm="global_grain_output_modifier = 0.05"; cc="# This California people had one of the densest non-agricultural populations in North America, sustained by acorn processing."; lm="local_fish_output_modifier = 0.1"; lc="# The Sacramento Valley rivers and oak woodlands provided abundant fishing and acorn harvesting."}
}

# Modoc Plateau
$m["taxliswet_culture"] = @{cm="global_grain_output_modifier = 0.05"; cc="# This Numic people survived through foraging and hunting in the Great Basin-California border region."; lm="local_hostile_attrition = 0.1"; lc="# The volcanic Modoc Plateau was rugged, defensible terrain."}

# Coastal California
foreach ($c in @("ohlone_culture","salinan_culture","pomo_culture")) {
    $m[$c] = @{cm="global_fish_output_modifier = 0.1"; cc="# This coastal California people combined fishing, shellfish gathering, and acorn processing to sustain dense populations."; lm="local_fish_output_modifier = 0.1"; lc="# The California coast provided rich fishing, abalone, and marine mammal hunting."}
}
$m["chumash_culture"] = @{cm="global_sailors_modifier = 0.1"; cc="# The Chumash were the finest maritime people of California, building plank canoes (tomol) for deep-water fishing and island trade."; lm="local_fish_output_modifier = 0.15"; lc="# The Santa Barbara Channel was one of the richest marine environments on the Pacific Coast."}
$m["tongva_culture"] = @{cm="global_fish_output_modifier = 0.1"; cc="# The Tongva (Gabrielino) were a prosperous maritime and trading people of the Los Angeles Basin."; lm="local_fish_output_modifier = 0.1"; lc="# The southern California coast provided productive fishing grounds."}

# Klamath/Modoc
foreach ($c in @("ewksikni_culture","modokni_culture")) {
    $m[$c] = @{cm="global_fish_output_modifier = 0.1"; cc="# This Klamath-Modoc people were fishermen and foragers of the volcanic Klamath Lake region."; lm="local_fish_output_modifier = 0.1"; lc="# Klamath Lake and its tributaries provided abundant fish, especially suckers and trout."}
}

# Pit River/Shastan
foreach ($c in @("achomawi_culture","shastan_culture")) {
    $m[$c] = @{cm="global_fish_output_modifier = 0.1"; cc="# This northern California people depended on salmon fishing in the Pit River and its tributaries."; lm="local_fish_output_modifier = 0.1"; lc="# The northern California river systems provided productive salmon runs."}
}

# Columbia Plateau
foreach ($c in @("molalla_culture","sahaptin_culture","yakama_culture","nimiipuu_culture","palouse_culture","willetpoos_culture")) {
    $m[$c] = @{cm="global_fish_output_modifier = 0.15"; cc="# This Columbia Plateau people depended on the enormous salmon runs of the Columbia River system."; lm="local_fish_output_modifier = 0.15"; lc="# The Columbia and Snake River salmon runs were among the greatest fisheries on Earth."}
}
$m["nimiipuu_culture"] = @{cm="army_infantry_power = 0.05"; cc="# The Nez Perce (Nimiipuu) were renowned warriors and horsemen of the Columbia Plateau, later famous for their Appaloosa horses."; lm="local_fish_output_modifier = 0.15"; lc="# The Snake and Clearwater Rivers provided enormous salmon runs for the Nez Perce."}

# Willamette Valley
$m["kalapuyan_culture"] = @{cm="global_grain_output_modifier = 0.05"; cc="# The Kalapuya managed the Willamette Valley through controlled burning, promoting camas fields and oak woodlands."; lm="local_grain_output_modifier = 0.1"; lc="# The Willamette Valley was one of the most productive environments in the Pacific Northwest."}

# Chinook
$m["chinook_culture"] = @{cm="trade_efficiency = 0.1"; cc="# The Chinook controlled the mouth of the Columbia River, the greatest trade hub of the Pacific Northwest."; lm="local_fish_output_modifier = 0.15"; lc="# The Columbia River mouth's salmon runs and trade position made it extraordinarily productive."}

# Pacific Northwest Coast
$nwCoast = @{cm="global_fish_output_modifier = 0.1"; cc="# This Pacific Northwest Coast people built sophisticated societies based on abundant salmon and marine resources."; lm="local_fish_output_modifier = 0.15"; lc="# The Pacific Northwest coast provided some of the richest marine and salmon resources on Earth."}
foreach ($c in @("chehalis_culture","tillamook_culture","lushootseed_culture","twana_culture","halkomelem_culture","sklallam_culture","saanich_culture","lummi_culture","squamish_culture","k_omoks_culture")) {
    $m[$c] = $nwCoast.Clone()
}

# Makah and Nuu-chah-nulth
$m["makah_culture"] = @{cm="global_sailors_modifier = 0.1"; cc="# The Makah were the greatest whale hunters of the Pacific Northwest, pursuing gray and humpback whales in ocean-going canoes."; lm="local_fish_output_modifier = 0.15"; lc="# The waters off Cape Flattery teemed with whales, seals, and fish."}
$m["nootka_culture"] = @{cm="global_sailors_modifier = 0.1"; cc="# The Nuu-chah-nulth (Nootka) were expert whalers and seafarers of the Vancouver Island west coast."; lm="local_fish_output_modifier = 0.15"; lc="# The Vancouver Island west coast's rich waters supported whale hunting and salmon fishing."}

# Northern NW Coast
foreach ($c in @("kwakiutl_culture","oowekyala_culture","nuxalc_culture","heiltsuk_culture","haisla_culture")) {
    $m[$c] = @{cm="global_fish_output_modifier = 0.15"; cc="# This northern Northwest Coast people built wealthy societies based on extraordinary salmon, eulachon, and marine resources."; lm="local_fish_output_modifier = 0.15"; lc="# The northern BC coast's protected fjords and rivers produced immense salmon runs."}
}

# Interior Salish
foreach ($c in @("saleesh_culture","alene_culture","kalispel_culture","sinkiuse_culture","spokane_culture","okanagan_culture","sinixt_culture","lillooet_culture","nlakapamuk_culture","chilcotin_culture","shuswap_culture")) {
    $m[$c] = @{cm="global_fish_output_modifier = 0.1"; cc="# This Interior Salish people depended on salmon fishing in the rivers of the Columbia Plateau and British Columbia interior."; lm="local_fish_output_modifier = 0.1"; lc="# The interior rivers provided seasonal salmon runs essential to Salish subsistence."}
}

# Ktunaxa (Kutenai)
$m["ktunaxa_culture"] = @{cm="global_fish_output_modifier = 0.1"; cc="# The Ktunaxa (Kutenai) were fishermen and hunters of the Kootenay River region, bridging Plateau and Plains cultures."; lm="local_fish_output_modifier = 0.1"; lc="# The Kootenay River and lakes provided productive fishing for the Ktunaxa."}

# Northern California coast
foreach ($c in @("alsea_culture","coos_culture","tututni_culture","tolowa_culture","hupa_culture","tsnungwe_culture","yurok_culture","wiyot_culture","karuk_culture")) {
    $m[$c] = @{cm="global_fish_output_modifier = 0.15"; cc="# This northern California/Oregon coast people depended on rich salmon runs and marine resources."; lm="local_fish_output_modifier = 0.15"; lc="# The Klamath, Trinity, and Rogue river systems provided enormous salmon fisheries."}
}

# Remaining northern California
foreach ($c in @("mattole_culture","nongatl_culture","yuki_culture","wappo_culture","takelma_culture")) {
    $m[$c] = @{cm="global_fish_output_modifier = 0.1"; cc="# This northern California people combined salmon fishing with acorn processing and hunting."; lm="local_fish_output_modifier = 0.1"; lc="# The northern California rivers and oak woodlands provided fishing and foraging resources."}
}

Insert-CultureModifiers -SourcePath "$base\CulturalDifferencesSource\in_game\common\cultures\great_bassin.txt" `
    -OutputPath "$base\CulturalDifferencesOutput\in_game\common\cultures\great_bassin.txt" `
    -Modifiers $m

# Process alaska.txt and canadian.txt
$base = "c:\Users\sages\OneDrive - Microsoft\Documents\GitHub\Specula-Principum"
. "$base\CulturalDifferencesOutput\Insert-CultureModifiers.ps1"

# === ALASKA (41 cultures) ===
$m = @{}

# Tlingit
$m["tlingit_culture"] = @{cm="trade_efficiency = 0.1"; cc="# The Tlingit were the wealthiest and most powerful people of the northern Northwest Coast, controlling trade between coast and interior."; lm="local_fish_output_modifier = 0.15"; lc="# The Southeast Alaska coast's extraordinary salmon runs and marine resources made the Tlingit wealthy."}

# Haida
$m["haida_culture"] = @{cm="global_sailors_modifier = 0.1"; cc="# The Haida were master seafarers and canoe builders of the Queen Charlotte Islands, raiding up and down the Pacific Coast."; lm="local_fish_output_modifier = 0.15"; lc="# The waters around Haida Gwaii provided immense fishing and marine mammal resources."}

# Tsimshian
$m["tsimshian_culture"] = @{cm="trade_efficiency = 0.05"; cc="# The Tsimshian controlled the Nass and Skeena River trade, including the valuable eulachon (candlefish) oil."; lm="local_fish_output_modifier = 0.15"; lc="# The Skeena and Nass Rivers provided enormous salmon runs and eulachon fisheries."}

# Eyak
$m["eyak_culture"] = @{cm="global_fish_output_modifier = 0.15"; cc="# The Eyak were fishermen of the Copper River Delta, bridging Tlingit and Athabaskan cultural zones."; lm="local_fish_output_modifier = 0.15"; lc="# The Copper River Delta provided enormous salmon runs."}

# Interior Athabaskan
$interiorAtha = @{cm="global_livestock_output_modifier = 0.1"; cc="# This Athabaskan people were hunters and fishermen of the vast subarctic interior, following caribou and moose."; lm="local_hostile_attrition = 0.15"; lc="# The vast Alaskan/Yukon interior was among the most extreme environments inhabited by humans."}
foreach ($c in @("ingalik_culture","nahani_culture","kaska_culture","tanaina_culture","koyukon_culture","tanana_culture","nabesna_culture","ahtna_culture","dan_ke_culture","dan_ki_culture","haen_culture","gwichin_culture","sahtu_culture")) {
    $m[$c] = $interiorAtha.Clone()
}

# BC Athabaskan
foreach ($c in @("dakelh_culture","wetsuweten_culture","sekani_culture","dunezza_culture")) {
    $m[$c] = @{cm="global_fish_output_modifier = 0.1"; cc="# This northern Athabaskan people of interior BC combined salmon fishing with caribou and moose hunting."; lm="local_hostile_attrition = 0.1"; lc="# The interior BC boreal forests were remote and harsh terrain."}
}

# Alutiiq/Pacific Eskimo
foreach ($c in @("chugash_culture","kaniag_culture")) {
    $m[$c] = @{cm="global_fish_output_modifier = 0.15"; cc="# This Alutiiq (Sugpiaq) people were expert marine hunters and fishermen of the Gulf of Alaska."; lm="local_fish_output_modifier = 0.15"; lc="# The Gulf of Alaska's cold, nutrient-rich waters supported extraordinary marine resources."}
}

# Aleut (Unangan)
foreach ($c in @("unalaska_culture","atka_culture","attu_culture")) {
    $m[$c] = @{cm="global_fish_output_modifier = 0.15"; cc="# The Unangan (Aleut) were among the world's most skilled maritime hunters, pursuing sea otters, seals, and whales in kayaks."; lm="local_hostile_attrition = 0.15"; lc="# The Aleutian Islands' extreme weather, volcanic terrain, and stormy seas were deadly to outsiders."}
}

# Yup'ik
$yupik = @{cm="global_fish_output_modifier = 0.1"; cc="# This Yup'ik people were expert salmon fishermen and sea mammal hunters of western Alaska."; lm="local_hostile_attrition = 0.15"; lc="# The western Alaskan tundra and coast were extremely remote and harsh terrain."}
foreach ($c in @("ogul_culture","nushag_culture","togiag_culture","kuskokwag_culture","nunivag_culture","kaialig_culture","magemiut_culture","ikog_culture","unalig_culture")) {
    $m[$c] = $yupik.Clone()
}

# Inupiat
$inupiat = @{cm="global_fish_output_modifier = 0.1"; cc="# This Inupiat people were expert Arctic hunters of whales, seals, and caribou in the extreme north."; lm="local_hostile_attrition = 0.15"; lc="# The Arctic coast of Alaska was one of the harshest environments inhabited by humans."}
foreach ($c in @("malemiut_culture","kaviag_culture","kinug_culture","inuviluq_culture","inuinnait_culture","inupiaq_culture")) {
    $m[$c] = $inupiat.Clone()
}

Insert-CultureModifiers -SourcePath "$base\CulturalDifferencesSource\in_game\common\cultures\alaska.txt" `
    -OutputPath "$base\CulturalDifferencesOutput\in_game\common\cultures\alaska.txt" `
    -Modifiers $m

# === CANADIAN (40 cultures) ===
$m = @{}

# Huron-Wendat Confederacy
$huron = @{cm="trade_efficiency = 0.05"; cc="# This Wendat (Huron) nation was part of the most important trading confederacy of the Great Lakes, linking agricultural and hunting peoples."; lm="local_grain_output_modifier = 0.1"; lc="# The southern Ontario peninsula supported productive Three Sisters (maize, beans, squash) farming."}
foreach ($c in @("taontaenrat_culture","attignawantan_culture","arendaronon_culture","attigneenongnahac_culture","ataronchronon_culture","aondironon_culture")) {
    $m[$c] = $huron.Clone()
}
$m["attignawantan_culture"] = @{cm="trade_efficiency = 0.1"; cc="# The Attignawantan (Bear Nation) were the largest and wealthiest of the Wendat nations, controlling the fur trade hub."; lm="local_grain_output_modifier = 0.1"; lc="# The Wendat homeland in Simcoe County had the best farmland in the Georgian Bay region."}

# Petun/Neutral/Erie
foreach ($c in @("onghniaahra_culture","tionontate_culture")) {
    $m[$c] = @{cm="global_grain_output_modifier = 0.1"; cc="# This Iroquoian people of southern Ontario were skilled farmers growing tobacco and maize."; lm="local_grain_output_modifier = 0.1"; lc="# The fertile Niagara and Nottawasaga regions supported productive farming."}
}

# St. Lawrence Iroquoians
foreach ($c in @("osheaga_culture","maisouna_culture","stadaconan_culture","agojuda_culture")) {
    $m[$c] = @{cm="global_grain_output_modifier = 0.1"; cc="# The St. Lawrence Iroquoians grew maize in the northern limit of agriculture, trading with neighboring peoples."; lm="local_grain_output_modifier = 0.1"; lc="# The St. Lawrence River valley supported farming at the northern edge of agricultural viability."}
}

# Mi'kmaq
$m["mikmaq_culture"] = @{cm="global_fish_output_modifier = 0.1"; cc="# The Mi'kmaq were expert seafarers and fishermen of the Maritime Provinces, the 'People of the Dawn.'"; lm="local_fish_output_modifier = 0.15"; lc="# The Maritime Provinces and Gulf of St. Lawrence provided abundant cod, salmon, and shellfish."}

# Wabanaki
foreach ($c in @("wolastoqiyik_culture","eastern_abenaki_culture","western_abenaki_culture","passamaquoddy_culture")) {
    $m[$c] = @{cm="global_fish_output_modifier = 0.1"; cc="# This Wabanaki people combined coastal fishing with hunting and farming in the northeastern woodlands."; lm="local_fish_output_modifier = 0.1"; lc="# The Maine and Maritime coasts provided productive fishing and shellfish gathering."}
}

# Innu/Naskapi
foreach ($c in @("innu_culture","ilnu_culture","naskapi_culture")) {
    $m[$c] = @{cm="global_livestock_output_modifier = 0.1"; cc="# This Innu/Naskapi people were caribou hunters of the vast Labrador-Quebec interior."; lm="local_hostile_attrition = 0.15"; lc="# The Labrador-Quebec subarctic was among the harshest inhabited regions in North America."}
}

# Beothuk
$m["beothuk_culture"] = @{cm="global_fish_output_modifier = 0.1"; cc="# The Beothuk were the indigenous people of Newfoundland, living by salmon fishing, hunting, and coastal gathering."; lm="local_fish_output_modifier = 0.1"; lc="# Newfoundland's rivers and coasts provided salmon and cod fishing."}

# Cree
$cree = @{cm="global_livestock_output_modifier = 0.1"; cc="# This Cree people were hunters and trappers of the vast boreal forest, following caribou and moose."; lm="local_hostile_attrition = 0.1"; lc="# The vast boreal forests and muskeg of the Canadian Shield were difficult terrain for outsiders."}
foreach ($c in @("iyiniyu_culture","iyiyiyu_culture","ilili_culture","innini_culture","nehina_culture")) {
    $m[$c] = $cree.Clone()
}

# Algonquin
foreach ($c in @("atikamekw_culture","kichesipirini_culture","timiscaming_culture","abitibi_culture","weskarini_culture")) {
    $m[$c] = @{cm="global_fish_output_modifier = 0.1"; cc="# This Algonquin people combined fishing, hunting, and seasonal farming in the Ottawa Valley and beyond."; lm="local_fish_output_modifier = 0.1"; lc="# The Ottawa River and tributary lakes provided abundant fishing resources."}
}

# Ojibwe/Anishinaabe
foreach ($c in @("ojibwe_culture","odawa_culture","nipissing_culture","nakawe_culture","missisage_culture")) {
    $m[$c] = @{cm="global_fish_output_modifier = 0.1"; cc="# This Anishinaabe people were fishermen, hunters, and wild rice gatherers of the Great Lakes."; lm="local_fish_output_modifier = 0.1"; lc="# The Great Lakes and northern rivers provided abundant fishing and wild rice resources."}
}

# Blackfoot Confederacy
foreach ($c in @("akainaa_culture","siksika_culture","piikani_culture")) {
    $m[$c] = @{cm="army_cavalry_power = 0.1"; cc="# This Blackfoot Confederacy nation was among the most powerful and feared warrior peoples of the northern Plains."; lm="local_livestock_output_modifier = 0.1"; lc="# The northern Plains/Alberta grasslands supported vast bison herds central to Blackfoot life."}
}

# Dorset
$m["dorset_culture"] = @{cm="global_fish_output_modifier = 0.1"; cc="# The Dorset (Tuniit) were skilled Arctic hunters, predecessors of the Inuit in the Canadian Arctic."; lm="local_hostile_attrition = 0.15"; lc="# The Canadian Arctic was among the most extreme environments inhabited by humans."}

Insert-CultureModifiers -SourcePath "$base\CulturalDifferencesSource\in_game\common\cultures\canadian.txt" `
    -OutputPath "$base\CulturalDifferencesOutput\in_game\common\cultures\canadian.txt" `
    -Modifiers $m

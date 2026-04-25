# Process indonesia.txt (123 cultures)
$base = "c:\Users\sages\OneDrive - Microsoft\Documents\GitHub\Specula-Principum"
. "$base\CulturalDifferencesOutput\Insert-CultureModifiers.ps1"

$m = @{}

# Major civilizations
$m["javanese_culture"] = @{cm="prestige = 5"; cc="# The Javanese Majapahit Empire was the greatest maritime power in Southeast Asian history, dominating the Indonesian archipelago."; lm="local_grain_output_modifier = 0.15"; lc="# Java's volcanic soils supported the most intensive wet-rice agriculture in the Indonesian archipelago."}
$m["sundanese_culture"] = @{cm="global_grain_output_modifier = 0.1"; cc="# The Sundanese Kingdom of Pajajaran controlled western Java, one of the most fertile regions in Indonesia."; lm="local_grain_output_modifier = 0.1"; lc="# Western Java's volcanic highlands supported productive rice terraces."}
$m["balinese_culture"] = @{cm="prestige = 5"; cc="# Balinese Hindu-Buddhist civilization maintained an extraordinarily sophisticated artistic and religious culture."; lm="local_grain_output_modifier = 0.1"; lc="# The Balinese subak irrigation system produced some of the most beautiful and productive rice terraces in the world."}
$m["acehnese_culture"] = @{cm="trade_efficiency = 0.1"; cc="# The Acehnese Sultanate controlled the western approach to the Strait of Malacca, a vital maritime trade chokepoint."; lm="local_fish_output_modifier = 0.1"; lc="# The Acehnese coast supported both fishing and control of maritime trade routes."}
$m["minangkabau_culture"] = @{cm="trade_efficiency = 0.1"; cc="# The Minangkabau were renowned traders and gold miners of western Sumatra, with a unique matrilineal society."; lm="local_iron_output_modifier = 0.1"; lc="# The Minangkabau highlands contained significant gold deposits and supported wet-rice agriculture."}
$m["buginese_culture"] = @{cm="global_sailors_modifier = 0.15"; cc="# The Bugis were the greatest seafarers of the Indonesian archipelago, their prahu ships trading and raiding across the seas."; lm="local_fish_output_modifier = 0.1"; lc="# The Bugis coast of South Sulawesi supported fishing and maritime enterprise."}
$m["makassarese_culture"] = @{cm="global_sailors_modifier = 0.1"; cc="# The Makassarese Sultanate of Gowa was a major maritime and trading power of eastern Indonesia."; lm="local_fish_output_modifier = 0.1"; lc="# The Makassar coast supported fishing and served as a major trading port."}
$m["batak_culture"] = @{cm="army_infantry_power = 0.05"; cc="# The Batak were fierce highland warriors of northern Sumatra, maintaining independence through military prowess."; lm="local_defensive = 0.1"; lc="# The Batak highland homeland around Lake Toba provided natural defensive terrain."}

# Philippine cultures
$m["tagalog_culture"] = @{cm="trade_efficiency = 0.05"; cc="# The Tagalog barangays of Manila Bay were major maritime traders, connecting the Philippines to Chinese and Southeast Asian commerce."; lm="local_fish_output_modifier = 0.1"; lc="# Manila Bay and its surrounding waters provided productive fishing and maritime trade access."}
$m["cebuano_culture"] = @{cm="trade_efficiency = 0.05"; cc="# The Cebuano were Visayan traders and warriors, with Cebu as a major inter-island trading center."; lm="local_fish_output_modifier = 0.1"; lc="# The Visayan Sea provided abundant fishing for Cebuano island communities."}
$m["ilocano_culture"] = @{cm="global_grain_output_modifier = 0.1"; cc="# The Ilocano were industrious farmers of northwestern Luzon, cultivating rice in terraced paddies."; lm="local_grain_output_modifier = 0.1"; lc="# The Ilocos coast and foothills supported productive rice farming."}
$m["ifugao_culture"] = @{cm="global_grain_output_modifier = 0.15"; cc="# The Ifugao built the legendary Banaue Rice Terraces, one of the greatest agricultural engineering feats in human history."; lm="local_grain_output_modifier = 0.15"; lc="# The Ifugao rice terraces carved into steep mountainsides were astonishingly productive."}
$m["maguindanao_culture"] = @{cm="army_infantry_power = 0.05"; cc="# The Maguindanao Sultanate was the most powerful Muslim state in the Philippines, fielding strong armies."; lm="local_grain_output_modifier = 0.1"; lc="# The Cotabato Basin was the most fertile agricultural region in Mindanao."}
$m["tausug_culture"] = @{cm="global_sailors_modifier = 0.1"; cc="# The Tausug Sulu Sultanate was a major maritime trading power, controlling the sea lanes between the Philippines and Borneo."; lm="local_fish_output_modifier = 0.1"; lc="# The Sulu Archipelago's coral-rich waters supported fishing and pearl diving."}

# Philippine highland peoples
$phHighland = @{cm="global_grain_output_modifier = 0.1"; cc="# This Philippine highland people practiced rice terrace farming in the Cordillera mountains."; lm="local_defensive = 0.1"; lc="# The Cordillera mountain homeland provided natural defensive terrain."}
foreach ($c in @("isnag_culture","itneg_culture","kalinga_culture","bontoc_culture","kankanaey_culture","bugkalot_culture","ibaloi_culture")) {
    $m[$c] = $phHighland.Clone()
}

# Philippine Visayan/coastal
$phCoastal = @{cm="global_fish_output_modifier = 0.1"; cc="# This Philippine coastal people combined fishing with rice farming and inter-island maritime trade."; lm="local_fish_output_modifier = 0.1"; lc="# The Philippine island waters provided abundant fishing and maritime trade routes."}
foreach ($c in @("waray_culture","hiligaynon_culture","boholano_culture","surigaonon_culture","butuanon_culture","cuyonon_culture","romblomanon_culture","bicolano_culture","pangasinan_culture","sambal_culture","kapampangan_culture","ibanag_culture","gaddang_culture","ivatan_culture")) {
    $m[$c] = $phCoastal.Clone()
}
$m["butuanon_culture"] = @{cm="trade_efficiency = 0.1"; cc="# The Butuanon of Butuan were among the greatest traders and boat-builders in the pre-colonial Philippines, with ties to China."; lm="local_fish_output_modifier = 0.1"; lc="# The Agusan River and Butuan Bay supported fishing and maritime trade."}

# Philippine Mindanao highland/indigenous
$phMindanao = @{cm="global_grain_output_modifier = 0.05"; cc="# This Mindanao indigenous people practiced swidden agriculture in the highlands and forests."; lm="local_hostile_attrition = 0.1"; lc="# The dense Mindanao forests and highlands were difficult terrain for outsiders."}
foreach ($c in @("mangyan_culture","aeta_culture","subanon_culture","manobo_culture","bukidnon_culture","mandaya_culture","giangan_culture","blaan_culture","tagakaulo_culture","tboli_culture","tagbanwa_culture","palawan_culture","iranun_culture")) {
    $m[$c] = $phMindanao.Clone()
}
$m["iranun_culture"] = @{cm="global_sailors_modifier = 0.1"; cc="# The Iranun were feared maritime raiders of the southern Philippines and Sulu Sea, the most dreaded pirates in the archipelago."; lm="local_fish_output_modifier = 0.1"; lc="# The Lanao and Illana Bay waters supported the Iranun maritime raiding economy."}

# Sumatran cultures
$sumatranDefault = @{cm="global_grain_output_modifier = 0.05"; cc="# This Sumatran people practiced rice farming and forest cultivation on the island's fertile volcanic soils."; lm="local_grain_output_modifier = 0.1"; lc="# Sumatra's volcanic highlands and coastal plains supported productive agriculture."}
foreach ($c in @("gayo_culture","lampung_culture","rejang_culture")) {
    $m[$c] = $sumatranDefault.Clone()
}

# Island cultures (Nias, Mentawai, Enggano)
foreach ($c in @("nias_culture","mentawai_culture","enggano_culture")) {
    $m[$c] = @{cm="global_fish_output_modifier = 0.1"; cc="# This island people lived by fishing, foraging, and farming on remote Indonesian islands."; lm="local_hostile_attrition = 0.1"; lc="# The remote offshore islands were difficult to access and naturally defensive."}
}

# Forest/interior peoples
foreach ($c in @("orang_rimba_culture","punan_culture")) {
    $m[$c] = @{cm="land_morale = 0.05"; cc="# This forest-dwelling people were expert hunter-gatherers of the tropical rainforest interior."; lm="local_hostile_attrition = 0.15"; lc="# The dense tropical rainforest interior was virtually impenetrable to outsiders."}
}
$m["orang_laut_culture"] = @{cm="global_sailors_modifier = 0.1"; cc="# The Orang Laut ('Sea People') were nomadic maritime people who lived entirely on boats across the Indonesian seas."; lm="local_fish_output_modifier = 0.15"; lc="# The shallow seas around the Riau Archipelago supported the Orang Laut's boat-dwelling fishing economy."}

# Madurese
$m["madurese_culture"] = @{cm="global_livestock_output_modifier = 0.1"; cc="# The Madurese were cattle herders and salt producers of Madura Island, known for their bull races."; lm="local_livestock_output_modifier = 0.1"; lc="# Madura's dry climate was ideal for cattle herding and salt production."}

# Borneo peoples
$borneoDefault = @{cm="global_grain_output_modifier = 0.05"; cc="# This Bornean people practiced swidden rice farming in the island's vast tropical forests."; lm="local_hostile_attrition = 0.1"; lc="# Borneo's dense rainforest interior was extremely difficult terrain for outsiders."}
foreach ($c in @("ngaju_culture","maanyan_culture","bidayuh_culture","iban_culture","kenyah_culture","kayan_culture","bahau_culture","murut_culture","dusun_culture")) {
    $m[$c] = $borneoDefault.Clone()
}
$m["iban_culture"] = @{cm="army_infantry_power = 0.05"; cc="# The Iban were the most feared headhunters of Borneo, expanding aggressively through the Sarawak river systems."; lm="local_hostile_attrition = 0.1"; lc="# The Borneo rainforest gave Iban warriors significant terrain advantages."}
$m["banjar_culture"] = @{cm="trade_efficiency = 0.05"; cc="# The Banjar Sultanate controlled diamond mines and river trade in southeastern Borneo."; lm="local_production_efficiency = 0.05"; lc="# The Banjar homeland contained diamond deposits and supported riverine trade."}
$m["kutai_culture"] = @{cm="trade_efficiency = 0.05"; cc="# The Kutai Sultanate was one of the oldest Hindu-Buddhist states in Indonesia, controlling Mahakam River trade."; lm="local_grain_output_modifier = 0.1"; lc="# The Mahakam River delta and interior supported agriculture and trade."}
foreach ($c in @("tidung_culture","melanau_culture")) {
    $m[$c] = @{cm="global_fish_output_modifier = 0.1"; cc="# This coastal Borneo people combined fishing with sago processing and maritime trade."; lm="local_fish_output_modifier = 0.1"; lc="# The Borneo coast supported fishing and sago palm harvesting."}
}

# Sulawesi peoples
foreach ($c in @("mandarese_culture","minahasan_culture","gorontalo_culture","tolaki_culture","muna_culture","mori_culture","kaili_culture","tomini_culture","pamona_culture","bungku_culture","mongondow_culture","saluan_culture","banggai_culture","buton_culture","moronene_culture","sangirese_culture","talaud_culture","maaya_culture")) {
    $m[$c] = @{cm="global_fish_output_modifier = 0.1"; cc="# This Sulawesi people combined farming with fishing and maritime activities in the island's varied landscape."; lm="local_fish_output_modifier = 0.1"; lc="# The waters around Sulawesi provided productive fishing for coastal communities."}
}
$m["torajan_culture"] = @{cm="global_grain_output_modifier = 0.1"; cc="# The Toraja were highland rice farmers of central Sulawesi, famous for their elaborate funeral ceremonies and architecture."; lm="local_defensive = 0.1"; lc="# The Toraja highlands provided natural defensive positions that preserved their independence."}

# Sama (Bajau)
$m["sama_culture"] = @{cm="global_sailors_modifier = 0.15"; cc="# The Sama-Bajau were the 'Sea Nomads' of Southeast Asia, living on boats and diving to extraordinary depths."; lm="local_fish_output_modifier = 0.15"; lc="# The Sama-Bajau roamed the richest coral reef waters in the world, the Coral Triangle."}

# Nusa Tenggara / Lesser Sundas
$lesseSundas = @{cm="global_grain_output_modifier = 0.05"; cc="# This Lesser Sunda Islands people practiced mixed farming on the drier eastern Indonesian islands."; lm="local_grain_output_modifier = 0.1"; lc="# The Lesser Sunda Islands' varied terrain supported farming and fishing communities."}
foreach ($c in @("sasak_culture","bima_culture","dompu_culture","sumbawa_culture","sumba_culture","manggarai_culture","lamaholot_culture","alor_culture","lio_culture","sikka_culture","rotenese_culture","helong_culture","hawu_culture","atoni_culture")) {
    $m[$c] = $lesseSundas.Clone()
}

# Timor peoples
foreach ($c in @("tetum_culture","mambai_culture","bunak_culture","makasae_culture","fataluku_culture","wetarese_culture")) {
    $m[$c] = @{cm="global_grain_output_modifier = 0.05"; cc="# This Timorese people practiced swidden agriculture and sandalwood trading on the island of Timor."; lm="local_hostile_attrition = 0.1"; lc="# Timor's rugged mountainous interior was difficult terrain for outside control."}
}

# Maluku (Spice Islands)
foreach ($c in @("ternate_culture","tidore_culture")) {
    $m[$c] = @{cm="trade_efficiency = 0.15"; cc="# This North Maluku sultanate controlled the world's only source of cloves, the most valuable spice in global trade."; lm="local_production_efficiency = 0.15"; lc="# The volcanic Spice Islands produced cloves, nutmeg, and mace found nowhere else on Earth."}
}
foreach ($c in @("aru_culture","kei_culture","tanimbar_culture","buru_culture","sula_culture","seramese_culture","bacan_culture","maba_culture","tobelo_culture","galela_culture")) {
    $m[$c] = @{cm="global_fish_output_modifier = 0.1"; cc="# This Maluku Islands people combined fishing with spice cultivation and sago processing."; lm="local_fish_output_modifier = 0.1"; lc="# The Maluku waters provided abundant fishing and marine resources."}
}

Insert-CultureModifiers -SourcePath "$base\CulturalDifferencesSource\in_game\common\cultures\indonesia.txt" `
    -OutputPath "$base\CulturalDifferencesOutput\in_game\common\cultures\indonesia.txt" `
    -Modifiers $m

# Process oceanic.txt (66 cultures)
$base = "c:\Users\sages\OneDrive - Microsoft\Documents\GitHub\Specula-Principum"
. "$base\CulturalDifferencesOutput\Insert-CultureModifiers.ps1"

$m = @{}

# Polynesian - major cultures
$m["maori_culture"] = @{cm="army_infantry_power = 0.1"; cc="# The Maori were among the most formidable warriors in the Pacific, their haka war dance and pa fortifications legendary."; lm="local_fish_output_modifier = 0.1"; lc="# New Zealand's coastal waters and rivers provided rich fishing alongside Maori agriculture."}
$m["maohi_culture"] = @{cm="global_sailors_modifier = 0.1"; cc="# The Maohi (Tahitians) were master navigators and seafarers, their double-hulled canoes crossing vast Pacific distances."; lm="local_fish_output_modifier = 0.15"; lc="# Tahiti's coral reefs and surrounding waters provided abundant fishing and marine resources."}
$m["kanaka_maoli_culture"] = @{cm="global_grain_output_modifier = 0.1"; cc="# The Kanaka Maoli (Hawaiians) built one of the most complex Polynesian civilizations, with intensive irrigated taro farming."; lm="local_grain_output_modifier = 0.15"; lc="# Hawaii's volcanic soils and irrigated lo'i taro paddies were extraordinarily productive."}
$m["tonga_oceania_culture"] = @{cm="prestige = 5"; cc="# The Tu'i Tonga Empire was the greatest maritime empire in Polynesia, ruling a vast oceanic domain from Fiji to Samoa."; lm="local_fish_output_modifier = 0.1"; lc="# The Tongan islands' coral reefs supported productive fishing for the empire."}
$m["tagata_samoa_culture"] = @{cm="global_sailors_modifier = 0.1"; cc="# The Samoans were among the Pacific's greatest navigators, maintaining the oldest continuous Polynesian culture."; lm="local_fish_output_modifier = 0.1"; lc="# Samoa's tropical waters and reefs provided abundant fishing."}
$m["rapa_nui_culture"] = @{cm="prestige = 5"; cc="# The Rapa Nui built the legendary moai statues of Easter Island, one of the most remarkable achievements of any Polynesian culture."; lm="local_fish_output_modifier = 0.1"; lc="# The remote Easter Island's surrounding waters provided fishing for the isolated community."}
$m["enana_culture"] = @{cm="army_infantry_power = 0.05"; cc="# The Enana (Marquesans) were fierce Polynesian warriors, their elaborate tattoo art reflecting martial culture."; lm="local_fish_output_modifier = 0.1"; lc="# The Marquesas Islands' deep waters provided fishing for these remote Polynesian communities."}

# Other Polynesian
$polyDefault = @{cm="global_fish_output_modifier = 0.1"; cc="# This Polynesian people were expert seafarers and fishermen, navigating the vast Pacific Ocean."; lm="local_fish_output_modifier = 0.1"; lc="# The Pacific island coral reefs and surrounding waters provided abundant marine resources."}
foreach ($c in @("niuean_culture","tuamotus_culture","tokelauan_culture","mangareva_culture","tuvaluan_culture","futuna_culture")) {
    $m[$c] = $polyDefault.Clone()
}

# Melanesian - major cultures
$m["itaukei_culture"] = @{cm="global_grain_output_modifier = 0.1"; cc="# The iTaukei (Fijians) built one of the most complex societies in Melanesia, with hierarchical chiefdoms and productive agriculture."; lm="local_grain_output_modifier = 0.1"; lc="# Fiji's volcanic soils supported productive farming of taro, yams, and other tropical crops."}

# Micronesian
$m["chamoru_culture"] = @{cm="global_sailors_modifier = 0.1"; cc="# The Chamoru (Chamorros) of Guam and the Marianas built the ancient latte stone civilization, skilled seafarers."; lm="local_fish_output_modifier = 0.1"; lc="# The Mariana Islands' reef systems provided abundant fishing for the Chamoru."}
$m["belauan_culture"] = @{cm="global_fish_output_modifier = 0.1"; cc="# The Belauan (Palauans) built sophisticated stone money economies and terraced hillsides for taro farming."; lm="local_fish_output_modifier = 0.1"; lc="# Palau's pristine coral reefs were among the richest marine environments in the Pacific."}
$m["i_kiribati_culture"] = @{cm="global_fish_output_modifier = 0.15"; cc="# The I-Kiribati were master ocean navigators and fishermen, surviving on some of the most remote atolls on Earth."; lm="local_fish_output_modifier = 0.15"; lc="# The Kiribati atolls' surrounding ocean teemed with tuna and other pelagic fish."}
foreach ($c in @("kajoor_ri_majel_culture","chuukese_culture","pohnpeian_culture","kosrae_culture","yap_culture","refaluwasch_culture")) {
    $m[$c] = @{cm="global_fish_output_modifier = 0.1"; cc="# This Micronesian people were expert navigators and fishermen of the central Pacific islands."; lm="local_fish_output_modifier = 0.1"; lc="# The Micronesian islands' surrounding waters provided productive fishing."}
}
$m["pohnpeian_culture"] = @{cm="prestige = 5"; cc="# The Pohnpeians built the mysterious stone city of Nan Madol, one of the most remarkable architectural achievements in the Pacific."; lm="local_fish_output_modifier = 0.1"; lc="# Pohnpei's fringing reef and lagoon provided abundant fishing."}
$m["yap_culture"] = @{cm="trade_efficiency = 0.1"; cc="# The Yapese created the famous stone money (rai) economy and maintained a vast trading network across Micronesia."; lm="local_fish_output_modifier = 0.1"; lc="# Yap's coastal waters and lagoon supported productive fishing."}

# Vanuatu peoples
$vanuatu = @{cm="global_grain_output_modifier = 0.05"; cc="# This ni-Vanuatu people practiced root-crop farming and fishing on the volcanic islands of Vanuatu."; lm="local_fish_output_modifier = 0.1"; lc="# Vanuatu's coral reefs and coastal waters provided abundant fishing."}
foreach ($c in @("natugu_culture","mwotlap_culture","valpei_culture","akei_culture","tamambo_culture","sakao_culture","tolomako_culture","ambae_culture","maewo_culture","apma_culture","malakula_culture","ambrym_culture","nakanamanga_culture","lewo_culture","sie_culture","lenakel_culture","anejom_culture")) {
    $m[$c] = $vanuatu.Clone()
}

# Solomon Islands
$solomons = @{cm="global_fish_output_modifier = 0.1"; cc="# This Solomon Islands people combined fishing with root-crop farming in the tropical island environment."; lm="local_fish_output_modifier = 0.1"; lc="# The Solomon Islands' coral reefs provided rich fishing and marine resources."}
foreach ($c in @("saa_culture","kwaio_culture","kwaraae_culture","vaghua_culture","cheke_holo_culture","roviana_culture","nduke_culture","marovo_culture","ughele_culture","vangunu_culture","ghari_culture","gela_culture","arosi_culture","mu_ngava_culture")) {
    $m[$c] = $solomons.Clone()
}
$m["roviana_culture"] = @{cm="global_sailors_modifier = 0.1"; cc="# The Roviana were the most feared headhunting raiders of the western Solomon Islands, building large war canoes."; lm="local_fish_output_modifier = 0.1"; lc="# The New Georgia lagoon provided rich fishing and staging for Roviana war fleets."}

# New Caledonia
$newCal = @{cm="global_grain_output_modifier = 0.05"; cc="# This Kanak people of New Caledonia practiced irrigated taro farming and fishing on the Melanesian island."; lm="local_fish_output_modifier = 0.1"; lc="# New Caledonia's barrier reef, the world's largest lagoon, provided extraordinary fishing."}
foreach ($c in @("tiri_culture","paici_culture","ajie_culture","xaracuu_culture","cemuhi_culture","yuanga_culture","numee_culture","nyelayu_culture","ndrumbea_culture","fwai_culture","drehu_culture","nengone_culture")) {
    $m[$c] = $newCal.Clone()
}

Insert-CultureModifiers -SourcePath "$base\CulturalDifferencesSource\in_game\common\cultures\oceanic.txt" `
    -OutputPath "$base\CulturalDifferencesOutput\in_game\common\cultures\oceanic.txt" `
    -Modifiers $m

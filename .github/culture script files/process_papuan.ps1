# Process papuan.txt (135 cultures)
$base = "c:\Users\sages\OneDrive - Microsoft\Documents\GitHub\Specula-Principum"
. "$base\CulturalDifferencesOutput\Insert-CultureModifiers.ps1"

$m = @{}

# Default for most Papuan peoples - they are diverse but share patterns:
# Coastal: fishing; Highland: root-crop farming; All: hostile attrition

# Island Melanesia (Bismarck Archipelago, Bougainville)
$islandMelanesia = @{cm="global_fish_output_modifier = 0.1"; cc="# This Island Melanesian people combined fishing and reef gathering with root-crop farming."; lm="local_fish_output_modifier = 0.1"; lc="# The tropical island waters and coral reefs provided abundant fishing."}
foreach ($c in @("biak_culture","yapen_culture","manus_culture","lavongai_culture","mussau_culture","kavieng_culture","patpatar_culture","kandas_culture","siar_culture","tangga_culture","melamela_culture","mengen_papua_culture","bola_culture","umboi_culture","arop_culture","karkar_culture","mono_culture","buka_culture")) {
    $m[$c] = $islandMelanesia.Clone()
}

# Bougainville
foreach ($c in @("rotokas_culture","bannoni_culture","naasioi_culture","tinputz_culture")) {
    $m[$c] = @{cm="global_grain_output_modifier = 0.05"; cc="# This Bougainville people practiced root-crop farming and fishing on the mineral-rich volcanic island."; lm="local_hostile_attrition = 0.1"; lc="# Bougainville's mountainous volcanic interior was extremely difficult terrain for outsiders."}
}

# New Britain highland/interior
foreach ($c in @("kuot_culture","baining_culture","kol_papua_culture","mamusi_culture","lamogai_culture","kaulong_culture")) {
    $m[$c] = @{cm="global_grain_output_modifier = 0.05"; cc="# This New Britain highland people practiced taro and yam farming in the volcanic interior."; lm="local_hostile_attrition = 0.1"; lc="# New Britain's rugged volcanic mountains and dense forests were difficult for outsiders."}
}

# Milne Bay/Trobriand
$m["kilivila_culture"] = @{cm="trade_efficiency = 0.1"; cc="# The Trobriand Islanders maintained the famous kula ring, one of the most sophisticated ceremonial exchange systems in the world."; lm="local_grain_output_modifier = 0.1"; lc="# The Trobriand Islands' coral soils supported intensive yam cultivation central to their society."}
foreach ($c in @("muyua_culture","yela_culture","tagula_culture","misima_culture","nidula_culture","moratau_culture","duau_culture")) {
    $m[$c] = @{cm="global_fish_output_modifier = 0.1"; cc="# This Milne Bay Islands people were seafarers, fishermen, and traders of the eastern Papua New Guinea archipelago."; lm="local_fish_output_modifier = 0.1"; lc="# The Milne Bay islands' coral reefs provided productive fishing."}
}

# Torres Strait
$m["kalaw_lagaw_ya_culture"] = @{cm="global_fish_output_modifier = 0.15"; cc="# The Torres Strait Islanders were expert seafarers and fishermen controlling the strait between Australia and New Guinea."; lm="local_fish_output_modifier = 0.15"; lc="# The Torres Strait's shallow waters and reefs provided exceptional fishing and marine resources."}

# Papuan coastal (southern)
$papuanCoast = @{cm="global_fish_output_modifier = 0.1"; cc="# This coastal Papuan people lived by fishing, sago processing, and root-crop farming along the coast."; lm="local_fish_output_modifier = 0.1"; lc="# The coastal waters and river mouths provided abundant fishing."}
foreach ($c in @("suau_culture","sinaugoro_culture","yareba_culture","toaripi_culture","namau_culture","kerewo_culture","rumu_culture","sempan_culture","kamoro_culture","waropen_culture","iresim_culture","yaur_culture","roon_culture","wamesa_culture","irarutu_culture","buruwai_culture","sumuri_culture")) {
    $m[$c] = $papuanCoast.Clone()
}

# Papuan south coast lowland
$southCoast = @{cm="global_fish_output_modifier = 0.1"; cc="# This south Papuan lowland people combined fishing with sago processing in the coastal swamps."; lm="local_hostile_attrition = 0.1"; lc="# The vast mangrove swamps and lowland forests of southern Papua were extremely difficult terrain."}
foreach ($c in @("yaqay_culture","asmat_culture","kayagar_culture","kaweinag_culture","marind_culture","marlew_culture","yelmek_culture","kimaama_culture","riantana_culture","ndom_culture","yei_culture","kanum_culture","suki_culture","bife_culture","wipi_culture","bitur_culture","agob_culture","nambu_culture","gogodala_culture","mubami_culture","bamu_culture")) {
    $m[$c] = $southCoast.Clone()
}
$m["asmat_culture"] = @{cm="army_infantry_power = 0.05"; cc="# The Asmat were fierce headhunting warriors of the swamp forests, also renowned for their extraordinary woodcarving art."; lm="local_hostile_attrition = 0.15"; lc="# The vast Asmat swamp forest was one of the most impenetrable terrains on Earth."}
$m["marind_culture"] = @{cm="army_infantry_power = 0.05"; cc="# The Marind-anim were fierce headhunting raiders of the south Papua coast, conducting large-scale warfare."; lm="local_hostile_attrition = 0.1"; lc="# The Trans-Fly swamps and savannas were difficult terrain for outsiders."}

# Papuan Northern coast/river
foreach ($c in @("baruga_culture","orokaiva_culture","binandere_culture","suena_culture","wampar_culture","iwal_culture","kumalu_culture","bukawa_culture","kate_culture","awad_bing_culture","adzera_culture","rawa_papua_culture","amaimon_culture")) {
    $m[$c] = @{cm="global_grain_output_modifier = 0.05"; cc="# This northern Papuan people practiced taro and yam farming in the coastal lowlands and foothills."; lm="local_grain_output_modifier = 0.1"; lc="# The northern Papua lowlands and foothills supported root-crop agriculture."}
}

# Papua New Guinea highlands
$pngHighland = @{cm="global_grain_output_modifier = 0.1"; cc="# This PNG Highland people practiced intensive sweet potato farming, supporting some of the densest populations in the Pacific."; lm="local_defensive = 0.1"; lc="# The rugged PNG Highlands terrain provided natural defensive positions for communities."}
foreach ($c in @("melpa_culture","namo_me_culture")) {
    $m[$c] = $pngHighland.Clone()
}
$m["melpa_culture"] = @{cm="global_grain_output_modifier = 0.15"; cc="# The Melpa were among the most populous highland peoples, their moka exchange system creating vast networks of alliance and trade."; lm="local_grain_output_modifier = 0.1"; lc="# The Western Highlands' fertile valleys supported intensive sweet potato agriculture."}

# Interior lowland/swamp peoples
$interiorLow = @{cm="global_grain_output_modifier = 0.05"; cc="# This interior lowland Papuan people combined swidden farming with sago processing and hunting."; lm="local_hostile_attrition = 0.15"; lc="# The dense interior swamp forests were among the most impenetrable environments on Earth."}
foreach ($c in @("koiali_culture","waima_culture","hamtai_culture","beami_culture","aekyom_culture","kaeti_culture","muyu_culture","iwur_culture","tsaukambo_culture","kombai_culture","bayono_culture","awyu_culture","daga_papua_culture","maiwa_papua_culture","manubara_culture")) {
    $m[$c] = $interiorLow.Clone()
}

# Sepik peoples
foreach ($c in @("rao_culture","mum_culture","barem_culture","aruamu_culture","banaro_culture","angoram_culture","boiken_culture","bukiyip_culture","wogamusin_culture","maia_culture")) {
    $m[$c] = @{cm="global_grain_output_modifier = 0.05"; cc="# This Sepik River people were farmers, fishermen, and artists of the great Sepik basin, known for spirit-house carvings."; lm="local_hostile_attrition = 0.1"; lc="# The vast Sepik River swamp forests were extremely difficult to navigate."}
}

# West Papua (Bird's Head)
$birdsHead = @{cm="global_grain_output_modifier = 0.05"; cc="# This Bird's Head Peninsula people practiced root-crop farming and fishing in western New Guinea."; lm="local_hostile_attrition = 0.1"; lc="# The remote Bird's Head Peninsula was heavily forested and difficult to access."}
foreach ($c in @("baham_culture","arandai_culture","moskona_culture","sougb_culture","hatam_culture","meyah_culture","maybrat_culture","abun_culture","moi_culture","maden_culture")) {
    $m[$c] = $birdsHead.Clone()
}

# West Papua interior
foreach ($c in @("olo_culture","abau_culture","kwomtari_culture","fas_papua_culture","awyi_culture","gresi_culture","kwerba_culture","bauzi_culture","kwesten_culture","nisa_culture")) {
    $m[$c] = @{cm="global_grain_output_modifier = 0.05"; cc="# This interior West Papuan people practiced swidden farming in the remote jungle interior."; lm="local_hostile_attrition = 0.15"; lc="# The dense interior jungles of western New Guinea were virtually impenetrable."}
}

Insert-CultureModifiers -SourcePath "$base\CulturalDifferencesSource\in_game\common\cultures\papuan.txt" `
    -OutputPath "$base\CulturalDifferencesOutput\in_game\common\cultures\papuan.txt" `
    -Modifiers $m

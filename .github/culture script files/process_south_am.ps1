# Process southamerican.txt, brasilian.txt, argentinian.txt
$base = "c:\Users\sages\OneDrive - Microsoft\Documents\GitHub\Specula-Principum"
. "$base\CulturalDifferencesOutput\Insert-CultureModifiers.ps1"

# === SOUTHAMERICAN (49 cultures) ===
$m = @{}

# Major civilizations
$m["muisca_culture"] = @{cm="prestige = 5"; cc="# The Muisca Confederation was the most advanced civilization of northern South America, famed for their gold-working and the El Dorado legend."; lm="local_production_efficiency = 0.1"; lc="# The Muisca highlands of the Bogota plateau supported intensive agriculture and renowned gold-smithing."}
$m["tayrona_culture"] = @{cm="global_production_efficiency = 0.1"; cc="# The Tayrona built sophisticated stone cities in the Sierra Nevada de Santa Marta, with advanced terrace farming and goldwork."; lm="local_defensive = 0.1"; lc="# The Sierra Nevada's steep mountain terrain provided natural fortification for Tayrona cities."}
$m["quimbaya_culture"] = @{cm="global_production_efficiency = 0.1"; cc="# The Quimbaya were among the finest goldsmiths in the Americas, their metalwork unrivaled in artistry."; lm="local_production_efficiency = 0.1"; lc="# The Quimbaya homeland's Colombian coffee region supported agriculture and goldsmithing."}

# Arawak peoples
$m["arawak_culture"] = @{cm="global_grain_output_modifier = 0.1"; cc="# The Arawak were skilled farmers and traders who spread across the Caribbean and northern South America."; lm="local_grain_output_modifier = 0.1"; lc="# The Arawak homeland's tropical rivers and forests supported productive manioc farming."}
foreach ($c in @("achagua_culture","caquetio_culture","wapishana_culture")) {
    $m[$c] = @{cm="global_grain_output_modifier = 0.1"; cc="# This Arawakan people practiced manioc farming and fishing in the tropical lowlands."; lm="local_grain_output_modifier = 0.1"; lc="# The tropical river valleys supported productive manioc cultivation."}
}
$m["wayuu_culture"] = @{cm="global_livestock_output_modifier = 0.1"; cc="# The Wayuu were fierce pastoral warriors of the Guajira Peninsula, never fully conquered by the Spanish."; lm="local_hostile_attrition = 0.15"; lc="# The arid Guajira Peninsula was harsh, waterless terrain that resisted all outside control."}

# Carib/Coastal
$m["cumanagoto_culture"] = @{cm="global_fish_output_modifier = 0.1"; cc="# The Cumanagoto were coastal fishermen and warriors of the Venezuelan coast."; lm="local_fish_output_modifier = 0.1"; lc="# The Venezuelan Caribbean coast supported fishing and pearl diving."}
$m["warao_culture"] = @{cm="global_fish_output_modifier = 0.15"; cc="# The Warao were expert canoe-building fishermen of the Orinoco Delta, the 'boat people' of Venezuela."; lm="local_fish_output_modifier = 0.15"; lc="# The vast Orinoco Delta provided abundant fish and crustacean resources."}
$m["pemon_culture"] = @{cm="global_grain_output_modifier = 0.05"; cc="# The Pemon were farmers and hunters of the Guiana Highlands and the tepui table-top mountains."; lm="local_hostile_attrition = 0.1"; lc="# The Guiana Highlands' tepui formations and dense forests were extremely remote terrain."}

# Colombian highland peoples
$colombianHL = @{cm="global_grain_output_modifier = 0.1"; cc="# This Colombian highland people practiced intensive agriculture in the Andean valleys of Colombia."; lm="local_grain_output_modifier = 0.1"; lc="# The Colombian highland valleys supported productive maize and potato farming."}
foreach ($c in @("cuicas_culture","tatuy_culture","chitarero_culture","uwa_culture","sutagao_culture","calima_culture","pasto_culture","puben_culture","andaqui_culture")) {
    $m[$c] = $colombianHL.Clone()
}

# Colombian forest/lowland peoples
$colombianLow = @{cm="global_grain_output_modifier = 0.05"; cc="# This Colombian lowland people practiced swidden agriculture and fishing in the tropical forests."; lm="local_hostile_attrition = 0.1"; lc="# The dense Colombian rainforest was difficult terrain for outside forces."}
foreach ($c in @("sinu_culture","karapana_culture","waunana_culture","guahibo_culture","guayupe_culture","yarigui_culture","panche_culture","muzo_culture","tahami_culture","nutabe_culture","malibu_culture","pijao_culture","tama_culture","timanae_culture","embera_culture","awa_culture","barbakoan_culture","uitoto_culture","guayabe_culture","chaima_culture","yukpa_culture","ette_ennaka_culture","guaribes_culture","tumaco_culture","pume_culture","enepas_culture")) {
    $m[$c] = $colombianLow.Clone()
}

# Override specific notable ones
$m["embera_culture"] = @{cm="global_fish_output_modifier = 0.1"; cc="# The Embera were expert river fishermen and canoe-builders of the Darien and Pacific lowlands."; lm="local_hostile_attrition = 0.1"; lc="# The Darien rainforest was among the densest and most impenetrable jungles in the Americas."}
$m["kuiba_culture"] = @{cm="land_morale = 0.05"; cc="# The Kuiba were nomadic hunter-gatherers of the Llanos (plains) of Colombia and Venezuela."; lm="local_hostile_attrition = 0.1"; lc="# The vast, seasonally flooded Llanos were difficult terrain for outsiders."}
$m["ayamanes_culture"] = @{cm="global_grain_output_modifier = 0.05"; cc="# The Ayamanes were highland farmers and warriors of the Venezuelan Andes."; lm="local_defensive = 0.1"; lc="# The Venezuelan Andean highlands provided natural defensive terrain."}
$m["jirajaran_culture"] = @{cm="global_grain_output_modifier = 0.05"; cc="# The Jirajaran were farming people of the Venezuelan highlands."; lm="local_defensive = 0.1"; lc="# The Venezuelan highland valleys provided defensive positions."}

Insert-CultureModifiers -SourcePath "$base\CulturalDifferencesSource\in_game\common\cultures\southamerican.txt" `
    -OutputPath "$base\CulturalDifferencesOutput\in_game\common\cultures\southamerican.txt" `
    -Modifiers $m

# === ARGENTINIAN (52 cultures) ===
$m = @{}

# Mapuche
$m["mapuche_culture"] = @{cm="army_infantry_power = 0.1"; cc="# The Mapuche were the most formidable warriors in South America, never conquered by the Inca or Spanish empires."; lm="local_hostile_attrition = 0.15"; lc="# The Mapuche homeland's forests, rivers, and mountains were ideal terrain for their guerrilla resistance."}
foreach ($c in @("pikumche_culture","williche_culture","pehuenche_culture","purun_awqa_culture")) {
    $m[$c] = @{cm="army_infantry_power = 0.05"; cc="# This Mapuche-related people maintained fierce warrior traditions in the forests and mountains of southern Chile."; lm="local_hostile_attrition = 0.1"; lc="# The dense Valdivian temperate rainforests and mountains were difficult for invaders."}
}

# Patagonian/Fuegian
$m["selknam_culture"] = @{cm="land_morale = 0.05"; cc="# The Selk'nam were hardy hunters of Tierra del Fuego, surviving in one of the most extreme temperate environments on Earth."; lm="local_hostile_attrition = 0.15"; lc="# Tierra del Fuego's bitter cold, constant winds, and isolation made it extremely inhospitable."}
$m["yaghan_culture"] = @{cm="global_fish_output_modifier = 0.15"; cc="# The Yaghan were the southernmost people on Earth, expert canoe-navigators and shellfish gatherers of the Beagle Channel."; lm="local_hostile_attrition = 0.15"; lc="# The Beagle Channel's sub-Antarctic waters and extreme weather made it Earth's most remote inhabited coastline."}
$m["kawesqar_culture"] = @{cm="global_fish_output_modifier = 0.15"; cc="# The Kawesqar were maritime hunter-gatherers of the Chilean fjords, navigating some of the stormiest waters on Earth."; lm="local_hostile_attrition = 0.15"; lc="# The Chilean fjords' extreme storms and icy waters were deadly to unprepared outsiders."}
$m["aonikenk_culture"] = @{cm="global_livestock_output_modifier = 0.1"; cc="# The Aonikenk (Tehuelche) were guanaco-hunting nomads of the vast Patagonian steppe."; lm="local_hostile_attrition = 0.15"; lc="# The windswept Patagonian steppe was one of the most desolate inhabited regions on Earth."}
$m["teushen_culture"] = @{cm="global_livestock_output_modifier = 0.1"; cc="# The Teushen were hunters of the southern Patagonian steppe, related to the Tehuelche."; lm="local_hostile_attrition = 0.15"; lc="# The Patagonian steppe's harsh winds and arid conditions resisted outside settlement."}
$m["gununa_kune_culture"] = @{cm="global_livestock_output_modifier = 0.1"; cc="# The Gununa-Kune (Northern Tehuelche) were guanaco hunters of the northern Patagonian steppe."; lm="local_hostile_attrition = 0.1"; lc="# The northern Patagonian steppe was harsh, arid terrain."}
$m["guaiteco_culture"] = @{cm="global_fish_output_modifier = 0.1"; cc="# The Chono (Guaiteco) were maritime hunter-gatherers of the Chilean archipelago."; lm="local_fish_output_modifier = 0.1"; lc="# The Chiloe Archipelago's cold waters supported fishing and shellfish gathering."}

# Central Argentine
$pampas = @{cm="global_livestock_output_modifier = 0.1"; cc="# This Pampas people were nomadic hunters of the vast Argentine grasslands, pursuing guanaco and rhea."; lm="local_hostile_attrition = 0.1"; lc="# The vast Argentine Pampas were difficult terrain for outsiders unfamiliar with the featureless grasslands."}
foreach ($c in @("quirandi_culture","tenesch_culture","het_culture")) {
    $m[$c] = $pampas.Clone()
}

# Chilean highland/farming
foreach ($c in @("henia_culture","kamiare_culture")) {
    $m[$c] = @{cm="global_grain_output_modifier = 0.1"; cc="# This Comechingon people were highland farmers and herders of the Sierras de Cordoba."; lm="local_defensive = 0.1"; lc="# The Sierras de Cordoba provided natural defensive terrain for highland communities."}
}

# Northwestern Argentine
foreach ($c in @("warpe_culture","tonokote_culture","uakambalelte_culture","sanaviron_culture")) {
    $m[$c] = @{cm="global_grain_output_modifier = 0.05"; cc="# This northwestern Argentine people practiced irrigation agriculture in the semi-arid foothills."; lm="local_grain_output_modifier = 0.1"; lc="# The Cuyo region's irrigated valleys supported farming in an arid environment."}
}

# Chaco peoples
$chacoDefault = @{cm="global_livestock_output_modifier = 0.1"; cc="# This Gran Chaco people survived through hunting, gathering, and fishing in the harsh Chaco scrubland."; lm="local_hostile_attrition = 0.1"; lc="# The Gran Chaco's dense thornbush, extreme heat, and limited water made it inhospitable to outsiders."}
foreach ($c in @("makas_culture","pitlaxa_culture","tapiiete_culture","nivacle_culture","wichi_culture","lumnana_culture","abipones_culture","enlhet_culture","enxet_culture","guana_culture","nenlhet_culture","enenlhet_culture","yshyr_culture","ayoreo_culture","monkox_culture","moqoit_culture")) {
    $m[$c] = $chacoDefault.Clone()
}
$m["abipones_culture"] = @{cm="army_cavalry_power = 0.05"; cc="# The Abipones became fearsome mounted warriors of the Chaco, raiding Spanish settlements with devastating effect."; lm="local_hostile_attrition = 0.1"; lc="# The Gran Chaco's dense thornbush was ideal terrain for Abipones mounted raiders."}

# Ache
$m["ache_culture"] = @{cm="land_morale = 0.05"; cc="# The Ache were nomadic hunter-gatherers of the Atlantic Forest, among the last uncontacted peoples."; lm="local_hostile_attrition = 0.15"; lc="# The dense Atlantic Forest of eastern Paraguay was virtually impenetrable."}

# Mesopotamia/Parana peoples
foreach ($c in @("chana_culture","bohan_culture","guenoa_culture")) {
    $m[$c] = @{cm="global_fish_output_modifier = 0.1"; cc="# This Parana-Uruguay River people combined fishing with hunting and gathering in the riverine wetlands."; lm="local_fish_output_modifier = 0.1"; lc="# The Parana and Uruguay Rivers provided abundant freshwater fishing."}
}

# Bolivian lowland
$bolivianLow = @{cm="global_grain_output_modifier = 0.05"; cc="# This Bolivian lowland people practiced farming and fishing in the tropical savannas and forests."; lm="local_hostile_attrition = 0.1"; lc="# The Bolivian tropical lowlands were remote and difficult to access from the highlands."}
foreach ($c in @("baure_culture","moxo_culture","yuracare_culture","tsimanes_culture","kanisian_culture","itonama_culture","movima_culture","cayubaba_culture","pacahuara_culture","eseejja_culture","takana_culture")) {
    $m[$c] = $bolivianLow.Clone()
}
$m["moxo_culture"] = @{cm="global_grain_output_modifier = 0.1"; cc="# The Moxo built enormous raised-field agricultural systems in the Beni wetlands, one of pre-Columbian South America's greatest engineering feats."; lm="local_grain_output_modifier = 0.15"; lc="# The Moxo raised fields transformed seasonal wetlands into highly productive farmland."}

Insert-CultureModifiers -SourcePath "$base\CulturalDifferencesSource\in_game\common\cultures\argentinian.txt" `
    -OutputPath "$base\CulturalDifferencesOutput\in_game\common\cultures\argentinian.txt" `
    -Modifiers $m

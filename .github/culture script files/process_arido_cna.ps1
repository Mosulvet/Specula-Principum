# Process aridoamerican.txt and central_north_american.txt
$base = "c:\Users\sages\OneDrive - Microsoft\Documents\GitHub\Specula-Principum"
. "$base\CulturalDifferencesOutput\Insert-CultureModifiers.ps1"

# === ARIDOAMERICAN (46 cultures) ===
$m = @{}

# Pueblo peoples
$m["hopi_culture"] = @{cm="global_grain_output_modifier = 0.1"; cc="# The Hopi were master dry-farmers of the Arizona mesas, cultivating maize in an arid environment for over a millennium."; lm="local_defensive = 0.15"; lc="# The Hopi mesa-top villages were natural fortresses, virtually impregnable to raiding parties."}
$m["zuni_culture"] = @{cm="global_grain_output_modifier = 0.1"; cc="# The Zuni built one of the great pueblo civilizations, with sophisticated irrigation and multi-story architecture."; lm="local_defensive = 0.1"; lc="# Zuni pueblo architecture and canyon positions provided strong defensive positions."}
$m["keres_culture"] = @{cm="global_grain_output_modifier = 0.1"; cc="# The Keres peoples built sophisticated pueblos along the Rio Grande, skilled in irrigation and maize farming."; lm="local_grain_output_modifier = 0.1"; lc="# The Rio Grande valley supported irrigated agriculture for Pueblo farming communities."}
$m["tanoan_culture"] = @{cm="global_grain_output_modifier = 0.1"; cc="# The Tanoan pueblos along the Rio Grande maintained intensive irrigated maize agriculture and complex ceremonial life."; lm="local_grain_output_modifier = 0.1"; lc="# The Rio Grande valley's irrigation-fed farmland supported productive pueblo agriculture."}
$m["ancestral_pueblo_culture"] = @{cm="prestige = 5"; cc="# The Ancestral Pueblo people built the great cliff dwellings and roads of Chaco Canyon and Mesa Verde."; lm="local_defensive = 0.15"; lc="# The canyon cliff dwellings and mesa-top positions were among the most defensible settlements in North America."}
$m["hohokam_culture"] = @{cm="global_grain_output_modifier = 0.15"; cc="# The Hohokam built the most extensive irrigation canal system in pre-Columbian North America, transforming the Sonoran Desert."; lm="local_grain_output_modifier = 0.15"; lc="# The Hohokam canal systems in the Salt River valley supported intensive desert agriculture."}

# Uto-Aztecan farmers/raiders
$m["yaqui_culture"] = @{cm="army_infantry_power = 0.05"; cc="# The Yaqui were fierce warrior-farmers of Sonora, successfully resisting Spanish colonial attempts to conquer them."; lm="local_grain_output_modifier = 0.1"; lc="# The Yaqui River valley supported productive irrigated agriculture."}
$m["mayo_culture"] = @{cm="global_grain_output_modifier = 0.1"; cc="# The Mayo were skilled irrigated farmers of Sinaloa and Sonora, closely related to the Yaqui."; lm="local_grain_output_modifier = 0.1"; lc="# The Mayo River valley supported irrigated farming in the Sonoran lowlands."}
$m["raramuri_culture"] = @{cm="land_morale = 0.05"; cc="# The Raramuri (Tarahumara) were legendary long-distance runners of the Copper Canyon, unconquered in their mountain homeland."; lm="local_hostile_attrition = 0.15"; lc="# The Copper Canyon system of the Sierra Madre was among the most rugged terrain in North America."}
$m["opata_culture"] = @{cm="global_grain_output_modifier = 0.1"; cc="# The Opata were skilled farmers and warriors of the Sonoran highlands."; lm="local_grain_output_modifier = 0.1"; lc="# The Opata homeland's highland valleys supported productive agriculture."}
$m["pima_culture"] = @{cm="global_grain_output_modifier = 0.1"; cc="# The Pima (Akimel O'odham) were desert irrigation farmers, heirs to the Hohokam canal tradition."; lm="local_grain_output_modifier = 0.1"; lc="# The Gila and Salt River valleys supported irrigated desert agriculture."}

# Baja California / Desert hunter-gatherers
$desertHG = @{cm="land_morale = 0.05"; cc="# This desert-dwelling people survived through expert knowledge of arid land resources, hunting and gathering in harsh conditions."; lm="local_hostile_attrition = 0.15"; lc="# The extreme aridity of the desert homeland made it nearly uninhabitable for outsiders."}
foreach ($c in @("cochimi_culture","guaicura_culture","kiliwa_culture","kumiai_culture","mongui_culture","paipai_culture","pericu_culture","seri_culture")) {
    $m[$c] = $desertHG.Clone()
}

# Yuman River peoples
foreach ($c in @("cocopa_culture","xalychidom_culture","quechan_culture","piipaash_culture","yavapai_culture","hualapai_culture")) {
    $m[$c] = @{cm="global_grain_output_modifier = 0.05"; cc="# This Yuman people practiced flood-retreat agriculture along the Colorado River and its tributaries."; lm="local_grain_output_modifier = 0.1"; lc="# The Colorado River floodplain supported seasonal agriculture for riverside communities."}
}

# Sierra Madre peoples
$sierraDefault = @{cm="global_grain_output_modifier = 0.05"; cc="# This Sierra Madre people practiced mountain farming and foraging in the rugged western Mexican highlands."; lm="local_hostile_attrition = 0.1"; lc="# The steep Sierra Madre canyons and mountains were extremely difficult terrain."}
foreach ($c in @("acaxee_culture","guarijio_culture","huichol_culture","naayeri_culture","tepehuan_culture","xixime_culture","totorame_culture","tahue_culture","guasave_culture","yoli_culture")) {
    $m[$c] = $sierraDefault.Clone()
}

# Northern desert nomads (Chichimec-like)
$nomadDefault = @{cm="land_morale = 0.05"; cc="# This semi-nomadic people of the northern Mexican desert survived through hunting, gathering, and raiding."; lm="local_hostile_attrition = 0.1"; lc="# The arid north Mexican desert was harsh terrain that gave nomadic peoples an advantage over settled invaders."}
foreach ($c in @("xumani_culture","toboso_culture","irritila_culture","coahuilteco_culture","tamauliteco_culture","comecrudo_culture","quasmigdo_culture")) {
    $m[$c] = $nomadDefault.Clone()
}

# Caddo and Gulf Coast
$m["caddo_culture"] = @{cm="global_grain_output_modifier = 0.1"; cc="# The Caddo were skilled mound-building farmers of the Red River valley, maintaining a sophisticated chiefdom."; lm="local_grain_output_modifier = 0.1"; lc="# The Red River and East Texas bottomlands supported productive Caddo farming."}
$m["kitsai_culture"] = @{cm="global_grain_output_modifier = 0.05"; cc="# The Kitsai were Caddoan farmers and hunters of the Texas prairies."; lm="local_grain_output_modifier = 0.1"; lc="# The Texas prairie supported seasonal farming alongside bison hunting."}
$m["karankawa_culture"] = @{cm="global_fish_output_modifier = 0.15"; cc="# The Karankawa were coastal fishermen and warriors of the Texas Gulf Coast, skilled canoe navigators."; lm="local_fish_output_modifier = 0.15"; lc="# The Texas Gulf Coast lagoons and bays provided abundant fishing and shellfish."}
$m["atakapa_culture"] = @{cm="global_fish_output_modifier = 0.1"; cc="# The Atakapa were fishermen and shellfish gatherers of the Louisiana-Texas Gulf Coast."; lm="local_fish_output_modifier = 0.1"; lc="# The Gulf Coast marshes and bayous supported rich shellfish and fishing resources."}

Insert-CultureModifiers -SourcePath "$base\CulturalDifferencesSource\in_game\common\cultures\aridoamerican.txt" `
    -OutputPath "$base\CulturalDifferencesOutput\in_game\common\cultures\aridoamerican.txt" `
    -Modifiers $m

# === CENTRAL NORTH AMERICAN (51 cultures) ===
$m = @{}

# Plains nations - horse cultures (pre-horse but still mounted by 1400 some had dogs/travois)
$plainsWarrior = @{cm="army_cavalry_power = 0.05"; cc="# This Plains warrior culture fielded formidable fighters, with military traditions centered on raiding and warfare."; lm="local_livestock_output_modifier = 0.1"; lc="# The Great Plains supported vast bison herds that were the foundation of the Plains economy."}
foreach ($c in @("lahkota_culture","ithanktunwan_culture","ithanktunwanna_culture","ashalaho_culture","ashshipite_culture","tsetsehesahese_culture","sotaeoo_culture","haaninin_culture")) {
    $m[$c] = $plainsWarrior.Clone()
}
$m["lahkota_culture"] = @{cm="army_cavalry_power = 0.1"; cc="# The Lakota Sioux were among the most formidable warriors of the Great Plains, dominating the northern buffalo ranges."; lm="local_livestock_output_modifier = 0.1"; lc="# The northern Great Plains supported enormous bison herds central to Lakota life."}

# Comanche/Shoshone
foreach ($c in @("nanwuinenan_culture","hupe_culture","yapahruka_culture","kuhtsutuuka_culture")) {
    $m[$c] = @{cm="army_cavalry_power = 0.1"; cc="# This Comanche band became the dominant military power of the southern Plains, their mounted warfare skills unmatched."; lm="local_livestock_output_modifier = 0.1"; lc="# The southern Plains supported bison herds and horse herding for the Comanche."}
}

# Arapaho
$m["hinonoeino_culture"] = @{cm="army_cavalry_power = 0.05"; cc="# The Arapaho were formidable Plains warriors and traders, allied with the Cheyenne."; lm="local_livestock_output_modifier = 0.1"; lc="# The central Plains supported bison herds central to Arapaho subsistence."}

# Kiowa
$m["kaigwu_culture"] = @{cm="army_cavalry_power = 0.1"; cc="# The Kiowa were elite mounted warriors of the southern Plains, renowned for their raiding prowess."; lm="local_livestock_output_modifier = 0.1"; lc="# The southern Plains supported bison hunting and horse herding for the Kiowa."}

# Wichita/Caddoan
foreach ($c in @("tawakoni_culture","kitikitish_culture","cayas_culture","taovaya_culture")) {
    $m[$c] = @{cm="global_grain_output_modifier = 0.1"; cc="# This Wichita-related people combined bison hunting with settled farming of maize, beans, and squash."; lm="local_grain_output_modifier = 0.1"; lc="# The river valleys of the southern Plains supported farming alongside bison hunting."}
}

# Pawnee
foreach ($c in @("skiri_culture","tsawi_culture","pitahwarita_culture","kitkehaki_culture")) {
    $m[$c] = @{cm="global_grain_output_modifier = 0.1"; cc="# The Pawnee were settled farmer-warriors of the central Plains, cultivating maize and hunting bison seasonally."; lm="local_grain_output_modifier = 0.1"; lc="# The Loup and Platte River valleys supported productive Pawnee farming."}
}

# Mandan/Hidatsa/Arikara - Missouri River villages
$m["sahnish_culture"] = @{cm="global_grain_output_modifier = 0.1"; cc="# The Arikara were skilled farmers of the Missouri River, growing maize, squash, and beans in fortified villages."; lm="local_grain_output_modifier = 0.1"; lc="# The Missouri River bottomlands supported productive Arikara agriculture."}
$m["nueta_culture"] = @{cm="trade_efficiency = 0.1"; cc="# The Mandan were the greatest traders of the northern Plains, their villages serving as a continental trade hub."; lm="local_grain_output_modifier = 0.1"; lc="# The Mandan Missouri River villages supported intensive maize agriculture and inter-tribal trade."}
$m["hiraaca_culture"] = @{cm="global_grain_output_modifier = 0.1"; cc="# The Hidatsa were skilled farmer-warriors of the Missouri River, closely allied with the Mandan."; lm="local_grain_output_modifier = 0.1"; lc="# The Missouri River bottomlands supported productive Hidatsa farming."}

# Athabaskan (Dene) - Subarctic
$deneDefault = @{cm="global_livestock_output_modifier = 0.1"; cc="# This Dene (Athabaskan) people were hunters and trappers of the northern forests, following caribou herds."; lm="local_hostile_attrition = 0.15"; lc="# The vast subarctic boreal forests were extremely harsh terrain for outsiders."}
foreach ($c in @("tsatsaotine_culture","tlicho_culture","dehcho_culture","danezaa_culture","denesoline_culture","tsuutina_culture")) {
    $m[$c] = $deneDefault.Clone()
}

# Cree/Ojibwe related
foreach ($c in @("nihithaw_culture","matiyinini_culture","mahmikiwini_culture","asinikawithini_culture")) {
    $m[$c] = @{cm="global_livestock_output_modifier = 0.1"; cc="# This Cree/Algonquian people were hunters and fishermen of the northern forests and prairies."; lm="local_hostile_attrition = 0.1"; lc="# The vast boreal forests and tundra provided natural barriers against outside forces."}
}

# Nakoda (Assiniboine)
$m["nakoda_culture"] = @{cm="army_cavalry_power = 0.05"; cc="# The Nakoda (Assiniboine) were Plains warriors and bison hunters allied with the Cree."; lm="local_livestock_output_modifier = 0.1"; lc="# The northern Plains grasslands supported bison herds hunted by the Nakoda."}

# Inuit
$m["inuit_culture"] = @{cm="global_fish_output_modifier = 0.1"; cc="# The Inuit were master Arctic hunters, surviving in the harshest inhabited environment on Earth through ingenious adaptation."; lm="local_hostile_attrition = 0.15"; lc="# The Arctic tundra was the most extreme climate inhabited by humans, lethal to unprepared outsiders."}

# Lower Mississippi
foreach ($c in @("yazoo_culture","koroa_culture","tiou_culture","chitimacha_culture","bayagoula_culture","avoyel_culture","tula_culture")) {
    $m[$c] = @{cm="global_grain_output_modifier = 0.05"; cc="# This Lower Mississippi people practiced farming and fishing in the fertile river bottomlands."; lm="local_grain_output_modifier = 0.1"; lc="# The Mississippi River floodplain supported productive farming for riverside communities."}
}

# Apache/Navajo
$apacheDefault = @{cm="army_infantry_power = 0.05"; cc="# This Apache band were fierce raiders and warriors of the American Southwest, masters of guerrilla warfare."; lm="local_hostile_attrition = 0.15"; lc="# The rugged desert mountains and canyons of Apacheria were ideal terrain for Apache guerrilla tactics."}
foreach ($c in @("tinde_culture","hende_culture","naadahende_culture","lepai_nde_culture","yattinde_culture","inde_culture","tickanwatic_culture")) {
    $m[$c] = $apacheDefault.Clone()
}

Insert-CultureModifiers -SourcePath "$base\CulturalDifferencesSource\in_game\common\cultures\central_north_american.txt" `
    -OutputPath "$base\CulturalDifferencesOutput\in_game\common\cultures\central_north_american.txt" `
    -Modifiers $m

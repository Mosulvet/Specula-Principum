# Process south_east_asia.txt
$base = "c:\Users\sages\OneDrive - Microsoft\Documents\GitHub\Specula-Principum"
. "$base\CulturalDifferencesOutput\Insert-CultureModifiers.ps1"

$m = @{}

# Major civilizations
$m["khmer_culture"] = @{cm="prestige = 5"; cc="# The Khmer Empire built Angkor Wat, one of humanity's greatest architectural achievements, reflecting an advanced hydraulic civilization."; lm="local_grain_output_modifier = 0.1"; lc="# The Khmer baray irrigation systems transformed the Tonle Sap floodplain into one of Southeast Asia's most productive rice-growing regions."}
$m["vietnamese_culture"] = @{cm="army_infantry_power = 0.05"; cc="# Vietnam's long history of resistance against Chinese domination forged one of Southeast Asia's most formidable infantry traditions."; lm="local_grain_output_modifier = 0.1"; lc="# The Red River Delta was one of the most intensively cultivated rice-growing regions in all of Asia."}
$m["thai_culture"] = @{cm="prestige = 5"; cc="# The Ayutthaya Kingdom was one of the largest and most cosmopolitan cities in the world by the 15th century, a center of diplomacy and trade."; lm="local_grain_output_modifier = 0.1"; lc="# The Chao Phraya River basin supported intensive wet-rice agriculture that fed Ayutthaya's large population."}
$m["burmese_culture"] = @{cm="army_infantry_power = 0.05"; cc="# The Burmese kingdoms of Ava and later Toungoo fielded large, disciplined armies with strong infantry traditions."; lm="local_grain_output_modifier = 0.1"; lc="# The Irrawaddy River valley was Myanmar's rice bowl, supporting dense agricultural populations."}
$m["mon_culture"] = @{cm="prestige = 5"; cc="# The Mon were among the earliest civilized peoples of mainland Southeast Asia, transmitters of Theravada Buddhism and Indian culture."; lm="local_grain_output_modifier = 0.1"; lc="# The Mon homeland in lower Burma's river deltas was highly productive rice-growing country."}
$m["malay_culture"] = @{cm="trade_efficiency = 0.1"; cc="# The Malay sultanates controlled the vital Strait of Malacca, the greatest maritime chokepoint in Asian trade."; lm="local_fish_output_modifier = 0.1"; lc="# The Malay coastal waters and the Strait of Malacca supported both fishing and the lucrative spice trade."}
$m["cham_culture"] = @{cm="global_sailors_modifier = 0.1"; cc="# The Cham were accomplished seafarers and pirates whose maritime traditions dominated the South China Sea coast for centuries."; lm="local_fish_output_modifier = 0.1"; lc="# The Cham coastline of central Vietnam provided rich fishing grounds and harbors for maritime trade."}
$m["lao_culture"] = @{cm="global_grain_output_modifier = 0.05"; cc="# The Lao kingdoms cultivated sticky rice in the Mekong River valleys, the staple crop of Lao civilization."; lm="local_grain_output_modifier = 0.1"; lc="# The fertile Mekong River floodplains supported productive rice cultivation for Lao communities."}

# Thai-related
foreach ($c in @("dambro_culture","khon_muang_culture")) {
    $m[$c] = @{cm="global_grain_output_modifier = 0.05"; cc="# This Tai-speaking culture practiced wet-rice agriculture in the river valleys of mainland Southeast Asia."; lm="local_grain_output_modifier = 0.1"; lc="# The fertile river valleys of the northern Thai highlands supported productive rice agriculture."}
}

# Shan groups  
foreach ($c in @("tai_long_culture","tai_nua_culture","tai_lu_culture")) {
    $m[$c] = @{cm="army_cavalry_power = 0.05"; cc="# The Shan states fielded cavalry and war elephants, maintaining military traditions across the highlands of upper Burma."; lm="local_livestock_output_modifier = 0.1"; lc="# The Shan plateau's upland valleys supported cattle and horse herding alongside rice cultivation."}
}

# Burmese-related
$m["rakhine_culture"] = @{cm="global_sailors_modifier = 0.1"; cc="# The Rakhine (Arakan) kingdom was a maritime power on the Bay of Bengal, controlling coastal trade routes."; lm="local_fish_output_modifier = 0.1"; lc="# The Arakan coast's rich waters supported fishing and the kingdom's maritime commerce."}
$m["danu_culture"] = @{cm="global_grain_output_modifier = 0.05"; cc="# The Danu were settled agriculturalists in the Shan highlands of central Myanmar."; lm="local_grain_output_modifier = 0.1"; lc="# The Danu cultivated rice and other crops in the fertile highland valleys of Shan State."}

# Hill tribes and minorities
$hillDefault = @{cm="global_livestock_output_modifier = 0.1"; cc="# This highland people maintained a subsistence economy of swidden agriculture and animal husbandry in the mountains."; lm="local_hostile_attrition = 0.1"; lc="# The remote mountainous homeland was difficult terrain for lowland armies to penetrate and control."}
foreach ($c in @("lawa_culture","kado_culture","karen_culture","zo_culture","bahnar_culture","sedang_culture","bru_culture","kuy_culture","khmu_culture","naga_culture","meitei_culture","degar_culture")) {
    $m[$c] = $hillDefault.Clone()
}

# Override specific notable hill peoples
$m["karen_culture"] = @{cm="army_infantry_power = 0.05"; cc="# The Karen were fierce highland warriors of the Thai-Burmese borderlands, resisting lowland domination for centuries."; lm="local_hostile_attrition = 0.1"; lc="# The Karen hill country along the Thai-Burmese border was extremely rugged and difficult to pacify."}
$m["naga_culture"] = @{cm="army_infantry_power = 0.05"; cc="# The Naga were headhunting warriors of the Indo-Burmese hills, among the fiercest fighters in the region."; lm="local_hostile_attrition = 0.15"; lc="# The Naga Hills were extremely remote and densely forested, resisting all outside attempts at control."}
$m["meitei_culture"] = @{cm="army_infantry_power = 0.05"; cc="# The Meitei of Manipur were skilled warriors who maintained an independent kingdom between India and Burma."; lm="local_defensive = 0.1"; lc="# The Manipur valley was naturally defended by surrounding hills, giving the Meitei a strong defensive position."}

# Vietnamese-related
$m["muong_culture"] = @{cm="global_grain_output_modifier = 0.05"; cc="# The Muong were closely related to the Vietnamese, practicing wet-rice agriculture in the upland valleys of northern Vietnam."; lm="local_grain_output_modifier = 0.1"; lc="# The Muong homeland in northern Vietnam's highland valleys supported productive rice terraces."}

# Island/coastal minorities
$m["orang_asli_culture"] = @{cm="global_livestock_output_modifier = 0.1"; cc="# The Orang Asli were the indigenous peoples of the Malay Peninsula, living as hunter-gatherers in the interior forests."; lm="local_hostile_attrition = 0.1"; lc="# The dense tropical rainforests of the Malay interior were nearly impenetrable to outsiders."}
$m["nicobarese_culture"] = @{cm="global_fish_output_modifier = 0.1"; cc="# The Nicobarese were island-dwelling fishermen and farmers of the Nicobar Islands in the Indian Ocean."; lm="local_fish_output_modifier = 0.15"; lc="# The tropical waters around the Nicobar Islands provided abundant marine resources."}
$m["andamanese_culture"] = @{cm="global_fish_output_modifier = 0.15"; cc="# The Andamanese were among the most isolated peoples on Earth, expert coastal fishermen and hunter-gatherers."; lm="local_fish_output_modifier = 0.15"; lc="# The Andaman Islands' coral reefs and tropical waters supported rich marine ecosystems."}

Insert-CultureModifiers -SourcePath "$base\CulturalDifferencesSource\in_game\common\cultures\south_east_asia.txt" `
    -OutputPath "$base\CulturalDifferencesOutput\in_game\common\cultures\south_east_asia.txt" `
    -Modifiers $m

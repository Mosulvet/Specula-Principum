# Process peruvian.txt (75 cultures)
$base = "c:\Users\sages\OneDrive - Microsoft\Documents\GitHub\Specula-Principum"
. "$base\CulturalDifferencesOutput\Insert-CultureModifiers.ps1"

$m = @{}

# Inca/Major Andean
$m["inka_culture"] = @{cm="prestige = 5"; cc="# The Inca built the largest empire in the pre-Columbian Americas, Tawantinsuyu, stretching 4000km along the Andes with sophisticated administration."; lm="local_grain_output_modifier = 0.15"; lc="# The Inca terrace farming system transformed steep Andean slopes into highly productive agricultural land."}
$m["chimu_culture"] = @{cm="trade_efficiency = 0.1"; cc="# The Chimu Kingdom of Chan Chan was the largest adobe city in the world, controlling the north Peruvian coast through irrigation and trade."; lm="local_production_efficiency = 0.1"; lc="# The Chimu were master metalworkers and irrigators, transforming coastal desert into productive farmland."}
$m["chincha_culture"] = @{cm="trade_efficiency = 0.1"; cc="# The Chincha Kingdom controlled maritime trade along the Pacific coast, the greatest merchant seafarers of the Andes."; lm="local_fish_output_modifier = 0.1"; lc="# The Chincha coast's rich Humboldt Current waters supported both fishing and maritime trade."}
$m["kolla_culture"] = @{cm="global_livestock_output_modifier = 0.1"; cc="# The Kolla were powerful Aymara lords of the Lake Titicaca region, controlling vast llama and alpaca herds."; lm="local_livestock_output_modifier = 0.15"; lc="# The Altiplano around Lake Titicaca supported enormous herds of llamas and alpacas."}
$m["aimara_culture"] = @{cm="global_livestock_output_modifier = 0.1"; cc="# The Aymara peoples of the Altiplano were skilled herders and farmers, cultivating potatoes at extreme altitudes."; lm="local_livestock_output_modifier = 0.1"; lc="# The Altiplano supported llama and alpaca herding alongside freeze-dried potato agriculture."}
$m["killke_culture"] = @{cm="army_infantry_power = 0.05"; cc="# The Killke built Cusco and the foundations that the Inca would expand into a vast empire."; lm="local_grain_output_modifier = 0.1"; lc="# The Cusco Valley was one of the most productive highland farming regions in the Andes."}

# Andean Highland kingdoms/chiefdoms
$andeankingdom = @{cm="global_grain_output_modifier = 0.1"; cc="# This Andean highland people practiced intensive terrace agriculture and camelid herding in the mountains."; lm="local_grain_output_modifier = 0.1"; lc="# The Andean highland terraces supported productive agriculture of potatoes, quinoa, and maize."}
foreach ($c in @("chanka_culture","wanka_culture","palta_culture","kanari_culture","quitu_culture","cara_culture","puruha_culture","hambatus_culture","chimbus_culture","kayambi_culture","gatiya_pain_culture","guayacundo_culture","sacha_p_qulla_culture","tallan_culture","xllang_culture","pashash_culture","panatahuas_culture","casma_culture","canta_culture","collique_culture","ychsma_culture","yaro_culture","chancay_culture","atavillos_culture","huarco_culture","yawyu_culture","xauxa_culture","churajon_culture","chiribaya_culture","cholon_culture","anccara_culture","chillque_culture","huayla_culture","bagua_culture","pukamuru_culture","huancapampa_culture","mollo_culture","kallawaya_culture","killaka_culture","chuwi_culture")) {
    $m[$c] = $andeankingdom.Clone()
}

# Qhara Qhara and related
foreach ($c in @("qhara_qhara_culture","yampara_culture","charka_culture","chicha_culture")) {
    $m[$c] = @{cm="expand_rgo_mining_cost_modifier = -0.1"; cc="# This Andean people inhabited mineral-rich highlands of Bolivia, where silver and tin would later fuel colonial economies."; lm="local_iron_output_modifier = 0.1"; lc="# The Bolivian Altiplano contained some of the richest mineral deposits in the Americas."}
}

# Uru (Lake Titicaca reed-island people)
$m["uru_culture"] = @{cm="global_fish_output_modifier = 0.15"; cc="# The Uru were unique lake-dwelling fishermen of Lake Titicaca, building floating reed islands."; lm="local_fish_output_modifier = 0.15"; lc="# Lake Titicaca provided abundant freshwater fishing for the Uru reed-island communities."}

# Coastal peoples
foreach ($c in @("atacame_culture","manta_culture","guancavilca_culture","jama_coaque_culture","chango_culture")) {
    $m[$c] = @{cm="global_fish_output_modifier = 0.1"; cc="# This coastal people lived by fishing, maritime trade, and tropical agriculture along the Pacific coast."; lm="local_fish_output_modifier = 0.1"; lc="# The Pacific coast's Humboldt Current supported rich fishing grounds."}
}

# Amazonian peoples
$amazonian = @{cm="global_grain_output_modifier = 0.05"; cc="# This Amazonian people practiced swidden agriculture and fishing in the tropical lowland forests."; lm="local_hostile_attrition = 0.1"; lc="# The dense Amazon rainforest was extremely difficult terrain for outside military forces."}
foreach ($c in @("chono_culture","napuruna_culture","kofan_culture","tsachila_culture","yanesha_culture","kukakma_culture","nomatsigenga_culture","matsigenka_culture","ashenika_culture","uni_culture","wari_culture","yuri_culture","inga_culture")) {
    $m[$c] = $amazonian.Clone()
}
$m["shuar_culture"] = @{cm="army_infantry_power = 0.05"; cc="# The Shuar (Jivaro) were fierce headhunting warriors of the Ecuadorian Amazon, never conquered by the Inca or Spanish."; lm="local_hostile_attrition = 0.15"; lc="# The dense Amazon forests and steep eastern Andean slopes were virtually impenetrable to invaders."}

# Atacama/Southern highland
foreach ($c in @("pazioca_culture","licanantay_culture","lule_culture","tastil_culture","omaguaca_culture")) {
    $m[$c] = @{cm="global_livestock_output_modifier = 0.1"; cc="# This Atacama/Puna people herded llamas and farmed in the extreme high desert of the southern Andes."; lm="local_hostile_attrition = 0.1"; lc="# The Atacama Desert and high Puna were among the driest and most extreme environments in the Americas."}
}

Insert-CultureModifiers -SourcePath "$base\CulturalDifferencesSource\in_game\common\cultures\peruvian.txt" `
    -OutputPath "$base\CulturalDifferencesOutput\in_game\common\cultures\peruvian.txt" `
    -Modifiers $m

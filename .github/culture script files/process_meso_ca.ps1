# Process mesoamerican.txt and central_america.txt
$base = "c:\Users\sages\OneDrive - Microsoft\Documents\GitHub\Specula-Principum"
. "$base\CulturalDifferencesOutput\Insert-CultureModifiers.ps1"

# === MESOAMERICAN (49 cultures) ===
$m = @{}

# Major civilizations
$m["nahua_culture"] = @{cm="prestige = 5"; cc="# The Nahua/Aztec civilization built the Triple Alliance empire centered on Tenochtitlan, one of the world's largest cities by 1400."; lm="local_grain_output_modifier = 0.15"; lc="# The chinampa floating gardens of the Valley of Mexico were among the most productive agricultural systems ever devised."}
$m["tlaxcaltec_culture"] = @{cm="army_infantry_power = 0.1"; cc="# The Tlaxcaltec were the fiercest rivals of the Aztecs, their warrior republic never conquered despite being surrounded."; lm="local_grain_output_modifier = 0.1"; lc="# The Tlaxcala valley supported intensive agriculture despite Aztec trade blockades."}
$m["purepecha_culture"] = @{cm="army_infantry_power = 0.05"; cc="# The Purepecha (Tarascan) Empire was the only Mesoamerican state to successfully resist Aztec expansion, with superior metalworking."; lm="local_production_efficiency = 0.1"; lc="# The Purepecha were the finest metalworkers in Mesoamerica, producing copper and bronze tools and weapons."}
$m["mixtec_culture"] = @{cm="global_production_efficiency = 0.1"; cc="# The Mixtec were the finest goldsmiths and artisans in Mesoamerica, their metalwork and codices unrivaled."; lm="local_production_efficiency = 0.1"; lc="# The Mixtec highlands of Oaxaca supported artisan production that was prized across Mesoamerica."}
$m["zapotec_culture"] = @{cm="prestige = 5"; cc="# The Zapotec built Monte Alban, one of the earliest urban centers in the Americas, and maintained a sophisticated civilization for millennia."; lm="local_grain_output_modifier = 0.1"; lc="# The Valley of Oaxaca was one of Mesoamerica's most productive agricultural regions."}
$m["totonac_culture"] = @{cm="trade_efficiency = 0.05"; cc="# The Totonac controlled the fertile Veracruz coast, producing vanilla and cacao for Mesoamerican trade networks."; lm="local_grain_output_modifier = 0.1"; lc="# The Gulf Coast lowlands of Veracruz were highly productive tropical agricultural lands."}

# Yucatec/Highland Maya
$m["yucatec_culture"] = @{cm="prestige = 5"; cc="# The Yucatec Maya maintained city-states like Mayapan, heirs to the greatest intellectual tradition in the pre-Columbian Americas."; lm="local_grain_output_modifier = 0.1"; lc="# The Yucatan's limestone terrain supported milpa agriculture and the production of henequen fiber."}
$m["kiche_culture"] = @{cm="army_infantry_power = 0.05"; cc="# The K'iche' Maya built the most powerful highland Maya kingdom, ruling from Q'umarkaj with a strong military."; lm="local_grain_output_modifier = 0.1"; lc="# The Guatemalan highlands supported intensive maize agriculture in fertile volcanic soils."}
$m["kaqchikel_culture"] = @{cm="army_infantry_power = 0.05"; cc="# The Kaqchikel were powerful highland Maya warriors who rivaled the K'iche' for dominance of Guatemala."; lm="local_grain_output_modifier = 0.1"; lc="# The Kaqchikel homeland around Lake Atitlan had rich volcanic soils for agriculture."}
$m["itza_culture"] = @{cm="trade_efficiency = 0.05"; cc="# The Itza Maya maintained the independent kingdom of Nojpeten, the last unconquered Maya state."; lm="local_grain_output_modifier = 0.1"; lc="# The Peten lake district's soils supported productive Maya agriculture."}
$m["putun_culture"] = @{cm="global_sailors_modifier = 0.1"; cc="# The Putun (Chontal) Maya were the greatest maritime traders of Mesoamerica, controlling coastal canoe trade networks."; lm="local_fish_output_modifier = 0.1"; lc="# The Tabasco and Campeche coast supported both fishing and maritime trade."}

# Other Nahua/Central Mexican
$nahuaDefault = @{cm="global_grain_output_modifier = 0.1"; cc="# This Nahua-related people practiced intensive maize agriculture in the central Mexican highlands."; lm="local_grain_output_modifier = 0.1"; lc="# The central Mexican valleys supported productive maize, bean, and squash cultivation."}
foreach ($c in @("tolimec_culture","pochutec_culture","teco_culture","cuitlatec_culture","toltec_culture")) {
    $m[$c] = $nahuaDefault.Clone()
}

# Otomanguean
$m["otomanguean_culture"] = @{cm="global_grain_output_modifier = 0.1"; cc="# The Otomi were among the earliest inhabitants of central Mexico, skilled farmers and warriors."; lm="local_grain_output_modifier = 0.1"; lc="# The semi-arid central Mexican plateau supported intensive maguey and maize cultivation."}
$m["matlatzinca_culture"] = @{cm="global_grain_output_modifier = 0.1"; cc="# The Matlatzinca were Valley of Toluca farmers, conquered but not fully subjugated by the Aztecs."; lm="local_grain_output_modifier = 0.1"; lc="# The Valley of Toluca's high altitude supported productive maize farming."}

# Southern Mexican
foreach ($c in @("mephaa_culture","amuzgo_culture","popoloca_culture","ikoot_culture","zoque_culture","mixe_culture")) {
    $m[$c] = @{cm="global_grain_output_modifier = 0.05"; cc="# This southern Mexican indigenous people practiced maize agriculture in the mountains and valleys of Oaxaca and Guerrero."; lm="local_grain_output_modifier = 0.1"; lc="# The mountainous terrain of southern Mexico supported terraced and milpa agriculture."}
}

# Maya lowland/highland
$mayaDefault = @{cm="global_grain_output_modifier = 0.1"; cc="# This Maya-speaking people maintained the agricultural and cultural traditions of one of the Americas' greatest civilizations."; lm="local_grain_output_modifier = 0.1"; lc="# The Maya homeland's tropical soils supported productive maize agriculture."}
foreach ($c in @("qeqchi_culture","chorti_culture","chontal_culture","poqom_culture","mache_culture","mam_culture","kowoj_culture","mopan_culture","chol_culture","tojolabal_culture","tzutujil_culture","qanjobal_culture","tzeltal_culture","tzotzil_culture","toquegua_culture")) {
    $m[$c] = $mayaDefault.Clone()
}
$m["huastec_culture"] = @{cm="global_grain_output_modifier = 0.1"; cc="# The Huastec were a Maya-speaking people isolated in northeastern Mexico, developing a distinct cultural tradition."; lm="local_grain_output_modifier = 0.1"; lc="# The Huastec Gulf Coast lowlands supported productive tropical agriculture."}

# Northern Mexican/Chichimec
$chichimecDefault = @{cm="land_morale = 0.05"; cc="# This Chichimec people of northern Mexico were semi-nomadic hunter-warriors, fierce and difficult to subjugate."; lm="local_hostile_attrition = 0.1"; lc="# The arid northern Mexican deserts and mountains were harsh terrain that resisted outside control."}
foreach ($c in @("pame_culture","tonala_culture","tepecan_culture","caxcan_culture","zacatecah_culture","guamar_culture","guachichil_culture","sauzas_culture","iztachichimecah_culture")) {
    $m[$c] = $chichimecDefault.Clone()
}

Insert-CultureModifiers -SourcePath "$base\CulturalDifferencesSource\in_game\common\cultures\mesoamerican.txt" `
    -OutputPath "$base\CulturalDifferencesOutput\in_game\common\cultures\mesoamerican.txt" `
    -Modifiers $m

# === CENTRAL AMERICA (26 cultures) ===
$m = @{}

$m["pipil_culture"] = @{cm="global_grain_output_modifier = 0.1"; cc="# The Pipil were Nahua-speaking people of El Salvador, maintaining Mesoamerican agricultural traditions."; lm="local_grain_output_modifier = 0.1"; lc="# The Pipil homeland's volcanic soils in El Salvador supported productive maize and cacao cultivation."}
$m["nicarao_culture"] = @{cm="trade_efficiency = 0.05"; cc="# The Nicarao were Nahua-speaking traders and farmers who gave Nicaragua its name, controlling lake-region trade."; lm="local_grain_output_modifier = 0.1"; lc="# The fertile shores of Lake Nicaragua supported productive farming for the Nicarao."}
$m["chorotega_culture"] = @{cm="global_grain_output_modifier = 0.1"; cc="# The Chorotega were Oto-Manguean people who brought Mesoamerican agriculture and pottery to Central America."; lm="local_grain_output_modifier = 0.1"; lc="# The Chorotega homeland in northwestern Costa Rica and Nicaragua supported maize farming."}
$m["lenca_culture"] = @{cm="global_grain_output_modifier = 0.1"; cc="# The Lenca were the largest indigenous group of Honduras, skilled maize farmers with sophisticated polities."; lm="local_grain_output_modifier = 0.1"; lc="# The Lenca highland valleys of Honduras supported productive maize and bean agriculture."}
$m["miskito_culture"] = @{cm="global_fish_output_modifier = 0.1"; cc="# The Miskito were coastal fishermen and warriors of the Mosquito Coast, building a powerful confederation."; lm="local_fish_output_modifier = 0.1"; lc="# The Mosquito Coast's extensive lagoons and Caribbean waters provided rich fishing."}

# Isthmus peoples
$isthmusDefault = @{cm="global_grain_output_modifier = 0.05"; cc="# This Central American people practiced tropical agriculture, growing maize, root crops, and tree fruits."; lm="local_hostile_attrition = 0.1"; lc="# The dense tropical forests and mountains of Central America were difficult terrain for outsiders."}
foreach ($c in @("cueva_culture","guna_culture","huetar_culture","tises_culture","katapas_culture","botos_culture","rama_culture","ulwas_culture","kukra_culture","mayangna_culture","pech_culture","matagalpa_culture","maleku_culture","ngabe_culture","naso_culture","cabecar_culture","boruca_culture","tolupan_culture")) {
    $m[$c] = $isthmusDefault.Clone()
}
# Overrides
$m["guna_culture"] = @{cm="global_sailors_modifier = 0.1"; cc="# The Guna (Kuna) were skilled maritime people of the San Blas Islands and Darien coast, expert canoe navigators."; lm="local_fish_output_modifier = 0.1"; lc="# The San Blas Archipelago provided abundant fishing and maritime resources for the Guna."}

# Mesoamerican-influenced
foreach ($c in @("chiapanec_culture","tapachultec_culture","xinka_culture")) {
    $m[$c] = @{cm="global_grain_output_modifier = 0.1"; cc="# This Mesoamerican-influenced people practiced intensive maize agriculture."; lm="local_grain_output_modifier = 0.1"; lc="# The fertile Pacific lowlands and highland valleys supported productive agriculture."}
}

Insert-CultureModifiers -SourcePath "$base\CulturalDifferencesSource\in_game\common\cultures\central_america.txt" `
    -OutputPath "$base\CulturalDifferencesOutput\in_game\common\cultures\central_america.txt" `
    -Modifiers $m

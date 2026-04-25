# Fix central_america, alaska, aridoamerican
$base = "c:\Users\sages\OneDrive - Microsoft\Documents\GitHub\Specula-Principum"
$outDir = "$base\CulturalDifferencesOutput\in_game\common\cultures"
. "$base\CulturalDifferencesOutput\Replace-CultureModifier.ps1"

# ========== CENTRAL_AMERICA (CM: global_grain 23/26=88%, LM: local_hostile 17/26=65%) ==========
Write-Host "--- central_america.txt ---"
$cmFix = @{}
$cmFix["cueva_culture"] = @{comment="# The Cueva controlled the Panama isthmus, a natural corridor connecting Atlantic and Pacific trade networks."; modifier="trade_efficiency = 0.1"}
$cmFix["rama_culture"] = @{comment="# The Rama were river and coastal people of southeastern Nicaragua, expert fishers and canoe builders."; modifier="global_fish_output_modifier = 0.1"}
$cmFix["kukra_culture"] = @{comment="# The Kukra inhabited the Caribbean Mosquito Coast, subsisting primarily on coastal and river fishing."; modifier="global_fish_output_modifier = 0.1"}
$cmFix["chorotega_culture"] = @{comment="# The Chorotega ran sophisticated cacao-based market economies in northwestern Costa Rica and Nicaragua."; modifier="trade_efficiency = 0.1"}
$cmFix["chiapanec_culture"] = @{comment="# The Chiapanec were fierce warriors who resisted both Aztec and Spanish expansion from their Chiapas strongholds."; modifier="army_infantry_power = 0.05"}
$cmFix["mayangna_culture"] = @{comment="# The Mayangna (Sumo) were formidable rainforest warriors of the Nicaraguan interior highlands."; modifier="land_morale = 0.05"}
$cmFix["pech_culture"] = @{comment="# The Pech were resilient mountain people of northeastern Honduras, renowned for their endurance and resistance."; modifier="land_morale = 0.05"}
$cmFix["tolupan_culture"] = @{comment="# The Tolupan (Jicaque) were highland warriors of northern Honduras who fiercely resisted outside incursion."; modifier="land_morale = 0.05"}
$cmFix["ngabe_culture"] = @{comment="# The Ngabe were highland people of western Panama, maintaining strong warrior traditions in mountain terrain."; modifier="land_morale = 0.05"}
$cmFix["naso_culture"] = @{comment="# The Naso (Teribe) lived along the Teribe River in Bocas del Toro, expert river fishers and canoe navigators."; modifier="global_fish_output_modifier = 0.1"}
$cmFix["boruca_culture"] = @{comment="# The Boruca were skilled warriors of southern Costa Rica known for their fierce resistance to Spanish colonization."; modifier="army_infantry_power = 0.05"}
Replace-CultureModifier -FilePath "$outDir\central_america.txt" -BlockType "country_modifier" -Replacements $cmFix

$lmFix = @{}
$lmFix["cueva_culture"] = @{comment="# The Panama isthmus was a natural trade corridor linking Caribbean and Pacific commerce routes."; modifier="local_trade_output_modifier = 0.1"}
$lmFix["chorotega_culture"] = @{comment="# The Nicoya Peninsula and Pacific lowlands supported active cacao trade markets and exchange networks."; modifier="local_trade_output_modifier = 0.1"}
$lmFix["kukra_culture"] = @{comment="# The Caribbean Mosquito Coast provided rich coastal and estuary fishing resources."; modifier="local_fish_output_modifier = 0.1"}
$lmFix["rama_culture"] = @{comment="# The Rama territory along Nicaragua's rivers and Caribbean coast supported productive fishing."; modifier="local_fish_output_modifier = 0.1"}
$lmFix["naso_culture"] = @{comment="# The Teribe River basin in Bocas del Toro provided abundant freshwater fishing."; modifier="local_fish_output_modifier = 0.1"}
Replace-CultureModifier -FilePath "$outDir\central_america.txt" -BlockType "location_modifier" -Replacements $lmFix

# ========== ALASKA (CM: global_fish 25/41=61%, LM: local_hostile 35/41=85%) ==========
Write-Host "--- alaska.txt ---"
$cmFix = @{}
$cmFix["inupiaq_culture"] = @{comment="# The Inupiat were among the greatest Arctic survivalists, enduring extreme conditions through communal resilience."; modifier="land_morale = 0.05"}
$cmFix["inuinnait_culture"] = @{comment="# The Copper Inuit were legendary Arctic survivors, crafting tools from native copper deposits."; modifier="expand_rgo_mining_cost_modifier = -0.1"}
$cmFix["kaviag_culture"] = @{comment="# The Kaviagmiut (King Island Inuit) were expert coastal navigators and walrus hunters of the Bering Strait."; modifier="global_sailors_modifier = 0.1"}
$cmFix["dakelh_culture"] = @{comment="# The Dakelh (Carrier) people were central to interior British Columbia's fur trade networks."; modifier="trade_efficiency = 0.05"}
$cmFix["dunezza_culture"] = @{comment="# The Dane-zaa (Beaver) people managed vast hunting territories through sophisticated stewardship practices."; modifier="stability_cost_modifier = -0.05"}
Replace-CultureModifier -FilePath "$outDir\alaska.txt" -BlockType "country_modifier" -Replacements $cmFix

$lmFix = @{}
# Coastal Yupik/Inuit - change to fish (they were fishers, not just attrition)
foreach ($c in @("malemiut_culture","magemiut_culture","kuskokwag_culture","nushag_culture","togiag_culture","nunivag_culture","ogul_culture","unalig_culture")) {
    $lmFix[$c] = @{comment="# Rich salmon runs and marine resources along the western Alaska coast sustained large seasonal fishing camps."; modifier="local_fish_output_modifier = 0.1"}
}
$lmFix["kaviag_culture"] = @{comment="# King Island's waters provided walrus, seal, and fish that sustained expert maritime hunters."; modifier="local_fish_output_modifier = 0.15"}
# Interior peoples - diversify from hostile_attrition
$lmFix["dakelh_culture"] = @{comment="# The Dakelh territory's river systems (Fraser, Nechako) provided productive salmon fishing."; modifier="local_fish_output_modifier = 0.1"}
$lmFix["dunezza_culture"] = @{comment="# The Peace River region provided seasonal fishing alongside extensive hunting grounds."; modifier="local_fish_output_modifier = 0.1"}
$lmFix["wetsuweten_culture"] = @{comment="# The Bulkley and Morice rivers provided legendary salmon runs for the Wet'suwet'en."; modifier="local_fish_output_modifier = 0.15"}
$lmFix["sekani_culture"] = @{comment="# The Sekani's Rocky Mountain terrain provided natural defensive positions along mountain passes."; modifier="local_defensive = 0.1"}
$lmFix["inupiaq_culture"] = @{comment="# The North Slope's vast treeless tundra was naturally defensive terrain, impossible for outsiders to traverse."; modifier="local_defensive = 0.15"}
$lmFix["inuinnait_culture"] = @{comment="# The Copper Inuit territory contained native copper deposits that were traded across the Arctic."; modifier="local_iron_output_modifier = 0.1"}
Replace-CultureModifier -FilePath "$outDir\alaska.txt" -BlockType "location_modifier" -Replacements $lmFix

# ========== ARIDOAMERICAN (CM: global_grain 26/46=57%, LM: local_hostile 26/46=57%) ==========
Write-Host "--- aridoamerican.txt ---"
$cmFix = @{}
$cmFix["guarijio_culture"] = @{comment="# The Guarijio (Warihio) were mountain warriors of the Sierra Madre, renowned for their fierce independence."; modifier="land_morale = 0.05"}
$cmFix["guasave_culture"] = @{comment="# The Guasave inhabited the Sinaloa coast, combining fishing with riverine agriculture."; modifier="global_fish_output_modifier = 0.1"}
$cmFix["totorame_culture"] = @{comment="# The Totorame were a coastal Nayarit people who combined Pacific fishing with agriculture."; modifier="global_fish_output_modifier = 0.1"}
$cmFix["tahue_culture"] = @{comment="# The Tahue of lowland Sinaloa participated in regional exchange networks linking coast and highland peoples."; modifier="trade_efficiency = 0.05"}
Replace-CultureModifier -FilePath "$outDir\aridoamerican.txt" -BlockType "country_modifier" -Replacements $cmFix

$lmFix = @{}
$lmFix["guarijio_culture"] = @{comment="# The Sierra Madre canyons provided the Guarijio with naturally defensive mountain terrain."; modifier="local_defensive = 0.1"}
$lmFix["guasave_culture"] = @{comment="# The Sinaloa coast and river estuaries provided productive fishing and shellfish gathering."; modifier="local_fish_output_modifier = 0.1"}
$lmFix["totorame_culture"] = @{comment="# The Pacific coast of Nayarit provided rich marine fishing and shellfish resources."; modifier="local_fish_output_modifier = 0.1"}
$lmFix["tahue_culture"] = @{comment="# The lowland Sinaloa river valleys served as natural exchange corridors between coast and highland peoples."; modifier="local_trade_output_modifier = 0.1"}
Replace-CultureModifier -FilePath "$outDir\aridoamerican.txt" -BlockType "location_modifier" -Replacements $lmFix

Write-Host "`nBatch 2 complete."

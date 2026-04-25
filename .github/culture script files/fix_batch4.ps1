# Fix batch 4: brasilian, eastcoast, argentinian, southamerican
$base = "c:\Users\sages\OneDrive - Microsoft\Documents\GitHub\Specula-Principum"
$outDir = "$base\CulturalDifferencesOutput\in_game\common\cultures"
. "$base\CulturalDifferencesOutput\Replace-CultureModifier.ps1"

# ========== BRASILIAN (CM: global_grain 68/88=77%, LM: local_hostile 69/88=78%) ==========
Write-Host "--- brasilian.txt ---"
$cmFix = @{}
# River/coastal fishing peoples
foreach ($c in @("kambeba_culture","miranha_culture","mura_culture","bare_culture","arua_culture","satere_mawe_culture","kaapor_culture","zoe_culture")) {
    $cmFix[$c] = @{comment="# This Amazonian people combined river fishing with forest foraging along the great river systems of Brazil."; modifier="global_fish_output_modifier = 0.1"}
}
foreach ($c in @("tremembe_culture","guaitaka_culture","catagua_culture")) {
    $cmFix[$c] = @{comment="# This Atlantic coast people were expert fishers and shellfish gatherers along the Brazilian seaboard."; modifier="global_fish_output_modifier = 0.1"}
}
# Warrior peoples
foreach ($c in @("ikpeng_culture","paiter_culture","rikbaktsa_culture","kagwahiva_culture")) {
    $cmFix[$c] = @{comment="# This Amazonian people were renowned warriors who aggressively defended their forest territories."; modifier="army_infantry_power = 0.05"}
}
foreach ($c in @("awaete_culture","apyawa_culture","nambikwara_culture")) {
    $cmFix[$c] = @{comment="# This Brazilian people maintained fierce warrior traditions and strong territorial defense in the interior."; modifier="land_morale = 0.05"}
}
# Traders
$cmFix["terena_culture"] = @{comment="# The Terena were skilled diplomats and traders who maintained exchange networks across the southern Pantanal."; modifier="trade_efficiency = 0.05"}
$cmFix["haliti_culture"] = @{comment="# The Haliti (Paresí) participated in extensive trade networks linking Amazon, Pantanal, and Chaco peoples."; modifier="trade_efficiency = 0.05"}
$cmFix["tenetehara_culture"] = @{comment="# The Tenetehara (Guajajara) maintained trade connections between eastern Amazon and Maranhão coast peoples."; modifier="trade_efficiency = 0.05"}
# Stable communities
$cmFix["enawene_nawe_culture"] = @{comment="# The Enawenê-Nawê maintained remarkable social cohesion through elaborate ritual cycles and fish-dam ceremonies."; modifier="stability_cost_modifier = -0.05"}
$cmFix["waiwai_culture"] = @{comment="# The Waiwai had sophisticated social organization, uniting scattered communities through elaborate trading festivals."; modifier="stability_cost_modifier = -0.05"}
# Mining
$cmFix["kura_culture"] = @{comment="# The Kura-Bakairi had knowledge of mineral resources in the Mato Grosso cerrado uplands."; modifier="expand_rgo_mining_cost_modifier = -0.1"}
$cmFix["djeoromitxi_culture"] = @{comment="# The Djeoromitxí (Jabutí) processed mineral and stone resources in the Rondônia uplands."; modifier="expand_rgo_mining_cost_modifier = -0.1"}
Replace-CultureModifier -FilePath "$outDir\brasilian.txt" -BlockType "country_modifier" -Replacements $cmFix

$lmFix = @{}
# River fishers → local_fish
foreach ($c in @("kambeba_culture","miranha_culture","kinja_culture","bare_culture","mura_culture","arua_culture","satere_mawe_culture","kaapor_culture","zoe_culture","txapakura_culture")) {
    $lmFix[$c] = @{comment="# The great Amazonian river systems provided productive fishing and aquatic resource gathering."; modifier="local_fish_output_modifier = 0.1"}
}
# Coastal → local_fish
foreach ($c in @("tremembe_culture","guaitaka_culture","catagua_culture","kaete_culture")) {
    $lmFix[$c] = @{comment="# The Brazilian Atlantic coast provided productive fishing and shellfish gathering."; modifier="local_fish_output_modifier = 0.1"}
}
# Forest warriors → local_defensive
foreach ($c in @("ikpeng_culture","kagwahiva_culture","rikbaktsa_culture","awaete_culture","paiter_culture","apyawa_culture","waiwai_culture")) {
    $lmFix[$c] = @{comment="# The dense Amazonian rainforest provided natural defensive cover for indigenous warriors."; modifier="local_defensive = 0.1"}
}
# Agricultural communities → local_grain
foreach ($c in @("terena_culture","haliti_culture","tenetehara_culture","enawene_nawe_culture","nambikwara_culture")) {
    $lmFix[$c] = @{comment="# The cultivated garden clearings and managed forest provided agricultural food production."; modifier="local_grain_output_modifier = 0.1"}
}
Replace-CultureModifier -FilePath "$outDir\brasilian.txt" -BlockType "location_modifier" -Replacements $lmFix

# ========== EASTCOAST (CM: global_grain 69/109=63%, LM: local_grain 86/109=79%) ==========
Write-Host "--- eastcoast.txt ---"
$cmFix = @{}
# Coastal fishing peoples
foreach ($c in @("pamlico_culture","guale_culture","yamasee_culture","cusabo_culture","timucua_culture","croatan_culture","accomac_culture","mobile_culture","chatot_culture")) {
    $cmFix[$c] = @{comment="# This coastal people combined fishing, shellfish gathering, and farming in the tidewater lowlands."; modifier="global_fish_output_modifier = 0.1"}
}
# Warriors
$cmFix["chickasaw_culture"] = @{comment="# The Chickasaw were among the most feared warriors in the Southeast, never conquered by European colonial powers."; modifier="army_infantry_power = 0.1"}
$cmFix["natchez_culture"] = @{comment="# The Natchez maintained a complex chiefdom with the Great Sun as paramount leader, a unique hierarchical society."; modifier="prestige = 5"}
# Mound builder prestige
$cmFix["kahokiaki_culture"] = @{comment="# The Cahokia cultural tradition built the largest pre-Columbian settlement north of Mexico, a major urban center."; modifier="prestige = 5"}
# Traders
$cmFix["choctaw_culture"] = @{comment="# The Choctaw were skilled diplomats and traders who maintained extensive exchange networks across the Southeast."; modifier="trade_efficiency = 0.1"}
$cmFix["tunica_culture"] = @{comment="# The Tunica controlled the salt trade along the lower Mississippi, a crucial commodity in the Southeast."; modifier="trade_efficiency = 0.1"}
$cmFix["acolapissa_culture"] = @{comment="# The Acolapissa were Lower Mississippi traders who facilitated exchange between Gulf Coast and interior peoples."; modifier="trade_efficiency = 0.05"}
Replace-CultureModifier -FilePath "$outDir\eastcoast.txt" -BlockType "country_modifier" -Replacements $cmFix

$lmFix = @{}
# Coastal → local_fish
foreach ($c in @("powhatan_culture","pamlico_culture","guale_culture","yamasee_culture","cusabo_culture","timucua_culture","croatan_culture","accomac_culture","nansemond_culture","rappahannock_culture")) {
    $lmFix[$c] = @{comment="# The tidewater coast provided productive fishing, shellfish gathering, and marine resources."; modifier="local_fish_output_modifier = 0.1"}
}
# Warriors/defensive terrain
foreach ($c in @("chickasaw_culture","natchez_culture","monacan_culture","tutelo_culture","catawba_culture","moneton_culture","waccamaw_culture")) {
    $lmFix[$c] = @{comment="# The defensive terrain of hills and river bluffs provided natural fortification positions."; modifier="local_defensive = 0.1"}
}
# Trading centers
foreach ($c in @("choctaw_culture","tunica_culture","mobile_culture","chatot_culture","acolapissa_culture")) {
    $lmFix[$c] = @{comment="# The Mississippi and Gulf Coast trade corridors facilitated extensive exchange of salt, shells, copper, and food."; modifier="local_trade_output_modifier = 0.1"}
}
# Great Lakes fishing
foreach ($c in @("kahokiaki_culture","cahokia_culture","kaskankaham_culture","hocak_culture","baxoje_culture")) {
    $lmFix[$c] = @{comment="# The Great Lakes and upper Mississippi waterways provided productive freshwater fishing."; modifier="local_fish_output_modifier = 0.1"}
}
# Plains bison peoples → livestock
foreach ($c in @("kansa_culture","osage_culture","quapaw_culture","omaha_culture","ponca_culture")) {
    $lmFix[$c] = @{comment="# The Great Plains bison herds provided the primary food resource for these Siouan peoples."; modifier="local_livestock_output_modifier = 0.15"}
}
Replace-CultureModifier -FilePath "$outDir\eastcoast.txt" -BlockType "location_modifier" -Replacements $lmFix

# ========== ARGENTINIAN (LM: local_hostile 41/52=79%) ==========
Write-Host "--- argentinian.txt ---"
$lmFix = @{}
# Marine fishers
$lmFix["yaghan_culture"] = @{comment="# The Yámana were expert canoe-borne marine hunters and fishers in the Beagle Channel and surrounding waters."; modifier="local_fish_output_modifier = 0.15"}
$lmFix["kawesqar_culture"] = @{comment="# The Kawésqar were marine nomads of the western Patagonian channels, living primarily from shellfish and fish."; modifier="local_fish_output_modifier = 0.15"}
# Freshwater/floodplain fishers
foreach ($c in @("baure_culture","itonama_culture","cayubaba_culture","movima_culture")) {
    $lmFix[$c] = @{comment="# The Moxos floodplain and river systems of eastern Bolivia provided productive freshwater fishing."; modifier="local_fish_output_modifier = 0.1"}
}
# Agricultural peoples
$lmFix["williche_culture"] = @{comment="# The Huilliche cultivated potatoes and grains in the fertile valleys of southern Chile."; modifier="local_grain_output_modifier = 0.1"}
$lmFix["pikumche_culture"] = @{comment="# The Picunche farmed the fertile central Chilean valleys, growing maize, squash, and potatoes."; modifier="local_grain_output_modifier = 0.1"}
$lmFix["guana_culture"] = @{comment="# The Guana were skilled agriculturalists of the Chaco, growing crops for both themselves and the Mbayá elite."; modifier="local_grain_output_modifier = 0.1"}
$lmFix["enlhet_culture"] = @{comment="# The Enlhet cultivated garden plots in the Chaco alongside hunting and gathering."; modifier="local_grain_output_modifier = 0.1"}
$lmFix["enxet_culture"] = @{comment="# The Enxet practiced seasonal agriculture in the central Paraguayan Chaco."; modifier="local_grain_output_modifier = 0.1"}
$lmFix["het_culture"] = @{comment="# The Het (Querandí-related) lived on the fertile Pampas with seasonal cultivation."; modifier="local_grain_output_modifier = 0.1"}
# Defensive warriors
$lmFix["mapuche_culture"] = @{comment="# The Mapuche built fortified pukaras and used the Araucanian forests as natural defensive terrain against Inca and Spanish."; modifier="local_defensive = 0.15"}
$lmFix["selknam_culture"] = @{comment="# The Selk'nam defended their Tierra del Fuego hunting grounds against all outsiders."; modifier="local_defensive = 0.1"}
$lmFix["aonikenk_culture"] = @{comment="# The vast windswept Patagonian steppe was naturally defensive territory that outsiders struggled to traverse."; modifier="local_defensive = 0.1"}
$lmFix["quirandi_culture"] = @{comment="# The Querandí controlled the Pampas grasslands with mobile guerrilla warfare tactics."; modifier="local_defensive = 0.1"}
Replace-CultureModifier -FilePath "$outDir\argentinian.txt" -BlockType "location_modifier" -Replacements $lmFix

# ========== SOUTHAMERICAN (CM: global_grain 41/49=84%, LM: local_hostile 29/49=59%) ==========
Write-Host "--- southamerican.txt ---"
$cmFix = @{}
# Coastal/river fishing
foreach ($c in @("waunana_culture","sinu_culture","malibu_culture","tumaco_culture","chaima_culture","enepas_culture")) {
    $cmFix[$c] = @{comment="# This coastal/riverine people combined fishing with agriculture along Colombia/Venezuela's waterways."; modifier="global_fish_output_modifier = 0.1"}
}
# Warriors
foreach ($c in @("pijao_culture","panche_culture","muzo_culture","yukpa_culture","guahibo_culture")) {
    $cmFix[$c] = @{comment="# This people were renowned warriors who fiercely resisted Spanish colonial expansion in Colombia/Venezuela."; modifier="army_infantry_power = 0.05"}
}
# Traders
foreach ($c in @("caquetio_culture","tahami_culture","nutabe_culture","barbakoan_culture")) {
    $cmFix[$c] = @{comment="# This people participated in extensive trade networks exchanging gold, salt, emeralds, and textiles."; modifier="trade_efficiency = 0.05"}
}
# Others
$cmFix["pemon_culture"] = @{comment="# The Pemon maintained stable communities across the Gran Sabana tepui highlands with strong social cohesion."; modifier="stability_cost_modifier = -0.05"}
$cmFix["guayupe_culture"] = @{comment="# The Guayupe were llanos warriors, adapted to the vast Venezuelan-Colombian plains."; modifier="land_morale = 0.05"}
Replace-CultureModifier -FilePath "$outDir\southamerican.txt" -BlockType "country_modifier" -Replacements $cmFix

$lmFix = @{}
foreach ($c in @("waunana_culture","sinu_culture","tumaco_culture","malibu_culture","chaima_culture")) {
    $lmFix[$c] = @{comment="# The river systems and coastal waters provided productive fishing and marine resources."; modifier="local_fish_output_modifier = 0.1"}
}
Replace-CultureModifier -FilePath "$outDir\southamerican.txt" -BlockType "location_modifier" -Replacements $lmFix

Write-Host "`nBatch 4 complete."

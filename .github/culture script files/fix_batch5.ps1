# Fix batch 5: peruvian, australian, papuan
$base = "c:\Users\sages\OneDrive - Microsoft\Documents\GitHub\Specula-Principum"
$outDir = "$base\CulturalDifferencesOutput\in_game\common\cultures"
. "$base\CulturalDifferencesOutput\Replace-CultureModifier.ps1"

# ========== PERUVIAN (CM: global_grain 53/75=71%, LM: local_grain 42/75=56%) ==========
Write-Host "--- peruvian.txt ---"
$cmFix = @{}
# Coastal fishing peoples
foreach ($c in @("tallan_culture","casma_culture","collique_culture","ychsma_culture","chancay_culture","huarco_culture")) {
    $cmFix[$c] = @{comment="# This coastal Peruvian people combined Pacific fishing with irrigated valley agriculture."; modifier="global_fish_output_modifier = 0.1"}
}
# Amazon river fishers
$cmFix["kukakma_culture"] = @{comment="# The Kukama-Kukamiria were expert river fishers and canoe navigators of the Amazon waterways."; modifier="global_fish_output_modifier = 0.1"}
$cmFix["napuruna_culture"] = @{comment="# The Napo Runa combined Amazonian river fishing with forest gathering along the Napo River."; modifier="global_fish_output_modifier = 0.1"}
# Warriors
$cmFix["chanka_culture"] = @{comment="# The Chanka were fierce warriors who nearly conquered the Inca Empire before their defeat at the Battle of Yahuarpampa."; modifier="army_infantry_power = 0.1"}
$cmFix["wanka_culture"] = @{comment="# The Wanka were powerful highland warriors of the Mantaro Valley who later allied with Spain against the Inca."; modifier="army_infantry_power = 0.05"}
# Traders
foreach ($c in @("kofan_culture","yanesha_culture","yuri_culture")) {
    $cmFix[$c] = @{comment="# This Amazonian people maintained trade connections between the Andean highlands and the lowland forest."; modifier="trade_efficiency = 0.05"}
}
# Mining
$cmFix["pashash_culture"] = @{comment="# The Huamachuco region (Pashash) was rich in mineral deposits exploited for metalworking and trade."; modifier="expand_rgo_mining_cost_modifier = -0.1"}
# Others
$cmFix["matsigenka_culture"] = @{comment="# The Matsigenka were resilient Amazonian people, expert survivors of the dense montane cloud forest."; modifier="land_morale = 0.05"}
$cmFix["ashenika_culture"] = @{comment="# The Ashéninka maintained stable forest communities with sophisticated social organization across a vast territory."; modifier="stability_cost_modifier = -0.05"}
Replace-CultureModifier -FilePath "$outDir\peruvian.txt" -BlockType "country_modifier" -Replacements $cmFix

$lmFix = @{}
foreach ($c in @("tallan_culture","casma_culture","collique_culture","chancay_culture")) {
    $lmFix[$c] = @{comment="# The Pacific coast of Peru provided productive fishing from the cold, nutrient-rich Humboldt Current."; modifier="local_fish_output_modifier = 0.15"}
}
$lmFix["ychsma_culture"] = @{comment="# Pachacamac was a major pilgrimage and trade center, drawing visitors and goods from across the Andes."; modifier="local_trade_output_modifier = 0.15"}
Replace-CultureModifier -FilePath "$outDir\peruvian.txt" -BlockType "location_modifier" -Replacements $lmFix

# ========== AUSTRALIAN (CM: global_fish 108/187=58%, LM: local_hostile 108/187=58%) ==========
Write-Host "--- australian.txt ---"
$cmFix = @{}
# Gulf Country interior peoples (more hunter-gatherers than fishers)
foreach ($c in @("gangglida_culture","mingin_culture","kukatj_culture","kuthant_culture","kurtjar_culture")) {
    $cmFix[$c] = @{comment="# This Gulf Country Aboriginal people were expert hunters and gatherers of the seasonally-flooded inland plains."; modifier="land_morale = 0.05"}
}
# Cape York interior
foreach ($c in @("anguthimri_culture","anggamudi_culture","mutumui_culture")) {
    $cmFix[$c] = @{comment="# This Cape York Aboriginal people maintained sophisticated land management through fire-stick farming."; modifier="land_morale = 0.05"}
}
# NE Queensland rainforest peoples (more forest-dwelling than fishing)
$cmFix["djabuganjdji_culture"] = @{comment="# The Djabugay were rainforest people of the Atherton Tablelands, with sophisticated forest management knowledge."; modifier="stability_cost_modifier = -0.05"}
$cmFix["djirbalngan_culture"] = @{comment="# The Dyirbal rainforest people developed one of the most complex language systems of any Aboriginal culture."; modifier="stability_cost_modifier = -0.05"}
$cmFix["wargamaygan_culture"] = @{comment="# The Wargamay were rainforest people who managed their tropical forest territories through controlled burning."; modifier="land_morale = 0.05"}
# Victorian riverine peoples (more land-based economy)
$cmFix["boon_wurrung_culture"] = @{comment="# The Boonwurrung managed their coastal and wetland territories through sophisticated fire-stick burning practices."; modifier="land_morale = 0.05"}
$cmFix["gulidjan_culture"] = @{comment="# The Gulidjan of western Victoria's lakes district managed their territories through careful land stewardship."; modifier="land_morale = 0.05"}
$cmFix["ngurraiillam_culture"] = @{comment="# The Ngurai-Illam Wurrung participated in trade networks exchanging greenstone axes and other goods."; modifier="trade_efficiency = 0.05"}
$cmFix["yorta_yorta_culture"] = @{comment="# The Yorta Yorta of the Murray-Goulburn confluence were part of major inter-tribal trade and ceremonial networks."; modifier="trade_efficiency = 0.05"}
Replace-CultureModifier -FilePath "$outDir\australian.txt" -BlockType "country_modifier" -Replacements $cmFix

$lmFix = @{}
# NW coastal people that also had land-based resources
$lmFix["nhanta_culture"] = @{comment="# The Nhanta territory along the WA coast provided marine resources and shellfish gathering."; modifier="local_fish_output_modifier = 0.1"}
$lmFix["thalanyji_culture"] = @{comment="# The Thalanyji coast near Onslow provided tidal fishing and shellfish gathering."; modifier="local_fish_output_modifier = 0.1"}
$lmFix["baiyungu_culture"] = @{comment="# Shark Bay (Baiyungu territory) was one of Australia's richest marine environments for fishing and shellfish."; modifier="local_fish_output_modifier = 0.15"}
# Gulf peoples
$lmFix["gangglida_culture"] = @{comment="# The southern Gulf Country's flood plains provided seasonal fish traps and aquatic resources."; modifier="local_fish_output_modifier = 0.1"}
$lmFix["mingin_culture"] = @{comment="# The Gulf Country river systems provided seasonal fishing alongside hunting on the inland plains."; modifier="local_fish_output_modifier = 0.1"}
# Cape York
foreach ($c in @("anguthimri_culture","anggamudi_culture","yadhaigana_culture")) {
    $lmFix[$c] = @{comment="# The Cape York peninsula's tropical forests and monsoon woodlands provided natural defensive cover."; modifier="local_defensive = 0.1"}
}
# Central QLD
$lmFix["guwinmal_culture"] = @{comment="# The Guwinmal territory's hills and ranges provided natural defensive terrain."; modifier="local_defensive = 0.1"}
$lmFix["darumbal_culture"] = @{comment="# The Darumbal coast near Rockhampton provided productive fishing and shellfish."; modifier="local_fish_output_modifier = 0.1"}
# Kimberley interior
$lmFix["jaminjung_culture"] = @{comment="# The Jaminjung territory's river systems and gorges provided natural defensive positions."; modifier="local_defensive = 0.1"}
$lmFix["kija_culture"] = @{comment="# The Kija territory in the East Kimberley included the Bungle Bungles and provided defensive rocky terrain."; modifier="local_defensive = 0.1"}
# NW coast
$lmFix["nhuwala_culture"] = @{comment="# The Pilbara coast provided productive tidal fishing and shellfish gathering for the Nhuwala."; modifier="local_fish_output_modifier = 0.1"}
$lmFix["martuthunira_culture"] = @{comment="# The Fortescue River gorges provided the Martuthunira with naturally defensive rocky terrain."; modifier="local_defensive = 0.1"}
Replace-CultureModifier -FilePath "$outDir\australian.txt" -BlockType "location_modifier" -Replacements $lmFix

# ========== PAPUAN (CM: global_grain 70/135=52%, LM: local_hostile 76/135=56%) ==========
Write-Host "--- papuan.txt ---"
$cmFix = @{}
$cmFix["kuot_culture"] = @{comment="# The Kuot of New Ireland were warriors who defended their island territories against neighboring groups."; modifier="army_infantry_power = 0.05"}
$cmFix["baining_culture"] = @{comment="# The Baining maintained remarkable cultural cohesion through their elaborate fire dance ceremonies and rituals."; modifier="stability_cost_modifier = -0.05"}
$cmFix["orokaiva_culture"] = @{comment="# The Orokaiva were fierce warriors of the Northern Province, renowned for their fighting prowess."; modifier="army_infantry_power = 0.1"}
Replace-CultureModifier -FilePath "$outDir\papuan.txt" -BlockType "country_modifier" -Replacements $cmFix

$lmFix = @{}
# Defensive terrain peoples
foreach ($c in @("kuot_culture","baining_culture","orokaiva_culture","binandere_culture","koiali_culture")) {
    $lmFix[$c] = @{comment="# The rugged terrain of mountains, gorges, and dense jungle provided natural defensive positions."; modifier="local_defensive = 0.1"}
}
# Agricultural highland peoples
foreach ($c in @("waima_culture","hamtai_culture","beami_culture","aekyom_culture")) {
    $lmFix[$c] = @{comment="# The highland garden terraces supported intensive sweet potato, taro, and yam cultivation."; modifier="local_grain_output_modifier = 0.1"}
}
Replace-CultureModifier -FilePath "$outDir\papuan.txt" -BlockType "location_modifier" -Replacements $lmFix

Write-Host "`nBatch 5 complete."

# Process brasilian.txt (88 cultures)
$base = "c:\Users\sages\OneDrive - Microsoft\Documents\GitHub\Specula-Principum"
. "$base\CulturalDifferencesOutput\Insert-CultureModifiers.ps1"

$m = @{}

# Tupi coastal peoples
$m["tupinamba_culture"] = @{cm="army_infantry_power = 0.05"; cc="# The Tupinamba were the most powerful of the Tupi coastal peoples, fierce warriors known for their military prowess and ritual cannibalism."; lm="local_grain_output_modifier = 0.1"; lc="# The Brazilian Atlantic coast supported productive manioc farming alongside abundant fishing."}
$m["tupiniquim_culture"] = @{cm="global_grain_output_modifier = 0.1"; cc="# The Tupinikin were Tupi coastal farmers and warriors of the Espirito Santo and Sao Paulo coast."; lm="local_grain_output_modifier = 0.1"; lc="# The southeastern Brazilian coast supported manioc farming and rich fishing."}
$m["potiguara_culture"] = @{cm="global_sailors_modifier = 0.1"; cc="# The Potiguara were renowned Tupi seafarers and warriors of the northeastern Brazilian coast."; lm="local_fish_output_modifier = 0.1"; lc="# The northeastern Brazilian coast provided abundant fishing resources."}
$m["tabajara_culture"] = @{cm="global_grain_output_modifier = 0.1"; cc="# The Tabajara were Tupi farming people of northeastern Brazil."; lm="local_grain_output_modifier = 0.1"; lc="# The northeastern Brazilian interior supported manioc and maize farming."}

# Tupi interior/forest peoples
$tupiDefault = @{cm="global_grain_output_modifier = 0.05"; cc="# This Tupi-speaking people practiced swidden agriculture, growing manioc and maize in forest clearings."; lm="local_hostile_attrition = 0.1"; lc="# The dense Brazilian rainforest was extremely difficult terrain for outside military forces."}
foreach ($c in @("ava_culture","awa_brazil_culture","awa_canoeiro_culture","anambe_culture","awaete_culture","kambeba_culture","apyawa_culture","kawaiwete_culture","apiaka_culture","kagwahiva_culture","kaapor_culture","tenetehara_culture","zoe_culture","satere_mawe_culture")) {
    $m[$c] = $tupiDefault.Clone()
}

# Tupi river peoples
$m["tapajo_culture"] = @{cm="trade_efficiency = 0.05"; cc="# The Tapajo controlled the strategic confluence of the Tapajos and Amazon Rivers, a major trade point."; lm="local_fish_output_modifier = 0.1"; lc="# The Amazon-Tapajos confluence provided abundant river fishing."}
$m["manaos_culture"] = @{cm="trade_efficiency = 0.1"; cc="# The Manaos controlled the Rio Negro-Amazon confluence, the greatest riverine trade hub in the Amazon basin."; lm="local_fish_output_modifier = 0.1"; lc="# The Amazon-Negro confluence was one of the richest freshwater fishing areas in the world."}

# Marajo
$m["marajo_culture"] = @{cm="prestige = 5"; cc="# The Marajo Island civilization built enormous earthen mounds and produced sophisticated polychrome ceramics at the Amazon's mouth."; lm="local_grain_output_modifier = 0.1"; lc="# Marajo Island's raised-field agriculture transformed seasonal wetlands into productive farmland."}

# Xingu peoples
$m["kuikuro_culture"] = @{cm="global_grain_output_modifier = 0.1"; cc="# The Kuikuro built sophisticated garden cities in the upper Xingu, with organized plazas, roads, and extensive manioc farming."; lm="local_grain_output_modifier = 0.1"; lc="# The upper Xingu's fertile black earth (terra preta) soils supported intensive manioc cultivation."}
$m["wapaji_culture"] = @{cm="global_grain_output_modifier = 0.05"; cc="# This Xingu region people practiced agriculture and fishing in the upper Amazon tributaries."; lm="local_grain_output_modifier = 0.1"; lc="# The Xingu River region supported productive tropical agriculture."}

# Je/Ge peoples
$jeDefault = @{cm="land_morale = 0.05"; cc="# This Je-speaking people were semi-nomadic hunter-gatherers and farmers of the Brazilian cerrado (savanna)."; lm="local_hostile_attrition = 0.1"; lc="# The vast Brazilian cerrado was remote and difficult terrain for outside forces."}
foreach ($c in @("kanhgag_culture","kren_culture","timbira_culture","akwe_culture","panara_culture","kajkwakratxi_culture","mebengokre_culture","laklano_culture")) {
    $m[$c] = $jeDefault.Clone()
}
$m["mebengokre_culture"] = @{cm="army_infantry_power = 0.05"; cc="# The Mebengokre (Kayapo) were among the fiercest warriors of central Brazil, defending a vast territory."; lm="local_hostile_attrition = 0.1"; lc="# The Kayapo defended vast stretches of Amazon-cerrado transitional forest."}

# Arawak interior
foreach ($c in @("haliti_culture","bare_culture","arua_culture","waiwai_culture","terena_culture")) {
    $m[$c] = @{cm="global_grain_output_modifier = 0.05"; cc="# This Arawakan people practiced manioc farming and fishing in the interior Brazilian river systems."; lm="local_grain_output_modifier = 0.1"; lc="# The interior river valleys supported productive manioc cultivation."}
}

# Carib interior
foreach ($c in @("ikpeng_culture","kinja_culture")) {
    $m[$c] = @{cm="global_grain_output_modifier = 0.05"; cc="# This Cariban people practiced swidden farming and hunting in the Amazon forest interior."; lm="local_hostile_attrition = 0.1"; lc="# The dense Amazon interior was extremely remote and difficult to penetrate."}
}

# Southern/Pantanal peoples
$m["guato_culture"] = @{cm="global_fish_output_modifier = 0.1"; cc="# The Guato were expert canoe fishermen of the Pantanal, the world's largest tropical wetland."; lm="local_fish_output_modifier = 0.15"; lc="# The Pantanal's vast seasonal wetlands supported extraordinarily abundant freshwater fishing."}
$m["boe_culture"] = @{cm="global_fish_output_modifier = 0.1"; cc="# The Bororo were farmers, fishermen, and hunters of the Mato Grosso plateau and Pantanal edge."; lm="local_fish_output_modifier = 0.1"; lc="# The rivers and wetlands of Mato Grosso supported fishing and agriculture."}
$m["guaikuru_culture"] = @{cm="army_cavalry_power = 0.05"; cc="# The Guaikuru (Mbaya-Guaicuru) became the finest horsemen of South America, raiding from Paraguay to Mato Grosso."; lm="local_hostile_attrition = 0.1"; lc="# The Chaco-Pantanal borderlands' thornbush and swampland were ideal for guerrilla raids."}

# Amazonian small groups
$smallAmazon = @{cm="global_grain_output_modifier = 0.05"; cc="# This small Amazonian people practiced swidden agriculture and forest foraging in the deep interior."; lm="local_hostile_attrition = 0.1"; lc="# The remote Amazon interior was virtually impenetrable to outside forces."}
foreach ($c in @("miranha_culture","rikbaktsa_culture","balotipone_culture","nambikwara_culture","manoki_culture","guarasugwe_culture","makurap_culture","purubora_culture","wajuru_culture","txapakura_culture","towa_panka_culture","kura_culture","djeoromitxi_culture","yjxa_culture","kaxarari_culture","paiter_culture","aikana_culture","kwaza_culture","enawene_nawe_culture","mura_culture")) {
    $m[$c] = $smallAmazon.Clone()
}

# Iny/Karaja (Araguaia River)
foreach ($c in @("iny_culture","ukaragma_culture","wuyjuyu_culture")) {
    $m[$c] = @{cm="global_fish_output_modifier = 0.1"; cc="# This Iny (Karaja) people were expert fishermen of the Araguaia River, building large riverside villages."; lm="local_fish_output_modifier = 0.1"; lc="# The Araguaia River and its seasonal lakes provided abundant freshwater fishing."}
}

# Northeast peoples (many now small remnant groups)
$neDefault = @{cm="global_grain_output_modifier = 0.05"; cc="# This northeastern Brazilian people combined farming with foraging in the caatinga scrubland and coastal regions."; lm="local_hostile_attrition = 0.1"; lc="# The caatinga dry scrubland of northeastern Brazil was harsh terrain."}
foreach ($c in @("kaxixo_culture","maxakali_culture","kiriri_culture","xoco_culture","pankararu_culture","tumbalala_culture","pankara_culture","atikum_culture","kaninde_culture","pitaguary_culture","ofaie_culture","fulnio_culture","kambiwa_culture","truka_culture","coremas_culture","pegas_culture","guaitaka_culture","tremembe_culture","tarairiu_culture","kaete_culture","puri_culture","xeta_culture","charrua_culture","catagua_culture")) {
    $m[$c] = $neDefault.Clone()
}
$m["charrua_culture"] = @{cm="army_infantry_power = 0.05"; cc="# The Charrua were fierce warriors of Uruguay, famous for killing the explorer Solis and resisting Spanish colonization."; lm="local_hostile_attrition = 0.1"; lc="# The Uruguayan Pampas grasslands gave the Charrua room for their mobile guerrilla warfare."}

Insert-CultureModifiers -SourcePath "$base\CulturalDifferencesSource\in_game\common\cultures\brasilian.txt" `
    -OutputPath "$base\CulturalDifferencesOutput\in_game\common\cultures\brasilian.txt" `
    -Modifiers $m

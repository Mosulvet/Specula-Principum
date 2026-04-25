# Fix batch 3: great_bassin, mesoamerican, east_african, kongolese, west_african
$base = "c:\Users\sages\OneDrive - Microsoft\Documents\GitHub\Specula-Principum"
$outDir = "$base\CulturalDifferencesOutput\in_game\common\cultures"
. "$base\CulturalDifferencesOutput\Replace-CultureModifier.ps1"

# ========== GREAT_BASSIN (CM: global_fish 55/92=60%, LM: local_fish 71/92=77%) ==========
Write-Host "--- great_bassin.txt ---"
$cmFix = @{}
# Interior plateau peoples who traded more than fished
$cmFix["kalispel_culture"] = @{comment="# The Kalispel (Pend d'Oreilles) were key participants in interior Plateau trade networks at gathering sites."; modifier="trade_efficiency = 0.05"}
$cmFix["spokane_culture"] = @{comment="# Spokane Falls was a major intertribal trade and gathering center where peoples exchanged goods and information."; modifier="trade_efficiency = 0.1"}
$cmFix["okanagan_culture"] = @{comment="# The Okanagan facilitated north-south trade between the Columbia Plateau and northern interior peoples."; modifier="trade_efficiency = 0.05"}
$cmFix["sinixt_culture"] = @{comment="# The Sinixt (Lakes people) occupied a key position on Columbia River trade routes."; modifier="trade_efficiency = 0.05"}
$cmFix["palouse_culture"] = @{comment="# The Palouse were renowned horse breeders and warriors of the Columbia Plateau after the horse arrived."; modifier="army_infantry_power = 0.05"}
$cmFix["sahaptin_culture"] = @{comment="# The Sahaptin peoples were formidable warriors who controlled important root-gathering grounds and trade routes."; modifier="army_infantry_power = 0.05"}
$cmFix["molalla_culture"] = @{comment="# The Molalla were mountain-dwelling warriors of the Cascade Range, adapted to high-altitude life."; modifier="land_morale = 0.05"}
$cmFix["modokni_culture"] = @{comment="# The Modoc were fierce warriors who fought the US Army to a standstill in the lava beds of northern California."; modifier="army_infantry_power = 0.1"}
$cmFix["waashiw_culture"] = @{comment="# The Washoe of Lake Tahoe maintained stable seasonal communities with sophisticated resource management."; modifier="stability_cost_modifier = -0.05"}
$cmFix["wappo_culture"] = @{comment="# The Wappo had complex social organization and maintained their territory against larger surrounding groups."; modifier="stability_cost_modifier = -0.05"}
Replace-CultureModifier -FilePath "$outDir\great_bassin.txt" -BlockType "country_modifier" -Replacements $cmFix

$lmFix = @{}
# California acorn peoples - primary food was acorns (grain-equivalent), not fish
foreach ($c in @("maiduan_culture","miwok_culture","nisenan_culture","nomlaki_culture","patwin_culture","wintuan_culture","koyoongkawi_culture","foothill_yokut_culture","pomo_culture","ohlone_culture","tongva_culture","salinan_culture")) {
    $lmFix[$c] = @{comment="# California's oak woodlands provided abundant acorn harvests, the dietary staple ground into flour and leached for cooking."; modifier="local_grain_output_modifier = 0.1"}
}
# Interior NW trade peoples
foreach ($c in @("kalispel_culture","spokane_culture","okanagan_culture","sinixt_culture")) {
    $lmFix[$c] = @{comment="# The interior Plateau was crisscrossed by trade routes connecting coastal, mountain, and plains peoples."; modifier="local_trade_output_modifier = 0.1"}
}
# Mountain/desert peoples - harsh terrain
foreach ($c in @("molalla_culture","modokni_culture","waashiw_culture","wappo_culture","yuki_culture","mattole_culture","nongatl_culture","tsnungwe_culture")) {
    $lmFix[$c] = @{comment="# The rugged mountain and canyon terrain was difficult for outsiders to navigate."; modifier="local_hostile_attrition = 0.1"}
}
$lmFix["palouse_culture"] = @{comment="# The Palouse Prairie grasslands later became famous for their agricultural fertility."; modifier="local_grain_output_modifier = 0.1"}
Replace-CultureModifier -FilePath "$outDir\great_bassin.txt" -BlockType "location_modifier" -Replacements $lmFix

# ========== MESOAMERICAN (CM: global_grain 29/49=59%, LM: local_grain 37/49=76%) ==========
Write-Host "--- mesoamerican.txt ---"
$cmFix = @{}
$cmFix["toltec_culture"] = @{comment="# The Toltec warrior tradition influenced all subsequent Mesoamerican military culture and statecraft."; modifier="army_infantry_power = 0.1"}
$cmFix["huastec_culture"] = @{comment="# The Huastec maintained a Gulf Coast trading culture connecting the Maya world and central Mexico."; modifier="trade_efficiency = 0.1"}
$cmFix["chol_culture"] = @{comment="# The Chol Maya were active traders in the western Maya lowlands, linking highland and lowland economies."; modifier="trade_efficiency = 0.05"}
$cmFix["mam_culture"] = @{comment="# The Mam maintained stable highland communities in western Guatemala with sophisticated governance."; modifier="stability_cost_modifier = -0.05"}
$cmFix["poqom_culture"] = @{comment="# The Poqom were highland Maya warriors known for defending their territories against Kiche expansion."; modifier="army_infantry_power = 0.05"}
Replace-CultureModifier -FilePath "$outDir\mesoamerican.txt" -BlockType "country_modifier" -Replacements $cmFix

$lmFix = @{}
$lmFix["huastec_culture"] = @{comment="# The Gulf Coast Huasteca region provided rich fishing and shellfish resources alongside agriculture."; modifier="local_fish_output_modifier = 0.1"}
$lmFix["ikoot_culture"] = @{comment="# The Huave (Ikoot) of the Oaxaca lagoons were primarily fishers, harvesting the lagoon's rich marine life."; modifier="local_fish_output_modifier = 0.15"}
$lmFix["pochutec_culture"] = @{comment="# The Pacific coast of Oaxaca provided productive fishing alongside agricultural terracing."; modifier="local_fish_output_modifier = 0.1"}
$lmFix["chontal_culture"] = @{comment="# The Gulf Coast Chontal Maya combined lagoon fishing with cacao cultivation and canoe trade."; modifier="local_fish_output_modifier = 0.1"}
$lmFix["totonac_culture"] = @{comment="# Veracruz's El Tajin was a major Mesoamerican trade center, connecting Gulf Coast goods with the highlands."; modifier="local_trade_output_modifier = 0.15"}
$lmFix["nahua_culture"] = @{comment="# The Basin of Mexico supported vast trade networks centered on Tlatelolco, the greatest market in the Americas."; modifier="local_trade_output_modifier = 0.15"}
$lmFix["cuitlatec_culture"] = @{comment="# The Cuitlatec river valleys of Guerrero supported skilled artisanal production including metalwork."; modifier="local_production_efficiency = 0.1"}
$lmFix["matlatzinca_culture"] = @{comment="# The fortified Matlatzinca settlements in the Toluca Valley provided strong defensive positions."; modifier="local_defensive = 0.1"}
$lmFix["tolimec_culture"] = @{comment="# The Tolimec produced high-quality craft goods in their Guerrero highland workshops."; modifier="local_production_efficiency = 0.05"}
$lmFix["toltec_culture"] = @{comment="# Tula's workshops produced obsidian tools, ceramics, and luxury goods traded across Mesoamerica."; modifier="local_production_efficiency = 0.15"}
$lmFix["otomanguean_culture"] = @{comment="# The Otomi highland territories provided natural defensive terrain in the central Mexican mountains."; modifier="local_hostile_attrition = 0.1"}
$lmFix["popoloca_culture"] = @{comment="# The Tehuacan Valley's defensible hilltop settlements protected the Popoloca from neighboring aggression."; modifier="local_defensive = 0.1"}
$lmFix["toquegua_culture"] = @{comment="# The remote mountain terrain of the Toquegua homeland was difficult for outsiders to traverse."; modifier="local_hostile_attrition = 0.1"}
Replace-CultureModifier -FilePath "$outDir\mesoamerican.txt" -BlockType "location_modifier" -Replacements $lmFix

# ========== EAST_AFRICAN (CM: global_grain 28/52=54%, LM: local_grain 32/52=62%) ==========
Write-Host "--- east_african.txt ---"
$cmFix = @{}
$cmFix["makhuwa_culture"] = @{comment="# The Makhuwa of coastal Mozambique combined fishing and trade along the Indian Ocean seaboard."; modifier="global_fish_output_modifier = 0.1"}
$cmFix["sena_culture"] = @{comment="# The Sena controlled key positions on the Zambezi River, participating in gold and ivory trade."; modifier="trade_efficiency = 0.05"}
$cmFix["luhya_culture"] = @{comment="# The Luhya maintained well-organized agricultural communities with strong social institutions in western Kenya."; modifier="stability_cost_modifier = -0.05"}
Replace-CultureModifier -FilePath "$outDir\east_african.txt" -BlockType "country_modifier" -Replacements $cmFix

$lmFix = @{}
$lmFix["makhuwa_culture"] = @{comment="# The Mozambique coast provided productive Indian Ocean fishing and maritime resources."; modifier="local_fish_output_modifier = 0.1"}
$lmFix["sena_culture"] = @{comment="# The Zambezi River valley was a key trade corridor for gold, ivory, and salt exchange."; modifier="local_trade_output_modifier = 0.1"}
$lmFix["luhya_culture"] = @{comment="# The Luhya region of western Kenya supported cattle-keeping alongside agriculture."; modifier="local_livestock_output_modifier = 0.1"}
$lmFix["chewa_culture"] = @{comment="# The Chewa were skilled ironworkers and potters with strong artisanal production traditions."; modifier="local_production_efficiency = 0.05"}
$lmFix["tumbuka_culture"] = @{comment="# The remote northern Malawi highlands were difficult terrain for outsiders to penetrate."; modifier="local_hostile_attrition = 0.1"}
$lmFix["seuta_culture"] = @{comment="# The coastal regions near the Swahili trading cities supported productive fishing."; modifier="local_fish_output_modifier = 0.1"}
$lmFix["matuumbi_culture"] = @{comment="# The remote southeastern Tanzania forests provided natural defensive cover."; modifier="local_hostile_attrition = 0.1"}
Replace-CultureModifier -FilePath "$outDir\east_african.txt" -BlockType "location_modifier" -Replacements $lmFix

# ========== KONGOLESE (CM: global_grain 44/64=69%, LM: local_grain 37/64=58%) ==========
Write-Host "--- kongolese.txt ---"
$cmFix = @{}
$cmFix["vili"] = @{comment="# The Vili of the Loango coast were major long-distance traders, connecting the interior with European maritime commerce."; modifier="trade_efficiency = 0.1"}
$cmFix["kakongo"] = @{comment="# Kakongo was a coastal trading state that profited from commerce between the interior and Atlantic coast."; modifier="trade_efficiency = 0.1"}
$cmFix["cabinda"] = @{comment="# Cabinda's coastal position made it a key node in Atlantic trade networks connecting Congo interior goods."; modifier="trade_efficiency = 0.05"}
$cmFix["eshira"] = @{comment="# The Eshira (Shira) of southern Gabon were active in regional trade networks along river systems."; modifier="trade_efficiency = 0.05"}
$cmFix["omiene"] = @{comment="# The Myene (Omiene) of the Ogooué River combined fishing with trade along Gabon's major waterway."; modifier="global_fish_output_modifier = 0.1"}
$cmFix["mbaka"] = @{comment="# The Mbaka were riverside traders along the Ubangi River, facilitating exchange between forest and savanna."; modifier="trade_efficiency = 0.05"}
$cmFix["bakele"] = @{comment="# The Kele warriors of the Gabonese interior were known for their military prowess in forest warfare."; modifier="army_infantry_power = 0.05"}
$cmFix["bandjabi"] = @{comment="# The Ndjabi were skilled forest warriors of southern Gabon, defending their territories effectively."; modifier="land_morale = 0.05"}
$cmFix["kota_gabun"] = @{comment="# The Kota were renowned warriors and metalworkers of northeastern Gabon, famous for reliquary guardian figures."; modifier="army_infantry_power = 0.05"}
$cmFix["basingui"] = @{comment="# The Ngiri maintained stable forest communities with well-organized social structures along the Congo tributaries."; modifier="stability_cost_modifier = -0.05"}
$cmFix["mitsogo"] = @{comment="# The Tsogo were the founders of the Bwiti spiritual tradition, maintaining exceptional cultural cohesion."; modifier="stability_cost_modifier = -0.05"}
$cmFix["wumbu"] = @{comment="# The Wumbu (Lumbu) of southwestern Gabon had strong community organization and social stability."; modifier="stability_cost_modifier = -0.05"}
Replace-CultureModifier -FilePath "$outDir\kongolese.txt" -BlockType "country_modifier" -Replacements $cmFix

$lmFix = @{}
$lmFix["bashilele"] = @{comment="# The Lele were renowned cloth producers, weaving raffia textiles traded across the Kasai region."; modifier="local_production_efficiency = 0.1"}
$lmFix["hemba"] = @{comment="# The Hemba were master sculptors, producing some of Central Africa's finest ancestor figures and ceremonial art."; modifier="local_production_efficiency = 0.1"}
$lmFix["tabwa"] = @{comment="# The Tabwa on the shores of Lake Tanganyika were productive freshwater fishers."; modifier="local_fish_output_modifier = 0.1"}
$lmFix["owambo_culture"] = @{comment="# The Ovambo kept large cattle herds alongside millet cultivation in northern Namibia."; modifier="local_livestock_output_modifier = 0.1"}
$lmFix["dinga"] = @{comment="# The remote Kasai region forests were difficult terrain for outside forces to penetrate."; modifier="local_hostile_attrition = 0.1"}
$lmFix["bwende"] = @{comment="# The Bwende (Sonde) produced distinctive cloth and ceremonial objects for regional trade."; modifier="local_production_efficiency = 0.05"}
Replace-CultureModifier -FilePath "$outDir\kongolese.txt" -BlockType "location_modifier" -Replacements $lmFix

# ========== WEST_AFRICAN (CM: global_grain 44/80=55%) ==========
Write-Host "--- west_african.txt ---"
$cmFix = @{}
$cmFix["ajan"] = @{comment="# The Aja people of the Slave Coast were active in regional trade networks connecting coastal and inland markets."; modifier="trade_efficiency = 0.05"}
$cmFix["bantoid"] = @{comment="# The Cross River Bantoid peoples were known warriors who maintained strong military traditions."; modifier="army_infantry_power = 0.05"}
$cmFix["benue"] = @{comment="# The Benue River valley peoples facilitated trade between the Niger Delta and the interior Sahel."; modifier="trade_efficiency = 0.05"}
$cmFix["gbari"] = @{comment="# The Gbari (Gwari) were skilled warriors and craftspeople of central Nigeria."; modifier="army_infantry_power = 0.05"}
$cmFix["kabiye"] = @{comment="# The Kabye were mountain warriors of northern Togo, famous for their resistance from fortified positions."; modifier="land_morale = 0.05"}
Replace-CultureModifier -FilePath "$outDir\west_african.txt" -BlockType "country_modifier" -Replacements $cmFix

Write-Host "`nBatch 3 complete."

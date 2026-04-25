# Process australian.txt (187 cultures)
$base = "c:\Users\sages\OneDrive - Microsoft\Documents\GitHub\Specula-Principum"
. "$base\CulturalDifferencesOutput\Insert-CultureModifiers.ps1"

$m = @{}

# Australian Aboriginal peoples - organized by region
# Most are hunter-gatherers with fire-stick farming; regional specializations vary

# Southwest (Noongar and related)
$swDefault = @{cm="land_morale = 0.05"; cc="# This Aboriginal Australian people maintained sophisticated land management through fire-stick farming for over 40,000 years."; lm="local_hostile_attrition = 0.1"; lc="# The Australian landscape was intimately known to its Aboriginal inhabitants, hostile terrain for outsiders."}
foreach ($c in @("noongar_culture","nhanta_culture","malkana_culture","yinggarda_culture","baiyungu_culture","thalanyji_culture","nhuwala_culture","martuthunira_culture","ngarluma_culture","nyamal_culture","nyangumarda_culture","malpa_culture","kalaamaya_culture","badimaya_culture","watjarri_culture","purduna_culture","kurrama_culture")) {
    $m[$c] = $swDefault.Clone()
}
$m["noongar_culture"] = @{cm="land_morale = 0.05"; cc="# The Noongar were the most populous Aboriginal group in Western Australia, managing their lands through sophisticated fire-stick farming."; lm="local_grain_output_modifier = 0.05"; lc="# The Noongar country of southwestern Australia was the most fertile and well-watered region in the west."}

# Kimberley / Top End coast
$topEnd = @{cm="global_fish_output_modifier = 0.1"; cc="# This coastal Aboriginal people combined fishing and shellfish gathering with hunting and fire-stick land management."; lm="local_fish_output_modifier = 0.1"; lc="# The tropical northern Australian coastline provided rich fishing and marine resources."}
foreach ($c in @("karajarri_culture","jukun_culture","ngumbarl_culture","jabirrjabirr_culture","bardi_culture","nimanburu_culture","nyikina_culture","warwa_culture","unggarangi_culture","umida_culture","wunambul_culture","gamberre_culture","kwini_culture","yiiji_culture","kadjerong_culture","murrinh_patha_culture","marrithiyel_culture","kungarakany_culture","larrakia_culture","limilngan_culture","konbudj_culture","amarak_culture","maung_culture","gunbalang_culture","nakara_culture")) {
    $m[$c] = $topEnd.Clone()
}

# Arnhem Land
$m["yolngu_culture"] = @{cm="prestige = 5"; cc="# The Yolngu of Arnhem Land maintained one of the most sophisticated Aboriginal cultures, with complex kinship, art, and ceremonial systems."; lm="local_fish_output_modifier = 0.1"; lc="# The Arnhem Land coast and rivers provided rich fishing and gathering resources."}
foreach ($c in @("warnindilyakwa_culture","nunggubuyu_culture","mara_culture","yanyuwa_culture")) {
    $m[$c] = @{cm="global_fish_output_modifier = 0.1"; cc="# This Arnhem Land Aboriginal people combined coastal fishing with inland hunting and gathering."; lm="local_fish_output_modifier = 0.1"; lc="# The northern Australian coast and river systems provided productive fishing."}
}

# Gulf Country
$gulfDefault = @{cm="global_fish_output_modifier = 0.1"; cc="# This Gulf Country Aboriginal people combined fishing in the Gulf of Carpentaria with inland hunting and gathering."; lm="local_hostile_attrition = 0.1"; lc="# The remote Gulf Country was harsh, seasonally flooded terrain difficult for outsiders."}
foreach ($c in @("ganggalida_culture","mingin_culture","kukatj_culture","kuthant_culture","kurtjar_culture","yir_yoront_culture","wik_culture")) {
    $m[$c] = $gulfDefault.Clone()
}

# Cape York
foreach ($c in @("anguthimri_culture","anggamudi_culture","yadhaigana_culture","wuthathi_culture","kuuku_yau_culture","uutaalnganu_culture","umpila_culture","lamalama_culture","mutumui_culture")) {
    $m[$c] = @{cm="global_fish_output_modifier = 0.1"; cc="# This Cape York Aboriginal people combined tropical fishing with hunting and gathering in northern Queensland."; lm="local_hostile_attrition = 0.1"; lc="# Cape York's remote tropical wilderness was difficult terrain for outsiders."}
}

# Northeast Queensland coast
$neqld = @{cm="global_fish_output_modifier = 0.1"; cc="# This tropical Queensland Aboriginal people combined reef fishing with rainforest foraging."; lm="local_fish_output_modifier = 0.1"; lc="# The Great Barrier Reef coast provided extraordinarily rich marine resources."}
foreach ($c in @("guugu_yimidhirr_culture","kuku_yalanji_culture","djabuganjdji_culture","yidinjdji_culture","djirbalngan_culture","wargamaygan_culture","nyawaygi_culture","wulgurukaba_culture","bindal_culture","yuru_culture","giya_culture","yuwi_culture")) {
    $m[$c] = $neqld.Clone()
}

# Central/Western Queensland
$centralQld = @{cm="land_morale = 0.05"; cc="# This inland Queensland Aboriginal people were expert hunters and gatherers of the semi-arid Australian interior."; lm="local_hostile_attrition = 0.15"; lc="# The semi-arid Australian interior was harsh, waterless terrain deadly to unprepared outsiders."}
foreach ($c in @("guwinmal_culture","darumbal_culture","bayali_culture")) {
    $m[$c] = $centralQld.Clone()
}

# Southeast Queensland/Northern NSW
foreach ($c in @("gureng_gureng_culture","gubbi_gubbi_culture","badtjala_culture","quandamooka_culture","turrbal_culture","bundjalung_culture","gumbaynggirr_culture","dainggatti_culture","biripi_culture","worimi_culture")) {
    $m[$c] = @{cm="global_fish_output_modifier = 0.1"; cc="# This southeastern coastal Aboriginal people combined fishing and shellfish gathering with hunting and gathering."; lm="local_fish_output_modifier = 0.1"; lc="# The subtropical east Australian coast provided productive fishing and marine resources."}
}

# Sydney/South Coast NSW
foreach ($c in @("dharug_culture","eora_culture","tharawal_culture","yuin_culture")) {
    $m[$c] = @{cm="global_fish_output_modifier = 0.1"; cc="# This Sydney region Aboriginal people were expert fishermen and shellfish gatherers of the NSW coast."; lm="local_fish_output_modifier = 0.1"; lc="# The Sydney harbour and NSW south coast provided rich fishing and shellfish resources."}
}

# Victoria/Southeast
foreach ($c in @("bidwell_culture","boon_wurrung_culture","wathaurong_culture","gadubanud_culture","giraiwurung_culture","gunditmara_culture","wurundjeri_culture","gulidjan_culture","ngurraiillam_culture","yorta_yorta_culture")) {
    $m[$c] = @{cm="global_fish_output_modifier = 0.1"; cc="# This Victorian Aboriginal people combined fishing, eel-trapping, and hunting with sophisticated land management."; lm="local_fish_output_modifier = 0.1"; lc="# Victoria's rivers, lakes, and coast supported productive fishing and eel harvesting."}
}
$m["gunditjmara_culture"] = @{cm="global_grain_output_modifier = 0.1"; cc="# The Gunditjmara built the Budj Bim eel farming system, the oldest known aquaculture in the world, over 6,000 years old."; lm="local_fish_output_modifier = 0.15"; lc="# The Budj Bim volcanic landscape supported sophisticated eel trapping and farming channels."}

# South Australia
$saDefault = @{cm="land_morale = 0.05"; cc="# This South Australian Aboriginal people survived through expert knowledge of the arid landscape and its seasonal resources."; lm="local_hostile_attrition = 0.15"; lc="# The arid South Australian landscape was extremely harsh, with vast waterless distances."}
foreach ($c in @("buandig_culture","ngarrindjeri_culture","kaurna_pangkarra_culture","narangga_culture","nukunu_culture","banggarla_culture","nawu_culture","wirangu_culture","mirning_culture","ngatjumay_culture","ngadjuri_culture","ngargad_culture")) {
    $m[$c] = $saDefault.Clone()
}
$m["ngarrindjeri_culture"] = @{cm="global_fish_output_modifier = 0.1"; cc="# The Ngarrindjeri of the Murray River mouth were expert fishermen and water managers of the Coorong lagoon system."; lm="local_fish_output_modifier = 0.1"; lc="# The Murray River mouth and Coorong lagoon provided rich freshwater and marine fishing."}

# Western Desert/Pilbara interior
$desertDefault = @{cm="land_morale = 0.05"; cc="# This Western Desert Aboriginal people were among the most resilient humans on Earth, surviving in extreme arid conditions."; lm="local_hostile_attrition = 0.15"; lc="# The Australian Western Desert was one of the harshest inhabited environments on Earth."}
foreach ($c in @("jaminjung_culture","ngarinyin_culture","worla_culture","kija_culture","jaru_culture","gooniyandi_culture","doolboong_culture","gurindji_culture","ngarinman_culture","ngaliwuru_culture","wardaman_culture","yangman_culture","mudbarra_culture","warumungu_culture","wakaya_culture","bilinara_culture","karangpurru_culture","jingili_culture")) {
    $m[$c] = $desertDefault.Clone()
}

# Arnhem Land interior
foreach ($c in @("ngalakan_culture","wagiman_culture","gunwinggu_culture","dangbon_culture","rembarnga_culture","ngalkbun_culture","ngandi_culture","ngandji_culture","gunindiri_culture")) {
    $m[$c] = @{cm="global_fish_output_modifier = 0.05"; cc="# This Arnhem Land Aboriginal people combined seasonal fishing with hunting and gathering in the monsoon tropics."; lm="local_hostile_attrition = 0.1"; lc="# The Arnhem Land escarpment and plateau were rugged, remote terrain."}
}

# Western Queensland/Channel Country
foreach ($c in @("waanyi_culture","warluwarra_culture","yalarrnga_culture","yanda_culture","guwa_culture","wunumara_culture","mayi_culture","kalkadoon_culture","kunjen_culture","yinwum_culture","kaantju_culture","luthigh_culture","kokowarra_culture","kokomini_culture")) {
    $m[$c] = @{cm="land_morale = 0.05"; cc="# This western Queensland Aboriginal people were expert hunters and gatherers of the Channel Country and Gulf hinterland."; lm="local_hostile_attrition = 0.15"; lc="# The remote western Queensland semi-arid interior was harsh, waterless terrain."}
}
$m["kalkadoon_culture"] = @{cm="army_infantry_power = 0.05"; cc="# The Kalkadoon were renowned warriors of the Queensland highlands, famous for their fierce resistance at Battle Mountain."; lm="local_hostile_attrition = 0.15"; lc="# The Kalkadoon homeland's rocky ranges provided defensive terrain for their resistance."}

# Central/Southern Queensland interior
foreach ($c in @("mbara_culture","yanga_culture","yirandali_culture","yilba_culture","yangga_culture","yagalingu_culture","wangan_culture","barna_culture","baradha_culture","gangulu_culture","bidjara_culture","barunggam_culture","ngoorabul_culture")) {
    $m[$c] = @{cm="land_morale = 0.05"; cc="# This Darling Downs/central Queensland Aboriginal people managed their lands through controlled burning and seasonal hunting."; lm="local_hostile_attrition = 0.1"; lc="# The Queensland interior grasslands and woodlands were managed through sophisticated fire-stick farming."}
}

# NSW interior
foreach ($c in @("wiradjuri_culture","nganyaywana_culture","geawegal_culture","ngunawal_culture","gundungurra_culture")) {
    $m[$c] = @{cm="global_fish_output_modifier = 0.05"; cc="# This NSW interior Aboriginal people combined river fishing with hunting and gathering in the woodlands."; lm="local_hostile_attrition = 0.1"; lc="# The NSW tablelands and western slopes were managed through fire-stick farming."}
}
$m["wiradjuri_culture"] = @{cm="prestige = 5"; cc="# The Wiradjuri were the largest Aboriginal nation in NSW, controlling vast territories across the central western plains and tablelands."; lm="local_hostile_attrition = 0.1"; lc="# The Wiradjuri territory's rivers and woodlands supported diverse hunting and gathering."}

# Victoria interior
foreach ($c in @("jaitmatang_culture","waveroo_culture","baraba_baraba_culture","wemba_wemba_culture","nari_nari_culture","yitha_yitha_culture","jardwadjali_culture","wergaia_culture","latje_latje_culture","toogee_culture")) {
    $m[$c] = @{cm="global_fish_output_modifier = 0.05"; cc="# This Murray-Darling region Aboriginal people combined river fishing with hunting in the riverine woodlands."; lm="local_fish_output_modifier = 0.1"; lc="# The Murray-Darling river system provided productive freshwater fishing and gathering."}
}

# Tasmania
foreach ($c in @("palawa_culture","pyemmairrener_culture","paredarerme_culture")) {
    $m[$c] = @{cm="global_fish_output_modifier = 0.1"; cc="# The Palawa (Tasmanian Aboriginal people) were expert shellfish gatherers and hunters, isolated for 10,000 years."; lm="local_hostile_attrition = 0.1"; lc="# Tasmania's rugged wilderness and isolation preserved Aboriginal culture for millennia."}
}

# Gippsland
$m["kurnai_culture"] = @{cm="global_fish_output_modifier = 0.1"; cc="# The Kurnai of Gippsland were fishermen and hunters of southeastern Victoria's lakes and coast."; lm="local_fish_output_modifier = 0.1"; lc="# The Gippsland Lakes and coast provided productive fishing."}

Insert-CultureModifiers -SourcePath "$base\CulturalDifferencesSource\in_game\common\cultures\australian.txt" `
    -OutputPath "$base\CulturalDifferencesOutput\in_game\common\cultures\australian.txt" `
    -Modifiers $m

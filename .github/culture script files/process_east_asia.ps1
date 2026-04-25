# PowerShell script to add modifiers to east_asia.txt cultures

$srcPath = "c:\Users\sages\OneDrive - Microsoft\Documents\GitHub\Specula-Principum\CulturalDifferencesSource\in_game\common\cultures\east_asia.txt"
$outPath = "c:\Users\sages\OneDrive - Microsoft\Documents\GitHub\Specula-Principum\CulturalDifferencesOutput\in_game\common\cultures\east_asia.txt"

# Define modifier templates by category
$modifiers = @{}

# Korean
$modifiers["korean_culture"] = @{cm="prestige = 5"; cc="# Korea's Confucian scholarly tradition and the invention of hangul reflected one of East Asia's most sophisticated literary cultures."; lm="local_grain_output_modifier = 0.1"; lc="# Korean rice paddies and intensive agriculture in the peninsula's river valleys supported a large, literate population."}

# Japanese
foreach ($c in @("saigoku_culture","tougoku_culture","kyushu_culture","touhoku_culture")) {
    $modifiers[$c] = @{cm="land_morale = 0.05"; cc="# The samurai warrior code and Japan's long tradition of clan warfare produced disciplined soldiers with exceptional fighting morale."; lm="local_production_efficiency = 0.05"; lc="# Japanese craftsmanship in metalwork, ceramics, and textiles was highly refined by the Muromachi period."}
}
$modifiers["ainu_culture"] = @{cm="global_fish_output_modifier = 0.15"; cc="# The Ainu were master fishermen and hunters of Hokkaido, the Kurils, and Sakhalin, their economy centered on salmon and marine resources."; lm="local_fish_output_modifier = 0.15"; lc="# The cold northern waters around Ainu territories teemed with salmon, trout, and marine mammals."}
$modifiers["ryukyu_culture"] = @{cm="trade_efficiency = 0.1"; cc="# The Ryukyu Kingdom was a major maritime trading intermediary between China, Japan, Korea, and Southeast Asia."; lm="local_fish_output_modifier = 0.1"; lc="# The Ryukyu Islands' subtropical waters provided abundant fishing alongside maritime trade."}
$modifiers["tamna_culture"] = @{cm="global_fish_output_modifier = 0.1"; cc="# The Tamna people of Jeju Island were renowned divers and fishermen, with the haenyeo diving tradition central to their culture."; lm="local_fish_output_modifier = 0.15"; lc="# Jeju's volcanic island waters supported a rich marine ecosystem exploited by skilled island fishermen."}

# Jurchen/Manchu
foreach ($c in @("jurchen_culture","haixi_culture","hurga_culture")) {
    $modifiers[$c] = @{cm="army_cavalry_power = 0.1"; cc="# The Jurchen were formidable mounted warriors whose cavalry traditions would eventually forge the Manchu conquest of China."; lm="local_livestock_output_modifier = 0.1"; lc="# The Manchurian forests and grasslands supported Jurchen pastoral herding of horses and cattle."}
}

# Hui Muslim
$modifiers["hui_muslim_culture"] = @{cm="trade_efficiency = 0.1"; cc="# The Hui Muslim community maintained extensive commercial networks across China, specializing in long-distance caravan and maritime trade."; lm="local_production_efficiency = 0.05"; lc="# Hui merchants and artisans contributed to commercial life in China's major trading cities."}

# Northern Chinese
foreach ($c in @("yan_culture","jilu_culture","jiaodong_culture","liaodong_culture","zhongyuan_culture","liang_culture","huaihai_culture","qin_culture")) {
    $modifiers[$c] = @{cm="global_grain_output_modifier = 0.1"; cc="# The North China Plain was one of the world's great agricultural regions, its wheat and millet harvests feeding millions."; lm="local_grain_output_modifier = 0.1"; lc="# The Yellow River basin's loess soils supported intensive grain agriculture that sustained dense populations."}
}

# Yangtze/Central Chinese
foreach ($c in @("jianghuai_culture","tongtai_culture","chu_culture","changde_culture","shu_culture")) {
    $modifiers[$c] = @{cm="global_grain_output_modifier = 0.1"; cc="# The Yangtze River basin was the rice bowl of China, its wet-rice agriculture producing enormous surpluses."; lm="local_grain_output_modifier = 0.1"; lc="# The fertile Yangtze floodplains and terraced hillsides supported intensive rice cultivation."}
}

# Jin (Shanxi)
$modifiers["jin_culture"] = @{cm="expand_rgo_mining_cost_modifier = -0.1"; cc="# Shanxi's abundant coal and iron deposits made it a major center of Chinese metalworking and mining since antiquity."; lm="local_iron_output_modifier = 0.1"; lc="# The Shanxi plateau contained some of China's richest coal and iron deposits."}

# Wu cultures
foreach ($c in @("wu_culture","yue_wu_culture","xuanzhou_culture","wuzhou_culture","quzhou_culture","chuzhou_culture","jiangshan_culture","taizhou_wu_culture","ouhai_culture","tunxi_culture","jixi_culture","qiwu_culture")) {
    $modifiers[$c] = @{cm="trade_efficiency = 0.05"; cc="# The Yangtze Delta Wu-speaking region was China's wealthiest, with Suzhou and Hangzhou as centers of silk, commerce, and culture."; lm="local_production_efficiency = 0.05"; lc="# The Wu region's silk production, rice paddies, and urban workshops made it the economic heart of Ming China."}
}

# Xiang cultures
foreach ($c in @("xinxiang_culture","laoxiang_culture","xianxi_culture","yongzhou_culture","hengzhou_culture","waxiang_culture")) {
    $modifiers[$c] = @{cm="global_grain_output_modifier = 0.1"; cc="# Hunan's Xiang-speaking region was a major rice-producing area, with the Dongting Lake basin among China's most fertile."; lm="local_grain_output_modifier = 0.1"; lc="# The Dongting Lake lowlands and Xiang River valley were among China's most productive rice-growing regions."}
}

# Gan
$modifiers["gan_culture"] = @{cm="global_grain_output_modifier = 0.1"; cc="# Jiangxi's Gan-speaking region centered on the Poyang Lake basin was a major rice-producing heartland of southern China."; lm="local_grain_output_modifier = 0.1"; lc="# The Poyang Lake basin and Gan River valley supported intensive rice cultivation and freshwater fishing."}

# Hakka
foreach ($c in @("kejia_culture","huizhou_hakka_culture","dongjiang_culture")) {
    $modifiers[$c] = @{cm="army_infantry_power = 0.05"; cc="# The Hakka people were known for their martial traditions and defensive architecture, building fortified tulou earthen roundhouses."; lm="local_defensive = 0.1"; lc="# Hakka communities built their settlements in defensible mountain positions, with fortified villages resisting outside pressure."}
}

# Northern Min
foreach ($c in @("fuzhou_culture","funing_culture","manjiang_culture","xinghua_culture","jianning_culture")) {
    $modifiers[$c] = @{cm="global_sailors_modifier = 0.1"; cc="# Fujian's Min-speaking coastal communities were among China's foremost seafarers, building the maritime trade networks of the South China Sea."; lm="local_fish_output_modifier = 0.1"; lc="# The Fujian coast's rugged harbors supported extensive fishing and maritime trade communities."}
}

# Southern Min
foreach ($c in @("minnan_culture","chaozhou_culture","fulao_culture","leizhou_culture","qiong_culture")) {
    $modifiers[$c] = @{cm="global_sailors_modifier = 0.1"; cc="# Southern Min (Hokkien/Teochew) merchants built a vast maritime trading diaspora across Southeast Asia, the greatest in Chinese history."; lm="local_fish_output_modifier = 0.1"; lc="# The Southern Min coast supported both fishing and the staging of maritime expeditions across the South China Sea."}
}

$modifiers["cunhua_culture"] = @{cm="global_fish_output_modifier = 0.1"; cc="# The Cunhua-speaking communities of Hainan depended on coastal fishing and tropical agriculture."; lm="local_fish_output_modifier = 0.1"; lc="# Hainan's warm tropical waters supported abundant fishing for coastal communities."}

# Cantonese/Yue
foreach ($c in @("yuehai_culture","xinhui_culture","malao_culture","huazhou_culture","gaozhou_culture","wuchuan_culture","yangjiang_culture","guangxin_culture","tubai_culture","yulin_culture","danzhou_culture","mai_culture_culture","guibei_culture","guinan_culture")) {
    $modifiers[$c] = @{cm="trade_efficiency = 0.05"; cc="# The Yue-speaking regions of Guangdong and Guangxi were major centers of maritime and overland trade in southern China."; lm="local_production_efficiency = 0.05"; lc="# The Pearl River Delta and Guangxi regions supported productive agriculture and growing commercial activity."}
}

# Mongolian
$modifiers["mongolian_culture"] = @{cm="army_cavalry_power = 0.15"; cc="# The Mongol cavalry tradition was unmatched in history, their mounted archery and steppe warfare dominating Eurasia for centuries."; lm="local_livestock_output_modifier = 0.15"; lc="# The Mongolian steppe's vast grasslands supported enormous herds of horses, sheep, and cattle."}

# Formosan
$modifiers["formosan_culture"] = @{cm="global_fish_output_modifier = 0.1"; cc="# Taiwan's indigenous Austronesian peoples were skilled fishermen and seafarers on the island's coasts and rivers."; lm="local_fish_output_modifier = 0.1"; lc="# The waters around Taiwan provided abundant fishing grounds for the island's indigenous communities."}

# Zhuang
$modifiers["zhuang_culture"] = @{cm="global_grain_output_modifier = 0.1"; cc="# The Zhuang were skilled rice farmers of Guangxi, practicing wet-rice agriculture in the river valleys of southern China."; lm="local_grain_output_modifier = 0.1"; lc="# The Zhuang homeland in Guangxi's river valleys supported productive rice paddy agriculture."}

# Hmong
$modifiers["hmong_culture"] = @{cm="global_livestock_output_modifier = 0.1"; cc="# The Hmong were highland swidden farmers and herders, cultivating upland rice and raising livestock in southern China's mountains."; lm="local_hostile_attrition = 0.1"; lc="# The remote mountain homeland of the Hmong was difficult terrain for Chinese imperial armies to pacify."}

# Yao
$modifiers["yao_china_culture"] = @{cm="global_livestock_output_modifier = 0.1"; cc="# The Yao (Iu Mien) were mountain-dwelling swidden farmers who maintained independence in the highlands of southern China."; lm="local_hostile_attrition = 0.1"; lc="# The Yao mountain homeland was remote and heavily forested, resisting outside control."}

# Yi
$modifiers["yi_culture"] = @{cm="army_infantry_power = 0.05"; cc="# The Yi (Nuosu) were fierce highland warriors of Yunnan and Sichuan, maintaining an independent caste-based society."; lm="local_hostile_attrition = 0.1"; lc="# The Yi homeland in the Liangshan Mountains was extremely rugged, resisting Chinese imperial control for centuries."}

# Tujia
$modifiers["tujia_culture"] = @{cm="global_grain_output_modifier = 0.05"; cc="# The Tujia were settled farmers in the mountains of Hunan and Hubei, cultivating rice on terraced hillsides."; lm="local_defensive = 0.1"; lc="# The Tujia mountain homeland in western Hunan provided natural defensive terrain."}

# Tibetan groups
foreach ($c in @("utsang_culture","khampa_culture","amdowa_culture")) {
    $modifiers[$c] = @{cm="global_livestock_output_modifier = 0.1"; cc="# Tibetan pastoral nomads herded yaks, sheep, and horses across the vast Tibetan Plateau, one of the world's highest inhabited regions."; lm="local_defensive = 0.15"; lc="# The extreme altitude and harsh climate of the Tibetan Plateau made it virtually impossible for outside armies to conquer."}
}
# Khampa specifically gets different country modifier
$modifiers["khampa_culture"] = @{cm="army_infantry_power = 0.05"; cc="# The Khampa warriors of eastern Tibet were among the fiercest fighters in Central Asia, renowned for their martial prowess."; lm="local_defensive = 0.15"; lc="# The rugged mountains and deep gorges of Kham made it extremely difficult terrain for outside armies."}

# Dai
$modifiers["dai_culture"] = @{cm="global_grain_output_modifier = 0.1"; cc="# The Dai people were skilled wet-rice farmers in the tropical valleys of Yunnan, culturally related to the Thai."; lm="local_grain_output_modifier = 0.1"; lc="# The fertile Dai river valleys in Yunnan supported productive rice agriculture in a tropical climate."}

# Bai
$modifiers["bai_culture"] = @{cm="trade_efficiency = 0.05"; cc="# The Bai of Dali in Yunnan maintained a sophisticated urban and commercial culture, heirs to the Nanzhao and Dali kingdoms."; lm="local_production_efficiency = 0.05"; lc="# Dali was a prosperous trading center connecting China with Southeast Asia and Tibet."}

# Uyghur
$modifiers["uyghur_culture"] = @{cm="trade_efficiency = 0.1"; cc="# The Uyghurs controlled the vital Silk Road oases of the Tarim Basin, profiting from trans-Asian caravan trade for centuries."; lm="local_production_efficiency = 0.1"; lc="# The irrigated oases of the Tarim Basin supported productive agriculture and Silk Road trading cities."}

# Small southern minorities - default to forest/mountain people
$defaultMinority = @{cm="global_livestock_output_modifier = 0.1"; cc="# This highland minority community maintained a pastoral and agricultural economy in the mountains of southern China."; lm="local_hostile_attrition = 0.1"; lc="# The remote mountainous homeland was difficult terrain for outside powers to penetrate and control."}
foreach ($c in @("kam_culture","hani_culture","hlai_culture","lisu_culture","sarta_culture","gelao_culture","bo_culture","lahu_culture","wa_culture","sui_culture","nashi_culture","rma_culture","gyalrong_culture","mi_niah_culture","monguor_culture","mulam_culture","maonan_culture","pumi_culture","ngacang_culture","nu_culture","jino_culture","palaung_culture","bonan_culture","yugur_culture","derung_culture","baima_culture","monpa_culture","blang_culture","jingpo_culture","salar_culture")) {
    $modifiers[$c] = $defaultMinority.Clone()
}

# Override specific notable minorities
$modifiers["sibe_culture"] = @{cm="army_cavalry_power = 0.05"; cc="# The Sibe were skilled mounted archers from Manchuria, later employed as frontier garrison troops."; lm="local_livestock_output_modifier = 0.1"; lc="# The Sibe maintained pastoral traditions of horse and cattle herding on the Manchurian plains."}
$modifiers["kyrgyz_culture"] = @{cm="army_cavalry_power = 0.1"; cc="# The Kyrgyz were steppe nomadic warriors, their cavalry tradition dominating the Tian Shan mountain region."; lm="local_livestock_output_modifier = 0.1"; lc="# The Kyrgyz alpine pastures of the Tian Shan supported horse and sheep herding."}

# Himalayan peoples
foreach ($c in @("sherpa_culture","ladakh_culture","changpa_culture","ngalop_culture","sikkim_culture","balti_culture")) {
    $modifiers[$c] = @{cm="global_livestock_output_modifier = 0.1"; cc="# This Himalayan community survived through pastoral herding and mountain agriculture at extreme altitudes."; lm="local_defensive = 0.15"; lc="# The extreme Himalayan altitude and terrain made this homeland virtually impregnable to outside forces."}
}
$modifiers["kirati_culture"] = @{cm="army_infantry_power = 0.05"; cc="# The Kirati peoples of eastern Nepal were fierce mountain warriors, ancestors of the legendary Gurkha fighting tradition."; lm="local_defensive = 0.15"; lc="# The steep eastern Himalayan terrain provided formidable natural defenses for Kirati communities."}

# Oirat
$modifiers["oirat_culture"] = @{cm="army_cavalry_power = 0.15"; cc="# The Oirat (Western Mongols) were fearsome steppe cavalry who forged powerful confederacies challenging Ming China and the Timurids."; lm="local_livestock_output_modifier = 0.15"; lc="# The vast Oirat steppe pastures supported enormous herds of horses and livestock."}

# NE Asian peoples
foreach ($c in @("mishmi_culture","tani_culture","tebbu_culture")) {
    $modifiers[$c] = @{cm="global_livestock_output_modifier = 0.1"; cc="# This mountain tribal community maintained a subsistence economy based on swidden agriculture and animal husbandry."; lm="local_hostile_attrition = 0.1"; lc="# The remote mountain and forest terrain was extremely difficult for outside forces to penetrate."}
}

# Nivkh
$modifiers["nivkh_culture"] = @{cm="global_fish_output_modifier = 0.15"; cc="# The Nivkh were expert fishermen of the Amur River and Sakhalin, their entire economy centered on salmon fishing."; lm="local_fish_output_modifier = 0.15"; lc="# The Amur River and Sakhalin coasts provided enormous salmon runs that sustained Nivkh communities."}

# Evenk and sub-cultures - all get same modifiers
$evenkDefault = @{cm="global_livestock_output_modifier = 0.1"; cc="# The Evenk were vast-ranging reindeer herders and hunters across the Siberian taiga, covering enormous territorial ranges."; lm="local_hostile_attrition = 0.15"; lc="# The immense Siberian taiga was one of the most hostile environments on Earth for outside military forces."}
foreach ($c in @("evenk_culture","olyokma_culture","aldan_culture","sym_culture","uchami_culture","ilimpeya_culture","ayan_mai_culture","fuglyad_culture","kantakul_culture","lamutk_culture","memel_culture","tugochar_culture","beldet_culture","lalagir_culture","selogon_culture","nanagir_culture","silyagir_culture","cemdal_culture","kondogir_culture","nyurmgan_culture","nyurilc_culture","kindigir_culture","managir_culture","pochegor_culture","vargagaits_culture","obgints_culture","vitimske_culture","nalyagir_culture")) {
    $modifiers[$c] = $evenkDefault.Clone()
}

# Even/Evesel
$modifiers["evesel_culture"] = @{cm="global_livestock_output_modifier = 0.1"; cc="# The Evens were reindeer herders and hunters of northeastern Siberia, adapted to extreme subarctic conditions."; lm="local_hostile_attrition = 0.15"; lc="# The remote northeastern Siberian taiga and tundra were among the most inhospitable regions on Earth."}
foreach ($c in @("sakkyryr_culture","nimchan_culture")) {
    $modifiers[$c] = @{cm="global_livestock_output_modifier = 0.1"; cc="# This Even subgroup herded reindeer across the vast northeastern Siberian wilderness."; lm="local_hostile_attrition = 0.15"; lc="# The remote Siberian terrain was virtually inaccessible to outside forces."}
}

# Chukchi and related
foreach ($c in @("chukchi_culture","alyutor_culture","kerek_culture","chuvan_culture")) {
    $modifiers[$c] = @{cm="global_livestock_output_modifier = 0.1"; cc="# This Arctic/sub-Arctic people survived through reindeer herding, sea mammal hunting, and fishing in extreme northeastern Siberia."; lm="local_hostile_attrition = 0.15"; lc="# The extreme Arctic conditions of the Chukotka region were lethal to unprepared outsiders."}
}

# Yukaghir-related
foreach ($c in @("omok_culture","anauls_culture","vadul_culture","olyuben_culture","yandin_culture","shoromba_culture","kolyms_culture","yandyr_culture","onoid_culture","khoromboy_culture")) {
    $modifiers[$c] = @{cm="global_livestock_output_modifier = 0.1"; cc="# This Yukaghir-related people subsisted on reindeer herding and hunting in the remote interior of northeastern Siberia."; lm="local_hostile_attrition = 0.15"; lc="# The vast, frozen Siberian interior was among the most inaccessible inhabited regions on Earth."}
}

# Koryak and Itelmen
$modifiers["koryak_culture"] = @{cm="global_fish_output_modifier = 0.1"; cc="# The Koryak were skilled fishermen and reindeer herders of the Kamchatka Peninsula and adjacent coasts."; lm="local_hostile_attrition = 0.15"; lc="# The volcanic, subarctic Kamchatka region was extremely remote and difficult to access."}
$modifiers["itelmen_culture"] = @{cm="global_fish_output_modifier = 0.15"; cc="# The Itelmen of Kamchatka were expert salmon fishermen, their economy entirely dependent on the peninsula's rich fish runs."; lm="local_fish_output_modifier = 0.15"; lc="# Kamchatka's rivers teemed with enormous salmon runs, supporting the Itelmen fishing economy."}

# Yupik
$modifiers["yupighyt_culture"] = @{cm="global_fish_output_modifier = 0.1"; cc="# The Siberian Yupik were expert sea mammal hunters and fishermen of the Bering Strait region."; lm="local_hostile_attrition = 0.15"; lc="# The Arctic Bering Strait region was among the most extreme environments inhabited by humans."}

# Tungusic peoples
foreach ($c in @("oroqen_culture","daur_culture","ulch_culture","oroch_culture","udege_culture")) {
    $modifiers[$c] = @{cm="global_livestock_output_modifier = 0.1"; cc="# This Tungusic people of the Amur region combined hunting, fishing, and pastoral traditions in the Manchurian forests."; lm="local_hostile_attrition = 0.1"; lc="# The dense forests and river systems of the Amur region were difficult terrain for outside military forces."}
}
$modifiers["daur_culture"] = @{cm="army_cavalry_power = 0.05"; cc="# The Daur were skilled horsemen and farmers of the upper Amur, maintaining Mongolic cavalry traditions."; lm="local_grain_output_modifier = 0.1"; lc="# The Daur practiced settled agriculture in the fertile Amur river valleys alongside pastoral herding."}

# Mongol groups
foreach ($c in @("buryat_culture","khamag_culture","kharchin_culture","tumed_culture")) {
    $modifiers[$c] = @{cm="army_cavalry_power = 0.1"; cc="# This Mongol group maintained the steppe cavalry traditions of Chinggis Khan's empire, fielding formidable mounted warriors."; lm="local_livestock_output_modifier = 0.1"; lc="# The Mongol steppe pastures supported large herds of horses, sheep, and cattle essential to the nomadic economy."}
}

# Tuvan
$modifiers["tuvan_culture"] = @{cm="army_cavalry_power = 0.05"; cc="# The Tuvans were steppe-forest nomads of the upper Yenisei, combining Mongol cavalry skills with Siberian hunting traditions."; lm="local_livestock_output_modifier = 0.1"; lc="# The Tuvan homeland in the Sayan Mountains combined alpine pastures with forest hunting grounds."}

# Now process the file
$lines = Get-Content $srcPath
$output = New-Object System.Collections.Generic.List[string]
$i = 0
$culturesProcessed = 0

while ($i -lt $lines.Count) {
    $line = $lines[$i]
    $output.Add($line)
    
    # Check if this line starts a culture definition
    if ($line -match '^(\w+)\s*=\s*\{') {
        $cultureName = $Matches[1]
        $hasModifiers = $modifiers.ContainsKey($cultureName)
        
        if ($hasModifiers) {
            $mod = $modifiers[$cultureName]
            # Find the tags line, then insert after the closing }
            $i++
            $foundTags = $false
            $insertPoint = -1
            
            while ($i -lt $lines.Count) {
                $line = $lines[$i]
                $output.Add($line)
                
                # Track if we've seen tags block
                if ($line -match '^\s*tags\s*=\s*\{') {
                    $foundTags = $true
                }
                
                # After tags, look for the next block (opinions, culture_groups, use_patronym, or closing brace)
                if ($foundTags -and ($line -match '^\s*\}$' -or $line -match '^\s*$') -and $insertPoint -eq -1) {
                    # Check if next non-empty line is opinions, culture_groups, use_patronym, or }
                    $j = $i + 1
                    while ($j -lt $lines.Count -and $lines[$j].Trim() -eq '') { $j++ }
                    if ($j -lt $lines.Count -and ($lines[$j] -match '^\s*(opinions|culture_groups|use_patronym|dynasty|$|}$)')) {
                        $insertPoint = $output.Count
                        # Insert modifiers
                        $output.Add("")
                        $output.Add("`tcountry_modifier = {")
                        $output.Add($mod.cc)
                        $output.Add("`t`t$($mod.cm)")
                        $output.Add("`t}")
                        $output.Add("")
                        $output.Add("`tlocation_modifier = {")
                        $output.Add($mod.lc)
                        $output.Add("`t`t$($mod.lm)")
                        $output.Add("`t}")
                        $culturesProcessed++
                        $foundTags = $false
                        break
                    }
                }
                
                # If we hit the closing brace of the culture, insert before it
                if ($line -match '^}$') {
                    if ($insertPoint -eq -1 -and $foundTags) {
                        # Remove the last line (closing brace) and insert modifiers before it
                        $output.RemoveAt($output.Count - 1)
                        $output.Add("")
                        $output.Add("`tcountry_modifier = {")
                        $output.Add($mod.cc)
                        $output.Add("`t`t$($mod.cm)")
                        $output.Add("`t}")
                        $output.Add("")
                        $output.Add("`tlocation_modifier = {")
                        $output.Add($mod.lc)
                        $output.Add("`t`t$($mod.lm)")
                        $output.Add("`t}")
                        $output.Add("}")
                        $culturesProcessed++
                    }
                    break
                }
                $i++
            }
        }
    }
    $i++
}

$output | Out-File -FilePath $outPath -Encoding UTF8
Write-Host "Processed $culturesProcessed cultures out of 188"
Write-Host "Output written to $outPath"
Write-Host "Output lines: $($output.Count)"

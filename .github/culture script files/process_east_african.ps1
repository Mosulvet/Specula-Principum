# Process east_african.txt
$base = "c:\Users\sages\OneDrive - Microsoft\Documents\GitHub\Specula-Principum"
. "$base\CulturalDifferencesOutput\Insert-CultureModifiers.ps1"

$m = @{}

# Major kingdoms/civilizations
$m["swahili_culture"] = @{cm="trade_efficiency = 0.15"; cc="# The Swahili city-states of Kilwa, Mombasa, and Zanzibar were among the greatest trading centers of the Indian Ocean world."; lm="local_fish_output_modifier = 0.1"; lc="# The Swahili coast combined rich Indian Ocean fishing with the lucrative gold, ivory, and slave trades."}
$m["shona_culture"] = @{cm="expand_rgo_mining_cost_modifier = -0.1"; cc="# The Shona built Great Zimbabwe and the Mutapa Empire, controlling the gold trade of southeastern Africa."; lm="local_iron_output_modifier = 0.1"; lc="# The Zimbabwe plateau contained rich gold and iron deposits exploited by Shona miners and smiths."}
$m["baganda_culture"] = @{cm="prestige = 5"; cc="# The Kingdom of Buganda was one of the most centralized and sophisticated states in the African Great Lakes region."; lm="local_grain_output_modifier = 0.1"; lc="# The fertile shores of Lake Victoria supported intensive banana cultivation that fed Buganda's large population."}
$m["rwanda_culture"] = @{cm="army_infantry_power = 0.05"; cc="# The Kingdom of Rwanda maintained one of the most disciplined military systems in the Great Lakes region."; lm="local_grain_output_modifier = 0.1"; lc="# Rwanda's terraced hillsides supported intensive agriculture despite the mountainous terrain."}

# Great Lakes Bantu
$bantuGL = @{cm="global_grain_output_modifier = 0.1"; cc="# This Great Lakes Bantu people practiced intensive agriculture, growing bananas, millet, and sorghum."; lm="local_grain_output_modifier = 0.1"; lc="# The fertile Great Lakes region's reliable rainfall supported productive agriculture."}
foreach ($c in @("haya_culture","rutara_culture","rukwa_culture")) {
    $m[$c] = $bantuGL.Clone()
}

# East African Bantu farmers
$bantuEA = @{cm="global_grain_output_modifier = 0.1"; cc="# This Bantu-speaking people practiced mixed agriculture, growing sorghum, millet, and other crops."; lm="local_grain_output_modifier = 0.1"; lc="# The East African coastal and inland regions supported productive mixed farming."}
foreach ($c in @("bena_culture","makhuwa_culture","matuumbi_culture","ruvu_culture","sena_culture","seuta_culture","tumbuka_culture","nyamwezi_culture")) {
    $m[$c] = $bantuEA.Clone()
}

$m["nyamwezi_culture"] = @{cm="trade_efficiency = 0.1"; cc="# The Nyamwezi were the greatest long-distance traders of interior East Africa, organizing caravan routes to the coast."; lm="local_grain_output_modifier = 0.1"; lc="# The Nyamwezi homeland in central Tanzania supported agriculture alongside their trading economy."}
$m["chewa_culture"] = @{cm="global_grain_output_modifier = 0.1"; cc="# The Chewa/Maravi built a large empire in what is now Malawi and Mozambique, known for their agricultural productivity."; lm="local_grain_output_modifier = 0.1"; lc="# The Shire Valley and Lake Malawi shore supported productive Chewa farming communities."}
$m["luhya_culture"] = @{cm="global_grain_output_modifier = 0.1"; cc="# The Luhya were settled agriculturalists of western Kenya, growing millet, sorghum, and beans."; lm="local_grain_output_modifier = 0.1"; lc="# The fertile highlands of western Kenya provided productive farmland for Luhya communities."}
$m["yao_culture"] = @{cm="trade_efficiency = 0.05"; cc="# The Yao were skilled long-distance traders of southeastern Africa, linking the interior to the Swahili coast."; lm="local_grain_output_modifier = 0.1"; lc="# The Yao homeland between Lake Malawi and the coast supported mixed agriculture."}
$m["tsonga_culture"] = @{cm="trade_efficiency = 0.05"; cc="# The Tsonga were traders and farmers of coastal Mozambique, intermediaries between the interior and the Indian Ocean trade."; lm="local_fish_output_modifier = 0.1"; lc="# The Mozambican coast provided rich fishing grounds alongside agricultural production."}

# Nilotic peoples
$m["maasai_culture"] = @{cm="army_infantry_power = 0.1"; cc="# The Maasai were the most feared warriors of East Africa, their moran warrior system producing elite fighters."; lm="local_livestock_output_modifier = 0.15"; lc="# The Maasai Mara and Serengeti grasslands supported enormous cattle herds central to Maasai identity."}
$m["kalenjin_culture"] = @{cm="global_livestock_output_modifier = 0.1"; cc="# The Kalenjin were agro-pastoralists of the Kenyan Rift Valley, combining cattle herding with highland agriculture."; lm="local_livestock_output_modifier = 0.1"; lc="# The Kenyan Rift Valley highlands provided excellent grazing and farming conditions."}
$m["luo_culture"] = @{cm="global_fish_output_modifier = 0.1"; cc="# The Luo were Nilotic fishermen and farmers who settled around Lake Victoria, the largest lake in Africa."; lm="local_fish_output_modifier = 0.1"; lc="# Lake Victoria provided abundant freshwater fishing for Luo lakeside communities."}
$m["turkana_culture"] = @{cm="global_livestock_output_modifier = 0.1"; cc="# The Turkana were fierce nomadic pastoralists of the arid northwest Kenyan borderlands."; lm="local_hostile_attrition = 0.15"; lc="# The Turkana homeland around Lake Turkana was one of the most arid inhabited regions in East Africa."}

# Other Nilotic/Cushitic/Khoisan
foreach ($c in @("ongamo_culture","tatoga_culture","singa_culture")) {
    $m[$c] = @{cm="global_livestock_output_modifier = 0.1"; cc="# This pastoral people herded cattle and small stock across the East African savanna."; lm="local_livestock_output_modifier = 0.1"; lc="# The East African grasslands supported pastoral herding economies."}
}
foreach ($c in @("dhaasanac_culture","rendille_culture","south_cushitic_culture")) {
    $m[$c] = @{cm="global_livestock_output_modifier = 0.1"; cc="# This Cushitic pastoral people herded camels, cattle, and goats in the arid Horn of Africa borderlands."; lm="local_hostile_attrition = 0.1"; lc="# The semi-arid lowlands of the Kenya-Ethiopia-Somalia borderlands were harsh, dry terrain."}
}
$m["dahalo_culture"] = @{cm="global_fish_output_modifier = 0.1"; cc="# The Dahalo were coastal hunter-gatherers and fishermen of the Kenyan coast."; lm="local_fish_output_modifier = 0.1"; lc="# The Kenyan coast provided fishing for the small Dahalo community."}
$m["sandawe_culture"] = @{cm="land_morale = 0.05"; cc="# The Sandawe were ancient hunter-gatherers of central Tanzania, speaking a click language related to the Khoisan."; lm="local_hostile_attrition = 0.1"; lc="# The dry central Tanzanian bush was difficult terrain for outsiders to penetrate."}
$m["hadza_culture"] = @{cm="land_morale = 0.05"; cc="# The Hadza were among the last pure hunter-gatherer peoples in Africa, surviving for millennia around Lake Eyasi."; lm="local_hostile_attrition = 0.1"; lc="# The Lake Eyasi rift valley was remote terrain where only the Hadza could thrive."}
$m["mbugu_culture"] = @{cm="global_grain_output_modifier = 0.05"; cc="# The Mbugu (Ma'a) were a small mixed-language community in the Usambara Mountains of Tanzania."; lm="local_defensive = 0.1"; lc="# The Usambara Mountains provided natural defensive terrain for small communities."}

# Malagasy cultures (Austronesian origin)
$malagasyDefault = @{cm="global_grain_output_modifier = 0.1"; cc="# This Malagasy people descended from Austronesian seafarers who crossed the Indian Ocean, practicing rice cultivation."; lm="local_grain_output_modifier = 0.1"; lc="# Madagascar's varied terrain supported rice cultivation in the highlands and other crops in the coastal lowlands."}
foreach ($c in @("tsimihety_culture","tanala_culture","mahafaly_culture","bezanozano_culture","betsimisaraka_culture","bara_culture","antanosy_culture","antankarana_culture","tandroy_culture","antambahoaka_culture","antaisaka_culture","antaifasy_culture","betsileo_culture","sihanaka_culture","vazimba_culture")) {
    $m[$c] = $malagasyDefault.Clone()
}
$m["merina_culture"] = @{cm="prestige = 5"; cc="# The Merina Kingdom of highland Madagascar was the island's most powerful state, with sophisticated wet-rice agriculture and ironworking."; lm="local_grain_output_modifier = 0.15"; lc="# The Merina homeland in the central Madagascar highlands supported intensive wet-rice terraces."}
$m["sakalava_culture"] = @{cm="global_livestock_output_modifier = 0.1"; cc="# The Sakalava founded a powerful kingdom on Madagascar's west coast, controlling cattle-herding and Indian Ocean trade."; lm="local_livestock_output_modifier = 0.1"; lc="# Western Madagascar's dry plains supported large cattle herds central to Sakalava culture."}
$m["vezo_culture"] = @{cm="global_fish_output_modifier = 0.15"; cc="# The Vezo were expert seafaring fishermen of Madagascar's southwest coast, their identity defined by the sea."; lm="local_fish_output_modifier = 0.15"; lc="# The warm waters of the Mozambique Channel provided abundant fishing for the Vezo."}
$m["zafiraminia_culture"] = @{cm="trade_efficiency = 0.05"; cc="# The Zafiraminia claimed Arab/Islamic ancestry and were among the earliest Muslim trading communities on Madagascar."; lm="local_fish_output_modifier = 0.1"; lc="# The northeastern Madagascar coast supported both fishing and maritime trade connections."}

Insert-CultureModifiers -SourcePath "$base\CulturalDifferencesSource\in_game\common\cultures\east_african.txt" `
    -OutputPath "$base\CulturalDifferencesOutput\in_game\common\cultures\east_african.txt" `
    -Modifiers $m

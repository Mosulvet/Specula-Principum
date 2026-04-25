# Process caribbean.txt and south_africa.txt
$base = "c:\Users\sages\OneDrive - Microsoft\Documents\GitHub\Specula-Principum"
. "$base\CulturalDifferencesOutput\Insert-CultureModifiers.ps1"

# === CARIBBEAN (8 cultures) ===
$m = @{}
$m["taino_culture"] = @{cm="global_grain_output_modifier = 0.1"; cc="# The Taino were skilled farmers who developed intensive cassava and maize cultivation, supporting the largest population in the pre-Columbian Caribbean."; lm="local_fish_output_modifier = 0.1"; lc="# The Caribbean waters around Hispaniola and Puerto Rico provided abundant fishing alongside Taino agriculture."}
$m["macorix_culture"] = @{cm="global_fish_output_modifier = 0.1"; cc="# The Macorix were fishing and farming people of eastern Hispaniola, likely related to earlier Caribbean settlers."; lm="local_fish_output_modifier = 0.1"; lc="# The northeastern coast of Hispaniola provided rich fishing grounds for the Macorix."}
$m["lucayo"] = @{cm="global_fish_output_modifier = 0.15"; cc="# The Lucayan Taino of the Bahamas were expert fishermen and divers in the shallow Caribbean waters."; lm="local_fish_output_modifier = 0.15"; lc="# The shallow Bahamian banks and coral reefs supported exceptionally abundant marine life."}
$m["ciboney"] = @{cm="global_fish_output_modifier = 0.15"; cc="# The Ciboney were among the earliest Caribbean peoples, subsisting primarily on fishing and shellfish gathering."; lm="local_fish_output_modifier = 0.15"; lc="# The Cuban and Hispaniolan coastlines provided abundant shellfish and fishing for Ciboney communities."}
$m["guanahatabey"] = @{cm="global_fish_output_modifier = 0.15"; cc="# The Guanahatabey were the oldest known inhabitants of Cuba, living as coastal fishermen and gatherers."; lm="local_fish_output_modifier = 0.15"; lc="# Western Cuba's coastal caves and shores supported the Guanahatabey fishing and gathering economy."}
$m["carib"] = @{cm="global_sailors_modifier = 0.1"; cc="# The Island Caribs (Kalinago) were fearsome warrior-seafarers who conquered the Lesser Antilles through seaborne raids."; lm="local_fish_output_modifier = 0.1"; lc="# The Lesser Antilles chain provided rich fishing grounds and staging points for Carib maritime expeditions."}
$m["igneri"] = @{cm="global_fish_output_modifier = 0.1"; cc="# The Igneri were Arawakan farming and fishing people of the Lesser Antilles, predecessors of the Island Caribs."; lm="local_fish_output_modifier = 0.1"; lc="# The Lesser Antilles island waters provided abundant fishing for Igneri coastal communities."}
$m["ciguayo_culture"] = @{cm="global_fish_output_modifier = 0.1"; cc="# The Ciguayo were a distinct indigenous people of northeastern Hispaniola, living by fishing and agriculture."; lm="local_fish_output_modifier = 0.1"; lc="# The northeastern Hispaniola coast and Samana Bay provided rich fishing for Ciguayo communities."}

Insert-CultureModifiers -SourcePath "$base\CulturalDifferencesSource\in_game\common\cultures\caribbean.txt" `
    -OutputPath "$base\CulturalDifferencesOutput\in_game\common\cultures\caribbean.txt" `
    -Modifiers $m

# === SOUTH AFRICA (23 cultures) ===
$m = @{}
# Bantu peoples
foreach ($c in @("xhosa_culture","nguni_culture")) {
    $m[$c] = @{cm="global_livestock_output_modifier = 0.1"; cc="# The Nguni peoples were pastoral cattle-herders whose wealth was measured in cattle, forming the foundation of their social system."; lm="local_livestock_output_modifier = 0.1"; lc="# The grasslands of southeastern Africa provided excellent grazing for large Nguni cattle herds."}
}
foreach ($c in @("tswana_culture","sotho_culture")) {
    $m[$c] = @{cm="global_livestock_output_modifier = 0.1"; cc="# The Sotho-Tswana peoples were settled agro-pastoralists, combining cattle herding with grain cultivation on the highveld."; lm="local_grain_output_modifier = 0.1"; lc="# The South African highveld supported both cattle grazing and sorghum/millet agriculture."}
}
$m["venda_culture"] = @{cm="global_livestock_output_modifier = 0.1"; cc="# The Venda were cattle-herding people of the Limpopo region, maintaining trade connections with the Zimbabwe plateau."; lm="local_livestock_output_modifier = 0.1"; lc="# The Limpopo River valley provided grazing and agricultural land for Venda communities."}
$m["kalanga_culture"] = @{cm="expand_rgo_mining_cost_modifier = -0.1"; cc="# The Kalanga were connected to the Great Zimbabwe trading civilization, with knowledge of gold mining and metalworking."; lm="local_iron_output_modifier = 0.1"; lc="# The Zimbabwe plateau region contained significant gold and iron deposits exploited by the Kalanga."}

# Khoikhoi peoples
$khoi = @{cm="global_livestock_output_modifier = 0.1"; cc="# The Khoikhoi were pastoral herders of cattle and sheep, the first pastoralists of southern Africa."; lm="local_livestock_output_modifier = 0.1"; lc="# The semi-arid grasslands and scrublands of southern Africa supported Khoikhoi pastoral herding."}
foreach ($c in @("nama_culture","damara_culture","gonaqua_culture","khoemana_culture")) {
    $m[$c] = $khoi.Clone()
}

# San (Bushmen) peoples - hunter-gatherers
$san = @{cm="land_morale = 0.05"; cc="# The San were expert hunters and trackers whose knowledge of the harsh Kalahari environment was unmatched."; lm="local_hostile_attrition = 0.15"; lc="# The arid Kalahari and Karoo were extremely harsh environments where only the San could thrive."}
foreach ($c in @("naro_culture","shua_culture","tshwa_culture","khwe_culture","gxana_culture","xuukhoe_culture","kung_culture","amkoe_culture","hai_om_culture","xam_culture","xoon_culture","n_ng_culture","xegwi_culture")) {
    $m[$c] = $san.Clone()
}

Insert-CultureModifiers -SourcePath "$base\CulturalDifferencesSource\in_game\common\cultures\south_africa.txt" `
    -OutputPath "$base\CulturalDifferencesOutput\in_game\common\cultures\south_africa.txt" `
    -Modifiers $m

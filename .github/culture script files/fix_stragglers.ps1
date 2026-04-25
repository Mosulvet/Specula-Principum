# Fix remaining stragglers (files still >50%)
$base = "c:\Users\sages\OneDrive - Microsoft\Documents\GitHub\Specula-Principum"
$outDir = "$base\CulturalDifferencesOutput\in_game\common\cultures"
. "$base\CulturalDifferencesOutput\Replace-CultureModifier.ps1"

# ========== AUSTRALIAN CM: global_fish 94/187 (50.3%) - need 1 more ==========
Write-Host "--- australian.txt (stragglers) ---"
$cmFix = @{}
$cmFix["yir_yoront_culture"] = @{comment="# The Yir Yoront of Cape York maintained elaborate ceremonial exchange networks trading stone axes and other goods."; modifier="trade_efficiency = 0.05"}
Replace-CultureModifier -FilePath "$outDir\australian.txt" -BlockType "country_modifier" -Replacements $cmFix

# AUSTRALIAN LM: local_hostile 95/187 (50.8%) - need 2 more
$lmFix = @{}
$lmFix["wik_culture"] = @{comment="# The Wik peoples of western Cape York managed their territories through sophisticated fire-stick farming practices."; modifier="local_grain_output_modifier = 0.05"}
$lmFix["yir_yoront_culture"] = @{comment="# The Yir Yoront territory along the Mitchell River provided seasonal fishing and aquatic resources."; modifier="local_fish_output_modifier = 0.1"}
Replace-CultureModifier -FilePath "$outDir\australian.txt" -BlockType "location_modifier" -Replacements $lmFix

# ========== BRASILIAN LM: local_hostile 48/88 (54.5%) - need 5 more ==========
Write-Host "--- brasilian.txt (stragglers) ---"
$lmFix = @{}
$lmFix["ava_culture"] = @{comment="# The Ava-Guarani managed productive agricultural clearings in the forest with maize and manioc gardens."; modifier="local_grain_output_modifier = 0.1"}
$lmFix["kren_culture"] = @{comment="# The Kren-Yê (Canela) homeland's cerrado savanna provided natural defensive terrain for their large circular villages."; modifier="local_defensive = 0.1"}
$lmFix["timbira_culture"] = @{comment="# The Timbira built defensive circular villages in the cerrado savanna with natural fire-break clearings."; modifier="local_defensive = 0.1"}
$lmFix["akwe_culture"] = @{comment="# The Akwẽ-Xerente's cerrado territory supported hunting and gathering in managed savanna landscapes."; modifier="local_grain_output_modifier = 0.05"}
$lmFix["panara_culture"] = @{comment="# The Panará maintained well-defended circular village compounds in their Mato Grosso forest territory."; modifier="local_defensive = 0.1"}
Replace-CultureModifier -FilePath "$outDir\brasilian.txt" -BlockType "location_modifier" -Replacements $lmFix

# ========== EASTCOAST CM: global_grain 56/109 (51.4%) - need 2 more ==========
Write-Host "--- eastcoast.txt (stragglers) ---"
$cmFix = @{}
$cmFix["powhatan_culture"] = @{comment="# The Powhatan Confederacy combined Chesapeake Bay fishing and shellfish gathering with farming."; modifier="global_fish_output_modifier = 0.1"}
$cmFix["issati_culture"] = @{comment="# The Mdewakanton (Issati) Dakota were skilled hunters and warriors of the Great Lakes-Plains frontier."; modifier="army_infantry_power = 0.05"}
Replace-CultureModifier -FilePath "$outDir\eastcoast.txt" -BlockType "country_modifier" -Replacements $cmFix

# EASTCOAST LM: local_grain 60/109 (55%) - need 6 more
$lmFix = @{}
$lmFix["issati_culture"] = @{comment="# The Great Lakes wild rice beds and bison-rich prairie margins provided diverse food resources."; modifier="local_livestock_output_modifier = 0.1"}
$lmFix["muscogee_culture"] = @{comment="# The Muscogee (Creek) controlled productive trade networks connecting Gulf Coast and interior peoples."; modifier="local_trade_output_modifier = 0.1"}
$lmFix["cherokee_culture"] = @{comment="# The southern Appalachian mountains provided the Cherokee with naturally defensive terrain."; modifier="local_defensive = 0.15"}
$lmFix["chalahgawtha_culture"] = @{comment="# The Shawnee warriors defended their Ohio Valley territories with guerrilla warfare from forest cover."; modifier="local_defensive = 0.1"}
$lmFix["mekoche_culture"] = @{comment="# The Mekoche Shawnee maintained productive garden settlements along Ohio River tributaries."; modifier="local_fish_output_modifier = 0.1"}
$lmFix["kispoko_culture"] = @{comment="# The Kispoko Shawnee were the warrior division, controlling defensive positions along the Ohio Valley."; modifier="local_defensive = 0.1"}
Replace-CultureModifier -FilePath "$outDir\eastcoast.txt" -BlockType "location_modifier" -Replacements $lmFix

# ========== PAPUAN LM: local_hostile 69/135 (51.1%) - need 2 more ==========
Write-Host "--- papuan.txt (stragglers) ---"
$lmFix = @{}
$lmFix["baruga_culture"] = @{comment="# The Baruga homeland's fertile coastal lowlands supported productive garden agriculture."; modifier="local_grain_output_modifier = 0.1"}
$lmFix["suena_culture"] = @{comment="# The Suena territory in the northern lowlands supported productive taro and sweet potato cultivation."; modifier="local_grain_output_modifier = 0.1"}
Replace-CultureModifier -FilePath "$outDir\papuan.txt" -BlockType "location_modifier" -Replacements $lmFix

# ========== PERMIC (CM: global_livestock 4/6=67%, LM: local_hostile 5/6=83%) ==========
Write-Host "--- permic.txt ---"
$cmFix = @{}
$cmFix["komi_culture"] = @{comment="# The Komi were active participants in the Pechora fur trade, exchanging pelts with Novgorodian merchants."; modifier="trade_efficiency = 0.05"}
Replace-CultureModifier -FilePath "$outDir\permic.txt" -BlockType "country_modifier" -Replacements $cmFix

$lmFix = @{}
$lmFix["komi_culture"] = @{comment="# The Pechora and Vychegda rivers provided freshwater fishing alongside the fur trade."; modifier="local_fish_output_modifier = 0.1"}
$lmFix["udmurt_culture"] = @{comment="# The Udmurt territory along the Kama River supported productive agriculture with rye and barley."; modifier="local_grain_output_modifier = 0.1"}
Replace-CultureModifier -FilePath "$outDir\permic.txt" -BlockType "location_modifier" -Replacements $lmFix

Write-Host "`nStraggler fixes complete."

# Fix oceanic.txt - LM local_fish_output_modifier overuse (64/66 = 97%)
# Target: get below 50% by changing ~34 cultures
$base = "c:\Users\sages\OneDrive - Microsoft\Documents\GitHub\Specula-Principum"
. "$base\CulturalDifferencesOutput\Replace-CultureModifier.ps1"

$lmFixes = @{}

# Melanesian agricultural cultures (New Caledonia + Vanuatu) - taro/yam/breadfruit were primary subsistence
# These already have CM: global_grain_output_modifier, so LM should reflect agriculture too
foreach ($c in @(
    # New Caledonia
    "cemuhi_culture","drehu_culture","fwai_culture","ndrumbea_culture","nengone_culture",
    "numee_culture","nyelayu_culture","paici_culture","tiri_culture","xaracuu_culture","yuanga_culture",
    # Vanuatu
    "lenakel_culture","lewo_culture","maewo_culture","malakula_culture","ambrym_culture",
    "ambae_culture","nakanamanga_culture","tolomako_culture","valpei_culture","sakao_culture",
    "sie_culture","apma_culture","akei_culture","anejom_culture","mwotlap_culture","tamambo_culture",
    # Also New Caledonia
    "ajie_culture","natugu_culture"
)) {
    $lmFixes[$c] = @{comment="# Melanesian volcanic islands supported intensive taro, yam, and breadfruit cultivation as the primary food source."; modifier="local_grain_output_modifier = 0.1"}
}

# Trading cultures - had notable inter-island exchange networks
$lmFixes["tonga_oceania_culture"] = @{comment="# The Tu'i Tonga maritime empire controlled vast Pacific trade networks spanning Fiji, Samoa, and beyond."; modifier="local_trade_output_modifier = 0.15"}
$lmFixes["tagata_samoa_culture"] = @{comment="# Samoa was a key node in the Polynesian trade network, exchanging fine mats, tools, and ceremonial goods."; modifier="local_trade_output_modifier = 0.1"}
$lmFixes["yap_culture"] = @{comment="# Yap's famous stone money (rai) system and extensive inter-island trade network were unique in the Pacific."; modifier="local_trade_output_modifier = 0.15"}
$lmFixes["roviana_culture"] = @{comment="# The Roviana chiefdom in the New Georgia group controlled inter-island trade and raiding networks."; modifier="local_trade_output_modifier = 0.1"}

# Defensive/warrior cultures
$lmFixes["maori_culture"] = @{comment="# The Maori built sophisticated pa (fortified settlements) with palisades, ditches, and fighting stages."; modifier="local_defensive = 0.15"}
$lmFixes["enana_culture"] = @{comment="# The Marquesans built massive stone platforms (me'ae) and fortified ridgeline settlements for defense."; modifier="local_defensive = 0.1"}

Replace-CultureModifier -FilePath "$base\CulturalDifferencesOutput\in_game\common\cultures\oceanic.txt" -BlockType "location_modifier" -Replacements $lmFixes

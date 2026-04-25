# Process eastcoast.txt (109 cultures)
$base = "c:\Users\sages\OneDrive - Microsoft\Documents\GitHub\Specula-Principum"
. "$base\CulturalDifferencesOutput\Insert-CultureModifiers.ps1"

$m = @{}

# Haudenosaunee (Iroquois Confederacy) - powerful nations
$iroquois = @{cm="army_infantry_power = 0.05"; cc="# This Haudenosaunee nation was part of the Iroquois Confederacy, one of the most sophisticated political systems in the pre-Columbian Americas."; lm="local_grain_output_modifier = 0.1"; lc="# The Haudenosaunee practiced intensive Three Sisters (maize, beans, squash) agriculture in the northeastern forests."}
foreach ($c in @("kanienkehaka_culture","onyotaaka_culture","onondagega_culture","gayogohono_culture","onondowaga_culture","onojutta_culture")) {
    $m[$c] = $iroquois.Clone()
}
$m["kanienkehaka_culture"] = @{cm="army_infantry_power = 0.1"; cc="# The Mohawk (Kanienkehaka) were the 'Keepers of the Eastern Door' of the Iroquois Confederacy, the fiercest warriors of the Northeast."; lm="local_grain_output_modifier = 0.1"; lc="# The Mohawk River valley supported intensive Three Sisters agriculture."}

# Iroquoian non-Confederacy
foreach ($c in @("carantouan_culture","atrakwaye_culture","nottoway_culture","skarureh_culture","wenrohronon_culture","kentaientonga_culture","erielhonan_culture","honniasont_culture")) {
    $m[$c] = @{cm="global_grain_output_modifier = 0.1"; cc="# This Iroquoian people practiced settled agriculture and maintained fortified village communities."; lm="local_grain_output_modifier = 0.1"; lc="# The northeastern forests and river valleys supported productive Three Sisters farming."}
}

# Cherokee
$m["cherokee_culture"] = @{cm="prestige = 5"; cc="# The Cherokee were the largest and most politically sophisticated nation of the American Southeast, with a complex chiefdom system."; lm="local_grain_output_modifier = 0.1"; lc="# The Southern Appalachian valleys supported intensive Cherokee farming of maize, beans, and squash."}
foreach ($c in @("guwahiyi_culture","otali_culture")) {
    $m[$c] = @{cm="global_grain_output_modifier = 0.1"; cc="# This Cherokee-related community practiced settled agriculture in the Southern Appalachian Mountains."; lm="local_grain_output_modifier = 0.1"; lc="# The Appalachian mountain valleys supported productive farming communities."}
}

# Muscogee Creek Confederacy
$m["muscogee_culture"] = @{cm="prestige = 5"; cc="# The Muscogee (Creek) Confederacy was one of the most powerful Native alliances in the Southeast, with a sophisticated political structure."; lm="local_grain_output_modifier = 0.1"; lc="# The Creek homeland's river valleys supported intensive maize agriculture."}
$creekRelated = @{cm="global_grain_output_modifier = 0.1"; cc="# This Muscogee-related people were settled farmers of the southeastern woodlands."; lm="local_grain_output_modifier = 0.1"; lc="# The southeastern river valleys supported productive farming communities."}
foreach ($c in @("coosa_culture","coweta_culture","tuckabatchee_culture","hitchiti_culture","eufaula_culture","sawokli_culture","oconee_culture","tamathli_culture")) {
    $m[$c] = $creekRelated.Clone()
}

# Chickasaw and Choctaw
$m["chickasaw_culture"] = @{cm="army_infantry_power = 0.05"; cc="# The Chickasaw were among the most formidable warriors in the Southeast, never defeated in their homeland."; lm="local_grain_output_modifier = 0.1"; lc="# The Chickasaw homeland's prairies and woodlands supported mixed farming and hunting."}
$m["choctaw_culture"] = @{cm="global_grain_output_modifier = 0.1"; cc="# The Choctaw were the largest nation of the Southeast, known as master farmers producing enormous maize surpluses."; lm="local_grain_output_modifier = 0.15"; lc="# The Choctaw heartland's rich Mississippi bottomlands supported intensive maize agriculture."}

# Natchez and lower Mississippi mound-builders
$m["natchez_culture"] = @{cm="prestige = 5"; cc="# The Natchez maintained the last great Mississippian chiefdom, with a divine Sun King and elaborate temple mound ceremonialism."; lm="local_grain_output_modifier = 0.1"; lc="# The Natchez bluffs above the Mississippi supported productive farming."}
$m["cahokia_culture"] = @{cm="prestige = 5"; cc="# The Cahokia mound complex was the largest pre-Columbian city north of Mexico, a monumental achievement of Mississippian civilization."; lm="local_grain_output_modifier = 0.15"; lc="# The American Bottom floodplain near Cahokia was one of the most productive agricultural zones in eastern North America."}
foreach ($c in @("tunica_culture","acolapissa_culture","mobile_culture","chatot_culture","kaskinampo_culture","kahokiaki_culture","kaskankaham_culture")) {
    $m[$c] = @{cm="global_grain_output_modifier = 0.1"; cc="# This Mississippi Valley people practiced mound-building and intensive floodplain agriculture."; lm="local_grain_output_modifier = 0.1"; lc="# The Mississippi River floodplains supported productive farming for settled communities."}
}

# Apalachee and Gulf Coast
$m["apalachee_culture"] = @{cm="global_grain_output_modifier = 0.15"; cc="# The Apalachee were the most productive farmers of the Florida region, growing enormous maize surpluses."; lm="local_grain_output_modifier = 0.15"; lc="# The Apalachee homeland in the Florida panhandle had the richest farmland in the Southeast."}
$m["timucua_culture"] = @{cm="global_grain_output_modifier = 0.1"; cc="# The Timucua were the largest indigenous group in Florida, combining farming with fishing and gathering."; lm="local_fish_output_modifier = 0.1"; lc="# The Florida interior and coast supported both farming and abundant fishing."}
$m["calusa_culture"] = @{cm="global_fish_output_modifier = 0.15"; cc="# The Calusa built a powerful chiefdom in southwestern Florida based entirely on fishing, without agriculture."; lm="local_fish_output_modifier = 0.15"; lc="# The rich estuarine waters of Charlotte Harbor and the Ten Thousand Islands supported enormous fisheries."}
foreach ($c in @("ais_culture","tocobaga_culture")) {
    $m[$c] = @{cm="global_fish_output_modifier = 0.1"; cc="# This Florida coastal people lived by fishing and shellfish gathering in the rich Gulf and Atlantic waters."; lm="local_fish_output_modifier = 0.1"; lc="# The Florida coast's warm waters supported abundant fishing and shellfish resources."}
}

# Southeastern piedmont/Siouan
foreach ($c in @("monacan_culture","tutelo_culture","catawba_culture","waccamaw_culture","moneton_culture","tsoyaha_culture")) {
    $m[$c] = @{cm="global_grain_output_modifier = 0.1"; cc="# This Siouan-speaking Southeastern people practiced agriculture in the Piedmont and Appalachian foothills."; lm="local_grain_output_modifier = 0.1"; lc="# The Piedmont river valleys supported productive Three Sisters farming."}
}

# Coastal southern peoples
foreach ($c in @("cusabo_culture","guale_culture","yamasee_culture","pamlico_culture","croatan_culture")) {
    $m[$c] = @{cm="global_grain_output_modifier = 0.05"; cc="# This coastal Southeastern people combined farming with fishing and shellfish gathering."; lm="local_fish_output_modifier = 0.1"; lc="# The southeastern Atlantic coast provided rich fishing and shellfish resources."}
}

# Algonquian coastal peoples - New England
$neAlgonquian = @{cm="global_fish_output_modifier = 0.1"; cc="# This Algonquian people combined farming with coastal fishing, hunting, and shellfish gathering."; lm="local_fish_output_modifier = 0.1"; lc="# The New England coast provided rich fishing and marine resources."}
foreach ($c in @("penobscot_culture","pennacook_culture","massachusett_culture","wampanoag_culture","quiripi_culture","pocumtuck_culture","narraganset_culture","pequot_culture")) {
    $m[$c] = $neAlgonquian.Clone()
}

# Mid-Atlantic Algonquian
$midAtlanticAlg = @{cm="global_grain_output_modifier = 0.1"; cc="# This Algonquian people practiced settled agriculture and fishing in the Mid-Atlantic coastal zone."; lm="local_grain_output_modifier = 0.1"; lc="# The Mid-Atlantic river valleys and coastline supported farming and fishing."}
foreach ($c in @("mahican_culture","unami_culture","munsee_culture","unalachtigo_culture","nanticoke_culture","piscataway_culture","doeg_culture","accomac_culture","nansemond_culture","rappahannock_culture")) {
    $m[$c] = $midAtlanticAlg.Clone()
}

# Powhatan
$m["powhatan_culture"] = @{cm="prestige = 5"; cc="# The Powhatan Confederacy was the most powerful alliance in the mid-Atlantic, uniting dozens of tribes under a paramount chief."; lm="local_grain_output_modifier = 0.1"; lc="# The Chesapeake Bay tidewater supported productive farming and abundant shellfish."}

# Dhegihan Siouan (Osage, Kansa, Quapaw, etc.)
foreach ($c in @("issati_culture","kansa_culture","osage_culture","quapaw_culture","omaha_culture","ponca_culture")) {
    $m[$c] = @{cm="army_infantry_power = 0.05"; cc="# This Siouan people were warrior-farmers of the prairie-woodland border, combining bison hunting with maize agriculture."; lm="local_grain_output_modifier = 0.1"; lc="# The Missouri and Ohio River valleys supported productive farming alongside prairie hunting."}
}

# Alabama/Koasati
foreach ($c in @("alabama_culture","koasati_culture")) {
    $m[$c] = @{cm="global_grain_output_modifier = 0.1"; cc="# This Muskogean people were settled farmers of the southeastern woodlands."; lm="local_grain_output_modifier = 0.1"; lc="# The Alabama and Coosa River valleys supported productive farming."}
}

# Shawnee
$shawnee = @{cm="army_infantry_power = 0.05"; cc="# The Shawnee were among the most widely-traveled and politically active nations of the Eastern Woodlands, renowned as warriors."; lm="local_grain_output_modifier = 0.1"; lc="# The Ohio Valley supported productive farming for Shawnee communities."}
foreach ($c in @("chalahgawtha_culture","mekoche_culture","kispoko_culture","pekowi_culture","hathawekela_culture")) {
    $m[$c] = $shawnee.Clone()
}

# Miami/Illinois
foreach ($c in @("atchakangouen_culture","piankeshaw_culture","wea_culture","peewareewa_culture","myaamia_culture","inoka_culture")) {
    $m[$c] = @{cm="global_grain_output_modifier = 0.1"; cc="# This Miami/Illinois people were farmers and hunters of the Great Lakes-Ohio Valley region."; lm="local_grain_output_modifier = 0.1"; lc="# The Ohio and Wabash River valleys supported productive farming."}
}

# Ho-Chunk and Iowa/Otoe
$m["hocak_culture"] = @{cm="global_grain_output_modifier = 0.1"; cc="# The Ho-Chunk (Winnebago) were powerful farmer-warriors of Wisconsin, maintaining influence between the Great Lakes and Plains."; lm="local_grain_output_modifier = 0.1"; lc="# The Wisconsin River valley supported productive farming for Ho-Chunk communities."}
foreach ($c in @("baxoje_culture","niuachi_culture")) {
    $m[$c] = @{cm="global_grain_output_modifier = 0.1"; cc="# This Siouan farming people combined agriculture with bison hunting on the prairie-woodland border."; lm="local_grain_output_modifier = 0.1"; lc="# The Iowa and Missouri prairies supported farming alongside seasonal hunting."}
}

# Dakota/Santee
foreach ($c in @("waghtochtatta_culture","wahpekhute_culture","sisithunwan_culture","bdewekhantunwan_culture","wahpetunwan_culture")) {
    $m[$c] = @{cm="global_grain_output_modifier = 0.05"; cc="# This Eastern Dakota people combined farming with hunting and gathering in the Minnesota woodlands."; lm="local_grain_output_modifier = 0.1"; lc="# The Minnesota lakes and woodlands supported farming, wild rice gathering, and hunting."}
}

# Ojibwe/Algonquian Great Lakes
foreach ($c in @("bodewadomik_culture","mamaceqtaw_culture","osaakiiwaki_culture","meskwaki_culture","kiwigapawa_culture","mascouten_culture")) {
    $m[$c] = @{cm="global_fish_output_modifier = 0.1"; cc="# This Great Lakes Algonquian people combined farming, fishing, and hunting across the woodlands."; lm="local_fish_output_modifier = 0.1"; lc="# The Great Lakes provided abundant fishing alongside wild rice and farming resources."}
}

# Remaining lower Mississippi/Gulf
foreach ($c in @("ofo_culture","chakchiuma_culture","taensa_culture","taneks_culture")) {
    $m[$c] = @{cm="global_grain_output_modifier = 0.05"; cc="# This Southeastern people practiced farming and fishing in the lower Mississippi region."; lm="local_grain_output_modifier = 0.1"; lc="# The Mississippi River floodplains supported farming for settled communities."}
}

Insert-CultureModifiers -SourcePath "$base\CulturalDifferencesSource\in_game\common\cultures\eastcoast.txt" `
    -OutputPath "$base\CulturalDifferencesOutput\in_game\common\cultures\eastcoast.txt" `
    -Modifiers $m

# EU5 Culture Modifier Project — Context & Continuation Guide

## Project Overview

This project adds `country_modifier` and `location_modifier` blocks to every culture definition in Europa Universalis 5 (Paradox grand strategy game) culture files. The modifiers reflect each culture's real-world strengths and characteristics circa ~1400 CE.

## File Paths

- **Workspace root**: `c:\Users\sages\OneDrive - Microsoft\Documents\GitHub\Specula-Principum`
- **Source files** (read-only): `CulturalDifferencesSource\in_game\common\cultures\*.txt`
- **Output files** (generated): `CulturalDifferencesOutput\in_game\common\cultures\*.txt`
- **Reusable insertion script**: `CulturalDifferencesOutput\Insert-CultureModifiers.ps1`
- **Reusable replacement script**: `CulturalDifferencesOutput\Replace-CultureModifier.ps1`
- **Custom agent definition**: `.github\agents\culture-modifiers.agent.md`

## Execution Environment

- Windows PowerShell 5.1
- Scripts must be run with: `powershell -ExecutionPolicy Bypass -File "path_to_script.ps1"`
- Direct dot-sourcing (`. script.ps1`) fails due to execution policy restrictions

## Culture File Format (Paradox EU5)

```
culture_name = {
    language = some_language
    color = map_color
    tags = { gfx_tag1 gfx_tag2 }

    culture_groups = {
        group1
        group2
    }

    country_modifier = {
        # Historical comment explaining the modifier choice
        modifier_name = value
    }

    location_modifier = {
        # Historical comment explaining the modifier choice
        modifier_name = value
    }

    opinions = {
        other_culture = positive/negative/kindred
    }
}
```

## Modifier Rules

### Allowed Modifiers (non-boolean only)

| Modifier | Typical Range | Use Case |
|----------|---------------|----------|
| `prestige` | 5 | Notable/prestigious cultures only |
| `diplomatic_reputation` | 1 | Diplomatic cultures |
| `trade_efficiency` | 0.05–0.15 | Trading peoples |
| `army_infantry_power` | 0.05–0.1 | Warrior peoples |
| `army_cavalry_power` | 0.05–0.1 | Horse-based warriors |
| `land_morale` | 0.05 | Resilient/fierce peoples |
| `global_fish_output_modifier` | 0.1–0.15 | Fishing peoples |
| `global_grain_output_modifier` | 0.05–0.15 | Agricultural peoples |
| `global_livestock_output_modifier` | 0.1–0.15 | Pastoral/herding peoples |
| `global_sailors_modifier` | 0.1 | Maritime/seafaring peoples |
| `global_production_efficiency` | 0.05–0.1 | Artisan/craft peoples |
| `local_fish_output_modifier` | 0.1–0.15 | Coastal/river fishing regions |
| `local_grain_output_modifier` | 0.05–0.15 | Fertile agricultural land |
| `local_livestock_output_modifier` | 0.1–0.15 | Pastoral land |
| `local_trade_output_modifier` | 0.1–0.15 | Trade hub locations |
| `local_hostile_attrition` | 0.1–0.15 | Harsh/remote terrain |
| `local_defensive` | 0.1–0.15 | Defensible terrain |
| `local_monthly_development` | 0.03–0.05 | Urbanized/developing regions |
| `local_production_efficiency` | 0.05–0.15 | Productive workshops |
| `local_iron_output_modifier` | 0.1 | Mining regions |
| `expand_rgo_mining_cost_modifier` | -0.1 | Mining peoples |
| `stability_cost_modifier` | -0.05 | Stable/cohesive societies |

### Placement Rules

1. Insert modifier blocks BEFORE the `opinions = {` block
2. If no `opinions`, insert before `culture_groups = {`
3. If neither, insert before closing `}`
4. Each block gets exactly ONE modifier + ONE comment
5. Use tab indentation (one tab for block, two tabs for contents)

### Quality Constraints

- **No modifier may exceed 50% usage** within a single file (key constraint added during QA)
- Each modifier must have a historically-accurate `# comment` inside the block
- Prioritize quality over speed — research each culture
- Values should be "moderately strong" within the ranges above

## Tools Created

### Insert-CultureModifiers.ps1

Reads a source culture file, inserts modifier blocks for all cultures listed in a hashtable, writes to output path.

```powershell
# Usage pattern:
$base = "c:\Users\sages\OneDrive - Microsoft\Documents\GitHub\Specula-Principum"
. "$base\CulturalDifferencesOutput\Insert-CultureModifiers.ps1"

$m = @{}
$m["culture_name"] = @{
    cm = "modifier_name = value"        # country_modifier content
    cc = "# Historical comment"         # country_modifier comment
    lm = "modifier_name = value"        # location_modifier content  
    lc = "# Historical comment"         # location_modifier comment
}

Insert-CultureModifiers -SourcePath "$base\CulturalDifferencesSource\in_game\common\cultures\filename.txt" `
    -OutputPath "$base\CulturalDifferencesOutput\in_game\common\cultures\filename.txt" `
    -Modifiers $m
```

Output: Reports "Processed X / Y cultures" and warns about any missing mappings.

### Replace-CultureModifier.ps1

Replaces existing modifier blocks in an already-generated output file. Used for the diversification pass.

```powershell
# Usage pattern:
$base = "c:\Users\sages\OneDrive - Microsoft\Documents\GitHub\Specula-Principum"
. "$base\CulturalDifferencesOutput\Replace-CultureModifier.ps1"

$fixes = @{}
$fixes["culture_name"] = @{
    comment = "# New historical comment"
    modifier = "new_modifier_name = value"
}

Replace-CultureModifier -FilePath "$outDir\filename.txt" `
    -BlockType "country_modifier" `  # or "location_modifier"
    -Replacements $fixes
```

## Current State (All Complete)

All 51 output files have been generated with 100% culture coverage (2,079 total cultures), and all pass the <50% modifier diversity check.

### File List with Culture Counts

| File | Cultures | Notes |
|------|----------|-------|
| alaska.txt | 41 | Arctic/subarctic peoples |
| arabia.txt | 11 | Arabian Peninsula |
| argentinian.txt | 52 | Southern South America |
| aridoamerican.txt | 46 | US Southwest/Northern Mexico |
| australian.txt | 187 | Aboriginal Australian |
| baltic.txt | 9 | Baltic region |
| bengal.txt | 26 | Bengal/Northeast India |
| brasilian.txt | 88 | Brazilian indigenous |
| british.txt | 9 | British Isles |
| canadian.txt | 40 | Canadian indigenous |
| caribbean.txt | 8 | Caribbean islands |
| carpathian.txt | 8 | Carpathian region |
| caucasian.txt | 15 | Caucasus |
| central_america.txt | 26 | Central America |
| central_north_american.txt | 51 | Central North America |
| dravidian.txt | 12 | South India |
| east_african.txt | 52 | East Africa |
| east_asia.txt | 188 | East Asia (largest file) |
| east_slavic.txt | 13 | Eastern Slavic |
| eastcoast.txt | 109 | US Eastern Seaboard |
| egypt.txt | 6 | Egypt/Nile |
| finno_ugric.txt | 20 | Finno-Ugric peoples |
| french.txt | 21 | French cultures |
| german.txt | 26 | German cultures |
| great_bassin.txt | 92 | US Pacific NW/Great Basin |
| greek.txt | 5 | Greek |
| horn_of_africa.txt | 40 | Horn of Africa |
| iberian.txt | 8 | Iberian Peninsula |
| indo_aryan.txt | 44 | North India |
| indonesia.txt | 123 | Indonesian archipelago |
| israelite.txt | 12 | Jewish diaspora |
| italian.txt | 19 | Italian |
| kongolese.txt | 64 | Central Africa |
| levantine.txt | 6 | Levant |
| maghrebi.txt | 13 | North Africa |
| mesoamerican.txt | 49 | Mesoamerica |
| netherlands.txt | 1 | Dutch (single culture) |
| oceanic.txt | 66 | Pacific islands |
| papuan.txt | 135 | Papua New Guinea |
| permic.txt | 6 | Permic peoples |
| persian.txt | 20 | Persian/Iranian |
| peruvian.txt | 75 | Andean/Peruvian |
| scandinavian.txt | 6 | Scandinavian |
| south_africa.txt | 23 | Southern Africa |
| south_east_asia.txt | 31 | Southeast Asia |
| south_slavic.txt | 9 | South Slavic |
| southamerican.txt | 49 | Northern South America |
| tartar.txt | 22 | Tatar/Mongol |
| turkic.txt | 7 | Turkic |
| west_african.txt | 80 | West Africa |
| west_slavic.txt | 10 | West Slavic |

## Verification Commands

### Check all files have 100% modifier coverage:
```powershell
$outDir = "CulturalDifferencesOutput\in_game\common\cultures\"
$srcDir = "CulturalDifferencesSource\in_game\common\cultures\"
Get-ChildItem $outDir -Filter "*.txt" | ForEach-Object {
    $content = Get-Content $_.FullName
    $cultures = (Get-Content (Join-Path $srcDir $_.Name) | Select-String "^(\w+)\s*=\s*\{").Count
    $cm = ($content | Select-String "country_modifier").Count
    $lm = ($content | Select-String "location_modifier").Count
    if ($cm -ne $cultures -or $lm -ne $cultures) { Write-Host "MISMATCH: $($_.Name)" }
}
```

### Check no modifier exceeds 50% per file:
```powershell
# Uses floor(total/2)+1 as the threshold (strictly >50%)
Get-ChildItem $outDir -Filter "*.txt" | ForEach-Object {
    $content = Get-Content $_.FullName
    $total = ($content | Select-String "^\w+\s*=\s*\{").Count
    if ($total -le 1) { return }
    $halfPlus = [math]::Floor($total / 2) + 1
    # ... parse CM/LM blocks and count modifier names ...
    # Flag any modifier with count >= $halfPlus
}
```

## Diversification Pass (Completed)

A QA pass identified files where a single modifier was used in >50% of cultures. The fix strategy:
- **Coastal/fishing → some changed to**: `trade_efficiency`, `army_infantry_power`, `land_morale`, `stability_cost_modifier`
- **Agricultural → some changed to**: `global_fish_output_modifier`, `trade_efficiency`, `army_infantry_power`, `expand_rgo_mining_cost_modifier`
- **Hostile terrain → some changed to**: `local_defensive`, `local_fish_output_modifier`, `local_grain_output_modifier`, `local_trade_output_modifier`

Replacements were historically justified (e.g., trading cultures got trade_efficiency, warrior cultures got infantry_power, defensive terrain cultures got local_defensive instead of hostile_attrition).

## Process Scripts (in CulturalDifferencesOutput/)

The following `process_*.ps1` and `fix_*.ps1` scripts document the exact modifier mappings used:
- `process_*.ps1` — Initial generation scripts (one per file)
- `fix_*.ps1` — Diversification pass scripts

These can be re-run if the source files change or if modifiers need adjustment.

## Potential Future Work

1. **Additional QA**: Verify that no two adjacent cultures in the same `culture_groups` have identical modifiers
2. **Balance pass**: Ensure no single modifier is globally dominant across ALL files combined
3. **Source updates**: If new cultures are added to source files, regenerate affected output files
4. **Value tuning**: Game testing may reveal some values are too strong/weak
5. **Multi-modifier support**: Currently each block has exactly 1 modifier; could expand to 2-3 per block if the game supports it

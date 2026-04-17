# Specula Principum - Detailed Features & Changes from Core EU Game

## Overview
This document provides a comprehensive list of all features, mechanics changes, and tweaks made to EU5 as part of the **Specula Principum** mod. Changes are organized by system and include original comment notes from the mod developer.

---

## TABLE OF CONTENTS
1. [Societal Values](#societal-values)
2. [Economy & Resource Management](#economy--resource-management)
3. [Building Costs & Construction](#building-costs--construction)
4. [Governance & Cabinet Actions](#governance--cabinet-actions)
5. [Military & Warfare](#military--warfare)
6. [Population & Demographics](#population--demographics)
7. [Religion & Beliefs](#religion--beliefs)
8. [Stability & Morale Systems](#stability--morale-systems)
9. [Country Mechanics & Estates](#country-mechanics--estates)
10. [Age & Era Specific Changes](#age--era-specific-changes)
11. [Specific Features & Special Mechanics](#specific-features--special-mechanics)
12. [AI Behavior Adjustments](#ai-behavior-adjustments)
13. [Miscellaneous Tweaks](#miscellaneous-tweaks)

---

## SUMMARY OF KEY CHANGES

### Top 10 Most Impactful Changes
1. **Building Times Doubled/Tripled** - Fort construction especially increased 3x
2. **RGO Base Time 3x Increase** (180 → 540 days) - Major economic slowdown
3. **Army Recruitment Extended** (30 → 90 days for infantry) - Extended military buildup
4. **Tax Efficiency Nerfed** - 7.5% base malus, increasing with size
5. **Literacy Growth Halved** - Slows tech progression significantly
6. **Unit Maintenance 20% Higher** - Increases operational costs
7. **Combat Dynamics Redesigned** - Assault, terrain, and naval crossing heavily adjusted
8. **Anti-Snowballing Restructured** - Reduced impact but maintained control pressure
9. **Estate System Rebalanced** - Changes to satisfaction and taxation
10. **Food System Adjusted** - Goods food values reduced, population growth more balanced

This mod represents a comprehensive rebalancing of Europa Universalis IV mechanics toward a more historically-paced, strategically-interesting experience with less exponential snowballing in the late game.

---

## DEVELOPER NOTES & INTENT

### Overall Philosophy
The Specula Principum mod aims to:
1. **Slow Down Early Game**: Building and recruitment take longer, making early expansion less snowball-y
2. **Make Resources Meaningful**: Increased costs mean strategic choices matter more
3. **Balance Large Empires**: Anti-snowballing measures prevent late-game dominance without crippling large nations
4. **Encourage Tall Play**: Bonuses to population-based growth encourage developing provinces deeply
5. **Improve AI Competency**: Adjusted AI parameters help the AI compete without being obviously overpowered
6. **Enhance Strategic Depth**: Longer build times and higher costs create more interesting economic decisions

### Known Adjustments & TODOs
- **Movement Locked Modifier**: Currently 0.25 (50% in vanilla). Could be dynamic based on general quality, light cavalry %, etc.
- **City Upgrade Costs**: Tied to age and decrease with age to create historical urbanization patterns
- **Levy Performance**: Nerfed via increased costs and combat adjustments to offset discipline bonus
- **Stability Impact**: Still being tuned to ensure it creates meaningful strategic choice
- **Cabinet Efficiency**: Tied to stability to create corruption-like effect on large empires

### Balance Testing Notes
- RGO production already has multiple nerfs (control, stacking, total numbers)
- Tax efficiency bonuses made more important due to snowballing reduction
- Estate satisfaction mechanics changed to prevent sudden revolts
- Literacy gains intentionally reduced to prevent tech runaway
- Advance costs scale progressively to slow tech progression

---

## Societal Values

### Societal Values - Centralization vs Decentralization
**Centralization Direction**:
- Crown estate power +0.5
- Distance from capital speed propagation -0.25 (flipped from vanilla)
- Court spending cost +0.1
- Subject loyalty -20
- Annexation speed +0.33
- Tax income efficiency +0.1
- Estate max tax +0.025
- Control importance +0.2

**Decentralization Direction**:
- Estate target satisfaction (medium bonus)
- Estate satisfaction recovery +0.002
- Distance from capital speed propagation +0.3 (flipped and increased)
- Crown estate power -0.5
- Subject income modifier +0.1
- Max control +0.1
- Annexation speed -0.75 (was -0.33)
- Tax income efficiency -0.15 (was -0.1)
- Subject loyalty +10

**Comment**: A centralized state propagates control LESS effectively but more efficiently. A decentralized state propagates more effectively but suffers from more powerful estates and less effective taxation.

### Societal Values - Individualism vs Communalism
- **Individualism**: Cabinet efficiency -0.25, tax efficiency +0.1
- **Communalism**: Cabinet efficiency +0.25, tax efficiency -0.1

**Comment**: Cabinet mostly functions on communal systems; individuals function with great efficiency overall.

### Societal Values - Land vs Naval
- **Land Direction**: Trade sea movement cost -0.25, trade land movement cost -0.1
- **Naval Direction**: Maritime presence -0.1, trade land movement cost -0.25

**Comment**: Tweaks to make land a bit more attractive.

### Societal Values - Serfdom vs Free Subjects
- **Serfdom**: Raw material output -0.05, peasant levy size -0.1, land morale +0.1
- **Free Subjects**: Pop promotion speed -0.5, levy combat efficiency +0.1, naval morale +0.1

**Comment**: Free societies have generally had superior navies due to higher technical knowledge requirements.

### Societal Values - Aristocracy vs Plutocracy
- **Aristocracy**: Cavalry power +0.065, court spending +0.03
- **Plutocracy**: Infantry power +0.05, levy combat efficiency +0.1, court spending +0.02

---

## Economy & Resource Management

### Anti-Snowballing & Balance

#### Country Size Maluses (Heavily Redesigned)
- **Reduced Impact**: Previous vanilla snowball measures heavily reduced for balance
- **Small Countries (100-500 econ base)**:
  - Court spending cost +0.0075
  - Tax efficiency -0.015
  - Legislative efficiency -0.0125
  - Cabinet efficiency -0.0125
  - Max control -0.0033 (reduced by 2/3)
  - Stability investment -0.0125
  - Diplomatic reputation -0.1
  - Antagonism received +0.01

- **Medium Countries (500-3000 econ base)**:
  - Similar structure with 0.01 scaling multiplier
  - Court spending +0.0075
  - Tax efficiency -0.0115
  - Legislative & Cabinet efficiency -0.0125

- **Large Countries (3000+ econ base)**:
  - Court spending +0.0075
  - Tax efficiency -0.01 (slightly better than medium)
  - Others same as medium

**AI Bonus**: AI gets small bonuses (subtract operations) to help balance

**Comment**: Removed crown power, trade, production, food, research maluses as they don't thematically fit (large nations should have advantages). Kept legislative, cabinet, stability as corruption representation. Increased several other maluses.

#### Literacy Growth Reduction
- **Scientific Revolution**: Global max literacy -5 (from 10)
- **Printing Press**: Global max literacy -2.5 (only 25% reduction; printing particularly impactful)
- **Enlightened Court**: Global max literacy -2.5
- **Written Alphabet**: Global max literacy -2.5, global monthly literacy -0.005
- **Educated Bureaucrats**: Global monthly literacy -0.005
- **Innovativeness**: Global max literacy -2.5
- **Humanism**: Global max literacy -5
- **Free Thinkers**: Global max literacy -2.5
- **Feudalism**: Global nobles max literacy -10 (from 20)
- **Organized Religion**: Global clergy max literacy -2.5
- **Guilds**: Global burghers max literacy -2.5
- **Global Advances**: Each estate-specific literacy advance -5

**Comment**: 50% reduction in global literacy max AND growth for all advances that aren't special to tag/area.

#### Advance Cost Scaling (Progressive Increases)
Each age increases building costs progressively:
- Renaissance: +5% building cost
- Discovery: +10% building cost
- Reformation: +20% building cost
- Absolutism: +30% building cost
- Revolutions: +40% building cost

Plus progressive RGO expansion cost increases and town upgrade cost modifiers.

**Comment**: These values are additive age to age. AI wasn't really making cities, so lowered town/city upgrade costs substantially.

### Tax Efficiency Nerfs
- **Base Tax Efficiency Malus**: -0.075 (7.5% default reduction)
  - Tiny countries: +0.1
  - Small countries: +0.05
  - Mid countries: -0.035
  - Normal countries: -0.075

**Comment**: Base malus on top of large maluses for larger economies. Bonuses now become a more important part of growth over time.

### Economical Base Calculations (Changed)
- **From Tax Base**: 0.5 (unchanged)
- **From Population**: 0.015 → 0.0235 (creates slight push towards tall play)
- **From Trade Value**: 0.2 → 0.15
- **From Trade Profit**: 0.2 → 0.4
- **Interest**: 0.25 (unchanged)
- **From Subject**: 0.05 → 0.04 (overly penalizes decentralized play)
- **From Institution**: 0.066 → 0.05

### Subject Upkeep
- **Subject Upkeep Rank Scale**: 0.25

### Market Mechanics
- **Burgher Trade Impact on Supply**: 0.1 → 0.25
- **Trade Impact on Supply**: 0.25 → 0.35
- **Burgher Trade Impact on Demand**: 0.25 → 0.35
- **Trade Impact on Demand**: 1.0 → 0.75

### Mothball Maintenance
- **Mothball Maintenance Factor**: 0.5 → 0.25 (Savings was too low)

### Estate Taxation
- **Nobles Estate Tax Impact**: -1.0 → -1.1 (functionally)
- **Burghers Estate Tax Impact**: -1.0 → -1.05 (functionally)

### Food & Agriculture
- **Goods Food Values (Reduced)**
  - Wheat: 8 → 6.0
  - Maize: 8 → 7.0
  - Rice: 10 → 8.5
  - Millet: 5 → 4.0
  - Wool: 5 → 3.5
  - Wild Game: 3.5 → 2.5
  - Fur: 2 → 1.5
  - Fish: 5 → 4.5

**Comment**: Lower food values to maintain proper population growth rates, as there are substantial nerfs elsewhere.

### Plantation Output
- **Sugar Plantation Output Modifier**: 0.1 → 0.09
- **Cotton Plantation Output Modifier**: 0.1 → 0.09
- **Tobacco Plantation Output Modifier**: 0.1 → 0.09
- **Slave Pop Satisfaction**: -0.005 → -0.0065

### Special Location Bonuses
- **Cyprus Sugar Output**: 0.5 (Venetian methods focused on quality)
- **Madeira Sugar Output**: 2.0 (largest sugar producer in world by ~1500)

**Comment**: It would be rad to have a 'sleeping sickness' for RGOs with sugar production event.

### RGO System
- **RGO Base Time**: 180 → 540 days (substantially slowed)
- **Max RGO Size**: 2.0 → 1.25
- **Local Monthly Prosperity**: 0.0025 (balanced)


- Descreased Tin & Copper costs for naval supplies (yes bronze is important for cannons, bells etc... but not that important)

---

## Building Costs & Construction

### General Building Cost Increases
- **Building prices increased by 20% across all ages**
  - Age of Tradition: 50 → 60 gold
  - Age of Renaissance: 100 → 120 gold
  - Age of Discovery: 200 → 240 gold
  - Age of Reformation: 400 → 480 gold
  - Age of Absolutism: 800 → 960 gold
  - Age of Revolution: 1200 → 1680 gold
  
- **Expensive building variants also increased by 20%**

### Building Construction Times (Doubled to Tripled)
- Guild, Workshop: 365 → 730 days
- Manufactory: 450 → 900 days
- Mills: 730 → 1460 days
- Cultural Buildings: 365 → 730 days
- Large Cultural Buildings: 730 → 1460 days
- Religious Buildings: 365 → 730 days
- Forts: Increased 3x (small: 365 → 1080, medium: 730 → 2190, large: 1080 → 3650 days)
- Small Port: 365 → 730 days
- Medium Port: 730 → 1460 days
- Large Port: 730 → 1460 days
- Huge Port: 1825 → 3650 days

**Intent**: Slow down building progression and make economic development more meaningful over time.

### Road Construction Costs
- **Gravel Road**: 10 → 17.5 gold
- **Paved Road**: 25 → 50 gold
- **Modern Road**: 50 → 100 gold
- **Railroad**: 100 → 200 gold

### RGO Expansion Costs (Substantially Increased)
- **Mining Expansion**: 50 → 90 gold (more resource intensive)
- **Farming Expansion**: 50 → 70 gold (lowered slightly to encourage food RGO investment)
- **Hunting Expansion**: 70 gold
- **Gathering Expansion**: 70 gold
- **Forestry Expansion**: 80 gold

**Comment**: These were increased, and in addition to substantial RGO increases in other areas, and an efficiency malus.

### City & Town Upgrade Costs
- **City Upgrade**: min_scale 2000
- **Town Upgrade**: min_scale 400
- City upgrade cost modifier decreases per age (1.0 in Age 1 → removed in later ages)
- **Intent**: Create more historical urbanization patterns

---

## Governance & Cabinet Actions

### Cabinet Actions Nerfed
- **Promote Culture**: Local pop assimilation speed -0.015 (base 0.04), monthly nationalist rebel growth +0.01
- **Assimilate Area**: Local pop assimilation speed -0.0075 (base 0.02), monthly nationalist rebel growth +0.01
- **Promote Religion**: Local pop conversion speed -0.015 (base 0.04), monthly nationalist rebel growth +0.01

**Comment**: ~25% reduction in cabinet action impact; these also scale with control which is generally lower.

### Integrate Province
- **Ability Changed**: Military → Administrative
- **Comment**: Military doesn't make sense, and there are already too many military actions.

### Study Islamic Texts Fix
- **Comment**: This was applying a societal modifier in the wrong direction.

### Study Institutions
- **Global Institution Growth Modifier**: +0.50
- **Comment**: Should be far more balanced than flat +1 institution growth in vanilla.

### Diplomatic Endeavors
- **Annexation Speed Modifier**: +0.33

### Reduce War Exhaustion
- **Restriction**: Can no longer reduce war exhaustion while at war
- **Monthly War Exhaustion Reduction**: -0.05 (when not at war)

### Cabinet Efficiency
- **Positive Stability Impact**: Country cabinet efficiency +0.1 (small bonus)
- **Negative Stability Impact**: Country cabinet efficiency -0.5 (as stability drops)

**Intent**: Make stability more important and function like an efficiency drag on council.

---

## Military & Warfare

### Unit Recruitment Times (Significantly Extended)
- **Standard Infantry**: 30 → 90 days
- **Standard Cavalry**: 45 → 135 days
- **Standard Artillery**: 60 → 180 days
- **Standard Auxiliary**: 30 → 90 days

**Comment**: Recruitment of regulars is way too fast in vanilla.

### Unit Maintenance Costs (Approximately 20% Higher)
- **Army Infantry**: 0.5 → 0.6 gold per strength
- **Cavalry Build**: 150 → 200 gold
- **Cavalry Maintenance**: 1.5 → 2.0 gold
- **Artillery Maintenance**: 2.0 → 2.5 gold
- **Auxiliary Maintenance**: 1.1 gold

### Navy Maintenance Costs (20-40% Higher)
- **Heavy Ship Build**: 50 → 80 gold
- **Heavy Ship Maintenance**: 0.5 → 1.25 gold (sailors: 0.2 → 0.06)
- **Light Ship Maintenance**: 0.25 → 0.5 gold
- **Galley Maintenance**: 0.25 → 0.4 gold
- **Transport Maintenance**: 0.25 → 0.4 gold (sailors: 0.2 → 0.01)

**Comment**: Heavy ships have vastly higher manpower requirements; Galleys require rowers; Transports don't need a fighting crew.

### Unit Specific Adjustments
- **Levy Recovery Months**: 240 → 180 months (help AI recover from bad wars)
- **Levy Maintenance Factor**: 0.01 → 0.1 (costs of levies were way too small in vanilla)
- **Levy Ship Size**: 0.005 → 0.0125 (helps AI recruiting)
- **Levy Maintenance**: All types increased by ~20%

### Artillery Changes
- **Artillery Attrition Loss**: 0.5 → 0.2 (20% extra attrition loss)
- **Artillery Damage Taken**: 1.25 → 0.75

### Combat Mechanics
- **Assault Attacker Morale Loss**: 0.3 → 1.5 (was 3.0 in 1.1.x)
  - Comment: Ideally, assaults with breaches would rarely be successful, and only sometimes with a breach
- **Sea Landing Dice**: -1 → -3
- **Strait Crossing Dice**: -2 → -4
- **River Crossing Dice**: -1 → -2
- **Siege Breach Impact**: 2 → 3
- **Retreat Strength Damage**: 0.1 → 0.25
  - Comment: Retreat is far too easy. Ideally dynamic based on unrouted cavalry strength comparison
- **Land Levy Combat Impact**: 0.50 → 0.60
- **Land War Exhaustion from Losses**: 100 → 150
- **Naval War Exhaustion from Losses**: 1.5 → 2.0

### Army Movement & Control
- **Army Movement Speed**: 0.13 → 0.09 (Slow down army movement)
- **Movement Locked**: 0.5 → 0.25 (Movement locked at 25% spent instead of 50%)
  - Comment: Make command and control a bit weightier. Ideally dynamic based on general/troop quality

### Experience System
- **Army Levy Experience Decay**: 0.02 → 0.015
- **Army Regular Experience Decay**: -0.01 → -0.002
- **Navy Levy Experience Decay**: 0.02 → 0.015
- **Navy Regular Experience Decay**: -0.002 → -0.005
- **In Combat Experience Decay**: -0.05 → -0.1 (negative decay means it increases)

**Intent**: Make experience a bit stickier.

### Leaderless Units
- **Army Leaderless Land Morale**: -0.20 (new debuff)
- **Navy Leaderless Naval Morale**: -0.25
- **Leaderless Discipline**: -0.10 (new debuff)

---

## Economy & Resource Management

### Tax Efficiency Nerfs
- **Base Tax Efficiency Malus**: -0.075 (7.5% default reduction)
  - Tiny countries: +0.1
  - Small countries: +0.05
  - Mid countries: -0.035
  - Normal countries: -0.075

**Comment**: Base malus on top of large maluses for larger economies. Bonuses now become a more important part of growth over time.

### Economical Base Calculations (Changed)
- **From Tax Base**: 0.5 (unchanged)
- **From Population**: 0.015 → 0.0235 (creates slight push towards tall play)
- **From Trade Value**: 0.2 → 0.15
- **From Trade Profit**: 0.2 → 0.4
- **Interest**: 0.25 (unchanged)
- **From Subject**: 0.05 → 0.04 (overly penalizes decentralized play)
- **From Institution**: 0.066 → 0.05

### Subject Upkeep
- **Subject Upkeep Rank Scale**: 0.25

### Market Mechanics
- **Burgher Trade Impact on Supply**: 0.1 → 0.25
- **Trade Impact on Supply**: 0.25 → 0.35
- **Burgher Trade Impact on Demand**: 0.25 → 0.35
- **Trade Impact on Demand**: 1.0 → 0.75

### Mothball Maintenance
- **Mothball Maintenance Factor**: 0.5 → 0.25 (Savings was too low)

### Estate Taxation
- **Nobles Estate Tax Impact**: -1.0 → -1.1 (functionally)
- **Burghers Estate Tax Impact**: -1.0 → -1.05 (functionally)

### Food & Agriculture
- **Goods Food Values (Reduced)**
  - Wheat: 8 → 6.0
  - Maize: 8 → 7.0
  - Rice: 10 → 8.5
  - Millet: 5 → 4.0
  - Wool: 5 → 3.5
  - Wild Game: 3.5 → 2.5
  - Fur: 2 → 1.5
  - Fish: 5 → 4.5

**Comment**: Lower food values to maintain proper population growth rates, as there are substantial nerfs elsewhere.

### Plantation Output
- **Sugar Plantation Output Modifier**: 0.1 → 0.09
- **Cotton Plantation Output Modifier**: 0.1 → 0.09
- **Tobacco Plantation Output Modifier**: 0.1 → 0.09
- **Slave Pop Satisfaction**: -0.005 → -0.0065

### Special Location Bonuses
- **Cyprus Sugar Output**: 0.5 (Venetian methods focused on quality)
- **Madeira Sugar Output**: 2.0 (largest sugar producer in world by ~1500)

**Comment**: It would be rad to have a 'sleeping sickness' for RGOs with sugar production event.

### RGO System
- **RGO Base Time**: 180 → 540 days (substantially slowed)
- **Max RGO Size**: 2.0 → 1.25
- **Local Monthly Prosperity**: 0.0025 (balanced)

---

## Population & Demographics

### Pop Promotion/Demotion
- **Local Pop Promotion Speed**: 0.01 → 0.0066
- **Local Pop Demotion Speed**: 0.10
- **Global Pop Assimilation Speed**: -0.001 (cuts passive by half)
- **Global Pop Conversion Speed**: -0.001 (cuts passive by half)
- **Global Tribal Promotion**: -1.0 (reduce tribal promo speed)

**Comment**: Part of overall nerf of promotion.

### Pop Needs & Income
- **Pop Needs Income Scale**: 1.33 → 1.65
- **Global Peasant Enfranchisement**: 0.25 → 0.45 (may function as additive)

**Comment**: This will increase demand, causing estates to spend more on trade but less on infrastructure.

### Population Capacity
- **Local Food Capacity**: 50 (base for location)
- **City Rank Food Capacity Bonus**: 500
- **Town Rank Food Capacity Bonus**: 500

### Pop Type Specific Changes
- **Tribesmen**: Literacy impact reduced by 40%
- **Slaves**: Now grow (enabled)
- **Migration**: Soldiers, Laborers, and Tribesmen allowed to migrate

### Pop Satisfaction Changes
- **Slavery Changes**: Slave pop satisfaction for plantations: -0.005 → -0.0065

---

## Religion & Beliefs

### Catholic Resolutions (Papal Modifiers)
- **Christiana Pietas**: Tolerance heathen +2, burghers satisfaction (tiny bonus), trade efficiency (tiny bonus)
- **Illius qui se pro divini**: Monthly army tradition +0.05, global manpower +0.05, antagonism +0.25
- **Apostolicae Servitutis**: Clergy satisfaction (large penalty)
- **Immensa Aeterni Dei**: Global institution growth +0.10, research speed +0.025, stability cost +0.2
- **Libertas Ecclesiae**: Clergy satisfaction (medium bonus), crown estate power -0.25, clergy power +0.5, imperial authority -0.05
- **Dei Gratia Rex**: Monthly legitimacy +0.1, crown estate power -0.25
- **In Coena Domini**: Global maritime presence +0.125, stability cost -0.025, pirate spawn -0.1, anti-piracy +0.1
- **Benedictus Deus**: Global pop conversion speed +0.15, tolerance heathen -0.5
- **Inter Gravissimas**: Legislative efficiency +0.2, peasant satisfaction (small penalty)

**Comment**: Many of these had poor balance or thematic fit in vanilla.

### Protestant Religion Adjustments
- **Calvinist**: Discipline +0.075 (was 0.05)
  - Comment: Protestant flavors felt underwhelming. They should now provide more whelm.
- **Hussite**: Army auxiliary maintenance cost -0.25, global pop promotion speed +0.10, global pop conversion speed +0.10, land morale +0.05
- **Lutheran**: Tax income efficiency (medium bonus), global production efficiency (medium bonus)

---

## Stability & Morale Systems

### Stability Impact on Governance
- **Positive Stability Boost**: Country cabinet efficiency +0.1, global pop promotion speed +0.5
  - **Intoxicating morale**: Monthly doom -0.1, righteousness +0.1
- **Negative Stability Penalty**: Global pop promotion speed -1.0, country cabinet efficiency -0.5, pop join rebel threshold +0.25
  - **Morale drain**: Monthly doom +0.5, righteousness -0.1, trade efficiency -0.15
- **War Exhaustion Impact**: Stability decay +0.00015 per war exhaustion point

**Intent**: Make stability more important and function as efficiency drag on larger empires.

### Land Morale & Discipline
- **New Debuff - Leaderless Army**: Land morale -0.20, discipline -0.10
- **New Debuff - Leaderless Navy**: Naval morale -0.25, discipline -0.10

### Estate Satisfaction Systems
- **Noble Harassment**: No longer receives additional satisfaction penalties when taxed too hard
- **Levy System Interaction**: Levies provide bonuses to nobles estate satisfaction +25 (was 10)

---

## Country Mechanics & Estates

### Casus Belli System
- **Coalition CB**: AI should slightly prefer this CB over others (value +25)
- **Additional War Enthusiasm**: +0.25 for attackers
- **Allow Separate Peace**: No
- **AI Subjugation Desire**: -1000
- **AI Cede Location Desire**: -1000

---

## Age & Era Specific Changes

### Prosperity Modifications by Age
- **Age 1 (Traditions)**: Monthly prosperity -0.00325, city upgrade cost 1.0
- **Age 2 (Renaissance)**: Monthly prosperity -0.003, city upgrade cost 0.5
- **Age 3 (Discovery)**: Monthly prosperity -0.00275, city upgrade cost 0.25
- **Age 4 (Reformation)**: Monthly prosperity -0.0025, city upgrade cost 0.15
- **Age 5 (Absolutism)**: Monthly prosperity -0.00225
- **Age 6 (Revolutions)**: Monthly prosperity -0.002

**Comment**: Prosperity has slight push as ages advance; lowered pop food consumption scaling per age.

### HRE Formation Restrictions
- **Required Locations**: 75% → 90%
- **New Age 5 Requirement**: Must have Absolute Rulership advance
- **Comment**: HRE is made substantially harder to form so AI stops forming prematurely. AI will still form but hopefully in stronger position.

### Naval Governor Access
- **Power Projection Advance 2**: Grants 1 naval governor
- **Comment**: Some access to naval governors for non-naval-focused countries. Naval governor control substantially reduced.

---

## Specific Features & Special Mechanics

### Fiefdoms (Crown Property Subjects)
- **Subject Pays**: Tributary (better income than vassal)
- **Annexation**: Slow (0.65 speed), requires 100+ years, 125+ opinion
- **Opinion Maintenance**: Easier to keep happy than vassals
- **Cannot Be Annexed Easily**: Direct crown property
- **Strength vs Overlord**: -0.5
- **Diplomatic Capacity Cost**: 0.85 (bit cheaper)
- **Loyalty**: +25 (was 10)

**Comment**: Fiefdoms grant a bit more than vassals and are easier to keep happy, but cannot be annexed normally.

### Local Governors
- **Proximity Source**: 60 (was 80)
- **Build Cost**: Not expensive (set to no)
- **Maintenance**: Reduced gold cost
- **Building Allowed in**: Towns and cities (encourages AI to build)
- **Town/City Road Requirement**: Must have road to capital

**Comment**: Reduced cost and restrictions to encourage AI building. Proximity bonus reduced as it was too powerful.

### Naval Governors
- **Proximity Source**: 50 (was 80)
- **Location Requirements**: Must be port, not connected to capital, not overseas
- **Build Cost**: Not expensive
- **Maintenance**: Reduced gold cost

**Comment**: Naval governors granted in Age 2 via Power Projection advance.

### Food Storage Mechanics
- **Local Food Capacity Base**: 50
- **City Bonus**: +250 (should be 500 theoretically)
- **Town Bonus**: +250 (should be 500 theoretically)

### Plantation System Overhaul
- **Removed Restrictions**: Plantations no longer limited to overseas/colonial
- **Mechanism**: Still requires slave import, preventing ahistorical expansion
- **Sugar Plantation**: Output modifier 0.09, slave satisfaction -0.0065
- **Cotton Plantation**: Output modifier 0.09, slave satisfaction -0.0065
- **Tobacco Plantation**: Output modifier 0.09, slave satisfaction -0.0065

**Comment**: Removing arbitrary limitation around overseas and colonial. These limitations reflect European usage, not plantations as production approach.

### Fortification System
All forts redesigned with adjusted maintenance:
- **Stockade**: Local garrison +0.1, fort level 1
- **Castle**: Local garrison +0.25, fort level 2
- **Bastion**: Local garrison +1.0, fort level 4
- **Star Fort**: Local garrison +2.0, fort level 6
- **Fortress**: Local garrison +4.0, fort level 8

Maintenance includes increased costs for firearms and cannons for later tier forts.

### Blockade System
- **Maritime Presence**: -2.0
- **Max Control**: -0.10
- **Food Multiplier**: -0.75
- **Monthly Development**: -0.20
- **Trade Embark/Disembark Cost**: 2.0
- **Construction Speed**: -0.10
- **Population Growth**: -0.001

### Siege System
- **Food Multiplier**: -1.0 (total starvation)
- **Monthly Development**: -0.20
- **Road Building**: Blocked
- **Prosperity Decay**: +0.05
- **Population Growth**: -0.002
- **Constructions**: Stalled

---

## AI Behavior Adjustments

### AI Warfighting
- **Peace Offer War Enthusiasm Stale War**: 0.5 → 0.75
- **Minimum Win Chance to Consider Defeat**: 0.25 → 0.35
- **Expected War Score Base**: 25 → 40
- **AI War Exhaustion Expansion Penalty**: 0.1 → 0.5
- **AI Conquer Desire Distance Multiplier**: -0.2 → -0.15
- **Default Aggressiveness**: -1.05 → 1 (Higher = more aggressive)
- **Expansion Score Opinion Factor**: 1.0 → 0.9
- **Months to Wait for Casus Belli**: 24 → 60

### AI Army Preferences
- **Default Regular Army Preference**: 1.0 → 2.75
- **Default Levy Army Preference**: 1.0 → 0.925
- **Default Mercenary Army Preference**: 1.0 → 2.0
- **Levy Army Preference Factor**: 0.5 → 0.35

### AI Fog of War & Pathfinding
- **Fog of War Forget Chance**: 1.0 → 0.5
- **Peace Stalled War Threshold**: 3 → 4
- **Peace Knapsack Extras**: 0 → 1
- **Peace Knapsack Extras Max**: 3 → 5
- **AI Performance Attach Unit Max Distance**: 200 → 175
- **Monthly Manpower Per Base Tax**: 0.04 → 0.1

### AI Army Hunting Behavior
- **Max Radius**: 20 → 28
- **Stay Priority**: 0.05 → 0.025
- **Confront Factor**: 2.0 → 2.5
- **Win Chance Split**: 0.99 → 0.95
- **Max Splinters**: 6 → 3
- **Presence Radius**: 3 → 5
- **Desired Strength Multiplier**: 1.5 → 1.1
- **AI Max Distance**: 3 → 7
- **AI Radius Buffer**: 2 → 4
- **AI Max Objectives**: 5 → 6
- **AI War Goal Value**: 1.0 → 1.1

### AI Combat Strategy
- **Avoid Battles Pathfind Confront Factor**: 0.5 → 0.8
- **Relevant Army Min Raw Strength**: 0.05 → 0.1
- **AI Maintenance Budget Ratio**: 0.2 → 0.5
- **Battle Win Chance Sensitivity**: 16 → 25
- **Battle Win Chance Enemy Bias**: 1.1 → 2.5
- **Fog of War Forget Chase Army Chance**: 0.33 → 0.25
- **AI Allowed Naval Constructions Tax Base Divider**: 100 → 50
- **AI Allowed Army Constructions Tax Base Divider**: 100 → 50

---

## Miscellaneous Tweaks

### Location Development
- **Development Modifier Scaling**: Each point of development (0-100) adds modifiers:
  - Population capacity +0.025
  - Distance from capital speed propagation +0.005
  - Supply limit +0.02
  - Blockade force required +0.01
  - Migration attraction +0.0025
  - Trade center power +0.001
  - Institution growth +0.002
  - Construction speed +0.01
  - Monthly food +0.01
  - Free building levels: 1

### Location Base Values
- **Devastation Recovery**: 0.005
- **Monthly Control**: 0.0005
- **Max Regiments Trained Simultaneously**: 1
- **Max Constructions Simultaneously**: 1
- **Pop Promotion Speed**: 0.0066 (was 0.01)
- **Pop Demotion Speed**: 0.10
- **Food Capacity**: 50
- **Frontage Allowed**: 10
- **Migration Attraction**: 0.1
- **Garrison Growth**: 0.01
- **Max Attrition**: 10
- **Supply Limit**: 15
- **Hostile Disembark Time**: +0.25

### Topography & Terrain Defensive Bonuses (Increased)
- **Mountains**: Defender +4 (was 2)
- **Hills**: Defender +3 (was 1)
- **Plateau**: Defender +2 (was 1)
- **Wetlands**: Defender +2 (was 1)
- **Woods**: Defender +2 (was 1)

**Intent**: Bring back value of defensive terrain in combat resolution.

### Diplomacy
- **Casus Belli Months**: 120
- **Sabotage Reputation Cost**: 25 spy network

### Unit Levies
- **Levy Maintenance Factor**: 0.01 → 0.1
- **Comment**: Costs of levies were way too small in vanilla (>300 peasant levies collectively cost -3 ducats)

### Generic Trade Route Node Values
- **Any location**: 0.1-0.2 base value
- **Market Centers**: Significantly increased value
- **Coastal Locations**: Premium modifier

### Coastal Location Modifiers
- **Coastal Population**: Dynamic scaling
- **Harbor Suitability**: Natural bonuses vary by location
- **Maritime Presence Base**: 1 per strength

### Special Goods Notes
- **Transport Costs for Luxury Goods**: Gems, amber, pearls, gold, silver, jewelry all set to 0.25

---

*Last Updated: April 16, 2026*
*Version: Specula Principum (Current Build)*

###TODO

#Overview
Specula Principum is an an economy and balance mod with a focus on historical accuracy and multiple interleaved anti-snowballing mechanisms. SP has been tested and tweaked through a dozens of observer runs with mid-way and post surveys that focus on historical population growth rates, crown vs. estate powers and wealth. It does not focus or make use of rail-roading principles for historical outcomes (with a few minor exceptions) but instead focuses on realistic population and development rates to encourage outcomes that are reasonably close to history.

Dynamic solutions are favored over static rules. For example, France no longer dominates western europe even without specific nerfs in play. In some runs, Bohemia dominates central Europe. In a recent test run, Bohemia was gone by 1630. Where possible, systems that the AI doesn't understand well are minimized in order to ensure reasonably competitive gameplay.

Specular Principum integrates and adjust a number of growth and economy based mods. Includes integrated and tweaked Ethereal's ice-breaking Anti-snowballing; Squirtle's valuable wealth-based Anti-snowballing Minimod; Yakub's completely sick Diseasier Diseases; FentDino's flaming hot Raiding, Torching and Pillaging; SovietBeer's gold-standard Great Bullion Famine; HappyMonkey99's Local gov from Land Value; and Gunnar Von Pontius áf Ädelsprupp Improved Trade and Buildings.

If you are a modder - please feel free to use any ideas here-in that you find useful. You can find and contribute to this project on GitHub in a public repo: https://github.com/Mosulvet/Specula-Principum.



#Key Features
- Almost everything is slower - population promotion is slower, growth is slower, building RGOs and buildings are slower, raising troops are slower. Economic problems cannot be solved quickly. It is imperative to plan ahead.
- Social values have been substantially tweaked to create more engaging decisions. Significantly, Decentralization is generally needed for wide play; Centralization is needed for tall play.
- Small nations remain viable due to the dynamic increases in wealth and size-based maluses that wealthy nations suffer from. Additionally, there are a number of tweaks that encourage 'tall' play.
- Stability is vastly more impactful.
- RGOs produce less as the size of the RGO increases; low control also has a moderate impact on production efficiency.
- Governors are cheaper to build (primarily to help the AI build them), but 1. no longer dissapear arbitrarily, and 2. are a substantially reduced source of control.
- Pop growth is substantially slower than vanilla, but final growth numbers are ballpark similar to historical estimates.
- Pop assimilation and culture both happen more slowly (~50%; note that control is generally lower than in vanilla, and control impacts how fast these occur).
- Tax efficiency scales downwards gradually as wealth increases; additionally, as wealth increases multiple other global values are impacted including 
- The first advance in each age tech chain grants slowly increasing maluses; this is less punishing to countries that are behind in technology.
- Cities start very expensive to discourage early urbanization, but price drops over time.
- Catholic Bulls are closer to reality AND generally have down sides.
- Fiefdoms are further differentiated from Vassals.
- 

- Great Bullion Famine - reduces gold and silver production in Western Europe which 1) helps reduce dominance of Bohemia and Hungary.
- [TODO detail each integrated mod]

TODO - complete this section

#Balance / Strategy
Everything develops much, much slower - building is slower, RGO development is slower, population growth and promotion are slower - it is imperative to plan ahead.
Small nations remain viable due to the dynamic increases in wealth and size-based maluses that wealthy nations suffer from. Additionally, there are a number of tweaks that encourage 'tall' play.

#Details
TODO - pull details from existing comments TODO - finish internal file documentation
TODO - incorporate Bullion DONE, Chauvachee TODO, Land Value DONE
TODO - incorporate disease mod

#Compat
Specular Principum relies on REPLACE and INJECT where possible, and has no 'full-file' replaces. That said, even if files are not overwritten, compatibility with other economic and population growth mods, even those that don't directly change the same json blocks or parameters, is limited. After numerous observation runs, it's clear to me that even small changes to economy and growth can have very large impact accross runs.

#Thanks to / credit
Above all - a huge thanks to the ideas and work of all of the mods and modders integrated here. However, there were many dozens of mods that I peered through to understand systems, and options -- far too many to remember, or note, but all important.

#Change List
TBD post alpha

#Dir Structure
[TODO remove once all integratsions done]
SP_for_1.1 --> main mod
SP_compat_trade_override --> load this after Improved Trade. Required, else some goods will be overly scare, some overly abudnant.
SP_Great_Bullion_Fam --> TODO - remove. adjusted version of mod of the same name.
SP_land_value_local_gov --> TODO - remove. adds access to 2 additional local governors for high land value countries. 
SP_EuroNavy_Extended --> compat mod for EN, and adds earlier access two new Maghrebi ships, the early and late xebec.


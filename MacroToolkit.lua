
MacroToolkitDB = {
["char"] = {
["Calestin - Sargeras"] = {
["macros"] = {
},
},
["Stream - Argent Dawn"] = {
["macros"] = {
[122] = {
["name"] = "Explodobarrage",
["icon"] = "134400",
["body"] = "#showtooltip\n/use [known:212431] Explosive Shot; Barrage\n",
},
[124] = {
["name"] = "Tiger Aspect",
["icon"] = "132242",
["body"] = "#showtooltip Aspect of the Cheetah\n/console Sound_EnableErrorSpeech 0\n/use Prismatic Bauble\n/cast Aspect of the Cheetah\n/run C_Timer.After(0, function() SetCVar(\"Sound_EnableErrorSpeech\", 1) UIErrorsFrame:Clear() end)\n",
},
[121] = {
["name"] = "Disengage",
["icon"] = "132294",
["body"] = "#showtooltip Disengage\n/console Sound_EnableErrorSpeech 0\n/use Prismatic Bauble\n/cast Disengage\n/run C_Timer.After(0, function() SetCVar(\"Sound_EnableErrorSpeech\", 1) UIErrorsFrame:Clear() end)\n",
},
[123] = {
["name"] = "Rootbreak",
["icon"] = "134400",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player] Master's Call\n",
},
[125] = {
["name"] = "Volley",
["icon"] = "132205",
["body"] = "#showtooltip\n/use [@cursor] Volley\n",
},
},
["backups"] = {
},
},
["Naturerivers - Korgath"] = {
["macros"] = {
},
["backups"] = {
},
},
["Lotic - Argent Dawn"] = {
["backups"] = {
{
["m"] = {
{
["index"] = 121,
["name"] = "bearform",
["icon"] = 132276,
["body"] = "#showtooltip Bear Form\n/use [noform:1] Bear Form\n",
},
{
["index"] = 122,
["name"] = "catform",
["icon"] = 136116,
["body"] = "#showtooltip Cat Form\n/use [noform:2] Cat Form\n",
},
{
["index"] = 123,
["name"] = "owlform",
["icon"] = 136036,
["body"] = "#showtooltip Moonkin Form\n/use [noform:4, known:197625] Moonkin Form\n",
},
{
["index"] = 124,
["name"] = "Primary Form",
["icon"] = 136047,
["body"] = "#showtooltip\n/cancelform [form:3][form:6]\n/use [spec:3,noform:1]Bear Form; [nostealth,nocombat,spec:2]Prowl; [spec:2,noform:2]Cat Form;[spec:1,noform:4]Moonkin Form\n/cancelform [spec:4]",
},
{
["index"] = 125,
["name"] = "Prowl",
["icon"] = 136047,
["body"] = "#showtooltip Prowl\n/cancelform [nocombat,form:3][nocombat,form:6]\n/use [nocombat,nostealth] Prowl",
},
},
["d"] = "Dec 01 15:12:53",
["n"] = "dec 1",
},
},
["lastbackup"] = "Dec 01 15:12:53",
},
["Mangrove - Argent Dawn"] = {
["macros"] = {
[122] = {
["icon"] = "135952",
["name"] = "cleanse",
["body"] = "#showtooltip \n/use [spec:4,@mouseover,help,nodead][help,nodead,spec:4][@player,spec:4] Nature's Cure;[@mouseover,help,nodead][help,nodead][@player]Remove Corruption\n",
},
[126] = {
["icon"] = "134206",
["name"] = "lifebloom",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player] Lifebloom\n",
},
[132] = {
["icon"] = "136036",
["name"] = "shift",
["body"] = "#showtooltip [spec:1]Moonkin Form;[spec:2]Cat Form;[spec:3]Bear Form;Treant Form \n/cancelform [form:3][form:6]\n/use [spec:3,noform:1]Bear Form;[nostealth,nocombat,spec:2]Prowl;[spec:2,noform:2]Cat Form;[spec:1,noform:4]Moonkin Form\n/cancelform [spec:4]\n",
},
[123] = {
["icon"] = "132129",
["name"] = "Force of Nature",
["body"] = "#showtooltip\n/use [@cursor] Force of Nature\n",
},
[127] = {
["icon"] = "236162",
["name"] = "Nourish",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player] Nourish\n",
},
[134] = {
["icon"] = "236153",
["name"] = "wild growth",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player]Wild Growth\n",
},
[133] = {
["icon"] = "134400",
["name"] = "swiftmend",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player] Swiftmend\n",
},
[124] = {
["icon"] = "136048",
["name"] = "innervate",
["body"] = "#showtooltip\n/use [@player,spec:4][@mouseover,help,nodead][@focus,help,nodead][help,nodead] Innervate\n",
},
[128] = {
["icon"] = "514640",
["name"] = "Prowl",
["body"] = "#showtooltip Prowl\n/cancelform [nocombat,form:3][nocombat,form:6]\n/use [nocombat,nostealth] Prowl\n",
},
[121] = {
["icon"] = "136060",
["name"] = "alignmentnocrash",
["body"] = "#showtooltip\n/use [@cursor] Celestial Alignment\n",
},
[129] = {
["icon"] = "132132",
["name"] = "rebirth",
["body"] = "#showtooltip [nocombat] Revive; Rebirth\n/use [@mouseover,nocombat,help,dead][nocombat,help,dead]Revive;[@mouseover,help,dead][help,dead] Rebirth\n",
},
[125] = {
["icon"] = "572025",
["name"] = "Ironbark",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player]Ironbark\n",
},
[130] = {
["icon"] = "136085",
["name"] = "regrowth",
["body"] = "#showtooltip\n/use [@player,mod:alt,nospec:4][@mouseover,help,nodead][help,nodead][@player]Regrowth\n",
},
[131] = {
["icon"] = "136081",
["name"] = "rejuv",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player]Rejuvenation\n",
},
},
["backups"] = {
},
},
["Inundito - Kel'Thuzad"] = {
["macros"] = {
[121] = {
["name"] = "md",
["icon"] = "132180",
["body"] = "#showtooltip\n/use [@focus] Misdirection\n",
},
},
["backups"] = {
},
},
["Cataracts - Argent Dawn"] = {
["macros"] = {
[122] = {
["name"] = "fel rush",
["icon"] = "1247261",
["body"] = "#showtooltip Fel Rush\n/console Sound_EnableErrorSpeech 0\n/use Prismatic Bauble\n/cast Fel Rush\n/run C_Timer.After(0, function() SetCVar(\"Sound_EnableErrorSpeech\", 1) UIErrorsFrame:Clear() end)\n",
},
[124] = {
["name"] = "misery",
["icon"] = "134400",
["body"] = "#showtooltip\n/use [@cursor] Sigil of Misery\n",
},
[126] = {
["name"] = "Sigil",
["icon"] = "1344652",
["body"] = "#showtooltip\n/use [@cursor, mod][@player] Sigil of Flame\n",
},
[121] = {
["name"] = "Blade Dance",
["icon"] = "1305149",
["body"] = "#showtooltip Blade Dance\n/console Sound_EnableErrorSpeech 0\n/use Prismatic Bauble\n/cast Blade Dance\n/run C_Timer.After(0, function() SetCVar(\"Sound_EnableErrorSpeech\", 1) UIErrorsFrame:Clear() end)\n",
},
[123] = {
["name"] = "metamorphosis",
["icon"] = "1247262",
["body"] = "#showtooltip\n/use [@cursor, mod][@player] Metamorphosis\n",
},
[125] = {
["name"] = "retreat",
["icon"] = "1348401",
["body"] = "#showtooltip Vengeful Retreat\n/console Sound_EnableErrorSpeech 0\n/use Prismatic Bauble\n/cast Vengeful Retreat\n/run C_Timer.After(0, function() SetCVar(\"Sound_EnableErrorSpeech\", 1) UIErrorsFrame:Clear() end)\n",
},
},
["backups"] = {
},
},
["Saellindris - Kel'Thuzad"] = {
["macros"] = {
},
},
["Esker - Kel'Thuzad"] = {
["macros"] = {
[121] = {
["name"] = "heroic leap",
["icon"] = "236171",
["body"] = "#showtooltip Heroic Leap\n/console Sound_EnableErrorSpeech 0\n/use Prismatic Bauble\n/cast Heroic Leap\n/run C_Timer.After(0, function() SetCVar(\"Sound_EnableErrorSpeech\", 1) UIErrorsFrame:Clear() end)\n",
},
[122] = {
["name"] = "opencache",
["icon"] = "134400",
["body"] = "#showtooltip\n/use Cache of Infinite Treasure\n",
},
[123] = {
["name"] = "ravager",
["icon"] = "970854",
["body"] = "#showtooltip\n/use [@player] Ravager\n",
},
[124] = {
["name"] = "Spear",
["icon"] = "134400",
["body"] = "#showtooltip\n/use [known: 376079, @player] Champion's Spear; [known : 384315] Thunderous Roar\n",
},
},
["backups"] = {
},
},
["Emptyrivers - Sargeras"] = {
["macros"] = {
},
},
["Alluvium - Argent Dawn"] = {
["macros"] = {
[131] = {
["icon"] = "4622464",
["name"] = "living flame",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][harm][help,nodead][@player] Living Flame\n",
},
[135] = {
["icon"] = "134400",
["name"] = "spiritbloom",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player] Spiritbloom\n",
},
[122] = {
["icon"] = "136039",
["name"] = "cancel soar",
["body"] = "/cancelaura Soar\n",
},
[124] = {
["icon"] = "134400",
["name"] = "COMMUNISM",
["body"] = "#showtooltip\n/use [nochanneling] Emerald Communion\n",
},
[126] = {
["icon"] = "4622455",
["name"] = "DREAM BREATH",
["body"] = "#showtooltip\n/use [@cursor] Dream Flight\n",
},
[128] = {
["icon"] = "4622457",
["name"] = "Emerald Blossom",
["body"] = "#showtooltip\n/use [@player,mod][@mouseover,help,nodead][help,nodead]Emerald Blossom;[harm] Disintegrate;[@player] Emerald Blossom\n",
},
[132] = {
["icon"] = "134400",
["name"] = "Prescience",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player] Prescience\n",
},
[136] = {
["icon"] = "134400",
["name"] = "td",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player] Time Dilation\n",
},
[129] = {
["icon"] = "4630445",
["name"] = "expunge",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player] Expunge\n",
},
[133] = {
["icon"] = "134400",
["name"] = "rescue",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead] Rescue\n",
},
[137] = {
["icon"] = "4622471",
["name"] = "Verdant Embrace",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player] Verdant Embrace\n",
},
[121] = {
["icon"] = "134400",
["name"] = "Blistering Scale",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@targettarget,help,nodead][@player] Blistering Scales\n",
},
[123] = {
["icon"] = "134400",
["name"] = "Cauterize",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player] Cauterizing Flame\n",
},
[125] = {
["icon"] = "4622450",
["name"] = "DEEPBREATH",
["body"] = "#showtooltip\n/use [@cursor] Deep Breath\n",
},
[127] = {
["icon"] = "134400",
["name"] = "Echo",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player] Echo\n",
},
[130] = {
["icon"] = "1016245",
["name"] = "landslide",
["body"] = "#showtooltip\n/use [@cursor] Landslide\n",
},
[134] = {
["icon"] = "134400",
["name"] = "reversion",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player] Reversion\n",
},
},
["backups"] = {
},
},
["Headcut - Argent Dawn"] = {
["macros"] = {
[123] = {
["name"] = "cleanse",
["icon"] = "236288",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead,spec:3][help,nodead,spec:3][@player,spec:3]Purify Spirit; [@mouseover,help,nodead][help,nodead][@player]Cleanse Spirit\n",
},
[122] = {
["name"] = "chain",
["icon"] = "136042",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead]Chain Heal;[harm]Lava Burst;[@player]Chain Heal\n",
},
[126] = {
["name"] = "eb totem",
["icon"] = "136102",
["body"] = "#showtooltip\n/use [@cursor] Earthbind Totem\n",
},
[132] = {
["name"] = "SpiritGust",
["icon"] = "134400",
["body"] = "#showtooltip\n/cast [known:58875] Spirit Walk; [known: 192063] Gust of Wind\n",
},
[124] = {
["name"] = "Earth Shield",
["icon"] = "136089",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player] Earth Shield\n",
},
[133] = {
["name"] = "surge",
["icon"] = "136044",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead]Healing Surge;[harm]Flame Shock;[@player]Healing Surge\n",
},
[127] = {
["name"] = "Magma totem",
["icon"] = "971079",
["body"] = "#showtooltip\n/use [@cursor] Liquid Magma Totem\n",
},
[134] = {
["name"] = "Unleash Life",
["icon"] = "462328",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player]Unleash Life\n",
},
[129] = {
["name"] = "Rain",
["icon"] = "136037",
["body"] = "#showtooltip\n/use [@cursor] Healing Rain\n",
},
[135] = {
["name"] = "wave",
["icon"] = "136043",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player]Healing Wave\n",
},
[128] = {
["name"] = "Primordial Wave",
["icon"] = "134400",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player]Primordial Wave\n",
},
[136] = {
["name"] = "windgrab totem",
["icon"] = "134400",
["body"] = "#showtooltip\n/use [known:192077, @cursor] Wind Rush Totem; [known: 51485,@cursor] Earthgrab Totem\n",
},
[121] = {
["name"] = "cap",
["icon"] = "136013",
["body"] = "#showtooltip\n/use [@cursor] Capacitor Totem\n",
},
[125] = {
["name"] = "earthquake",
["icon"] = "134400",
["body"] = "#showtooltip\n/use [@cursor] Earthquake\n",
},
[130] = {
["name"] = "riptide",
["icon"] = "252995",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead]Riptide;[harm]Lightning Bolt;[@player]Riptide\n",
},
[131] = {
["name"] = "self earth shiel",
["icon"] = "136089",
["body"] = "#showtooltip\n/use [@player] Earth Shield\n",
},
},
["backups"] = {
},
},
["Riparium - Argent Dawn"] = {
["macros"] = {
[122] = {
["icon"] = "134400",
["name"] = "Cata",
["body"] = "#showtooltip\n/use [@cursor] Cataclysm\n",
},
[126] = {
["icon"] = "538043",
["name"] = "RUSH",
["body"] = "#showtooltip Burning Rush\n/console Sound_EnableErrorSpeech 0\n/use Prismatic Bauble\n/cast Burning Rush\n/run C_Timer.After(0, function() SetCVar(\"Sound_EnableErrorSpeech\", 1) UIErrorsFrame:Clear() end)\n",
},
[123] = {
["icon"] = "538443",
["name"] = "dismiss",
["body"] = "/dismisspet\n",
},
[127] = {
["icon"] = "136201",
["name"] = "shadowfury",
["body"] = "#showtooltip\n/use [@cursor] Shadowfury\n",
},
[124] = {
["icon"] = "134400",
["name"] = "guillotine",
["body"] = "#showtooltip\n/use [@cursor] Guillotine\n",
},
[128] = {
["icon"] = "136219",
["name"] = "summon infernal",
["body"] = "#showtooltip\n/use [@cursor] Summon Infernal\n",
},
[121] = {
["icon"] = "134400",
["name"] = "biles/demo str",
["body"] = "#showtooltip\n/use [known:267171] Demonic Strength; [known:267211, @cursor] Bilescourge Bombers\n",
},
[125] = {
["icon"] = "134400",
["name"] = "rain of fire",
["body"] = "#showtooltip\n/use [@cursor] Rain of Fire\n",
},
[129] = {
["icon"] = "134400",
["name"] = "VT/PS",
["body"] = "#showtooltip\n/use [known:278350, @cursor] Vile Taint\n",
},
},
["backups"] = {
},
},
["Asperos - Kel'Thuzad"] = {
["macros"] = {
},
},
["Wildrivers - Bleeding Hollow"] = {
["backups"] = {
},
},
["Confluence - Argent Dawn"] = {
["macros"] = {
[122] = {
["icon"] = "135953",
["name"] = "Cleanse Toxin",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player] Cleanse Toxins\n",
},
[124] = {
["icon"] = "135968",
["name"] = "Freedom",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][@focus,help,nodead][help,nodead][@player] Blessing of Freedom\n",
},
[126] = {
["icon"] = "134400",
["name"] = "Sacrifice",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][@focus,help,nodead][]Blessing of Sacrifice\n",
},
[121] = {
["icon"] = "134400",
["name"] = "BoP",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][@focus,help,nodead][help,nodead][@player] Blessing of Protection\n",
},
[123] = {
["icon"] = "135878",
["name"] = "Final Reckoning",
["body"] = "#showtooltip\n/use [@cursor,mod][@player] Final Reckoning\n",
},
[125] = {
["icon"] = "523893",
["name"] = "Rebuke",
["body"] = "#showtooltip\n/use [@mouseover,harm,nodead][@focus,harm,nodead][] Rebuke\n",
},
},
["backups"] = {
},
},
["Riptides - Argent Dawn"] = {
["macros"] = {
[133] = {
["name"] = "surge",
["icon"] = "136044",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead]Healing Surge;[harm]Flame Shock;[@player]Healing Surge\n",
},
[131] = {
["name"] = "self earth shiel",
["icon"] = "136089",
["body"] = "#showtooltip\n/use [@player] Earth Shield\n",
},
[126] = {
["name"] = "eb totem",
["icon"] = "136102",
["body"] = "#showtooltip\n/use [@cursor] Earthbind Totem\n",
},
[132] = {
["name"] = "SpiritGust",
["icon"] = "134400",
["body"] = "#showtooltip\n/cast [known:58875] Spirit Walk; [known: 192063] Gust of Wind\n",
},
[124] = {
["name"] = "Earth Shield",
["icon"] = "136089",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player] Earth Shield\n",
},
[123] = {
["name"] = "cleanse",
["icon"] = "236288",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead,spec:3][help,nodead,spec:3][@player,spec:3]Purify Spirit; [@mouseover,help,nodead][help,nodead][@player]Cleanse Spirit\n",
},
[127] = {
["name"] = "Magma totem",
["icon"] = "971079",
["body"] = "#showtooltip\n/use [@cursor] Liquid Magma Totem\n",
},
[134] = {
["name"] = "Unleash Life",
["icon"] = "462328",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player]Unleash Life\n",
},
[129] = {
["name"] = "Rain",
["icon"] = "134400",
["body"] = "#showtooltip\n/use [@cursor] Healing Rain\n",
},
[135] = {
["name"] = "wave",
["icon"] = "134400",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player]Healing Wave\n",
},
[128] = {
["name"] = "Primordial Wave",
["icon"] = "3578231",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player]Primordial Wave\n",
},
[136] = {
["name"] = "windgrab totem",
["icon"] = "134400",
["body"] = "#showtooltip\n/use [known:192077, @cursor] Wind Rush Totem; [known: 51485,@cursor] Earthgrab Totem\n",
},
[121] = {
["name"] = "cap",
["icon"] = "136013",
["body"] = "#showtooltip\n/use [@cursor] Capacitor Totem\n",
},
[125] = {
["name"] = "earthquake",
["icon"] = "451165",
["body"] = "#showtooltip\n/use [@cursor] Earthquake\n",
},
[130] = {
["name"] = "riptide",
["icon"] = "134400",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead]Riptide;[harm]Lightning Bolt;[@player]Riptide\n",
},
[122] = {
["name"] = "chain",
["icon"] = "134400",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead]Chain Heal;[harm]Lava Burst;[@player]Chain Heal\n",
},
},
},
["Gelae - Kel'Thuzad"] = {
["macros"] = {
[121] = {
["icon"] = "642580",
["name"] = "feather",
["body"] = "#showtooltip Angelic Feather\n/console Sound_EnableErrorSpeech 0\n/use Prismatic Bauble\n/cast [@player] Angelic Feather\n/run C_Timer.After(0, function() SetCVar(\"Sound_EnableErrorSpeech\", 1) UIErrorsFrame:Clear() end)\n",
},
[122] = {
["icon"] = "136201",
["name"] = "scrash",
["body"] = "#showtooltip\n/use [known:205385, @cursor][]Shadow Crash\n",
},
},
["backups"] = {
},
},
["Wildeadoriah - The Scryers"] = {
["macros"] = {
},
},
["Benthos - Argent Dawn"] = {
["macros"] = {
[127] = {
["name"] = "Reaping Pillar",
["icon"] = "458718",
["body"] = "#showtooltip Pillar of Frost\n/cast Pillar of Frost\n/cast Soul Reaper\n",
},
[122] = {
["name"] = "Control Undead",
["icon"] = "134400",
["body"] = "#showtooltip Control Undead\n/target pet\n/run PetDismiss()\n/use Control Undead\n",
},
[124] = {
["name"] = "Grip",
["icon"] = "237532",
["body"] = "#showtooltip\n/use [@mouseover,harm,nodead][] Death Grip\n",
},
[126] = {
["name"] = "Pillar Strike",
["icon"] = "458718",
["body"] = "#showtooltip Pillar of Frost\n/cast Pillar of Frost\n/cast Frost Strike\n",
},
[121] = {
["name"] = "Advanced Pillar",
["icon"] = "458718",
["body"] = "#showtooltip Pillar of Frost\n/cast Pillar of Frost\n/cast Glacial Advance\n",
},
[123] = {
["name"] = "D&D",
["icon"] = "136144",
["body"] = "#showtooltip\n/use [@cursor, mod:alt][@player] Death and Decay\n",
},
[125] = {
["name"] = "howling pillar",
["icon"] = "458718",
["body"] = "#showtooltip Pillar of Frost\n/cast Pillar of Frost\n/cast Howling Blast\n",
},
},
["backups"] = {
},
},
["Emptyrivers - Argent Dawn"] = {
["macros"] = {
[131] = {
["icon"] = "134400",
["name"] = "mana gem",
["body"] = "#showtooltip Mana Gem\n/click DeleteManaGem\n/use Conjure Mana Gem\n",
},
[122] = {
["icon"] = "135857",
["name"] = "blizzard",
["body"] = "#showtooltip\n/use [@cursor, known: Blizzard] Blizzard; [@cursor, known: Flamestrike] Flamestrike; Arcane Explosion\n",
},
[126] = {
["icon"] = "134400",
["name"] = "FOCUSBLAST",
["body"] = "#showtooltip\n/use [@focus] Arcane Blast\n",
},
[132] = {
["icon"] = "1033911",
["name"] = "Meaty Oar",
["body"] = "#showtooltip\n/use [@cursor] Meteor\n",
},
[135] = {
["icon"] = "135729",
["name"] = "SpellSteal",
["body"] = "#showtooltip\n/use [@mouseover,harm,nodead][@focus,harm,nodead][] Spellsteal\n",
},
[123] = {
["icon"] = "136082",
["name"] = "decurse",
["body"] = "#showtooltip\n/use [mod:@player][@mouseover,help,nodead][@anyfriend,help,nodead][@player] Remove Curse\n",
},
[127] = {
["icon"] = "134400",
["name"] = "FOCUSMISSILE",
["body"] = "#showtooltip\n/use [@focus] Arcane Missiles\n",
},
[134] = {
["icon"] = "134400",
["name"] = "RoF",
["body"] = "#showtooltip\n/use [@cursor] Ring of Frost\n",
},
[121] = {
["icon"] = "135736",
["name"] = "blink",
["body"] = "#showtooltip Blink\n/console Sound_EnableErrorSpeech 0\n/use Prismatic Bauble\n/cast Blink\n/run C_Timer.After(0, function() SetCVar(\"Sound_EnableErrorSpeech\", 1) UIErrorsFrame:Clear() end)\n",
},
[124] = {
["icon"] = "136116",
["name"] = "fix concentrate",
["body"] = "#showtooltip Arcane Explosion\n/cancelaura Concentration\n/use Arcane Explosion\n",
},
[128] = {
["icon"] = "134400",
["name"] = "freeze",
["body"] = "#showtooltip\n/use [@cursor] Freeze\n",
},
[136] = {
["icon"] = "5757162",
["name"] = "trinket",
["body"] = "#showtooltip\n/use 13\n/use Fleeting Elemental Potion of Power\n",
},
[129] = {
["icon"] = "135856",
["name"] = "kick",
["body"] = "#showtooltip\n/use [@mouseover,harm,nodead][@focus,harm,nodead][] Counterspell\n",
},
[125] = {
["icon"] = "134400",
["name"] = "FOCUSBARRAGE",
["body"] = "#showtooltip\n/use [@focus] Arcane Barrage\n",
},
[130] = {
["icon"] = "134400",
["name"] = "lockCast pyro",
["body"] = "#showtooltip\n/target [@anyenemy]\n/cast Pyroblast\n",
},
[133] = {
["icon"] = "4620674",
["name"] = "prof/warp",
["body"] = "#showtooltip\n/sp [mod:ctrl, mod:shift] pierre\n/stopmacro [mod:ctrl, mod:shift]\n/use [combat,mod][combat] Time Warp; [mod:shift, mod:alt] Archaeology; [mod:ctrl] Cooking; [mod:alt] Enchanting; [mod] Tailoring; Fishing\n",
},
},
["backups"] = {
},
},
["Karst - Argent Dawn"] = {
["macros"] = {
[121] = {
["icon"] = "132337",
["name"] = "charge",
["body"] = "#showtooltip Charge\n/console Sound_EnableErrorSpeech 0\n/use Prismatic Bauble\n/cast Charge\n/run C_Timer.After(0, function() SetCVar(\"Sound_EnableErrorSpeech\", 1) UIErrorsFrame:Clear() end)\n",
},
[122] = {
["icon"] = "236171",
["name"] = "Leap",
["body"] = "#showtooltip Heroic Leap\n/console Sound_EnableErrorSpeech 0\n/use Prismatic Bauble\n/cast Heroic Leap\n/run C_Timer.After(0, function() SetCVar(\"Sound_EnableErrorSpeech\", 1) UIErrorsFrame:Clear() end)\n",
},
},
["backups"] = {
},
},
["Flumina - Argent Dawn"] = {
["macros"] = {
[131] = {
["icon"] = "136201",
["name"] = "pwb/sanct/crash",
["body"] = "#showtooltip \n/cast [@cursor, spec:1] Power Word: Barrier; [@cursor, spec: 2] Holy Word: Sanctify; [@cursor, spec:3] Shadow Crash\n",
},
[135] = {
["icon"] = "134400",
["name"] = "rapture",
["body"] = "#showtooltip Rapture\n/castsequence [mod:alt,@player][@mouseover,help,nodead][@anyfriend,help,nodead][@player] reset=combat/10 Rapture, Power Word: Shield, Power Word: Shield, Power Word: Shield, Power Word: Shield, Power Word: Shield, Power Word: Shield\n",
},
[122] = {
["icon"] = "1445237",
["name"] = "big shadow cd",
["body"] = "#showtooltip\n/use [spec:3, known: 391109] Dark Ascension; [spec:3,known:228260, spec:3] Void Eruption; [mod:alt @player][@mouseover, help, nodead][@anyfriend, help, nodead][@player] Prayer of Mending\n",
},
[124] = {
["icon"] = "135935",
["name"] = "dispel",
["body"] = "#showtooltip\n/use [mod:shift, @cursor] Mass Dispel;[known:213634,@mouseover,help,nodead]Purify Disease; [@mouseover, help, nodead][@target, help, nodead] Purify; [harm, nodead] Dispel Magic;[@player,known:213634]Purify Disease; [@player] Purify \n",
},
[126] = {
["icon"] = "135907",
["name"] = "Flash Heal",
["body"] = "#showtooltip\n/cast [mod:alt,@player][@mouseover, help, nodead][@anyfriend,help,nodead][@player] Flash Heal\n",
},
[128] = {
["icon"] = "463835",
["name"] = "lifegrip",
["body"] = "#showtooltip\n/use [@none] Leap of Faith\n",
},
[132] = {
["icon"] = "134400",
["name"] = "pwl",
["body"] = "#showtooltip\n/cast [mod:alt,@player][@mouseover, help, nodead][@anyfriend,help,nodead][@player] Power Word: Life\n",
},
[136] = {
["icon"] = "134400",
["name"] = "renew",
["body"] = "#showtooltip\n/cast [mod:alt,@player][@mouseover, help, nodead][@anyfriend,help,nodead][@player] Renew\n",
},
[129] = {
["icon"] = "134400",
["name"] = "PAINSUP",
["body"] = "#showtooltip\n/cast [spec:1,mod:alt,@player][spec:1@mouseover, help, nodead][spec:1,@anyfriend,help,nodead][spec:1@player] Pain Suppression; [mod:alt,@player][@mouseover, help, nodead][@anyfriend,help,nodead][@player] Guardian spirit\n",
},
[133] = {
["icon"] = "134400",
["name"] = "pwr",
["body"] = "#showtooltip\n/cast [spec:1,mod:alt,@player][spec:1,@mouseover, help, nodead][spec:1,@anyfriend,help,nodead][spec:1,@player] Power Word: Radiance; [mod:alt,@player][@mouseover, help, nodead][@anyfriend,help,nodead][@player] Prayer of Healing\n",
},
[137] = {
["icon"] = "134400",
["name"] = "Serenity",
["body"] = "#showtooltip\n/cast [mod:alt,@player][@mouseover, help, nodead][@anyfriend,help,nodead][@player] Holy Word: Serenity\n",
},
[121] = {
["icon"] = "134400",
["name"] = "apotheosalv",
["body"] = "#showtooltip\n/use [known: Apotheosis] Apotheosis; [known: 265202] Holy Word: Salvation\n",
},
[123] = {
["icon"] = "134400",
["name"] = "CoH",
["body"] = "#showtooltip\n/cast [mod:alt,@player][@mouseover, help, nodead][@anyfriend,help,nodead][@player] Circle of Healing\n",
},
[125] = {
["icon"] = "642580",
["name"] = "FEATHER",
["body"] = "#showtooltip Angelic Feather\n/console Sound_EnableErrorSpeech 0\n/use [nobtn:2] Prismatic Bauble\n/use [btn:2,@none][@player] Angelic Feather\n/run C_Timer.After(0, function() SetCVar(\"Sound_EnableErrorSpeech\", 1) UIErrorsFrame:Clear() end)\n",
},
[127] = {
["icon"] = "134400",
["name"] = "Heal",
["body"] = "#showtooltip\n/cast [mod:alt,@player][@mouseover, help, nodead][@anyfriend,help,nodead][@player] Heal\n",
},
[130] = {
["icon"] = "135939",
["name"] = "PI",
["body"] = "#showtooltip\n/use [@focus, help, nodead][@player] Power Infusion\n/use Elemental Potion of Ultimate Power\n/use 13\n",
},
[134] = {
["icon"] = "135940",
["name"] = "pws",
["body"] = "#showtooltip\n/cast [mod:alt,@player, spec:1][nomod, @player,spec:3][@mouseover, help, nodead][@anyfriend,help,nodead][@player] Power Word: Shield\n",
},
[138] = {
["icon"] = "631519",
["name"] = "star/halo",
["body"] = "#showtooltip\n/use [known:110744][known:122121] Divine Star; [knOWN:120517][known:120644] Halo\n",
},
},
["backups"] = {
{
["m"] = {
{
["index"] = 121,
["name"] = "apotheosalv",
["icon"] = 134400,
["body"] = "#showtooltip\n/use [known: Apotheosis] Apotheosis; [known: 265202] Holy Word: Salvation\n",
},
{
["index"] = 122,
["name"] = "big shadow cd",
["icon"] = 1386548,
["body"] = "#showtooltip\n/use [spec:3, known: 391109] Dark Ascension; [spec:3,known:228260, spec:3] Void Eruption; [mod:alt @player][@mouseover, help, nodead][@anyfriend, help, nodead][@player] Prayer of Mending\n",
},
{
["index"] = 123,
["name"] = "CoH",
["icon"] = 134400,
["body"] = "#showtooltip\n/cast [mod:alt,@player][@mouseover, help, nodead][@anyfriend,help,nodead][@player] Circle of Healing\n",
},
{
["index"] = 124,
["name"] = "dispel",
["icon"] = 135935,
["body"] = "#showtooltip\n/use [mod:shift, @cursor] Mass Dispel;[known:213634,@mouseover,help,nodead]Purify Disease; [@mouseover, help, nodead][@target, help, nodead] Purify; [harm, nodead] Dispel Magic;[@player,known:213634]Purify Disease; [@player] Purify \n",
},
{
["index"] = 125,
["name"] = "FEATHER",
["icon"] = 642580,
["body"] = "#showtooltip\n/use [btn:2,@none][@player] Angelic Feather\n",
},
{
["index"] = 126,
["name"] = "Flash Heal",
["icon"] = 135907,
["body"] = "#showtooltip\n/cast [mod:alt,@player][@mouseover, help, nodead][@anyfriend,help,nodead][@player] Flash Heal\n",
},
{
["index"] = 127,
["name"] = "Heal",
["icon"] = 134400,
["body"] = "#showtooltip\n/cast [mod:alt,@player][@mouseover, help, nodead][@anyfriend,help,nodead][@player] Heal\n",
},
{
["index"] = 128,
["name"] = "lifegrip",
["icon"] = 463835,
["body"] = "#showtooltip\n/use [@none] Leap of Faith\n",
},
{
["index"] = 129,
["name"] = "PAINSUP",
["icon"] = 134400,
["body"] = "#showtooltip\n/cast [spec:1,mod:alt,@player][spec:1@mouseover, help, nodead][spec:1,@anyfriend,help,nodead][spec:1@player] Pain Suppression; [mod:alt,@player][@mouseover, help, nodead][@anyfriend,help,nodead][@player] Guardian spirit\n",
},
{
["index"] = 130,
["name"] = "PI",
["icon"] = 135939,
["body"] = "#showtooltip\n/use [@focus, help, nodead][@player] Power Infusion\n",
},
{
["index"] = 131,
["name"] = "pwb/sanct/crash",
["icon"] = 136201,
["body"] = "#showtooltip \n/cast [@cursor, spec:1] Power Word: Barrier; [@cursor, spec: 2] Holy Word: Sanctify; [@cursor, spec:3] Shadow Crash\n",
},
{
["index"] = 132,
["name"] = "pwl",
["icon"] = 134400,
["body"] = "#showtooltip\n/cast [mod:alt,@player][@mouseover, help, nodead][@anyfriend,help,nodead][@player] Power Word: Life\n",
},
{
["index"] = 133,
["name"] = "pwr",
["icon"] = 134400,
["body"] = "#showtooltip\n/cast [spec:1,mod:alt,@player][spec:1,@mouseover, help, nodead][spec:1,@anyfriend,help,nodead][spec:1,@player] Power Word: Radiance; [mod:alt,@player][@mouseover, help, nodead][@anyfriend,help,nodead][@player] Prayer of Healing\n",
},
{
["index"] = 134,
["name"] = "pws",
["icon"] = 135940,
["body"] = "#showtooltip\n/cast [mod:alt,@player, spec:1][nomod, @player,spec:3][@mouseover, help, nodead][@anyfriend,help,nodead][@player] Power Word: Shield\n",
},
{
["index"] = 135,
["name"] = "rapture",
["icon"] = 134400,
["body"] = "#showtooltip Rapture\n/castsequence [mod:alt,@player][@mouseover,help,nodead][@anyfriend,help,nodead][@player] reset=combat/10 Rapture, Power Word: Shield, Power Word: Shield, Power Word: Shield, Power Word: Shield, Power Word: Shield, Power Word: Shield\n",
},
{
["index"] = 136,
["name"] = "renew",
["icon"] = 134400,
["body"] = "#showtooltip\n/cast [mod:alt,@player][@mouseover, help, nodead][@anyfriend,help,nodead][@player] Renew\n",
},
{
["index"] = 137,
["name"] = "Serenity",
["icon"] = 134400,
["body"] = "#showtooltip\n/cast [mod:alt,@player][@mouseover, help, nodead][@anyfriend,help,nodead][@player] Holy Word: Serenity\n",
},
{
["index"] = 138,
["name"] = "star/halo",
["icon"] = 631519,
["body"] = "#showtooltip\n/use [known:110744][known:122121] Divine Star; [knOWN:120517][known:120644] Halo\n",
},
},
["d"] = "May 31 19:24:07",
["n"] = "test",
},
},
["lastbackup"] = "May 31 19:24:07",
},
["Sverdrup - Argent Dawn"] = {
["macros"] = {
[131] = {
["icon"] = "839107",
["name"] = "Ring of Peace",
["body"] = "#showtooltip\n/use [@cursor] Ring of Peace\n",
},
[135] = {
["icon"] = "1360980",
["name"] = "Vivify",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player] Vivify\n",
},
[122] = {
["icon"] = "3578227",
["name"] = "Bonedust Brew",
["body"] = "#showtooltip\n/use [@cursor] Bonedust Brew\n",
},
[124] = {
["icon"] = "134400",
["name"] = "Dave",
["body"] = "#showtooltip\n/use [@cursor, known:388686] Summon White Tiger Statue; [@cursor, known:115315] Summon Black Ox Statue; [@cursor, known:115313] Summon Jade Serpent Statue\n",
},
[126] = {
["icon"] = "134400",
["name"] = "envm",
["body"] = "#showtooltip\n/cast [@mouseover,help,nodead][help,nodead][@player] Enveloping Mist\n",
},
[128] = {
["icon"] = "134400",
["name"] = "Life Cocoon",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player] Life Cocoon\n",
},
[132] = {
["icon"] = "606543",
["name"] = "sck",
["body"] = "#showtooltip\n/use !Spinning Crane Kick\n",
},
[136] = {
["icon"] = "134400",
["name"] = "wwCD",
["body"] = "#showtooltip\n/use [known: 221771] Storm, Earth, and Fire: Fixate; [known: 137639] Storm, Earth, and Fire; [known: 152173] Serenity\n",
},
[129] = {
["icon"] = "134400",
["name"] = "mwCD",
["body"] = "#showtooltip\n/use [known:115310] Revival;[known:388615] Restoral\n",
},
[133] = {
["icon"] = "606550",
["name"] = "soom",
["body"] = "#showtooltip\n/cast [@mouseover,help,nodead][help,nodead][@player] Soothing Mist\n",
},
[137] = {
["icon"] = "613397",
["name"] = "Zen Pulse",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][@target,help,nodead][@player] Zen Pulse\n",
},
[121] = {
["icon"] = "134400",
["name"] = "angrydave",
["body"] = "#showtooltip\n/use [known: 322118] Invoke Yu'lon, the Jade Serpent; [known:325197] Invoke Chi-Ji, the Red Crane;[known:123904]Invoke Xuen, the White Tiger;[known:132578]Invoke Niuzao, the Black Ox\n",
},
[123] = {
["icon"] = "134400",
["name"] = "chi shape",
["body"] = "#showtooltip\n/use [known: 115098,@mouseover, nodead, exists][known: 115098, @target, nodead, exists][known: 115098, @player] Chi wave; [known: 123986] Chi Burst\n",
},
[125] = {
["icon"] = "460692",
["name"] = "detox",
["body"] = "#showtooltip\n/cast [@mouseover,help,nodead][help,nodead][@player] Detox\n",
},
[127] = {
["icon"] = "644378",
["name"] = "exploding keg",
["body"] = "#showtooltip\n/use [@cursor] Exploding Keg\n",
},
[130] = {
["icon"] = "134400",
["name"] = "Renewing Mist",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player] Renewing Mist\n",
},
[134] = {
["icon"] = "620830",
["name"] = "taunt",
["body"] = "#showtooltip Provoke\n/cast [nomod,@mouseover,harm,nodead][] Provoke\n/targetexact [mod:alt] Black Ox Statue\n/cast [mod:alt] Provoke\n/targetlasttarget [mod:alt,exists]\n/stopspelltarget [mod:alt, noexists]\n/whoa\n",
},
},
["backups"] = {
},
},
["Estuary - Argent Dawn"] = {
["macros"] = {
[121] = {
["name"] = "Lockon GS",
["icon"] = "132094",
["body"] = "#showtooltip\n/target [@anyenemy]\n/use Ghostly Strike\n",
},
[122] = {
["name"] = "sinister ambush",
["icon"] = "132282",
["body"] = "#showtooltip\n/use Ambush\n/use Sinister Strike\n",
},
[123] = {
["name"] = "stealth",
["icon"] = "132320",
["body"] = "#showtooltip [combat] Vanish; Stealth\n/cast [combat] Vanish; Stealth\n",
},
[124] = {
["name"] = "step",
["icon"] = "132303",
["body"] = "#showtooltip\n/use [@mouseover, exists][@target] Shadowstep\n",
},
},
["backups"] = {
},
},
},
["profileKeys"] = {
["Calestin - Sargeras"] = "profile",
["Strid - Kel'Thuzad"] = "profile",
["Stream - Argent Dawn"] = "profile",
["Naturerivers - Korgath"] = "profile",
["Mangrove - Argent Dawn"] = "profile",
["Inundito - Kel'Thuzad"] = "profile",
["Flumina - Argent Dawn"] = "profile",
["Serenerivers - Bleeding Hollow"] = "profile",
["Emptystreams - Argent Dawn"] = "profile",
["Alluvium - Argent Dawn"] = "profile",
["Crazyrivers - Bleeding Hollow"] = "profile",
["Wildrivers - Bleeding Hollow"] = "profile",
["Confluence - Argent Dawn"] = "profile",
["Gelae - Kel'Thuzad"] = "profile",
["Benthos - Argent Dawn"] = "profile",
["Emptyrivers - Arthas"] = "profile",
["Luckyrivers - Sargeras"] = "profile",
["Lotic - Argent Dawn"] = "profile",
["Boringrivers - Bleeding Hollow"] = "profile",
["Saellindris - Kel'Thuzad"] = "profile",
["Cataracts - Argent Dawn"] = "profile",
["Riptides - Argent Dawn"] = "profile",
["Emptyrivers - Sargeras"] = "profile",
["Esker - Kel'Thuzad"] = "profile",
["Headcut - Argent Dawn"] = "profile",
["Asperos - Kel'Thuzad"] = "profile",
["Emptyrivers - Bleeding Hollow"] = "profile",
["Zimuures - Argent Dawn"] = "profile",
["Kdajshtlaiuw - Bleeding Hollow"] = "profile",
["Mothugeon - Argent Dawn"] = "profile",
["Wildeadoriah - The Scryers"] = "profile",
["Riparium - Argent Dawn"] = "profile",
["Riversticks - Bleeding Hollow"] = "profile",
["Emptyrivers - Argent Dawn"] = "profile",
["Karst - Argent Dawn"] = "profile",
["Alandere - Argent Dawn"] = "profile",
["Sverdrup - Argent Dawn"] = "profile",
["Estuary - Argent Dawn"] = "profile",
},
["global"] = {
["ebackups"] = {
},
["lastbackup"] = "Nov 30 15:35:51",
["backups"] = {
{
["m"] = {
{
["icon"] = 134400,
["index"] = 1,
["name"] = "bauble template",
["body"] = "#showtooltip Heroic Leap\n/console Sound_EnableErrorSpeech 0\n/use Prismatic Bauble\n/cast Heroic Leap\n/run C_Timer.After(0, function() SetCVar(\"Sound_EnableErrorSpeech\", 1) UIErrorsFrame:Clear() end)\n",
},
{
["icon"] = 967534,
["index"] = 2,
["name"] = "PPAutoPot",
["body"] = "#showtooltip \n/castsequence reset=combat item:191383",
},
{
["icon"] = 136210,
["index"] = 3,
["name"] = "Soulstone",
["body"] = "#showtooltip Soulstone\n/use [btn:2,help][btn:2,@player][dead,help] Soulstone",
},
{
["icon"] = 237285,
["index"] = 4,
["name"] = "TBE: Random Toy",
["body"] = "/click TBERandomFavoredToy LeftButton true",
},
{
["icon"] = 5177651,
["index"] = 5,
["name"] = "trinket 1",
["body"] = "#showtooltip\n/use 13\n",
},
{
["icon"] = 135163,
["index"] = 6,
["name"] = "trinket 2",
["body"] = "#showtooltip\n/use 14\n",
},
{
["icon"] = 5001160,
["index"] = 7,
["name"] = "use weapon",
["body"] = "#showtooltip\n/use 16\n",
},
},
["d"] = "Nov 30 15:35:51",
["n"] = "test",
},
},
},
["profiles"] = {
["profile"] = {
["y"] = 420.653076171875,
["x"] = 588.3848266601562,
["height"] = 424.7619323730469,
["override"] = true,
["visconditions"] = true,
["hidepopup"] = true,
},
},
}

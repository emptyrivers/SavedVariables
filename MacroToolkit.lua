
MacroToolkitDB = {
["char"] = {
["Calestin - Sargeras"] = {
["macros"] = {
},
},
["Stream - Argent Dawn"] = {
["macros"] = {
[122] = {
["icon"] = "236178",
["name"] = "Explodobarrage",
["body"] = "#showtooltip\n/use [known:212431] Explosive Shot; Barrage\n",
},
[124] = {
["icon"] = "132242",
["name"] = "Tiger Aspect",
["body"] = "#showtooltip Aspect of the Cheetah\n/console Sound_EnableErrorSpeech 0\n/use Prismatic Bauble\n/cast Aspect of the Cheetah\n/run C_Timer.After(0, function() SetCVar(\"Sound_EnableErrorSpeech\", 1) UIErrorsFrame:Clear() end)\n",
},
[121] = {
["icon"] = "132294",
["name"] = "Disengage",
["body"] = "#showtooltip Disengage\n/console Sound_EnableErrorSpeech 0\n/use Prismatic Bauble\n/cast Disengage\n/run C_Timer.After(0, function() SetCVar(\"Sound_EnableErrorSpeech\", 1) UIErrorsFrame:Clear() end)\n",
},
[123] = {
["icon"] = "134400",
["name"] = "Rootbreak",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player] Master's Call\n",
},
[125] = {
["icon"] = "132205",
["name"] = "Volley",
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
["name"] = "bearform",
["icon"] = 132276,
["index"] = 121,
["body"] = "#showtooltip Bear Form\n/use [noform:1] Bear Form\n",
},
{
["name"] = "catform",
["icon"] = 136116,
["index"] = 122,
["body"] = "#showtooltip Cat Form\n/use [noform:2] Cat Form\n",
},
{
["name"] = "owlform",
["icon"] = 136036,
["index"] = 123,
["body"] = "#showtooltip Moonkin Form\n/use [noform:4, known:197625] Moonkin Form\n",
},
{
["name"] = "Primary Form",
["icon"] = 136047,
["index"] = 124,
["body"] = "#showtooltip\n/cancelform [form:3][form:6]\n/use [spec:3,noform:1]Bear Form; [nostealth,nocombat,spec:2]Prowl; [spec:2,noform:2]Cat Form;[spec:1,noform:4]Moonkin Form\n/cancelform [spec:4]",
},
{
["name"] = "Prowl",
["icon"] = 136047,
["index"] = 125,
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
["icon"] = "134400",
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
["icon"] = "134400",
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
["icon"] = "134400",
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
["icon"] = "132180",
["name"] = "md",
["body"] = "#showtooltip\n/use [@focus] Misdirection\n",
},
},
["backups"] = {
},
},
["Cataracts - Argent Dawn"] = {
["macros"] = {
[122] = {
["icon"] = "1247261",
["name"] = "fel rush",
["body"] = "#showtooltip Fel Rush\n/console Sound_EnableErrorSpeech 0\n/use Prismatic Bauble\n/cast Fel Rush\n/run C_Timer.After(0, function() SetCVar(\"Sound_EnableErrorSpeech\", 1) UIErrorsFrame:Clear() end)\n",
},
[124] = {
["icon"] = "134400",
["name"] = "misery",
["body"] = "#showtooltip\n/use [@cursor] Sigil of Misery\n",
},
[126] = {
["icon"] = "1344652",
["name"] = "Sigil",
["body"] = "#showtooltip\n/use [@cursor, mod][@player] Sigil of Flame\n",
},
[121] = {
["icon"] = "1305149",
["name"] = "Blade Dance",
["body"] = "#showtooltip Blade Dance\n/console Sound_EnableErrorSpeech 0\n/use Prismatic Bauble\n/cast Blade Dance\n/run C_Timer.After(0, function() SetCVar(\"Sound_EnableErrorSpeech\", 1) UIErrorsFrame:Clear() end)\n",
},
[123] = {
["icon"] = "1247262",
["name"] = "metamorphosis",
["body"] = "#showtooltip\n/use [@cursor, mod][@player] Metamorphosis\n",
},
[125] = {
["icon"] = "1348401",
["name"] = "retreat",
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
["Sverdrup - Argent Dawn"] = {
["macros"] = {
[131] = {
["name"] = "Ring of Peace",
["icon"] = "839107",
["body"] = "#showtooltip\n/use [@cursor] Ring of Peace\n",
},
[135] = {
["name"] = "Vivify",
["icon"] = "1360980",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player] Vivify\n",
},
[122] = {
["name"] = "Bonedust Brew",
["icon"] = "3578227",
["body"] = "#showtooltip\n/use [@cursor] Bonedust Brew\n",
},
[124] = {
["name"] = "Dave",
["icon"] = "134400",
["body"] = "#showtooltip\n/use [@cursor, known:388686] Summon White Tiger Statue; [@cursor, known:115315] Summon Black Ox Statue; [@cursor, known:115313] Summon Jade Serpent Statue\n",
},
[126] = {
["name"] = "envm",
["icon"] = "134400",
["body"] = "#showtooltip\n/cast [@mouseover,help,nodead][help,nodead][@player] Enveloping Mist\n",
},
[128] = {
["name"] = "Life Cocoon",
["icon"] = "134400",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player] Life Cocoon\n",
},
[132] = {
["name"] = "sck",
["icon"] = "606543",
["body"] = "#showtooltip\n/use !Spinning Crane Kick\n",
},
[136] = {
["name"] = "wwCD",
["icon"] = "134400",
["body"] = "#showtooltip\n/use [known: 221771] Storm, Earth, and Fire: Fixate; [known: 137639] Storm, Earth, and Fire; [known: 152173] Serenity\n",
},
[129] = {
["name"] = "mwCD",
["icon"] = "134400",
["body"] = "#showtooltip\n/use [known:115310] Revival;[known:388615] Restoral\n",
},
[133] = {
["name"] = "soom",
["icon"] = "606550",
["body"] = "#showtooltip\n/cast [@mouseover,help,nodead][help,nodead][@player] Soothing Mist\n",
},
[137] = {
["name"] = "Zen Pulse",
["icon"] = "613397",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][@target,help,nodead][@player] Zen Pulse\n",
},
[121] = {
["name"] = "angrydave",
["icon"] = "134400",
["body"] = "#showtooltip\n/use [known: 322118] Invoke Yu'lon, the Jade Serpent; [known:325197] Invoke Chi-Ji, the Red Crane;[known:123904]Invoke Xuen, the White Tiger;[known:132578]Invoke Niuzao, the Black Ox\n",
},
[123] = {
["name"] = "chi shape",
["icon"] = "134400",
["body"] = "#showtooltip\n/use [known: 115098,@mouseover, nodead, exists][known: 115098, @target, nodead, exists][known: 115098, @player] Chi wave; [known: 123986] Chi Burst\n",
},
[125] = {
["name"] = "detox",
["icon"] = "460692",
["body"] = "#showtooltip\n/cast [@mouseover,help,nodead][help,nodead][@player] Detox\n",
},
[127] = {
["name"] = "exploding keg",
["icon"] = "644378",
["body"] = "#showtooltip\n/use [@cursor] Exploding Keg\n",
},
[130] = {
["name"] = "Renewing Mist",
["icon"] = "134400",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player] Renewing Mist\n",
},
[134] = {
["name"] = "taunt",
["icon"] = "620830",
["body"] = "#showtooltip Provoke\n/cast [nomod,@mouseover,harm,nodead][] Provoke\n/targetexact [mod:alt] Black Ox Statue\n/cast [mod:alt] Provoke\n/targetlasttarget [mod:alt,exists]\n/stopspelltarget [mod:alt, noexists]\n/whoa\n",
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
["name"] = "living flame",
["icon"] = "4622464",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][harm][help,nodead][@player] Living Flame\n",
},
[135] = {
["name"] = "reversion",
["icon"] = "4630467",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player] Reversion\n",
},
[122] = {
["name"] = "cancel soar",
["icon"] = "136039",
["body"] = "/cancelaura Soar\n",
},
[124] = {
["name"] = "COMMUNISM",
["icon"] = "4630447",
["body"] = "#showtooltip\n/use [nochanneling] Emerald Communion\n",
},
[126] = {
["name"] = "DREAM BREATH",
["icon"] = "4622455",
["body"] = "#showtooltip\n/use [@cursor] Dream Flight\n",
},
[128] = {
["name"] = "Emerald Blossom",
["icon"] = "4622457",
["body"] = "#showtooltip\n/use [@player,mod][@mouseover,help,nodead][help,nodead]Emerald Blossom;[harm] Disintegrate;[@player] Emerald Blossom\n",
},
[132] = {
["name"] = "Move Verdant",
["icon"] = "4622471",
["body"] = "#showtooltip\n/use [@mouseover, help, nodead][@target,help,nodead][@focus,help,nodead][] Verdant Embrace\n",
},
[136] = {
["name"] = "Self Verdant",
["icon"] = "4622471",
["body"] = "#showtooltip\n/use  [@player] Verdant Embrace\n",
},
[129] = {
["name"] = "expunge",
["icon"] = "4630445",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player] Expunge\n",
},
[133] = {
["name"] = "Prescience",
["icon"] = "134400",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player] Prescience\n",
},
[137] = {
["name"] = "spiritbloom",
["icon"] = "4622476",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player] Spiritbloom\n",
},
[121] = {
["name"] = "Blistering Scale",
["icon"] = "134400",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@targettarget,help,nodead][@player] Blistering Scales\n",
},
[123] = {
["name"] = "Cauterize",
["icon"] = "4630446",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player] Cauterizing Flame\n",
},
[125] = {
["name"] = "DEEPBREATH",
["icon"] = "4622450",
["body"] = "#showtooltip\n/use [@cursor] Deep Breath\n",
},
[127] = {
["name"] = "Echo",
["icon"] = "4622456",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player] Echo\n",
},
[130] = {
["name"] = "landslide",
["icon"] = "1016245",
["body"] = "#showtooltip\n/use [@cursor] Landslide\n",
},
[134] = {
["name"] = "rescue",
["icon"] = "134400",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@none] Rescue\n",
},
[138] = {
["name"] = "td",
["icon"] = "4622478",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player] Time Dilation\n",
},
},
["backups"] = {
},
},
["Flumina - Argent Dawn"] = {
["macros"] = {
[131] = {
["name"] = "pwb/sanct/crash",
["icon"] = "136201",
["body"] = "#showtooltip \n/cast [@cursor, spec:1] Power Word: Barrier; [@cursor, spec: 2] Holy Word: Sanctify; [@cursor, spec:3] Shadow Crash\n",
},
[135] = {
["name"] = "rapture",
["icon"] = "134400",
["body"] = "#showtooltip Rapture\n/castsequence [mod:alt,@player][@mouseover,help,nodead][@anyfriend,help,nodead][@player] reset=combat/10 Rapture, Power Word: Shield, Power Word: Shield, Power Word: Shield, Power Word: Shield, Power Word: Shield, Power Word: Shield\n",
},
[122] = {
["name"] = "big shadow cd",
["icon"] = "1445237",
["body"] = "#showtooltip\n/use [spec:3, known: 391109] Dark Ascension; [spec:3,known:228260, spec:3] Void Eruption; [mod:alt @player][@mouseover, help, nodead][@anyfriend, help, nodead][@player] Prayer of Mending\n",
},
[124] = {
["name"] = "dispel",
["icon"] = "135935",
["body"] = "#showtooltip\n/use [mod:shift, @cursor] Mass Dispel;[known:213634,@mouseover,help,nodead]Purify Disease; [@mouseover, help, nodead][@target, help, nodead] Purify; [harm, nodead] Dispel Magic;[@player,known:213634]Purify Disease; [@player] Purify \n",
},
[126] = {
["name"] = "Flash Heal",
["icon"] = "135907",
["body"] = "#showtooltip\n/cast [mod:alt,@player][@mouseover, help, nodead][@anyfriend,help,nodead][@player] Flash Heal\n",
},
[128] = {
["name"] = "lifegrip",
["icon"] = "463835",
["body"] = "#showtooltip\n/use [@none] Leap of Faith\n",
},
[132] = {
["name"] = "pwl",
["icon"] = "134400",
["body"] = "#showtooltip\n/cast [mod:alt,@player][@mouseover, help, nodead][@anyfriend,help,nodead][@player] Power Word: Life\n",
},
[136] = {
["name"] = "renew",
["icon"] = "134400",
["body"] = "#showtooltip\n/cast [mod:alt,@player][@mouseover, help, nodead][@anyfriend,help,nodead][@player] Renew\n",
},
[129] = {
["name"] = "PAINSUP",
["icon"] = "134400",
["body"] = "#showtooltip\n/cast [spec:1,mod:alt,@player][spec:1@mouseover, help, nodead][spec:1,@anyfriend,help,nodead][spec:1@player] Pain Suppression; [mod:alt,@player][@mouseover, help, nodead][@anyfriend,help,nodead][@player] Guardian spirit\n",
},
[133] = {
["name"] = "pwr",
["icon"] = "134400",
["body"] = "#showtooltip\n/cast [spec:1,mod:alt,@player][spec:1,@mouseover, help, nodead][spec:1,@anyfriend,help,nodead][spec:1,@player] Power Word: Radiance; [mod:alt,@player][@mouseover, help, nodead][@anyfriend,help,nodead][@player] Prayer of Healing\n",
},
[137] = {
["name"] = "Serenity",
["icon"] = "134400",
["body"] = "#showtooltip\n/cast [mod:alt,@player][@mouseover, help, nodead][@anyfriend,help,nodead][@player] Holy Word: Serenity\n",
},
[121] = {
["name"] = "apotheosalv",
["icon"] = "134400",
["body"] = "#showtooltip\n/use [known: Apotheosis] Apotheosis; [known: 265202] Holy Word: Salvation\n",
},
[123] = {
["name"] = "CoH",
["icon"] = "134400",
["body"] = "#showtooltip\n/cast [mod:alt,@player][@mouseover, help, nodead][@anyfriend,help,nodead][@player] Circle of Healing\n",
},
[125] = {
["name"] = "FEATHER",
["icon"] = "642580",
["body"] = "#showtooltip Angelic Feather\n/console Sound_EnableErrorSpeech 0\n/use [nobtn:2] Prismatic Bauble\n/use [btn:2,@none][@player] Angelic Feather\n/run C_Timer.After(0, function() SetCVar(\"Sound_EnableErrorSpeech\", 1) UIErrorsFrame:Clear() end)\n",
},
[127] = {
["name"] = "Heal",
["icon"] = "134400",
["body"] = "#showtooltip\n/cast [mod:alt,@player][@mouseover, help, nodead][@anyfriend,help,nodead][@player] Heal\n",
},
[130] = {
["name"] = "PI",
["icon"] = "135939",
["body"] = "#showtooltip\n/use [@focus, help, nodead][@player] Power Infusion\n/use Elemental Potion of Ultimate Power\n/use 13\n",
},
[134] = {
["name"] = "pws",
["icon"] = "135940",
["body"] = "#showtooltip\n/cast [mod:alt,@player, spec:1][nomod, @player,spec:3][@mouseover, help, nodead][@anyfriend,help,nodead][@player] Power Word: Shield\n",
},
[138] = {
["name"] = "star/halo",
["icon"] = "631519",
["body"] = "#showtooltip\n/use [known:110744][known:122121] Divine Star; [knOWN:120517][known:120644] Halo\n",
},
},
["backups"] = {
{
["m"] = {
{
["name"] = "apotheosalv",
["icon"] = 134400,
["index"] = 121,
["body"] = "#showtooltip\n/use [known: Apotheosis] Apotheosis; [known: 265202] Holy Word: Salvation\n",
},
{
["name"] = "big shadow cd",
["icon"] = 1386548,
["index"] = 122,
["body"] = "#showtooltip\n/use [spec:3, known: 391109] Dark Ascension; [spec:3,known:228260, spec:3] Void Eruption; [mod:alt @player][@mouseover, help, nodead][@anyfriend, help, nodead][@player] Prayer of Mending\n",
},
{
["name"] = "CoH",
["icon"] = 134400,
["index"] = 123,
["body"] = "#showtooltip\n/cast [mod:alt,@player][@mouseover, help, nodead][@anyfriend,help,nodead][@player] Circle of Healing\n",
},
{
["name"] = "dispel",
["icon"] = 135935,
["index"] = 124,
["body"] = "#showtooltip\n/use [mod:shift, @cursor] Mass Dispel;[known:213634,@mouseover,help,nodead]Purify Disease; [@mouseover, help, nodead][@target, help, nodead] Purify; [harm, nodead] Dispel Magic;[@player,known:213634]Purify Disease; [@player] Purify \n",
},
{
["name"] = "FEATHER",
["icon"] = 642580,
["index"] = 125,
["body"] = "#showtooltip\n/use [btn:2,@none][@player] Angelic Feather\n",
},
{
["name"] = "Flash Heal",
["icon"] = 135907,
["index"] = 126,
["body"] = "#showtooltip\n/cast [mod:alt,@player][@mouseover, help, nodead][@anyfriend,help,nodead][@player] Flash Heal\n",
},
{
["name"] = "Heal",
["icon"] = 134400,
["index"] = 127,
["body"] = "#showtooltip\n/cast [mod:alt,@player][@mouseover, help, nodead][@anyfriend,help,nodead][@player] Heal\n",
},
{
["name"] = "lifegrip",
["icon"] = 463835,
["index"] = 128,
["body"] = "#showtooltip\n/use [@none] Leap of Faith\n",
},
{
["name"] = "PAINSUP",
["icon"] = 134400,
["index"] = 129,
["body"] = "#showtooltip\n/cast [spec:1,mod:alt,@player][spec:1@mouseover, help, nodead][spec:1,@anyfriend,help,nodead][spec:1@player] Pain Suppression; [mod:alt,@player][@mouseover, help, nodead][@anyfriend,help,nodead][@player] Guardian spirit\n",
},
{
["name"] = "PI",
["icon"] = 135939,
["index"] = 130,
["body"] = "#showtooltip\n/use [@focus, help, nodead][@player] Power Infusion\n",
},
{
["name"] = "pwb/sanct/crash",
["icon"] = 136201,
["index"] = 131,
["body"] = "#showtooltip \n/cast [@cursor, spec:1] Power Word: Barrier; [@cursor, spec: 2] Holy Word: Sanctify; [@cursor, spec:3] Shadow Crash\n",
},
{
["name"] = "pwl",
["icon"] = 134400,
["index"] = 132,
["body"] = "#showtooltip\n/cast [mod:alt,@player][@mouseover, help, nodead][@anyfriend,help,nodead][@player] Power Word: Life\n",
},
{
["name"] = "pwr",
["icon"] = 134400,
["index"] = 133,
["body"] = "#showtooltip\n/cast [spec:1,mod:alt,@player][spec:1,@mouseover, help, nodead][spec:1,@anyfriend,help,nodead][spec:1,@player] Power Word: Radiance; [mod:alt,@player][@mouseover, help, nodead][@anyfriend,help,nodead][@player] Prayer of Healing\n",
},
{
["name"] = "pws",
["icon"] = 135940,
["index"] = 134,
["body"] = "#showtooltip\n/cast [mod:alt,@player, spec:1][nomod, @player,spec:3][@mouseover, help, nodead][@anyfriend,help,nodead][@player] Power Word: Shield\n",
},
{
["name"] = "rapture",
["icon"] = 134400,
["index"] = 135,
["body"] = "#showtooltip Rapture\n/castsequence [mod:alt,@player][@mouseover,help,nodead][@anyfriend,help,nodead][@player] reset=combat/10 Rapture, Power Word: Shield, Power Word: Shield, Power Word: Shield, Power Word: Shield, Power Word: Shield, Power Word: Shield\n",
},
{
["name"] = "renew",
["icon"] = 134400,
["index"] = 136,
["body"] = "#showtooltip\n/cast [mod:alt,@player][@mouseover, help, nodead][@anyfriend,help,nodead][@player] Renew\n",
},
{
["name"] = "Serenity",
["icon"] = 134400,
["index"] = 137,
["body"] = "#showtooltip\n/cast [mod:alt,@player][@mouseover, help, nodead][@anyfriend,help,nodead][@player] Holy Word: Serenity\n",
},
{
["name"] = "star/halo",
["icon"] = 631519,
["index"] = 138,
["body"] = "#showtooltip\n/use [known:110744][known:122121] Divine Star; [knOWN:120517][known:120644] Halo\n",
},
},
["d"] = "May 31 19:24:07",
["n"] = "test",
},
},
["lastbackup"] = "May 31 19:24:07",
},
["Wildeadoriah - The Scryers"] = {
["macros"] = {
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
["name"] = "Cleanse Toxin",
["icon"] = "135953",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player] Cleanse Toxins\n",
},
[124] = {
["name"] = "Freedom",
["icon"] = "134400",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][@focus,help,nodead][help,nodead][@player] Blessing of Freedom\n",
},
[126] = {
["name"] = "Sacrifice",
["icon"] = "134400",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][@focus,help,nodead][]Blessing of Sacrifice\n",
},
[121] = {
["name"] = "BoP",
["icon"] = "134400",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][@focus,help,nodead][help,nodead][@player] Blessing of Protection\n",
},
[123] = {
["name"] = "Final Reckoning",
["icon"] = "135878",
["body"] = "#showtooltip\n/use [@cursor,mod][@player] Final Reckoning\n",
},
[125] = {
["name"] = "Rebuke",
["icon"] = "523893",
["body"] = "#showtooltip\n/use [@mouseover,harm,nodead][@focus,harm,nodead][] Rebuke\n",
},
},
["backups"] = {
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
["Gelae - Kel'Thuzad"] = {
["macros"] = {
[121] = {
["icon"] = "134400",
["name"] = "dispel",
["body"] = "#showtooltip\n/use [@mouseover, help,nodead][help,nodead][@player] Purify Disease\n",
},
[122] = {
["icon"] = "642580",
["name"] = "feather",
["body"] = "#showtooltip Angelic Feather\n/console Sound_EnableErrorSpeech 0\n/use Prismatic Bauble\n/cast [@player] Angelic Feather\n/run C_Timer.After(0, function() SetCVar(\"Sound_EnableErrorSpeech\", 1) UIErrorsFrame:Clear() end)\n",
},
[123] = {
["icon"] = "136201",
["name"] = "scrash",
["body"] = "#showtooltip\n/use [known:205385, @cursor][]Shadow Crash\n",
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
[122] = {
["name"] = "chain",
["icon"] = "136042",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead]Chain Heal;[harm]Lava Burst;[@player]Chain Heal\n",
},
},
},
["Emptyrivers - Argent Dawn"] = {
["macros"] = {
[133] = {
["name"] = "prof/warp",
["icon"] = "4620674",
["body"] = "#showtooltip\n/sp [mod:ctrl, mod:shift] pierre\n/stopmacro [mod:ctrl, mod:shift]\n/use [combat,mod][combat] Time Warp; [mod:shift, mod:alt] Archaeology; [mod:ctrl] Cooking; [mod:alt] Enchanting; [mod] Tailoring; Fishing\n",
},
[131] = {
["name"] = "mana gem",
["icon"] = "134400",
["body"] = "#showtooltip Mana Gem\n/click DeleteManaGem\n/use Conjure Mana Gem\n",
},
[126] = {
["name"] = "FOCUSBLAST",
["icon"] = "134400",
["body"] = "#showtooltip\n/use [@focus] Arcane Blast\n",
},
[132] = {
["name"] = "Meaty Oar",
["icon"] = "1033911",
["body"] = "#showtooltip\n/use [@cursor] Meteor\n",
},
[124] = {
["name"] = "fix concentrate",
["icon"] = "136116",
["body"] = "#showtooltip Arcane Explosion\n/cancelaura Concentration\n/use Arcane Explosion\n",
},
[123] = {
["name"] = "decurse",
["icon"] = "136082",
["body"] = "#showtooltip\n/use [mod:@player][@mouseover,help,nodead][@anyfriend,help,nodead][@player] Remove Curse\n",
},
[127] = {
["name"] = "FOCUSMISSILE",
["icon"] = "134400",
["body"] = "#showtooltip\n/use [@focus] Arcane Missiles\n",
},
[134] = {
["name"] = "RoF",
["icon"] = "134400",
["body"] = "#showtooltip\n/use [@cursor] Ring of Frost\n",
},
[129] = {
["name"] = "kick",
["icon"] = "135856",
["body"] = "#showtooltip\n/use [@mouseover,harm,nodead][@focus,harm,nodead][] Counterspell\n",
},
[135] = {
["name"] = "SpellSteal",
["icon"] = "135729",
["body"] = "#showtooltip\n/use [@mouseover,harm,nodead][@focus,harm,nodead][] Spellsteal\n",
},
[128] = {
["name"] = "freeze",
["icon"] = "134400",
["body"] = "#showtooltip\n/use [@cursor] Freeze\n",
},
[136] = {
["name"] = "trinket",
["icon"] = "5948071",
["body"] = "#showtooltip\n/use 13\n/use Fleeting Elemental Potion of Power\n",
},
[121] = {
["name"] = "blink",
["icon"] = "135739",
["body"] = "#showtooltip Blink\n/console Sound_EnableErrorSpeech 0\n/use Prismatic Bauble\n/cast Blink\n/run C_Timer.After(0, function() SetCVar(\"Sound_EnableErrorSpeech\", 1) UIErrorsFrame:Clear() end)\n",
},
[125] = {
["name"] = "FOCUSBARRAGE",
["icon"] = "134400",
["body"] = "#showtooltip\n/use [@focus] Arcane Barrage\n",
},
[130] = {
["name"] = "lockCast pyro",
["icon"] = "134400",
["body"] = "#showtooltip\n/target [@anyenemy]\n/cast Pyroblast\n",
},
[122] = {
["name"] = "blizzard",
["icon"] = "135857",
["body"] = "#showtooltip\n/use [@cursor, known: Blizzard] Blizzard; [@cursor, known: Flamestrike] Flamestrike; Arcane Explosion\n",
},
},
["backups"] = {
},
},
["Karst - Argent Dawn"] = {
["macros"] = {
[121] = {
["name"] = "charge",
["icon"] = "132337",
["body"] = "#showtooltip Charge\n/console Sound_EnableErrorSpeech 0\n/use Prismatic Bauble\n/cast Charge\n/run C_Timer.After(0, function() SetCVar(\"Sound_EnableErrorSpeech\", 1) UIErrorsFrame:Clear() end)\n",
},
[122] = {
["name"] = "Leap",
["icon"] = "236171",
["body"] = "#showtooltip Heroic Leap\n/console Sound_EnableErrorSpeech 0\n/use Prismatic Bauble\n/cast Heroic Leap\n/run C_Timer.After(0, function() SetCVar(\"Sound_EnableErrorSpeech\", 1) UIErrorsFrame:Clear() end)\n",
},
},
["backups"] = {
},
},
["Headcut - Argent Dawn"] = {
["macros"] = {
[122] = {
["icon"] = "136042",
["name"] = "chain",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead]Chain Heal;[harm]Lava Burst;[@player]Chain Heal\n",
},
[131] = {
["icon"] = "136089",
["name"] = "self earth shiel",
["body"] = "#showtooltip\n/use [@player] Earth Shield\n",
},
[126] = {
["icon"] = "136102",
["name"] = "eb totem",
["body"] = "#showtooltip\n/use [@cursor] Earthbind Totem\n",
},
[132] = {
["icon"] = "134400",
["name"] = "SpiritGust",
["body"] = "#showtooltip\n/cast [known:58875] Spirit Walk; [known: 192063] Gust of Wind\n",
},
[135] = {
["icon"] = "136043",
["name"] = "wave",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player]Healing Wave\n",
},
[133] = {
["icon"] = "136044",
["name"] = "surge",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead]Healing Surge;[harm]Flame Shock;[@player]Healing Surge\n",
},
[127] = {
["icon"] = "971079",
["name"] = "Magma totem",
["body"] = "#showtooltip\n/use [@cursor] Liquid Magma Totem\n",
},
[134] = {
["icon"] = "462328",
["name"] = "Unleash Life",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player]Unleash Life\n",
},
[121] = {
["icon"] = "136013",
["name"] = "cap",
["body"] = "#showtooltip\n/use [@cursor] Capacitor Totem\n",
},
[124] = {
["icon"] = "136089",
["name"] = "Earth Shield",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player] Earth Shield\n",
},
[128] = {
["icon"] = "134400",
["name"] = "Primordial Wave",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player]Primordial Wave\n",
},
[136] = {
["icon"] = "134400",
["name"] = "windgrab totem",
["body"] = "#showtooltip\n/use [known:192077, @cursor] Wind Rush Totem; [known: 51485,@cursor] Earthgrab Totem\n",
},
[129] = {
["icon"] = "136037",
["name"] = "Rain",
["body"] = "#showtooltip\n/use [@cursor] Healing Rain\n",
},
[125] = {
["icon"] = "134400",
["name"] = "earthquake",
["body"] = "#showtooltip\n/use [@cursor] Earthquake\n",
},
[130] = {
["icon"] = "252995",
["name"] = "riptide",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead]Riptide;[harm]Lightning Bolt;[@player]Riptide\n",
},
[123] = {
["icon"] = "236288",
["name"] = "cleanse",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead,spec:3][help,nodead,spec:3][@player,spec:3]Purify Spirit; [@mouseover,help,nodead][help,nodead][@player]Cleanse Spirit\n",
},
},
["backups"] = {
},
},
["Esker - Kel'Thuzad"] = {
["macros"] = {
[121] = {
["icon"] = "236171",
["name"] = "heroic leap",
["body"] = "#showtooltip Heroic Leap\n/console Sound_EnableErrorSpeech 0\n/use Prismatic Bauble\n/cast Heroic Leap\n/run C_Timer.After(0, function() SetCVar(\"Sound_EnableErrorSpeech\", 1) UIErrorsFrame:Clear() end)\n",
},
[122] = {
["icon"] = "134400",
["name"] = "opencache",
["body"] = "#showtooltip\n/use Cache of Infinite Treasure\n",
},
[123] = {
["icon"] = "970854",
["name"] = "ravager",
["body"] = "#showtooltip\n/use [@player] Ravager\n",
},
[124] = {
["icon"] = "134400",
["name"] = "Spear",
["body"] = "#showtooltip\n/use [known: 376079, @cursor] Champion's Spear; [known : 384315] Thunderous Roar\n",
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
["icon"] = "134400",
["body"] = "#showtooltip\n/use [@mouseover, exists][@target] Shadowstep\n",
},
},
["backups"] = {
},
},
},
["global"] = {
["backups"] = {
{
["m"] = {
{
["index"] = 1,
["name"] = "bauble template",
["icon"] = 134400,
["body"] = "#showtooltip Heroic Leap\n/console Sound_EnableErrorSpeech 0\n/use Prismatic Bauble\n/cast Heroic Leap\n/run C_Timer.After(0, function() SetCVar(\"Sound_EnableErrorSpeech\", 1) UIErrorsFrame:Clear() end)\n",
},
{
["index"] = 2,
["name"] = "PPAutoPot",
["icon"] = 967534,
["body"] = "#showtooltip \n/castsequence reset=combat item:191383",
},
{
["index"] = 3,
["name"] = "Soulstone",
["icon"] = 136210,
["body"] = "#showtooltip Soulstone\n/use [btn:2,help][btn:2,@player][dead,help] Soulstone",
},
{
["index"] = 4,
["name"] = "TBE: Random Toy",
["icon"] = 237285,
["body"] = "/click TBERandomFavoredToy LeftButton true",
},
{
["index"] = 5,
["name"] = "trinket 1",
["icon"] = 5177651,
["body"] = "#showtooltip\n/use 13\n",
},
{
["index"] = 6,
["name"] = "trinket 2",
["icon"] = 135163,
["body"] = "#showtooltip\n/use 14\n",
},
{
["index"] = 7,
["name"] = "use weapon",
["icon"] = 5001160,
["body"] = "#showtooltip\n/use 16\n",
},
},
["d"] = "Nov 30 15:35:51",
["n"] = "test",
},
},
["lastbackup"] = "Nov 30 15:35:51",
["ebackups"] = {
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
["Sverdrup - Argent Dawn"] = "profile",
["Alandere - Argent Dawn"] = "profile",
["Emptyrivers - Bleeding Hollow"] = "profile",
["Asperos - Kel'Thuzad"] = "profile",
["Zimuures - Argent Dawn"] = "profile",
["Kdajshtlaiuw - Bleeding Hollow"] = "profile",
["Mothugeon - Argent Dawn"] = "profile",
["Riparium - Argent Dawn"] = "profile",
["Wildeadoriah - The Scryers"] = "profile",
["Riversticks - Bleeding Hollow"] = "profile",
["Emptyrivers - Argent Dawn"] = "profile",
["Karst - Argent Dawn"] = "profile",
["Headcut - Argent Dawn"] = "profile",
["Esker - Kel'Thuzad"] = "profile",
["Estuary - Argent Dawn"] = "profile",
},
["profiles"] = {
["profile"] = {
["y"] = 403.8911743164063,
["x"] = 266.0989990234375,
["height"] = 424.7619323730469,
["override"] = true,
["visconditions"] = true,
["hidepopup"] = true,
},
},
}


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
["icon"] = "136048",
["name"] = "innervate",
["body"] = "#showtooltip\n/use [@player,spec:4][@mouseover,help,nodead][@focus,help,nodead][help,nodead] Innervate\n",
},
[126] = {
["icon"] = "514640",
["name"] = "Prowl",
["body"] = "#showtooltip Prowl\n/cancelform [nocombat,form:3][nocombat,form:6]\n/use [nocombat,nostealth] Prowl\n",
},
[132] = {
["icon"] = "236153",
["name"] = "wild growth",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player]Wild Growth\n",
},
[123] = {
["icon"] = "572025",
["name"] = "Ironbark",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player]Ironbark\n",
},
[127] = {
["icon"] = "132132",
["name"] = "rebirth",
["body"] = "#showtooltip [nocombat] Revive; Rebirth\n/use [@mouseover,nocombat,help,dead][nocombat,help,dead]Revive;[@mouseover,help,dead][help,dead] Rebirth\n",
},
[124] = {
["icon"] = "134206",
["name"] = "lifebloom",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player] Lifebloom\n",
},
[128] = {
["icon"] = "136085",
["name"] = "regrowth",
["body"] = "#showtooltip\n/use [@player,mod:alt,nospec:4][@mouseover,help,nodead][help,nodead][@player]Regrowth\n",
},
[131] = {
["icon"] = "134914",
["name"] = "swiftmend",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player] Swiftmend\n",
},
[121] = {
["icon"] = "236288",
["name"] = "cleanse",
["body"] = "#showtooltip \n/use [spec:4,@mouseover,help,nodead][help,nodead,spec:4][@player,spec:4] Nature's Cure;[@mouseover,help,nodead][help,nodead][@player]Remove Corruption\n",
},
[125] = {
["icon"] = "236162",
["name"] = "Nourish",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player] Nourish\n",
},
[130] = {
["icon"] = "132145",
["name"] = "shift",
["body"] = "#showtooltip [spec:1]Moonkin Form;[spec:2]Cat Form;[spec:3]Bear Form;Treant Form \n/cancelform [form:3][form:6]\n/use [spec:3,noform:1]Bear Form;[nostealth,nocombat,spec:2]Prowl;[spec:2,noform:2]Cat Form;[spec:1,noform:4]Moonkin Form\n/cancelform [spec:4]\n",
},
[129] = {
["icon"] = "136081",
["name"] = "rejuv",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player]Rejuvenation\n",
},
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
["Emptyrivers - Sargeras"] = {
["macros"] = {
},
},
["Alluvium - Argent Dawn"] = {
["macros"] = {
[131] = {
["icon"] = "134400",
["name"] = "Prescience",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player] Prescience\n",
},
[122] = {
["icon"] = "136039",
["name"] = "cancel soar",
["body"] = "/cancelaura Soar\n",
},
[126] = {
["icon"] = "4622455",
["name"] = "DREAM BREATH",
["body"] = "#showtooltip\n/use [@cursor] Dream Flight\n",
},
[132] = {
["icon"] = "134400",
["name"] = "rescue",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead] Rescue\n",
},
[135] = {
["icon"] = "134400",
["name"] = "td",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player] Time Dilation\n",
},
[123] = {
["icon"] = "134400",
["name"] = "Cauterize",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player] Cauterizing Flame\n",
},
[127] = {
["icon"] = "134400",
["name"] = "Echo",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player] Echo\n",
},
[134] = {
["icon"] = "134400",
["name"] = "spiritbloom",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player] Spiritbloom\n",
},
[133] = {
["icon"] = "134400",
["name"] = "reversion",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player] Reversion\n",
},
[124] = {
["icon"] = "134400",
["name"] = "COMMUNISM",
["body"] = "#showtooltip\n/use [nochanneling] Emerald Communion\n",
},
[128] = {
["icon"] = "4622457",
["name"] = "Emerald Blossom",
["body"] = "#showtooltip\n/use [@player,mod][@mouseover,help,nodead][help,nodead]Emerald Blossom;[harm] Disintegrate;[@player] Emerald Blossom\n",
},
[136] = {
["icon"] = "4622471",
["name"] = "Verdant Embrace",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player] Verdant Embrace\n",
},
[121] = {
["icon"] = "134400",
["name"] = "Blistering Scale",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@targettarget,help,nodead][@player] Blistering Scales\n",
},
[125] = {
["icon"] = "4622450",
["name"] = "DEEPBREATH",
["body"] = "#showtooltip\n/use [@cursor] Deep Breath\n",
},
[130] = {
["icon"] = "4622464",
["name"] = "living flame",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][harm][help,nodead][@player] Living Flame\n",
},
[129] = {
["icon"] = "4630445",
["name"] = "expunge",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player] Expunge\n",
},
},
["backups"] = {
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
["icon"] = "135966",
["name"] = "Sacrifice",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][@focus,help,nodead][]Blessing of Sacrifice\n",
},
[121] = {
["icon"] = "135964",
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
["Wildeadoriah - The Scryers"] = {
["macros"] = {
},
},
["Gelae - Kel'Thuzad"] = {
["macros"] = {
},
},
["Riparium - Argent Dawn"] = {
["macros"] = {
[122] = {
["name"] = "Cata",
["icon"] = "134400",
["body"] = "#showtooltip\n/use [@cursor] Cataclysm\n",
},
[126] = {
["name"] = "RUSH",
["icon"] = "840191",
["body"] = "#showtooltip Burning Rush\n/console Sound_EnableErrorSpeech 0\n/use Prismatic Bauble\n/cast Burning Rush\n/run C_Timer.After(0, function() SetCVar(\"Sound_EnableErrorSpeech\", 1) UIErrorsFrame:Clear() end)\n",
},
[123] = {
["name"] = "dismiss",
["icon"] = "538443",
["body"] = "/dismisspet\n",
},
[127] = {
["name"] = "shadowfury",
["icon"] = "136201",
["body"] = "#showtooltip\n/use [@cursor] Shadowfury\n",
},
[124] = {
["name"] = "guillotine",
["icon"] = "134400",
["body"] = "#showtooltip\n/use [@cursor] Guillotine\n",
},
[128] = {
["name"] = "summon infernal",
["icon"] = "136219",
["body"] = "#showtooltip\n/use [@cursor] Summon Infernal\n",
},
[121] = {
["name"] = "biles/demo str",
["icon"] = "236292",
["body"] = "#showtooltip\n/use [known:267171] Demonic Strength; [known:267211, @cursor] Bilescourge Bombers\n",
},
[125] = {
["name"] = "rain of fire",
["icon"] = "134400",
["body"] = "#showtooltip\n/use [@cursor] Rain of Fire\n",
},
[129] = {
["name"] = "VT/PS",
["icon"] = "134400",
["body"] = "#showtooltip\n/use [known:278350, @cursor] Vile Taint\n",
},
},
["backups"] = {
},
},
["Benthos - Argent Dawn"] = {
["macros"] = {
[127] = {
["icon"] = "458718",
["name"] = "Reaping Pillar",
["body"] = "#showtooltip Pillar of Frost\n/cast Pillar of Frost\n/cast Soul Reaper\n",
},
[122] = {
["icon"] = "134400",
["name"] = "Control Undead",
["body"] = "#showtooltip Control Undead\n/target pet\n/run PetDismiss()\n/use Control Undead\n",
},
[124] = {
["icon"] = "237532",
["name"] = "Grip",
["body"] = "#showtooltip\n/use [@mouseover,harm,nodead][] Death Grip\n",
},
[126] = {
["icon"] = "458718",
["name"] = "Pillar Strike",
["body"] = "#showtooltip Pillar of Frost\n/cast Pillar of Frost\n/cast Frost Strike\n",
},
[121] = {
["icon"] = "458718",
["name"] = "Advanced Pillar",
["body"] = "#showtooltip Pillar of Frost\n/cast Pillar of Frost\n/cast Glacial Advance\n",
},
[123] = {
["icon"] = "136144",
["name"] = "D&D",
["body"] = "#showtooltip\n/use [@cursor, mod:alt][@player] Death and Decay\n",
},
[125] = {
["icon"] = "458718",
["name"] = "howling pillar",
["body"] = "#showtooltip Pillar of Frost\n/cast Pillar of Frost\n/cast Howling Blast\n",
},
},
["backups"] = {
},
},
["Emptyrivers - Argent Dawn"] = {
["macros"] = {
[122] = {
["icon"] = "135857",
["name"] = "blizzard",
["body"] = "#showtooltip\n/use [@cursor, known: Blizzard] Blizzard; [@cursor, known: Flamestrike] Flamestrike; Arcane Explosion\n",
},
[126] = {
["icon"] = "135856",
["name"] = "kick",
["body"] = "#showtooltip\n/use [@mouseover,harm,nodead][@focus,harm,nodead][] Counterspell\n",
},
[132] = {
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
["name"] = "lockCast pyro",
["body"] = "#showtooltip\n/target [@anyenemy]\n/cast Pyroblast\n",
},
[133] = {
["icon"] = "132779",
["name"] = "trinket",
["body"] = "#showtooltip\n/use 13\n/use Fleeting Elemental Potion of Power\n",
},
[124] = {
["icon"] = "136116",
["name"] = "fix concentrate",
["body"] = "#showtooltip Arcane Explosion\n/cancelaura Concentration\n/use Arcane Explosion\n",
},
[128] = {
["icon"] = "134400",
["name"] = "mana gem",
["body"] = "#showtooltip Mana Gem\n/click DeleteManaGem\n/use Conjure Mana Gem\n",
},
[121] = {
["icon"] = "135739",
["name"] = "blink",
["body"] = "#showtooltip Blink\n/console Sound_EnableErrorSpeech 0\n/use Prismatic Bauble\n/cast Blink\n/run C_Timer.After(0, function() SetCVar(\"Sound_EnableErrorSpeech\", 1) UIErrorsFrame:Clear() end)\n",
},
[129] = {
["icon"] = "1033911",
["name"] = "Meaty Oar",
["body"] = "#showtooltip\n/use [@cursor] Meteor\n",
},
[125] = {
["icon"] = "134400",
["name"] = "freeze",
["body"] = "#showtooltip\n/use [@cursor] Freeze\n",
},
[130] = {
["icon"] = "4620674",
["name"] = "prof/warp",
["body"] = "#showtooltip\n/sp [mod:ctrl, mod:shift] pierre\n/stopmacro [mod:ctrl, mod:shift]\n/use [combat,mod][combat] Time Warp; [mod:shift, mod:alt] Archaeology; [mod:ctrl] Cooking; [mod:alt] Enchanting; [mod] Tailoring; Fishing\n",
},
[131] = {
["icon"] = "464484",
["name"] = "RoF",
["body"] = "#showtooltip\n/use [@cursor] Ring of Frost\n",
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
[126] = {
["icon"] = "136102",
["name"] = "eb totem",
["body"] = "#showtooltip\n/use [@cursor] Earthbind Totem\n",
},
[132] = {
["icon"] = "462328",
["name"] = "Unleash Life",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player]Unleash Life\n",
},
[123] = {
["icon"] = "236288",
["name"] = "cleanse",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead,spec:3][help,nodead,spec:3][@player,spec:3]Purify Spirit; [@mouseover,help,nodead][help,nodead][@player]Cleanse Spirit\n",
},
[127] = {
["icon"] = "971079",
["name"] = "Magma totem",
["body"] = "#showtooltip\n/use [@cursor] Liquid Magma Totem\n",
},
[134] = {
["icon"] = "134400",
["name"] = "windgrab totem",
["body"] = "#showtooltip\n/use [known:192077, @cursor] Wind Rush Totem; [known: 51485,@cursor] Earthgrab Totem\n",
},
[133] = {
["icon"] = "136043",
["name"] = "wave",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player]Healing Wave\n",
},
[124] = {
["icon"] = "136089",
["name"] = "Earth Shield",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player] Earth Shield\n",
},
[128] = {
["icon"] = "3578231",
["name"] = "Primordial Wave",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player]Primordial Wave\n",
},
[121] = {
["icon"] = "136013",
["name"] = "cap",
["body"] = "#showtooltip\n/use [@cursor] Capacitor Totem\n",
},
[129] = {
["icon"] = "252995",
["name"] = "riptide",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead]Riptide;[harm]Lightning Bolt;[@player]Riptide\n",
},
[125] = {
["icon"] = "134400",
["name"] = "earthquake",
["body"] = "#showtooltip\n/use [@cursor] Earthquake\n",
},
[130] = {
["icon"] = "134400",
["name"] = "SpiritGust",
["body"] = "#showtooltip\n/cast [known:58875] Spirit Walk; [known: 192063] Gust of Wind\n",
},
[131] = {
["icon"] = "136044",
["name"] = "surge",
["body"] = "#showtooltip\n/use [@mouseover,help,nodead][help,nodead]Healing Surge;[harm]Flame Shock;[@player]Healing Surge\n",
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
["icon"] = "3565453",
["name"] = "Spear",
["body"] = "#showtooltip\n/use [@player] Champion's Spear\n",
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
["Emptyrivers - Sargeras"] = "profile",
["Esker - Kel'Thuzad"] = "profile",
["Sverdrup - Argent Dawn"] = "profile",
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
["Alandere - Argent Dawn"] = "profile",
["Headcut - Argent Dawn"] = "profile",
["Estuary - Argent Dawn"] = "profile",
},
["profiles"] = {
["profile"] = {
["y"] = 327.7013854980469,
["x"] = 296.5758056640625,
["height"] = 424.761962890625,
["override"] = true,
["visconditions"] = true,
["hidepopup"] = true,
},
},
}

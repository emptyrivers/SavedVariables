
TD_DB_BATTLEPETSCRIPT_GLOBAL = {
["global"] = {
["version"] = "0.0.0.0",
["scripts"] = {
["FirstEnemy"] = {
},
["AllInOne"] = {
},
["Rematch4"] = {
{
["name"] = "Tiny Poacher, Tiny Animals (Magic)",
["code"] = "use(Batter:455) [enemy(Gulp:1798).active & enemy.round>3]\nuse(Batter:455) [enemy(Egcellent:1793).active & enemy.round>2]\nuse(Sandstorm:453) [round=2]\nuse(Wind-Up:459)\nuse(Poison Protocol:1954)\nuse(Toxic Fumes:2349) [enemy(Red Wire:1794).active & !weather(Toxic Gas:2350)]\nuse(Corrosion:447)\nuse(Meteor Strike:407) [enemy.aura(Flamethrower:502).exists]\nuse(Flamethrower:503)\nchange(next)",
},
[141945] = {
["author"] = "Emptyrivers-Arthas",
["name"] = "Snakes on a Terrace",
["code"] = "standby [ self(#1).active ] \nif [ self(#2).active ] \n  use(#3) [ self.round == 1 ]\n  use(#2) [ enemy.aura(Underwater:830).exists ]\n  use(#1)\nendif",
},
[66730] = {
["name"] = "Hyuna of the Shrines",
["code"] = "standby [self.aura(Stunned:927).exists & self(#3).played]\nchange(#3) [!self(#3).played & !enemy.ability(#2).usable & enemy(#3).active]\nchange(#2) [self(#3).played]\nability(Toxic Skin:1087) [round=1]\nability(Healing Flame:168) [enemy(#2).active & enemy.round=2]\nability(Black Claw:919) [enemy(#3).active & enemy.hpp>75 & !enemy.aura(Black Claw:918).exists & enemy.round>1]\nability(Flock:581) [enemy.aura(Black Claw:918).exists]\nability(#1)\nchange(next)",
},
[66738] = {
["name"] = "Courageous Yon",
["code"] = "change(#3) [self(#1).active & self(#1).dead]\nchange(#2) [self(#3).played]\nability(Prowl:536) [round=2]\nability(Moonfire:595) [round=3]\nstandby [enemy.aura(Adrenaline:161).exists & enemy.ability(Burrow:159).usable]\nability(Booby-Trapped Presents:1080) [!enemy.aura(Booby-Trapped Presents:1081).exists]\nability(Greench's Gift:1076) [enemy(#3).active]\nability(#1)",
},
[116792] = {
["name"] = "Phyxia",
["code"] = "if [enemy(#1).active]\n    ability(459) [self.round=1]\n    ability(208) [self.round=2]\n    ability(459) [self.round=3]\n    ability(640)\nendif\nability(640)\nchange(#2) [self(#1).dead]\n\nability(#3) [enemy.hp<618 & enemy.type !~ 3]\nability(#3) [enemy.hp<406 & enemy.type ~ 3]\nability(#2) [!self(#2).aura(820).exists]\nability(#1)",
},
[117951] = {
["author"] = "Tinyrivers-Sargeras",
["name"] = "Illidari Masters: Nameless Mystic",
["code"] = "if [enemy(#1).active]\n    ability(334) [self.round=1]\n    ability(115)\nendif\nif [enemy(#2).active]\n    ability(334)\n    ability(779)\n    ability(115)\nendif\nif [enemy(#3).active]\n    ability(115)\n    change(#2) [self(#1).dead]\n    ability(334) [self(#2).active]\n    ability(282) [enemy.hp<=618]\n    ability(777)\nendif",
},
[197350] = {
["name"] = "You Have to Start Somewhere",
["code"] = "use(Raclée:455) [round=1]\nuse(Tempête de sable:453) [round=2]\nuse(Remonté:459) [round =3]\n\nuse(Tempête de sable:453) [weather(Tempête de sable:454).duration<1]\nuse(Remonté:459) [enemy(Chat:3398).active]\nuse(Remonté:459) [enemy(Poulet:3400).active]\nuse(Raclée:455)\nuse(#1)\nchange(next)",
},
[105323] = {
["author"] = "Tinyrivers-Sargeras",
["name"] = "Clear the Catacombs",
["code"] = "if [enemy(#1).active]\n    ability(647) [self.round=1]\n    ability(334) [self.round=3]\n    ability(777)\nendif\nif [enemy(#2).active]\n    change(#2) [enemy.round=1]\n    ability(312) [self.round=1]\n    ability(504) [self.round=2]\n    ability(574) [!self.aura(820).exists]\n    ability(504)\nendif\nif [enemy(#3).active]\n    change(#3) [enemy.round=1]\n    change(#1) [self(#3).active]\n    change(#2) [self(#1).dead]\n    ability(334) [self.round=1]\n    ability(647) [self.round=2]\n    ability(777)\n    ability(312) [self.round=1]\n    ability(504)\nendif",
},
[105093] = {
["author"] = "Tinyrivers-Sargeras",
["name"] = "Fragment of Fire",
["code"] = "ability(440) [enemy.round=1]\nability(595) [!weather(596)]\nability(421)\nchange(#2) [self(#1).dead & !self(#2).played]\nchange(#3) [self(#2).active]\nif [enemy(#2).active]\nability(369) [!enemy.aura(368).exists]\nability(445)\nendif\nif [enemy(#3).active]\nability(564)\nability(369) [!enemy.aura(368).exists]\nability(445)\nendif",
},
[116793] = {
["name"] = "Hiss",
["code"] = "if [enemy(#1).active]\n    ability(513) [enemy.round=1]\n    ability(204) [enemy.round=2]\n    change(#2) [enemy.round=3]\n    ability(710) [self.round=1]\n    ability(384)\nendif\nability(710)\nability(384)\nchange(#1) [self(#2).dead]\nability(204)\nability(424)\nchange(#3) [self(#1).dead]\nability(597) [self.aura(823).duration<=1]\nability(598) [self.hp<1000]\nability(525)",
},
[119341] = {
["name"] = "Mining Monkey",
["code"] = "use(Bola de fuerza:566) [round>3]\nuse(Supercarga:208) [self.aura(Desatado:458).exists]\nuse(Desatado:459)\n\nchange(#2)\n\nability(#3) [enemy.hp<618 & enemy.type !~ 3]\nability(#3) [enemy.hp<406 & enemy.type ~ 3]\nability(#2) [!self(#2).aura(820).exists]\nability(#1)",
},
[197447] = {
["name"] = "Eye of the Stormling",
["code"] = "use(Thunderbolt:779)\nuse(Explode:282)\nchange(next)",
},
[197336] = {
["name"] = "The Oldest Dragonfly",
["code"] = "use(Surge of Power:593) [self(#3).active & enemy(Enyobon:3396).hp<610]\nuse(Howl:362) [self(#3).active]\nuse(Surge of Power:593) [self(#3).active]\nstandby [enemy.hp<610 & self(Sentinel's Companion:1567).active]\nchange(next) [self(Sentinel's Companion:1567).dead]\nuse(Moonfire:595)\nuse(Soulrush:752)\nuse(Dark Talon:1233)",
},
[87123] = {
["name"] = "Vesharr",
["code"] = "ability(Arcane Explosion:299)\nability(Explode:282) [enemy.aura(Mechanical:244).exists]\nability(Thunderbolt:779) [!enemy.aura(Flying Mark:1420).exists]\nability(Breath:115)\nchange(#2)",
},
[68462] = {
["name"] = "Flowing Pandaren Spirit",
["code"] = "change(#2) [self(#1).active & self.dead]\nchange(#3) [self(#2).active]\nuse(Lift-Off:170) [!enemy(#3).active & self.aura(Whirlpool:512).duration=1]\nuse(Peck:112)\nuse(Water Jet:118)",
},
[83837] = {
["author"] = "Emptyrivers-Bleeding Hollow",
["name"] = "Cymre Brightblade",
["code"] = "change(#2) [self.round == 3 && !self(#2).played]\nchange(#3) [self(#2).active]\nchange(Puddle Terror:1568) [self(#3).active]\n\nuse(Sunlight:404) [!enemy(Idol of Decay:1443).aura(Dark Rebirth:795).exists]\nuse(Nature's Ward:574) [!self.aura(Nature's Ward:820).exists]\nuse(Punch:111) [!enemy(Idol of Decay:1443).active]\nuse(Punch:111) [enemy(Wishbright Lantern:1444).hp < 309 && !enemy(Idol of Decay:1443).aura(Dark Rebirth:795).exists]\nuse(Nature's Ward:574)",
},
["Nicodemus, Brisby, and Jenner"] = {
["name"] = "Nicodemus, Brisby, and Jenner",
["code"] = "test(Use any standard attack to kill Jenner.) [self(#3).active]\nchange(#1) [self(#2).active]\nuse(Sandstorm:453) [enemy.round=1 & self.speed.slow]\nuse(Deflection:490) [enemy.round=1 & self.speed.fast]\nuse(Sandstorm:453) [enemy.round=2 & self.speed.fast]\nchange(#2) [!self(#2).played]\nuse(Crush:406)\nchange(#3)",
},
[116786] = {
["name"] = "Deviate Smallclaw",
["code"] = "ability(#2) [enemy(#3).active & self(#1).aura(820).duration<=4 & self(#1).active]\nchange(#2) [enemy(#3).active]\nchange(#3) [enemy(#3).active & self(#2).dead]\nability(#1) [enemy(#3).active]\n\nability(#3) [enemy.hp<618 & enemy.type !~ 3]\nability(#3) [enemy.hp<406 & enemy.type ~ 3]\nability(#2) [!self(#1).aura(820).exists]\nability(#1)",
},
[116794] = {
["name"] = "Growing Ectoplasm 1",
["code"] = "if [enemy(Growing Ectoplasm:1995).active & !self(Emerald Proto-Whelp:1167).active]\nuse(Decoy:334)\nuse(#1)\nchange(next)\nendif\nuse(Emerald Presence:597) [!self.aura(Emerald Presence:823).exists]\nuse(Emerald Dream:598) [self.hp < 1000]\nuse(Emerald Bite:525)\nchange(Emerald Proto-Whelp:1167)",
},
[139489] = {
["author"] = "Emptyrivers-Arthas",
["name"] = "Crab People",
["code"] = "change(#2) [ !self(#2).played & self(#1).dead ]\nchange(#3) [ self(#2).played ]\nability(Dodge:312) [ self.aura(Whirlpool:512).duration=1 ]\nability(Dodge:312) [ enemy.aura(Underwater:830).exists ]\nability(Hawk Eye:521) [ enemy.round<3 & !self.aura(Hawk Eye:520).exists & !enemy(#3).active ]\nability(Alpha Strike:504) [ enemy(#3).hp>600 ]\nability(Black Claw:919) [ !enemy.aura(Black Claw:918).exists ]\nability(Flock:581)\nstandby",
},
[197417] = {
["name"] = "Mini Manafiend Melee",
["code"] = "ability(#1) [self(#3).active]\nability(Flyby:515) [round=1]\nability(Breath:115) [enemy.aura(Weakened Defenses:516).exists]\nability(Thunderbolt:779) [self(#2).active]\nability(Explode:282)\nchange(next)",
},
[201878] = {
["name"] = "Paws of Thunder",
["code"] = "use(Blood in the Water:423) [enemy.aura(491).exists]\nuse(Rip:803)\n---------------\nuse(Dodge:312) [enemy(#2).active]\nuse(Stampede:163) [!enemy.aura(242).exists]\nstandby [enemy.aura(242).exists]\n---------------\nuse(Frost Shock:416) [!enemy.aura(415).exists]\nuse(Deep Freeze:481)\nuse(Takedown:221)\n---------------\nchange(next)",
},
[87124] = {
["author"] = "Emptyrivers-Bleeding Hollow",
["name"] = "Ashlei",
["code"] = "use(Explode:282) [ enemy(#2).active & enemy.hp.can_explode ]\nuse(Bombing Run:647) [ enemy(#2).active & enemy.hp.full ]\nuse(Breath:115)",
},
[68463] = {
["name"] = "Burning Pandaren Spirit",
["code"] = "if [enemy(#3).active & weather(Sandstorm:454).duration>2]\n  change(#2) [!self(#2).played & !self(#2).level.max] \n  change(#3) [!self(#3).played & !self(#3).level.max]\nendif\nchange(#1) [!self(#1).active]\nuse(Deflection:490) [enemy.aura(Flying:341).exists]\nuse(Deflection:490) [enemy.ability(Conflagrate:179).usable]\nuse(Sandstorm:453) [round>1]\nuse(Crush:406)",
},
[141046] = {
["author"] = "Emptyrivers-Arthas",
["name"] = "Captured Evil",
["code"] = "if [ self(#1).active ]\n    if [ !enemy(#3).active ]\n        ability(Nature's Ward:574) [ !self.aura(Nature's Ward:820).exists & enemy.hp>309 ]\n        ability(Ravage:802) [ !self.speed.fast & !ability(Alpha Strike504).strong & enemy.ability(Rain Dance:1062).duration>1 ]\n        ability(Ravage:802) [ enemy.ability(Rain Dance:1062).duration>1 & enemy.hp<619 ]\n    endif\n    ability(Ravage:802) [ enemy(#2).active & enemy.hp<310 ]\n    ability(Ravage:802) [ self.speed.slow ]\n    ability(Alpha Strike:504)\nendif\nchange(#2) [ !self(#2).played ]\nchange(#3)\nability(Decoy:334) [ enemy.ability(Darkflame:792).duration=1 ]\nability(#1)",
},
[196069] = {
["name"] = "The Grand Master",
["code"] = "use(Wind-Up:459) [!self.aura(Wind-Up:458).exists & self.ability(Supercharge:208).usable]\nuse(Supercharge:208) [self.aura(Wind-Up:458).exists]\nuse(Wind-Up:459) [self.aura(Wind-Up:458).exists]\nuse(Powerball:566)\nchange(Ikky:1532)\nuse(Savage Talon:1370) [!enemy(Mechanical Pandaren Dragonling:3394).dead]\nuse(Black Claw:919) [!enemy.aura(Black Claw:918).exists]\nuse(Flock:581)",
},
[66741] = {
["name"] = "Aki the Chosen",
["code"] = "change(#2) [self(#1).active & self.dead]\nchange(#3) [enemy(#3).hp<560 & !self(#3).played]\nchange(#2) [self(#3).active]\nuse(Black Claw:919) [enemy(#2).active] \nuse(Leap:364) [self.round>2] \nuse(Bite:110)\nif [weather(Lightning Storm:203)]\n  use(Build Turret:710)\n  use(Repair:278)\nendif \nuse(Build Turret:710) [enemy.ability(Dive:564).usable] \nuse(Metal Fist:384)",
},
[116787] = {
["name"] = "Deviate Flapper",
["code"] = "ability(#2) [enemy(#3).active & self(#1).aura(820).duration<=4 & self(#1).active]\nchange(#2) [enemy(#3).active]\nchange(#3) [enemy(#3).active & self(#2).dead]\nability(#1) [enemy(#3).active]\n\nability(#3) [enemy.hp<618 & enemy.type !~ 3]\nability(#3) [enemy.hp<406 & enemy.type ~ 3]\nability(#2) [!self(#1).aura(820).exists]\nability(#1)",
},
[116795] = {
["name"] = "Everliving Spore",
["code"] = "ability(#3) \nability(#2) \nability(#1)",
},
[104992] = {
["author"] = "Tinyrivers-Sargeras",
["name"] = "Meet The Maw",
["code"] = "ability(Proto-Strike:612) [round=1]\nability(Emerald Presence:597) [round=3]\nability(#1)\nchange(#2)",
},
[128011] = {
["author"] = "Emptyrivers-Bleeding Hollow",
["name"] = "Deathscreech",
["code"] = "ability(#2) [round=1] \nability(#3) [round=2] \nchange(#2) [self(#1).dead] \nability(#2) [self.round=1] \nability(#3)",
},
[197102] = {
["name"] = "Two and Two Together",
["code"] = "use(Arcane Storm:589) [!weather(Arcane Winds:590)]\nuse(Mana Surge:489)\nuse(Tail Sweep:122)\nchange(#2)\nuse(Wind-Up:459)\nuse(Wind-Up:459)",
},
[68464] = {
["name"] = "Whispering Pandaren Spirit",
["code"] = "change(#2) [self(#1).active & self.dead]\nchange(#3) [self(#2).active]\nuse(Ancient Blessing:611)\nuse(Arcane Explosion:299)\nuse(Arcane Storm:589) \nuse(Mana Surge:489) \nstandby",
},
[201849] = {
["name"] = "Adinakon",
["code"] = "ability(Blistering Cold:786)\nability(Chop:943) [!enemy.aura(Bleeding:491).exists]\nability(BONESTORM!!:1762) [!self.aura(Undead:242).exists]\nability(Chop:943)\n\nability(Primal Cry:920)\nability(Black Claw:919) [!enemy.aura(Black Claw:918).exists]\nability(Hunting Party:921)\n\nability(Stampede:163)\nability(Scratch:119)\n\nchange(next)",
},
[105842] = {
["author"] = "Tinyrivers-Sargeras",
["name"] = "Chromadon",
["code"] = "ability(713)",
},
[141969] = {
["author"] = "Emptyrivers-Arthas",
["name"] = "What Do You Mean, Mind Controlling Plants?",
["code"] = "use(Curse of Doom:218)\nuse(Haunt:652)\nchange(#2) [self(#1).dead & !self(#2).active]\nuse(Black Claw:919) [round=3]\nuse(Black Claw:919) [round=9]\nstandby [self.aura(Stunned).duration>=1]\nuse(Savage Talon:518) [enemy.aura(Shattered Defenses:542).exists]\nuse(Flock:581)\nuse(Arcane Storm:589)\nchange(#3) [self(#2).dead & !self(#3).active]\nuse(Falcosaur Swarm!:1773)",
},
[140461] = {
["author"] = "Emptyrivers-Arthas",
["name"] = "Night Horrors",
["code"] = "ability(Black Claw:919) [ !enemy.aura(Black Claw:918).exists ]\nability(Black Claw:919) [ enemy(#3).active & self.hp>366 ]\nability(Flock:581)\nchange(#2) [ !self(#2).played ]\nchange(#3)\nability(Make it Rain:985)\nability(#1)",
},
[116788] = {
["name"] = "Deviate Chomper",
["code"] = "ability(#2) [enemy(#3).active & self(#1).aura(820).duration<=4 & self(#1).active]\nchange(#2) [enemy(#3).active]\nchange(#3) [enemy(#3).active & self(#2).dead]\nability(#1) [enemy(#3).active]\n\nability(#3) [enemy.hp<618 & enemy.type !~ 3]\nability(#3) [enemy.hp<406 & enemy.type ~ 3]\nability(#2) [!self(#1).aura(820).exists]\nability(#1)",
},
[119344] = {
["name"] = "Klutz's Battle Bird",
["code"] = "ability(589)\nability(489)\nability(122)\nchange(#2)\nability(597) [ self.aura(823).duration < 2 & self.speed.slow ]\nability(597) [ !self.aura(823).exists ]\nability(598) [ self.hpp < 50 ]\nability(525)",
},
[98270] = {
["name"] = "My Beast's Bidding",
["code"] = "if [ enemy(#1).active ]\n    ability(Minefield:634) [round=1]\n    ability(Missile:777) [ !enemy.hp.full ]\n    ability(Launch Rocket:293)\nendif\nif [ enemy(#2).active ]\n    ability(Launch Rocket:293)\n    ability(Ion Cannon:209) [ enemy.hp>659 ]\n    ability(Shock and Awe:646) [ enemy.hp<=659 & enemy.hp>369 ]\n    ability(Missile:777)\nendif\nif [ enemy(#3).active ]\n    change(#3) [ !self(#3).played ]\n    change(#2)\n    ability(Ion Cannon:209) [ enemy.hp<=1089 ]\n    ability(Shock and Awe:646)\n    ability(Missile:777)\nendif\nstandby\nchange(next)",
},
[105009] = {
["author"] = "Emptyrivers-Bleeding Hollow",
["name"] = "Thistleleaf Bully",
["code"] = "if [enemy(#1).active & self(#1).active] \nability(652) [enemy.round=4] \nability(499) \nchange(#2) [self(#1).dead] \nendif \nif [self(#2).active] \nability(919) [!enemy.aura(918).exists] \nability(581) \nability(1370) \nchange(#1) [self(#2).dead] \nability(499) \nendif",
},
[105779] = {
["author"] = "Tinyrivers-Sargeras",
["name"] = "Threads of Fate",
["code"] = "if [enemy(#1).active]\n     ability(334)\n     ability(115)\nendif\nif [enemy(#2).active]\n     ability(115)\nendif\nif [enemy(#3).active]\n     ability(115) [enemy.round<=2]\n     ability(334)\n     change(#2) [self(#1).active & !self(#2).played]\n     change(#3) [self(#2).active]\n     ability(312) [self.round=1]\n     ability(504) [self.round=2]\n     ability(574) [!self.aura(820).exists]\n     ability(504)\nendif",
},
["-Master Tamer Flummox (5)"] = {
["author"] = "Tinyrivers-Sargeras",
["name"] = "-Master Tamer Flummox (5)",
["code"] = "ability(Apocalypse) [enemy.round=1] \nchange(#2) [enemy.round=2] \nstandby [enemy.round=3] \nability(Dodge) [enemy.round=4] \nstandby [enemy.round=5] \nability(Burrow) [enemy.round=6] \nchange(#3) [enemy.round=8] \nstandby [enemy.round=9] \nability(Dodge) [enemy.round=10] \nstandby [enemy.round=11] \nability(Burrow) [enemy.round=12] \nstandby [self(#3).active] \nchange(#2) \nif [enemy(#1).active] \nability(Dodge) \nstandby \nendif",
},
[68465] = {
["name"] = "Thundering Pandaren Spirit",
["code"] = "if [enemy(Pandaren Earth Spirit:1141).active]\nstandby [round=1]\nchange(Silkbead Snail:568) [round=2]\nability(Acidic Goo:369) [round=3]\nability(Dive:564) [round=4]\nquit [self.ability(Dive:564).weak]\nability(Absorb:449)\nendif\n\nif [enemy(Sludgy:1134).active]\nability(Acidic Goo:369) [!enemy.aura(Acidic Goo:368).exists]\nability(Absorb:449)\nchange(Mechanical Pandaren Dragonling:844) [self(Silkbead Snail:568).dead]\nability(Breath:115)\nendif\n\nif [enemy(Darnak the Tunneler:1137).active]\nability(Bombing Run:647) [enemy.round=1]\nability(Decoy:334) [enemy.round=3]\nability(Breath:115)\nendif",
},
[141002] = {
["author"] = "Emptyrivers-Arthas",
["name"] = "Sea Creatures Are Weird",
["code"] = "quit [ enemy(#1).active & !enemy.ability(Sweep:457).usable ]\nchange(#1) [ self(#3).active ]\nchange(#3) [ self(#1).dead ]\nif [ self(#1).active ]\n    ability(Supercharge:208) [ round~2,6 ]\n    ability(Wind-Up:459) [ enemy(#1).active ]\n    ability(Wind-Up:459) [ round>6 & self.aura(Mechanical:244).exists & self.aura(Wind-Up:458).exists ]\n    ability(Powerball:566)\nendif\nability(Explode:282) [ enemy(#3).active & enemy(#3).hp<561 ]\nability(Thunderbolt:779) [ !enemy(#2).dead & enemy(#2).hp<245 ]\nability(Thunderbolt:779) [ enemy(#3).active ]\nability(Breath:115)",
},
[119408] = {
["name"] = "\"Captain\" Klutz",
["code"] = "standby [ enemy.round < 3 ]\nability(218)\nability(652)\nchange(#2)\nability(919) [ !enemy.aura(918).exists ]\nability(581)",
},
[200692] = {
["name"] = "Tremblor - Legendary",
["code"] = "use(Blistering Cold:786)\nuse(Chop:943)\nuse(Black Claw:919) [!enemy.aura(Black Claw:918).exists]\nuse(Flock:581)\nuse(Hunting Party:921)\nuse(Leap:364)\nchange(next)",
},
[87110] = {
["name"] = "Tarr the Terrible",
["code"] = "change(#1) [self(#2).played]\nchange(#2) [round=4]\nuse(Corrosion:447) [round=1]\nuse(Poison Protocol:1954)\nuse(Void Nova:2356)\nuse(Corrosion:447)\nuse(Raise Ally:2298)\nuse(Dead Man's Party:1093)\nchange(#3)",
},
[201899] = {
["name"] = "A New Vocation",
["code"] = "use(Corrosion:447) [round=1]\nuse(Void Nova:2356)\nuse(Poison Protocol:1954)\nuse(Corrosion:447)\nchange(#2) [self(#1).dead]\nuse(Arcane Storm:589) [!weather(Arcane Winds:590)]\nuse(Mana Surge:489) [weather(Arcane Winds:590).duration==9]\nuse(Tail Sweep:122)\nchange(#3) [self(#2).dead]\nuse(Water Jet:118)",
},
[87125] = {
["name"] = "Taralune",
["code"] = "standby [round=1]\nchange(#2) [self(#1).active]\nuse(Build Turret:710)\nuse(Repair:278) [self.round=3]\nuse(Metal Fist:384)\nuse(Water Jet:118) [enemy.hp<500]\nuse(Geyser:418)\nuse(Dive:564)\nuse(Water Jet:118)\nchange(#3)",
},
[142114] = {
["author"] = "Emptyrivers-Arthas",
["name"] = "Add More to the Collection",
["code"] = "if [ !self(#2).active ]\n    ability(Extra Plating:392) [ round=1 ]\n    ability(Make it Rain:985) [ enemy.round<4 ]\n    ability(Inflation:1002)\nendif\nchange(#2) [ !self(#2).played ]\nchange(#3)\nability(Arcane Storm:589)\nability(Mana Surge:489)",
},
[116789] = {
["name"] = "Son of Skum",
["code"] = "ability(Black Claw:919) [!enemy.aura(Black Claw:918).exists]\nability(#1) [enemy.aura(Shattered Defenses:542).exists]\nability(Flock:581)\nability(Mana Surge:489)\nability(#1)\nchange(next)",
},
[200693] = {
["name"] = "Tremblor - Rare",
["code"] = "if [round=1]\nability(Tail Sweep:122) [self.speed.fast]\nendif\nability(Call Lightning:204)\n\nability(Blistering Cold:786)\nability(Chop:943) [!enemy.aura(Bleeding:491).exists]\nability(BONESTORM!!:1762)\n\nability(Black Claw:919) [!enemy.aura(Black Claw:918).exists]\nability(Hunting Party:921)\n\nchange(#1)\nchange(#2)\nchange(#3)",
},
["Low lvl fights"] = {
["name"] = "Lydia Accoste",
["code"] = "change(#3) [ !self(#3).played ]\nchange(#2) [ !self(#2).played ]\nchange(#2) [ self(#1).dead ]\nchange(#1)\nuse(Ancient Blessing:611) [ self.hpp < 70 & !self.aura(Dragonkin:245).exists ]\nuse(Ancient Blessing:611) [ self.hpp < 50 ]\nuse(Moonfire:595) [ weather(Moonlight:596).duration <= 1 ]\nstandby [ enemy.aura(Undead:242).exists ]\nuse(Moonfire:595) [ enemy(#3).active ]\nuse(Moonfire:595) [ enemy.hp > 312 ]\nuse(#1)\nstandby",
},
[196264] = {
["name"] = "The Terrible Three",
["code"] = "standby [round=5]\nuse(Corrosion:447) [round=1]\nuse(Void Nova:2356)\nuse(Poison Protocol:1954)\nuse(Corrosion:447)\nuse(Explode:282)\nuse(Surge of Power:593) [self.aura(Dragonkin:245).exists]\nuse(Bite:110)\nchange(next)",
},
[119343] = {
["name"] = "Klutz's Battle Rat",
["code"] = "ability(124)\nability(202)\nchange(#2)\n\nability(#3) [enemy.hp<618 & enemy.type !~ 3]\nability(#3) [enemy.hp<406 & enemy.type ~ 3]\nability(#2) [!self(#2).aura(820).exists]\nability(#1)",
},
[66918] = {
["name"] = "Seeker Zusshi",
["code"] = "change(#2) [enemy(#3).active & !self(#2).played]\nchange(#1) [self(#2).active]\nchange(#3) [self(#1).active & self.dead]\nif [!enemy(#3).active]\n  use(Shell Shield:310) [enemy.round=1]\n  use(Renewing Mists:511) [enemy.round=2]\nendif\nuse(Snap:356)\nability(Surge of Power:593) [enemy.aura(Howl:1725).exists] \nability(Surge of Power:593) [enemy.hp<=740] \nability(Howl:362) [!enemy.hp.full]\nstandby",
},
[98572] = {
["author"] = "Tinyrivers-Sargeras",
["name"] = "Rocko",
["code"] = "ability(1347)",
},
[105898] = {
["author"] = "Tinyrivers-Sargeras",
["name"] = "Size Doesn't Matter",
["code"] = "ability(321)\nchange(#2)\nability(919) [self.round=1]\nability(581)",
},
[200678] = {
["name"] = "Storm-Touched Slyvern",
["code"] = "ability(Arcane Storm:589) [round=1]\nability(Mana Surge:489)\nability(#1)\nchange(next)",
},
[87122] = {
["author"] = "Emptyrivers-Bleeding Hollow",
["name"] = "Gargra",
["code"] = "change(#2) [enemy(#2).active & !self(#2).played]\nchange(#1) [self(#2).active]\nuse(Fel Immolate:901) [enemy(#3).active]\nuse(Supercharge:208)\nuse(Haywire:916)\nuse(Ion Cannon:209)\nchange(#3)",
},
[119409] = {
["name"] = "Foe Reaper 50",
["code"] = "ability(418)\nability(564)\nability(118)\nchange(#2)\nability(#1)",
},
["My Beast's Bidding"] = {
["name"] = "My Beast's Bidding",
["code"] = "if [ enemy(#1).active ]\n    ability(Minefield:634) [round=1]\n    ability(Missile:777) [ !enemy.hp.full ]\n    ability(Launch Rocket:293)\nendif\nif [ enemy(#2).active ]\n    ability(Launch Rocket:293)\n    ability(Ion Cannon:209) [ enemy.hp>659 ]\n    ability(Shock and Awe:646) [ enemy.hp<=659 & enemy.hp>369 ]\n    ability(Missile:777)\nendif\nif [ enemy(#3).active ]\n    change(#3) [ !self(#3).played ]\n    change(#2)\n    ability(Ion Cannon:209) [ enemy.hp<=1089 ]\n    ability(Shock and Awe:646)\n    ability(Missile:777)\nendif\nstandby\nchange(next)",
},
[73626] = {
["name"] = "Little Tommy Newcomer",
["code"] = "ability(Call Lightning:204)\nability(Build Turret:710) [self.ability(#1).usable]\nability(Metal Fist:384)\nchange(#1) [round=3 & self.aura(Mechanical:244).exists]\nability(Decoy:334)\nability(#1)\nchange(next)",
},
[116790] = {
["name"] = "Vilefang",
["code"] = "ability(Ironskin:1758)\nability(Predatory Strike:518) [enemy.aura(Shattered Defenses:542).exists]\nability(#1)\nchange(next)",
},
[119346] = {
["name"] = "Unfortunate Defias",
["code"] = "ability(312) [ self.round = 1 ]\nability(163) [ self.round = 2 ]\nability(163) [ enemy.aura(242).exists ]\nability(360)\nchange(#2)\n\nability(#3) [enemy.hp<618 & enemy.type !~ 3]\nability(#3) [enemy.hp<406 & enemy.type ~ 3]\nability(#2) [!self(#2).aura(820).exists]\nability(#1)",
},
[105352] = {
["author"] = "Tinyrivers-Sargeras",
["name"] = "Mana Tap",
["code"] = "if [enemy(#1).active]  \nchange(#2) [enemy.round=2] \nchange(#1) [self(#2).active] \nability(334) \nability(115) \nendif \nability(334) \nability(115) \nchange(#3) [self(#1).dead] \nability(710) \nability(384)",
},
[189376] = {
["name"] = "Swog the Elder",
["code"] = "ability(Life Exchange) [round>3]\nability(Slicing Wind)\nability(Explode) [enemy.hp<618]\nability(Explode) [self.aura(Failsafe).exists]\nability(Decoy)\nability(#1)\nchange(next)",
},
[105241] = {
["author"] = "Tinyrivers-Sargeras",
["name"] = "Fight Night: Rats!",
["code"] = "ability(218)\nability(652)\nchange(#2) [self(#1).dead]\nability(919) [!enemy.aura(918).exists]\nability(581)",
},
[141529] = {
["author"] = "Emptyrivers-Arthas",
["name"] = "Marshdwellers",
["code"] = "ability(459)\nability(208)\nability(459)\nability(566)\nability(566)\nability(459)\nability(459)\nability(459)\nability(566)",
},
[117934] = {
["author"] = "Tinyrivers-Sargeras",
["name"] = "Illidari Masters: Sissix",
["code"] = "if [enemy(#1).active]\nability(1758)\nability(518) [enemy.aura(542).duration>0]\nability(1773)\nendif\nif [enemy(#2).active]\nability(518) [enemy.aura(542).duration>0]\nability(1773)\nendif\nif [enemy(#3).active]\nability(1773)\nchange(#3) [self(#1).dead & !self(#3).played]\nchange(#2) [self(#3).active]\nability(459) [self.round=1]\nability(566) [self.round=2]\nability(208) [self.round=3]\nability(459)\nendif",
},
[204934] = {
["name"] = "Do You Even Train?",
["code"] = "use(Moonfire:595) [!weather(Moonlight:596)]\nuse(Prowl:536) [enemy(Lifft:3572).active]\nuse(Spirit Claws:974)\n\nuse(Decoy:334) [enemy(Swole:3573).active]\nuse(Breath:115)\n\nuse(Deflection:490) [enemy(Swole:3573).aura(Underwater:830).exists]\nuse(Rampage:124) [!enemy(Swole:3573).ability(Dive:564).usable]\nuse(Triple Snap:355)\n\nstandby\nchange(next)",
},
[66733] = {
["name"] = "Mo'ruk",
["code"] = "change(#2) [enemy(#2).active]\nability(Explode:282) [enemy(#3).active & enemy.hp.can_explode]\nability(Decoy:334) [enemy.ability(Headbutt:376).duration=2]\nability(Decoy:334) [round=2]\nability(Howl:362)\nability(Surge of Power:593)\nability(#1)\nstandby\nchange(#1)",
},
[140813] = {
["author"] = "Emptyrivers-Arthas",
["name"] = "Rogue Azerite",
["code"] = "ability(Whirlpool:513) [self(Pandaren Water Spirit:868).active]\nability(Dive:564) [self(Pandaren Water Spirit:868).active]\nability(Water Jet:118) [self(Pandaren Water Spirit:868).active]\nchange(#2) [self(Pandaren Water Spirit:868).dead & !self(Rapana Whelk:743).active]\nchange(Rapana Whelk:743)\nability(Shell Shield:310) [self(Rapana Whelk:743).aura(Shell Shield:309).duration <2]\nability(Dive:564)\nability(Absorb:449)",
},
[202458] = {
["name"] = "They're Full of Stars!",
["code"] = "if [ enemy(#1).active ]\nuse(Supercharge:208) [ self.aura(Wind-Up:458).exists ]\nuse(Powerball:566) [enemy.hp<243]\nuse(Wind-Up:459)\nendif\n\nif [ enemy(#2).active ]\nuse(Bola de fuerza:566) [ round=4 ]\nuse(Supercharge:208) [ self.aura(Wind-Up:458).exists ]\nuse(Wind-Up:459)\nendif\n\nif [ enemy(#3).active ]\nchange(#2) [self(#1).dead]\nuse(Bola de fuerza:566) [ self.aura(Mechanical:244).exists]\nuse(Explotar:282) [ self.aura(Mechanical:244).exists]\nability(#1)\nendif",
},
[141879] = {
["author"] = "Emptyrivers-Arthas",
["name"] = "Keeyo’s Champions of Vol’dun",
["code"] = "change(next) [ self.dead ]\nif [ self(#1).active ] \n  use(#2) [ self.round == 1 ]\n  use(#2) [ enemy.aura(Dodge).exists ]\n  standby [ enemy(#3).hpp<=50 ]\n  use(#3)\n  use(#1)\nendif\n\nchange(next) [ self(#2).active & !self(#3).played ] \n\nif [ self(#3).active ] \n  use(#3)\n  use(#1)\nendif",
},
[66739] = {
["name"] = "Wastewalker Shu",
["code"] = "change(#2) [self(#1).dead]\nability(Explode:282) [enemy(#3).hp<=618]\nability(Moonfire:595) [round=2]\nability(Evanescence:440) [self.aura(Whirlpool:512).exists]\nability(Evanescence:440) [enemy(#2).active]\nability(Arcane Blast:421)\nability(Missile:777) [self.round=1]\nability(Decoy:334) [self(#2).active & enemy(#2).active]\nability(Missile:777)",
},
[142054] = {
["author"] = "Emptyrivers-Arthas",
["name"] = "Desert Survivors",
["code"] = "quit [round=2 & enemy.hpp=100] \nif [enemy(Stinger:2358).active] \nability(Powerball:566) [enemy.round=1] \nendif \nchange(Iron Starlette:1387) [self(Ash'ana:1927).dead] \nability(Supercharge:208) [self.aura(Wind-Up:458).exists] \nability(Wind-Up:459) \nchange(#2) [round=5] \nchange(Ash'ana:1927) [self(#2).active] \nability(Moonfire:595) [round=1] \nability(Pounce:535) [enemy.aura(Speed Reduction:154).exists] \nability(Screech:357)",
},
[141292] = {
["author"] = "Emptyrivers-Arthas",
["name"] = "That’s a Big Carcass",
["code"] = "ability(Flock:581) [ enemy.aura(Black Claw:918).exists ]\nability(Black Claw:919)\nchange(#3)\nability(Predatory Strike:518) [ enemy.aura(Shattered Defenses:542).exists ]\nchange(#2) [ !self(#2).played ]\nability(Ironskin:1758) [ self.round=1 ]\nability(#1)",
},
[142096] = {
["author"] = "Emptyrivers-Arthas",
["name"] = "Critters are Friends, Not Food",
["code"] = "ability(Decoy:334) [ enemy.aura(Bomb:819).duration=1 ]\nability(Bombing Run:647) [ enemy.round<3 ]\nability(Bombing Run:647) [ self.aura(Mechanical:244).exists & enemy(#1).hp<220 ]\nability(Missile:777)\nchange(#2) [ !self(#2).played ]\nchange(#3)\nability(Arcane Storm:589)\nability(Mana Surge:489)\nability(Tail Sweep:122)",
},
[200680] = {
["name"] = "Storm-Touched Ohuna",
["code"] = "standby [ round = 1 ]\nuse(curse:218)\nuse(haunt:652)\nuse(claw:919) [ !enemy.aura(claw:918).exists ]\nuse(flock:581)\nchange(next)",
},
[66734] = {
["name"] = "Farmer Nishi",
["code"] = "change(#2) [self(#1).dead & !self(#2).played]\nchange(#3) [self(#2).active]\nability(Pump) [enemy.round=1]\nability(Pump) [enemy.round=3 & enemy(#2).active]\nability(Cleansing Rain) [enemy.round=2]\nability(Water Jet)\nability(Shock and Awe)\nability(Ion Cannon) (edited)",
},
[99742] = {
["author"] = "Tinyrivers-Sargeras",
["name"] = "Fight Night: Heliosus",
["code"] = "ability(218)\nability(652)\nchange(#2) \nability(919) [self.round=1]\nability(581)",
},
[116791] = {
["name"] = "Dreadcoil",
["code"] = "if [enemy(#1).active]\n    ability(392) [self.round=1]\n    ability(985) [self.round=2]\n    ability(1002)\nendif\nability(1002)\nchange(#2) [self(#1).dead]\n\nability(#3) [enemy.hp<618 & enemy.type !~ 3]\nability(#3) [enemy.hp<406 & enemy.type ~ 3]\nability(#2) [!self(#2).aura(820).exists]\nability(#1)",
},
[200697] = {
["name"] = "Flow - Rare",
["code"] = "use(Haunt:652)\nuse(Black Claw:919) [!enemy.aura(Black Claw:918).exists]\nuse(Hunting party:921)\nuse(Leap:364)\nchange(next)\n\n--Script created by Anolaszun#1423",
},
[117950] = {
["author"] = "Tinyrivers-Sargeras",
["name"] = "Illidari Masters: Madam Viciosa",
["code"] = "if [enemy(#1).active]\n    standby [self(#1).active]\n    ability(218)\n    ability(210) [enemy.aura(217).duration>2]\n    ability(652)\n    change(#3) [enemy.aura(653).exists]\n    ability(334)\n    ability(115)\nendif\nif [enemy(#2).active]\n    ability(115)\nendif\nif [enemy(#3).active]\n    standby [self.aura(927).exists]\n    ability(779)\n    ability(334)\n    ability(115)\n    change(#2) [self(#3).dead]\n    ability(210)\nendif",
},
[105512] = {
["author"] = "Tinyrivers-Sargeras",
["name"] = "All Pets Go to Heaven",
["code"] = "change(#2) [ !self(#2).played & enemy(#2).active & enemy.round ~ 5, 6 ]\nif [ self(#1).active ]\n    ability(Flurry:360) [ enemy(#2).active & enemy.hp > 550 ]\n    ability(Flurry:360) [ !enemy.aura(Undead:242).exists & self.round > 1 ]\n    ability(Dodge:312)\nendif\nif [ enemy(#2).active ]\n    change(#2) [ self(#1).dead & !self(#2).played & !self(#3).played & enemy.round = 4 ]\n    change(#3)\n    ability(Burrow:159) [ enemy.round = 3 ]\n    ability(Dodge:312) [ enemy.round ~ 1, 9 ]\n    ability(Flurry:360)\nendif\nchange(#3)\nability(Dodge:312) [ enemy.ability(Curse of Doom:218).usable ]\nability(Flurry:360)",
},
["Growing Ectoplasm 2"] = {
["name"] = "Growing Ectoplasm 2",
["code"] = "change(#2) [self(#1).dead]\nchange(#3) [self(#2).dead]\nif [enemy(#1).active]\n    ability(919) [!enemy.aura(918).exists]\n    ability(921)\n    ability(364) [enemy.aura(542).exists]\nendif\nability(919) [!enemy.aura(918).exists]\nability(921)\nability(597) [self.aura(823).duration<=1]\nability(598) [self.hp<1000]\nability(525)",
},
[119345] = {
["name"] = "Klutz's Battle Monkey",
["code"] = "use(208) [ round=1 ]\nuse(204)\nuse(490) [ self.aura(512).duration=1 ]\nuse(490) [ enemy.aura(341).exists ]\nuse(436) [ self.aura(435).duration<=1 & enemy(#3).hp>227 ]\nuse(#1)\nchange(#2)",
},
[99880] = {
["author"] = "Tinyrivers-Sargeras",
["name"] = "Oh, Ominitron",
["code"] = "ability(453)\nability(406) [self.round=2]\nability(814)\nability(406)\nchange(#2) [!self(#2).played]\nchange(#3)\nability(334) [self.round=1]\nability(779) [enemy(#1).dead & enemy(#2).dead]\nability(115)",
},
[104782] = {
["author"] = "Tinyrivers-Sargeras",
["name"] = "Wildlife Protection Force",
["code"] = "change(#2) [self(#1).dead & !self(#2).played]\nchange(#3) [self(#2).active]\nchange(#1) [self(#3).dead]\nif [enemy(#1).active]\nability(218)\nability(652)\nability(919) [!enemy.aura(918).exists]\nability(581) [enemy.aura(918).exists]\nendif\nability(184)\nability(422)",
},
[119342] = {
["name"] = "Angry Geode",
["code"] = "ability(Dive:564) [enemy.aura(Stoneskin:435).exists & enemy.ability(Crystal Prison:569).usable]\nability(Nature's Ward:574) [self.hpp<100 & !self.aura(Nature's Ward:820).exists]\nability(#1)\nchange(next)",
},
[119407] = {
["name"] = "Cookie's Leftovers",
["code"] = "standby [ self.aura(926).exists & self.speed.fast ]\nability(334)\nability(779)\nability(115)\nchange(#2)\nability(312) [ enemy.ability(#3).usable ]\nability(574) [ self.aura(820).duration < 2 & self.speed.slow ]\nability(574) [ !self.aura(820).exists ]\nability(504)",
},
[79179] = {
["name"] = "Deebs, Tyri and Puzzle",
["code"] = "ability(Sweep:457) [ round=1 ]\nchange(next) [ !self(#3).active & !self(#3).played ]\nability(Wind-Up:459) [ enemy(#3).active ]\nability(#1)\nability(#2)\nability(#3)\nchange(#1)",
},
[107489] = {
["author"] = "Emptyrivers-Bleeding Hollow",
["name"] = "Fight Night: Amalia",
["code"] = "if [enemy(#1).active]\n    ability(634)\n    ability(209) [enemy.hp<=1098]\n    ability(777)\nendif\nif [enemy(#2).active]\n    ability(634)\n    standby [self(#1).active]\n    change(#3) [self(#1).dead]\n    ability(312) [self.round=1]\n    ability(574) [!self.aura(820).exists]\n    ability(504)\nendif\nif [enemy(#3).active]\n    change(#3) [self(#2).active]\n    standby [enemy.round=4]\n    ability(312)\n    ability(574) [!self.aura(820).exists]\n    ability(504)\nendif",
},
},
["Base"] = {
},
["Rematch"] = {
["team:212"] = {
["name"] = "Klutz's Battle Rat",
["code"] = "ability(124)\nability(202)\nchange(#2)\n\nability(#3) [enemy.hp<618 & enemy.type !~ 3]\nability(#3) [enemy.hp<406 & enemy.type ~ 3]\nability(#2) [!self(#2).aura(820).exists]\nability(#1)",
},
["team:6"] = {
["name"] = "Phyxia",
["code"] = "if [enemy(#1).active]\n    ability(459) [self.round=1]\n    ability(208) [self.round=2]\n    ability(459) [self.round=3]\n    ability(640)\nendif\nability(640)\nchange(#2) [self(#1).dead]\n\nability(#3) [enemy.hp<618 & enemy.type !~ 3]\nability(#3) [enemy.hp<406 & enemy.type ~ 3]\nability(#2) [!self(#2).aura(820).exists]\nability(#1)",
},
["team:34"] = {
["author"] = "Emptyrivers-Arthas",
["name"] = "That's a Big Carcass",
["code"] = "ability(Flock:581) [ enemy.aura(Black Claw:918).exists ]\nability(Black Claw:919)\nchange(#3)\nability(Predatory Strike:518) [ enemy.aura(Shattered Defenses:542).exists ]\nchange(#2) [ !self(#2).played ]\nability(Ironskin:1758) [ self.round=1 ]\nability(#1)",
},
["team:192"] = {
["author"] = "Emptyrivers-Arthas",
["name"] = "Marshdwellers",
["code"] = "ability(459)\nability(208)\nability(459)\nability(566)\nability(566)\nability(459)\nability(459)\nability(459)\nability(566)",
},
["team:265"] = {
["author"] = "Emptyrivers-Bleeding Hollow",
["name"] = "Ashlei",
["code"] = "use(Explode:282) [ enemy(#2).active & enemy.hp.can_explode ]\nuse(Bombing Run:647) [ enemy(#2).active & enemy.hp.full ]\nuse(Breath:115)",
},
["team:203"] = {
["author"] = "Emptyrivers-Bleeding Hollow",
["name"] = "Fight Night: Amalia",
["code"] = "if [enemy(#1).active]\n    ability(634)\n    ability(209) [enemy.hp<=1098]\n    ability(777)\nendif\nif [enemy(#2).active]\n    ability(634)\n    standby [self(#1).active]\n    change(#3) [self(#1).dead]\n    ability(312) [self.round=1]\n    ability(574) [!self.aura(820).exists]\n    ability(504)\nendif\nif [enemy(#3).active]\n    change(#3) [self(#2).active]\n    standby [enemy.round=4]\n    ability(312)\n    ability(574) [!self.aura(820).exists]\n    ability(504)\nendif",
},
["team:229"] = {
["name"] = "\"Captain\" Klutz",
["code"] = "standby [ enemy.round < 3 ]\nability(218)\nability(652)\nchange(#2)\nability(919) [ !enemy.aura(918).exists ]\nability(581)",
},
["team:188"] = {
["name"] = "Thundering Pandaren Spirit",
["code"] = "if [enemy(Pandaren Earth Spirit:1141).active]\nstandby [round=1]\nchange(Silkbead Snail:568) [round=2]\nability(Acidic Goo:369) [round=3]\nability(Dive:564) [round=4]\nquit [self.ability(Dive:564).weak]\nability(Absorb:449)\nendif\n\nif [enemy(Sludgy:1134).active]\nability(Acidic Goo:369) [!enemy.aura(Acidic Goo:368).exists]\nability(Absorb:449)\nchange(Mechanical Pandaren Dragonling:844) [self(Silkbead Snail:568).dead]\nability(Breath:115)\nendif\n\nif [enemy(Darnak the Tunneler:1137).active]\nability(Bombing Run:647) [enemy.round=1]\nability(Decoy:334) [enemy.round=3]\nability(Breath:115)\nendif",
},
["team:40"] = {
["author"] = "Tinyrivers-Sargeras",
["name"] = "Fight Night: Heliosus",
["code"] = "ability(218)\nability(652)\nchange(#2) \nability(919) [self.round=1]\nability(581)",
},
["team:213"] = {
["name"] = "Storm-Touched Ohuna",
["code"] = "standby [ round = 1 ]\nuse(curse:218)\nuse(haunt:652)\nuse(claw:919) [ !enemy.aura(claw:918).exists ]\nuse(flock:581)\nchange(next)",
},
["team:167"] = {
["name"] = "Flowing Pandaren Spirit",
["code"] = "change(#2) [self(#1).active & self.dead]\nchange(#3) [self(#2).active]\nuse(Lift-Off:170) [!enemy(#3).active & self.aura(Whirlpool:512).duration=1]\nuse(Peck:112)\nuse(Water Jet:118)",
},
["team:137"] = {
["name"] = "Mo'ruk",
["code"] = "change(#2) [enemy(#2).active]\nability(Explode:282) [enemy(#3).active & enemy.hp.can_explode]\nability(Decoy:334) [enemy.ability(Headbutt:376).duration=2]\nability(Decoy:334) [round=2]\nability(Howl:362)\nability(Surge of Power:593)\nability(#1)\nstandby\nchange(#1)",
},
["team:27"] = {
["name"] = "Taralune",
["code"] = "standby [round=1]\nchange(#2) [self(#1).active]\nuse(Build Turret:710)\nuse(Repair:278) [self.round=3]\nuse(Metal Fist:384)\nuse(Water Jet:118) [enemy.hp<500]\nuse(Geyser:418)\nuse(Dive:564)\nuse(Water Jet:118)\nchange(#3)",
},
["team:200"] = {
["author"] = "Emptyrivers-Arthas",
["name"] = "Desert Survivors",
["code"] = "quit [round=2 & enemy.hpp=100] \nif [enemy(Stinger:2358).active] \nability(Powerball:566) [enemy.round=1] \nendif \nchange(Iron Starlette:1387) [self(Ash'ana:1927).dead] \nability(Supercharge:208) [self.aura(Wind-Up:458).exists] \nability(Wind-Up:459) \nchange(#2) [round=5] \nchange(Ash'ana:1927) [self(#2).active] \nability(Moonfire:595) [round=1] \nability(Pounce:535) [enemy.aura(Speed Reduction:154).exists] \nability(Screech:357)",
},
["team:22"] = {
["name"] = "Growing Ectoplasm 1",
["code"] = "if [enemy(Growing Ectoplasm:1995).active & !self(Emerald Proto-Whelp:1167).active]\nuse(Decoy:334)\nuse(#1)\nchange(next)\nendif\nuse(Emerald Presence:597) [!self.aura(Emerald Presence:823).exists]\nuse(Emerald Dream:598) [self.hp < 1000]\nuse(Emerald Bite:525)\nchange(Emerald Proto-Whelp:1167)",
},
["team:244"] = {
["name"] = "Foe Reaper 50",
["code"] = "ability(418)\nability(564)\nability(118)\nchange(#2)\nability(#1)",
},
["team:238"] = {
["author"] = "Emptyrivers-Arthas",
["name"] = "Crab People",
["code"] = "change(#2) [ !self(#2).played & self(#1).dead ]\nchange(#3) [ self(#2).played ]\nability(Dodge:312) [ self.aura(Whirlpool:512).duration=1 ]\nability(Dodge:312) [ enemy.aura(Underwater:830).exists ]\nability(Hawk Eye:521) [ enemy.round<3 & !self.aura(Hawk Eye:520).exists & !enemy(#3).active ]\nability(Alpha Strike:504) [ enemy(#3).hp>600 ]\nability(Black Claw:919) [ !enemy.aura(Black Claw:918).exists ]\nability(Flock:581)\nstandby",
},
["team:270"] = {
["name"] = "Nicodemus, Brisby, and Jenner",
["code"] = "test(Use any standard attack to kill Jenner.) [self(#3).active]\nchange(#1) [self(#2).active]\nuse(Sandstorm:453) [enemy.round=1 & self.speed.slow]\nuse(Deflection:490) [enemy.round=1 & self.speed.fast]\nuse(Sandstorm:453) [enemy.round=2 & self.speed.fast]\nchange(#2) [!self(#2).played]\nuse(Crush:406)\nchange(#3)",
},
["team:196"] = {
["name"] = "Angry Geode",
["code"] = "ability(Dive:564) [enemy.aura(Stoneskin:435).exists & enemy.ability(Crystal Prison:569).usable]\nability(Nature's Ward:574) [self.hpp<100 & !self.aura(Nature's Ward:820).exists]\nability(#1)\nchange(next)",
},
["team:14"] = {
["name"] = "Vesharr",
["code"] = "ability(Arcane Explosion:299)\nability(Explode:282) [enemy.aura(Mechanical:244).exists]\nability(Thunderbolt:779) [!enemy.aura(Flying Mark:1420).exists]\nability(Breath:115)\nchange(#2)",
},
["team:227"] = {
["name"] = "Swog the Elder",
["code"] = "ability(Life Exchange) [round>2]\nability(Slicing Wind)\nability(Explode) [enemy.hp<618]\nability(Explode) [self.aura(Failsafe).exists]\nability(Decoy)\nability(#1)\nchange(next)",
},
["team:261"] = {
["name"] = "Mining Monkey",
["code"] = "use(Bola de fuerza:566) [round>3]\nuse(Supercarga:208) [self.aura(Desatado:458).exists]\nuse(Desatado:459)\n\nchange(#2)\n\nability(#3) [enemy.hp<618 & enemy.type !~ 3]\nability(#3) [enemy.hp<406 & enemy.type ~ 3]\nability(#2) [!self(#2).aura(820).exists]\nability(#1)",
},
["team:214"] = {
["name"] = "Cookie's Leftovers",
["code"] = "standby [ self.aura(926).exists & self.speed.fast ]\nability(334)\nability(779)\nability(115)\nchange(#2)\nability(312) [ enemy.ability(#3).usable ]\nability(574) [ self.aura(820).duration < 2 & self.speed.slow ]\nability(574) [ !self.aura(820).exists ]\nability(504)",
},
["team:166"] = {
["author"] = "Emptyrivers-Arthas",
["name"] = "What Do You Mean, Mind Controlling Plants?",
["code"] = "use(Curse of Doom:218)\nuse(Haunt:652)\nchange(#2) [self(#1).dead & !self(#2).active]\nuse(Black Claw:919) [round=3]\nuse(Black Claw:919) [round=9]\nstandby [self.aura(Stunned).duration>=1]\nuse(Savage Talon:518) [enemy.aura(Shattered Defenses:542).exists]\nuse(Flock:581)\nuse(Arcane Storm:589)\nchange(#3) [self(#2).dead & !self(#3).active]\nuse(Falcosaur Swarm!:1773)",
},
["team:250"] = {
["author"] = "Tinyrivers-Sargeras",
["name"] = "Wildlife Protection Force",
["code"] = "change(#2) [self(#1).dead & !self(#2).played]\nchange(#3) [self(#2).active]\nchange(#1) [self(#3).dead]\nif [enemy(#1).active]\nability(218)\nability(652)\nability(919) [!enemy.aura(918).exists]\nability(581) [enemy.aura(918).exists]\nendif\nability(184)\nability(422)",
},
["team:65"] = {
["name"] = "Deebs, Tyri and Puzzle",
["code"] = "ability(Sweep:457) [ round=1 ]\nchange(next) [ !self(#3).active & !self(#3).played ]\nability(Wind-Up:459) [ enemy(#3).active ]\nability(#1)\nability(#2)\nability(#3)\nchange(#1)",
},
["team:267"] = {
["name"] = "My Beast's Bidding (2)",
["code"] = "if [ enemy(#1).active ]\n    ability(Minefield:634) [round=1]\n    ability(Missile:777) [ !enemy.hp.full ]\n    ability(Launch Rocket:293)\nendif\nif [ enemy(#2).active ]\n    ability(Launch Rocket:293)\n    ability(Ion Cannon:209) [ enemy.hp>659 ]\n    ability(Shock and Awe:646) [ enemy.hp<=659 & enemy.hp>369 ]\n    ability(Missile:777)\nendif\nif [ enemy(#3).active ]\n    change(#3) [ !self(#3).played ]\n    change(#2)\n    ability(Ion Cannon:209) [ enemy.hp<=1089 ]\n    ability(Shock and Awe:646)\n    ability(Missile:777)\nendif\nstandby\nchange(next)",
},
["team:95"] = {
["name"] = "Little Tommy Newcomer",
["code"] = "ability(Call Lightning:204)\nability(Build Turret:710) [self.ability(#1).usable]\nability(Metal Fist:384)\nchange(#1) [round=3 & self.aura(Mechanical:244).exists]\nability(Decoy:334)\nability(#1)\nchange(next)",
},
["team:64"] = {
["author"] = "Tinyrivers-Sargeras",
["name"] = "Illidari Masters: Nameless Mystic",
["code"] = "if [enemy(#1).active]\n    ability(334) [self.round=1]\n    ability(115)\nendif\nif [enemy(#2).active]\n    ability(334)\n    ability(779)\n    ability(115)\nendif\nif [enemy(#3).active]\n    ability(115)\n    change(#2) [self(#1).dead]\n    ability(334) [self(#2).active]\n    ability(282) [enemy.hp<=618]\n    ability(777)\nendif",
},
["team:146"] = {
["name"] = "Tarr the Terrible",
["code"] = "change(#1) [self(#2).played]\nchange(#2) [round=4]\nuse(Corrosion:447) [round=1]\nuse(Poison Protocol:1954)\nuse(Void Nova:2356)\nuse(Corrosion:447)\nuse(Raise Ally:2298)\nuse(Dead Man's Party:1093)\nchange(#3)",
},
["team:230"] = {
["name"] = "Son of Skum",
["code"] = "ability(Black Claw:919) [!enemy.aura(Black Claw:918).exists]\nability(#1) [enemy.aura(Shattered Defenses:542).exists]\nability(Flock:581)\nability(Mana Surge:489)\nability(#1)\nchange(next)",
},
["team:205"] = {
["name"] = "Two and Two Together",
["code"] = "use(Arcane Storm:589) [!weather(Arcane Winds:590)]\nuse(Mana Surge:489)\nuse(Tail Sweep:122)\nchange(#2)\nuse(Wind-Up:459)\nuse(Wind-Up:459)",
},
["team:56"] = {
["name"] = "Are They Not Beautiful?",
["code"] = "ability(Arcane Storm:589)\nability(Mana Surge:489)\n\nability(Life Exchange:277) [enemy.ability(Surge of Power:593).usable]\nability(Moonfire:595)\nability(Arcane Blast:421)\n\nability(Emerald Bite:525)\n\nchange(next)",
},
["team:274"] = {
["name"] = "Low lvl fights",
["code"] = "change(#3) [ !self(#3).played ]\nchange(#2) [ !self(#2).played ]\nchange(#2) [ self(#1).dead ]\nchange(#1)\nuse(Ancient Blessing:611) [ self.hpp < 70 & !self.aura(Dragonkin:245).exists ]\nuse(Ancient Blessing:611) [ self.hpp < 50 ]\nuse(Moonfire:595) [ weather(Moonlight:596).duration <= 1 ]\nstandby [ enemy.aura(Undead:242).exists ]\nuse(Moonfire:595) [ enemy(#3).active ]\nuse(Moonfire:595) [ enemy.hp > 312 ]\nuse(#1)\nstandby",
},
["team:23"] = {
["name"] = "Tremblor - Legendary",
["code"] = "use(Blistering Cold:786)\nuse(Chop:943)\nuse(Black Claw:919) [!enemy.aura(Black Claw:918).exists]\nuse(Flock:581)\nuse(Hunting Party:921)\nuse(Leap:364)\nchange(next)",
},
["team:159"] = {
["name"] = "The Grand Master",
["code"] = "change(#3) [self(#1).dead & !self(#3).played]\nchange(#2) [self(#1).dead & self(#3).played]\nif [enemy.aura(Decoy:333).exists]\nuse(#2)\nendif\nif [self.aura(Mechanical:244).exists & !self.aura(Wind-Up:458).exists]\nuse(#2)\nendif\nif [self(Iron Starlette:1387).active]\nuse(#2)) [!self.ability(Supercharge:208).usable & !self.aura(Wind-Up:458).exists]\nuse(Supercharge:208) [self.aura(Wind-Up:458).exists]\nuse(Wind-Up:459)\nendif\nif [enemy(#2).active]\nuse(#1)\nendif\nuse(#2) [!enemy.aura(Black Claw:918).exists]\nuse(#3)",
},
["team:223"] = {
["author"] = "Tinyrivers-Sargeras",
["name"] = "Size Doesn't Matter",
["code"] = "ability(321)\nchange(#2)\nability(919) [self.round=1]\nability(581)",
},
["team:198"] = {
["name"] = "Storm-Touched Slyvern",
["code"] = "ability(Arcane Storm:589) [round=1]\nability(Mana Surge:489)\nability(#1)\nchange(next)",
},
["team:209"] = {
["name"] = "Delver Mardei",
["code"] = "ability(Flock) [self(#1).active & enemy.aura(Black Claw).exists]\nability(Black Claw) [self(#1).active]\n\nability(Swallow You Whole) [self(#2).active & enemy(#2).active]\nability(Whirlpool) [self(#2).active & enemy(#3).active]\n\nability(Howl)\nability(Surge of Power)\n\nchange(next)",
},
["team:165"] = {
["name"] = "They're Full of Stars!",
["code"] = "if [ enemy(#1).active ]\nuse(Supercharge:208) [ self.aura(Wind-Up:458).exists ]\nuse(Wind-Up:459)\nendif\n\nif [ enemy(#2).active ]\nuse(Bola de fuerza:566) [ round=4 ]\nuse(Supercharge:208) [ self.aura(Wind-Up:458).exists ]\nuse(Wind-Up:459)\nendif\n\nif [ enemy(#3).active ]\nchange(#2) [self(#1).dead] \nuse(Bola de fuerza:566) [ round=10 ]\nuse(Explotar:282) [ !enemy.aura(Wind-Up:1034).exists ]\nability(#1)\nendif",
},
["team:171"] = {
["name"] = "Courageous Yon",
["code"] = "change(#3) [self(#1).active & self(#1).dead]\nchange(#2) [self(#3).played]\nability(Prowl:536) [round=2]\nability(Moonfire:595) [round=3]\nstandby [enemy.aura(Adrenaline:161).exists & enemy.ability(Burrow:159).usable]\nability(Booby-Trapped Presents:1080) [!enemy.aura(Booby-Trapped Presents:1081).exists]\nability(Greench's Gift:1076) [enemy(#3).active]\nability(#1)",
},
["team:180"] = {
["name"] = "The Oldest Dragonfly",
["code"] = "if [enemy.aura(Black Claw:918).exists]\nability(Flock:581)\nendif\nability(Black Claw:919) [enemy.hp > 500]\nability(#1)\nchange(next)",
},
["team:194"] = {
["name"] = "Dreadcoil",
["code"] = "if [enemy(#1).active]\n    ability(392) [self.round=1]\n    ability(985) [self.round=2]\n    ability(1002)\nendif\nability(1002)\nchange(#2) [self(#1).dead]\n\nability(#3) [enemy.hp<618 & enemy.type !~ 3]\nability(#3) [enemy.hp<406 & enemy.type ~ 3]\nability(#2) [!self(#2).aura(820).exists]\nability(#1)",
},
["team:186"] = {
["name"] = "Lyver",
["code"] = "use(919) [round=1] \nuse(581) [round=2] \nuse(1370) [round=5]",
},
["team:84"] = {
["name"] = "Training with the Nightwatchers",
["code"] = "change(#1) [round=7]\nchange(#3) [round=6]\nchange(#2) [round=3]\nuse(Magic Hat:478) [round=8]\nuse(Call Blizzard:206) [!enemy(#3).active]\nuse(Deep Freeze:481) [round=2]\nuse(Deep Freeze:481) [enemy.hp<371 & enemy(#2).active]\nuse(Magic Hat:478)\nuse(Twilight Fire:1890) [enemy(#2).active]\nuse(Darkflame:792) [enemy(#3).active]\nuse(Wing Buffet:1756)\nstandby\nchange(#2)",
},
["team:254"] = {
["name"] = "A New Vocation",
["code"] = "ability(#2) [self.aura(Emerald Presence).duration<=1]\nability(#3) [self.hp<800]\nability(#1)\nstandby",
},
["team:231"] = {
["name"] = "Everliving Spore",
["code"] = "ability(#3) \nability(#2) \nability(#1)",
},
["team:184"] = {
["name"] = "Tremblor - Rare",
["code"] = "if [round=1]\nability(Tail Sweep:122) [self.speed.fast]\nendif\nability(Call Lightning:204)\n\nability(Blistering Cold:786)\nability(Chop:943) [!enemy.aura(Bleeding:491).exists]\nability(BONESTORM!!:1762)\n\nability(Black Claw:919) [!enemy.aura(Black Claw:918).exists]\nability(Hunting Party:921)\n\nchange(#1)\nchange(#2)\nchange(#3)",
},
["team:234"] = {
["name"] = "Vortex - Epic",
["code"] = "use(haunt:652)\nuse(claw:919) [ !enemy.aura(claw:918).exists ]\nuse(finisher:921)\nchange(next)",
},
["team:182"] = {
["name"] = "Deviate Smallclaw",
["code"] = "ability(#2) [enemy(#3).active & self(#1).aura(820).duration<=4 & self(#1).active]\nchange(#2) [enemy(#3).active]\nchange(#3) [enemy(#3).active & self(#2).dead]\nability(#1) [enemy(#3).active]\n\nability(#3) [enemy.hp<618 & enemy.type !~ 3]\nability(#3) [enemy.hp<406 & enemy.type ~ 3]\nability(#2) [!self(#1).aura(820).exists]\nability(#1)",
},
["team:32"] = {
["author"] = "Emptyrivers-Arthas",
["name"] = "Night Horrors",
["code"] = "ability(Black Claw:919) [ !enemy.aura(Black Claw:918).exists ]\nability(Black Claw:919) [ enemy(#3).active & self.hp>366 ]\nability(Flock:581)\nchange(#2) [ !self(#2).played ]\nchange(#3)\nability(Make it Rain:985)\nability(#1)",
},
["-Master Tamer Flummox (5)"] = {
["author"] = "Tinyrivers-Sargeras",
["name"] = "-Master Tamer Flummox (5)",
["code"] = "ability(Apocalypse) [enemy.round=1] \nchange(#2) [enemy.round=2] \nstandby [enemy.round=3] \nability(Dodge) [enemy.round=4] \nstandby [enemy.round=5] \nability(Burrow) [enemy.round=6] \nchange(#3) [enemy.round=8] \nstandby [enemy.round=9] \nability(Dodge) [enemy.round=10] \nstandby [enemy.round=11] \nability(Burrow) [enemy.round=12] \nstandby [self(#3).active] \nchange(#2) \nif [enemy(#1).active] \nability(Dodge) \nstandby \nendif",
},
["team:39"] = {
["author"] = "Tinyrivers-Sargeras",
["name"] = "All Howl, No Bite",
["code"] = "ability(713)",
},
["team:197"] = {
["name"] = "Deviate Flapper",
["code"] = "ability(#2) [enemy(#3).active & self(#1).aura(820).duration<=4 & self(#1).active]\nchange(#2) [enemy(#3).active]\nchange(#3) [enemy(#3).active & self(#2).dead]\nability(#1) [enemy(#3).active]\n\nability(#3) [enemy.hp<618 & enemy.type !~ 3]\nability(#3) [enemy.hp<406 & enemy.type ~ 3]\nability(#2) [!self(#1).aura(820).exists]\nability(#1)",
},
["team:5"] = {
["author"] = "Emptyrivers-Bleeding Hollow",
["name"] = "Gargra",
["code"] = "change(#2) [enemy(#2).active & !self(#2).played]\nchange(#1) [self(#2).active]\nuse(Fel Immolate:901) [enemy(#3).active]\nuse(Supercharge:208)\nuse(Haywire:916)\nuse(Ion Cannon:209)\nchange(#3)",
},
["team:176"] = {
["name"] = "Mini Manafiend Melee",
["code"] = "ability(#1) [self(#3).active]\nability(Flyby:515) [round=1]\nability(Breath:115) [enemy.aura(Weakened Defenses:516).exists]\nability(Thunderbolt:779) [self(#2).active]\nability(Explode:282)\nchange(next)",
},
["team:69"] = {
["author"] = "Emptyrivers-Arthas",
["name"] = "Keeyo's Champions of Vol'dun",
["code"] = "change(next) [ self.dead ]\nif [ self(#1).active ] \n  use(#2) [ self.round == 1 ]\n  use(#2) [ enemy.aura(Dodge).exists ]\n  standby [ enemy(#3).hpp<=50 ]\n  use(#3)\n  use(#1)\nendif\n\nchange(next) [ self(#2).active & !self(#3).played ] \n\nif [ self(#3).active ] \n  use(#3)\n  use(#1)\nendif",
},
["team:58"] = {
["name"] = "Eye of the Stormling",
["code"] = "use(Thunderbolt:779)\nuse(Explode:282)\nchange(next)",
},
["team:20"] = {
["name"] = "My Beast's Bidding",
["code"] = "if [ enemy(#1).active ]\n    ability(Minefield:634) [round=1]\n    ability(Missile:777) [ !enemy.hp.full ]\n    ability(Launch Rocket:293)\nendif\nif [ enemy(#2).active ]\n    ability(Launch Rocket:293)\n    ability(Ion Cannon:209) [ enemy.hp>659 ]\n    ability(Shock and Awe:646) [ enemy.hp<=659 & enemy.hp>369 ]\n    ability(Missile:777)\nendif\nif [ enemy(#3).active ]\n    change(#3) [ !self(#3).played ]\n    change(#2)\n    ability(Ion Cannon:209) [ enemy.hp<=1089 ]\n    ability(Shock and Awe:646)\n    ability(Missile:777)\nendif\nstandby\nchange(next)",
},
["team:225"] = {
["name"] = "Vilefang",
["code"] = "ability(Ironskin:1758)\nability(Predatory Strike:518) [enemy.aura(Shattered Defenses:542).exists]\nability(#1)\nchange(next)",
},
["team:1"] = {
["name"] = "Flummoxed (Mech)",
["code"] = "use(Batter:455) [enemy(Gulp:1798).active & enemy.round>3]\nuse(Batter:455) [enemy(Egcellent:1793).active & enemy.round>2]\nuse(Sandstorm:453) [round=2]\nuse(Wind-Up:459)\nuse(Poison Protocol:1954)\nuse(Toxic Fumes:2349) [enemy(Red Wire:1794).active & !weather(Toxic Gas:2350)]\nuse(Corrosion:447)\nuse(Meteor Strike:407) [enemy.aura(Flamethrower:502).exists]\nuse(Flamethrower:503)\nchange(next)",
},
["team:175"] = {
["name"] = "Wastewalker Shu",
["code"] = "change(#2) [self(#1).dead]\nability(Explode:282) [enemy(#3).hp<=618]\nability(Moonfire:595) [round=2]\nability(Evanescence:440) [self.aura(Whirlpool:512).exists]\nability(Evanescence:440) [enemy(#2).active]\nability(Arcane Blast:421)\nability(Missile:777) [self.round=1]\nability(Decoy:334) [self(#2).active & enemy(#2).active]\nability(Missile:777)",
},
["team:44"] = {
["author"] = "Tinyrivers-Sargeras",
["name"] = "Threads of Fate",
["code"] = "if [enemy(#1).active]\n     ability(334)\n     ability(115)\nendif\nif [enemy(#2).active]\n     ability(115)\nendif\nif [enemy(#3).active]\n     ability(115) [enemy.round<=2]\n     ability(334)\n     change(#2) [self(#1).active & !self(#2).played]\n     change(#3) [self(#2).active]\n     ability(312) [self.round=1]\n     ability(504) [self.round=2]\n     ability(574) [!self.aura(820).exists]\n     ability(504)\nendif",
},
["team:133"] = {
["author"] = "Emptyrivers-Arthas",
["name"] = "Sea Creatures Are Weird",
["code"] = "quit [ enemy(#1).active & !enemy.ability(Sweep:457).usable ]\nchange(#1) [ self(#3).active ]\nchange(#3) [ self(#1).dead ]\nif [ self(#1).active ]\n    ability(Supercharge:208) [ round~2,6 ]\n    ability(Wind-Up:459) [ enemy(#1).active ]\n    ability(Wind-Up:459) [ round>6 & self.aura(Mechanical:244).exists & self.aura(Wind-Up:458).exists ]\n    ability(Powerball:566)\nendif\nability(Explode:282) [ enemy(#3).active & enemy(#3).hp<561 ]\nability(Thunderbolt:779) [ !enemy(#2).dead & enemy(#2).hp<245 ]\nability(Thunderbolt:779) [ enemy(#3).active ]\nability(Breath:115)",
},
["team:172"] = {
["author"] = "Tinyrivers-Sargeras",
["name"] = "Illidari Masters: Sissix",
["code"] = "if [enemy(#1).active]\nability(1758)\nability(518) [enemy.aura(542).duration>0]\nability(1773)\nendif\nif [enemy(#2).active]\nability(518) [enemy.aura(542).duration>0]\nability(1773)\nendif\nif [enemy(#3).active]\nability(1773)\nchange(#3) [self(#1).dead & !self(#3).played]\nchange(#2) [self(#3).active]\nability(459) [self.round=1]\nability(566) [self.round=2]\nability(208) [self.round=3]\nability(459)\nendif",
},
["team:59"] = {
["author"] = "Emptyrivers-Arthas",
["name"] = "Captured Evil",
["code"] = "if [ self(#1).active ]\n    if [ !enemy(#3).active ]\n        ability(Nature's Ward:574) [ !self.aura(Nature's Ward:820).exists & enemy.hp>309 ]\n        ability(Ravage:802) [ !self.speed.fast & !ability(Alpha Strike504).strong & enemy.ability(Rain Dance:1062).duration>1 ]\n        ability(Ravage:802) [ enemy.ability(Rain Dance:1062).duration>1 & enemy.hp<619 ]\n    endif\n    ability(Ravage:802) [ enemy(#2).active & enemy.hp<310 ]\n    ability(Ravage:802) [ self.speed.slow ]\n    ability(Alpha Strike:504)\nendif\nchange(#2) [ !self(#2).played ]\nchange(#3)\nability(Decoy:334) [ enemy.ability(Darkflame:792).duration=1 ]\nability(#1)",
},
["team:57"] = {
["author"] = "Tinyrivers-Sargeras",
["name"] = "Illidari Masters: Madam Viciosa",
["code"] = "if [enemy(#1).active]\n    standby [self(#1).active]\n    ability(218)\n    ability(210) [enemy.aura(217).duration>2]\n    ability(652)\n    change(#3) [enemy.aura(653).exists]\n    ability(334)\n    ability(115)\nendif\nif [enemy(#2).active]\n    ability(115)\nendif\nif [enemy(#3).active]\n    standby [self.aura(927).exists]\n    ability(779)\n    ability(334)\n    ability(115)\n    change(#2) [self(#3).dead]\n    ability(210)\nendif",
},
["team:187"] = {
["name"] = "Flow - Rare",
["code"] = "use(Haunt:652)\nuse(Black Claw:919) [!enemy.aura(Black Claw:918).exists]\nuse(Hunting party:921)\nuse(Leap:364)\nchange(next)\n\n--Script created by Anolaszun#1423",
},
["team:276"] = {
["name"] = "Jeremy Feasel",
["code"] = "change(#2) [enemy(#2).active]\nchange(#3) [enemy(#3).active & enemy.round=1]\n\nchange(next) [self.dead]\nchange(next) [self(#3).active]\n\nability(334)\nability(779)\n\nability(173) [self.hpp <40 & !enemy(#3).active]\nability(1354)\n\nability(#1)\n\nstandby [self.aura(927).exists]",
},
["team:38"] = {
["author"] = "Emptyrivers-Bleeding Hollow",
["name"] = "Cymre Brightblade",
["code"] = "change(#2) [self.round == 3 && !self(#2).played]\nchange(#3) [self(#2).active]\nchange(Puddle Terror:1568) [self(#3).active]\n\nuse(Sunlight:404) [!enemy(Idol of Decay:1443).aura(Dark Rebirth:795).exists]\nuse(Nature's Ward:574) [!self.aura(Nature's Ward:820).exists]\nuse(Punch:111) [!enemy(Idol of Decay:1443).active]\nuse(Punch:111) [enemy(Wishbright Lantern:1444).hp < 309 && !enemy(Idol of Decay:1443).aura(Dark Rebirth:795).exists]\nuse(Nature's Ward:574)",
},
["team:173"] = {
["name"] = "Burning Pandaren Spirit",
["code"] = "if [enemy(#3).active & weather(Sandstorm:454).duration>2]\n  change(#2) [!self(#2).played & !self(#2).level.max] \n  change(#3) [!self(#3).played & !self(#3).level.max]\nendif\nchange(#1) [!self(#1).active]\nuse(Deflection:490) [enemy.aura(Flying:341).exists]\nuse(Deflection:490) [enemy.ability(Conflagrate:179).usable]\nuse(Sandstorm:453) [round>1]\nuse(Crush:406)",
},
["team:257"] = {
["name"] = "Aki the Chosen",
["code"] = "change(#2) [self(#1).active & self.dead]\nchange(#3) [enemy(#3).hp<560 & !self(#3).played]\nchange(#2) [self(#3).active]\nuse(Black Claw:919) [enemy(#2).active] \nuse(Leap:364) [self.round>2] \nuse(Bite:110)\nif [weather(Lightning Storm:203)]\n  use(Build Turret:710)\n  use(Repair:278)\nendif \nuse(Build Turret:710) [enemy.ability(Dive:564).usable] \nuse(Metal Fist:384)",
},
["team:73"] = {
["author"] = "Tinyrivers-Sargeras",
["name"] = "Fight Night: Rats!",
["code"] = "ability(218)\nability(652)\nchange(#2) [self(#1).dead]\nability(919) [!enemy.aura(918).exists]\nability(581)",
},
["team:258"] = {
["name"] = "Unfortunate Defias",
["code"] = "ability(312) [ self.round = 1 ]\nability(163) [ self.round = 2 ]\nability(163) [ enemy.aura(242).exists ]\nability(360)\nchange(#2)\n\nability(#3) [enemy.hp<618 & enemy.type !~ 3]\nability(#3) [enemy.hp<406 & enemy.type ~ 3]\nability(#2) [!self(#2).aura(820).exists]\nability(#1)",
},
["team:263"] = {
["name"] = "Right Twice a Day",
["code"] = "ability(Curse of Doom:218)\nability(Haunt:652)\nability(Black Claw:919) [!enemy.aura(Black Claw:918).exists]\nability(Flock:581)\nability(#1)\nchange(next)",
},
["team:221"] = {
["author"] = "Tinyrivers-Sargeras",
["name"] = "Clear the Catacombs",
["code"] = "if [enemy(#1).active]\n    ability(647) [self.round=1]\n    ability(334) [self.round=3]\n    ability(777)\nendif\nif [enemy(#2).active]\n    change(#2) [enemy.round=1]\n    ability(312) [self.round=1]\n    ability(504) [self.round=2]\n    ability(574) [!self.aura(820).exists]\n    ability(504)\nendif\nif [enemy(#3).active]\n    change(#3) [enemy.round=1]\n    change(#1) [self(#3).active]\n    change(#2) [self(#1).dead]\n    ability(334) [self.round=1]\n    ability(647) [self.round=2]\n    ability(777)\n    ability(312) [self.round=1]\n    ability(504)\nendif",
},
["team:87"] = {
["name"] = "Seeker Zusshi",
["code"] = "change(#2) [enemy(#3).active & !self(#2).played]\nchange(#1) [self(#2).active]\nchange(#3) [self(#1).active & self.dead]\nif [!enemy(#3).active]\n  use(Shell Shield:310) [enemy.round=1]\n  use(Renewing Mists:511) [enemy.round=2]\nendif\nuse(Snap:356)\nability(Surge of Power:593) [enemy.aura(Howl:1725).exists] \nability(Surge of Power:593) [enemy.hp<=740] \nability(Howl:362) [!enemy.hp.full]\nstandby",
},
["team:116"] = {
["name"] = "Hyuna of the Shrines",
["code"] = "standby [self.aura(Stunned:927).exists & self(#3).played]\nchange(#3) [!self(#3).played & !enemy.ability(#2).usable & enemy(#3).active]\nchange(#2) [self(#3).played]\nability(Toxic Skin:1087) [round=1]\nability(Healing Flame:168) [enemy(#2).active & enemy.round=2]\nability(Black Claw:919) [enemy(#3).active & enemy.hpp>75 & !enemy.aura(Black Claw:918).exists & enemy.round>1]\nability(Flock:581) [enemy.aura(Black Claw:918).exists]\nability(#1)\nchange(next)",
},
["team:118"] = {
["author"] = "Tinyrivers-Sargeras",
["name"] = "Rocko Needs a Shave",
["code"] = "ability(1347)",
},
["team:121"] = {
["author"] = "Tinyrivers-Sargeras",
["name"] = "Meet The Maw",
["code"] = "ability(Proto-Strike:612) [round=1]\nability(Emerald Presence:597) [round=3]\nability(#1)\nchange(#2)",
},
["team:164"] = {
["author"] = "Emptyrivers-Arthas",
["name"] = "Critters are Friends, Not Food",
["code"] = "ability(Decoy:334) [ enemy.aura(Bomb:819).duration=1 ]\nability(Bombing Run:647) [ enemy.round<3 ]\nability(Bombing Run:647) [ self.aura(Mechanical:244).exists & enemy(#1).hp<220 ]\nability(Missile:777)\nchange(#2) [ !self(#2).played ]\nchange(#3)\nability(Arcane Storm:589)\nability(Mana Surge:489)\nability(Tail Sweep:122)",
},
["team:245"] = {
["name"] = "Enok the Stinky",
["code"] = "ability(Curse of Doom:218)\nability(Haunt:652) [round=3]\nability(Black Claw:919) [!enemy.aura(Black Claw:918).exists]\nability(Flock:581)\nability(Hunting Party:921)\nability(Leap:364)\nability(#1)\nchange(next)",
},
["team:181"] = {
["author"] = "Tinyrivers-Sargeras",
["name"] = "All Pets Go to Heaven",
["code"] = "change(#2) [ !self(#2).played & enemy(#2).active & enemy.round ~ 5, 6 ]\nif [ self(#1).active ]\n    ability(Flurry:360) [ enemy(#2).active & enemy.hp > 550 ]\n    ability(Flurry:360) [ !enemy.aura(Undead:242).exists & self.round > 1 ]\n    ability(Dodge:312)\nendif\nif [ enemy(#2).active ]\n    change(#2) [ self(#1).dead & !self(#2).played & !self(#3).played & enemy.round = 4 ]\n    change(#3)\n    ability(Burrow:159) [ enemy.round = 3 ]\n    ability(Dodge:312) [ enemy.round ~ 1, 9 ]\n    ability(Flurry:360)\nendif\nchange(#3)\nability(Dodge:312) [ enemy.ability(Curse of Doom:218).usable ]\nability(Flurry:360)",
},
["team:190"] = {
["name"] = "Storm-Touched Swoglet",
["code"] = "use(#1) [round=5]\nuse(Black Claw:919) [!enemy.aura(Black Claw:918).exists]\nuse(#3)\nchange(#2)",
},
["team:107"] = {
["author"] = "Tinyrivers-Sargeras",
["name"] = "Oh, Ominitron",
["code"] = "ability(453)\nability(406) [self.round=2]\nability(814)\nability(406)\nchange(#2) [!self(#2).played]\nchange(#3)\nability(334) [self.round=1]\nability(779) [enemy(#1).dead & enemy(#2).dead]\nability(115)",
},
["team:242"] = {
["name"] = "Klutz's Battle Monkey",
["code"] = "use(208) [ round=1 ]\nuse(204)\nuse(490) [ self.aura(512).duration=1 ]\nuse(490) [ enemy.aura(341).exists ]\nuse(436) [ self.aura(435).duration<=1 & enemy(#3).hp>227 ]\nuse(#1)\nchange(#2)",
},
["team:21"] = {
["author"] = "Emptyrivers-Bleeding Hollow",
["name"] = "Stand Up to Bullies",
["code"] = "if [enemy(#1).active & self(#1).active] \nability(652) [enemy.round=4] \nability(499) \nchange(#2) [self(#1).dead] \nendif \nif [self(#2).active] \nability(919) [!enemy.aura(918).exists] \nability(581) \nability(1370) \nchange(#1) [self(#2).dead] \nability(499) \nendif",
},
["team:237"] = {
["author"] = "Emptyrivers-Arthas",
["name"] = "Rogue Azerite",
["code"] = "ability(Whirlpool:513) [self(Pandaren Water Spirit:868).active]\nability(Dive:564) [self(Pandaren Water Spirit:868).active]\nability(Water Jet:118) [self(Pandaren Water Spirit:868).active]\nchange(#2) [self(Pandaren Water Spirit:868).dead & !self(Rapana Whelk:743).active]\nchange(Rapana Whelk:743)\nability(Shell Shield:310) [self(Rapana Whelk:743).aura(Shell Shield:309).duration <2]\nability(Dive:564)\nability(Absorb:449)",
},
["team:160"] = {
["author"] = "Tinyrivers-Sargeras",
["name"] = "Only Pets Can Prevent Forest Fires",
["code"] = "ability(440) [enemy.round=1]\nability(595) [!weather(596)]\nability(421)\nchange(#2) [self(#1).dead & !self(#2).played]\nchange(#3) [self(#2).active]\nif [enemy(#2).active]\nability(369) [!enemy.aura(368).exists]\nability(445)\nendif\nif [enemy(#3).active]\nability(564)\nability(369) [!enemy.aura(368).exists]\nability(445)\nendif",
},
["team:177"] = {
["name"] = "Whispering Pandaren Spirit",
["code"] = "change(#2) [self(#1).active & self.dead]\nchange(#3) [self(#2).active]\nuse(Ancient Blessing:611)\nuse(Arcane Explosion:299)\nuse(Arcane Storm:589) \nuse(Mana Surge:489) \nstandby",
},
["team:235"] = {
["name"] = "Deviate Chomper",
["code"] = "ability(#2) [enemy(#3).active & self(#1).aura(820).duration<=4 & self(#1).active]\nchange(#2) [enemy(#3).active]\nchange(#3) [enemy(#3).active & self(#2).dead]\nability(#1) [enemy(#3).active]\n\nability(#3) [enemy.hp<618 & enemy.type !~ 3]\nability(#3) [enemy.hp<406 & enemy.type ~ 3]\nability(#2) [!self(#1).aura(820).exists]\nability(#1)",
},
["team:262"] = {
["name"] = "You Have to Start Somewhere",
["code"] = "change(#2) [self(#3).active]\n\nability(Corrosion:447) [round=1]\nability(Void Nova:2356) [!enemy(#2).active]\nability(Poison Protocol:1954) [round=3]\n\nability(Arcane Storm:589)\nability(Mana Surge:489)\n\nability(#1)\nchange(#3)\nchange(next)",
},
["team:78"] = {
["author"] = "Emptyrivers-Arthas",
["name"] = "Snakes on a Terrace",
["code"] = "standby [ self(#1).active ] \nif [ self(#2).active ] \n  use(#3) [ self.round == 1 ]\n  use(#2) [ enemy.aura(Underwater:830).exists ]\n  use(#1)\nendif",
},
["team:3"] = {
["author"] = "Emptyrivers-Arthas",
["name"] = "Add More to the Collection",
["code"] = "if [ !self(#2).active ]\n    ability(Extra Plating:392) [ round=1 ]\n    ability(Make it Rain:985) [ enemy.round<4 ]\n    ability(Inflation:1002)\nendif\nchange(#2) [ !self(#2).played ]\nchange(#3)\nability(Arcane Storm:589)\nability(Mana Surge:489)",
},
["team:61"] = {
["author"] = "Emptyrivers-Bleeding Hollow",
["name"] = "Deathscreech",
["code"] = "ability(#2) [round=1] \nability(#3) [round=2] \nchange(#2) [self(#1).dead] \nability(#2) [self.round=1] \nability(#3)",
},
["team:101"] = {
["name"] = "Sharp as Flint",
["code"] = "ability(Supercharge:208) [round=2]\nability(Toxic Smoke:640) [round>5]\nability(Wind-Up:459)\n\nability(Breath:115) [!enemy(Lord Flappinsby:3451).dead]\n\nability(Flock:581) [enemy.aura(Black Claw:918).exists]\nability(Black Claw:919)\n\nchange(Mechanical Pandaren Dragonling:844) [!enemy(Lord Flappinsby:3451).dead]\nchange(Ikky:1532)",
},
["team:277"] = {
["name"] = "Christoph VonFeasel",
["code"] = "if [ self(Enchanted Broom:213).active ]\nability(Sweep:457) [ self.round == 1 ]\nability(Wind-Up:459) [ self.round ==2 ]\nchange(Iron Starlette:1387) [ self.round ==3 ]\nendif\nif [ self(Iron Starlette:1387).active ]\nability(Wind-Up:459) [ self.round ==1 ]\nability(Supercharge:208) [ self.round ==2 ]\nability(Wind-Up:459) [ self.round ==3 ]\nability(Toxic Smoke:640) [ self.round > 3 ]\nchange(#2) [ self(Iron Starlette:1387).dead ]\nendif\nchange(Enchanted Broom:213) [ self(#2).active ]\nif [ self(Enchanted Broom:213).active ]\nability(Sweep:457) [ self.round ==1 ]\nability(Wind-Up:459) [ self.round > 1 & self.round < 5 ]\nability(Batter:455) [ self.round > 4 ]\nendif",
},
["team:266"] = {
["name"] = "Growing Ectoplasm 2",
["code"] = "change(#2) [self(#1).dead]\nchange(#3) [self(#2).dead]\nif [enemy(#1).active]\n    ability(919) [!enemy.aura(918).exists]\n    ability(921)\n    ability(364) [enemy.aura(542).exists]\nendif\nability(919) [!enemy.aura(918).exists]\nability(921)\nability(597) [self.aura(823).duration<=1]\nability(598) [self.hp<1000]\nability(525)",
},
["team:148"] = {
["name"] = "Farmer Nishi",
["code"] = "change(#2) [self(#1).dead & !self(#2).played]\nchange(#3) [self(#2).active]\nability(Pump) [enemy.round=1]\nability(Pump) [enemy.round=3 & enemy(#2).active]\nability(Cleansing Rain) [enemy.round=2]\nability(Water Jet)\nability(Shock and Awe)\nability(Ion Cannon) (edited)",
},
["team:193"] = {
["author"] = "Tinyrivers-Sargeras",
["name"] = "Mana Tap",
["code"] = "if [enemy(#1).active]  \nchange(#2) [enemy.round=2] \nchange(#1) [self(#2).active] \nability(334) \nability(115) \nendif \nability(334) \nability(115) \nchange(#3) [self(#1).dead] \nability(710) \nability(384)",
},
["team:46"] = {
["name"] = "Adinakon",
["code"] = "use(#3) [round=1]\nuse(Hieb:219)\nuse(Explodieren:282)\nchange(next)",
},
["team:279"] = {
["name"] = "Bordin Steadyfist",
["code"] = "change(#3) [self(#2).active]\nability(Rip:803) [!enemy.aura(Bleeding:491).exists]\nability(Blood in the Water:423) [enemy.aura(Bleeding:491).exists]\nability(Surge:509)\nability(Whirlpool:513) [enemy(#3).active & enemy.hpp>99]\nability(Dive:564) [self.aura(Elementium Bolt:605).duration=1]\nability(Water Jet:118)\nchange(next)",
},
["team:15"] = {
["name"] = "Hiss",
["code"] = "if [enemy(#1).active]\n    ability(513) [enemy.round=1]\n    ability(204) [enemy.round=2]\n    change(#2) [enemy.round=3]\n    ability(710) [self.round=1]\n    ability(384)\nendif\nability(710)\nability(384)\nchange(#1) [self(#2).dead]\nability(204)\nability(424)\nchange(#3) [self(#1).dead]\nability(597) [self.aura(823).duration<=1]\nability(598) [self.hp<1000]\nability(525)",
},
["team:169"] = {
["name"] = "The Terrible Three",
["code"] = "standby [round=5]\nuse(Corrosion:447) [round=1]\nuse(Void Nova:2356)\nuse(Poison Protocol:1954)\nuse(Corrosion:447)\nuse(Explode:282)\nability(Howl:362) [enemy(#3).active]\nability(Surge of Power:593) [enemy.aura(Howl:1725).exists]\nuse(Bite:110)\nchange(next)",
},
["team:233"] = {
["name"] = "Klutz's Battle Bird",
["code"] = "ability(589)\nability(489)\nability(122)\nchange(#2)\nability(597) [ self.aura(823).duration < 2 & self.speed.slow ]\nability(597) [ !self.aura(823).exists ]\nability(598) [ self.hpp < 50 ]\nability(525)",
},
},
},
},
["profileKeys"] = {
["Garumn - Arthas"] = "Default",
["Sverdrup - Argent Dawn"] = "Default",
["Strid - Kel'Thuzad"] = "Default",
["Esker - Kel'Thuzad"] = "Default",
["Stream - Argent Dawn"] = "Default",
["Naturerivers - Korgath"] = "Default",
["Canerena - Arthas"] = "Default",
["Crazyrivers - Sargeras"] = "Default",
["Ailisuul - Arthas"] = "Default",
["Mangrove - Argent Dawn"] = "Default",
["Wildrivers - Bleeding Hollow"] = "Default",
["Mindrivers - Korgath"] = "Default",
["Inundito - Kel'Thuzad"] = "Default",
["Ochrian - Argent Dawn"] = "Default",
["Dammedrivers - Exodar"] = "Default",
["Emptystreams - Argent Dawn"] = "Default",
["Gelae - Kel'Thuzad"] = "Default",
["Alluvium - Argent Dawn"] = "Default",
["Zimuures - Argent Dawn"] = "Default",
["Testrivers - Bleeding Hollow"] = "Default",
["Crazyrivers - Bleeding Hollow"] = "Default",
["Headcut - Argent Dawn"] = "Default",
["Confluence - Argent Dawn"] = "Default",
["Riparium - Argent Dawn"] = "Default",
["Greedyrivers - Arthas"] = "Default",
["Testrivers - Arthas"] = "Default",
["Benthos - Argent Dawn"] = "Default",
["Emptyrivers - Arthas"] = "Default",
["Mothugeon - Argent Dawn"] = "Default",
["Alandere - Argent Dawn"] = "Default",
["Luckyrivers - Sargeras"] = "Default",
["Flumina - Argent Dawn"] = "Default",
["Emptyrivers - Bleeding Hollow"] = "Default",
["Savattellir - Arthas"] = "Default",
["Edgyrivers - Arthas"] = "Default",
["Evilrivers - Sargeras"] = "Default",
["Shachein - Arthas"] = "Default",
["Beefyrivers - Bleeding Hollow"] = "Default",
["Wildrivers - Arthas"] = "Default",
["Lotic - Argent Dawn"] = "Default",
["Beefyrivers - Arthas"] = "Default",
["Feralrivers - Sargeras"] = "Default",
["Ragingrivers - Arthas"] = "Default",
["Boringrivers - Bleeding Hollow"] = "Default",
["Saellindris - Kel'Thuzad"] = "Default",
["Cataracts - Argent Dawn"] = "Default",
["Serenerivers - Sargeras"] = "Default",
["Mahntaiaga - Arthas"] = "Default",
["Crazyrivers - Arthas"] = "Default",
["Emptyrivers - Sargeras"] = "Default",
["Eysta - Sargeras"] = "Default",
["Serenerivers - Bleeding Hollow"] = "Default",
["Asperos - Kel'Thuzad"] = "Default",
["Daedrasminia - Arthas"] = "Default",
["Kdajshtlaiuw - Bleeding Hollow"] = "Default",
["Evilrivers - Kel'Thuzad"] = "Default",
["Testes - Arthas"] = "Default",
["Wildeadoriah - The Scryers"] = "Default",
["Riversticks - Bleeding Hollow"] = "Default",
["Emptyrivers - Argent Dawn"] = "Default",
["Karst - Argent Dawn"] = "Default",
["Tinyrivers - Sargeras"] = "Default",
["Calestin - Sargeras"] = "Default",
["Estuary - Argent Dawn"] = "Default",
},
["profiles"] = {
["Default"] = {
["settings"] = {
["noWaitDeleteScript"] = true,
["autoButtonHotKey"] = "0",
},
["position"] = {
["y"] = -142.46484375,
["x"] = -379.2146911621094,
["point"] = "TOP",
["scale"] = 1,
["height"] = 448.4761352539063,
["width"] = 349.9999389648438,
},
["pluginOrders"] = {
"Rematch",
"Base",
"FirstEnemy",
"AllInOne",
},
["minimap"] = {
["minimapPos"] = 147.98189474991,
},
},
},
}

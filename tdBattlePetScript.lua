
TD_DB_BATTLEPETSCRIPT_GLOBAL = {
	["global"] = {
		["version"] = "v1.5",
		["scripts"] = {
			["AllInOne"] = {
			},
			["Base"] = {
			},
			["FirstEnemy"] = {
			},
			["Rematch"] = {
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
				[197447] = {
					["name"] = "Eye of the Stormling",
					["code"] = "use(Bulle:934)\nuse(Coulée de boue:572)\nability(#1)\nchange(next)",
				},
				[68462] = {
					["name"] = "Flowing Pandaren Spirit",
					["code"] = "change(#2) [self(#1).active & self.dead]\nchange(#3) [self(#2).active]\nuse(Lift-Off:170) [!enemy(#3).active & self.aura(Whirlpool:512).duration=1]\nuse(Peck:112)\nuse(Water Jet:118)",
				},
				[83837] = {
					["author"] = "Emptyrivers-Bleeding Hollow",
					["name"] = "Cymre Brightblade",
					["code"] = "if [enemy(#1).active]\n     change(#2) [enemy.hp<450 & !self(#2).played]\n     change(#1) [self(#2).active]\n     change(#3) [enemy.aura(242).exists]\n     ability(513) [enemy.round=1]\n     ability(511) [self(#2).played & !self.aura(510).exists]\n     ability(356)\nendif\nif [enemy(#2).active]\n     ability(168) [enemy.round=1]\n     ability(122)\nendif\nif [enemy(#3).active]\n     ability(405) [enemy.round=1]\n     ability(122)\nendif",
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
				[87124] = {
					["author"] = "Emptyrivers-Bleeding Hollow",
					["name"] = "Ashlei",
					["code"] = "if [enemy(Pixiebell:1547).dead]\nuse(Repair:278)\nendif\nif [enemy(#3).dead]\nchange(#2) [!self(#2).level.max & !self(#2).played]\nchange(#3) [!self(#3).level.max & !self(#3).played]\nchange(#1)\nendif\nuse(Build Turret:710)\nuse(Metal Fist:384)",
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
					["code"] = "if [ enemy(#1).active ]\n    use(Ethereal:998) [ enemy.hp>500 ]\n    use(Soulrush:752)\n    change(#3) [ enemy(Skritch:3392).aura(Etourdi:927).exists & !enemy(Phantus:3391).dead ]\n    use(Dark Talon:1233)\nendif\nchange(#3) [ enemy(#1).dead & enemy(#2).active & enemy.round=1 ]\nstandby [ !self(#3).aura(Blessures ouvertes:306).exists & self(#3).active ]\nchange(#2) [ self(#3).active & enemy(#2).active & self(#3).aura(Blessures ouvertes:306).exists ]\nif [ self(#2).active & enemy(Phantus:3391).active ]\n    use(Stoneskin:436) [ self.round=1 ]\n    use(Stoneskin:436) [ self(Idole d’Anubisath:1155).aura(Peau de pierre:435).duration<=1 ]\n    change(#1) [ enemy(Phantus:3391).aura(Etourdi:927).exists & !enemy(#1).dead ]\n    use(Rupture:814)\n    use(Crush:406)\nendif\nchange(#1) [ self(#2).dead ]\nuse(Ethereal:998) [ self(#1).active & enemy.hp>500 ]\nuse(Soulrush:752)\nuse(Dark Talon:1233)",
				},
				[68464] = {
					["name"] = "Whispering Pandaren Spirit",
					["code"] = "change(#2) [self(#1).active & self.dead]\nchange(#3) [self(#2).active]\nuse(Ancient Blessing:611)\nuse(Arcane Explosion:299)\nuse(Arcane Storm:589) \nuse(Mana Surge:489) \nstandby",
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
				[142114] = {
					["author"] = "Emptyrivers-Arthas",
					["name"] = "Add More to the Collection",
					["code"] = "if [ !self(#2).active ]\n    ability(Extra Plating:392) [ round=1 ]\n    ability(Make it Rain:985) [ enemy.round<4 ]\n    ability(Inflation:1002)\nendif\nchange(#2) [ !self(#2).played ]\nchange(#3)\nability(Arcane Storm:589)\nability(Mana Surge:489)",
				},
				[116789] = {
					["name"] = "Son of Skum",
					["code"] = "ability(Black Claw:919) [!enemy.aura(Black Claw:918).exists]\nability(#1) [enemy.aura(Shattered Defenses:542).exists]\nability(Flock:581)\nability(Mana Surge:489)\nability(#1)\nchange(next)",
				},
				["Low lvl fights"] = {
					["name"] = "Lydia Accoste",
					["code"] = "change(#3) [ !self(#3).played ]\nchange(#2) [ !self(#2).played ]\nchange(#2) [ self(#1).dead ]\nchange(#1)\nuse(Ancient Blessing:611) [ self.hpp < 70 & !self.aura(Dragonkin:245).exists ]\nuse(Ancient Blessing:611) [ self.hpp < 50 ]\nuse(Moonfire:595) [ weather(Moonlight:596).duration <= 1 ]\nstandby [ enemy.aura(Undead:242).exists ]\nuse(Moonfire:595) [ enemy(#3).active ]\nuse(Moonfire:595) [ enemy.hp > 312 ]\nuse(#1)\nstandby",
				},
				[66918] = {
					["name"] = "Seeker Zusshi",
					["code"] = "change(#2) [enemy(#3).active & !self(#2).played]\nchange(#1) [self(#2).active]\nchange(#3) [self(#1).active & self.dead]\nif [!enemy(#3).active]\n  use(Shell Shield:310) [enemy.round=1]\n  use(Renewing Mists:511) [enemy.round=2]\nendif\nuse(Snap:356)\nability(Surge of Power:593) [enemy.aura(Howl:1725).exists] \nability(Surge of Power:593) [enemy.hp<=740] \nability(Howl:362) [!enemy.hp.full]\nstandby",
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
				["Growing Ectoplasm 2"] = {
					["name"] = "Growing Ectoplasm 2",
					["code"] = "change(#2) [self(#1).dead]\nchange(#3) [self(#2).dead]\nif [enemy(#1).active]\n    ability(919) [!enemy.aura(918).exists]\n    ability(921)\n    ability(364) [enemy.aura(542).exists]\nendif\nability(919) [!enemy.aura(918).exists]\nability(921)\nability(597) [self.aura(823).duration<=1]\nability(598) [self.hp<1000]\nability(525)",
				},
				[98572] = {
					["author"] = "Tinyrivers-Sargeras",
					["name"] = "Rocko",
					["code"] = "ability(1347)",
				},
				[87122] = {
					["author"] = "Emptyrivers-Bleeding Hollow",
					["name"] = "Gargra",
					["code"] = "change(#2) [ self(#1).dead ] \nstandby [ enemy.aura(Dodge).exists ] \nability(Build Turret) [ enemy(#1).active & enemy.round=1 ] \nability(Build Turret) [ enemy(#2).active & enemy.round=2 ] \nability(Metal Fist) \nability(Decoy) [ enemy(#3).active ] \nability(Explode) [ enemy(#3).hp < 618 ] \nability(Missile)",
				},
				[141879] = {
					["author"] = "Emptyrivers-Arthas",
					["name"] = "Keeyo’s Champions of Vol’dun",
					["code"] = "change(next) [ self.dead ]\nif [ self(#1).active ] \n  use(#2) [ self.round == 1 ]\n  use(#2) [ enemy.aura(Dodge).exists ]\n  standby [ enemy(#3).hpp<=50 ]\n  use(#3)\n  use(#1)\nendif\n\nchange(next) [ self(#2).active & !self(#3).played ] \n\nif [ self(#3).active ] \n  use(#3)\n  use(#1)\nendif",
				},
				[116790] = {
					["name"] = "Vilefang",
					["code"] = "ability(Ironskin:1758)\nability(Predatory Strike:518) [enemy.aura(Shattered Defenses:542).exists]\nability(#1)\nchange(next)",
				},
				[141292] = {
					["author"] = "Emptyrivers-Arthas",
					["name"] = "That’s a Big Carcass",
					["code"] = "ability(Flock:581) [ enemy.aura(Black Claw:918).exists ]\nability(Black Claw:919)\nchange(#3)\nability(Predatory Strike:518) [ enemy.aura(Shattered Defenses:542).exists ]\nchange(#2) [ !self(#2).played ]\nability(Ironskin:1758) [ self.round=1 ]\nability(#1)",
				},
				[142054] = {
					["author"] = "Emptyrivers-Arthas",
					["name"] = "Desert Survivors",
					["code"] = "quit [round=2 & enemy.hpp=100] \nif [enemy(Stinger:2358).active] \nability(Powerball:566) [enemy.round=1] \nendif \nchange(Iron Starlette:1387) [self(Ash'ana:1927).dead] \nability(Supercharge:208) [self.aura(Wind-Up:458).exists] \nability(Wind-Up:459) \nchange(#2) [round=5] \nchange(Ash'ana:1927) [self(#2).active] \nability(Moonfire:595) [round=1] \nability(Pounce:535) [enemy.aura(Speed Reduction:154).exists] \nability(Screech:357)",
				},
				[66734] = {
					["name"] = "Farmer Nishi",
					["code"] = "change(#2) [self(#1).dead & !self(#2).played]\nchange(#3) [self(#2).active]\nability(Pump) [enemy.round=1]\nability(Pump) [enemy.round=3 & enemy(#2).active]\nability(Cleansing Rain) [enemy.round=2]\nability(Water Jet)\nability(Shock and Awe)\nability(Ion Cannon) (edited)",
				},
				[99880] = {
					["author"] = "Tinyrivers-Sargeras",
					["name"] = "Oh, Ominitron",
					["code"] = "ability(453)\nability(406) [self.round=2]\nability(814)\nability(406)\nchange(#2) [!self(#2).played]\nchange(#3)\nability(334) [self.round=1]\nability(779) [enemy(#1).dead & enemy(#2).dead]\nability(115)",
				},
				[66733] = {
					["name"] = "Mo'ruk",
					["code"] = "change(#2) [enemy(#2).active]\nability(Explode:282) [enemy(#3).active & enemy.hp.can_explode]\nability(Decoy:334) [enemy.ability(Headbutt:376).duration=2]\nability(Decoy:334) [round=2]\nability(Howl:362)\nability(Surge of Power:593)\nability(#1)\nstandby\nchange(#1)",
				},
				[116791] = {
					["name"] = "Dreadcoil",
					["code"] = "if [enemy(#1).active]\n    ability(392) [self.round=1]\n    ability(985) [self.round=2]\n    ability(1002)\nendif\nability(1002)\nchange(#2) [self(#1).dead]\n\nability(#3) [enemy.hp<618 & enemy.type !~ 3]\nability(#3) [enemy.hp<406 & enemy.type ~ 3]\nability(#2) [!self(#2).aura(820).exists]\nability(#1)",
				},
				[117934] = {
					["author"] = "Tinyrivers-Sargeras",
					["name"] = "Illidari Masters: Sissix",
					["code"] = "if [enemy(#1).active]\nability(1758)\nability(518) [enemy.aura(542).duration>0]\nability(1773)\nendif\nif [enemy(#2).active]\nability(518) [enemy.aura(542).duration>0]\nability(1773)\nendif\nif [enemy(#3).active]\nability(1773)\nchange(#3) [self(#1).dead & !self(#3).played]\nchange(#2) [self(#3).active]\nability(459) [self.round=1]\nability(566) [self.round=2]\nability(208) [self.round=3]\nability(459)\nendif",
				},
				[140813] = {
					["author"] = "Emptyrivers-Arthas",
					["name"] = "Rogue Azerite",
					["code"] = "ability(Whirlpool:513) [self(Pandaren Water Spirit:868).active]\nability(Dive:564) [self(Pandaren Water Spirit:868).active]\nability(Water Jet:118) [self(Pandaren Water Spirit:868).active]\nchange(#2) [self(Pandaren Water Spirit:868).dead & !self(Rapana Whelk:743).active]\nchange(Rapana Whelk:743)\nability(Shell Shield:310) [self(Rapana Whelk:743).aura(Shell Shield:309).duration <2]\nability(Dive:564)\nability(Absorb:449)",
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
				[66739] = {
					["name"] = "Wastewalker Shu",
					["code"] = "change(#2) [self(#1).dead]\nability(Explode:282) [enemy(#3).hp<=618]\nability(Moonfire:595) [round=2]\nability(Evanescence:440) [self.aura(Whirlpool:512).exists]\nability(Evanescence:440) [enemy(#2).active]\nability(Arcane Blast:421)\nability(Missile:777) [self.round=1]\nability(Decoy:334) [self(#2).active & enemy(#2).active]\nability(Missile:777)",
				},
				[142096] = {
					["author"] = "Emptyrivers-Arthas",
					["name"] = "Critters are Friends, Not Food",
					["code"] = "ability(Decoy:334) [ enemy.aura(Bomb:819).duration=1 ]\nability(Bombing Run:647) [ enemy.round<3 ]\nability(Bombing Run:647) [ self.aura(Mechanical:244).exists & enemy(#1).hp<220 ]\nability(Missile:777)\nchange(#2) [ !self(#2).played ]\nchange(#3)\nability(Arcane Storm:589)\nability(Mana Surge:489)\nability(Tail Sweep:122)",
				},
				[105898] = {
					["author"] = "Tinyrivers-Sargeras",
					["name"] = "Size Doesn't Matter",
					["code"] = "ability(321)\nchange(#2)\nability(919) [self.round=1]\nability(581)",
				},
				[104782] = {
					["author"] = "Tinyrivers-Sargeras",
					["name"] = "Wildlife Protection Force",
					["code"] = "change(#2) [self(#1).dead & !self(#2).played]\nchange(#3) [self(#2).active]\nchange(#1) [self(#3).dead]\nif [enemy(#1).active]\nability(218)\nability(652)\nability(919) [!enemy.aura(918).exists]\nability(581) [enemy.aura(918).exists]\nendif\nability(184)\nability(422)",
				},
				[73626] = {
					["name"] = "Little Tommy Newcomer",
					["code"] = "ability(Call Lightning:204)\nability(Build Turret:710) [self.ability(#1).usable]\nability(Metal Fist:384)\nchange(#1) [round=3 & self.aura(Mechanical:244).exists]\nability(Decoy:334)\nability(#1)\nchange(next)",
				},
				[99742] = {
					["author"] = "Tinyrivers-Sargeras",
					["name"] = "Fight Night: Heliosus",
					["code"] = "ability(218)\nability(652)\nchange(#2) \nability(919) [self.round=1]\nability(581)",
				},
				[107489] = {
					["author"] = "Emptyrivers-Bleeding Hollow",
					["name"] = "Fight Night: Amalia",
					["code"] = "if [enemy(#1).active]\n    ability(634)\n    ability(209) [enemy.hp<=1098]\n    ability(777)\nendif\nif [enemy(#2).active]\n    ability(634)\n    standby [self(#1).active]\n    change(#3) [self(#1).dead]\n    ability(312) [self.round=1]\n    ability(574) [!self.aura(820).exists]\n    ability(504)\nendif\nif [enemy(#3).active]\n    change(#3) [self(#2).active]\n    standby [enemy.round=4]\n    ability(312)\n    ability(574) [!self.aura(820).exists]\n    ability(504)\nendif",
				},
				[196264] = {
					["name"] = "The Terrible Three",
					["code"] = "standby [round=5]\nuse(Corrosion:447) [round=1]\nuse(Void Nova:2356)\nuse(Poison Protocol:1954)\nuse(Corrosion:447)\nuse(Explode:282)\nuse(Surge of Power:593) [self.aura(Dragonkin:245).exists]\nuse(Bite:110)\nchange(next)",
				},
			},
		},
	},
	["profileKeys"] = {
		["Garumn - Arthas"] = "Default",
		["Sverdrup - Argent Dawn"] = "Default",
		["Canerena - Arthas"] = "Default",
		["Ailisuul - Arthas"] = "Default",
		["Mindrivers - Korgath"] = "Default",
		["Dammedrivers - Exodar"] = "Default",
		["Alluvium - Argent Dawn"] = "Default",
		["Testrivers - Bleeding Hollow"] = "Default",
		["Crazyrivers - Bleeding Hollow"] = "Default",
		["Wildrivers - Bleeding Hollow"] = "Default",
		["Confluence - Argent Dawn"] = "Default",
		["Greedyrivers - Arthas"] = "Default",
		["Crazyrivers - Sargeras"] = "Default",
		["Emptyrivers - Arthas"] = "Default",
		["Luckyrivers - Sargeras"] = "Default",
		["Savattellir - Arthas"] = "Default",
		["Edgyrivers - Arthas"] = "Default",
		["Shachein - Arthas"] = "Default",
		["Wildrivers - Arthas"] = "Default",
		["Beefyrivers - Arthas"] = "Default",
		["Feralrivers - Sargeras"] = "Default",
		["Headcut - Argent Dawn"] = "Default",
		["Boringrivers - Bleeding Hollow"] = "Default",
		["Testrivers - Arthas"] = "Default",
		["Emptyrivers - Sargeras"] = "Default",
		["Serenerivers - Sargeras"] = "Default",
		["Ragingrivers - Arthas"] = "Default",
		["Crazyrivers - Arthas"] = "Default",
		["Beefyrivers - Bleeding Hollow"] = "Default",
		["Eysta - Sargeras"] = "Default",
		["Evilrivers - Sargeras"] = "Default",
		["Emptyrivers - Bleeding Hollow"] = "Default",
		["Riparium - Argent Dawn"] = "Default",
		["Kdajshtlaiuw - Bleeding Hollow"] = "Default",
		["Evilrivers - Kel'Thuzad"] = "Default",
		["Testes - Arthas"] = "Default",
		["Daedrasminia - Arthas"] = "Default",
		["Riversticks - Bleeding Hollow"] = "Default",
		["Emptyrivers - Argent Dawn"] = "Default",
		["Mahntaiaga - Arthas"] = "Default",
		["Tinyrivers - Sargeras"] = "Default",
		["Serenerivers - Bleeding Hollow"] = "Default",
		["Estuary - Argent Dawn"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["settings"] = {
				["noWaitDeleteScript"] = true,
				["hideMinimap"] = false,
				["autoButtonHotKey"] = "0",
			},
			["position"] = {
				["y"] = -26.1312255859375,
				["x"] = 290.7377014160156,
				["point"] = "LEFT",
				["scale"] = 1,
				["height"] = 448.4761352539063,
				["width"] = 349.9999389648438,
			},
			["pluginOrders"] = {
				"Rematch", -- [1]
				"Base", -- [2]
				"FirstEnemy", -- [3]
				"AllInOne", -- [4]
			},
			["minimap"] = {
				["minimapPos"] = 147.98189474991,
			},
		},
	},
}

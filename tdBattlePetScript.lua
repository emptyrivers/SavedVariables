
TD_DB_BATTLEPETSCRIPT_GLOBAL = {
	["global"] = {
		["scripts"] = {
			["Base"] = {
			},
			["Rematch"] = {
				[105779] = {
					["author"] = "Tinyrivers-Sargeras",
					["name"] = "Threads of Fate",
					["code"] = "if [enemy(#1).active]\n     ability(334)\n     ability(115)\nendif\nif [enemy(#2).active]\n     ability(115)\nendif\nif [enemy(#3).active]\n     ability(115) [enemy.round<=2]\n     ability(334)\n     change(#2) [self(#1).active & !self(#2).played]\n     change(#3) [self(#2).active]\n     ability(312) [self.round=1]\n     ability(504) [self.round=2]\n     ability(574) [!self.aura(820).exists]\n     ability(504)\nendif",
				},
				[105093] = {
					["author"] = "Tinyrivers-Sargeras",
					["name"] = "Fragment of Fire",
					["code"] = "ability(440) [enemy.round=1]\nability(595) [!weather(596)]\nability(421)\nchange(#2) [self(#1).dead & !self(#2).played]\nchange(#3) [self(#2).active]\nif [enemy(#2).active]\nability(369) [!enemy.aura(368).exists]\nability(445)\nendif\nif [enemy(#3).active]\nability(564)\nability(369) [!enemy.aura(368).exists]\nability(445)\nendif",
				},
				[98572] = {
					["author"] = "Tinyrivers-Sargeras",
					["name"] = "Rocko",
					["code"] = "ability(1347)",
				},
				[142114] = {
					["author"] = "Emptyrivers-Arthas",
					["name"] = "Add More to the Collection",
					["code"] = "if [ !self(#2).active ]\n    ability(Extra Plating:392) [ round=1 ]\n    ability(Make it Rain:985) [ enemy.round<4 ]\n    ability(Inflation:1002)\nendif\nchange(#2) [ !self(#2).played ]\nchange(#3)\nability(Arcane Storm:589)\nability(Mana Surge:489)",
				},
				[141529] = {
					["author"] = "Emptyrivers-Arthas",
					["name"] = "Marshdwellers",
					["code"] = "change(#3) [ self(#2).played ]\nability(Black Claw:919) [ self.round=1 ]\nability(Flock:581)\nability(Arcane Storm:589)\nability(Mana Surge:489)\nability(Tail Sweep:122)\nchange(#1)",
				},
				[141046] = {
					["author"] = "Emptyrivers-Arthas",
					["name"] = "Captured Evil",
					["code"] = "if [ self(#1).active ]\n    if [ !enemy(#3).active ]\n        ability(Nature's Ward:574) [ !self.aura(Nature's Ward:820).exists & enemy.hp>309 ]\n        ability(Ravage:802) [ !self.speed.fast & !ability(Alpha Strike504).strong & enemy.ability(Rain Dance:1062).duration>1 ]\n        ability(Ravage:802) [ enemy.ability(Rain Dance:1062).duration>1 & enemy.hp<619 ]\n    endif\n    ability(Ravage:802) [ enemy(#2).active & enemy.hp<310 ]\n    ability(Ravage:802) [ self.speed.slow ]\n    ability(Alpha Strike:504)\nendif\nchange(#2) [ !self(#2).played ]\nchange(#3)\nability(Decoy:334) [ enemy.ability(Darkflame:792).duration=1 ]\nability(#1)",
				},
				[83837] = {
					["author"] = "Emptyrivers-Bleeding Hollow",
					["name"] = "Cymre Brightblade",
					["code"] = "if [enemy(#1).active]\n     change(#2) [enemy.hp<450 & !self(#2).played]\n     change(#1) [self(#2).active]\n     change(#3) [enemy.aura(242).exists]\n     ability(513) [enemy.round=1]\n     ability(511) [self(#2).played & !self.aura(510).exists]\n     ability(356)\nendif\nif [enemy(#2).active]\n     ability(168) [enemy.round=1]\n     ability(122)\nendif\nif [enemy(#3).active]\n     ability(405) [enemy.round=1]\n     ability(122)\nendif",
				},
				[99742] = {
					["author"] = "Tinyrivers-Sargeras",
					["name"] = "Fight Night: Heliosus",
					["code"] = "ability(218)\nability(652)\nchange(#2) \nability(919) [self.round=1]\nability(581)",
				},
				[104992] = {
					["author"] = "Tinyrivers-Sargeras",
					["name"] = "Meet The Maw",
					["code"] = "ability(Proto-Strike:612) [round=1]\nability(Emerald Presence:597) [round=3]\nability(#1)\nchange(#2)",
				},
				[105512] = {
					["author"] = "Tinyrivers-Sargeras",
					["name"] = "All Pets Go to Heaven",
					["code"] = "change(#2) [ !self(#2).played & enemy(#2).active & enemy.round ~ 5, 6 ]\nif [ self(#1).active ]\n    ability(Flurry:360) [ enemy(#2).active & enemy.hp > 550 ]\n    ability(Flurry:360) [ !enemy.aura(Undead:242).exists & self.round > 1 ]\n    ability(Dodge:312)\nendif\nif [ enemy(#2).active ]\n    change(#2) [ self(#1).dead & !self(#2).played & !self(#3).played & enemy.round = 4 ]\n    change(#3)\n    ability(Burrow:159) [ enemy.round = 3 ]\n    ability(Dodge:312) [ enemy.round ~ 1, 9 ]\n    ability(Flurry:360)\nendif\nchange(#3)\nability(Dodge:312) [ enemy.ability(Curse of Doom:218).usable ]\nability(Flurry:360)",
				},
				["-Master Tamer Flummox (5)"] = {
					["author"] = "Tinyrivers-Sargeras",
					["name"] = "-Master Tamer Flummox (5)",
					["code"] = "ability(Apocalypse) [enemy.round=1] \nchange(#2) [enemy.round=2] \nstandby [enemy.round=3] \nability(Dodge) [enemy.round=4] \nstandby [enemy.round=5] \nability(Burrow) [enemy.round=6] \nchange(#3) [enemy.round=8] \nstandby [enemy.round=9] \nability(Dodge) [enemy.round=10] \nstandby [enemy.round=11] \nability(Burrow) [enemy.round=12] \nstandby [self(#3).active] \nchange(#2) \nif [enemy(#1).active] \nability(Dodge) \nstandby \nendif",
				},
				[140813] = {
					["author"] = "Emptyrivers-Arthas",
					["name"] = "Rogue Azerite",
					["code"] = "ability(Whirlpool:513) [self(Pandaren Water Spirit:868).active]\nability(Dive:564) [self(Pandaren Water Spirit:868).active]\nability(Water Jet:118) [self(Pandaren Water Spirit:868).active]\nchange(#2) [self(Pandaren Water Spirit:868).dead & !self(Rapana Whelk:743).active]\nchange(Rapana Whelk:743)\nability(Shell Shield:310) [self(Rapana Whelk:743).aura(Shell Shield:309).duration <2]\nability(Dive:564)\nability(Absorb:449)",
				},
				[140461] = {
					["author"] = "Emptyrivers-Arthas",
					["name"] = "Night Horrors",
					["code"] = "ability(Black Claw:919) [ !enemy.aura(Black Claw:918).exists ]\nability(Black Claw:919) [ enemy(#3).active & self.hp>366 ]\nability(Flock:581)\nchange(#2) [ !self(#2).played ]\nchange(#3)\nability(Make it Rain:985)\nability(#1)",
				},
				[117951] = {
					["author"] = "Tinyrivers-Sargeras",
					["name"] = "Illidari Masters: Nameless Mystic",
					["code"] = "if [enemy(#1).active]\n    ability(334) [self.round=1]\n    ability(115)\nendif\nif [enemy(#2).active]\n    ability(334)\n    ability(779)\n    ability(115)\nendif\nif [enemy(#3).active]\n    ability(115)\n    change(#2) [self(#1).dead]\n    ability(334) [self(#2).active]\n    ability(282) [enemy.hp<=618]\n    ability(777)\nendif",
				},
				[99880] = {
					["author"] = "Tinyrivers-Sargeras",
					["name"] = "Oh, Ominitron",
					["code"] = "ability(453)\nability(406) [self.round=2]\nability(814)\nability(406)\nchange(#2) [!self(#2).played]\nchange(#3)\nability(334) [self.round=1]\nability(779) [enemy(#1).dead & enemy(#2).dead]\nability(115)",
				},
				[141945] = {
					["author"] = "Emptyrivers-Arthas",
					["name"] = "Snakes on a Terrace",
					["code"] = "standby [ self(#1).active ] \nif [ self(#2).active ] \n  use(#3) [ self.round == 1 ]\n  use(#2) [ enemy.aura(Underwater:830).exists ]\n  use(#1)\nendif",
				},
				[105898] = {
					["author"] = "Tinyrivers-Sargeras",
					["name"] = "Size Doesn't Matter",
					["code"] = "ability(321)\nchange(#2)\nability(919) [self.round=1]\nability(581)",
				},
				[105009] = {
					["author"] = "Emptyrivers-Bleeding Hollow",
					["name"] = "Thistleleaf Bully",
					["code"] = "if [enemy(#1).active & self(#1).active] \nability(652) [enemy.round=4] \nability(499) \nchange(#2) [self(#1).dead] \nendif \nif [self(#2).active] \nability(919) [!enemy.aura(918).exists] \nability(581) \nability(1370) \nchange(#1) [self(#2).dead] \nability(499) \nendif",
				},
				[87122] = {
					["author"] = "Emptyrivers-Bleeding Hollow",
					["name"] = "Gargra",
					["code"] = "change(#2) [ self(#1).dead ] \nstandby [ enemy.aura(Dodge).exists ] \nability(Build Turret) [ enemy(#1).active & enemy.round=1 ] \nability(Build Turret) [ enemy(#2).active & enemy.round=2 ] \nability(Metal Fist) \nability(Decoy) [ enemy(#3).active ] \nability(Explode) [ enemy(#3).hp < 618 ] \nability(Missile)",
				},
				[105842] = {
					["author"] = "Tinyrivers-Sargeras",
					["name"] = "Chromadon",
					["code"] = "ability(713)",
				},
				[117934] = {
					["author"] = "Tinyrivers-Sargeras",
					["name"] = "Illidari Masters: Sissix",
					["code"] = "if [enemy(#1).active]\nability(1758)\nability(518) [enemy.aura(542).duration>0]\nability(1773)\nendif\nif [enemy(#2).active]\nability(518) [enemy.aura(542).duration>0]\nability(1773)\nendif\nif [enemy(#3).active]\nability(1773)\nchange(#3) [self(#1).dead & !self(#3).played]\nchange(#2) [self(#3).active]\nability(459) [self.round=1]\nability(566) [self.round=2]\nability(208) [self.round=3]\nability(459)\nendif",
				},
				[128011] = {
					["author"] = "Emptyrivers-Bleeding Hollow",
					["name"] = "Deathscreech",
					["code"] = "ability(#2) [round=1] \nability(#3) [round=2] \nchange(#2) [self(#1).dead] \nability(#2) [self.round=1] \nability(#3)",
				},
				[87124] = {
					["author"] = "Emptyrivers-Bleeding Hollow",
					["name"] = "Ashlei",
					["code"] = "if [enemy(#1).active]\n    ability(115)\nendif\nif [enemy(#2).active]\n    ability(647) [enemy.hpp=100]\n    ability(282) [enemy.hp<=560]\n    ability(115)\nendif\nability(115)",
				},
				[105323] = {
					["author"] = "Tinyrivers-Sargeras",
					["name"] = "Clear the Catacombs",
					["code"] = "if [enemy(#1).active]\n    ability(647) [self.round=1]\n    ability(334) [self.round=3]\n    ability(777)\nendif\nif [enemy(#2).active]\n    change(#2) [enemy.round=1]\n    ability(312) [self.round=1]\n    ability(504) [self.round=2]\n    ability(574) [!self.aura(820).exists]\n    ability(504)\nendif\nif [enemy(#3).active]\n    change(#3) [enemy.round=1]\n    change(#1) [self(#3).active]\n    change(#2) [self(#1).dead]\n    ability(334) [self.round=1]\n    ability(647) [self.round=2]\n    ability(777)\n    ability(312) [self.round=1]\n    ability(504)\nendif",
				},
				[104782] = {
					["author"] = "Tinyrivers-Sargeras",
					["name"] = "Wildlife Protection Force",
					["code"] = "change(#2) [self(#1).dead & !self(#2).played]\nchange(#3) [self(#2).active]\nchange(#1) [self(#3).dead]\nif [enemy(#1).active]\nability(218)\nability(652)\nability(919) [!enemy.aura(918).exists]\nability(581) [enemy.aura(918).exists]\nendif\nability(184)\nability(422)",
				},
				[105352] = {
					["author"] = "Tinyrivers-Sargeras",
					["name"] = "Mana Tap",
					["code"] = "if [enemy(#1).active]  \nchange(#2) [enemy.round=2] \nchange(#1) [self(#2).active] \nability(334) \nability(115) \nendif \nability(334) \nability(115) \nchange(#3) [self(#1).dead] \nability(710) \nability(384)",
				},
				[107489] = {
					["author"] = "Emptyrivers-Bleeding Hollow",
					["name"] = "Fight Night: Amalia",
					["code"] = "if [enemy(#1).active]\n    ability(634)\n    ability(209) [enemy.hp<=1098]\n    ability(777)\nendif\nif [enemy(#2).active]\n    ability(634)\n    standby [self(#1).active]\n    change(#3) [self(#1).dead]\n    ability(312) [self.round=1]\n    ability(574) [!self.aura(820).exists]\n    ability(504)\nendif\nif [enemy(#3).active]\n    change(#3) [self(#2).active]\n    standby [enemy.round=4]\n    ability(312)\n    ability(574) [!self.aura(820).exists]\n    ability(504)\nendif",
				},
				[142096] = {
					["author"] = "Emptyrivers-Arthas",
					["name"] = "Critters are Friends, Not Food",
					["code"] = "ability(Decoy:334) [ enemy.aura(Bomb:819).duration=1 ]\nability(Bombing Run:647) [ enemy.round<3 ]\nability(Bombing Run:647) [ self.aura(Mechanical:244).exists & enemy(#1).hp<220 ]\nability(Missile:777)\nchange(#2) [ !self(#2).played ]\nchange(#3)\nability(Arcane Storm:589)\nability(Mana Surge:489)\nability(Tail Sweep:122)",
				},
				[117950] = {
					["author"] = "Tinyrivers-Sargeras",
					["name"] = "Illidari Masters: Madam Viciosa",
					["code"] = "if [enemy(#1).active]\n    standby [self(#1).active]\n    ability(218)\n    ability(210) [enemy.aura(217).duration>2]\n    ability(652)\n    change(#3) [enemy.aura(653).exists]\n    ability(334)\n    ability(115)\nendif\nif [enemy(#2).active]\n    ability(115)\nendif\nif [enemy(#3).active]\n    standby [self.aura(927).exists]\n    ability(779)\n    ability(334)\n    ability(115)\n    change(#2) [self(#3).dead]\n    ability(210)\nendif",
				},
				[105241] = {
					["author"] = "Tinyrivers-Sargeras",
					["name"] = "Fight Night: Rats!",
					["code"] = "ability(919) [!enemy.aura(918).exists]\nability(921)",
				},
				[141879] = {
					["author"] = "Emptyrivers-Arthas",
					["name"] = "Keeyo’s Champions of Vol’dun",
					["code"] = "change(next) [ self.dead ]\nif [ self(#1).active ] \n  use(#2) [ self.round == 1 ]\n  use(#2) [ enemy.aura(Dodge).exists ]\n  standby [ enemy(#3).hpp<=50 ]\n  use(#3)\n  use(#1)\nendif\n\nchange(next) [ self(#2).active & !self(#3).played ] \n\nif [ self(#3).active ] \n  use(#3)\n  use(#1)\nendif",
				},
				[141002] = {
					["author"] = "Emptyrivers-Arthas",
					["name"] = "Sea Creatures Are Weird",
					["code"] = "quit [ enemy(#1).active & !enemy.ability(Sweep:457).usable ]\nchange(#1) [ self(#3).active ]\nchange(#3) [ self(#1).dead ]\nif [ self(#1).active ]\n    ability(Supercharge:208) [ round~2,6 ]\n    ability(Wind-Up:459) [ enemy(#1).active ]\n    ability(Wind-Up:459) [ round>6 & self.aura(Mechanical:244).exists & self.aura(Wind-Up:458).exists ]\n    ability(Powerball:566)\nendif\nability(Explode:282) [ enemy(#3).active & enemy(#3).hp<561 ]\nability(Thunderbolt:779) [ !enemy(#2).dead & enemy(#2).hp<245 ]\nability(Thunderbolt:779) [ enemy(#3).active ]\nability(Breath:115)",
				},
			},
		},
	},
	["profileKeys"] = {
		["Savattellir - Arthas"] = "Default",
		["Edgyrivers - Arthas"] = "Default",
		["Shachein - Arthas"] = "Default",
		["Wildrivers - Arthas"] = "Default",
		["Serenerivers - Bleeding Hollow"] = "Default",
		["Beefyrivers - Arthas"] = "Default",
		["Feralrivers - Sargeras"] = "Default",
		["Crazyrivers - Arthas"] = "Default",
		["Boringrivers - Bleeding Hollow"] = "Default",
		["Luckyrivers - Sargeras"] = "Default",
		["Crazyrivers - Bleeding Hollow"] = "Default",
		["Dammedrivers - Exodar"] = "Default",
		["Emptyrivers - Arthas"] = "Default",
		["Emptyrivers - Sargeras"] = "Default",
		["Riversticks - Bleeding Hollow"] = "Default",
		["Eysta - Sargeras"] = "Default",
		["Testrivers - Bleeding Hollow"] = "Default",
		["Emptyrivers - Bleeding Hollow"] = "Default",
		["Wildrivers - Bleeding Hollow"] = "Default",
		["Kdajshtlaiuw - Bleeding Hollow"] = "Default",
		["Evilrivers - Kel'Thuzad"] = "Default",
		["Greedyrivers - Arthas"] = "Default",
		["Testes - Arthas"] = "Default",
		["Crazyrivers - Sargeras"] = "Default",
		["Evilrivers - Sargeras"] = "Default",
		["Beefyrivers - Bleeding Hollow"] = "Default",
		["Tinyrivers - Sargeras"] = "Default",
		["Serenerivers - Sargeras"] = "Default",
		["Mindrivers - Korgath"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["settings"] = {
				["noWaitDeleteScript"] = true,
				["hideMinimap"] = false,
				["hideNoScript"] = true,
				["autoButtonHotKey"] = "0",
			},
			["position"] = {
				["y"] = -129.750312805176,
				["x"] = 354.500061035156,
				["scale"] = 1,
			},
		},
	},
}

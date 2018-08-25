
M6DB = {
	["icManaColor"] = "8080ff",
	["icRangeColor"] = "ffffff",
	["actions"] = {
		{
			"macrotext", -- [1]
			"#showtooltip\n/use [@mouseover,help,nodead][help,nodead] renewing mist; [harm] rising sun kick; [@player] renewing mist\n", -- [2]
			["name"] = "RM",
		}, -- [1]
		{
			"macrotext", -- [1]
			"#showtooltip\n/use [@mouseover,help,nodead][help,nodead]Enveloping Mist; [harm] Tiger Palm; [@player] Enveloping mist\n", -- [2]
			["name"] = "enveloping mist",
		}, -- [2]
		{
			"macrotext", -- [1]
			"#showtooltip Provoke\n/use [nomod,@mouseover,harm,nodead][nomod] Provoke\n/tar [mod:alt] Black Ox Statue\n/use [mod:alt] Provoke\n/targetlasttarget [mod:alt]\n/whoa\n", -- [2]
			["name"] = "provoke",
		}, -- [3]
		{
			"macrotext", -- [1]
			"#showtooltip\n/use [nomod:shift,@cursor] Disabling Technique\n/click [mod:shift] TotemFrameTotem1 RightButton\n", -- [2]
			["name"] = "disable",
		}, -- [4]
		{
			"macrotext", -- [1]
			"#showtooltip\n/use [@mouseover,help,nodead][help,nodead] Effuse; [harm] Blackout Kick; [@player] Effuse", -- [2]
			["name"] = "effuse",
		}, -- [5]
		{
			"macrotext", -- [1]
			"#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player] vivify", -- [2]
			["name"] = "vivify",
		}, -- [6]
		{
			"macrotext", -- [1]
			"/use !Spinning Crane kick", -- [2]
			["name"] = "sck",
		}, -- [7]
		{
			"macrotext", -- [1]
			"#showtooltip\n/use [@mouseover,help,nodead][help,nodead][@player] Chain Heal", -- [2]
			["name"] = "chain heal",
		}, -- [8]
		{
			"macrotext", -- [1]
			"#showtooltip\n/use [@mouseover,help,nodead][help,nodead] Riptide; [harm] Lightning bolt; [@player] Riptide", -- [2]
			["name"] = "riptide/lb",
		}, -- [9]
		{
			"macrotext", -- [1]
			"#showtooltip\n/use [@mouseover,help,nodead][help,nodead] healing wave; [harm] flame shock; [@player] Healing wave", -- [2]
			["name"] = "healing wave",
		}, -- [10]
		{
			"macrotext", -- [1]
			"#showtooltip\n/use [@mouseover,help,nodead][help,nodead] Healing Surge; [harm] Lava Burst; [@player] Healing Surge", -- [2]
			["name"] = "surge/lava",
		}, -- [11]
		{
			"macrotext", -- [1]
			"#showtooltip\n/use [mod,@cursor] Healing rain;[@mouseover,help,nodead][help,nodead]Chain heal;[harm] Chain lightning; [@player] Chain Heal", -- [2]
			["name"] = "aoe heal",
		}, -- [12]
		{
			"macrotext", -- [1]
			"#showtooltip\n/use [@mouseover,help,nodead][help,nodead] Purify Spirit; [harm] Purge; [@player] Purify Spirit", -- [2]
			["name"] = "dispel",
		}, -- [13]
		{
			"macrotext", -- [1]
			"#showtooltip\n/use [@cursor] Spirit Link Totem", -- [2]
			["name"] = "slt",
		}, -- [14]
	},
	["profiles"] = {
		["Kel'Thuzad"] = {
			["Tinyrivers"] = {
				{
					["slots"] = {
					},
					["bind"] = {
					},
				}, -- [1]
				{
					["slots"] = {
					},
					["bind"] = {
					},
				}, -- [2]
				{
					["slots"] = {
					},
					["bind"] = {
					},
				}, -- [3]
			},
		},
		["Sargeras"] = {
			["Blindrivers"] = {
				{
					["slots"] = {
					},
					["bind"] = {
					},
				}, -- [1]
			},
			["Mecharivers"] = {
				{
					["slots"] = {
					},
					["bind"] = {
					},
				}, -- [1]
				{
					["slots"] = {
					},
					["bind"] = {
					},
				}, -- [2]
				{
					["slots"] = {
					},
					["bind"] = {
					},
				}, -- [3]
			},
			["Serenerivers"] = {
				{
					["slots"] = {
					},
					["bind"] = {
					},
				}, -- [1]
				{
					["slots"] = {
						["s03"] = 3,
						["s04"] = 5,
						["s01"] = 1,
						["s06"] = 7,
						["s05"] = 6,
						["s02"] = 2,
					},
					["bind"] = {
					},
				}, -- [2]
				{
					["slots"] = {
					},
					["bind"] = {
					},
				}, -- [3]
			},
			["Feralrivers"] = {
				{
					["slots"] = {
					},
					["bind"] = {
					},
				}, -- [1]
				{
					["slots"] = {
					},
					["bind"] = {
					},
				}, -- [2]
				{
					["slots"] = {
					},
					["bind"] = {
					},
				}, -- [3]
				{
					["slots"] = {
					},
					["bind"] = {
					},
				}, -- [4]
			},
			["Tinyrivers"] = {
				{
					["slots"] = {
					},
					["bind"] = {
					},
				}, -- [1]
				{
					["slots"] = {
					},
					["bind"] = {
					},
				}, -- [2]
				{
					["slots"] = {
					},
					["bind"] = {
					},
				}, -- [3]
			},
			["Eysta"] = {
				{
					["slots"] = {
					},
					["bind"] = {
					},
				}, -- [1]
				{
					["slots"] = {
					},
					["bind"] = {
					},
				}, -- [2]
				{
					["slots"] = {
					},
					["bind"] = {
					},
				}, -- [3]
			},
			["Evilrivers"] = {
				{
					["slots"] = {
					},
					["bind"] = {
					},
				}, -- [1]
				[3] = {
					["slots"] = {
					},
					["bind"] = {
					},
				},
			},
			["Holyrivers"] = {
				{
					["slots"] = {
					},
					["bind"] = {
					},
				}, -- [1]
				[3] = {
					["slots"] = {
					},
					["bind"] = {
					},
				},
			},
			["Crazyrivers"] = {
				{
					["slots"] = {
					},
					["bind"] = {
					},
				}, -- [1]
				{
					["slots"] = {
					},
					["bind"] = {
					},
				}, -- [2]
				{
					["slots"] = {
					},
					["bind"] = {
					},
				}, -- [3]
			},
			["Luckyrivers"] = {
				{
					["slots"] = {
					},
					["bind"] = {
					},
				}, -- [1]
				{
					["slots"] = {
					},
					["bind"] = {
					},
				}, -- [2]
				{
					["slots"] = {
					},
					["bind"] = {
					},
				}, -- [3]
			},
			["Emptyrivers"] = {
				{
					["slots"] = {
					},
					["bind"] = {
					},
				}, -- [1]
				{
					["slots"] = {
					},
					["bind"] = {
					},
				}, -- [2]
				{
					["slots"] = {
						["s03"] = 10,
						["s04"] = 11,
						["s01"] = 8,
						["s06"] = 13,
						["s02"] = 9,
						["s05"] = 12,
						["s07"] = 14,
					},
					["bind"] = {
					},
				}, -- [3]
			},
		},
		["Korgath"] = {
			["Evilrivers"] = {
				{
					["slots"] = {
					},
					["bind"] = {
					},
				}, -- [1]
			},
		},
	},
}

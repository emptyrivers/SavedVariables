
MegaMacroConfig = nil
MegaMacroGlobalData = {
	["Macros"] = {
		{
			["Scope"] = "gg",
			["StaticTexture"] = 134400,
			["Code"] = "/tar Thieving Rock Mouse\n/script SetRaidTarget(\"target\", 8);\n",
			["Id"] = 1,
			["ScopedIndex"] = 1,
			["DisplayName"] = "ASDF",
		}, -- [1]
		{
			["Scope"] = "gg",
			["StaticTexture"] = 134400,
			["Code"] = "#showtooltip\n/stopcasting [mod]\n/use Trans-Dimensional Bird Whistle\n",
			["Id"] = 2,
			["ScopedIndex"] = 2,
			["DisplayName"] = "blah",
		}, -- [2]
		{
			["Scope"] = "gg",
			["StaticTexture"] = 134400,
			["Code"] = "#showtooltip\n/sp [mod:ctrl, mod:shift] pierre\n/stopmacro [mod:ctrl, mod:shift]\n/use [combat,mod][combat] Ti~~~me Warp; [mod:shift, mod:alt] Archaeology; [mod:ctrl] Cooking; [mod:alt] Enchanting; [mod] Tailoring; Fishing\n",
			["Id"] = 3,
			["ScopedIndex"] = 3,
			["DisplayName"] = "prof",
		}, -- [3]
		{
			["Scope"] = "gg",
			["StaticTexture"] = 134400,
			["Code"] = "#showtooltip\n/use [@player] Flash Heal\n",
			["Id"] = 4,
			["ScopedIndex"] = 4,
			["DisplayName"] = "selfheal",
		}, -- [4]
		{
			["Scope"] = "gg",
			["StaticTexture"] = 134400,
			["Code"] = "/click TBERandomFavoredToy LeftButton true\n",
			["Id"] = 5,
			["ScopedIndex"] = 5,
			["DisplayName"] = "TBE: Random Toy",
		}, -- [5]
	},
	["Activated"] = true,
	["Classes"] = {
		["Priest"] = {
			["Macros"] = {
			},
			["Specializations"] = {
				["Shadow"] = {
					["Macros"] = {
					},
				},
			},
		},
	},
}

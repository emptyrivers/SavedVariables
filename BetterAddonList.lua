
BetterAddonListDB = {
	["sets"] = {
		["RIO"] = {
			"PremadeApplicantsFilter", -- [1]
			"PremadeGroupsFilter", -- [2]
			"PremadeRegions", -- [3]
			"RaiderIO", -- [4]
			"RaiderIO_DB_US_M", -- [5]
		},
		["Talents"] = {
			"TalentLoadoutManager", -- [1]
			"TalentTreeTweaks", -- [2]
		},
		["Development"] = {
			"!BugGrabber", -- [1]
			"AdvancedInterfaceOptions", -- [2]
			"Bisector", -- [3]
			"BugSack", -- [4]
			"DevTool", -- [5]
			"Paste", -- [6]
			"WowLua", -- [7]
		},
		["BigWigs"] = {
			"BigWigs", -- [1]
			"BigWigs_Aberrus", -- [2]
			"BigWigs_Amirdrassil", -- [3]
			"BigWigs_BattleForAzeroth", -- [4]
			"BigWigs_Classic", -- [5]
			"BigWigs_Core", -- [6]
			"BigWigs_DragonIsles", -- [7]
			"BigWigs_Options", -- [8]
			"BigWigs_Plugins", -- [9]
			"BigWigs_VaultOfTheIncarnates", -- [10]
			"LittleWigs", -- [11]
			"LittleWigs_BattleForAzeroth", -- [12]
			"LittleWigs_BurningCrusade", -- [13]
			"LittleWigs_Cataclysm", -- [14]
			"LittleWigs_Classic", -- [15]
			"LittleWigs_Legion", -- [16]
			"LittleWigs_MistsOfPandaria", -- [17]
			"LittleWigs_Shadowlands", -- [18]
			"LittleWigs_WarlordsOfDraenor", -- [19]
			"LittleWigs_WrathOfTheLichKing", -- [20]
		},
		["!Main"] = {
		},
		["Details"] = {
			"Details", -- [1]
			"Details_Compare2", -- [2]
			"Details_DataStorage", -- [3]
			"Details_EncounterDetails", -- [4]
			"Details_RaidCheck", -- [5]
			"Details_Streamer", -- [6]
			"Details_TinyThreat", -- [7]
			"Details_Vanguard", -- [8]
		},
		["TSM"] = {
			"TradeSkillMaster", -- [1]
			"TradeSkillMaster_AppHelper", -- [2]
		},
		["!Combat"] = {
			"DeleteManaGem", -- [1]
			"MythicDungeonTools", -- [2]
			"OPie", -- [3]
			"OPie_ElvUI", -- [4]
			"OmniCD", -- [5]
			"OmniCD_BattleRes", -- [6]
			"Plater", -- [7]
			"Simulationcraft", -- [8]
			"TalentLoadoutManager", -- [9]
			"TalentTreeTweaks", -- [10]
		},
		["ElvUI"] = {
			"AddOnSkins", -- [1]
			"ElvUI", -- [2]
			"ElvUI_Libraries", -- [3]
			"ElvUI_Options", -- [4]
			"ElvUI_SLE", -- [5]
		},
		["BetterBags"] = {
			"BetterBags", -- [1]
			"BetterBags_Archaeology", -- [2]
			"BetterBags_AzerothianArchives", -- [3]
			"BetterBags_BattlePetItems", -- [4]
			"BetterBags_Dragonflight", -- [5]
			"BetterBags_DragonflightReputationInsignia", -- [6]
		},
		["Macros"] = {
			"MacroToolkit", -- [1]
			"MacroToolkitIcons", -- [2]
		},
		["WeakAuras"] = {
			"CurseBreakerCompanion", -- [1]
			"SharedMedia_Causese", -- [2]
			"WeakAuras", -- [3]
			"WeakAurasArchive", -- [4]
			"WeakAurasCompanion", -- [5]
			"WeakAurasModelPaths", -- [6]
			"WeakAurasOptions", -- [7]
		},
		["!Casual Content"] = {
			"AngrierWorldQuests", -- [1]
			"BattlePetBreedID", -- [2]
			"CandyBuckets", -- [3]
			"DialogKey", -- [4]
			"DynamicCam", -- [5]
			"Immersion", -- [6]
			"InFlight", -- [7]
			"InFlight_Load", -- [8]
			"MinimalArchaeology", -- [9]
			"Rematch", -- [10]
			"TomTom", -- [11]
			"ToyBoxEnhanced", -- [12]
			"TwitchEmotesvKEKL", -- [13]
			"tdBattlePetScript", -- [14]
		},
		["Altoholic"] = {
			"AddonFactory", -- [1]
			"Altoholic", -- [2]
			"Altoholic_Achievements", -- [3]
			"Altoholic_Agenda", -- [4]
			"Altoholic_Characters", -- [5]
			"Altoholic_Grids", -- [6]
			"Altoholic_Guild", -- [7]
			"Altoholic_Options", -- [8]
			"Altoholic_Search", -- [9]
			"Altoholic_Summary", -- [10]
			"DataStore", -- [11]
			"DataStore_Achievements", -- [12]
			"DataStore_Agenda", -- [13]
			"DataStore_Auctions", -- [14]
			"DataStore_Characters", -- [15]
			"DataStore_Containers", -- [16]
			"DataStore_Crafts", -- [17]
			"DataStore_Currencies", -- [18]
			"DataStore_Garrisons", -- [19]
			"DataStore_Inventory", -- [20]
			"DataStore_Mails", -- [21]
			"DataStore_Pets", -- [22]
			"DataStore_Quests", -- [23]
			"DataStore_Reputations", -- [24]
			"DataStore_Spells", -- [25]
			"DataStore_Stats", -- [26]
			"DataStore_Talents", -- [27]
		},
	},
	["nested"] = {
		["M+/Raiding"] = {
			["RIO"] = true,
			["BigWigs"] = true,
			["Details"] = true,
			["WeakAuras"] = true,
			["ElvUI"] = true,
		},
		["Bisector development"] = {
			["Development"] = true,
		},
		["!Main"] = {
			["RIO"] = true,
			["Talents"] = true,
			["Development"] = true,
			["BigWigs"] = true,
			["Details"] = true,
			["ElvUI"] = true,
			["TSM"] = true,
			["BetterBags"] = true,
			["Macros"] = true,
			["WeakAuras"] = true,
			["!Casual Content"] = true,
			["Altoholic"] = true,
		},
		["!Casual Content"] = {
			["Altoholic"] = true,
			["Talents"] = true,
			["Macros"] = true,
		},
		["!Combat"] = {
			["Macros"] = true,
			["Talents"] = true,
		},
	},
	["protected"] = {
	},
}

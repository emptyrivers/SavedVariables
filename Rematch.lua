
Rematch5Settings = {
	["UseMinimapButton"] = true,
	["QueueRandomMaxLevel"] = true,
	["HideLevelBubbles"] = true,
	["QueueAutoLearnOnly"] = true,
	["QueuePreferFullHP"] = false,
	["CurrentLayout"] = "0-minimized",
	["ColorPetNames"] = true,
	["InteractOnlyWhenInjured"] = false,
	["StayOnLogout"] = false,
	["AutoWinRecord"] = false,
	["ResetSortWithFilters"] = false,
	["ImportRememberOverride"] = false,
	["PetMarkerNames"] = {
	},
	["QueueSortByNameToo"] = false,
	["DontSortByRelevance"] = false,
	["DisableShare"] = false,
	["ShowSpeciesID"] = true,
	["XPos"] = 11.61897850036621,
	["ShowAbilityNumbersLoaded"] = false,
	["HideTruncatedTooltips"] = false,
	["AlternateWinRecord"] = false,
	["PreferMinimized"] = true,
	["PetCardForLinks"] = true,
	["HideRarityBorders"] = true,
	["EchoTeamDrag"] = false,
	["LockPosition"] = false,
	["QueueAutoLearn"] = true,
	["PanelTabAnchor"] = "TOPLEFT",
	["PetCardAlwaysShowHPXPText"] = false,
	["CollapseOnEsc"] = false,
	["CustomScaleValue"] = 100,
	["StrongVsLevel"] = true,
	["QueueActiveSort"] = true,
	["MaximizedLayout"] = "2-teams",
	["ExportIncludePreferences"] = false,
	["LargerBreedText"] = false,
	["DisplayUniqueTotal"] = false,
	["SafariHatShine"] = true,
	["PetCardCanPin"] = false,
	["HideTargetBadges"] = false,
	["ShowNotesOnLoad"] = false,
	["HideTeamBadges"] = false,
	["InteractOnMouseover"] = 3,
	["LastOpenJournal"] = true,
	["QueueSortRaresFirst"] = false,
	["PetCardFlipKey"] = "Alt",
	["RandomPetRules"] = 2,
	["PetCardAlwaysShowHPBar"] = false,
	["ScriptFilters"] = {
		{
			"Unnamed Pets", -- [1]
			"-- Collected pets that still have their original name.\n\nreturn owned and not customName", -- [2]
		}, -- [1]
		{
			"Partially Leveled", -- [1]
			"-- Pets that have earned some xp in battle.\n\nreturn xp and xp>0", -- [2]
		}, -- [2]
		{
			"Unique Abilities", -- [1]
			"-- Pets with abilities not shared by other pets.\n\nif not count then\n  -- create count of each ability per species\n  count = {}\n  for speciesID in AllSpeciesIDs() do\n    for abilityID in AllAbilities(speciesID) do\n      if not count[abilityID] then\n        count[abilityID] = 0\n      end\n      count[abilityID] = count[abilityID] + 1\n    end\n  end\nend\n\nfor _,abilityID in ipairs(abilityList) do\n  if count[abilityID]==1 then\n    return true\n  end\nend", -- [2]
		}, -- [3]
		{
			"Pets Without Rares", -- [1]
			"-- Collected battle pets that have no rare version.\n\nif not rares then\n  rares = {}\n  for petID in AllPetIDs() do\n    if select(5,C_PetJournal.GetPetStats(petID))==4 then\n      rares[C_PetJournal.GetPetInfoByPetID(petID)]=true\n    end\n  end\nend\n\nif canBattle and owned and not rares[speciesID] then\n  return true\nend", -- [2]
		}, -- [4]
		{
			"Hybrid Counters", -- [1]
			"-- Pets with three or more attack types different than their pet type.\n\nlocal count = 0\nfor _,abilityID in ipairs(abilityList) do\n  local abilityType,noHints = select(7, C_PetBattles.GetAbilityInfoByID(abilityID) )\n  if not noHints and abilityType~=petType then\n    count = count + 1\n  end\nend\n\nreturn count>=3\n", -- [2]
		}, -- [5]
		{
			"Upgrade Needed", -- [1]
			"-- Lvl 25 pets that need an upgrade to rare.\nlocal rarity\nif petID then\n rarity = select(5,C_PetJournal.GetPetStats(petID))\nend\nreturn level == 25 and (rarity or 0) ~= 4", -- [2]
		}, -- [6]
		{
			"Freshly Caught (1 squirt battle)", -- [1]
			"return owned and level == 23 or level == 24", -- [2]
		}, -- [7]
		{
			"Double Treats", -- [1]
			"return owned and level < 11", -- [2]
		}, -- [8]
	},
	["SpecialSlots"] = {
		[3] = 0,
	},
	["PreferPetsTab"] = false,
	["QueueRandomWhenEmpty"] = true,
	["PickAggressiveCounters"] = false,
	["InteractOnSoftInteract"] = 0,
	["CompactTargetList"] = true,
	["TypeBarTab"] = 1,
	["ResetFilters"] = false,
	["ShowNewGroupTabFix"] = true,
	["InteractAlways"] = false,
	["CompactTeamList"] = true,
	["QueueSortFavoritesFirst"] = true,
	["PetCardHidePossibleBreeds"] = false,
	["LockDrawer"] = false,
	["UseTypeBar"] = true,
	["HideMenuHelp"] = false,
	["QueueSortInTeamsFirst"] = true,
	["ShowNotesInBattle"] = false,
	["ExpandedTargets"] = {
	},
	["CustomScale"] = false,
	["ExportIncludeNotes"] = false,
	["BreedSource"] = "BattlePetBreedID",
	["LastSelectedGroup"] = "group:8",
	["HideWinRecord"] = false,
	["JournalLayout"] = "3-teams",
	["PetSatchelIndex"] = 3,
	["PetCardBackground"] = "Expansion",
	["ToolbarDismiss"] = true,
	["StandaloneLayout"] = "0-minimized",
	["HidePreferenceBadges"] = false,
	["ShowAbilityID"] = false,
	["QueueAutoImport"] = true,
	["ExportSimplePetList"] = false,
	["PetCardCompactCollected"] = false,
	["NoBackupReminder"] = false,
	["ColorTeamNames"] = true,
	["AbilityBackground"] = "Icon",
	["HiddenPets"] = {
	},
	["InteractShowAfterLoad"] = true,
	["HideBreedsLists"] = false,
	["DontConfirmDeleteNotes"] = false,
	["AutoWinRecordPVPOnly"] = false,
	["DontConfirmCaging"] = true,
	["DontConfirmHidePets"] = false,
	["AllowHiddenPets"] = true,
	["ShowAfterBattle"] = true,
	["PreferencesPaused"] = false,
	["PetCardNoMouseoverFlip"] = false,
	["BarChartCategory"] = 9,
	["NotesWidth"] = 257.9999389648438,
	["LockWindow"] = false,
	["CompactPetList"] = true,
	["WarnWhenRandomNot25"] = false,
	["Anchor"] = "TOPLEFT",
	["ShowFillQueueMore"] = true,
	["LoadHealthiest"] = false,
	["currentTeamID"] = "team:159",
	["BoringLoreFont"] = false,
	["StayForBattle"] = true,
	["LastToastedPetID"] = "BattlePet-0-000021A1E76F",
	["DontConfirmDeleteTeams"] = false,
	["KeepNotesOnScreen"] = true,
	["NeverTeamTabs"] = false,
	["AlwaysTeamTabs"] = false,
	["LoadHealthiestAfterBattle"] = false,
	["ShowNewGroupTab"] = true,
	["PetNotes"] = {
	},
	["DontConfirmRemoveQueue"] = true,
	["InteractPreferUninjured"] = false,
	["ShowAfterPVEOnly"] = false,
	["DefaultPreferences"] = {
	},
	["CombineGroupKey"] = "None",
	["TooltipBehavior"] = "Normal",
	["NotesFont"] = "GameFontHighlight",
	["KeepCompanion"] = false,
	["ShowNotesOnce"] = false,
	["HideBreedsLoadouts"] = false,
	["BreedFormat"] = 1,
	["ColorTargetNames"] = true,
	["EnableDrag"] = true,
	["NotesHeight"] = 258,
	["HidePetToast"] = true,
	["StickyNewPets"] = false,
	["LastOpenLayout"] = "3-teams",
	["QueueDoubleClick"] = true,
	["BackupCount"] = 275,
	["HideToolbarTooltips"] = false,
	["UseDefaultJournal"] = false,
	["FavoriteFilters"] = {
		{
			"non-rare at 25", -- [1]
			{
				["Other"] = {
				},
				["Expansion"] = {
				},
				["Rarity"] = {
					true, -- [1]
					true, -- [2]
					true, -- [3]
				},
				["Moveset"] = {
				},
				["Favorite"] = {
				},
				["Collected"] = {
				},
				["Strong"] = {
				},
				["Sources"] = {
				},
				["Breed"] = {
				},
				["Script"] = {
				},
				["Similar"] = {
				},
				["Level"] = {
					[4] = true,
				},
				["Tough"] = {
				},
				["Types"] = {
				},
			}, -- [2]
		}, -- [1]
		{
			"Safari pets", -- [1]
			{
				["Other"] = {
					["CurrentZone"] = true,
				},
				["Expansion"] = {
				},
				["Strong"] = {
				},
				["Moveset"] = {
				},
				["Favorite"] = {
				},
				["Collected"] = {
					["Owned"] = true,
				},
				["Rarity"] = {
				},
				["Sources"] = {
					[5] = true,
				},
				["Breed"] = {
				},
				["Script"] = {
				},
				["Similar"] = {
				},
				["Level"] = {
				},
				["Tough"] = {
				},
				["Types"] = {
				},
			}, -- [2]
		}, -- [2]
	},
	["LowerStrata"] = true,
	["DontConfirmActiveSort"] = false,
	["MousewheelSpeed"] = "Normal",
	["ResetExceptSearch"] = false,
	["GroupOrder"] = {
		"group:favorites", -- [1]
		"group:none", -- [2]
		"group:1", -- [3]
		"group:2", -- [4]
		"group:3", -- [5]
		"group:4", -- [6]
		"group:5", -- [7]
		"group:6", -- [8]
		"group:7", -- [9]
		"group:8", -- [10]
	},
	["NotesNoEsc"] = true,
	["PetCardInBattle"] = false,
	["NotesLeft"] = 19.5714282989502,
	["NoSummonOnDblClick"] = false,
	["ConvertedTeams"] = {
		"team:1", -- [1]
		[68566] = "team:2",
		[142114] = "team:3",
		[106476] = "team:4",
		["Growing Ectoplasm 2"] = "team:266",
		[87122] = "team:5",
		[116792] = "team:6",
		[200688] = "team:7",
		[85685] = "team:8",
		[175777] = "team:9",
		[99035] = "team:10",
		[200689] = "team:11",
		[175778] = "team:12",
		[105455] = "team:13",
		[87123] = "team:14",
		[116793] = "team:15",
		[200690] = "team:16",
		[175779] = "team:17",
		[141479] = "team:18",
		[175780] = "team:19",
		[98270] = "team:20",
		[105009] = "team:21",
		[116794] = "team:22",
		[200692] = "team:23",
		[175781] = "team:24",
		[105840] = "team:25",
		[175782] = "team:26",
		[87125] = "team:27",
		[85624] = "team:28",
		[200694] = "team:29",
		[175783] = "team:30",
		[105841] = "team:31",
		[140461] = "team:32",
		[175784] = "team:33",
		[141292] = "team:34",
		[85625] = "team:35",
		[200696] = "team:36",
		[175785] = "team:215",
		[83837] = "team:38",
		[105842] = "team:39",
		[99742] = "team:40",
		[106417] = "team:41",
		[128007] = "team:42",
		[85626] = "team:43",
		["My Beast's Bidding"] = "team:267",
		[105779] = "team:44",
		[94601] = "team:45",
		[201849] = "team:46",
		["Capture Team"] = "team:268",
		[128008] = "team:47",
		[85627] = "team:48",
		[85659] = "team:49",
		[71926] = "team:50",
		[79751] = "team:51",
		[128009] = "team:52",
		[71927] = "team:53",
		[128010] = "team:54",
		[85629] = "team:55",
		[204792] = "team:56",
		["Spores, Dusty, and Salad"] = "team:269",
		[117950] = "team:57",
		[197447] = "team:58",
		[141046] = "team:59",
		[173303] = "team:60",
		[128011] = "team:61",
		[85630] = "team:62",
		[71929] = "team:63",
		[117951] = "team:64",
		[79179] = "team:65",
		[141814] = "team:66",
		["Nicodemus, Brisby, and Jenner"] = "team:270",
		[94637] = "team:67",
		[128012] = "team:68",
		[141879] = "team:69",
		[201858] = "team:186",
		[154910] = "team:71",
		[99077] = "team:72",
		[105241] = "team:73",
		[94638] = "team:74",
		[154911] = "team:75",
		[128013] = "team:76",
		[85632] = "team:77",
		[141945] = "team:78",
		[71931] = "team:79",
		[154912] = "team:80",
		[173372] = "team:81",
		[94639] = "team:82",
		[154913] = "team:83",
		[106552] = "team:84",
		[71932] = "team:85",
		[154914] = "team:86",
		[66918] = "team:87",
		[94640] = "team:88",
		[154915] = "team:89",
		[128015] = "team:90",
		[85634] = "team:91",
		[71933] = "team:92",
		[154916] = "team:93",
		[173376] = "team:94",
		[73626] = "team:95",
		[94641] = "team:96",
		[154917] = "team:97",
		[173377] = "team:98",
		[72285] = "team:99",
		[128016] = "team:100",
		[201802] = "team:101",
		[71934] = "team:102",
		[154918] = "team:103",
		[94642] = "team:104",
		[173315] = "team:105",
		[97804] = "team:106",
		[99880] = "team:107",
		[128017] = "team:108",
		[204934] = "team:109",
		[154920] = "team:110",
		[99210] = "team:111",
		[162458] = "team:112",
		[154921] = "team:113",
		[173381] = "team:114",
		[128018] = "team:115",
		[66730] = "team:116",
		["Moon, Mouthy, and Carl"] = "team:271",
		[154922] = "team:117",
		[98572] = "team:118",
		[94644] = "team:119",
		[154923] = "team:120",
		[104992] = "team:121",
		[128019] = "team:122",
		[162461] = "team:123",
		[154924] = "team:124",
		[173129] = "team:125",
		[94645] = "team:126",
		[173257] = "team:127",
		[154925] = "team:128",
		[128020] = "team:129",
		[173130] = "team:130",
		[142151] = "team:131",
		[173131] = "team:132",
		[141002] = "team:133",
		[154927] = "team:134",
		[72290] = "team:135",
		[128021] = "team:136",
		[66733] = "team:137",
		[162465] = "team:138",
		[173324] = "team:139",
		[105250] = "team:140",
		[99150] = "team:141",
		[99182] = "team:142",
		[173133] = "team:143",
		[162466] = "team:144",
		[154929] = "team:145",
		[87110] = "team:146",
		[128022] = "team:147",
		[66734] = "team:148",
		[201878] = "team:149",
		[68555] = "team:150",
		[94648] = "team:151",
		[173263] = "team:152",
		[128023] = "team:153",
		[162469] = "team:154",
		[140880] = "team:155",
		[85419] = "team:156",
		[94649] = "team:157",
		[128024] = "team:158",
		[196069] = "team:159",
		[105093] = "team:160",
		[162471] = "team:161",
		[85420] = "team:162",
		[94650] = "team:163",
		[142096] = "team:164",
		[202458] = "team:165",
		[141969] = "team:166",
		[68462] = "team:167",
		[68558] = "team:168",
		[196264] = "team:169",
		[85517] = "team:170",
		[66738] = "team:171",
		[117934] = "team:172",
		[68463] = "team:173",
		[68559] = "team:174",
		[66739] = "team:175",
		[197417] = "team:176",
		[68464] = "team:177",
		[68560] = "team:178",
		["Enbi'see, Mal, and Bones"] = "team:275",
		["Sprouts, Prince Charming, and Runts"] = "team:273",
		[105512] = "team:181",
		[116786] = "team:182",
		["Humanoid Brawl"] = "team:272",
		[87124] = "team:265",
		[94646] = "team:264",
		[173274] = "team:185",
		[202452] = "team:263",
		[197350] = "team:262",
		[68465] = "team:188",
		[140315] = "team:189",
		[200677] = "team:190",
		[68561] = "team:191",
		[141529] = "team:192",
		[107489] = "team:203",
		[119346] = "team:258",
		[104970] = "team:195",
		[105352] = "team:193",
		[116787] = "team:197",
		[200678] = "team:198",
		[94643] = "team:260",
		[66741] = "team:257",
		[71924] = "team:37",
		[94647] = "team:256",
		[173267] = "team:217",
		[97709] = "team:255",
		[173331] = "team:183",
		[197102] = "team:205",
		[68562] = "team:206",
		[105386] = "team:207",
		[154928] = "team:201",
		[200679] = "team:253",
		[142234] = "team:210",
		[175786] = "team:224",
		[119343] = "team:212",
		[200680] = "team:213",
		[119407] = "team:214",
		[106542] = "team:211",
		[105674] = "team:216",
		[71930] = "team:70",
		[72291] = "team:220",
		[72009] = "team:249",
		[116790] = "team:225",
		[105323] = "team:221",
		[68563] = "team:222",
		[105898] = "team:223",
		[141077] = "team:246",
		[119344] = "team:233",
		["Low lvl fights"] = "team:274",
		[85650] = "team:228",
		[116789] = "team:230",
		[200682] = "team:234",
		[119408] = "team:229",
		[197336] = "team:180",
		[202440] = "team:245",
		[154926] = "team:241",
		[141215] = "team:232",
		[116795] = "team:231",
		[162468] = "team:219",
		[141588] = "team:240",
		[68564] = "team:236",
		[105387] = "team:239",
		[139489] = "team:238",
		[189376] = "team:227",
		[140813] = "team:237",
		[116788] = "team:235",
		[119345] = "team:242",
		[200684] = "team:243",
		[119409] = "team:244",
		[204926] = "team:209",
		[85622] = "team:226",
		[162470] = "team:247",
		[201004] = "team:248",
		[104553] = "team:218",
		[104782] = "team:250",
		[200685] = "team:251",
		[68565] = "team:252",
		[154919] = "team:202",
		[201899] = "team:254",
		[141799] = "team:208",
		[128014] = "team:204",
		[119342] = "team:196",
		[116791] = "team:194",
		[200686] = "team:259",
		[119341] = "team:261",
		[85463] = "team:199",
		[200697] = "team:187",
		[200693] = "team:184",
		[139987] = "team:179",
		[142054] = "team:200",
	},
	["YPos"] = 910.477294921875,
	["HideNotesButtonInBattle"] = false,
	["MinimapButtonPosition"] = -162,
	["HideOptionTooltips"] = false,
	["HideLevelingBadges"] = false,
	["LevelingQueue"] = {
		{
			["petID"] = "BattlePet-0-000021A1E76F",
			["petTag"] = "Q14A211",
			["added"] = 20231130040746,
			["preferred"] = true,
		}, -- [1]
		{
			["petID"] = "BattlePet-0-000021D23A26",
			["petTag"] = "Q1433GG",
			["added"] = 20231217183708,
			["preferred"] = false,
		}, -- [2]
		{
			["petID"] = "BattlePet-0-000021D0270B",
			["petTag"] = "Q1433DR",
			["added"] = 20231213165106,
			["preferred"] = false,
		}, -- [3]
		{
			["petID"] = "BattlePet-0-000021D805E3",
			["petTag"] = "Q1433GI",
			["added"] = 20231226183806,
			["preferred"] = false,
		}, -- [4]
		{
			["preferred"] = false,
			["petTag"] = "Q1442CM",
			["added"] = 20231130040631,
			["petID"] = "BattlePet-0-0000210B58A0",
		}, -- [5]
		{
			["petID"] = "BattlePet-0-00000E0BBEF5",
			["petTag"] = "Q1491IR",
			["added"] = 20231130040552,
			["preferred"] = false,
		}, -- [6]
		{
			["petID"] = "BattlePet-0-00000E0BBD4A",
			["petTag"] = "Q144141",
			["added"] = 20231130040542,
			["preferred"] = false,
		}, -- [7]
		{
			["preferred"] = false,
			["petTag"] = "Q1392R4",
			["added"] = 20231130040612,
			["petID"] = "BattlePet-0-0000210533A4",
		}, -- [8]
		{
			["petTag"] = "Q14338E",
			["preferred"] = false,
			["added"] = 20231202001105,
			["petID"] = "BattlePet-0-000021C91C6F",
		}, -- [9]
		{
			["petTag"] = "Q1433E3",
			["preferred"] = false,
			["added"] = 20231202004735,
			["petID"] = "BattlePet-0-000021C92098",
		}, -- [10]
		{
			["petTag"] = "Q1433DS",
			["preferred"] = false,
			["added"] = 20231202004751,
			["petID"] = "BattlePet-0-000021C9209B",
		}, -- [11]
		{
			["petTag"] = "Q13639K",
			["petID"] = "BattlePet-0-000021C92DBD",
			["added"] = 20231202041427,
			["preferred"] = false,
		}, -- [12]
		{
			["petTag"] = "Q14535N",
			["petID"] = "BattlePet-0-000021C9E793",
			["added"] = 20231203013747,
			["preferred"] = false,
		}, -- [13]
		{
			["petTag"] = "Q14446N",
			["petID"] = "BattlePet-0-000021C9E7A3",
			["added"] = 20231203013819,
			["preferred"] = false,
		}, -- [14]
		{
			["petTag"] = "Q14546H",
			["preferred"] = false,
			["added"] = 20231203164757,
			["petID"] = "BattlePet-0-000021CA50EA",
		}, -- [15]
		{
			["petTag"] = "Q144468",
			["preferred"] = false,
			["added"] = 20231205130403,
			["petID"] = "BattlePet-0-000021CB6B88",
		}, -- [16]
		{
			["petTag"] = "Q144462",
			["preferred"] = false,
			["added"] = 20231205204117,
			["petID"] = "BattlePet-0-000021CBCDA8",
		}, -- [17]
		{
			["petTag"] = "Q143467",
			["preferred"] = false,
			["added"] = 20231205204905,
			["petID"] = "BattlePet-0-000021CBCF9F",
		}, -- [18]
		{
			["petTag"] = "Q14B23E",
			["preferred"] = false,
			["added"] = 20231207165338,
			["petID"] = "BattlePet-0-000021CCDFD9",
		}, -- [19]
		{
			["petTag"] = "Q14446C",
			["preferred"] = false,
			["added"] = 20231209174459,
			["petID"] = "BattlePet-0-000021CDF5C8",
		}, -- [20]
		{
			["petTag"] = "Q1463AN",
			["preferred"] = false,
			["added"] = 20231216132858,
			["petID"] = "BattlePet-0-000021D17397",
		}, -- [21]
		{
			["petTag"] = "Q14CAH",
			["petID"] = "BattlePet-0-000021D1B244",
			["added"] = 20231216205103,
			["preferred"] = false,
		}, -- [22]
		{
			["petTag"] = "Q14937D",
			["petID"] = "BattlePet-0-000021D2703B",
			["added"] = 20231218024655,
			["preferred"] = false,
		}, -- [23]
		{
			["petTag"] = "Q14538J",
			["petID"] = "BattlePet-0-000021D2A98C",
			["added"] = 20231218154710,
			["preferred"] = false,
		}, -- [24]
		{
			["petTag"] = "Q1483DN",
			["preferred"] = false,
			["added"] = 20231218155617,
			["petID"] = "BattlePet-0-000021D2AA99",
		}, -- [25]
		{
			["petTag"] = "Q14C46I",
			["preferred"] = false,
			["added"] = 20231219190048,
			["petID"] = "BattlePet-0-000021D3617E",
		}, -- [26]
		{
			["petTag"] = "Q1431T0",
			["petID"] = "BattlePet-0-000021D37FDD",
			["added"] = 20231219213335,
			["preferred"] = false,
		}, -- [27]
		{
			["petTag"] = "Q1471T6",
			["petID"] = "BattlePet-0-000021D37FE0",
			["added"] = 20231219213338,
			["preferred"] = false,
		}, -- [28]
		{
			["petTag"] = "Q14C365",
			["preferred"] = false,
			["added"] = 20231220223103,
			["petID"] = "BattlePet-0-000021D4259C",
		}, -- [29]
		{
			["petTag"] = "Q14816H",
			["preferred"] = false,
			["added"] = 20231221152940,
			["petID"] = "BattlePet-0-000021D4734E",
		}, -- [30]
		{
			["petTag"] = "Q1433CK",
			["preferred"] = false,
			["added"] = 20231221171027,
			["petID"] = "BattlePet-0-000021D48012",
		}, -- [31]
		{
			["petTag"] = "Q14436Q",
			["preferred"] = false,
			["added"] = 20231228170711,
			["petID"] = "BattlePet-0-000021D9547D",
		}, -- [32]
		{
			["petTag"] = "Q148384",
			["preferred"] = false,
			["added"] = 20231228171522,
			["petID"] = "BattlePet-0-000021D955B2",
		}, -- [33]
		{
			["petTag"] = "Q13337U",
			["preferred"] = false,
			["added"] = 20231230234254,
			["petID"] = "BattlePet-0-000021DAC77E",
		}, -- [34]
		{
			["petTag"] = "Q14538H",
			["preferred"] = false,
			["added"] = 20231231031147,
			["petID"] = "BattlePet-0-000021DAD846",
		}, -- [35]
		{
			["petTag"] = "Q14535O",
			["petID"] = "BattlePet-0-000021DAD847",
			["added"] = 20231231031148,
			["preferred"] = false,
		}, -- [36]
		{
			["petTag"] = "Q14538I",
			["petID"] = "BattlePet-0-000021DAD848",
			["added"] = 20231231031148,
			["preferred"] = false,
		}, -- [37]
		{
			["petTag"] = "Q14538G",
			["petID"] = "BattlePet-0-000021DAD849",
			["added"] = 20231231031149,
			["preferred"] = false,
		}, -- [38]
		{
			["petTag"] = "Q149371",
			["petID"] = "BattlePet-0-000021DBA714",
			["added"] = 20240101125244,
			["preferred"] = false,
		}, -- [39]
		{
			["petTag"] = "Q1392R4",
			["petID"] = "BattlePet-0-0000210D9DCD",
			["added"] = 20240101193335,
			["preferred"] = false,
		}, -- [40]
		{
			["petTag"] = "Q1431B9",
			["preferred"] = false,
			["added"] = 20240101201612,
			["petID"] = "BattlePet-0-00000E0BBEB7",
		}, -- [41]
		{
			["petTag"] = "Q14323D",
			["preferred"] = false,
			["added"] = 20240101220738,
			["petID"] = "BattlePet-0-000010125055",
		}, -- [42]
		{
			["petID"] = "BattlePet-0-000021DC0F3F",
			["preferred"] = false,
			["added"] = 20240101221841,
			["petTag"] = "Q1433AE",
		}, -- [43]
		{
			["preferred"] = false,
			["petID"] = "BattlePet-0-000021DE9A4C",
			["added"] = 20240107004325,
			["petTag"] = "Q14737R",
		}, -- [44]
		{
			["preferred"] = false,
			["petID"] = "BattlePet-0-000021DECE79",
			["added"] = 20240107134117,
			["petTag"] = "Q1463BP",
		}, -- [45]
		{
			["preferred"] = false,
			["petID"] = "BattlePet-0-000021E0A2BE",
			["added"] = 20240111125639,
			["petTag"] = "Q143395",
		}, -- [46]
		{
			["preferred"] = false,
			["petID"] = "BattlePet-0-000021E0A336",
			["added"] = 20240111130119,
			["petTag"] = "Q14337A",
		}, -- [47]
		{
			["preferred"] = false,
			["petID"] = "BattlePet-0-000021E0A40B",
			["added"] = 20240111131250,
			["petTag"] = "Q143452",
		}, -- [48]
		{
			["petID"] = "BattlePet-0-000021E0A8F3",
			["preferred"] = false,
			["added"] = 20240111140032,
			["petTag"] = "Q14C39J",
		}, -- [49]
		{
			["petID"] = "BattlePet-0-000021E11228",
			["preferred"] = false,
			["added"] = 20240112123734,
			["petTag"] = "Q1433EF",
		}, -- [50]
		{
			["preferred"] = false,
			["petID"] = "BattlePet-0-000021E1288F",
			["added"] = 20240112162652,
			["petTag"] = "Q1443GC",
		}, -- [51]
		{
			["petID"] = "BattlePet-0-000021E19F89",
			["preferred"] = false,
			["added"] = 20240113142030,
			["petTag"] = "Q14C3B3",
		}, -- [52]
		{
			["petID"] = "BattlePet-0-000021E1B6A7",
			["petTag"] = "Q1481MP",
			["added"] = 20240113170952,
			["preferred"] = false,
		}, -- [53]
		{
			["petID"] = "BattlePet-0-000021E27962",
			["petTag"] = "Q14645V",
			["added"] = 20240114235438,
			["preferred"] = false,
		}, -- [54]
		{
			["petID"] = "BattlePet-0-000021E41D28",
			["petTag"] = "Q14B39L",
			["added"] = 20240118182609,
			["preferred"] = false,
		}, -- [55]
		{
			["petID"] = "BattlePet-0-000021E89AAE",
			["petTag"] = "Q14445T",
			["added"] = 20240130000756,
			["preferred"] = false,
		}, -- [56]
		{
			["petID"] = "BattlePet-0-000021E89AAF",
			["petTag"] = "Q144463",
			["added"] = 20240130000800,
			["preferred"] = false,
		}, -- [57]
		{
			["petID"] = "BattlePet-0-000021E920FB",
			["petTag"] = "Q1443FQ",
			["added"] = 20240130184751,
			["preferred"] = false,
		}, -- [58]
		{
			["preferred"] = false,
			["petTag"] = "Q13A1DV",
			["added"] = 20240131182009,
			["petID"] = "BattlePet-0-000021E9CCDE",
		}, -- [59]
		{
			["petID"] = "BattlePet-0-000021EA4659",
			["petTag"] = "Q14620U",
			["added"] = 20240201154923,
			["preferred"] = false,
		}, -- [60]
		{
			["petID"] = "BattlePet-0-000021EA7A75",
			["petTag"] = "Q14049O",
			["added"] = 20240201205933,
			["preferred"] = false,
		}, -- [61]
		{
			["petID"] = "BattlePet-0-000021EA7A80",
			["petTag"] = "Q14049N",
			["added"] = 20240201205941,
			["preferred"] = false,
		}, -- [62]
		{
			["preferred"] = false,
			["petTag"] = "Q14B219",
			["added"] = 20240201213225,
			["petID"] = "BattlePet-0-000021EA7FD7",
		}, -- [63]
		{
			["preferred"] = false,
			["petTag"] = "Q1463BM",
			["added"] = 20240202003811,
			["petID"] = "BattlePet-0-000021EA950D",
		}, -- [64]
		{
			["petID"] = "BattlePet-0-000021EEF0FE",
			["petTag"] = "Q1433EK",
			["added"] = 20240210224105,
			["preferred"] = false,
		}, -- [65]
		{
			["petID"] = "BattlePet-0-000021EFDEF4",
			["preferred"] = false,
			["added"] = 20240212235851,
			["petTag"] = "Q133AL",
		}, -- [66]
		{
			["preferred"] = false,
			["petID"] = "BattlePet-0-000021EFE315",
			["added"] = 20240213010556,
			["petTag"] = "Q14C2B2",
		}, -- [67]
		{
			["petID"] = "BattlePet-0-000021EFE5A8",
			["preferred"] = false,
			["added"] = 20240213014755,
			["petTag"] = "Q133AM",
		}, -- [68]
		{
			["petID"] = "BattlePet-0-000021F03AB8",
			["preferred"] = false,
			["added"] = 20240213214750,
			["petTag"] = "Q14049R",
		}, -- [69]
		{
			["preferred"] = false,
			["petID"] = "BattlePet-0-000021F082CB",
			["added"] = 20240214174540,
			["petTag"] = "Q1352BF",
		}, -- [70]
		{
			["petID"] = "BattlePet-0-000021F10411",
			["preferred"] = false,
			["added"] = 20240216021846,
			["petTag"] = "Q13A2C7",
		}, -- [71]
		{
			["preferred"] = false,
			["petID"] = "BattlePet-0-000021F7FEB6",
			["added"] = 20240305154208,
			["petTag"] = "Q14049S",
		}, -- [72]
		{
			["petID"] = "BattlePet-0-000021F97255",
			["preferred"] = false,
			["added"] = 20240309184430,
			["petTag"] = "Q14345A",
		}, -- [73]
		{
			["preferred"] = false,
			["petID"] = "BattlePet-0-000021FE04DC",
			["added"] = 20240321195641,
			["petTag"] = "Q14049I",
		}, -- [74]
		{
			["petID"] = "BattlePet-0-0000220D8DF9",
			["preferred"] = false,
			["added"] = 20240424182113,
			["petTag"] = "Q14B45U",
		}, -- [75]
		{
			["petID"] = "BattlePet-0-00002211D01A",
			["preferred"] = false,
			["added"] = 20240501220636,
			["petTag"] = "Q1404AK",
		}, -- [76]
	},
	["DontMinTabToggle"] = false,
	["QueueSortOrder"] = 2,
	["CardBehavior"] = "Normal",
	["PetCardShowExpansionStat"] = false,
	["InteractOnTarget"] = 0,
	["HideNonBattlePets"] = false,
	["PrioritizeBreedOnImport"] = true,
	["ShowAbilityNumbers"] = true,
	["ImportConflictOverwrite"] = false,
	["ExpandedGroups"] = {
		["group:8"] = true,
	},
	["DontWarnMissing"] = false,
	["HideMarkerBadges"] = false,
	["NotesNoEscFix"] = true,
	["HideTooltips"] = false,
	["CompactQueueList"] = true,
	["Filters"] = {
		["Other"] = {
		},
		["Stats"] = {
		},
		["Strong"] = {
		},
		["Marker"] = {
		},
		["Sources"] = {
		},
		["Sort"] = {
			7, -- [1]
		},
		["Level"] = {
		},
		["Tough"] = {
		},
		["Types"] = {
		},
		["Expansion"] = {
		},
		["Rarity"] = {
		},
		["RawSearchText"] = "fathom",
		["Similar"] = {
		},
		["Search"] = {
		},
		["Breed"] = {
		},
		["Script"] = {
		},
		["Collected"] = {
		},
		["Favorite"] = {
		},
		["Moveset"] = {
		},
	},
	["SortByNickname"] = false,
	["LoadHealthiestAny"] = false,
	["NotesBottom"] = 458.4285888671875,
	["WasShownOnLogout"] = false,
	["ClickToDrag"] = false,
	["RandomAbilitiesToo"] = false,
	["QueueSkipDead"] = true,
	["LockNotesPosition"] = true,
	["PetMarkers"] = {
	},
	["HideNotesBadges"] = false,
	["AlwaysUsePetSatchel"] = false,
	["QueueAutoLearnRare"] = false,
	["ShowLoadedTeamPreferences"] = true,
	["DontConfirmFillQueue"] = false,
	["ReverseToolbar"] = false,
	["ExpandedOptionsHeaders"] = {
	},
}
Rematch5SavedTeams = {
	["team:46"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD3A", -- [1]
			"BattlePet-0-00000E0BBCC3", -- [2]
			0, -- [3]
		},
		["notes"] = "Strategy added by freelancer04#1688\nMight work with other Bonkers breeds\n\nTurn 1: Tornado Punch\nTurn 2: Jab\nTurn 3: Jab\nTurn 4: Jab\nTurn 5: Jab\nTurn 6: Pass - Bonkers dies\nTurn 7: Explode\nTurn 8: \n",
		["name"] = "Adinakon",
		["tags"] = {
			"102519V", -- [1]
			"0015QC", -- [2]
			"ZL", -- [3]
		},
		["teamID"] = "team:46",
		["targets"] = {
			201849, -- [1]
		},
		["groupID"] = "group:7",
	},
	["team:203"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBCC4", -- [1]
			0, -- [2]
			"BattlePet-0-00000E0BBD09", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/2592\n\nStrategy added by Shoff#1714\nI designed this strategy specifically to allow level 1 and low HP carry pets to survive this encounter. Foof will not get his AOE off during this fight, so you are able to carry any level/hp pet that you want. \n\nDragonsAfterDark: I went through the fight, and these were the steps the tdScript gave me.\n\nTurn 1: Burn\nTurn 2: Crystal Prison\nTurn 3: Swap to your Darkmoon Tonk\nTurn 4: Minefield\nTurn 5+: Missile until Stumpers dies\nFoof comes in\nTurn 1: Ion Cannon\nLil' Sizzle comes in\nTurn 1: Recover from Ion Cannon\nTurn 2: Recover from Ion Cannon\nTurn 3+: Missile until Darkmoon Tonk dies\nBring in your Ashstone Core\nTurn 1: Stoneskin\nLil' Sizzle swaps in your level pet\nTurn 1: Swap to your Ashstone Core\nTurn 2: Burn\nTurn 3: Crystal Prison\nTurn 4: Burn\nTurn 5: Stoneskin\nLil' Sizzle swaps in your level pet\nTurn 1: Swap to your Ashstone Core\nTurn 2+3: Stoneskin\nTurn 4: Crystal Prison\nTurn 5+6: Burn\nLil' Sizzle swaps in your level pet\nTurn 1: Swap to your Ashstone Core\nTurn 2: Stoneskin\nTurn 3: Burn\nLil' Sizzle swaps in your level pet\nTurn 1: Swap to your Ashstone Core\nTurn 2+3: Stoneskin\nTurn 4: Crystal Prison\nTurn 5+6: Burn\n",
		["name"] = "Fight Night: Amalia",
		["tags"] = {
			"221913U", -- [1]
			"ZL", -- [2]
			"1227AI", -- [3]
		},
		["teamID"] = "team:203",
		["targets"] = {
			107489, -- [1]
		},
		["groupID"] = "group:4",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:129"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD0C", -- [1]
			"BattlePet-0-00000E0BBCA2", -- [2]
			0, -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/1388\n\nStrategy added by Lazey\n*** 9.0.2 approved ***\n\nTurn 1: Curse of Doom\nTurn 2: Unholy Ascension\nBring in your Infected Squirrel\nTurn 3: Creeping Fungus\nTurns 4-6: Stampede\nTurn 7: Corpse Explosion\n",
		["name"] = "Bloat",
		["tags"] = {
			"022316M", -- [1]
			"2227JJ", -- [2]
			"ZL", -- [3]
		},
		["teamID"] = "team:129",
		["targets"] = {
			128020, -- [1]
		},
		["groupID"] = "group:4",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:229"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD0C", -- [1]
			"BattlePet-0-00000E0BBDCE", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/1233\n\nTurn 1: Pass\nTurn 2: Pass\nTurn 3: Haunt\nTurn 4: Bring in Ikky\nTurn 5: Black Claw\nTurns 6+: Flock\n",
		["name"] = "\"Captain\" Klutz",
		["tags"] = {
			"221316M", -- [1]
			"11181FS", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:229",
		["targets"] = {
			119408, -- [1]
		},
		["groupID"] = "group:1",
	},
	["team:64"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBCC3", -- [1]
			"BattlePet-0-00000E0BBD1B", -- [2]
			0, -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/997\n\nStrategy added by Aranesh\nTurn 1: Decoy\nTurns 2+: Breath until Fido dies\nSeer's Eye comes in\nTurn 1: Thunderbolt\nTurn 2+: Use Decoy and Thunderbolt whenever available, otherwise Breath until your Mechanical Pandaren Dragonling dies\nThis will take care of Seer's Eye as well\nBring in your Darkmoon Zeppelin\nTurn 1: Missile until Flickering Fel drops below 618 health\nThen:: Explode, your Level Pet will get the full experience\n",
		["name"] = "Illidari Masters: Nameless Mystic",
		["tags"] = {
			"1225QC", -- [1]
			"122CAJ", -- [2]
			"ZL", -- [3]
		},
		["teamID"] = "team:64",
		["targets"] = {
			117951, -- [1]
		},
		["groupID"] = "group:4",
	},
	["team:268"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBCD5", -- [1]
			"BattlePet-0-00000E0BBDC4", -- [2]
			0, -- [3]
		},
		["name"] = "Capture Team",
		["tags"] = {
			"1218KA", -- [1]
			"222A14F", -- [2]
			"ZL", -- [3]
		},
		["teamID"] = "team:268",
		["groupID"] = "group:none",
	},
	["team:211"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBE4E", -- [1]
			"BattlePet-0-00000E0BBD1B", -- [2]
			0, -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/8585\n\nStrategy added by Jessail\nThere is an inherent randomness to this fight, but i've minimized it as much as possible. I tried all of the strats on offer here, but none of them worked well for me, so i made my own. I used the basis of one of the other strats, and tried to improve on it. The TD script is set to auto forfeit the match if you dont kill the Owl in 3 turns. It usually does, but not always, and i noticed that when it didn't, the failure rate on the match was 90+ percent. With this method, i've donr around 20 matches, only 2 failed to kill the Owl and auto forfeited, all the others won (though that is a small sample size and i might just have gotten lucky).\n\nAlso, Arcane Storm that the Owl uses is strong against Flying pets, so you'll probably need a level 5 or so leveling pet to survive it.\n\nTurn 1: Clean-Up\nTurn 2: Soulrush\nTurn 3: Magic Sword (this should kill the Owl, if not restart (script autoexits if the Owl is still alive)\nTurn 4: Magic Sword against Rat until Servant of Demidos dies\nBring in Darkmoon Zeppelin\nTurn 5: Decoy\nTurn 6: Missile until Rat has below threshold health for Nuke\nTurn 7: Explode\n",
		["name"] = "Help a Whelp",
		["tags"] = {
			"11241I1", -- [1]
			"122CAJ", -- [2]
			"ZL", -- [3]
		},
		["teamID"] = "team:211",
		["targets"] = {
			106542, -- [1]
		},
		["groupID"] = "group:4",
		["preferences"] = {
			["minXP"] = 5,
		},
	},
	["team:168"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBCA9", -- [1]
			"BattlePet-0-00000E0BBCE7", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/289\n\nTurn 1: Launch Rocket\nTurn 2: Launch Rocket\nTurn 3: Launch Rocket\nTurn 4: Launch Rocket\nTurn 5: Metal Fist until Clockwork Gnome dies\nBring in Chrominius\nTurn 1: Howl\nTurn 2: Surge of Power\n",
		["name"] = "Gorespine",
		["tags"] = {
			"102B8L", -- [1]
			"0126140", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:168",
		["targets"] = {
			68558, -- [1]
		},
		["groupID"] = "group:2",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:70"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBC79", -- [1]
			"BattlePet-0-00000E0BBD1B", -- [2]
			0, -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/4437\n\nStrategy added by SebastianX#2242\noriginaly posted by daaani (https://de.wowhead.com/user=daaani) on wowhead (https://de.wowhead.com/npc=71930/schattenmeisterin-kiryn#english-comments)\n\nTurn 1: Magma Trap\nTurn 2: Magma Wave\nNairn will swap to Stormoen\nTurn 2+3: 2x Magma Wave (till Lightning Storm)\nTurn 3: Sons of the Flame\nTurn 4: Magma Wave\nStormoen dies\nNairn comes in\nTurn 1: Magma Trap\nTurn 2: Magma Wave\nNairn swaps with Summer\nTurn 1+2: 2x Magma Wave\nTurn 3: Swap to your Darkmoon Zeppelin\nTurn 4: Decoy\nTurn 5: Swap to your Level Pet\nTurn 6: Swap to your Darkmoon Zeppelin\nTurn 7-9: 3x Missile\nTurn 10: Bombing Run\nSummer dies\nNairn comes in\nTurn 1+2: 2x Missile\nTurn 3: Decoy\nTurn 4: Missile till Nairn dies\nNairn dies\n",
		["name"] = "Shademaster Kiryn",
		["tags"] = {
			"212499", -- [1]
			"112CAJ", -- [2]
			"ZL", -- [3]
		},
		["teamID"] = "team:70",
		["targets"] = {
			71930, -- [1]
		},
		["groupID"] = "group:1",
		["preferences"] = {
			["minHP"] = 541,
			["minXP"] = 10,
		},
	},
	["team:90"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBED0", -- [1]
			"BattlePet-0-00000E0BBD2E", -- [2]
			"BattlePet-0-00000E0BBF0F", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/8303\n\nStrategy added by Silmeron\nCredit to Minkbone for posting this in an alternative strategy! Script from Schahmaar\n\nTurn 1: Falcosaur Swarm!\nTurn 2: Arcane Storm\nTurn 3: Mana Surge - Normally Gloamwing dies but if not...\nTurn 4: Mana Surge\n",
		["name"] = "Gloamwing",
		["tags"] = {
			"10051TM", -- [1]
			"022414D", -- [2]
			"02281LP", -- [3]
		},
		["teamID"] = "team:90",
		["targets"] = {
			128015, -- [1]
		},
		["groupID"] = "group:4",
	},
	["team:30"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBF3E", -- [1]
			"BattlePet-0-00000E0BBDCE", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/11352\n\nStrategy added by angbad#1501\nQuick and Easy\n\nTurn 1: Blistering Cold\nTurn 2: Swap to your Ikky\nTurn 3: Black Claw\nTurn 4: Flock\nBring in your Boneshard\nTurn 5: Pass\n",
		["name"] = "Digallo",
		["tags"] = {
			"01031TB", -- [1]
			"01181FS", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:30",
		["targets"] = {
			175783, -- [1]
		},
		["groupID"] = "group:6",
		["preferences"] = {
			["minXP"] = 25,
		},
	},
	["team:244"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD13", -- [1]
			"random:0", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/1229\n\nTurn 1: Geyser\nTurn 2+3: Dive\nTurn 4: Water Jet\nTurn 5+: Keep Geyser and Dive on cooldown, otherwise use Water Jet\nIf your Pandaren Water Spirit dies too early, bring in your level 25 pet and use any damaging spell. The incoming Geyser will finish the fight anyway.\n",
		["name"] = "Foe Reaper 50",
		["tags"] = {
			"1229R4", -- [1]
			"ZR0", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:244",
		["targets"] = {
			119409, -- [1]
		},
		["groupID"] = "group:1",
		["preferences"] = {
			["minXP"] = 25,
		},
	},
	["team:238"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBF21", -- [1]
			"BattlePet-0-00000E0BBEF2", -- [2]
			"BattlePet-0-00000E0BBF26", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/2148\n\nStrategy added by DragonsAfterDark\nGreat flocking Falcosaurs! It's hard to go wrong with any order of attacks on this one, just try to keep the debuff from Falcosaur Swarm! up, and you should have no issues. \n\nTurn 1 + 2: Falcosaur Swarm!\nTurn 3: Predatory Strike\nTurn 4: Falcosaur Swarm! until Shelly is dead. \nSheldon comes in\nTurn 1: Falcosaur Swarm! until Direbeak Hatchling dies. \nBring in your Bloodgazer Hatchling\nTurn 1: Predatory Strike\nTurn 2: Savage Talon until Sheldon is dead. \nShelby comes in\nTurn 1: Falcosaur Swarm! until Predatory Strike is up. \nTurn 2: Predatory Strike\n",
		["name"] = "Crab People",
		["tags"] = {
			"10171TN", -- [1]
			"21181TP", -- [2]
			"10141TO", -- [3]
		},
		["teamID"] = "team:238",
		["targets"] = {
			139489, -- [1]
		},
		["groupID"] = "group:5",
	},
	["team:228"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD0E", -- [1]
			"random:0", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/67\n\nGreat recommendation by Luigi - thanks for suggesting this strategy!\n\nTurn 1: Arcane Blast\nTurn 2: Arcane Blast\nTurn 3: Life Exchange\nTurn 4+: Arcane Blast\n",
		["name"] = "Quintessence of Light",
		["tags"] = {
			"2215HD", -- [1]
			"ZR0", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:228",
		["targets"] = {
			85650, -- [1]
		},
		["groupID"] = "group:3",
	},
	["team:189"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDF1", -- [1]
			"random:0", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/3307\n\nStrategy added by DragonsAfterDark\nPriority 1: Call Blizzard on CD\nPriority 2: Deep Freeze on CD\nPriority 3: Snowball all else\nPriority 4: Standby when the \"Fixed\" Remote Control Rocket Chicken comes in\nIf needed, bring in next pet to finish the fight. \n",
		["name"] = "Automated Chaos",
		["tags"] = {
			"11233L", -- [1]
			"ZR0", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:189",
		["targets"] = {
			140315, -- [1]
		},
		["groupID"] = "group:5",
		["preferences"] = {
			["minXP"] = 25,
		},
	},
	["team:51"] = {
		["pets"] = {
			0, -- [1]
			"random:1", -- [2]
			"BattlePet-0-00000E0BBEBE", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/5762\n\nStrategy added by Threewolves\nThe difference between stupidity and genius is that genius has its limits.\n\nTurn 1: Pass\nTurn 2: Swap to Any Humanoid to be sacrificed.\nBring in your Benax\nTurn 1: Bubble\nTurn 2: Swarm of Flies\nTurns 3+: Tongue Lash til Eleanor resurrects.\nPass\n",
		["name"] = "Eleanor",
		["tags"] = {
			"ZL", -- [1]
			"ZR1", -- [2]
			"22171SE", -- [3]
		},
		["teamID"] = "team:51",
		["targets"] = {
			79751, -- [1]
		},
		["groupID"] = "group:3",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:227"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD0E", -- [1]
			"BattlePet-0-00000E0BBD1B", -- [2]
			0, -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/17193\n\nStrategy added by flyingsolow\nWorks well as long as Swog doesn't Crit on Pump. Also a little bit RNG if Slicing Wind keeps single hitting. If you don't like the RNG, swap the leveling pet for a 3rd like Ikky. Battle giving ~1k XP for me.\n\nTurn 1-2: Slicing Wind\nTurn 3: Life Exchange\nTurn 4+: Slicing Wind until Nether Faerie Dragon dies\nBring in your Darkmoon Zeppelin\nTurn 1: Decoy\nTurn 2: Flyby until Swog below 618 HP OR Darkmoon Zeppelin dies\nTurn 3: Explode\nSwog dies\n",
		["name"] = "Swog the Elder",
		["tags"] = {
			"1205HD", -- [1]
			"222CAJ", -- [2]
			"ZL", -- [3]
		},
		["teamID"] = "team:227",
		["targets"] = {
			189376, -- [1]
		},
		["groupID"] = "group:7",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:77"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDD5", -- [1]
			"random:7", -- [2]
			"random:7", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/8043\n\nStrategy added by Gráinne\nI believe this strat can fail if you land a Crit with Claw in Round 3, and Blingtron 4999b kills himself with Armageddon before you can get your heal from Ravage. That should be a 5% chance. However, you can probably finish with your other pets, and this is otherwise a very clean, simple strategy.\n\nInspired by an anonymous comment https://wow-petguide.com/?Comment=69504\n\n\n\nPriority 1: If Nature's Ward buff is not up, use Nature's Ward\nPriority 2: If enemy health is less than 464, use Ravage\nPriority 3: Claw\n",
		["name"] = "Blingtron 4999b, Protectron 022481 and Protectron 011803",
		["tags"] = {
			"12271C8", -- [1]
			"ZR7", -- [2]
			"ZR7", -- [3]
		},
		["teamID"] = "team:77",
		["targets"] = {
			85632, -- [1]
		},
		["groupID"] = "group:3",
		["preferences"] = {
			["minXP"] = 25,
		},
	},
	["team:214"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBCC3", -- [1]
			"BattlePet-0-00000E0BBDD5", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/1237\n\nStrategy added by Aranesh\nTurn 1: Decoy\nTurn 2: Thunderbolt\nTurns 3+: Now keep Thunderbolt and Decoy on cooldown and otherwise use Breath\nYour Mechanical Pandaren Dragonling will usually solo the fight.\nIf you are unlucky, bring in your Teroclaw Hatchling and use Dodge + Alpha Strike\n\nCongrats!\n",
		["name"] = "Cookie's Leftovers",
		["tags"] = {
			"1225QC", -- [1]
			"21071C8", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:214",
		["targets"] = {
			119407, -- [1]
		},
		["groupID"] = "group:1",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:206"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDCE", -- [1]
			0, -- [2]
			"BattlePet-0-00000E0BBCC3", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/4787\n\nStrategy added by dintho\nTurn 1: Black Claw\nTurn 2: Flock\nTurn 3: Ikky Normally Dies here... Any standard attack if alive\nBring in your Mechanical Pandaren Dragonling\nHP > 560: HP over 560 Breath \nHP < 560: HP under 560 Explode\n",
		["name"] = "Ti'un the Wanderer",
		["tags"] = {
			"11181FS", -- [1]
			"ZL", -- [2]
			"1015QC", -- [3]
		},
		["teamID"] = "team:206",
		["targets"] = {
			68562, -- [1]
		},
		["groupID"] = "group:2",
		["preferences"] = {
			["minXP"] = 10,
		},
	},
	["team:19"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD0F", -- [1]
			"BattlePet-0-00000E0BBD3A", -- [2]
			"BattlePet-0-00000E0BBDEE", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/14393\n\nStrategy added by Csam#21833\nTurn 1: Call Darkness\nTurns 2-4: Dreadful Breath\nTurns 5-7: Dreadful Breath\nBring in your Bonkers\nTurn 8: Haymaker\nBonkers dies (If not then use Jab until he dies). Then bring it Anubisath.\nTurn 1: Deflection\nTurn 2: Crush\nTurn 3: Crush\n",
		["name"] = "Mistwing",
		["tags"] = {
			"0126GQ", -- [1]
			"101519V", -- [2]
			"1016143", -- [3]
		},
		["teamID"] = "team:19",
		["targets"] = {
			175780, -- [1]
		},
		["groupID"] = "group:6",
	},
	["team:114"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD21", -- [1]
			"random:0", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/11192\n\nStrategy added by sioupe\nTurn 1: Call Lightning\nTurn 2-3: Haywire\n",
		["name"] = "Ardenweald's Tricksters",
		["tags"] = {
			"221414Q", -- [1]
			"ZR0", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:114",
		["targets"] = {
			173381, -- [1]
		},
		["groupID"] = "group:6",
	},
	["team:97"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBF3E", -- [1]
			"BattlePet-0-00000E0BBCF3", -- [2]
			"random:10", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/5572\n\nStrategy added by Lazey\n*** 9.0.2 approved ***\n\nIllusional Barrier X with only 3 rounds cooldown, Psionic Storm dealing AoE damage and changing the weather to Arcane Winds to give Psychic Blast an additional attack. Looks dangerous but my answer is... Blistering Cold :-)\n\nTo get as much Frostbite applications as possible on Mindshackle I use Blistering Cold two times before I force my Boneshard to die. To make it even worse for the opponent I also add a Bleeding effect. Black Claw and Shattered Defenses applied by Hunting Party, Flock or Swarm will then buff Frostbite/Bleeding damage.\n\nYou can replace Zandalari Raptors with Foulfeather, Ikky or Chitterspine Skitterling (8.2 Nazjatar wild catch), the script can handle them all and will also bring your third pet to pass the last turn if your birdies die.\n\nTurn 1: Blistering Cold\nTurn 2: Chop\nTurn 3: BONESTORM\nTurn 4: Blistering Cold (Boneshard dies)\nBring in your Black Claw + Swarm ability pet\nTurn 1: Black Claw\nTurn 2+: Hunting Party, Flock or Swarm\n\nWhen your Mech comes in (while using vulnerable Flying pets with Black Claw)\nPass turn\n",
		["name"] = "Mindshackle",
		["tags"] = {
			"11231TB", -- [1]
			"202415R", -- [2]
			"ZRA", -- [3]
		},
		["teamID"] = "team:97",
		["targets"] = {
			154917, -- [1]
		},
		["groupID"] = "group:5",
		["preferences"] = {
			["minXP"] = 25,
		},
	},
	["team:267"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBCB6", -- [1]
			"BattlePet-0-00000E0BBD09", -- [2]
			0, -- [3]
		},
		["notes"] = "Strategy added by Thordros#1784\nThis is my attempt at eliminating most of the randomness surrounding Wumpas stunning you with Headbutt, while still keeping a low kill time (<80 seconds). Although there are other bots with the same moveset, the P/P and P/S bots are the only ones that can reliably kill both Thrugtusk and Wumpas in 7 rounds.There is an extremely rare edge case where Thrugtusk can get insanely lucky crits and kill your Warbot (including the Mechanical phase!) before dying. The TD Script will attempt to salvage the fight with your Darkmoon Tonk, and does so successfully 75% of the time—the other 25%, Wumpas will stun you with Headbutt and you're very unlikely to win.\n\nTurn 1: Minefield\nTurn 2-3: Launch Rocket\nTurn 4+: Missile\nWumpas comes in\nTurn 1+: Launch Rocket\nIf your Warbot dies here, bring in your Darkmoon Tonk early and use Shock and Awe.\nBaeloth comes in\nTurn 1: Swap to your Level Pet\nTurn 2: Swap to your Darkmoon Tonk\nTurn 3: Shock and Awe\nIf your Warbot died to Wumpas, use Missile here until Baeloth has <1099 health remaining.\nTurn 4: Ion Cannon\n",
		["name"] = "My Beast's Bidding (2)",
		["tags"] = {
			"122473", -- [1]
			"1127AI", -- [2]
			"ZL", -- [3]
		},
		["teamID"] = "team:267",
		["groupID"] = "group:4",
	},
	["team:133"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDB3", -- [1]
			0, -- [2]
			"BattlePet-0-00000E0BBCC3", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/1745\n\nStrategy added by Lazey\n*** 9.0.2 approved ***\n\nIt's very rare, but if an early Sweep forces a pet swap on your side, I recommend a Restart.\n\nLevel Pet will get all XP cause both carry pets die.\n\nTurn 1: Wind-Up\nTurn 2: Supercharge\nTurn 3: Wind-Up\nTurn 4: Wind-Up, Dead Deckhand Leonard dies.\nCorrupted Slime comes in\nTurn 1: Powerball\nTurn 2: Supercharge\nTurn 3+: Prio 1: Unleash Wind-Up attack if Failsafe was triggered. Don't apply new Wind-Up\nPrio 2: Powerball\nIron Starlette dies, bring in your Mechanical Pandaren Dragonling\nTurn 1+: Use Thunderbolt if you're sure the split damage will kill Corrupted Slime, otherwise Breath.\nReanimated Kraken Tentacle comes in\nTurn 1: Prio 1: Explode if Kraken Tentacle has 560HP or less.\nPrio 2: Thunderbolt\nPrio 3: Breath\n",
		["name"] = "Sea Creatures Are Weird",
		["tags"] = {
			"11161BB", -- [1]
			"ZL", -- [2]
			"1215QC", -- [3]
		},
		["teamID"] = "team:133",
		["targets"] = {
			141002, -- [1]
		},
		["groupID"] = "group:5",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:183"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD1B", -- [1]
			"BattlePet-0-00000E0BBDB3", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/9933\n\nStrategy added by DragonsAfterDark\nVideo for Fight (https://www.youtube.com/watch?v=mmuOm-zVtaM&t=5s)\n\nTurn 1: Decoy\nTurn 2: Explode\nBring in your Iron Starlette\nTurn 1: Wind-Up\nTurn 2: Supercharge\nTurn 3: Wind-Up\nTurn 4+: Toxic Smoke\n",
		["name"] = "The Mind Games of Addius",
		["tags"] = {
			"022CAJ", -- [1]
			"12161BB", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:183",
		["targets"] = {
			173331, -- [1]
		},
		["groupID"] = "group:6",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:217"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBCA2", -- [1]
			"BattlePet-0-00000E0BBE91", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/11173\n\nStrategy added by Vsh\nTurn 1: Creeping Fungus\nTurns 2-4: Stampede\nTurn 5: Consume during the death phase\nWhirly dies\nTurn 4: repeat turn 1 - 6\nRound 5: Stinkdust dies\nTurn 6: Creeping Fungus\nInfected Squirrel dies\nMud Jumper in combat\nTurn 1: Bubble\nTurn 2: Swarm of Flies\nfinish with Tongue Lash\n",
		["name"] = "Uncomfortably Undercover",
		["tags"] = {
			"2217JJ", -- [1]
			"221C1D1", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:217",
		["targets"] = {
			173267, -- [1]
		},
		["groupID"] = "group:6",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:172"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBE55", -- [1]
			0, -- [2]
			"BattlePet-0-00000E0BBC65", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/998\n\nStrategy added by Aranesh\nTurn 1: Shell Shield\nTurn 2: Renewing Mists\nTurn 3: Surge\nTurn 4: Surge\nTurn 5: Surge\nTurn 6: Renewing Mists\nTurn 7: Shell Shield\nTurn 8+: Surge until Living Pool is dead\nTia Mia and Larry come in\nTurn 1: Swap to your Level Pet\nTurn 2: Swap to your Rabbit\nTurn 3: Scratch\nTurn 4: Dodge\nTurn 5: Scratch\nTurn 6: Scratch\nTurn 7: Scratch\nTurn 8+9: Burrow\nTurn 10+: If necessary, Dodge another Whirlpool, otherwise use Scratch until Tia Mia and Larry are dead\nRock Lobster comes in\nTurn 1+: Scratch until your Rabbit dies\nBring back your Emperor Crab\nTurn 1: Shell Shield\nTurn 2: Renewing Mists\nTurn 3+: Keep Shell Shield and Renewing Mists active and use Surge to finish the fight.\n",
		["name"] = "Illidari Masters: Sissix",
		["tags"] = {
			"2116NA", -- [1]
			"ZL", -- [2]
			"121BEV", -- [3]
		},
		["teamID"] = "team:172",
		["targets"] = {
			117934, -- [1]
		},
		["groupID"] = "group:4",
	},
	["team:165"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDB3", -- [1]
			"BattlePet-0-00000E0BBCC3", -- [2]
			"BattlePet-0-00000E0BBE04", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/18831\n\nStrategy added by Reyard\nI see only complicated guides, It's simple but effective.\n\nCelastro comes in\nTurn 1: Wind-Up\nTurn 2: Supercharge\nTurn 3: Wind-Up\nCozmos comes in\nTurn 4: Powerball\nTurn 5: Wind-Up\nTurn 6: Supercharge\nTurn 7: Wind-Up\nLil' Algalon comes in\nTurn 8: Wind-Up\nTurn 9: Wind-Up\nTurn 10: Powerball\nBring in your Mechanical Pandaren Dragonling\nTurn 11: Breath\nTurn 12: Explode\nBring in your Sister of Temptation\nTurn 13: Shadow Shock\nTurn 14: Shadow Shock\n",
		["name"] = "They're Full of Stars!",
		["tags"] = {
			"11161BB", -- [1]
			"1215QC", -- [2]
			"121B1IS", -- [3]
		},
		["teamID"] = "team:165",
		["targets"] = {
			202458, -- [1]
		},
		["groupID"] = "group:7",
	},
	["team:124"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBF3E", -- [1]
			0, -- [2]
			"BattlePet-0-00000E0BBDCE", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/10192\n\nStrategy added by Akxur#2166\nTurn 1: Blistering Cold\nTurn 2: Pass\nTurn 3: Swap to your Level Pet\nTurn 4: Swap to your Boneshard\nTurn 5: Blistering Cold\nTurn 6: Pass\nBring in your Ikky\nTurn 1: Black Claw\nTurns 2-4: Flock\n",
		["name"] = "Goldenbot XD",
		["tags"] = {
			"01031TB", -- [1]
			"ZL", -- [2]
			"01181FS", -- [3]
		},
		["teamID"] = "team:124",
		["targets"] = {
			154924, -- [1]
		},
		["groupID"] = "group:5",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:80"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDCE", -- [1]
			"BattlePet-0-00000E0BBD2E", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/5567\n\nStrategy added by Lazey\n*** 9.0.2 approved '''\n\nThis Manta Ray has two Beast attacks and an empowered Flyby X which will increase the damage your pet takes by 25% for 5 rounds (classic Flyby does for 3 rounds).\n\nI am using a Black Claw + Swarm ability pet in the first slot to buff attacks of my Dragonkin. The script includes Flock and Swarm because when these 8.2 pet battles go live, the Aquatic pet Chitterspine Skitterling will be available as a wild catch in Nazjatar and it has Black Claw and Swarm. Please do not use Hunting Party pets.\n\nThe Skitterling will take more damage from Flyby X so there's a chance it will die 1 round earlier than Flying pets and you can benefit of 2 rounds Shattered Defenses and Black Claw.\n\nTurn 1: Black Claw\nTurn 2+: Flock / Swarm until your pet dies. (When it does without applying Shattered Defenses, please Forfeit, Revive pets & Restart.)\n\nBring in your Nexus Whelpling\nTurn 1: Arcane Storm\nTurn 2-3: Mana Surge\nWhen your Dragon dies without killing Silence, bring in your third pet\nAny standard attack will finish the fight\n",
		["name"] = "Silence",
		["tags"] = {
			"01181FS", -- [1]
			"022414D", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:80",
		["targets"] = {
			154912, -- [1]
		},
		["groupID"] = "group:5",
		["preferences"] = {
			["minXP"] = 25,
		},
	},
	["team:154"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDCE", -- [1]
			"BattlePet-0-00000E0BBD8E", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/7623\n\nStrategy added by Lazey\n*** 9.0.2 approved ***\n\nWith the  (ID: 542) nerf I had to add a fifth round.\n\nTurn 1: Black Claw\nTurn 2: Flock (Fel Flame is forced into battle)\nTurn 3: Scorched Earth\nTurn 4 : Conflagrate\nTurn 5: Flame Breath\n(If needed, bring back Ikky and finish with a standard attack)\n",
		["name"] = "Brain Tickling",
		["tags"] = {
			"01181FS", -- [1]
			"2219G7", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:154",
		["targets"] = {
			162469, -- [1]
		},
		["groupID"] = "group:5",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:10"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD2E", -- [1]
			"BattlePet-0-00000E0BBDC4", -- [2]
			0, -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/911\n\nIs your Nexus Whelpling faster than Sunny?\nYes:: Tail Sweep => Arcane Storm => Mana Surge\nNo:: Arcane Storm => Mana Surge\nThen:: Tail Sweep until Nexus Whelpling dies\nBring in your Level Pet\nTurn 1: Swap to your Emerald Proto-Whelp\nTurns 2+: If Roots is not dead yet, use Emerald Bite until he is.\nBeaky comes in\nTurn 1: Ancient Blessing\nTurns 2-4: Emerald Dream\nTurn 5: Ancient Blessing\nTurns 6+: Emerald Bite until Beaky is dead\n",
		["name"] = "Training with Durian",
		["tags"] = {
			"122414D", -- [1]
			"212A14F", -- [2]
			"ZL", -- [3]
		},
		["teamID"] = "team:10",
		["targets"] = {
			99035, -- [1]
		},
		["groupID"] = "group:4",
	},
	["team:5"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD21", -- [1]
			0, -- [2]
			"BattlePet-0-00000E0BBD09", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/454\n\nStrategy added by Mia\nTurn 1: Supercharge\nTurn 2: Haywire - Wolfus dies\nTurn 3: Fangra comes in and gets punched in the face.\nTurn 4: Swap to your Level Pet\nTurn 5: Swap back to your Sunreaver Micro-Sentry\nTurn 6: Supercharge\nTurn 7: Haywire - Fangra dies\nTurn 8: Wolfgar comes in and gets punched in the face as well.\nTurn 9: Fel Immolate until your Micro-Sentry is dead (sometimes he can finish the fight)\nBring in your Darkmoon Tonk (or any other level 25 pet with some good attacks\nTurns 1+: Ion Cannon (or whatever you see suitable to finish Wolfgar)\n",
		["name"] = "Gargra",
		["tags"] = {
			"222414Q", -- [1]
			"ZL", -- [2]
			"1127AI", -- [3]
		},
		["teamID"] = "team:5",
		["targets"] = {
			87122, -- [1]
		},
		["groupID"] = "group:3",
	},
	["team:17"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD41", -- [1]
			"BattlePet-0-00000E0BBE15", -- [2]
			"BattlePet-0-00000E0BBDFC", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/11181\n\nStrategy added by Mutanis\n7 rounds. % strategy without Seaborne Spore or Baa'l.\n\nTurn 1: Sunlight\nTurn 2: Swap to your Infested Bear Cub\nTurn 3: Corpse Explosion\nBring in your Crimson Spore\nTurn 4: Blinding Powder\nTurn 5: Pass\nTurn 6: Explode\nTurn 7: Pass\n",
		["name"] = "Chittermaw",
		["tags"] = {
			"002C93", -- [1]
			"0026E5", -- [2]
			"01261G1", -- [3]
		},
		["teamID"] = "team:17",
		["targets"] = {
			175779, -- [1]
		},
		["groupID"] = "group:6",
	},
	["team:44"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBCC3", -- [1]
			"BattlePet-0-00000E0BBD1B", -- [2]
			0, -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/1864\n\nStrategy added by Eekwibble\nTurn 1+: Breath until Eye of Inquisition and Eye of Interrogation are dead\nEye of Impetration comes in\nTurn 1: Breath/pass/whatever, you'll get interrupted anyway\nTurn 2: Breath\nTurn 3: Explode - Mechanical Pandaren Dragonling dies\nBring in your Darkmoon Zeppelin\nTurn 4+: Does Eye of Impetration have over 555hp?\nYes - Thunderbolt > Explode\nNo - Explode\nDarkmoon Zeppelin and Eye of Impetration both die, your carry pet gets the xp\n",
		["name"] = "Threads of Fate",
		["tags"] = {
			"1015QC", -- [1]
			"021CAJ", -- [2]
			"ZL", -- [3]
		},
		["teamID"] = "team:44",
		["targets"] = {
			105779, -- [1]
		},
		["groupID"] = "group:4",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:253"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDCE", -- [1]
			"random:3", -- [2]
			"random:3", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/18666\n\nStrategy added by DragonsAfterDark\nIkky should be good to take out both, or almost both, Skitterers with no healing between the fights.\n\nScript thanks to Schlumpf\n\nTurn 1: Black Claw\nTurns 2-4: Flock\nTurn 5+: Quills until the fight is won\n",
		["name"] = "Storm-Touched Skitterer",
		["tags"] = {
			"21181FS", -- [1]
			"ZR3", -- [2]
			"ZR3", -- [3]
		},
		["teamID"] = "team:253",
		["targets"] = {
			200679, -- [1]
		},
		["groupID"] = "group:7",
		["preferences"] = {
			["minXP"] = 25,
		},
	},
	["team:258"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD73", -- [1]
			"BattlePet-0-00000E0BBDD5", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/1831\n\nStrategy added by NostrA#2338\nprops to Aranesh for his/her strategy, i just changed the TD Script and Strategy to make Teroclaw viable again\n\nTurn 1: use Dodge\nTurn 2-4: use Stampede\nTurn 5+: use Flurry until Unfortunate Defias resurrects\nThen: use Stampede\nAn enemy pet comes in\nTurn 1+: use Flurry until your Rabbit dies\nBring in your Teroclaw Hatchling\nenemy HP < 618 : use Ravage\nif the enemy is a Flying Type, you want to use Ravage when the enemy HP is under 406 \nwhen not active: use Nature's Ward\nelse: use Alpha Strike\n",
		["name"] = "Unfortunate Defias",
		["tags"] = {
			"2229BQ", -- [1]
			"22271C8", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:258",
		["targets"] = {
			119346, -- [1]
		},
		["groupID"] = "group:1",
		["preferences"] = {
			["minXP"] = 25,
		},
	},
	["team:216"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD22", -- [1]
			0, -- [2]
			"BattlePet-0-00000E0BBF21", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/10262\n\nStrategy added by Mutanis\nI got inspired by Dragonsafterdark strategy (https://wow-petguide.com/?Strategy=9027).\n\nTime: ~1:40\n\nTurn 1: Frost Shock\nTurn 2: Deep Freeze\nTurn 3: Frost Shock\nRemy comes in\nTurn 4: Thrash\nTurn 5: Frost Shock\nTurn 6+: Thrash until Remy dies (1-2x)\nGusteau comes in\nTurn 1: Frost Shock\nTurn 2: Deep Freeze\nTurn 3: Swap to your Level Pet\nDinner comes in\nTurn 4: Swap to your Direbeak Hatchling\nTurn 5: Ironskin\nTurns 6-7: Falcosaur Swarm!\nTurn 8: Predatory Strike\nGusteau comes in\nTurns 1-2: Falcosaur Swarm!\n",
		["name"] = "Chopped",
		["tags"] = {
			"122814E", -- [1]
			"ZL", -- [2]
			"12171TN", -- [3]
		},
		["teamID"] = "team:216",
		["targets"] = {
			105674, -- [1]
		},
		["groupID"] = "group:4",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:187"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD0C", -- [1]
			"BattlePet-0-00000E0BBD2F", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/18619\n\nStrategy added by Halyanth#1611\nI tried it the first time today. I will update the strategy as I continue to play with it. \n\nTurn 1: Haunt\nBring in Kneebitter\nTurn 2: Black Claw\nTurn 3: Hunting Party\nTurn 4: Hunting Party continues\nTurn 5: Leap\n",
		["name"] = "Flow - Rare",
		["tags"] = {
			"221316M", -- [1]
			"221814S", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:187",
		["targets"] = {
			200697, -- [1]
		},
		["groupID"] = "group:7",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:73"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD0C", -- [1]
			"BattlePet-0-00000E0BBDCE", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/756\n\nTurn 1: Curse of Doom\nTurn 2: Haunt\nBring in Ikky\nTurn 1: Black Claw\nTurns 2+: Flock\n",
		["name"] = "Fight Night: Rats!",
		["tags"] = {
			"021316M", -- [1]
			"01181FS", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:73",
		["targets"] = {
			105241, -- [1]
		},
		["groupID"] = "group:4",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:263"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD0C", -- [1]
			"BattlePet-0-00000E0BBDCE", -- [2]
			"random:0", -- [3]
		},
		["name"] = "Right Twice a Day",
		["tags"] = {
			"021316M", -- [1]
			"01181FS", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:263",
		["targets"] = {
			202452, -- [1]
		},
		["groupID"] = "group:7",
	},
	["team:116"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBEC8", -- [1]
			"BattlePet-0-00000E0BBDCE", -- [2]
			0, -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/7598\n\nStrategy added by Shenk\nDidn't bother to test every Dream Whelpling breed since it shouldn't matter.\n\nTurn 1: Toxic Skin\nTurn 2+: Emerald Bite until Skyshaper dies\nFangor comes in\nTurn 1: Emerald Bite\nTurn 2: Healing Flame\nTurn 3+: Emerald Bite until either one of the pets dies\n\nIf Dream Whelpling wins:\nDor the Wall comes in\nTurn 1: Pass. Dream Whelpling dies\nBring in your Level Pet\nTurn 1: Swap to your Ikky\nTurn 2: Black Claw\nTurn 3+: Flock\n\nIf Fangor wins:\nBring in your Ikky\nTurn 1+: Savage Talon until Fangor dies\nDor the Wall comes in\nTurn 1: Savage Talon\nTurn 2: Swap to your Level Pet\nTurn 3: Swap to your Ikky\nTurn 4: Black Claw\nTurn 5+: Flock\n",
		["name"] = "Hyuna of the Shrines",
		["tags"] = {
			"11141LQ", -- [1]
			"11181FS", -- [2]
			"ZL", -- [3]
		},
		["teamID"] = "team:116",
		["targets"] = {
			66730, -- [1]
		},
		["groupID"] = "group:2",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:118"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDEE", -- [1]
			"random:0", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/542\n\nTurns 1+: Keep Sandstorm active and use Deflection occasionally\nAfter 10 rounds Rocko will die on its own.\n",
		["name"] = "Rocko Needs a Shave",
		["tags"] = {
			"0116143", -- [1]
			"ZR0", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:118",
		["targets"] = {
			98572, -- [1]
		},
		["groupID"] = "group:4",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:125"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDC4", -- [1]
			"BattlePet-0-00000E0BBD9A", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/11082\n\nStrategy added by matarsaed#2362\nTurn 1: Always keep up Emerald Presence\nTurn 2: Skip turn if you get sleeped\nTurn 3: Emerald Bite until Emerald Proto-Whelp dies\nBring in your Tranquil Mechanical Yeti\nTurn 1: Supercharge\nTurn 2: Call Lightning\nTurn 3: If needed: Metal Fist to finish the fight\n",
		["name"] = "Thenia's Loyal Companions",
		["tags"] = {
			"220A14F", -- [1]
			"111C3K", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:125",
		["targets"] = {
			173129, -- [1]
		},
		["groupID"] = "group:6",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:202"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBCAD", -- [1]
			"random:0", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/5508\n\nStrategy added by DragonsAfterDark\nBe cautious, lest you give your enemies the tools to destroy you. *laughs*\n\nVideo for Fight (https://www.youtube.com/watch?v=zXxxLMjdfII)\n\nTurn 1+: Inflation\n",
		["name"] = "Voltgorger",
		["tags"] = {
			"2005198", -- [1]
			"ZR0", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:202",
		["targets"] = {
			154919, -- [1]
		},
		["groupID"] = "group:5",
		["preferences"] = {
			["minXP"] = 25,
		},
	},
	["team:132"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD1B", -- [1]
			"BattlePet-0-00000E0BBD9A", -- [2]
			"BattlePet-0-00000E0BBCE7", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/9906\n\nStrategy added by Lazey\n(9-10 rounds)\n\n*** Created on Beta, so maybe not final  ***\n\nTurn 1: Decoy\nTurn 2: Explode\nBring in your Tranquil Mechanical Yeti\nTurn 1: Supercharge\nTurn 2: Call Lightning (Shelby dies, Tinyhoof comes in)\nTurn 3+: Metal Fist (until Tinyhoof is dead)\nSwap to your Chrominius\nTurn 1: Howl\nTurn 2: Surge of Power\n",
		["name"] = "Cliffs of Bastion",
		["tags"] = {
			"022CAJ", -- [1]
			"111C3K", -- [2]
			"0126140", -- [3]
		},
		["teamID"] = "team:132",
		["targets"] = {
			173131, -- [1]
		},
		["groupID"] = "group:6",
	},
	["team:248"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBCE7", -- [1]
			"BattlePet-0-00000E0BBD13", -- [2]
			"BattlePet-0-00000E0BBD9A", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/19204\n\nStrategy added by Deathrall\nBomb Team, used tranquil from Darks strategy.\n\nTurn 1: Howl\nTurns 2-4: Surge of Power\nClawz comes in\nTurn 5+: Bite\nBring in your Pandaren Water Spirit\nPriority 1: Whirlpool\nPriority 2: Dive\nPriority 3: Water Jet\nMurrey comes in\nBring in your Tranquil Mechanical Yeti\nTurn 15+: Supercharge\nTurn 15+: Call Lightning\nGG\n",
		["name"] = "To a Land Down Under",
		["tags"] = {
			"1126140", -- [1]
			"1219R4", -- [2]
			"111C3K", -- [3]
		},
		["teamID"] = "team:248",
		["targets"] = {
			201004, -- [1]
		},
		["groupID"] = "group:7",
	},
	["team:191"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD0C", -- [1]
			"BattlePet-0-00000E0BBDCE", -- [2]
			0, -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/6320\n\nStrategy added by Alexstrasza\nOriginal strategy by CrazyFluffy#21258 (https://www.wow-petguide.com/?Strategy=2789) which had a random pet as 3rd pet.\nI've slightly altered it to include a leveling pet\n\nUnborn Val'kyr\nTurn 1: Curse of Doom\nTurn 2: Haunt\nBring in your Level Pet\n\nLevel Pet\nTurn 1: Swap to your Ikky\n\nIkky\nTurn 1: Black Claw\nTurn 2-4: Flock\n",
		["name"] = "Lucky Yi",
		["tags"] = {
			"021316M", -- [1]
			"01181FS", -- [2]
			"ZL", -- [3]
		},
		["teamID"] = "team:191",
		["targets"] = {
			68561, -- [1]
		},
		["groupID"] = "group:2",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:237"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD13", -- [1]
			0, -- [2]
			"BattlePet-0-00000E0BBD24", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/2030\n\nStrategy added by NostrA#2338\nThis Strategy can still fail when you are very unlucky with crits. If you want to level a flying pet, it should be level 19+\n\nTurn 1: use Whirlpool\nTurn 2: use Dive\nTurn 3: use Water Jet\nenemy Azerite Slime dies\nTurn 1: use Whirlpool\nTurn 2+: use Water Jet until your Pandaren Water Spirit dies\nbring in your Level Pet\nbring in your Rapana Whelk\nPriority 1: use Shell Shield when the duration is at 1\nPriority 2: use Dive when available\nPriority 3: use Absorb\n",
		["name"] = "Rogue Azerite",
		["tags"] = {
			"1219R4", -- [1]
			"ZL", -- [2]
			"221CN7", -- [3]
		},
		["teamID"] = "team:237",
		["targets"] = {
			140813, -- [1]
		},
		["groupID"] = "group:5",
		["preferences"] = {
			["minXP"] = 12,
		},
	},
	["team:42"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD0C", -- [1]
			"BattlePet-0-00000E0BBDCE", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/1297\n\nStrategy added by Lazey\n*** 9.0.2 approved ***\n\nMake sure your 3rd pet has a damaging attack selected.\nScript added\n\nTurn 1: Curse of Doom\nTurn 2: Shadow Shock\nTurn 3: Haunt\nBring in Ikky\nTurn 1: Black Claw\nTurns 2+: Flock - Ikky dies\nBring in your 3rd pet\nTurns 1+: Any standard attack will finish the fight\n",
		["name"] = "Ruinhoof",
		["tags"] = {
			"221316M", -- [1]
			"21181FS", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:42",
		["targets"] = {
			128007, -- [1]
		},
		["groupID"] = "group:4",
		["preferences"] = {
			["minXP"] = 25,
		},
	},
	["team:74"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDEC", -- [1]
			"BattlePet-0-00000E0BBDEE", -- [2]
			"BattlePet-0-00000E0BBDC4", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/119\n\nTurn 1: Metal Fist\nTurn 2: Reflective Shield\nTurns 3-5: Ion Cannon - This will kill both Chaos Pup and your Micro-Defender.\n\nBring in your Tanaan Backup Pets (ideally Anubisath Idol or Emerald Proto-Whelp) to finish the fight.\n",
		["name"] = "Chaos Pup",
		["tags"] = {
			"11281DA", -- [1]
			"1116143", -- [2]
			"222A14F", -- [3]
		},
		["teamID"] = "team:74",
		["targets"] = {
			94638, -- [1]
		},
		["groupID"] = "group:3",
	},
	["team:112"] = {
		["pets"] = {
			0, -- [1]
			"BattlePet-0-00000E0BBF3E", -- [2]
			"BattlePet-0-00000E0BBDCE", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/8104\n\nStrategy added by Hollandshoop\nTurn 1: Pass or use any ability with your Level Pet\nTurn 2: Swap to your Boneshard\nTurn 3: Blistering Cold\nTurn 4: Boneshard stunned. Swap to your Ikky\nTurn 5: Black Claw\nTurn 6: Flock\nAnd the job is done!!!\n",
		["name"] = "Retinus the Seeker",
		["tags"] = {
			"ZL", -- [1]
			"11231TB", -- [2]
			"11181FS", -- [3]
		},
		["teamID"] = "team:112",
		["targets"] = {
			162458, -- [1]
		},
		["groupID"] = "group:5",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:239"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDB3", -- [1]
			0, -- [2]
			0, -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/824\n\nTurn 1: Toxic Smoke\nTurn 2: Wind-Up\nTurn 3: Toxic Smoke\nTurn 4: Wind-Up\nTurn 5: Explode\n",
		["name"] = "Andurs",
		["tags"] = {
			"12261BB", -- [1]
			"ZL", -- [2]
			"ZL", -- [3]
		},
		["teamID"] = "team:239",
		["targets"] = {
			105387, -- [1]
		},
		["groupID"] = "group:4",
	},
	["team:47"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDCE", -- [1]
			"random:8", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/1382\n\nStrategy added by solidstate77#1969\nTurn 1: Black Claw\nTurns 2-4: Flock\nTurn 5: Savage Talon\nBring in your Beast pet\nTurn 1: Any standard attack will finish the fight\n",
		["name"] = "Foulclaw",
		["tags"] = {
			"11181FS", -- [1]
			"ZR8", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:47",
		["targets"] = {
			128008, -- [1]
		},
		["groupID"] = "group:4",
		["preferences"] = {
			["minXP"] = 25,
		},
	},
	["team:15"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDCA", -- [1]
			"BattlePet-0-00000E0BBCA9", -- [2]
			"BattlePet-0-00000E0BBDC4", -- [3]
		},
		["notes"] = "Strategy added by Shadowjk\nTurn 1: Whirlpool\nTurn 2: Call Lightning\nTurn 3: Swap to your Clockwork Gnome\nTurn 4: Build Turret\nTurn 5: Metal Fist\nTurn 6: Metal Fist - Hiss dies\nAn enemy pet comes in\nTurns 1+: Keep Build Turret on cooldown and use Metal Fist otherwise until your Clockwork Gnome dies\nBring back your Hydraling\nTurn 1: Call Lightning\nTurns 2+: Tail Slap until Hydraling dies\nBring in your Emerald Proto-Whelp\nTurn 1: Emerald Presence\nTurn 2-4: Emerald Dream\nTurn 5+: Emerald Bite\n",
		["name"] = "Hiss",
		["tags"] = {
			"212A1G5", -- [1]
			"121B8L", -- [2]
			"222A14F", -- [3]
		},
		["teamID"] = "team:15",
		["targets"] = {
			116793, -- [1]
		},
		["groupID"] = "group:1",
	},
	["team:54"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD0C", -- [1]
			"BattlePet-0-00000E0BBDCE", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/1296\n\nStrategy added by Aranesh\nTurn 1: Curse of Doom\nTurn 2: Haunt\nBring in Ikky\nTurn 1: Black Claw\nTurns 2+: Flock\n",
		["name"] = "Retch",
		["tags"] = {
			"121316M", -- [1]
			"11181FS", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:54",
		["targets"] = {
			128010, -- [1]
		},
		["groupID"] = "group:4",
	},
	["team:13"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDB3", -- [1]
			"BattlePet-0-00000E0BBCC3", -- [2]
			0, -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/977\n\nThis strat may work with a lower level pet, as long at it can handle 130 aquatic damage\n\nTurn 1: Powerball\nTurn 2: Powerball\nTurn 3: Wind-Up\nTurns 4+: Powerball until Mist Wraith resurrects\nThen:: Supercharge - Mist Wraith dies\nCrawdead comes in\nTurn 1: Wind-Up - Crawdead resurrects\nTurn 2: Wind-Up - Crawdead dies\nGnaw comes in\nTurn 1: Wind-Up - your Iron Starlette dies\nTurn 2: Swap to your Mechanical Pandaren Dragonling\nTurn 3: Thunderbolt\nTurn 4+: Breath until Gnaw has below 560 health\nThen:: Explode\n",
		["name"] = "Jarrun's Ladder",
		["tags"] = {
			"11161BB", -- [1]
			"1215QC", -- [2]
			"ZL", -- [3]
		},
		["teamID"] = "team:13",
		["targets"] = {
			105455, -- [1]
		},
		["groupID"] = "group:4",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:224"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBF3E", -- [1]
			"BattlePet-0-00000E0BBDCE", -- [2]
			"BattlePet-0-0000105DC65D", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/11830\n\nStrategy added by DavidG\nNice and simple, and no hard-to-find pets involved.  You can also replace the third pet with a Direbeak Hatchling, or one of the other Hatchlings that has Falcosaur Swarm!\n\nTurn 1: Blistering Cold\nTurn 2: Chop\nBring in your Ikky\nTurn 3: Black Claw\nHis Meat Hook brings in your third pet\nTurn 4: Flock\nHis Hateful Strike kills your third pet - Ikky comes back in\nTurn 5: Flock\n",
		["name"] = "Glurp",
		["tags"] = {
			"11031TB", -- [1]
			"01181FS", -- [2]
			"002C1K", -- [3]
		},
		["teamID"] = "team:224",
		["targets"] = {
			175786, -- [1]
		},
		["groupID"] = "group:6",
	},
	["team:6"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDB3", -- [1]
			"BattlePet-0-00000E0BBDD5", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/1798\n\nStrategy added by NostrA#2338\nprops to Aranesh for his/her strategy, i just changed the TD Script and Strategy to make Teroclaw viable again\n\nTurn 1: use Wind-Up\nTurn 2: use Supercharge\nTurn 3: use Wind-Up\nTurn 4+: use Toxic Smoke until Phyxia dies\nan enemy comes in\nTurn 1+: use Toxic Smoke until your Iron Starlette dies\nbring in your Teroclaw Hatchling\nenemy HP < 618: use Ravage\nif the target enemy is a Flying enemy, you want to use Ravage when the enemy HP is under 406\nwhen not active: use Nature's Ward\nelse: use Alpha Strike\n",
		["name"] = "Phyxia",
		["tags"] = {
			"12161BB", -- [1]
			"22271C8", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:6",
		["targets"] = {
			116792, -- [1]
		},
		["groupID"] = "group:1",
		["preferences"] = {
			["minXP"] = 25,
		},
	},
	["team:180"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDCE", -- [1]
			"random:0", -- [2]
			"random:0", -- [3]
		},
		["name"] = "The Oldest Dragonfly",
		["tags"] = {
			"11181FS", -- [1]
			"ZR0", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:180",
		["targets"] = {
			197336, -- [1]
		},
		["groupID"] = "group:7",
	},
	["team:192"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBED0", -- [1]
			"BattlePet-0-00000E0BBD2E", -- [2]
			"BattlePet-0-00000E0BBF0F", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/7895\n\nStrategy added by Orpartlu\nTurn 1: Falcosaur Swarm!\nTurn 2: Falcosaur Swarm! Continues.\nTurn 3: Predatory Strike\nLilly Dies.\nTurn 4: Falcosaur Swarm!\nSnowfeather Hatchling gets swapped out for Nexus Whelpling by Molaze.\nTurn 5: Arcane Storm\nTurn 6: Mana Surge\nMolaze Dies.\nTurn 7: Mana Surge continues.\nTicker may die here. If not finish with anything.\n",
		["name"] = "Marshdwellers",
		["tags"] = {
			"12151TM", -- [1]
			"122414D", -- [2]
			"12281LP", -- [3]
		},
		["teamID"] = "team:192",
		["targets"] = {
			141529, -- [1]
		},
		["groupID"] = "group:5",
	},
	["team:52"] = {
		["pets"] = {
			0, -- [1]
			"BattlePet-0-00000E0BBD1B", -- [2]
			"BattlePet-0-00000E0BBD2E", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/2550\n\nStrategy added by Andersson#2130\nAny pet with explode will work, not only darkmoon zepp\n\nDragonsAfterDark: Since the OP has been gone since 2018, I rearranged their strategy to work for all breeds of Whelps\n\nTurn 1: Pass\nTurn 2: Swap to your Darkmoon Zeppelin\nTurn 3: Flyby\nTurn 4: Explode\nBring in your Nexus Whelpling\nTurn 1: Arcane Storm\nTurns 2-4: Mana Surge\n",
		["name"] = "Baneglow",
		["tags"] = {
			"ZL", -- [1]
			"220CAJ", -- [2]
			"022414D", -- [3]
		},
		["teamID"] = "team:52",
		["targets"] = {
			128009, -- [1]
		},
		["groupID"] = "group:4",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:101"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDB3", -- [1]
			"BattlePet-0-00000E0BBCC3", -- [2]
			"BattlePet-0-00000E0BBDCE", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/18613\n\nStrategy added by TobeDeleted#2852\nTurn 1: Wind-Up\nTurn 2: Supercharge\nTurn 3: Wind-Up\nTurn 4: Wind-Up\nTurn 5: Wind-Up\nTurn 6: Toxic Smoke until Wind-Up dies. You might get two goes with this if you're lucky. Swap in Mechanical Pandaren Dragonling\nTurn 7+: Breath until second pet dies.\nBlack Claw\nFlock\n",
		["name"] = "Sharp as Flint",
		["tags"] = {
			"12161BB", -- [1]
			"1225QC", -- [2]
			"01181FS", -- [3]
		},
		["teamID"] = "team:101",
		["targets"] = {
			201802, -- [1]
		},
		["groupID"] = "group:7",
	},
	["team:50"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD0E", -- [1]
			"BattlePet-0-00000E0BBDD7", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/191\n\nTurn 1: Moonfire\nTurns 2+: Arcane Blast until Wisdom is dead\nPatience comes in\nTurn 1: Life Exchange\nTurns 2+: Arcane Blast until your Faerie Dragon dies\nBring in your Feline Familiar\nTurns 1+: Pounce until Patience is dead\nKnowledge comes in\nTurn 1: Prowl\nTurn 2: Call Darkness\n",
		["name"] = "Lorewalker Cho",
		["tags"] = {
			"2215HD", -- [1]
			"222A9V", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:50",
		["targets"] = {
			71926, -- [1]
		},
		["groupID"] = "group:1",
	},
	["team:40"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD0C", -- [1]
			"BattlePet-0-00000E0BBDCE", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/754\n\nTurn 1: Curse of Doom\nTurn 2: Haunt\nBring in Ikky\nTurn 1: Black Claw\nTurns 2+: Flock\n",
		["name"] = "Fight Night: Heliosus",
		["tags"] = {
			"021316M", -- [1]
			"01181FS", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:40",
		["targets"] = {
			99742, -- [1]
		},
		["groupID"] = "group:4",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:85"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBCAD", -- [1]
			"BattlePet-0-00000E0BBDC9", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/133\n\nTurn 1: Make it Rain\nTurns 2-4: Inflation\nTurn 5: Blingtron Gift Package\nContinue from Turn 1 until Lil' Bling dies.\nHe will easily destroy Carpe Diem and Spirus. Sometimes taking a good chunk out of River as well.\n\nBring in Netherspawn, Spawn of Netherspawn \nTurns 1+: If you have a Whirlpool incoming, use Consume Magic. Otherwise use Creeping Ooze and Nether Blast as a filler.\n",
		["name"] = "Wise Mari",
		["tags"] = {
			"2115198", -- [1]
			"11271FK", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:85",
		["targets"] = {
			71932, -- [1]
		},
		["groupID"] = "group:1",
	},
	["team:272"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBEE1", -- [1]
			"BattlePet-0-00000E0BBD22", -- [2]
			"BattlePet-0-00000E0BBED5", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/17277\n\nStrategy added by Pascuit#2921\nHello Pet battlers! It's my first strategy guide, I hope it will be OK.\nIf Benax suffers critical hits, it will be necessary to kill the target with the second mascot.\n\n\nTurn 1: Bubble\nTurn 2: Mudslide\nTurn 3: Water Jet\nTurn 4: Water Jet\nTurn 5: Water Jet\nTurn 6: Water Jet\nTurn 7: Mudslide\nTurn 8: Water Jet until the target die\n",
		["name"] = "Humanoid Brawl",
		["tags"] = {
			"21241A5", -- [1]
			"222814E", -- [2]
			"112516D", -- [3]
		},
		["teamID"] = "team:272",
		["groupID"] = "group:none",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:167"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDDE", -- [1]
			0, -- [2]
			"BattlePet-0-00000E0BBEBE", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/2786\n\nStrategy added by CrazyFluffy#21258\nLevel Pet:\nElemental needs 706 health\nMagic needs 314 health\nOther pets need 471\n\nTurn 1: Peck\nTurn 2: Peck\nTurn 3+4: Lift-Off\nTurn 5: Peck - Enemy Marley dies\nTiptoe comes in\nTurn 1+: Peck to enemy Tiptoe dies\nPandaren Water Spirit comes in\nTurn 1+: Peck to your Bloodbeak dies\nBring in your Level Pet\nSwap to your Benax\nTurn 1+: Water Jet to enemy Pandaren Water Spirit dies\n",
		["name"] = "Flowing Pandaren Spirit",
		["tags"] = {
			"201C1DS", -- [1]
			"ZL", -- [2]
			"12171SE", -- [3]
		},
		["teamID"] = "team:167",
		["targets"] = {
			68462, -- [1]
		},
		["groupID"] = "group:2",
		["preferences"] = {
			["minHP"] = 707,
			["minXP"] = 7,
		},
	},
	["team:31"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD0C", -- [1]
			"BattlePet-0-00000E0BBDB3", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/5737\n\nStrategy added by Okutane#1583\nMy first strategy. I didn't had required pets for other strategies nor any experience with battling elite pets, but it was a one shot.\n\nTurn 1: Curse of Doom\nTurn 1+: Shadow Slash until Unborn Val'kyr dies\nThen: Unholy Ascension during undead round\nBring in Iron Starlette\nTurn 5: Wind-Up\nTurn 6: Supercharge\nTurn 7: Wind-Up - Lil'idan dead!\n",
		["name"] = "It's Illid... Wait.",
		["tags"] = {
			"122316M", -- [1]
			"10161BB", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:31",
		["targets"] = {
			105841, -- [1]
		},
		["groupID"] = "group:4",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:178"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDB3", -- [1]
			"BattlePet-0-00000E0BBD1B", -- [2]
			0, -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/4725\n\nStrategy added by Kurasu#2861\nTurn 1: Wind-Up\nTurn 2: Supercharge\nTurn 3: Wind-Up\nTurn 4: Use any basic attack until Iron Starlette dies.\nBring in your Darkmoon Zeppelin\nTurn 1+: If enemy is not below 614 health, Decoy and Missile until it is. \nIf enemy is below 614 health, Explode.\nLeveling pet gets all the XP.\n",
		["name"] = "Greyhoof",
		["tags"] = {
			"10161BB", -- [1]
			"122CAJ", -- [2]
			"ZL", -- [3]
		},
		["teamID"] = "team:178",
		["targets"] = {
			68560, -- [1]
		},
		["groupID"] = "group:2",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:163"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD0C", -- [1]
			"BattlePet-0-00000E0BBDCE", -- [2]
			"BattlePet-0-00000E0BBDC4", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/1239\n\nStrategy added by Aranesh\nTurn 1: Curse of Doom\nTurn 2: Haunt\nBring in Ikky\nTurn 3: Black Claw\nTurn 4: Flock\nTurn 5+: Savage Talon until Ikky dies\nBring in Emerald Proto-Whelp\nTurns 1-3: Emerald Dream\nTurn 4: Emerald Presence\nTurns 5+: Emerald Bite until the last pet is dead, keep Emerald Presence active.\n",
		["name"] = "Defiled Earth",
		["tags"] = {
			"221316M", -- [1]
			"11181FS", -- [2]
			"222A14F", -- [3]
		},
		["teamID"] = "team:163",
		["targets"] = {
			94650, -- [1]
		},
		["groupID"] = "group:3",
	},
	["team:79"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD22", -- [1]
			"BattlePet-0-00000E0BBD0C", -- [2]
			"BattlePet-0-00000E0BBE02", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/13280\n\nStrategy added by Rolfson#1694\nSecond pet can be pretty much anything that has consistently high undead damage, as you'll need to do around 1k damage to the last pet after the runt dies.\n\nI've found this strat to be fairly RNG-proof even if you get unlucky on thrash, and considerably more consistent than the moth strategies out there right now.\n\nTurn 1: Frost shock\nTurn 2: Deep freeze\nTurn 3: Frost shock (Zhu will swap to a new pet)\nTurn 4: Thrash\nTurns 5+: Maintain frost shock on the enemy pets at all times, but you can let it fall off and refresh the following turn. Use deep freeze every time it's up, and ALWAYS follow up with frost shock afterwards due to pet swaps. Thrash on filler\nIf you get stunned or blinded, swap to Elekk Plushie and use Itchin' to get back on the next turn.\nTurn 6: If / when kun-lai runt dies, swap to your second pet and finish off the battle. Should be fairly RNG proof and kun-lai runt can nearly solo the fight.\n",
		["name"] = "Taran Zhu",
		["tags"] = {
			"122814E", -- [1]
			"200316M", -- [2]
			"00261CI", -- [3]
		},
		["teamID"] = "team:79",
		["targets"] = {
			71931, -- [1]
		},
		["groupID"] = "group:1",
	},
	["team:157"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD0C", -- [1]
			"BattlePet-0-00000E0BBD51", -- [2]
			"BattlePet-0-00000E0BBDC4", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/590\n\nTurn 1: Curse of Doom\nTurn 2: Pass\nTurn 3: Pass\nTurn 4: Unholy Ascension\nBring in your Stitched Pup\nTurn 3: Howl - Skrillix dies\nTurn 4+: Diseased Bite until your Pup is done\nBring in your Tanaan Pet\nUse this pet to clean up :-)\nGreat choices are an Anubisath Idol or an Emerald Proto-Whelp.\n",
		["name"] = "Skrillix",
		["tags"] = {
			"222316M", -- [1]
			"121713Q", -- [2]
			"222A14F", -- [3]
		},
		["teamID"] = "team:157",
		["targets"] = {
			94649, -- [1]
		},
		["groupID"] = "group:3",
	},
	["team:8"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDBB", -- [1]
			"random:0", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/312\n\nStrategy added by Remte\nIf possible, pick one additional pet that has any damaging spell that does more than 500 damage in one hit.\n\nTurn 1: Wind-Up\nTurn 2: Wind-Up\nTurn 3: Pass\nTurn 4: Wind-Up\nTurn 5: Supercharge\nTurn 6: Wind-Up\n",
		["name"] = "Stitches Jr.",
		["tags"] = {
			"11171BB", -- [1]
			"ZR0", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:8",
		["targets"] = {
			85685, -- [1]
		},
		["groupID"] = "group:3",
		["preferences"] = {
			["minXP"] = 25,
		},
	},
	["team:145"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBF3E", -- [1]
			0, -- [2]
			"BattlePet-0-00000E0BBCF3", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/8948\n\nStrategy added by Tinlar#1408\nThank you to shpungout for the suggestion on how to streamline the strategy\n\nTurn 1: Blistering Cold\nTurn 2: Chop\nTurn 3: Swap to your Level Pet\nTurn 4: Swap to your Zandalari Anklerender\nTurn 5: Black Claw\nTurns 6-7: Hunting Party\n",
		["name"] = "Unit 17",
		["tags"] = {
			"11031TB", -- [1]
			"ZL", -- [2]
			"202415R", -- [3]
		},
		["teamID"] = "team:145",
		["targets"] = {
			154929, -- [1]
		},
		["groupID"] = "group:5",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:259"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBF3E", -- [1]
			"BattlePet-0-00000E0BBCF3", -- [2]
			"BattlePet-0-00000E0BBC65", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/18586\n\nStrategy added by DragonsAfterDark\nThe same team can be used for the Legendary (https://www.wow-petguide.com/Strategy/18585/Wildfire_-_Legendary) & Rare (https://www.wow-petguide.com/Strategy/18587/Wildfire_-_Rare) versions.\n\nMy Team for defeating the Storm-Touched Skitterers can be found here (https://youtu.be/UDUYys-uxuk?t=55).\n\nTurn 1: Blistering Cold\nTurn 2: Chop\nTurn 3: BONESTORM\nTurn 4: Blistering Cold\nBring in your Zandalari Anklerender\nTurn 5: Primal Cry\nTurn 6: Black Claw\nTurns 7-8: Hunting Party\nBring in your Elfin Rabbit\nTurn 9+: Stampede\n",
		["name"] = "Wildfire - Epic",
		["tags"] = {
			"11231TB", -- [1]
			"222415R", -- [2]
			"102BEV", -- [3]
		},
		["teamID"] = "team:259",
		["targets"] = {
			200686, -- [1]
		},
		["groupID"] = "group:7",
	},
	["team:162"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDB3", -- [1]
			0, -- [2]
			0, -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/8544\n\nStrategy added by Phil\nTurn 1: Wind-Up\nTurn 2: Powerball\nTurn 3: Powerball\nTurn 4: Powerball\nTurn 5: Wind-Up\nTurn 6: Explode make sure Carrotus has about 427 hp or less else Powerball first\nLevel 1 pets get 160 xp each (wearing Safari Hat)\n",
		["name"] = "Carrotus Maximus",
		["tags"] = {
			"11261BB", -- [1]
			"ZL", -- [2]
			"ZL", -- [3]
		},
		["teamID"] = "team:162",
		["targets"] = {
			85420, -- [1]
		},
		["groupID"] = "group:3",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:75"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD0C", -- [1]
			"BattlePet-0-00000E0BBCAD", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/5500\n\nStrategy added by DragonsAfterDark\nI specifically went out and caught a B/B Unborn Val'kyr, made it rare and lvl 25, and unless Chomp crits with Devour X the UBV has enough health to take both hits to use Haunt. \n\n643 + 643 = 1,286\nB/B UBV HP = 1562\n\nTurn 1: Curse of Doom\nTurn 2: Haunt\nBring in your Lil' Bling\nTurn 1: Pass\nTurn 2+: Inflation\n",
		["name"] = "Chomp",
		["tags"] = {
			"021316M", -- [1]
			"2005198", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:75",
		["targets"] = {
			154911, -- [1]
		},
		["groupID"] = "group:5",
		["preferences"] = {
			["minXP"] = 25,
		},
	},
	["team:86"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDCE", -- [1]
			"BattlePet-0-00000E0BBD1B", -- [2]
			0, -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/9977\n\nStrategy added by shpungout\n255 aquatic damage for Level pet.\n\nTurn 1: Black Claw\nTurns 2-4: Flock\nTurn 5: Pass\nBring in your Darkmoon Zeppelin\nTurn 1: Explode\n",
		["name"] = "Pearlhusk Crawler",
		["tags"] = {
			"01181FS", -- [1]
			"020CAJ", -- [2]
			"ZL", -- [3]
		},
		["teamID"] = "team:86",
		["targets"] = {
			154914, -- [1]
		},
		["groupID"] = "group:5",
		["preferences"] = {
			["minHP"] = 256,
			["minXP"] = 3,
		},
	},
	["team:65"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDA1", -- [1]
			0, -- [2]
			"BattlePet-0-00000E0BBF3E", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/730\n\nTurn 1: Sweep – Puzzle is forced in\nTurn 2: Swap to your Level Pet\nTurn 3: Swap to your Boneshard\nTurn 4: 10% BONESTORM (1st slot one)\nTurn 5: 30% BONESTORM (2nd slot one)\nTurn 6: 50% BONESTORM (3rd slot one)\nTurn 7: Pass – your Boneshard dies\nBring in your Enchanted Broom\nTurn 8-9: Wind-Up x2 – Puzzle dies\nDeebs comes in\nTurn 10: Batter – Deebs dies\nTyri comes in\nTurn 11: Batter – you win\n",
		["name"] = "Deebs, Tyri and Puzzle",
		["tags"] = {
			"22256L", -- [1]
			"ZL", -- [2]
			"22231TB", -- [3]
		},
		["teamID"] = "team:65",
		["targets"] = {
			79179, -- [1]
		},
		["groupID"] = "group:3",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:106"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBEE1", -- [1]
			"BattlePet-0-00000E0BBD92", -- [2]
			0, -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/13976\n\nStrategy added by Mutanis\nTurn 1: Ice Tomb\nTurn 2: Swap to your Xu-Fu, Cub of Xuen\nTurn 3: Prowl\nTurn 4: Moonfire  (Rocket comes in and Rocket dies)\nJinx comes in\nTurns 5-6: Spirit Claws (2x)\nMarshmallow comes in\nTurns 7+: Spirit Claws until Xu-Fu, Cub of Xuen dies (~2x)\nBring in your Level Pet\nTurn 9: Swap to your Rotten Little Helper\nTurn 10: Greench's Gift\n",
		["name"] = "Fight Night: Tiffany Nelson",
		["tags"] = {
			"02141A5", -- [1]
			"122417I", -- [2]
			"ZL", -- [3]
		},
		["teamID"] = "team:106",
		["targets"] = {
			97804, -- [1]
		},
		["groupID"] = "group:4",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:95"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD21", -- [1]
			"BattlePet-0-00000E0BBCA9", -- [2]
			"BattlePet-0-00000E0BBD1B", -- [3]
		},
		["notes"] = "Strategy added by zekrrun\nStrategy credit to mel9525@WowHead.com\n\nTurn 1: Call Lightning\nLil' Oondasta's  Frill Blast ability will force Clockwork Gnome out\nTurn 2: Build Turret\nTurn 3: Metal Fist\nIf at round 3 your Clockwork Gnome just die and resurrect with  Failsafe, bring out Sunreaver Micro-Sentry and pass then bring your Clockwork Gnome an skip to Turn 5\nTurn 4: Metal Fist\nTurn 5: Build Turret\n    Clockwork Gnome usually dies here, bring out Darkmoon Zeppelin\nTurn 6: Decoy\nTurn 7: Missile\nTurn 8: Missile\n\n",
		["name"] = "Little Tommy Newcomer",
		["tags"] = {
			"211414Q", -- [1]
			"111B8L", -- [2]
			"112CAJ", -- [3]
		},
		["teamID"] = "team:95",
		["targets"] = {
			73626, -- [1]
		},
		["groupID"] = "group:2",
	},
	["team:241"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBF3E", -- [1]
			"BattlePet-0-00000E0BBCC3", -- [2]
			"BattlePet-0-00000E0BBDCE", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/6245\n\nStrategy added by Quenyaiden\nTested multiple times, even when crit strat has 100% win rate for me.\n\nTurn 1: Blistering Cold\nTurn 2: Chop\nTurn 3: Switch to Mechanical Pandaren Dragonling and use Decoy\nTurn 4: Switch to Ikky and use Black Claw\nTurn 5: Flock\nTurn 6: If Ikky dies then bring back Mechanical Pandaren Dragonling and cast Thunderbolt (never got this far, always dead by now)\n",
		["name"] = "CK-9 Micro-Oppression Unit",
		["tags"] = {
			"11031TB", -- [1]
			"0225QC", -- [2]
			"01181FS", -- [3]
		},
		["teamID"] = "team:241",
		["targets"] = {
			154926, -- [1]
		},
		["groupID"] = "group:5",
	},
	["team:279"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBF13", -- [1]
			0, -- [2]
			"BattlePet-0-00000E0BBD13", -- [3]
		},
		["notes"] = "Strategy added by Corgi\nDocumented by Rendigar (https://www.warcraftpets.com/community/forum/viewtopic.php?t=7556), Petcharge (https://petcharge.wordpress.com/tag/bordin-steadyfist/) and Doobjanka (http://pokemop.com/bordin-steadyfist/).  Actual originator unknown at time of conversion here, but I'd suspect it's Rendigar.\n\nRuby comes in\nBring in your Snarly\nTurn 1: Rip\nTurn 2: Blood in the Water\nTurn 3: Surge\nCrystallus comes in\nTurn 4: Rip\nTurn 5: Surge\nTurn 6: Blood in the Water\nUse Surge when Blood in the Water is not available.\nFracture comes in\nTurn 7: Swap to your Level Pet when Snarly dies.\nTurn 8: Swap to your Pandaren Water Spirit\nTurn 9: Whirlpool\nTurns 10-11: Dive to avoid Elementium Bolt.\nTurn 12: Water Jet if necessary to finish Fracture.\n\n\n\n",
		["name"] = "Bordin Steadyfist",
		["tags"] = {
			"11275D", -- [1]
			"ZL", -- [2]
			"1219R4", -- [3]
		},
		["teamID"] = "team:279",
		["preferences"] = {
			["minXP"] = 10,
		},
		["groupID"] = "group:8",
		["targets"] = {
			66815, -- [1]
		},
	},
	["team:230"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDCE", -- [1]
			"BattlePet-0-00000E0BBD2E", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/4600\n\nStrategy added by DragonsAfterDark\nS/S Foulfeather (2,2,1) is a good alternative to Ikky. I changed the Script so there won't be a conflict between Savage Talon and Peck :)\n\nPriority 1: Black Claw\nPriority 2: Flock\nPriority 3: Savage Talon to finish off an enemy if needed\nBring in your Nexus Whelpling\nTurn 1+: Mana Surge & Tail Sweep to finish fight\n",
		["name"] = "Son of Skum",
		["tags"] = {
			"11181FS", -- [1]
			"120414D", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:230",
		["targets"] = {
			116789, -- [1]
		},
		["groupID"] = "group:1",
		["preferences"] = {
			["minXP"] = 25,
		},
	},
	["team:72"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDB3", -- [1]
			"BattlePet-0-00000E0BBCC3", -- [2]
			"BattlePet-0-00000E0BBD9A", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/831\n\nStrategy added by Aranesh\nTurn 1: Wind-Up\nTurn 2: Supercharge\nTurn 3: Wind-Up - Lil' Spirit Guide resurrects\nTurn 4: Wind-Up - Lil' Spirit Guide dies\nQuillino comes in\nTurns 1+: Wind-Up until your Iron Starlette dies (it's okay if you don't hit Quillino a single time!)\nBring in your Mechanical Pandaren Dragonling\nTurns 1+: Breath until Quillino is dead\nFethyr comes in\nTurn 1: Decoy\nTurn 2: Bombing Run\nTurns 3+: Breath until Mechanical Pandaren Dragonling is dead\nBring in your Tranquil Mechanical Yeti\nTurn 1: Call Blizzard\nTurns 2+: Metal Fist until Fethyr is dead\n",
		["name"] = "Training with Bredda",
		["tags"] = {
			"10161BB", -- [1]
			"1125QC", -- [2]
			"120C3K", -- [3]
		},
		["teamID"] = "team:72",
		["targets"] = {
			99077, -- [1]
		},
		["groupID"] = "group:4",
	},
	["team:160"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBE55", -- [1]
			"BattlePet-0-00000E0BBD13", -- [2]
			"BattlePet-0-00000E0BBE6D", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/14453\n\nStrategy added by kamraten\nI've worked with this setup for almost two hours to reassure that it works 100% of the times. So please be kind with your judgement, I know it's fairly long but it works. \n\nTurn 1: Use Shell Shield (Restart if Cackling Flame crits his Scorched Earth)\nTurn 2: Renewing Mists\nTurn 3: Surge\nTurn 4: Surge\nTurn 5: Surge\nTurn 6: Surge and Cackling Flame is dead\nTurn 7: Surge (Your pet will die and Devouring Blaze will heal, but it's according to plan)\nTurn 8: Choose Pandaran Water Spirit and use Whirlpool\nTurn 9: Dive\nTurn 10: Water Jet (and Devouring Blaze will die)\nTurn 11: Whirlpool\nTurn 12: Water Jet\nTurn 13: Water Jet\nTurn 14: Water Jet\nTurn 15: Whirlpool\nTurn 16: Dive\nTurn 17: Water Jet\nTurn 18: Whirlpool (and your Pandaren Water Spirit will die)\nTurn 19: Choose Electrified Razortooth & use Rip\nTurn 20: Blood in the Water \n",
		["name"] = "Only Pets Can Prevent Forest Fires",
		["tags"] = {
			"2116NA", -- [1]
			"1219R4", -- [2]
			"121314R", -- [3]
		},
		["teamID"] = "team:160",
		["targets"] = {
			105093, -- [1]
		},
		["groupID"] = "group:4",
	},
	["team:198"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD2E", -- [1]
			"BattlePet-0-00000E0BBF0F", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/18741\n\nStrategy added by MiKau\nTurn 1: Arcane Storm\nTurn 2-3: Mana Surge\nTurn 4: Stormborne Whelpling comes in\nTurn 5-7: Mana Surge\n",
		["name"] = "Storm-Touched Slyvern",
		["tags"] = {
			"022414D", -- [1]
			"02281LP", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:198",
		["targets"] = {
			200678, -- [1]
		},
		["groupID"] = "group:7",
		["preferences"] = {
			["minXP"] = 25,
		},
	},
	["team:260"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDCE", -- [1]
			"BattlePet-0-00000E0BBDEE", -- [2]
			"BattlePet-0-00000E0BBDC4", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/311\n\nStrategy added by Remte\nNOTE: If Ikky gets frogged just start the fight over.\nTurn 1: Black Claw\nTurns 2+: Flock - Mirecroak dies.\nNext enemy pet comes in.\nTurns 1+: Flock until Ikky is dead.\n\nBring in your Backup Pets to clear the fight.\n",
		["name"] = "Mirecroak",
		["tags"] = {
			"11181FS", -- [1]
			"1116143", -- [2]
			"222A14F", -- [3]
		},
		["teamID"] = "team:260",
		["targets"] = {
			94643, -- [1]
		},
		["groupID"] = "group:3",
	},
	["team:45"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBEE8", -- [1]
			"BattlePet-0-00000E0BBDCE", -- [2]
			"BattlePet-0-00000E0BBDC4", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/14327\n\nStrategy added by skroue\nTurn 1: Blistering Cold\nTurn 2: Aged Yolk\nBring in your Ikky\nTurn 1: Black Claw\nTurns 2-4: Flock until Ikky dies\nBring in your Emerald Proto-Whelp\nPrio 1: Emerald Presence\nPrio 2: Emerald Dream\nPrio 3: Emerald Bite\n",
		["name"] = "Felsworn Sentry",
		["tags"] = {
			"22181BK", -- [1]
			"11181FS", -- [2]
			"222A14F", -- [3]
		},
		["teamID"] = "team:45",
		["targets"] = {
			94601, -- [1]
		},
		["groupID"] = "group:3",
	},
	["team:142"] = {
		["pets"] = {
			"BattlePet-0-00000E8249DF", -- [1]
			0, -- [2]
			"BattlePet-0-00000E0BBD0F", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/2288\n\nStrategy added by Lyseria\nI originally posted this on Wowhead (https://www.wowhead.com/quest=40298/fight-night-sir-galveston#comments:id=2558524) a couple of months ago, thought I should add it here as well. Very reliable.\n\nUse H/H Scourged Whelpling!!\n\nI don't have a P/S Scourged Whelpling to test this with, so I can't confirm if it works for that breed. I personally don't think it can. Feel free to try though and tell me if it does.\n\nTurn 1: Wish\nTurn 2: Arcane Blast\nTurn 3: Evanescence\nTurn 4-6: Arcane Blast x3 (Coach dies)\nSir Murkeston comes in\nTurn 7: Wish\nTurn 8: Arcane Blast\nTurn 9: Evanescence\nTurn 10: Swap to your Scourged Whelpling\nTurn 11: Call Darkness\nTurn 12-14: Dreadful Breath\nTurn 15+: Tail Sweep until Greatest Foe dies.\nSir Murkeston comes in\nTurn 1: Tail Sweep until Scourged Whelpling dies. (There's a rare instance where Scourged Whelpling can kill Sir Murkeston. Start passing if he goes under 400hp)\nBring in your Level Pet\nBring in your Hyjal Wisp\nTurn 1: Wish\nTurn 2: Evanescence\nTurn 3+: Arcane Blast until Sir Murkeston dies\n",
		["name"] = "Fight Night: Sir Galveston",
		["tags"] = {
			"21151IV", -- [1]
			"ZL", -- [2]
			"2126GQ", -- [3]
		},
		["teamID"] = "team:142",
		["targets"] = {
			99182, -- [1]
		},
		["groupID"] = "group:4",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:60"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBE86", -- [1]
			"random:0", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/11694\n\nStrategy added by Engelrift\nMagical Crawdad will solo this fight. \nBackrow pets will probably die, so don't put in anything you care about.\n\nPriority 1: Shell Shield - Reapply when 1 round remaining on buff. \nPriority 2: Wish - Use when you hit <1400 hp.\nPriority 3: Surge\n",
		["name"] = "Ashes Will Fall",
		["tags"] = {
			"222644", -- [1]
			"ZR0", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:60",
		["targets"] = {
			173303, -- [1]
		},
		["groupID"] = "group:6",
	},
	["team:194"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBCAD", -- [1]
			"BattlePet-0-00000E0BBDD5", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Strategy added by NostrA#2338\nprops to Aranesh for his/her strategy, i just changed the TD Script and Strategy to make Teroclaw viable again\n\nTurn 1: use Extra Plating\nTurn 2: use Make it Rain\nTurn 3+: use Inflation until Dreadcoil is dead\nan enemy comes in\nTurn 1+: use Inflation until Lil' Bling dies\nBring in your Teroclaw Hatchling\nenemy HP < 618: use Ravage\nif the target enemy is a Flying enemy, you want to use Ravage when the enemy HP is under 406\nwhen not active: use Nature's Ward\nelse: use Alpha Strike\n",
		["name"] = "Dreadcoil",
		["tags"] = {
			"2215198", -- [1]
			"22271C8", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:194",
		["targets"] = {
			116791, -- [1]
		},
		["groupID"] = "group:1",
		["preferences"] = {
			["minXP"] = 25,
		},
	},
	["team:99"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBE3A", -- [1]
			"BattlePet-0-00000E0BBD24", -- [2]
			"BattlePet-0-00000E0BBD5E", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/217\n\nScript by Dintho\n\nTurn 1: Acidic Goo\nTurn 2: Ooze Touch\nTurns 3+4: Dive\nTurn 5: Acidic Goo\nTurn 6: Ooze Touch\nTurn 7: Ooze Touch\nTurn 8: Ooze Touch\nTurn 9: Acidic Goo\nTurn 10: Ooze Touch\nTurns 11+12: Dive\n\nIf a snail got killed during one round, bring in the next snail and move to the next turn.\nContinue doing this rotation until Chi-Chi is dead.\n",
		["name"] = "Chi-Chi, Hatchling of Chi-Ji",
		["tags"] = {
			"1119HO", -- [1]
			"111CN7", -- [2]
			"1116FD", -- [3]
		},
		["teamID"] = "team:99",
		["targets"] = {
			72285, -- [1]
		},
		["groupID"] = "group:1",
	},
	["team:4"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBE3A", -- [1]
			0, -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/766\n\nTurn 1: Shell Shield\nTurn 2: Refresh Shell Shield when it runs out and use Absorb otherwise until the Allured Tadpole is dead\nConfused Tadpole comes in\nTurn 1: Swap to your Level Pet\nTurn 2: Swap back to your snail\nTurn 3: Shell Shield\nTurns 4+: Refresh Shell Shield when it runs out and use Absorb otherwise until the Confused Tadpole is dead as well\nSubjugated Tadpole comes in\nTurns 1+2: Dive\nTurns 3+: Again, refresh Shell Shield when it runs out and use Absorb until the fight is done\n",
		["name"] = "Dazed and Confused and Adorable",
		["tags"] = {
			"2219HO", -- [1]
			"ZL", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:4",
		["targets"] = {
			106476, -- [1]
		},
		["groupID"] = "group:4",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:234"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBF3E", -- [1]
			"BattlePet-0-00000E0BBCF3", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/18644\n\nStrategy added by DragonsAfterDark\nTurn 1: Blistering Cold\nTurn 2: Chop\nTurn 3: BONESTORM\nTurn 4: Blistering Cold\nBring in your Zandalari Anklerender\nTurn 5: Primal Cry\nTurn 6: Black Claw\nTurn 7: Hunting Party\n",
		["name"] = "Vortex - Epic",
		["tags"] = {
			"11231TB", -- [1]
			"222415R", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:234",
		["targets"] = {
			200682, -- [1]
		},
		["groupID"] = "group:7",
		["preferences"] = {
			["minXP"] = 25,
		},
	},
	["team:176"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD1B", -- [1]
			"BattlePet-0-00000E0BBCC3", -- [2]
			"random:2", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/16472\n\nStrategy added by DragonsAfterDark\nTurn 1: Flyby\nTurn 2: Explode\nBring in your Mechanical Pandaren Dragonling\nTurn 3: Breath\nTurn 4: Breath\nTurn 5: Thunderbolt\nTurn 6: Explode\nClean up with Dragonkin pet as needed\n",
		["name"] = "Mini Manafiend Melee",
		["tags"] = {
			"220CAJ", -- [1]
			"1215QC", -- [2]
			"ZR2", -- [3]
		},
		["teamID"] = "team:176",
		["targets"] = {
			197417, -- [1]
		},
		["groupID"] = "group:7",
		["preferences"] = {
			["minXP"] = 25,
		},
	},
	["team:210"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDB3", -- [1]
			"BattlePet-0-00000E0BBD2E", -- [2]
			"BattlePet-0-00000E0BBDCE", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/5190\n\nStrategy added by Runisco\nTurn 1: Wind-Up\nTurn 2: Supercharge\nTurn 3: Wind-Up until Iron Starlette dies\nBring in your Nexus Whelpling\nTurn 1: Arcane Storm\nTurn 2: Mana Surge\nTurn 3: Tail Sweep until Nexus Whelpling dies\nBring in your Ikky\nTurn 1: Black Claw\nTurn 2: Flock\n",
		["name"] = "Small Beginnings",
		["tags"] = {
			"10161BB", -- [1]
			"122414D", -- [2]
			"11181FS", -- [3]
		},
		["teamID"] = "team:210",
		["targets"] = {
			142234, -- [1]
		},
		["groupID"] = "group:5",
	},
	["team:225"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBF21", -- [1]
			"random:0", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/5693\n\nStrategy added by DragonsAfterDark\nPriority 1: Ironskin on CD\nPriority 2: Predatory Strike on Shattered Defenses\nPriority 3: Falcosaur Swarm! as filler\n",
		["name"] = "Vilefang",
		["tags"] = {
			"12171TN", -- [1]
			"ZR0", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:225",
		["targets"] = {
			116790, -- [1]
		},
		["groupID"] = "group:1",
		["preferences"] = {
			["minXP"] = 25,
		},
	},
	["team:67"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBCF3", -- [1]
			"BattlePet-0-00000E0BBDEE", -- [2]
			"BattlePet-0-00000E0BBDC4", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/108\n\nTurn 1: Primal Cry\nTurn 2: Black Claw\nTurns 3+4: Hunting Party\nIn most cases your Anklerender dies. If that happens, bring in Anubisath Idol.\nOtherwise use another \"Primal Cry\" to kill the Corrupted Thundertail, then swap to Anubisath Idol \n\nTurn 1: Sandstorm\nTurn 2: Crush and Sandstorm on cooldown until you won the fight.\n",
		["name"] = "Corrupted Thundertail",
		["tags"] = {
			"222415R", -- [1]
			"1116143", -- [2]
			"222A14F", -- [3]
		},
		["teamID"] = "team:67",
		["targets"] = {
			94637, -- [1]
		},
		["groupID"] = "group:3",
	},
	["team:242"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD9A", -- [1]
			"BattlePet-0-00000E0BBDEE", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/11430\n\nStrategy added by norng\nTurn 1: Supercharge\nTurn 2: Call Lightning\nTurn 3: Metal Fist - Klutz's Battle Monkey dies\nAn enemy pet comes in\nPrio 1: Call Lightning\nPrio 2: Metal Fist - Tranquil Mechanical Yeti dies\nBring in your Anubisath Idol\nPrio 1: Use Deflection to dodge Whirlpool & Lift-Off\nPrio 2: Keep up Stoneskin\nPrio 3: Crush\n",
		["name"] = "Klutz's Battle Monkey",
		["tags"] = {
			"111C3K", -- [1]
			"1216143", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:242",
		["targets"] = {
			119345, -- [1]
		},
		["groupID"] = "group:1",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:140"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD2E", -- [1]
			0, -- [2]
			"BattlePet-0-00000E0BBDD5", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/4109\n\nStrategy added by morazor#2212\nTested with a PB and a PP Nexus Whelpling. Be sure to swap in leveling pet when Convinction will cast Dark Rebirth, swap back in your first pet and let it die, so that you can kill Convinction with your third pet and start fighting Dignity with your flyer already in.\n\nAs a third pet, you can use anything that can reliably kill Dignity in 3 turns, to avoid him casting Tidal Wave. Any flyer with Alpha Strike and enough power should do.\n\nYou can level up anything that can survive Sunlight on the first turn: any pet with > 158 HP or any critter, mechanical or magic pet.\n\nTurn 1: Arcane Storm\nTurn 2: Mana Surge\nTurn 3: Mana Surge continues, Beauty should die\nConviction comes in\nTurn 4: Mana Surge continues\nTurn 5: Tail Sweep, Conviction should drop under 380 HPs. If it doesn't, use Arcane Storm on the next turn\nTurn 6: Swap to your Level Pet, Conviction should cast Dark Rebirth\nTurn 7: Swap to your Nexus Whelpling. If it doesn't die right away, pass until it dies.\nBring in your Teroclaw Hatchling\nTurn 8: Alpha Strike, Conviction should die\nDignity comes in\nTurn 9: Alpha Strike\nTurn 10: Alpha Strike\nTurn 11: Alpha Strike, Dignity should die before casting Tidal Wave\n",
		["name"] = "The Master of Pets",
		["tags"] = {
			"122414D", -- [1]
			"ZL", -- [2]
			"20071C8", -- [3]
		},
		["teamID"] = "team:140",
		["targets"] = {
			105250, -- [1]
		},
		["groupID"] = "group:4",
		["preferences"] = {
			["minHP"] = 238,
			["minXP"] = 3,
		},
	},
	["team:59"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDD5", -- [1]
			"BattlePet-0-00000E0BBDCE", -- [2]
			"BattlePet-0-00000E0BBCC3", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/14049\n\nStrategy added by Kettchup86\nEsta estrategia me ha funcionado de maravilla, espero que les guste. Mucha suerte\n\nTurn 1: Nature's Ward\nTurn 2: Alpha Strike (2 - 4 until Lesser Charged Gale has 350 hp or less)\nTurns 3-4: Ravage\nLesser Twisted Current comes in\nTurn 1+: Alpha Strike until Lesser Twisted Current dies\nMind Warper comes in\nTurn 1: Nature's Ward\nTurn 2+: Alpha Strike until Teroclaw Hatchling dies\nBring in your Ikky\nTurn 1: Black Claw\nTurns 2-4: Flock\nBring in your Mechanical Pandaren Dragonling\nTurn 1: Decoy\nTurn ~: If your Ikky dies before coming in, manually use Thunderbolt here\nTurn 2+: Breath until Mind Warper dies\nVictoria\n",
		["name"] = "Captured Evil",
		["tags"] = {
			"22271C8", -- [1]
			"21181FS", -- [2]
			"1225QC", -- [3]
		},
		["teamID"] = "team:59",
		["targets"] = {
			141046, -- [1]
		},
		["groupID"] = "group:5",
	},
	["team:115"] = {
		["pets"] = {
			0, -- [1]
			"BattlePet-0-00000E0BBCA9", -- [2]
			"BattlePet-0-00000E0BBDCE", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/8459\n\nStrategy added by Shadowball\nStrategy created by Mot from this site. I made a script for it\n\nTurn 1: Pass or cast any ability if level pet speed > 347\nTurn 2: Your Clockwork Gnome gets swapped in\nTurn 3: Metal Fist\nTurn 4: Build Turret\nTurn 5: Pass\nTurn 6: Your Ikky gets swapped in\nTurn 7: Black Claw\nTurn 8: Flock\n",
		["name"] = "Mar'cuus",
		["tags"] = {
			"ZL", -- [1]
			"101B8L", -- [2]
			"01181FS", -- [3]
		},
		["teamID"] = "team:115",
		["targets"] = {
			128018, -- [1]
		},
		["groupID"] = "group:4",
		["preferences"] = {
			["minHP"] = 801,
			["minXP"] = 10,
		},
	},
	["team:173"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDEE", -- [1]
			0, -- [2]
			0, -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/28\n\nTurn 1: Crush\nTurn 2: Sandstorm\nTurn 3: Deflection\nTurns 4+: Crush until Crimson is dead (refresh Sandstorm if it comes off cooldown)\nPandaren Fire Spirit comes in\nTurn 1: Deflection (NOTE: Unfortunately if you get a crit on Crimson then Deflection will not be available and you will have to restart the fight)\nTurns 2+: Keep Sandstorm on cooldown and use Crush in between.\nImportant: When Deflection comes off cooldown, cast Crush or Sandstorm, then use Deflection again.\nPandaren Fire Spirit should die shortly after the second Deflection. \nGlowy comes in\nUse Crush until Sandstorm comes off cooldown\nThen use Sandstorm\nSwap in Level-Pet 1\nSwap in Level-Pet 2 if you want\nSwap back to Anubisath Idol\nSame as before, Sandstorm on cooldown and Crush in between until Glowy dies.\n",
		["name"] = "Burning Pandaren Spirit",
		["tags"] = {
			"1116143", -- [1]
			"ZL", -- [2]
			"ZL", -- [3]
		},
		["teamID"] = "team:173",
		["targets"] = {
			68463, -- [1]
		},
		["groupID"] = "group:2",
		["preferences"] = {
			["minXP"] = 5,
		},
	},
	["team:66"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBEC8", -- [1]
			0, -- [2]
			"BattlePet-0-00000E0BBDD5", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/9642\n\nStrategy added by shpungout\nYour level pet will take (0..4) x (63..105) flying damage.\nAlso you can try Emerald Whelpling with Tranquility instead of Healing Flame.\n\nTurn 1: Emerald Presence\nTurns 2+: Emerald Bite until Feathers dies\nSplat comes in\nTurn 1: Swap to your Level Pet\nTurn 2: Swap to your Teroclaw Hatchling\nTurn 3: Dodge\nTurns 4+: Claw until Splat dies\nBrite comes in\nTurn 1: Swap to your Dream Whelpling\nTurn 2: if health is below 300, then Healing Flame, else Emerald Bite\nTurns 3+: Emerald Bite until Brite dies\n",
		["name"] = "Accidental Dread",
		["tags"] = {
			"12141LQ", -- [1]
			"ZL", -- [2]
			"11071C8", -- [3]
		},
		["teamID"] = "team:66",
		["targets"] = {
			141814, -- [1]
		},
		["groupID"] = "group:5",
		["preferences"] = {
			["minHP"] = 401,
			["minXP"] = 5,
		},
	},
	["team:121"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBCF3", -- [1]
			0, -- [2]
			"BattlePet-0-00000E0BBD2F", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/1610\n\nTurn 1: Black Claw\nTurn 2: Hunting Party\nTurn 3: Hunting Party\nTurn 4: Switch to level pet\nTurn 5: Switch to Zandalari Kneebiter\nTurn 6: Black Claw\nTurn 7: Hunting Party\nTurn 8: Hunting Party\n",
		["name"] = "Meet The Maw",
		["tags"] = {
			"212415R", -- [1]
			"ZL", -- [2]
			"221814S", -- [3]
		},
		["teamID"] = "team:121",
		["targets"] = {
			104992, -- [1]
		},
		["groupID"] = "group:4",
		["preferences"] = {
			["minHP"] = 302,
			["minXP"] = 5,
		},
	},
	["team:181"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBE91", -- [1]
			0, -- [2]
			"BattlePet-0-00000E0BBD5E", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/789\n\nTurn 1: Bubble\nTurn 2: Swarm of Flies\nTurn 3: Tongue Lash until the Harbinger of Dark resurrects\nThen:: Swarm of Flies\nHerald of Light comes in\nTurn 1: Tongue Lash until Mud Jumper dies\nBring in your Level Pet\nTurn 1: Swap to your Snail\nTurn 2: Acidic Goo\nTurn 3: Absorb until Herald of Light dies\n",
		["name"] = "All Pets Go to Heaven",
		["tags"] = {
			"221C1D1", -- [1]
			"ZL", -- [2]
			"2106FD", -- [3]
		},
		["teamID"] = "team:181",
		["targets"] = {
			105512, -- [1]
		},
		["groupID"] = "group:4",
		["preferences"] = {
			["minXP"] = 7,
		},
	},
	["team:226"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDB3", -- [1]
			"BattlePet-0-00000E0BBCC3", -- [2]
			0, -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/7318\n\nStrategy added by Sarahlinii\nCredit for this strategy goes to Chrosta. Please see the information below to go check out Chrosta's in-depth WoWhead post regarding all things Garrison Pet Menagerie! https://www.wowhead.com/guide=3831/garrison-pet-battles-with-12-pets-xp-pet\n\nLeveling Pet: Safe for ANY Level 1+ Pet; it will take 0 damage\n\n**Please feel free to leave suggested TDScripts below as I’ve no idea how to properly create them myself. Thanks and enjoy!\n\nBring in your Iron Starlette\nTurn 1: Wind-Up to charge\nTurn 2: Supercharge\nTurn 3: Wind-Up to hit and defeat Brutus\nRukus comes in\nTurn 1: Wind-Up to charge\nTurn 2: Wind-Up to hit\nTurn 3: Toxic Smoke if you're able to before your Iron Starlette is defeated\nBring in your Mechanical Pandaren Dragonling\nTurn 1: Thunderbolt\nTurn 2: Breath IF Rukus has more than 560 HP\nTurn 3: Explode when Rukus has 560 or less HP\nYour Leveling Pet will get the XP\n\n",
		["name"] = "Brutus and Rukus",
		["tags"] = {
			"12161BB", -- [1]
			"1215QC", -- [2]
			"ZL", -- [3]
		},
		["teamID"] = "team:226",
		["targets"] = {
			85622, -- [1]
		},
		["groupID"] = "group:3",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:11"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBF3E", -- [1]
			"BattlePet-0-00000E0BBCF3", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/18587\n\nStrategy added by DragonsAfterDark\nThe same team can be used for the Legendary (https://www.wow-petguide.com/Strategy/18585/Wildfire_-_Legendary) & Epic (https://www.wow-petguide.com/Strategy/18586/Wildfire_-_Epic) versions.\n\nMy Team for defeating the Storm-Touched Skitterers can be found here (https://youtu.be/UDUYys-uxuk?t=55).\n\nTurn 1: Blistering Cold\nTurn 2: Chop\nTurn 3: BONESTORM\nTurn 4: Blistering Cold\nBring in your Zandalari Anklerender\nTurn 5: Black Claw\nTurn 6: Hunting Party\n",
		["name"] = "Wildfire - Rare",
		["tags"] = {
			"11231TB", -- [1]
			"202415R", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:11",
		["targets"] = {
			200689, -- [1]
		},
		["groupID"] = "group:7",
		["preferences"] = {
			["minXP"] = 25,
		},
	},
	["team:144"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD0C", -- [1]
			"BattlePet-0-00000E0BBCAD", -- [2]
			"BattlePet-0-00000E0BBCC3", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/7133\n\nStrategy added by DragonsAfterDark\nTurn 1: Curse of Doom\nTurn 2: Haunt\nBring in your Lil' Bling\nTurn 1-3: Inflation\nTurn 4: Make it Rain\nTurn 5+: Inflation\n\nIf needed: \nBring in your Mechanical Pandaren Dragonling\nTurn 1+: Breath\n",
		["name"] = "Watch Where You Step",
		["tags"] = {
			"021316M", -- [1]
			"2015198", -- [2]
			"1225QC", -- [3]
		},
		["teamID"] = "team:144",
		["targets"] = {
			162466, -- [1]
		},
		["groupID"] = "group:5",
	},
	["team:119"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD0C", -- [1]
			"BattlePet-0-00000E0BBDCE", -- [2]
			"BattlePet-0-00000E0BBDC4", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/708\n\nStrategy added by Nyari\nTurn 1: Curse of Doom\nTurn 2: Pass\nTurn 3: Haunt\nTurn 4: Bring in Ikky\nTurn 5: Black Claw\nTurns 6+: Flock - Dark Gazer dies\nAn enemy pet comes in\nTurns 1+: Savage Talon until Ikky dies\nBring back your Val'kyr\nTurns 1+: Shadow Shock until your Val'kyr dies\nBring in your Emerald Proto-Whelp\nTurns 1-3: Emerald Dream\nTurn 4: Emerald Presence\nTurns 5+: Emerald Bite - use Emerald Dream again if you run low on health\n",
		["name"] = "Dark Gazer",
		["tags"] = {
			"221316M", -- [1]
			"11181FS", -- [2]
			"222A14F", -- [3]
		},
		["teamID"] = "team:119",
		["targets"] = {
			94644, -- [1]
		},
		["groupID"] = "group:3",
	},
	["team:3"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD0C", -- [1]
			"BattlePet-0-00000E0BBD92", -- [2]
			"BattlePet-0-00000E0BBF0F", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/9168\n\nStrategy added by 하늘용#3273\nTime: ~1:20 (~10 rounds)\n\nTested 6 January 2021\n\nTurn 1: Unholy Ascension\nBring in your Xu-Fu, Cub of Xuen\nTurn 2: Moonfire\nTurn 3: Spirit Claws\nEighty Eight dead & Turbo come in\nTurn 4: Prowl\nTurn 5: Spirit Claws\nTurn 6: Turbo dead & Whiplash come in & Swap to your Stormborne Whelpling\nTurn 7: Arcane Storm\nTurn 8: Mana Surge\n",
		["name"] = "Add More to the Collection",
		["tags"] = {
			"002316M", -- [1]
			"122417I", -- [2]
			"02281LP", -- [3]
		},
		["teamID"] = "team:3",
		["targets"] = {
			142114, -- [1]
		},
		["groupID"] = "group:5",
	},
	["team:55"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD13", -- [1]
			"BattlePet-0-00000E0BBE55", -- [2]
			"random:6", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/5988\n\nStrategy added by Runisco\nBreeds used, and confirmed:\nPandaren Water Spirit: H/S\nEmperor Crab: H/H\n\nTurn 1: Whirlpool\nTurn 2: Dive\nTurn 3->: Water Jet\nFiero comes in\nFiero: pri 1: Whirlpool. Pri 2: Dive. Pri 3: Water Jet\nPandaren Water Spirit dies, Bring in your Emperor Crab\nTurn 1: Whirlpool\nTurn 2 ->: Surge\nFiero dies\n",
		["name"] = "Tirs and Fiero",
		["tags"] = {
			"1219R4", -- [1]
			"2126NA", -- [2]
			"ZR6", -- [3]
		},
		["teamID"] = "team:55",
		["targets"] = {
			85629, -- [1]
		},
		["groupID"] = "group:3",
	},
	["team:186"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDCE", -- [1]
			"random:0", -- [2]
			"random:0", -- [3]
		},
		["name"] = "Lyver",
		["tags"] = {
			"11181FS", -- [1]
			"ZR0", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:186",
		["targets"] = {
			201858, -- [1]
		},
		["groupID"] = "group:7",
	},
	["team:88"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBCE7", -- [1]
			"BattlePet-0-00000E0BBDEE", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/86\n\nTurn 1: Howl\nTurns 2-4: Surge of Power - Felfly dies\nNext enemy pet comes in\nTurns 1+: Bite until Chrominius dies\nBring in Anubisath Idol\nTurn 1: Sandstorm\nTurns 2+: Crush and keep Sandstorm on cooldown until the fight is won \n",
		["name"] = "Felfly",
		["tags"] = {
			"1126140", -- [1]
			"1106143", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:88",
		["targets"] = {
			94640, -- [1]
		},
		["groupID"] = "group:3",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:208"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDBB", -- [1]
			"BattlePet-0-00000E0BBCB6", -- [2]
			"random:10", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/7948\n\nStrategy added by F1NCH#2182\nI tested only with P/P Iron Starlette\n\nTurn 1: Wind-Up\nTurn 2: Wind-Up\nTurn 3: Powerball\nScars comes in\nTurn 1: Powerball\nTurn 2: Explode\nBring in your Warbot\nTurn 1: Missile\nTurn 2: Minefield in Scars undead round\nLittle Blue comes in\nTurn 1: Missile\n",
		["name"] = "Pack Leader",
		["tags"] = {
			"11271BB", -- [1]
			"120473", -- [2]
			"ZRA", -- [3]
		},
		["teamID"] = "team:208",
		["targets"] = {
			141799, -- [1]
		},
		["groupID"] = "group:5",
		["preferences"] = {
			["minXP"] = 25,
		},
	},
	["team:134"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD1B", -- [1]
			"BattlePet-0-00000E0BBCC3", -- [2]
			0, -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/14099\n\nStrategy added by DragonsAfterDark\n5 Rounds\n\nTurn 1: Flyby\nTurn 2: Thunderbolt\nTurn 3: Explode\nBring in your Mechanical Pandaren Dragonling\nTurn 4: Thunderbolt\nTurn 5: Explode\n",
		["name"] = "Unit 35",
		["tags"] = {
			"221CAJ", -- [1]
			"0215QC", -- [2]
			"ZL", -- [3]
		},
		["teamID"] = "team:134",
		["targets"] = {
			154927, -- [1]
		},
		["groupID"] = "group:5",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:212"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD22", -- [1]
			"BattlePet-0-00000E0BBDD5", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Strategy added by NostrA#2338\nProps to Aranesh for his/her strategy, I just changed the TD Script and Strategy to make Teroclaw viable again\n\nTurn 1-3: use Rampage\nTurn 4+: use Thrash until Klutz's Battle Rat dies\nan enemy Pet comes in\nTurn 1+: use Rampage on cooldown otherwise use Thrash until your Kun-Lai Runt dies\nBring in your Teroclaw Hatchling\nenemy HP < 618: use Ravage\nif the enemy is a Flying Type, you want to use Ravage when the enemy HP is under 406 \nwhen not active: use Nature's Ward\nelse: use Alpha Strike\n",
		["name"] = "Klutz's Battle Rat",
		["tags"] = {
			"111814E", -- [1]
			"22271C8", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:212",
		["targets"] = {
			119343, -- [1]
		},
		["groupID"] = "group:1",
		["preferences"] = {
			["minXP"] = 25,
		},
	},
	["team:255"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD0C", -- [1]
			"BattlePet-0-00000E0BBDCE", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/733\n\nTurn 1: Curse of Doom\nTurn 2: Haunt\nTurn 3: Swap to your Ikky or Zandalari pet\nTurn 4: Black Claw\nTurns 5+: Flock or Hunting Party depending on your pet\n",
		["name"] = "Flummoxed",
		["tags"] = {
			"221316M", -- [1]
			"11181FS", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:255",
		["targets"] = {
			97709, -- [1]
		},
		["groupID"] = "group:4",
	},
	["team:235"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDD5", -- [1]
			"random:0", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Strategy added by NostrA#2338\nYou can only use the first part in this strategy without swapping, but RNG can bring your Teroclaw Hatchling down then. If you decide to go without swapping: delete the first Paragraph of the TD Script The Swapping Strategy should work even against 3 Flying Pets you can use this strategy for any generic Teroclaw fight don't put important pets in the backline\n\nenemy HP < 618 : use Ravage\nif the enemy is a Flying Type, you want to use Ravage when the enemy HP is under 406 \nwhen not active: use Nature's Ward\nelse: use Alpha Strike\nEnemy Pet #3 comes in\nTurn 1: use Nature's Ward\nswap to Any Pet\nTurn 1+: Kill enemy with Standard Attacks\n",
		["name"] = "Deviate Chomper",
		["tags"] = {
			"22271C8", -- [1]
			"ZR0", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:235",
		["targets"] = {
			116788, -- [1]
		},
		["groupID"] = "group:1",
		["preferences"] = {
			["minXP"] = 25,
		},
	},
	["team:110"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBEF2", -- [1]
			"BattlePet-0-00000E0BBED0", -- [2]
			"BattlePet-0-00000E0BBF21", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/5501\n\nStrategy added by DragonsAfterDark\nKnifefang's Blood in the Water has a 25% Hit Chance for over 1592 damage.\n\nRound 1: Blood in the Water Does Not hit your Bloodgazer Hatchling\nTurns 1-2: Falcosaur Swarm!\nTurn 3: Predatory Strike\nTurns 4+: Falcosaur Swarm! until dead\nBring in your Snowfeather Hatchling\nTurn 1: Predatory Strike\nTurns 2-3: Falcosaur Swarm!\n\nRound 1: Blood in the Water Does hit your Bloodgazer Hatchling\nTurn 1: Falcosaur Swarm!\nBring in your Snowfeather Hatchling\nTurn 1: Predatory Strike\nTurns 2+: Falcosaur Swarm! until dead\nBring in your Direbeak Hatchling\nTurn 1: Predatory Strike\n",
		["name"] = "Frenzied Knifefang",
		["tags"] = {
			"01181TP", -- [1]
			"10151TM", -- [2]
			"00171TN", -- [3]
		},
		["teamID"] = "team:110",
		["targets"] = {
			154920, -- [1]
		},
		["groupID"] = "group:5",
	},
	["team:265"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBCC3", -- [1]
			0, -- [2]
			0, -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/627\n\nTurn 1: Build Turret\nTurn 2: Metal Fist\nTurn 3: Metal Fist\nStart from the top until both Pixiebell and Tally are dead.\nThen:: Swap in your level pets one after the other (or just one of them, up to you).\nThen:: Swap back to your Clockwork Gnome and finish Doodle with Metal Fist.\n",
		["name"] = "Ashlei",
		["tags"] = {
			"1115QC", -- [1]
			"ZL", -- [2]
			"ZL", -- [3]
		},
		["teamID"] = "team:265",
		["targets"] = {
			87124, -- [1]
		},
		["groupID"] = "group:3",
	},
	["team:29"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBF3E", -- [1]
			"BattlePet-0-00000E0BBCF3", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/18674\n\nStrategy added by station384\nWorks.  Not the most efficient.\nThis is an attrition fight,  bone shard sets up the DOT that won't go away,  the Raptor breaks its shield so it takes damage and dies.\nIt would be fast I think if use bone shard for first turn to put on the bleed,  them switch to raptor and do cycle till bone dies, then back to raptor finish it off.   not sure.\n\n\nTurn 1: Blistering Cold\nTurn 2: Chop\nTurn 3: BONESTORM\nTurn 4: Repeat till Boneshard dead\nTurn 5: Primal Cry\nTurn 6: Black Claw\nTurns 7-8: Hunting Party\nTurn 8: Repeat 5-7 till target dead\n\n\n",
		["name"] = "Flow - Epic",
		["tags"] = {
			"11231TB", -- [1]
			"222415R", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:29",
		["targets"] = {
			200694, -- [1]
		},
		["groupID"] = "group:7",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:247"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD0C", -- [1]
			"BattlePet-0-00000E0BBDCE", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/7695\n\nStrategy added by F1NCH#2182\nBooth Val'kyr work, but with H/H Breed the fight is 1 round longer\n\nTurn 1: Siphon Life\nTurn 2: Haunt\nBring in your Ikky\nTurn 1: Black Claw\nTurn 2: Flock\n",
		["name"] = "Living Statues Are Tough",
		["tags"] = {
			"011316M", -- [1]
			"01181FS", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:247",
		["targets"] = {
			162470, -- [1]
		},
		["groupID"] = "group:5",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:151"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDCE", -- [1]
			"BattlePet-0-00000E0BBDEE", -- [2]
			"BattlePet-0-00000E0BBDC4", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/710\n\n50% chance to work - but if it does, it's beautiful\n\nTurn 1: Black Claw\nTurns 2-4: Flock - if Haymaker hits (50% risk), you have to restart. Otherwise Netherfist dies here.\nAn enemey pet comes in\nContinue using Black Claw followed by Flock. Often Ikky solos the fight.\nIf Ikky dies, bring in one of your backup pets and clean up.\n",
		["name"] = "Netherfist",
		["tags"] = {
			"21181FS", -- [1]
			"1116143", -- [2]
			"111A14F", -- [3]
		},
		["teamID"] = "team:151",
		["targets"] = {
			94648, -- [1]
		},
		["groupID"] = "group:3",
	},
	["team:137"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD1B", -- [1]
			"BattlePet-0-00000E0BBCE7", -- [2]
			0, -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/70\n\nStrategy by Rendigar published on Warcraft Pets (https://www.warcraftpets.com/community/forum/viewtopic.php?f=3&t=7556#p57980).\n\n\n\nTurn 1: Missile \nTurn 2: Decoy \nTurns 3+: Missile until Woodcarver is dead \nLightstalker comes in \nTurn 1: Swap to Chrominius\nTurn 2: Howl \nTurn 3: Surge of Power – Lightstalker dies\nNeedleback comes in and kills Chrominius \nBring back in your Darkmoon Zeppelin\nTurn 1 : Missile \nTurn 2: Missile \nTurn 3: Decoy \nTurns 4+: Missile until Needleback is below 619 health \nExplode \nYour level pet enjoys the XP!\n",
		["name"] = "Mo'ruk",
		["tags"] = {
			"122CAJ", -- [1]
			"0126140", -- [2]
			"ZL", -- [3]
		},
		["teamID"] = "team:137",
		["targets"] = {
			66733, -- [1]
		},
		["groupID"] = "group:2",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:200"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBF0F", -- [1]
			0, -- [2]
			"BattlePet-0-00000E0BBDD7", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/12520\n\nStrategy added by Sunshine529\nThe battle doesn't reward much XP for leveling pets, but if you'll take what you can get, this is a reliable strategy.\n\nTurn 1: Arcane Storm\nTurns 2-4: Mana Surge\nTurn 5: When Stormborne Whelpling dies, bring in Level Pet, then swap to Feline Familiar\nTurn 6: Keep Stoneskin up.\nTurn 7: Use Devour when enemy.hp<=768\nTurn 8: Fill with Pounce\n",
		["name"] = "Desert Survivors",
		["tags"] = {
			"12281LP", -- [1]
			"ZL", -- [2]
			"211A9V", -- [3]
		},
		["teamID"] = "team:200",
		["targets"] = {
			142054, -- [1]
		},
		["groupID"] = "group:5",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:22"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBCC3", -- [1]
			"BattlePet-0-00000E0BBD1B", -- [2]
			"BattlePet-0-00000E0BBDC4", -- [3]
		},
		["notes"] = "Strategy added by Aranesh\nTurn 1: Decoy\nTurns 2+: Breath until Growing Ectoplasm is dead\nIf your Mechanical Pandaren Dragonling dies too early, bring in your random level 25 pet and use standard spells to kill Growing Ectoplasm\nAn enemy pet comes in\nTurns 1+: Breath and Decoy with your Mechanical Pandaren Dragonling and your random pet until they are both dead\nBring in your Emerald Proto-Whelp\nTurn 1: Emerald Presence\nTurns 2+: Keep Emerald Presence active, use Emerald Dream when you drop below 1000 health and use Emerald Bite to finish the enemy pets.\n\nDon't forget to jump! ;-)\n",
		["name"] = "Growing Ectoplasm 1",
		["tags"] = {
			"1125QC", -- [1]
			"112CAJ", -- [2]
			"222A14F", -- [3]
		},
		["teamID"] = "team:22",
		["targets"] = {
			116794, -- [1]
		},
		["groupID"] = "group:1",
		["preferences"] = {
			["minXP"] = 25,
		},
	},
	["team:89"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD0C", -- [1]
			"BattlePet-0-00000E0BBDCE", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/6070\n\nStrategy added by Farmacitron#2190\nTurn 1: Curse of Doom\nTurn 2: Unholy Ascension\nTurn 3: Ikky Black Claw\nTurn 4: Flock\nTurn 5: GG WP\n",
		["name"] = "Elderspawn of Nalaada",
		["tags"] = {
			"022316M", -- [1]
			"01181FS", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:89",
		["targets"] = {
			154915, -- [1]
		},
		["groupID"] = "group:5",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:199"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDB3", -- [1]
			"random:0", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/447\n\nThe three Pests can be defeated by many combinations of pets. Listed here are only a few good options, but there are many other good choices.\n\nTurn 1: Wind-Up\nTurn 2: Supercharge\nTurn 3: Wind-Up\n",
		["name"] = "Gorefu",
		["tags"] = {
			"11161BB", -- [1]
			"ZR0", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:199",
		["targets"] = {
			85463, -- [1]
		},
		["groupID"] = "group:3",
	},
	["team:26"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBF3E", -- [1]
			"BattlePet-0-00000E0BBDCE", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/11414\n\nStrategy added by angbad#1501\nTurn 1: Blistering Cold\nTurn 2: Chop\nTurn 3: Chop\nTurn 4: Swap to your Ikky\nTurn 5: Black Claw\nTurns 6-8: Flock\n",
		["name"] = "The Countess",
		["tags"] = {
			"11231TB", -- [1]
			"21181FS", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:26",
		["targets"] = {
			175782, -- [1]
		},
		["groupID"] = "group:6",
		["preferences"] = {
			["minXP"] = 25,
		},
	},
	["team:14"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBCE7", -- [1]
			"BattlePet-0-00000E0BBCC3", -- [2]
			0, -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/42\n\nTurn 1+: Arcane Explosion until Chrominius dies\nBring in your Mechanical Pandaren Dragonling\nTurn 1: Breath\nTurn 2: Thunderbolt\nTurn 3+: Breath until Apexis Guardian resurrects\nThen:: Explode - your small pet gets the full experience points :-)\n",
		["name"] = "Vesharr",
		["tags"] = {
			"2006140", -- [1]
			"1215QC", -- [2]
			"ZL", -- [3]
		},
		["teamID"] = "team:14",
		["targets"] = {
			87123, -- [1]
		},
		["groupID"] = "group:3",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:94"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD21", -- [1]
			"random:0", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/11246\n\nStrategy added by sioupe\nTurn 1: Call Lightning\nTurns 2-3: Haywire\nTurn 3: GG\n",
		["name"] = "Lurking In The Shadows",
		["tags"] = {
			"221414Q", -- [1]
			"ZR0", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:94",
		["targets"] = {
			173376, -- [1]
		},
		["groupID"] = "group:6",
	},
	["team:166"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD0C", -- [1]
			"BattlePet-0-00000E0BBDCE", -- [2]
			"BattlePet-0-00000E0BBF21", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/1673\n\nStrategy added by Gershuun#1131\nTurn 1: Curse of Doom\nTurn 2: Haunt\nBring in your Ikky\nTurn 1: Black Claw\nTurn 2: Flock\nTurn 3: Flock\nTurn 4: Flock\nTurn 5: Pass\nTurn 6: Savage Talon\nTurn 7: Black Claw (Ikky dies)\nBring in your Direbeak Hatchling\nTurn 1: Falcosaur Swarm!\n",
		["name"] = "What Do You Mean, Mind Controlling Plants?",
		["tags"] = {
			"121316M", -- [1]
			"11181FS", -- [2]
			"12171TN", -- [3]
		},
		["teamID"] = "team:166",
		["targets"] = {
			141969, -- [1]
		},
		["groupID"] = "group:5",
	},
	["team:141"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBF21", -- [1]
			"BattlePet-0-00000E0BBD1B", -- [2]
			0, -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/5154\n\nStrategy added by Shenk\nThere is a very small chance this strategy can fail to enemy crits or low damage rolls.\n\nTurn 1: Ironskin\nTurn 2-3: Falcosaur Swarm!\nTurn 4: Predatory Strike. Gulp dies\nEgcellent comes in\nTurn 1-2: Falcosaur Swarm!\nTurn 3: Ironskin\nTurn 4-5: Falcosaur Swarm!\nRed Wire comes in\nTurn 1: Falcosaur Swarm!. Direbeak Hatchling dies\nBring in your Darkmoon Zeppelin\nTurn 1: Missile until Red Wire is at <=324 health. At that point use Decoy. Red Wire dies to Armageddon\nEgcellent comes in\nTurn 1: Explode when Egcellent has <=618 health, otherwise Missile\n",
		["name"] = "Tiny Poacher, Tiny Animals",
		["tags"] = {
			"12171TN", -- [1]
			"122CAJ", -- [2]
			"ZL", -- [3]
		},
		["teamID"] = "team:141",
		["targets"] = {
			99150, -- [1]
		},
		["groupID"] = "group:4",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:204"] = {
		["pets"] = {
			"random:0", -- [1]
			"random:0", -- [2]
			"BattlePet-0-00000E0BBF3E", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/8542\n\nStrategy added by Koru08#1614\nTurn 1: Pass\nBring in your Boneshard\nTurn 1: Blistering Cold\nTurn 2: Chop\nBring in your Ikky\nTurn 1: Black Claw\nTurn 2: Flock\n",
		["name"] = "Snozz",
		["tags"] = {
			"ZR0", -- [1]
			"ZR0", -- [2]
			"11231TB", -- [3]
		},
		["teamID"] = "team:204",
		["targets"] = {
			128014, -- [1]
		},
		["groupID"] = "group:4",
	},
	["team:146"] = {
		["pets"] = {
			"BattlePet-0-00002107EE9F", -- [1]
			0, -- [2]
			"BattlePet-0-00002105826C", -- [3]
		},
		["notes"] = "Strategy added by Mutanis\nTime: 01:25 (10 rounds)\n\nTurn 1: Corrosion (Gladiator Deathy comes in)\nTurn 2: Poison Protocol\nTurn 3: Void Nova\nTurn 4: Swap to your Level Pet (stunned)\nTurn 5: Swap to your Anomalus\nTurn 6: Corrosion\nBring in your Micromancer\nTurn 7: Raise Ally\nTurns 8-10: Dead Man's Party\n",
		["name"] = "Tarr the Terrible",
		["tags"] = {
			"22142OQ", -- [1]
			"ZL", -- [2]
			"11032SF", -- [3]
		},
		["teamID"] = "team:146",
		["targets"] = {
			87110, -- [1]
		},
		["groupID"] = "group:3",
		["preferences"] = {
			["minHP"] = 62,
		},
	},
	["team:155"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDC4", -- [1]
			"random:0", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/5357\n\nStrategy added by Runisco\nPrio 1: Emerald Presence up. Use when 1 turn left\nPrio 2: Emerald Dream when health < 750\nPrio 3: Standby. There is no point in attacking, the bees stinging is cooldown based\nAs soon as one bee uses sting and dies, the others will. Your whelp should survive all 3.\n",
		["name"] = "What's the Buzz?",
		["tags"] = {
			"222A14F", -- [1]
			"ZR0", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:155",
		["targets"] = {
			140880, -- [1]
		},
		["groupID"] = "group:5",
		["preferences"] = {
			["minXP"] = 25,
		},
	},
	["team:153"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD0C", -- [1]
			"BattlePet-0-00000E0BBDCE", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/1381\n\nStrategy added by solidstate77#1969\nTurn 1: Curse of Doom\nTurn 2: Unholy Ascension\nBring in Ikky\nTurn 1: Black Claw\nTurns 2+: Flock\n",
		["name"] = "Minixis",
		["tags"] = {
			"022316M", -- [1]
			"01181FS", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:153",
		["targets"] = {
			128023, -- [1]
		},
		["groupID"] = "group:4",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:222"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDBB", -- [1]
			"BattlePet-0-00000E0BBD51", -- [2]
			"BattlePet-0-00000E0BBD09", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/953\n\nTurn 1: Wind-Up\nSwap to Stitched Pup.\nTurn 1+: Diseased Bite until your Stitched Pup enters its undead round.\nThen: Howl and Stitched Pup dies.\nSwap back to Iron Starlette.\nTurn 1: Supercharge (NOTE: If you get stunned you'll have to finish up with the Darkmoon Tonk).\nTurn 2: Wind-Up and you over kill Kafi, if you didn't get stunned.\nIf Iron Starlette got stunned bring in Darkmoon Tonk\nTurn 1: Shock and Awe\nTurn 2: Ion Cannon\n",
		["name"] = "Kafi",
		["tags"] = {
			"10171BB", -- [1]
			"120713Q", -- [2]
			"0127AI", -- [3]
		},
		["teamID"] = "team:222",
		["targets"] = {
			68563, -- [1]
		},
		["groupID"] = "group:2",
	},
	["team:223"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBEF2", -- [1]
			"BattlePet-0-00000E0BBF21", -- [2]
			"random:3", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/4953\n\nStrategy added by Mordred#1140\nI've tried some of the strategies here, and found them deficient, to say the least. Using Unborn Val'kyr against an Aquatic? Seriously?\n\nSo, I came up with my own. Since this pet tamer is not repeatable, I haven't been able to test it as many times as I would have liked, but this seems to work, and I have no reason to think it shouldn't work in the majority of cases, since it uses flyers.\n\nTurn 1-2: Bloodgazer Hatchling uses Falcosaur Swarm!\nTurn 3: Predatory Strike (Bloodgazer Hatchling may die here.) If so, skip to Turn 5.\nTurn 4: Savage Talon (if Bloodgazer Hatchling is still alive).\n\nTurn 5: After Bloodgazer Hatchling dies, switch to Direbeak Hatchling\n\nTurn 6: Ironskin\nTurns 7-8: Falcosaur Swarm!\nTurn 9: Predatory Strike (Blottis dies here.)\nIf not: bring in Any Flyer\nTurn 1: Any standard attack will finish the fight\n",
		["name"] = "Size Doesn't Matter",
		["tags"] = {
			"21181TP", -- [1]
			"12171TN", -- [2]
			"ZR3", -- [3]
		},
		["teamID"] = "team:223",
		["targets"] = {
			105898, -- [1]
		},
		["groupID"] = "group:4",
		["preferences"] = {
			["minXP"] = 25,
		},
	},
	["team:232"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBCA9", -- [1]
			"BattlePet-0-00000E0BBCAD", -- [2]
			"BattlePet-0-00000E0BBDCE", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/2186\n\nStrategy added by Jessail\nMy first \"strategy\" and second TD script. Should work well (i've tested it 5 times without a hitch).\n\n\n\nTurn 1: Build Turret\nTurn 2: Switch to Lil'Bling\nTurn 3: Make it Rain\nTurn 4: Switch to Ikky\nTurn 5: Flock\n",
		["name"] = "Unbreakable",
		["tags"] = {
			"001B8L", -- [1]
			"0015198", -- [2]
			"00181FS", -- [3]
		},
		["teamID"] = "team:232",
		["targets"] = {
			141215, -- [1]
		},
		["groupID"] = "group:5",
	},
	["team:170"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBCE7", -- [1]
			"BattlePet-0-00000E0BBDCA", -- [2]
			"BattlePet-0-00000E0BBCC3", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/626\n\nTurn 1: Howl\nTurn 2: Surge of Power - Mr. Terrible dies\nBring in your Hydraling\nTurn 1: Shell Armor\nTurns 2+: Deep Bite until Carroteye is dead\nSloppus comes in\nTurns 1+: Deep Bite until Hydraling dies\nBring in your Mechanical Pandaren Dragonling\nTurn 1: Decoy\nTurn 2: Thunderbolt\nTurns 3+: Breath until Sloppus is dead\n",
		["name"] = "Mr. Terrible, Carroteye and Sloppus",
		["tags"] = {
			"1126140", -- [1]
			"111A1G5", -- [2]
			"1225QC", -- [3]
		},
		["teamID"] = "team:170",
		["targets"] = {
			85517, -- [1]
		},
		["groupID"] = "group:3",
	},
	["team:7"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBF3E", -- [1]
			"BattlePet-0-00000E0BBCF3", -- [2]
			"BattlePet-0-00000E0BBC65", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/18585\n\nStrategy added by DragonsAfterDark\nThe same team can be used for the Epic (https://www.wow-petguide.com/Strategy/18586/Wildfire_-_Epic) & Rare (https://www.wow-petguide.com/Strategy/18587/Wildfire_-_Rare) versions.\n\nTurn 1: Blistering Cold\nTurn 2: Chop\nTurn 3: BONESTORM\nTurn 4: Blistering Cold\nBring in your Zandalari Anklerender\nTurn 5: Primal Cry if you're slower\nTurn 6: Black Claw\nTurns 7-8: Hunting Party\nBring in your Elfin Rabbit\nTurn 9+: Stampede\n",
		["name"] = "Wildfire - Legendary",
		["tags"] = {
			"11231TB", -- [1]
			"222415R", -- [2]
			"102BEV", -- [3]
		},
		["teamID"] = "team:7",
		["targets"] = {
			200688, -- [1]
		},
		["groupID"] = "group:7",
	},
	["team:182"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDD5", -- [1]
			"random:0", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/1796\n\nStrategy added by NostrA#2338\nYou can only use the first part in this strategy without swapping, but RNG can bring your Teroclaw Hatchling down then.\n\nIf you decide to go without swapping: delete the first Paragraph of the TD Script\n\nThe Swapping Strategy should work even against 3 Flying Pets\n\nyou can use this strategy for any generic Teroclaw fight\ndon't put important pets in the backline\n\nenemy HP < 618 : use Ravage\nif the enemy is a Flying Type, you want to use Ravage when the enemy HP is under 406 \nwhen not active: use Nature's Ward\nelse: use Alpha Strike\nEnemy Pet #3 comes in\nTurn 1: use Nature's Ward\nswap to Any Pet\nTurn 1+: Kill enemy with Standard Attacks\n",
		["name"] = "Deviate Smallclaw",
		["tags"] = {
			"22271C8", -- [1]
			"ZR0", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:182",
		["targets"] = {
			116786, -- [1]
		},
		["groupID"] = "group:1",
		["preferences"] = {
			["minXP"] = 25,
		},
	},
	["team:39"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBCA9", -- [1]
			"random:0", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/762\n\nTurns 1+: Blitz! Just use that spell over and over.\nThat's it, there is nothing more to this strategy :-)\n",
		["name"] = "All Howl, No Bite",
		["tags"] = {
			"020B8L", -- [1]
			"ZR0", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:39",
		["targets"] = {
			105842, -- [1]
		},
		["groupID"] = "group:4",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:58"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBCC3", -- [1]
			"BattlePet-0-00000E0BBD1B", -- [2]
			0, -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/18011\n\nStrategy added by Kalagren\nDO NOT USE 2 MPDs to complete all of the strat. Thanks Akéla#2848.\n\n2 backline Pound crits (vs non-mechanical) = 570 damage\n\n3rd pet will likely need to finish should you use 2 MPDs.\n\nMechanical Pandaren Dragonling comes in.\nTurn 1: Thunderbolt\nTurn 2: Explode\nBring in your Darkmoon Zeppelin\nTurn 3: Thunderbolt\nTurn 4: Explode\n",
		["name"] = "Eye of the Stormling",
		["tags"] = {
			"0215QC", -- [1]
			"021CAJ", -- [2]
			"ZL", -- [3]
		},
		["teamID"] = "team:58",
		["targets"] = {
			197447, -- [1]
		},
		["groupID"] = "group:7",
		["preferences"] = {
			["minHP"] = 571,
			["minXP"] = 13,
		},
	},
	["team:1"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD1B", -- [1]
			"BattlePet-0-00000E0BBDB3", -- [2]
			"BattlePet-0-00000E0BBCAD", -- [3]
		},
		["notes"] = "Strategy added by Begija\nThis fight is quite hard, but works 100% of the time. Part of strategy used from other guide here.\n\nTurn 1: Decoy\nTurn 2-6: Flyby until Zeppelin dies\nTurn 7 / Mech: Explode when ressurected\nBring in your Iron Starlette\nTurn 1: Wind-Up\nTurn 2: Swap to your Lil' Bling\nTurns 3-5: Inflation\nBring in your Iron Starlette\nTurn 1: Supercharge\nTurn 2: Wind-Up\n",
		["name"] = "Flummoxed (Mech)",
		["tags"] = {
			"222CAJ", -- [1]
			"12161BB", -- [2]
			"2115198", -- [3]
		},
		["teamID"] = "team:1",
		["targets"] = {
			1, -- [1]
		},
		["groupID"] = "group:7",
	},
	["team:175"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD0E", -- [1]
			"BattlePet-0-00000E0BBD1B", -- [2]
			0, -- [3]
		},
		["notes"] = "Strategy added by unknown\nChanged the strategy so it works with level 1 pets too -Shenk\n\nTurn 1: Arcane Blast\nTurn 2: Moonfire\nTurn 3: Evanescence\nTurns 4+: Arcane Blast until Crusher dies\nPounder comes in\nTurn 1: Evanescence\nTurns 2-5: 4x Arcane Blast\nTurn 6: Evanescence\nTurn 7+: Arcane Blast until Pounder dies\nMutilator comes in\nTurn 1+: Arcane Blast until Sprite Darter Hatchling dies\nBring in your Darkmoon Zeppelin\nTurns 1+: Missile until Mutilator has 618 or less health\nThen:: Explode\n",
		["name"] = "Wastewalker Shu",
		["tags"] = {
			"2115HD", -- [1]
			"122CAJ", -- [2]
			"ZL", -- [3]
		},
		["teamID"] = "team:175",
		["targets"] = {
			66739, -- [1]
		},
		["groupID"] = "group:2",
		["preferences"] = {
			["minHP"] = 300,
		},
	},
	["team:143"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDB3", -- [1]
			"random:0", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/11028\n\nStrategy added by bios\nTurn 1: Wind-Up\nTurn 2: Supercharge\nTurn 3: Wind-Up\nTurn 4: Wind-Up\nTurn 5: Wind-Up\n",
		["name"] = "Mega Bite",
		["tags"] = {
			"10161BB", -- [1]
			"ZR0", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:143",
		["targets"] = {
			173133, -- [1]
		},
		["groupID"] = "group:6",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:185"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD0C", -- [1]
			"BattlePet-0-00000E0BBDCE", -- [2]
			"BattlePet-0-00000E0BBCE7", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/11071\n\nStrategy added by Vallador#1409\nThanks to Deathrall for the script.\n\nUPDATE:  Put Chrominius in 3rd slot if you have it.  Otherwise, use something good for the last bit.\n\nStandard Val'kyr/Ikky setup.  Probably works with similar movesets, e.g. Kneebiter/Anklerender.  Comment if this strat fails for you and I'll look into it at some point.  Hope this helps!\n\nPer the comments, Chitterspine Skitterling is dope for this one too.  Also, \"Any\" 25 might  not do the trick.  Use one that isn't bad.  :))))\n\nTurn 1: Curse of Doom\nTurn 2: Haunt\nBring in Ikky.\nTurn 3: Black Claw\nTurns 4-6: Flock\nGorgemouth should be on it's undead turn.  Pass.\nOtherwise, finish with third pet and tank final attacks.\n",
		["name"] = "Failed Experiment",
		["tags"] = {
			"021316M", -- [1]
			"01181FS", -- [2]
			"0026140", -- [3]
		},
		["teamID"] = "team:185",
		["targets"] = {
			173274, -- [1]
		},
		["groupID"] = "group:6",
	},
	["team:43"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDEE", -- [1]
			"BattlePet-0-00000E0BBDB3", -- [2]
			"BattlePet-0-00000E0BBD09", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/10\n\nTurn 1: Sandstorm\nTurn 2: Crush\nTurn 3: Crush\nTurn 4: Crush\nTurn 5: Crush\nTurn 6: Crush - Sometimes Grubbles dies here already. In that case skip to Scrags.\nTurn 7: Deflection\nTurns 8+: Crush until Grubbles is dead\nScrags comes in\nTurn 1: Pass - you get stunned.\nTurn 2: Swap to Iron Starlette\nTurn 3: Wind-Up\nTurn 4: Supercharge\nTurns 5: Wind-Up\nStings comes in\nTurn 1: Wind-Up\nTurn 2: Powerball\nTurn 3: Supercharge\nTurn 4: Wind-Up\nTurn 5: If Iron Starlette died too early, bring Bring in Darkmoon Tonk and depending on Stings HP use either Shock and Awe or Ion Cannon or both starting with Shock and awe.\n",
		["name"] = "Grubbles, Scrags and Stings",
		["tags"] = {
			"1116143", -- [1]
			"11161BB", -- [2]
			"1127AI", -- [3]
		},
		["teamID"] = "team:43",
		["targets"] = {
			85626, -- [1]
		},
		["groupID"] = "group:3",
	},
	["team:96"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBEF2", -- [1]
			"BattlePet-0-00000E0BBDC4", -- [2]
			"BattlePet-0-00000E0BBEC8", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/1820\n\nStrategy added by KáPé\nTurn 1-2: Falcosaur Swarm!\nTurn 3: Predatory Strike\nTurn 4: Savage Talon\nTainted Maulclaw dies\na random pet comes in\nTurn 1-2: Falcosaur Swarm!\nTurn 3: Savage Talon until your pet dies\nbring in Emerald Proto-Whelp\nTurn 1: Emerald Dream if your pet's HP < 60%\nTurn 2: keep Emerald Presence buff on\nTurn 3: Emerald Bite until enemy dies\n",
		["name"] = "Tainted Maulclaw",
		["tags"] = {
			"21181TP", -- [1]
			"222A14F", -- [2]
			"12241LQ", -- [3]
		},
		["teamID"] = "team:96",
		["targets"] = {
			94641, -- [1]
		},
		["groupID"] = "group:3",
	},
	["team:275"] = {
		["pets"] = {
			0, -- [1]
			"BattlePet-0-00000E0BBCE7", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/942\n\nTurn 1: Pass\nTurn 2: Swap to Chrominius\nTurn 3+: Spam Arcane Explosion until only bones is left on the enemy team.\nSurge of Power and you kill bones putting him in undead mode for one round.\nBones comes back and kills Chrominius\nBring in your extra pet to soak up bones last attack before he dies.\n1: Pass and Bones dies.\n",
		["name"] = "Enbi'see, Mal, and Bones",
		["tags"] = {
			"ZL", -- [1]
			"2026140", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:275",
		["groupID"] = "group:3",
		["preferences"] = {
			["minXP"] = 15,
		},
	},
	["team:128"] = {
		["pets"] = {
			0, -- [1]
			"BattlePet-0-00000E0BBF3E", -- [2]
			"BattlePet-0-00000E0BBDCE", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/10036\n\nStrategy added by Dpaul\nLevel pet variation on Kylana#1731's strategy\n\nTurn 1: Pass\nBring in your Boneshard\nTurn 3: Blistering Cold\nTurn 4: Chop\nBring in your Ikky\nTurn 6: Black Claw\nTurn 7: Flock\n",
		["name"] = "Creakclank",
		["tags"] = {
			"ZL", -- [1]
			"11231TB", -- [2]
			"01181FS", -- [3]
		},
		["teamID"] = "team:128",
		["targets"] = {
			154925, -- [1]
		},
		["groupID"] = "group:5",
		["preferences"] = {
			["minHP"] = 1001,
			["minXP"] = 18,
		},
	},
	["team:252"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD0C", -- [1]
			"BattlePet-0-00000E0BBDCE", -- [2]
			0, -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/3094\n\nStrategy added by Starrbuck\nBased on the strategy created by CrazyFluffy\n\nTurn 1: Curse of Doom\nTurn 2: Haunt\nBring in your Level Pet\nTurn 1: Swap to your Ikky\nTurn 2: Black Claw\nTurn 3: Flock\nTurn 4: Nitun should be dead by now.\n",
		["name"] = "Nitun",
		["tags"] = {
			"021316M", -- [1]
			"01181FS", -- [2]
			"ZL", -- [3]
		},
		["teamID"] = "team:252",
		["targets"] = {
			68565, -- [1]
		},
		["groupID"] = "group:2",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:82"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD0C", -- [1]
			"BattlePet-0-00000E0BBDCE", -- [2]
			"BattlePet-0-00000E0BBDC4", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/714\n\nStrategy added by Nyari\nTurn 1: Curse of Doom\nTurn 2: Haunt\nBring in your Ikky\nTurn 1: Black Claw\nTurns 2+: Flock - Cursed Spirit dies\nAn enemy Pet comes in\nTurns 1+: Flock until Ikky dies\nTurn 8: Bring back your Val'kyr\nTurns 1+: Shadow Shock until your Val'kyr dies as well\nBring in your Emerald Proto-Whelp\nTurn 1: Emerald Presence\nTurns 2-4: Emerald Dream\nTurns 5+: Emerald Bite, reapply Emerald Presence and heal up with Emerald Dream if necessary.\n",
		["name"] = "Cursed Spirit",
		["tags"] = {
			"221316M", -- [1]
			"11181FS", -- [2]
			"222A14F", -- [3]
		},
		["teamID"] = "team:82",
		["targets"] = {
			94639, -- [1]
		},
		["groupID"] = "group:3",
	},
	["team:78"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD2F", -- [1]
			"BattlePet-0-00000E0BBE4E", -- [2]
			"BattlePet-0-00000E0BBCF3", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/5374\n\nStrategy added by Threewolves\nHave you ever noticed that anybody driving slower than you is an idiot, and anyone going faster than you is a maniac?\n\nTurn 1: Pass - Servant of Demidos is forced in.\nTurns 2+: Magic Sword til Clubber dies.\nSwap to your Zandalari Anklerender\nTurn 1: (Squirt Dives) Pass\nTurn 2: Black Claw\nTurn 3: Hunting Party\nSquirt dies. Squeezer enters.\nTurn 1: Black Claw\nTurns 2+: Leap til Zandalari Anklerender dies.\nBring in your Zandalari Kneebiter\nTurn 1: Hunting Party\nTurn 2: Leap til done.\n",
		["name"] = "Snakes on a Terrace",
		["tags"] = {
			"221814S", -- [1]
			"10041I1", -- [2]
			"212415R", -- [3]
		},
		["teamID"] = "team:78",
		["targets"] = {
			141945, -- [1]
		},
		["groupID"] = "group:5",
	},
	["team:122"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDB3", -- [1]
			"BattlePet-0-00000E0BBCC3", -- [2]
			0, -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/1364\n\nStrategy added by solidstate77#1969\nTurn 1: Wind-Up\nTurn 2: Wind-Up\nTurn 3: Explode\nBring in your Mechanical Pandaren Dragonling\nTurn 1: Breath\nTurn 2: Breath\nTurn 3: Explode\n",
		["name"] = "Watcher",
		["tags"] = {
			"10261BB", -- [1]
			"1015QC", -- [2]
			"ZL", -- [3]
		},
		["teamID"] = "team:122",
		["targets"] = {
			128019, -- [1]
		},
		["groupID"] = "group:4",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:243"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBF3E", -- [1]
			"BattlePet-0-00000E0BBDCE", -- [2]
			"BattlePet-0-00000E0BBCF3", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/18686\n\nStrategy added by Eraea\nThis is a Strat By  ElmaSaenji from Wowhead https://www.wowhead.com/npc=200684/vortex#comments\n\nTurn 1: Blistering Cold\nTurn 2: Chop\nTurn 3: BONESTORM Boneshard will use undead ability and raise\nTurn 4: Blistering Cold\nTurn 5: Boneshard Dies\nTurn 6: Black Claw\nTurns 7-9: Flock\n",
		["name"] = "Vortex - Legendary",
		["tags"] = {
			"11231TB", -- [1]
			"11181FS", -- [2]
			"212415R", -- [3]
		},
		["teamID"] = "team:243",
		["targets"] = {
			200684, -- [1]
		},
		["groupID"] = "group:7",
	},
	["team:277"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDA1", -- [1]
			0, -- [2]
			"BattlePet-0-00000E0BBDBB", -- [3]
		},
		["notes"] = "Strategy added by psofia\nUPDATE: This strategy by [url=https://www.wowhead.com/npc=85519/christoph-vonfeasel#comments:id=2476643]Rikade on Wowhead[/url] still works as of the Shadowlands pre-patch. As stated in the comments below if you have a P/S, P/P, P/B Starlette AND you get critted by Otto, you will die and have to start over. It doesn't happen very often from my experience with a P/B Starlette.\n\nTurn 1: Sweep\nOtto comes in\nTurn 2: Wind-Up [Just once, you will need it later]\nSwap to your Iron Starlette\nTurn 1: Wind-Up\nTurn 2: Supercharge\nTurn 3: Wind-Up - Otto dies\nSyd comes in\nTurn 1-3: Toxic Smoke x3 to remove Syd's bubble - Iron Starlette dies \nSwap to your Level Pet\nSwap to your Enchanted Broom\nTurn 1: Sweep\nMr. Pointy comes in\nTurn 1: Wind-Up\nTurn 2: Wind-Up\nTurn 3: Wind-Up - Mr. Pointy dies\nSyd comes in\nTurn 1-2: Batter x2 - Syd dies\n",
		["name"] = "Christoph VonFeasel",
		["tags"] = {
			"22256L", -- [1]
			"ZL", -- [2]
			"12171BB", -- [3]
		},
		["teamID"] = "team:277",
		["groupID"] = "group:none",
		["targets"] = {
			85519, -- [1]
		},
	},
	["team:2"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBCF3", -- [1]
			"BattlePet-0-00000E0BBDCE", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/4632\n\nStrategy added by Kurasu#2861\nI use Ikky as the base as it tends to be a common pet for people to have (as it's easily available and powerful), but almost any fast 'Flock' pet (I.E. most fliers) will do in a pinch. \n\nBy using the 'sacrificial play' in this way, your 'Flock' has the benefit of the armor break and Black Claw both, wiping the floor with him. Swapping to Ikky would require an extra turn, thus losing on the benefits of broken armor.\n\nTurn 1: Primal Cry\nTurn 2: Black Claw\nTurn 3: Hunting Party. Zandalari Anklerender will die.\nBring in your Ikky\nTurn 1: Flock. Skitterer Xi'a dies.\n",
		["name"] = "Skitterer Xi'a",
		["tags"] = {
			"222415R", -- [1]
			"10181FS", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:2",
		["targets"] = {
			68566, -- [1]
		},
		["groupID"] = "group:2",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:193"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBCC3", -- [1]
			"BattlePet-0-00000E0BBD1B", -- [2]
			0, -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/8522\n\nStrategy added by norng\nPriority 1: Explode when Essence of Mana has 469 or less health\nPriority 2: Thunderbolt\nPriority 3: Breath, Missile\n",
		["name"] = "Mana Tap",
		["tags"] = {
			"1215QC", -- [1]
			"121CAJ", -- [2]
			"ZL", -- [3]
		},
		["teamID"] = "team:193",
		["targets"] = {
			105352, -- [1]
		},
		["groupID"] = "group:4",
		["preferences"] = {
			["minXP"] = 15,
		},
	},
	["team:149"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBE44", -- [1]
			"BattlePet-0-00000E0BBD04", -- [2]
			"BattlePet-0-00000E0BBD22", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/18732\n\nStrategy added by trogdor\nNot the fastest, but I didn't have some of the pets from other strats. This is a 100% wild pet strat, so easy on the AH budget!\n\nTurn 1: Rip\nTurn 2: Blood in the Water\nDrakeula comes in\nTurn 1: Rip\nBring in your Arctic Hare\nTurn 2: Dodge\nTurns 3-5: Stampede\nTurn 6: Pass while Drakeula has its \"undead\" round\nYu'shor comes in\nTurns 1-2: Stampede\nBring in your Kun-Lai Runt\nTurn 3: Frost Shock\nTurn 4: Deep Freeze\nTurn 5: Takedown\n",
		["name"] = "Paws of Thunder",
		["tags"] = {
			"10241HD", -- [1]
			"0229K1", -- [2]
			"222814E", -- [3]
		},
		["teamID"] = "team:149",
		["targets"] = {
			201878, -- [1]
		},
		["groupID"] = "group:7",
	},
	["team:71"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD0C", -- [1]
			"BattlePet-0-00000E0BBDCE", -- [2]
			"random:6", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/5969\n\nStrategy added by nurkka\nThird pet not brought in. I used a Magic pet to assure it would stay alive from the wave attacks.\n\nTurn 1: Shadow Shock\nTurn 2: Curse of Doom\nTurn 3: Haunt\nBring in your Ikky\nTurns 1-3: Flock\n",
		["name"] = "Prince Wiggletail",
		["tags"] = {
			"221316M", -- [1]
			"00181FS", -- [2]
			"ZR6", -- [3]
		},
		["teamID"] = "team:71",
		["targets"] = {
			154910, -- [1]
		},
		["groupID"] = "group:5",
		["preferences"] = {
			["minXP"] = 25,
		},
	},
	["team:131"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDB3", -- [1]
			0, -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/2216\n\nStrategy added by Laponko\nTurn 1: Wind-Up\nTurn 2: Supercharge\nTurn 3: Wind-Up\nTurn 4: Wind-Up\nTurn 5: Swap to Level Pet\nTurn 6: Swap to Iron Starlette\nTurn 7: Wind-Up\n",
		["name"] = "You've Never Seen Jammer Upset",
		["tags"] = {
			"11161BB", -- [1]
			"ZL", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:131",
		["targets"] = {
			142151, -- [1]
		},
		["groupID"] = "group:5",
		["preferences"] = {
			["minHP"] = 501,
			["minXP"] = 25,
		},
	},
	["team:34"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBF21", -- [1]
			"BattlePet-0-00000E0BBED0", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/2255\n\nStrategy added by Eekwibble\nI changed this from having a carry pet because the xp is so lame since the nerf. The upside is, it now only lasts 13 rounds.\n\nTurn 1: Ironskin\nTurns 2&3: Falcosaur Swarm!\nTurn 4: Predatory Strike - Fungus dies\nMort comes in\nTurn 1: Pass\nTurn 2: Ironskin\nTurns 3&4: Falcosaur Swarm!\nTurn 5: Predatory Strike - Mort dies\nOld Blue comes in\nTurn 1+: Falcosaur Swarm! until Direbeak Hatchling dies\nBring in your Snowfeather Hatchling\nThen:: Predatory Strike - Old Blue dies\n",
		["name"] = "That's a Big Carcass",
		["tags"] = {
			"12171TN", -- [1]
			"00151TM", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:34",
		["targets"] = {
			141292, -- [1]
		},
		["groupID"] = "group:5",
		["preferences"] = {
			["minXP"] = 25,
		},
	},
	["team:195"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBCC3", -- [1]
			"BattlePet-0-00000E0BBC81", -- [2]
			0, -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/5130\n\nStrategy added by Shenk\nFight takes 11-12 rounds.\n\nThere is a rare chance for the strat to fail when the Imp lands a crit and rolls high on Burn.\nSometimes it wouldn't matter but if you want to play it safe use Ancient Blessing after the first BONESTORM (and remove \"& self.hpp>100\" from the TD script).\n\nTurn 1: Thunderbolt\nTurn 2: Pass\nFossilized Hatchling is swapped in\nTurn 1: BONESTORM\nTurn 2-4: Bone Bite until Trixy dies\nTurn 5: BONESTORM during your undead round\nBring in your Mechanical Pandaren Dragonling\nTurn 1+: Breath until Globs dies\nNightmare Sprout comes in\nTurn 1: Thunderbolt\nTurn 2: Explode\n",
		["name"] = "Dealing with Satyrs",
		["tags"] = {
			"1215QC", -- [1]
			"20288A", -- [2]
			"ZL", -- [3]
		},
		["teamID"] = "team:195",
		["targets"] = {
			104970, -- [1]
		},
		["groupID"] = "group:4",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:69"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBCE7", -- [1]
			"BattlePet-0-00000E0BBDB3", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/2082\n\nStrategy added by Phacoid\nUpdate May 12 2020: removed leveling pet\n\nTurn 1: Howl\nTurn 2: Surge of Power - Buzzbeak dies\nTurn 3-4: Recovering - you can't do anything\nTurn 5: Swap to your Iron Starlette\nTurn 6: Wind-Up\nTurn 7: Supercharge\nTurn 8: Wind-Up - Tikka dies\nTurn 9: Powerball\nTurn 10: Wind-Up\nTurn 11: Wind-Up - attack goes through, Iron Starlette might die\nTurn 12+: Powerball until Iron Starlette dies\nBring in your Chrominius\nTurn 1+: Bite until Milo dies\n",
		["name"] = "Keeyo's Champions of Vol'dun",
		["tags"] = {
			"1126140", -- [1]
			"11161BB", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:69",
		["targets"] = {
			141879, -- [1]
		},
		["groupID"] = "group:5",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:188"] = {
		["pets"] = {
			0, -- [1]
			"BattlePet-0-00000E0BBE3A", -- [2]
			"BattlePet-0-00000E0BBCC3", -- [3]
		},
		["notes"] = "Strategy added by Bösendorfer\nThis excellent strat was published on wowhead by Posh. it works great every time. I made a TD script for it that I hope will work too.\n\nTurn 1: Pass\nTurn 2: Swap to your Silkbead Snail\nTurn 3: Acidic Goo\nTurns 4-5: Dive\nTurn 6+: Absorb till Pandaren Earth Spirit is dead\nSludgy comes in\nTurn 1: Acidic Goo\nTurn 2: Absorb till Silkbead Snail is dead\nBring in your Mechanical Pandaren Dragonling\nTurn 1: Breath till Sludgy is dead\nDarnak the Tunneler comes in\nTurn 1: Bombing Run\nTurn 2: Breath\nTurn 3: Decoy\nTurn 4: Breath till Darnak the Tunneler is dead\n\n",
		["name"] = "Thundering Pandaren Spirit",
		["tags"] = {
			"ZL", -- [1]
			"2119HO", -- [2]
			"1125QC", -- [3]
		},
		["teamID"] = "team:188",
		["targets"] = {
			68465, -- [1]
		},
		["groupID"] = "group:2",
	},
	["team:220"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBC94", -- [1]
			"random:0", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/156\n\nBring at least one level 25 pet along that can hit a bit harder. Do not use critters for this one, anything that has a single attack with more than 250 damage. The higher, the better.\n\nTurn 1: Blackout Kick\nTurn 2: Takedown\nTurn 3: Takedown\nTurn 4: Takedown\nTurn 5: Staggered Steps\nTurn 6: Takedown\n\nRepeat from Turn 1 until you or Yu'la dies.\nIf you are very unlucky, bring in your other pets and finish Yu'la off using high-damage abilities. Watch out to not waste cooldowns when Yu'la is in the air.\n",
		["name"] = "Yu'la, Broodling of Yu'lon",
		["tags"] = {
			"22287O", -- [1]
			"ZR0", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:220",
		["targets"] = {
			72291, -- [1]
		},
		["groupID"] = "group:1",
		["preferences"] = {
			["minXP"] = 25,
		},
	},
	["team:76"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDCE", -- [1]
			"BattlePet-0-00000E0BBF21", -- [2]
			"BattlePet-0-00000E0BBDD5", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/1789\n\nStrategy added by Wolf103#1637\nTurn 1: Black Claw\nDirebeak Hatchling gets forced in\nTurn 3: Ironskin\nTurn 4: Falcosaur Swarm!\nTurn 5: Falcosaur Swarm! continues\nTurn 6: Predatory Strike\nTeroclaw Hatchling gets forced in\nTurn 8: Ravage\n",
		["name"] = "Bucky",
		["tags"] = {
			"01081FS", -- [1]
			"12171TN", -- [2]
			"00271C8", -- [3]
		},
		["teamID"] = "team:76",
		["targets"] = {
			128013, -- [1]
		},
		["groupID"] = "group:4",
	},
	["team:27"] = {
		["pets"] = {
			0, -- [1]
			"BattlePet-0-00000E0BBCA9", -- [2]
			"BattlePet-0-00000E0BBD13", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/22\n\nStrategy added by Aranesh\nTurn 1: Pass\nTurn 2: Swap to Clockwork Gnome\nTurn 3: Build Turret\nTurn 4: Metal Fist - this will get interrupted\nTurns 5-6: Repair\nTurn 7: Build Turret\nTurn 8: Metal Fist\nTurn 9: Metal Fist\nTurn 10: Build Turret - Serendipity dies\nGrace comes in\nTurn 11: Metal Fist - Grace will cast Lightning, sealing its own fate thanks to your turrets ^^\nTurn 12: Metal Fist - don't bother repairing again. Your gnome won't survive long enough.\nIf your Clockwork Gnome survived, build another turret and keep using Metal Fist until it dies.\nAtonement should be out when you switch to your Pandaren Water Spirit\nDepending on how much life Atonement still has, you can either Water Jet it down (less than 500 HP) or use Geyser, Dive, Water Jet to finish the fight\n",
		["name"] = "Taralune",
		["tags"] = {
			"ZL", -- [1]
			"111B8L", -- [2]
			"1229R4", -- [3]
		},
		["teamID"] = "team:27",
		["targets"] = {
			87125, -- [1]
		},
		["groupID"] = "group:3",
	},
	["team:68"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD0C", -- [1]
			"BattlePet-0-00000E0BBDCE", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/1250\n\nStrategy added by Aranesh\nTurn 1: Curse of Doom\nTurn 2: Haunt\nBring in Ikky\nTurn 3: Black Claw\nTurn 4: Flock\n",
		["name"] = "Gnasher",
		["tags"] = {
			"121316M", -- [1]
			"11181FS", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:68",
		["targets"] = {
			128012, -- [1]
		},
		["groupID"] = "group:4",
	},
	["team:138"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBF3E", -- [1]
			"BattlePet-0-00000E0BBCF3", -- [2]
			0, -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/7987\n\nStrategy added by Vulpixie\nWorked well for me when I had to have the Shadowbarb Hatchling in the team.\nIkky with Black Claw and Flock is also an acceptable alternative to the Zandalari.\n\nThank you to DragonsAfterDark for fixing my script.\n\nTurn 1: Blistering Cold\nTurn 2: Chop\nTurn 3: BONESTORM\nTurn 4: Chop until Boneshard dies\nBring in your Zandalari Anklerender\nTurn 1: Black Claw\nTurn 2: Hunting Party\nTurn 8: Zandalari dies, Blistering Cold should finish off the battle with your level pet getting some XP\n",
		["name"] = "Dune Buggy",
		["tags"] = {
			"11231TB", -- [1]
			"202415R", -- [2]
			"ZL", -- [3]
		},
		["teamID"] = "team:138",
		["targets"] = {
			162465, -- [1]
		},
		["groupID"] = "group:5",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:270"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDEE", -- [1]
			0, -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/957\n\nTurn 1: Sandstorm\nTurn 2: Swap to level pet.\nTurn 3: Swap back to Anubisath Idol\nTurn 4+: Crush until Nicodemus is dead.\nBrisby comes in.\nTurn 1: Sandstorm\nTurn 2: Crush until Brisby is dead.\nJenner comes in.\nSandstorm\nTurn 1: Crush until Jenner is dead.\n",
		["name"] = "Nicodemus, Brisby, and Jenner",
		["tags"] = {
			"1106143", -- [1]
			"ZL", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:270",
		["groupID"] = "group:3",
		["preferences"] = {
			["minXP"] = 20,
		},
	},
	["team:83"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDCE", -- [1]
			"BattlePet-0-00000E0BBF21", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/5966\n\nStrategy added by Ktjn\nTurn 1: Black Claw\nTurn 2+: Flock\nIkky dies\nTurn 4: Bring in Direbeak Hatchling\nTurn 5: Predatory Strike\n",
		["name"] = "Shadowspike Lurker",
		["tags"] = {
			"01181FS", -- [1]
			"00171TN", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:83",
		["targets"] = {
			154913, -- [1]
		},
		["groupID"] = "group:5",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:63"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBE3B", -- [1]
			"BattlePet-0-00000E0BBCF7", -- [2]
			"BattlePet-0-00000E0BBC6D", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/1983\n\nStrategy added by sistercoyote\nFrom Hazelnutty (https://www.youtube.com/watch?v=bKgB5o6tKq8). She uses a Mac Frog; I use a Garden Frog. Any Rare 25 frog will do.\n\nTurn 1: Swarm of Flies\nTurn 2: Tongue Lash\nTurn 3: Tongue Lash unless health is low and Socks is still alive, in which case Healing Wave\nRefresh Swarm of Flies as needed\nMonte comes in\nTurn 1: Continue as established until Garden Frog dies\nBring in your Dragonbone Hatchling\nTurn 1: Thrash until Monte dies\nRikki comes in\nTurn 1: Lift-Off\nTurn 2: Thrash until Dragonbone Hatchling dies\nBring in your Gilnean Raven\nTurn 1: Call Darkness\nTurn 2: Nocturnal Strike\n",
		["name"] = "Sully \"The Pickle\" McLeary",
		["tags"] = {
			"2123HP", -- [1]
			"2016GP", -- [2]
			"0218JM", -- [3]
		},
		["teamID"] = "team:63",
		["targets"] = {
			71929, -- [1]
		},
		["groupID"] = "group:1",
	},
	["team:98"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD2E", -- [1]
			"BattlePet-0-00000E0BBD92", -- [2]
			"BattlePet-0-00000E0BBCE7", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/11130\n\nStrategy added by Faymos#1176\nStrategy based on original by Shenk, but flipped 1st and last pet based on comment by Bighoff.\n\nTurn 1: Arcane Storm\nTurns 2-4: Mana Surge\nNeedlenose comes in\nTurn 5: Swap to your Xu-Fu, Cub of Xuen\nTurn 6: Prowl\nTurn 7: Moonfire\nBrite comes in\nTurn 8: Swap to your Chrominius\nTurn 9: Howl\nTurns 10-12: Surge of Power\n",
		["name"] = "Airborne Defense Force",
		["tags"] = {
			"022414D", -- [1]
			"022417I", -- [2]
			"0126140", -- [3]
		},
		["teamID"] = "team:98",
		["targets"] = {
			173377, -- [1]
		},
		["groupID"] = "group:6",
	},
	["team:21"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBCA9", -- [1]
			"BattlePet-0-00000E0BBDCE", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/9026\n\nStrategy added by Shin\nI've tested this on 10 characters and it has worked every time.\nPet battle script included.\n\nTurn 1: Metal Fist\nTurn 2: Build Turret\nTurn 3: Swap to your Ikky\nTurn 4: Black Claw\nTurns 5-7: Flock\n~: Ikky should kill thistle or the turret will finish it off\nBring in your Clockwork Gnome\nTurn 1+: Any standard attack will finish the fight\n",
		["name"] = "Stand Up to Bullies",
		["tags"] = {
			"111B8L", -- [1]
			"11181FS", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:21",
		["targets"] = {
			105009, -- [1]
		},
		["groupID"] = "group:4",
	},
	["team:123"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDCE", -- [1]
			"BattlePet-0-00000E0BBCE6", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/7632\n\nStrategy added by Lazey\n*** 9.0.2 approved ***\n\nDragonkins with <305 Power will need  2x Breath.\n\nTurn 1: Black Claw\nTurns 2-3: Flock (Ikky dies)\nBring in your Spawn of Onyxia\nTurn 4: Scorched Earth\nTurn 5+: Breath\n",
		["name"] = "I Am The One Who Whispers",
		["tags"] = {
			"01181FS", -- [1]
			"1208F9", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:123",
		["targets"] = {
			162461, -- [1]
		},
		["groupID"] = "group:5",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:105"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD13", -- [1]
			"BattlePet-0-00000E0BBD2E", -- [2]
			"random:8", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/9497\n\nStrategy added by DragonsAfterDark\nThere seems to be an issue with using Duration and < or > conditionals with non-active enemy abilites. The script I posted *did* work, just not with the most recent update. I had some kind of leftover from the previous version that didn't cause this issue for me. \n\nI've posted a new script. Deleted the one in-game, copied from here, and re-tested. It worked. \n\nVideo for Fight (https://www.youtube.com/watch?v=XggSOaSORe4&t=6s)\n\nTurn 1: Whirlpool\nTurns 2-3: Dive\nTurn 4+: Water Jet until Ash dies\nFang comes in\nTurn 1: Whirlpool\nTurn 2+: Water Jet until Pandaren Water Spirit dies\nBring in your Nexus Whelpling\nTurn 1: Arcane Storm\nTurns 2-4: Mana Surge\nSwarm comes in\nTurn 1+: Mana Surge may continue\n~~: Arcane Storm & Tail Sweep until Swarm or Nexus Whelp dies\nIf needed:\nBring in your Beast pet\nTurn 1: Any standard attack will finish the fight\n",
		["name"] = "Resilient Survivors",
		["tags"] = {
			"1219R4", -- [1]
			"122414D", -- [2]
			"ZR8", -- [3]
		},
		["teamID"] = "team:105",
		["targets"] = {
			173315, -- [1]
		},
		["groupID"] = "group:6",
		["preferences"] = {
			["minXP"] = 25,
		},
	},
	["team:276"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBCC3", -- [1]
			"BattlePet-0-00000E0BBDD1", -- [2]
			0, -- [3]
		},
		["notes"] = "Strategy added by Dark#1211\nStrategy from Incandio via Wowhead. I now prefer this strategy over the MPD+Tonk strategy that I used for years. There is one possible stun RNG when swapping to Molten Corgi, but it doesn't make you lose the fight. It's even possible to defeat Fezwick before MPD even dies.\n\nTurn 1: Decoy\nTurn 2: Thunderbolt\nTurn 3: Breath until Judgment dies.\nHonky-Tonk comes in\nTurn 4: Swap to your Molten Corgi\nTurn 5-7: Puppies of the Flame\nTurn 8: Flamethrower\nTurn 9+: Cauterize if you take a hit from the laser, else Flamethrower until Honky-Tonk dies.\nFezwick comes in\nTurn 10: Swap to your Level Pet\nTurn 11: Swap to your Mechanical Pandaren Dragonling\nTurn 12: Decoy\nTurn 13: Thunderbolt\nTurn 14: Breath until Mechanical Pandaren Dragonling dies.\nTurn 15: Swap to your Molten Corgi\nPrio 1: Puppies of the Flame\nPrio 2: Flamethrower\n",
		["name"] = "Jeremy Feasel",
		["tags"] = {
			"1225QC", -- [1]
			"22151DB", -- [2]
			"ZL", -- [3]
		},
		["teamID"] = "team:276",
		["groupID"] = "group:none",
		["targets"] = {
			67370, -- [1]
		},
	},
	["team:274"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBCF5", -- [1]
			0, -- [2]
			0, -- [3]
		},
		["notes"] = "Strategy added by WildCard\nThe same team can be used for all < 21 trainers.Full TD Script for them is in this [url=https://wow-petguide.com/Comment/95382]comment[/url].\n\nTurn 1: Swap to your Level Pet #2\nTurn 2: Swap to your Level Pet #3\nTurn 3: Swap to your Celestial Dragon\nPriority 1: Ancient Blessing if health < 70%\nPriority 2: Moonfire\nPriority 3: Flamethrower\n",
		["name"] = "Low lvl fights",
		["tags"] = {
			"11167V", -- [1]
			"ZL", -- [2]
			"ZL", -- [3]
		},
		["teamID"] = "team:274",
		["groupID"] = "group:none",
		["preferences"] = {
			["minHP"] = 388,
		},
	},
	["team:92"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD5D", -- [1]
			"BattlePet-0-00000E0BBE6D", -- [2]
			"BattlePet-0-00000E0BBD8E", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/140\n\nTurn 1: Bite\nTurns 2+3: Dive\nTurn 4: Bite\nTurn 5: Survival\nTurns 6+: Bite until Au is dead\nBanks comes in\nTurns 1+: Bite until your Civet dies\nBring in your Electrified Razortooth\nTurn 1: Rip\nTurn 2: Blood in the Water\nTurn 3: Rip\nTurns 4+5: Devour - Banks dies\nLil' B comes in\nTurn 1: Rip\nTurn 2: Blood in the Water\nTurns 3+4: Devour\nTurns 5+: Rip until your Razortooth dies\nBring in your Fel Flame\nTurn 1: Immolate\nTurn 2: Conflagrate\nTurn 3: Burn until you're done\n",
		["name"] = "Blingtron 4000",
		["tags"] = {
			"1225ND", -- [1]
			"121314R", -- [2]
			"1119G7", -- [3]
		},
		["teamID"] = "team:92",
		["targets"] = {
			71933, -- [1]
		},
		["groupID"] = "group:1",
	},
	["team:156"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDB3", -- [1]
			0, -- [2]
			0, -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/8545\n\nStrategy added by Phil\nTurn 1: Wind-Up\nTurn 2: Wind-Up\nTurn 3: Explode\nLevel 1 Pets get 160xp each whil wearing Safari Hat\n",
		["name"] = "Gnawface",
		["tags"] = {
			"10261BB", -- [1]
			"ZL", -- [2]
			"ZL", -- [3]
		},
		["teamID"] = "team:156",
		["targets"] = {
			85419, -- [1]
		},
		["groupID"] = "group:3",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:271"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDCE", -- [1]
			"BattlePet-0-00000E0BBD1B", -- [2]
			0, -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/6593\n\nStrategy added by Threewolves\nThis strategy has been updated to include the possibilities of stuns. Hopefully, it accounts for all variables.\n\nTurn 1: Black Claw\nTurns 2+: Flock\nTurn 3: Black Claw\nTurns 4+: Flock til Ikky dies or gets stunned.\nBring in your Darkmoon Zeppelin if Ikky was stunned.\nBring in your Level Pet if Ikky died. Then, swap to your Darkmoon Zeppelin. Pass if stunned.\nTurn 1: Decoy (skip if leveling pet has already been swapped in)\nTurn 2: Swap to your Level Pet. (skip if leveling pet has already been swapped in)\nTurn 3: Swap to your Darkmoon Zeppelin. (skip if leveling pet has already been swapped in)\nTurns 4+: Missile til Carl is below 573 HP.\nTurn 5: Explode\n",
		["name"] = "Moon, Mouthy, and Carl",
		["tags"] = {
			"01181FS", -- [1]
			"122CAJ", -- [2]
			"ZL", -- [3]
		},
		["teamID"] = "team:271",
		["groupID"] = "group:3",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:256"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBCF3", -- [1]
			"BattlePet-0-00000E0BBDCE", -- [2]
			"BattlePet-0-00000E0BBDC4", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/12263\n\nStrategy added by matsminer#2480\nFound this strategy on wowhead created by Hunt3x\nTried writing a script for it, but dont know if it will work\n\nTurn 1: Primal Cry\nTurn 2: Black Claw\nTurns 3-4: Hunting Party - Sometimes the pet might die before the second turn of Hunting Party, should still work\nTurn 5-6: Flock\nTurn 7: Emerald Presence\nTurn 8: Emerald Dream\nTurn 9: Emerald Bite\nTurn 10+: Emerald Bite - Keeping using emerald bite, fill in with emerald presence if it runs out, and emerald dream if you get >700 HP\n",
		["name"] = "Dreadwalker",
		["tags"] = {
			"222415R", -- [1]
			"11181FS", -- [2]
			"222A14F", -- [3]
		},
		["teamID"] = "team:256",
		["targets"] = {
			94647, -- [1]
		},
		["groupID"] = "group:3",
	},
	["team:266"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBCF3", -- [1]
			"BattlePet-0-00000E0BBDC4", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Strategy added by Aranesh\nTurn 1: Black Claw\nTurns 2+3: Hunting Party\nTurn 4: Leap until Growing Ectoplasm is dead\nAn enemy pet comes in\nTurns 1+: Black Claw and Hunting Party until your Zandalari Anklerender dies\nBring in your Emerald Proto-Whelp\nTurn 1: Emerald Presence\nTurns 2+: Keep Emerald Presence active, use Emerald Dream when you drop below 1000 health and use Emerald Bite to finish the enemy pets.\n",
		["name"] = "Growing Ectoplasm 2",
		["tags"] = {
			"212415R", -- [1]
			"222A14F", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:266",
		["groupID"] = "group:1",
	},
	["team:37"] = {
		["pets"] = {
			0, -- [1]
			"BattlePet-0-00000E0BBEAC", -- [2]
			"BattlePet-0-00000E0BBD0F", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/5195\n\nStrategy added by sistercoyote\nStrat by roeevv on Wowhead (https://www.wowhead.com/npc=71924/wrathion#comments:id=2478101). I personally haven't tested this one yet.\n\nBring in your Level Pet\nTurn 1: Pass\nTurn 2: Swap to your Ghastly Kid\nTurn 3: Consume Magic\nTurn 4: Hoof\nConsume Magic on Cindy's Undead round\nAlex comes in\nTurn 1: Haunt\nBring in your Scourged Whelpling\nTurn 1: Call Darkness\nTurn 2-4: Dreadful Breath\nContinue as described.\nIf Scourged Whelpling doesn't kill Dah'da, bring Ghastly Kid back and Hoof.\nTurn 8: \n",
		["name"] = "Wrathion",
		["tags"] = {
			"ZL", -- [1]
			"11261D2", -- [2]
			"2126GQ", -- [3]
		},
		["teamID"] = "team:37",
		["targets"] = {
			71924, -- [1]
		},
		["groupID"] = "group:1",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:184"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBE76", -- [1]
			"BattlePet-0-00000E0BBF3E", -- [2]
			"BattlePet-0-00000E0BBCF3", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/18745\n\nStrategy added by DragonsAfterDark\nThe same team can be used for the Legendary (https://www.wow-petguide.com/Strategy/18743/Tremblor_-_Legendary) & Epic (https://www.wow-petguide.com/Strategy/18744/Tremblor_-_Epic) versions.\n\nTurn 1: Tail Sweep if faster than Tremblor\nTurn 2: Call Lightning\nTurn 3: Swap to your Boneshard\nTurn 4: Blistering Cold\nTurn 5: Chop\nTurn 6: BONESTORM\nTurn 7: Chop\nBring in your Wild Jade Hatchling\nTurn 8: Call Lightning\nTurn 9: Swap to your Zandalari Anklerender\nTurn 10: Black Claw\n~: Hunting Party if needed\n",
		["name"] = "Tremblor - Rare",
		["tags"] = {
			"2107PH", -- [1]
			"11231TB", -- [2]
			"202415R", -- [3]
		},
		["teamID"] = "team:184",
		["targets"] = {
			200693, -- [1]
		},
		["groupID"] = "group:7",
	},
	["team:38"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBEAB", -- [1]
			0, -- [2]
			0, -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/10922\n\nStrategy added by Bumrusher\nTurn 1: Sunlight\nTurn 2: Nature's Ward\nTurn 3: Swap to Level Pet 2\nTurn 4: Swap to Level Pet 3\nTurn 5: Swap to Puddle Terror\nTurn 6: Nature's Ward\nTurn 7: Sunlight\nTurn 8: Nature's Ward\nTurn 9: Nature's Ward\nTurn 10: Nature's Ward\nTurn 11: Nature's Ward\nTurn 12: Nature's Ward\nTurn 13: Sunlight\nRepeat Turn 8 to 13 until Gyrexle, the Eternal Mechanic dies\nUse Punch 309 Damage or Sunlight to bring Idol of Decay under 250 health\nIdol of Decay will use his revive ability when he does this use Nature's Ward\nOnce the revive ability drops off kill Idol of Decay\nWishbright Lantern Will enter with less then 618 health\nTurn 1: Punch\nTurn 2: Punch\n",
		["name"] = "Cymre Brightblade",
		["tags"] = {
			"21181H0", -- [1]
			"ZL", -- [2]
			"ZL", -- [3]
		},
		["teamID"] = "team:38",
		["targets"] = {
			83837, -- [1]
		},
		["groupID"] = "group:3",
		["preferences"] = {
			["minHP"] = 121,
			["minXP"] = 1,
		},
	},
	["team:117"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDCE", -- [1]
			"BattlePet-0-00000E0BBCC3", -- [2]
			0, -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/9777\n\nStrategy added by Mnrogar\nTurn 1: Black Claw\nTurns 2-4: Flock\nBring in your Mechanical Pandaren Dragonling\nTurn 1: Breath\nTurn 2: Thunderbolt\nTurn 3: Explode\n",
		["name"] = "Gnomefeaster",
		["tags"] = {
			"01181FS", -- [1]
			"1215QC", -- [2]
			"ZL", -- [3]
		},
		["teamID"] = "team:117",
		["targets"] = {
			154922, -- [1]
		},
		["groupID"] = "group:5",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:221"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBCDD", -- [1]
			"BattlePet-0-00000E0BBE4E", -- [2]
			0, -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/8996\n\nStrategy added by Sleepywillo\nAll credit for this strat goes to Niggles.\nI noticed this pet combo wasnt here so thought I would add it.\nTiny Twister NEEDS to be H/S breed to work.\n\nTurn 1: Call Lightning\nTurn 2: Wild Winds\nTurn 3: Switch to Servant of Demidos\nTurn 4: Siphon Anima and Ancient Catacomb Spider should die here.\nTurn 5: Catacomb Bat comes in. Use Magic Sword\nTurn 6: Soulrush and Catacomb Bat dies.\nTurn 7: Switch to Level Pet (it will get blinded by Blinding Poison).\nTurn 8: Switch back to Tiny Twister\nTurn 9: Call Lightning. (IfTiny Twister dies here bring in Servant of Demidos and use Siphon Anima followed by Soulrush).\nTurn 10: Wild Winds. Tiny Twister dies. Bring in Servant of Demidos.\nTurn 11: Siphon Anima\n",
		["name"] = "Clear the Catacombs",
		["tags"] = {
			"2129DT", -- [1]
			"12241I1", -- [2]
			"ZL", -- [3]
		},
		["teamID"] = "team:221",
		["targets"] = {
			105323, -- [1]
		},
		["groupID"] = "group:4",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:32"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDCE", -- [1]
			0, -- [2]
			"BattlePet-0-00000E0BBCAD", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/1717\n\nStrategy added by Lazey\n*** 9.0.2 approved ***\n\nTurn 1: Black Claw\nTurn 2+: Flock until Atherton is dead.\nBybee comes in\nTurn 1: Black Claw\nTurn 2+: Flock until Bybee is dead.\nJennings comes in\nTurn 1: Black Claw until Ikky has 366HP or less. (Ikky must be killed by Jennings!)\nTurn 2: Flock until Ikky is dead.\nBring in your Level Pet\nSwap to your Lil' Bling\nTurn 1: Make it Rain\nAny standard attack will finish the fight\n",
		["name"] = "Night Horrors",
		["tags"] = {
			"21181FS", -- [1]
			"ZL", -- [2]
			"1215198", -- [3]
		},
		["teamID"] = "team:32",
		["targets"] = {
			140461, -- [1]
		},
		["groupID"] = "group:5",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:240"] = {
		["pets"] = {
			0, -- [1]
			"BattlePet-0-00000E0BBDBB", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/1706\n\nStrategy added by Lazey\nBloodtusk:4A8K:ZL:11141BB:ZR0:P:112:1:9::::\n\nElemental level pets maybe need more HP.\nSingle target fight, so don't expect much XP for your Level Pet.\n\nTurn 1: Pass\nTurn 2: Swap to your Iron Starlette\nTurn 3: Wind-Up\n(Turn 4): (1x Powerball if you are not using P/P Iron Starlette)\nTurn 4 (5): Supercharge\nTurn 5 (6): Wind-Up\n",
		["name"] = "Crawg in the Bog",
		["tags"] = {
			"ZL", -- [1]
			"11171BB", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:240",
		["targets"] = {
			141588, -- [1]
		},
		["groupID"] = "group:5",
		["preferences"] = {
			["minHP"] = 113,
			["minXP"] = 1,
		},
	},
	["team:24"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBF3E", -- [1]
			"BattlePet-0-00000E0BBD2F", -- [2]
			0, -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/11420\n\nStrategy added by Xerxes\nAny pet with Black Claw should work in slot 2.\n\nThe first attack from the enemy pet has a small chance to crit and drop Boneshard to 1 HP. In this case, restart the fight.\n\nYour level pet can have less than 700 HP.\nThe last hit will do about 400 damage, but I've seen it crit for around 700 HP.\n\nTD Script by Yolo (https://www.wow-petguide.com/index.php?user=11440)\n\nEnjoy :)\n\nTurn 1: Blistering Cold\nBoneshard should be roughly half HP. If he's 1 HP, restart the fight.\nTurn 2: Chop\nBoneshard should be 20 HP\nTurn 3: BONESTORM\nTurn 4: Blistering Cold\nBring in your Zandalari Kneebiter\nTurn 5: Black Claw\nTurn 6: Pass\nTurn 7: Pass\n",
		["name"] = "Sewer Creeper",
		["tags"] = {
			"11231TB", -- [1]
			"020814S", -- [2]
			"ZL", -- [3]
		},
		["teamID"] = "team:24",
		["targets"] = {
			175781, -- [1]
		},
		["groupID"] = "group:6",
		["preferences"] = {
			["minHP"] = 701,
			["minXP"] = 15,
		},
	},
	["team:56"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD2E", -- [1]
			"BattlePet-0-00000E0BBD0E", -- [2]
			"BattlePet-0-00000E0BBDC4", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/19597\n\nStrategy added by Aknot#1385\nCredit to ShirokamiCusp (post on wowhead)\nLink: https://www.wowhead.com/npc=204792/shinmura#comments\n\nScript thanks to Akéla\n\nTurn 1: Arcane Storm\nTurns 2-4: Mana Surge\nTurn 5: Life Exchange you can skip this step if Beeks used Surge of Power \nTurn 6: Moonfire\nTurn 5: Arcane Blast until Nether Faerie Dragon die\nTurn 6: Emerald Bite until Talons die. (May not be necessary)\nTurn 7: \nTurn 8: \n",
		["name"] = "Are They Not Beautiful?",
		["tags"] = {
			"022414D", -- [1]
			"2215HD", -- [2]
			"200A14F", -- [3]
		},
		["teamID"] = "team:56",
		["targets"] = {
			204792, -- [1]
		},
		["groupID"] = "group:7",
	},
	["team:41"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDE6", -- [1]
			"BattlePet-0-00000E0BBD0C", -- [2]
			"BattlePet-0-00000E0BBDCE", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/8313\n\nStrategy added by ScarecrowPete\nImplementation of a suggestion by Anonymous on the strategy by Aranesh posted above. This should eliminate the RNG of Curse of Doom missing by increasing our hit chance using Lucky Dance. Terky can clean up whatever remains once Ikky is done flocking. TD script isnt perfect, I'm a bit new at this, thank you for your patience.\n\nTurn 1: Lucky Dance\nTurn 2: Swap to Unborn Valkyr\nTurn 3: Curse of Doom\nTurn 4: Haunt\nTurn 5: Swap to Ikky\nTurn 6: Black Claw\nTurn 7: Flock until Vinu dies\nTurn 8: Keep repeating Black Claw and Flock until the backline pets die. If Ikky dies, swap to your murloc and use your first ability to clear up.\n",
		["name"] = "The Wine's Gone Bad",
		["tags"] = {
			"020C11H", -- [1]
			"021316M", -- [2]
			"01181FS", -- [3]
		},
		["teamID"] = "team:41",
		["targets"] = {
			106417, -- [1]
		},
		["groupID"] = "group:4",
	},
	["team:16"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBE76", -- [1]
			"BattlePet-0-00000E0BBF3E", -- [2]
			"BattlePet-0-00000E0BBCF3", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/18744\n\nStrategy added by DragonsAfterDark\nThe same team can be used for the Legendary (https://www.wow-petguide.com/Strategy/18743/Tremblor_-_Legendary) & Rare (https://www.wow-petguide.com/Strategy/18745/Tremblor_-_Rare) versions.\n\nTurn 1: Call Lightning\nTurn 2: Swap to your Boneshard\nTurn 3: Blistering Cold\nTurn 4: Chop\nTurn 5: BONESTORM\nTurn 6: Blistering Cold\nBring in your Wild Jade Hatchling\nTurn 7: Call Lightning\nTurn 8: Swap to your Zandalari Anklerender\nTurn 9: Black Claw\nTurn 10: Hunting Party\n",
		["name"] = "Tremblor - Epic",
		["tags"] = {
			"0107PH", -- [1]
			"11231TB", -- [2]
			"202415R", -- [3]
		},
		["teamID"] = "team:16",
		["targets"] = {
			200690, -- [1]
		},
		["groupID"] = "group:7",
	},
	["team:84"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDF1", -- [1]
			"BattlePet-0-0000216AC03C", -- [2]
			0, -- [3]
		},
		["notes"] = "Strategy added by nogulpfrog\naverage time : 92s.  Not fast but enough.\n\nTurn 1: Call Blizzard\nTurn 2: Deep Freeze\nTurn 3: Swap to your Twilight Whelpling\nTurn 4: Twilight Fire\nTurn 5: Wing Buffet\nTurn 6: Swap to your Level Pet\nTurn 7: Swap to your Tiny Snowman\nTurn 8: Magic Hat\nTurn 9: Call Blizzard ,enemy Breezy Book died.\nTurn 10: Magic Hat\nTurn 11: Deep Freeze , enemy Helpful Spirit died.\nTurn 12: Magic Hat until your Tiny Snowman died\nbring in yourTwilight Whelpling\nTurn 13: Darkflame\nTurn 14: Wing Buffet , finish.\n",
		["name"] = "Training with the Nightwatchers",
		["tags"] = {
			"21233L", -- [1]
			"21282JL", -- [2]
			"ZL", -- [3]
		},
		["teamID"] = "team:84",
		["targets"] = {
			106552, -- [1]
		},
		["groupID"] = "group:none",
	},
	["team:269"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBCE7", -- [1]
			0, -- [2]
			"BattlePet-0-00000E0BBD2E", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/8514\n\nStrategy added by norng\nTurn 1+: Arcane Explosion until Chrominius dies. Do not kill Salad.\nBring in your Level Pet\nTurn 1: Swap to your Nexus Whelpling\nPriority 1: Arcane Storm\nPriority 2: Mana Surge\nPriority 3: Frost Breath\n",
		["name"] = "Spores, Dusty, and Salad",
		["tags"] = {
			"2006140", -- [1]
			"ZL", -- [2]
			"222414D", -- [3]
		},
		["teamID"] = "team:269",
		["groupID"] = "group:3",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:254"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDC4", -- [1]
			"random:0", -- [2]
			"random:0", -- [3]
		},
		["name"] = "A New Vocation",
		["tags"] = {
			"222A14F", -- [1]
			"ZR0", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:254",
		["targets"] = {
			201899, -- [1]
		},
		["groupID"] = "group:7",
	},
	["team:36"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD0C", -- [1]
			"BattlePet-0-00000E0BBDCE", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/18664\n\nStrategy added by Sevena\nTurn 1: Shadow Slash\nTurn 2: Shadow Slash\nTurn 3: Curse of Doom\nTurn 4: Haunt\nBring in Ikky\nTurn 1: Black Claw\nTurn 2: Flock\n",
		["name"] = "Flow - Legendary",
		["tags"] = {
			"121316M", -- [1]
			"01181FS", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:36",
		["targets"] = {
			200696, -- [1]
		},
		["groupID"] = "group:7",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:219"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD0C", -- [1]
			"BattlePet-0-00000E0BBD2F", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/7733\n\nStrategy added by Perimus#2648\nTested TD Script 5x - No RNG involved so far. Special thanks to Mirogah (https://www.wow-petguide.com/index.php?user=12412) & d3ltaray#2895 (https://www.wow-petguide.com/index.php?user=12858)\n\nTried this fight with Ikky aswel but didn't go so well. My Kneebiter even died from crit but the Haunt/Curse of Doom finished it off. I used Leap on his Deflection so I would have speed advantage and be sure I would do Hunting Party.\n\nTurn 1: Shadow Slash/ Shadow Shock\nTurn 2: Pass\nHe will use Deflection\nTurn 3: Curse of Doom\nTurn 4: Haunt\nTurn 5: Black Claw\nBring in your Zandalari Kneebiter\nTurn 6: Leap\nHe will use Deflection\nTurn 8: Hunting Party\n",
		["name"] = "Tiny Madness",
		["tags"] = {
			"021316M", -- [1]
			"221814S", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:219",
		["targets"] = {
			162468, -- [1]
		},
		["groupID"] = "group:5",
		["preferences"] = {
			["minXP"] = 25,
		},
	},
	["team:87"] = {
		["pets"] = {
			"BattlePet-0-00000E826ACE", -- [1]
			0, -- [2]
			"BattlePet-0-00000E0BBCE7", -- [3]
		},
		["notes"] = "Strategy added by unknown\nTurn 1: Shell Shield\nTurn 2: Renewing Mists\nTurn 3+: Snap until Diamond is dead\nMollus comes in\nTurn 1: Shell Shield\nTurn 2: Renewing Mists\nTurn 3+: Snap until Mollus is dead as well\nSkimmer comes in\nTurn 1: Swap to Level Pet\nTurn 2: Swap back to Emperor Crab\nTurns 3+: Snap until Emperor Crab dies\nBring in Chrominius\nTurn 1: Bite\nTurn 2: Howl\nTurn 3: Surge of Power\n",
		["name"] = "Seeker Zusshi",
		["tags"] = {
			"1114NA", -- [1]
			"ZL", -- [2]
			"1126140", -- [3]
		},
		["teamID"] = "team:87",
		["targets"] = {
			66918, -- [1]
		},
		["groupID"] = "group:2",
		["preferences"] = {
			["minHP"] = 151,
			["minXP"] = 2,
		},
	},
	["team:197"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDD5", -- [1]
			"random:0", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/8979\n\nStrategy added by Threewolves\nTurn 1: Prowl\nTurn 2: Moonfire (Keep on CD)\nTurns 3+: Spirit Claws til done.\n*: Clean up with remaining pets if needed.\n",
		["name"] = "Deviate Flapper",
		["tags"] = {
			"22271C8", -- [1]
			"ZR0", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:197",
		["targets"] = {
			116787, -- [1]
		},
		["groupID"] = "group:1",
	},
	["team:250"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD0C", -- [1]
			0, -- [2]
			"BattlePet-0-00000E0BBDCE", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/770\n\nTurn 1: Curse of Doom\nTurn 2: Haunt\nBring in your Level Pet\nTurn 1: Swap to Ikky\nTurn 2: Black Claw\nTurns 3-6: Flock - The Hungry Icefang dies and another enemy pet comes in\nTurns 7+: Quills until Ikky dies\nBring back your Unborn Val'kyr\nTurns 1+: Shadow Shock until the fight is done\n",
		["name"] = "Wildlife Protection Force",
		["tags"] = {
			"221316M", -- [1]
			"ZL", -- [2]
			"21181FS", -- [3]
		},
		["teamID"] = "team:250",
		["targets"] = {
			104782, -- [1]
		},
		["groupID"] = "group:4",
	},
	["team:249"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD2A", -- [1]
			"BattlePet-0-00000E0BBDB3", -- [2]
			"BattlePet-0-00000E0BBDCE", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/14131\n\nStrategy added by SunFlight#2765\nTurn 1: Dazzling Dance\nTurn 2: Howl\nTurn 3: Pass\nBring in your Iron Starlette\nTurn 1: Toxic Smoke\nTurn 2: Explode\nBring in your Ikky\nTurn 1: Black Claw\nTurns 2-4: Flock\n",
		["name"] = "Xu-Fu, Cub of Xuen",
		["tags"] = {
			"1225MK", -- [1]
			"12261BB", -- [2]
			"11181FS", -- [3]
		},
		["teamID"] = "team:249",
		["targets"] = {
			72009, -- [1]
		},
		["groupID"] = "group:1",
	},
	["team:179"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD0C", -- [1]
			0, -- [2]
			"BattlePet-0-00000E0BBCAD", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/2287\n\nStrategy added by gsanta\nI was able to bring a Level 1 pet with no damage taken.\n\nTurn 1: Curse of Doom\nTurn 2: Haunt\nTurn 3: Bring in your Level Pet\nTurn 4: Swap to your Lil' Bling\nTurn 5: Make it Rain\nTurn 6+: Inflation\n",
		["name"] = "This Little Piggy Has Sharp Tusks",
		["tags"] = {
			"021316M", -- [1]
			"ZL", -- [2]
			"2015198", -- [3]
		},
		["teamID"] = "team:179",
		["targets"] = {
			139987, -- [1]
		},
		["groupID"] = "group:5",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:209"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDCE", -- [1]
			"BattlePet-0-00000E0BBDCA", -- [2]
			"BattlePet-0-00000E0BBCE7", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/19857\n\nStrategy added by LucifonChaos#1485\nSometimes Ikky Lives longer and this fight can be done a little faster.\n\nTurn 1: Black Claw\nTurns 2-4: Flock\nTurn 5: Repeat Black Claw and Flock until Ikky dies.\nTurn 6: Swap to your Hydraling\nTurn 7: Swallow You Whole until either Dustie enters or Hydraling dies.\nTurn 7: Whirlpool when Dustie enters if Hydraling is still alive. \nTurn 8: Swap to your Chrominius\nTurn 9: Howl\nTurns 10-12: Surge of Power\n",
		["name"] = "Delver Mardei",
		["tags"] = {
			"11181FS", -- [1]
			"122A1G5", -- [2]
			"1126140", -- [3]
		},
		["teamID"] = "team:209",
		["targets"] = {
			204926, -- [1]
		},
		["groupID"] = "group:7",
	},
	["team:35"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBF3E", -- [1]
			"BattlePet-0-00000E0BBCF3", -- [2]
			"BattlePet-0-00000E0BBDCE", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/14864\n\nStrategy added by mAd#1759\nTurn 1: Blistering Cold\nTurn 2: Swap to your Ikky\nTurn 3: Black Claw\nTurns 4-6: Flock\nGromli comes in\nBring in your Boneshard\nTurn 1: Blistering Cold\nBring in your Zandalari Anklerender\nTurn 1: Black Claw\nTurns 4-5: Hunting Party\n",
		["name"] = "Kromli and Gromli",
		["tags"] = {
			"01031TB", -- [1]
			"202415R", -- [2]
			"01181FS", -- [3]
		},
		["teamID"] = "team:35",
		["targets"] = {
			85625, -- [1]
		},
		["groupID"] = "group:3",
	},
	["team:150"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBCF3", -- [1]
			"BattlePet-0-00000E0BBDCE", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/6848\n\nStrategy added by DarkShade#2783\nSugested by Adalsteinn here https://www.wow-petguide.com/index.php?Strategy=255\n\nTD Script suggested by ultharwe on same page, I just modified to include IDs\n\nWorks in Shadowlands.\n\nTurn 1: Black Claw\nTurns 2-3: Hunting Party\nTurn 4: Black Claw\nBring in your Ikky\nTurns 1-3: Flock\n",
		["name"] = "Ka'wi the Gorger",
		["tags"] = {
			"212415R", -- [1]
			"21181FS", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:150",
		["targets"] = {
			68555, -- [1]
		},
		["groupID"] = "group:2",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:102"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD2E", -- [1]
			"BattlePet-0-00000E0BBCC3", -- [2]
			"BattlePet-0-00000E0BBDC4", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/167\n\nTurn 1: Arcane Storm\nTurns 2-4: Mana Surge - Trike will be swapped in\nTurn 5: Arcane Storm\nTurns 6+: Tail Sweep until Nexus Whelpling dies\nBring in your Mechanical Pandaren Dragonling\nTurn 1: Is Trike below 249 health? If so, use Breath to finish him off!\nOtherwise use:\nTurn 1: Bombing Run\nTurn 2: Breath\nTurn 3: Breath\nTurn 4: Decoy (bombing run should kill trike now)\nScreamer will come out again\nTurn 1: Bombing Run\nTurn 2: Decoy if you can - otherwise Breath\nTurns 3+: Breath until Screamer is dead or swaps out again.\nChaos comes in\nTurns 1+: Breath everything to death from now on! Sometimes you don't even need the Emerald Proto-Whelp.\n",
		["name"] = "Dr. Ion Goldbloom",
		["tags"] = {
			"122414D", -- [1]
			"1125QC", -- [2]
			"111A14F", -- [3]
		},
		["teamID"] = "team:102",
		["targets"] = {
			71934, -- [1]
		},
		["groupID"] = "group:1",
	},
	["team:196"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBEAB", -- [1]
			"random:0", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/6708\n\nStrategy added by Clarx\nTurn 1: Water Jet\nTurn 2: Dive\nTurn 3: Nature's Ward\nTurn 4: Water Jet\nTurn 5: Water Jet\nTurn 6: Water Jet\nTurn 7: Water Jet\nTurn 8: Dive\nAngry Geode dies here (latest) ... \nClean up the rest! (Pudle Terror is able to solo everything, depending on enemy-background pets)\n",
		["name"] = "Angry Geode",
		["tags"] = {
			"11281H0", -- [1]
			"ZR0", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:196",
		["targets"] = {
			119342, -- [1]
		},
		["groupID"] = "group:1",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:12"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD73", -- [1]
			"random:0", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/10122\n\nStrategy added by DragonsAfterDark\nIt will take a while, but your bunny will end with 100% hp\n\nYou can also do this method with Lagan / Slithershock Elver (1,1,1), Scrapyard Tunneler (2,1,1), Alloyed Alleyrat (1,2,1), Specimen 97 (1,1,1)\n\nIt's also possible to do this with Inky / Nameless Octopode (1,2,2), & Sneaky Marmot (1,2,2), but you use the blind on turn two and pass on turn three, which loses one round of attack, and will make this last longer.\n\nVideo for Fight (https://www.youtube.com/watch?v=SAQqQd5HWT0)\n\nTurn 1: Scratch\nTurn 2: Scratch\nTurn 3: Dodge\nTurn 4: Scratch\nTurn 5: Scratch\nTurn 6: Burrow goes underground\nTurn 7: Burrow lands\n\nRepeat from TURN 2\n",
		["name"] = "Briarpaw",
		["tags"] = {
			"1219BQ", -- [1]
			"ZR0", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:12",
		["targets"] = {
			175778, -- [1]
		},
		["groupID"] = "group:6",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:246"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDB3", -- [1]
			"BattlePet-0-00000E0BBDCE", -- [2]
			"BattlePet-0-00000E0BBCAD", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/2164\n\nStrategy added by GenDG\nOf all the strategies, it was the only one that worked for me the first time.\n\nThanks for reading me!\n\nTurn 1: Wind-Up\nTurn 2: Supercharge\nTurn 3: Wind-Up\nChum dies.\nBruce comes in.\nTurn 1: Swap to your Ikky\nTurn 2: Black Claw\nTurn 3: Flock\nTurn 4: Pass (stun).\nTurn 5: Flock\nBruce dies.\nMaws Jr. comes in.\nTurn 1: Flock\nTurn 2: Swap to your Lil' Bling\nTurn 3: Make it Rain\nTurn 4+: Inflation\n",
		["name"] = "Not So Bad Down Here",
		["tags"] = {
			"11161BB", -- [1]
			"11181FS", -- [2]
			"2115198", -- [3]
		},
		["teamID"] = "team:246",
		["targets"] = {
			141077, -- [1]
		},
		["groupID"] = "group:5",
	},
	["team:120"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDCE", -- [1]
			"BattlePet-0-00000E0BBD44", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/6626\n\nStrategy added by Skwirrel\nTurn 1: Black Claw\nTurn 2: Flock - Ikky dies\nBring in Corefire Imp\nTurn 3: Flamethrower\nTurn 4: Burn\nTurn 5: Burn\n",
		["name"] = "Sputtertube",
		["tags"] = {
			"11181FS", -- [1]
			"121813T", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:120",
		["targets"] = {
			154923, -- [1]
		},
		["groupID"] = "group:5",
	},
	["team:231"] = {
		["pets"] = {
			"BattlePet-0-00002105E37F", -- [1]
			"random:9", -- [2]
			"random:9", -- [3]
		},
		["notes"] = "Strategy added by Liax\nPlump Jelly Can be used instead of SydBackline pets with high HP works best. But they almost never come into play.\n\nTurn 1: Whirlpool on cooldown\nTurn 2: Healing Stream on cooldown\nTurn 3: Tidal Wave\n",
		["name"] = "Everliving Spore",
		["tags"] = {
			"22171E6", -- [1]
			"ZR9", -- [2]
			"ZR9", -- [3]
		},
		["teamID"] = "team:231",
		["targets"] = {
			116795, -- [1]
		},
		["groupID"] = "group:1",
		["preferences"] = {
			["minHP"] = 1501,
			["minXP"] = 25,
		},
	},
	["team:91"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBCC3", -- [1]
			"BattlePet-0-00000E0BBCE7", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/18\n\nTurns 1+: Breath until Manos dies\nHanos comes out\nTurn 1: Decoy\nTurns 2+: Breath until Hanos dies\nFatos comes out\nTurns 1+: Breath until your Dragonling dies.\nBring in Chrominius\nTurns 1+: Bite Fatos to death!\n",
		["name"] = "Manos, Hanos and Fatos",
		["tags"] = {
			"1025QC", -- [1]
			"1006140", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:91",
		["targets"] = {
			85634, -- [1]
		},
		["groupID"] = "group:3",
	},
	["team:135"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD9A", -- [1]
			"BattlePet-0-00000E0BBE2D", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/567\n\nTurn 1: Supercharge \nTurn 2: Call Lightning\nTurn 3: Switch to your Cogblade Raptor \nTurn 4: Exposed Wounds\nTurns 5+: Batter until Zao is dead\n",
		["name"] = "Zao, Calfling of Niuzao",
		["tags"] = {
			"111C3K", -- [1]
			"211B14C", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:135",
		["targets"] = {
			72290, -- [1]
		},
		["groupID"] = "group:1",
	},
	["team:158"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD0C", -- [1]
			"BattlePet-0-00000E0BBDCE", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/1395\n\nStrategy added by Aranesh\nTurn 1: Curse of Doom\nTurn 2: Unholy Ascension\nBring in Ikky\nTurn 1: Black Claw\nTurns 2+: Flock\n",
		["name"] = "One-of-Many",
		["tags"] = {
			"022316M", -- [1]
			"01181FS", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:158",
		["targets"] = {
			128024, -- [1]
		},
		["groupID"] = "group:4",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:207"] = {
		["pets"] = {
			0, -- [1]
			"BattlePet-0-00000E0BBCAD", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/873\n\nStrategy added by Aranesh\nTurn 1: Pass\nTurn 2: Swap to your Lil' Bling\nTurn 3: Make it Rain\nTurn 4: Extra Plating\nTurns 5-7: Inflation\nTurn 8: Make it Rain\n",
		["name"] = "Rydyr",
		["tags"] = {
			"ZL", -- [1]
			"2215198", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:207",
		["targets"] = {
			105386, -- [1]
		},
		["groupID"] = "group:4",
	},
	["team:111"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBE4E", -- [1]
			"BattlePet-0-00000E0BBCC3", -- [2]
			0, -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/5641\n\nStrategy added by Shenk\nTurn 1: Soulrush.\nTurn 2+: Magic Sword until Itchy dies \nNote that there is a chance that Itchy got stunned in the first round. When that happens use Magic Sword in round 2 as usual and then Clean-Up. This will remove the Cyclone of Salty Bird as intended.\nSalty Bird comes in\nTurn A: Clean-Up\nTurn 2: Magic Sword until Salty Bird has 868 or less health\nTurn 3: Soulrush. Salty Bird dies (If Servant of Demidos dies too soon send in Mechanical Pandaren Dragonling and use Breath)\n*: Should Itchy come back in finish it with Magic Sword and Soulrush\nGrommet comes in\nTurn 1+: Magic Sword until either Servant of Demidos dies or Grommet has 492 or less health\nTurn 2: Pass when Servant of Demidos is active and Grommet is at <=492 health\nBring in your Mechanical Pandaren Dragonling\nFollow this priority list:\nPrio 1: Explode when Grommet has 560 or less health\nPrio 2: Thunderbolt when Grommet has 799 or more health\nPrio 3: Breath\n",
		["name"] = "Fight Night: Bodhi Sunwayver",
		["tags"] = {
			"11241I1", -- [1]
			"1215QC", -- [2]
			"ZL", -- [3]
		},
		["teamID"] = "team:111",
		["targets"] = {
			99210, -- [1]
		},
		["groupID"] = "group:4",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:205"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD2E", -- [1]
			"BattlePet-0-00000E0BBDB3", -- [2]
			"random:0", -- [3]
		},
		["name"] = "Two and Two Together",
		["tags"] = {
			"122414D", -- [1]
			"11161BB", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:205",
		["targets"] = {
			197102, -- [1]
		},
		["groupID"] = "group:7",
	},
	["team:9"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD0C", -- [1]
			"BattlePet-0-00000E0BBDCE", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/10959\n\nStrategy added by Qvisten#2240\nThanks Runisco for the script :)\n\nTurn 1: Curse of Doom\nTurn 2: Haunt\nBring in your Ikky\nTurn 1: Black Claw\nTurns 2-4: Flock\n",
		["name"] = "Crystalsnap",
		["tags"] = {
			"021316M", -- [1]
			"01181FS", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:9",
		["targets"] = {
			175777, -- [1]
		},
		["groupID"] = "group:6",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:251"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD0C", -- [1]
			"BattlePet-0-00000E0BBD2F", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/18633\n\nStrategy added by Fleshmaiden#21343\nTurn 1: Haunt\nTurn 2: Black Claw\nTurn 3: Hunting Party\n",
		["name"] = "Vortex - Rare",
		["tags"] = {
			"121316M", -- [1]
			"220814S", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:251",
		["targets"] = {
			200685, -- [1]
		},
		["groupID"] = "group:7",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:62"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDCA", -- [1]
			"random:0", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/66\n\nStrategy added by Gráinne\nTurn 1: Deep Bite \nTurn 2: Deep Bite \nTurn 3: Shell Armor \nTurns 4+: Deep Bite until Rockbiter is dead \nStonechewer comes in \nTurn 1: Deep Bite \nTurn 2: Shell Armor \nTurns 3+: Deep Bite until Stonechewer is dead as well \nAcidtooth comes in \nTurns 1+: Deep Bite and keep Shell Armor on cooldown.\n",
		["name"] = "Rockbiter, Acidtooth and Stonechewer",
		["tags"] = {
			"101A1G5", -- [1]
			"ZR0", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:62",
		["targets"] = {
			85630, -- [1]
		},
		["groupID"] = "group:3",
		["preferences"] = {
			["minXP"] = 25,
		},
	},
	["team:264"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD0C", -- [1]
			"BattlePet-0-00000E0BBDCE", -- [2]
			"BattlePet-0-00000E0BBDC4", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/6531\n\nStrategy added by Yogi77\nTurn 1: Curse of Doom  if Vile Blood of Draenor critted on ikky, restart the fight!\nTurn 2: Haunt\nBring in your Ikky\nTurn 1: Black Claw\nTurn 2: Flock\nBring in your Emerald Proto-Whelp\nTurn 1: Emerald Presence\nTurn 2: Emerald Dream\nTurn 3: Emerald Bite\nrepeat all steps on cooldown\n",
		["name"] = "Vile Blood of Draenor",
		["tags"] = {
			"221316M", -- [1]
			"11181FS", -- [2]
			"222A14F", -- [3]
		},
		["teamID"] = "team:264",
		["targets"] = {
			94646, -- [1]
		},
		["groupID"] = "group:3",
	},
	["team:215"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBF3E", -- [1]
			"BattlePet-0-00000E0BBDCE", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/10148\n\nStrategy added by Lazey\n*** Created on Beta, so maybe not final ***\n\nTurn 1: Blistering Cold\nTurn 2: BONESTORM\nTurn 3: Chop (Boneshard dies)\nBring in your Ikky\nTurn 4: Black Claw\nTurns 5-7: Flock\n",
		["name"] = "Kostos",
		["tags"] = {
			"11231TB", -- [1]
			"21181FS", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:215",
		["targets"] = {
			175785, -- [1]
		},
		["groupID"] = "group:6",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:20"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBCB6", -- [1]
			"BattlePet-0-00000E0BBD09", -- [2]
			0, -- [3]
		},
		["notes"] = "Strategy added by Thordros#1784\nThis is my attempt at eliminating most of the randomness surrounding Wumpas stunning you with Headbutt, while still keeping a low kill time (<80 seconds). Although there are other bots with the same moveset, the P/P and P/S bots are the only ones that can reliably kill both Thrugtusk and Wumpas in 7 rounds.There is an extremely rare edge case where Thrugtusk can get insanely lucky crits and kill your Warbot (including the Mechanical phase!) before dying. The TD Script will attempt to salvage the fight with your Darkmoon Tonk, and does so successfully 75% of the time—the other 25%, Wumpas will stun you with Headbutt and you're very unlikely to win.\n\nTurn 1: Minefield\nTurn 2-3: Launch Rocket\nTurn 4+: Missile\nWumpas comes in\nTurn 1+: Launch Rocket\nIf your Warbot dies here, bring in your Darkmoon Tonk early and use Shock and Awe.\nBaeloth comes in\nTurn 1: Swap to your Level Pet\nTurn 2: Swap to your Darkmoon Tonk\nTurn 3: Shock and Awe\nIf your Warbot died to Wumpas, use Missile here until Baeloth has <1099 health remaining.\nTurn 4: Ion Cannon\n",
		["name"] = "My Beast's Bidding",
		["tags"] = {
			"122473", -- [1]
			"1127AI", -- [2]
			"ZL", -- [3]
		},
		["teamID"] = "team:20",
		["targets"] = {
			98270, -- [1]
		},
		["groupID"] = "group:4",
	},
	["team:48"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD2E", -- [1]
			"random:0", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/11\n\nThe moves listed below have been updated to reflect the priority of the moves in the tdScript\n\nPriority 1: Arcane Storm on CD\nPriority 2: Mana Surge on CD\nPriority 3: Tail Sweep all else\n",
		["name"] = "Jahan, Archimedes and Samm",
		["tags"] = {
			"122414D", -- [1]
			"ZR0", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:48",
		["targets"] = {
			85627, -- [1]
		},
		["groupID"] = "group:3",
	},
	["team:23"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBF3E", -- [1]
			"BattlePet-0-00000E0BBDCE", -- [2]
			"BattlePet-0-00000E0BBCF3", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/18632\n\nStrategy added by Ravenousdead\nFirst: Blistering Cold on CD\nSecond: use Chop as filler\nBoneshard dies - Bring in Ikky\nFirst: Black Claw if missing\nSecond: Flock on CD\nIkky dies - Bring in Zandalari Anklerender\nFirst: Black Claw if missing\nSecond: Hunting Party on CD\nThird: Leap as filler\n",
		["name"] = "Tremblor - Legendary",
		["tags"] = {
			"11031TB", -- [1]
			"01181FS", -- [2]
			"212415R", -- [3]
		},
		["teamID"] = "team:23",
		["targets"] = {
			200692, -- [1]
		},
		["groupID"] = "group:7",
	},
	["team:236"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDB3", -- [1]
			"BattlePet-0-00000E0BBD51", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/952\n\nTurn 1: Wind-Up\nSwap to Stitched Pup.\nTurn 1+: Diseased Bite until your Stitched Pup enters its undead round.\nThen: Howl and Stitched Pup dies.\nSwap back to Iron Starlette.\nTurn 1: Supercharge\nTurn 2: Wind-Up and you over kill Dos-Ryga.\n",
		["name"] = "Dos-Ryga",
		["tags"] = {
			"10161BB", -- [1]
			"120713Q", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:236",
		["targets"] = {
			68564, -- [1]
		},
		["groupID"] = "group:2",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:161"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBEC8", -- [1]
			"random:0", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/8497\n\nStrategy added by norng\n7~10 rounds.\n\nTurn 1: Toxic Skin\nTurns 2-4: Emerald Dream\nTurn 5: Emerald Bite\nTurn 6: Emerald Bite\nTurn 7: Repeat Turn 1~6\n",
		["name"] = "Flight of the Vil'thik",
		["tags"] = {
			"11241LQ", -- [1]
			"ZR0", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:161",
		["targets"] = {
			162471, -- [1]
		},
		["groupID"] = "group:5",
		["preferences"] = {
			["minXP"] = 25,
		},
	},
	["team:233"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD2E", -- [1]
			"BattlePet-0-00000E0BBDC4", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/1236\n\nStrategy added by Aranesh\nTurn 1: Arcane Storm\nTurns 2-4: Mana Surge - Klutz's Battle Bird dies\nAn enemy pet comes in\nTurns 1+: Continue using Arcane Storm and Mana Surge when available, otherwise Tail Sweep until your Nexus Whelpling dies\n\nIf you need your Emerald Proto-Whelp, keep Emerald Presence active, use Emerald Dream if you drop low on health and otherwise use Emerald Bite\n",
		["name"] = "Klutz's Battle Bird",
		["tags"] = {
			"122414D", -- [1]
			"222A14F", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:233",
		["targets"] = {
			119344, -- [1]
		},
		["groupID"] = "group:1",
	},
	["team:53"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDDA", -- [1]
			0, -- [2]
			"BattlePet-0-00000E0BBDD5", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/9773\n\nStrategy added by Rebekha#21420\nTurn 1: Decoy\nTurn 2 & 3: Haywire\nTurn 4+: Alpha Strike until Tonsa dies\nChirps comes in\nBring in your Level Pet\nBring in your Teroclaw Hatchling\nTurn 1: Dodge\nTurn 2+: Claw until Chirps hp < 927\nTurn 3: Ravage until Chirps dies\nBrewly comes in\nTurn 1: Dodge when Brewly has the barrel throwing buff\nTurns 2-3: Ravage if Brewly hp < 619\nTurn 4: Claw until Brewly dies\nIf you have the world's worst RNG, bring back your Mech Axe to finish the job\n",
		["name"] = "Chen Stormstout",
		["tags"] = {
			"121B1BR", -- [1]
			"ZL", -- [2]
			"11271C8", -- [3]
		},
		["teamID"] = "team:53",
		["targets"] = {
			71927, -- [1]
		},
		["groupID"] = "group:1",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:152"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBCAD", -- [1]
			"BattlePet-0-00000E0BBDB3", -- [2]
			"BattlePet-0-00000E0BBEBE", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/12011\n\nStrategy added by iklad\nBring in your Lil' Bling\nTurn 1: Extra Plating\nTurn 2: Make it Rain\nTurns 3-5: Inflation\nTurn 6: Extra Plating\nTurn 7: Make it Rain\nTurns 8-10: Inflation\nBring in your Iron Starlette\nTurn 11: Wind-Up\nTurn 12: Supercharge\nTurn 13: Wind-Up\nBring in your Benax\nTurn 14: Bubble\nTurn 15: Mudslide\nTurn 16: Tongue Lash\nTurn 17: Tongue Lash\n",
		["name"] = "Extra Pieces",
		["tags"] = {
			"2215198", -- [1]
			"11161BB", -- [2]
			"21171SE", -- [3]
		},
		["teamID"] = "team:152",
		["targets"] = {
			173263, -- [1]
		},
		["groupID"] = "group:6",
	},
	["team:171"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD92", -- [1]
			"BattlePet-0-00000E0BBEE1", -- [2]
			0, -- [3]
		},
		["notes"] = "Strategy added by Shenk\nTurn 1: Bite\nTurn 2: Prowl\nTurn 3: Moonfire. Piqua dies\nLapin comes in\nTurn 1+: Bite until Xu-Fu, Cub of Xuen dies\nBring in your Level Pet\nTurn 1: Swap to your Rotten Little Helper\nTurn 2: Booby-Trapped Presents\nTurn 3+: Club until Lapin dies\nBleat comes in\nTurn 1: Greench's Gift\n",
		["name"] = "Courageous Yon",
		["tags"] = {
			"222417I", -- [1]
			"11141A5", -- [2]
			"ZL", -- [3]
		},
		["teamID"] = "team:171",
		["targets"] = {
			66738, -- [1]
		},
		["groupID"] = "group:2",
	},
	["team:108"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBCC3", -- [1]
			"BattlePet-0-00000E0BBD0C", -- [2]
			"BattlePet-0-00000E0BBDCE", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/1414\n\nStrategy added by Aranesh\nTurn 1: Breath - your Unborn Val'kyr is forced in\nTurn 2: Curse of Doom\nTurn 3: Haunt\nBring in your Mechanical Pandaren Dragonling\nTurn 1: Breath - your Ikky is forced in\nTurn 2: Black Claw\nTurns 3+: Flock\n",
		["name"] = "Corrupted Blood of Argus",
		["tags"] = {
			"1005QC", -- [1]
			"021316M", -- [2]
			"01181FS", -- [3]
		},
		["teamID"] = "team:108",
		["targets"] = {
			128017, -- [1]
		},
		["groupID"] = "group:4",
	},
	["team:25"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD09", -- [1]
			"BattlePet-0-00000E0BBCE7", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/755\n\nTurns 1+: Lock-On until your Darkmoon Tonkdies\nBring in Chrominius\nTurn 1: Howl\nTurn 2: Surge of Power\n",
		["name"] = "Fight Night: Stitches Jr. Jr.",
		["tags"] = {
			"1117AI", -- [1]
			"1126140", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:25",
		["targets"] = {
			105840, -- [1]
		},
		["groupID"] = "group:4",
	},
	["team:164"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD1B", -- [1]
			0, -- [2]
			"BattlePet-0-00000E0BBD2E", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/1804\n\nStrategy added by Lazey\nKaraga:4AOG:112CAJ:ZL:122414D:\n\nTurn 1: Bombing Run\nTurn 2: Missile\nTurn 3: Missile\nTurn 4: Decoy\nTurn 5: Bombing Run when Lazy has 219HP or less, otherwise Missile.\nLazy dies. Spokes comes in.\nTurn 6: Missile. Darkmoon Zeppelin dies. Bring in your Level Pet\nSwap to your Nexus Whelpling\nvs. Spokes and Skeeto\nPrio 1: Arcane Storm\nPrio 2: Mana Surge\nPrio 3: Tail Sweep\n",
		["name"] = "Critters are Friends, Not Food",
		["tags"] = {
			"112CAJ", -- [1]
			"ZL", -- [2]
			"122414D", -- [3]
		},
		["teamID"] = "team:164",
		["targets"] = {
			142096, -- [1]
		},
		["groupID"] = "group:5",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:103"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD0C", -- [1]
			"BattlePet-0-00000E0BBCF3", -- [2]
			"BattlePet-0-00000E0BBE55", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/6066\n\nStrategy added by VonSnoot#1197\nPretty quick and easy. Valkyr sets up the bomb and the bonus damage. Anklerender sets up more damage bonus and a damage multiplier. Bomb goes off, and your Crab (or whatever pet you have that has Surge) finishes it off.\n\nTurn 1: Curse of Doom\nTurn 2: Unholy Ascension\nUnborn Val'kyr revives\nTurn 3: Shadow Shock (Unborn Val'kyr dies for good)\nSend out Zandalari Anklerender\nTurn 4: Black Claw\nTurn 5-6: Hunting Party\nZandalari Anklerender dies, Crab comes out\nTurn 7: Surge\n",
		["name"] = "Kelpstone",
		["tags"] = {
			"222316M", -- [1]
			"202415R", -- [2]
			"2006NA", -- [3]
		},
		["teamID"] = "team:103",
		["targets"] = {
			154918, -- [1]
		},
		["groupID"] = "group:5",
	},
	["team:257"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBCF3", -- [1]
			"BattlePet-0-00000E0BBCA9", -- [2]
			0, -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/591\n\nBreeds that we know work:\nAnklerender must be a P/P breed for this to work 100%.\nP/S and P/B also work just follow the notes below.\n\n(The notes down there are an estimate of 550 HP). (Saint)\n\nTurn 1: Bite\nTurn 2: Bite\nTurn 3+: Leap until Chirrup is dead.\nStormlash comes in.\nTurn 1: Black Claw - your Anklerender dies.\nBring in your Clockwork Gnome.\nTurn 1: Build Turret - Stormlash dies.  If not, just go on to the next step for your turret will kill him as you repair.\nWhiskers comes in.\nTurns 1-3: Repair\nTurn 4: Build Turret\nNOTE: If Whiskers is 551 HP or below after turn 4, Skip to turn 6. So he'll use Survival instead of Surge on your level pet. This is an estimate.\nNOTE: If Whiskers is above 551 HP after turn 4, continue to Turn 5. So he'll use Survival instead of Surge on your level pet. This is an estimate.\nTurn 5: Metal Fist\nTurn 6: Swap to your Level Pet.\nTurn 7: Swap back to your Clockwork Gnome.\nTurn 8: Build Turret - Whiskers dies.\nTurn 9: Metal Fist - if you think you need to.\n",
		["name"] = "Aki the Chosen",
		["tags"] = {
			"112415R", -- [1]
			"111B8L", -- [2]
			"ZL", -- [3]
		},
		["teamID"] = "team:257",
		["targets"] = {
			66741, -- [1]
		},
		["groupID"] = "group:2",
	},
	["team:130"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDF1", -- [1]
			"BattlePet-0-00000E0BBDE9", -- [2]
			0, -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/9494\n\nStrategy added by DragonsAfterDark\nUpdated to make it more reliable for the level pet.\n\nI imagine you could do it with two Tiny Snowmen, but I can't guarantee the script will work with that pet change, since I don't have a second one on-hand to test this.\n\nTurn 1: Call Blizzard\nTurn 2: Deep Freeze\nTurn 3: Swap to your Grumpling -- // -- Slasher comes in\nTurn 4: Frost Shock\nTurn 5: Snowball\nTurn 6: Deep Freeze\nTurn 7: Swap to your Tiny Snowman -- // -- Battery comes back in\nTurn 8: Deep Freeze\nTurn 9: Call Blizzard -- // -- This hits Slasher\nTurn 10: Snowball\nTurn 11: Snowball\nBattery comes back in\nTurn 12: Snowball\nTurn 13: Snowball\nPounder comes in\nTurn 14: Swap to your Level Pet\nTurn 15: Swap to your Tiny Snowman\nTurn 16: Call Blizzard\nTurn 17: Snowball\nTurn 18: Snowball\nTurn 19: Deep Freeze\nTurn 20: Call Blizzard\n",
		["name"] = "Micro Defense Force",
		["tags"] = {
			"11233L", -- [1]
			"22241LT", -- [2]
			"ZL", -- [3]
		},
		["teamID"] = "team:130",
		["targets"] = {
			173130, -- [1]
		},
		["groupID"] = "group:6",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:57"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBCC3", -- [1]
			"BattlePet-0-00000E0BBD24", -- [2]
			0, -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/1102\n\nStrategy added by patf0rd\nTurn 1: Pass - your Rapana Whelk is swapped in\nTurn 2: Acidic Goo\nTurn 3: Absorb\nTurn 4: Absorb\nTurn 5: Absorb\nTurn 6+7: Dive\nTurn 8+: Absorb until Imply is dead\nRover comes in\nTurn 1: Swap to your Mechanical Pandaren Dragonling\nTurn 2: Decoy\nTurn 3+: Breath until Rover is dead\nSeduction comes in\nTurn 1: Thunderbolt\nTurn 2: Swap to your leveling pet\nTurn 3: Swap to your Mechanical Pandaren Dragonling\nThen:: Keep Decoy and Thunderbolt on cooldown, otherwise, use Breath until your Mechanical Pandaren Dragonling dies\nSwap to your Rapana Whelk\nTurn 1: Acidic Goo\nTurn 2: Dive\nTurn 3: Absorb until Seduction is dead\n",
		["name"] = "Illidari Masters: Madam Viciosa",
		["tags"] = {
			"1225QC", -- [1]
			"211CN7", -- [2]
			"ZL", -- [3]
		},
		["teamID"] = "team:57",
		["targets"] = {
			117950, -- [1]
		},
		["groupID"] = "group:4",
	},
	["team:218"] = {
		["pets"] = {
			0, -- [1]
			"BattlePet-0-00000E0BBD92", -- [2]
			0, -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/4072\n\nStrategy added by Berendain\nQuick way to level two pets at a time.  They can be level 1, neither of them take damage.  This gives you plenty of flexibility when it comes to what pets you want to level, and are less likely to waste potential xp on pets that are already in their 20s.\n\nShadowlands Update:  I've updated the strategy.  Something changed with prepatch and Slow Moe dies quicker than he used to.  I've added a Pass in order to better line up Prowl and Feed with Snot's Dive.  However, if Xu-Fu crits Slow Moe with Feed, you may be in some trouble now, as Feed may not be available again for Snot.  I've updated the TD script, but I think you may need a bandage around 25% of the time now [the chance Headbutt stuns you], and there's even a slim chance for Xu-Fu to die.  \n\n[That can happen IF you crit Slow Moe with Feed, one shotting him, and then Snot rolls high with Dive and it deals a critical hit.  Then you don't crit with Bite, and die one turn before Feed is available again.]\n\nTurn 1: Pass\nTurn 2: Swap to your Xu-Fu, Cub of Xuen\nTurn 3: Prowl\nTurn 4: Pass\nTurn 5: Feed\nTurn 6: Bite, Rocklick dies\nSlow Moe comes in\nTurn 1: Swap to your second Level Pet (third slot)\nTurn 2: Swap back to your Xu-Fu, Cub of Xuen\nTurn 4: Prowl - If you are stunned, or if Prowl is still on cooldown for 1 round, Pass for a turn then continue with Prowl.\nTurn 5: Pass\nTurn 6: Feed\nTurn 6: Bite when Slow Moe's Shell Shield has a 5 round duration.  Pass if it has a 1 round duration, then Bite him next turn.\nSnot comes in\nTurn 1: Bite\nIs Prowl available?\nIF: YES\nTurn 2: Prowl\nTurn 3: Feed - Snot dies\nIF: NO\nTurn 2: Bite\nTurn 3: Pass\nTurn 4: Feed\nTurn 5: Bite until Snot dies\n",
		["name"] = "Snail Fight!",
		["tags"] = {
			"ZL", -- [1]
			"212417I", -- [2]
			"ZL", -- [3]
		},
		["teamID"] = "team:218",
		["targets"] = {
			104553, -- [1]
		},
		["groupID"] = "group:4",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:213"] = {
		["pets"] = {
			0, -- [1]
			"BattlePet-0-00000E0BBD0C", -- [2]
			"BattlePet-0-00000E0BBDCE", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/18659\n\nStrategy added by Vanpelt#1866\nTurn 1: Pass\nTurn 2: Swap to your Unborn Val'kyr\nTurn 3: Curse of Doom\nTurn 4: Haunt - Unborn Val'kyr dies\nBring in your Ikky\nTurn 5: Black Claw\nTurns 6-8: Flock\n",
		["name"] = "Storm-Touched Ohuna",
		["tags"] = {
			"ZL", -- [1]
			"021316M", -- [2]
			"01181FS", -- [3]
		},
		["teamID"] = "team:213",
		["targets"] = {
			200680, -- [1]
		},
		["groupID"] = "group:7",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:93"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDCE", -- [1]
			"BattlePet-0-00000E0BBDD5", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/6022\n\nStrategy added by bios\nTurn 1: Black Claw\nTurn 2: Flock\nTurn 3: Swap to your Teroclaw Hatchling\nTurn 4: Alpha Strike\nAny standard attack will finish the fight\n",
		["name"] = "Ravenous Scalespawn",
		["tags"] = {
			"01181FS", -- [1]
			"20071C8", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:93",
		["targets"] = {
			154916, -- [1]
		},
		["groupID"] = "group:5",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:18"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDB3", -- [1]
			0, -- [2]
			"BattlePet-0-00000E0BBEBE", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/2193\n\nStrategy added by Jadeon#1206\nTurn 1: Wind-Up\nTurn 2: Supercharge\nTurn 3: Wind-Up\nTurn 4: Wind-Up\nPokey comes in\nTurn 5: Powerball\nTurn 6: Supercharge\nTurn 7: Wind-Up\nBurly Jr. comes in\nTurns 8+: Wind-Up until death.\nBring in your Level Pet\nSwap to your Benax\nTurn 1: Swarm of Flies\nTurn 2: Tongue Lash\nContinue Tongue Lash until Burly Jr. is dead and win. \n",
		["name"] = "Strange Looking Dogs",
		["tags"] = {
			"11161BB", -- [1]
			"ZL", -- [2]
			"22171SE", -- [3]
		},
		["teamID"] = "team:18",
		["targets"] = {
			141479, -- [1]
		},
		["groupID"] = "group:5",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:107"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDEE", -- [1]
			0, -- [2]
			"BattlePet-0-00000E0BBCC3", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/526\n\nIf you want to play it safe, use a level 25 rare pet in the second slot\n\nTurn 1: Sandstorm\nTurn 2: Crush\nTurn 3: Rupture\nTurns 4+: From now on, keep Sandstorm always active.\nUse Rupture when available.\nUse Crush otherwise until your Idol dies.\nBring in your Level Pet\nTurn 1: Swap to your Mechanical Pandaren Dragonling\nTurn 2: Decoy\nTurns 3+: Breath away!\nUse Thunderbolt if Mini Electron is the only surviving enemy pet.\n",
		["name"] = "Oh, Ominitron",
		["tags"] = {
			"1126143", -- [1]
			"ZL", -- [2]
			"1225QC", -- [3]
		},
		["teamID"] = "team:107",
		["targets"] = {
			99880, -- [1]
		},
		["groupID"] = "group:4",
	},
	["team:174"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBF3E", -- [1]
			"BattlePet-0-00000E0BBCF3", -- [2]
			"BattlePet-0-00000E0BBD2F", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/7112\n\nStrategy added by Kroan#2404\nDidn't have any luck with other strategies, so returned to the Boneshard + Blackclaw strat that is used for other legendaries. Fight is very random, but tried it a few times and always worked out.\n\nTurn 1: Blistering Cold\nTurn 2: BONESTORM\nTurn 3: Blistering Cold / Chop until Boneshard dies\nBoneshard dies. Bring in Zandalari Anklerender\nTurn 4+: Black Claw\nHunting Party\nTurn 6: If first Zandalari dies, bring in second and continue\n",
		["name"] = "No-No",
		["tags"] = {
			"11231TB", -- [1]
			"202415R", -- [2]
			"220814S", -- [3]
		},
		["teamID"] = "team:174",
		["targets"] = {
			68559, -- [1]
		},
		["groupID"] = "group:2",
	},
	["team:126"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD0C", -- [1]
			"BattlePet-0-00000E0BBDCE", -- [2]
			"BattlePet-0-00000E0BBDC4", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/715\n\nStrategy added by Nyari\nTurn 1: Curse of Doom\nTurn 2: Pass\nTurn 3: Haunt\nBring in Ikky\nTurn 1: Black Claw\nTurns 2+: Flock - Bleakclaw dies\nAn enemy pet comes in\nTurns 1+: Savage Talon until Ikky dies\nBring in your Emerald Proto-Whelp\nTurn 1: Emerald Presence\nTurn 2: Emerald Dream\nTurns 3+: Keep Emerald Presence active and use Emerald Bite otherwise. Use Emerald Dream again if you drop low on health.\n",
		["name"] = "Bleakclaw",
		["tags"] = {
			"221316M", -- [1]
			"11181FS", -- [2]
			"222A14F", -- [3]
		},
		["teamID"] = "team:126",
		["targets"] = {
			94645, -- [1]
		},
		["groupID"] = "group:3",
	},
	["team:245"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD0C", -- [1]
			"BattlePet-0-00000E0BBDCE", -- [2]
			"random:0", -- [3]
		},
		["name"] = "Enok the Stinky",
		["tags"] = {
			"021316M", -- [1]
			"01181FS", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:245",
		["targets"] = {
			202440, -- [1]
		},
		["groupID"] = "group:7",
	},
	["team:147"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD0C", -- [1]
			"BattlePet-0-00000E0BBDCE", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/1435\n\nStrategy added by Aranesh\nTurn 1: Curse of Doom\nTurn 2: Unholy Ascension\nBring in Ikky\nTurn 1: Black Claw\nTurns 2+: Flock\n",
		["name"] = "Pilfer",
		["tags"] = {
			"122316M", -- [1]
			"11181FS", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:147",
		["targets"] = {
			128022, -- [1]
		},
		["groupID"] = "group:4",
	},
	["team:190"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDCE", -- [1]
			"random:0", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/18769\n\nStrategy added by Archeonia#2844\nTurn 1: Black Claw\nTurns 2-4: Flock\nTurn 5: Any standard attack will finish the fight\n",
		["name"] = "Storm-Touched Swoglet",
		["tags"] = {
			"01181FS", -- [1]
			"ZR0", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:190",
		["targets"] = {
			200677, -- [1]
		},
		["groupID"] = "group:7",
		["preferences"] = {
			["minXP"] = 25,
		},
	},
	["team:113"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDB3", -- [1]
			"BattlePet-0-00000E0BBD1B", -- [2]
			"BattlePet-0-00000E0BBCE7", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/6117\n\nStrategy added by Neevi#2149\nWorked pretty well for me\n\nTurn 1: Wind Up\nTurn 2: Wind Up\nTurn 3: Explode, switch to other Explode Pet\nTurn 4: Explode\nTurn 5: Chrominius - Howl\nTurn 6: Surge of Power\n",
		["name"] = "Giant Opaline Conch",
		["tags"] = {
			"10261BB", -- [1]
			"020CAJ", -- [2]
			"0126140", -- [3]
		},
		["teamID"] = "team:113",
		["targets"] = {
			154921, -- [1]
		},
		["groupID"] = "group:5",
	},
	["team:104"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD0C", -- [1]
			"BattlePet-0-00000E0BBDCE", -- [2]
			"BattlePet-0-00000E0BBDC4", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/632\n\nTurn 1: Curse of Doom\nTurn 2: Haunt\nTurn 3: Bring in your Ikky bird\nTurn 4: Black Claw\nTurns 5+: Flock - Direflame dies - Ikky mostly with it\nAn enemy pet comes in\nTurn 1: Bring back in your Unborn Val'kyr\nTurns 2+: Shadow Shock and Curse of Doom until your Val'kyr dies\nBring in your Emerald Proto-Whelp\nTurns 1-3: Emerald Dream\nTurn 4: Emerald Presence (keep active)\nTurns 5+: Emerald Bite until the last pet is dead\n",
		["name"] = "Direflame",
		["tags"] = {
			"221316M", -- [1]
			"11181FS", -- [2]
			"222A14F", -- [3]
		},
		["teamID"] = "team:104",
		["targets"] = {
			94642, -- [1]
		},
		["groupID"] = "group:3",
	},
	["team:136"] = {
		["pets"] = {
			"random:0", -- [1]
			"random:0", -- [2]
			"BattlePet-0-00000E0BBDCE", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/1411\n\nStrategy added by Aranesh\nTurn 1: Pass - your first pet dies\nBring in Ikky\nTurn 1: Black Claw\nTurns 2+: Flock\n",
		["name"] = "Earseeker",
		["tags"] = {
			"ZR0", -- [1]
			"ZR0", -- [2]
			"11181FS", -- [3]
		},
		["teamID"] = "team:136",
		["targets"] = {
			128021, -- [1]
		},
		["groupID"] = "group:4",
	},
	["team:201"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBF3E", -- [1]
			0, -- [2]
			"BattlePet-0-00000E0BBCF3", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/8941\n\nStrategy added by Tinlar#1408\nYour level pet will take some back-line damage so needs about 600 HP.\n\nTurn 1: Blistering Cold\nTurn 2: Chop until Boneshard is dead\nBring in your Level Pet\nBring in your Zandalari Anklerender\nTurn 1: Black Claw\nTurn 2: Hunting Party\n",
		["name"] = "Unit 6",
		["tags"] = {
			"11231TB", -- [1]
			"ZL", -- [2]
			"212415R", -- [3]
		},
		["teamID"] = "team:201",
		["targets"] = {
			154928, -- [1]
		},
		["groupID"] = "group:5",
		["preferences"] = {
			["minHP"] = 601,
			["minXP"] = 10,
		},
	},
	["team:49"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD2E", -- [1]
			"random:0", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/124\n\nTurn 1: Arcane Storm\nTurns 2-4: Mana Surge\n\nThat's it ^^\n",
		["name"] = "The Beakinator",
		["tags"] = {
			"122414D", -- [1]
			"ZR0", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:49",
		["targets"] = {
			85659, -- [1]
		},
		["groupID"] = "group:3",
	},
	["team:177"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBCE7", -- [1]
			0, -- [2]
			"BattlePet-0-00000E0BBD2E", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/233\n\nTurns 1+: Use Ancient Blessing on cooldown, otherwise Arcane Explosion or Pass if you are stunned until Chrominius dies\nBring in your Level Pet\nTurn 1: Swap to your Nexus Whelpling\nTurn 2: Arcane Storm\nTurns 3+: Mana Surge\n",
		["name"] = "Whispering Pandaren Spirit",
		["tags"] = {
			"2226140", -- [1]
			"ZL", -- [2]
			"122414D", -- [3]
		},
		["teamID"] = "team:177",
		["targets"] = {
			68464, -- [1]
		},
		["groupID"] = "group:2",
	},
	["team:33"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDC4", -- [1]
			"random:0", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/13523\n\nStrategy added by Doc#1345\nCredit to Nilremife\n\nTurn 1: Breath\nTurn 2: Breath\nTurn 3: Ancient Blessing\nTurn 4: Emerald Dream\nRepeat these step until Gelatinous is defeat. Does not matter what pet 2 or 3 are, they will die and your dragon will be near full health.\n",
		["name"] = "Gelatinous",
		["tags"] = {
			"112A14F", -- [1]
			"ZR0", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:33",
		["targets"] = {
			175784, -- [1]
		},
		["groupID"] = "group:6",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:262"] = {
		["pets"] = {
			"BattlePet-0-00002107EE9F", -- [1]
			"BattlePet-0-00000E0BBD2E", -- [2]
			0, -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/16498\n\nStrategy added by DragonsAfterDark\n~*~ If you don't want to use this for leveling, and you're using the tdScript, remove the line:\n change(#3)\n\nTurn 1: Corrosion\nTurn 2: Void Nova\nTurn 3: Poison Protocol\nTurn 4+: Corrosion until the Cockroach dies\nCat comes in\nTurn 1+: Corrosion until Cat dies\nChicken comes in\nTurn 1+: Void Nova & Corrosion until Anomalus dies\nOptional: Bring in your Level Pet\n~: Bring in your Nexus Whelpling if skipping the Level Pet, or Swap to your Nexus Whelpling if your Level Pet is in\nTurn 1: Arcane Storm\nTurns 2-4: Mana Surge\n",
		["name"] = "You Have to Start Somewhere",
		["tags"] = {
			"22142OQ", -- [1]
			"122414D", -- [2]
			"ZL", -- [3]
		},
		["teamID"] = "team:262",
		["targets"] = {
			197350, -- [1]
		},
		["groupID"] = "group:7",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:169"] = {
		["pets"] = {
			"BattlePet-0-00002107EE9F", -- [1]
			"BattlePet-0-00000E0BBD1B", -- [2]
			"BattlePet-0-00000E0BBCE7", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/17348\n\nStrategy added by Pleodonis\nTurn 1: Corrosion\nTurn 2: Void Nova\nTurn 3: Poison Protocol\nTurn 4: Corrosion\nTurn 5: Pass\nTurn 6: Void Nova\nAnomalus dies.  Darkmoon Zeppelin comes in\nTurn 7: Explode\nBloodbiter comes in\nBring in your Chrominius\nTurn 8: Bite\nTina comes in\nTurn 9: Howl\nTurn 10: Surge of Power\n",
		["name"] = "The Terrible Three",
		["tags"] = {
			"22142OQ", -- [1]
			"122CAJ", -- [2]
			"1126140", -- [3]
		},
		["teamID"] = "team:169",
		["targets"] = {
			196264, -- [1]
		},
		["groupID"] = "group:7",
	},
	["team:139"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBCAD", -- [1]
			"BattlePet-0-00000E0BBD9A", -- [2]
			"BattlePet-0-00000E0BBD0F", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/11027\n\nStrategy added by matarsaed#2362\nTurn 1: Make it Rain\nTurn 2: Extra Plating\nTurns 3-5: Inflation\nSpindler comes in\nTurn 1: your Lil' Bling should die here (if not - use Make it Rain)\nBring in your Tranquil Mechanical Yeti\nTurn 2: Supercharge\nTurn 3: Call Lightning\nTurn 4: Metal Fist\nRocko comes in\nTurn 1: Metal Fist\nUse Supercharge on CD but not when your Tranquil Mechanical Yeti died once\nMetal Fist until Tranquil Mechanical Yeti dies\nBring in your Scourged Whelpling\nTurn 1: Call Darkness\nTurn 2: Plagued Blood till end of fight\n",
		["name"] = "Eyegor's Special Friends",
		["tags"] = {
			"2215198", -- [1]
			"111C3K", -- [2]
			"0116GQ", -- [3]
		},
		["teamID"] = "team:139",
		["targets"] = {
			173324, -- [1]
		},
		["groupID"] = "group:6",
	},
	["team:61"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD0C", -- [1]
			"BattlePet-0-00000E0BBDCE", -- [2]
			2648, -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/1249\n\nStrategy added by Aranesh\nTurn 1: Curse of Doom\nTurn 2: Haunt\nBring in Ikky\nTurn 3: Black Claw\nTurn 4: Flock\nIf Deathscreech kills your Ikky before they can Flock:\nBring in your Chitterspine Skitterling\nTurns 1-3: Swarm\n",
		["name"] = "Deathscreech",
		["tags"] = {
			"121316M", -- [1]
			"11181FS", -- [2]
			"00202IO", -- [3]
		},
		["teamID"] = "team:61",
		["targets"] = {
			128011, -- [1]
		},
		["groupID"] = "group:4",
	},
	["team:127"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBE04", -- [1]
			"BattlePet-0-00000E0BBD9A", -- [2]
			"BattlePet-0-00000E0BBD2E", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/11879\n\nStrategy added by Maizou\nTook inspiration from DragonsAfterDark's strategy. Re-Uploaded so comments weren't filled with correspondence.\n\nRuneforged Servitor also works in the 2nd Slot. Just use Jolt instead of Metal Fist. I don't think it's possible to set it as a substitute without the same first slot ability, since it DOES matter which one they have in the first slot.\n\nTurn 1: Curse of Doom\nTurn 2: Haunting Song\nTurn 3+: Shadow Shock until Bloog Dies.\nBone Crusher comes in.\nTurn 4+: Shadow Shock until Sister of Temptation dies.\nBring in Tranquil Mechanical Yeti.\n\nTurn 4 ½: Did Bone Crusher heal?\nYes? Metal Fist\nNo? Continue to Turn 5.\n\nTurn 5: Supercharge\nTurn 6: Call Lightning\nBone Crusher dies. Chipper comes in.\nTurn 7+: Metal Fist until Tranquil Mechanical Yeti dies.\nBring in Nexus Whelpling.\nTurn 8: Arcane Storm (You may defeat him here)\nTurn 9: Mana Surge\n",
		["name"] = "Mighty Minions of Maldraxxus",
		["tags"] = {
			"112B1IS", -- [1]
			"111C3K", -- [2]
			"122414D", -- [3]
		},
		["teamID"] = "team:127",
		["targets"] = {
			173257, -- [1]
		},
		["groupID"] = "group:6",
	},
	["team:28"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD0C", -- [1]
			"BattlePet-0-00000E0BBD49", -- [2]
			"BattlePet-0-00000E0BBE91", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/8621\n\nStrategy added by norng\n10 rounds.\n\nTurn 1: Curse of Doom\nTurn 2: Unholy Ascension\nBring in your Eternal Strider\nTurn 1: Cleansing Rain\nTurn 2: Pump\nTurn 3: Pump\nTurn 4: Water Jet - Queen Floret dies\nKing Floret comes in\nTurn 1+: Water Jet - Eternal Strider dies\nBring in your Mud Jumper\nTurn 1: Pump\nTurn 2: Pump\nTurn 3: Water Jet - King Floret dies\n",
		["name"] = "King Floret and Queen Floret",
		["tags"] = {
			"022316M", -- [1]
			"122BBV", -- [2]
			"102C1D1", -- [3]
		},
		["teamID"] = "team:28",
		["targets"] = {
			85624, -- [1]
		},
		["groupID"] = "group:3",
	},
	["team:109"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD92", -- [1]
			"BattlePet-0-00000E0BBCC3", -- [2]
			"BattlePet-0-00000E0BBE35", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/19423\n\nStrategy added by AgentRock#1964\nScript thanks to FMJustice\n\nTurn 1: Moonfire\nTurn 2: Prowl\nTurn 3 -4: Spirit Claws until Lifft is dead\nTurn 5-7: Brul'dan comes in.  Spirit Claws until Xu-Fu, Cub of Xuen is dead.\nBring in Mechanical Pandaren Dragonling\nTurn 8-9: Breath until Brul'dan is dead.\nTurn 10: Swole comes in.  Decoy\nTurn 11-15: Breath until Mechanical Pandaren Dragonling is dead.\nBring is Flayer Youngling\nTurn 16: Triple Snap until Swole uses Dive.  Note, if Swole is already underground when Flayer Youngling comes in, then skip to next step.\nTurn 17: Deflection\nTurn 18+: Rampage until Swole is dead.\n",
		["name"] = "Do You Even Train?",
		["tags"] = {
			"122417I", -- [1]
			"1025QC", -- [2]
			"2224G2", -- [3]
		},
		["teamID"] = "team:109",
		["targets"] = {
			204934, -- [1]
		},
		["groupID"] = "group:7",
	},
	["team:148"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD49", -- [1]
			0, -- [2]
			"BattlePet-0-00000E0BBD09", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/455\n\nOld as pet battles themselves, credit uncertain.\n\nTurn 1: Pump\nTurn 2: Cleansing Rain\nTurn 3+: Water Jet until Siren dies\nToothbreaker comes in\nTurn 1: Pump\nTurn 2: Cleansing Rain\nTurn 3: Pump\nTurn 4+: Water Jet until Toothbreaker dies\nBrood of Mothallus comes in\nTurn 1: Pump\nTurn 2+: Water Jet until Aqua Strider dies\nBring in your Level Pet\nTurn 1: Swap to your Darkmoon Tonk\nTurn 2: Shock and Awe\nTurn 3: Ion Cannon\n",
		["name"] = "Farmer Nishi",
		["tags"] = {
			"122BBV", -- [1]
			"ZL", -- [2]
			"0127AI", -- [3]
		},
		["teamID"] = "team:148",
		["targets"] = {
			66734, -- [1]
		},
		["groupID"] = "group:2",
		["preferences"] = {
			["minHP"] = 248,
			["allowMM"] = true,
			["minXP"] = 2,
		},
	},
	["team:261"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDB3", -- [1]
			"BattlePet-0-00000E0BBDD5", -- [2]
			"random:0", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/1947\n\nStrategy added by Zlazh\nTurn 1: Wind-Up\nTurn 2: Supercharge\nTurn 3: Wind-Up\nTurn 4: Powerball\nTurn 5: An enemy pet comes in\nTurn 6~10: Cast Powerball until Iron Starlette dies\nTurn 11: Bring out yourTeroclaw Hatchling\nTurn 12: Dodge\nTurn 13~: If enemy pet Flying Type cast Alpha Strike until enemy pet hp < 400 then cast Ravage, otherwise cast Ravage then Alpha Strike until enemy pet dies\n",
		["name"] = "Mining Monkey",
		["tags"] = {
			"11161BB", -- [1]
			"21271C8", -- [2]
			"ZR0", -- [3]
		},
		["teamID"] = "team:261",
		["targets"] = {
			119341, -- [1]
		},
		["groupID"] = "group:1",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:159"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBDB3", -- [1]
			"BattlePet-0-00000E0BBDCE", -- [2]
			0, -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/18050\n\nStrategy added by Sinakra\nThis Strategy is similar to Zeeda#1762's, but accounts for Iron Starlette being faster than Mechanical Pandaren Dragonling and also is scripted for a leveling pet as well\n\nTurn 1: Wind-Up\nTurn 2: Supercharge\nTurn 3: Wind-Up\nMechanical Pandaren Dragonling comes in\nTurn 1: Wind-Up\nTurn 2&3: Powerball Until Decoy Gone\nTurn 4: Supercharge\nTurn 5: Wind-Up\nTurn 6: Powerball Until Iron Starlette is dead\nBring in your Level Pet\nTurn 8: Swap to your Ikky\nTurn 9: Any standard attack to kill Mechanical Pandaren Dragonling if alive\nSpectral Tiger Cub comes in\nTurn 1: Black Claw\nTurns 2-4: Flock\n",
		["name"] = "The Grand Master",
		["tags"] = {
			"11161BB", -- [1]
			"01181FS", -- [2]
			"ZL", -- [3]
		},
		["teamID"] = "team:159",
		["targets"] = {
			196069, -- [1]
		},
		["groupID"] = "group:7",
		["preferences"] = {
			["minXP"] = 5,
		},
	},
	["team:273"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBD1B", -- [1]
			"BattlePet-0-00000E0BBDCE", -- [2]
			0, -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/5861\n\nStrategy added by Threewolves\nUpdated 3/13/2021.\n\nTurn 1: Decoy\nTurn 2: Swap to your Leveling Pet\nTurn 3: Swap to your Ikky\nTurn 4: Black Claw\nTurns 5+: Flock til Ikky dies.\nBring in your Darkmoon Zeppelin\nTurn 1:  Decoy\nTurn 2:  Missile til Runts is below 609 health.\nTurn 3: Explode\n",
		["name"] = "Sprouts, Prince Charming, and Runts",
		["tags"] = {
			"122CAJ", -- [1]
			"01181FS", -- [2]
			"ZL", -- [3]
		},
		["teamID"] = "team:273",
		["groupID"] = "group:3",
		["preferences"] = {
			["minXP"] = 1,
		},
	},
	["team:81"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBEE1", -- [1]
			"BattlePet-0-00000E0BBDEC", -- [2]
			"BattlePet-0-00000E0BBD2E", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/9362\n\nStrategy added by DragonsAfterDark\nVideo for Fight (https://www.youtube.com/watch?v=17aS0q2OGbk)\n\nAlternate 12 round strategy here (https://www.wow-petguide.com/Strategy/14982/Natural_Defenders) . Pretty sure it's as stable as you can get!\n\nTurn 1: Greench's Gift\nTurn 2: Booby-Trapped Presents\nTurn 3+: Club until Slugger dies\nRunehoof comes in\nTurn 1+: Club until Rotten Little Helper dies\nBring in your Draenei Micro Defender\nTurn 1: Ion Cannon\nDuster comes in\nTurn 1: Recover\nTurn 2: Recover\nTurn 3+: Metal Fist until Draenei Micro Defender dies\nBring in your Nexus Whelpling\nTurn 1: Arcane Storm\nTurn 2-4: Mana Surge\nTurn 5: Arcane Storm\n",
		["name"] = "Natural Defenders",
		["tags"] = {
			"11141A5", -- [1]
			"10281DA", -- [2]
			"122414D", -- [3]
		},
		["teamID"] = "team:81",
		["targets"] = {
			173372, -- [1]
		},
		["groupID"] = "group:6",
	},
	["team:100"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBE98", -- [1]
			"BattlePet-0-00000E0BBDFC", -- [2]
			"BattlePet-0-00000E0BBD1B", -- [3]
		},
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/12082\n\nStrategy added by norng\n4 rounds.\n\nTurn 1: Sunlight - Crimson Spore comes in\nTurn 2: Explode\nBring in your Darkmoon Zeppelin\nTurn 1: Decoy\nTurn 2: Explode - Shadeflicker dies\n",
		["name"] = "Shadeflicker",
		["tags"] = {
			"010A1H5", -- [1]
			"00261G1", -- [2]
			"022CAJ", -- [3]
		},
		["teamID"] = "team:100",
		["targets"] = {
			128016, -- [1]
		},
		["groupID"] = "group:4",
	},
	["team:278"] = {
		["pets"] = {
			"BattlePet-0-00000E0BBED0", -- [1]
			"random:4", -- [2]
			"random:4", -- [3]
		},
		["name"] = "asdf",
		["tags"] = {
			"12151TM", -- [1]
			"ZR4", -- [2]
			"ZR4", -- [3]
		},
		["teamID"] = "team:278",
		["groupID"] = "group:none",
	},
}
Rematch5SavedGroups = {
	["group:2"] = {
		["showTab"] = true,
		["sortMode"] = 1,
		["isExpanded"] = true,
		["teams"] = {
			"team:257", -- [1]
			"team:173", -- [2]
			"team:171", -- [3]
			"team:236", -- [4]
			"team:148", -- [5]
			"team:167", -- [6]
			"team:168", -- [7]
			"team:178", -- [8]
			"team:116", -- [9]
			"team:150", -- [10]
			"team:222", -- [11]
			"team:95", -- [12]
			"team:191", -- [13]
			"team:137", -- [14]
			"team:252", -- [15]
			"team:174", -- [16]
			"team:87", -- [17]
			"team:2", -- [18]
			"team:188", -- [19]
			"team:206", -- [20]
			"team:175", -- [21]
			"team:177", -- [22]
		},
		["icon"] = 572035,
		["groupID"] = "group:2",
		["name"] = "Pandaria",
	},
	["group:none"] = {
		["showTab"] = true,
		["sortMode"] = 1,
		["isExpanded"] = true,
		["teams"] = {
			"team:278", -- [1]
			"team:268", -- [2]
			"team:277", -- [3]
			"team:272", -- [4]
			"team:276", -- [5]
			"team:274", -- [6]
			"team:84", -- [7]
		},
		["meta"] = true,
		["groupID"] = "group:none",
		["icon"] = "Interface\\Icons\\PetJournalPortrait",
		["name"] = "Ungrouped Teams",
	},
	["group:4"] = {
		["showTab"] = true,
		["sortMode"] = 1,
		["isExpanded"] = true,
		["teams"] = {
			"team:39", -- [1]
			"team:181", -- [2]
			"team:239", -- [3]
			"team:52", -- [4]
			"team:129", -- [5]
			"team:76", -- [6]
			"team:216", -- [7]
			"team:221", -- [8]
			"team:108", -- [9]
			"team:4", -- [10]
			"team:195", -- [11]
			"team:61", -- [12]
			"team:136", -- [13]
			"team:203", -- [14]
			"team:111", -- [15]
			"team:40", -- [16]
			"team:73", -- [17]
			"team:142", -- [18]
			"team:25", -- [19]
			"team:106", -- [20]
			"team:255", -- [21]
			"team:47", -- [22]
			"team:90", -- [23]
			"team:68", -- [24]
			"team:211", -- [25]
			"team:57", -- [26]
			"team:64", -- [27]
			"team:172", -- [28]
			"team:31", -- [29]
			"team:13", -- [30]
			"team:193", -- [31]
			"team:115", -- [32]
			"team:121", -- [33]
			"team:153", -- [34]
			"team:20", -- [35]
			"team:267", -- [36]
			"team:107", -- [37]
			"team:158", -- [38]
			"team:160", -- [39]
			"team:147", -- [40]
			"team:54", -- [41]
			"team:118", -- [42]
			"team:42", -- [43]
			"team:207", -- [44]
			"team:100", -- [45]
			"team:223", -- [46]
			"team:218", -- [47]
			"team:204", -- [48]
			"team:21", -- [49]
			"team:140", -- [50]
			"team:41", -- [51]
			"team:44", -- [52]
			"team:141", -- [53]
			"team:72", -- [54]
			"team:10", -- [55]
			"team:122", -- [56]
			"team:250", -- [57]
		},
		["icon"] = 135800,
		["groupID"] = "group:4",
		["name"] = "Legion",
	},
	["group:1"] = {
		["showTab"] = true,
		["sortMode"] = 1,
		["isExpanded"] = true,
		["teams"] = {
			"team:229", -- [1]
			"team:196", -- [2]
			"team:92", -- [3]
			"team:53", -- [4]
			"team:99", -- [5]
			"team:214", -- [6]
			"team:235", -- [7]
			"team:197", -- [8]
			"team:182", -- [9]
			"team:102", -- [10]
			"team:194", -- [11]
			"team:231", -- [12]
			"team:244", -- [13]
			"team:22", -- [14]
			"team:266", -- [15]
			"team:15", -- [16]
			"team:233", -- [17]
			"team:242", -- [18]
			"team:212", -- [19]
			"team:50", -- [20]
			"team:261", -- [21]
			"team:6", -- [22]
			"team:70", -- [23]
			"team:230", -- [24]
			"team:63", -- [25]
			"team:79", -- [26]
			"team:258", -- [27]
			"team:225", -- [28]
			"team:85", -- [29]
			"team:37", -- [30]
			"team:249", -- [31]
			"team:220", -- [32]
			"team:135", -- [33]
		},
		["icon"] = 4661644,
		["groupID"] = "group:1",
		["name"] = "Instanced Battles",
	},
	["group:6"] = {
		["showTab"] = true,
		["sortMode"] = 1,
		["isExpanded"] = true,
		["teams"] = {
			"team:98", -- [1]
			"team:114", -- [2]
			"team:60", -- [3]
			"team:12", -- [4]
			"team:17", -- [5]
			"team:132", -- [6]
			"team:9", -- [7]
			"team:30", -- [8]
			"team:152", -- [9]
			"team:139", -- [10]
			"team:185", -- [11]
			"team:33", -- [12]
			"team:224", -- [13]
			"team:215", -- [14]
			"team:94", -- [15]
			"team:143", -- [16]
			"team:130", -- [17]
			"team:127", -- [18]
			"team:19", -- [19]
			"team:81", -- [20]
			"team:105", -- [21]
			"team:24", -- [22]
			"team:26", -- [23]
			"team:183", -- [24]
			"team:125", -- [25]
			"team:217", -- [26]
		},
		["icon"] = 237542,
		["groupID"] = "group:6",
		["name"] = "Shadowlands",
	},
	["group:5"] = {
		["showTab"] = true,
		["sortMode"] = 1,
		["isExpanded"] = true,
		["teams"] = {
			"team:66", -- [1]
			"team:3", -- [2]
			"team:189", -- [3]
			"team:154", -- [4]
			"team:59", -- [5]
			"team:75", -- [6]
			"team:241", -- [7]
			"team:238", -- [8]
			"team:240", -- [9]
			"team:128", -- [10]
			"team:164", -- [11]
			"team:200", -- [12]
			"team:138", -- [13]
			"team:89", -- [14]
			"team:161", -- [15]
			"team:110", -- [16]
			"team:113", -- [17]
			"team:117", -- [18]
			"team:124", -- [19]
			"team:123", -- [20]
			"team:69", -- [21]
			"team:103", -- [22]
			"team:247", -- [23]
			"team:192", -- [24]
			"team:97", -- [25]
			"team:32", -- [26]
			"team:246", -- [27]
			"team:208", -- [28]
			"team:86", -- [29]
			"team:71", -- [30]
			"team:93", -- [31]
			"team:112", -- [32]
			"team:237", -- [33]
			"team:133", -- [34]
			"team:83", -- [35]
			"team:80", -- [36]
			"team:210", -- [37]
			"team:78", -- [38]
			"team:120", -- [39]
			"team:18", -- [40]
			"team:34", -- [41]
			"team:179", -- [42]
			"team:219", -- [43]
			"team:232", -- [44]
			"team:145", -- [45]
			"team:134", -- [46]
			"team:201", -- [47]
			"team:202", -- [48]
			"team:144", -- [49]
			"team:166", -- [50]
			"team:155", -- [51]
			"team:131", -- [52]
		},
		["icon"] = 2565244,
		["groupID"] = "group:5",
		["name"] = "BFA",
	},
	["group:favorites"] = {
		["showTab"] = true,
		["sortMode"] = 1,
		["name"] = "Favorite Teams",
		["isExpanded"] = true,
		["meta"] = true,
		["icon"] = "Interface\\Icons\\ACHIEVEMENT_GUILDPERK_MRPOPULARITY_RANK2",
		["groupID"] = "group:favorites",
		["teams"] = {
		},
	},
	["group:3"] = {
		["showTab"] = true,
		["sortMode"] = 1,
		["isExpanded"] = true,
		["teams"] = {
			"team:265", -- [1]
			"team:126", -- [2]
			"team:77", -- [3]
			"team:226", -- [4]
			"team:162", -- [5]
			"team:74", -- [6]
			"team:67", -- [7]
			"team:82", -- [8]
			"team:38", -- [9]
			"team:119", -- [10]
			"team:65", -- [11]
			"team:163", -- [12]
			"team:104", -- [13]
			"team:256", -- [14]
			"team:51", -- [15]
			"team:275", -- [16]
			"team:88", -- [17]
			"team:45", -- [18]
			"team:5", -- [19]
			"team:156", -- [20]
			"team:199", -- [21]
			"team:43", -- [22]
			"team:48", -- [23]
			"team:28", -- [24]
			"team:35", -- [25]
			"team:91", -- [26]
			"team:260", -- [27]
			"team:271", -- [28]
			"team:170", -- [29]
			"team:151", -- [30]
			"team:270", -- [31]
			"team:228", -- [32]
			"team:62", -- [33]
			"team:157", -- [34]
			"team:269", -- [35]
			"team:273", -- [36]
			"team:8", -- [37]
			"team:96", -- [38]
			"team:27", -- [39]
			"team:146", -- [40]
			"team:49", -- [41]
			"team:55", -- [42]
			"team:14", -- [43]
			"team:264", -- [44]
		},
		["icon"] = 458224,
		["groupID"] = "group:3",
		["name"] = "Draenor",
	},
	["group:8"] = {
		["sortMode"] = 1,
		["name"] = "Old Masters",
		["teams"] = {
			"team:279", -- [1]
		},
		["groupID"] = "group:8",
		["icon"] = "Interface\\Icons\\INV_Pet_BattlePetTraining",
		["isExpanded"] = true,
	},
	["group:7"] = {
		["showTab"] = true,
		["sortMode"] = 1,
		["isExpanded"] = true,
		["teams"] = {
			"team:254", -- [1]
			"team:46", -- [2]
			"team:56", -- [3]
			"team:209", -- [4]
			"team:109", -- [5]
			"team:245", -- [6]
			"team:58", -- [7]
			"team:29", -- [8]
			"team:36", -- [9]
			"team:187", -- [10]
			"team:1", -- [11]
			"team:186", -- [12]
			"team:176", -- [13]
			"team:149", -- [14]
			"team:263", -- [15]
			"team:101", -- [16]
			"team:213", -- [17]
			"team:253", -- [18]
			"team:198", -- [19]
			"team:190", -- [20]
			"team:227", -- [21]
			"team:159", -- [22]
			"team:180", -- [23]
			"team:169", -- [24]
			"team:165", -- [25]
			"team:248", -- [26]
			"team:16", -- [27]
			"team:23", -- [28]
			"team:184", -- [29]
			"team:205", -- [30]
			"team:234", -- [31]
			"team:243", -- [32]
			"team:251", -- [33]
			"team:259", -- [34]
			"team:7", -- [35]
			"team:11", -- [36]
			"team:262", -- [37]
		},
		["icon"] = 587740,
		["groupID"] = "group:7",
		["name"] = "Dragonflight",
	},
}
Rematch5SavedTargets = {
	{
		"team:1", -- [1]
	}, -- [1]
	[68566] = {
		"team:2", -- [1]
	},
	[142114] = {
		"team:3", -- [1]
	},
	[106476] = {
		"team:4", -- [1]
	},
	[87122] = {
		"team:5", -- [1]
	},
	[116792] = {
		"team:6", -- [1]
	},
	[200688] = {
		"team:7", -- [1]
	},
	[85685] = {
		"team:8", -- [1]
	},
	[175777] = {
		"team:9", -- [1]
	},
	[99035] = {
		"team:10", -- [1]
	},
	[200689] = {
		"team:11", -- [1]
	},
	[175778] = {
		"team:12", -- [1]
	},
	[105455] = {
		"team:13", -- [1]
	},
	[87123] = {
		"team:14", -- [1]
	},
	[116793] = {
		"team:15", -- [1]
	},
	[200690] = {
		"team:16", -- [1]
	},
	[175779] = {
		"team:17", -- [1]
	},
	[141479] = {
		"team:18", -- [1]
	},
	[142054] = {
		"team:200", -- [1]
	},
	[98270] = {
		"team:20", -- [1]
	},
	[141799] = {
		"team:208", -- [1]
	},
	[116794] = {
		"team:22", -- [1]
	},
	[200692] = {
		"team:23", -- [1]
	},
	[175781] = {
		"team:24", -- [1]
	},
	[105840] = {
		"team:25", -- [1]
	},
	[175782] = {
		"team:26", -- [1]
	},
	[87125] = {
		"team:27", -- [1]
	},
	[116795] = {
		"team:231", -- [1]
	},
	[200694] = {
		"team:29", -- [1]
	},
	[175783] = {
		"team:30", -- [1]
	},
	[105841] = {
		"team:31", -- [1]
	},
	[140461] = {
		"team:32", -- [1]
	},
	[175784] = {
		"team:33", -- [1]
	},
	[141292] = {
		"team:34", -- [1]
	},
	[85625] = {
		"team:35", -- [1]
	},
	[200696] = {
		"team:36", -- [1]
	},
	[71924] = {
		"team:37", -- [1]
	},
	[83837] = {
		"team:38", -- [1]
	},
	[200697] = {
		"team:187", -- [1]
	},
	[99742] = {
		"team:40", -- [1]
	},
	[106417] = {
		"team:41", -- [1]
	},
	[128007] = {
		"team:42", -- [1]
	},
	[85626] = {
		"team:43", -- [1]
	},
	[66815] = {
		"team:279", -- [1]
	},
	[105779] = {
		"team:44", -- [1]
	},
	[94601] = {
		"team:45", -- [1]
	},
	[201849] = {
		"team:46", -- [1]
	},
	[128008] = {
		"team:47", -- [1]
	},
	[85627] = {
		"team:48", -- [1]
	},
	[85659] = {
		"team:49", -- [1]
	},
	[71926] = {
		"team:50", -- [1]
	},
	[79751] = {
		"team:51", -- [1]
	},
	[128009] = {
		"team:52", -- [1]
	},
	[71927] = {
		"team:53", -- [1]
	},
	[128010] = {
		"team:54", -- [1]
	},
	[85629] = {
		"team:55", -- [1]
	},
	[204792] = {
		"team:56", -- [1]
	},
	[117950] = {
		"team:57", -- [1]
	},
	[197447] = {
		"team:58", -- [1]
	},
	[141046] = {
		"team:59", -- [1]
	},
	[173303] = {
		"team:60", -- [1]
	},
	[128011] = {
		"team:61", -- [1]
	},
	[85630] = {
		"team:62", -- [1]
	},
	[71929] = {
		"team:63", -- [1]
	},
	[117951] = {
		"team:64", -- [1]
	},
	[79179] = {
		"team:65", -- [1]
	},
	[141814] = {
		"team:66", -- [1]
	},
	[94637] = {
		"team:67", -- [1]
	},
	[128012] = {
		"team:68", -- [1]
	},
	[141879] = {
		"team:69", -- [1]
	},
	[201858] = {
		"team:186", -- [1]
	},
	[154910] = {
		"team:71", -- [1]
	},
	[99077] = {
		"team:72", -- [1]
	},
	[105241] = {
		"team:73", -- [1]
	},
	[94638] = {
		"team:74", -- [1]
	},
	[154911] = {
		"team:75", -- [1]
	},
	[128013] = {
		"team:76", -- [1]
	},
	[85632] = {
		"team:77", -- [1]
	},
	[141945] = {
		"team:78", -- [1]
	},
	[71931] = {
		"team:79", -- [1]
	},
	[154912] = {
		"team:80", -- [1]
	},
	[173372] = {
		"team:81", -- [1]
	},
	[94639] = {
		"team:82", -- [1]
	},
	[154913] = {
		"team:83", -- [1]
	},
	[106552] = {
		"team:84", -- [1]
	},
	[71932] = {
		"team:85", -- [1]
	},
	[154914] = {
		"team:86", -- [1]
	},
	[66918] = {
		"team:87", -- [1]
	},
	[94640] = {
		"team:88", -- [1]
	},
	[154915] = {
		"team:89", -- [1]
	},
	[128015] = {
		"team:90", -- [1]
	},
	[85634] = {
		"team:91", -- [1]
	},
	[71933] = {
		"team:92", -- [1]
	},
	[154916] = {
		"team:93", -- [1]
	},
	[173376] = {
		"team:94", -- [1]
	},
	[73626] = {
		"team:95", -- [1]
	},
	[94641] = {
		"team:96", -- [1]
	},
	[154917] = {
		"team:97", -- [1]
	},
	[173377] = {
		"team:98", -- [1]
	},
	[72285] = {
		"team:99", -- [1]
	},
	[128016] = {
		"team:100", -- [1]
	},
	[201802] = {
		"team:101", -- [1]
	},
	[71934] = {
		"team:102", -- [1]
	},
	[154918] = {
		"team:103", -- [1]
	},
	[94642] = {
		"team:104", -- [1]
	},
	[173315] = {
		"team:105", -- [1]
	},
	[97804] = {
		"team:106", -- [1]
	},
	[99880] = {
		"team:107", -- [1]
	},
	[128017] = {
		"team:108", -- [1]
	},
	[204934] = {
		"team:109", -- [1]
	},
	[154920] = {
		"team:110", -- [1]
	},
	[99210] = {
		"team:111", -- [1]
	},
	[97709] = {
		"team:255", -- [1]
	},
	[154921] = {
		"team:113", -- [1]
	},
	[173381] = {
		"team:114", -- [1]
	},
	[128018] = {
		"team:115", -- [1]
	},
	[66730] = {
		"team:116", -- [1]
	},
	[154922] = {
		"team:117", -- [1]
	},
	[98572] = {
		"team:118", -- [1]
	},
	[94644] = {
		"team:119", -- [1]
	},
	[154923] = {
		"team:120", -- [1]
	},
	[104992] = {
		"team:121", -- [1]
	},
	[128019] = {
		"team:122", -- [1]
	},
	[162461] = {
		"team:123", -- [1]
	},
	[154924] = {
		"team:124", -- [1]
	},
	[173129] = {
		"team:125", -- [1]
	},
	[94645] = {
		"team:126", -- [1]
	},
	[173257] = {
		"team:127", -- [1]
	},
	[154925] = {
		"team:128", -- [1]
	},
	[128020] = {
		"team:129", -- [1]
	},
	[173130] = {
		"team:130", -- [1]
	},
	[142151] = {
		"team:131", -- [1]
	},
	[173131] = {
		"team:132", -- [1]
	},
	[141002] = {
		"team:133", -- [1]
	},
	[154927] = {
		"team:134", -- [1]
	},
	[72290] = {
		"team:135", -- [1]
	},
	[128021] = {
		"team:136", -- [1]
	},
	[66733] = {
		"team:137", -- [1]
	},
	[162465] = {
		"team:138", -- [1]
	},
	[173324] = {
		"team:139", -- [1]
	},
	[105250] = {
		"team:140", -- [1]
	},
	[99150] = {
		"team:141", -- [1]
	},
	[99182] = {
		"team:142", -- [1]
	},
	[173133] = {
		"team:143", -- [1]
	},
	[94647] = {
		"team:256", -- [1]
	},
	[154929] = {
		"team:145", -- [1]
	},
	[87110] = {
		"team:146", -- [1]
	},
	[140813] = {
		"team:237", -- [1]
	},
	[66734] = {
		"team:148", -- [1]
	},
	[201878] = {
		"team:149", -- [1]
	},
	[68555] = {
		"team:150", -- [1]
	},
	[94648] = {
		"team:151", -- [1]
	},
	[173263] = {
		"team:152", -- [1]
	},
	[128023] = {
		"team:153", -- [1]
	},
	[162469] = {
		"team:154", -- [1]
	},
	[140880] = {
		"team:155", -- [1]
	},
	[85419] = {
		"team:156", -- [1]
	},
	[94649] = {
		"team:157", -- [1]
	},
	[128024] = {
		"team:158", -- [1]
	},
	[196069] = {
		"team:159", -- [1]
	},
	[105093] = {
		"team:160", -- [1]
	},
	[139987] = {
		"team:179", -- [1]
	},
	[85420] = {
		"team:162", -- [1]
	},
	[94650] = {
		"team:163", -- [1]
	},
	[142096] = {
		"team:164", -- [1]
	},
	[202458] = {
		"team:165", -- [1]
	},
	[141969] = {
		"team:166", -- [1]
	},
	[68462] = {
		"team:167", -- [1]
	},
	[68558] = {
		"team:168", -- [1]
	},
	[196264] = {
		"team:169", -- [1]
	},
	[85517] = {
		"team:170", -- [1]
	},
	[66738] = {
		"team:171", -- [1]
	},
	[117934] = {
		"team:172", -- [1]
	},
	[68463] = {
		"team:173", -- [1]
	},
	[68559] = {
		"team:174", -- [1]
	},
	[66739] = {
		"team:175", -- [1]
	},
	[197417] = {
		"team:176", -- [1]
	},
	[68464] = {
		"team:177", -- [1]
	},
	[68560] = {
		"team:178", -- [1]
	},
	[85519] = {
		"team:277", -- [1]
	},
	[105512] = {
		"team:181", -- [1]
	},
	[116786] = {
		"team:182", -- [1]
	},
	[67370] = {
		"team:276", -- [1]
	},
	[162458] = {
		"team:112", -- [1]
	},
	[173274] = {
		"team:185", -- [1]
	},
	[175780] = {
		"team:19", -- [1]
	},
	[107489] = {
		"team:203", -- [1]
	},
	[68465] = {
		"team:188", -- [1]
	},
	[140315] = {
		"team:189", -- [1]
	},
	[200677] = {
		"team:190", -- [1]
	},
	[68561] = {
		"team:191", -- [1]
	},
	[141529] = {
		"team:192", -- [1]
	},
	[87124] = {
		"team:265", -- [1]
	},
	[94646] = {
		"team:264", -- [1]
	},
	[104970] = {
		"team:195", -- [1]
	},
	[202452] = {
		"team:263", -- [1]
	},
	[116787] = {
		"team:197", -- [1]
	},
	[200678] = {
		"team:198", -- [1]
	},
	[119346] = {
		"team:258", -- [1]
	},
	[128014] = {
		"team:204", -- [1]
	},
	[175785] = {
		"team:215", -- [1]
	},
	[173267] = {
		"team:217", -- [1]
	},
	[85463] = {
		"team:199", -- [1]
	},
	[154926] = {
		"team:241", -- [1]
	},
	[197102] = {
		"team:205", -- [1]
	},
	[200679] = {
		"team:253", -- [1]
	},
	[68562] = {
		"team:206", -- [1]
	},
	[105386] = {
		"team:207", -- [1]
	},
	[119342] = {
		"team:196", -- [1]
	},
	[175786] = {
		"team:224", -- [1]
	},
	[142234] = {
		"team:210", -- [1]
	},
	[119343] = {
		"team:212", -- [1]
	},
	[116788] = {
		"team:235", -- [1]
	},
	[200680] = {
		"team:213", -- [1]
	},
	[119407] = {
		"team:214", -- [1]
	},
	[204926] = {
		"team:209", -- [1]
	},
	[105674] = {
		"team:216", -- [1]
	},
	[66741] = {
		"team:257", -- [1]
	},
	[85622] = {
		"team:226", -- [1]
	},
	[154928] = {
		"team:201", -- [1]
	},
	[105898] = {
		"team:223", -- [1]
	},
	[105323] = {
		"team:221", -- [1]
	},
	[68563] = {
		"team:222", -- [1]
	},
	[105387] = {
		"team:239", -- [1]
	},
	[104553] = {
		"team:218", -- [1]
	},
	[119345] = {
		"team:242", -- [1]
	},
	[119341] = {
		"team:261", -- [1]
	},
	[85650] = {
		"team:228", -- [1]
	},
	[119344] = {
		"team:233", -- [1]
	},
	[200682] = {
		"team:234", -- [1]
	},
	[119408] = {
		"team:229", -- [1]
	},
	[197336] = {
		"team:180", -- [1]
	},
	[162468] = {
		"team:219", -- [1]
	},
	[154919] = {
		"team:202", -- [1]
	},
	[141215] = {
		"team:232", -- [1]
	},
	[116789] = {
		"team:230", -- [1]
	},
	[128022] = {
		"team:147", -- [1]
	},
	[141588] = {
		"team:240", -- [1]
	},
	[68564] = {
		"team:236", -- [1]
	},
	[105842] = {
		"team:39", -- [1]
	},
	[189376] = {
		"team:227", -- [1]
	},
	[105009] = {
		"team:21", -- [1]
	},
	[162466] = {
		"team:144", -- [1]
	},
	[139489] = {
		"team:238", -- [1]
	},
	[116790] = {
		"team:225", -- [1]
	},
	[200684] = {
		"team:243", -- [1]
	},
	[119409] = {
		"team:244", -- [1]
	},
	[202440] = {
		"team:245", -- [1]
	},
	[141077] = {
		"team:246", -- [1]
	},
	[72009] = {
		"team:249", -- [1]
	},
	[201004] = {
		"team:248", -- [1]
	},
	[162470] = {
		"team:247", -- [1]
	},
	[104782] = {
		"team:250", -- [1]
	},
	[200685] = {
		"team:251", -- [1]
	},
	[68565] = {
		"team:252", -- [1]
	},
	[72291] = {
		"team:220", -- [1]
	},
	[201899] = {
		"team:254", -- [1]
	},
	[173331] = {
		"team:183", -- [1]
	},
	[106542] = {
		"team:211", -- [1]
	},
	[71930] = {
		"team:70", -- [1]
	},
	[116791] = {
		"team:194", -- [1]
	},
	[200686] = {
		"team:259", -- [1]
	},
	[162471] = {
		"team:161", -- [1]
	},
	[105352] = {
		"team:193", -- [1]
	},
	[94643] = {
		"team:260", -- [1]
	},
	[200693] = {
		"team:184", -- [1]
	},
	[197350] = {
		"team:262", -- [1]
	},
	[85624] = {
		"team:28", -- [1]
	},
}
Rematch4Saved = {
	{
		{
			"BattlePet-0-00000E0BBD1B", -- [1]
			515, -- [2]
			282, -- [3]
			334, -- [4]
			339, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDB3", -- [1]
			459, -- [2]
			640, -- [3]
			208, -- [4]
			1387, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBCAD", -- [1]
			1002, -- [2]
			989, -- [3]
			985, -- [4]
			1320, -- [5]
		}, -- [3]
		["tab"] = 8,
		["notes"] = "Strategy added by Begija\nThis fight is quite hard, but works 100% of the time. Part of strategy used from other guide here.\n\nTurn 1: Decoy\nTurn 2-6: Flyby until Zeppelin dies\nTurn 7 / Mech: Explode when ressurected\nBring in your Iron Starlette\nTurn 1: Wind-Up\nTurn 2: Swap to your Lil' Bling\nTurns 3-5: Inflation\nBring in your Iron Starlette\nTurn 1: Supercharge\nTurn 2: Wind-Up\n",
		["teamName"] = "Flummoxed (Mech)",
	}, -- [1]
	[68566] = {
		{
			"BattlePet-0-00000E0BBCF3", -- [1]
			921, -- [2]
			920, -- [3]
			919, -- [4]
			1211, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			1370, -- [2]
			0, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 3,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/4632\n\nStrategy added by Kurasu#2861\nI use Ikky as the base as it tends to be a common pet for people to have (as it's easily available and powerful), but almost any fast 'Flock' pet (I.E. most fliers) will do in a pinch. \n\nBy using the 'sacrificial play' in this way, your 'Flock' has the benefit of the armor break and Black Claw both, wiping the floor with him. Swapping to Ikky would require an extra turn, thus losing on the benefits of broken armor.\n\nTurn 1: Primal Cry\nTurn 2: Black Claw\nTurn 3: Hunting Party. Zandalari Anklerender will die.\nBring in your Ikky\nTurn 1: Flock. Skitterer Xi'a dies.\n",
		["teamName"] = "Skitterer Xi'a",
		["minXP"] = 1,
	},
	[142114] = {
		{
			"BattlePet-0-00000E0BBD0C", -- [1]
			0, -- [2]
			0, -- [3]
			321, -- [4]
			1238, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBD92", -- [1]
			974, -- [2]
			595, -- [3]
			536, -- [4]
			1266, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBF0F", -- [1]
			0, -- [2]
			489, -- [3]
			589, -- [4]
			1721, -- [5]
		}, -- [3]
		["tab"] = 6,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/9168\n\nStrategy added by 하늘용#3273\nTime: ~1:20 (~10 rounds)\n\nTested 6 January 2021\n\nTurn 1: Unholy Ascension\nBring in your Xu-Fu, Cub of Xuen\nTurn 2: Moonfire\nTurn 3: Spirit Claws\nEighty Eight dead & Turbo come in\nTurn 4: Prowl\nTurn 5: Spirit Claws\nTurn 6: Turbo dead & Whiplash come in & Swap to your Stormborne Whelpling\nTurn 7: Arcane Storm\nTurn 8: Mana Surge\n",
		["teamName"] = "Add More to the Collection",
	},
	[106476] = {
		{
			"BattlePet-0-00000E0BBE3A", -- [1]
			449, -- [2]
			310, -- [3]
			564, -- [4]
			568, -- [5]
		}, -- [1]
		{
			0, -- [1]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 5,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/766\n\nTurn 1: Shell Shield\nTurn 2: Refresh Shell Shield when it runs out and use Absorb otherwise until the Allured Tadpole is dead\nConfused Tadpole comes in\nTurn 1: Swap to your Level Pet\nTurn 2: Swap back to your snail\nTurn 3: Shell Shield\nTurns 4+: Refresh Shell Shield when it runs out and use Absorb otherwise until the Confused Tadpole is dead as well\nSubjugated Tadpole comes in\nTurns 1+2: Dive\nTurns 3+: Again, refresh Shell Shield when it runs out and use Absorb until the fight is done\n",
		["teamName"] = "Dazed and Confused and Adorable",
		["minXP"] = 1,
	},
	["Growing Ectoplasm 2"] = {
		{
			"BattlePet-0-00000E0BBCF3", -- [1]
			921, -- [2]
			364, -- [3]
			919, -- [4]
			1211, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDC4", -- [1]
			525, -- [2]
			597, -- [3]
			598, -- [4]
			1167, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 2,
		["notes"] = "Strategy added by Aranesh\nTurn 1: Black Claw\nTurns 2+3: Hunting Party\nTurn 4: Leap until Growing Ectoplasm is dead\nAn enemy pet comes in\nTurns 1+: Black Claw and Hunting Party until your Zandalari Anklerender dies\nBring in your Emerald Proto-Whelp\nTurn 1: Emerald Presence\nTurns 2+: Keep Emerald Presence active, use Emerald Dream when you drop below 1000 health and use Emerald Bite to finish the enemy pets.\n",
	},
	[87122] = {
		{
			"BattlePet-0-00000E0BBD21", -- [1]
			901, -- [2]
			916, -- [3]
			208, -- [4]
			1178, -- [5]
		}, -- [1]
		{
			0, -- [1]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBD09", -- [1]
			777, -- [2]
			646, -- [3]
			209, -- [4]
			338, -- [5]
		}, -- [3]
		["tab"] = 4,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/454\n\nStrategy added by Mia\nTurn 1: Supercharge\nTurn 2: Haywire - Wolfus dies\nTurn 3: Fangra comes in and gets punched in the face.\nTurn 4: Swap to your Level Pet\nTurn 5: Swap back to your Sunreaver Micro-Sentry\nTurn 6: Supercharge\nTurn 7: Haywire - Fangra dies\nTurn 8: Wolfgar comes in and gets punched in the face as well.\nTurn 9: Fel Immolate until your Micro-Sentry is dead (sometimes he can finish the fight)\nBring in your Darkmoon Tonk (or any other level 25 pet with some good attacks\nTurns 1+: Ion Cannon (or whatever you see suitable to finish Wolfgar)\n",
		["teamName"] = "Gargra",
	},
	[116792] = {
		{
			"BattlePet-0-00000E0BBDB3", -- [1]
			459, -- [2]
			640, -- [3]
			208, -- [4]
			1387, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDD5", -- [1]
			504, -- [2]
			574, -- [3]
			802, -- [4]
			1416, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 2,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/1798\n\nStrategy added by NostrA#2338\nprops to Aranesh for his/her strategy, i just changed the TD Script and Strategy to make Teroclaw viable again\n\nTurn 1: use Wind-Up\nTurn 2: use Supercharge\nTurn 3: use Wind-Up\nTurn 4+: use Toxic Smoke until Phyxia dies\nan enemy comes in\nTurn 1+: use Toxic Smoke until your Iron Starlette dies\nbring in your Teroclaw Hatchling\nenemy HP < 618: use Ravage\nif the target enemy is a Flying enemy, you want to use Ravage when the enemy HP is under 406\nwhen not active: use Nature's Ward\nelse: use Alpha Strike\n",
		["teamName"] = "Phyxia",
		["minXP"] = 25,
	},
	[200688] = {
		{
			"BattlePet-0-00000E0BBF3E", -- [1]
			943, -- [2]
			786, -- [3]
			1762, -- [4]
			1963, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBCF3", -- [1]
			921, -- [2]
			920, -- [3]
			919, -- [4]
			1211, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBC65", -- [1]
			119, -- [2]
			0, -- [3]
			163, -- [4]
			479, -- [5]
		}, -- [3]
		["tab"] = 8,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/18585\n\nStrategy added by DragonsAfterDark\nThe same team can be used for the Epic (https://www.wow-petguide.com/Strategy/18586/Wildfire_-_Epic) & Rare (https://www.wow-petguide.com/Strategy/18587/Wildfire_-_Rare) versions.\n\nTurn 1: Blistering Cold\nTurn 2: Chop\nTurn 3: BONESTORM\nTurn 4: Blistering Cold\nBring in your Zandalari Anklerender\nTurn 5: Primal Cry if you're slower\nTurn 6: Black Claw\nTurns 7-8: Hunting Party\nBring in your Elfin Rabbit\nTurn 9+: Stampede\n",
		["teamName"] = "Wildfire - Legendary",
	},
	[85685] = {
		{
			"BattlePet-0-00000E0BBDBB", -- [1]
			459, -- [2]
			566, -- [3]
			208, -- [4]
			1387, -- [5]
		}, -- [1]
		{
			"random:0", -- [1]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 4,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/312\n\nStrategy added by Remte\nIf possible, pick one additional pet that has any damaging spell that does more than 500 damage in one hit.\n\nTurn 1: Wind-Up\nTurn 2: Wind-Up\nTurn 3: Pass\nTurn 4: Wind-Up\nTurn 5: Supercharge\nTurn 6: Wind-Up\n",
		["teamName"] = "Stitches Jr.",
		["minXP"] = 25,
	},
	[175777] = {
		{
			"BattlePet-0-00000E0BBD0C", -- [1]
			0, -- [2]
			218, -- [3]
			652, -- [4]
			1238, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			0, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 7,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/10959\n\nStrategy added by Qvisten#2240\nThanks Runisco for the script :)\n\nTurn 1: Curse of Doom\nTurn 2: Haunt\nBring in your Ikky\nTurn 1: Black Claw\nTurns 2-4: Flock\n",
		["teamName"] = "Crystalsnap",
		["minXP"] = 1,
	},
	[99035] = {
		{
			"BattlePet-0-00000E0BBD2E", -- [1]
			122, -- [2]
			489, -- [3]
			589, -- [4]
			1165, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDC4", -- [1]
			525, -- [2]
			611, -- [3]
			598, -- [4]
			1167, -- [5]
		}, -- [2]
		{
			0, -- [1]
		}, -- [3]
		["tab"] = 5,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/911\n\nIs your Nexus Whelpling faster than Sunny?\nYes:: Tail Sweep => Arcane Storm => Mana Surge\nNo:: Arcane Storm => Mana Surge\nThen:: Tail Sweep until Nexus Whelpling dies\nBring in your Level Pet\nTurn 1: Swap to your Emerald Proto-Whelp\nTurns 2+: If Roots is not dead yet, use Emerald Bite until he is.\nBeaky comes in\nTurn 1: Ancient Blessing\nTurns 2-4: Emerald Dream\nTurn 5: Ancient Blessing\nTurns 6+: Emerald Bite until Beaky is dead\n",
		["teamName"] = "Training with Durian",
	},
	[200689] = {
		{
			"BattlePet-0-00000E0BBF3E", -- [1]
			943, -- [2]
			786, -- [3]
			1762, -- [4]
			1963, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBCF3", -- [1]
			921, -- [2]
			0, -- [3]
			919, -- [4]
			1211, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 8,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/18587\n\nStrategy added by DragonsAfterDark\nThe same team can be used for the Legendary (https://www.wow-petguide.com/Strategy/18585/Wildfire_-_Legendary) & Epic (https://www.wow-petguide.com/Strategy/18586/Wildfire_-_Epic) versions.\n\nMy Team for defeating the Storm-Touched Skitterers can be found here (https://youtu.be/UDUYys-uxuk?t=55).\n\nTurn 1: Blistering Cold\nTurn 2: Chop\nTurn 3: BONESTORM\nTurn 4: Blistering Cold\nBring in your Zandalari Anklerender\nTurn 5: Black Claw\nTurn 6: Hunting Party\n",
		["teamName"] = "Wildfire - Rare",
		["minXP"] = 25,
	},
	[175778] = {
		{
			"BattlePet-0-00000E0BBD73", -- [1]
			119, -- [2]
			312, -- [3]
			159, -- [4]
			378, -- [5]
		}, -- [1]
		{
			"random:0", -- [1]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 7,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/10122\n\nStrategy added by DragonsAfterDark\nIt will take a while, but your bunny will end with 100% hp\n\nYou can also do this method with Lagan / Slithershock Elver (1,1,1), Scrapyard Tunneler (2,1,1), Alloyed Alleyrat (1,2,1), Specimen 97 (1,1,1)\n\nIt's also possible to do this with Inky / Nameless Octopode (1,2,2), & Sneaky Marmot (1,2,2), but you use the blind on turn two and pass on turn three, which loses one round of attack, and will make this last longer.\n\nVideo for Fight (https://www.youtube.com/watch?v=SAQqQd5HWT0)\n\nTurn 1: Scratch\nTurn 2: Scratch\nTurn 3: Dodge\nTurn 4: Scratch\nTurn 5: Scratch\nTurn 6: Burrow goes underground\nTurn 7: Burrow lands\n\nRepeat from TURN 2\n",
		["teamName"] = "Briarpaw",
		["minXP"] = 1,
	},
	[105455] = {
		{
			"BattlePet-0-00000E0BBDB3", -- [1]
			459, -- [2]
			566, -- [3]
			208, -- [4]
			1387, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBCC3", -- [1]
			115, -- [2]
			779, -- [3]
			282, -- [4]
			844, -- [5]
		}, -- [2]
		{
			0, -- [1]
		}, -- [3]
		["tab"] = 5,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/977\n\nThis strat may work with a lower level pet, as long at it can handle 130 aquatic damage\n\nTurn 1: Powerball\nTurn 2: Powerball\nTurn 3: Wind-Up\nTurns 4+: Powerball until Mist Wraith resurrects\nThen:: Supercharge - Mist Wraith dies\nCrawdead comes in\nTurn 1: Wind-Up - Crawdead resurrects\nTurn 2: Wind-Up - Crawdead dies\nGnaw comes in\nTurn 1: Wind-Up - your Iron Starlette dies\nTurn 2: Swap to your Mechanical Pandaren Dragonling\nTurn 3: Thunderbolt\nTurn 4+: Breath until Gnaw has below 560 health\nThen:: Explode\n",
		["teamName"] = "Jarrun's Ladder",
		["minXP"] = 1,
	},
	[87123] = {
		{
			"BattlePet-0-00000E0BBCE7", -- [1]
			299, -- [2]
			0, -- [3]
			0, -- [4]
			1152, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBCC3", -- [1]
			115, -- [2]
			779, -- [3]
			282, -- [4]
			844, -- [5]
		}, -- [2]
		{
			0, -- [1]
		}, -- [3]
		["tab"] = 4,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/42\n\nTurn 1+: Arcane Explosion until Chrominius dies\nBring in your Mechanical Pandaren Dragonling\nTurn 1: Breath\nTurn 2: Thunderbolt\nTurn 3+: Breath until Apexis Guardian resurrects\nThen:: Explode - your small pet gets the full experience points :-)\n",
		["teamName"] = "Vesharr",
		["minXP"] = 1,
	},
	[116793] = {
		{
			"BattlePet-0-00000E0BBDCA", -- [1]
			424, -- [2]
			204, -- [3]
			513, -- [4]
			1541, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBCA9", -- [1]
			384, -- [2]
			713, -- [3]
			710, -- [4]
			277, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBDC4", -- [1]
			525, -- [2]
			597, -- [3]
			598, -- [4]
			1167, -- [5]
		}, -- [3]
		["tab"] = 2,
		["notes"] = "Strategy added by Shadowjk\nTurn 1: Whirlpool\nTurn 2: Call Lightning\nTurn 3: Swap to your Clockwork Gnome\nTurn 4: Build Turret\nTurn 5: Metal Fist\nTurn 6: Metal Fist - Hiss dies\nAn enemy pet comes in\nTurns 1+: Keep Build Turret on cooldown and use Metal Fist otherwise until your Clockwork Gnome dies\nBring back your Hydraling\nTurn 1: Call Lightning\nTurns 2+: Tail Slap until Hydraling dies\nBring in your Emerald Proto-Whelp\nTurn 1: Emerald Presence\nTurn 2-4: Emerald Dream\nTurn 5+: Emerald Bite\n",
		["teamName"] = "Hiss",
	},
	[200690] = {
		{
			"BattlePet-0-00000E0BBE76", -- [1]
			0, -- [2]
			204, -- [3]
			0, -- [4]
			817, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBF3E", -- [1]
			943, -- [2]
			786, -- [3]
			1762, -- [4]
			1963, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBCF3", -- [1]
			921, -- [2]
			0, -- [3]
			919, -- [4]
			1211, -- [5]
		}, -- [3]
		["tab"] = 8,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/18744\n\nStrategy added by DragonsAfterDark\nThe same team can be used for the Legendary (https://www.wow-petguide.com/Strategy/18743/Tremblor_-_Legendary) & Rare (https://www.wow-petguide.com/Strategy/18745/Tremblor_-_Rare) versions.\n\nTurn 1: Call Lightning\nTurn 2: Swap to your Boneshard\nTurn 3: Blistering Cold\nTurn 4: Chop\nTurn 5: BONESTORM\nTurn 6: Blistering Cold\nBring in your Wild Jade Hatchling\nTurn 7: Call Lightning\nTurn 8: Swap to your Zandalari Anklerender\nTurn 9: Black Claw\nTurn 10: Hunting Party\n",
		["teamName"] = "Tremblor - Epic",
	},
	[175779] = {
		{
			"BattlePet-0-00000E0BBD41", -- [1]
			0, -- [2]
			0, -- [3]
			404, -- [4]
			291, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBE15", -- [1]
			0, -- [2]
			0, -- [3]
			663, -- [4]
			453, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBDFC", -- [1]
			0, -- [2]
			1015, -- [3]
			282, -- [4]
			1537, -- [5]
		}, -- [3]
		["tab"] = 7,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/11181\n\nStrategy added by Mutanis\n7 rounds. % strategy without Seaborne Spore or Baa'l.\n\nTurn 1: Sunlight\nTurn 2: Swap to your Infested Bear Cub\nTurn 3: Corpse Explosion\nBring in your Crimson Spore\nTurn 4: Blinding Powder\nTurn 5: Pass\nTurn 6: Explode\nTurn 7: Pass\n",
		["teamName"] = "Chittermaw",
	},
	[141479] = {
		{
			"BattlePet-0-00000E0BBDB3", -- [1]
			459, -- [2]
			566, -- [3]
			208, -- [4]
			1387, -- [5]
		}, -- [1]
		{
			0, -- [1]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBEBE", -- [1]
			228, -- [2]
			232, -- [3]
			934, -- [4]
			1934, -- [5]
		}, -- [3]
		["tab"] = 6,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/2193\n\nStrategy added by Jadeon#1206\nTurn 1: Wind-Up\nTurn 2: Supercharge\nTurn 3: Wind-Up\nTurn 4: Wind-Up\nPokey comes in\nTurn 5: Powerball\nTurn 6: Supercharge\nTurn 7: Wind-Up\nBurly Jr. comes in\nTurns 8+: Wind-Up until death.\nBring in your Level Pet\nSwap to your Benax\nTurn 1: Swarm of Flies\nTurn 2: Tongue Lash\nContinue Tongue Lash until Burly Jr. is dead and win. \n",
		["teamName"] = "Strange Looking Dogs",
		["minXP"] = 1,
	},
	[175780] = {
		{
			"BattlePet-0-00000E0BBD0F", -- [1]
			0, -- [2]
			256, -- [3]
			668, -- [4]
			538, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBD3A", -- [1]
			219, -- [2]
			0, -- [3]
			762, -- [4]
			1343, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBDEE", -- [1]
			406, -- [2]
			0, -- [3]
			490, -- [4]
			1155, -- [5]
		}, -- [3]
		["tab"] = 7,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/14393\n\nStrategy added by Csam#21833\nTurn 1: Call Darkness\nTurns 2-4: Dreadful Breath\nTurns 5-7: Dreadful Breath\nBring in your Bonkers\nTurn 8: Haymaker\nBonkers dies (If not then use Jab until he dies). Then bring it Anubisath.\nTurn 1: Deflection\nTurn 2: Crush\nTurn 3: Crush\n",
		["teamName"] = "Mistwing",
	},
	[98270] = {
		{
			"BattlePet-0-00000E0BBCB6", -- [1]
			777, -- [2]
			634, -- [3]
			293, -- [4]
			227, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBD09", -- [1]
			777, -- [2]
			646, -- [3]
			209, -- [4]
			338, -- [5]
		}, -- [2]
		{
			0, -- [1]
		}, -- [3]
		["tab"] = 5,
		["notes"] = "Strategy added by Thordros#1784\nThis is my attempt at eliminating most of the randomness surrounding Wumpas stunning you with Headbutt, while still keeping a low kill time (<80 seconds). Although there are other bots with the same moveset, the P/P and P/S bots are the only ones that can reliably kill both Thrugtusk and Wumpas in 7 rounds.There is an extremely rare edge case where Thrugtusk can get insanely lucky crits and kill your Warbot (including the Mechanical phase!) before dying. The TD Script will attempt to salvage the fight with your Darkmoon Tonk, and does so successfully 75% of the time—the other 25%, Wumpas will stun you with Headbutt and you're very unlikely to win.\n\nTurn 1: Minefield\nTurn 2-3: Launch Rocket\nTurn 4+: Missile\nWumpas comes in\nTurn 1+: Launch Rocket\nIf your Warbot dies here, bring in your Darkmoon Tonk early and use Shock and Awe.\nBaeloth comes in\nTurn 1: Swap to your Level Pet\nTurn 2: Swap to your Darkmoon Tonk\nTurn 3: Shock and Awe\nIf your Warbot died to Wumpas, use Missile here until Baeloth has <1099 health remaining.\nTurn 4: Ion Cannon\n",
		["teamName"] = "My Beast's Bidding",
	},
	[105009] = {
		{
			"BattlePet-0-00000E0BBCA9", -- [1]
			384, -- [2]
			278, -- [3]
			710, -- [4]
			277, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			1370, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 5,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/9026\n\nStrategy added by Shin\nI've tested this on 10 characters and it has worked every time.\nPet battle script included.\n\nTurn 1: Metal Fist\nTurn 2: Build Turret\nTurn 3: Swap to your Ikky\nTurn 4: Black Claw\nTurns 5-7: Flock\n~: Ikky should kill thistle or the turret will finish it off\nBring in your Clockwork Gnome\nTurn 1+: Any standard attack will finish the fight\n",
		["teamName"] = "Stand Up to Bullies",
	},
	[116794] = {
		{
			"BattlePet-0-00000E0BBCC3", -- [1]
			115, -- [2]
			647, -- [3]
			334, -- [4]
			844, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBD1B", -- [1]
			777, -- [2]
			647, -- [3]
			334, -- [4]
			339, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBDC4", -- [1]
			525, -- [2]
			597, -- [3]
			598, -- [4]
			1167, -- [5]
		}, -- [3]
		["tab"] = 2,
		["notes"] = "Strategy added by Aranesh\nTurn 1: Decoy\nTurns 2+: Breath until Growing Ectoplasm is dead\nIf your Mechanical Pandaren Dragonling dies too early, bring in your random level 25 pet and use standard spells to kill Growing Ectoplasm\nAn enemy pet comes in\nTurns 1+: Breath and Decoy with your Mechanical Pandaren Dragonling and your random pet until they are both dead\nBring in your Emerald Proto-Whelp\nTurn 1: Emerald Presence\nTurns 2+: Keep Emerald Presence active, use Emerald Dream when you drop below 1000 health and use Emerald Bite to finish the enemy pets.\n\nDon't forget to jump! ;-)\n",
		["teamName"] = "Growing Ectoplasm 1",
		["minXP"] = 25,
	},
	[200692] = {
		{
			"BattlePet-0-00000E0BBF3E", -- [1]
			943, -- [2]
			786, -- [3]
			0, -- [4]
			1963, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			0, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBCF3", -- [1]
			921, -- [2]
			364, -- [3]
			919, -- [4]
			1211, -- [5]
		}, -- [3]
		["tab"] = 8,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/18632\n\nStrategy added by Ravenousdead\nFirst: Blistering Cold on CD\nSecond: use Chop as filler\nBoneshard dies - Bring in Ikky\nFirst: Black Claw if missing\nSecond: Flock on CD\nIkky dies - Bring in Zandalari Anklerender\nFirst: Black Claw if missing\nSecond: Hunting Party on CD\nThird: Leap as filler\n",
		["teamName"] = "Tremblor - Legendary",
	},
	[175781] = {
		{
			"BattlePet-0-00000E0BBF3E", -- [1]
			943, -- [2]
			786, -- [3]
			1762, -- [4]
			1963, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBD2F", -- [1]
			0, -- [2]
			919, -- [3]
			0, -- [4]
			1180, -- [5]
		}, -- [2]
		{
			0, -- [1]
		}, -- [3]
		["tab"] = 7,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/11420\n\nStrategy added by Xerxes\nAny pet with Black Claw should work in slot 2.\n\nThe first attack from the enemy pet has a small chance to crit and drop Boneshard to 1 HP. In this case, restart the fight.\n\nYour level pet can have less than 700 HP.\nThe last hit will do about 400 damage, but I've seen it crit for around 700 HP.\n\nTD Script by Yolo (https://www.wow-petguide.com/index.php?user=11440)\n\nEnjoy :)\n\nTurn 1: Blistering Cold\nBoneshard should be roughly half HP. If he's 1 HP, restart the fight.\nTurn 2: Chop\nBoneshard should be 20 HP\nTurn 3: BONESTORM\nTurn 4: Blistering Cold\nBring in your Zandalari Kneebiter\nTurn 5: Black Claw\nTurn 6: Pass\nTurn 7: Pass\n",
		["teamName"] = "Sewer Creeper",
		["minXP"] = 15,
		["minHP"] = 701,
	},
	[105840] = {
		{
			"BattlePet-0-00000E0BBD09", -- [1]
			777, -- [2]
			646, -- [3]
			301, -- [4]
			338, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBCE7", -- [1]
			110, -- [2]
			362, -- [3]
			593, -- [4]
			1152, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 5,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/755\n\nTurns 1+: Lock-On until your Darkmoon Tonkdies\nBring in Chrominius\nTurn 1: Howl\nTurn 2: Surge of Power\n",
		["teamName"] = "Fight Night: Stitches Jr. Jr.",
	},
	[175782] = {
		{
			"BattlePet-0-00000E0BBF3E", -- [1]
			943, -- [2]
			786, -- [3]
			1762, -- [4]
			1963, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			184, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 7,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/11414\n\nStrategy added by angbad#1501\nTurn 1: Blistering Cold\nTurn 2: Chop\nTurn 3: Chop\nTurn 4: Swap to your Ikky\nTurn 5: Black Claw\nTurns 6-8: Flock\n",
		["teamName"] = "The Countess",
		["minXP"] = 25,
	},
	[87125] = {
		{
			0, -- [1]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBCA9", -- [1]
			384, -- [2]
			278, -- [3]
			710, -- [4]
			277, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBD13", -- [1]
			118, -- [2]
			564, -- [3]
			418, -- [4]
			868, -- [5]
		}, -- [3]
		["tab"] = 4,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/22\n\nStrategy added by Aranesh\nTurn 1: Pass\nTurn 2: Swap to Clockwork Gnome\nTurn 3: Build Turret\nTurn 4: Metal Fist - this will get interrupted\nTurns 5-6: Repair\nTurn 7: Build Turret\nTurn 8: Metal Fist\nTurn 9: Metal Fist\nTurn 10: Build Turret - Serendipity dies\nGrace comes in\nTurn 11: Metal Fist - Grace will cast Lightning, sealing its own fate thanks to your turrets ^^\nTurn 12: Metal Fist - don't bother repairing again. Your gnome won't survive long enough.\nIf your Clockwork Gnome survived, build another turret and keep using Metal Fist until it dies.\nAtonement should be out when you switch to your Pandaren Water Spirit\nDepending on how much life Atonement still has, you can either Water Jet it down (less than 500 HP) or use Geyser, Dive, Water Jet to finish the fight\n",
		["teamName"] = "Taralune",
	},
	[85624] = {
		{
			"BattlePet-0-00000E0BBD0C", -- [1]
			0, -- [2]
			218, -- [3]
			321, -- [4]
			1238, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBD49", -- [1]
			118, -- [2]
			230, -- [3]
			297, -- [4]
			383, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBE91", -- [1]
			118, -- [2]
			0, -- [3]
			297, -- [4]
			1441, -- [5]
		}, -- [3]
		["tab"] = 4,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/8621\n\nStrategy added by norng\n10 rounds.\n\nTurn 1: Curse of Doom\nTurn 2: Unholy Ascension\nBring in your Eternal Strider\nTurn 1: Cleansing Rain\nTurn 2: Pump\nTurn 3: Pump\nTurn 4: Water Jet - Queen Floret dies\nKing Floret comes in\nTurn 1+: Water Jet - Eternal Strider dies\nBring in your Mud Jumper\nTurn 1: Pump\nTurn 2: Pump\nTurn 3: Water Jet - King Floret dies\n",
		["teamName"] = "King Floret and Queen Floret",
	},
	[200694] = {
		{
			"BattlePet-0-00000E0BBF3E", -- [1]
			943, -- [2]
			786, -- [3]
			1762, -- [4]
			1963, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBCF3", -- [1]
			921, -- [2]
			920, -- [3]
			919, -- [4]
			1211, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 8,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/18674\n\nStrategy added by station384\nWorks.  Not the most efficient.\nThis is an attrition fight,  bone shard sets up the DOT that won't go away,  the Raptor breaks its shield so it takes damage and dies.\nIt would be fast I think if use bone shard for first turn to put on the bleed,  them switch to raptor and do cycle till bone dies, then back to raptor finish it off.   not sure.\n\n\nTurn 1: Blistering Cold\nTurn 2: Chop\nTurn 3: BONESTORM\nTurn 4: Repeat till Boneshard dead\nTurn 5: Primal Cry\nTurn 6: Black Claw\nTurns 7-8: Hunting Party\nTurn 8: Repeat 5-7 till target dead\n\n\n",
		["teamName"] = "Flow - Epic",
		["minXP"] = 1,
	},
	[175783] = {
		{
			"BattlePet-0-00000E0BBF3E", -- [1]
			0, -- [2]
			786, -- [3]
			0, -- [4]
			1963, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			0, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 7,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/11352\n\nStrategy added by angbad#1501\nQuick and Easy\n\nTurn 1: Blistering Cold\nTurn 2: Swap to your Ikky\nTurn 3: Black Claw\nTurn 4: Flock\nBring in your Boneshard\nTurn 5: Pass\n",
		["teamName"] = "Digallo",
		["minXP"] = 25,
	},
	[105841] = {
		{
			"BattlePet-0-00000E0BBD0C", -- [1]
			210, -- [2]
			218, -- [3]
			321, -- [4]
			1238, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDB3", -- [1]
			459, -- [2]
			0, -- [3]
			208, -- [4]
			1387, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 5,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/5737\n\nStrategy added by Okutane#1583\nMy first strategy. I didn't had required pets for other strategies nor any experience with battling elite pets, but it was a one shot.\n\nTurn 1: Curse of Doom\nTurn 1+: Shadow Slash until Unborn Val'kyr dies\nThen: Unholy Ascension during undead round\nBring in Iron Starlette\nTurn 5: Wind-Up\nTurn 6: Supercharge\nTurn 7: Wind-Up - Lil'idan dead!\n",
		["teamName"] = "It's Illid... Wait.",
		["minXP"] = 1,
	},
	[140461] = {
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			184, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [1]
		{
			0, -- [1]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBCAD", -- [1]
			983, -- [2]
			392, -- [3]
			985, -- [4]
			1320, -- [5]
		}, -- [3]
		["tab"] = 6,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/1717\n\nStrategy added by Lazey\n*** 9.0.2 approved ***\n\nTurn 1: Black Claw\nTurn 2+: Flock until Atherton is dead.\nBybee comes in\nTurn 1: Black Claw\nTurn 2+: Flock until Bybee is dead.\nJennings comes in\nTurn 1: Black Claw until Ikky has 366HP or less. (Ikky must be killed by Jennings!)\nTurn 2: Flock until Ikky is dead.\nBring in your Level Pet\nSwap to your Lil' Bling\nTurn 1: Make it Rain\nAny standard attack will finish the fight\n",
		["teamName"] = "Night Horrors",
		["minXP"] = 1,
	},
	[175784] = {
		{
			"BattlePet-0-00000E0BBDC4", -- [1]
			115, -- [2]
			611, -- [3]
			598, -- [4]
			1167, -- [5]
		}, -- [1]
		{
			"random:0", -- [1]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 7,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/13523\n\nStrategy added by Doc#1345\nCredit to Nilremife\n\nTurn 1: Breath\nTurn 2: Breath\nTurn 3: Ancient Blessing\nTurn 4: Emerald Dream\nRepeat these step until Gelatinous is defeat. Does not matter what pet 2 or 3 are, they will die and your dragon will be near full health.\n",
		["teamName"] = "Gelatinous",
		["minXP"] = 1,
	},
	[141292] = {
		{
			"BattlePet-0-00000E0BBF21", -- [1]
			1773, -- [2]
			1758, -- [3]
			518, -- [4]
			1975, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBED0", -- [1]
			0, -- [2]
			0, -- [3]
			518, -- [4]
			1974, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 6,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/2255\n\nStrategy added by Eekwibble\nI changed this from having a carry pet because the xp is so lame since the nerf. The upside is, it now only lasts 13 rounds.\n\nTurn 1: Ironskin\nTurns 2&3: Falcosaur Swarm!\nTurn 4: Predatory Strike - Fungus dies\nMort comes in\nTurn 1: Pass\nTurn 2: Ironskin\nTurns 3&4: Falcosaur Swarm!\nTurn 5: Predatory Strike - Mort dies\nOld Blue comes in\nTurn 1+: Falcosaur Swarm! until Direbeak Hatchling dies\nBring in your Snowfeather Hatchling\nThen:: Predatory Strike - Old Blue dies\n",
		["teamName"] = "That's a Big Carcass",
		["minXP"] = 25,
	},
	[85625] = {
		{
			"BattlePet-0-00000E0BBF3E", -- [1]
			0, -- [2]
			786, -- [3]
			0, -- [4]
			1963, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBCF3", -- [1]
			921, -- [2]
			0, -- [3]
			919, -- [4]
			1211, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			0, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [3]
		["tab"] = 4,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/14864\n\nStrategy added by mAd#1759\nTurn 1: Blistering Cold\nTurn 2: Swap to your Ikky\nTurn 3: Black Claw\nTurns 4-6: Flock\nGromli comes in\nBring in your Boneshard\nTurn 1: Blistering Cold\nBring in your Zandalari Anklerender\nTurn 1: Black Claw\nTurns 4-5: Hunting Party\n",
		["teamName"] = "Kromli and Gromli",
	},
	[200696] = {
		{
			"BattlePet-0-00000E0BBD0C", -- [1]
			210, -- [2]
			218, -- [3]
			652, -- [4]
			1238, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			0, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 8,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/18664\n\nStrategy added by Sevena\nTurn 1: Shadow Slash\nTurn 2: Shadow Slash\nTurn 3: Curse of Doom\nTurn 4: Haunt\nBring in Ikky\nTurn 1: Black Claw\nTurn 2: Flock\n",
		["teamName"] = "Flow - Legendary",
		["minXP"] = 1,
	},
	[71924] = {
		{
			0, -- [1]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBEAC", -- [1]
			493, -- [2]
			1231, -- [3]
			652, -- [4]
			1442, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBD0F", -- [1]
			122, -- [2]
			256, -- [3]
			668, -- [4]
			538, -- [5]
		}, -- [3]
		["tab"] = 2,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/5195\n\nStrategy added by sistercoyote\nStrat by roeevv on Wowhead (https://www.wowhead.com/npc=71924/wrathion#comments:id=2478101). I personally haven't tested this one yet.\n\nBring in your Level Pet\nTurn 1: Pass\nTurn 2: Swap to your Ghastly Kid\nTurn 3: Consume Magic\nTurn 4: Hoof\nConsume Magic on Cindy's Undead round\nAlex comes in\nTurn 1: Haunt\nBring in your Scourged Whelpling\nTurn 1: Call Darkness\nTurn 2-4: Dreadful Breath\nContinue as described.\nIf Scourged Whelpling doesn't kill Dah'da, bring Ghastly Kid back and Hoof.\nTurn 8: \n",
		["teamName"] = "Wrathion",
		["minXP"] = 1,
	},
	[83837] = {
		{
			"BattlePet-0-00000E0BBEAB", -- [1]
			111, -- [2]
			574, -- [3]
			404, -- [4]
			1568, -- [5]
		}, -- [1]
		{
			0, -- [1]
		}, -- [2]
		{
			0, -- [1]
		}, -- [3]
		["tab"] = 4,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/10922\n\nStrategy added by Bumrusher\nTurn 1: Sunlight\nTurn 2: Nature's Ward\nTurn 3: Swap to Level Pet 2\nTurn 4: Swap to Level Pet 3\nTurn 5: Swap to Puddle Terror\nTurn 6: Nature's Ward\nTurn 7: Sunlight\nTurn 8: Nature's Ward\nTurn 9: Nature's Ward\nTurn 10: Nature's Ward\nTurn 11: Nature's Ward\nTurn 12: Nature's Ward\nTurn 13: Sunlight\nRepeat Turn 8 to 13 until Gyrexle, the Eternal Mechanic dies\nUse Punch 309 Damage or Sunlight to bring Idol of Decay under 250 health\nIdol of Decay will use his revive ability when he does this use Nature's Ward\nOnce the revive ability drops off kill Idol of Decay\nWishbright Lantern Will enter with less then 618 health\nTurn 1: Punch\nTurn 2: Punch\n",
		["teamName"] = "Cymre Brightblade",
		["minXP"] = 1,
		["minHP"] = 121,
	},
	[105842] = {
		{
			"BattlePet-0-00000E0BBCA9", -- [1]
			0, -- [2]
			713, -- [3]
			0, -- [4]
			277, -- [5]
		}, -- [1]
		{
			"random:0", -- [1]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 5,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/762\n\nTurns 1+: Blitz! Just use that spell over and over.\nThat's it, there is nothing more to this strategy :-)\n",
		["teamName"] = "All Howl, No Bite",
		["minXP"] = 1,
	},
	[99742] = {
		{
			"BattlePet-0-00000E0BBD0C", -- [1]
			0, -- [2]
			218, -- [3]
			652, -- [4]
			1238, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			0, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 5,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/754\n\nTurn 1: Curse of Doom\nTurn 2: Haunt\nBring in Ikky\nTurn 1: Black Claw\nTurns 2+: Flock\n",
		["teamName"] = "Fight Night: Heliosus",
		["minXP"] = 1,
	},
	[106417] = {
		{
			"BattlePet-0-00000E0BBDE6", -- [1]
			0, -- [2]
			757, -- [3]
			0, -- [4]
			1073, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBD0C", -- [1]
			0, -- [2]
			218, -- [3]
			652, -- [4]
			1238, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			0, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [3]
		["tab"] = 5,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/8313\n\nStrategy added by ScarecrowPete\nImplementation of a suggestion by Anonymous on the strategy by Aranesh posted above. This should eliminate the RNG of Curse of Doom missing by increasing our hit chance using Lucky Dance. Terky can clean up whatever remains once Ikky is done flocking. TD script isnt perfect, I'm a bit new at this, thank you for your patience.\n\nTurn 1: Lucky Dance\nTurn 2: Swap to Unborn Valkyr\nTurn 3: Curse of Doom\nTurn 4: Haunt\nTurn 5: Swap to Ikky\nTurn 6: Black Claw\nTurn 7: Flock until Vinu dies\nTurn 8: Keep repeating Black Claw and Flock until the backline pets die. If Ikky dies, swap to your murloc and use your first ability to clear up.\n",
		["teamName"] = "The Wine's Gone Bad",
	},
	[128007] = {
		{
			"BattlePet-0-00000E0BBD0C", -- [1]
			422, -- [2]
			218, -- [3]
			652, -- [4]
			1238, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			184, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 5,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/1297\n\nStrategy added by Lazey\n*** 9.0.2 approved ***\n\nMake sure your 3rd pet has a damaging attack selected.\nScript added\n\nTurn 1: Curse of Doom\nTurn 2: Shadow Shock\nTurn 3: Haunt\nBring in Ikky\nTurn 1: Black Claw\nTurns 2+: Flock - Ikky dies\nBring in your 3rd pet\nTurns 1+: Any standard attack will finish the fight\n",
		["teamName"] = "Ruinhoof",
		["minXP"] = 25,
	},
	[85626] = {
		{
			"BattlePet-0-00000E0BBDEE", -- [1]
			406, -- [2]
			453, -- [3]
			490, -- [4]
			1155, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDB3", -- [1]
			459, -- [2]
			566, -- [3]
			208, -- [4]
			1387, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBD09", -- [1]
			777, -- [2]
			646, -- [3]
			209, -- [4]
			338, -- [5]
		}, -- [3]
		["tab"] = 4,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/10\n\nTurn 1: Sandstorm\nTurn 2: Crush\nTurn 3: Crush\nTurn 4: Crush\nTurn 5: Crush\nTurn 6: Crush - Sometimes Grubbles dies here already. In that case skip to Scrags.\nTurn 7: Deflection\nTurns 8+: Crush until Grubbles is dead\nScrags comes in\nTurn 1: Pass - you get stunned.\nTurn 2: Swap to Iron Starlette\nTurn 3: Wind-Up\nTurn 4: Supercharge\nTurns 5: Wind-Up\nStings comes in\nTurn 1: Wind-Up\nTurn 2: Powerball\nTurn 3: Supercharge\nTurn 4: Wind-Up\nTurn 5: If Iron Starlette died too early, bring Bring in Darkmoon Tonk and depending on Stings HP use either Shock and Awe or Ion Cannon or both starting with Shock and awe.\n",
		["teamName"] = "Grubbles, Scrags and Stings",
	},
	["My Beast's Bidding"] = {
		{
			"BattlePet-0-00000E0BBCB6", -- [1]
			777, -- [2]
			634, -- [3]
			293, -- [4]
			227, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBD09", -- [1]
			777, -- [2]
			646, -- [3]
			209, -- [4]
			338, -- [5]
		}, -- [2]
		{
			0, -- [1]
		}, -- [3]
		["tab"] = 5,
		["notes"] = "Strategy added by Thordros#1784\nThis is my attempt at eliminating most of the randomness surrounding Wumpas stunning you with Headbutt, while still keeping a low kill time (<80 seconds). Although there are other bots with the same moveset, the P/P and P/S bots are the only ones that can reliably kill both Thrugtusk and Wumpas in 7 rounds.There is an extremely rare edge case where Thrugtusk can get insanely lucky crits and kill your Warbot (including the Mechanical phase!) before dying. The TD Script will attempt to salvage the fight with your Darkmoon Tonk, and does so successfully 75% of the time—the other 25%, Wumpas will stun you with Headbutt and you're very unlikely to win.\n\nTurn 1: Minefield\nTurn 2-3: Launch Rocket\nTurn 4+: Missile\nWumpas comes in\nTurn 1+: Launch Rocket\nIf your Warbot dies here, bring in your Darkmoon Tonk early and use Shock and Awe.\nBaeloth comes in\nTurn 1: Swap to your Level Pet\nTurn 2: Swap to your Darkmoon Tonk\nTurn 3: Shock and Awe\nIf your Warbot died to Wumpas, use Missile here until Baeloth has <1099 health remaining.\nTurn 4: Ion Cannon\n",
	},
	[105779] = {
		{
			"BattlePet-0-00000E0BBCC3", -- [1]
			115, -- [2]
			0, -- [3]
			282, -- [4]
			844, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBD1B", -- [1]
			0, -- [2]
			282, -- [3]
			779, -- [4]
			339, -- [5]
		}, -- [2]
		{
			0, -- [1]
		}, -- [3]
		["tab"] = 5,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/1864\n\nStrategy added by Eekwibble\nTurn 1+: Breath until Eye of Inquisition and Eye of Interrogation are dead\nEye of Impetration comes in\nTurn 1: Breath/pass/whatever, you'll get interrupted anyway\nTurn 2: Breath\nTurn 3: Explode - Mechanical Pandaren Dragonling dies\nBring in your Darkmoon Zeppelin\nTurn 4+: Does Eye of Impetration have over 555hp?\nYes - Thunderbolt > Explode\nNo - Explode\nDarkmoon Zeppelin and Eye of Impetration both die, your carry pet gets the xp\n",
		["teamName"] = "Threads of Fate",
		["minXP"] = 1,
	},
	[94601] = {
		{
			"BattlePet-0-00000E0BBEE8", -- [1]
			962, -- [2]
			667, -- [3]
			786, -- [4]
			1396, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			1370, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBDC4", -- [1]
			525, -- [2]
			597, -- [3]
			598, -- [4]
			1167, -- [5]
		}, -- [3]
		["tab"] = 4,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/14327\n\nStrategy added by skroue\nTurn 1: Blistering Cold\nTurn 2: Aged Yolk\nBring in your Ikky\nTurn 1: Black Claw\nTurns 2-4: Flock until Ikky dies\nBring in your Emerald Proto-Whelp\nPrio 1: Emerald Presence\nPrio 2: Emerald Dream\nPrio 3: Emerald Bite\n",
		["teamName"] = "Felsworn Sentry",
	},
	[201849] = {
		{
			"BattlePet-0-00000E0BBF3E", -- [1]
			943, -- [2]
			786, -- [3]
			1762, -- [4]
			1963, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBCF3", -- [1]
			921, -- [2]
			920, -- [3]
			919, -- [4]
			1211, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBD73", -- [1]
			119, -- [2]
			0, -- [3]
			163, -- [4]
			378, -- [5]
		}, -- [3]
		["tab"] = 8,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/18724\n\nStrategy added by Xain\nTurn 1: Blistering Cold\nTurn 2: Chop\nTurn 3: BONESTORM\nTurn 4: Blistering Cold\nBring in your Zandalari Anklerender\nTurn 6: Primal Cry\nTurn 7: Black Claw\nTurn 8: Hunting Party\nBring in your Rabbit\nStampede\n",
		["teamName"] = "Adinakon",
	},
	["Capture Team"] = {
		{
			"BattlePet-0-00000E0BBCD5", -- [1]
			826, -- [2]
			298, -- [3]
			404, -- [4]
			650, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDC4", -- [1]
			525, -- [2]
			597, -- [3]
			598, -- [4]
			1167, -- [5]
		}, -- [2]
		{
			0, -- [1]
		}, -- [3]
	},
	[128008] = {
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			1370, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [1]
		{
			"random:8", -- [1]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 5,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/1382\n\nStrategy added by solidstate77#1969\nTurn 1: Black Claw\nTurns 2-4: Flock\nTurn 5: Savage Talon\nBring in your Beast pet\nTurn 1: Any standard attack will finish the fight\n",
		["teamName"] = "Foulclaw",
		["minXP"] = 25,
	},
	[85627] = {
		{
			"BattlePet-0-00000E0BBD2E", -- [1]
			122, -- [2]
			489, -- [3]
			589, -- [4]
			1165, -- [5]
		}, -- [1]
		{
			"random:0", -- [1]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 4,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/11\n\nThe moves listed below have been updated to reflect the priority of the moves in the tdScript\n\nPriority 1: Arcane Storm on CD\nPriority 2: Mana Surge on CD\nPriority 3: Tail Sweep all else\n",
		["teamName"] = "Jahan, Archimedes and Samm ",
	},
	[85659] = {
		{
			"BattlePet-0-00000E0BBD2E", -- [1]
			122, -- [2]
			489, -- [3]
			589, -- [4]
			1165, -- [5]
		}, -- [1]
		{
			"random:0", -- [1]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 4,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/124\n\nTurn 1: Arcane Storm\nTurns 2-4: Mana Surge\n\nThat's it ^^\n",
		["teamName"] = "The Beakinator",
	},
	[71926] = {
		{
			"BattlePet-0-00000E0BBD0E", -- [1]
			421, -- [2]
			277, -- [3]
			595, -- [4]
			557, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDD7", -- [1]
			535, -- [2]
			256, -- [3]
			536, -- [4]
			319, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 2,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/191\n\nTurn 1: Moonfire\nTurns 2+: Arcane Blast until Wisdom is dead\nPatience comes in\nTurn 1: Life Exchange\nTurns 2+: Arcane Blast until your Faerie Dragon dies\nBring in your Feline Familiar\nTurns 1+: Pounce until Patience is dead\nKnowledge comes in\nTurn 1: Prowl\nTurn 2: Call Darkness\n",
		["teamName"] = "Lorewalker Cho",
	},
	[79751] = {
		{
			0, -- [1]
		}, -- [1]
		{
			"random:1", -- [1]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBEBE", -- [1]
			228, -- [2]
			232, -- [3]
			934, -- [4]
			1934, -- [5]
		}, -- [3]
		["tab"] = 4,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/5762\n\nStrategy added by Threewolves\nThe difference between stupidity and genius is that genius has its limits.\n\nTurn 1: Pass\nTurn 2: Swap to Any Humanoid to be sacrificed.\nBring in your Benax\nTurn 1: Bubble\nTurn 2: Swarm of Flies\nTurns 3+: Tongue Lash til Eleanor resurrects.\nPass\n",
		["teamName"] = "Eleanor",
		["minXP"] = 1,
	},
	[128009] = {
		{
			0, -- [1]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBD1B", -- [1]
			515, -- [2]
			282, -- [3]
			0, -- [4]
			339, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBD2E", -- [1]
			0, -- [2]
			489, -- [3]
			589, -- [4]
			1165, -- [5]
		}, -- [3]
		["tab"] = 5,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/2550\n\nStrategy added by Andersson#2130\nAny pet with explode will work, not only darkmoon zepp\n\nDragonsAfterDark: Since the OP has been gone since 2018, I rearranged their strategy to work for all breeds of Whelps\n\nTurn 1: Pass\nTurn 2: Swap to your Darkmoon Zeppelin\nTurn 3: Flyby\nTurn 4: Explode\nBring in your Nexus Whelpling\nTurn 1: Arcane Storm\nTurns 2-4: Mana Surge\n",
		["teamName"] = "Baneglow",
		["minXP"] = 1,
	},
	[71927] = {
		{
			"BattlePet-0-00000E0BBDDA", -- [1]
			504, -- [2]
			916, -- [3]
			334, -- [4]
			1403, -- [5]
		}, -- [1]
		{
			0, -- [1]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBDD5", -- [1]
			429, -- [2]
			312, -- [3]
			802, -- [4]
			1416, -- [5]
		}, -- [3]
		["tab"] = 2,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/9773\n\nStrategy added by Rebekha#21420\nTurn 1: Decoy\nTurn 2 & 3: Haywire\nTurn 4+: Alpha Strike until Tonsa dies\nChirps comes in\nBring in your Level Pet\nBring in your Teroclaw Hatchling\nTurn 1: Dodge\nTurn 2+: Claw until Chirps hp < 927\nTurn 3: Ravage until Chirps dies\nBrewly comes in\nTurn 1: Dodge when Brewly has the barrel throwing buff\nTurns 2-3: Ravage if Brewly hp < 619\nTurn 4: Claw until Brewly dies\nIf you have the world's worst RNG, bring back your Mech Axe to finish the job\n",
		["teamName"] = "Chen Stormstout",
		["minXP"] = 1,
	},
	[128010] = {
		{
			"BattlePet-0-00000E0BBD0C", -- [1]
			210, -- [2]
			218, -- [3]
			652, -- [4]
			1238, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			1370, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 5,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/1296\n\nStrategy added by Aranesh\nTurn 1: Curse of Doom\nTurn 2: Haunt\nBring in Ikky\nTurn 1: Black Claw\nTurns 2+: Flock\n",
		["teamName"] = "Retch",
	},
	[85629] = {
		{
			"BattlePet-0-00000E0BBD13", -- [1]
			118, -- [2]
			564, -- [3]
			513, -- [4]
			868, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBE55", -- [1]
			509, -- [2]
			511, -- [3]
			513, -- [4]
			746, -- [5]
		}, -- [2]
		{
			"random:6", -- [1]
		}, -- [3]
		["tab"] = 4,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/5988\n\nStrategy added by Runisco\nBreeds used, and confirmed:\nPandaren Water Spirit: H/S\nEmperor Crab: H/H\n\nTurn 1: Whirlpool\nTurn 2: Dive\nTurn 3->: Water Jet\nFiero comes in\nFiero: pri 1: Whirlpool. Pri 2: Dive. Pri 3: Water Jet\nPandaren Water Spirit dies, Bring in your Emperor Crab\nTurn 1: Whirlpool\nTurn 2 ->: Surge\nFiero dies\n",
		["teamName"] = "Tirs and Fiero",
	},
	[204792] = {
		{
			"BattlePet-0-00000E0BBD2E", -- [1]
			0, -- [2]
			489, -- [3]
			589, -- [4]
			1165, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBD0E", -- [1]
			421, -- [2]
			277, -- [3]
			595, -- [4]
			557, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBDC4", -- [1]
			525, -- [2]
			0, -- [3]
			0, -- [4]
			1167, -- [5]
		}, -- [3]
		["tab"] = 8,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/19597\n\nStrategy added by Aknot#1385\nCredit to ShirokamiCusp (post on wowhead)\nLink: https://www.wowhead.com/npc=204792/shinmura#comments\n\nTurn 1: Arcane Storm\nTurns 2-4: Mana Surge\nTurn 5: Life Exchange you can skip this step if Beeks used Surge of Power \nTurn 6: Moonfire\nTurn 5: Arcane Blast until Nether Faerie Dragon die\nTurn 6: Emerald Bite until Talons die. (May not be necessary)\nTurn 7: \nTurn 8: \n",
		["teamName"] = "Are They Not Beautiful?",
	},
	["Spores, Dusty, and Salad"] = {
		{
			"BattlePet-0-00000E0BBCE7", -- [1]
			299, -- [2]
			0, -- [3]
			0, -- [4]
			1152, -- [5]
		}, -- [1]
		{
			0, -- [1]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBD2E", -- [1]
			782, -- [2]
			489, -- [3]
			589, -- [4]
			1165, -- [5]
		}, -- [3]
		["tab"] = 4,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/8514\n\nStrategy added by norng\nTurn 1+: Arcane Explosion until Chrominius dies. Do not kill Salad.\nBring in your Level Pet\nTurn 1: Swap to your Nexus Whelpling\nPriority 1: Arcane Storm\nPriority 2: Mana Surge\nPriority 3: Frost Breath\n",
		["minXP"] = 1,
	},
	[117950] = {
		{
			"BattlePet-0-00000E0BBCC3", -- [1]
			115, -- [2]
			779, -- [3]
			334, -- [4]
			844, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBD24", -- [1]
			449, -- [2]
			369, -- [3]
			564, -- [4]
			743, -- [5]
		}, -- [2]
		{
			0, -- [1]
		}, -- [3]
		["tab"] = 5,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/1102\n\nStrategy added by patf0rd\nTurn 1: Pass - your Rapana Whelk is swapped in\nTurn 2: Acidic Goo\nTurn 3: Absorb\nTurn 4: Absorb\nTurn 5: Absorb\nTurn 6+7: Dive\nTurn 8+: Absorb until Imply is dead\nRover comes in\nTurn 1: Swap to your Mechanical Pandaren Dragonling\nTurn 2: Decoy\nTurn 3+: Breath until Rover is dead\nSeduction comes in\nTurn 1: Thunderbolt\nTurn 2: Swap to your leveling pet\nTurn 3: Swap to your Mechanical Pandaren Dragonling\nThen:: Keep Decoy and Thunderbolt on cooldown, otherwise, use Breath until your Mechanical Pandaren Dragonling dies\nSwap to your Rapana Whelk\nTurn 1: Acidic Goo\nTurn 2: Dive\nTurn 3: Absorb until Seduction is dead\n",
		["teamName"] = "Illidari Masters: Madam Viciosa",
	},
	[197447] = {
		{
			"BattlePet-0-00000E0BBCC3", -- [1]
			0, -- [2]
			779, -- [3]
			282, -- [4]
			844, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBD1B", -- [1]
			0, -- [2]
			282, -- [3]
			779, -- [4]
			339, -- [5]
		}, -- [2]
		{
			0, -- [1]
		}, -- [3]
		["tab"] = 8,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/18011\n\nStrategy added by Kalagren\nDO NOT USE 2 MPDs to complete all of the strat. Thanks Akéla#2848.\n\n2 backline Pound crits (vs non-mechanical) = 570 damage\n\n3rd pet will likely need to finish should you use 2 MPDs.\n\nMechanical Pandaren Dragonling comes in.\nTurn 1: Thunderbolt\nTurn 2: Explode\nBring in your Darkmoon Zeppelin\nTurn 3: Thunderbolt\nTurn 4: Explode\n",
		["teamName"] = "Eye of the Stormling",
		["minXP"] = 13,
		["minHP"] = 571,
	},
	[141046] = {
		{
			"BattlePet-0-00000E0BBDD5", -- [1]
			504, -- [2]
			574, -- [3]
			802, -- [4]
			1416, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			184, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBCC3", -- [1]
			115, -- [2]
			779, -- [3]
			334, -- [4]
			844, -- [5]
		}, -- [3]
		["tab"] = 6,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/14049\n\nStrategy added by Kettchup86\nEsta estrategia me ha funcionado de maravilla, espero que les guste. Mucha suerte\n\nTurn 1: Nature's Ward\nTurn 2: Alpha Strike (2 - 4 until Lesser Charged Gale has 350 hp or less)\nTurns 3-4: Ravage\nLesser Twisted Current comes in\nTurn 1+: Alpha Strike until Lesser Twisted Current dies\nMind Warper comes in\nTurn 1: Nature's Ward\nTurn 2+: Alpha Strike until Teroclaw Hatchling dies\nBring in your Ikky\nTurn 1: Black Claw\nTurns 2-4: Flock\nBring in your Mechanical Pandaren Dragonling\nTurn 1: Decoy\nTurn ~: If your Ikky dies before coming in, manually use Thunderbolt here\nTurn 2+: Breath until Mind Warper dies\nVictoria\n",
		["teamName"] = "Captured Evil",
	},
	[173303] = {
		{
			"BattlePet-0-00000E0BBE86", -- [1]
			509, -- [2]
			310, -- [3]
			273, -- [4]
			132, -- [5]
		}, -- [1]
		{
			"random:0", -- [1]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 7,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/11694\n\nStrategy added by Engelrift\nMagical Crawdad will solo this fight. \nBackrow pets will probably die, so don't put in anything you care about.\n\nPriority 1: Shell Shield - Reapply when 1 round remaining on buff. \nPriority 2: Wish - Use when you hit <1400 hp.\nPriority 3: Surge\n",
		["teamName"] = "Ashes Will Fall",
	},
	[128011] = {
		{
			"BattlePet-0-00000E0BBD0C", -- [1]
			210, -- [2]
			218, -- [3]
			652, -- [4]
			1238, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			1370, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [2]
		{
			2648, -- [1]
			0, -- [2]
			0, -- [3]
			706, -- [4]
			2648, -- [5]
		}, -- [3]
		["tab"] = 5,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/1249\n\nStrategy added by Aranesh\nTurn 1: Curse of Doom\nTurn 2: Haunt\nBring in Ikky\nTurn 3: Black Claw\nTurn 4: Flock\nIf Deathscreech kills your Ikky before they can Flock:\nBring in your Chitterspine Skitterling\nTurns 1-3: Swarm\n",
		["teamName"] = "Deathscreech",
	},
	[85630] = {
		{
			"BattlePet-0-00000E0BBDCA", -- [1]
			1372, -- [2]
			0, -- [3]
			1380, -- [4]
			1541, -- [5]
		}, -- [1]
		{
			"random:0", -- [1]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 4,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/66\n\nStrategy added by Gráinne\nTurn 1: Deep Bite \nTurn 2: Deep Bite \nTurn 3: Shell Armor \nTurns 4+: Deep Bite until Rockbiter is dead \nStonechewer comes in \nTurn 1: Deep Bite \nTurn 2: Shell Armor \nTurns 3+: Deep Bite until Stonechewer is dead as well \nAcidtooth comes in \nTurns 1+: Deep Bite and keep Shell Armor on cooldown.\n",
		["teamName"] = "Rockbiter, Acidtooth and Stonechewer",
		["minXP"] = 25,
	},
	[71929] = {
		{
			"BattlePet-0-00000E0BBE3B", -- [1]
			228, -- [2]
			123, -- [3]
			232, -- [4]
			569, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBCF7", -- [1]
			202, -- [2]
			0, -- [3]
			170, -- [4]
			537, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBC6D", -- [1]
			0, -- [2]
			256, -- [3]
			517, -- [4]
			630, -- [5]
		}, -- [3]
		["tab"] = 2,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/1983\n\nStrategy added by sistercoyote\nFrom Hazelnutty (https://www.youtube.com/watch?v=bKgB5o6tKq8). She uses a Mac Frog; I use a Garden Frog. Any Rare 25 frog will do.\n\nTurn 1: Swarm of Flies\nTurn 2: Tongue Lash\nTurn 3: Tongue Lash unless health is low and Socks is still alive, in which case Healing Wave\nRefresh Swarm of Flies as needed\nMonte comes in\nTurn 1: Continue as established until Garden Frog dies\nBring in your Dragonbone Hatchling\nTurn 1: Thrash until Monte dies\nRikki comes in\nTurn 1: Lift-Off\nTurn 2: Thrash until Dragonbone Hatchling dies\nBring in your Gilnean Raven\nTurn 1: Call Darkness\nTurn 2: Nocturnal Strike\n",
		["teamName"] = "Sully \"The Pickle\" McLeary",
	},
	[117951] = {
		{
			"BattlePet-0-00000E0BBCC3", -- [1]
			115, -- [2]
			779, -- [3]
			334, -- [4]
			844, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBD1B", -- [1]
			777, -- [2]
			282, -- [3]
			334, -- [4]
			339, -- [5]
		}, -- [2]
		{
			0, -- [1]
		}, -- [3]
		["tab"] = 5,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/997\n\nStrategy added by Aranesh\nTurn 1: Decoy\nTurns 2+: Breath until Fido dies\nSeer's Eye comes in\nTurn 1: Thunderbolt\nTurn 2+: Use Decoy and Thunderbolt whenever available, otherwise Breath until your Mechanical Pandaren Dragonling dies\nThis will take care of Seer's Eye as well\nBring in your Darkmoon Zeppelin\nTurn 1: Missile until Flickering Fel drops below 618 health\nThen:: Explode, your Level Pet will get the full experience\n",
		["teamName"] = "Illidari Masters: Nameless Mystic",
	},
	[79179] = {
		{
			"BattlePet-0-00000E0BBDA1", -- [1]
			455, -- [2]
			457, -- [3]
			459, -- [4]
			213, -- [5]
		}, -- [1]
		{
			0, -- [1]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBF3E", -- [1]
			649, -- [2]
			1761, -- [3]
			1762, -- [4]
			1963, -- [5]
		}, -- [3]
		["tab"] = 4,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/730\n\nTurn 1: Sweep – Puzzle is forced in\nTurn 2: Swap to your Level Pet\nTurn 3: Swap to your Boneshard\nTurn 4: 10% BONESTORM (1st slot one)\nTurn 5: 30% BONESTORM (2nd slot one)\nTurn 6: 50% BONESTORM (3rd slot one)\nTurn 7: Pass – your Boneshard dies\nBring in your Enchanted Broom\nTurn 8-9: Wind-Up x2 – Puzzle dies\nDeebs comes in\nTurn 10: Batter – Deebs dies\nTyri comes in\nTurn 11: Batter – you win\n",
		["teamName"] = "Deebs, Tyri and Puzzle",
		["minXP"] = 1,
	},
	[141814] = {
		{
			"BattlePet-0-00000E0BBEC8", -- [1]
			525, -- [2]
			597, -- [3]
			168, -- [4]
			1722, -- [5]
		}, -- [1]
		{
			0, -- [1]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBDD5", -- [1]
			429, -- [2]
			312, -- [3]
			0, -- [4]
			1416, -- [5]
		}, -- [3]
		["tab"] = 6,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/9642\n\nStrategy added by shpungout\nYour level pet will take (0..4) x (63..105) flying damage.\nAlso you can try Emerald Whelpling with Tranquility instead of Healing Flame.\n\nTurn 1: Emerald Presence\nTurns 2+: Emerald Bite until Feathers dies\nSplat comes in\nTurn 1: Swap to your Level Pet\nTurn 2: Swap to your Teroclaw Hatchling\nTurn 3: Dodge\nTurns 4+: Claw until Splat dies\nBrite comes in\nTurn 1: Swap to your Dream Whelpling\nTurn 2: if health is below 300, then Healing Flame, else Emerald Bite\nTurns 3+: Emerald Bite until Brite dies\n",
		["teamName"] = "Accidental Dread",
		["minXP"] = 5,
		["minHP"] = 401,
	},
	["Nicodemus, Brisby, and Jenner"] = {
		{
			"BattlePet-0-00000E0BBDEE", -- [1]
			406, -- [2]
			453, -- [3]
			0, -- [4]
			1155, -- [5]
		}, -- [1]
		{
			0, -- [1]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 4,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/957\n\nTurn 1: Sandstorm\nTurn 2: Swap to level pet.\nTurn 3: Swap back to Anubisath Idol\nTurn 4+: Crush until Nicodemus is dead.\nBrisby comes in.\nTurn 1: Sandstorm\nTurn 2: Crush until Brisby is dead.\nJenner comes in.\nSandstorm\nTurn 1: Crush until Jenner is dead.\n",
		["minXP"] = 20,
	},
	[94637] = {
		{
			"BattlePet-0-00000E0BBCF3", -- [1]
			921, -- [2]
			920, -- [3]
			919, -- [4]
			1211, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDEE", -- [1]
			406, -- [2]
			453, -- [3]
			490, -- [4]
			1155, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBDC4", -- [1]
			525, -- [2]
			597, -- [3]
			598, -- [4]
			1167, -- [5]
		}, -- [3]
		["tab"] = 4,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/108\n\nTurn 1: Primal Cry\nTurn 2: Black Claw\nTurns 3+4: Hunting Party\nIn most cases your Anklerender dies. If that happens, bring in Anubisath Idol.\nOtherwise use another \"Primal Cry\" to kill the Corrupted Thundertail, then swap to Anubisath Idol \n\nTurn 1: Sandstorm\nTurn 2: Crush and Sandstorm on cooldown until you won the fight.\n",
		["teamName"] = "Corrupted Thundertail",
	},
	[128012] = {
		{
			"BattlePet-0-00000E0BBD0C", -- [1]
			210, -- [2]
			218, -- [3]
			652, -- [4]
			1238, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			1370, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 5,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/1250\n\nStrategy added by Aranesh\nTurn 1: Curse of Doom\nTurn 2: Haunt\nBring in Ikky\nTurn 3: Black Claw\nTurn 4: Flock\n",
		["teamName"] = "Gnasher",
	},
	[141879] = {
		{
			"BattlePet-0-00000E0BBCE7", -- [1]
			110, -- [2]
			362, -- [3]
			593, -- [4]
			1152, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDB3", -- [1]
			459, -- [2]
			566, -- [3]
			208, -- [4]
			1387, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 6,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/2082\n\nStrategy added by Phacoid\nUpdate May 12 2020: removed leveling pet\n\nTurn 1: Howl\nTurn 2: Surge of Power - Buzzbeak dies\nTurn 3-4: Recovering - you can't do anything\nTurn 5: Swap to your Iron Starlette\nTurn 6: Wind-Up\nTurn 7: Supercharge\nTurn 8: Wind-Up - Tikka dies\nTurn 9: Powerball\nTurn 10: Wind-Up\nTurn 11: Wind-Up - attack goes through, Iron Starlette might die\nTurn 12+: Powerball until Iron Starlette dies\nBring in your Chrominius\nTurn 1+: Bite until Milo dies\n",
		["teamName"] = "Keeyo's Champions of Vol'dun",
		["minXP"] = 1,
	},
	[71930] = {
		{
			"BattlePet-0-00000E0BBC79", -- [1]
			319, -- [2]
			811, -- [3]
			330, -- [4]
			297, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBD1B", -- [1]
			777, -- [2]
			647, -- [3]
			334, -- [4]
			339, -- [5]
		}, -- [2]
		{
			0, -- [1]
		}, -- [3]
		["tab"] = 2,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/4437\n\nStrategy added by SebastianX#2242\noriginaly posted by daaani (https://de.wowhead.com/user=daaani) on wowhead (https://de.wowhead.com/npc=71930/schattenmeisterin-kiryn#english-comments)\n\nTurn 1: Magma Trap\nTurn 2: Magma Wave\nNairn will swap to Stormoen\nTurn 2+3: 2x Magma Wave (till Lightning Storm)\nTurn 3: Sons of the Flame\nTurn 4: Magma Wave\nStormoen dies\nNairn comes in\nTurn 1: Magma Trap\nTurn 2: Magma Wave\nNairn swaps with Summer\nTurn 1+2: 2x Magma Wave\nTurn 3: Swap to your Darkmoon Zeppelin\nTurn 4: Decoy\nTurn 5: Swap to your Level Pet\nTurn 6: Swap to your Darkmoon Zeppelin\nTurn 7-9: 3x Missile\nTurn 10: Bombing Run\nSummer dies\nNairn comes in\nTurn 1+2: 2x Missile\nTurn 3: Decoy\nTurn 4: Missile till Nairn dies\nNairn dies\n",
		["teamName"] = "Shademaster Kiryn",
		["minXP"] = 10,
		["minHP"] = 541,
	},
	[154910] = {
		{
			"BattlePet-0-00000E0BBD0C", -- [1]
			422, -- [2]
			218, -- [3]
			652, -- [4]
			1238, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			0, -- [2]
			0, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [2]
		{
			"random:6", -- [1]
		}, -- [3]
		["tab"] = 6,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/5969\n\nStrategy added by nurkka\nThird pet not brought in. I used a Magic pet to assure it would stay alive from the wave attacks.\n\nTurn 1: Shadow Shock\nTurn 2: Curse of Doom\nTurn 3: Haunt\nBring in your Ikky\nTurns 1-3: Flock\n",
		["teamName"] = "Prince Wiggletail",
		["minXP"] = 25,
	},
	[99077] = {
		{
			"BattlePet-0-00000E0BBDB3", -- [1]
			459, -- [2]
			0, -- [3]
			208, -- [4]
			1387, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBCC3", -- [1]
			115, -- [2]
			647, -- [3]
			334, -- [4]
			844, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBD9A", -- [1]
			384, -- [2]
			206, -- [3]
			0, -- [4]
			116, -- [5]
		}, -- [3]
		["tab"] = 5,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/831\n\nStrategy added by Aranesh\nTurn 1: Wind-Up\nTurn 2: Supercharge\nTurn 3: Wind-Up - Lil' Spirit Guide resurrects\nTurn 4: Wind-Up - Lil' Spirit Guide dies\nQuillino comes in\nTurns 1+: Wind-Up until your Iron Starlette dies (it's okay if you don't hit Quillino a single time!)\nBring in your Mechanical Pandaren Dragonling\nTurns 1+: Breath until Quillino is dead\nFethyr comes in\nTurn 1: Decoy\nTurn 2: Bombing Run\nTurns 3+: Breath until Mechanical Pandaren Dragonling is dead\nBring in your Tranquil Mechanical Yeti\nTurn 1: Call Blizzard\nTurns 2+: Metal Fist until Fethyr is dead\n",
		["teamName"] = "Training with Bredda",
	},
	[105241] = {
		{
			"BattlePet-0-00000E0BBD0C", -- [1]
			0, -- [2]
			218, -- [3]
			652, -- [4]
			1238, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			0, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 5,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/756\n\nTurn 1: Curse of Doom\nTurn 2: Haunt\nBring in Ikky\nTurn 1: Black Claw\nTurns 2+: Flock\n",
		["teamName"] = "Fight Night: Rats!",
		["minXP"] = 1,
	},
	[94638] = {
		{
			"BattlePet-0-00000E0BBDEC", -- [1]
			384, -- [2]
			1105, -- [3]
			209, -- [4]
			1450, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDEE", -- [1]
			406, -- [2]
			453, -- [3]
			490, -- [4]
			1155, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBDC4", -- [1]
			525, -- [2]
			597, -- [3]
			598, -- [4]
			1167, -- [5]
		}, -- [3]
		["tab"] = 4,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/119\n\nTurn 1: Metal Fist\nTurn 2: Reflective Shield\nTurns 3-5: Ion Cannon - This will kill both Chaos Pup and your Micro-Defender.\n\nBring in your Tanaan Backup Pets (ideally Anubisath Idol or Emerald Proto-Whelp) to finish the fight.\n",
		["teamName"] = "Chaos Pup",
	},
	[154911] = {
		{
			"BattlePet-0-00000E0BBD0C", -- [1]
			0, -- [2]
			218, -- [3]
			652, -- [4]
			1238, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBCAD", -- [1]
			1002, -- [2]
			0, -- [3]
			0, -- [4]
			1320, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 6,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/5500\n\nStrategy added by DragonsAfterDark\nI specifically went out and caught a B/B Unborn Val'kyr, made it rare and lvl 25, and unless Chomp crits with Devour X the UBV has enough health to take both hits to use Haunt. \n\n643 + 643 = 1,286\nB/B UBV HP = 1562\n\nTurn 1: Curse of Doom\nTurn 2: Haunt\nBring in your Lil' Bling\nTurn 1: Pass\nTurn 2+: Inflation\n",
		["teamName"] = "Chomp",
		["minXP"] = 25,
	},
	[128013] = {
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			0, -- [2]
			919, -- [3]
			0, -- [4]
			1532, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBF21", -- [1]
			1773, -- [2]
			1758, -- [3]
			518, -- [4]
			1975, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBDD5", -- [1]
			0, -- [2]
			0, -- [3]
			802, -- [4]
			1416, -- [5]
		}, -- [3]
		["tab"] = 5,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/1789\n\nStrategy added by Wolf103#1637\nTurn 1: Black Claw\nDirebeak Hatchling gets forced in\nTurn 3: Ironskin\nTurn 4: Falcosaur Swarm!\nTurn 5: Falcosaur Swarm! continues\nTurn 6: Predatory Strike\nTeroclaw Hatchling gets forced in\nTurn 8: Ravage\n",
		["teamName"] = "Bucky",
	},
	[85632] = {
		{
			"BattlePet-0-00000E0BBDD5", -- [1]
			429, -- [2]
			574, -- [3]
			802, -- [4]
			1416, -- [5]
		}, -- [1]
		{
			"random:7", -- [1]
		}, -- [2]
		{
			"random:7", -- [1]
		}, -- [3]
		["tab"] = 4,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/8043\n\nStrategy added by Gráinne\nI believe this strat can fail if you land a Crit with Claw in Round 3, and Blingtron 4999b kills himself with Armageddon before you can get your heal from Ravage. That should be a 5% chance. However, you can probably finish with your other pets, and this is otherwise a very clean, simple strategy.\n\nInspired by an anonymous comment https://wow-petguide.com/?Comment=69504\n\n\n\nPriority 1: If Nature's Ward buff is not up, use Nature's Ward\nPriority 2: If enemy health is less than 464, use Ravage\nPriority 3: Claw\n",
		["teamName"] = "Blingtron 4999b, Protectron 022481 and Protectron 011803",
		["minXP"] = 25,
	},
	[141945] = {
		{
			"BattlePet-0-00000E0BBD2F", -- [1]
			921, -- [2]
			919, -- [3]
			364, -- [4]
			1180, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBE4E", -- [1]
			1085, -- [2]
			0, -- [3]
			0, -- [4]
			1601, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBCF3", -- [1]
			921, -- [2]
			364, -- [3]
			919, -- [4]
			1211, -- [5]
		}, -- [3]
		["tab"] = 6,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/5374\n\nStrategy added by Threewolves\nHave you ever noticed that anybody driving slower than you is an idiot, and anyone going faster than you is a maniac?\n\nTurn 1: Pass - Servant of Demidos is forced in.\nTurns 2+: Magic Sword til Clubber dies.\nSwap to your Zandalari Anklerender\nTurn 1: (Squirt Dives) Pass\nTurn 2: Black Claw\nTurn 3: Hunting Party\nSquirt dies. Squeezer enters.\nTurn 1: Black Claw\nTurns 2+: Leap til Zandalari Anklerender dies.\nBring in your Zandalari Kneebiter\nTurn 1: Hunting Party\nTurn 2: Leap til done.\n",
		["teamName"] = "Snakes on a Terrace",
	},
	[71931] = {
		{
			"BattlePet-0-00000E0BBD22", -- [1]
			202, -- [2]
			416, -- [3]
			481, -- [4]
			1166, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBD0C", -- [1]
			422, -- [2]
			0, -- [3]
			0, -- [4]
			1238, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBE02", -- [1]
			0, -- [2]
			0, -- [3]
			1337, -- [4]
			1426, -- [5]
		}, -- [3]
		["tab"] = 2,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/13280\n\nStrategy added by Rolfson#1694\nSecond pet can be pretty much anything that has consistently high undead damage, as you'll need to do around 1k damage to the last pet after the runt dies.\n\nI've found this strat to be fairly RNG-proof even if you get unlucky on thrash, and considerably more consistent than the moth strategies out there right now.\n\nTurn 1: Frost shock\nTurn 2: Deep freeze\nTurn 3: Frost shock (Zhu will swap to a new pet)\nTurn 4: Thrash\nTurns 5+: Maintain frost shock on the enemy pets at all times, but you can let it fall off and refresh the following turn. Use deep freeze every time it's up, and ALWAYS follow up with frost shock afterwards due to pet swaps. Thrash on filler\nIf you get stunned or blinded, swap to Elekk Plushie and use Itchin' to get back on the next turn.\nTurn 6: If / when kun-lai runt dies, swap to your second pet and finish off the battle. Should be fairly RNG proof and kun-lai runt can nearly solo the fight.\n",
		["teamName"] = "Taran Zhu",
	},
	[154912] = {
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			0, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBD2E", -- [1]
			0, -- [2]
			489, -- [3]
			589, -- [4]
			1165, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 6,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/5567\n\nStrategy added by Lazey\n*** 9.0.2 approved '''\n\nThis Manta Ray has two Beast attacks and an empowered Flyby X which will increase the damage your pet takes by 25% for 5 rounds (classic Flyby does for 3 rounds).\n\nI am using a Black Claw + Swarm ability pet in the first slot to buff attacks of my Dragonkin. The script includes Flock and Swarm because when these 8.2 pet battles go live, the Aquatic pet Chitterspine Skitterling will be available as a wild catch in Nazjatar and it has Black Claw and Swarm. Please do not use Hunting Party pets.\n\nThe Skitterling will take more damage from Flyby X so there's a chance it will die 1 round earlier than Flying pets and you can benefit of 2 rounds Shattered Defenses and Black Claw.\n\nTurn 1: Black Claw\nTurn 2+: Flock / Swarm until your pet dies. (When it does without applying Shattered Defenses, please Forfeit, Revive pets & Restart.)\n\nBring in your Nexus Whelpling\nTurn 1: Arcane Storm\nTurn 2-3: Mana Surge\nWhen your Dragon dies without killing Silence, bring in your third pet\nAny standard attack will finish the fight\n",
		["teamName"] = "Silence",
		["minXP"] = 25,
	},
	[173372] = {
		{
			"BattlePet-0-00000E0BBEE1", -- [1]
			1079, -- [2]
			1080, -- [3]
			1076, -- [4]
			1349, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDEC", -- [1]
			384, -- [2]
			0, -- [3]
			209, -- [4]
			1450, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBD2E", -- [1]
			122, -- [2]
			489, -- [3]
			589, -- [4]
			1165, -- [5]
		}, -- [3]
		["tab"] = 7,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/9362\n\nStrategy added by DragonsAfterDark\nVideo for Fight (https://www.youtube.com/watch?v=17aS0q2OGbk)\n\nAlternate 12 round strategy here (https://www.wow-petguide.com/Strategy/14982/Natural_Defenders) . Pretty sure it's as stable as you can get!\n\nTurn 1: Greench's Gift\nTurn 2: Booby-Trapped Presents\nTurn 3+: Club until Slugger dies\nRunehoof comes in\nTurn 1+: Club until Rotten Little Helper dies\nBring in your Draenei Micro Defender\nTurn 1: Ion Cannon\nDuster comes in\nTurn 1: Recover\nTurn 2: Recover\nTurn 3+: Metal Fist until Draenei Micro Defender dies\nBring in your Nexus Whelpling\nTurn 1: Arcane Storm\nTurn 2-4: Mana Surge\nTurn 5: Arcane Storm\n",
		["teamName"] = "Natural Defenders",
	},
	[94639] = {
		{
			"BattlePet-0-00000E0BBD0C", -- [1]
			422, -- [2]
			218, -- [3]
			652, -- [4]
			1238, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			1370, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBDC4", -- [1]
			525, -- [2]
			597, -- [3]
			598, -- [4]
			1167, -- [5]
		}, -- [3]
		["tab"] = 4,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/714\n\nStrategy added by Nyari\nTurn 1: Curse of Doom\nTurn 2: Haunt\nBring in your Ikky\nTurn 1: Black Claw\nTurns 2+: Flock - Cursed Spirit dies\nAn enemy Pet comes in\nTurns 1+: Flock until Ikky dies\nTurn 8: Bring back your Val'kyr\nTurns 1+: Shadow Shock until your Val'kyr dies as well\nBring in your Emerald Proto-Whelp\nTurn 1: Emerald Presence\nTurns 2-4: Emerald Dream\nTurns 5+: Emerald Bite, reapply Emerald Presence and heal up with Emerald Dream if necessary.\n",
		["teamName"] = "Cursed Spirit",
	},
	[154913] = {
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			0, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBF21", -- [1]
			0, -- [2]
			0, -- [3]
			518, -- [4]
			1975, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 6,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/5966\n\nStrategy added by Ktjn\nTurn 1: Black Claw\nTurn 2+: Flock\nIkky dies\nTurn 4: Bring in Direbeak Hatchling\nTurn 5: Predatory Strike\n",
		["teamName"] = "Shadowspike Lurker",
		["minXP"] = 1,
	},
	[106552] = {
		{
			"BattlePet-0-00000E0BBD2E", -- [1]
			122, -- [2]
			489, -- [3]
			589, -- [4]
			1165, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBCC3", -- [1]
			0, -- [2]
			0, -- [3]
			282, -- [4]
			844, -- [5]
		}, -- [2]
		{
			0, -- [1]
		}, -- [3]
		["tab"] = 5,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/6961\n\nStrategy added by Berendain\n1:13-1:19 wins.\n\nBased on the existing Nexus Whelpling and Chrominius strategy, and credit to Lazey for their suggestion (https://wow-petguide.com/?Comment=66008) of changing the usage of Arcane Storm and using a pet with explode instead of Chrominius.\n\nI ran with his idea and tweaked the script to allow for all breeds of Whelpling to work.  In this version of the strategy the leveling pet takes less damage.  To fully minimise the damage it takes, you can use a P/P Nexus Whelpling, but all breeds of Nexus Whelpling and the Stormborne Whelpling work.\n\nANY pet with explode will work (mechanical, flying, magic, etc.), but for optimal speed it should be faster than 260.  \n\nTurn 1: Tail Sweep\nTurn 2: Tail Sweep\nTurn 3: Arcane Storm\nTurn 4: Tail Sweep, Breezy Book dies\nHelpful Spirit comes in\nTurns 1-3: Mana Surge\nTurn 4: Tail Sweep the undead Helpful Spirit to trigger the Dragonkin bonus next turn\nDelicate Moth comes in\nTurn 1: Arcane Storm\nTurn 2: Tail Sweep - in case your Nexus Whelpling is still alive\nBring in your Explode pet\nTurn 1: Explode\n",
		["teamName"] = "Training with the Nightwatchers",
		["minXP"] = 7,
		["minHP"] = 502,
	},
	[71932] = {
		{
			"BattlePet-0-00000E0BBCAD", -- [1]
			1002, -- [2]
			989, -- [3]
			985, -- [4]
			1320, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDC9", -- [1]
			608, -- [2]
			1231, -- [3]
			448, -- [4]
			1524, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 2,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/133\n\nTurn 1: Make it Rain\nTurns 2-4: Inflation\nTurn 5: Blingtron Gift Package\nContinue from Turn 1 until Lil' Bling dies.\nHe will easily destroy Carpe Diem and Spirus. Sometimes taking a good chunk out of River as well.\n\nBring in Netherspawn, Spawn of Netherspawn \nTurns 1+: If you have a Whirlpool incoming, use Consume Magic. Otherwise use Creeping Ooze and Nether Blast as a filler.\n",
		["teamName"] = "Wise Mari",
	},
	[154914] = {
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			0, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBD1B", -- [1]
			0, -- [2]
			282, -- [3]
			0, -- [4]
			339, -- [5]
		}, -- [2]
		{
			0, -- [1]
		}, -- [3]
		["tab"] = 6,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/9977\n\nStrategy added by shpungout\n255 aquatic damage for Level pet.\n\nTurn 1: Black Claw\nTurns 2-4: Flock\nTurn 5: Pass\nBring in your Darkmoon Zeppelin\nTurn 1: Explode\n",
		["teamName"] = "Pearlhusk Crawler",
		["minXP"] = 3,
		["minHP"] = 256,
	},
	[66918] = {
		{
			"BattlePet-0-00000E826ACE", -- [1]
			356, -- [2]
			511, -- [3]
			310, -- [4]
			746, -- [5]
		}, -- [1]
		{
			0, -- [1]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBCE7", -- [1]
			110, -- [2]
			362, -- [3]
			593, -- [4]
			1152, -- [5]
		}, -- [3]
		["tab"] = 3,
		["notes"] = "Strategy added by unknown\nTurn 1: Shell Shield\nTurn 2: Renewing Mists\nTurn 3+: Snap until Diamond is dead\nMollus comes in\nTurn 1: Shell Shield\nTurn 2: Renewing Mists\nTurn 3+: Snap until Mollus is dead as well\nSkimmer comes in\nTurn 1: Swap to Level Pet\nTurn 2: Swap back to Emperor Crab\nTurns 3+: Snap until Emperor Crab dies\nBring in Chrominius\nTurn 1: Bite\nTurn 2: Howl\nTurn 3: Surge of Power\n",
		["teamName"] = "Seeker Zusshi",
		["minXP"] = 2,
		["minHP"] = 151,
	},
	[94640] = {
		{
			"BattlePet-0-00000E0BBCE7", -- [1]
			110, -- [2]
			362, -- [3]
			593, -- [4]
			1152, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDEE", -- [1]
			406, -- [2]
			453, -- [3]
			0, -- [4]
			1155, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 4,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/86\n\nTurn 1: Howl\nTurns 2-4: Surge of Power - Felfly dies\nNext enemy pet comes in\nTurns 1+: Bite until Chrominius dies\nBring in Anubisath Idol\nTurn 1: Sandstorm\nTurns 2+: Crush and keep Sandstorm on cooldown until the fight is won \n",
		["teamName"] = "Felfly",
		["minXP"] = 1,
	},
	[154915] = {
		{
			"BattlePet-0-00000E0BBD0C", -- [1]
			0, -- [2]
			218, -- [3]
			321, -- [4]
			1238, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			0, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 6,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/6070\n\nStrategy added by Farmacitron#2190\nTurn 1: Curse of Doom\nTurn 2: Unholy Ascension\nTurn 3: Ikky Black Claw\nTurn 4: Flock\nTurn 5: GG WP\n",
		["teamName"] = "Elderspawn of Nalaada",
		["minXP"] = 1,
	},
	[128015] = {
		{
			"BattlePet-0-00000E0BBED0", -- [1]
			1773, -- [2]
			0, -- [3]
			0, -- [4]
			1974, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBD2E", -- [1]
			0, -- [2]
			489, -- [3]
			589, -- [4]
			1165, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBF0F", -- [1]
			0, -- [2]
			489, -- [3]
			589, -- [4]
			1721, -- [5]
		}, -- [3]
		["tab"] = 5,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/8303\n\nStrategy added by Silmeron\nCredit to Minkbone for posting this in an alternative strategy! Script from Schahmaar\n\nTurn 1: Falcosaur Swarm!\nTurn 2: Arcane Storm\nTurn 3: Mana Surge - Normally Gloamwing dies but if not...\nTurn 4: Mana Surge\n",
		["teamName"] = "Gloamwing",
	},
	[85634] = {
		{
			"BattlePet-0-00000E0BBCC3", -- [1]
			115, -- [2]
			0, -- [3]
			334, -- [4]
			844, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBCE7", -- [1]
			110, -- [2]
			0, -- [3]
			0, -- [4]
			1152, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 4,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/18\n\nTurns 1+: Breath until Manos dies\nHanos comes out\nTurn 1: Decoy\nTurns 2+: Breath until Hanos dies\nFatos comes out\nTurns 1+: Breath until your Dragonling dies.\nBring in Chrominius\nTurns 1+: Bite Fatos to death!\n",
		["teamName"] = "Manos, Hanos and Fatos",
	},
	[71933] = {
		{
			"BattlePet-0-00000E0BBD5D", -- [1]
			110, -- [2]
			283, -- [3]
			564, -- [4]
			749, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBE6D", -- [1]
			803, -- [2]
			423, -- [3]
			538, -- [4]
			1179, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBD8E", -- [1]
			113, -- [2]
			178, -- [3]
			179, -- [4]
			519, -- [5]
		}, -- [3]
		["tab"] = 2,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/140\n\nTurn 1: Bite\nTurns 2+3: Dive\nTurn 4: Bite\nTurn 5: Survival\nTurns 6+: Bite until Au is dead\nBanks comes in\nTurns 1+: Bite until your Civet dies\nBring in your Electrified Razortooth\nTurn 1: Rip\nTurn 2: Blood in the Water\nTurn 3: Rip\nTurns 4+5: Devour - Banks dies\nLil' B comes in\nTurn 1: Rip\nTurn 2: Blood in the Water\nTurns 3+4: Devour\nTurns 5+: Rip until your Razortooth dies\nBring in your Fel Flame\nTurn 1: Immolate\nTurn 2: Conflagrate\nTurn 3: Burn until you're done\n",
		["teamName"] = "Blingtron 4000",
	},
	[154916] = {
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			0, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDD5", -- [1]
			504, -- [2]
			0, -- [3]
			0, -- [4]
			1416, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 6,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/6022\n\nStrategy added by bios\nTurn 1: Black Claw\nTurn 2: Flock\nTurn 3: Swap to your Teroclaw Hatchling\nTurn 4: Alpha Strike\nAny standard attack will finish the fight\n",
		["teamName"] = "Ravenous Scalespawn",
		["minXP"] = 1,
	},
	[173376] = {
		{
			"BattlePet-0-00000E0BBD21", -- [1]
			901, -- [2]
			916, -- [3]
			204, -- [4]
			1178, -- [5]
		}, -- [1]
		{
			"random:0", -- [1]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 7,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/11246\n\nStrategy added by sioupe\nTurn 1: Call Lightning\nTurns 2-3: Haywire\nTurn 3: GG\n",
		["teamName"] = "Lurking In The Shadows",
	},
	[73626] = {
		{
			"BattlePet-0-00000E0BBD21", -- [1]
			901, -- [2]
			392, -- [3]
			204, -- [4]
			1178, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBCA9", -- [1]
			384, -- [2]
			278, -- [3]
			710, -- [4]
			277, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBD1B", -- [1]
			777, -- [2]
			647, -- [3]
			334, -- [4]
			339, -- [5]
		}, -- [3]
		["tab"] = 3,
		["notes"] = "Strategy added by zekrrun\nStrategy credit to mel9525@WowHead.com\n\nTurn 1: Call Lightning\nLil' Oondasta's  Frill Blast ability will force Clockwork Gnome out\nTurn 2: Build Turret\nTurn 3: Metal Fist\nIf at round 3 your Clockwork Gnome just die and resurrect with  Failsafe, bring out Sunreaver Micro-Sentry and pass then bring your Clockwork Gnome an skip to Turn 5\nTurn 4: Metal Fist\nTurn 5: Build Turret\n    Clockwork Gnome usually dies here, bring out Darkmoon Zeppelin\nTurn 6: Decoy\nTurn 7: Missile\nTurn 8: Missile\n\n",
		["teamName"] = "Little Tommy Newcomer",
	},
	[94641] = {
		{
			"BattlePet-0-00000E0BBEF2", -- [1]
			1370, -- [2]
			1773, -- [3]
			518, -- [4]
			1977, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDC4", -- [1]
			525, -- [2]
			597, -- [3]
			598, -- [4]
			1167, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBEC8", -- [1]
			525, -- [2]
			597, -- [3]
			598, -- [4]
			1722, -- [5]
		}, -- [3]
		["tab"] = 4,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/1820\n\nStrategy added by KáPé\nTurn 1-2: Falcosaur Swarm!\nTurn 3: Predatory Strike\nTurn 4: Savage Talon\nTainted Maulclaw dies\na random pet comes in\nTurn 1-2: Falcosaur Swarm!\nTurn 3: Savage Talon until your pet dies\nbring in Emerald Proto-Whelp\nTurn 1: Emerald Dream if your pet's HP < 60%\nTurn 2: keep Emerald Presence buff on\nTurn 3: Emerald Bite until enemy dies\n",
		["teamName"] = "Tainted Maulclaw",
	},
	[154917] = {
		{
			"BattlePet-0-00000E0BBF3E", -- [1]
			943, -- [2]
			786, -- [3]
			1762, -- [4]
			1963, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBCF3", -- [1]
			921, -- [2]
			0, -- [3]
			919, -- [4]
			1211, -- [5]
		}, -- [2]
		{
			"random:10", -- [1]
		}, -- [3]
		["tab"] = 6,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/5572\n\nStrategy added by Lazey\n*** 9.0.2 approved ***\n\nIllusional Barrier X with only 3 rounds cooldown, Psionic Storm dealing AoE damage and changing the weather to Arcane Winds to give Psychic Blast an additional attack. Looks dangerous but my answer is... Blistering Cold :-)\n\nTo get as much Frostbite applications as possible on Mindshackle I use Blistering Cold two times before I force my Boneshard to die. To make it even worse for the opponent I also add a Bleeding effect. Black Claw and Shattered Defenses applied by Hunting Party, Flock or Swarm will then buff Frostbite/Bleeding damage.\n\nYou can replace Zandalari Raptors with Foulfeather, Ikky or Chitterspine Skitterling (8.2 Nazjatar wild catch), the script can handle them all and will also bring your third pet to pass the last turn if your birdies die.\n\nTurn 1: Blistering Cold\nTurn 2: Chop\nTurn 3: BONESTORM\nTurn 4: Blistering Cold (Boneshard dies)\nBring in your Black Claw + Swarm ability pet\nTurn 1: Black Claw\nTurn 2+: Hunting Party, Flock or Swarm\n\nWhen your Mech comes in (while using vulnerable Flying pets with Black Claw)\nPass turn\n",
		["teamName"] = "Mindshackle",
		["minXP"] = 25,
	},
	[173377] = {
		{
			"BattlePet-0-00000E0BBD2E", -- [1]
			0, -- [2]
			489, -- [3]
			589, -- [4]
			1165, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBD92", -- [1]
			0, -- [2]
			595, -- [3]
			536, -- [4]
			1266, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBCE7", -- [1]
			0, -- [2]
			362, -- [3]
			593, -- [4]
			1152, -- [5]
		}, -- [3]
		["tab"] = 7,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/11130\n\nStrategy added by Faymos#1176\nStrategy based on original by Shenk, but flipped 1st and last pet based on comment by Bighoff.\n\nTurn 1: Arcane Storm\nTurns 2-4: Mana Surge\nNeedlenose comes in\nTurn 5: Swap to your Xu-Fu, Cub of Xuen\nTurn 6: Prowl\nTurn 7: Moonfire\nBrite comes in\nTurn 8: Swap to your Chrominius\nTurn 9: Howl\nTurns 10-12: Surge of Power\n",
		["teamName"] = "Airborne Defense Force",
	},
	[72285] = {
		{
			"BattlePet-0-00000E0BBE3A", -- [1]
			445, -- [2]
			369, -- [3]
			564, -- [4]
			568, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBD24", -- [1]
			445, -- [2]
			369, -- [3]
			564, -- [4]
			743, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBD5E", -- [1]
			445, -- [2]
			369, -- [3]
			564, -- [4]
			493, -- [5]
		}, -- [3]
		["tab"] = 2,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/217\n\nScript by Dintho\n\nTurn 1: Acidic Goo\nTurn 2: Ooze Touch\nTurns 3+4: Dive\nTurn 5: Acidic Goo\nTurn 6: Ooze Touch\nTurn 7: Ooze Touch\nTurn 8: Ooze Touch\nTurn 9: Acidic Goo\nTurn 10: Ooze Touch\nTurns 11+12: Dive\n\nIf a snail got killed during one round, bring in the next snail and move to the next turn.\nContinue doing this rotation until Chi-Chi is dead.\n",
		["teamName"] = "Chi-Chi, Hatchling of Chi-Ji",
	},
	[128016] = {
		{
			"BattlePet-0-00000E0BBE98", -- [1]
			0, -- [2]
			404, -- [3]
			0, -- [4]
			1573, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDFC", -- [1]
			0, -- [2]
			0, -- [3]
			282, -- [4]
			1537, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBD1B", -- [1]
			0, -- [2]
			282, -- [3]
			334, -- [4]
			339, -- [5]
		}, -- [3]
		["tab"] = 5,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/12082\n\nStrategy added by norng\n4 rounds.\n\nTurn 1: Sunlight - Crimson Spore comes in\nTurn 2: Explode\nBring in your Darkmoon Zeppelin\nTurn 1: Decoy\nTurn 2: Explode - Shadeflicker dies\n",
		["teamName"] = "Shadeflicker",
	},
	[201802] = {
		{
			"BattlePet-0-00000E0BBDB3", -- [1]
			459, -- [2]
			640, -- [3]
			208, -- [4]
			1387, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBCC3", -- [1]
			115, -- [2]
			779, -- [3]
			334, -- [4]
			844, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			0, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [3]
		["tab"] = 8,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/18613\n\nStrategy added by TobeDeleted#2852\nTurn 1: Wind-Up\nTurn 2: Supercharge\nTurn 3: Wind-Up\nTurn 4: Wind-Up\nTurn 5: Wind-Up\nTurn 6: Toxic Smoke until Wind-Up dies. You might get two goes with this if you're lucky. Swap in Mechanical Pandaren Dragonling\nTurn 7+: Breath until second pet dies.\nBlack Claw\nFlock\n",
		["teamName"] = "Sharp as Flint",
	},
	[71934] = {
		{
			"BattlePet-0-00000E0BBD2E", -- [1]
			122, -- [2]
			489, -- [3]
			589, -- [4]
			1165, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBCC3", -- [1]
			115, -- [2]
			647, -- [3]
			334, -- [4]
			844, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBDC4", -- [1]
			115, -- [2]
			611, -- [3]
			612, -- [4]
			1167, -- [5]
		}, -- [3]
		["tab"] = 2,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/167\n\nTurn 1: Arcane Storm\nTurns 2-4: Mana Surge - Trike will be swapped in\nTurn 5: Arcane Storm\nTurns 6+: Tail Sweep until Nexus Whelpling dies\nBring in your Mechanical Pandaren Dragonling\nTurn 1: Is Trike below 249 health? If so, use Breath to finish him off!\nOtherwise use:\nTurn 1: Bombing Run\nTurn 2: Breath\nTurn 3: Breath\nTurn 4: Decoy (bombing run should kill trike now)\nScreamer will come out again\nTurn 1: Bombing Run\nTurn 2: Decoy if you can - otherwise Breath\nTurns 3+: Breath until Screamer is dead or swaps out again.\nChaos comes in\nTurns 1+: Breath everything to death from now on! Sometimes you don't even need the Emerald Proto-Whelp.\n",
		["teamName"] = "Dr. Ion Goldbloom",
	},
	[154918] = {
		{
			"BattlePet-0-00000E0BBD0C", -- [1]
			422, -- [2]
			218, -- [3]
			321, -- [4]
			1238, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBCF3", -- [1]
			921, -- [2]
			0, -- [3]
			919, -- [4]
			1211, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBE55", -- [1]
			509, -- [2]
			0, -- [3]
			0, -- [4]
			746, -- [5]
		}, -- [3]
		["tab"] = 6,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/6066\n\nStrategy added by VonSnoot#1197\nPretty quick and easy. Valkyr sets up the bomb and the bonus damage. Anklerender sets up more damage bonus and a damage multiplier. Bomb goes off, and your Crab (or whatever pet you have that has Surge) finishes it off.\n\nTurn 1: Curse of Doom\nTurn 2: Unholy Ascension\nUnborn Val'kyr revives\nTurn 3: Shadow Shock (Unborn Val'kyr dies for good)\nSend out Zandalari Anklerender\nTurn 4: Black Claw\nTurn 5-6: Hunting Party\nZandalari Anklerender dies, Crab comes out\nTurn 7: Surge\n",
		["teamName"] = "Kelpstone",
	},
	[94642] = {
		{
			"BattlePet-0-00000E0BBD0C", -- [1]
			422, -- [2]
			218, -- [3]
			652, -- [4]
			1238, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			1370, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBDC4", -- [1]
			525, -- [2]
			597, -- [3]
			598, -- [4]
			1167, -- [5]
		}, -- [3]
		["tab"] = 4,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/632\n\nTurn 1: Curse of Doom\nTurn 2: Haunt\nTurn 3: Bring in your Ikky bird\nTurn 4: Black Claw\nTurns 5+: Flock - Direflame dies - Ikky mostly with it\nAn enemy pet comes in\nTurn 1: Bring back in your Unborn Val'kyr\nTurns 2+: Shadow Shock and Curse of Doom until your Val'kyr dies\nBring in your Emerald Proto-Whelp\nTurns 1-3: Emerald Dream\nTurn 4: Emerald Presence (keep active)\nTurns 5+: Emerald Bite until the last pet is dead\n",
		["teamName"] = "Direflame",
	},
	[173315] = {
		{
			"BattlePet-0-00000E0BBD13", -- [1]
			118, -- [2]
			564, -- [3]
			513, -- [4]
			868, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBD2E", -- [1]
			122, -- [2]
			489, -- [3]
			589, -- [4]
			1165, -- [5]
		}, -- [2]
		{
			"random:8", -- [1]
		}, -- [3]
		["tab"] = 7,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/9497\n\nStrategy added by DragonsAfterDark\nThere seems to be an issue with using Duration and < or > conditionals with non-active enemy abilites. The script I posted *did* work, just not with the most recent update. I had some kind of leftover from the previous version that didn't cause this issue for me. \n\nI've posted a new script. Deleted the one in-game, copied from here, and re-tested. It worked. \n\nVideo for Fight (https://www.youtube.com/watch?v=XggSOaSORe4&t=6s)\n\nTurn 1: Whirlpool\nTurns 2-3: Dive\nTurn 4+: Water Jet until Ash dies\nFang comes in\nTurn 1: Whirlpool\nTurn 2+: Water Jet until Pandaren Water Spirit dies\nBring in your Nexus Whelpling\nTurn 1: Arcane Storm\nTurns 2-4: Mana Surge\nSwarm comes in\nTurn 1+: Mana Surge may continue\n~~: Arcane Storm & Tail Sweep until Swarm or Nexus Whelp dies\nIf needed:\nBring in your Beast pet\nTurn 1: Any standard attack will finish the fight\n",
		["teamName"] = "Resilient Survivors",
		["minXP"] = 25,
	},
	[97804] = {
		{
			"BattlePet-0-00000E0BBEE1", -- [1]
			0, -- [2]
			624, -- [3]
			1076, -- [4]
			1349, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBD92", -- [1]
			974, -- [2]
			595, -- [3]
			536, -- [4]
			1266, -- [5]
		}, -- [2]
		{
			0, -- [1]
		}, -- [3]
		["tab"] = 5,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/13976\n\nStrategy added by Mutanis\nTurn 1: Ice Tomb\nTurn 2: Swap to your Xu-Fu, Cub of Xuen\nTurn 3: Prowl\nTurn 4: Moonfire  (Rocket comes in and Rocket dies)\nJinx comes in\nTurns 5-6: Spirit Claws (2x)\nMarshmallow comes in\nTurns 7+: Spirit Claws until Xu-Fu, Cub of Xuen dies (~2x)\nBring in your Level Pet\nTurn 9: Swap to your Rotten Little Helper\nTurn 10: Greench's Gift\n",
		["teamName"] = "Fight Night: Tiffany Nelson",
		["minXP"] = 1,
	},
	[99880] = {
		{
			"BattlePet-0-00000E0BBDEE", -- [1]
			406, -- [2]
			453, -- [3]
			814, -- [4]
			1155, -- [5]
		}, -- [1]
		{
			0, -- [1]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBCC3", -- [1]
			115, -- [2]
			779, -- [3]
			334, -- [4]
			844, -- [5]
		}, -- [3]
		["tab"] = 5,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/526\n\nIf you want to play it safe, use a level 25 rare pet in the second slot\n\nTurn 1: Sandstorm\nTurn 2: Crush\nTurn 3: Rupture\nTurns 4+: From now on, keep Sandstorm always active.\nUse Rupture when available.\nUse Crush otherwise until your Idol dies.\nBring in your Level Pet\nTurn 1: Swap to your Mechanical Pandaren Dragonling\nTurn 2: Decoy\nTurns 3+: Breath away!\nUse Thunderbolt if Mini Electron is the only surviving enemy pet.\n",
		["teamName"] = "Oh, Ominitron",
	},
	[128017] = {
		{
			"BattlePet-0-00000E0BBCC3", -- [1]
			115, -- [2]
			0, -- [3]
			0, -- [4]
			844, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBD0C", -- [1]
			0, -- [2]
			218, -- [3]
			652, -- [4]
			1238, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			0, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [3]
		["tab"] = 5,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/1414\n\nStrategy added by Aranesh\nTurn 1: Breath - your Unborn Val'kyr is forced in\nTurn 2: Curse of Doom\nTurn 3: Haunt\nBring in your Mechanical Pandaren Dragonling\nTurn 1: Breath - your Ikky is forced in\nTurn 2: Black Claw\nTurns 3+: Flock\n",
		["teamName"] = "Corrupted Blood of Argus",
	},
	[204934] = {
		{
			"BattlePet-0-00000E0BBD92", -- [1]
			974, -- [2]
			595, -- [3]
			536, -- [4]
			1266, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBCC3", -- [1]
			115, -- [2]
			0, -- [3]
			334, -- [4]
			844, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBE35", -- [1]
			355, -- [2]
			490, -- [3]
			124, -- [4]
			514, -- [5]
		}, -- [3]
		["tab"] = 4,
		["notes"] = "Strategy added by AgentRock#1964\nScript thanks to FMJustice\n\nTurn 1: Moonfire\nTurn 2: Prowl\nTurn 3 -4: Spirit Claws until Lifft is dead\nTurn 5-7: Brul'dan comes in.  Spirit Claws until Xu-Fu, Cub of Xuen is dead.\nBring in Mechanical Pandaren Dragonling\nTurn 8-9: Breath until Brul'dan is dead.\nTurn 10: Swole comes in.  Decoy\nTurn 11-15: Breath until Mechanical Pandaren Dragonling is dead.\nBring is Flayer Youngling\nTurn 16: Triple Snap until Swole uses Dive.  Note, if Swole is already underground when Flayer Youngling comes in, then skip to next step.\nTurn 17: Deflection\nTurn 18+: Rampage until Swole is dead.\n",
		["teamName"] = "Do You Even Train?",
	},
	[154920] = {
		{
			"BattlePet-0-00000E0BBEF2", -- [1]
			0, -- [2]
			1773, -- [3]
			518, -- [4]
			1977, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBED0", -- [1]
			1773, -- [2]
			0, -- [3]
			518, -- [4]
			1974, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBF21", -- [1]
			0, -- [2]
			0, -- [3]
			518, -- [4]
			1975, -- [5]
		}, -- [3]
		["tab"] = 6,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/5501\n\nStrategy added by DragonsAfterDark\nKnifefang's Blood in the Water has a 25% Hit Chance for over 1592 damage.\n\nRound 1: Blood in the Water Does Not hit your Bloodgazer Hatchling\nTurns 1-2: Falcosaur Swarm!\nTurn 3: Predatory Strike\nTurns 4+: Falcosaur Swarm! until dead\nBring in your Snowfeather Hatchling\nTurn 1: Predatory Strike\nTurns 2-3: Falcosaur Swarm!\n\nRound 1: Blood in the Water Does hit your Bloodgazer Hatchling\nTurn 1: Falcosaur Swarm!\nBring in your Snowfeather Hatchling\nTurn 1: Predatory Strike\nTurns 2+: Falcosaur Swarm! until dead\nBring in your Direbeak Hatchling\nTurn 1: Predatory Strike\n",
		["teamName"] = "Frenzied Knifefang",
	},
	[99210] = {
		{
			"BattlePet-0-00000E0BBE4E", -- [1]
			1085, -- [2]
			456, -- [3]
			752, -- [4]
			1601, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBCC3", -- [1]
			115, -- [2]
			779, -- [3]
			282, -- [4]
			844, -- [5]
		}, -- [2]
		{
			0, -- [1]
		}, -- [3]
		["tab"] = 5,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/5641\n\nStrategy added by Shenk\nTurn 1: Soulrush.\nTurn 2+: Magic Sword until Itchy dies \nNote that there is a chance that Itchy got stunned in the first round. When that happens use Magic Sword in round 2 as usual and then Clean-Up. This will remove the Cyclone of Salty Bird as intended.\nSalty Bird comes in\nTurn A: Clean-Up\nTurn 2: Magic Sword until Salty Bird has 868 or less health\nTurn 3: Soulrush. Salty Bird dies (If Servant of Demidos dies too soon send in Mechanical Pandaren Dragonling and use Breath)\n*: Should Itchy come back in finish it with Magic Sword and Soulrush\nGrommet comes in\nTurn 1+: Magic Sword until either Servant of Demidos dies or Grommet has 492 or less health\nTurn 2: Pass when Servant of Demidos is active and Grommet is at <=492 health\nBring in your Mechanical Pandaren Dragonling\nFollow this priority list:\nPrio 1: Explode when Grommet has 560 or less health\nPrio 2: Thunderbolt when Grommet has 799 or more health\nPrio 3: Breath\n",
		["teamName"] = "Fight Night: Bodhi Sunwayver",
		["minXP"] = 1,
	},
	[162458] = {
		{
			0, -- [1]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBF3E", -- [1]
			943, -- [2]
			786, -- [3]
			1762, -- [4]
			1963, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			1370, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [3]
		["tab"] = 6,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/8104\n\nStrategy added by Hollandshoop\nTurn 1: Pass or use any ability with your Level Pet\nTurn 2: Swap to your Boneshard\nTurn 3: Blistering Cold\nTurn 4: Boneshard stunned. Swap to your Ikky\nTurn 5: Black Claw\nTurn 6: Flock\nAnd the job is done!!!\n",
		["teamName"] = "Retinus the Seeker",
		["minXP"] = 1,
	},
	[154921] = {
		{
			"BattlePet-0-00000E0BBDB3", -- [1]
			459, -- [2]
			0, -- [3]
			282, -- [4]
			1387, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBD1B", -- [1]
			0, -- [2]
			282, -- [3]
			0, -- [4]
			339, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBCE7", -- [1]
			0, -- [2]
			362, -- [3]
			593, -- [4]
			1152, -- [5]
		}, -- [3]
		["tab"] = 6,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/6117\n\nStrategy added by Neevi#2149\nWorked pretty well for me\n\nTurn 1: Wind Up\nTurn 2: Wind Up\nTurn 3: Explode, switch to other Explode Pet\nTurn 4: Explode\nTurn 5: Chrominius - Howl\nTurn 6: Surge of Power\n",
		["teamName"] = "Giant Opaline Conch",
	},
	[173381] = {
		{
			"BattlePet-0-00000E0BBD21", -- [1]
			901, -- [2]
			916, -- [3]
			204, -- [4]
			1178, -- [5]
		}, -- [1]
		{
			"random:0", -- [1]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 7,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/11192\n\nStrategy added by sioupe\nTurn 1: Call Lightning\nTurn 2-3: Haywire\n",
		["teamName"] = "Ardenweald's Tricksters",
	},
	[128018] = {
		{
			0, -- [1]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBCA9", -- [1]
			384, -- [2]
			0, -- [3]
			710, -- [4]
			277, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			0, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [3]
		["tab"] = 5,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/8459\n\nStrategy added by Shadowball\nStrategy created by Mot from this site. I made a script for it\n\nTurn 1: Pass or cast any ability if level pet speed > 347\nTurn 2: Your Clockwork Gnome gets swapped in\nTurn 3: Metal Fist\nTurn 4: Build Turret\nTurn 5: Pass\nTurn 6: Your Ikky gets swapped in\nTurn 7: Black Claw\nTurn 8: Flock\n",
		["teamName"] = "Mar'cuus",
		["minXP"] = 10,
		["minHP"] = 801,
	},
	[66730] = {
		{
			"BattlePet-0-00000E0BBEC8", -- [1]
			525, -- [2]
			1087, -- [3]
			168, -- [4]
			1722, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			1370, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [2]
		{
			0, -- [1]
		}, -- [3]
		["tab"] = 3,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/7598\n\nStrategy added by Shenk\nDidn't bother to test every Dream Whelpling breed since it shouldn't matter.\n\nTurn 1: Toxic Skin\nTurn 2+: Emerald Bite until Skyshaper dies\nFangor comes in\nTurn 1: Emerald Bite\nTurn 2: Healing Flame\nTurn 3+: Emerald Bite until either one of the pets dies\n\nIf Dream Whelpling wins:\nDor the Wall comes in\nTurn 1: Pass. Dream Whelpling dies\nBring in your Level Pet\nTurn 1: Swap to your Ikky\nTurn 2: Black Claw\nTurn 3+: Flock\n\nIf Fangor wins:\nBring in your Ikky\nTurn 1+: Savage Talon until Fangor dies\nDor the Wall comes in\nTurn 1: Savage Talon\nTurn 2: Swap to your Level Pet\nTurn 3: Swap to your Ikky\nTurn 4: Black Claw\nTurn 5+: Flock\n",
		["teamName"] = "Hyuna of the Shrines",
		["minXP"] = 1,
	},
	["Moon, Mouthy, and Carl"] = {
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			0, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBD1B", -- [1]
			777, -- [2]
			282, -- [3]
			334, -- [4]
			339, -- [5]
		}, -- [2]
		{
			0, -- [1]
		}, -- [3]
		["tab"] = 4,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/6593\n\nStrategy added by Threewolves\nThis strategy has been updated to include the possibilities of stuns. Hopefully, it accounts for all variables.\n\nTurn 1: Black Claw\nTurns 2+: Flock\nTurn 3: Black Claw\nTurns 4+: Flock til Ikky dies or gets stunned.\nBring in your Darkmoon Zeppelin if Ikky was stunned.\nBring in your Level Pet if Ikky died. Then, swap to your Darkmoon Zeppelin. Pass if stunned.\nTurn 1: Decoy (skip if leveling pet has already been swapped in)\nTurn 2: Swap to your Level Pet. (skip if leveling pet has already been swapped in)\nTurn 3: Swap to your Darkmoon Zeppelin. (skip if leveling pet has already been swapped in)\nTurns 4+: Missile til Carl is below 573 HP.\nTurn 5: Explode\n",
		["minXP"] = 1,
	},
	[154922] = {
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			0, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBCC3", -- [1]
			115, -- [2]
			779, -- [3]
			282, -- [4]
			844, -- [5]
		}, -- [2]
		{
			0, -- [1]
		}, -- [3]
		["tab"] = 6,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/9777\n\nStrategy added by Mnrogar\nTurn 1: Black Claw\nTurns 2-4: Flock\nBring in your Mechanical Pandaren Dragonling\nTurn 1: Breath\nTurn 2: Thunderbolt\nTurn 3: Explode\n",
		["teamName"] = "Gnomefeaster",
		["minXP"] = 1,
	},
	[98572] = {
		{
			"BattlePet-0-00000E0BBDEE", -- [1]
			0, -- [2]
			453, -- [3]
			490, -- [4]
			1155, -- [5]
		}, -- [1]
		{
			"random:0", -- [1]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 5,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/542\n\nTurns 1+: Keep Sandstorm active and use Deflection occasionally\nAfter 10 rounds Rocko will die on its own.\n",
		["teamName"] = "Rocko Needs a Shave",
		["minXP"] = 1,
	},
	[94644] = {
		{
			"BattlePet-0-00000E0BBD0C", -- [1]
			422, -- [2]
			218, -- [3]
			652, -- [4]
			1238, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			1370, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBDC4", -- [1]
			525, -- [2]
			597, -- [3]
			598, -- [4]
			1167, -- [5]
		}, -- [3]
		["tab"] = 4,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/708\n\nStrategy added by Nyari\nTurn 1: Curse of Doom\nTurn 2: Pass\nTurn 3: Haunt\nTurn 4: Bring in Ikky\nTurn 5: Black Claw\nTurns 6+: Flock - Dark Gazer dies\nAn enemy pet comes in\nTurns 1+: Savage Talon until Ikky dies\nBring back your Val'kyr\nTurns 1+: Shadow Shock until your Val'kyr dies\nBring in your Emerald Proto-Whelp\nTurns 1-3: Emerald Dream\nTurn 4: Emerald Presence\nTurns 5+: Emerald Bite - use Emerald Dream again if you run low on health\n",
		["teamName"] = "Dark Gazer",
	},
	[154923] = {
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			1370, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBD44", -- [1]
			113, -- [2]
			503, -- [3]
			173, -- [4]
			1149, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 6,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/6626\n\nStrategy added by Skwirrel\nTurn 1: Black Claw\nTurn 2: Flock - Ikky dies\nBring in Corefire Imp\nTurn 3: Flamethrower\nTurn 4: Burn\nTurn 5: Burn\n",
		["teamName"] = "Sputtertube",
	},
	[104992] = {
		{
			"BattlePet-0-00000E0BBCF3", -- [1]
			921, -- [2]
			364, -- [3]
			919, -- [4]
			1211, -- [5]
		}, -- [1]
		{
			0, -- [1]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBD2F", -- [1]
			921, -- [2]
			919, -- [3]
			364, -- [4]
			1180, -- [5]
		}, -- [3]
		["tab"] = 5,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/1610\n\nTurn 1: Black Claw\nTurn 2: Hunting Party\nTurn 3: Hunting Party\nTurn 4: Switch to level pet\nTurn 5: Switch to Zandalari Kneebiter\nTurn 6: Black Claw\nTurn 7: Hunting Party\nTurn 8: Hunting Party\n",
		["teamName"] = "Meet The Maw",
		["minXP"] = 5,
		["minHP"] = 302,
	},
	[128019] = {
		{
			"BattlePet-0-00000E0BBDB3", -- [1]
			459, -- [2]
			0, -- [3]
			282, -- [4]
			1387, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBCC3", -- [1]
			115, -- [2]
			0, -- [3]
			282, -- [4]
			844, -- [5]
		}, -- [2]
		{
			0, -- [1]
		}, -- [3]
		["tab"] = 5,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/1364\n\nStrategy added by solidstate77#1969\nTurn 1: Wind-Up\nTurn 2: Wind-Up\nTurn 3: Explode\nBring in your Mechanical Pandaren Dragonling\nTurn 1: Breath\nTurn 2: Breath\nTurn 3: Explode\n",
		["teamName"] = "Watcher",
		["minXP"] = 1,
	},
	[162461] = {
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			0, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBCE6", -- [1]
			115, -- [2]
			172, -- [3]
			0, -- [4]
			489, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 6,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/7632\n\nStrategy added by Lazey\n*** 9.0.2 approved ***\n\nDragonkins with <305 Power will need  2x Breath.\n\nTurn 1: Black Claw\nTurns 2-3: Flock (Ikky dies)\nBring in your Spawn of Onyxia\nTurn 4: Scorched Earth\nTurn 5+: Breath\n",
		["teamName"] = "I Am The One Who Whispers",
		["minXP"] = 1,
	},
	[154924] = {
		{
			"BattlePet-0-00000E0BBF3E", -- [1]
			0, -- [2]
			786, -- [3]
			0, -- [4]
			1963, -- [5]
		}, -- [1]
		{
			0, -- [1]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			0, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [3]
		["tab"] = 6,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/10192\n\nStrategy added by Akxur#2166\nTurn 1: Blistering Cold\nTurn 2: Pass\nTurn 3: Swap to your Level Pet\nTurn 4: Swap to your Boneshard\nTurn 5: Blistering Cold\nTurn 6: Pass\nBring in your Ikky\nTurn 1: Black Claw\nTurns 2-4: Flock\n",
		["teamName"] = "Goldenbot XD",
		["minXP"] = 1,
	},
	[173129] = {
		{
			"BattlePet-0-00000E0BBDC4", -- [1]
			525, -- [2]
			597, -- [3]
			0, -- [4]
			1167, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBD9A", -- [1]
			384, -- [2]
			204, -- [3]
			208, -- [4]
			116, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 7,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/11082\n\nStrategy added by matarsaed#2362\nTurn 1: Always keep up Emerald Presence\nTurn 2: Skip turn if you get sleeped\nTurn 3: Emerald Bite until Emerald Proto-Whelp dies\nBring in your Tranquil Mechanical Yeti\nTurn 1: Supercharge\nTurn 2: Call Lightning\nTurn 3: If needed: Metal Fist to finish the fight\n",
		["teamName"] = "Thenia's Loyal Companions",
		["minXP"] = 1,
	},
	[94645] = {
		{
			"BattlePet-0-00000E0BBD0C", -- [1]
			422, -- [2]
			218, -- [3]
			652, -- [4]
			1238, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			1370, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBDC4", -- [1]
			525, -- [2]
			597, -- [3]
			598, -- [4]
			1167, -- [5]
		}, -- [3]
		["tab"] = 4,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/715\n\nStrategy added by Nyari\nTurn 1: Curse of Doom\nTurn 2: Pass\nTurn 3: Haunt\nBring in Ikky\nTurn 1: Black Claw\nTurns 2+: Flock - Bleakclaw dies\nAn enemy pet comes in\nTurns 1+: Savage Talon until Ikky dies\nBring in your Emerald Proto-Whelp\nTurn 1: Emerald Presence\nTurn 2: Emerald Dream\nTurns 3+: Keep Emerald Presence active and use Emerald Bite otherwise. Use Emerald Dream again if you drop low on health.\n",
		["teamName"] = "Bleakclaw",
	},
	[173257] = {
		{
			"BattlePet-0-00000E0BBE04", -- [1]
			422, -- [2]
			218, -- [3]
			1397, -- [4]
			1628, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBD9A", -- [1]
			384, -- [2]
			204, -- [3]
			208, -- [4]
			116, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBD2E", -- [1]
			122, -- [2]
			489, -- [3]
			589, -- [4]
			1165, -- [5]
		}, -- [3]
		["tab"] = 7,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/11879\n\nStrategy added by Maizou\nTook inspiration from DragonsAfterDark's strategy. Re-Uploaded so comments weren't filled with correspondence.\n\nRuneforged Servitor also works in the 2nd Slot. Just use Jolt instead of Metal Fist. I don't think it's possible to set it as a substitute without the same first slot ability, since it DOES matter which one they have in the first slot.\n\nTurn 1: Curse of Doom\nTurn 2: Haunting Song\nTurn 3+: Shadow Shock until Bloog Dies.\nBone Crusher comes in.\nTurn 4+: Shadow Shock until Sister of Temptation dies.\nBring in Tranquil Mechanical Yeti.\n\nTurn 4 ½: Did Bone Crusher heal?\nYes? Metal Fist\nNo? Continue to Turn 5.\n\nTurn 5: Supercharge\nTurn 6: Call Lightning\nBone Crusher dies. Chipper comes in.\nTurn 7+: Metal Fist until Tranquil Mechanical Yeti dies.\nBring in Nexus Whelpling.\nTurn 8: Arcane Storm (You may defeat him here)\nTurn 9: Mana Surge\n",
		["teamName"] = "Mighty Minions of Maldraxxus",
	},
	[154925] = {
		{
			0, -- [1]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBF3E", -- [1]
			943, -- [2]
			786, -- [3]
			1762, -- [4]
			1963, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			0, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [3]
		["tab"] = 6,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/10036\n\nStrategy added by Dpaul\nLevel pet variation on Kylana#1731's strategy\n\nTurn 1: Pass\nBring in your Boneshard\nTurn 3: Blistering Cold\nTurn 4: Chop\nBring in your Ikky\nTurn 6: Black Claw\nTurn 7: Flock\n",
		["teamName"] = "Creakclank",
		["minXP"] = 18,
		["minHP"] = 1001,
	},
	[128020] = {
		{
			"BattlePet-0-00000E0BBD0C", -- [1]
			0, -- [2]
			218, -- [3]
			321, -- [4]
			1238, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBCA2", -- [1]
			163, -- [2]
			743, -- [3]
			663, -- [4]
			627, -- [5]
		}, -- [2]
		{
			0, -- [1]
		}, -- [3]
		["tab"] = 5,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/1388\n\nStrategy added by Lazey\n*** 9.0.2 approved ***\n\nTurn 1: Curse of Doom\nTurn 2: Unholy Ascension\nBring in your Infected Squirrel\nTurn 3: Creeping Fungus\nTurns 4-6: Stampede\nTurn 7: Corpse Explosion\n",
		["teamName"] = "Bloat",
		["minXP"] = 1,
	},
	[173130] = {
		{
			"BattlePet-0-00000E0BBDF1", -- [1]
			477, -- [2]
			206, -- [3]
			481, -- [4]
			117, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDE9", -- [1]
			477, -- [2]
			416, -- [3]
			481, -- [4]
			1725, -- [5]
		}, -- [2]
		{
			0, -- [1]
		}, -- [3]
		["tab"] = 7,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/9494\n\nStrategy added by DragonsAfterDark\nUpdated to make it more reliable for the level pet.\n\nI imagine you could do it with two Tiny Snowmen, but I can't guarantee the script will work with that pet change, since I don't have a second one on-hand to test this.\n\nTurn 1: Call Blizzard\nTurn 2: Deep Freeze\nTurn 3: Swap to your Grumpling -- // -- Slasher comes in\nTurn 4: Frost Shock\nTurn 5: Snowball\nTurn 6: Deep Freeze\nTurn 7: Swap to your Tiny Snowman -- // -- Battery comes back in\nTurn 8: Deep Freeze\nTurn 9: Call Blizzard -- // -- This hits Slasher\nTurn 10: Snowball\nTurn 11: Snowball\nBattery comes back in\nTurn 12: Snowball\nTurn 13: Snowball\nPounder comes in\nTurn 14: Swap to your Level Pet\nTurn 15: Swap to your Tiny Snowman\nTurn 16: Call Blizzard\nTurn 17: Snowball\nTurn 18: Snowball\nTurn 19: Deep Freeze\nTurn 20: Call Blizzard\n",
		["teamName"] = "Micro Defense Force",
		["minXP"] = 1,
	},
	[142151] = {
		{
			"BattlePet-0-00000E0BBDB3", -- [1]
			459, -- [2]
			566, -- [3]
			208, -- [4]
			1387, -- [5]
		}, -- [1]
		{
			0, -- [1]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 6,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/2216\n\nStrategy added by Laponko\nTurn 1: Wind-Up\nTurn 2: Supercharge\nTurn 3: Wind-Up\nTurn 4: Wind-Up\nTurn 5: Swap to Level Pet\nTurn 6: Swap to Iron Starlette\nTurn 7: Wind-Up\n",
		["teamName"] = "You've Never Seen Jammer Upset",
		["minXP"] = 25,
		["minHP"] = 501,
	},
	[173131] = {
		{
			"BattlePet-0-00000E0BBD1B", -- [1]
			0, -- [2]
			282, -- [3]
			334, -- [4]
			339, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBD9A", -- [1]
			384, -- [2]
			204, -- [3]
			208, -- [4]
			116, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBCE7", -- [1]
			0, -- [2]
			362, -- [3]
			593, -- [4]
			1152, -- [5]
		}, -- [3]
		["tab"] = 7,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/9906\n\nStrategy added by Lazey\n(9-10 rounds)\n\n*** Created on Beta, so maybe not final  ***\n\nTurn 1: Decoy\nTurn 2: Explode\nBring in your Tranquil Mechanical Yeti\nTurn 1: Supercharge\nTurn 2: Call Lightning (Shelby dies, Tinyhoof comes in)\nTurn 3+: Metal Fist (until Tinyhoof is dead)\nSwap to your Chrominius\nTurn 1: Howl\nTurn 2: Surge of Power\n",
		["teamName"] = "Cliffs of Bastion",
	},
	[141002] = {
		{
			"BattlePet-0-00000E0BBDB3", -- [1]
			459, -- [2]
			566, -- [3]
			208, -- [4]
			1387, -- [5]
		}, -- [1]
		{
			0, -- [1]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBCC3", -- [1]
			115, -- [2]
			779, -- [3]
			282, -- [4]
			844, -- [5]
		}, -- [3]
		["tab"] = 6,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/1745\n\nStrategy added by Lazey\n*** 9.0.2 approved ***\n\nIt's very rare, but if an early Sweep forces a pet swap on your side, I recommend a Restart.\n\nLevel Pet will get all XP cause both carry pets die.\n\nTurn 1: Wind-Up\nTurn 2: Supercharge\nTurn 3: Wind-Up\nTurn 4: Wind-Up, Dead Deckhand Leonard dies.\nCorrupted Slime comes in\nTurn 1: Powerball\nTurn 2: Supercharge\nTurn 3+: Prio 1: Unleash Wind-Up attack if Failsafe was triggered. Don't apply new Wind-Up\nPrio 2: Powerball\nIron Starlette dies, bring in your Mechanical Pandaren Dragonling\nTurn 1+: Use Thunderbolt if you're sure the split damage will kill Corrupted Slime, otherwise Breath.\nReanimated Kraken Tentacle comes in\nTurn 1: Prio 1: Explode if Kraken Tentacle has 560HP or less.\nPrio 2: Thunderbolt\nPrio 3: Breath\n",
		["teamName"] = "Sea Creatures Are Weird ",
		["minXP"] = 1,
	},
	[154927] = {
		{
			"BattlePet-0-00000E0BBD1B", -- [1]
			515, -- [2]
			282, -- [3]
			779, -- [4]
			339, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBCC3", -- [1]
			0, -- [2]
			779, -- [3]
			282, -- [4]
			844, -- [5]
		}, -- [2]
		{
			0, -- [1]
		}, -- [3]
		["tab"] = 6,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/14099\n\nStrategy added by DragonsAfterDark\n5 Rounds\n\nTurn 1: Flyby\nTurn 2: Thunderbolt\nTurn 3: Explode\nBring in your Mechanical Pandaren Dragonling\nTurn 4: Thunderbolt\nTurn 5: Explode\n",
		["teamName"] = "Unit 35",
		["minXP"] = 1,
	},
	[72290] = {
		{
			"BattlePet-0-00000E0BBD9A", -- [1]
			384, -- [2]
			204, -- [3]
			208, -- [4]
			116, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBE2D", -- [1]
			455, -- [2]
			389, -- [3]
			305, -- [4]
			1164, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 2,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/567\n\nTurn 1: Supercharge \nTurn 2: Call Lightning\nTurn 3: Switch to your Cogblade Raptor \nTurn 4: Exposed Wounds\nTurns 5+: Batter until Zao is dead\n",
		["teamName"] = "Zao, Calfling of Niuzao",
	},
	[128021] = {
		{
			"random:0", -- [1]
		}, -- [1]
		{
			"random:0", -- [1]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			1370, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [3]
		["tab"] = 5,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/1411\n\nStrategy added by Aranesh\nTurn 1: Pass - your first pet dies\nBring in Ikky\nTurn 1: Black Claw\nTurns 2+: Flock\n",
		["teamName"] = "Earseeker",
	},
	[66733] = {
		{
			"BattlePet-0-00000E0BBD1B", -- [1]
			777, -- [2]
			282, -- [3]
			334, -- [4]
			339, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBCE7", -- [1]
			0, -- [2]
			362, -- [3]
			593, -- [4]
			1152, -- [5]
		}, -- [2]
		{
			0, -- [1]
		}, -- [3]
		["tab"] = 3,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/70\n\nStrategy by Rendigar published on Warcraft Pets (https://www.warcraftpets.com/community/forum/viewtopic.php?f=3&t=7556#p57980).\n\n\n\nTurn 1: Missile \nTurn 2: Decoy \nTurns 3+: Missile until Woodcarver is dead \nLightstalker comes in \nTurn 1: Swap to Chrominius\nTurn 2: Howl \nTurn 3: Surge of Power – Lightstalker dies\nNeedleback comes in and kills Chrominius \nBring back in your Darkmoon Zeppelin\nTurn 1 : Missile \nTurn 2: Missile \nTurn 3: Decoy \nTurns 4+: Missile until Needleback is below 619 health \nExplode \nYour level pet enjoys the XP!\n",
		["teamName"] = "Mo'ruk",
		["minXP"] = 1,
	},
	[162465] = {
		{
			"BattlePet-0-00000E0BBF3E", -- [1]
			943, -- [2]
			786, -- [3]
			1762, -- [4]
			1963, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBCF3", -- [1]
			921, -- [2]
			0, -- [3]
			919, -- [4]
			1211, -- [5]
		}, -- [2]
		{
			0, -- [1]
		}, -- [3]
		["tab"] = 6,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/7987\n\nStrategy added by Vulpixie\nWorked well for me when I had to have the Shadowbarb Hatchling in the team.\nIkky with Black Claw and Flock is also an acceptable alternative to the Zandalari.\n\nThank you to DragonsAfterDark for fixing my script.\n\nTurn 1: Blistering Cold\nTurn 2: Chop\nTurn 3: BONESTORM\nTurn 4: Chop until Boneshard dies\nBring in your Zandalari Anklerender\nTurn 1: Black Claw\nTurn 2: Hunting Party\nTurn 8: Zandalari dies, Blistering Cold should finish off the battle with your level pet getting some XP\n",
		["teamName"] = "Dune Buggy",
		["minXP"] = 1,
	},
	[173324] = {
		{
			"BattlePet-0-00000E0BBCAD", -- [1]
			1002, -- [2]
			392, -- [3]
			985, -- [4]
			1320, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBD9A", -- [1]
			384, -- [2]
			204, -- [3]
			208, -- [4]
			116, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBD0F", -- [1]
			0, -- [2]
			256, -- [3]
			657, -- [4]
			538, -- [5]
		}, -- [3]
		["tab"] = 7,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/11027\n\nStrategy added by matarsaed#2362\nTurn 1: Make it Rain\nTurn 2: Extra Plating\nTurns 3-5: Inflation\nSpindler comes in\nTurn 1: your Lil' Bling should die here (if not - use Make it Rain)\nBring in your Tranquil Mechanical Yeti\nTurn 2: Supercharge\nTurn 3: Call Lightning\nTurn 4: Metal Fist\nRocko comes in\nTurn 1: Metal Fist\nUse Supercharge on CD but not when your Tranquil Mechanical Yeti died once\nMetal Fist until Tranquil Mechanical Yeti dies\nBring in your Scourged Whelpling\nTurn 1: Call Darkness\nTurn 2: Plagued Blood till end of fight\n",
		["teamName"] = "Eyegor's Special Friends",
	},
	[105250] = {
		{
			"BattlePet-0-00000E0BBD2E", -- [1]
			122, -- [2]
			489, -- [3]
			589, -- [4]
			1165, -- [5]
		}, -- [1]
		{
			0, -- [1]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBDD5", -- [1]
			504, -- [2]
			0, -- [3]
			0, -- [4]
			1416, -- [5]
		}, -- [3]
		["tab"] = 5,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/4109\n\nStrategy added by morazor#2212\nTested with a PB and a PP Nexus Whelpling. Be sure to swap in leveling pet when Convinction will cast Dark Rebirth, swap back in your first pet and let it die, so that you can kill Convinction with your third pet and start fighting Dignity with your flyer already in.\n\nAs a third pet, you can use anything that can reliably kill Dignity in 3 turns, to avoid him casting Tidal Wave. Any flyer with Alpha Strike and enough power should do.\n\nYou can level up anything that can survive Sunlight on the first turn: any pet with > 158 HP or any critter, mechanical or magic pet.\n\nTurn 1: Arcane Storm\nTurn 2: Mana Surge\nTurn 3: Mana Surge continues, Beauty should die\nConviction comes in\nTurn 4: Mana Surge continues\nTurn 5: Tail Sweep, Conviction should drop under 380 HPs. If it doesn't, use Arcane Storm on the next turn\nTurn 6: Swap to your Level Pet, Conviction should cast Dark Rebirth\nTurn 7: Swap to your Nexus Whelpling. If it doesn't die right away, pass until it dies.\nBring in your Teroclaw Hatchling\nTurn 8: Alpha Strike, Conviction should die\nDignity comes in\nTurn 9: Alpha Strike\nTurn 10: Alpha Strike\nTurn 11: Alpha Strike, Dignity should die before casting Tidal Wave\n",
		["teamName"] = "The Master of Pets",
		["minXP"] = 3,
		["minHP"] = 238,
	},
	[99150] = {
		{
			"BattlePet-0-00000E0BBF21", -- [1]
			1773, -- [2]
			1758, -- [3]
			518, -- [4]
			1975, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBD1B", -- [1]
			777, -- [2]
			282, -- [3]
			334, -- [4]
			339, -- [5]
		}, -- [2]
		{
			0, -- [1]
		}, -- [3]
		["tab"] = 5,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/5154\n\nStrategy added by Shenk\nThere is a very small chance this strategy can fail to enemy crits or low damage rolls.\n\nTurn 1: Ironskin\nTurn 2-3: Falcosaur Swarm!\nTurn 4: Predatory Strike. Gulp dies\nEgcellent comes in\nTurn 1-2: Falcosaur Swarm!\nTurn 3: Ironskin\nTurn 4-5: Falcosaur Swarm!\nRed Wire comes in\nTurn 1: Falcosaur Swarm!. Direbeak Hatchling dies\nBring in your Darkmoon Zeppelin\nTurn 1: Missile until Red Wire is at <=324 health. At that point use Decoy. Red Wire dies to Armageddon\nEgcellent comes in\nTurn 1: Explode when Egcellent has <=618 health, otherwise Missile\n",
		["teamName"] = "Tiny Poacher, Tiny Animals",
		["minXP"] = 1,
	},
	[99182] = {
		{
			"BattlePet-0-00000E8249DF", -- [1]
			421, -- [2]
			440, -- [3]
			273, -- [4]
			1631, -- [5]
		}, -- [1]
		{
			0, -- [1]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBD0F", -- [1]
			122, -- [2]
			256, -- [3]
			668, -- [4]
			538, -- [5]
		}, -- [3]
		["tab"] = 5,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/2288\n\nStrategy added by Lyseria\nI originally posted this on Wowhead (https://www.wowhead.com/quest=40298/fight-night-sir-galveston#comments:id=2558524) a couple of months ago, thought I should add it here as well. Very reliable.\n\nUse H/H Scourged Whelpling!!\n\nI don't have a P/S Scourged Whelpling to test this with, so I can't confirm if it works for that breed. I personally don't think it can. Feel free to try though and tell me if it does.\n\nTurn 1: Wish\nTurn 2: Arcane Blast\nTurn 3: Evanescence\nTurn 4-6: Arcane Blast x3 (Coach dies)\nSir Murkeston comes in\nTurn 7: Wish\nTurn 8: Arcane Blast\nTurn 9: Evanescence\nTurn 10: Swap to your Scourged Whelpling\nTurn 11: Call Darkness\nTurn 12-14: Dreadful Breath\nTurn 15+: Tail Sweep until Greatest Foe dies.\nSir Murkeston comes in\nTurn 1: Tail Sweep until Scourged Whelpling dies. (There's a rare instance where Scourged Whelpling can kill Sir Murkeston. Start passing if he goes under 400hp)\nBring in your Level Pet\nBring in your Hyjal Wisp\nTurn 1: Wish\nTurn 2: Evanescence\nTurn 3+: Arcane Blast until Sir Murkeston dies\n",
		["teamName"] = "Fight Night: Sir Galveston",
		["minXP"] = 1,
	},
	[173133] = {
		{
			"BattlePet-0-00000E0BBDB3", -- [1]
			459, -- [2]
			0, -- [3]
			208, -- [4]
			1387, -- [5]
		}, -- [1]
		{
			"random:0", -- [1]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 7,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/11028\n\nStrategy added by bios\nTurn 1: Wind-Up\nTurn 2: Supercharge\nTurn 3: Wind-Up\nTurn 4: Wind-Up\nTurn 5: Wind-Up\n",
		["teamName"] = "Mega Bite",
		["minXP"] = 1,
	},
	[162466] = {
		{
			"BattlePet-0-00000E0BBD0C", -- [1]
			0, -- [2]
			218, -- [3]
			652, -- [4]
			1238, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBCAD", -- [1]
			1002, -- [2]
			0, -- [3]
			985, -- [4]
			1320, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBCC3", -- [1]
			115, -- [2]
			779, -- [3]
			334, -- [4]
			844, -- [5]
		}, -- [3]
		["tab"] = 6,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/7133\n\nStrategy added by DragonsAfterDark\nTurn 1: Curse of Doom\nTurn 2: Haunt\nBring in your Lil' Bling\nTurn 1-3: Inflation\nTurn 4: Make it Rain\nTurn 5+: Inflation\n\nIf needed: \nBring in your Mechanical Pandaren Dragonling\nTurn 1+: Breath\n",
		["teamName"] = "Watch Where You Step",
	},
	[154929] = {
		{
			"BattlePet-0-00000E0BBF3E", -- [1]
			943, -- [2]
			786, -- [3]
			0, -- [4]
			1963, -- [5]
		}, -- [1]
		{
			0, -- [1]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBCF3", -- [1]
			921, -- [2]
			0, -- [3]
			919, -- [4]
			1211, -- [5]
		}, -- [3]
		["tab"] = 6,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/8948\n\nStrategy added by Tinlar#1408\nThank you to shpungout for the suggestion on how to streamline the strategy\n\nTurn 1: Blistering Cold\nTurn 2: Chop\nTurn 3: Swap to your Level Pet\nTurn 4: Swap to your Zandalari Anklerender\nTurn 5: Black Claw\nTurns 6-7: Hunting Party\n",
		["teamName"] = "Unit 17",
		["minXP"] = 1,
	},
	[87110] = {
		{
			"BattlePet-0-00002107EE9F", -- [1]
			447, -- [2]
			2356, -- [3]
			1954, -- [4]
			2842, -- [5]
		}, -- [1]
		{
			0, -- [1]
		}, -- [2]
		{
			"BattlePet-0-00002105826C", -- [1]
			1093, -- [2]
			2298, -- [3]
			0, -- [4]
			2959, -- [5]
		}, -- [3]
		["tab"] = 4,
		["notes"] = "Strategy added by Mutanis\nTime: 01:25 (10 rounds)\n\nTurn 1: Corrosion (Gladiator Deathy comes in)\nTurn 2: Poison Protocol\nTurn 3: Void Nova\nTurn 4: Swap to your Level Pet (stunned)\nTurn 5: Swap to your Anomalus\nTurn 6: Corrosion\nBring in your Micromancer\nTurn 7: Raise Ally\nTurns 8-10: Dead Man's Party\n",
		["teamName"] = "Tarr the Terrible",
		["minHP"] = 62,
	},
	[128022] = {
		{
			"BattlePet-0-00000E0BBD0C", -- [1]
			210, -- [2]
			218, -- [3]
			321, -- [4]
			1238, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			1370, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 5,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/1435\n\nStrategy added by Aranesh\nTurn 1: Curse of Doom\nTurn 2: Unholy Ascension\nBring in Ikky\nTurn 1: Black Claw\nTurns 2+: Flock\n",
		["teamName"] = "Pilfer",
	},
	[66734] = {
		{
			"BattlePet-0-00000E0BBD49", -- [1]
			118, -- [2]
			230, -- [3]
			297, -- [4]
			383, -- [5]
		}, -- [1]
		{
			0, -- [1]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBD09", -- [1]
			0, -- [2]
			646, -- [3]
			209, -- [4]
			338, -- [5]
		}, -- [3]
		["tab"] = 3,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/455\n\nOld as pet battles themselves, credit uncertain.\n\nTurn 1: Pump\nTurn 2: Cleansing Rain\nTurn 3+: Water Jet until Siren dies\nToothbreaker comes in\nTurn 1: Pump\nTurn 2: Cleansing Rain\nTurn 3: Pump\nTurn 4+: Water Jet until Toothbreaker dies\nBrood of Mothallus comes in\nTurn 1: Pump\nTurn 2+: Water Jet until Aqua Strider dies\nBring in your Level Pet\nTurn 1: Swap to your Darkmoon Tonk\nTurn 2: Shock and Awe\nTurn 3: Ion Cannon\n",
		["teamName"] = "Farmer Nishi",
		["minXP"] = 2,
		["minHP"] = 248,
		["allowMM"] = true,
	},
	[201878] = {
		{
			"BattlePet-0-00000E0BBE44", -- [1]
			803, -- [2]
			0, -- [3]
			423, -- [4]
			1581, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBD04", -- [1]
			0, -- [2]
			312, -- [3]
			163, -- [4]
			641, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBD22", -- [1]
			221, -- [2]
			416, -- [3]
			481, -- [4]
			1166, -- [5]
		}, -- [3]
		["tab"] = 8,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/18732\n\nStrategy added by trogdor\nNot the fastest, but I didn't have some of the pets from other strats. This is a 100% wild pet strat, so easy on the AH budget!\n\nTurn 1: Rip\nTurn 2: Blood in the Water\nDrakeula comes in\nTurn 1: Rip\nBring in your Arctic Hare\nTurn 2: Dodge\nTurns 3-5: Stampede\nTurn 6: Pass while Drakeula has its \"undead\" round\nYu'shor comes in\nTurns 1-2: Stampede\nBring in your Kun-Lai Runt\nTurn 3: Frost Shock\nTurn 4: Deep Freeze\nTurn 5: Takedown\n",
		["teamName"] = "Paws of Thunder",
	},
	[68555] = {
		{
			"BattlePet-0-00000E0BBCF3", -- [1]
			921, -- [2]
			364, -- [3]
			919, -- [4]
			1211, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			184, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 3,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/6848\n\nStrategy added by DarkShade#2783\nSugested by Adalsteinn here https://www.wow-petguide.com/index.php?Strategy=255\n\nTD Script suggested by ultharwe on same page, I just modified to include IDs\n\nWorks in Shadowlands.\n\nTurn 1: Black Claw\nTurns 2-3: Hunting Party\nTurn 4: Black Claw\nBring in your Ikky\nTurns 1-3: Flock\n",
		["teamName"] = "Ka'wi the Gorger",
		["minXP"] = 1,
	},
	[94648] = {
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			184, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDEE", -- [1]
			406, -- [2]
			453, -- [3]
			490, -- [4]
			1155, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBDC4", -- [1]
			115, -- [2]
			611, -- [3]
			612, -- [4]
			1167, -- [5]
		}, -- [3]
		["tab"] = 4,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/710\n\n50% chance to work - but if it does, it's beautiful\n\nTurn 1: Black Claw\nTurns 2-4: Flock - if Haymaker hits (50% risk), you have to restart. Otherwise Netherfist dies here.\nAn enemey pet comes in\nContinue using Black Claw followed by Flock. Often Ikky solos the fight.\nIf Ikky dies, bring in one of your backup pets and clean up.\n",
		["teamName"] = "Netherfist",
	},
	[173263] = {
		{
			"BattlePet-0-00000E0BBCAD", -- [1]
			1002, -- [2]
			392, -- [3]
			985, -- [4]
			1320, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDB3", -- [1]
			459, -- [2]
			566, -- [3]
			208, -- [4]
			1387, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBEBE", -- [1]
			228, -- [2]
			572, -- [3]
			934, -- [4]
			1934, -- [5]
		}, -- [3]
		["tab"] = 7,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/12011\n\nStrategy added by iklad\nBring in your Lil' Bling\nTurn 1: Extra Plating\nTurn 2: Make it Rain\nTurns 3-5: Inflation\nTurn 6: Extra Plating\nTurn 7: Make it Rain\nTurns 8-10: Inflation\nBring in your Iron Starlette\nTurn 11: Wind-Up\nTurn 12: Supercharge\nTurn 13: Wind-Up\nBring in your Benax\nTurn 14: Bubble\nTurn 15: Mudslide\nTurn 16: Tongue Lash\nTurn 17: Tongue Lash\n",
		["teamName"] = "Extra Pieces",
	},
	[128023] = {
		{
			"BattlePet-0-00000E0BBD0C", -- [1]
			0, -- [2]
			218, -- [3]
			321, -- [4]
			1238, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			0, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 5,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/1381\n\nStrategy added by solidstate77#1969\nTurn 1: Curse of Doom\nTurn 2: Unholy Ascension\nBring in Ikky\nTurn 1: Black Claw\nTurns 2+: Flock\n",
		["teamName"] = "Minixis",
		["minXP"] = 1,
	},
	[162469] = {
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			0, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBD8E", -- [1]
			501, -- [2]
			172, -- [3]
			179, -- [4]
			519, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 6,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/7623\n\nStrategy added by Lazey\n*** 9.0.2 approved ***\n\nWith the  (ID: 542) nerf I had to add a fifth round.\n\nTurn 1: Black Claw\nTurn 2: Flock (Fel Flame is forced into battle)\nTurn 3: Scorched Earth\nTurn 4 : Conflagrate\nTurn 5: Flame Breath\n(If needed, bring back Ikky and finish with a standard attack)\n",
		["teamName"] = "Brain Tickling",
		["minXP"] = 1,
	},
	[140880] = {
		{
			"BattlePet-0-00000E0BBDC4", -- [1]
			525, -- [2]
			597, -- [3]
			598, -- [4]
			1167, -- [5]
		}, -- [1]
		{
			"random:0", -- [1]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 6,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/5357\n\nStrategy added by Runisco\nPrio 1: Emerald Presence up. Use when 1 turn left\nPrio 2: Emerald Dream when health < 750\nPrio 3: Standby. There is no point in attacking, the bees stinging is cooldown based\nAs soon as one bee uses sting and dies, the others will. Your whelp should survive all 3.\n",
		["teamName"] = "What's the Buzz?",
		["minXP"] = 25,
	},
	[85419] = {
		{
			"BattlePet-0-00000E0BBDB3", -- [1]
			459, -- [2]
			0, -- [3]
			282, -- [4]
			1387, -- [5]
		}, -- [1]
		{
			0, -- [1]
		}, -- [2]
		{
			0, -- [1]
		}, -- [3]
		["tab"] = 4,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/8545\n\nStrategy added by Phil\nTurn 1: Wind-Up\nTurn 2: Wind-Up\nTurn 3: Explode\nLevel 1 Pets get 160xp each whil wearing Safari Hat\n",
		["teamName"] = "Gnawface",
		["minXP"] = 1,
	},
	[94649] = {
		{
			"BattlePet-0-00000E0BBD0C", -- [1]
			422, -- [2]
			218, -- [3]
			321, -- [4]
			1238, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBD51", -- [1]
			499, -- [2]
			362, -- [3]
			665, -- [4]
			1146, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBDC4", -- [1]
			525, -- [2]
			597, -- [3]
			598, -- [4]
			1167, -- [5]
		}, -- [3]
		["tab"] = 4,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/590\n\nTurn 1: Curse of Doom\nTurn 2: Pass\nTurn 3: Pass\nTurn 4: Unholy Ascension\nBring in your Stitched Pup\nTurn 3: Howl - Skrillix dies\nTurn 4+: Diseased Bite until your Pup is done\nBring in your Tanaan Pet\nUse this pet to clean up :-)\nGreat choices are an Anubisath Idol or an Emerald Proto-Whelp.\n",
		["teamName"] = "Skrillix",
	},
	[128024] = {
		{
			"BattlePet-0-00000E0BBD0C", -- [1]
			0, -- [2]
			218, -- [3]
			321, -- [4]
			1238, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			0, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 5,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/1395\n\nStrategy added by Aranesh\nTurn 1: Curse of Doom\nTurn 2: Unholy Ascension\nBring in Ikky\nTurn 1: Black Claw\nTurns 2+: Flock\n",
		["teamName"] = "One-of-Many",
		["minXP"] = 1,
	},
	[196069] = {
		{
			"BattlePet-0-00000E0BBDB3", -- [1]
			459, -- [2]
			566, -- [3]
			208, -- [4]
			1387, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			1370, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 8,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/16576\n\nStrategy added by Zeeda#1762\nMade in beta so things could change\n\nMarked as HP only but I could work with other breeds.\n\nTurn 1: Wind-Up\nTurn 2: Supercharge\nTurn 3: Wind-Up\nAnubisath Idol should be dead\nTurn 4: Powerball\nTurn 5: Powerball\nTurn 6: Wind-Up\nTurn 7: Supercharge\nTurn 8: Wind-Up\nTurn 9: Powerball if Iron Starlette is still alive\nIron Starlette dies. Bring in Ikky\nSavage Talon if Mechanical Pandaren Dragonling is still alive\nTurn 1: Black Claw\nTurns 2-4: Flock\n",
		["teamName"] = "The Grand Master",
		["minXP"] = 25,
	},
	[105093] = {
		{
			"BattlePet-0-00000E0BBE55", -- [1]
			509, -- [2]
			511, -- [3]
			310, -- [4]
			746, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBD13", -- [1]
			118, -- [2]
			564, -- [3]
			513, -- [4]
			868, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBE6D", -- [1]
			803, -- [2]
			423, -- [3]
			538, -- [4]
			1179, -- [5]
		}, -- [3]
		["tab"] = 5,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/14453\n\nStrategy added by kamraten\nI've worked with this setup for almost two hours to reassure that it works 100% of the times. So please be kind with your judgement, I know it's fairly long but it works. \n\nTurn 1: Use Shell Shield (Restart if Cackling Flame crits his Scorched Earth)\nTurn 2: Renewing Mists\nTurn 3: Surge\nTurn 4: Surge\nTurn 5: Surge\nTurn 6: Surge and Cackling Flame is dead\nTurn 7: Surge (Your pet will die and Devouring Blaze will heal, but it's according to plan)\nTurn 8: Choose Pandaran Water Spirit and use Whirlpool\nTurn 9: Dive\nTurn 10: Water Jet (and Devouring Blaze will die)\nTurn 11: Whirlpool\nTurn 12: Water Jet\nTurn 13: Water Jet\nTurn 14: Water Jet\nTurn 15: Whirlpool\nTurn 16: Dive\nTurn 17: Water Jet\nTurn 18: Whirlpool (and your Pandaren Water Spirit will die)\nTurn 19: Choose Electrified Razortooth & use Rip\nTurn 20: Blood in the Water \n",
		["teamName"] = "Only Pets Can Prevent Forest Fires",
	},
	[162471] = {
		{
			"BattlePet-0-00000E0BBEC8", -- [1]
			525, -- [2]
			1087, -- [3]
			598, -- [4]
			1722, -- [5]
		}, -- [1]
		{
			"random:0", -- [1]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 6,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/8497\n\nStrategy added by norng\n7~10 rounds.\n\nTurn 1: Toxic Skin\nTurns 2-4: Emerald Dream\nTurn 5: Emerald Bite\nTurn 6: Emerald Bite\nTurn 7: Repeat Turn 1~6\n",
		["teamName"] = "Flight of the Vil'thik",
		["minXP"] = 25,
	},
	[85420] = {
		{
			"BattlePet-0-00000E0BBDB3", -- [1]
			459, -- [2]
			566, -- [3]
			282, -- [4]
			1387, -- [5]
		}, -- [1]
		{
			0, -- [1]
		}, -- [2]
		{
			0, -- [1]
		}, -- [3]
		["tab"] = 4,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/8544\n\nStrategy added by Phil\nTurn 1: Wind-Up\nTurn 2: Powerball\nTurn 3: Powerball\nTurn 4: Powerball\nTurn 5: Wind-Up\nTurn 6: Explode make sure Carrotus has about 427 hp or less else Powerball first\nLevel 1 pets get 160 xp each (wearing Safari Hat)\n",
		["teamName"] = "Carrotus Maximus",
		["minXP"] = 1,
	},
	[94650] = {
		{
			"BattlePet-0-00000E0BBD0C", -- [1]
			422, -- [2]
			218, -- [3]
			652, -- [4]
			1238, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			1370, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBDC4", -- [1]
			525, -- [2]
			597, -- [3]
			598, -- [4]
			1167, -- [5]
		}, -- [3]
		["tab"] = 4,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/1239\n\nStrategy added by Aranesh\nTurn 1: Curse of Doom\nTurn 2: Haunt\nBring in Ikky\nTurn 3: Black Claw\nTurn 4: Flock\nTurn 5+: Savage Talon until Ikky dies\nBring in Emerald Proto-Whelp\nTurns 1-3: Emerald Dream\nTurn 4: Emerald Presence\nTurns 5+: Emerald Bite until the last pet is dead, keep Emerald Presence active.\n",
		["teamName"] = "Defiled Earth",
	},
	[142096] = {
		{
			"BattlePet-0-00000E0BBD1B", -- [1]
			777, -- [2]
			647, -- [3]
			334, -- [4]
			339, -- [5]
		}, -- [1]
		{
			0, -- [1]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBD2E", -- [1]
			122, -- [2]
			489, -- [3]
			589, -- [4]
			1165, -- [5]
		}, -- [3]
		["tab"] = 6,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/1804\n\nStrategy added by Lazey\nKaraga:4AOG:112CAJ:ZL:122414D:\n\nTurn 1: Bombing Run\nTurn 2: Missile\nTurn 3: Missile\nTurn 4: Decoy\nTurn 5: Bombing Run when Lazy has 219HP or less, otherwise Missile.\nLazy dies. Spokes comes in.\nTurn 6: Missile. Darkmoon Zeppelin dies. Bring in your Level Pet\nSwap to your Nexus Whelpling\nvs. Spokes and Skeeto\nPrio 1: Arcane Storm\nPrio 2: Mana Surge\nPrio 3: Tail Sweep\n",
		["teamName"] = "Critters are Friends, Not Food",
		["minXP"] = 1,
	},
	[202458] = {
		{
			"BattlePet-0-00000E0BBDB3", -- [1]
			459, -- [2]
			566, -- [3]
			208, -- [4]
			1387, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBCC3", -- [1]
			115, -- [2]
			779, -- [3]
			282, -- [4]
			844, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBE04", -- [1]
			422, -- [2]
			212, -- [3]
			772, -- [4]
			1628, -- [5]
		}, -- [3]
		["tab"] = 8,
		["notes"] = "1",
		["teamName"] = "They're Full of Stars!",
	},
	[141969] = {
		{
			"BattlePet-0-00000E0BBD0C", -- [1]
			210, -- [2]
			218, -- [3]
			652, -- [4]
			1238, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			1370, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBF21", -- [1]
			1773, -- [2]
			1758, -- [3]
			518, -- [4]
			1975, -- [5]
		}, -- [3]
		["tab"] = 6,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/1673\n\nStrategy added by Gershuun#1131\nTurn 1: Curse of Doom\nTurn 2: Haunt\nBring in your Ikky\nTurn 1: Black Claw\nTurn 2: Flock\nTurn 3: Flock\nTurn 4: Flock\nTurn 5: Pass\nTurn 6: Savage Talon\nTurn 7: Black Claw (Ikky dies)\nBring in your Direbeak Hatchling\nTurn 1: Falcosaur Swarm!\n",
		["teamName"] = "What Do You Mean, Mind Controlling Plants?",
	},
	[68462] = {
		{
			"BattlePet-0-00000E0BBDDE", -- [1]
			112, -- [2]
			0, -- [3]
			170, -- [4]
			1468, -- [5]
		}, -- [1]
		{
			0, -- [1]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBEBE", -- [1]
			118, -- [2]
			232, -- [3]
			934, -- [4]
			1934, -- [5]
		}, -- [3]
		["tab"] = 3,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/2786\n\nStrategy added by CrazyFluffy#21258\nLevel Pet:\nElemental needs 706 health\nMagic needs 314 health\nOther pets need 471\n\nTurn 1: Peck\nTurn 2: Peck\nTurn 3+4: Lift-Off\nTurn 5: Peck - Enemy Marley dies\nTiptoe comes in\nTurn 1+: Peck to enemy Tiptoe dies\nPandaren Water Spirit comes in\nTurn 1+: Peck to your Bloodbeak dies\nBring in your Level Pet\nSwap to your Benax\nTurn 1+: Water Jet to enemy Pandaren Water Spirit dies\n",
		["teamName"] = "Flowing Pandaren Spirit",
		["minXP"] = 7,
		["minHP"] = 707,
	},
	[68558] = {
		{
			"BattlePet-0-00000E0BBCA9", -- [1]
			384, -- [2]
			0, -- [3]
			293, -- [4]
			277, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBCE7", -- [1]
			0, -- [2]
			362, -- [3]
			593, -- [4]
			1152, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 3,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/289\n\nTurn 1: Launch Rocket\nTurn 2: Launch Rocket\nTurn 3: Launch Rocket\nTurn 4: Launch Rocket\nTurn 5: Metal Fist until Clockwork Gnome dies\nBring in Chrominius\nTurn 1: Howl\nTurn 2: Surge of Power\n",
		["teamName"] = "Gorespine",
		["minXP"] = 1,
	},
	[196264] = {
		{
			"BattlePet-0-00002107EE9F", -- [1]
			447, -- [2]
			2356, -- [3]
			1954, -- [4]
			2842, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBD1B", -- [1]
			777, -- [2]
			282, -- [3]
			334, -- [4]
			339, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBCE7", -- [1]
			110, -- [2]
			362, -- [3]
			593, -- [4]
			1152, -- [5]
		}, -- [3]
		["tab"] = 8,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/17348\n\nStrategy added by Pleodonis\nTurn 1: Corrosion\nTurn 2: Void Nova\nTurn 3: Poison Protocol\nTurn 4: Corrosion\nTurn 5: Pass\nTurn 6: Void Nova\nAnomalus dies.  Darkmoon Zeppelin comes in\nTurn 7: Explode\nBloodbiter comes in\nBring in your Chrominius\nTurn 8: Bite\nTina comes in\nTurn 9: Howl\nTurn 10: Surge of Power\n",
		["teamName"] = "The Terrible Three",
	},
	[85517] = {
		{
			"BattlePet-0-00000E0BBCE7", -- [1]
			110, -- [2]
			362, -- [3]
			593, -- [4]
			1152, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDCA", -- [1]
			1372, -- [2]
			204, -- [3]
			1380, -- [4]
			1541, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBCC3", -- [1]
			115, -- [2]
			779, -- [3]
			334, -- [4]
			844, -- [5]
		}, -- [3]
		["tab"] = 4,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/626\n\nTurn 1: Howl\nTurn 2: Surge of Power - Mr. Terrible dies\nBring in your Hydraling\nTurn 1: Shell Armor\nTurns 2+: Deep Bite until Carroteye is dead\nSloppus comes in\nTurns 1+: Deep Bite until Hydraling dies\nBring in your Mechanical Pandaren Dragonling\nTurn 1: Decoy\nTurn 2: Thunderbolt\nTurns 3+: Breath until Sloppus is dead\n",
		["teamName"] = "Mr. Terrible, Carroteye and Sloppus",
	},
	[66738] = {
		{
			"BattlePet-0-00000E0BBD92", -- [1]
			110, -- [2]
			595, -- [3]
			536, -- [4]
			1266, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBEE1", -- [1]
			1079, -- [2]
			1080, -- [3]
			1076, -- [4]
			1349, -- [5]
		}, -- [2]
		{
			0, -- [1]
		}, -- [3]
		["tab"] = 3,
		["notes"] = "Strategy added by Shenk\nTurn 1: Bite\nTurn 2: Prowl\nTurn 3: Moonfire. Piqua dies\nLapin comes in\nTurn 1+: Bite until Xu-Fu, Cub of Xuen dies\nBring in your Level Pet\nTurn 1: Swap to your Rotten Little Helper\nTurn 2: Booby-Trapped Presents\nTurn 3+: Club until Lapin dies\nBleat comes in\nTurn 1: Greench's Gift\n",
		["teamName"] = "Courageous Yon",
	},
	[117934] = {
		{
			"BattlePet-0-00000E0BBE55", -- [1]
			509, -- [2]
			511, -- [3]
			310, -- [4]
			746, -- [5]
		}, -- [1]
		{
			0, -- [1]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBC65", -- [1]
			119, -- [2]
			312, -- [3]
			159, -- [4]
			479, -- [5]
		}, -- [3]
		["tab"] = 5,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/998\n\nStrategy added by Aranesh\nTurn 1: Shell Shield\nTurn 2: Renewing Mists\nTurn 3: Surge\nTurn 4: Surge\nTurn 5: Surge\nTurn 6: Renewing Mists\nTurn 7: Shell Shield\nTurn 8+: Surge until Living Pool is dead\nTia Mia and Larry come in\nTurn 1: Swap to your Level Pet\nTurn 2: Swap to your Rabbit\nTurn 3: Scratch\nTurn 4: Dodge\nTurn 5: Scratch\nTurn 6: Scratch\nTurn 7: Scratch\nTurn 8+9: Burrow\nTurn 10+: If necessary, Dodge another Whirlpool, otherwise use Scratch until Tia Mia and Larry are dead\nRock Lobster comes in\nTurn 1+: Scratch until your Rabbit dies\nBring back your Emperor Crab\nTurn 1: Shell Shield\nTurn 2: Renewing Mists\nTurn 3+: Keep Shell Shield and Renewing Mists active and use Surge to finish the fight.\n",
		["teamName"] = "Illidari Masters: Sissix",
	},
	[68463] = {
		{
			"BattlePet-0-00000E0BBDEE", -- [1]
			406, -- [2]
			453, -- [3]
			490, -- [4]
			1155, -- [5]
		}, -- [1]
		{
			0, -- [1]
		}, -- [2]
		{
			0, -- [1]
		}, -- [3]
		["tab"] = 3,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/28\n\nTurn 1: Crush\nTurn 2: Sandstorm\nTurn 3: Deflection\nTurns 4+: Crush until Crimson is dead (refresh Sandstorm if it comes off cooldown)\nPandaren Fire Spirit comes in\nTurn 1: Deflection (NOTE: Unfortunately if you get a crit on Crimson then Deflection will not be available and you will have to restart the fight)\nTurns 2+: Keep Sandstorm on cooldown and use Crush in between.\nImportant: When Deflection comes off cooldown, cast Crush or Sandstorm, then use Deflection again.\nPandaren Fire Spirit should die shortly after the second Deflection. \nGlowy comes in\nUse Crush until Sandstorm comes off cooldown\nThen use Sandstorm\nSwap in Level-Pet 1\nSwap in Level-Pet 2 if you want\nSwap back to Anubisath Idol\nSame as before, Sandstorm on cooldown and Crush in between until Glowy dies.\n",
		["teamName"] = "Burning Pandaren Spirit",
		["minXP"] = 5,
	},
	[68559] = {
		{
			"BattlePet-0-00000E0BBF3E", -- [1]
			943, -- [2]
			786, -- [3]
			1762, -- [4]
			1963, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBCF3", -- [1]
			921, -- [2]
			0, -- [3]
			919, -- [4]
			1211, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBD2F", -- [1]
			921, -- [2]
			919, -- [3]
			0, -- [4]
			1180, -- [5]
		}, -- [3]
		["tab"] = 3,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/7112\n\nStrategy added by Kroan#2404\nDidn't have any luck with other strategies, so returned to the Boneshard + Blackclaw strat that is used for other legendaries. Fight is very random, but tried it a few times and always worked out.\n\nTurn 1: Blistering Cold\nTurn 2: BONESTORM\nTurn 3: Blistering Cold / Chop until Boneshard dies\nBoneshard dies. Bring in Zandalari Anklerender\nTurn 4+: Black Claw\nHunting Party\nTurn 6: If first Zandalari dies, bring in second and continue\n",
		["teamName"] = "No-No",
	},
	[66739] = {
		{
			"BattlePet-0-00000E0BBD0E", -- [1]
			421, -- [2]
			440, -- [3]
			595, -- [4]
			557, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBD1B", -- [1]
			777, -- [2]
			282, -- [3]
			334, -- [4]
			339, -- [5]
		}, -- [2]
		{
			0, -- [1]
		}, -- [3]
		["minHP"] = 300,
		["notes"] = "Strategy added by unknown\nChanged the strategy so it works with level 1 pets too -Shenk\n\nTurn 1: Arcane Blast\nTurn 2: Moonfire\nTurn 3: Evanescence\nTurns 4+: Arcane Blast until Crusher dies\nPounder comes in\nTurn 1: Evanescence\nTurns 2-5: 4x Arcane Blast\nTurn 6: Evanescence\nTurn 7+: Arcane Blast until Pounder dies\nMutilator comes in\nTurn 1+: Arcane Blast until Sprite Darter Hatchling dies\nBring in your Darkmoon Zeppelin\nTurns 1+: Missile until Mutilator has 618 or less health\nThen:: Explode\n",
		["teamName"] = "Wastewalker Shu",
		["tab"] = 3,
	},
	[197417] = {
		{
			"BattlePet-0-00000E0BBD1B", -- [1]
			515, -- [2]
			282, -- [3]
			0, -- [4]
			339, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBCC3", -- [1]
			115, -- [2]
			779, -- [3]
			282, -- [4]
			844, -- [5]
		}, -- [2]
		{
			"random:2", -- [1]
		}, -- [3]
		["tab"] = 8,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/16472\n\nStrategy added by DragonsAfterDark\nTurn 1: Flyby\nTurn 2: Explode\nBring in your Mechanical Pandaren Dragonling\nTurn 3: Breath\nTurn 4: Breath\nTurn 5: Thunderbolt\nTurn 6: Explode\nClean up with Dragonkin pet as needed\n",
		["teamName"] = "Mini Manafiend Melee",
		["minXP"] = 25,
	},
	[68464] = {
		{
			"BattlePet-0-00000E0BBCE7", -- [1]
			299, -- [2]
			611, -- [3]
			593, -- [4]
			1152, -- [5]
		}, -- [1]
		{
			0, -- [1]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBD2E", -- [1]
			122, -- [2]
			489, -- [3]
			589, -- [4]
			1165, -- [5]
		}, -- [3]
		["tab"] = 3,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/233\n\nTurns 1+: Use Ancient Blessing on cooldown, otherwise Arcane Explosion or Pass if you are stunned until Chrominius dies\nBring in your Level Pet\nTurn 1: Swap to your Nexus Whelpling\nTurn 2: Arcane Storm\nTurns 3+: Mana Surge\n",
		["teamName"] = "Whispering Pandaren Spirit",
	},
	[68560] = {
		{
			"BattlePet-0-00000E0BBDB3", -- [1]
			459, -- [2]
			0, -- [3]
			208, -- [4]
			1387, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBD1B", -- [1]
			777, -- [2]
			282, -- [3]
			334, -- [4]
			339, -- [5]
		}, -- [2]
		{
			0, -- [1]
		}, -- [3]
		["tab"] = 3,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/4725\n\nStrategy added by Kurasu#2861\nTurn 1: Wind-Up\nTurn 2: Supercharge\nTurn 3: Wind-Up\nTurn 4: Use any basic attack until Iron Starlette dies.\nBring in your Darkmoon Zeppelin\nTurn 1+: If enemy is not below 614 health, Decoy and Missile until it is. \nIf enemy is below 614 health, Explode.\nLeveling pet gets all the XP.\n",
		["teamName"] = "Greyhoof",
		["minXP"] = 1,
	},
	[139987] = {
		{
			"BattlePet-0-00000E0BBD0C", -- [1]
			0, -- [2]
			218, -- [3]
			652, -- [4]
			1238, -- [5]
		}, -- [1]
		{
			0, -- [1]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBCAD", -- [1]
			1002, -- [2]
			0, -- [3]
			985, -- [4]
			1320, -- [5]
		}, -- [3]
		["tab"] = 6,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/2287\n\nStrategy added by gsanta\nI was able to bring a Level 1 pet with no damage taken.\n\nTurn 1: Curse of Doom\nTurn 2: Haunt\nTurn 3: Bring in your Level Pet\nTurn 4: Swap to your Lil' Bling\nTurn 5: Make it Rain\nTurn 6+: Inflation\n",
		["teamName"] = "This Little Piggy Has Sharp Tusks",
		["minXP"] = 1,
	},
	[197336] = {
		{
			"BattlePet-0-00000E0BBDD3", -- [1]
			1233, -- [2]
			752, -- [3]
			595, -- [4]
			1567, -- [5]
		}, -- [1]
		{
			0, -- [1]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBCE7", -- [1]
			299, -- [2]
			362, -- [3]
			593, -- [4]
			1152, -- [5]
		}, -- [3]
		["tab"] = 4,
		["notes"] = "Strategy added by StupidSushi#2473\nEnyobon comes in\nPriority 1: Moonfire (on cooldown)\nPriority 2: Soulrush (on cooldown)\nPriority 3: Dark Talon (otherwise)\nBring in your Level Pet (if Sentinel's Companion dies)\nTurn 1: Swap to your Chrominius\nTurn 2: Surge of Power\n",
		["teamName"] = "The Oldest Dragonfly",
		["maxHP"] = 300,
	},
	[105512] = {
		{
			"BattlePet-0-00000E0BBE91", -- [1]
			228, -- [2]
			232, -- [3]
			934, -- [4]
			1441, -- [5]
		}, -- [1]
		{
			0, -- [1]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBD5E", -- [1]
			449, -- [2]
			369, -- [3]
			0, -- [4]
			493, -- [5]
		}, -- [3]
		["tab"] = 5,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/789\n\nTurn 1: Bubble\nTurn 2: Swarm of Flies\nTurn 3: Tongue Lash until the Harbinger of Dark resurrects\nThen:: Swarm of Flies\nHerald of Light comes in\nTurn 1: Tongue Lash until Mud Jumper dies\nBring in your Level Pet\nTurn 1: Swap to your Snail\nTurn 2: Acidic Goo\nTurn 3: Absorb until Herald of Light dies\n",
		["teamName"] = "All Pets Go to Heaven",
		["minXP"] = 7,
	},
	[116786] = {
		{
			"BattlePet-0-00000E0BBDD5", -- [1]
			504, -- [2]
			574, -- [3]
			802, -- [4]
			1416, -- [5]
		}, -- [1]
		{
			"random:0", -- [1]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 2,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/1796\n\nStrategy added by NostrA#2338\nYou can only use the first part in this strategy without swapping, but RNG can bring your Teroclaw Hatchling down then.\n\nIf you decide to go without swapping: delete the first Paragraph of the TD Script\n\nThe Swapping Strategy should work even against 3 Flying Pets\n\nyou can use this strategy for any generic Teroclaw fight\ndon't put important pets in the backline\n\nenemy HP < 618 : use Ravage\nif the enemy is a Flying Type, you want to use Ravage when the enemy HP is under 406 \nwhen not active: use Nature's Ward\nelse: use Alpha Strike\nEnemy Pet #3 comes in\nTurn 1: use Nature's Ward\nswap to Any Pet\nTurn 1+: Kill enemy with Standard Attacks\n",
		["teamName"] = "Deviate Smallclaw",
		["minXP"] = 25,
	},
	["Humanoid Brawl"] = {
		{
			"BattlePet-0-00000E0BBEE1", -- [1]
			413, -- [2]
			1080, -- [3]
			206, -- [4]
			1349, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBD22", -- [1]
			221, -- [2]
			416, -- [3]
			481, -- [4]
			1166, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBED5", -- [1]
			113, -- [2]
			409, -- [3]
			466, -- [4]
			1229, -- [5]
		}, -- [3]
		["minXP"] = 1,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/17277\n\nStrategy added by Pascuit#2921\nHello Pet battlers! It's my first strategy guide, I hope it will be OK.\nIf Benax suffers critical hits, it will be necessary to kill the target with the second mascot.\n\n\nTurn 1: Bubble\nTurn 2: Mudslide\nTurn 3: Water Jet\nTurn 4: Water Jet\nTurn 5: Water Jet\nTurn 6: Water Jet\nTurn 7: Mudslide\nTurn 8: Water Jet until the target die\n",
	},
	[173331] = {
		{
			"BattlePet-0-00000E0BBD1B", -- [1]
			0, -- [2]
			282, -- [3]
			334, -- [4]
			339, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDB3", -- [1]
			459, -- [2]
			640, -- [3]
			208, -- [4]
			1387, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 7,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/9933\n\nStrategy added by DragonsAfterDark\nVideo for Fight (https://www.youtube.com/watch?v=mmuOm-zVtaM&t=5s)\n\nTurn 1: Decoy\nTurn 2: Explode\nBring in your Iron Starlette\nTurn 1: Wind-Up\nTurn 2: Supercharge\nTurn 3: Wind-Up\nTurn 4+: Toxic Smoke\n",
		["teamName"] = "The Mind Games of Addius",
		["minXP"] = 1,
	},
	[200693] = {
		{
			"BattlePet-0-00000E0BBE76", -- [1]
			122, -- [2]
			204, -- [3]
			0, -- [4]
			817, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBF3E", -- [1]
			943, -- [2]
			786, -- [3]
			1762, -- [4]
			1963, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBCF3", -- [1]
			921, -- [2]
			0, -- [3]
			919, -- [4]
			1211, -- [5]
		}, -- [3]
		["tab"] = 8,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/18745\n\nStrategy added by DragonsAfterDark\nThe same team can be used for the Legendary (https://www.wow-petguide.com/Strategy/18743/Tremblor_-_Legendary) & Epic (https://www.wow-petguide.com/Strategy/18744/Tremblor_-_Epic) versions.\n\nTurn 1: Tail Sweep if faster than Tremblor\nTurn 2: Call Lightning\nTurn 3: Swap to your Boneshard\nTurn 4: Blistering Cold\nTurn 5: Chop\nTurn 6: BONESTORM\nTurn 7: Chop\nBring in your Wild Jade Hatchling\nTurn 8: Call Lightning\nTurn 9: Swap to your Zandalari Anklerender\nTurn 10: Black Claw\n~: Hunting Party if needed\n",
		["teamName"] = "Tremblor - Rare",
	},
	[173274] = {
		{
			"BattlePet-0-00000E0BBD0C", -- [1]
			0, -- [2]
			218, -- [3]
			652, -- [4]
			1238, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			0, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBCE7", -- [1]
			0, -- [2]
			0, -- [3]
			593, -- [4]
			1152, -- [5]
		}, -- [3]
		["tab"] = 7,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/11071\n\nStrategy added by Vallador#1409\nThanks to Deathrall for the script.\n\nUPDATE:  Put Chrominius in 3rd slot if you have it.  Otherwise, use something good for the last bit.\n\nStandard Val'kyr/Ikky setup.  Probably works with similar movesets, e.g. Kneebiter/Anklerender.  Comment if this strat fails for you and I'll look into it at some point.  Hope this helps!\n\nPer the comments, Chitterspine Skitterling is dope for this one too.  Also, \"Any\" 25 might  not do the trick.  Use one that isn't bad.  :))))\n\nTurn 1: Curse of Doom\nTurn 2: Haunt\nBring in Ikky.\nTurn 3: Black Claw\nTurns 4-6: Flock\nGorgemouth should be on it's undead turn.  Pass.\nOtherwise, finish with third pet and tank final attacks.\n",
		["teamName"] = "Failed Experiment",
	},
	[201858] = {
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			1370, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [1]
		{
			"random:0", -- [1]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 8,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/18607\n\nStrategy added by HotdogPotato\nTurn 1: Black Claw\nTurns 2-4: Flock\nTurn 5: Savage Talon\n",
		["teamName"] = "Lyver",
		["minXP"] = 25,
	},
	[200697] = {
		{
			"BattlePet-0-00000E0BBD0C", -- [1]
			422, -- [2]
			218, -- [3]
			652, -- [4]
			1238, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBD2F", -- [1]
			921, -- [2]
			919, -- [3]
			364, -- [4]
			1180, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 8,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/18619\n\nStrategy added by Halyanth#1611\nI tried it the first time today. I will update the strategy as I continue to play with it. \n\nTurn 1: Haunt\nBring in Kneebitter\nTurn 2: Black Claw\nTurn 3: Hunting Party\nTurn 4: Hunting Party continues\nTurn 5: Leap\n",
		["teamName"] = "Flow - Rare",
		["minXP"] = 1,
	},
	[68465] = {
		{
			0, -- [1]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBE3A", -- [1]
			449, -- [2]
			369, -- [3]
			564, -- [4]
			568, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBCC3", -- [1]
			115, -- [2]
			647, -- [3]
			334, -- [4]
			844, -- [5]
		}, -- [3]
		["tab"] = 3,
		["notes"] = "Strategy added by Bösendorfer\nThis excellent strat was published on wowhead by Posh. it works great every time. I made a TD script for it that I hope will work too.\n\nTurn 1: Pass\nTurn 2: Swap to your Silkbead Snail\nTurn 3: Acidic Goo\nTurns 4-5: Dive\nTurn 6+: Absorb till Pandaren Earth Spirit is dead\nSludgy comes in\nTurn 1: Acidic Goo\nTurn 2: Absorb till Silkbead Snail is dead\nBring in your Mechanical Pandaren Dragonling\nTurn 1: Breath till Sludgy is dead\nDarnak the Tunneler comes in\nTurn 1: Bombing Run\nTurn 2: Breath\nTurn 3: Decoy\nTurn 4: Breath till Darnak the Tunneler is dead\n\n",
		["teamName"] = "Thundering Pandaren Spirit",
	},
	[140315] = {
		{
			"BattlePet-0-00000E0BBDF1", -- [1]
			477, -- [2]
			206, -- [3]
			481, -- [4]
			117, -- [5]
		}, -- [1]
		{
			"random:0", -- [1]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 6,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/3307\n\nStrategy added by DragonsAfterDark\nPriority 1: Call Blizzard on CD\nPriority 2: Deep Freeze on CD\nPriority 3: Snowball all else\nPriority 4: Standby when the \"Fixed\" Remote Control Rocket Chicken comes in\nIf needed, bring in next pet to finish the fight. \n",
		["teamName"] = "Automated Chaos",
		["minXP"] = 25,
	},
	[200677] = {
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			0, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [1]
		{
			"random:0", -- [1]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 8,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/18769\n\nStrategy added by Archeonia#2844\nTurn 1: Black Claw\nTurns 2-4: Flock\nTurn 5: Any standard attack will finish the fight\n",
		["teamName"] = "Storm-Touched Swoglet",
		["minXP"] = 25,
	},
	[68561] = {
		{
			"BattlePet-0-00000E0BBD0C", -- [1]
			0, -- [2]
			218, -- [3]
			652, -- [4]
			1238, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			0, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [2]
		{
			0, -- [1]
		}, -- [3]
		["tab"] = 3,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/6320\n\nStrategy added by Alexstrasza\nOriginal strategy by CrazyFluffy#21258 (https://www.wow-petguide.com/?Strategy=2789) which had a random pet as 3rd pet.\nI've slightly altered it to include a leveling pet\n\nUnborn Val'kyr\nTurn 1: Curse of Doom\nTurn 2: Haunt\nBring in your Level Pet\n\nLevel Pet\nTurn 1: Swap to your Ikky\n\nIkky\nTurn 1: Black Claw\nTurn 2-4: Flock\n",
		["teamName"] = "Lucky Yi",
		["minXP"] = 1,
	},
	[141529] = {
		{
			"BattlePet-0-00000E0BBED0", -- [1]
			1773, -- [2]
			165, -- [3]
			518, -- [4]
			1974, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBD2E", -- [1]
			122, -- [2]
			489, -- [3]
			589, -- [4]
			1165, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBF0F", -- [1]
			122, -- [2]
			489, -- [3]
			589, -- [4]
			1721, -- [5]
		}, -- [3]
		["tab"] = 6,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/7895\n\nStrategy added by Orpartlu\nTurn 1: Falcosaur Swarm!\nTurn 2: Falcosaur Swarm! Continues.\nTurn 3: Predatory Strike\nLilly Dies.\nTurn 4: Falcosaur Swarm!\nSnowfeather Hatchling gets swapped out for Nexus Whelpling by Molaze.\nTurn 5: Arcane Storm\nTurn 6: Mana Surge\nMolaze Dies.\nTurn 7: Mana Surge continues.\nTicker may die here. If not finish with anything.\n",
		["teamName"] = "Marshdwellers",
	},
	[105352] = {
		{
			"BattlePet-0-00000E0BBCC3", -- [1]
			115, -- [2]
			779, -- [3]
			282, -- [4]
			844, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBD1B", -- [1]
			777, -- [2]
			282, -- [3]
			779, -- [4]
			339, -- [5]
		}, -- [2]
		{
			0, -- [1]
		}, -- [3]
		["tab"] = 5,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/8522\n\nStrategy added by norng\nPriority 1: Explode when Essence of Mana has 469 or less health\nPriority 2: Thunderbolt\nPriority 3: Breath, Missile\n",
		["teamName"] = "Mana Tap",
		["minXP"] = 15,
	},
	[116791] = {
		{
			"BattlePet-0-00000E0BBCAD", -- [1]
			1002, -- [2]
			392, -- [3]
			985, -- [4]
			1320, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDD5", -- [1]
			504, -- [2]
			574, -- [3]
			802, -- [4]
			1416, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 2,
		["notes"] = "Strategy added by NostrA#2338\nprops to Aranesh for his/her strategy, i just changed the TD Script and Strategy to make Teroclaw viable again\n\nTurn 1: use Extra Plating\nTurn 2: use Make it Rain\nTurn 3+: use Inflation until Dreadcoil is dead\nan enemy comes in\nTurn 1+: use Inflation until Lil' Bling dies\nBring in your Teroclaw Hatchling\nenemy HP < 618: use Ravage\nif the target enemy is a Flying enemy, you want to use Ravage when the enemy HP is under 406\nwhen not active: use Nature's Ward\nelse: use Alpha Strike\n",
		["teamName"] = "Dreadcoil",
		["minXP"] = 25,
	},
	[104970] = {
		{
			"BattlePet-0-00000E0BBCC3", -- [1]
			115, -- [2]
			779, -- [3]
			282, -- [4]
			844, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBC81", -- [1]
			648, -- [2]
			0, -- [3]
			649, -- [4]
			266, -- [5]
		}, -- [2]
		{
			0, -- [1]
		}, -- [3]
		["tab"] = 5,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/5130\n\nStrategy added by Shenk\nFight takes 11-12 rounds.\n\nThere is a rare chance for the strat to fail when the Imp lands a crit and rolls high on Burn.\nSometimes it wouldn't matter but if you want to play it safe use Ancient Blessing after the first BONESTORM (and remove \"& self.hpp>100\" from the TD script).\n\nTurn 1: Thunderbolt\nTurn 2: Pass\nFossilized Hatchling is swapped in\nTurn 1: BONESTORM\nTurn 2-4: Bone Bite until Trixy dies\nTurn 5: BONESTORM during your undead round\nBring in your Mechanical Pandaren Dragonling\nTurn 1+: Breath until Globs dies\nNightmare Sprout comes in\nTurn 1: Thunderbolt\nTurn 2: Explode\n",
		["teamName"] = "Dealing with Satyrs",
		["minXP"] = 1,
	},
	[116787] = {
		{
			"BattlePet-0-00000E0BBDD5", -- [1]
			504, -- [2]
			574, -- [3]
			802, -- [4]
			1416, -- [5]
		}, -- [1]
		{
			"random:0", -- [1]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 2,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/8979\n\nStrategy added by Threewolves\nTurn 1: Prowl\nTurn 2: Moonfire (Keep on CD)\nTurns 3+: Spirit Claws til done.\n*: Clean up with remaining pets if needed.\n",
		["teamName"] = "Deviate Flapper",
	},
	[119342] = {
		{
			"BattlePet-0-00000E0BBEAB", -- [1]
			118, -- [2]
			574, -- [3]
			564, -- [4]
			1568, -- [5]
		}, -- [1]
		{
			"random:0", -- [1]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 2,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/6708\n\nStrategy added by Clarx\nTurn 1: Water Jet\nTurn 2: Dive\nTurn 3: Nature's Ward\nTurn 4: Water Jet\nTurn 5: Water Jet\nTurn 6: Water Jet\nTurn 7: Water Jet\nTurn 8: Dive\nAngry Geode dies here (latest) ... \nClean up the rest! (Pudle Terror is able to solo everything, depending on enemy-background pets)\n",
		["teamName"] = "Angry Geode",
		["minXP"] = 1,
	},
	[66741] = {
		{
			"BattlePet-0-00000E0BBCF3", -- [1]
			110, -- [2]
			364, -- [3]
			919, -- [4]
			1211, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBCA9", -- [1]
			384, -- [2]
			278, -- [3]
			710, -- [4]
			277, -- [5]
		}, -- [2]
		{
			0, -- [1]
		}, -- [3]
		["tab"] = 3,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/591\n\nBreeds that we know work:\nAnklerender must be a P/P breed for this to work 100%.\nP/S and P/B also work just follow the notes below.\n\n(The notes down there are an estimate of 550 HP). (Saint)\n\nTurn 1: Bite\nTurn 2: Bite\nTurn 3+: Leap until Chirrup is dead.\nStormlash comes in.\nTurn 1: Black Claw - your Anklerender dies.\nBring in your Clockwork Gnome.\nTurn 1: Build Turret - Stormlash dies.  If not, just go on to the next step for your turret will kill him as you repair.\nWhiskers comes in.\nTurns 1-3: Repair\nTurn 4: Build Turret\nNOTE: If Whiskers is 551 HP or below after turn 4, Skip to turn 6. So he'll use Survival instead of Surge on your level pet. This is an estimate.\nNOTE: If Whiskers is above 551 HP after turn 4, continue to Turn 5. So he'll use Survival instead of Surge on your level pet. This is an estimate.\nTurn 5: Metal Fist\nTurn 6: Swap to your Level Pet.\nTurn 7: Swap back to your Clockwork Gnome.\nTurn 8: Build Turret - Whiskers dies.\nTurn 9: Metal Fist - if you think you need to.\n",
		["teamName"] = "Aki the Chosen",
	},
	[85463] = {
		{
			"BattlePet-0-00000E0BBDB3", -- [1]
			459, -- [2]
			566, -- [3]
			208, -- [4]
			1387, -- [5]
		}, -- [1]
		{
			"random:0", -- [1]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 4,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/447\n\nThe three Pests can be defeated by many combinations of pets. Listed here are only a few good options, but there are many other good choices.\n\nTurn 1: Wind-Up\nTurn 2: Supercharge\nTurn 3: Wind-Up\n",
		["teamName"] = "Gorefu",
	},
	[142054] = {
		{
			"BattlePet-0-00000E0BBF0F", -- [1]
			122, -- [2]
			489, -- [3]
			589, -- [4]
			1721, -- [5]
		}, -- [1]
		{
			0, -- [1]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBDD7", -- [1]
			535, -- [2]
			436, -- [3]
			538, -- [4]
			319, -- [5]
		}, -- [3]
		["tab"] = 6,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/12520\n\nStrategy added by Sunshine529\nThe battle doesn't reward much XP for leveling pets, but if you'll take what you can get, this is a reliable strategy.\n\nTurn 1: Arcane Storm\nTurns 2-4: Mana Surge\nTurn 5: When Stormborne Whelpling dies, bring in Level Pet, then swap to Feline Familiar\nTurn 6: Keep Stoneskin up.\nTurn 7: Use Devour when enemy.hp<=768\nTurn 8: Fill with Pounce\n",
		["teamName"] = "Desert Survivors",
		["minXP"] = 1,
	},
	["Sprouts, Prince Charming, and Runts"] = {
		{
			"BattlePet-0-00000E0BBD1B", -- [1]
			777, -- [2]
			282, -- [3]
			334, -- [4]
			339, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			0, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [2]
		{
			0, -- [1]
		}, -- [3]
		["tab"] = 4,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/5861\n\nStrategy added by Threewolves\nUpdated 3/13/2021.\n\nTurn 1: Decoy\nTurn 2: Swap to your Leveling Pet\nTurn 3: Swap to your Ikky\nTurn 4: Black Claw\nTurns 5+: Flock til Ikky dies.\nBring in your Darkmoon Zeppelin\nTurn 1:  Decoy\nTurn 2:  Missile til Runts is below 609 health.\nTurn 3: Explode\n",
		["minXP"] = 1,
	},
	[154928] = {
		{
			"BattlePet-0-00000E0BBF3E", -- [1]
			943, -- [2]
			786, -- [3]
			1762, -- [4]
			1963, -- [5]
		}, -- [1]
		{
			0, -- [1]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBCF3", -- [1]
			921, -- [2]
			364, -- [3]
			919, -- [4]
			1211, -- [5]
		}, -- [3]
		["tab"] = 6,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/8941\n\nStrategy added by Tinlar#1408\nYour level pet will take some back-line damage so needs about 600 HP.\n\nTurn 1: Blistering Cold\nTurn 2: Chop until Boneshard is dead\nBring in your Level Pet\nBring in your Zandalari Anklerender\nTurn 1: Black Claw\nTurn 2: Hunting Party\n",
		["teamName"] = "Unit 6",
		["minXP"] = 10,
		["minHP"] = 601,
	},
	[107489] = {
		{
			"BattlePet-0-00000E0BBCC4", -- [1]
			113, -- [2]
			436, -- [3]
			569, -- [4]
			1150, -- [5]
		}, -- [1]
		{
			0, -- [1]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBD09", -- [1]
			777, -- [2]
			634, -- [3]
			209, -- [4]
			338, -- [5]
		}, -- [3]
		["tab"] = 5,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/2592\n\nStrategy added by Shoff#1714\nI designed this strategy specifically to allow level 1 and low HP carry pets to survive this encounter. Foof will not get his AOE off during this fight, so you are able to carry any level/hp pet that you want. \n\nDragonsAfterDark: I went through the fight, and these were the steps the tdScript gave me.\n\nTurn 1: Burn\nTurn 2: Crystal Prison\nTurn 3: Swap to your Darkmoon Tonk\nTurn 4: Minefield\nTurn 5+: Missile until Stumpers dies\nFoof comes in\nTurn 1: Ion Cannon\nLil' Sizzle comes in\nTurn 1: Recover from Ion Cannon\nTurn 2: Recover from Ion Cannon\nTurn 3+: Missile until Darkmoon Tonk dies\nBring in your Ashstone Core\nTurn 1: Stoneskin\nLil' Sizzle swaps in your level pet\nTurn 1: Swap to your Ashstone Core\nTurn 2: Burn\nTurn 3: Crystal Prison\nTurn 4: Burn\nTurn 5: Stoneskin\nLil' Sizzle swaps in your level pet\nTurn 1: Swap to your Ashstone Core\nTurn 2+3: Stoneskin\nTurn 4: Crystal Prison\nTurn 5+6: Burn\nLil' Sizzle swaps in your level pet\nTurn 1: Swap to your Ashstone Core\nTurn 2: Stoneskin\nTurn 3: Burn\nLil' Sizzle swaps in your level pet\nTurn 1: Swap to your Ashstone Core\nTurn 2+3: Stoneskin\nTurn 4: Crystal Prison\nTurn 5+6: Burn\n",
		["teamName"] = "Fight Night: Amalia",
		["minXP"] = 1,
	},
	[128014] = {
		{
			"random:0", -- [1]
		}, -- [1]
		{
			"random:0", -- [1]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBF3E", -- [1]
			943, -- [2]
			786, -- [3]
			1762, -- [4]
			1963, -- [5]
		}, -- [3]
		["tab"] = 5,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/8542\n\nStrategy added by Koru08#1614\nTurn 1: Pass\nBring in your Boneshard\nTurn 1: Blistering Cold\nTurn 2: Chop\nBring in your Ikky\nTurn 1: Black Claw\nTurn 2: Flock\n",
		["teamName"] = "Snozz",
	},
	[197102] = {
		{
			"BattlePet-0-00000E0BBD2E", -- [1]
			122, -- [2]
			489, -- [3]
			589, -- [4]
			1165, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDB3", -- [1]
			459, -- [2]
			566, -- [3]
			208, -- [4]
			1387, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 8,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/17210\n\nStrategy added by Scratike#2323\nTurn 1: Arcane Storm\nTurns 2-4: Mana Surge\nTurn 5: Tail Sweep until Nexus Whelpling dies\nTurn 6: Wind-Up\nTurn 7: Wind-Up\nTurn 6: WIN\n",
		["teamName"] = "Two and Two Together",
		["minXP"] = 1,
	},
	[200679] = {
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			184, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [1]
		{
			"random:3", -- [1]
		}, -- [2]
		{
			"random:3", -- [1]
		}, -- [3]
		["tab"] = 8,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/18666\n\nStrategy added by DragonsAfterDark\nIkky should be good to take out both, or almost both, Skitterers with no healing between the fights.\n\nScript thanks to Schlumpf\n\nTurn 1: Black Claw\nTurns 2-4: Flock\nTurn 5+: Quills until the fight is won\n",
		["teamName"] = "Storm-Touched Skitterer",
		["minXP"] = 25,
	},
	[68562] = {
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			1370, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [1]
		{
			0, -- [1]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBCC3", -- [1]
			115, -- [2]
			0, -- [3]
			282, -- [4]
			844, -- [5]
		}, -- [3]
		["tab"] = 3,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/4787\n\nStrategy added by dintho\nTurn 1: Black Claw\nTurn 2: Flock\nTurn 3: Ikky Normally Dies here... Any standard attack if alive\nBring in your Mechanical Pandaren Dragonling\nHP > 560: HP over 560 Breath \nHP < 560: HP under 560 Explode\n",
		["teamName"] = "Ti'un the Wanderer",
		["minXP"] = 10,
	},
	[105386] = {
		{
			0, -- [1]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBCAD", -- [1]
			1002, -- [2]
			392, -- [3]
			985, -- [4]
			1320, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 5,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/873\n\nStrategy added by Aranesh\nTurn 1: Pass\nTurn 2: Swap to your Lil' Bling\nTurn 3: Make it Rain\nTurn 4: Extra Plating\nTurns 5-7: Inflation\nTurn 8: Make it Rain\n",
		["teamName"] = "Rydyr",
	},
	[141799] = {
		{
			"BattlePet-0-00000E0BBDBB", -- [1]
			459, -- [2]
			566, -- [3]
			282, -- [4]
			1387, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBCB6", -- [1]
			777, -- [2]
			634, -- [3]
			0, -- [4]
			227, -- [5]
		}, -- [2]
		{
			"random:10", -- [1]
		}, -- [3]
		["tab"] = 6,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/7948\n\nStrategy added by F1NCH#2182\nI tested only with P/P Iron Starlette\n\nTurn 1: Wind-Up\nTurn 2: Wind-Up\nTurn 3: Powerball\nScars comes in\nTurn 1: Powerball\nTurn 2: Explode\nBring in your Warbot\nTurn 1: Missile\nTurn 2: Minefield in Scars undead round\nLittle Blue comes in\nTurn 1: Missile\n",
		["teamName"] = "Pack Leader",
		["minXP"] = 25,
	},
	[204926] = {
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			1370, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDCA", -- [1]
			1372, -- [2]
			276, -- [3]
			513, -- [4]
			1541, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBCE7", -- [1]
			110, -- [2]
			362, -- [3]
			593, -- [4]
			1152, -- [5]
		}, -- [3]
		["tab"] = 8,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/19857\n\nStrategy added by LucifonChaos#1485\nSometimes Ikky Lives longer and this fight can be done a little faster.\n\nTurn 1: Black Claw\nTurns 2-4: Flock\nTurn 5: Repeat Black Claw and Flock until Ikky dies.\nTurn 6: Swap to your Hydraling\nTurn 7: Swallow You Whole until either Dustie enters or Hydraling dies.\nTurn 7: Whirlpool when Dustie enters if Hydraling is still alive. \nTurn 8: Swap to your Chrominius\nTurn 9: Howl\nTurns 10-12: Surge of Power\n",
		["teamName"] = "Delver Mardei",
	},
	[142234] = {
		{
			"BattlePet-0-00000E0BBDB3", -- [1]
			459, -- [2]
			0, -- [3]
			208, -- [4]
			1387, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBD2E", -- [1]
			122, -- [2]
			489, -- [3]
			589, -- [4]
			1165, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			1370, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [3]
		["tab"] = 6,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/5190\n\nStrategy added by Runisco\nTurn 1: Wind-Up\nTurn 2: Supercharge\nTurn 3: Wind-Up until Iron Starlette dies\nBring in your Nexus Whelpling\nTurn 1: Arcane Storm\nTurn 2: Mana Surge\nTurn 3: Tail Sweep until Nexus Whelpling dies\nBring in your Ikky\nTurn 1: Black Claw\nTurn 2: Flock\n",
		["teamName"] = "Small Beginnings",
	},
	[106542] = {
		{
			"BattlePet-0-00000E0BBE4E", -- [1]
			1085, -- [2]
			456, -- [3]
			752, -- [4]
			1601, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBD1B", -- [1]
			777, -- [2]
			282, -- [3]
			334, -- [4]
			339, -- [5]
		}, -- [2]
		{
			0, -- [1]
		}, -- [3]
		["tab"] = 5,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/8585\n\nStrategy added by Jessail\nThere is an inherent randomness to this fight, but i've minimized it as much as possible. I tried all of the strats on offer here, but none of them worked well for me, so i made my own. I used the basis of one of the other strats, and tried to improve on it. The TD script is set to auto forfeit the match if you dont kill the Owl in 3 turns. It usually does, but not always, and i noticed that when it didn't, the failure rate on the match was 90+ percent. With this method, i've donr around 20 matches, only 2 failed to kill the Owl and auto forfeited, all the others won (though that is a small sample size and i might just have gotten lucky).\n\nAlso, Arcane Storm that the Owl uses is strong against Flying pets, so you'll probably need a level 5 or so leveling pet to survive it.\n\nTurn 1: Clean-Up\nTurn 2: Soulrush\nTurn 3: Magic Sword (this should kill the Owl, if not restart (script autoexits if the Owl is still alive)\nTurn 4: Magic Sword against Rat until Servant of Demidos dies\nBring in Darkmoon Zeppelin\nTurn 5: Decoy\nTurn 6: Missile until Rat has below threshold health for Nuke\nTurn 7: Explode\n",
		["teamName"] = "Help a Whelp",
		["minXP"] = 5,
	},
	[119343] = {
		{
			"BattlePet-0-00000E0BBD22", -- [1]
			202, -- [2]
			314, -- [3]
			124, -- [4]
			1166, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDD5", -- [1]
			504, -- [2]
			574, -- [3]
			802, -- [4]
			1416, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 2,
		["notes"] = "Strategy added by NostrA#2338\nProps to Aranesh for his/her strategy, I just changed the TD Script and Strategy to make Teroclaw viable again\n\nTurn 1-3: use Rampage\nTurn 4+: use Thrash until Klutz's Battle Rat dies\nan enemy Pet comes in\nTurn 1+: use Rampage on cooldown otherwise use Thrash until your Kun-Lai Runt dies\nBring in your Teroclaw Hatchling\nenemy HP < 618: use Ravage\nif the enemy is a Flying Type, you want to use Ravage when the enemy HP is under 406 \nwhen not active: use Nature's Ward\nelse: use Alpha Strike\n",
		["teamName"] = "Klutz's Battle Rat",
		["minXP"] = 25,
	},
	[200680] = {
		{
			0, -- [1]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBD0C", -- [1]
			0, -- [2]
			218, -- [3]
			652, -- [4]
			1238, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			0, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [3]
		["tab"] = 8,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/18659\n\nStrategy added by Vanpelt#1866\nTurn 1: Pass\nTurn 2: Swap to your Unborn Val'kyr\nTurn 3: Curse of Doom\nTurn 4: Haunt - Unborn Val'kyr dies\nBring in your Ikky\nTurn 5: Black Claw\nTurns 6-8: Flock\n",
		["teamName"] = "Storm-Touched Ohuna",
		["minXP"] = 1,
	},
	[119407] = {
		{
			"BattlePet-0-00000E0BBCC3", -- [1]
			115, -- [2]
			779, -- [3]
			334, -- [4]
			844, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDD5", -- [1]
			504, -- [2]
			312, -- [3]
			0, -- [4]
			1416, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 2,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/1237\n\nStrategy added by Aranesh\nTurn 1: Decoy\nTurn 2: Thunderbolt\nTurns 3+: Now keep Thunderbolt and Decoy on cooldown and otherwise use Breath\nYour Mechanical Pandaren Dragonling will usually solo the fight.\nIf you are unlucky, bring in your Teroclaw Hatchling and use Dodge + Alpha Strike\n\nCongrats!\n",
		["teamName"] = "Cookie's Leftovers",
		["minXP"] = 1,
	},
	[175785] = {
		{
			"BattlePet-0-00000E0BBF3E", -- [1]
			943, -- [2]
			786, -- [3]
			1762, -- [4]
			1963, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			184, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 7,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/10148\n\nStrategy added by Lazey\n*** Created on Beta, so maybe not final ***\n\nTurn 1: Blistering Cold\nTurn 2: BONESTORM\nTurn 3: Chop (Boneshard dies)\nBring in your Ikky\nTurn 4: Black Claw\nTurns 5-7: Flock\n",
		["teamName"] = "Kostos",
		["minXP"] = 1,
	},
	[105674] = {
		{
			"BattlePet-0-00000E0BBD22", -- [1]
			202, -- [2]
			416, -- [3]
			481, -- [4]
			1166, -- [5]
		}, -- [1]
		{
			0, -- [1]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBF21", -- [1]
			1773, -- [2]
			1758, -- [3]
			518, -- [4]
			1975, -- [5]
		}, -- [3]
		["tab"] = 5,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/10262\n\nStrategy added by Mutanis\nI got inspired by Dragonsafterdark strategy (https://wow-petguide.com/?Strategy=9027).\n\nTime: ~1:40\n\nTurn 1: Frost Shock\nTurn 2: Deep Freeze\nTurn 3: Frost Shock\nRemy comes in\nTurn 4: Thrash\nTurn 5: Frost Shock\nTurn 6+: Thrash until Remy dies (1-2x)\nGusteau comes in\nTurn 1: Frost Shock\nTurn 2: Deep Freeze\nTurn 3: Swap to your Level Pet\nDinner comes in\nTurn 4: Swap to your Direbeak Hatchling\nTurn 5: Ironskin\nTurns 6-7: Falcosaur Swarm!\nTurn 8: Predatory Strike\nGusteau comes in\nTurns 1-2: Falcosaur Swarm!\n",
		["teamName"] = "Chopped",
		["minXP"] = 1,
	},
	[173267] = {
		{
			"BattlePet-0-00000E0BBCA2", -- [1]
			163, -- [2]
			743, -- [3]
			160, -- [4]
			627, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBE91", -- [1]
			228, -- [2]
			232, -- [3]
			934, -- [4]
			1441, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 7,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/11173\n\nStrategy added by Vsh\nTurn 1: Creeping Fungus\nTurns 2-4: Stampede\nTurn 5: Consume during the death phase\nWhirly dies\nTurn 4: repeat turn 1 - 6\nRound 5: Stinkdust dies\nTurn 6: Creeping Fungus\nInfected Squirrel dies\nMud Jumper in combat\nTurn 1: Bubble\nTurn 2: Swarm of Flies\nfinish with Tongue Lash\n",
		["teamName"] = "Uncomfortably Undercover",
		["minXP"] = 1,
	},
	[104553] = {
		{
			0, -- [1]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBD92", -- [1]
			110, -- [2]
			1016, -- [3]
			536, -- [4]
			1266, -- [5]
		}, -- [2]
		{
			0, -- [1]
		}, -- [3]
		["tab"] = 5,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/4072\n\nStrategy added by Berendain\nQuick way to level two pets at a time.  They can be level 1, neither of them take damage.  This gives you plenty of flexibility when it comes to what pets you want to level, and are less likely to waste potential xp on pets that are already in their 20s.\n\nShadowlands Update:  I've updated the strategy.  Something changed with prepatch and Slow Moe dies quicker than he used to.  I've added a Pass in order to better line up Prowl and Feed with Snot's Dive.  However, if Xu-Fu crits Slow Moe with Feed, you may be in some trouble now, as Feed may not be available again for Snot.  I've updated the TD script, but I think you may need a bandage around 25% of the time now [the chance Headbutt stuns you], and there's even a slim chance for Xu-Fu to die.  \n\n[That can happen IF you crit Slow Moe with Feed, one shotting him, and then Snot rolls high with Dive and it deals a critical hit.  Then you don't crit with Bite, and die one turn before Feed is available again.]\n\nTurn 1: Pass\nTurn 2: Swap to your Xu-Fu, Cub of Xuen\nTurn 3: Prowl\nTurn 4: Pass\nTurn 5: Feed\nTurn 6: Bite, Rocklick dies\nSlow Moe comes in\nTurn 1: Swap to your second Level Pet (third slot)\nTurn 2: Swap back to your Xu-Fu, Cub of Xuen\nTurn 4: Prowl - If you are stunned, or if Prowl is still on cooldown for 1 round, Pass for a turn then continue with Prowl.\nTurn 5: Pass\nTurn 6: Feed\nTurn 6: Bite when Slow Moe's Shell Shield has a 5 round duration.  Pass if it has a 1 round duration, then Bite him next turn.\nSnot comes in\nTurn 1: Bite\nIs Prowl available?\nIF: YES\nTurn 2: Prowl\nTurn 3: Feed - Snot dies\nIF: NO\nTurn 2: Bite\nTurn 3: Pass\nTurn 4: Feed\nTurn 5: Bite until Snot dies\n",
		["teamName"] = "Snail Fight!",
		["minXP"] = 1,
	},
	[162468] = {
		{
			"BattlePet-0-00000E0BBD0C", -- [1]
			0, -- [2]
			218, -- [3]
			652, -- [4]
			1238, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBD2F", -- [1]
			921, -- [2]
			919, -- [3]
			364, -- [4]
			1180, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 6,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/7733\n\nStrategy added by Perimus#2648\nTested TD Script 5x - No RNG involved so far. Special thanks to Mirogah (https://www.wow-petguide.com/index.php?user=12412) & d3ltaray#2895 (https://www.wow-petguide.com/index.php?user=12858)\n\nTried this fight with Ikky aswel but didn't go so well. My Kneebiter even died from crit but the Haunt/Curse of Doom finished it off. I used Leap on his Deflection so I would have speed advantage and be sure I would do Hunting Party.\n\nTurn 1: Shadow Slash/ Shadow Shock\nTurn 2: Pass\nHe will use Deflection\nTurn 3: Curse of Doom\nTurn 4: Haunt\nTurn 5: Black Claw\nBring in your Zandalari Kneebiter\nTurn 6: Leap\nHe will use Deflection\nTurn 8: Hunting Party\n",
		["teamName"] = "Tiny Madness",
		["minXP"] = 25,
	},
	[116790] = {
		{
			"BattlePet-0-00000E0BBF21", -- [1]
			1773, -- [2]
			1758, -- [3]
			518, -- [4]
			1975, -- [5]
		}, -- [1]
		{
			"random:0", -- [1]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 2,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/5693\n\nStrategy added by DragonsAfterDark\nPriority 1: Ironskin on CD\nPriority 2: Predatory Strike on Shattered Defenses\nPriority 3: Falcosaur Swarm! as filler\n",
		["teamName"] = "Vilefang",
		["minXP"] = 25,
	},
	[105323] = {
		{
			"BattlePet-0-00000E0BBCDD", -- [1]
			514, -- [2]
			515, -- [3]
			204, -- [4]
			445, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBE4E", -- [1]
			1085, -- [2]
			937, -- [3]
			752, -- [4]
			1601, -- [5]
		}, -- [2]
		{
			0, -- [1]
		}, -- [3]
		["tab"] = 5,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/8996\n\nStrategy added by Sleepywillo\nAll credit for this strat goes to Niggles.\nI noticed this pet combo wasnt here so thought I would add it.\nTiny Twister NEEDS to be H/S breed to work.\n\nTurn 1: Call Lightning\nTurn 2: Wild Winds\nTurn 3: Switch to Servant of Demidos\nTurn 4: Siphon Anima and Ancient Catacomb Spider should die here.\nTurn 5: Catacomb Bat comes in. Use Magic Sword\nTurn 6: Soulrush and Catacomb Bat dies.\nTurn 7: Switch to Level Pet (it will get blinded by Blinding Poison).\nTurn 8: Switch back to Tiny Twister\nTurn 9: Call Lightning. (IfTiny Twister dies here bring in Servant of Demidos and use Siphon Anima followed by Soulrush).\nTurn 10: Wild Winds. Tiny Twister dies. Bring in Servant of Demidos.\nTurn 11: Siphon Anima\n",
		["teamName"] = "Clear the Catacombs",
		["minXP"] = 1,
	},
	[68563] = {
		{
			"BattlePet-0-00000E0BBDBB", -- [1]
			459, -- [2]
			0, -- [3]
			208, -- [4]
			1387, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBD51", -- [1]
			499, -- [2]
			362, -- [3]
			0, -- [4]
			1146, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBD09", -- [1]
			0, -- [2]
			646, -- [3]
			209, -- [4]
			338, -- [5]
		}, -- [3]
		["tab"] = 3,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/953\n\nTurn 1: Wind-Up\nSwap to Stitched Pup.\nTurn 1+: Diseased Bite until your Stitched Pup enters its undead round.\nThen: Howl and Stitched Pup dies.\nSwap back to Iron Starlette.\nTurn 1: Supercharge (NOTE: If you get stunned you'll have to finish up with the Darkmoon Tonk).\nTurn 2: Wind-Up and you over kill Kafi, if you didn't get stunned.\nIf Iron Starlette got stunned bring in Darkmoon Tonk\nTurn 1: Shock and Awe\nTurn 2: Ion Cannon\n",
		["teamName"] = "Kafi",
	},
	[105898] = {
		{
			"BattlePet-0-00000E0BBEF2", -- [1]
			1370, -- [2]
			1773, -- [3]
			518, -- [4]
			1977, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBF21", -- [1]
			1773, -- [2]
			1758, -- [3]
			518, -- [4]
			1975, -- [5]
		}, -- [2]
		{
			"random:3", -- [1]
		}, -- [3]
		["tab"] = 5,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/4953\n\nStrategy added by Mordred#1140\nI've tried some of the strategies here, and found them deficient, to say the least. Using Unborn Val'kyr against an Aquatic? Seriously?\n\nSo, I came up with my own. Since this pet tamer is not repeatable, I haven't been able to test it as many times as I would have liked, but this seems to work, and I have no reason to think it shouldn't work in the majority of cases, since it uses flyers.\n\nTurn 1-2: Bloodgazer Hatchling uses Falcosaur Swarm!\nTurn 3: Predatory Strike (Bloodgazer Hatchling may die here.) If so, skip to Turn 5.\nTurn 4: Savage Talon (if Bloodgazer Hatchling is still alive).\n\nTurn 5: After Bloodgazer Hatchling dies, switch to Direbeak Hatchling\n\nTurn 6: Ironskin\nTurns 7-8: Falcosaur Swarm!\nTurn 9: Predatory Strike (Blottis dies here.)\nIf not: bring in Any Flyer\nTurn 1: Any standard attack will finish the fight\n",
		["teamName"] = "Size Doesn't Matter",
		["minXP"] = 25,
	},
	[175786] = {
		{
			"BattlePet-0-00000E0BBF3E", -- [1]
			943, -- [2]
			786, -- [3]
			0, -- [4]
			1963, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			0, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [2]
		{
			"BattlePet-0-0000105DC65D", -- [1]
			0, -- [2]
			0, -- [3]
			581, -- [4]
			52, -- [5]
		}, -- [3]
		["tab"] = 7,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/11830\n\nStrategy added by DavidG\nNice and simple, and no hard-to-find pets involved.  You can also replace the third pet with a Direbeak Hatchling, or one of the other Hatchlings that has Falcosaur Swarm!\n\nTurn 1: Blistering Cold\nTurn 2: Chop\nBring in your Ikky\nTurn 3: Black Claw\nHis Meat Hook brings in your third pet\nTurn 4: Flock\nHis Hateful Strike kills your third pet - Ikky comes back in\nTurn 5: Flock\n",
		["teamName"] = "Glurp",
	},
	[72291] = {
		{
			"BattlePet-0-00000E0BBC94", -- [1]
			221, -- [2]
			225, -- [3]
			227, -- [4]
			248, -- [5]
		}, -- [1]
		{
			"random:0", -- [1]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 2,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/156\n\nBring at least one level 25 pet along that can hit a bit harder. Do not use critters for this one, anything that has a single attack with more than 250 damage. The higher, the better.\n\nTurn 1: Blackout Kick\nTurn 2: Takedown\nTurn 3: Takedown\nTurn 4: Takedown\nTurn 5: Staggered Steps\nTurn 6: Takedown\n\nRepeat from Turn 1 until you or Yu'la dies.\nIf you are very unlucky, bring in your other pets and finish Yu'la off using high-damage abilities. Watch out to not waste cooldowns when Yu'la is in the air.\n",
		["teamName"] = "Yu'la, Broodling of Yu'lon",
		["minXP"] = 25,
	},
	["Low lvl fights"] = {
		{
			"BattlePet-0-00000E0BBCF5", -- [1]
			860, -- [2]
			611, -- [3]
			595, -- [4]
			255, -- [5]
		}, -- [1]
		{
			0, -- [1]
		}, -- [2]
		{
			0, -- [1]
		}, -- [3]
		["minHP"] = 388,
		["notes"] = "Strategy added by WildCard\nThe same team can be used for all < 21 trainers.Full TD Script for them is in this [url=https://wow-petguide.com/Comment/95382]comment[/url].\n\nTurn 1: Swap to your Level Pet #2\nTurn 2: Swap to your Level Pet #3\nTurn 3: Swap to your Celestial Dragon\nPriority 1: Ancient Blessing if health < 70%\nPriority 2: Moonfire\nPriority 3: Flamethrower\n",
	},
	[85622] = {
		{
			"BattlePet-0-00000E0BBDB3", -- [1]
			459, -- [2]
			640, -- [3]
			208, -- [4]
			1387, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBCC3", -- [1]
			115, -- [2]
			779, -- [3]
			282, -- [4]
			844, -- [5]
		}, -- [2]
		{
			0, -- [1]
		}, -- [3]
		["tab"] = 4,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/7318\n\nStrategy added by Sarahlinii\nCredit for this strategy goes to Chrosta. Please see the information below to go check out Chrosta's in-depth WoWhead post regarding all things Garrison Pet Menagerie! https://www.wowhead.com/guide=3831/garrison-pet-battles-with-12-pets-xp-pet\n\nLeveling Pet: Safe for ANY Level 1+ Pet; it will take 0 damage\n\n**Please feel free to leave suggested TDScripts below as I’ve no idea how to properly create them myself. Thanks and enjoy!\n\nBring in your Iron Starlette\nTurn 1: Wind-Up to charge\nTurn 2: Supercharge\nTurn 3: Wind-Up to hit and defeat Brutus\nRukus comes in\nTurn 1: Wind-Up to charge\nTurn 2: Wind-Up to hit\nTurn 3: Toxic Smoke if you're able to before your Iron Starlette is defeated\nBring in your Mechanical Pandaren Dragonling\nTurn 1: Thunderbolt\nTurn 2: Breath IF Rukus has more than 560 HP\nTurn 3: Explode when Rukus has 560 or less HP\nYour Leveling Pet will get the XP\n\n",
		["teamName"] = "Brutus and Rukus",
		["minXP"] = 1,
	},
	[189376] = {
		{
			"BattlePet-0-00000E0BBD0E", -- [1]
			420, -- [2]
			277, -- [3]
			0, -- [4]
			557, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBD1B", -- [1]
			515, -- [2]
			282, -- [3]
			334, -- [4]
			339, -- [5]
		}, -- [2]
		{
			0, -- [1]
		}, -- [3]
		["tab"] = 8,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/17193\n\nStrategy added by flyingsolow\nWorks well as long as Swog doesn't Crit on Pump. Also a little bit RNG if Slicing Wind keeps single hitting. If you don't like the RNG, swap the leveling pet for a 3rd like Ikky. Battle giving ~1k XP for me.\n\nTurn 1-2: Slicing Wind\nTurn 3: Life Exchange\nTurn 4+: Slicing Wind until Nether Faerie Dragon dies\nBring in your Darkmoon Zeppelin\nTurn 1: Decoy\nTurn 2: Flyby until Swog below 618 HP OR Darkmoon Zeppelin dies\nTurn 3: Explode\nSwog dies\n",
		["teamName"] = "Swog the Elder",
		["minXP"] = 1,
	},
	[85650] = {
		{
			"BattlePet-0-00000E0BBD0E", -- [1]
			421, -- [2]
			277, -- [3]
			595, -- [4]
			557, -- [5]
		}, -- [1]
		{
			"random:0", -- [1]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 4,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/67\n\nGreat recommendation by Luigi - thanks for suggesting this strategy!\n\nTurn 1: Arcane Blast\nTurn 2: Arcane Blast\nTurn 3: Life Exchange\nTurn 4+: Arcane Blast\n",
		["teamName"] = "Quintessence of Light",
	},
	[119408] = {
		{
			"BattlePet-0-00000E0BBD0C", -- [1]
			422, -- [2]
			218, -- [3]
			652, -- [4]
			1238, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			1370, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 2,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/1233\n\nTurn 1: Pass\nTurn 2: Pass\nTurn 3: Haunt\nTurn 4: Bring in Ikky\nTurn 5: Black Claw\nTurns 6+: Flock\n",
		["teamName"] = "\"Captain\" Klutz",
	},
	[116789] = {
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			1370, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBD2E", -- [1]
			122, -- [2]
			489, -- [3]
			0, -- [4]
			1165, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 2,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/4600\n\nStrategy added by DragonsAfterDark\nS/S Foulfeather (2,2,1) is a good alternative to Ikky. I changed the Script so there won't be a conflict between Savage Talon and Peck :)\n\nPriority 1: Black Claw\nPriority 2: Flock\nPriority 3: Savage Talon to finish off an enemy if needed\nBring in your Nexus Whelpling\nTurn 1+: Mana Surge & Tail Sweep to finish fight\n",
		["teamName"] = "Son of Skum",
		["minXP"] = 25,
	},
	["Enbi'see, Mal, and Bones"] = {
		{
			0, -- [1]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBCE7", -- [1]
			299, -- [2]
			0, -- [3]
			593, -- [4]
			1152, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 4,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/942\n\nTurn 1: Pass\nTurn 2: Swap to Chrominius\nTurn 3+: Spam Arcane Explosion until only bones is left on the enemy team.\nSurge of Power and you kill bones putting him in undead mode for one round.\nBones comes back and kills Chrominius\nBring in your extra pet to soak up bones last attack before he dies.\n1: Pass and Bones dies.\n",
		["minXP"] = 15,
	},
	[116795] = {
		{
			"BattlePet-0-00002105E37F", -- [1]
			419, -- [2]
			922, -- [3]
			513, -- [4]
			1478, -- [5]
		}, -- [1]
		{
			"random:9", -- [1]
		}, -- [2]
		{
			"random:9", -- [1]
		}, -- [3]
		["tab"] = 2,
		["notes"] = "Strategy added by Liax\nPlump Jelly Can be used instead of SydBackline pets with high HP works best. But they almost never come into play.\n\nTurn 1: Whirlpool on cooldown\nTurn 2: Healing Stream on cooldown\nTurn 3: Tidal Wave\n",
		["teamName"] = "Everliving Spore",
		["minXP"] = 25,
		["minHP"] = 1501,
	},
	[141215] = {
		{
			"BattlePet-0-00000E0BBCA9", -- [1]
			0, -- [2]
			0, -- [3]
			710, -- [4]
			277, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBCAD", -- [1]
			0, -- [2]
			0, -- [3]
			985, -- [4]
			1320, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			0, -- [2]
			0, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [3]
		["tab"] = 6,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/2186\n\nStrategy added by Jessail\nMy first \"strategy\" and second TD script. Should work well (i've tested it 5 times without a hitch).\n\n\n\nTurn 1: Build Turret\nTurn 2: Switch to Lil'Bling\nTurn 3: Make it Rain\nTurn 4: Switch to Ikky\nTurn 5: Flock\n",
		["teamName"] = "Unbreakable",
	},
	[119344] = {
		{
			"BattlePet-0-00000E0BBD2E", -- [1]
			122, -- [2]
			489, -- [3]
			589, -- [4]
			1165, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDC4", -- [1]
			525, -- [2]
			597, -- [3]
			598, -- [4]
			1167, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 2,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/1236\n\nStrategy added by Aranesh\nTurn 1: Arcane Storm\nTurns 2-4: Mana Surge - Klutz's Battle Bird dies\nAn enemy pet comes in\nTurns 1+: Continue using Arcane Storm and Mana Surge when available, otherwise Tail Sweep until your Nexus Whelpling dies\n\nIf you need your Emerald Proto-Whelp, keep Emerald Presence active, use Emerald Dream if you drop low on health and otherwise use Emerald Bite\n",
		["teamName"] = "Klutz's Battle Bird",
	},
	[200682] = {
		{
			"BattlePet-0-00000E0BBF3E", -- [1]
			943, -- [2]
			786, -- [3]
			1762, -- [4]
			1963, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBCF3", -- [1]
			921, -- [2]
			920, -- [3]
			919, -- [4]
			1211, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 8,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/18644\n\nStrategy added by DragonsAfterDark\nTurn 1: Blistering Cold\nTurn 2: Chop\nTurn 3: BONESTORM\nTurn 4: Blistering Cold\nBring in your Zandalari Anklerender\nTurn 5: Primal Cry\nTurn 6: Black Claw\nTurn 7: Hunting Party\n",
		["teamName"] = "Vortex - Epic",
		["minXP"] = 25,
	},
	[116788] = {
		{
			"BattlePet-0-00000E0BBDD5", -- [1]
			504, -- [2]
			574, -- [3]
			802, -- [4]
			1416, -- [5]
		}, -- [1]
		{
			"random:0", -- [1]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 2,
		["notes"] = "Strategy added by NostrA#2338\nYou can only use the first part in this strategy without swapping, but RNG can bring your Teroclaw Hatchling down then. If you decide to go without swapping: delete the first Paragraph of the TD Script The Swapping Strategy should work even against 3 Flying Pets you can use this strategy for any generic Teroclaw fight don't put important pets in the backline\n\nenemy HP < 618 : use Ravage\nif the enemy is a Flying Type, you want to use Ravage when the enemy HP is under 406 \nwhen not active: use Nature's Ward\nelse: use Alpha Strike\nEnemy Pet #3 comes in\nTurn 1: use Nature's Ward\nswap to Any Pet\nTurn 1+: Kill enemy with Standard Attacks\n",
		["teamName"] = "Deviate Chomper",
		["minXP"] = 25,
	},
	[68564] = {
		{
			"BattlePet-0-00000E0BBDB3", -- [1]
			459, -- [2]
			0, -- [3]
			208, -- [4]
			1387, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBD51", -- [1]
			499, -- [2]
			362, -- [3]
			0, -- [4]
			1146, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 3,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/952\n\nTurn 1: Wind-Up\nSwap to Stitched Pup.\nTurn 1+: Diseased Bite until your Stitched Pup enters its undead round.\nThen: Howl and Stitched Pup dies.\nSwap back to Iron Starlette.\nTurn 1: Supercharge\nTurn 2: Wind-Up and you over kill Dos-Ryga.\n",
		["teamName"] = "Dos-Ryga",
		["minXP"] = 1,
	},
	[140813] = {
		{
			"BattlePet-0-00000E0BBD13", -- [1]
			118, -- [2]
			564, -- [3]
			513, -- [4]
			868, -- [5]
		}, -- [1]
		{
			0, -- [1]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBD24", -- [1]
			449, -- [2]
			310, -- [3]
			564, -- [4]
			743, -- [5]
		}, -- [3]
		["tab"] = 6,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/2030\n\nStrategy added by NostrA#2338\nThis Strategy can still fail when you are very unlucky with crits. If you want to level a flying pet, it should be level 19+\n\nTurn 1: use Whirlpool\nTurn 2: use Dive\nTurn 3: use Water Jet\nenemy Azerite Slime dies\nTurn 1: use Whirlpool\nTurn 2+: use Water Jet until your Pandaren Water Spirit dies\nbring in your Level Pet\nbring in your Rapana Whelk\nPriority 1: use Shell Shield when the duration is at 1\nPriority 2: use Dive when available\nPriority 3: use Absorb\n",
		["teamName"] = "Rogue Azerite",
		["minXP"] = 12,
	},
	[139489] = {
		{
			"BattlePet-0-00000E0BBF21", -- [1]
			1773, -- [2]
			0, -- [3]
			518, -- [4]
			1975, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBEF2", -- [1]
			1370, -- [2]
			1773, -- [3]
			518, -- [4]
			1977, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBF26", -- [1]
			1773, -- [2]
			0, -- [3]
			518, -- [4]
			1976, -- [5]
		}, -- [3]
		["tab"] = 6,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/2148\n\nStrategy added by DragonsAfterDark\nGreat flocking Falcosaurs! It's hard to go wrong with any order of attacks on this one, just try to keep the debuff from Falcosaur Swarm! up, and you should have no issues. \n\nTurn 1 + 2: Falcosaur Swarm!\nTurn 3: Predatory Strike\nTurn 4: Falcosaur Swarm! until Shelly is dead. \nSheldon comes in\nTurn 1: Falcosaur Swarm! until Direbeak Hatchling dies. \nBring in your Bloodgazer Hatchling\nTurn 1: Predatory Strike\nTurn 2: Savage Talon until Sheldon is dead. \nShelby comes in\nTurn 1: Falcosaur Swarm! until Predatory Strike is up. \nTurn 2: Predatory Strike\n",
		["teamName"] = "Crab People",
	},
	[105387] = {
		{
			"BattlePet-0-00000E0BBDB3", -- [1]
			459, -- [2]
			640, -- [3]
			282, -- [4]
			1387, -- [5]
		}, -- [1]
		{
			0, -- [1]
		}, -- [2]
		{
			0, -- [1]
		}, -- [3]
		["tab"] = 5,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/824\n\nTurn 1: Toxic Smoke\nTurn 2: Wind-Up\nTurn 3: Toxic Smoke\nTurn 4: Wind-Up\nTurn 5: Explode\n",
		["teamName"] = "Andurs",
	},
	[141588] = {
		{
			0, -- [1]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDBB", -- [1]
			459, -- [2]
			566, -- [3]
			208, -- [4]
			1387, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 6,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/1706\n\nStrategy added by Lazey\nBloodtusk:4A8K:ZL:11141BB:ZR0:P:112:1:9::::\n\nElemental level pets maybe need more HP.\nSingle target fight, so don't expect much XP for your Level Pet.\n\nTurn 1: Pass\nTurn 2: Swap to your Iron Starlette\nTurn 3: Wind-Up\n(Turn 4): (1x Powerball if you are not using P/P Iron Starlette)\nTurn 4 (5): Supercharge\nTurn 5 (6): Wind-Up\n",
		["teamName"] = "Crawg in the Bog",
		["minXP"] = 1,
		["minHP"] = 113,
	},
	[154926] = {
		{
			"BattlePet-0-00000E0BBF3E", -- [1]
			943, -- [2]
			786, -- [3]
			0, -- [4]
			1963, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBCC3", -- [1]
			0, -- [2]
			779, -- [3]
			334, -- [4]
			844, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			0, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [3]
		["tab"] = 6,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/6245\n\nStrategy added by Quenyaiden\nTested multiple times, even when crit strat has 100% win rate for me.\n\nTurn 1: Blistering Cold\nTurn 2: Chop\nTurn 3: Switch to Mechanical Pandaren Dragonling and use Decoy\nTurn 4: Switch to Ikky and use Black Claw\nTurn 5: Flock\nTurn 6: If Ikky dies then bring back Mechanical Pandaren Dragonling and cast Thunderbolt (never got this far, always dead by now)\n",
		["teamName"] = "CK-9 Micro-Oppression Unit",
	},
	[119345] = {
		{
			"BattlePet-0-00000E0BBD9A", -- [1]
			384, -- [2]
			204, -- [3]
			208, -- [4]
			116, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDEE", -- [1]
			406, -- [2]
			436, -- [3]
			490, -- [4]
			1155, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 2,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/11430\n\nStrategy added by norng\nTurn 1: Supercharge\nTurn 2: Call Lightning\nTurn 3: Metal Fist - Klutz's Battle Monkey dies\nAn enemy pet comes in\nPrio 1: Call Lightning\nPrio 2: Metal Fist - Tranquil Mechanical Yeti dies\nBring in your Anubisath Idol\nPrio 1: Use Deflection to dodge Whirlpool & Lift-Off\nPrio 2: Keep up Stoneskin\nPrio 3: Crush\n",
		["teamName"] = "Klutz's Battle Monkey",
		["minXP"] = 1,
	},
	[200684] = {
		{
			"BattlePet-0-00000E0BBF3E", -- [1]
			943, -- [2]
			786, -- [3]
			1762, -- [4]
			1963, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			1370, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBCF3", -- [1]
			921, -- [2]
			364, -- [3]
			919, -- [4]
			1211, -- [5]
		}, -- [3]
		["tab"] = 8,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/18686\n\nStrategy added by Eraea\nThis is a Strat By  ElmaSaenji from Wowhead https://www.wowhead.com/npc=200684/vortex#comments\n\nTurn 1: Blistering Cold\nTurn 2: Chop\nTurn 3: BONESTORM Boneshard will use undead ability and raise\nTurn 4: Blistering Cold\nTurn 5: Boneshard Dies\nTurn 6: Black Claw\nTurns 7-9: Flock\n",
		["teamName"] = "Vortex - Legendary",
	},
	[119409] = {
		{
			"BattlePet-0-00000E0BBD13", -- [1]
			118, -- [2]
			564, -- [3]
			418, -- [4]
			868, -- [5]
		}, -- [1]
		{
			"random:0", -- [1]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 2,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/1229\n\nTurn 1: Geyser\nTurn 2+3: Dive\nTurn 4: Water Jet\nTurn 5+: Keep Geyser and Dive on cooldown, otherwise use Water Jet\nIf your Pandaren Water Spirit dies too early, bring in your level 25 pet and use any damaging spell. The incoming Geyser will finish the fight anyway.\n",
		["teamName"] = "Foe Reaper 50",
		["minXP"] = 25,
	},
	[202440] = {
		{
			"BattlePet-0-00000E0BBD0C", -- [1]
			0, -- [2]
			218, -- [3]
			652, -- [4]
			1238, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			0, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 8,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/18464\n\nStrategy added by DragonsAfterDark\nThe script will run for Ikky & the Zandalari Raptors\n\nVideo for Fight (https://youtu.be/NjYD3heC3Js)\n\nTurn 1: Curse of Doom\nTurn 2: Shadow Slash / Shadow Shock\nTurn 3: Haunt\nBring in your Ikky\nTurn 4: Black Claw\nTurns 5-6: Flock\n",
		["teamName"] = "Enok the Stinky",
		["minXP"] = 1,
	},
	[141077] = {
		{
			"BattlePet-0-00000E0BBDB3", -- [1]
			459, -- [2]
			566, -- [3]
			208, -- [4]
			1387, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			1370, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBCAD", -- [1]
			1002, -- [2]
			989, -- [3]
			985, -- [4]
			1320, -- [5]
		}, -- [3]
		["tab"] = 6,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/2164\n\nStrategy added by GenDG\nOf all the strategies, it was the only one that worked for me the first time.\n\nThanks for reading me!\n\nTurn 1: Wind-Up\nTurn 2: Supercharge\nTurn 3: Wind-Up\nChum dies.\nBruce comes in.\nTurn 1: Swap to your Ikky\nTurn 2: Black Claw\nTurn 3: Flock\nTurn 4: Pass (stun).\nTurn 5: Flock\nBruce dies.\nMaws Jr. comes in.\nTurn 1: Flock\nTurn 2: Swap to your Lil' Bling\nTurn 3: Make it Rain\nTurn 4+: Inflation\n",
		["teamName"] = "Not So Bad Down Here",
	},
	[162470] = {
		{
			"BattlePet-0-00000E0BBD0C", -- [1]
			0, -- [2]
			212, -- [3]
			652, -- [4]
			1238, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			0, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 6,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/7695\n\nStrategy added by F1NCH#2182\nBooth Val'kyr work, but with H/H Breed the fight is 1 round longer\n\nTurn 1: Siphon Life\nTurn 2: Haunt\nBring in your Ikky\nTurn 1: Black Claw\nTurn 2: Flock\n",
		["teamName"] = "Living Statues Are Tough",
		["minXP"] = 1,
	},
	[201004] = {
		{
			"BattlePet-0-00000E0BBCE7", -- [1]
			110, -- [2]
			362, -- [3]
			593, -- [4]
			1152, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBD13", -- [1]
			118, -- [2]
			564, -- [3]
			513, -- [4]
			868, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBD9A", -- [1]
			384, -- [2]
			204, -- [3]
			208, -- [4]
			116, -- [5]
		}, -- [3]
		["tab"] = 8,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/19204\n\nStrategy added by Deathrall\nBomb Team, used tranquil from Darks strategy.\n\nTurn 1: Howl\nTurns 2-4: Surge of Power\nClawz comes in\nTurn 5+: Bite\nBring in your Pandaren Water Spirit\nPriority 1: Whirlpool\nPriority 2: Dive\nPriority 3: Water Jet\nMurrey comes in\nBring in your Tranquil Mechanical Yeti\nTurn 15+: Supercharge\nTurn 15+: Call Lightning\nGG\n",
		["teamName"] = "To a Land Down Under",
	},
	[72009] = {
		{
			"BattlePet-0-00000E0BBD2A", -- [1]
			110, -- [2]
			362, -- [3]
			366, -- [4]
			724, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDB3", -- [1]
			459, -- [2]
			640, -- [3]
			282, -- [4]
			1387, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			1370, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [3]
		["tab"] = 2,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/14131\n\nStrategy added by SunFlight#2765\nTurn 1: Dazzling Dance\nTurn 2: Howl\nTurn 3: Pass\nBring in your Iron Starlette\nTurn 1: Toxic Smoke\nTurn 2: Explode\nBring in your Ikky\nTurn 1: Black Claw\nTurns 2-4: Flock\n",
		["teamName"] = "Xu-Fu, Cub of Xuen",
	},
	[104782] = {
		{
			"BattlePet-0-00000E0BBD0C", -- [1]
			422, -- [2]
			218, -- [3]
			652, -- [4]
			1238, -- [5]
		}, -- [1]
		{
			0, -- [1]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			184, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [3]
		["tab"] = 5,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/770\n\nTurn 1: Curse of Doom\nTurn 2: Haunt\nBring in your Level Pet\nTurn 1: Swap to Ikky\nTurn 2: Black Claw\nTurns 3-6: Flock - The Hungry Icefang dies and another enemy pet comes in\nTurns 7+: Quills until Ikky dies\nBring back your Unborn Val'kyr\nTurns 1+: Shadow Shock until the fight is done\n",
		["teamName"] = "Wildlife Protection Force",
	},
	[200685] = {
		{
			"BattlePet-0-00000E0BBD0C", -- [1]
			210, -- [2]
			218, -- [3]
			652, -- [4]
			1238, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBD2F", -- [1]
			921, -- [2]
			919, -- [3]
			0, -- [4]
			1180, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 8,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/18633\n\nStrategy added by Fleshmaiden#21343\nTurn 1: Haunt\nTurn 2: Black Claw\nTurn 3: Hunting Party\n",
		["teamName"] = "Vortex - Rare",
		["minXP"] = 1,
	},
	[68565] = {
		{
			"BattlePet-0-00000E0BBD0C", -- [1]
			0, -- [2]
			218, -- [3]
			652, -- [4]
			1238, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			0, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [2]
		{
			0, -- [1]
		}, -- [3]
		["tab"] = 3,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/3094\n\nStrategy added by Starrbuck\nBased on the strategy created by CrazyFluffy\n\nTurn 1: Curse of Doom\nTurn 2: Haunt\nBring in your Level Pet\nTurn 1: Swap to your Ikky\nTurn 2: Black Claw\nTurn 3: Flock\nTurn 4: Nitun should be dead by now.\n",
		["teamName"] = "Nitun",
		["minXP"] = 1,
	},
	[154919] = {
		{
			"BattlePet-0-00000E0BBCAD", -- [1]
			1002, -- [2]
			0, -- [3]
			0, -- [4]
			1320, -- [5]
		}, -- [1]
		{
			"random:0", -- [1]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 6,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/5508\n\nStrategy added by DragonsAfterDark\nBe cautious, lest you give your enemies the tools to destroy you. *laughs*\n\nVideo for Fight (https://www.youtube.com/watch?v=zXxxLMjdfII)\n\nTurn 1+: Inflation\n",
		["teamName"] = "Voltgorger",
		["minXP"] = 25,
	},
	[201899] = {
		{
			"BattlePet-0-00002107EE9F", -- [1]
			447, -- [2]
			2356, -- [3]
			1954, -- [4]
			2842, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBD2E", -- [1]
			122, -- [2]
			489, -- [3]
			589, -- [4]
			1165, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBD13", -- [1]
			118, -- [2]
			0, -- [3]
			0, -- [4]
			868, -- [5]
		}, -- [3]
		["tab"] = 8,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/18707\n\nStrategy added by nanomeisterr\nTurn 1: Corrosion\nTurn 2: Void Nova\nTurn 3: Poison Protocol\nTurn 4: Corrosion - Anomalus dies\nBring in your Nexus Whelpling\nTurn 1: Arcane Storm\nTurns 2-4: Mana Surge\nTurn 5: Arcane Storm\nTurn 6: Tail Sweep until Nexus Whelpling dies\nBring in your Pandaren Water Spirit\nTurn 1: Water Jet until the fight is won\n",
		["teamName"] = "A New Vocation",
	},
	[97709] = {
		{
			"BattlePet-0-00000E0BBD0C", -- [1]
			422, -- [2]
			218, -- [3]
			652, -- [4]
			1238, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			1370, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 5,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/733\n\nTurn 1: Curse of Doom\nTurn 2: Haunt\nTurn 3: Swap to your Ikky or Zandalari pet\nTurn 4: Black Claw\nTurns 5+: Flock or Hunting Party depending on your pet\n",
		["teamName"] = "Flummoxed",
	},
	[94647] = {
		{
			"BattlePet-0-00000E0BBCF3", -- [1]
			921, -- [2]
			920, -- [3]
			919, -- [4]
			1211, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			1370, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBDC4", -- [1]
			525, -- [2]
			597, -- [3]
			598, -- [4]
			1167, -- [5]
		}, -- [3]
		["tab"] = 4,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/12263\n\nStrategy added by matsminer#2480\nFound this strategy on wowhead created by Hunt3x\nTried writing a script for it, but dont know if it will work\n\nTurn 1: Primal Cry\nTurn 2: Black Claw\nTurns 3-4: Hunting Party - Sometimes the pet might die before the second turn of Hunting Party, should still work\nTurn 5-6: Flock\nTurn 7: Emerald Presence\nTurn 8: Emerald Dream\nTurn 9: Emerald Bite\nTurn 10+: Emerald Bite - Keeping using emerald bite, fill in with emerald presence if it runs out, and emerald dream if you get >700 HP\n",
		["teamName"] = "Dreadwalker",
	},
	[200678] = {
		{
			"BattlePet-0-00000E0BBD2E", -- [1]
			0, -- [2]
			489, -- [3]
			589, -- [4]
			1165, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBF0F", -- [1]
			0, -- [2]
			489, -- [3]
			589, -- [4]
			1721, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 8,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/18741\n\nStrategy added by MiKau\nTurn 1: Arcane Storm\nTurn 2-3: Mana Surge\nTurn 4: Stormborne Whelpling comes in\nTurn 5-7: Mana Surge\n",
		["teamName"] = "Storm-Touched Slyvern",
		["minXP"] = 25,
	},
	[119346] = {
		{
			"BattlePet-0-00000E0BBD73", -- [1]
			360, -- [2]
			312, -- [3]
			163, -- [4]
			378, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDD5", -- [1]
			504, -- [2]
			574, -- [3]
			802, -- [4]
			1416, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 2,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/1831\n\nStrategy added by NostrA#2338\nprops to Aranesh for his/her strategy, i just changed the TD Script and Strategy to make Teroclaw viable again\n\nTurn 1: use Dodge\nTurn 2-4: use Stampede\nTurn 5+: use Flurry until Unfortunate Defias resurrects\nThen: use Stampede\nAn enemy pet comes in\nTurn 1+: use Flurry until your Rabbit dies\nBring in your Teroclaw Hatchling\nenemy HP < 618 : use Ravage\nif the enemy is a Flying Type, you want to use Ravage when the enemy HP is under 406 \nwhen not active: use Nature's Ward\nelse: use Alpha Strike\n",
		["teamName"] = "Unfortunate Defias",
		["minXP"] = 25,
	},
	[200686] = {
		{
			"BattlePet-0-00000E0BBF3E", -- [1]
			943, -- [2]
			786, -- [3]
			1762, -- [4]
			1963, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBCF3", -- [1]
			921, -- [2]
			920, -- [3]
			919, -- [4]
			1211, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBC65", -- [1]
			119, -- [2]
			0, -- [3]
			163, -- [4]
			479, -- [5]
		}, -- [3]
		["tab"] = 8,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/18586\n\nStrategy added by DragonsAfterDark\nThe same team can be used for the Legendary (https://www.wow-petguide.com/Strategy/18585/Wildfire_-_Legendary) & Rare (https://www.wow-petguide.com/Strategy/18587/Wildfire_-_Rare) versions.\n\nMy Team for defeating the Storm-Touched Skitterers can be found here (https://youtu.be/UDUYys-uxuk?t=55).\n\nTurn 1: Blistering Cold\nTurn 2: Chop\nTurn 3: BONESTORM\nTurn 4: Blistering Cold\nBring in your Zandalari Anklerender\nTurn 5: Primal Cry\nTurn 6: Black Claw\nTurns 7-8: Hunting Party\nBring in your Elfin Rabbit\nTurn 9+: Stampede\n",
		["teamName"] = "Wildfire - Epic",
	},
	[94643] = {
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			1370, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDEE", -- [1]
			406, -- [2]
			453, -- [3]
			490, -- [4]
			1155, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBDC4", -- [1]
			525, -- [2]
			597, -- [3]
			598, -- [4]
			1167, -- [5]
		}, -- [3]
		["tab"] = 4,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/311\n\nStrategy added by Remte\nNOTE: If Ikky gets frogged just start the fight over.\nTurn 1: Black Claw\nTurns 2+: Flock - Mirecroak dies.\nNext enemy pet comes in.\nTurns 1+: Flock until Ikky is dead.\n\nBring in your Backup Pets to clear the fight.\n",
		["teamName"] = "Mirecroak",
	},
	[119341] = {
		{
			"BattlePet-0-00000E0BBDB3", -- [1]
			459, -- [2]
			566, -- [3]
			208, -- [4]
			1387, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDD5", -- [1]
			504, -- [2]
			312, -- [3]
			802, -- [4]
			1416, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 2,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/1947\n\nStrategy added by Zlazh\nTurn 1: Wind-Up\nTurn 2: Supercharge\nTurn 3: Wind-Up\nTurn 4: Powerball\nTurn 5: An enemy pet comes in\nTurn 6~10: Cast Powerball until Iron Starlette dies\nTurn 11: Bring out yourTeroclaw Hatchling\nTurn 12: Dodge\nTurn 13~: If enemy pet Flying Type cast Alpha Strike until enemy pet hp < 400 then cast Ravage, otherwise cast Ravage then Alpha Strike until enemy pet dies\n",
		["teamName"] = "Mining Monkey",
		["minXP"] = 1,
	},
	[197350] = {
		{
			"BattlePet-0-00002107EE9F", -- [1]
			447, -- [2]
			2356, -- [3]
			1954, -- [4]
			2842, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBD2E", -- [1]
			122, -- [2]
			489, -- [3]
			589, -- [4]
			1165, -- [5]
		}, -- [2]
		{
			0, -- [1]
		}, -- [3]
		["tab"] = 8,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/16498\n\nStrategy added by DragonsAfterDark\n~*~ If you don't want to use this for leveling, and you're using the tdScript, remove the line:\n change(#3)\n\nTurn 1: Corrosion\nTurn 2: Void Nova\nTurn 3: Poison Protocol\nTurn 4+: Corrosion until the Cockroach dies\nCat comes in\nTurn 1+: Corrosion until Cat dies\nChicken comes in\nTurn 1+: Void Nova & Corrosion until Anomalus dies\nOptional: Bring in your Level Pet\n~: Bring in your Nexus Whelpling if skipping the Level Pet, or Swap to your Nexus Whelpling if your Level Pet is in\nTurn 1: Arcane Storm\nTurns 2-4: Mana Surge\n",
		["teamName"] = "You Have to Start Somewhere",
		["minXP"] = 1,
	},
	[202452] = {
		{
			"BattlePet-0-00000E0BBD0C", -- [1]
			0, -- [2]
			218, -- [3]
			652, -- [4]
			1238, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			0, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [2]
		{
			"random:0", -- [1]
		}, -- [3]
		["tab"] = 8,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://www.wow-petguide.com/Strategy/18615\n\nStrategy added by Wonderpray\nStraight forward pet battle, very strong team very effective!\n\nScript made by: Calipso\n\nTurn 1: Curse of Doom\nTurn 2: Haunt\nTurn 3: Bring in Ikky\nTurn 4: Black Claw\nTurns 5-7: Flock\nTurn 8: If necessary finish off with 3rd pet or Ikky\n",
		["teamName"] = "Right Twice a Day",
		["minXP"] = 1,
	},
	[94646] = {
		{
			"BattlePet-0-00000E0BBD0C", -- [1]
			422, -- [2]
			218, -- [3]
			652, -- [4]
			1238, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000E0BBDCE", -- [1]
			1370, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000E0BBDC4", -- [1]
			525, -- [2]
			597, -- [3]
			598, -- [4]
			1167, -- [5]
		}, -- [3]
		["tab"] = 4,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/6531\n\nStrategy added by Yogi77\nTurn 1: Curse of Doom  if Vile Blood of Draenor critted on ikky, restart the fight!\nTurn 2: Haunt\nBring in your Ikky\nTurn 1: Black Claw\nTurn 2: Flock\nBring in your Emerald Proto-Whelp\nTurn 1: Emerald Presence\nTurn 2: Emerald Dream\nTurn 3: Emerald Bite\nrepeat all steps on cooldown\n",
		["teamName"] = "Vile Blood of Draenor",
	},
	[87124] = {
		{
			"BattlePet-0-00000E0BBCC3", -- [1]
			115, -- [2]
			647, -- [3]
			282, -- [4]
			844, -- [5]
		}, -- [1]
		{
			0, -- [1]
		}, -- [2]
		{
			0, -- [1]
		}, -- [3]
		["tab"] = 4,
		["notes"] = "Xu-Fu's Pet Guides =^_^=\nhttps://wow-petguide.com/Strategy/627\n\nTurn 1: Build Turret\nTurn 2: Metal Fist\nTurn 3: Metal Fist\nStart from the top until both Pixiebell and Tally are dead.\nThen:: Swap in your level pets one after the other (or just one of them, up to you).\nThen:: Swap back to your Clockwork Gnome and finish Doodle with Metal Fist.\n",
		["teamName"] = "Ashlei",
	},
}
Rematch4Settings = {
	["UseMinimapButton"] = true,
	["ShowNotesInBattle"] = false,
	["HideLevelBubbles"] = true,
	["QueueAutoLearnOnly"] = false,
	["SlimListSmallText"] = true,
	["QueueSanctuary"] = {
		["BattlePet-0-000021A14258"] = "QQQA2AL",
		["BattlePet-0-000021A137EE"] = "QQQA2AG",
		["BattlePet-0-000021A14D2C"] = "QQQA2A8",
		["BattlePet-0-000021A15023"] = "QQQ32J5",
		["BattlePet-0-00000E0BBEF6"] = "QQQ31LH",
		["BattlePet-0-00000E0BBF25"] = "QQQA1ML",
		["BattlePet-0-000021A1B5B5"] = "QQQ72J8",
		["BattlePet-0-000021A148BC"] = "QQQC2AC",
		["BattlePet-0-00000E0BBEC5"] = "QQQ31MM",
		["BattlePet-0-00000E0BBE96"] = "QQQA1DT",
		["BattlePet-0-00000E0BBE81"] = "QQQ3MO",
		["BattlePet-0-000021A1B8CC"] = "QQQA2IL",
		["BattlePet-0-00000E0BBF24"] = "QQQ71NG",
		["BattlePet-0-000021A142C5"] = "QQQB2AQ",
		["BattlePet-0-00000E7AEFC3"] = "QQQA22M",
		["BattlePet-0-00002115302C"] = "QQQA1OF",
		["BattlePet-0-000021A14631"] = "QQQC2AI",
		["BattlePet-0-000021A14CA5"] = "QQQ32A4",
		["BattlePet-0-00000E0BBF0C"] = "QQQ71M9",
		["BattlePet-0-000021153C7F"] = "QQQ41N2",
		["BattlePet-0-000021153CF9"] = "QQQB1MG",
		["BattlePet-0-00000E0BBE9F"] = "QQQ61HV",
		["BattlePet-0-00000E0BBE8E"] = "QQQB1DF",
		["BattlePet-0-000021A15164"] = "QQQ72JA",
		["BattlePet-0-000021A14E7C"] = "QQQ62J7",
		["BattlePet-0-000021152F0A"] = "QQQB1OH",
		["BattlePet-0-000021A2DF3D"] = "QQQ82IR",
		["BattlePet-0-000021153FDF"] = "QQQ31RT",
		["BattlePet-0-000021A13EFA"] = "QQQ32B0",
		["BattlePet-0-000021A14336"] = "QQQ72AP",
		["BattlePet-0-000021A15084"] = "QQQ52JF",
		["BattlePet-0-00000E0BBF28"] = "QQQ51M8",
		["BattlePet-0-000021147756"] = "QQQB1RQ",
		["BattlePet-0-000021A1B6D6"] = "QQQ32JC",
		["BattlePet-0-000021A4BFCC"] = "QQQ63BP",
		["BattlePet-0-000021241BBB"] = "QQQB39P",
		["BattlePet-0-00000E0BBEF9"] = "QQQ31RP",
		["BattlePet-0-00000E0BBEF0"] = "QQQB1M1",
		["BattlePet-0-00000E762C2F"] = "QQQ51NI",
		["BattlePet-0-000021B1780E"] = "QQQ735C",
		["BattlePet-0-000021A149D9"] = "QQQC2AD",
		["BattlePet-0-000021A14B23"] = "QQQ42A6",
		["BattlePet-0-00000E0BBEFC"] = "QQQ81LI",
		["BattlePet-0-000021065C41"] = "QQQ636G",
		["BattlePet-0-000021A13D8B"] = "QQQ92B0",
		["BattlePet-0-000021A147F3"] = "QQQ62AE",
		["BattlePet-0-00000E0BBF02"] = "QQQ91M7",
		["BattlePet-0-00002114762B"] = "QQQA1M0",
		["BattlePet-0-000021A14706"] = "QQQC2AA",
		["BattlePet-0-00000E7AF511"] = "QQQ822H",
		["BattlePet-0-00000E0BBEB4"] = "QQQ41HD",
		["BattlePet-0-00000E7AF086"] = "QQQ322L",
		["BattlePet-0-00000E762BF6"] = "QQQ81NI",
		["BattlePet-0-000021A14EC2"] = "QQQ92JD",
		["BattlePet-0-00000E0BBE8C"] = "QQQ71IF",
		["BattlePet-0-00000E0BBE94"] = "QQQB1DN",
		["BattlePet-0-000021A14C46"] = "QQQ42A5",
		["BattlePet-0-00000E0BBF2A"] = "QQQ9CD",
		["BattlePet-0-000021A15554"] = "QQQ92J6",
		["BattlePet-0-000021A13CD2"] = "QQQB2AT",
		["BattlePet-0-00000E0BBE05"] = "QQQA1HP",
		["BattlePet-0-00000E0BBE99"] = "QQQB1DG",
		["BattlePet-0-00000E0BBE97"] = "QQQB1DO",
		["BattlePet-0-00000E0BBD28"] = "QQQBN8",
		["BattlePet-0-000021152E51"] = "QQQ31OI",
		["BattlePet-0-0000210BE800"] = "QQQC368",
		["BattlePet-0-00000E0BBD1F"] = "QQQ3MJ",
		["BattlePet-0-000021A1511F"] = "QQQB2JE",
		["BattlePet-0-000021A13719"] = "QQQB2AJ",
		["BattlePet-0-00000E0BBF03"] = "QQQA1HO",
		["BattlePet-0-000021A1B943"] = "QQQC2IT",
		["BattlePet-0-00000E0BBF0B"] = "QQQ31N3",
		["BattlePet-0-000021A14BF7"] = "QQQ32AB",
		["BattlePet-0-00000E0BBD81"] = "QQQ8N3",
		["BattlePet-0-000021A15232"] = "QQQC2JH",
		["BattlePet-0-00000E0BBE9D"] = "QQQ71HQ",
		["BattlePet-0-000021A150DE"] = "QQQB2J9",
		["BattlePet-0-000021A143C1"] = "QQQ92AO",
		["BattlePet-0-0000216A45C2"] = "QQQ31SF",
		["BattlePet-0-00000E6C2894"] = "QQQ41LD",
		["BattlePet-0-000021A13FB5"] = "QQQ72AR",
		["BattlePet-0-000021A14F94"] = "QQQ32JK",
		["BattlePet-0-000021A1B5FB"] = "QQQ32JI",
		["BattlePet-0-000021A14A5F"] = "QQQ62A7",
		["BattlePet-0-000021153EA8"] = "QQQB1MB",
		["BattlePet-0-00000E0BBF35"] = "QQQC1NG",
		["BattlePet-0-00000E77F974"] = "QQQ81LQ",
		["BattlePet-0-000021A1B919"] = "QQQ92IN",
		["BattlePet-0-000021A151AD"] = "QQQA2JB",
		["BattlePet-0-0000210BE6DA"] = "QQQ5374",
		["BattlePet-0-00000E0BBE07"] = "QQQ31HN",
		["BattlePet-0-000021A14907"] = "QQQ62AF",
		["BattlePet-0-000021A135EB"] = "QQQ52AM",
		["BattlePet-0-000021A2DE41"] = "QQQ32IQ",
		["BattlePet-0-000021A14BAF"] = "QQQB2A9",
		["BattlePet-0-00000E0BBEDE"] = "QQQC1M6",
		["BattlePet-0-000021A14463"] = "QQQ52AV",
		["BattlePet-0-00000E0BBF27"] = "QQQA1ML",
		["BattlePet-0-00000E6C24FA"] = "QQQA1LE",
		["BattlePet-0-0000210C13D1"] = "QQQ737Q",
		["BattlePet-0-0000216E4603"] = "QQQ33CO",
		["BattlePet-0-00000E0BBD2C"] = "QQQAHN",
	},
	["Sort"] = {
		["Order"] = 2,
		["FavoritesFirst"] = true,
	},
	["ColorPetNames"] = true,
	["ToolbarDismiss"] = true,
	["PetCardXPos"] = 1759.953002929688,
	["ManuallySlotted"] = {
	},
	["ShowImportButton"] = true,
	["ElvUIToastDefaulted"] = true,
	["ActivePanel"] = 1,
	["PetCardInBattle"] = false,
	["ShowSpeciesID"] = true,
	["ConflictOverwrite"] = true,
	["AllowHiddenPets"] = true,
	["AutoLoad"] = true,
	["UseMiniQueue"] = true,
	["FavoriteFilters"] = {
		{
			"non-rare at 25", -- [1]
			{
				["Other"] = {
				},
				["Expansion"] = {
				},
				["Rarity"] = {
					true, -- [1]
					true, -- [2]
					true, -- [3]
				},
				["Types"] = {
				},
				["Tough"] = {
				},
				["Level"] = {
					[4] = true,
				},
				["Sources"] = {
				},
				["Similar"] = {
				},
				["Breed"] = {
				},
				["Script"] = {
				},
				["Strong"] = {
				},
				["Collected"] = {
				},
				["Favorite"] = {
				},
				["Moveset"] = {
				},
			}, -- [2]
		}, -- [1]
		{
			"Safari pets", -- [1]
			{
				["Other"] = {
					["CurrentZone"] = true,
				},
				["Expansion"] = {
				},
				["Strong"] = {
				},
				["Types"] = {
				},
				["Tough"] = {
				},
				["Level"] = {
				},
				["Sources"] = {
					[5] = true,
				},
				["Similar"] = {
				},
				["Breed"] = {
				},
				["Script"] = {
				},
				["Rarity"] = {
				},
				["Collected"] = {
					["Owned"] = true,
				},
				["Favorite"] = {
				},
				["Moveset"] = {
				},
			}, -- [2]
		}, -- [2]
	},
	["CollectionChartSources"] = true,
	["PetCardForLinks"] = false,
	["HideRarityBorders"] = true,
	["LockPosition"] = true,
	["QueueAutoLearn"] = true,
	["HideMenuHelp"] = true,
	["LockWindow"] = true,
	["CornerPos"] = "BOTTOMLEFT",
	["UseTypeBar"] = false,
	["ShowOnTarget"] = true,
	["QueueDoubleClick"] = true,
	["CustomScaleValue"] = 100,
	["StrongVsLevel"] = true,
	["QueueActiveSort"] = true,
	["HiddenPets"] = {
		[331] = true,
	},
	["FixedPetCard"] = true,
	["AutoLoadShow"] = false,
	["PromptWithMinimized"] = false,
	["DialogYPos"] = 666.9854736328125,
	["ShowAfterBattle"] = true,
	["NotesHeight"] = 445.9998779296875,
	["ShowOnInjured"] = true,
	["QueueSortFavoritesFirst"] = true,
	["NotesNoESC"] = true,
	["JournalPanel"] = 1,
	["BackupCount"] = 277,
	["HidePetToast"] = true,
	["ShowLevelingSlot"] = true,
	["SafariHatShine"] = true,
	["Minimized"] = true,
	["ClickPetCard"] = false,
	["ExpandedOptHeaders"] = {
	},
	["AllowHiddenPetsDefaulted"] = true,
	["TeamGroups"] = {
		{
			"Miscellaneous", -- [1]
			"Interface\\Icons\\PetJournalPortrait", -- [2]
		}, -- [1]
		{
			"Instanced Battles", -- [1]
			4661644, -- [2]
		}, -- [2]
		{
			"Pandaria", -- [1]
			572035, -- [2]
		}, -- [3]
		{
			"Draenor", -- [1]
			458224, -- [2]
		}, -- [4]
		{
			"Legion", -- [1]
			135800, -- [2]
		}, -- [5]
		{
			"BFA", -- [1]
			2565244, -- [2]
		}, -- [6]
		{
			"Shadowlands", -- [1]
			237542, -- [2]
		}, -- [7]
		{
			"Dragonflight", -- [1]
			587740, -- [2]
		}, -- [8]
	},
	["SinglePanel"] = true,
	["PreferredMode"] = 1,
	["NotesLeft"] = 1547.71435546875,
	["Sanctuary"] = {
		["BattlePet-0-000021A14258"] = {
			1, -- [1]
			true, -- [2]
			2389, -- [3]
			23, -- [4]
			1066, -- [5]
			205, -- [6]
			193, -- [7]
			1, -- [8]
		},
		["BattlePet-0-00000E0BBE94"] = {
			1, -- [1]
			true, -- [2]
			1463, -- [3]
			23, -- [4]
			1356, -- [5]
			251, -- [6]
			266, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBD21"] = {
			4, -- [1]
			true, -- [2]
			1178, -- [3]
			25, -- [4]
			1400, -- [5]
			325, -- [6]
			260, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBD5D"] = {
			1, -- [1]
			true, -- [2]
			749, -- [3]
			25, -- [4]
			1400, -- [5]
			260, -- [6]
			325, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBD73"] = {
			3, -- [1]
			true, -- [2]
			378, -- [3]
			25, -- [4]
			1546, -- [5]
			227, -- [6]
			322, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBE3B"] = {
			1, -- [1]
			true, -- [2]
			569, -- [3]
			25, -- [4]
			1562, -- [5]
			260, -- [6]
			276, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBDD5"] = {
			16, -- [1]
			true, -- [2]
			1416, -- [3]
			25, -- [4]
			1546, -- [5]
			289, -- [6]
			260, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBE9D"] = {
			1, -- [1]
			true, -- [2]
			1594, -- [3]
			23, -- [4]
			1124, -- [5]
			205, -- [6]
			184, -- [7]
			1, -- [8]
		},
		["BattlePet-0-000021065C41"] = {
			1, -- [1]
			true, -- [2]
			3280, -- [3]
			23, -- [4]
			1428, -- [5]
			190, -- [6]
			202, -- [7]
			2, -- [8]
		},
		["BattlePet-0-00000E0BBEC5"] = {
			1, -- [1]
			true, -- [2]
			1750, -- [3]
			23, -- [4]
			1445, -- [5]
			269, -- [6]
			224, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBE96"] = {
			1, -- [1]
			true, -- [2]
			1469, -- [3]
			23, -- [4]
			1023, -- [5]
			210, -- [6]
			196, -- [7]
			1, -- [8]
		},
		["BattlePet-0-00000E0BBDDE"] = {
			1, -- [1]
			true, -- [2]
			1468, -- [3]
			25, -- [4]
			1485, -- [5]
			281, -- [6]
			277, -- [7]
			4, -- [8]
		},
		["BattlePet-0-000021A1B8CC"] = {
			1, -- [1]
			true, -- [2]
			2645, -- [3]
			23, -- [4]
			1163, -- [5]
			228, -- [6]
			210, -- [7]
			2, -- [8]
		},
		["BattlePet-0-00000E0BBF24"] = {
			1, -- [1]
			true, -- [2]
			1776, -- [3]
			23, -- [4]
			1535, -- [5]
			259, -- [6]
			166, -- [7]
			3, -- [8]
		},
		["BattlePet-0-00000E0BBF26"] = {
			1, -- [1]
			true, -- [2]
			1976, -- [3]
			25, -- [4]
			1400, -- [5]
			325, -- [6]
			260, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E7AEFC3"] = {
			1, -- [1]
			true, -- [2]
			2134, -- [3]
			23, -- [4]
			1431, -- [5]
			266, -- [6]
			236, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBE35"] = {
			1, -- [1]
			true, -- [2]
			514, -- [3]
			25, -- [4]
			1400, -- [5]
			325, -- [6]
			260, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00002115302C"] = {
			1, -- [1]
			true, -- [2]
			1807, -- [3]
			23, -- [4]
			1206, -- [5]
			281, -- [6]
			266, -- [7]
			4, -- [8]
		},
		["BattlePet-0-000021A14631"] = {
			1, -- [1]
			true, -- [2]
			2386, -- [3]
			23, -- [4]
			1432, -- [5]
			221, -- [6]
			221, -- [7]
			3, -- [8]
		},
		["BattlePet-0-000021A147F3"] = {
			1, -- [1]
			true, -- [2]
			2382, -- [3]
			23, -- [4]
			1515, -- [5]
			228, -- [6]
			207, -- [7]
			3, -- [8]
		},
		["BattlePet-0-000021A135EB"] = {
			1, -- [1]
			true, -- [2]
			2390, -- [3]
			23, -- [4]
			1204, -- [5]
			200, -- [6]
			297, -- [7]
			3, -- [8]
		},
		["BattlePet-0-00000E0BBDEE"] = {
			12, -- [1]
			true, -- [2]
			1155, -- [3]
			25, -- [4]
			1725, -- [5]
			276, -- [6]
			244, -- [7]
			4, -- [8]
		},
		["BattlePet-0-000021A143C1"] = {
			1, -- [1]
			true, -- [2]
			2392, -- [3]
			23, -- [4]
			1178, -- [5]
			196, -- [6]
			241, -- [7]
			2, -- [8]
		},
		["BattlePet-0-00000E6C24FA"] = {
			1, -- [1]
			true, -- [2]
			1710, -- [3]
			23, -- [4]
			1009, -- [5]
			205, -- [6]
			205, -- [7]
			1, -- [8]
		},
		["BattlePet-0-00000E0BBD2F"] = {
			7, -- [1]
			true, -- [2]
			1180, -- [3]
			25, -- [4]
			1237, -- [5]
			305, -- [6]
			305, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBDCA"] = {
			4, -- [1]
			true, -- [2]
			1541, -- [3]
			25, -- [4]
			1465, -- [5]
			289, -- [6]
			273, -- [7]
			4, -- [8]
		},
		["BattlePet-0-000021A15164"] = {
			1, -- [1]
			true, -- [2]
			2666, -- [3]
			23, -- [4]
			1363, -- [5]
			246, -- [6]
			214, -- [7]
			3, -- [8]
		},
		["BattlePet-0-00000E0BBD41"] = {
			1, -- [1]
			true, -- [2]
			291, -- [3]
			25, -- [4]
			1709, -- [5]
			257, -- [6]
			257, -- [7]
			4, -- [8]
		},
		["BattlePet-0-000021152F0A"] = {
			1, -- [1]
			true, -- [2]
			1809, -- [3]
			23, -- [4]
			1121, -- [5]
			246, -- [6]
			259, -- [7]
			3, -- [8]
		},
		["BattlePet-0-00000E0BBEAC"] = {
			1, -- [1]
			true, -- [2]
			1442, -- [3]
			25, -- [4]
			1725, -- [5]
			260, -- [6]
			260, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBCA2"] = {
			2, -- [1]
			true, -- [2]
			627, -- [3]
			25, -- [4]
			1627, -- [5]
			305, -- [6]
			227, -- [7]
			4, -- [8]
		},
		["BattlePet-0-000021A14336"] = {
			1, -- [1]
			true, -- [2]
			2393, -- [3]
			23, -- [4]
			1466, -- [5]
			232, -- [6]
			207, -- [7]
			3, -- [8]
		},
		["BattlePet-0-000021147756"] = {
			1, -- [1]
			true, -- [2]
			1914, -- [3]
			23, -- [4]
			1066, -- [5]
			193, -- [6]
			205, -- [7]
			1, -- [8]
		},
		["BattlePet-0-000021A4BFCC"] = {
			1, -- [1]
			true, -- [2]
			3449, -- [3]
			1, -- [4]
			168, -- [5]
			11, -- [6]
			9, -- [7]
			4, -- [8]
		},
		["BattlePet-0-000021A13FB5"] = {
			1, -- [1]
			true, -- [2]
			2395, -- [3]
			23, -- [4]
			1163, -- [5]
			244, -- [6]
			196, -- [7]
			2, -- [8]
		},
		["random:1"] = {
			1, -- [1]
		},
		["BattlePet-0-00000E0BBD3A"] = {
			1, -- [1]
			true, -- [2]
			1343, -- [3]
			25, -- [4]
			1400, -- [5]
			260, -- [6]
			325, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBCE6"] = {
			1, -- [1]
			true, -- [2]
			489, -- [3]
			25, -- [4]
			1400, -- [5]
			305, -- [6]
			273, -- [7]
			4, -- [8]
		},
		["BattlePet-0-000021A14B23"] = {
			1, -- [1]
			true, -- [2]
			2374, -- [3]
			23, -- [4]
			1112, -- [5]
			253, -- [6]
			202, -- [7]
			2, -- [8]
		},
		["BattlePet-0-000021A149D9"] = {
			1, -- [1]
			true, -- [2]
			2381, -- [3]
			23, -- [4]
			1328, -- [5]
			232, -- [6]
			232, -- [7]
			3, -- [8]
		},
		["BattlePet-0-00000E0BBD51"] = {
			3, -- [1]
			true, -- [2]
			1146, -- [3]
			25, -- [4]
			1546, -- [5]
			289, -- [6]
			260, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E7AF511"] = {
			1, -- [1]
			true, -- [2]
			2129, -- [3]
			23, -- [4]
			1020, -- [5]
			205, -- [6]
			205, -- [7]
			1, -- [8]
		},
		["BattlePet-0-00000E0BBEE1"] = {
			4, -- [1]
			true, -- [2]
			1349, -- [3]
			25, -- [4]
			1359, -- [5]
			333, -- [6]
			260, -- [7]
			4, -- [8]
		},
		["random:6"] = {
			2, -- [1]
		},
		["BattlePet-0-000021A14EC2"] = {
			1, -- [1]
			true, -- [2]
			2669, -- [3]
			23, -- [4]
			1475, -- [5]
			230, -- [6]
			266, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBE8C"] = {
			1, -- [1]
			true, -- [2]
			1615, -- [3]
			23, -- [4]
			1259, -- [5]
			246, -- [6]
			235, -- [7]
			3, -- [8]
		},
		["BattlePet-0-00000E0BBC94"] = {
			1, -- [1]
			true, -- [2]
			248, -- [3]
			25, -- [4]
			1400, -- [5]
			289, -- [6]
			289, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBF2A"] = {
			1, -- [1]
			true, -- [2]
			397, -- [3]
			23, -- [4]
			1431, -- [5]
			239, -- [6]
			266, -- [7]
			4, -- [8]
		},
		["BattlePet-0-000021A15554"] = {
			1, -- [1]
			true, -- [2]
			2662, -- [3]
			23, -- [4]
			1311, -- [5]
			221, -- [6]
			249, -- [7]
			3, -- [8]
		},
		["BattlePet-0-00000E0BBCF7"] = {
			1, -- [1]
			true, -- [2]
			537, -- [3]
			25, -- [4]
			1806, -- [5]
			260, -- [6]
			244, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00002105826C"] = {
			1, -- [1]
			true, -- [2]
			2959, -- [3]
			25, -- [4]
			1441, -- [5]
			301, -- [6]
			260, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBC6D"] = {
			1, -- [1]
			true, -- [2]
			630, -- [3]
			25, -- [4]
			1400, -- [5]
			257, -- [6]
			322, -- [7]
			4, -- [8]
		},
		["BattlePet-0-000021A14BF7"] = {
			1, -- [1]
			true, -- [2]
			2379, -- [3]
			23, -- [4]
			1034, -- [5]
			204, -- [6]
			196, -- [7]
			1, -- [8]
		},
		["BattlePet-0-00000E0BBD81"] = {
			1, -- [1]
			true, -- [2]
			739, -- [3]
			23, -- [4]
			905, -- [5]
			205, -- [6]
			228, -- [7]
			1, -- [8]
		},
		["random:7"] = {
			2, -- [1]
		},
		["BattlePet-0-000021153FDF"] = {
			1, -- [1]
			true, -- [2]
			1917, -- [3]
			23, -- [4]
			1175, -- [5]
			228, -- [6]
			202, -- [7]
			2, -- [8]
		},
		["BattlePet-0-00000E77F974"] = {
			1, -- [1]
			true, -- [2]
			1722, -- [3]
			23, -- [4]
			1112, -- [5]
			238, -- [6]
			213, -- [7]
			2, -- [8]
		},
		["BattlePet-0-00000E0BBCB6"] = {
			3, -- [1]
			true, -- [2]
			227, -- [3]
			25, -- [4]
			1400, -- [5]
			325, -- [6]
			260, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBD0F"] = {
			4, -- [1]
			true, -- [2]
			538, -- [3]
			25, -- [4]
			1806, -- [5]
			276, -- [6]
			227, -- [7]
			4, -- [8]
		},
		["BattlePet-0-000021153EA8"] = {
			1, -- [1]
			true, -- [2]
			1739, -- [3]
			23, -- [4]
			1066, -- [5]
			182, -- [6]
			216, -- [7]
			1, -- [8]
		},
		["BattlePet-0-00000E0BBF35"] = {
			1, -- [1]
			true, -- [2]
			1776, -- [3]
			23, -- [4]
			1655, -- [5]
			266, -- [6]
			191, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBD0C"] = {
			45, -- [1]
			true, -- [2]
			1238, -- [3]
			25, -- [4]
			1562, -- [5]
			292, -- [6]
			244, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBC65"] = {
			3, -- [1]
			true, -- [2]
			479, -- [3]
			25, -- [4]
			1465, -- [5]
			224, -- [6]
			338, -- [7]
			4, -- [8]
		},
		["random:9"] = {
			2, -- [1]
		},
		["BattlePet-0-0000210BE6DA"] = {
			1, -- [1]
			true, -- [2]
			3300, -- [3]
			23, -- [4]
			1063, -- [5]
			184, -- [6]
			221, -- [7]
			1, -- [8]
		},
		["random:2"] = {
			1, -- [1]
		},
		["BattlePet-0-000021A14907"] = {
			1, -- [1]
			true, -- [2]
			2383, -- [3]
			23, -- [4]
			1480, -- [5]
			221, -- [6]
			221, -- [7]
			3, -- [8]
		},
		["random:3"] = {
			3, -- [1]
		},
		["BattlePet-0-000021A1B943"] = {
			1, -- [1]
			true, -- [2]
			2653, -- [3]
			23, -- [4]
			1193, -- [5]
			193, -- [6]
			179, -- [7]
			1, -- [8]
		},
		["BattlePet-0-000021A14BAF"] = {
			1, -- [1]
			true, -- [2]
			2377, -- [3]
			23, -- [4]
			1152, -- [5]
			190, -- [6]
			190, -- [7]
			1, -- [8]
		},
		["BattlePet-0-00000E0BBEDE"] = {
			1, -- [1]
			true, -- [2]
			1734, -- [3]
			23, -- [4]
			1328, -- [5]
			218, -- [6]
			246, -- [7]
			3, -- [8]
		},
		["BattlePet-0-000021A14463"] = {
			1, -- [1]
			true, -- [2]
			2399, -- [3]
			23, -- [4]
			1017, -- [5]
			212, -- [6]
			262, -- [7]
			2, -- [8]
		},
		["BattlePet-0-00000E0BBDCE"] = {
			79, -- [1]
			true, -- [2]
			1532, -- [3]
			25, -- [4]
			1319, -- [5]
			322, -- [6]
			273, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBE4E"] = {
			4, -- [1]
			true, -- [2]
			1601, -- [3]
			25, -- [4]
			1197, -- [5]
			366, -- [6]
			260, -- [7]
			4, -- [8]
		},
		["BattlePet-0-0000210C13D1"] = {
			1, -- [1]
			true, -- [2]
			3322, -- [3]
			23, -- [4]
			1356, -- [5]
			281, -- [6]
			239, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBD44"] = {
			1, -- [1]
			true, -- [2]
			1149, -- [3]
			25, -- [4]
			1400, -- [5]
			289, -- [6]
			289, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBF27"] = {
			1, -- [1]
			true, -- [2]
			1749, -- [3]
			23, -- [4]
			1190, -- [5]
			246, -- [6]
			246, -- [7]
			3, -- [8]
		},
		["BattlePet-0-00000E0BBD09"] = {
			8, -- [1]
			true, -- [2]
			338, -- [3]
			25, -- [4]
			1627, -- [5]
			273, -- [6]
			260, -- [7]
			4, -- [8]
		},
		["BattlePet-0-000021A137EE"] = {
			1, -- [1]
			true, -- [2]
			2384, -- [3]
			23, -- [4]
			1225, -- [5]
			232, -- [6]
			253, -- [7]
			3, -- [8]
		},
		["BattlePet-0-00000E0BBCD5"] = {
			1, -- [1]
			true, -- [2]
			650, -- [3]
			25, -- [4]
			1481, -- [5]
			289, -- [6]
			273, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBE04"] = {
			2, -- [1]
			true, -- [2]
			1628, -- [3]
			25, -- [4]
			1465, -- [5]
			273, -- [6]
			289, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBDB3"] = {
			30, -- [1]
			true, -- [2]
			1387, -- [3]
			25, -- [4]
			1725, -- [5]
			276, -- [6]
			244, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBE02"] = {
			1, -- [1]
			true, -- [2]
			1426, -- [3]
			25, -- [4]
			2537, -- [5]
			260, -- [6]
			179, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBDEC"] = {
			2, -- [1]
			true, -- [2]
			1450, -- [3]
			25, -- [4]
			1400, -- [5]
			289, -- [6]
			289, -- [7]
			4, -- [8]
		},
		["BattlePet-0-000021152E51"] = {
			1, -- [1]
			true, -- [2]
			1810, -- [3]
			23, -- [4]
			963, -- [5]
			207, -- [6]
			207, -- [7]
			1, -- [8]
		},
		["BattlePet-0-00000E0BBF0F"] = {
			5, -- [1]
			true, -- [2]
			1721, -- [3]
			25, -- [4]
			1400, -- [5]
			305, -- [6]
			273, -- [7]
			4, -- [8]
		},
		["BattlePet-0-000021A151AD"] = {
			1, -- [1]
			true, -- [2]
			2667, -- [3]
			23, -- [4]
			1245, -- [5]
			247, -- [6]
			233, -- [7]
			3, -- [8]
		},
		["BattlePet-0-00000E0BBEB4"] = {
			1, -- [1]
			true, -- [2]
			1581, -- [3]
			23, -- [4]
			1221, -- [5]
			329, -- [6]
			224, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBF3E"] = {
			27, -- [1]
			true, -- [2]
			1963, -- [3]
			25, -- [4]
			1481, -- [5]
			276, -- [6]
			276, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBD1B"] = {
			26, -- [1]
			true, -- [2]
			339, -- [3]
			25, -- [4]
			1546, -- [5]
			273, -- [6]
			273, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBED0"] = {
			4, -- [1]
			true, -- [2]
			1974, -- [3]
			25, -- [4]
			1400, -- [5]
			260, -- [6]
			325, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBF25"] = {
			1, -- [1]
			true, -- [2]
			1749, -- [3]
			23, -- [4]
			1009, -- [5]
			205, -- [6]
			205, -- [7]
			1, -- [8]
		},
		["BattlePet-0-00000E0BBE9F"] = {
			1, -- [1]
			true, -- [2]
			1599, -- [3]
			23, -- [4]
			1492, -- [5]
			190, -- [6]
			190, -- [7]
			2, -- [8]
		},
		["BattlePet-0-000021A1511F"] = {
			1, -- [1]
			true, -- [2]
			2670, -- [3]
			23, -- [4]
			1046, -- [5]
			197, -- [6]
			205, -- [7]
			1, -- [8]
		},
		["BattlePet-0-00002114762B"] = {
			1, -- [1]
			true, -- [2]
			1728, -- [3]
			23, -- [4]
			1009, -- [5]
			228, -- [6]
			182, -- [7]
			1, -- [8]
		},
		["BattlePet-0-0000105DC65D"] = {
			1, -- [1]
			true, -- [2]
			52, -- [3]
			1, -- [4]
			153, -- [5]
			10, -- [6]
			10, -- [7]
			3, -- [8]
		},
		["BattlePet-0-00000E0BBEC8"] = {
			4, -- [1]
			true, -- [2]
			1722, -- [3]
			25, -- [4]
			1400, -- [5]
			341, -- [6]
			244, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBD92"] = {
			6, -- [1]
			true, -- [2]
			1266, -- [3]
			25, -- [4]
			1400, -- [5]
			333, -- [6]
			252, -- [7]
			4, -- [8]
		},
		[2648] = {
			1, -- [1]
		},
		["BattlePet-0-000021A148BC"] = {
			1, -- [1]
			true, -- [2]
			2380, -- [3]
			23, -- [4]
			1431, -- [5]
			236, -- [6]
			266, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBD8E"] = {
			2, -- [1]
			true, -- [2]
			519, -- [3]
			25, -- [4]
			1627, -- [5]
			260, -- [6]
			273, -- [7]
			4, -- [8]
		},
		["BattlePet-0-000021A150DE"] = {
			1, -- [1]
			true, -- [2]
			2665, -- [3]
			23, -- [4]
			1225, -- [5]
			232, -- [6]
			253, -- [7]
			3, -- [8]
		},
		["BattlePet-0-00000E0BBE81"] = {
			1, -- [1]
			true, -- [2]
			728, -- [3]
			23, -- [4]
			1078, -- [5]
			196, -- [6]
			196, -- [7]
			1, -- [8]
		},
		["BattlePet-0-00000E0BBF0B"] = {
			1, -- [1]
			true, -- [2]
			1763, -- [3]
			23, -- [4]
			1342, -- [5]
			235, -- [6]
			221, -- [7]
			3, -- [8]
		},
		["BattlePet-0-00000E0BBCAD"] = {
			13, -- [1]
			true, -- [2]
			1320, -- [3]
			25, -- [4]
			1400, -- [5]
			260, -- [6]
			325, -- [7]
			4, -- [8]
		},
		["BattlePet-0-000021A142C5"] = {
			1, -- [1]
			true, -- [2]
			2394, -- [3]
			23, -- [4]
			1363, -- [5]
			221, -- [6]
			235, -- [7]
			3, -- [8]
		},
		["random:0"] = {
			127, -- [1]
		},
		["BattlePet-0-00000E0BBEF6"] = {
			1, -- [1]
			true, -- [2]
			1713, -- [3]
			23, -- [4]
			1135, -- [5]
			196, -- [6]
			184, -- [7]
			1, -- [8]
		},
		["BattlePet-0-00000E0BBDDA"] = {
			1, -- [1]
			true, -- [2]
			1403, -- [3]
			15, -- [4]
			919, -- [5]
			164, -- [6]
			174, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBD13"] = {
			8, -- [1]
			true, -- [2]
			868, -- [3]
			25, -- [4]
			1546, -- [5]
			260, -- [6]
			289, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBD49"] = {
			2, -- [1]
			true, -- [2]
			383, -- [3]
			25, -- [4]
			1465, -- [5]
			257, -- [6]
			305, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBDE9"] = {
			1, -- [1]
			true, -- [2]
			1725, -- [3]
			25, -- [4]
			1441, -- [5]
			341, -- [6]
			236, -- [7]
			4, -- [8]
		},
		["BattlePet-0-000021A13719"] = {
			1, -- [1]
			true, -- [2]
			2387, -- [3]
			23, -- [4]
			1225, -- [5]
			239, -- [6]
			246, -- [7]
			3, -- [8]
		},
		["BattlePet-0-000021A2DF3D"] = {
			1, -- [1]
			true, -- [2]
			2651, -- [3]
			23, -- [4]
			1206, -- [5]
			275, -- [6]
			275, -- [7]
			4, -- [8]
		},
		["BattlePet-0-000021A14706"] = {
			1, -- [1]
			true, -- [2]
			2378, -- [3]
			23, -- [4]
			1432, -- [5]
			232, -- [6]
			211, -- [7]
			3, -- [8]
		},
		["BattlePet-0-00000E0BBF0C"] = {
			1, -- [1]
			true, -- [2]
			1737, -- [3]
			23, -- [4]
			1124, -- [5]
			205, -- [6]
			184, -- [7]
			1, -- [8]
		},
		["BattlePet-0-00000E0BBDA1"] = {
			1, -- [1]
			true, -- [2]
			213, -- [3]
			25, -- [4]
			1400, -- [5]
			260, -- [6]
			325, -- [7]
			4, -- [8]
		},
		["BattlePet-0-000021A2DE41"] = {
			1, -- [1]
			true, -- [2]
			2650, -- [3]
			23, -- [4]
			1052, -- [5]
			190, -- [6]
			206, -- [7]
			1, -- [8]
		},
		["BattlePet-0-00000E762C2F"] = {
			1, -- [1]
			true, -- [2]
			1778, -- [3]
			23, -- [4]
			1112, -- [5]
			177, -- [6]
			278, -- [7]
			2, -- [8]
		},
		["BattlePet-0-000021A14F94"] = {
			1, -- [1]
			true, -- [2]
			2676, -- [3]
			23, -- [4]
			1393, -- [5]
			259, -- [6]
			245, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBE8E"] = {
			1, -- [1]
			true, -- [2]
			1455, -- [3]
			23, -- [4]
			1163, -- [5]
			213, -- [6]
			225, -- [7]
			2, -- [8]
		},
		["random:8"] = {
			2, -- [1]
		},
		["BattlePet-0-00000E0BBE3A"] = {
			3, -- [1]
			true, -- [2]
			568, -- [3]
			25, -- [4]
			1790, -- [5]
			276, -- [6]
			224, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBCF5"] = {
			1, -- [1]
			true, -- [2]
			255, -- [3]
			25, -- [4]
			1644, -- [5]
			292, -- [6]
			244, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBED5"] = {
			1, -- [1]
			true, -- [2]
			1229, -- [3]
			25, -- [4]
			1359, -- [5]
			260, -- [6]
			333, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBE55"] = {
			4, -- [1]
			true, -- [2]
			746, -- [3]
			25, -- [4]
			1806, -- [5]
			292, -- [6]
			211, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBDBB"] = {
			4, -- [1]
			true, -- [2]
			1387, -- [3]
			25, -- [4]
			1546, -- [5]
			305, -- [6]
			244, -- [7]
			4, -- [8]
		},
		["BattlePet-0-000021A14E7C"] = {
			1, -- [1]
			true, -- [2]
			2663, -- [3]
			23, -- [4]
			1456, -- [5]
			221, -- [6]
			226, -- [7]
			3, -- [8]
		},
		["BattlePet-0-00000E0BBF28"] = {
			1, -- [1]
			true, -- [2]
			1736, -- [3]
			23, -- [4]
			963, -- [5]
			184, -- [6]
			242, -- [7]
			1, -- [8]
		},
		["random:10"] = {
			2, -- [1]
		},
		["BattlePet-0-000021A15023"] = {
			1, -- [1]
			true, -- [2]
			2661, -- [3]
			23, -- [4]
			1191, -- [5]
			215, -- [6]
			212, -- [7]
			2, -- [8]
		},
		["BattlePet-0-00000E0BBCE7"] = {
			20, -- [1]
			true, -- [2]
			1152, -- [3]
			25, -- [4]
			1644, -- [5]
			276, -- [6]
			260, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBE15"] = {
			1, -- [1]
			true, -- [2]
			453, -- [3]
			25, -- [4]
			1887, -- [5]
			260, -- [6]
			227, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBEF2"] = {
			4, -- [1]
			true, -- [2]
			1977, -- [3]
			25, -- [4]
			1400, -- [5]
			289, -- [6]
			289, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E826ACE"] = {
			1, -- [1]
			true, -- [2]
			746, -- [3]
			25, -- [4]
			1481, -- [5]
			357, -- [6]
			211, -- [7]
			4, -- [8]
		},
		["BattlePet-0-000021241BBB"] = {
			1, -- [1]
			true, -- [2]
			3385, -- [3]
			23, -- [4]
			1210, -- [5]
			209, -- [6]
			219, -- [7]
			2, -- [8]
		},
		["BattlePet-0-000021A1B6D6"] = {
			1, -- [1]
			true, -- [2]
			2668, -- [3]
			23, -- [4]
			1252, -- [5]
			230, -- [6]
			243, -- [7]
			3, -- [8]
		},
		["BattlePet-0-00000E0BBE76"] = {
			2, -- [1]
			true, -- [2]
			817, -- [3]
			25, -- [4]
			1627, -- [5]
			289, -- [6]
			244, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBC81"] = {
			1, -- [1]
			true, -- [2]
			266, -- [3]
			25, -- [4]
			1481, -- [5]
			305, -- [6]
			257, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBEF9"] = {
			1, -- [1]
			true, -- [2]
			1913, -- [3]
			23, -- [4]
			1273, -- [5]
			235, -- [6]
			235, -- [7]
			3, -- [8]
		},
		["BattlePet-0-00000E0BBDC9"] = {
			1, -- [1]
			true, -- [2]
			1524, -- [3]
			25, -- [4]
			1546, -- [5]
			289, -- [6]
			260, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBD5E"] = {
			2, -- [1]
			true, -- [2]
			493, -- [3]
			25, -- [4]
			1969, -- [5]
			276, -- [6]
			195, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBE2D"] = {
			1, -- [1]
			true, -- [2]
			1164, -- [3]
			25, -- [4]
			1384, -- [5]
			273, -- [6]
			305, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E7AF086"] = {
			1, -- [1]
			true, -- [2]
			2133, -- [3]
			23, -- [4]
			1296, -- [5]
			254, -- [6]
			269, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBE98"] = {
			1, -- [1]
			true, -- [2]
			1573, -- [3]
			25, -- [4]
			1465, -- [5]
			289, -- [6]
			273, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBEFC"] = {
			1, -- [1]
			true, -- [2]
			1714, -- [3]
			23, -- [4]
			1296, -- [5]
			266, -- [6]
			266, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBD22"] = {
			5, -- [1]
			true, -- [2]
			1166, -- [3]
			25, -- [4]
			1400, -- [5]
			305, -- [6]
			273, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBCA9"] = {
			9, -- [1]
			true, -- [2]
			277, -- [3]
			25, -- [4]
			1546, -- [5]
			257, -- [6]
			289, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBDD3"] = {
			1, -- [1]
			true, -- [2]
			1567, -- [3]
			25, -- [4]
			1319, -- [5]
			305, -- [6]
			289, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBF02"] = {
			1, -- [1]
			true, -- [2]
			1735, -- [3]
			23, -- [4]
			1181, -- [5]
			196, -- [6]
			182, -- [7]
			1, -- [8]
		},
		["BattlePet-0-00000E0BBE86"] = {
			1, -- [1]
			true, -- [2]
			132, -- [3]
			25, -- [4]
			1887, -- [5]
			260, -- [6]
			227, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBDF1"] = {
			2, -- [1]
			true, -- [2]
			117, -- [3]
			25, -- [4]
			1481, -- [5]
			276, -- [6]
			276, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBD28"] = {
			1, -- [1]
			true, -- [2]
			744, -- [3]
			23, -- [4]
			1328, -- [5]
			204, -- [6]
			259, -- [7]
			3, -- [8]
		},
		["BattlePet-0-000021A14C46"] = {
			1, -- [1]
			true, -- [2]
			2373, -- [3]
			23, -- [4]
			1204, -- [5]
			276, -- [6]
			221, -- [7]
			3, -- [8]
		},
		["BattlePet-0-00000E0BBF03"] = {
			1, -- [1]
			true, -- [2]
			1592, -- [3]
			23, -- [4]
			1259, -- [5]
			232, -- [6]
			246, -- [7]
			3, -- [8]
		},
		["BattlePet-0-00002107EE9F"] = {
			4, -- [1]
			true, -- [2]
			2842, -- [3]
			25, -- [4]
			1034, -- [5]
			362, -- [6]
			297, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E762BF6"] = {
			1, -- [1]
			true, -- [2]
			1778, -- [3]
			23, -- [4]
			1020, -- [5]
			182, -- [6]
			228, -- [7]
			1, -- [8]
		},
		["BattlePet-0-00000E8249DF"] = {
			1, -- [1]
			true, -- [2]
			1631, -- [3]
			25, -- [4]
			1400, -- [5]
			260, -- [6]
			325, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBC79"] = {
			1, -- [1]
			true, -- [2]
			297, -- [3]
			25, -- [4]
			1400, -- [5]
			374, -- [6]
			211, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBDE6"] = {
			1, -- [1]
			true, -- [2]
			1073, -- [3]
			25, -- [4]
			1546, -- [5]
			273, -- [6]
			273, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBE05"] = {
			1, -- [1]
			true, -- [2]
			1593, -- [3]
			23, -- [4]
			1066, -- [5]
			193, -- [6]
			205, -- [7]
			1, -- [8]
		},
		["BattlePet-0-000021A13EFA"] = {
			1, -- [1]
			true, -- [2]
			2400, -- [3]
			23, -- [4]
			1371, -- [5]
			254, -- [6]
			254, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBCC3"] = {
			33, -- [1]
			true, -- [2]
			844, -- [3]
			25, -- [4]
			1400, -- [5]
			276, -- [6]
			309, -- [7]
			4, -- [8]
		},
		["BattlePet-0-000021A13CD2"] = {
			1, -- [1]
			true, -- [2]
			2397, -- [3]
			23, -- [4]
			1356, -- [5]
			229, -- [6]
			289, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBE99"] = {
			1, -- [1]
			true, -- [2]
			1456, -- [3]
			23, -- [4]
			1259, -- [5]
			232, -- [6]
			246, -- [7]
			3, -- [8]
		},
		["BattlePet-0-00000E0BBE97"] = {
			1, -- [1]
			true, -- [2]
			1464, -- [3]
			23, -- [4]
			1163, -- [5]
			213, -- [6]
			225, -- [7]
			2, -- [8]
		},
		["BattlePet-0-00000E0BBDC4"] = {
			25, -- [1]
			true, -- [2]
			1167, -- [3]
			25, -- [4]
			1465, -- [5]
			305, -- [6]
			257, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBEAB"] = {
			2, -- [1]
			true, -- [2]
			1568, -- [3]
			25, -- [4]
			1400, -- [5]
			289, -- [6]
			289, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBD9A"] = {
			8, -- [1]
			true, -- [2]
			116, -- [3]
			25, -- [4]
			1546, -- [5]
			273, -- [6]
			273, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBD1F"] = {
			1, -- [1]
			true, -- [2]
			723, -- [3]
			23, -- [4]
			1411, -- [5]
			221, -- [6]
			221, -- [7]
			3, -- [8]
		},
		["BattlePet-0-00000E0BBD04"] = {
			1, -- [1]
			true, -- [2]
			641, -- [3]
			25, -- [4]
			1546, -- [5]
			227, -- [6]
			322, -- [7]
			4, -- [8]
		},
		["BattlePet-0-000021A13D8B"] = {
			1, -- [1]
			true, -- [2]
			2400, -- [3]
			23, -- [4]
			1328, -- [5]
			221, -- [6]
			246, -- [7]
			3, -- [8]
		},
		["BattlePet-0-00000E0BBF21"] = {
			10, -- [1]
			true, -- [2]
			1975, -- [3]
			25, -- [4]
			1546, -- [5]
			289, -- [6]
			260, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBCC4"] = {
			1, -- [1]
			true, -- [2]
			1150, -- [3]
			25, -- [4]
			1546, -- [5]
			260, -- [6]
			289, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBE91"] = {
			3, -- [1]
			true, -- [2]
			1441, -- [3]
			25, -- [4]
			1627, -- [5]
			257, -- [6]
			273, -- [7]
			4, -- [8]
		},
		["BattlePet-0-000021A15232"] = {
			1, -- [1]
			true, -- [2]
			2673, -- [3]
			23, -- [4]
			1101, -- [5]
			198, -- [6]
			193, -- [7]
			1, -- [8]
		},
		["BattlePet-0-00000E0BBE44"] = {
			1, -- [1]
			true, -- [2]
			1581, -- [3]
			25, -- [4]
			1319, -- [5]
			357, -- [6]
			244, -- [7]
			4, -- [8]
		},
		["BattlePet-0-000021A14CA5"] = {
			1, -- [1]
			true, -- [2]
			2372, -- [3]
			23, -- [4]
			1273, -- [5]
			235, -- [6]
			235, -- [7]
			3, -- [8]
		},
		["BattlePet-0-00000E0BBDFC"] = {
			2, -- [1]
			true, -- [2]
			1537, -- [3]
			17, -- [4]
			1120, -- [5]
			163, -- [6]
			163, -- [7]
			3, -- [8]
		},
		["BattlePet-0-00000E0BBE07"] = {
			1, -- [1]
			true, -- [2]
			1591, -- [3]
			23, -- [4]
			1273, -- [5]
			221, -- [6]
			248, -- [7]
			3, -- [8]
		},
		["BattlePet-0-00000E0BBD24"] = {
			3, -- [1]
			true, -- [2]
			743, -- [3]
			25, -- [4]
			1790, -- [5]
			289, -- [6]
			208, -- [7]
			4, -- [8]
		},
		["BattlePet-0-0000216A45C2"] = {
			1, -- [1]
			true, -- [2]
			1935, -- [3]
			23, -- [4]
			1144, -- [5]
			209, -- [6]
			228, -- [7]
			2, -- [8]
		},
		["BattlePet-0-00000E0BBCF3"] = {
			25, -- [1]
			true, -- [2]
			1211, -- [3]
			25, -- [4]
			1237, -- [5]
			341, -- [6]
			276, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBEE8"] = {
			1, -- [1]
			true, -- [2]
			1396, -- [3]
			25, -- [4]
			1481, -- [5]
			289, -- [6]
			273, -- [7]
			4, -- [8]
		},
		["BattlePet-0-000021153C7F"] = {
			1, -- [1]
			true, -- [2]
			1762, -- [3]
			23, -- [4]
			1204, -- [5]
			290, -- [6]
			207, -- [7]
			3, -- [8]
		},
		["BattlePet-0-000021153CF9"] = {
			1, -- [1]
			true, -- [2]
			1744, -- [3]
			23, -- [4]
			1066, -- [5]
			193, -- [6]
			205, -- [7]
			1, -- [8]
		},
		["BattlePet-0-000021A14A5F"] = {
			1, -- [1]
			true, -- [2]
			2375, -- [3]
			23, -- [4]
			1595, -- [5]
			239, -- [6]
			239, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBCDD"] = {
			1, -- [1]
			true, -- [2]
			445, -- [3]
			25, -- [4]
			1546, -- [5]
			260, -- [6]
			289, -- [7]
			4, -- [8]
		},
		["BattlePet-0-0000210BE800"] = {
			1, -- [1]
			true, -- [2]
			3272, -- [3]
			23, -- [4]
			1226, -- [5]
			187, -- [6]
			238, -- [7]
			2, -- [8]
		},
		["BattlePet-0-00000E0BBD2A"] = {
			1, -- [1]
			true, -- [2]
			724, -- [3]
			25, -- [4]
			1400, -- [5]
			260, -- [6]
			325, -- [7]
			4, -- [8]
		},
		["BattlePet-0-000021A1B919"] = {
			1, -- [1]
			true, -- [2]
			2647, -- [3]
			23, -- [4]
			1452, -- [5]
			221, -- [6]
			221, -- [7]
			3, -- [8]
		},
		["BattlePet-0-00002105E37F"] = {
			1, -- [1]
			true, -- [2]
			1478, -- [3]
			25, -- [4]
			1546, -- [5]
			289, -- [6]
			260, -- [7]
			4, -- [8]
		},
		["BattlePet-0-000021A1B5B5"] = {
			1, -- [1]
			true, -- [2]
			2664, -- [3]
			23, -- [4]
			1580, -- [5]
			266, -- [6]
			209, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBD0E"] = {
			5, -- [1]
			true, -- [2]
			557, -- [3]
			25, -- [4]
			1319, -- [5]
			276, -- [6]
			325, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E6C2894"] = {
			1, -- [1]
			true, -- [2]
			1709, -- [3]
			23, -- [4]
			1112, -- [5]
			266, -- [6]
			190, -- [7]
			2, -- [8]
		},
		["BattlePet-0-00000E0BBD2E"] = {
			25, -- [1]
			true, -- [2]
			1165, -- [3]
			25, -- [4]
			1400, -- [5]
			341, -- [6]
			244, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBE6D"] = {
			2, -- [1]
			true, -- [2]
			1179, -- [3]
			25, -- [4]
			1481, -- [5]
			292, -- [6]
			260, -- [7]
			4, -- [8]
		},
		["BattlePet-0-000021A14D2C"] = {
			1, -- [1]
			true, -- [2]
			2376, -- [3]
			23, -- [4]
			1009, -- [5]
			210, -- [6]
			199, -- [7]
			1, -- [8]
		},
		["BattlePet-0-00000E0BBEBE"] = {
			4, -- [1]
			true, -- [2]
			1934, -- [3]
			25, -- [4]
			1627, -- [5]
			289, -- [6]
			244, -- [7]
			4, -- [8]
		},
		["BattlePet-0-0000216E4603"] = {
			1, -- [1]
			true, -- [2]
			3480, -- [3]
			23, -- [4]
			1411, -- [5]
			235, -- [6]
			207, -- [7]
			3, -- [8]
		},
		["BattlePet-0-00000E0BBEF0"] = {
			1, -- [1]
			true, -- [2]
			1729, -- [3]
			23, -- [4]
			1163, -- [5]
			187, -- [6]
			250, -- [7]
			2, -- [8]
		},
		["BattlePet-0-000021A1B5FB"] = {
			1, -- [1]
			true, -- [2]
			2674, -- [3]
			23, -- [4]
			1445, -- [5]
			232, -- [6]
			262, -- [7]
			4, -- [8]
		},
		["BattlePet-0-000021A15084"] = {
			1, -- [1]
			true, -- [2]
			2671, -- [3]
			23, -- [4]
			1221, -- [5]
			254, -- [6]
			299, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBDD7"] = {
			2, -- [1]
			true, -- [2]
			319, -- [3]
			25, -- [4]
			1221, -- [5]
			322, -- [6]
			289, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000E0BBD2C"] = {
			1, -- [1]
			true, -- [2]
			567, -- [3]
			23, -- [4]
			1190, -- [5]
			246, -- [6]
			246, -- [7]
			3, -- [8]
		},
	},
	["NotifiedExperimental"] = true,
	["AlwaysTeamTabs"] = false,
	["QueueNoPreferences"] = false,
	["DontWarnMissing"] = false,
	["YPos"] = 365.9045715332031,
	["LowerStrata"] = true,
	["DontIncludeNotes"] = false,
	["PetCardYPos"] = 826.9523315429688,
	["SpecialSlots"] = {
		[3] = 0,
	},
	["ScriptFilters"] = {
		{
			"Unnamed Pets", -- [1]
			"-- Collected pets that still have their original name.\n\nreturn owned and not customName", -- [2]
		}, -- [1]
		{
			"Partially Leveled", -- [1]
			"-- Pets that have earned some xp in battle.\n\nreturn xp and xp>0", -- [2]
		}, -- [2]
		{
			"Unique Abilities", -- [1]
			"-- Pets with abilities not shared by other pets.\n\nif not count then\n  -- create count of each ability per species\n  count = {}\n  for speciesID in AllSpeciesIDs() do\n    for abilityID in AllAbilities(speciesID) do\n      if not count[abilityID] then\n        count[abilityID] = 0\n      end\n      count[abilityID] = count[abilityID] + 1\n    end\n  end\nend\n\nfor _,abilityID in ipairs(abilityList) do\n  if count[abilityID]==1 then\n    return true\n  end\nend", -- [2]
		}, -- [3]
		{
			"Pets Without Rares", -- [1]
			"-- Collected battle pets that have no rare version.\n\nif not rares then\n  rares = {}\n  for petID in AllPetIDs() do\n    if select(5,C_PetJournal.GetPetStats(petID))==4 then\n      rares[C_PetJournal.GetPetInfoByPetID(petID)]=true\n    end\n  end\nend\n\nif canBattle and owned and not rares[speciesID] then\n  return true\nend", -- [2]
		}, -- [4]
		{
			"Hybrid Counters", -- [1]
			"-- Pets with three or more attack types different than their pet type.\n\nlocal count = 0\nfor _,abilityID in ipairs(abilityList) do\n  local abilityType,noHints = select(7, C_PetBattles.GetAbilityInfoByID(abilityID) )\n  if not noHints and abilityType~=petType then\n    count = count + 1\n  end\nend\n\nreturn count>=3\n", -- [2]
		}, -- [5]
		{
			"Upgrade Needed", -- [1]
			"-- Lvl 25 pets that need an upgrade to rare.\nlocal rarity\nif petID then\n rarity = select(5,C_PetJournal.GetPetStats(petID))\nend\nreturn level == 25 and (rarity or 0) ~= 4", -- [2]
		}, -- [6]
		{
			"Freshly Caught (1 squirt battle)", -- [1]
			"return owned and level == 23 or level == 24", -- [2]
		}, -- [7]
		{
			"Double Treats", -- [1]
			"return owned and level < 11", -- [2]
		}, -- [8]
	},
	["QueueRandomWhenEmpty"] = true,
	["CollectionChartType"] = 3,
	["DontIncludePreferences"] = false,
	["QueueSortOrder"] = 2,
	["SelectedTab"] = 1,
	["loadedTeam"] = 197350,
	["NotesWidth"] = 370.0000915527344,
	["DialogXPos"] = 1505.525756835938,
	["NotesFont"] = "GameFontHighlight",
	["PrioritizeBreedOnImport"] = true,
	["HideTooltips"] = false,
	["ImportTeamTabsToo"] = true,
	["Filters"] = {
		["Other"] = {
		},
		["Expansion"] = {
		},
		["Strong"] = {
		},
		["Moveset"] = {
		},
		["Favorite"] = {
		},
		["Collected"] = {
		},
		["Rarity"] = {
		},
		["Similar"] = {
		},
		["Breed"] = {
		},
		["Script"] = {
		},
		["Sources"] = {
		},
		["Level"] = {
		},
		["Tough"] = {
		},
		["Types"] = {
		},
	},
	["StayForBattle"] = true,
	["OverwriteNotes"] = true,
	["NotesBottom"] = 307.8094482421875,
	["XPos"] = 0.7618844509124756,
	["CollapsedOptHeaders"] = {
		true, -- [1]
		true, -- [2]
		true, -- [3]
		nil, -- [4]
		true, -- [5]
		true, -- [6]
		true, -- [7]
		true, -- [8]
		true, -- [9]
		true, -- [10]
	},
	["AutoLoadTargetOnly"] = false,
	["QueueSkipDead"] = true,
	["LockNotesPosition"] = true,
	["SlimListButtons"] = true,
	["LevelingQueue"] = {
		"BattlePet-0-000021A13D8B", -- [1]
		"BattlePet-0-000021A13EFA", -- [2]
		"BattlePet-0-000021147756", -- [3]
		"BattlePet-0-000021A14631", -- [4]
		"BattlePet-0-000021A1B6D6", -- [5]
		"BattlePet-0-000021152F0A", -- [6]
		"BattlePet-0-000021A2DF3D", -- [7]
		"BattlePet-0-00000E77F974", -- [8]
		"BattlePet-0-000021A15554", -- [9]
		"BattlePet-0-00000E762BF6", -- [10]
		"BattlePet-0-00000E762C2F", -- [11]
		"BattlePet-0-000021A14258", -- [12]
		"BattlePet-0-0000216E4603", -- [13]
		"BattlePet-0-000021A1B5B5", -- [14]
		"BattlePet-0-00000E0BBEB4", -- [15]
		"BattlePet-0-00000E6C2894", -- [16]
		"BattlePet-0-00000E6C24FA", -- [17]
		"BattlePet-0-000021A150DE", -- [18]
		"BattlePet-0-000021A14B23", -- [19]
		"BattlePet-0-000021A14907", -- [20]
		"BattlePet-0-00000E0BBEF9", -- [21]
		"BattlePet-0-000021A1B919", -- [22]
		"BattlePet-0-000021A13FB5", -- [23]
		"BattlePet-0-000021A13719", -- [24]
		"BattlePet-0-000021A2DE41", -- [25]
		"BattlePet-0-000021A1B5FB", -- [26]
		"BattlePet-0-000021A14463", -- [27]
		"BattlePet-0-000021153C7F", -- [28]
		"BattlePet-0-000021A14BF7", -- [29]
		"BattlePet-0-000021A147F3", -- [30]
		"BattlePet-0-0000210BE6DA", -- [31]
		"BattlePet-0-00000E0BBE96", -- [32]
		"BattlePet-0-000021A14E7C", -- [33]
		"BattlePet-0-00002114762B", -- [34]
		"BattlePet-0-000021A135EB", -- [35]
		"BattlePet-0-00000E0BBEF6", -- [36]
		"BattlePet-0-000021A14F94", -- [37]
		"BattlePet-0-000021A1511F", -- [38]
		"BattlePet-0-000021153CF9", -- [39]
		"BattlePet-0-00000E0BBD81", -- [40]
		"BattlePet-0-00000E0BBE8E", -- [41]
		"BattlePet-0-000021A151AD", -- [42]
		"BattlePet-0-00000E0BBE9D", -- [43]
		"BattlePet-0-00000E0BBF24", -- [44]
		"BattlePet-0-00000E0BBF35", -- [45]
		"BattlePet-0-00000E0BBEFC", -- [46]
		"BattlePet-0-00000E0BBEF0", -- [47]
		"BattlePet-0-000021A148BC", -- [48]
		"BattlePet-0-00000E0BBE8C", -- [49]
		"BattlePet-0-0000210BE800", -- [50]
		"BattlePet-0-00000E7AF086", -- [51]
		"BattlePet-0-00000E0BBD28", -- [52]
		"BattlePet-0-000021A142C5", -- [53]
		"BattlePet-0-000021A14C46", -- [54]
		"BattlePet-0-000021A14706", -- [55]
		"BattlePet-0-00000E0BBF25", -- [56]
		"BattlePet-0-00000E0BBF27", -- [57]
		"BattlePet-0-000021A14EC2", -- [58]
		"BattlePet-0-000021A15023", -- [59]
		"BattlePet-0-000021A1B8CC", -- [60]
		"BattlePet-0-000021A14BAF", -- [61]
		"BattlePet-0-00000E0BBF03", -- [62]
		"BattlePet-0-000021A15232", -- [63]
		"BattlePet-0-000021A149D9", -- [64]
		"BattlePet-0-00000E0BBE9F", -- [65]
		"BattlePet-0-000021A14CA5", -- [66]
		"BattlePet-0-00000E0BBEDE", -- [67]
		"BattlePet-0-000021A137EE", -- [68]
		"BattlePet-0-000021065C41", -- [69]
		"BattlePet-0-00000E0BBF2A", -- [70]
		"BattlePet-0-00000E7AEFC3", -- [71]
		"BattlePet-0-00000E0BBF28", -- [72]
		"BattlePet-0-000021A15084", -- [73]
		"BattlePet-0-000021A13CD2", -- [74]
		"BattlePet-0-00000E0BBF0B", -- [75]
		"BattlePet-0-00000E0BBD1F", -- [76]
		"BattlePet-0-000021A1B943", -- [77]
		"BattlePet-0-000021153EA8", -- [78]
		"BattlePet-0-0000216A45C2", -- [79]
		"BattlePet-0-000021A14336", -- [80]
		"BattlePet-0-000021241BBB", -- [81]
		"BattlePet-0-000021153FDF", -- [82]
		"BattlePet-0-00000E0BBE81", -- [83]
		"BattlePet-0-00000E0BBD2C", -- [84]
		"BattlePet-0-00000E0BBF02", -- [85]
		"BattlePet-0-00000E0BBE99", -- [86]
		"BattlePet-0-000021152E51", -- [87]
		"BattlePet-0-00000E0BBEC5", -- [88]
		"BattlePet-0-00000E0BBE97", -- [89]
		"BattlePet-0-00000E0BBF0C", -- [90]
		"BattlePet-0-000021A14A5F", -- [91]
		"BattlePet-0-000021A14D2C", -- [92]
		"BattlePet-0-00002115302C", -- [93]
		"BattlePet-0-00000E0BBE07", -- [94]
		"BattlePet-0-00000E7AF511", -- [95]
		"BattlePet-0-00000E0BBE05", -- [96]
		"BattlePet-0-00000E0BBE94", -- [97]
		"BattlePet-0-0000210C13D1", -- [98]
		"BattlePet-0-000021A15164", -- [99]
		"BattlePet-0-000021A143C1", -- [100]
		"BattlePet-0-000021B1780E", -- [101]
		"BattlePet-0-000021A4BFCC", -- [102]
	},
	["ExpandedTargetHeaders"] = {
	},
	["ShowLoadedTeam"] = false,
	["minimapButtonPosition"] = 179.419279382929,
	["ShowAbilityNumbers"] = true,
	["ReverseToolbar"] = false,
	["PetNotes"] = {
	},
}
RematchSaved = nil
RematchSettings = nil

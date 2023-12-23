
OmniCDDB = {
	["profileKeys"] = {
		["Alluvium - Argent Dawn"] = "Default",
		["Sverdrup - Argent Dawn"] = "Default",
		["Emptystreams - Argent Dawn"] = "Default",
		["Headcut - Argent Dawn"] = "Default",
		["Confluence - Argent Dawn"] = "Default",
		["Mothugeon - Argent Dawn"] = "Default",
		["Lotic - Argent Dawn"] = "Default",
		["Riparium - Argent Dawn"] = "Default",
		["Naturerivers - Korgath"] = "Default",
		["Emptyrivers - Argent Dawn"] = "Default",
		["Flumina - Argent Dawn"] = "Default",
		["Alandere - Argent Dawn"] = "Default",
		["Stream - Argent Dawn"] = "Default",
		["Estuary - Argent Dawn"] = "Default",
	},
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
		},
		["BattleRes"] = {
			["profiles"] = {
				["Default"] = {
					["manualPos"] = {
						["OmniCDBrez"] = {
							["y"] = 417.4168202840119,
							["x"] = 348.9832765275532,
						},
					},
				},
			},
		},
	},
	["cooldowns"] = {
		[363916] = {
			["type"] = "defensive",
			["buff"] = 363916,
			["class"] = "EVOKER",
			["maxRanks"] = 1,
			["spec"] = {
				363916, -- [1]
			},
			["name"] = "Obsidian Scales",
			["charges"] = {
				["default"] = 1,
			},
			["ID"] = 108,
			["duration"] = {
				["default"] = 90,
			},
			["icon"] = 1394891,
			["spellID"] = 363916,
		},
		[374348] = {
			["type"] = "defensive",
			["buff"] = 374348,
			["class"] = "EVOKER",
			["maxRanks"] = 1,
			["charges"] = {
				["default"] = 1,
			},
			["name"] = "Renewing Blaze",
			["spec"] = {
				374348, -- [1]
			},
			["ID"] = 86,
			["duration"] = {
				["default"] = 90,
			},
			["icon"] = 4630463,
			["spellID"] = 374348,
		},
		[108416] = {
			["type"] = "defensive",
			["buff"] = 108416,
			["class"] = "WARLOCK",
			["maxRanks"] = 1,
			["charges"] = {
				["default"] = 1,
			},
			["name"] = "Dark Pact",
			["spec"] = {
				108416, -- [1]
				266, -- [2]
				265, -- [3]
				267, -- [4]
			},
			["ID"] = 22,
			["duration"] = {
				["default"] = 60,
			},
			["icon"] = 136146,
			["spellID"] = 108416,
		},
	},
	["version"] = 3,
	["profiles"] = {
		["Default"] = {
			["modules"] = {
				["BattleRes"] = true,
			},
			["Party"] = {
				["noneZoneSetting"] = "party",
				["party"] = {
					["extraBars"] = {
						["raidBar0"] = {
							["statusBarWidth"] = 300,
							["showRaidTargetMark"] = true,
							["barColors"] = {
								["useClassColor"] = {
									["inactive"] = false,
								},
								["inactiveColor"] = {
									["a"] = 0.402962863445282,
									["r"] = 0.7960785031318665,
									["g"] = 0.7960785031318665,
									["b"] = 0.7960785031318665,
								},
							},
							["reverseFill"] = false,
							["invertNameBar"] = false,
							["textColors"] = {
								["useClassColor"] = {
									["inactive"] = true,
									["recharge"] = true,
									["active"] = true,
								},
							},
							["sortBy"] = 1,
							["manualPos"] = {
								["raidBar0"] = {
									["y"] = 364.0832640633707,
									["x"] = 288.7169903224367,
								},
							},
						},
					},
					["general"] = {
						["showPlayer"] = true,
					},
					["spells"] = {
						["374251"] = true,
						["372048"] = false,
						["108416"] = true,
						["370511"] = true,
					},
					["icons"] = {
						["scale"] = 0.69,
						["showTooltip"] = false,
					},
					["position"] = {
						["locked"] = false,
						["attachMore"] = "BOTTOMLEFT",
						["columns"] = 3,
						["preset"] = "manual",
						["attach"] = "BOTTOMLEFT",
						["offsetX"] = 0,
						["anchorMore"] = "TOPLEFT",
					},
					["manualPos"] = {
						{
							["y"] = 384.3499812475275,
							["x"] = 682.3166570813883,
						}, -- [1]
						[5] = {
							["y"] = 384.3499812475275,
							["x"] = 682.3166570813883,
						},
					},
				},
				["arena"] = {
					["extraBars"] = {
						["raidBar0"] = {
							["enabled"] = true,
							["manualPos"] = {
								["raidBar0"] = {
									["y"] = 507.0168614827417,
									["x"] = 897.7836517030228,
								},
							},
						},
					},
					["spells"] = {
						["370511"] = true,
					},
					["icons"] = {
						["scale"] = 0.5,
					},
					["position"] = {
						["anchor"] = "BOTTOMRIGHT",
						["attachMore"] = "BOTTOMLEFT",
						["columns"] = 2,
						["layout"] = "vertical",
						["preset"] = "manual",
						["attach"] = "BOTTOMLEFT",
						["anchorMore"] = "BOTTOMRIGHT",
					},
					["general"] = {
						["showPlayer"] = true,
						["zoneSelected"] = "party",
					},
				},
				["raid"] = {
					["extraBars"] = {
						["raidBar1"] = {
							["manualPos"] = {
								["raidBar1"] = {
									["y"] = 384.3499812475275,
									["x"] = 682.3166570813883,
								},
							},
						},
					},
				},
				["visibility"] = {
					["arena"] = false,
				},
			},
			["tooltipID"] = true,
		},
	},
}

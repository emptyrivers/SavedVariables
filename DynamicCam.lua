
DynamicCamDB = {
	["profileKeys"] = {
		["Rapidrivers - Arthas"] = "Serenerivers - Arthas",
		["Sverdrup - Argent Dawn"] = "Default",
		["Flumina - Argent Dawn"] = "Default",
		["Canerena - Arthas"] = "Default",
		["Tinyrivers - Kel'Thuzad"] = "Default",
		["Ailisuul - Arthas"] = "Default",
		["Beefyrivers - Bleeding Hollow"] = "Default",
		["Yandanderex - Moon Guard"] = "Default",
		["Mindrivers - Korgath"] = "Default",
		["Serenerivers - Arthas"] = "Serenerivers - Arthas",
		["Ochrian - Argent Dawn"] = "Default",
		["Emptyrivers - Korgath"] = "Serenerivers - Arthas",
		["Emptystreams - Argent Dawn"] = "Default",
		["Blindrivers - Sargeras"] = "Default",
		["Alluvium - Argent Dawn"] = "Default",
		["Confluence - Argent Dawn"] = "Default",
		["Testrivers - Bleeding Hollow"] = "Default",
		["Sassyrivers - Arthas"] = "Serenerivers - Arthas",
		["Wildrivers - Bleeding Hollow"] = "Default",
		["Serenerivers - Kel'Thuzad"] = "Default",
		["Serenerivers - Bleeding Hollow"] = "Default",
		["Greedyrivers - Arthas"] = "Default",
		["Emptyrivers - Arthas"] = "Default",
		["Crazyrivers - Sargeras"] = "Default",
		["Evilrivers - Sargeras"] = "Default",
		["Littlerivers - Kel'Thuzad"] = "Default",
		["Luckyrivers - Sargeras"] = "Default",
		["Riparium - Argent Dawn"] = "Default",
		["Dammedrivers - Exodar"] = "Default",
		["Edgyrivers - Kel'Thuzad"] = "Serenerivers - Arthas",
		["Savattellir - Arthas"] = "Default",
		["Edgyrivers - Arthas"] = "Default",
		["Crazyrivers - Bleeding Hollow"] = "Default",
		["Shachein - Arthas"] = "Default",
		["Blindrivers - Korgath"] = "Default",
		["Wildrivers - Arthas"] = "Serenerivers - Arthas",
		["Feralrivers - Sargeras"] = "Default",
		["Beefyrivers - Arthas"] = "Default",
		["Evilrivers - Korgath"] = "Default",
		["Ragingrivers - Arthas"] = "Default",
		["Holyrivers - Sargeras"] = "Default",
		["Mahntaiaga - Arthas"] = "Default",
		["Tinyrivers - Arthas"] = "Serenerivers - Arthas",
		["Serenerivers - Sargeras"] = "Default",
		["Crazyrivers - Arthas"] = "Default",
		["Emptyrivers - Sargeras"] = "Default",
		["Mecharivers - Sargeras"] = "Default",
		["Eysta - Sargeras"] = "Default",
		["Boringrivers - Bleeding Hollow"] = "Default",
		["Emptyrivers - Bleeding Hollow"] = "Default",
		["Lotic - Argent Dawn"] = "Default",
		["Kdajshtlaiuw - Bleeding Hollow"] = "Default",
		["Evilrivers - Kel'Thuzad"] = "Default",
		["Testes - Arthas"] = "Default",
		["Daedrasminia - Arthas"] = "Default",
		["Riversticks - Bleeding Hollow"] = "Default",
		["Emptyrivers - Argent Dawn"] = "Default",
		["Headcut - Argent Dawn"] = "Default",
		["Tinyrivers - Sargeras"] = "Default",
		["Skankyrivers - Arthas"] = "Default",
		["Estuary - Argent Dawn"] = "Default",
	},
	["profiles"] = {
		["Serenerivers - Arthas"] = {
			["standardSettings"] = {
				["reactiveZoomAddIncrements"] = 3,
				["cvars"] = {
					["test_cameraDynamicPitchBaseFovPad"] = 0.05,
					["test_cameraDynamicPitch"] = 1,
					["cameraDistanceMaxZoomFactor"] = 2.6,
				},
				["reactiveZoomEnabled"] = false,
				["reactiveZoomIncAddDifference"] = 4,
				["reactiveZoomMaxZoomTime"] = 0.25,
				["shoulderOffsetZoomUpperBound"] = 8,
			},
			["situations"] = {
				["033"] = {
					["enabled"] = true,
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"raid\") and UnitAffectingCombat(\"player\") and IsEncounterInProgress();",
					["name"] = "Raid (Combat, Boss)",
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitch"] = 0,
						},
					},
				},
				["023"] = {
					["enabled"] = true,
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"party\") and UnitAffectingCombat(\"player\") and IsEncounterInProgress();",
					["name"] = "Dungeon (Combat, Boss)",
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitch"] = 0,
						},
					},
				},
				["006"] = {
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitch"] = 0,
						},
					},
					["condition"] = "return not IsInInstance() and UnitAffectingCombat(\"player\");",
					["viewZoom"] = {
						["viewZoomType"] = "view",
						["viewRestore"] = false,
						["viewNumber"] = 5,
						["enabled"] = true,
					},
					["name"] = "World (Combat)",
				},
				["302"] = {
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitch"] = 1,
						},
					},
					["condition"] = "return (UnitChannelInfo(\"player\") == GetSpellInfo(7620))",
					["viewZoom"] = {
						["enabled"] = true,
						["zoomMax"] = 20,
						["zoomTransitionTime"] = 0.75,
						["zoomTimeIsMax"] = true,
						["zoomValue"] = 7,
					},
					["delay"] = 2,
				},
				["031"] = {
					["enabled"] = true,
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"raid\") and IsOutdoors();",
					["name"] = "Raid (Outdoors)",
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitch"] = 0,
						},
					},
				},
				["002"] = {
					["condition"] = "return IsResting() and IsIndoors();",
					["name"] = "City (Indoors)",
					["viewZoom"] = {
						["enabled"] = true,
						["zoomType"] = "in",
						["zoomMax"] = 20,
						["zoomTransitionTime"] = 0.75,
						["zoomTimeIsMax"] = true,
						["zoomValue"] = 8,
					},
				},
				["201"] = {
					["enabled"] = true,
					["errorEncountered"] = "condition",
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitch"] = 0,
							["test_cameraHeadMovementStrength"] = 0,
							["test_cameraOverShoulder"] = 0,
						},
					},
					["executeOnInit"] = "this.buffs = {46924, 51690, 188499, 210152};",
					["condition"] = "for k,v in pairs(this.buffs) do \n    if (UnitBuff(\"player\", GetSpellInfo(v))) then\n        return true;\n    end\nend\nreturn false;",
					["errorMessage"] = "[string \"for k,v in pairs(this.buffs) do ...\"]:2: Usage: UnitBuff(\"unit\", [index][, \"filter\"])",
				},
				["100"] = {
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitch"] = 0,
							["test_cameraHeadMovementStrength"] = 0,
							["test_cameraOverShoulder"] = 0,
						},
					},
					["condition"] = "return IsMounted();",
					["events"] = {
						"SPELL_UPDATE_USABLE", -- [1]
						"UNIT_AURA", -- [2]
					},
					["viewZoom"] = {
						["enabled"] = true,
						["zoomType"] = "out",
						["zoomMax"] = 20,
						["zoomTransitionTime"] = 0.75,
						["zoomTimeIsMax"] = true,
						["zoomValue"] = 30,
					},
				},
				["102"] = {
					["condition"] = "return UnitUsingVehicle(\"player\");",
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraOverShoulder"] = 0,
							["test_cameraHeadMovementStrength"] = 0,
							["test_cameraDynamicPitch"] = 0,
						},
					},
				},
				["050"] = {
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"arena\");",
				},
				["200"] = {
					["rotation"] = {
						["enabled"] = true,
						["rotateBackTime"] = 10,
						["rotationType"] = "degrees",
						["rotationSpeed"] = 20,
						["yawDegrees"] = 360,
						["rotationTime"] = 10,
						["rotateBack"] = false,
					},
					["executeOnEnter"] = "local _, _, _, _, startTime, endTime = UnitCastingInfo(\"player\");\nthis.transitionTime = ((endTime - startTime)/1000) - .25;",
					["viewZoom"] = {
						["enabled"] = true,
						["zoomType"] = "in",
						["zoomMax"] = 20,
						["zoomTransitionTime"] = 10,
						["zoomValue"] = 4,
					},
					["hideUI"] = {
						["enabled"] = true,
						["hideEntireUI"] = true,
						["fadeOpacity"] = 0,
					},
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitch"] = 0,
							["test_cameraHeadMovementStrength"] = 0,
							["test_cameraOverShoulder"] = 0,
						},
					},
					["priority"] = 20,
					["condition"] = "for k,v in pairs(this.spells) do \n    if (UnitCastingInfo(\"player\") == GetSpellInfo(v)) then \n        return true;\n    end\nend\nreturn false;",
					["executeOnInit"] = "this.spells = {136508, 189838, 54406, 94719, 556, 168487, 168499, 171253, 50977, 8690, 222695, 171253, 224869, 53140, 3565, 32271, 193759, 3562, 3567, 33690, 35715, 32272, 49358, 176248, 3561, 49359, 3566, 88342, 88344, 3563, 132627, 132621, 176242, 192085, 192084, 216016};",
				},
				["301"] = {
					["condition"] = "return (MailFrame and MailFrame:IsShown())",
					["priority"] = 20,
					["events"] = {
						"MAIL_CLOSED", -- [1]
						"MAIL_SHOW", -- [2]
						"GOSSIP_CLOSED", -- [3]
					},
					["viewZoom"] = {
						["enabled"] = true,
						["zoomType"] = "in",
						["zoomMax"] = 20,
						["zoomTransitionTime"] = 0.75,
						["zoomTimeIsMax"] = true,
						["zoomValue"] = 4,
					},
				},
				["005"] = {
					["condition"] = "return not IsResting() and not IsInInstance() and IsIndoors();",
					["name"] = "World (Indoors)",
					["viewZoom"] = {
						["enabled"] = true,
						["zoomType"] = "in",
						["zoomMax"] = 20,
						["zoomTransitionTime"] = 0.75,
						["zoomTimeIsMax"] = true,
					},
				},
				["034"] = {
					["enabled"] = true,
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"raid\") and UnitAffectingCombat(\"player\") and not IsEncounterInProgress();",
					["name"] = "Raid (Combat, Trash)",
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitch"] = 0,
						},
					},
				},
				["021"] = {
					["enabled"] = true,
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"party\") and IsOutdoors();",
					["name"] = "Dungeon (Outdoors)",
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitch"] = 0,
						},
					},
				},
				["061"] = {
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"pvp\") and UnitAffectingCombat(\"player\");",
					["name"] = "Battleground (Combat)",
				},
				["001"] = {
					["condition"] = "return IsResting();",
					["viewZoom"] = {
						["enabled"] = true,
						["zoomType"] = "range",
						["zoomMax"] = 20,
						["zoomMin"] = 10,
						["zoomTimeIsMax"] = true,
						["zoomTransitionTime"] = 0.75,
					},
				},
				["024"] = {
					["enabled"] = true,
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"party\") and UnitAffectingCombat(\"player\") and not IsEncounterInProgress();",
					["name"] = "Dungeon (Combat, Trash)",
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitch"] = 0,
						},
					},
				},
				["051"] = {
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"arena\") and UnitAffectingCombat(\"player\");",
					["name"] = "Arena (Combat)",
				},
				["004"] = {
					["condition"] = "return not IsResting() and not IsInInstance();",
					["viewZoom"] = {
						["enabled"] = true,
						["zoomType"] = "range",
						["zoomMax"] = 20,
						["zoomMin"] = 15,
						["zoomTimeIsMax"] = true,
						["zoomTransitionTime"] = 0.75,
					},
				},
				["300"] = {
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitch"] = 1,
							["test_cameraTargetFocusInteractEnable"] = 1,
							["test_cameraTargetFocusEnemyEnable"] = 1,
						},
					},
					["viewZoom"] = {
						["enabled"] = true,
						["zoomType"] = "fit",
						["zoomMax"] = 30,
						["zoomMin"] = 3,
						["zoomTransitionTime"] = 0.75,
						["zoomTimeIsMax"] = true,
						["zoomValue"] = 4,
					},
					["events"] = {
						"PLAYER_TARGET_CHANGED", -- [1]
						"GOSSIP_SHOW", -- [2]
						"GOSSIP_CLOSED", -- [3]
						"QUEST_COMPLETE", -- [4]
						"QUEST_DETAIL", -- [5]
						"QUEST_FINISHED", -- [6]
						"QUEST_GREETING", -- [7]
						"BANKFRAME_OPENED", -- [8]
						"BANKFRAME_CLOSED", -- [9]
						nil, -- [10]
						"MERCHANT_CLOSED", -- [11]
						"TRAINER_SHOW", -- [12]
						"TRAINER_CLOSED", -- [13]
						"SHIPMENT_CRAFTER_OPENED", -- [14]
						"SHIPMENT_CRAFTER_CLOSED", -- [15]
					},
					["delay"] = 0.5,
					["priority"] = 20,
					["condition"] = "local shown = false;\nfor k,v in pairs(this.frames) do\n    if (_G[v] and _G[v]:IsShown()) then\n        shown = true;\n    end\nend\nreturn UnitExists(\"npc\") and UnitIsUnit(\"npc\", \"target\") and shown;",
					["executeOnInit"] = "this.frames = {\"GarrisonCapacitiveDisplayFrame\", \"BankFrame\", \"MerchantFrame\", \"GossipFrame\", \"ClassTrainerFrame\", \"QuestFrame\",}",
				},
				["020"] = {
					["enabled"] = true,
					["name"] = "Dungeon",
					["viewZoom"] = {
						["viewZoomType"] = "view",
						["viewRestore"] = false,
						["viewNumber"] = 5,
						["enabled"] = true,
					},
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"party\");",
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitch"] = 0,
						},
					},
				},
				["030"] = {
					["enabled"] = true,
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"raid\");",
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitch"] = 0,
						},
					},
				},
				["101"] = {
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraHeadMovementStrength"] = 0,
							["test_cameraOverShoulder"] = -1,
						},
					},
					["viewZoom"] = {
						["enabled"] = true,
						["zoomMax"] = 20,
						["zoomTransitionTime"] = 0.75,
						["zoomTimeIsMax"] = true,
						["zoomValue"] = 15,
					},
					["condition"] = "return UnitOnTaxi(\"player\");",
					["hideUI"] = {
						["enabled"] = true,
						["hideEntireUI"] = true,
						["fadeOpacity"] = 0,
					},
				},
				["060"] = {
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"pvp\");",
				},
			},
			["defaultVersion"] = 1,
			["version"] = 3,
			["firstRun"] = false,
		},
		["Default"] = {
			["standardSettings"] = {
				["reactiveZoomAddIncrements"] = 3,
				["reactiveZoomIncAddDifference"] = 4,
				["shoulderOffsetZoomUpperBound"] = 8,
				["cvars"] = {
					["test_cameraDynamicPitchBaseFovPadFlying"] = 0.45,
					["test_cameraDynamicPitch"] = 1,
					["test_cameraDynamicPitchBaseFovPad"] = 0.39,
					["cameraDistanceMaxZoomFactor"] = 2.6,
				},
				["reactiveZoomEnabled"] = false,
				["reactiveZoomMaxZoomTime"] = 0.25,
			},
			["situations"] = {
				["034"] = {
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitch"] = 0,
						},
					},
				},
				["033"] = {
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitch"] = 0,
						},
					},
				},
				["023"] = {
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitch"] = 0,
						},
					},
				},
				["006"] = {
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitch"] = 0,
						},
					},
					["viewZoom"] = {
						["viewZoomType"] = "view",
						["enabled"] = true,
						["viewRestore"] = false,
						["viewNumber"] = 5,
					},
				},
				["302"] = {
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitch"] = 1,
						},
					},
					["viewZoom"] = {
						["enabled"] = true,
						["zoomMax"] = 20,
						["zoomTransitionTime"] = 0.75,
						["zoomValue"] = 7,
						["zoomTimeIsMax"] = true,
					},
				},
				["101"] = {
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraHeadMovementStrength"] = 0,
							["test_cameraOverShoulder"] = -1,
						},
					},
					["viewZoom"] = {
						["enabled"] = true,
						["zoomMax"] = 20,
						["zoomTransitionTime"] = 0.75,
						["zoomValue"] = 15,
						["zoomTimeIsMax"] = true,
					},
					["hideUI"] = {
						["fadeOpacity"] = 0,
						["enabled"] = true,
						["hideEntireUI"] = true,
					},
				},
				["002"] = {
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitchBaseFovPad"] = 1,
							["test_cameraDynamicPitch"] = 1,
							["test_cameraDynamicPitchSmartPivotCutoffDist"] = 11,
							["test_cameraDynamicPitchBaseFovPadDownScale"] = 0,
						},
					},
					["viewZoom"] = {
						["viewZoomType"] = "view",
						["zoomMax"] = 20,
						["zoomTransitionTime"] = 0.75,
						["viewNumber"] = 5,
						["viewRestore"] = false,
						["zoomValue"] = 8,
						["enabled"] = true,
						["zoomTimeIsMax"] = true,
						["zoomType"] = "in",
					},
				},
				["310"] = {
					["enabled"] = true,
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraTargetFocusInteractEnable"] = 0,
							["test_cameraTargetFocusEnemyEnable"] = 0,
							["test_cameraTargetFocusInteractStrengthYaw"] = 1,
							["test_cameraTargetFocusEnemyStrengthPitch"] = 0.4,
							["test_cameraDynamicPitch"] = 0,
							["test_cameraTargetFocusInteractStrengthPitch"] = 0.75,
							["test_cameraDynamicPitchBaseFovPad"] = 0.16,
							["test_cameraDynamicPitchBaseFovPadDownScale"] = 0.25,
							["test_cameraTargetFocusEnemyStrengthYaw"] = 0.5,
							["test_cameraDynamicPitchSmartPivotCutoffDist"] = 10,
							["test_cameraDynamicPitchBaseFovPadFlying"] = 0.45,
						},
					},
				},
				["102"] = {
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraOverShoulder"] = 0,
							["test_cameraHeadMovementStrength"] = 0,
							["test_cameraDynamicPitch"] = 0,
						},
					},
				},
				["030"] = {
					["enabled"] = true,
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitchBaseFovPad"] = 0.66,
							["test_cameraDynamicPitch"] = 1,
						},
					},
				},
				["301"] = {
					["viewZoom"] = {
						["enabled"] = true,
						["zoomMax"] = 20,
						["zoomTransitionTime"] = 0.75,
						["zoomType"] = "in",
						["zoomValue"] = 4,
						["zoomTimeIsMax"] = true,
					},
				},
				["005"] = {
					["viewZoom"] = {
						["enabled"] = true,
						["zoomMax"] = 20,
						["zoomType"] = "in",
						["zoomTimeIsMax"] = true,
						["zoomTransitionTime"] = 0.75,
					},
				},
				["031"] = {
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitch"] = 0,
						},
					},
				},
				["021"] = {
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitch"] = 0,
						},
					},
				},
				["020"] = {
					["enabled"] = true,
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitchBaseFovPad"] = 0.47,
							["test_cameraDynamicPitch"] = 1,
							["test_cameraDynamicPitchBaseFovPadFlying"] = 0.47,
						},
					},
					["viewZoom"] = {
						["viewZoomType"] = "view",
						["enabled"] = true,
						["viewRestore"] = false,
						["viewNumber"] = 5,
					},
				},
				["001"] = {
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitch"] = 0,
						},
					},
					["viewZoom"] = {
						["enabled"] = true,
						["zoomMax"] = 20,
						["zoomTransitionTime"] = 0.75,
						["zoomType"] = "range",
						["zoomTimeIsMax"] = true,
						["zoomMin"] = 10,
					},
				},
				["024"] = {
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitch"] = 0,
						},
					},
				},
				["004"] = {
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraOverShoulder"] = 10,
						},
					},
				},
				["300"] = {
					["executeOnInit"] = "this.frames = {\"GarrisonCapacitiveDisplayFrame\", \"BankFrame\", \"MerchantFrame\", \"GossipFrame\", \"ClassTrainerFrame\", \"QuestFrame\",}",
					["condition"] = "local shown = false;\nfor k,v in pairs(this.frames) do\n    if (_G[v] and _G[v]:IsShown()) then\n        shown = true;\n    end\nend\nreturn UnitExists(\"npc\") and UnitIsUnit(\"npc\", \"target\") and shown;",
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitch"] = 1,
							["test_cameraTargetFocusInteractEnable"] = 1,
							["test_cameraTargetFocusEnemyEnable"] = 1,
						},
					},
					["events"] = {
						nil, -- [1]
						nil, -- [2]
						nil, -- [3]
						nil, -- [4]
						nil, -- [5]
						nil, -- [6]
						nil, -- [7]
						"BANKFRAME_OPENED", -- [8]
						"BANKFRAME_CLOSED", -- [9]
						nil, -- [10]
						"MERCHANT_CLOSED", -- [11]
						"TRAINER_SHOW", -- [12]
						"TRAINER_CLOSED", -- [13]
						"SHIPMENT_CRAFTER_OPENED", -- [14]
						"SHIPMENT_CRAFTER_CLOSED", -- [15]
					},
					["viewZoom"] = {
						["enabled"] = true,
						["zoomMax"] = 30,
						["zoomTransitionTime"] = 0.75,
						["zoomType"] = "fit",
						["zoomValue"] = 4,
						["zoomTimeIsMax"] = true,
						["zoomMin"] = 3,
					},
				},
				["200"] = {
					["executeOnInit"] = "this.spells = {136508, 189838, 54406, 94719, 556, 168487, 168499, 171253, 50977, 8690, 222695, 171253, 224869, 53140, 3565, 32271, 193759, 3562, 3567, 33690, 35715, 32272, 49358, 176248, 3561, 49359, 3566, 88342, 88344, 3563, 132627, 132621, 176242, 192085, 192084, 216016};",
					["condition"] = "for k,v in pairs(this.spells) do \n    if (UnitCastingInfo(\"player\") == GetSpellInfo(v)) then \n        return true;\n    end\nend\nreturn false;",
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitch"] = 0,
							["test_cameraHeadMovementStrength"] = 0,
							["test_cameraOverShoulder"] = 0,
						},
					},
					["executeOnEnter"] = "local _, _, _, _, startTime, endTime = UnitCastingInfo(\"player\");\nthis.transitionTime = ((endTime - startTime)/1000) - .25;",
					["viewZoom"] = {
						["enabled"] = true,
						["zoomMax"] = 20,
						["zoomType"] = "in",
						["zoomValue"] = 4,
						["zoomTransitionTime"] = 10,
					},
					["hideUI"] = {
						["fadeOpacity"] = 0,
						["enabled"] = true,
						["hideEntireUI"] = true,
					},
					["rotation"] = {
						["enabled"] = true,
						["rotateBackTime"] = 10,
						["rotationType"] = "degrees",
						["rotationSpeed"] = 20,
						["yawDegrees"] = 360,
						["rotationTime"] = 10,
						["rotateBack"] = false,
					},
				},
				["100"] = {
					["condition"] = "return IsMounted();",
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitch"] = 0,
							["test_cameraHeadMovementStrength"] = 0,
							["test_cameraOverShoulder"] = 0,
						},
					},
					["viewZoom"] = {
						["enabled"] = true,
						["zoomMax"] = 20,
						["zoomTransitionTime"] = 0.75,
						["zoomType"] = "out",
						["zoomValue"] = 30,
						["zoomTimeIsMax"] = true,
					},
				},
				["201"] = {
					["condition"] = "for k,v in pairs(this.buffs) do \n    if (UnitBuff(\"player\", GetSpellInfo(v))) then\n        return true;\n    end\nend\nreturn false;",
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitch"] = 0,
							["test_cameraHeadMovementStrength"] = 0,
							["test_cameraOverShoulder"] = 0,
						},
					},
				},
			},
			["defaultVersion"] = 1,
			["version"] = 3,
			["firstRun"] = false,
		},
	},
}
minZoomValues = {
}

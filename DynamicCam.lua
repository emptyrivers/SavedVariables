
DynamicCamDB = {
	["profileKeys"] = {
		["Rapidrivers - Arthas"] = "Serenerivers - Arthas",
		["Sverdrup - Argent Dawn"] = "Default",
		["Canerena - Arthas"] = "Default",
		["Ailisuul - Arthas"] = "Default",
		["Yandanderex - Moon Guard"] = "Default",
		["Mindrivers - Korgath"] = "Default",
		["Serenerivers - Arthas"] = "Serenerivers - Arthas",
		["Emptyrivers - Korgath"] = "Serenerivers - Arthas",
		["Wildrivers - Bleeding Hollow"] = "Default",
		["Blindrivers - Sargeras"] = "Default",
		["Tinyrivers - Kel'Thuzad"] = "Default",
		["Confluence - Argent Dawn"] = "Default",
		["Testrivers - Bleeding Hollow"] = "Default",
		["Beefyrivers - Bleeding Hollow"] = "Default",
		["Headcut - Argent Dawn"] = "Default",
		["Serenerivers - Kel'Thuzad"] = "Default",
		["Alluvium - Argent Dawn"] = "Default",
		["Greedyrivers - Arthas"] = "Default",
		["Serenerivers - Bleeding Hollow"] = "Default",
		["Crazyrivers - Sargeras"] = "Default",
		["Evilrivers - Sargeras"] = "Default",
		["Littlerivers - Kel'Thuzad"] = "Default",
		["Luckyrivers - Sargeras"] = "Default",
		["Emptyrivers - Arthas"] = "Default",
		["Edgyrivers - Kel'Thuzad"] = "Serenerivers - Arthas",
		["Riparium - Argent Dawn"] = "Default",
		["Savattellir - Arthas"] = "Default",
		["Edgyrivers - Arthas"] = "Default",
		["Dammedrivers - Exodar"] = "Default",
		["Shachein - Arthas"] = "Default",
		["Blindrivers - Korgath"] = "Default",
		["Wildrivers - Arthas"] = "Serenerivers - Arthas",
		["Evilrivers - Korgath"] = "Default",
		["Beefyrivers - Arthas"] = "Default",
		["Feralrivers - Sargeras"] = "Default",
		["Crazyrivers - Bleeding Hollow"] = "Default",
		["Boringrivers - Bleeding Hollow"] = "Default",
		["Mahntaiaga - Arthas"] = "Default",
		["Tinyrivers - Arthas"] = "Serenerivers - Arthas",
		["Serenerivers - Sargeras"] = "Default",
		["Emptyrivers - Sargeras"] = "Default",
		["Crazyrivers - Arthas"] = "Default",
		["Mecharivers - Sargeras"] = "Default",
		["Eysta - Sargeras"] = "Default",
		["Ragingrivers - Arthas"] = "Default",
		["Emptyrivers - Bleeding Hollow"] = "Default",
		["Holyrivers - Sargeras"] = "Default",
		["Kdajshtlaiuw - Bleeding Hollow"] = "Default",
		["Evilrivers - Kel'Thuzad"] = "Default",
		["Testes - Arthas"] = "Default",
		["Daedrasminia - Arthas"] = "Default",
		["Riversticks - Bleeding Hollow"] = "Default",
		["Emptyrivers - Argent Dawn"] = "Default",
		["Sassyrivers - Arthas"] = "Serenerivers - Arthas",
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
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitch"] = 0,
						},
					},
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"raid\") and UnitAffectingCombat(\"player\") and IsEncounterInProgress();",
					["name"] = "Raid (Combat, Boss)",
				},
				["023"] = {
					["enabled"] = true,
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitch"] = 0,
						},
					},
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"party\") and UnitAffectingCombat(\"player\") and IsEncounterInProgress();",
					["name"] = "Dungeon (Combat, Boss)",
				},
				["006"] = {
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitch"] = 0,
						},
					},
					["name"] = "World (Combat)",
					["viewZoom"] = {
						["viewZoomType"] = "view",
						["viewRestore"] = false,
						["viewNumber"] = 5,
						["enabled"] = true,
					},
					["condition"] = "return not IsInInstance() and UnitAffectingCombat(\"player\");",
				},
				["302"] = {
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitch"] = 1,
						},
					},
					["delay"] = 2,
					["condition"] = "return (UnitChannelInfo(\"player\") == GetSpellInfo(7620))",
					["viewZoom"] = {
						["enabled"] = true,
						["zoomMax"] = 20,
						["zoomTransitionTime"] = 0.75,
						["zoomTimeIsMax"] = true,
						["zoomValue"] = 7,
					},
				},
				["060"] = {
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"pvp\");",
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
				["101"] = {
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraHeadMovementStrength"] = 0,
							["test_cameraOverShoulder"] = -1,
						},
					},
					["condition"] = "return UnitOnTaxi(\"player\");",
					["viewZoom"] = {
						["enabled"] = true,
						["zoomMax"] = 20,
						["zoomTransitionTime"] = 0.75,
						["zoomTimeIsMax"] = true,
						["zoomValue"] = 15,
					},
					["hideUI"] = {
						["enabled"] = true,
						["hideEntireUI"] = true,
						["fadeOpacity"] = 0,
					},
				},
				["100"] = {
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitch"] = 0,
							["test_cameraHeadMovementStrength"] = 0,
							["test_cameraOverShoulder"] = 0,
						},
					},
					["viewZoom"] = {
						["enabled"] = true,
						["zoomType"] = "out",
						["zoomMax"] = 20,
						["zoomTransitionTime"] = 0.75,
						["zoomTimeIsMax"] = true,
						["zoomValue"] = 30,
					},
					["events"] = {
						"SPELL_UPDATE_USABLE", -- [1]
						"UNIT_AURA", -- [2]
					},
					["condition"] = "return IsMounted();",
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
					["rotation"] = {
						["enabled"] = true,
						["rotateBackTime"] = 10,
						["rotationType"] = "degrees",
						["rotationSpeed"] = 20,
						["yawDegrees"] = 360,
						["rotationTime"] = 10,
						["rotateBack"] = false,
					},
					["executeOnInit"] = "this.spells = {136508, 189838, 54406, 94719, 556, 168487, 168499, 171253, 50977, 8690, 222695, 171253, 224869, 53140, 3565, 32271, 193759, 3562, 3567, 33690, 35715, 32272, 49358, 176248, 3561, 49359, 3566, 88342, 88344, 3563, 132627, 132621, 176242, 192085, 192084, 216016};",
					["condition"] = "for k,v in pairs(this.spells) do \n    if (UnitCastingInfo(\"player\") == GetSpellInfo(v)) then \n        return true;\n    end\nend\nreturn false;",
					["priority"] = 20,
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
				["031"] = {
					["enabled"] = true,
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitch"] = 0,
						},
					},
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"raid\") and IsOutdoors();",
					["name"] = "Raid (Outdoors)",
				},
				["201"] = {
					["enabled"] = true,
					["executeOnInit"] = "this.buffs = {46924, 51690, 188499, 210152};",
					["condition"] = "for k,v in pairs(this.buffs) do \n    if (UnitBuff(\"player\", GetSpellInfo(v))) then\n        return true;\n    end\nend\nreturn false;",
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitch"] = 0,
							["test_cameraHeadMovementStrength"] = 0,
							["test_cameraOverShoulder"] = 0,
						},
					},
				},
				["061"] = {
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"pvp\") and UnitAffectingCombat(\"player\");",
					["name"] = "Battleground (Combat)",
				},
				["001"] = {
					["viewZoom"] = {
						["enabled"] = true,
						["zoomType"] = "range",
						["zoomMax"] = 20,
						["zoomTransitionTime"] = 0.75,
						["zoomTimeIsMax"] = true,
						["zoomMin"] = 10,
					},
					["condition"] = "return IsResting();",
				},
				["024"] = {
					["enabled"] = true,
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitch"] = 0,
						},
					},
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"party\") and UnitAffectingCombat(\"player\") and not IsEncounterInProgress();",
					["name"] = "Dungeon (Combat, Trash)",
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
						["zoomTransitionTime"] = 0.75,
						["zoomTimeIsMax"] = true,
						["zoomMin"] = 15,
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
					["executeOnInit"] = "this.frames = {\"GarrisonCapacitiveDisplayFrame\", \"BankFrame\", \"MerchantFrame\", \"GossipFrame\", \"ClassTrainerFrame\", \"QuestFrame\",}",
					["condition"] = "local shown = false;\nfor k,v in pairs(this.frames) do\n    if (_G[v] and _G[v]:IsShown()) then\n        shown = true;\n    end\nend\nreturn UnitExists(\"npc\") and UnitIsUnit(\"npc\", \"target\") and shown;",
					["priority"] = 20,
					["delay"] = 0.5,
					["viewZoom"] = {
						["enabled"] = true,
						["zoomType"] = "fit",
						["zoomMax"] = 30,
						["zoomValue"] = 4,
						["zoomTransitionTime"] = 0.75,
						["zoomTimeIsMax"] = true,
						["zoomMin"] = 3,
					},
				},
				["020"] = {
					["enabled"] = true,
					["viewZoom"] = {
						["viewZoomType"] = "view",
						["viewRestore"] = false,
						["viewNumber"] = 5,
						["enabled"] = true,
					},
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitch"] = 0,
						},
					},
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"party\");",
					["name"] = "Dungeon",
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
				["021"] = {
					["enabled"] = true,
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitch"] = 0,
						},
					},
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"party\") and IsOutdoors();",
					["name"] = "Dungeon (Outdoors)",
				},
				["034"] = {
					["enabled"] = true,
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitch"] = 0,
						},
					},
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"raid\") and UnitAffectingCombat(\"player\") and not IsEncounterInProgress();",
					["name"] = "Raid (Combat, Trash)",
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
					["test_cameraDynamicPitchBaseFovPad"] = 0.3,
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
				["310"] = {
					["enabled"] = true,
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraTargetFocusInteractEnable"] = 0,
							["test_cameraTargetFocusEnemyEnable"] = 1,
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
				["031"] = {
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitch"] = 0,
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
							["test_cameraDynamicPitchBaseFovPad"] = 0.5,
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
						["hideEntireUI"] = true,
						["enabled"] = true,
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
				["020"] = {
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
					["viewZoom"] = {
						["enabled"] = true,
						["zoomMax"] = 30,
						["zoomTransitionTime"] = 0.75,
						["zoomType"] = "fit",
						["zoomValue"] = 4,
						["zoomTimeIsMax"] = true,
						["zoomMin"] = 3,
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
				},
				["200"] = {
					["executeOnInit"] = "this.spells = {136508, 189838, 54406, 94719, 556, 168487, 168499, 171253, 50977, 8690, 222695, 171253, 224869, 53140, 3565, 32271, 193759, 3562, 3567, 33690, 35715, 32272, 49358, 176248, 3561, 49359, 3566, 88342, 88344, 3563, 132627, 132621, 176242, 192085, 192084, 216016};",
					["condition"] = "for k,v in pairs(this.spells) do \n    if (UnitCastingInfo(\"player\") == GetSpellInfo(v)) then \n        return true;\n    end\nend\nreturn false;",
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
						["zoomMax"] = 20,
						["zoomType"] = "in",
						["zoomValue"] = 4,
						["zoomTransitionTime"] = 10,
					},
					["hideUI"] = {
						["fadeOpacity"] = 0,
						["hideEntireUI"] = true,
						["enabled"] = true,
					},
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitch"] = 0,
							["test_cameraHeadMovementStrength"] = 0,
							["test_cameraOverShoulder"] = 0,
						},
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
				["021"] = {
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitch"] = 0,
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

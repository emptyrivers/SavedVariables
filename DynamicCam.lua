
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
		["Headcut - Argent Dawn"] = "Default",
		["Blindrivers - Sargeras"] = "Default",
		["Tinyrivers - Kel'Thuzad"] = "Default",
		["Serenerivers - Kel'Thuzad"] = "Default",
		["Testrivers - Bleeding Hollow"] = "Default",
		["Beefyrivers - Bleeding Hollow"] = "Default",
		["Wildrivers - Bleeding Hollow"] = "Default",
		["Confluence - Argent Dawn"] = "Default",
		["Alluvium - Argent Dawn"] = "Default",
		["Greedyrivers - Arthas"] = "Default",
		["Sassyrivers - Arthas"] = "Serenerivers - Arthas",
		["Crazyrivers - Sargeras"] = "Default",
		["Evilrivers - Sargeras"] = "Default",
		["Littlerivers - Kel'Thuzad"] = "Default",
		["Luckyrivers - Sargeras"] = "Default",
		["Emptyrivers - Arthas"] = "Default",
		["Edgyrivers - Arthas"] = "Default",
		["Daedrasminia - Arthas"] = "Default",
		["Savattellir - Arthas"] = "Default",
		["Edgyrivers - Kel'Thuzad"] = "Serenerivers - Arthas",
		["Dammedrivers - Exodar"] = "Default",
		["Shachein - Arthas"] = "Default",
		["Beefyrivers - Arthas"] = "Default",
		["Wildrivers - Arthas"] = "Serenerivers - Arthas",
		["Feralrivers - Sargeras"] = "Default",
		["Blindrivers - Korgath"] = "Default",
		["Evilrivers - Korgath"] = "Default",
		["Holyrivers - Sargeras"] = "Default",
		["Boringrivers - Bleeding Hollow"] = "Default",
		["Emptyrivers - Sargeras"] = "Default",
		["Tinyrivers - Arthas"] = "Serenerivers - Arthas",
		["Serenerivers - Sargeras"] = "Default",
		["Ragingrivers - Arthas"] = "Default",
		["Mahntaiaga - Arthas"] = "Default",
		["Mecharivers - Sargeras"] = "Default",
		["Eysta - Sargeras"] = "Default",
		["Crazyrivers - Arthas"] = "Default",
		["Emptyrivers - Bleeding Hollow"] = "Default",
		["Crazyrivers - Bleeding Hollow"] = "Default",
		["Kdajshtlaiuw - Bleeding Hollow"] = "Default",
		["Evilrivers - Kel'Thuzad"] = "Default",
		["Testes - Arthas"] = "Default",
		["Riparium - Argent Dawn"] = "Default",
		["Riversticks - Bleeding Hollow"] = "Default",
		["Emptyrivers - Argent Dawn"] = "Default",
		["Serenerivers - Bleeding Hollow"] = "Default",
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
					["name"] = "Raid (Combat, Boss)",
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"raid\") and UnitAffectingCombat(\"player\") and IsEncounterInProgress();",
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitch"] = 0,
						},
					},
				},
				["023"] = {
					["enabled"] = true,
					["name"] = "Dungeon (Combat, Boss)",
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"party\") and UnitAffectingCombat(\"player\") and IsEncounterInProgress();",
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
						["viewRestore"] = false,
						["viewNumber"] = 5,
						["enabled"] = true,
					},
					["condition"] = "return not IsInInstance() and UnitAffectingCombat(\"player\");",
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
					["name"] = "Raid (Outdoors)",
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"raid\") and IsOutdoors();",
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitch"] = 0,
						},
					},
				},
				["002"] = {
					["name"] = "City (Indoors)",
					["viewZoom"] = {
						["enabled"] = true,
						["zoomType"] = "in",
						["zoomMax"] = 20,
						["zoomTransitionTime"] = 0.75,
						["zoomTimeIsMax"] = true,
						["zoomValue"] = 8,
					},
					["condition"] = "return IsResting() and IsIndoors();",
				},
				["021"] = {
					["enabled"] = true,
					["name"] = "Dungeon (Outdoors)",
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"party\") and IsOutdoors();",
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
				["020"] = {
					["enabled"] = true,
					["viewZoom"] = {
						["viewZoomType"] = "view",
						["viewRestore"] = false,
						["viewNumber"] = 5,
						["enabled"] = true,
					},
					["name"] = "Dungeon",
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"party\");",
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitch"] = 0,
						},
					},
				},
				["301"] = {
					["events"] = {
						"MAIL_CLOSED", -- [1]
						"MAIL_SHOW", -- [2]
						"GOSSIP_CLOSED", -- [3]
					},
					["priority"] = 20,
					["viewZoom"] = {
						["enabled"] = true,
						["zoomType"] = "in",
						["zoomMax"] = 20,
						["zoomTransitionTime"] = 0.75,
						["zoomTimeIsMax"] = true,
						["zoomValue"] = 4,
					},
					["condition"] = "return (MailFrame and MailFrame:IsShown())",
				},
				["060"] = {
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"pvp\");",
				},
				["034"] = {
					["enabled"] = true,
					["name"] = "Raid (Combat, Trash)",
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"raid\") and UnitAffectingCombat(\"player\") and not IsEncounterInProgress();",
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitch"] = 0,
						},
					},
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
					["name"] = "Dungeon (Combat, Trash)",
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"party\") and UnitAffectingCombat(\"player\") and not IsEncounterInProgress();",
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
				["061"] = {
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"pvp\") and UnitAffectingCombat(\"player\");",
					["name"] = "Battleground (Combat)",
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
					["viewZoom"] = {
						["enabled"] = true,
						["zoomType"] = "fit",
						["zoomMax"] = 30,
						["zoomMin"] = 3,
						["zoomTransitionTime"] = 0.75,
						["zoomTimeIsMax"] = true,
						["zoomValue"] = 4,
					},
					["delay"] = 0.5,
					["executeOnInit"] = "this.frames = {\"GarrisonCapacitiveDisplayFrame\", \"BankFrame\", \"MerchantFrame\", \"GossipFrame\", \"ClassTrainerFrame\", \"QuestFrame\",}",
					["condition"] = "local shown = false;\nfor k,v in pairs(this.frames) do\n    if (_G[v] and _G[v]:IsShown()) then\n        shown = true;\n    end\nend\nreturn UnitExists(\"npc\") and UnitIsUnit(\"npc\", \"target\") and shown;",
					["priority"] = 20,
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
					["priority"] = 20,
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
				},
				["100"] = {
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitch"] = 0,
							["test_cameraHeadMovementStrength"] = 0,
							["test_cameraOverShoulder"] = 0,
						},
					},
					["events"] = {
						"SPELL_UPDATE_USABLE", -- [1]
						"UNIT_AURA", -- [2]
					},
					["condition"] = "return IsMounted();",
					["viewZoom"] = {
						["enabled"] = true,
						["zoomType"] = "out",
						["zoomMax"] = 20,
						["zoomTransitionTime"] = 0.75,
						["zoomTimeIsMax"] = true,
						["zoomValue"] = 30,
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
				["005"] = {
					["name"] = "World (Indoors)",
					["viewZoom"] = {
						["enabled"] = true,
						["zoomType"] = "in",
						["zoomMax"] = 20,
						["zoomTransitionTime"] = 0.75,
						["zoomTimeIsMax"] = true,
					},
					["condition"] = "return not IsResting() and not IsInInstance() and IsIndoors();",
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
				["031"] = {
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
				["021"] = {
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitch"] = 0,
						},
					},
				},
				["002"] = {
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitchBaseFovPad"] = 1,
							["test_cameraDynamicPitch"] = 1,
							["test_cameraDynamicPitchBaseFovPadDownScale"] = 0,
							["test_cameraDynamicPitchSmartPivotCutoffDist"] = 11,
						},
					},
					["viewZoom"] = {
						["viewZoomType"] = "view",
						["zoomMax"] = 20,
						["zoomTransitionTime"] = 0.75,
						["zoomTimeIsMax"] = true,
						["viewRestore"] = false,
						["zoomValue"] = 8,
						["zoomType"] = "in",
						["viewNumber"] = 5,
						["enabled"] = true,
					},
				},
				["004"] = {
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraOverShoulder"] = 10,
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
				["034"] = {
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitch"] = 0,
						},
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
				["001"] = {
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitch"] = 0,
						},
					},
					["viewZoom"] = {
						["enabled"] = true,
						["zoomMax"] = 20,
						["zoomMin"] = 10,
						["zoomType"] = "range",
						["zoomTimeIsMax"] = true,
						["zoomTransitionTime"] = 0.75,
					},
				},
				["024"] = {
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitch"] = 0,
						},
					},
				},
				["310"] = {
					["enabled"] = true,
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraTargetFocusInteractEnable"] = 0,
							["test_cameraTargetFocusEnemyEnable"] = 1,
							["test_cameraDynamicPitchBaseFovPadFlying"] = 0.45,
							["test_cameraTargetFocusEnemyStrengthPitch"] = 0.4,
							["test_cameraDynamicPitch"] = 0,
							["test_cameraTargetFocusInteractStrengthPitch"] = 0.75,
							["test_cameraDynamicPitchSmartPivotCutoffDist"] = 10,
							["test_cameraTargetFocusEnemyStrengthYaw"] = 0.5,
							["test_cameraDynamicPitchBaseFovPadDownScale"] = 0.25,
							["test_cameraDynamicPitchBaseFovPad"] = 0.16,
							["test_cameraTargetFocusInteractStrengthYaw"] = 1,
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
				["030"] = {
					["enabled"] = true,
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitchBaseFovPad"] = 0.5,
							["test_cameraDynamicPitch"] = 1,
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
						["zoomValue"] = 15,
						["zoomTimeIsMax"] = true,
					},
					["hideUI"] = {
						["fadeOpacity"] = 0,
						["enabled"] = true,
						["hideEntireUI"] = true,
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

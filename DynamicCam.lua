
DynamicCamDB = {
	["profileKeys"] = {
		["Rapidrivers - Arthas"] = "Serenerivers - Arthas",
		["Canerena - Arthas"] = "Default",
		["Ailisuul - Arthas"] = "Default",
		["Yandanderex - Moon Guard"] = "Default",
		["Mindrivers - Korgath"] = "Default",
		["Serenerivers - Arthas"] = "Serenerivers - Arthas",
		["Emptyrivers - Korgath"] = "Serenerivers - Arthas",
		["Blindrivers - Sargeras"] = "Default",
		["Tinyrivers - Kel'Thuzad"] = "Default",
		["Testrivers - Bleeding Hollow"] = "Default",
		["Beefyrivers - Bleeding Hollow"] = "Default",
		["Wildrivers - Bleeding Hollow"] = "Default",
		["Serenerivers - Kel'Thuzad"] = "Default",
		["Greedyrivers - Arthas"] = "Default",
		["Crazyrivers - Sargeras"] = "Default",
		["Evilrivers - Sargeras"] = "Default",
		["Littlerivers - Kel'Thuzad"] = "Default",
		["Luckyrivers - Sargeras"] = "Default",
		["Sassyrivers - Arthas"] = "Serenerivers - Arthas",
		["Savattellir - Arthas"] = "Default",
		["Edgyrivers - Kel'Thuzad"] = "Serenerivers - Arthas",
		["Edgyrivers - Arthas"] = "Default",
		["Shachein - Arthas"] = "Default",
		["Dammedrivers - Exodar"] = "Default",
		["Wildrivers - Arthas"] = "Serenerivers - Arthas",
		["Beefyrivers - Arthas"] = "Default",
		["Blindrivers - Korgath"] = "Default",
		["Feralrivers - Sargeras"] = "Default",
		["Serenerivers - Bleeding Hollow"] = "Default",
		["Holyrivers - Sargeras"] = "Default",
		["Crazyrivers - Arthas"] = "Default",
		["Tinyrivers - Arthas"] = "Serenerivers - Arthas",
		["Serenerivers - Sargeras"] = "Default",
		["Emptyrivers - Sargeras"] = "Default",
		["Mahntaiaga - Arthas"] = "Default",
		["Mecharivers - Sargeras"] = "Default",
		["Eysta - Sargeras"] = "Default",
		["Boringrivers - Bleeding Hollow"] = "Default",
		["Emptyrivers - Bleeding Hollow"] = "Default",
		["Ragingrivers - Arthas"] = "Default",
		["Kdajshtlaiuw - Bleeding Hollow"] = "Default",
		["Evilrivers - Kel'Thuzad"] = "Default",
		["Testes - Arthas"] = "Default",
		["Daedrasminia - Arthas"] = "Default",
		["Riversticks - Bleeding Hollow"] = "Default",
		["Crazyrivers - Bleeding Hollow"] = "Default",
		["Evilrivers - Korgath"] = "Default",
		["Tinyrivers - Sargeras"] = "Default",
		["Skankyrivers - Arthas"] = "Default",
		["Emptyrivers - Arthas"] = "Default",
	},
	["profiles"] = {
		["Serenerivers - Arthas"] = {
			["defaultCvars"] = {
				["test_cameraDynamicPitchBaseFovPad"] = 0.05,
				["test_cameraDynamicPitch"] = 1,
			},
			["version"] = 2,
			["situations"] = {
				["033"] = {
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
					},
					["name"] = "Raid (Combat, Boss)",
					["extras"] = {
					},
					["events"] = {
						"PLAYER_REGEN_DISABLED", -- [1]
						"PLAYER_REGEN_ENABLED", -- [2]
						"ZONE_CHANGED_NEW_AREA", -- [3]
						"ENCOUNTER_START", -- [4]
						"ENCOUNTER_END", -- [5]
						"INSTANCE_ENCOUNTER_ENGAGE_UNIT", -- [6]
					},
					["priority"] = 303,
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"raid\") and UnitAffectingCombat(\"player\") and IsEncounterInProgress();",
					["cameraActions"] = {
						["zoomFitToggleNameplate"] = true,
						["zoomMax"] = 20,
					},
				},
				["023"] = {
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
					},
					["name"] = "Dungeon (Combat, Boss)",
					["extras"] = {
					},
					["events"] = {
						"PLAYER_REGEN_DISABLED", -- [1]
						"PLAYER_REGEN_ENABLED", -- [2]
						"ZONE_CHANGED_NEW_AREA", -- [3]
						"ENCOUNTER_START", -- [4]
						"ENCOUNTER_END", -- [5]
						"INSTANCE_ENCOUNTER_ENGAGE_UNIT", -- [6]
					},
					["priority"] = 302,
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"party\") and UnitAffectingCombat(\"player\") and IsEncounterInProgress();",
					["cameraActions"] = {
						["zoomFitToggleNameplate"] = true,
						["zoomMax"] = 20,
					},
				},
				["006"] = {
					["enabled"] = false,
					["cameraActions"] = {
						["zoomFitUseCurAsMin"] = true,
						["zoomFitToggleNameplate"] = true,
						["zoomMax"] = 35,
					},
					["view"] = {
						["enabled"] = true,
					},
					["events"] = {
						"PLAYER_REGEN_DISABLED", -- [1]
						"PLAYER_REGEN_ENABLED", -- [2]
						"ZONE_CHANGED_NEW_AREA", -- [3]
					},
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
					},
					["condition"] = "return not IsInInstance() and UnitAffectingCombat(\"player\");",
					["priority"] = 50,
					["extras"] = {
					},
					["name"] = "World (Combat)",
				},
				["302"] = {
					["enabled"] = false,
					["cameraActions"] = {
						["zoomValue"] = 7,
						["zoomSetting"] = "set",
						["zoomFitToggleNameplate"] = true,
						["zoomMax"] = 20,
					},
					["condition"] = "return (UnitChannelInfo(\"player\") == GetSpellInfo(7620))",
					["name"] = "Fishing",
					["delay"] = 2,
					["events"] = {
						"UNIT_SPELLCAST_START", -- [1]
						"UNIT_SPELLCAST_STOP", -- [2]
						"UNIT_SPELLCAST_SUCCEEDED", -- [3]
						"UNIT_SPELLCAST_CHANNEL_START", -- [4]
						"UNIT_SPELLCAST_CHANNEL_STOP", -- [5]
						"UNIT_SPELLCAST_CHANNEL_UPDATE", -- [6]
						"UNIT_SPELLCAST_INTERRUPTED", -- [7]
					},
					["priority"] = 20,
					["extras"] = {
					},
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 1,
					},
				},
				["005"] = {
					["enabled"] = false,
					["name"] = "World (Indoors)",
					["condition"] = "return not IsResting() and not IsInInstance() and IsIndoors();",
					["extras"] = {
					},
					["priority"] = 10,
					["cameraActions"] = {
						["zoomFitToggleNameplate"] = true,
						["zoomSetting"] = "in",
						["zoomMax"] = 20,
					},
					["events"] = {
						"PLAYER_UPDATE_RESTING", -- [1]
						"ZONE_CHANGED_INDOORS", -- [2]
						"ZONE_CHANGED", -- [3]
						"ZONE_CHANGED_NEW_AREA", -- [4]
						"SPELL_UPDATE_USABLE", -- [5]
					},
				},
				["002"] = {
					["enabled"] = false,
					["name"] = "City (Indoors)",
					["condition"] = "return IsResting() and IsIndoors();",
					["extras"] = {
					},
					["priority"] = 11,
					["cameraActions"] = {
						["zoomValue"] = 8,
						["zoomSetting"] = "in",
						["zoomFitToggleNameplate"] = true,
						["zoomMax"] = 20,
					},
					["events"] = {
						"PLAYER_UPDATE_RESTING", -- [1]
						"ZONE_CHANGED_INDOORS", -- [2]
						"ZONE_CHANGED", -- [3]
						"SPELL_UPDATE_USABLE", -- [4]
					},
				},
				["101"] = {
					["enabled"] = false,
					["condition"] = "return UnitOnTaxi(\"player\");",
					["name"] = "Taxi",
					["extras"] = {
						["hideUI"] = true,
					},
					["events"] = {
						"PLAYER_CONTROL_LOST", -- [1]
						"PLAYER_CONTROL_GAINED", -- [2]
					},
					["priority"] = 1000,
					["cameraActions"] = {
						["zoomValue"] = 15,
						["zoomSetting"] = "set",
						["zoomFitToggleNameplate"] = true,
						["zoomMax"] = 20,
					},
					["cameraCVars"] = {
						["test_cameraHeadMovementStrength"] = 0,
						["test_cameraOverShoulder"] = -1,
					},
				},
				["030"] = {
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
					},
					["name"] = "Raid",
					["extras"] = {
					},
					["events"] = {
						"ZONE_CHANGED_NEW_AREA", -- [1]
					},
					["priority"] = 3,
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"raid\");",
					["cameraActions"] = {
						["zoomFitToggleNameplate"] = true,
						["zoomMax"] = 20,
					},
				},
				["102"] = {
					["enabled"] = false,
					["condition"] = "return UnitUsingVehicle(\"player\");",
					["name"] = "Vehicle",
					["extras"] = {
					},
					["events"] = {
						"UNIT_ENTERED_VEHICLE", -- [1]
						"UNIT_EXITED_VEHICLE", -- [2]
					},
					["priority"] = 1000,
					["cameraActions"] = {
						["zoomFitToggleNameplate"] = true,
						["zoomMax"] = 20,
					},
					["cameraCVars"] = {
						["test_cameraOverShoulder"] = 0,
						["test_cameraHeadMovementStrength"] = 0,
						["test_cameraDynamicPitch"] = 0,
					},
				},
				["050"] = {
					["enabled"] = false,
					["name"] = "Arena",
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"arena\");",
					["extras"] = {
					},
					["priority"] = 3,
					["cameraActions"] = {
						["zoomFitToggleNameplate"] = true,
						["zoomMax"] = 20,
					},
					["events"] = {
						"ZONE_CHANGED_NEW_AREA", -- [1]
					},
				},
				["020"] = {
					["view"] = {
						["enabled"] = true,
					},
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
					},
					["name"] = "Dungeon",
					["extras"] = {
					},
					["events"] = {
						"ZONE_CHANGED_NEW_AREA", -- [1]
					},
					["priority"] = 2,
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"party\");",
					["cameraActions"] = {
						["zoomFitToggleNameplate"] = true,
						["zoomMax"] = 20,
					},
				},
				["301"] = {
					["enabled"] = false,
					["name"] = "Mailbox",
					["condition"] = "return (MailFrame and MailFrame:IsShown())",
					["extras"] = {
					},
					["priority"] = 20,
					["cameraActions"] = {
						["zoomValue"] = 4,
						["zoomSetting"] = "in",
						["zoomFitToggleNameplate"] = true,
						["zoomMax"] = 20,
					},
					["events"] = {
						"MAIL_CLOSED", -- [1]
						"MAIL_SHOW", -- [2]
						"GOSSIP_CLOSED", -- [3]
					},
				},
				["060"] = {
					["enabled"] = false,
					["name"] = "Battleground",
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"pvp\");",
					["extras"] = {
					},
					["priority"] = 3,
					["cameraActions"] = {
						["zoomFitToggleNameplate"] = true,
						["zoomMax"] = 20,
					},
					["events"] = {
						"ZONE_CHANGED_NEW_AREA", -- [1]
					},
				},
				["031"] = {
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
					},
					["name"] = "Raid (Outdoors)",
					["extras"] = {
					},
					["events"] = {
						"ZONE_CHANGED_INDOORS", -- [1]
						"ZONE_CHANGED", -- [2]
						"ZONE_CHANGED_NEW_AREA", -- [3]
						"SPELL_UPDATE_USABLE", -- [4]
					},
					["priority"] = 13,
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"raid\") and IsOutdoors();",
					["cameraActions"] = {
						["zoomFitToggleNameplate"] = true,
						["zoomMax"] = 20,
					},
				},
				["021"] = {
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
					},
					["name"] = "Dungeon (Outdoors)",
					["extras"] = {
					},
					["events"] = {
						"ZONE_CHANGED_INDOORS", -- [1]
						"ZONE_CHANGED", -- [2]
						"ZONE_CHANGED_NEW_AREA", -- [3]
						"SPELL_UPDATE_USABLE", -- [4]
					},
					["priority"] = 12,
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"party\") and IsOutdoors();",
					["cameraActions"] = {
						["zoomFitToggleNameplate"] = true,
						["zoomMax"] = 20,
					},
				},
				["004"] = {
					["enabled"] = false,
					["events"] = {
						"PLAYER_UPDATE_RESTING", -- [1]
						"ZONE_CHANGED_NEW_AREA", -- [2]
					},
					["condition"] = "return not IsResting() and not IsInInstance();",
					["extras"] = {
					},
					["cameraActions"] = {
						["zoomFitToggleNameplate"] = true,
						["zoomMin"] = 15,
						["zoomSetting"] = "range",
						["zoomMax"] = 20,
					},
					["name"] = "World",
				},
				["001"] = {
					["enabled"] = false,
					["name"] = "City",
					["condition"] = "return IsResting();",
					["extras"] = {
					},
					["priority"] = 1,
					["cameraActions"] = {
						["zoomFitToggleNameplate"] = true,
						["zoomMin"] = 10,
						["zoomSetting"] = "range",
						["zoomMax"] = 20,
					},
					["events"] = {
						"PLAYER_UPDATE_RESTING", -- [1]
					},
				},
				["024"] = {
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
					},
					["name"] = "Dungeon (Combat, Trash)",
					["extras"] = {
					},
					["events"] = {
						"PLAYER_REGEN_DISABLED", -- [1]
						"PLAYER_REGEN_ENABLED", -- [2]
						"ZONE_CHANGED_NEW_AREA", -- [3]
						"ENCOUNTER_START", -- [4]
						"ENCOUNTER_END", -- [5]
						"INSTANCE_ENCOUNTER_ENGAGE_UNIT", -- [6]
					},
					["priority"] = 202,
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"party\") and UnitAffectingCombat(\"player\") and not IsEncounterInProgress();",
					["cameraActions"] = {
						["zoomFitToggleNameplate"] = true,
						["zoomMax"] = 20,
					},
				},
				["051"] = {
					["enabled"] = false,
					["name"] = "Arena (Combat)",
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"arena\") and UnitAffectingCombat(\"player\");",
					["extras"] = {
					},
					["priority"] = 203,
					["cameraActions"] = {
						["zoomFitToggleNameplate"] = true,
						["zoomMax"] = 20,
					},
					["events"] = {
						"PLAYER_REGEN_DISABLED", -- [1]
						"PLAYER_REGEN_ENABLED", -- [2]
						"ZONE_CHANGED_NEW_AREA", -- [3]
					},
				},
				["061"] = {
					["enabled"] = false,
					["name"] = "Battleground (Combat)",
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"pvp\") and UnitAffectingCombat(\"player\");",
					["extras"] = {
					},
					["priority"] = 203,
					["cameraActions"] = {
						["zoomFitToggleNameplate"] = true,
						["zoomMax"] = 20,
					},
					["events"] = {
						"PLAYER_REGEN_DISABLED", -- [1]
						"PLAYER_REGEN_ENABLED", -- [2]
						"ZONE_CHANGED_NEW_AREA", -- [3]
					},
				},
				["300"] = {
					["enabled"] = false,
					["executeOnInit"] = "this.frames = {\"GarrisonCapacitiveDisplayFrame\", \"BankFrame\", \"MerchantFrame\", \"GossipFrame\", \"ClassTrainerFrame\", \"QuestFrame\",}",
					["condition"] = "local shown = false;\nfor k,v in pairs(this.frames) do\n    if (_G[v] and _G[v]:IsShown()) then\n        shown = true;\n    end\nend\nreturn UnitExists(\"npc\") and UnitIsUnit(\"npc\", \"target\") and shown;",
					["cameraActions"] = {
						["zoomFitIncrements"] = 0.5,
						["zoomMax"] = 30,
						["zoomSetting"] = "fit",
						["zoomFitPosition"] = 90,
						["zoomMin"] = 3,
						["zoomValue"] = 4,
						["zoomFitToggleNameplate"] = true,
					},
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 1,
						["test_cameraTargetFocusInteractEnable"] = 1,
						["test_cameraTargetFocusEnemyEnable"] = 1,
					},
					["delay"] = 0.5,
					["name"] = "NPC Interaction",
					["priority"] = 20,
					["extras"] = {
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
						"MERCHANT_SHOW", -- [10]
						"MERCHANT_CLOSED", -- [11]
						"TRAINER_SHOW", -- [12]
						"TRAINER_CLOSED", -- [13]
						"SHIPMENT_CRAFTER_OPENED", -- [14]
						"SHIPMENT_CRAFTER_CLOSED", -- [15]
					},
				},
				["200"] = {
					["enabled"] = false,
					["executeOnInit"] = "this.spells = {136508, 189838, 54406, 94719, 556, 168487, 168499, 171253, 50977, 8690, 222695, 171253, 224869, 53140, 3565, 32271, 193759, 3562, 3567, 33690, 35715, 32272, 49358, 176248, 3561, 49359, 3566, 88342, 88344, 3563, 132627, 132621, 176242, 192085, 192084, 216016};",
					["condition"] = "for k,v in pairs(this.spells) do \n    if (UnitCastingInfo(\"player\") == GetSpellInfo(v)) then \n        return true;\n    end\nend\nreturn false;",
					["executeOnEnter"] = "local _, _, _, _, startTime, endTime = UnitCastingInfo(\"player\");\nthis.transitionTime = ((endTime - startTime)/1000) - .25;",
					["events"] = {
						"UNIT_SPELLCAST_START", -- [1]
						"UNIT_SPELLCAST_STOP", -- [2]
						"UNIT_SPELLCAST_SUCCEEDED", -- [3]
						"UNIT_SPELLCAST_CHANNEL_START", -- [4]
						"UNIT_SPELLCAST_CHANNEL_STOP", -- [5]
						"UNIT_SPELLCAST_CHANNEL_UPDATE", -- [6]
						"UNIT_SPELLCAST_INTERRUPTED", -- [7]
					},
					["name"] = "Hearth/Teleport",
					["cameraActions"] = {
						["pitchDegrees"] = 0,
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
						["transitionTime"] = 10,
						["rotate"] = true,
						["zoomSetting"] = "in",
						["yawDegrees"] = 360,
						["rotateSetting"] = "degrees",
						["zoomValue"] = 4,
						["timeIsMax"] = false,
					},
					["priority"] = 20,
					["extras"] = {
						["hideUI"] = true,
					},
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
						["test_cameraHeadMovementStrength"] = 0,
						["test_cameraOverShoulder"] = 0,
					},
				},
				["100"] = {
					["enabled"] = false,
					["condition"] = "return IsMounted();",
					["name"] = "Mounted",
					["extras"] = {
					},
					["events"] = {
						"SPELL_UPDATE_USABLE", -- [1]
						"UNIT_AURA", -- [2]
					},
					["priority"] = 100,
					["cameraActions"] = {
						["zoomValue"] = 30,
						["zoomSetting"] = "out",
						["zoomFitToggleNameplate"] = true,
						["zoomMax"] = 20,
					},
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
						["test_cameraHeadMovementStrength"] = 0,
						["test_cameraOverShoulder"] = 0,
					},
				},
				["201"] = {
					["condition"] = "for k,v in pairs(this.buffs) do \n    if (UnitBuff(\"player\", GetSpellInfo(v))) then\n        return true;\n    end\nend\nreturn false;",
					["extras"] = {
					},
					["events"] = {
						"UNIT_AURA", -- [1]
					},
					["priority"] = 1000,
					["name"] = "Annoying Spells",
					["executeOnInit"] = "this.buffs = {46924, 51690, 188499, 210152};",
					["cameraActions"] = {
						["zoomFitToggleNameplate"] = true,
						["zoomMax"] = 20,
					},
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
						["test_cameraHeadMovementStrength"] = 0,
						["test_cameraOverShoulder"] = 0,
					},
				},
				["034"] = {
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
					},
					["name"] = "Raid (Combat, Trash)",
					["extras"] = {
					},
					["events"] = {
						"PLAYER_REGEN_DISABLED", -- [1]
						"PLAYER_REGEN_ENABLED", -- [2]
						"ZONE_CHANGED_NEW_AREA", -- [3]
						"ENCOUNTER_START", -- [4]
						"ENCOUNTER_END", -- [5]
						"INSTANCE_ENCOUNTER_ENGAGE_UNIT", -- [6]
					},
					["priority"] = 203,
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"raid\") and UnitAffectingCombat(\"player\") and not IsEncounterInProgress();",
					["cameraActions"] = {
						["zoomFitToggleNameplate"] = true,
						["zoomMax"] = 20,
					},
				},
			},
			["defaultVersion"] = 1,
			["advanced"] = true,
			["firstRun"] = false,
		},
		["Default"] = {
			["defaultVersion"] = 1,
			["advanced"] = true,
			["version"] = 2,
			["situations"] = {
				["033"] = {
					["enabled"] = false,
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
					},
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
					},
				},
				["023"] = {
					["enabled"] = false,
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
					},
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
					},
				},
				["006"] = {
					["enabled"] = false,
					["cameraActions"] = {
						["zoomFitUseCurAsMin"] = true,
						["zoomMax"] = 35,
						["zoomFitToggleNameplate"] = true,
					},
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
					},
					["view"] = {
						["enabled"] = true,
					},
				},
				["302"] = {
					["enabled"] = false,
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
						["zoomSetting"] = "set",
						["zoomValue"] = 7,
					},
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 1,
					},
				},
				["101"] = {
					["enabled"] = false,
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
						["zoomSetting"] = "set",
						["zoomValue"] = 15,
					},
					["cameraCVars"] = {
						["test_cameraHeadMovementStrength"] = 0,
						["test_cameraOverShoulder"] = -1,
					},
					["extras"] = {
						["hideUI"] = true,
					},
				},
				["002"] = {
					["enabled"] = false,
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
						["zoomSetting"] = "in",
						["zoomValue"] = 8,
					},
					["cameraCVars"] = {
						["test_cameraDynamicPitchBaseFovPad"] = 1,
						["test_cameraDynamicPitch"] = 1,
						["test_cameraDynamicPitchSmartPivotCutoffDist"] = 11,
						["test_cameraDynamicPitchBaseFovPadDownScale"] = 0,
					},
					["view"] = {
						["enabled"] = true,
					},
				},
				["201"] = {
					["enabled"] = false,
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
					},
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
						["test_cameraHeadMovementStrength"] = 0,
						["test_cameraOverShoulder"] = 0,
					},
					["condition"] = "for k,v in pairs(this.buffs) do \n    if (UnitBuff(\"player\", GetSpellInfo(v))) then\n        return true;\n    end\nend\nreturn false;",
				},
				["100"] = {
					["enabled"] = false,
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
						["zoomSetting"] = "out",
						["zoomValue"] = 30,
					},
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
						["test_cameraHeadMovementStrength"] = 0,
						["test_cameraOverShoulder"] = 0,
					},
					["condition"] = "return IsMounted();",
				},
				["102"] = {
					["enabled"] = false,
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
					},
					["cameraCVars"] = {
						["test_cameraOverShoulder"] = 0,
						["test_cameraHeadMovementStrength"] = 0,
						["test_cameraDynamicPitch"] = 0,
					},
				},
				["050"] = {
					["enabled"] = false,
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
					},
				},
				["200"] = {
					["enabled"] = false,
					["executeOnInit"] = "this.spells = {136508, 189838, 54406, 94719, 556, 168487, 168499, 171253, 50977, 8690, 222695, 171253, 224869, 53140, 3565, 32271, 193759, 3562, 3567, 33690, 35715, 32272, 49358, 176248, 3561, 49359, 3566, 88342, 88344, 3563, 132627, 132621, 176242, 192085, 192084, 216016};",
					["cameraActions"] = {
						["zoomSetting"] = "in",
						["zoomMax"] = 20,
						["rotateSetting"] = "degrees",
						["zoomFitToggleNameplate"] = true,
						["timeIsMax"] = false,
						["zoomValue"] = 4,
						["yawDegrees"] = 360,
						["rotate"] = true,
						["transitionTime"] = 10,
					},
					["executeOnEnter"] = "local _, _, _, _, startTime, endTime = UnitCastingInfo(\"player\");\nthis.transitionTime = ((endTime - startTime)/1000) - .25;",
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
						["test_cameraHeadMovementStrength"] = 0,
						["test_cameraOverShoulder"] = 0,
					},
					["extras"] = {
						["hideUI"] = true,
					},
					["condition"] = "for k,v in pairs(this.spells) do \n    if (UnitCastingInfo(\"player\") == GetSpellInfo(v)) then \n        return true;\n    end\nend\nreturn false;",
				},
				["301"] = {
					["enabled"] = false,
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
						["zoomSetting"] = "in",
						["zoomValue"] = 4,
					},
				},
				["005"] = {
					["enabled"] = false,
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
						["zoomSetting"] = "in",
					},
				},
				["034"] = {
					["enabled"] = false,
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
					},
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
					},
				},
				["021"] = {
					["enabled"] = false,
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
					},
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
					},
				},
				["061"] = {
					["enabled"] = false,
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
					},
				},
				["001"] = {
					["enabled"] = false,
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomMin"] = 10,
						["zoomFitToggleNameplate"] = true,
						["zoomSetting"] = "range",
					},
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
					},
				},
				["024"] = {
					["enabled"] = false,
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
					},
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
					},
				},
				["051"] = {
					["enabled"] = false,
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
					},
				},
				["004"] = {
					["enabled"] = false,
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomMin"] = 15,
						["zoomFitToggleNameplate"] = true,
					},
					["cameraCVars"] = {
						["test_cameraOverShoulder"] = 10,
					},
				},
				["300"] = {
					["enabled"] = false,
					["executeOnInit"] = "this.frames = {\"GarrisonCapacitiveDisplayFrame\", \"BankFrame\", \"MerchantFrame\", \"GossipFrame\", \"ClassTrainerFrame\", \"QuestFrame\",}",
					["condition"] = "local shown = false;\nfor k,v in pairs(this.frames) do\n    if (_G[v] and _G[v]:IsShown()) then\n        shown = true;\n    end\nend\nreturn UnitExists(\"npc\") and UnitIsUnit(\"npc\", \"target\") and shown;",
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
						"MERCHANT_SHOW", -- [10]
						"MERCHANT_CLOSED", -- [11]
						"TRAINER_SHOW", -- [12]
						"TRAINER_CLOSED", -- [13]
						"SHIPMENT_CRAFTER_OPENED", -- [14]
						"SHIPMENT_CRAFTER_CLOSED", -- [15]
					},
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 1,
						["test_cameraTargetFocusInteractEnable"] = 1,
						["test_cameraTargetFocusEnemyEnable"] = 1,
					},
					["cameraActions"] = {
						["zoomFitIncrements"] = 0.5,
						["zoomMax"] = 30,
						["zoomMin"] = 3,
						["zoomValue"] = 4,
						["zoomFitToggleNameplate"] = true,
						["zoomFitPosition"] = 90,
						["zoomSetting"] = "fit",
					},
				},
				["020"] = {
					["view"] = {
						["enabled"] = true,
					},
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
					},
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
					},
					["enabled"] = false,
				},
				["030"] = {
					["enabled"] = false,
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
					},
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
					},
				},
				["031"] = {
					["enabled"] = false,
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
					},
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
					},
				},
				["060"] = {
					["enabled"] = false,
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
					},
				},
			},
			["defaultCvars"] = {
				["test_cameraDynamicPitchBaseFovPad"] = 0.01,
				["test_cameraDynamicPitch"] = 1,
			},
			["firstRun"] = false,
		},
	},
}

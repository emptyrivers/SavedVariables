
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
		["Emptyrivers - Arthas"] = "Default",
		["Savattellir - Arthas"] = "Default",
		["Edgyrivers - Kel'Thuzad"] = "Serenerivers - Arthas",
		["Edgyrivers - Arthas"] = "Default",
		["Shachein - Arthas"] = "Default",
		["Dammedrivers - Exodar"] = "Default",
		["Wildrivers - Arthas"] = "Serenerivers - Arthas",
		["Feralrivers - Sargeras"] = "Default",
		["Blindrivers - Korgath"] = "Default",
		["Evilrivers - Korgath"] = "Default",
		["Crazyrivers - Bleeding Hollow"] = "Default",
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
		["Serenerivers - Bleeding Hollow"] = "Default",
		["Beefyrivers - Arthas"] = "Default",
		["Tinyrivers - Sargeras"] = "Default",
		["Skankyrivers - Arthas"] = "Default",
		["Sassyrivers - Arthas"] = "Serenerivers - Arthas",
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
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"raid\") and UnitAffectingCombat(\"player\") and IsEncounterInProgress();",
					["name"] = "Raid (Combat, Boss)",
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
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
					["extras"] = {
					},
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
					},
				},
				["023"] = {
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"party\") and UnitAffectingCombat(\"player\") and IsEncounterInProgress();",
					["name"] = "Dungeon (Combat, Boss)",
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
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
					["extras"] = {
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
					["events"] = {
						"PLAYER_REGEN_DISABLED", -- [1]
						"PLAYER_REGEN_ENABLED", -- [2]
						"ZONE_CHANGED_NEW_AREA", -- [3]
					},
					["name"] = "World (Combat)",
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
					},
					["condition"] = "return not IsInInstance() and UnitAffectingCombat(\"player\");",
					["priority"] = 50,
					["extras"] = {
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
					["name"] = "Fishing",
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 1,
					},
					["extras"] = {
					},
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
					["delay"] = 2,
					["condition"] = "return (UnitChannelInfo(\"player\") == GetSpellInfo(7620))",
				},
				["101"] = {
					["enabled"] = false,
					["name"] = "Taxi",
					["cameraCVars"] = {
						["test_cameraHeadMovementStrength"] = 0,
						["test_cameraOverShoulder"] = -1,
					},
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
						["zoomSetting"] = "set",
						["zoomValue"] = 15,
					},
					["events"] = {
						"PLAYER_CONTROL_LOST", -- [1]
						"PLAYER_CONTROL_GAINED", -- [2]
					},
					["priority"] = 1000,
					["extras"] = {
						["hideUI"] = true,
					},
					["condition"] = "return UnitOnTaxi(\"player\");",
				},
				["002"] = {
					["enabled"] = false,
					["name"] = "City (Indoors)",
					["events"] = {
						"PLAYER_UPDATE_RESTING", -- [1]
						"ZONE_CHANGED_INDOORS", -- [2]
						"ZONE_CHANGED", -- [3]
						"SPELL_UPDATE_USABLE", -- [4]
					},
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
						["zoomSetting"] = "in",
						["zoomValue"] = 8,
					},
					["priority"] = 11,
					["extras"] = {
					},
					["condition"] = "return IsResting() and IsIndoors();",
				},
				["021"] = {
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"party\") and IsOutdoors();",
					["name"] = "Dungeon (Outdoors)",
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
					},
					["events"] = {
						"ZONE_CHANGED_INDOORS", -- [1]
						"ZONE_CHANGED", -- [2]
						"ZONE_CHANGED_NEW_AREA", -- [3]
						"SPELL_UPDATE_USABLE", -- [4]
					},
					["priority"] = 12,
					["extras"] = {
					},
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
					},
				},
				["100"] = {
					["enabled"] = false,
					["name"] = "Mounted",
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
						["test_cameraHeadMovementStrength"] = 0,
						["test_cameraOverShoulder"] = 0,
					},
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
						["zoomSetting"] = "out",
						["zoomValue"] = 30,
					},
					["events"] = {
						"SPELL_UPDATE_USABLE", -- [1]
						"UNIT_AURA", -- [2]
					},
					["priority"] = 100,
					["extras"] = {
					},
					["condition"] = "return IsMounted();",
				},
				["102"] = {
					["enabled"] = false,
					["name"] = "Vehicle",
					["cameraCVars"] = {
						["test_cameraOverShoulder"] = 0,
						["test_cameraHeadMovementStrength"] = 0,
						["test_cameraDynamicPitch"] = 0,
					},
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
					},
					["events"] = {
						"UNIT_ENTERED_VEHICLE", -- [1]
						"UNIT_EXITED_VEHICLE", -- [2]
					},
					["priority"] = 1000,
					["extras"] = {
					},
					["condition"] = "return UnitUsingVehicle(\"player\");",
				},
				["050"] = {
					["enabled"] = false,
					["name"] = "Arena",
					["events"] = {
						"ZONE_CHANGED_NEW_AREA", -- [1]
					},
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
					},
					["priority"] = 3,
					["extras"] = {
					},
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"arena\");",
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
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
						["test_cameraHeadMovementStrength"] = 0,
						["test_cameraOverShoulder"] = 0,
					},
					["cameraActions"] = {
						["pitchDegrees"] = 0,
						["zoomMax"] = 20,
						["transitionTime"] = 10,
						["timeIsMax"] = false,
						["zoomFitToggleNameplate"] = true,
						["zoomSetting"] = "in",
						["yawDegrees"] = 360,
						["rotateSetting"] = "degrees",
						["rotate"] = true,
						["zoomValue"] = 4,
					},
					["priority"] = 20,
					["extras"] = {
						["hideUI"] = true,
					},
					["name"] = "Hearth/Teleport",
				},
				["301"] = {
					["enabled"] = false,
					["name"] = "Mailbox",
					["events"] = {
						"MAIL_CLOSED", -- [1]
						"MAIL_SHOW", -- [2]
						"GOSSIP_CLOSED", -- [3]
					},
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
						["zoomSetting"] = "in",
						["zoomValue"] = 4,
					},
					["priority"] = 20,
					["extras"] = {
					},
					["condition"] = "return (MailFrame and MailFrame:IsShown())",
				},
				["060"] = {
					["enabled"] = false,
					["name"] = "Battleground",
					["events"] = {
						"ZONE_CHANGED_NEW_AREA", -- [1]
					},
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
					},
					["priority"] = 3,
					["extras"] = {
					},
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"pvp\");",
				},
				["031"] = {
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"raid\") and IsOutdoors();",
					["name"] = "Raid (Outdoors)",
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
					},
					["events"] = {
						"ZONE_CHANGED_INDOORS", -- [1]
						"ZONE_CHANGED", -- [2]
						"ZONE_CHANGED_NEW_AREA", -- [3]
						"SPELL_UPDATE_USABLE", -- [4]
					},
					["priority"] = 13,
					["extras"] = {
					},
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
					},
				},
				["201"] = {
					["events"] = {
						"UNIT_AURA", -- [1]
					},
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
					},
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
						["test_cameraHeadMovementStrength"] = 0,
						["test_cameraOverShoulder"] = 0,
					},
					["executeOnInit"] = "this.buffs = {46924, 51690, 188499, 210152};",
					["name"] = "Annoying Spells",
					["priority"] = 1000,
					["extras"] = {
					},
					["condition"] = "for k,v in pairs(this.buffs) do \n    if (UnitBuff(\"player\", GetSpellInfo(v))) then\n        return true;\n    end\nend\nreturn false;",
				},
				["061"] = {
					["enabled"] = false,
					["name"] = "Battleground (Combat)",
					["events"] = {
						"PLAYER_REGEN_DISABLED", -- [1]
						"PLAYER_REGEN_ENABLED", -- [2]
						"ZONE_CHANGED_NEW_AREA", -- [3]
					},
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
					},
					["priority"] = 203,
					["extras"] = {
					},
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"pvp\") and UnitAffectingCombat(\"player\");",
				},
				["001"] = {
					["enabled"] = false,
					["name"] = "City",
					["events"] = {
						"PLAYER_UPDATE_RESTING", -- [1]
					},
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomMin"] = 10,
						["zoomSetting"] = "range",
						["zoomFitToggleNameplate"] = true,
					},
					["priority"] = 1,
					["extras"] = {
					},
					["condition"] = "return IsResting();",
				},
				["024"] = {
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"party\") and UnitAffectingCombat(\"player\") and not IsEncounterInProgress();",
					["name"] = "Dungeon (Combat, Trash)",
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
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
					["extras"] = {
					},
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
					},
				},
				["051"] = {
					["enabled"] = false,
					["name"] = "Arena (Combat)",
					["events"] = {
						"PLAYER_REGEN_DISABLED", -- [1]
						"PLAYER_REGEN_ENABLED", -- [2]
						"ZONE_CHANGED_NEW_AREA", -- [3]
					},
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
					},
					["priority"] = 203,
					["extras"] = {
					},
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"arena\") and UnitAffectingCombat(\"player\");",
				},
				["004"] = {
					["enabled"] = false,
					["events"] = {
						"PLAYER_UPDATE_RESTING", -- [1]
						"ZONE_CHANGED_NEW_AREA", -- [2]
					},
					["name"] = "World",
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomMin"] = 15,
						["zoomSetting"] = "range",
						["zoomFitToggleNameplate"] = true,
					},
					["extras"] = {
					},
					["condition"] = "return not IsResting() and not IsInInstance();",
				},
				["300"] = {
					["enabled"] = false,
					["executeOnInit"] = "this.frames = {\"GarrisonCapacitiveDisplayFrame\", \"BankFrame\", \"MerchantFrame\", \"GossipFrame\", \"ClassTrainerFrame\", \"QuestFrame\",}",
					["condition"] = "local shown = false;\nfor k,v in pairs(this.frames) do\n    if (_G[v] and _G[v]:IsShown()) then\n        shown = true;\n    end\nend\nreturn UnitExists(\"npc\") and UnitIsUnit(\"npc\", \"target\") and shown;",
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 1,
						["test_cameraTargetFocusInteractEnable"] = 1,
						["test_cameraTargetFocusEnemyEnable"] = 1,
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
					["extras"] = {
					},
					["name"] = "NPC Interaction",
					["priority"] = 20,
					["delay"] = 0.5,
					["cameraActions"] = {
						["zoomFitIncrements"] = 0.5,
						["zoomMax"] = 30,
						["zoomSetting"] = "fit",
						["zoomFitPosition"] = 90,
						["zoomMin"] = 3,
						["zoomValue"] = 4,
						["zoomFitToggleNameplate"] = true,
					},
				},
				["020"] = {
					["view"] = {
						["enabled"] = true,
					},
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"party\");",
					["name"] = "Dungeon",
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
					},
					["events"] = {
						"ZONE_CHANGED_NEW_AREA", -- [1]
					},
					["priority"] = 2,
					["extras"] = {
					},
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
					},
				},
				["030"] = {
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"raid\");",
					["name"] = "Raid",
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
					},
					["events"] = {
						"ZONE_CHANGED_NEW_AREA", -- [1]
					},
					["priority"] = 3,
					["extras"] = {
					},
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
					},
				},
				["034"] = {
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"raid\") and UnitAffectingCombat(\"player\") and not IsEncounterInProgress();",
					["name"] = "Raid (Combat, Trash)",
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
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
					["extras"] = {
					},
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
					},
				},
				["005"] = {
					["enabled"] = false,
					["name"] = "World (Indoors)",
					["events"] = {
						"PLAYER_UPDATE_RESTING", -- [1]
						"ZONE_CHANGED_INDOORS", -- [2]
						"ZONE_CHANGED", -- [3]
						"ZONE_CHANGED_NEW_AREA", -- [4]
						"SPELL_UPDATE_USABLE", -- [5]
					},
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomSetting"] = "in",
						["zoomFitToggleNameplate"] = true,
					},
					["priority"] = 10,
					["extras"] = {
					},
					["condition"] = "return not IsResting() and not IsInInstance() and IsIndoors();",
				},
			},
			["defaultVersion"] = 1,
			["firstRun"] = false,
			["advanced"] = true,
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
				["005"] = {
					["enabled"] = false,
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
						["zoomSetting"] = "in",
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
						["test_cameraDynamicPitchBaseFovPadDownScale"] = 0,
						["test_cameraDynamicPitchSmartPivotCutoffDist"] = 11,
					},
					["view"] = {
						["enabled"] = true,
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
				["301"] = {
					["enabled"] = false,
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
						["zoomSetting"] = "in",
						["zoomValue"] = 4,
					},
				},
				["060"] = {
					["enabled"] = false,
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
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
				["061"] = {
					["enabled"] = false,
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
					},
				},
				["300"] = {
					["enabled"] = false,
					["executeOnInit"] = "this.frames = {\"GarrisonCapacitiveDisplayFrame\", \"BankFrame\", \"MerchantFrame\", \"GossipFrame\", \"ClassTrainerFrame\", \"QuestFrame\",}",
					["condition"] = "local shown = false;\nfor k,v in pairs(this.frames) do\n    if (_G[v] and _G[v]:IsShown()) then\n        shown = true;\n    end\nend\nreturn UnitExists(\"npc\") and UnitIsUnit(\"npc\", \"target\") and shown;",
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 1,
						["test_cameraTargetFocusInteractEnable"] = 1,
						["test_cameraTargetFocusEnemyEnable"] = 1,
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
						"MERCHANT_SHOW", -- [10]
						"MERCHANT_CLOSED", -- [11]
						"TRAINER_SHOW", -- [12]
						"TRAINER_CLOSED", -- [13]
						"SHIPMENT_CRAFTER_OPENED", -- [14]
						"SHIPMENT_CRAFTER_CLOSED", -- [15]
					},
					["cameraActions"] = {
						["zoomFitIncrements"] = 0.5,
						["zoomMax"] = 30,
						["zoomMin"] = 3,
						["zoomSetting"] = "fit",
						["zoomFitToggleNameplate"] = true,
						["zoomFitPosition"] = 90,
						["zoomValue"] = 4,
					},
				},
				["200"] = {
					["enabled"] = false,
					["executeOnInit"] = "this.spells = {136508, 189838, 54406, 94719, 556, 168487, 168499, 171253, 50977, 8690, 222695, 171253, 224869, 53140, 3565, 32271, 193759, 3562, 3567, 33690, 35715, 32272, 49358, 176248, 3561, 49359, 3566, 88342, 88344, 3563, 132627, 132621, 176242, 192085, 192084, 216016};",
					["cameraActions"] = {
						["zoomValue"] = 4,
						["zoomMax"] = 20,
						["rotate"] = true,
						["timeIsMax"] = false,
						["transitionTime"] = 10,
						["zoomSetting"] = "in",
						["yawDegrees"] = 360,
						["rotateSetting"] = "degrees",
						["zoomFitToggleNameplate"] = true,
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
				["100"] = {
					["enabled"] = false,
					["condition"] = "return IsMounted();",
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
						["test_cameraHeadMovementStrength"] = 0,
						["test_cameraOverShoulder"] = 0,
					},
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
						["zoomSetting"] = "out",
						["zoomValue"] = 30,
					},
				},
				["201"] = {
					["enabled"] = false,
					["condition"] = "for k,v in pairs(this.buffs) do \n    if (UnitBuff(\"player\", GetSpellInfo(v))) then\n        return true;\n    end\nend\nreturn false;",
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
						["test_cameraHeadMovementStrength"] = 0,
						["test_cameraOverShoulder"] = 0,
					},
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
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
			},
			["defaultCvars"] = {
				["test_cameraDynamicPitchBaseFovPad"] = 0.01,
				["test_cameraDynamicPitch"] = 1,
			},
			["firstRun"] = false,
		},
	},
}

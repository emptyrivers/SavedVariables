
DynamicCamDB = {
	["profileKeys"] = {
		["Rapidrivers - Arthas"] = "Serenerivers - Arthas",
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
		["Savattellir - Arthas"] = "Default",
		["Edgyrivers - Kel'Thuzad"] = "Serenerivers - Arthas",
		["Shachein - Arthas"] = "Default",
		["Sassyrivers - Arthas"] = "Serenerivers - Arthas",
		["Wildrivers - Arthas"] = "Serenerivers - Arthas",
		["Beefyrivers - Arthas"] = "Default",
		["Blindrivers - Korgath"] = "Default",
		["Evilrivers - Korgath"] = "Default",
		["Edgyrivers - Arthas"] = "Default",
		["Holyrivers - Sargeras"] = "Default",
		["Dammedrivers - Exodar"] = "Default",
		["Tinyrivers - Arthas"] = "Serenerivers - Arthas",
		["Serenerivers - Sargeras"] = "Default",
		["Serenerivers - Bleeding Hollow"] = "Default",
		["Crazyrivers - Arthas"] = "Default",
		["Mecharivers - Sargeras"] = "Default",
		["Eysta - Sargeras"] = "Default",
		["Boringrivers - Bleeding Hollow"] = "Default",
		["Emptyrivers - Bleeding Hollow"] = "Default",
		["Feralrivers - Sargeras"] = "Default",
		["Kdajshtlaiuw - Bleeding Hollow"] = "Default",
		["Evilrivers - Kel'Thuzad"] = "Default",
		["Testes - Arthas"] = "Default",
		["Ragingrivers - Arthas"] = "Default",
		["Riversticks - Bleeding Hollow"] = "Default",
		["Emptyrivers - Sargeras"] = "Default",
		["Crazyrivers - Bleeding Hollow"] = "Default",
		["Tinyrivers - Sargeras"] = "Default",
		["Skankyrivers - Arthas"] = "Default",
		["Emptyrivers - Arthas"] = "Default",
	},
	["global"] = {
		["dbVersion"] = 2,
	},
	["profiles"] = {
		["Serenerivers - Arthas"] = {
			["defaultCvars"] = {
				["test_cameraDynamicPitchBaseFovPad"] = 0.05,
				["test_cameraDynamicPitch"] = 1,
			},
			["defaultVersion"] = 1,
			["situations"] = {
				["033"] = {
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
					},
					["name"] = "Raid (Combat, Boss)",
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
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
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
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
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
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
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
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
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
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
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
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
						["nameplates"] = false,
						["hideUI"] = true,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
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
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
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
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
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
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
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
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
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
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
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
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
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
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
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
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
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
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
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
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
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
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
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
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
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
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
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
					["targetLock"] = {
						["enabled"] = true,
						["onlyAttackable"] = false,
						["nameplateVisible"] = false,
					},
					["delay"] = 0.5,
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 1,
					},
					["cameraActions"] = {
						["zoomFitIncrements"] = 0.5,
						["zoomMax"] = 30,
						["zoomSetting"] = "fit",
						["zoomFitPosition"] = 90,
						["zoomMin"] = 3,
						["zoomValue"] = 4,
						["zoomFitToggleNameplate"] = true,
					},
					["name"] = "NPC Interaction",
					["priority"] = 20,
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
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
						["zoomMax"] = 20,
						["rotateDegrees"] = 360,
						["timeIsMax"] = false,
						["zoomFitToggleNameplate"] = true,
						["zoomSetting"] = "in",
						["rotate"] = true,
						["rotateSetting"] = "degrees",
						["transitionTime"] = 10,
						["zoomValue"] = 4,
					},
					["priority"] = 20,
					["extras"] = {
						["nameplates"] = false,
						["hideUI"] = true,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
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
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
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
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
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
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
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
			["advanced"] = true,
		},
		["Default"] = {
			["defaultCvars"] = {
				["test_cameraDynamicPitchBaseFovPad"] = 0.01,
				["test_cameraDynamicPitch"] = 1,
			},
			["situations"] = {
				["033"] = {
					["enabled"] = false,
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
					["name"] = "Raid (Combat, Boss)",
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
					},
					["priority"] = 303,
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"raid\") and UnitAffectingCombat(\"player\") and IsEncounterInProgress();",
				},
				["023"] = {
					["enabled"] = false,
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
					["name"] = "Dungeon (Combat, Boss)",
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
					},
					["priority"] = 302,
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"party\") and UnitAffectingCombat(\"player\") and IsEncounterInProgress();",
				},
				["006"] = {
					["enabled"] = false,
					["condition"] = "return not IsInInstance() and UnitAffectingCombat(\"player\");",
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
					},
					["name"] = "World (Combat)",
					["cameraActions"] = {
						["zoomFitUseCurAsMin"] = true,
						["zoomMax"] = 35,
						["zoomFitToggleNameplate"] = true,
					},
					["view"] = {
						["enabled"] = true,
					},
					["priority"] = 50,
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["events"] = {
						"PLAYER_REGEN_DISABLED", -- [1]
						"PLAYER_REGEN_ENABLED", -- [2]
						"ZONE_CHANGED_NEW_AREA", -- [3]
					},
				},
				["302"] = {
					["enabled"] = false,
					["condition"] = "return (UnitChannelInfo(\"player\") == GetSpellInfo(7620))",
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 1,
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
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomValue"] = 7,
						["zoomFitToggleNameplate"] = true,
						["zoomSetting"] = "set",
					},
					["priority"] = 20,
					["delay"] = 2,
					["name"] = "Fishing",
				},
				["101"] = {
					["enabled"] = false,
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomValue"] = 15,
						["zoomFitToggleNameplate"] = true,
						["zoomSetting"] = "set",
					},
					["events"] = {
						"PLAYER_CONTROL_LOST", -- [1]
						"PLAYER_CONTROL_GAINED", -- [2]
					},
					["name"] = "Taxi",
					["cameraCVars"] = {
						["test_cameraHeadMovementStrength"] = 0,
						["test_cameraOverShoulder"] = -1,
					},
					["priority"] = 1000,
					["extras"] = {
						["nameplates"] = false,
						["hideUI"] = true,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["condition"] = "return UnitOnTaxi(\"player\");",
				},
				["002"] = {
					["enabled"] = false,
					["condition"] = "return IsResting() and IsIndoors();",
					["view"] = {
						["enabled"] = true,
					},
					["name"] = "City (Indoors)",
					["cameraCVars"] = {
						["test_cameraDynamicPitchBaseFovPad"] = 1,
						["test_cameraDynamicPitch"] = 1,
						["test_cameraDynamicPitchSmartPivotCutoffDist"] = 11,
						["test_cameraDynamicPitchBaseFovPadDownScale"] = 0,
					},
					["events"] = {
						"PLAYER_UPDATE_RESTING", -- [1]
						"ZONE_CHANGED_INDOORS", -- [2]
						"ZONE_CHANGED", -- [3]
						"SPELL_UPDATE_USABLE", -- [4]
					},
					["priority"] = 11,
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomValue"] = 8,
						["zoomFitToggleNameplate"] = true,
						["zoomSetting"] = "in",
					},
				},
				["201"] = {
					["enabled"] = false,
					["executeOnInit"] = "this.buffs = {46924, 51690, 188499, 210152};",
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
					},
					["name"] = "Annoying Spells",
					["events"] = {
						"UNIT_AURA", -- [1]
					},
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
						["test_cameraHeadMovementStrength"] = 0,
						["test_cameraOverShoulder"] = 0,
					},
					["priority"] = 1000,
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["condition"] = "for k,v in pairs(this.buffs) do \n    if (UnitBuff(\"player\", GetSpellInfo(v))) then\n        return true;\n    end\nend\nreturn false;",
				},
				["100"] = {
					["enabled"] = false,
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomValue"] = 30,
						["zoomFitToggleNameplate"] = true,
						["zoomSetting"] = "out",
					},
					["events"] = {
						"SPELL_UPDATE_USABLE", -- [1]
						"UNIT_AURA", -- [2]
					},
					["name"] = "Mounted",
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
						["test_cameraHeadMovementStrength"] = 0,
						["test_cameraOverShoulder"] = 0,
					},
					["priority"] = 100,
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["condition"] = "return IsMounted();",
				},
				["102"] = {
					["enabled"] = false,
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
					},
					["events"] = {
						"UNIT_ENTERED_VEHICLE", -- [1]
						"UNIT_EXITED_VEHICLE", -- [2]
					},
					["name"] = "Vehicle",
					["cameraCVars"] = {
						["test_cameraOverShoulder"] = 0,
						["test_cameraHeadMovementStrength"] = 0,
						["test_cameraDynamicPitch"] = 0,
					},
					["priority"] = 1000,
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["condition"] = "return UnitUsingVehicle(\"player\");",
				},
				["050"] = {
					["enabled"] = false,
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"arena\");",
					["name"] = "Arena",
					["events"] = {
						"ZONE_CHANGED_NEW_AREA", -- [1]
					},
					["priority"] = 3,
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
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
						["timeIsMax"] = false,
						["rotateSetting"] = "degrees",
						["zoomMax"] = 20,
						["rotateDegrees"] = 360,
						["zoomSetting"] = "in",
						["transitionTime"] = 10,
						["zoomValue"] = 4,
						["rotate"] = true,
						["zoomFitToggleNameplate"] = true,
					},
					["priority"] = 20,
					["extras"] = {
						["nameplates"] = false,
						["hideUI"] = true,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
						["test_cameraHeadMovementStrength"] = 0,
						["test_cameraOverShoulder"] = 0,
					},
				},
				["301"] = {
					["enabled"] = false,
					["condition"] = "return (MailFrame and MailFrame:IsShown())",
					["name"] = "Mailbox",
					["events"] = {
						"MAIL_CLOSED", -- [1]
						"MAIL_SHOW", -- [2]
						"GOSSIP_CLOSED", -- [3]
					},
					["priority"] = 20,
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomValue"] = 4,
						["zoomFitToggleNameplate"] = true,
						["zoomSetting"] = "in",
					},
				},
				["005"] = {
					["enabled"] = false,
					["condition"] = "return not IsResting() and not IsInInstance() and IsIndoors();",
					["name"] = "World (Indoors)",
					["events"] = {
						"PLAYER_UPDATE_RESTING", -- [1]
						"ZONE_CHANGED_INDOORS", -- [2]
						"ZONE_CHANGED", -- [3]
						"ZONE_CHANGED_NEW_AREA", -- [4]
						"SPELL_UPDATE_USABLE", -- [5]
					},
					["priority"] = 10,
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
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
					["events"] = {
						"PLAYER_REGEN_DISABLED", -- [1]
						"PLAYER_REGEN_ENABLED", -- [2]
						"ZONE_CHANGED_NEW_AREA", -- [3]
						"ENCOUNTER_START", -- [4]
						"ENCOUNTER_END", -- [5]
						"INSTANCE_ENCOUNTER_ENGAGE_UNIT", -- [6]
					},
					["name"] = "Raid (Combat, Trash)",
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
					},
					["priority"] = 203,
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"raid\") and UnitAffectingCombat(\"player\") and not IsEncounterInProgress();",
				},
				["021"] = {
					["enabled"] = false,
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
					["name"] = "Dungeon (Outdoors)",
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
					},
					["priority"] = 12,
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"party\") and IsOutdoors();",
				},
				["061"] = {
					["enabled"] = false,
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"pvp\") and UnitAffectingCombat(\"player\");",
					["name"] = "Battleground (Combat)",
					["events"] = {
						"PLAYER_REGEN_DISABLED", -- [1]
						"PLAYER_REGEN_ENABLED", -- [2]
						"ZONE_CHANGED_NEW_AREA", -- [3]
					},
					["priority"] = 203,
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
					},
				},
				["001"] = {
					["enabled"] = false,
					["condition"] = "return IsResting();",
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
					},
					["events"] = {
						"PLAYER_UPDATE_RESTING", -- [1]
					},
					["name"] = "City",
					["priority"] = 1,
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomMin"] = 10,
						["zoomFitToggleNameplate"] = true,
						["zoomSetting"] = "range",
					},
				},
				["024"] = {
					["enabled"] = false,
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
					["name"] = "Dungeon (Combat, Trash)",
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
					},
					["priority"] = 202,
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"party\") and UnitAffectingCombat(\"player\") and not IsEncounterInProgress();",
				},
				["051"] = {
					["enabled"] = false,
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"arena\") and UnitAffectingCombat(\"player\");",
					["name"] = "Arena (Combat)",
					["events"] = {
						"PLAYER_REGEN_DISABLED", -- [1]
						"PLAYER_REGEN_ENABLED", -- [2]
						"ZONE_CHANGED_NEW_AREA", -- [3]
					},
					["priority"] = 203,
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
					},
				},
				["004"] = {
					["enabled"] = false,
					["condition"] = "return not IsResting() and not IsInInstance();",
					["events"] = {
						"PLAYER_UPDATE_RESTING", -- [1]
						"ZONE_CHANGED_NEW_AREA", -- [2]
					},
					["name"] = "World",
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomMin"] = 15,
						["zoomFitToggleNameplate"] = true,
					},
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["cameraCVars"] = {
						["test_cameraOverShoulder"] = 10,
					},
				},
				["300"] = {
					["enabled"] = false,
					["executeOnInit"] = "this.frames = {\"GarrisonCapacitiveDisplayFrame\", \"BankFrame\", \"MerchantFrame\", \"GossipFrame\", \"ClassTrainerFrame\", \"QuestFrame\",}",
					["condition"] = "local shown = false;\nfor k,v in pairs(this.frames) do\n    if (_G[v] and _G[v]:IsShown()) then\n        shown = true;\n    end\nend\nreturn UnitExists(\"npc\") and UnitIsUnit(\"npc\", \"target\") and shown;",
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["targetLock"] = {
						["enabled"] = true,
						["onlyAttackable"] = false,
						["nameplateVisible"] = false,
					},
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 1,
					},
					["name"] = "NPC Interaction",
					["cameraActions"] = {
						["zoomFitIncrements"] = 0.5,
						["zoomMax"] = 30,
						["zoomValue"] = 4,
						["zoomMin"] = 3,
						["zoomFitToggleNameplate"] = true,
						["zoomFitPosition"] = 90,
						["zoomSetting"] = "fit",
					},
					["priority"] = 20,
					["delay"] = 0.5,
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
				["020"] = {
					["view"] = {
						["enabled"] = true,
					},
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
					},
					["enabled"] = false,
					["name"] = "Dungeon",
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
					},
					["events"] = {
						"ZONE_CHANGED_NEW_AREA", -- [1]
					},
					["priority"] = 2,
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"party\");",
				},
				["030"] = {
					["enabled"] = false,
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
					},
					["events"] = {
						"ZONE_CHANGED_NEW_AREA", -- [1]
					},
					["name"] = "Raid",
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
					},
					["priority"] = 3,
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"raid\");",
				},
				["031"] = {
					["enabled"] = false,
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
					["name"] = "Raid (Outdoors)",
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
					},
					["priority"] = 13,
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"raid\") and IsOutdoors();",
				},
				["060"] = {
					["enabled"] = false,
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"pvp\");",
					["name"] = "Battleground",
					["events"] = {
						"ZONE_CHANGED_NEW_AREA", -- [1]
					},
					["priority"] = 3,
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
					},
				},
			},
			["defaultVersion"] = 1,
			["advanced"] = true,
		},
	},
}


RiversData = {
	["warrior"] = {
		{
			["artifact"] = {
			},
			["center"] = {
				["right"] = {
				},
				["left"] = {
				},
				["bottom"] = {
				},
			},
			["procs"] = {
			},
			["cooldowns"] = {
			},
			["extras"] = {
			},
			["auras"] = {
			},
		}, -- [1]
		{
			["artifact"] = {
			},
			["center"] = {
				["right"] = {
				},
				["left"] = {
				},
				["bottom"] = {
				},
			},
			["procs"] = {
			},
			["cooldowns"] = {
			},
			["extras"] = {
			},
			["auras"] = {
			},
		}, -- [2]
		{
			["artifact"] = {
			},
			["center"] = {
				["right"] = {
				},
				["left"] = {
				},
				["bottom"] = {
				},
			},
			["procs"] = {
			},
			["cooldowns"] = {
			},
			["extras"] = {
			},
			["auras"] = {
			},
		}, -- [3]
		["artifact"] = {
		},
		["center"] = {
			["right"] = {
			},
			["left"] = {
			},
			["bottom"] = {
			},
		},
		["procs"] = {
		},
		["cooldowns"] = {
		},
		["extras"] = {
		},
		["auras"] = {
		},
	},
	["paladin"] = {
		{
			["artifact"] = {
			},
			["center"] = {
				["right"] = {
				},
				["left"] = {
				},
				["bottom"] = {
				},
			},
			["procs"] = {
			},
			["cooldowns"] = {
			},
			["extras"] = {
			},
			["auras"] = {
			},
		}, -- [1]
		{
			["artifact"] = {
			},
			["center"] = {
				["right"] = {
				},
				["left"] = {
				},
				["bottom"] = {
				},
			},
			["procs"] = {
			},
			["cooldowns"] = {
			},
			["extras"] = {
			},
			["auras"] = {
			},
		}, -- [2]
		{
			["artifact"] = {
			},
			["center"] = {
				["right"] = {
				},
				["left"] = {
				},
				["bottom"] = {
				},
			},
			["procs"] = {
			},
			["cooldowns"] = {
			},
			["extras"] = {
			},
			["auras"] = {
			},
		}, -- [3]
		["artifact"] = {
		},
		["center"] = {
			["right"] = {
			},
			["left"] = {
			},
			["bottom"] = {
			},
		},
		["procs"] = {
		},
		["cooldowns"] = {
		},
		["extras"] = {
		},
		["auras"] = {
		},
	},
	["shaman"] = {
		{
			["artifact"] = {
				{
					["colorfunc"] = nil --[[ skipped inline function ]],
					["type"] = "CUSTOM",
					["color"] = "4bced9",
					["multi"] = 3,
					["condition"] = true,
					["key"] = "stormkeeper",
					["progressfunc"] = nil --[[ skipped inline function ]],
					["colorstring"] = "if UnitBuff(\"Power of the Maelstrom\") then return '4bced9' else return 'a9a9a9' end",
					["spellid"] = 205495,
					["progressstring"] = "function test(sid, cid) local stack = select(4,UnitBuff('player', 'Stormkeeper')) if stack then return stack >= cid and 0, 1, 'static' else local s, d = GetSpellCooldown(sid) if s == 0 or rivers.on_gcd(sid) then return 0, 1, 'static' else return d/3, s + d/3, 'timed' end end end",
				}, -- [1]
			},
			["center"] = {
				["right"] = {
					{
						["type"] = "CD",
						["key"] = "iceefury",
						["conditionfunc"] = nil --[[ skipped inline function ]],
						["color"] = "64c86d",
						["multi"] = 1,
						["spellid"] = 210714,
						["conditionstring"] = "return IsPlayerSpell(210714)",
					}, -- [1]
				},
				["left"] = {
					{
						["type"] = "CD",
						["key"] = "elemental blast",
						["conditionfunc"] = nil --[[ skipped inline function ]],
						["color"] = "c85411",
						["multi"] = 1,
						["spellid"] = 117014,
						["conditionstring"] = "return IsPlayerSpell(117014)",
					}, -- [1]
				},
				["bottom"] = {
					{
						["colorfunc"] = nil --[[ skipped inline function ]],
						["type"] = "CUSTOM",
						["multi"] = 1,
						["condition"] = true,
						["key"] = "earth shock tracker",
						["progressfunc"] = nil --[[ skipped inline function ]],
						["colorstring"] = "if UnitBuff(\"player\", \"Icefury\") then return 'ffffff' else return '7d3c1a' end",
						["spellid"] = 11,
						["progressstring"] = "return min(117, max(20, UnitPower('player', 11)))- 20, 97, 'static', true",
					}, -- [1]
				},
			},
			["procs"] = {
				{
					["type"] = "CD",
					["key"] = "lava burst",
					["multifunc"] = nil --[[ skipped inline function ]],
					["color"] = "db8b2a",
					["multistring"] = "return IsPlayerSpell(108283) and 2 or 1",
					["spellid"] = 51505,
					["condition"] = true,
				}, -- [1]
				{
					["conditionfunc"] = nil --[[ skipped inline function ]],
					["type"] = "BUFF",
					["key"] = "elemental focus",
					["condition"] = true,
					["color"] = "0ba3d5",
					["multi"] = 2,
					["spellid"] = 16246,
					["conditionstring"] = "return false",
				}, -- [2]
			},
			["cooldowns"] = {
				{
					["type"] = "CD",
					["key"] = "astral shift",
					["color"] = "a08656",
					["multi"] = 1,
					["spellid"] = 108271,
					["condition"] = true,
				}, -- [1]
				{
					["type"] = "CD",
					["key"] = "fire elemental",
					["conditionfunc"] = nil --[[ skipped inline function ]],
					["color"] = "ae150a",
					["multi"] = 1,
					["spellid"] = 198067,
					["conditionstring"] = "return not IsPlayerSpell(192249)",
				}, -- [2]
			},
			["extras"] = {
			},
			["auras"] = {
				[188389] = {
					["id"] = "Flame Shock",
					["isTarget"] = true,
				},
			},
		}, -- [1]
		{
			["artifact"] = {
			},
			["center"] = {
				["right"] = {
				},
				["left"] = {
				},
				["bottom"] = {
				},
			},
			["procs"] = {
			},
			["cooldowns"] = {
			},
			["extras"] = {
			},
			["auras"] = {
			},
		}, -- [2]
		{
			["artifact"] = {
			},
			["center"] = {
				["right"] = {
				},
				["left"] = {
				},
				["bottom"] = {
				},
			},
			["procs"] = {
			},
			["cooldowns"] = {
			},
			["extras"] = {
			},
			["auras"] = {
			},
		}, -- [3]
		["artifact"] = {
		},
		["center"] = {
			["right"] = {
			},
			["left"] = {
			},
			["bottom"] = {
			},
		},
		["procs"] = {
		},
		["cooldowns"] = {
		},
		["extras"] = {
		},
		["auras"] = {
		},
	},
	["monk"] = {
		{
			["artifact"] = {
				{
					["type"] = "CD",
					["color"] = "ff9320",
					["multi"] = 1,
					["spellid"] = 214326,
					["condition"] = "IsPlayerSpell(214326)",
				}, -- [1]
			},
			["center"] = {
				["right"] = {
					{
						["condition"] = true,
						["type"] = "CUSTOM",
						["key"] = "BoF",
						["progressfunc"] = nil --[[ skipped inline function ]],
						["color"] = "f3632f",
						["multi"] = 1,
						["progressstring"] = "if rivers.on_gcd(115181) then return 0,1,'static' else local s = GetSpellCooldown(115181) return  15, s + 15, 'timed' end",
						["spellid"] = 115181,
					}, -- [1]
				},
				["left"] = {
					{
						["type"] = "CD",
						["key"] = "keg smash",
						["color"] = "00ccff",
						["multi"] = 1,
						["condition"] = true,
						["spellid"] = 121253,
					}, -- [1]
				},
				["bottom"] = {
					{
						["type"] = "CD",
						["key"] = "blackout strike (without BoS)",
						["conditionfunc"] = nil --[[ skipped inline function ]],
						["color"] = "ffffff",
						["multi"] = 1,
						["spellid"] = 205523,
						["conditionstring"] = "return not IsPlayerSpell(196736)",
					}, -- [1]
					{
						["colorfunc"] = nil --[[ skipped inline function ]],
						["type"] = "CD",
						["key"] = "Blackout Strike with BoC",
						["conditionfunc"] = nil --[[ skipped inline function ]],
						["multi"] = 1,
						["colorstring"] = "if not UnitBuff(\"player\", \"Blackout Combo\") then return 'ffffff' end return 'ffffff',  '9d0078'",
						["spellid"] = 205523,
						["conditionstring"] = "return IsPlayerSpell(196736)",
					}, -- [2]
				},
			},
			["procs"] = {
				{
					["type"] = "CD",
					["conditionfunc"] = nil --[[ skipped inline function ]],
					["multifunc"] = nil --[[ skipped inline function ]],
					["color"] = "F3AF24",
					["multistring"] = "return select(4,GetTalentInfo(3,1,1)) and 4 or 3",
					["spellid"] = 115308,
					["conditionstring"] = "return true",
				}, -- [1]
				{
					["type"] = "CD",
					["conditionfunc"] = nil --[[ skipped inline function ]],
					["color"] = "00b3ff",
					["multi"] = 1,
					["spellid"] = 115399,
					["conditionstring"] = "return select(4,GetTalentInfo(3,2,1))",
				}, -- [2]
				{
					["conditionfunc"] = nil --[[ skipped inline function ]],
					["type"] = "CUSTOM",
					["progressstring"] = "return UnitHealth'player' - (IsEquippedItem(137044) and .075 or .1) * UnitStagger'player', UnitHealthMax'player', 'static'",
					["progressfunc"] = nil --[[ skipped inline function ]],
					["color"] = "00ffa9",
					["multi"] = 1,
					["spellid"] = 196719,
					["conditionstring"] = "return select(4,GetTalentInfo(3,3,1))",
				}, -- [3]
			},
			["cooldowns"] = {
				{
					["type"] = "CD",
					["key"] = "ZM",
					["conditionfunc"] = nil --[[ skipped inline function ]],
					["color"] = "002eff",
					["multi"] = 1,
					["spellid"] = 115176,
					["conditionstring"] = "return true",
				}, -- [1]
				{
					["colorfunc"] = nil --[[ skipped inline function ]],
					["type"] = "CD",
					["colorstring"] = "local c = GetSpellCharges(122281) local t = {\"000000\",\"a9a9a9\",\"00ff93\"} return t[c+1],(t[c+2] or t[c+1])",
					["conditionstring"] = "return select(4,GetTalentInfo(5,1,1))",
					["conditionfunc"] = nil --[[ skipped inline function ]],
					["key"] = "HE",
					["stack"] = true,
					["spellid"] = 122281,
					["multi"] = 2,
				}, -- [2]
				{
					["type"] = "CUSTOM",
					["color"] = "ff03c7",
					["multi"] = 1,
					["conditionstring"] = "return select(4,GetTalentInfo(5,2,1))",
					["conditionfunc"] = nil --[[ skipped inline function ]],
					["key"] = "MV",
					["progressfunc"] = nil --[[ skipped inline function ]],
					["spellid"] = 237076,
					["progressstring"] = "return 0,1,'static'",
				}, -- [3]
				{
					["type"] = "CD",
					["key"] = "DH",
					["conditionfunc"] = nil --[[ skipped inline function ]],
					["color"] = "ff7600",
					["multi"] = 1,
					["spellid"] = 122278,
					["conditionstring"] = "return select(4,GetTalentInfo(5,3,1))",
				}, -- [4]
				{
					["type"] = "CD",
					["key"] = "FB",
					["conditionfunc"] = nil --[[ skipped inline function ]],
					["color"] = "FFFF00",
					["multi"] = 1,
					["spellid"] = 115203,
					["conditionstring"] = "return true",
				}, -- [5]
			},
			["color"] = "0061ff",
			["extras"] = {
				{
					["type"] = "CD",
					["conditionfunc"] = nil --[[ skipped inline function ]],
					["color"] = "f9e51",
					["multi"] = 1,
					["spellid"] = 132578,
					["conditionstring"] = "return select(4,GetTalentInfo(6,2,1))",
				}, -- [1]
			},
			["auras"] = {
				[116847] = {
					["color"] = "4db788",
					["name"] = "rushing jade wind",
					["key"] = "RJW",
				},
				[214326] = {
					["key"] = "EK",
					["playerOnly"] = true,
					["name"] = "+100%% miss",
					["isTarget"] = true,
				},
				[115181] = {
					["key"] = "BoF",
					["playerOnly"] = true,
					["name"] = "-10%% damage",
					["isTarget"] = true,
				},
				[122278] = {
					["key"] = "Dampen Harm",
				},
			},
		}, -- [1]
		{
			["artifact"] = {
				{
					["progressstring"] = "return function(spellid, cloneid) return GetSpellCount(spellid) >= cloneid and 0 or 1, 1, 'static' end",
					["type"] = "CUSTOM",
					["key"] = "Sheilun's Gift",
					["progressfunc"] = nil --[[ skipped inline function ]],
					["color"] = "008367",
					["multi"] = 12,
					["condition"] = true,
					["spellid"] = 205406,
				}, -- [1]
			},
			["center"] = {
				["right"] = {
					{
						["type"] = "CD",
						["key"] = "Essence Font",
						["color"] = "1a5da4",
						["multi"] = 1,
						["spellid"] = 191837,
						["condition"] = true,
					}, -- [1]
				},
				["left"] = {
					{
						["type"] = "CD",
						["key"] = "RSK",
						["color"] = "ff7900",
						["multi"] = 1,
						["condition"] = true,
						["spellid"] = 107428,
					}, -- [1]
				},
				["bottom"] = {
				},
			},
			["procs"] = {
				{
					["type"] = "CD",
					["key"] = "RM",
					["color"] = "00bf76",
					["multi"] = 1,
					["spellid"] = 115151,
					["condition"] = true,
				}, -- [1]
				{
					["type"] = "CD",
					["key"] = "TFT",
					["color"] = "00b7bf",
					["multi"] = 1,
					["condition"] = true,
					["spellid"] = 116680,
				}, -- [2]
				{
					["type"] = "BUFF",
					["key"] = "UT",
					["color"] = "d0a225",
					["multi"] = 1,
					["spellid"] = 197206,
					["condition"] = true,
				}, -- [3]
			},
			["cooldowns"] = {
				{
					["type"] = "CD",
					["key"] = "FB",
					["color"] = "baccd0",
					["multi"] = 1,
					["spellid"] = 243435,
					["condition"] = true,
				}, -- [1]
				{
					["type"] = "CD",
					["key"] = "revival",
					["color"] = "3cb367",
					["multi"] = 1,
					["condition"] = true,
					["spellid"] = 115310,
				}, -- [2]
				{
					["type"] = "CD",
					["key"] = "life cocoon",
					["color"] = "7102ab",
					["multi"] = 1,
					["spellid"] = 116849,
					["condition"] = true,
				}, -- [3]
			},
			["extras"] = {
				{
					["type"] = "CD",
					["key"] = "ZP",
					["conditionfunc"] = nil --[[ skipped inline function ]],
					["color"] = "02d2a5",
					["multi"] = 1,
					["spellid"] = 124081,
					["conditionstring"] = "return IsPlayerSpell(124081)",
				}, -- [1]
				{
					["type"] = "CD",
					["key"] = "chi burst",
					["conditionfunc"] = nil --[[ skipped inline function ]],
					["color"] = "e75e88",
					["multi"] = 1,
					["spellid"] = 123986,
					["conditionstring"] = "return IsPlayerSpell(123986)",
				}, -- [2]
				{
					["type"] = "CD",
					["key"] = "chi wave",
					["conditionfunc"] = nil --[[ skipped inline function ]],
					["color"] = "22a123",
					["multi"] = 1,
					["spellid"] = 115098,
					["conditionstring"] = "return IsPlayerSpell(115098)",
				}, -- [3]
				{
					["type"] = "CD",
					["key"] = "chiji",
					["conditionfunc"] = nil --[[ skipped inline function ]],
					["color"] = "d96023",
					["multi"] = 1,
					["spellid"] = 198664,
					["conditionstring"] = "return IsPlayerSpell(198664)",
				}, -- [4]
			},
			["auras"] = {
				[199888] = {
					["name"] = "+20% healing",
					["color"] = "05b76d",
				},
				[116680] = {
					["color"] = "00b7bf",
					["name"] = "tft",
					["showStacks"] = true,
					["key"] = "TFT",
				},
				[243435] = {
					["color"] = "TURTLE",
				},
			},
		}, -- [2]
		{
			["artifact"] = {
				{
					["type"] = "CD",
					["key"] = "sotwl",
					["color"] = "ffda00",
					["multi"] = 1,
					["spellid"] = 205320,
					["condition"] = true,
				}, -- [1]
			},
			["center"] = {
				["right"] = {
					{
						["colorfunc"] = nil --[[ skipped inline function ]],
						["type"] = "CD",
						["conditionfunc"] = nil --[[ skipped inline function ]],
						["multi"] = 1,
						["colorstring"] = "return (rivers.on_gcd(113656) or rivers.on_gcd(152175)) and '009dc3' or '19be00'",
						["spellid"] = 113656,
						["conditionstring"] = "return IsPlayerSpell(152175)",
					}, -- [1]
					{
						["type"] = "CD",
						["color"] = "009dc3",
						["multi"] = 1,
						["condition"] = true,
						["spellid"] = 113656,
					}, -- [2]
				},
				["left"] = {
					{
						["type"] = "CD",
						["key"] = "rsk",
						["color"] = "c34f20",
						["multi"] = 1,
						["spellid"] = 107428,
						["condition"] = true,
					}, -- [1]
				},
				["bottom"] = {
					{
						["type"] = "CD",
						["conditionfunc"] = nil --[[ skipped inline function ]],
						["color"] = "e69852",
						["multi"] = 1,
						["spellid"] = 152173,
						["conditionstring"] = "return IsPlayerSpell(152173)",
					}, -- [1]
				},
			},
			["procs"] = {
				{
					["conditionfunc"] = nil --[[ skipped inline function ]],
					["multistring"] = "return select(4,GetTalentInfo(3,2,1)) and 6 or 5",
					["key"] = "chi",
					["multifunc"] = nil --[[ skipped inline function ]],
					["color"] = "ffff34",
					["type"] = "RESOURCE",
					["spellid"] = 12,
					["conditionstring"] = "return true",
				}, -- [1]
				{
					["type"] = "CD",
					["key"] = "energizing elixir",
					["conditionfunc"] = nil --[[ skipped inline function ]],
					["color"] = "ff59d9",
					["multi"] = 1,
					["spellid"] = 115288,
					["conditionstring"] = "return select(4,GetTalentInfo(3,1,1))",
				}, -- [2]
				{
					["type"] = "BUFF",
					["key"] = "Power Strikes",
					["conditionfunc"] = nil --[[ skipped inline function ]],
					["color"] = "68e8ff",
					["multi"] = 1,
					["spellid"] = 121817,
					["conditionstring"] = "return select(4,GetTalentInfo(3,3,1))",
				}, -- [3]
			},
			["cooldowns"] = {
				{
					["type"] = "CD",
					["key"] = "ToK",
					["color"] = "a9a9a9",
					["multi"] = 1,
					["spellid"] = 122470,
					["condition"] = true,
				}, -- [1]
				{
					["type"] = "CD",
					["key"] = "serenity",
					["conditionfunc"] = nil --[[ skipped inline function ]],
					["color"] = "df75f2",
					["multi"] = 1,
					["spellid"] = 152173,
					["conditionstring"] = "return IsPlayerSpell(152173)",
				}, -- [2]
				{
					["type"] = "CUSTOM",
					["color"] = "ffffff",
					["multi"] = 1,
					["condition"] = false,
					["conditionstring"] = "return false",
					["conditionfunc"] = nil --[[ skipped inline function ]],
					["key"] = "SEF",
					["progressfunc"] = nil --[[ skipped inline function ]],
					["progressfuncstring"] = "return",
					["progressstring"] = "return",
					["spellid"] = 0,
					["progressfuncfunc"] = nil --[[ skipped inline function ]],
				}, -- [3]
				{
					["type"] = "CD",
					["key"] = "touch of death",
					["color"] = "a60101",
					["multi"] = 1,
					["condition"] = true,
					["spellid"] = 115080,
				}, -- [4]
			},
			["extras"] = {
				{
					["type"] = "CD",
					["key"] = "fsk",
					["color"] = "cccccc",
					["multi"] = 1,
					["spellid"] = 101545,
					["condition"] = true,
				}, -- [1]
				{
					["type"] = "CD",
					["key"] = "chi burst",
					["conditionfunc"] = nil --[[ skipped inline function ]],
					["color"] = "ff5bed",
					["multi"] = 1,
					["spellid"] = 123986,
					["conditionstring"] = "return select(4,GetTalentInfo(1,1,1))",
				}, -- [2]
				{
					["type"] = "CD",
					["key"] = "chi wave",
					["conditionfunc"] = nil --[[ skipped inline function ]],
					["color"] = "00ff96",
					["multi"] = 1,
					["spellid"] = 115098,
					["conditionstring"] = "return GetSpecialization() ~= 2 and select(4,GetTalentInfo(1,3,1))",
				}, -- [3]
			},
			["auras"] = {
			},
		}, -- [3]
		["artifact"] = {
		},
		["center"] = {
			["right"] = {
			},
			["left"] = {
			},
			["bottom"] = {
			},
		},
		["procs"] = {
		},
		["cooldowns"] = {
		},
		["extras"] = {
			{
				["type"] = "CD",
				["key"] = "chi wave",
				["conditionfunc"] = nil --[[ skipped inline function ]],
				["color"] = "00ff96",
				["multi"] = 1,
				["spellid"] = 115098,
				["conditionstring"] = "return GetSpecialization() ~= 2 and select(4,GetTalentInfo(1,3,1))",
			}, -- [1]
			{
				["type"] = "CD",
				["key"] = "chi burst",
				["conditionfunc"] = nil --[[ skipped inline function ]],
				["color"] = "ff5bed",
				["multi"] = 1,
				["spellid"] = 123986,
				["conditionstring"] = "return select(4,GetTalentInfo(1,1,1))",
			}, -- [2]
		},
		["auras"] = {
		},
	},
	["rogue"] = {
		{
			["artifact"] = {
			},
			["center"] = {
				["right"] = {
				},
				["left"] = {
				},
				["bottom"] = {
				},
			},
			["procs"] = {
			},
			["cooldowns"] = {
			},
			["extras"] = {
			},
			["auras"] = {
			},
		}, -- [1]
		{
			["artifact"] = {
				{
					["type"] = "BUFF",
					["key"] = "Jolly Rogers",
					["color"] = "7a08e4",
					["multi"] = 1,
					["spellid"] = 199603,
					["condition"] = true,
				}, -- [1]
				{
					["type"] = "BUFF",
					["key"] = "True Bearing",
					["color"] = "ffffff",
					["multi"] = 1,
					["spellid"] = 193359,
					["condition"] = true,
				}, -- [2]
				{
					["type"] = "BUFF",
					["key"] = "Shark Infested Waters",
					["color"] = "cf2f29",
					["multi"] = 1,
					["spellid"] = 193357,
					["condition"] = true,
				}, -- [3]
				{
					["type"] = "BUFF",
					["key"] = "Grand Melee",
					["color"] = "08a1e4",
					["multi"] = 1,
					["spellid"] = 193358,
					["condition"] = true,
				}, -- [4]
				{
					["type"] = "BUFF",
					["key"] = "Buried Treasure",
					["color"] = "ddcc10",
					["multi"] = 1,
					["spellid"] = 199600,
					["condition"] = true,
				}, -- [5]
				{
					["type"] = "BUFF",
					["key"] = "Broadsides",
					["color"] = "2aa12d",
					["multi"] = 1,
					["spellid"] = 193356,
					["condition"] = true,
				}, -- [6]
			},
			["center"] = {
				["right"] = {
				},
				["left"] = {
				},
				["bottom"] = {
				},
			},
			["procs"] = {
			},
			["cooldowns"] = {
			},
			["extras"] = {
			},
			["auras"] = {
				[13750] = {
					["key"] = "adrenaline",
				},
				[195627] = {
					["key"] = "opportunity",
					["name"] = "free pistol",
				},
			},
		}, -- [2]
		{
			["artifact"] = {
				{
					["type"] = "CD",
					["color"] = "2536bb",
					["multi"] = 1,
					["spellid"] = 209782,
					["condition"] = true,
				}, -- [1]
			},
			["center"] = {
				["right"] = {
					{
						["colorfunc"] = nil --[[ skipped inline function ]],
						["type"] = "CD",
						["multifunc"] = nil --[[ skipped inline function ]],
						["colorstring"] = "local  t, c, m = {[0] = '000000', 'a9a9a9', 'cb8c46', '46c7cb'}, GetSpellCharges(185313) return t[min(c+1, m)], t[c]",
						["condition"] = true,
						["key"] = "Shadow Dance",
						["stack"] = true,
						["spellid"] = 185313,
						["multistring"] = "return IsPlayerSpell(238104) and 3 or 2",
					}, -- [1]
				},
				["left"] = {
					{
						["type"] = "CD",
						["key"] = "symbols",
						["color"] = "6d46cb",
						["multi"] = 1,
						["spellid"] = 212283,
						["condition"] = true,
					}, -- [1]
				},
				["bottom"] = {
					{
						["type"] = "CUSTOM",
						["color"] = "ffffff",
						["multi"] = 1,
						["condition"] = true,
						["key"] = "instealth",
						["progressfunc"] = nil --[[ skipped inline function ]],
						["inverse"] = true,
						["spellid"] = 921,
						["progressstring"] = "if UnitBuff('player', 'Stealth') or UnitBuff('player', 'Vanish') then return 0,1, 'static' end local d, e = select(6, UnitBuff('player', 'Subterfuge')) if e then return d, e, 'timed', true end d, e = select(6 ,UnitBuff('player', 'Shadow Dance')) if e then return d,e, 'timed', true end return 1,1,'static'",
					}, -- [1]
				},
			},
			["procs"] = {
			},
			["color"] = "2d00aa",
			["cooldowns"] = {
				{
					["type"] = "CD",
					["key"] = "cloak of skills",
					["color"] = "0a7c05",
					["multi"] = 1,
					["spellid"] = 31224,
					["condition"] = true,
				}, -- [1]
				{
					["type"] = "CD",
					["key"] = "vanish",
					["color"] = "a9a9a9",
					["multi"] = 1,
					["spellid"] = 1856,
					["condition"] = true,
				}, -- [2]
				{
					["type"] = "CD",
					["key"] = "shadowblade",
					["color"] = "7f18c8",
					["multi"] = 1,
					["condition"] = true,
					["spellid"] = 121471,
				}, -- [3]
			},
			["extras"] = {
			},
			["auras"] = {
				[121471] = {
					["color"] = "7f16c6",
					["name"] = "faster combo points",
					["key"] = "shadowblades",
				},
				[195452] = {
					["playerOnly"] = true,
					["key"] = "nightblade",
					["isTarget"] = true,
				},
				[31224] = {
					["color"] = "4d4d4d",
					["name"] = "immune",
					["key"] = "cloak of skills",
				},
				[212283] = {
					["color"] = "6d46cb",
					["name"] = "+15% damage",
					["key"] = "symbols",
				},
				[242705] = {
					["key"] = "feeding frenzy",
					["name"] = "free finishers",
					["showStacks"] = true,
				},
			},
		}, -- [3]
		["artifact"] = {
		},
		["center"] = {
			["right"] = {
			},
			["left"] = {
			},
			["bottom"] = {
			},
		},
		["procs"] = {
			{
				["conditionfunc"] = nil --[[ skipped inline function ]],
				["type"] = "RESOURCE",
				["key"] = "combo points",
				["multifunc"] = nil --[[ skipped inline function ]],
				["color"] = "fbd643",
				["multistring"] = "return select(4,GetTalentInfo(3,1,1)) and 6 or 5",
				["spellid"] = 4,
				["conditionstring"] = "return true",
			}, -- [1]
		},
		["color"] = "f9dc74",
		["cooldowns"] = {
		},
		["extras"] = {
		},
		["auras"] = {
			[2893] = {
			},
		},
	},
	["mage"] = {
		{
			["artifact"] = {
				{
					["type"] = "CD",
					["key"] = "MoA",
					["color"] = "d41295",
					["multi"] = 1,
					["spellid"] = 224968,
					["condition"] = true,
				}, -- [1]
			},
			["center"] = {
				["right"] = {
					{
						["colorfunc"] = nil --[[ skipped inline function ]],
						["type"] = "CD",
						["multi"] = 2,
						["conditionstring"] = "return select(4,GetTalentInfo(3,2,1))",
						["conditionfunc"] = nil --[[ skipped inline function ]],
						["key"] = "RoP",
						["stack"] = true,
						["spellid"] = 116011,
						["colorstring"] = "local c = GetSpellCharges(116011) if c == 0 then return 'a9a9a9', '000000' else return '91ffb6', 'a9a9a9' end",
					}, -- [1]
					{
						["type"] = "CD",
						["key"] = "MI",
						["conditionfunc"] = nil --[[ skipped inline function ]],
						["color"] = "f0bd52",
						["multi"] = 1,
						["spellid"] = 55342,
						["conditionstring"] = "return select(4,GetTalentInfo(3,1,1))",
					}, -- [2]
					{
						["type"] = "CUSTOM",
						["color"] = "ff9ead",
						["multi"] = 1,
						["conditionstring"] = "return select(4,GetTalentInfo(3,3,1))",
						["conditionfunc"] = nil --[[ skipped inline function ]],
						["key"] = "IF",
						["progressfunc"] = nil --[[ skipped inline function ]],
						["spellid"] = 116267,
						["progressstring"] = "local s = select(4,UnitBuff(\"player\", \"Incanter's Flow\")) or 0 return (s-1)* .25, 1, 'static', true",
					}, -- [3]
				},
				["left"] = {
					{
						["colorfunc"] = nil --[[ skipped inline function ]],
						["type"] = "CUSTOM",
						["multi"] = 1,
						["condition"] = true,
						["key"] = "PoM",
						["progressfunc"] = nil --[[ skipped inline function ]],
						["colorstring"] = "local s = select(4,UnitBuff('player','Presence of Mind')) or 0 return s == 0 and 'a9a9a9' or s == 1 and '34c5e4' or 'c161a2'",
						["spellid"] = 0,
						["progressstring"] = "local s, d = GetSpellCooldown(205025) if s == 0 or rivers.on_gcd(205025) or  UnitBuff('player','Presence of Mind') then return 0,1,'static' else return d, s + d, 'timed' end",
					}, -- [1]
				},
				["bottom"] = {
					{
						["type"] = "RESOURCE",
						["color"] = "fb6bb9",
						["multi"] = 1,
						["condition"] = true,
						["spellid"] = 16,
					}, -- [1]
				},
			},
			["procs"] = {
				{
					["type"] = "BUFF",
					["conditionfunc"] = nil --[[ skipped inline function ]],
					["color"] = "f38eff",
					["multi"] = 3,
					["spellid"] = 79683,
					["conditionstring"] = "return true",
				}, -- [1]
				{
					["type"] = "CD",
					["conditionfunc"] = nil --[[ skipped inline function ]],
					["color"] = "a13c93",
					["multi"] = 1,
					["spellid"] = 12051,
					["conditionstring"] = "return true",
				}, -- [2]
			},
			["cooldowns"] = {
				{
					["type"] = "CD",
					["key"] = "IB",
					["color"] = "0000ff",
					["multi"] = 1,
					["spellid"] = 45438,
					["condition"] = true,
				}, -- [1]
				{
					["type"] = "CD",
					["key"] = "Invisibility",
					["color"] = "a9a9a9",
					["multi"] = 1,
					["condition"] = true,
					["spellid"] = 110959,
				}, -- [2]
				{
					["type"] = "CD",
					["key"] = "AP",
					["color"] = "e4bc34",
					["multi"] = 1,
					["spellid"] = 12042,
					["condition"] = true,
				}, -- [3]
			},
			["extras"] = {
				{
					["type"] = "CD",
					["key"] = "Charged up",
					["conditionfunc"] = nil --[[ skipped inline function ]],
					["color"] = "abd3ff",
					["multi"] = 1,
					["spellid"] = 205032,
					["conditionstring"] = "return select(4,GetTalentInfo(4,2,1))",
				}, -- [1]
				{
					["type"] = "CD",
					["key"] = "Supernova",
					["conditionfunc"] = nil --[[ skipped inline function ]],
					["color"] = "45a9b7",
					["multi"] = 1,
					["spellid"] = 157980,
					["conditionstring"] = "return select(4,GetTalentInfo(4,1,1))",
				}, -- [2]
				{
					["type"] = "CD",
					["key"] = "Arcane Orb",
					["conditionfunc"] = nil --[[ skipped inline function ]],
					["color"] = "4488FF",
					["multi"] = 1,
					["spellid"] = 153626,
					["conditionstring"] = "return select(4,GetTalentInfo(7,3,1))",
				}, -- [3]
			},
			["auras"] = {
				[12042] = {
					["key"] = "arcane power",
				},
				[210824] = {
					["key"] = "touch of the magi",
					["playerOnly"] = true,
					["name"] = "+20%% damage",
					["isTarget"] = true,
				},
				[114923] = {
					["playerOnly"] = true,
					["key"] = "nether tempest",
					["isTarget"] = "true",
				},
				[224968] = {
					["playerOnly"] = true,
					["key"] = "MoA",
					["isTarget"] = true,
				},
			},
		}, -- [1]
		{
			["artifact"] = {
			},
			["center"] = {
				["right"] = {
				},
				["left"] = {
				},
				["bottom"] = {
				},
			},
			["procs"] = {
				{
					["type"] = "CD",
					["conditionfunc"] = nil --[[ skipped inline function ]],
					["color"] = "FFBB44",
					["multi"] = 3,
					["spellid"] = 194466,
					["conditionstring"] = " return IsPlayerSpell(194466) ",
				}, -- [1]
				{
					["type"] = "CD",
					["conditionfunc"] = nil --[[ skipped inline function ]],
					["color"] = "FF5100",
					["multi"] = 1,
					["spellid"] = 205029,
					["conditionstring"] = " local _,_,_,s = GetTalentInfo(4,2,1) return s ",
				}, -- [2]
			},
			["cooldowns"] = {
				{
					["type"] = "CD",
					["key"] = "IB",
					["color"] = "0000ff",
					["multi"] = 1,
					["spellid"] = 45438,
					["condition"] = true,
				}, -- [1]
				{
					["colorfunc"] = nil --[[ skipped inline function ]],
					["type"] = "CD",
					["multi"] = 2,
					["conditionstring"] = "return select(4,GetTalentInfo(3,2,1))",
					["conditionfunc"] = nil --[[ skipped inline function ]],
					["key"] = "RoP",
					["stack"] = true,
					["spellid"] = 116011,
					["colorstring"] = "local c = GetSpellCharges(116011) if c == 0 then return 'a9a9a9', '000000' else return '91ffb6', '000000' end",
				}, -- [2]
				{
					["type"] = "CUSTOM",
					["color"] = "ff9ead",
					["multi"] = 1,
					["conditionstring"] = "return select(4,GetTalentInfo(3,3,1))",
					["conditionfunc"] = nil --[[ skipped inline function ]],
					["key"] = "IF",
					["progressfunc"] = nil --[[ skipped inline function ]],
					["spellid"] = 116267,
					["progressstring"] = "local s = select(4,UnitBuff(\"player\", \"Incanter's Flow\")) or 0 return (s-1)* .25, 1, 'static', true",
				}, -- [3]
				{
					["type"] = "CD",
					["key"] = "MI",
					["conditionfunc"] = nil --[[ skipped inline function ]],
					["color"] = "f0bd52",
					["multi"] = 1,
					["spellid"] = 55342,
					["conditionstring"] = "return select(4,GetTalentInfo(3,1,1))",
				}, -- [4]
			},
			["extras"] = {
				{
					["type"] = "CD",
					["conditionfunc"] = nil --[[ skipped inline function ]],
					["color"] = "FFAA00",
					["multi"] = 1,
					["spellid"] = 44457,
					["conditionstring"] = " local _,_,_,s = GetTalentInfo(6,1,1) return s ",
				}, -- [1]
				{
					["type"] = "CD",
					["conditionfunc"] = nil --[[ skipped inline function ]],
					["color"] = "FFDF1F",
					["multi"] = 1,
					["spellid"] = 0,
					["conditionstring"] = " local _,_,_,s = GetTalentInfo(4,1,1) return s ",
				}, -- [2]
				{
					["type"] = "CD",
					["conditionfunc"] = nil --[[ skipped inline function ]],
					["color"] = "FF8273",
					["multi"] = 1,
					["spellid"] = 0,
					["conditionstring"] = " local _,_,_,s = GetTalentInfo(7,2,1) return s ",
				}, -- [3]
				{
					["type"] = "CD",
					["conditionfunc"] = nil --[[ skipped inline function ]],
					["color"] = "FF4300",
					["multi"] = 1,
					["spellid"] = 0,
					["conditionstring"] = " local _,_,_,s = GetTalentInfo(7,3,1) return s ",
				}, -- [4]
			},
			["auras"] = {
			},
		}, -- [2]
		{
			["artifact"] = {
				{
					["type"] = "CD",
					["key"] = "ebonbolt",
					["color"] = "0a3ea9",
					["multi"] = 1,
					["condition"] = true,
					["spellid"] = 214634,
				}, -- [1]
			},
			["center"] = {
				["right"] = {
					{
						["colorfunc"] = nil --[[ skipped inline function ]],
						["type"] = "CD",
						["multi"] = 3,
						["condition"] = true,
						["colorstring"] = "local c, t, fg, bg = GetSpellCharges(108839), {[0] = '000000', 'a9a9a9','ed90ed','73b3ea'} return t[min(c+1, 3)], t[c]",
						["spellid"] = 108839,
						["stack"] = true,
					}, -- [1]
				},
				["left"] = {
					{
						["type"] = "CD",
						["color"] = "66c9d2",
						["multi"] = 1,
						["spellid"] = "Frozen Orb",
						["condition"] = true,
					}, -- [1]
				},
				["bottom"] = {
					{
						["conditionfunc"] = nil --[[ skipped inline function ]],
						["type"] = "CUSTOM",
						["progressstring"] = "local e = select(7,UnitBuff('player', 'Icy Veins')) if e then return 30, e, 'timed', true else return 1, 1, 'static', false end",
						["progressfunc"] = nil --[[ skipped inline function ]],
						["color"] = "ffffff",
						["multi"] = 1,
						["spellid"] = 12472,
						["conditionstring"] = "return select(4,GetTalentInfo(7,1,1))",
					}, -- [1]
					{
						["colorfunc"] = nil --[[ skipped inline function ]],
						["type"] = "CUSTOM",
						["multi"] = 5,
						["condition"] = "select(4,GetTalentInfo(7,2,1))",
						["conditionstring"] = "return select(GetTalentInfo(7,2,1))",
						["conditionfunc"] = nil --[[ skipped inline function ]],
						["progressfunc"] = nil --[[ skipped inline function ]],
						["colorstring"] = "return \"ffffff\", \"000000\"",
						["stack"] = true,
						["progressstring"] = "local c = select(4, UnitBuff(\"player\", \"Icicles\")) or 0 return c, 5, 'static', true",
						["spellid"] = 205473,
					}, -- [2]
					{
						["type"] = "CD",
						["conditionfunc"] = nil --[[ skipped inline function ]],
						["color"] = "ffffff",
						["multi"] = 1,
						["spellid"] = 153595,
						["conditionstring"] = "return select(4,GetTalentInfo(7,3,1))",
					}, -- [3]
				},
			},
			["procs"] = {
				{
					["type"] = "BUFF",
					["conditionfunc"] = nil --[[ skipped inline function ]],
					["color"] = "66D9EB",
					["multi"] = 3,
					["spellid"] = 44544,
					["conditionstring"] = "return true",
				}, -- [1]
				{
					["type"] = "BUFF",
					["conditionfunc"] = nil --[[ skipped inline function ]],
					["color"] = "0030EB",
					["multi"] = 1,
					["spellid"] = 190446,
					["conditionstring"] = " return true ",
				}, -- [2]
			},
			["cooldowns"] = {
				{
					["type"] = "CD",
					["key"] = "IB",
					["color"] = "0000ff",
					["multi"] = 1,
					["spellid"] = 45438,
					["condition"] = true,
				}, -- [1]
				{
					["colorfunc"] = nil --[[ skipped inline function ]],
					["type"] = "CD",
					["multi"] = 2,
					["conditionstring"] = "return select(4,GetTalentInfo(3,2,1))",
					["conditionfunc"] = nil --[[ skipped inline function ]],
					["key"] = "RoP",
					["stack"] = true,
					["spellid"] = 116011,
					["colorstring"] = "local c = GetSpellCharges(116011) if c == 0 then return 'a9a9a9', '000000' else return '91ffb6', '000000' end",
				}, -- [2]
				{
					["type"] = "CUSTOM",
					["color"] = "ff9ead",
					["multi"] = 1,
					["conditionstring"] = "return select(4,GetTalentInfo(3,3,1))",
					["conditionfunc"] = nil --[[ skipped inline function ]],
					["key"] = "IF",
					["progressfunc"] = nil --[[ skipped inline function ]],
					["spellid"] = 116267,
					["progressstring"] = "local s = select(4,UnitBuff(\"player\", \"Incanter's Flow\")) or 0 return (s-1)* .25, 1, 'static', true",
				}, -- [3]
				{
					["type"] = "CD",
					["key"] = "MI",
					["conditionfunc"] = nil --[[ skipped inline function ]],
					["color"] = "f0bd52",
					["multi"] = 1,
					["spellid"] = 55342,
					["conditionstring"] = "return select(4,GetTalentInfo(3,1,1))",
				}, -- [4]
				{
					["type"] = "CD",
					["key"] = "IV",
					["color"] = "EEEE11",
					["multi"] = 1,
					["condition"] = true,
					["spellid"] = 12472,
				}, -- [5]
			},
			["extras"] = {
				{
					["type"] = "CD",
					["key"] = "RoF",
					["conditionfunc"] = nil --[[ skipped inline function ]],
					["color"] = "CBCDFF",
					["multi"] = 1,
					["spellid"] = 205021,
					["conditionstring"] = " local _,_,_,s = GetTalentInfo(1,1,1) return s ",
				}, -- [1]
				{
					["type"] = "CD",
					["key"] = "IN",
					["conditionfunc"] = nil --[[ skipped inline function ]],
					["color"] = "863AFF",
					["multi"] = 1,
					["spellid"] = 157997,
					["conditionstring"] = " local _,_,_,s = GetTalentInfo(4,1,1) return s ",
				}, -- [2]
			},
			["auras"] = {
				[195418] = {
					["showStacks"] = "true",
					["key"] = "chain reaction",
				},
				[12472] = {
					["name"] = "Icy Veins!",
					["progressfunc"] = nil --[[ skipped inline function ]],
					["color"] = "PERSONAL",
					["progressstring"] = "return 20,select(7,UnitBuff(\"player\",\"Icy Veins\")),\"timed\"",
					["key"] = "Icy Veins",
				},
				[195446] = {
					["name"] = "20%% damage",
					["key"] = "CttC",
				},
				[226852] = {
					["colorfunc"] = nil --[[ skipped inline function ]],
					["key"] = "frost belt 5 stacks",
					["colorstring"] = "if select(4,UnitBuff(\"player\",GetSpellInfo(226852))) == 5 then return FFFFFF else return PERSONAL end",
					["name"] = "emp blizzard",
					["showStacks"] = true,
				},
			},
		}, -- [3]
		["artifact"] = {
		},
		["center"] = {
			["right"] = {
			},
			["left"] = {
			},
			["bottom"] = {
			},
		},
		["procs"] = {
		},
		["cooldowns"] = {
		},
		["extras"] = {
		},
		["auras"] = {
			[116014] = {
				["name"] = "+40%% damage",
				["progressstring"] = "local e,n,s,d = nil for i = 1,4 do e,n,s,d = GetTotemInfo(i) if n == \"Rune of Power\" then break end end return d,s + d, 'timed'",
				["progressfunc"] = nil --[[ skipped inline function ]],
			},
		},
	},
	["demon hunter"] = {
		{
			["artifact"] = {
			},
			["center"] = {
				["right"] = {
				},
				["left"] = {
				},
				["bottom"] = {
				},
			},
			["procs"] = {
			},
			["cooldowns"] = {
			},
			["extras"] = {
			},
			["auras"] = {
			},
		}, -- [1]
		{
			["artifact"] = {
			},
			["center"] = {
				["right"] = {
				},
				["left"] = {
				},
				["bottom"] = {
				},
			},
			["procs"] = {
			},
			["cooldowns"] = {
			},
			["extras"] = {
			},
			["auras"] = {
			},
		}, -- [2]
		{
			["center"] = {
			},
			["procs"] = {
			},
			["cooldowns"] = {
			},
			["extras"] = {
			},
			["auras"] = {
			},
		}, -- [3]
		["artifact"] = {
		},
		["center"] = {
			["right"] = {
			},
			["left"] = {
			},
			["bottom"] = {
			},
		},
		["procs"] = {
		},
		["cooldowns"] = {
		},
		["extras"] = {
		},
		["auras"] = {
		},
	},
	["deathknight"] = {
		{
			["artifact"] = {
			},
			["center"] = {
				["right"] = {
				},
				["left"] = {
				},
				["bottom"] = {
				},
			},
			["procs"] = {
			},
			["cooldowns"] = {
			},
			["extras"] = {
			},
			["auras"] = {
			},
		}, -- [1]
		{
			["artifact"] = {
			},
			["center"] = {
				["right"] = {
				},
				["left"] = {
				},
				["bottom"] = {
				},
			},
			["procs"] = {
			},
			["cooldowns"] = {
			},
			["extras"] = {
			},
			["auras"] = {
			},
		}, -- [2]
		{
			["artifact"] = {
			},
			["center"] = {
				["right"] = {
				},
				["left"] = {
				},
				["bottom"] = {
				},
			},
			["procs"] = {
			},
			["cooldowns"] = {
			},
			["extras"] = {
			},
			["auras"] = {
			},
		}, -- [3]
		["artifact"] = {
		},
		["center"] = {
			["right"] = {
			},
			["left"] = {
			},
			["bottom"] = {
			},
		},
		["procs"] = {
		},
		["cooldowns"] = {
		},
		["extras"] = {
		},
		["auras"] = {
		},
	},
	["druid"] = {
		{
			["artifact"] = {
			},
			["center"] = {
				["right"] = {
					{
						["type"] = "CD",
						["key"] = "Renewal",
						["conditionfunc"] = nil --[[ skipped inline function ]],
						["color"] = "0002dc",
						["multi"] = 1,
						["spellid"] = 108238,
						["conditionstring"] = "return IsPlayerSpell(108238)",
					}, -- [1]
					{
						["type"] = "CD",
						["key"] = "Displacer Beast",
						["conditionfunc"] = nil --[[ skipped inline function ]],
						["color"] = "a9a9a9",
						["multi"] = 1,
						["spellid"] = 102280,
						["conditionstring"] = "return IsPlayerSpell(102280)",
					}, -- [2]
					{
						["type"] = "CD",
						["key"] = "wild charge",
						["conditionfunc"] = nil --[[ skipped inline function ]],
						["color"] = "f8a418",
						["multi"] = 1,
						["spellid"] = 102401,
						["conditionstring"] = "return IsPlayerSpell(102401)",
					}, -- [3]
				},
				["left"] = {
					{
						["type"] = "CUSTOM",
						["color"] = "0070b9",
						["multi"] = 1,
						["condition"] = true,
						["spellidstring"] = "return IsPlayerSpell(202425) and 202425 or 0",
						["key"] = "instant lunar strikes",
						["spellidfunc"] = nil --[[ skipped inline function ]],
						["progressstring"] = "return function(spellid) local castTime = select(4, GetSpellInfo(\"Lunar Strike\")) if castTime == 0 then return 0, 1, 'static' elseif spellid == 0 then return 1, 1, 'static' else local s, d = GetSpellCooldown(spellid) if s == 0 or rivers.on_gcd(spellid) then return 0, 1, 'static' else return d, s + d, 'timed' end end end",
						["progressfunc"] = nil --[[ skipped inline function ]],
					}, -- [1]
				},
				["bottom"] = {
					{
						["colorfunc"] = nil --[[ skipped inline function ]],
						["type"] = "RESOURCE",
						["key"] = "lunar power",
						["colorstring"] = "local p = UnitPower('player',8) if p > 60 then return 'd19c00' elseif p > 40 then return '00d1b4' else return 'a9a9a9' end",
						["multi"] = 1,
						["spellid"] = 8,
						["condition"] = true,
					}, -- [1]
				},
			},
			["procs"] = {
				{
					["colorfunc"] = nil --[[ skipped inline function ]],
					["type"] = "CUSTOM",
					["multifunc"] = nil --[[ skipped inline function ]],
					["colorstring"] = "return function(cid) local s = (select(4, UnitBuff('player', 'Solar Empowerment')) or 0) >= cid local l = (select(4, UnitBuff('player', 'Lunar Empowerment')) or 0) >= cid if s then if l then return 'bca0e9' else return 'd27300' end else if l then return '06b7a6' else return '000000' end end end ",
					["condition"] = true,
					["key"] = "Empowerments",
					["progressfunc"] = nil --[[ skipped inline function ]],
					["progressstring"] = "return function(_,cid)local s = max(select(4, UnitBuff('player', 'Lunar Empowerment')) or 0,select(4, UnitBuff ('player', 'Solar Empowerment'))or 0)return s >= cid and 0, 1, 'static'end  ",
					["spellid"] = 164545,
					["multistring"] = "return UnitLevel('player') >= 70 and 3 or 1",
				}, -- [1]
			},
			["cooldowns"] = {
				{
					["type"] = "CD",
					["key"] = "Barkskin",
					["color"] = "ce610c",
					["multi"] = 1,
					["spellid"] = 22812,
					["condition"] = true,
				}, -- [1]
				{
					["type"] = "CD",
					["key"] = "Celestial Alignment",
					["color"] = "00addb",
					["multi"] = 1,
					["spellid"] = 194223,
					["condition"] = true,
				}, -- [2]
				{
					["type"] = "CD",
					["key"] = "innvervate",
					["color"] = "3de650",
					["multi"] = 1,
					["condition"] = true,
					["spellid"] = 29166,
				}, -- [3]
			},
			["extras"] = {
			},
			["auras"] = {
				[194223] = {
					["color"] = "00addb",
				},
			},
		}, -- [1]
		{
			["artifact"] = {
				{
					["type"] = "CD",
					["key"] = "ashamane's fury",
					["conditionfunc"] = nil --[[ skipped inline function ]],
					["color"] = "4e01af",
					["multi"] = 1,
					["spellid"] = 210722,
					["conditionstring"] = "return IsPlayerSpell(210722)",
				}, -- [1]
			},
			["color"] = "d48033",
			["colorstring"] = "local c = GetSpellCharges(61336) if c < 2 then return 'a9a9a9','000000' else return 'c50033', 'a9a9a9'  end",
			["auras"] = {
				[135700] = {
					["color"] = "0ed66d",
					["key"] = "omen of clarity",
					["showStacks"] = true,
					["name"] = "clearcasting",
				},
				[210723] = {
					["playerOnly"] = true,
					["key"] = "ashamane's fury",
					["isTarget"] = true,
				},
				[5217] = {
					["color"] = "18b9c4",
					["name"] = "+15% snapshot damage",
					["key"] = "tiger's fury",
				},
				[69369] = {
					["color"] = "113b9f",
				},
			},
			["center"] = {
				["right"] = {
				},
				["left"] = {
					{
						["type"] = "CD",
						["key"] = "tiger's fury",
						["color"] = "18b9c4",
						["multi"] = 1,
						["condition"] = true,
						["spellid"] = 5217,
					}, -- [1]
				},
				["bottom"] = {
				},
			},
			["procs"] = {
				{
					["multistring"] = "return UnitPowerMax('player',Enum.PowerType.ComboPoints)",
					["key"] = "combo points",
					["multifunc"] = nil --[[ skipped inline function ]],
					["color"] = "bcac12",
					["type"] = "RESOURCE",
					["spellid"] = 4,
					["condition"] = true,
				}, -- [1]
			},
			["cooldowns"] = {
				{
					["colorfunc"] = nil --[[ skipped inline function ]],
					["type"] = "CD",
					["key"] = "survival instincts",
					["stack"] = true,
					["spellid"] = 61336,
					["colorstring"] = "local c = GetSpellCharges(61336) if c == 0 then return 'a9a9a9','000000' else return 'c50033', 'a9a9a9'  end",
					["condition"] = true,
					["multi"] = 2,
				}, -- [1]
				{
					["type"] = "CD",
					["key"] = "beserk",
					["color"] = "bd6515",
					["multi"] = 1,
					["spellid"] = 106951,
					["condition"] = true,
				}, -- [2]
			},
			["extras"] = {
				{
					["type"] = "CD",
					["key"] = "brutal slash",
					["conditionfunc"] = nil --[[ skipped inline function ]],
					["color"] = "bc3600",
					["multi"] = 3,
					["spellid"] = 202028,
					["conditionstring"] = "return IsPlayerSpell(202028)",
				}, -- [1]
			},
			["colorfunc"] = nil --[[ skipped inline function ]],
		}, -- [2]
		{
			["artifact"] = {
			},
			["center"] = {
				["right"] = {
					{
						["type"] = "CD",
						["key"] = "wild charge",
						["conditionfunc"] = nil --[[ skipped inline function ]],
						["color"] = "f8a418",
						["multi"] = 1,
						["spellid"] = 102401,
						["conditionstring"] = "return IsPlayerSpell(102401)",
					}, -- [1]
					{
						["type"] = "CD",
						["key"] = "intimidating roar",
						["conditionfunc"] = nil --[[ skipped inline function ]],
						["color"] = "c10e09",
						["multi"] = 1,
						["spellid"] = 236748,
						["conditionstring"] = "return IsPlayerSpell(236748)",
					}, -- [2]
					{
						["type"] = "CD",
						["key"] = "Stampeding Roar",
						["color"] = "ca770d",
						["multi"] = 1,
						["spellid"] = 106898,
						["condition"] = true,
					}, -- [3]
				},
				["left"] = {
					{
						["type"] = "CD",
						["key"] = "mangle",
						["color"] = "058c1a",
						["multi"] = 1,
						["spellid"] = 33917,
						["condition"] = true,
					}, -- [1]
				},
				["bottom"] = {
				},
			},
			["procs"] = {
				{
					["type"] = "BUFF",
					["color"] = "9d2592",
					["multi"] = 1,
					["conditionstring"] = "return IsPlayerSpell(210706)",
					["conditionfunc"] = nil --[[ skipped inline function ]],
					["key"] = "gore",
					["conditoinfunc"] = nil --[[ skipped inline function ]],
					["conditoinstring"] = "return IsPlayerSpell(210706)",
					["spellid"] = 210706,
				}, -- [1]
				{
					["type"] = "BUFF",
					["key"] = "GG",
					["conditionfunc"] = nil --[[ skipped inline function ]],
					["color"] = "bd61c3",
					["multi"] = 1,
					["spellid"] = 213708,
					["conditionstring"] = "return IsPlayerSpell(203964)",
				}, -- [2]
			},
			["cooldowns"] = {
				{
					["type"] = "CD",
					["key"] = "Barkskin",
					["color"] = "ce610c",
					["multi"] = 1,
					["spellid"] = 22812,
					["condition"] = true,
				}, -- [1]
				{
					["type"] = "CD",
					["key"] = "Survival Instincts",
					["color"] = "3024bc",
					["multi"] = 2,
					["spellid"] = 61336,
					["condition"] = true,
				}, -- [2]
			},
			["extras"] = {
			},
			["auras"] = {
			},
		}, -- [3]
		{
			["artifact"] = {
			},
			["center"] = {
				["right"] = {
					{
						["type"] = "CD",
						["key"] = "ironbark",
						["color"] = "a9a9a9",
						["multi"] = 1,
						["condition"] = true,
						["spellid"] = 102342,
					}, -- [1]
				},
				["left"] = {
					{
						["type"] = "CD",
						["key"] = "WG",
						["color"] = "00f023",
						["multi"] = 1,
						["spellid"] = 48438,
						["condition"] = true,
					}, -- [1]
				},
				["bottom"] = {
				},
			},
			["procs"] = {
			},
			["cooldowns"] = {
				{
					["type"] = "CD",
					["key"] = "Barkskin",
					["color"] = "e2a711",
					["multi"] = 1,
					["spellid"] = 22812,
					["condition"] = true,
				}, -- [1]
				{
					["type"] = "CD",
					["key"] = "innervate",
					["color"] = "2020ee",
					["multi"] = 1,
					["condition"] = true,
					["spellid"] = 29166,
				}, -- [2]
			},
			["extras"] = {
			},
			["auras"] = {
				[29166] = {
					["name"] = "clearcasting",
					["color"] = 2020,
				},
			},
		}, -- [4]
		["artifact"] = {
		},
		["center"] = {
			["right"] = {
			},
			["left"] = {
			},
			["bottom"] = {
			},
		},
		["procs"] = {
		},
		["cooldowns"] = {
		},
		["extras"] = {
		},
		["auras"] = {
			[155722] = {
				["color"] = "ad2712",
				["playerOnly"] = true,
				["key"] = "rake",
				["isTarget"] = true,
			},
			[1850] = {
				["color"] = "TRINKET",
			},
			[106830] = {
				["color"] = 975413,
				["playerOnly"] = true,
				["key"] = "thrash",
				["isTarget"] = true,
			},
			[22812] = {
				["color"] = "TURTLE",
				["name"] = "-20% damage taken",
				["key"] = "barkskin",
			},
			[1079] = {
				["color"] = "b00921",
				["playerOnly"] = true,
				["key"] = "rip",
				["isTarget"] = true,
			},
			[164815] = {
				["color"] = "bb9000",
				["playerOnly"] = true,
				["key"] = "sunfire",
				["isTarget"] = true,
			},
			[61336] = {
				["key"] = "survival instincts",
				["name"] = "-50% damage taken",
			},
			[164812] = {
				["color"] = "0028bb",
				["playerOnly"] = true,
				["key"] = "moonfire",
				["isTarget"] = true,
			},
			[106951] = {
			},
		},
	},
	["demonhunter"] = {
		{
			["artifact"] = {
			},
			["center"] = {
				["right"] = {
					{
						["colorfunc"] = nil --[[ skipped inline function ]],
						["type"] = "CD",
						["multi"] = 2,
						["conditionstring"] = "return true",
						["conditionfunc"] = nil --[[ skipped inline function ]],
						["key"] = "fel rush",
						["stack"] = true,
						["spellid"] = 195072,
						["colorstring"] = "local c,ch = {'a9a9a9','e4be5b'}, GetSpellCharges(195072) return ch>1 and c[2] or c[1]",
					}, -- [1]
				},
				["left"] = {
					{
						["type"] = "CD",
						["key"] = "Eye Beam",
						["conditionfunc"] = nil --[[ skipped inline function ]],
						["color"] = "5ddb65",
						["multi"] = 1,
						["spellid"] = 198013,
						["conditionstring"] = "return true",
					}, -- [1]
				},
				["bottom"] = {
				},
			},
			["procs"] = {
			},
			["cooldowns"] = {
			},
			["extras"] = {
			},
			["auras"] = {
			},
		}, -- [1]
		{
			["artifact"] = {
			},
			["center"] = {
				["right"] = {
				},
				["left"] = {
				},
				["bottom"] = {
				},
			},
			["procs"] = {
			},
			["cooldowns"] = {
			},
			["extras"] = {
			},
			["auras"] = {
			},
		}, -- [2]
		["artifact"] = {
		},
		["center"] = {
			["right"] = {
			},
			["left"] = {
			},
			["bottom"] = {
			},
		},
		["procs"] = {
		},
		["color"] = "9b64d1",
		["cooldowns"] = {
		},
		["extras"] = {
		},
		["auras"] = {
			[188501] = {
			},
			[163073] = {
				["key"] = "demon soul absorbed",
				["name"] = "+20%% damage",
			},
		},
	},
	["priest"] = {
		{
			["artifact"] = {
				{
					["type"] = "CD",
					["key"] = "LW",
					["color"] = "db6600",
					["multi"] = 1,
					["spellid"] = 207946,
					["condition"] = true,
				}, -- [1]
			},
			["center"] = {
				["right"] = {
					{
						["colorfunc"] = nil --[[ skipped inline function ]],
						["type"] = "CD",
						["multi"] = 3,
						["conditionstring"] = "return select(4,GetTalentInfo(2,1,1))",
						["conditionfunc"] = nil --[[ skipped inline function ]],
						["key"] = "Angelic Feather",
						["stack"] = true,
						["spellid"] = 121536,
						["colorstring"] = "local c, t = GetSpellCharges(121536), {[0] = \"000000\", \"a9a9a9\", \"4dcaed\", \"f3a327\"} return t[min(c+1,3)], t[c]",
					}, -- [1]
				},
				["left"] = {
					{
						["type"] = "CD",
						["key"] = "penance",
						["color"] = "ffee64",
						["multi"] = 1,
						["condition"] = true,
						["spellid"] = 47540,
					}, -- [1]
				},
				["bottom"] = {
					{
						["type"] = "CD",
						["key"] = "rapture",
						["color"] = "ffffff",
						["multi"] = 1,
						["condition"] = true,
						["spellid"] = 47536,
					}, -- [1]
				},
			},
			["procs"] = {
				{
					["type"] = "CD",
					["color"] = "eace3d",
					["multi"] = 2,
					["spellid"] = 194509,
					["condition"] = true,
				}, -- [1]
				{
					["type"] = "CD",
					["key"] = "PWS",
					["color"] = "66e9e8",
					["multi"] = 1,
					["condition"] = true,
					["spellid"] = 17,
				}, -- [2]
			},
			["cooldowns"] = {
				{
					["type"] = "CD",
					["key"] = "shadowfiend",
					["color"] = "a65efb",
					["multi"] = 1,
					["spellid"] = "Shadowfiend",
					["condition"] = true,
				}, -- [1]
				{
					["type"] = "CD",
					["key"] = "PW:B",
					["color"] = "64ffe9",
					["multi"] = 1,
					["spellid"] = 62618,
					["condition"] = true,
				}, -- [2]
				{
					["type"] = "CD",
					["key"] = "PS",
					["color"] = "ff8000",
					["multi"] = 1,
					["spellid"] = 33206,
					["condition"] = true,
				}, -- [3]
			},
			["color"] = "C5B358",
			["extras"] = {
			},
			["auras"] = {
			},
		}, -- [1]
		{
			["artifact"] = {
			},
			["center"] = {
				["right"] = {
					{
						["colorfunc"] = nil --[[ skipped inline function ]],
						["type"] = "CD",
						["multi"] = 3,
						["conditionstring"] = "return select(4,GetTalentInfo(2,1,1))",
						["conditionfunc"] = nil --[[ skipped inline function ]],
						["key"] = "Angelic Feather",
						["stack"] = true,
						["spellid"] = 121536,
						["colorstring"] = "local c, t = GetSpellCharges(121536), {[0] = \"000000\", \"a9a9a9\", \"4dcaed\", \"f3a327\"} return t[min(c+1,3)], t[c]",
					}, -- [1]
				},
				["left"] = {
					{
						["type"] = "CD",
						["key"] = "PoM",
						["color"] = "42ff92",
						["multi"] = 1,
						["spellid"] = 33076,
						["condition"] = true,
					}, -- [1]
				},
				["bottom"] = {
				},
			},
			["procs"] = {
				{
					["type"] = "CD",
					["key"] = "chastise",
					["color"] = "f28a22",
					["multi"] = 1,
					["condition"] = true,
					["spellid"] = 88625,
				}, -- [1]
				{
					["type"] = "CD",
					["key"] = "serenity",
					["color"] = "6df6ff",
					["multi"] = 1,
					["spellid"] = 2050,
					["condition"] = true,
				}, -- [2]
				{
					["type"] = "CD",
					["key"] = "sanctify",
					["color"] = "edca4d",
					["multi"] = 1,
					["condition"] = true,
					["spellid"] = 34861,
				}, -- [3]
			},
			["cooldowns"] = {
				{
					["type"] = "CD",
					["color"] = "ffae3d",
					["multi"] = 1,
					["spellid"] = 19236,
					["condition"] = true,
				}, -- [1]
				{
					["condition"] = true,
					["type"] = "CUSTOM",
					["key"] = "guardian",
					["progressfunc"] = nil --[[ skipped inline function ]],
					["color"] = "3dc1ff",
					["multi"] = 1,
					["progressstring"] = "local s  = GetSpellCooldown(47788) if rivers.on_gcd(47788) then return 0,1, 'static' else return s + 240, 240, 'timed' end",
					["spellid"] = 47788,
				}, -- [2]
			},
			["color"] = "20afbd",
			["extras"] = {
				{
					["type"] = "CD",
					["key"] = "holy fire",
					["color"] = "ffa200",
					["multi"] = 1,
					["spellid"] = 14914,
					["condition"] = true,
				}, -- [1]
				{
					["type"] = "CD",
					["key"] = "leap of faith",
					["color"] = "c1c1c1",
					["multi"] = 1,
					["spellid"] = 73325,
					["condition"] = true,
				}, -- [2]
			},
			["auras"] = {
				[114255] = {
					["color"] = "55fcff",
					["showStacks"] = true,
					["name"] = "free heal",
				},
			},
		}, -- [2]
		{
			["artifact"] = {
				{
					["type"] = "CD",
					["key"] = "VT",
					["color"] = "4900ff",
					["multi"] = 1,
					["condition"] = true,
					["spellid"] = 205065,
				}, -- [1]
			},
			["center"] = {
				["right"] = {
					{
						["colorfunc"] = nil --[[ skipped inline function ]],
						["type"] = "CD",
						["key"] = "SW:D",
						["stack"] = true,
						["condition"] = true,
						["colorstring"] = "local c, t = GetSpellCharges(32379) if not UnitExists'target' or UnitHealth'target' > (UnitHealthMax'target' * (IsPlayerSpell(199853) and .35 or .2)) then t = {[0] = '000000', 'a9a9a9', '80000c'} else t = {[0] = '000000', '08a28c', 'ea6a22'} end return t[min(2, 1+c)], t[c] ",
						["spellid"] = 32379,
						["multi"] = 2,
					}, -- [1]
				},
				["left"] = {
					{
						["type"] = "CD",
						["color"] = "9e41cb",
						["multi"] = 1,
						["condition"] = true,
						["spellid"] = 8092,
					}, -- [1]
				},
				["bottom"] = {
					{
						["colorfunc"] = nil --[[ skipped inline function ]],
						["type"] = "RESOURCE",
						["key"] = "insanity",
						["condition"] = true,
						["multi"] = 1,
						["spellid"] = 13,
						["colorstring"] = "if not UnitBuff('player', 'Voidform') then if  UnitPower('player',13) < (IsPlayerSpell(193225) and 65 or 100) then return 'a9a9a9' else return '63fff7' end end if not rivers.on_gcd(\"Void Bolt\") then return \"8b63ff\" else return 'ffdd63' end",
					}, -- [1]
				},
			},
			["procs"] = {
			},
			["cooldowns"] = {
				{
					["type"] = "CD",
					["key"] = "dispersion",
					["color"] = "0000ff",
					["multi"] = 1,
					["spellid"] = 47585,
					["condition"] = true,
				}, -- [1]
				{
					["type"] = "CD",
					["key"] = "shadowfiend",
					["conditionfunc"] = nil --[[ skipped inline function ]],
					["color"] = "992bff",
					["multi"] = 1,
					["spellid"] = 34433,
					["conditionstring"] = "return not IsPlayerSpell(200174)",
				}, -- [2]
				{
					["type"] = "CD",
					["key"] = "Mindbender",
					["conditionfunc"] = nil --[[ skipped inline function ]],
					["color"] = "600c9f",
					["multi"] = 1,
					["spellid"] = 200174,
					["conditionstring"] = "return IsPlayerSpell(200174)",
				}, -- [3]
			},
			["color"] = "9f67ec",
			["extras"] = {
			},
			["auras"] = {
				[47585] = {
					["key"] = "dispersion",
					["name"] = "60% DR, silenced",
				},
				[34914] = {
					["playerOnly"] = true,
					["key"] = "vampiric touch",
					["isTarget"] = true,
				},
			},
		}, -- [3]
		["artifact"] = {
		},
		["center"] = {
			["right"] = {
			},
			["left"] = {
			},
			["bottom"] = {
			},
		},
		["procs"] = {
		},
		["cooldowns"] = {
		},
		["extras"] = {
		},
		["auras"] = {
			[121557] = {
				["key"] = "Feather",
			},
			[589] = {
				["playerOnly"] = true,
				["isTarget"] = true,
			},
		},
	},
	["death knight"] = {
		{
			["artifact"] = {
			},
			["center"] = {
				["right"] = {
				},
				["left"] = {
				},
				["bottom"] = {
				},
			},
			["procs"] = {
			},
			["cooldowns"] = {
			},
			["extras"] = {
			},
			["auras"] = {
			},
		}, -- [1]
		{
			["artifact"] = {
			},
			["center"] = {
				["right"] = {
				},
				["left"] = {
				},
				["bottom"] = {
				},
			},
			["procs"] = {
			},
			["cooldowns"] = {
			},
			["extras"] = {
			},
			["auras"] = {
			},
		}, -- [2]
		{
			["artifact"] = {
			},
			["center"] = {
				["right"] = {
				},
				["left"] = {
				},
				["bottom"] = {
				},
			},
			["procs"] = {
			},
			["cooldowns"] = {
			},
			["extras"] = {
			},
			["auras"] = {
			},
		}, -- [3]
		["artifact"] = {
		},
		["center"] = {
			["right"] = {
			},
			["left"] = {
			},
			["bottom"] = {
			},
		},
		["procs"] = {
		},
		["cooldowns"] = {
		},
		["extras"] = {
		},
		["auras"] = {
		},
	},
	["hunter"] = {
		{
			["artifact"] = {
			},
			["center"] = {
				["right"] = {
				},
				["left"] = {
				},
				["bottom"] = {
				},
			},
			["procs"] = {
			},
			["cooldowns"] = {
			},
			["extras"] = {
			},
			["auras"] = {
			},
		}, -- [1]
		{
			["artifact"] = {
			},
			["center"] = {
				["right"] = {
				},
				["left"] = {
				},
				["bottom"] = {
				},
			},
			["procs"] = {
			},
			["cooldowns"] = {
			},
			["extras"] = {
			},
			["auras"] = {
			},
		}, -- [2]
		{
			["artifact"] = {
			},
			["center"] = {
				["right"] = {
				},
				["left"] = {
				},
				["bottom"] = {
				},
			},
			["procs"] = {
			},
			["cooldowns"] = {
			},
			["extras"] = {
			},
			["auras"] = {
			},
		}, -- [3]
		["artifact"] = {
		},
		["center"] = {
			["right"] = {
			},
			["left"] = {
			},
			["bottom"] = {
			},
		},
		["procs"] = {
		},
		["cooldowns"] = {
		},
		["extras"] = {
		},
		["auras"] = {
		},
	},
	["warlock"] = {
		{
			["artifact"] = {
			},
			["center"] = {
				["right"] = {
				},
				["left"] = {
				},
				["bottom"] = {
				},
			},
			["procs"] = {
				{
					["type"] = "RESOURCE",
					["key"] = "soul shards",
					["conditionfunc"] = nil --[[ skipped inline function ]],
					["color"] = "ffb166",
					["multi"] = 5,
					["spellid"] = 7,
					["conditionstring"] = "return true",
				}, -- [1]
			},
			["cooldowns"] = {
			},
			["extras"] = {
				{
					["type"] = "CD",
					["key"] = "haunt",
					["conditionfunc"] = nil --[[ skipped inline function ]],
					["color"] = "a391ff",
					["multi"] = 1,
					["spellid"] = 48181,
					["conditionstring"] = "return select(4,GetTalentInfo(1,1,1))",
				}, -- [1]
			},
			["auras"] = {
				[980] = {
					["key"] = "agony",
					["isTarget"] = true,
					["color"] = "ffab64",
					["playerOnly"] = true,
					["showStacks"] = true,
				},
				[233496] = {
					["key"] = "UA",
					["isTarget"] = true,
					["playerOnly"] = true,
					["showStacks"] = true,
					["merge"] = "233490",
				},
				[233490] = {
					["key"] = "UA",
					["playerOnly"] = true,
					["showStacks"] = true,
					["isTarget"] = true,
				},
				[233498] = {
					["key"] = "UA",
					["isTarget"] = true,
					["playerOnly"] = true,
					["showStacks"] = true,
					["merge"] = "233490 233496 233497",
				},
				[233499] = {
					["key"] = "UA",
					["isTarget"] = true,
					["playerOnly"] = true,
					["showStacks"] = true,
					["merge"] = "233490 233496 233497 233498/",
				},
				[233497] = {
					["key"] = "UA",
					["isTarget"] = true,
					["playerOnly"] = true,
					["showStacks"] = true,
					["merge"] = "233490 233496",
				},
				[146739] = {
					["color"] = "8e99ff",
					["playerOnly"] = true,
					["key"] = "corruption",
					["isTarget"] = true,
				},
			},
		}, -- [1]
		{
			["artifact"] = {
			},
			["center"] = {
				["right"] = {
				},
				["left"] = {
				},
				["bottom"] = {
				},
			},
			["procs"] = {
				{
					["type"] = "RESOURCE",
					["key"] = "soul shards",
					["color"] = "8b5bbf",
					["multi"] = 5,
					["condition"] = true,
					["spellid"] = 7,
				}, -- [1]
			},
			["cooldowns"] = {
			},
			["extras"] = {
			},
			["auras"] = {
			},
		}, -- [2]
		{
			["artifact"] = {
			},
			["center"] = {
				["right"] = {
					{
						["type"] = "CD",
						["conditionfunc"] = nil --[[ skipped inline function ]],
						["color"] = "7c47f8",
						["multi"] = 1,
						["spellid"] = 80240,
						["conditionstring"] = "return not select(4,GetTalentInfo(7,1,1))",
					}, -- [1]
					{
						["type"] = "BUFF",
						["color"] = "7c47f8",
						["multi"] = 1,
						["spellid"] = 80240,
						["conditionstring"] = "return select(4,GetTalentInfo(7.1.1))",
					}, -- [2]
				},
				["left"] = {
					{
						["colorfunc"] = nil --[[ skipped inline function ]],
						["type"] = "CD",
						["multi"] = 2,
						["conditionstring"] = "return true",
						["conditionfunc"] = nil --[[ skipped inline function ]],
						["key"] = "Conflag",
						["stack"] = true,
						["spellid"] = 17962,
						["colorstring"] = "local t,c = {[0] = '000000','a9a9a9','ffc257'}, GetSpellCharges(17962) return t[min(c+1,2)],t[c]",
					}, -- [1]
				},
				["bottom"] = {
				},
			},
			["procs"] = {
				{
					["condition"] = true,
					["type"] = "CUSTOM",
					["key"] = "soul shards",
					["progressfunc"] = nil --[[ skipped inline function ]],
					["color"] = "2bae09",
					["multi"] = 5,
					["progressstring"] = "return function(resourceID, shardIndex) local power = UnitPower('player', resourceID, true)  local val =  max(0, min(10, (power - 10 *shardIndex))) return 10 - val, 10, 'static' end",
					["spellid"] = 7,
				}, -- [1]
			},
			["cooldowns"] = {
				{
					["type"] = "CD",
					["key"] = "unending resolve",
					["conditionfunc"] = nil --[[ skipped inline function ]],
					["color"] = "1376ff",
					["multi"] = 1,
					["spellid"] = 104773,
					["conditionstring"] = "return true",
				}, -- [1]
				{
					["type"] = "CD",
					["key"] = "big demon",
					["color"] = "fff613",
					["multi"] = 1,
					["spellid"] = 1122,
					["condition"] = true,
				}, -- [2]
				{
					["type"] = "CD",
					["key"] = "soul harvest",
					["conditionfunc"] = nil --[[ skipped inline function ]],
					["color"] = "b813ff",
					["multi"] = 1,
					["spellid"] = 196098,
					["conditionstring"] = "return select(4,GetTalentInfo(4,3,1))",
				}, -- [3]
				{
					["type"] = "CUSTOM",
					["color"] = "5fbac6",
					["multi"] = 1,
					["conditionstring"] = "return select(4,GetTalentInfo(4,2,1))",
					["conditionfunc"] = nil --[[ skipped inline function ]],
					["key"] = "Fire&Brimstone",
					["progressfunc"] = nil --[[ skipped inline function ]],
					["progressstring"] = "return 0,1,'static'",
					["spellid"] = 196408,
				}, -- [4]
				{
					["type"] = "CD",
					["key"] = "Cataclysm",
					["conditionfunc"] = nil --[[ skipped inline function ]],
					["color"] = "f09b46",
					["multi"] = 1,
					["spellid"] = 152108,
					["conditionstring"] = "return select(4,GetTalentInfo(4,1,1))",
				}, -- [5]
			},
			["color"] = "90f38a",
			["extras"] = {
			},
			["auras"] = {
				[157736] = {
					["color"] = "ffb72c",
					["playerOnly"] = true,
					["key"] = "immolate",
					["isTarget"] = true,
				},
			},
		}, -- [3]
		["artifact"] = {
		},
		["center"] = {
			["right"] = {
			},
			["left"] = {
			},
			["bottom"] = {
			},
		},
		["procs"] = {
			{
				["type"] = "RESOURCE",
				["conditionfunc"] = nil --[[ skipped inline function ]],
				["color"] = "8b5bbf",
				["condition"] = true,
				["spellid"] = 7,
				["conditionstring"] = "return GetSpecialization() == 3 and UnitLevel'player' >= 12 or UnitLevel'player' >= 14",
			}, -- [1]
		},
		["cooldowns"] = {
		},
		["extras"] = {
		},
		["auras"] = {
			[235156] = {
				["key"] = "emp life tap",
				["name"] = "+10%% damage",
			},
		},
	},
	["auras"] = {
		[80353] = {
			["key"] = "Time Warp",
			["name"] = "30%% haste",
			["isGeneric"] = true,
		},
		[208051] = {
			["name"] = "+25%% haste",
			["isGeneric"] = true,
		},
		[225776] = {
			["color"] = "bd5e61",
			["key"] = "whispers debuff",
			["isGeneric"] = true,
		},
		[221812] = {
			["playerOnly"] = true,
			["isTarget"] = true,
			["isGeneric"] = true,
		},
		[208052] = {
			["name"] = "25%% haste",
			["key"] = "sepuz",
			["isGeneric"] = true,
		},
		[2825] = {
			["name"] = "+30%% haste",
			["isGeneric"] = true,
		},
		[230039] = {
			["name"] = "2k5 stats",
			["key"] = "Brawler pot",
			["isGeneric"] = true,
		},
		[229206] = {
			["name"] = "2k5 stats",
			["isGeneric"] = true,
		},
		[160452] = {
			["name"] = "+30%% haste",
			["isGeneric"] = true,
		},
		[210339] = {
			["isGeneric"] = true,
		},
		[225719] = {
			["showStacks"] = true,
			["key"] = "metro - gnome",
			["name"] = "gnome trinket",
		},
		[33702] = {
			["color"] = "TRINKET",
			["name"] = "2k AP",
			["isGeneric"] = true,
		},
		[32182] = {
			["name"] = "+30%% haste",
			["isGeneric"] = true,
		},
		[225774] = {
			["color"] = "71ffc3",
			["name"] = "super lust",
			["key"] = "whispers",
			["isGeneric"] = true,
		},
		[242584] = {
			["key"] = "concordance",
			["name"] = "concordance",
		},
		[90355] = {
			["name"] = "+30%% haste",
			["isGeneric"] = true,
		},
		[188027] = {
			["key"] = "range pot",
			["name"] = "deadly grace",
			["isGeneric"] = true,
		},
		[215630] = {
			["name"] = "stacking mastery",
			["isGeneric"] = true,
		},
		[215632] = {
			["showStacks"] = true,
			["key"] = "EoA mastery trinket",
			["isGeneric"] = true,
		},
	},
}

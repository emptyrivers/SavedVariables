
WeakAurasSaved = {
	["dynamicIconCache"] = {
		["Regrowth"] = {
			[8936] = 136085,
		},
	},
	["displays"] = {
		["Option 7"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 12,
			["authorMode"] = true,
			["authorOptions"] = {
				{
					["type"] = "toggle",
					["key"] = "option1",
					["name"] = "Option #1",
					["default"] = false,
					["width"] = 1,
				}, -- [1]
			},
			["displayText"] = "%p",
			["yOffset"] = 0,
			["regionType"] = "text",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["xOffset"] = 0,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["names"] = {
						},
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["parent"] = "Option Group 1",
			["internalVersion"] = 9,
			["justify"] = "LEFT",
			["selfPoint"] = "BOTTOM",
			["id"] = "Option 7",
			["fixedWidth"] = 200,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["wordWrap"] = "WordWrap",
			["config"] = {
				["option1"] = false,
			},
			["font"] = "Friz Quadrata TT",
			["anchorPoint"] = "CENTER",
			["conditions"] = {
			},
			["load"] = {
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Option 6"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 12,
			["parent"] = "Option Group 1",
			["displayText"] = "%p",
			["yOffset"] = 0,
			["regionType"] = "text",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["authorOptions"] = {
			},
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 9,
			["justify"] = "LEFT",
			["selfPoint"] = "BOTTOM",
			["id"] = "Option 6",
			["conditions"] = {
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["anchorPoint"] = "CENTER",
			["config"] = {
			},
			["font"] = "Friz Quadrata TT",
			["wordWrap"] = "WordWrap",
			["fixedWidth"] = 200,
			["load"] = {
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = 0,
		},
		["Option Group 1"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"Option 1", -- [1]
				"Option 2", -- [2]
				"Option 3", -- [3]
				"Option 4", -- [4]
				"Option 5", -- [5]
				"Option 6", -- [6]
				"Option 7", -- [7]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 0,
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "group",
			["borderSize"] = 16,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["expanded"] = true,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["names"] = {
						},
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["selfPoint"] = "BOTTOMLEFT",
			["internalVersion"] = 9,
			["authorOptions"] = {
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["id"] = "Option Group 1",
			["yOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["borderOffset"] = 5,
			["config"] = {
			},
			["borderInset"] = 11,
			["anchorPoint"] = "CENTER",
			["conditions"] = {
			},
			["load"] = {
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["scale"] = 1,
		},
		["Option 2"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 12,
			["parent"] = "Option Group 1",
			["displayText"] = "%p",
			["yOffset"] = 0,
			["regionType"] = "text",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["authorOptions"] = {
			},
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 9,
			["justify"] = "LEFT",
			["selfPoint"] = "BOTTOM",
			["id"] = "Option 2",
			["conditions"] = {
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["anchorPoint"] = "CENTER",
			["config"] = {
			},
			["font"] = "Friz Quadrata TT",
			["wordWrap"] = "WordWrap",
			["fixedWidth"] = 200,
			["load"] = {
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = 0,
		},
		["Option 1"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 12,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText"] = "%p",
			["authorMode"] = true,
			["yOffset"] = 0,
			["regionType"] = "text",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["parent"] = "Option Group 1",
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["names"] = {
						},
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["xOffset"] = 0,
			["internalVersion"] = 9,
			["justify"] = "LEFT",
			["selfPoint"] = "BOTTOM",
			["id"] = "Option 1",
			["fixedWidth"] = 200,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["wordWrap"] = "WordWrap",
			["config"] = {
				["option1"] = false,
			},
			["font"] = "Friz Quadrata TT",
			["anchorPoint"] = "CENTER",
			["conditions"] = {
			},
			["load"] = {
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["authorOptions"] = {
				{
					["type"] = "toggle",
					["key"] = "option1",
					["name"] = "Option #1",
					["default"] = false,
					["width"] = 1,
				}, -- [1]
			},
		},
		["Option 5"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 12,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText"] = "%p",
			["yOffset"] = 0,
			["regionType"] = "text",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["parent"] = "Option Group 1",
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["names"] = {
						},
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["xOffset"] = 0,
			["internalVersion"] = 9,
			["justify"] = "LEFT",
			["selfPoint"] = "BOTTOM",
			["id"] = "Option 5",
			["fixedWidth"] = 200,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["wordWrap"] = "WordWrap",
			["config"] = {
			},
			["font"] = "Friz Quadrata TT",
			["anchorPoint"] = "CENTER",
			["conditions"] = {
			},
			["load"] = {
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["authorOptions"] = {
			},
		},
		["Option 3"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 12,
			["authorOptions"] = {
			},
			["displayText"] = "%p",
			["yOffset"] = 0,
			["regionType"] = "text",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["xOffset"] = 0,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["names"] = {
						},
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["parent"] = "Option Group 1",
			["internalVersion"] = 9,
			["justify"] = "LEFT",
			["selfPoint"] = "BOTTOM",
			["id"] = "Option 3",
			["fixedWidth"] = 200,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["wordWrap"] = "WordWrap",
			["config"] = {
			},
			["font"] = "Friz Quadrata TT",
			["anchorPoint"] = "CENTER",
			["conditions"] = {
			},
			["load"] = {
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Option 4"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 12,
			["xOffset"] = 0,
			["displayText"] = "%p",
			["yOffset"] = 0,
			["regionType"] = "text",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["authorOptions"] = {
			},
			["internalVersion"] = 9,
			["justify"] = "LEFT",
			["selfPoint"] = "BOTTOM",
			["id"] = "Option 4",
			["conditions"] = {
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["anchorPoint"] = "CENTER",
			["config"] = {
			},
			["font"] = "Friz Quadrata TT",
			["wordWrap"] = "WordWrap",
			["fixedWidth"] = 200,
			["load"] = {
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "Option Group 1",
		},
	},
	["minimap"] = {
		["hide"] = false,
	},
	["personalRessourceDisplayFrame"] = {
		["xOffset"] = -959.546465288654,
		["yOffset"] = -458.593518999,
	},
	["registered"] = {
	},
	["login_squelch_time"] = 10,
	["frame"] = {
		["xOffset"] = -488.997436523438,
		["width"] = 774.750061035156,
		["height"] = 683.75048828125,
		["yOffset"] = -208.744812011719,
	},
	["editor_theme"] = "Monokai",
}

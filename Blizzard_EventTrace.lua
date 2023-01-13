
EventTraceSavedVars = {
	["ShowTimestamp"] = true,
	["LogEventsWhenHidden"] = false,
	["ShowArguments"] = true,
	["LogCREvents"] = false,
	["Filters"] = {
		["User"] = {
			{
				["enabled"] = true,
				["event"] = "COMBAT_LOG_EVENT_UNFILTERED",
				["displayEvent"] = "COMBAT_LOG_EVENT_UNFILTERED",
			}, -- [1]
			{
				["enabled"] = true,
				["event"] = "SPELL_ACTIVATION_OVERLAY_HIDE",
				["displayEvent"] = "SPELL_ACTIVATION_OVERLAY_HIDE",
			}, -- [2]
			{
				["enabled"] = true,
				["event"] = "VEHICLE_ANGLE_UPDATE",
				["displayEvent"] = "VEHICLE_ANGLE_UPDATE",
			}, -- [3]
		},
	},
	["Size"] = {
		["Height"] = 603.4286499023438,
		["Width"] = 744.71435546875,
	},
}

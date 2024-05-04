
EventTraceSavedVars = {
	["ShowTimestamp"] = true,
	["LogEventsWhenHidden"] = false,
	["ShowArguments"] = true,
	["LogCREvents"] = false,
	["Filters"] = {
		["User"] = {
			{
				["enabled"] = true,
				["event"] = "AREA_POIS_UPDATED",
				["displayEvent"] = "AREA_POIS_UPDATED",
			}, -- [1]
			{
				["enabled"] = true,
				["event"] = "FOG_OF_WAR_UPDATED",
				["displayEvent"] = "FOG_OF_WAR_UPDATED",
			}, -- [2]
			{
				["enabled"] = true,
				["event"] = "NEW_WMO_CHUNK",
				["displayEvent"] = "NEW_WMO_CHUNK",
			}, -- [3]
			{
				["enabled"] = true,
				["event"] = "SPELL_ACTIVATION_OVERLAY_HIDE",
				["displayEvent"] = "SPELL_ACTIVATION_OVERLAY_HIDE",
			}, -- [4]
			{
				["enabled"] = true,
				["event"] = "WAYPOINT_UPDATE",
				["displayEvent"] = "WAYPOINT_UPDATE",
			}, -- [5]
		},
	},
	["Size"] = {
		["Height"] = 555.1427001953125,
		["Width"] = 865.40478515625,
	},
}

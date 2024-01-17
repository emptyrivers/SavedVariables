
BugGrabberDB = {
	["lastSanitation"] = 3,
	["session"] = 4431,
	["errors"] = {
		{
			["message"] = "Cannot find a library instance of \"LibOpenRaid\".",
			["time"] = "2024/01/16 16:12:19",
			["locals"] = "(*temporary) = \"Cannot find a library instance of \"LibOpenRaid\".\"\n",
			["stack"] = "[string \"=[C]\"]: in function `error'\n[string \"@Interface/AddOns/AddonFactory/Libs/LibStub/LibStub.lua\"]:23: in function <...terface/AddOns/AddonFactory/Libs/LibStub/LibStub.lua:21>\n[string \"=(tail call)\"]: ?\n[string \"@Interface/SharedXML/Dump.lua\"]:396: in function `DevTools_DumpCommand'\n[string \"@Interface/FrameXML/ChatFrame.lua\"]:2461: in function `?'\n[string \"@Interface/FrameXML/ChatFrame.lua\"]:5291: in function <Interface/FrameXML/ChatFrame.lua:5237>\n[string \"=[C]\"]: in function `ChatEdit_ParseText'\n[string \"@Interface/FrameXML/ChatFrame.lua\"]:4948: in function `ChatEdit_SendText'\n[string \"@Interface/FrameXML/ChatFrame.lua\"]:4984: in function <Interface/FrameXML/ChatFrame.lua:4980>\n[string \"=[C]\"]: in function `ChatEdit_OnEnterPressed'\n[string \"*ChatFrame.xml:141_OnEnterPressed\"]:1: in function <[string \"*ChatFrame.xml:141_OnEnterPressed\"]:1>",
			["session"] = 4421,
			["counter"] = 1,
		}, -- [1]
		{
			["message"] = "bad argument #3 to '?' (outside of expected range 0 to 4294967295 - Usage: local outContinuationToken, (slots)* = C_UnitAuras.GetAuraSlots(unitToken [, filter, maxSlots, continuationToken]))",
			["time"] = "2024/01/16 16:08:30",
			["locals"] = "(*temporary) = \"bad argument #3 to '?' (outside of expected range 0 to 4294967295 - Usage: local outContinuationToken, (slots)* = C_UnitAuras.GetAuraSlots(unitToken [, filter, maxSlots, continuationToken]))\"\n",
			["stack"] = "[string \"=[C]\"]: in function `GetAuraSlots'\n[string \"@Interface/FrameXML/AuraUtil.lua\"]:83: in function `ForEachAura'\n[string \"@Interface/AddOns/Details/Libs/LibOpenRaid/GetPlayerInformation.lua\"]:746: in function <...ns/Details/Libs/LibOpenRaid/GetPlayerInformation.lua:728>\n[string \"@Interface/AddOns/Details/Libs/LibOpenRaid/GetPlayerInformation.lua\"]:776: in function `GetPlayerCooldownStatus'\n[string \"@Interface/AddOns/Details/Libs/LibOpenRaid/LibOpenRaid.lua\"]:2079: in function `functionToCallback'\n[string \"@Interface/AddOns/Details/Libs/LibOpenRaid/LibOpenRaid.lua\"]:826: in function `TriggerEvent'\n[string \"@Interface/AddOns/Details/Libs/LibOpenRaid/LibOpenRaid.lua\"]:878: in function <...face/AddOns/Details/Libs/LibOpenRaid/LibOpenRaid.lua:874>",
			["session"] = 4422,
			["counter"] = 7,
		}, -- [2]
		{
			["message"] = "Interface/AddOns/WeakAuras/Types.lua:656: attempt to concatenate local 'name' (a nil value)\n[string \"@Interface/AddOns/WeakAuras/Types.lua\"]:656: in function <Interface/AddOns/WeakAuras/Types.lua:654>\n[string \"@Interface/AddOns/WeakAuras/Types.lua\"]:697: in function `formatter'\n[string \"@Interface/AddOns/WeakAuras/WeakAuras.lua\"]:4645: in function <Interface/AddOns/WeakAuras/WeakAuras.lua:4613>\n[string \"@Interface/AddOns/WeakAuras/WeakAuras.lua\"]:4801: in function <Interface/AddOns/WeakAuras/WeakAuras.lua:4770>\n[string \"@Interface/AddOns/WeakAuras/WeakAuras.lua\"]:4825: in function `ReplacePlaceHolders'\n[string \"@Interface/AddOns/WeakAuras/SubRegionTypes/SubText.lua\"]:315: in function `?'\n[string \"@Interface/AddOns/WeakAuras/SubscribableObject.lua\"]:90: in function `Notify'\n[string \"@Interface/AddOns/WeakAuras/WeakAuras.lua\"]:4341: in function <Interface/AddOns/WeakAuras/WeakAuras.lua:4336>\n[string \"@Interface/AddOns/WeakAuras/WeakAuras.lua\"]:4432: in function <Interface/AddOns/WeakAuras/WeakAuras.lua:4394>\n[string \"@Interface/AddOns/WeakAuras/WeakAuras.lua\"]:4542: in function `UpdatedTriggerState'\n[string \"@Interface/AddOns/WeakAuras/WeakAuras.lua\"]:4270: in function `UpdateFakeStatesFor'\n[string \"@Interface/AddOns/WeakAuras/WeakAuras.lua\"]:4243: in function `FakeStatesFor'\n[string \"@Interface/AddOns/WeakAuras/WeakAuras.lua\"]:3037: in function <Interface/AddOns/WeakAuras/WeakAuras.lua:2892>\n[string \"@Interface/AddOns/WeakAuras/WeakAuras.lua\"]:3060: in function `Add'\n[string \"@Interface/AddOns/WeakAurasOptions/OptionsFrames/Update.lua\"]:2024: in function `ImportPhase1'\n[string \"@Interface/AddOns/WeakAurasOptions/OptionsFrames/Update.lua\"]:1638: in function `ImportImpl'\n[string \"@Interface/AddOns/WeakAurasOptions/OptionsFrames/Update.lua\"]:1607: in function <...ace/AddOns/WeakAurasOptions/OptionsFrames/Update.lua:1606>\n",
			["time"] = "2024/01/16 17:10:53",
			["locals"] = "",
			["stack"] = "",
			["session"] = 4425,
			["counter"] = 1,
		}, -- [3]
		{
			["message"] = "Interface/AddOns/WeakAuras/Types.lua:656: attempt to concatenate local 'name' (a nil value)",
			["time"] = "2024/01/16 17:11:59",
			["locals"] = "name = nil\nrealm = nil\n(*temporary) = nil\n(*temporary) = \"*\"\n(*temporary) = \"attempt to concatenate local 'name' (a nil value)\"\n",
			["stack"] = "[string \"@Interface/AddOns/WeakAuras/Types.lua\"]:656: in function <Interface/AddOns/WeakAuras/Types.lua:654>\n[string \"@Interface/AddOns/WeakAuras/Types.lua\"]:697: in function `formatter'\n[string \"@Interface/AddOns/WeakAuras/WeakAuras.lua\"]:4645: in function <Interface/AddOns/WeakAuras/WeakAuras.lua:4613>\n[string \"@Interface/AddOns/WeakAuras/WeakAuras.lua\"]:4801: in function <Interface/AddOns/WeakAuras/WeakAuras.lua:4770>\n[string \"@Interface/AddOns/WeakAuras/WeakAuras.lua\"]:4825: in function `ReplacePlaceHolders'\n[string \"@Interface/AddOns/WeakAuras/SubRegionTypes/SubText.lua\"]:315: in function `?'\n[string \"@Interface/AddOns/WeakAuras/SubscribableObject.lua\"]:90: in function `Notify'\n[string \"@Interface/AddOns/WeakAuras/WeakAuras.lua\"]:4341: in function <Interface/AddOns/WeakAuras/WeakAuras.lua:4336>\n[string \"@Interface/AddOns/WeakAuras/WeakAuras.lua\"]:4432: in function <Interface/AddOns/WeakAuras/WeakAuras.lua:4394>\n[string \"@Interface/AddOns/WeakAuras/WeakAuras.lua\"]:4542: in function `UpdatedTriggerState'\n[string \"@Interface/AddOns/WeakAuras/WeakAuras.lua\"]:4270: in function `UpdateFakeStatesFor'\n[string \"@Interface/AddOns/WeakAuras/WeakAuras.lua\"]:4243: in function `FakeStatesFor'\n[string \"@Interface/AddOns/WeakAurasOptions/AceGUI-Widgets/AceGUIWidget-WeakAurasDisplayButton.lua\"]:1444: in function `SyncVisibility'\n[string \"@Interface/AddOns/WeakAurasOptions/AceGUI-Widgets/AceGUIWidget-WeakAurasDisplayButton.lua\"]:1470: in function `PriorityShow'\n[string \"@Interface/AddOns/WeakAurasOptions/AceGUI-Widgets/AceGUIWidget-WeakAurasDisplayButton.lua\"]:1428: in function `Pick'\n[string \"@Interface/AddOns/WeakAurasOptions/OptionsFrames/OptionsFrame.lua\"]:1276: in function `PickDisplay'\n[string \"@Interface/AddOns/WeakAurasOptions/WeakAurasOptions.lua\"]:1225: in function `PickDisplay'\n[string \"@Interface/AddOns/WeakAurasOptions/AceGUI-Widgets/AceGUIWidget-WeakAurasDisplayButton.lua\"]:514: in function <...eGUI-Widgets/AceGUIWidget-WeakAurasDisplayButton.lua:465>",
			["session"] = 4429,
			["counter"] = 2,
		}, -- [4]
	},
}

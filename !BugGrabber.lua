
BugGrabberDB = {
	["lastSanitation"] = 3,
	["session"] = 4001,
	["errors"] = {
		{
			["message"] = "Lua error in aura 'Wild Imps Duration': Trigger 1\nWeakAuras Version: Dev\nAura Version: 1.0.11\n[string \"return function(allstates, event, ...)\"]:106: attempt to index local 'state' (a nil value)",
			["time"] = "2024/01/03 13:10:26",
			["locals"] = "allstates = <table> {\n Creature-0-4232-2548-5944-55659-000015B0FC = <table> {\n }\n Creature-0-4232-2548-5944-143622-000015B11E = <table> {\n }\n Creature-0-4232-2548-5944-55659-000095B0FC = <table> {\n }\n Creature-0-4232-2548-5944-143622-000015B112 = <table> {\n }\n Creature-0-4232-2548-5944-55659-000095B0FA = <table> {\n }\n Creature-0-4232-2548-5944-55659-000015B0FA = <table> {\n }\n Creature-0-4232-2548-5944-55659-000115B0FC = <table> {\n }\n}\nevent = \"COMBAT_LOG_EVENT_UNFILTERED\"\nsubevent = \"SPELL_AURA_APPLIED\"\nsourceGUID = \"Player-75-0EEA1695\"\ndestGUID = \"Creature-0-4232-2548-5944-55659-000195B0F9\"\nspellid = 387458\nstate = nil\n(*temporary) = 1704309025.699000\n(*temporary) = \"SPELL_AURA_APPLIED\"\n(*temporary) = false\n(*temporary) = \"Player-75-0EEA1695\"\n(*temporary) = \"Riparium\"\n(*temporary) = \"attempt to index local 'state' (a nil value)\"\n",
			["stack"] = "[string \"return function(allstates, event, ...)\"]:106: in function <[string \"return function(allstates, event, ...)\"]:1>\n[string \"=[C]\"]: in function `xpcall'\n[string \"@Interface/AddOns/WeakAuras/GenericTrigger.lua\"]:638: in function <Interface/AddOns/WeakAuras/GenericTrigger.lua:623>\n[string \"@Interface/AddOns/WeakAuras/GenericTrigger.lua\"]:863: in function `ScanEventsInternal'\n[string \"@Interface/AddOns/WeakAuras/GenericTrigger.lua\"]:808: in function `ScanEvents'\n[string \"@Interface/AddOns/WeakAuras/GenericTrigger.lua\"]:1057: in function <Interface/AddOns/WeakAuras/GenericTrigger.lua:1047>",
			["session"] = 3999,
			["counter"] = 2,
		}, -- [1]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'WeakAuras' tried to call the protected function 'oldSetFrameLevel()'.",
			["time"] = "2024/01/03 03:22:27",
			["locals"] = "_ = Frame {\n RegisterEvent = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:487\n 0 = <userdata>\n UnregisterEvent = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:487\n SetScript = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:487\n}\nevent = \"ADDON_ACTION_BLOCKED\"\nevents = <table> {\n ADDON_ACTION_BLOCKED = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:553\n ADDON_ACTION_FORBIDDEN = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:553\n PLAYER_LOGIN = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:547\n LUA_WARNING = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:562\n ADDON_LOADED = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:507\n}\n",
			["stack"] = "[string \"@Interface/AddOns/!BugGrabber/BugGrabber.lua\"]:481: in function <Interface/AddOns/!BugGrabber/BugGrabber.lua:481>\n[string \"=[C]\"]: ?\n[string \"@Interface/AddOns/WeakAuras/RegionTypes/Group.lua\"]:43: in function `SetFrameLevel'\n[string \"@Interface/AddOns/Paste/libs/LibStrataFix-10034/LibStrataFix.lua\"]:71: in function <...face/AddOns/Paste/libs/LibStrataFix/LibStrataFix.lua:58>\n[string \"@Interface/AddOns/Paste/libs/LibStrataFix-10034/LibStrataFix.lua\"]:81: in function <...face/AddOns/Paste/libs/LibStrataFix/LibStrataFix.lua:76>\n[string \"@Interface/AddOns/Paste/libs/LibStrataFix-10034/LibStrataFix.lua\"]:158: in function <...face/AddOns/Paste/libs/LibStrataFix/LibStrataFix.lua:151>\n[string \"=(tail call)\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: in function `xpcall'\n[string \"@Interface/AddOns/WeakAuras/WeakAuras.lua\"]:5561: in function `AnchorFrame'\n[string \"@Interface/AddOns/WeakAuras/WeakAuras.lua\"]:5417: in function `func'\n[string \"@Interface/AddOns/ElvUI_Libraries/Core/Ace3/AceTimer-3.0-17/AceTimer-3.0.lua\"]:57: in function <...UI_Libraries/Core/Ace3/AceTimer-3.0/AceTimer-3.0.lua:50>",
			["session"] = 4000,
			["counter"] = 3,
		}, -- [2]
	},
}

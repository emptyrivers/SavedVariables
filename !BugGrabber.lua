
BugGrabberDB = {
	["lastSanitation"] = 3,
	["session"] = 3737,
	["errors"] = {
		{
			["message"] = "Lua error in aura 'goals': Trigger 1\nWeakAuras Version: Dev\nAura Version: 1.0.1\n[string \"return function() local pref = \"prof\"\"]:52: bad argument #1 to 'ipairs' (table expected, got nil)",
			["time"] = "2023/12/23 15:05:46",
			["locals"] = "(*temporary) = nil\n(*temporary) = \"table expected, got nil\"\n = <function> defined =[C]:-1\n",
			["stack"] = "[string \"=[C]\"]: in function `ipairs'\n[string \"return function() local pref = \"prof\"\"]:52: in function `dataToState'\n[string \"return function(states, event, ...) \"]:5: in function <[string \"return function(states, event, ...) \"]:1>\n[string \"=[C]\"]: in function `xpcall'\n[string \"@Interface/AddOns/WeakAuras/GenericTrigger.lua\"]:638: in function <Interface/AddOns/WeakAuras/GenericTrigger.lua:623>\n[string \"@Interface/AddOns/WeakAuras/GenericTrigger.lua\"]:991: in function `CreateFakeStates'\n[string \"@Interface/AddOns/WeakAuras/WeakAuras.lua\"]:4266: in function `UpdateFakeStatesFor'\n[string \"@Interface/AddOns/WeakAuras/WeakAuras.lua\"]:4242: in function `FakeStatesFor'\n[string \"@Interface/AddOns/WeakAuras/WeakAuras.lua\"]:3036: in function <Interface/AddOns/WeakAuras/WeakAuras.lua:2891>\n[string \"@Interface/AddOns/WeakAuras/WeakAuras.lua\"]:3059: in function `Add'\n[string \"@Interface/AddOns/WeakAurasOptions/OptionsFrames/TextEditor.lua\"]:763: in function `Close'\n[string \"@Interface/AddOns/WeakAurasOptions/OptionsFrames/TextEditor.lua\"]:513: in function <...AddOns/WeakAurasOptions/OptionsFrames/TextEditor.lua:511>",
			["session"] = 3734,
			["counter"] = 1,
		}, -- [1]
		{
			["message"] = "Lua error in aura 'goals': init\nWeakAuras Version: Dev\nAura Version: 1.0.1\n[string \"return function() local pref = \"prof\"\"]:20: attempt to get length of field '?' (a nil value)",
			["time"] = "2023/12/23 15:07:09",
			["locals"] = "pref = \"prof\"\ngoals = <table> {\n 2503 = <table> {\n }\n 2511 = <table> {\n }\n 2510 = <table> {\n }\n 2507 = <table> {\n }\n}\n(for generator) = <function> defined =[C]:-1\n(for state) = <table> {\n 1 = 2503\n 2 = 2507\n 3 = 2510\n 4 = 2511\n 5 = 2564\n 6 = 2574\n}\n(for control) = 5\n_ = 5\nid = 2564\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = 0\n(*temporary) = <table> {\n}\n(*temporary) = 0\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = 0\n(*temporary) = 1\n(*temporary) = nil\n(*temporary) = \"attempt to get length of field '?' (a nil value)\"\n",
			["stack"] = "[string \"return function() local pref = \"prof\"\"]:20: in function <[string \"return function() local pref = \"prof\"\"]:1>\n[string \"=[C]\"]: in function `xpcall'\n[string \"@Interface/AddOns/WeakAuras/AuraEnvironment.lua\"]:359: in function `ActivateAuraEnvironment'\n[string \"@Interface/AddOns/WeakAuras/GenericTrigger.lua\"]:977: in function `CreateFakeStates'\n[string \"@Interface/AddOns/WeakAuras/WeakAuras.lua\"]:4266: in function `UpdateFakeStatesFor'\n[string \"@Interface/AddOns/WeakAuras/WeakAuras.lua\"]:4242: in function `FakeStatesFor'\n[string \"@Interface/AddOns/WeakAuras/WeakAuras.lua\"]:3036: in function <Interface/AddOns/WeakAuras/WeakAuras.lua:2891>\n[string \"@Interface/AddOns/WeakAuras/WeakAuras.lua\"]:3059: in function `Add'\n[string \"@Interface/AddOns/WeakAurasOptions/OptionsFrames/Update.lua\"]:1905: in function `UpdatePhase1'\n[string \"@Interface/AddOns/WeakAurasOptions/OptionsFrames/Update.lua\"]:1913: in function `UpdatePhase1'\n[string \"@Interface/AddOns/WeakAurasOptions/OptionsFrames/Update.lua\"]:1700: in function `ImportImpl'\n[string \"@Interface/AddOns/WeakAurasOptions/OptionsFrames/Update.lua\"]:1546: in function <...ace/AddOns/WeakAurasOptions/OptionsFrames/Update.lua:1545>",
			["session"] = 3734,
			["counter"] = 2,
		}, -- [2]
		{
			["message"] = "Lua error in aura 'goals': Trigger 1\nWeakAuras Version: Dev\nAura Version: 1.0.1\n[string \"return function(states, event, ...) \"]:5: attempt to call field 'dataToState' (a nil value)",
			["time"] = "2023/12/23 15:07:01",
			["locals"] = "states = <table> {\n}\nevent = \"OPTIONS\"\nupdate = nil\n(for generator) = <function> defined =[C]:-1\n(for state) = <table> {\n 1 = 2503\n 2 = 2507\n 3 = 2510\n 4 = 2511\n 5 = 2564\n 6 = 2574\n}\n(for control) = 1\n_ = 1\nid = 2503\n(*temporary) = nil\n(*temporary) = 2503\n(*temporary) = nil\n(*temporary) = \"attempt to call field 'dataToState' (a nil value)\"\n",
			["stack"] = "[string \"return function(states, event, ...) \"]:5: in function <[string \"return function(states, event, ...) \"]:1>\n[string \"=[C]\"]: in function `xpcall'\n[string \"@Interface/AddOns/WeakAuras/GenericTrigger.lua\"]:638: in function <Interface/AddOns/WeakAuras/GenericTrigger.lua:623>\n[string \"@Interface/AddOns/WeakAuras/GenericTrigger.lua\"]:991: in function `CreateFakeStates'\n[string \"@Interface/AddOns/WeakAuras/WeakAuras.lua\"]:4266: in function `UpdateFakeStatesFor'\n[string \"@Interface/AddOns/WeakAuras/WeakAuras.lua\"]:4242: in function `FakeStatesFor'\n[string \"@Interface/AddOns/WeakAuras/WeakAuras.lua\"]:3036: in function <Interface/AddOns/WeakAuras/WeakAuras.lua:2891>\n[string \"@Interface/AddOns/WeakAuras/WeakAuras.lua\"]:3059: in function `Add'\n[string \"@Interface/AddOns/WeakAurasOptions/OptionsFrames/TextEditor.lua\"]:763: in function `Close'\n[string \"@Interface/AddOns/WeakAurasOptions/OptionsFrames/TextEditor.lua\"]:208: in function <...AddOns/WeakAurasOptions/OptionsFrames/TextEditor.lua:207>",
			["session"] = 3734,
			["counter"] = 6,
		}, -- [3]
		{
			["message"] = "Lua error in aura 'goals': Trigger 1\nWeakAuras Version: Dev\nAura Version: 1.0.1\nUsage: local data = C_MajorFactions.GetMajorFactionData(majorFactionID)",
			["time"] = "2023/12/23 16:26:29",
			["locals"] = "(*temporary) = \"Usage: local data = C_MajorFactions.GetMajorFactionData(majorFactionID)\"\n",
			["stack"] = "[string \"=[C]\"]: in function `GetMajorFactionData'\n[string \"return function() local pref = \"prof\"\"]:56: in function `dataToState'\n[string \"return function(states, event, ...) \"]:14: in function <[string \"return function(states, event, ...) \"]:1>\n[string \"=[C]\"]: in function `xpcall'\n[string \"@Interface/AddOns/WeakAuras/GenericTrigger.lua\"]:638: in function <Interface/AddOns/WeakAuras/GenericTrigger.lua:623>\n[string \"@Interface/AddOns/WeakAuras/GenericTrigger.lua\"]:863: in function `ScanEventsInternal'\n[string \"@Interface/AddOns/WeakAuras/GenericTrigger.lua\"]:817: in function `ScanEvents'\n[string \"@Interface/AddOns/WeakAuras/GenericTrigger.lua\"]:1062: in function <Interface/AddOns/WeakAuras/GenericTrigger.lua:1047>",
			["session"] = 3735,
			["counter"] = 1,
		}, -- [4]
	},
}

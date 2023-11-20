
BugGrabberDB = {
	["session"] = 3380,
	["lastSanitation"] = 3,
	["errors"] = {
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'Immersion' tried to call the protected function 'ImmersionFrame:SetPropagateKeyboardInput()'.",
			["time"] = "2023/11/20 14:45:29",
			["locals"] = "_ = Frame {\n RegisterEvent = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:487\n 0 = <userdata>\n UnregisterEvent = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:487\n SetScript = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:487\n}\nevent = \"ADDON_ACTION_BLOCKED\"\nevents = <table> {\n ADDON_ACTION_BLOCKED = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:553\n ADDON_ACTION_FORBIDDEN = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:553\n PLAYER_LOGIN = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:547\n LUA_WARNING = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:562\n ADDON_LOADED = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:507\n}\n",
			["stack"] = "[string \"@Interface/AddOns/!BugGrabber/BugGrabber.lua\"]:481: in function <Interface/AddOns/!BugGrabber/BugGrabber.lua:481>\n[string \"=[C]\"]: in function `SetPropagateKeyboardInput'\n[string \"@Interface/AddOns/Immersion/Logic/Frame.lua\"]:431: in function <Interface/AddOns/Immersion/Logic/Frame.lua:406>",
			["session"] = 3380,
			["counter"] = 1,
		}, -- [1]
	},
}

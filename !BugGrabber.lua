
BugGrabberDB = {
	["session"] = 3744,
	["lastSanitation"] = 3,
	["errors"] = {
		{
			["message"] = "Interface\\AddOns\\WeakAuras\\WeakAuras-@project-version@.lua:4203: bad argument #1 to 'pairs' (table expected, got boolean)",
			["time"] = "2018/09/15 15:58:40",
			["locals"] = "(*temporary) = false\n(*temporary) = \"table expected, got boolean\"\n = <function> defined =[C]:-1\n",
			["stack"] = "[C]: in function `pairs'\nInterface\\AddOns\\WeakAuras\\WeakAuras-@project-version@.lua:4203: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:4201>\nInterface\\AddOns\\WeakAuras\\WeakAuras-@project-version@.lua:4295: in function `UpdatedTriggerState'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:640: in function `ScanEventsInternal'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:622: in function `ScanEvents'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:682: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:673>",
			["session"] = 3737,
			["counter"] = 3,
		}, -- [1]
		{
			["message"] = "[ADDON_ACTION_FORBIDDEN] AddOn 'DialogKey' tried to call the protected function 'ForceQuit()'.",
			["time"] = "2018/09/15 17:15:33",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `ForceQuit'\nInterface\\FrameXML\\StaticPopup.lua:1850: in function `OnAccept'\nInterface\\FrameXML\\StaticPopup.lua:4973: in function `StaticPopup_OnClick'\n[string \"*:OnClick\"]:1: in function <[string \"*:OnClick\"]:1>\n[C]: in function `Click'\nInterface\\AddOns\\DialogKey\\core.lua:794: in function `ClickButton'\nInterface\\AddOns\\DialogKey\\core.lua:733: in function `ClickButtons'\nInterface\\AddOns\\DialogKey\\core.lua:683: in function <Interface\\AddOns\\DialogKey\\core.lua:630>",
			["session"] = 3738,
			["counter"] = 1,
		}, -- [2]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'Ace3' tried to call the protected function 'PetActionButton8:Show()'.",
			["time"] = "2018/09/18 12:40:23",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `Show'\nInterface\\FrameXML\\PetActionBarFrame.lua:199: in function `PetActionBar_Update'\nInterface\\FrameXML\\SpellBookFrame.lua:518: in function <Interface\\FrameXML\\SpellBookFrame.lua:512>",
			["session"] = 3742,
			["counter"] = 1,
		}, -- [3]
	},
}

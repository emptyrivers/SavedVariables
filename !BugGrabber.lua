
BugGrabberDB = {
	["session"] = 3710,
	["lastSanitation"] = 3,
	["errors"] = {
		{
			["message"] = "[string \"CreateFrame(\"frame\"):RegisterEvent(\"PLAYER_...\"]:1: Attempt to register unknown event \"PLAYER_AURAS_CHANGED\"",
			["time"] = "2018/09/05 22:43:25",
			["locals"] = "(*temporary) = <unnamed> {\n 0 = <userdata>\n}\n(*temporary) = \"PLAYER_AURAS_CHANGED\"\n",
			["stack"] = "[C]: in function `RegisterEvent'\n[string \"CreateFrame(\"frame\"):RegisterEvent(\"PLAYER_...\"]:1: in main chunk\n[C]: in function `RunScript'\nInterface\\FrameXML\\ChatFrame.lua:2158: in function `?'\nInterface\\FrameXML\\ChatFrame.lua:4734: in function `ChatEdit_ParseText'\nInterface\\FrameXML\\ChatFrame.lua:4396: in function `ChatEdit_SendText'\nInterface\\FrameXML\\ChatFrame.lua:4432: in function <Interface\\FrameXML\\ChatFrame.lua:4428>\n[C]: in function `ChatEdit_OnEnterPressed'\n[string \"*:OnEnterPressed\"]:1: in function <[string \"*:OnEnterPressed\"]:1>",
			["session"] = 3709,
			["counter"] = 1,
		}, -- [1]
		{
			["message"] = "[ADDON_ACTION_FORBIDDEN] AddOn 'GatherMate2' tried to call the protected function 'RedeemTicket()'.",
			["time"] = "2018/09/05 23:57:45",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `RedeemTicket'\n...\\Blizzard_Communities\\CommunitiesInvitationFrame.lua:162: in function `AcceptTicket'\n[string \"*:OnLoad\"]:1: in function <[string \"*:OnLoad\"]:1>",
			["session"] = 3709,
			["counter"] = 1,
		}, -- [2]
	},
}

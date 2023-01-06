
BugGrabberDB = {
	["session"] = 1896,
	["lastSanitation"] = 3,
	["errors"] = {
		{
			["message"] = "[string \"return UnitPowerMax()\"]:1: Usage: local maxPower = UnitPowerMax(unitToken [, powerType, unmodified])",
			["time"] = "2023/01/02 14:31:56",
			["locals"] = "",
			["stack"] = "[string \"=[C]\"]: in function `UnitPowerMax'\n[string \"return UnitPowerMax()\"]:1: in function `func'\n[string \"@Interface/SharedXML/Dump.lua\"]:397: in function `DevTools_DumpCommand'\n[string \"@Interface/FrameXML/ChatFrame.lua\"]:2427: in function `?'\n[string \"@Interface/FrameXML/ChatFrame.lua\"]:5224: in function `ChatEdit_ParseText'\n[string \"@Interface/FrameXML/ChatFrame.lua\"]:4888: in function `ChatEdit_SendText'\n[string \"@Interface/FrameXML/ChatFrame.lua\"]:4924: in function <Interface/FrameXML/ChatFrame.lua:4920>\n[string \"=[C]\"]: in function `ChatEdit_OnEnterPressed'\n[string \"*ChatFrame.xml:127_OnEnterPressed\"]:1: in function <[string \"*ChatFrame.xml:127_OnEnterPressed\"]:1>",
			["session"] = 1829,
			["counter"] = 1,
		}, -- [1]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'ElvUI_Libraries' tried to call the protected function 'CreateListing()'.",
			["time"] = "2023/01/03 14:30:37",
			["stack"] = "[string \"@Interface/AddOns/!BugGrabber/BugGrabber.lua\"]:480: in function <Interface/AddOns/!BugGrabber/BugGrabber.lua:480>\n[string \"=[C]\"]: in function `CreateListing'\n[string \"@Interface/FrameXML/LFGList.lua\"]:1056: in function `LFGListEntryCreation_ListGroupInternal'\n[string \"@Interface/FrameXML/LFGList.lua\"]:1118: in function `LFGListEntryCreation_CheckAutoCreate'\n[string \"@Interface/FrameXML/LFGList.lua\"]:659: in function `LFGListEntryCreation_Show'\n[string \"@Interface/FrameXML/LFGList.lua\"]:2119: in function <Interface/FrameXML/LFGList.lua:2116>",
			["session"] = 1845,
			["counter"] = 1,
		}, -- [2]
		{
			["message"] = "ElvUI_ReputationBar:SetShown(): C_Timer.After requires a non-negative duration",
			["time"] = "2023/01/03 17:25:07",
			["locals"] = "(*temporary) = ElvUI_ReputationBar {\n 0 = <userdata>\n PixelSnapDisabled = true\n text = FontString {\n }\n holder = ElvUI_ReputationBarHolder {\n }\n enhshadow = Frame {\n }\n barTexture = Texture {\n }\n ShouldHide = <function> defined @Interface/AddOns/ElvUI/Core/Modules/DataBars/Reputation.lua:199\n db = <table> {\n }\n bubbles = <table> {\n }\n Update = <function> defined @Interface/AddOns/ElvUI/Core/Modules/DataBars/Reputation.lua:35\n Reward = Texture {\n }\n}\n(*temporary) = false\n",
			["stack"] = "[string \"=[C]\"]: in function `SetShown'\n[string \"@Interface/AddOns/ElvUI/Core/Modules/DataBars/DataBars.lua\"]:158: in function `SetVisibility'\n[string \"@Interface/AddOns/ElvUI/Core/Modules/DataBars/Reputation.lua\"]:37: in function <...ce/AddOns/ElvUI/Core/Modules/DataBars/Reputation.lua:35>\n[string \"=[C]\"]: in function `?'\n[string \"@Interface/AddOns/ElvUI_Libraries/Core/CallbackHandler-1.0-8/CallbackHandler-1.0.lua\"]:109: in function <...ies/Core/CallbackHandler-1.0/CallbackHandler-1.0.lua:109>\n[string \"=[C]\"]: ?\n[string \"@Interface/AddOns/ElvUI_Libraries/Core/CallbackHandler-1.0-8/CallbackHandler-1.0.lua\"]:19: in function <...ies/Core/CallbackHandler-1.0/CallbackHandler-1.0.lua:15>\n[string \"@Interface/AddOns/ElvUI_Libraries/Core/CallbackHandler-1.0-8/CallbackHandler-1.0.lua\"]:54: in function `Fire'\n[string \"@Interface/AddOns/ElvUI_Libraries/Core/Ace3/AceEvent-3.0-4/AceEvent-3.0.lua\"]:120: in function <...UI_Libraries/Core/Ace3/AceEvent-3.0/AceEvent-3.0.lua:119>",
			["session"] = 1848,
			["counter"] = 3,
		}, -- [3]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'ElvUI' tried to call the protected function 'PrimaryProfession2SpellButtonBottom:Show()'.",
			["time"] = "2023/01/04 00:21:58",
			["stack"] = "[string \"@Interface/AddOns/!BugGrabber/BugGrabber.lua\"]:480: in function <Interface/AddOns/!BugGrabber/BugGrabber.lua:480>\n[string \"=[C]\"]: in function `Show'\n[string \"@Interface/FrameXML/SpellBookFrame.lua\"]:1550: in function <Interface/FrameXML/SpellBookFrame.lua:1471>\n[string \"=[C]\"]: in function `FormatProfession'\n[string \"@Interface/FrameXML/SpellBookFrame.lua\"]:1593: in function `SpellBook_UpdateProfTab'\n[string \"@Interface/FrameXML/SpellBookFrame.lua\"]:163: in function <Interface/FrameXML/SpellBookFrame.lua:142>",
			["session"] = 1856,
			["counter"] = 1,
		}, -- [4]
		{
			["message"] = "Interface/SharedXML/ScriptAnimationUtil.lua:54: attempt to perform arithmetic on upvalue 'x' (a nil value)",
			["time"] = "2023/01/04 00:37:32",
			["locals"] = "xVariation = 0\nyVariation = -7\n(*temporary) = <function> defined =[C]:-1\n(*temporary) = ProfessionsFrame {\n 0 = <userdata>\n tabSystem = Frame {\n }\n GetTabButton = <function> defined @Interface/SharedXML/TabSystem/TabSystemOwner.lua:85\n GetProfessionInfo = <function> defined @Interface/AddOns/Blizzard_Professions/Blizzard_ProfessionsFrame.lua:149\n OnBackdropLoaded = <function> defined @Interface/SharedXML/Backdrop.lua:152\n SetProfessionInfo = <function> defined @Interface/AddOns/Blizzard_Professions/Blizzard_ProfessionsFrame.lua:124\n GetBackdropColor = <function> defined @Interface/SharedXML/Backdrop.lua:390\n internalTabTracker = <table> {\n }\n GetTitleText = <function> defined @Interface/SharedXML/PortraitFrame.lua:28\n SetPortraitTexCoord = <function> defined @Interface/SharedXML/PortraitFrame.lua:87\n OnShow = <function> defined @Interface/AddOns/Blizzard_Professions/Blizzard_ProfessionsFrame.lua:355\n GetTab = <function> defined @Interface/SharedXML/TabSystem/TabSystemOwner.lua:73\n TitleContainer = Frame {\n }\n ClearBackdrop = <function> defined @Interface/SharedXML/Backdrop.lua:282\n GetTabSet = <function> defined @Interface/SharedXML/TabSystem/TabSystemOwner.lua:77\n craftingOrdersFilters = <table> {\n }\n SetTitle = <function> defined @Interface/AddOns/Blizzard_Professions/Blizzard_ProfessionsFrame.lua:136\n SetTab = <function> defined @Interface/AddOns/Blizzard_Professions/Blizzard_ProfessionsFrame.lua:262\n isCraftingOrdersTabEnabled = false\n GetElementsForTab = <function> defined @Interface/SharedXML/TabSystem/TabSystemOwner.lua:81\n TabSystem = Frame {\n }\n AddElementToTab = <function> defined @Interface/SharedXML/TabSystem/TabSystemOwner.lua:21\n PixelSnapDisabled = true\n recipesTabID = 1\n SetupTextureCoordinates = <function> defined @Interface/SharedXML/Backdrop.lua:214\n SetPortraitAtlasRaw = <function> defined @Interface/SharedXML/PortraitFrame.lua:83\n HasBackdropInfo = <function> defined @Interface/SharedXML/Backdrop.lua:278\n OrdersPage = Frame {\n }\n Bg = ProfessionsFrameBg {\n }\n SetTitleFormatted = <function> defined @Interface/SharedXML/PortraitFrame.lua:40\n NineSlice = Frame {\n }\n OnLoad = <function> defined @Interface/AddOns/Blizzard_Professions/Blizzard_ProfessionsFrame.lua:39\n TopEdge = Texture {\n }\n SetPortraitTextureSizeAndOffset = <function> defined @Interface/SharedXML/PortraitFrame.lua:95\n BottomRightCorner = Texture {\n }\n SetBackdropColor = <function> defined @Interface/SharedXML/Backdrop.lua:399\n LeftEdge = Texture {\n }\n timeSinceLastFocusCheck = 0.110000\n shakeTicker = <userdata>\n scriptedAnimatedAnchorLock = true\n SetTabSystem = <function> defined @Interface/SharedXML/TabSystem/TabSystemOwner.lua:56\n changingTabs = false\n unspentPointsHelpTipInfo = true\n unspentPointsHelptipAcknowledged = true\n SetPortraitShown = <function> defined @Interface/SharedXML/PortraitFrame.lua:91\n unlockSpecHelptipAcknowledged = true\n recipesFilters = <table> {\n }\n currentPageWidth = 1144\n IsMoving = false\n SetBackdropBorderColor = <function> defined @Interface/SharedXML/Backdrop.lua:422\n OnUpdate = <function> defined @Interface/AddOns/Blizzard_Professions/Blizzard_ProfessionsFrame.lua:382\n CloseButton = Button {\n }\n SetPortraitTextureRaw = <function> defined @Interface/SharedXML/PortraitFrame.lua:79\n RightEdge = Texture {\n }\n template = \"Transparent\"\n SetPoint = <function> defined =[C]:-1\n Center = Texture {\n }\n ApplyBackdrop = <function> defined @Interface/SharedXML/Backdrop.lua:294\n SetBackdrop = <function> defined @Interface/SharedXML/Backdrop.lua:329\n SetTitleMaxLinesAndHeight = <function> defined @Interface/SharedXML/PortraitFrame.lua:49\n SetTitleColor = <function> defined @Interface/SharedXML/PortraitFrame.lua:32\n GetBackdropBorderColor = <function> defined @Interface/SharedXML/Backdrop.lua:409\n GetBackdrop = <function> defined @Interface/SharedXML/Backdrop.lua:347\n professionInfo = <table> {\n }\n BottomEdge = Texture {\n }\n DefaultPortraitTextureSizeAndOffset = <function> defined @Interface/SharedXML/PortraitFrame.lua:101\n BottomLeftCorner = Texture {\n }\n AddNamedTab = <function> defined @Interface/SharedXML/TabSystem/TabS",
			["stack"] = "[string \"@Interface/SharedXML/ScriptAnimationUtil.lua\"]:54: in function <Interface/SharedXML/ScriptAnimationUtil.lua:52>",
			["session"] = 1856,
			["counter"] = 61,
		}, -- [5]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'ElvUI' tried to call the protected function 'PrimaryProfession2SpellButtonTop:Hide()'.",
			["time"] = "2023/01/05 16:57:16",
			["stack"] = "[string \"@Interface/AddOns/!BugGrabber/BugGrabber.lua\"]:480: in function <Interface/AddOns/!BugGrabber/BugGrabber.lua:480>\n[string \"=[C]\"]: in function `Hide'\n[string \"@Interface/FrameXML/SpellBookFrame.lua\"]:1545: in function <Interface/FrameXML/SpellBookFrame.lua:1471>\n[string \"=[C]\"]: in function `FormatProfession'\n[string \"@Interface/FrameXML/SpellBookFrame.lua\"]:1593: in function `SpellBook_UpdateProfTab'\n[string \"@Interface/FrameXML/SpellBookFrame.lua\"]:163: in function <Interface/FrameXML/SpellBookFrame.lua:142>",
			["session"] = 1869,
			["counter"] = 1,
		}, -- [6]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'ElvUI' tried to call the protected function 'UNKNOWN()'.",
			["time"] = "2023/01/05 19:14:27",
			["stack"] = "[string \"@Interface/AddOns/!BugGrabber/BugGrabber.lua\"]:480: in function <Interface/AddOns/!BugGrabber/BugGrabber.lua:480>\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: in function `CraftRecipe'\n[string \"@Interface/AddOns/Blizzard_Professions/Blizzard_ProfessionsCrafting.lua\"]:785: in function <...lizzard_Professions/Blizzard_ProfessionsCrafting.lua:784>\n[string \"@Interface/AddOns/Blizzard_Professions/Blizzard_ProfessionsCrafting.lua\"]:844: in function `craftingCallback'\n[string \"@Interface/AddOns/Blizzard_Professions/Blizzard_ProfessionsCrafting.lua\"]:729: in function `ContinueCrafting'\n[string \"@Interface/AddOns/Blizzard_Professions/Blizzard_ProfessionsCrafting.lua\"]:128: in function <...lizzard_Professions/Blizzard_ProfessionsCrafting.lua:120>",
			["session"] = 1882,
			["counter"] = 1,
		}, -- [7]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'ElvUI' tried to call the protected function 'GetPlaystyleString()'.",
			["time"] = "2023/01/03 14:11:11",
			["stack"] = "[string \"@Interface/AddOns/!BugGrabber/BugGrabber.lua\"]:480: in function <Interface/AddOns/!BugGrabber/BugGrabber.lua:480>\n[string \"=[C]\"]: in function `GetPlaystyleString'\n[string \"@Interface/FrameXML/LFGList.lua\"]:3522: in function `LFGListUtil_SetSearchEntryTooltip'\n[string \"@Interface/FrameXML/LFGList.lua\"]:2597: in function <Interface/FrameXML/LFGList.lua:2594>",
			["session"] = 1895,
			["counter"] = 2,
		}, -- [8]
	},
}

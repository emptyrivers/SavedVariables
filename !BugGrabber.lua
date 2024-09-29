
BugGrabberDB = {
["lastSanitation"] = 3,
["session"] = 7885,
["errors"] = {
{
["message"] = "Error loading WTF/Account/82914180#1/SavedVariables/!!!Perfy.lua: constant table overflow",
["session"] = 7858,
["time"] = "2024/09/27 12:18:36",
["counter"] = 8,
},
{
["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'AngrierWorldQuests' tried to call the protected function 'Button:SetPassThroughButtons()'.",
["time"] = "2024/09/27 16:50:34",
["locals"] = "_ = Frame {\n}\nevent = \"ADDON_ACTION_BLOCKED\"\nevents = <table> {\n}\n",
["stack"] = "[string \"@Interface/AddOns/!BugGrabber/BugGrabber.lua\"]:485: in function <Interface/AddOns/!BugGrabber/BugGrabber.lua:485>\n[string \"=[C]\"]: in function `SetPassThroughButtons'\n[string \"@Interface/AddOns/Blizzard_MapCanvas/MapCanvas_DataProviderBase.lua\"]:224: in function `CheckMouseButtonPassthrough'\n[string \"@Interface/AddOns/Blizzard_MapCanvas/Blizzard_MapCanvas.lua\"]:209: in function `AcquirePin'\n[string \"@Interface/AddOns/Blizzard_SharedMapDataProviders/BonusObjectiveDataProvider.lua\"]:97: in function <...haredMapDataProviders/BonusObjectiveDataProvider.lua:92>\n[string \"=[C]\"]: in function `xpcall'\n[string \"@Interface/AddOns/Blizzard_ObjectAPI/Mainline/AsyncCallbackSystem.lua\"]:76: in function `FireCallbacks'\n[string \"@Interface/AddOns/Blizzard_ObjectAPI/Mainline/AsyncCallbackSystem.lua\"]:35: in function <.../Blizzard_ObjectAPI/Mainline/AsyncCallbackSystem.lua:31>\n[string \"=[C]\"]: in function `accessor'\n[string \"@Interface/AddOns/Blizzard_ObjectAPI/Mainline/AsyncCallbackSystem.lua\"]:52: in function `AddCallback'\n[string \"@Interface/AddOns/Blizzard_ObjectAPI/Mainline/AsyncCallbackSystem.lua\"]:60: in function `AddCancelableCallback'\n[string \"@Interface/AddOns/Blizzard_SharedMapDataProviders/BonusObjectiveDataProvider.lua\"]:92: in function `RefreshAllData'\n[string \"@Interface/AddOns/Blizzard_SharedMapDataProviders/BonusObjectiveDataProvider.lua\"]:65: in function `OnEvent'\n[string \"@Interface/AddOns/Blizzard_MapCanvas/MapCanvas_DataProviderBase.lua\"]:99: in function `SignalEvent'\n[string \"@Interface/AddOns/Blizzard_MapCanvas/Blizzard_MapCanvas.lua\"]:106: in function <...ace/AddOns/Blizzard_MapCanvas/Blizzard_MapCanvas.lua:105>\n[string \"=[C]\"]: in function `secureexecuterange'\n[string \"@Interface/AddOns/Blizzard_MapCanvas/Blizzard_MapCanvas.lua\"]:109: in function `OnEvent'\n[string \"@Interface/AddOns/Blizzard_WorldMap/Blizzard_WorldMap.lua\"]:148: in function <...rface/AddOns/Blizzard_WorldMap/Blizzard_WorldMap.lua:147>",
["session"] = 7875,
["counter"] = 6,
},
{
["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'TalentLoadoutManager' tried to call the protected function 'PlayerSpellsFrame:SetPoint()'.",
["time"] = "2024/09/27 16:42:32",
["locals"] = "_ = Frame {\n}\nevent = \"ADDON_ACTION_BLOCKED\"\nevents = <table> {\n}\n",
["stack"] = "[string \"@Interface/AddOns/!BugGrabber/BugGrabber.lua\"]:485: in function <Interface/AddOns/!BugGrabber/BugGrabber.lua:485>\n[string \"=[C]\"]: in function `SetPoint'\n[string \"@Interface/AddOns/TalentLoadoutManager/modules/SideBarMixin.lua\"]:239: in function `UpdatePosition'\n[string \"@Interface/AddOns/TalentLoadoutManager/modules/SideBarMixin.lua\"]:204: in function <...AddOns/TalentLoadoutManager/modules/SideBarMixin.lua:202>\n[string \"=(tail call)\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: in function `Show'\n[string \"@Interface/AddOns/Blizzard_UIParentPanelManager/Mainline/UIParentPanelManager.lua\"]:493: in function `SetUIPanel'\n[string \"@Interface/AddOns/Blizzard_UIParentPanelManager/Mainline/UIParentPanelManager.lua\"]:295: in function `ShowUIPanel'\n[string \"@Interface/AddOns/Blizzard_UIParentPanelManager/Mainline/UIParentPanelManager.lua\"]:174: in function <...ParentPanelManager/Mainline/UIParentPanelManager.lua:169>\n[string \"=[C]\"]: in function `SetAttribute'\n[string \"@Interface/AddOns/Blizzard_UIParentPanelManager/Mainline/UIParentPanelManager.lua\"]:888: in function <...ParentPanelManager/Mainline/UIParentPanelManager.lua:866>\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: in function `ShowUIPanel'\n[string \"@Interface/AddOns/Blizzard_FrameXMLUtil/Mainline/PlayerSpellsUtil.lua\"]:130: in function `TogglePlayerSpellsFrame'\n[string \"@Interface/AddOns/Blizzard_FrameXMLUtil/Mainline/PlayerSpellsUtil.lua\"]:152: in function `ToggleClassTalentOrSpecFrame'\n[string \"TOGGLETALENTS\"]:1: in function <[string \"TOGGLETALENTS\"]:1>",
["session"] = 7880,
["counter"] = 3,
},
{
["message"] = ".../AddOns/Blizzard_APIDocumentationGenerated/PetConstantsDocumentation.lua:14: '}' expected near 'MAX_SUMMONABLE_HUNTER_PETS'",
["time"] = "2024/09/29 16:06:25",
["locals"] = "(*temporary) = \"Blizzard_APIDocumentationGenerated\"\n",
["stack"] = "[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: in function `LoadAddOn'\n[string \"@Interface/AddOns/Blizzard_UIParent/Mainline/UIParent.lua\"]:422: in function `UIParentLoadAddOn'\n[string \"@Interface/AddOns/Blizzard_UIParent/Mainline/UIParent.lua\"]:639: in function `APIDocumentation_LoadUI'\n[string \"@Interface/AddOns/Blizzard_ChatFrameBase/Mainline/ChatFrame.lua\"]:2657: in function `?'\n[string \"@Interface/AddOns/Blizzard_ChatFrameBase/Mainline/ChatFrame.lua\"]:5479: in function <...AddOns/Blizzard_ChatFrameBase/Mainline/ChatFrame.lua:5425>\n[string \"=[C]\"]: in function `ChatEdit_ParseText'\n[string \"@Interface/AddOns/Blizzard_ChatFrameBase/Mainline/ChatFrame.lua\"]:5131: in function `ChatEdit_SendText'\n[string \"@Interface/AddOns/Blizzard_ChatFrameBase/Mainline/ChatFrame.lua\"]:5167: in function <...AddOns/Blizzard_ChatFrameBase/Mainline/ChatFrame.lua:5163>\n[string \"=[C]\"]: in function `ChatEdit_OnEnterPressed'\n[string \"*ChatFrame.xml:140_OnEnterPressed\"]:1: in function <[string \"*ChatFrame.xml:140_OnEnterPressed\"]:1>",
["session"] = 7882,
["counter"] = 1,
},
{
["message"] = "Interface/AddOns/Blizzard_APIDocumentationGenerated/PetConstantsDocumentation.lua:1 .../AddOns/Blizzard_APIDocumentationGenerated/PetConstantsDocumentation.lua:14: '}' expected near 'MAX_SUMMONABLE_HUNTER_PETS'",
["session"] = 7882,
["time"] = "2024/09/29 16:06:25",
["counter"] = 2,
},
},
}

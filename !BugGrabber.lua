
BugGrabberDB = {
["lastSanitation"] = 3,
["session"] = 8155,
["errors"] = {
{
["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'AngrierWorldQuests' tried to call the protected function 'Button:SetPassThroughButtons()'.",
["time"] = "2024/10/16 18:19:33",
["locals"] = "_ = Frame {\n}\nevent = \"ADDON_ACTION_BLOCKED\"\nevents = <table> {\n}\n",
["stack"] = "[string \"@Interface/AddOns/!BugGrabber/BugGrabber.lua\"]:485: in function <Interface/AddOns/!BugGrabber/BugGrabber.lua:485>\n[string \"=[C]\"]: in function `SetPassThroughButtons'\n[string \"@Interface/AddOns/Blizzard_MapCanvas/MapCanvas_DataProviderBase.lua\"]:224: in function `CheckMouseButtonPassthrough'\n[string \"@Interface/AddOns/Blizzard_MapCanvas/Blizzard_MapCanvas.lua\"]:209: in function `AcquirePin'\n[string \"@Interface/AddOns/Blizzard_SharedMapDataProviders/BonusObjectiveDataProvider.lua\"]:97: in function <...haredMapDataProviders/BonusObjectiveDataProvider.lua:92>\n[string \"=[C]\"]: in function `xpcall'\n[string \"@Interface/AddOns/Blizzard_ObjectAPI/Mainline/AsyncCallbackSystem.lua\"]:76: in function `FireCallbacks'\n[string \"@Interface/AddOns/Blizzard_ObjectAPI/Mainline/AsyncCallbackSystem.lua\"]:35: in function <.../Blizzard_ObjectAPI/Mainline/AsyncCallbackSystem.lua:31>\n[string \"=[C]\"]: in function `accessor'\n[string \"@Interface/AddOns/Blizzard_ObjectAPI/Mainline/AsyncCallbackSystem.lua\"]:52: in function `AddCallback'\n[string \"@Interface/AddOns/Blizzard_ObjectAPI/Mainline/AsyncCallbackSystem.lua\"]:60: in function `AddCancelableCallback'\n[string \"@Interface/AddOns/Blizzard_SharedMapDataProviders/BonusObjectiveDataProvider.lua\"]:92: in function `RefreshAllData'\n[string \"@Interface/AddOns/Blizzard_SharedMapDataProviders/BonusObjectiveDataProvider.lua\"]:65: in function `OnEvent'\n[string \"@Interface/AddOns/Blizzard_MapCanvas/MapCanvas_DataProviderBase.lua\"]:99: in function `SignalEvent'\n[string \"@Interface/AddOns/Blizzard_MapCanvas/Blizzard_MapCanvas.lua\"]:106: in function <...ace/AddOns/Blizzard_MapCanvas/Blizzard_MapCanvas.lua:105>\n[string \"=[C]\"]: in function `secureexecuterange'\n[string \"@Interface/AddOns/Blizzard_MapCanvas/Blizzard_MapCanvas.lua\"]:109: in function `OnEvent'\n[string \"@Interface/AddOns/Blizzard_WorldMap/Blizzard_WorldMap.lua\"]:148: in function <...rface/AddOns/Blizzard_WorldMap/Blizzard_WorldMap.lua:147>",
["session"] = 8142,
["counter"] = 1,
},
{
["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'TalentLoadoutManager' tried to call the protected function 'UNKNOWN()'.",
["time"] = "2024/10/16 20:16:27",
["locals"] = "_ = Frame {\n}\nevent = \"ADDON_ACTION_BLOCKED\"\nevents = <table> {\n}\n",
["stack"] = "[string \"@Interface/AddOns/!BugGrabber/BugGrabber.lua\"]:485: in function <Interface/AddOns/!BugGrabber/BugGrabber.lua:485>\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: in function `SetPoint'\n[string \"@Interface/AddOns/TalentLoadoutManager/modules/SideBarMixin.lua\"]:239: in function `UpdatePosition'\n[string \"@Interface/AddOns/TalentLoadoutManager/modules/SideBarMixin.lua\"]:204: in function <...AddOns/TalentLoadoutManager/modules/SideBarMixin.lua:202>\n[string \"=(tail call)\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: in function `Show'\n[string \"@Interface/AddOns/Blizzard_UIParentPanelManager/Mainline/UIParentPanelManager.lua\"]:493: in function `SetUIPanel'\n[string \"@Interface/AddOns/Blizzard_UIParentPanelManager/Mainline/UIParentPanelManager.lua\"]:295: in function `ShowUIPanel'\n[string \"@Interface/AddOns/Blizzard_UIParentPanelManager/Mainline/UIParentPanelManager.lua\"]:174: in function <...ParentPanelManager/Mainline/UIParentPanelManager.lua:169>\n[string \"=[C]\"]: in function `SetAttribute'\n[string \"@Interface/AddOns/Blizzard_UIParentPanelManager/Mainline/UIParentPanelManager.lua\"]:888: in function <...ParentPanelManager/Mainline/UIParentPanelManager.lua:866>\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: in function `ShowUIPanel'\n[string \"@Interface/AddOns/Blizzard_FrameXMLUtil/Mainline/PlayerSpellsUtil.lua\"]:130: in function `TogglePlayerSpellsFrame'\n[string \"@Interface/AddOns/Blizzard_FrameXMLUtil/Mainline/PlayerSpellsUtil.lua\"]:152: in function `ToggleClassTalentOrSpecFrame'\n[string \"TOGGLETALENTS\"]:1: in function <[string \"TOGGLETALENTS\"]:1>",
["session"] = 8152,
["counter"] = 1,
},
},
}

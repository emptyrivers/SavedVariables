
BugGrabberDB = {
["lastSanitation"] = 3,
["session"] = 7423,
["errors"] = {
{
["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'TalentLoadoutManager' tried to call the protected function 'PlayerSpellsFrame:SetPoint()'.",
["time"] = "2024/09/05 02:11:11",
["locals"] = "_ = Frame {\n}\nevent = \"ADDON_ACTION_BLOCKED\"\nevents = <table> {\n}\n",
["stack"] = "[string \"@Interface/AddOns/!BugGrabber/BugGrabber.lua\"]:485: in function <Interface/AddOns/!BugGrabber/BugGrabber.lua:485>\n[string \"=[C]\"]: in function `SetPoint'\n[string \"@Interface/AddOns/TalentLoadoutManager/modules/SideBarMixin.lua\"]:239: in function `UpdatePosition'\n[string \"@Interface/AddOns/TalentLoadoutManager/modules/SideBarMixin.lua\"]:204: in function <...AddOns/TalentLoadoutManager/modules/SideBarMixin.lua:202>\n[string \"=(tail call)\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: in function `Show'\n[string \"@Interface/AddOns/Blizzard_UIParentPanelManager/Mainline/UIParentPanelManager.lua\"]:493: in function `SetUIPanel'\n[string \"@Interface/AddOns/Blizzard_UIParentPanelManager/Mainline/UIParentPanelManager.lua\"]:295: in function `ShowUIPanel'\n[string \"@Interface/AddOns/Blizzard_UIParentPanelManager/Mainline/UIParentPanelManager.lua\"]:174: in function <...ParentPanelManager/Mainline/UIParentPanelManager.lua:169>\n[string \"=[C]\"]: in function `SetAttribute'\n[string \"@Interface/AddOns/Blizzard_UIParentPanelManager/Mainline/UIParentPanelManager.lua\"]:888: in function <...ParentPanelManager/Mainline/UIParentPanelManager.lua:866>\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: in function `ShowUIPanel'\n[string \"@Interface/AddOns/Blizzard_FrameXMLUtil/Mainline/PlayerSpellsUtil.lua\"]:130: in function `TogglePlayerSpellsFrame'\n[string \"@Interface/AddOns/Blizzard_FrameXMLUtil/Mainline/PlayerSpellsUtil.lua\"]:152: in function `ToggleClassTalentOrSpecFrame'\n[string \"TOGGLETALENTS\"]:1: in function <[string \"TOGGLETALENTS\"]:1>",
["session"] = 7414,
["counter"] = 1,
},
{
["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'TalentTreeTweaks' tried to call the protected function 'PlayerSpellsFrame:SetScale()'.",
["time"] = "2024/09/05 02:11:11",
["locals"] = "_ = Frame {\n}\nevent = \"ADDON_ACTION_BLOCKED\"\nevents = <table> {\n}\n",
["stack"] = "[string \"@Interface/AddOns/!BugGrabber/BugGrabber.lua\"]:485: in function <Interface/AddOns/!BugGrabber/BugGrabber.lua:485>\n[string \"=[C]\"]: in function `SetScale'\n[string \"@Interface/AddOns/TalentTreeTweaks/modules/scaleTalentFrame.lua\"]:99: in function `OnShow'\n[string \"@Interface/AddOns/TalentTreeTweaks/modules/scaleTalentFrame.lua\"]:93: in function <...AddOns/TalentTreeTweaks/modules/scaleTalentFrame.lua:93>\n[string \"=(tail call)\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: in function `Show'\n[string \"@Interface/AddOns/Blizzard_UIParentPanelManager/Mainline/UIParentPanelManager.lua\"]:493: in function `SetUIPanel'\n[string \"@Interface/AddOns/Blizzard_UIParentPanelManager/Mainline/UIParentPanelManager.lua\"]:295: in function `ShowUIPanel'\n[string \"@Interface/AddOns/Blizzard_UIParentPanelManager/Mainline/UIParentPanelManager.lua\"]:174: in function <...ParentPanelManager/Mainline/UIParentPanelManager.lua:169>\n[string \"=[C]\"]: in function `SetAttribute'\n[string \"@Interface/AddOns/Blizzard_UIParentPanelManager/Mainline/UIParentPanelManager.lua\"]:888: in function <...ParentPanelManager/Mainline/UIParentPanelManager.lua:866>\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: in function `ShowUIPanel'\n[string \"@Interface/AddOns/Blizzard_FrameXMLUtil/Mainline/PlayerSpellsUtil.lua\"]:130: in function `TogglePlayerSpellsFrame'\n[string \"@Interface/AddOns/Blizzard_FrameXMLUtil/Mainline/PlayerSpellsUtil.lua\"]:152: in function `ToggleClassTalentOrSpecFrame'\n[string \"TOGGLETALENTS\"]:1: in function <[string \"TOGGLETALENTS\"]:1>",
["session"] = 7414,
["counter"] = 1,
},
{
["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'AngrierWorldQuests' tried to call the protected function 'Button:SetPassThroughButtons()'.",
["time"] = "2024/09/05 13:51:13",
["locals"] = "_ = Frame {\n}\nevent = \"ADDON_ACTION_BLOCKED\"\nevents = <table> {\n}\n",
["stack"] = "[string \"@Interface/AddOns/!BugGrabber/BugGrabber.lua\"]:485: in function <Interface/AddOns/!BugGrabber/BugGrabber.lua:485>\n[string \"=[C]\"]: in function `SetPassThroughButtons'\n[string \"@Interface/AddOns/Blizzard_MapCanvas/MapCanvas_DataProviderBase.lua\"]:224: in function `CheckMouseButtonPassthrough'\n[string \"@Interface/AddOns/Blizzard_MapCanvas/Blizzard_MapCanvas.lua\"]:209: in function `AcquirePin'\n[string \"@Interface/AddOns/Blizzard_SharedMapDataProviders/BonusObjectiveDataProvider.lua\"]:97: in function <...haredMapDataProviders/BonusObjectiveDataProvider.lua:92>\n[string \"=[C]\"]: in function `xpcall'\n[string \"@Interface/AddOns/Blizzard_ObjectAPI/Mainline/AsyncCallbackSystem.lua\"]:76: in function `FireCallbacks'\n[string \"@Interface/AddOns/Blizzard_ObjectAPI/Mainline/AsyncCallbackSystem.lua\"]:35: in function <.../Blizzard_ObjectAPI/Mainline/AsyncCallbackSystem.lua:31>\n[string \"=[C]\"]: in function `accessor'\n[string \"@Interface/AddOns/Blizzard_ObjectAPI/Mainline/AsyncCallbackSystem.lua\"]:52: in function `AddCallback'\n[string \"@Interface/AddOns/Blizzard_ObjectAPI/Mainline/AsyncCallbackSystem.lua\"]:60: in function `AddCancelableCallback'\n[string \"@Interface/AddOns/Blizzard_SharedMapDataProviders/BonusObjectiveDataProvider.lua\"]:92: in function `RefreshAllData'\n[string \"@Interface/AddOns/Blizzard_SharedMapDataProviders/BonusObjectiveDataProvider.lua\"]:65: in function `OnEvent'\n[string \"@Interface/AddOns/Blizzard_MapCanvas/MapCanvas_DataProviderBase.lua\"]:99: in function `SignalEvent'\n[string \"@Interface/AddOns/Blizzard_MapCanvas/Blizzard_MapCanvas.lua\"]:106: in function <...ace/AddOns/Blizzard_MapCanvas/Blizzard_MapCanvas.lua:105>\n[string \"=[C]\"]: in function `secureexecuterange'\n[string \"@Interface/AddOns/Blizzard_MapCanvas/Blizzard_MapCanvas.lua\"]:109: in function `OnEvent'\n[string \"@Interface/AddOns/Blizzard_WorldMap/Blizzard_WorldMap.lua\"]:148: in function <...rface/AddOns/Blizzard_WorldMap/Blizzard_WorldMap.lua:147>",
["session"] = 7419,
["counter"] = 3,
},
{
["message"] = "Interface/AddOns/BtWQuests/BtWQuestsCharacters.lua:911: attempt to index local 'factionData' (a nil value)",
["time"] = "2024/09/05 18:54:25",
["locals"] = "tbl = <table> {\n 2590 = <table> {\n }\n 2570 = <table> {\n }\n 2569 = <table> {\n }\n 2594 = <table> {\n }\n}\ntbl = <table> {\n 2590 = <table> {\n }\n 2570 = <table> {\n }\n 2569 = <table> {\n }\n 2594 = <table> {\n }\n}\nnumEntries = 45\n(for index) = 6\n(for limit) = 45\n(for step) = 1\ni = 6\nfactionData = nil\n(*temporary) = nil\n(*temporary) = 6\n(*temporary) = nil\n(*temporary) = \"attempt to index local 'factionData' (a nil value)\"\ntemp = <table> {\n 0 = <table> {\n }\n 1388 = <table> {\n }\n 1278 = <table> {\n }\n 1282 = <table> {\n }\n 1097 = <table> {\n }\n 1168 = <table> {\n }\n 2564 = <table> {\n }\n 1302 = <table> {\n }\n 2517 = <table> {\n }\n 980 = <table> {\n }\n 2510 = <table> {\n }\n 2518 = <table> {\n }\n 1279 = <table> {\n }\n 1283 = <table> {\n }\n 2605 = <table> {\n }\n 2550 = <table> {\n }\n 1169 = <table> {\n }\n 2503 = <table> {\n }\n 2574 = <table> {\n }\n 1118 = <table> {\n }\n 2590 = <table> {\n }\n 1272 = <table> {\n }\n 1276 = <table> {\n }\n 2607 = <table> {\n }\n 2615 = <table> {\n }\n 1359 = <table> {\n }\n 1245 = <table> {\n }\n 2600 = <table> {\n }\n 2104 = <table> {\n }\n 2553 = <table> {\n }\n 2506 = <table> {\n }\n 2640 = <table> {\n }\n 1281 = <table> {\n }\n 2601 = <table> {\n }\n 1273 = <table> {\n }\n 2570 = <table> {\n }\n 2507 = <table> {\n }\n 2569 = <table> {\n }\n 2511 = <table> {\n }\n 2594 = <table> {\n }\n 1275 = <table> {\n }\n}\n",
["stack"] = "[string \"@Interface/AddOns/BtWQuests/BtWQuestsCharacters.lua\"]:911: in function <Interface/AddOns/BtWQuests/BtWQuestsCharacters.lua:899>\n[string \"@Interface/AddOns/BtWQuests/BtWQuestsCharacters.lua\"]:1114: in function `OnEvent'\n[string \"@Interface/AddOns/BtWQuests/BtWQuestsCharacters.lua\"]:1191: in function <Interface/AddOns/BtWQuests/BtWQuestsCharacters.lua:1190>",
["session"] = 7422,
["counter"] = 1,
},
},
}

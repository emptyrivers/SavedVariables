
BugGrabberDB = {
	["session"] = 3770,
	["lastSanitation"] = 3,
	["errors"] = {
		{
			["message"] = "Interface\\AddOns\\WeakAuras\\Types.lua:5: Cannot find a library instance of \"LibBabble-Race-3.0\".",
			["time"] = "2018/09/24 20:43:13",
			["locals"] = "(*temporary) = \"Cannot find a library instance of \"LibBabble-Race-3.0\".\"\n",
			["stack"] = "[C]: in function `error'\nInterface\\AddOns\\Ace3\\LibStub\\LibStub.lua:23: in function `LibStub'\nInterface\\AddOns\\WeakAuras\\Types.lua:5: in main chunk",
			["session"] = 3755,
			["counter"] = 1,
		}, -- [1]
		{
			["message"] = "Interface\\AddOns\\WeakAuras\\Transmission.lua:239: bad argument #1 to 'pairs' (table expected, got nil)",
			["time"] = "2018/09/24 20:43:13",
			["locals"] = "(*temporary) = nil\n(*temporary) = \"table expected, got nil\"\n = <function> defined =[C]:-1\n",
			["stack"] = "[C]: in function `pairs'\nInterface\\AddOns\\WeakAuras\\Transmission.lua:239: in main chunk",
			["session"] = 3755,
			["counter"] = 1,
		}, -- [2]
		{
			["message"] = "Interface\\AddOns\\WeakAuras\\embeds.xml(21): error: mismatched tag",
			["session"] = 3755,
			["time"] = "2018/09/24 20:43:16",
			["counter"] = 3,
		}, -- [3]
		{
			["message"] = "Interface\\AddOns\\WeakAuras\\WeakAuras-@project-version@.lua:272: bad argument #1 to 'pairs' (table expected, got nil)",
			["time"] = "2018/09/24 20:43:21",
			["locals"] = "(*temporary) = nil\n(*temporary) = \"table expected, got nil\"\n = <function> defined =[C]:-1\n",
			["stack"] = "[C]: in function `pairs'\nInterface\\AddOns\\WeakAuras\\WeakAuras-@project-version@.lua:272: in function `validate'\nInterface\\AddOns\\WeakAuras\\WeakAuras-@project-version@.lua:2662: in function `PreAdd'\nInterface\\AddOns\\WeakAuras\\WeakAuras-@project-version@.lua:2755: in function `Add'\nInterface\\AddOns\\WeakAuras\\WeakAuras-@project-version@.lua:2558: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:2537>\nInterface\\AddOns\\WeakAuras\\WeakAuras-@project-version@.lua:2550: in function `load'\nInterface\\AddOns\\WeakAuras\\WeakAuras-@project-version@.lua:2564: in function `AddMany'\nInterface\\AddOns\\WeakAuras\\WeakAuras-@project-version@.lua:1192: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:1161>",
			["session"] = 3755,
			["counter"] = 1,
		}, -- [4]
		{
			["message"] = "Interface\\AddOns\\WeakAuras\\Transmission.lua:524: Cannot find a library instance of \"LibDeflate\".",
			["time"] = "2018/09/25 15:07:57",
			["locals"] = "(*temporary) = \"Cannot find a library instance of \"LibDeflate\".\"\n",
			["stack"] = "[C]: in function `error'\nInterface\\AddOns\\Ace3\\LibStub\\LibStub.lua:23: in function `GetLibrary'\nInterface\\AddOns\\WeakAuras\\Transmission.lua:524: in main chunk",
			["session"] = 3769,
			["counter"] = 1,
		}, -- [5]
		{
			["message"] = "Error loading Interface\\AddOns\\WeakAuras\\Libs\\LibDeflate\\LibDeflate.lua",
			["session"] = 3769,
			["time"] = "2018/09/25 15:08:01",
			["counter"] = 4,
		}, -- [6]
		{
			["message"] = "(null)",
			["session"] = 3769,
			["time"] = "2018/09/24 20:43:16",
			["counter"] = 8,
		}, -- [7]
		{
			["message"] = "...dOns\\WeakAurasOptions\\OptionsFrames\\ImportExport.lua:52: attempt to call field 'DisplayToString' (a nil value)",
			["time"] = "2018/09/25 15:09:57",
			["locals"] = "self = <table> {\n OnWidthSet = <function> defined @Interface\\AddOns\\Ace3\\AceGUI-3.0\\widgets\\AceGUIContainer-InlineGroup.lua:37\n OnAcquire = <function> defined @Interface\\AddOns\\Ace3\\AceGUI-3.0\\widgets\\AceGUIContainer-InlineGroup.lua:19\n userdata = <table> {\n }\n children = <table> {\n }\n OnHeightSet = <function> defined @Interface\\AddOns\\Ace3\\AceGUI-3.0\\widgets\\AceGUIContainer-InlineGroup.lua:47\n type = \"InlineGroup\"\n AceGUIWidgetVersion = 21\n LayoutFinished = <function> defined @Interface\\AddOns\\Ace3\\AceGUI-3.0\\widgets\\AceGUIContainer-InlineGroup.lua:32\n Open = <function> defined @Interface\\AddOns\\WeakAurasOptions\\OptionsFrames\\ImportExport.lua:36\n titletext = <unnamed> {\n }\n Close = <function> defined @Interface\\AddOns\\WeakAurasOptions\\OptionsFrames\\ImportExport.lua:99\n events = <table> {\n }\n LayoutFunc = <function> defined @Interface\\AddOns\\Ace3\\AceGUI-3.0\\AceGUI-3.0.lua:637\n base = <table> {\n }\n frame = <unnamed> {\n }\n content = <unnamed> {\n }\n SetTitle = <function> defined @Interface\\AddOns\\Ace3\\AceGUI-3.0\\widgets\\AceGUIContainer-InlineGroup.lua:27\n}\nmode = \"export\"\nid = \"monk\"\ndisplayStr = nil\n(*temporary) = nil\n(*temporary) = \"monk\"\n(*temporary) = true\n(*temporary) = \"attempt to call field 'DisplayToString' (a nil value)\"\nframe = WeakAurasOptions {\n 0 = <userdata>\n texturePicker = <table> {\n }\n PickDisplay = <function> defined @Interface\\AddOns\\WeakAurasOptions\\OptionsFrames\\OptionsFrame.lua:809\n elapsed = 0.46900017745793\n ClearPick = <function> defined @Interface\\AddOns\\WeakAurasOptions\\OptionsFrames\\OptionsFrame.lua:635\n pickedDisplay = \"monk\"\n buttonsContainer = <table> {\n }\n FillOptions = <function> defined @Interface\\AddOns\\WeakAurasOptions\\OptionsFrames\\OptionsFrame.lua:629\n CenterOnPicked = <function> defined @Interface\\AddOns\\WeakAurasOptions\\OptionsFrames\\OptionsFrame.lua:862\n modelPicker = <table> {\n }\n loadedButton = <table> {\n }\n PickDisplayMultiple = <function> defined @Interface\\AddOns\\WeakAurasOptions\\OptionsFrames\\OptionsFrame.lua:878\n window = \"importexport\"\n filterInput = WeakAurasFilterInput {\n }\n iconPicker = <table> {\n }\n buttonsScroll = <table> {\n }\n loadProgressNum = 60\n codereview = <table> {\n }\n loadProgress = <unnamed> {\n }\n container = <table> {\n }\n mover = <unnamed> {\n }\n importexport = <table> {\n }\n texteditor = <table> {\n }\n PickOption = <function> defined @Interface\\AddOns\\WeakAurasOptions\\OptionsFrames\\OptionsFrame.lua:684\n newButton = <table> {\n }\n count = 3\n RefreshPick = <function> defined @Interface\\AddOns\\WeakAurasOptions\\OptionsFrames\\OptionsFrame.lua:903\n ClearPicks = <function> defined @Interface\\AddOns\\WeakAurasOptions\\OptionsFrames\\OptionsFrame.lua:651\n unloadedButton = <table> {\n }\n filterInputClear = <unnamed> {\n }\n moversizer = <unnamed> {\n }\n}\nWeakAuras = <table> {\n SetAuraVisibility = <function> defined @Interface\\AddOns\\WeakAuras\\BuffTrigger.lua:299\n DeleteConditionsForTrigger = <function> defined @Interface\\AddOns\\WeakAurasOptions\\WeakAurasOptions.lua:2611\n GetRuneCooldown = <function> defined @Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:1401\n frame_strata_types = <table> {\n }\n ScheduleCooldownScan = <function> defined @Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:2584\n combat_event_type = <table> {\n }\n regions = <table> {\n }\n frameLevels = <table> {\n }\n ShowOverlayGlow = <function> defined @Interface\\AddOns\\ElvUI\\Libraries\\LibActionButton-1.0\\LibButtonGlow-1.0\\LibButtonGlow-1.0.lua:204\n CheckItemSlotCooldowns = <function> defined @Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:1801\n OpenIconPicker = <function> defined @Interface\\AddOns\\WeakAurasOptions\\WeakAurasOptions.lua:4209\n IsEnvironmentInitialized = <function> defined @Interface\\AddOns\\WeakAuras\\AuraEnvironment.lua:104\n form_types = <table> {\n }\n EnsureClone = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.lua:2852\n debug = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.lua:262\n threat_unit_types = <table> {\n }\n CanShowNameInfo = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.lua:3584\n tooltip_count = <table> {\n }\n SetUID = <function> defined @Interface\\AddOns\\WeakAuras\\BuffTri",
			["stack"] = "...dOns\\WeakAurasOptions\\OptionsFrames\\ImportExport.lua:52: in function `Open'\n...terface\\AddOns\\WeakAurasOptions\\WeakAurasOptions-@project-version@.lua:3812: in function `ExportToString'\n...eGUI-Widgets\\AceGUIWidget-WeakAurasDisplayButton.lua:865: in function `func'\nInterface\\FrameXML\\UIDropDownMenu.lua:935: in function `UIDropDownMenuButton_OnClick'\n[string \"*:OnClick\"]:1: in function <[string \"*:OnClick\"]:1>",
			["session"] = 3769,
			["counter"] = 1,
		}, -- [8]
	},
}

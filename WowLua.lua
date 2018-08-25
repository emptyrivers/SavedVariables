
WowLua_DB = {
	["currentPage"] = 9,
	["fontSize"] = 16,
	["pages"] = {
		{
			["untitled"] = true,
			["name"] = "Untitled 1",
			["content"] = "local t = {\n   year = 1970,\n   month = 12,\n   day = 31,\n   hour = 18,\n   min = 0,\n   sec = 0\n}\n--print(time(t)%66600)\n--print(date(\"%H:%M:%S\",66600 - (GetServerTime()-30600)%66600))\n--print(time(date(\"*t\",0)))\nprint(date(nil,GetServerTime()))",
			["locked"] = false,
		}, -- [1]
		{
			["locked"] = false,
			["content"] = "function isWeakAura()\n   local env = getfenv(0)\n   ViragDevTool_AddData(env, \"env\")\n   if env.aura_env then\n      return env.aura_env.id\n   end\n   return \"not a weakaura\"\nend",
			["name"] = "fenv testing",
		}, -- [2]
		{
			["untitled"] = true,
			["name"] = "Untitled 4",
			["content"] = "TEST = \"not env\"\nlocal env = setmetatable(\n   {\n      TEST = \"env\",\n   },\n   \n   {\n      __index = _G\n   }\n)\nlocal f = function() \n   print(TEST) \nend\nf()\nsetfenv(f,env)\nf()",
		}, -- [3]
		{
			["untitled"] = true,
			["name"] = "Untitled 5",
			["content"] = "function FindActionSlotForSpell(spellID)\n   \n   for i=1,120 do\n      local type, id, _, spellID = GetActionInfo(slotID)\n      if type == \"spell\" then \n         return (GetSpellInfo(spellID))\n      elseif type == \"macro\" then\n         local _, _, macrotext = GetMacroInfo(id)\n         for line in macrotext:gmatch(\".-\\n\") do \n            if line:find(\"/use\") or line:find(\"/cast\") then\n               local spell = SecureCmdOptionParse(line:gsub(\"/use +\",\"\"):gsub(\"/cast +\",\"\")):gsub(\"%W\",\"\")\n               spell = GetSpellInfo(spell)\n               if spell then return spell end\n            end\n         end\n      end\n   end\n   print(GetSpellFromSlot(1))",
		}, -- [4]
		{
			["untitled"] = true,
			["name"] = "Untitled 6",
			["content"] = "RIV_BINDINGS = {}\nfor i=1,GetNumBindings() do\n   local t = {GetBinding(i)}\n   if t[1]:find(\"ACTIONBUTTON\") or t[1]:find(\"MULTIACTIONBAR\") then\n      RIV_BINDINGS[t[1]] = t\n      t.frame = _G[t[1]]\n   end\nend\n\nViragDevTool_AddData(RIV_BINDINGS, \"bindings\")",
		}, -- [5]
		{
			["untitled"] = true,
			["name"] = "Untitled 7",
			["content"] = "function GetSpellFromSlot(slotID)\n   local type, id = GetActionInfo(slotID)\n   if type == \"spell\" then \n      return select(1,GetSpellInfo(id))\n   elseif type == \"macro\" then\n      local _, _, macrotext = GetMacroInfo(id)\n      for line in macrotext:gmatch(\".-\\n\") do \n         if line:find(\"/use\") or line:find(\"/cast\") then\n            local spell = SecureCmdOptionParse(line:gsub(\"/use +\",\"\"):gsub(\"/cast +\",\"\")):gsub(\"%W*$\",\"\")\n            spell = select(1,GetSpellInfo(spell))\n            if spell then return spell end\n         end\n      end\n   end\nend\n\nRIVERS_ACTIONSPELLS = {}\nfor i=1,120 do\n   local spellid = GetSpellFromSlot(i)\n   if spellid and not RIVERS_ACTIONSPELLS[spellid] then\n      RIVERS_ACTIONSPELLS[spellid] =  i\n   end\n   \nend\n\nViragDevTool_AddData(RIVERS_ACTIONSPELLS, \"spells\")\n\n\n\n\n",
		}, -- [6]
		{
			["untitled"] = true,
			["name"] = "Untitled 9",
			["content"] = "local s = [[return function(spellid) local castTime = select(4, GetSpellInfo(\"Lunar Strike\")) if castTime == 0 then return 0, 1, 'static' elseif spellid == 0 then return 1, 1, 'static' else local s, d = GetSpellCooldown(spellid) if s == 0 or rivers.on_gcd(spellid) then return 0, 1, 'static' else return d, s + d, 'timed' end end end]]\nlocal f = loadstring(s)()\nprint(f(0,0))\nRIVERSFUNC('set progress '..s)\nRIVERSFUNC'load'",
		}, -- [7]
		{
			["name"] = "Trigger function test",
			["content"] = "DEFAULT_CHAT_FRAME:AddMessage(ConstructFunction(WeakAuras.event_prototypes[\"Unit Characteristics\"], WeakAuras.GetData('test').trigger))",
		}, -- [8]
		{
			["name"] = "profiling",
			["content"] = "print('start')\nlocal startTime = debugprofilestop()\n---[[\nlocal data = WeakAuras.GetData(\"BIRG-MainFrame\")\nlocal s = WeakAuras.TableToString(data)\nfor _, childID in pairs(data.controlledChildren) do\n   s = WeakAuras.TableToString(WeakAuras.GetData(childID))\nend\n--]]\nprint('done', debugprofilestop() - startTime)",
		}, -- [9]
	},
	["untitled"] = 12,
}

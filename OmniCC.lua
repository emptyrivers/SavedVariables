
OmniCCDB = {
["global"] = {
["addonVersion"] = "11.2.1",
["dbVersion"] = 6,
},
["profileKeys"] = {
["Estuary - Argent Dawn"] = "Default",
},
["profiles"] = {
["Default"] = {
["themes"] = {
["Default"] = {
["textStyles"] = {
["soon"] = {
},
["minutes"] = {
},
["seconds"] = {
},
},
},
["Plater Nameplates Theme"] = {
["textStyles"] = {
["soon"] = {
},
["minutes"] = {
},
["seconds"] = {
},
},
["enableText"] = false,
},
},
["rules"] = {
{
["enabled"] = false,
["patterns"] = {
"Aura",
"Buff",
"Debuff",
},
["name"] = "Auras",
["id"] = "auras",
},
{
["enabled"] = false,
["patterns"] = {
"Plate",
},
["name"] = "Unit Nameplates",
["id"] = "plates",
},
{
["enabled"] = false,
["patterns"] = {
"ActionButton",
"MultiBar",
},
["name"] = "Action Bars",
["id"] = "actions",
},
{
["id"] = "Plater Nameplates Rule",
["patterns"] = {
"PlaterMainAuraIcon",
"PlaterSecondaryAuraIcon",
"ExtraIconRowIcon",
},
["theme"] = "Plater Nameplates Theme",
["priority"] = 4,
},
},
},
},
}
OmniCC4Config = nil

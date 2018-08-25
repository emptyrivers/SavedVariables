
RangeDisplayDB3 = {
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
			["char"] = {
				["Tinyrivers - Kel'Thuzad"] = {
					"disabled", -- [1]
					"Default", -- [2]
					"Default", -- [3]
					["enabled"] = true,
				},
			},
		},
	},
	["profileKeys"] = {
		["Emptyrivers - Sargeras"] = "Default",
		["Tinyrivers - Kel'Thuzad"] = "Default",
		["Edgyrivers - Kel'Thuzad"] = "Default",
		["Serenerivers - Kel'Thuzad"] = "disabled",
		["Wildrivers - Arthas"] = "Default",
		["Emptyrivers - Korgath"] = "Default",
		["Evilrivers - Korgath"] = "Default",
		["Tinyrivers - Sargeras"] = "Default",
		["Mindrivers - Korgath"] = "Default",
		["Tinyrivers - Arthas"] = "Default",
		["Luckyrivers - Sargeras"] = "Default",
		["Serenerivers - Sargeras"] = "Default",
		["Blindrivers - Sargeras"] = "Default",
	},
	["profiles"] = {
		["disabled"] = {
			["locked"] = true,
			["units"] = {
				["playertarget"] = {
					["enabled"] = false,
				},
				["arena2"] = {
				},
				["focus"] = {
					["enabled"] = false,
				},
				["pet"] = {
				},
				["mouseover"] = {
					["enabled"] = false,
				},
				["arena5"] = {
				},
				["arena4"] = {
				},
			},
		},
		["Default"] = {
			["locked"] = true,
			["units"] = {
				["pet"] = {
				},
				["playertarget"] = {
					["warnEnemyOnly"] = false,
					["mrSection"] = {
						["color"] = {
							["b"] = 0.305882352941177,
							["g"] = 0.701960784313726,
							["r"] = 0.866666666666667,
						},
						["text"] = "too far",
						["range"] = 40,
						["warnSound"] = false,
					},
					["oorSection"] = {
						["text"] = "Out of Range",
					},
					["enemyOnly"] = true,
					["srSection"] = {
						["text"] = "perfect",
						["range"] = 15,
					},
					["y"] = -236.000411987305,
					["x"] = 4.999840259552,
					["crSection"] = {
						["color"] = {
							["b"] = 0.368627450980392,
							["g"] = 0.329411764705882,
							["r"] = 0.901960784313726,
						},
						["text"] = "too close",
						["range"] = 10,
						["warnSound"] = false,
					},
				},
				["focus"] = {
					["point"] = "BOTTOM",
					["x"] = -444.000579833984,
					["enabled"] = false,
					["y"] = 227.999862670898,
					["relPoint"] = "BOTTOM",
				},
				["arena2"] = {
				},
				["mouseover"] = {
					["enabled"] = false,
				},
				["arena5"] = {
				},
				["arena4"] = {
				},
			},
		},
		["arcane"] = {
			["units"] = {
				["arena2"] = {
				},
				["focus"] = {
				},
				["pet"] = {
				},
				["arena5"] = {
				},
				["arena4"] = {
				},
			},
		},
	},
}

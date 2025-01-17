ubese_armor_boots = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Ubese Armor Boots",
	directObjectTemplate = "object/tangible/wearables/armor/ubese/armor_ubese_boots.iff",
	craftingValues = {
		{"armor_rating",1,1,0},
		{"kineticeffectiveness",10,40,10},
		{"armor_effectiveness",4,29,10},
		{"armor_integrity",18750, 31250,0},
		{"armor_health_encumbrance",0,0,0},
		{"armor_action_encumbrance",0,0,0},
		{"armor_mind_encumbrance",0,0,0},
	},
	skillMods = {

	},
	customizationStringNames = {"/private/index_color_0", "/private/index_color_1"},
	customizationValues = {
			{0, 1},
			{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47}
	},

	junkDealerTypeNeeded = JUNKGENERIC,
	junkMinValue = 45,
	junkMaxValue = 90
}

addLootItemTemplate("ubese_armor_boots", ubese_armor_boots)

grenade_glop = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "",
	directObjectTemplate = "object/weapon/ranged/grenade/grenade_glop.iff",
	craftingValues = {
		{"mindamage",200,340,0},
		{"maxdamage",460,1780,0},
		{"attackspeed",5.8,3.4,1},
		{"woundchance",7,13,1},
		{"hitpoints",1000,1000,0},
		{"zerorange",0,0,0},
		{"zerorangemod",-10,-10,0},
		{"midrange",20,20,0},
		{"midrangemod",10,10,0},
		{"maxrange",32,32,0},
		{"maxrangemod",-30,-30,0},
		{"attackhealthcost",0,0,0},
		{"attackactioncost",300,300,0},
		{"attackmindcost",0,0,0},
	},

	-- randomDotChance: The chance of this weapon object dropping with a random dot on it. Higher number means less chance. Set to 0 to always have a random dot.
	randomDotChance = 750,
	junkDealerTypeNeeded = JUNKARMS,
	junkMinValue = 30,
	junkMaxValue = 55
}

addLootItemTemplate("grenade_glop", grenade_glop)

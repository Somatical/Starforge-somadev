-- Planet Region Definitions
--
-- {"regionName", x, y, shape and size, tier, {"spawnGroup1", ...}, maxSpawnLimit}
-- For circle and ring, x and y are the center point
-- For rectangles, x and y are the bottom left corner. x2 and y2 (see below) are the upper right corner
-- Shape and size is a table with the following format depending on the shape of the area:
--   - Circle: {CIRCLE, radius}
--   - Rectangle: {RECTANGLE, x2, y2}
--   - Ring: {RING, inner radius, outer radius}
-- Tier is a bit mask with the following possible values where each hexadecimal position is one possible configuration.
-- That means that it is not possible to have both a spawn area and a no spawn area in the same region, but
-- a spawn area that is also a no build zone is possible.

require("scripts.managers.planet.regions")

dathomir_regions = {
	-- No Build Zones
	{"northedge_dathomir_nobuild", -8000, 7640, {RECTANGLE, 8000, 8000}, NOBUILDZONEAREA},
	{"westedge_dathomir_nobuild", -8000, -7640, {RECTANGLE, -7640, 7640}, NOBUILDZONEAREA},
	{"southedge_dathomir_nobuild", -8000, -8000, {RECTANGLE, 8000, -7640}, NOBUILDZONEAREA},
	{"eastedge_dathomir_nobuild", 7640, -7640, {RECTANGLE, 8000, 7640}, NOBUILDZONEAREA},
	{"old_battlefield_nobuild_dath1", 4162, -4279, {CIRCLE, 256}, NOBUILDZONEAREA},

	-- Named Regions, POIs and Decor
	{"@dathomir_region_names:nightsister_clan", -4069, -184, {CIRCLE, 400}, NOBUILDZONEAREA + NOSPAWNAREA + NAMEDREGION},

	{"dathomir_imperial_prison", -6399, 943, {CIRCLE, 429}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"dathomir_singing_mtn_clan_city1", 534, 4197, {CIRCLE, 90}, NOSPAWNAREA},
	{"dathomir_singing_mtn_clan_city2", 593, 4523, {CIRCLE, 80}, NOSPAWNAREA},
	{"dathomir_singing_mtn_clan_city3", 522, 4718, {CIRCLE, 80}, NOSPAWNAREA},
	{"dathomir_singing_mtn_clan_witch_city", 194, 4512, {CIRCLE, 150}, NOSPAWNAREA},
	{"dathomir_singing_mtn_clan_nobuild", 416, 4575, {CIRCLE, 1600}, NOBUILDZONEAREA},
	{"dathomir_nightsister_slave_mine_sd", 2452, -1628, {CIRCLE, 125}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"dathomir_smc_east_side_bridge", -440, 4176, {CIRCLE, 40}, NOBUILDZONEAREA + NOSPAWNAREA},
	{"dathomir_nightsister_vs_smc_battle_sd", -2523, 1537, {CIRCLE, 250}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"dathomir_crashed_transport_sd", 5684, 1918, {CIRCLE, 125}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"@dathomir_region_names:vass_meindras_1", -5088, 5536, {RECTANGLE, -4736, 6080}, NAMEDREGION},
	{"@dathomir_region_names:vass_meindras_2", -5280, 4928, {RECTANGLE, -4928, 5600}, NAMEDREGION},
	{"@dathomir_region_names:vass_meindras_3", -5536, 4160, {RECTANGLE, -5216, 49280}, NAMEDREGION},
	{"@dathomir_region_names:vass_meindras_4", -56960, 3648, {RECTANGLE, -5376, 4288}, NAMEDREGION},
	{"@dathomir_region_names:vass_meindras_5", -5952, 2976, {RECTANGLE, -5568, 3808}, NAMEDREGION},
	{"@dathomir_region_names:vass_meindras_6", -6144, 2240, {RECTANGLE, -5760, 3040}, NAMEDREGION},
	{"@dathomir_region_names:susk_kinad_1", -6592, -5952, {RECTANGLE, 0, -3744}, NAMEDREGION},
	{"@dathomir_region_names:susk_kinad_2", -5536, -6784, {RECTANGLE, 0, -5792}, NAMEDREGION},
	{"@dathomir_region_names:lhon_kinad_1", 0, -5088, {RECTANGLE, 6016, -3648}, NAMEDREGION},
	{"@dathomir_region_names:lhon_kinad_2", 0, -5952, {RECTANGLE, 5408, -5088}, NAMEDREGION},
	{"@dathomir_region_names:lhon_kinad_3", 0, -6816, {RECTANGLE, 4608, -5920}, NAMEDREGION},
	{"@dathomir_region_names:rhoa_arod_1", -1472, 2528, {CIRCLE, 320}, NAMEDREGION},
	{"@dathomir_region_names:rhoa_arod_2", -1024, 2624, {CIRCLE, 416}, NAMEDREGION},
	{"@dathomir_region_names:rhoa_arod_3", -672, 2400, {CIRCLE, 320}, NAMEDREGION},
	{"@dathomir_region_names:rhoa_dun_1", -3360, -1792, {CIRCLE, 1152}, NAMEDREGION},
	{"@dathomir_region_names:rhoa_dun_2", -2432, -512, {RECTANGLE, -928, 288}, NAMEDREGION},
	{"@dathomir_region_names:rhoa_sammir_1", 2016, -2016, {CIRCLE, 1344}, NAMEDREGION},
	{"@dathomir_region_names:rhoa_sammir_2", -144, -2672, {CIRCLE, 464}, NAMEDREGION},
	{"@dathomir_region_names:rhoa_sammir_3", 36480, -608, {CIRCLE, 928}, NAMEDREGION},
	{"@dathomir_region_names:rhoa_yenth", 4224, 1760, {RECTANGLE, 5248, 3776}, NAMEDREGION},
	{"@dathomir_region_names:asou_dankal_1", -4384, 1184, {RECTANGLE, -960, 5952}, NAMEDREGION},
	{"@dathomir_region_names:asou_dankal_2", -5984, 1280, {RECTANGLE, -4160, 5600}, NAMEDREGION},
	{"@dathomir_region_names:singing_mountian_1", 368, 4560, {CIRCLE, 1072}, NAMEDREGION},
	{"@dathomir_region_names:twilight_forest", -4080, -336, {CIRCLE, 1712}, NAMEDREGION},
	{"@dathomir_region_names:yumaou_risoath", 3680, -3552, {RECTANGLE, 6752, 832}, NAMEDREGION},
	{"@dathomir_region_names:takal_nax", 1232, 1136, {CIRCLE, 1808}, NAMEDREGION},
	{"@dathomir_region_names:singing_mountain_fortress", 150, 4575, {CIRCLE, 400}, NAMEDREGION},
	{"dathomir_nightsister_giant_gaping_spider_cave", -1196, 6250, {CIRCLE, 80}, UNDEFINEDAREA},
	{"dathomir_coa2_imperial_base", -6303, -529, {CIRCLE, 50}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"dathomir_coa2_rebel_base", 4010, 2987, {CIRCLE, 50}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"dathomir_force_shrine_01", -4961, -3493, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"dathomir_force_shrine_02", -4148, 5926, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"dathomir_force_shrine_03", 3087, 4887, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"dathomir_force_shrine_04", 5571, -1513, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"dathomir_force_shrine_05", 1654, -5765, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"@dathomir_region_names:the_great_canyon", -6144, 480, {RECTANGLE, -4704, 6464}, NAMEDREGION},

	{"abandoned_camp", 2871, -2531, {CIRCLE, 30}, NOBUILDZONEAREA},
	{"bridge", -429, 4177, {CIRCLE, 30}, NOBUILDZONEAREA},
	{"burial_site", -5261, 1293, {CIRCLE, 25}, NOBUILDZONEAREA},
	{"campsite", -2594, 4948, {CIRCLE, 30}, NOBUILDZONEAREA},
	{"ceremonial_site", 1083, -4484, {CIRCLE, 30}, NOBUILDZONEAREA},
	{"dathomir_tarpits", 791, -4630, {CIRCLE, 300}, NOBUILDZONEAREA},
	{"destroyed_imperial_base", -6460, -6724, {CIRCLE, 75}, NOBUILDZONEAREA},
	{"destroyed_rebel_base", -4700, -4772, {CIRCLE, 75}, NOBUILDZONEAREA},
	{"fenced_in_buildings", 51, -154, {CIRCLE, 32}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"fire_and_rocks", -7121, 2926, {CIRCLE, 32}, NOBUILDZONEAREA},
	{"floating_stones", 1478, 3516, {CIRCLE, 64}, NOBUILDZONEAREA},
	{"floating_rocks", 6866, 1177, {CIRCLE, 64}, NOBUILDZONEAREA},
	{"floating_rocks_2", -825, -5045, {CIRCLE, 64}, NOBUILDZONEAREA},
	{"glowing_hut", 7187, 3229, {CIRCLE, 32}, NOBUILDZONEAREA},
	{"hut", 4880, 3276, {CIRCLE, 32}, NOBUILDZONEAREA},
	{"hut_2", 5551, -688, {CIRCLE, 32}, NOBUILDZONEAREA},
	{"hut_3", -3250, -6589, {CIRCLE, 32}, NOBUILDZONEAREA},
	{"imperial_tent", -4627, 5395, {CIRCLE, 32}, NOBUILDZONEAREA},
	{"large_floating_rocks", 2989, -5145, {CIRCLE, 64}, NOBUILDZONEAREA},
	{"lesser_sarlacc_1", -2080, 3143, {CIRCLE, 250}, NOBUILDZONEAREA},
	{"lesser_sarlacc_2", -2080, 3143, {CIRCLE, 80}, NOSPAWNAREA},
	{"life_day_home", -2578, -5519, {CIRCLE, 128}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"lookout", -4564, -6548, {CIRCLE, 64}, NOBUILDZONEAREA},
	{"mysterious_statue", -4149, 5927, {CIRCLE, 32}, NOBUILDZONEAREA},
	{"mysterious_statue_2", 5572, -1516, {CIRCLE, 32}, NOBUILDZONEAREA},
	{"mysterious_statue_3", -4965, -3497, {CIRCLE, 32}, NOBUILDZONEAREA},
	{"night_stalker_home", -2929, -1024, {CIRCLE, 32}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"nightsister_guard_camp", -4183, -847, {CIRCLE, 75}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"nightsister_beach_tower", 924, 6854, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"nightsister_stronghold", -4052, -161, {CIRCLE, 300}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"rock", -498, -2890, {CIRCLE, 30}, NOBUILDZONEAREA},
	{"shrine", 1123, -1025, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"skeleton", 5294, 1431, {CIRCLE, 20}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"skeleton_and_tree", -2658, 7372, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"spellweaver_and_tree", -852, 2787, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"stone_building", 7485, -916, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"stone_hut", 3492, -399, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"stone_tower", -5023, 3210, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"torch", -2612, -4860, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"tower_and_stones", -441, -1152, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"two_huts", 7203, 5560, {CIRCLE, 50}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"wall", 7439, -3018, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"sarlacc_spawner", -2075, 3135, {CIRCLE, 1250}, UNDEFINEDAREA, {"dathomir_sarlacc_mutant"}, 256},
	{"tarpits_spawner", 645, -4890, {CIRCLE, 1250}, UNDEFINEDAREA, {"dathomir_sarlacc_mutant"}, 256},
	{"worship_shrine", -6949, -3034, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},

	-- FS Village
	--{"@dathomir_region_names:fs_village", 5306, -4145, {CIRCLE, 250}, UNDEFINEDAREA},
	{"dathomir_fs_village_unpassable", 5306, -4145, {CIRCLE, 512}, NOSPAWNAREA + NAVAREA},
	{"dathomir_fs_village_unpassable_nobuild", 5306, -4145, {CIRCLE, 1024}, NOBUILDZONEAREA},

	-- Phase 3 camp spawns
	{ "dathomir_fs_combat_camp1", 5939, -2030, {CIRCLE, 150}, NOSPAWNAREA + NOBUILDZONEAREA + NAVAREA},
	{ "dathomir_fs_combat_camp2", 5313, -1145, {CIRCLE, 150}, NOSPAWNAREA + NOBUILDZONEAREA + NAVAREA},
	{ "dathomir_fs_combat_camp3", 4072, -1402, {CIRCLE, 150}, NOSPAWNAREA + NOBUILDZONEAREA + NAVAREA},
	{ "dathomir_fs_combat_camp4", 3456, -1258, {CIRCLE, 150}, NOSPAWNAREA + NOBUILDZONEAREA + NAVAREA},
	{ "dathomir_fs_combat_camp5", 2960, 45, {CIRCLE, 150}, NOSPAWNAREA + NOBUILDZONEAREA + NAVAREA},
	{ "dathomir_fs_combat_camp6", 3041, 787, {CIRCLE, 150}, NOSPAWNAREA + NOBUILDZONEAREA + NAVAREA},
	{ "dathomir_fs_combat_camp7", 1073, 1860, {CIRCLE, 150}, NOSPAWNAREA + NOBUILDZONEAREA + NAVAREA},
	{ "dathomir_fs_combat_camp8", 642, 732, {CIRCLE, 150}, NOSPAWNAREA + NOBUILDZONEAREA + NAVAREA},
	{ "dathomir_fs_combat_camp9", -53, -165, {CIRCLE, 150}, NOSPAWNAREA + NOBUILDZONEAREA + NAVAREA},
	{ "dathomir_fs_combat_camp10", -376, -1856, {CIRCLE, 150}, NOSPAWNAREA + NOBUILDZONEAREA + NAVAREA},
	{ "dathomir_fs_combat_camp11", -1022, -2932, {CIRCLE, 150}, NOSPAWNAREA + NOBUILDZONEAREA + NAVAREA},
	{ "dathomir_fs_combat_camp12", -392, -6004, {CIRCLE, 150}, NOSPAWNAREA + NOBUILDZONEAREA + NAVAREA},
	{ "dathomir_fs_combat_camp13", -737, -5158, {CIRCLE, 150}, NOSPAWNAREA + NOBUILDZONEAREA + NAVAREA},
	{ "dathomir_fs_combat_camp14", -1663, -4690, {CIRCLE, 150}, NOSPAWNAREA + NOBUILDZONEAREA + NAVAREA},
	{ "dathomir_fs_combat_camp15", -2850, -2366, {CIRCLE, 150}, NOSPAWNAREA + NOBUILDZONEAREA + NAVAREA},
	{ "dathomir_fs_combat_camp16", -3824, -3011, {CIRCLE, 150}, NOSPAWNAREA + NOBUILDZONEAREA + NAVAREA},
	{ "dathomir_fs_combat_camp17", -3961, -2606, {CIRCLE, 150}, NOSPAWNAREA + NOBUILDZONEAREA + NAVAREA},
	{ "dathomir_fs_combat_camp18", -2932, 738, {CIRCLE, 150}, NOSPAWNAREA + NOBUILDZONEAREA + NAVAREA},
	{ "dathomir_fs_combat_camp19", -3113, 1171, {CIRCLE, 150}, NOSPAWNAREA + NOBUILDZONEAREA + NAVAREA},
	{ "dathomir_fs_combat_camp20", -1676, 1651, {CIRCLE, 150}, NOSPAWNAREA + NOBUILDZONEAREA + NAVAREA},
	{ "dathomir_fs_combat_camp21", -1977, 2234, {CIRCLE, 150}, NOSPAWNAREA + NOBUILDZONEAREA + NAVAREA},
	{ "dathomir_fs_combat_camp22", -1092, 2343, {CIRCLE, 150}, NOSPAWNAREA + NOBUILDZONEAREA + NAVAREA},
	{ "dathomir_fs_combat_camp23", -410, 2506, {CIRCLE, 150}, NOSPAWNAREA + NOBUILDZONEAREA + NAVAREA},
	{ "dathomir_fs_combat_camp24", 1369, 1217, {CIRCLE, 150}, NOSPAWNAREA + NOBUILDZONEAREA + NAVAREA},
	{ "dathomir_fs_combat_camp25", 3076, 2174, {CIRCLE, 150}, NOSPAWNAREA + NOBUILDZONEAREA + NAVAREA},

	-- Custom
	{ "rakata", 1068, -4485, {1, 100}, NOSPAWNAREA + NOBUILDZONEAREA},

	-- Cities / Outposts
	{"@dathomir_region_names:dathomir_survey_outpost", -85, -1600, {CIRCLE, 400}, CITY + NOSPAWNAREA},
	{"dathomir_survey_outpost_nobuild_1", -85, -1600, {CIRCLE, 200}, NOBUILDZONEAREA},
	{"@dathomir_region_names:dathomir_trade_outpost", 599, 3071, {CIRCLE, 400}, CITY + NOSPAWNAREA},
	{"dathomir_trade_outpost_nobuild_1", 599, 3071, {CIRCLE, 200}, NOBUILDZONEAREA},

	{"dathomir_survey_outpost_1", -99, -1590, {CIRCLE, 10}, UNDEFINEDAREA},
	{"dathomir_survey_outpost_2", -78.512398, -1618, {CIRCLE, 10}, UNDEFINEDAREA},
	{"dathomir_survey_outpost_3", -37.044506, -1587, {CIRCLE, 7}, UNDEFINEDAREA},
	{"dathomir_survey_outpost_4", -88.395172, -1546, {CIRCLE, 7}, UNDEFINEDAREA},
	{"dathomir_survey_outpost_5", -60.725281, -1596, {CIRCLE, 5}, UNDEFINEDAREA},
	{"dathomir_trade_outpost_1", 586, 3073, {CIRCLE, 10}, UNDEFINEDAREA},
	{"dathomir_trade_outpost_2", 577, 3101, {CIRCLE, 5}, UNDEFINEDAREA},
	{"dathomir_trade_outpost_3", 619, 3072, {CIRCLE, 2}, UNDEFINEDAREA},
	{"dathomir_trade_outpost_4", 617, 3057, {CIRCLE, 2}, UNDEFINEDAREA},
	{"dathomir_trade_outpost_5", 606, 3081, {CIRCLE, 5}, UNDEFINEDAREA},
	{"dathomir_trade_outpost_6", 622, 3093, {CIRCLE, 2}, UNDEFINEDAREA},
	{"dathomir_trade_outpost_7", 599, 3047, {CIRCLE, 2}, UNDEFINEDAREA},
	{"dathomir_trade_outpost_8", 586, 3052, {CIRCLE, 2}, UNDEFINEDAREA},

	-- Spawns
	{"@dathomir_region_names:canyon", -6144, 480, {RECTANGLE, -4704, 6464}, SPAWNAREA, {"dathomir_the_great_canyon"}, 256},
	{"@dathomir_region_names:desert", -6560, -6528, {RECTANGLE, 5792, -3680}, SPAWNAREA, {"dathomir_southern_desert"}, 256},
	{"@dathomir_region_names:forest_1", -4704, -416, {RECTANGLE, -1472, 6304}, SPAWNAREA, {"dathomir_hard_rancor_nw", "dathomir_hard_purbole_nw"}, 256},
	{"@dathomir_region_names:forest_2", -500, 128, {RECTANGLE, 5664, 6464}, SPAWNAREA, {"dathomir_singing_mountain"}, 256},
	{"@dathomir_region_names:forest_3", 4192, -3360, {RECTANGLE, 6368, 480}, SPAWNAREA, {"dathomir_dry_rock_mountains_se", "dathomir_hard_graul_se"}, 128},
	{"@dathomir_region_names:forest_4", -6176, -3520, {RECTANGLE, -2144, 1152}, SPAWNAREA, {"dathomir_dry_rock_mountains_sw", "dathomir_hard_graul_sw", "dathomir_hard_purbole_sw", "dathomir_hard_reptilian_flyer_sw"}, 256},

	-- North
	{"@dathomir_region_names:northern_hard", -3025, 3990, {RECTANGLE, 1980, 8000}, SPAWNAREA ,{"dathomir_northern_hard"} , 448},
	{"@dathomir_region_names:northeastern_medium", 1983, 2958, {RECTANGLE, 7950, 8000}, SPAWNAREA ,{"dathomir_northeastern_medium"} , 448},
	{"@dathomir_region_names:northwestern_medium", -7992, 3992, {RECTANGLE, -3025, 8000}, SPAWNAREA ,{"dathomir_northwestern_medium"}, 256},
	-- South
	{"@dathomir_region_names:southern_medium", -2009, -8000, {RECTANGLE, 2000, -2970}, SPAWNAREA ,{"dathomir_southern_medium"} ,256},
	{"@dathomir_region_names:southeastern_medium", 1991, -8000, {RECTANGLE, 7973, -2150}, SPAWNAREA ,{"dathomir_southeastern_medium"}, 512},
	{"@dathomir_region_names:southwestern_hard", -8000, -8000, {RECTANGLE, -1990, -4000}, SPAWNAREA ,{"dathomir_southwestern_hard"} ,320},
	{"@dathomir_region_names:southwestern_medium", -8000, -3992, {RECTANGLE, -1990, -990}, SPAWNAREA ,{"dathomir_southwestern_medium"} ,256},
	-- East
	{"@dathomir_region_names:eastern_hard", 1983, -2150, {RECTANGLE, 7980, 2950}, SPAWNAREA ,{"dathomir_eastern_hard"} , 448},
	-- West
	{"@dathomir_region_names:western_hard", -7992, -992, {RECTANGLE, -2000, 3990}, SPAWNAREA ,{"dathomir_western_hard"} ,256},
	-- Central
	{"@dathomir_region_names:central_easy", -1992, -2970, {RECTANGLE, 1990, 3999}, SPAWNAREA ,{"dathomir_central_easy"}, 448},

	-- North Mountains
	{"@dathomir_region_names:mountain_1", -7584, 6752, {RECTANGLE, -2784, 7872}, SPAWNAREA, {"dathomir_northern_mountains"}, 256},
	-- West Mountains
	{"@dathomir_region_names:mountain_2", -7744, -7776, {RECTANGLE, -5000, 7904}, SPAWNAREA, {"dathomir_western_mountains"}, 256},
	{"@dathomir_region_names:mountain_3", -7680, -7648, {RECTANGLE, 7648, -6912}, SPAWNAREA, {"dathomir_western_mountains"}, 256},
	{"@dathomir_region_names:mountain_5", -4224, -3008, {RECTANGLE, -1888, -672}, SPAWNAREA, {"dathomir_western_mountains"}, 256},
	{"@dathomir_region_names:mountain_6", -1500, -3232, {RECTANGLE, 2656, 0}, SPAWNAREA, {"dathomir_western_mountains"}, 256},
	{"@dathomir_region_names:mountain_8", -1824, 2208, {RECTANGLE, -384, 2880}, SPAWNAREA, {"dathomir_red_hills_nw"}, 256},

	-- East Mountains
	{"@dathomir_region_names:mountain_4", 6496, -7616, {RECTANGLE, 7520, 7008}, SPAWNAREA, {"dathomir_eastern_mountains"}, 256},
	{"@dathomir_region_names:mountain_7", 4096, 1568, {RECTANGLE, 5216, 3840}, SPAWNAREA, {"dathomir_red_hills_ne"}, 256},

	--{"@dathomir_region_names:forest_5", -7999, -7999, {RECTANGLE, 7999, 7999}, SPAWNAREA, {"dathomir_world"}, 256},

	{"@dathomir_region_names:world_spawner", 0, 0, {RECTANGLE, 0, 0}, SPAWNAREA + WORLDSPAWNAREA, {"dathomir_world"}, 2048}
}

#include "global.h"
#include "core.h"

#include "constants/tilemaps.h"

extern struct MapHeader zone_1_act_dummy_fg0;
extern struct MapHeader zone_1_act_dummy_fg1;
extern struct MapHeader zone_1_act_dummy_bg0;
extern struct MapHeader zone_1_act_dummy_bg1;
extern struct MapHeader zone_1_act_special_fg0;
extern struct MapHeader zone_1_act_special_fg1;
extern const Tilemap zone_1_act_special_bg0;
extern struct MapHeader zone_1_act_special_bg1;
extern struct MapHeader zone_1_act_hub_fg0;
extern struct MapHeader zone_1_act_hub_fg1;
extern struct MapHeader zone_1_act_hub_bg0;
extern struct MapHeader zone_1_act_hub_bg1;
extern struct MapHeader zone_1_act_1_fg0;
extern struct MapHeader zone_1_act_1_fg1;
extern struct MapHeader zone_1_act_1_bg0;
extern struct MapHeader zone_1_act_1_bg1;
extern struct MapHeader zone_1_act_2_fg0;
extern struct MapHeader zone_1_act_2_fg1;
extern struct MapHeader zone_1_act_2_bg0;
extern struct MapHeader zone_1_act_2_bg1;
extern struct MapHeader zone_1_act_3_fg0;
extern struct MapHeader zone_1_act_3_fg1;
extern struct MapHeader zone_1_act_3_bg0;
extern struct MapHeader zone_1_act_3_bg1;
extern struct MapHeader zone_1_act_4_fg0;
extern struct MapHeader zone_1_act_4_fg1;
extern struct MapHeader zone_1_act_4_bg0;
extern struct MapHeader zone_1_act_4_bg1;
extern struct MapHeader zone_1_act_boss_fg0;
extern struct MapHeader zone_1_act_boss_fg1;
extern struct MapHeader zone_1_act_boss_bg0;
extern struct MapHeader zone_1_act_boss_bg1;
extern struct MapHeader zone_1_act_bonus_capsule_fg0;
extern struct MapHeader zone_1_act_bonus_capsule_fg1;
extern struct MapHeader zone_1_act_bonus_capsule_bg0;
extern struct MapHeader zone_1_act_bonus_capsule_bg1;
extern struct MapHeader zone_1_act_bonus_enemy_fg0;
extern struct MapHeader zone_1_act_bonus_enemy_fg1;
extern struct MapHeader zone_1_act_bonus_enemy_bg0;
extern struct MapHeader zone_1_act_bonus_enemy_bg1;
extern struct MapHeader zone_2_act_dummy_fg0;
extern struct MapHeader zone_2_act_dummy_fg1;
extern struct MapHeader zone_2_act_dummy_bg0;
extern struct MapHeader zone_2_act_dummy_bg1;
extern struct MapHeader zone_2_act_special_fg0;
extern struct MapHeader zone_2_act_special_fg1;
extern struct MapHeader zone_2_act_special_bg0;
extern struct MapHeader zone_2_act_special_bg1;
extern struct MapHeader zone_2_act_hub_fg0;
extern struct MapHeader zone_2_act_hub_fg1;
extern struct MapHeader zone_2_act_hub_bg0;
extern struct MapHeader zone_2_act_hub_bg1;
extern struct MapHeader zone_2_act_1_fg0;
extern struct MapHeader zone_2_act_1_fg1;
extern struct MapHeader zone_2_act_1_bg0;
extern struct MapHeader zone_2_act_1_bg1;
extern struct MapHeader zone_2_act_2_fg0;
extern struct MapHeader zone_2_act_2_fg1;
extern struct MapHeader zone_2_act_2_bg0;
extern struct MapHeader zone_2_act_2_bg1;
extern struct MapHeader zone_2_act_3_fg0;
extern struct MapHeader zone_2_act_3_fg1;
extern struct MapHeader zone_2_act_3_bg0;
extern struct MapHeader zone_2_act_3_bg1;
extern struct MapHeader zone_2_act_4_fg0;
extern struct MapHeader zone_2_act_4_fg1;
extern struct MapHeader zone_2_act_4_bg0;
extern struct MapHeader zone_2_act_4_bg1;
extern struct MapHeader zone_2_act_boss_fg0;
extern struct MapHeader zone_2_act_boss_fg1;
extern struct MapHeader zone_2_act_boss_bg0;
extern struct MapHeader zone_2_act_boss_bg1;
extern struct MapHeader zone_2_act_bonus_capsule_fg0;
extern struct MapHeader zone_2_act_bonus_capsule_fg1;
extern struct MapHeader zone_2_act_bonus_capsule_bg0;
extern struct MapHeader zone_2_act_bonus_capsule_bg1;
extern struct MapHeader zone_2_act_bonus_enemy_fg0;
extern struct MapHeader zone_2_act_bonus_enemy_fg1;
extern struct MapHeader zone_2_act_bonus_enemy_bg0;
extern struct MapHeader zone_2_act_bonus_enemy_bg1;
extern struct MapHeader zone_3_act_dummy_fg0;
extern struct MapHeader zone_3_act_dummy_fg1;
extern struct MapHeader zone_3_act_dummy_bg0;
extern struct MapHeader zone_3_act_dummy_bg1;
extern struct MapHeader zone_3_act_special_fg0;
extern struct MapHeader zone_3_act_special_fg1;
extern struct MapHeader zone_3_act_special_bg0;
extern struct MapHeader zone_3_act_special_bg1;
extern struct MapHeader zone_3_act_hub_fg0;
extern struct MapHeader zone_3_act_hub_fg1;
extern struct MapHeader zone_3_act_hub_bg0;
extern struct MapHeader zone_3_act_hub_bg1;
extern struct MapHeader zone_3_act_1_fg0;
extern struct MapHeader zone_3_act_1_fg1;
extern struct MapHeader zone_3_act_1_bg0;
extern struct MapHeader zone_3_act_1_bg1;
extern struct MapHeader zone_3_act_2_fg0;
extern struct MapHeader zone_3_act_2_fg1;
extern struct MapHeader zone_3_act_2_bg0;
extern struct MapHeader zone_3_act_2_bg1;
extern struct MapHeader zone_3_act_3_fg0;
extern struct MapHeader zone_3_act_3_fg1;
extern struct MapHeader zone_3_act_3_bg0;
extern struct MapHeader zone_3_act_3_bg1;
extern struct MapHeader zone_3_act_4_fg0;
extern struct MapHeader zone_3_act_4_fg1;
extern struct MapHeader zone_3_act_4_bg0;
extern struct MapHeader zone_3_act_4_bg1;
extern struct MapHeader zone_3_act_boss_fg0;
extern struct MapHeader zone_3_act_boss_fg1;
extern struct MapHeader zone_3_act_boss_bg0;
extern struct MapHeader zone_3_act_boss_bg1;
extern struct MapHeader zone_3_act_bonus_capsule_fg0;
extern struct MapHeader zone_3_act_bonus_capsule_fg1;
extern struct MapHeader zone_3_act_bonus_capsule_bg0;
extern struct MapHeader zone_3_act_bonus_capsule_bg1;
extern struct MapHeader zone_3_act_bonus_enemy_fg0;
extern struct MapHeader zone_3_act_bonus_enemy_fg1;
extern struct MapHeader zone_3_act_bonus_enemy_bg0;
extern struct MapHeader zone_3_act_bonus_enemy_bg1;
extern struct MapHeader zone_4_act_dummy_fg0;
extern struct MapHeader zone_4_act_dummy_fg1;
extern struct MapHeader zone_4_act_dummy_bg0;
extern struct MapHeader zone_4_act_dummy_bg1;
extern struct MapHeader zone_4_act_special_fg0;
extern struct MapHeader zone_4_act_special_fg1;
extern struct MapHeader zone_4_act_special_bg0;
extern struct MapHeader zone_4_act_special_bg1;
extern struct MapHeader zone_4_act_hub_fg0;
extern struct MapHeader zone_4_act_hub_fg1;
extern struct MapHeader zone_4_act_hub_bg0;
extern struct MapHeader zone_4_act_hub_bg1;
extern struct MapHeader zone_4_act_1_fg0;
extern struct MapHeader zone_4_act_1_fg1;
extern struct MapHeader zone_4_act_1_bg0;
extern struct MapHeader zone_4_act_1_bg1;
extern struct MapHeader zone_4_act_2_fg0;
extern struct MapHeader zone_4_act_2_fg1;
extern struct MapHeader zone_4_act_2_bg0;
extern struct MapHeader zone_4_act_2_bg1;
extern struct MapHeader zone_4_act_3_fg0;
extern struct MapHeader zone_4_act_3_fg1;
extern struct MapHeader zone_4_act_3_bg0;
extern struct MapHeader zone_4_act_3_bg1;
extern struct MapHeader zone_4_act_4_fg0;
extern struct MapHeader zone_4_act_4_fg1;
extern struct MapHeader zone_4_act_4_bg0;
extern struct MapHeader zone_4_act_4_bg1;
extern struct MapHeader zone_4_act_boss_fg0;
extern struct MapHeader zone_4_act_boss_fg1;
extern struct MapHeader zone_4_act_boss_bg0;
extern struct MapHeader zone_4_act_boss_bg1;
extern struct MapHeader zone_4_act_bonus_capsule_fg0;
extern struct MapHeader zone_4_act_bonus_capsule_fg1;
extern struct MapHeader zone_4_act_bonus_capsule_bg0;
extern struct MapHeader zone_4_act_bonus_capsule_bg1;
extern struct MapHeader zone_4_act_bonus_enemy_fg0;
extern struct MapHeader zone_4_act_bonus_enemy_fg1;
extern struct MapHeader zone_4_act_bonus_enemy_bg0;
extern struct MapHeader zone_4_act_bonus_enemy_bg1;
extern struct MapHeader zone_5_act_dummy_fg0;
extern struct MapHeader zone_5_act_dummy_fg1;
extern struct MapHeader zone_5_act_dummy_bg0;
extern struct MapHeader zone_5_act_dummy_bg1;
extern struct MapHeader zone_5_act_special_fg0;
extern struct MapHeader zone_5_act_special_fg1;
extern struct MapHeader zone_5_act_special_bg0;
extern struct MapHeader zone_5_act_special_bg1;
extern struct MapHeader zone_5_act_hub_fg0;
extern struct MapHeader zone_5_act_hub_fg1;
extern struct MapHeader zone_5_act_hub_bg0;
extern struct MapHeader zone_5_act_hub_bg1;
extern struct MapHeader zone_5_act_1_fg0;
extern struct MapHeader zone_5_act_1_fg1;
extern struct MapHeader zone_5_act_1_bg0;
extern struct MapHeader zone_5_act_1_bg1;
extern struct MapHeader zone_5_act_2_fg0;
extern struct MapHeader zone_5_act_2_fg1;
extern struct MapHeader zone_5_act_2_bg0;
extern struct MapHeader zone_5_act_2_bg1;
extern struct MapHeader zone_5_act_3_fg0;
extern struct MapHeader zone_5_act_3_fg1;
extern struct MapHeader zone_5_act_3_bg0;
extern struct MapHeader zone_5_act_3_bg1;
extern struct MapHeader zone_5_act_4_fg0;
extern struct MapHeader zone_5_act_4_fg1;
extern struct MapHeader zone_5_act_4_bg0;
extern struct MapHeader zone_5_act_4_bg1;
extern struct MapHeader zone_5_act_boss_fg0;
extern struct MapHeader zone_5_act_boss_fg1;
extern struct MapHeader zone_5_act_boss_bg0;
extern struct MapHeader zone_5_act_boss_bg1;
extern struct MapHeader zone_5_act_bonus_capsule_fg0;
extern struct MapHeader zone_5_act_bonus_capsule_fg1;
extern struct MapHeader zone_5_act_bonus_capsule_bg0;
extern struct MapHeader zone_5_act_bonus_capsule_bg1;
extern struct MapHeader zone_5_act_bonus_enemy_fg0;
extern struct MapHeader zone_5_act_bonus_enemy_fg1;
extern struct MapHeader zone_5_act_bonus_enemy_bg0;
extern struct MapHeader zone_5_act_bonus_enemy_bg1;
extern struct MapHeader zone_6_act_dummy_fg0;
extern struct MapHeader zone_6_act_dummy_fg1;
extern struct MapHeader zone_6_act_dummy_bg0;
extern struct MapHeader zone_6_act_dummy_bg1;
extern struct MapHeader zone_6_act_special_fg0;
extern struct MapHeader zone_6_act_special_fg1;
extern struct MapHeader zone_6_act_special_bg0;
extern struct MapHeader zone_6_act_special_bg1;
extern struct MapHeader zone_6_act_hub_fg0;
extern struct MapHeader zone_6_act_hub_fg1;
extern struct MapHeader zone_6_act_hub_bg0;
extern struct MapHeader zone_6_act_hub_bg1;
extern struct MapHeader zone_6_act_1_fg0;
extern struct MapHeader zone_6_act_1_fg1;
extern struct MapHeader zone_6_act_1_bg0;
extern struct MapHeader zone_6_act_1_bg1;
extern struct MapHeader zone_6_act_2_fg0;
extern struct MapHeader zone_6_act_2_fg1;
extern struct MapHeader zone_6_act_2_bg0;
extern struct MapHeader zone_6_act_2_bg1;
extern struct MapHeader zone_6_act_3_fg0;
extern struct MapHeader zone_6_act_3_fg1;
extern struct MapHeader zone_6_act_3_bg0;
extern struct MapHeader zone_6_act_3_bg1;
extern struct MapHeader zone_6_act_4_fg0;
extern struct MapHeader zone_6_act_4_fg1;
extern struct MapHeader zone_6_act_4_bg0;
extern struct MapHeader zone_6_act_4_bg1;
extern struct MapHeader zone_6_act_boss_fg0;
extern struct MapHeader zone_6_act_boss_fg1;
extern struct MapHeader zone_6_act_boss_bg0;
extern struct MapHeader zone_6_act_boss_bg1;
extern struct MapHeader zone_6_act_bonus_capsule_fg0;
extern struct MapHeader zone_6_act_bonus_capsule_fg1;
extern struct MapHeader zone_6_act_bonus_capsule_bg0;
extern struct MapHeader zone_6_act_bonus_capsule_bg1;
extern struct MapHeader zone_6_act_bonus_enemy_fg0;
extern struct MapHeader zone_6_act_bonus_enemy_fg1;
extern struct MapHeader zone_6_act_bonus_enemy_bg0;
extern struct MapHeader zone_6_act_bonus_enemy_bg1;
extern struct MapHeader zone_7_act_dummy_fg0;
extern struct MapHeader zone_7_act_dummy_fg1;
extern struct MapHeader zone_7_act_dummy_bg0;
extern struct MapHeader zone_7_act_dummy_bg1;
extern struct MapHeader zone_7_act_special_fg0;
extern struct MapHeader zone_7_act_special_fg1;
extern struct MapHeader zone_7_act_special_bg0;
extern struct MapHeader zone_7_act_special_bg1;
extern struct MapHeader zone_7_act_hub_fg0;
extern struct MapHeader zone_7_act_hub_fg1;
extern struct MapHeader zone_7_act_hub_bg0;
extern struct MapHeader zone_7_act_hub_bg1;
extern struct MapHeader zone_7_act_1_fg0;
extern struct MapHeader zone_7_act_1_fg1;
extern struct MapHeader zone_7_act_1_bg0;
extern struct MapHeader zone_7_act_1_bg1;
extern struct MapHeader zone_7_act_2_fg0;
extern struct MapHeader zone_7_act_2_fg1;
extern struct MapHeader zone_7_act_2_bg0;
extern struct MapHeader zone_7_act_2_bg1;
extern struct MapHeader zone_7_act_3_fg0;
extern struct MapHeader zone_7_act_3_fg1;
extern struct MapHeader zone_7_act_3_bg0;
extern struct MapHeader zone_7_act_3_bg1;
extern struct MapHeader zone_7_act_4_fg0;
extern struct MapHeader zone_7_act_4_fg1;
extern struct MapHeader zone_7_act_4_bg0;
extern struct MapHeader zone_7_act_4_bg1;
extern struct MapHeader zone_7_act_boss_fg0;
extern struct MapHeader zone_7_act_boss_fg1;
extern struct MapHeader zone_7_act_boss_bg0;
extern struct MapHeader zone_7_act_boss_bg1;
extern struct MapHeader zone_7_act_bonus_capsule_fg0;
extern struct MapHeader zone_7_act_bonus_capsule_fg1;
extern struct MapHeader zone_7_act_bonus_capsule_bg0;
extern struct MapHeader zone_7_act_bonus_capsule_bg1;
extern struct MapHeader zone_7_act_bonus_enemy_fg0;
extern struct MapHeader zone_7_act_bonus_enemy_fg1;
extern struct MapHeader zone_7_act_bonus_enemy_bg0;
extern struct MapHeader zone_7_act_bonus_enemy_bg1;
extern struct MapHeader zone_final_act_dummy_fg0;
extern struct MapHeader zone_final_act_dummy_fg1;
extern struct MapHeader zone_final_act_dummy_bg0;
extern struct MapHeader zone_final_act_dummy_bg1;
extern struct MapHeader zone_final_act_altar_emerald_fg0;
extern struct MapHeader zone_final_act_altar_emerald_fg1;
extern struct MapHeader zone_final_act_altar_emerald_bg0;
extern struct MapHeader zone_final_act_altar_emerald_bg1;
extern struct MapHeader zone_final_act_nonaggression_fg0;
extern struct MapHeader zone_final_act_nonaggression_fg1;
extern struct MapHeader zone_final_act_nonaggression_bg0;
extern struct MapHeader zone_final_act_nonaggression_bg1;
extern struct MapHeader unknown_292;
extern struct MapHeader unknown_293;
extern struct MapHeader unknown_294;
extern struct MapHeader unknown_295;
extern struct MapHeader unknown_296;
extern struct MapHeader unknown_297;
extern struct MapHeader unknown_298;
extern struct MapHeader unknown_299;
extern struct MapHeader unknown_300;
extern struct MapHeader unknown_301;
extern struct MapHeader unknown_302;
extern struct MapHeader unknown_303;
extern struct MapHeader unknown_304;
extern struct MapHeader master_emerald_altar;
extern struct MapHeader altar_emerald_bg_copy;
extern struct MapHeader unknown_307;
extern struct MapHeader unknown_308;
extern struct MapHeader unknown_309;
extern struct MapHeader unknown_310;
extern struct MapHeader unknown_311;
extern struct MapHeader unknown_312;
extern struct MapHeader unknown_313;
extern struct MapHeader unknown_314;
extern struct MapHeader unknown_315;
extern struct MapHeader unknown_316;
extern struct MapHeader unknown_317;
extern struct MapHeader unknown_318;
extern struct MapHeader unknown_319;
extern struct MapHeader unknown_320;
extern struct MapHeader unknown_321;
extern struct MapHeader unknown_322;
extern struct MapHeader unknown_323;
extern struct MapHeader unknown_324;
extern struct MapHeader unknown_325;
extern struct MapHeader unknown_326;
extern struct MapHeader unknown_327;
extern struct MapHeader unknown_328;
extern struct MapHeader unknown_329;
extern struct MapHeader unknown_330;
extern struct MapHeader unknown_331;
extern struct MapHeader unknown_332;
extern struct MapHeader unknown_333;
extern struct MapHeader unknown_334;
extern struct MapHeader unknown_335;
extern struct MapHeader unknown_336;
extern struct MapHeader unknown_337;
extern struct MapHeader unknown_338;
extern struct MapHeader unknown_339;
extern struct MapHeader unknown_340;
extern struct MapHeader unknown_341;
extern struct MapHeader unknown_342;
extern struct MapHeader unknown_343;
extern struct MapHeader unknown_344;
extern struct MapHeader unknown_345;
extern struct MapHeader unknown_346;
extern struct MapHeader unknown_347;
extern struct MapHeader unknown_348;
extern struct MapHeader unknown_349;
extern struct MapHeader unknown_350;
extern struct MapHeader unknown_351;
extern struct MapHeader unknown_352;
extern struct MapHeader unknown_353;
extern struct MapHeader unknown_354;
extern struct MapHeader unknown_355;
extern struct MapHeader unknown_356;
extern struct MapHeader unknown_357;
extern struct MapHeader unknown_358;
extern struct MapHeader unknown_359;
extern struct MapHeader unknown_360;
extern struct MapHeader unknown_361;
extern struct MapHeader unknown_362;
extern struct MapHeader unknown_363;
extern struct MapHeader unknown_364;
extern struct MapHeader unknown_365;
extern struct MapHeader unknown_366;
extern struct MapHeader unknown_367;
extern struct MapHeader unknown_368;
extern struct MapHeader unknown_369;
extern struct MapHeader unknown_370;
extern struct MapHeader unknown_371;
extern struct MapHeader unknown_372;
extern struct MapHeader unknown_373;
extern struct MapHeader unknown_374;
extern struct MapHeader unknown_375;
extern struct MapHeader unknown_376;
extern struct MapHeader unknown_377;
extern struct MapHeader unknown_378;
extern struct MapHeader unknown_379;
extern struct MapHeader unknown_380;
extern struct MapHeader unknown_381;
extern struct MapHeader unknown_382;
extern struct MapHeader unknown_383;
extern struct MapHeader unknown_384;
extern struct MapHeader unknown_385;
extern struct MapHeader unknown_386;
extern struct MapHeader unknown_387;
extern struct MapHeader unknown_388;
extern struct MapHeader unknown_389;
extern struct MapHeader unknown_390;
extern struct MapHeader unknown_391;
extern struct MapHeader unknown_392;
extern struct MapHeader unknown_393;
extern struct MapHeader unknown_394;
extern struct MapHeader unknown_395;
extern struct MapHeader unknown_396;
extern struct MapHeader notification_please_wait_jp;
extern struct MapHeader notification_please_wait_en;
extern struct MapHeader notification_please_wait_de;
extern struct MapHeader notification_please_wait_fr;
extern struct MapHeader notification_please_wait_es;
extern struct MapHeader notification_please_wait_it;
extern struct MapHeader notification_unlocked_knuckles_jp;
extern struct MapHeader notification_unlocked_knuckles_en;
extern struct MapHeader notification_unlocked_knuckles_de;
extern struct MapHeader notification_unlocked_knuckles_fr;
extern struct MapHeader notification_unlocked_knuckles_es;
extern struct MapHeader notification_unlocked_knuckles_it;
extern struct MapHeader notification_unlocked_cream_jp;
extern struct MapHeader notification_unlocked_cream_en;
extern struct MapHeader notification_unlocked_cream_de;
extern struct MapHeader notification_unlocked_cream_fr;
extern struct MapHeader notification_unlocked_cream_es;
extern struct MapHeader notification_unlocked_cream_it;
extern struct MapHeader notification_unlocked_amy_jp;
extern struct MapHeader notification_unlocked_amy_en;
extern struct MapHeader notification_unlocked_amy_de;
extern struct MapHeader notification_unlocked_amy_fr;
extern struct MapHeader notification_unlocked_amy_es;
extern struct MapHeader notification_unlocked_amy_it;
extern struct MapHeader unknown_421;
extern struct MapHeader unknown_422;
extern struct MapHeader unknown_423;
extern struct MapHeader unknown_424;
extern struct MapHeader unknown_425;
extern struct MapHeader unknown_426;
extern struct MapHeader unknown_427;
extern struct MapHeader unknown_428;
extern struct MapHeader unknown_429;
extern struct MapHeader unknown_430;
extern struct MapHeader unknown_431;
extern struct MapHeader unknown_432;
extern struct MapHeader unknown_433;
extern struct MapHeader unknown_434;
extern struct MapHeader unknown_435;
extern struct MapHeader unknown_436;
extern struct MapHeader unknown_437;
extern struct MapHeader unknown_438;
extern struct MapHeader unknown_439;
extern struct MapHeader unknown_440;
extern struct MapHeader unknown_441;
extern struct MapHeader unknown_442;
extern struct MapHeader unknown_443;
extern struct MapHeader unknown_444;
extern struct MapHeader unknown_445;
extern struct MapHeader unknown_446;
extern struct MapHeader notification_chao_map_jp;
extern struct MapHeader notification_chao_map_en;
extern struct MapHeader notification_chao_map_de;
extern struct MapHeader notification_chao_map_fr;
extern struct MapHeader notification_chao_map_es;
extern struct MapHeader notification_chao_map_it;
extern struct MapHeader unknown_453;
extern struct MapHeader unknown_454;
extern struct MapHeader instructions_bonus_capsule_jp;
extern struct MapHeader instructions_bonus_capsule_en;
extern struct MapHeader instructions_bonus_capsule_de;
extern struct MapHeader instructions_bonus_capsule_fr;
extern struct MapHeader instructions_bonus_capsule_es;
extern struct MapHeader instructions_bonus_capsule_it;
extern struct MapHeader instructions_bonus_enemies_jp;
extern struct MapHeader instructions_bonus_enemies_en;
extern struct MapHeader instructions_bonus_enemies_de;
extern struct MapHeader instructions_bonus_enemies_fr;
extern struct MapHeader instructions_bonus_enemies_es;
extern struct MapHeader instructions_bonus_enemies_it;
extern struct MapHeader hyper_eggrobo;
extern struct MapHeader unknown_laser_beam;

const Tilemap *const gTilemaps[] = {
    [0] = NULL,
    [1] = NULL,
    [2] = NULL,
    [3] = NULL,
    [4] = (Tilemap * const)&zone_1_act_special_fg0,
    [5] = (Tilemap * const)&zone_1_act_special_fg1,
    [6] = &zone_1_act_special_bg0,
    [7] = NULL,
    [8] = (Tilemap * const)&zone_1_act_hub_fg0,
    [9] = (Tilemap * const)&zone_1_act_hub_fg1,
    [10] = (Tilemap * const)&zone_1_act_hub_bg0,
    [11] = NULL,
    [12] = (Tilemap * const)&zone_1_act_1_fg0,
    [13] = (Tilemap * const)&zone_1_act_1_fg1,
    [14] = (Tilemap * const)&zone_1_act_1_bg0,
    [15] = (Tilemap * const)&zone_1_act_1_bg1,
    [16] = (Tilemap * const)&zone_1_act_2_fg0,
    [17] = (Tilemap * const)&zone_1_act_2_fg1,
    [18] = (Tilemap * const)&zone_1_act_1_bg0,
    [19] = (Tilemap * const)&zone_1_act_1_bg1,
    [20] = (Tilemap * const)&zone_1_act_3_fg0,
    [21] = (Tilemap * const)&zone_1_act_3_fg1,
    [22] = (Tilemap * const)&zone_1_act_1_bg0,
    [23] = (Tilemap * const)&zone_1_act_1_bg1,
    [24] = NULL,
    [25] = NULL,
    [26] = NULL,
    [27] = NULL,
    [28] = (Tilemap * const)&zone_1_act_boss_fg0,
    [29] = (Tilemap * const)&zone_1_act_boss_fg1,
    [30] = (Tilemap * const)&zone_1_act_1_bg0,
    [31] = NULL,
    [32] = (Tilemap * const)&zone_1_act_bonus_capsule_fg0,
    [33] = (Tilemap * const)&zone_1_act_bonus_capsule_fg1,
    [34] = (Tilemap * const)&zone_1_act_bonus_capsule_bg0,
    [35] = NULL,
    [36] = (Tilemap * const)&zone_1_act_bonus_enemy_fg0,
    [37] = (Tilemap * const)&zone_1_act_bonus_enemy_fg1,
    [38] = (Tilemap * const)&zone_1_act_bonus_capsule_bg0,
    [39] = NULL,
    [40] = NULL,
    [41] = NULL,
    [42] = NULL,
    [43] = NULL,
    [44] = (Tilemap * const)&zone_2_act_special_fg0,
    [45] = (Tilemap * const)&zone_2_act_special_fg1,
    [46] = (Tilemap * const)&zone_2_act_special_bg0,
    [47] = NULL,
    [48] = (Tilemap * const)&zone_2_act_hub_fg0,
    [49] = (Tilemap * const)&zone_2_act_hub_fg1,
    [50] = (Tilemap * const)&zone_2_act_hub_bg0,
    [51] = NULL,
    [52] = (Tilemap * const)&zone_2_act_1_fg0,
    [53] = (Tilemap * const)&zone_2_act_1_fg1,
    [54] = (Tilemap * const)&zone_2_act_1_bg0,
    [55] = (Tilemap * const)&zone_2_act_1_bg1,
    [56] = (Tilemap * const)&zone_2_act_2_fg0,
    [57] = (Tilemap * const)&zone_2_act_2_fg1,
    [58] = (Tilemap * const)&zone_2_act_1_bg0,
    [59] = (Tilemap * const)&zone_2_act_1_bg1,
    [60] = (Tilemap * const)&zone_2_act_3_fg0,
    [61] = (Tilemap * const)&zone_2_act_3_fg1,
    [62] = (Tilemap * const)&zone_2_act_1_bg0,
    [63] = (Tilemap * const)&zone_2_act_1_bg1,
    [64] = NULL,
    [65] = NULL,
    [66] = NULL,
    [67] = NULL,
    [68] = (Tilemap * const)&zone_2_act_boss_fg0,
    [69] = (Tilemap * const)&zone_2_act_boss_fg1,
    [70] = (Tilemap * const)&zone_2_act_1_bg0,
    [71] = NULL,
    [72] = (Tilemap * const)&zone_1_act_bonus_capsule_fg0,
    [73] = (Tilemap * const)&zone_1_act_bonus_capsule_fg1,
    [74] = (Tilemap * const)&zone_1_act_bonus_capsule_bg0,
    [75] = NULL,
    [76] = (Tilemap * const)&zone_2_act_bonus_enemy_fg0,
    [77] = (Tilemap * const)&zone_2_act_bonus_enemy_fg1,
    [78] = (Tilemap * const)&zone_1_act_bonus_capsule_bg0,
    [79] = NULL,
    [80] = NULL,
    [81] = NULL,
    [82] = NULL,
    [83] = NULL,
    [84] = NULL,
    [85] = NULL,
    [86] = NULL,
    [87] = NULL,
    [88] = (Tilemap * const)&zone_3_act_hub_fg0,
    [89] = (Tilemap * const)&zone_3_act_hub_fg1,
    [90] = (Tilemap * const)&zone_3_act_hub_bg0,
    [91] = NULL,
    [92] = (Tilemap * const)&zone_3_act_1_fg0,
    [93] = (Tilemap * const)&zone_3_act_1_fg1,
    [94] = (Tilemap * const)&zone_3_act_1_bg0,
    [95] = (Tilemap * const)&zone_3_act_1_bg1,
    [96] = (Tilemap * const)&zone_3_act_2_fg0,
    [97] = (Tilemap * const)&zone_3_act_2_fg1,
    [98] = (Tilemap * const)&zone_3_act_1_bg0,
    [99] = (Tilemap * const)&zone_3_act_1_bg1,
    [100] = (Tilemap * const)&zone_3_act_3_fg0,
    [101] = (Tilemap * const)&zone_3_act_3_fg1,
    [102] = (Tilemap * const)&zone_3_act_1_bg0,
    [103] = (Tilemap * const)&zone_3_act_1_bg1,
    [104] = NULL,
    [105] = NULL,
    [106] = NULL,
    [107] = NULL,
    [108] = (Tilemap * const)&zone_3_act_boss_fg0,
    [109] = (Tilemap * const)&zone_3_act_boss_fg1,
    [110] = (Tilemap * const)&zone_3_act_1_bg0,
    [111] = NULL,
    [112] = (Tilemap * const)&zone_1_act_bonus_capsule_fg0,
    [113] = (Tilemap * const)&zone_1_act_bonus_capsule_fg1,
    [114] = (Tilemap * const)&zone_1_act_bonus_capsule_bg0,
    [115] = NULL,
    [116] = (Tilemap * const)&zone_3_act_bonus_enemy_fg0,
    [117] = (Tilemap * const)&zone_3_act_bonus_enemy_fg1,
    [118] = (Tilemap * const)&zone_1_act_bonus_capsule_bg0,
    [119] = NULL,
    [120] = NULL,
    [121] = NULL,
    [122] = NULL,
    [123] = NULL,
    [124] = NULL,
    [125] = NULL,
    [126] = NULL,
    [127] = NULL,
    [128] = (Tilemap * const)&zone_4_act_hub_fg0,
    [129] = (Tilemap * const)&zone_4_act_hub_fg1,
    [130] = (Tilemap * const)&zone_4_act_hub_bg0,
    [131] = NULL,
    [132] = (Tilemap * const)&zone_4_act_1_fg0,
    [133] = (Tilemap * const)&zone_4_act_1_fg1,
    [134] = (Tilemap * const)&zone_4_act_1_bg0,
    [135] = (Tilemap * const)&zone_4_act_1_bg1,
    [136] = (Tilemap * const)&zone_4_act_2_fg0,
    [137] = (Tilemap * const)&zone_4_act_2_fg1,
    [138] = (Tilemap * const)&zone_4_act_1_bg0,
    [139] = (Tilemap * const)&zone_4_act_1_bg1,
    [140] = (Tilemap * const)&zone_4_act_3_fg0,
    [141] = (Tilemap * const)&zone_4_act_3_fg1,
    [142] = (Tilemap * const)&zone_4_act_1_bg0,
    [143] = (Tilemap * const)&zone_4_act_1_bg1,
    [144] = NULL,
    [145] = NULL,
    [146] = NULL,
    [147] = NULL,
    [148] = (Tilemap * const)&zone_4_act_boss_fg0,
    [149] = (Tilemap * const)&zone_4_act_boss_fg1,
    [150] = (Tilemap * const)&zone_4_act_1_bg0,
    [151] = NULL,
    [152] = (Tilemap * const)&zone_1_act_bonus_capsule_fg0,
    [153] = (Tilemap * const)&zone_1_act_bonus_capsule_fg1,
    [154] = (Tilemap * const)&zone_1_act_bonus_capsule_bg0,
    [155] = NULL,
    [156] = (Tilemap * const)&zone_4_act_bonus_enemy_fg0,
    [157] = (Tilemap * const)&zone_4_act_bonus_enemy_fg1,
    [158] = (Tilemap * const)&zone_1_act_bonus_capsule_bg0,
    [159] = NULL,
    [160] = NULL,
    [161] = NULL,
    [162] = NULL,
    [163] = NULL,
    [164] = NULL,
    [165] = NULL,
    [166] = NULL,
    [167] = NULL,
    [168] = (Tilemap * const)&zone_5_act_hub_fg0,
    [169] = (Tilemap * const)&zone_5_act_hub_fg1,
    [170] = (Tilemap * const)&zone_5_act_hub_bg0,
    [171] = NULL,
    [172] = (Tilemap * const)&zone_5_act_1_fg0,
    [173] = (Tilemap * const)&zone_5_act_1_fg1,
    [174] = (Tilemap * const)&zone_5_act_1_bg0,
    [175] = (Tilemap * const)&zone_5_act_1_bg1,
    [176] = (Tilemap * const)&zone_5_act_2_fg0,
    [177] = (Tilemap * const)&zone_5_act_2_fg1,
    [178] = (Tilemap * const)&zone_5_act_1_bg0,
    [179] = (Tilemap * const)&zone_5_act_1_bg1,
    [180] = (Tilemap * const)&zone_5_act_3_fg0,
    [181] = (Tilemap * const)&zone_5_act_3_fg1,
    [182] = (Tilemap * const)&zone_5_act_1_bg0,
    [183] = (Tilemap * const)&zone_5_act_1_bg1,
    [184] = NULL,
    [185] = NULL,
    [186] = NULL,
    [187] = NULL,
    [188] = (Tilemap * const)&zone_5_act_boss_fg0,
    [189] = (Tilemap * const)&zone_5_act_boss_fg1,
    [190] = (Tilemap * const)&zone_5_act_boss_bg0,
    [191] = NULL,
    [192] = (Tilemap * const)&zone_1_act_bonus_capsule_fg0,
    [193] = (Tilemap * const)&zone_1_act_bonus_capsule_fg1,
    [194] = (Tilemap * const)&zone_1_act_bonus_capsule_bg0,
    [195] = NULL,
    [196] = (Tilemap * const)&zone_5_act_bonus_enemy_fg0,
    [197] = (Tilemap * const)&zone_5_act_bonus_enemy_fg1,
    [198] = (Tilemap * const)&zone_1_act_bonus_capsule_bg0,
    [199] = NULL,
    [200] = NULL,
    [201] = NULL,
    [202] = NULL,
    [203] = NULL,
    [204] = NULL,
    [205] = NULL,
    [206] = NULL,
    [207] = NULL,
    [208] = (Tilemap * const)&zone_6_act_hub_fg0,
    [209] = (Tilemap * const)&zone_6_act_hub_fg1,
    [210] = (Tilemap * const)&zone_6_act_hub_bg0,
    [211] = NULL,
    [212] = (Tilemap * const)&zone_6_act_1_fg0,
    [213] = (Tilemap * const)&zone_6_act_1_fg1,
    [214] = (Tilemap * const)&zone_6_act_1_bg0,
    [215] = (Tilemap * const)&zone_6_act_1_bg1,
    [216] = (Tilemap * const)&zone_6_act_2_fg0,
    [217] = (Tilemap * const)&zone_6_act_2_fg1,
    [218] = (Tilemap * const)&zone_6_act_1_bg0,
    [219] = (Tilemap * const)&zone_6_act_1_bg1,
    [220] = (Tilemap * const)&zone_6_act_3_fg0,
    [221] = (Tilemap * const)&zone_6_act_3_fg1,
    [222] = (Tilemap * const)&zone_6_act_1_bg0,
    [223] = (Tilemap * const)&zone_6_act_1_bg1,
    [224] = NULL,
    [225] = NULL,
    [226] = NULL,
    [227] = NULL,
    [228] = (Tilemap * const)&zone_6_act_boss_fg0,
    [229] = (Tilemap * const)&zone_6_act_boss_fg1,
    [230] = (Tilemap * const)&zone_6_act_1_bg0,
    [231] = NULL,
    [232] = (Tilemap * const)&zone_1_act_bonus_capsule_fg0,
    [233] = (Tilemap * const)&zone_1_act_bonus_capsule_fg1,
    [234] = (Tilemap * const)&zone_1_act_bonus_capsule_bg0,
    [235] = NULL,
    [236] = (Tilemap * const)&zone_6_act_bonus_enemy_fg0,
    [237] = (Tilemap * const)&zone_6_act_bonus_enemy_fg1,
    [238] = (Tilemap * const)&zone_1_act_bonus_capsule_bg0,
    [239] = NULL,
    [240] = NULL,
    [241] = NULL,
    [242] = NULL,
    [243] = NULL,
    [244] = NULL,
    [245] = NULL,
    [246] = NULL,
    [247] = NULL,
    [248] = (Tilemap * const)&zone_7_act_hub_fg0,
    [249] = (Tilemap * const)&zone_7_act_hub_fg1,
    [250] = (Tilemap * const)&zone_7_act_hub_bg0,
    [251] = NULL,
    [252] = (Tilemap * const)&zone_7_act_1_fg0,
    [253] = (Tilemap * const)&zone_7_act_1_fg1,
    [254] = (Tilemap * const)&zone_7_act_1_bg0,
    [255] = (Tilemap * const)&zone_7_act_boss_bg0,
    [256] = (Tilemap * const)&zone_7_act_2_fg0,
    [257] = (Tilemap * const)&zone_7_act_2_fg1,
    [258] = (Tilemap * const)&zone_7_act_1_bg0,
    [259] = (Tilemap * const)&zone_7_act_boss_bg0,
    [260] = (Tilemap * const)&zone_7_act_3_fg0,
    [261] = (Tilemap * const)&zone_7_act_3_fg1,
    [262] = (Tilemap * const)&zone_7_act_1_bg0,
    [263] = (Tilemap * const)&zone_7_act_boss_bg0,
    [264] = NULL,
    [265] = NULL,
    [266] = NULL,
    [267] = NULL,
    [268] = (Tilemap * const)&zone_7_act_boss_fg0,
    [269] = (Tilemap * const)&zone_7_act_boss_fg1,
    [270] = (Tilemap * const)&zone_7_act_1_bg0,
    [271] = (Tilemap * const)&zone_7_act_boss_bg1,
    [272] = (Tilemap * const)&zone_1_act_bonus_capsule_fg0,
    [273] = (Tilemap * const)&zone_1_act_bonus_capsule_fg1,
    [274] = (Tilemap * const)&zone_1_act_bonus_capsule_bg0,
    [275] = NULL,
    [276] = (Tilemap * const)&zone_7_act_bonus_enemy_fg0,
    [277] = (Tilemap * const)&zone_7_act_bonus_enemy_fg1,
    [278] = (Tilemap * const)&zone_1_act_bonus_capsule_bg0,
    [279] = NULL,
    [280] = NULL,
    [281] = NULL,
    [282] = NULL,
    [283] = NULL,
    [284] = (Tilemap * const)&zone_final_act_altar_emerald_fg0,
    [285] = (Tilemap * const)&zone_final_act_altar_emerald_fg1,
    [286] = (Tilemap * const)&zone_final_act_altar_emerald_bg0,
    [287] = NULL,
    [288] = (Tilemap * const)&zone_final_act_nonaggression_fg0,
    [289] = (Tilemap * const)&zone_final_act_nonaggression_fg1,
    [290] = (Tilemap * const)&zone_final_act_nonaggression_bg0,
    [291] = (Tilemap * const)&zone_final_act_nonaggression_bg1,
    [TM_UNKNOWN_292] = (Tilemap * const)&unknown_292,
    [TM_UNKNOWN_293] = (Tilemap * const)&unknown_293,
    [TM_UNKNOWN_294] = (Tilemap * const)&unknown_294,
    [TM_UNKNOWN_295] = (Tilemap * const)&unknown_295,
    [TM_UNKNOWN_296] = (Tilemap * const)&unknown_296,
    [TM_UNKNOWN_297] = (Tilemap * const)&unknown_297,
    [TM_UNKNOWN_298] = (Tilemap * const)&unknown_298,
    [TM_UNKNOWN_299] = (Tilemap * const)&unknown_299,
    [TM_UNKNOWN_300] = (Tilemap * const)&unknown_300,
    [TM_UNKNOWN_301] = (Tilemap * const)&unknown_301,
    [TM_UNKNOWN_302] = (Tilemap * const)&unknown_302,
    [TM_UNKNOWN_303] = (Tilemap * const)&unknown_303,
    [TM_UNKNOWN_304] = (Tilemap * const)&unknown_304,
    [TM_MASTER_EMERALD_ALTAR] = (Tilemap * const)&master_emerald_altar,
    [TM_ALTAR_EMERALD_BG_COPY] = (Tilemap * const)&zone_final_act_altar_emerald_bg0,
    [TM_UNKNOWN_307] = (Tilemap * const)&unknown_307,
    [TM_UNKNOWN_308] = (Tilemap * const)&unknown_308,
    [TM_UNKNOWN_309] = (Tilemap * const)&unknown_309,
    [TM_UNKNOWN_310] = (Tilemap * const)&unknown_310,
    [TM_UNKNOWN_311] = (Tilemap * const)&unknown_311,
    [TM_UNKNOWN_312] = (Tilemap * const)&unknown_312,
    [TM_UNKNOWN_313] = (Tilemap * const)&unknown_313,
    [TM_UNKNOWN_314] = (Tilemap * const)&unknown_314,
    [TM_UNKNOWN_315] = (Tilemap * const)&unknown_315,
    [TM_UNKNOWN_316] = (Tilemap * const)&unknown_316,
    [TM_UNKNOWN_317] = (Tilemap * const)&unknown_317,
    [TM_UNKNOWN_318] = (Tilemap * const)&unknown_318,
    [TM_UNKNOWN_319] = (Tilemap * const)&unknown_319,
    [TM_UNKNOWN_320] = (Tilemap * const)&unknown_320,
    [TM_UNKNOWN_321] = (Tilemap * const)&unknown_321,
    [TM_UNKNOWN_322] = (Tilemap * const)&unknown_322,
    [TM_UNKNOWN_323] = (Tilemap * const)&unknown_323,
    [TM_UNKNOWN_324] = (Tilemap * const)&unknown_324,
    [TM_UNKNOWN_325] = (Tilemap * const)&unknown_325,
    [TM_UNKNOWN_326] = (Tilemap * const)&unknown_326,
    [TM_UNKNOWN_327] = (Tilemap * const)&unknown_327,
    [TM_UNKNOWN_328] = (Tilemap * const)&unknown_328,
    [TM_UNKNOWN_329] = (Tilemap * const)&unknown_329,
    [TM_UNKNOWN_330] = (Tilemap * const)&unknown_330,
    [TM_UNKNOWN_331] = (Tilemap * const)&unknown_331,
    [TM_UNKNOWN_332] = (Tilemap * const)&unknown_332,
    [TM_UNKNOWN_333] = (Tilemap * const)&unknown_333,
    [TM_UNKNOWN_334] = (Tilemap * const)&unknown_334,
    [TM_UNKNOWN_335] = (Tilemap * const)&unknown_335,
    [TM_UNKNOWN_336] = (Tilemap * const)&unknown_336,
    [TM_UNKNOWN_337] = (Tilemap * const)&unknown_337,
    [TM_UNKNOWN_338] = (Tilemap * const)&unknown_338,
    [TM_UNKNOWN_339] = (Tilemap * const)&unknown_339,
    [TM_UNKNOWN_340] = (Tilemap * const)&unknown_340,
    [TM_UNKNOWN_341] = (Tilemap * const)&unknown_341,
    [TM_UNKNOWN_342] = (Tilemap * const)&unknown_342,
    [TM_UNKNOWN_343] = (Tilemap * const)&unknown_343,
    [TM_UNKNOWN_344] = (Tilemap * const)&unknown_344,
    [TM_UNKNOWN_345] = (Tilemap * const)&unknown_345,
    [TM_UNKNOWN_346] = (Tilemap * const)&unknown_346,
    [TM_UNKNOWN_347] = (Tilemap * const)&unknown_347,
    [TM_UNKNOWN_348] = (Tilemap * const)&unknown_348,
    [TM_UNKNOWN_349] = (Tilemap * const)&unknown_349,
    [TM_UNKNOWN_350] = (Tilemap * const)&unknown_350,
    [TM_UNKNOWN_351] = (Tilemap * const)&unknown_351,
    [TM_UNKNOWN_352] = (Tilemap * const)&unknown_352,
    [TM_UNKNOWN_353] = (Tilemap * const)&unknown_353,
    [TM_UNKNOWN_354] = (Tilemap * const)&unknown_354,
    [TM_UNKNOWN_355] = (Tilemap * const)&unknown_355,
    [TM_UNKNOWN_356] = (Tilemap * const)&unknown_356,
    [TM_UNKNOWN_357] = (Tilemap * const)&unknown_357,
    [TM_UNKNOWN_358] = (Tilemap * const)&unknown_358,
    [TM_UNKNOWN_359] = (Tilemap * const)&unknown_359,
    [TM_UNKNOWN_360] = (Tilemap * const)&unknown_360,
    [TM_UNKNOWN_361] = (Tilemap * const)&unknown_361,
    [TM_UNKNOWN_362] = (Tilemap * const)&unknown_362,
    [TM_UNKNOWN_363] = (Tilemap * const)&unknown_363,
    [TM_UNKNOWN_364] = (Tilemap * const)&unknown_364,
    [TM_UNKNOWN_365] = (Tilemap * const)&unknown_365,
    [TM_UNKNOWN_366] = (Tilemap * const)&unknown_366,
    [TM_UNKNOWN_367] = (Tilemap * const)&unknown_367,
    [TM_UNKNOWN_368] = (Tilemap * const)&unknown_368,
    [TM_UNKNOWN_369] = (Tilemap * const)&unknown_369,
    [TM_UNKNOWN_370] = (Tilemap * const)&unknown_370,
    [TM_UNKNOWN_371] = (Tilemap * const)&unknown_371,
    [TM_UNKNOWN_372] = (Tilemap * const)&unknown_372,
    [TM_UNKNOWN_373] = (Tilemap * const)&unknown_373,
    [TM_UNKNOWN_374] = (Tilemap * const)&unknown_374,
    [TM_UNKNOWN_375] = (Tilemap * const)&unknown_375,
    [TM_UNKNOWN_376] = (Tilemap * const)&unknown_376,
    [TM_UNKNOWN_377] = (Tilemap * const)&unknown_377,
    [TM_UNKNOWN_378] = (Tilemap * const)&unknown_378,
    [TM_UNKNOWN_379] = (Tilemap * const)&unknown_379,
    [TM_UNKNOWN_380] = (Tilemap * const)&unknown_380,
    [TM_UNKNOWN_381] = (Tilemap * const)&unknown_381,
    [TM_UNKNOWN_382] = (Tilemap * const)&unknown_382,
    [TM_UNKNOWN_383] = (Tilemap * const)&unknown_383,
    [TM_UNKNOWN_384] = (Tilemap * const)&unknown_384,
    [TM_UNKNOWN_385] = (Tilemap * const)&unknown_385,
    [TM_UNKNOWN_386] = (Tilemap * const)&unknown_386,
    [TM_UNKNOWN_387] = (Tilemap * const)&unknown_387,
    [TM_UNKNOWN_388] = (Tilemap * const)&unknown_388,
    [TM_UNKNOWN_389] = (Tilemap * const)&unknown_389,
    [TM_UNKNOWN_390] = (Tilemap * const)&unknown_390,
    [TM_UNKNOWN_391] = (Tilemap * const)&unknown_391,
    [TM_UNKNOWN_392] = (Tilemap * const)&unknown_392,
    [TM_UNKNOWN_393] = (Tilemap * const)&unknown_393,
    [TM_UNKNOWN_394] = (Tilemap * const)&unknown_394,
    [TM_UNKNOWN_395] = (Tilemap * const)&unknown_395,
    [TM_UNKNOWN_396] = (Tilemap * const)&unknown_396,
    [TM_NOTIFICATION_PLEASE_WAIT_JP] = (Tilemap * const)&notification_please_wait_jp,
    [TM_NOTIFICATION_PLEASE_WAIT_EN] = (Tilemap * const)&notification_please_wait_en,
    [TM_NOTIFICATION_PLEASE_WAIT_DE] = (Tilemap * const)&notification_please_wait_de,
    [TM_NOTIFICATION_PLEASE_WAIT_FR] = (Tilemap * const)&notification_please_wait_fr,
    [TM_NOTIFICATION_PLEASE_WAIT_ES] = (Tilemap * const)&notification_please_wait_es,
    [TM_NOTIFICATION_PLEASE_WAIT_IT] = (Tilemap * const)&notification_please_wait_it,
    [TM_NOTIFICATION_UNLOCKED_KNUCKLES_JP] = (Tilemap * const)&notification_unlocked_knuckles_jp,
    [TM_NOTIFICATION_UNLOCKED_KNUCKLES_EN] = (Tilemap * const)&notification_unlocked_knuckles_en,
    [TM_NOTIFICATION_UNLOCKED_KNUCKLES_DE] = (Tilemap * const)&notification_unlocked_knuckles_de,
    [TM_NOTIFICATION_UNLOCKED_KNUCKLES_FR] = (Tilemap * const)&notification_unlocked_knuckles_fr,
    [TM_NOTIFICATION_UNLOCKED_KNUCKLES_ES] = (Tilemap * const)&notification_unlocked_knuckles_es,
    [TM_NOTIFICATION_UNLOCKED_KNUCKLES_IT] = (Tilemap * const)&notification_unlocked_knuckles_it,
    [TM_NOTIFICATION_UNLOCKED_CREAM_JP] = (Tilemap * const)&notification_unlocked_cream_jp,
    [TM_NOTIFICATION_UNLOCKED_CREAM_EN] = (Tilemap * const)&notification_unlocked_cream_en,
    [TM_NOTIFICATION_UNLOCKED_CREAM_DE] = (Tilemap * const)&notification_unlocked_cream_de,
    [TM_NOTIFICATION_UNLOCKED_CREAM_FR] = (Tilemap * const)&notification_unlocked_cream_fr,
    [TM_NOTIFICATION_UNLOCKED_CREAM_ES] = (Tilemap * const)&notification_unlocked_cream_es,
    [TM_NOTIFICATION_UNLOCKED_CREAM_IT] = (Tilemap * const)&notification_unlocked_cream_it,
    [TM_NOTIFICATION_UNLOCKED_AMY_JP] = (Tilemap * const)&notification_unlocked_amy_jp,
    [TM_NOTIFICATION_UNLOCKED_AMY_EN] = (Tilemap * const)&notification_unlocked_amy_en,
    [TM_NOTIFICATION_UNLOCKED_AMY_DE] = (Tilemap * const)&notification_unlocked_amy_de,
    [TM_NOTIFICATION_UNLOCKED_AMY_FR] = (Tilemap * const)&notification_unlocked_amy_fr,
    [TM_NOTIFICATION_UNLOCKED_AMY_ES] = (Tilemap * const)&notification_unlocked_amy_es,
    [TM_NOTIFICATION_UNLOCKED_AMY_IT] = (Tilemap * const)&notification_unlocked_amy_it,
    [TM_UNKNOWN_421] = (Tilemap * const)&unknown_421,
    [TM_UNKNOWN_422] = (Tilemap * const)&unknown_422,
    [TM_UNKNOWN_423] = (Tilemap * const)&unknown_423,
    [TM_UNKNOWN_424] = (Tilemap * const)&unknown_424,
    [TM_UNKNOWN_425] = (Tilemap * const)&unknown_425,
    [TM_UNKNOWN_426] = (Tilemap * const)&unknown_426,
    [TM_UNKNOWN_427] = (Tilemap * const)&unknown_427,
    [TM_UNKNOWN_428] = (Tilemap * const)&unknown_428,
    [TM_UNKNOWN_429] = (Tilemap * const)&unknown_429,
    [TM_UNKNOWN_430] = (Tilemap * const)&unknown_430,
    [TM_UNKNOWN_431] = (Tilemap * const)&unknown_431,
    [TM_UNKNOWN_432] = (Tilemap * const)&unknown_432,
    [TM_UNKNOWN_433] = (Tilemap * const)&unknown_433,
    [TM_UNKNOWN_434] = (Tilemap * const)&unknown_434,
    [TM_UNKNOWN_435] = (Tilemap * const)&unknown_435,
    [TM_UNKNOWN_436] = (Tilemap * const)&unknown_436,
    [TM_UNKNOWN_437] = (Tilemap * const)&unknown_437,
    [TM_UNKNOWN_438] = (Tilemap * const)&unknown_438,
    [TM_UNKNOWN_439] = (Tilemap * const)&unknown_439,
    [TM_UNKNOWN_440] = (Tilemap * const)&unknown_440,
    [TM_UNKNOWN_441] = (Tilemap * const)&unknown_441,
    [TM_UNKNOWN_442] = (Tilemap * const)&unknown_442,
    [TM_UNKNOWN_443] = (Tilemap * const)&unknown_443,
    [TM_UNKNOWN_444] = (Tilemap * const)&unknown_444,
    [TM_UNKNOWN_445] = (Tilemap * const)&unknown_445,
    [TM_UNKNOWN_446] = (Tilemap * const)&unknown_446,
    [TM_NOTIFICATION_CHAO_MAP_JP] = (Tilemap * const)&notification_chao_map_jp,
    [TM_NOTIFICATION_CHAO_MAP_EN] = (Tilemap * const)&notification_chao_map_en,
    [TM_NOTIFICATION_CHAO_MAP_DE] = (Tilemap * const)&notification_chao_map_de,
    [TM_NOTIFICATION_CHAO_MAP_FR] = (Tilemap * const)&notification_chao_map_fr,
    [TM_NOTIFICATION_CHAO_MAP_ES] = (Tilemap * const)&notification_chao_map_es,
    [TM_NOTIFICATION_CHAO_MAP_IT] = (Tilemap * const)&notification_chao_map_it,
    [TM_UNKNOWN_453] = (Tilemap * const)&unknown_453,
    [TM_UNKNOWN_454] = (Tilemap * const)&unknown_454,
    [TM_INSTRUCTIONS_BONUS_CAPSULE_JP] = (Tilemap * const)&instructions_bonus_capsule_jp,
    [TM_INSTRUCTIONS_BONUS_CAPSULE_EN] = (Tilemap * const)&instructions_bonus_capsule_en,
    [TM_INSTRUCTIONS_BONUS_CAPSULE_DE] = (Tilemap * const)&instructions_bonus_capsule_de,
    [TM_INSTRUCTIONS_BONUS_CAPSULE_FR] = (Tilemap * const)&instructions_bonus_capsule_fr,
    [TM_INSTRUCTIONS_BONUS_CAPSULE_ES] = (Tilemap * const)&instructions_bonus_capsule_es,
    [TM_INSTRUCTIONS_BONUS_CAPSULE_IT] = (Tilemap * const)&instructions_bonus_capsule_it,
    [TM_INSTRUCTIONS_BONUS_ENEMIES_JP] = (Tilemap * const)&instructions_bonus_enemies_jp,
    [TM_INSTRUCTIONS_BONUS_ENEMIES_EN] = (Tilemap * const)&instructions_bonus_enemies_en,
    [TM_INSTRUCTIONS_BONUS_ENEMIES_DE] = (Tilemap * const)&instructions_bonus_enemies_de,
    [TM_INSTRUCTIONS_BONUS_ENEMIES_FR] = (Tilemap * const)&instructions_bonus_enemies_fr,
    [TM_INSTRUCTIONS_BONUS_ENEMIES_ES] = (Tilemap * const)&instructions_bonus_enemies_es,
    [TM_INSTRUCTIONS_BONUS_ENEMIES_IT] = (Tilemap * const)&instructions_bonus_enemies_it,
    [TM_HYPER_EGGROBO] = (Tilemap * const)&hyper_eggrobo,
    [TM_EXTRA_BOSS_LASER] = (Tilemap * const)&zone_final_act_nonaggression_bg1,
};

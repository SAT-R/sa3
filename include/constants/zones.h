#ifndef GUARD_ZONES_H
#define GUARD_ZONES_H

#define ZONE_1      0
#define ZONE_2      1
#define ZONE_3      2
#define ZONE_4      3
#define ZONE_5      4
#define ZONE_6      5
#define ZONE_7      6
#define ZONE_FINAL  7
#define ZONE_UNUSED 8

#if (GAME == GAME_SA1)
#define ACT_X_ZONE      ACT_1
#define ACT_THE_MOON    ACT_2
#define ACT_CHAO_HUNT_A (NUM_LEVEL_IDS_SP + 0)
#define ACT_CHAO_HUNT_B (NUM_LEVEL_IDS_SP + 1)
#define ACT_CHAO_HUNT_C (NUM_LEVEL_IDS_SP + 2)
#define ACT_CHAO_HUNT_D (NUM_LEVEL_IDS_SP + 3)
#elif (GAME == GAME_SA2)
#define ACT_XX_FINAL_ZONE ACT_1
#define ACT_TRUE_AREA_53  ACT_2
#elif (GAME == GAME_SA3)
#define ACT_DUMMY         0
#define ACT_SPECIAL       1
#define ACT_SONIC_FACTORY 1
#define ACT_ALTAR_EMERALD 1
#define ACT_HUB           2
#define ACT_OVERWORLD     2
#define ACT_NONAGGRESSION 2
#define ACT_1             3
#define ACT_2             4
#define ACT_3             5
#define ACT_4             6 // Unused in final game
#define ACT_BOSS          7
#define ACT_BONUS_CAPSULE 8
#define ACT_BONUS_ENEMIES 9
#endif

#define ACT_MASK_DEFAULT_UNLOCKED ((1 << ACT_DUMMY) | (1 << ACT_SPECIAL) | (1 << ACT_HUB))

#define ACT_XX_FINAL_ZONE ACT_1
#define ACT_TRUE_AREA_53  ACT_2

#define NUM_COURSE_ZONES   7
#define ACTS_PER_ZONE      10
#define ACT_SLOTS_PER_ZONE (ACTS_PER_ZONE)

#define STAGE_ALTAR_EMERALD 71
#define STAGE_NONAGGRESSION 72

#define LEVEL_INDEX(zone, act) ((zone)*ACT_SLOTS_PER_ZONE) + (act)
#define ACT_INDEX(lvl)         ((lvl) & (ACT_SLOTS_PER_ZONE - 1))

#define NUM_LEVEL_IDS 73

#define LEVEL_TO_ZONE(level) ((level) >> 2)
// ((((level) / (ACTS_PER_ZONE + 1)) * 2) | ((level) & 1))
#define LEVEL_TO_COURSE_INDEX(level)        ((((level) / ACT_SLOTS_PER_ZONE) << 0x19 >> 0x18) | ((level)&1))
#define COURSE_LEVEL_TO_COURSE_INDEX(level) (((level) >> 1) + ((level)&1))

#define COURSE_INDEX(zone, act) (LEVEL_TO_COURSE_INDEX(LEVEL_INDEX(zone, act)))

#define CHAOS_EMERALD(zone) (1 << (zone))
#define ALL_ZONE_CHAOS_EMERALDS                                                                                                            \
    (CHAOS_EMERALD(ZONE_1) | CHAOS_EMERALD(ZONE_2) | CHAOS_EMERALD(ZONE_3) | CHAOS_EMERALD(ZONE_4) | CHAOS_EMERALD(ZONE_5)                 \
     | CHAOS_EMERALD(ZONE_6) | CHAOS_EMERALD(ZONE_7))

#define CHAOS_EMERALDS_COMPLETED CHAOS_EMERALD(7)

#if (GAME == GAME_SA1)
#define IS_BOSS_STAGE(lvl)  ((ACT_INDEX(lvl) == ACT_BOSS) || (IS_FINAL_STAGE(lvl) && (gFinalBossActive == 0)) || (IS_EXTRA_STAGE(lvl)))
#define IS_FINAL_STAGE(lvl) ((lvl) == LEVEL_INDEX(ZONE_FINAL, ACT_X_ZONE))
#define IS_EXTRA_STAGE(lvl) ((lvl) == LEVEL_INDEX(ZONE_FINAL, ACT_THE_MOON))
#elif (GAME == GAME_SA2)
#define IS_FINAL_STAGE(lvl) ((lvl) == LEVEL_INDEX(ZONE_FINAL, ACT_XX_FINAL_ZONE))
#define IS_EXTRA_STAGE(lvl) ((lvl) == LEVEL_INDEX(ZONE_FINAL, ACT_TRUE_AREA_53))
#define IS_BOSS_STAGE(lvl)  ((ACT_INDEX(lvl) == ACT_BOSS) || (IS_FINAL_STAGE(lvl) && !gFinalBossActive) || IS_EXTRA_STAGE(lvl))
#elif (GAME == GAME_SA3)
#define IS_FINAL_STAGE(lvl) ((lvl) == LEVEL_INDEX(ZONE_FINAL, ACT_ALTAR_EMERALD))
#define IS_EXTRA_STAGE(lvl) ((lvl) == LEVEL_INDEX(ZONE_FINAL, ACT_NONAGGRESSION))
#define IS_BOSS_STAGE(lvl)  ((ACT_INDEX(lvl) == ACT_BOSS) || (IS_FINAL_STAGE(lvl) && !gFinalBossActive) || IS_EXTRA_STAGE(lvl))
#endif

#define TIME(minutes, seconds) (int)(((minutes * 60.) + seconds) * GBA_FRAMES_PER_SECOND)
#define MAX_COURSE_TIME        (TIME(10, 0))

#endif // GUARD_ZONES_H
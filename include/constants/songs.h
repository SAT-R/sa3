#ifndef GUARD_CONSTANTS_SONGS_H
#define GUARD_CONSTANTS_SONGS_H

#define MUS_INTRO                    0x0
#define MUS_TITLE_SCREEN             0x1
#define MUS_MAIN_MENU                0x2
#define MUS_CHARACTER_SELECT         0x3
#define MUS_SONIC_FACTORY            0x4
#define MUS_OPTIONS                  0x5
#define MUS_OPTIONS_COPY             0x6
#define MUS_CHAO_PLAYGROUND          0x7
#define MUS_NEWGAME_INTRO            0x8
#define MUS_DUMMY__9                 0x9
#define MUS_OVERWORLD__ROUTE_99      0xA
#define MUS_OVERWORLD__SUNSET_HILL   0xB
#define MUS_OVERWORLD__OCEAN_BASE    0xC
#define MUS_OVERWORLD__TOY_KINGDOM   0xD
#define MUS_OVERWORLD__TWINKLE_SNOW  0xE
#define MUS_OVERWORLD__CYBER_TRACK   0xF
#define MUS_OVERWORLD__CHAOS_ANGEL   0x10
#define MUS_OVERWORLD__ALTAR_EMERALD 0x11 // @TODO: Find better name? (Not really an overworld in Altar Emerald's case)

#define MUS_INTACT_MUSIC_1 0x12
#define MUS_DUMMY__19      0x13

/* Act Themes */
#define MUS_ROUTE_99__ACT_1 0x14
#define MUS_ROUTE_99__ACT_2 0x15
#define MUS_ROUTE_99__ACT_3 0x16
// MUS_ROUTE_99__ACT_4           0x17 // Placeholder. One of many signs showing that 4
// Acts per Zone were most likely planned
#define MUS_SUNSET_HILL__ACT_1 0x18
#define MUS_SUNSET_HILL__ACT_2 0x19
#define MUS_SUNSET_HILL__ACT_3 0x1A
// MUS_SUNSET_HILL__ACT_4        0x1B // Placeholder/Dummy
#define MUS_OCEAN_BASE__ACT_1 0x1C
#define MUS_OCEAN_BASE__ACT_2 0x1D
#define MUS_OCEAN_BASE__ACT_3 0x1E
// MUS_OCEAN_BASE__ACT_4        0x1F // Placeholder/Dummy
#define MUS_TOY_KINGDOM__ACT_1 0x20
#define MUS_TOY_KINGDOM__ACT_2 0x21
#define MUS_TOY_KINGDOM__ACT_3 0x22
// MUS_TOY_KINGDOM__ACT_4        0x23 // Placeholder/Dummy
#define MUS_TWINKLE_SNOW__ACT_1 0x24
#define MUS_TWINKLE_SNOW__ACT_2 0x25
#define MUS_TWINKLE_SNOW__ACT_3 0x26
// MUS_TWINKLE_SNOW__ACT_4       0x27 // Placeholder/Dummy
#define MUS_CYBER_TRACK__ACT_1 0x28
#define MUS_CYBER_TRACK__ACT_2 0x29
#define MUS_CYBER_TRACK__ACT_3 0x2A
// MUS_CYBER_TRACK__ACT_4        0x2B // Placeholder/Dummy
#define MUS_CHAOS_ANGEL__ACT_1 0x2C
#define MUS_CHAOS_ANGEL__ACT_2 0x2D
#define MUS_CHAOS_ANGEL__ACT_3 0x2E
// MUS_CHAOS_ANGEL__ACT_4        0x2F // Placeholder/Dummy

#define MUS_DUMMY__48            0x30
#define MUS_DUMMY__49            0x31
#define MUS_VS__BOSS             0x32
#define MUS_VS__BOSS_PINCH       0x33
#define MUS_VS__7_BOSS           0x34
#define MUS_VS__7_BOSS_PINCH     0x35
#define MUS_VS__FINAL_BOSS       0x36
#define MUS_VS__FINAL_BOSS_PINCH 0x37
#define MUS_VS__EX_BOSS          0x38 // NONAGRESSION?
#define MUS_VS__EX_BOSS_PINCH    0x39

#define MUS_INTACT_MUSIC_2 0x3A
#define MUS_DEMO           0x3B // @TODO Better name? (this one is from soundtest)
#define MUS_EX_DEMO_1      0x3C
#define MUS_EX_DEMO_2      0x3D

#define MUS_ENDING_A      0x3E
#define MUS_ENDING_B      0x3F
#define MUS_STAFF_CREDITS 0x40

#define MUS_SPECIAL_STAGE          0x41
#define MUS_SPECIAL_STAGE_RESULT_1 0x42
#define MUS_SPECIAL_STAGE_RESULT_2 0x43

#define MUS_VS_MUSIC_1    0x44 // Checking connection
#define MUS_VS_MUSIC_2    0x45
#define MUS_VS_MUSIC_3    0x46
#define MUS_TIME_ATTACK_1 0x47 // Choose stage
#define MUS_TIME_ATTACK_2 0x48 // Try again

#define MUS_INVINCIBILITY 0x49
#define MUS_DUMMY__74     0x4A
#define MUS_DROWNING      0x4B

#define MUS_MINIGAME      0x4C
#define MUS_DUMMY__77     0x4D
#define MUS_78            0x4E
#define MUS_ENDING_A_COPY 0x4F // @TODO: Find out whether there are differences between this and MUS_ENDING_A
#define MUS_DUMMY__80     0x50
#define MUS_EMERALD_GET   0x51
#define MUS_GAME_OVER     0x52
#define MUS_1_UP          0x53
#define MUS_EXTRALIFE     0x53

#define MUS_STAGE_CLEAR_GOLD    0x54
#define MUS_STAGE_CLEAR         0x55
#define MUS_BOSS_CLEAR_GOLD     0x56
#define MUS_BOSS_CLEAR          0x57
#define MUS_FINAL_CLEAR         0x58
#define MUS_EXTRA_CLEAR         0x59
#define MUS_DUMMY__90           0x5A
#define MUS_MESSAGE             0x5B
#define MUS_SPECIAL_STAGE_CLEAR 0x5C
#define MUS_DUMMY__93           0x5D
#define MUS_DUMMY__94           0x5E
#define MUS_TIME_ATTACK_CLEAR_1 0x5F
#define MUS_TIME_ATTACK_CLEAR_2 0x60
#define MUS_VS_BGM_4            0x61
#define MUS_VS_BGM_5            0x62
#define MUS_VS_SUCCESS          0x63
#define MUS_VS_MISS             0x64
#define MUS_DUMMY__101          0x65
#define SE_RING_OLD             0x66
#define SE_CHARSELECT_SLIDE     0x67
#define SE_104                  0x68
#define SE_105                  0x69
#define SE_SELECT               0x6A
#define SE_ABORT                0x6B
#define SE_DPAD_SELECT          0x6C

// @TODO: Look up official names for moves!
#define SE_SPIN_ATTACK  0x6D
#define SE_SPIN_RELEASE 0x6E
#define SE_GROUND_SLIDE 0x6F

#define SE_GRINDING                   0x72
#define SE_STOPPING                   0x73
#define SE_JUMP                       0x74
#define SE_RING_OLD_2                 0x75
#define SE_LOST_RINGS                 0x76
#define SE_HIT_WITH_NO_RINGS          0x77
#define SE_TAILS__FLYING              0x78
#define SE_TAILS__TAIL_HIT            0x79
#define MUS_DUMMY__122                0x7A
#define MUS_DUMMY__123                0x7B
#define MUS_DUMMY__124                0x7C
#define SE_KNUCKLES__WALL_CLIMBING    0x7D
#define SE_126                        0x7E
#define MUS_DUMMY__127                0x7F
#define SE_AMY__PIKO_PIKO_NEUTRAL     0x80
#define SE_AMY__PIKO_PIKO_NEUTRAL_AIR 0x81
#define MUS_DUMMY__130                0x82
#define SE_AMY__DOWN_B                0x83
#define MUS_DUMMY__132                0x84
#define MUS_DUMMY__133                0x85
#define MUS_DUMMY__134                0x86
#define SE_GOAL_POST_OLD              0x87
#define MUS_DUMMY__136                0x88
#define MUS_DUMMY__137                0x89

#define MUS_DUMMY__140 0x8C
#define MUS_DUMMY__141 0x8D
#define SE_PAUSE       0x8E

#define MUS_DUMMY__144     0x91
#define MUS_DUMMY__145     0x92
#define MUS_DUMMY__146     0x93
#define SE_BOUNCE_PAD      0x94
#define SE_148             0x95
#define SE_ITEMBOX         0x96
#define SE_SHIELD_ACTIVATE 0x97
#define SE_CHECKPOINT      0x98
#define MUS_DUMMY__153     0x99
#define SE_SPIKES          0x9A
#define SE_SPEED_BOOSTER   0x9B
#define SE_156             0x9C
#define SE_157             0x9D
#define SE_158             0x9E

/* Dummy Entries from 0x9F to 0xA8 */

#define SE_BOUNCY_BAR 0xA9
#define SE_TRAMPOLINE 0xAA

/* Dummy Entries from 0xAB to 0xDB */

#define SE_DC         0xDC
#define SE_CHAR_BOOST 0xDD

#define MUS_DUMMY__225   0xE1
#define SE_226           0xE2
#define SE_CREAM__FLYING 0xE3
#define MUS_DUMMY__228   0xE4
#define MUS_DUMMY__229   0xE5
#define SE_AIR_TRICK_SA2 0xE6
#define SE_231           0xE7 // @TODO: Maybe water effect from SA2's intro?
#define MUS_DUMMY__232   0xE8
#define MUS_DUMMY__233   0xE9
#define MUS_DUMMY__234   0xEA
#define SE_235           0xEB
#define MUS_DUMMY__236   0xEC
#define SE_237           0xED

/* Dummy Entries from 0xEE to 0x113 */

#define SE_LAUNCH_PAD      0x114
#define SE_277             0x115
#define MUS_DUMMY__278     0x116
#define MUS_DUMMY__279     0x117
#define SE_ROTATING_HANDLE 0x118
#define SE_281             0x119
#define SE_282             0x11A

/* Dummy Entries from 0x11B to 0x121 */

#define SE_290 0x122

/* Dummy Entries from 0x123 to 0x1F3 */

// XYZ_LOW:  Low enthusiasm
// XYZ_HIGH: High enthusiasm
#define VOICE__ANNOUNCER__SONIC_ADVANCE_3 0x1F4
#define VOICE__ANNOUNCER__SONIC_LOW       0x1F5
#define VOICE__ANNOUNCER__SONIC_HIGH      0x1F6
#define VOICE__ANNOUNCER__TAILS_LOW       0x1F7
#define VOICE__ANNOUNCER__TAILS_HIGH      0x1F8
#define VOICE__ANNOUNCER__KNUCKLES_LOW    0x1F9
#define VOICE__ANNOUNCER__KNUCKLES_HIGH   0x1FA
#define VOICE__ANNOUNCER__AMY_LOW         0x1FB
#define VOICE__ANNOUNCER__AMY_HIGH        0x1FC
#define VOICE__ANNOUNCER__CREAM_LOW       0x1FD
#define VOICE__ANNOUNCER__CREAM_HIGH      0x1FE
#define VOICE__ANNOUNCER__AND             0x1FF
#define VOICE__ANNOUNCER__CONGRATULATIONS 0x200

// When Omochao gets picked up by the player...
#define SE_PICKUP_OMOCHAO_1     0x201 // This plays second
#define SE_PICKUP_OMOCHAO_2     0x202 // This plays first
#define SE_515                  0x203
#define VOICE__CHAO__COLLECTED  0x204
#define SE_SPECIAL_KEY          0x205
#define SE_SPECIAL_SPRING       0x206
#define SE_GOAL_RING            0x207
#define SE_GOAL_RING_RESULT     0x208
#define SE_BIG_WARP_RING        0x209
#define SE_BONUS_UFO            0x20A
#define SE_523                  0x20B // Bonus Capsule switch?
#define SE_BONUS_DEFEATED_ENEMY 0x20C
#define SE_BONUS_1UP_COUNTER    0x20D
#define SE_526                  0x20E
#define SE_527                  0x20F
#define SE_CREAM__CHEESE_ATTACK 0x210

#define SE_TAILS__SWIM       0x21B
#define SE_TAGACTION_CHARGED 0x21B
#define SE_TAGACTION_BUILDUP 0x21C

#define SE_ELEVATING_HANDLE 0x247

#define SE_TIMED_SWITCH 0x249

#define SE_588 0x24C

#define SE_WAGGLE_COIL 0x250

#define SE_WATER_CANNON        0x255
#define SE_ROCKET_ACCELERATING 0x256

#define SE_599 0x257

// Also used for Toy Balloon in Toy Kingdom
#define SE_MINECART_DESTROYED 0x258

#define SE_PENDULUM_HIT 0x25B

#define SE_MINECART_ROLL 0x25E
#define SE_607           0x25F

#define SE_GONDOLA 0x261

// SE_610 sounds like Knuckles climbing a wall, but is used in an IA
#define SE_610          0x262
#define SE_UFO_PLATFORM 0x263

#define VOICE__SONIC__OKAY    0x265
#define VOICE__SONIC__YEAH    0x266
#define VOICE__SONIC__WHOA    0x267
#define VOICE__SONIC__ALRIGHT 0x268

#define VOICE__TAILS__OKAY    0x269
#define VOICE__TAILS__YEAH    0x26A
#define VOICE__TAILS__UARGH   0x26B
#define VOICE__TAILS__HEHEHE  0x26C
#define VOICE__TAILS__ALRIGHT 0x26D

#define VOICE__KNUCKLES__COOL    0x26E
#define MUS_DUMMY__623           0x26F
#define VOICE__KNUCKLES__HUH     0x270
#define VOICE__KNUCKLES__HUARGH  0x271
#define VOICE__KNUCKLES__LETS_GO 0x272
#define VOICE__KNUCKLES__ALRIGHT 0x273

#define VOICE__AMY__WOOHOO 0x274
#define VOICE__AMY__HEY    0x275
#define VOICE__AMY__NO     0x276
#define VOICE__AMY__YEAH   0x277

#define VOICE__CREAM__HERE_WE_GO 0x278
#define VOICE__CREAM__YEAH       0x279
#define VOICE__CREAM__OH         0x27A
#define VOICE__CREAM__ALRIGHT    0x27B

#define VOICE__EGGMAN__OW                          0x27C
#define VOICE__EGGMAN__YOU_LITTLE                  0x27D
#define VOICE__EGGMAN__YOURE_GOING_TO_PAY_FOR_THIS 0x27E

/* Dummy entries from 0x27F to 0x298 */

#define SE_ROCKET_EXPLODING 0x299
#define SE_666              0x29A
#define SE_667              0x29B
#define SE_668              0x29C
#define SE_PHOTO_CAMERA     0x29D
#define SE_670              0x29E
#define SE_671              0x29F
#define SE_672              0x2A0
#define SE_673              0x2A1

/* Dummy entries from 0x2A2 to 0x320 */

#define MUS_VS_BGM_6             0x321
#define MUS_VS_BGM_7             0x322
#define MUS_VS_BGM_9             0x323
#define MUS_DUMMY__804           0x324
#define MUS_VS_BGM_8             0x325
#define MUS_DUMMY__806           0x326
#define MUS_DUMMY__807           0x327
#define MUS_DUMMY__808           0x328
#define MUS_DUMMY__809           0x329
#define SE_VS__SELECT            0x32A
#define SE_VS__811               0x32B
#define SE_VS__812               0x32C
#define SE_VS__813               0x32D
#define SE_VS__JUMP              0x32E
#define MUS_DUMMY__815           0x32F
#define MUS_DUMMY__816           0x330
#define MUS_DUMMY__817           0x331
#define MUS_DUMMY__818           0x332
#define SE_VS__ITEMBOX           0x333
#define SE_VS__SPRING            0x334
#define SE_VS__SPIKE             0x335
#define SE_VS__DING_DONG         0x336
#define SE_VS__823               0x337
#define MUS_DUMMY__824           0x338
#define MUS_DUMMY__825           0x339
#define SE_VS__GRINDING          0x33A
#define SE_VS__SPEED_BOOSTER     0x33B
#define VOICE_VS__CHAO_COLLECTED 0x33C

#endif

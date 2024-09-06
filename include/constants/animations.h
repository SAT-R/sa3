#ifndef GUARD_ANIMATIONS_SA3_H
#define GUARD_ANIMATIONS_SA3_H

/* Collection of animation indices for Sonic Advance 3.
 * - By JaceCear
 */

// "x_PROJ" means "projectile belonging to x"

#define ANIM_SONIC_IDLE    0
#define ANIM_CREAM_IDLE    163
#define ANIM_TAILS_IDLE    326
#define ANIM_KNUCKLES_IDLE 489
#define ANIM_AMY_IDLE      652

#define ANIM_CHAR_133 133

// UI elements etc.
#define ANIM_CHAOS_EMERALD_BIG 854
#define ANIM_ARROWUP           855

#define ANIM_CHAOMAP_EMERALD 858

#define ANIM_ACT_EMBLEM 860
/*ANIM_ACT_EMBLEM:
    0="ACT 01"
    1="ACT 02"
    2="ACT 03"
    3="ACT 04"
    4="VS BOSS"
*/

#define ANIM_CHARACTER_NAMES 861
/*ANIM_CHARACTER_NAMES:
    0="SONIC"
*/

#define ANIM_ACT_MEDALS 862
/*ANIM_ACT_MEDALS:
    0=Gold
    1=Silver
    2=Bronze
*/

#define ANIM_ACT_NAMES_JP 863
// 864: White ???
#define ANIM_ACT_NAMES_ENG 865

// Interactables
#define ANIM_SPRING                   866
#define ANIM_LAUNCH_RING              867
#define ANIM_BOOSTER                  868
#define ANIM_SPIKES                   869
#define ANIM_RAMP                     870
#define ANIM_PLATFORM_R99             871
#define ANIM_ZONE_TELEPORT            872
#define ANIM_BOUNCY_BAR               873
#define ANIM_ROTATING_HANDLE          874
#define ANIM_CHECKPOINT               875
#define ANIM_HANG_HANDLE              876
#define ANIM_PLATFORM_2               877
#define ANIM_TRAMPOLINE               878
#define ANIM_PLATFORM_WITH_SWITCH_W01 879
#define ANIM_SPRING_WITH_SWITCH       880
#define ANIM_BREAKABLE_WALL           881
#define ANIM_ROCK                     882
#define ANIM_FLAT_SPRING              883
#define ANIM_PLATFORM_RAISING_WHEEL   884 // 0: Still, 1: Rotating, 2: Platform
#define ANIM_SEESAW                   885
#define ANIM_YELLOW_SPRING_SH         886

#define ANIM_BUNGEE_CORD   891
#define ANIM_SUNSET_BRIDGE 892
#define ANIM_WAGGLE_COIL   894

#define ANIM_PLATFORM_SH       897
#define ANIM_TRANSFER_PLATFORM 898

#define ANIM_DEATH_CRUSHER_SPIKED 903
#define ANIM_PLATFORM_OB          904
#define ANIM_DEATH_CRUSHER        905
//#define ANIM_PLATFORM_CRUMBLE 906
#define ANIM_PLATFORM_CRUMBLE          907
#define ANIM_PROPELLER_BUTTON_PLATFORM 908

#define ANIM_LAUNCHER_TS       910
#define ANIM_FACTORY_RING      911
#define ANIM_SPECIAL_SPRING    912
#define ANIM_BONUS_UFO         913
#define ANIM_BONUS_UFO_RAY     914
#define ANIM_ROCKET            915
#define ANIM_CIRCLE_THINGY     916
#define ANIM_TOY_BALLOON       917
#define ANIM_SPRING_IN_A_BOX   918
#define ANIM_PANDA_CART        919
#define ANIM_PENDULUM          920
#define ANIM_PLATFORM_SPIKED   921
#define ANIM_ICE_SPIKE         922
#define ANIM_LAUNCHER_TS      923
#define ANIM_CHARGE_LAUNCHER   924
#define ANIM_MINECART          925
#define ANIM_AIR_BUBBLES       926
#define ANIM_ATTACHED_PLATFORM 927
#define ANIM_GONDOLA           928
#define ANIM_FALLING_BOULDER   929
#define ANIM_SQUEEZER          930
#define ANIM_UFO_PLATFORM      931
#define ANIM_PLATFORM_CA       932
#define ANIM_FALL_PLATFORM_CA  933
#define ANIM_WATER_SPLASH      934

#define ANIM_MAZE_LAUNCHER 940
/* ANIM_MAZE_LAUNCHER:
    0=Std
    1=Blink Left
    2=Blink Right
    3=Downward std
    6=Corner
    7=Un-Launcher
*/

#define ANIM_PENDULUM_CYBER 943
#define ANIM_MUD_FX         945

#define ANIM_GOAL_RING 948

#define ANIM_TOY_BALLOON_POPPED 976
#define ANIM_OMOCHAO0           977
#define ANIM_OMOCHAO1           978
#define ANIM_OMOCHAO2           979
#define ANIM_OMOCHAO3           980
#define ANIM_OMOCHAO4           981
#define ANIM_OMOCHAO5           982
#define ANIM_ACT_RING           983
/* ANIM_ACT_RINGS:
    0=Act 1
    1=Act 2
    2=Act 3
    3=Crown (completed stage)
*/

#define ANIM_PLATFORM_CA_ACT3         986
#define ANIM_SPRING_TK                987
#define ANIM_SPIKES_TK                988
#define ANIM_PLATFORM_WITH_SWITCH_W02 989
#define ANIM_PLATFORM_WITH_SWITCH_W03 990
#define ANIM_PLATFORM_WITH_SWITCH_W04 991
#define ANIM_PLATFORM_WITH_SWITCH_W05 992
#define ANIM_PLATFORM_WITH_SWITCH_W06 993
#define ANIM_PLATFORM_WITH_SWITCH_W07 994
#define ANIM_SPRING_WITH_SWITCH_2     995

#define ANIM_FINALZONE_RING 996

// ANIM_MUD_FX with lighter colors, only used in Chaos Angel
#define ANIM_MUD_FX_CHAOS_ANGEL 999

#define ANIM_CHAO_SITTING  1004
#define ANIM_CHAO_STANDING 1005
#define ANIM_CHAO_WALKING  1006
// Variant 0: PRESS START
// Variant 1: GBA COLOR SETTING
// Variant 2: GBA SP COLOR SETTING
#define ANIM_TITLE_PRESS_START_JP 1007
#define ANIM_TITLE_COPYRIGHT      1008
// Variant 0: PRESS START
// Variant 1: GBA COLOR SETTING
// Variant 2: GBA SP COLOR SETTING
#define ANIM_TITLE_PRESS_START_EN 1009
#define ANIM_TITLE_PRESS_START_DE 1010
#define ANIM_TITLE_PRESS_START_FR 1011
#define ANIM_TITLE_PRESS_START_ES 1012
#define ANIM_TITLE_PRESS_START_IT 1012

#define ANIM_UI_PROMPT_BUTTON 1042

#define ANIM_SOUNDTEST_DIGITS  1043
#define ANIM_SOUNDTEST_WHEEL   1044
#define ANIM_SOUNDTEST_PLAY    1045
#define ANIM_SOUNDTEST_STOP_EN 1046
#define ANIM_SOUNDTEST_BACK_EN 1047
#define ANIM_SOUNDTEST_STOP_FR 1046
#define ANIM_SOUNDTEST_BACK_FR 1047
#define ANIM_SOUNDTEST_STOP_DE 1046
#define ANIM_SOUNDTEST_BACK_DE 1047
#define ANIM_SOUNDTEST_STOP_ES 1046
#define ANIM_SOUNDTEST_BACK_ES 1047
#define ANIM_SOUNDTEST_STOP_IT 1046
#define ANIM_SOUNDTEST_BACK_IT 1047

#define ANIM_RING_SP_STAGE 1117

#define ANIM_BONUS_CAPSULE 1154

// SA3 - Enemies
#define ANIM_SPINNER  1166
#define ANIM_CONDOR   1167
#define ANIM_AKATENTO 1168
#define ANIM_AOTENTO  1169

#define ANIM_APE 1171

#define ANIM_FROG     1173
#define ANIM_MINIMOLE 1174
#define ANIM_BUZZER   1175

#define ANIM_JOUSUN  1177 /* Green Plane */
#define ANIM_TAKKON  1178 /* Red Octopus */
#define ANIM_UUTSUBO 1179 /* Yellow Eel */

#define ANIM_BUBU          1181
#define ANIM_GAOGAO        1182
#define ANIM_GUARD         1183
#define ANIM_GUARD_PROJ    1184
#define ANIM_JUGGLING      1185
#define ANIM_JUGGLING_PROJ 1186

#define ANIM_GINPE       1187 /* Penguin */
#define ANIM_GINPE_PROJ  1188
#define ANIM_PUFFER      1189
#define ANIM_PUFFER_PROJ 1190

// Crab with spin projectile (which isn't its own anim?)
#define ANIM_YADOKKA       1191
#define ANIM_SNOWMAN       1192
#define ANIM_SNOWMAN_PROJ  1193
#define ANIM_KYACCHAA      1194 /* Spider */
#define ANIM_KYACCHAA_PROJ 1195
#define ANIM_GURUGURU      1196
#define ANIM_KAMAKI        1197 /* Mantis */
#define ANIM_KAMAKI_PROJ   1198
#define ANIM_CLAMP         1199
#define ANIM_CLAMP_PROJ    1200
#define ANIM_MARRUN        1201
#define ANIM_MUUGADEN      1202
#define ANIM_MUUGADEN_PART 1203
#define ANIM_MUUGADEN_PROJ 1204

#define ANIM_ITEMBOX_TYPE 1315
#define ANIM_ITEMBOX      1316

#define ANIM_RING                1333
#define ANIM_RING_COLLECT_EFFECT 1334

#define ANIM_SPECIAL_KEY 1348

#define ANIM_ZONEX_NAME 1424 /* Substate-Index == Zone number */

#endif // GUARD_ANIMATIONS_SA3_H

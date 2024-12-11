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

// Rescued animals
#define ANIM_ANIMAL 840

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
#define ANIM_SPRING                    866
#define ANIM_DASH_RING                 867
#define ANIM_BOOSTER                   868
#define ANIM_SPIKES                    869
#define ANIM_RAMP                      870
#define ANIM_PLATFORM_1_1              871
#define ANIM_ZONE_WARP                 872
#define ANIM_BOUNCY_BAR                873
#define ANIM_ROTATING_HANDLE           874
#define ANIM_CHECKPOINT                875
#define ANIM_LIFT                      876
#define ANIM_PLATFORM_CRUMBLING_1      877
#define ANIM_TRAMPOLINE                878
#define ANIM_BUTTON_BLUE               879
#define ANIM_BUTTON_SPRING_1           880 // Has both the spring and the Red Button GFX
#define ANIM_BREAKABLE_WALL_1          881
#define ANIM_DECO_ROCK                 882
#define ANIM_FLAT_SPRING               883
#define ANIM_PLATFORM_RAISING_WHEEL    884 // 0: Still, 1: Rotating, 2: Platform
#define ANIM_SEESAW_1                  885
#define ANIM_ACCORDION_SPRING_2        886
#define ANIM_PLATFORM_LONG_2_1         888
#define ANIM_PLATFORM_2                889
#define ANIM_PLATFORM_LONG_2_2         890
#define ANIM_BUNGEE_CORD               891
#define ANIM_SUNSET_BRIDGE             892
#define ANIM_PLATFORM_2_2              893
#define ANIM_WAGGLE_COIL               894
#define ANIM_BREAKABLE_WALL_2          895
#define ANIM_PLATFORM_CRUMBLING_2      896
#define ANIM_PLATFORM_SH               897
#define ANIM_PLATFORM_ON_A_PATH_3      898
#define ANIM_BREAKABLE_WALL_3          899
#define ANIM_PLATFORM_3_0              900
#define ANIM_SUCTION_3_VERTICAL        901
#define ANIM_SUCTION_3_HORIZONTAL      902
#define ANIM_DEATH_CRUSHER_SPIKED      903
#define ANIM_DEATH_CRUSHER_NO_LED      904
#define ANIM_DEATH_CRUSHER             905
#define ANIM_PLATFORM_CRUMBLING_3_IDLE 906 // Might instead be ANIM_PLATFORM_FALLING_3 ?
#define ANIM_PLATFORM_CRUMBLING_3      907
#define ANIM_PROPELLER_BUTTON_PLATFORM 908
#define ANIM_PLATFORM_SQUARE_3         909
#define ANIM_WATER_CANNON              910
#define ANIM_FACTORY_RING              911
#define ANIM_SPECIAL_SPRING            912
#define ANIM_BONUS_UFO                 913
#define ANIM_BONUS_UFO_RAY             914
#define ANIM_ROCKET                    915
#define ANIM_FERRIS_WHEEL              916
#define ANIM_TOY_BALLOON               917
#define ANIM_SPRING_IN_A_BOX           918
#define ANIM_PANDA_CART                919
#define ANIM_PENDULUM                  920
#define ANIM_PLATFORM_SPIKED           921
#define ANIM_ICE_SPIKE                 922
#define ANIM_ICE_LAUNCHER              923
#define ANIM_WINDUP_BLOCK              924
#define ANIM_MINECART                  925
#define ANIM_AIR_BUBBLES               926
#define ANIM_ATTACHED_PLATFORM         927
#define ANIM_GONDOLA                   928
#define ANIM_BOULDER                   929
#define ANIM_CLOSING_WALL              930
#define ANIM_UFO_PLATFORM              931
#define ANIM_PLATFORM_CA               932
#define ANIM_FALL_PLATFORM_CA          933
#define ANIM_WATER_CANNON_SPLASH       934
#define ANIM_PLATFORM_CRUMBLING_7      935
#define ANIM_SPRING_6                  936
#define ANIM_PLATFORM_CRUMBLING_6      938
#define ANIM_SPRING_PLATFORM_6         939

#define ANIM_MAZE 940
/* ANIM_MAZE:
    0=Std
    1=Blink Left
    2=Blink Right
    3=Downward std
    6=Corner
    7=Un-Launcher
*/

#define ANIM_ACCORDION_SPRING_6   941
#define ANIM_PLATFORM_ON_A_PATH_6 942
#define ANIM_PENDULUM_CYBER       943
#define ANIM_MUD_FX               945

#define ANIM_GOAL_RING                 948
#define ANIM_SUCTION_VERTICAL          949
#define ANIM_SUCTION_HORIZONTAL        950
#define ANIM_PLATFORM_CRUMBLING_4      951
#define ANIM_PLATFORM_CRUMBLING_5      952
#define ANIM_BREAKABLE_WALL_4          953
#define ANIM_BREAKABLE_WALL_5          954
#define ANIM_SUCTION_STREAM_HORIZONTAL 955
#define ANIM_SUCTION_STREAM_VERTICAL   956
#define ANIM_BREAKABLE_WALL_6          966
#define ANIM_PLATFORM_CRUMBLE_6        967
#define ANIM_SEESAW_3                  968
#define ANIM_WINDUP_BLOCK_7            969
#define ANIM_PLATFORM_TS               974
#define ANIM_TOY_BALLOON_POPPED        976
#define ANIM_OMOCHAO0                  977
#define ANIM_OMOCHAO1                  978
#define ANIM_OMOCHAO2                  979
#define ANIM_OMOCHAO3                  980
#define ANIM_OMOCHAO4                  981
#define ANIM_OMOCHAO5                  982
#define ANIM_ACT_RING                  983
/* ANIM_ACT_RINGS:
    0=Act 1
    1=Act 2
    2=Act 3
    3=Crown (completed stage)
*/

#define ANIM_SPRING_PLATFORM_4        984
#define ANIM_SLOW_LIFT_7              986
#define ANIM_SPRING_4                 987
#define ANIM_SPIKES_4                 988
#define ANIM_PLATFORM_WITH_SWITCH_W02 989
#define ANIM_PLATFORM_WITH_SWITCH_W03 990
#define ANIM_PLATFORM_WITH_SWITCH_W04 991
#define ANIM_PLATFORM_WITH_SWITCH_W05 992
#define ANIM_PLATFORM_WITH_SWITCH_W06 993
#define ANIM_PLATFORM_WITH_SWITCH_W07 994
#define ANIM_BUTTON_SPRING_6          995

#define ANIM_FINALZONE_RING 996
#define ANIM_PLATFORM_BONUS 997

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

#define ANIM_BONUS_CAPSULE         1154
#define ANIM_BONUS_CAPSULE_POINTS  1155
#define ANIM_BONUS_CAPSULE_SWITCH  1156
#define ANIM_BONUS_UI_EXCLAMATION  1157
#define ANIM_BONUS_UI_COUNTDOWN    1158
#define ANIM_BONUS_UI_TIMER_DIGITS 1159
#define ANIM_BONUS_UI_SCORE        1160
#define ANIM_BONUS_UI_FLOWER       1163
#define ANIM_BONUS_UI_BAR          1164
#define ANIM_BONUS_UI_X            1165

// SA3 - Enemies
#define ANIM_SPINNER     1166
#define ANIM_CONDOR      1167
#define ANIM_AKATENTO    1168
#define ANIM_AOTENTO     1169
#define ANIM_CONDOR_PROJ 1170
#define ANIM_APE         1171

#define ANIM_FROG     1173
#define ANIM_MINIMOLE 1174
#define ANIM_BUZZER   1175

#define ANIM_JOUSUN        1177 /* Green Plane */
#define ANIM_TAKKON        1178 /* Red Octopus */
#define ANIM_UUTSUBO       1179 /* Yellow Eel */
#define ANIM_TAKKON_PROJ   1180
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

#define ANIM_ITEM_BOX_TYPE 1315
#define ANIM_ITEM_BOX      1316

#define ANIM_RING                  1333
#define ANIM_RING_COLLECT_EFFECT   1334
#define ANIM_ITEM_BOX_CLOUD_EFFECT 1338
#define ANIM_CONDOR_PROJ_EXPLOSION 1339

#define ANIM_ICE_SHIVER  1344
#define ANIM_SPECIAL_KEY 1348

#define ANIM_LIFE_ICONS 1423
#define ANIM_ZONEX_NAME 1424 /* Substate-Index == Zone number */

#endif // GUARD_ANIMATIONS_SA3_H

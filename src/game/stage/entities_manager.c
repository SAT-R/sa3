#include "global.h"
#include "core.h"
#include "task.h"

#include "malloc_ewram.h"
#include "malloc_vram.h"

// TODO: Merge with below include-block
#include "game/camera.h"
#include "game/game.h"
#include "game/sa1_sa2_shared/entities_manager.h"
#include "game/stage.h"

#include "constants/zones.h"

#include "lib/m4a/m4a.h"

#if 0
#include "game/shared/stage/camera.h"
#include "game/shared/stage/entity.h"
#include "game/shared/stage/entities_manager.h"
#include "game/shared/stage/enemy_defeat_score.h"
#include "game/sa2/stage/itembox.h"

#include "game/sa2/stage/interactables/platform_thin.h"
#include "game/sa2/stage/interactables/ceiling_slope.h"
#include "game/sa2/stage/interactables/grind_rail.h"
#include "game/sa2/stage/interactables/platform_square.h"
#include "game/sa2/stage/interactables/platform.h"
#include "game/sa2/stage/interactables/ramp.h"
#include "game/sa2/stage/interactables/slidy_ice.h"
#include "game/sa2/stage/interactables/spring.h"
#include "game/sa2/stage/interactables/pipe.h"

#include "game/sa2/stage/interactables/leaf_forest/windmill.h"
#include "game/sa2/stage/interactables/leaf_forest/checkpoint.h"
#include "game/sa2/stage/interactables/leaf_forest/gapped_loop.h"
#include "game/sa2/stage/interactables/leaf_forest/stage_goal.h"
#include "game/sa2/stage/interactables/leaf_forest/corkscrew.h"
#include "game/sa2/stage/interactables/leaf_forest/corkscrew_3d.h"
#include "game/sa2/stage/interactables/leaf_forest/incline_ramp.h"
#include "game/sa2/stage/interactables/leaf_forest/toggle_player_layer.h"
#include "game/sa2/stage/interactables/leaf_forest/bouncy_bar.h"
#include "game/sa2/stage/interactables/leaf_forest/spring_bouncy.h"
#include "game/sa2/stage/interactables/leaf_forest/rotating_handle.h"
#include "game/sa2/stage/interactables/leaf_forest/platform_crumbling.h"
#include "game/sa2/stage/interactables/leaf_forest/spikes.h"
#include "game/sa2/stage/interactables/leaf_forest/booster.h"
#include "game/sa2/stage/interactables/leaf_forest/decoration.h"

#include "game/sa2/stage/interactables/hot_crater/crane.h"
#include "game/sa2/stage/interactables/hot_crater/dash_ring.h"
#include "game/sa2/stage/interactables/hot_crater/windup_stick.h"
#include "game/sa2/stage/interactables/hot_crater/floating_spring.h"
#include "game/sa2/stage/interactables/hot_crater/turnaround_bar.h"
#include "game/sa2/stage/interactables/hot_crater/hook_rail.h"

#include "game/sa2/stage/interactables/music_plant/note_sphere.h"
#include "game/sa2/stage/interactables/music_plant/pipe_horn.h"
#include "game/sa2/stage/interactables/music_plant/french_horn.h"
#include "game/sa2/stage/interactables/music_plant/keyboard.h"
#include "game/sa2/stage/interactables/music_plant/note_block.h"
#include "game/sa2/stage/interactables/music_plant/chord.h"
#include "game/sa2/stage/interactables/music_plant/german_flute.h"

#include "game/sa2/stage/interactables/ice_paradise/big_snowball.h"
#include "game/sa2/stage/interactables/ice_paradise/funnel_sphere.h"
#include "game/sa2/stage/interactables/ice_paradise/half_pipe.h"
#include "game/sa2/stage/interactables/ice_paradise/slowing_snow.h"

#include "game/sa2/stage/interactables/sky_canyon/propeller.h"
#include "game/sa2/stage/interactables/sky_canyon/fan.h"
#include "game/sa2/stage/interactables/sky_canyon/small_windmill.h"
#include "game/sa2/stage/interactables/sky_canyon/whirlwind.h"
#include "game/sa2/stage/interactables/sky_canyon/propeller_spring.h"

#include "game/sa2/stage/interactables/techno_base/light_globe.h"
#include "game/sa2/stage/interactables/techno_base/light_bridge.h"
#include "game/sa2/stage/interactables/techno_base/arrow_platform.h"
#include "game/sa2/stage/interactables/techno_base/spike_platform.h"
#include "game/sa2/stage/interactables/techno_base/bounce_block.h"

#include "game/sa2/stage/interactables/egg_utopia/pole.h"
#include "game/sa2/stage/interactables/egg_utopia/flying_handle.h"
#include "game/sa2/stage/interactables/egg_utopia/gravity_toggle.h"
#include "game/sa2/stage/interactables/egg_utopia/cannon.h"
#include "game/sa2/stage/interactables/egg_utopia/iron_ball.h"
#include "game/sa2/stage/interactables/egg_utopia/speeding_platform.h"
#include "game/sa2/stage/interactables/egg_utopia/launcher.h"

#include "game/sa2/stage/interactables/note_particle.h"
#include "game/sa2/stage/interactables/105.h"
#include "game/sa2/stage/interactables/special_ring.h"
#include "game/sa2/stage/interactables/collect_rings_lap_trigger.h"
#include "game/sa2/stage/interactables/sky_canyon_init.h"

#include "game/sa2/stage/mystery_itembox.h"

#include "game/sa2/stage/enemies/kiki.h"
#include "game/sa2/stage/enemies/kura_kura.h"
#include "game/sa2/stage/enemies/flickey.h"
#include "game/sa2/stage/enemies/kubinaga.h"
#include "game/sa2/stage/enemies/hammerhead.h"
#include "game/sa2/stage/enemies/bullet_buzzer.h"
#include "game/sa2/stage/enemies/circus.h"
#include "game/sa2/stage/enemies/yado.h"
#include "game/sa2/stage/enemies/pen.h"
#include "game/sa2/stage/enemies/gohla.h"
#include "game/sa2/stage/enemies/bell.h"
#include "game/sa2/stage/enemies/straw.h"
#include "game/sa2/stage/enemies/kyura.h"
#include "game/sa2/stage/enemies/balloon.h"
#include "game/sa2/stage/enemies/mouse.h"
#include "game/sa2/stage/enemies/koura.h"
#include "game/sa2/stage/enemies/madillo.h"
#include "game/sa2/stage/enemies/piko_piko.h"
#include "game/sa2/stage/enemies/geji_geji.h"
#include "game/sa2/stage/enemies/star.h"
#include "game/sa2/stage/enemies/mon.h"
#include "game/sa2/stage/enemies/buzzer.h"
#include "game/sa2/stage/enemies/spinner.h"

#include "game/sa2/assets/compressed/entities.h"

#include "constants/sa2/zones.h"
#include "constants/sa2/songs.h"
#endif

#define NUM_ENEMY_DEFEAT_SCORES          5
#define READ_START_INDEX(p, hrc, rx, ry) (*((u32 *)((((u8 *)(p)) + (((hrc) * (ry)) * (sizeof(u32)))) + ((rx) * (sizeof(u32))))))

typedef struct Task *(*StagePreInitFunc)(void);
typedef void (*MapEntityInit)(MapEntity *, u16, u16, u8);

typedef struct Range {
    CamCoord xLow, yLow;
    CamCoord xHigh, yHigh;
} Range;

typedef struct EntitiesStruct {
    /* 0x00 */ u16 currentRegionX;
    /* 0x02 */ u16 currentRegionY;
    /* 0x04 */ s32 regionsX; // number of regions of current map on X-axis
    /* 0x08 */ s32 regionsY; // number of regions of current map on Y-axis
    /* 0x0C */ MapEntity *me;
    /* 0x10 */ u8 filler10[0x8];
    /* 0x18 */ s32 entityIdInRegion;
    /* 0x1C */ s32 worldX;
    /* 0x20 */ s32 worldY;
    /* 0x24 */ Range range1;
    /* 0x34 */ Range range2;

    // NOTE: These point to an offset table in the respective entity data.
    //       The offsets point to each camera region's entities block.
    //       The table size is defined by the decompressed entity data.
    //
    // TODO: Add reference to and improve this explanation!
    /* 0x44 */ u32 *enemies;
    /* 0x48 */ u32 *interactables; // aka "gimmicks"
    /* 0x4C */ u32 *items;
} EntitiesStruct; /* 0x50 */

typedef void (*EntityFunc)(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern EntityFunc gSpriteInits_Interactables[];

void Task_EntitiesManagerInit(void);
void InitEntity_Interactable(u16 param0, EntitiesStruct *es);
void sub_802BDE4(u16 param0, u16 *param1);
void sub_802BEE4(u16 param0, u16 *param1);
void sub_802BFA4(u16 param0, u16 *param1);
void SpawnMapEntities(void);

extern const RLCompressed *const gSpritePosData_interactables[NUM_LEVEL_IDS];
extern const RLCompressed *const gSpritePosData_itemboxes[NUM_LEVEL_IDS];
extern const RLCompressed *const gSpritePosData_enemies[NUM_LEVEL_IDS];
extern const RLCompressed gUnk_singlepak_rl_data[];
extern const u8 gUnknown_0203F000[];

#if 0
#ifndef COLLECT_RINGS_ROM
static void TaskDestructor_EntitiesManager(struct Task *);

const RLCompressed *const gSpritePosData_interactables[NUM_LEVEL_IDS] = {
    (void *)&zone1_act1_interactables,
    (void *)&zone1_act2_interactables,
    (void *)&zone1_boss_interactables,
    (void *)&zone1_act2_interactables,

    (void *)&zone2_act1_interactables,
    (void *)&zone2_act2_interactables,
    (void *)&zone2_boss_interactables,
    (void *)&zone2_act2_interactables,

    (void *)&zone3_act1_interactables,
    (void *)&zone3_act2_interactables,
    (void *)&zone3_boss_interactables,
    (void *)&zone3_act2_interactables,

    (void *)&zone4_act1_interactables,
    (void *)&zone4_act2_interactables,
    (void *)&zone4_boss_interactables,
    (void *)&zone4_act2_interactables,

    (void *)&zone5_act1_interactables,
    (void *)&zone5_act2_interactables,
    (void *)&zone5_boss_interactables,
    (void *)&zone5_act2_interactables,

    (void *)&zone6_act1_interactables,
    (void *)&zone6_act2_interactables,
    (void *)&zone6_boss_interactables,
    (void *)&zone6_act2_interactables,

    (void *)&zone7_act1_interactables,
    (void *)&zone7_act2_interactables,
    (void *)&zone7_boss_interactables,
    (void *)&zone7_act2_interactables,

    (void *)&zone8_act1_interactables,
    (void *)&zone8_act2_interactables,
    (void *)&zone8_boss_interactables,
    NULL,
    NULL,
    NULL,
};

const RLCompressed *const gSpritePosData_itemboxes[] = {
    (void *)&zone1_act1_itemboxes,
    (void *)&zone1_act2_itemboxes,
    (void *)&zone1_boss_itemboxes,
    (void *)&zone1_act2_itemboxes,

    (void *)&zone2_act1_itemboxes,
    (void *)&zone2_act2_itemboxes,
    (void *)&zone2_boss_itemboxes,
    (void *)&zone2_act2_itemboxes,

    (void *)&zone3_act1_itemboxes,
    (void *)&zone3_act2_itemboxes,
    (void *)&zone3_boss_itemboxes,
    (void *)&zone3_act2_itemboxes,

    (void *)&zone4_act1_itemboxes,
    (void *)&zone4_act2_itemboxes,
    (void *)&zone4_boss_itemboxes,
    (void *)&zone4_act2_itemboxes,

    (void *)&zone5_act1_itemboxes,
    (void *)&zone5_act2_itemboxes,
    (void *)&zone5_boss_itemboxes,
    (void *)&zone5_act2_itemboxes,

    (void *)&zone6_act1_itemboxes,
    (void *)&zone6_act2_itemboxes,
    (void *)&zone6_boss_itemboxes,
    (void *)&zone6_act2_itemboxes,

    (void *)&zone7_act1_itemboxes,
    (void *)&zone7_act2_itemboxes,
    (void *)&zone7_boss_itemboxes,
    (void *)&zone7_act2_itemboxes,

    (void *)&zone8_act1_itemboxes,
    (void *)&zone8_act2_itemboxes,
    (void *)&zone8_boss_itemboxes,
    NULL,
    NULL,
    NULL,
};
const RLCompressed *const gSpritePosData_enemies[] = {
    (void *)&zone1_act1_enemies,
    (void *)&zone1_act2_enemies,
    (void *)&zone1_boss_enemies,
    (void *)&zone1_act2_enemies,

    (void *)&zone2_act1_enemies,
    (void *)&zone2_act2_enemies,
    (void *)&zone2_boss_enemies,
    (void *)&zone2_act2_enemies,

    (void *)&zone3_act1_enemies,
    (void *)&zone3_act2_enemies,
    (void *)&zone3_boss_enemies,
    (void *)&zone3_act2_enemies,

    (void *)&zone4_act1_enemies,
    (void *)&zone4_act2_enemies,
    (void *)&zone4_boss_enemies,
    (void *)&zone4_act2_enemies,

    (void *)&zone5_act1_enemies,
    (void *)&zone5_act2_enemies,
    (void *)&zone5_boss_enemies,
    (void *)&zone5_act2_enemies,

    (void *)&zone6_act1_enemies,
    (void *)&zone6_act2_enemies,
    (void *)&zone6_boss_enemies,
    (void *)&zone6_act2_enemies,

    (void *)&zone7_act1_enemies,
    (void *)&zone7_act2_enemies,
    (void *)&zone7_boss_enemies,
    (void *)&zone7_act2_enemies,

    (void *)&zone8_act1_enemies,
    (void *)&zone8_act2_enemies,
    (void *)&zone8_boss_enemies,
    NULL,
    NULL,
    NULL,
};

const MapEntityInit gSpriteInits_Interactables[] = {
    CreateEntity_Toggle_PlayerLayer,
    CreateEntity_Toggle_PlayerLayer,
    CreateEntity_Platform,
    CreateEntity_Spring_Normal_Up,
    CreateEntity_Spring_Normal_Down,
    CreateEntity_Spring_Normal_Right,
    CreateEntity_Spring_Normal_Left,
    CreateEntity_Spring_Big_UpLeft,
    CreateEntity_Spring_Big_UpRight,
    CreateEntity_Spring_Big_DownRight,
    CreateEntity_Spring_Big_DownLeft,
    CreateEntity_Spring_Small_UpRight,
    CreateEntity_Spring_Small_UpLeft,
    CreateEntity_PlatformThin,
    CreateEntity_Decoration,
    CreateEntity_Ramp,
    CreateEntity_Booster,
    CreateEntity_InclineRamp,
    CreateEntity_BouncySpring,
    CreateEntity_PlatformCrumbling,
    CreateEntity_RotatingHandle,
    CreateEntity_GappedLoop_Start,
    CreateEntity_GappedLoop_End,
    CreateEntity_Spikes_Up,
    CreateEntity_Spikes_Down,
    CreateEntity_Spikes_LeftRight,
    CreateEntity_Spikes_LeftRight,
    CreateEntity_Spikes_HidingUp,
    CreateEntity_Spikes_HidingDown,
    CreateEntity_Corkscrew_Start,
    CreateEntity_Corkscrew_End,
    CreateEntity_BouncyBar,
    CreateEntity_GrindRail_Start,
    CreateEntity_GrindRail_StartAir,
    CreateEntity_GrindRail_EndGround,
    CreateEntity_GrindRail_End_ForcedJump,
    CreateEntity_GrindRail_EndAlternate,
    CreateEntity_GrindRail_EndAir,
    CreateEntity_GrindRail_EndGround_Left,
    CreateEntity_GrindRail_EndAir_Left,
    CreateEntity_Corkscrew3D_Start,
    CreateEntity_Corkscrew3D_End,
    CreateEntity_StageGoal,
    CreateEntity_Checkpoint,
    CreateEntity_CeilingSlope,
    CreateEntity_Toggle_Checkpoint,
    CreateEntity_Toggle_StageGoal,
    CreateEntity_WindUpStick,
    CreateEntity_HookRail_Unused,
    CreateEntity_HookRail_Start,
    CreateEntity_HookRail_End,
    CreateEntity_Windmill,
    CreateEntity_TurnAroundBar,
    CreateEntity_Crane,
    CreateEntity_DashRing,
    CreateEntity_FloatingSpring_Up,
    CreateEntity_NoteSphere,
    CreateEntity_NoteBlock,
    CreateEntity_Chord,
    CreateEntity_Keyboard_Vertical,
    CreateEntity_Keyboard_Horizontal_PushLeft,
    CreateEntity_Keyboard_Horizontal_PushRight,
    CreateEntity_GermanFlute,
    CreateEntity_FrenchHorn_Entry,
    CreateEntity_PipeInstrument_Entry,
    CreateEntity_SlowingSnow,
    CreateEntity_FunnelSphere,
    CreateEntity_HalfPipe_End,
    CreateEntity_HalfPipe_Start,
    CreateEntity_BigSnowball,
    CreateEntity_BounceBlock,
    CreateEntity_CeilingSlope,
    CreateEntity_Pipe_Start,
    CreateEntity_Pipe_End,
    CreateEntity_LightBridge,
    CreateEntity_ArrowPlatform_Left,
    CreateEntity_ArrowPlatform_Right,
    CreateEntity_ArrowPlatform_Up,
    CreateEntity_SpikePlatform,
    CreateEntity_FallingPlatform,
    CreateEntity_LightGlobe,
    CreateEntity_Platform_Square,
    CreateEntity_Propeller,
    CreateEntity_SlidyIce,
    CreateEntity_SmallWindmill,
    CreateEntity_PropellerSpring,
    CreateEntity_Whirlwind_A,
    CreateEntity_Fan_Left,
    CreateEntity_Fan_Right,
    CreateEntity_Fan_Left_Periodic,
    CreateEntity_Fan_Right_Periodic,
    CreateEntity_Launcher_Left_GDown,
    CreateEntity_Launcher_Right_GDown,
    CreateEntity_Cannon,
    CreateEntity_Pole,
    CreateEntity_IronBall,
    CreateEntity_FlyingHandle,
    CreateEntity_SpeedingPlatform,
    CreateEntity_Toggle_Gravity__Down,
    CreateEntity_Toggle_Gravity__Up,
    CreateEntity_Toggle_Gravity__Toggle,
    CreateEntity_Launcher_Left_GUp,
    CreateEntity_Launcher_Right_GUp,
    CreateEntity_SpecialRing,
    CreateEntity_Whirlwind_B,
    CreateEntity_Interactable105,
};

const MapEntityInit gSpriteInits_Enemies[] = {
    CreateEntity_Mon,      CreateEntity_Kiki,     CreateEntity_Buzzer,       CreateEntity_Gohla,      CreateEntity_KuraKura,
    CreateEntity_Kubinaga, CreateEntity_PikoPiko, CreateEntity_Bell,         CreateEntity_Yado,       CreateEntity_Circus,
    CreateEntity_Koura,    CreateEntity_Madillo,  CreateEntity_Straw,        CreateEntity_Hammerhead, CreateEntity_Spinner,
    CreateEntity_Mouse,    CreateEntity_Pen,      CreateEntity_GejiGeji,     CreateEntity_Balloon,    CreateEntity_Flickey,
    CreateEntity_Kyura,    CreateEntity_Star,     CreateEntity_BulletBuzzer,
};

const u16 enemyDefeatScores[NUM_ENEMY_DEFEAT_SCORES] = {
    100, 200, 400, 800, 1000,
};
#endif

const MapEntityInit gSpriteInits_CollectRingsInteractables[] = {
    CreateEntity_Toggle_PlayerLayer,
    CreateEntity_Toggle_PlayerLayer,
    CreateEntity_Spring_Normal_Up,
    CreateEntity_Spring_Normal_Down,
    CreateEntity_Spring_Normal_Right,
    CreateEntity_Spring_Normal_Left,
    CreateEntity_Spring_Big_UpLeft,
    CreateEntity_Spring_Big_UpRight,
    CreateEntity_Spring_Big_DownLeft,
    CreateEntity_Spring_Big_DownRight,
    CreateEntity_Spring_Small_UpLeft,
    CreateEntity_Spring_Small_UpRight,
    CreateEntity_Ramp,
    CreateEntity_Spikes_Up,
    CreateEntity_Spikes_Up,
    CreateEntity_Spikes_Up,
    CreateEntity_Spikes_Up,
    CreateEntity_Spikes_Up,
    CreateEntity_Spikes_Up,
    CreateEntity_GrindRail_Start,
    CreateEntity_GrindRail_StartAir,
    CreateEntity_GrindRail_EndGround,
    CreateEntity_GrindRail_End_ForcedJump,
    CreateEntity_GrindRail_EndAlternate,
    CreateEntity_GrindRail_EndAir,
    CreateEntity_GrindRail_EndGround_Left,
    CreateEntity_GrindRail_EndAir_Left,
    CreateEntity_MysteryItemBox,
    CreateEntity_CollectRingsLapTrigger,
};
#endif

#if (GAME == GAME_SA2) && !defined(COLLECT_RINGS_ROM)
const StagePreInitFunc gSpriteTileInits_PreStageEntry[] = {
    NULL,        NULL,        NULL, NULL, // Leaf Forest
    NULL,        NULL,        NULL, NULL, // Hot Crater
    NULL,        NULL,        NULL, NULL, // Music Plant
    NULL,        NULL,        NULL, NULL, // Ice Paradise
    sub_80807CC, sub_80807CC, NULL, NULL, // Sky Canyon
    NULL,        NULL,        NULL, NULL, // Techno Base
    NULL,        NULL,        NULL, NULL, // Egg Utopia
    NULL,        NULL,        NULL, NULL, // Final Zone
    NULL,        NULL,
};
#endif

#ifndef COLLECT_RINGS_ROM
void CreateStageEntitiesManager(void)
{
    void *decompBuf;
    struct Task *t;
    EntitiesManager *em;
#if (GAME <= GAME_SA2)
    if (&&CURRENT_GAME_MODE != GAME_MODE_MP_SINGLE_PACK) {
        t = TaskCreate(Task_EntitiesManagerInit, sizeof(EntitiesManager), 0x2000, 0, TaskDestructor_EntitiesManager);
    } else
#endif
    {
        t = TaskCreate(Task_EntitiesManagerInit, sizeof(EntitiesManager), 0x2000, 0, NULL);
    }

    em = TASK_DATA(t);

    if (CURRENT_GAME_MODE != GAME_MODE_MP_SINGLE_PACK) {
        s16 level = CURRENT_LEVEL;
        decompBuf = EwramMalloc(gSpritePosData_interactables[level]->size);
        RLUnCompWram(gSpritePosData_interactables[level], decompBuf);
        em->interactables = decompBuf;

        decompBuf = EwramMalloc(gSpritePosData_itemboxes[level]->size);
        RLUnCompWram(gSpritePosData_itemboxes[level], decompBuf);
        em->items = decompBuf;

        decompBuf = EwramMalloc(gSpritePosData_enemies[level]->size);
        RLUnCompWram(gSpritePosData_enemies[level], decompBuf);
        em->enemies = decompBuf;

        em->preInit = NULL;

#if (GAME == GAME_SA2)
        if (gSpriteTileInits_PreStageEntry[level]) {
            em->preInit = gSpriteTileInits_PreStageEntry[level]();
        }
#endif
    } else {
        void *src;
#if (GAME <= GAME_SA2)
        // TODO: Make this gUnknown_0203F000 in SA1/SA2!
        decompBuf = (void *)EWRAM_START + 0x3F000;
        src = *(void **)((void *)EWRAM_START + 0x3300C);
#else
        decompBuf = (void *)gUnknown_0203F000;
        src = (void *)gUnk_singlepak_rl_data;
#endif
        RLUnCompWram(src, decompBuf);
        em->interactables = decompBuf;
    }

    em->prevCamX = gCamera.x;
    em->prevCamY = gCamera.y;
    em->SA2_LABEL(unk14) = 1;
    ENT_MGR_TASK = t;
}
#endif

// BUG/NOTE(Jace):
// Sadly this not matching leads to an endless loop inside SpawnMapEntities() right now :(
//
// (80.89%) https://decomp.me/scratch/joL0r
NONMATCH("asm/non_matching/game/shared/em__Task_EntitiesManagerInit.inc", void Task_EntitiesManagerInit(void))
{
    // TODO: Replace all vars with:
    //       EntitiesStruct* es
    u16 subroutine_arg0[2];
    u8 sp4[0x20];
    u16 h_regionCount, v_regionCount;

    u32 *enemyPositions;
    u32 *interactables;
    u32 *itemBoxPositions;
    struct Range range1;
    struct Range range2;
    u32 *temp_r0_2;
    EntitiesManager *em;
    s32 temp_r0;
    s32 temp_r1;
    s32 temp_r2;
    s32 temp_r3;
    s32 var_r0;
    u16 temp_r2_6;
    u32 temp_r1_6;
    u32 temp_r1_GAME_MODE_MP_SINGLE_PACK;
    u32 temp_r2_2;
    u32 temp_r3_4;

    if (!(0x1 & gStageData.stageFlags)) {
        em = TASK_DATA(gCurTask);
        if (em->SA2_LABEL(unk14) == 0) {
            temp_r3 = gCamera.x - em->prevCamX;

            if (ABS(gCamera.x - em->prevCamX) > 248) {
                SpawnMapEntities();
                return;
            }

            if (ABS(gCamera.y - em->prevCamY) > 208) {
                SpawnMapEntities();
                return;
            }

            interactables = (u32 *)em->interactables;
            enemyPositions = (u32 *)em->enemies;
            itemBoxPositions = (u32 *)em->items;
            if (CURRENT_GAME_MODE != GAME_MODE_MP_SINGLE_PACK) {
                enemyPositions += 3;
                itemBoxPositions += 3;
            }

            interactables++;
            h_regionCount = (u16)*interactables++;
            v_regionCount = (u16)*interactables++;

            if (gCamera.x > em->prevCamX) {
                range1.xLow = em->prevCamX + (DISPLAY_WIDTH + 128);
                range1.xHigh = gCamera.x + (DISPLAY_WIDTH + 128);
            } else {
                range1.xLow = gCamera.x - 128;
                range1.xHigh = em->prevCamX - 128;
            }
        }

        if (em->SA2_LABEL(unk14) != 0) {
            SpawnMapEntities();
        } else {
            range1.yLow = gCamera.y - 128;
            range1.yHigh = gCamera.y + (DISPLAY_HEIGHT + 128);
            if (gCamera.y > em->prevCamY) {
                range2.yLow = em->prevCamY + (DISPLAY_HEIGHT + 128);
                range2.yHigh = gCamera.y + (DISPLAY_HEIGHT + 128);
            } else {
                range2.yLow = gCamera.y - 128;
                range2.yHigh = em->prevCamY - 128;
            }
            range2.xLow = gCamera.x - 128;
            range2.xHigh = gCamera.x + (DISPLAY_WIDTH + 128);
            if (range1.xLow < 0) {
                range1.xLow = 0;
            }
            if (range1.yLow < 0) {
                range1.yLow = 0;
            }
            if (range1.xHigh < 0) {
                range1.xHigh = 0;
            }
            if (range1.yHigh < 0) {
                range1.yHigh = 0;
            }
            temp_r3_4 = Q(h_regionCount);
            if (range1.xLow >= temp_r3_4) {
                range1.xLow = temp_r3_4 - 1;
            }
            temp_r2_2 = Q(v_regionCount);
            if (range1.yLow >= temp_r2_2) {
                range1.yLow = temp_r2_2 - 1;
            }
            if (range1.xHigh >= temp_r3_4) {
                range1.xHigh = temp_r3_4 - 1;
            }
            if (range1.yHigh >= temp_r2_2) {
                range1.yHigh = temp_r2_2 - 1;
            }

            if (range2.xLow < 0) {
                range2.xLow = 0;
            }
            if (range2.yLow < 0) {
                range2.yLow = 0;
            }
            if (range2.xHigh < 0) {
                range2.xHigh = 0;
            }
            if (range2.yHigh < 0) {
                range2.yHigh = 0;
            }
            if (range2.xLow >= temp_r3_4) {
                range2.xLow = temp_r3_4 - 1;
            }
            if (range2.yLow >= temp_r2_2) {
                range2.yLow = temp_r2_2 - 1;
            }
            if (range2.xHigh >= temp_r3_4) {
                range2.xHigh = temp_r3_4 - 1;
            }
            if (range2.yHigh >= temp_r2_2) {
                range2.yHigh = temp_r2_2 - 1;
            }
            if ((gCamera.x != em->prevCamX) && (range1.xLow != range1.xHigh) && (range1.yLow != range1.yHigh)) {
                subroutine_arg0[1] = (u16)I(range1.yLow);
                while ((Q(subroutine_arg0[1]) < range1.yHigh) && (subroutine_arg0[1] < v_regionCount)) {
                    subroutine_arg0[0] = (u16)I(range1.xLow);
                    while ((Q(subroutine_arg0[0]) < range1.xHigh) && (subroutine_arg0[0] < h_regionCount)) {
                        if (CURRENT_GAME_MODE != GAME_MODE_MP_SINGLE_PACK) {
                            InitEntity_Interactable(0, (void *)&subroutine_arg0[0]);
                            sub_802BDE4(0, &subroutine_arg0[0]);
                            sub_802BEE4(0, &subroutine_arg0[0]);
                        } else {
                            // TEMP?
                            asm("" ::"r"(enemyPositions));
                            asm("" ::"r"(itemBoxPositions));

                            sub_802BFA4(0, &subroutine_arg0[0]);
                        }
                        subroutine_arg0[0]++;
                    }
                    subroutine_arg0[1]++;
                }
            }
            if ((gCamera.y != em->prevCamY) && (range2.yLow != range2.yHigh) && (range2.xLow != range2.xHigh)) {
                subroutine_arg0[1] = (u16)I(range2.yLow);
                while ((Q(subroutine_arg0[1]) < range2.yHigh) && (subroutine_arg0[1] < v_regionCount)) {
                    subroutine_arg0[0] = (u16)I(range2.xLow);
                    while ((Q(subroutine_arg0[0]) < range2.xHigh) && (subroutine_arg0[0] < h_regionCount)) {
                        if (CURRENT_GAME_MODE != GAME_MODE_MP_SINGLE_PACK) {
                            InitEntity_Interactable(1, (void *)&subroutine_arg0[0]);
                            sub_802BDE4(1, &subroutine_arg0[0]);
                            sub_802BEE4(1, &subroutine_arg0[0]);
                        } else {
                            sub_802BFA4(1, &subroutine_arg0[0]);
                        }
                        subroutine_arg0[0]++;
                    }
                    subroutine_arg0[1]++;
                }
            }
            em->prevCamX = gCamera.x;
            em->prevCamY = gCamera.y;
        }
    }
}
END_NONMATCH

// (74.97%) https://decomp.me/scratch/jHRR8
NONMATCH("asm/non_matching/game/shared/em__SpawnMapEntities.inc", void SpawnMapEntities())
{
    u16 subroutine_arg0[2];
    u8 sp4[0x2C];
    u32 h_regionCount;
    u32 v_regionCount;
    u32 *enemyPositions;
    u32 *interactables;
    u32 *itemBoxPositions;
    struct Range range1;
    struct Range range2;

    if (!(1 & gStageData.stageFlags)) {
        EntitiesManager *em = TASK_DATA(gCurTask);
        interactables = (u32 *)em->interactables;
        enemyPositions = (u32 *)em->enemies;
        itemBoxPositions = (u32 *)em->items;
        if (CURRENT_GAME_MODE != GAME_MODE_MP_SINGLE_PACK) {
            enemyPositions += 3;
            itemBoxPositions += 3;
        }
        asm("" ::"r"(enemyPositions), "r"(itemBoxPositions));

        interactables++;
        h_regionCount = *interactables++;
        v_regionCount = *interactables++;

        range1.yLow = gCamera.y - 128;
        range1.yHigh = gCamera.y + (DISPLAY_HEIGHT + 128);
        range1.xLow = gCamera.x - 128;
        range1.xHigh = gCamera.x + (DISPLAY_WIDTH + 128);
        if (range1.xLow < 0) {
            range1.xLow = 0;
        }
        if (range1.yLow < 0) {
            range1.yLow = 0;
        }
        if (range1.xHigh < 0) {
            range1.xHigh = 0;
        }
        if (range1.yHigh < 0) {
            range1.yHigh = 0;
        }

        if (range1.xLow >= (h_regionCount << 8)) {
            range1.xLow = (h_regionCount << 8) - 1;
        }
        if (range1.yLow >= (v_regionCount << 8)) {
            range1.yLow = (v_regionCount << 8) - 1;
        }
        if (range1.xHigh >= (h_regionCount << 8)) {
            range1.xHigh = (h_regionCount << 8) - 1;
        }
        if (range1.yHigh >= (v_regionCount << 8)) {
            range1.yHigh = (v_regionCount << 8) - 1;
        }

        subroutine_arg0[1] = I(range1.yLow);
        while ((Q(subroutine_arg0[1]) < range1.yHigh) && (subroutine_arg0[1] < v_regionCount)) {
            subroutine_arg0[0] = I(range1.xLow);
            while ((Q(subroutine_arg0[0]) < range1.xHigh) && (subroutine_arg0[0] < h_regionCount)) {
                if (gStageData.gameMode != 7) {
                    InitEntity_Interactable(1, (void *)&subroutine_arg0[0]);
                    sub_802BDE4(1, &subroutine_arg0[0]);
                    sub_802BEE4(1, &subroutine_arg0[0]);
                } else {
                    sub_802BFA4(1, &subroutine_arg0[0]);
                }
                subroutine_arg0[0]++;
            }
            subroutine_arg0[1]++;
        }
        em->prevCamX = gCamera.x;
        em->prevCamY = gCamera.y;
        em->SA2_LABEL(unk14) = 0;
        gCurTask->main = (void (*)())Task_EntitiesManagerInit;
    }
}
END_NONMATCH

// (86.50%) https://decomp.me/scratch/6MufZ
NONMATCH("asm/non_matching/game/shared/em__InitEntity_Interactable.inc", void InitEntity_Interactable(u16 param0, EntitiesStruct *es))
{
    s32 worldX, worldY;
    u8 *temp_r0_2;
    MapEntity *me;
#ifndef NON_MATCHING
    register Range *range asm("r8");
#else
    Range *range;
#endif
    u32 i;

    range = &es->range2;
    if (param0 == 0) {
        range = &es->range1;
    }

    es->entityIdInRegion = READ_START_INDEX(es->interactables, es->regionsX, es->currentRegionX, es->currentRegionY);
    if (es->entityIdInRegion != 0) {
        es->me = (MapEntity *)(((u8 *)es->interactables) + (es->entityIdInRegion - 8));

        for (es->entityIdInRegion = 0; (s8)es->me->x != -1; es->entityIdInRegion++) {
            if ((s8)es->me->x >= -2) {
                es->worldX = TO_WORLD_POS(es->me->x, es->currentRegionX);
                es->worldY = TO_WORLD_POS(es->me->y, es->currentRegionY);
                if ((es->worldX >= range->xLow) && (es->worldX <= range->xHigh) && (es->worldY >= range->yLow)
                    && (es->worldY <= range->yHigh)) {
                    EntityFunc initFunc = gSpriteInits_Interactables[es->me->index];
                    if (initFunc != NULL) {
                        initFunc(es->me, es->currentRegionX, es->currentRegionY, es->entityIdInRegion);
                    }
                }
            }

            es->me = (MapEntity *)(((u8 *)es->me) + sizeof(*es->me));
        }
    }
}
END_NONMATCH

#if 0
#if COLLECT_RINGS_ROM
void CreateStageEntitiesManager(void)
{
    void *decompBuf;
    struct Task *t = TaskCreate(Task_EntitiesManagerInit, sizeof(EntitiesManager), 0x2000, 0, NULL);
    EntitiesManager *em = TASK_DATA(t);

    decompBuf = (void *)EWRAM_START + 0x3F000;
    RLUnCompWram(*(void **)((void *)EWRAM_START + 0x3300C), decompBuf);
    em->interactables = decompBuf;

    em->prevCamX = gCamera.x;
    em->prevCamY = gCamera.y;
    em->unk14 = 1;
    ENT_MGR_TASK = t;
}
#endif

#ifndef COLLECT_RINGS_ROM
void CreateEnemyDefeatScoreAndManageLives(s16 x, s16 y)
{
    u32 old;
    u32 temp1;
    u32 temp2;
    m4aSongNumStart(SE_ITEM_BOX);

    INCREMENT_SCORE(enemyDefeatScores[gPlayer.defeatScoreIndex]);

    CreateEnemyDefeatScore(x, y);

    // NOTE: This should be (ARRAY_COUNT(enemyDefeatScores) - 1)
    //       But padding makes it (6-1) instead of (5-1),
    //       hence the macro.
    if (gPlayer.defeatScoreIndex < (NUM_ENEMY_DEFEAT_SCORES - 1)) {
        gPlayer.defeatScoreIndex++;
    }
}

void TaskDestructor_80095E8(struct Task *t)
{
    Sprite_Entity *s = TASK_DATA(t);
    VramFree(s->displayed.graphics.dest);
}

static void TaskDestructor_EntitiesManager(struct Task *t)
{
    EntitiesManager *em = TASK_DATA(t);
    EwramFree(em->interactables);
    EwramFree(em->items);
    EwramFree(em->enemies);
    ENT_MGR_TASK = NULL;
}

#endif

#endif

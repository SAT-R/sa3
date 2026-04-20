#include "global.h"
#include "core.h"
#include "task.h"

#include "malloc_ewram.h"
#include "malloc_vram.h"

// TODO: Merge with below include-block
#include "game/camera.h"
#include "game/game.h"
#include "game/player_callbacks.h"
#include "game/shared/entities_manager.h"
#include "game/save.h" // for DIFFICULTY_EASY
#include "game/stage.h"

#include "constants/move_states.h"
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

#if (GAME == GAME_SA3)
typedef struct EntitiesStruct {
    /* 0x00 */ u16 currentRegionX;
    /* 0x02 */ u16 currentRegionY;
    /* 0x04 */ u32 regionsX; // number of regions of current map on X-axis
    /* 0x08 */ u32 regionsY; // number of regions of current map on Y-axis
    /* 0x0C */ MapEntity *me;
    /* 0x10 */ MapEntity *me2;
    /* 0x14 */ MapEntity_Itembox *me3;
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

// Items
extern void CreateEntity_ItemBox(MapEntity_Itembox *, u16, u16, u8);

// Enemies
extern void CreateEntity_Spinner(MapEntity *, u16, u16, u8);
extern void CreateEntity_Akatento(MapEntity *, u16, u16, u8);
extern void CreateEntity_Aotento(MapEntity *, u16, u16, u8);
extern void CreateEntity_Condor(MapEntity *, u16, u16, u8);
extern void CreateEntity_GekoGeko(MapEntity *, u16, u16, u8);
extern void CreateEntity_Buzzer(MapEntity *, u16, u16, u8);
extern void CreateEntity_Minimole(MapEntity *, u16, u16, u8);
extern void CreateEntity_Ape_0(MapEntity *, u16, u16, u8);
extern void CreateEntity_Ape_1(MapEntity *, u16, u16, u8);
extern void CreateEntity_Takkon(MapEntity *, u16, u16, u8);
extern void CreateEntity_Jousun_Right(MapEntity *, u16, u16, u8);
extern void CreateEntity_Jousun_Left(MapEntity *, u16, u16, u8);
extern void CreateEntity_Uutsubo_0(MapEntity *, u16, u16, u8);
extern void CreateEntity_Uutsubo_1(MapEntity *, u16, u16, u8);
extern void CreateEntity_Uutsubo_2(MapEntity *, u16, u16, u8);
extern void CreateEntity_Uutsubo_3(MapEntity *, u16, u16, u8);
extern void CreateEntity_Guard(MapEntity *, u16, u16, u8);
extern void CreateEntity_Juggling(MapEntity *, u16, u16, u8);
extern void CreateEntity_GaoGao(MapEntity *, u16, u16, u8);
extern void CreateEntity_BuBu(MapEntity *, u16, u16, u8);
extern void CreateEntity_Ginpe(MapEntity *, u16, u16, u8);
extern void CreateEntity_Yadokk(MapEntity *, u16, u16, u8);
extern void CreateEntity_Yukigasen_Right(MapEntity *, u16, u16, u8);
extern void CreateEntity_Yukigasen_Left(MapEntity *, u16, u16, u8);
extern void CreateEntity_Yukigasen_Right_HighCooldown(MapEntity *, u16, u16, u8);
extern void CreateEntity_Yukigasen_Left_HighCooldown(MapEntity *, u16, u16, u8);
extern void CreateEntity_Hariisen(MapEntity *, u16, u16, u8);
extern void CreateEntity_Clam(MapEntity *, u16, u16, u8);
extern void CreateEntity_Kyacchaa(MapEntity *, u16, u16, u8);
extern void CreateEntity_Kamaki(MapEntity *, u16, u16, u8);
extern void CreateEntity_GuruGuru(MapEntity *, u16, u16, u8);
extern void CreateEntity_Marun(MapEntity *, u16, u16, u8);
extern void CreateEntity_Muukaden_0(MapEntity *, u16, u16, u8);
extern void CreateEntity_Muukaden_1(MapEntity *, u16, u16, u8);

// Interactables / Gimmicks
void CreateEntity_Toggle_PlayerLayer_Swap(MapEntity *, u16, u16, u8);
void CreateEntity_Toggle_PlayerLayer_Front(MapEntity *, u16, u16, u8);
void CreateEntity_Toggle_PlayerLayer_Back(MapEntity *, u16, u16, u8);
void CreateEntity_ZoneWarp(MapEntity *, u16, u16, u8); // 003 - ActRing and ZoneWarp are 2 IAs
void CreateEntity_Warp(MapEntity *, u16, u16, u8); // 004
void CreateEntity_Spring_Up(MapEntity *, u16, u16, u8);
void CreateEntity_Spring_Down(MapEntity *, u16, u16, u8);
void CreateEntity_Spring_Left(MapEntity *, u16, u16, u8);
void CreateEntity_Spring_Right(MapEntity *, u16, u16, u8);
void CreateEntity_Spring_UpLeft(MapEntity *, u16, u16, u8);
void CreateEntity_Spring_DownLeft(MapEntity *, u16, u16, u8);
void CreateEntity_Spring_UpRight(MapEntity *, u16, u16, u8);
void CreateEntity_Spring_DownRight(MapEntity *, u16, u16, u8);
void CreateEntity_Spring_Small_UpRight(MapEntity *, u16, u16, u8);
void CreateEntity_Spring_Small_UpLeft(MapEntity *, u16, u16, u8);
void CreateEntity_Interactable015(MapEntity *, u16, u16, u8);
void CreateEntity_Platform_0_0(MapEntity *, u16, u16, u8);
void CreateEntity_Platform_0_1(MapEntity *, u16, u16, u8);
void CreateEntity_Platform_0_2(MapEntity *, u16, u16, u8);
void CreateEntity_Platform_0_3(MapEntity *, u16, u16, u8);
void CreateEntity_Platform_1_0(MapEntity *, u16, u16, u8);
void CreateEntity_Platform_1_1(MapEntity *, u16, u16, u8);
void CreateEntity_Platform_1_2(MapEntity *, u16, u16, u8);
void CreateEntity_Platform_1_3(MapEntity *, u16, u16, u8);
void CreateEntity_Platform_2_0(MapEntity *, u16, u16, u8);
void CreateEntity_Platform_2_1(MapEntity *, u16, u16, u8);
void CreateEntity_Platform_2_2(MapEntity *, u16, u16, u8);
void CreateEntity_Platform_2_3(MapEntity *, u16, u16, u8);
void CreateEntity_BlueButton(MapEntity *, u16, u16, u8); // 028 - Same code as 071
void CreateEntity_Spikes_Up(MapEntity *, u16, u16, u8); // 029
void CreateEntity_Spikes_Down(MapEntity *, u16, u16, u8); // 030
void CreateEntity_Spikes_Left(MapEntity *, u16, u16, u8); // 031
void CreateEntity_Spikes_Right(MapEntity *, u16, u16, u8); // 032
void CreateEntity_Spikes_HidingUp(MapEntity *, u16, u16, u8); // 033
void CreateEntity_Spikes_HidingDown(MapEntity *, u16, u16, u8); // 034
void CreateEntity_Booster_Default(MapEntity *, u16, u16, u8); // 035
void CreateEntity_Booster_TiltLeft_Small(MapEntity *, u16, u16, u8); // 036
void CreateEntity_Booster_TiltRight_Small(MapEntity *, u16, u16, u8); // 037
void CreateEntity_Booster_TiltLeft_Big(MapEntity *, u16, u16, u8); // 038
void CreateEntity_Booster_TiltRight_Big(MapEntity *, u16, u16, u8); // 039
void CreateEntity_Booster_Wall(MapEntity *, u16, u16, u8); // 040
void CreateEntity_TrampolineA(MapEntity *, u16, u16, u8);
void CreateEntity_TrampolineB(MapEntity *, u16, u16, u8);
void CreateEntity_Ramp(MapEntity *, u16, u16, u8);
void CreateEntity_RotatingHandle(MapEntity *, u16, u16, u8);
void CreateEntity_Lift(MapEntity *, u16, u16, u8);
void CreateEntity_Interactable046(MapEntity *, u16, u16, u8);
void CreateEntity_Interactable047(MapEntity *, u16, u16, u8);
void CreateEntity_Interactable048(MapEntity *, u16, u16, u8);
void CreateEntity_Interactable049(MapEntity *, u16, u16, u8);
void CreateEntity_Interactable050(MapEntity *, u16, u16, u8);
void CreateEntity_Interactable051(MapEntity *, u16, u16, u8);
void CreateEntity_Interactable052(MapEntity *, u16, u16, u8);
void CreateEntity_Interactable053(MapEntity *, u16, u16, u8);
void CreateEntity_Checkpoint(MapEntity *, u16, u16, u8);
void CreateEntity_GoalRing(MapEntity *, u16, u16, u8);
void CreateEntity_BouncyBar(MapEntity *, u16, u16, u8);
void CreateEntity_BreakableWall(MapEntity *, u16, u16, u8);
void CreateEntity_DashRing0(MapEntity *, u16, u16, u8);
void CreateEntity_DashRing1(MapEntity *, u16, u16, u8);
void CreateEntity_Interactable060(MapEntity *, u16, u16, u8);
void CreateEntity_PlatformRaisingWheel(MapEntity *, u16, u16, u8);
void CreateEntity_PlatformRaisingWheelPlatform(MapEntity *, u16, u16, u8);
void CreateEntity_Seesaw(MapEntity *, u16, u16, u8);
void CreateEntity_DecoRock(MapEntity *, u16, u16, u8);
void CreateEntity_FlatSpring(MapEntity *, u16, u16, u8);
void CreateEntity_Omochao(MapEntity *, u16, u16, u8);
void CreateEntity_ButtonPlatformA(MapEntity *, u16, u16, u8);
void CreateEntity_ButtonPlatformB(MapEntity *, u16, u16, u8);
void CreateEntity_PlatformCrumblingA(MapEntity *, u16, u16, u8);
void CreateEntity_PlatformCrumblingB(MapEntity *, u16, u16, u8);
void CreateEntity_RedButton(MapEntity *, u16, u16, u8); // 071 - Same code as 028
void CreateEntity_GrindRail0(MapEntity *, u16, u16, u8); // 072 Grind Rail
void CreateEntity_Interactable073(MapEntity *, u16, u16, u8);
void CreateEntity_Interactable074(MapEntity *, u16, u16, u8);
void CreateEntity_BonusCapsule(MapEntity *, u16, u16, u8);
void CreateEntity_Interactable073(MapEntity *, u16, u16, u8); // 076 Grind Rail
void CreateEntity_GrindRail1(MapEntity *, u16, u16, u8); // 077 Grind Rail
void CreateEntity_GrindRail2(MapEntity *, u16, u16, u8);
void CreateEntity_GrindRail3(MapEntity *, u16, u16, u8); // 079 Grind Rail
void CreateEntity_GrindRail4(MapEntity *, u16, u16, u8); // 080 Grind Rail
void CreateEntity_Interactable081(MapEntity *, u16, u16, u8);
void CreateEntity_Interactable082(MapEntity *, u16, u16, u8);
void CreateEntity_BonusGameUI(MapEntity *, u16, u16, u8);
void CreateEntity_SlowChaosLift(MapEntity *, u16, u16, u8);
void CreateEntity_Interactable085(MapEntity *, u16, u16, u8);
void CreateEntity_Interactable085(MapEntity *, u16, u16, u8); // 086
void CreateEntity_TriggerBossOrGoal(MapEntity *, u16, u16, u8);
void CreateEntity_AttachedPlatform(MapEntity *, u16, u16, u8);
void CreateEntity_WaterCannon(MapEntity *, u16, u16, u8);
void CreateEntity_Interactable090(MapEntity *, u16, u16, u8);
void CreateEntity_AccordionSpring(MapEntity *, u16, u16, u8);
void CreateEntity_BungeeCord(MapEntity *, u16, u16, u8);
void CreateEntity_Interactable093(MapEntity *, u16, u16, u8);
void CreateEntity_Pole(MapEntity *, u16, u16, u8);
void CreateEntity_WaterfallResist(MapEntity *, u16, u16, u8);
void CreateEntity_ActRing(MapEntity *, u16, u16, u8); // 096 - ActRing and ZoneWarp are 2 IAs
void CreateEntity_SpecialSpring(MapEntity *, u16, u16, u8);
void CreateEntity_FactoryRing(MapEntity *, u16, u16, u8);
void CreateEntity_BonusUfo(MapEntity *, u16, u16, u8);
void CreateEntity_DeathCrusher(MapEntity *, u16, u16, u8);
void CreateEntity_PlatformOnAPath(MapEntity *, u16, u16, u8);
void CreateEntity_PlatformPropelled(MapEntity *, u16, u16, u8);
void CreateEntity_PlatformMaybeFalling(MapEntity *, u16, u16, u8);
void CreateEntity_Suction(MapEntity *, u16, u16, u8);
void CreateEntity_AirBubbles(MapEntity *, u16, u16, u8);
void CreateEntity_IceSpike(MapEntity *, u16, u16, u8);
void CreateEntity_PlatformSquare(MapEntity *, u16, u16, u8);
void CreateEntity_SunsetBridge(MapEntity *, u16, u16, u8);
void CreateEntity_PlatformSpiked(MapEntity *, u16, u16, u8);
void CreateEntity_SpringInABox(MapEntity *, u16, u16, u8);
void CreateEntity_Rocket(MapEntity *, u16, u16, u8);
void CreateEntity_FerrisWheel(MapEntity *, u16, u16, u8);
void CreateEntity_WindupBlock(MapEntity *, u16, u16, u8);
void CreateEntity_Minecart(MapEntity *, u16, u16, u8);
void CreateEntity_PandaCart(MapEntity *, u16, u16, u8);
void CreateEntity_Interactable116(MapEntity *, u16, u16, u8);
void CreateEntity_Interactable117(MapEntity *, u16, u16, u8);
void CreateEntity_Interactable118(MapEntity *, u16, u16, u8);
void CreateEntity_Interactable119(MapEntity *, u16, u16, u8);
void CreateEntity_Gondola(MapEntity *, u16, u16, u8); // In Chaos Angel
void CreateEntity_Boulder(MapEntity *, u16, u16, u8);
void CreateEntity_UfoPlatform(MapEntity *, u16, u16, u8);
void CreateEntity_ClosingWall(MapEntity *, u16, u16, u8);
void CreateEntity_IceLauncher(MapEntity *, u16, u16, u8);
void CreateEntity_Interactable125(MapEntity *, u16, u16, u8);
void CreateEntity_Interactable126(MapEntity *, u16, u16, u8);
void CreateEntity_Interactable127(MapEntity *, u16, u16, u8);
void CreateEntity_Interactable128(MapEntity *, u16, u16, u8);
void CreateEntity_Interactable129(MapEntity *, u16, u16, u8);
void CreateEntity_Interactable130(MapEntity *, u16, u16, u8);
void CreateEntity_Pendulum(MapEntity *, u16, u16, u8);
void CreateEntity_SpringPlatformA(MapEntity *, u16, u16, u8);
void CreateEntity_SpringPlatformB(MapEntity *, u16, u16, u8);
void CreateEntity_Interactable134(MapEntity *, u16, u16, u8);
void CreateEntity_Interactable135(MapEntity *, u16, u16, u8);
void CreateEntity_MazeEnter(MapEntity *, u16, u16, u8);
void CreateEntity_MazeCorner(MapEntity *, u16, u16, u8);
void CreateEntity_MazeExit(MapEntity *, u16, u16, u8);
void CreateEntity_PlatformChaosAngel(MapEntity *, u16, u16, u8);
void CreateEntity_ChaoInStage(MapEntity *, u16, u16, u8);
void CreateEntity_SpecialKey(MapEntity *, u16, u16, u8);
void CreateEntity_FinalZoneRing(MapEntity *, u16, u16, u8);
void CreateEntity_ChaoInPlayground(MapEntity *, u16, u16, u8);
void CreateEntity_EmeraldInPlayground(MapEntity *, u16, u16, u8);
void CreateEntity_MultiplayerItemBox(MapEntity *, u16, u16, u8);
void CreateEntity_MultiplayerChao(MapEntity *, u16, u16, u8);
const MapEntityInit gSpriteInits_Enemies[] = {
    /* 000 */ CreateEntity_Spinner,
    /* 001 */ CreateEntity_Akatento,
    /* 002 */ CreateEntity_Aotento,
    /* 003 */ CreateEntity_Condor,
    /* 004 */ CreateEntity_GekoGeko,
    /* 005 */ CreateEntity_Buzzer,
    /* 006 */ CreateEntity_Minimole,
    /* 007 */ CreateEntity_Ape_0,
    /* 008 */ CreateEntity_Ape_1,
    /* 009 */ CreateEntity_Takkon,
    /* 010 */ CreateEntity_Jousun_Right,
    /* 011 */ CreateEntity_Jousun_Left,
    /* 012 */ CreateEntity_Uutsubo_0,
    /* 013 */ CreateEntity_Uutsubo_1,
    /* 014 */ CreateEntity_Uutsubo_2,
    /* 015 */ CreateEntity_Uutsubo_3,
    /* 016 */ CreateEntity_Guard,
    /* 017 */ CreateEntity_Juggling,
    /* 018 */ CreateEntity_GaoGao,
    /* 019 */ CreateEntity_BuBu,
    /* 020 */ CreateEntity_Ginpe,
    /* 021 */ CreateEntity_Yadokk,
    /* 022 */ CreateEntity_Yukigasen_Right,
    /* 023 */ CreateEntity_Yukigasen_Left,
    /* 024 */ CreateEntity_Yukigasen_Right_HighCooldown,
    /* 025 */ CreateEntity_Yukigasen_Left_HighCooldown,
    /* 026 */ CreateEntity_Hariisen,
    /* 027 */ CreateEntity_Clam,
    /* 028 */ CreateEntity_Kyacchaa,
    /* 029 */ CreateEntity_Kamaki,
    /* 030 */ CreateEntity_GuruGuru,
    /* 031 */ CreateEntity_Marun,
    /* 032 */ CreateEntity_Muukaden_0,
    /* 033 */ CreateEntity_Muukaden_1,
};

const u8 gUnknown_080CF104[] = { 3, 5, 9, 17, 26, 30, 31, 255, 255 };

const MapEntityInit gSpriteInits_Interactables[] = {
    /* 000 */ CreateEntity_Toggle_PlayerLayer_Swap,
    /* 001 */ CreateEntity_Toggle_PlayerLayer_Front,
    /* 002 */ CreateEntity_Toggle_PlayerLayer_Back,
    /* 003 */ CreateEntity_ZoneWarp,
    /* 004 */ CreateEntity_Warp,
    /* 005 */ CreateEntity_Spring_Up,
    /* 006 */ CreateEntity_Spring_Down,
    /* 007 */ CreateEntity_Spring_Left,
    /* 008 */ CreateEntity_Spring_Right,
    /* 009 */ CreateEntity_Spring_UpLeft,
    /* 010 */ CreateEntity_Spring_DownLeft,
    /* 011 */ CreateEntity_Spring_UpRight,
    /* 012 */ CreateEntity_Spring_DownRight,
    /* 013 */ CreateEntity_Spring_Small_UpRight,
    /* 014 */ CreateEntity_Spring_Small_UpLeft,
    /* 015 */ CreateEntity_Interactable015,
    /* 016 */ CreateEntity_Platform_0_0,
    /* 017 */ CreateEntity_Platform_0_1,
    /* 018 */ CreateEntity_Platform_0_2,
    /* 019 */ CreateEntity_Platform_0_3,
    /* 020 */ CreateEntity_Platform_1_0,
    /* 021 */ CreateEntity_Platform_1_1,
    /* 022 */ CreateEntity_Platform_1_2,
    /* 023 */ CreateEntity_Platform_1_3,
    /* 024 */ CreateEntity_Platform_2_0,
    /* 025 */ CreateEntity_Platform_2_1,
    /* 026 */ CreateEntity_Platform_2_2,
    /* 027 */ CreateEntity_Platform_2_3,
    /* 028 */ CreateEntity_BlueButton,
    /* 029 */ CreateEntity_Spikes_Up,
    /* 030 */ CreateEntity_Spikes_Down,
    /* 031 */ CreateEntity_Spikes_Left,
    /* 032 */ CreateEntity_Spikes_Right,
    /* 033 */ CreateEntity_Spikes_HidingUp,
    /* 034 */ CreateEntity_Spikes_HidingDown,
    /* 035 */ CreateEntity_Booster_Default,
    /* 036 */ CreateEntity_Booster_TiltLeft_Small,
    /* 037 */ CreateEntity_Booster_TiltRight_Small,
    /* 038 */ CreateEntity_Booster_TiltLeft_Big,
    /* 039 */ CreateEntity_Booster_TiltRight_Big,
    /* 040 */ CreateEntity_Booster_Wall,
    /* 041 */ CreateEntity_TrampolineA,
    /* 042 */ CreateEntity_TrampolineB,
    /* 043 */ CreateEntity_Ramp,
    /* 044 */ CreateEntity_RotatingHandle,
    /* 045 */ CreateEntity_Lift,
    /* 046 */ CreateEntity_Interactable046,
    /* 047 */ CreateEntity_Interactable047,
    /* 048 */ CreateEntity_Interactable048,
    /* 049 */ CreateEntity_Interactable049,
    /* 050 */ CreateEntity_Interactable050,
    /* 051 */ CreateEntity_Interactable051,
    /* 052 */ CreateEntity_Interactable052,
    /* 053 */ CreateEntity_Interactable053,
    /* 054 */ CreateEntity_Checkpoint,
    /* 055 */ CreateEntity_GoalRing,
    /* 056 */ CreateEntity_BouncyBar,
    /* 057 */ CreateEntity_BreakableWall,
    /* 058 */ CreateEntity_DashRing0,
    /* 059 */ CreateEntity_DashRing1,
    /* 060 */ CreateEntity_Interactable060,
    /* 061 */ CreateEntity_PlatformRaisingWheel,
    /* 062 */ CreateEntity_PlatformRaisingWheelPlatform,
    /* 063 */ CreateEntity_Seesaw,
    /* 064 */ CreateEntity_DecoRock,
    /* 065 */ CreateEntity_FlatSpring,
    /* 066 */ CreateEntity_Omochao,
    /* 067 */ CreateEntity_ButtonPlatformA,
    /* 068 */ CreateEntity_ButtonPlatformB,
    /* 069 */ CreateEntity_PlatformCrumblingA,
    /* 070 */ CreateEntity_PlatformCrumblingB,
    /* 071 */ CreateEntity_RedButton,
    /* 072 */ CreateEntity_GrindRail0,
    /* 073 */ CreateEntity_Interactable073,
    /* 074 */ CreateEntity_Interactable074,
    /* 075 */ CreateEntity_BonusCapsule,
    /* 076 */ CreateEntity_Interactable073,
    /* 077 */ CreateEntity_GrindRail1,
    /* 078 */ CreateEntity_GrindRail2,
    /* 079 */ CreateEntity_GrindRail3,
    /* 080 */ CreateEntity_GrindRail4,
    /* 081 */ CreateEntity_Interactable081,
    /* 082 */ CreateEntity_Interactable082,
    /* 083 */ CreateEntity_BonusGameUI,
    /* 084 */ CreateEntity_SlowChaosLift,
    /* 085 */ CreateEntity_Interactable085,
    /* 086 */ CreateEntity_Interactable085,
    /* 087 */ CreateEntity_TriggerBossOrGoal,
    /* 088 */ CreateEntity_AttachedPlatform,
    /* 089 */ CreateEntity_WaterCannon,
    /* 090 */ CreateEntity_Interactable090,
    /* 091 */ CreateEntity_AccordionSpring,
    /* 092 */ CreateEntity_BungeeCord,
    /* 093 */ CreateEntity_Interactable093,
    /* 094 */ CreateEntity_Pole,
    /* 095 */ CreateEntity_WaterfallResist,
    /* 096 */ CreateEntity_ActRing,
    /* 097 */ CreateEntity_SpecialSpring,
    /* 098 */ CreateEntity_FactoryRing,
    /* 099 */ CreateEntity_BonusUfo,
    /* 100 */ CreateEntity_DeathCrusher,
    /* 101 */ CreateEntity_PlatformOnAPath,
    /* 102 */ CreateEntity_PlatformPropelled,
    /* 103 */ CreateEntity_PlatformMaybeFalling,
    /* 104 */ CreateEntity_Suction,
    /* 105 */ CreateEntity_AirBubbles,
    /* 106 */ CreateEntity_IceSpike,
    /* 107 */ CreateEntity_PlatformSquare,
    /* 108 */ CreateEntity_SunsetBridge,
    /* 109 */ CreateEntity_PlatformSpiked,
    /* 110 */ CreateEntity_SpringInABox,
    /* 111 */ CreateEntity_Rocket,
    /* 112 */ CreateEntity_FerrisWheel,
    /* 113 */ CreateEntity_WindupBlock,
    /* 114 */ CreateEntity_Minecart,
    /* 115 */ CreateEntity_PandaCart,
    /* 116 */ CreateEntity_Interactable116,
    /* 117 */ CreateEntity_Interactable117,
    /* 118 */ CreateEntity_Interactable118,
    /* 119 */ CreateEntity_Interactable119,
    /* 120 */ CreateEntity_Gondola,
    /* 121 */ CreateEntity_Boulder,
    /* 122 */ CreateEntity_UfoPlatform,
    /* 123 */ CreateEntity_ClosingWall,
    /* 124 */ CreateEntity_IceLauncher,
    /* 125 */ CreateEntity_Interactable125,
    /* 126 */ CreateEntity_Interactable126,
    /* 127 */ CreateEntity_Interactable127,
    /* 128 */ CreateEntity_Interactable128,
    /* 129 */ CreateEntity_Interactable129,
    /* 130 */ CreateEntity_Interactable130,
    /* 131 */ CreateEntity_Pendulum,
    /* 132 */ CreateEntity_SpringPlatformA,
    /* 133 */ CreateEntity_SpringPlatformB,
    /* 134 */ CreateEntity_Interactable134,
    /* 135 */ CreateEntity_Interactable135,
    /* 136 */ CreateEntity_MazeEnter,
    /* 137 */ CreateEntity_MazeCorner,
    /* 138 */ CreateEntity_MazeExit,
    /* 139 */ CreateEntity_PlatformChaosAngel,
    /* 140 */ CreateEntity_ChaoInStage,
    /* 141 */ CreateEntity_SpecialKey,
    /* 142 */ CreateEntity_FinalZoneRing,
    /* 143 */ CreateEntity_ChaoInPlayground,
    /* 144 */ CreateEntity_EmeraldInPlayground,
};

const MapEntityInit gSpriteInits_InteractablesMultiplayer[] = {
    /* 000 */ CreateEntity_Toggle_PlayerLayer_Swap,
    /* 001 */ CreateEntity_Toggle_PlayerLayer_Front,
    /* 002 */ CreateEntity_Toggle_PlayerLayer_Back,
    /* 003 */ CreateEntity_Interactable015,
    /* 004 */ CreateEntity_Spring_Up,
    /* 005 */ CreateEntity_Spring_Left,
    /* 006 */ CreateEntity_Spring_Right,
    /* 007 */ CreateEntity_Spring_Small_UpRight,
    /* 008 */ CreateEntity_Platform_0_0,
    /* 009 */ CreateEntity_Platform_0_3,
    /* 010 */ CreateEntity_Platform_1_0,
    /* 011 */ CreateEntity_Platform_1_3,
    /* 012 */ CreateEntity_Ramp,
    /* 013 */ CreateEntity_Spikes_Up,
    /* 014 */ CreateEntity_Booster_Default,
    /* 015 */ CreateEntity_GrindRail0,
    /* 016 */ CreateEntity_Interactable073,
    /* 017 */ CreateEntity_Interactable074,
    /* 018 */ CreateEntity_Interactable073,
    /* 019 */ CreateEntity_GrindRail1,
    /* 020 */ CreateEntity_GrindRail2,
    /* 021 */ CreateEntity_GrindRail3,
    /* 022 */ CreateEntity_GrindRail4,
    /* 023 */ CreateEntity_MultiplayerItemBox,
    /* 024 */ CreateEntity_MultiplayerChao,
};

void Task_EntitiesManagerInit(void);
void InitEntityBlock_Interactables(u16 param0, EntitiesStruct *es);
void InitEntityBlock_Enemies(u16 param0, EntitiesStruct *es);
void InitEntityBlock_Items(u16 param0, EntitiesStruct *es);
void InitEntityBlock_InteractablesSinglePakMP(u16 param0, EntitiesStruct *es);
void SpawnMapEntities(void);

extern const RLCompressed *const gSpritePosData_interactables[NUM_LEVEL_IDS];
extern const RLCompressed *const gSpritePosData_itemboxes[NUM_LEVEL_IDS];
extern const RLCompressed *const gSpritePosData_enemies[NUM_LEVEL_IDS];
extern const RLCompressed gUnk_singlepak_rl_data[];
extern const u8 gUnknown_0203F000[];
#endif // (GAME == GAME_SA3)

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

void Task_EntitiesManagerInit(void)
{

    if (!(0x1 & gStageData.stageFlags)) {
        EntitiesManager *em = TASK_DATA(gCurTask);
        EntitiesStruct es;

        if (em->SA2_LABEL(unk14) == 0) {
            if (ABS(gCamera.x - em->prevCamX) > 248) {
                SpawnMapEntities();
                return;
            }

            if (ABS(gCamera.y - em->prevCamY) > 208) {
                SpawnMapEntities();
                return;
            }

            es.interactables = (u32 *)em->interactables;
            es.enemies = (u32 *)em->enemies;
            es.items = (u32 *)em->items;
            if (CURRENT_GAME_MODE != GAME_MODE_MP_SINGLE_PACK) {
                es.enemies = (u32 *)em->enemies + 3;
                es.items = (u32 *)em->items + 3;
            }

            es.interactables++;
            es.regionsX = (u16)*es.interactables++;
            es.regionsY = (u16)*es.interactables++;

            if (gCamera.x > em->prevCamX) {
                es.range1.xLow = em->prevCamX + (DISPLAY_WIDTH + 128);
                es.range1.xHigh = gCamera.x + (DISPLAY_WIDTH + 128);
            } else {
                es.range1.xLow = gCamera.x - 128;
                es.range1.xHigh = em->prevCamX - 128;
            }
        }

        if (em->SA2_LABEL(unk14) != 0) {
            SpawnMapEntities();
        } else {
            es.range1.yLow = gCamera.y - 128;
            es.range1.yHigh = gCamera.y + (DISPLAY_HEIGHT + 128);
            if (gCamera.y > em->prevCamY) {
                es.range2.yLow = em->prevCamY + (DISPLAY_HEIGHT + 128);
                es.range2.yHigh = gCamera.y + (DISPLAY_HEIGHT + 128);
            } else {
                es.range2.yLow = gCamera.y - 128;
                es.range2.yHigh = em->prevCamY - 128;
            }
            es.range2.xLow = gCamera.x - 128;
            es.range2.xHigh = gCamera.x + (DISPLAY_WIDTH + 128);
            if (es.range1.xLow < 0) {
                es.range1.xLow = 0;
            }
            if (es.range1.yLow < 0) {
                es.range1.yLow = 0;
            }
            if (es.range1.xHigh < 0) {
                es.range1.xHigh = 0;
            }
            if (es.range1.yHigh < 0) {
                es.range1.yHigh = 0;
            }
            if ((unsigned)es.range1.xLow >= (es.regionsX << 8)) {
                es.range1.xLow = (es.regionsX << 8) - 1;
            }
            if ((unsigned)es.range1.yLow >= (es.regionsY << 8)) {
                es.range1.yLow = (es.regionsY << 8) - 1;
            }
            if ((unsigned)es.range1.xHigh >= (es.regionsX << 8)) {
                es.range1.xHigh = (es.regionsX << 8) - 1;
            }
            if ((unsigned)es.range1.yHigh >= (es.regionsY << 8)) {
                es.range1.yHigh = (es.regionsY << 8) - 1;
            }

            if (es.range2.xLow < 0) {
                es.range2.xLow = 0;
            }
            if (es.range2.yLow < 0) {
                es.range2.yLow = 0;
            }
            if (es.range2.xHigh < 0) {
                es.range2.xHigh = 0;
            }
            if (es.range2.yHigh < 0) {
                es.range2.yHigh = 0;
            }
            if ((unsigned)es.range2.xLow >= (es.regionsX << 8)) {
                es.range2.xLow = (es.regionsX << 8) - 1;
            }
            if ((unsigned)es.range2.yLow >= (es.regionsY << 8)) {
                es.range2.yLow = (es.regionsY << 8) - 1;
            }
            if ((unsigned)es.range2.xHigh >= (es.regionsX << 8)) {
                es.range2.xHigh = (es.regionsX << 8) - 1;
            }
            if ((unsigned)es.range2.yHigh >= (es.regionsY << 8)) {
                es.range2.yHigh = (es.regionsY << 8) - 1;
            }
            if ((gCamera.x != em->prevCamX) && (es.range1.xLow != es.range1.xHigh) && (es.range1.yLow != es.range1.yHigh)) {
                es.currentRegionY = (u16)I(es.range1.yLow);
                while ((Q(es.currentRegionY) < es.range1.yHigh) && (es.currentRegionY < es.regionsY)) {
                    es.currentRegionX = (u16)I(es.range1.xLow);
                    while ((Q(es.currentRegionX) < es.range1.xHigh) && (es.currentRegionX < es.regionsX)) {
                        if (CURRENT_GAME_MODE != GAME_MODE_MP_SINGLE_PACK) {
                            InitEntityBlock_Interactables(0, &es);
                            InitEntityBlock_Enemies(0, &es);
                            InitEntityBlock_Items(0, &es);
                        } else {
                            InitEntityBlock_InteractablesSinglePakMP(0, &es);
                        }
                        es.currentRegionX++;
                    }
                    es.currentRegionY++;
                }
            }
            if ((gCamera.y != em->prevCamY) && (es.range2.yLow != es.range2.yHigh) && (es.range2.xLow != es.range2.xHigh)) {
                es.currentRegionY = (u16)I(es.range2.yLow);
                while ((Q(es.currentRegionY) < es.range2.yHigh) && (es.currentRegionY < es.regionsY)) {
                    es.currentRegionX = (u16)I(es.range2.xLow);
                    while ((Q(es.currentRegionX) < es.range2.xHigh) && (es.currentRegionX < es.regionsX)) {
                        if (CURRENT_GAME_MODE != GAME_MODE_MP_SINGLE_PACK) {
                            InitEntityBlock_Interactables(1, &es);
                            InitEntityBlock_Enemies(1, &es);
                            InitEntityBlock_Items(1, &es);
                        } else {
                            InitEntityBlock_InteractablesSinglePakMP(1, &es);
                        }
                        es.currentRegionX++;
                    }
                    es.currentRegionY++;
                }
            }
            em->prevCamX = gCamera.x;
            em->prevCamY = gCamera.y;
        }
    }
}

void SpawnMapEntities()
{
    EntitiesStruct es;

    if (!(1 & gStageData.stageFlags)) {
        EntitiesManager *em = TASK_DATA(gCurTask);
        es.interactables = (u32 *)em->interactables;
        es.enemies = (u32 *)em->enemies;
        if (CURRENT_GAME_MODE != GAME_MODE_MP_SINGLE_PACK) {
            es.enemies = (u32 *)em->enemies + 3;
            es.items = (u32 *)em->items + 3;
        }

        es.interactables++;
        es.regionsX = (u16)*es.interactables++;
        es.regionsY = (u16)*es.interactables++;

        es.range2.xLow = gCamera.x - 128;
        es.range2.xHigh = gCamera.x + (DISPLAY_WIDTH + 128);
        es.range2.yLow = gCamera.y - 128;
        es.range2.yHigh = gCamera.y + (DISPLAY_HEIGHT + 128);
        if (es.range2.xLow < 0) {
            es.range2.xLow = 0;
        }
        if (es.range2.yLow < 0) {
            es.range2.yLow = 0;
        }
        if (es.range2.xHigh < 0) {
            es.range2.xHigh = 0;
        }
        if (es.range2.yHigh < 0) {
            es.range2.yHigh = 0;
        }

        if (es.range2.xLow >= (es.regionsX << 8)) {
            es.range2.xLow = (es.regionsX << 8) - 1;
        }
        if (es.range2.yLow >= (es.regionsY << 8)) {
            es.range2.yLow = (es.regionsY << 8) - 1;
        }
        if (es.range2.xHigh >= (es.regionsX << 8)) {
            es.range2.xHigh = (es.regionsX << 8) - 1;
        }
        if (es.range2.yHigh >= (es.regionsY << 8)) {
            es.range2.yHigh = (es.regionsY << 8) - 1;
        }

        es.currentRegionY = I(es.range2.yLow);
        while ((Q(es.currentRegionY) < es.range2.yHigh) && (es.currentRegionY < es.regionsY)) {
            es.currentRegionX = I(es.range2.xLow);
            while ((Q(es.currentRegionX) < es.range2.xHigh) && (es.currentRegionX < es.regionsX)) {
                if (CURRENT_GAME_MODE != GAME_MODE_MP_SINGLE_PACK) {
                    InitEntityBlock_Interactables(1, (void *)&es);
                    InitEntityBlock_Enemies(1, &es);
                    InitEntityBlock_Items(1, &es);
                } else {
                    InitEntityBlock_InteractablesSinglePakMP(1, &es);
                }
                es.currentRegionX++;
            }
            es.currentRegionY++;
        }
        em->prevCamX = gCamera.x;
        em->prevCamY = gCamera.y;
        em->SA2_LABEL(unk14) = 0;
        gCurTask->main = (void (*)())Task_EntitiesManagerInit;
    }
}

void InitEntityBlock_Interactables(u16 param0, EntitiesStruct *es)
{
    s32 worldX, worldY;
    MapEntity *me;
    Range *range;
    u32 i;

    range = &es->range2;
    if (param0 == 0) {
        range = &es->range1;
    }

    es->entityIdInRegion = READ_START_INDEX(es->interactables, es->regionsX, es->currentRegionX, es->currentRegionY);
    if (es->entityIdInRegion != 0) {
        es->me = (MapEntity *)(((u8 *)es->interactables) + (es->entityIdInRegion - 8));

        for (es->entityIdInRegion = 0; (s8)es->me->x != -1; es->entityIdInRegion++) {
            if ((s8)es->me->x < -2) {
                es->me++;
                continue;
            }
            es->worldX = TO_WORLD_POS(es->me->x, es->currentRegionX);
            es->worldY = TO_WORLD_POS(es->me->y, es->currentRegionY);
            if ((es->worldX >= range->xLow) && (es->worldX <= range->xHigh) && (es->worldY >= range->yLow)
                && (es->worldY <= range->yHigh)) {
                MapEntityInit initFunc = gSpriteInits_Interactables[es->me->index];
                if (initFunc != NULL) {
                    do {
                        initFunc(es->me, es->currentRegionX, es->currentRegionY, es->entityIdInRegion);
                    } while (0);
                }
            }

            es->me++;
        }
    }
}

void InitEntityBlock_Enemies(u16 param0, EntitiesStruct *es)
{
    s32 worldX, worldY;
    MapEntity *me;
    Range *range;
    u32 i;

    if (CURRENT_GAME_MODE == GAME_MODE_2) {
        return;
    }

    range = &es->range2;
    if (param0 == 0) {
        range = &es->range1;
    }

    es->entityIdInRegion = READ_START_INDEX(es->enemies, es->regionsX, es->currentRegionX, es->currentRegionY);
    if (es->entityIdInRegion != 0) {
        es->me2 = (MapEntity *)(((u8 *)es->enemies) + (es->entityIdInRegion - 8));

        for (es->entityIdInRegion = 0; (s8)es->me2->x != -1;) {
            if ((s8)es->me2->x < -2) {
                es->me2++;
                es->entityIdInRegion++;
                continue;
            }
            es->worldX = TO_WORLD_POS(es->me2->x, es->currentRegionX);
            es->worldY = TO_WORLD_POS(es->me2->y, es->currentRegionY);
            if ((es->worldX >= range->xLow) && (es->worldX <= range->xHigh) && (es->worldY >= range->yLow)
                && (es->worldY <= range->yHigh)) {

                // TODO: Use difficulty macros!
                if ((CURRENT_GAME_MODE == 0 || CURRENT_GAME_MODE == 5)
                    && (gStageData.act == ACT_1 || gStageData.act == ACT_2 || gStageData.act == ACT_3)
                    && (gStageData.difficulty == DIFFICULTY_EASY) && (gUnknown_080CF104[gStageData.zone] == es->me2->index)) {
                    SET_MAP_ENTITY_INITIALIZED(es->me2);
                    continue;
                } else {
                    gSpriteInits_Enemies[es->me2->index](es->me2, es->currentRegionX, es->currentRegionY, es->entityIdInRegion);
                }
            }

            es->me2++;
            es->entityIdInRegion++;
        }
    }
}

void InitEntityBlock_Items(u16 param0, EntitiesStruct *es)
{
    s32 worldX, worldY;
    MapEntity *me;
    Range *range;
    u32 i;

    range = &es->range2;
    if (param0 == 0) {
        range = &es->range1;
    }

    es->entityIdInRegion = READ_START_INDEX(es->items, es->regionsX, es->currentRegionX, es->currentRegionY);
    if (es->entityIdInRegion != 0) {
        es->me3 = (MapEntity_Itembox *)(((u8 *)es->items) + (es->entityIdInRegion - 8));

        for (es->entityIdInRegion = 0; (s8)es->me3->x != -1; es->entityIdInRegion++) {
            if ((s8)es->me3->x < -2) {
                es->me3++;
                continue;
            }
            es->worldX = TO_WORLD_POS(es->me3->x, es->currentRegionX);
            es->worldY = TO_WORLD_POS(es->me3->y, es->currentRegionY);
            if ((es->worldX >= range->xLow) && (es->worldX <= range->xHigh) && (es->worldY >= range->yLow)
                && (es->worldY <= range->yHigh)) {
                CreateEntity_ItemBox(es->me3, es->currentRegionX, es->currentRegionY, es->entityIdInRegion);
            }

            es->me3++;
        }
    }
}

void InitEntityBlock_InteractablesSinglePakMP(u16 param0, EntitiesStruct *es)
{
    s32 worldX, worldY;
    MapEntity *me;
    Range *range;
    u32 i;

    range = &es->range2;
    if (param0 == 0) {
        range = &es->range1;
    }

    es->entityIdInRegion = READ_START_INDEX(es->interactables, es->regionsX, es->currentRegionX, es->currentRegionY);
    if (es->entityIdInRegion != 0) {
        es->me = (MapEntity *)(((u8 *)es->interactables) + (es->entityIdInRegion - 8));

        for (es->entityIdInRegion = 0; (s8)es->me->x != -1; es->entityIdInRegion++) {
            if ((s8)es->me->x < -2) {
                es->me++;
                continue;
            }
            es->worldX = TO_WORLD_POS(es->me->x, es->currentRegionX);
            es->worldY = TO_WORLD_POS(es->me->y, es->currentRegionY);
            if ((es->worldX >= range->xLow) && (es->worldX <= range->xHigh) && (es->worldY >= range->yLow)
                && (es->worldY <= range->yHigh)) {
                gSpriteInits_InteractablesMultiplayer[es->me->index](es->me, es->currentRegionX, es->currentRegionY, es->entityIdInRegion);
            }

            es->me++;
        }
    }
}

bool32 sub_802C080(Player *p)
{
    s32 temp_r1;

    if (!(p->moveState & (MOVESTATE_10000000 | MOVESTATE_1000000 | MOVESTATE_200 | MOVESTATE_100)) && ((u32)(u8)(gStageData.unk4 - 6) > 2U)
        && ((p->charFlags.someIndex == 1) || (p->charFlags.someIndex == 2) || (p->charFlags.someIndex == 4))
        && (p->callback != Player_800D944)) {
        return FALSE;
    }
    return TRUE;
}

bool32 sub_802C0D4(Player *p)
{
    if (!(p->moveState & (MOVESTATE_10000000 | MOVESTATE_1000000 | MOVESTATE_100)) && (p->callback != Player_800D944)) {
        return FALSE;
    }
    return TRUE;
}

void DestroyStageEntitiesManager(void)
{
    if (gStageData.taskEntitiesManager) {
        if (CURRENT_GAME_MODE != GAME_MODE_MP_SINGLE_PACK) {
            EntitiesManager *em = TASK_DATA(gStageData.taskEntitiesManager);
            EwramFree(em->interactables);
            EwramFree(em->items);
            EwramFree(em->enemies);
        } else {
            gStageData.taskEntitiesManager = NULL;
        }
    }
}

bool32 sub_802C140(s32 worldX, s32 worldY, s32 screenX, s32 screenY)
{
    worldX = worldX - gCamera.x;
    worldY = worldY - gCamera.y;

    // NOTE: worldX/worldY are screen-coordinates now!

    if (IS_OUT_OF_RANGE_3(worldX, worldY, 128, 128) && IS_OUT_OF_RANGE_3(screenX, screenY, 128, 128)) {
        return FALSE;
    }
    return TRUE;
}

bool32 IsWorldPtActive(s32 worldX, s32 worldY)
{
    worldX = worldX - gCamera.x;
    worldY = worldY - gCamera.y;

    // NOTE: worldX/worldY are screen-coordinates now!

    if (IS_OUT_OF_RANGE_3(worldX, worldY, 128, 128)) {
        return FALSE;
    }
    return TRUE;
}

bool32 IsScreenPtActive128px(s32 screenX, s32 screenY)
{
    if (IS_OUT_OF_RANGE_3(screenX, screenY, 128, 128)) {
        return FALSE;
    }

    return TRUE;
}

u32 IsScreenPtActive32px(s32 screenX, s32 screenY)
{
    if (IS_OUT_OF_RANGE_3(screenX, screenY, 32, 32)) {
        return FALSE;
    }

    return TRUE;
}

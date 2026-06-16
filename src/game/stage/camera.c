#include "global.h"
#include "core.h"
#include "flags.h"
#include "trig.h"
#include "malloc_ewram.h"
//#include "sprite.h"
#include "game/shared/stage/camera.h"
#include "game/stage.h"
#include "game/shared/stage/tilemap_table.h"
#include "constants/move_states.h"
#include "constants/tilemaps.h"
#include "constants/zones.h"
#include "animation_commands_bg.h"

// From SA2 - Start
#define STGBG_SCRN_DIM(w, h, charBase, screenBase)                                                                                         \
    {                                                                                                                                      \
        ((w) / TILE_WIDTH), ((h) / TILE_WIDTH), charBase, screenBase                                                                       \
    }
#define STGBG_WIDTH(arr)      ((arr)[0])
#define STGBG_HEIGHT(arr)     ((arr)[1])
#define STGBG_CHARBASE(arr)   ((arr)[2])
#define STGBG_SCREENBASE(arr) ((arr)[3])

#define CAMBG_MAP_FRONT_LAYER 0
#define CAMBG_MAP_BACK_LAYER  1
#define CAMBG_BACK_A_LAYER    2
#define CAMBG_BACK_B_LAYER    3

#if !WIDESCREEN_HACK
#define SCREENBASE_SKY_CANYON_CLOUDS 27
#define CAM_SCREENBASE_BACK_A        28
#define CAM_SCREENBASE_BACK_B        29
#define CAM_SCREENBASE_BACK_C        26
#define CAM_SCREENBASE_MAP_FRONT     30
#define CAM_SCREENBASE_MAP_BACK      31

#else
#define SCREENBASE_SKY_CANYON_CLOUDS 27

#define CAM_SCREENBASE_BACK_A    48
#define CAM_SCREENBASE_BACK_B    50
#define CAM_SCREENBASE_BACK_C    58
#define CAM_SCREENBASE_MAP_FRONT 52
#define CAM_SCREENBASE_MAP_BACK  56
#endif
// From SA2 - End

enum {
    BGID_BACKGROUND_HI = 0,
    BGID_STAGE_HI = 1,
    BGID_STAGE_LO = 2,
    BGID_BACKGROUND_LO = 3,

    BGID_COUNT
};

#define STRC_CAM_0C_DATA_COUNT 16
typedef struct StrcCamera0C {
    /* 0x00 */ s32 x;
    /* 0x04 */ s32 y;
    /* 0x08 */ u32 *data;
} StrcCamera0C;

typedef struct CamBgFuncs {
    /* 0x00 */ VoidFn init;
    /* 0x04 */ TaskMain update; // gCurTask -> StrcCamera0C
} CamBgFuncs;

struct Camera gCamera = { 0 };
Background ALIGNED(16) gStageBackgroundsRam[BGID_COUNT] = { 0 };
extern const Collision CollHeader_85D8C64_fg;

void sub_80510F8(void);
void Task_8051668(void);
void Task_8051688(void);
void Task_80516C0(void);
void Task_80516CC(void);
void Task_80516D8(void);
void Task_8051748(void);
void Task_80517B8(void);
void TaskDestructor_805116C(struct Task *t);
void TaskDestructor_80511A4(struct Task *t);

// BG Init/Update procs
void sub_8050628(void);
void sub_805068C(void);
void sub_80506E8(void);
void sub_8050A0C(void);
void sub_8050A78(void);
void sub_8050C08(void);
void sub_8050D90(void);
void sub_8050EE4(void);
void sub_80512D8(void);
void sub_805130C(void);
void sub_805146C(void);
void sub_80514A0(void);
void Task_8051708(void);
void sub_8051778(void);
void sub_80517E8(void);
void sub_8050570(void);
void sub_805129C(void);
void sub_80505CC(void);
void sub_80512AC(void);
void sub_8050440(void);
void sub_80512F4(void);
void sub_8050628(void);
void sub_8051344(void);
void sub_8050804(void);
void sub_80514C0(void);
void sub_8050748(void);
void sub_8050804(void);
void sub_8050920(void);
void sub_80514C0(void);
void sub_8050804(void);
void sub_80514C0(void);
void sub_8050570(void);
void sub_805129C(void);
void sub_80505CC(void);
void sub_80512AC(void);
void sub_8050628(void);
void sub_805137C(void);
void sub_8050864(void);
void sub_80508D4(void);
void sub_8050864(void);
void sub_80508D4(void);
void sub_8050864(void);
void sub_80508D4(void);
void sub_8050570(void);
void sub_805129C(void);
void sub_80505CC(void);
void sub_80512AC(void);
void sub_8050628(void);
void sub_80513B4(void);
void sub_80509B4(void);
void sub_80509B4(void);
void sub_80509B4(void);
void sub_80511E4(void);
void sub_8051514(void);
void sub_8050570(void);
void sub_805129C(void);
void sub_80505CC(void);
void sub_80512AC(void);
void sub_8050628(void);
void sub_80513EC(void);
void sub_8050B14(void);
void sub_8050B84(void);
void sub_8050B14(void);
void sub_8050B84(void);
void sub_8050B14(void);
void sub_8050B84(void);
void sub_8050CA4(void);
void sub_8051534(void);
void sub_8050570(void);
void sub_805129C(void);
void sub_80505CC(void);
void sub_80512AC(void);
void sub_8050628(void);
void sub_80513FC(void);
void sub_805120C(void);
void sub_8050D40(void);
void sub_805120C(void);
void sub_8050D40(void);
void sub_805120C(void);
void sub_8050D40(void);
void sub_8050570(void);
void sub_805129C(void);
void sub_80505CC(void);
void sub_80512AC(void);
void sub_8050628(void);
void sub_8051418(void);
void sub_8050E18(void);
void sub_8051558(void);
void sub_8050E18(void);
void sub_80515A0(void);
void sub_8050E18(void);
void sub_8050E78(void);
void sub_8051250(void);
void sub_80515FC(void);
void sub_8050570(void);
void sub_805129C(void);
void sub_80505CC(void);
void sub_80512AC(void);
void sub_8051634(void);
void sub_8051660(void);
void sub_8051094(void);
void sub_8051664(void);

const Background gStageCameraBgTemplates[4] = {
    [CAMBG_MAP_FRONT_LAYER] = {
        .graphics = {  
            .src = NULL,  
            .dest = (void*)BG_VRAM,  
            .size = 0,  
            .anim = 0,
        },
        .layoutVram = (void*)BG_SCREEN_ADDR(CAM_SCREENBASE_MAP_FRONT),
        .layout = NULL,
        .xTiles = 0,
        .yTiles = 0,
        .unk18 = 0,
        .unk1A = 0,
        .tilemapId = 0,
        .unk1E = 0,
        .unk20 = 0,
        .unk22 = 0,
        .unk24 = 0,
#if (GAME <= GAME_SA2) || ((GAME == GAME_SA3) && WIDESCREEN_HACK)
        .targetTilesX = (DISPLAY_WIDTH / TILE_WIDTH) + 1,
        .targetTilesY = (DISPLAY_HEIGHT / TILE_WIDTH) + 1,
#elif (GAME == GAME_SA3)
        .targetTilesX = (256 / TILE_WIDTH),
        .targetTilesY = (256 / TILE_WIDTH),
#endif
        .paletteOffset = 0,
        .animFrameCounter = 0,
        .animDelayCounter = 0,
        .flags = BACKGROUND_FLAG_IS_LEVEL_MAP | BACKGROUND_FLAG_20 | BACKGROUND_DISABLE_PALETTE_UPDATE | BACKGROUND_DISABLE_TILESET_UPDATE | BACKGROUND_FLAGS_BG_ID(1),
        .scrollX = 0,
        .scrollY = 0,
        .prevScrollX = 32767,
        .prevScrollY = 32767,
        .metatileMap = NULL,
        .mapWidth = 0,
        .mapHeight = 0,
    },
    [CAMBG_MAP_BACK_LAYER] = {
        .graphics = {  
            .src = NULL,  
            .dest = (void*)BG_VRAM,  
            .size = 0,  
            .anim = 0,
        },
        .layoutVram = (void*)BG_SCREEN_ADDR(CAM_SCREENBASE_MAP_BACK),
        .layout = NULL,
        .xTiles = 0,
        .yTiles = 0,
        .unk18 = 0,
        .unk1A = 0,
        .tilemapId = 0,
        .unk1E = 0,
        .unk20 = 0,
        .unk22 = 0,
        .unk24 = 0,
#if (GAME <= GAME_SA2) || ((GAME == GAME_SA3) && WIDESCREEN_HACK)
        .targetTilesX = (DISPLAY_WIDTH / TILE_WIDTH) + 1,
        .targetTilesY = (DISPLAY_HEIGHT / TILE_WIDTH) + 1,
#elif (GAME == GAME_SA3)
        .targetTilesX = (256 / TILE_WIDTH),
        .targetTilesY = (256 / TILE_WIDTH),
#endif
        .paletteOffset = 0,
        .animFrameCounter = 0,
        .animDelayCounter = 0,
        .flags = BACKGROUND_FLAG_IS_LEVEL_MAP | BACKGROUND_FLAG_20 | BACKGROUND_FLAGS_BG_ID(2),
        .scrollX = 0,
        .scrollY = 0,
        .prevScrollX = 32767,
        .prevScrollY = 32767,
        .metatileMap = NULL,
        .mapWidth = 0,
        .mapHeight = 0,
    },
    [CAMBG_BACK_A_LAYER] = {
        .graphics = {  
            .src = NULL,  
            .dest = (void*)BG_SCREEN_ADDR(16),  
            .size = 0,  
            .anim = 0,
        },
        .layoutVram = (void*)BG_SCREEN_ADDR(CAM_SCREENBASE_BACK_B),
        .layout = NULL,
        .xTiles = 0,
        .yTiles = 0,
        .unk18 = 0,
        .unk1A = 0,
        .tilemapId = 0,
        .unk1E = 0,
        .unk20 = 0,
        .unk22 = 0,
        .unk24 = 0,
        .targetTilesX = (256 / TILE_WIDTH),
        .targetTilesY = (256 / TILE_WIDTH),
        .paletteOffset = 0,
        .animFrameCounter = 0,
        .animDelayCounter = 0,
        .flags = BACKGROUND_DISABLE_PALETTE_UPDATE | BACKGROUND_FLAGS_BG_ID(3),
        .scrollX = 0,
        .scrollY = 0,
        .prevScrollX = 32767,
        .prevScrollY = 32767,
        .metatileMap = NULL,
        .mapWidth = 0,
        .mapHeight = 0,
    },
    [CAMBG_BACK_B_LAYER] = {
        .graphics = {  
            .src = NULL,  
            .dest = (void*)BG_CHAR_ADDR(3),  
            .size = 0,  
            .anim = 0,
        },
        .layoutVram = (void*)BG_SCREEN_ADDR(CAM_SCREENBASE_BACK_A),
        .layout = NULL,
        .xTiles = 0,
        .yTiles = 0,
        .unk18 = 0,
        .unk1A = 0,
        .tilemapId = 0,
        .unk1E = 0,
        .unk20 = 0,
        .unk22 = 0,
        .unk24 = 0,
        .targetTilesX = (256 / TILE_WIDTH),
        .targetTilesY = (256 / TILE_WIDTH),
        .paletteOffset = 0,
        .animFrameCounter = 0,
        .animDelayCounter = 0,
        .flags = BACKGROUND_DISABLE_PALETTE_UPDATE | BACKGROUND_FLAGS_BG_ID(0),
        .scrollX = 0,
        .scrollY = 0,
        .prevScrollX = 32767,
        .prevScrollY = 32767,
        .metatileMap = NULL,
        .mapWidth = 0,
        .mapHeight = 0,
    },
};

const u16 gCameraMaxCoords[NUM_LEVEL_IDS][2] = {
    /*        maxX,   maxY */
    [0] = { 0x0000, 0x0000 }, //
    [1] = { 0x0240, 0x0120 }, //
    [2] = { 0x0B40, 0x0360 }, //
    [3] = { 0x3300, 0x0CC0 }, //
    [4] = { 0x3660, 0x0B40 }, //
    [5] = { 0x3420, 0x0D20 }, //
    [6] = { 0x0000, 0x0000 }, //
    [7] = { 0x0960, 0x0120 }, //
    [8] = { 0x0120, 0x00C0 }, //
    [9] = { 0x0420, 0x03C0 }, //
    [10] = { 0x0000, 0x0000 }, //
    [11] = { 0x02A0, 0x0120 }, //
    [12] = { 0x0660, 0x0480 }, //
    [13] = { 0x3A20, 0x0960 }, //
    [14] = { 0x2340, 0x0A20 }, //
    [15] = { 0x1D40, 0x0C60 }, //
    [16] = { 0x0000, 0x0000 }, //
    [17] = { 0x0840, 0x01E0 }, //
    [18] = { 0x0120, 0x00C0 }, //
    [19] = { 0x0420, 0x03C0 }, //
    [20] = { 0x0000, 0x0000 }, //
    [21] = { 0x0000, 0x0000 }, //
    [22] = { 0x05A0, 0x06C0 }, //
    [23] = { 0x14A0, 0x1860 }, //
    [24] = { 0x1680, 0x1860 }, //
    [25] = { 0x1860, 0x0F60 }, //
    [26] = { 0x0000, 0x0000 }, //
    [27] = { 0x0840, 0x0120 }, //
    [28] = { 0x0120, 0x00C0 }, //
    [29] = { 0x0360, 0x0480 }, //
    [30] = { 0x0000, 0x0000 }, //
    [31] = { 0x0000, 0x0000 }, //
    [32] = { 0x0660, 0x0600 }, //
    [33] = { 0x3420, 0x0D80 }, //
    [34] = { 0x37E0, 0x0C60 }, //
    [35] = { 0x1FE0, 0x0B40 }, //
    [36] = { 0x0000, 0x0000 }, //
    [37] = { 0x08A0, 0x0120 }, //
    [38] = { 0x0120, 0x00C0 }, //
    [39] = { 0x0300, 0x0420 }, //
    [40] = { 0x0000, 0x0000 }, //
    [41] = { 0x0000, 0x0000 }, //
    [42] = { 0x0600, 0x0540 }, //
    [43] = { 0x3480, 0x0D80 }, //
    [44] = { 0x33C0, 0x0F60 }, //
    [45] = { 0x4B00, 0x0BA0 }, //
    [46] = { 0x0000, 0x0000 }, //
    [47] = { 0x07E0, 0x0660 }, //
    [48] = { 0x0120, 0x00C0 }, //
    [49] = { 0x04E0, 0x0300 }, //
    [50] = { 0x0000, 0x0000 }, //
    [51] = { 0x0000, 0x0000 }, //
    [52] = { 0x0720, 0x0600 }, //
    [53] = { 0x3CC0, 0x0A80 }, //
    [54] = { 0x3240, 0x0960 }, //
    [55] = { 0x32A0, 0x0660 }, //
    [56] = { 0x0000, 0x0000 }, //
    [57] = { 0x09C0, 0x01E0 }, //
    [58] = { 0x0120, 0x00C0 }, //
    [59] = { 0x0420, 0x03C0 }, //
    [60] = { 0x0000, 0x0000 }, //
    [61] = { 0x0000, 0x0000 }, //
    [62] = { 0x0780, 0x0600 }, //
    [63] = { 0x4380, 0x0F00 }, //
    [64] = { 0x5520, 0x1020 }, //
    [65] = { 0x2EE0, 0x0780 }, //
    [66] = { 0x0000, 0x0000 }, //
    [67] = { 0x06C0, 0x0420 }, //
    [68] = { 0x0120, 0x00C0 }, //
    [69] = { 0x0420, 0x0420 }, //
    [70] = { 0x0000, 0x0000 }, //
    [71] = { 0x0960, 0x0120 }, //
    [72] = { 0x0B40, 0x00F0 }, //
};

const CamBgFuncs sBackgroundProcs[NUM_LEVEL_IDS] = {
    [0] = { NULL, NULL }, //
    [1] = { sub_805068C, sub_80512D8 }, //
    [2] = { sub_8050628, sub_805130C }, //
    [3] = { sub_805068C, sub_80506E8 }, //
    [4] = { sub_805068C, sub_80506E8 }, //
    [5] = { sub_805068C, sub_80506E8 }, //
    [6] = { NULL, NULL }, //
    [7] = { sub_805146C, sub_80514A0 }, //
    [8] = { sub_8050570, sub_805129C }, //
    [9] = { sub_80505CC, sub_80512AC }, //
    [10] = { NULL, NULL }, //
    [11] = { sub_8050440, sub_80512F4 }, //
    [12] = { sub_8050628, sub_8051344 }, //
    [13] = { sub_8050804, sub_80514C0 }, //
    [14] = { sub_8050804, sub_80514C0 }, //
    [15] = { sub_8050804, sub_80514C0 }, //
    [16] = { NULL, NULL }, //
    [17] = { NULL, NULL }, //
    [18] = { sub_8050570, sub_805129C }, //
    [19] = { sub_80505CC, sub_80512AC }, //
    [20] = { NULL, NULL }, //
    [21] = { NULL, NULL }, //
    [22] = { sub_8050628, sub_805137C }, //
    [23] = { sub_8050864, sub_80508D4 }, //
    [24] = { sub_8050864, sub_80508D4 }, //
    [25] = { sub_8050864, sub_80508D4 }, //
    [26] = { NULL, NULL }, //
    [27] = { NULL, NULL }, //
    [28] = { sub_8050570, sub_805129C }, //
    [29] = { sub_80505CC, sub_80512AC }, //
    [30] = { NULL, NULL }, //
    [31] = { NULL, NULL }, //
    [32] = { sub_8050628, sub_80513B4 }, //
    [33] = { sub_80509B4, sub_8050A0C }, //
    [34] = { sub_80509B4, sub_8050A0C }, //
    [35] = { sub_80509B4, sub_8050A0C }, //
    [36] = { NULL, NULL }, //
    [37] = { sub_80511E4, sub_8051514 }, //
    [38] = { sub_8050570, sub_805129C }, //
    [39] = { sub_80505CC, sub_80512AC }, //
    [40] = { NULL, NULL }, //
    [41] = { NULL, NULL }, //
    [42] = { sub_8050628, sub_80513EC }, //
    [43] = { sub_8050B14, sub_8050B84 }, //
    [44] = { sub_8050B14, sub_8050B84 }, //
    [45] = { sub_8050B14, sub_8050B84 }, //
    [46] = { NULL, NULL }, //
    [47] = { sub_8050CA4, sub_8051534 }, //
    [48] = { sub_8050570, sub_805129C }, //
    [49] = { sub_80505CC, sub_80512AC }, //
    [50] = { NULL, NULL }, //
    [51] = { NULL, NULL }, //
    [52] = { sub_8050628, sub_80513FC }, //
    [53] = { sub_805120C, sub_8050D40 }, //
    [54] = { sub_805120C, sub_8050D40 }, //
    [55] = { sub_805120C, sub_8050D40 }, //
    [56] = { NULL, NULL }, //
    [57] = { NULL, NULL }, //
    [58] = { sub_8050570, sub_805129C }, //
    [59] = { sub_80505CC, sub_80512AC }, //
    [60] = { NULL, NULL }, //
    [61] = { NULL, NULL }, //
    [62] = { sub_8050628, sub_8051418 }, //
    [63] = { sub_8050E18, sub_8051558 }, //
    [64] = { sub_8050E18, sub_80515A0 }, //
    [65] = { sub_8050E18, sub_8050E78 }, //
    [66] = { NULL, NULL }, //
    [67] = { sub_8051250, sub_80515FC }, //
    [68] = { sub_8050570, sub_805129C }, //
    [69] = { sub_80505CC, sub_80512AC }, //
    [70] = { NULL, NULL }, //
    [71] = { sub_8051634, sub_8051660 }, //
    [72] = { sub_8051094, sub_8051664 }, //
};
const u16 gUnknown_080D0914[] = { 455, 456, 457, 458, 459, 460 };
const u16 gUnknown_080D0920[] = { 461, 462, 463, 464, 465, 466 };
const s8 gUnknown_080D092C[] = { 0x01, 0x01, 0x02, 0x03, 0x03, 0x03, 0x02, 0x03, 0x03, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04,
                                 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04 };
const s8 gUnknown_080D094C[] = { 0x02, 0x02, 0x02, 0x02, 0x02, 0xFE, 0xFE, 0xFE, 0xFE, 0xFE, 0x01, 0x01, 0x01, 0x01, 0x01, 0xFF,
                                 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0xFE, 0xFE, 0xFE, 0xFE, 0xFE };
const s8 gUnknown_080D096C[] = { 0x01, 0x02, 0x02, 0x03, 0x03, 0x03, 0x02, 0x02, 0x04, 0x04, 0x04, 0x01, 0x02, 0x02, 0x02, 0x02,
                                 0x01, 0x02, 0x02, 0x03, 0x03, 0x03, 0x02, 0x02, 0x04, 0x04, 0x04, 0x01, 0x02, 0x02, 0x02, 0x02 };
const s8 gUnknown_080D098C[] = { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x01, 0x02, 0x03,
                                 0x03, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04 };

void InitCamera(s32 level, u8 UNUSED entryIndex)
{
    s16 layer;
    StrcCamera0C *strcC;

    struct Camera *cam = &gCamera;
    StageData *sd = &gStageData;

    gDispCnt = DISPCNT_OBJ_1D_MAP;
    sd->unk10 = 0x1600;
    if (gStageData.act != ACT_BOSS) {
        /* Regular stages (non-boss) */
#if !WIDESCREEN_HACK
        gBgCntRegs[1]
            = BGCNT_TXT256x256 | BGCNT_PRIORITY(0) | BGCNT_SCREENBASE(CAM_SCREENBASE_MAP_FRONT) | BGCNT_16COLOR | BGCNT_CHARBASE(0);
        gBgCntRegs[2]
            = BGCNT_TXT256x256 | BGCNT_PRIORITY(1) | BGCNT_SCREENBASE(CAM_SCREENBASE_MAP_BACK) | BGCNT_16COLOR | BGCNT_CHARBASE(0);
#else
        gBgCntRegs[1]
            = BGCNT_TXT512x512 | BGCNT_PRIORITY(0) | BGCNT_SCREENBASE(CAM_SCREENBASE_MAP_FRONT) | BGCNT_16COLOR | BGCNT_CHARBASE(0);
        gBgCntRegs[2]
            = BGCNT_TXT512x512 | BGCNT_PRIORITY(1) | BGCNT_SCREENBASE(CAM_SCREENBASE_MAP_BACK) | BGCNT_16COLOR | BGCNT_CHARBASE(0);
#endif
        if (CURRENT_GAME_MODE != 7) {
            gBgSprites_Unknown1[0] = 0;
            gBgSprites_Unknown2[0][0] = 0;
            gBgSprites_Unknown2[0][1] = 0;
            gBgSprites_Unknown2[0][2] = -1;
            gBgSprites_Unknown2[0][3] = 0x20;
            gBgSprites_Unknown1[1] = 0;
            gBgSprites_Unknown2[1][0] = 0;
            gBgSprites_Unknown2[1][1] = 0;
            gBgSprites_Unknown2[1][2] = -1;
            gBgSprites_Unknown2[1][3] = 0x20;
            gBgSprites_Unknown1[2] = 0;
            gBgSprites_Unknown2[2][0] = 0;
            gBgSprites_Unknown2[2][1] = 0;
            gBgSprites_Unknown2[2][2] = -1;
            gBgSprites_Unknown2[2][3] = 0x20;
            gBgSprites_Unknown1[3] = 0;
            gBgSprites_Unknown2[3][0] = 0;
            gBgSprites_Unknown2[3][1] = 0;
            gBgSprites_Unknown2[3][2] = -1;
            gBgSprites_Unknown2[3][3] = 0x20;
        }

        gStageBackgroundsRam[0] = gStageCameraBgTemplates[3];
        gStageBackgroundsRam[1] = gStageCameraBgTemplates[0];
        gStageBackgroundsRam[2] = gStageCameraBgTemplates[1];
        gStageBackgroundsRam[3] = gStageCameraBgTemplates[2];

        for (layer = 0; layer < 2; layer++) {
            gStageBackgroundsRam[layer + BGID_STAGE_HI].tilemapId = TM_LEVEL_METATILES_0(level) + layer;
            DrawBackground(&gStageBackgroundsRam[layer + BGID_STAGE_HI]);
        }

        if (CURRENT_GAME_MODE != 7) {
            if (sBackgroundProcs[level].init) {
                sBackgroundProcs[level].init();
            }
            if (sBackgroundProcs[level].update) {
                cam->task50 = TaskCreate(sBackgroundProcs[level].update, sizeof(StrcCamera0C), 0x1002U, 0U, TaskDestructor_80511A4);
                strcC = TASK_DATA(cam->task50);
                strcC->x = 0;
                strcC->y = 0;
                strcC->data = 0;
            } else {
                cam->task50 = NULL;
            }

            if (gTilemaps[TM_LEVEL_BG0(level)] != NULL) {
                gStageBackgroundsRam[BGID_BACKGROUND_LO].tilemapId = TM_LEVEL_BG0(level);
                DrawBackground(&gStageBackgroundsRam[BGID_BACKGROUND_LO]);
                sd->unk10 |= 0x800;
            }

            if (gTilemaps[TM_LEVEL_BG1(level)] != NULL) {
                gStageBackgroundsRam[BGID_BACKGROUND_HI].tilemapId = TM_LEVEL_BG1(level);
                DrawBackground(&gStageBackgroundsRam[BGID_BACKGROUND_HI]);
                sd->unk10 |= 0x100;
            }
        } else {
            sub_80510F8();
            gStageBackgroundsRam[BGID_BACKGROUND_LO].tilemapId = TM_LEVEL_BG0(level);
            DrawBackground(&gStageBackgroundsRam[BGID_BACKGROUND_LO]);
            sd->unk10 |= 0x800;
            cam->task50 = TaskCreate(Task_8051668, sizeof(StrcCamera0C), 0x1002U, 0U, NULL);
            strcC = TASK_DATA(cam->task50);
            strcC->x = 0;
            strcC->y = 0;
            strcC->data = 0;
        }
    } else {
        /* Boss Acts */
        // Boss Acts, except for Zone 7, only render the lower stage-layer,
        // so Boss enemies are able to use the additional hardware BG layer.
        //
        // TODO: It's a bit odd, because Zone 7 Boss's higher stage-layer is empty.
        switch (gStageData.zone) {
            default: {
                gStageData.unk10 = 0x1301;
                gBgCntRegs[0]
                    = BGCNT_TXT256x256 | BGCNT_PRIORITY(3) | BGCNT_SCREENBASE(CAM_SCREENBASE_BACK_B) | BGCNT_16COLOR | BGCNT_CHARBASE(2);
#if !WIDESCREEN_HACK
                gBgCntRegs[1]
                    = BGCNT_TXT256x256 | BGCNT_PRIORITY(2) | BGCNT_SCREENBASE(CAM_SCREENBASE_MAP_BACK) | BGCNT_16COLOR | BGCNT_CHARBASE(0);
#else
                gBgCntRegs[1]
                    = BGCNT_TXT512x512 | BGCNT_PRIORITY(2) | BGCNT_SCREENBASE(CAM_SCREENBASE_MAP_BACK) | BGCNT_16COLOR | BGCNT_CHARBASE(0);
#endif
                gBgCntRegs[2] = BGCNT_TXT256x256 | BGCNT_PRIORITY(1) | BGCNT_SCREENBASE(26) | BGCNT_256COLOR | BGCNT_CHARBASE(1);
                gBgSprites_Unknown1[0] = 0;
                gBgSprites_Unknown2[0][0] = 0;
                gBgSprites_Unknown2[0][1] = 0;
                gBgSprites_Unknown2[0][2] = -1;
                gBgSprites_Unknown2[0][3] = 0x20;
                gBgSprites_Unknown1[1] = 0;
                gBgSprites_Unknown2[1][0] = 0;
                gBgSprites_Unknown2[1][1] = 0;
                gBgSprites_Unknown2[1][2] = -1;
                gBgSprites_Unknown2[1][3] = 0x20;
                gBgSprites_Unknown1[2] = 0;
                gBgSprites_Unknown2[2][0] = 0;
                gBgSprites_Unknown2[2][1] = 0;
                gBgSprites_Unknown2[2][2] = -1;
                gBgSprites_Unknown2[2][3] = 0x20;
                DmaFill32(3, 0, BG_VRAM + 0x4000, 0x40);

                gStageBackgroundsRam[0] = gStageCameraBgTemplates[2];
                gStageBackgroundsRam[1] = gStageCameraBgTemplates[1];
                gStageBackgroundsRam[2] = gStageCameraBgTemplates[0];
                gStageBackgroundsRam[2].graphics.dest = (void *)BG_CHAR_ADDR(1);
                gStageBackgroundsRam[2].layoutVram = (void *)BG_SCREEN_ADDR(26);
                gStageBackgroundsRam[0].flags = 0x10;
                gStageBackgroundsRam[1].flags = 0x61;
                gStageBackgroundsRam[2].flags = 0x16;
                gStageBackgroundsRam[0].tilemapId = TM_LEVEL_BG0(level);
                DrawBackground(&gStageBackgroundsRam[0]);
                gStageBackgroundsRam[1].tilemapId = TM_LEVEL_METATILES_1(level);
                DrawBackground(&gStageBackgroundsRam[1]);
                cam->task50 = NULL;
                gBgScrollRegs[0][0] = 0;
                gBgScrollRegs[0][1] = 0;
            } break;

            case ZONE_5: {
                gStageData.unk10 = 0x1200;
#if !WIDESCREEN_HACK
                gBgCntRegs[1]
                    = BGCNT_TXT256x256 | BGCNT_PRIORITY(2) | BGCNT_SCREENBASE(CAM_SCREENBASE_MAP_BACK) | BGCNT_16COLOR | BGCNT_CHARBASE(0);
#else
                gBgCntRegs[1]
                    = BGCNT_TXT512x512 | BGCNT_PRIORITY(2) | BGCNT_SCREENBASE(CAM_SCREENBASE_MAP_BACK) | BGCNT_16COLOR | BGCNT_CHARBASE(0);
#endif
                gBgSprites_Unknown1[0] = 0;
                gBgSprites_Unknown2[0][0] = 0;
                gBgSprites_Unknown2[0][1] = 0;
                gBgSprites_Unknown2[0][2] = -1;
                gBgSprites_Unknown2[0][3] = 0x20;
                gBgSprites_Unknown1[1] = 0;
                gBgSprites_Unknown2[1][0] = 0;
                gBgSprites_Unknown2[1][1] = 0;
                gBgSprites_Unknown2[1][2] = -1;
                gBgSprites_Unknown2[1][3] = 0x20;
                gBgSprites_Unknown1[3] = 0;
                gBgSprites_Unknown2[3][0] = 0;
                gBgSprites_Unknown2[3][1] = 0;
                gBgSprites_Unknown2[3][2] = -1;
                gBgSprites_Unknown2[3][3] = 0x20;

                gStageBackgroundsRam[BGID_STAGE_HI] = gStageCameraBgTemplates[1];
                gStageBackgroundsRam[BGID_BACKGROUND_LO] = gStageCameraBgTemplates[2];
                gStageBackgroundsRam[BGID_STAGE_HI].flags = 0x61;
                gStageBackgroundsRam[BGID_STAGE_HI].tilemapId = TM_LEVEL_METATILES_1(level);
                DrawBackground(&gStageBackgroundsRam[BGID_STAGE_HI]);

                if (sBackgroundProcs[level].init != NULL) {
                    sBackgroundProcs[level].init();
                }

                if (gTilemaps[TM_LEVEL_BG0(level)]) {
                    gStageBackgroundsRam[BGID_BACKGROUND_LO].tilemapId = TM_LEVEL_BG0(level);
                    DrawBackground(&gStageBackgroundsRam[BGID_BACKGROUND_LO]);
                    sd->unk10 |= 0x800;
                }

                if (sBackgroundProcs[level].update != NULL) {
                    cam->task50 = TaskCreate(sBackgroundProcs[level].update, sizeof(StrcCamera0C), 0x1002U, 0U, TaskDestructor_80511A4);
                    strcC = TASK_DATA(cam->task50);
                    strcC->x = 0;
                    strcC->y = 0;
                    strcC->data = 0;
                } else {
                    cam->task50 = NULL;
                }

            } break;

            case ZONE_7: {
#if !WIDESCREEN_HACK
                gBgCntRegs[1]
                    = BGCNT_TXT256x256 | BGCNT_PRIORITY(0) | BGCNT_SCREENBASE(CAM_SCREENBASE_MAP_FRONT) | BGCNT_16COLOR | BGCNT_CHARBASE(0);
                gBgCntRegs[2]
                    = BGCNT_TXT256x256 | BGCNT_PRIORITY(1) | BGCNT_SCREENBASE(CAM_SCREENBASE_MAP_BACK) | BGCNT_16COLOR | BGCNT_CHARBASE(0);
#else
                gBgCntRegs[1]
                    = BGCNT_TXT512x512 | BGCNT_PRIORITY(0) | BGCNT_SCREENBASE(CAM_SCREENBASE_MAP_FRONT) | BGCNT_16COLOR | BGCNT_CHARBASE(0);
                gBgCntRegs[2]
                    = BGCNT_TXT512x512 | BGCNT_PRIORITY(1) | BGCNT_SCREENBASE(CAM_SCREENBASE_MAP_BACK) | BGCNT_16COLOR | BGCNT_CHARBASE(0);
#endif
                gBgSprites_Unknown1[0] = 0;
                gBgSprites_Unknown2[0][0] = 0;
                gBgSprites_Unknown2[0][1] = 0;
                gBgSprites_Unknown2[0][2] = -1;
                gBgSprites_Unknown2[0][3] = 0x20;
                gBgSprites_Unknown1[1] = 0;
                gBgSprites_Unknown2[1][0] = 0;
                gBgSprites_Unknown2[1][1] = 0;
                gBgSprites_Unknown2[1][2] = -1;
                gBgSprites_Unknown2[1][3] = 0x20;
                gBgSprites_Unknown1[2] = 0;
                gBgSprites_Unknown2[2][0] = 0;
                gBgSprites_Unknown2[2][1] = 0;
                gBgSprites_Unknown2[2][2] = -1;
                gBgSprites_Unknown2[2][3] = 0x20;
                gBgSprites_Unknown1[3] = 0;
                gBgSprites_Unknown2[3][0] = 0;
                gBgSprites_Unknown2[3][1] = 0;
                gBgSprites_Unknown2[3][2] = -1;
                gBgSprites_Unknown2[3][3] = 0x20;

                gStageBackgroundsRam[BGID_BACKGROUND_HI] = gStageCameraBgTemplates[3];
                gStageBackgroundsRam[BGID_STAGE_HI] = gStageCameraBgTemplates[0];
                gStageBackgroundsRam[BGID_STAGE_LO] = gStageCameraBgTemplates[1];
                gStageBackgroundsRam[BGID_BACKGROUND_LO] = gStageCameraBgTemplates[2];
                for (layer = 0; layer < 2; layer++) {
                    gStageBackgroundsRam[layer + BGID_STAGE_HI].tilemapId = TM_LEVEL_METATILES_0(level) + layer;
                    DrawBackground(&gStageBackgroundsRam[layer + BGID_STAGE_HI]);
                }

                if (sBackgroundProcs[level].init != NULL) {
                    sBackgroundProcs[level].init();
                }

                if (sBackgroundProcs[level].update != NULL) {
                    cam->task50 = TaskCreate(sBackgroundProcs[level].update, sizeof(StrcCamera0C), 0x1002U, 0U, TaskDestructor_80511A4);
                    strcC = TASK_DATA(cam->task50);
                    strcC->x = 0;
                    strcC->y = 0;
                    strcC->data = 0;
                } else {
                    cam->task50 = NULL;
                }

                if (gTilemaps[TM_LEVEL_BG0(level)] != NULL) {
                    gStageBackgroundsRam[BGID_BACKGROUND_LO].tilemapId = TM_LEVEL_BG0(level);
                    DrawBackground(&gStageBackgroundsRam[BGID_BACKGROUND_LO]);
                    sd->unk10 |= 0x800;
                }

                if (gTilemaps[TM_LEVEL_BG1(level)] != NULL) {
                    gStageBackgroundsRam[BGID_BACKGROUND_HI].tilemapId = TM_LEVEL_BG1(level);
                    DrawBackground(&gStageBackgroundsRam[BGID_BACKGROUND_HI]);
                }
            } break;
        }
    }

    if (CURRENT_GAME_MODE != 7) {
        gRefCollision = gCollisionTable[level];
    } else {
        gRefCollision = &CollHeader_85D8C64_fg;
    }

    cam->x = gStageData.respawnX - DISPLAY_CENTER_X;
    if (cam->x < 0) {
        cam->x = 0;
    }

    cam->y = gStageData.respawnY - (DISPLAY_CENTER_Y + 4);
    if (cam->y < 0) {
        cam->y = 0;
    }
    if (CURRENT_GAME_MODE != 7) {
        cam->maxY = gCameraMaxCoords[level][1];
        cam->maxX = gCameraMaxCoords[level][0];
    } else {
        cam->maxY = ((DISPLAY_CENTER_Y + 4) << 4);
        cam->maxX = (DISPLAY_CENTER_X << 4);
    }
    cam->SA2_LABEL(qUnk8) = Q(16);
    cam->SA2_LABEL(unkC) = 0xC;
    cam->SA2_LABEL(unk10) = cam->x;
    cam->SA2_LABEL(unk14) = cam->y;
    cam->SA2_LABEL(unk44) = 8;
    cam->SA2_LABEL(unk64) = 0xFFFC;

    if (CURRENT_GAME_MODE != 7) {
        if (gStageData.zone == ZONE_UNUSED) {
            cam->task48 = TaskCreate(Task_80516CC, 0U, 0x1000U, 0U, NULL);
        } else if ((gStageData.act == ACT_BOSS) && (gStageData.zone == ZONE_5 || gStageData.zone == ZONE_6)
                   && (gStageData.zone != ZONE_7)) {
            cam->task48 = TaskCreate(Task_80516C0, 0U, 0x1000U, 0U, NULL);
        } else {
            cam->task48 = TaskCreate(Task_8051688, 0U, 0x1000U, 0U, NULL);
        }
        if (gStageData.zone == ZONE_UNUSED) {
            cam->task4C = TaskCreate(Task_80517B8, 0U, 0x1001U, 0U, TaskDestructor_805116C);
        } else if ((gStageData.act == ACT_BOSS) && (gStageData.zone != ZONE_7)) {
            cam->task4C = TaskCreate(Task_8051748, 0U, 0x1001U, 0U, TaskDestructor_805116C);
        } else {
            cam->task4C = TaskCreate(Task_80516D8, 0U, 0x1001U, 0U, TaskDestructor_805116C);
        }
    } else {
        cam->task48 = TaskCreate(Task_8051688, 0U, 0x1000U, 0U, NULL);
        cam->task4C = TaskCreate(Task_80516D8, 0U, 0x1001U, 0U, NULL);
    }
}

void UpdateCamera(s16 arg0)
{
    s32 temp_r0_2;
    s32 temp_r1_4;
    s32 temp_r1_6;
    s32 temp_r2_2;
    s32 var_r0;
    s32 var_r0_3;
    s32 var_r0_7;
    s32 var_r1_3;
    s32 var_r1_5;
    s32 temp_r1;
    s32 temp_r2;
    struct Camera *cam = &gCamera;
    Player *p = &gPlayers[gStageData.playerIndex];
    s32 newX = cam->x;
    s32 newY = cam->y;

    if (CURRENT_GAME_MODE != GAME_MODE_MP_SINGLE_PACK) {
        temp_r2 = gCameraMaxCoords[gStageData.currentLevel][1];
        if (cam->maxY > temp_r2) {
            cam->maxY = temp_r2;
        }
        temp_r1 = gCameraMaxCoords[gStageData.currentLevel][0];
        if (cam->maxX > temp_r1) {
            cam->maxX = temp_r1;
        }
        if (cam->minY > temp_r2) {
            cam->minY = 0;
        }
        if (cam->minX > temp_r1) {
            cam->minX = 0;
        }
    }
    cam->dx = newX;
    cam->dy = newY;
    cam->shiftX = (p->qCamOffsetX >> 4);
    cam->shiftY = (p->qCamOffsetY >> 4);

    newX = CLAMP(newX, cam->minX, cam->maxX - (DISPLAY_WIDTH + 1));
    newY = CLAMP(newY, cam->minY, cam->maxY - (DISPLAY_HEIGHT + 1));

    if (cam->SA2_LABEL(unk40) != 0) {
        cam->SA2_LABEL(unk40)--;
    } else {
        if (!(cam->SA2_LABEL(unk50) & 1)) {
            s16 qSpeedX = p->qSpeedAirX;
            cam->SA2_LABEL(unk10) = I(p->qWorldX) + cam->shiftX - DISPLAY_CENTER_X;
            cam->SA2_LABEL(unk56) = (qSpeedX + (cam->SA2_LABEL(unk56) * 15)) >> 4;
            cam->SA2_LABEL(unk10) += (cam->SA2_LABEL(unk56) >> 5);
        }
        if (!(cam->SA2_LABEL(unk50) & 2)) {
            s32 unk64 = cam->SA2_LABEL(unk64);
            s32 temp8 = p->spriteOffsetY - 4;
            if (p->moveState & MOVESTATE_GRAVITY_SWITCHED) {
                temp8 = -temp8;
            }
            if (unk64 != temp8) {
                if (unk64 < temp8) {
                    unk64 += 5;
                    if (unk64 > temp8) {
                        unk64 = temp8;
                    }
                } else {
                    unk64 -= 5;
                    if (unk64 < temp8) {
                        unk64 = temp8;
                    }
                }
                cam->SA2_LABEL(unk64) = unk64;
            }
            cam->SA2_LABEL(unk14) = I(p->qWorldY) + cam->shiftY - DISPLAY_CENTER_Y + cam->unk40 + unk64;
        }

        if (cam->SA2_LABEL(unk10) - newX > cam->SA2_LABEL(unk44)) {
            temp_r2_2 = cam->SA2_LABEL(unk10) - newX - cam->SA2_LABEL(unk44);
            var_r1_3 = cam->SA2_LABEL(qUnk8) >> 8;
            if (var_r1_3 > temp_r2_2) {
                var_r1_3 = temp_r2_2;
            }
            newX += var_r1_3;
        } else if ((cam->SA2_LABEL(unk10) - newX) < -cam->SA2_LABEL(unk44)) {
            temp_r1_4 = cam->SA2_LABEL(unk10) - newX + cam->SA2_LABEL(unk44);
            var_r0_3 = -I(cam->SA2_LABEL(qUnk8));
            if (var_r0_3 < temp_r1_4) {
                var_r0_3 = temp_r1_4;
            }
            newX += var_r0_3;
        }
        newX = CLAMP(newX, cam->minX, cam->maxX - DISPLAY_WIDTH);

        if (cam->SA2_LABEL(qUnk8) < Q(16)) {
            cam->SA2_LABEL(qUnk8) += Q(0.125);
        }
        if ((p->moveState & MOVESTATE_IN_AIR) && ((p->charFlags.character != KNUCKLES) || (p->charFlags.SA2_LABEL(unk61) != 9))) {
            cam->SA2_LABEL(unk48) += 4;
            cam->SA2_LABEL(unk48) = MIN(cam->SA2_LABEL(unk48), 24);
        } else {
            cam->SA2_LABEL(unk48) -= 4;
            cam->SA2_LABEL(unk48) = MAX(cam->SA2_LABEL(unk48), 0);
        }

        if ((cam->SA2_LABEL(unk14) - newY) > cam->SA2_LABEL(unk48)) {
            temp_r0_2 = (cam->SA2_LABEL(unk14) - newY) - cam->SA2_LABEL(unk48);
            var_r1_5 = cam->SA2_LABEL(unkC);
            if (var_r1_5 > temp_r0_2) {
                var_r1_5 = temp_r0_2;
            }
            newY += var_r1_5;
        } else if ((cam->SA2_LABEL(unk14) - newY) < -cam->SA2_LABEL(unk48)) {
            temp_r1_6 = (cam->SA2_LABEL(unk14) - newY) + cam->SA2_LABEL(unk48);
            var_r0_7 = -cam->SA2_LABEL(unkC);
            if (var_r0_7 < temp_r1_6) {
                var_r0_7 = temp_r1_6;
            }
            newY += var_r0_7;
        }

        // NOTE: HUH!?
        if (arg0 == 0) {
            newY = CLAMP(newY, cam->minY, cam->maxY - DISPLAY_HEIGHT);
        } else {
            newY = CLAMP(newY, cam->minY, cam->maxY - DISPLAY_HEIGHT);
        }
    }

    newX = CLAMP(newX, cam->minX, cam->maxX - DISPLAY_WIDTH);
    newY = CLAMP(newY, cam->minY, cam->maxY - DISPLAY_HEIGHT);

    newX += cam->shakeOffsetX;
    newY += cam->shakeOffsetY;
    newX += cam->unk62;
    newY += cam->unk64;
    cam->x = newX;
    cam->y = newY;

    if (arg0 == 0) {
        cam->dx -= newX;
        cam->dy -= newY;
    }
}

// TODO: Comparing UpdateCamera and UpdateCameraMultiplayer() could lead to some cleaner code?
//       The latter was derived from the former.
//
// TODO: Gravity checks were removed here, so maybe just Single-Pak mode?
void UpdateCameraMultiplayer()
{
    s32 temp_r0_2;
    s32 temp_r1_4;
    s32 temp_r1_6;
    s32 temp_r2_2;
    s32 var_r0;
    s32 var_r0_3;
    s32 var_r0_7;
    s32 var_r1_3;
    s32 var_r1_5;
    s32 temp_r1;
    s32 temp_r2;
    struct Camera *cam = &gCamera;
    Player *p = &gPlayers[gStageData.playerIndex];
    s32 newX = cam->x;
    s32 newY = cam->y;

    cam->dx = newX;
    cam->dy = newY;
    cam->shiftX = (p->qCamOffsetX >> 4);
    cam->shiftY = (p->qCamOffsetY >> 4);

    newX = CLAMP(newX, cam->minX, cam->maxX - (DISPLAY_WIDTH + 1));
    newY = CLAMP(newY, cam->minY, cam->maxY - (DISPLAY_HEIGHT + 1));

    if (cam->SA2_LABEL(unk40) != 0) {
        cam->SA2_LABEL(unk40)--;
    } else {
        if (!(cam->SA2_LABEL(unk50) & 1)) {
            s32 playerCharX;
            cam->SA2_LABEL(unk10) = (gStageData.timer * 4 % 0xA50u) & ~0x3;
            playerCharX = ((gStageData.playerIndex * 4) + 4);
            if ((cam->SA2_LABEL(unk10) < playerCharX) && (cam->unk6A == 0)) {
                cam->unk6A = -0xA50;
                cam->x = cam->SA2_LABEL(unk10);
                newX = 0;
            } else {
                cam->unk6A = 0;
            }
        }
        if (!(cam->SA2_LABEL(unk50) & 2)) {
            s32 unk64 = cam->SA2_LABEL(unk64);
            s32 temp8 = p->spriteOffsetY - 4;
            if (unk64 != temp8) {
                if (unk64 < temp8) {
                    unk64 += 5;
                    if (unk64 > temp8) {
                        unk64 = temp8;
                    }
                } else {
                    unk64 -= 5;
                    if (unk64 < temp8) {
                        unk64 = temp8;
                    }
                }
                cam->SA2_LABEL(unk64) = unk64;
            }
            cam->SA2_LABEL(unk14) = I(p->qWorldY) + cam->shiftY - DISPLAY_CENTER_Y + cam->unk40 + unk64;
        }

        if (cam->SA2_LABEL(unk10) - cam->x > cam->SA2_LABEL(unk44)) {
            temp_r2_2 = cam->SA2_LABEL(unk10) - cam->x - cam->SA2_LABEL(unk44);
            var_r1_3 = cam->SA2_LABEL(qUnk8) >> 8;
            if (var_r1_3 > temp_r2_2) {
                var_r1_3 = temp_r2_2;
            }
            newX += var_r1_3;
        } else if ((cam->SA2_LABEL(unk10) - cam->x) < -cam->SA2_LABEL(unk44)) {
            temp_r1_4 = cam->SA2_LABEL(unk10) - cam->x + cam->SA2_LABEL(unk44);
            var_r0_3 = -I(cam->SA2_LABEL(qUnk8));
            if (var_r0_3 < temp_r1_4) {
                var_r0_3 = temp_r1_4;
            }
            newX += var_r0_3;
        }
        newX = CLAMP(newX, cam->minX, cam->maxX - DISPLAY_WIDTH);

        if (cam->SA2_LABEL(qUnk8) < Q(16)) {
            cam->SA2_LABEL(qUnk8) += Q(0.125);
        }
        if ((p->moveState & MOVESTATE_IN_AIR) && ((p->charFlags.character != KNUCKLES) || (p->charFlags.SA2_LABEL(unk61) != 9))) {
            cam->SA2_LABEL(unk48) += 4;
            cam->SA2_LABEL(unk48) = MIN(cam->SA2_LABEL(unk48), 24);
        } else {
            cam->SA2_LABEL(unk48) -= 4;
            cam->SA2_LABEL(unk48) = MAX(cam->SA2_LABEL(unk48), 0);
        }

        if ((cam->SA2_LABEL(unk14) - newY) > cam->SA2_LABEL(unk48)) {
            temp_r0_2 = (cam->SA2_LABEL(unk14) - newY) - cam->SA2_LABEL(unk48);
            var_r1_5 = cam->SA2_LABEL(unkC);
            if (var_r1_5 > temp_r0_2) {
                var_r1_5 = temp_r0_2;
            }
            newY += var_r1_5;
        } else if ((cam->SA2_LABEL(unk14) - newY) < -cam->SA2_LABEL(unk48)) {
            temp_r1_6 = (cam->SA2_LABEL(unk14) - newY) + cam->SA2_LABEL(unk48);
            var_r0_7 = -cam->SA2_LABEL(unkC);
            if (var_r0_7 < temp_r1_6) {
                var_r0_7 = temp_r1_6;
            }
            newY += var_r0_7;
        }

        newY = CLAMP(newY, cam->minY, cam->maxY - DISPLAY_HEIGHT);
    }

    newX = CLAMP(newX, cam->minX, cam->maxX - DISPLAY_WIDTH);
    newY = CLAMP(newY, cam->minY, cam->maxY - DISPLAY_HEIGHT);

    newX += cam->shakeOffsetX;
    newY += cam->shakeOffsetY;
    newX += cam->unk62;
    newY += cam->unk64;
    cam->x = newX;
    cam->y = newY;
}

void sub_80503DC(u32 x, u32 y)
{
    Background *bg = &gStageBackgroundsRam[BGID_STAGE_HI];

    gBgScrollRegs[BGID_STAGE_HI][0] = x % 8u;
    gBgScrollRegs[BGID_STAGE_HI][1] = y % 8u;
    bg->scrollX = x;
    bg->scrollY = y;
    DrawBackground(bg);
    UpdateBgAnimationTiles(bg);

    bg++;
    gBgScrollRegs[BGID_STAGE_LO][0] = x % 8u;
    gBgScrollRegs[BGID_STAGE_LO][1] = y % 8u;
    bg->scrollX = x;
    bg->scrollY = y;
    DrawBackground(bg);
}

void sub_8050440(void)
{
    Background *bg0;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gBgScrollRegs[3][0] = 0;
    gBgScrollRegs[3][1] = 0;
    bg0 = &gStageBackgroundsRam[0];
    gStageBackgroundsRam[3].graphics.dest = (void *)(BG_VRAM + 0xC000);
    gStageBackgroundsRam[3].layoutVram = (void *)(BG_VRAM + 0xE800);
    gBgCntRegs[3] = 0x1D0E;
    bg0->graphics.dest = (void *)(BG_VRAM + 0x8000);
    bg0->layoutVram = (u16 *)(BG_VRAM + 0xE000);
    gStageBackgroundsRam[0].tilemapId = 441 + gStageData.language;
    gBgCntRegs[0] = 0x1C08;
    DrawBackground(&gStageBackgroundsRam[0]);
    gStageData.unk10 |= 0x100;
}

void sub_80504C0(void)
{
    gStageBackgroundsRam[0].graphics.dest = (void *)BG_VRAM + 0x8000;
    gStageBackgroundsRam[0].layoutVram = (void *)(BG_VRAM + 0xA000);
    gStageBackgroundsRam[0].targetTilesX = 30;
    gStageBackgroundsRam[0].targetTilesY = 20;
    gBgCntRegs[0] = 0x1408;
    gStageBackgroundsRam[3].graphics.dest = (void *)(BG_VRAM + 0xC000);
    gStageBackgroundsRam[3].layoutVram = (void *)(BG_VRAM + 0x9000);
    gStageBackgroundsRam[3].targetTilesX = 32;
    gStageBackgroundsRam[3].targetTilesY = 32;
    gBgCntRegs[3] = 0xD20F;
}

void sub_8050518(void)
{
    gStageBackgroundsRam[0].graphics.dest = (void *)(BG_VRAM + 0x8000);
    gStageBackgroundsRam[0].layoutVram = (u16 *)(BG_VRAM + 0xA000);
    gStageBackgroundsRam[0].targetTilesX = 30;
    gStageBackgroundsRam[0].targetTilesY = 8;
    gBgCntRegs[0] = 0x1408;
    gStageBackgroundsRam[3].graphics.dest = (void *)(BG_VRAM + 0xC000);
    gStageBackgroundsRam[3].layoutVram = (void *)(BG_VRAM + 0x9000);
    gStageBackgroundsRam[3].targetTilesX = 32;
    gStageBackgroundsRam[3].targetTilesY = 32;
    gBgCntRegs[3] = 0xD20E;
}

void sub_8050570(void)
{
    u16 arr[6];
    memcpy(arr, &gUnknown_080D0914, sizeof(arr));
    gBgScrollRegs[3][0] = 0;
    gBgScrollRegs[3][1] = 0;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gStageBackgroundsRam[0] = gStageCameraBgTemplates[3];
    gStageBackgroundsRam[0].tilemapId = arr[gStageData.language];
    sub_80504C0();
    DrawBackground(&gStageBackgroundsRam[0]);
}

void sub_80505CC(void)
{
    u16 arr[6];
    memcpy(arr, &gUnknown_080D0920, sizeof(arr));
    gBgScrollRegs[3][0] = 0;
    gBgScrollRegs[3][1] = 0;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gStageBackgroundsRam[0] = gStageCameraBgTemplates[3];
    gStageBackgroundsRam[0].tilemapId = arr[gStageData.language];
    sub_8050518();
    DrawBackground(&gStageBackgroundsRam[0]);
}

void sub_8050628(void)
{
    gBgScrollRegs[3][0] = 0;
    gBgScrollRegs[3][1] = 0;
    gStageBackgroundsRam[0].graphics.dest = (void *)(BG_VRAM + 0x8000);
    gStageBackgroundsRam[0].layoutVram = (u16 *)(BG_VRAM + 0xE000);
    gBgCntRegs[0] = 0x1C0A;
    gStageBackgroundsRam[3].graphics.dest = (void *)(BG_VRAM + 0xC000);
    gStageBackgroundsRam[3].layoutVram = (u16 *)(BG_VRAM + 0xE800);
    gStageBackgroundsRam[3].targetTilesX = 32;
    gStageBackgroundsRam[3].targetTilesY = 32;
    gStageBackgroundsRam[3].flags = 3;
    gBgCntRegs[3] = 0x1D0E;
}

void sub_805068C(void)
{
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gBgScrollRegs[3][0] = 0;
    gBgScrollRegs[3][1] = 0;
    gStageBackgroundsRam[3].graphics.dest = (void *)(BG_VRAM + 0xC000);
    gStageBackgroundsRam[3].layoutVram = (void *)(BG_VRAM + 0xE800);
    gBgCntRegs[3] = 0x1D0E;
    gStageBackgroundsRam[0].graphics.dest = (void *)(BG_VRAM + 0x8000);
    gStageBackgroundsRam[0].layoutVram = (u16 *)(BG_VRAM + 0xA000);
    gStageBackgroundsRam[0].targetTilesX = 64;
    gStageBackgroundsRam[0].targetTilesY = 64;
    gBgCntRegs[0] = 0x940A;
}

void sub_80506E8(void)
{
    s32 temp_r0;
    u32 var_r0;

    gBgScrollRegs[3][0] = (gCamera.x >> 6) & 0xFF;
    gBgScrollRegs[3][1] = (gCamera.y >> 9);
    gBgScrollRegs[0][0] = ((u32)(gCamera.x << 21) >> 23);

    // TODO: Find out which is the expected behavior?
    gBgScrollRegs[0][1] = (gCamera.y >= 0) ? (gCamera.y >> 3) : 0;
    gBgScrollRegs[0][1] = gCamera.y >> 3;

    if (gBgScrollRegs[0][1] < 0) {
        gBgScrollRegs[0][1] = 0;
    }
    if (gBgScrollRegs[0][1] > 0x160) {
        gBgScrollRegs[0][1] = 0x160;
    }

    sub_8050748();
}

void sub_8050748(void)
{
    s16 temp_r3;
    s16 var_r2;
    u16 *var_r5;
    s8 sp[0x20];
    s16 scrollY;
    u32 var_r4 = (u32)(gStageData.timer & 0x7F) >> 3;
    memcpy(sp, gUnknown_080D092C, sizeof(sp));
    gFlags |= FLAGS_EXECUTE_HBLANK_COPY;
    gHBlankCopyTarget = (void *)&REG_BG3HOFS;
    gHBlankCopySize = 2;
    var_r5 = gBgOffsetsHBlankPrimary;

    for (scrollY = gBgScrollRegs[3][1], var_r2 = 0; var_r2 < DISPLAY_HEIGHT; var_r2++) {
        temp_r3 = var_r2 + scrollY;
        *var_r5 = (gCamera.x >> (7 - sp[temp_r3 >> 3])) & 0xFF;
        if (temp_r3 > 0x90) {
            if (!(var_r4 & 1)) {
                *var_r5 += 1;
            }
            var_r4 = (var_r4 + 1) & 0xF;
        } else if (temp_r3 > 0x80) {
            if (!(var_r4 & 2)) {
                *var_r5 += 1;
            }
            var_r4 = (var_r4 + 1) & 0xF;
        }
        var_r5++;
    }
}

void sub_8050804(void)
{
    gStageBackgroundsRam[0].graphics.dest = (void *)(BG_VRAM + 0xC000);
    gStageBackgroundsRam[0].layoutVram = (u16 *)(BG_VRAM + 0xD000);
    gStageBackgroundsRam[0].targetTilesX = 30;
    gStageBackgroundsRam[0].targetTilesY = 20;
    gBgCntRegs[0] = 0x1A0E;
    gStageBackgroundsRam[3].graphics.dest = (void *)(BG_VRAM + 0x8000);
    gStageBackgroundsRam[3].layoutVram = (u16 *)(BG_VRAM + 0xE000);
    gStageBackgroundsRam[3].targetTilesX = 30;
    gStageBackgroundsRam[3].targetTilesY = 20;
    gBgCntRegs[3] = 0x1C0A;
}

void sub_8050864(void)
{
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gBgScrollRegs[3][0] = 0;
    gBgScrollRegs[3][1] = 0;
    gStageBackgroundsRam[3].graphics.dest = (void *)(BG_VRAM + 0x8000);
    gStageBackgroundsRam[3].layoutVram = (void *)(BG_VRAM + 0xB000);
    gStageBackgroundsRam[3].targetTilesX = 32;
    gStageBackgroundsRam[3].targetTilesY = 64;
    gBgCntRegs[3] = 0x960A;
    gStageBackgroundsRam[0].graphics.dest = (void *)(BG_VRAM + 0xC000);
    gStageBackgroundsRam[0].layoutVram = (u16 *)(BG_VRAM + 0xE000);
    gStageBackgroundsRam[0].targetTilesX = 32;
    gStageBackgroundsRam[0].targetTilesY = 64;
    gBgCntRegs[0] = 0x9C0E;
}

void sub_80508D4(void)
{
    gBgScrollRegs[3][0] = (gCamera.x >> 3) & 0xFF;
    gBgScrollRegs[3][1] = (gCamera.y >> 3) & 0x1FF;
    gBgScrollRegs[0][0] = (gCamera.x >> 2) & 0xFF;
    gBgScrollRegs[0][1] = (gCamera.y >> 2) & 0x1FF;

    if (gStageData.gameMode < 5) {
        sub_8050920();
    }
}

void sub_8050920(void)
{
    u32 var_r0;
    u32 var_r1;
    u32 var_r3;
    s16 var_r5;
    u16 *var_r2;

    var_r3 = (((gStageData.timer & 0xFF) >> 3) + (u16)gBgScrollRegs[3][1]) & 0xF;
    gFlags |= FLAGS_EXECUTE_HBLANK_COPY;
    gHBlankCopyTarget = (void *)&REG_BG3HOFS;
    gHBlankCopySize = 2;
    var_r2 = gBgOffsetsHBlankPrimary;
    for (var_r5 = 0; var_r5 < DISPLAY_HEIGHT; var_r5++) {
        u32 mask;
        *var_r2 = ((gCamera.x >> 3) & 0xFF);
        *var_r2 = ((gCamera.x >> 3) & 0xFF) + (SIN(var_r3 << 6) >> 13);
        var_r1 = (var_r3 + 1);
        var_r1 = (var_r1 << 16);
        var_r0 = 0xF0000;
        var_r0 &= var_r1;
        var_r3 = var_r0 >> 16;
        var_r2++;
    }
}

void sub_80509B4(void)
{
    gStageBackgroundsRam[0].graphics.dest = (void *)(BG_VRAM + 0xC000);
    gStageBackgroundsRam[0].layoutVram = (u16 *)(BG_VRAM + 0xE000);
    gStageBackgroundsRam[0].targetTilesX = 32;
    gStageBackgroundsRam[0].targetTilesY = 32;
    gBgCntRegs[0] = 0x1C0E;

    gStageBackgroundsRam[3].graphics.dest = (void *)(BG_VRAM + 0x8000);
    gStageBackgroundsRam[3].layoutVram = (u16 *)(BG_VRAM + 0xD000);
    gStageBackgroundsRam[3].targetTilesX = 32;
    gStageBackgroundsRam[3].targetTilesY = 20;
    gBgCntRegs[3] = 0x1A0A;
}

void sub_8050A0C(void)
{
    s16 temp_r1_3;
    s16 i;
    s32 *data;
    StrcCamera0C *temp_r1;
    u16 temp_r1_2;

    temp_r1 = TASK_DATA(gCurTask);
    if (temp_r1->data == NULL) {
        data = temp_r1->data = EwramMalloc(STRC_CAM_0C_DATA_COUNT * sizeof(*temp_r1->data));

        for (i = 0; i < STRC_CAM_0C_DATA_COUNT; i++) {
            data[i] = 0;
        }
    }
    gBgScrollRegs[3][0] = 0;
    gBgScrollRegs[3][1] = 0;
    temp_r1->x = (temp_r1->x + 1) & 0xFF;
    temp_r1->y = (temp_r1->y + 1) & 0xFF;
    gBgScrollRegs[0][1] = (gBgScrollRegs[0][1] + 1) & 0xFF;
    sub_8050A78();
}

void sub_8050A78(void)
{
    s8 sp[0x20];
    s16 temp_r1_2;
    s16 i;
    u16 temp_r1;
    u16 *var_r2;
    s16 scrollY;
    s16 temp_r0;
    s32 temp_r4 = gStageData.timer & 0x3FC;
    memcpy(&sp, &gUnknown_080D094C, 0x20);
    gFlags |= FLAGS_EXECUTE_HBLANK_COPY;
    gHBlankCopyTarget = (void *)&REG_BG0HOFS;
    gHBlankCopySize = 2;
    var_r2 = gBgOffsetsHBlankPrimary;
    for (scrollY = gBgScrollRegs[0][1], i = 0; i < DISPLAY_HEIGHT; i++) {
        temp_r0 = scrollY + i;
        *var_r2++ = ((SIN(temp_r4) * sp[(temp_r0 >> 3) & 0x1F]) >> 9);
    }
}

void sub_8050B14(void)
{
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gBgScrollRegs[3][0] = 0;
    gBgScrollRegs[3][1] = 0;

    gStageBackgroundsRam[3].graphics.dest = (void *)(BG_VRAM + 0x8000);
    gStageBackgroundsRam[3].layoutVram = (u16 *)(BG_VRAM + 0xA000);
    gStageBackgroundsRam[3].targetTilesX = 32;
    gStageBackgroundsRam[3].targetTilesY = 64;
    gBgCntRegs[3] = 0x940A;

    gStageBackgroundsRam[0].graphics.dest = (void *)(BG_VRAM + 0xC000);
    gStageBackgroundsRam[0].layoutVram = (u16 *)(BG_VRAM + 0xE000);
    gStageBackgroundsRam[0].targetTilesX = 32;
    gStageBackgroundsRam[0].targetTilesY = 64;
    gBgCntRegs[0] = 0x9C0E;
}

void sub_8050B84(void)
{
    gBgScrollRegs[0][0] = 8;
    gBgScrollRegs[0][1] = gCamera.y - 800;
    gBgScrollRegs[0][1] = (gBgScrollRegs[0][1] >= 0) ? (gBgScrollRegs[0][1] >> 0x3) : 0;
    if (gBgScrollRegs[0][1] > 288) {
        gBgScrollRegs[0][1] = 288;
    }

    gBgScrollRegs[3][0] = 8;
    gBgScrollRegs[3][1] = gCamera.y - 800;
    gBgScrollRegs[3][1] = (gBgScrollRegs[3][1] >= 0) ? (gBgScrollRegs[3][1] >> 0x3) : 0;
    if (gBgScrollRegs[3][1] > 288) {
        gBgScrollRegs[3][1] = 288;
    }

    if (GAME_MODE_IS_SINGLE_PLAYER(CURRENT_GAME_MODE)) {
        sub_8050C08();
    }
}

void sub_8050C08(void)
{
    s16 temp_r0_2;
    s16 line;
    s16 *var_r2;
    s16 scrollY;
    s32 timer = (gStageData.timer & 0x1FF) >> 1;

    gFlags |= FLAGS_EXECUTE_HBLANK_COPY;
    gHBlankCopyTarget = (void *)&REG_BG0HOFS;
    gHBlankCopySize = 2;
    var_r2 = gBgOffsetsHBlankPrimary;

    for (scrollY = gBgScrollRegs[0][1], line = 0; line < DISPLAY_HEIGHT; var_r2++, line++) {
        temp_r0_2 = (scrollY + line);
        if (temp_r0_2 > 112) {
            *var_r2 = 8;
        } else {
            s16 sinVal = SIN(((timer + (temp_r0_2 * 2)) * 4) & 0x3FF) >> 11;
            *var_r2 = sinVal + 8;
        }
    }
}

void sub_8050CA4(void)
{
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gBgScrollRegs[3][0] = 0;
    gBgScrollRegs[3][1] = 0;

    gStageBackgroundsRam[3].graphics.dest = (void *)(BG_VRAM + 0x8000);
    gStageBackgroundsRam[3].layoutVram = (void *)(BG_VRAM + 0xA000);
    gStageBackgroundsRam[3].targetTilesX = 64;
    gStageBackgroundsRam[3].targetTilesY = 32;
    gBgCntRegs[3] = 0x540A;
}

void sub_8050CEC(void)
{
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gBgScrollRegs[3][0] = 0;
    gBgScrollRegs[3][1] = 0;

    gStageBackgroundsRam[0].graphics.dest = (void *)(BG_VRAM + 0xC000);
    gStageBackgroundsRam[0].layoutVram = (void *)(BG_VRAM + 0xD000);
    gBgCntRegs[0] = 0x9A0E;
    gStageBackgroundsRam[3].graphics.dest = (void *)(BG_VRAM + 0x8000);
    gStageBackgroundsRam[3].layoutVram = (void *)(BG_VRAM + 0xE800);
    gBgCntRegs[3] = 0x1D0A;
}

void sub_8050D40(void)
{
    s32 camY;

    gBgScrollRegs[0][0] = (gCamera.x >> 3) & 0xFF;

    camY = gCamera.y >> 4;
    if (camY > 0x60) {
        camY = 0x60;
    }

    gBgScrollRegs[0][1] = camY;
    gBgScrollRegs[3][0] = (gCamera.x >> 6) & 0xFF;
    gBgScrollRegs[3][1] = (gCamera.y >> 6) & 0xFF;
    UpdateBgAnimationTiles(&gStageBackgroundsRam[3]);

    if (GAME_MODE_IS_SINGLE_PLAYER(CURRENT_GAME_MODE)) {
        sub_8050D90();
    }
}

//
NONMATCH("asm/non_matching/game/stage/cam__sub_8050D90.inc", void sub_8050D90(void))
{
    s8 sp[0x20];
    s16 temp_r2_2;
    s16 var_r1;
    u16 temp_r2;
    u32 timer;
    s16 *var_r3;
    s32 scrollY0;

    timer = (u32)(gStageData.timer << 0x15) >> 0x16;
    memcpy(&sp, &gUnknown_080D096C, sizeof(sp));
    gFlags |= FLAGS_EXECUTE_HBLANK_COPY;
    gHBlankCopyTarget = (void *)&REG_BG3HOFS;
    gHBlankCopySize = 2;
    var_r3 = gBgOffsetsHBlankPrimary;

    for (var_r1 = 0, scrollY0 = gBgScrollRegs[3][1]; var_r1 < DISPLAY_HEIGHT; var_r1++) {
        s16 scrollY = (((scrollY0 + var_r1) << 16) >> 19);
        *var_r3 = (timer * sp[scrollY]) & 0xFF;
        var_r3++;
    }
}
END_NONMATCH

void sub_8050E18(void)
{
    gStageBackgroundsRam[3].graphics.dest = (void *)(BG_VRAM + 0x8000);
    gStageBackgroundsRam[3].layoutVram = (void *)(BG_VRAM + 0xB000);
    gStageBackgroundsRam[3].targetTilesX = 32;
    gStageBackgroundsRam[3].targetTilesY = 64;
    gBgCntRegs[3] = 0x960A;

    gStageBackgroundsRam[0].graphics.dest = (void *)(BG_VRAM + 0xC000);
    gStageBackgroundsRam[0].layoutVram = (u16 *)(BG_VRAM + 0xE000);
    gStageBackgroundsRam[0].targetTilesX = 32;
    gStageBackgroundsRam[0].targetTilesY = 64;
    gBgCntRegs[0] = 0x9C0E;
}

void sub_8050E78(void)
{
    gBgScrollRegs[3][0] = (gCamera.x >> 6) & 0xFF;
    gBgScrollRegs[3][1] = ((gCamera.y >> 10) < 0x60) ? ((u32)gCamera.y >> 9) : 0x60;
    gBgScrollRegs[3][1] += 256;

    gBgScrollRegs[0][0] = (gCamera.x >> 5) & 0xFF;
    gBgScrollRegs[0][1] = ((gCamera.y >> 10) < 0x60) ? (u32)gCamera.y >> 9 : 0x60;
    gBgScrollRegs[0][1] = gBgScrollRegs[0][1] + 256;
    sub_8050EE4();
}

//
NONMATCH("asm/non_matching/game/stage/cam__sub_8050EE4.inc", void sub_8050EE4(void))
{
    s8 sp[0x20];
    s16 var_r1;
    s32 temp_r6;
    s32 var_r0_2;
    s32 var_r0_3;
    s16 temp_r2;
    u32 temp_r0;
    u32 var_r0;
    s16 *var_r3;
    s16 oldScrollY;

    temp_r6 = gStageData.timer & 0x7FF;
    memcpy(&sp, &gUnknown_080D098C, sizeof(sp));
    gBgScrollRegs[3][0] = (gCamera.x >> 4) & 0xFF;
    gBgScrollRegs[3][1] = ((gCamera.y >> 0xA) < 0x60) ? (u32)gCamera.y >> 9 : 0x60;
    oldScrollY = gBgScrollRegs[3][1];
    gBgScrollRegs[3][1] += 256;

    gBgScrollRegs[0][0] = (gCamera.x >> 3) & 0xFF;
    var_r0_2 = gCamera.y >> 9;
    if (var_r0_2 > 0x60) {
        var_r0_2 = 0x60;
    }
    gBgScrollRegs[0][1] = var_r0_2 + 0x100;
    gFlags |= FLAGS_EXECUTE_HBLANK_COPY;
    gHBlankCopyTarget = (void *)&REG_BG3HOFS;
    gHBlankCopySize = 2;
    var_r3 = gBgOffsetsHBlankPrimary;

    for (var_r1 = 0; var_r1 < DISPLAY_HEIGHT; var_r1++) {
        s16 index = (oldScrollY + var_r1);
        index >>= 3;
        if (sp[index] == 0) {
            *var_r3 = 0;
        } else if (sp[index] == -1) {
            *var_r3 = gCamera.x >> 6;
        } else {
            *var_r3 = (temp_r6 >> (4 - sp[index])) & 0xFF;
        }

        var_r3++;
    }
}
END_NONMATCH

void sub_8050FF0(void)
{
    s16 *var_r2;

    gBgScrollRegs[3][0] = (gCamera.x >> 6) & 0xFF;
    gBgScrollRegs[3][1] = ((gCamera.y >> 10) < 0x60) ? (u32)gCamera.y >> 9 : 0x60;
    gBgScrollRegs[0][0] = (gCamera.x >> 3) & 0xFF;
    gBgScrollRegs[0][1] = (gCamera.y >> 3) & 0xFF;
    gFlags |= FLAGS_EXECUTE_HBLANK_COPY;
    gHBlankCopyTarget = (void *)&REG_BG0VOFS;
    gHBlankCopySize = 2;
    var_r2 = gBgOffsetsHBlankPrimary;

    {
        s16 var_r1 = 0;
        u16 ah = gBgScrollRegs[0][1];
        s32 oldScroll = gBgScrollRegs[0][1];
        s32 new0 = (oldScroll - 0x100);
        for (var_r1 = 0; var_r1 < DISPLAY_HEIGHT; var_r1++) {
            s32 newScroll = oldScroll + var_r1;

            if (newScroll >= 0x100) {
                *var_r2 = new0;
            } else {
                *var_r2 = ah;
            }
            var_r2++;
        }
    }
}

void sub_8051094(void)
{
    gStageBackgroundsRam[0].graphics.dest = (void *)(BG_VRAM + 0xC000);
    gStageBackgroundsRam[0].layoutVram = (u16 *)(BG_VRAM + 0xD800);
    gStageBackgroundsRam[0].targetTilesX = 64;
    gStageBackgroundsRam[0].targetTilesY = 32;
    gBgCntRegs[0] = 0x5B0C;
    gStageBackgroundsRam[3].graphics.dest = (void *)(BG_VRAM + 0x4000);
    gStageBackgroundsRam[3].layoutVram = (void *)(BG_VRAM + 0xE800);
    gStageBackgroundsRam[3].targetTilesX = 32;
    gStageBackgroundsRam[3].targetTilesY = 32;
    gBgCntRegs[3] = 0x1D06;
    gStageData.unk10 = 0x1000;
}

void sub_80510F8(void)
{
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gBgScrollRegs[3][0] = 0;
    gBgScrollRegs[3][1] = 0;

    gStageBackgroundsRam[3].graphics.dest = (void *)(BG_VRAM + 0x8000);
    gStageBackgroundsRam[3].layoutVram = (void *)(BG_VRAM + 0xE800);
    gStageBackgroundsRam[3].targetTilesX = 32;
    gStageBackgroundsRam[3].targetTilesY = 20;

    gBgCntRegs[3] = 0x1D0A;
}

void sub_8051140(void)
{
    if (gCamera.task48 != NULL) {
        TaskDestroy(gCamera.task48);
        gCamera.task48 = NULL;
    }

    if (gCamera.task4C != NULL) {
        TaskDestroy(gCamera.task4C);
        gCamera.task4C = NULL;
    }
}

void TaskDestructor_805116C(struct Task *t)
{
    s32 bgId;

    gCamera.task48 = NULL;
    gCamera.task4C = NULL;

    for (bgId = 0; bgId < 4; bgId++) {
        gBgScrollRegs[bgId][0] = 0;
        gBgScrollRegs[bgId][1] = 0;
    }

    gFlags &= ~4;
}

void TaskDestructor_80511A4(struct Task *t)
{
    StrcCamera0C *strc = TASK_DATA(t);

    if (strc->data != NULL) {
        EwramFree(strc->data);
    }
}

void sub_80511BC(void)
{
    gStageBackgroundsRam[1].graphics.dest = (void *)(BG_VRAM + 0xC000);
    gStageBackgroundsRam[1].layoutVram = (void *)(BG_VRAM + 0xE800);
    gBgCntRegs[1] = 0x1D0E;
}

void sub_80511E4(void)
{
    gStageBackgroundsRam[1].graphics.dest = (void *)(BG_VRAM + 0xC000);
    gStageBackgroundsRam[1].layoutVram = (void *)(BG_VRAM + 0xE800);
    gBgCntRegs[1] = 0x1D0E;
}

void sub_805120C(void)
{
    gStageBackgroundsRam[0].graphics.dest = (void *)(BG_VRAM + 0xC000);
    gStageBackgroundsRam[0].layoutVram = (u16 *)(BG_VRAM + 0xD000);
    gBgCntRegs[0] = 0x9A0E;
    gStageBackgroundsRam[3].graphics.dest = (void *)(BG_VRAM + 0x8000);
    gStageBackgroundsRam[3].layoutVram = (void *)(BG_VRAM + 0xE800);
    gBgCntRegs[3] = 0x1D0A;
}

void sub_8051250(void)
{
    gStageBackgroundsRam[0].graphics.dest = (void *)(BG_VRAM + 0xC000);
    gStageBackgroundsRam[0].layoutVram = (u16 *)(BG_VRAM + 0xC800);
    gStageBackgroundsRam[0].targetTilesX = 0x40;
    gStageBackgroundsRam[0].targetTilesY = 0x40;
    gBgCntRegs[0] = 0x990D;
    gStageBackgroundsRam[3].graphics.dest = (void *)(BG_VRAM + 0x8000);
    gStageBackgroundsRam[3].layoutVram = (void *)(BG_VRAM + 0xE800);
    gBgCntRegs[3] = 0x1D0A;
}

void sub_805129C(void)
{
    gBgScrollRegs[3][0] = 0;
    gBgScrollRegs[3][1] = 0;
}

void sub_80512AC(void)
{
    gBgScrollRegs[3][0] = 0;

    if (gStageData.zone == 4) {
        gBgScrollRegs[3][1] = (gCamera.y >> 3) + (gCamera.y >> 4);
    } else {
        gBgScrollRegs[3][1] = 0;
    }
}

void sub_80512D8(void)
{
    gBgScrollRegs[3][0] = ((u16)gBgScrollRegs[3][0] + 1) & 0xFF;
    gBgScrollRegs[3][1] = ((u16)gBgScrollRegs[3][1] - 1) & 0xFF;
}

void sub_80512F4(void)
{
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = -0x10;
    gBgScrollRegs[3][0] = 0;
    gBgScrollRegs[3][1] = 0;
}

void sub_805130C(void)
{
    s32 temp_r0;

    gBgScrollRegs[3][0] = (gCamera.x >> 4) & 0xFF;
    gBgScrollRegs[3][1] = gCamera.y >> 5;
    if (gBgScrollRegs[3][1] < 0) {
        gBgScrollRegs[3][1] = 0;
    }
    if (gBgScrollRegs[3][1] > 0x1F) {
        gBgScrollRegs[3][1] = 0x20;
    }
}

void sub_8051344(void)
{
    s32 temp_r0;

    gBgScrollRegs[3][0] = (gCamera.x >> 4) & 0xFF;
    gBgScrollRegs[3][1] = gCamera.y >> 5;
    if (gBgScrollRegs[3][1] < 0) {
        gBgScrollRegs[3][1] = 0;
    }
    if (gBgScrollRegs[3][1] > 0x1F) {
        gBgScrollRegs[3][1] = 0x20;
    }
}

void sub_805137C(void)
{
    gBgScrollRegs[3][0] = (gCamera.x >> 2) & 0xFF;
    gBgScrollRegs[3][1] = gCamera.y >> 5;
    if (gBgScrollRegs[3][1] < 0) {
        gBgScrollRegs[3][1] = 0;
    }
    if (gBgScrollRegs[3][1] > 0x2F) {
        gBgScrollRegs[3][1] = 0x30;
    }
}

void sub_80513B4(void)
{
    s32 temp_r0;

    gBgScrollRegs[3][0] = (gCamera.x >> 2) & 0xFF;
    gBgScrollRegs[3][1] = gCamera.y >> 5;
    if (gBgScrollRegs[3][1] < 0) {
        gBgScrollRegs[3][1] = 0;
    }
    if (gBgScrollRegs[3][1] >= 0x30) {
        gBgScrollRegs[3][1] = 0x30;
    }
}

void sub_80513EC(void)
{
    gBgScrollRegs[3][0] = 0;
    gBgScrollRegs[3][1] = 0;
}

void sub_80513FC(void)
{
    gBgScrollRegs[3][0] = (gCamera.x >> 6) & 0xFF;
    gBgScrollRegs[3][1] = 0;
}

void sub_8051418(void)
{
    gBgScrollRegs[3][0] = (gCamera.x >> 6) & 0xFF;
    gBgScrollRegs[3][1] = 0;
}

void sub_8051434(void)
{
    gBgScrollRegs[3][0] = 0;
    gBgScrollRegs[3][1] = 0;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gStageData.unk10 |= 0x100;
    sub_805068C();
    DrawBackground(&gStageBackgroundsRam[0]);
}

void sub_805146C(void)
{
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gStageBackgroundsRam[1].graphics.dest = (void *)(BG_VRAM + 0xC000);
    gStageBackgroundsRam[1].layoutVram = (void *)(BG_VRAM + 0xE800);
    gBgCntRegs[1] = 0x1D0E;
}

void sub_80514A0(void)
{
    gBgScrollRegs[1][0] = (gCamera.x >> 6) & 0xFF;
    gBgScrollRegs[1][1] = (gCamera.y >> 9);
}

void sub_80514C0(void)
{
    gBgScrollRegs[3][0] = 0;
    gBgScrollRegs[3][1] = 0;
    gBgScrollRegs[0][0] = (gCamera.x >> 3) & 0xFF;
    gBgScrollRegs[0][1] = 0;
}

void sub_80514E0(void)
{
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gStageBackgroundsRam[1].graphics.dest = (void *)(BG_VRAM + 0xC000);
    gStageBackgroundsRam[1].layoutVram = (void *)(BG_VRAM + 0xE800);
    gBgCntRegs[1] = 0x1D0E;
}

void sub_8051514(void)
{
    gBgScrollRegs[1][0] = (gCamera.x >> 6) & 0xFF;
    gBgScrollRegs[1][1] = (gCamera.y >> 9);
}

void sub_8051534(void)
{
    s32 camX = gCamera.x - Q(4.5);
    gBgScrollRegs[3][0] = (((u32)(camX) << 0x17) >> 0x17);
    gBgScrollRegs[3][1] = gCamera.y & 0xFF;
}

void sub_8051558(void)
{
    s32 var_r2;

    if (gCamera.x > 0x527) {
        if (gCamera.x > 0x28FB) {
            if (gCamera.x > 0x301B) {
                if (gCamera.x <= 0x3647) {
                    var_r2 = 0;
                } else {
                    var_r2 = 1;
                }
                if (var_r2 != 0) {
                    goto block_6;
                }
                goto block_7;
            }
        block_6:
            sub_8050EE4();
            return;
        }
    block_7:
        sub_8050FF0();
        return;
    } else {
        goto block_6;
    }
}

void sub_80515A0(void)
{
    s32 var_r2;

    if (gCamera.x > 0x88F) {
        if (gCamera.x > 0x2237) {
            if (gCamera.x > 0x3493) {
                if (gCamera.x > 0x3EBF) {
                    if (gCamera.x > 0x439F) {
                        if (gCamera.x <= 0x505F) {
                            var_r2 = 0;
                        } else {
                            var_r2 = 1;
                        }
                        if (var_r2 != 0) {
                            goto block_8;
                        }
                        goto block_9;
                    }
                    goto block_8;
                }
                goto block_9;
            }
        block_8:
            sub_8050EE4();
            return;
        }
    block_9:
        sub_8050FF0();
        return;
    } else {
        goto block_8;
    }
}

void sub_80515FC(void)
{
    gBgScrollRegs[0][0] = gCamera.x - 840;
    gBgScrollRegs[0][1] = gCamera.y - 440;
    gBgScrollRegs[3][0] = (gCamera.x >> 6) & 0xFF;
    gBgScrollRegs[3][1] = (gCamera.y >> 9);
}

void sub_8051634(void)
{
    gStageBackgroundsRam[3].graphics.dest = (void *)(BG_VRAM + 0x8000);
    gStageBackgroundsRam[3].layoutVram = (void *)(BG_VRAM + 0xE800);
    gBgCntRegs[3] = 0x9D0A;
}

void sub_8051660(void) { }

void sub_8051664(void) { }

void Task_8051668(void)
{
    gBgScrollRegs[3][0] = (gCamera.x >> 6) & 0xFF;
    gBgScrollRegs[3][1] = gCamera.y >> 9;
}

void Task_8051688(void)
{
    Player *p = &gPlayers[gStageData.playerIndex];
    if ((p->moveState & 0x80000100) != 0x100) {
        UpdateCamera(0);
    }
}

void Task_80516C0(void) { UpdateCamera(0); }

void Task_80516CC(void) { UpdateCameraMultiplayer(); }

void Task_80516D8(void)
{
    gDispCnt |= gStageData.unk10;
    Task_8051708();
    gCurTask->main = Task_8051708;
}

void Task_8051708(void) { sub_80503DC(gCamera.x, gCamera.y); }

void sub_805171C(s32 camX, s32 camY)
{
    Background *temp_r0;

    temp_r0 = &gStageBackgroundsRam[1];
    gBgScrollRegs[1][0] = camX & 7;
    gBgScrollRegs[1][1] = camY & 7;
    temp_r0->scrollX = camX;
    temp_r0->scrollY = camY;
    DrawBackground(temp_r0);
}

void Task_8051748(void)
{
    gDispCnt |= gStageData.unk10;
    sub_8051778();
    gCurTask->main = sub_8051778;
}

void sub_8051778(void) { sub_805171C(gCamera.x, gCamera.y); }

void sub_805178C(s32 camX, s32 camY)
{
    Background *temp_r0;

    temp_r0 = &gStageBackgroundsRam[1];
    gBgScrollRegs[1][0] = camX & 7;
    gBgScrollRegs[1][1] = camY & 7;
    temp_r0->scrollX = camX;
    temp_r0->scrollY = camY;
    DrawBackground(temp_r0);
}

void Task_80517B8(void)
{
    gDispCnt |= gStageData.unk10;
    sub_80517E8();
    gCurTask->main = sub_80517E8;
}

void sub_80517E8(void) { sub_805178C(gCamera.x, gCamera.y); }

#include "global.h"
#include "core.h"
#include "flags.h"
#include "malloc_ewram.h"
#include "malloc_vram.h"
#include "multi_sio_stuff.h"
#include "game/gTask_03001CFC.h"
#include "data/sprite_tables.h"
#include "game/main_menu.h"
#include "game/save.h"
#include "game/sa3/character_select.h"
#include "game/sa3/cutscenes/opening.h"
#include "game/sa3/title_screen.h"
#include "game/stage.h"
#include "game/shared/stage/tilemap_table.h"

void sub_80001EC(void);
void Task_8000284(void);
void LaunchLanguageOptions(void);
void SetDefaultDisplaySettings(void);
void CallCompleteSave(void);
void sub_8001E84(void);
void DemoPlay_Init(void);
void CreateOptions(s16 param0);
void sub_808ECB8(s16 param0);
void sub_808ADF0(u8 param0);
bool16 sub_8001E94(void);
s32 sub_8001FD4(void);
bool16 sub_80020F0(void);
VsRecords *sub_8001C30(u32 param0, u16 *param1);
void sub_8001DDC(s32 param0);
void sub_802616C(u8 param0);

// ref to this inside sOptionsSlideInits[]
void Options_Language(u16 param0, void *vram, s32 param2, s32 param3);

extern u16 gMedalTimes[][2];

void GameInit(void)
{
    gTilemapsRef = UNDEF_PTR;
    gRefSpriteTables = UNDEF_PTR;
    sub_80001EC();
}

void sub_80001EC(void)
{
    u16 *maxTileSlots;
    void *vram;
    u16 tileSlots;

    SetDefaultDisplaySettings();
    gStageData.unk7 = 0;
    gStageData.levelTimer = 0;
    gStageData.timer = 0;
    gStageData.colorSetting = CS_GBA;
    gTask_03001CFC = NULL;
    maxTileSlots = &gVramHeapMaxTileSlots;
    vram = OBJ_VRAM0 + (620 * TILE_SIZE_4BPP);
    tileSlots = 1616 / VRAM_TILE_SLOTS_PER_SEGMENT;
    *maxTileSlots = tileSlots;
    gVramHeapStartAddr = vram;
    sub_8001DDC(0);

    if (gFlags & 0x100) {
        CallCompleteSave();
        TaskCreate(Task_8000284, 0U, 0x100U, 0U, NULL);
    } else if (sub_8001E94()) {
        sub_8001E84();
        TaskCreate(Task_8000284, 0U, 0x100U, 0U, NULL);
    } else {
        LaunchLanguageOptions();
    }
}

extern void CreateAnimationEd(void);
void Task_8000284(void)
{
    DmaFill32(3, 0, BG_CHAR_ADDR_FROM_BGCNT(2), 2 * TILE_SIZE_4BPP);
    gBgSprites_Unknown1[2] = 0;
    gBgSprites_Unknown2[2][0] = 0;
    gBgSprites_Unknown2[2][1] = 0;
    gBgSprites_Unknown2[2][2] = 0xFF;
    gBgSprites_Unknown2[2][3] = 0x40;
    gBgScrollRegs[2][0] = 0;
    gBgScrollRegs[2][1] = 0;
    gStageData.timer = 0;
    SetDefaultDisplaySettings();
#if (!PLATFORM_GBA || DEBUG)
    // REG_KEYINPUT = KEYS_MASK ^ input, so we need to invert here to create the editor on SELECT.
    if (!(REG_KEYINPUT & SELECT_BUTTON)) {
        CreateAnimationEd();
    } else {
        CreateTitleScreen(TFM_FADEIN);
    }
#else
    CreateGameIntroState(1);
#endif

    TaskDestroy(gCurTask);
}

void LaunchGameIntro(void)
{
    SetDefaultDisplaySettings();
    CreateGameIntroState(1);
}

void LaunchDemoPlay(void) { DemoPlay_Init(); }

void LaunchTitleScreen(void)
{
    SetDefaultDisplaySettings();
    sub_808ADF0(1);
}

void LaunchChaoMenu(s16 arg0, u8 arg1) { CreateMainMenu(arg0, arg1); }

void sub_8000340(u16 arg0)
{
    SetDefaultDisplaySettings();
    sub_808ECB8(arg0);
}

void LaunchOptionsMenu(u16 arg0)
{
    SetDefaultDisplaySettings();
    CreateOptions(arg0);
}

void sub_8000378(void) { SetDefaultDisplaySettings(); }

void sub_8000384(void) { SetDefaultDisplaySettings(); }

void LaunchLanguageOptions(void)
{
    SetDefaultDisplaySettings();
    Options_Language(0, OBJ_VRAM0, 0, 0);
}

void sub_80003AC(void) { SetDefaultDisplaySettings(); }

/*
 * - Set Display Mode 0
 * - Enable BG2, OBJ (as 1D map)
 * - BG2-Screenbase-Address : BG_SCREEN_ADDR(30) (&BG_VRAM[0xF000])
 * - BG2-Charbase-Address   : BG_CHAR_ADDR(0)    (&BG_VRAM[0])
 * - Set gTilemapsRef to &gTilemaps (default)
 * - Set gRefSpriteTables to &gSpriteTables (default)
 */
void SetDefaultDisplaySettings(void)
{
    gDispCnt = DISPCNT_BG2_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP | DISPCNT_MODE_0;
    gBgCntRegs[2] = BGCNT_SCREENBASE(30) | BGCNT_CHARBASE(0) | BGCNT_TXT256x256 | BGCNT_16COLOR | BGCNT_PRIORITY(1);
    gTilemapsRef = (Tilemap **)&gTilemaps;
    gRefSpriteTables = &gSpriteTables;
    gBgPalette[1] = RGB16(31, 31, 31);
    gBgPalette[(1 * 16) + 1] = RGB16(0, 31, 0);
    gFlags |= FLAGS_UPDATE_BACKGROUND_PALETTES;
}

// (98.95) https://decomp.me/scratch/jbM4q
NONMATCH("asm/non_matching/engine/sub_8000414.inc", void sub_8000414(u16 stageId))
{
    u8 zone;
    u8 actType;
    s32 zoneAcc;
    u32 var_r4;
    u8 var_r5;
    u32 levelTimer;
    s32 contZone;

    levelTimer = gStageData.levelTimer;

    if (GetZoneAndActTypeFromStageID(stageId, &zone, &actType)) {
        LOADED_SAVE->unlockedStages[zone] |= actType;

        if (actType == 8) {
            if (LOADED_SAVE->unlockedZones < zone + 2) {
                LOADED_SAVE->unlockedZones = zone + 2;

                if (LOADED_SAVE->unlockedZones > 9) {
                    LOADED_SAVE->unlockedZones = 9;
                }

                contZone = LOADED_SAVE->continueZone;
                zoneAcc = LOADED_SAVE->unlockedZones;
                if ((zoneAcc - 2) > 6) {
                    zoneAcc = ZONE_1;
                    LOADED_SAVE->continueZone = zoneAcc;
                } else if ((zoneAcc - 2) > 5) {
                    zoneAcc = ZONE_7;
                    LOADED_SAVE->continueZone = zoneAcc;
                } else if ((zoneAcc - 2) >= (s32)contZone) {
                    zoneAcc += (u8)-1;
                    LOADED_SAVE->continueZone = zoneAcc;
                }
            }
        }

        switch (actType) {
            case 1:
                var_r5 = 0;
                break;
            case 2:
                var_r5 = 1;
                break;
            case 4:
                var_r5 = 2;
                break;
            case 8:
                var_r5 = 3;
                break;
            default:
                var_r5 = -1;
                break;
        }
        if (var_r5 != (u8)-1) {
            if (levelTimer <= gMedalTimes[stageId][0]) {
                var_r4 = 0;
            } else {
                if (levelTimer <= gMedalTimes[stageId][1]) {
                    var_r4 = 1;
                } else {
                    var_r4 = 2;
                }
            }
            if (gStageData.unk20 != 0) {
                var_r4 = 2;
            }
            LOADED_SAVE->collectedMedals[zone][var_r5] |= 1 << (2 - var_r4);
        }
        sub_802616C(60);

        if ((CURRENT_GAME_MODE != GAME_MODE_MP_STORY_COOP) || (gStageData.playerIndex == 0)) {
            if (sub_80020F0()) {
                sub_8001FD4();
            }
        }
    }
}
END_NONMATCH

// (96.96%) https://decomp.me/scratch/AejIb
NONMATCH("asm/non_matching/engine/sub_8000538.inc", void sub_8000538(u16 stageId))
{
    u8 zone;
    u8 actType;
    u16 levelTimer;
    s32 sp8;
    u8 rank;
    s32 var_r3;
    s32 var_r5;
    u8 var_ip;
    u8 var_r6;

    levelTimer = (u32)gStageData.levelTimer;
    if (!GetZoneAndActTypeFromStageID(stageId, &zone, &actType)) {
        return;
    }
    switch (actType) {
        case 1:
            var_r5 = 0;
            break;
        case 2:
            var_r5 = 1;
            break;
        case 4:
            var_r5 = 2;
            break;
        case 8:
            var_r5 = 3;
            break;
        default:
            var_r5 = 0xFF;
            break;
    }
    if (var_r5 != 0xFF) {
        if (levelTimer <= gMedalTimes[stageId][0]) {
            var_r3 = 0;
        } else {
            if (levelTimer <= gMedalTimes[stageId][1]) {
                var_r3 = 1;
            } else {
                var_r3 = 2;
            }
        }

        LOADED_SAVE->collectedMedals[zone][var_r5] |= 1 << (2 - var_r3);
    }

    for (var_r6 = 0; var_r6 < 5; var_r6++) {
        if (LOADED_SAVE->timeRecords.table[zone][var_r5][var_r6].time > levelTimer) {
            rank = var_r6;
            for (var_ip = 0; var_r6 < 4; var_r6++, var_ip++) {
                LOADED_SAVE->timeRecords.table[zone][var_r5][(4 - var_ip)].character1
                    = LOADED_SAVE->timeRecords.table[zone][var_r5][(3 - var_ip)].character1;
                LOADED_SAVE->timeRecords.table[zone][var_r5][(4 - var_ip)].character2
                    = LOADED_SAVE->timeRecords.table[zone][var_r5][(3 - var_ip)].character2;
                LOADED_SAVE->timeRecords.table[zone][var_r5][(4 - var_ip)].time
                    = LOADED_SAVE->timeRecords.table[zone][var_r5][(3 - var_ip)].time;
            }

            LOADED_SAVE->timeRecords.table[zone][var_r5][rank].character1 = gPlayers[PLAYER_1].charFlags.character;
            LOADED_SAVE->timeRecords.table[zone][var_r5][rank].character2 = gPlayers[PLAYER_2].charFlags.character;
            LOADED_SAVE->timeRecords.table[zone][var_r5][rank].time = stageId;
            break;
        }
    }

    sub_802616C(60);

    if (((CURRENT_GAME_MODE != GAME_MODE_MP_STORY_COOP) || (gStageData.playerIndex == 0))) {
        if (sub_80020F0()) {
            sub_8001FD4();
        }
    }
}
END_NONMATCH

bool16 GetZoneAndActTypeFromStageID(s16 stageID, u8 *zone, u8 *actType)
{
#ifdef BUG_FIX
    u8 dummyZone, dummyAct;
    if (zone == NULL) {
        zone = &dummyZone;
    }
    if (actType == NULL) {
        actType = &dummyAct;
    }
#endif
    if (stageID == STAGE_ALTAR_EMERALD) {
        *zone = 7;
        *actType = ACT_TYPE_BOSS;
        return TRUE;
    } else if (stageID == STAGE_NONAGGRESSION) {
        *zone = 8;
        *actType = ACT_TYPE_BOSS;
        return TRUE;
    } else {
        *zone = (stageID - 1) / 10;

        switch ((u8)((stageID - 1) % 10)) {
            case 2: {
                *actType = ACT_TYPE_ACT_1;
                return TRUE;
            }
            case 3: {
                *actType = ACT_TYPE_ACT_2;
                return TRUE;
            }
            case 4: {
                *actType = ACT_TYPE_ACT_3;
                return TRUE;
            }
            case 6: {
                *actType = ACT_TYPE_BOSS;
                return TRUE;
            }
            case 7: {
                *actType = ACT_TYPE_MINIGAME_CAPSULE;
                return TRUE;
            }
            case 8: {
                *actType = ACT_TYPE_MINIGAME_ENEMIES;
                return TRUE;
            }
            case 9: {
                *actType = ACT_TYPE_40;
                return TRUE;
            }

            default:
            case 0:
            case 1:
            case 5: {
                return FALSE;
            }
        }
    }
    return FALSE;
}

void sub_8000804(void)
{
    s32 var_r4;
    s8 i;
    u8 *medal;
    VsRecords *records;

    switch (gStageData.unkB8) {
        case 0: {
            var_r4 = gStageData.playerIndex & 1;
        } break;

        case 1: {
            var_r4 = ~gStageData.playerIndex & 1;
        } break;

        case 2: {
            var_r4 = 2;
        } break;

        default: {
        }
            return;
    }

    switch (var_r4) {
        case 0: {
            if (LOADED_SAVE->vsWins < 99) {
                LOADED_SAVE->vsWins++;
            }
        } break;

        case 1: {
            if (LOADED_SAVE->vsLosses < 99) {
                LOADED_SAVE->vsLosses++;
            }
        } break;

        case 2: {
            if (LOADED_SAVE->vsDraws < 99) {
                LOADED_SAVE->vsDraws++;
            }
        } break;

        default: {
            return;
        }
    }

    for (i = 3; i >= 0; i--) {
        if (GetBit(gUnknown_03001060.unk7, i) && ((gStageData.playerIndex & 1) != (i & 1))) {
            records = sub_8001C30(gUnknown_03001060.unkC[i], gUnknown_03001060.unk1C[i]);
            switch (var_r4) {
                case 0: {
                    if (records->losses < 99) {
                        records->losses++;
                    }
                } break;

                case 1: {
                    if (records->wins < 99) {
                        records->wins++;
                    }
                } break;

                case 2: {
                    if (records->draws < 99) {
                        records->draws++;
                    }
                } break;
            }
        }
    }
}

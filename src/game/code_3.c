#include "global.h"
#include "core.h"
#include "lib/m4a/m4a.h"
#include "game/main_menu.h"
#include "game/save.h"
#include "game/stage.h"
#include "game/character_select.h"
#include "constants/songs.h"

typedef struct {
    u8 unk0;
    u8 unk1;
    u8 errorCode;
    u8 unk3;
    u16 unk4;
    u16 unk6;
    u16 qBlend;
    s32 unkC;
    s32 unk10;
    Background bg14;
    Background bg54;
    Sprite spr94;
} StrcCode3;

void sub_80A1A4C(u8 param0);
void sub_80A1B68(StrcCode3 *strc);
void Task_80A1BEC(void);
void Task_80A1CE4(void);
void Task_80A1DC8(void);
void Task_80A1F10(void);
void sub_80A1FB0(StrcCode3 *strc, u8 param1);
void sub_80A2024(StrcCode3 *strc, u8 param1);
void sub_80A208C(StrcCode3 *strc);
void TaskDestructor_80A2098(Task *t);

extern s16 sub_8023A88(void);
extern s16 sub_8023BB0();
extern s16 sub_8023C5C(void);
extern void sub_8023D60();
s16 sub_802440C(void);
s16 sub_80244E4(void);
s16 sub_8024584(void);

extern TileInfo2 gUnknown_080D6898[6];
extern u16 gTilemapIdsConnectionStatus[28];

extern void sub_8024040(void);
extern void sub_80258D4(void);
extern void sub_80260F0(void);
extern void sub_802613C(void);

void sub_80A1A4C(u8 errorCode)
{
    Task *t;
    StrcCode3 *strc;

    gDispCnt = DISPCNT_OBJ_ON | DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_OBJ_1D_MAP | DISPCNT_MODE_0;

    t = TaskCreate(Task_80A1BEC, sizeof(StrcCode3), 0x100U, 0U, TaskDestructor_80A2098);
    DmaFill32(3, 0, BG_CHAR_ADDR_FROM_BGCNT(2), 0x40);
    gBgSprites_Unknown1[2] = 0;
    gBgSprites_Unknown2[2][0] = 0;
    gBgSprites_Unknown2[2][1] = 0;
    gBgSprites_Unknown2[2][2] = -1;
    gBgSprites_Unknown2[2][3] = 0x40;
    gBgSprites_Unknown1[1] = 0;
    gBgSprites_Unknown2[1][0] = 0;
    gBgSprites_Unknown2[1][1] = 0;
    gBgSprites_Unknown2[1][2] = -1;
    gBgSprites_Unknown2[1][3] = 0x40;
    gBgSprites_Unknown1[0] = 0;
    gBgSprites_Unknown2[0][0] = 0;
    gBgSprites_Unknown2[0][1] = 0;
    gBgSprites_Unknown2[0][2] = -1;
    gBgSprites_Unknown2[0][3] = 0x40;

    strc = TASK_DATA(t);
    strc->unk1 = LOADED_SAVE->language;
    strc->errorCode = errorCode;
    strc->unk3 = 0;
    strc->unk0 = 0;
    strc->unkC = 0;
    strc->unk10 = 0;
    strc->unk6 = 1;
    strc->qBlend = 0;
    strc->unk4 = 0;
    sub_80A1B68(strc);

    if (strc->errorCode == 2 || strc->errorCode == 3) {
        sub_80A1FB0(strc, 5U);
        sub_80A2024(strc, 1U);
        sub_80260F0();
        m4aMPlayAllStop();

        m4aSongNumStart(MUS_VS_MISS);
    } else {
        sub_80A1FB0(strc, 3U);
        sub_80A2024(strc, 0U);
        if (errorCode == 0) {
            sub_8024040();
        } else {
            sub_80258D4();
        }

        m4aSongNumStart(MUS_VS_MUSIC_1);
    }
}

void sub_80A1B68(StrcCode3 *strc)
{
#ifndef BUG_FIX
    typedef u8 numtiles_t;
#else
    typedef u32 numtiles_t;
#endif

    Sprite *s;
    u8 *vram = (u8 *)OBJ_VRAM0;

    // BUG: This will overflow, in all cases, with gUnknown_080D6898's entries.
    //      That is why numtiles_t was added, to increase numTiles size to 32bit.
    numtiles_t numTiles = gUnknown_080D6898[strc->unk1].numTiles * TILE_SIZE_4BPP;

    CpuFastFill(0, vram, numTiles);

    s = &strc->spr94;
    s->tiles = vram;
    s->anim = gUnknown_080D6898[strc->unk1].anim;
    s->variant = gUnknown_080D6898[strc->unk1].variant;
    s->prevVariant = -1;
    s->x = 120;
    s->y = 140;
    s->oamFlags = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0;
    s->hitboxes[0].index = -1;
    UpdateSpriteAnimation(s);
}

void Task_80A1BEC(void)
{
    StrcCode3 *strc = TASK_DATA(gCurTask);

    if (strc->unk6 != 0) {
        gDispCnt |= DISPCNT_WIN0_ON;
        gWinRegs[0] = WIN_RANGE(0, DISPLAY_WIDTH);
        gWinRegs[2] = WIN_RANGE(0, DISPLAY_HEIGHT);
        gWinRegs[4] |= 0x3F;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3FFF;
        gBldRegs.bldY = 0x10;
        strc->qBlend = 0x1000;
        strc->unk6 = 0;
    }

    if (strc->errorCode == 0 || strc->errorCode == 1) {
        s16 var_r0;
        if (strc->errorCode == 0) {
            if (gStageData.playerIndex == PLAYER_1) {
                var_r0 = sub_8023A88();
            } else {
                var_r0 = sub_8023C5C();
            }
        } else {
            if (gStageData.playerIndex == PLAYER_1) {
                var_r0 = sub_802440C();
            } else {
                var_r0 = sub_8024584();
            }
        }

        if (var_r0 < 0) {
            sub_802613C();
            return;
        }
    }

    if (gBldRegs.bldY != 0) {
        gBldRegs.bldY = (strc->qBlend >> 8);
        strc->qBlend -= Q(1);
    } else {
        strc->unk6 = 1;
        gBldRegs.bldY = 0;

        if (strc->errorCode == 2 || strc->errorCode == 3) {
            sub_802613C();
        } else {
            gCurTask->main = Task_80A1DC8;
        }
    }
}

void Task_80A1CE4(void)
{
    StrcCode3 *strc = TASK_DATA(gCurTask);

    if (strc->unk6 != 0) {
        gDispCnt |= DISPCNT_WIN0_ON;
        gWinRegs[0] = WIN_RANGE(0, DISPLAY_WIDTH);
        gWinRegs[2] = WIN_RANGE(0, DISPLAY_HEIGHT);
        gWinRegs[4] |= 0x3F;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3FFF;
        strc->unk6 = 0;
        strc->qBlend = 0;
    }
    if (strc->unk3 != 1) {
        if (gStageData.playerIndex == 0) {
            sub_8023BB0();
        } else {
            sub_8023D60();
        }
    }

    if (gBldRegs.bldY < 0x10) {
        gBldRegs.bldY = (strc->qBlend >> 8);
        strc->qBlend += Q(1);
        return;
    }

    gBldRegs.bldY = 0x10;

    if (strc->unk3 == 2) {
        CreateCharacterSelect(1U);
    } else {
        if (strc->errorCode == 2) {
            CreateMainMenu(1, 0U);
        } else if (strc->errorCode == 3) {
            CreateMainMenu(0, 4U);
        } else {
            CreateMainMenu(0, 0U);
        }
    }
    TaskDestroy(gCurTask);
}

void Task_80A1DC8(void)
{
    StrcCode3 *strc = TASK_DATA(gCurTask);
    s16 temp_r1;
    s16 var_r0;
    u8 temp_r2;

    if (strc->errorCode == 0) {
        if (gStageData.playerIndex == 0) {
            if (strc->unk3 == 2) {
                var_r0 = sub_8023BB0();
            } else {
                var_r0 = sub_8023A88();
            }
        } else {
            var_r0 = sub_8023C5C();
        }
    } else if (gStageData.playerIndex == 0) {
        if (strc->unk3 == 2) {
            var_r0 = sub_80244E4();
        } else {
            var_r0 = sub_802440C();
        }
    } else {
        var_r0 = sub_8024584();
    }
    temp_r1 = (s16)var_r0;
    if (temp_r1 < 0) {
        sub_802613C();
        return;
    }

    if (((strc->errorCode == 0) && ((temp_r1 & 0xF) == 3))
        || ((strc->errorCode == 1) && ((((temp_r1 & 0xF) == 3)) || ((temp_r1 & 0xF) == 7) || ((temp_r1 & 0xF) == 0xF)))) {
        if (gStageData.playerIndex == 0) {
            sub_80A208C(strc);
            if (8 & gPressedKeys) {
                sub_80A1FB0(strc, 4U);
                sub_80A2024(strc, 2U);
                strc->unk0 = 1;
                strc->unk3 = 2;
                strc->unk4 = 0;
                gCurTask->main = Task_80A1F10;
                return;
            }
        }
        if (var_r0 & 0x10) {
            strc->unk3 = 2;
            sub_80A1FB0(strc, 4U);
            sub_80A2024(strc, 2U);
            strc->unk4 = 0;
            gCurTask->main = Task_80A1F10;
            return;
        }
    }
    if (B_BUTTON & gPressedKeys) {
        sub_80260F0();
        m4aSongNumStart(0x6BU);
        strc->unk3 = 1;
        gCurTask->main = Task_80A1CE4;
    }
}

void Task_80A1F10(void)
{
    StrcCode3 *strc = TASK_DATA(gCurTask);
    s16 var_r0;

    if (strc->errorCode == 0) {
        if (gStageData.playerIndex == 0) {
            if (strc->unk3 == 2) {
                var_r0 = sub_8023BB0();
            } else {
                var_r0 = sub_8023A88();
            }
        } else {
            var_r0 = sub_8023C5C();
        }
    } else if (gStageData.playerIndex == 0) {
        if (strc->unk3 == 2) {
            var_r0 = sub_80244E4();
        } else {
            var_r0 = sub_802440C();
        }
    } else {
        var_r0 = sub_8024584();
    }
    if (var_r0 < 0) {
        sub_802613C();
    } else {
        if (strc->unk4 == 0) {
            m4aSongNumStart(0x63U);
        }

        if (++strc->unk4 >= 120) {
            gCurTask->main = Task_80A1CE4;
        }
    }
}

void sub_80A1FB0(StrcCode3 *strc, u8 param1)
{
    gBgCntRegs[1] = BGCNT_SCREENBASE(14) | BGCNT_CHARBASE(1) | BGCNT_TXT256x256 | BGCNT_16COLOR | BGCNT_PRIORITY(0);
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    {
        Background *bg = &strc->bg54;
        bg->graphics.dest = (void *)BG_CHAR_ADDR(1);
        bg->graphics.anim = 0;
        bg->layoutVram = (u16 *)BG_SCREEN_ADDR(14);
        bg->unk18 = 0;
        bg->unk1A = 0;
        bg->tilemapId = gTilemapIdsConnectionStatus[param1 + (strc->unk1 * 4)];
        bg->unk1E = 0;
        bg->unk20 = 0;
        bg->unk22 = 0;
        bg->unk24 = 0;
        bg->targetTilesX = 256 / TILE_WIDTH;
        bg->targetTilesY = 256 / TILE_WIDTH;
        bg->paletteOffset = 0;
        bg->flags = 1;
        DrawBackground(bg);
    }
}

void sub_80A2024(StrcCode3 *strc, u8 param1)
{
    gBgCntRegs[0] = BGCNT_SCREENBASE(6) | BGCNT_CHARBASE(0) | BGCNT_TXT256x256 | BGCNT_16COLOR | BGCNT_PRIORITY(1);
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    {
        Background *bg = &strc->bg14;
        bg->graphics.dest = (void *)BG_CHAR_ADDR(0);
        bg->graphics.anim = 0;
        bg->layoutVram = (u16 *)BG_SCREEN_ADDR(6);
        bg->unk18 = 0;
        bg->unk1A = 0;
        bg->tilemapId = gTilemapIdsConnectionStatus[param1];
        bg->unk1E = 0;
        bg->unk20 = 0;
        bg->unk22 = 0;
        bg->unk24 = 0;
        bg->targetTilesX = 256 / TILE_WIDTH;
        bg->targetTilesY = 256 / TILE_WIDTH;
        bg->paletteOffset = 0;
        bg->flags = 0;
        DrawBackground(bg);
    }
}

void sub_80A208C(StrcCode3 *strc) { DisplaySprite(&strc->spr94); }

void TaskDestructor_80A2098(Task *t) { }

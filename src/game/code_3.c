#include "global.h"
#include "core.h"
#include "lib/m4a/m4a.h"
#include "game/save.h"
#include "constants/songs.h"

typedef struct {
    u8 unk0;
    u8 unk1;
    u8 errorCode;
    u8 unk3;
    u16 unk4;
    u16 unk6;
    u16 unk8;
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

extern TileInfo2 gUnknown_080D6898[6];
extern u16 gTilemapIdsConnectionStatus[28];

extern void sub_8024040(void);
extern void sub_80258D4(void);
extern void sub_80260F0(void);

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
    strc->unk8 = 0;
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

#if 0
void Task_80A1BEC(StrcCode3 *strc) {
    u16 var_r0;
    u8 temp_r0;

    if (strc->unk6 != 0) {
        gDispCnt |= 0x2000;
        gWinRegs->unk0 = 0xF0;
        gWinRegs[2] = 0xA0;
        gWinRegs[4] |= 0x3F;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3FFF;
        gBldRegs.bldY = 0x10;
        strc->unk8 = 0x1000;
        strc->unk6 = 0;
    }
    temp_r0 = strc->unk2;
    if ((u32) temp_r0 <= 1U) {
        if (temp_r0 == 0) {
            if (gStageData.playerIndex == 0) {
                var_r0 = sub_8023A88();
            } else {
                var_r0 = sub_8023C5C();
            }
        } else if (gStageData.playerIndex == 0) {
            var_r0 = sub_802440C();
        } else {
            var_r0 = sub_8024584();
        }
        if ((s32) (var_r0 << 0x10) >= 0) {
            goto block_11;
        }
        goto block_14;
    }
block_11:
    if (gBldRegs.bldY != 0) {
        gBldRegs.bldY = (u16) ((u16) strc->unk8 >> 8);
        strc->unk8 += 0xFFFFFF00;
        return;
    }
    strc->unk6 = 1;
    gBldRegs.bldY = gBldRegs.bldY;
    if ((u32) (u8) (strc->unk2 - 2) <= 1U) {
block_14:
        sub_802613C();
        return;
    }
    gCurTask->main = (void (*)()) Task_80A1DC8;
}

void Task_80A1CE4(StrcCode3 *strc) {
    u8 temp_r1;

    if (strc->unk6 != 0) {
        gDispCnt |= 0x2000;
        gWinRegs->unk0 = 0xF0;
        gWinRegs[2] = 0xA0;
        gWinRegs[4] |= 0x3F;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3FFF;
        strc->unk6 = 0;
        strc->unk8 = 0;
    }
    if (strc->unk3 != 1) {
        if (gStageData.playerIndex == 0) {
            sub_8023BB0();
        } else {
            sub_8023D60();
        }
    }
    if ((u32) gBldRegs.bldY <= 0xFU) {
        gBldRegs.bldY = (u16) ((u16) strc->unk8 >> 8);
        strc->unk8 += 0x100;
        return;
    }
    gBldRegs.bldY = 0x10;
    if (strc->unk3 == 2) {
        CreateCharacterSelect(1U);
    } else {
        temp_r1 = strc->unk2;
        if (temp_r1 == 2) {
            CreateMainMenu(1, 0U);
        } else if (temp_r1 == 3) {
            CreateMainMenu(0, 4U);
        } else {
            CreateMainMenu(0, 0U);
        }
    }
    TaskDestroy(gCurTask);
}

void Task_80A1DC8(StrcCode3 *strc) {
    s16 temp_r1;
    s32 temp_r0_2;
    u16 temp_r0;
    u16 var_r0;
    u8 temp_r2;
    u8 temp_r4;
    void (*var_r0_2)(StrcCode3 *);

    if (strc->unk2 == 0) {
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
    temp_r0 = var_r0;
    temp_r1 = (s16) temp_r0;
    if ((s32) temp_r1 < 0) {
        sub_802613C();
        return;
    }
    temp_r2 = strc->unk2;
    if (((temp_r2 == 0) && ((0xF & temp_r1) == 3)) || ((temp_r2 == 1) && ((temp_r0_2 = 0xF & temp_r1, (temp_r0_2 == 3)) || (temp_r0_2 == 7) || (temp_r0_2 == 0xF)))) {
        temp_r4 = gStageData.playerIndex;
        if (temp_r4 == 0) {
            sub_80A208C(strc);
            if (8 & gPressedKeys) {
                sub_80A1FB0(strc, 4U);
                sub_80A2024(strc, 2U);
                strc->unk0 = 1;
                strc->unk3 = 2;
                strc->unk4 = (u16) temp_r4;
                var_r0_2 = Task_80A1F10;
                goto block_26;
            }
        }
        if ((s16) temp_r0 & 0x10) {
            strc->unk3 = 2;
            sub_80A1FB0(strc, 4U);
            sub_80A2024(strc, 2U);
            strc->unk4 = 0;
            var_r0_2 = Task_80A1F10;
            goto block_26;
        }
        goto block_24;
    }
block_24:
    if (2 & gPressedKeys) {
        sub_80260F0();
        m4aSongNumStart(0x6BU);
        strc->unk3 = 1;
        var_r0_2 = Task_80A1CE4;
block_26:
        gCurTask->main = var_r0_2;
    }
}

void Task_80A1F10(StrcCode3 *strc) {
    u16 temp_r0;
    u16 var_r0;

    if (strc->unk2 == 0) {
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
    if ((s32) (var_r0 << 0x10) < 0) {
        sub_802613C();
        return;
    }
    if (strc->unk4 == 0) {
        m4aSongNumStart(0x63U);
    }
    temp_r0 = strc->unk4 + 1;
    strc->unk4 = temp_r0;
    if ((u32) temp_r0 > 0x77U) {
        gCurTask->main = (void (*)()) Task_80A1CE4;
    }
}

void sub_80A1FB0(StrcCode3 *strc, u8 param1) {
    gBgCntRegs[1] = 0xE04;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    strc->bg54.graphics.dest = (void *)0x06004000;
    strc->bg54.graphics.anim = 0;
    strc->bg54.layoutVram = (u16 *)0x06007000;
    strc->bg54.unk18 = 0;
    strc->bg54.unk1A = 0;
    strc->bg54.tilemapId = gTilemapIdsConnectionStatus[param1 + (strc->unk1 * 4)];
    strc->bg54.unk1E = 0;
    strc->bg54.unk20 = 0;
    strc->bg54.unk22 = 0;
    strc->bg54.unk24 = 0;
    strc->bg54.targetTilesX = 0x20;
    strc->bg54.targetTilesY = 0x20;
    strc->bg54.paletteOffset = 0;
    strc->bg54.flags = 1;
    DrawBackground(&strc->bg54);
}

void sub_80A2024(StrcCode3 *strc, u8 param1) {
    *gBgCntRegs = 0x601;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    strc->bg14.graphics.dest = NULL;
    strc->bg14.graphics.anim = 0;
    strc->bg14.layoutVram = (u16 *)0x06003000;
    strc->bg14.unk18 = 0;
    strc->bg14.unk1A = 0;
    strc->bg14.tilemapId = *(((u32) (param1 << 0x18) >> 0x17) + gTilemapIdsConnectionStatus);
    strc->bg14.unk1E = 0;
    strc->bg14.unk20 = 0;
    strc->bg14.unk22 = 0;
    strc->bg14.unk24 = 0;
    strc->bg14.targetTilesX = 0x20;
    strc->bg14.targetTilesY = 0x20;
    strc->bg14.paletteOffset = 0;
    strc->bg14.flags = 0;
    DrawBackground(&strc->bg14);
}

void sub_80A208C(StrcCode3 *strc) {
    DisplaySprite(&strc->spr94);
}

void TaskDestructor_80A2098(Task *t) {

}
#endif

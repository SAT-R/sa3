#include "global.h"
#include "core.h"
#include "flags.h"
#include "color.h"
#include "multi_sio_stuff.h"
#include "lib/m4a/m4a.h"
#include "game/save.h"
#include "game/special_stage.h"
#include "game/stage.h"
#include "constants/songs.h"

typedef struct {
    /* 0x00 */ u8 *unk0;
    /* 0x00 */ u8 unk4;
    /* 0x00 */ u16 unk6;
    /* 0x00 */ u8 *vram8;
    /* 0x00 */ s32 qUnkC;
    /* 0x00 */ s32 qUnk10;
    /* 0x14 */ Sprite spr14;
} Code_2_0__3C;

typedef struct {
    /* 0x00 */ u8 *unk0;
    /* 0x04 */ u8 unk4;
    /* 0x05 */ u8 unk5;
    /* 0x05 */ u16 unk6;
    /* 0x00 */ s32 unk8;
    /* 0x05 */ s32 qUnkC;
    /* 0x10 */ Sprite spr10;
    /* 0x38 */ Sprite spr38;
} Code_2_0__60; /* 0x60 */

typedef struct {
    /* 0x00 */ u8 *unk0;
    /* 0x04 */ u8 unk4;
    /* 0x05 */ u8 unk5;
    /* 0x05 */ u16 unk6;
    /* 0x00 */ u8 *vram8;
    /* 0x00 */ s32 qUnkC;
    /* 0x00 */ s32 qUnk10;
    /* 0x14 */ Sprite spr14;
    /* 0x14 */ Sprite spr3C;
} Code_2_0__64; /* 0x64 */

typedef struct {
    /* 0x00 */ u8 *unk0;
    /* 0x00 */ u8 unk4;
    /* 0x00 */ u8 unk5;
    /* 0x00 */ u16 unk6;
    /* 0x00 */ u8 *vram8;
    /* 0x00 */ Vec2_32 unkC[4];
    /* 0xCC */ Sprite spr2C[4];
    /* 0xCC */ Sprite sprCC;
} Code_2_0__F4;

typedef struct {
    /* 0x00 */ u8 unk0[4];
    /* 0x04 */ u8 unk4;
    /* 0x04 */ u8 unk5;
    /* 0x04 */ s16 unk6;
    /* 0x04 */ s16 unk8;
    /* 0x04 */ s16 unkA;
    /* 0x0C */ u8 *vramC;
    /* 0x10 */ Vec2_32 unk10;
    /* 0x10 */ Vec2_32 unk18;
    /* 0x10 */ Vec2_32 unk20;
    /* 0x10 */ Vec2_32 unk28;
    /* 0x04 */ u8 filler30[0x540];
} Code_2_0__570; /* 0x570 */

typedef struct {
    /* 0x00 */ u8 *unk0; // TODO: previously set as (Code_2_0__64 *), but changed for matching
    /* 0x04 */ u8 unk4;
    /* 0x05 */ u8 unk5;
    /* 0x06 */ u16 unk6;
    /* 0x08 */ u16 unk8;
    /* 0x0A */ u16 unkA;
    /* 0x0C */ u8 *vramC;
    /* 0x0A */ s32 unk10;
    /* 0x0A */ s32 unk14;
    /* 0x0A */ s32 unk18;
    /* 0x0A */ s32 unk1C;
    /* 0x0A */ s32 unk20;
    /* 0x0A */ s32 unk24;
    /* 0x0A */ s32 unk28;
    /* 0x0A */ s32 unk2C;
    /* 0x0A */ s32 unk30;
    /* 0x34 */ Sprite spr34;
    /* 0x5C */ Sprite spr5C;
    /* 0x84 */ Sprite spr84;
    /* 0xAC */ Sprite sprAC;
} Code_2_1; /* 0xD4 */

void sub_809C970(u8 *vram, void *param2);
bool32 sub_809CDC8(Code_2_0__F4 *strc);
void sub_809CE58(Code_2_0__F4 *strc);
void sub_809CF04(u8 *vram, u8 *someData);
void sub_809D27C(u8 *vram, void *someStruct);
void sub_809D5B8(u8 *someData, u8 *vram); // prev. void sub_809D5B8(Code_2_0__64 *someStruct, u8 *vram);
void sub_809D6A0(Code_2_1 *strc);
void Task_809E458(void);
void Task_D4_809D810(void);
void Task_D4_809D960(void);
void Task_D4_809DA18(void);
void Task_D4_809DB74(void);
void Task_D4_809DCA4(void);
void Task_D4_809E778(void);
void sub_809DE9C(Code_2_1 *unused);
void sub_809DFAC(Code_2_1 *strc);
void sub_809E018(Code_2_1 *strc);
void sub_809E078(Code_2_0__570 *strc);
void Task_809E0D4(Code_2_0__570 *strc570);
void sub_809E7DC(Code_2_1 *strc);
bool32 sub_809E7F8(Code_2_1 *strc);
void TaskDestructor_809E858(Task *t);
void sub_80A1A4C(u8 errorCode);
bool32 sub_809E828(Code_2_1 *strc);
void Task_570_809C620(void);
void Task_60_809CA64(void);
bool32 sub_809E354();
void sub_809E5E4(Code_2_0__3C *strc);
bool32 sub_809E5AC(Code_2_0__3C *strc);
void sub_809CC80(u8 *vram, u8 *param1, u8 param2);
void sub_809CFA8(u8 *vram, u8 *someData);
void Task_3C_809D148(void);
void Task_64_809D498(void);
void Task_3C_809D04C(void);
void Task_809E574(void);
void sub_809E66C(Code_2_0__3C *strc);
void sub_809E740(Code_2_0__64 *strc);
bool32 sub_809E708(Code_2_0__64 *strc);
void Task_64_809D3C4(void);
void Task_60_809E1E8(void);
void Task_60_809E31C(void);
void Task_F4_809E3B8(void);
void Task_3C_809E4E0(void);
void TaskDestructor_809E630(Task *t);
bool32 sub_809E634(Code_2_0__3C *strc);
void TaskDestructor_809E688(Task *t);
void Task_64_809E68C(void);
void TaskDestructor_809E774(Task *t);
void TaskDestructor_809E4DC(Task *t);

#if 0 // M2C
void sub_809CC80(u8 *vram, u8 *param1, u8 param2, Code_2_0__F4 *strc);
void sub_809D5B8(u8 *someData, u8 *vram, Code_2_1 *strc);
void Task_D4_809D810(Code_2_1 *strc);
void Task_D4_809D960(Code_2_1 *strc);
void Task_D4_809DA18(Code_2_1 *strc);
void Task_D4_809DB74(Code_2_1 *strc);
void Task_D4_809DCA4(Code_2_1 *strc);
void Task_D4_809E778(Code_2_1 *strc);
#endif

extern void sub_809C8C4(Code_2_0__570 *strc);
extern bool32 sub_809C810(Code_2_0__570 *strc);
extern void sub_809E85C(u8 arg0);
extern s16 sub_8025360();
extern s16 sub_80253CC();
extern s16 sub_8025A90();
extern s16 sub_8025AA8();
extern void sub_80260F0();
extern s16 sub_802610C();
extern VsRecords *sub_8001C30(u32 param0, u16 *param1);
extern void sub_80AD9E4(void);
extern void CreateMultiPakConnectionCheck(u8 param0);
extern void sub_809E384(Code_2_0__60 *strc);

extern const u8 gUnknown_030010AC[4];

extern const ColorRaw gUnknown_080D97F8[10 * PALETTE_LEN_4BPP];
extern const ColorRaw gUnknown_080D9898[4 * PALETTE_LEN_4BPP];
extern const TileInfo2 gUnknown_080D9738[48];
extern const u8 gUnknown_080D961D[NUM_CHARACTERS];
extern const TileInfo2 gUnknown_080D9640[5];

extern TileInfo2 gUnknown_080D9668[2];
extern TileInfo2 gUnknown_080D9678[24];

#if 0
void LoadCharacterSelectSprites(Code_2_0__270 *strc) {
    s32 sp0;
    ? *var_r0;
    ? *var_r1;
    Sprite *temp_r0;
    Sprite *temp_r0_2;
    s32 temp_r8;
    s32 temp_r8_2;
    s8 *var_r6;
    u16 var_r3;
    u16 var_r3_2;
    u8 temp_r2;
    u8 var_r4;
    u8 var_r4_2;
    u8 var_r7;
    u8 var_r7_2;
    void *temp_r2_2;
    void *temp_r2_3;

    temp_r2 = *(*strc->unk0 + &gUnknown_080D8F18);
    if ((u32) *strc->unk4 > 0x15U) {
        var_r7 = *(temp_r2 + &gUnknown_080D9438);
        var_r1 = &gUnknown_080D93EC;
    } else {
        var_r7 = *(temp_r2 + &gUnknown_080D9432);
        var_r1 = &gUnknown_080D93D4;
    }
    temp_r8 = *((temp_r2 * 4) + var_r1);
    var_r6 = strc->vramC;
    var_r4 = 0;
    if ((u32) var_r7 > 0U) {
        var_r3 = 0;
        do {
            temp_r0 = &strc->spr18[var_r4];
            temp_r0->tiles = (u8 *) var_r6;
            temp_r2_2 = (var_r4 * 8) + temp_r8;
            var_r6 += temp_r2_2->unk4 << 5;
            temp_r0->anim = temp_r2_2->unk0;
            temp_r0->variant = temp_r2_2->unk2;
            temp_r0->prevVariant = 0xFF;
            temp_r0->x = (s16) ((s32) *strc->unk10 >> 8);
            temp_r0->y = (s16) ((s32) *strc->unk14 >> 8);
            temp_r0->oamFlags = 0x40;
            temp_r0->animCursor = var_r3;
            temp_r0->qAnimDelay = (s16) var_r3;
            temp_r0->animSpeed = 0x10;
            temp_r0->palId = 0;
            temp_r0->frameFlags = (u32) var_r3;
            sp0 = (s32) var_r3;
            UpdateSpriteAnimation(temp_r0);
            var_r4 += 1;
        } while ((u32) var_r4 < (u32) var_r7);
    }
    if ((u32) *strc->unk4 > 0x15U) {
        var_r7_2 = gUnknown_080D9438.unk5;
        var_r0 = &gUnknown_080D93EC;
    } else {
        var_r7_2 = gUnknown_080D9432.unk5;
        var_r0 = &gUnknown_080D93D4;
    }
    temp_r8_2 = var_r0->unk14;
    var_r4_2 = 0;
    if ((u32) var_r7_2 > 0U) {
        var_r3_2 = 0;
        do {
            temp_r0_2 = &strc->spr1A8[var_r4_2];
            temp_r0_2->tiles = (u8 *) var_r6;
            temp_r2_3 = (var_r4_2 * 8) + temp_r8_2;
            var_r6 += temp_r2_3->unk4 << 5;
            temp_r0_2->anim = temp_r2_3->unk0;
            temp_r0_2->variant = temp_r2_3->unk2;
            temp_r0_2->prevVariant = 0xFF;
            temp_r0_2->x = (s16) ((s32) *strc->unk10 >> 8);
            temp_r0_2->y = (s16) ((s32) *strc->unk14 >> 8);
            temp_r0_2->oamFlags = 0x40;
            temp_r0_2->animCursor = var_r3_2;
            temp_r0_2->qAnimDelay = (s16) var_r3_2;
            temp_r0_2->animSpeed = 0x10;
            temp_r0_2->palId = 0;
            temp_r0_2->frameFlags = (u32) var_r3_2;
            sp0 = (s32) var_r3_2;
            UpdateSpriteAnimation(temp_r0_2);
            var_r4_2 += 1;
        } while ((u32) var_r4_2 < (u32) var_r7_2);
    }
    strc->vramC += 0xD40;
}

void Task_270_809B8C8(Code_2_0__270 *strc) {
    s32 *temp_r0;
    u8 *temp_r3;
    u8 temp_r0_2;
    u8 var_r0;

    if (sub_809BA58(strc) != 0) {
        if ((u32) (u8) (*strc->unk4 - 0x16) <= 6U) {
            sub_809B970(strc);
        }
        temp_r0 = strc->unk10;
        temp_r3 = strc->unk4;
        if ((u32) (*temp_r0 + 0x3C00) > 0x16800U) {
            temp_r0_2 = *temp_r3;
            switch (temp_r0_2) {                    /* irregular */
            case 29:
                if (temp_r0_2 == 0x24) {
                case 36:
                    var_r0 = 0x25;
                } else {
                default:
                    var_r0 = 0x24;
                }
                *temp_r3 = var_r0;
                TaskDestroy(gCurTask);
                return;
            case 4:
                goto block_16;
            }
        } else if (*temp_r3 == 0x1F) {
            if ((u32) (*temp_r0 + 0x3C00) > 0x16800U) {
                TaskDestroy(gCurTask);
                return;
            }
block_16:
            gCurTask->main = Task_270_809BF9C;
        }
    }
}

void sub_809B970(Code_2_0__270 *strc) {
    u32 var_r5;
    u8 *var_r0_2;
    u8 var_r0;
    u8 var_r0_3;

    var_r5 = 0;
    var_r0 = 0;
    switch ((u32) gStageData.gameMode) {            /* irregular */
    default:
        var_r5 = (u32) (gPlayers->unk2A << 0x1C) >> 0x1C;
        var_r0_2 = gPlayers + 0x17A;
block_9:
        var_r0 = (u8) ((u32) (*var_r0_2 << 0x1C) >> 0x1C);
        break;
    case 6:
        if ((gStageData.playerIndex == 0) || (gStageData.playerIndex == 2)) {
            var_r5 = (u32) gUnknown_03001060.unk4C[0];
            var_r0 = gUnknown_03001060.unk4C[2];
        } else {
            var_r5 = (u32) gUnknown_03001060.unk4C[1];
            var_r0 = gUnknown_03001060.unk4C[3];
        }
        break;
    case 5:
        var_r5 = (u32) (gPlayers[gStageData.playerIndex].unk2A << 0x1C) >> 0x1C;
        var_r0_2 = &gPlayers[(gStageData.playerIndex + 1) & 1] + 0x2A;
        goto block_9;
    }
    if ((var_r5 == 0) || (var_r0 == 0)) {
        if ((var_r5 == 2) || (var_r0 == 2)) {
            var_r0_3 = 2;
        } else if ((var_r5 == 3) || (var_r0 == 3)) {
            var_r0_3 = 3;
        } else if ((var_r5 == 4) || (var_r0 == 4)) {
            var_r0_3 = 4;
        } else {
            goto block_26;
        }
    } else if (((var_r5 == 4) && (var_r0 == 1)) || ((var_r5 == 1) && (var_r0 == 4))) {
        var_r0_3 = 5;
    } else {
block_26:
        var_r0_3 = 1;
    }
    strc->unk9 = var_r0_3;
}

u32 sub_809BA58(Code_2_0__270 *strc) {
    u32 sp0;
    u32 sp4;
    u32 sp8;
    s32 spC;
    Sprite *temp_r4;
    Sprite *temp_r4_2;
    s16 var_r0_2;
    s16 var_r0_3;
    s32 var_r0;
    s32 var_sl;
    u8 *var_r7;
    u8 temp_r0;
    u8 temp_r0_2;
    u8 temp_r1;
    u8 temp_r1_4;
    u8 temp_r2;
    u8 temp_r2_2;
    u8 var_r5;
    u8 var_r5_2;
    void *temp_r1_2;
    void *temp_r1_3;

    temp_r0 = *(*strc->unk0 + &gUnknown_080D8F18);
    sp0 = 0;
    sp4 = 0;
    sp8 = 0;
    var_sl = 0;
    spC = 0;
    if ((s32) gStageData.playerIndex <= 1) {
        temp_r2 = *strc->unk4;
        if ((((u32) (u8) (temp_r2 - 0xC) <= 7U) && ((s32) ((s32) *strc->unk10 >> 8) > 0x78)) || (((u32) temp_r2 > 0x13U) && (temp_r2 != 0x1C) && (temp_r0 != ((u32) (gPlayers[gStageData.playerIndex].unk2A << 0x1C) >> 0x1C)))) {
            sp8 = 1;
        }
    } else {
        temp_r2_2 = *strc->unk4;
        if ((((u32) (u8) (temp_r2_2 - 0xC) <= 7U) && ((s32) ((s32) *strc->unk10 >> 8) > 0x78)) || (((u32) temp_r2_2 > 0x13U) && (temp_r2_2 != 0x1C) && (temp_r0 != ((u32) (gPlayers[1 & gStageData.playerIndex].unk2A << 0x1C) >> 0x1C)))) {
            sp8 = 1;
        }
    }
    temp_r1 = *strc->unk4;
    if ((u32) (u8) (temp_r1 - 0x16) > 6U) {
        if ((u32) (u8) (temp_r1 - 0x19) <= 2U) {
            goto block_41;
        }
        if (temp_r1 == 0x1C) {
            sp8 = 0;
            goto block_45;
        }
        goto block_46;
    }
    if ((u32) (u8) (temp_r1 - 0x19) <= 2U) {
block_41:
        strc->unk9 = 0;
        sp8 = 0;
        if (*strc->unk4 == 0x1B) {
block_45:
            strc->unk9 = 1;
        }
block_46:
        if (strc->unk9 == 1) {
            goto block_47;
        }
        sp0 = (u32) *(temp_r0 + &gUnknown_080D9432);
        sp4 = (u32) gUnknown_080D9432.unk5;
        var_sl = *((temp_r0 * 4) + &gUnknown_080D93D4);
        spC = gUnknown_080D93D4.unk14;
        strc->unk9 = 0;
    } else if (strc->unk9 == 1) {
block_47:
        sp0 = (u32) *(temp_r0 + &gUnknown_080D9438);
        sp4 = (u32) gUnknown_080D9438.unk5;
        var_sl = *((temp_r0 * 4) + &gUnknown_080D93EC);
        spC = gUnknown_080D93EC.unk14;
    } else {
        temp_r0_2 = strc->unk9;
        switch (temp_r0_2) {                        /* irregular */
        case 2:
            if (temp_r0 == 0) {
                sp0 = (u32) gUnknown_080D943E.unk0;
                var_r0 = gUnknown_080D9404.unk0;
            } else {
                sp0 = (u32) gUnknown_080D9441.unk0;
                var_r0 = gUnknown_080D9404.unk4;
            }
block_38:
            var_sl = var_r0;
block_39:
            *strc->unk10 = 0x7800;
            *strc->unk14 = 0x5000;
            break;
        case 3:
            if (temp_r0 == 0) {
                sp0 = (u32) gUnknown_080D943E.unk1;
                var_r0 = gUnknown_080D9404.unk10;
            } else {
                sp0 = (u32) gUnknown_080D9441.unk1;
                var_r0 = gUnknown_080D9404.unk14;
            }
            goto block_38;
        case 4:
            if (temp_r0 == 0) {
                sp0 = (u32) gUnknown_080D943E.unk2;
                var_r0 = gUnknown_080D9404.unk8;
            } else {
                sp0 = (u32) gUnknown_080D9441.unk2;
                var_r0 = gUnknown_080D9404.unkC;
            }
            goto block_38;
        case 5:
            if (temp_r0 == 1) {
                sp0 = (u32) gUnknown_080D9444.unk0;
                sp4 = (u32) gUnknown_080D9444.unk2;
                var_sl = gUnknown_080D9404.unk1C;
                spC = gUnknown_080D9404.unk20;
            } else {
                sp0 = (u32) gUnknown_080D9444.unk1;
                var_r0 = gUnknown_080D9404.unk18;
                goto block_38;
            }
            goto block_39;
        }
    }
    var_r7 = strc->spr18[0].tiles;
    var_r5 = 0;
    if (sp0 > 0U) {
        do {
            temp_r4 = &strc->spr18[var_r5];
            temp_r4->tiles = var_r7;
            temp_r1_2 = (var_r5 * 8) + var_sl;
            var_r7 += temp_r1_2->unk4 << 5;
            temp_r4->anim = temp_r1_2->unk0;
            temp_r4->variant = temp_r1_2->unk2;
            temp_r4->prevVariant = 0xFF;
            temp_r4->x = (s16) ((s32) *strc->unk10 >> 8);
            temp_r4->y = (s16) ((s32) *strc->unk14 >> 8);
            if (temp_r0 != ((u32) (gPlayers->unk2A << 0x1C) >> 0x1C)) {
                var_r0_2 = 0x80;
            } else {
                var_r0_2 = 0x40;
            }
            temp_r4->oamFlags = var_r0_2;
            temp_r4->animCursor = 0;
            temp_r4->qAnimDelay = 0;
            temp_r4->animSpeed = 0x10;
            temp_r4->palId = 0;
            temp_r4->frameFlags = 0;
            if (sp8 != 0) {
                temp_r4->frameFlags = 0x400;
            } else {
                temp_r4->frameFlags = sp8;
            }
            UpdateSpriteAnimation(temp_r4);
            DisplaySprite(temp_r4);
            var_r5 += 1;
        } while ((u32) var_r5 < sp0);
    }
    if (temp_r0 != 1) {
        goto block_76;
    }
    var_r5_2 = 0;
    if (sp4 > 0U) {
        do {
            temp_r4_2 = &strc->spr1A8[var_r5_2];
            temp_r4_2->tiles = var_r7;
            temp_r1_3 = (var_r5_2 * 8) + spC;
            var_r7 += temp_r1_3->unk4 << 5;
            temp_r4_2->anim = temp_r1_3->unk0;
            temp_r4_2->variant = temp_r1_3->unk2;
            temp_r4_2->prevVariant = 0xFF;
            temp_r4_2->x = (s16) ((s32) *strc->unk10 >> 8);
            temp_r4_2->y = (s16) ((s32) *strc->unk14 >> 8);
            if (temp_r0 != ((u32) (gPlayers->unk2A << 0x1C) >> 0x1C)) {
                var_r0_3 = 0x80;
            } else {
                var_r0_3 = 0x40;
            }
            temp_r4_2->oamFlags = var_r0_3;
            temp_r4_2->animCursor = 0;
            temp_r4_2->qAnimDelay = 0;
            temp_r4_2->animSpeed = 0x10;
            temp_r4_2->palId = 0;
            temp_r4_2->frameFlags = 0;
            if (sp8 != 0) {
                temp_r4_2->frameFlags = 0x400;
            } else {
                temp_r4_2->frameFlags = sp8;
            }
            UpdateSpriteAnimation(temp_r4_2);
            DisplaySprite(temp_r4_2);
            var_r5_2 += 1;
        } while ((u32) var_r5_2 < sp4);
    }
    if ((u32) gStageData.gameMode > 5U) {
        goto block_85;
    }
    if (!(*(&gUnknown_080D946D + temp_r0) & gLoadedSaveGame.unlockedCharacters) && ((u32) (u8) (*strc->unk4 - 0x19) > 2U)) {
        if (0x20000 & gFlags) {
            CopyObjPaletteMasked(&gUnknown_080D9448, 0x50U, 0x10U);
        } else {
            (void *)0x040000D4->unk0 = &gUnknown_080D9448;
            (void *)0x040000D4->unk4 = &gObjPalette[0x50];
            (void *)0x040000D4->unk8 = 0x80000010;
            gFlags |= 2;
        }
    }
block_76:
    if (((u32) gStageData.gameMode <= 5U) && !(*(&gUnknown_080D946D + temp_r0) & gLoadedSaveGame.unlockedCharacters)) {
        temp_r1_4 = *strc->unk4;
        if ((u32) (u8) (temp_r1_4 - 0x19) > 2U) {
            if (((u32) temp_r1_4 > 0x13U) && (gStageData.gameMode == 5)) {
                sub_802613C();
                return 0U;
            }
            if (0x20000 & gFlags) {
                CopyObjPaletteMasked(&gUnknown_080D9448, (u8) (*(&gUnknown_080D9468 + temp_r0) * 0x10), 0x10U);
            } else {
                (void *)0x040000D4->unk0 = &gUnknown_080D9448;
                (void *)0x040000D4->unk4 = (u16 *) ((*(&gUnknown_080D9468 + temp_r0) << 5) + gObjPalette);
                (void *)0x040000D4->unk8 = 0x80000010;
                gFlags |= 2;
            }
            goto block_85;
        }
    }
block_85:
    return 1U;
}

s32 CreateSomeTask_809BF3C(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    u16 temp_r4;

    temp_r4 = TaskCreate((void (*)()) Task_270_809B8C8, 0x270U, 0xFFU, 0U, TaskDestructor_809BFE4)->data;
    temp_r4->unk9 = 0;
    temp_r4->unk4 = arg1;
    temp_r4->unk0 = arg0;
    temp_r4->unk8 = 0;
    temp_r4->unk10 = arg2;
    temp_r4->unk14 = arg3;
    temp_r4->unkC = arg4;
    LoadCharacterSelectSprites((Code_2_0__270 *) temp_r4);
    return temp_r4->unkC;
}

void Task_270_809BF9C(void) {
    u16 temp_r1;
    u8 *temp_r2;
    u8 var_r0;

    temp_r1 = gCurTask->data;
    temp_r2 = temp_r1->unk4;
    if (*temp_r2 == 4) {
        temp_r1->unk8 = 0;
        var_r0 = 8;
    } else {
        temp_r1->unk8 = 1;
        var_r0 = 0xE;
    }
    *temp_r2 = var_r0;
    sub_809BA58((Code_2_0__270 *) temp_r1);
    gCurTask->main = (void (*)()) Task_270_809B8C8;
}

void TaskDestructor_809BFE4(Task *arg0) {

}

void sub_809BFE8(u8 arg0, Code_2_0__570 *arg1) {
    s32 sp4;

    gDispCnt = 0x1141;
    TaskCreate((void (*)()) Task_570_809C44C, 0x570U, 0x2100U, 0U, TaskDestructor_809E280);
    sp4 = 0;
    (void *)0x040000D4->unk0 = &sp4;
    (void *)0x040000D4->unk4 = (u16 *) (((0xC & gBgCntRegs[2]) << 0xC) + 0x06000000);
    (void *)0x040000D4->unk8 = 0x85000010;
    gBgSprites_Unknown1[2] = 0;
    gBgSprites_Unknown2[2][0] = 0;
    gBgSprites_Unknown2[2][1] = 0;
    gBgSprites_Unknown2[2][2] = 0xFF;
    gBgSprites_Unknown2[2][3] = 0x40;
    gBgSprites_Unknown1[1] = 0;
    gBgSprites_Unknown2[1][0] = 0;
    gBgSprites_Unknown2[1][1] = 0;
    gBgSprites_Unknown2[1][2] = -1U;
    gBgSprites_Unknown2[1][3] = 0x40;
    gBgSprites_Unknown1->unk0 = 0;
    gBgSprites_Unknown2[0][0] = 0;
    gBgSprites_Unknown2[0][1] = 0;
    gBgSprites_Unknown2[0][2] = -1U;
    gBgSprites_Unknown2[0][3] = 0x40;
    arg1->unk5 = arg0;
    sub_809E078(arg1);
    sub_809C354(arg1);
    sub_809C274(arg1);
    if (0x10000 & gFlags) {
        CopyBgPaletteMasked(*(((u32) (gPlayers->unk2A << 0x1C) >> 0x1A) + &gUnknown_08E2EF10), 0U, 0x10U);
    } else {
        (void *)0x040000D4->unk0 = (s32 *) *(((u32) (gPlayers->unk2A << 0x1C) >> 0x1A) + &gUnknown_08E2EF10);
        (void *)0x040000D4->unk4 = gBgPalette;
        (void *)0x040000D4->unk8 = 0x80000010;
        gFlags |= 1;
    }
    if (0x10000 & gFlags) {
        CopyBgPaletteMasked(*(((u32) (gPlayers->unk17A << 0x1C) >> 0x1A) + &gUnknown_08E2EF10), 0x10U, 0x10U);
    } else {
        (void *)0x040000D4->unk0 = (s32 *) *(((u32) (gPlayers->unk17A << 0x1C) >> 0x1A) + &gUnknown_08E2EF10);
        (void *)0x040000D4->unk4 = &gBgPalette[0x10];
        (void *)0x040000D4->unk8 = 0x80000010;
        gFlags |= 1;
    }
    if (0x10000 & gFlags) {
        CopyBgPaletteMasked(*(((u32) (gPlayers->unk2CA << 0x1C) >> 0x1A) + &gUnknown_08E2EF10), 0x20U, 0x10U);
    } else {
        (void *)0x040000D4->unk0 = (s32 *) *(((u32) (gPlayers->unk2CA << 0x1C) >> 0x1A) + &gUnknown_08E2EF10);
        (void *)0x040000D4->unk4 = &gBgPalette[0x20];
        (void *)0x040000D4->unk8 = 0x80000010;
        gFlags |= 1;
    }
    if (0x10000 & gFlags) {
        CopyBgPaletteMasked(*(((u32) (gPlayers->unk41A << 0x1C) >> 0x1A) + &gUnknown_08E2EF10), 0x30U, 0x10U);
    } else {
        (void *)0x040000D4->unk0 = (s32 *) *(((u32) (gPlayers->unk41A << 0x1C) >> 0x1A) + &gUnknown_08E2EF10);
        (void *)0x040000D4->unk4 = &gBgPalette[0x30];
        (void *)0x040000D4->unk8 = 0x80000010;
        gFlags |= 1;
    }
    m4aMPlayAllStop();
    if (arg1->unk5 == 0) {
        m4aSongNumStart(0x45U);
        return;
    }
    m4aSongNumStart(0x46U);
}

void sub_809C274(Code_2_0__570 *strc) {
    u8 *sp4;
    u8 *temp_r4;

    gBgCntRegs->unk0 = 0x9803;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    temp_r4 = &strc->filler30[0x500];
    strc->unk534 = 0x06000000;
    strc->unk53A = 0;
    strc->unk53C = 0x0600C000;
    strc->unk548 = 0;
    strc->unk54A = 0;
    strc->unk54C = 0x175;
    strc->unk54E = 0;
    strc->unk550 = 0;
    strc->unk552 = 0;
    strc->unk554 = 0;
    strc->unk556 = 0x1E;
    strc->unk558 = 0x28;
    strc->filler30[0x52A] = 0;
    strc->unk55E = 0;
    sp4 = &strc->filler30[0x52A];
    DrawBackground((Background *) temp_r4);
    gBgCntRegs[1] = 0x9800;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0xA0;
    strc->unk534 = 0x06000000;
    strc->unk53A = 0;
    strc->unk53C = 0x0600C000;
    strc->unk548 = 0;
    strc->unk54A = 0;
    strc->unk54C = 0x175;
    strc->unk54E = 0;
    strc->unk550 = 0;
    strc->unk552 = 0;
    strc->unk554 = 0;
    strc->unk556 = 0x1E;
    strc->unk558 = 0x50;
    strc->filler30[0x52A] = 0;
    strc->unk55E = 1;
    DrawBackground((Background *) temp_r4);
    subroutine_arg0 = 0xD;
    CpuSet(&subroutine_arg0, (void *)0x0600C7FC, 0x01000002U);
}

void sub_809C354(Code_2_0__570 *strc) {
    s32 sp0;
    u8 *sp4;
    Sprite *temp_r2;
    u8 *temp_r1;
    u8 *var_r3;
    u8 *var_r8;
    u8 var_r4;
    u8 var_r5;
    void *temp_r1_2;

    var_r8 = (u8 *)0x06010000;
    var_r5 = 0;
    do {
        var_r4 = 0;
        temp_r1 = &strc->unk0[var_r5];
        sp0 = var_r5 + 1;
        if ((u32) *(*temp_r1 + &gUnknown_080D9618) > 0U) {
            var_r3 = temp_r1;
            do {
                temp_r2 = strc + ((var_r5 * 0x140) + 0x30) + (var_r4 * 0x28);
                temp_r2->tiles = var_r8;
                temp_r1_2 = (var_r4 * 8) + *((*var_r3 * 4) + &gUnknown_080D9564);
                var_r8 += temp_r1_2->unk4 << 5;
                temp_r2->anim = temp_r1_2->unk0;
                temp_r2->variant = temp_r1_2->unk2;
                temp_r2->prevVariant = 0xFF;
                temp_r2->x = (s16) ((s32) (&strc->unk10)[var_r5].x >> 8);
                temp_r2->y = (s16) ((s32) *(&strc->unk10.y + (var_r5 * 8)) >> 8);
                temp_r2->oamFlags = 0x280;
                temp_r2->animCursor = 0;
                temp_r2->qAnimDelay = 0;
                temp_r2->animSpeed = 0x10;
                temp_r2->palId = 0;
                temp_r2->frameFlags = 0x1000;
                if (1 & var_r5) {
                    temp_r2->frameFlags = 0x400 | 0x1000;
                }
                temp_r2->hitboxes[0].index = -1;
                sp4 = var_r3;
                UpdateSpriteAnimation(temp_r2);
                var_r4 += 1;
            } while ((u32) var_r4 < (u32) *(*var_r3 + &gUnknown_080D9618));
        }
        var_r5 = (u8) sp0;
    } while ((u32) var_r5 <= 3U);
    strc->vramC = var_r8;
}

void Task_570_809C44C(Code_2_0__570 *strc) {
    Player *temp_r0;
    Player *temp_r0_2;
    Player *temp_r0_3;
    s32 var_r1;
    s32 var_r2;
    s8 *var_r0;
    u8 temp_r4;
    u8 var_r6;

    temp_r4 = gStageData.playerIndex;
    if ((s32) (sub_802610C() << 0x10) < 0) {
        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        gBgSpritesCount = 0;
        PAUSE_GRAPHICS_QUEUE();
        sub_80A1A4C(3U);
        return;
    }
    temp_r0 = &gPlayers[temp_r4];
    temp_r0->unk2B = (u8) ((-0x1D & temp_r0->unk2B) | 4);
    var_r6 = 0;
    do {
        if (temp_r4 != var_r6) {
            if (((s32) gUnknown_03001060.unk7 >> var_r6) & 1) {
                temp_r0_2 = &gPlayers[var_r6];
                var_r0 = temp_r0_2 + 0x2B;
                var_r1 = -0x1D & temp_r0_2->unk2B;
                var_r2 = 0xC;
            } else {
                temp_r0_3 = &gPlayers[var_r6];
                var_r0 = temp_r0_3 + 0x2B;
                var_r1 = -0x1D & temp_r0_3->unk2B;
                var_r2 = 8;
            }
            *var_r0 = var_r1 | var_r2;
        }
        var_r6 += 1;
    } while ((u32) var_r6 <= 3U);
    gCurTask->main = (void (*)()) Task_570_809C534;
}

void Task_570_809C534(Code_2_0__570 *strc) {
    if ((s32) (sub_802610C() << 0x10) < 0) {
        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        gBgSpritesCount = 0;
        PAUSE_GRAPHICS_QUEUE();
        sub_80A1A4C(3U);
        return;
    }
    if ((u16) strc->unk6 == 0) {
        gDispCnt |= 0x2000;
        gWinRegs->unk0 = 0xF0;
        gWinRegs[2] = 0xA0;
        gWinRegs[4] |= 0x3F;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3FFF;
        gBldRegs.bldY = 0x10;
        strc->unk8 = 0x1000;
        strc->unk6 = 1;
    }
    sub_809C810(strc);
    sub_809C8C4(strc);
    if (gBldRegs.bldY != 0) {
        gBldRegs.bldY = (u16) ((u16) strc->unk8 >> 8);
        strc->unk8 = (u16) strc->unk8 + 0xFFFFFF00;
        return;
    }
    strc->unk6 = (s16) gBldRegs.bldY;
    gBldRegs.bldY = gBldRegs.bldY;
    gCurTask->main = Task_570_809E0D4;
}

void Task_570_809C620(Code_2_0__570 *strc) {
    u8 temp_r1;
    u8 temp_r1_2;
    u8 var_r2;

    if ((s32) (sub_802610C() << 0x10) < 0) {
        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        gBgSpritesCount = 0;
        PAUSE_GRAPHICS_QUEUE();
        sub_80A1A4C(3U);
        return;
    }
    sub_809C8C4(strc);
    temp_r1 = strc->unk4;
    switch (temp_r1) {                              /* irregular */
    case 9:
        if (strc->unk5 == 0) {
            if ((temp_r1 == 0xB) && (strc->unk5 != 0)) {
                goto block_7;
            }
        default:
            temp_r1_2 = strc->unk4;
            if (temp_r1_2 == 0) {
                strc->unkA = (s16) temp_r1_2;
                strc->unk6 = (s16) temp_r1_2;
                strc->unk8 = (s16) temp_r1_2;
                strc->unk4 = 0;
                var_r2 = 0;
                do {
                    strc->unk0[var_r2] = gUnknown_080D961D[gUnknown_030010AC[var_r2]];
                    var_r2 += 1;
                } while ((u32) var_r2 <= 3U);
                strc->unk10.x = -0x8200;
                strc->unk10.y = 0x5000;
                strc->unk20.x = -0x8200;
                strc->unk20.y = 0xA000;
                strc->unk18.x = 0x17200;
                strc->unk18.y = 0x5000;
                strc->unk28.x = 0x17200;
                strc->unk28.y = 0xA000;
                gCurTask->main = Task_570_809E0D4;
            }
            return;
        }
    case 10:
block_7:
        gCurTask->main = (void (*)()) Task_570_809C71C;
        return;
    }
}

void Task_570_809C71C(Code_2_0__570 *strc) {
    if ((s32) (sub_802610C() << 0x10) < 0) {
        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        gBgSpritesCount = 0;
        PAUSE_GRAPHICS_QUEUE();
        sub_80A1A4C(3U);
        return;
    }
    if ((u16) strc->unk6 == 0) {
        gDispCnt |= 0x2000;
        gWinRegs->unk0 = 0xF0;
        gWinRegs[2] = 0xA0;
        gWinRegs[4] |= 0x3F;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3FFF;
        strc->unk8 = gBldRegs.bldY << 8;
        strc->unk6 = 1;
    }
    sub_809C8C4(strc);
    if ((u32) gBldRegs.bldY <= 0xFU) {
        gBldRegs.bldY = (u16) ((u16) strc->unk8 >> 8);
        if (strc->unk4 == 0xB) {
            strc->unk8 = (u16) strc->unk8 + 0x20;
            return;
        }
        strc->unk8 = (u16) strc->unk8 + 0x100;
        return;
    }
    gBldRegs.bldY = 0x10;
    strc->unk4 = 0xA;
    gCurTask->main = Task_570_809E164;
}

u32 sub_809C810(Code_2_0__570 *strc) {
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r1_3;
    s32 temp_r1_4;
    s32 temp_r1_5;
    s32 temp_r1_6;
    u8 var_r3;

    var_r3 = 0;
    temp_r1 = strc->unk10.x;
    if (temp_r1 <= 0x77FF) {
        temp_r0 = temp_r1 + 0xC00;
        strc->unk10.x = temp_r0;
        if (temp_r0 > 0x7800) {
            strc->unk10.x = 0x7800;
            goto block_4;
        }
    } else {
        strc->unk10.x = 0x7800;
block_4:
        var_r3 = 1;
    }
    temp_r1_2 = strc->unk20.x;
    if (temp_r1_2 <= 0x77FF) {
        temp_r0_2 = temp_r1_2 + 0x780;
        strc->unk20.x = temp_r0_2;
        if (temp_r0_2 > 0x7800) {
            strc->unk20.x = 0x7800;
            goto block_9;
        }
    } else {
        strc->unk20.x = 0x7800;
block_9:
        var_r3 += 1;
    }
    temp_r1_3 = strc->unk18.x;
    if ((temp_r1_3 <= 0x7800) || (temp_r1_4 = temp_r1_3 + 0xFFFFF700, strc->unk18.x = temp_r1_4, (temp_r1_4 <= 0x77FF))) {
        strc->unk18.x = 0x7800;
        var_r3 += 1;
    }
    temp_r1_5 = strc->unk28.x;
    if ((temp_r1_5 <= 0x7800) || (temp_r1_6 = temp_r1_5 + 0xFFFFF900, strc->unk28.x = temp_r1_6, (temp_r1_6 <= 0x77FF))) {
        strc->unk28.x = 0x7800;
        var_r3 += 1;
    }
    if (var_r3 != 4) {
        return 0U;
    }
    return 1U;
}

void sub_809C8C4(Code_2_0__570 *strc) {
    Vec2_32 *sp0;
    Sprite *temp_r1_2;
    Vec2_32 *var_r3;
    s16 var_r0;
    s32 temp_r2;
    u8 *temp_r1;
    u8 var_r4;
    u8 var_r5;

    var_r5 = 0;
    do {
        var_r4 = 0;
        temp_r1 = &strc->unk0[var_r5];
        if ((u32) *(*temp_r1 + &gUnknown_080D9618) > 0U) {
            var_r3 = &(&strc->unk10)[var_r5];
            do {
                temp_r1_2 = (var_r5 * 0x140) + 0x30 + strc + (var_r4 * 0x28);
                temp_r2 = (s32) var_r3->x >> 8;
                temp_r1_2->x = (s16) temp_r2;
                temp_r1_2->y = (s16) ((s32) *(&strc->unk10.y + (var_r5 * 8)) >> 8);
                if (!(1 & var_r5)) {
                    var_r0 = temp_r2 - 0x78;
                } else {
                    var_r0 = temp_r2 + 0x78;
                }
                temp_r1_2->x = var_r0;
                sp0 = var_r3;
                DisplaySprite(temp_r1_2);
                var_r4 += 1;
            } while ((u32) var_r4 < (u32) *(*temp_r1 + &gUnknown_080D9618));
        }
        var_r5 += 1;
    } while ((u32) var_r5 <= 3U);
}

void sub_809C970(u8 *vram, void *param2, Code_2_0__60 *strc) {
    ? *sp4;
    u8 *temp_r8;

    TaskCreate(Task_60_809E284, 0x60U, 0x2100U, 0U, TaskDestructor_809E3B4);
    strc->unk6 = 0;
    strc->unk4 = 0;
    strc->unk0 = (u8 *) param2;
    strc->unk8 = 0x7800;
    strc->qUnkC = -0x3C00;
    strc->spr38.tiles = vram;
    temp_r8 = vram + (gUnknown_080D9624.unk4 << 5);
    strc->spr38.anim = gUnknown_080D9624.unk0;
    strc->spr38.variant = gUnknown_080D9624.unk2;
    strc->spr38.prevVariant = 0xFF;
    strc->spr38.x = (s16) ((s32) strc->unk8 >> 8);
    strc->spr38.y = (s16) ((s32) strc->qUnkC >> 8);
    strc->spr38.oamFlags = 0x200;
    strc->spr38.animCursor = 0;
    strc->spr38.qAnimDelay = 0;
    strc->spr38.animSpeed = 0x10;
    strc->spr38.palId = 0;
    strc->spr38.frameFlags = 0;
    strc->spr38.hitboxes[0].index = -1;
    sp4 = &gUnknown_080D9624;
    UpdateSpriteAnimation(&strc->spr38);
    strc->spr10.tiles = temp_r8;
    strc->spr10.anim = gUnknown_080D9624.unk8;
    strc->spr10.variant = gUnknown_080D9624.unkA;
    strc->spr10.prevVariant = -1U;
    strc->spr10.x = (s16) ((s32) strc->unk8 >> 8);
    strc->spr10.y = (s16) ((s32) strc->qUnkC >> 8);
    strc->spr10.oamFlags = 0x200;
    strc->spr10.animCursor = 0;
    strc->spr10.qAnimDelay = 0;
    strc->spr10.animSpeed = 0x10;
    strc->spr10.palId = 0;
    strc->spr10.frameFlags = 0;
    strc->spr10.hitboxes[0].index = -1;
    UpdateSpriteAnimation(&strc->spr10);
}

void Task_60_809CA64(Code_2_0__60 *strc) {
    s16 var_r0;
    u8 temp_r0;
    u8 temp_r5;
    u8 var_r0_2;
    void (*var_r0_3)(Code_2_0__60 *);

    temp_r5 = gStageData.playerIndex;
    sub_809E384(strc);
    if (temp_r5 == 0) {
        var_r0 = sub_8025A90();
    } else {
        var_r0 = sub_80253CC();
    }
    if ((s32) ((u16) var_r0 << 0x10) < 0) {
        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        gBgSpritesCount = 0;
        PAUSE_GRAPHICS_QUEUE();
        sub_80A1A4C(3U);
        return;
    }
    temp_r0 = strc->unk4;
    if ((u32) temp_r0 <= 8U) {
        var_r0_2 = temp_r0 + 1;
    } else {
        var_r0_2 = 9;
    }
    strc->unk4 = var_r0_2;
    strc->qUnkC = *(strc->unk4 + &gUnknown_080D9634) << 8;
    if (strc->unk4 == 9) {
        if (temp_r5 == 0) {
            strc->unk6 = (u16) temp_r5;
            var_r0_3 = Task_60_809CB30;
        } else {
            var_r0_3 = Task_60_809E1E8;
        }
        gCurTask->main = var_r0_3;
    }
}
#endif

void Task_60_809CB30(void)
{
    s16 playerIndex = gStageData.playerIndex;
    Code_2_0__60 *strc = TASK_DATA(gCurTask);

#ifdef BUG_FIX
    // TODO: Should this be initted to 0 ?
    s16 var_r6 = -1;
#else
    s16 var_r6;
#endif

    sub_809E384(strc);

    if (playerIndex == PLAYER_1) {
        var_r6 = sub_8025A90();
    }

    if (var_r6 < 0) {
        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        gBgSpritesCount = 0;
        PAUSE_GRAPHICS_QUEUE();
        sub_80A1A4C(3U);
        return;
    }

    if (playerIndex == PLAYER_1) {
        if (++strc->unk6 > 60 && (1 & gPressedKeys)) {
            m4aSongNumStart(0x6AU);
            gCurTask->main = Task_60_809E1E8;
        } else if (strc->unk6 > 120) {
            gCurTask->main = Task_60_809E1E8;
        }
    }
}

// Unused?
void Task_60_809CBE8(void)
{
    // TODO: type of strc only a guess
    Code_2_0__60 *strc = TASK_DATA(gCurTask);

    sub_80260F0();

    gDispCnt &= ~(DISPCNT_WIN0_ON | DISPCNT_WIN1_ON);
    gBldRegs.bldCnt = 0;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0;
    DmaFill32(3, 0, BG_CHAR_ADDR_FROM_BGCNT(2), 0x40);
    gBgSprites_Unknown1[2] = 0;
    gBgSprites_Unknown2[2][0] = 0;
    gBgSprites_Unknown2[2][1] = 0;
    gBgSprites_Unknown2[2][2] = 0xFF;
    gBgSprites_Unknown2[2][3] = 0x40;
    strc->unk6 = 300;

    gCurTask->main = Task_60_809E31C;
}

void sub_809CC80(u8 *vram, u8 *param1, u8 param2)
{
    u8 i;

    Code_2_0__F4 *strc = TASK_DATA(TaskCreate(Task_F4_809E3B8, sizeof(Code_2_0__F4), 0x2100U, 0U, TaskDestructor_809E4DC));

    strc->unk6 = 0;
    strc->unk0 = param1;
    strc->unk4 = param2;
    strc->unkC[0].x = -Q(0x28);
    strc->unkC[0].y = +Q(0);
    strc->unkC[2].x = -Q(0x28);
    strc->unkC[2].y = +Q(0xA0);
    strc->unkC[1].x = +Q(0x118);
    strc->unkC[1].y = +Q(0);
    strc->unkC[3].x = Q(0x118);
    strc->unkC[3].y = Q(0xA0);

    for (i = 0; i < 4; i++) {
        Sprite *s = &strc->spr2C[i];
        s->tiles = vram;
        vram += gUnknown_080D9640[i].numTiles << 5;
        s->anim = gUnknown_080D9640[i].anim;
        s->variant = gUnknown_080D9640[i].variant;
        s->prevVariant = 0xFF;
        s->x = I(strc->unkC[i].x);
        s->y = I(strc->unkC[i].y);
        s->oamFlags = 0x200;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0x1000;
        s->hitboxes[0].index = -1;
        UpdateSpriteAnimation(s);
    }

    {
        Sprite *s = &strc->sprCC;
        s->tiles = vram;
        vram += (gUnknown_080D9640[4].numTiles << 5);
        s->anim = gUnknown_080D9640[4].anim;
        s->variant = gUnknown_080D9640[4].variant;
        s->prevVariant = -1;
        s->x = I(strc->unkC[0].x);
        s->y = I(strc->unkC[0].y);
        s->oamFlags = 0x200;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0x1000;
        s->hitboxes[0].index = -1;
        UpdateSpriteAnimation(s);
    }
    strc->vram8 = vram;
}

bool32 sub_809CDC8(Code_2_0__F4 *strc)
{
    u8 count = 0;

    if (strc->unkC[0].x < 0) {
        strc->unkC[0].x += Q(8);
        if (strc->unkC[0].x >= 0) {
            strc->unkC[0].x = 0;
            count += 1;
        }
    } else {
        count += 1;
    }

    if (strc->unkC[2].x < 0) {
        strc->unkC[2].x += Q(8);
        if (strc->unkC[2].x > 0) {
            strc->unkC[2].x = 0;
            count += 1;
        }
    } else {
        count += 1;
    }

    if (strc->unkC[1].x > Q(DISPLAY_WIDTH)) {
        strc->unkC[1].x -= Q(8);
        if (strc->unkC[1].x < Q(DISPLAY_WIDTH)) {
            strc->unkC[1].x = Q(DISPLAY_WIDTH);
            count += 1;
        }
    } else {
        count += 1;
    }

    if (strc->unkC[3].x > Q(DISPLAY_WIDTH)) {
        strc->unkC[3].x -= Q(8);
        if (strc->unkC[3].x < Q(DISPLAY_WIDTH)) {
            strc->unkC[3].x = 0;
            count += 1;
        }
    } else {
        count += 1;
    }

    if (count == 4) {
        return 1U;
    }

    return 0U;
}

void sub_809CE58(Code_2_0__F4 *strc)
{
    Sprite *s = NULL;
    u8 i;

    for (i = 0; i < 4; i++) {
        if (gPlayers[i].charFlags.someIndex == 2) {
            s = &strc->sprCC;
            s->x = I(strc->unkC[i].x);
            s->y = I(strc->unkC[i].y);
            if (i == 1) {
                s->x -= 40;
            } else if (i == 2) {
                s->y -= 24;
            } else if (i == 3) {
                s->x -= 40;
                s->y -= 24;
            }
        } else if ((gPlayers[i].charFlags.someIndex == 1) || (gPlayers[i].charFlags.someIndex == 3)) {
            s = &strc->spr2C[i];
            s->x = I(strc->unkC[i].x);
            s->y = I(strc->unkC[i].y);
        }

        DisplaySprite((Sprite *)s);
    }
}

void sub_809CF04(u8 *vram, u8 *someData)
{
    Code_2_0__3C *strc = TASK_DATA(TaskCreate(Task_3C_809E4E0, sizeof(Code_2_0__3C), 0x2100U, 0U, TaskDestructor_809E630));
    Sprite *s;
    strc->unk6 = 0;
    strc->unk4 = 0;
    strc->unk0 = someData;
    strc->qUnkC = -0x7800;
    strc->qUnk10 = 0x5000;

    s = &strc->spr14;
    s->tiles = vram;
    vram += (gUnknown_080D9668[0].numTiles << 5);

    s->anim = gUnknown_080D9668[0].anim;
    s->variant = gUnknown_080D9668[0].variant;
    s->prevVariant = -1;
    s->x = I(strc->qUnkC);
    s->y = I(strc->qUnk10);
    s->oamFlags = 0x200;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0x1000;
    UpdateSpriteAnimation(s);
    strc->vram8 = vram;
}

void sub_809CFA8(u8 *vram, u8 *someData)
{
    Code_2_0__3C *strc = TASK_DATA(TaskCreate(Task_3C_809D04C, sizeof(Code_2_0__3C), 0x2100U, 0U, TaskDestructor_809E688));
    Sprite *s;
    strc->unk6 = 0;
    strc->unk4 = 0;
    strc->unk0 = someData;
    strc->qUnkC = -0x7800;
    strc->qUnk10 = 0x5000;

    s = &strc->spr14;
    s->tiles = vram;
    vram += (gUnknown_080D9678[3].numTiles << 5);

    s->anim = gUnknown_080D9678[3].anim;
    s->variant = gUnknown_080D9678[3].variant;
    s->prevVariant = 0xFF;
    s->x = I(strc->qUnkC);
    s->y = I(strc->qUnk10);
    s->oamFlags = 0x1C0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0x1000;
    UpdateSpriteAnimation(s);
    strc->vram8 = vram;
}

void Task_3C_809D04C(void)
{
    union MultiSioData *send = &gMultiSioSend;
    s16 playerIndex = gStageData.playerIndex;
    Code_2_0__3C *strc = TASK_DATA(gCurTask);

    if (sub_802610C() < 0) {
        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        gBgSpritesCount = 0;
        PAUSE_GRAPHICS_QUEUE();
        sub_80A1A4C(3U);
        return;
    }

    sub_809E66C(strc);

    if (sub_809E634(strc) == 1) {
        if (playerIndex == 0) {
            if (1 & gPressedKeys) {
                send->pat0.unk0 = 0x6613;
                gCurTask->main = Task_3C_809D148;
            } else if (2 & gPressedKeys) {
                send->pat0.unk0 = 0x6614;
                gCurTask->main = Task_3C_809D148;
            }
        } else {
            union MultiSioData *recv = &gMultiSioRecv[0];
            send->pat0.unk0 = 0x6615;
            if (recv->pat0.unk0 == 0x6613) {
                send->pat0.unk0 = 0x6613;
                *strc->unk0 = 0xA;
                TaskDestroy(gCurTask);
                return;
            } else if (recv->pat0.unk0 == 0x6614) {
                send->pat0.unk0 = 0x6614;
                *strc->unk0 = 0;
                strc->unk4 = 0;
                TaskDestroy(gCurTask);
                return;
            }
        }
    }
}

void Task_3C_809D148(void)
{
    u8 *temp_r2;
    u8 temp_r0_2;
    u8 temp_r1;
    u8 var_r3;
    u8 sp0[3] = { 0 };
    u8 sp4[ARRAY_COUNT(sp0)] = { 0 };
    u8 var_r6 = 0;
    u8 var_r7 = 0;
    Code_2_0__3C *strc = TASK_DATA(gCurTask);

    if (sub_802610C() < 0) {
        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        gBgSpritesCount = 0;
        PAUSE_GRAPHICS_QUEUE();
        sub_80A1A4C(3U);
        return;
    }

    sub_809E66C(strc);

    for (var_r3 = 0; var_r3 < 3; var_r3++) {
        if (gPlayers[var_r3].charFlags.someIndex == 3) {
            sp0[var_r3] = 1;
            var_r7 += 1;
        }
        if (sp0[var_r3] == 1) {
            union MultiSioData *recv = &gMultiSioRecv[var_r3];
            if (recv->pat0.unk0 == 0x6613) {
                *strc->unk0 = 10;
            } else if (recv->pat0.unk0 == 0x6614) {
                *strc->unk0 = 0;
                strc->unk4 = 0;
            }
        }
        if (sp0[var_r3] != 0) {
            if ((sp4[var_r3] != 0) && (sp0[var_r3] == sp4[var_r3])) {
                var_r6 += 1;
            }
        }
    }

    if (var_r6 == var_r7) {
        TaskDestroy(gCurTask);
    }
}

void sub_809D27C(u8 *vram, void *someData)
{
    s32 sp4 = 0;
    s32 sp8;
    s32 var_r2;
    Code_2_0__64 *strc = TASK_DATA(TaskCreate(Task_64_809D3C4, 0x64U, 0x2100U, 0U, TaskDestructor_809E774));
    s32 language = LOADED_SAVE->language;
    s32 index;

    strc->unk6 = sp4;
    strc->unk4 = 0;
    strc->unk0 = someData;
    strc->qUnkC = -Q(120);
    strc->qUnk10 = +Q(80);

    switch (gStageData.unkB8) {
        case 0: {
            var_r2 = 0;
            sp4 = 1;
        } break;

        case 1: {
            var_r2 = 1;
            sp4 = 0;
        } break;

        default: {
            var_r2 = 2;
            sp4 = 2;
        } break;
    }

    {
        Sprite *s = &strc->spr14;
        s->tiles = vram;
        vram += (gUnknown_080D9678[var_r2 + (language * 4)].numTiles * TILE_SIZE_4BPP);
        s->anim = gUnknown_080D9678[var_r2 + language * 4].anim;
        s->variant = gUnknown_080D9678[var_r2 + language * 4].variant;
        s->prevVariant = -1;
        s->x = (s16)((s32)strc->qUnkC >> 8);
        s->y = (s16)((s32)strc->qUnk10 >> 8);
        s->oamFlags = SPRITE_OAM_ORDER(7);
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0x1000;
        sp8 = 0;
        UpdateSpriteAnimation(s);
    }
    {
        Sprite *s = &strc->spr3C;
        s->tiles = vram;
        index = sp4 + language * 4;
        vram += (gUnknown_080D9678[index].numTiles * TILE_SIZE_4BPP);
        s->anim = gUnknown_080D9678[index].anim;
        s->variant = gUnknown_080D9678[index].variant;
        s->prevVariant = -1;
        s->x = I(strc->qUnkC);
        s->y = I(strc->qUnk10);
        s->oamFlags = SPRITE_OAM_ORDER(7);
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0x1000;
        UpdateSpriteAnimation(s);
    }
    strc->vram8 = vram;
}

void Task_64_809D3C4(void)
{
    union MultiSioData *send = &gMultiSioSend;
    s16 playerIndex = gStageData.playerIndex;
    Code_2_0__64 *strc = TASK_DATA(gCurTask);

    if ((s32)(sub_802610C() << 0x10) < 0) {
        TasksDestroyInPriorityRange(0U, 0xFFFFU);
        gBackgroundsCopyQueueCursor = gBackgroundsCopyQueueIndex;
        gBgSpritesCount = 0;
        gVramGraphicsCopyCursor = gVramGraphicsCopyQueueIndex;
        sub_80A1A4C(3U);
        return;
    }
    sub_809E740(strc);

    if (sub_809E708(strc) == 1) {
        if (playerIndex == 0) {
            if (++strc->unk6 >= 90) {
                strc->unk6 = 0;
                send->pat0.unk0 = 0x6611;
                gCurTask->main = Task_64_809D498;
            }
        } else {
            union MultiSioData *recv = gMultiSioRecv;
            send->pat0.unk0 = 0x6610;
            if (recv->pat0.unk0 == 0x6611) {
                send->pat0.unk0 = 0x6611;
                sub_809D5B8(strc->unk0, strc->vram8);
                gCurTask->main = Task_64_809E68C;
            }
        }
    }
}

void Task_64_809D498(void)
{
    u8 sp0[3] = { 0 };
    u8 sp4[ARRAY_COUNT(sp0)] = { 0 };
    u8 var_r6 = 0;
    u8 var_r7 = 0;
    Code_2_0__64 *strc = TASK_DATA(gCurTask);
    u8 var_r4;

    if (sub_802610C() < 0) {
        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        gBgSpritesCount = 0;
        PAUSE_GRAPHICS_QUEUE();
        sub_80A1A4C(3U);
        return;
    }

    for (var_r4 = 0; var_r4 < ARRAY_COUNT(sp0); var_r4++) {
        s32 r3;
        if (gPlayers[var_r4].charFlags.someIndex == 3) {
            sp0[var_r4] = 1;
            var_r7 += 1;
        }

        if (sp0[var_r4] == 1) {
            union MultiSioData *recv = &gMultiSioRecv[var_r4];
            if (recv->pat0.unk0 == 0x6611) {
                sp4[var_r4] = 1;
            }
        }
        if (sp0[var_r4] != 0) {
            if ((sp4[var_r4] != 0) && (sp0[var_r4] == sp4[var_r4])) {
                var_r6 += 1;
            }
        }
    }

    if (var_r6 == var_r7) {
        sub_809D5B8(strc->unk0, strc->vram8);
        gCurTask->main = Task_64_809E68C;
    }
}

void sub_809D5B8(u8 *someData, u8 *vram)
{
    Code_2_1 *strc = TASK_DATA(TaskCreate(Task_D4_809D810, sizeof(Code_2_1), 0x2100U, 0U, TaskDestructor_809E858));
    strc->vramC = vram;
    strc->unk0 = someData;
    strc->unk5 = 0;
    strc->unk6 = 0;
    strc->unk8 = 0;
    strc->unkA = 0;
    strc->unk10 = Q(160);
    strc->unk18 = 0;
    strc->unk1C = +Q(120);
    strc->unk20 = -Q(50);
    strc->unk2C = -Q(120);
    strc->unk30 = +Q(80);
    strc->unk24 = -Q(50);
    strc->unk28 = +Q(80);
    sub_809D6A0(strc);

    gWinRegs[2] = (I(strc->unk18) * WIN_RANGE(1, 1)) + WIN_RANGE(0, I(strc->unk10));
    gDispCnt |= DISPCNT_BG1_ON;
    gBgPalette[0] = 0;
    gFlags |= FLAGS_UPDATE_BACKGROUND_PALETTES;

    CpuFastSet(&gUnknown_080D97F8, &OBJ_PLTT[0 * PALETTE_LEN_4BPP], (20 * sizeof(ColorRaw)));
    CpuFastSet(&gUnknown_080D9898, &gObjPalette[7 * PALETTE_LEN_4BPP], (4 * sizeof(ColorRaw)));
    CpuFastSet(&gUnknown_080D97F8, &gObjPalette[0 * PALETTE_LEN_4BPP], (20 * sizeof(ColorRaw)));

    gFlags |= FLAGS_UPDATE_SPRITE_PALETTES;
}

void sub_809D6A0(Code_2_1 *strc)
{
    u8 lang = LOADED_SAVE->language;
    s32 lang4;

    {
        Sprite *s = &strc->spr34;
        s->tiles = strc->vramC;
        strc->vramC += gUnknown_080D9738[lang4 = lang * 4].numTiles * TILE_SIZE_4BPP;
        s->anim = gUnknown_080D9738[lang * 4].anim;
        s->variant = gUnknown_080D9738[lang * 4].variant;
        s->prevVariant = -1;
        s->x = I(strc->unk1C);
        s->y = I(strc->unk20);
        s->oamFlags = 0x180;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0x80;
        UpdateSpriteAnimation(s);
    }

    {
        Sprite *s = &strc->spr5C;
        s->tiles = strc->vramC;
        strc->vramC += gUnknown_080D9738[lang4 + 1].numTiles * TILE_SIZE_4BPP;
        s->anim = gUnknown_080D9738[lang4 + 1].anim;
        s->variant = gUnknown_080D9738[lang4 + 1].variant;
        s->prevVariant = -1;
        s->x = I(strc->unk24);
        s->y = I(strc->unk28);
        s->oamFlags = 0x180;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }

    {
        Sprite *s = &strc->spr84;
        s->tiles = strc->vramC;
        strc->vramC += gUnknown_080D9738[lang4 + 2].numTiles * TILE_SIZE_4BPP;
        s->anim = gUnknown_080D9738[lang4 + 2].anim;
        s->variant = gUnknown_080D9738[lang4 + 2].variant;
        s->prevVariant = -1;
        s->x = I(strc->unk24);
        s->y = I(strc->unk28);
        s->oamFlags = 0x180;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }

    {
        Sprite *s = &strc->sprAC;
        s->tiles = strc->vramC;
        strc->vramC += gUnknown_080D9738[3].numTiles * TILE_SIZE_4BPP;
        s->anim = gUnknown_080D9738[3].anim;
        s->variant = gUnknown_080D9738[3].variant;
        s->prevVariant = -1;
        s->x = I(strc->unk2C);
        s->y = I(strc->unk30);
        s->oamFlags = 0x180;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }
}

void Task_D4_809D810(void)
{
    s32 temp_r0;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r1_3;
    u8 temp_r5;
    u8 var_r6;
    Code_2_1 *strc;
    union MultiSioData *send = &gMultiSioSend;

    temp_r5 = gStageData.playerIndex;
    var_r6 = 0;
    if (sub_802610C() < 0) {
        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        gBgSpritesCount = 0;
        PAUSE_GRAPHICS_QUEUE();
        sub_80A1A4C(3);
        return;
    }

    strc = TASK_DATA(gCurTask);

    if (temp_r5 != 0) {
        send->pat0.unk0 = 0x6611;
    }

    sub_809E7DC(strc);

    if (strc->unkA == 0) {
        gBldRegs.bldCnt = 0x3FFF;
        gDispCnt |= DISPCNT_WIN0_ON | DISPCNT_WIN1_ON;
        gWinRegs[WINREG_WIN0H] = WIN_RANGE(0, WIN_GET_HIGHER(-1));
        gWinRegs[WINREG_WIN1H] = WIN_RANGE(0, WIN_GET_HIGHER(-1));
        gWinRegs[WINREG_WIN1V] = WIN_RANGE(0, WIN_GET_HIGHER(-1));
        gWinRegs[WINREG_WININ] = 0x3112;
        gWinRegs[WINREG_WINOUT] = 0;
        gBldRegs.bldAlpha = 0x1F;
        gBldRegs.bldY = 6;
        strc->unk8 = 0x600;
        strc->unkA = 1;
    }

    if (strc->unk18 <= Q(68)) {
        strc->unk18 += Q(4);
        if (strc->unk18 >= Q(68)) {
            strc->unk18 = Q(68);
            var_r6 += 1;
        }
    }

    if (strc->unk10 >= Q(24)) {
        strc->unk10 -= Q(8);
        if (strc->unk10 <= Q(24)) {
            strc->unk10 = Q(24);
            var_r6 += 1;
        }
    }

    gWinRegs[WINREG_WIN0V] = (I(strc->unk18) * WIN_RANGE(1, 1)) + WIN_RANGE(0, I(strc->unk10));

    if (var_r6 == 2) {
        gBldRegs.bldCnt = 0x3FFF;
        gWinRegs[WINREG_WININ] = 0x3112;
        gBldRegs.bldAlpha = 0x1F;
        gBldRegs.bldY = 6;
        strc->unkA = 0;
        gCurTask->main = Task_D4_809D960;
    }
}

void Task_D4_809D960(void)
{
    union MultiSioData *send = &gMultiSioSend;
    u8 playerIndex = gStageData.playerIndex;
    u8 var_r5 = 0;

    if (sub_802610C() < 0) {
        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        gBgSpritesCount = 0;
        PAUSE_GRAPHICS_QUEUE();
        sub_80A1A4C(3);
        return;
    }

    if (playerIndex != 0) {
        send->pat0.unk0 = 0x6611;
    }

    {
        Code_2_1 *strc = TASK_DATA(gCurTask);
        sub_809E7DC(strc);
        sub_809DFAC(strc);
        sub_809E018(strc);

        if (sub_809E7F8(strc) == 1) {
            var_r5 += 1;
        }
        if (sub_809E828(strc) == 1) {
            var_r5 += 1;
        }
        if (var_r5 == 2) {
            gCurTask->main = Task_D4_809DA18;
        }
    }
}

void Task_D4_809DA18(void)
{
    union MultiSioData *send = &gMultiSioSend;
    s16 playerIndex = gStageData.playerIndex;

    if (sub_802610C() < 0) {
        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        gBgSpritesCount = 0;
        PAUSE_GRAPHICS_QUEUE();
        sub_80A1A4C(3);
        return;
    }
    {
        Code_2_1 *strc = TASK_DATA(gCurTask);
        sub_809E7DC(strc);
        sub_809DFAC(strc);
        sub_809E018(strc);

        if (playerIndex != 0) {
            union MultiSioData *recv = gMultiSioRecv;
            if (recv->pat0.unk0 == 0x6612) {
                if (strc->unk5 == 1) {
                    m4aMPlayAllStop();
                    m4aSongNumStart(MUS_VS_BGM_5);
                }

                gCurTask->main = Task_D4_809DCA4;
            } else if (recv->pat0.unk0 != 0x6611) {
                if ((u8)recv->pat0.unk0 > 1U) {
                    strc->unk5 = 0;
                }
                strc->unk5 = (u8)recv->pat0.unk0;
                if (strc->unk5 > 1U) {
                    strc->unk5 = 0;
                }
                send->pat0.unk0 = (u16)strc->unk5;
            } else {
                send->pat0.unk0 = 0x6611;
            }
        } else {
            if (DPAD_LEFT & gRepeatedKeys) {
                m4aSongNumStart(SE_DPAD_SELECT);
                strc->unk5 = 0;
            }
            if (DPAD_RIGHT & gRepeatedKeys) {
                m4aSongNumStart(SE_DPAD_SELECT);
                strc->unk5 = 1;
            }
            send->pat0.unk0 = (u16)strc->unk5;
            if (!(B_BUTTON & gPressedKeys)) {
                if (!(A_BUTTON & gPressedKeys))
                    return;
            } else {
                strc->unk5 = 1;
            }

            if (strc->unk5 == 1) {
                m4aMPlayAllStop();
                m4aSongNumStart(MUS_VS_BGM_5);
            } else {
                m4aSongNumStart(SE_SELECT);
            }

            gCurTask->main = Task_D4_809DB74;
        }
    }
}

void Task_D4_809DB74(void)
{
    union MultiSioData *send = &gMultiSioSend;
    u8 sp0[3] = { 0 };
    u8 sp4[ARRAY_COUNT(sp0)] = { 0 };
    u8 var_r7 = 0;
    u8 var_r8 = 0;
    Code_2_1 *strc = TASK_DATA(gCurTask);
    u8 i;

    if (sub_802610C() < 0) {
        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        gBgSpritesCount = 0;
        PAUSE_GRAPHICS_QUEUE();
        sub_80A1A4C(3);
        return;
    }
    send->pat0.unk0 = strc->unk5;

    for (i = 0; i < ARRAY_COUNT(sp0); i++) {
        if (gPlayers[i].charFlags.someIndex == 3) {
            sp0[i] = 1;
            var_r8 += 1;
        }

        if (sp0[i] == 1) {
            union MultiSioData *recv = &gMultiSioRecv[i];
            if (recv->pat0.unk0 == strc->unk5) {
                sp4[i] = 1;
            }
        }

        if (sp0[i] != 0) {
            if ((sp4[i] != 0) && (sp0[i] == sp4[i])) {
                var_r7 += 1;
            }
        }
    }

    if (var_r7 == var_r8) {
        send->pat0.unk0 = 0x6612;
        gCurTask->main = Task_D4_809DCA4;
    }
}

void Task_D4_809DCA4(void)
{
    union MultiSioData *send = &gMultiSioSend;
    s16 temp_r4 = gStageData.playerIndex;
    u8 var_r7 = 0;
    u8 sp0[3] = { 0 };
    u8 sp4[ARRAY_COUNT(sp0)] = { 0 };
    u8 var_sb = 0;
    u8 var_r8 = 0;
    Code_2_1 *strc = TASK_DATA(gCurTask);
    union MultiSioData *recv;
    u8 i;

    if (sub_802610C() < 0) {
        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        gBgSpritesCount = 0;
        PAUSE_GRAPHICS_QUEUE();
        sub_80A1A4C(3);
        return;
    }
    if (temp_r4 == 0) {
        for (i = 0; i < ARRAY_COUNT(sp0); i++) {
            if (gPlayers[i].charFlags.someIndex == 3) {
                sp0[i] = 1;
                var_r8 += 1;
            }

            if (sp0[i] == 1) {
                recv = &gMultiSioRecv[i];
                if (recv->pat0.unk0 == 0x6612) {
                    sp4[i] = 1;
                }
            }

            if (sp0[i] != 0) {
                if ((sp4[i] != 0) && (sp0[i] == sp4[i])) {
                    var_sb += 1;
                }
            }
        }

        if (var_sb == var_r8) {
            var_r7 = 1;
        }
    } else {
        send->pat0.unk0 = 0x6612;
        recv = &gMultiSioRecv[0];
        if (recv->pat0.unk0 == 0x6612) {
            var_r7 = 1;
        }
    }

    if (var_r7 != 0) {
        if (strc->unk18 <= 0x5000) {
            if (strc->unk5 == 1) {
                strc->unk18 += Q(0.25);
            } else {
                strc->unk18 += Q(1.00);
            }
            if (strc->unk18 >= 0x5000) {
                strc->unk18 = 0x5000;
                var_r7 += 1;
            }
        }

        if (strc->unk10 >= 0) {
            if (strc->unk5 == 1) {
                strc->unk10 -= Q(0.5);
            } else {
                strc->unk10 -= Q(2);
            }
            if ((s32)strc->unk10 <= 0) {
                strc->unk10 = 0;
                var_r7 += 1;
            }
        }
        gWinRegs[2] = (I(strc->unk18) * WIN_RANGE(1, 1)) + WIN_RANGE(0, I(strc->unk10));
        if (var_r7 == 3) {
            if (strc->unk5 == 1) {
                *strc->unk0 = 0xB;
            } else {
                *strc->unk0 = 9;
            }
            gDispCnt &= ~0x200;
            gCurTask->main = Task_D4_809E778;
        }
    }
}

void sub_809DE9C(Code_2_1 *unused)
{
    s32 var_r4;
    s8 i;
    VsRecords *vsrec;
    s16 playerIndex = gStageData.playerIndex;

    switch (gStageData.unkB8) {
        case 0:
            var_r4 = playerIndex % 2u;
            break;
        case 1:
            var_r4 = gStageData.unkB8 & ~playerIndex;
            break;
        case 2:
            var_r4 = 2;
            break;
        default:
            return;
    }

    switch (var_r4) {
        case 0:
            if (LOADED_SAVE->vsWins < MAX_MULTIPLAYER_SCORE) {
                LOADED_SAVE->vsWins += 1;
            }
            break;
        case 1:
            if (LOADED_SAVE->vsLosses < MAX_MULTIPLAYER_SCORE) {
                LOADED_SAVE->vsLosses += 1;
            }
            break;
        case 2:
            if (LOADED_SAVE->vsDraws < MAX_MULTIPLAYER_SCORE) {
                LOADED_SAVE->vsDraws += 1;
            }
            break;
        default:
            return;
    }

    for (i = 3; i >= 0; i--) {
        if (GetBit(gUnknown_03001060.unk7, i) && ((playerIndex % 2u) != (i % 2u))) {
            vsrec = sub_8001C30(gUnknown_03001060.unkC[i], gUnknown_03001060.unk1C[i]);
            switch (var_r4) {
                case 0:
                    if (vsrec->losses < MAX_MULTIPLAYER_SCORE) {
                        vsrec->losses += 1;
                    }
                    break;
                case 1:
                    if (vsrec->wins < MAX_MULTIPLAYER_SCORE) {
                        vsrec->wins += 1;
                    }
                    break;
                case 2:
                    if (vsrec->draws < MAX_MULTIPLAYER_SCORE) {
                        vsrec->draws += 1;
                    }
                    break;
            }
        }
    }
}

void sub_809DFAC(Code_2_1 *strc)
{
    Sprite *s = &strc->sprAC;
    s->x = 100;
    s->y = 80;
    SPRITE_FLAG_CLEAR(s, X_FLIP);
    if (strc->unk5 == 0) {
        s->palId = 4;
    } else {
        s->palId = 0;
    }
    UpdateSpriteAnimation(s);
    DisplaySprite(s);

    s->x = 140;
    s->y = 80;
    SPRITE_FLAG_SET(s, X_FLIP);
    if (strc->unk5 == 0) {
        s->palId = 0;
    } else {
        s->palId = 4;
    }
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void sub_809E018(Code_2_1 *strc)
{
    {
        Sprite *s = &strc->spr5C;

        s->x = I(strc->unk24);
        s->y = I(strc->unk28);
        if (strc->unk5 == 0) {
            s->palId = 0;
        } else {
            s->palId = 2;
        }
        s->frameFlags = 0;
        DisplaySprite(s);
    }

    {
        Sprite *s = &strc->spr84;
        s->x = DISPLAY_WIDTH - I(strc->unk24);
        s->y = I(strc->unk28);
        if (strc->unk5 == 0) {
            s->palId = 2;
        } else {
            s->palId = 0;
        }
        s->frameFlags = 0;
        DisplaySprite(s);
    }
}

void sub_809E078(Code_2_0__570 *strc)
{
    u8 var_r2;

    strc->unkA = 0;
    strc->unk6 = 0;
    strc->unk8 = 0;
    strc->unk4 = 0;

    for (var_r2 = 0; var_r2 < ARRAY_COUNT(strc->unk0); var_r2++) {
        s32 index = gUnknown_030010AC[var_r2];
        strc->unk0[var_r2] = gUnknown_080D961D[index];
    }

    strc->unk10.x = -Q(130);
    strc->unk10.y = +Q(80);
    strc->unk20.x = -Q(130);
    strc->unk20.y = +Q(160);
    strc->unk18.x = +Q(370); // TODO: Q(DISPLAY_WIDTH + 130) ?
    strc->unk18.y = +Q(80);
    strc->unk28.x = +Q(370);
    strc->unk28.y = +Q(160); // TODO: Q(DISPLAY_HEIGHT) ?
}

void Task_570_809E0D4(void)
{
    s8 temp_r0;
    u16 temp_r4;
    Code_2_0__570 *strc = TASK_DATA(gCurTask);

    if (sub_802610C() < 0) {
        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        gBgSpritesCount = 0;
        PAUSE_GRAPHICS_QUEUE();
        sub_80A1A4C(3);
        return;
    }
    sub_809C8C4(strc);

    if (sub_809C810(strc) == 1) {
        strc->unk4 = 1;
        sub_809CC80(strc->vramC, &strc->unk4, strc->unk5);
        gCurTask->main = Task_570_809C620;
    }
}

void Task_570_809E164(void)
{
    Code_2_0__570 *strc = TASK_DATA(gCurTask);
    if ((s32)(sub_802610C() << 0x10) < 0) {
        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        gBgSpritesCount = 0;
        PAUSE_GRAPHICS_QUEUE();
        sub_80A1A4C(3);
        return;
    }
    if (strc->unk4 == 10) {
        if (strc->unk5 != 0) {
            TaskDestroy(gCurTask);
            return;
        }

        sub_809E85C(0);
        TaskDestroy(gCurTask);
    }
}

void Task_60_809E1E8(void)
{
    s16 temp_r0;
    u16 var_r0;
    s16 temp_r4 = gStageData.playerIndex;
    Code_2_0__60 *strc = TASK_DATA(gCurTask);
    sub_809E384(strc);
    if (temp_r4 == 0) {
        var_r0 = sub_8025360();
    } else {
        var_r0 = sub_8025AA8();
    }
    temp_r0 = (s16)var_r0;
    if ((s32)temp_r0 < 0) {
        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        gBgSpritesCount = 0;
        PAUSE_GRAPHICS_QUEUE();
        sub_80A1A4C(3);
        return;
    }
    if (temp_r0 == 1) {
        *strc->unk0 = 0xA;
        TaskDestroy(gCurTask);
    }
}

void TaskDestructor_809E280(void) { }

void Task_60_809E284(void)
{
    u16 var_r0;
    s16 temp_r4 = gStageData.playerIndex;
    Code_2_0__60 *strc = TASK_DATA(gCurTask);

    sub_809E384(strc);
    if (temp_r4 == 0) {
        var_r0 = sub_8025A90();
    } else {
        var_r0 = sub_80253CC();
    }
    if ((s32)(var_r0 << 0x10) < 0) {
        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        gBgSpritesCount = 0;
        PAUSE_GRAPHICS_QUEUE();
        sub_80A1A4C(3);
        return;
    }
    if (sub_809E354(strc) == 1) {
        gCurTask->main = Task_60_809CA64;
    }
}

void Task_60_809E31C(void)
{
    // TODO: type of strc only a guess
    Code_2_0__60 *temp_r1 = TASK_DATA(gCurTask);
    if (--temp_r1->unk6 == 0) {
        *temp_r1->unk0 = 0xA;
        sub_808ADF0(1U);
        TaskDestroy(gCurTask);
    }
}

bool32 sub_809E354(Code_2_0__60 *strc)
{
    if (strc->qUnkC >= Q(80) || (strc->qUnkC += Q(16)) >= Q(80)) {
        strc->qUnkC = Q(80);
        return 1;
    }

    return 0;
}

void sub_809E384(Code_2_0__60 *strc)
{
    {
        Sprite *s = &strc->spr10;
        s->x = I(strc->unk8);
        s->y = I(strc->qUnkC);
        DisplaySprite(s);
    }
    {
        Sprite *s = &strc->spr10;

        s = &strc->spr38;
        s->x = I(strc->unk8);
        s->y = I(strc->qUnkC);
        DisplaySprite(s);
    }
}

void TaskDestructor_809E3B4(void) { }

void Task_F4_809E3B8(void)
{
    u8 temp_r0;
    Code_2_0__F4 *strc = TASK_DATA(gCurTask);

    if (sub_802610C() < 0) {
        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        gBgSpritesCount = 0;
        PAUSE_GRAPHICS_QUEUE();
        sub_80A1A4C(3);
        return;
    }

    sub_809CE58(strc);

    if (sub_809CDC8(strc) == 1) {
        if (strc->unk4 == 0) {
            sub_809C970(strc->vram8, strc->unk0);
        } else if (strc->unk4 == 1) {
            sub_809CF04(strc->vram8, strc->unk0);
        }
        gCurTask->main = Task_809E458;
    }
}

void Task_809E458(void)
{
    Code_2_0__F4 *strc = TASK_DATA(gCurTask);
    u8 temp_r0;

    if (sub_802610C() < 0) {
        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        gBgSpritesCount = 0;
        PAUSE_GRAPHICS_QUEUE();
        sub_80A1A4C(3);
        return;
    }
    sub_809CE58(strc);

    if (*strc->unk0 == 10) {
        TaskDestroy(gCurTask);
        return;
    } else if (*strc->unk0 == 0) {
        TaskDestroy(gCurTask);
        return;
    }
}

void TaskDestructor_809E4DC(Task *t) { }

void Task_3C_809E4E0(void)
{
    Code_2_0__3C *strc = TASK_DATA(gCurTask);
    if ((s32)(sub_802610C() << 0x10) < 0) {
        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        gBgSpritesCount = 0;
        PAUSE_GRAPHICS_QUEUE();
        sub_80A1A4C(3);
        return;
    }
    sub_809E5E4(strc);
    if (sub_809E5AC(strc) == 1) {
        if (strc->unk4 == 1) {
            sub_809CFA8(strc->vram8, strc->unk0);
            gCurTask->main = Task_809E574;
        } else {
            sub_809D27C(strc->vram8, strc->unk0);
            gCurTask->main = Task_809E574;
        }
    }
}

void Task_809E574(void)
{
    Code_2_0__3C *strc = TASK_DATA(gCurTask);
    sub_809E5E4(strc);

    if (*strc->unk0 == 10) {
        TaskDestroy(gCurTask);
        return;
    } else if (*strc->unk0 == 0) {
        TaskDestroy(gCurTask);
        return;
    }
}

bool32 sub_809E5AC(Code_2_0__3C *strc)
{
    if (strc->qUnkC < Q(120)) {
        strc->qUnkC += Q(16);
        if (strc->qUnkC > Q(120)) {
            strc->qUnkC = Q(120);
            return TRUE;
        }
    } else {
        strc->qUnkC = Q(120);
        return TRUE;
    }

    return FALSE;
}

void sub_809E5E4(Code_2_0__3C *strc)
{
    Sprite *s = &strc->spr14;
    s->x = I(strc->qUnkC);
    s->y = I(strc->qUnk10);
    s->frameFlags &= ~0x400;
    DisplaySprite(s);

    s->x = DISPLAY_WIDTH - I(strc->qUnkC);
    s->y = I(strc->qUnk10);
    s->frameFlags |= 0x400;
    DisplaySprite(s);
}

void TaskDestructor_809E630(Task *t) { }

bool32 sub_809E634(Code_2_0__3C *strc)
{
    if (strc->qUnkC < Q(120)) {
        strc->qUnkC += Q(8);
        if (strc->qUnkC > Q(120)) {
            strc->qUnkC = Q(120);
            return 1;
        }
    } else {
        strc->qUnkC = Q(120);
        return 1;
    }

    return 0;
}

void sub_809E66C(Code_2_0__3C *strc)
{
    Sprite *s = &strc->spr14;
    s->x = I(strc->qUnkC);
    s->y = I(strc->qUnk10);
    DisplaySprite(s);
}

void TaskDestructor_809E688(Task *t) { }

void Task_64_809E68C(void)
{
    Code_2_0__64 *temp_r4 = TASK_DATA(gCurTask);
    if ((s32)(sub_802610C() << 0x10) < 0) {
        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        gBgSpritesCount = 0;
        PAUSE_GRAPHICS_QUEUE();
        sub_80A1A4C(3);
        return;
    }

    if (*temp_r4->unk0 == 10) {
        TaskDestroy(gCurTask);
        return;
    } else if (*temp_r4->unk0 == 0) {
        TaskDestroy(gCurTask);
        return;
    }
}

bool32 sub_809E708(Code_2_0__64 *strc)
{
    if (strc->qUnkC < 0x2800) {
        strc->qUnkC += Q(8);
        if (strc->qUnkC > 0x2800) {
            strc->qUnkC = 0x2800;
            return 1;
        }
    } else {
        strc->qUnkC = 0x2800;
        return 1;
    }

    return 0;
}

void sub_809E740(Code_2_0__64 *strc)
{
    {
        Sprite *s = &strc->spr14;
        s->x = I(strc->qUnkC);
        s->y = I(strc->qUnk10);
        DisplaySprite(s);
    }
    {
        Sprite *s = &strc->spr3C;
        ;
        s->x = DISPLAY_WIDTH - I(strc->qUnkC);
        s->y = I(strc->qUnk10);
        DisplaySprite(s);
    }
}

void TaskDestructor_809E774(Task *t) { }

void Task_D4_809E778(void)
{
    Code_2_1 *strc = TASK_DATA(gCurTask);
    if (*strc->unk0 == 0xA) {
        if (strc->unk5 != 0) {
            gDispCnt &= 0x9FFF;
            sub_80AD9E4();
            TaskDestroy(gCurTask);
            return;
        }
        sub_809DE9C(strc);
        gStageData.gameMode = 6;
        CreateMultiPakConnectionCheck(0xFF);
        TaskDestroy(gCurTask);
    }
}

void sub_809E7DC(Code_2_1 *strc)
{
    Sprite *s = &strc->spr34;
    s->x = I(strc->unk1C);
    s->y = I(strc->unk20);
    DisplaySprite(s);
}

bool32 sub_809E7F8(Code_2_1 *strc)
{
    s32 temp_r0;
    s32 temp_r0_2;

    temp_r0 = strc->unk20;
    if ((strc->unk20 >= Q(50)) || ((strc->unk20 += Q(16)) >= Q(50))) {
        strc->unk20 = Q(50);
        return 1;
    }
    return 0;
}

bool32 sub_809E828(Code_2_1 *strc)
{
    if ((strc->unk24 >= Q(60)) || (strc->unk24 += Q(16)) >= Q(60)) {
        strc->unk24 = Q(60);
        return 1;
    }

    return 0;
}

void TaskDestructor_809E858(Task *t) { }

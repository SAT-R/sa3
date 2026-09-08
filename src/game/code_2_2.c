#include "global.h"
#include "core.h"
#include "flags.h"
#include "multi_sio_stuff.h"
#include "game/save.h"
#include "constants/zones.h"

// TODO: game__code_2_0.s, game__code_2_1.s and game__code_2_2.s might be the same module?
// ---------- unsure about split ----------
// sub_809E85C() only referenced once in sub_809E164, so probably part of module?

typedef struct {
    /* 0x000 */ u8 unk0;
    /* 0x001 */ u8 unk1;
    /* 0x002 */ u8 unk2;
    /* 0x003 */ u8 unk3;
    /* 0x003 */ u8 unk4;
    /* 0x005 */ u8 language;
    /* 0x006 */ u8 unlockedZones;
    /* 0x007 */ s8 unk7[7];
    /* 0x00E */ s16 unkE;
    /* 0x010 */ s16 unk10;
    /* 0x010 */ s16 unk12;
    /* 0x014 */ s32 unk14;
    /* 0x018 */ s32 unk18;
    /* 0x01C */ s32 unk1C;
    /* 0x020 */ s32 unk20;
    /* 0x024 */ s32 unk24;
    /* 0x028 */ s32 unk28;
    /* 0x02C */ s32 unk2C;
    /* 0x030 */ s32 unk30;
    /* 0x034 */ s32 unk34;
    /* 0x034 */ s32 qUnk38;
    /* 0x034 */ s32 qUnk3C;
    /* 0x034 */ s32 qUnk40;
    /* 0x034 */ s32 qUnk44;
    /* 0x048 */ Sprite spr48;
    /* 0x070 */ Sprite spr70;
    /* 0x098 */ Sprite spr98;
    /* 0x0C0 */ Sprite sprC0;
    /* 0x0E8 */ Sprite sprE8;
    /* 0x110 */ Sprite spr110;
    /* 0x138 */ Sprite spr138;
    /* 0x160 */ Background bg160;
    /* 0x1A0 */ Background bg1A0;
} Code_2_2; /* 0x1E0 */

void sub_809E85C(u8 arg0);

void sub_809E978(Code_2_2 *strc);
void sub_809EB74(Code_2_2 *strc);
void Task_809EBF4(void);
void Task_809EC84(void);
void Task_809EDB0(void);
void Task_809EE50(void);
void Task_809EF68(void);
void Task_809F070(void);
void Task_809F170(void);
void Task_809F210(void);
s32 sub_809F310(Code_2_2 *strc);
s32 sub_809F460(Code_2_2 *strc);
void sub_809F550(Code_2_2 *strc);
void sub_809F5E4(Code_2_2 *strc);
void Task_809F638(void);
void Task_809F6D0(void);
void Task_809F718(void);
void Task_809F768(void);
void sub_809F7A4(Code_2_2 *strc);
void sub_809F7B8(Code_2_2 *strc);
s32 sub_809F7D8(Code_2_2 *strc);
s32 sub_809F810(Code_2_2 *strc);
void TaskDestructor_809F84C(Task *t);

#ifdef M2C
void sub_809E85C(u8 arg0, Code_2_2 *strc);
void Task_809EBF4(Code_2_2 *strc);
void Task_809EC84(Code_2_2 *strc);
void Task_809EDB0(Code_2_2 *strc);
void Task_809EE50(Code_2_2 *strc);
void Task_809F070(Code_2_2 *strc);
void Task_809F170(Code_2_2 *strc);
void Task_809F210(Code_2_2 *strc);
void Task_809F638(Code_2_2 *strc);
void Task_809F6D0(Code_2_2 *strc);
void Task_809F718(Code_2_2 *strc);
void Task_809F768(Code_2_2 *strc);
#endif

extern s16 sub_8025460(u8);
extern s16 sub_80254CC();
extern s16 sub_8025534();
extern s16 sub_80255B0();
extern s16 sub_8025614();
extern s16 sub_8025AA8();
extern s16 sub_8025AFC();
extern u16 sub_80C4C0C(s32);
// extern ? gUnknown_080D8AAC;
// extern ? gUnknown_080D8ACC;
// extern ? gUnknown_080D8AEC;
// extern ? gUnknown_080D98D8;

extern const TileInfo2 sAnimsTimeAttackDigits;
extern void sub_80A1A4C(s32);
extern void sub_80022E8(s16 level);
extern void sub_80260F0(void);
void Task_809EBF4(void);
void TaskDestructor_809F84C(Task *t);

void sub_809E85C(u8 arg0)
{
    u8 i;
    Code_2_2 *strc;
    struct Task *t;

    gDispCnt = DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP | DISPCNT_MODE_1;
    t = TaskCreate(Task_809EBF4, sizeof(Code_2_2), 0x2100U, 0U, TaskDestructor_809F84C);
    strc = TASK_DATA(t);
    strc->unk2 = arg0;
    strc->language = LOADED_SAVE->language;
    strc->unk3 = 0;
    strc->unk4 = 0;
    strc->unk12 = 0;
    strc->unk14 = 0;
    strc->unk18 = 0;
    strc->unk1C = 0;
    strc->unkE = 0;
    strc->unk10 = 0;
    strc->unk20 = 0;
    strc->unk24 = 0;
    strc->unk28 = 0;
    strc->unk2C = 0;
    strc->unk30 = 0;
    strc->unk34 = 0;
    strc->unk1 = (u8)gUnknown_03001060.unk50;
    strc->qUnk38 = Q(132);
    strc->qUnk3C = Q(132);
    strc->qUnk40 = Q(124);
    strc->qUnk44 = Q(132);

    if ((arg0 == 0) || (LOADED_SAVE->unlockedZones > ZONE_FINAL)) {
        strc->unlockedZones = ZONE_FINAL;
    } else {
        strc->unlockedZones = LOADED_SAVE->unlockedZones;
    }

    for (i = 0; i < ARRAY_COUNT(strc->unk7); i++) {
        if (strc->unk2 == 0) {
            strc->unk7[i] = 3;
        } else {
            if (LOADED_SAVE->unlockedStages[i] != 0) {
                strc->unk7[i] = (LOADED_SAVE->unlockedStages[i] >> 1) + 1;
                if (strc->unk7[i] > 3) {
                    strc->unk7[i] = 3;
                }
            } else {
                strc->unk7[i] = 0;
            }
        }
    }

    sub_809E978(strc);
    sub_809EB74(strc);
    gBgPalette[0] = sub_80C4C0C(0xFFFF);
    gFlags |= FLAGS_UPDATE_BACKGROUND_PALETTES;
}

#if 01
#else
void sub_809E978(Code_2_2 *strc)
{
    ? *sp0;
    s32 temp_r2;
    s32 temp_r5_2;
    u32 temp_r5;
    u8 *temp_r6;
    u8 *temp_r6_2;
    u8 *temp_r6_3;
    u8 *temp_r6_4;
    u8 temp_r0;
    void *temp_r2_2;
    void *temp_r5_3;
    void *temp_r8;

    temp_r0 = strc->language;
    temp_r5 = (u32)((0 - temp_r0) | temp_r0) >> 0x1F;
    strc->spr110.tiles = (u8 *)0x06010000;
    temp_r2 = temp_r5 * 8;
    temp_r6 = (*(&gUnknown_080D98D8 + 4 + temp_r2) << 5) + 0x06010000;
    temp_r2_2 = temp_r2 + &gUnknown_080D98D8;
    strc->spr110.anim = temp_r2_2->unk0;
    strc->spr110.variant = temp_r2_2->unk2;
    strc->spr110.prevVariant = 0xFF;
    strc->spr110.x = (s16)((s32)strc->unk20 >> 8);
    strc->spr110.y = (s16)((s32)strc->unk24 >> 8);
    strc->spr110.oamFlags = 0;
    strc->spr110.animCursor = 0;
    strc->spr110.qAnimDelay = 0;
    strc->spr110.animSpeed = 0x10;
    strc->spr110.palId = 0;
    strc->spr110.frameFlags = 0;
    sp0 = &gUnknown_080D98D8;
    UpdateSpriteAnimation(&strc->spr110);
    strc->sprE8.tiles = temp_r6;
    temp_r6_2 = temp_r6 + (gUnknown_080D98D8.unk14 << 5);
    strc->sprE8.anim = gUnknown_080D98D8.unk10;
    strc->sprE8.variant = gUnknown_080D98D8.unk12;
    strc->sprE8.prevVariant = -1U;
    strc->sprE8.x = (s16)((s32)strc->unk28 >> 8);
    strc->sprE8.y = (s16)((s32)strc->unk2C >> 8);
    strc->sprE8.oamFlags = 0;
    strc->sprE8.animCursor = 0;
    strc->sprE8.qAnimDelay = 0;
    strc->sprE8.animSpeed = 0x10;
    strc->sprE8.palId = 0;
    strc->sprE8.frameFlags = 0;
    UpdateSpriteAnimation(&strc->sprE8);
    strc->spr48.tiles = temp_r6_2;
    temp_r5_2 = temp_r5 * 0x10;
    temp_r6_3 = temp_r6_2 + (*(temp_r5_2 + (&gUnknown_080D8AAC + 4)) << 5);
    temp_r5_3 = temp_r5_2 + &gUnknown_080D8AAC;
    strc->spr48.anim = temp_r5_3->unk0;
    strc->spr48.variant = temp_r5_3->unk2;
    strc->spr48.prevVariant = -1U;
    strc->spr48.x = (s16)((s32)strc->unk20 >> 8);
    strc->spr48.y = (s16)((s32)strc->unk24 >> 8);
    strc->spr48.oamFlags = 0;
    strc->spr48.animCursor = 0;
    strc->spr48.qAnimDelay = 0;
    strc->spr48.animSpeed = 0x10;
    strc->spr48.palId = 0;
    strc->spr48.frameFlags = 0;
    UpdateSpriteAnimation(&strc->spr48);
    strc->spr70.tiles = temp_r6_3;
    temp_r6_4 = temp_r6_3 + (*(&gUnknown_080D8ACC + 4 + temp_r2) << 5);
    temp_r8 = temp_r2 + &gUnknown_080D8ACC;
    strc->spr70.anim = temp_r8->unk0;
    strc->spr70.variant = temp_r8->unk2;
    strc->spr70.prevVariant = -1U;
    strc->spr70.x = (s16)((s32)strc->unk20 >> 8);
    strc->spr70.y = (s16)((s32)strc->unk24 >> 8);
    strc->spr70.oamFlags = 0;
    strc->spr70.animCursor = 0;
    strc->spr70.qAnimDelay = 0;
    strc->spr70.animSpeed = 0x10;
    strc->spr70.palId = 0;
    strc->spr70.frameFlags = 0;
    UpdateSpriteAnimation(&strc->spr70);
    strc->spr98.tiles = temp_r6_4;
    strc->spr98.anim = sAnimsTimeAttackDigits.unk0;
    strc->spr98.variant = sAnimsTimeAttackDigits.unk2;
    strc->spr98.prevVariant = -1U;
    strc->spr98.x = (s16)((s32)strc->unk20 >> 8);
    strc->spr98.y = (s16)((s32)strc->unk24 >> 8);
    strc->spr98.oamFlags = 0;
    strc->spr98.animCursor = 0;
    strc->spr98.qAnimDelay = 0;
    strc->spr98.animSpeed = 0x10;
    strc->spr98.palId = 0;
    strc->spr98.frameFlags = 0;
    UpdateSpriteAnimation(&strc->spr98);
    strc->sprC0.tiles = temp_r6_4 + 0x80;
    strc->sprC0.anim = sAnimsTimeAttackDigits.unk0;
    strc->sprC0.variant = sAnimsTimeAttackDigits.unk2;
    strc->sprC0.prevVariant = -1U;
    strc->sprC0.x = (s16)((s32)strc->unk20 >> 8);
    strc->sprC0.y = (s16)((s32)strc->unk24 >> 8);
    strc->sprC0.oamFlags = 0;
    strc->sprC0.animCursor = 0;
    strc->sprC0.qAnimDelay = 0;
    strc->sprC0.animSpeed = 0x10;
    strc->sprC0.palId = 0;
    strc->sprC0.frameFlags = 0;
    UpdateSpriteAnimation(&strc->sprC0);
    strc->spr138.tiles = &temp_r6_4[0x80].unk80;
    strc->spr138.anim = gUnknown_080D8AEC.unk0;
    strc->spr138.variant = gUnknown_080D8AEC.unk2;
    strc->spr138.prevVariant = -1U;
    strc->spr138.x = (s16)((s32)strc->unk20 >> 8);
    strc->spr138.y = (s16)((s32)strc->unk24 >> 8);
    strc->spr138.oamFlags = 0;
    strc->spr138.animCursor = 0;
    strc->spr138.qAnimDelay = 0;
    strc->spr138.animSpeed = 0x10;
    strc->spr138.palId = 0;
    strc->spr138.frameFlags = 0;
    UpdateSpriteAnimation(&strc->spr138);
}

void sub_809EB74(Code_2_2 *strc)
{
    gDispCnt |= 0x200;
    gBgCntRegs[1] = 0x1808;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = -0x78;
    strc->bg1A0.graphics.dest = (void *)0x06008000;
    strc->bg1A0.graphics.anim = 0;
    strc->bg1A0.layoutVram = (u16 *)0x0600C000;
    strc->bg1A0.unk18 = 0;
    strc->bg1A0.unk1A = 0;
    strc->bg1A0.tilemapId = 0x162;
    strc->bg1A0.unk1E = 0;
    strc->bg1A0.unk20 = 0;
    strc->bg1A0.unk22 = 0;
    strc->bg1A0.unk24 = 0;
    strc->bg1A0.targetTilesX = 0x1E;
    strc->bg1A0.targetTilesY = 0x28;
    strc->bg1A0.paletteOffset = 0;
    strc->bg1A0.flags = 1;
    DrawBackground(&strc->bg1A0);
}

void Task_809EBF4(Code_2_2 *strc)
{
    Background *temp_r0;
    u16 temp_r3;

    temp_r3 = gCurTask->data;
    gDispCnt |= 0x100;
    *gBgCntRegs = 0xE83;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    temp_r0 = temp_r3 + 0x160;
    temp_r0->graphics.dest = (void *)0x06000000;
    temp_r0->graphics.anim = 0;
    temp_r0->layoutVram = (u16 *)0x06007000;
    temp_r0->unk18 = 0;
    temp_r0->unk1A = 0;
    temp_r0->tilemapId = 0x176;
    temp_r0->unk1E = 0;
    temp_r0->unk20 = 0;
    temp_r0->unk22 = 0;
    temp_r0->unk24 = 0;
    temp_r0->targetTilesX = 0x1E;
    temp_r0->targetTilesY = 0x14;
    temp_r3->unk18A = 0;
    temp_r0->flags = 4;
    DrawBackground(temp_r0);
    gCurTask->main = (void (*)())Task_809EC84;
}

void Task_809EC84(Code_2_2 *strc)
{
    s16 temp_r0;
    u16 temp_r0_2;
    u16 temp_r3;
    u16 temp_r4;
    u16 var_r0;
    u32 var_r5;
    void (*var_r0_2)(Code_2_2 *);

    var_r5 = 0;
    temp_r4 = gCurTask->data;
    if (gStageData.playerIndex == 0) {
        var_r0 = sub_80254CC();
    } else {
        var_r0 = sub_8025AFC();
    }
    temp_r0 = (s16)var_r0;
    if ((s32)temp_r0 < 0) {
        var_r0_2 = Task_809F638;
        goto block_18;
    }
    if (temp_r0 != 0) {
        temp_r3 = temp_r4->unk10;
        if (temp_r3 == 0) {
            gBldRegs.bldCnt = 0x3FFF;
            gDispCnt |= 0x6000;
            gWinRegs->unk0 = 0xFF;
            gWinRegs[1] = 0xFF;
            gWinRegs[3] = 0xFF;
            gWinRegs[4] = 0x3132;
            gWinRegs[5] = temp_r3;
            gBldRegs.bldY = 0x10;
            temp_r4->unkE = 0x1000U;
            temp_r4->unk10 = 1U;
        }
        if (gBldRegs.bldY != 0) {
            gBldRegs.bldY = (u16)((u16)temp_r4->unkE >> 8);
            temp_r0_2 = temp_r4->unkE + 0xFFFFFE00;
            temp_r4->unkE = temp_r0_2;
            if ((u32)(temp_r0_2 << 0x10) > 0x0FFF0000U) {
                temp_r4->unkE = 0U;
            }
        } else {
            var_r5 = 0x01000000U >> 0x18;
        }
        if (sub_809F7D8((Code_2_2 *)temp_r4) == 1) {
            var_r5 = (u32)(u8)(var_r5 + 1);
        }
        if (sub_809F810((Code_2_2 *)temp_r4) == 1) {
            var_r5 = (u32)(u8)(var_r5 + 1);
        }
        temp_r4->unk1C = 0x7800;
        temp_r4->unk14 = 0x1800;
        gWinRegs[2] = 0x7890;
        sub_809F550((Code_2_2 *)temp_r4);
        sub_809F7B8((Code_2_2 *)temp_r4);
        if (var_r5 == 3) {
            temp_r4->unk10 = 0U;
            var_r0_2 = Task_809EDB0;
        block_18:
            gCurTask->main = var_r0_2;
        }
    }
}

void Task_809EDB0(Code_2_2 *strc)
{
    s32 temp_r0;
    u16 temp_r1;
    u16 var_r0;
    void (*var_r0_2)(Code_2_2 *);

    temp_r1 = gCurTask->data;
    if (temp_r1->unk0 != (gUnknown_03001060.unk50 + 2)) {
        temp_r1->unk0 = (u8)((temp_r1->unk3 * 0xA) + temp_r1->unk4 + 2);
    }
    temp_r0 = gStageData.playerIndex << 0x10;
    if (temp_r0 == 0) {
        var_r0 = sub_8025460(temp_r1->unk0);
    } else {
        var_r0 = sub_8025AA8();
    }
    if ((s32)(var_r0 << 0x10) < 0) {
        var_r0_2 = Task_809F638;
    } else {
        if (temp_r0 != 0) {
            sub_809F7A4((Code_2_2 *)temp_r1);
        }
        sub_809F550((Code_2_2 *)temp_r1);
        sub_809F7B8((Code_2_2 *)temp_r1);
        sub_809F5E4((Code_2_2 *)temp_r1);
        var_r0_2 = Task_809EE50;
    }
    gCurTask->main = var_r0_2;
}

void Task_809EE50(Code_2_2 *strc)
{
    s16 temp_r5_2;
    s16 temp_r6;
    u16 temp_r1;
    u16 var_r0;
    u8 temp_r5;
    void (*var_r0_2)(Code_2_2 *);

    temp_r5 = gStageData.playerIndex;
    temp_r1 = gCurTask->data;
    sub_809F550((Code_2_2 *)temp_r1);
    sub_809F7B8((Code_2_2 *)temp_r1);
    sub_809F5E4((Code_2_2 *)temp_r1);
    if (temp_r1->unk0 != (gUnknown_03001060.unk50 + 2)) {
        temp_r1->unk0 = (u8)((temp_r1->unk3 * 0xA) + temp_r1->unk4 + 2);
    }
    if ((temp_r5 << 0x10) == 0) {
        var_r0 = sub_8025460(temp_r1->unk0);
    } else {
        var_r0 = sub_80255B0();
    }
    temp_r6 = (s16)var_r0;
    if ((s32)temp_r6 < 0) {
        var_r0_2 = Task_809F638;
        goto block_19;
    }
    temp_r5_2 = (s16)temp_r5;
    if (temp_r5_2 != 0) {
        sub_809F7A4((Code_2_2 *)temp_r1);
    }
    if (temp_r6 == 1) {
        var_r0_2 = Task_809F170;
        goto block_19;
    }
    if ((temp_r5_2 == 0) && (1 & gPressedKeys)) {
        m4aSongNumStart(0x6AU);
        if (temp_r1->unk0 != gUnknown_03001060.unk50) {
            temp_r1->unk0 = (u8)((temp_r1->unk3 * 0xA) + temp_r1->unk4 + 2);
        }
        var_r0_2 = Task_809F718;
        goto block_19;
    }
    if ((sub_809F310((Code_2_2 *)temp_r1) == 1) || (sub_809F460((Code_2_2 *)temp_r1) == 1)) {
        var_r0_2 = (void (*)(Code_2_2 *))Task_809EF68;
    block_19:
        gCurTask->main = var_r0_2;
    }
}

void Task_809EF68(void)
{
    s32 temp_r0;
    u16 temp_r1;
    u16 temp_r2;
    u16 var_r0;
    u8 temp_r4;
    void (*var_r0_2)(Code_2_2 *);

    temp_r4 = gStageData.playerIndex;
    temp_r1 = gCurTask->data;
    sub_809F550((Code_2_2 *)temp_r1);
    sub_809F7B8((Code_2_2 *)temp_r1);
    sub_809F5E4((Code_2_2 *)temp_r1);
    if (temp_r1->unk0 != (gUnknown_03001060.unk50 + 2)) {
        temp_r1->unk0 = (u8)((temp_r1->unk3 * 0xA) + temp_r1->unk4 + 2);
    }
    temp_r0 = temp_r4 << 0x10;
    if (temp_r0 == 0) {
        var_r0 = sub_8025460(temp_r1->unk0);
    } else {
        var_r0 = sub_8025614();
    }
    if ((s32)(var_r0 << 0x10) < 0) {
        var_r0_2 = Task_809F638;
        goto block_14;
    }
    if (temp_r0 != 0) {
        sub_809F7A4((Code_2_2 *)temp_r1);
    }
    temp_r2 = temp_r1->unk10;
    if (temp_r2 == 0) {
        gBldRegs.bldCnt = 0x3F8F;
        gWinRegs[4] = 0x1132;
        gBldRegs.bldY = temp_r2;
        temp_r1->unkE = temp_r2;
        temp_r1->unk10 = 1U;
    }
    if ((u32)gBldRegs.bldY <= 0xFU) {
        gBldRegs.bldY = (u16)((u16)temp_r1->unkE >> 8);
        temp_r1->unkE = (u16)(temp_r1->unkE + 0x200);
        return;
    }
    gBldRegs.bldY = 0x10;
    gBgScrollRegs[1][1] = -0x78;
    gBgScrollRegs[1][1] = (temp_r1->unk3 * 0x18) + 0xFF88;
    temp_r1->unk10 = 0U;
    var_r0_2 = Task_809F070;
block_14:
    gCurTask->main = var_r0_2;
}

void Task_809F070(Code_2_2 *strc)
{
    s16 temp_r0_2;
    s32 temp_r0;
    u16 temp_r1;
    u16 var_r0;
    u8 temp_r5;
    void (*var_r0_2)(Code_2_2 *);

    temp_r5 = gStageData.playerIndex;
    temp_r1 = gCurTask->data;
    sub_809F550((Code_2_2 *)temp_r1);
    sub_809F7B8((Code_2_2 *)temp_r1);
    sub_809F5E4((Code_2_2 *)temp_r1);
    if (temp_r1->unk0 != (gUnknown_03001060.unk50 + 2)) {
        temp_r1->unk0 = (u8)((temp_r1->unk3 * 0xA) + temp_r1->unk4 + 2);
    }
    temp_r0 = temp_r5 << 0x10;
    if (temp_r0 == 0) {
        var_r0 = sub_8025460(temp_r1->unk0);
    } else {
        var_r0 = sub_80255B0();
    }
    temp_r0_2 = (s16)var_r0;
    if ((s32)temp_r0_2 < 0) {
        var_r0_2 = Task_809F638;
        goto block_17;
    }
    if (temp_r0_2 == 1) {
        var_r0_2 = Task_809F170;
        goto block_17;
    }
    if (temp_r0 != 0) {
        sub_809F7A4((Code_2_2 *)temp_r1);
    }
    if ((sub_809F310((Code_2_2 *)temp_r1) == 1) || (sub_809F460((Code_2_2 *)temp_r1) == 1)) {
        var_r0_2 = (void (*)(Code_2_2 *))Task_809EF68;
        goto block_17;
    }
    if (gBldRegs.bldY != 0) {
        gBldRegs.bldY = (u16)((u16)temp_r1->unkE >> 8);
        temp_r1->unkE = (u16)(temp_r1->unkE + 0xFFFFFE00);
        return;
    }
    gBldRegs.bldY = gBldRegs.bldY;
    var_r0_2 = Task_809EE50;
block_17:
    gCurTask->main = var_r0_2;
}

void Task_809F170(Code_2_2 *strc)
{
    s16 temp_r5_2;
    s32 temp_r0;
    u16 temp_r1;
    u16 var_r0;
    u8 temp_r5;
    void (*var_r0_2)(Code_2_2 *);

    temp_r5 = gStageData.playerIndex;
    temp_r1 = gCurTask->data;
    sub_809F550((Code_2_2 *)temp_r1);
    sub_809F7B8((Code_2_2 *)temp_r1);
    sub_809F5E4((Code_2_2 *)temp_r1);
    if (temp_r1->unk0 != (gUnknown_03001060.unk50 + 2)) {
        temp_r1->unk0 = (u8)((temp_r1->unk3 * 0xA) + temp_r1->unk4 + 2);
    }
    temp_r0 = temp_r5 << 0x10;
    if (temp_r0 == 0) {
        var_r0 = sub_8025534();
    } else {
        var_r0 = sub_8025614();
    }
    temp_r5_2 = (s16)var_r0;
    if ((s32)temp_r5_2 < 0) {
        var_r0_2 = Task_809F638;
        goto block_11;
    }
    if (temp_r0 != 0) {
        sub_809F7A4((Code_2_2 *)temp_r1);
    }
    if (temp_r5_2 == 1) {
        var_r0_2 = Task_809F210;
    block_11:
        gCurTask->main = var_r0_2;
    }
}

void Task_809F210(Code_2_2 *strc)
{
    s16 temp_r6;
    s32 temp_r0;
    u16 temp_r1;
    u16 temp_r3;
    u16 var_r0;
    u8 temp_r5;
    void (*var_r0_2)(Code_2_2 *);

    temp_r5 = gStageData.playerIndex;
    temp_r1 = gCurTask->data;
    sub_809F550((Code_2_2 *)temp_r1);
    sub_809F7B8((Code_2_2 *)temp_r1);
    sub_809F5E4((Code_2_2 *)temp_r1);
    if (temp_r1->unk0 != (gUnknown_03001060.unk50 + 2)) {
        temp_r1->unk0 = (u8)((temp_r1->unk3 * 0xA) + temp_r1->unk4 + 2);
    }
    temp_r0 = temp_r5 << 0x10;
    if (temp_r0 == 0) {
        var_r0 = sub_8025534();
    } else {
        var_r0 = sub_8025614();
    }
    temp_r6 = (s16)var_r0;
    if ((s32)temp_r6 < 0) {
        var_r0_2 = Task_809F638;
        goto block_15;
    }
    if (temp_r0 != 0) {
        sub_809F7A4((Code_2_2 *)temp_r1);
    }
    temp_r3 = temp_r1->unk10;
    if (temp_r3 == 0) {
        gDispCnt |= 0x2000;
        gWinRegs[5] |= 0x1F;
        gWinRegs[4] = 0x3132;
        gBldRegs.bldCnt = 0x3FFF;
        gBldRegs.bldY = temp_r3;
        temp_r1->unkE = temp_r3;
        temp_r1->unk10 = 1U;
    }
    if ((u32)gBldRegs.bldY <= 0xFU) {
        gBldRegs.bldY = (u16)((u16)temp_r1->unkE >> 8);
        temp_r1->unkE = (u16)(temp_r1->unkE + 0x100);
        return;
    }
    if (temp_r6 == 1) {
        var_r0_2 = Task_809F768;
    block_15:
        gCurTask->main = var_r0_2;
    }
}

s32 sub_809F310(Code_2_2 *strc)
{
    s32 temp_r0;
    s32 temp_r0_2;
    u32 temp_r0_3;
    u8 *temp_r2;
    u8 temp_r1;
    u8 temp_r1_2;
    u8 temp_r3;
    u8 temp_r6;
    u8 temp_r7;

    temp_r0 = strc->unk38 - 0x20;
    strc->unk38 = temp_r0;
    if (temp_r0 <= 0x7FFF) {
        strc->unk38 = 0x8400;
    }
    temp_r0_2 = strc->unk40 + 0x20;
    strc->unk40 = temp_r0_2;
    if (temp_r0_2 > 0x8000) {
        strc->unk40 = 0x7C00;
    }
    if (gStageData.playerIndex == 0) {
        if (!(0x30 & gRepeatedKeys)) {
            goto block_23;
        }
        m4aSongNumStart(0x6CU);
        if (0x20 & gRepeatedKeys) {
            strc->unk4 -= 1;
            temp_r3 = strc->unk3;
            temp_r2 = &(&strc->unk7)[temp_r3];
            if ((s32)strc->unk4 > (s32)((s8)*temp_r2 - 1)) {
                strc->unk4 = *temp_r2 - 1;
                strc->unk3 = temp_r3 - 1;
                if ((s32)strc->unk3 > (s32)((s8)strc->unlockedZones - 1)) {
                    strc->unk3 = strc->unlockedZones - 1;
                }
                goto block_22;
            }
        }
        temp_r1 = strc->unk3;
        if (0x10 & gRepeatedKeys) {
            strc->unk4 += 1;
            if ((s32)strc->unk4 > (s32)((s8)(&strc->unk7)[temp_r1] - 1)) {
                strc->unk4 = 0;
                strc->unk3 += 1;
                if ((s32)strc->unk3 > (s32)((s8)strc->unlockedZones - 1)) {
                    strc->unk3 = 0;
                }
                goto block_22;
            }
        }
        strc->unk0 = (temp_r1 * 0xA) + strc->unk4 + 2;
        gUnknown_03001060.unk50 = (u16)strc->unk0;
        goto block_23;
    }
    if ((strc->unk1 != gUnknown_03001060.unk50)
        && (((temp_r6 = strc->unk4, temp_r7 = strc->unk3, temp_r0_3 = (u16)gUnknown_03001060.unk50 / 10U, strc->unk3 = (u8)temp_r0_3,
              temp_r1_2 = (gUnknown_03001060.unk50 - (strc->unk3 * 0xA)) - 2, strc->unk4 = temp_r1_2,
              strc->unk1 = (u8)gUnknown_03001060.unk50, (temp_r6 == 2))
             && ((temp_r1_2 << 0x18) == 0))
            || ((temp_r6 == 0) && (temp_r1_2 == 2)) || ((u8)temp_r0_3 != temp_r7))) {
    block_22:
        return 1;
    }
block_23:
    return 0;
}

s32 sub_809F460(Code_2_2 *strc)
{
    s32 temp_r0;
    s32 temp_r0_2;
    u8 temp_r1;
    u8 temp_r3;

    temp_r0 = strc->unk38 - 0x20;
    strc->unk38 = temp_r0;
    if (temp_r0 <= 0x7FFF) {
        strc->unk38 = 0x8400;
    }
    temp_r0_2 = strc->unk40 + 0x20;
    strc->unk40 = temp_r0_2;
    if (temp_r0_2 > 0x8000) {
        strc->unk40 = 0x7C00;
    }
    if (gStageData.playerIndex == 0) {
        if (0xC0 & gRepeatedKeys) {
            temp_r3 = strc->unk3;
            if (0x80 & gRepeatedKeys) {
                strc->unk3 = temp_r3 - 1;
                if ((s32)strc->unk3 > (s32)((s8)strc->unlockedZones - 1)) {
                    strc->unk3 = strc->unlockedZones - 1;
                }
            }
            if (0x40 & gRepeatedKeys) {
                strc->unk3 += 1;
                if ((s32)strc->unk3 > (s32)((s8)strc->unlockedZones - 1)) {
                    strc->unk3 = 0;
                }
            }
            strc->unk0 = (strc->unk3 * 0xA) + strc->unk4 + 2;
            gUnknown_03001060.unk50 = (u16)strc->unk0;
            if (temp_r3 != strc->unk3) {
                m4aSongNumStart(0x6CU);
            }
            goto block_17;
        }
        goto block_19;
    }
    if (strc->unk1 != gUnknown_03001060.unk50) {
        temp_r1 = (u8)((u16)gUnknown_03001060.unk50 / 10U);
        if (strc->unk3 != temp_r1) {
            strc->unk3 = temp_r1;
        block_17:
            return 1;
        }
        strc->unk1 = (u8)gUnknown_03001060.unk50;
        goto block_19;
    }
block_19:
    return 0;
}

void sub_809F550(Code_2_2 *strc)
{
    Sprite *temp_r4;
    Sprite *temp_r4_2;

    strc->spr48.x = (s16)((s32)strc->unk20 >> 8);
    strc->spr48.y = (s16)((s32)strc->unk24 >> 8);
    DisplaySprite(&strc->spr48);
    temp_r4 = &strc->spr98;
    strc->spr98.anim = sAnimsTimeAttackDigits.unk0;
    strc->spr98.variant = strc->unk3 + sAnimsTimeAttackDigits.unk2;
    strc->spr98.prevVariant = 0xFF;
    strc->spr98.x = ((s32)strc->unk20 >> 8) + 0x19;
    strc->spr98.y = (s16)((s32)strc->unk24 >> 8);
    UpdateSpriteAnimation(temp_r4);
    DisplaySprite(temp_r4);
    strc->spr70.x = ((s32)strc->unk20 >> 8) + 0x2A;
    strc->spr70.y = (s16)((s32)strc->unk24 >> 8);
    DisplaySprite(&strc->spr70);
    temp_r4_2 = temp_r4 + 0x28;
    temp_r4_2->anim = sAnimsTimeAttackDigits.unk0;
    temp_r4_2->variant = strc->unk4 + sAnimsTimeAttackDigits.unk2;
    temp_r4_2->prevVariant = -1U;
    temp_r4_2->x = ((s32)strc->unk20 >> 8) + 0x57;
    temp_r4_2->y = (s16)((s32)strc->unk24 >> 8);
    UpdateSpriteAnimation(temp_r4_2);
    DisplaySprite(temp_r4_2);
}

void sub_809F5E4(Code_2_2 *strc)
{
    Sprite *temp_r4;

    temp_r4 = &strc->spr138;
    strc->spr138.x = ((s32)strc->unk38 >> 8) - 0x20;
    strc->spr138.y = (s16)((s32)strc->unk3C >> 8);
    strc->spr138.frameFlags &= 0xFFFFFBFF;
    DisplaySprite(temp_r4);
    strc->spr138.x = ((s32)strc->unk40 >> 8) + 0x69;
    strc->spr138.y = (s16)((s32)strc->unk44 >> 8);
    strc->spr138.frameFlags |= 0x400;
    DisplaySprite(temp_r4);
    UpdateSpriteAnimation(temp_r4);
}

void Task_809F638(Code_2_2 *strc)
{
    u16 temp_r4;

    temp_r4 = gCurTask->data;
    sub_80260F0();
    gDispCnt &= 0x9FFF;
    gBldRegs.bldCnt = 0;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0;
    (void *)0x040000D4->unk0 = &subroutine_arg0;
    (void *)0x040000D4->unk4 = (s32)(((0xC & gBgCntRegs[2]) << 0xC) + 0x06000000);
    (void *)0x040000D4->unk8 = 0x85000010;
    gBgSprites_Unknown1[2] = 0;
    gBgSprites_Unknown2[2][0] = 0;
    gBgSprites_Unknown2[2][1] = 0;
    gBgSprites_Unknown2[2][2] = 0xFF;
    gBgSprites_Unknown2[2][3] = 0x40;
    temp_r4->unk12 = 0x12C;
    gCurTask->main = (void (*)())Task_809F6D0;
}

void Task_809F6D0(Code_2_2 *strc)
{
    TasksDestroyInPriorityRange(0U, 0xFFFFU);
    gBackgroundsCopyQueueCursor = gBackgroundsCopyQueueIndex;
    gBgSpritesCount = 0;
    gVramGraphicsCopyCursor = gVramGraphicsCopyQueueIndex;
    sub_80A1A4C(3);
}

void Task_809F718(Code_2_2 *strc)
{
    s16 temp_r0;
    u16 temp_r4;
    void (*var_r0)(Code_2_2 *);

    temp_r4 = gCurTask->data;
    sub_809F550((Code_2_2 *)temp_r4);
    sub_809F7B8((Code_2_2 *)temp_r4);
    sub_809F5E4((Code_2_2 *)temp_r4);
    temp_r0 = (s16)sub_8025534();
    if ((s32)temp_r0 < 0) {
        var_r0 = Task_809F638;
        goto block_4;
    }
    if (temp_r0 == 1) {
        var_r0 = Task_809F210;
    block_4:
        gCurTask->main = var_r0;
    }
}

void Task_809F768(Code_2_2 *strc)
{
    u16 temp_r4;

    temp_r4 = gCurTask->data;
    sub_800214C();
    gUnknown_03001060.unk50 = (temp_r4->unk3 * 0xA) + temp_r4->unk4 + 3;
    sub_80022E8(gUnknown_03001060.unk50);
}

void sub_809F7A4(Code_2_2 *strc)
{
    strc->sprE8.x = 0x78;
    strc->sprE8.y = 0x46;
    DisplaySprite(&strc->sprE8);
}

void sub_809F7B8(Code_2_2 *strc)
{
    strc->spr110.x = (s16)((s32)strc->unk30 >> 8);
    strc->spr110.y = (s16)((s32)strc->unk34 >> 8);
    DisplaySprite(&strc->spr110);
}

s32 sub_809F7D8(Code_2_2 *strc)
{
    s32 temp_r1;
    s32 temp_r1_2;

    strc->unk34 = 0x1400;
    temp_r1 = strc->unk30;
    if ((temp_r1 <= 0x7600) || (temp_r1_2 = temp_r1 + 0xFFFFF000, strc->unk30 = temp_r1_2, (temp_r1_2 <= 0x75FF))) {
        strc->unk30 = 0x7600;
        return 1;
    }
    return 0;
}

s32 sub_809F810(Code_2_2 *strc)
{
    s32 temp_r0;
    s32 temp_r2;

    strc->unk24 = 0x8400;
    temp_r2 = strc->unk20;
    if (temp_r2 <= 0x7CFF) {
        temp_r0 = temp_r2 + 0x1000;
        strc->unk20 = temp_r0;
        if (temp_r0 > 0x7D00) {
            strc->unk20 = 0x7D00;
            return 1;
        }
        return 0;
    }
    strc->unk20 = 0x7D00;
    return 1;
}

void TaskDestructor_809F84C(Task *t) { }
#endif

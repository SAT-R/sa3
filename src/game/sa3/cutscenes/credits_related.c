#include "global.h"
#include "core.h"

typedef struct {
    /* 0x01C */ u8 *initArg0;
    /* 0x000 */ u8 filler4[0x10];
    /* 0x01C */ u16 unk14; // TODO: type
    /* 0x01C */ u16 unk16;
    /* 0x01C */ u8 unk18;
    /* 0x01C */ u16 unk1A;
    /* 0x01C */ u8 *vram1C;
    /* 0x028 */ Vec2_32 unk20;
    /* 0x028 */ Vec2_32 unk28[3];
    /* 0x040 */ Vec2_32 unk40;
    /* 0x048 */ Sprite spr48;
    /* 0x070 */ Sprite spr70;
    /* 0x098 */ u8 filler98[0x14];
    /* 0x0AC */ Sprite sprAC;
    /* 0x0D4 */ u8 fillerD4[0x4];
    /* 0x0D8 */ Background bgD8;
    /* 0x118 */ u8 filler118[0x130];
} CreditsRelated248;

typedef struct {
    /* 0x0D4 */ u8 filler0[0x4C];
    /* 0x04C */ Sprite spr4C;
    /* 0x074 */ Sprite spr74;
    /* 0x09C */ Sprite spr9C;
    /* 0x0C4 */ Sprite sprC4;
    /* 0x0EC */ Background bgEC;
} CreditsRelated12C;

typedef struct {
    /* 0x000 */ u8 filler0[0x34];
    /* 0x034 */ Sprite spr34;
    /* 0x05C */ Sprite spr5C;
    /* 0x084 */ Sprite spr84;
    /* 0x0AC */ u8 fillerAC[0x28];
    /* 0x0D4 */ Sprite sprD4;
    /* 0x0FC */ Sprite sprFC;
    /* 0x124 */ Sprite spr124;
    /* 0x14C */ u8 filler14C[0x4];
} CreditsRelated150;

u8 *sub_80A45B4(u8 *param0, u8 *vram);
void sub_80A4678(CreditsRelated248 *strc248);
void sub_80A490C(CreditsRelated248 *strc248, u8 param1, u8 param2);
void sub_80A4A88(CreditsRelated248 *strc248, u8 param1, u8 param2);
void sub_80A4BF8(CreditsRelated248 *strc248, u8 param1, u8 param2, u8 param3);
void sub_80A4D6C(CreditsRelated248 *strc248);
void Task_248_80A4DDC(void);
void Task_248_80A4E38(void);
void Task_248_80A4EDC(void);
void Task_248_80A4F94(void);
void Task_248_80A5050(void);
void Task_248_80A50FC(void);
void Task_248_80A51B4(void);
void Task_248_80A52DC(void);
bool32 sub_80A555C(CreditsRelated248 *strc248);
bool32 sub_80A55DC(CreditsRelated248 *strc248);
bool32 sub_80A563C(CreditsRelated248 *strc248);
bool32 sub_80A5698(CreditsRelated248 *strc248);
bool32 sub_80A5824(CreditsRelated248 *strc248);
void CreatePreCreditsCutscene(u8 param0);
void sub_80A5B08(CreditsRelated150 *strc150);
void sub_80A5CB0(CreditsRelated150 *strc150, u8 param1, u8 param2);
void sub_80A5E8C(CreditsRelated150 *strc150, u8 param1, u8 param2);
void sub_80A5EF0(CreditsRelated150 *strc150, u8 param1, u8 param2);
void Task_150_80A6090(void);
void Task_150_80A60F0(void);
void Task_150_80A619C(void);
void Task_150_80A6208(void);
bool32 sub_80A6370(CreditsRelated150 *strc150);
bool32 sub_80A63FC(CreditsRelated150 *strc150);
void Task_150_PreCreditsCutsceneTrueEndingInit(void);
void Task_150_80A65C8(void);
void Task_248_80A664C(void);
void Task_248_80A6700(void);
void Task_150_80A6768(void);
void Task_150_80A690C(void);
void Task_150_80A69E4(void);
bool32 sub_80A6A5C(CreditsRelated248 *strc248); // TODO: called with both strc150 and strc248. Shared base?
bool32 sub_80A6BDC(CreditsRelated248 *strc248);
bool32 sub_80A6CE0(CreditsRelated248 *strc248); // Unused. Maybe inline?
bool32 sub_80A6DD0(CreditsRelated150 *strc150); //
void sub_80A6EBC(CreditsRelated12C *strc12C); //
void Task_12C_80A70B8(void);
void Task_12C_80A714C(void);
void sub_80A71E8(CreditsRelated12C *strc12C, Vec2_u16 *param1); // TODO: maybe not u16, maybe not even Vec2_u16?
void sub_80A71E8(CreditsRelated12C *strc12C, Vec2_u16 *param1); // TODO: maybe not u16, maybe not even Vec2_u16?
void sub_80A72F4(CreditsRelated12C *strc12C, Vec2_u16 *param1); // TODO: maybe not u16, maybe not even Vec2_u16?
void TaskDestructor_80A7BFC(Task *t);
void Task_248_80A7E24(void);

#if M2C
void Task_248_80A4DDC(CreditsRelated248 *strc248);
void Task_248_80A4E38(CreditsRelated248 *strc248);
void Task_248_80A4EDC(CreditsRelated248 *strc248);
void Task_248_80A4F94(CreditsRelated248 *strc248);
void Task_248_80A5050(CreditsRelated248 *strc248);
void Task_248_80A50FC(CreditsRelated248 *strc248);
void Task_248_80A51B4(CreditsRelated248 *strc248);
void Task_248_80A52DC(CreditsRelated248 *strc248);
void Task_150_80A6090(CreditsRelated150 *strc150);
void Task_150_80A60F0(CreditsRelated150 *strc150);
void Task_150_80A619C(CreditsRelated150 *strc150);
void Task_150_80A6208(CreditsRelated150 *strc150);
void Task_150_PreCreditsCutsceneTrueEndingInit(CreditsRelated248 *strc248);
void Task_150_80A65C8(CreditsRelated150 *strc150);
void Task_248_80A664C(CreditsRelated248 *strc248);
void Task_248_80A6700(CreditsRelated248 *strc248);
void Task_150_80A6768(CreditsRelated150 *strc150);
void Task_150_80A690C(CreditsRelated150 *strc150);
void Task_150_80A69E4(CreditsRelated150 *strc150);
void Task_12C_80A70B8(CreditsRelated12C *strc12C);
void Task_12C_80A714C(CreditsRelated12C *strc12C);
void Task_248_80A7E24(CreditsRelated12C *strc12C);
#endif

u8 *sub_80A45B4(u8 *param0, u8 *vram)
{
    Task *t;
    CreditsRelated248 *strc248;
    u8 var_r3;

    if (*param0 == 0x10) {
        t = TaskCreate(Task_248_80A7E24, sizeof(CreditsRelated248), 0x100U, 0U, TaskDestructor_80A7BFC);
    } else {
        t = TaskCreate(Task_248_80A4DDC, sizeof(CreditsRelated248), 0x100U, 0U, TaskDestructor_80A7BFC);
    }

    strc248 = TASK_DATA(t);
    strc248->initArg0 = param0;
    strc248->unk16 = 0;
    strc248->unk18 = 0;
    strc248->unk1A = 0;
    strc248->unk40.x = 0;
    strc248->unk40.y = 0;

    for (var_r3 = 0; var_r3 < ARRAY_COUNT(strc248->unk28); var_r3++) {
        strc248->unk28[var_r3].x = 0;
        strc248->unk28[var_r3].y = 0;
    }

    strc248->unk20.x = Q(DISPLAY_WIDTH);
    strc248->unk20.y = Q(0);
    strc248->vram1C = vram;

    sub_80A4678(strc248);
    sub_80A4D6C(strc248);

    gBgSprites_Unknown1[1] = 0x12;
    gBgSprites_Unknown2[1][0] = 0;
    gBgSprites_Unknown2[1][1] = 0;
    gBgSprites_Unknown2[1][2] = 0xFF;
    gBgSprites_Unknown2[1][3] = 0x40;

    return strc248->vram1C;
}

#if 0
void sub_80A4678(CreditsRelated248 *strc248)
{
    s32 spC;
    s32 sp10;
    s32 sp14;
    s32 *sp18;
    Sprite *temp_r4;
    Vec2_32 *temp_r3;
    Vec2_32 *var_r2;
    s32 *temp_r3_2;
    s32 temp_r2_2;
    s32 var_r1;
    u32 temp_r2;
    u8 *temp_r0;
    u8 *temp_r0_2;
    u8 var_r0;
    u8 var_r7;
    u8 var_r7_2;
    u8 var_r8;
    u8 var_r8_2;
    void **temp_r1;
    void *temp_r2_3;

    temp_r2 = gPlayers->unk2A << 0x1C;
    if ((u32)(temp_r2 >> 0x1C) > 5U) {
        spC = (s32)gCharacterSelectOrderLUT.unk0;
        var_r0 = gCharacterSelectOrderLUT.unk2;
    } else {
        spC = (s32)(&gCharacterSelectOrderLUT)[temp_r2 >> 0x1C];
        var_r0 = (&gCharacterSelectOrderLUT)[(u32)(gPlayers->unk17A << 0x1C) >> 0x1C];
    }
    sp10 = (s32)var_r0;
    var_r8 = 0;
    var_r7 = 0;
loop_4:
    if (var_r7 == spC) {

    } else if (var_r7 == sp10) {

    } else {
        temp_r4 = *((var_r8 * 4) + sp);
        (&strc248->filler0[6])[var_r8] = var_r7;
        temp_r4->tiles = strc248->vram1C;
        temp_r2_2 = var_r7 * 2;
        strc248->vram1C += *(&gUnknown_080D99D0 + temp_r2_2) << 5;
        temp_r1 = (var_r7 * 4) + &gUnknown_080D9B5C;
        temp_r4->anim = (*temp_r1)->unk0;
        temp_r4->variant = (*temp_r1)->unk2;
        temp_r4->prevVariant = 0xFF;
        if (*strc248->unk0 == 0x10) {
            temp_r3 = strc248->unk28;
            temp_r3[var_r8].x = *(&gUnknown_080D9B7E + temp_r2_2) << 8;
            var_r1 = var_r8 * 8;
            var_r2 = temp_r3;
        } else {
            var_r1 = var_r8 * 8;
            var_r2 = strc248->unk28;
            var_r2[var_r8].x = (*(var_r7 + &gUnknown_080D9B79) << 8) + 0x400;
        }
        temp_r3_2 = var_r2 + var_r1;
        temp_r4->x = (s16)((s32)*temp_r3_2 >> 8);
        temp_r4->y = 0;
        temp_r4->oamFlags = 0x240;
        temp_r4->animCursor = 0;
        temp_r4->qAnimDelay = 0;
        temp_r4->animSpeed = 0x10;
        temp_r4->palId = var_r7;
        if (var_r7 == 4) {
            temp_r4->palId = 5;
        }
        temp_r4->frameFlags = 0x400;
        sp14 = 0;
        sp18 = temp_r3_2;
        UpdateSpriteAnimation(temp_r4);
        if (var_r7 == 3) {
            strc248->filler0[5] = var_r8;
            temp_r0 = strc248->vram1C;
            strc248->spr48.tiles = temp_r0;
            strc248->vram1C = temp_r0 + 0x120;
            strc248->spr48.anim = gUnknown_080D9B5C.unk14->unk0;
            strc248->spr48.variant = gUnknown_080D9B5C.unk14->unk2;
            strc248->spr48.prevVariant = 0xFF;
            strc248->spr48.x = ((s32)*temp_r3_2 >> 8) - 0x12;
            strc248->spr48.y = 0;
            strc248->spr48.oamFlags = 0x280;
            strc248->spr48.animCursor = 0;
            strc248->spr48.qAnimDelay = 0;
            strc248->spr48.animSpeed = 0x10;
            strc248->spr48.palId = 0;
            strc248->spr48.frameFlags = 0x400;
            UpdateSpriteAnimation(&strc248->spr48);
        }
        var_r8 += 1;
    }
    var_r7 += 1;
    if ((u32)var_r7 <= 4U) {
        goto loop_4;
    }
    var_r8_2 = 0;
    var_r7_2 = 0;
    do {
        if ((var_r7_2 != spC) && (var_r7_2 != sp10)) {
            temp_r2_3 = *((var_r8_2 * 4) + sp);
            (&strc248->filler0[9])[var_r8_2] = var_r7_2;
            temp_r2_3->unk0 = (u8 *)strc248->vram1C;
            strc248->vram1C += *((var_r8_2 * 2) + &gUnknown_080D99D0) << 5;
            temp_r2_3->unk14 = 0x240;
            temp_r2_3->unkE = 0;
            temp_r2_3->unk16 = 0;
            temp_r2_3->unk1C = 0x10;
            temp_r2_3->unk1F = var_r7_2;
            if (var_r7_2 == 4) {
                temp_r2_3->unk1F = 5U;
            }
            temp_r2_3->unk8 = 0x400;
            if (var_r7_2 == 3) {
                temp_r0_2 = strc248->vram1C;
                strc248->spr70.tiles = temp_r0_2;
                strc248->vram1C = temp_r0_2 + 0x120;
                strc248->spr70.anim = gUnknown_080D9B5C.unk14->unk0;
                strc248->spr70.variant = gUnknown_080D9B5C.unk14->unk2;
                strc248->spr70.prevVariant = 0xFF;
                strc248->spr70.oamFlags = 0x280;
                strc248->spr70.animCursor = 0;
                strc248->spr70.qAnimDelay = 0;
                strc248->spr70.animSpeed = 0x10;
                strc248->spr70.palId = 0;
                strc248->spr70.frameFlags = 0x400;
                UpdateSpriteAnimation(&strc248->spr70);
            }
            var_r8_2 += 1;
        }
        var_r7_2 += 1;
    } while ((u32)var_r7_2 <= 4U);
}

void sub_80A490C(CreditsRelated248 *strc248, u8 param1, u8 param2)
{
    s32 spC;
    s32 sp10;
    s32 sp14;
    Sprite *temp_r4;
    Sprite *var_r1;
    s32 *temp_r1_2;
    s32 temp_r2_2;
    u32 temp_r2;
    u8 temp_r1;
    u8 var_r0;
    u8 var_r5;
    u8 var_r8;

    temp_r1 = param1;
    spC = (s32)param2;
    temp_r2 = gPlayers->unk2A << 0x1C;
    if ((u32)(temp_r2 >> 0x1C) > 5U) {
        sp10 = (s32)gCharacterSelectOrderLUT.unk0;
        var_r0 = gCharacterSelectOrderLUT.unk2;
    } else {
        sp10 = (s32)(&gCharacterSelectOrderLUT)[temp_r2 >> 0x1C];
        var_r0 = (&gCharacterSelectOrderLUT)[(u32)(gPlayers->unk17A << 0x1C) >> 0x1C];
    }
    sp14 = (s32)var_r0;
    if (spC != 0) { }
    var_r8 = 0;
    var_r5 = 0;
    do {
        if ((var_r5 != sp10) && (var_r5 != sp14)) {
            temp_r4 = *((var_r8 * 4) + sp);
            temp_r1_2 = (var_r5 * 4) + &gUnknown_080D9B5C;
            temp_r2_2 = temp_r1 * 8;
            temp_r4->anim = *(temp_r2_2 + *temp_r1_2);
            temp_r4->variant = (temp_r2_2 + *temp_r1_2)->unk2;
            temp_r4->prevVariant = 0xFF;
            temp_r4->oamFlags = 0x240;
            temp_r4->animCursor = 0;
            temp_r4->qAnimDelay = 0;
            temp_r4->animSpeed = 0x10;
            temp_r4->palId = 0;
            temp_r4->frameFlags = 0x1000;
            if ((u32) * *strc248 <= 0x13U) {
                if ((u32)(u8)(temp_r1 - 3) > 1U) {
                    if ((u32)(u8)(var_r5 - 2) <= 1U) {
                        temp_r4->frameFlags = 0x400 | 0x1000;
                    } else {
                        goto block_13;
                    }
                }
            } else {
            block_13:
                temp_r4->frameFlags = 0x1000;
            }
            if (var_r5 == 3) {
                var_r1 = &strc248->spr48;
                if (spC != 0) {
                    var_r1 += 0x28;
                }
                var_r1->anim = *(temp_r2_2 + gUnknown_080D9B5C.unk14);
                var_r1->variant = (temp_r2_2 + gUnknown_080D9B5C.unk14)->unk2;
                var_r1->prevVariant = 0xFF;
                var_r1->oamFlags = 0x280;
                var_r1->animCursor = 0;
                var_r1->qAnimDelay = 0;
                var_r1->animSpeed = 0x10;
                var_r1->palId = 0;
                var_r1->frameFlags = 0;
                UpdateSpriteAnimation(var_r1);
            }
            UpdateSpriteAnimation(temp_r4);
            var_r8 += 1;
        }
        var_r5 += 1;
    } while ((u32)var_r5 <= 4U);
}

void sub_80A4A88(CreditsRelated248 *strc248, u8 param1, u8 param2)
{
    s32 spC;
    s32 sp10;
    s32 sp14;
    Sprite *temp_r4;
    Sprite *var_r1;
    s32 *temp_r1;
    s32 temp_r2_2;
    u32 temp_r2;
    u8 var_r0;
    u8 var_r5;
    u8 var_r8;

    spC = (s32)param1;
    sp10 = (s32)param2;
    temp_r2 = gPlayers->unk2A << 0x1C;
    if ((u32)(temp_r2 >> 0x1C) > 5U) {
        sp14 = (s32)gCharacterSelectOrderLUT.unk0;
        var_r0 = gCharacterSelectOrderLUT.unk2;
    } else {
        sp14 = (s32)(&gCharacterSelectOrderLUT)[temp_r2 >> 0x1C];
        var_r0 = (&gCharacterSelectOrderLUT)[(u32)(gPlayers->unk17A << 0x1C) >> 0x1C];
    }
    if (sp10 != 0) { }
    var_r8 = 0;
    var_r5 = 0;
    do {
        if ((var_r5 != sp14) && (var_r5 != var_r0)) {
            temp_r4 = *((var_r8 * 4) + sp);
            temp_r1 = (var_r5 * 4) + &gUnknown_080D9B5C;
            temp_r2_2 = spC * 8;
            temp_r4->anim = *(temp_r2_2 + *temp_r1);
            temp_r4->variant = (temp_r2_2 + *temp_r1)->unk2;
            temp_r4->prevVariant = 0xFF;
            temp_r4->oamFlags = 0x240;
            temp_r4->animCursor = 0;
            temp_r4->qAnimDelay = 0;
            temp_r4->animSpeed = 0x10;
            temp_r4->palId = var_r5;
            if (var_r5 == 4) {
                temp_r4->palId = 5;
            }
            temp_r4->frameFlags = 0x1000;
            if (((u32) * *strc248 <= 0x13U) && ((u32)var_r5 <= 1U)) {
                temp_r4->frameFlags = 0x400 | 0x1000;
            } else {
                temp_r4->frameFlags = 0x1000;
            }
            if (var_r5 == 3) {
                var_r1 = &strc248->spr48;
                if (sp10 != 0) {
                    var_r1 += 0x28;
                }
                var_r1->anim = *(temp_r2_2 + gUnknown_080D9B5C.unk14);
                var_r1->variant = (temp_r2_2 + gUnknown_080D9B5C.unk14)->unk2;
                var_r1->prevVariant = 0xFF;
                var_r1->oamFlags = 0x280;
                var_r1->animCursor = 0;
                var_r1->qAnimDelay = 0;
                var_r1->animSpeed = 0x10;
                var_r1->palId = 0;
                var_r1->frameFlags = 0;
                UpdateSpriteAnimation(var_r1);
            }
            UpdateSpriteAnimation(temp_r4);
            var_r8 += 1;
        }
        var_r5 += 1;
    } while ((u32)var_r5 <= 4U);
}

void sub_80A4BF8(CreditsRelated248 *strc248, u8 param1, u8 param2, u8 param3)
{
    Sprite *temp_r5;
    Sprite *var_r3_2;
    s32 *temp_r1;
    s32 temp_r2_3;
    s8 temp_r0;
    u32 temp_r2_2;
    u8 temp_r2;
    u8 temp_r6;
    u8 var_r1;
    u8 var_r3;
    u8 var_r4;
    u8 var_r5;

    temp_r2 = param2;
    temp_r6 = param3;
    var_r4 = 0xFF;
    temp_r2_2 = gPlayers->unk2A << 0x1C;
    if ((u32)(temp_r2_2 >> 0x1C) > 5U) {
        var_r5 = gCharacterSelectOrderLUT.unk0;
        var_r3 = gCharacterSelectOrderLUT.unk2;
    } else {
        var_r5 = (&gCharacterSelectOrderLUT)[temp_r2_2 >> 0x1C];
        var_r3 = (&gCharacterSelectOrderLUT)[(u32)(gPlayers->unk17A << 0x1C) >> 0x1C];
    }
    if (temp_r6 == var_r3) {
        return;
    }
    if (temp_r2 != 0) { }
    var_r1 = 0;
    do {
        if ((&strc248->filler0[9])[var_r1] == temp_r6) {
            var_r4 = var_r1;
        }
        var_r1 += 1;
    } while ((u32)var_r1 <= 2U);
    temp_r0 = (s8)var_r4;
    if (((s32)temp_r0 >= 0) && (temp_r6 != var_r5) && (temp_r6 != var_r3)) {
        temp_r5 = *((temp_r0 * 4) + sp);
        temp_r1 = (temp_r6 * 4) + &gUnknown_080D9B5C;
        temp_r2_3 = param1 * 8;
        temp_r5->anim = *(temp_r2_3 + *temp_r1);
        temp_r5->variant = (temp_r2_3 + *temp_r1)->unk2;
        temp_r5->prevVariant = 0xFF;
        temp_r5->oamFlags = 0x240;
        temp_r5->animCursor = 0;
        temp_r5->qAnimDelay = 0;
        temp_r5->animSpeed = 0x10;
        temp_r5->palId = temp_r6;
        if (temp_r6 == 4) {
            temp_r5->palId = 5;
        }
        temp_r5->frameFlags = 0x1000;
        if (((u32) * *strc248 <= 0x13U) && ((u32)temp_r6 <= 1U)) {
            temp_r5->frameFlags = 0x400 | 0x1000;
        } else {
            temp_r5->frameFlags = 0x1000;
        }
        if (temp_r6 == 3) {
            var_r3_2 = &strc248->spr48;
            if (temp_r2 != 0) {
                var_r3_2 += 0x28;
            }
            var_r3_2->anim = *(temp_r2_3 + gUnknown_080D9B5C.unk14);
            var_r3_2->variant = (temp_r2_3 + gUnknown_080D9B5C.unk14)->unk2;
            var_r3_2->prevVariant = 0xFF;
            var_r3_2->oamFlags = 0x280;
            var_r3_2->animCursor = 0;
            var_r3_2->qAnimDelay = 0;
            var_r3_2->animSpeed = 0x10;
            var_r3_2->palId = 0;
            var_r3_2->frameFlags = 0;
            UpdateSpriteAnimation(var_r3_2);
        }
        UpdateSpriteAnimation(temp_r5);
    }
}

void sub_80A4D6C(CreditsRelated248 *strc248)
{
    gBgCntRegs[1] = 0x4501;
    gBgScrollRegs[1][0] = (s16)((s32)strc248->unk20 >> 8);
    gBgScrollRegs[1][1] = ((s32)strc248->unk24 >> 8) + 0x50;
    strc248->bgD8.graphics.dest = (void *)0x06000000;
    strc248->bgD8.graphics.anim = 0;
    strc248->bgD8.layoutVram = (u16 *)0x06002800;
    strc248->bgD8.unk18 = 0;
    strc248->bgD8.unk1A = 0;
    strc248->bgD8.tilemapId = 0x131;
    strc248->bgD8.unk1E = 0;
    strc248->bgD8.unk20 = 0;
    strc248->bgD8.unk22 = 0;
    strc248->bgD8.unk24 = 0;
    strc248->bgD8.targetTilesX = 0x20;
    strc248->bgD8.targetTilesY = 0x20;
    strc248->bgD8.paletteOffset = 0;
    strc248->bgD8.flags = 1;
    DrawBackground(&strc248->bgD8);
}

void Task_248_80A4DDC(CreditsRelated248 *strc248)
{
    gWinRegs->unk0 = 0xF0;
    gWinRegs[2] = 0xA0;
    gWinRegs[4] = 0x3F;
    gWinRegs[5] = 0x1F;
    gBldRegs.bldCnt = 0x3FFF;
    gBldRegs.bldY = 0;
    gDispCnt |= 0x2200;
    gCurTask->main = Task_248_80A4E38;
}

void Task_248_80A4E38(CreditsRelated248 *strc248)
{
    s32 temp_r1;
    s32 var_r2;
    u8 temp_r0;

    UpdateBgAnimationTiles(&strc248->bgD8);
    sub_80A5698(strc248);
    temp_r1 = strc248->unk20;
    if (temp_r1 > 0x400) {
        temp_r0 = *strc248->unk0;
        switch (temp_r0) { /* irregular */
            case 6:
                var_r2 = 0xFFFFFE00;
            block_7:
                strc248->unk20 = (s32)(temp_r1 + var_r2);
                break;
            case 7:
                var_r2 = 0xFFFFFF00;
                goto block_7;
            default:
                var_r2 = 0xFFFFFDF0;
                goto block_7;
        }
        if ((s32)strc248->unk20 <= 0x3FF) {
            strc248->unk20 = 0x400;
        }
    }
    gBgScrollRegs[1][0] = (s16)((s32)strc248->unk20 >> 8);
    gBgScrollRegs[1][1] = ((s32)strc248->unk24 >> 8) + 0x50;
    if (*strc248->unk0 == 9) {
        sub_80A490C(strc248, 1U, 1U);
        gCurTask->main = Task_248_80A7C00;
    }
}

void Task_248_80A4EDC(CreditsRelated248 *strc248)
{
    u8 temp_r3;

    UpdateBgAnimationTiles(&strc248->bgD8);
    temp_r3 = strc248->filler0[0x18];
    if (temp_r3 == 0) {
        gDispCnt |= 0x2000;
        gWinRegs->unk0 = 0x8A5F;
        gWinRegs[2] = 0x9F;
        gWinRegs[1] = 0x5F8B;
        gWinRegs[3] = 0xD1A0;
        gWinRegs[4] = 0x1E3F;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3FBF;
        gBldRegs.bldY = (u16)temp_r3;
        strc248->unk1A = (u16)temp_r3;
        strc248->filler0[0x18] = 1;
        m4aSongNumStart(0x29CU);
    }
    if ((u32)gBldRegs.bldY <= 0xFU) {
        gBldRegs.bldY = (u16)((u16)strc248->unk1A >> 8);
        strc248->unk1A = (u16)(strc248->unk1A + 0x100);
        return;
    }
    gBldRegs.bldY = 0x10;
    strc248->filler0[4] = 0;
    gCurTask->main = Task_248_80A4F94;
}

void Task_248_80A4F94(CreditsRelated248 *strc248)
{
    u32 temp_r0;

    UpdateBgAnimationTiles(&strc248->bgD8);
    if (strc248->filler0[0x18] != 0) {
        gDispCnt |= 0x4000;
        gWinRegs->unk0 = 0x8A5F;
        gWinRegs[2] = 0x9F;
        gWinRegs[1] = 0x5F8B;
        gWinRegs[3] = 0xD1A0;
        gWinRegs[4] = 0x3E00;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x2042;
        gBldRegs.bldY = 0;
        strc248->unk1A = 0U;
        strc248->filler0[0x18] = 0;
    }
    temp_r0 = (u16)strc248->unk1A >> 8;
    if (temp_r0 <= 0x10U) {
        strc248->filler0[4] = (u8)temp_r0;
        gBldRegs.bldAlpha = *((strc248->filler0[4] * 2) + &gUnknown_080D9B88);
        strc248->unk1A = (u16)(strc248->unk1A + 0x200);
        return;
    }
    strc248->unk1A = 0x1000U;
    gCurTask->main = Task_248_80A5050;
}

void Task_248_80A5050(CreditsRelated248 *strc248)
{
    u8 *temp_r1;
    void (*var_r0)(CreditsRelated248 *);

    if (0x10000 & gFlags) {
        CopyBgPaletteMasked(&gUnknown_080DA084, 0U, 0x100U);
    } else {
        (void *)0x040000D4->unk0 = &gUnknown_080DA084;
        (void *)0x040000D4->unk4 = gBgPalette;
        (void *)0x040000D4->unk8 = 0x80000100;
        gFlags |= 1;
    }
    temp_r1 = strc248->unk0;
    if (*temp_r1 == 0x10) {
        strc248->filler0[0x18] = 1;
        strc248->unk28[0].y += 0x100;
        strc248->unk28[1].y += 0x100;
        strc248->unk28[2].y += 0x100;
        var_r0 = Task_248_80A51B4;
    } else {
        *temp_r1 = 0xD;
        var_r0 = Task_248_80A50FC;
    }
    gCurTask->main = var_r0;
}

void Task_248_80A50FC(CreditsRelated248 *strc248)
{
    u16 temp_r0;
    u32 temp_r0_2;
    u8 temp_r3;

    temp_r0 = gCurTask->data;
    UpdateBgAnimationTiles(temp_r0 + 0xD8);
    temp_r3 = temp_r0->unk18;
    if (temp_r3 == 0) {
        gDispCnt |= 0x4000;
        gWinRegs->unk0 = 0x8A5F;
        gWinRegs[2] = 0x9F;
        gWinRegs[1] = 0x5F8B;
        gWinRegs[3] = 0xD1A0;
        gWinRegs[4] = 0x3E00;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x2042;
        gBldRegs.bldY = (u16)temp_r3;
        temp_r0->unk18 = 1U;
    }
    temp_r0_2 = (u16)temp_r0->unk1A >> 8;
    if (temp_r0_2 != 0) {
        temp_r0->unk4 = (u8)temp_r0_2;
        gBldRegs.bldAlpha = *((temp_r0->unk4 * 2) + &gUnknown_080D9B88);
        temp_r0->unk1A = (u16)(temp_r0->unk1A + 0xFFFFFE00);
        return;
    }
    temp_r0->unk1A = (u16)temp_r0_2;
    gCurTask->main = Task_248_80A51B4;
}

void Task_248_80A51B4(CreditsRelated248 *strc248)
{
    s32 var_r2;
    u16 temp_r0;
    void (*var_r0)(?, s32, ? *);

    temp_r0 = gCurTask->data;
    UpdateBgAnimationTiles(temp_r0 + 0xD8);
    if (*temp_r0->unk0 == 0x10) {
        sub_80A5698((CreditsRelated248 *)temp_r0);
    }
    if (temp_r0->unk18 != 0) {
        gDispCnt |= 0x2000;
        if (*temp_r0->unk0 == 0x10) {
            gWinRegs->unk0 = 0xF0;
            gWinRegs[2] = 0xA0;
            gWinRegs[1] = 0;
            gWinRegs[3] = 0;
        } else {
            gWinRegs->unk0 = 0x8A5F;
            gWinRegs[2] = 0x9F;
            gWinRegs[1] = 0x5F8B;
            gWinRegs[3] = 0xD1A0;
        }
        gWinRegs[4] = 0x1E3F;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3FBF;
        gBldRegs.bldY = 0x10;
        temp_r0->unk1A = 0x1000U;
        temp_r0->unk18 = 0U;
    }
    if (gBldRegs.bldY != 0) {
        if (*temp_r0->unk0 == 0x10) {
            var_r2 = 0xFFFFFF00;
        } else {
            var_r2 = 0xFFFFFE00;
        }
        temp_r0->unk1A = (u16)(var_r2 + temp_r0->unk1A);
        gBldRegs.bldY = (u16)((u16)temp_r0->unk1A >> 8);
        return;
    }
    temp_r0->unk16 = (u16)gBldRegs.bldY;
    if (*temp_r0->unk0 == 0x10) {
        var_r0 = Task_248_80A7D7C;
    } else {
        sub_80A490C((CreditsRelated248 *)temp_r0, 3U, 0U);
        *temp_r0->unk0 = 0xE;
        var_r0 = Task_248_80A7D00;
    }
    gCurTask->main = var_r0;
}

void Task_248_80A52DC(CreditsRelated248 *strc248)
{
    s32 temp_r0_4;
    s32 temp_r0_5;
    s32 temp_r0_6;
    u16 temp_r0_2;
    u16 temp_r0_3;
    u16 temp_r1;
    u32 var_r7;
    u8 temp_r0;
    u8 temp_r1_2;
    u8 temp_r1_3;
    u8 temp_r1_4;
    u8 temp_r1_5;
    u8 temp_r1_6;
    u8 temp_r1_7;
    u8 temp_r2;
    u8 temp_r2_2;
    u8 temp_r2_3;
    u8 var_r2;
    u8 var_r5;
    u8 var_r8;
    u8 var_sb;

    temp_r1 = gCurTask->data;
    var_r7 = 0;
    var_r5 = 0xFF;
    var_r8 = 0xFF;
    var_sb = 0xFF;
    var_r2 = 0;
    do {
        temp_r0 = *(temp_r1 + 9 + var_r2);
        if (temp_r0 == 1) {
            var_r5 = var_r2;
        }
        if (temp_r0 == 4) {
            var_r8 = var_r2;
        }
        if (temp_r0 == 3) {
            var_sb = var_r2;
        }
        var_r2 += 1;
    } while ((u32)var_r2 <= 2U);
    sub_80A5824((CreditsRelated248 *)temp_r1);
    UpdateBgAnimationTiles(temp_r1 + 0xD8);
    temp_r0_2 = temp_r1->unk16;
    if ((u32)temp_r0_2 <= 0x59U) {
        temp_r1->unk16 = (u16)(temp_r0_2 + 1);
    }
    temp_r0_3 = temp_r1->unk16;
    switch (temp_r0_3) { /* irregular */
        case 0x9:
            if ((s32)(var_r5 << 0x18) >= 0) {
                temp_r1_2 = var_r5;
                *(temp_r1 + 0xC + temp_r1_2) = 0;
                *(temp_r1 + 0x10 + (temp_r1_2 * 2)) = 0;
                sub_80A4BF8((CreditsRelated248 *)temp_r1, 5U, 1U, 1U);
            }
            break;
        case 0x3B:
            if ((s32)(var_r8 << 0x18) >= 0) {
                temp_r1_3 = var_r8;
                *(temp_r1 + 0xC + temp_r1_3) = 0;
                *(temp_r1 + 0x10 + (temp_r1_3 * 2)) = 0;
                sub_80A4BF8((CreditsRelated248 *)temp_r1, 5U, 1U, 4U);
            }
            break;
        case 0x59:
            if ((s32)(var_sb << 0x18) >= 0) {
                temp_r1_4 = var_sb;
                *(temp_r1 + 0xC + temp_r1_4) = 0;
                *(temp_r1 + 0x10 + (temp_r1_4 * 2)) = 0;
                sub_80A4BF8((CreditsRelated248 *)temp_r1, 5U, 1U, 3U);
            }
            break;
    }
    if ((u32)temp_r1->unk16 > 9U) {
        if (((s32)(var_r5 << 0x18) < 0) || (sub_80A555C((CreditsRelated248 *)temp_r1) == 1)) {
            var_r7 = 0x01000000U >> 0x18;
        }
        temp_r2 = var_r5;
        temp_r0_4 = temp_r1 + 0xC;
        if ((*(temp_r0_4 + temp_r2) == 3) && (*(temp_r1 + 0x10 + (temp_r2 * 2)) == 0)) {
            sub_80A4BF8((CreditsRelated248 *)temp_r1, 6U, 1U, 1U);
        }
        temp_r1_5 = var_r5;
        if ((*(temp_r0_4 + temp_r1_5) == 6) && (*(temp_r1 + 0x10 + (temp_r1_5 * 2)) == 0)) {
            sub_80A4BF8((CreditsRelated248 *)temp_r1, 7U, 1U, 1U);
        }
    }
    if ((u32)temp_r1->unk16 > 0x3BU) {
        if (((s32)(var_r8 << 0x18) < 0) || (sub_80A555C((CreditsRelated248 *)temp_r1) == 1)) {
            var_r7 = (u32)(u8)(var_r7 + 1);
        }
        temp_r2_2 = var_r8;
        temp_r0_5 = temp_r1 + 0xC;
        if ((*(temp_r0_5 + temp_r2_2) == 3) && (*(temp_r1 + 0x10 + (temp_r2_2 * 2)) == 0)) {
            sub_80A4BF8((CreditsRelated248 *)temp_r1, 6U, 1U, 4U);
        }
        temp_r1_6 = var_r8;
        if ((*(temp_r0_5 + temp_r1_6) == 6) && (*(temp_r1 + 0x10 + (temp_r1_6 * 2)) == 0)) {
            sub_80A4BF8((CreditsRelated248 *)temp_r1, 7U, 1U, 4U);
        }
    }
    if ((u32)temp_r1->unk16 > 0x59U) {
        if (((s32)(var_sb << 0x18) < 0) || (sub_80A555C((CreditsRelated248 *)temp_r1) == 1)) {
            var_r7 = (u32)(u8)(var_r7 + 1);
        }
        temp_r2_3 = var_sb;
        temp_r0_6 = temp_r1 + 0xC;
        if ((*(temp_r0_6 + temp_r2_3) == 3) && (*(temp_r1 + 0x10 + (temp_r2_3 * 2)) == 0)) {
            sub_80A4BF8((CreditsRelated248 *)temp_r1, 6U, 1U, 3U);
        }
        temp_r1_7 = var_sb;
        if ((*(temp_r0_6 + temp_r1_7) == 6) && (*(temp_r1 + 0x10 + (temp_r1_7 * 2)) == 0)) {
            sub_80A4BF8((CreditsRelated248 *)temp_r1, 7U, 1U, 3U);
        }
    }
    if (var_r7 == 3) {
        *temp_r1->unk0 = 0x16;
    }
    if (gBldRegs.bldY == 0x10) {
        TaskDestroy(gCurTask);
    }
}

u32 sub_80A555C(CreditsRelated248 *strc248)
{
    Vec2_32 *temp_r3_2;
    s32 temp_r2;
    u16 *temp_r4;
    u16 temp_r0;
    u8 *temp_r3;
    u8 temp_r0_2;
    u8 temp_r5;

    temp_r5 = M2C_ERROR(/* Read from unset register $r1 */);
    temp_r4 = &strc248->filler0[0x10] + (temp_r5 * 2);
    temp_r0 = *temp_r4 + 1;
    *temp_r4 = temp_r0;
    temp_r3 = &(&strc248->filler0[0xC])[temp_r5];
    if ((u32)temp_r0 > (u32) * ((*temp_r3 * 2) + &gUnknown_080D9BB2)) {
        *temp_r4 = 0;
        temp_r0_2 = *temp_r3 + 1;
        *temp_r3 = temp_r0_2;
        if ((u32)temp_r0_2 > 6U) {
            *temp_r3 = 6;
        }
    }
    temp_r3_2 = &strc248->unk28[temp_r5];
    temp_r2 = temp_r3_2->x;
    if (temp_r2 <= 0xFFFFD800) {
        return 1U;
    }
    temp_r3_2->x = temp_r2 - (*((&strc248->filler0[0xC])[temp_r5] + &gUnknown_080D9BAA) << 8);
    return 0U;
}

u32 sub_80A55DC(CreditsRelated248 *strc248)
{
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    u32 var_r6;
    u8 var_r4;

    var_r6 = 0;
    temp_r0 = strc248->unk24;
    if ((temp_r0 > 0) || (temp_r0_2 = temp_r0 + 0x40, strc248->unk24 = temp_r0_2, (temp_r0_2 >= 0))) {
        strc248->unk24 = 0;
        var_r6 = 1;
    }
    gBgScrollRegs[1][0] = (s16)((s32)strc248->unk20 >> 8);
    gBgScrollRegs[1][1] = ((s32)strc248->unk24 >> 8) + 0x50;
    temp_r0_3 = strc248->unk44 - 0x40;
    strc248->unk44 = temp_r0_3;
    if (temp_r0_3 <= 0) {
        strc248->unk44 = 0;
    }
    var_r4 = 0;
    do {
        *(&strc248->unk28[0].y + (var_r4 * 8)) = strc248->unk44 - strc248->unk24;
        var_r4 += 1;
    } while ((u32)var_r4 <= 2U);
    return var_r6;
}

u32 sub_80A563C(CreditsRelated248 *strc248)
{
    s32 temp_r0;
    s32 temp_r0_2;
    u32 var_r6;
    u8 var_r4;

    var_r6 = 0;
    temp_r0 = strc248->unk24;
    if ((temp_r0 < 0xFFFFCC00) || (temp_r0_2 = temp_r0 - 0x40, strc248->unk24 = temp_r0_2, (temp_r0_2 <= 0xFFFFCC00))) {
        strc248->unk24 = -0x3400;
        var_r6 = 1;
    }
    gBgScrollRegs[1][0] = (s16)((s32)strc248->unk20 >> 8);
    gBgScrollRegs[1][1] = ((s32)strc248->unk24 >> 8) + 0x50;
    strc248->unk44 = (s32)(strc248->unk44 + 0x20);
    var_r4 = 0;
    do {
        *(&strc248->unk28[0].y + (var_r4 * 8)) = strc248->unk44 - strc248->unk24;
        var_r4 += 1;
    } while ((u32)var_r4 <= 2U);
    return var_r6;
}

u32 sub_80A5698(CreditsRelated248 *strc248)
{
    Sprite *temp_r4_2;
    Sprite *temp_r4_3;
    Vec2_32 *temp_r4;
    s32 *temp_r0;
    s32 temp_r0_3;
    u16 temp_r1;
    u16 temp_r2_2;
    u32 temp_r2;
    u32 temp_r5;
    u8 *temp_r0_2;
    u8 var_r1;
    u8 var_r2;
    u8 var_r7;

    temp_r2 = gPlayers->unk2A << 0x1C;
    if ((u32)(temp_r2 >> 0x1C) > 5U) {
        var_r2 = gCharacterSelectOrderLUT.unk0;
        var_r1 = gCharacterSelectOrderLUT.unk2;
    } else {
        var_r2 = (&gCharacterSelectOrderLUT)[temp_r2 >> 0x1C];
        var_r1 = (&gCharacterSelectOrderLUT)[(u32)(gPlayers->unk17A << 0x1C) >> 0x1C];
    }
    temp_r4 = strc248->unk28;
    temp_r0 = &strc248->unk28[0].y;
    if ((var_r2 != 3) && (var_r1 != 3)) {
        temp_r4_2 = &strc248->spr48;
        strc248->spr48.x = ((s32)temp_r4[strc248->filler0[5]].x >> 8) - ((s32)strc248->unk20 >> 8);
        strc248->spr48.y = ((s32) * ((strc248->filler0[5] * 8) + temp_r0) >> 8) + 0x78;
        temp_r2_2 = strc248->spr48.anim;
        if (((temp_r2_2 == gUnknown_080D9B1C.unk0) && (strc248->spr48.variant == gUnknown_080D9B1C.unk2))
            || ((temp_r2_2 == gUnknown_080D9B1C.unk28) && (strc248->spr48.variant == gUnknown_080D9B1C.unk2A))) {
            strc248->spr48.x = (u16)strc248->spr48.x + 0x12;
            strc248->spr48.y = (u16)strc248->spr48.y - 0xF;
        }
        UpdateSpriteAnimation(temp_r4_2);
        DisplaySprite(temp_r4_2);
    }
    var_r7 = 0;
    do {
        temp_r4_3 = *((var_r7 * 4) + sp);
        temp_r0_2 = strc248->unk0;
        if (((u32)*temp_r0_2 <= 8U)
            && (((temp_r1 = temp_r4_3->anim, (temp_r1 == gUnknown_080D9A1C.unk0)) && (temp_r4_3->variant == gUnknown_080D9A1C.unk2))
                || ((temp_r1 == gUnknown_080D9ADC.unk0) && (temp_r4_3->variant == gUnknown_080D9ADC.unk2))
                || ((temp_r1 == gUnknown_080D99DC.unk0) && (temp_r4_3->variant == gUnknown_080D99DC.unk2)))
            && ((u32)*temp_r0_2 > 5U)) {
            temp_r4_3->frameFlags &= 0xFFFFFBFF;
        }
        temp_r4_3->x = ((s32)temp_r4[var_r7].x >> 8) - ((s32)strc248->unk20 >> 8);
        temp_r4_3->y = ((s32) * ((var_r7 * 8) + temp_r0) >> 8) + 0x78;
        if ((u32)*strc248->unk0 > 0xCU) {
            temp_r4_3->oamFlags = 0x40;
        }
        temp_r0_3 = UpdateSpriteAnimation(temp_r4_3);
        temp_r5 = (u32)((0 - temp_r0_3) | temp_r0_3) >> 0x1F;
        DisplaySprite(temp_r4_3);
        var_r7 += 1;
    } while ((u32)var_r7 <= 2U);
    return temp_r5;
}

u32 sub_80A5824(CreditsRelated248 *strc248)
{
    Sprite *temp_r4_2;
    Sprite *temp_r4_3;
    Vec2_32 *temp_r4;
    s32 *temp_r0;
    s32 temp_r0_2;
    u16 temp_r2_2;
    u32 temp_r2;
    u32 temp_r6;
    u8 var_r1;
    u8 var_r2;
    u8 var_r5;

    temp_r2 = gPlayers->unk2A << 0x1C;
    if ((u32)(temp_r2 >> 0x1C) > 5U) {
        var_r2 = gCharacterSelectOrderLUT.unk0;
        var_r1 = gCharacterSelectOrderLUT.unk2;
    } else {
        var_r2 = (&gCharacterSelectOrderLUT)[temp_r2 >> 0x1C];
        var_r1 = (&gCharacterSelectOrderLUT)[(u32)(gPlayers->unk17A << 0x1C) >> 0x1C];
    }
    temp_r4 = strc248->unk28;
    temp_r0 = &strc248->unk28[0].y;
    if ((var_r2 != 3) && (var_r1 != 3)) {
        temp_r4_2 = &strc248->spr70;
        strc248->spr70.x = ((s32)temp_r4[strc248->filler0[5]].x >> 8) - ((s32)strc248->unk20 >> 8);
        strc248->spr70.y = ((s32) * ((strc248->filler0[5] * 8) + temp_r0) >> 8) + 0x78;
        temp_r2_2 = strc248->spr70.anim;
        if (((temp_r2_2 == gUnknown_080D9B1C.unk0) && (strc248->spr70.variant == gUnknown_080D9B1C.unk2))
            || ((temp_r2_2 == gUnknown_080D9B1C.unk28) && (strc248->spr70.variant == gUnknown_080D9B1C.unk2A))) {
            strc248->spr70.x = (u16)strc248->spr70.x + 0x12;
            strc248->spr70.y = (u16)strc248->spr70.y - 0xF;
        }
        UpdateSpriteAnimation(temp_r4_2);
        DisplaySprite(temp_r4_2);
    }
    var_r5 = 0;
    do {
        temp_r4_3 = *((var_r5 * 4) + sp);
        temp_r4_3->x = ((s32)temp_r4[var_r5].x >> 8) - ((s32)strc248->unk20 >> 8);
        temp_r4_3->y = ((s32) * ((var_r5 * 8) + temp_r0) >> 8) + 0x78;
        if ((u32)*strc248->unk0 > 0xCU) {
            temp_r4_3->oamFlags = 0x40;
        }
        temp_r0_2 = UpdateSpriteAnimation(temp_r4_3);
        temp_r6 = (u32)((0 - temp_r0_2) | temp_r0_2) >> 0x1F;
        DisplaySprite(temp_r4_3);
        var_r5 += 1;
    } while ((u32)var_r5 <= 2U);
    return temp_r6;
}

void CreatePreCreditsCutscene(u8 param0)
{
    s32 sp4;
    Player *temp_r0;
    Player *temp_r0_2;
    Task *var_r8;
    u16 temp_r6;
    u32 temp_r1;
    u32 var_r5;
    u32 var_r6;
    u8 var_r7;

    var_r7 = param0;
    temp_r1 = gPlayers->unk2A << 0x1C;
    if ((u32)(temp_r1 >> 0x1C) > 5U) {
        var_r5 = 0;
        var_r6 = 2;
    } else {
        var_r5 = temp_r1 >> 0x1C;
        var_r6 = (u32)(gPlayers->unk17A << 0x1C) >> 0x1C;
    }
    gDispCnt = 0x1040;
    if (var_r7 != 0) {
        var_r7 = 0x10;
        var_r8 = TaskCreate(Task_150_PreCreditsCutsceneTrueEndingInit, 0x150U, 0x100U, 0U, TaskDestructor_PreCreditsCutscene);
        temp_r0 = &gPlayers[var_r5];
        temp_r0->unk2A = (u8)(-0x10 & temp_r0->unk2A);
        temp_r0_2 = &gPlayers[var_r6];
        temp_r0_2->unk2A = (u8)((-0x10 & temp_r0_2->unk2A) | 2);
    } else {
        var_r8 = TaskCreate(Task_150_PreCreditsCutsceneNormalInit, 0x150U, 0x100U, 0U, TaskDestructor_PreCreditsCutscene);
        m4aMPlayAllStop();
        m4aSongNumStart(0x4EU);
    }
    temp_r6 = var_r8->data;
    temp_r6->unk4 = var_r7;
    temp_r6->unk0 = 0;
    temp_r6->unk8 = 0;
    temp_r6->unk6 = 0;
    temp_r6->unk14 = 0x6400;
    temp_r6->unk18 = 0x7800;
    temp_r6->unk1C = 0x8400;
    temp_r6->unk20 = 0x7800;
    temp_r6->unk2C = 0;
    temp_r6->unk30 = 0;
    temp_r6->unk5 = 0;
    temp_r6->unk14C = EwramMalloc(0xCACU);
    sp4 = 0;
    (void *)0x040000D4->unk0 = &sp4;
    (void *)0x040000D4->unk4 = (s32)(((0xC & gBgCntRegs[2]) << 0xC) + 0x06000000);
    (void *)0x040000D4->unk8 = 0x85000010;
    gBgSprites_Unknown1[2] = 0;
    gBgSprites_Unknown2[2][0] = 0;
    gBgSprites_Unknown2[2][1] = 0;
    gBgSprites_Unknown2[2][2] = 0xFF;
    gBgSprites_Unknown2[2][3] = 0x40;
    sp4 = 0;
    (void *)0x040000D4->unk0 = &sp4;
    (void *)0x040000D4->unk4 = (s32)(((0xC & gBgCntRegs[1]) << 0xC) + 0x06000000);
    (void *)0x040000D4->unk8 = 0x85000010;
    gBgSprites_Unknown1[1] = 0x12;
    gBgSprites_Unknown2[1][0] = 0;
    gBgSprites_Unknown2[1][1] = 0;
    gBgSprites_Unknown2[1][2] = -1U;
    gBgSprites_Unknown2[1][3] = 0x40;
    gBgSprites_Unknown1->unk0 = 0;
    gBgSprites_Unknown2[0][0] = 0;
    gBgSprites_Unknown2[0][1] = 0;
    gBgSprites_Unknown2[0][2] = -1U;
    gBgSprites_Unknown2[0][3] = 0x40;
    temp_r6->unkC = 0x06010000;
}

void sub_80A5B08(CreditsRelated150 *strc150)
{
    s32 sp0;
    Sprite *var_r1;
    s32 temp_r0;
    s32 temp_r1;
    s32 temp_r1_3;
    u16 var_r5_2;
    u32 temp_r2;
    u8 *temp_r0_2;
    u8 var_r5;
    u8 var_r6;
    void **temp_r1_2;
    void **temp_r1_4;

    temp_r2 = gPlayers->unk2A << 0x1C;
    if ((u32)(temp_r2 >> 0x1C) > 5U) {
        var_r6 = gCharacterSelectOrderLUT.unk0;
        var_r5 = gCharacterSelectOrderLUT.unk2;
    } else {
        var_r6 = (&gCharacterSelectOrderLUT)[temp_r2 >> 0x1C];
        var_r5 = (&gCharacterSelectOrderLUT)[(u32)(gPlayers->unk17A << 0x1C) >> 0x1C];
    }
    strc150->sprD4.tiles = strc150->unkC;
    temp_r1 = var_r6 * 4;
    sp0 = *(temp_r1 + &gUnknown_080D9E68) << 5;
    strc150->unkC = &strc150->unkC[sp0];
    temp_r1_2 = temp_r1 + &gUnknown_080D9E40;
    strc150->sprD4.anim = (*temp_r1_2)->unk0;
    strc150->sprD4.variant = (*temp_r1_2)->unk2;
    strc150->sprD4.prevVariant = 0xFF;
    strc150->sprD4.x = (s16)((s32)strc150->unk14 >> 8);
    strc150->sprD4.y = (s16)((s32)strc150->unk18 >> 8);
    strc150->sprD4.oamFlags = 0x40;
    strc150->sprD4.animCursor = 0;
    strc150->sprD4.qAnimDelay = 0;
    strc150->sprD4.animSpeed = 0x10;
    strc150->sprD4.palId = var_r6;
    if (var_r6 == 4) {
        strc150->sprD4.palId = 5;
    }
    strc150->sprD4.frameFlags = 0;
    UpdateSpriteAnimation(&strc150->sprD4);
    strc150->spr124.tiles = strc150->unkC;
    temp_r1_3 = var_r5 * 4;
    temp_r0 = *(temp_r1_3 + &gUnknown_080D9E68) << 5;
    strc150->unkC = (u8 *)(strc150->unkC + temp_r0);
    temp_r1_4 = temp_r1_3 + &gUnknown_080D9E40;
    strc150->spr124.anim = (*temp_r1_4)->unk0;
    strc150->spr124.variant = (*temp_r1_4)->unk2;
    strc150->spr124.prevVariant |= ~0;
    strc150->spr124.x = (s16)((s32)strc150->unk1C >> 8);
    strc150->spr124.y = (s16)((s32)strc150->unk20 >> 8);
    strc150->spr124.oamFlags = 0x80;
    strc150->spr124.animCursor = 0;
    strc150->spr124.qAnimDelay = 0;
    strc150->spr124.animSpeed = 0x10;
    strc150->spr124.palId = var_r5;
    if (var_r5 == 4) {
        strc150->spr124.palId = 5;
    }
    strc150->spr124.frameFlags = 0;
    UpdateSpriteAnimation(&strc150->spr124);
    strc150->unkAC = (u8 *)strc150->unkC;
    temp_r0_2 = &strc150->unkC[sp0];
    strc150->unkC = temp_r0_2;
    strc150->sprFC.tiles = temp_r0_2;
    strc150->unkC = (u8 *)(strc150->unkC + temp_r0);
    if ((var_r6 == 3) || (var_r5 == 3)) {
        var_r5_2 = 0;
        do {
            var_r1 = &strc150->spr5C;
            if (var_r5_2 != 0) {
                var_r1 = &strc150->spr84;
            }
            var_r1->tiles = strc150->unkC;
            strc150->unkC = (u8 *)(strc150->unkC + 0x120);
            var_r1->anim = gUnknown_080D9E40.unk14->unk0;
            var_r1->variant = gUnknown_080D9E40.unk14->unk2;
            var_r1->prevVariant = 0xFF;
            var_r1->oamFlags = 0x280;
            var_r1->animCursor = 0;
            var_r1->qAnimDelay = 0;
            var_r1->animSpeed = 0x10;
            var_r1->palId = 0;
            var_r1->frameFlags = 0;
            UpdateSpriteAnimation(var_r1);
            var_r5_2 += 1;
        } while ((u32)var_r5_2 <= 1U);
    }
}

void sub_80A5CB0(CreditsRelated150 *strc150, u8 param1, u8 param2)
{
    Sprite *var_r3;
    Sprite *var_r3_2;
    Sprite *var_r4;
    s32 *temp_r1_2;
    s32 *temp_r1_3;
    s32 temp_r2_3;
    u32 temp_r2_2;
    u32 var_r0_2;
    u32 var_r0_3;
    u8 temp_r1;
    u8 temp_r2;
    u8 var_r0;
    u8 var_r6;
    u8 var_r8;

    temp_r1 = param1;
    temp_r2 = param2;
    temp_r2_2 = gPlayers->unk2A << 0x1C;
    if ((u32)(temp_r2_2 >> 0x1C) > 5U) {
        var_r8 = gCharacterSelectOrderLUT.unk0;
        var_r6 = gCharacterSelectOrderLUT.unk2;
    } else {
        var_r8 = (&gCharacterSelectOrderLUT)[temp_r2_2 >> 0x1C];
        var_r6 = (&gCharacterSelectOrderLUT)[(u32)(gPlayers->unk17A << 0x1C) >> 0x1C];
    }
    var_r4 = &strc150->sprD4;
    if (temp_r2 != 0) {
        var_r4 -= 0x28;
    }
    temp_r1_2 = (var_r8 * 4) + &gUnknown_080D9E40;
    temp_r2_3 = temp_r1 * 8;
    var_r4->anim = *(temp_r2_3 + *temp_r1_2);
    var_r4->variant = (temp_r2_3 + *temp_r1_2)->unk2;
    var_r4->prevVariant = 0xFF;
    var_r4->oamFlags = 0x40;
    var_r4->animCursor = 0;
    var_r4->qAnimDelay = 0;
    var_r4->animSpeed = 0x10;
    if ((u32)strc150->unk4 <= 8U) {
        var_r0 = var_r8;
    } else {
        var_r0 = 0;
    }
    var_r4->palId = var_r0;
    var_r0_2 = 0;
    var_r4->frameFlags = 0;
    if ((u32)temp_r1 <= 5U) {
        if (((u32)(u8)(var_r8 - 2) <= 1U) && ((u32)strc150->unk4 > 7U)) {
            var_r0_2 = 0x400;
        } else {
            var_r0_2 = var_r4->frameFlags & 0xFFFFFBFF;
        }
    }
    var_r4->frameFlags = var_r0_2;
    UpdateSpriteAnimation(var_r4);
    if (temp_r2 != 0) {
        var_r3 = &strc150->sprFC;
    } else {
        var_r3 = &strc150->spr124;
    }
    temp_r1_3 = (var_r6 * 4) + &gUnknown_080D9E40;
    var_r3->anim = *(temp_r2_3 + *temp_r1_3);
    var_r3->variant = (temp_r2_3 + *temp_r1_3)->unk2;
    var_r3->prevVariant = 0xFF;
    var_r3->oamFlags = 0x80;
    var_r3->animCursor = 0;
    var_r3->qAnimDelay = 0;
    var_r3->animSpeed = 0x10;
    if ((u32)strc150->unk4 <= 8U) {
        var_r3->palId = var_r6;
    } else {
        var_r3->palId = 0;
    }
    var_r3->frameFlags = 0;
    if ((u32)temp_r1 <= 5U) {
        if (((u32)(u8)(var_r6 - 2) <= 1U) && ((u32)strc150->unk4 > 7U)) {
            var_r0_3 = 0x400;
        } else {
            goto block_26;
        }
    } else if ((var_r6 == 3) && (temp_r1 == 7)) {
        var_r0_3 = 0x400;
    } else {
    block_26:
        var_r0_3 = var_r3->frameFlags & 0xFFFFFBFF;
    }
    var_r3->frameFlags = var_r0_3;
    UpdateSpriteAnimation(var_r3);
    if ((var_r8 == 3) || (var_r6 == 3)) {
        var_r3_2 = &strc150->spr5C;
        if (temp_r2 != 0) {
            var_r3_2 += 0x28;
        }
        var_r3_2->anim = *(temp_r2_3 + gUnknown_080D9E40.unk14);
        var_r3_2->variant = (temp_r2_3 + gUnknown_080D9E40.unk14)->unk2;
        var_r3_2->prevVariant = 0xFF;
        var_r3_2->oamFlags = 0x280;
        var_r3_2->animCursor = 0;
        var_r3_2->qAnimDelay = 0;
        var_r3_2->animSpeed = 0x10;
        var_r3_2->palId = 0;
        var_r3_2->frameFlags = 0;
        if (((u32)temp_r1 <= 3U) && ((u32)strc150->unk4 > 7U)) {
            var_r3_2->frameFlags = 0x400;
        } else {
            var_r3_2->frameFlags = 0;
        }
        UpdateSpriteAnimation(var_r3_2);
    }
}

void sub_80A5E8C(CreditsRelated150 *strc150, u8 param1, u8 param2)
{
    Sprite *var_r4;
    s32 temp_r1;

    var_r4 = &strc150->sprD4;
    if ((param2 << 0x18) != 0) {
        var_r4 -= 0x28;
    }
    var_r4->tiles = strc150->unkC;
    strc150->unkC = (u8 *)(strc150->unkC + (gUnknown_080D9E68.unk8 << 5));
    temp_r1 = param1 * 8;
    var_r4->anim = *(temp_r1 + gUnknown_080D9E40.unk8);
    var_r4->variant = (temp_r1 + gUnknown_080D9E40.unk8)->unk2;
    var_r4->prevVariant = 0xFF;
    var_r4->oamFlags = 0;
    var_r4->animCursor = 0;
    var_r4->qAnimDelay = 0;
    var_r4->animSpeed = 0x10;
    var_r4->palId = 2;
    var_r4->frameFlags = 0;
    UpdateSpriteAnimation(var_r4);
}

void sub_80A5EF0(CreditsRelated150 *strc150, u8 param1, u8 param2)
{
    Sprite *var_r2;
    Sprite *var_r4;
    Sprite *var_r4_2;
    s32 *temp_r1_2;
    s32 *temp_r1_3;
    s32 temp_r3;
    u32 temp_r2_2;
    u8 temp_r1;
    u8 temp_r2;
    u8 var_r0;
    u8 var_r5;
    u8 var_r7;

    temp_r1 = param1;
    temp_r2 = param2;
    temp_r2_2 = gPlayers->unk2A << 0x1C;
    if ((u32)(temp_r2_2 >> 0x1C) > 5U) {
        var_r5 = gCharacterSelectOrderLUT.unk0;
        var_r7 = gCharacterSelectOrderLUT.unk2;
    } else {
        var_r5 = (&gCharacterSelectOrderLUT)[temp_r2_2 >> 0x1C];
        var_r7 = (&gCharacterSelectOrderLUT)[(u32)(gPlayers->unk17A << 0x1C) >> 0x1C];
    }
    var_r4 = &strc150->sprD4;
    if (temp_r2 != 0) {
        var_r4 -= 0x28;
    }
    temp_r1_2 = (var_r5 * 4) + &gUnknown_080D9E40;
    temp_r3 = temp_r1 * 8;
    var_r4->anim = *(temp_r3 + *temp_r1_2);
    var_r4->variant = (temp_r3 + *temp_r1_2)->unk2;
    var_r4->prevVariant = 0xFF;
    var_r4->oamFlags = 0;
    var_r4->animCursor = 0;
    var_r4->qAnimDelay = 0;
    if ((var_r5 == 0) && (temp_r1 == 0xA)) {
        var_r0 = 0x20;
    } else {
        var_r0 = 0x10;
    }
    var_r4->animSpeed = var_r0;
    var_r4->palId = var_r5;
    if (var_r5 == 4) {
        var_r4->palId = 5;
    }
    var_r4->frameFlags = 0;
    if (var_r5 == 0) {
        if ((u32)strc150->unk4 > 0x12U) {
            var_r4->frameFlags = (u32)var_r5;
        } else {
            goto block_16;
        }
    } else if ((var_r5 == 1) && ((u32)strc150->unk4 <= 0x13U)) {
    block_16:
        var_r4->frameFlags = 0x400;
    } else {
        var_r4->frameFlags = 0;
    }
    UpdateSpriteAnimation(var_r4);
    if (((u32)strc150->unk4 > 0x14U) || (temp_r1 != 0xA)) {
        if (temp_r2 != 0) {
            var_r2 = &strc150->sprFC;
        } else {
            var_r2 = &strc150->spr124;
        }
        temp_r1_3 = (var_r7 * 4) + &gUnknown_080D9E40;
        var_r2->anim = *(*temp_r1_3 + temp_r3);
        var_r2->variant = (*temp_r1_3 + temp_r3)->unk2;
        var_r2->prevVariant = 0xFF;
        var_r2->oamFlags = 0x40;
        var_r2->animCursor = 0;
        var_r2->qAnimDelay = 0;
        var_r2->animSpeed = 0x10;
        var_r2->palId = var_r7;
        if (var_r7 == 4) {
            var_r2->palId = 5;
        }
        var_r2->frameFlags = 0;
        if (((u32)strc150->unk4 <= 0x13U) && ((u32)var_r7 <= 1U)) {
            var_r2->frameFlags = 0x400;
        } else {
            var_r2->frameFlags = 0;
        }
        UpdateSpriteAnimation(var_r2);
        if ((var_r5 == 3) || (var_r7 == 3)) {
            var_r4_2 = &strc150->spr5C;
            if (temp_r2 != 0) {
                var_r4_2 += 0x28;
            }
            var_r4_2->anim = *(gUnknown_080D9E40.unk14 + temp_r3);
            var_r4_2->variant = (gUnknown_080D9E40.unk14 + temp_r3)->unk2;
            var_r4_2->prevVariant = 0xFF;
            var_r4_2->oamFlags = 0x280;
            var_r4_2->animCursor = 0;
            var_r4_2->qAnimDelay = 0;
            var_r4_2->animSpeed = 0x10;
            var_r4_2->palId = 0;
            var_r4_2->frameFlags = 0;
            UpdateSpriteAnimation(var_r4_2);
        }
    }
}

void Task_150_80A6090(CreditsRelated150 *strc150)
{
    sub_80A6A5C((CreditsRelated248 *)gCurTask->data);
    gDispCnt |= 0x2000;
    gWinRegs->unk0 = 0xF0;
    gWinRegs[2] = 0xA0;
    gWinRegs[4] = 0x3F;
    gWinRegs[5] = 0x1F;
    gBldRegs.bldCnt = 0x3FFF;
    gBldRegs.bldY = 0;
    gCurTask->main = Task_150_80A60F0;
}

void Task_150_80A60F0(CreditsRelated150 *strc150)
{
    u16 temp_r0;
    u16 temp_r1;
    u8 temp_r4;
    void (*var_r0)(CreditsRelated150 *);

    temp_r1 = gCurTask->data;
    sub_80A6A5C((CreditsRelated248 *)temp_r1);
    if (temp_r1->unk4 == 6) {
        temp_r1->unk14 = (s32)(temp_r1->unk14 + 0x100);
        temp_r1->unk1C = (s32)(temp_r1->unk1C + 0x100);
    }
    temp_r0 = temp_r1->unk8 + 1;
    temp_r1->unk8 = temp_r0;
    if ((u32)temp_r0 >= (u32) * ((temp_r1->unk5 * 2) + &gUnknown_080D9E58)) {
        temp_r1->unk8 = 0U;
        temp_r1->unk5 = (u8)(temp_r1->unk4 + 1);
        temp_r1->unk4 = (u8) * (temp_r1->unk5 + &gUnknown_080DA054);
        temp_r4 = (&gUnknown_080D9BC0)[temp_r1->unk5];
        sub_80A5CB0((CreditsRelated150 *)temp_r1, temp_r4, 0U);
        if (temp_r4 == 3) {
            var_r0 = Task_150_80A619C;
            goto block_7;
        }
        if (temp_r1->unk4 == 7) {
            var_r0 = Task_150_80A6208;
        block_7:
            gCurTask->main = var_r0;
        }
    }
}

void Task_150_80A619C(CreditsRelated150 *strc150)
{
    sub_80A6A5C((CreditsRelated248 *)strc150);
    if (strc150->unk4 == 4) {
        strc150->unkC = sub_80A45B4(&strc150->unk4, strc150->unkC, M2C_ERROR(/* Read from unset register $r2 */));
        strc150->unk4 = 5;
    }
    if (strc150->unk4 == 6) {
        strc150->unk8 = 0;
        strc150->unk5 += 1;
        sub_80A5CB0(strc150, 2U, 0U);
        gCurTask->main = Task_150_80A60F0;
    }
}

void Task_150_80A6208(CreditsRelated150 *strc150)
{
    s32 *temp_r5;
    s32 *temp_r5_2;
    s32 temp_r3;
    s32 temp_r3_2;
    u16 temp_r1;
    u16 temp_r1_2;
    u32 temp_r2;
    u32 var_r0;
    u32 var_r0_2;
    u32 var_r8;
    u8 var_r6;
    u8 var_r7;

    var_r8 = 0;
    temp_r2 = gPlayers->unk2A << 0x1C;
    if ((u32)(temp_r2 >> 0x1C) > 5U) {
        var_r6 = gCharacterSelectOrderLUT.unk0;
        var_r7 = gCharacterSelectOrderLUT.unk2;
    } else {
        var_r6 = (&gCharacterSelectOrderLUT)[temp_r2 >> 0x1C];
        var_r7 = (&gCharacterSelectOrderLUT)[(u32)(gPlayers->unk17A << 0x1C) >> 0x1C];
    }
    strc150->unk8 = (u16)(strc150->unk8 + 1);
    if (sub_80A6370(strc150) == 1) {
        temp_r5 = (var_r6 * 4) + &gUnknown_080D9E40;
        temp_r3 = gUnknown_080D9BC0 * 8;
        temp_r1 = *(temp_r3 + *temp_r5);
        if (strc150->sprD4.anim != temp_r1) {
            strc150->sprD4.anim = temp_r1;
            strc150->sprD4.variant = (temp_r3 + *temp_r5)->unk2;
            strc150->sprD4.prevVariant = 0xFF;
            if ((u32)(u8)(var_r6 - 2) <= 1U) {
                var_r0 = strc150->sprD4.frameFlags | 0x400;
            } else {
                var_r0 = strc150->sprD4.frameFlags & 0xFFFFFBFF;
            }
            strc150->sprD4.frameFlags = var_r0;
        }
        var_r8 = 0x01000000U >> 0x18;
    }
    if (sub_80A63FC(strc150) == 1) {
        temp_r5_2 = (var_r7 * 4) + &gUnknown_080D9E40;
        temp_r3_2 = gUnknown_080D9BC0 * 8;
        temp_r1_2 = *(temp_r3_2 + *temp_r5_2);
        if (strc150->spr124.anim != temp_r1_2) {
            strc150->spr124.anim = temp_r1_2;
            strc150->spr124.variant = (temp_r3_2 + *temp_r5_2)->unk2;
            strc150->spr124.prevVariant = 0xFF;
            if ((u32)(u8)(var_r7 - 2) <= 1U) {
                var_r0_2 = strc150->spr124.frameFlags | 0x400;
            } else {
                var_r0_2 = strc150->spr124.frameFlags & 0xFFFFFBFF;
            }
            strc150->spr124.frameFlags = var_r0_2;
        }
        var_r8 = (u32)(u8)(var_r8 + 1);
    }
    if (var_r8 == 2) {
        sub_80A5CB0(strc150, 0U, 0U);
        strc150->unk5 += 1;
        gCurTask->main = Task_248_80A7F58;
        return;
    }
    sub_80A6A5C((CreditsRelated248 *)strc150);
}

u32 sub_80A6370(CreditsRelated150 *strc150)
{
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r2_2;
    u32 temp_r2;
    u8 *var_r0;

    temp_r2 = gPlayers->unk2A << 0x1C;
    if ((u32)(temp_r2 >> 0x1C) > 5U) {
        var_r0 = &gCharacterSelectOrderLUT;
    } else {
        var_r0 = &(&gCharacterSelectOrderLUT)[temp_r2 >> 0x1C];
    }
    temp_r2_2 = *(*var_r0 + &gUnknown_080D9B79) << 8;
    temp_r0 = strc150->unk14;
    if (temp_r0 < temp_r2_2) {
        strc150->sprD4.frameFlags |= 0x400;
        temp_r0_2 = strc150->unk14 + 0x200;
        strc150->unk14 = temp_r0_2;
        if (temp_r0_2 >= temp_r2_2) {
            goto block_8;
        }
        goto block_9;
    }
    if ((temp_r0 <= temp_r2_2)
        || (strc150->sprD4.frameFlags &= 0xFFFFFBFF, temp_r0_3 = strc150->unk14 + 0xFFFFFE00, strc150->unk14 = temp_r0_3,
            (temp_r0_3 <= temp_r2_2))) {
    block_8:
        strc150->unk14 = temp_r2_2;
        return 1U;
    }
block_9:
    return 0U;
}

u32 sub_80A63FC(CreditsRelated150 *strc150)
{
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r2;

    temp_r2 = *((&gCharacterSelectOrderLUT)[(u32)(gPlayers->unk17A << 0x1C) >> 0x1C] + &gUnknown_080D9B79) << 8;
    temp_r0 = strc150->unk1C;
    if (temp_r0 < temp_r2) {
        strc150->spr124.frameFlags |= 0x400;
        temp_r0_2 = strc150->unk1C + 0x100;
        strc150->unk1C = temp_r0_2;
        if (temp_r0_2 >= temp_r2) {
            goto block_5;
        }
        goto block_6;
    }
    if ((temp_r0 <= temp_r2)
        || (strc150->spr124.frameFlags &= 0xFFFFFBFF, temp_r0_3 = strc150->unk1C + 0xFFFFFF00, strc150->unk1C = temp_r0_3,
            (temp_r0_3 <= temp_r2))) {
    block_5:
        strc150->unk1C = temp_r2;
        return 1U;
    }
block_6:
    return 0U;
}

void Task_150_PreCreditsCutsceneTrueEndingInit(CreditsRelated248 *strc248)
{
    Sprite *temp_r0_2;
    u16 temp_r5;
    u32 temp_r2;
    u8 *temp_r1;
    u8 temp_r0;
    u8 var_r3;
    u8 var_r6;

    temp_r5 = gCurTask->data;
    temp_r0 = temp_r5->unk6;
    switch (temp_r0) { /* irregular */
        case 0:
            temp_r2 = gPlayers->unk2A << 0x1C;
            if ((u32)(temp_r2 >> 0x1C) > 5U) {
                var_r6 = gCharacterSelectOrderLUT.unk0;
                var_r3 = gCharacterSelectOrderLUT.unk2;
            } else {
                var_r6 = (&gCharacterSelectOrderLUT)[temp_r2 >> 0x1C];
                var_r3 = (&gCharacterSelectOrderLUT)[(u32)(gPlayers->unk17A << 0x1C) >> 0x1C];
            }
            temp_r5->unk14 = (s32)(*((var_r6 * 2) + &gUnknown_080D9B7E) << 8);
            temp_r5->unk18 = 0x7900;
            temp_r5->unk1C = (s32)(*((var_r3 * 2) + &gUnknown_080D9B7E) << 8);
            temp_r5->unk20 = 0x7900;
            sub_80A5B08((CreditsRelated150 *)temp_r5);
            temp_r0_2 = temp_r5 + 0x34;
            temp_r1 = temp_r5->unkC;
            temp_r5->unk34 = temp_r1;
            temp_r5->unkC = (u8 *)(temp_r1 + 0x280);
            temp_r0_2->anim = 0x533;
            temp_r0_2->variant = 0;
            temp_r0_2->prevVariant = 0xFF;
            temp_r0_2->x = (s16)((s32)temp_r5->unk14 >> 8);
            temp_r0_2->y = ((s32)temp_r5->unk18 >> 8) + 0xA;
            temp_r0_2->oamFlags = 0;
            temp_r0_2->animCursor = 0;
            temp_r0_2->qAnimDelay = 0;
            temp_r0_2->animSpeed = 0x10;
            temp_r0_2->palId = 0;
            temp_r0_2->frameFlags = 0;
            UpdateSpriteAnimation(temp_r0_2);
            temp_r5->unkC = sub_80A828C(temp_r5 + 4, temp_r5->unkC, temp_r5 + 0x14);
        default:
        block_9:
            temp_r5->unk6 = (u8)(temp_r5->unk6 + 1);
            return;
        case 1:
            sub_80A5EF0((CreditsRelated150 *)temp_r5, 0U, 1U);
            temp_r5->unkC = sub_80A45B4(temp_r5 + 4, temp_r5->unkC, M2C_ERROR(/* Read from unset register $r2 */));
            goto block_9;
        case 2:
            temp_r5->unkC = sub_80A9BD8(temp_r5->unkC, -0x14, -0x5A, 0, temp_r5 + 4);
            temp_r5->unk8 = 0;
            temp_r5->unk6 = 0U;
        gCurTask->main = Task_150_80A65C8;
        return;
    }
}

void Task_150_80A65C8(CreditsRelated150 *strc150)
{
    s32 temp_r2_2;
    u16 temp_r0;
    u16 temp_r6;
    u8 temp_r2;

    temp_r6 = gCurTask->data;
    sub_80A6DD0((CreditsRelated150 *)temp_r6);
    temp_r0 = temp_r6->unk8 + 1;
    temp_r6->unk8 = temp_r0;
    temp_r2 = temp_r6->unk6;
    if ((u32)temp_r0 > (u32) * (temp_r2 + &gUnknown_080D9E80)) {
        temp_r6->unk6 = (u8)(temp_r2 + 1);
        temp_r2_2 = temp_r6->unk6 * 8;
        temp_r6->unkC = sub_80A9BD8(temp_r6->unkC, *(temp_r2_2 + &gUnknown_080D9E90), *(temp_r2_2 + (&gUnknown_080D9E90 + 4)), temp_r6 + 4);
        if ((u32)temp_r6->unk6 > 0xCU) {
            gCurTask->main = Task_150_80A6768;
        }
    }
}

void Task_248_80A664C(CreditsRelated248 *strc248)
{
    s32 temp_r0;
    s32 temp_r2_2;
    u16 temp_r0_2;
    u16 temp_r1;
    u8 temp_r2;

    temp_r1 = gCurTask->data;
    temp_r1->unk20 = (s32)temp_r1->unk18;
    sub_80A6A5C((CreditsRelated248 *)temp_r1);
    if (temp_r1->unk4 == 0xE) {
        temp_r0 = temp_r1->unk30 - 0x40;
        temp_r1->unk30 = temp_r0;
        if (temp_r0 <= 0) {
            temp_r1->unk30 = 0;
        }
        temp_r1->unk18 = (s32)((temp_r1->unk30 + 0x7800) - ((gBgScrollRegs[1][1] - 0x50) << 8));
    }
    temp_r1->unk20 = (s32)temp_r1->unk18;
    temp_r0_2 = temp_r1->unk8 + 1;
    temp_r1->unk8 = temp_r0_2;
    temp_r2 = temp_r1->unk6;
    if ((u32)temp_r0_2 > (u32) * (temp_r2 + &gUnknown_080D9E80)) {
        temp_r1->unk6 = (u8)(temp_r2 + 1);
        temp_r2_2 = temp_r1->unk6 * 8;
        temp_r1->unkC = sub_80A9BD8(temp_r1->unkC, *(temp_r2_2 + &gUnknown_080D9E90), *(temp_r2_2 + (&gUnknown_080D9E90 + 4)), temp_r1 + 4);
        if ((u32)temp_r1->unk6 > 0xDU) {
            sub_80A5CB0((CreditsRelated150 *)temp_r1, 6U, 1U);
            gCurTask->main = Task_248_80A808C;
        }
    }
}

void Task_248_80A6700(CreditsRelated248 *strc248)
{
    u16 temp_r1;
    u16 temp_r1_2;
    u16 temp_r5;

    temp_r5 = gCurTask->data;
    sub_80A6BDC((CreditsRelated248 *)temp_r5);
    temp_r1 = temp_r5->unk8;
    if ((u32)temp_r1 <= 0x1DFU) {
        temp_r5->unk8 = (u16)(temp_r1 + 1);
    }
    temp_r1_2 = temp_r5->unk8;
    if (temp_r1_2 == 0x1E0) {
        temp_r5->unk8 = (u16)(temp_r1_2 + 1);
        temp_r5->unkC = sub_80A9E24(temp_r5 + 4, temp_r5->unkC);
    }
    if (temp_r5->unk4 == 0x12) {
        sub_80A5CB0((CreditsRelated150 *)temp_r5, 7U, 0U);
        gCurTask->main = sub_80A805C;
    }
}

void Task_150_80A6768(CreditsRelated150 *strc150)
{
    Vec2_u16 sp4;
    Sprite *temp_r4;
    u16 temp_r1;
    u16 temp_r1_2;
    u16 temp_r5;
    u32 temp_r2;
    u8 var_r6;
    u8 var_r7;

    temp_r5 = gCurTask->data;
    memset(&sp4, 0, 6);
    temp_r2 = gPlayers->unk2A << 0x1C;
    if ((u32)(temp_r2 >> 0x1C) > 5U) {
        var_r7 = gCharacterSelectOrderLUT.unk0;
        var_r6 = gCharacterSelectOrderLUT.unk2;
    } else {
        var_r7 = (&gCharacterSelectOrderLUT)[temp_r2 >> 0x1C];
        var_r6 = (&gCharacterSelectOrderLUT)[(u32)(gPlayers->unk17A << 0x1C) >> 0x1C];
    }
    sp4.x = 0x1E0;
    sp4.y = 0x258;
    sp4.unk4 = 0x30CU;
    sub_80A6DD0((CreditsRelated150 *)temp_r5);
    if ((u32)temp_r5->unk8 >= (u32)sp4.x) {
        temp_r4 = temp_r5 + 0x34;
        temp_r4->x = (s16)((s32)temp_r5->unk14 >> 8);
        temp_r4->y = ((s32)temp_r5->unk18 >> 8) + 8;
        UpdateSpriteAnimation(temp_r4);
        DisplaySprite(temp_r4);
    }
    temp_r1 = temp_r5->unk8;
    if ((u32)temp_r1 <= (u32)sp4.unk4) {
        temp_r5->unk8 = (u16)(temp_r1 + 1);
    }
    temp_r1_2 = temp_r5->unk8;
    if (temp_r1_2 == sp4.x) {
        temp_r5->unk8 = (u16)(temp_r1_2 + 1);
        temp_r5->unk4 = 0x13;
        sub_80A5EF0((CreditsRelated150 *)temp_r5, 8U, 1U);
        temp_r5->unkC = sub_80AA06C(temp_r5 + 4, temp_r5->unkC);
        if (var_r7 == 0) {
            temp_r5->unk18 = (s32)(temp_r5->unk18 + 0x600);
        } else if (var_r6 == 0) {
            temp_r5->unk20 = (s32)(temp_r5->unk20 + 0x600);
        }
    }
    if (temp_r5->unk8 == sp4.y) {
        sub_80AD7B4(temp_r5->unk14C, 0x2B, 0x64, 0x28, temp_r5->unkC);
        temp_r5->unk24 = 0x6400;
        temp_r5->unk28 = 0x2800;
    }
    if ((u32)temp_r5->unk8 > (u32)sp4.y) {
        temp_r5->unk0 = sub_8023734(temp_r5->unk14C);
        sub_80239A8(temp_r5->unk14C);
    }
    if (temp_r5->unk0 == 1) {
        sub_80239A8(temp_r5->unk14C);
        if ((u32)temp_r5->unk8 >= (u32)sp4.unk4) {
            if (var_r7 == 0) {
                temp_r5->unk18 = (s32)(temp_r5->unk18 + 0xFFFFF800);
            } else if (var_r6 == 0) {
                temp_r5->unk20 = (s32)(temp_r5->unk20 + 0xFFFFF800);
            }
            temp_r5->unk4 = 0x14;
            sub_80A825C(temp_r5);
            sub_80A5EF0((CreditsRelated150 *)temp_r5, 0xAU, 1U);
            gCurTask->main = Task_150_80A80EC;
        }
    }
}

void Task_150_80A690C(CreditsRelated150 *strc150)
{
    s32 temp_r2;
    s32 var_r5;
    u16 temp_r0;
    u16 temp_r1;
    u8 temp_r0_2;
    u8 temp_r3;

    temp_r1 = gCurTask->data;
    var_r5 = 0;
    temp_r3 = temp_r1->unk6;
    if ((u32)temp_r3 <= 5U) {
        temp_r0 = temp_r1->unk8 + 1;
        temp_r1->unk8 = temp_r0;
        if ((u32)temp_r0 > (u32) * ((temp_r1->unk6 * 2) + &gUnknown_080D9BB2)) {
            temp_r1->unk8 = 0U;
            temp_r0_2 = temp_r3 + 1;
            temp_r1->unk6 = temp_r0_2;
            if ((u32)temp_r0_2 > 6U) {
                temp_r1->unk6 = 6U;
            }
        }
    }
    if ((temp_r1->unk6 == 3) && (temp_r1->unk8 == 0)) {
        sub_80A5EF0((CreditsRelated150 *)temp_r1, 0xBU, 1U);
    }
    if ((temp_r1->unk6 == 6) && (temp_r1->unk8 == 0)) {
        sub_80A5EF0((CreditsRelated150 *)temp_r1, 0xCU, 1U);
    }
    temp_r2 = temp_r1->unk1C;
    if (temp_r2 > 0xFFFFD800) {
        temp_r1->unk1C = (s32)(temp_r2 - (*(temp_r1->unk6 + &gUnknown_080D9BAA) << 8));
    } else {
        var_r5 = 1;
    }
    sub_80A6DD0((CreditsRelated150 *)temp_r1);
    if ((temp_r1->unk4 == 0x16) && (var_r5 != 0)) {
        temp_r1->unk14 = 0x8200;
        temp_r1->unk18 = 0xFFFFE200;
        temp_r1->unk8 = 0U;
        sub_80A5E8C((CreditsRelated150 *)temp_r1, 0xDU, 0U);
        gCurTask->main = Task_150_80A814C;
    }
}

void Task_150_80A69E4(CreditsRelated150 *strc150)
{
    u16 temp_r0;
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    sub_80A8234(temp_r1);
    temp_r0 = temp_r1->unk8 + 1;
    temp_r1->unk8 = temp_r0;
    if (temp_r0 == 0xB4) {
        gDispCnt |= 0x2000;
        gWinRegs->unk0 = 0xF0;
        gWinRegs[2] = 0xA0;
        gWinRegs[4] = 0x3FFF;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3FFF;
        gBldRegs.bldY = 0;
        temp_r1->unk10 = 0;
        temp_r1->unk8 = 0U;
        gCurTask->main = Task_150_80A8198;
    }
}

u32 sub_80A6A5C(CreditsRelated248 *strc248)
{
    s16 *temp_r4;
    s16 *temp_r4_2;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r2_2;
    s32 temp_r2_3;
    u16 temp_r2_4;
    u16 temp_r2_5;
    u32 temp_r2;
    u32 var_r7;
    u8 *temp_r4_3;
    u8 *temp_r4_4;
    u8 temp_r0;
    u8 var_r2;
    u8 var_r6;

    var_r7 = 0;
    temp_r2 = gPlayers->unk2A << 0x1C;
    if ((u32)(temp_r2 >> 0x1C) > 5U) {
        var_r2 = gCharacterSelectOrderLUT.unk0;
        var_r6 = gCharacterSelectOrderLUT.unk2;
    } else {
        var_r2 = (&gCharacterSelectOrderLUT)[temp_r2 >> 0x1C];
        var_r6 = (&gCharacterSelectOrderLUT)[(u32)(gPlayers->unk17A << 0x1C) >> 0x1C];
    }
    if (var_r2 == 3) {
        temp_r4 = &strc248->spr48.oamFlags;
        temp_r2_2 = (s32)strc248->unk14 >> 8;
        strc248->unk6C = (s16)temp_r2_2;
        temp_r1 = (s32)strc248->unk18 >> 8;
        strc248->unk6E = (s16)temp_r1;
        if ((u32)strc248->filler0[4] <= 8U) {
            strc248->unk6C = (s16)(temp_r2_2 + 0x12);
            strc248->unk6E = (s16)(temp_r1 - 0xF);
        }
        UpdateSpriteAnimation((Sprite *)temp_r4);
        DisplaySprite((Sprite *)temp_r4);
    }
    if (var_r6 == 3) {
        temp_r4_2 = &strc248->spr48.oamFlags;
        temp_r2_3 = (s32)strc248->vram1C >> 8;
        strc248->unk6C = (s16)temp_r2_3;
        temp_r1_2 = (s32)strc248->unk20 >> 8;
        strc248->unk6E = (s16)temp_r1_2;
        if ((u32)strc248->filler0[4] <= 8U) {
            strc248->unk6C = (s16)(temp_r2_3 + 0x12);
            strc248->unk6E = (s16)(temp_r1_2 - 0xF);
        }
        UpdateSpriteAnimation((Sprite *)temp_r4_2);
        DisplaySprite((Sprite *)temp_r4_2);
    }
    temp_r4_3 = strc248->fillerD4;
    temp_r0 = strc248->filler0[4];
    if (((u32)temp_r0 <= 8U)
        && (((temp_r2_4 = strc248->bgD8.graphics.size, (temp_r2_4 == gUnknown_080D9D08.unk0)) && (strc248->unkEE == gUnknown_080D9D08.unk2))
            || ((temp_r2_4 == gUnknown_080D9C90.unk0) && (strc248->unkEE == gUnknown_080D9C90.unk2)))
        && ((u32)temp_r0 > 5U)) {
        strc248->bgD8.graphics.dest = (void *)((s32)strc248->bgD8.graphics.dest | 0x400);
    }
    strc248->unkE4 = (s16)((s32)strc248->unk14 >> 8);
    strc248->unkE6 = (s16)((s32)strc248->unk18 >> 8);
    if (UpdateSpriteAnimation((Sprite *)temp_r4_3) == ACMD_RESULT__ENDED) {
        var_r7 = 0x01000000U >> 0x18;
    }
    DisplaySprite((Sprite *)temp_r4_3);
    temp_r4_4 = &strc248->filler118[0xC];
    if (((u32)strc248->filler0[4] <= 8U)
        && (((temp_r2_5 = strc248->unk130, (temp_r2_5 == gUnknown_080D9D08.unk0)) && (strc248->filler118[0x26] == gUnknown_080D9D08.unk2))
            || ((temp_r2_5 == gUnknown_080D9C90.unk0) && (strc248->filler118[0x26] == gUnknown_080D9C90.unk2)))
        && ((u32)strc248->filler0[4] > 5U)) {
        strc248->unk12C = (s32)(strc248->unk12C | 0x400);
    }
    strc248->unk134 = (s16)((s32)strc248->vram1C >> 8);
    strc248->unk136 = (s16)((s32)strc248->unk20 >> 8);
    if (UpdateSpriteAnimation((Sprite *)temp_r4_4) == ACMD_RESULT__ENDED) {
        var_r7 = (u32)(u8)(var_r7 + 1);
    }
    DisplaySprite((Sprite *)temp_r4_4);
    if (var_r7 != 2) {
        return 1U;
    }
    return 0U;
}

u32 sub_80A6BDC(CreditsRelated248 *strc248)
{
    Sprite *temp_r4_3;
    s16 *temp_r4;
    s16 *temp_r4_2;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r2_2;
    s32 temp_r2_3;
    u16 *temp_r4_4;
    u32 temp_r2;
    u32 var_r7;
    u8 var_r2;
    u8 var_r6;

    var_r7 = 0;
    temp_r2 = gPlayers->unk2A << 0x1C;
    if ((u32)(temp_r2 >> 0x1C) > 5U) {
        var_r2 = gCharacterSelectOrderLUT.unk0;
        var_r6 = gCharacterSelectOrderLUT.unk2;
    } else {
        var_r2 = (&gCharacterSelectOrderLUT)[temp_r2 >> 0x1C];
        var_r6 = (&gCharacterSelectOrderLUT)[(u32)(gPlayers->unk17A << 0x1C) >> 0x1C];
    }
    if (var_r2 == 3) {
        temp_r4 = &strc248->spr70.oamFlags;
        temp_r2_2 = (s32)strc248->unk14 >> 8;
        strc248->unk94 = (s16)temp_r2_2;
        temp_r1 = (s32)strc248->unk18 >> 8;
        strc248->unk96 = (s16)temp_r1;
        if ((u32)strc248->filler0[4] <= 8U) {
            strc248->unk94 = (s16)(temp_r2_2 + 0x12);
            strc248->unk96 = (s16)(temp_r1 - 0xF);
        }
        UpdateSpriteAnimation((Sprite *)temp_r4);
        DisplaySprite((Sprite *)temp_r4);
    }
    if (var_r6 == 3) {
        temp_r4_2 = &strc248->spr70.oamFlags;
        temp_r2_3 = (s32)strc248->vram1C >> 8;
        strc248->unk94 = (s16)temp_r2_3;
        temp_r1_2 = (s32)strc248->unk20 >> 8;
        strc248->unk96 = (s16)temp_r1_2;
        if ((u32)strc248->filler0[4] <= 8U) {
            strc248->unk94 = (s16)(temp_r2_3 + 0x12);
            strc248->unk96 = (s16)(temp_r1_2 - 0xF);
        }
        UpdateSpriteAnimation((Sprite *)temp_r4_2);
        DisplaySprite((Sprite *)temp_r4_2);
    }
    temp_r4_3 = &strc248->sprAC;
    strc248->sprAC.x = (s16)((s32)strc248->unk14 >> 8);
    strc248->sprAC.y = (s16)((s32)strc248->unk18 >> 8);
    if (UpdateSpriteAnimation(temp_r4_3) == ACMD_RESULT__ENDED) {
        var_r7 = 0x01000000U >> 0x18;
    }
    DisplaySprite(temp_r4_3);
    temp_r4_4 = &strc248->bgD8.unk24;
    strc248->bgD8.prevScrollX = (u16)((s32)strc248->vram1C >> 8);
    strc248->bgD8.prevScrollY = (u16)((s32)strc248->unk20 >> 8);
    if (UpdateSpriteAnimation((Sprite *)temp_r4_4) == ACMD_RESULT__ENDED) {
        var_r7 = (u32)(u8)(var_r7 + 1);
    }
    DisplaySprite((Sprite *)temp_r4_4);
    if (var_r7 != 2) {
        return 1U;
    }
    return 0U;
}

u32 sub_80A6CE0(CreditsRelated248 *strc248)
{
    s16 *temp_r4;
    s16 *temp_r4_2;
    s32 temp_r1;
    s32 temp_r1_2;
    u32 temp_r2;
    u32 var_r7;
    u8 *temp_r4_3;
    u8 *temp_r4_4;
    u8 var_r2;
    u8 var_r6;

    var_r7 = 0;
    temp_r2 = gPlayers->unk2A << 0x1C;
    if ((u32)(temp_r2 >> 0x1C) > 5U) {
        var_r2 = gCharacterSelectOrderLUT.unk0;
        var_r6 = gCharacterSelectOrderLUT.unk2;
    } else {
        var_r2 = (&gCharacterSelectOrderLUT)[temp_r2 >> 0x1C];
        var_r6 = (&gCharacterSelectOrderLUT)[(u32)(gPlayers->unk17A << 0x1C) >> 0x1C];
    }
    if (var_r2 == 3) {
        temp_r4 = &strc248->spr48.oamFlags;
        temp_r1 = (s32)strc248->unk14 >> 8;
        strc248->unk6C = (s16)temp_r1;
        strc248->unk6C = (s16)(temp_r1 + 0x12);
        strc248->unk6E = (s16)(((s32)strc248->unk18 >> 8) - 0xF);
        UpdateSpriteAnimation((Sprite *)temp_r4);
        DisplaySprite((Sprite *)temp_r4);
    }
    if (var_r6 == 3) {
        temp_r4_2 = &strc248->spr48.oamFlags;
        temp_r1_2 = (s32)strc248->vram1C >> 8;
        strc248->unk6C = (s16)temp_r1_2;
        strc248->unk6C = (s16)(temp_r1_2 + 0x12);
        strc248->unk6E = (s16)(((s32)strc248->unk20 >> 8) - 0xF);
        UpdateSpriteAnimation((Sprite *)temp_r4_2);
        DisplaySprite((Sprite *)temp_r4_2);
    }
    temp_r4_3 = strc248->fillerD4;
    strc248->unkE4 = (s16)((s32)strc248->unk14 >> 8);
    strc248->unkE6 = (s16)((s32)strc248->unk18 >> 8);
    if (UpdateSpriteAnimation((Sprite *)temp_r4_3) == ACMD_RESULT__ENDED) {
        var_r7 = 0x01000000U >> 0x18;
    }
    DisplaySprite((Sprite *)temp_r4_3);
    temp_r4_4 = &strc248->filler118[0xC];
    strc248->unk134 = (s16)((s32)strc248->vram1C >> 8);
    strc248->unk136 = (s16)((s32)strc248->unk20 >> 8);
    if (UpdateSpriteAnimation((Sprite *)temp_r4_4) == ACMD_RESULT__ENDED) {
        var_r7 = (u32)(u8)(var_r7 + 1);
    }
    DisplaySprite((Sprite *)temp_r4_4);
    if (var_r7 != 2) {
        return 1U;
    }
    return 0U;
}

u32 sub_80A6DD0(CreditsRelated150 *strc150)
{
    Sprite *temp_r4;
    Sprite *temp_r4_2;
    Sprite *temp_r4_4;
    s32 temp_r1;
    s32 temp_r1_2;
    u32 temp_r2;
    u32 var_r7;
    u8 *temp_r4_3;
    u8 var_r2;
    u8 var_r6;

    var_r7 = 0;
    temp_r2 = gPlayers->unk2A << 0x1C;
    if ((u32)(temp_r2 >> 0x1C) > 5U) {
        var_r2 = gCharacterSelectOrderLUT.unk0;
        var_r6 = gCharacterSelectOrderLUT.unk2;
    } else {
        var_r2 = (&gCharacterSelectOrderLUT)[temp_r2 >> 0x1C];
        var_r6 = (&gCharacterSelectOrderLUT)[(u32)(gPlayers->unk17A << 0x1C) >> 0x1C];
    }
    if (var_r2 == 3) {
        temp_r4 = &strc150->spr84;
        temp_r1 = (s32)strc150->unk14 >> 8;
        strc150->spr84.x = (s16)temp_r1;
        strc150->spr84.x = temp_r1 + 0x12;
        strc150->spr84.y = ((s32)strc150->unk18 >> 8) - 0xF;
        UpdateSpriteAnimation(temp_r4);
        DisplaySprite(temp_r4);
    }
    if (var_r6 == 3) {
        temp_r4_2 = &strc150->spr84;
        temp_r1_2 = (s32)strc150->unk1C >> 8;
        strc150->spr84.x = (s16)temp_r1_2;
        strc150->spr84.x = temp_r1_2 + 0x12;
        strc150->spr84.y = ((s32)strc150->unk20 >> 8) - 0xF;
        UpdateSpriteAnimation(temp_r4_2);
        DisplaySprite(temp_r4_2);
    }
    temp_r4_3 = strc150->fillerAC;
    strc150->unkBC = (s16)((s32)strc150->unk14 >> 8);
    strc150->unkBE = (s16)((s32)strc150->unk18 >> 8);
    if (UpdateSpriteAnimation((Sprite *)temp_r4_3) == ACMD_RESULT__ENDED) {
        var_r7 = 0x01000000U >> 0x18;
    }
    DisplaySprite((Sprite *)temp_r4_3);
    temp_r4_4 = &strc150->sprFC;
    strc150->sprFC.x = (s16)((s32)strc150->unk1C >> 8);
    strc150->sprFC.y = (s16)((s32)strc150->unk20 >> 8);
    if (UpdateSpriteAnimation(temp_r4_4) == ACMD_RESULT__ENDED) {
        var_r7 = (u32)(u8)(var_r7 + 1);
    }
    DisplaySprite(temp_r4_4);
    if (var_r7 != 2) {
        return 1U;
    }
    return 0U;
}

void sub_80A6EBC(CreditsRelated12C *strc12C)
{
    gDispCnt |= 0x100;
    *gBgCntRegs = 0x8D07;
    gBgScrollRegs[0][0] = 8;
    gBgScrollRegs[0][1] = 0x30;
    strc12C->bgEC.graphics.dest = (void *)0x06004000;
    strc12C->bgEC.graphics.anim = 0;
    strc12C->bgEC.layoutVram = (u16 *)0x06006800;
    strc12C->bgEC.unk18 = 0;
    strc12C->bgEC.unk1A = 0;
    strc12C->bgEC.tilemapId = 0x132;
    strc12C->bgEC.unk1E = 0;
    strc12C->bgEC.unk20 = 0;
    strc12C->bgEC.unk22 = 0;
    strc12C->bgEC.unk24 = 0;
    strc12C->bgEC.targetTilesX = 0x20;
    strc12C->bgEC.targetTilesY = 0x40;
    strc12C->bgEC.paletteOffset = 0;
    strc12C->bgEC.flags = 0;
    DrawBackground(&strc12C->bgEC);
}

void sub_80A6F34(void *arg0)
{
    u16 sp0;
    Sprite *temp_r0;
    Sprite *temp_r0_2;
    Sprite *temp_r0_3;
    Sprite *temp_r0_4;
    Sprite *temp_r0_5;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r2;
    s32 temp_r6;
    u8 temp_r5;

    temp_r0 = arg0 + 0x74;
    temp_r2 = arg0->unk8;
    arg0->unk74 = temp_r2;
    arg0->unk8 = (s32)(temp_r2 + (gUnknown_080D9F08.unkC << 5));
    temp_r0->anim = gUnknown_080D9F08.unk8;
    temp_r0->variant = gUnknown_080D9F08.unkA;
    temp_r0->prevVariant = 0xFF;
    temp_r0->x = (s16)((s32)arg0->unkC >> 8);
    temp_r0->y = (s16)((s32)arg0->unk10 >> 8);
    temp_r0->oamFlags = 0x500;
    temp_r0->animCursor = 0;
    temp_r0->qAnimDelay = 0;
    temp_r0->animSpeed = 0x10;
    temp_r0->palId = 0;
    temp_r0->frameFlags = 0;
    UpdateSpriteAnimation(temp_r0);
    temp_r0_2 = arg0 + 0x4C;
    temp_r1 = arg0->unk8;
    arg0->unk4C = temp_r1;
    temp_r6 = gUnknown_080D9F08.unk24 << 5;
    arg0->unk8 = (s32)(temp_r1 + temp_r6);
    sp0 = gUnknown_080D9F08.unk20;
    temp_r0_2->anim = gUnknown_080D9F08.unk20;
    temp_r5 = gUnknown_080D9F08.unk22;
    temp_r0_2->variant = temp_r5;
    temp_r0_2->prevVariant = -1U;
    temp_r0_2->x = (s16)((s32)arg0->unkC >> 8);
    temp_r0_2->y = (s16)((s32)arg0->unk10 >> 8);
    temp_r0_2->oamFlags = 0x500;
    temp_r0_2->animCursor = 0;
    temp_r0_2->qAnimDelay = 0;
    temp_r0_2->animSpeed = 0x10;
    temp_r0_2->palId = 0;
    temp_r0_2->frameFlags = 0;
    UpdateSpriteAnimation(temp_r0_2);
    temp_r0_3 = arg0 + 0xC4;
    arg0->unkC4 = (s32)arg0->unk8;
    arg0->unk8 = (s32)(arg0->unk8 + (gUnknown_080D9F08.unk1C << 5));
    temp_r0_3->anim = gUnknown_080D9F08.unk18;
    temp_r0_3->variant = gUnknown_080D9F08.unk1A;
    temp_r0_3->prevVariant = -1U;
    temp_r0_3->x = (s16)((s32)arg0->unkC >> 8);
    temp_r0_3->y = (s16)((s32)arg0->unk10 >> 8);
    temp_r0_3->oamFlags = 0x500;
    temp_r0_3->animCursor = 0;
    temp_r0_3->qAnimDelay = 0;
    temp_r0_3->animSpeed = 0x10;
    temp_r0_3->palId = 1;
    temp_r0_3->frameFlags = 0;
    UpdateSpriteAnimation(temp_r0_3);
    temp_r0_4 = arg0 + 0x9C;
    arg0->unk9C = (s32)arg0->unk8;
    arg0->unk8 = (s32)(arg0->unk8 + temp_r6);
    temp_r0_4->anim = sp0;
    temp_r0_4->variant = temp_r5;
    temp_r0_4->prevVariant = -1U;
    temp_r0_4->x = (s16)((s32)arg0->unkC >> 8);
    temp_r0_4->y = (s16)((s32)arg0->unk10 >> 8);
    temp_r0_4->oamFlags = 0x500;
    temp_r0_4->animCursor = 0;
    temp_r0_4->qAnimDelay = 0;
    temp_r0_4->animSpeed = 0x10;
    temp_r0_4->palId = 1;
    temp_r0_4->frameFlags = 0;
    UpdateSpriteAnimation(temp_r0_4);
    temp_r0_5 = arg0 + 0x24;
    temp_r1_2 = arg0->unk8;
    arg0->unk24 = temp_r1_2;
    arg0->unk8 = (s32)(temp_r1_2 + 0x2A0);
    temp_r0_5->anim = gUnknown_080D9F08.unk0;
    temp_r0_5->variant = gUnknown_080D9F08.unk2;
    temp_r0_5->prevVariant = -1U;
    temp_r0_5->x = (s16)((s32)arg0->unkC >> 8);
    temp_r0_5->y = (s16)((s32)arg0->unk10 >> 8);
    temp_r0_5->oamFlags = 0x500;
    temp_r0_5->animCursor = 0;
    temp_r0_5->qAnimDelay = 0;
    temp_r0_5->animSpeed = 0x10;
    temp_r0_5->palId = 4;
    temp_r0_5->frameFlags = 0;
    UpdateSpriteAnimation(temp_r0_5);
}

void Task_12C_80A70B8(CreditsRelated12C *strc12C)
{
    Vec2_u16 sp0;
    Sprite *temp_r0;
    s32 temp_r1;
    u16 temp_r4;
    u16 temp_r5;

    temp_r5 = gCurTask->data;
    temp_r4 = temp_r5;
    memcpy(&sp0, &gUnknown_080D9F58, 4);
    if ((u32)*temp_r4->unk0 <= 0xBU) {
        temp_r1 = temp_r4->unk18;
        temp_r4->unk18 = (s32)(temp_r1 + 0x20);
        temp_r4->unk10 = (s32)((temp_r1 + 0x9620) - ((gBgScrollRegs[1][1] - 0x50) << 8));
    }
    if ((u32)*temp_r4->unk0 > 0xCU) {
        temp_r0 = temp_r5 + 0x24;
        temp_r0->anim = gUnknown_080D9F08.unk28;
        temp_r0->variant = gUnknown_080D9F08.unk2A;
        temp_r0->prevVariant = 0xFF;
        temp_r0->palId = 0;
        UpdateSpriteAnimation(temp_r0);
        gCurTask->main = Task_12C_80A714C;
        return;
    }
    sub_80A72F4((CreditsRelated12C *)temp_r4, &sp0);
}

void Task_12C_80A714C(CreditsRelated12C *strc12C)
{
    Vec2_u16 sp0;
    s32 temp_r0;
    u16 temp_r4;

    temp_r4 = gCurTask->data;
    memcpy(&sp0, &gUnknown_080D9F58, 4);
    if (*temp_r4->unk0 == 0xE) {
        temp_r0 = temp_r4->unk18 - 0x40;
        temp_r4->unk18 = temp_r0;
        if (temp_r0 <= 0) {
            temp_r4->unk18 = 0;
        }
        temp_r4->unk10 = (s32)((temp_r4->unk18 - ((gBgScrollRegs[1][1] - 0x50) << 8)) + 0x9800);
    } else {
        temp_r4->unk10 = (s32)(0x9800 - ((gBgScrollRegs[1][1] - 0x50) << 8));
    }
    sub_80A72F4((CreditsRelated12C *)temp_r4, &sp0);
    if (((u32)*temp_r4->unk0 > 0x11U) && (gBldRegs.bldY == 0x10)) {
        TaskDestroy(gCurTask);
    }
}

void sub_80A71E8(CreditsRelated12C *strc12C, Vec2_u16 *param1)
{
    Sprite *temp_r2_2;
    s32 temp_r1;
    s32 temp_r1_4;
    s32 temp_r2;
    s32 var_r3;
    u32 var_r0_2;
    u8 *temp_r1_2;
    u8 *temp_r1_3;
    u8 temp_r0;
    u8 var_r0;
    u8 var_r1;
    u8 var_r1_2;
    u8 var_r6;

    param1->x = 8;
    var_r6 = 0;
loop_1:
    var_r3 = 0;
    temp_r2 = strc12C->unkC;
    if (temp_r2 > 0xF000) {
        var_r1 = (u8)((s32)(temp_r2 + 0xFFFF1000) >> 8);
    } else {
        var_r1 = 0;
    }
    if ((u32)var_r1 > 0xFU) {
        var_r1_2 = 0;
        strc12C->unkC = (s32)(temp_r2 + 0xFFFFF000);
        strc12C->filler0[4] += 1;
    } else {
        var_r1_2 = 0;
    }
    temp_r0 = strc12C->filler0[4];
    if (temp_r0 != 0) {
        var_r1_2 = temp_r0;
    }
    temp_r1 = var_r1_2 + var_r6;
    if (temp_r1 > 0x20) {
        if (var_r6 != 0) {
            temp_r1_2 = strc12C->unk0;
            if ((u32)*temp_r1_2 <= 3U) {
                *temp_r1_2 = 4;
            }
        }
        if (var_r6 == 5) {
            temp_r1_3 = strc12C->unk0;
            if ((u32)*temp_r1_3 <= 5U) {
                *temp_r1_3 = 6;
            }
        }
    } else {
        var_r0 = *(temp_r1 + &gUnknown_080D9F5C);
        if ((u32)var_r0 > 3U) {
            var_r0 -= 4;
            var_r3 = 1;
        }
        temp_r2_2 = *((var_r0 * 4) + sp);
        temp_r1_4 = (s32)strc12C->unkC >> 8;
        temp_r2_2->x = (s16)temp_r1_4;
        temp_r2_2->y = (s16)((s32)strc12C->unk10 >> 8);
        temp_r2_2->x = temp_r1_4 - param1->x;
        if (var_r3 != 0) {
            var_r0_2 = temp_r2_2->frameFlags | 0x400;
        } else {
            var_r0_2 = temp_r2_2->frameFlags & 0xFFFFFBFF;
        }
        temp_r2_2->frameFlags = var_r0_2;
        DisplaySprite(temp_r2_2);
        param1->x += 0x10;
        var_r6 += 1;
        if ((u32)var_r6 <= 0xFU) {
            goto loop_1;
        }
    }
}

void sub_80A72F4(CreditsRelated12C *strc12C, Vec2_u16 *param1)
{
    Vec2_u16 sp0;
    s16 temp_r0;
    u8 var_r7;

    memset(&sp0, 0, 4);
    sp0.x = 0x18;
    sp0.y = 3;
    var_r7 = 0;
    do {
        temp_r0 = ((s32)strc12C->unkC >> 8) - param1->x;
        strc12C->unk34 = temp_r0;
        strc12C->unk34 = (s16)(temp_r0 - sp0.x);
        strc12C->unk36 = (s16)(((s32)strc12C->unk10 >> 8) - sp0.y);
        DisplaySprite((Sprite *)&strc12C->filler0[0x24]);
        sp0.x += 0x3C;
        var_r7 += 1;
    } while ((u32)var_r7 <= 3U);
}

void sub_80A735C(u8 *arg0, s32 arg1, u8 arg2, u8 arg3)
{
    Task *var_r0;
    s32 temp_r0;
    s32 temp_r6;
    s32 var_r0_2;
    s32 var_r1;
    u16 *temp_r2;
    u16 *temp_r3;
    u16 temp_r1;
    u32 temp_r1_2;
    u8 temp_r4;
    void *temp_r1_3;

    temp_r4 = arg2;
    if (temp_r4 == 0) {
        var_r0 = TaskCreate(Task_28_80A74F8, 0x28U, 0x100U, 0U, TaskDestructor_80A84D8);
    } else {
        var_r0 = TaskCreate(Task_28_80A7578, 0x28U, 0x100U, 0U, TaskDestructor_80A84D8);
    }
    temp_r1 = var_r0->data;
    temp_r1->unk9 = temp_r4;
    temp_r1->unkA = arg3;
    temp_r1->unk4 = arg1;
    temp_r1->unk14 = 0;
    temp_r1->unk8 = 0;
    temp_r1->unkB = 0;
    temp_r1->unk0 = arg0;
    if (temp_r4 == 0) {
        gDispCnt |= 0x2000;
        temp_r1->unk10 = gWinRegs;
        temp_r1->unkC = &gWinRegs[2];
        if (temp_r1->unkA != 0) {
            var_r1 = 0x3C;
        } else {
            var_r1 = 0x3E;
        }
        gWinRegs[4] |= var_r1;
        gWinRegs[5] |= 0x1F;
        temp_r1->unk1C = 0x100;
        temp_r1->unk18 = 0x2A00;
        temp_r1->unk20 = 0x7300;
        temp_r1_2 = (0x196225 * gPseudoRandom) + 0x3C6EF35F;
        temp_r6 = (temp_r1_2 >> 8) & 0xF;
        temp_r0 = (0x196225 * temp_r1_2) + 0x3C6EF35F;
        gPseudoRandom = temp_r0;
        if (temp_r0 & 2) {
            var_r0_2 = (temp_r6 << 8) + 0x7300;
        } else {
            var_r0_2 = 0x7300 - (temp_r6 << 8);
        }
        temp_r1->unk20 = var_r0_2;
        temp_r1->unk24 = (s32)(0x1B00 - ((gBgScrollRegs[1][1] - 0x50) << 8));
    } else {
        gDispCnt |= 0x4000;
        temp_r1->unk10 = &gWinRegs[1];
        temp_r1->unkC = &(&gWinRegs[1])[2];
        temp_r1_3 = &gWinRegs[1] - 2;
        temp_r1_3->unk8 = 0x3F00;
        temp_r1_3->unkA = (u16)(temp_r1_3->unkA | 0x1F);
        temp_r1->unk1C = 0xF000;
        temp_r1->unk18 = 0xA000;
        temp_r1->unk20 = 0;
        temp_r1->unk24 = 0;
        gBldRegs.bldCnt = 0xBF;
        gBldRegs.bldY = 0;
    }
    temp_r2 = temp_r1->unkC;
    *temp_r2 = 0xF0;
    temp_r3 = temp_r1->unk10;
    *temp_r3 = 0xA0;
    *temp_r2 = (((s32)temp_r1->unk24 >> 8) * 0x101) + ((s32)temp_r1->unk18 >> 8);
    *temp_r3 = (((s32)temp_r1->unk20 >> 8) * 0x101) + ((s32)temp_r1->unk1C >> 8);
}

void Task_28_80A74F8(? arg7C, s32 argFC, ? *argFD)
{
    s8 *temp_r1_2;
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    if (sub_80A84DC(temp_r1) == 1) {
        *temp_r1->unkC = (((s32)temp_r1->unk24 >> 8) * 0x101) + ((s32)temp_r1->unk18 >> 8);
        *temp_r1->unk10 = (((s32)temp_r1->unk20 >> 8) * 0x101) + ((s32)temp_r1->unk1C >> 8);
        temp_r1_2 = temp_r1->unk4;
        if (temp_r1_2 != NULL) {
            *temp_r1_2 = 0;
        }
        TaskDestroy(gCurTask);
        return;
    }
    *temp_r1->unkC = (((s32)temp_r1->unk24 >> 8) * 0x101) + ((s32)temp_r1->unk18 >> 8);
    *temp_r1->unk10 = (((s32)temp_r1->unk20 >> 8) * 0x101) + ((s32)temp_r1->unk1C >> 8);
}

void Task_28_80A7578(? arg7C, s32 argFC, ? *argFD)
{
    s32 temp_r0_2;
    u16 temp_r0;
    u16 temp_r1;
    u8 temp_r2;

    temp_r1 = gCurTask->data;
    if ((u32)temp_r1->unkB > 4U) {
        temp_r1->unk1C = 0x500;
        temp_r1->unk18 = 0;
        temp_r1->unk20 = 0x7100;
        temp_r1->unk24 = 0x5A00;
        gBldRegs.bldCnt = 0x3F7F;
        gBldRegs.bldY = 0;
        gBldRegs.bldAlpha = 0x81F;
        gWinRegs[4] = 0x3F3E;
        *temp_r1->unk0 = 0xB;
        temp_r1->unk24 = 0;
        m4aSongNumStart(0x29BU);
        gCurTask->main = Task_28_80A7674;
        return;
    }
    temp_r0 = temp_r1->unk14 + 1;
    temp_r1->unk14 = temp_r0;
    temp_r2 = temp_r1->unkB;
    if ((u32)temp_r0 >= (u32) * (temp_r2 + &gUnknown_080D9F7D)) {
        temp_r1->unkB = (u8)(temp_r2 + 1);
        temp_r1->unk14 = 0U;
        gBldRegs.bldY = 0xF;
    } else {
        gBldRegs.bldY = 0;
    }
    if (temp_r1->unk8 == 0) {
        temp_r1->unk8 = 1U;
        temp_r0_2 = (gPseudoRandom * 0x196225) + 0x3C6EF35F;
        gPseudoRandom = temp_r0_2;
        if (temp_r0_2 & 2) {
            sub_80A735C(temp_r1->unk0, temp_r1 + 8, 0U, 1U);
            return;
        }
        sub_80A735C(temp_r1->unk0, temp_r1 + 8, 0U, 0U);
    }
}

void Task_28_80A7674(? arg7C, s32 argFC, ? *argFD)
{
    s32 temp_r0;
    u16 temp_r5;

    temp_r5 = gCurTask->data;
    if (sub_80A8524(temp_r5) == 1) {
        temp_r5->unk14 = 0;
        gCurTask->main = sub_80A7738;
        return;
    }
    temp_r5->unk18 = (s32)((0x5A00 - temp_r5->unk24) - ((gBgScrollRegs[1][1] - 0x50) << 8));
    if (temp_r5->unk8 == 0) {
        temp_r5->unk8 = 1U;
        temp_r0 = (gPseudoRandom * 0x196225) + 0x3C6EF35F;
        gPseudoRandom = temp_r0;
        if (temp_r0 & 2) {
            sub_80A735C(temp_r5->unk0, temp_r5 + 8, 0U, 1U);
        } else {
            sub_80A735C(temp_r5->unk0, temp_r5 + 8, 0U, 0U);
        }
    }
    *temp_r5->unkC = (((s32)temp_r5->unk24 >> 8) * 0x101) + ((s32)temp_r5->unk18 >> 8);
    *temp_r5->unk10 = (((s32)temp_r5->unk20 >> 8) * 0x101) + ((s32)temp_r5->unk1C >> 8);
}

void sub_80A7738(? arg7C, s32 argFC, ? *argFD)
{
    s32 temp_r1_2;
    s32 temp_r2;
    u16 temp_r0;
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    temp_r0 = temp_r1->unk14;
    if ((u32)temp_r0 <= 0x78U) {
        temp_r1->unk14 = (u16)(temp_r0 + 1);
        temp_r2 = temp_r1->unk24;
        temp_r1_2 = (0x5A00 - temp_r2) - ((gBgScrollRegs[1][1] - 0x50) << 8);
        temp_r1->unk18 = temp_r1_2;
        *temp_r1->unkC = ((temp_r2 >> 8) * 0x101) + (temp_r1_2 >> 8);
        *temp_r1->unk10 = (((s32)temp_r1->unk20 >> 8) * 0x101) + ((s32)temp_r1->unk1C >> 8);
        if (temp_r1->unk14 == 0x78) {
            *temp_r1->unk0 = 0xC;
        }
    }
    if (*temp_r1->unk0 == 0xE) {
        gCurTask->main = sub_80A77B4;
    }
}

void sub_80A77B4(? arg7C, s32 argFC, ? *argFD)
{
    s32 temp_r1_2;
    s32 temp_r2;
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    if ((u32)temp_r1->unkB > 4U) {
        gDispCnt &= 0xDFFF;
        temp_r1->unk20 = 0x5E00;
        temp_r1->unk24 = 0;
        temp_r1->unk1C = 0x2C00;
        temp_r1->unk18 = 0;
        gBldRegs.bldCnt = 0x3F7F;
        gBldRegs.bldY = 0;
        gBldRegs.bldAlpha = 0x81F;
        gWinRegs[4] = 0x3F3E;
    }
    temp_r2 = temp_r1->unk24;
    temp_r1_2 = (0x5A00 - temp_r2) - ((gBgScrollRegs[1][1] - 0x50) << 8);
    temp_r1->unk18 = temp_r1_2;
    *temp_r1->unkC = ((temp_r2 >> 8) * 0x101) + (temp_r1_2 >> 8);
    *temp_r1->unk10 = (((s32)temp_r1->unk20 >> 8) * 0x101) + ((s32)temp_r1->unk1C >> 8);
    gCurTask->main = sub_80A786C;
}

void sub_80A786C(? arg7C, s32 argFC, ? *argFD)
{
    s32 temp_r1_2;
    s32 temp_r2;
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    temp_r2 = temp_r1->unk24;
    temp_r1_2 = (0x5A00 - temp_r2) - ((gBgScrollRegs[1][1] - 0x50) << 8);
    temp_r1->unk18 = temp_r1_2;
    *temp_r1->unkC = ((temp_r2 >> 8) * 0x101) + (temp_r1_2 >> 8);
    *temp_r1->unk10 = (((s32)temp_r1->unk20 >> 8) * 0x101) + ((s32)temp_r1->unk1C >> 8);
    if (*temp_r1->unk0 == 0xF) {
        temp_r1->unkB = 0;
        temp_r1->unk14 = 0;
        gCurTask->main = sub_80A78D8;
    }
}

void sub_80A78D8(? arg7C, s32 argFC, ? *argFD)
{
    s32 temp_r0_2;
    s32 temp_r1;
    s32 temp_r2;
    u16 temp_r0;
    u16 temp_r5;
    u8 temp_r0_3;

    temp_r5 = gCurTask->data;
    sub_80A85B0(temp_r5);
    temp_r0 = temp_r5->unk14 + 1;
    temp_r5->unk14 = temp_r0;
    if (((u32)temp_r0 >= (u32) * (temp_r5->unkB + &gUnknown_080D9F83)) && (temp_r5->unk8 == 0)) {
        temp_r5->unk8 = 1U;
        temp_r0_2 = (gPseudoRandom * 0x196225) + 0x3C6EF35F;
        gPseudoRandom = temp_r0_2;
        if (temp_r0_2 & 2) {
            sub_80A735C(temp_r5->unk0, temp_r5 + 8, 0U, 1U);
        } else {
            sub_80A735C(temp_r5->unk0, temp_r5 + 8, 0U, 0U);
        }
        temp_r5->unk14 = 0U;
        temp_r0_3 = temp_r5->unkB + 1;
        temp_r5->unkB = temp_r0_3;
        if (temp_r0_3 == 8) {
            *temp_r5->unk0 = 0x10;
            TaskDestroy(gCurTask);
            return;
        }
        goto block_7;
    }
block_7:
    temp_r2 = temp_r5->unk24;
    temp_r1 = (0x5A00 - temp_r2) - ((gBgScrollRegs[1][1] - 0x50) << 8);
    temp_r5->unk18 = temp_r1;
    *temp_r5->unkC = ((temp_r2 >> 8) * 0x101) + (temp_r1 >> 8);
    *temp_r5->unk10 = (((s32)temp_r5->unk20 >> 8) * 0x101) + ((s32)temp_r5->unk1C >> 8);
}

u8 *sub_80A79C4(s32 arg0, u8 *arg1)
{
    ? *sp4;
    ? *var_r3;
    Sprite *temp_r0_2;
    Sprite *temp_r0_3;
    s32 temp_r2;
    u16 temp_r0;
    u8 *var_r7;
    u8 temp_r4;
    u8 var_r1;
    void *temp_r2_2;

    temp_r0 = TaskCreate(Task_8C_80A7ACC, 0x8CU, 0x100U, 0U, TaskDestructor_8C_80A85F0)->data;
    temp_r0->unk0 = arg0;
    temp_r0->unkC = 0x7300;
    temp_r0->unk10 = 0x1400;
    temp_r0->unk6 = 0;
    temp_r0->unk4 = 0;
    temp_r0_2 = temp_r0 + 0x14;
    temp_r0->unk14 = arg1;
    var_r7 = arg1 + (gUnknown_080D9F8C.unk4 << 5);
    temp_r0_2->anim = gUnknown_080D9F8C.unk0;
    temp_r0_2->variant = gUnknown_080D9F8C.unk2;
    temp_r0_2->prevVariant = 0xFF;
    temp_r0_2->x = (s16)((s32)temp_r0->unkC >> 8);
    temp_r0_2->y = (s16)((s32)temp_r0->unk10 >> 8);
    temp_r0_2->oamFlags = 0x280;
    temp_r0_2->animCursor = 0;
    temp_r0_2->qAnimDelay = 0;
    temp_r0_2->animSpeed = 0x10;
    temp_r0_2->palId = 0;
    temp_r0_2->frameFlags = 0;
    UpdateSpriteAnimation(temp_r0_2);
    var_r1 = 0;
    var_r3 = &gUnknown_080D9F8C;
    do {
        temp_r0_3 = temp_r0 + ((var_r1 * 0x28) + 0x3C);
        temp_r0_3->tiles = var_r7;
        temp_r4 = var_r1 + 1;
        temp_r2 = temp_r4 * 8;
        var_r7 += *(temp_r2 + (var_r3 + 4)) << 5;
        temp_r2_2 = temp_r2 + var_r3;
        temp_r0_3->anim = temp_r2_2->unk0;
        temp_r0_3->variant = temp_r2_2->unk2;
        temp_r0_3->prevVariant = 0xFF;
        temp_r0_3->x = 0;
        temp_r0_3->y = 0;
        temp_r0_3->oamFlags = 0x280;
        temp_r0_3->animCursor = 0;
        temp_r0_3->qAnimDelay = 0;
        temp_r0_3->animSpeed = 0x10;
        temp_r0_3->palId = 2;
        temp_r0_3->frameFlags = 0;
        sp4 = var_r3;
        UpdateSpriteAnimation(temp_r0_3);
        var_r1 = temp_r4;
    } while ((u32)var_r1 <= 1U);
    m4aSongNumStart(0x29AU);
    if (gStageData.playerIndex != 0) {
        gStageData.unkC5 = 1;
    }
    sub_80260F0();
    sub_8001E84();
    return var_r7;
}

void Task_8C_80A7ACC(? arg7C, s32 argFC, ? *argFD)
{
    Sprite *temp_r4;
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r1;
    s32 temp_r3;
    u16 temp_r5;
    u8 *temp_r2;

    temp_r5 = gCurTask->data;
    temp_r5->unk10 = (s32)(0x5D00 - ((gBgScrollRegs[1][1] - 0x50) << 8));
    temp_r4 = temp_r5 + 0x14;
    temp_r4->x = (s16)((s32)temp_r5->unkC >> 8);
    temp_r4->y = (s16)((s32)temp_r5->unk10 >> 8);
    UpdateSpriteAnimation(temp_r4);
    if (3 & temp_r5->unk6) {
        DisplaySprite(temp_r4);
    }
    temp_r0 = UpdateSpriteAnimation(temp_r5 + 0x3C);
    if (temp_r0 == ACMD_RESULT__ENDED) {
        temp_r5->unk52 = (s16)temp_r0;
        temp_r5->unk57 = 0xFF;
    }
    temp_r0_2 = UpdateSpriteAnimation(temp_r5 + 0x64);
    if (temp_r0_2 == ACMD_RESULT__ENDED) {
        temp_r5->unk7A = (s16)temp_r0_2;
        temp_r5->unk7F = 0xFF;
    }
    temp_r2 = temp_r5->unk0;
    if (*temp_r2 == 0x10) {
        gCurTask->main = sub_80A85F4;
        return;
    }
    temp_r5->unk6 = (u16)(temp_r5->unk6 + 1);
    if ((temp_r5->unk4 & 0xFFFF00FF) == 0xB40000) {
        temp_r5->unk4 = 1;
        sub_80A735C(temp_r2, 0, 1U, 0U);
    }
    temp_r3 = (0x196225 * gPseudoRandom) + 0x3C6EF35F;
    gPseudoRandom = temp_r3;
    if ((u32)temp_r5->unk6 >= (u32)((((u32)temp_r3 >> 8) & 0x1F) + 0xC4)) {
        temp_r1 = (0x196225 * temp_r3) + 0x3C6EF35F;
        gPseudoRandom = temp_r1;
        temp_r5->unk6 = 0xB5U;
        sub_80A866C(temp_r5 + (((((u32)temp_r1 >> 8) & 1) * 0x28) + 0x3C));
    }
}

void TaskDestructor_80A7BFC(Task *arg0) { }

void Task_248_80A7C00(? arg7C, s32 argFC, ? *argFD)
{
    u16 temp_r0;

    temp_r0 = gCurTask->data;
    UpdateBgAnimationTiles(temp_r0 + 0xD8);
    sub_80A5824((CreditsRelated248 *)temp_r0);
    sub_80A490C((CreditsRelated248 *)temp_r0, 2U, 1U);
    gCurTask->main = Task_248_80A7C40;
}

void Task_248_80A7C40(? arg7C, s32 argFC, ? *argFD)
{
    u16 temp_r0;

    temp_r0 = gCurTask->data;
    UpdateBgAnimationTiles(temp_r0 + 0xD8);
    if ((sub_80A5824((CreditsRelated248 *)temp_r0) == 0) && (**temp_r0 == 0xA)) {
        gCurTask->main = Task_248_80A7C7C;
    }
}

void Task_248_80A7C7C(? arg7C, s32 argFC, ? *argFD)
{
    u16 temp_r0;

    temp_r0 = gCurTask->data;
    UpdateBgAnimationTiles(temp_r0 + 0xD8);
    sub_80A5824((CreditsRelated248 *)temp_r0);
    if (*temp_r0->unk0 == 0xB) {
        temp_r0->unk16 = 0;
        gCurTask->main = Task_248_80A7CB8;
    }
}

void Task_248_80A7CB8(? arg7C, s32 argFC, ? *argFD)
{
    u16 temp_r0;

    temp_r0 = gCurTask->data;
    UpdateBgAnimationTiles(temp_r0 + 0xD8);
    sub_80A5824((CreditsRelated248 *)temp_r0);
    if ((sub_80A563C((CreditsRelated248 *)temp_r0) == 1) && (*temp_r0->unk0 == 0xC)) {
        temp_r0->unk18 = 0;
        gCurTask->main = Task_248_80A4EDC;
    }
}

void Task_248_80A7D00(? arg7C, s32 argFC, ? *argFD)
{
    u16 temp_r0;

    temp_r0 = gCurTask->data;
    UpdateBgAnimationTiles(temp_r0 + 0xD8);
    sub_80A5698((CreditsRelated248 *)temp_r0);
    if (sub_80A55DC((CreditsRelated248 *)temp_r0) == 1) {
        **temp_r0 = 0xF;
        gCurTask->main = Task_248_80A7D40;
    }
}

void Task_248_80A7D40(? arg7C, s32 argFC, ? *argFD)
{
    u16 temp_r0;

    temp_r0 = gCurTask->data;
    UpdateBgAnimationTiles(temp_r0 + 0xD8);
    sub_80A5698((CreditsRelated248 *)temp_r0);
    if (**temp_r0 == 0x10) {
        gCurTask->main = Task_248_80A7D7C;
    }
}

void Task_248_80A7D7C(? arg7C, s32 argFC, ? *argFD)
{
    u16 temp_r0;
    u8 temp_r0_2;

    temp_r0 = gCurTask->data;
    UpdateBgAnimationTiles(temp_r0 + 0xD8);
    sub_80A5698((CreditsRelated248 *)temp_r0);
    temp_r0_2 = **temp_r0;
    if (temp_r0_2 == 0x12) {
        sub_80A490C((CreditsRelated248 *)temp_r0, 4U, 1U);
        goto block_4;
    }
    if (temp_r0_2 == 0x14) {
        sub_80A4A88((CreditsRelated248 *)temp_r0, 0U, 1U);
    block_4:
        gCurTask->main = Task_248_80A7DD0;
    }
}

void Task_248_80A7DD0(? arg7C, s32 argFC, ? *argFD)
{
    u16 temp_r4;

    temp_r4 = gCurTask->data;
    sub_80A5824((CreditsRelated248 *)temp_r4);
    UpdateBgAnimationTiles(temp_r4 + 0xD8);
    if (**temp_r4 == 0x15) {
        gCurTask->main = Task_248_80A52DC;
        return;
    }
    if (gBldRegs.bldY == 0x10) {
        TaskDestroy(gCurTask);
    }
}

void Task_248_80A7E24(? arg7C, s32 argFC, ? *argFD)
{
    u16 temp_r0;

    temp_r0 = gCurTask->data;
    gDispCnt |= 0x200;
    temp_r0->unk20 = 0x400;
    gBgScrollRegs[1][0] = 4;
    gBgScrollRegs[1][1] = ((s32)temp_r0->unk24 >> 8) + 0x50;
    sub_80A4A88((CreditsRelated248 *)temp_r0, 0U, 0U);
    gCurTask->main = Task_248_80A5050;
}

void TaskDestructor_PreCreditsCutscene(Task *arg0) { EwramFree(arg0->data->unk14C); }

void Task_150_PreCreditsCutsceneNormalInit(? arg7C, s32 argFC, ? *argFD)
{
    u16 temp_r2;

    temp_r2 = gCurTask->data;
    if (temp_r2->unk6 == 0) {
        sub_80A5B08((CreditsRelated150 *)temp_r2);
        temp_r2->unk6 = (u8)(temp_r2->unk6 + 1);
        return;
    }
    temp_r2->unkC = sub_80A828C(temp_r2 + 4, temp_r2->unkC, temp_r2 + 0x14);
    temp_r2->unk6 = 0U;
    gCurTask->main = Task_150_80A6090;
}

void Task_248_80A7EE4(? arg7C, s32 argFC, ? *argFD)
{
    u16 temp_r4;

    temp_r4 = gCurTask->data;
    sub_80A6BDC((CreditsRelated248 *)temp_r4);
    sub_80A5CB0((CreditsRelated150 *)temp_r4, 5U, 0U);
    gCurTask->main = Task_248_80A7F18;
}

void Task_248_80A7F18(? arg7C, s32 argFC, ? *argFD)
{
    u16 temp_r5;

    temp_r5 = gCurTask->data;
    if (sub_80A6A5C((CreditsRelated248 *)temp_r5) == 0) {
        temp_r5->unk4 = 0xA;
        temp_r5->unkC = sub_80A79C4(temp_r5 + 4, temp_r5->unkC);
        gCurTask->main = Task_248_80A7FAC;
    }
}

void Task_248_80A7F58(? arg7C, s32 argFC, ? *argFD)
{
    u16 temp_r0;
    u16 temp_r0_2;
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    sub_80A6A5C((CreditsRelated248 *)temp_r1);
    temp_r0 = temp_r1->unk8;
    if ((u32)temp_r0 <= 0xB3U) {
        temp_r0_2 = temp_r0 + 1;
        temp_r1->unk8 = temp_r0_2;
        if (temp_r0_2 == 0xB4) {
            temp_r1->unk4 = 8U;
        }
    }
    if (temp_r1->unk4 == 9) {
        temp_r1->unk8 = 0U;
        sub_80A5CB0((CreditsRelated150 *)temp_r1, 4U, 1U);
        gCurTask->main = Task_248_80A7EE4;
    }
}

void Task_248_80A7FAC(? arg7C, s32 argFC, ? *argFD)
{
    u16 temp_r4;

    temp_r4 = gCurTask->data;
    sub_80A6A5C((CreditsRelated248 *)temp_r4);
    if (temp_r4->unk4 == 0xB) {
        gCurTask->main = Task_248_80A7FDC;
    }
}

void Task_248_80A7FDC(? arg7C, s32 argFC, ? *argFD)
{
    s32 temp_r1;
    s32 temp_r1_2;
    u16 temp_r5;

    temp_r5 = gCurTask->data;
    sub_80A6A5C((CreditsRelated248 *)temp_r5);
    if (temp_r5->unk4 == 0xB) {
        temp_r1 = temp_r5->unk30;
        temp_r5->unk30 = (s32)(temp_r1 + 0x20);
        temp_r1_2 = (temp_r1 + 0x7820) - ((gBgScrollRegs[1][1] - 0x50) << 8);
        temp_r5->unk18 = temp_r1_2;
        temp_r5->unk20 = temp_r1_2;
    }
    if (temp_r5->unk4 == 0xD) {
        temp_r5->unk8 = 0;
        temp_r5->unk6 = 0;
        temp_r5->unkC = sub_80A9BD8(temp_r5->unkC, -0x14, -0x5A, 0, temp_r5 + 4);
        gCurTask->main = Task_248_80A664C;
    }
}

void sub_80A805C(? arg7C, s32 argFC, ? *argFD)
{
    u16 temp_r4;

    temp_r4 = gCurTask->data;
    sub_80A6A5C((CreditsRelated248 *)temp_r4);
    if (temp_r4->unk4 == 0x16) {
        sub_80A8C80();
        TaskDestroy(gCurTask);
    }
}

void Task_248_80A808C(? arg7C, s32 argFC, ? *argFD)
{
    s32 temp_r0;
    s32 temp_r1_2;
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    sub_80A6BDC((CreditsRelated248 *)temp_r1);
    if (temp_r1->unk4 == 0xE) {
        temp_r0 = temp_r1->unk30 - 0x40;
        temp_r1->unk30 = temp_r0;
        if (temp_r0 <= 0) {
            temp_r1->unk30 = 0;
        }
        temp_r1_2 = (temp_r1->unk30 + 0x7800) - ((gBgScrollRegs[1][1] - 0x50) << 8);
        temp_r1->unk18 = temp_r1_2;
        temp_r1->unk20 = temp_r1_2;
    }
    if (temp_r1->unk4 == 0x10) {
        gCurTask->main = Task_248_80A6700;
    }
}

void Task_150_80A80EC(? arg7C, s32 argFC, ? *argFD)
{
    u16 temp_r0;

    temp_r0 = gCurTask->data;
    sub_80239A8(temp_r0->unk14C);
    sub_80A825C(temp_r0);
    if (sub_80A81E8(temp_r0) == 1) {
        temp_r0->unk8 = 0;
        temp_r0->unk6 = 0;
        temp_r0->unk4 = 0x15;
        sub_80A5EF0((CreditsRelated150 *)temp_r0, 0xAU, 1U);
        gCurTask->main = Task_150_80A690C;
        return;
    }
    sub_80A6DD0((CreditsRelated150 *)temp_r0);
}

void Task_150_80A814C(? arg7C, s32 argFC, ? *argFD)
{
    u16 temp_r0;
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    sub_80A8234(temp_r1);
    temp_r0 = temp_r1->unk8;
    if ((u32)temp_r0 <= 0x77U) {
        temp_r1->unk8 = (u16)(temp_r0 + 1);
        return;
    }
    if (sub_80A820C(temp_r1) == 1) {
        temp_r1->unk8 = 0U;
        sub_80A5E8C((CreditsRelated150 *)temp_r1, 0xEU, 0U);
        gCurTask->main = Task_150_80A69E4;
    }
}

void Task_150_80A8198(? arg7C, s32 argFC, ? *argFD)
{
    s32 temp_r0;
    u16 temp_r0_2;
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    sub_80A8234(temp_r1);
    if ((u32)gBldRegs.bldY <= 0xFU) {
        temp_r0 = temp_r1->unk10 + 0x20;
        temp_r1->unk10 = temp_r0;
        gBldRegs.bldY = (u16)(temp_r0 >> 8);
        return;
    }
    temp_r0_2 = temp_r1->unk8 + 1;
    temp_r1->unk8 = temp_r0_2;
    if ((u32)temp_r0_2 > 0xB4U) {
        sub_80A872C(1U);
        TaskDestroy(gCurTask);
    }
}

s32 sub_80A81E8(void *arg0)
{
    s32 temp_r1;

    temp_r1 = arg0->unk14;
    if (temp_r1 <= 0xFFFFD800) {
        return 1;
    }
    arg0->unk14 = (s32)(temp_r1 + 0xFFFFFB00);
    return 0;
}

s32 sub_80A820C(void *arg0)
{
    s32 temp_r2;

    temp_r2 = arg0->unk18;
    if (temp_r2 > 0x78FF) {
        arg0->unk18 = 0x7900;
        return 1;
    }
    arg0->unk18 = (s32)(temp_r2 + 0x300);
    return 0;
}

s32 sub_80A8234(void *arg0)
{
    Sprite *temp_r4;
    s32 temp_r5;

    temp_r4 = arg0 + 0xD4;
    temp_r4->x = (s16)((s32)arg0->unk14 >> 8);
    temp_r4->y = (s16)((s32)arg0->unk18 >> 8);
    temp_r5 = UpdateSpriteAnimation(temp_r4);
    DisplaySprite(temp_r4);
    return temp_r5;
}

void sub_80A825C(void *arg0)
{
    s32 temp_r2;
    s8 var_r3;

    var_r3 = 0;
    temp_r2 = arg0->unk24;
    if (temp_r2 > 0xFFFF2E00) {
        arg0->unk24 = (s32)(temp_r2 + 0xFFFFFB00);
        var_r3 = 0xFFFB;
    }
    arg0->unk14C->unkD = var_r3;
}

u8 *sub_80A828C(u8 *arg0, u8 *arg1, s32 arg2)
{
    Task *var_r0;
    s32 var_r0_2;
    u16 temp_r1;

    if (*arg0 == 0x10) {
        var_r0 = TaskCreate(Task_12C_80A70B8, 0x12CU, 0x100U, 0U, TaskDestructor_12C_80A8324);
    } else {
        var_r0 = TaskCreate(Task_12C_80A8328, 0x12CU, 0x100U, 0U, TaskDestructor_12C_80A8324);
    }
    temp_r1 = var_r0->data;
    temp_r1->unk0 = arg0;
    temp_r1->unk8 = arg1;
    temp_r1->unk4 = 0;
    temp_r1->unk6 = 0;
    temp_r1->unk14 = 0;
    temp_r1->unk18 = 0;
    temp_r1->unk1C = arg2;
    temp_r1->unk20 = (s32)(arg2 + 4);
    if (*arg0 == 0x10) {
        var_r0_2 = 0xF000;
    } else {
        var_r0_2 = 0xA000;
    }
    temp_r1->unkC = var_r0_2;
    temp_r1->unk10 = 0x9600;
    sub_80A6F34((void *)temp_r1);
    sub_80A6EBC((CreditsRelated12C *)temp_r1);
    return temp_r1->unk8;
}

void TaskDestructor_12C_80A8324(Task *arg0) { }

void Task_12C_80A8328(? arg7C, s32 argFC, ? *argFD)
{
    Vec2_u16 sp0;
    u16 temp_r4;

    temp_r4 = gCurTask->data;
    memset(&sp0, 0, 4);
    sub_80A71E8((CreditsRelated12C *)temp_r4, &sp0);
    gCurTask->main = sub_80A8360;
}

void sub_80A8360(? arg7C, s32 argFC, ? *argFD)
{
    Vec2_u16 sp0;
    u16 temp_r4;
    u8 temp_r5;

    temp_r4 = gCurTask->data;
    memset(&sp0, 0, 4);
    sub_80A71E8((CreditsRelated12C *)temp_r4, &sp0);
    temp_r5 = M2C_ERROR(/* Read from unset register $r0 */);
    if (temp_r5 != 0) {
        sub_80A72F4((CreditsRelated12C *)temp_r4, &sp0);
        if (temp_r5 == 2) {
            temp_r4->unk6 = 0;
            gCurTask->main = sub_80A83C8;
            return;
        }
    }
    if ((u32)(u8)(*temp_r4->unk0 - 1) <= 6U) {
        sub_80A8468(temp_r4);
    }
}

void sub_80A83C8(? arg7C, s32 argFC, ? *argFD)
{
    Vec2_u16 sp0;
    u16 temp_r0;
    u16 temp_r4;
    u8 *temp_r1;

    temp_r4 = gCurTask->data;
    memcpy(&sp0, &gUnknown_080D9F58, 4);
    sub_80A72F4((CreditsRelated12C *)temp_r4, &sp0);
    temp_r1 = temp_r4->unk0;
    if ((u32)*temp_r1 > 7U) {
        temp_r0 = temp_r4->unk6 + 1;
        temp_r4->unk6 = temp_r0;
        if ((u32)temp_r0 > 0x77U) {
            temp_r4->unk6 = 0U;
            *temp_r1 = 9;
            gCurTask->main = sub_80A8424;
        }
    }
}

void sub_80A8424(? arg7C, s32 argFC, ? *argFD)
{
    Vec2_u16 sp0;
    u16 temp_r4;

    temp_r4 = gCurTask->data;
    memcpy(&sp0, &gUnknown_080D9F58, 4);
    sub_80A72F4((CreditsRelated12C *)temp_r4, &sp0);
    if (**temp_r4 == 0xB) {
        gCurTask->main = Task_12C_80A70B8;
    }
}

void sub_80A8468(void *arg0)
{
    s32 var_r1;
    u32 temp_r0;

    temp_r0 = *arg0->unk0 - 1;
    switch (temp_r0) {
        case 1:
            var_r1 = 0x200;
        block_8:
            arg0->unkC = (s32)(arg0->unkC + var_r1);
            break;
        case 2:
            var_r1 = 0x210;
            goto block_8;
        case 3:
            var_r1 = 0x210;
            goto block_8;
        case 4:
            var_r1 = 0x210;
            goto block_8;
        case 5:
            var_r1 = 0x200;
            goto block_8;
        case 0:
        case 6:
            var_r1 = 0x100;
            goto block_8;
    }
}

void TaskDestructor_80A84D8(Task *arg0) { }

s32 sub_80A84DC(void *arg0)
{
    s32 temp_r0;

    temp_r0 = arg0->unk24;
    if (temp_r0 != 0) {
        arg0->unk24 = (s32)(temp_r0 + 0xFFFFFB00);
    } else {
        arg0->unk18 = (s32)(arg0->unk18 + 0xFFFFFB00);
    }
    if ((s32)arg0->unk24 < 0) {
        arg0->unk24 = 0;
    }
    if ((s32)((s32)(arg0->unk24 + arg0->unk18) >> 8) > 0) {
        return 0;
    }
    return 1;
}

s32 sub_80A8524(void *arg0)
{
    s32 temp_r0;
    s32 temp_r1;

    temp_r0 = arg0->unk20;
    if ((temp_r0 <= 0x5E00) || (temp_r1 = temp_r0 - 0x10, arg0->unk20 = temp_r1, (temp_r1 <= 0x5DFF))) {
        arg0->unk20 = 0x5E00;
        return 1;
    }
    arg0->unk1C = (s32)(((0x7300 - temp_r1) * 2) + 0x200);
    return 0;
}

s32 sub_80A8560(void *arg0)
{
    s32 temp_r2;

    temp_r2 = arg0->unk24;
    if (temp_r2 > 0) {
        if ((s32)((gBgScrollRegs[1][1] - 0x50) << 8) > -0x5A) {
            arg0->unk24 = (s32)((temp_r2 - 0x10) - ((gBgScrollRegs[1][1] - 0x50) << 8));
        } else {
            arg0->unk24 = (s32)(temp_r2 - 0x40);
        }
        if ((s32)arg0->unk24 < 0) {
            goto block_5;
        }
        return 0;
    }
block_5:
    arg0->unk24 = 0;
    return 1;
}

s32 sub_80A85B0(void *arg0)
{
    s32 temp_r0;
    s32 temp_r1;

    temp_r0 = arg0->unk20;
    if ((temp_r0 > 0x72FF) || (temp_r1 = temp_r0 + 0x10, arg0->unk20 = temp_r1, (temp_r1 > 0x72FF))) {
        arg0->unk20 = 0x7300;
        arg0->unk1C = 0;
        return 1;
    }
    arg0->unk1C = (s32)(((0x7300 - temp_r1) * 2) + 0x200);
    return 0;
}

void TaskDestructor_8C_80A85F0(Task *arg0) { }

void sub_80A85F4(? arg7C, s32 argFC, ? *argFD)
{
    s32 temp_r0;
    s32 temp_r0_2;
    u16 temp_r4;

    temp_r4 = gCurTask->data;
    temp_r0 = UpdateSpriteAnimation(temp_r4 + 0x3C);
    if (temp_r0 == ACMD_RESULT__ENDED) {
        temp_r4->unk52 = (s16)temp_r0;
        temp_r4->unk57 = 0xFF;
    }
    temp_r0_2 = UpdateSpriteAnimation(temp_r4 + 0x64);
    if (temp_r0_2 == ACMD_RESULT__ENDED) {
        temp_r4->unk7A = (s16)temp_r0_2;
        temp_r4->unk7F = 0xFF;
    }
    if (*temp_r4->unk0 == 0x11) {
        TaskDestroy(gCurTask);
    }
}

void sub_80A866C(s32 arg0)
{
    s32 temp_r0;
    u16 temp_r2;

    temp_r2 = TaskCreate(Task_14_80A86D8, 0x14U, 0x100U, 0U, TaskDestructor_14_80A86D4)->data;
    temp_r2->unk0 = 0;
    temp_r2->unk4 = 0;
    temp_r2->unk10 = arg0;
    temp_r0 = (gPseudoRandom * 0x196225) + 0x3C6EF35F;
    gPseudoRandom = temp_r0;
    temp_r2->unk8 = (s32)(((((u32)temp_r0 >> 8) & 0x1F) << 8) + 0x5F00);
    temp_r2->unkC = 0x4600;
}

void TaskDestructor_14_80A86D4(Task *arg0) { }

void Task_14_80A86D8(? arg7C, s32 argFC, ? *argFD)
{
    Sprite *temp_r0;
    s32 temp_r0_2;
    s32 temp_r1;
    u16 temp_r4;

    temp_r4 = gCurTask->data;
    temp_r0 = temp_r4->unk10;
    temp_r0->x = (s16)((s32)temp_r4->unk8 >> 8);
    temp_r1 = (s32)temp_r4->unkC >> 8;
    temp_r0->y = (s16)temp_r1;
    temp_r0->y = (temp_r1 + 0x50) - (u16)gBgScrollRegs[1][1];
    DisplaySprite(temp_r0);
    temp_r0_2 = temp_r4->unkC + 0xFFFFFF00;
    temp_r4->unkC = temp_r0_2;
    if (temp_r0_2 < 0xFFFFEC00) {
        TaskDestroy(gCurTask);
    }
}

void sub_80A872C(u8 arg0)
{
    Background *temp_r3;
    Task *var_r4;
    u16 temp_r0;
    u8 temp_r6;
    u8 var_r0;
    u8 var_r2;

    temp_r6 = arg0;
    gDispCnt = 0x1040;
    if (temp_r6 == 0) {
        var_r4 = TaskCreate(Task_90_80A8858, 0x90U, 0x100U, 0U, TaskDestructor_90_80A98AC);
        m4aMPlayAllStop();
    } else {
        var_r4 = TaskCreate(Task_90_80A8AC4, 0x90U, 0x100U, 0U, TaskDestructor_90_80A98AC);
    }
    temp_r0 = var_r4->data;
    temp_r0->unk2 = 0U;
    temp_r0->unk3 = 0;
    temp_r0->unk4 = 0;
    temp_r0->unk6 = 0;
    temp_r0->unk1 = 0U;
    if (temp_r6 != 0) {
        if ((u32)temp_r6 > 0xAU) {
            var_r0 = 0xB;
            goto block_8;
        }
        if ((u32)(u8)(temp_r6 - 1) <= 5U) {
            var_r0 = 0xA;
        block_8:
            temp_r0->unk1 = var_r0;
        }
    }
    temp_r0->unk0 = temp_r6;
    temp_r0->unk8 = 0;
    temp_r0->unkC = 0;
    *gBgSprites_Unknown1 = 0;
    gBgSprites_Unknown2[0][0] = 0;
    gBgSprites_Unknown2[0][1] = 0;
    gBgSprites_Unknown2[0][2] = 0xFF;
    gBgSprites_Unknown2[0][3] = 0x40;
    *gBgCntRegs = 0x5C81;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    temp_r3 = temp_r0 + 0x10;
    var_r2 = *(temp_r0->unk0 + temp_r0->unk2 + &gUnknown_080D9FC3);
    if (temp_r0->unk1 == 0xB) {
        var_r2 = 0xB;
    }
    temp_r3->graphics.dest = (void *)0x06000000;
    temp_r3->graphics.anim = 0;
    temp_r3->layoutVram = (u16 *)0x0600E000;
    temp_r3->unk18 = 0;
    temp_r3->unk1A = 0;
    temp_r3->tilemapId = *((var_r2 * 2) + &gUnknown_080D9FA4);
    temp_r3->unk1E = 0;
    temp_r3->unk20 = 0;
    temp_r3->unk22 = 0;
    temp_r3->unk24 = 0;
    temp_r3->targetTilesX = 0x40;
    temp_r3->targetTilesY = 0x20;
    temp_r0->unk3A = 0;
    temp_r3->flags = 4;
    DrawBackground(temp_r3);
}

void Task_90_80A8858(? arg7C, s32 argFC, ? *argFD)
{
    u16 temp_r1;
    u16 var_r0;

    temp_r1 = gCurTask->data;
    if (temp_r1->unk3 == 0) {
        gDispCnt |= 0x4000;
        gWinRegs[1] = 0xF0;
        gWinRegs[3] = 0xA0;
        if ((u32)temp_r1->unk1 <= 2U) {
            var_r0 = 0x2100;
        } else {
            var_r0 = 0x3FFF;
        }
        gWinRegs[4] = var_r0;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3FBF;
        gBldRegs.bldY = 0x10;
        temp_r1->unk4 = 0x1000U;
        temp_r1->unk3 = 1U;
    }
    if (gBldRegs.bldY != 0) {
        gBldRegs.bldY = (u16)((u16)temp_r1->unk4 >> 8);
        if (temp_r1->unk1 == 0) {
            temp_r1->unk4 = (u16)(temp_r1->unk4 - 0x40);
            return;
        }
        temp_r1->unk4 = (u16)(temp_r1->unk4 + 0xFFFFFF00);
        return;
    }
    gBldRegs.bldY = gBldRegs.bldY;
    temp_r1->unk1 = (u8)(temp_r1->unk1 + 1);
    gCurTask->main = sub_80A8918;
}

void sub_80A8918(? arg7C, s32 argFC, ? *argFD)
{
    Background *temp_r0_3;
    u16 temp_r0_2;
    u16 temp_r1;
    u16 var_r0;
    u32 var_r3;
    u8 temp_r0;
    u8 temp_r0_4;
    u8 temp_r1_2;
    u8 temp_r2;
    u8 temp_r2_2;
    u8 var_r1;

    temp_r1 = gCurTask->data;
    if (temp_r1->unk3 != 0) {
        gDispCnt |= 0x4000;
        gWinRegs[1] = 0xF0;
        gWinRegs[3] = 0xA0;
        if ((u32)temp_r1->unk1 <= 2U) {
            var_r0 = 0x2100;
        } else {
            var_r0 = 0x3FFF;
        }
        gWinRegs[4] = var_r0;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3FFF;
        temp_r1->unk4 = 0U;
        temp_r1->unk3 = 0U;
    }
    if ((u32)gBldRegs.bldY <= 0xFU) {
        gBldRegs.bldY = (u16)((u16)temp_r1->unk4 >> 8);
        if (temp_r1->unk0 == 0) {
            temp_r1->unk4 = (u16)(temp_r1->unk4 + 0x40);
            return;
        }
        temp_r1->unk4 = (u16)(temp_r1->unk4 + 0x100);
        return;
    }
    temp_r0 = temp_r1->unk0;
    if (temp_r0 == 0) {
        temp_r2 = temp_r1->unk1;
        var_r3 = 0x3C;
        if (temp_r2 == 1) {
            var_r3 = 0x78;
        }
        temp_r0_2 = temp_r1->unk6;
        if ((u32)temp_r0_2 < var_r3) {
            temp_r1->unk6 = (u16)(temp_r0_2 + 1);
            return;
        }
        if (temp_r2 == 1) {
            gDispCnt |= 0x100;
            temp_r1->unk1 = (u8)(temp_r1->unk1 + 1);
            m4aSongNumStart(0x4FU);
            sub_80A8E54();
            goto block_21;
        }
        goto block_16;
    }
block_16:
    if ((u32)temp_r0 > 0xBU) {
        var_r1 = temp_r0 - 0xB;
    } else {
        var_r1 = temp_r1->unk0;
    }
    temp_r2_2 = temp_r1->unk2;
    if ((u32)temp_r2_2 < (u32) * (var_r1 + &gUnknown_080D9FBC)) {
        temp_r0_3 = temp_r1 + 0x10;
        temp_r1->unk1 = (u8)(temp_r1->unk1 + 1);
        temp_r1->unk2 = (u8)(temp_r2_2 + 1);
        temp_r0_3->graphics.dest = (void *)0x06000000;
        temp_r0_3->graphics.anim = 0;
        temp_r0_3->layoutVram = (u16 *)0x0600E000;
        temp_r0_3->unk18 = 0;
        temp_r0_3->unk1A = 0;
        temp_r0_3->tilemapId = *(((temp_r1->unk0 + temp_r1->unk2) * 2) + &gUnknown_080D9FA4);
        temp_r0_3->unk1E = 0;
        temp_r0_3->unk20 = 0;
        temp_r0_3->unk22 = 0;
        temp_r0_3->unk24 = 0;
        temp_r0_3->targetTilesX = 0x20;
        temp_r0_3->targetTilesY = 0x20;
        temp_r1->unk3A = 0;
        temp_r0_3->flags = 4;
        DrawBackground(temp_r0_3);
        temp_r1->unk6 = 0U;
    block_21:
        gCurTask->main = Task_90_80A8AC4;
        return;
    }
    temp_r0_4 = temp_r1->unk0;
    if ((u32)temp_r0_4 > 0xBU) {
        temp_r1->unk0 = (u8)(temp_r0_4 - 0xB);
    }
    temp_r1_2 = temp_r1->unk0;
    if (temp_r1_2 == 0) {
        CreatePreCreditsCutscene(1U);
    } else if ((u32)(u8)(temp_r1_2 - 1) <= 4U) {
        sub_80A9920((u8)(temp_r1_2 + 0xB));
    }
    TaskDestroy(gCurTask);
}

void Task_90_80A8AC4(? arg7C, s32 argFC, ? *argFD)
{
    u16 temp_r1;
    u16 var_r0;

    temp_r1 = gCurTask->data;
    if (temp_r1->unk3 == 0) {
        gDispCnt |= 0x4000;
        gWinRegs[1] = 0xF0;
        gWinRegs[3] = 0xA0;
        if ((temp_r1->unk0 == 0) && ((u32)temp_r1->unk1 <= 2U)) {
            var_r0 = 0x2100;
        } else {
            gDispCnt |= 0x100;
            var_r0 = 0x3FFF;
        }
        gWinRegs[4] = var_r0;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3FFF;
        gBldRegs.bldY = 0x10;
        temp_r1->unk4 = 0x1000U;
        temp_r1->unk3 = 1U;
    }
    if (gBldRegs.bldY != 0) {
        gBldRegs.bldY = (u16)((u16)temp_r1->unk4 >> 8);
        if ((u16)temp_r1->unk0 == 0) {
            temp_r1->unk4 = (u16)(temp_r1->unk4 - 0x10);
            return;
        }
        if (temp_r1->unk0 == 0) {
            temp_r1->unk4 = (u16)(temp_r1->unk4 - 0x40);
            return;
        }
        temp_r1->unk4 = (u16)(temp_r1->unk4 + 0xFFFFFF00);
        return;
    }
    gBldRegs.bldY = gBldRegs.bldY;
    if (temp_r1->unk0 == 6) {
        temp_r1->unk6 = 0x12C;
    }
    gCurTask->main = sub_80A8BAC;
}

void sub_80A8BAC(? arg7C, s32 argFC, ? *argFD)
{
    u16 temp_r0_2;
    u16 temp_r1;
    u32 var_r3;
    u8 temp_r0;
    void (*var_r0)(?, s32, ? *);

    temp_r1 = gCurTask->data;
    temp_r0 = temp_r1->unk1;
    switch (temp_r0) { /* irregular */
        case 2:
            var_r3 = 0x168;
            break;
        case 10:
            var_r3 = 0x12C;
            break;
        case 11:
            var_r3 = 0x258;
            break;
        default:
            var_r3 = 0xB4;
            break;
    }
    temp_r0_2 = temp_r1->unk6 + 1;
    temp_r1->unk6 = temp_r0_2;
    if ((u32)temp_r0_2 >= var_r3) {
        temp_r1->unk6 = 0U;
        if (temp_r1->unk0 == 6) {
            var_r0 = sub_80A8C20;
        } else {
            temp_r1->unk6 = 0U;
            var_r0 = sub_80A8918;
        }
        gCurTask->main = var_r0;
    }
}

void sub_80A8C20(? arg7C, s32 argFC, ? *argFD)
{
    s32 temp_r0_2;
    s32 temp_r0_3;
    u16 temp_r0;
    u16 temp_r0_4;
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    temp_r0 = temp_r1->unk6 + 1;
    temp_r1->unk6 = temp_r0;
    if ((u32)temp_r0 > 0x3BU) {
        temp_r0_2 = temp_r1->unk8 + 0x100;
        temp_r1->unk8 = temp_r0_2;
        temp_r0_3 = temp_r0_2 >> 8;
        gBgScrollRegs[0][0] = (s16)temp_r0_3;
        if ((s32)(s16)temp_r0_3 > 0x77) {
            gBgScrollRegs[0][0] = 0x78;
            temp_r0_4 = temp_r1->unk6 + 1;
            temp_r1->unk6 = temp_r0_4;
            if ((u32)temp_r0_4 > 0x77U) {
                sub_80A98B0(1U);
                TaskDestroy(gCurTask);
            }
        }
    }
}

void sub_80A8C80(void)
{
    Background *temp_r0;
    u16 temp_r3;

    gDispCnt = 0x1140;
    temp_r3 = TaskCreate(Task_48_A_80A8D24, 0x48U, 0x100U, 0U, TaskDestructor_48_A_80A9964)->data;
    temp_r3->unk2 = 0;
    temp_r3->unk4 = 0;
    temp_r3->unk0 = 0;
    *gBgCntRegs = 0x1681;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    temp_r0 = temp_r3 + 8;
    temp_r0->graphics.dest = (void *)0x06000000;
    temp_r0->graphics.anim = 0;
    temp_r0->layoutVram = (u16 *)0x0600B000;
    temp_r0->unk18 = 0;
    temp_r0->unk1A = 0;
    temp_r0->tilemapId = 0x133;
    temp_r0->unk1E = 0;
    temp_r0->unk20 = 0;
    temp_r0->unk22 = 0;
    temp_r0->unk24 = 0;
    temp_r0->targetTilesX = 0x20;
    temp_r0->targetTilesY = 0x20;
    temp_r3->unk32 = 0;
    temp_r0->flags = 4;
    DrawBackground(temp_r0);
}

void Task_48_A_80A8D24(? arg7C, s32 argFC, ? *argFD)
{
    u16 temp_r0;
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    if (temp_r1->unk2 == 0) {
        gDispCnt |= 0x2000;
        gWinRegs->unk0 = 0xF0;
        gWinRegs[2] = 0xA0;
        gWinRegs[4] |= 0x3F;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3FBF;
        gBldRegs.bldY = 0x10;
        temp_r1->unk4 = 0x1000U;
        temp_r1->unk2 = 1U;
    }
    temp_r0 = temp_r1->unk0;
    if ((u32)temp_r0 <= 0x77U) {
        temp_r1->unk0 = (u16)(temp_r0 + 1);
        return;
    }
    if (gBldRegs.bldY != 0) {
        gBldRegs.bldY = (u16)((u16)temp_r1->unk4 >> 8);
        temp_r1->unk4 = (u16)(temp_r1->unk4 - 0x20);
        return;
    }
    temp_r1->unk0 = (u16)gBldRegs.bldY;
    gBldRegs.bldY = gBldRegs.bldY;
    gCurTask->main = sub_80A9968;
}

void sub_80A8DC4(void)
{
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    if (temp_r1->unk2 != 0) {
        gDispCnt |= 0x2000;
        gWinRegs->unk0 = 0xF0;
        gWinRegs[2] = 0xA0;
        gWinRegs[4] |= 0x3F;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3FFF;
        temp_r1->unk4 = 0U;
        temp_r1->unk2 = 0U;
    }
    if ((u32)gBldRegs.bldY <= 0xFU) {
        gBldRegs.bldY = (u16)((u16)temp_r1->unk4 >> 8);
        temp_r1->unk4 = (u16)(temp_r1->unk4 + 0x100);
        return;
    }
    gBldRegs.bldY = 0x10;
    CreateTitleScreen(1U);
    TaskDestroy(gCurTask);
}

void sub_80A8E54(void)
{
    u16 temp_r2;

    temp_r2 = TaskCreate(Task_C_80A8ED0, 0xCU, 0x100U, 0U, TaskDestructor_C_80A99CC)->data;
    temp_r2->unk0 = 0;
    temp_r2->unk2 = 0;
    temp_r2->unk4 = 0;
    temp_r2->unk8 = 0xA000;
    gDispCnt |= 0x2000;
    gWinRegs->unk0 = 0xF0;
    gWinRegs[2] = 0xA0;
    gWinRegs[4] = 0x2100;
    gWinRegs[5] |= 0x1F;
    gWinRegs[2] = (((s32)temp_r2->unk4 >> 8) * 0x101) + ((s32)temp_r2->unk8 >> 8);
}

void Task_C_80A8ED0(? arg7C, s32 argFC, ? *argFD)
{
    s32 temp_r1_2;
    s32 temp_r1_3;
    s32 temp_r4;
    u16 temp_r1;
    u8 temp_r2;
    u8 temp_r2_2;

    temp_r1 = gCurTask->data;
    temp_r2 = temp_r1->unk0;
    temp_r4 = temp_r1->unk8;
    if (temp_r4 > (s32)(*(temp_r2 + &gUnknown_080D9FCA) << 8)) {
        temp_r1_2 = temp_r4 - *((temp_r2 * 4) + &gUnknown_080D9FD0);
        temp_r1->unk8 = temp_r1_2;
        if (temp_r1_2 <= (s32)(*(temp_r2 + &gUnknown_080D9FCA) << 8)) {
            temp_r1->unk0 = (u8)(temp_r2 + 1);
            if ((u32)(temp_r1_2 - 1) > 0x9FFEU) {
                temp_r1->unk8 = 0;
                if (gStageData.playerIndex != 0) {
                    gStageData.unkC5 = 1;
                }
                sub_80260F0();
                sub_8001E84();
                TaskDestroy(gCurTask);
                return;
            }
        }
        goto block_8;
    }
    temp_r1_3 = temp_r4 + *((temp_r2 * 4) + &gUnknown_080D9FD0);
    temp_r1->unk8 = temp_r1_3;
    temp_r2_2 = temp_r1->unk0;
    if (temp_r1_3 >= (s32)(*(temp_r2_2 + &gUnknown_080D9FCA) << 8)) {
        temp_r1->unk0 = (u8)(temp_r2_2 + 1);
    }
block_8:
    if ((u32)temp_r1->unk0 > 6U) {
        temp_r1->unk0 = 6U;
    }
    gWinRegs[2] = (((s32)temp_r1->unk4 >> 8) * 0x101) + ((s32)temp_r1->unk8 >> 8);
}

void sub_80A8F90(void)
{
    s32 sp4;
    u16 temp_r4;

    temp_r4 = TaskCreate(Task_6C_80A9118, 0x6CU, 0x100U, 0U, TaskDestructor_6C_80A9B68)->data;
    temp_r4->unk18 = 0x06010000;
    temp_r4->unk0 = 0;
    temp_r4->unk2 = 0;
    temp_r4->unk10 = 0xFFFF9C00;
    temp_r4->unk14 = 0x6E00;
    temp_r4->unk8 = 0xFFFFCE00;
    temp_r4->unkC = 0x6E00;
    sp4 = 0;
    (void *)0x040000D4->unk0 = &sp4;
    (void *)0x040000D4->unk4 = (s32)(((0xC & gBgCntRegs[2]) << 0xC) + 0x06000000);
    (void *)0x040000D4->unk8 = 0x85000010;
    gBgSprites_Unknown1->unk0 = 0;
    gBgSprites_Unknown2[0][0] = 0;
    gBgSprites_Unknown2[0][1] = 0;
    gBgSprites_Unknown2[0][2] = 0xFF;
    gBgSprites_Unknown2[0][3] = 0x40;
    gBgSprites_Unknown1[1] = 0;
    gBgSprites_Unknown2[1][0] = 0;
    gBgSprites_Unknown2[1][1] = 0;
    gBgSprites_Unknown2[1][2] = -1U;
    gBgSprites_Unknown2[1][3] = 0x40;
    gBgSprites_Unknown1[2] = 0;
    gBgSprites_Unknown2[2][0] = 0;
    gBgSprites_Unknown2[2][1] = 0;
    gBgSprites_Unknown2[2][2] = -1U;
    gBgSprites_Unknown2[2][3] = 0x40;
    *gBgPalette = sub_80C4C0C(0U);
    gFlags |= 1;
    sub_80A9068(temp_r4);
}

void sub_80A9068(void *arg0)
{
    Sprite *temp_r0;
    Sprite *temp_r0_2;
    s32 temp_r1;
    s32 temp_r1_2;

    temp_r0 = arg0 + 0x1C;
    temp_r1 = arg0->unk18;
    arg0->unk1C = temp_r1;
    arg0->unk18 = (s32)(temp_r1 + 0x3C0);
    temp_r0->anim = gUnknown_080D9FE4.unk0;
    temp_r0->variant = gUnknown_080D9FE4.unk2;
    temp_r0->prevVariant = 0xFF;
    temp_r0->x = (s16)((s32)arg0->unk8 >> 8);
    temp_r0->y = (s16)((s32)arg0->unkC >> 8);
    temp_r0->oamFlags = 0;
    temp_r0->animCursor = 0;
    temp_r0->qAnimDelay = 0;
    temp_r0->animSpeed = 0x10;
    temp_r0->palId = 0;
    temp_r0->frameFlags = 0x1400;
    temp_r0->hitboxes[0].index = -1;
    UpdateSpriteAnimation(temp_r0);
    temp_r0_2 = arg0 + 0x44;
    temp_r1_2 = arg0->unk18;
    arg0->unk44 = temp_r1_2;
    arg0->unk18 = (s32)(temp_r1_2 + 0x320);
    temp_r0_2->anim = gUnknown_080DA00C.unk0;
    temp_r0_2->variant = gUnknown_080DA00C.unk2;
    temp_r0_2->prevVariant = -1U;
    temp_r0_2->x = (s16)((s32)arg0->unk8 >> 8);
    temp_r0_2->y = (s16)((s32)arg0->unkC >> 8);
    temp_r0_2->oamFlags = 0;
    temp_r0_2->animCursor = 0;
    temp_r0_2->qAnimDelay = 0;
    temp_r0_2->animSpeed = 0x10;
    temp_r0_2->palId = 0;
    temp_r0_2->frameFlags = 0x1400;
    temp_r0_2->hitboxes[0].index = -1;
    UpdateSpriteAnimation(temp_r0_2);
}

void Task_6C_80A9118(? arg7C, s32 argFC, ? *argFD)
{
    u16 temp_r0;
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    temp_r0 = temp_r1->unk2;
    if ((u32)temp_r0 <= 0xEFU) {
        temp_r1->unk2 = (u16)(temp_r0 + 1);
        return;
    }
    if (temp_r1->unk4 != 0) {
        gDispCnt |= 0x2000;
        gWinRegs->unk0 = 0xF0;
        gWinRegs[2] = 0xA0;
        gWinRegs[4] |= 0x3F;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3FFF;
        gBldRegs.bldY = 0x10;
        temp_r1->unk6 = 0x1000U;
        temp_r1->unk4 = 0U;
    }
    sub_80A9B24(temp_r1);
    if (gBldRegs.bldY != 0) {
        gBldRegs.bldY = (u16)((u16)temp_r1->unk6 >> 8);
        temp_r1->unk6 = (u16)(temp_r1->unk6 + 0xFFFFFF00);
        return;
    }
    temp_r1->unk2 = (u16)gBldRegs.bldY;
    gBldRegs.bldY = gBldRegs.bldY;
    gCurTask->main = sub_80A91C4;
}

void sub_80A91C4(? arg7C, s32 argFC, ? *argFD)
{
    Sprite *temp_r0;
    Sprite *temp_r0_2;
    u16 temp_r5;
    u8 var_r4;

    var_r4 = 0;
    temp_r5 = gCurTask->data;
    if (sub_80A9A44(temp_r5) == 1) {
        var_r4 = 1;
    }
    if (sub_80A9A74(temp_r5) == 1) {
        var_r4 += 1;
    }
    if (var_r4 == 2) {
        temp_r0 = temp_r5 + 0x1C;
        temp_r0->anim = gUnknown_080D9FE4.unk8;
        temp_r0->variant = gUnknown_080D9FE4.unkA;
        temp_r0->prevVariant = 0xFF;
        UpdateSpriteAnimation(temp_r0);
        temp_r0_2 = temp_r5 + 0x44;
        temp_r0_2->anim = gUnknown_080DA00C.unk8;
        temp_r0_2->variant = gUnknown_080DA00C.unkA;
        temp_r0_2->prevVariant = -1U;
        UpdateSpriteAnimation(temp_r0_2);
        temp_r5->unk2 = 0;
        m4aSongNumStart(0x29EU);
        gCurTask->main = sub_80A925C;
        return;
    }
    sub_80A9B24(temp_r5);
}

void sub_80A925C(? arg7C, s32 argFC, ? *argFD)
{
    Sprite *temp_r0_2;
    Sprite *temp_r0_3;
    u16 temp_r0;
    u16 temp_r5;

    temp_r5 = gCurTask->data;
    temp_r0 = temp_r5->unk2 + 1;
    temp_r5->unk2 = temp_r0;
    if (((u32)temp_r0 > 0xF0U) && (sub_80A9AA4(temp_r5) == 1)) {
        temp_r0_2 = temp_r5 + 0x1C;
        temp_r0_2->anim = gUnknown_080D9FE4.unk10;
        temp_r0_2->variant = gUnknown_080D9FE4.unk12;
        temp_r0_2->prevVariant = 0xFF;
        UpdateSpriteAnimation(temp_r0_2);
        temp_r0_3 = temp_r5 + 0x44;
        temp_r0_3->anim = gUnknown_080DA00C.unk10;
        temp_r0_3->variant = gUnknown_080DA00C.unk12;
        temp_r0_3->prevVariant = -1U;
        UpdateSpriteAnimation(temp_r0_3);
        temp_r5->unk2 = 0U;
        gCurTask->main = sub_80A92E0;
        return;
    }
    sub_80A9B24(temp_r5);
}

void sub_80A92E0(? arg7C, s32 argFC, ? *argFD)
{
    Sprite *temp_r0_2;
    Sprite *temp_r0_3;
    u16 temp_r0;
    u16 temp_r5;

    temp_r5 = gCurTask->data;
    sub_80A9B24(temp_r5);
    temp_r0 = temp_r5->unk2 + 1;
    temp_r5->unk2 = temp_r0;
    if ((u32)temp_r0 > 0xB4U) {
        temp_r0_2 = temp_r5 + 0x1C;
        temp_r0_2->anim = gUnknown_080D9FE4.unk18;
        temp_r0_2->variant = gUnknown_080D9FE4.unk1A;
        temp_r0_2->prevVariant = 0xFF;
        UpdateSpriteAnimation(temp_r0_2);
        temp_r0_3 = temp_r5 + 0x44;
        temp_r0_3->anim = gUnknown_080DA00C.unk18;
        temp_r0_3->variant = gUnknown_080DA00C.unk1A;
        temp_r0_3->prevVariant = -1U;
        UpdateSpriteAnimation(temp_r0_3);
        gCurTask->main = sub_80A9354;
    }
}

void sub_80A9354(? arg7C, s32 argFC, ? *argFD)
{
    Sprite *temp_r0_2;
    Sprite *temp_r0_3;
    s16 temp_r0;
    u16 temp_r4;

    temp_r4 = gCurTask->data;
    temp_r0 = sub_80A9B24(temp_r4);
    if (temp_r0 == 0) {
        temp_r0_2 = temp_r4 + 0x1C;
        temp_r0_2->anim = gUnknown_080D9FE4.unk20;
        temp_r0_2->variant = gUnknown_080D9FE4.unk22;
        temp_r0_2->prevVariant = 0xFF;
        UpdateSpriteAnimation(temp_r0_2);
        temp_r0_3 = temp_r4 + 0x44;
        temp_r0_3->anim = gUnknown_080DA00C.unk20;
        temp_r0_3->variant = gUnknown_080DA00C.unk22;
        temp_r0_3->prevVariant = -1U;
        UpdateSpriteAnimation(temp_r0_3);
        temp_r4->unk2 = temp_r0;
        gCurTask->main = sub_80A99D0;
    }
}

void Task_E04_80A93C8(? arg7C, s32 argFC, ? *argFD, ? arg7C, s32 argFC, ? *argFD)
{
    s32 temp_r3;
    u16 *temp_r4;
    u16 *temp_r5;
    u16 temp_r1;
    u16 var_r7;

    temp_r1 = gCurTask->data;
    if (*temp_r1 != 0) {
        CpuFastSet(&Palette_unknown_318, &unksp0, 0x80U);
        CpuFastSet(&Palette_unknown_319, &arg7C, 0x80U);
    } else {
        CpuFastSet(&Palette_unknown_307, &unksp0, 0x80U);
        CpuFastSet(&Palette_unknown_308, &arg7C, 0x80U);
    }
    var_r7 = 0;
    argFC = temp_r1 + 0x204;
    argFD = &arg7C;
    do {
        temp_r3 = var_r7 * 0xC;
        temp_r5 = argFD + (var_r7 * 2);
        temp_r4 = &(&unksp0)[var_r7];
        *(argFC + temp_r3) = ((0x1F & *temp_r5) - (0x1F & *temp_r4)) * 0x10;
        *(temp_r1 + 0x208 + temp_r3) = ((((u16)*temp_r5 >> 5) & 0x1F) - (((u16)*temp_r4 >> 5) & 0x1F)) * 0x10;
        *(temp_r3 + (temp_r1 + 0x20C)) = ((((u16)*temp_r5 >> 0xA) & 0x1F) - (((u16)*temp_r4 >> 0xA) & 0x1F)) * 0x10;
        var_r7 += 1;
    } while ((u32)var_r7 <= 0xFFU);
    gCurTask->main = sub_80A94EC;
}

void sub_80A94EC(? arg7C, s32 argFC, ? *argFD, ? arg7C, ? argFC)
{
    s32 temp_r3;
    u16 *temp_r4;
    u16 temp_r0;
    u16 temp_r0_2;
    u16 temp_r1;
    u16 var_r8;

    temp_r1 = gCurTask->data;
    if (temp_r1->unk0 != 0) {
        CpuFastSet(&Palette_unknown_318, &unksp0, 0x80U);
        CpuFastSet(&Palette_unknown_319, &arg7C, 0x80U);
    } else {
        CpuFastSet(&Palette_unknown_307, &unksp0, 0x80U);
        CpuFastSet(&Palette_unknown_308, &arg7C, 0x80U);
    }
    temp_r0 = temp_r1->unk2 + 1;
    temp_r1->unk2 = temp_r0;
    if ((s32)(s16)temp_r0 <= 0xA) {
        return;
    }
    if (temp_r1->unk1 == 0x10) {
        TasksDestroyInPriorityRange(0U, 0xFFFFU);
        gBackgroundsCopyQueueCursor = gBackgroundsCopyQueueIndex;
        gBgSpritesCount = 0;
        gVramGraphicsCopyCursor = gVramGraphicsCopyQueueIndex;
        sub_80ABD44(temp_r1->unk0);
        return;
    }
    var_r8 = 0;
    do {
        memset((Vec2_u16 *)&argFC, 0, 3);
        temp_r4 = temp_r1 + 4 + (var_r8 * 2);
        temp_r3 = var_r8 * 0xC;
        argFC.unk0 = (u8)((s32)(((0x1F & *temp_r4) << 8) + (temp_r1->unk1 * *(temp_r1 + 0x204 + temp_r3))) >> 8);
        argFC.unk1 = (u8)((s32)(((((u16)*temp_r4 >> 5) & 0x1F) << 8) + (temp_r1->unk1 * *(temp_r1 + 0x208 + temp_r3))) >> 8);
        argFC.unk2 = (u8)((s32)(((((u16)*temp_r4 >> 0xA) & 0x1F) << 8) + (temp_r1->unk1 * *(temp_r1 + 0x20C + temp_r3))) >> 8);
        gBgPalette[var_r8] = sub_80C4C0C((u16)(argFC.unk0 | (argFC.unk1 << 5) | (argFC.unk2 << 0xA)));
        temp_r0_2 = var_r8 + 1;
        var_r8 = temp_r0_2;
    } while ((u32)temp_r0_2 <= 0xFFU);
    gFlags |= 1;
    temp_r1->unk2 = 0U;
    temp_r1->unk1 = (u8)(temp_r1->unk1 + 1);
}

void Task_48_B_80A9684(? arg7C, s32 argFC, ? *argFD)
{
    u16 temp_r0;
    u8 temp_r2;

    temp_r0 = gCurTask->data;
    gStageData.playerIndex = 0;
    gStageData.gameMode = 2;
    gStageData.act = (u8) * ((temp_r0->unk1 * 6) + (&gUnknown_080DA034 + 2));
    gStageData.currentLevel = *((temp_r0->unk1 * 6) + &gUnknown_080DA034);
    gStageData.zone = (u8)((u16) * ((temp_r0->unk1 * 6) + &gUnknown_080DA034) / 10U);
    gStageData.warpId = 1;
    sub_800214C();
    gPlayers->unk2A = (u8)(-0x10 & gPlayers->unk2A);
    gPlayers->unk2B = (u8)((((-4 & gPlayers->unk2B) | 1) & ~0x1C) | 0x10);
    temp_r2 = -4 & gPlayers->unk17B;
    gPlayers->unk17B = temp_r2;
    gPlayers->unk17A = (u8)((-0x10 & gPlayers->unk17A) | (0xF & *((temp_r0->unk1 * 6) + (&gUnknown_080DA034 + 4))));
    gPlayers->unk17B = (u8)((temp_r2 & ~0x1C) | 8);
    gPlayers->unk2CB = (u8)(-0x1D & gPlayers->unk2CB);
    gPlayers->unk41B = (u8)(-0x1D & gPlayers->unk41B);
    WarpToMap((s16)gStageData.currentLevel, 1);
}

void sub_80A9798(void)
{
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    if (temp_r1->unk0 == 0) {
        gDispCnt |= 0x4000;
        gWinRegs[1] = 0xF0;
        gWinRegs[3] = 0xA0;
        gWinRegs[4] = 0x3FFF;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3FFF;
        gBldRegs.bldY = 0x10;
        temp_r1->unk0 = 1U;
        temp_r1->unk6 = 0x1000U;
    }
    if (gBldRegs.bldY != 0) {
        gBldRegs.bldY = (u16)((u16)temp_r1->unk6 >> 8);
        temp_r1->unk6 = (u16)(temp_r1->unk6 + 0xFFFFFF00);
        return;
    }
    gBldRegs.bldY = gBldRegs.bldY;
    gCurTask->main = sub_80A9B74;
}

void sub_80A9824(? arg7C, s32 argFC, ? *argFD)
{
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    if (temp_r1->unk0 != 0) {
        gDispCnt |= 0x4000;
        gWinRegs[1] = 0xF0;
        gWinRegs[3] = 0xA0;
        gWinRegs[4] = 0x3FFF;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3FFF;
        temp_r1->unk0 = 0U;
        temp_r1->unk6 = 0U;
    }
    if ((u32)gBldRegs.bldY <= 0xFU) {
        gBldRegs.bldY = (u16)((u16)temp_r1->unk6 >> 8);
        temp_r1->unk6 = (u16)(temp_r1->unk6 + 0x100);
        return;
    }
    gCurTask->main = sub_80A9BA8;
}

void TaskDestructor_90_80A98AC(Task *arg0) { }

void sub_80A98B0(u8 arg0)
{
    u16 temp_r2;
    u8 temp_r4;

    temp_r4 = arg0;
    temp_r2 = TaskCreate(Task_E04_80A93C8, 0xE04U, 0x100U, 0U, TaskDestructor_E04_80A9B6C)->data;
    temp_r2->unk0 = temp_r4;
    temp_r2->unk1 = 0;
    temp_r2->unk2 = 0;
    if (temp_r4 != 0) {
        CpuFastSet(&Palette_unknown_318, temp_r2 + 4, 0x80U);
        return;
    }
    CpuFastSet(&Palette_unknown_307, temp_r2 + 4, 0x80U);
}

void sub_80A9920(u8 arg0)
{
    u16 temp_r0;
    u8 temp_r4;

    temp_r4 = arg0;
    temp_r0 = TaskCreate(Task_48_B_80A9684, 0x48U, 0x2100U, 0U, TaskDestructor_48_B_80A9B70)->data;
    temp_r0->unk2 = temp_r4;
    temp_r0->unk1 = (s8)(temp_r4 - 0xC);
    temp_r0->unk4 = 0;
    temp_r0->unk0 = 0;
    temp_r0->unk6 = 0;
}

void TaskDestructor_48_A_80A9964(Task *arg0) { }

void sub_80A9968(? arg7C, s32 argFC, ? *argFD)
{
    u16 temp_r0;
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    temp_r0 = *temp_r1 + 1;
    *temp_r1 = temp_r0;
    if ((u32)temp_r0 > 0xB3U) {
        sub_80A98B0(0U);
        TaskDestroy(gCurTask);
    }
}

void sub_80A999C(void)
{
    if (sub_80A99C8(gCurTask->data) == 1) {
        sub_80ABD44(0U);
        TaskDestroy(gCurTask);
    }
}

s32 sub_80A99C8(void) { return 1; }

void TaskDestructor_C_80A99CC(Task *arg0) { }

void sub_80A99D0(? arg7C, s32 argFC, ? *argFD)
{
    u16 temp_r0;
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    sub_80A9B24(temp_r1);
    if (sub_80A9AD8(temp_r1) == 1) {
        temp_r0 = temp_r1->unk2;
        if ((u32)temp_r0 <= 0x77U) {
            temp_r1->unk2 = (u16)(temp_r0 + 1);
        }
        if (temp_r1->unk2 == 0x78) {
            sub_80AA270(0, temp_r1->unk18);
            gCurTask->main = sub_80A9A1C;
        }
    }
}

void sub_80A9A1C(? arg7C, s32 argFC, ? *argFD)
{
    if (sub_80A9AD8(gCurTask->data) == 1) {
        TaskDestroy(gCurTask);
    }
}

s32 sub_80A9A44(void *arg0)
{
    s32 temp_r0;
    s32 temp_r0_2;

    temp_r0 = arg0->unk10;
    if ((temp_r0 > 0x77FF) || (temp_r0_2 = temp_r0 + 0x180, arg0->unk10 = temp_r0_2, (temp_r0_2 > 0x77FF))) {
        arg0->unk10 = 0x7800;
        return 1;
    }
    return 0;
}

s32 sub_80A9A74(void *arg0)
{
    s32 temp_r0;
    s32 temp_r0_2;

    temp_r0 = arg0->unk8;
    if ((temp_r0 > 0x121FF) || (temp_r0_2 = temp_r0 + 0x280, arg0->unk8 = temp_r0_2, (temp_r0_2 > 0x121FF))) {
        arg0->unk8 = 0x12200;
        return 1;
    }
    return 0;
}

s32 sub_80A9AA4(void *arg0)
{
    s32 temp_r0;
    s32 temp_r0_2;

    temp_r0 = arg0->unk8;
    if (temp_r0 > 0) {
        temp_r0_2 = temp_r0 + 0xFFFFFF00;
        arg0->unk8 = temp_r0_2;
        if (temp_r0_2 <= 0x8F00) {
            arg0->unk8 = 0x8F00;
            return 1;
        }
        return 0;
    }
    arg0->unk8 = 0x8F00;
    return 1;
}

s32 sub_80A9AD8(void *arg0)
{
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    u8 var_r2;

    var_r2 = 0;
    temp_r0 = arg0->unk8;
    if ((temp_r0 > 0x121FF) || (temp_r0_2 = temp_r0 + 0x140, arg0->unk8 = temp_r0_2, (temp_r0_2 > 0x121FF))) {
        var_r2 = 1;
    }
    temp_r0_3 = arg0->unk10;
    if ((temp_r0_3 > 0x121FF) || (arg0->unk10 = (s32)(temp_r0_3 + 0x140), ((s32)arg0->unk8 > 0x121FF))) {
        var_r2 += 1;
    }
    if (var_r2 != 2) {
        return 0;
    }
    return 1;
}

s16 sub_80A9B24(void *arg0)
{
    Sprite *temp_r4;
    Sprite *temp_r4_2;
    s32 temp_r5;

    temp_r4 = arg0 + 0x1C;
    temp_r4->x = (s16)((s32)arg0->unk8 >> 8);
    temp_r4->y = (s16)((s32)arg0->unkC >> 8);
    UpdateSpriteAnimation(temp_r4);
    DisplaySprite(temp_r4);
    temp_r4_2 = temp_r4 + 0x28;
    temp_r4_2->x = (s16)((s32)arg0->unk10 >> 8);
    temp_r4_2->y = (s16)((s32)arg0->unk14 >> 8);
    temp_r5 = UpdateSpriteAnimation(temp_r4_2);
    DisplaySprite(temp_r4_2);
    return (s16)temp_r5;
}

void TaskDestructor_6C_80A9B68(Task *arg0) { }

void TaskDestructor_E04_80A9B6C(Task *arg0) { }

void TaskDestructor_48_B_80A9B70(Task *arg0) { }

void sub_80A9B74(? arg7C, s32 argFC, ? *argFD)
{
    u16 temp_r0;
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    temp_r0 = temp_r1->unk4 + 1;
    temp_r1->unk4 = temp_r0;
    if ((s32)(temp_r0 << 0x10) > 0x02570000) {
        temp_r1->unk4 = 0U;
        gCurTask->main = sub_80A9824;
    }
}

void sub_80A9BA8(? arg7C, s32 argFC, ? *argFD)
{
    u16 temp_r1;
    u8 temp_r0;

    temp_r1 = gCurTask->data;
    temp_r0 = temp_r1->unk2;
    temp_r1->unk2 = (u8)(temp_r0 + 1);
    sub_80A872C((u8)(temp_r0 - 0xA));
    TaskDestroy(gCurTask);
}

u8 *sub_80A9BD8(u8 *arg0, s32 arg1, s32 arg2, u8 arg3, s32 arg4)
{
    Sprite *temp_r2_2;
    s8 var_r1;
    u16 temp_r2;
    u8 temp_r3;

    temp_r3 = arg3;
    temp_r2 = TaskCreate(Task_40_A_80AB818, 0x40U, 0x100U, 0U, TaskDestructor_40_A_80AB814)->data;
    temp_r2->unk6 = 0;
    var_r1 = -1;
    if (1 & temp_r3) {
        var_r1 = 1;
    }
    temp_r2->unk5 = var_r1;
    temp_r2->unk4 = temp_r3;
    temp_r2->unkC = arg0;
    temp_r2->unk8 = 0;
    temp_r2->unk10 = (s32)(arg1 << 8);
    temp_r2->unk14 = (s32)(arg2 << 8);
    temp_r2->unk0 = arg4;
    temp_r2_2 = temp_r2 + 0x18;
    temp_r2->unk18 = arg0;
    temp_r2->unkC = (u8 *)(temp_r2->unkC + 0x80);
    temp_r2_2->anim = gUnknown_080DA284.unk0;
    temp_r2_2->variant = gUnknown_080DA284.unk2;
    temp_r2_2->prevVariant = 0xFF;
    temp_r2_2->x = 0;
    temp_r2_2->y = 0;
    temp_r2_2->oamFlags = 0x200;
    temp_r2_2->animCursor = 0;
    temp_r2_2->qAnimDelay = 0;
    temp_r2_2->animSpeed = 0x10;
    temp_r2_2->palId = 0;
    temp_r2_2->frameFlags = 0;
    if (temp_r2->unk5 == 1) {
        temp_r2_2->frameFlags = 0x400;
    } else {
        temp_r2_2->frameFlags = 0;
    }
    UpdateSpriteAnimation(temp_r2_2);
    return temp_r2->unkC;
}

s32 sub_80A9CA0(void *arg0)
{
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r3;
    s32 temp_r3_2;
    s32 temp_r4_2;
    s32 temp_r5;
    u8 temp_r0;
    u8 temp_r1;
    u8 var_r0;
    u8 var_r7;
    void *temp_r4;

    var_r7 = 0;
    temp_r4 = arg0 + 0x18;
    temp_r3 = arg0->unk10;
    temp_r5 = temp_r3 >> 8;
    temp_r0 = *((arg0->unk4 * 2) + &gUnknown_080DA28C);
    if (temp_r5 < (s32)temp_r0) {
        arg0->unk10 = (s32)(temp_r3 + 0x100);
        temp_r4->unk8 = (s32)(temp_r4->unk8 | 0x400);
        var_r0 = *((arg0->unk4 * 2) + &gUnknown_080DA28C);
        if ((s32)((s32)arg0->unk10 >> 8) >= (s32)var_r0) {
            goto block_5;
        }
    } else if (temp_r5 > (s32)temp_r0) {
        arg0->unk10 = (s32)(temp_r3 + 0xFFFFFF00);
        temp_r4->unk8 = (s32)(temp_r4->unk8 & 0xFFFFFBFF);
        var_r0 = *((arg0->unk4 * 2) + &gUnknown_080DA28C);
        if ((s32)((s32)arg0->unk10 >> 8) <= (s32)var_r0) {
        block_5:
            arg0->unk10 = (s32)(var_r0 << 8);
        }
    } else {
        arg0->unk10 = (s32)(temp_r0 << 8);
        var_r7 = 1;
    }
    temp_r3_2 = arg0->unk14;
    temp_r4_2 = temp_r3_2 >> 8;
    temp_r1 = *((arg0->unk4 * 2) + (&gUnknown_080DA28C + 1));
    if (temp_r4_2 < (s32)temp_r1) {
        temp_r0_2 = temp_r3_2 + 0x100;
        arg0->unk14 = temp_r0_2;
        if ((s32)(temp_r0_2 >> 8) >= (s32)temp_r1) {
            goto block_12;
        }
    } else if (temp_r4_2 > (s32)temp_r1) {
        temp_r0_3 = temp_r3_2 + 0xFFFFFF00;
        arg0->unk14 = temp_r0_3;
        if ((s32)(temp_r0_3 >> 8) <= (s32)temp_r1) {
        block_12:
            arg0->unk14 = (s32)(temp_r1 << 8);
        }
    } else {
        arg0->unk14 = (s32)(temp_r1 << 8);
        var_r7 += 1;
    }
    if (var_r7 != 2) {
        return 0;
    }
    return 1;
}

void sub_80A9D78(void *arg0)
{
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r2;
    s32 temp_r2_2;
    s32 var_r0_2;
    s8 var_r0;
    u16 temp_r3;
    u8 temp_r1;
    void *temp_r4;

    temp_r4 = arg0 + 0x18;
    temp_r1 = arg0->unk4;
    temp_r2 = *((temp_r1 * 2) + &gUnknown_080DA28C) << 8;
    temp_r0 = *(temp_r1 + &gUnknown_080DA2AA) << 8;
    temp_r0_2 = arg0->unk10;
    if (temp_r0_2 <= (s32)(temp_r2 - temp_r0)) {
        var_r0 = 1;
        goto block_4;
    }
    if (temp_r0_2 >= (s32)(temp_r2 + temp_r0)) {
        var_r0 = -1;
    block_4:
        arg0->unk5 = var_r0;
    }
    if ((s32)arg0->unk5 > 0) {
        var_r0_2 = temp_r4->unk8 | 0x400;
    } else {
        var_r0_2 = temp_r4->unk8 & 0xFFFFFBFF;
    }
    temp_r4->unk8 = var_r0_2;
    arg0->unk10 = (s32)(arg0->unk10 + (arg0->unk5 << 8));
    temp_r2_2 = *((arg0->unk4 * 2) + (&gUnknown_080DA28C + 1)) << 8;
    arg0->unk14 = temp_r2_2;
    temp_r3 = arg0->unk8;
    arg0->unk14 = (s32)(temp_r2_2 + (((s32)(*(((u8)((s32)(temp_r3 << 0x10) >> 0x14) * 8) + gSineTable) << 0x10) >> 0x16) * 0x10));
    arg0->unk8 = (u16)(temp_r3 + (*(arg0->unk4 + &gUnknown_080DA2B9) * 0x10));
}

s32 sub_80A9E24(s32 arg0, s32 arg1)
{
    Sprite *temp_r0_2;
    u16 temp_r0;

    temp_r0 = TaskCreate(Task_40_B_80A9EB4, 0x40U, 0x100U, 0U, TaskDestructor_40_B_80AB8F8)->data;
    temp_r0->unk0 = arg0;
    temp_r0->unk4 = 0;
    temp_r0->unk6 = 0;
    temp_r0->unk8 = 0;
    temp_r0->unkC = arg1;
    temp_r0->unk10 = 0xFFFFCE00;
    temp_r0->unk14 = 0x3C00;
    temp_r0_2 = temp_r0 + 0x18;
    temp_r0->unk18 = arg1;
    temp_r0->unkC = (s32)(temp_r0->unkC + 0x280);
    temp_r0_2->anim = gUnknown_080DA06C.unk0;
    temp_r0_2->variant = gUnknown_080DA06C.unk2;
    temp_r0_2->prevVariant = 0xFF;
    temp_r0_2->x = 0;
    temp_r0_2->y = 0;
    temp_r0_2->oamFlags = 0x40;
    temp_r0_2->animCursor = 0;
    temp_r0_2->qAnimDelay = 0;
    temp_r0_2->animSpeed = 0x10;
    temp_r0_2->palId = 0;
    temp_r0_2->frameFlags = 0;
    UpdateSpriteAnimation(temp_r0_2);
    return temp_r0->unkC;
}

void Task_40_B_80A9EB4(? arg7C, s32 argFC, ? *argFD)
{
    Sprite *temp_r4_2;
    u16 temp_r0;
    u16 temp_r4;

    temp_r4 = gCurTask->data;
    sub_80AB8B0(temp_r4);
    temp_r4_2 = temp_r4 + 0x18;
    temp_r4_2->x = (s16)((s32)temp_r4->unk10 >> 8);
    temp_r4_2->y = (s16)((s32)temp_r4->unk14 >> 8);
    UpdateSpriteAnimation(temp_r4_2);
    DisplaySprite(temp_r4_2);
    temp_r0 = temp_r4->unk8 + 1;
    temp_r4->unk8 = temp_r0;
    if (temp_r0 == 0x78) {
        *temp_r4->unk0 = 0x12;
    }
    if ((u32)temp_r4->unk8 > 0xB3U) {
        temp_r4_2->anim = gUnknown_080DA06C.unk8;
        temp_r4_2->variant = gUnknown_080DA06C.unkA;
        temp_r4_2->prevVariant = 0xFF;
        temp_r4_2->x = 0;
        temp_r4_2->y = 0;
        UpdateSpriteAnimation(temp_r4_2);
        temp_r4->unk8 = 0U;
        gCurTask->main = sub_80A9F38;
    }
}

void sub_80A9F38(? arg7C, s32 argFC, ? *argFD)
{
    Sprite *temp_r5_2;
    u16 temp_r0;
    u16 temp_r5;

    temp_r5 = gCurTask->data;
    sub_80AB8B0(temp_r5);
    temp_r5_2 = temp_r5 + 0x18;
    temp_r5_2->x = (s16)((s32)temp_r5->unk10 >> 8);
    temp_r5_2->y = (s16)((s32)temp_r5->unk14 >> 8);
    UpdateSpriteAnimation(temp_r5_2);
    DisplaySprite(temp_r5_2);
    temp_r0 = temp_r5->unk8 + 1;
    temp_r5->unk8 = temp_r0;
    if ((u32)temp_r0 > 0x1DU) {
        temp_r5_2->anim = gUnknown_080DA06C.unk10;
        temp_r5_2->variant = gUnknown_080DA06C.unk12;
        temp_r5_2->prevVariant = 0xFF;
        temp_r5_2->x = 0;
        temp_r5_2->y = 0;
        UpdateSpriteAnimation(temp_r5_2);
        gCurTask->main = sub_80A9FAC;
    }
}

void sub_80A9FAC(? arg7C, s32 argFC, ? *argFD)
{
    Sprite *temp_r4_2;
    s32 temp_r5;
    u16 temp_r0;
    u16 temp_r4;
    u8 temp_r3;

    temp_r4 = gCurTask->data;
    temp_r4_2 = temp_r4 + 0x18;
    temp_r4_2->x = (s16)((s32)temp_r4->unk10 >> 8);
    temp_r4_2->y = (s16)((s32)temp_r4->unk14 >> 8);
    temp_r5 = UpdateSpriteAnimation(temp_r4_2);
    DisplaySprite(temp_r4_2);
    if (temp_r5 != ACMD_RESULT__RUNNING) {
        temp_r3 = temp_r4->unk4;
        if (temp_r3 == 0) {
            gDispCnt |= 0x2000;
            gWinRegs->unk0 = 0xF0;
            gWinRegs[2] = 0xA0;
            gWinRegs[4] = 0x3FFF;
            gWinRegs[5] |= 0x1F;
            gBldRegs.bldCnt = 0x3FBF;
            gBldRegs.bldY = (u16)temp_r3;
            temp_r4->unk6 = (u16)temp_r3;
            temp_r4->unk4 = 1U;
            m4aSongNumStart(0x29DU);
        }
        if ((u32)gBldRegs.bldY <= 0xFU) {
            temp_r0 = temp_r4->unk6 + 0x100;
            temp_r4->unk6 = temp_r0;
            gBldRegs.bldY = (u16)((u32)(temp_r0 << 0x10) >> 0x18);
            return;
        }
        gBldRegs.bldY = 0x10;
        *temp_r4->unk0 = 0x16;
        TaskDestroy(gCurTask);
    }
}

u8 *sub_80AA06C(s32 arg0, u8 *arg1)
{
    ? *sp4;
    ? *sp8;
    ? *var_r3;
    Sprite *temp_r0;
    Sprite *temp_r0_2;
    Sprite *temp_r4_2;
    s32 temp_r2;
    s32 temp_r6;
    u16 temp_r4;
    u8 *var_r6;
    u8 var_r4;
    void *temp_r2_2;

    temp_r4 = TaskCreate(Task_100_80AB8FC, 0x100U, 0x100U, 0U, Task_100_80AB98C)->data;
    temp_r4->unk0 = arg0;
    temp_r4->unk4 = 0;
    temp_r4->unk8 = -0xD200;
    temp_r4->unkC = 0x1C00;
    temp_r0 = temp_r4 + 0xB0;
    temp_r4->unkB0 = arg1;
    temp_r6 = arg1 + (gUnknown_080DBA94.unkC << 5);
    temp_r0->anim = gUnknown_080DBA94.unk8;
    temp_r0->variant = gUnknown_080DBA94.unkA;
    temp_r0->prevVariant = 0xFF;
    temp_r0->x = (s16)((s32)temp_r4->unk8 >> 8);
    temp_r0->y = (s16)((s32)temp_r4->unkC >> 8);
    temp_r0->oamFlags = 0x140;
    temp_r0->animCursor = 0;
    temp_r0->qAnimDelay = 0;
    temp_r0->animSpeed = 0x10;
    temp_r0->palId = 0;
    temp_r0->frameFlags = 0;
    sp4 = &gUnknown_080DBA94;
    UpdateSpriteAnimation(temp_r0);
    temp_r4_2 = temp_r4 + 0xD8;
    temp_r4->unkD8 = temp_r6;
    var_r6 = temp_r6 + (gUnknown_080DBA94.unk4 << 5);
    temp_r4_2->anim = gUnknown_080DBA94.unk0;
    temp_r4_2->variant = gUnknown_080DBA94.unk2;
    temp_r4_2->prevVariant = -1U;
    temp_r4_2->x = (s16)((s32)temp_r4->unk8 >> 8);
    temp_r4_2->y = (s16)((s32)temp_r4->unkC >> 8);
    temp_r4_2->oamFlags = 0x140;
    temp_r4_2->animCursor = 0;
    temp_r4_2->qAnimDelay = 0;
    temp_r4_2->animSpeed = 0x10;
    temp_r4_2->palId = 0;
    temp_r4_2->frameFlags = 0;
    UpdateSpriteAnimation(temp_r4_2);
    var_r4 = 0;
    var_r3 = &gUnknown_080DA2C8;
    do {
        temp_r0_2 = temp_r4 + ((var_r4 * 0x28) + 0x10);
        temp_r0_2->tiles = var_r6;
        temp_r2 = var_r4 * 8;
        var_r6 += *(temp_r2 + (var_r3 + 4)) << 5;
        temp_r2_2 = temp_r2 + var_r3;
        temp_r0_2->anim = temp_r2_2->unk0;
        temp_r0_2->variant = temp_r2_2->unk2;
        temp_r0_2->prevVariant = 0xFF;
        temp_r0_2->x = (s16)((s32)temp_r4->unk8 >> 8);
        temp_r0_2->y = (s16)((s32)temp_r4->unkC >> 8);
        temp_r0_2->oamFlags = 0;
        temp_r0_2->animCursor = 0;
        temp_r0_2->qAnimDelay = 0;
        temp_r0_2->animSpeed = 0x10;
        temp_r0_2->palId = 0;
        temp_r0_2->frameFlags = 0;
        sp8 = var_r3;
        UpdateSpriteAnimation(temp_r0_2);
        var_r4 += 1;
    } while ((u32)var_r4 <= 3U);
    return var_r6;
}

void sub_80AA1BC(void *arg0)
{
    s32 sp0;
    Sprite *temp_r0;
    Sprite *temp_r4;
    Sprite *temp_r4_2;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r2;
    u16 var_r7;
    u8 var_r5;
    u8 var_r5_2;

    var_r7 = 0;
    var_r5 = 0;
    temp_r4 = arg0 + 0xD8;
    do {
        temp_r1 = (s32)arg0->unk8 >> 8;
        temp_r4->x = (s16)temp_r1;
        temp_r4->y = (s16)((s32)arg0->unkC >> 8);
        temp_r4->x = var_r7 + temp_r1;
        temp_r4->frameFlags &= 0xFFFFFBFF;
        temp_r4->palId = 0;
        sp0 = 0xFFFFFBFF;
        DisplaySprite(temp_r4);
        var_r7 += 0x40;
        var_r5 += 1;
    } while ((u32)var_r5 <= 2U);
    temp_r0 = arg0 + 0xB0;
    temp_r2 = (s32)arg0->unk8 >> 8;
    temp_r0->x = (s16)temp_r2;
    temp_r0->y = (s16)((s32)arg0->unkC >> 8);
    temp_r0->x = var_r7 + temp_r2;
    temp_r0->frameFlags &= 0xFFFFFBFF;
    temp_r0->palId = 0;
    DisplaySprite(temp_r0);
    var_r5_2 = 0;
    do {
        temp_r4_2 = arg0 + ((var_r5_2 * 0x28) + 0x10);
        temp_r1_2 = (s32)arg0->unk8 >> 8;
        temp_r4_2->x = (s16)temp_r1_2;
        temp_r4_2->x = temp_r1_2 + 0x3A;
        temp_r4_2->y = ((s32)arg0->unkC >> 8) + 0x28;
        UpdateSpriteAnimation(temp_r4_2);
        DisplaySprite(temp_r4_2);
        var_r5_2 += 1;
    } while ((u32)var_r5_2 <= 3U);
}

s32 sub_80AA270(s32 arg0, s32 arg1)
{
    s32 sp4;
    Background *temp_r0;
    u16 temp_r6;

    gDispCnt = 0x1041;
    temp_r6 = TaskCreate(Task_54_80AA384, 0x54U, 0x100U, 0U, TaskDestructor_54_80AB990)->data;
    temp_r6->unk0 = arg0;
    temp_r6->unk8 = 0;
    temp_r6->unk4 = 0;
    temp_r6->unk6 = 0;
    temp_r6->unkC = 0;
    temp_r6->unk10 = 0;
    sp4 = 0;
    (void *)0x040000D4->unk0 = &sp4;
    (void *)0x040000D4->unk4 = (s32)(((0xC & gBgCntRegs[2]) << 0xC) + 0x06000000);
    (void *)0x040000D4->unk8 = 0x85000010;
    gBgSprites_Unknown1[3] = 0;
    gBgSprites_Unknown2[3][0] = 0;
    gBgSprites_Unknown2[3][1] = 0;
    gBgSprites_Unknown2[3][2] = 0xFF;
    gBgSprites_Unknown2[3][3] = 0x40;
    gBgSprites_Unknown1[2] = 0;
    gBgSprites_Unknown2[2][0] = 0;
    gBgSprites_Unknown2[2][1] = 0;
    gBgSprites_Unknown2[2][2] = -1U;
    gBgSprites_Unknown2[2][3] = 0x40;
    gBgSprites_Unknown1[1] = 0;
    gBgSprites_Unknown2[1][0] = 0;
    gBgSprites_Unknown2[1][1] = 0;
    gBgSprites_Unknown2[1][2] = -1U;
    gBgSprites_Unknown2[1][3] = 0x40;
    gBgCntRegs->unk0 = 0x4E07;
    gBgScrollRegs[0][0] = 0;
    temp_r0 = temp_r6 + 0x14;
    temp_r0->graphics.dest = (void *)0x06004000;
    temp_r0->graphics.anim = 0;
    temp_r0->layoutVram = (u16 *)0x06007000;
    temp_r0->unk18 = 0;
    temp_r0->unk1A = 0;
    temp_r0->tilemapId = 0x140;
    temp_r0->unk1E = 0;
    temp_r0->unk20 = 0;
    temp_r0->unk22 = 0;
    temp_r0->unk24 = 0;
    temp_r0->targetTilesX = 0x20;
    temp_r0->targetTilesY = 0x20;
    temp_r6->unk3E = 0;
    temp_r0->flags = 0;
    DrawBackground(temp_r0);
    return arg1;
}

void Task_54_80AA384(? arg7C, s32 argFC, ? *argFD)
{
    u16 temp_r1;
    u16 temp_r4;

    temp_r1 = gCurTask->data;
    temp_r4 = temp_r1->unk4;
    if (temp_r4 == 0) {
        gDispCnt |= 0x2000;
        gWinRegs->unk0 = 0xF0;
        gWinRegs[2] = 0xA0;
        gWinRegs[4] = 0x31;
        gWinRegs[5] = temp_r4;
        gBldRegs.bldCnt = 0x1C1;
        gBldRegs.bldY = 0x10;
        temp_r1->unk6 = 0x1000U;
        temp_r1->unk4 = 1U;
        gDispCnt = 0x1141;
    }
    if (gBldRegs.bldY != 0) {
        gBldRegs.bldY = (u16)((u16)temp_r1->unk6 >> 8);
        temp_r1->unk6 = (u16)(temp_r1->unk6 - 0x40);
        return;
    }
    gBldRegs.bldY = gBldRegs.bldY;
    gCurTask->main = sub_80AB994;
}

void sub_80AA410(? arg7C, s32 argFC, ? *argFD)
{
    u16 temp_r0;
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    if (temp_r1->unk4 != 0) {
        gDispCnt |= 0x2000;
        gWinRegs->unk0 = 0xF0;
        gWinRegs[2] = 0xA0;
        gWinRegs[4] = 0x31;
        gWinRegs[5] = 0;
        gBldRegs.bldCnt = 0x1C1;
        temp_r1->unk6 = 0U;
        temp_r1->unk4 = 0U;
        gBldRegs.bldY = 0;
    }
    if ((u32)gBldRegs.bldY <= 0xFU) {
        gBldRegs.bldY = (u16)((u16)temp_r1->unk6 >> 8);
        temp_r1->unk6 = (u16)(temp_r1->unk6 + 0x40);
        return;
    }
    gBldRegs.bldY = 0x10;
    temp_r0 = temp_r1->unk8 + 1;
    temp_r1->unk8 = temp_r0;
    if ((u32)temp_r0 > 0xB4U) {
        gCurTask->main = sub_80AA49C;
    }
}

void sub_80AA49C(? arg7C, s32 argFC, ? *argFD)
{
    u8 var_r0;
    u8 var_r0_2;
    u8 var_r2;
    u8 var_r5;

    var_r5 = 0;
    var_r0 = 0;
    do {
        var_r2 = 0;
    loop_2:
        if (4 & gLoadedSaveGame.collectedMedals[0][var_r2 + (var_r0 * 4)]) {
            var_r5 += 1;
        }
        var_r2 += 1;
        if ((u32)var_r2 <= 3U) {
            goto loop_2;
        }
        var_r0 += 1;
    } while ((u32)var_r0 <= 6U);
    if (((3 & gLoadedSaveGame.unlockFlags) == 3) || ((gStageData.gameMode == 5) && (gStageData.unkC5 == 1)) || (gStageData.unkC5 == 1)) {
        LaunchGameIntro();
        goto block_17;
    }
    if (!(1 & gLoadedSaveGame.unlockFlags)) {
        var_r0_2 = 1;
        goto block_16;
    }
    if ((var_r5 == 0x1C) && !(2 & gLoadedSaveGame.unlockFlags)) {
        var_r0_2 = 2;
    block_16:
        sub_80AB120(var_r0_2);
    block_17:
        TaskDestroy(gCurTask);
        return;
    }
    LaunchGameIntro();
    TaskDestroy(gCurTask);
}

void sub_80AA554(u8 arg0)
{
    s32 sp4;
    u16 temp_r1;

    temp_r1 = TaskCreate(Task_48_C_80AB9CC, 0x48U, 0x100U, 0U, TaskDestructor_48_C_80AB9C8)->data;
    temp_r1->unk0 = (u8)gLoadedSaveGame.language;
    temp_r1->unk1 = arg0;
    temp_r1->unk6 = 0;
    temp_r1->unk2 = 0;
    temp_r1->unk4 = 0;
    sp4 = 0;
    (void *)0x040000D4->unk0 = &sp4;
    (void *)0x040000D4->unk4 = (s32)(((0xC & gBgCntRegs[2]) << 0xC) + 0x06000000);
    (void *)0x040000D4->unk8 = 0x85000010;
    gBgSprites_Unknown1[3] = 0;
    gBgSprites_Unknown2[3][0] = 0;
    gBgSprites_Unknown2[3][1] = 0;
    gBgSprites_Unknown2[3][2] = 0xFF;
    gBgSprites_Unknown2[3][3] = 0x40;
    gBgSprites_Unknown1[2] = 0;
    gBgSprites_Unknown2[2][0] = 0;
    gBgSprites_Unknown2[2][1] = 0;
    gBgSprites_Unknown2[2][2] = -1U;
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
    *gBgPalette = sub_80C4C0C(0U);
    gFlags |= 1;
}

void sub_80AA62C(void *arg0)
{
    Background *temp_r0;

    gDispCnt |= 0x100;
    *gBgCntRegs = 0x5687;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    temp_r0 = arg0 + 8;
    temp_r0->graphics.dest = (void *)0x06004000;
    temp_r0->graphics.anim = 0;
    temp_r0->layoutVram = (u16 *)0x0600B000;
    temp_r0->unk18 = 0;
    temp_r0->unk1A = 0;
    temp_r0->tilemapId = 0x141;
    temp_r0->unk1E = 0;
    temp_r0->unk20 = 0;
    temp_r0->unk22 = 0;
    temp_r0->unk24 = 0;
    temp_r0->targetTilesX = 0x20;
    temp_r0->targetTilesY = 0x20;
    arg0->unk32 = 0;
    temp_r0->flags = 4;
    DrawBackground(temp_r0);
}

void sub_80AA6A0(? arg7C, s32 argFC, ? *argFD)
{
    u16 temp_r1;
    u8 temp_r0;

    temp_r1 = gCurTask->data;
    if ((u32)temp_r1->unk1 > 1U) {
        m4aMPlayFadeOut(&gMPlayInfo_BGM, 4U);
        m4aMPlayFadeOut(&gMPlayInfo_SE1, 4U);
        m4aMPlayFadeOut(&gMPlayInfo_SE2, 4U);
        m4aMPlayFadeOut(&gMPlayInfo_SE3, 4U);
    }
    if (temp_r1->unk2 == 0) {
        gDispCnt |= 0x2000;
        gWinRegs->unk0 = 0xF0;
        gWinRegs[2] = 0xA0;
        gWinRegs[4] |= 0x3F;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3FFF;
        gBldRegs.bldY = 0x10;
        temp_r1->unk4 = 0x1000U;
        temp_r1->unk2 = 1U;
    }
    if (gBldRegs.bldY != 0) {
        gBldRegs.bldY = (u16)((u16)temp_r1->unk4 >> 8);
        temp_r1->unk4 = (u16)(temp_r1->unk4 - 0x40);
        return;
    }
    gBldRegs.bldY = gBldRegs.bldY;
    temp_r0 = temp_r1->unk1;
    if ((u32)temp_r0 > 1U) {
        temp_r1->unk1 = (u8)(temp_r0 - 2);
    }
    gCurTask->main = sub_80AB9F4;
}

void sub_80AA76C(? arg7C, s32 argFC, ? *argFD)
{
    u16 temp_r1;
    u8 var_r0;
    u8 var_r2;
    u8 var_r8;

    temp_r1 = gCurTask->data;
    if (temp_r1->unk2 != 0) {
        gDispCnt |= 0x2000;
        gWinRegs->unk0 = 0xF0;
        gWinRegs[2] = 0xA0;
        gWinRegs[4] |= 0x3F;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3FFF;
        temp_r1->unk4 = 0U;
        temp_r1->unk2 = 0U;
    }
    if ((u32)gBldRegs.bldY <= 0xFU) {
        gBldRegs.bldY = (u16)((u16)temp_r1->unk4 >> 8);
        temp_r1->unk4 = (u16)(temp_r1->unk4 + 0x40);
        return;
    }
    gBldRegs.bldY = 0x10;
    if (temp_r1->unk1 != 0) {
        if (!(0x20 & gLoadedSaveGame.unk34)) {
            gLoadedSaveGame.unk34 |= 0x20;
            sub_8001E58();
        }
        sub_80A8F90();
        TaskDestroy(gCurTask);
        return;
    }
    var_r8 = 0;
    if (!(0x10 & gLoadedSaveGame.unk34)) {
        gLoadedSaveGame.unk34 |= 0x10;
        sub_8001E58();
    }
    var_r0 = 0;
    do {
        var_r2 = 0;
    loop_10:
        if (4 & gLoadedSaveGame.collectedMedals[0][var_r2 + (var_r0 * 4)]) {
            var_r8 += 1;
        }
        var_r2 += 1;
        if ((u32)var_r2 <= 3U) {
            goto loop_10;
        }
        var_r0 += 1;
    } while ((u32)var_r0 <= 6U);
    if (gLoadedSaveGame.collectedEmeralds != 0x7F) {
        sub_80AA91C();
        goto block_23;
    }
    if (((3 & gLoadedSaveGame.unlockFlags) == 3) || ((gStageData.gameMode == 5) && (gStageData.unkC5 == 1)) || (gStageData.unkC5 == 1)) {
        temp_r1->unk6 = 0;
        gCurTask->main = sub_80ABA20;
        return;
    }
    if (!(1 & gLoadedSaveGame.unlockFlags)) {
        sub_80AB120(1U);
    block_23:
        TaskDestroy(gCurTask);
        return;
    }
    if (var_r8 == 0x1C) {
        sub_80AB120(2U);
        gCurTask->main = sub_80ABA80;
        return;
    }
    gCurTask->main = sub_80ABA94;
}

void sub_80AA91C(void)
{
    s32 sp4;
    u16 temp_r4;

    gDispCnt = 0x6040;
    temp_r4 = TaskCreate(Task_14C_80AAC38, 0x14CU, 0x100U, 0U, TaskDestructor_14C_80ABAF4)->data;
    temp_r4->unk0 = (u8)gLoadedSaveGame.language;
    temp_r4->unk2 = 0;
    temp_r4->unk1 = 2;
    temp_r4->unkC = 0;
    temp_r4->unk10 = 0x4000;
    temp_r4->unk8 = 0x2000;
    temp_r4->unk14 = 0;
    temp_r4->unk18 = 0xFFFF9C00;
    temp_r4->unk1C = 0xB400;
    temp_r4->unk20 = 0xA000;
    temp_r4->unk24 = 0x7800;
    temp_r4->unk28 = 0x8200;
    temp_r4->unk6 = 0;
    temp_r4->unk4 = 0;
    sp4 = 0;
    (void *)0x040000D4->unk0 = &sp4;
    (void *)0x040000D4->unk4 = (s32)(((0xC & *gBgCntRegs) << 0xC) + 0x06000000);
    (void *)0x040000D4->unk8 = 0x85000010;
    gBgSprites_Unknown1->unk0 = 0;
    gBgSprites_Unknown2[0][0] = 0;
    gBgSprites_Unknown2[0][1] = 0;
    gBgSprites_Unknown2[0][2] = 0xFF;
    gBgSprites_Unknown2[0][3] = 0x40;
    gBgSprites_Unknown1[1] = 0;
    gBgSprites_Unknown2[1][0] = 0;
    gBgSprites_Unknown2[1][1] = 0;
    gBgSprites_Unknown2[1][2] = -1U;
    gBgSprites_Unknown2[1][3] = 0x40;
    gBgSprites_Unknown1[2] = 0;
    gBgSprites_Unknown2[2][0] = 0;
    gBgSprites_Unknown2[2][1] = 0;
    gBgSprites_Unknown2[2][2] = -1U;
    gBgSprites_Unknown2[2][3] = 0x40;
    gBgSprites_Unknown1[3] = 0;
    gBgSprites_Unknown2[3][0] = 0;
    gBgSprites_Unknown2[3][1] = 0;
    gBgSprites_Unknown2[3][2] = -1U;
    gBgSprites_Unknown2[3][3] = 0x40;
    sub_80AAB6C(temp_r4);
    gWinRegs[2] = (((s32)temp_r4->unk10 >> 8) * 0x101) + ((s32)temp_r4->unk8 >> 8);
    *gBgPalette = sub_80C4C0C(0U);
    gFlags |= 1;
}

void sub_80AAA4C(void *arg0)
{
    ? *sp0;
    ? *var_r3;
    Sprite *temp_r0;
    Sprite *temp_r0_2;
    Sprite *temp_r0_3;
    s32 temp_r2;
    s32 temp_r2_3;
    s32 temp_r7;
    u8 *var_r7;
    u8 var_r4;
    void *temp_r2_2;

    var_r4 = 0;
    var_r7 = 0x06010000;
    var_r3 = &gUnknown_080DA2E8;
    do {
        temp_r0 = arg0 + ((var_r4 * 0x28) + 0x2C);
        temp_r0->tiles = var_r7;
        temp_r2 = var_r4 * 8;
        var_r7 += *(temp_r2 + (var_r3 + 4)) << 5;
        temp_r2_2 = temp_r2 + var_r3;
        temp_r0->anim = temp_r2_2->unk0;
        temp_r0->variant = temp_r2_2->unk2;
        temp_r0->prevVariant = 0xFF;
        temp_r0->x = (s16)((s32)arg0->unk1C >> 8);
        temp_r0->y = (s16)((s32)arg0->unk20 >> 8);
        temp_r0->oamFlags = 0x40;
        temp_r0->animCursor = 0;
        temp_r0->qAnimDelay = 0;
        temp_r0->animSpeed = 0x10;
        temp_r0->palId = 0;
        temp_r0->frameFlags = 0;
        sp0 = var_r3;
        UpdateSpriteAnimation(temp_r0);
        var_r4 += 1;
    } while ((u32)var_r4 <= 1U);
    temp_r0_2 = arg0 + 0x7C;
    arg0->unk7C = var_r7;
    temp_r2_3 = arg0->unk0 * 8;
    temp_r7 = var_r7 + (*(temp_r2_3 + (&gUnknown_080DA2F8 + 4)) << 5);
    temp_r0_2->anim = *(temp_r2_3 + &gUnknown_080DA2F8);
    temp_r0_2->variant = ((arg0->unk0 * 8) + &gUnknown_080DA2F8)->unk2;
    temp_r0_2->prevVariant |= ~0;
    temp_r0_2->x = (s16)((s32)arg0->unk24 >> 8);
    temp_r0_2->y = (s16)((s32)arg0->unk28 >> 8);
    temp_r0_2->oamFlags = 0;
    temp_r0_2->animCursor = 0;
    temp_r0_2->qAnimDelay = 0;
    temp_r0_2->animSpeed = 0x10;
    temp_r0_2->palId = 0;
    temp_r0_2->frameFlags = 0;
    UpdateSpriteAnimation(temp_r0_2);
    temp_r0_3 = arg0 + 0xA4;
    arg0->unkA4 = temp_r7;
    temp_r0_3->anim = gUnknown_080DA328.unk0;
    temp_r0_3->variant = gUnknown_080DA328.unk2;
    temp_r0_3->prevVariant |= ~0;
    temp_r0_3->x = (s16)((s32)arg0->unk24 >> 8);
    temp_r0_3->y = (s16)((s32)arg0->unk28 >> 8);
    temp_r0_3->oamFlags = 0;
    temp_r0_3->animCursor = 0;
    temp_r0_3->qAnimDelay = 0;
    temp_r0_3->animSpeed = 0x10;
    temp_r0_3->palId = 0;
    temp_r0_3->frameFlags = 0;
    UpdateSpriteAnimation(temp_r0_3);
}

void sub_80AAB6C(void *arg0)
{
    Background *temp_r0;
    Background *temp_r0_2;

    gBgCntRegs[2] = 0x5888;
    gBgScrollRegs[2][0] = (s16)((s32)arg0->unk14 >> 8);
    gBgScrollRegs[2][1] = (s16)((s32)arg0->unk18 >> 8);
    temp_r0 = arg0 + 0xCC;
    temp_r0->graphics.dest = (void *)0x06008000;
    temp_r0->graphics.anim = 0;
    temp_r0->layoutVram = (u16 *)0x0600C000;
    temp_r0->unk18 = 0;
    temp_r0->unk1A = 0;
    temp_r0->tilemapId = 0x12C;
    temp_r0->unk1E = 0;
    temp_r0->unk20 = 0;
    temp_r0->unk22 = 0;
    temp_r0->unk24 = 0;
    temp_r0->targetTilesX = 0x20;
    temp_r0->targetTilesY = 0x20;
    arg0->unkF6 = 0;
    temp_r0->flags = 6;
    DrawBackground(temp_r0);
    gBgCntRegs[1] = 0x681;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    temp_r0_2 = arg0 + 0x10C;
    temp_r0_2->graphics.dest = (void *)0x06000000;
    temp_r0_2->graphics.anim = 0;
    temp_r0_2->layoutVram = (u16 *)0x06003000;
    temp_r0_2->unk18 = 0;
    temp_r0_2->unk1A = 0;
    temp_r0_2->tilemapId = 0x12B;
    temp_r0_2->unk1E = 0;
    temp_r0_2->unk20 = 0;
    temp_r0_2->unk22 = 0;
    temp_r0_2->unk24 = 0;
    temp_r0_2->targetTilesX = 0x20;
    temp_r0_2->targetTilesY = 0x20;
    arg0->unk136 = 0;
    temp_r0_2->flags = 5;
    DrawBackground(temp_r0_2);
}

void Task_14C_80AAC38(? arg7C, s32 argFC, ? *argFD)
{
    s32 temp_r0;
    s32 temp_r1_2;
    s32 temp_r1_3;
    s32 temp_r1_4;
    u16 temp_r1;
    u8 var_r7;

    temp_r1 = gCurTask->data;
    var_r7 = 0;
    if (temp_r1->unk6 == 0) {
        gBldRegs.bldCnt = 0xC2;
        gDispCnt |= 0x6000;
        gWinRegs->unk0 = 0xFF;
        gWinRegs[1] = 0xFF;
        gWinRegs[3] = 0xFF;
        gWinRegs[4] = 0x1137;
        gWinRegs[5] = 0;
        gBldRegs.bldY = 0x10;
        temp_r1->unk4 = 0x1000U;
        temp_r1->unk6 = 1U;
        sub_80AAA4C((void *)temp_r1);
        gDispCnt |= 0x1600;
        m4aMPlayAllStop();
        m4aSongNumStart(0x5BU);
    }
    temp_r1_2 = temp_r1->unk10;
    if (temp_r1_2 > 0x2FFF) {
        temp_r0 = temp_r1_2 + 0xFFFFFF00;
        temp_r1->unk10 = temp_r0;
        if (temp_r0 <= 0x3000) {
            temp_r1->unk10 = 0x3000;
            var_r7 = 1;
        }
    }
    temp_r1_3 = temp_r1->unk8;
    if (temp_r1_3 <= 0x4000) {
        temp_r1_4 = temp_r1_3 + 0x200;
        temp_r1->unk8 = temp_r1_4;
        if (temp_r1_4 > 0x3FFF) {
            temp_r1->unk8 = 0x4000;
            var_r7 += 1;
        }
    }
    if (gBldRegs.bldY != 0) {
        gBldRegs.bldY = (u16)((u16)temp_r1->unk4 >> 8);
        temp_r1->unk4 = (u16)(temp_r1->unk4 + 0xFFFFFF00);
    } else {
        var_r7 += 1;
    }
    gWinRegs[2] = (((s32)temp_r1->unk10 >> 8) * 0x101) + ((s32)temp_r1->unk8 >> 8);
    if (var_r7 == 3) {
        gBldRegs.bldCnt = 0xF0;
        gWinRegs[4] = 0x3017;
        gBldRegs.bldAlpha = 0x1F;
        gBldRegs.bldY = 0;
        temp_r1->unk6 = 0U;
        temp_r1->unk4 = 0U;
        temp_r1->unk2 = 0;
        gCurTask->main = sub_80AAD6C;
    }
}

void sub_80AAD6C(? arg7C, s32 argFC, ? *argFD)
{
    u16 temp_r0;
    u16 temp_r0_2;
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    sub_80ABBC8(temp_r1);
    if ((u32)gBldRegs.bldY <= 0xFU) {
        temp_r0 = temp_r1->unk4 + 0x80;
        temp_r1->unk4 = temp_r0;
        gBldRegs.bldY = (u16)((u32)(temp_r0 << 0x10) >> 0x18);
    } else {
        *gBgPalette = sub_80C4C0C(0U);
        gFlags |= 1;
    }
    temp_r0_2 = temp_r1->unk2 + 1;
    temp_r1->unk2 = temp_r0_2;
    if ((s32)(s16)temp_r0_2 > 0x96) {
        temp_r1->unk4 = 0x1000U;
        temp_r1->unk2 = 0U;
        gBldRegs.bldCnt = 0xD0;
        gWinRegs[4] = 0x3017;
        gBldRegs.bldAlpha = 0x1F;
        gBldRegs.bldY = 0x10;
        temp_r1->unk6 = 0;
        temp_r1->unk4 = 0x1000U;
        *gBgPalette = sub_80C4C0C(0U);
        gFlags |= 1;
        gCurTask->main = sub_80AAE50;
        return;
    }
    gWinRegs[2] = (((s32)temp_r1->unk10 >> 8) * 0x101) + ((s32)temp_r1->unk8 >> 8);
    gBgScrollRegs[2][0] = (s16)((s32)temp_r1->unk14 >> 8);
    gBgScrollRegs[2][1] = (s16)((s32)temp_r1->unk18 >> 8);
}

void sub_80AAE50(? arg7C, s32 argFC, ? *argFD)
{
    u16 temp_r0;
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    sub_80ABB98(temp_r1);
    if (sub_80ABBEC(temp_r1) == 1) {
        temp_r0 = temp_r1->unk2 + 1;
        temp_r1->unk2 = temp_r0;
        if ((s32)(s16)temp_r0 > 0x3C) {
            temp_r1->unk2 = 0U;
            gCurTask->main = sub_80AAEC0;
            return;
        }
    }
    gWinRegs[2] = (((s32)temp_r1->unk10 >> 8) * 0x101) + ((s32)temp_r1->unk8 >> 8);
    gBgScrollRegs[2][0] = (s16)((s32)temp_r1->unk14 >> 8);
    gBgScrollRegs[2][1] = (s16)((s32)temp_r1->unk18 >> 8);
}

void sub_80AAEC0(? arg7C, s32 argFC, ? *argFD)
{
    u16 temp_r0;
    u16 temp_r0_2;
    u16 temp_r1;
    u16 temp_r1_2;

    temp_r1 = gCurTask->data;
    sub_80ABB98(temp_r1);
    sub_80AB0D8(temp_r1);
    temp_r1_2 = gBldRegs.bldY;
    if (temp_r1_2 != 0) {
        temp_r0 = temp_r1->unk4 + 0xFFFFFF00;
        temp_r1->unk4 = temp_r0;
        gBldRegs.bldY = (u16)((u32)(temp_r0 << 0x10) >> 0x18);
        goto block_4;
    }
    gBldRegs.bldY = temp_r1_2;
    temp_r0_2 = temp_r1->unk2 + 1;
    temp_r1->unk2 = temp_r0_2;
    if ((s32)(s16)temp_r0_2 > 0x3C) {
        temp_r1->unk2 = temp_r1_2;
        temp_r1->unk4 = temp_r1_2;
        gCurTask->main = sub_80ABAF8;
        return;
    }
block_4:
    gWinRegs[2] = (((s32)temp_r1->unk10 >> 8) * 0x101) + ((s32)temp_r1->unk8 >> 8);
    gBgScrollRegs[2][0] = (s16)((s32)temp_r1->unk14 >> 8);
    gBgScrollRegs[2][1] = (s16)((s32)temp_r1->unk18 >> 8);
}

void sub_80AAF50(? arg7C, s32 argFC, ? *argFD)
{
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    sub_80ABB98(temp_r1);
    sub_80AB0D8(temp_r1);
    if ((u32)gBldRegs.bldY <= 0xFU) {
        gBldRegs.bldY = (u16)((u16)temp_r1->unk4 >> 8);
        temp_r1->unk4 = (u16)(temp_r1->unk4 + 0x100);
        return;
    }
    gWinRegs[4] = 0x17;
    gBldRegs.bldY = 0x10;
    gCurTask->main = sub_80AAFB0;
}

void sub_80AAFB0(? arg7C, s32 argFC, ? *argFD)
{
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_4;
    u16 temp_r1;
    u8 var_r0;
    u8 var_r0_2;
    u8 var_r3;
    u8 var_r5;
    u8 var_r7;

    temp_r1 = gCurTask->data;
    var_r5 = 0;
    var_r7 = 0;
    sub_80ABB98(temp_r1);
    sub_80AB0D8(temp_r1);
    temp_r0 = temp_r1->unk10;
    if (temp_r0 <= 0x4FFF) {
        temp_r0_2 = temp_r0 + 0x100;
        temp_r1->unk10 = temp_r0_2;
        if (temp_r0_2 > 0x4FFF) {
            temp_r1->unk10 = 0x5000;
            goto block_3;
        }
    } else {
    block_3:
        var_r5 = 1;
    }
    temp_r0_3 = temp_r1->unk8;
    if (temp_r0_3 > 0) {
        temp_r0_4 = temp_r0_3 + 0xFFFFFE00;
        temp_r1->unk8 = temp_r0_4;
        if (temp_r0_4 <= 0) {
            temp_r1->unk8 = 0;
            goto block_7;
        }
    } else {
    block_7:
        var_r5 += 1;
    }
    gWinRegs[2] = (((s32)temp_r1->unk10 >> 8) * 0x101) + ((s32)temp_r1->unk8 >> 8);
    if (var_r5 == 2) {
        if (((3 & gLoadedSaveGame.unlockFlags) != 3) && ((gStageData.gameMode != 5) || (gStageData.unkC5 != 1))
            && (gStageData.unkC5 != 1)) {
            var_r0 = 0;
            do {
                var_r3 = 0;
            loop_15:
                if (4 & gLoadedSaveGame.collectedMedals[0][var_r3 + (var_r0 * 4)]) {
                    var_r7 += 1;
                }
                var_r3 += 1;
                if ((u32)var_r3 <= 3U) {
                    goto loop_15;
                }
                var_r0 += 1;
            } while ((u32)var_r0 <= 6U);
            if (!(1 & gLoadedSaveGame.unlockFlags)) {
                var_r0_2 = 1;
                goto block_23;
            }
            if (var_r7 == 0x1C) {
                var_r0_2 = 2;
            block_23:
                sub_80AB120(var_r0_2);
                TaskDestroy(gCurTask);
                return;
            }
            goto block_24;
        }
    block_24:
        gCurTask->main = sub_80ABB38;
    }
}

void sub_80AB0D8(void *arg0)
{
    Sprite *temp_r0;
    Sprite *temp_r1;
    s32 temp_r2;

    temp_r1 = arg0 + 0x7C;
    temp_r1->x = (s16)((s32)arg0->unk24 >> 8);
    temp_r2 = (s32)arg0->unk28 >> 8;
    temp_r1->y = (s16)temp_r2;
    if (arg0->unk0 != 0) {
        temp_r1->y = temp_r2 - 4;
    }
    DisplaySprite(temp_r1);
    if (arg0->unk0 != 0) {
        temp_r0 = arg0 + 0xA4;
        temp_r0->x = (s16)((s32)arg0->unk24 >> 8);
        temp_r0->y = ((s32)arg0->unk28 >> 8) + 0xA;
        DisplaySprite(temp_r0);
    }
}

void sub_80AB120(u8 param0)
{
    u16 temp_r0;

    gDispCnt = 0x1040;
    temp_r0 = TaskCreate(Task_D4_80AB1C4, 0xD4U, 0x100U, 0U, TaskDestructor_D4_80ABC1C)->data;
    temp_r0->unk0 = param0;
    temp_r0->unk4 = 0;
    temp_r0->unk8 = 0x7800;
    temp_r0->unkC = 0x5000;
    temp_r0->unk10 = 0;
    temp_r0->unk14 = 0;
    temp_r0->unk18 = 0;
    temp_r0->unk1C = 0;
    temp_r0->unk20 = 0;
    temp_r0->unk1 = 0;
    temp_r0->unk2 = 0;
    temp_r0->unk24 = 0;
    gDispCnt |= 0x2000;
    gWinRegs->unk0 = 0xF0;
    gWinRegs[2] = 0xA0;
    gWinRegs[4] |= 0x3F;
    gWinRegs[5] |= 0x1F;
    gBldRegs.bldCnt = 0x3FFF;
    gBldRegs.bldY = 0x10;
}

void Task_D4_80AB1C4(? arg7C, s32 argFC, ? *argFD)
{
    Background *temp_r0_4;
    Background *temp_r1;
    Background *var_r0;
    Sprite *temp_r0;
    s16 temp_r5;
    s32 var_r2;
    u16 temp_r6;
    u16 var_r1;
    u32 temp_r2;
    u8 temp_r0_2;
    u8 temp_r0_3;

    temp_r6 = gCurTask->data;
    temp_r5 = temp_r6->unk4;
    switch (temp_r5) { /* switch 1; irregular */
        case 0: /* switch 1 */
            temp_r0 = temp_r6 + 0x2C;
            temp_r6->unk2C = 0x06010000;
            temp_r0->anim = gUnknown_080DA358.unk0;
            temp_r0->variant = gUnknown_080DA358.unk2;
            temp_r0->prevVariant = 0xFF;
            temp_r0->x = (s16)((s32)temp_r6->unk8 >> 8);
            temp_r0->y = (s16)((s32)temp_r6->unkC >> 8);
            temp_r0->oamFlags = temp_r5;
            temp_r0->animCursor = temp_r5;
            temp_r0->qAnimDelay = temp_r5;
            temp_r0->animSpeed = 0x10;
            temp_r0->palId = 0;
            temp_r0->frameFlags = (u32)temp_r5;
            temp_r0->hitboxes[0].index = -1;
            UpdateSpriteAnimation(temp_r0);
            gDispCnt |= 0x200;
            gBgCntRegs[1] = 0x602;
            gBgScrollRegs[1][0] = temp_r5;
            gBgScrollRegs[1][1] = temp_r5;
            var_r0 = temp_r6 + 0x94;
            var_r0->graphics.dest = (void *)0x06000000;
            var_r0->graphics.anim = temp_r5;
            var_r0->layoutVram = (u16 *)0x06003000;
            var_r0->unk18 = temp_r5;
            var_r0->unk1A = temp_r5;
            var_r0->tilemapId = 0x156;
            var_r0->unk1E = temp_r5;
            var_r0->unk20 = temp_r5;
            var_r0->unk22 = temp_r5;
            var_r0->unk24 = temp_r5;
            var_r0->targetTilesX = 0x20;
            var_r0->targetTilesY = 0x20;
            temp_r6->unkBE = 0;
            var_r1 = 1;
        block_11:
            var_r0->flags = var_r1;
            DrawBackground(var_r0);
        default: /* switch 1 */
            temp_r6->unk4 = (s16)((u16)temp_r6->unk4 + 1);
            return;
        case 1: /* switch 1 */
            gBgCntRegs->unk0 = 0xE04;
            gDispCnt |= 0x100;
            gBgScrollRegs[0][0] = 0;
            gBgScrollRegs[0][1] = 0;
            temp_r1 = temp_r6 + 0x54;
            var_r2 = 0;
            temp_r0_2 = temp_r6->unk0;
            switch (temp_r0_2) { /* switch 2; irregular */
                case 1: /* switch 2 */
                    break;
                case 0: /* switch 2 */
                case 3: /* switch 2 */
                    var_r2 = 0xC;
                    break;
                case 2: /* switch 2 */
                    var_r2 = 6;
                    break;
            }
            temp_r1->graphics.dest = (void *)0x06004000;
            temp_r1->graphics.anim = 0;
            temp_r1->layoutVram = (u16 *)0x06007000;
            temp_r1->unk18 = 0;
            temp_r1->unk1A = 0;
            temp_r1->tilemapId = *(((var_r2 + gLoadedSaveGame.language) * 2) + &gUnknown_080DA330);
            temp_r1->unk1E = 0;
            temp_r1->unk20 = 0;
            temp_r1->unk22 = 0;
            temp_r1->unk24 = 0;
            temp_r1->targetTilesX = 0x20;
            temp_r1->targetTilesY = 0x20;
            temp_r1->paletteOffset = 0;
            temp_r1->flags = 0;
            DrawBackground(temp_r1);
            gDispCnt |= 0x400;
            gBgCntRegs[2] = 0x1D0D;
            gBgScrollRegs[2][0] = 0;
            gBgScrollRegs[2][1] = 0;
            var_r0 = temp_r6 + 0x94;
            var_r0->graphics.dest = (void *)0x0600C000;
            var_r0->graphics.anim = 0;
            var_r0->layoutVram = (u16 *)0x0600E800;
            var_r0->unk18 = 0;
            var_r0->unk1A = 0;
            var_r0->tilemapId = gUnknown_080DA330.unk26;
            var_r0->unk1E = 0;
            var_r0->unk20 = 0;
            var_r0->unk22 = 0;
            var_r0->unk24 = 0;
            var_r0->targetTilesX = 0x20;
            var_r0->targetTilesY = 0x20;
            temp_r6->unkBE = 0;
            var_r1 = 2;
            goto block_11;
        case 2: /* switch 1 */
            temp_r0_3 = temp_r6->unk0;
            if ((temp_r0_3 == 0) || (temp_r0_3 == 3)) {
                gDispCnt |= 0x800;
                gBgCntRegs[3] = 0x1608;
                gBgScrollRegs[3][0] = 0;
                gBgScrollRegs[3][1] = 0;
                temp_r0_4 = temp_r6 + 0x94;
                temp_r0_4->graphics.dest = (void *)0x06008000;
                temp_r0_4->graphics.anim = 0;
                temp_r0_4->layoutVram = (u16 *)0x0600B000;
                temp_r0_4->unk18 = 0;
                temp_r0_4->unk1A = 0;
                temp_r0_4->tilemapId = gUnknown_080DA330.unk24;
                temp_r0_4->unk1E = 0;
                temp_r0_4->unk20 = 0;
                temp_r0_4->unk22 = 0;
                temp_r0_4->unk24 = 0;
                temp_r0_4->targetTilesX = 0x20;
                temp_r0_4->targetTilesY = 0x20;
                temp_r6->unkBE = 0;
                temp_r0_4->flags = 3;
                DrawBackground(temp_r0_4);
            }
            *gBgPalette = 0;
            temp_r2 = gFlags | 1;
            gFlags = temp_r2;
            temp_r6->unk4 = 0;
            if (0x10000 & temp_r2) {
                CopyBgPaletteMasked(&gUnknown_080DA360, 0U, 0x50U);
            } else {
                (void *)0x040000D4->unk0 = &gUnknown_080DA360;
                (void *)0x040000D4->unk4 = gBgPalette;
                (void *)0x040000D4->unk8 = 0x80000050;
                gFlags = temp_r2 | 1;
            }
            gCurTask->main = sub_80AB4A4;
            return;
    }
}

void sub_80AB4A4(? arg7C, s32 argFC, ? *argFD)
{
    Sprite *temp_r4_2;
    u16 temp_r4;
    u8 temp_r3;

    temp_r4 = gCurTask->data;
    temp_r3 = temp_r4->unk1;
    if (temp_r3 == 0) {
        gDispCnt |= 0x2000;
        gWinRegs->unk0 = 0xF0;
        gWinRegs[2] = 0xA0;
        gWinRegs[4] |= 0x3F;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3FFF;
        gBldRegs.bldY = 0x10;
        temp_r4->unk2 = 0x1000U;
        temp_r4->unk1 = 1U;
        gBgScrollRegs[0][0] = (s16)temp_r3;
        gBgScrollRegs[0][1] = (s16)temp_r3;
        gBgScrollRegs[1][0] = (s16)temp_r3;
        gBgScrollRegs[1][1] = (s16)temp_r3;
        gBgScrollRegs[2][0] = (s16)temp_r3;
        gBgScrollRegs[2][1] = (s16)temp_r3;
        gBgScrollRegs[3][0] = (s16)temp_r3;
        gBgScrollRegs[3][1] = (s16)temp_r3;
    }
    sub_80ABD10(temp_r4);
    sub_80ABC80(temp_r4);
    sub_80ABCF4(temp_r4);
    temp_r4_2 = temp_r4 + 0x2C;
    temp_r4_2->x = (s16)((s32)temp_r4->unk8 >> 8);
    temp_r4_2->y = (s16)((s32)temp_r4->unkC >> 8);
    UpdateSpriteAnimation(temp_r4_2);
    DisplaySprite(temp_r4_2);
    if (gBldRegs.bldY != 0) {
        gBldRegs.bldY = (u16)((u16)temp_r4->unk2 >> 8);
        temp_r4->unk2 = (u16)(temp_r4->unk2 + 0xFFFFFF00);
        return;
    }
    gBldRegs.bldY = gBldRegs.bldY;
    m4aMPlayAllStop();
    if (temp_r4->unk0 == 3) {
        m4aSongNumStart(0x29FU);
    } else {
        m4aSongNumStart(0x2A1U);
    }
    gCurTask->main = sub_80AB770;
}

void sub_80AB5A8(? arg7C, s32 argFC, ? *argFD)
{
    Sprite *temp_r4;
    u16 temp_r6;
    u8 temp_r0;
    u8 var_r0;
    u8 var_r3;
    u8 var_r6;

    temp_r6 = gCurTask->data;
    if (temp_r6->unk1 != 0) {
        gDispCnt |= 0x2000;
        gWinRegs->unk0 = 0xF0;
        gWinRegs[2] = 0xA0;
        gWinRegs[4] |= 0x3F;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3FFF;
        temp_r6->unk2 = 0U;
        temp_r6->unk1 = 0U;
    }
    sub_80ABD10(temp_r6);
    sub_80ABC80(temp_r6);
    sub_80ABCF4(temp_r6);
    temp_r4 = temp_r6 + 0x2C;
    temp_r4->x = (s16)((s32)temp_r6->unk8 >> 8);
    temp_r4->y = (s16)((s32)temp_r6->unkC >> 8);
    UpdateSpriteAnimation(temp_r4);
    DisplaySprite(temp_r4);
    if ((u32)gBldRegs.bldY <= 0xFU) {
        gBldRegs.bldY = (u16)((u16)temp_r6->unk2 >> 8);
        temp_r6->unk2 = (u16)(temp_r6->unk2 + 0x100);
        return;
    }
    gBldRegs.bldY = 0x10;
    temp_r0 = temp_r6->unk0;
    switch (temp_r0) { /* irregular */
        case 1:
            var_r6 = 0;
            var_r0 = 0;
            do {
                var_r3 = 0;
            loop_7:
                if (4 & gLoadedSaveGame.collectedMedals[0][var_r3 + (var_r0 * 4)]) {
                    var_r6 += 1;
                }
                var_r3 += 1;
                if ((u32)var_r3 <= 3U) {
                    goto loop_7;
                }
                var_r0 += 1;
            } while ((u32)var_r0 <= 6U);
            gLoadedSaveGame.unlockFlags |= 1;
            sub_8001E58();
            if (var_r6 == 0x1C) {
                sub_80AB120(2U);
            block_20:
                TaskDestroy(gCurTask);
                return;
            }
            temp_r6->unk4 = 0;
        block_16:
            gCurTask->main = sub_80ABC20;
            return;
        case 2:
            gLoadedSaveGame.unlockFlags |= 2;
            sub_8001E58();
            temp_r6->unk4 = 0;
            goto block_16;
        case 0:
            TasksDestroyInPriorityRange(0U, 0xFFFFU);
            gBackgroundsCopyQueueCursor = gBackgroundsCopyQueueIndex;
            gBgSpritesCount = 0;
            gVramGraphicsCopyCursor = gVramGraphicsCopyQueueIndex;
            WarpToMap((s16)((s32)((gStageData.zone * 0xA0000) + 0x20000) >> 0x10), 4);
            return;
        default:
            CreateMainMenu(3, 1U);
            goto block_20;
    }
}

void sub_80AB770(? arg7C, s32 argFC, ? *argFD)
{
    Sprite *temp_r4_2;
    u16 temp_r0_2;
    u16 temp_r4;
    u16 var_r0;
    u8 temp_r0;

    temp_r4 = gCurTask->data;
    sub_80ABD10(temp_r4);
    sub_80ABC80(temp_r4);
    sub_80ABCF4(temp_r4);
    temp_r4_2 = temp_r4 + 0x2C;
    temp_r4_2->x = (s16)((s32)temp_r4->unk8 >> 8);
    temp_r4_2->y = (s16)((s32)temp_r4->unkC >> 8);
    UpdateSpriteAnimation(temp_r4_2);
    DisplaySprite(temp_r4_2);
    temp_r0 = temp_r4->unk0;
    if (temp_r0 == 0) {
        if ((s32)(s16)temp_r4->unk4 <= 0x77) {
            var_r0 = temp_r4->unk4 + 1;
        } else {
            goto block_4;
        }
        goto block_5;
    }
    if (temp_r0 == 3) {
    block_4:
        var_r0 = 0x78;
    block_5:
        temp_r4->unk4 = var_r0;
        if (((s32)(s16)temp_r4->unk4 > 0x77) && (1 & gPressedKeys)) {
            goto block_10;
        }
    } else {
        temp_r0_2 = temp_r4->unk4 + 1;
        temp_r4->unk4 = temp_r0_2;
        if ((s32)(temp_r0_2 << 0x10) > 0x012C0000) {
        block_10:
            gCurTask->main = sub_80AB5A8;
        }
    }
}

void TaskDestructor_40_A_80AB814(Task *arg0) { }

void Task_40_A_80AB818(? arg7C, s32 argFC, ? *argFD)
{
    u16 temp_r4;

    temp_r4 = gCurTask->data;
    sub_80AB88C(temp_r4);
    if (sub_80A9CA0((void *)temp_r4) == 1) {
        gCurTask->main = sub_80AB84C;
    }
}

void sub_80AB84C(? arg7C, s32 argFC, ? *argFD)
{
    u16 temp_r4;

    temp_r4 = gCurTask->data;
    sub_80A9D78((void *)temp_r4);
    sub_80AB88C(temp_r4);
    if (((u32) * *temp_r4 > 0xEU) && (gBldRegs.bldY == 0x10)) {
        TaskDestroy(gCurTask);
    }
}

void sub_80AB88C(void *arg0)
{
    Sprite *temp_r4;

    temp_r4 = arg0 + 0x18;
    temp_r4->x = (s16)((s32)arg0->unk10 >> 8);
    temp_r4->y = (s16)((s32)arg0->unk14 >> 8);
    DisplaySprite(temp_r4);
    UpdateSpriteAnimation(temp_r4);
}

s32 sub_80AB8B0(void *arg0)
{
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_4;

    temp_r0 = arg0->unk10;
    if ((temp_r0 > 0x1DFF) || (temp_r0_2 = temp_r0 + 0x100, arg0->unk10 = temp_r0_2, (temp_r0_2 > 0x1DFF))) {
        arg0->unk10 = 0x1E00;
        return 1;
    }
    temp_r0_3 = arg0->unk14;
    if ((temp_r0_3 <= 0x2800) || (temp_r0_4 = temp_r0_3 - 0x40, arg0->unk14 = temp_r0_4, (temp_r0_4 <= 0x2800))) {
        arg0->unk14 = 0x2800;
        return 1;
    }
    return 0;
}

void TaskDestructor_40_B_80AB8F8(Task *arg0) { }

void Task_100_80AB8FC(? arg7C, s32 argFC, ? *argFD)
{
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    sub_80AA1BC((void *)temp_r1);
    if ((u32) * *temp_r1 <= 0x13U) {
        sub_80AB93C(temp_r1);
        return;
    }
    if (sub_80AB960(temp_r1) == 1) {
        TaskDestroy(gCurTask);
    }
}

s32 sub_80AB93C(void *arg0)
{
    s32 temp_r0;
    s32 temp_r0_2;

    temp_r0 = arg0->unk8;
    if ((temp_r0 >= 0) || (temp_r0_2 = temp_r0 + 0x700, arg0->unk8 = temp_r0_2, (temp_r0_2 > 0))) {
        arg0->unk8 = 0;
        return 1;
    }
    return 0;
}

s32 sub_80AB960(void *arg0)
{
    s32 temp_r0;
    s32 temp_r0_2;

    temp_r0 = arg0->unk8;
    if ((temp_r0 <= 0xFFFF2E00) || (temp_r0_2 = temp_r0 + 0xFFFFFB00, arg0->unk8 = temp_r0_2, (temp_r0_2 < 0xFFFF2E00))) {
        arg0->unk8 = -0xD200;
        return 1;
    }
    return 0;
}

void Task_100_80AB98C(Task *arg0) { }

void TaskDestructor_54_80AB990(Task *arg0) { }

void sub_80AB994(? arg7C, s32 argFC, ? *argFD)
{
    u16 temp_r0;
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    temp_r0 = temp_r1->unk8 + 1;
    temp_r1->unk8 = temp_r0;
    if ((u32)(temp_r0 << 0x10) > 0x012C0000U) {
        temp_r1->unk8 = 0U;
        gCurTask->main = sub_80AA410;
    }
}

void TaskDestructor_48_C_80AB9C8(Task *arg0) { }

void Task_48_C_80AB9CC(? arg7C, s32 argFC, ? *argFD)
{
    sub_80AA62C((void *)gCurTask->data);
    gCurTask->main = sub_80AA6A0;
}

void sub_80AB9F4(? arg7C, s32 argFC, ? *argFD)
{
    u16 temp_r0;
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    temp_r0 = temp_r1->unk6 + 2;
    temp_r1->unk6 = temp_r0;
    if ((s32)(s16)temp_r0 > 0xB4) {
        gCurTask->main = sub_80AA76C;
    }
}

void sub_80ABA20(? arg7C, s32 argFC, ? *argFD)
{
    u16 temp_r0;
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    temp_r0 = temp_r1->unk6 + 1;
    temp_r1->unk6 = temp_r0;
    if ((s32)(s16)temp_r0 > 0xB3) {
        TasksDestroyInPriorityRange(0U, 0xFFFFU);
        gBackgroundsCopyQueueCursor = gBackgroundsCopyQueueIndex;
        gBgSpritesCount = 0;
        gVramGraphicsCopyCursor = gVramGraphicsCopyQueueIndex;
        LaunchGameIntro();
    }
}

void sub_80ABA80(? arg7C, s32 argFC, ? *argFD) {
    TaskDestroy(gCurTask);
}

void sub_80ABA94(? arg7C, s32 argFC, ? *argFD)
{
    u16 temp_r0;
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    temp_r0 = temp_r1->unk6 + 1;
    temp_r1->unk6 = temp_r0;
    if ((s32)(s16)temp_r0 > 0xB3) {
        TasksDestroyInPriorityRange(0U, 0xFFFFU);
        gBackgroundsCopyQueueCursor = gBackgroundsCopyQueueIndex;
        gBgSpritesCount = 0;
        gVramGraphicsCopyCursor = gVramGraphicsCopyQueueIndex;
        LaunchGameIntro();
    }
}

void TaskDestructor_14C_80ABAF4(Task *arg0) { }

void sub_80ABAF8(? arg7C, s32 argFC, ? *argFD)
{
    u16 temp_r0;
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    sub_80ABB98(temp_r1);
    sub_80AB0D8(temp_r1);
    temp_r0 = temp_r1->unk2 + 1;
    temp_r1->unk2 = temp_r0;
    if ((s32)(s16)temp_r0 > 0xB4) {
        temp_r1->unk2 = 0U;
        gCurTask->main = sub_80AAF50;
    }
}

void sub_80ABB38(? arg7C, s32 argFC, ? *argFD)
{
    u16 temp_r0;
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    temp_r0 = temp_r1->unk2 + 1;
    temp_r1->unk2 = temp_r0;
    if ((s32)(s16)temp_r0 > 0xB3) {
        TasksDestroyInPriorityRange(0U, 0xFFFFU);
        gBackgroundsCopyQueueCursor = gBackgroundsCopyQueueIndex;
        gBgSpritesCount = 0;
        gVramGraphicsCopyCursor = gVramGraphicsCopyQueueIndex;
        LaunchGameIntro();
    }
}

void sub_80ABB98(void *arg0)
{
    Sprite *temp_r0;
    u8 var_r4;

    var_r4 = 0;
    do {
        temp_r0 = arg0 + ((var_r4 * 0x28) + 0x2C);
        temp_r0->x = (s16)((s32)arg0->unk1C >> 8);
        temp_r0->y = (s16)((s32)arg0->unk20 >> 8);
        DisplaySprite(temp_r0);
        var_r4 += 1;
    } while ((u32)var_r4 <= 1U);
}

s32 sub_80ABBC8(void *arg0)
{
    s32 temp_r0;
    s32 temp_r2;

    temp_r2 = arg0->unk18;
    if (temp_r2 < 0) {
        temp_r0 = temp_r2 + (arg0->unk1 << 8);
        arg0->unk18 = temp_r0;
        if (temp_r0 >= 0) {
            arg0->unk18 = 0;
            return 1;
        }
    }
    return 0;
}

s32 sub_80ABBEC(void *arg0)
{
    s32 temp_r1;
    s32 temp_r1_2;

    temp_r1 = arg0->unk20;
    if (temp_r1 > 0x6FFF) {
        temp_r1_2 = (temp_r1 - 0x80) - (arg0->unk1 << 7);
        arg0->unk20 = temp_r1_2;
        if (temp_r1_2 <= 0x7000) {
            arg0->unk20 = 0x7000;
            return 1;
        }
    }
    return 0;
}

void TaskDestructor_D4_80ABC1C(Task *arg0) { }

void sub_80ABC20(? arg7C, s32 argFC, ? *argFD)
{
    u16 temp_r0;
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    temp_r0 = temp_r1->unk4 + 1;
    temp_r1->unk4 = temp_r0;
    if ((s32)(s16)temp_r0 > 0xB3) {
        TasksDestroyInPriorityRange(0U, 0xFFFFU);
        gBackgroundsCopyQueueCursor = gBackgroundsCopyQueueIndex;
        gBgSpritesCount = 0;
        gVramGraphicsCopyCursor = gVramGraphicsCopyQueueIndex;
        LaunchGameIntro();
    }
}

void sub_80ABC80(void *arg0)
{
    s32 temp_r1;
    u32 var_r3;
    void *var_r1;

    var_r3 = 0;
    temp_r1 = arg0->unk24 + 0x90;
    arg0->unk24 = temp_r1;
    gFlags |= 4;
    gHBlankCopyTarget = (void *)0x0400001A;
    gHBlankCopySize = 2;
    var_r1 = gBgOffsetsHBlankPrimary;
    do {
        if (var_r3 > 0x63U) {
            *var_r1 = (u16)(((s32)(*(((u8)(temp_r1 >> 8) * 8) + gSineTable) << 0x10) >> 0x1C) - 5);
        } else {
            *var_r1 = 0U;
        }
        var_r1 += 2;
        var_r3 = (u32)(u16)(var_r3 + 1);
    } while (var_r3 <= 0x9FU);
}

void sub_80ABCF4(void *arg0)
{
    s32 temp_r1;
    s32 temp_r2;

    temp_r2 = arg0->unk18 + 0xC0;
    arg0->unk18 = temp_r2;
    temp_r1 = arg0->unk1C - 0xC0;
    arg0->unk1C = temp_r1;
    gBgScrollRegs[1][0] = (s16)(temp_r2 >> 8);
    gBgScrollRegs[1][1] = (s16)(temp_r1 >> 8);
}

void sub_80ABD10(void *arg0)
{
    s32 temp_r1;

    temp_r1 = arg0->unk20 + 0x220;
    arg0->unk20 = temp_r1;
    arg0->unk8 = 0x7800;
    arg0->unkC = (s32)((((s32)(*(((u8)(temp_r1 >> 8) * 8) + gSineTable) << 0x10) >> 0x16) * 8) + 0x7A00);
}

void sub_80ABD44(u8 arg0)
{
    u16 temp_r0;

    temp_r0 = TaskCreate(Task_62C_80ABE28, 0x62CU, 0x100U, 0U, TaskDestructor_62C_80AC9E4)->data;
    temp_r0->unk1 = 0;
    temp_r0->unk4 = 0;
    temp_r0->unk10 = 0x06010000;
    temp_r0->unk8 = 0;
    temp_r0->unkC = 0;
    temp_r0->unk2 = 0;
    temp_r0->unk0 = arg0;
    if (0x20000 & gFlags) {
        CopyObjPaletteMasked(&gUnknown_080DB824, 0x70U, 0x10U);
    } else {
        (void *)0x040000D4->unk0 = &gUnknown_080DB824;
        (void *)0x040000D4->unk4 = &gObjPalette[0x70];
        (void *)0x040000D4->unk8 = 0x80000010;
        gFlags |= 2;
    }
    if (0x20000 & gFlags) {
        CopyObjPaletteMasked(&gUnknown_080DB804, 0xE0U, 0x10U);
        return;
    }
    (void *)0x040000D4->unk0 = &gUnknown_080DB804;
    (void *)0x040000D4->unk4 = &gObjPalette[0xE0];
    (void *)0x040000D4->unk8 = 0x80000010;
    gFlags |= 2;
}

void Task_62C_80ABE28(? arg7C, s32 argFC, ? *argFD)
{
    s32 sp0;
    Sprite *temp_r0;
    Sprite *temp_r0_3;
    Sprite *temp_r0_4;
    Sprite *temp_r0_5;
    Sprite *temp_r0_6;
    Sprite *temp_r0_7;
    s32 temp_r8;
    u16 temp_r1;
    u8 temp_r0_2;
    u8 var_r4;

    temp_r1 = gCurTask->data;
    var_r4 = temp_r1->unk1;
    if ((s32)var_r4 < (s32)(var_r4 + 0xA)) {
        temp_r8 = gUnknown_080DA420.unk4 << 5;
        do {
            temp_r0 = temp_r1 + ((var_r4 * 0x28) + 0x14);
            temp_r0->tiles = temp_r1->unk10;
            temp_r1->unk10 = (u8 *)(temp_r1->unk10 + temp_r8);
            temp_r0->anim = gUnknown_080DA420.unk0;
            temp_r0->variant = var_r4 + gUnknown_080DA420.unk2;
            temp_r0->prevVariant = 0xFF;
            temp_r0->x = 0;
            temp_r0->y = 0;
            temp_r0->oamFlags = 0x200;
            temp_r0->animCursor = 0;
            temp_r0->qAnimDelay = 0;
            temp_r0->animSpeed = 0x10;
            temp_r0->palId = 0;
            temp_r0->frameFlags = 0x80;
            UpdateSpriteAnimation(temp_r0);
            var_r4 += 1;
        } while ((s32)var_r4 < (s32)(temp_r1->unk1 + 0xA));
    }
    temp_r0_2 = temp_r1->unk1 + 0xA;
    temp_r1->unk1 = temp_r0_2;
    if ((u32)temp_r0_2 <= 0x1DU) {
        return;
    }
    temp_r0_3 = temp_r1 + ((temp_r1->unk1 * 0x28) + 0x14);
    temp_r0_3->tiles = temp_r1->unk10;
    temp_r1->unk10 = (u8 *)(temp_r1->unk10 + 0x20);
    temp_r0_3->anim = 0x462;
    temp_r0_3->variant = 0xE;
    temp_r0_3->prevVariant = 0xFF;
    temp_r0_3->x = 0;
    temp_r0_3->y = 0;
    temp_r0_3->oamFlags = 0x200;
    temp_r0_3->animCursor = 0;
    temp_r0_3->qAnimDelay = 0;
    temp_r0_3->animSpeed = 0x10;
    temp_r0_3->palId = 0;
    temp_r0_3->frameFlags = 0x80;
    sp0 = 0;
    UpdateSpriteAnimation(temp_r0_3);
    temp_r1->unk1 = (u8)(temp_r1->unk1 + 1);
    temp_r0_4 = temp_r1 + ((temp_r1->unk1 * 0x28) + 0x14);
    temp_r0_4->tiles = temp_r1->unk10;
    temp_r1->unk10 = (u8 *)(temp_r1->unk10 + 0x40);
    temp_r0_4->anim = 0x462;
    temp_r0_4->variant = 6;
    temp_r0_4->prevVariant = -1U;
    temp_r0_4->x = 0;
    temp_r0_4->y = 0;
    temp_r0_4->oamFlags = 0x200;
    temp_r0_4->animCursor = 0;
    temp_r0_4->qAnimDelay = 0;
    temp_r0_4->animSpeed = 0x10;
    temp_r0_4->palId = 0;
    temp_r0_4->frameFlags = 0x80;
    sp0 = 0;
    UpdateSpriteAnimation(temp_r0_4);
    temp_r1->unk1 = (u8)(temp_r1->unk1 + 1);
    temp_r0_5 = temp_r1 + ((temp_r1->unk1 * 0x28) + 0x14);
    temp_r0_5->tiles = temp_r1->unk10;
    temp_r1->unk10 = (u8 *)(temp_r1->unk10 + 0x40);
    temp_r0_5->anim = 0x462;
    temp_r0_5->variant = 8;
    temp_r0_5->prevVariant = -1U;
    temp_r0_5->x = 0;
    temp_r0_5->y = 0;
    temp_r0_5->oamFlags = 0x200;
    temp_r0_5->animCursor = 0;
    temp_r0_5->qAnimDelay = 0;
    temp_r0_5->animSpeed = 0x10;
    temp_r0_5->palId = 0;
    temp_r0_5->frameFlags = 0x80;
    sp0 = 0;
    UpdateSpriteAnimation(temp_r0_5);
    temp_r1->unk1 = (u8)(temp_r1->unk1 + 1);
    temp_r0_6 = temp_r1 + ((temp_r1->unk1 * 0x28) + 0x14);
    temp_r0_6->tiles = temp_r1->unk10;
    temp_r1->unk10 = (u8 *)(temp_r1->unk10 + 0x40);
    temp_r0_6->anim = 0x462;
    temp_r0_6->variant = 9;
    temp_r0_6->prevVariant = -1U;
    temp_r0_6->x = 0;
    temp_r0_6->y = 0;
    temp_r0_6->oamFlags = 0x200;
    temp_r0_6->animCursor = 0;
    temp_r0_6->qAnimDelay = 0;
    temp_r0_6->animSpeed = 0x10;
    temp_r0_6->palId = 0;
    temp_r0_6->frameFlags = 0x80;
    sp0 = 0;
    UpdateSpriteAnimation(temp_r0_6);
    temp_r1->unk1 = (u8)(temp_r1->unk1 + 1);
    temp_r0_7 = temp_r1 + ((temp_r1->unk1 * 0x28) + 0x14);
    temp_r0_7->tiles = temp_r1->unk10;
    temp_r1->unk10 = (u8 *)(temp_r1->unk10 + 0x40);
    temp_r0_7->anim = 0x462;
    temp_r0_7->variant = 0xD;
    temp_r0_7->prevVariant = -1U;
    temp_r0_7->x = 0;
    temp_r0_7->y = 0;
    temp_r0_7->oamFlags = 0x200;
    temp_r0_7->animCursor = 0;
    temp_r0_7->qAnimDelay = 0;
    temp_r0_7->animSpeed = 0x10;
    temp_r0_7->palId = 0;
    temp_r0_7->frameFlags = 0x80;
    UpdateSpriteAnimation(temp_r0_7);
    temp_r1->unk1 = 0U;
    gCurTask->main = sub_80AC030;
}

void sub_80AC030(? arg7C, s32 argFC, ? *argFD)
{
    Sprite *temp_r0;
    s32 temp_r3;
    u16 temp_r4;
    u8 var_r5;
    void *temp_r3_2;

    temp_r4 = gCurTask->data;
    var_r5 = 0;
    do {
        temp_r0 = temp_r4 + ((var_r5 * 0x28) + 0x58C);
        temp_r0->tiles = temp_r4->unk10;
        temp_r3 = var_r5 * 8;
        temp_r4->unk10 = (u8 *)(temp_r4->unk10 + (*(temp_r3 + (&gUnknown_080DB844 + 4)) << 5));
        temp_r3_2 = temp_r3 + &gUnknown_080DB844;
        temp_r0->anim = temp_r3_2->unk0;
        temp_r0->variant = temp_r3_2->unk2;
        temp_r0->prevVariant = 0xFF;
        temp_r0->x = 0;
        temp_r0->y = 0;
        temp_r0->oamFlags = 0x200;
        temp_r0->animCursor = 0;
        temp_r0->qAnimDelay = 0;
        temp_r0->animSpeed = 0x10;
        temp_r0->palId = 0;
        temp_r0->frameFlags = 0x80;
        UpdateSpriteAnimation(temp_r0);
        var_r5 += 1;
    } while ((u32)var_r5 <= 3U);
    gCurTask->main = sub_80AC0C4;
}

void sub_80AC0C4(? arg7C, s32 argFC, ? *argFD)
{
    u16 temp_r1;
    u32 temp_r1_2;
    u8 temp_r0;
    u8 temp_r5;
    void *temp_r2;

    temp_r1 = gCurTask->data;
    sub_80AC2B4(temp_r1);
    if (temp_r1->unk0 == 0) {
        if (!(0x10 & gLoadedSaveGame.unk34)) {
            goto block_6;
        }
        goto block_4;
    }
    if (0x20 & gLoadedSaveGame.unk34) {
    block_4:
        if (8 & gInput) {
            TasksDestroyInPriorityRange(0U, 0xFFFFU);
            gBackgroundsCopyQueueCursor = gBackgroundsCopyQueueIndex;
            gBgSpritesCount = 0;
            gVramGraphicsCopyCursor = gVramGraphicsCopyQueueIndex;
            sub_80AA554((u8)(temp_r1->unk0 + 2));
            return;
        }
        goto block_6;
    }
block_6:
    temp_r1_2 = temp_r1->unkC + 0x80;
    temp_r1->unkC = temp_r1_2;
    temp_r5 = temp_r1->unk1;
    temp_r2 = (temp_r5 * 0x28) + &strCredits_CreatedBy;
    if ((s32)(s16)((temp_r1_2 >> 8) - 0xA) >= (s32)temp_r2->unk24) {
        if (temp_r2->unk26 == 2) {
            sub_80ACA80(temp_r5, temp_r1->unk2, temp_r1 + 0x58C, temp_r1 + 8, temp_r1 + 0xC);
            temp_r1->unk2 = (u8)(temp_r1->unk2 + 1);
        } else {
            sub_80AC9E8(temp_r5, temp_r1 + 0x14, temp_r1 + 8, temp_r1 + 0xC);
        }
        temp_r0 = temp_r1->unk1 + 1;
        temp_r1->unk1 = temp_r0;
        if ((u32)temp_r0 > 0x7EU) {
            gCurTask->main = sub_80AC1E8;
        }
    }
}

void sub_80AC1E8(? arg7C, s32 argFC, ? *argFD)
{
    u16 temp_r1;
    u32 temp_r0;

    temp_r1 = gCurTask->data;
    sub_80AC2B4(temp_r1);
    if (temp_r1->unk0 == 0) {
        if (!(0x10 & gLoadedSaveGame.unk34)) {
            goto block_6;
        }
        goto block_4;
    }
    if (0x20 & gLoadedSaveGame.unk34) {
    block_4:
        if (8 & gInput) {
            TasksDestroyInPriorityRange(0U, 0xFFFFU);
            gBackgroundsCopyQueueCursor = gBackgroundsCopyQueueIndex;
            gBgSpritesCount = 0;
            gVramGraphicsCopyCursor = gVramGraphicsCopyQueueIndex;
            sub_80AA554((u8)(temp_r1->unk0 + 2));
            return;
        }
        goto block_6;
    }
block_6:
    temp_r0 = temp_r1->unkC + 0x80;
    temp_r1->unkC = temp_r0;
    if ((u32)(temp_r0 >> 8) >= (u32)(strCredits_CreatedBy.unk13D4 + 0x82)) {
        sub_80ACAF0(temp_r1->unk0);
        TaskDestroy(gCurTask);
    }
}

void sub_80AC2B4(void)
{
    u8 var_r2;
    u8 var_r2_2;
    u8 var_r2_3;
    u8 var_r2_4;
    u8 var_r2_5;
    u8 var_r2_6;
    u8 var_r2_7;
    u8 var_r3;
    u8 var_r3_2;
    void *var_r1;

    var_r3 = 0;
    gFlags |= 4;
    gHBlankCopyTarget = (void *)0x04000052;
    gHBlankCopySize = 2;
    var_r1 = gBgOffsetsHBlankPrimary;
    var_r2 = 0;
    do {
        *var_r1 = 0xFF00;
        var_r1 += 2;
        var_r2 += 1;
    } while ((u32)var_r2 <= 0x27U);
    var_r2_2 = 0x28;
    do {
        *var_r1 = 0xF00;
        var_r1 += 2;
        var_r2_2 += 1;
    } while ((u32)var_r2_2 <= 0x31U);
    var_r2_3 = 0x32;
    do {
        *var_r1 = (u16) * ((var_r3 * 2) + &gUnknown_080DB930);
        var_r1 += 2;
        var_r3 += 1;
        var_r2_3 += 1;
    } while ((u32)var_r2_3 <= 0x40U);
    var_r2_4 = 0x41;
    do {
        *var_r1 = 0xF;
        var_r1 += 2;
        var_r2_4 += 1;
    } while ((u32)var_r2_4 <= 0x68U);
    var_r3_2 = 0xE;
    var_r2_5 = 0x69;
    do {
        *var_r1 = (u16) * ((var_r3_2 * 2) + &gUnknown_080DB930);
        var_r1 += 2;
        var_r3_2 -= 1;
        var_r2_5 += 1;
    } while ((u32)var_r2_5 <= 0x77U);
    var_r2_6 = 0x73;
    do {
        *var_r1 = 0xF00;
        var_r1 += 2;
        var_r2_6 += 1;
    } while ((u32)var_r2_6 <= 0x82U);
    var_r2_7 = 0x82;
    do {
        *var_r1 = 0xFF00;
        var_r1 += 2;
        var_r2_7 += 1;
    } while ((u32)var_r2_7 <= 0xA0U);
}

void Task_130_80AC398(? arg7C, s32 argFC, ? *argFD)
{
    Sprite *temp_r5;
    s32 *temp_r1_3;
    s32 *temp_r1_6;
    s32 temp_r0;
    s32 temp_r1_5;
    s32 temp_r2;
    s32 temp_r3;
    s32 temp_r4_3;
    s8 temp_r1_4;
    s8 temp_r4;
    s8 temp_r4_2;
    s8 var_r4;
    u16 temp_r1;
    u32 temp_r1_7;
    u8 temp_r0_2;
    u8 temp_r1_2;
    u8 var_r0;
    u8 var_r1;

    temp_r1 = gCurTask->data;
    var_r4 = 0;
    if ((s32) * ((temp_r1->unk0 * 0x28) + &strCredits_CreatedBy) <= 0) {

    } else {
    loop_2:
        temp_r4 = var_r4;
        temp_r1_2 = *(temp_r4 + (temp_r1->unk0 * 0x28) + (&strCredits_CreatedBy + 1));
        switch (temp_r1_2) { /* irregular */
            case 48:
                temp_r0 = temp_r1 + 0x14;
                temp_r2 = temp_r4 * 8;
                *(temp_r0 + ((temp_r4 + 1) * 8)) = *(temp_r0 + temp_r2) + 0x800;
                temp_r1_3 = temp_r1 + 0x18 + temp_r2;
                *temp_r1_3 -= 0x80;
                break;
            case 46:
                var_r1 = 0x1E;
            block_15:
                temp_r1_4 = (s8)var_r1;
                temp_r5 = temp_r1->unk12C + (temp_r1_4 * 0x28);
                temp_r1_5 = temp_r1->unkC;
                temp_r5->x = (s16)temp_r1_5;
                temp_r4_2 = var_r4;
                temp_r3 = temp_r1 + 0x14;
                if (temp_r4_2 != 0) {
                    temp_r5->x = temp_r1_5 + ((s32) * (temp_r3 + (temp_r4_2 * 8)) >> 8);
                }
                temp_r4_3 = temp_r4_2 * 8;
                *(temp_r3 + ((temp_r4_2 + 1) * 8)) = *(temp_r3 + temp_r4_3) + (*((temp_r1_4 * 4) + &gUnknown_080DB868) << 8);
                temp_r1_6 = temp_r1 + 0x18 + temp_r4_3;
                temp_r5->y = temp_r1->unk10 + ((s32)*temp_r1_6 >> 8);
                *temp_r1_6 -= 0x80;
                temp_r0_2 = ((temp_r1->unk0 * 0x28) + &strCredits_CreatedBy)->unk26;
                if (temp_r0_2 == 1) {
                    var_r0 = 8;
                } else if (temp_r0_2 == 3) {
                    var_r0 = 0;
                } else {
                    var_r0 = 1;
                }
                temp_r5->palId = var_r0;
                DisplaySprite(temp_r5);
                break;
            case 38:
                var_r1 = 0x1F;
                goto block_15;
            case 40:
                var_r1 = 0x20;
                goto block_15;
            case 41:
                var_r1 = 0x21;
                goto block_15;
            case 45:
                var_r1 = 0x22;
                goto block_15;
            default:
                var_r1 = temp_r1_2 - 0x41;
                goto block_15;
        }
        temp_r1_7 = (var_r4 << 0x18) + 0x01000000;
        var_r4 = (s8)(temp_r1_7 >> 0x18);
        if ((s32)((s32)temp_r1_7 >> 0x18) < (s32) * ((temp_r1->unk0 * 0x28) + &strCredits_CreatedBy)) {
            goto loop_2;
        }
    }
    if ((s32)temp_r1->unk18 <= 0x2CFF) {
        TaskDestroy(gCurTask);
    }
}

void Task_294_80AC51C(? arg7C, s32 argFC, ? *argFD)
{
    Sprite *temp_r0_3;
    Sprite *temp_r0_4;
    s32 temp_r2_2;
    u16 temp_r2;
    u8 temp_r0;
    u8 temp_r0_2;
    u8 var_r4;

    temp_r2 = gCurTask->data;
    temp_r0 = temp_r2->unk1;
    if ((u32)temp_r0 <= 0xEU) {
        temp_r0_2 = temp_r0 + 5;
        temp_r2->unk1 = temp_r0_2;
        var_r4 = temp_r0;
        if ((u32)var_r4 < (u32)temp_r0_2) {
            do {
                temp_r0_3 = temp_r2 + ((var_r4 * 0x28) + 0x3C);
                temp_r0_3->tiles = temp_r2->unk8;
                temp_r2->unk8 = (u8 *)(temp_r2->unk8 + 0x80);
                temp_r0_3->anim = gUnknown_080DB950.unk0;
                temp_r0_3->variant = var_r4 + gUnknown_080DB950.unk2;
                temp_r0_3->prevVariant = 0xFF;
                temp_r2_2 = var_r4 * 2;
                temp_r0_3->x = *(temp_r2_2 + &gUnknown_080DB958) + 0x38;
                temp_r0_3->y = *(temp_r2_2 + (&gUnknown_080DB958 + 1)) + 0x84;
                temp_r0_3->oamFlags = 0;
                temp_r0_3->animCursor = 0;
                temp_r0_3->qAnimDelay = 0;
                temp_r0_3->animSpeed = 0x10;
                temp_r0_3->palId = 0;
                temp_r0_3->frameFlags = 0;
                UpdateSpriteAnimation(temp_r0_3);
                var_r4 += 1;
            } while ((u32)var_r4 < (u32)temp_r2->unk1);
        }
    } else {
        temp_r0_4 = temp_r2 + 0x14;
        temp_r2->unk14 = (u8 *)temp_r2->unk8;
        temp_r2->unk8 = (u8 *)(temp_r2->unk8 + 0x580);
        temp_r0_4->anim = 0x5F1;
        temp_r0_4->variant = 0;
        temp_r0_4->prevVariant = 0xFF;
        temp_r0_4->x = (s16)((s32)temp_r2->unkC >> 8);
        temp_r0_4->y = (s16)((s32)temp_r2->unk10 >> 8);
        temp_r0_4->oamFlags = 0;
        temp_r0_4->animCursor = 0;
        temp_r0_4->qAnimDelay = 0;
        temp_r0_4->animSpeed = 0x10;
        temp_r0_4->palId = 0;
        temp_r0_4->frameFlags = 0;
        UpdateSpriteAnimation(temp_r0_4);
        temp_r2->unk1 = 0U;
        gCurTask->main = sub_80AC620;
    }
}

void sub_80AC620(? arg7C, s32 argFC, ? *argFD)
{
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    sub_80ACBD4(temp_r1);
    if (*temp_r1 == 0) {
        if (!(0x10 & gLoadedSaveGame.unk34)) {
            goto block_6;
        }
        goto block_4;
    }
    if (0x20 & gLoadedSaveGame.unk34) {
    block_4:
        if (8 & gInput) {
            TasksDestroyInPriorityRange(0U, 0xFFFFU);
            gBackgroundsCopyQueueCursor = gBackgroundsCopyQueueIndex;
            gBgSpritesCount = 0;
            gVramGraphicsCopyCursor = gVramGraphicsCopyQueueIndex;
            sub_80AA554((u8)(*temp_r1 + 2));
            return;
        }
        goto block_6;
    }
block_6:
    if (sub_80ACBA8(temp_r1) == 1) {
        m4aSongNumStart(0x200U);
        gCurTask->main = sub_80AC6DC;
    }
}

void sub_80AC6DC(? arg7C, s32 argFC, ? *argFD)
{
    u16 temp_r0_2;
    u16 temp_r1;
    u8 temp_r0;
    u8 temp_r0_3;
    u8 temp_r1_2;

    temp_r1 = gCurTask->data;
    temp_r0 = temp_r1->unk2 - 1;
    temp_r1->unk2 = temp_r0;
    if ((s32)(s8)temp_r0 <= 0x1D) {
        sub_80ACBD4(temp_r1);
        if ((s32)(s8)temp_r1->unk2 < 0) {
            temp_r1->unk2 = 0x32U;
        }
    }
    sub_80ACBF0(temp_r1);
    if (temp_r1->unk0 == 0) {
        if (!(0x10 & gLoadedSaveGame.unk34)) {
            goto block_9;
        }
        goto block_7;
    }
    if (0x20 & gLoadedSaveGame.unk34) {
    block_7:
        if (8 & gInput) {
            TasksDestroyInPriorityRange(0U, 0xFFFFU);
            gBackgroundsCopyQueueCursor = gBackgroundsCopyQueueIndex;
            gBgSpritesCount = 0;
            gVramGraphicsCopyCursor = gVramGraphicsCopyQueueIndex;
            sub_80AA554((u8)(temp_r1->unk0 + 2));
            return;
        }
        goto block_9;
    }
block_9:
    temp_r1_2 = temp_r1->unk1;
    if ((u32)temp_r1_2 <= 0x12U) {
        temp_r0_2 = temp_r1->unk4 + 1;
        temp_r1->unk4 = temp_r0_2;
        if ((s16)temp_r0_2 == 0xA) {
            temp_r1->unk4 = 0U;
            temp_r0_3 = temp_r1_2 + 1;
            temp_r1->unk1 = temp_r0_3;
            if ((u32)temp_r0_3 > 0x13U) {
                temp_r1->unk1 = 0x13U;
            }
        }
    } else {
        gCurTask->main = sub_80AC7D0;
    }
}

void sub_80AC7D0(? arg7C, s32 argFC, ? *argFD)
{
    u16 temp_r0;
    u16 temp_r1;
    u8 temp_r0_2;

    temp_r1 = gCurTask->data;
    sub_80ACBF0(temp_r1);
    if (temp_r1->unk0 == 0) {
        if (!(0x10 & gLoadedSaveGame.unk34)) {
            goto block_6;
        }
        goto block_4;
    }
    if (0x20 & gLoadedSaveGame.unk34) {
    block_4:
        if (8 & gInput) {
            TasksDestroyInPriorityRange(0U, 0xFFFFU);
            gBackgroundsCopyQueueCursor = gBackgroundsCopyQueueIndex;
            gBgSpritesCount = 0;
            gVramGraphicsCopyCursor = gVramGraphicsCopyQueueIndex;
            sub_80AA554((u8)(temp_r1->unk0 + 2));
            return;
        }
        goto block_6;
    }
block_6:
    temp_r0 = temp_r1->unk4 + 1;
    temp_r1->unk4 = temp_r0;
    if ((s32)(s16)temp_r0 > 0x78) {
        gDispCnt |= 0x2000;
        gWinRegs->unk0 = 0xF0;
        gWinRegs[2] = 0xA0;
        gWinRegs[4] |= 0x3F;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3FFF;
        temp_r1->unk6 = 0;
        gCurTask->main = sub_80AC8F0;
        return;
    }
    temp_r0_2 = temp_r1->unk2 - 1;
    temp_r1->unk2 = temp_r0_2;
    if ((s32)(s8)temp_r0_2 <= 0x1D) {
        sub_80ACBD4(temp_r1);
        if ((s32)(s8)temp_r1->unk2 < 0) {
            temp_r1->unk2 = 0x32U;
        }
    }
}

void sub_80AC8F0(? arg7C, s32 argFC, ? *argFD)
{
    u16 temp_r1;
    u8 temp_r0;

    temp_r1 = gCurTask->data;
    if (temp_r1->unk0 == 0) {
        if (!(0x10 & gLoadedSaveGame.unk34)) {
            goto block_6;
        }
        goto block_4;
    }
    if (0x20 & gLoadedSaveGame.unk34) {
    block_4:
        if (8 & gInput) {
            TasksDestroyInPriorityRange(0U, 0xFFFFU);
            gBackgroundsCopyQueueCursor = gBackgroundsCopyQueueIndex;
            gBgSpritesCount = 0;
            gVramGraphicsCopyCursor = gVramGraphicsCopyQueueIndex;
            sub_80AA554((u8)(temp_r1->unk0 + 2));
            return;
        }
        goto block_6;
    }
block_6:
    if ((u32)gBldRegs.bldY > 0xFU) {
        gBldRegs.bldY = 0x10;
        sub_80AA554(temp_r1->unk0);
        TaskDestroy(gCurTask);
        return;
    }
    gBldRegs.bldY = (u16)((u16)temp_r1->unk6 >> 8);
    temp_r1->unk6 = (u16)(temp_r1->unk6 + 0x100);
    temp_r0 = temp_r1->unk2 - 1;
    temp_r1->unk2 = temp_r0;
    if ((s32)(s8)temp_r0 <= 0x1D) {
        sub_80ACBD4(temp_r1);
        if ((s32)(s8)temp_r1->unk2 < 0) {
            temp_r1->unk2 = 0x32U;
        }
    }
    sub_80ACBF0(temp_r1);
}

void TaskDestructor_62C_80AC9E4(Task *arg0) { }

void sub_80AC9E8(u8 arg0, s32 arg1, s32 arg2, s32 arg3)
{
    s32 temp_r1;
    u16 temp_r3;
    u8 var_r2;

    temp_r3 = TaskCreate(Task_130_80AC398, 0x130U, 0x100U, 0U, TaskDestructor_130_80ACB48)->data;
    temp_r3->unk12C = arg1;
    temp_r3->unk0 = arg0;
    temp_r3->unk4 = arg2;
    temp_r3->unk8 = arg3;
    temp_r3->unkC = (s32)((temp_r3->unk0 * 0x28) + &strCredits_CreatedBy)->unk22;
    temp_r3->unk10 = 0;
    var_r2 = 0;
    do {
        temp_r1 = var_r2 * 8;
        *(temp_r3 + 0x14 + temp_r1) = 0;
        *(temp_r3 + 0x18 + temp_r1) = 0x8200;
        var_r2 += 1;
    } while ((u32)var_r2 <= 0x22U);
}

void sub_80ACA80(u8 arg0, u8 arg1, s32 arg2, s32 arg3, s32 arg4)
{
    u16 temp_r1;

    temp_r1 = TaskCreate(Task_18_80ACB50, 0x18U, 0x100U, 0U, TaskDestructor_18_80ACB4C)->data;
    temp_r1->unk1 = arg1;
    temp_r1->unk0 = arg0;
    temp_r1->unk4 = arg3;
    temp_r1->unk8 = arg4;
    temp_r1->unkC = (s32)(((temp_r1->unk0 * 0x28) + &strCredits_CreatedBy)->unk22 << 8);
    temp_r1->unk10 = 0x8200;
    temp_r1->unk14 = arg2;
}

void sub_80ACAF0(u8 arg0)
{
    u16 temp_r0;

    temp_r0 = TaskCreate(Task_294_80AC51C, 0x294U, 0x100U, 0U, TaskDestructor_294_80ACBA4)->data;
    temp_r0->unk0 = arg0;
    temp_r0->unk1 = 0;
    temp_r0->unk4 = 0;
    temp_r0->unk2 = 0x1E;
    temp_r0->unkC = 0x7800;
    temp_r0->unk10 = 0x8C00;
    temp_r0->unk6 = 0;
    temp_r0->unk8 = 0x06010000;
}

void TaskDestructor_130_80ACB48(Task *arg0) { }

void TaskDestructor_18_80ACB4C(Task *arg0) { }

void Task_18_80ACB50(? arg7C, s32 argFC, ? *argFD)
{
    Sprite *temp_r0;
    s32 temp_r0_2;
    u16 temp_r4;

    temp_r4 = gCurTask->data;
    temp_r0 = temp_r4->unk14 + (*(temp_r4->unk1 + &gUnknown_080DB864) * 0x28);
    temp_r0->x = (s16)((s32)temp_r4->unkC >> 8);
    temp_r0->y = (s16)((s32)temp_r4->unk10 >> 8);
    DisplaySprite(temp_r0);
    temp_r0_2 = temp_r4->unk10 - 0x80;
    temp_r4->unk10 = temp_r0_2;
    if (temp_r0_2 <= 0x1DFF) {
        TaskDestroy(gCurTask);
    }
}

void TaskDestructor_294_80ACBA4(Task *arg0) { }

s32 sub_80ACBA8(void *arg0)
{
    s32 temp_r0;
    s32 temp_r0_2;

    temp_r0 = arg0->unk10;
    if ((temp_r0 <= 0x1400) || (temp_r0_2 = temp_r0 + 0xFFFFFE00, arg0->unk10 = temp_r0_2, (temp_r0_2 <= 0x1400))) {
        arg0->unk10 = 0x1400;
        return 1;
    }
    return 0;
}

void sub_80ACBD4(void *arg0)
{
    Sprite *temp_r2;

    temp_r2 = arg0 + 0x14;
    temp_r2->x = (s16)((s32)arg0->unkC >> 8);
    temp_r2->y = (s16)((s32)arg0->unk10 >> 8);
    DisplaySprite(temp_r2);
}

void sub_80ACBF0(void *arg0)
{
    Sprite *temp_r0;
    s32 temp_r2;
    u8 var_r4;

    var_r4 = 0;
    if ((u32)arg0->unk1 > 0U) {
        do {
            temp_r0 = arg0 + ((*(var_r4 + &gUnknown_080DB97E) * 0x28) + 0x3C);
            temp_r2 = var_r4 * 2;
            temp_r0->x = *(temp_r2 + &gUnknown_080DB958) + 0x38;
            temp_r0->y = *(temp_r2 + (&gUnknown_080DB958 + 1)) + 0x84;
            DisplaySprite(temp_r0);
            var_r4 += 1;
        } while ((u32)var_r4 < (u32)arg0->unk1);
    }
}
#endif

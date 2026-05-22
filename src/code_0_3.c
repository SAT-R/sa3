#include "global.h"
#include "core.h"
#include "flags.h"
#include "color.h"
#include "game/stage.h"

typedef struct {
    /* 0x000 */ Sprite sprites0[13];
    /* 0x208 */ u8 filler214[0xC];
    /* 0x214 */ ColorRaw palette214[16];
    /* 0x234 */ u8 unk234;
} Strc_8022FB0;

void Task_8022FEC();
void sub_8022E84(void);
s32 sub_8023000();

void sub_8022978(void);
void sub_8022A24(void);
void sub_8022B30(Strc_8022FB0 *strc);

extern const u8 gUnknown_080CE438[][2];
extern const u8 gUnknown_080CE4B2[][2];
extern const u16 gUnknown_080CEE40[4][16];

void sub_8022978(void)
{
    u32 seconds;
    u32 temp_r0_2;
    u16 temp_r0_3;
    u32 temp_r4;
    u16 index;
    u16 temp_r4_2;
    Strc_8022FB0 *strc = TASK_DATA(gCurTask);
    Sprite *s;

    seconds = Div(gStageData.levelTimer, 60);
    temp_r4 = seconds;
    index = (gStageData.levelTimer - (seconds * 60));
    temp_r4 = (u16)temp_r4;
    s = &strc->sprites0[6];
    s->variant = gUnknown_080CE4B2[index][0] + 16;
    s = &strc->sprites0[7];
    s->variant = gUnknown_080CE4B2[index][1] + 16;
    temp_r0_2 = Div(temp_r4, 60);
    temp_r4 = (temp_r4 - (temp_r0_2 * 60));

    temp_r4_2 = temp_r4;
    temp_r0_3 = temp_r0_2;
    s = &strc->sprites0[4];
    s->variant = gUnknown_080CE438[temp_r4_2][0] + 16;
    s = &strc->sprites0[5];
    s->variant = gUnknown_080CE438[temp_r4_2][1] + 16;
    s = &strc->sprites0[3];
    s->variant = temp_r0_3 + 16;
}

// TODO: Make this color-format-independent!
void sub_8022A24(void)
{
    s32 temp_r5;
    s8 temp_r4_2;
    s8 i;
    u16 temp_r3;
    u16 temp_r0;
    u8 *temp_r3_2;
    u8 temp_r1;
    u8 temp_r4;
    s8 var_r0;
    s8 local_var;
    u32 channelMask;

    Strc_8022FB0 *strc = TASK_DATA(gCurTask);

    if ((u32)gStageData.unk8E <= 3U) {
        strc->unk234 = (strc->unk234 + 1) % 64u;
        if (0x20 & strc->unk234) {
            var_r0 = 0x40 - strc->unk234;
        } else {
            var_r0 = strc->unk234;
        }

        for (i = 0, local_var = var_r0; i < (s32)ARRAY_COUNT(strc->palette214); i++) {
            ColorRaw r, g, b;

            temp_r3 = gUnknown_080CEE40[gStageData.unk8E][i];

            temp_r0 = (31 * (32 - local_var)) >> 5;
            r = ((((temp_r3 & 0x1F) * local_var) >> 5) + temp_r0) & 0x1F;
            g = (((((temp_r3 >> 5) & 0x1F) * local_var) >> 5) + temp_r0) & 0x1F;
            b = (((((temp_r3 >> 10) & 0x1F) * local_var) >> 5) + temp_r0) & 0x1F;
            strc->palette214[i] = r | (g << 5) | b << 10;
        }

        DmaCopy16(3, &strc->palette214[0], &gObjPalette[8 * PALETTE_LEN_4BPP], sizeof(strc->palette214));
        gFlags |= FLAGS_UPDATE_SPRITE_PALETTES;
    }
}

#if 0
void sub_8022B30(Strc_8022FB0 *strc) {
    Sprite s;
    s32 sp28;
    Sprite *temp_r7;
    Sprite *temp_r7_10;
    Sprite *temp_r7_11;
    Sprite *temp_r7_2;
    Sprite *temp_r7_3;
    Sprite *temp_r7_4;
    Sprite *temp_r7_5;
    Sprite *temp_r7_6;
    Sprite *temp_r7_7;
    Sprite *temp_r7_8;
    Sprite *temp_r7_9;
    Strc_8022FB0 *var_r7;
    Strc_8022FB0 *var_r7_2;
    u32 temp_r0;
    u32 temp_r0_2;
    u32 var_r4;
    u32 var_r4_2;

    sp28 = 0;
    CpuSet(&sp28, &s, 0x0500000AU);
    s.prevAnim = 0xFFFF;
    s.prevVariant = 0xFF;
    s.animSpeed = 0x10;
    var_r7 = strc;
    var_r4 = 0;
    do {
        CpuSet(&s, var_r7, 0x0400000AU);
        temp_r0 = (var_r4 << 0x10) + 0x10000;
        var_r7 += 0x28;
        var_r4 = temp_r0 >> 0x10;
    } while ((s32) ((s32) temp_r0 >> 0x10) <= 0xC);
    strc->sprites0[0].tiles = (u8 *)0x06012000;
    strc->sprites0[0].anim = 0x58D;
    strc->sprites0[0].variant = 0;
    strc->sprites0[0].x = 0x8C;
    strc->sprites0[0].y = 0xA;
    strc->sprites0[1].tiles = (u8 *)0x06012040;
    strc->sprites0[1].anim = 0x462;
    strc->sprites0[1].variant = 0x1A;
    strc->sprites0[1].x = 0xB4;
    strc->sprites0[1].y = 0x14;
    temp_r7 = &strc->sprites0[1] + 0x28;
    strc->sprites0[2].tiles = (u8 *)0x06012080;
    temp_r7->anim = 0x462;
    temp_r7->variant = 0x1A;
    temp_r7->x = 0xD2;
    temp_r7->y = 0x14;
    temp_r7_2 = temp_r7 + 0x28;
    temp_r7->unk28 = 0x060120C0;
    temp_r7_2->anim = 0x462;
    temp_r7_2->variant = 0x10;
    temp_r7_2->x = 0xAA;
    temp_r7_2->y = 0x14;
    temp_r7_3 = temp_r7_2 + 0x28;
    temp_r7_2->unk28 = 0x06012100;
    temp_r7_3->anim = 0x462;
    temp_r7_3->variant = 0x10;
    temp_r7_3->x = 0xBE;
    temp_r7_3->y = 0x14;
    temp_r7_4 = temp_r7_3 + 0x28;
    temp_r7_3->unk28 = 0x06012140;
    temp_r7_4->anim = 0x462;
    temp_r7_4->variant = 0x10;
    temp_r7_4->x = 0xC8;
    temp_r7_4->y = 0x14;
    temp_r7_5 = temp_r7_4 + 0x28;
    temp_r7_4->unk28 = 0x06012180;
    temp_r7_5->anim = 0x462;
    temp_r7_5->variant = 0x10;
    temp_r7_5->x = 0xDC;
    temp_r7_5->y = 0x14;
    temp_r7_6 = temp_r7_5 + 0x28;
    temp_r7_5->unk28 = 0x060121C0;
    temp_r7_6->anim = 0x462;
    temp_r7_6->variant = 0x10;
    temp_r7_6->x = 0xE6;
    temp_r7_6->y = 0x14;
    temp_r7_7 = temp_r7_6 + 0x28;
    temp_r7_6->unk28 = 0x06012200;
    temp_r7_7->anim = 0x5EC;
    temp_r7_7->variant = 0;
    temp_r7_7->frameFlags |= 0x40000;
    temp_r7_7->palId = 0;
    temp_r7_7->x = 0xA;
    temp_r7_7->y = 2;
    temp_r7_8 = temp_r7_7 + 0x28;
    temp_r7_7->unk28 = 0x060122C0;
    temp_r7_8->anim = 0x5EC;
    temp_r7_8->variant = 0;
    temp_r7_8->frameFlags |= 0x40000;
    temp_r7_8->palId = 1;
    temp_r7_8->x = 0x1E;
    temp_r7_8->y = 2;
    temp_r7_9 = temp_r7_8 + 0x28;
    temp_r7_8->unk28 = 0x06012380;
    temp_r7_9->anim = 0x5EC;
    temp_r7_9->variant = 0;
    temp_r7_9->frameFlags |= 0x40000;
    temp_r7_9->palId = 2;
    temp_r7_9->x = 0x32;
    temp_r7_9->y = 2;
    temp_r7_10 = temp_r7_9 + 0x28;
    temp_r7_9->unk28 = 0x06012440;
    temp_r7_10->anim = 0x5EC;
    temp_r7_10->variant = 0;
    temp_r7_10->frameFlags |= 0x40000;
    temp_r7_10->palId = 3;
    temp_r7_10->x = 0x46;
    temp_r7_10->y = 2;
    temp_r7_11 = temp_r7_10 + 0x28;
    temp_r7_10->unk28 = 0x06012500;
    temp_r7_11->anim = 0x5E7;
    temp_r7_11->variant = 0;
    temp_r7_11->frameFlags = temp_r7_11->frameFlags | 0x40020 | gNextFreeAffineIndex;
    temp_r7_11->palId = 8;
    temp_r7_11->x = 0x78;
    temp_r7_11->y = 0x8C;
    gNextFreeAffineIndex += 1;
    strc->unk208 = 0;
    strc->unk20A = 0x100;
    strc->unk20C = 0x100;
    strc->unk20E = 0x78;
    strc->unk210 = 0x8C;
    TransformSprite(temp_r7_11, (SpriteTransform *) strc->filler16C);
    var_r7_2 = strc;
    var_r4_2 = 0;
    do {
        UpdateSpriteAnimation(var_r7_2->sprites0);
        temp_r0_2 = (var_r4_2 << 0x10) + 0x10000;
        var_r7_2 += 0x28;
        var_r4_2 = temp_r0_2 >> 0x10;
    } while ((s32) ((s32) temp_r0_2 >> 0x10) <= 0xC);
}

void sub_8022D40(Sprite *arg0) {
    Sprite *temp_r4;
    Sprite *var_r4;
    Sprite *var_r4_2;
    s16 temp_r2;
    s16 temp_r5;
    s16 var_r5;
    s16 var_r5_2;
    u16 temp_r0_2;
    u32 temp_r0;
    u32 temp_r0_3;
    u32 temp_r0_4;
    u32 var_r5_3;
    u32 var_r5_4;
    u32 var_r6;

    var_r5 = 0;
    do {
        temp_r2 = var_r5;
        if (gStageData.unk8E == temp_r2) {
            (arg0 + (temp_r2 * 0x28))->unk15F = 8;
        } else {
            (arg0 + (temp_r2 * 0x28))->unk15F = (s8) var_r5;
        }
        temp_r0 = (var_r5 << 0x10) + 0x10000;
        var_r5 = (s16) (temp_r0 >> 0x10);
    } while ((s32) ((s32) temp_r0 >> 0x10) <= 3);
    if ((gStageData.unk8E != gStageData.playerIndex) && (gStageData.unk8E != 0xFF) && ((sub_8023000() << 0x18) == 0)) {
        sub_8022E84();
        temp_r4 = arg0 + 0x1E0;
        UpdateSpriteAnimation(temp_r4);
        DisplaySprite(temp_r4);
    }
    var_r4 = arg0 + 0x140;
    var_r5_2 = 0;
    do {
        temp_r5 = var_r5_2;
        if (((s32) gUnknown_03001060.unk7 >> temp_r5) & 1) {
            UpdateSpriteAnimation(var_r4);
            DisplaySprite(var_r4);
        }
        temp_r0_2 = temp_r5 + 1;
        var_r4 += 0x28;
        var_r5_2 = (s16) temp_r0_2;
    } while ((s32) (s16) temp_r0_2 <= 3);
    UpdateSpriteAnimation(arg0);
    DisplaySprite(arg0);
    var_r4_2 = arg0 + 0x28;
    var_r5_3 = 0;
    do {
        UpdateSpriteAnimation(var_r4_2);
        DisplaySprite(var_r4_2);
        temp_r0_3 = (var_r5_3 << 0x10) + 0x10000;
        var_r4_2 += 0x28;
        var_r5_3 = temp_r0_3 >> 0x10;
    } while ((s32) ((s32) temp_r0_3 >> 0x10) <= 1);
    var_r6 = 0;
    if ((u32) gStageData.levelTimer <= 0xE0FU) {
        var_r6 = (u32) (0 - (u16) (0x10 & gStageData.levelTimer)) >> 0x1F;
    }
    var_r5_4 = 0;
    do {
        UpdateSpriteAnimation(var_r4_2);
        var_r4_2->palId = (u8) var_r6;
        DisplaySprite(var_r4_2);
        var_r4_2->palId = 0;
        temp_r0_4 = (var_r5_4 << 0x10) + 0x10000;
        var_r4_2 += 0x28;
        var_r5_4 = temp_r0_4 >> 0x10;
    } while ((s32) ((s32) temp_r0_4 >> 0x10) <= 4);
}

void sub_8022E84(void *arg0) {
    void *sp0;
    Player *temp_r0;
    Player *temp_r6;
    Sprite *temp_r1;
    s16 temp_r0_2;
    s16 temp_r4_2;
    u16 temp_r4;
    u16 var_r5;
    u16 var_r7;
    u32 temp_r5;
    u32 temp_r7;

    temp_r6 = &gPlayers[gStageData.playerIndex];
    temp_r0 = &gPlayers[gStageData.unk8E];
    temp_r1 = arg0 + 0x1E0;
    temp_r7 = (u32) ((temp_r6->qWorldX - temp_r0->qWorldX) << 8) >> 0x10;
    temp_r5 = (u32) ((temp_r6->qWorldY - temp_r0->qWorldY) << 8) >> 0x10;
    temp_r1->frameFlags = gNextFreeAffineIndex | 0x40020;
    gNextFreeAffineIndex += 1;
    sp0 = arg0;
    arg0->unk208 = (s16) ((sa2__sub_8004418((s16) ((s32) (temp_r5 << 0x10) >> 0x12), (s16) ((s32) (temp_r7 << 0x10) >> 0x12)) + 0xFFFFFF00) & 0x3FF);
    temp_r4 = (s16) (0 - (s16) temp_r7) + (((s32) temp_r6->qWorldX >> 8) - gCamera.x);
    var_r5 = (s16) (0 - (s16) temp_r5) + (((s32) temp_r6->qWorldY >> 8) - gCamera.y);
    var_r7 = temp_r4;
    temp_r4_2 = (s16) temp_r4;
    if ((s32) temp_r4_2 <= 0xF) {
        var_r7 = 0x10;
    } else if ((s32) temp_r4_2 > 0xE0) {
        var_r7 = 0xE0;
    }
    temp_r0_2 = (s16) var_r5;
    if ((s32) temp_r0_2 <= 0x17) {
        var_r5 = 0x18;
    } else if ((s32) temp_r0_2 > 0x90) {
        var_r5 = 0x90;
    }
    arg0->unk20E = var_r7;
    arg0->unk210 = var_r5;
    TransformSprite(temp_r1, arg0 + 0x208);
}

void sub_8022FB0(void) {
    u16 temp_r4;

    temp_r4 = TaskCreate(Task_8022FEC, 0x238U, 0x2100U, 0U, NULL)->data;
    sub_8022B30((Strc_8022FB0 *) temp_r4);
    temp_r4->unk234 = 0;
}

void Task_8022FEC(void) {
    sub_8022978(NULL);
    sub_8022A24(NULL);
    sub_8022D40(NULL);
}

s32 sub_8023000(void) {
    PlayerSpriteInfo *temp_r0;
    s16 temp_r0_2;

    temp_r0 = gPlayers[gStageData.unk8E].spriteInfoBody;
    if ((u32) (u16) ((u16) temp_r0->s.x - 1) <= 0xEEU) {
        temp_r0_2 = temp_r0->s.y;
        if (((s32) temp_r0_2 > 0) && ((s32) temp_r0_2 <= 0x9F)) {
            return 1;
        }
    }
    return 0;
}
#endif

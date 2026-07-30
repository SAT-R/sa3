#include "global.h"
#include "core.h"
#include "trig.h"
#include "lib/m4a/m4a.h"
#include "game/stage.h"
#include "game/sa3/bosses/gemerl.h"
#include "game/sa3/bosses/eggman_escape.h"
#include "game/shared/stage/player.h"
#include "game/shared/stage/screen_shake.h"
#include "game/shared/stage/terrain_collision.h"
#include "constants/animations.h"
#include "constants/move_states.h"
#include "constants/songs.h"

void Task_10C_807A784(void);
void sub_807B5E4(void);
void sub_807A8B4(GemerlAttacks *strc10C);
void sub_807A84C(GemerlAttacks *strc10C);

void sub_807A6D4(GemerlAttacks *strc10C, u8 *vram);

bool32 sub_807B664(GemerlAttacks *strc10C, bool32 param1);

extern const s32 gUnknown_080D5B88[10];
extern const s32 gUnknown_080D5BB0[10];
extern const s16 gUnknown_080D5BD8[10];
extern const s16 gUnknown_080D5BEC[2][7];

void sub_807A574(Gemerl *gemerl, u8 param1, u8 param2, u8 param3)
{
    Player *p;
    GemerlAttacks *strc10C = TASK_DATA(TaskCreate(Task_10C_807A784, sizeof(GemerlAttacks), 0x2100U, 0U, NULL));
    SpriteTransform *tf = &strc10C->tf60;
    u32 spriteFlags;
    s32 someX;

    strc10C->callback = gUnknown_080D5B00[param1].callbackA;
    strc10C->stateIndex = param1;
    strc10C->unk25 = param3;
    strc10C->unk26 = param2;
    someX = gemerl->qSomeX;
    strc10C->unk4 = (gemerl->spr3C.frameFlags & 0x400) ? someX - Q(4) : someX + Q(4);
    strc10C->unk8 = (gemerl->qSomeY - Q(8));
    strc10C->unk14 = (((4 - gemerl->unk20) * 32) + 32);
    strc10C->unk16 = 0;
    strc10C->unk18 = 0;
    strc10C->unk1A = 0;
    strc10C->unk1C = &gemerl->unk24[param2];
    strc10C->unk20 = &gemerl->unk31;
    p = GET_SP_PLAYER_V1(PLAYER_1);
    strc10C->players[0] = GET_SP_PLAYER_V1(PLAYER_1);
    strc10C->players[1] = GET_SP_PLAYER_V1(PLAYER_2);
    spriteFlags = gemerl->spr3C.frameFlags;
    strc10C->unk27 = GetBit(spriteFlags, SPRITE_FLAG_SHIFT_X_FLIP);
    strc10C->unk28 = gemerl->unk20;
    strc10C->gemerl = gemerl;
    tf->rotation = 0;
    tf->qScaleX = Q(1);
    tf->qScaleY = Q(1);
    tf->x = 0;
    tf->y = 0;

    sub_807A6D4(strc10C, gemerl->vram4);

    if (strc10C->stateIndex != 8) {
        m4aSongNumStart(SE_527);
    }
}

void sub_807A6D4(GemerlAttacks *strc10C, u8 *vram)
{
    u8 i;
    Sprite *s = &strc10C->spr38;

    s->tiles = vram;
    s->anim = ANIM_GEMERL_TINY_MISSILE;
    s->variant = 0;
    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x1000;
    s->x = 0;
    s->y = 0;
    UpdateSpriteAnimation(s);
    vram += MAX_TILES(ANIM_GEMERL_TINY_MISSILE) * TILE_SIZE_4BPP;

    for (i = 0; i < (s32)ARRAY_COUNT(strc10C->sprites6C); i++) {
        s = &strc10C->sprites6C[i];
        s->tiles = vram;
        s->anim = ANIM_EXPLOSION_1273;
        s->variant = 1;
        s->oamFlags = SPRITE_OAM_ORDER(10);
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->prevVariant = -1;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->hitboxes[0].index = -1;
        s->x = 0;
        s->y = 0;
        s->frameFlags = 0x80000;
        UpdateSpriteAnimation(s);
    }
}

void Task_10C_807A784(void)
{
    Gemerl *gemerl;
    s16 temp_r5, temp_r4;
    GemerlAttacks *strc10C = TASK_DATA(gCurTask);
    Sprite *s = &strc10C->spr38;
    bool32 playerHit = 0;
    gemerl = strc10C->gemerl;

    if ((gemerl != NULL) && (gemerl->unk20 <= 0)) {
        *strc10C->unk1C = 0;
        TaskDestroy(gCurTask);
        return;
    }

    playerHit |= strc10C->callback(strc10C);
    temp_r5 = I(strc10C->unk4);
    temp_r4 = I(strc10C->unk8);
    playerHit |= sub_8020CE0(s, temp_r5, temp_r4, 0, strc10C->players[0]);
    playerHit |= sub_8020CE0(s, temp_r5, temp_r4, 0, strc10C->players[1]);
    playerHit |= sub_807B664(strc10C, 1);

    if (playerHit) {
        strc10C->unk1A = 0;
        gCurTask->main = sub_807B5E4;
        sub_807A8B4(strc10C);
        m4aSongNumStart(SE_CAPSULE_DESTROY);
    } else {
        strc10C->unkC = strc10C->unk4;
        strc10C->unk10 = strc10C->unk8;
        sub_807A84C(strc10C);
    }
}

void sub_807A84C(GemerlAttacks *strc10C)
{
    Sprite *s = &strc10C->spr38;
    SpriteTransform *tf = &strc10C->tf60;

    s->x = I(strc10C->unk4) - gCamera.x;
    s->y = I(strc10C->unk8) - gCamera.y;
    s->frameFlags = (s->frameFlags & ~0x7F) | (u8)(gNextFreeAffineIndex++ | 0x60);
    tf->x = s->x;
    tf->y = s->y;
    UpdateSpriteAnimation(s);
    TransformSprite(s, tf);
    DisplaySprite(s);
}

extern const s32 gUnknown_080D5B78[4];

void sub_807A8B4(GemerlAttacks *strc10C)
{
    s16 temp_r4_2;
    s16 temp_r5_2;
    s32 temp_r5, temp_r4;
    u8 var_r0;
    u8 var_r7;
    Sprite *s;
    SpriteTransform *tf;
    s32 var_r5 = (u8)(strc10C->unk1A >> 2);
    s16 screenX, screenY;
#if 0
    s32 sp4[4] = { //
        Q(0), -Q(4), //
        +Q(4), Q(0)//
    };
#else
    s32 sp4[4];
    memcpy(sp4, gUnknown_080D5B78, sizeof(sp4));
#endif
    if (var_r5 > 3U) {
        var_r5 = 3;
    }

    screenX = I(strc10C->unk4) - gCamera.x;
    screenY = I(strc10C->unk8) - gCamera.y;

    if (((strc10C->unk1A & 0x3) == 0) && (strc10C->unk1A < 13)) {
        s = &strc10C->sprites6C[var_r5];
        tf = &strc10C->tf60;
        temp_r4 = sp4[var_r5];
        s->x = screenX + ((SIN(tf->rotation) * temp_r4) >> 0x16);
        s->y = screenY + ((COS(tf->rotation) * temp_r4) >> 0x16);
    }
    if (strc10C->unk1A < 21) {
        var_r0 = 0;
    } else {
        var_r0 = ((strc10C->unk1A - 20) >> 2);
    }

    for (var_r7 = var_r0; var_r7 < var_r5 + 1; var_r7++) {
        s = &strc10C->sprites6C[var_r7];
        screenX = s->x + gCamera.x;
        screenY = s->y + gCamera.y;
        sub_8020CE0(s, screenX, screenY, 0, strc10C->players[0]);
        sub_8020CE0(s, screenX, screenY, 0, strc10C->players[1]);
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

bool32 sub_807AA04(GemerlAttacks *strc10C)
{
    const GemerlFuncs *entry = &gUnknown_080D5B00[strc10C->stateIndex];

    strc10C->tf60.rotation = 0;
    strc10C->unk16 = ((s32)(COS(0x300) * strc10C->unk14) >> 0xE) + strc10C->unk16;
    strc10C->unk18 = ((s32)(SIN(0x300) * strc10C->unk14) >> 0xE) + strc10C->unk18;
    strc10C->unk8 += strc10C->unk18;
    if (strc10C->unk8 < Q(gCamera.minY)) {
        strc10C->unk18 = 0;
        strc10C->callback = entry->callbackB;
    }
    return 0U;
}

bool32 sub_807AA80(GemerlAttacks *strc10C)
{
    s32 sp0[10];
    void *temp_r0;
    void *temp_r0_2;
    void *temp_r1;
    void *temp_r1_2;
    u16 angle = 0x100;

    memcpy(sp0, gUnknown_080D5B88, sizeof(sp0));
    strc10C->tf60.rotation = 0x200;
    strc10C->unk4 = sp0[strc10C->unk25] + Q(gCamera.x);
    strc10C->unk16 += ((COS(angle) * strc10C->unk14) >> 14);
    strc10C->unk18 += ((SIN(angle) * strc10C->unk14) >> 14);
    strc10C->unk8 += strc10C->unk18;

    return 0U;
}

bool32 sub_807AB0C(GemerlAttacks *strc10C)
{
    s32 sp0[10];
    s32 temp_r1_3;
    u16 var_r0;
    void *temp_r0;
    void *temp_r0_2;
    void *temp_r1;
    void *temp_r1_2;
    const GemerlFuncs *entry = &gUnknown_080D5B00[strc10C->stateIndex];

    memcpy(sp0, gUnknown_080D5BB0, sizeof(sp0));

    strc10C->unk18 = (u16)strc10C->unk18 - 0x40;
    temp_r1_3 = strc10C->unk8 + strc10C->unk18;
    strc10C->unk8 = temp_r1_3;
    if (temp_r1_3 < (s32)(gCamera.minY << 8)) {
        strc10C->tf60.rotation = 0x200;
        if (strc10C->unk27 != 0) {
            strc10C->unk4 -= Q(sp0[strc10C->unk26]);
            strc10C->tf60.rotation = strc10C->tf60.rotation - 0x50;
        } else {
            strc10C->unk4 += Q(sp0[strc10C->unk26]);
            strc10C->tf60.rotation = strc10C->tf60.rotation + 0x50;
        }

        strc10C->unk8 = 0;
        strc10C->unk18 = 0;
        strc10C->unk16 = 0;
        strc10C->callback = entry->callbackB;
    }
    return 0U;
}

// (96.09%) https://decomp.me/scratch/Z06eQ
NONMATCH("asm/non_matching/game/bosses/gatk__sub_807ABB8.inc", bool32 sub_807ABB8(GemerlAttacks *strc10C))
{
    s32 temp_r1;
    s32 temp_r2;
    s32 rotation;
    SpriteTransform *tf;
    s32 dx, dy;

    if (strc10C->unk27 != 0) {
        strc10C->unk16 += (strc10C->unk14 >> 2) + (strc10C->unk26 * 4);
        strc10C->unk18 += (strc10C->unk14 >> 1) + 32;
    } else {
        strc10C->unk16 -= (strc10C->unk14 >> 2) + (strc10C->unk26 * 4);
        strc10C->unk18 += (strc10C->unk14 >> 1) + 32;
    }
    strc10C->unk4 += strc10C->unk16;
    strc10C->unk8 += strc10C->unk18;
    rotation = SA2_LABEL(sub_8004418)((I(strc10C->unk10 - strc10C->unk8)), (I(strc10C->unkC - strc10C->unk4)));
    tf = &strc10C->tf60;
    rotation -= Q(1);
    tf->rotation = (rotation)&0x3FF;
    return 0U;
}
END_NONMATCH

// (98.69%) https://decomp.me/scratch/KfevY
NONMATCH("asm/non_matching/game/bosses/gatk__sub_807AC48.inc", bool32 sub_807AC48(GemerlAttacks *strc10C))
{
    s16 var_r0;
    s32 temp_r2;
    s32 temp_r2_2;
    s32 var_r0_2;
    s32 var_r0_3;
    s32 var_r7;
    u8 *var_r5;
    u8 temp_r1;
    s32 rotation;
    SpriteTransform *tf;
    const GemerlFuncs *entry = &gUnknown_080D5B00[strc10C->stateIndex];

    var_r7 = 0;
    if ((s32)strc10C->unk18 > -Q(3)) {
        strc10C->unk18 = (u16)strc10C->unk18 - 0x30;
    } else {
        if (strc10C->unk27 != 0) {
            strc10C->unk16 += 80;
        } else {
            strc10C->unk16 -= 80;
        }
    }
    temp_r2 = strc10C->unk4 + strc10C->unk16;
    strc10C->unk4 = temp_r2;
    strc10C->unk8 += strc10C->unk18;
    if (strc10C->unk27 != 0) {
        if (temp_r2 > (s32)((gCamera.maxX + 0x14) << 8)) {
            var_r7 = 1;
        }
    } else {
        if (temp_r2 < (s32)((gCamera.minX - 0x14) << 8)) {
            var_r7 = 1;
        }
    }

    if (var_r7 != 0) {
        s32 r2;
        strc10C->callback = entry->callbackB;
        strc10C->unk16 = 0;
        strc10C->unk18 = 0;
        r2 = (gCamera.maxY - 0x28);
        strc10C->unk8 = (r2 - (0x46 * (1 & strc10C->unk26))) << 8;

        if (strc10C->unk28 == 1) {
            if (1 & strc10C->unk26) {
                strc10C->unk8 += (strc10C->unk26 << 8);
            } else {
                strc10C->unk8 -= (strc10C->unk26 << 8);
            }
        }
        if (strc10C->unk27 != 0) {
            strc10C->unk4 = ((gCamera.maxX + 0x14) << 8) + ((0x32 - (strc10C->unk26 * 4)) << 0xA);
        } else {
            strc10C->unk4 = ((gCamera.minX - 0x14) << 8) - ((0x32 - (strc10C->unk26 * 4)) << 0xA);
        }
    }
    rotation = SA2_LABEL(sub_8004418)((I(strc10C->unk10 - strc10C->unk8)), (I(strc10C->unkC - strc10C->unk4)));
    tf = &strc10C->tf60;
    rotation -= Q(1);
    tf->rotation = (rotation)&0x3FF;
    return 0U;
}
END_NONMATCH

// (93.86%) https://decomp.me/scratch/P8qmG
NONMATCH("asm/non_matching/game/bosses/gatk__sub_807AD88.inc", bool32 sub_807AD88(GemerlAttacks *strc10C))
{
    s16 sp0[10];
    s32 temp_r1;
    s32 temp_r2;
    u16 var_r0;
    u32 var_r5;

    memcpy(sp0, gUnknown_080D5BD8, sizeof(sp0));
    var_r5 = 0;
    if (strc10C->unk27 != 0) {
        if (strc10C->unk4 >= (s32)((gCamera.minX + 0x28) << 8)) {
            strc10C->unk16 = -sp0[strc10C->unk26];
        } else {
            var_r5 = 1;
        }
    } else {
        if (strc10C->unk4 > (s32)((gCamera.maxX - 0x28) << 8)) {
            var_r5 = 1;
        } else {
            strc10C->unk16 = +sp0[strc10C->unk26];
        }
    }
    strc10C->unk4 += strc10C->unk16;
    strc10C->unk8 += strc10C->unk18;
    strc10C->tf60.rotation = (SA2_LABEL(sub_8004418)(I(strc10C->unk10 - strc10C->unk8), I(strc10C->unkC - strc10C->unk4)) - Q(1)) & 0x3FF;
    return var_r5;
}
END_NONMATCH

// (92.36%) https://decomp.me/scratch/zZvFM
NONMATCH("asm/non_matching/game/bosses/gatk__sub_807AE3C.inc", bool32 sub_807AE3C(GemerlAttacks *strc10C))
{
    const GemerlFuncs *entry = &gUnknown_080D5B00[strc10C->stateIndex];
    bool32 flag = 0;
    bool32 flag2 = 0;
    s32 minY = (gCamera.maxY - DISPLAY_HEIGHT);
    u8 *unk26 = &strc10C->unk26;
    minY += (*unk26 * 20);
    if (strc10C->unk8 <= Q(minY)) {
        if (++strc10C->unk1A >= 16) {
            flag = 0;
            flag2 = 0;
        } else {
            flag2 = 1;
        }
        flag = 1;
    } else {
        if (strc10C->unk1A == 0) {
            if (strc10C->unk27 != 0) {
                strc10C->unk16 = +0xD0;
            } else {
                strc10C->unk16 = -0xD0;
            }
            strc10C->unk18 = -Q(3) - ((6 - strc10C->unk26) * 0x6C);
        }
        strc10C->unk1A += 1;
        strc10C->unk18 += 0x20;
        strc10C->unk4 += strc10C->unk16;
        strc10C->unk8 += strc10C->unk18;
        minY = (gCamera.maxY - DISPLAY_HEIGHT);
        minY += (*unk26 * 20);
        if (strc10C->unk8 < Q(minY)) {
            strc10C->unk1A = 0;
        }
    }
blk:

    if (flag != 0) {
        if (flag2 == 0) {
            Player *p;
            strc10C->callback = entry->callbackB;
            strc10C->unk1A = 0;
            p = strc10C->players[0];
            strc10C->tf60.rotation = (u16)SA2_LABEL(sub_8004418)(I(strc10C->unk8 - p->qWorldY), I(strc10C->unk4 - p->qWorldX));
        } else {
        temp_lbl:
            if (strc10C->unk27 != 0) {
                strc10C->tf60.rotation = (strc10C->tf60.rotation + 0x40) & 0x3FF;
            } else {
                strc10C->tf60.rotation = (strc10C->tf60.rotation - 0x40) & 0x3FF;
            }
        }

        strc10C->unk16 = 0;
        strc10C->unk18 = 0;
        {
            s32 minY = (gCamera.maxY - DISPLAY_HEIGHT);
            strc10C->unk8 = (minY + (*unk26 * 0x14)) << 8;
        }
    } else {
        strc10C->tf60.rotation = SA2_LABEL(sub_8004418)(I(strc10C->unk10 - strc10C->unk8), I(strc10C->unkC - strc10C->unk4));
    }

    strc10C->tf60.rotation = (strc10C->tf60.rotation - Q(1)) & 0x3FF;

    return 0;
}
END_NONMATCH

bool32 sub_807AFBC(GemerlAttacks *strc10C)
{
    u16 temp_r1;
    u32 result = 0;
    if (++strc10C->unk1A == 0x78) {
        result = 1;
    } else if ((s32)strc10C->unk1A >= (s32)(strc10C->unk28 * 0x14)) {
        temp_r1 = (strc10C->tf60.rotation - Q(1)) & 0x3FF;
        strc10C->unk16 = ((s32)(gSineTable[temp_r1 + 0x100] * (strc10C->unk14 + 0x40)) >> 0x10) + (u16)strc10C->unk16;
        strc10C->unk18 = ((s32)(gSineTable[temp_r1] * (strc10C->unk14 + 0x40)) >> 0x10) + (u16)strc10C->unk18;
    }
    strc10C->unk4 += strc10C->unk16;
    strc10C->unk8 += strc10C->unk18;
    return result;
}

bool32 sub_807B064(GemerlAttacks *strc10C)
{
    SpriteTransform *var_r1;
    s32 var_r0;
    s32 temp_r1;
    s32 temp_r1_2;
    const GemerlFuncs *entry = &gUnknown_080D5B00[strc10C->stateIndex];

    temp_r1 = (gCamera.maxY - 0x96) << 8;
    if (strc10C->unk8 > temp_r1) {
        s32 unk4;
        strc10C->unk16 = 0;
        strc10C->unk18 = -0x3E0;
        unk4 = strc10C->unk4;
        strc10C->unk8 += strc10C->unk18;
        strc10C->tf60.rotation = SA2_LABEL(sub_8004418)((s16)((s32)((strc10C->unk10 - strc10C->unk8) << 8) >> 0x10),
                                                        (s16)((s32)((strc10C->unkC - unk4) << 8) >> 0x10));

    } else {
        strc10C->callback = entry->callbackB;
        strc10C->unk1A = 0;
        strc10C->unk16 = 0;
        strc10C->unk18 = 0;
        strc10C->unk8 = temp_r1;
        if (strc10C->unk27 != 0) {
            strc10C->tf60.rotation = 0x220;
        } else {
            strc10C->tf60.rotation = 0x3E0;
        }
    }
    strc10C->tf60.rotation = (strc10C->tf60.rotation - 0x100) & 0x3FF;
    return 0U;
}

// (95.30%) https://decomp.me/scratch/qmZ5P
NONMATCH("asm/non_matching/game/bosses/gatk__sub_807B10C.inc", bool32 sub_807B10C(GemerlAttacks *strc10C))
{
    SpriteTransform *var_r2;
    u16 temp_r4;
    u16 angle;
    s16 unk16;

    temp_r4 = (strc10C->tf60.rotation - Q(1)) & 0x3FF;
    unk16 = strc10C->unk16 = (u32)((COS(temp_r4) * ((strc10C->unk14 >> 1) + 0x40)) << 6) >> 16;
    strc10C->unk18 = (s16)((SIN(temp_r4) * ((strc10C->unk14 >> 1) + 0x40)) >> 10);
    strc10C->unk4 += strc10C->unk16;
    strc10C->unk8 += strc10C->unk18;
    if ((unk16 < 0) && (strc10C->unk4 < Q(gCamera.minX))) {
        strc10C->unk4 = Q(gCamera.minX);
        angle = 0x220;
    } else if ((unk16 > 0) && (strc10C->unk4 > Q(gCamera.maxX))) {
        strc10C->unk4 = Q(gCamera.maxX);
        angle = 0x3E0;
    } else {
        angle = strc10C->tf60.rotation + 0x100;
    }
    strc10C->tf60.rotation = (angle - Q(1)) & 0x3FF;
    return 0U;
}
END_NONMATCH

bool32 sub_807B1E4(GemerlAttacks *strc10C)
{
    const GemerlFuncs *entry = &gUnknown_080D5B00[strc10C->stateIndex];
    Player *p;

    if (strc10C->unk27 != 0) {
        strc10C->tf60.rotation = (strc10C->tf60.rotation + 0xC0) & 0x3FF;
    } else {
        strc10C->tf60.rotation = (strc10C->tf60.rotation - 0xC0) & 0x3FF;
    }
    if (strc10C->unk1A == 0) {
        strc10C->unk8 += 0x800;
        strc10C->unk1A = 1;
    }
    if (*strc10C->unk20 != 0) {
        strc10C->callback = entry->callbackB;
        strc10C->unk1A = 0x5A;
        p = strc10C->players[0];
        strc10C->tf60.rotation = (SA2_LABEL(sub_8004418)(I(strc10C->unk8 - p->qWorldY), I(strc10C->unk4 - p->qWorldX)) - Q(1)) & 0x3FF;
    }
    return 0U;
}

bool32 sub_807B280(GemerlAttacks *strc10C)
{
    s32 temp_r2;
    u32 var_r8;
    s16 sp0[2][7];
    SpriteTransform *tf = &strc10C->tf60;
    u16 angle = (tf->rotation - Q(1)) & 0x3FF;

    memcpy(sp0, &gUnknown_080D5BEC, sizeof(sp0));
    var_r8 = 0;
    temp_r2 = ((strc10C->stateIndex ^ 6) ? 1 : 0);
    if (--strc10C->unk1A == 0) {
        var_r8 = 1;
    }
    strc10C->unk16 += ((s32)(COS(angle) * (sp0[temp_r2][strc10C->unk26] - ({
                                               s32 v = ((strc10C->unk28 * 4) - 0x10);
                                               v;
                                           })))
                       >> 0xE);
    strc10C->unk18 += ((s32)(SIN(angle) * (sp0[temp_r2][strc10C->unk26] - ({
                                               s32 v = ((strc10C->unk28 * 4) - 0x10);
                                               v;
                                           })))
                       >> 0xE);
    strc10C->unk4 += strc10C->unk16;
    strc10C->unk8 += strc10C->unk18;
    return var_r8;
}

bool32 sub_807B368(GemerlAttacks *strc10C)
{
    SpriteTransform *var_r0;
    u16 angle;
    s32 var_r1;
    const GemerlFuncs *entry = &gUnknown_080D5B00[strc10C->stateIndex];

    if (strc10C->unk1A < 16) {
        if (strc10C->unk1A == 0) {
            strc10C->unk14 = ((4 - strc10C->unk28) * 4) + 0x20;
            if (strc10C->unk27 != 0) {
                strc10C->unk4 += 0x400;
            } else {
                strc10C->unk4 -= 0x400;
            }
            strc10C->unk8 += 0x800;
            strc10C->tf60.rotation = 170 * strc10C->unk26;
            strc10C->unk1A = 1;
        }
        strc10C->unk4 += strc10C->unk16;
        strc10C->unk8 += strc10C->unk18;
    }
    if (strc10C->unk27 != 0) {
        strc10C->tf60.rotation = (strc10C->tf60.rotation + 0x10) & 0x3FF;
    } else {
        strc10C->tf60.rotation = (strc10C->tf60.rotation - 0x10) & 0x3FF;
    }
    angle = (strc10C->tf60.rotation - Q(1)) & 0x3FF;
    strc10C->unk16 = (s16)((s32)(COS(angle) * strc10C->unk14) >> 0xB);
    strc10C->unk18 = (s16)((s32)(SIN(angle) * strc10C->unk14) >> 0xB);
    strc10C->unk4 += strc10C->unk16;
    strc10C->unk8 += strc10C->unk18;

    if (*strc10C->unk20 != 0) {
        strc10C->callback = entry->callbackB;
        strc10C->unk1A = 0x2D;
    }

    return 0U;
}

bool32 sub_807B498(GemerlAttacks *strc10C)
{
    s16 temp_r0;
    s32 var_r0;
    u32 result;
    u16 angle = (strc10C->tf60.rotation - Q(1)) & 0x3FF;
    result = 0;
    if (--strc10C->unk1A == 0) {
        result = 1;
    }
    if (strc10C->unk27 != 0) {
        strc10C->tf60.rotation = (strc10C->tf60.rotation + 8) & 0x3FF;
    } else {
        strc10C->tf60.rotation = (strc10C->tf60.rotation - 8) & 0x3FF;
    }
    strc10C->unk16 = ((COS(angle) * strc10C->unk14) >> 9);
    strc10C->unk18 = ((SIN(angle) * strc10C->unk14) >> 9);
    strc10C->unk4 += strc10C->unk16;
    strc10C->unk8 += strc10C->unk18;

    return result;
}

bool32 sub_807B52C(GemerlAttacks *strc10C)
{
    u16 angle = (strc10C->tf60.rotation - Q(1)) & 0x3FF;
    strc10C->unk16 = ((s32)(COS(angle) * strc10C->unk14) >> 0xE) + (u16)strc10C->unk16;
    strc10C->unk18 = ((s32)(SIN(angle) * strc10C->unk14) >> 0xE) + (u16)strc10C->unk18;
    strc10C->unk4 += strc10C->unk16;
    strc10C->unk8 += strc10C->unk18;
    return 0U;
}

bool32 sub_807B59C(GemerlAttacks *strc10C)
{
    const GemerlFuncs *entry = &gUnknown_080D5B00[strc10C->stateIndex];
    s32 temp_r1;

    strc10C->tf60.rotation = 0;
    strc10C->unk18 -= 0x20;
    strc10C->unk8 += strc10C->unk18;
    if (strc10C->unk18 < -Q(4)) {
        strc10C->callback = entry->callbackB;
    }
    return 0U;
}

void sub_807B5E4(void)
{
    GemerlAttacks *strc10C = TASK_DATA(gCurTask);
    s16 temp_r0_2;

    if ((strc10C->gemerl != NULL) && (strc10C->gemerl->unk20 <= 0)) {
        *strc10C->unk1C = 0;
        TaskDestroy(gCurTask);
        return;
    }
    strc10C->unk4 += strc10C->unk16;
    strc10C->unk8 += strc10C->unk18;
    sub_807B664(strc10C, 0U);
    if (++strc10C->unk1A == 0x20) {
        *strc10C->unk1C = 0;
        TaskDestroy(gCurTask);
        return;
    }
    sub_807A8B4(strc10C);
}

bool32 sub_807B664(GemerlAttacks *strc10C, u32 param1)
{
    s32 temp_r0;
    u32 var_r5;

    var_r5 = 0;
    temp_r0 = sa2__sub_801E4E4((s32)(strc10C->unk8 + 0xA) >> 8, (s32)strc10C->unk4 >> 8, 1, 8, NULL, sa2__sub_801EE64);
    if (temp_r0 <= 0) {
        strc10C->unk8 = ((strc10C->unk8 + ((temp_r0 + 1) << 8)) & 0xFFFFFF00) - 1;
        if (param1 != 0) {
            CreateScreenShake(0x200U, 0x40U, 0U, -1U, 0x91U);
        }
        var_r5 = 1;
    }
    return var_r5;
}
#if 0
#endif
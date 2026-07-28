#include "global.h"
#include "core.h"
#include "trig.h"
#include "lib/m4a/m4a.h"
#include "game/stage.h"
#include "game/sa3/bosses/gemerl.h"
#include "game/sa3/bosses/eggman_escape.h"
#include "game/shared/stage/player.h"
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
            strc10C->unk16 = (u16)strc10C->unk16 + 0x50;
        } else {
            strc10C->unk16 = (u16)strc10C->unk16 - 0x50;
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

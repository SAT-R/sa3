#include "global.h"
#include "core.h"
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

    for (i = 0; i < (s32)ARRAY_COUNT(strc10C->spritesA0); i++) {
        s = &strc10C->spritesA0[i];
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

    playerHit |= strc10C->callback((struct GemerlAttacksCallback *)strc10C);
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
    s32 sp4[4];
    Sprite *s;
    s16 temp_r4_2;
    s16 temp_r5_2;
    s32 temp_r5, temp_r4;
    u16 temp_r3;
    u8 var_r0;
    u8 var_r5;
    u8 var_r7;

    temp_r3 = strc10C->unk1A;
    var_r5 = (u8)((s32)(temp_r3 << 0x10) >> 0x12);
    sp4[0] = gUnknown_080D5B78[0];
    sp4[1] = gUnknown_080D5B78[1];
    sp4[2] = gUnknown_080D5B78[2];
    sp4[3] = gUnknown_080D5B78[3];
    if ((u32)var_r5 > 3U) {
        var_r5 = 3;
    }
    if (!(3 & temp_r3) && ((s32)(s16)temp_r3 <= 0xC)) {
        s = strc10C + ((var_r5 * 0x28) + 0x6C);
        temp_r4 = (&subroutine_strc10C)[var_r5].unk4;
        s->unk10
            = (s16)((s16)(u16)(I(strc10C->unk4) - gCamera.x) + ((s32)(temp_r4 * gSineTable[strc10C->tf60.rotation]) >> 0x16));
        s->unk12 = (s16)((s16)(u16)(((s32)strc10C->unk8 >> 8) - gCamera.y)
                               + ((s32)(temp_r4 * gSineTable[strc10C->tf60.rotation + 0x100]) >> 0x16));
    }
    if ((s32)(s16)strc10C->unk1A <= 0x14) {
        var_r7 = 0;
    } else {
        var_r7 = ((strc10C->unk1A - 20) >> 2);
    }

    var_r5++;
    while (var_r7 < var_r5) {
        s = &strc10C->spritesA0[var_r7];
        temp_r5_2 = s->x + gCamera.x;
        temp_r4_2 = s->y + gCamera.y;
        sub_8020CE0(s, (s32)temp_r5_2, (s32)temp_r4_2, 0, strc10C->players[0]);
        sub_8020CE0(s, (s32)temp_r5_2, (s32)temp_r4_2, 0, strc10C->players[1]);
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
        var_r7 += 1;
    }
}

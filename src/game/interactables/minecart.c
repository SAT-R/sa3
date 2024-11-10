#include <string.h>
#include "global.h"
#include "sprite.h"
#include "task.h"
#include "trig.h"
#include "malloc_vram.h"
#include "module_unclear.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/player_callbacks.h"
#include "game/save.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/move_states.h"
#include "constants/songs.h"
#include "constants/zones.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ SpriteTransform transform;
    /* 0x40 */ Sprite s2;
    /* 0x68 */ void *tiles;
    /* 0x6C */ s16 worldX;
    /* 0x6E */ s16 worldY;
    /* 0x70 */ u8 unk70; // rotation?
    /* 0x71 */ u8 unk71;
    /* 0x72 */ u8 unk72;
    /* 0x73 */ u8 unk73;
    /* 0x74 */ s16 unk74;
    /* 0x76 */ s16 unk76;
    /* 0x78 */ s16 unk78;
    /* 0x7A */ s16 unk7A;
    /* 0x7C */ s32 qWorldX;
    /* 0x80 */ s32 qWorldY;
    /* 0x84 */ s32 qUnk84;
    /* 0x88 */ s32 qUnk88;
    /* 0x8C */ s32 qUnk8C;
    /* 0x90 */ Player *player;
} Minecart; /* 0x94 */

void Task_Minecart(void);
void sub_8047D60(void);
u16 sub_8047EEC(void);
void sub_804831C(Minecart *);
void sub_8048044(void);
void sub_8048218(void);
void sub_8048384(Minecart *);
void sub_8048420(void);
void TaskDestructor_Minecart(struct Task *);

void CreateEntity_Minecart(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Minecart, sizeof(Minecart), 0x2100, 0, TaskDestructor_Minecart);
    Minecart *cart = TASK_DATA(t);
    SpriteTransform *transform;

    cart->base.regionX = regionX;
    cart->base.regionY = regionY;
    cart->base.me = me;
    cart->base.spriteX = me->x;
    cart->base.id = id;

    cart->tiles = NULL;

    cart->worldX = TO_WORLD_POS(me->x, regionX);
    cart->worldY = TO_WORLD_POS(me->y, regionY);

    cart->unk70 = 0;
    cart->unk71 = 0;
    cart->unk72 = me->d.uData[4] & 0x1;
    cart->unk73 = 0;
    cart->qWorldX = Q(cart->worldX);
    cart->qWorldY = Q(cart->worldY);
    cart->qUnk84 = Q(0);
    cart->qUnk88 = Q(0);
    cart->qUnk8C = Q(0);
    cart->player = 0;

    transform = &cart->transform;
    transform->x = cart->worldX - gCamera.x;
    transform->y = cart->worldY - gCamera.y;

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_804831C(cart);
}

void Task_Minecart(void)
{
    Minecart *cart = TASK_DATA(gCurTask);
    Sprite *s = &cart->s;
    Player *p;
    s16 worldX, worldY;
    s16 i;

    worldX = I(cart->qWorldX);
    worldY = I(cart->qWorldY);

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        p = GET_SP_PLAYER_V0(i);

        if ((sub_802C0D4(p) != TRUE) && (p->callback != Player_8008A8C) && (p->callback != Player_800ED80)
            && sub_8020700(s, worldX, worldY, 0, p, 0) && (cart->unk71 == 0)) {
            cart->unk71 = 1;

            if (cart->unk72 == 0) {
                cart->qUnk84 = +Q(5);
                p->moveState &= ~1;
            } else {
                cart->qUnk84 = -Q(5);
                p->moveState |= 1;
            }

            cart->qUnk88 = Q(0);
            cart->qUnk8C = 0;

            s->anim = ANIM_MINECART;
            s->variant = 1;

            if (cart->player == 0) {
                cart->player = p;
                SetPlayerCallback(p, Player_800DBE8);
                p->moveState |= MOVESTATE_COLLIDING_ENT;
                p->sprColliding = s;
            }
        }
    }

    sub_8047D60();
    sub_8048420();
}

void sub_8047D60(void)
{
    Minecart *cart = TASK_DATA(gCurTask);

    switch (cart->unk71) {
        case 0: {
            return;
        } break;

        case 1: {
            if (sub_8047EEC() != 0) {
                cart->unk71 = 3;
                cart->unk73 = 0;
                cart->unk74 = 0;
                cart->unk76 = 0;
                cart->unk78 = -20;
                cart->unk7A = -16;

                sub_8048384(cart);
                sub_8003DF0(SE_MINECART_DESTROYED);
                return;
            } else {
                sub_8048044();
                sub_8048218();

                cart->qWorldX += cart->qUnk88;
                cart->qWorldY += cart->qUnk8C;
            }
        } break;

        case 2: {
            cart->qWorldX += cart->qUnk88;
            cart->qWorldY += cart->qUnk8C;

            sub_8048044();
            cart->qUnk8C += Q(32. / 256.);
        } break;

        case 3: {
            if (cart->unk73 == 0) {
                sub_8003DF0(SE_MINECART_DESTROYED);
            }

            if (++cart->unk73 > 30) {
                cart->unk71 = 4;
            }

            return;
        } break;

        case 4: {
            sub_804831C(cart);
            return;
        } break;
    }

    if (cart->player != NULL) {
        Player *p = cart->player;

        if ((p->callback == Player_8008A8C) || (p->callback == Player_800ED80)) {
            Player_StopSong(p, SE_MINECART_ROLL);
            cart->player = NULL;
        } else if (((gStageData.unk4 == 5) || (gStageData.unk4 == 6)) && (gStageData.gameMode == GAME_MODE_5)) {
            Player_StopSong(p, SE_MINECART_ROLL);
            cart->player = NULL;
        } else if ((p->moveState & MOVESTATE_COLLIDING_ENT) && p->sprColliding == &cart->s) {
            p->qWorldX = cart->qWorldX;
            p->qWorldY = cart->qWorldY;
            p->unk26 = cart->unk70;
        } else {
            cart->player = NULL;
        }
    }
}

u16 sub_8047EEC(void)
{
    Minecart *cart = TASK_DATA(gCurTask);
    u8 sp08 = cart->unk70;
    s32 sinX, sinY;
    u32 res;

    if (cart->qUnk84 < 0) {
        sp08 += Q(0.25);
    } else {
        sp08 -= Q(0.25);
    }

    sinX = (-(SIN(sp08 * 4) * 12) >> 6);
    sinY = (+(COS(sp08 * 4) * 3) >> 4);

    sp08 += Q(0.125);

    switch (sp08 >> 6) {
        case 0: {
            res = sub_80517FC(I(cart->qWorldY + sinY), I(cart->qWorldX + sinX), 1, +8, &sp08, sub_805217C);
        } break;

        case 1: {
            res = sub_80517FC(I(cart->qWorldX + sinX), I(cart->qWorldY + sinY), 1, -8, &sp08, sub_805203C);
        } break;

        case 2: {
            res = sub_80517FC(I(cart->qWorldY + sinY), I(cart->qWorldX + sinX), 1, -8, &sp08, sub_805217C);
        } break;

        case 3: {
            res = sub_80517FC(I(cart->qWorldX + sinX), I(cart->qWorldY + sinY), 1, +8, &sp08, sub_805203C);
        } break;

        default: {
            return 0;
        }
    }

    if (res >> 31 != 0) {
        Player *p = cart->player;
        if (p) {
            p->qSpeedAirX = cart->qUnk8C;
            p->moveState &= ~MOVESTATE_COLLIDING_ENT;
            cart->player = NULL;
        }
    }

    return res >> 31;
}

// TODO: Remove goto
//
// (99.68%) https://decomp.me/scratch/uCl9p
NONMATCH("asm/non_matching/game/interactables/minecart__sub_8048044.inc", void sub_8048044())
{
    Minecart *cart = TASK_DATA(gCurTask);
    u8 *pUnk70 = &cart->unk70;
    u8 sp08 = *pUnk70;
    s32 sinX, sinY;
    s32 res;

    sinX = (-(SIN(sp08 * 4) * 24)) >> 6;
    sinY = (+(COS(sp08 * 4) * 3)) >> 3;

    sp08 += Q(0.125);

    switch (sp08 >> 6) {
        case 0: {
            res = sub_80517FC(I(cart->qWorldY + sinY), I(cart->qWorldX + sinX), 1, +8, &sp08, sub_805217C);

            if (res < 4) {
                cart->qWorldY += Q(res);

#if 01
                goto lbl;
#else
                if (!(sp08 & 0x1)) {
                    *pUnk70 = 0;
                }
#endif
            }
        } break;

        case 1: {
            res = sub_80517FC(I(cart->qWorldX + sinX), I(cart->qWorldY + sinY), 1, -8, &sp08, sub_805203C);

            if (res < 4) {
                cart->qWorldX -= Q(res);

                if (!(sp08 & 0x1)) {
                    *pUnk70 = 0;
                }
            }
        } break;

        case 2: {
            res = sub_80517FC(I(cart->qWorldY + sinY), I(cart->qWorldX + sinX), 1, -8, &sp08, sub_805217C);

            if (res < 4) {
                cart->qWorldY -= Q(res);

                if (!(sp08 & 0x1)) {
                    *pUnk70 = 0;
                }
            }
        } break;

        case 3: {
            res = sub_80517FC(I(cart->qWorldX + sinX), I(cart->qWorldY + sinY), 1, +8, &sp08, sub_805203C);

            if (res < 4) {
                cart->qWorldX += Q(res);

            lbl:
                if (!(sp08 & 0x1)) {
                    *pUnk70 = 0;
                }
            }
        } break;
    }

    if (cart->unk71 == 1) {
        if (res > 8) {
            cart->unk71 = 2;
        }
    } else if (cart->unk71 == 2) {
        if (res <= 0) {
            sub_8047EEC();
            cart->unk71 = 3;
            cart->unk73 = 0;
            cart->unk74 = 0;
            cart->unk76 = 0;
            cart->unk78 = -20;
            cart->unk7A = -16;

            sub_8048384(cart);
        }
    }
}
END_NONMATCH

void sub_8048218(void)
{
    Minecart *cart = TASK_DATA(gCurTask);

    if (cart->unk71 == 1) {
        s16 r5 = cart->unk70;
        s16 qUnk84;

        if ((r5 != 0) && (r5 <= 64)) {
            cart->qUnk84 += Q(16. / 256.);
        } else if (r5 >= 192) {
            cart->qUnk84 -= Q(16. / 256.);
        }

        if (ABS(cart->qUnk84) > Q(12)) {
            if (cart->qUnk84 < 0) {
                cart->qUnk84 = -Q(12);
            } else {
                cart->qUnk84 = +Q(12);
            }
        }

        if (ABS(cart->qUnk84) < Q(5)) {
            if (cart->qUnk84 < 0) {
                cart->qUnk84 = -Q(5);
            } else {
                cart->qUnk84 = +Q(5);
            }
        }

        qUnk84 = (s16)cart->qUnk84;
        cart->qUnk88 = Q_MUL(qUnk84, COS_24_8(r5 * 4));
        cart->qUnk8C = Q_MUL(qUnk84, SIN_24_8(r5 * 4)) + Q(2);
    } else if (cart->unk71 == 2) {
        cart->qUnk8C += Q(0.125);
    }
}

void sub_804831C(Minecart *cart)
{
    Sprite *s = &cart->s;
    SpriteTransform *transform = &cart->transform;

    if (cart->tiles == NULL) {
        cart->tiles = ALLOC_TILES(ANIM_MINECART);
    }

    s->tiles = cart->tiles;
    s->anim = ANIM_MINECART;
    s->variant = 0;
    s->oamFlags = SPRITE_OAM_ORDER(12);
    s->animCursor = 0;
    s->qAnimDelay = Q(0);
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1) | SPRITE_FLAG(ROT_SCALE_ENABLE, 1);

    transform->rotation = 0;
    transform->scaleX = Q(1);
    transform->scaleY = Q(1);

    UpdateSpriteAnimation(s);
    TransformSprite(s, transform);
}

void sub_8048384(Minecart *cart)
{
    Sprite *s = &cart->s;
    Sprite *s2 = &cart->s2;

    if (cart->tiles) {
        s->tiles = cart->tiles;
        s->anim = ANIM_MINECART;
        s->variant = 2;
        s->oamFlags = SPRITE_OAM_ORDER(8);
        s->animCursor = 0;
        s->qAnimDelay = Q(0);
        s->prevVariant = -1;
        s->animSpeed = SPRITE_ANIM_SPEED(1.0);
        s->palId = 0;
        s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
        s->frameFlags = SPRITE_FLAG(PRIORITY, 0);
        UpdateSpriteAnimation(s);

        s2->tiles = cart->tiles + MAX_TILES_VARIANT(ANIM_MINECART, 2) * TILE_SIZE_4BPP;
        s2->anim = ANIM_MINECART;
        s2->variant = 3;
        s2->oamFlags = SPRITE_OAM_ORDER(8);
        s2->animCursor = 0;
        s2->qAnimDelay = Q(0);
        s2->prevVariant = -1;
        s2->animSpeed = SPRITE_ANIM_SPEED(1.0);
        s2->palId = 0;
        s2->hitboxes[0].index = HITBOX_STATE_INACTIVE;
        s2->frameFlags = SPRITE_FLAG(PRIORITY, 0);
        UpdateSpriteAnimation(s2);
    }
}

#if 01
// (80.35%) https://decomp.me/scratch/IKpuj
NONMATCH("asm/non_matching/game/interactables/minecart__sub_8048420.inc", void sub_8048420(void))
{
    Minecart *cart = TASK_DATA(gCurTask);
    MapEntity *me = cart->base.me;
    s16 worldX, worldY;

    worldX = I(cart->qWorldX);
    worldY = I(cart->qWorldY);
    if ((cart->unk71 == 4) || !IsPointInScreenRect(worldX, worldY)) {
        Player *p;

        if (cart->unk71 != 4) {
            sub_8003E28(SE_MINECART_ROLL);

            if (cart->player) {
                p = cart->player;
                p->moveState &= ~MOVESTATE_COLLIDING_ENT;
                p->sprColliding = NULL;
                p->qSpeedAirX = 0;
                p->qSpeedAirY = 0;
                p->qSpeedGround = 0;

                SetPlayerCallback(p, Player_8005380);
            }
        }

        SET_MAP_ENTITY_NOT_INITIALIZED(me, cart->base.spriteX);
        TaskDestroy(gCurTask);
        return;
    } else {
        // _080484C4
        Sprite *s, *s2;
        SpriteTransform *transform;

        if (cart->unk71 != 3) {
            s = &cart->s;
            transform = &cart->transform;

            transform->rotation = cart->unk70 * 4;
            transform->x = worldX - gCamera.x;
            transform->y = worldY - gCamera.y;

            s->frameFlags = gUnknown_03002C24 | SPRITE_FLAG(PRIORITY, 1) | SPRITE_FLAG(ROT_SCALE_ENABLE, 1);
            gUnknown_03002C24++;

            UpdateSpriteAnimation(s);
            TransformSprite(s, transform);
            DisplaySprite(s);
        } else {
            // _0804852C
            u16 sl = cart->unk73;
            u32 sp0C = cart->unk73 * 2;
            s32 screenX;
            s = &cart->s;

            screenX = worldX - gCamera.x;
            if (sl & 0x2) {
                s->x = screenX - (sp0C);
            } else {
                s->x = screenX + (cart->unk73 * 1);
            }

            s->y = worldY - gCamera.y + (cart->unk74 >> 2);

            UpdateSpriteAnimation(s);
            DisplaySprite(s);

            s2 = &cart->s2;

            screenX = worldX - gCamera.x;
            if (sl & 0x2) {
                s2->x = screenX + (sp0C >> 1);
            } else {
                s2->x = screenX + (-sl >> 1);
            }

            s2->y = (worldY - gCamera.y) + (cart->unk76 >> 2);

            UpdateSpriteAnimation(s2);
            DisplaySprite(s2);

            cart->unk74 += cart->unk78 >> 1;
            cart->unk76 += cart->unk7A >> 1;

            cart->unk78++;
            cart->unk7A++;
        }
    }
}
END_NONMATCH
#endif

void TaskDestructor_Minecart(struct Task *t)
{
    Minecart *cart = TASK_DATA(t);
    VramFree(cart->tiles);
}
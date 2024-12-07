#include "global.h"
#include "module_unclear.h"
#include "core.h"
#include "sprite.h"
#include "trig.h"
#include "malloc_vram.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/parameters/interactables.h"
#include "game/player.h"
#include "game/player_callbacks.h"
#include "game/stage.h"
#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/move_states.h"
#include "constants/songs.h"
#include "constants/zones.h"

typedef struct {
    /* 0x00 */ SpriteBase2 base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ Hitbox reserved;
    /* 0x3C */ s32 qWorldX;
    /* 0x40 */ s32 qWorldY;
    /* 0x44 */ s32 unk44;
    /* 0x48 */ s32 unk48;
    /* 0x4C */ s32 unk4C;
    /* 0x50 */ Player *player;
    /* 0x54 */ u8 unk54;
    /* 0x55 */ u8 unk55;
    /* 0x56 */ u8 unk56;
    /* 0x57 */ u8 unk57;
    /* 0x58 */ Vec2_16 qUnk58[8];
    /* 0x78 */ Vec2_32 qUnk78[8];
    /* 0xB8 */ Sprite sprB8[3];
} PandaCart; /* 0x6C */

void Task_PandaCartInit(void);
void Task_804891C(void);
void sub_8048A50(void);
void sub_8048C18(void);
void Task_8048D0C(void);
void sub_8048E74(PandaCart *cart, u8 param1);
void TaskDestructor_PandaCart(struct Task *t);

void sub_8048D98(PandaCart *);
void sub_8048F70(PandaCart *);
void sub_8048FF8(Sprite *);

// u8 gUnknown_080D03C0[4][2] = {{1, 2}, {2, 1}, {3, 1}, {0, 0}};
extern u8 gUnknown_080D03C0[4][2];

void CreateEntity_PandaCart(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_PandaCartInit, sizeof(PandaCart), 0x2100, 0, TaskDestructor_PandaCart);
    PandaCart *cart = TASK_DATA(t);
    Sprite *s;

    cart->base.regionX = regionX;
    cart->base.regionY = regionY;
    cart->base.me = me;
    cart->base.spriteX = me->x;
    cart->base.id = id;

    cart->qWorldX = Q(TO_WORLD_POS(me->x, regionX));
    cart->qWorldY = Q(TO_WORLD_POS(me->y, regionY));

    cart->unk44 = 0;
    cart->unk48 = 0;
    cart->unk4C = 0;
    cart->player = NULL;
    cart->unk54 = me->d.uData[4] & 0x1;
    cart->unk55 = 0;
    cart->unk56 = 0;
    cart->unk57 = 0;

    s = &cart->s;
    s->x = I(cart->qWorldX) - gCamera.x;
    s->y = I(cart->qWorldY) - gCamera.y;

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_8048FF8(s);
    sub_8048D98(cart);
}

void Task_PandaCartInit(void)
{
    PandaCart *cart = TASK_DATA(gCurTask);
    Sprite *s = &cart->s;
    s32 worldX, worldY;
    s32 res;
    s16 i, j;

    worldX = I(cart->qWorldX);
    worldY = I(cart->qWorldY);

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        Player *p = GET_SP_PLAYER_V0(i);
        if (!sub_802C0D4(p) && (p->callback != Player_8008A8C) && (p->callback != Player_800ED80)) {
            if ((p->callback != Player_800DCB4) && (res = sub_8020700(s, worldX, worldY, 1, p, 0))) {
                sub_8016F28(p);
                SetPlayerCallback(p, Player_800DB7C);

                p->moveState |= MOVESTATE_COLLIDING_ENT;
                p->sprColliding = s;
                cart->player = p;

                // Remove Cart collision from other players
                for (j = 0; j < NUM_MULTI_PLAYER_CHARS; j++) {
                    Player *chkPlayer = &gPlayers[j];
                    if ((chkPlayer != p) && (chkPlayer->moveState & MOVESTATE_COLLIDING_ENT) && (chkPlayer->sprColliding == s)) {
                        chkPlayer->moveState &= ~MOVESTATE_COLLIDING_ENT;
                        chkPlayer->sprColliding = NULL;
                    }
                }

                cart->unk44 = Q(3);

                if (cart->unk54 != 0) {
                    NEGATE(cart->unk44);
                }

                cart->unk55 = 0;
                cart->unk56 = 1;
                s->variant = 1;
                gCurTask->main = Task_804891C;
                return;
            } else {
                res = sub_8020950(s, worldX, worldY, p, 0);
                if (res & 0x10000) {
                    p->qWorldY += Q_8_8(res);
                } else if (res & 0x20000) {
                    p->qWorldY += Q_8_8(res) + Q(1);
                    p->qSpeedAirY = 0;
                }

                if (res & 0xC0000) {
                    if (res & 0x80000) {
                        if (p->keyInput & DPAD_RIGHT) {
                            p->qWorldX += Q(1);
                            p->moveState |= MOVESTATE_40;
                        }
                    } else {
                        if (p->keyInput & DPAD_LEFT) {
                            p->qWorldX -= Q(1);
                            p->moveState |= MOVESTATE_40;
                        }
                    }

                    p->qWorldX += Q_8_8((s16)res >> 8);
                    p->qSpeedAirX = 0;
                    p->qSpeedGround = 0;
                }
            }
        }
    }

    sub_8048C18();
}

void Task_804891C(void)
{
    PandaCart *cart = TASK_DATA(gCurTask);
    Sprite *s = &cart->s;
    Player *p;

    sub_8048A50();

    if (cart->unk56 == 2) {
        s16 theta = cart->unk55;

        if ((theta != 0) && (theta <= +Q(0.25))) {
            cart->unk44 += Q(16. / 256.);
        } else if (theta >= (u8)-Q(0.25)) {
            cart->unk44 -= Q(16. / 256.);
        }

        if (ABS(cart->unk44) > Q(8)) {
            if (cart->unk44 < 0) {
                cart->unk44 = -Q(8);
            } else {
                cart->unk44 = +Q(8);
            }
        }
        {
            s32 scalar = cart->unk44;
            cart->unk48 = Q_MUL(COS_24_8(theta * 4), scalar);
            cart->unk4C = Q_MUL(SIN_24_8(theta * 4), scalar) + Q(2);
        }
    } else if ((cart->unk56 == 3) || (cart->unk56 == 1)) {
        cart->unk4C += Q(32. / 256.);
    }

    cart->qWorldX += cart->unk48;
    cart->qWorldY += cart->unk4C;

    p = cart->player;
    if (p != NULL) {
        if ((p->callback == Player_8008A8C) || (p->callback == Player_800ED80)) {
        lbl:
            Player_StopSong(p, SE_PANDA_CART);
            cart->player = NULL;
        } else {
            if ((gStageData.unk4 == 0x5) || (gStageData.unk4 == 0x6)) {
                if (gStageData.gameMode == GAME_MODE_5) {
                    // TODO: Remove goto
                    goto lbl;
                }
            }

            if ((p->moveState & MOVESTATE_COLLIDING_ENT) && (p->sprColliding == s)) {
                // TODO: Remove cast
                p->qWorldX = *(volatile s32 *)&cart->qWorldX;
                p->qWorldY = cart->qWorldY;
            } else {
                cart->player = NULL;
            }
        }
    }

    sub_8048C18();
}

void sub_8048A50(void)
{
    PandaCart *cart = TASK_DATA(gCurTask);
    s32 r2, r7;
    u8 sp08;
    s32 res;
    u8 idx;

    sp08 = cart->unk55;

    r7 = -(SIN(sp08 * 4) * 24) >> 6;
    r2 = +(COS(sp08 * 4) * 24) >> 6;

    sp08 = (u8)(sp08 + 0x20);
    idx = sp08 >> 6;
    switch (sp08 >> 6) {
        case 0: {
            res = sub_80517FC(I(cart->qWorldY + r2), I(cart->qWorldX + r7), 1, +8, &sp08, sub_805217C);

            if (res < 8) {
                cart->qWorldY += Q(res);

                if (!(sp08 & 0x1)) {
                    cart->unk55 = sp08;
                }
            }
        } break;

        case 1: {
            res = sub_80517FC(I(cart->qWorldX + r7), I(cart->qWorldY + r2), 1, -8, &sp08, sub_805203C);

            if (res < 8) {
                cart->qWorldX -= Q(res);

                if (!(sp08 & 0x1)) {
                    cart->unk55 = sp08;
                }
            }
        } break;

        case 2: {
            cart->unk55 = 0;
        } break;

        case 3: {
            res = sub_80517FC(I(cart->qWorldX + r7), I(cart->qWorldY + r2), 1, +8, &sp08, sub_805203C);

            if (res < 8) {
                cart->qWorldX += Q(res);

                if (!(sp08 & 0x1)) {
                    cart->unk55 = sp08;
                }
            }
        } break;
    }

    if (res > 8) {
        if (cart->unk56 == 2) {
            cart->unk56 = 3;

            if (cart->unk57 == 0) {
                cart->unk48 = Q(3);

                if (cart->unk54 != 0) {
                    NEGATE(cart->unk48);
                }

                cart->unk4C = -Q(6);
            }

            if (cart->unk57 < 8) {
                cart->unk57++;
            } else {
                cart->unk55 = 0;
            }

            Player_StopSong(cart->player, SE_PANDA_CART);
        }
    } else {
        if (cart->unk56 == 1) {
            cart->unk56 = 2;
        } else if (cart->unk56 == 3) {
            cart->unk56 = 4;
        }

        cart->unk57 = 0;
    }
}

void sub_8048C18(void)
{
    PandaCart *cart = TASK_DATA(gCurTask);
    Sprite *s = &cart->s;
    Player *p;
    MapEntity *me = cart->base.me;
    s16 worldX, worldY;

    worldX = I(cart->qWorldX);
    worldY = I(cart->qWorldY);

    if (cart->unk56 == 4) {
        if (cart->player != NULL) {
            p = cart->player;
            p->moveState &= ~MOVESTATE_COLLIDING_ENT;
            cart->player = NULL;
            Player_PlaySong(p, SE_MINECART_DESTROYED);
        }

        cart->unk57 = 0;
        gCurTask->main = Task_8048D0C;
    }

    if (!IsWorldPtActive(worldX, worldY)) {
        if (cart->player != NULL) {
            p = cart->player;
            p->moveState &= ~MOVESTATE_COLLIDING_ENT;
            p->sprColliding = NULL;
            p->qSpeedAirX = 0;
            p->qSpeedAirY = 0;
            p->qSpeedGround = 0;
            SetPlayerCallback(p, Player_8005380);
        }

        SET_MAP_ENTITY_NOT_INITIALIZED(me, cart->base.spriteX);
        TaskDestroy(gCurTask);
        return;
    } else {
        s->x = worldX - gCamera.x;
        s->y = worldY - gCamera.y;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

void Task_8048D0C(void)
{
    PandaCart *cart = TASK_DATA(gCurTask);
    MapEntity *me = cart->base.me;

    switch (cart->unk57) {
        case 0: {
            cart->unk57 = 10;
            cart->base.unk8 = 30;
            sub_8048E74(cart, 0);
        } break;

        case 10: {
            if (--cart->base.unk8 == 0) {
                cart->base.unk8 = 60;
                cart->unk57 = 20;
            }

            sub_8048E74(cart, 1);
        } break;

        case 20: {
            if (--cart->base.unk8 == 0) {
                cart->unk57 = 100;
            }

            sub_8048E74(cart, 1);
        } break;

        case 100: {
            SET_MAP_ENTITY_NOT_INITIALIZED(me, cart->base.spriteX);
            TaskDestroy(gCurTask);
            return;
        } break;
    }

    sub_8048F70(cart);
}

void sub_8048D98(PandaCart *cart)
{
    u8 sp00[4][2];
    u8 i;
    void *tiles;

    memcpy(sp00, gUnknown_080D03C0, sizeof(sp00));

    for (i = 0; i < 8; i++) {
        cart->qUnk58[i].x = 0;
        cart->qUnk58[i].y = 0;
        cart->qUnk78[i].x = cart->qWorldX;
        cart->qUnk78[i].y = cart->qWorldY;
    }

    tiles = cart->s.tiles;

    for (i = 0; i < (s32)ARRAY_COUNT(cart->sprB8); i++) {
        Sprite *s = &cart->sprB8[i];

        s->tiles = tiles;
        s->anim = ANIM_ROCKET;
        s->variant = sp00[i][0];
        s->oamFlags = SPRITE_OAM_ORDER(8);
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->prevVariant = -1;
        s->animSpeed = SPRITE_ANIM_SPEED(1.0);
        s->palId = 0;
        s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
        s->frameFlags = SPRITE_FLAG(PRIORITY, 0);

        s->x = I(cart->qWorldX) - gCamera.x;
        s->y = I(cart->qWorldY) - gCamera.y;
        UpdateSpriteAnimation(s);

        tiles += sp00[i][1] * TILE_SIZE_4BPP;
    }
}

// (91.80%) https://decomp.me/scratch/rNgds
NONMATCH("asm/non_matching/game/interactables/panda_cart__sub_8048E74.inc", void sub_8048E74(PandaCart *cart, u8 param1))
{
    u8 i;

    if (param1 == 0) {
        for (i = 0; i < 8; i++) {
            s32 r5 = (PseudoRandom32() % 256u) + Q(2.5);
            s32 r2 = ((i & 0x1) + 3);

            s32 v = COS(r5) * r2;
            s32 v2;

            if (v < 0) {
                v += 0x3F;
            }
            cart->qUnk58[i].x = (v) >> 6;

            v2 = SIN(r5) * r2;

            if (v2 < 0) {
                v2 += 0x3F;
            }
            cart->qUnk58[i].y = (v2 >> 6);
            cart->qUnk78[i].x = cart->qWorldX;
            cart->qUnk78[i].y = cart->qWorldY;
        }
    } else {
        for (i = 0; i < 8; i++) {
            cart->qUnk58[i].y += Q(32. / 256.);

            cart->qUnk78[i].x += cart->qUnk58[i].x;
            cart->qUnk78[i].y += cart->qUnk58[i].y;
        }
    }
}
END_NONMATCH

void sub_8048F70(PandaCart *cart)
{
    u8 ip;
    u8 is;

    for (ip = 0, is = 0; ip < (s32)ARRAY_COUNT(cart->qUnk58); ip++) {
        Sprite *s = &cart->sprB8[is];

        s->x = I(cart->qUnk78[ip].x) - gCamera.x;
        s->y = I(cart->qUnk78[ip].y) - gCamera.y;

        if (ip < 3) {
            UpdateSpriteAnimation(s);
        }
        DisplaySprite(s);

        if (++is > 2)
            is = 0;
    }
}

void TaskDestructor_PandaCart(struct Task *t)
{
    PandaCart *cart = TASK_DATA(t);
    VramFree(cart->s.tiles);
}

void sub_8048FF8(Sprite *s)
{
    s->tiles = VramMalloc(MAX_TILES(ANIM_PANDA_CART) //
                          + MAX_TILES_VARIANT(ANIM_ROCKET, 1) //
                          + MAX_TILES_VARIANT(ANIM_ROCKET, 2) //
                          + MAX_TILES_VARIANT(ANIM_ROCKET, 3));
    s->anim = ANIM_PANDA_CART;
    s->variant = 0;
    s->oamFlags = SPRITE_OAM_ORDER(12);
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->hitboxes[1].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);
    UpdateSpriteAnimation(s);
}
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
    /* 0x00 */ SpriteBase base;
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
    /* 0x58 */ u8 filler58[0x60];
    /* 0xB8 */ Sprite sprB8[3];
} PandaCart; /* 0x6C */

void Task_PandaCartInit(void);
void Task_804891C(void);
void sub_8048C18(void);
void TaskDestructor_PandaCart(struct Task *t);

void sub_8048FF8(Sprite *);
void sub_8048D98(PandaCart *);

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

#include <string.h>
#include "global.h"
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
    /* 0x00 */ u8 filler0[0x6];
    /* 0x06 */ s16 screenX;
    /* 0x08 */ s16 screenY;
    /* 0x0A */ u8 fillerA[0x2];
} Minecart34;

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ Minecart34 unk34;
    /* 0x40 */ Sprite s2;
    /* 0x68 */ s32 unk68;
    /* 0x6C */ s16 worldX;
    /* 0x6E */ s16 worldY;
    /* 0x70 */ u8 unk70;
    /* 0x71 */ u8 unk71;
    /* 0x72 */ u8 unk72;
    /* 0x73 */ u8 unk73;
    /* 0x74 */ u16 unk74;
    /* 0x76 */ u16 unk76;
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
    Minecart34 *unk34;

    cart->base.regionX = regionX;
    cart->base.regionY = regionY;
    cart->base.me = me;
    cart->base.spriteX = me->x;
    cart->base.id = id;

    cart->unk68 = 0;

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

    unk34 = &cart->unk34;
    unk34->screenX = cart->worldX - gCamera.x;
    unk34->screenY = cart->worldY - gCamera.y;

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

u16 sub_8047EEC()
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
    // _08048014

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
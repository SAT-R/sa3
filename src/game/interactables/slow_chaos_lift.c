#include "global.h"
#include "core.h"
#include "trig.h"
#include "sprite.h"
#include "malloc_vram.h"
#include "module_unclear.h"
#include "game/camera.h"
#include "game/entity.h"
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
    /* 0x34 */ Sprite s2;
    /* 0x5C */ s32 qWorldX;
    /* 0x60 */ s32 qWorldY;
    /* 0x64 */ u16 unk64;
    /* 0x66 */ s16 qUnk66;
    /* 0x68 */ s16 qUnk68;
    /* 0x6A */ s16 qUnk6A;
} SlowChaosLift;

void Task_SlowChaosLiftInit(void);
void sub_803DDB0(SlowChaosLift *lift);
void Task_803DED0(void);
void Task_803E0D8(void);
void sub_803E32C(void);
void TaskDestructor_SlowChaosLift(struct Task *t);

void CreateEntity_SlowChaosLift(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_SlowChaosLiftInit, sizeof(SlowChaosLift), 0x2100, 0, TaskDestructor_SlowChaosLift);
    SlowChaosLift *lift = TASK_DATA(t);
    Sprite *s = &lift->s;
    s32 worldX, worldY;

    lift->base.regionX = regionX;
    lift->base.regionY = regionY;
    lift->base.me = me;
    lift->base.spriteX = me->x;
    lift->base.id = id;

    lift->qWorldX = Q(TO_WORLD_POS(me->x, regionX));
    lift->qWorldY = Q(TO_WORLD_POS(me->y, regionY));

    lift->unk64 = 0;
    lift->qUnk66 = 0x30;
    lift->qUnk68 = 0;
    lift->qUnk6A = 0;

    s->x = I(lift->qWorldX) - gCamera.x;
    s->y = I(lift->qWorldY) - gCamera.y;

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_803DDB0(lift);
}

void sub_803DDB0(SlowChaosLift *lift)
{
    Sprite *s = &lift->s;
    void *tiles;

    tiles = ALLOC_TILES(ANIM_SLOW_LIFT_7);

    s->tiles = tiles;
    s->anim = ANIM_SLOW_LIFT_7;
    s->variant = 0;
    s->oamFlags = SPRITE_OAM_ORDER(24);
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);

    s = &lift->s2;
    s->tiles = tiles;
    s->anim = ANIM_SLOW_LIFT_7;
    s->variant = 0;
    s->oamFlags = SPRITE_OAM_ORDER(24);
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1) | SPRITE_FLAG(X_FLIP, 1);
}

void Task_SlowChaosLiftInit(void)
{
    SlowChaosLift *lift = TASK_DATA(gCurTask);
    Sprite *s = &lift->s;
    s16 i;

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        Player *p = GET_SP_PLAYER_V0(i);

        if (!sub_802C0D4(p)) {
            u32 res = sub_8020950(s, I(lift->qWorldX), I(lift->qWorldY), p, 1);

            if (res & 0x10000) {
                p->qWorldY += Q_8_8(res);
                gCurTask->main = Task_803DED0;
            }
        }
    }

    sub_803E32C();
}

void Task_803DED0(void)
{
    SlowChaosLift *lift = TASK_DATA(gCurTask);
    Sprite *s = &lift->s;
    s16 i;
    u8 arr[4];
    u32 res;

    s32 offY = sub_80517FC(I(lift->qWorldY), I(lift->qWorldX), 0, +8, arr, sub_805217C);

    if (offY <= 0) {
        lift->qWorldY += Q(offY);
        lift->unk64 = arr[0] * 4;
        lift->qUnk66 = Q(1.25);

        lift->qUnk68 = (COS(lift->unk64) * lift->qUnk66) >> 14;
        lift->qUnk6A = (SIN(lift->unk64) * lift->qUnk66) >> 14;

        lift->qWorldX += lift->qUnk68;
        lift->qWorldY += lift->qUnk6A;

        gCurTask->main = Task_803E0D8;
    } else {
        lift->qUnk6A = lift->qUnk66;
        lift->qWorldY += lift->qUnk6A;
        lift->qUnk66 += Q(0.1875);
    }

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        bool32 cond = FALSE;
        Player *p = GET_SP_PLAYER_V0(i);

        if (!sub_802C0D4(p)) {
            if ((p->moveState & MOVESTATE_COLLIDING_ENT) && (p->sprColliding == s)) {
                if (lift->unk64 < Q(2)) {
                    p->qWorldY += Q(8);
                }

                p->qWorldX += lift->qUnk68;
                p->qWorldY += lift->qUnk6A;

                if (!(p->moveState & MOVESTATE_200) && (sub_801226C(p) < 0)) {
                    sub_8008E38(p);
                } else {
                    cond = TRUE;
                }
            }

            res = sub_8020950(s, I(lift->qWorldX), I(lift->qWorldY), p, 1);

            if (res & 0x10000) {
                p->qWorldY += Q_8_8(res);

                if (!cond) {
                    p->qSpeedGround >>= 2;
                    p->qSpeedAirX >>= 2;
                    p->qSpeedAirY >>= 2;
                }
            }
        }
    }

    sub_803E32C();
}

// TODO_ Fix fakematch
void Task_803E0D8(void)
{
    SlowChaosLift *lift = TASK_DATA(gCurTask);
    Sprite *s = &lift->s;
    s32 r4 = I((lift->unk64 + Q(0.5)) & ONE_CYCLE);
    u8 arr[4];
    s16 i;

#ifndef NON_MATCHING
    register s32 r0 asm("r0") = r4;
    register s32 r1 asm("r1");
    register s32 r2 asm("r2");
#else
    s32 r0 = r4;
    s32 r1;
    s32 r2;
#endif

    switch (r0) {
        case 0: {
            r2 = sub_80517FC(I(lift->qWorldY), I(lift->qWorldX), 0, +8, arr, sub_805217C);
        } break;

        case 1: {
            r2 = sub_80517FC(I(lift->qWorldX), I(lift->qWorldY), 0, -8, arr, sub_805203C);
        } break;

        case 2: {
            r2 = sub_80517FC(I(lift->qWorldY), I(lift->qWorldX), 0, -8, arr, sub_805217C);
        } break;

        case 3: {
            r2 = sub_80517FC(I(lift->qWorldX), I(lift->qWorldY), 0, +8, arr, sub_805203C);
        } break;
    }

    r0 = r4;
    switch (r0) {
        case 0: {
            r1 = Q(r2);
            lift->qWorldY += r1;
        } break;

        case 1: {
            r1 = Q(r2);
            lift->qWorldX -= r1;
        } break;

        case 2: {
            r1 = Q(r2);
            lift->qWorldY -= r1;
        } break;

        case 3: {
            r1 = Q(r2);
            lift->qWorldX += r1;
        } break;
    }

    lift->unk64 = arr[0] * 4;
    lift->qUnk66 = Q(1.25);

    lift->qUnk68 = (COS(lift->unk64) * lift->qUnk66) >> 14;
    lift->qUnk6A = (SIN(lift->unk64) * lift->qUnk66) >> 14;

    lift->qWorldX += lift->qUnk68;
    lift->qWorldY += lift->qUnk6A;

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        bool32 cond = FALSE;
        Player *p = GET_SP_PLAYER_V0(i);
        u32 res;

        if (!sub_802C0D4(p)) {
            if ((p->moveState & MOVESTATE_COLLIDING_ENT) && (p->sprColliding == s)) {
                p->qWorldY += Q(2);

                p->qWorldX += lift->qUnk68;
                p->qWorldY += lift->qUnk6A;

                if (sub_801226C(p) < 0) {
                    sub_8008E38(p);
                } else {
                    cond = TRUE;
                }
            }

            res = sub_8020950(s, I(lift->qWorldX), I(lift->qWorldY), p, 1);

            if (res & 0x10000) {
                p->qWorldY += Q_8_8(res);

                if (!cond) {
                    p->qSpeedGround >>= 2;
                    p->qSpeedAirX >>= 2;
                    p->qSpeedAirY >>= 2;
                }
            }
        }
    }

    sub_803E32C();
}

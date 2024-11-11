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
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/move_states.h"
#include "constants/songs.h"
#include "constants/zones.h"

#define NUM_SEGMENTS 8

typedef struct {
    /* 0x00 */ s16 screenX0;
    /* 0x02 */ s16 screenY0;
    /* 0x04 */ s16 screenX1;
    /* 0x06 */ s16 screenY1;
    /* 0x08 */ s16 unk8;
} Ball;

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ Sprite s2;
    /* 0x5C */ Ball balls[NUM_SEGMENTS];
    /* 0xBC */ u16 unkBC;
    /* 0xBE */ u16 unkBE;
    /* 0xC0 */ s8 unkC0[NUM_SINGLE_PLAYER_CHARS];
    /* 0xC2 */ u8 unkC2[NUM_SINGLE_PLAYER_CHARS];
    /* 0xC4 */ s32 worldX;
    /* 0xC8 */ s32 worldY;
    /* 0xCC */ void *tiles;
} FerrisWheel; /* size: 0xD0 */

void Task_FerrisWheel(void);
void sub_8046E20(FerrisWheel *);
void sub_8046EC0(void);
void TaskDestructor_FerrisWheel(struct Task *t);

void CreateEntity_FerrisWheel(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_FerrisWheel, sizeof(FerrisWheel), 0x2100, 0, TaskDestructor_FerrisWheel);
    FerrisWheel *wheel = TASK_DATA(t);

    wheel->base.regionX = regionX;
    wheel->base.regionY = regionY;
    wheel->base.me = me;
    wheel->base.spriteX = me->x;
    wheel->base.id = id;

    wheel->unkBC = me->d.uData[4] & 0x1;
    wheel->unkBE = 0;
    wheel->unkC2[0] = 0;
    wheel->unkC2[1] = 0;
    wheel->unkC0[0] = 0xFF;
    wheel->unkC0[1] = 0xFF;

    wheel->worldX = TO_WORLD_POS(me->x, regionX);
    wheel->worldY = TO_WORLD_POS(me->y, regionY);

    sub_8046E20(wheel);

    SET_MAP_ENTITY_INITIALIZED(me);
}

// (99.83%) https://decomp.me/scratch/shAdS
NONMATCH("asm/non_matching/game/interactables/ferris_wheel__Task_FerrisWheel.inc", void Task_FerrisWheel(void))
{
    FerrisWheel *wheel = TASK_DATA(gCurTask);
    Sprite *s2 = &wheel->s2;
    Ball *ball;
    s32 r6;
    u32 sp0C;
    s16 j, i;

    if (wheel->unkBC != 0) {
        wheel->unkBE += 6;
    } else {
        wheel->unkBE -= 6;
    }
    wheel->unkBE &= ONE_CYCLE;
    r6 = wheel->unkBE;

    for (i = 0; i < (s32)ARRAY_COUNT(wheel->balls); i++) {
        s16 sinX, sinY;
        s32 mask;

        ball = &wheel->balls[i];
        mask = SIN_PERIOD - 1;

        sinX = SIN(r6) >> 8;
        sinY = COS(r6) >> 8;

        ball->screenX0 = (sinX * 17) >> 4;
        ball->screenY0 = (sinY * 17) >> 4;
        ball->screenX1 = (sinX * 5) >> 2;
        ball->screenY1 = (sinY * 5) >> 2;
        r6 += 0x80;
        r6 = (r6 & mask);
        ball->unk8 = r6;
    }

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        Player *p = GET_SP_PLAYER_V0(i);

        if ((p->charFlags.someIndex == 1) || (p->charFlags.someIndex == 2) || (p->charFlags.someIndex == 4)) {
            // _08046C30

            if (wheel->unkC2[i] > 0) {
                wheel->unkC2[i]--;
            }

            sp0C = wheel->unkC2[i];

            if ((p->moveState & MOVESTATE_1000000) || (p->callback == Player_800D944)) {
                wheel->unkC0[i] = 0xFF;
                p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_10000000);
                continue;
            }

            if (sub_802C0D4(p) || (p->callback == Player_8008A8C) || (p->callback == Player_800ED80)) {
                continue;
            }
            // _08046C9A

            if ((p->callback == Player_800E5CC) && (wheel->unkC0[i] != -1)) {
                if (p->keyInput2 & gStageData.buttonConfig.jump) {
                    wheel->unkC2[i] = 30;
                    wheel->unkC0[i] = -1;
                    sub_8003DF0(SE_JUMP);
                    Player_800D880(p);
                    p->moveState &= ~MOVESTATE_10000000;

                    p->qSpeedGround = -Q(8);

                    if (wheel->unkBC > 0) {
                        NEGATE(p->qSpeedGround);
                    }

                    Player_801479C(p);
                    p->unk26 = 0;
                    SetPlayerCallback(p, Player_800DB30);
                    continue;
                } else {
                    // _08046D24
                    // Player has not jumped off
                    s32 r0;

                    ball = &wheel->balls[wheel->unkC0[i]];
                    r0 = CLAMP_SIN_PERIOD(-(903 + ball->unk8));
                    p->charFlags.anim0 = 140;
                    p->unk26 = r0 >> 2;

                    p->qWorldX = Q(wheel->worldX + ball->screenX1);
                    p->qWorldY = Q(wheel->worldY + ball->screenY1);
                    p->qSpeedAirX = 0;
                    p->qSpeedAirY = 0;
                    p->qSpeedGround = 0;
                }
            }
            // _08046D76

            for (j = 0; j < (s32)ARRAY_COUNT(wheel->balls); j++) {
                s32 worldX, worldY;
                ball = &wheel->balls[j];

                worldX = wheel->worldX + ball->screenX1;
                worldY = wheel->worldY + ball->screenY1;

                if ((p->callback != Player_800E5CC) && !sp0C) {
                    if (sub_8020700(s2, worldX, worldY, 0, p, 0)) {
                        Player_800BA78(p);
                        wheel->unkC0[i] = j;
                    }
                }
            }
        }
    }

    sub_8046EC0();
}
END_NONMATCH

void sub_8046E20(FerrisWheel *wheel)
{
    Sprite *s, *s2;

    wheel->tiles = VramMalloc(MAX_TILES_VARIANT(ANIM_FERRIS_WHEEL, 0) + MAX_TILES_VARIANT(ANIM_FERRIS_WHEEL, 1));

    s = &wheel->s;
    s->tiles = wheel->tiles;
    s->anim = ANIM_FERRIS_WHEEL;
    s->variant = 1;
    s->oamFlags = SPRITE_OAM_ORDER(24);
    s->animCursor = 0;
    s->qAnimDelay = Q(0);
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);
    UpdateSpriteAnimation(s);

    s2 = &wheel->s2;
    s2->tiles = wheel->tiles + MAX_TILES_VARIANT(ANIM_FERRIS_WHEEL, 0) * TILE_SIZE_4BPP;
    s2->anim = ANIM_FERRIS_WHEEL;
    s2->variant = 0;
    s2->oamFlags = SPRITE_OAM_ORDER(24);
    s2->animCursor = 0;
    s2->qAnimDelay = Q(0);
    s2->prevVariant = -1;
    s2->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s2->palId = 0;
    s2->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s2->frameFlags = SPRITE_FLAG(PRIORITY, 1);
    UpdateSpriteAnimation(s2);
}

void sub_8046EC0(void)
{
    // 'me' goes onto the stack, so for matching we have to split decls.
    MapEntity *me;
    bool32 sp04 = FALSE;
    FerrisWheel *wheel = TASK_DATA(gCurTask);

    me = wheel->base.me;
    {
        s16 centerX = wheel->worldX - gCamera.x;
        s16 centerY = wheel->worldY - gCamera.y;
        Sprite *s = &wheel->s;
        Sprite *s2 = &wheel->s2;
        s16 i;

        for (i = 0; i < (s32)ARRAY_COUNT(wheel->balls); i++) {
            Ball *ball = &wheel->balls[i];

            s2->x = centerX + ball->screenX1;
            s2->y = centerY + ball->screenY1;

            if (sub_802C1D0(s2->x, s2->y) == TRUE) {
                // BUG(Jace): DisplaySprite calls are done in the wrong order.
                //            This leads to one segment of balls not getting
                //            updated correctly. All others get their position
                //            from the previous iteration
#ifndef BUG_FIX
                DisplaySprite(s);

                s->x = centerX + ball->screenX0;
                s->y = centerY + ball->screenY0;
                DisplaySprite(s2);
#else
                DisplaySprite(s2);

                // Fixed by calling DisplaySprite() with 's' immediately
                // after setting position of 's'.
                s->x = centerX + ball->screenX0;
                s->y = centerY + ball->screenY0;
                DisplaySprite(s);
#endif

                sp04 = TRUE;
            }
        }

        if (((wheel->unkC0[0] == -1) && (wheel->unkC0[1] == -1)) && !sp04) {
            SET_MAP_ENTITY_NOT_INITIALIZED(me, wheel->base.spriteX);
            TaskDestroy(gCurTask);
            return;
        }
    }
}

void TaskDestructor_FerrisWheel(struct Task *t)
{
    FerrisWheel *wheel = TASK_DATA(t);
    VramFree(wheel->tiles);
}
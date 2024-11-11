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
    /* 0xC0 */ s8 unkC0[2];
    /* 0xC2 */ u8 unkC2[2];
    /* 0xC4 */ s32 worldX;
    /* 0xC8 */ s32 worldY;
    /* 0xCC */ void *tiles;
} FerrisWheel; /* size: 0xD0 */

void Task_FerrisWheel(void);
void sub_8046E20(FerrisWheel *);
void sub_8046EC0(void);
void TaskDestructor_FerrisWheel(struct Task *t);

// TODO: Merge ferris_wheel.c and ferris_wheel_2.c

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
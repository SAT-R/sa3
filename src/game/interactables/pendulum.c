#include "global.h"
#include "module_unclear.h"
#include "malloc_vram.h"
#include "task.h"
#include "trig.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/move_states.h"
#include "constants/songs.h"
#include "constants/zones.h"

#define PEND_LEFT         0
#define PEND_RIGHT        1
#define PEND_COUNT        2
#define BALLS_PER_PEND    1
#define SEGMENTS_PER_PEND 3
#define PEND_IDLE_POS     Q(24. / 256.)
#define PEND_MAX_POS      Q(1.0)
#define PEND_FORCE_DELTA  2

typedef struct {
    s16 dx;
    s16 dy;
    Sprite s;
} PendSprite;

typedef struct {
    /* 0x000 */ SpriteBase base;
    /* 0x00C */ PendSprite sprBalls[BALLS_PER_PEND * PEND_COUNT];
    /* 0x064 */ PendSprite sprSegments[SEGMENTS_PER_PEND * PEND_COUNT];
    /* 0x16C */ u16 activePend;
    /* 0x16E */ s16 qSwingPos[PEND_COUNT]; // -Q(24./256.) to -Q(1)
    /* 0x172 */ s16 swingForce[PEND_COUNT]; // grows/shrinks by 2 if the associated pend is active
    /* 0x178 */ void *tiles;
    /* 0x17C */ s32 worldX;
    /* 0x180 */ s32 worldY;
} Pendulum; /* size: 0x184 */

void Task_Pendulum(void);
void sub_804BEE4(Pendulum *);
void TaskDestructor_Pendulum(struct Task *);
void sub_804C008(void);

void CreateEntity_Pendulum(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Pendulum, sizeof(Pendulum), 0x2100, 0, TaskDestructor_Pendulum);
    Pendulum *pend = TASK_DATA(t);

    pend->base.regionX = regionX;
    pend->base.regionY = regionY;
    pend->base.me = me;
    pend->base.spriteX = me->x;
    pend->base.id = id;

    pend->activePend = PEND_LEFT;
    pend->qSwingPos[PEND_LEFT] = -PEND_IDLE_POS;
    pend->qSwingPos[PEND_RIGHT] = +PEND_IDLE_POS;
    pend->swingForce[PEND_LEFT] = -0xC0;
    pend->swingForce[PEND_RIGHT] = 0;

    pend->worldX = TO_WORLD_POS(me->x, regionX);
    pend->worldY = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_804BEE4(pend);
}

void Task_Pendulum(void)
{
    Pendulum *pend = TASK_DATA(gCurTask);
    PendSprite *ps;
    s16 sp04[PEND_COUNT];
    s16 sp08[PEND_COUNT];
    s16 worldX, worldY;
    s16 i, j;

    if (pend->activePend == PEND_LEFT) {
        if (pend->qSwingPos[PEND_LEFT] <= -PEND_IDLE_POS) {
            pend->swingForce[PEND_LEFT] += PEND_FORCE_DELTA;
            pend->qSwingPos[PEND_LEFT] += 1 + (pend->swingForce[PEND_LEFT] >> 5);

            if (pend->qSwingPos[PEND_LEFT] < -Q(1.0)) {
                pend->qSwingPos[PEND_LEFT] = -Q(1.0);
            }
        } else {
            pend->activePend = PEND_RIGHT;
            pend->swingForce[PEND_LEFT] = 0;
            pend->swingForce[PEND_RIGHT] = 0xC0;
            pend->qSwingPos[PEND_LEFT] = -PEND_IDLE_POS;
            sub_8003DF0(SE_PENDULUM_HIT);
        }
    } else {
        if (pend->qSwingPos[PEND_RIGHT] >= +PEND_IDLE_POS) {
            pend->swingForce[PEND_RIGHT] -= PEND_FORCE_DELTA;
            pend->qSwingPos[PEND_RIGHT] += (pend->swingForce[PEND_RIGHT] >> 5);

            if (pend->qSwingPos[PEND_RIGHT] > +Q(1.0)) {
                pend->qSwingPos[PEND_RIGHT] = +Q(1.0);
            }
        } else {
            pend->activePend = PEND_LEFT;
            pend->swingForce[PEND_LEFT] = -0xC0;
            pend->swingForce[PEND_RIGHT] = 0;
            pend->qSwingPos[PEND_RIGHT] = +PEND_IDLE_POS;
            sub_8003DF0(SE_PENDULUM_HIT);
        }
    }

    for (i = 0; i < PEND_COUNT; i++) {
        s32 swingPos;
        ps = &pend->sprBalls[i];

        sp04[i] = ps->dx;
        sp08[i] = ps->dy;

        ps->dx = (SIN(pend->qSwingPos[i] & ONE_CYCLE) >> 7);
        ps->dy = (COS(pend->qSwingPos[i] & ONE_CYCLE) >> 7);

        sp04[i] -= ps->dx;
        sp08[i] -= ps->dy;

        for (j = 0; j < SEGMENTS_PER_PEND; j++) {
            s32 sinValue;
            ps = &pend->sprSegments[i * SEGMENTS_PER_PEND + j];

            ps->dx = ((SIN(pend->qSwingPos[i] & ONE_CYCLE) >> 9) * (j + 1));
            ps->dy = ((COS(pend->qSwingPos[i] & ONE_CYCLE) >> 9) * (j + 1));
        }
    }

    worldX = pend->worldX;
    worldY = pend->worldY;

    for (j = 0; j < NUM_SINGLE_PLAYER_CHARS; j++) {
        Player *p;

        if (j == 0) {
            p = &gPlayers[gStageData.charId];
        } else {
            p = &gPlayers[p->charFlags.partnerIndex];
        }

        if (((p->charFlags.someIndex == 1) || (p->charFlags.someIndex == 2) || (p->charFlags.someIndex == 4)) && !sub_802C0D4(p)) {
            for (i = 0; i < PEND_COUNT; i++) {
                u32 mask;
                Sprite *s;
                ps = &pend->sprBalls[i];
                s = &ps->s;

                if ((p->moveState & MOVESTATE_20) && (p->spr6C == s)) {
                    s32 val;
                    p->qWorldX -= Q(sp04[i]);
                    val = p->qWorldY + Q(4);
                    p->qWorldY = val - Q(sp08[i]);
                }

                mask = sub_8020950(s, ps->dx + worldX, ps->dy + worldY, p, 0);
                if (mask & 0x10000) {
                    s16 qDY = Q(mask & 0x00FF);
                    p->qWorldY += qDY;
                }
            }
        }
    }

    sub_804C008();
}

// (75.64%) https://decomp.me/scratch/Wb6GN
NONMATCH("asm/non_matching/game/interactables/pendulum__sub_804BEE4.inc", void sub_804BEE4(Pendulum *pend))
{
    Sprite *s;
    u8 zone = gStageData.zone;
    AnimId anim;
    s16 i;
    u32 offset;

    if (zone == ZONE_6) {
        anim = ANIM_PENDULUM_CYBER;
    } else {
        anim = ANIM_PENDULUM;
    }

    // TODO: Create a macro for this kind of situation.
    pend->tiles = VramMalloc(MAX_TILES_VARIANT(ANIM_PENDULUM, 0) + MAX_TILES_VARIANT(ANIM_PENDULUM, 1));

    s = &pend->sprBalls[PEND_LEFT].s;
    s->tiles = pend->tiles;
    s->anim = anim;
    s->variant = 0;
    s->oamFlags = SPRITE_OAM_ORDER(24);
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);
    UpdateSpriteAnimation(s);

    s = &pend->sprBalls[PEND_RIGHT].s;
    s->tiles = pend->tiles;
    s->anim = anim;
    s->variant = 0;
    s->oamFlags = SPRITE_OAM_ORDER(24);
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);
    UpdateSpriteAnimation(s);

    i = 0;
    offset = MAX_TILES_VARIANT(ANIM_PENDULUM, 0) << 5;
    for (; i < (s16)ARRAY_COUNT(pend->sprSegments); i++) {
        s = &pend->sprSegments[i].s;
        s->tiles = pend->tiles + offset;
        s->anim = anim;
        s->variant = 1;
        s->oamFlags = SPRITE_OAM_ORDER(25);
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->prevVariant = -1;
        s->animSpeed = SPRITE_ANIM_SPEED(1.0);
        s->palId = 0;
        s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
        s->frameFlags = SPRITE_FLAG(PRIORITY, 1);
        UpdateSpriteAnimation(s);
    }
}
END_NONMATCH

void sub_804C008(void)
{
    s16 r8 = 0;
    s16 i, j;

    Pendulum *pend = TASK_DATA(gCurTask);
    MapEntity *me = pend->base.me;
    PendSprite *ps;
    Sprite *s, *s2;
    s16 worldX, worldY;

    worldX = pend->worldX;
    worldY = pend->worldY;

    ps = &pend->sprBalls[PEND_LEFT];
    s = &ps->s;
    s->x = (ps->dx + worldX) - gCamera.x;
    s->y = (ps->dy + worldY) - gCamera.y;

    ps = &pend->sprBalls[PEND_RIGHT];
    s2 = &ps->s;
    s2->x = (ps->dx + worldX) - gCamera.x;
    s2->y = (ps->dy + worldY) - gCamera.y;

    if (IsPointInScreenRect(worldX, worldY) == TRUE) {
        r8 = 1;
    }

    if (sub_802C1D0(s->x, s->y) == TRUE) {
        r8 |= 2;
    }

    if (sub_802C1D0(s2->x, s2->y) == TRUE) {
        r8 |= 4;
    }

    if (r8 == 0) {
        for (i = 0; i < PEND_COUNT; i++) {
            Player *p;
            ps = &pend->sprBalls[i];

            for (j = 0; j < NUM_SINGLE_PLAYER_CHARS; j++) {
                if (j != 0) {
                    p = &gPlayers[p->charFlags.partnerIndex];
                } else {
                    p = &gPlayers[gStageData.charId];
                }

                // TODO/HACK: What is this cast!?
                sub_80213B0((Sprite *)ps, p);
            }
        }

        SET_MAP_ENTITY_NOT_INITIALIZED(me, pend->base.spriteX);
        TaskDestroy(gCurTask);
        return;
    }

    if (r8 & 2) {
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }

    if (r8 & 4) {
        UpdateSpriteAnimation(s2);
        DisplaySprite(s2);
    }

    for (j = 0; j < (SEGMENTS_PER_PEND * PEND_COUNT); j++) {
        ps = &pend->sprSegments[j];
        s2 = &ps->s;
        s2->x = (worldX + ps->dx) - gCamera.x;
        s2->y = (worldY + ps->dy) - gCamera.y;

        if (sub_802C1D0(s2->x, s2->y) == TRUE) {
            UpdateSpriteAnimation(s2);
            DisplaySprite(s2);
        }
    }
}

void TaskDestructor_Pendulum(struct Task *t)
{
    Pendulum *pend = TASK_DATA(t);
    VramFree(pend->tiles);
}
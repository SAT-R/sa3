#include "global.h"
#include "module_unclear.h"
#include "task.h"
#include "trig.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/stage.h"

#include "constants/move_states.h"
#include "constants/songs.h"

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
    /* 0x176 */ u8 filler176[0x6];
    /* 0x17C */ s32 worldX;
    /* 0x17E */ s32 worldY;
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
            // _0804BC38
            pend->activePend = PEND_RIGHT;
            pend->swingForce[PEND_LEFT] = 0;
            pend->swingForce[PEND_RIGHT] = 0xC0;
            pend->qSwingPos[PEND_LEFT] = -PEND_IDLE_POS;
            sub_8003DF0(SE_PENDULUM_HIT);
        }
    } else {
        // _0804BC68
        if (pend->qSwingPos[PEND_RIGHT] >= +PEND_IDLE_POS) {
            pend->swingForce[PEND_RIGHT] -= PEND_FORCE_DELTA;
            pend->qSwingPos[PEND_RIGHT] += (pend->swingForce[PEND_RIGHT] >> 5);

            if (pend->qSwingPos[PEND_RIGHT] > +Q(1.0)) {
                pend->qSwingPos[PEND_RIGHT] = +Q(1.0);
            }
        } else {
            // _0804BCA0
            pend->activePend = PEND_LEFT;
            pend->swingForce[PEND_LEFT] = -0xC0;
            pend->swingForce[PEND_RIGHT] = 0;
            pend->qSwingPos[PEND_RIGHT] = +PEND_IDLE_POS;
            sub_8003DF0(SE_PENDULUM_HIT);
        }
    }
    // _0804BCBC

    for (i = 0; i < PEND_COUNT; i++) {
        // _0804BCD2
        s32 swingPos;
        ps = &pend->sprBalls[i];

        sp04[i] = ps->dx;
        sp08[i] = ps->dy;

        ps->dx = (SIN(pend->qSwingPos[i] & ONE_CYCLE) >> 7);
        ps->dy = (COS(pend->qSwingPos[i] & ONE_CYCLE) >> 7);

        sp04[i] -= ps->dx;
        sp08[i] -= ps->dy;

        // __0804BD3A
        for (j = 0; j < SEGMENTS_PER_PEND; j++) {
            // _0804BD40
            s32 sinValue;
            ps = &pend->sprSegments[i * SEGMENTS_PER_PEND + j];

            ps->dx = ((SIN(pend->qSwingPos[i] & ONE_CYCLE) >> 9) * (j + 1));
            ps->dy = ((COS(pend->qSwingPos[i] & ONE_CYCLE) >> 9) * (j + 1));
        }
    }
    // __0804BD98

    worldX = pend->worldX;
    worldY = pend->worldY;

    for (j = 0; j < NUM_SINGLE_PLAYER_CHARS; j++) {
        // _0804BDB0
        Player *p;

        if (j == 0) {
            p = &gPlayers[gStageData.charId];
        } else {
            p = &gPlayers[p->charFlags.partnerIndex];
        }

        if (((p->charFlags.someIndex == 1) || (p->charFlags.someIndex == 2) || (p->charFlags.someIndex == 4)) && !sub_802C0D4(p)) {
            // _0804BE0C
            for (i = 0; i < PEND_COUNT; i++) {
                // _0804BE22
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
                // _0804BE76

                mask = sub_8020950(s, ps->dx + worldX, ps->dy + worldY, p, NULL);
                if (mask & 0x10000) {
                    s16 qDY = Q(mask & 0x00FF);
                    p->qWorldY += qDY;
                }
            }
        }
    }

    // _0804BECA
    sub_804C008();
}

#if 01
#endif

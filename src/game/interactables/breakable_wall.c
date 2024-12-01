#include "global.h"
#include "module_unclear.h"
#include "core.h"
#include "sprite.h"
#include "trig.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
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
    /* 0x00 */ SpriteBase2 base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ s16 worldX;
    /* 0x36 */ s16 worldY;
    /* 0x38 */ u8 unk38;
    /* 0x39 */ u8 unk39;
    /* 0x3A */ u8 unk3A;
} BreakableWall; /* 0x3C */

void Task_BreakableWall(void);
int sub_8034A20(Player *p);
void sub_8034C60(s16);
void sub_8034D74(void);
void Task_8034E44(void);
void sub_803516C(Sprite *s, u8 param1);
void TaskDestructor_BreakableWall(struct Task *t);

void CreateEntity_BreakableWall(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_BreakableWall, sizeof(BreakableWall), 0x2100, 0, TaskDestructor_BreakableWall);
    BreakableWall *wall = TASK_DATA(t);
    Sprite *s;
    s16 i;

    wall->base.regionX = regionX;
    wall->base.regionY = regionY;
    wall->base.me = me;
    wall->base.spriteX = me->x;
    wall->base.id = id;
    wall->base.unk8 = 0;

    wall->worldX = TO_WORLD_POS(me->x, regionX);
    wall->worldY = TO_WORLD_POS(me->y, regionY);

    for (i = 0; i < 3; i++) {
        if (GetBit(me->d.uData[4], i)) {
            break;
        }
    }

    wall->unk39 = i;
    wall->unk38 = me->d.uData[4] >> 7;
    wall->unk3A = me->d.sData[0];

    s = &wall->s;
    s->x = wall->worldX - gCamera.x;
    s->y = wall->worldY - gCamera.y;

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_803516C(s, wall->unk38);
}

void Task_BreakableWall(void)
{
    BreakableWall *wall = TASK_DATA(gCurTask);
    Sprite *s = &wall->s;
    s16 i;

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        Player *p = GET_SP_PLAYER_V0(i);
        u32 res;

        if (!sub_802C0D4(p) && (gStageData.unk4 != 6) && (gStageData.unk4 != 7) && (gStageData.unk4 != 8)
            && (res = sub_8020874(s, wall->worldX, wall->worldY, 0, p, 1, 1))) {
            if (res & 0x10000) {
                if (wall->unk38 == 0) {
                    p->qWorldY += Q_8_8(res);
                    p->qSpeedAirY = -Q(2);
                } else {
                    p->qWorldX -= p->qSpeedAirX;
                    p->qSpeedAirX = 0;
                }
            } else if (res & 0x20000) {
                if (wall->unk38 == 0) {
                    p->qWorldY += Q_8_8(res);

                    if (p->moveState & 0x10000) {
                        p->qWorldY -= Q(1);
                    } else {
                        p->qWorldY += Q(1);
                    }

                    p->qSpeedAirY = 0;
                } else {
                    p->qWorldX -= p->qSpeedAirX;
                    p->qSpeedAirX = Q(0);
                }
            } else {
                p->qWorldX += Q((s16)res >> 8);

                if (wall->unk38 != 0) {
                    p->qSpeedAirY = -Q(2);
                }
            }

            sub_8034C60(sub_8034A20(p));
            Player_800BB34(p);
        } else if (((p->charFlags.someIndex == 1) || (p->charFlags.someIndex == 2) || (p->charFlags.someIndex == 4)) && !sub_802C0D4(p)) {
            res = sub_8020950(s, wall->worldX, wall->worldY, p, 0);

            if (res & 0x10000) {
                p->qWorldY += Q_8_8(res);
                p->qSpeedAirY = 0;
            } else if (res & 0x20000) {
                p->qWorldY += Q_8_8(res);
                if (p->moveState & 0x10000) {
                    p->qWorldY -= Q(1);
                } else {
                    p->qWorldY += Q(1);
                }

                p->qSpeedAirY = 0;
            }

            if (res & 0xC0000) {
                p->qWorldX += Q((s16)res >> 8);
                p->qSpeedAirX = 0;
                p->qSpeedGround = 0;

                if ((res & 0x40000) && (p->keyInput & DPAD_LEFT)) {
                    p->qWorldX -= Q(1);
                    p->moveState |= MOVESTATE_40;
                } else if ((res & 0x80000) && (p->keyInput & DPAD_RIGHT)) {
                    p->qWorldX += Q(1);
                    p->moveState |= MOVESTATE_40;
                }
            }
        }
    }

    if (wall->unk3A == 0) {
        gCurTask->main = Task_8034E44;
    }

    sub_8034D74();
}
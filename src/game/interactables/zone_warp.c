#include "global.h"
#include "module_unclear.h"
#include "core.h"
#include "sprite.h"
#include "trig.h"
#include "malloc_vram.h"
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
    /* 0x34 */ u8 targetZone;
} ZoneWarp; /* size: 0x38 */

void Task_ZoneWarpInit(void);
void sub_802DB9C(void);
void Task_802D8C8(void);
void Task_802D9A8(void);
void Task_802DADC(void);
void TaskDestructor_ZoneWarp(struct Task *);
void sub_802DC20(s16, Sprite *);

void CreateEntity_ZoneWarp(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    s16 zoneId;

    for (zoneId = 0; zoneId < 6; zoneId++) {
        if (GetBit(me->d.uData[4], zoneId)) {
            break;
        }
    }

    if (gStageData.zone <= zoneId) {
        zoneId++;
    }

    if (gSaveGame.unlockedZones - 1 >= zoneId) {
        struct Task *t = TaskCreate(Task_ZoneWarpInit, sizeof(ZoneWarp), 0x2100, 0, TaskDestructor_ZoneWarp);
        ZoneWarp *warp = TASK_DATA(t);
        Sprite *s = &warp->s;

        warp->base.regionX = regionX;
        warp->base.regionY = regionY;
        warp->base.me = me;
        warp->base.spriteX = me->x;
        warp->base.id = id;
        warp->targetZone = zoneId;

        s->x = TO_WORLD_POS(me->x, regionX);
        s->y = TO_WORLD_POS(me->y, regionY);

        SET_MAP_ENTITY_INITIALIZED(me);
        sub_802DC20(zoneId, s);
    }
}

void Task_ZoneWarpInit(void)
{
    ZoneWarp *warp = TASK_DATA(gCurTask);
    Sprite *s = &warp->s;
    MapEntity *me = warp->base.me;
    Player *p = GET_SP_PLAYER_V0(PLAYER_1);
    s16 worldX, worldY;

    worldX = TO_WORLD_POS(warp->base.spriteX, warp->base.regionX);
    worldY = TO_WORLD_POS(me->y, warp->base.regionY);

    if (!sub_802C080(p) && (gStageData.playerIndex == 0)) {
        if (sub_8020700(s, worldX, worldY, 0, p, 0)) {
            sub_8016F28(p);

            p->moveState |= (MOVESTATE_20000000 | MOVESTATE_10000000 | MOVESTATE_2);

            p->charFlags.anim0 = 11;
            p->qSpeedGround = 0;
            p->qSpeedAirX = 0;
            p->qSpeedAirY = 0;

            Player_8004FF8(p);
            sub_8003DF0(SE_SPIN_ATTACK);
            gCurTask->main = Task_802D8C8;
        }
    }

    sub_802DB9C();
}

void Task_802D8C8(void)
{
    Player *p = GET_SP_PLAYER_V0(PLAYER_1);
    ZoneWarp *warp = TASK_DATA(gCurTask);
    MapEntity *me = warp->base.me;
    s16 qWorldX16, qWorldY16;
    s32 qWorldX, qWorldY;

    // TODO: Match directly using Q() ?
    qWorldX16 = TO_WORLD_POS(warp->base.spriteX, warp->base.regionX);
    qWorldY16 = TO_WORLD_POS(me->y, warp->base.regionY);

    qWorldX = Q(qWorldX16);
    qWorldY = Q(qWorldY16);

    if (qWorldX != p->qWorldX) {
        if (qWorldX < p->qWorldX) {
            p->qWorldX -= Q(2);

            if (p->qWorldX <= qWorldX) {
                p->qWorldX = qWorldX;
            }
        } else {
            p->qWorldX += Q(2);

            if (p->qWorldX >= qWorldX) {
                p->qWorldX = qWorldX;
            }
        }
    }

    if (qWorldY != p->qWorldY) {
        if (qWorldY < p->qWorldY) {
            p->qWorldY -= Q(2);

            if (p->qWorldY <= qWorldY) {
                p->qWorldY = qWorldY;
            }
        } else {
            p->qWorldY += Q(2);

            if (p->qWorldY >= qWorldY) {
                p->qWorldY = qWorldY;
            }
        }
    }

    if ((qWorldX == p->qWorldX) && (qWorldY == p->qWorldY)) {
        gCurTask->main = Task_802D9A8;
        *((u16 *)&warp->base.unk8) = 120;
    }

    sub_802DB9C();

    if (p->moveState & MOVESTATE_1000000) {
        gCurTask->main = Task_802DADC;
        *((u16 *)&warp->base.unk8) = 30;
    }
}
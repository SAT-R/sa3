#include "global.h"
#include "sprite.h"
#include "task.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/stage.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ s32 qWorldX;
    /* 0x10 */ s32 qWorldY;
    /* 0x14 */ s32 top;
    /* 0x18 */ s32 bottom;
    /* 0x1C */ s32 left;
    /* 0x20 */ s32 right;
} IA_090; /* size: 0x24 */

void Task_Interactable090Main(void);

void Task_Interactable090Main(void)
{
    u8 r7 = 0;
    IA_090 *ia = TASK_DATA(gCurTask);
    MapEntity *me = ia->base.me;
    Player *p;
    u8 i;

    for (i = 0; i < 2; i++) {
        if (i != 0) {
            p = &gPlayers[p->charFlags.partnerIndex];
        } else {
            // _0803F3F4
            p = &gPlayers[gStageData.charId];
        }

        if (p->charFlags.someIndex == 1 || p->charFlags.someIndex == 2
            || p->charFlags.someIndex == 4) {
            if (!sub_802C0D4(p)) {
                if ((ia->left < p->qWorldX) && (ia->right > p->qWorldX)
                    && (ia->top < p->qWorldY) && (ia->bottom > p->qWorldY)) {
                    // __mid
                    p->speedGround = (p->speedGround * 31) >> 5;
                    p->speedAirX = (p->speedAirX * 31) >> 5;
                    p->speedAirY = (p->speedAirY * 31) >> 5;
                    r7 |= (i + 1);
                }
            }
            // _0803F470
        }
    }

    if (r7 == 0) {
        s16 x, y;
        x = I(ia->qWorldX);
        y = I(ia->qWorldY);

        if (!IsPointInScreenRect(x, y)) {
            me->x = ia->base.unk8;
            TaskDestroy(gCurTask);
            return;
        }
    }
}

void CreateEntity_Interactable090(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    IA_090 *ia;
    struct Task *t
        = TaskCreate(Task_Interactable090Main, sizeof(IA_090), 0x2100, 0, NULL);
    s32 qWorldX;
    s32 qWorldY;
    ia = TASK_DATA(t);

    ia->base.regionX = regionX;
    ia->base.regionY = regionY;
    ia->base.me = me;
    ia->base.unk8 = me->x;
    ia->base.unk9 = id;

    qWorldX = Q(TO_WORLD_POS(me->x, regionX));
    ia->qWorldX = qWorldX;
    qWorldY = Q(TO_WORLD_POS(me->y, regionY));
    ia->qWorldY = qWorldY;

    ia->left = qWorldX + Q(me->d.sData[0]) * TILE_WIDTH;
    ia->right = ia->left + Q(me->d.uData[2]) * TILE_WIDTH;

    ia->top = qWorldY + (Q(me->d.sData[1]) * TILE_WIDTH);
    ia->bottom = ia->top + (Q(me->d.uData[3]) * TILE_WIDTH);

    SET_MAP_ENTITY_INITIALIZED(me);
}

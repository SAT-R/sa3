#include "global.h"
#include "module_unclear.h"
#include "task.h"
#include "game/game.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/stage.h"

typedef struct {
    /* 0x00 */ SpriteBase2 base;
} Warp; /* size: 0x0C */

void sub_802E528(void);
void sub_802E6F8(void);

void CreateEntity_Warp(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    u8 i;

    for (i = 0; i < 4; i++) {
        if ((me->d.uData[4] >> i) & 0x1) {
            break;
        }
    }

    if ((i != 1) || (gStageData.gameMode == GAME_MODE_SINGLE_PLAYER)) {
        struct Task *t = TaskCreate(sub_802E528, sizeof(Warp), 0x2000, 0, NULL);
        Warp *warp = TASK_DATA(t);

        warp->base.regionX = regionX;
        warp->base.regionY = regionY;
        warp->base.me = me;
        warp->base.spriteX = me->x;
        warp->base.id = i;
        warp->base.unk8 = 0;
    }

    SET_MAP_ENTITY_INITIALIZED(me);
}

void sub_802E87C(void)
{
    switch (gStageData.gameMode) {
        case GAME_MODE_SINGLE_PLAYER: {
            sub_8002210(11, 0);
        } break;

        case GAME_MODE_5: {
            sub_8002210(11, 0);
        } break;
    }
}

void sub_802E8A8(void)
{
    switch (gStageData.gameMode) {
        case GAME_MODE_SINGLE_PLAYER: {
            sub_8097C54(4);
        } break;

        case GAME_MODE_5: {
            sub_8004D30();
            TaskDestroy(gCurTask);
            return;
        } break;
    }
}

void Task_802E8D8(void)
{
    Warp *warp = TASK_DATA(gCurTask);
    Player *p;

    p = &gPlayers[gStageData.charId];
    p->charFlags.unk2C_40 = 1;

    warp->base.unk8++;

    if (warp->base.unk8 >= 120) {
        gCurTask->main = sub_802E6F8;
    }
}
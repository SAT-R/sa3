#include "global.h"
#include "module_unclear.h"
#include "core.h"
#include "task.h"
#include "game/game.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/stage.h"

#include "constants/move_states.h"
#include "constants/songs.h"

typedef struct {
    /* 0x00 */ SpriteBase2 base;
} Warp; /* size: 0x0C */

void Task_WarpMain(void);
void Task_802E634(void);
void Task_802E6F8(void);
void sub_802E87C(void);
void sub_802E8A8(void);
void Task_802E8D8(void);

void Task_WarpMain(void)
{
    if (gStageData.playerIndex == 0) {
        Warp *warp = TASK_DATA(gCurTask);
        MapEntity *me = warp->base.me;
        u8 meX = warp->base.spriteX;
        u16 regionX = warp->base.regionX;
        u16 regionY = warp->base.regionY;
        Player *p = &gPlayers[gStageData.playerIndex];
        s16 worldX, worldY;
        s32 qNewWorldY;

        worldX = TO_WORLD_POS(meX, regionX);
        worldY = TO_WORLD_POS(me->y, regionY);

        if (!IsPointInScreenRect(worldX, worldY)) {
            SET_MAP_ENTITY_NOT_INITIALIZED(me, meX);
            TaskDestroy(gCurTask);
            return;
        } else if (!(p->moveState & (MOVESTATE_IGNORE_INPUT | MOVESTATE_1000000)) && (worldX <= I(p->qWorldX))
                   && ((worldX + (me->d.uData[2] * TILE_WIDTH)) >= I(p->qWorldX)) && (worldY <= I(p->qWorldY))
                   && ((worldY + (me->d.uData[3] * TILE_WIDTH)) >= I(p->qWorldY))) {
            // TODO: The end of this if block
            //       is a little "unclean", but this matches for now.
            if (warp->base.id == 2) {
                if (warp->base.unk8 == 0) {
                    sub_8016F28(p);

                    p->moveState |= (MOVESTATE_10000000 | MOVESTATE_2);
                    p->charFlags.anim0 = 11;

                    p->qSpeedGround = Q(0);
                    p->qSpeedAirX = Q(0);
                    p->qSpeedAirY = Q(0);
                    sub_8003DF0(SE_SPIN_ATTACK);
                    gCurTask->main = Task_802E634;
                    return;
                }
            }
            gCurTask->main = Task_802E6F8;
        }
    }
}

void Task_802E634(void)
{
    Warp *warp = TASK_DATA(gCurTask);
    MapEntity *me = warp->base.me;
    u8 meX = warp->base.spriteX;
    u16 regionX = warp->base.regionX;
    u16 regionY = warp->base.regionY;
    Player *p = &gPlayers[gStageData.playerIndex];
    s16 worldX, worldY;
    s32 qWorldX, qWorldY;
    s32 qNewWorldY;

    worldX = TO_WORLD_POS(meX, regionX);
    worldY = TO_WORLD_POS(me->y, regionY);

    qWorldX = Q(worldX);
    qWorldY = Q(worldY);

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

    qNewWorldY = qWorldY + Q(5);

    if (qNewWorldY != p->qWorldY) {
        if (qNewWorldY < p->qWorldY) {
            p->qWorldY -= Q(2);

            if (p->qWorldY <= qWorldY) {
                p->qWorldY = qNewWorldY;
            }
        } else {
            p->qWorldY += Q(2);

            if (p->qWorldY >= qWorldY) {
                p->qWorldY = qNewWorldY;
            }
        }
    }

    if ((qWorldX == p->qWorldX) && (qWorldY + Q(5) == p->qWorldY)) {
        gCurTask->main = Task_802E8D8;
    }
}

void Task_802E6F8(void)
{
    Warp *warp = TASK_DATA(gCurTask);

    u8 id = warp->base.id;

    if ((id != 2) || (gStageData.gameMode == GAME_MODE_SINGLE_PLAYER)) {
        sub_8003D2C();
        TasksDestroyAll();
        gUnknown_03003F94 = gUnknown_03003D20;
        gUnknown_03006840 = 0;
        gUnknown_03006208 = gVramGraphicsCopyQueueIndex;
    }

    switch (id) {
        case 0: {
            if (!GAME_MODE_IS_SINGLE_PLAYER(gStageData.gameMode)) {
                sub_80275B8(gStageData.zone * 10 + 2, 0, 0);
            }

            sub_8002210(gStageData.zone * 10 + 2, 0);
        } break;

        case 1: {
            sub_802E87C();
        } break;

        case 2: {
            sub_802E8A8();
        } break;

        case 3: {
            gDispCnt |= DISPCNT_WIN1_ON;
            gWinRegs[WINREG_WIN1H] = WIN_RANGE(0, DISPLAY_WIDTH);
            gWinRegs[WINREG_WIN1V] = WIN_RANGE(0, DISPLAY_HEIGHT);
            gWinRegs[WINREG_WININ] = WININ_WIN1_ALL;
            gWinRegs[WINREG_WINOUT] = 0;

            gBldRegs.bldCnt = (BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN);
            gBldRegs.bldAlpha = 0;
            gBldRegs.bldY = 16;

            sub_8002210(1, 2);
        } break;
    }
}

void CreateEntity_Warp(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    u8 i;

    for (i = 0; i < 4; i++) {
        if ((me->d.uData[4] >> i) & 0x1) {
            break;
        }
    }

    if ((i != 1) || (gStageData.gameMode == GAME_MODE_SINGLE_PLAYER)) {
        struct Task *t = TaskCreate(Task_WarpMain, sizeof(Warp), 0x2000, 0, NULL);
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

    p = &gPlayers[gStageData.playerIndex];
    p->charFlags.unk2C_40 = 1;

    warp->base.unk8++;

    if (warp->base.unk8 >= 120) {
        gCurTask->main = Task_802E6F8;
    }
}
#include "sprite.h"
#include "task.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/player_callbacks.h"
#include "game/stage.h"

// NOTE(Jace): PL_TYPE and Interactable-IDs do differ!
// IA000: PL_TYPE_2
// IA001: PL_TYPE_FRONT
// IA002: PL_TYPE_BACK

#define PL_TYPE_FRONT 0
#define PL_TYPE_BACK  1
#define PL_TYPE_2     2

typedef struct {
    SpriteBase base;
} TogglePlayerLayer;

void Task_Toggle_PlayerLayer(void);
void sub_802E4C8(u16 layerType, MapEntity *me, u16 regionX, u16 regionY, u8 id);

void Task_Toggle_PlayerLayer(void)
{
    TogglePlayerLayer *layer = TASK_DATA(gCurTask);
    MapEntity *me = layer->base.me;
    Player *p;
    u8 meX;
    s32 regionX, regionY;
    s32 worldX, worldY;
    u8 i;

    meX = layer->base.unk8;
    regionX = layer->base.regionX;
    regionY = layer->base.regionY;
    worldX = TO_WORLD_POS(meX, regionX);
    worldY = TO_WORLD_POS(me->y, regionY);

    if (!IsPointInScreenRect(worldX, worldY)) {
        me->x = meX;
        TaskDestroy(gCurTask);
        return;
    }

    for (i = 0; i < 2; i++) {
        if ((gStageData.gameMode != GAME_MODE_MP_SINGLE_PACK) || (i == 0)) {
            if (i == 0) {
                p = &gPlayers[gStageData.charId];
            } else {
                p = &gPlayers[p->charFlags.partnerIndex];
            }
            // _0802E3B2

            if (p->charFlags.someIndex == 1 || p->charFlags.someIndex == 2
                || p->charFlags.someIndex == 4) {
                // _0802E3D4
                if ((p->callback != PlayerCB_800DDD0) && (worldX <= I(p->qWorldX))
                    && (worldX + me->d.uData[2] * TILE_WIDTH >= I(p->qWorldX))
                    && (worldY <= I(p->qWorldY))
                    && (worldY + me->d.uData[3] * TILE_WIDTH >= I(p->qWorldY))) {
                    switch (layer->base.unk9) {
                        case PL_TYPE_FRONT: {
                            // _0802E414
                            p->unk27 = layer->base.unk9;
                        } break;

                        case PL_TYPE_BACK: {
                            // _0802E414
                            p->unk27 = layer->base.unk9;
                        } break;

                        case PL_TYPE_2: {
                            // _0802E41C
                            u32 newLayer = 0;

                            if (p->unk27 == 0) {
                                newLayer = 1;
                            }

                            p->unk27 = newLayer;
                        } break;
                    }
                }
            }
        }
    }
}

void CreateEntity_Interactable000(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    sub_802E4C8(PL_TYPE_2, me, regionX, regionY, id);
}

void CreateEntity_Interactable001(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    sub_802E4C8(PL_TYPE_FRONT, me, regionX, regionY, id);
}

void CreateEntity_Interactable002(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    sub_802E4C8(PL_TYPE_BACK, me, regionX, regionY, id);
}

void sub_802E4C8(u16 layerType, MapEntity *me, u16 regionX, u16 regionY, u8 UNUSED id)
{
    struct Task *t = TaskCreate(Task_Toggle_PlayerLayer, sizeof(TogglePlayerLayer),
                                0x2000, 0, NULL);
    TogglePlayerLayer *layer = TASK_DATA(t);

    layer->base.regionX = regionX;
    layer->base.regionY = regionY;
    layer->base.me = me;
    layer->base.unk8 = me->x;
    layer->base.unk9 = layerType;

    SET_MAP_ENTITY_INITIALIZED(me);
}
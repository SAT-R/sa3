#include "global.h"
#include "task.h"
#include "malloc_vram.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"

#define MAX_BRIDGE_SEGMENTS 16

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ s32 qWorldX;
    /* 0x10 */ s32 qWorldY;

    /* 0x14 */ s16 left;
    /* 0x16 */ s16 top;
    /* 0x18 */ s16 right;
    /* 0x1A */ s16 bottom;
    /* 0x1C */ s32 qMiddleX;
    /* 0x20 */ s16 offsetMiddle;
    /* 0x22 */ s16 unk22;
    /* 0x24 */ u16 unk24;
    /* 0x26 */ u8 filler26[0x42];
    /* 0x68 */ u16 numSegments;
    /* 0x6C */ s32 unk6C;
    /* 0x70 */ s32 unk70;
    /* 0x74 */ Player *p1;
    /* 0x74 */ Player *p2;

    /* 0x78 */ u8 filler78[0x8];
    /* 0x80 */ Sprite s;
} SunsetBridge; /* 0xA8 */

void Task_SunsetBridge(void);
void TaskDestruction_SunsetBridge(struct Task *);
void sub_8045060(SunsetBridge *bridge);

NONMATCH("asm/non_matching/game/interactables/sunset_bridge__CreateEntity_SunsetBridge.inc",
         void CreateEntity_SunsetBridge(MapEntity *me, u16 regionX, u16 regionY, u8 id))
{
    struct Task *t = TaskCreate(Task_SunsetBridge, sizeof(SunsetBridge), 0x2100, 0, TaskDestruction_SunsetBridge);
    SunsetBridge *bridge = TASK_DATA(t);
    Sprite *s = &bridge->s;
    s32 worldX, worldY;
    s32 width;

    bridge->base.regionX = regionX;
    bridge->base.regionY = regionY;
    bridge->base.me = me;
    bridge->base.unk8 = me->x;
    bridge->base.unk9 = id;

    worldX = TO_WORLD_POS(me->x, regionX);
    bridge->qWorldX = worldX;
    worldY = TO_WORLD_POS(me->y, regionY);
    bridge->qWorldY = worldY;

    bridge->p1 = &gPlayers[gStageData.charId];
    bridge->p2 = &gPlayers[bridge->p1->charFlags.partnerIndex];

    bridge->top = worldY + me->d.sData[1] * TILE_WIDTH;
    bridge->bottom = bridge->top + me->d.uData[3] * TILE_WIDTH;
    bridge->left = worldX + me->d.sData[0] * TILE_WIDTH;
    bridge->right = bridge->left + me->d.uData[2] * TILE_WIDTH;

    bridge->qWorldX = Q(bridge->qWorldX);
    bridge->qWorldY = Q(bridge->qWorldY);
    bridge->unk6C = 0x20;
    bridge->unk70 = 0x20;

    // Without setting the variable, the multiplication gets partly optimized out by the compiler
    width = (me->d.uData[2] * TILE_WIDTH);
    bridge->numSegments = width / ANIM_SUNSET_BRIDGE_WIDTH;

    if (bridge->numSegments > MAX_BRIDGE_SEGMENTS) {
        bridge->numSegments = MAX_BRIDGE_SEGMENTS;
    }
    // _08044D2A

    bridge->offsetMiddle = me->d.uData[2] * (TILE_WIDTH / 2);
    bridge->qMiddleX = Q(bridge->left + bridge->right) / 2;
    bridge->unk22 = me->d.uData[3] * TILE_WIDTH;

    if (bridge->numSegments > 1)
        bridge->unk24 = (Q(2) / (bridge->numSegments - 1));
    else
        bridge->unk24 = Q(2);

    sub_8045060(bridge);

    SET_MAP_ENTITY_INITIALIZED(me);

    s->tiles = ALLOC_TILES(ANIM_SUNSET_BRIDGE);
    s->oamFlags = SPRITE_OAM_ORDER(24);
    s->anim = ANIM_SUNSET_BRIDGE;
    s->variant = 0;
    s->timeUntilNextFrame = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->x = 0;
    s->y = 0;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);
    UpdateSpriteAnimation(s);
}
END_NONMATCH

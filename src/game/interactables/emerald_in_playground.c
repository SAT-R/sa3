#include "malloc_vram.h"
#include "sprite.h"
#include "task.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/save.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ s16 worldX;
    /* 0x36 */ s16 worldY;
} PlaygroundEmerald;

void sub_804F65C(void);
void Task_EmeraldInPlaygroundMain(void);
void TaskDestructor_EmeraldInPlayground(struct Task *t);
void sub_804F6F0(PlaygroundEmerald *emerald);

void CreateEntity_EmeraldInPlayground(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    bool32 wasCollected = (gSaveGame.collectedEmeralds >> gStageData.zone) & 0x1;

    if (wasCollected) {
        struct Task *t = TaskCreate(Task_EmeraldInPlaygroundMain, sizeof(PlaygroundEmerald), 0x2100, 0, TaskDestructor_EmeraldInPlayground);
        PlaygroundEmerald *emerald = TASK_DATA(t);
        Sprite *s;

        emerald->base.regionX = regionX;
        emerald->base.regionY = regionY;
        emerald->base.me = me;
        emerald->base.spriteX = me->x;
        emerald->base.id = id;
        emerald->worldX = TO_WORLD_POS(me->x, regionX);
        emerald->worldY = TO_WORLD_POS(me->y, regionY);

        s = &emerald->s;
        s->x = emerald->worldX - gCamera.x;
        s->y = emerald->worldY - gCamera.y;

        SET_MAP_ENTITY_INITIALIZED(me);
        sub_804F6F0(emerald);
    }
}

void sub_804F65C(void)
{
    PlaygroundEmerald *emerald = TASK_DATA(gCurTask);
    Sprite *s = &emerald->s;
    MapEntity *me = emerald->base.me;
    s32 worldX, worldY;

    worldX = emerald->worldX;
    worldY = emerald->worldY;
    if (!IsPointInScreenRect(worldX, worldY)) {
        me->x = emerald->base.spriteX;
        TaskDestroy(gCurTask);
        return;
    } else {
        s->x = worldX - gCamera.x;
        s->y = worldY - gCamera.y;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

void TaskDestructor_EmeraldInPlayground(struct Task *t)
{
    PlaygroundEmerald *emerald = TASK_DATA(t);
    VramFree(emerald->s.tiles);
}

void Task_EmeraldInPlaygroundMain(void) { sub_804F65C(); }

void sub_804F6F0(PlaygroundEmerald *emerald)
{
    Sprite *s = &emerald->s;
    s->tiles = ALLOC_TILES(ANIM_CHAOMAP_EMERALD);
    s->anim = ANIM_CHAOMAP_EMERALD;
    s->variant = gStageData.zone;
    s->oamFlags = SPRITE_OAM_ORDER(24);
    s->animCursor = 0;
    s->timeUntilNextFrame = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);
    UpdateSpriteAnimation(s);
}
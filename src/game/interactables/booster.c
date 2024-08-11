#include "global.h"
#include "malloc_vram.h"
#include "sprite.h"
#include "task.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ u8 kind;
} Booster; /* size: 0x38 */

void CreateEntity_Booster(u8 kind, MapEntity *me, u16 regionX, u16 regionY, u8 id);

void sub_8031428(u8 param0, u8 param1, u8 param2, Sprite *s)
{
    u32 mask = 0;

    if (param2 != 0) {
        mask |= (param0 == 5) ? SPRITE_FLAG_MASK_X_FLIP : SPRITE_FLAG_MASK_Y_FLIP;
    }

    if (param1 != 0) {
        mask |= (param0 == 5) ? SPRITE_FLAG_MASK_Y_FLIP : SPRITE_FLAG_MASK_X_FLIP;
    }

    // TODO: s->tiles = ALLOC_TILES(ANIM_BOOSTER);
    s->tiles = VramMalloc(20);
    s->anim = ANIM_BOOSTER;

    if (gStageData.gameMode != GAME_MODE_MP_SINGLE_PACK) {
        s->variant = param0;
    } else {
        s->variant = 0;
        mask |= SPRITE_FLAG_MASK_MOSAIC;
    }

    s->oamFlags = SPRITE_OAM_ORDER(24);
    s->animCursor = 0;
    s->timeUntilNextFrame = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = mask | SPRITE_FLAG(PRIORITY, 1);
}

void sub_80314B0(void)
{
    Booster *booster = TASK_DATA(gCurTask);
    Sprite *s = &booster->s;
    MapEntity *me = booster->base.me;
    s16 worldX, worldY;

    worldX = TO_WORLD_POS(booster->base.spriteX, booster->base.regionX);
    worldY = TO_WORLD_POS(me->y, booster->base.regionY);

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;

    if (!IsPointInScreenRect(worldX, worldY)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, booster->base.spriteX);
        TaskDestroy(gCurTask);
        return;
    } else {
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

void CreateEntity_Booster0(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_Booster(0, me, regionX, regionY, id); }

void CreateEntity_Booster1(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_Booster(1, me, regionX, regionY, id); }

void CreateEntity_Booster3(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_Booster(3, me, regionX, regionY, id); }

void CreateEntity_Booster2(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_Booster(2, me, regionX, regionY, id); }

void CreateEntity_Booster4(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_Booster(4, me, regionX, regionY, id); }

void CreateEntity_Booster5(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_Booster(5, me, regionX, regionY, id); }

void TaskDestructor_Booster(struct Task *t)
{
    Booster *booster = TASK_DATA(t);
    VramFree(booster->s.tiles);
}
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
    /* 0x00 */ SpriteBase4 base;
    /* 0x10 */ Sprite s;
    /* 0x38 */ u16 unk38;
    /* 0x3A */ u16 unk3A;
    /* 0x3C */ u8 unk3C;
    /* 0x3D */ u8 unk3D;
    /* 0x40 */ Player *player;
} RotatingHandle;

void Task_RotatingHandleInit(void);
void sub_8032410(s16 param0);
void sub_8032B18(Sprite *s);
void TaskDestructor_RotatingHandle(struct Task *t);

void CreateEntity_RotatingHandle(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_RotatingHandleInit, sizeof(RotatingHandle), 0x2100, 0, TaskDestructor_RotatingHandle);
    RotatingHandle *handle = TASK_DATA(t);
    Sprite *s = &handle->s;

    handle->base.regionX = regionX;
    handle->base.regionY = regionY;
    handle->base.me = me;
    handle->base.spriteX = me->x;
    handle->base.id = id;

    handle->unk38 = 0;
    handle->unk3A = 0;
    handle->unk3C = 0;
    handle->unk3D = 0;
    handle->player = NULL;
    handle->base.unkA = 0;
    handle->base.unkC = 0;

    // NOTE: Sprite.x|y should be screen pos, not world pos!
    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_8032B18(s);
}

void sub_8032410(s16 param0)
{
    RotatingHandle *handle = TASK_DATA(gCurTask);
    Sprite *s = &handle->s;
    MapEntity *me = handle->base.me;
    s16 worldX, worldY;

    worldX = TO_WORLD_POS(handle->base.spriteX, handle->base.regionX);
    worldY = TO_WORLD_POS(me->y, handle->base.regionY);

    if (!param0 && !IsPointInScreenRect(worldX, worldY)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, handle->base.spriteX);
        TaskDestroy(gCurTask);
        return;
    }

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}
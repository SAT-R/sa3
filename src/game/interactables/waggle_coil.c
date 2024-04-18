#include "global.h"
#include "malloc_vram.h"
#include "task.h"
#include "game/camera.h"
#include "game/entity.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"

// TODO: Rename?
// The "Waggle Coil Spring thingy" from Sunset Hill

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ u8 unk34;
} WaggleCoil; /* size: 0x38 */

void Task_WaggleCoil(void);
void sub_8040140(Sprite *s);
void TaskDestructor_WaggleCoil(struct Task *t);

void WaggleCoil_InitSprite(Sprite *s)
{
    s->tiles = ALLOC_TILES(ANIM_WAGGLE_COIL);
    s->anim = ANIM_WAGGLE_COIL;
    s->variant = 0;
    s->oamFlags = SPRITE_OAM_ORDER(24);
    s->x = 0;
    s->y = 0;
    s->animCursor = 0;
    s->timeUntilNextFrame = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    UpdateSpriteAnimation(s);
}

void sub_804018C(void)
{
    WaggleCoil *coil = TASK_DATA(gCurTask);
    Sprite *s = &coil->s;
    MapEntity *me = coil->base.me;
    s32 worldX, worldY;

    worldX = TO_WORLD_POS(coil->base.spriteX, coil->base.regionX);
    worldY = TO_WORLD_POS(me->y, coil->base.regionY);

    if (!IsPointInScreenRect(worldX, worldY)) {
        me->x = coil->base.spriteX;
        TaskDestroy(gCurTask);
        return;
    }

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;
    if (UpdateSpriteAnimation(s) == ACMD_RESULT__ENDED) {
        if (s->variant == 1) {
            s->variant = 0;
        }
    }

    DisplaySprite(s);
}

void CreateEntity_Interactable093(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_WaggleCoil, sizeof(WaggleCoil), 0x2100, 0,
                                TaskDestructor_WaggleCoil);
    WaggleCoil *coil = TASK_DATA(t);
    Sprite *s = &coil->s;

    coil->base.regionX = regionX;
    coil->base.regionY = regionY;
    coil->base.me = me;
    coil->base.spriteX = me->x;
    coil->base.spriteY = id;
    coil->unk34 = me->d.uData[4] & 0x3;
    SET_MAP_ENTITY_INITIALIZED(me);

    WaggleCoil_InitSprite(s);
}

void TaskDestructor_WaggleCoil(struct Task *t)
{
    WaggleCoil *coil = TASK_DATA(t);
    VramFree(coil->s.tiles);
}
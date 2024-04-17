#include "sprite.h"
#include "task.h"

#include "game/camera.h"
#include "game/entity.h"

static void Create_Interactable081or082(u32 UNUSED unused, MapEntity *me, u16 regionX,
                                        u16 regionY, u8 id);
static void TaskDestructor_804B44C(struct Task *);
static void sub_804B4DC(void);

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ u16 unk34;
    /* 0x36 */ u16 unk36;
    /* 0x38 */ u32 unk38;
    /* 0x3C */ u32 unk3C;
    /* 0x40 */ u32 unk40;
    /* 0x44 */ u32 unk44;
} IA125_126; /* size: 0x48 */

void CreateEntity_Interactable125(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    Create_Interactable081or082(0, me, regionX, regionY, id);
}

void CreateEntity_Interactable126(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    Create_Interactable081or082(1, me, regionX, regionY, id);
}

static void TaskDestructor_804B44C(struct Task *t) { }

static void Create_Interactable081or082(u32 UNUSED unused, MapEntity *me, u16 regionX,
                                        u16 regionY, u8 id)
{
    struct Task *t
        = TaskCreate(sub_804B4DC, sizeof(IA125_126), 0x2100, 0, TaskDestructor_804B44C);
    IA125_126 *ia = TASK_DATA(t);
    Sprite *s;

    ia->base.regionX = regionX;
    ia->base.regionY = regionY;
    ia->base.me = me;
    ia->base.spriteX = me->x;
    ia->base.spriteY = id;

    ia->unk34 = 0;
    ia->unk36 = 0;
    ia->unk38 = 0;
    ia->unk3C = 0;
    ia->unk40 = 0;
    ia->unk44 = 0;

    s = &ia->s;
    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);
    SET_MAP_ENTITY_INITIALIZED(me);
}

static void sub_804B4DC(void) { }

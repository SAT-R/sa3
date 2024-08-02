#include "global.h"
#include "task.h"
#include "game/camera.h"
#include "game/entity.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ s16 worldX;
    /* 0x36 */ s16 worldY;
    /* 0x38 */ s32 qWorldX;
    /* 0x3C */ s32 qWorldY;
    /* 0x40 */ u16 unk40;
    /* 0x42 */ u8 unk42;
    /* 0x43 */ u8 unk43;
} PlatformCA; /* size: 0x44 */

void Task_PlatformChaosAngel(void);
void TaskDestructor_PlatformChaosAngel(struct Task *);
void sub_804DBF4(Sprite *s);

void CreateEntity_PlatformChaosAngel(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_PlatformChaosAngel, sizeof(PlatformCA), 0x2100, 0, TaskDestructor_PlatformChaosAngel);
    PlatformCA *platform = TASK_DATA(t);
    Sprite *s;

    platform->base.regionX = regionX;
    platform->base.regionY = regionY;
    platform->base.me = me;
    platform->base.spriteX = me->x;
    platform->base.id = id;

    platform->worldX = TO_WORLD_POS(me->x, regionX);
    platform->worldY = TO_WORLD_POS(me->y, regionY);

    platform->qWorldX = Q(platform->worldX);
    platform->qWorldY = Q(platform->worldY);

    platform->unk40 = 0;
    platform->unk42 = 0;
    platform->unk43 = 1;

    s = &platform->s;
    s->x = platform->worldX - gCamera.x;
    s->y = platform->worldY - gCamera.y;

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_804DBF4(s);
}
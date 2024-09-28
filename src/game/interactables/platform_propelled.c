#include "global.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/stage.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ u8 filler34[0x8];
    /* 0x3C */ s32 qWorldX;
    /* 0x40 */ s32 qWorldY;
    /* 0x44 */ s32 unk44;
    /* 0x48 */ s16 unk48;
    /* 0x4A */ s16 unk4A;
} PlatformPropelled; /* size: 0x4C */

void Task_PlatformPropelled(void);
void TaskDestructor_PlatformPropelled(struct Task *t);
void sub_8042930(Sprite *);
void sub_80429D0(void);
void sub_8042AF0(Sprite *);

void CreateEntity_PlatformPropelled(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_PlatformPropelled, sizeof(PlatformPropelled), 0x2100, 0, TaskDestructor_PlatformPropelled);
    PlatformPropelled *platform = TASK_DATA(t);
    Sprite *s;

    platform->base.regionX = regionX;
    platform->base.regionY = regionY;
    platform->base.me = me;
    platform->base.spriteX = me->x;
    platform->base.id = id;

    platform->qWorldX = Q(TO_WORLD_POS(me->x, regionX));
    platform->qWorldY = Q(TO_WORLD_POS(me->y, regionY));
    platform->unk44 = 0;
    platform->unk48 = 0;
    platform->unk4A = 0;

    s = &platform->s;
    s->x = I(platform->qWorldX);
    s->y = I(platform->qWorldY);

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_8042AF0(s);
}

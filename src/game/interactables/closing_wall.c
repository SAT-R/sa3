#include "global.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/stage.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ Sprite s2;
    /* 0x5C */ u8 unk5C;
    /* 0x5D */ u8 unk5D;
    /* 0x5E */ s16 unk5E;
    /* 0x60 */ s16 unk60;
    /* 0x62 */ s16 worldX;
    /* 0x64 */ s16 worldY;
    /* 0x68 */ void *tiles;
} ClosingWall; /* 0x6C */

void Task_Platform123(void);
void sub_804AC58(ClosingWall *);
void TaskDestructor_Platform123(struct Task *);

void CreateEntity_ClosingWall(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Platform123, sizeof(ClosingWall), 0x2100, 0, TaskDestructor_Platform123);
    ClosingWall *wall = TASK_DATA(t);
    Sprite *s;

    wall->base.regionX = regionX;
    wall->base.regionY = regionY;
    wall->base.me = me;
    wall->base.spriteX = me->x;
    wall->base.id = id;

    wall->unk5C = 0;
    wall->unk5D = 0;
    wall->unk5E = me->d.uData[2] * (TILE_WIDTH / 2);
    wall->unk60 = gStageData.timer;
    wall->worldX = TO_WORLD_POS(me->x, regionX);
    wall->worldY = TO_WORLD_POS(me->y, regionY);

    s = &wall->s;
    s->x = wall->worldX;
    s->y = wall->worldY;

    s = &wall->s2;
    s->x = wall->worldX;
    s->y = wall->worldY;

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_804AC58(wall);
}
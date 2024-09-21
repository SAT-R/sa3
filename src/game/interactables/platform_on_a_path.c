#include "global.h"
#include "sprite.h"
#include "task.h"
#include "malloc_vram.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/zones.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ u8 unk34;
    /* 0x35 */ u8 unk35;
    /* 0x36 */ u16 unk36;
    /* 0x38 */ const u16 *path;
    /* 0x3C */ Vec2_32 qWorld;
    /* 0x44 */ Vec2_32 qPath;
} PlatformOnPath; /* size: 0x4C */

void Task_PlatformOnPath(void);
void sub_80424B0(Sprite *);
void TaskDestructor_PlatformOnPath(struct Task *);

extern const u16 **sPlatformPathTable[NUM_COURSE_ZONES];

void CreateEntity_PlatformOnAPath(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    u8 zone = gStageData.zone;
    struct Task *t = TaskCreate(Task_PlatformOnPath, sizeof(PlatformOnPath), 0x2100, 0, TaskDestructor_PlatformOnPath);
    PlatformOnPath *platform = TASK_DATA(t);
    const u16 *path;
    s32 pathNum;
    Sprite *s;

    platform->base.regionX = regionX;
    platform->base.regionY = regionY;
    platform->base.me = me;
    platform->base.spriteX = me->x;
    platform->base.id = id;
    platform->unk34 = 0;

    platform->qWorld.x = Q(TO_WORLD_POS(me->x, regionX));
    platform->qWorld.y = Q(TO_WORLD_POS(me->y, regionY));

    path = sPlatformPathTable[zone][me->d.uData[4]];
    platform->path = path;
    platform->qPath.x = Q(path[0]);
    platform->qPath.y = Q(path[1]);
    platform->unk35 = path[2];
    platform->unk36 = 0;
    platform->path += 6 / sizeof(*platform->path);

    s = &platform->s;
    s->x = I(platform->qWorld.x);
    s->y = I(platform->qWorld.y);

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_80424B0(s);
}

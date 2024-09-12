#include "global.h"
#include "task.h"
#include "malloc_vram.h"
#include "game/camera.h"
#include "game/entity.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ u8 filler34[0x8];
    /* 0x3C */ s16 unk3C;
    /* 0x3E */ s16 worldX;
    /* 0x40 */ s16 worldY;
    /* 0x42 */ u8 unk42;
} IceLauncher; /* 0x44 */

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ u8 filler34[4];
} IceShiver; /* 0x38 */

void Task_IceLauncher(void);
void TaskDestructor_IceLauncher(struct Task *t);
void sub_804B0F8(Sprite *s, u16 param1);

void CreateEntity_IceLauncher(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_IceLauncher, sizeof(IceLauncher), 0x2100, 0, TaskDestructor_IceLauncher);
    IceLauncher *launcher = TASK_DATA(t);
    Sprite *s;

    launcher->base.regionX = regionX;
    launcher->base.regionY = regionY;
    launcher->base.me = me;
    launcher->base.spriteX = me->x;
    launcher->base.id = id;
    launcher->unk3C = 0;
    launcher->worldX = TO_WORLD_POS(me->x, regionX);
    launcher->worldY = TO_WORLD_POS(me->y, regionY);
    launcher->unk42 = me->d.uData[4] & 0x3;

    s = &launcher->s;
    s->x = launcher->worldX - gCamera.x;
    s->y = launcher->worldY - gCamera.y;

    SET_MAP_ENTITY_INITIALIZED(me);
    sub_804B0F8(s, launcher->unk42);
}
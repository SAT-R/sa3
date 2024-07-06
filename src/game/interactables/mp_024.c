#include "global.h"
#include "task.h"
#include "game/gUnknown_03001060.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/stage.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ s16 worldX;
    /* 0x36 */ s16 worldY;
    /* 0x38 */ u8 unk38;
} IA_MP024; /* size: 0x3C */

void Task_InteractableMP024(void);
void TaskDestructor_InteractableMP024(struct Task *t);
void sub_804F314(Sprite *s);

void CreateEntity_InteractableMP024(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    u32 uData = me->d.uData[4];

    if (gStageData.unk98 == 0) {
        u32 unk56 = gUnknown_03001060.unk56;

        if (unk56 == uData) {
            struct Task *t = TaskCreate(Task_InteractableMP024, sizeof(IA_MP024), 0x2100,
                                        0, TaskDestructor_InteractableMP024);
            IA_MP024 *ia = TASK_DATA(t);
            Sprite *s;

            ia->base.regionX = regionX;
            ia->base.regionY = regionY;
            ia->base.me = me;
            ia->base.spriteX = me->x;
            ia->base.spriteY = id;

            ia->worldX = TO_WORLD_POS(me->x, regionX);
            ia->worldY = TO_WORLD_POS(me->y, regionY);
            ia->unk38 = unk56;

            s = &ia->s;
            s->x = ia->worldX - gCamera.x;
            s->y = ia->worldY - gCamera.y;
            sub_804F314(s);
        }
    }

    SET_MAP_ENTITY_INITIALIZED(me);
}

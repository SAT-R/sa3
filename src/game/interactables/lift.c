#include "global.h"
#include "task.h"
#include "sprite.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s[3];
    /* 0x84 */ s32 worldX;
    /* 0x88 */ s32 worldY;
    /* 0x8C */ u16 unk8C;
    /* 0x8E */ u8 unk8E;
    /* 0x8F */ u8 unk8F;
} Lift; /* 0x90 */

void Task_LiftIdle(void);
void TaskDestructor_Lift(struct Task *t);
void sub_8033098(Sprite *s, Sprite *s2, Sprite *s3);

void CreateEntity_Lift(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_LiftIdle, sizeof(Lift), 0x2100, 0, TaskDestructor_Lift);
    Lift *lift = TASK_DATA(t);
    Sprite *s, *s2, *s3;

    lift->base.regionX = regionX;
    lift->base.regionY = regionY;
    lift->base.me = me;
    lift->base.spriteX = me->x;
    lift->base.id = id;

    lift->unk8C = Q(120);
    lift->unk8E = 0;
    lift->unk8F = 0;

    lift->worldX = TO_WORLD_POS(lift->base.spriteX, lift->base.regionX);
    lift->worldY = TO_WORLD_POS(me->y, lift->base.regionY) - 32;

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_8033098(&lift->s[0], &lift->s[1], &lift->s[2]);
}

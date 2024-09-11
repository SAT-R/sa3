#include "global.h"
#include "task.h"
#include "game/interactables/platform_shared.h"
#include "game/camera.h"
#include "game/camera.h"
#include "game/entity.h"

// TODO: Maybe rename "Platform Spring"?
typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ s32 qWorldX;
    /* 0x10 */ s32 qWorldY;
    /* 0x14 */ s32 qUnk14;
    /* 0x18 */ s32 qUnk18;
    /* 0x1C */ s32 qUnk1C;
    /* 0x20 */ s32 qUnk20;
    /* 0x24 */ s16 somePosX;
    /* 0x26 */ s16 somePosY;
    /* 0x28 */ s16 unk28;
    /* 0x2A */ u8 unk2A;
    /* 0x2B */ u8 unk2B;
    /* 0x2C */ Sprite s;
    /* 0x54 */ u8 filler54[0x8];
    /* 0x5C */ u8 data4_bits67;
    /* 0x5D */ u8 data4_bit5;
} LongFloatingSpring; /* 0x60 */

void Task_LongFloatingSpring(void);
void sub_804C608(Sprite *s, u16 param1);
void TaskDestructor_LongFloatingSpring(struct Task *);

void CreateEntity_LongFloatingSpring(u16 kind, MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_LongFloatingSpring, sizeof(LongFloatingSpring), 0x2100, 0, TaskDestructor_LongFloatingSpring);
    LongFloatingSpring *spring = TASK_DATA(t);
#ifndef NON_MATCHING
    // only needed for matching
    LongFloatingSpring *spring2 = TASK_DATA(t);
#endif
    Sprite *s;
    s32 qWorldX, qWorldY;
    s32 qLeft, qTop, qMiddleX, qMiddleY;
    s16 i;

    spring->base.regionX = regionX;
    spring->base.regionY = regionY;
    spring->base.me = me;
    spring->base.spriteX = me->x;
    spring->base.id = id;
    spring->qWorldX = qWorldX = Q(TO_WORLD_POS(me->x, regionX));
    spring->qWorldY = qWorldY = Q(TO_WORLD_POS(me->y, regionY));

    spring->somePosX = I(spring->qWorldX);
    spring->somePosY = I(spring->qWorldY);
    spring->unk28 = sub_804DC38(kind, I(spring->qWorldX), I(spring->qWorldY), me);
    spring->unk2B = kind;

    qTop = qWorldY + Q(me->d.sData[1] * TILE_WIDTH);
    qMiddleY = Q(me->d.uData[3] * (TILE_WIDTH / 2));
    qLeft = qWorldX + Q(me->d.sData[0] * TILE_WIDTH);
    qMiddleX = Q(me->d.uData[2] * (TILE_WIDTH / 2));

    spring->qUnk14 = qMiddleY;
    spring->qUnk18 = qMiddleX;
    spring->qUnk1C = qLeft + qMiddleX;
    spring->qUnk20 = qTop + qMiddleY;

    for (i = 0; i < 5; i++) {
        if (GetBit(me->d.uData[4], i))
            break;
    }
#ifndef NON_MATCHING
    // only needed for matching
    spring2->unk2A = i + 1;
#else
    spring->unk2A = i + 1;
#endif

    spring->data4_bits67 = (me->d.uData[4] >> 6);
    spring->data4_bit5 = GetBit(me->d.uData[4], 5);
    s = &spring->s;
    s->x = I(qWorldX);
    s->y = I(qWorldY);

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_804C608(s, spring->data4_bit5);
}

#if 01
#endif

#include "global.h"
#include "module_unclear.h"
#include "task.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ s32 qWorldX;
    /* 0x10 */ s32 qWorldY;
    /* 0x14 */ s32 unk14;
    /* 0x18 */ s32 unk18;
    /* 0x1C */ s32 unk1C;
    /* 0x20 */ s32 unk20;
    /* 0x24 */ u8 filler20[0x4];
    /* 0x28 */ u16 unk28;
    /* 0x2A */ u8 unk2A;
    /* 0x2B */ u8 kind;
    /* 0x2C */ Sprite s;
    /* 0x54 */ u8 filler54[4];
} Trampoline;

void Task_Trampoline(void);
void sub_8031A94(Sprite *);
void TaskDestructor_Trampoline(struct Task *);

void CreateTrampoline(u8 kind, MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Trampoline, sizeof(Trampoline), 0x2100, 0, TaskDestructor_Trampoline);
    Trampoline *trampoline = TASK_DATA(t);
    Sprite *s = &trampoline->s;
    s32 qLeft, qTop, qRight, qBottom;
    s32 qWidth, qHeight;
    s32 qWorldX, qWorldY;
    u8 i;

    trampoline->base.regionX = regionX;
    trampoline->base.regionY = regionY;
    trampoline->base.me = me;
    trampoline->base.spriteX = me->x;
    trampoline->base.id = id;
    qWorldX = Q(TO_WORLD_POS(me->x, regionX));
    trampoline->qWorldX = qWorldX;
    qWorldY = Q(TO_WORLD_POS(me->y, regionY));
    trampoline->qWorldY = qWorldY;

    trampoline->unk28 = sub_804DC38(kind, I(qWorldX), I(qWorldY), me);
    trampoline->kind = kind;

    for (i = 0; (i < 6); i++) {
        if ((me->d.uData[4] >> i) & 1)
            break;
    }

    trampoline->unk2A = i + 1;

    qTop = qWorldY + Q(me->d.sData[1] * TILE_WIDTH);
    qHeight = Q(me->d.uData[3] * (TILE_WIDTH / 2));
    qLeft = qWorldX + Q(me->d.sData[0] * TILE_WIDTH);
    qWidth = Q(me->d.uData[2] * (TILE_WIDTH / 2));

    trampoline->unk14 = qHeight;
    trampoline->unk18 = qWidth;
    trampoline->unk1C = qLeft + qWidth;
    trampoline->unk20 = qTop + qHeight;

    s->x = I(trampoline->qWorldX);
    s->y = I(trampoline->qWorldY);
    SET_MAP_ENTITY_INITIALIZED(me);

    sub_8031A94(s);
}

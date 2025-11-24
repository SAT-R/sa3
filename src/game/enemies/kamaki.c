#include "global.h"
#include "core.h"
#include "game/camera.h"
#include "game/entity.h"

typedef struct Kamaki {
    /* 0x00 */ MapEntity *me;
    /* 0x08 */ s8 unk4;
    /* 0x05 */ u8 id;
    /* 0x06 */ u8 meX;
    /* 0x07 */ u8 unk7;
    /* 0x08 */ s8 dir;
    /* 0x0A */ u16 region[2];
    /* 0x0E */ u16 unkE[2];
    /* 0x12 */ s16 unk12;
    /* 0x14 */ s32 unkX;
    /* 0x18 */ s32 unkY;
    /* 0x1C */ Vec2_32 qPos;
    /* 0x24 */ s32 qLeft;
    /* 0x28 */ s32 qRight;
    /* 0x2C */ Sprite2 s;
} Kamaki;

void Task_Kamaki(void);
void sub_80648EC(Kamaki *enemy);
void TaskDestructor_Kamaki(struct Task *t);

void CreateEntity_Kamaki(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Kamaki, sizeof(Kamaki), 0x2100U, 0U, TaskDestructor_Kamaki);
    Kamaki *enemy = TASK_DATA(t);
    enemy->me = me;
    enemy->meX = me->x;
    enemy->id = id;
    enemy->region[0] = regionX;
    enemy->region[1] = regionY;
    enemy->qPos.x = Q(me->x * TILE_WIDTH);
    enemy->qPos.y = Q(me->y * TILE_WIDTH);
    enemy->unkX = enemy->qPos.x;
    enemy->unkY = enemy->qPos.y;
    enemy->qLeft = enemy->unkX + Q(me->d.sData[0] * TILE_WIDTH);
    enemy->qRight = enemy->qLeft + Q(me->d.uData[2] * TILE_WIDTH);
    enemy->unk7 = 0;
    enemy->unkE[0] = 0;
    enemy->unkE[1] = 0;

    if (8 & (u8)me->d.sData[4]) {
        enemy->dir = -1;
    } else {
        enemy->dir = +1;
    }

    if ((me->d.uData[4] & 0x10) >> 4) {
        enemy->unk4 = 1;
    } else {
        enemy->unk4 = 0;
    }

    CpuFill16(0, &enemy->s.hitboxes[1].b, sizeof(enemy->s.hitboxes[1].b));

    sub_80648EC(enemy);

    SET_MAP_ENTITY_INITIALIZED(me);
}

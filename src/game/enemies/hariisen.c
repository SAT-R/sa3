#include "global.h"
#include "core.h"
#include "game/camera.h"
#include "game/entity.h"

#define HSEN_COUNT_A 2
#define HSEN_COUNT_B 4

typedef struct Hariisen {
    /* 0x00 */ MapEntity *me;
    /* 0x04 */ u8 id;
    /* 0x05 */ u8 meX;
    /* 0x06 */ u16 region[2];
    /* 0x10 */ u16 unkA;
    /* 0x10 */ u16 unkC;
    /* 0x10 */ u16 unkE;
    /* 0x10 */ u16 unk10[HSEN_COUNT_A];
    /* 0x14 */ u16 unk14[HSEN_COUNT_B];
    /* 0x1C */ Vec2_32 qUnk1C;
    /* 0x24 */ Vec2_32 qPos;
    /* 0x2C */ Vec2_32 qUnk2C[HSEN_COUNT_A];
    /* 0x3C */ Vec2_32 qUnk3C[HSEN_COUNT_B];
    /* 0x5C */ Sprite2 s;
    /* 0x8C */ Sprite2 s2;
    /* 0xBC */ Sprite2 s3;
} Hariisen; /* 0xEC */

void Task_HariisenMain();
void sub_806132C(Hariisen *enemy);
void TaskDestructor_Hariisen(Task *);

void CreateEntity_Hariisen(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    Hariisen *enemy;
    u8 i;

    enemy = TASK_DATA(TaskCreate(Task_HariisenMain, sizeof(Hariisen), 0x2100U, 0U, TaskDestructor_Hariisen));
    enemy->id = id;
    enemy->me = me;
    enemy->meX = (u8)me->x;
    enemy->region[0] = regionX;
    enemy->region[1] = regionY;
    enemy->qPos.x = Q(me->x * TILE_WIDTH);
    enemy->qPos.y = Q(me->y * TILE_WIDTH);

    for (i = 0; i < HSEN_COUNT_A; i++) {
        enemy->qUnk2C[i].x = 0;
        enemy->qUnk2C[i].y = 0;
        enemy->unk10[i] = 0;
    }

    for (i = 0; i < HSEN_COUNT_B; i++) {
        enemy->qUnk3C[i].x = 0;
        enemy->qUnk3C[i].y = 0;
        enemy->unk14[i] = 0;
    }

    enemy->qUnk1C.x = enemy->qPos.x;
    enemy->qUnk1C.y = enemy->qPos.y;
    enemy->unkA = 0;
    enemy->unkC = 0;
    enemy->unkE = 0;

    CpuFill16(0, &enemy->s.hitboxes[1].b, sizeof(enemy->s.hitboxes[1].b));
    CpuFill16(0, &enemy->s2.hitboxes[1].b, sizeof(enemy->s2.hitboxes[1].b));
    CpuFill16(0, &enemy->s3.hitboxes[1].b, sizeof(enemy->s3.hitboxes[1].b));

    sub_806132C(enemy);

    SET_MAP_ENTITY_INITIALIZED(me);
}

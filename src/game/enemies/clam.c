#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "module_unclear.h"
#include "game/camera.h"
#include "game/enemy_unknown.h"
#include "game/entity.h"
#include "game/stage.h"

typedef struct Clam {
    /* 0x00 */ MapEntity *me;
    /* 0x04 */ u8 unk4;
    /* 0x05 */ u8 id;
    /* 0x06 */ u8 meX;
    /* 0x07 */ s8 unk7;
    /* 0x08 */ s8 unk8;
    /* 0x09 */ s8 direction;
    /* 0x0A */ u16 region[2];
    /* 0x0E */ s16 unkE;
    /* 0x10 */ Vec2_32 qUnk10;
    /* 0x18 */ Vec2_32 qPos;
    /* 0x28 */ Sprite2 s;
} Clam;

void sub_8063FE0(Clam *clam);
void Task_8064074(void);
void TaskDestructor_80646DC(struct Task *t);

void CreateEntity_Clam(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_8064074, sizeof(Clam), 0x2100, 0, TaskDestructor_80646DC);

    Clam *enemy = TASK_DATA(t);
    s32 qX, qY;
    u8 val;

    enemy->id = id;
    enemy->me = me;
    enemy->meX = me->x;
    enemy->region[0] = regionX;
    enemy->region[1] = regionY;

    qX = Q(me->x * TILE_WIDTH);
    enemy->qPos.x = qX;
    qY = Q(me->y * TILE_WIDTH);
    enemy->qPos.y = qY;

    enemy->qUnk10.x = qX;
    enemy->qUnk10.y = qY;

    enemy->unkE = 0;
    enemy->unk7 = 0;
    enemy->unk8 = 0;

    if (me->d.uData[4] & 0x8) {
        enemy->direction = -1;
    } else {
        enemy->direction = +1;
    }

    val = (me->d.uData[4] & 0x10) >> 4;
    if (val) {
        enemy->unk4 = 1;
    } else {
        enemy->unk4 = 0;
    }

    CpuFill16(0, &enemy->s.hitboxes[1].b, sizeof(enemy->s.hitboxes[1].b));

    sub_8063FE0(enemy);

    SET_MAP_ENTITY_INITIALIZED(me);
}

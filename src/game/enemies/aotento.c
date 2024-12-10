#include "global.h"
#include "task.h"
#include "malloc_vram.h"
#include "module_unclear.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/enemy_unknown.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"

typedef struct {
    /* 0x00 */ MapEntity *me;
    /* 0x04 */ u8 id;
    /* 0x05 */ u8 spriteX;
    /* 0x06 */ u8 unk6;
    /* 0x07 */ s8 unk7;
    /* 0x08 */ u8 unk8;
    /* 0x09 */ s8 direction;
    /* 0x0A */ u16 regionX;
    /* 0x0C */ u16 regionY;
    /* 0x0E */ u16 unkE;
    /* 0x10 */ u16 unk10;
    /* 0x14 */ Vec2_32 qUnkC;
    /* 0x1C */ Vec2_32 qPos;
    /* 0x24 */ s32 unk1C;
    /* 0x20 */ s32 unk20;
    /* 0x24 */ Sprite s;
    /* 0x4C */ u8 filler4C[0x4];
    /* 0x50 */ u16 unk50[2]; // TODO: type
} Aotento; /* size: 0x54 */

void Task_Aotento(void);
void sub_8058630(Aotento *);
void TaskDestructor_Aotento(struct Task *t);

void CreateEntity_Aotento(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Aotento, sizeof(Aotento), 0x2100, 0, TaskDestructor_Aotento);
    Aotento *enemy = TASK_DATA(t);
    s32 qX, qY;

    enemy->unkE = 0;
    enemy->unk10 = 0;
    enemy->unk6 = 0;

    enemy->me = me;
    enemy->spriteX = me->x;
    enemy->id = id;
    enemy->regionX = regionX;
    enemy->regionY = regionY;

    qX = Q(me->x * TILE_WIDTH);
    enemy->qPos.x = qX;
    qY = Q(me->y * TILE_WIDTH);
    enemy->qPos.y = qY;

    enemy->qUnkC.x = qX;
    enemy->qUnkC.y = qY;
    enemy->unkE = 90;
    enemy->unk1C = qX + Q(me->d.sData[0] * TILE_WIDTH);
    enemy->unk20 = enemy->unk1C + Q(me->d.uData[2] * TILE_WIDTH);
    enemy->unk8 = 0;

    if (me->d.uData[4] & 0x8) {
        enemy->direction = -1;
    } else {
        enemy->direction = +1;
    }

    CpuFill16(0, &enemy->unk50, sizeof(enemy->unk50));

    sub_8058630(enemy);

    SET_MAP_ENTITY_INITIALIZED(me);
}

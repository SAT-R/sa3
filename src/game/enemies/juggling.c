#include "global.h"
#include "core.h"
#include "game/camera.h"
#include "game/entity.h"

typedef struct Juggling {
    /* 0x00 */ MapEntity *me;
    /* 0x04 */ u8 id;
    /* 0x05 */ u8 meX;
    /* 0x06 */ s8 unk6;
    /* 0x07 */ s8 unk7;
    /* 0x08 */ s8 unk8;
    /* 0x09 */ s8 unk9;
    /* 0x0A */ u16 region[2];
    /* 0x0E */ s16 unkE;
    /* 0x10 */ s16 unk10;
    /* 0x12 */ u8 filler12[0x6];
    /* 0x18 */ s32 unk18;
    /* 0x1C */ s32 unk1C;
    /* 0x20 */ s32 posX;
    /* 0x24 */ s32 posY;
    /* 0x28 */ s32 unk28;
    /* 0x2C */ s32 unk2C;
    /* 0x30 */ s32 unk30;
    /* 0x34 */ s32 unk34;
    /* 0x38 */ u8 filler38[0x4];
    /* 0x3C */ s32 unk3C;
    /* 0x40 */ s32 unk40;
    /* 0x44 */ Sprite2 s;
    /* 0x74 */ Sprite2 s2;
    /* 0xA4 */ Sprite2 s3;
    /* 0xD4 */ s32 unkD4;
    /* 0xD8 */ s32 unkD8;
} Juggling;

void Task_Juggling(void);
void sub_805E344(Juggling *enemy);
void TaskDestructor_Juggling(struct Task *t);

void CreateEntity_Juggling(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    s16 sp4;
    s16 sp8;
    s16 *temp_r0_2;
    s32 temp_r0;
    s32 temp_r1;
    s32 temp_r1_2;
    s8 var_r0;
    struct Task *t;
    Juggling *enemy;

    t = TaskCreate(Task_Juggling, sizeof(Juggling), 0x2100U, 0U, TaskDestructor_Juggling);
    enemy = TASK_DATA(t);
    enemy->me = me;
    enemy->meX = me->x;
    enemy->id = id;
    enemy->region[0] = regionX;
    enemy->region[1] = regionY;
    enemy->posX = Q(me->x * TILE_WIDTH);
    enemy->posY = Q(me->y * TILE_WIDTH);
    enemy->unk28 = 0;
    enemy->unk2C = 0;
    enemy->unk30 = 0;
    enemy->unk34 = 0;
    enemy->unk18 = enemy->posX;
    enemy->unk1C = enemy->posY;
    enemy->unk3C = enemy->posX + Q(me->d.sData[0] * TILE_WIDTH);
    enemy->unk40 = enemy->unk3C + Q(me->d.uData[2] * TILE_WIDTH);
    enemy->unkE = 0;
    enemy->unk10 = 0x800;
    enemy->unk6 = 0;
    enemy->unk7 = 0;
    enemy->unk8 = 0;
    enemy->unkD4 = 0;
    enemy->unkD8 = 0;

    if (8 & (u8)me->d.sData[4]) {
        enemy->unk9 = -1;
    } else {
        enemy->unk9 = +1;
    }

    CpuFill16(0, &enemy->s.hitboxes[1].b, sizeof(enemy->s.hitboxes[1].b));
    CpuFill16(0, &enemy->s2.hitboxes[1].b, sizeof(enemy->s.hitboxes[1].b));
    CpuFill16(0, &enemy->s3.hitboxes[1].b, sizeof(enemy->s.hitboxes[1].b));

    sub_805E344(enemy);

    SET_MAP_ENTITY_INITIALIZED(me);
}

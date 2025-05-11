#include "global.h"
#include "sprite.h"
#include "task.h"
#include "malloc_vram.h"
#include "constants/zones.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/enemy_unknown.h"
#include "module_unclear.h"
#include "game/player.h"
#include "game/stage.h"

typedef struct {
    /* 0x00 */ MapEntity *me;
    /* 0x04 */ u8 id;
    /* 0x05 */ u8 spriteX;
    /* 0x06 */ u8 unk6;
    /* 0x07 */ s8 direction;
    /* 0x08 */ u16 region[2];
    /* 0x0C */ u16 unkC;
    /* 0x10 */ s32 unk10;
    /* 0x14 */ s32 unk14;
    /* 0x18 */ Vec2_32 qUnk18;
    /* 0x20 */ Vec2_32 qPos;
    /* 0x28 */ u32 unk28;
    /* 0x2C */ s32 unk2C;
    /* 0x30 */ s32 unk30;
    /* 0x34 */ s32 unk34;
    /* 0x38 */ s32 unk38;
    /* 0x3C */ s32 unk3C;
    /* 0x40 */ s32 unk40;
    /* 0x44 */ s32 unk44;
    /* 0x48 */ s32 unk48;
    /* 0x4C */ s32 unk4C;
    /* 0x50 */ SpriteTransform transform;
    /* 0x5A */ Sprite s;
    /* 0x82 */ Hitbox reserved;
} Kyacchaa; /* size: 0x8C */

void Task_Kyacchaa(void);
void TaskDestructor_Kyacchaa(struct Task *t);
void sub_806599C(Kyacchaa *enemy); // TODO: Rename it to InitSprite

// https://decomp.me/scratch/Bfjhv
void CreateEntity_Kyacchaa(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Kyacchaa, sizeof(Kyacchaa), 0x2100, 0, TaskDestructor_Kyacchaa);

    Kyacchaa *enemy = TASK_DATA(t);
    s32 qX, qY;

    enemy->me = me;
    enemy->spriteX = me->x;
    enemy->id = id;

    enemy->unkC = 0;
    enemy->region[0] = regionX;
    enemy->region[1] = regionY;

    qX = Q(me->x * TILE_WIDTH);
    enemy->qPos.x = qX;
    qY = Q(me->y * TILE_WIDTH);
    enemy->qPos.y = qY;

    enemy->qUnk18.x = qX;
    enemy->qUnk18.y = qY;

    enemy->unk10 = 0;
    enemy->unk14 = 0;

    enemy->unk30 = qX + Q(me->d.sData[0] * TILE_WIDTH);
    enemy->unk2C = enemy->unk30 + Q(me->d.uData[2] * TILE_WIDTH);

    enemy->unk6 = 0;

    if (me->d.uData[4] & 0x8) {
        enemy->direction = -1;
    } else {
        enemy->direction = +1;
    }

    CpuFill16(0, &enemy->s.hitboxes[1].b.left, sizeof(enemy->s.hitboxes[1].b));

    sub_806599C(enemy);

    SET_MAP_ENTITY_INITIALIZED(me);
}

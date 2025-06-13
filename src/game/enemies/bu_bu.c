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
    /* 0x07 */ u8 unk7;
    /* 0x08 */ u8 unk8;
    /* 0x09 */ s8 direction;
    /* 0x0A */ u16 region[2];
    /* 0x0E */ u16 unkE;
    /* 0x10 */ u16 unk10;
    /* 0x12 */ u16 unk12;
    /* 0x14 */ Vec2_32 qUnk14;
    /* 0x1C */ Vec2_32 qPos;
    /* 0x24 */ Vec2_32 qUnk24;
    /* 0x2C */ s32 unk33;
    /* 0x30 */ s32 unk35;
    /* 0x34 */ Sprite s;
} BuBu /* size: 0x5C */;

void sub_805ED48(void);
void sub_805F2AC(struct Task *t);
void sub_805ECC4(BuBu *enemy);

void CreateEntity_BuBu(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(sub_805ED48, sizeof(BuBu), 0x2100, 0, sub_805F2AC);

    BuBu *enemy = TASK_DATA(t);
    s32 qX, qY, offsetX, offsetY;

    enemy->unkE = 0;
    enemy->unk10 = 0;
    enemy->unk6 = 0;
    enemy->me = me;
    enemy->spriteX = me->x;
    enemy->id = id;
    enemy->region[0] = regionX;
    enemy->region[1] = regionY;

    qX = Q(me->x * TILE_WIDTH);
    enemy->qPos.x = qX;
    qY = Q(me->y * TILE_WIDTH);
    enemy->qPos.y = qY;

    enemy->qUnk14.x = qX;
    enemy->qUnk14.y = qY;

    enemy->unkE = 0x5A;

    offsetX = Q(me->d.sData[0] * TILE_WIDTH);
    enemy->qUnk24.x = qX + offsetX;

    offsetY = Q(me->d.uData[2] * TILE_WIDTH);
    enemy->qUnk24.y = enemy->qUnk24.x + offsetY;

    enemy->unk8 = 0;

    if (me->d.uData[4] & 0x8) {
        enemy->direction = -1;
    } else {
        enemy->direction = +1;
    }

    CpuFill16(0, &enemy->s.hitboxes[0].b.left, sizeof(enemy->s.hitboxes[1].b));

    sub_805ECC4(enemy);

    SET_MAP_ENTITY_INITIALIZED(me);
}

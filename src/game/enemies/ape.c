#include "global.h"
#include "trig.h"
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
    /* 0x07 */ s8 direction;
    /* 0x08 */ u16 unk8;
    /* 0x0A */ u16 region[2];
    /* 0x0E */ u16 unkE;
    u8 filler10[4];
    /* 0x14 */ Vec2_32 qUnk14;
    /* 0x1C */ Vec2_32 qPos;
    /* 0x24 */ Sprite s;
    /* 0x4C */ Sprite s2;
    /* 0x54 */ Hitbox reserved;
} Ape; /* size: 0x7C */

typedef struct {
    /* 0x00 */ u16 region[2];
    /* 0x04 */ u16 theta;
    u8 filler4[0x2];
    /* 0x08 */ Vec2_32 qUnk8;
    /* 0x10 */ Vec2_32 qPos;
    /* 0x18 */ Sprite s;
    /* 0x40 */ Hitbox reserved;
} ApeProjectile; /* size: 0x48 */

void Task_ApeMain(void);
void sub_805A674(Ape *);
void TaskDestructor_Ape(struct Task *t);

extern const TileInfo2 gUnknown_080D1EAC[6]; // Buzzer
extern const TileInfo2 gUnknown_080D1EC4[2]; // proj

#define isBetween(v, min, onePastMax) (((v) >= (min)) && ((v) < onePastMax))

void CreateEntity_Ape_0(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_ApeMain, sizeof(Ape), 0x2100, 0, TaskDestructor_Ape);
    Ape *enemy = TASK_DATA(t);
    s32 qX, qY;

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
    enemy->unk8 = 0xC0;
    enemy->unkE = 22;
    enemy->unk6 = 0;

    CpuFill16(0, &enemy->reserved.b, sizeof(enemy->reserved.b));
    CpuFill16(0, &enemy->s2.hitboxes[0].b, sizeof(enemy->s2.hitboxes[0].b));
    CpuFill16(0, &enemy->s.hitboxes[0].b, sizeof(enemy->s.hitboxes[0].b));

    sub_805A674(enemy);

    SET_MAP_ENTITY_INITIALIZED(me);
}

void CreateEntity_Ape_1(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_ApeMain, sizeof(Ape), 0x2100, 0, TaskDestructor_Ape);
    Ape *enemy = TASK_DATA(t);
    s32 qX, qY;

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
    enemy->unk8 = 0x40;
    enemy->unkE = 22;
    enemy->unk6 = 0;

    CpuFill16(0, &enemy->reserved.b, sizeof(enemy->reserved.b));
    CpuFill16(0, &enemy->s2.hitboxes[0].b, sizeof(enemy->s2.hitboxes[0].b));
    CpuFill16(0, &enemy->s.hitboxes[0].b, sizeof(enemy->s.hitboxes[0].b));

    sub_805A674(enemy);

    SET_MAP_ENTITY_INITIALIZED(me);
}

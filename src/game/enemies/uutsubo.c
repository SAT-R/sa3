#include "global.h"
#include "core.h"
#include "game/camera.h"
#include "game/entity.h"

#define NUM_BODY_SEGMENTS 5

typedef struct Uutsubo {
    /* 0x00 */ MapEntity *me;
    /* 0x04 */ u8 id;
    /* 0x05 */ u8 meX;
    /* 0x06 */ u8 filler6[2];
    /* 0x08 */ s16 unk8[NUM_BODY_SEGMENTS];
    /* 0x12 */ u16 region[2];
    /* 0x12 */ u16 unk16[2];
    /* 0x1A */ s16 unk1A[NUM_BODY_SEGMENTS];
    /* 0x24 */ u16 unk24;
    /* 0x26 */ u8 filler26[0xA];
    /* 0x30 */ Vec2_32 qBodyPositions[NUM_BODY_SEGMENTS];
    /* 0x58 */ Vec2_32 qHeadPos;
    /* 0x60 */ Vec2_32 qPos;
    /* 0x68 */ u16 unk68;
    /* 0x6A */ u8 filler6A[0xA];
    /* 0x74 */ Sprite2 s;
    /* 0xA4 */ Sprite2 s2;
} Uutsubo; /* 0xD4 */

void CreateEntity_Uutsubo_0(MapEntity *me, u16 regionX, u16 regionY, u8 id);
void CreateEntity_Uutsubo_1(MapEntity *me, u16 regionX, u16 regionY, u8 id);
void CreateEntity_Uutsubo_2(MapEntity *me, u16 regionX, u16 regionY, u8 id);
void CreateEntity_Uutsubo_3(MapEntity *me, u16 regionX, u16 regionY, u8 id);
void CreateEntity_Uutsubo_Shared(Uutsubo *enemy, MapEntity *me, u16 regionX, u16 regionY, u8 id);

void CreateEntity_Uutsubo_Shared(Uutsubo *enemy, MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    u8 i;

    enemy->me = me;
    enemy->meX = me->x;
    enemy->id = id;
    enemy->region[0] = regionX;
    enemy->region[1] = regionY;
    enemy->qPos.x = Q(me->x * TILE_WIDTH);
    enemy->qPos.y = Q(me->y * TILE_WIDTH);
    enemy->qHeadPos.x = enemy->qPos.x;
    enemy->qHeadPos.y = enemy->qPos.y;
    enemy->unk16[0] = 0;
    enemy->unk16[1] = 0;
    enemy->unk24 = 0;
    enemy->unk68 = 0;

    for (i = 0; i < NUM_BODY_SEGMENTS; i++) {
        enemy->qBodyPositions[i].x = enemy->qHeadPos.x;
        enemy->qBodyPositions[i].y = enemy->qHeadPos.y;
        enemy->unk1A[i] = 0;
        enemy->unk8[i] = 0;
    }

    CpuFill16(0, &enemy->s.hitboxes[1].b, sizeof(enemy->s.hitboxes[1].b));
    CpuFill16(0, &enemy->s2.hitboxes[1].b, sizeof(enemy->s.hitboxes[1].b));

    CpuFill16(0, &enemy->s.hitboxes[0].b, sizeof(enemy->s.hitboxes[1].b));
    CpuFill16(0, &enemy->s2.hitboxes[0].b, sizeof(enemy->s.hitboxes[1].b));
}

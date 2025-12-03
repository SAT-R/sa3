#include "global.h"
#include "core.h"
#include "game/camera.h"
#include "game/entity.h"

typedef struct Muukaden {
    /* 0x00 */ MapEntity *me;
    /* 0x04 */ u8 id;
    /* 0x05 */ u8 meX;
    /* 0x06 */ u8 unk6;
    /* 0x07 */ u8 unk7;
    /* 0x08 */ s8 dir;
    /* 0x07 */ s16 unkA[5];
    /* 0x14 */ u16 region[2];
    /* 0x18 */ u16 unk18;
    /* 0x1A */ u16 unk1A;
    /* 0x1C */ u8 filler1C[0x8];
    /* 0x24 */ s32 qLeft;
    /* 0x28 */ s32 qRight;
    /* 0x2C */ Vec2_32 qUnk2C;
    /* 0x34 */ s32 qTop;
    /* 0x38 */ s32 qBottom;
    /* 0x3C */ Vec2_32 qUnk3C[4];
    /* 0x5C */ Vec2_32 qUnk5C;
    /* 0x64 */ Vec2_32 qPos;
    /* 0x6C */ u16 unk6C;
    /* 0x70 */ Sprite2 sprites[5];
} Muukaden; /* 0x168 */

// (99.52%) https://decomp.me/scratch/sVUYZ
NONMATCH("asm/non_matching/game/enemies/muukaden__CreateMuukaden.inc",
         void CreateMuukaden(Muukaden *enemy, MapEntity *me, u16 regionX, u16 regionY, u8 id))
{
    u8 i;

    enemy->me = me;
    enemy->meX = me->x;
    enemy->id = id;
    enemy->region[0] = regionX;
    enemy->region[1] = regionY;
    enemy->qPos.x = Q(me->x * TILE_WIDTH);
    enemy->qPos.y = Q(me->y * TILE_WIDTH);
    enemy->qUnk5C.x = enemy->qPos.x;
    enemy->qUnk5C.y = enemy->qPos.y;
    enemy->unk18 = 0;
    enemy->unk1A = 0;
    enemy->unk7 = 0;
    enemy->unk6C = 0;
    enemy->qLeft = enemy->qUnk5C.x + Q(me->d.sData[0] * TILE_WIDTH);
    enemy->qRight = enemy->qLeft + Q(me->d.uData[2] * TILE_WIDTH);
    enemy->qTop = enemy->qUnk5C.y + Q(me->d.sData[1] * TILE_WIDTH);
    enemy->qBottom = enemy->qTop + Q(me->d.uData[3] * TILE_WIDTH);
    enemy->qUnk2C.x = Q(me->d.uData[2] * TILE_WIDTH);
    enemy->qUnk2C.y = Q(me->d.uData[3] * TILE_WIDTH);

    if (8 & me->d.uData[4]) {
        enemy->dir = -1;
    } else {
        enemy->dir = +1;
    }

    for (i = 0; i < 4; i++) {
        enemy->qUnk3C[i].x = enemy->qUnk5C.x;
        enemy->qUnk3C[i].y = enemy->qUnk5C.y;
        enemy->unkA[i] = 0;
    }
    enemy->unkA[i] = 0;

    CpuFill16(0, &enemy->sprites[0].hitboxes[2].b, sizeof(enemy->sprites[0].hitboxes[2].b));
    CpuFill16(0, &enemy->sprites[1].hitboxes[2].b, sizeof(enemy->sprites[1].hitboxes[2].b));
    CpuFill16(0, &enemy->sprites[2].hitboxes[2].b, sizeof(enemy->sprites[2].hitboxes[2].b));
    CpuFill16(0, &enemy->sprites[3].hitboxes[2].b, sizeof(enemy->sprites[3].hitboxes[2].b));
    CpuFill16(0, &enemy->sprites[4].hitboxes[2].b, sizeof(enemy->sprites[4].hitboxes[2].b));

    CpuFill16(0, &enemy->sprites[0].hitboxes[1].b, sizeof(enemy->sprites[0].hitboxes[1].b));
    CpuFill16(0, &enemy->sprites[1].hitboxes[1].b, sizeof(enemy->sprites[1].hitboxes[1].b));
    CpuFill16(0, &enemy->sprites[2].hitboxes[1].b, sizeof(enemy->sprites[2].hitboxes[1].b));
    CpuFill16(0, &enemy->sprites[3].hitboxes[1].b, sizeof(enemy->sprites[3].hitboxes[1].b));
    CpuFill16(0, &enemy->sprites[4].hitboxes[1].b, sizeof(enemy->sprites[4].hitboxes[1].b));
}
END_NONMATCH

#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/stage.h"

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
    /* 0x6W */ u8 filler6E[0xA];
    /* 0x78 */ Sprite2 sprites[5];
} Muukaden; /* 0x168 */

void sub_8063514(Sprite2 *s, u16 *arg1, s32 arg2, u8 arg3);

extern TileInfo2 gUnknown_080D20C4[9];

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

void sub_8062800(Muukaden *enemy, u8 type)
{
    u16 *unk6C;
    Sprite2 *s;
    u8 *vram;
    u8 timer;

    unk6C = &enemy->unk6C;
    timer = gStageData.timer & 7;
    vram = VramMalloc(0x40U);
    s = &enemy->sprites[1];
    s->tiles = vram;
    vram += (gUnknown_080D20C4[1].numTiles * TILE_SIZE_4BPP);
    s->anim = gUnknown_080D20C4[1].anim;
    s->variant = gUnknown_080D20C4[1].variant;
    s->prevVariant = 0xFF;
    s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region[1]) - gCamera.y;
    s->oamFlags = 0x480;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    sub_8063514(s, unk6C, type, timer);
    UpdateSpriteAnimation((Sprite *)s);

    s = &enemy->sprites[0];
    enemy->sprites[0].tiles = vram;
    vram += (gUnknown_080D20C4->numTiles * TILE_SIZE_4BPP);
    s->anim = gUnknown_080D20C4->anim;
    s->variant = gUnknown_080D20C4->variant;
    s->prevVariant = -1;
    s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region[1]) - gCamera.y;
    s->oamFlags = 0x480;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    sub_8063514(s, unk6C, type, timer);
    UpdateSpriteAnimation((Sprite *)s);

    s = &enemy->sprites[2];
    s->tiles = vram;
    vram += (gUnknown_080D20C4[2].numTiles * TILE_SIZE_4BPP);
    s->anim = gUnknown_080D20C4[2].anim;
    s->variant = gUnknown_080D20C4[2].variant;
    s->prevVariant = -1;
    s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region[1]) - gCamera.y;
    s->oamFlags = 0x480;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    sub_8063514(s, unk6C, type, timer);
    UpdateSpriteAnimation((Sprite *)s);

    s = &enemy->sprites[3];
    s->tiles = vram;
    vram += 8 * TILE_SIZE_4BPP;
    if (type == 0) {
        s->anim = gUnknown_080D20C4[5].anim;
        s->variant = gUnknown_080D20C4[5].variant;
    } else {
        s->anim = gUnknown_080D20C4[8].anim;
        s->variant = gUnknown_080D20C4[8].variant;
    }
    s->prevVariant = -1;
    s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region[1]) - gCamera.y;
    s->oamFlags = 0x480;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x1000;
    UpdateSpriteAnimation((Sprite *)s);

    s = &enemy->sprites[4];
    s->tiles = vram;
    if (type == 0) {
        s->anim = gUnknown_080D20C4[5].anim;
        s->variant = gUnknown_080D20C4[5].variant;
    } else {
        s->anim = gUnknown_080D20C4[8].anim;
        s->variant = gUnknown_080D20C4[8].variant;
    }
    s->prevVariant = -1;
    s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region[1]) - gCamera.y;
    s->oamFlags = 0x480;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x1000;
    UpdateSpriteAnimation((Sprite *)s);
}

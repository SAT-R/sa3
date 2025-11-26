#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "game/camera.h"
#include "game/entity.h"

#define NUM_BODY_SEGMENTS 5
typedef enum UutsuboType {
    UUTYPE_A,
    UUTYPE_B,
    UUTYPE_C,
    UUTYPE_D,
} UutsuboType;

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
    /* 0x68 */ SpriteTransform tf;
    /* 0x74 */ Sprite2 s;
    /* 0xA4 */ Sprite2 s2;
} Uutsubo; /* 0xD4 */

void CreateEntity_Uutsubo_0(MapEntity *me, u16 regionX, u16 regionY, u8 id);
void CreateEntity_Uutsubo_1(MapEntity *me, u16 regionX, u16 regionY, u8 id);
void CreateEntity_Uutsubo_2(MapEntity *me, u16 regionX, u16 regionY, u8 id);
void CreateEntity_Uutsubo_3(MapEntity *me, u16 regionX, u16 regionY, u8 id);
void CreateEntity_Uutsubo_Shared(Uutsubo *enemy, MapEntity *me, u16 regionX, u16 regionY, u8 id);

void sub_805D188(Uutsubo *enemy, u8 type);
void sub_805D298(Sprite2 *arg0, SpriteTransform *tf, u8 type);

extern const TileInfo2 gUnknown_080D1F4C[2];

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
    enemy->tf.rotation = 0;

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

void sub_805D188(Uutsubo *enemy, u8 type)
{
    SpriteTransform *tf;
    Uutsubo *sp4;
    Sprite2 *s;
    u8 *vram;

    tf = &enemy->tf;
    vram = VramMalloc(0x20U);
    s = &enemy->s2;
    s->tiles = vram;
    vram += (gUnknown_080D1F4C[1].numTiles * TILE_SIZE_4BPP);
    s->anim = gUnknown_080D1F4C[1].anim;
    s->variant = gUnknown_080D1F4C[1].variant;
    s->prevVariant = -1;
    s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region[1]) - gCamera.y;
    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = -1;
    sub_805D298(s, tf, type);
    UpdateSpriteAnimation((Sprite *)s);

    s = &enemy->s;
    enemy->s.tiles = vram;
    s->anim = gUnknown_080D1F4C[0].anim;
    s->variant = gUnknown_080D1F4C[0].variant;
    s->prevVariant = -1;
    s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region[1]) - gCamera.y;
    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = -1;
    sub_805D298(s, tf, type);
    UpdateSpriteAnimation((Sprite *)s);
}

void sub_805D298(Sprite2 *s, SpriteTransform *tf, u8 type)
{
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);

    switch (type) {
        case 1:
            s->frameFlags |= SPRITE_FLAG(PRIORITY, 1);
            s->frameFlags |= 0x400;
            break;
        case 2:
            s->frameFlags |= (0xA | SPRITE_FLAG_MASK_ROT_SCALE_ENABLE | SPRITE_FLAG_MASK_ROT_SCALE_DOUBLE_SIZE);
            s->frameFlags |= SPRITE_FLAG(PRIORITY, 1);
            tf->rotation = 0x100;
            tf->x = s->x;
            tf->y = s->y;
            tf->qScaleX = Q(1);
            tf->qScaleY = Q(1);
            TransformSprite((Sprite *)s, (SpriteTransform *)tf);
            break;
        case 3:
            s->frameFlags |= (0xB | SPRITE_FLAG_MASK_ROT_SCALE_ENABLE | SPRITE_FLAG_MASK_ROT_SCALE_DOUBLE_SIZE);
            s->frameFlags |= SPRITE_FLAG(PRIORITY, 1);
            tf->rotation = 0x300;
            tf->x = s->x;
            tf->y = s->y;
            tf->qScaleX = Q(1);
            tf->qScaleY = Q(1);
            TransformSprite((Sprite *)s, (SpriteTransform *)tf);
            break;
    }
}

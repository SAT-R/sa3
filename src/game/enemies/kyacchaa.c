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
    /* 0x34 */ Sprite s;
    /* 0x5C */ Sprite s2;
    /* 0x84 */ Hitbox reserved;
} Kyacchaa; /* size: 0x8C */

extern const TileInfo2 gUnknown_080D2198[];

void Task_Kyacchaa(void);
void TaskDestructor_Kyacchaa(struct Task *t);
void InitSprite_Kyacchaa(Kyacchaa *enemy);

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

    CpuFill16(0, &enemy->s2.hitboxes[1].b.left, sizeof(enemy->s2.hitboxes[1].b));

    InitSprite_Kyacchaa(enemy);

    SET_MAP_ENTITY_INITIALIZED(me);
}

// https://decomp.me/scratch/TBjJ3
void InitSprite_Kyacchaa(Kyacchaa *enemy)
{
    void *tiles = VramMalloc(0x15);
    Sprite *s;
    void *secondaryTiles;

    // Initialize the second sprite (s2)
    s = &enemy->s2;
    s->tiles = tiles;

    secondaryTiles = tiles + (gUnknown_080D2198[0].numTiles << 5);

    s->anim = gUnknown_080D2198[0].anim;
    s->variant = gUnknown_080D2198[0].variant;
    s->prevVariant = -1;

    s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region[1]) - gCamera.y;

    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);

    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;

    UpdateSpriteAnimation(s);

    // Initialize the first sprite (s)
    s = &enemy->s;
    s->tiles = secondaryTiles;

    s->anim = gUnknown_080D2198[3].anim;
    s->variant = gUnknown_080D2198[3].variant;
    s->prevVariant = -1;

    s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region[1]) - gCamera.y;

    s->oamFlags = SPRITE_OAM_ORDER(19);
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);

    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;

    UpdateSpriteAnimation(s);
}

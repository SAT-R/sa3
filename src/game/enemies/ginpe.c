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
    /* 0x07 */ s8 unk7;
    /* 0x08 */ s8 direction;
    /* 0x0A */ u16 region[2];
    /* 0x0E */ s16 unkE;
    /* 0x10 */ Vec2_32 qUnk10;
    /* 0x18 */ Vec2_32 qPos;
    /* 0x20 */ s32 qLeft;
    /* 0x24 */ s32 qRight;
    /* 0x28 */ Sprite s;
    /* 0x50 */ Hitbox reserved; // TODO: Check type!
} Ginpe; /* size: 0x58 */

typedef struct {
    /* 0x00 */ u16 qUnk0;
    /* 0x02 */ u16 region[2];
    /* 0x06 */ u16 unk6;
    /* 0x08 */ u16 unk8;
    /* 0x04 */ Vec2_32 qPos;
    /* 0x0C */ Sprite s;
    /* 0x34 */ Hitbox reserved;
} GinpeProjectile; /* size: 0x44 */

extern const TileInfo2 gUnknown_080D1F2C[4]; // Jousun

void Task_Ginpe(void);
void sub_805FE40(void);
void sub_805FFEC(Ginpe *enemy);
AnimCmdResult sub_8060088(Ginpe *enemy);
bool32 sub_80600F8(Ginpe *enemy);
void sub_8060384(Ginpe *enemy);
void sub_805FEE0(GinpeProjectile *proj);
static bool32 CheckPlayerCollision(Ginpe *enemy);
static bool32 UpdateProjectilePos(GinpeProjectile *proj);
static AnimCmdResult DisplayProjectile(GinpeProjectile *proj);
bool32 sub_806027C(GinpeProjectile *proj);
void TaskDestructor_Ginpe(struct Task *t);
void CreateGinpeProjectile(s32 qPosX, s32 qPosY, u16 regionX, u16 regionY);
void Task_GinpeProjectileInit(void);
void TaskDestructor_GinpeProjectile(struct Task *t);

extern const TileInfo2 gUnknown_080D2004[4]; // Ginpe
extern const TileInfo2 gUnknown_080D2014[4]; // proj
extern const u8 gUnknown_080D1FF8[12];

#define isBetween(v, min, onePastMax) (((v) >= (min)) && ((v) < onePastMax))

void CreateEntity_Ginpe(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Ginpe, sizeof(Ginpe), 0x2100, 0, TaskDestructor_Ginpe);

    Ginpe *enemy = TASK_DATA(t);
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

    enemy->qUnk10.x = qX;
    enemy->qUnk10.y = qY;

    enemy->qLeft = qX + Q(me->d.sData[0] * TILE_WIDTH);
    enemy->qRight = enemy->qLeft + Q(me->d.uData[2] * TILE_WIDTH);

    enemy->unk6 = 0;

    if (me->d.uData[4] & 0x8) {
        enemy->direction = -1;
    } else {
        enemy->direction = +1;
    }

    enemy->unk7 = 0;

    CpuFill16(0, &enemy->reserved.b, sizeof(enemy->reserved.b));

    sub_8060384(enemy);

    SET_MAP_ENTITY_INITIALIZED(me);
}

void sub_8060384(Ginpe *enemy)
{
    void *tiles = ALLOC_TILES(ANIM_GINPE);
    Sprite *s = &enemy->s;
    s->tiles = tiles;

    s->anim = gUnknown_080D2004[0].anim;
    s->variant = gUnknown_080D2004[0].variant;
    s->prevVariant = -1;
    s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region[1]) - gCamera.y;
    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);

    if (enemy->direction < 0) {
        s->frameFlags |= SPRITE_FLAG_MASK_X_FLIP;
    }

    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;

    UpdateSpriteAnimation(s);
}

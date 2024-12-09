#include "global.h"
#include "task.h"
#include "malloc_vram.h"
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
    /* 0x08 */ Vec2_u16 region;
    /* 0x0C */ Vec2_32 qUnkC;
    /* 0x14 */ Vec2_32 qPos;
    /* 0x1C */ s32 unk1C;
    /* 0x20 */ s32 unk20;
    /* 0x24 */ Sprite s;
    /* 0x4C */ u8 filler4C[0x4];
    /* 0x50 */ u16 unk50[2]; // TODO: type
} Takkon; /* size: 0x54 */

typedef struct {
    /* 0x00 */ Vec2_u16 region;
    /* 0x04 */ Vec2_32 qPos;
    /* 0x24 */ Sprite s;
} TakkonProjectile; /* size: 0x3C */

void Task_Takkon(void);
void sub_805B3AC(Takkon *enemy);
void Task_805B4E4(void);
void sub_805B738(Takkon *enemy);
AnimCmdResult sub_805B77C(Takkon *enemy);
bool32 sub_805B7C0(Takkon *enemy);
bool32 sub_805B844(Takkon *enemy);
void TaskDestructor_Takkon(struct Task *t);
void CreateTakkonProjectile(s32 param0, s32 param1, u16 param2, u16 param3);

extern TileInfo2 gUnknown_080D1F0C[4]; // Takkon
extern TileInfo2 gUnknown_080D1F1C[4]; // Projectile

void CreateEntity_Takkon(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Takkon, sizeof(Takkon), 0x2100, 0, TaskDestructor_Takkon);
    Takkon *enemy = TASK_DATA(t);
    s32 qX, qY;

    enemy->me = me;
    enemy->spriteX = me->x;
    enemy->id = id;
    enemy->region.x = regionX;
    enemy->region.y = regionY;

    qX = Q(me->x * TILE_WIDTH);
    enemy->qPos.x = qX;
    qY = Q(me->y * TILE_WIDTH);
    enemy->qPos.y = qY;

    enemy->qUnkC.x = qX;
    enemy->qUnkC.y = qY;
    enemy->unk1C = qX + Q(me->d.sData[0] * TILE_WIDTH);
    enemy->unk20 = enemy->unk1C + Q(me->d.uData[2] * TILE_WIDTH);

    if (me->d.uData[4] & 0x8) {
        enemy->direction = -1;
    } else {
        enemy->direction = +1;
    }

    CpuFill16(0, &enemy->unk50, sizeof(enemy->unk50));

    sub_805B3AC(enemy);

    SET_MAP_ENTITY_INITIALIZED(me);
}

void sub_805B3AC(Takkon *enemy)
{
    void *tiles = ALLOC_TILES(ANIM_TAKKON);
    Sprite *s = &enemy->s;
    s->tiles = tiles;

    s->anim = gUnknown_080D1F0C[0].anim;
    s->variant = gUnknown_080D1F0C[0].variant;
    s->prevVariant = -1;
    s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region.x) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region.y) - gCamera.y;
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

void Task_Takkon(void)
{
    Takkon *enemy = TASK_DATA(gCurTask);

    if (sub_805B844(enemy) == TRUE) {
        TaskDestroy(gCurTask);
        return;
    }

    sub_805B77C(enemy);

    if ((gStageData.unk4 != 1) && (gStageData.unk4 != 2) && (gStageData.unk4 != 4)) {
        sub_805B738(enemy);

        if ((sub_805B7C0(enemy) == TRUE) && (enemy->unk6 == 0)) {
            Sprite *s = &enemy->s;
            s->anim = gUnknown_080D1F0C[1].anim;
            s->variant = gUnknown_080D1F0C[1].variant;
            gCurTask->main = Task_805B4E4;
            return;
        }
    }

    if ((enemy->qPos.x <= enemy->unk1C) || (enemy->qPos.x >= enemy->unk20)) {
        Sprite *s = &enemy->s;

        if (s->frameFlags & SPRITE_FLAG_MASK_X_FLIP) {
            s->frameFlags &= ~SPRITE_FLAG_MASK_X_FLIP;
        } else {
            s->frameFlags |= SPRITE_FLAG_MASK_X_FLIP;
        }

        enemy->unk6 = 0;
    }
}

void Task_805B4E4(void)
{
    Takkon *enemy = TASK_DATA(gCurTask);

    AnimCmdResult acmdRes = sub_805B77C(enemy);

    if (sub_805B844(enemy) == TRUE) {
        TaskDestroy(gCurTask);
        return;
    }

    if ((gStageData.unk4 != 1) && (gStageData.unk4 != 2) && (gStageData.unk4 != 4) && acmdRes == ACMD_RESULT__ENDED) {
        Sprite *s = &enemy->s;
        s->anim = gUnknown_080D1F0C[0].anim;
        s->variant = gUnknown_080D1F0C[0].variant;

        enemy->unk6 = 1;

        CreateTakkonProjectile(enemy->qPos.x, enemy->qPos.y + Q(5), enemy->region.x, enemy->region.y);

        gCurTask->main = Task_Takkon;
    }
}

void sub_805B568(TakkonProjectile *projectile)
{
    void *tiles = VramMalloc(MAX_TILES_VARIANT(ANIM_TAKKON_PROJ, 0) + MAX_TILES_VARIANT(ANIM_TAKKON_PROJ, 4));
    Sprite *s = &projectile->s;
    s->tiles = tiles;

    s->anim = gUnknown_080D1F1C[0].anim;
    s->variant = gUnknown_080D1F1C[0].variant;
    s->prevVariant = -1;
    s->x = I(projectile->qPos.x) - gCamera.x;
    s->y = I(projectile->qPos.y) - gCamera.y;
    s->oamFlags = SPRITE_OAM_ORDER(19);
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 2);

    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;

    UpdateSpriteAnimation(s);
}

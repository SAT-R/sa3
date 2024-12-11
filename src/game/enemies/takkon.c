#include "global.h"
#include "task.h"
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
    /* 0x0C */ Sprite s;
    /* 0x34 */ Hitbox reserved;
} TakkonProjectile; /* size: 0x3C */

s32 sub_8052394(s32 worldX, s32 worldY, s32 param2, s32 param3, void *param4, void *callback);

void Task_Takkon(void);
void sub_805B3AC(Takkon *enemy);
void Task_805B4E4(void);
bool32 sub_805B670(TakkonProjectile *proj);
void sub_805B738(Takkon *enemy);
AnimCmdResult sub_805B77C(Takkon *enemy);
bool32 sub_805B7C0(Takkon *enemy);
bool32 sub_805B844(Takkon *enemy);
void Task_Proj_805B8EC(void);
static void UpdateProjectilePos(TakkonProjectile *proj);
AnimCmdResult sub_Proj_805B928(TakkonProjectile *proj);
void TaskDestructor_Takkon(struct Task *t);
void CreateTakkonProjectile(s32 param0, s32 param1, u16 param2, u16 param3);
void TaskDestructor_TakkonProjectile(struct Task *t);

extern const TileInfo2 gUnknown_080D1F0C[4]; // Takkon
extern const TileInfo2 gUnknown_080D1F1C[4]; // proj

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

void sub_805B568(TakkonProjectile *proj)
{
    void *tiles = VramMalloc(MAX_TILES_VARIANT(ANIM_TAKKON_PROJ, 0) + MAX_TILES_VARIANT(ANIM_TAKKON_PROJ, 4));
    Sprite *s = &proj->s;
    s->tiles = tiles;

    s->anim = gUnknown_080D1F1C[0].anim;
    s->variant = gUnknown_080D1F1C[0].variant;
    s->prevVariant = -1;
    s->x = I(proj->qPos.x) - gCamera.x;
    s->y = I(proj->qPos.y) - gCamera.y;
    s->oamFlags = SPRITE_OAM_ORDER(19);
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 2);

    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;

    UpdateSpriteAnimation(s);
}

void Task_TakkonProjectileInit(void)
{
    TakkonProjectile *proj = TASK_DATA(gCurTask);
    bool32 r5 = FALSE;
    s32 worldX, worldY;
    s32 res;

    if ((gStageData.unk4 != 1) && (gStageData.unk4 != 2) && (gStageData.unk4 != 4)) {
        UpdateProjectilePos(proj);
    }

    sub_Proj_805B928(proj);

    if (sub_805B670(proj) == TRUE) {
        r5 = TRUE;
    }

    worldX = I(proj->qPos.x);
    worldY = I(proj->qPos.y);

    worldX = TO_WORLD_POS_RAW(worldX, proj->region.x);
    worldY = TO_WORLD_POS_RAW(worldY, proj->region.y);

    res = sub_8052394(worldY, worldX, 1, +8, 0, sub_805217C);

    if (res < 0) {
        r5 = TRUE;
    }

    if (r5 == TRUE) {
        Sprite *s = &proj->s;

        s->anim = gUnknown_080D1F1C[1].anim;
        s->variant = gUnknown_080D1F1C[1].variant;
        s->frameFlags = SPRITE_FLAG(PRIORITY, 0);

        gCurTask->main = Task_Proj_805B8EC;
    }
}

bool32 sub_805B670(TakkonProjectile *proj)
{
    Sprite *s;
    s32 worldX, worldY;
    u8 i;

    Player *p = NULL;

    worldX = I(proj->qPos.x);
    worldY = I(proj->qPos.y);

    worldX = TO_WORLD_POS_RAW(worldX, proj->region.x);
    worldY = TO_WORLD_POS_RAW(worldY, proj->region.y);

    s = &proj->s;

    s->hitboxes[1].b.left = -3;
    s->hitboxes[1].b.top = -4;
    s->hitboxes[1].b.right = +3;
    s->hitboxes[1].b.bottom = +4;
    s->hitboxes[1].index = HITBOX_STATE_INACTIVE - 2;

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        p = GET_SP_PLAYER_V0(i);

        if ((!sub_802C080(p)) && sub_8020700(s, worldX, worldY, 1, p, 0)) {
            if (p->framesInvincible == 0) {
                sub_8020CE0(s, worldX, worldY, 1, p);
            }

            return TRUE;
        }
    }

    return FALSE;
}

void sub_805B738(Takkon *enemy)
{
    Sprite *s = &enemy->s;

    if (s->frameFlags & SPRITE_FLAG(X_FLIP, 1)) {
        if (enemy->qPos.x < enemy->unk20) {
            enemy->qPos.x += Q(1);

            if (enemy->qPos.x > enemy->unk20) {
                enemy->qPos.x = enemy->unk20;
            }
        }
    } else {
        if (enemy->qPos.x >= enemy->unk1C) {
            enemy->qPos.x -= Q(1);

            if (enemy->qPos.x < enemy->unk1C) {
                enemy->qPos.x = enemy->unk1C;
            }
        }
    }
}

AnimCmdResult sub_805B77C(Takkon *enemy)
{
    AnimCmdResult acmdRes;

    Sprite *s = &enemy->s;
    s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region.x) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region.y) - gCamera.y;

    acmdRes = UpdateSpriteAnimation(s);
    DisplaySprite(s);

    return acmdRes;
}

bool32 sub_805B7C0(Takkon *enemy)
{
    Sprite *s = &enemy->s;
    s32 worldX;
    u8 i;

    worldX = I(enemy->qPos.x);
    worldX = TO_WORLD_POS_RAW(worldX, enemy->region.x);

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        s32 wx;

        Player *p = sub_805CD20(i);
        if (p == NULL)
            break;

        if (s->frameFlags & SPRITE_FLAG(X_FLIP, 1)) {
            wx = I(p->qWorldX) - worldX;
        } else {
            wx = worldX - I(p->qWorldX);
        }

        if ((wx > 0 && wx < 100)) {
            return 1;
        }
    }

    return FALSE;
}

bool32 sub_805B818(Takkon *enemy, EnemyUnknownStruc0 *param1)
{
    Sprite *s;

    param1->me = NULL;
    param1->spriteX = 0;
    param1->unk4 = 0;

    s = &enemy->s;
    param1->spr = s;
    param1->posX = enemy->qPos.x;
    param1->posY = enemy->qPos.y;
    param1->regionX = enemy->region.x;
    param1->regionY = enemy->region.y;

    return sub_805C63C(param1);
}

bool32 sub_805B844(Takkon *enemy)
{
    EnemyUnknownStruc0 unk;

    unk.unk4 = sub_805B818(enemy, &unk);
    unk.spr = &enemy->s;
    unk.posX = enemy->qUnkC.x;
    unk.posY = enemy->qUnkC.y;
    unk.regionX = enemy->region.x;
    unk.regionY = enemy->region.y;
    unk.me = enemy->me;
    unk.spriteX = enemy->spriteX;

    return sub_805C280(&unk);
}

void TaskDestructor_Takkon(struct Task *t)
{
    Takkon *enemy = TASK_DATA(t);
    VramFree(enemy->s.tiles);
}

void CreateTakkonProjectile(s32 qPosX, s32 qPosY, u16 regionX, u16 regionY)
{
    struct Task *t = TaskCreate(Task_TakkonProjectileInit, sizeof(TakkonProjectile), 0x4040, 0, TaskDestructor_TakkonProjectile);
    TakkonProjectile *proj = TASK_DATA(t);

    proj->qPos.x = qPosX;
    proj->qPos.y = qPosY;
    proj->region.x = regionX;
    proj->region.y = regionY;
    sub_805B568(proj);
}

void Task_Proj_805B8EC(void)
{
    TakkonProjectile *proj = TASK_DATA(gCurTask);
    AnimCmdResult acmdRes = sub_Proj_805B928(proj);

    sub_805B670(proj);

    if (acmdRes == ACMD_RESULT__ENDED) {
        TaskDestroy(gCurTask);
        return;
    }
}

static void UpdateProjectilePos(TakkonProjectile *proj) { proj->qPos.y += Q(3); }

AnimCmdResult sub_Proj_805B928(TakkonProjectile *proj)
{
    AnimCmdResult acmdRes;

    Sprite *s = &proj->s;
    s->x = TO_WORLD_POS_RAW(I(proj->qPos.x), proj->region.x) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(proj->qPos.y), proj->region.y) - gCamera.y;

    acmdRes = UpdateSpriteAnimation(s);
    DisplaySprite(s);

    return acmdRes;
}

void TaskDestructor_TakkonProjectile(struct Task *t)
{
    TakkonProjectile *proj = TASK_DATA(t);
    VramFree(proj->s.tiles);
}
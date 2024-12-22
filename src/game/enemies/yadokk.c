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
} Yadokk; /* size: 0x58 */

typedef struct {
    /* 0x00 */ u16 qUnk0;
    /* 0x02 */ u16 region[2];
    /* 0x06 */ u16 unk6;
    /* 0x08 */ u16 unk8;
    /* 0x04 */ Vec2_32 qPos;
    /* 0x0C */ Sprite s;
    /* 0x34 */ Hitbox reserved;
} YadokkProjectile; /* size: 0x44 */

extern const TileInfo2 gUnknown_080D1F2C[4]; // Jousun

void Task_Yadokk(void);
void sub_805FE40(void);
void sub_805FFEC(Yadokk *enemy);
AnimCmdResult sub_8060088(Yadokk *enemy);
bool32 sub_80600F8(Yadokk *enemy);
void sub_805FCC4(Yadokk *enemy);
void sub_805FEE0(YadokkProjectile *proj);
static bool32 CheckPlayerCollision(Yadokk *enemy);
static bool32 UpdateProjectilePos(YadokkProjectile *proj);
static AnimCmdResult DisplayProjectile(YadokkProjectile *proj);
bool32 sub_806027C(YadokkProjectile *proj);
void TaskDestructor_Yadokk(struct Task *t);
void CreateYadokkProjectile(s32 qPosX, s32 qPosY, u16 regionX, u16 regionY);
void Task_YadokkProjectileInit(void);
void TaskDestructor_YadokkProjectile(struct Task *t);

extern const TileInfo2 gUnknown_080D1FD0[4]; // Yadokk
extern const TileInfo2 gUnknown_080D1FF0[1]; // proj
extern const u8 gUnknown_080D1FF8[12];

#define isBetween(v, min, onePastMax) (((v) >= (min)) && ((v) < onePastMax))

void CreateEntity_Yadokk(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Yadokk, sizeof(Yadokk), 0x2100, 0, TaskDestructor_Yadokk);

    Yadokk *enemy = TASK_DATA(t);
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

    if (me->d.uData[4] & 0x8) {
        enemy->direction = -1;
    } else {
        enemy->direction = +1;
    }

    enemy->unk6 = 0;
    enemy->unk7 = 0;

    CpuFill16(0, &enemy->reserved.b, sizeof(enemy->reserved.b));

    sub_805FCC4(enemy);

    SET_MAP_ENTITY_INITIALIZED(me);
}

void sub_805FCC4(Yadokk *enemy)
{
    void *tiles = ALLOC_TILES(ANIM_YADOKK);
    Sprite *s = &enemy->s;
    s->tiles = tiles;

    s->anim = gUnknown_080D1FD0[0].anim;
    s->variant = gUnknown_080D1FD0[0].variant;
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

void Task_Yadokk(void)
{
    Yadokk *enemy = TASK_DATA(gCurTask);
    Sprite *s = &enemy->s;
    s->frameFlags |= SPRITE_FLAG(18, 1);

    sub_805CD70(&enemy->qPos, 0, enemy->region, &enemy->unk7);

    if ((gStageData.unk4 != 1) && (gStageData.unk4 != 2) && (gStageData.unk4 != 4)) {
        sub_805FFEC(enemy);
    }

    if (sub_80600F8(enemy) == TRUE) {
        TaskDestroy(gCurTask);
        return;
    }

    sub_8060088(enemy);

    if ((enemy->qPos.x <= enemy->qLeft) || (enemy->qPos.x >= enemy->qRight)) {
        s32 spriteIndex;

        if (enemy->unk6 == 0) {
            spriteIndex = 1;
        } else {
            spriteIndex = 3;
        }

        s->anim = gUnknown_080D1FD0[spriteIndex].anim;
        s->variant = gUnknown_080D1FD0[spriteIndex].variant;

        gCurTask->main = sub_805FE40;
    } else if ((CheckPlayerCollision(enemy) == TRUE) && (enemy->unk6 == 0)) {
        Sprite *s = &enemy->s;

        CreateYadokkProjectile(enemy->qPos.x, enemy->qPos.y, enemy->region[0], enemy->region[1]);

        enemy->unk6 = 1;

        CpuFill16(0, &enemy->reserved.b, sizeof(enemy->reserved.b));
        s->anim = gUnknown_080D1FD0[2].anim;
        s->variant = gUnknown_080D1FD0[2].variant;
    }
}

void sub_805FE40(void)
{
    Yadokk *enemy = TASK_DATA(gCurTask);

    AnimCmdResult acmdRes = sub_8060088(enemy);

    if (sub_80600F8(enemy) == TRUE) {
        TaskDestroy(gCurTask);
        return;
    }

    if ((gStageData.unk4 != 1) && (gStageData.unk4 != 2) && (gStageData.unk4 != 4) && (acmdRes == ACMD_RESULT__ENDED)) {
        Sprite *s = &enemy->s;
        s32 spriteIndex;
        if (enemy->unk6 == 0) {
            spriteIndex = 0;
        } else {
            spriteIndex = 2;
        }

        if (s->frameFlags & SPRITE_FLAG(X_FLIP, 1)) {
            SPRITE_FLAG_CLEAR(s, X_FLIP);
        } else {
            SPRITE_FLAG_SET(s, X_FLIP);
        }

        s->anim = gUnknown_080D1FD0[spriteIndex].anim;
        s->variant = gUnknown_080D1FD0[spriteIndex].variant;

        gCurTask->main = Task_Yadokk;
    }
}

void sub_805FEE0(YadokkProjectile *proj)
{
    void *tiles = ALLOC_TILES_VARIANT(ANIM_YADOKK, 2);
    Sprite *s = &proj->s;
    s->tiles = tiles;

    s->anim = gUnknown_080D1FF0[0].anim;
    s->variant = gUnknown_080D1FF0[0].variant;
    s->prevVariant = -1;
    s->x = I(proj->qPos.x) - gCamera.x;
    s->y = I(proj->qPos.y) - gCamera.y;
    s->oamFlags = SPRITE_OAM_ORDER(19);
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = SPRITE_ANIM_SPEED(2.0);
    s->palId = 0;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;

    UpdateSpriteAnimation(s);
}

static bool32 CheckPlayerCollisionProj(YadokkProjectile *proj)
{
    Sprite *s;
    s32 worldX, worldY;
    u8 i;

    Player *p = NULL;

    worldX = I(proj->qPos.x);
    worldY = I(proj->qPos.y);

    worldX = TO_WORLD_POS_RAW(worldX, proj->region[0]);
    worldY = TO_WORLD_POS_RAW(worldY, proj->region[1]);

    s = &proj->s;

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        p = GET_SP_PLAYER_V0(i);

        if (!sub_802C080(p) && sub_8020700(s, worldX, worldY, 1, p, 0)) {
            if (p->framesInvincible == 0) {
                sub_8020CE0(s, worldX, worldY, 1, p);
            }

            return TRUE;
        }
    }

    return FALSE;
}

void sub_805FFEC(Yadokk *enemy)
{
    Sprite *s = &enemy->s;

    if (s->frameFlags & SPRITE_FLAG(X_FLIP, 1)) {
        if (enemy->qPos.x <= enemy->qRight) {
            enemy->qPos.x += Q(1);

            if (enemy->qPos.x > enemy->qRight) {
                enemy->qPos.x = enemy->qRight;
            }
        }
    } else {
        if (enemy->qPos.x >= enemy->qLeft) {
            enemy->qPos.x -= Q(1);

            if (enemy->qPos.x < enemy->qLeft) {
                enemy->qPos.x = enemy->qLeft;
            }
        }
    }
}

static bool32 CheckPlayerCollision(Yadokk *enemy)
{
    Sprite *s = &enemy->s;
    Player *p;
    s32 worldX;
    u8 i;

    worldX = I(enemy->qPos.x);

    worldX = TO_WORLD_POS_RAW(worldX, enemy->region[0]);

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        p = sub_805CD20(i);
        if (p == 0) {
            break;
        }

        if (s->frameFlags & SPRITE_FLAG(X_FLIP, 1)) {
            if (((I(p->qWorldX) - worldX) > 0) && ((I(p->qWorldX) - worldX) < 40)) {
                return TRUE;
            }
        } else {
            if (((worldX - I(p->qWorldX)) > 0) && ((worldX - I(p->qWorldX)) < 40)) {
                return TRUE;
            }
        }
    }

    return FALSE;
}

AnimCmdResult sub_8060088(Yadokk *enemy)
{
    AnimCmdResult acmdRes;

    Sprite *s = &enemy->s;
    s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region[1]) - gCamera.y;

    acmdRes = UpdateSpriteAnimation(s);
    DisplaySprite(s);

    return acmdRes;
}

bool32 sub_80600CC(Yadokk *enemy, EnemyUnknownStruc0 *param1)
{
    Sprite *s;

    param1->me = NULL;
    param1->spriteX = 0;
    param1->unk4 = 0;

    s = &enemy->s;
    param1->spr = s;
    param1->posX = enemy->qPos.x;
    param1->posY = enemy->qPos.y;
    param1->regionX = enemy->region[0];
    param1->regionY = enemy->region[1];

    return sub_805C63C(param1);
}

bool32 sub_80600F8(Yadokk *enemy)
{
    EnemyUnknownStruc0 unk;

    unk.unk4 = sub_80600CC(enemy, &unk);
    unk.spr = &enemy->s;
    unk.posX = enemy->qUnk10.x;
    unk.posY = enemy->qUnk10.y;
    unk.regionX = enemy->region[0];
    unk.regionY = enemy->region[1];
    unk.me = enemy->me;
    unk.spriteX = enemy->spriteX;

    return sub_805C280(&unk);
}

void TaskDestructor_Yadokk(struct Task *t)
{
    Yadokk *enemy = TASK_DATA(t);
    VramFree(enemy->s.tiles);
}

void CreateYadokkProjectile(s32 qPosX, s32 qPosY, u16 regionX, u16 regionY)
{
    struct Task *t = TaskCreate(Task_YadokkProjectileInit, sizeof(YadokkProjectile), 0x4040, 0, TaskDestructor_YadokkProjectile);
    YadokkProjectile *proj = TASK_DATA(t);

    proj->qPos.x = qPosX;
    proj->qPos.y = qPosY;
    proj->region[0] = regionX;
    proj->region[1] = regionY;
    proj->qUnk0 = 0;
    proj->unk6 = 0;
    proj->unk8 = 0;

    CpuFill16(0, &proj->reserved.b, sizeof(proj->reserved.b));

    sub_805FEE0(proj);
}

void Task_YadokkProjectileInit(void)
{
    YadokkProjectile *proj = TASK_DATA(gCurTask);

    UpdateProjectilePos(proj);
    DisplayProjectile(proj);
    CheckPlayerCollisionProj(proj);

    if (sub_806027C(proj) == 1) {
        TaskDestroy(gCurTask);
    }
}

static bool32 UpdateProjectilePos(YadokkProjectile *proj)
{
    if (proj->qUnk0 < Q(10)) {
        proj->qUnk0 += Q(0.25);
    }

    proj->qPos.y -= Q(gUnknown_080D1FF8[I(proj->qUnk0)]) / 2;

    return FALSE;
}

static AnimCmdResult DisplayProjectile(YadokkProjectile *proj)
{
    AnimCmdResult acmdRes;

    Sprite *s = &proj->s;
    s->x = TO_WORLD_POS_RAW(I(proj->qPos.x), proj->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(proj->qPos.y), proj->region[1]) - gCamera.y;

    acmdRes = UpdateSpriteAnimation(s);
    DisplaySprite(s);

    return acmdRes;
}

bool32 sub_806027C(YadokkProjectile *proj)
{
    EnemyUnknownStruc0 unk;

    unk.unk4 = 0;
    unk.spr = &proj->s;
    unk.posX = proj->qPos.x;
    unk.posY = proj->qPos.y;
    unk.regionX = proj->region[0];
    unk.regionY = proj->region[1];
    unk.me = 0;
    unk.spriteX = 0;

    return sub_805C280(&unk);
}

void TaskDestructor_YadokkProjectile(struct Task *t)
{
    YadokkProjectile *proj = TASK_DATA(t);
    VramFree(proj->s.tiles);
}

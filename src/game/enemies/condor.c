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
    /* 0x07 */ u8 unk7;
    /* 0x08 */ u16 unk8;
    /* 0x0A */ u16 region[2];
    /* 0x0E */ s8 direction;
    /* 0x0F */ u8 unkF;
    /* 0x18 */ s32 qUnk10;
    /* 0x1C */ s32 qUnk14;
    /* 0x18 */ s32 qUnk18;
    /* 0x1C */ s32 qUnk1C;
    /* 0x20 */ Vec2_32 qUnk20;
    /* 0x28 */ Vec2_32 qPos;
    /* 0x30 */ s32 qLeft;
    /* 0x34 */ s32 qRight;
    /* 0x38 */ Sprite s;
    /* 0x60 */ Hitbox reserved;
} Condor; /* size: 0x68 */

typedef struct {
    /* 0x00 */ u16 region[2];
    /* 0x04 */ Vec2_32 qPos;
    /* 0x0C */ Sprite s;
    /* 0x34 */ Hitbox reserved;
} CondorProjectile; /* size: 0x3C */

void Task_Condor0(void);
void Task_CondorProjectileInit(void);
void TaskDestructor_Condor(struct Task *t);
static void InitSpriteProjectile(CondorProjectile *proj);
void Task_8058854(void);
void Task_Condor2(void);
void Task_Condor1(void);
void Task_Condor3(void);
void sub_8058F2C(Condor *enemy);
void Task_8059210(void);
bool32 sub_805928C(Condor *enemy);
bool32 sub_80592E0(Condor *enemy);
bool32 sub_805933C(Condor *enemy);
bool32 sub_8059540(CondorProjectile *proj);
void sub_80595FC(Condor *enemy);
AnimCmdResult sub_8059640(Condor *enemy);
bool32 sub_8059684(Condor *enemy, EnemyUnknownStruc0 *param1);
bool32 sub_80596B0(Condor *enemy);
bool32 sub_8058AE0(Condor *enemy);
void CreateCondorProjectile(s32 qPosX, s32 qPosY, u16 regionX, u16 regionY);
void Task_8059778(void);
void UpdateProjectilePos(CondorProjectile *proj);
AnimCmdResult sub_80597B4(CondorProjectile *proj);
void TaskDestructor_CondorProjectile(struct Task *t);

extern const TileInfo2 gUnknown_080D1E54[6]; // Condor
// extern const TileInfo2 gUnknown_080D1E84[2] = {{ANIM_CONDOR_PROJ, 0, 16}, {ANIM_CONDOR_PROJ_EXPLOSION, 0, 16}}; // proj
extern const TileInfo2 gUnknown_080D1E84[2]; // proj

#define isBetween(v, min, onePastMax) (((v) >= (min)) && ((v) < onePastMax))

void CreateEntity_Condor(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Condor0, sizeof(Condor), 0x2100, 0, TaskDestructor_Condor);
    Condor *enemy = TASK_DATA(t);
    s32 qX, qY;

    enemy->me = me;
    enemy->spriteX = me->x;
    enemy->unk6 = 0;
    enemy->id = id;
    enemy->region[0] = regionX;
    enemy->region[1] = regionY;

    qX = Q(me->x * TILE_WIDTH);
    enemy->qPos.x = qX;
    qY = Q(me->y * TILE_WIDTH);
    enemy->qPos.y = qY;

    enemy->qUnk20.x = qX;
    enemy->qUnk20.y = qY;
    enemy->qLeft = qX + Q(me->d.sData[0] * TILE_WIDTH);
    enemy->qRight = enemy->qLeft + Q(me->d.uData[2] * TILE_WIDTH);
    enemy->unk8 = 0;

    if (me->d.uData[4] & 0x8) {
        enemy->direction = -1;
    } else {
        enemy->direction = +1;
    }

    CpuFill16(0, &enemy->reserved.b, sizeof(enemy->reserved.b));

    sub_8058F2C(enemy);

    SET_MAP_ENTITY_INITIALIZED(me);
}

void sub_8058F2C(Condor *enemy)
{
    void *tiles = ALLOC_TILES(ANIM_CONDOR);
    Sprite *s = &enemy->s;
    s->tiles = tiles;

    s->anim = gUnknown_080D1E54[0].anim;
    s->variant = gUnknown_080D1E54[0].variant;
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

void Task_Condor0(void)
{
    Condor *enemy = TASK_DATA(gCurTask);

    if ((gStageData.unk4 != 1) && (gStageData.unk4 != 2) && (gStageData.unk4 != 4)) {
        sub_80595FC(enemy);
    }

    if (sub_80596B0(enemy) == TRUE) {
        TaskDestroy(gCurTask);
        return;
    }

    sub_8059640(enemy);

    if ((sub_805933C(enemy) == TRUE) && enemy->unk6 == 0) {
        Sprite *s = &enemy->s;
        s->anim = gUnknown_080D1E54[2].anim;
        s->variant = gUnknown_080D1E54[2].variant;

        enemy->qUnk18 = enemy->qPos.x;
        enemy->qUnk1C = enemy->qPos.y;

        gCurTask->main = Task_Condor2;
    } else if ((enemy->qPos.x <= enemy->qLeft) || enemy->qPos.x >= enemy->qRight) {
        Sprite *s = &enemy->s;

        s->anim = gUnknown_080D1E54[1].anim;
        s->variant = gUnknown_080D1E54[1].variant;

        gCurTask->main = Task_Condor1;
    }
}

void Task_Condor2(void)
{
    Condor *enemy = TASK_DATA(gCurTask);

    sub_8059640(enemy);

    if (sub_80596B0(enemy) == TRUE) {
        TaskDestroy(gCurTask);
        return;
    }

    if ((gStageData.unk4 != 1) && (gStageData.unk4 != 2) && (gStageData.unk4 != 4) && (sub_805928C(enemy) == TRUE)) {
        Sprite *s = &enemy->s;
        s->anim = gUnknown_080D1E54[3].anim;
        s->variant = gUnknown_080D1E54[3].variant;

        enemy->unk6 = 1;

        gCurTask->main = Task_Condor3;
    }
}

void Task_Condor1(void)
{
    Condor *enemy = TASK_DATA(gCurTask);

    AnimCmdResult acmdRes = sub_8059640(enemy);

    if (sub_80596B0(enemy) == TRUE) {
        TaskDestroy(gCurTask);
        return;
    }

    if (acmdRes == ACMD_RESULT__ENDED) {
        Sprite *s = &enemy->s;
        s->anim = gUnknown_080D1E54[0].anim;
        s->variant = gUnknown_080D1E54[0].variant;

        if (s->frameFlags & SPRITE_FLAG(X_FLIP, 1)) {
            SPRITE_FLAG_CLEAR(s, X_FLIP);
        } else {
            SPRITE_FLAG_SET(s, X_FLIP);
        }

        enemy->unk6 = 0;
        gCurTask->main = Task_Condor0;
    }
}

void Task_Condor3(void)
{
    Condor *enemy = TASK_DATA(gCurTask);

    AnimCmdResult acmdRes = sub_8059640(enemy);

    if (sub_80596B0(enemy) == TRUE) {
        TaskDestroy(gCurTask);
        return;
    }

    if (acmdRes == ACMD_RESULT__ENDED) {
        if (enemy->qPos.y > enemy->qUnk20.y) {
            Sprite *s = &enemy->s;
            s->anim = gUnknown_080D1E54[4].anim;
            s->variant = gUnknown_080D1E54[4].variant;

            CreateCondorProjectile(enemy->qPos.x, enemy->qPos.y, enemy->region[0], enemy->region[1]);

            if (enemy->qPos.x < enemy->qLeft) {
                enemy->qUnk18 = enemy->qLeft;
            } else if (enemy->qPos.x > enemy->qRight) {
                enemy->qUnk18 = enemy->qRight;
            } else {
                enemy->qUnk18 = enemy->qUnk10 - Q(enemy->region[0] << 8);
            }

            gCurTask->main = Task_8059210;
        } else {
            Sprite *s = &enemy->s;
            s->anim = gUnknown_080D1E54[0].anim;
            s->variant = gUnknown_080D1E54[0].variant;
            gCurTask->main = Task_Condor0;
        }
    }
}

void Task_8059210(void)
{
    Condor *enemy = TASK_DATA(gCurTask);

    if (sub_80596B0(enemy) == TRUE) {
        TaskDestroy(gCurTask);
        return;
    }

    if ((gStageData.unk4 != 1) && (gStageData.unk4 != 2) && (gStageData.unk4 != 4) && (sub_80592E0(enemy) == TRUE)) {
        Sprite *s = &enemy->s;
        s->anim = gUnknown_080D1E54[5].anim;
        s->variant = gUnknown_080D1E54[5].variant;
        sub_8059640(enemy);
        gCurTask->main = Task_Condor3;
    } else {
        sub_8059640(enemy);
    }
}

bool32 sub_805928C(Condor *enemy)
{
    s32 arr[4];
    u32 r1, r4;

    arr[0] = enemy->qUnk18;
    arr[1] = enemy->qUnk1C;
    arr[2] = enemy->qUnk10 - Q(enemy->region[0] << 8);
    arr[3] = enemy->qUnk14 - Q(enemy->region[1] << 8);

    enemy->qPos.y = arr[1] + (((arr[3] - arr[1]) >> 6) * (enemy->unk8 >> 6));
    enemy->qPos.x = arr[0] + (((arr[2] - arr[0]) >> 6) * (enemy->unk8 >> 6));

    enemy->unk8 += 0x80;

    if (enemy->unk8 >> 6 >= 64) {
        return TRUE;
    } else {
        return FALSE;
    }
}

bool32 sub_80592E0(Condor *enemy)
{
    s32 arr[4];
    u32 r1, r4;

    arr[0] = enemy->qUnk18;
    arr[1] = enemy->qUnk1C;
    arr[2] = enemy->qUnk10 - Q(enemy->region[0] << 8);
    arr[3] = enemy->qUnk14 - Q(enemy->region[1] << 8);

    enemy->qPos.y = arr[1] + (((arr[3] - arr[1]) >> 6) * (enemy->unk8 >> 6));
    enemy->qPos.x = arr[0] + (((arr[2] - arr[0]) >> 6) * (enemy->unk8 >> 6));

    enemy->unk8 -= 0x80;

    if (enemy->unk8 >> 6 >= 64) {
        enemy->unk8 = 0;
        return TRUE;
    } else {
        return FALSE;
    }
}

// Incomplete! (Maybe buzzer.c:sub_805A04C can help fix this?)
// (72.44%) https://decomp.me/scratch/qkJgd
NONMATCH("asm/non_matching/game/enemies/condor__sub_805933C.inc", bool32 sub_805933C(Condor *enemy))
{
    Sprite *s = &enemy->s;
    Player *p;
    s32 worldX;
    s32 worldY;
    s32 qWorldX;
    s32 dir;
    u8 i;

    worldX = I(enemy->qPos.x);
    worldY = I(enemy->qPos.y);
    worldX = (TO_WORLD_POS_RAW(worldX, enemy->region[0]));
    worldY = (TO_WORLD_POS_RAW(worldY, enemy->region[1]));

    for (i = 0, qWorldX = Q(worldX); i < NUM_SINGLE_PLAYER_CHARS; i++) {
        Player *p = sub_805CD20(i);
        if (p == NULL)
            break;

        dir = (u16)sa2__sub_8004418(I(p->qWorldY) - worldY, I(p->qWorldX) - worldX);

        if (!((((u16)(dir - 1) <= 254) && (s->frameFlags & SPRITE_FLAG_MASK_X_FLIP))
              || ((((u16)(dir + (-Q(1) - 1)) > 254)) || (s->frameFlags & SPRITE_FLAG_MASK_X_FLIP)))
            && ((isBetween(ABS(worldX - I(p->qWorldX)), 0, 100) && isBetween(ABS((worldY - 26) - I(p->qWorldY)), 0, 100)
                 && (worldY < I(p->qWorldY) - 26)))) {
            enemy->qUnk10 = p->qWorldX - Q(0);
            enemy->qUnk14 = p->qWorldY - Q(26);
            return TRUE;
        }
    }

    return FALSE;
}
END_NONMATCH

static void InitSpriteProjectile(CondorProjectile *enemy)
{
    void *tiles = ALLOC_TILES(ANIM_CONDOR_PROJ_EXPLOSION);
    Sprite *s = &enemy->s;
    s->tiles = tiles;

    s->anim = gUnknown_080D1E84[0].anim;
    s->variant = gUnknown_080D1E84[0].variant;
    s->prevVariant = -1;
    s->x = I(enemy->qPos.x) - gCamera.x;
    s->y = I(enemy->qPos.y) - gCamera.y;
    s->oamFlags = SPRITE_OAM_ORDER(19);
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;

    UpdateSpriteAnimation(s);
}

void Task_CondorProjectileInit(void)
{
    CondorProjectile *proj = TASK_DATA(gCurTask);
    bool32 r5 = FALSE;
    s32 worldX, worldY;
    s32 res;

    UpdateProjectilePos(proj);

    sub_80597B4(proj);

    if (sub_8059540(proj) == TRUE) {
        r5 = TRUE;
    }

    worldX = I(proj->qPos.x);
    worldY = I(proj->qPos.y);

    worldX = TO_WORLD_POS_RAW(worldX, proj->region[0]);
    worldY = TO_WORLD_POS_RAW(worldY, proj->region[1]);

    res = sub_8052394(worldY, worldX, 1, +8, 0, sub_805217C);

    if (res < 0) {
        r5 = TRUE;
    }

    if (r5 == TRUE) {
        Sprite *s = &proj->s;

        s->anim = gUnknown_080D1E84[1].anim;
        s->variant = gUnknown_080D1E84[1].variant;
        s->frameFlags = SPRITE_FLAG(PRIORITY, 0);

        gCurTask->main = Task_8059778;
    }
}

bool32 sub_8059540(CondorProjectile *proj)
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

        if ((!sub_802C080(p)) && (p->charFlags.someIndex == 1 || p->charFlags.someIndex == 2 || p->charFlags.someIndex == 4)
            && sub_8020700(s, worldX, worldY, 1, p, 0)) {
            if (p->framesInvincible == 0) {
                sub_8020CE0(s, worldX, worldY, 1, p);
            }

            return TRUE;
        }
    }

    return FALSE;
}

void sub_80595FC(Condor *enemy)
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

AnimCmdResult sub_8059640(Condor *enemy)
{
    AnimCmdResult acmdRes;

    Sprite *s = &enemy->s;
    s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region[1]) - gCamera.y;

    acmdRes = UpdateSpriteAnimation(s);
    DisplaySprite(s);

    return acmdRes;
}

bool32 sub_8059684(Condor *enemy, EnemyUnknownStruc0 *param1)
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

bool32 sub_80596B0(Condor *enemy)
{
    EnemyUnknownStruc0 unk;

    unk.unk4 = sub_8059684(enemy, &unk);
    unk.spr = &enemy->s;
    unk.posX = enemy->qUnk20.x;
    unk.posY = enemy->qUnk20.y;
    unk.regionX = enemy->region[0];
    unk.regionY = enemy->region[1];
    unk.me = enemy->me;
    unk.spriteX = enemy->spriteX;

    return sub_805C280(&unk);
}

void TaskDestructor_Condor(struct Task *t)
{
    Condor *enemy = TASK_DATA(t);
    VramFree(enemy->s.tiles);
}

void CreateCondorProjectile(s32 qPosX, s32 qPosY, u16 regionX, u16 regionY)
{
    struct Task *t = TaskCreate(Task_CondorProjectileInit, sizeof(CondorProjectile), 0x4040, 0, TaskDestructor_CondorProjectile);
    CondorProjectile *proj = TASK_DATA(t);

    proj->qPos.x = qPosX;
    proj->qPos.y = qPosY;
    proj->region[0] = regionX;
    proj->region[1] = regionY;

    CpuFill16(0, &proj->reserved.b, sizeof(proj->reserved.b));

    InitSpriteProjectile(proj);
}

void Task_8059778(void)
{
    CondorProjectile *proj = TASK_DATA(gCurTask);
    AnimCmdResult acmdRes = sub_80597B4(proj);

    sub_8059540(proj);

    if (acmdRes == ACMD_RESULT__ENDED) {
        TaskDestroy(gCurTask);
        return;
    }
}

void UpdateProjectilePos(CondorProjectile *proj) { proj->qPos.y += Q(2); }

AnimCmdResult sub_80597B4(CondorProjectile *proj)
{
    AnimCmdResult acmdRes;

    Sprite *s = &proj->s;
    s->x = TO_WORLD_POS_RAW(I(proj->qPos.x), proj->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(proj->qPos.y), proj->region[1]) - gCamera.y;

    acmdRes = UpdateSpriteAnimation(s);
    DisplaySprite(s);

    return acmdRes;
}

void TaskDestructor_CondorProjectile(struct Task *t)
{
    CondorProjectile *proj = TASK_DATA(t);
    VramFree(proj->s.tiles);
}
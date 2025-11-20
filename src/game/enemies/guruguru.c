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

#define NUM_SPRITES         3
#define NUM_SEGMENT_SPRITES 4

typedef struct {
    /* 0x00 */ MapEntity *me;
    /* 0x04 */ u8 id;
    /* 0x05 */ u8 spriteX;
    /* 0x06 */ u8 unk6;
    /* 0x07 */ s8 direction;
    /* 0x08 */ u16 unk8[5]; // TODO: check size, 4 or 5?
    /* 0x12 */ u16 region[2];
    /* 0x18 */ s32 qLeft;
    /* 0x1C */ s32 qRight;
    /* 0x20 */ Vec2_32 qUnk20[NUM_SEGMENT_SPRITES];
    /* 0x40 */ Vec2_32 qUnk40;
    /* 0x48 */ Vec2_32 qPos;
    /* 0x50 */ Sprite2 s[NUM_SPRITES];
} GuruGuru; /* size: 0xE0 */

typedef struct {
    /* 0x00 */ u8 unk0;
    /* 0x01 */ s8 unk1;
    /* 0x02 */ s8 unk2;
    /* 0x04 */ u16 region[2];
    /* 0x08 */ u16 unk8;
    /* 0x0A */ u16 unkA;
    /* 0x0C */ s16 unkC;
    /* 0x10 */ Vec2_32 qPos;
    /* 0x18 */ Sprite s;
    /* 0x40 */ Hitbox reserved;
} GuruGuruProjectile; /* size: 0x48 */

extern const TileInfo2 gUnknown_080D1F2C[4]; // Jousun

void Task_GuruGuru(void);
void sub_8060654(void);
void sub_80606CC(GuruGuru *enemy);
AnimCmdResult sub_8060704(GuruGuru *enemy);
bool32 sub_8060774(GuruGuru *enemy);
void sub_8060384(GuruGuru *enemy);
void sub_80604F0(GuruGuruProjectile *proj);
void sub_8065544(GuruGuru *arg0, Vec2_32 *arg1, u8 arg2);
s32 sub_80656B0(GuruGuru *arg0);
s32 sub_8065884(GuruGuru *arg0, Sprite2 *arg1, Vec2_32 *arg2);
static bool32 CheckPlayerCollision(GuruGuru *enemy);
static void UpdateProjectilePos(GuruGuruProjectile *proj);
static AnimCmdResult DisplayProjectile(GuruGuruProjectile *proj);
void Task_80608CC(void);
bool32 sub_8060940(GuruGuruProjectile *proj);
void TaskDestructor_GuruGuru(struct Task *t);
void CreateGuruGuruProjectile(s32 qPosX, s32 qPosY, u16 regionX, u16 regionY, u8 param4);
void Task_GuruGuruProjectileInit(void);
void TaskDestructor_GuruGuruProjectile(struct Task *t);

extern const TileInfo2 gUnknown_080D2004[4]; // GuruGuru
extern const TileInfo2 gUnknown_080D2014[4]; // proj
extern const u8 gUnknown_080D1FF8[12];
extern const TileInfo2 gUnknown_080D2180[6];

#define isBetween(v, min, onePastMax) (((v) >= (min)) && ((v) < onePastMax))

void sub_80651D0(GuruGuru *enemy, MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    s32 qX, qY;
    u16 value;
    u8 i;

    enemy->me = me;
    enemy->spriteX = me->x;
    enemy->id = id;
    enemy->region[0] = regionX;
    enemy->region[1] = regionY;
    qX = Q(me->x * TILE_WIDTH);
    enemy->qPos.x = qX;
    qY = Q(me->y * TILE_WIDTH);
    enemy->qPos.y = qY;

    enemy->qUnk40.x = qX;
    enemy->qUnk40.y = qY;

    enemy->qLeft = qX + Q(me->d.sData[0] * TILE_WIDTH);
    enemy->qRight = enemy->qLeft + Q(me->d.uData[2] * TILE_WIDTH);

    if (me->d.uData[4] & 0x8) {
        enemy->direction = -1;
    } else {
        enemy->direction = +1;
    }

    if ((me->d.uData[4] & 0x10) >> 4) {
        enemy->unk6 = 1;
    } else {
        enemy->unk6 = 0;
    }

    for (i = 0; i < (s32)ARRAY_COUNT(enemy->qUnk20); i++) {
        enemy->qUnk20[i].x = enemy->qUnk40.x;
        enemy->qUnk20[i].y = enemy->qUnk40.y;
        enemy->unk8[i] = 0;
    }

    CpuFill16(0, &enemy->s[0].hitboxes[1].b, sizeof(enemy->s[0].hitboxes[1].b));
    CpuFill16(0, &enemy->s[1].hitboxes[1].b, sizeof(enemy->s[1].hitboxes[1].b));
    CpuFill16(0, &enemy->s[2].hitboxes[1].b, sizeof(enemy->s[2].hitboxes[1].b));
    CpuFill16(0, &enemy->s[0].hitboxes[0].b, sizeof(enemy->s[0].hitboxes[0].b));
    CpuFill16(0, &enemy->s[1].hitboxes[0].b, sizeof(enemy->s[1].hitboxes[0].b));
    CpuFill16(0, &enemy->s[2].hitboxes[0].b, sizeof(enemy->s[2].hitboxes[0].b));
}

void sub_8065300(GuruGuru *enemy)
{
    Sprite2 *s;
    u8 *vram;

    vram = VramMalloc(0x16U);
    s = &enemy->s[2];
    s->tiles = vram;
    vram += (gUnknown_080D2180[2].numTiles << 5);
    s->anim = gUnknown_080D2180[2].anim;
    s->variant = gUnknown_080D2180[2].variant;
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
    if (enemy->unk6 != 0) {
        s->frameFlags |= 0x800;
        s->frameFlags |= 0x1000;
    }
    UpdateSpriteAnimation((Sprite *)s);

    s = &enemy->s[0];
    s->tiles = vram;
    vram += (gUnknown_080D2180->numTiles << 5);
    s->anim = gUnknown_080D2180->anim;
    s->variant = gUnknown_080D2180->variant;
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
    if (enemy->unk6 != 0) {
        s->frameFlags |= 0x800;
        s->frameFlags |= 0x1000;
    }
    UpdateSpriteAnimation((Sprite *)s);

    s = &enemy->s[1];
    s->tiles = vram;
    s->anim = gUnknown_080D2180[1].anim;
    s->variant = gUnknown_080D2180[1].variant;
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
    if (enemy->unk6 != 0) {
        s->frameFlags |= 0x800;
        s->frameFlags |= 0x1000;
    }
    UpdateSpriteAnimation((Sprite *)s);
}

void Task_GuruguruInit()
{
    Vec2_32 *temp_r1;
    u32 var_r4_2;
    u8 var_r4;

    GuruGuru *enemy = TASK_DATA(gCurTask);

    sub_80656B0(enemy);
    if (((u32)(u8)(gStageData.unk4 - 1) > 1U) && (gStageData.unk4 != 4)) {
        sub_8065544(enemy, &enemy->qPos, 0U);
    }

    for (var_r4 = 0; var_r4 < 4; var_r4++) {
        temp_r1 = &enemy->qUnk20[var_r4];
        sub_8065544(enemy, temp_r1, var_r4 + 1);
    }

    if (sub_8065884(enemy, enemy->s, &enemy->qUnk40) == 1) {
        TaskDestroy(gCurTask);
        return;
    }
    for (var_r4 = 0; var_r4 < 4; var_r4++) {
        s8 *meX;
        if (var_r4 != 0) {
            if (var_r4 < 2) {
                sub_8065884(enemy, &enemy->s[2], &enemy->qUnk20[var_r4]);
            } else {
                sub_8065884(enemy, &enemy->s[1], &enemy->qUnk20[var_r4]);
            }
        }

        // TODO: Macro?
        meX = &enemy->me->x;
        *meX = MAP_ENTITY_STATE_INITIALIZED;
    }
}

#if 0
void CreateEntity_GuruGuru(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_GuruGuru, sizeof(GuruGuru), 0x2100, 0, TaskDestructor_GuruGuru);

    GuruGuru *enemy = TASK_DATA(t);
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

void sub_8060384(GuruGuru *enemy)
{
    void *tiles = ALLOC_TILES(ANIM_GuruGuru);
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

void Task_GuruGuru(void)
{
    GuruGuru *enemy = TASK_DATA(gCurTask);
    Sprite *s = &enemy->s;
    s->frameFlags |= SPRITE_FLAG(18, 1);

    sub_805CD70(&enemy->qPos, &enemy->qUnk10, enemy->region, &enemy->unk7);

    if ((gStageData.unk4 != 1) && (gStageData.unk4 != 2) && (gStageData.unk4 != 4)) {
        sub_80606CC(enemy);
    }

    if (sub_8060774(enemy) == TRUE) {
        TaskDestroy(gCurTask);
        return;
    }

    sub_8060704(enemy);

    if ((enemy->qPos.x <= enemy->qLeft) || (enemy->qPos.x >= enemy->qRight)) {
        s32 spriteIndex;

        spriteIndex = 1;

        s->anim = gUnknown_080D2004[spriteIndex].anim;
        s->variant = gUnknown_080D2004[spriteIndex].variant;

        gCurTask->main = sub_8060654;
    } else if ((++enemy->unk6 >= 90)) {
        u8 param4;

        if (enemy->s.frameFlags & SPRITE_FLAG(X_FLIP, 1)) {
            param4 = 0;
        } else {
            param4 = 1;
        }

        CreateGuruGuruProjectile(enemy->qPos.x, enemy->qPos.y - Q(22), enemy->region[0], enemy->region[1], param4);

        enemy->unk6 = 0;
    }
}

void sub_80604F0(GuruGuruProjectile *proj)
{
    void *tiles = ALLOC_TILES(ANIM_CONDOR_PROJ_EXPLOSION);
    Sprite *s = &proj->s;
    s->tiles = tiles;

    s->anim = gUnknown_080D2014[0].anim;
    s->variant = gUnknown_080D2014[0].variant;
    s->prevVariant = -1;
    s->x = I(proj->qPos.x) - gCamera.x;
    s->y = I(proj->qPos.y) - gCamera.y;
    s->oamFlags = SPRITE_OAM_ORDER(19);
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;

    UpdateSpriteAnimation(s);
}

bool32 CheckPlayerCollisionProj(GuruGuruProjectile *proj)
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

void UpdateProjectilePos(GuruGuruProjectile *proj)
{
    s16 r2, r5;

    r2 = Q(proj->unk2) * 2;

    if (proj->unk1 > 0) {
        r5 = QS(proj->unk1 + 4) >> 1;
    } else {
        r5 = QS(proj->unk1 - 4) >> 1;
    }

    proj->unkC += 0x10;
    r2 += proj->unkC;
    proj->unkA += 1;
    r5 += proj->unk1;

    proj->qPos.y += r2;
    proj->qPos.x += r5 >> 1;
}

void sub_8060654(void)
{
    GuruGuru *enemy = TASK_DATA(gCurTask);

    AnimCmdResult acmdRes = sub_8060704(enemy);

    if (sub_8060774(enemy) == TRUE) {
        TaskDestroy(gCurTask);
        return;
    }

    if (acmdRes == ACMD_RESULT__ENDED) {
        Sprite *s = &enemy->s;

        if (s->frameFlags & SPRITE_FLAG(X_FLIP, 1)) {
            SPRITE_FLAG_CLEAR(s, X_FLIP);
        } else {
            SPRITE_FLAG_SET(s, X_FLIP);
        }

        s->anim = gUnknown_080D2004[0].anim;
        s->variant = gUnknown_080D2004[0].variant;

        gCurTask->main = Task_GuruGuru;
    }
}

void sub_80606CC(GuruGuru *enemy)
{
    Sprite *s = &enemy->s;

    if (s->frameFlags & SPRITE_FLAG(X_FLIP, 1)) {
        if (enemy->qPos.x <= enemy->qRight) {
            enemy->qPos.x += Q(0.5);

            if (enemy->qPos.x > enemy->qRight) {
                enemy->qPos.x = enemy->qRight;
            }
        }
    } else {
        if (enemy->qPos.x >= enemy->qLeft) {
            enemy->qPos.x -= Q(0.5);

            if (enemy->qPos.x < enemy->qLeft) {
                enemy->qPos.x = enemy->qLeft;
            }
        }
    }
}

AnimCmdResult sub_8060704(GuruGuru *enemy)
{
    AnimCmdResult acmdRes;

    Sprite *s = &enemy->s;
    s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region[1]) - gCamera.y;

    acmdRes = UpdateSpriteAnimation(s);
    DisplaySprite(s);

    return acmdRes;
}

bool32 sub_8060748(GuruGuru *enemy, EnemyUnknownStruc0 *param1)
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

bool32 sub_8060774(GuruGuru *enemy)
{
    EnemyUnknownStruc0 unk;

    unk.unk4 = sub_8060748(enemy, &unk);
    unk.spr = &enemy->s;
    unk.posX = enemy->qUnk10.x;
    unk.posY = enemy->qUnk10.y;
    unk.regionX = enemy->region[0];
    unk.regionY = enemy->region[1];
    unk.me = enemy->me;
    unk.spriteX = enemy->spriteX;

    return sub_805C280(&unk);
}

void TaskDestructor_GuruGuru(struct Task *t)
{
    GuruGuru *enemy = TASK_DATA(t);
    VramFree(enemy->s.tiles);
}

void CreateGuruGuruProjectile(s32 qPosX, s32 qPosY, u16 regionX, u16 regionY, u8 param4)
{
    struct Task *t = TaskCreate(Task_GuruGuruProjectileInit, sizeof(GuruGuruProjectile), 0x4040, 0, TaskDestructor_GuruGuruProjectile);
    GuruGuruProjectile *proj = TASK_DATA(t);

    proj->qPos.x = qPosX;
    proj->qPos.y = qPosY;
    proj->region[0] = regionX;
    proj->region[1] = regionY;
    proj->unk0 = 0;
    proj->unk1 = param4;
    proj->unk2 = -1;
    proj->unkA = 0;
    proj->unkC = 0;
    proj->unk8 = 0;

    CpuFill16(0, &proj->reserved.b, sizeof(proj->reserved.b));

    sub_80604F0(proj);
}

void Task_GuruGuruProjectileInit(void)
{
    GuruGuruProjectile *proj = TASK_DATA(gCurTask);

    bool32 r6 = FALSE;

    UpdateProjectilePos(proj);
    DisplayProjectile(proj);
    if (CheckPlayerCollisionProj(proj) == TRUE) {
        r6 = TRUE;
    }

    if (r6 == TRUE) {
        Sprite *s = &proj->s;

        s->anim = gUnknown_080D2014[1].anim;
        s->variant = gUnknown_080D2014[1].variant;
        s->frameFlags = 0;

        gCurTask->main = Task_80608CC;
    } else {
        if (sub_8060940(proj) == 1) {
            TaskDestroy(gCurTask);
        }
    }
}

void Task_80608CC(void)
{
    GuruGuruProjectile *proj = TASK_DATA(gCurTask);

    AnimCmdResult acmdRes = DisplayProjectile(proj);
    CheckPlayerCollisionProj(proj);

    if (acmdRes == ACMD_RESULT__ENDED) {
        TaskDestroy(gCurTask);
    }
}

static AnimCmdResult DisplayProjectile(GuruGuruProjectile *proj)
{
    AnimCmdResult acmdRes;

    Sprite *s = &proj->s;
    s->x = TO_WORLD_POS_RAW(I(proj->qPos.x), proj->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(proj->qPos.y), proj->region[1]) - gCamera.y;

    acmdRes = UpdateSpriteAnimation(s);
    DisplaySprite(s);

    return acmdRes;
}

bool32 sub_8060940(GuruGuruProjectile *proj)
{
    EnemyUnknownStruc0 unk;

    unk.unk4 = FALSE;
    unk.spr = &proj->s;
    unk.posX = proj->qPos.x;
    unk.posY = proj->qPos.y;
    unk.regionX = proj->region[0];
    unk.regionY = proj->region[1];
    unk.me = NULL;
    unk.spriteX = 0;

    return sub_805C280(&unk);
}

void TaskDestructor_GuruGuruProjectile(struct Task *t)
{
    GuruGuruProjectile *proj = TASK_DATA(t);
    VramFree(proj->s.tiles);
}
#endif

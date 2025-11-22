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
    /* 0x05 */ u8 meX;
    /* 0x06 */ u8 unk6;
    /* 0x07 */ s8 direction;
    /* 0x08 */ u16 unk8;
    /* 0x0A */ u16 region[2];
    /* 0x0E */ u16 unkE;
    /* 0x10 */ s32 unk10;
    /* 0x14 */ Vec2_32 qUnk14;
    /* 0x1C */ Vec2_32 qPos;
    /* 0x24 */ Sprite s;
    /* 0x4C */ Sprite s2;
    /* 0x54 */ Hitbox reserved;
} Ape; /* size: 0x7C */

typedef struct {
    /* 0x00 */ u8 unk0;
    /* 0x01 */ s8 unk1;
    /* 0x02 */ s8 unk2;
    /* 0x03 */ u8 unk3;
    /* 0x04 */ u16 region[2];
    /* 0x08 */ u16 unk8;
    /* 0x0A */ u16 unkA;
    /* 0x0C */ u16 unkC;
    /* 0x0E */ u16 unkE;
    /* 0x10 */ Vec2_32 qPos;
    /* 0x18 */ Sprite s;
    /* 0x40 */ Hitbox reserved;
} ApeProjectile; /* size: 0x48 */

void Task_ApeMain(void);
void sub_805A674(Ape *);
void Task_805A7F0(void);
void sub_805A8B0(Ape *);
bool32 sub_805A964(Ape *);
AnimCmdResult sub_805AA10(Ape *);
bool32 sub_805ABE4(ApeProjectile *);
bool32 sub_805ACB4(Ape *);
void Task_805ADC8(void);
void sub_805ADF8(ApeProjectile *);
AnimCmdResult sub_805AE30(ApeProjectile *);
static void InitSpriteProjectile(ApeProjectile *proj);
void TaskDestructor_Ape(struct Task *t);
void CreateApeProjectile(s32 qPosX, s32 qPosY, u16 regionX, u16 regionY, s8 param4);
void TaskDestructor_ApeProjectile(struct Task *t);

extern const TileInfo2 gUnknown_080D1ECC[6]; // Buzzer
extern const TileInfo2 gUnknown_080D1EE4[2]; // proj

#define isBetween(v, min, onePastMax) (((v) >= (min)) && ((v) < onePastMax))

void CreateEntity_Ape_0(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_ApeMain, sizeof(Ape), 0x2100, 0, TaskDestructor_Ape);
    Ape *enemy = TASK_DATA(t);
    s32 qX, qY;

    enemy->me = me;
    enemy->meX = me->x;
    enemy->id = id;
    enemy->region[0] = regionX;
    enemy->region[1] = regionY;

    qX = Q(me->x * TILE_WIDTH);
    enemy->qPos.x = qX;
    qY = Q(me->y * TILE_WIDTH);
    enemy->qPos.y = qY;

    enemy->qUnk14.x = qX;
    enemy->qUnk14.y = qY;
    enemy->unk8 = 0xC0;
    enemy->unkE = 22;
    enemy->unk6 = 0;

    CpuFill16(0, &enemy->reserved.b, sizeof(enemy->reserved.b));
    CpuFill16(0, &enemy->s2.hitboxes[0].b, sizeof(enemy->s2.hitboxes[0].b));
    CpuFill16(0, &enemy->s.hitboxes[0].b, sizeof(enemy->s.hitboxes[0].b));

    sub_805A674(enemy);

    SET_MAP_ENTITY_INITIALIZED(me);
}

void CreateEntity_Ape_1(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_ApeMain, sizeof(Ape), 0x2100, 0, TaskDestructor_Ape);
    Ape *enemy = TASK_DATA(t);
    s32 qX, qY;

    enemy->me = me;
    enemy->meX = me->x;
    enemy->id = id;
    enemy->region[0] = regionX;
    enemy->region[1] = regionY;

    qX = Q(me->x * TILE_WIDTH);
    enemy->qPos.x = qX;
    qY = Q(me->y * TILE_WIDTH);
    enemy->qPos.y = qY;

    enemy->qUnk14.x = qX;
    enemy->qUnk14.y = qY;
    enemy->unk8 = 0x40;
    enemy->unkE = 22;
    enemy->unk6 = 0;

    CpuFill16(0, &enemy->reserved.b, sizeof(enemy->reserved.b));
    CpuFill16(0, &enemy->s2.hitboxes[0].b, sizeof(enemy->s2.hitboxes[0].b));
    CpuFill16(0, &enemy->s.hitboxes[0].b, sizeof(enemy->s.hitboxes[0].b));

    sub_805A674(enemy);

    SET_MAP_ENTITY_INITIALIZED(me);
}

void sub_805A674(Ape *enemy)
{
    void *tiles = VramMalloc(MAX_TILES(ANIM_APE) + MAX_TILES_VARIANT(ANIM_APE, 2));
    Sprite *s = &enemy->s;
    s->tiles = tiles;
    tiles += gUnknown_080D1ECC[2].numTiles * TILE_SIZE_4BPP;

    s->anim = gUnknown_080D1ECC[2].anim;
    s->variant = gUnknown_080D1ECC[2].variant;
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

    s = &enemy->s2;
    s->tiles = tiles;

    s->anim = gUnknown_080D1ECC[0].anim;
    s->variant = gUnknown_080D1ECC[0].variant;
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

void Task_ApeMain(void)
{
    Ape *enemy = TASK_DATA(gCurTask);

    if ((gStageData.unk4 != 1) && (gStageData.unk4 != 2) && (gStageData.unk4 != 4)) {
        sub_805A8B0(enemy);
    }

    if (sub_805ACB4(enemy) == TRUE) {
        TaskDestroy(gCurTask);
        return;
    }

    sub_805AA10(enemy);

    if ((sub_805A964(enemy) == TRUE) && ((gStageData.timer - enemy->unk10) >= 120)) {
        Sprite *s = &enemy->s2;
        s->anim = gUnknown_080D1ECC[1].anim;
        s->variant = gUnknown_080D1ECC[1].variant;

        gCurTask->main = Task_805A7F0;
        return;
    }
}

void Task_805A7F0(void)
{
    Ape *enemy = TASK_DATA(gCurTask);
    AnimCmdResult acmdRes;

    acmdRes = sub_805AA10(enemy);

    if (sub_805ACB4(enemy) == TRUE) {
        TaskDestroy(gCurTask);
        return;
    }

    if ((gStageData.unk4 != 1) && (gStageData.unk4 != 2) && (gStageData.unk4 != 4)) {
        s8 dir;

        if (enemy->unkE > 22 && enemy->unk6 == 0) {
            if (enemy->s2.frameFlags & SPRITE_FLAG(X_FLIP, 1)) {
                dir = +1;
            } else {
                dir = -1;
            }

            CreateApeProjectile(enemy->qPos.x, enemy->qPos.y, enemy->region[0], enemy->region[1], dir);
            enemy->unk6 = 1;
        } else {
            enemy->unkE--;
        }

        if (acmdRes == ACMD_RESULT__ENDED) {
            Sprite *s = &enemy->s2;
            s->anim = gUnknown_080D1ECC[0].anim;
            s->variant = gUnknown_080D1ECC[0].variant;
            enemy->unk10 = gStageData.timer;
            enemy->unkE = 22;
            enemy->unk6 = 0;

            gCurTask->main = Task_ApeMain;
        }
    }
}

// (95.40%) https://decomp.me/scratch/Yc4F3
NONMATCH("asm/non_matching/game/enemies/ape__sub_805A8B0.inc", void sub_805A8B0(Ape *enemy))
{
    u32 r1 = 160;
    u16 theta;
    u32 chk;
    Sprite *s2 = &enemy->s2;

    chk = enemy->unk8;
    if (((chk > 44) && (enemy->unk8 < 85)) || ((chk > 172) && (enemy->unk8 < 213))) {
        enemy->unk8 += 3;
    } else {
        enemy->unk8 += 1;
    }
    // _0805A8D6

    if (enemy->unk8 > 224) {
        enemy->unk8 = 32;
    }

    if ((enemy->unk8 > 96) && (enemy->unk8 < r1)) {
        enemy->unk8 = r1;
    }

    if (((u16)(enemy->unk8 - 1) <= 62) || ((u16)(enemy->unk8 - 193) <= 62)) {
        SPRITE_FLAG_SET(s2, X_FLIP);
    } else {
        SPRITE_FLAG_CLEAR(s2, X_FLIP);
    }

    enemy->qPos.x = enemy->qUnk14.x + COS_24_8((u8)enemy->unk8 * 4) * 32;
    enemy->qPos.y = enemy->qUnk14.y + ABS(SIN_24_8((u8)enemy->unk8 * 4) * 32) - Q(10);
}
END_NONMATCH

NONMATCH("asm/non_matching/game/enemies/ape__sub_805A964.inc", bool32 sub_805A964(Ape *enemy))
{
    Sprite *s = &enemy->s2;
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

        if (((((u16)dir > 0) && (((u16)dir - 1) < 256)) && (s->frameFlags & SPRITE_FLAG_MASK_X_FLIP))
            || ((((u16)(dir + (-Q(1) - 1)) <= 510)) && (s->frameFlags & SPRITE_FLAG_MASK_X_FLIP))) {

            return TRUE;
        }
    }

    return FALSE;
}
END_NONMATCH

AnimCmdResult sub_805AA10(Ape *enemy)
{
    AnimCmdResult acmdRes;
    u8 i = 0;

    Sprite *s = &enemy->s2;
    s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region[1]) - gCamera.y;

    acmdRes = UpdateSpriteAnimation(s);
    DisplaySprite(s);

    for (i = 0; i < 5; i++) {
        s32 ix16;

        s = &enemy->s;
        s->x = I(enemy->qPos.x + ((enemy->qUnk14.x - enemy->qPos.x) >> 6) * (ix16 = i * 16));
        s->x += (enemy->region[0] << 8) - gCamera.x;
        s->y = I(enemy->qPos.y + ((enemy->qUnk14.y - enemy->qPos.y) >> 6) * ix16);
        s->y += (enemy->region[1] << 8) - gCamera.y;

        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }

    return acmdRes;
}

static void InitSpriteProjectile(ApeProjectile *proj)
{
    void *tiles = VramMalloc(MAX_TILES(ANIM_APE_PROJ) + MAX_TILES(ANIM_CONDOR_PROJ_EXPLOSION));
    Sprite *s = &proj->s;
    s->tiles = tiles;
    tiles += gUnknown_080D1EE4[0].numTiles * TILE_SIZE_4BPP;

    s->anim = gUnknown_080D1EE4[0].anim;
    s->variant = gUnknown_080D1EE4[0].variant;
    s->prevVariant = -1;
    s->x = I(proj->qPos.x) - gCamera.x;
    s->y = I(proj->qPos.y) - gCamera.y;
    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 0);
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;

    UpdateSpriteAnimation(s);
}

void Task_ApeProjectileInit(void)
{
    ApeProjectile *proj = TASK_DATA(gCurTask);
    bool32 r5 = FALSE;
    s32 worldX, worldY;
    s32 res;

    if (((gStageData.unk4 != 1) && (gStageData.unk4 != 2) && (gStageData.unk4 != 4)) && (proj->unk0 == 0 || proj->unk0 == 1)) {
        sub_805ADF8(proj);
    }

    sub_805AE30(proj);
    sub_805ABE4(proj);

    worldX = I(proj->qPos.x);
    worldY = I(proj->qPos.y);

    worldX = TO_WORLD_POS_RAW(I(proj->qPos.x), proj->region[0]);
    worldY = TO_WORLD_POS_RAW(I(proj->qPos.y), proj->region[1]);

    res = sub_8052394(worldY, worldX, 1, +8, 0, sub_805217C);

    if (res < 0) {
        proj->qPos.y += Q(res);
        proj->unk0++;
        proj->unkC = 0;
        proj->unk2 = -1;

        if (proj->unk0 >= 2) {
            proj->unk0 = 2;
        }
    }

    if (proj->unk0 != 0) {
        proj->unk8++;
    }

    if ((proj->unk0 == 2) && (proj->unk8 >= 60)) {
        Sprite *s = &proj->s;

        s->anim = gUnknown_080D1EE4[1].anim;
        s->variant = gUnknown_080D1EE4[1].variant;
        s->frameFlags = SPRITE_FLAG(PRIORITY, 0);

        gCurTask->main = Task_805ADC8;
    }
}

bool32 sub_805ABE4(ApeProjectile *proj)
{
    s32 worldX, worldY;
    Sprite *s;
    u8 i;

    Player *p = NULL;

    worldX = I(proj->qPos.x);
    worldY = I(proj->qPos.y);

    worldX = TO_WORLD_POS_RAW(worldX, proj->region[0]);
    worldY = TO_WORLD_POS_RAW(worldY, proj->region[1]);

    s = &proj->s;
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

bool32 sub_805AC88(Ape *enemy, EnemyUnknownStruc0 *param1)
{
    Sprite *s;

    param1->me = NULL;
    param1->meX = 0;
    param1->unk4 = 0;

    s = &enemy->s2;
    param1->spr = s;
    param1->posX = enemy->qPos.x;
    param1->posY = enemy->qPos.y;
    param1->regionX = enemy->region[0];
    param1->regionY = enemy->region[1];

    return sub_805C63C(param1);
}

bool32 sub_805ACB4(Ape *enemy)
{
    EnemyUnknownStruc0 unk;

    unk.unk4 = sub_805AC88(enemy, &unk);
    unk.spr = &enemy->s2;
    unk.posX = enemy->qUnk14.x;
    unk.posY = enemy->qUnk14.y;
    unk.regionX = enemy->region[0];
    unk.regionY = enemy->region[1];
    unk.me = enemy->me;
    unk.meX = enemy->meX;

    return sub_805C280(&unk);
}

void TaskDestructor_Ape(struct Task *t)
{
    Ape *enemy = TASK_DATA(t);
    VramFree(enemy->s.tiles);
}

void CreateApeProjectile(s32 qPosX, s32 qPosY, u16 regionX, u16 regionY, s8 param4)
{
    struct Task *t = TaskCreate(Task_ApeProjectileInit, sizeof(ApeProjectile), 0x4040, 0, TaskDestructor_ApeProjectile);
    ApeProjectile *proj = TASK_DATA(t);

    proj->qPos.x = qPosX + Q(param4 * 5);
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
    CpuFill16(0, &proj->s.hitboxes[0].b, sizeof(proj->s.hitboxes[0].b));

    InitSpriteProjectile(proj);
}

void Task_805ADC8(void)
{
    ApeProjectile *proj = TASK_DATA(gCurTask);

    AnimCmdResult acmdRes = sub_805AE30(proj);

    sub_805ABE4(proj);

    if (acmdRes == ACMD_RESULT__ENDED) {
        TaskDestroy(gCurTask);
        return;
    }
}

// (90.54%) https://decomp.me/scratch/8nsAg
NONMATCH("asm/non_matching/game/enemies/ape__sub_805ADF8.inc", void sub_805ADF8(ApeProjectile *proj))
{
#ifndef NON_MATCHING
    register s32 r1 asm("r1");
    s16 r2 = proj->unk2;
    register s32 r3 asm("r3") = proj->unk1;
#else
    s32 r1;
    s16 r2 = proj->unk2;
    s32 r3 = proj->unk1;
#endif

    proj->unkC += 0x20;
    r2 = (((Q(r2) * 2) << 16) >> 16) + proj->unkC;

    proj->unkA++;
    r1 = r3;
    r3 = Q(r3) + r1;

    proj->qPos.y += r2;
    proj->qPos.x += ((r3 << 16) >> 17);
}
END_NONMATCH

AnimCmdResult sub_805AE30(ApeProjectile *proj)
{
    AnimCmdResult acmdRes;

    Sprite *s = &proj->s;
    s->x = TO_WORLD_POS_RAW(I(proj->qPos.x), proj->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(proj->qPos.y), proj->region[1]) - gCamera.y;

    acmdRes = UpdateSpriteAnimation(s);
    DisplaySprite(s);

    return acmdRes;
}

void TaskDestructor_ApeProjectile(struct Task *t)
{
    ApeProjectile *proj = TASK_DATA(t);
    VramFree(proj->s.tiles);
}
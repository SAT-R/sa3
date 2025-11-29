#include "global.h"
#include "core.h"
#include "trig.h"
#include "malloc_vram.h"
#include "game/camera.h"
#include "game/enemy_unknown.h"
#include "game/entity.h"
#include "game/stage.h"

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
    /* 0x06 */ u8 unk6;
    /* 0x07 */ u8 unk7;
    /* 0x08 */ u16 unk8[NUM_BODY_SEGMENTS];
    /* 0x12 */ u16 region[2];
    /* 0x12 */ u16 unk16[2];
    /* 0x1A */ u16 unk1A[NUM_BODY_SEGMENTS];
    /* 0x24 */ u16 unk24;
    /* 0x26 */ u8 filler26[0x2];
    /* 0x60 */ Vec2_32 qUnk28;
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
void Task_805D3EC(void);
bool32 sub_805D5F0(Uutsubo *enemy);
void sub_805D708(Uutsubo *enemy, Vec2_32 *param2, u16 *param3, s32 param4);
bool32 sub_805D8D4(Uutsubo *enemy);
bool32 sub_805D9C0(Uutsubo *enemy, Sprite2 *s, Vec2_32 *param2);
AnimCmdResult sub_805DADC(Uutsubo *enemy);
void Task_805DDCC(void);
void sub_805DEC4(struct Task *t);
bool32 sub_805DE9C(Uutsubo *enemy, Sprite2 *s, Vec2_32 *arg2, EnemyUnknownStruc0 *strc);

extern const TileInfo2 gUnknown_080D1F4C[2];

typedef struct Stack_805D47C {
    Vec2_32 sp0;
    Vec2_32 sp8;
    s32 result;
} Stack_805D47C;

typedef struct {
    MapEntity *me;
    bool32 unk4;
    s8 meX;
    u8 filler9[0x3];
    u16 regionX;
    u16 regionY;
    s32 posX;
    s32 posY;
    s32 unk18;
    Sprite *spr;
    u8 filler20[0x8];
} EnemyUnknownStruc0__;

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

void sub_805D314()
{
    Vec2_32 *temp_r6;
    AnimCmdResult temp_r7;
    u16 temp_r0;
    u8 var_r3;

    Uutsubo *enemy = TASK_DATA(gCurTask);

    temp_r7 = sub_805DADC(enemy);
    if (((u32)(u8)(gStageData.unk4 - 1) > 1U) && (gStageData.unk4 != 4)) {
        temp_r6 = &enemy->qPos;
        sub_805D708(enemy, temp_r6, &enemy->unk16[1], 0);
        if (temp_r7 == 0) {
            enemy->s.prevVariant = -1;
            enemy->s.prevAnim = 255;
            enemy->s.qAnimDelay = 0;
        }

        if (enemy->unk16[0] < 0x80) {
            enemy->unk16[0]++;

            if (sub_805D9C0(enemy, &enemy->s, temp_r6) == 1) {
                TaskDestroy(gCurTask);
            }
        } else {
            enemy->unk16[0] = 0;
            enemy->unk16[1] = 0;

            for (var_r3 = 0; var_r3 < 5; var_r3++) {
                enemy->unk1A[var_r3] = 0;
            }

            gCurTask->main = Task_805D3EC;
        }
    }
}

void Task_805D3EC(void)
{
    Uutsubo *enemy = TASK_DATA(gCurTask);

    if ((gStageData.unk4 != 1) && (gStageData.unk4 != 2) && (gStageData.unk4 != 4)) {
        if (sub_805D5F0(enemy) == TRUE) {
            sub_805DADC(enemy);
            enemy->unk6 = 0;
            CpuFill16(0, enemy->unk8, sizeof(enemy->unk8));
            gCurTask->main = Task_805DDCC;
            return;
        }
    }

    sub_805DADC(enemy);
    if (sub_805D9C0(enemy, &enemy->s, &enemy->qPos) == 1) {
        TaskDestroy(gCurTask);
    }
}

// (58.55%) https://decomp.me/scratch/YB6m6
NONMATCH("asm/non_matching/game/enemies/uutsubo__sub_805D47C.inc", bool32 sub_805D47C(Uutsubo *enemy))
{
    Stack_805D47C stack;
    s32 var_r1;
    s32 var_r3;
    s32 var_r3_2;
    s32 var_r4;
    u16 *var_sb;
    u16 temp_r0;
    u8 i;
    u8 var_r2_2;
    u16 unk8;

    stack.sp8.x = enemy->qUnk28.x - Q(TO_WORLD_POS(0, enemy->region[0]));
    stack.sp8.y = enemy->qUnk28.y - Q(TO_WORLD_POS(0, enemy->region[1]));
    stack.sp0.x = enemy->qHeadPos.x;
    stack.sp0.y = enemy->qHeadPos.y;
    enemy->qPos.y = enemy->qHeadPos.y + (((stack.sp8.y - enemy->qHeadPos.y) >> 6) * (enemy->unk8[0] >> 6));
    enemy->qPos.x = enemy->qHeadPos.x + (((stack.sp8.x - enemy->qHeadPos.x) >> 6) * (enemy->unk8[0] >> 6));
    enemy->unk8[0] += 0x80;
    if ((enemy->unk8[0] >> 0x6) < 0x40) {
        if (enemy->tf.rotation == 0) {
            var_r1 = ABS(enemy->qPos.x - enemy->qHeadPos.x);

            if (var_r1 < Q(58)) {
                var_r3 = enemy->qPos.y;
                if (enemy->qPos.y != 0) {
                    goto block_6;
                }
                stack.result = 0;
            } else {
                stack.result = 1;
            }
        } else {
        block_6:
            if (ABS(enemy->qHeadPos.y - stack.sp0.y) > 0x39FF) {
                stack.result = 1;
            } else {
                stack.result = 0;
            }
        }
    } else {
        stack.result = 1;
    }

    enemy->qBodyPositions[0].x = enemy->qPos.x;
    enemy->qBodyPositions[0].y = enemy->qPos.y;

    for (i = 0; i < 5 - 1; i++) {
        register s32 var_r0 asm("r0");
        register s32 var_r1 asm("r1");
        if (i == 0) {
            var_r3_2 = 14;
        } else {
            var_r3_2 = 10;
        }
        if (enemy->tf.rotation == 0) {
            var_r0 = enemy->qBodyPositions[i].x;
            var_r1 = enemy->qBodyPositions[i + 1].x;
            var_r4 = var_r0 - var_r1;
        } else {
            var_r0 = enemy->qBodyPositions[i].y;
            var_r1 = enemy->qBodyPositions[i + 1].y;
            var_r4 = var_r0 - var_r1;
        }
        if (var_r4 < 0) {
            var_r4 = var_r0 - var_r1;
        }
        if (var_r4 >= Q(var_r3_2)) {
            stack.sp0.x = enemy->qHeadPos.x;
            stack.sp0.y = enemy->qHeadPos.y;
            enemy->qBodyPositions[i + 2].x += ((u16)enemy->unk8[i] >> 6) * ((s32)(stack.sp8.y - enemy->qHeadPos.y) >> 6);
            enemy->qBodyPositions[i + 2].x += ((u16)enemy->unk8[i] >> 6) * ((s32)(stack.sp8.x - enemy->qHeadPos.x) >> 6);
            enemy->unk8[i] += 0x80;
        }
    }

    return stack.result;
}
END_NONMATCH

// (48.36%) https://decomp.me/scratch/nPgUO
NONMATCH("asm/non_matching/game/enemies/uutsubo__sub_805D5F0.inc", bool32 sub_805D5F0(Uutsubo *enemy))
{
    s32 sp14;
    Vec2_32 *temp_r3_3;
    s16 *temp_r5_3;
    s16 temp_r0;
    s16 temp_r1_2;
    s32 *temp_r4_2;
    s32 temp_r3;
    s32 temp_r3_2;
    s32 temp_r5;
    s32 temp_r5_2;
    s32 temp_r6;
    u16 temp_r1;
    u32 temp_r4;
    u8 var_r3;
    u8 var_r8;

    var_r8 = 0;
    temp_r5 = enemy->qHeadPos.x;
    temp_r3 = enemy->qHeadPos.y;
    temp_r4 = enemy->unk8[0] >> 6;
    enemy->qPos.y = temp_r3 + (temp_r4 * ((s32)((enemy->qUnk28.y - Q(TO_WORLD_POS(0, enemy->region[1]))) - temp_r3) >> 6));
    enemy->qPos.x = temp_r5 + (temp_r4 * ((s32)((enemy->qUnk28.x - Q(TO_WORLD_POS(0, enemy->region[0]))) - temp_r5) >> 6));
    enemy->unk8[0] -= 64;
    if ((enemy->unk8[0] >> 6) > 0x3FU) {
        enemy->unk8[0] = 0;
        var_r8 = 1;
    }
    enemy->qBodyPositions[0].x = enemy->qPos.x;

    for (var_r3 = 0; var_r3 < 4; var_r3++) {
        enemy->qBodyPositions[(var_r3 + 1)].y = enemy->qHeadPos.y;
        enemy->qBodyPositions[(var_r3 + 1)].x = enemy->qHeadPos.x;
        enemy->qBodyPositions[(var_r3 + 1)].y
            += ((u16)enemy->unk8[(var_r3 + 1)] >> 6) * ((s32)((enemy->qUnk28.y - (enemy->region[1] << 0x10)) - enemy->qHeadPos.y) >> 6);
        enemy->qBodyPositions[(var_r3 + 1)].x
            += ((u16)enemy->unk8[(var_r3 + 1)] >> 6) * ((s32)((enemy->qUnk28.x - (enemy->region[0] << 0x10)) - enemy->qHeadPos.x) >> 6);
        enemy->unk8[(var_r3 + 1)] = enemy->unk8[(var_r3 + 1)] - 64;
        if ((enemy->unk8[(var_r3 + 1)] >> 6) > 0x3FU) {
            enemy->unk8[(var_r3 + 1)] = 0;
            var_r8 += 1;
        }
    }

    if (var_r8 == 5) {
        return TRUE;
    }

    return FALSE;
}
END_NONMATCH

void sub_805D708(Uutsubo *enemy, Vec2_32 *param2, u16 *param3, s32 param4)
{
    s32 var_r3;
    s32 var_r4;
    u8 i;

    if (enemy->unk16[1] < 0x100U) {
        enemy->unk16[1] += 2;
    } else {
        enemy->unk16[1] = 0;
    }
    if (enemy->tf.rotation == 0) {
        enemy->qPos.x -= COS_24_8((((*param3 * 8) & 0xFF) * 4));
        enemy->qPos.y += SIN_24_8((((*param3 * 4) & 0xFF) * 4));
    } else {
        enemy->qPos.x += SIN_24_8((((*param3 * 4) & 0xFF) * 4));
        enemy->qPos.y -= COS_24_8((((*param3 * 8) & 0xFF) * 4));
    }

    enemy->qBodyPositions[0].x = enemy->qPos.x;
    enemy->qBodyPositions[0].y = enemy->qPos.y;

    for (i = 0; i < 4; i++) {
        if (i == 0) {
            var_r3 = 7;
        } else {
            var_r3 = 5;
        }

        if (enemy->tf.rotation == 0) {
            var_r4 = ABS(enemy->qBodyPositions[i].x - enemy->qBodyPositions[i + 1].x);
        } else {
            var_r4 = ABS(enemy->qBodyPositions[i].y - enemy->qBodyPositions[i + 1].y);
        }

        if (var_r4 >= Q(var_r3)) {
            if (enemy->unk1A[(i + 1)] < 0x100U) {
                enemy->unk1A[(i + 1)] += 2;
            } else {
                enemy->unk1A[(i + 1)] = 0;
            }

            if (enemy->tf.rotation == 0) {
                enemy->qBodyPositions[(i + 1)].x -= COS_24_8((((enemy->unk1A[(i + 1)] - ((i + 1) * 2)) * 8) & 0xFF) * 4) >> (i + 1);
                enemy->qBodyPositions[(i + 1)].y += SIN_24_8((((enemy->unk1A[(i + 1)] - ((i + 1) * 2)) * 4) & 0xFF) * 4) >> (i + 1);
            } else {
                enemy->qBodyPositions[(i + 1)].x += SIN_24_8((((enemy->unk1A[(i + 1)] - ((i + 1) * 2)) * 4) & 0xFF) * 4) >> (i + 1);
                enemy->qBodyPositions[(i + 1)].y -= COS_24_8((((enemy->unk1A[(i + 1)] - ((i + 1) * 2)) * 8) & 0xFF) * 4) >> (i + 1);
            }
        }
    }
}

bool32 sub_805D8D4(Uutsubo *enemy)
{
    Player *p;
    s32 dx, dy;
    u8 i;
    s32 max;

    for (i = 0, max = Q(5); i < 2; i++) {
        p = sub_805CD20(i);
        if (p == NULL)
            break;

        if (enemy->tf.rotation == 0) {
            dy = p->qWorldY - (enemy->region[1] << 0x10);
            if (ABS(dy - enemy->qPos.y) <= max) {
                if ((!(enemy->s.frameFlags & 0x400) && ((p->qWorldX - Q(TO_WORLD_POS(0, enemy->region[0]))) <= enemy->qPos.x))
                    || ((enemy->s.frameFlags & 0x400) && (p->qWorldX - Q(TO_WORLD_POS(0, enemy->region[0])) >= enemy->qPos.x))) {
                    enemy->qUnk28.x = p->qWorldX;
                    enemy->qUnk28.y = p->qWorldY;
                    return TRUE;
                }
            }
        } else {
            dx = p->qWorldX - Q(TO_WORLD_POS(0, enemy->region[0]));
            if (ABS(dx - enemy->qPos.x) <= max) {
                u32 rot = enemy->tf.rotation;
                if (((rot == 0x100) && ((p->qWorldY - Q(TO_WORLD_POS(0, enemy->region[1]))) <= enemy->qPos.y))
                    || ((rot == 0x300) && ((p->qWorldY - Q(TO_WORLD_POS(0, enemy->region[1]))) >= enemy->qPos.y))) {
                blk:
                    enemy->qUnk28.x = p->qWorldX;
                    enemy->qUnk28.y = p->qWorldY;
                    return TRUE;
                }
            }
        }
    }

    return FALSE;
}

bool32 sub_805D9C0(Uutsubo *enemy, Sprite2 *unused_s, Vec2_32 *param2)
{
    EnemyUnknownStruc0 strc;
    Sprite2 *s;
    Vec2_16 sp28;
    Vec2_32 *qPos;
    u32 res;
    SpriteTransform *tf = &enemy->tf;
    u8 i = 0;
    Vec2_16 *pSP28 = &sp28;

    for (i = 0; i < 4; i++) {
        if (i == 2 || i == 3) {
            qPos = &enemy->qBodyPositions[i];
            s = &enemy->s2;
            strc.unk4 = sub_805DE9C(enemy, s, qPos, &strc);
            strc.spr = (Sprite *)s;
            strc.posX = qPos->x;
            strc.posY = qPos->y;
            strc.regionX = enemy->region[0];
            strc.regionY = enemy->region[1];
            strc.me = enemy->me;
            strc.meX = enemy->meX;
        }
    }

    qPos = &enemy->qPos;
    s = &enemy->s;
    strc.unk4 = sub_805DE9C(enemy, s, qPos, &strc);
    strc.spr = (Sprite *)&enemy->s;
    strc.posX = Q(s->x + gCamera.x);
    strc.posY = Q(s->y + gCamera.y);
    strc.regionX = 0U;
    strc.regionY = 0U;
    strc.me = enemy->me;
    strc.meX = enemy->meX;

    pSP28->x = 0U;
    pSP28->y = 0U;

    if (tf->rotation == 0x100) {
        pSP28->x = 20;
        pSP28->y = 22;
    } else if (tf->rotation == 0x300) {
        pSP28->x = 10;
        pSP28->y = 50;
    }

    strc.spr->x += pSP28->x;
    strc.spr->y += pSP28->y;
    res = sub_805C280(&strc);
    strc.spr->x -= pSP28->x;
    strc.spr->y -= pSP28->y;

    return res;
}

// TODO: Fake-matches
AnimCmdResult sub_805DADC(Uutsubo *enemy)
{
    Vec2_16 worldPos;
    Vec2_16 *pWorldPos = &worldPos;
    AnimCmdResult acmdRes;
    Sprite2 *s;
    SpriteTransform *tf;
    u8 i;
    s32 v;

    {
#ifndef NON_MATCHING
        s32 x = TO_WORLD_POS(0, enemy->region[0]) - gCamera.x;
        asm("strh %0, [%1]" ::"r"(x), "r"(&pWorldPos->x));
#else
        pWorldPos->x = (TO_WORLD_POS(0, enemy->region[0]) - gCamera.x);
#endif
        pWorldPos->y = (TO_WORLD_POS(0, enemy->region[1]) - gCamera.y);
    }

    s = &enemy->s;
    s->x = I(enemy->qPos.x) + worldPos.x;

#ifndef NON_MATCHING
    asm("ldr    r1, [%0, #0x64]\n"
        "asr    r1, r1, #8\n"
        "mov r0, %1\n"
        "ldrh r0, [r0, #2]\n"
        "add r0, r1\n"
        "strh r0, [%2, #0x12]\n" ::"r"(enemy),
        "r"(&worldPos), "r"(s)
        : "r0", "r1");
#else
    s->y = I(enemy->qPos.y) + pWorldPos->y;
#endif

    if (s->frameFlags & 0x20) {
        tf = &enemy->tf;
        tf->x = s->x;
        tf->y = s->y;
        TransformSprite((Sprite *)s, tf);
    }
    acmdRes = UpdateSpriteAnimation((Sprite *)s);
    DisplaySprite((Sprite *)s);

    for (i = 1; i < 5; i++) {
        s = &enemy->s2;
        s->x = I(enemy->qBodyPositions[i].x) + worldPos.x;
        s->y = I(enemy->qBodyPositions[i].y) + worldPos.y;

        if (s->frameFlags & 0x20) {
            tf = &enemy->tf;
            tf->x = s->x;
            tf->y = s->y;
            TransformSprite((Sprite *)s, tf);
        }
        DisplaySprite((Sprite *)s);
    }

    s = &enemy->s2;
    s->x = I(enemy->qHeadPos.x) + worldPos.x;
    s->y = I(enemy->qHeadPos.y) + worldPos.y;
    if (s->frameFlags & 0x20) {
        tf = &enemy->tf;
        tf->x = s->x;
        tf->y = s->y;
        TransformSprite((Sprite *)s, tf);
    }
    DisplaySprite((Sprite *)s);
    return acmdRes;
}

void CreateEntity_Uutsubo_1(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    Uutsubo *enemy;

    enemy = TASK_DATA(TaskCreate(Task_805DDCC, sizeof(Uutsubo), 0x2100U, 0U, sub_805DEC4));
    CreateEntity_Uutsubo_Shared(enemy, me, regionX, regionY, id);
    sub_805D188(enemy, UUTYPE_B);
    SET_MAP_ENTITY_INITIALIZED(me);
}

void CreateEntity_Uutsubo_0(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    Uutsubo *enemy;

    enemy = TASK_DATA(TaskCreate(Task_805DDCC, sizeof(Uutsubo), 0x2100U, 0U, sub_805DEC4));
    CreateEntity_Uutsubo_Shared(enemy, me, regionX, regionY, id);
    sub_805D188(enemy, UUTYPE_A);
    SET_MAP_ENTITY_INITIALIZED(me);
}

void CreateEntity_Uutsubo_2(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    Uutsubo *enemy;

    enemy = TASK_DATA(TaskCreate(Task_805DDCC, sizeof(Uutsubo), 0x2100U, 0U, sub_805DEC4));
    CreateEntity_Uutsubo_Shared(enemy, me, regionX, regionY, id);
    sub_805D188(enemy, UUTYPE_C);
    SET_MAP_ENTITY_INITIALIZED(me);
}

void CreateEntity_Uutsubo_3(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    Uutsubo *enemy;

    enemy = TASK_DATA(TaskCreate(Task_805DDCC, sizeof(Uutsubo), 0x2100U, 0U, sub_805DEC4));
    CreateEntity_Uutsubo_Shared(enemy, me, regionX, regionY, id);
    sub_805D188(enemy, UUTYPE_D);
    SET_MAP_ENTITY_INITIALIZED(me);
}

#include "global.h"
#include "core.h"
#include "flags.h"
#include "trig.h"
#include "malloc_vram.h"
#include "code_z_1.h"
#include "game/camera.h"
#include "game/enemy_unknown.h"
#include "game/entity.h"
#include "game/stage.h"
#include "module_unclear.h"

#define HSEN_COUNT_A 2
#define HSEN_COUNT_B 4

typedef struct Hariisen {
    /* 0x00 */ MapEntity *me;
    /* 0x04 */ u8 id;
    /* 0x05 */ u8 meX;
    /* 0x06 */ u16 region[2];
    /* 0x10 */ u16 unkA;
    /* 0x10 */ u16 unkC[2];
    /* 0x10 */ u16 unk10[HSEN_COUNT_A];
    /* 0x14 */ u16 unk14[HSEN_COUNT_B];
    /* 0x1C */ Vec2_32 qUnk1C;
    /* 0x24 */ Vec2_32 qPos;
    /* 0x2C */ Vec2_32 qUnk2C[HSEN_COUNT_A];
    /* 0x3C */ Vec2_32 qUnk3C[HSEN_COUNT_B];
    /* 0x5C */ Sprite2 s;
    /* 0x8C */ Sprite2 s2;
    /* 0xBC */ Sprite2 s3;
} Hariisen; /* 0xEC */

typedef struct HariisenProj {
    /* 0x00 */ u8 unk0[2];
    /* 0x00 */ u8 unk2[2];
    /* 0x04 */ u8 id;
    /* 0x05 */ u8 meX;
    /* 0x06 */ u16 region[2];
    /* 0x10 */ u16 unkA;
    /* 0x10 */ s32 unkC[2];
    /* 0x14 */ s32 unk14[HSEN_COUNT_B];
    /* 0x24 */ Vec2_32 qPos;
    /* 0x2C */ Vec2_32 qUnk2C[HSEN_COUNT_A];
    /* 0x3C */ Vec2_32 qUnk3C[HSEN_COUNT_B];
    /* 0x5C */ Sprite2 s;
    /* 0x8C */ Sprite2 s2;
} HariisenProj; /* 0xBC */

void Task_HariisenMain();
void sub_806132C(Hariisen *enemy);
void Task_806152C(void);
void sub_80616A0(void);
bool32 sub_806172C(Hariisen *enemy);
bool32 sub_80619EC(Hariisen *enemy);
bool32 sub_8061AC8(Hariisen *enemy);
void sub_8061E5C(HariisenProj *enemy);
AnimCmdResult sub_8061BD4(Hariisen *enemy);
void sub_80624E4(void);
AnimCmdResult sub_806253C(Hariisen *enemy);
void TaskDestructor_Hariisen(Task *);
bool32 sub_80617E0(Hariisen *enemy, u8 param1);
bool32 sub_8062580(Hariisen *enemy);
void sub_8061D3C(Vec2_32 arg0, Vec2_16 arg2, u16 *arg3, u16 *arg4);

void sub_80625FC(void);
void sub_8062638(struct Task *t);

extern const TileInfo2 gUnknown_080D2044[5];
extern const u16 gPalette_080D206C[16];
extern const u16 gPalette_080D208C[16];
extern const u16 gUnknown_080D20AC[2];
extern const u16 gUnknown_080D20B0[4];
extern const u8 gUnknown_080D20B8[12];

typedef struct Stack_806152C {
    Vec2_32 unk4;
    Vec2_16 unk8;
    u16 *unkC[2];
} Stack_806152C;

void CreateEntity_Hariisen(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    Hariisen *enemy;
    u8 i;

    enemy = TASK_DATA(TaskCreate(Task_HariisenMain, sizeof(Hariisen), 0x2100U, 0U, TaskDestructor_Hariisen));
    enemy->id = id;
    enemy->me = me;
    enemy->meX = me->x;
    enemy->region[0] = regionX;
    enemy->region[1] = regionY;
    enemy->qPos.x = Q(me->x * TILE_WIDTH);
    enemy->qPos.y = Q(me->y * TILE_WIDTH);

    for (i = 0; i < HSEN_COUNT_A; i++) {
        enemy->qUnk2C[i].x = 0;
        enemy->qUnk2C[i].y = 0;
        enemy->unk10[i] = 0;
    }

    for (i = 0; i < HSEN_COUNT_B; i++) {
        enemy->qUnk3C[i].x = 0;
        enemy->qUnk3C[i].y = 0;
        enemy->unk14[i] = 0;
    }

    enemy->qUnk1C.x = enemy->qPos.x;
    enemy->qUnk1C.y = enemy->qPos.y;
    enemy->unkA = 0;
    enemy->unkC[0] = 0;
    enemy->unkC[1] = 0;

    CpuFill16(0, &enemy->s.hitboxes[1].b, sizeof(enemy->s.hitboxes[1].b));
    CpuFill16(0, &enemy->s2.hitboxes[1].b, sizeof(enemy->s2.hitboxes[1].b));
    CpuFill16(0, &enemy->s3.hitboxes[1].b, sizeof(enemy->s3.hitboxes[1].b));

    sub_806132C(enemy);

    SET_MAP_ENTITY_INITIALIZED(me);
}

void sub_806132C(Hariisen *enemy)
{
    u8 *vram = VramMalloc(18);
    Sprite2 *s = &enemy->s;

    s->tiles = vram;
    vram += (gUnknown_080D2044[0].numTiles * TILE_SIZE_4BPP);
    s->anim = gUnknown_080D2044[0].anim;
    s->variant = gUnknown_080D2044[0].variant;
    s->prevVariant = -1;
    s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region[1]) - gCamera.y;
    s->oamFlags = 0x480;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0x1000;
    s->hitboxes[0].index = -1;
    UpdateSpriteAnimation((Sprite *)s);

    s = &enemy->s2;
    s->tiles = vram;
    vram += (gUnknown_080D2044[3].numTiles * TILE_SIZE_4BPP);
    s->anim = gUnknown_080D2044[3].anim;
    s->variant = gUnknown_080D2044[3].variant;
    s->prevVariant = -1;
    s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region[1]) - gCamera.y;
    s->oamFlags = 0x4C0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0x1000;
    s->hitboxes[0].index = -1;
    UpdateSpriteAnimation((Sprite *)s);

    s = &enemy->s3;
    s->tiles = vram;
    s->anim = gUnknown_080D2044[4].anim;
    s->variant = gUnknown_080D2044[4].variant;
    s->prevVariant = -1;
    s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region[1]) - gCamera.y;
    s->oamFlags = 0x4C0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0x1000;
    s->hitboxes[0].index = -1;
    UpdateSpriteAnimation((Sprite *)s);
}

void Task_HariisenMain()
{
    Sprite2 *s;
    s32 temp_r6;
    u32 *temp_r1_2;
    u32 *temp_r1_3;

    Hariisen *enemy = TASK_DATA(gCurTask);

    temp_r6 = sub_80617E0(enemy, 0U);

    sub_8061AC8(enemy);
    sub_806253C(enemy);
    sub_8061BD4(enemy);

    if ((gStageData.unk4 != 1) && (gStageData.unk4 != 2) && (gStageData.unk4 != 4)) {
        if ((sub_806172C(enemy) == 1) && (temp_r6 == 1)) {
            s = &enemy->s;
            s->anim = gUnknown_080D2044[1].anim;
            s->variant = gUnknown_080D2044[1].variant;
            s->frameFlags |= 0x40000;
            enemy->s2.frameFlags |= 0x40000;
            enemy->s3.frameFlags |= 0x40000;
            gCurTask->main = Task_806152C;
            return;
        }
    }

    if (sub_8062580(enemy) == 1) {
        TaskDestroy(gCurTask);
    }
}

// (94.83%) https://decomp.me/scratch/fseEW
NONMATCH("asm/non_matching/game/enemies/hariisen__Task_806152C.inc", void Task_806152C())
{
    Stack_806152C sp00;
    Sprite2 *s;
    u32 temp_r7;
    u8 var_r3;
    AnimCmdResult acmdRes;

    Hariisen *enemy = TASK_DATA(gCurTask);

    temp_r7 = sub_80617E0(enemy, 1U);
    sub_8061AC8(enemy);
    acmdRes = sub_806253C(enemy);
    sub_8061BD4(enemy);
    sub_80619EC(enemy);
    if (gStageData.unk4 != 1 && gStageData.unk4 != 2 && gStageData.unk4 != 4) {
        if ((acmdRes == ACMD_RESULT__ENDED) && (temp_r7 == 1)) {
            if (++enemy->unkA == 80) {
                s = &enemy->s;
                s->anim = gUnknown_080D2044[2].anim;
                s->variant = gUnknown_080D2044[2].variant;
                s->frameFlags &= ~0x40000;
                sp00.unk4.x = enemy->qPos.x;
                sp00.unk4.y = enemy->qPos.y;
                sp00.unk8.x = enemy->region[0];
                sp00.unk8.y = enemy->region[1];
                sp00.unkC[0] = enemy->unk10;
                sp00.unkC[1] = enemy->unk14;
                sub_8061D3C(sp00.unk4, sp00.unk8, enemy->unk10, enemy->unk14);

                for (var_r3 = 0; var_r3 < 2; var_r3++) {
                    enemy->qUnk2C[var_r3].x = 0;
                    enemy->qUnk2C[var_r3].y = 0;
                    enemy->unk10[var_r3] = 0;
                }

                for (var_r3 = 0; var_r3 < 4; var_r3++) {
                    enemy->qUnk3C[var_r3].x = 0;
                    enemy->qUnk3C[var_r3].y = 0;
                    enemy->unk14[var_r3] = 0;
                }

                enemy->unkA = 0;
                enemy->unkC[0] = 0;
                enemy->unkC[1] = 0;
                gCurTask->main = sub_80624E4;
                return;
            }
        }
        if (sub_8062580(enemy) == 1) {
            TaskDestroy(gCurTask);
        }
    }
}
END_NONMATCH

void sub_80616A0(void)
{
    Hariisen *enemy = TASK_DATA(gCurTask);

    sub_806253C(enemy);
    sub_8061AC8(enemy);

    if (gStageData.unk4 != 1 && gStageData.unk4 != 2 && gStageData.unk4 != 4) {
        if ((enemy->unkA >= 300) || (++enemy->unkA >= 300)) {
            sub_8061BD4(enemy);

            if (sub_80617E0(enemy, 0U) == 1) {
                enemy->unkA = 0;
                gCurTask->main = Task_HariisenMain;
                return;
            }
        }

        if (sub_8062580(enemy) == 1) {
            TaskDestroy(gCurTask);
        }
    }
}

bool32 sub_806172C(Hariisen *enemy)
{
    u8 i;

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        Player *p = sub_805CD20(i);
        if (p == NULL)
            break;

        {
            s32 dy = p->qWorldY - Q(TO_WORLD_POS(0, enemy->region[1]));
            if (ABS(dy - enemy->qPos.y) <= Q(DISPLAY_WIDTH / 2)) {
                s32 dx = p->qWorldX - Q(TO_WORLD_POS(0, enemy->region[0]));
                if (ABS(dx - enemy->qPos.x) <= Q(DISPLAY_WIDTH / 2)) {
                    return TRUE;
                }
            }
        }

#ifndef NON_MATCHING
        { // NOTE: This is just the exact same check as above.
            s32 dy = p->qWorldY - Q(TO_WORLD_POS(0, enemy->region[1]));
            if (ABS(dy - enemy->qPos.y) <= Q(DISPLAY_WIDTH / 2)) {
                s32 dx = p->qWorldX - Q(TO_WORLD_POS(0, enemy->region[0]));
                if (ABS(dx - enemy->qPos.x) <= Q(DISPLAY_WIDTH / 2)) {
                    return TRUE;
                }
            }
        }
#endif
    }

    return FALSE;
}

bool32 sub_80617E0(Hariisen *enemy, u8 param1)
{
    Vec2_32 sp00[2];
    s32 var_r1;
    u32 var_r2;
    u16 theta;
    u8 i;
    s32 shift = 6;
    u8 var_sb;

    var_sb = 0;
    for (i = 0; i < 2; i++) {
        sp00[0].x = 0;
        sp00[0].y = 0;
        theta = gUnknown_080D20AC[i];
        sp00[1].x = (SIN_24_8(((theta & 0xFF) * 4)) * 16) + (SIN_24_8(((theta & 0xFF) * 4)) << 1);
        sp00[1].y = (COS_24_8(((theta & 0xFF) * 4)) * 16) + (COS_24_8(((theta & 0xFF) * 4)) << 1);
        if (i != 0) {
            sp00[1].y += 0x100;
        }
        enemy->qUnk2C[i].y = sp00[0].y;
        enemy->qUnk2C[i].x = sp00[0].x;
        enemy->qUnk2C[i].y += ((sp00[1].y - sp00[0].y) >> shift) * ((enemy->unk10[i]) >> 6);
        enemy->qUnk2C[i].x += ((sp00[1].x - sp00[0].x) >> shift) * ((enemy->unk10[i]) >> 6);

        if (param1 == 1) {
            var_r2 = 0x48;
            var_r1 = 1;
        } else {
            var_r2 = 0x40;
            var_r1 = 4;
        }

        if ((u32)(enemy->unk10[i] >> 6) < var_r2) {
            enemy->unk10[i] += (1 << (var_r1 + 3));
        } else {
            enemy->unk10[i] = var_r2 << 6;
            var_sb += 1;
        }
    }

    for (i = 0; i < 4; i++) {
        sp00[0].x = 0;
        sp00[0].y = 0;
        theta = gUnknown_080D20B0[i];
        sp00[1].x = (SIN_24_8(((theta & 0xFF) * 4)) << 3) + (SIN_24_8(((theta & 0xFF) * 4)) << 2);
        sp00[1].y = (COS_24_8(((theta & 0xFF) * 4)) << 3) + (COS_24_8(((theta & 0xFF) * 4)) << 2);

        if (i < 2) {
            sp00[1].x += 0x200;
        }
        if ((i == 0) || (i == 3)) {
            sp00[1].y += 0x200;
        }

        enemy->qUnk3C[i].y = sp00[0].y;
        enemy->qUnk3C[i].x = sp00[0].x;
        enemy->qUnk3C[i].y += ((sp00[1].y - sp00[0].y) >> shift) * (enemy->unk14[i] >> 6);
        enemy->qUnk3C[i].x += ((sp00[1].x - sp00[0].x) >> shift) * (enemy->unk14[i] >> 6);

        if (param1 == 1) {
            var_r2 = 0x54;
            var_r1 = 1;
        } else {
            var_r2 = 0x40;
            var_r1 = 4;
        }

        if ((enemy->unk14[i] >> 6) < var_r2) {
            enemy->unk14[i] += (1 << (var_r1 + 3));
        } else {
            enemy->unk14[i] = var_r2 << 6;
            var_sb += 1;
        }
    }

    if (var_sb == 6) {
        return TRUE;
    }

    return FALSE;
}

bool32 sub_80619EC(Hariisen *enemy)
{
    if (++enemy->unkC[0] > gUnknown_080D20B8[enemy->unkC[1]]) {
        enemy->unkC[0] = 0;

        if (gObjPalette[12 * 16 + 8] == gPalette_080D206C[8]) {
            if (FLAGS_20000 & gFlags) {
                CopyPalette(gPalette_080D208C, 12 * 16, 16);
            } else {
                DmaCopy16(3, gPalette_080D208C, &gObjPalette[12 * 16], sizeof(gPalette_080D208C));
                gFlags |= FLAGS_UPDATE_SPRITE_PALETTES;
            }
            if (enemy->unkC[1] < 8) {
                enemy->unkC[1]++;
            }
        } else if (FLAGS_20000 & gFlags) {
            CopyPalette(gPalette_080D206C, 12 * 16, 16);
        } else {
            DmaCopy16(3, gPalette_080D206C, &gObjPalette[12 * 16], sizeof(gPalette_080D206C));
            gFlags |= FLAGS_UPDATE_SPRITE_PALETTES;
        }
    }

    return FALSE;
}

bool32 sub_8061AC8(Hariisen *enemy)
{
    Player *p;
    Sprite2 *s;
    s32 worldX, worldY;
    u8 j;
    s32 j2;
    u8 i;

    p = NULL;
    for (j = 0; j < 6; j++) {
        if (j < HSEN_COUNT_A) {
            s = &enemy->s2;
            worldX = I(enemy->qUnk2C[j].x) + I(enemy->qPos.x);
            worldY = I(enemy->qUnk2C[j].y) + I(enemy->qPos.y);
        } else {
            s = &enemy->s3;
            j2 = j - HSEN_COUNT_A;
            worldX = I(enemy->qUnk3C[j2].x) + I(enemy->qPos.x);
            worldY = I(enemy->qUnk3C[j2].y) + I(enemy->qPos.y);
        }

        worldX = TO_WORLD_POS_RAW(worldX, enemy->region[0]);
        worldY = TO_WORLD_POS_RAW(worldY, enemy->region[1]);

        for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
            p = GET_SP_PLAYER_V0(i);

            if (!sub_802C080(p) && (sub_8020700((Sprite *)s, worldX, worldY, 1, p, 0) != 0)) {
                if (p->framesInvincible == 0) {
                    sub_8020CE0((Sprite *)s, worldX, worldY, 1U, p);
                }
                return TRUE;
            }
        }
    }

    return FALSE;
}

AnimCmdResult sub_8061BD4(Hariisen *enemy)
{
    Sprite2 *s;
    AnimCmdResult acmdRes;
    u8 i;

    for (i = 0; i < HSEN_COUNT_A; i++) {
        s = &enemy->s2;
        s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region[0]) - gCamera.x;
        s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region[1]) - gCamera.y;
        s->x += I(enemy->qUnk2C[i].x);
        s->y += I(enemy->qUnk2C[i].y);

        if (i != 0) {
            SPRITE_FLAG_CLEAR(s, Y_FLIP);
            s->y += 2;
        } else {
            SPRITE_FLAG_SET(s, Y_FLIP);
            s->y -= 2;
        }

        UpdateSpriteAnimation((Sprite *)s);
        DisplaySprite((Sprite *)s);
    }

    for (i = 0; i < HSEN_COUNT_B; i++) {
        s = &enemy->s3;

        if (i == 0) {
            SPRITE_FLAG_SET(s, X_FLIP);
            SPRITE_FLAG_SET(s, Y_FLIP);
        } else if (i == 1) {
            SPRITE_FLAG_SET(s, X_FLIP);
            SPRITE_FLAG_CLEAR(s, Y_FLIP);
        } else if (i == 2) {
            SPRITE_FLAG_CLEAR(s, Y_FLIP);
            SPRITE_FLAG_CLEAR(s, X_FLIP);
        } else if (i == 3) {
            SPRITE_FLAG_SET(s, Y_FLIP);
            SPRITE_FLAG_CLEAR(s, X_FLIP);
        }

        s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region[0]) - gCamera.x;
        s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region[1]) - gCamera.y;
        s->x += I(enemy->qUnk3C[i].x);
        s->y += I(enemy->qUnk3C[i].y);

        acmdRes = UpdateSpriteAnimation((Sprite *)s);
        DisplaySprite((Sprite *)s);
    }

    return acmdRes;
}

// (75.13%) https://decomp.me/scratch/wIfg4
NONMATCH("asm/non_matching/game/enemies/hariisen__sub_8061D3C.inc", void sub_8061D3C(Vec2_32 arg0, Vec2_16 arg2, u16 *arg3, u16 *arg4))
{
    HariisenProj *proj;
    u8 i;

    proj = TASK_DATA(TaskCreate(sub_80625FC, sizeof(HariisenProj), 0x4040U, 0U, sub_8062638));
    for (i = 0; i < 2; i++) {
        proj->qUnk2C[i].x = 0;
        proj->qUnk2C[i].y = 0;
        proj->unk0[i] = 1;
        proj->unkC[i] = arg3[i];
    }

    for (i = 0; i < 4; i++) {
        proj->qUnk3C[i].x = 0;
        proj->qUnk3C[i].y = 0;
        proj->unk2[i] = 1;
        proj->unk14[i] = arg4[i];
    }

    proj->qPos.x = arg0.x;
    proj->qPos.y = arg0.y;
    proj->region[0] = arg2.x;
    proj->region[1] = arg2.y;
    CpuFill16(0, &proj->s.hitboxes[0].b, sizeof(proj->s.hitboxes[0].b));
    CpuFill16(0, &proj->s2.hitboxes[0].b, sizeof(proj->s.hitboxes[0].b));

    sub_8061E5C(proj);
}
END_NONMATCH

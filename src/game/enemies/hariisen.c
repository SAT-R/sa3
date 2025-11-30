#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/stage.h"

#define HSEN_COUNT_A 2
#define HSEN_COUNT_B 4

typedef struct Hariisen {
    /* 0x00 */ MapEntity *me;
    /* 0x04 */ u8 id;
    /* 0x05 */ u8 meX;
    /* 0x06 */ u16 region[2];
    /* 0x10 */ u16 unkA;
    /* 0x10 */ Vec2_16 unkC;
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

void Task_HariisenMain();
void sub_806132C(Hariisen *enemy);
void Task_806152C(void);
bool32 sub_806172C(Hariisen *enemy);
bool32 sub_80619EC(Hariisen *enemy);
void sub_8061AC8(Hariisen *enemy);
void sub_8061BD4(Hariisen *enemy);
void sub_80624E4(void);
AnimCmdResult sub_806253C(Hariisen *enemy);
void TaskDestructor_Hariisen(Task *);
bool32 sub_80617E0(Hariisen *enemy, u8 param1);
bool32 sub_8062580(Hariisen *enemy);
void sub_8061D3C(Vec2_32 arg0, Vec2_16 arg2, u16 *arg3, u16 *arg4);

extern const TileInfo2 gUnknown_080D2044[5];

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
    enemy->unkC.x = 0;
    enemy->unkC.y = 0;

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
                enemy->unkC.x = 0;
                enemy->unkC.y = 0;
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

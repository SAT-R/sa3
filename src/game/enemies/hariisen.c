#include "global.h"
#include "core.h"
#include "flags.h"
#include "trig.h"
#include "malloc_vram.h"
#include "code_z_1.h"
#include "game/camera.h"
#include "game/enemies/hariisen.h"
#include "game/enemy_unknown.h"
#include "game/entity.h"
#include "game/stage.h"
#include "module_unclear.h"

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

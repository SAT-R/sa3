#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/stage.h"

typedef struct Kamaki {
    /* 0x00 */ MapEntity *me;
    /* 0x08 */ u8 unk4;
    /* 0x05 */ u8 id;
    /* 0x06 */ u8 meX;
    /* 0x07 */ u8 unk7;
    /* 0x08 */ s8 dir;
    /* 0x0A */ u16 region[2];
    /* 0x0E */ u16 unkE[2];
    /* 0x12 */ s16 unk12;
    /* 0x14 */ Vec2_32 qUnk;
    /* 0x1C */ Vec2_32 qPos;
    /* 0x24 */ s32 qLeft;
    /* 0x28 */ s32 qRight;
    /* 0x2C */ Sprite2 s;
} Kamaki;

void Task_Kamaki(void);
void sub_80648EC(Kamaki *enemy);
void sub_8064A60(void);
void sub_8064B54(void);
void sub_8064C18(s32 arg0, s32 arg1, u16 arg2, u16 arg3, u32 arg4, s32 arg5);
void sub_805CD70(Vec2_32 *qVal, Vec2_32 *param1, u16 region[2], s8 *param3);
void sub_805CE14(Vec2_32 *qVal, Vec2_32 *param1, u16 region[2], s8 *param3);
bool32 sub_8065104(Kamaki *enemy);
AnimCmdResult sub_8065084(Kamaki *enemy);
void TaskDestructor_Kamaki(struct Task *t);

extern const TileInfo2 gUnknown_080D215C[4];

void CreateEntity_Kamaki(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Kamaki, sizeof(Kamaki), 0x2100U, 0U, TaskDestructor_Kamaki);
    Kamaki *enemy = TASK_DATA(t);
    enemy->me = me;
    enemy->meX = me->x;
    enemy->id = id;
    enemy->region[0] = regionX;
    enemy->region[1] = regionY;
    enemy->qPos.x = Q(me->x * TILE_WIDTH);
    enemy->qPos.y = Q(me->y * TILE_WIDTH);
    enemy->qUnk.x = enemy->qPos.x;
    enemy->qUnk.y = enemy->qPos.y;
    enemy->qLeft = enemy->qUnk.x + Q(me->d.sData[0] * TILE_WIDTH);
    enemy->qRight = enemy->qLeft + Q(me->d.uData[2] * TILE_WIDTH);
    enemy->unk7 = 0;
    enemy->unkE[0] = 0;
    enemy->unkE[1] = 0;

    if (8 & (u8)me->d.sData[4]) {
        enemy->dir = -1;
    } else {
        enemy->dir = +1;
    }

    if ((me->d.uData[4] & 0x10) >> 4) {
        enemy->unk4 = 1;
    } else {
        enemy->unk4 = 0;
    }

    CpuFill16(0, &enemy->s.hitboxes[1].b, sizeof(enemy->s.hitboxes[1].b));

    sub_80648EC(enemy);

    SET_MAP_ENTITY_INITIALIZED(me);
}

void sub_80648EC(Kamaki *enemy)
{
    u8 *vram = VramMalloc(0x10U);
    Sprite2 *s;

    s = &enemy->s;
    s->tiles = vram;
    s->anim = gUnknown_080D215C[0].anim;
    s->variant = gUnknown_080D215C[0].variant;
    s->prevVariant = -1;
    s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region[1]) - gCamera.y;
    s->oamFlags = 0x480;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0x1000;

    if (enemy->dir < 0) {
        s->frameFlags |= 0x400;
        s->frameFlags |= 0x1000;
    }

    if (enemy->unk4 != 0) {
        s->frameFlags |= 0x800;
    }
    s->hitboxes[0].index = -1;
    UpdateSpriteAnimation((Sprite *)s);
}

void Task_Kamaki(void)
{
    AnimCmdResult temp_r2;

    Kamaki *enemy = TASK_DATA(gCurTask);
    Sprite2 *s = &enemy->s;

    if (enemy->unk4 != 0) {
        sub_805CE14(&enemy->qPos, &enemy->qUnk, enemy->region, &enemy->unk7);
    } else {
        sub_805CD70(&enemy->qPos, &enemy->qUnk, enemy->region, &enemy->unk7);
    }
    if (sub_8065104(enemy) == 1) {
        TaskDestroy(gCurTask);
        return;
    }

    temp_r2 = sub_8065084(enemy);
    if ((gStageData.unk4 != 1) && (gStageData.unk4 != 2) && (gStageData.unk4 != 4)) {
        if (temp_r2 == 0) {
            enemy->unkE[0] = temp_r2;
            s->prevVariant = -1;
        }

        if (++enemy->unkE[1] > 0x77U) {
            Sprite2 *s = &enemy->s;
            s->anim = gUnknown_080D215C[1].anim;
            s->variant = gUnknown_080D215C[1].variant;
            s->prevVariant = -1;
            enemy->unkE[1] = 0;
            gCurTask->main = sub_8064A60;
        }
    }
}

void sub_8064A60(void)
{
    Sprite2 *s;
    AnimCmdResult acmdRes;
    u16 temp_r0;

    Kamaki *enemy = TASK_DATA(gCurTask);

    if (enemy->unk4 != 0) {
        sub_805CE14(&enemy->qPos, &enemy->qUnk, enemy->region, (s8 *)&enemy->unk7);
    } else {
        sub_805CD70(&enemy->qPos, &enemy->qUnk, enemy->region, (s8 *)&enemy->unk7);
    }
    if (sub_8065104(enemy) == 1) {
        TaskDestroy(gCurTask);
        return;
    }

    acmdRes = sub_8065084(enemy);

    if ((gStageData.unk4 != 1) && (gStageData.unk4 != 2) && (gStageData.unk4 != 4)) {
        if (++enemy->unkE[1] == 0x61) {
            s32 v = (u32)(-(enemy->s.frameFlags & 0x400)) >> 0x1F;
            sub_8064C18(enemy->qPos.x, enemy->qPos.y, enemy->region[0], enemy->region[1], v, enemy->unk4);
        }
        if (acmdRes == ACMD_RESULT__ENDED) {
            s = &enemy->s;
            s->anim = gUnknown_080D215C[2].anim;
            s->variant = gUnknown_080D215C[2].variant;
            s->prevVariant = -1;
            enemy->unkE[1] = 0;
            gCurTask->main = sub_8064B54;
        }
    }
}

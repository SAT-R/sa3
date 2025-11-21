#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/stage.h"

typedef struct GuardState {
    /* 0x00 */ MapEntity *me;
    /* 0x04 */ u8 mePos[2];
    /* 0x06 */ u8 unk6;
    /* 0x07 */ u8 unk7;
    /* 0x08 */ u8 unk8;
    /* 0x09 */ u8 unk9;
    /* 0x0A */ u8 unkA;
    /* 0x0B */ u8 unkB;
    /* 0x0C */ u8 unkC;
    /* 0x0D */ u8 unkD;
    /* 0x0E */ u8 id;
    /* 0x0F */ u8 meX;
    /* 0x10 */ u16 region[2];
    /* 0x14 */ u8 unk14[4];
} GuardState; /* 0x18 */

typedef struct Guard {
    /* 0x00 */ u8 *mePos;
    /* 0x04 */ u8 meX;
    /* 0x05 */ u8 unk5;
    /* 0x06 */ u8 mePosX;
    /* 0x07 */ u8 unk7;
    /* 0x08 */ u8 unk8;
    /* 0x09 */ u8 unk9;
    /* 0x09 */ s8 dir;
    /* 0x0A */ u8 fillerB[1];
    /* 0x0C */ u16 region[2];
    /* 0x10 */ u8 unk10;
    /* 0x14 */ s32 unk14;
    /* 0x18 */ Vec2_32 unk18;
    /* 0x20 */ Vec2_32 unk20;
    /* 0x28 */ Vec2_32 unk28;
    /* 0x30 */ Sprite2 s;
} Guard; /* 0x60 */

typedef struct GuardProj {
    /* 0x00 */ u8 filler0[0x10];
    /* 0x10 */ Vec2_32 qPos;
    /* 0x18 */ Sprite2 s;
} GuardProj; /* 0x48 */

void sub_805F2C0(u8 *param0, u16 regionX, u16 regionY, u8 meX, s32 unkD, u8 unkC);
void Task_805F418(void);
void Task_805F518(void);
void sub_805F398(Guard *guard);
void sub_805F858(Guard *guard);
bool32 sub_805F89C(Guard *guard);
AnimCmdResult sub_805F8E8(Guard *guard);
void sub_805F9B8(s32 x, s32 y, u16 regionX, u16 regionY, s8 dir);
void TaskDestructor_805F9A4(struct Task *t);
void sub_805CD70(Vec2_32 *qVal, Vec2_32 *param1, u16 region[2], s8 *param3);

extern const TileInfo2 gUnknown_080D1FB0[4];
extern const TileInfo2 gUnknown_080D1FC0[4];

void sub_805F2C0(u8 *param0, u16 regionX, u16 regionY, u8 meX, s32 unkD, u8 unkC)
{
    s32 temp_r0_2;
    s32 temp_r1_2;
    s32 temp_r1_3;
    Guard *guard;

    guard = TASK_DATA(TaskCreate(Task_805F418, sizeof(Guard), 0x2100U, 0U, TaskDestructor_805F9A4));
    guard->mePos = param0;
    guard->mePosX = param0[0];
    guard->meX = meX;
    guard->region[0] = regionX;
    guard->region[1] = regionY;
    temp_r1_2 = ((unkC * 2) + param0[0]) << 0xB;
    guard->unk20.x = temp_r1_2;
    temp_r0_2 = param0[1] << 0xB;
    guard->unk20.y = temp_r0_2;
    guard->unk18.x = guard->unk20.x;
    guard->unk18.y = guard->unk20.y;
    temp_r1_2 = temp_r1_2 + ((s8)param0[3] << 0xB);
    guard->unk28.x = temp_r1_2;
    guard->unk28.y = (s32)(temp_r1_2 + (param0[5] << 0xB));
    guard->unk14 = unkD;
    guard->unk10 = unkC;
    guard->unk5 = 0;
    guard->unk7 = 0;
    guard->unk8 = 0;
    guard->unk9 = 0;

    if (8 & param0[7]) {
        guard->dir = -1;
    } else {
        guard->dir = +1;
    }

    CpuFill16(0, &guard->s.hitboxes[1].b, sizeof(guard->s.hitboxes[1].b));
    sub_805F398(guard);
}

void sub_805F398(Guard *guard)
{
    u8 *vram = VramMalloc(0x10U);
    Sprite2 *s = &guard->s;
    s->tiles = vram;
    s->anim = gUnknown_080D1FB0[0].anim;
    s->variant = gUnknown_080D1FB0[0].variant;
    s->prevVariant = -1;
    s->x = TO_WORLD_POS_RAW(I(guard->unk20.x), guard->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(guard->unk20.y), guard->region[1]) - gCamera.y;
    s->oamFlags = 0x480;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0x1000;

    if (guard->dir < 0) {
        s->frameFlags |= 0x400;
        s->frameFlags |= 0x1000;
    }

    s->hitboxes[0].index = -1;
}

void Task_805F418(void)
{
    Sprite2 *s;
    Sprite2 *s2;
    s32 temp_r2;
    s32 temp_r5;
    s32 temp_r7;
    u32 temp_r1;

    Guard *guard = TASK_DATA(gCurTask);

    sub_805CD70(&guard->unk20, &guard->unk18, guard->region, (s8 *)&guard->unk9);
    if (sub_805F89C(guard) == 1) {
        TaskDestroy(gCurTask);
        return;
    }
    temp_r7 = sub_805F8E8(guard);
    ++guard->unk5;
    if ((temp_r7 == ACMD_RESULT__ENDED) || (guard->unk5 > 0x1DU)) {
        guard->unk5 = 0;
    }
    if (((u32)(u8)(gStageData.unk4 - 1) > 1U) && (gStageData.unk4 != 4)) {
        if ((u32)guard->unk5 > 0x14U) {
            sub_805F858(guard);
        }
        temp_r2 = guard->unk20.x;
        temp_r5 = guard->unk28.x;
        if ((temp_r2 <= temp_r5) || (temp_r2 >= (s32)guard->unk28.y)) {
            s = &guard->s;
            temp_r1 = s->frameFlags;
            if (temp_r1 & 0x400) {
                if (temp_r2 >= (s32)guard->unk28.y) {
                    s->frameFlags &= ~0x400;
                    guard->unk7 = 0;
                }
            } else if (temp_r2 <= temp_r5) {
                s->frameFlags = temp_r1 | 0x400;
                guard->unk7 = 0;
            }
        }
        if (temp_r7 == ACMD_RESULT__ENDED) {
            s2 = &guard->s;
            s2->anim = gUnknown_080D1FB0[1].anim;
            s2->variant = gUnknown_080D1FB0[1].variant;
            s2->animCursor = 0;
            s2->qAnimDelay = 0;
            guard->unk7 = 0;
            guard->s.prevVariant = -1;
            guard->unk5 = 0;
            gCurTask->main = Task_805F518;
        }
    }
}

void Task_805F518(void)
{
    Sprite2 *s;
    Sprite2 *s2;
    s32 temp_r2;
    s32 temp_r5;
    s32 temp_r7;
    u32 temp_r1;

    Guard *guard = TASK_DATA(gCurTask);

    sub_805CD70(&guard->unk20, &guard->unk18, guard->region, (s8 *)&guard->unk9);
    if (sub_805F89C(guard) == 1) {
        TaskDestroy(gCurTask);
        return;
    }
    temp_r7 = sub_805F8E8(guard);
    ++guard->unk5;
    if ((temp_r7 == ACMD_RESULT__ENDED) || (guard->unk5 > 0x1DU)) {
        guard->unk5 = 0;
    }
    if (((u32)(u8)(gStageData.unk4 - 1) > 1U) && (gStageData.unk4 != 4)) {
        if ((u32)guard->unk5 > 0x14U) {
            sub_805F858(guard);
        }

        if (guard->unk5 == 0x1D && guard->unk8 == 0) {
            s8 dir;
            if (guard->s.frameFlags & 0x400) {
                dir = +1;
            } else {
                dir = -1;
            }

            sub_805F9B8(guard->unk20.x + (dir << 12), guard->unk20.y - Q(27), guard->region[0], guard->region[1], dir);
            guard->unk8 = 1;
        }

        temp_r2 = guard->unk20.x;
        temp_r5 = guard->unk28.x;
        if ((temp_r2 <= temp_r5) || (temp_r2 >= (s32)guard->unk28.y)) {
            s = &guard->s;
            if (SPRITE_FLAG_GET(s, X_FLIP)) {
                if (temp_r2 >= (s32)guard->unk28.y) {
                    SPRITE_FLAG_CLEAR(s, X_FLIP);
                }
            } else if (temp_r2 <= temp_r5) {
                SPRITE_FLAG_SET(s, X_FLIP);
            }
        }
        if (temp_r7 == ACMD_RESULT__ENDED) {
            s2 = &guard->s;
            s2->anim = gUnknown_080D1FB0[0].anim;
            s2->variant = gUnknown_080D1FB0[0].variant;
            s2->animCursor = 0;
            s2->qAnimDelay = 0;
            guard->s.prevVariant = -1;
            guard->unk8 = 0;
            gCurTask->main = Task_805F418;
        }
    }
}

void sub_805F654(GuardProj *proj)
{
    u8 *tiles = VramMalloc(0x10U);
    Sprite2 *s = &proj->s;
    s->tiles = tiles;
    s->anim = gUnknown_080D1FC0[0].anim;
    s->variant = gUnknown_080D1FC0[0].variant;
    s->prevVariant = 0xFF;
    s->x = I(proj->qPos.x) - gCamera.x;
    s->y = I(proj->qPos.y) - gCamera.y;
    s->oamFlags = 0x4C0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0x1000;
    s->hitboxes[0].index = -1;
    UpdateSpriteAnimation((Sprite *)s);
}

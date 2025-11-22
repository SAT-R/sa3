#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "module_unclear.h"
#include "game/camera.h"
#include "game/enemy_unknown.h"
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
} GuardState; /* 0x14 */

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
    /* 0x14 */ u8 *unk14;
    /* 0x18 */ Vec2_32 unk18;
    /* 0x20 */ Vec2_32 unk20;
    /* 0x28 */ Vec2_32 unk28;
    /* 0x30 */ Sprite2 s;
} Guard; /* 0x60 */

typedef struct GuardProj {
    /* 0x00 */ s8 unk0;
    /* 0x01 */ s8 dir;
    /* 0x02 */ s8 unk2;
    /* 0x03 */ s8 unk3;
    /* 0x04 */ u16 region[2];
    /* 0x08 */ s16 unk8;
    /* 0x0A */ s16 unkA;
    /* 0x0C */ s16 unkC;
    /* 0x10 */ Vec2_32 qPos;
    /* 0x18 */ Sprite2 s;
} GuardProj; /* 0x48 */

void sub_805F2C0(u8 *param0, u16 regionX, u16 regionY, u8 meX, u8 *unkD, u8 unkC);
void Task_805F418(void);
void Task_805F518(void);
void sub_805F398(Guard *guard);
void sub_805F654(GuardProj *proj);
void Task_805F6BC(void);
bool32 sub_805F75C(GuardProj *proj);
void sub_805F800(GuardProj *proj);
AnimCmdResult sub_805FA80(GuardProj *proj);
void sub_805FA50(void);
void sub_805F858(Guard *guard);
bool32 sub_805F89C(Guard *guard);
bool32 sub_805F958(Guard *guard, u8 *param1);
AnimCmdResult sub_805F8E8(Guard *guard);
bool32 sub_805F92C(Guard *arg0, EnemyUnknownStruc0 *arg1);
bool32 sub_805F958(Guard *guard, u8 *param1);
void sub_805F9B8(s32 x, s32 y, u16 regionX, u16 regionY, s8 dir);
void TaskDestructor_805F9A4(struct Task *t);
void TaskDestructor_805FAC4(struct Task *t);
void Task_GuardStateInit(void);
void TaskDestructor_GuardState(struct Task *t);
void sub_805CD70(Vec2_32 *qVal, Vec2_32 *param1, u16 region[2], s8 *param3);

extern const TileInfo2 gUnknown_080D1FB0[4];
extern const TileInfo2 gUnknown_080D1FC0[4];

void sub_805F2C0(u8 *param0, u16 regionX, u16 regionY, u8 meX, u8 *unkD, u8 unkC)
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

void Task_805F6BC(void)
{
    Sprite2 *s;
    GuardProj *proj = TASK_DATA(gCurTask);
    bool32 var_r5 = 0;
    s32 worldX, worldY;
    s32 res;

    if (((u8)(gStageData.unk4 - 1) > 1U) && (gStageData.unk4 != 4)) {
        sub_805F800(proj);
    }

    sub_805FA80(proj);

    if (sub_805F75C(proj) == 1) {
        var_r5 = 1;
    }

    worldX = I(proj->qPos.x);
    worldY = I(proj->qPos.y);
    worldX = TO_WORLD_POS_RAW(worldX, proj->region[0]);
    worldY = TO_WORLD_POS_RAW(worldY, proj->region[1]);

    res = sub_8052394(worldY, worldX, 1, 8, NULL, sub_805217C);
    if (res < 0) {
        var_r5 = 1;
    }
    if (var_r5 == 1) {
        s = &proj->s;
        s->anim = gUnknown_080D1FC0[1].anim;
        s->variant = gUnknown_080D1FC0[1].variant;
        s->frameFlags = 0;
        gCurTask->main = sub_805FA50;
    }
}

bool32 sub_805F75C(GuardProj *proj)
{
    Sprite2 *s;
    s32 worldY;
    s32 worldX;
    u32 temp_r0_2;
    u8 i;
    Player *p = NULL;

    worldX = I(proj->qPos.x);
    worldY = I(proj->qPos.y);
    worldX = TO_WORLD_POS_RAW(worldX, proj->region[0]);
    worldY = TO_WORLD_POS_RAW(worldY, proj->region[1]);
    s = &proj->s;

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        p = GET_SP_PLAYER_V0(i);
        temp_r0_2 = sub_802C080(p);
        if ((temp_r0_2 == 0) && sub_8020700((Sprite *)s, worldX, worldY, 1, p, temp_r0_2)) {
            if (p->framesInvincible == 0) {
                sub_8020CE0((Sprite *)s, worldX, worldY, 1U, p);
            }
            return TRUE;
        }
    }

    return FALSE;
}

void sub_805F800(GuardProj *proj)
{
    s16 dx, dy;

    dy = (proj->unk2 << 9);

    if (proj->dir > 0) {
        dx = (proj->dir + 4) << 7;
    } else {
        dx = (proj->dir - 4) << 7;
    }

    proj->unkC += 16;
    dy += proj->unkC;

    proj->unkA += 1;
    dx += proj->dir;

    proj->qPos.y += dy;
    proj->qPos.x += dx >> 1;
}

void sub_805F858(Guard *guard)
{
    if (SPRITE_FLAG_GET(&guard->s, X_FLIP)) {
        if (guard->unk20.x <= guard->unk28.y) {
            guard->unk20.x += Q(2);
            if (guard->unk20.x > guard->unk28.y) {
                guard->unk20.x = guard->unk28.y;
            }
        }
    } else {
        if (guard->unk20.x >= guard->unk28.x) {
            guard->unk20.x -= Q(2);
            if (guard->unk20.x < guard->unk28.x) {
                guard->unk20.x = guard->unk28.x;
            }
        }
    }
}

bool32 sub_805F89C(Guard *guard)
{
    s32 temp_r0;

    u8 sp00 = 0;
    temp_r0 = sub_805F958(guard, &sp00);
    if (temp_r0 == 1) {
        if (sp00 != 0) {
#ifndef NON_MATCHING
            register u8 *ptr asm("r2") = guard->mePos;
#else
            u8 *ptr = guard->mePos;
#endif
            u32 b = (1 << guard->unk10);
            ptr[7] |= b;
        }

        guard->unk14[0] &= ~(1 << guard->unk10);
        return TRUE;
    }

    return FALSE;
}

AnimCmdResult sub_805F8E8(Guard *guard)
{
    Sprite2 *s;
    AnimCmdResult acmdRes;

    s = &guard->s;
    s->x = TO_WORLD_POS_RAW(I(guard->unk20.x), guard->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(guard->unk20.y), guard->region[1]) - gCamera.y;
    acmdRes = UpdateSpriteAnimation((Sprite *)s);
    DisplaySprite((Sprite *)s);
    return acmdRes;
}

bool32 sub_805F92C(Guard *arg0, EnemyUnknownStruc0 *arg1)
{
    arg1->me = NULL;
    arg1->spriteX = 0;
    arg1->unk4 = 0;
    arg1->spr = (Sprite *)&arg0->s;
    arg1->posX = arg0->unk20.x;
    arg1->posY = arg0->unk20.y;
    arg1->regionX = arg0->region[0];
    arg1->regionY = arg0->region[1];
    return sub_805C63C(arg1);
}

bool32 sub_805F958(Guard *guard, u8 *param1)
{
    EnemyUnknownStruc0 sp00;

    sp00.unk4 = sub_805F92C(guard, (EnemyUnknownStruc0 *)&sp00);
    sp00.spr = (Sprite *)&guard->s;
    sp00.posX = (((s32)guard->unk18.x >> 0xB) - (guard->unk10 * 2)) << 0xB;
    sp00.posY = guard->unk18.y;
    sp00.regionX = guard->region[0];
    sp00.regionY = guard->region[1];
    sp00.me = NULL;
    sp00.spriteX = guard->mePosX;
    *param1 = sp00.unk4;
    return sub_805C280(&sp00);
}

void TaskDestructor_805F9A4(struct Task *t)
{
    Guard *guard = TASK_DATA(t);
    VramFree(guard->s.tiles);
}

void sub_805F9B8(s32 x, s32 y, u16 regionX, u16 regionY, s8 dir)
{
    GuardProj *proj;

    proj = TASK_DATA(TaskCreate(Task_805F6BC, sizeof(GuardProj), 0x4040U, 0U, TaskDestructor_805FAC4));
    proj->qPos.x = x;
    proj->qPos.y = y;
    proj->region[0] = regionX;
    proj->region[1] = regionY;
    proj->unk0 = 0;
    proj->dir = dir;
    proj->unk2 = -1;
    proj->unkA = 0;
    proj->unkC = 0;
    proj->unk8 = 0;

    CpuFill16(0, &proj->s.hitboxes[1].b, sizeof(proj->s.hitboxes[1].b));
    sub_805F654((GuardProj *)proj);
}

void sub_805FA50(void)
{
    GuardProj *proj;
    AnimCmdResult acmdRes;

    proj = TASK_DATA(gCurTask);
    acmdRes = sub_805FA80(proj);
    sub_805F75C(proj);

    if (acmdRes == ACMD_RESULT__ENDED) {
        TaskDestroy(gCurTask);
    }
}

AnimCmdResult sub_805FA80(GuardProj *proj)
{
    Sprite2 *s;
    AnimCmdResult acmdRes;
    s32 worldX, worldY;

    s = &proj->s;
    s->x = TO_WORLD_POS_RAW(I(proj->qPos.x), proj->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(proj->qPos.y), proj->region[1]) - gCamera.y;
    acmdRes = UpdateSpriteAnimation((Sprite *)s);
    DisplaySprite((Sprite *)s);

    return acmdRes;
}

void TaskDestructor_805FAC4(struct Task *t)
{
    GuardProj *proj = TASK_DATA(t);
    VramFree(proj->s.tiles);
}

void CreateEntity_Guard(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    GuardState *state;

    state = TASK_DATA(TaskCreate(Task_GuardStateInit, sizeof(GuardState), 0x2100U, 0U, TaskDestructor_GuardState));
    state->me = me;
    state->meX = me->x;
    state->id = id;
    state->region[0] = regionX;
    state->region[1] = regionY;
    state->unkC = 0;
    state->unkD = 0;
    state->mePos[0] = me->x;
    state->mePos[1] = me->y;
    state->unkB = me->d.sData[4];
    state->unk7 = me->d.sData[0];
    state->unk9 = me->d.sData[2];

    SET_MAP_ENTITY_INITIALIZED(me);
}

void Task_GuardState2(void)
{
    GuardState *state = TASK_DATA(gCurTask);

    if (state->unkD == 0) {
        state->me->d.uData[4] = state->unkB;
        if (state->me->d.uData[4] < 7) {
            state->me->x = state->meX;
        }

        TaskDestroy(gCurTask);
        return;
    }
}

void Task_GuardStateInit(void)
{
    GuardState *state = TASK_DATA(gCurTask);
    u8 temp_r0;

    if (!((state->unkB >> state->unkC) & 1)) {
        sub_805F2C0(state->mePos, state->region[0], state->region[1], state->meX, &state->unkD, state->unkC);
        state->unkD = ((1 << state->unkC) | state->unkD);
    }

    if (++state->unkC == 3) {
        gCurTask->main = Task_GuardState2;
    }
}

void TaskDestructor_GuardState(Task *arg0) { }

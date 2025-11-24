#include "global.h"
#include "core.h"
#include "trig.h"
#include "malloc_vram.h"
#include "module_unclear.h"
#include "game/camera.h"
#include "game/enemy_unknown.h"
#include "game/entity.h"
#include "game/stage.h"

typedef struct Juggling {
    /* 0x00 */ MapEntity *me;
    /* 0x04 */ u8 id;
    /* 0x05 */ u8 meX;
    /* 0x06 */ u8 unk6[2];
    /* 0x08 */ s8 unk8;
    /* 0x09 */ s8 unk9;
    /* 0x0A */ u16 region[2];
    /* 0x0E */ u16 unkE[2];
    /* 0x12 */ s16 unk12;
    /* 0x14 */ void *vram;
    /* 0x18 */ s32 unkX;
    /* 0x1C */ s32 unkY;
    /* 0x20 */ Vec2_32 qPos;
    /* 0x28 */ Vec2_32 unk28[2];
    /* 0x38 */ u8 filler38[0x4];
    /* 0x3C */ s32 unk3C;
    /* 0x40 */ s32 unk40;
    /* 0x44 */ Sprite2 s;
    /* 0x74 */ Sprite2 s2;
    /* 0xA4 */ Sprite2 s3;
    /* 0xD4 */ struct Task *unkD4;
    /* 0xD8 */ struct Task *unkD8;
} Juggling;

typedef struct JugglingPin {
    /* 0x00 */ u8 unk0;
    /* 0x00 */ u8 *unk4;
    /* 0x08 */ u8 unk8;
    /* 0x09 */ u8 unk9;
    /* 0x0A */ u16 region[2];
    /* 0x0E */ u16 unkE;
    /* 0x10 */ u16 unk10;
    /* 0x12 */ u16 unk12;
    /* 0x14 */ void *vram;
    /* 0x14 */ void *unk18;
    /* 0x14 */ void *unk1C;
    /* 0x20 */ Vec2_32 qPos;
    /* 0x28 */ Sprite2 s;
} JugglingPin;

void Task_Juggling(void);
void sub_805E344(Juggling *enemy);
void sub_805E5A0(Juggling *enemy);
void sub_805E624(Juggling *enemy);
AnimCmdResult sub_805E6E0(Juggling *enemy);
void sub_805E7A4(JugglingPin *proj);
bool32 sub_805E814(JugglingPin *proj);
void Task_805E8B8(void);
void sub_805E918(Juggling *enemy);
bool32 sub_805E950(Juggling *enemy);
bool32 sub_805E9A8(Juggling *arg0, EnemyUnknownStruc0 *arg1);
bool32 sub_805E9D4(Juggling *enemy);
void Task_JugglingPin(void);
void TaskDestructor_JugglingPin(struct Task *t);
void TaskDestructor_Juggling(struct Task *t);
struct Task *sub_805EA24(s32 *x, s32 *y, u16 regionX, u16 regionY, u8 *arg4, u8 arg5, void *arg6);
void Task_805EB34(void);
bool32 sub_805EB68(JugglingPin *proj);
AnimCmdResult sub_805EBB4(JugglingPin *proj);

extern const TileInfo2 gUnknown_080D1F6C[2];
extern const TileInfo2 gUnknown_080D1F7C[2];

void CreateEntity_Juggling(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    s16 sp4;
    s16 sp8;
    s16 *temp_r0_2;
    s32 temp_r0;
    s32 temp_r1;
    s32 temp_r1_2;
    s8 var_r0;
    struct Task *t;
    Juggling *enemy;

    t = TaskCreate(Task_Juggling, sizeof(Juggling), 0x2100U, 0U, TaskDestructor_Juggling);
    enemy = TASK_DATA(t);
    enemy->me = me;
    enemy->meX = me->x;
    enemy->id = id;
    enemy->region[0] = regionX;
    enemy->region[1] = regionY;
    enemy->qPos.x = Q(me->x * TILE_WIDTH);
    enemy->qPos.y = Q(me->y * TILE_WIDTH);
    enemy->unk28[0].x = 0;
    enemy->unk28[0].y = 0;
    enemy->unk28[1].x = 0;
    enemy->unk28[1].y = 0;
    enemy->unkX = enemy->qPos.x;
    enemy->unkY = enemy->qPos.y;
    enemy->unk3C = enemy->qPos.x + Q(me->d.sData[0] * TILE_WIDTH);
    enemy->unk40 = enemy->unk3C + Q(me->d.uData[2] * TILE_WIDTH);
    enemy->unkE[0] = 0;
    enemy->unkE[1] = 0x800;
    enemy->unk6[0] = 0;
    enemy->unk6[1] = 0;
    enemy->unk8 = 0;
    enemy->unkD4 = 0;
    enemy->unkD8 = NULL;

    if (8 & (u8)me->d.sData[4]) {
        enemy->unk9 = -1;
    } else {
        enemy->unk9 = +1;
    }

    CpuFill16(0, &enemy->s.hitboxes[1].b, sizeof(enemy->s.hitboxes[1].b));
    CpuFill16(0, &enemy->s2.hitboxes[1].b, sizeof(enemy->s.hitboxes[1].b));
    CpuFill16(0, &enemy->s3.hitboxes[1].b, sizeof(enemy->s.hitboxes[1].b));

    sub_805E344(enemy);

    SET_MAP_ENTITY_INITIALIZED(me);
}

void sub_805E344(Juggling *enemy)
{
    Sprite2 *s;
    u8 *vram;
    u8 variant;

    vram = VramMalloc(0x30U);
    s = &enemy->s;
    s->tiles = vram;
    vram += (16 * TILE_SIZE_4BPP);
    s->anim = gUnknown_080D1F6C[0].anim;
    s->variant = gUnknown_080D1F6C[0].variant;
    s->prevVariant = -1;
    s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region[1]) - gCamera.y;
    s->oamFlags = SPRITE_OAM_ORDER(19);
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->frameFlags = 0x1000;

    if (enemy->unk9 < 0) {
        s->frameFlags |= 0x1000;
        SPRITE_FLAG_SET(s, X_FLIP);
    }

    s->hitboxes[0].index = -1;
    UpdateSpriteAnimation((Sprite *)s);

    enemy->vram = vram;
    s = &enemy->s2;
    s->tiles = vram;
    vram += (9 * TILE_SIZE_4BPP);
    s->anim = gUnknown_080D1F6C[1].anim;
    variant = gUnknown_080D1F6C[1].variant;
    s->variant = variant;
    s->prevVariant = -1;
    s->x = TO_WORLD_POS_RAW(I(enemy->unk28[0].x), enemy->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->unk28[0].y), enemy->region[1]) - gCamera.y;
    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->frameFlags = 0x1000;
    s->hitboxes[0].index = -1;
    UpdateSpriteAnimation((Sprite *)s);

    s = &enemy->s3;
    s->tiles = vram;
    s->anim = gUnknown_080D1F6C[1].anim;
    s->variant = gUnknown_080D1F6C[1].variant;
    s->prevVariant = -1;
    s->x = TO_WORLD_POS_RAW(I(enemy->unk28[1].x), enemy->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->unk28[1].y), enemy->region[1]) - gCamera.y;
    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->frameFlags = 0x1000;
    s->hitboxes[0].index = -1;
    UpdateSpriteAnimation((Sprite *)s);
}

void Task_Juggling(void)
{
    Sprite2 *s;
    s32 temp_r2;
    s32 var_r1;
    u16 temp_r0;
    u16 temp_r1;

    Juggling *enemy = TASK_DATA(gCurTask);

    sub_805CD70((Vec2_32 *)&enemy->qPos.x, NULL, enemy->region, &enemy->unk8);
    if (((u8)(gStageData.unk4 - 1) > 1U) && (gStageData.unk4 != 4)) {
        sub_805E918(enemy);
        sub_805E624(enemy);
    }
    temp_r0 = enemy->unkE[0];
    temp_r1 = enemy->unkE[1];
    temp_r2 = temp_r0 - temp_r1;
    if (temp_r2 >= 0) {
        if (temp_r2 < 0x800) {
            goto block_7;
        }
    } else if ((temp_r1 - temp_r0) < 0x800) {
    block_7:
        var_r1 = 0;
        if (enemy->unk6[0] == 0 && enemy->unk6[1] == 0) {
            var_r1 = 1;
        }
        if (var_r1 != 0) {
            enemy->unkE[0] = 0;
            enemy->unkE[1] = 0x800;
        }
    }

    if (sub_805E9D4(enemy) == 1) {
        gCurTask->main = Task_805E8B8;
        return;
    }

    if (sub_805E950(enemy) == 1) {
        sub_805E5A0(enemy);
    }

    sub_805E6E0(enemy);
    if ((enemy->qPos.x <= enemy->unk3C) || (enemy->qPos.x >= enemy->unk40)) {
        s = &enemy->s;

        if (s->frameFlags & 0x400) {
            s->frameFlags &= ~0x400;
        } else {
            s->frameFlags |= 0x400;
        }
    }
}

void sub_805E5A0(Juggling *enemy)
{
    if (enemy->unk6[0] == 0) {
        if (enemy->unkE[0] == 0) {
            enemy->unkD8
                = sub_805EA24(&enemy->unk28[0].x, &enemy->qPos.y, enemy->region[0], enemy->region[1], &enemy->unk6[0], 0, enemy->vram);
            enemy->unk6[0] = 1;
            enemy->unkE[0] = 0x800;
            return;
        }
    }
    if ((enemy->unk6[1] == 0) && (enemy->unkE[1] == 0)) {
        enemy->unkD4
            = sub_805EA24(&enemy->unk28[1].x, &enemy->qPos.y, enemy->region[0], enemy->region[1], &enemy->unk6[1], 1, enemy->vram + 0x200);
        enemy->unk6[1] = 1;
        enemy->unkE[1] = 0x800;
    }
}

// (95.54%) https://decomp.me/scratch/c8QnG
NONMATCH("asm/non_matching/game/enemies/juggling__sub_805E624.inc", void sub_805E624(Juggling *enemy))
{
    s32 var_r0;
    u8 i;

    for (i = 0; i < 2; i++) {
        if (enemy->unk6[i] == 0) {
            enemy->unkE[i] += Q(0.5);

            if (enemy->unkE[i] > Q(16)) {
                enemy->unkE[i] = 0;
            }

            if (enemy->unkE[i] > Q(8)) {
                s32 *dst = &enemy->unk28[i].y;
                var_r0 = (((SIN(((enemy->unkE[i] >> 0x4) & 0xFF) * 4)) >> 6) * 4) + 0x1200;
                *dst = enemy->qPos.y - (var_r0);
            } else {
                s32 *dst = &enemy->unk28[i].y;
                var_r0 = (((SIN(((enemy->unkE[i] >> 0x4) & 0xFF) * 4)) >> 6) * 16) + 0x2000;
                *dst = enemy->qPos.y - (var_r0);
            }
        }
        if (i == 0) {
            enemy->unk28[i].x = enemy->qPos.x + Q(8);
        } else {
            enemy->unk28[i].x = enemy->qPos.x - Q(8);
        }
    }
}
END_NONMATCH

AnimCmdResult sub_805E6E0(Juggling *enemy)
{
    Sprite2 *s;
    AnimCmdResult acmdRes;

    s = &enemy->s;
    s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region[1]) - gCamera.y;
    acmdRes = UpdateSpriteAnimation((Sprite *)s);
    DisplaySprite((Sprite *)s);

    if (enemy->unk6[0] == 0) {
        s = &enemy->s2;
        s->x = TO_WORLD_POS_RAW(I(enemy->unk28[0].x), enemy->region[0]) - gCamera.x;
        s->y = TO_WORLD_POS_RAW(I(enemy->unk28[0].y), enemy->region[1]) - gCamera.y;
        SPRITE_FLAG_CLEAR(s, X_FLIP);
        UpdateSpriteAnimation((Sprite *)s);
        DisplaySprite((Sprite *)s);
    }

    if (enemy->unk6[1] == 0) {
        s = &enemy->s3;
        s->x = TO_WORLD_POS_RAW(I(enemy->unk28[1].x), enemy->region[0]) - gCamera.x;
        s->y = TO_WORLD_POS_RAW(I(enemy->unk28[1].y), enemy->region[1]) - gCamera.y;
        SPRITE_FLAG_SET(s, X_FLIP);
        UpdateSpriteAnimation((Sprite *)s);
        DisplaySprite((Sprite *)s);
    }

    return acmdRes;
}

void sub_805E7A4(JugglingPin *proj)
{
    u8 *vram = proj->vram;
    Sprite2 *s;

    s = &proj->s;
    s->tiles = vram;
    s->anim = gUnknown_080D1F7C[0].anim;
    s->variant = gUnknown_080D1F7C[0].variant;
    s->prevVariant = -1;
    s->x = I(proj->qPos.x) - gCamera.x;
    s->y = I(proj->qPos.y) - gCamera.y;
    s->oamFlags = SPRITE_OAM_ORDER(19);
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = SPRITE_ANIM_SPEED(2.0);
    s->palId = 0;
    s->frameFlags = 0x1000;

    if (proj->unk8 != 0) {
        s->frameFlags |= 0x400;
        s->frameFlags |= 0x1000;
    }
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    UpdateSpriteAnimation((Sprite *)s);
}

bool32 sub_805E814(JugglingPin *proj)
{
    Player *p;
    Sprite2 *s;
    u32 temp_r0_2;
    u8 i;
    s32 worldX, worldY;

    p = NULL;
    worldX = I(proj->qPos.x);
    worldY = I(proj->qPos.y);
    worldX = TO_WORLD_POS_RAW(worldX, proj->region[0]);
    worldY = TO_WORLD_POS_RAW(worldY, proj->region[1]);
    s = &proj->s;

    for (i = 0; i < 2; i++) {
        p = GET_SP_PLAYER_V0(i);
        if (!sub_802C080(p) && (sub_8020700((Sprite *)s, worldX, worldY, 1, p, 0) != 0)) {
            if (p->framesInvincible == 0) {
                sub_8020CE0((Sprite *)s, worldX, worldY, 1U, p);
            }
            return TRUE;
        }
    }

    return FALSE;
}

void Task_805E8B8(void)
{
    Juggling *enemy = TASK_DATA(gCurTask);
    s32 var_r6 = 0;

    if ((enemy->unk6[1] != 0) && (enemy->unkD4 != 0)) {
        TaskDestroy(enemy->unkD4);
        enemy->unkD4 = 0;
        var_r6 = 1;
    }

    if ((enemy->unk6[0] != 0) && (enemy->unkD8 != 0)) {
        if (var_r6 == 0) {
            TaskDestroy(enemy->unkD8);
            enemy->unkD8 = NULL;
            var_r6 = 1;
        }
    }

    if (var_r6 == 0) {
        TaskDestroy(gCurTask);
        return;
    }
}

void sub_805E918(Juggling *enemy)
{
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_4;
    s32 var_r1;

    if (enemy->s.frameFlags & 0x400) {
        temp_r0 = enemy->qPos.x;
        if (enemy->qPos.x <= enemy->unk40) {
            enemy->qPos.x += Q(0.5);
            if (enemy->qPos.x > enemy->unk40) {
                enemy->qPos.x = enemy->unk40;
            }
        }
    } else {
        if (enemy->qPos.x >= enemy->unk3C) {
            enemy->qPos.x -= 0x80;
            if (enemy->qPos.x < enemy->unk3C) {
                enemy->qPos.x = enemy->unk3C;
            }
        }
    }
}

u32 sub_805E950(Juggling *enemy)
{
    Sprite2 *s = &enemy->s;
    Player *p;
    s32 var_r0;
    s32 worldX;
    u8 i;

    worldX = I(enemy->qPos.x);
    worldX = TO_WORLD_POS_RAW(worldX, enemy->region[0]);
    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        p = sub_805CD20(i);
        if (p == NULL) {
            break;
        }

        if (s->frameFlags & 0x400) {
            var_r0 = I(p->qWorldX) - worldX;
        } else {
            var_r0 = worldX - I(p->qWorldX);
        }
        if (var_r0 > 0 && (var_r0) < 80) {
            return TRUE;
        }
    }

    return FALSE;
}

bool32 sub_805E9A8(Juggling *arg0, EnemyUnknownStruc0 *arg1)
{
    arg1->me = NULL;
    arg1->meX = 0;
    arg1->unk4 = 0;
    arg1->spr = (Sprite *)&arg0->s;
    arg1->posX = arg0->qPos.x;
    arg1->posY = arg0->qPos.y;
    arg1->regionX = arg0->region[0];
    arg1->regionY = arg0->region[1];
    return sub_805C63C(arg1);
}

u32 sub_805E9D4(Juggling *enemy)
{
    Sprite *s;
    EnemyUnknownStruc0 unk;

    unk.unk4 = sub_805E9A8(enemy, &unk);
    unk.spr = (Sprite *)&enemy->s;
    unk.posX = enemy->unkX;
    unk.posY = enemy->unkY;
    unk.regionX = enemy->region[0];
    unk.regionY = enemy->region[1];
    unk.me = enemy->me;
    unk.meX = enemy->meX;

    return sub_805C280(&unk);
}

void TaskDestructor_Juggling(Task *t)
{
    Juggling *enemy = TASK_DATA(t);
    VramFree(enemy->s.tiles);
}

Task *sub_805EA24(s32 *x, s32 *y, u16 regionX, u16 regionY, u8 *arg4, u8 arg5, void *arg6)
{
    Task *t = TaskCreate(Task_JugglingPin, sizeof(JugglingPin), 0x4040U, 0U, TaskDestructor_JugglingPin);
    JugglingPin *proj = TASK_DATA(t);

    proj->unk18 = x;
    proj->unk1C = y;
    proj->qPos.x = 0;
    proj->qPos.y = 0;
    proj->region[0] = regionX;
    proj->region[1] = regionY;
    proj->unk8 = arg5;
    proj->unk0 = 0;
    proj->unk10 = 0;
    proj->unk12 = 0;
    proj->unkE = 0;
    proj->unk4 = arg4;
    proj->vram = arg6;

    CpuFill16(0, &proj->s.hitboxes[1].b, sizeof(proj->s.hitboxes[1].b));
    sub_805E7A4(proj);

    return t;
}

void Task_JugglingPin(void)
{
    Sprite2 *s;
    bool32 var_r5;

    JugglingPin *proj = TASK_DATA(gCurTask);

    var_r5 = sub_805EB68(proj);
    sub_805EBB4(proj);

    if (var_r5 == 1) {
        *proj->unk4 = 0;
        TaskDestroy(gCurTask);
        return;
    }

    if (sub_805E814(proj) == 1) {
        var_r5 = 1;
    }

    if (var_r5 == 1) {
        s = &proj->s;
        s->anim = gUnknown_080D1F7C[1].anim;
        s->variant = gUnknown_080D1F7C[1].variant;
        gCurTask->main = Task_805EB34;
    }
}

void Task_805EB34()
{
    JugglingPin *proj = TASK_DATA(gCurTask);
    AnimCmdResult acmdRes;

    acmdRes = sub_805EBB4(proj);
    sub_805E814(proj);

    if (acmdRes == 0) {
        *proj->unk4 = 0;
        TaskDestroy(gCurTask);
        return;
    }
}

#if 0
u32 sub_805EB68(JugglingPin *proj)
{
    s32 temp_r0;
    s16 temp_r1;

    proj->unkE += 0x20;
    if (proj->unkE > 0x800) {
        return TRUE;
    } else {
        s32 *ptr = proj->unk1C;
        const s16 *pSin = &gSineTable[0];
        s32 theta, v;
        theta = ((proj->unkE >> 4) & 0xFF) * 4;
        v = (((((pSin[theta])) >> 0x6) * 64) + 0x2000);
        proj->qPos.y = *ptr - v;
        proj->qPos.x = *proj->unk18;
        return FALSE;
    }
}
#endif

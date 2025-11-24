#include "global.h"
#include "core.h"
#include "trig.h"
#include "malloc_vram.h"
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
    /* 0x18 */ s32 unk18;
    /* 0x1C */ s32 unk1C;
    /* 0x20 */ s32 posX;
    /* 0x24 */ s32 posY;
    /* 0x28 */ Vec2_32 unk28[2];
    /* 0x38 */ u8 filler38[0x4];
    /* 0x3C */ s32 unk3C;
    /* 0x40 */ s32 unk40;
    /* 0x44 */ Sprite2 s;
    /* 0x74 */ Sprite2 s2;
    /* 0xA4 */ Sprite2 s3;
    /* 0xD4 */ s32 unkD4;
    /* 0xD8 */ s32 unkD8;
} Juggling;

void Task_Juggling(void);
void sub_805E344(Juggling *enemy);
void sub_805E5A0(Juggling *enemy);
void sub_805E624(Juggling *enemy);
void sub_805E6E0(Juggling *enemy);
void Task_805E8B8(void);
void sub_805E918(Juggling *enemy);
bool32 sub_805E950(Juggling *enemy);
bool32 sub_805E9D4(Juggling *enemy);
void TaskDestructor_Juggling(struct Task *t);
s32 sub_805EA24(s32 *arg0, s32 *arg1, u16 arg2, u16 arg3, u8 *arg4, s32 arg5, void *arg6);

extern const TileInfo2 gUnknown_080D1F6C[2];

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
    enemy->posX = Q(me->x * TILE_WIDTH);
    enemy->posY = Q(me->y * TILE_WIDTH);
    enemy->unk28[0].x = 0;
    enemy->unk28[0].y = 0;
    enemy->unk28[1].x = 0;
    enemy->unk28[1].y = 0;
    enemy->unk18 = enemy->posX;
    enemy->unk1C = enemy->posY;
    enemy->unk3C = enemy->posX + Q(me->d.sData[0] * TILE_WIDTH);
    enemy->unk40 = enemy->unk3C + Q(me->d.uData[2] * TILE_WIDTH);
    enemy->unkE[0] = 0;
    enemy->unkE[1] = 0x800;
    enemy->unk6[0] = 0;
    enemy->unk6[1] = 0;
    enemy->unk8 = 0;
    enemy->unkD4 = 0;
    enemy->unkD8 = 0;

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
    s->x = TO_WORLD_POS_RAW(I(enemy->posX), enemy->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->posY), enemy->region[1]) - gCamera.y;
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

    sub_805CD70((Vec2_32 *)&enemy->posX, NULL, enemy->region, &enemy->unk8);
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
    if ((enemy->posX <= enemy->unk3C) || (enemy->posX >= enemy->unk40)) {
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
                = sub_805EA24(&enemy->unk28[0].x, &enemy->posY, enemy->region[0], enemy->region[1], &enemy->unk6[0], 0, enemy->vram);
            enemy->unk6[0] = 1;
            enemy->unkE[0] = 0x800;
            return;
        }
    }
    if ((enemy->unk6[1] == 0) && (enemy->unkE[1] == 0)) {
        enemy->unkD4
            = sub_805EA24(&enemy->unk28[1].x, &enemy->posY, enemy->region[0], enemy->region[1], &enemy->unk6[1], 1, enemy->vram + 0x200);
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
                *dst = enemy->posY - (var_r0);
            } else {
                s32 *dst = &enemy->unk28[i].y;
                var_r0 = (((SIN(((enemy->unkE[i] >> 0x4) & 0xFF) * 4)) >> 6) * 16) + 0x2000;
                *dst = enemy->posY - (var_r0);
            }
        }
        if (i == 0) {
            enemy->unk28[i].x = enemy->posX + Q(8);
        } else {
            enemy->unk28[i].x = enemy->posX - Q(8);
        }
    }
}
END_NONMATCH

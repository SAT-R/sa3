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
    /* 0x05 */ u8 spriteX;
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
    /* 0x00 */ u16 region[2];
    /* 0x04 */ u16 theta;
    u8 filler4[0x2];
    /* 0x08 */ Vec2_32 qUnk8;
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
bool32 sub_805ACB4(Ape *);
void TaskDestructor_Ape(struct Task *t);
void CreateApeProjectile(s32 x, s32 y, u16 regionX, u16 regionY, s8 param4);

extern const TileInfo2 gUnknown_080D1ECC[6]; // Buzzer
extern const TileInfo2 gUnknown_080D1EE4[2]; // proj

#define isBetween(v, min, onePastMax) (((v) >= (min)) && ((v) < onePastMax))

void CreateEntity_Ape_0(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_ApeMain, sizeof(Ape), 0x2100, 0, TaskDestructor_Ape);
    Ape *enemy = TASK_DATA(t);
    s32 qX, qY;

    enemy->me = me;
    enemy->spriteX = me->x;
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
    enemy->spriteX = me->x;
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

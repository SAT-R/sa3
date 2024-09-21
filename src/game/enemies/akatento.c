#include "global.h"
#include "task.h"
#include "malloc_vram.h"
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
    /* 0x06 */ s8 unk6;
    /* 0x07 */ s8 direction;
    /* 0x08 */ Vec2_u16 region;
    /* 0x0C */ Vec2_32 qUnkC;
    /* 0x14 */ Vec2_32 qPos;
    /* 0x1C */ s32 unk1C;
    /* 0x20 */ s32 unk20;
    /* 0x24 */ Sprite s;
    /* 0x4C */ u8 filler4C[0x4];
    /* 0x50 */ u16 unk50[2]; // TODO: type
} Akatento; /* size: 0x54 */

void Task_Akatento(void);
void Task_80583D4(void);
void TaskDestructor_Akatento(struct Task *t);

void sub_80582B0(Akatento *);
void sub_8058464(Akatento *);
bool32 sub_8058518(Akatento *);
AnimCmdResult sub_80584A8(Akatento *);

extern TileInfo2 gUnknown_080D1E20[4];

void CreateEntity_Akatento(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Akatento, sizeof(Akatento), 0x2100, 0, TaskDestructor_Akatento);
    Akatento *enemy = TASK_DATA(t);
    s32 qX, qY;

    enemy->me = me;
    enemy->spriteX = me->x;
    enemy->id = id;
    enemy->region.x = regionX;
    enemy->region.y = regionY;

    qX = Q(me->x * TILE_WIDTH);
    enemy->qPos.x = qX;
    qY = Q(me->y * TILE_WIDTH);
    enemy->qPos.y = qY;

    enemy->qUnkC.x = qX;
    enemy->qUnkC.y = qY;
    enemy->unk1C = qX + Q(me->d.sData[0] * TILE_WIDTH);
    enemy->unk20 = enemy->unk1C + Q(me->d.uData[2] * TILE_WIDTH);

    enemy->unk6 = 0;

    if (me->d.uData[4] & 0x8) {
        enemy->direction = -1;
    } else {
        enemy->direction = +1;
    }

    CpuFill16(0, &enemy->unk50, sizeof(enemy->unk50));

    sub_80582B0(enemy);

    SET_MAP_ENTITY_INITIALIZED(me);
}

void sub_80582B0(Akatento *enemy)
{
    void *tiles = ALLOC_TILES(ANIM_AKATENTO);
    Sprite *s = &enemy->s;
    s->tiles = tiles;

    s->anim = gUnknown_080D1E20[0].anim;
    s->variant = gUnknown_080D1E20[0].variant;
    s->prevVariant = -1;
    s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region.x) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region.y) - gCamera.y;
    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->animCursor = 0;
    s->timeUntilNextFrame = 0;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);

    if (enemy->direction < 0) {
        s->frameFlags |= SPRITE_FLAG_MASK_X_FLIP;
    }

    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;

    UpdateSpriteAnimation(s);
}

void Task_Akatento(void)
{
    Akatento *enemy = TASK_DATA(gCurTask);

    sub_805CD70(&enemy->qPos, &enemy->qUnkC, &enemy->region, &enemy->unk6);

    if ((gStageData.unk4 != 1) && (gStageData.unk4 != 2) && (gStageData.unk4 != 4)) {
        sub_8058464(enemy);
    }

    if (sub_8058518(enemy) == TRUE) {
        TaskDestroy(gCurTask);
        return;
    }

    sub_80584A8(enemy);

    if ((enemy->qPos.x <= enemy->unk1C) || (enemy->qPos.x >= enemy->unk20)) {
        Sprite *s = &enemy->s;
        s->anim = gUnknown_080D1E20[1].anim;
        s->variant = gUnknown_080D1E20[1].variant;
        gCurTask->main = Task_80583D4;
    }
}

void Task_80583D4(void)
{
    Akatento *enemy = TASK_DATA(gCurTask);
    AnimCmdResult acmdRes = sub_80584A8(enemy);

    if (sub_8058518(enemy) == TRUE) {
        TaskDestroy(gCurTask);
        return;
    }

    if ((gStageData.unk4 != 1) && (gStageData.unk4 != 2) && (gStageData.unk4 != 4) && (acmdRes == ACMD_RESULT__ENDED)) {
        Sprite *s = &enemy->s;

        if (s->frameFlags & SPRITE_FLAG_MASK_X_FLIP) {
            s->frameFlags &= ~SPRITE_FLAG_MASK_X_FLIP;
        } else {
            s->frameFlags |= SPRITE_FLAG_MASK_X_FLIP;
        }

        s->anim = gUnknown_080D1E20[0].anim;
        s->variant = gUnknown_080D1E20[0].variant;

        gCurTask->main = Task_Akatento;
    }
}

void sub_8058464(Akatento *enemy)
{
    if (enemy->s.frameFlags & SPRITE_FLAG_MASK_X_FLIP) {
        if (enemy->qPos.x <= enemy->unk20) {
            enemy->qPos.x += Q(1.0);

            if (enemy->qPos.x > enemy->unk20) {
                enemy->qPos.x = enemy->unk20;
            }
        }
    } else {
        if (enemy->qPos.x >= enemy->unk1C) {
            enemy->qPos.x -= Q(1.0);

            if (enemy->qPos.x < enemy->unk1C) {
                enemy->qPos.x = enemy->unk1C;
            }
        }
    }
}

AnimCmdResult sub_80584A8(Akatento *enemy)
{
    AnimCmdResult acmdRes;

    Sprite *s = &enemy->s;
    s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region.x) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region.y) - gCamera.y;

    acmdRes = UpdateSpriteAnimation(s);
    DisplaySprite(s);

    return acmdRes;
}

bool32 sub_80584EC(Akatento *enemy, EnemyUnknownStruc0 *param1)
{
    Sprite *s;

    param1->me = NULL;
    param1->spriteX = 0;
    param1->unk4 = 0;

    s = &enemy->s;
    param1->spr = s;
    param1->posX = enemy->qPos.x;
    param1->posY = enemy->qPos.y;
    param1->regionX = enemy->region.x;
    param1->regionY = enemy->region.y;

    return sub_805C63C(param1);
}

bool32 sub_8058518(Akatento *enemy)
{
    EnemyUnknownStruc0 unk;

    unk.unk4 = sub_80584EC(enemy, &unk);
    unk.spr = &enemy->s;
    unk.posX = enemy->qUnkC.x;
    unk.posY = enemy->qUnkC.y;
    unk.regionX = enemy->region.x;
    unk.regionY = enemy->region.y;
    unk.me = enemy->me;
    unk.spriteX = enemy->spriteX;

    return sub_805C280(&unk);
}

void TaskDestructor_Akatento(struct Task *t)
{
    Akatento *enemy = TASK_DATA(t);
    VramFree(enemy->s.tiles);
}
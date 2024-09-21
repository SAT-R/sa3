#include "global.h"
#include "sprite.h"
#include "task.h"
#include "trig.h"
#include "malloc_vram.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/enemy_unknown.h"
#include "game/player.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"

typedef struct {
    /* 0x00 */ MapEntity *me;
    /* 0x04 */ u8 id;
    /* 0x05 */ u8 spriteX;
    /* 0x06 */ u8 unk6;
    /* 0x07 */ s8 unk7;
    /* 0x08 */ u8 unk8;
    /* 0x09 */ s8 unk9;
    /* 0x0A */ u8 unkA;
    /* 0x0C */ Vec2_u16 region;
    /* 0x10 */ u8 unk10;
    /* 0x12 */ s16 unk12;
    /* 0x14 */ Vec2_32 qUnk14;
    /* 0x1C */ Vec2_32 qPos;
    /* 0x24 */ s32 qLeft;
    /* 0x28 */ s32 qRight;
    /* 0x2C */ Sprite s;
    /* 0x54 */ u8 filler54[4];
    /* 0x58 */ u16 unk58[2]; // TODO: type
} GekoGeko; /* size: 0x5C */

void Task_GekoGeko0(void);
void Task_GekoGeko2(void);
bool32 sub_8059AE8(GekoGeko *enemy);
void Task_GekoGeko1(void);
void sub_8059C14(GekoGeko *enemy);
AnimCmdResult sub_8059C3C(GekoGeko *enemy);
bool32 sub_8059CB0(GekoGeko *enemy);
static void InitSprite(GekoGeko *enemy);
void TaskDestructor_GekoGeko(struct Task *);

// const TileInfo2 sTileInfoGekoGeko[3] = {
// {ANIM_FROG, 0, MAX_TILES_VARIANT(ANIM_FROG, 0)},
// {ANIM_FROG, 2, MAX_TILES_VARIANT(ANIM_FROG, 2)},
// {ANIM_FROG, 1, MAX_TILES_VARIANT(ANIM_FROG, 1)},
// };
extern const TileInfo2 sTileInfoGekoGeko[3];

void CreateEntity_GekoGeko(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_GekoGeko0, sizeof(GekoGeko), 0x2100, 0, TaskDestructor_GekoGeko);
    GekoGeko *enemy = TASK_DATA(t);
    s32 qX, qY;

    enemy->me = me;
    enemy->unk6 = 0;
    enemy->id = id;
    enemy->spriteX = me->x;
    enemy->region.x = regionX;
    enemy->region.y = regionY;

    qX = Q(me->x * TILE_WIDTH);
    enemy->qPos.x = qX;
    qY = Q(me->y * TILE_WIDTH);
    enemy->qPos.y = qY;

    enemy->qUnk14.x = qX;
    enemy->qUnk14.y = qY;

    enemy->unkA = 1;
    enemy->unk10 = 0xFF;
    enemy->unk12 = 0;
    enemy->unk7 = 0;

    enemy->qLeft = qX + Q(me->d.sData[0] * TILE_WIDTH);
    enemy->qRight = enemy->qLeft + Q(me->d.uData[2] * TILE_WIDTH);

    enemy->unk8 = 0;

    if (me->d.uData[4] & 0x8) {
        enemy->unk9 = -1;
    } else {
        enemy->unk9 = +1;
    }

    CpuFill16(0, &enemy->unk58, sizeof(enemy->unk58));

    InitSprite(enemy);

    SET_MAP_ENTITY_INITIALIZED(me);
}

static void InitSprite(GekoGeko *enemy)
{
    void *tiles = ALLOC_TILES(ANIM_FROG);
    Sprite *s = &enemy->s;
    s->tiles = tiles;

    s->anim = sTileInfoGekoGeko[0].anim;
    s->variant = sTileInfoGekoGeko[0].variant;
    s->prevVariant = -1;
    s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region.x) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region.y) - gCamera.y;
    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->animCursor = 0;
    s->timeUntilNextFrame = 0;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);

    if (enemy->unk9 < 0) {
        s->frameFlags |= SPRITE_FLAG_MASK_X_FLIP;
    }

    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;

    UpdateSpriteAnimation(s);
}

void Task_GekoGeko0(void)
{
    GekoGeko *enemy = TASK_DATA(gCurTask);
    AnimCmdResult cmdRes;

    sub_805CD70(&enemy->qPos, 0, &enemy->region, &enemy->unk8);

    if (sub_8059CB0(enemy) == TRUE) {
        TaskDestroy(gCurTask);
        return;
    }

    cmdRes = sub_8059C3C(enemy);

    if (gStageData.unk4 != 1 && gStageData.unk4 != 2 && gStageData.unk4 != 4) {
        if (cmdRes == ACMD_RESULT__ENDED) {
            if ((unsigned)++enemy->unk7 > 60) {
                enemy->unk12 = 0;
                enemy->unk6 = 0;
                enemy->unk7 = 0;
                enemy->s.prevVariant = -1;
            }
        } else {
            sub_8059C14(enemy);
        }

        if (cmdRes == ACMD_RESULT__ENDED) {
            Sprite *s = &enemy->s;

            if (((enemy->qLeft >= enemy->qPos.x) && !(s->frameFlags & SPRITE_FLAG_MASK_X_FLIP))
                || ((enemy->qRight <= enemy->qPos.x) && (s->frameFlags & SPRITE_FLAG_MASK_X_FLIP))) {
                s->anim = sTileInfoGekoGeko[1].anim;
                s->variant = sTileInfoGekoGeko[1].variant;
                gCurTask->main = Task_GekoGeko1;
            } else if ((sub_8059AE8(enemy) == TRUE) && (enemy->unk6 == 0)) {
                s->anim = sTileInfoGekoGeko[2].anim;
                s->variant = sTileInfoGekoGeko[2].variant;
                gCurTask->main = Task_GekoGeko2;
            }
        }
    }
}

void Task_GekoGeko2(void)
{
    GekoGeko *enemy = TASK_DATA(gCurTask);
    AnimCmdResult cmdRes;

    if (sub_8059CB0(enemy) == TRUE) {
        TaskDestroy(gCurTask);
        return;
    }

    cmdRes = sub_8059C3C(enemy);

    if (cmdRes == ACMD_RESULT__ENDED) {
        Sprite *s = &enemy->s;

        s->anim = sTileInfoGekoGeko[0].anim;
        s->variant = sTileInfoGekoGeko[0].variant;

        enemy->unk6 = 1;
        CpuFill16(0, &enemy->unk58, sizeof(enemy->unk58));

        gCurTask->main = Task_GekoGeko0;
    }
}

//(88.82%) https://decomp.me/scratch/phCcE
NONMATCH("asm/non_matching/game/enemies/gekogeko__sub_8059AE8.inc", bool32 sub_8059AE8(GekoGeko *enemy))
{
    Sprite *s = &enemy->s;
    Player *p;
    s32 worldX, worldY;
    s32 dir;
    u8 i;

    worldX = I(enemy->qPos.x);
    worldY = I(enemy->qPos.y);
    worldX = TO_WORLD_POS_RAW(worldX, enemy->region.x);
    worldY = TO_WORLD_POS_RAW(worldY, enemy->region.y);

    for (i = 0; i < 2; i++) {
        p = sub_805CD20(i);
        if (p) {
            dir = (u16)sub_80BF30C(I(p->qWorldY) - worldY, I(p->qWorldX) - worldX);

            if ((((u16)(dir - 1) <= 254) || ((u16)(dir + (-Q(3) - 1)) <= 254)) && (s->frameFlags & SPRITE_FLAG_MASK_X_FLIP)) {
                return TRUE;
            }

            if (((u16)(dir + (-Q(1) - 1)) <= 510) && !(s->frameFlags & SPRITE_FLAG_MASK_X_FLIP)) {
                return TRUE;
            }
        }
    }

    return FALSE;
}
END_NONMATCH

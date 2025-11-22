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
    /* 0x05 */ u8 meX;
    /* 0x06 */ u8 unk6;
    /* 0x07 */ s8 unk7;
    /* 0x08 */ u8 unk8;
    /* 0x09 */ s8 unk9;
    /* 0x0A */ u8 unkA;
    /* 0x0C */ u16 region[2];
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

static void Task_GekoGeko0(void);
static void Task_GekoGeko2(void);
static bool32 sub_8059AE8(GekoGeko *enemy);
static void Task_GekoGeko1(void);
static void UpdatePosition(GekoGeko *enemy);
static AnimCmdResult sub_8059C3C(GekoGeko *enemy);
static bool32 sub_8059CB0(GekoGeko *enemy);
static void InitSprite(GekoGeko *enemy);
static void TaskDestructor_GekoGeko(struct Task *);

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
    enemy->meX = me->x;
    enemy->region[0] = regionX;
    enemy->region[1] = regionY;

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
    s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region[1]) - gCamera.y;
    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);

    if (enemy->unk9 < 0) {
        s->frameFlags |= SPRITE_FLAG_MASK_X_FLIP;
    }

    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;

    UpdateSpriteAnimation(s);
}

static void Task_GekoGeko0(void)
{
    GekoGeko *enemy = TASK_DATA(gCurTask);
    AnimCmdResult acmdRes;

    sub_805CD70(&enemy->qPos, 0, enemy->region, &enemy->unk8);

    if (sub_8059CB0(enemy) == TRUE) {
        TaskDestroy(gCurTask);
        return;
    }

    acmdRes = sub_8059C3C(enemy);

    if (gStageData.unk4 != 1 && gStageData.unk4 != 2 && gStageData.unk4 != 4) {
        if (acmdRes == ACMD_RESULT__ENDED) {
            if ((unsigned)++enemy->unk7 > 60) {
                enemy->unk12 = 0;
                enemy->unk6 = 0;
                enemy->unk7 = 0;
                enemy->s.prevVariant = -1;
            }
        } else {
            UpdatePosition(enemy);
        }

        if (acmdRes == ACMD_RESULT__ENDED) {
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

static void Task_GekoGeko2(void)
{
    GekoGeko *enemy = TASK_DATA(gCurTask);
    AnimCmdResult acmdRes;

    if (sub_8059CB0(enemy) == TRUE) {
        TaskDestroy(gCurTask);
        return;
    }

    acmdRes = sub_8059C3C(enemy);

    if (acmdRes == ACMD_RESULT__ENDED) {
        Sprite *s = &enemy->s;

        s->anim = sTileInfoGekoGeko[0].anim;
        s->variant = sTileInfoGekoGeko[0].variant;

        enemy->unk6 = 1;
        CpuFill16(0, &enemy->unk58, sizeof(enemy->unk58));

        gCurTask->main = Task_GekoGeko0;
    }
}

bool32 sub_8059AE8(GekoGeko *enemy)
{
    Sprite *s = &enemy->s;
    Player *p;
    s32 worldX, worldY;
    s32 dir;
    u8 i;

    worldX = I(enemy->qPos.x);
    worldY = I(enemy->qPos.y);
    worldX = TO_WORLD_POS_RAW(worldX, enemy->region[0]);
    worldY = TO_WORLD_POS_RAW(worldY, enemy->region[1]);

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        Player *p = sub_805CD20(i);
        if (p == NULL)
            break;

        dir = (u16)sa2__sub_8004418(I(p->qWorldY) - worldY, I(p->qWorldX) - worldX);

        if ((((u16)(dir - 1) <= 254) || ((u16)(dir + (-Q(3) - 1)) <= 254)) && (s->frameFlags & SPRITE_FLAG_MASK_X_FLIP)) {
            return TRUE;
        }

        if (((u16)(dir + (-Q(1) - 1)) <= 510) && !(s->frameFlags & SPRITE_FLAG_MASK_X_FLIP)) {
            return TRUE;
        }
    }

    return FALSE;
}

static void Task_GekoGeko1(void)
{
    GekoGeko *enemy = TASK_DATA(gCurTask);
    AnimCmdResult acmdRes;

    if (sub_8059CB0(enemy) == TRUE) {
        TaskDestroy(gCurTask);
        return;
    }

    acmdRes = sub_8059C3C(enemy);

    if (acmdRes == ACMD_RESULT__ENDED) {
        Sprite *s = &enemy->s;

        SPRITE_FLIP_X_DIR(s);

        s->anim = sTileInfoGekoGeko[0].anim;
        s->variant = sTileInfoGekoGeko[0].variant;

        gCurTask->main = Task_GekoGeko0;
    }
}

static void UpdatePosition(GekoGeko *enemy)
{
    if (enemy->s.frameFlags & SPRITE_FLAG_MASK_X_FLIP) {
        enemy->qPos.x += Q(1);
    } else {
        enemy->qPos.x -= Q(1);
    }
}

static AnimCmdResult sub_8059C3C(GekoGeko *enemy)
{
    AnimCmdResult acmdRes;

    Sprite *s = &enemy->s;
    s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region[1]) - gCamera.y;

    acmdRes = UpdateSpriteAnimation(s);
    DisplaySprite(s);

    return acmdRes;
}

static bool32 sub_8059C80(GekoGeko *enemy, EnemyUnknownStruc0 *param1)
{
    Sprite *s;

    param1->me = NULL;
    param1->meX = 0;
    param1->unk4 = 0;

    s = &enemy->s;
    param1->spr = s;
    param1->posX = enemy->qPos.x;
    param1->posY = enemy->qPos.y;
    param1->regionX = enemy->region[0];
    param1->regionY = enemy->region[1];

    return sub_805C63C(param1);
}

bool32 sub_8059CAC() { return FALSE; }

static bool32 sub_8059CB0(GekoGeko *enemy)
{
    EnemyUnknownStruc0 unk;

    unk.unk4 = sub_8059C80(enemy, &unk);
    unk.spr = &enemy->s;
    unk.posX = enemy->qUnk14.x;
    unk.posY = enemy->qUnk14.y;
    unk.regionX = enemy->region[0];
    unk.regionY = enemy->region[1];
    unk.me = enemy->me;
    unk.meX = enemy->meX;

    return sub_805C280(&unk);
}

static void TaskDestructor_GekoGeko(struct Task *t)
{
    GekoGeko *enemy = TASK_DATA(t);
    VramFree(enemy->s.tiles);
}
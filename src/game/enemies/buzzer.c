#include "global.h"
#include "task.h"
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
    /* 0x08 */ u8 unk8;
    /* 0x09 */ u8 unk9;
    /* 0x0A */ u16 region[2];
    /* 0x0E */ u16 unkE;
    /* 0x10 */ Vec2_32 qUnk10;
    /* 0x18 */ Vec2_32 qPos;
    /* 0x20 */ s32 qLeft;
    /* 0x24 */ s32 qRight;
    /* 0x28 */ Sprite s;
    /* 0x50 */ Hitbox reserved;
} Buzzer; /* size: 0x58 */

typedef struct {
    /* 0x00 */ u16 region[2];
    u8 filler4[0xC];
    /* 0x10 */ Vec2_32 qPos;
    /* 0x18 */ Sprite s;
    /* 0x40 */ Hitbox reserved;
} BuzzerProjectile; /* size: 0x48 */

void Task_BuzzerMain(void);
void sub_8059DC0(Buzzer *enemy);
void sub_8059F08(void);
void sub_8059FA0(void);
void TaskDestructor_Buzzer(struct Task *t);
void Task_BuzzerProjectileInit(void);
void InitSpriteProjectile(BuzzerProjectile *proj);
bool32 sub_805A04C(Buzzer *enemy);
void sub_805A238(Buzzer *enemy);
AnimCmdResult sub_805A27C(Buzzer *enemy);
bool32 sub_805A2EC(Buzzer *enemy);
AnimCmdResult sub_8059640(Buzzer *enemy);
bool32 sub_8059684(Buzzer *enemy, EnemyUnknownStruc0 *param1);
void CreateBuzzerProjectile(s32 qPosX, s32 qPosY, u16 regionX, u16 regionY, u16 param4);
void UpdateProjectilePos(BuzzerProjectile *proj);

extern const TileInfo2 gUnknown_080D1EAC[6]; // Buzzer
extern const TileInfo2 gUnknown_080D1EC4[2]; // proj

#define isBetween(v, min, onePastMax) (((v) >= (min)) && ((v) < onePastMax))

void CreateEntity_Buzzer(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_BuzzerMain, sizeof(Buzzer), 0x2100, 0, TaskDestructor_Buzzer);
    Buzzer *enemy = TASK_DATA(t);
    s32 qX, qY;

    enemy->me = me;
    enemy->spriteX = me->x;
    enemy->id = id;
    enemy->region[0] = regionX;
    enemy->region[1] = regionY;
    enemy->unk8 = 0;

    qX = Q(me->x * TILE_WIDTH);
    enemy->qPos.x = qX;
    qY = Q(me->y * TILE_WIDTH);
    enemy->qPos.y = qY;

    enemy->qUnk10.x = qX;
    enemy->qUnk10.y = qY;
    enemy->qLeft = qX + Q(me->d.sData[0] * TILE_WIDTH);
    enemy->qRight = enemy->qLeft + Q(me->d.uData[2] * TILE_WIDTH);
    enemy->unkE = 0;

    if (me->d.uData[4] & 0x8) {
        enemy->direction = -1;
    } else {
        enemy->direction = +1;
    }

    CpuFill16(0, &enemy->reserved.b, sizeof(enemy->reserved.b));

    sub_8059DC0(enemy);

    SET_MAP_ENTITY_INITIALIZED(me);
}

void sub_8059DC0(Buzzer *enemy)
{
    void *tiles = ALLOC_TILES(ANIM_BUZZER);
    Sprite *s = &enemy->s;
    s->tiles = tiles;

    s->anim = gUnknown_080D1EAC[0].anim;
    s->variant = gUnknown_080D1EAC[0].variant;
    s->prevVariant = -1;
    s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region[1]) - gCamera.y;
    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);

    if (enemy->direction < 0) {
        s->frameFlags |= SPRITE_FLAG_MASK_X_FLIP;
    }

    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;

    UpdateSpriteAnimation(s);
}

void Task_BuzzerMain(void)
{
    Buzzer *enemy = TASK_DATA(gCurTask);
    Sprite *s = &enemy->s;

    if (sub_805A2EC(enemy) == TRUE) {
        TaskDestroy(gCurTask);
        return;
    }

    sub_805A27C(enemy);

    if ((gStageData.unk4 != 1) && (gStageData.unk4 != 2) && (gStageData.unk4 != 4)) {
        sub_805A238(enemy);

        if ((sub_805A04C(enemy) == TRUE) && enemy->unk6 == 0) {
            s->anim = gUnknown_080D1EAC[2].anim;
            s->variant = gUnknown_080D1EAC[2].variant;

            gCurTask->main = sub_8059FA0;
            return;
        }
    }

    if (((enemy->qPos.x <= enemy->qLeft) && !(s->frameFlags & SPRITE_FLAG(X_FLIP, 1)))
        || (enemy->qPos.x >= enemy->qRight && (s->frameFlags & SPRITE_FLAG(X_FLIP, 1)))) {
        s->anim = gUnknown_080D1EAC[1].anim;
        s->variant = gUnknown_080D1EAC[1].variant;
        s->prevVariant = -1;

        gCurTask->main = sub_8059F08;
    }
}

void sub_8059F08(void)
{
    Buzzer *enemy = TASK_DATA(gCurTask);

    AnimCmdResult acmdRes = sub_805A27C(enemy);

    if (sub_805A2EC(enemy) == TRUE) {
        TaskDestroy(gCurTask);
        return;
    }

    if ((gStageData.unk4 != 1) && (gStageData.unk4 != 2) && (gStageData.unk4 != 4) && (acmdRes == ACMD_RESULT__ENDED)) {
        Sprite *s = &enemy->s;
        s->anim = gUnknown_080D1EAC[0].anim;
        s->variant = gUnknown_080D1EAC[0].variant;
        s->prevVariant = -1;

        if (s->frameFlags & SPRITE_FLAG_MASK_X_FLIP) {
            s->frameFlags &= ~SPRITE_FLAG_MASK_X_FLIP;
        } else {
            s->frameFlags |= SPRITE_FLAG_MASK_X_FLIP;
        }

        enemy->unk6 = 0;

        gCurTask->main = Task_BuzzerMain;
    }
}

void sub_8059FA0(void)
{
    Buzzer *enemy = TASK_DATA(gCurTask);

    sub_805A27C(enemy);

    if (sub_805A2EC(enemy) == TRUE) {
        TaskDestroy(gCurTask);
        return;
    }

    if ((gStageData.unk4 != 1) && (gStageData.unk4 != 2) && (gStageData.unk4 != 4)) {
        if (++enemy->unk8 > 33) {
            Sprite *s = &enemy->s;
            s8 dx;
            s->anim = gUnknown_080D1EAC[0].anim;
            s->variant = gUnknown_080D1EAC[0].variant;
            enemy->unk6 = 1;

            if (s->frameFlags & SPRITE_FLAG_MASK_X_FLIP) {
                dx = +10;
            } else {
                dx = -10;
            }

            CreateBuzzerProjectile(enemy->qPos.x + Q_8_8(dx), enemy->qPos.y + Q(14), enemy->region[0], enemy->region[1], enemy->unkE);

            enemy->unk8 = 0;
            gCurTask->main = Task_BuzzerMain;
        }
    }
}

bool32 sub_805A04C(Buzzer *enemy)
{
    Sprite *s = &enemy->s;
    Player *p;
    s32 worldX;
    s32 worldY;
    s32 qWorldX;
    s32 dir;
    u8 i;

    worldX = I(enemy->qPos.x);
    worldY = I(enemy->qPos.y);
    worldX = (TO_WORLD_POS_RAW(worldX, enemy->region[0]));
    worldY = (TO_WORLD_POS_RAW(worldY, enemy->region[1]));

    for (i = 0, qWorldX = Q(worldX); i < NUM_SINGLE_PLAYER_CHARS; i++) {
        Player *p = sub_805CD20(i);
        if (p == NULL)
            break;

        dir = (u16)sa2__sub_8004418(I(p->qWorldY) - worldY, I(p->qWorldX) - worldX);

        if ((((u16)(dir - 1) <= 254) && (s->frameFlags & SPRITE_FLAG_MASK_X_FLIP))
            || ((((u16)(dir + (-Q(1) - 1)) <= 254)) && !(s->frameFlags & SPRITE_FLAG_MASK_X_FLIP))) {
            if ((ABS(worldX - I(p->qWorldX)) < 100) && (ABS(worldY - I(p->qWorldY)) < 100)) {
                enemy->unkE = dir;
                return TRUE;
            }
        }
    }

    return FALSE;
}

void InitSpriteProjectile(BuzzerProjectile *enemy)
{
    void *tiles = ALLOC_TILES(ANIM_BUZZER_PROJ);
    Sprite *s = &enemy->s;
    s->tiles = tiles;

    s->anim = gUnknown_080D1EC4[0].anim;
    s->variant = gUnknown_080D1EC4[0].variant;
    s->prevVariant = -1;
    s->x = I(enemy->qPos.x) - gCamera.x;
    s->y = I(enemy->qPos.y) - gCamera.y;
    s->oamFlags = SPRITE_OAM_ORDER(19);
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;

    UpdateSpriteAnimation(s);
}

bool32 sub_805A194(BuzzerProjectile *proj)
{
    Sprite *s;
    s32 worldX, worldY;
    u8 i;

    Player *p = NULL;

    worldX = I(proj->qPos.x);
    worldY = I(proj->qPos.y);

    worldX = TO_WORLD_POS_RAW(worldX, proj->region[0]);
    worldY = TO_WORLD_POS_RAW(worldY, proj->region[1]);

    s = &proj->s;

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        p = GET_SP_PLAYER_V0(i);

        if ((!sub_802C080(p)) && sub_8020700(s, worldX, worldY, 1, p, 0)) {
            if (p->framesInvincible == 0) {
                sub_8020CE0(s, worldX, worldY, 1, p);
            }

            return TRUE;
        }
    }

    return FALSE;
}

// NOTE: Like sub_80595FC, but (enemy->qPos.x < enemy->qRight) instead of <=.
void sub_805A238(Buzzer *enemy)
{
    Sprite *s = &enemy->s;

    if (s->frameFlags & SPRITE_FLAG(X_FLIP, 1)) {
        if (enemy->qPos.x < enemy->qRight) {
            enemy->qPos.x += Q(1);

            if (enemy->qPos.x > enemy->qRight) {
                enemy->qPos.x = enemy->qRight;
            }
        }
    } else {
        if (enemy->qPos.x >= enemy->qLeft) {
            enemy->qPos.x -= Q(1);

            if (enemy->qPos.x < enemy->qLeft) {
                enemy->qPos.x = enemy->qLeft;
            }
        }
    }
}

AnimCmdResult sub_805A27C(Buzzer *enemy)
{
    AnimCmdResult acmdRes;

    Sprite *s = &enemy->s;
    s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region[1]) - gCamera.y;

    acmdRes = UpdateSpriteAnimation(s);
    DisplaySprite(s);

    return acmdRes;
}

bool32 sub_805A2C0(Buzzer *enemy, EnemyUnknownStruc0 *param1)
{
    Sprite *s;

    param1->me = NULL;
    param1->spriteX = 0;
    param1->unk4 = 0;

    s = &enemy->s;
    param1->spr = s;
    param1->posX = enemy->qPos.x;
    param1->posY = enemy->qPos.y;
    param1->regionX = enemy->region[0];
    param1->regionY = enemy->region[1];

    return sub_805C63C(param1);
}

bool32 sub_805A2EC(Buzzer *enemy)
{
    EnemyUnknownStruc0 unk;

    unk.unk4 = sub_805A2C0(enemy, &unk);
    unk.spr = &enemy->s;
    unk.posX = enemy->qUnk10.x;
    unk.posY = enemy->qUnk10.y;
    unk.regionX = enemy->region[0];
    unk.regionY = enemy->region[1];
    unk.me = enemy->me;
    unk.spriteX = enemy->spriteX;

    return sub_805C280(&unk);
}

void TaskDestructor_Buzzer(struct Task *t)
{
    Buzzer *enemy = TASK_DATA(t);
    VramFree(enemy->s.tiles);
}
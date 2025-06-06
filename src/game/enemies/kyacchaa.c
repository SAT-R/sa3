#include "global.h"
#include "sprite.h"
#include "task.h"
#include "malloc_vram.h"
#include "constants/zones.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/enemy_unknown.h"
#include "module_unclear.h"
#include "game/player.h"
#include "game/stage.h"

typedef struct {
    /* 0x00 */ MapEntity *me;
    /* 0x04 */ u8 id;
    /* 0x05 */ u8 spriteX;
    /* 0x06 */ u8 unk6;
    /* 0x07 */ s8 direction;
    /* 0x08 */ u16 region[2];
    /* 0x0C */ s16 unkC;
    /* 0x10 */ Vec2_32 qUnk10;
    /* 0x18 */ Vec2_32 qUnk18;
    /* 0x20 */ Vec2_32 qPos;
    /* 0x28 */ u32 unk28;
    /* 0x2C */ s32 upperBound;
    /* 0x30 */ s32 lowerBound;
    /* 0x38 */ Sprite s;
    /* 0x60 */ Sprite s2;
    /* 0x88 */ Hitbox reserved;
} Kyacchaa; /* size: 0x8C */

extern const TileInfo2 gUnknown_080D2198[];

void Task_Kyacchaa(void);
void TaskDestructor_Kyacchaa(struct Task *t);
void InitSprite_Kyacchaa(Kyacchaa *enemy);
bool32 sub_8065C48(Kyacchaa *enemy);
AnimCmdResult sub_8065CE0(Kyacchaa *enemy);
bool32 sub_8065F5C(Kyacchaa *enemy);
void Task_8065B0C(void);
void sub_8065E48(void);
void sub_8065EB0(Kyacchaa *enemy);
bool32 sub_8065F10(Kyacchaa *enemy);

void CreateEntity_Kyacchaa(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Kyacchaa, sizeof(Kyacchaa), 0x2100, 0, TaskDestructor_Kyacchaa);

    Kyacchaa *enemy = TASK_DATA(t);
    s32 qX, qY;

    enemy->me = me;
    enemy->spriteX = me->x;
    enemy->id = id;

    enemy->unkC = 0;
    enemy->region[0] = regionX;
    enemy->region[1] = regionY;

    qX = Q(me->x * TILE_WIDTH);
    enemy->qPos.x = qX;
    qY = Q(me->y * TILE_WIDTH);
    enemy->qPos.y = qY;

    enemy->qUnk18.x = qX;
    enemy->qUnk18.y = qY;

    enemy->qUnk10.x = 0;
    enemy->qUnk10.y = 0;

    enemy->lowerBound = qX + Q(me->d.sData[0] * TILE_WIDTH);
    enemy->upperBound = enemy->lowerBound + Q(me->d.uData[2] * TILE_WIDTH);

    enemy->unk6 = 0;

    if (me->d.uData[4] & 0x8) {
        enemy->direction = -1;
    } else {
        enemy->direction = +1;
    }

    CpuFill16(0, &enemy->s2.hitboxes[1].b.left, sizeof(enemy->s2.hitboxes[1].b));

    InitSprite_Kyacchaa(enemy);

    SET_MAP_ENTITY_INITIALIZED(me);
}

void InitSprite_Kyacchaa(Kyacchaa *enemy)
{
    void *tiles = VramMalloc(0x15);
    Sprite *s;
    void *secondaryTiles;

    // Initialize the second sprite (s2)
    s = &enemy->s2;
    s->tiles = tiles;

    secondaryTiles = tiles + (gUnknown_080D2198[0].numTiles << 5);

    s->anim = gUnknown_080D2198[0].anim;
    s->variant = gUnknown_080D2198[0].variant;
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

    // Initialize the first sprite (s)
    s = &enemy->s;
    s->tiles = secondaryTiles;

    s->anim = gUnknown_080D2198[3].anim;
    s->variant = gUnknown_080D2198[3].variant;
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

void sub_8065A8C(void)
{
    Kyacchaa *enemy = TASK_DATA(gCurTask);
    bool32 checkResult = FALSE;

    if ((gStageData.unk4 != 1) && (gStageData.unk4 != 2) && (gStageData.unk4 != 4)) {
        checkResult = sub_8065C48(enemy);
    }

    sub_8065CE0(enemy);

    if (sub_8065F5C(enemy) == TRUE) {
        TaskDestroy(gCurTask);
        return;
    }

    if (checkResult == TRUE) {
        Sprite *s2 = &enemy->s2;

        s2->anim = gUnknown_080D2198[1].anim;
        s2->variant = gUnknown_080D2198[1].variant;
        s2->prevVariant = -1;

        UpdateSpriteAnimation(s2);

        gCurTask->main = Task_8065B0C;
    }
}

void Task_8065B0C(void)
{
    Kyacchaa *enemy = TASK_DATA(gCurTask);
    AnimCmdResult acmdRes = sub_8065CE0(enemy);

    if (sub_8065F5C(enemy) == TRUE) {
        TaskDestroy(gCurTask);
        return;
    }

    if ((gStageData.unk4 != 1) && (gStageData.unk4 != 2) && (gStageData.unk4 != 4)) {
        if (acmdRes == ACMD_RESULT__ENDED) {
            enemy->unkC++;

            if (enemy->unkC > 60) {
                Sprite *s = &enemy->s2;

                s->anim = gUnknown_080D2198[2].anim;
                s->variant = gUnknown_080D2198[2].variant;
                s->prevVariant = -1;

                UpdateSpriteAnimation(s);
                enemy->unkC = 0;

                gCurTask->main = sub_8065E48;
            }
        }
    }
}

bool32 sub_8065B90(Kyacchaa *enemy)
{
    s32 worldX, worldY;
    u8 i;
    Player *p;

    worldX = I(enemy->qPos.x);
    worldY = I(enemy->qPos.y);
    worldX = TO_WORLD_POS_RAW(worldX, enemy->region[0]);
    worldY = TO_WORLD_POS_RAW(worldY, enemy->region[1]);

    for (i = 0; i < 2; i++) {
        p = sub_805CD20(i);
        if (!p) {
            break;
        }

        if (((p->qWorldX - Q(worldX) < Q(40) && p->qWorldX >= Q(worldX)) && (p->qWorldY - Q(worldY) < Q(80) && p->qWorldY >= Q(worldY)))
            || (Q(worldX) - p->qWorldX < Q(40) && Q(worldX) >= p->qWorldX && p->qWorldY - Q(worldY) < Q(80) && p->qWorldY >= Q(worldY))) {
            enemy->qUnk10.x = p->qWorldX - (enemy->region[0] << 16);
            enemy->qUnk10.y = p->qWorldY - (enemy->region[1] << 16);
            return TRUE;
        }
    }

    return FALSE;
}

bool32 sub_8065C48(Kyacchaa *enemy)
{
    s32 qSpeed = Q(2);

    if (enemy->qPos.x <= enemy->qUnk10.x) {
        if (enemy->qPos.x != enemy->qUnk10.x) {
            SPRITE_FLAG_SET(&enemy->s2, X_FLIP);
            SPRITE_FLAG_SET(&enemy->s, X_FLIP);

            enemy->qPos.x += qSpeed;
        }

        if (enemy->qPos.x > enemy->qUnk10.x) {
            enemy->qPos.x = enemy->qUnk10.x;
        } else if (enemy->qPos.x > enemy->upperBound) {
            enemy->qPos.x = enemy->upperBound;
        }
    } else {
        SPRITE_FLAG_CLEAR(&enemy->s2, X_FLIP);
        SPRITE_FLAG_CLEAR(&enemy->s, X_FLIP);

        enemy->qPos.x -= qSpeed;

        if (enemy->qPos.x < enemy->qUnk10.x) {
            enemy->qPos.x = enemy->qUnk10.x;
        } else if (enemy->qPos.x < enemy->lowerBound) {
            enemy->qPos.x = enemy->lowerBound;
        }
    }

    if (enemy->qPos.x == enemy->qUnk10.x || enemy->qPos.x == enemy->upperBound || enemy->qPos.x == enemy->lowerBound) {

        if (enemy->qPos.y <= enemy->qUnk10.y) {
            enemy->qPos.y += qSpeed;

            if (enemy->qPos.y > enemy->qUnk10.y) {
                enemy->qPos.y = enemy->qUnk10.y;
                return TRUE;
            }
        }
    }

    return FALSE;
}

AnimCmdResult sub_8065CE0(Kyacchaa *enemy)
{
    AnimCmdResult acmdRes;
    s32 yPos;

    // Setup second sprite
    Sprite *s = &enemy->s2;
    s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region[1]) - gCamera.y;

    UpdateSpriteAnimation(s);
    DisplaySprite(s);

    // Setup first sprite
    s = &enemy->s;
    s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region[1]) - gCamera.y - 19;

    // Adjust x position based on sprite's horizontal flip flag
    if (s->frameFlags & SPRITE_FLAG_MASK_X_FLIP) {
        s->x -= 1;
    } else {
        s->x += 1;
    }

    acmdRes = UpdateSpriteAnimation(s);
    DisplaySprite(s);

    // Draw additional sprites vertically above
    yPos = enemy->qPos.y + Q(7);

    while (yPos > enemy->qUnk18.y) {
        s = &enemy->s;

        s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region[0]) - gCamera.x;
        s->y = TO_WORLD_POS_RAW(I(yPos), enemy->region[1]) - gCamera.y - 19;

        // Same x adjustment as the main sprite
        if (s->frameFlags & SPRITE_FLAG_MASK_X_FLIP) {
            s->x -= 1;
        } else {
            s->x += 1;
        }

        acmdRes = UpdateSpriteAnimation(s);
        DisplaySprite(s);

        yPos -= Q(8);
    }

    return acmdRes;
}

void Task_Kyacchaa(void)
{
    Kyacchaa *enemy = TASK_DATA(gCurTask);

    sub_8065CE0(enemy);

    if (sub_8065B90(enemy) == TRUE) {
        gCurTask->main = sub_8065A8C;
        return;
    }

    if ((gStageData.unk4 != 1) && (gStageData.unk4 != 2) && (gStageData.unk4 != 4)) {
        sub_8065EB0(enemy);
    }

    if (sub_8065F5C(enemy) == TRUE) {
        TaskDestroy(gCurTask);
    }
}

void sub_8065E48(void)
{
    Kyacchaa *enemy = TASK_DATA(gCurTask);
    bool32 transformToKyacchaa = FALSE;

    if ((gStageData.unk4 != 1) && (gStageData.unk4 != 2) && (gStageData.unk4 != 4)) {
        transformToKyacchaa = sub_8065F10(enemy);
    }

    sub_8065CE0(enemy);

    if (sub_8065F5C(enemy) == TRUE) {
        TaskDestroy(gCurTask);
    } else if (transformToKyacchaa == TRUE) {
        gCurTask->main = Task_Kyacchaa;
    }
}

void sub_8065EB0(Kyacchaa *enemy)
{
    u16 upperBound = enemy->upperBound;
    u32 flags = enemy->s2.frameFlags;

    if (flags & SPRITE_FLAG_MASK_X_FLIP) {
        // Moving upward/right direction
        if (enemy->qPos.x <= upperBound) {
            enemy->qPos.x += Q(1);

            if (enemy->qPos.x > upperBound) {
                enemy->qPos.x = upperBound;

                SPRITE_FLAG_CLEAR(&enemy->s2, X_FLIP);
                SPRITE_FLAG_CLEAR(&enemy->s, X_FLIP);
            }
        }
    } else {
        // Moving downward/left direction
        u16 lowerBound = enemy->lowerBound;

        if (enemy->qPos.x >= lowerBound) {
            enemy->qPos.x -= Q(1);

            if (enemy->qPos.x < lowerBound) {
                enemy->qPos.x = lowerBound;

                SPRITE_FLAG_SET(&enemy->s2, X_FLIP);
                SPRITE_FLAG_SET(&enemy->s, X_FLIP);
            }
        }
    }
}

bool32 sub_8065F10(Kyacchaa *enemy)
{
    if (enemy->qPos.y < enemy->qUnk18.y) {
        return FALSE;
    }

    enemy->qPos.y -= Q(0.5);

    if (enemy->qPos.y >= enemy->qUnk18.y) {
        return FALSE;
    }

    enemy->qPos.y = enemy->qUnk18.y;

    return TRUE;
}

bool32 sub_8065F30(Kyacchaa *enemy, EnemyUnknownStruc0 *param1)
{
    Sprite *s;

    param1->me = NULL;
    param1->spriteX = 0;
    param1->unk4 = 0;

    s = &enemy->s2;
    param1->spr = s;
    param1->posX = enemy->qPos.x;
    param1->posY = enemy->qPos.y;
    param1->regionX = enemy->region[0];
    param1->regionY = enemy->region[1];

    return sub_805C63C(param1);
}

bool32 sub_8065F5C(Kyacchaa *enemy)
{
    EnemyUnknownStruc0 unk;

    unk.unk4 = sub_8065F30(enemy, &unk);
    unk.spr = &enemy->s2;
    unk.posX = enemy->qUnk18.x;
    unk.posY = enemy->qUnk18.y;
    unk.regionX = enemy->region[0];
    unk.regionY = enemy->region[1];
    unk.me = enemy->me;
    unk.spriteX = enemy->spriteX;

    return sub_805C280(&unk);
}

void TaskDestructor_Kyacchaa(struct Task *t)
{
    Kyacchaa *enemy = TASK_DATA(t);
    VramFree(enemy->s2.tiles);
}

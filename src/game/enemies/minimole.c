#include "global.h"
#include "malloc_vram.h"
#include "task.h"
#include "trig.h"
#include "game/camera.h"
#include "game/enemy_unknown.h"
#include "game/entity.h"
#include "game/stage.h"

typedef struct {
    /* 0x00 */ MapEntity *me;
    /* 0x04 */ u8 id;
    /* 0x05 */ u8 spriteX;
    /* 0x06 */ s8 unk6;
    /* 0x07 */ s8 unk7;
    /* 0x08 */ Vec2_u16 region;
    /* 0x0C */ u16 unkC;
    /* 0x0E */ u16 unkE;
    /* 0x10 */ Vec2_32 qUnk10;
    /* 0x18 */ Vec2_32 qPos;
    /* 0x20 */ Vec2_32 qUnk20;
    /* 0x28 */ Sprite s;
    /* 0x50 */ Sprite s2;
    /* 0x78 */ u8 filler78[0x4];
    /* 0x7C */ u8 unk7C[0x4];
} Minimole; /* size: 0x80 */

void Task_Minimole(void);
void Task_805B1CC(void);
void TaskDestructor_Minimole(struct Task *);

void sub_805AF38(Minimole *);
AnimCmdResult sub_805B158(Minimole *);
bool32 sub_805B0EC(Minimole *);
bool32 sub_805B22C(Minimole *);
bool32 sub_805B2A4(Minimole *);

extern TileInfo2 gUnknown_080D1EF4[4];

void CreateEntity_Minimole(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Minimole, sizeof(Minimole), 0x2100, 0, TaskDestructor_Minimole);
    Minimole *enemy = TASK_DATA(t);
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

    enemy->qUnk10.x = qX;
    enemy->qUnk10.y = qY;
    enemy->qUnk20.x = qX;
    enemy->qUnk20.y = qY;
    enemy->qPos.x = qX;
    enemy->qPos.y = Q(me->y * TILE_WIDTH);
    enemy->unkE = 0;
    enemy->unkC = 0;

    enemy->unk6 = 0;

    CpuFill16(0, &enemy->unk7C, sizeof(enemy->unk7C));

    sub_805AF38(enemy);

    SET_MAP_ENTITY_INITIALIZED(me);
}

void sub_805AF38(Minimole *enemy)
{
    // TODO/NOTE:
    // Usually we want to use ALLOC_TILES() instead,
    // but for this enemy, tiles are stored in a "pseudo-compressed" way,
    // so we have to come up with a different macro.
    void *tiles = VramMalloc(22);
    Sprite *s = &enemy->s;
    u32 tileSize;
    s->tiles = tiles;

    tiles += gUnknown_080D1EF4[2].numTiles * TILE_SIZE_4BPP;
    s->anim = gUnknown_080D1EF4[2].anim;
    s->variant = gUnknown_080D1EF4[2].variant;
    s->prevVariant = -1;
    s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region.x) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region.y) - gCamera.y;
    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->animCursor = 0;
    s->timeUntilNextFrame = 0;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);

    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;

    UpdateSpriteAnimation(s);

    s = &enemy->s2;
    s->tiles = tiles;
    s->anim = gUnknown_080D1EF4[0].anim;
    s->variant = gUnknown_080D1EF4[0].variant;
    s->prevVariant = -1;
    s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region.x) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region.y) - gCamera.y;
    s->oamFlags = SPRITE_OAM_ORDER(19);
    s->animCursor = 0;
    s->timeUntilNextFrame = 0;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 2);

    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;

    UpdateSpriteAnimation(s);
}

void Task_Minimole(void)
{
    Minimole *enemy = TASK_DATA(gCurTask);
    sub_805CD70(&enemy->qUnk20, NULL, &enemy->region, &enemy->unk6);
    sub_805CD70(&enemy->qPos, &enemy->qUnk10, &enemy->region, &enemy->unk6);

    if (sub_805B2A4(enemy) == TRUE) {
        TaskDestroy(gCurTask);
        return;
    }

    sub_805B158(enemy);

    if ((gStageData.unk4 != 1) && (gStageData.unk4 != 2) && (gStageData.unk4 != 4)) {
        if (sub_805B22C(enemy) == TRUE) {
            if (enemy->unkE == 0) {
                Sprite *s = &enemy->s2;

                s->anim = gUnknown_080D1EF4[0].anim;
                s->variant = gUnknown_080D1EF4[0].variant;

                gCurTask->main = Task_805B1CC;
            } else {
                enemy->unkE--;
            }
        }
    }
}

bool32 sub_805B0EC(Minimole *enemy)
{
    if (enemy->unkC < Q(0.5)) {
        if (!((enemy->unkC >= Q(0.1875)) && (enemy->unkC <= Q(0.3125)))) {
            enemy->unkC = enemy->unkC + 2;
        } else {
            enemy->unkC = enemy->unkC + 1;
        }

        if (enemy->unkC > Q(0.25)) {
            Sprite *s = &enemy->s2;
            s->anim = gUnknown_080D1EF4[1].anim;
            s->variant = gUnknown_080D1EF4[1].variant;
        }

        enemy->qPos.y = enemy->qUnk10.y - SIN_24_8((enemy->unkC & 0xFF) * 4) * 64;
        enemy->qPos.x = enemy->qUnk10.x;

        return FALSE;
    } else {
        enemy->unkC = 0;
        enemy->qPos.y = enemy->qUnk10.y + Q(20);
        return TRUE;
    }
}

AnimCmdResult sub_805B158(Minimole *enemy)
{
    AnimCmdResult acmdRes;

    Sprite *s = &enemy->s2;
    s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region.x) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region.y) - gCamera.y + 20;

    acmdRes = UpdateSpriteAnimation(s);
    DisplaySprite(s);

    s = &enemy->s;
    s->x = TO_WORLD_POS_RAW(I(enemy->qUnk20.x), enemy->region.x) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->qUnk20.y), enemy->region.y) - gCamera.y;

    UpdateSpriteAnimation(s);
    DisplaySprite(s);

    return acmdRes;
}

void Task_805B1CC(void)
{
    Minimole *enemy = TASK_DATA(gCurTask);

    sub_805B158(enemy);

    if (sub_805B2A4(enemy) == TRUE) {
        TaskDestroy(gCurTask);
        return;
    }

    if (gStageData.unk4 != 1 && gStageData.unk4 != 2 && gStageData.unk4 != 4) {
        if (sub_805B0EC(enemy) == TRUE) {
            enemy->unkE = 60;
            gCurTask->main = Task_Minimole;
        }
    }
}

// TODO: Match without goto
bool32 sub_805B22C(Minimole *enemy)
{
    u8 i;
    s32 worldX = I(enemy->qPos.x);
    worldX = TO_WORLD_POS_RAW(worldX, enemy->region.x);

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        s32 playerToMoleX;
        Player *p;

        p = sub_805CD20(i);
        if (!p) {
            break;
        }

        if ((I(p->qWorldX) - worldX) >= 0) {
            if ((I(p->qWorldX) - worldX) < 100) {
                goto label;
            } else {
                continue;
            }
        } else if ((worldX - I(p->qWorldX)) >= 100) {
            continue;
        }
    label:
        return TRUE;
    }

    return FALSE;
}

bool32 sub_805B274(Minimole *enemy, EnemyUnknownStruc0 *param1)
{
    Sprite *s;

    param1->me = NULL;
    param1->spriteX = 0;
    param1->unk4 = 0;

    s = &enemy->s2;
    param1->spr = s;
    param1->posX = enemy->qPos.x;
    param1->posY = enemy->qPos.y + Q(20);
    param1->regionX = enemy->region.x;
    param1->regionY = enemy->region.y;

    return sub_805C63C(param1);
}

bool32 sub_805B2A4(Minimole *enemy)
{
    EnemyUnknownStruc0 unk;

    unk.unk4 = sub_805B274(enemy, &unk);
    unk.spr = &enemy->s2;
    unk.posX = enemy->qUnk10.x;
    unk.posY = enemy->qUnk10.y;
    unk.regionX = enemy->region.x;
    unk.regionY = enemy->region.y;
    unk.me = enemy->me;
    unk.spriteX = enemy->spriteX;

    return sub_805C280(&unk);
}

void TaskDestructor_Minimole(struct Task *t)
{
    Minimole *enemy = TASK_DATA(t);
    VramFree(enemy->s.tiles);
}
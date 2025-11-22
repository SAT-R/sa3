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
    /* 0x05 */ u8 meX;
    /* 0x06 */ u8 unk6;
    /* 0x07 */ s8 unk7;
    /* 0x08 */ u8 unk8;
    /* 0x09 */ s8 direction;
    /* 0x0A */ u16 region[2];
    /* 0x0E */ u16 unkE;
    /* 0x10 */ u16 unk10;
    /* 0x14 */ Vec2_32 qUnk14;
    /* 0x1C */ Vec2_32 qPos;
    /* 0x24 */ s32 qLeft;
    /* 0x28 */ s32 qRight;
    /* 0x2C */ Sprite s;
    /* 0x44 */ u8 filler44[0x4];
    /* 0x50 */ u16 unk50[2]; // TODO: type
} Aotento; /* size: 0x54 */

void Task_Aotento(void);
void sub_8058630(Aotento *);
void Task_805878C(void);
void sub_805B738(Aotento *);
void Task_8058854(void);
void sub_8058B50(Aotento *);
void Task_805892C(void);
bool32 sub_8058A00(Aotento *);
bool32 sub_8058AE0(Aotento *);
bool32 DecentAndCheckGroundTouch(Aotento *);
bool32 sub_8058BE0(Aotento *);
AnimCmdResult sub_8058C1C(Aotento *);
bool32 sub_805B7C0(Aotento *);
void TaskDestructor_Aotento(struct Task *t);

extern const TileInfo2 gUnknown_080D1E30[4];
extern const u8 gUnknown_080D1E50[4];

void CreateEntity_Aotento(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Aotento, sizeof(Aotento), 0x2100, 0, TaskDestructor_Aotento);
    Aotento *enemy = TASK_DATA(t);
    s32 qX, qY;

    enemy->unkE = 0;
    enemy->unk10 = 0;
    enemy->unk6 = 0;

    enemy->me = me;
    enemy->meX = me->x;
    enemy->id = id;
    enemy->region[0] = regionX;
    enemy->region[1] = regionY;

    qX = Q(me->x * TILE_WIDTH);
    enemy->qPos.x = qX;
    qY = Q(me->y * TILE_WIDTH);
    enemy->qPos.y = qY;

    enemy->qUnk14.x = qX;
    enemy->qUnk14.y = qY;
    enemy->unkE = 90;
    enemy->qLeft = qX + Q(me->d.sData[0] * TILE_WIDTH);
    enemy->qRight = enemy->qLeft + Q(me->d.uData[2] * TILE_WIDTH);
    enemy->unk8 = 0;

    if (me->d.uData[4] & 0x8) {
        enemy->direction = -1;
    } else {
        enemy->direction = +1;
    }

    CpuFill16(0, &enemy->unk50, sizeof(enemy->unk50));

    sub_8058630(enemy);

    SET_MAP_ENTITY_INITIALIZED(me);
}

void sub_8058630(Aotento *enemy)
{
    void *tiles = ALLOC_TILES(ANIM_AOTENTO);
    Sprite *s = &enemy->s;
    s->tiles = tiles;

    s->anim = gUnknown_080D1E30[0].anim;
    s->variant = gUnknown_080D1E30[0].variant;
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

    if (enemy->direction < 0) {
        s->frameFlags |= SPRITE_FLAG_MASK_X_FLIP;
    }

    UpdateSpriteAnimation(s);
}

void Task_Aotento(void)
{
    Aotento *enemy = TASK_DATA(gCurTask);

    sub_805CD70(&enemy->qPos, &enemy->qUnk14, enemy->region, &enemy->unk8);

    if ((gStageData.unk4 != 1) && (gStageData.unk4 != 2) && (gStageData.unk4 != 4)) {
        sub_8058B50(enemy);
    }

    if ((sub_8058BE0(enemy) == TRUE)) {
        TaskDestroy(gCurTask);
        return;
    }

    sub_8058C1C(enemy);

    if ((enemy->qPos.x <= enemy->qLeft) || (enemy->qPos.x >= enemy->qRight)) {
        Sprite *s = &enemy->s;

        s->anim = gUnknown_080D1E30[1].anim;
        s->variant = gUnknown_080D1E30[1].variant;

        gCurTask->main = Task_805892C;
    } else if ((sub_8058A00(enemy) == TRUE) && (enemy->unk6 == 0)) {
        Sprite *s = &enemy->s;

        s->anim = gUnknown_080D1E30[2].anim;
        s->variant = gUnknown_080D1E30[2].variant;

        enemy->unkE = 90;

        gCurTask->main = Task_805878C;
    }
}

void Task_805878C(void)
{
    Aotento *enemy = TASK_DATA(gCurTask);

    sub_8058C1C(enemy);

    if (sub_8058BE0(enemy) == TRUE) {
        TaskDestroy(gCurTask);
        return;
    }

    if ((gStageData.unk4 != 1) && (gStageData.unk4 != 2) && (gStageData.unk4 != 4)) {
        Player *p = GET_SP_PLAYER_V0(0);

        // TODO: THE Q<->I conversion is weird here
        if (((p->qWorldX > TO_WORLD_POS_RAW(enemy->qPos.x, Q(enemy->region[0]))) && !(enemy->s.frameFlags & SPRITE_FLAG(X_FLIP, 1)))
            || ((p->qWorldX < TO_WORLD_POS_RAW(enemy->qPos.x, Q(enemy->region[0]))) && (enemy->s.frameFlags & SPRITE_FLAG(X_FLIP, 1)))) {
            Sprite *s = &enemy->s;
            s->anim = gUnknown_080D1E30[3].anim;
            s->variant = gUnknown_080D1E30[3].variant;
            gCurTask->main = Task_805892C;
        } else {
            if (sub_8058AE0(enemy) == TRUE) {
                enemy->unk6 = 3;

                gCurTask->main = Task_8058854;
            }
        }
    }
}

void Task_8058854(void)
{
    Aotento *enemy = TASK_DATA(gCurTask);

    sub_8058C1C(enemy);

    if (sub_8058BE0(enemy) == TRUE) {
        TaskDestroy(gCurTask);
        return;
    }

    if ((gStageData.unk4 != 1) && (gStageData.unk4 != 2) && (gStageData.unk4 != 4)) {
        Player *p = GET_SP_PLAYER_V0(0);

        // TODO: THE Q<->I conversion is weird here
        if (((p->qWorldX > TO_WORLD_POS_RAW(enemy->qPos.x, Q(enemy->region[0]))) && !(enemy->s.frameFlags & SPRITE_FLAG(X_FLIP, 1)))
            || ((p->qWorldX < TO_WORLD_POS_RAW(enemy->qPos.x, Q(enemy->region[0]))) && (enemy->s.frameFlags & SPRITE_FLAG(X_FLIP, 1)))) {
            Sprite *s = &enemy->s;
            s->anim = gUnknown_080D1E30[3].anim;
            s->variant = gUnknown_080D1E30[3].variant;
            gCurTask->main = Task_805892C;
        } else {
            if (DecentAndCheckGroundTouch(enemy) == TRUE) {
                Sprite *s = &enemy->s;
                s->anim = gUnknown_080D1E30[0].anim;
                s->variant = gUnknown_080D1E30[0].variant;

                gCurTask->main = Task_Aotento;
            }
        }
    }
}

void Task_805892C(void)
{
    Aotento *enemy = TASK_DATA(gCurTask);
    AnimCmdResult acmdRes;

    if (sub_8058BE0(enemy) == TRUE) {
        TaskDestroy(gCurTask);
        return;
    }

    acmdRes = sub_8058C1C(enemy);

    if (((gStageData.unk4 != 1) && (gStageData.unk4 != 2) && (gStageData.unk4 != 4)) && (acmdRes == ACMD_RESULT__ENDED)) {
        Sprite *s = &enemy->s;

        if (s->frameFlags & SPRITE_FLAG(X_FLIP, 1)) {
            SPRITE_FLAG_CLEAR(s, X_FLIP);
        } else {
            SPRITE_FLAG_SET(s, X_FLIP);
        }

        if (enemy->qPos.y == enemy->qUnk14.y) {
            s->anim = gUnknown_080D1E30[0].anim;
            s->variant = gUnknown_080D1E30[0].variant;
            enemy->unk6 = 0;
            gCurTask->main = Task_Aotento;
        } else {
            s->anim = gUnknown_080D1E30[2].anim;
            s->variant = gUnknown_080D1E30[2].variant;
            if (enemy->unk6 == 3) {
                gCurTask->main = Task_8058854;
            } else {
                gCurTask->main = Task_805878C;
            }
        }
    }
}

bool32 sub_8058A00(Aotento *enemy)
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

        if ((((u16)(dir - 1) <= 254) || ((u16)(dir + (-Q(3) - 1)) <= 254)) && (s->frameFlags & SPRITE_FLAG_MASK_X_FLIP)
            && ((p->qWorldX - qWorldX) < Q(100))) {
            return TRUE;
        }

        if (((u16)(dir + (-Q(1) - 1)) <= 510) && !(s->frameFlags & SPRITE_FLAG_MASK_X_FLIP) && ((qWorldX - p->qWorldX) < Q(100))) {
            return TRUE;
        }
    }

    return FALSE;
}

// (94.17%) https://decomp.me/scratch/nMoLp
NONMATCH("asm/non_matching/game/enemies/aotento__sub_8058AE0.inc", bool32 sub_8058AE0(Aotento *enemy))
{
    enemy->qPos.y -= Q(gUnknown_080D1E50[enemy->unk6]);

    if (enemy->qPos.y < enemy->qUnk14.y - Q(64)) {
        enemy->qPos.y = enemy->qUnk14.y - Q(64);
    }

    if (enemy->qPos.y == (enemy->qUnk14.y - Q(64))) {
        if (enemy->unkE == 0) {
            enemy->unkE = 90;

            return TRUE;
        } else {
            enemy->unkE--;
        }
    }

    if (enemy->unk10 < 6) {
        enemy->unk10++;
    } else {
        if (++enemy->unk6 >= ARRAY_COUNT(gUnknown_080D1E50)) {
            enemy->unk6 = 2;
        }

        enemy->unk10 = 0;
    }

    return FALSE;
}
END_NONMATCH

void sub_8058B50(Aotento *enemy)
{
    Sprite *s = &enemy->s;

    if (s->frameFlags & SPRITE_FLAG(X_FLIP, 1)) {
        if (enemy->qPos.x <= enemy->qRight) {
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

bool32 DecentAndCheckGroundTouch(Aotento *enemy)
{
    enemy->qPos.y += Q(1);

    if (enemy->qPos.y < enemy->qUnk14.y) {
        return FALSE;
    } else {
        enemy->qPos.y = enemy->qUnk14.y;
        return TRUE;
    }
}

bool32 sub_8058BB4(Aotento *enemy, EnemyUnknownStruc0 *param1)
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

bool32 sub_8058BE0(Aotento *enemy)
{
    EnemyUnknownStruc0 unk;

    unk.unk4 = sub_8058BB4(enemy, &unk);
    unk.spr = &enemy->s;
    unk.posX = enemy->qUnk14.x;
    unk.posY = enemy->qUnk14.y;
    unk.regionX = enemy->region[0];
    unk.regionY = enemy->region[1];
    unk.me = enemy->me;
    unk.meX = enemy->meX;

    return sub_805C280(&unk);
}

AnimCmdResult sub_8058C1C(Aotento *enemy)
{
    AnimCmdResult acmdRes;

    Sprite *s = &enemy->s;
    s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region[1]) - gCamera.y;

    acmdRes = UpdateSpriteAnimation(s);
    DisplaySprite(s);

    return acmdRes;
}

void TaskDestructor_Aotento(struct Task *t)
{
    Aotento *enemy = TASK_DATA(t);
    VramFree(enemy->s.tiles);
}
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
    /* 0x05 */ u8 meX;
    /* 0x06 */ u8 unk6;
    /* 0x07 */ u8 unk7;
    /* 0x08 */ u8 unk8;
    /* 0x09 */ s8 direction;
    /* 0x0A */ u16 region[2];
    /* 0x0E */ u16 unkE;
    /* 0x10 */ u16 unk10;
    /* 0x12 */ u16 unk12;
    /* 0x14 */ Vec2_32 qUnk14;
    /* 0x1C */ Vec2_32 qPos;
    /* 0x24 */ s32 qLeft;
    /* 0x24 */ s32 qRight;
    /* 0x2C */ Sprite2 s;
} BuBu /* size: 0x5C */;

void Task_BuBuInit(void);
void TaskDestructor_BuBu(struct Task *t);
void sub_805ECC4(BuBu *enemy);
void sub_805EE0C(void);
bool32 sub_805EEB4(BuBu *enemy);
void sub_805F094(void);
void sub_805F104(void);
void sub_805F15C(BuBu *enemy);
bool32 sub_805F1A0(BuBu *enemy);
bool32 sub_805F1E0(BuBu *enemy);
bool32 sub_805F22C(BuBu *enemy);
AnimCmdResult sub_805F268(BuBu *enemy);

extern const TileInfo2 gUnknown_080D1F8C[4];
extern const u8 gUnknown_080D1FAC[4];
extern const TileInfo2 gUnknown_080D1FB0[2];

void CreateEntity_BuBu(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_BuBuInit, sizeof(BuBu), 0x2100, 0, TaskDestructor_BuBu);

    BuBu *enemy = TASK_DATA(t);
    s32 qX, qY, offsetX, offsetRight;

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

    enemy->unkE = 0x5A;

    enemy->qLeft = qX + Q(me->d.sData[0] * TILE_WIDTH);
    enemy->qRight = enemy->qLeft + Q(me->d.uData[2] * TILE_WIDTH);

    enemy->unk8 = 0;

    if (me->d.uData[4] & 0x8) {
        enemy->direction = -1;
    } else {
        enemy->direction = +1;
    }

    CpuFill16(0, &enemy->s.hitboxes[1].b.left, sizeof(enemy->s.hitboxes[1].b));

    sub_805ECC4(enemy);

    SET_MAP_ENTITY_INITIALIZED(me);
}

void sub_805ECC4(BuBu *enemy)
{
    u8 *vram = VramMalloc(0xCU);
    Sprite2 *s = &enemy->s;

    s->tiles = vram;
    s->anim = gUnknown_080D1F8C[0].anim;
    s->variant = gUnknown_080D1F8C[0].variant;
    s->prevVariant = -1;
    s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region[1]) - gCamera.y;
    s->oamFlags = 0x480;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0x1000;

    if (enemy->direction < 0) {
        s->frameFlags |= 0x400;
    }

    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    UpdateSpriteAnimation((Sprite *)s);
}

void Task_BuBuInit()
{
    BuBu *enemy = TASK_DATA(gCurTask);

    sub_805CD70(&enemy->qPos, NULL, enemy->region, (s8 *)&enemy->unk8);
    if ((gStageData.unk4 != 1) && (gStageData.unk4 != 2) && (gStageData.unk4 != 4)) {
        sub_805F15C(enemy);
    }
    if (sub_805F22C(enemy) == 1) {
        TaskDestroy(gCurTask);
        return;
    }
    sub_805F268(enemy);

    if ((enemy->qPos.x <= enemy->qLeft) || (enemy->qPos.x >= enemy->qRight)) {
        Sprite2 *s = &enemy->s;
        s->anim = gUnknown_080D1F8C[1].anim;
        s->variant = gUnknown_080D1F8C[1].variant;
        gCurTask->main = sub_805EE0C;
    } else if (sub_805F1A0(enemy) == TRUE) {
        Sprite2 *s = &enemy->s;
        s->anim = gUnknown_080D1F8C[2].anim;
        s->variant = gUnknown_080D1F8C[2].variant;
        gCurTask->main = sub_805F094;
    }
}

void sub_805EE0C(void)
{
    BuBu *enemy = TASK_DATA(gCurTask);

    if (sub_805F22C(enemy) == TRUE) {
        TaskDestroy(gCurTask);
        return;
    }

    if (sub_805F268(enemy) == ACMD_RESULT__ENDED) {
        Sprite2 *s = &enemy->s;

        if (SPRITE_FLAG_GET(s, X_FLIP)) {
            SPRITE_FLAG_CLEAR(s, X_FLIP);
        } else {
            SPRITE_FLAG_SET(s, X_FLIP);
        }

        s->anim = gUnknown_080D1F8C[0].anim;
        s->variant = gUnknown_080D1F8C[0].variant;

        enemy->unk6 = 0;

        gCurTask->main = Task_BuBuInit;
    } else if (sub_805F1A0(enemy) == TRUE) {
        Sprite2 *s = &enemy->s;

        s->anim = gUnknown_080D1F8C[2].anim;
        s->variant = gUnknown_080D1F8C[2].variant;

        gCurTask->main = sub_805F094;
    }
}

bool32 sub_805EEB4(BuBu *enemy)
{
    s32 mat0;
    s32 mat1;
    s32 mat2;
    Strc3001CFC *strc;
    s32 temp_r2;
    s32 temp_sb;
    u8 i;

    mat0 = 0;
    mat1 = 0;
    mat2 = 0;
    temp_sb = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region[0]);
    temp_r2 = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region[1]);
    if (gTask_03001CFC != NULL) {
        if ((gStageData.unk4 == 1) || (gStageData.unk4 == 2) || (gStageData.unk4 == 4)) {
#ifndef BUG_FIX
            return;
#else
            // TODO: Understand whether this is the correct return value fix!
            return FALSE;
#endif
        }

        strc = TASK_DATA(gTask_03001CFC);
        for (i = 0; i < 32; i++) {
            if (strc->unk28[i].unkC != 0) {
                mat0 = 1;
                if (temp_sb - 8 >= I(strc->unk28[i].unk0)) {
                    strc->unk28[i].unk8 += 0x40;
                    if (strc->unk28[i].unk8 > +Q(3)) {
                        strc->unk28[i].unk8 = +Q(3);
                    }
                } else if (temp_sb + 8 <= I(strc->unk28[i].unk0)) {
                    strc->unk28[i].unk8 -= 0x40;
                    if (strc->unk28[i].unk8 < -Q(3)) {
                        strc->unk28[i].unk8 = -Q(3);
                    }
                } else {
                    mat1 = 1;
                }

                if (temp_r2 - 8 >= I(strc->unk28[i].unk4)) {
                    strc->unk28[i].unkA += 0x40;
                    if (strc->unk28[i].unkA > +Q(3)) {
                        strc->unk28[i].unkA = +Q(3);
                    }
                } else if (temp_r2 + 8 <= I(strc->unk28[i].unk4)) {
                    strc->unk28[i].unkA -= 0x40;
                    if (strc->unk28[i].unkA < -Q(3)) {
                        strc->unk28[i].unkA = -Q(3);
                    }
                } else {
                    mat2 = 1;
                }

                if ((mat1 == 1) && (mat2 == 1)) {
                    sub_8029C54(I(strc->unk28[i].unk0), I(strc->unk28[i].unk4));
                }
            }
        }

        if (mat0 == 0) {
            return TRUE;
        } else {
            return FALSE;
        }
    } else {
        return FALSE;
    }
}

// NOTE: Unused
// (94.17%) https://decomp.me/scratch/sd7x3
NONMATCH("asm/non_matching/game/enemies/bubu__sub_805F024.inc", bool32 sub_805F024(BuBu *enemy))
{
    enemy->qPos.y -= Q(gUnknown_080D1FAC[enemy->unk6]);
    if (enemy->qPos.y < enemy->qUnk14.y - Q(64)) {
        enemy->qPos.y = enemy->qUnk14.y - Q(64);
    }

    if (enemy->qPos.y == enemy->qUnk14.y - Q(64)) {
        if (enemy->unkE == 0) {
            enemy->unkE = 90;
            return TRUE;
        }

        enemy->unkE--;
    }

    if (enemy->unk10 < 6) {
        enemy->unk10++;
    } else {
        if (++enemy->unk6 > 2U) {
            enemy->unk6 = 2;
        }

        enemy->unk10 = 0;
    }

    return FALSE;
}
END_NONMATCH

void sub_805F094(void)
{
    BuBu *enemy = TASK_DATA(gCurTask);
    Sprite2 *s;

    sub_805CD70(&enemy->qPos, NULL, enemy->region, (s8 *)&enemy->unk8);
    sub_805F268(enemy);

    if (sub_805F22C(enemy) == 1) {
        TaskDestroy(gCurTask);
        return;
    }

    if (sub_805EEB4(enemy) == 1) {
        s = &enemy->s;
        s->anim = gUnknown_080D1F8C[3].anim;
        s->variant = gUnknown_080D1F8C[3].variant;
        gCurTask->main = sub_805F104;
    }
}

void sub_805F104(void)
{
    BuBu *enemy = TASK_DATA(gCurTask);
    Sprite2 *s;
    AnimCmdResult acmdRes;

    acmdRes = sub_805F268(enemy);

    if (sub_805F22C(enemy) == 1) {
        TaskDestroy(gCurTask);
        return;
    }

    if (acmdRes == ACMD_RESULT__ENDED) {
        s = &enemy->s;
        s->anim = gUnknown_080D1F8C->anim;
        s->variant = gUnknown_080D1F8C->variant;
        gCurTask->main = Task_BuBuInit;
    }
}

void sub_805F15C(BuBu *enemy)
{
    if (enemy->s.frameFlags & 0x400) {
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

bool32 sub_805F1A0(BuBu *enemy)
{
    u8 var_r3;

    if (gTask_03001CFC != NULL) {
        Strc3001CFC *strc = TASK_DATA(gTask_03001CFC);

        for (var_r3 = 0; var_r3 < 32; var_r3++) {
            if (strc->unk28[var_r3].unkC != 0) {
                return TRUE;
            }
        }
#ifndef BUG_FIX
        return;
#else
        // TODO: Understand whether this is the correct return value fix!
        return FALSE;
#endif
    }
    return FALSE;
}

bool32 sub_805F1E0(BuBu *enemy)
{
    enemy->qPos.y += Q(1);

    if (enemy->qPos.y < enemy->qUnk14.y) {
        return FALSE;
    } else {
        enemy->qPos.y = enemy->qUnk14.y;
        return TRUE;
    }
}

bool32 sub_805F200(BuBu *enemy, EnemyUnknownStruc0 *arg1)
{
    arg1->me = NULL;
    arg1->meX = 0;
    arg1->unk4 = 0;
    arg1->spr = (Sprite *)&enemy->s;
    arg1->posX = enemy->qPos.x;
    arg1->posY = enemy->qPos.y;
    arg1->regionX = enemy->region[0];
    arg1->regionY = enemy->region[1];
    return sub_805C63C(arg1);
}

bool32 sub_805F22C(BuBu *enemy)
{
    Sprite *s;
    EnemyUnknownStruc0 unk;

    unk.unk4 = sub_805F200(enemy, &unk);
    unk.spr = (Sprite *)&enemy->s;
    unk.posX = enemy->qUnk14.x;
    unk.posY = enemy->qUnk14.y;
    unk.regionX = enemy->region[0];
    unk.regionY = enemy->region[1];
    unk.me = enemy->me;
    unk.meX = enemy->meX;

    return sub_805C280(&unk);
}

AnimCmdResult sub_805F268(BuBu *enemy)
{
    Sprite2 *s;
    AnimCmdResult acmdRes;

    s = &enemy->s;
    s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region[1]) - gCamera.y;
    acmdRes = UpdateSpriteAnimation((Sprite *)s);
    DisplaySprite((Sprite *)s);
    return acmdRes;
}

void TaskDestructor_BuBu(struct Task *t)
{
    BuBu *enemy = TASK_DATA(t);
    VramFree(enemy->s.tiles);
}

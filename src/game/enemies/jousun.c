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
    /* 0x05 */ u8 meX;
    /* 0x06 */ u16 unk6;
    /* 0x08 */ u16 unk8;
    /* 0x0A */ u16 region[2];
    /* 0x0E */ s8 direction;
    /* 0x0F */ u8 unkF;
    /* 0x10 */ s32 qUnk10;
    /* 0x14 */ s32 qUnk14;
    /* 0x18 */ s32 qUnk18;
    /* 0x1C */ s32 qUnk1C;
    /* 0x20 */ Vec2_32 qPos;
    /* 0x28 */ Vec2_32 qUnk28;
    /* 0x30 */ Sprite s;
    /* 0x58 */ Hitbox reserved;
} Jousun; /* size: 0x60 */

extern const TileInfo2 gUnknown_080D1F2C[4]; // Jousun

void sub_805BB08(void);
bool32 sub_805BB80(Jousun *);
bool32 sub_805BC24(Jousun *);
bool32 sub_805BD08(Jousun *);
void Task_805BEAC(void);
void sub_805BF04(Jousun *);
void sub_805BF38(Jousun *enemy, MapEntity *me, u16 regionX, u16 regionY, u8 id);
AnimCmdResult sub_805BF7C(Jousun *);
bool32 sub_805BFEC(Jousun *);
void TaskDestructor_Jousun(struct Task *);

#define isBetween(v, min, onePastMax) (((v) >= (min)) && ((v) < onePastMax))

void sub_805B980(Jousun *enemy)
{
    void *tiles = ALLOC_TILES(ANIM_JOUSUN);
    Sprite *s = &enemy->s;
    s->tiles = tiles;

    s->anim = gUnknown_080D1F2C[0].anim;
    s->variant = gUnknown_080D1F2C[0].variant;
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
}

void Task_JousunMain(void)
{
    Jousun *enemy = TASK_DATA(gCurTask);

    if ((gStageData.unk4 != 1) && (gStageData.unk4 != 2) && (gStageData.unk4 != 4)) {
        sub_805BF04(enemy);
    }

    if (sub_805BFEC(enemy) == TRUE) {
        TaskDestroy(gCurTask);
        return;
    }

    sub_805BF7C(enemy);

    if (sub_805BD08(enemy) == TRUE) {
        Sprite *s = &enemy->s;

        s->anim = gUnknown_080D1F2C[1].anim;
        s->variant = gUnknown_080D1F2C[1].variant;
        enemy->qUnk28.x = enemy->qPos.x;
        enemy->qUnk28.y = enemy->qPos.y;
        gCurTask->main = Task_805BEAC;
    }
}

void sub_805BA78()
{
    Jousun *enemy = TASK_DATA(gCurTask);

    sub_805BF7C(enemy);

    if (sub_805BFEC(enemy) == TRUE) {
        TaskDestroy(gCurTask);
        return;
    }

    if (((gStageData.unk4 != 1) && (gStageData.unk4 != 2) && (gStageData.unk4 != 4)) && (sub_805BB80(enemy) == TRUE)) {
        Sprite *s = &enemy->s;

        s->anim = gUnknown_080D1F2C[3].anim;
        s->variant = gUnknown_080D1F2C[3].variant;

        CpuFill16(0, &enemy->reserved.b, sizeof(enemy->reserved.b));

        gCurTask->main = sub_805BB08;
    }
}

void sub_805BB08()
{
    Jousun *enemy = TASK_DATA(gCurTask);

    if (sub_805BFEC(enemy) == TRUE) {
        TaskDestroy(gCurTask);
        return;
    }

    if (((gStageData.unk4 != 1) && (gStageData.unk4 != 2) && (gStageData.unk4 != 4)) && (sub_805BC24(enemy) == TRUE)) {
        Sprite *s = &enemy->s;

        s->anim = gUnknown_080D1F2C[0].anim;
        s->variant = gUnknown_080D1F2C[0].variant;

        sub_805BF7C(enemy);

        gCurTask->main = Task_JousunMain;
    } else {
        sub_805BF7C(enemy);
    }
}

bool32 sub_805BB80(Jousun *enemy)
{
    s32 r5 = 2;
    u8 r4 = 0;
    Sprite *s;

    if (enemy->qUnk1C < enemy->qUnk14 - (enemy->region[1] << 16)) {
        enemy->qPos.y += Q(4);

        if (enemy->qPos.y > enemy->qUnk14 - (enemy->region[1] << 16)) {
            enemy->qPos.y = enemy->qUnk14 - (enemy->region[1] << 16);
            r4 = 1;
        }
    } else {
        enemy->qPos.y -= Q(4);

        if (enemy->qPos.y < enemy->qUnk14 - (enemy->region[1] << 16)) {
            enemy->qPos.y = enemy->qUnk14 - (enemy->region[1] << 16);
            r4 = 1;
        }
    }

    s = &enemy->s;

    if (s->frameFlags & SPRITE_FLAG(X_FLIP, 1)) {
        enemy->qPos.x -= (1 << (r5 + 8));

        if (enemy->qPos.x <= enemy->qUnk28.x - Q(60)) {
            enemy->qPos.x = enemy->qUnk28.x - Q(60);
            r4++;
        }
    } else {
        enemy->qPos.x += (1 << (r5 + 8));

        if (enemy->qPos.x >= enemy->qUnk28.x + Q(60)) {
            enemy->qPos.x = enemy->qUnk28.x + Q(60);
            r4++;
        }
    }

    if (r4 == 2) {
        return TRUE;
    } else {
        return FALSE;
    }
}

bool32 sub_805BC24(Jousun *enemy)
{
    u8 r3 = 0;

    if (enemy->qUnk28.x <= enemy->qPos.x) {
        enemy->qPos.x -= Q(1);

        if (enemy->qUnk28.x >= enemy->qPos.x) {
            enemy->qPos.x = enemy->qUnk28.x;
            r3 = 1;
        }
    } else {
        enemy->qPos.x += Q(1);

        if (enemy->qUnk28.x <= enemy->qPos.x) {
            enemy->qPos.x = enemy->qUnk28.x;
            r3 = 1;
        }
    }

    if (enemy->qPos.y > enemy->qUnk28.y) {
        enemy->qPos.y -= Q(1);
    } else {
        enemy->qPos.y = enemy->qUnk28.y;
        r3++;
    }

    if (r3 == 2) {
        return TRUE;
    } else {
        return FALSE;
    }
}

void sub_805BC80(Jousun *enemy)
{
    Sprite *s = &enemy->s;
    Player *p = NULL;
    u8 i;

    s32 enemyWorldX = I(enemy->qPos.x);
    enemyWorldX = TO_WORLD_POS_RAW(enemyWorldX, enemy->region[0]);

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        p = GET_SP_PLAYER_V0(i);

        if (s->frameFlags & SPRITE_FLAG(X_FLIP, 1)) {
            if (I(p->qWorldX) >= enemyWorldX) {
                SPRITE_FLAG_CLEAR(s, X_FLIP);
            }
        }

        if (!(s->frameFlags & SPRITE_FLAG(X_FLIP, 1))) {
            if (I(p->qWorldX) < enemyWorldX) {
                SPRITE_FLAG_SET(s, X_FLIP);
            }
        }
    }
}

// (97.72%) https://decomp.me/scratch/stVW9
NONMATCH("asm/non_matching/game/enemies/jousun__sub_805BD08.inc", bool32 sub_805BD08(Jousun *enemy))
{
    Player *p;
    s32 worldX;
    s32 worldY;
    s32 dir;
    u8 i;

    worldX = I(enemy->qPos.x);
    worldY = I(enemy->qPos.y);
    worldX = (TO_WORLD_POS_RAW(worldX, enemy->region[0]));
    worldY = (TO_WORLD_POS_RAW(worldY, enemy->region[1]));

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        Sprite *s;

        Player *p = sub_805CD20(i);
        if (p == NULL)
            break;

        // NOTE/BUG?: Result ignored!
        sa2__sub_8004418(I(p->qWorldY) - worldY, I(p->qWorldX) - worldX);

        dir = (p->qWorldY - (enemy->region[1] << 16)) - enemy->qPos.y;

        if (dir >= 0) {
            if (dir > Q(2)) {
                asm("");
                continue;
            }
        } else {
            if (enemy->qPos.y - (p->qWorldY - (enemy->region[1] << 16)) > Q(2)) {
                continue;
            }
        }

        s = &enemy->s;
        if (s->frameFlags & SPRITE_FLAG(X_FLIP, 1)) {
            if ((p->qWorldX - (enemy->region[0] << 16)) > enemy->qPos.x) {
                continue;
            }
        } else {
            if ((p->qWorldX - (enemy->region[0] << 16)) < enemy->qPos.x) {
                continue;
            }
        }

        enemy->qUnk10 = p->qWorldX;
        enemy->qUnk14 = p->qWorldY;
        return TRUE;
    }

    return FALSE;
}
END_NONMATCH

void CreateEntity_Jousun_Right(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_JousunMain, sizeof(Jousun), 0x2100, 0, TaskDestructor_Jousun);
    Jousun *enemy = TASK_DATA(t);

    sub_805BF38(enemy, me, regionX, regionY, id);
    sub_805B980(enemy);

    SET_MAP_ENTITY_INITIALIZED(me);
}

void CreateEntity_Jousun_Left(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_JousunMain, sizeof(Jousun), 0x2100, 0, TaskDestructor_Jousun);
    Jousun *enemy = TASK_DATA(t);

    sub_805BF38(enemy, me, regionX, regionY, id);
    sub_805B980(enemy);

    enemy->s.frameFlags |= SPRITE_FLAG(X_FLIP, 1);

    SET_MAP_ENTITY_INITIALIZED(me);
}

void Task_805BEAC(void)
{
    Jousun *enemy = TASK_DATA(gCurTask);

    AnimCmdResult acmdRes = sub_805BF7C(enemy);

    if (sub_805BFEC(enemy) == TRUE) {
        TaskDestroy(gCurTask);
        return;
    }

    if (acmdRes == ACMD_RESULT__ENDED) {
        Sprite *s = &enemy->s;
        s->anim = gUnknown_080D1F2C[2].anim;
        s->variant = gUnknown_080D1F2C[2].variant;
        gCurTask->main = sub_805BA78;
    }
}

void sub_805BF04(Jousun *enemy)
{
    if (enemy->unk6 < 0x100) {
        enemy->unk6++;
    } else {
        enemy->unk6 = 0;
    }

    enemy->qPos.x = enemy->qUnk18;
    enemy->qPos.y = enemy->qUnk1C + SIN_24_8((u8)enemy->unk6 * 4) * 32;
}

void sub_805BF38(Jousun *enemy, MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    s32 qX, qY;

    enemy->me = me;
    enemy->meX = me->x;
    enemy->id = id;
    enemy->region[0] = regionX;
    enemy->region[1] = regionY;

    qX = Q(me->x * TILE_WIDTH);
    enemy->qPos.x = qX;
    qY = Q(me->y * TILE_WIDTH);
    enemy->qPos.y = qY;

    enemy->qUnk18 = enemy->qPos.x;
    enemy->qUnk1C = enemy->qPos.y;
    enemy->unk6 = 0;
    enemy->unk8 = 0;

    CpuFill16(0, &enemy->reserved.b, sizeof(enemy->reserved.b));
}

AnimCmdResult sub_805BF7C(Jousun *enemy)
{
    AnimCmdResult acmdRes;

    Sprite *s = &enemy->s;
    s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region[1]) - gCamera.y;

    acmdRes = UpdateSpriteAnimation(s);
    DisplaySprite(s);

    return acmdRes;
}

bool32 sub_805BFC0(Jousun *enemy, EnemyUnknownStruc0 *param1)
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

bool32 sub_805BFEC(Jousun *enemy)
{
    EnemyUnknownStruc0 unk;

    unk.unk4 = sub_805BFC0(enemy, &unk);
    unk.spr = &enemy->s;
    unk.posX = enemy->qUnk18;
    unk.posY = enemy->qUnk1C;
    unk.regionX = enemy->region[0];
    unk.regionY = enemy->region[1];
    unk.me = enemy->me;
    unk.meX = enemy->meX;

    return sub_805C280(&unk);
}

void TaskDestructor_Jousun(struct Task *t)
{
    Jousun *enemy = TASK_DATA(t);
    VramFree(enemy->s.tiles);
}

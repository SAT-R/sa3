#include "global.h"
#include "core.h"
#include "trig.h"
#include "malloc_vram.h"
#include "module_unclear.h"
#include "game/camera.h"
#include "game/enemy_unknown.h"
#include "game/entity.h"
#include "game/stage.h"

typedef struct Clam {
    /* 0x00 */ MapEntity *me;
    /* 0x04 */ u8 unk4;
    /* 0x05 */ u8 id;
    /* 0x06 */ u8 meX;
    /* 0x07 */ u8 unk7;
    /* 0x08 */ s8 unk8;
    /* 0x09 */ s8 direction;
    /* 0x0A */ u16 region[2];
    /* 0x0E */ s16 unkE;
    /* 0x10 */ Vec2_32 qUnk10;
    /* 0x18 */ Vec2_32 qPos;
    /* 0x20 */ Sprite2 s;
} Clam; /* 0x58 */

typedef struct ClamProj {
    /* 0x00 */ u8 unk0;
    /* 0x01 */ u8 unk1;
    /* 0x02 */ u16 region[2];
    /* 0x06 */ u8 filler6[0x2];
    /* 0x08 */ s32 unk8;
    /* 0x0C */ Vec2_32 qPos;
    /* 0x14 */ s32 unk14;
    /* 0x18 */ s32 unk18;
    /* 0x1C */ Sprite2 s;
} ClamProj; /* 0x4C */

void sub_8063FE0(Clam *clam);
void Task_8064074(void);
AnimCmdResult sub_80645D8(Clam *clam);
bool32 sub_806461C(Clam *clam);
bool32 sub_8064684(Clam *clam);
void Task_8064140(void);
void Task_8064230(void);
bool32 sub_8064658(Clam *clam, EnemyUnknownStruc0 *arg1);
void TaskDestructor_80646DC(struct Task *t);
void sub_80646F0(s32 x, s32 y, u16 regionX, u16 regionY, bool8 param4, u8 param5);

extern const TileInfo2 gUnknown_080D212C[6];

void sub_8064304(ClamProj *proj);
bool32 sub_806437C(ClamProj *proj);

void CreateEntity_Clam(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_8064074, sizeof(Clam), 0x2100, 0, TaskDestructor_80646DC);

    Clam *enemy = TASK_DATA(t);
    s32 qX, qY;
    u8 val;

    enemy->id = id;
    enemy->me = me;
    enemy->meX = me->x;
    enemy->region[0] = regionX;
    enemy->region[1] = regionY;

    enemy->qPos.x = Q(me->x * TILE_WIDTH);
    enemy->qPos.y = Q(me->y * TILE_WIDTH);
    enemy->qUnk10.x = enemy->qPos.x;
    enemy->qUnk10.y = enemy->qPos.y;

    enemy->unkE = 0;
    enemy->unk7 = 0;
    enemy->unk8 = 0;

    if (me->d.uData[4] & 0x8) {
        enemy->direction = -1;
    } else {
        enemy->direction = +1;
    }

    val = (me->d.uData[4] & 0x10) >> 4;
    if (val) {
        enemy->unk4 = 1;
    } else {
        enemy->unk4 = 0;
    }

    CpuFill16(0, &enemy->s.hitboxes[1].b, sizeof(enemy->s.hitboxes[1].b));

    sub_8063FE0(enemy);

    SET_MAP_ENTITY_INITIALIZED(me);
}

void sub_8063FE0(Clam *clam)
{
    u8 *vram = VramMalloc(0x10U);
    Sprite2 *s;

    s = &clam->s;
    s->tiles = vram;
    s->anim = gUnknown_080D212C[0].anim;
    s->variant = gUnknown_080D212C[0].variant;
    s->prevVariant = -1;
    s->x = TO_WORLD_POS_RAW(I(clam->qPos.x), clam->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(clam->qPos.y), clam->region[1]) - gCamera.y;
    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0x1000;

    if (clam->direction < 0) {
        s->frameFlags |= 0x400;
        s->frameFlags |= 0x1000;
    }

    if (clam->unk4 != 0) {
        s->frameFlags |= 0x800;
    }
    s->hitboxes[0].index = -1;
    UpdateSpriteAnimation((Sprite *)s);
}

void Task_8064074()
{
    Clam *clam = TASK_DATA(gCurTask);

    if (clam->unk4 != 0) {
        sub_805CE14(&clam->qPos, NULL, clam->region, &clam->unk8);
    } else {
        sub_805CD70(&clam->qPos, NULL, clam->region, &clam->unk8);
    }
    sub_80645D8(clam);
    if (sub_806461C(clam) == 1) {
        TaskDestroy(gCurTask);
        return;
    }
    if (((u8)(gStageData.unk4 - 1) > 1U) && (gStageData.unk4 != 4)) {
        if ((clam->unkE == 0) && (sub_8064684(clam) == 1)) {
            Sprite2 *s = &clam->s;
            s->anim = gUnknown_080D212C[1].anim;
            s->variant = gUnknown_080D212C[1].variant;
            s->prevVariant = -1;
            gCurTask->main = Task_8064140;
            return;
        }
        if (clam->unkE > 0) {
            clam->unkE--;
        }
    }
}

void Task_8064140()
{
    Clam *clam = TASK_DATA(gCurTask);
    Sprite2 *s;
    AnimCmdResult acmdRes;
    bool8 b;

    if (clam->unk4 != 0) {
        sub_805CE14(&clam->qPos, 0, clam->region, &clam->unk8);
    } else {
        sub_805CD70(&clam->qPos, NULL, clam->region, &clam->unk8);
    }

    acmdRes = sub_80645D8(clam);

    if (((u8)(gStageData.unk4 - 1) > 1U) && (gStageData.unk4 != 4)) {
        if (acmdRes == ACMD_RESULT__ENDED) {
            s = &clam->s;
            s->anim = gUnknown_080D212C[3].anim;
            s->variant = gUnknown_080D212C[3].variant;
            s->prevVariant = -1;
            if ((u8)clam->unk7 == 3) {
                s->anim = gUnknown_080D212C[2].anim;
                s->variant = gUnknown_080D212C[2].variant;
                s->prevVariant = -1;
                gCurTask->main = Task_8064230;
                return;
            }

            b = (-(s->frameFlags & 0x400)) >> 31;
            sub_80646F0(clam->qPos.x, clam->qPos.y, clam->region[0], clam->region[1], b, clam->unk4);
            clam->unk7++;
        }

        if (sub_806461C(clam) == 1) {
            TaskDestroy(gCurTask);
        }
    }
}

void Task_8064230(void)
{
    Clam *clam = TASK_DATA(gCurTask);
    Sprite2 *s;
    AnimCmdResult acmdRes;

    if (clam->unk4 != 0) {
        sub_805CE14(&clam->qPos, 0, clam->region, &clam->unk8);
    } else {
        sub_805CD70(&clam->qPos, NULL, clam->region, &clam->unk8);
    }
    acmdRes = sub_80645D8(clam);
    if (((u8)(gStageData.unk4 - 1) > 1U) && (gStageData.unk4 != 4)) {
        if (acmdRes == ACMD_RESULT__ENDED) {
            s = &clam->s;
            s->anim = gUnknown_080D212C[4].anim;
            s->variant = gUnknown_080D212C[4].variant;
            s->prevVariant = -1;

            if (clam->unk7 == 4) {
                s->anim = gUnknown_080D212C[0].anim;
                s->variant = gUnknown_080D212C[0].variant;
                s->prevVariant = -1;
                clam->unkE = 0x78;
                clam->unk7 = 0;
                gCurTask->main = Task_8064074;
                return;
            }
            clam->unk7++;
        }

        if (sub_806461C(clam) == 1) {
            TaskDestroy(gCurTask);
        }
    }
}

void sub_8064304(ClamProj *proj)
{
    u8 *vram = VramMalloc(1U);
    Sprite2 *s;

    s = &proj->s;
    s->tiles = vram;
    s->anim = gUnknown_080D212C[5].anim;
    s->variant = gUnknown_080D212C[5].variant;
    s->prevVariant = -1;
    s->x = TO_WORLD_POS_RAW(I(proj->qPos.x), proj->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(proj->qPos.y), proj->region[1]) - gCamera.y;
    s->oamFlags = 0x4C0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0x1000;
    s->hitboxes[0].index = -1;
    UpdateSpriteAnimation((Sprite *)s);
}

bool32 sub_806437C(ClamProj *proj)
{
    s32 shift = 6;
    s32 sp[4];
    s32 temp_r0;
    s32 temp_r1;
    s32 temp_r2;
    s32 temp_r4;
    s32 var_r3;
    s32 var_r4;
    s32 v, w, x;
    s32 a0, a1;
    s32 vv;

    {
        s32 var_r4;
        if (proj->unk1 != 0) {
            if (proj->unk0 != 0) {
                var_r4 = 0x120;
            } else {
                var_r4 = 0x60;
            }
        } else {
            if (proj->unk0 != 0) {
                var_r4 = 0xE0;
            } else {
                var_r4 = 0xA0;
            }
        }
        sp[0] = 0;
        sp[1] = 0;
        v = (SIN((var_r4 & 0xFF) * 4) >> 0x6);
        sp[2] = (v << 3) + (v << 2);
        temp_r0 = (COS((var_r4 & 0xFF) * 4) >> 0x6);
        sp[3] = (temp_r0 << 3) + (temp_r0 << 2);
        if ((var_r4 == 0x60) || (var_r4 == 0x120)) {
            sp[2] += 0x200;
        }
    }

    x = sp[1];
    w = sp[0];
    v = sp[3];
    a0 = ((v - x) >> shift);
    var_r4 = proj->unk8 >> 6;

    proj->unk18 = (sp[1] + (var_r4 * a0));
    w += +(+(((sp[2] - w) >> shift) * var_r4));
    proj->unk14 = w;
#ifndef NON_MATCHING
    vv = 2;
    asm("" ::"r"(vv));
    vv <<= 8;
#else
    vv = 0x200;
#endif
    proj->unk8 += vv;

    return FALSE;
}

bool32 sub_8064420(ClamProj *proj)
{
    s16 screenX, screenY;
    screenX = TO_WORLD_POS_RAW(I(proj->qPos.x), proj->region[0]) - gCamera.x;
    screenX += I(proj->unk14);
    screenY = (TO_WORLD_POS_RAW(I(proj->qPos.y), proj->region[1]) - gCamera.y);
    screenY += I(proj->unk18);

    if (ABS(proj->unk18) >= Q(140) && ABS(proj->unk14) >= Q(140)) {
        return TRUE;
    }

    if ((screenX < 0 || screenX > 240) || (screenY < 0 || screenY > 160)) {
        return TRUE;
    }

    return FALSE;
}

bool32 sub_8064490(ClamProj *proj)
{
    Sprite2 *s;
    s32 worldX;
    s32 worldY;
    s32 mid;
    u32 temp_r0_2;
    u8 i;
    Player *p = NULL;

    s = &proj->s;

    worldX = TO_WORLD_POS_RAW(I(proj->qPos.x), proj->region[0]);
    worldY = TO_WORLD_POS_RAW(I(proj->qPos.y), proj->region[1]);

    worldX += I(proj->unk14);

    if (proj->unk0 != 0) {
        mid = worldY + 0x14;
        worldY = mid + I(proj->unk18);
    } else {
        mid = worldY - 0x14;
        worldY = mid + I(proj->unk18);
    }

    if (proj->unk1 != 0) {
        worldX = worldX + 0xA;
    } else {
        worldX = worldX - 0xA;
    }

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        p = GET_SP_PLAYER_V0(i);
        if (!sub_802C080(p) && sub_8020700((Sprite *)s, worldX, worldY, 1, p, 0)) {
            if (p->framesInvincible == 0) {
                sub_8020CE0((Sprite *)s, worldX, worldY, 1U, p);
                return TRUE;
            }
            return TRUE;
        }
    }

    return FALSE;
}

s32 sub_8064564(ClamProj *proj)
{
    Sprite2 *s;
    s32 dx, dy;
    AnimCmdResult acmdRes;

    s = &proj->s;
    dx = TO_WORLD_POS_RAW(I(proj->qPos.x), proj->region[0]) - gCamera.x;
    s->x = dx;
    dy = TO_WORLD_POS_RAW(I(proj->qPos.y), proj->region[1]) - gCamera.y;
    s->y = dy;
    s->x = dx + I(proj->unk14);

    if (proj->unk0 != 0) {
        dy += 20;
        dy += I(proj->unk18);
        s->y = dy;
    } else {
        dy -= 20;
        dy += I(proj->unk18);
        s->y = dy;
    }

    if (proj->unk1 != 0) {
        s->x += 10;
    } else {
        s->x -= 10;
    }

    acmdRes = UpdateSpriteAnimation((Sprite *)s);
    DisplaySprite((Sprite *)s);
    return acmdRes;
}

AnimCmdResult sub_80645D8(Clam *clam)
{
    Sprite2 *temp_r5;
    s32 temp_r4;

    temp_r5 = &clam->s;
    temp_r5->x = TO_WORLD_POS_RAW(I(clam->qPos.x), clam->region[0]) - gCamera.x;
    temp_r5->y = TO_WORLD_POS_RAW(I(clam->qPos.y), clam->region[1]) - gCamera.y;
    temp_r4 = UpdateSpriteAnimation((Sprite *)temp_r5);
    DisplaySprite((Sprite *)temp_r5);
    return temp_r4;
}

bool32 sub_806461C(Clam *clam)
{
    EnemyUnknownStruc0 unk;

    unk.unk4 = sub_8064658(clam, &unk);
    unk.spr = (Sprite *)&clam->s;
    unk.posX = clam->qUnk10.x;
    unk.posY = clam->qUnk10.y;
    unk.regionX = clam->region[0];
    unk.regionY = clam->region[1];
    unk.me = clam->me;
    unk.spriteX = clam->meX;

    return sub_805C280(&unk);
}

bool32 sub_8064658(Clam *clam, EnemyUnknownStruc0 *arg1)
{
    arg1->me = NULL;
    arg1->spriteX = 0;
    arg1->unk4 = 0;
    arg1->spr = (Sprite *)&clam->s;
    arg1->posX = clam->qPos.x;
    arg1->posY = clam->qPos.y;
    arg1->regionX = clam->region[0];
    arg1->regionY = clam->region[1];
    return sub_805C63C(arg1);
}

bool32 sub_8064684(Clam *clam)
{
    Sprite2 *s = &clam->s;
    Player *p;
    s32 worldX;
    s32 dx;
    u8 i;

    worldX = I(clam->qPos.x);
    worldX = TO_WORLD_POS_RAW(worldX, clam->region[0]);

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        p = sub_805CD20(i);
        if (p == NULL) {
            break;
        }

        if (s->frameFlags & 0x400) {
            dx = I(p->qWorldX) - worldX;
        } else {
            dx = worldX - I(p->qWorldX);
        }
        if ((dx > 0) && (dx < (DISPLAY_WIDTH / 2))) {
            return TRUE;
        }
    }

    return FALSE;
}

void TaskDestructor_80646DC(Task *t)
{
    Clam *clam = TASK_DATA(t);
    VramFree(clam->s.tiles);
}

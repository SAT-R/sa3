#include "global.h"
#include "core.h"
#include "trig.h"
#include "malloc_vram.h"
#include "game/camera.h"
#include "game/enemy_unknown.h"
#include "game/entity.h"
#include "game/stage.h"

typedef enum UutsuboType {
    MKTYPE_A,
    MKTYPE_B,
} UutsuboType;

typedef struct Muukaden {
    /* 0x00 */ MapEntity *me;
    /* 0x04 */ u8 id;
    /* 0x05 */ u8 meX;
    /* 0x06 */ u8 unk6;
    /* 0x07 */ u8 unk7;
    /* 0x08 */ s8 dir;
    /* 0x07 */ u16 unkA[5];
    /* 0x14 */ u16 region[2];
    /* 0x18 */ u16 unk18;
    /* 0x1A */ u16 unk1A;
    /* 0x2C */ Vec2_32 qUnk1C;
    /* 0x24 */ s32 qLeft;
    /* 0x28 */ s32 qRight;
    /* 0x2C */ Vec2_32 qUnk2C;
    /* 0x34 */ s32 qTop;
    /* 0x38 */ s32 qBottom;
    /* 0x3C */ Vec2_32 qUnk3C[4];
    /* 0x5C */ Vec2_32 qUnk5C;
    /* 0x64 */ Vec2_32 qPos;
    /* 0x6C */ SpriteTransform tf;
    /* 0x78 */ Sprite2 sprites[5];
} Muukaden; /* 0x168 */

void Task_Muukaden(void);
void TaskDestructor_Muukaden(struct Task *t);
void Task_8062B90(void);
void Task_8062C4C(void);
void sub_8062CFC(Muukaden *enemy);
bool32 sub_8062EF8(Muukaden *enemy, Vec2_32 *arg1, u8 arg2);
bool32 sub_8062FC0(Muukaden *enemy);
void sub_80631F8(Muukaden *enemy);
bool32 sub_8063260(Muukaden *enemy);
void sub_8063514(Sprite2 *s, SpriteTransform *tf, u8 type, u8 arg3);
void sub_806359C(Sprite2 *s, SpriteTransform *tf, Muukaden *enemy);
bool32 sub_80630AC(Muukaden *enemy, UNUSED Sprite2 *s, UNUSED Vec2_32 *param2);
bool32 sub_8063324(Muukaden *enemy);
bool32 sub_8063574(Muukaden *enemy, Sprite2 *sprCurr, Vec2_32 *qParam2, EnemyUnknownStruc0 *strc);

extern TileInfo2 gUnknown_080D20C4[9];

// (99.52%) https://decomp.me/scratch/sVUYZ
NONMATCH("asm/non_matching/game/enemies/muukaden__CreateMuukaden.inc",
         void CreateMuukaden(Muukaden *enemy, MapEntity *me, u16 regionX, u16 regionY, u8 id))
{
    u8 i;

    enemy->me = me;
    enemy->meX = me->x;
    enemy->id = id;
    enemy->region[0] = regionX;
    enemy->region[1] = regionY;
    enemy->qPos.x = Q(me->x * TILE_WIDTH);
    enemy->qPos.y = Q(me->y * TILE_WIDTH);
    enemy->qUnk5C.x = enemy->qPos.x;
    enemy->qUnk5C.y = enemy->qPos.y;
    enemy->unk18 = 0;
    enemy->unk1A = 0;
    enemy->unk7 = 0;
    enemy->tf.rotation = 0;
    enemy->qLeft = enemy->qUnk5C.x + Q(me->d.sData[0] * TILE_WIDTH);
    enemy->qRight = enemy->qLeft + Q(me->d.uData[2] * TILE_WIDTH);
    enemy->qTop = enemy->qUnk5C.y + Q(me->d.sData[1] * TILE_WIDTH);
    enemy->qBottom = enemy->qTop + Q(me->d.uData[3] * TILE_WIDTH);
    enemy->qUnk2C.x = Q(me->d.uData[2] * TILE_WIDTH);
    enemy->qUnk2C.y = Q(me->d.uData[3] * TILE_WIDTH);

    if (8 & me->d.uData[4]) {
        enemy->dir = -1;
    } else {
        enemy->dir = +1;
    }

    for (i = 0; i < 4; i++) {
        enemy->qUnk3C[i].x = enemy->qUnk5C.x;
        enemy->qUnk3C[i].y = enemy->qUnk5C.y;
        enemy->unkA[i] = 0;
    }
    enemy->unkA[i] = 0;

    CpuFill16(0, &enemy->sprites[0].hitboxes[2].b, sizeof(enemy->sprites[0].hitboxes[2].b));
    CpuFill16(0, &enemy->sprites[1].hitboxes[2].b, sizeof(enemy->sprites[1].hitboxes[2].b));
    CpuFill16(0, &enemy->sprites[2].hitboxes[2].b, sizeof(enemy->sprites[2].hitboxes[2].b));
    CpuFill16(0, &enemy->sprites[3].hitboxes[2].b, sizeof(enemy->sprites[3].hitboxes[2].b));
    CpuFill16(0, &enemy->sprites[4].hitboxes[2].b, sizeof(enemy->sprites[4].hitboxes[2].b));

    CpuFill16(0, &enemy->sprites[0].hitboxes[1].b, sizeof(enemy->sprites[0].hitboxes[1].b));
    CpuFill16(0, &enemy->sprites[1].hitboxes[1].b, sizeof(enemy->sprites[1].hitboxes[1].b));
    CpuFill16(0, &enemy->sprites[2].hitboxes[1].b, sizeof(enemy->sprites[2].hitboxes[1].b));
    CpuFill16(0, &enemy->sprites[3].hitboxes[1].b, sizeof(enemy->sprites[3].hitboxes[1].b));
    CpuFill16(0, &enemy->sprites[4].hitboxes[1].b, sizeof(enemy->sprites[4].hitboxes[1].b));
}
END_NONMATCH

void sub_8062800(Muukaden *enemy, u8 type)
{
    SpriteTransform *tf;
    Sprite2 *s;
    u8 *vram;
    u8 timer;

    tf = &enemy->tf;
    timer = gStageData.timer & 7;
    vram = VramMalloc(0x40U);
    s = &enemy->sprites[1];
    s->tiles = vram;
    vram += (gUnknown_080D20C4[1].numTiles * TILE_SIZE_4BPP);
    s->anim = gUnknown_080D20C4[1].anim;
    s->variant = gUnknown_080D20C4[1].variant;
    s->prevVariant = 0xFF;
    s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region[1]) - gCamera.y;
    s->oamFlags = 0x480;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    sub_8063514(s, tf, type, timer);
    UpdateSpriteAnimation((Sprite *)s);

    s = &enemy->sprites[0];
    enemy->sprites[0].tiles = vram;
    vram += (gUnknown_080D20C4->numTiles * TILE_SIZE_4BPP);
    s->anim = gUnknown_080D20C4->anim;
    s->variant = gUnknown_080D20C4->variant;
    s->prevVariant = -1;
    s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region[1]) - gCamera.y;
    s->oamFlags = 0x480;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    sub_8063514(s, tf, type, timer);
    UpdateSpriteAnimation((Sprite *)s);

    s = &enemy->sprites[2];
    s->tiles = vram;
    vram += (gUnknown_080D20C4[2].numTiles * TILE_SIZE_4BPP);
    s->anim = gUnknown_080D20C4[2].anim;
    s->variant = gUnknown_080D20C4[2].variant;
    s->prevVariant = -1;
    s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region[1]) - gCamera.y;
    s->oamFlags = 0x480;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    sub_8063514(s, tf, type, timer);
    UpdateSpriteAnimation((Sprite *)s);

    s = &enemy->sprites[3];
    s->tiles = vram;
    vram += 8 * TILE_SIZE_4BPP;
    if (type == 0) {
        s->anim = gUnknown_080D20C4[5].anim;
        s->variant = gUnknown_080D20C4[5].variant;
    } else {
        s->anim = gUnknown_080D20C4[8].anim;
        s->variant = gUnknown_080D20C4[8].variant;
    }
    s->prevVariant = -1;
    s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region[1]) - gCamera.y;
    s->oamFlags = 0x480;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x1000;
    UpdateSpriteAnimation((Sprite *)s);

    s = &enemy->sprites[4];
    s->tiles = vram;
    if (type == 0) {
        s->anim = gUnknown_080D20C4[5].anim;
        s->variant = gUnknown_080D20C4[5].variant;
    } else {
        s->anim = gUnknown_080D20C4[8].anim;
        s->variant = gUnknown_080D20C4[8].variant;
    }
    s->prevVariant = -1;
    s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region[1]) - gCamera.y;
    s->oamFlags = 0x480;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x1000;
    UpdateSpriteAnimation((Sprite *)s);
}

void Task_Muukaden(void)
{
    Vec2_32 *temp_r1;
    u8 var_r4;
    u16 temp_r0;
    u32 var_r3;
    u8 temp_r2;

    Muukaden *enemy = TASK_DATA(gCurTask);

    sub_80631F8(enemy);
    sub_8063260(enemy);
    sub_8062CFC(enemy);
    if ((gStageData.unk4 != 1) && (gStageData.unk4 != 2) && (gStageData.unk4 != 4)) {
        sub_8062EF8(enemy, &enemy->qPos, 0U);
    }
    if (sub_80630AC(enemy, enemy->sprites, &enemy->qPos) == TRUE) {
        TaskDestroy(gCurTask);
        return;
    }
    for (var_r4 = 0; var_r4 < enemy->unk7 - 1; var_r4++) {
        sub_8062EF8(enemy, &enemy->qUnk3C[var_r4], var_r4 + 1);
    }

    if (enemy->unk7 == 0) {
        var_r3 = 5;
    } else {
        var_r3 = 10;
    }

    if (++enemy->unk18 > var_r3) {
        enemy->unk18 = 0;
        if (enemy->unk7 == 5) {
            u8 dat3 = enemy->me->d.uData[4];
            if (dat3 & 8) {
                if (enemy->dir == -1) {
                    gCurTask->main = Task_8062B90;
                } else {
                    gCurTask->main = Task_8062C4C;
                }
            } else {
                if (enemy->dir == 1) {
                    gCurTask->main = Task_8062B90;
                } else {
                    gCurTask->main = Task_8062C4C;
                }
            }
        } else {
            enemy->unk7++;
        }
    }
}

void Task_8062B90(void)
{
    Vec2_32 *temp_r1;
    u8 var_r4;

    Muukaden *enemy = TASK_DATA(gCurTask);
    MapEntity *me;
    bool32 var_r6 = FALSE;

    sub_80631F8(enemy);
    sub_8063260(enemy);
    sub_8062CFC(enemy);

    if ((gStageData.unk4 != 1) && (gStageData.unk4 != 2) && (gStageData.unk4 != 4)) {
        sub_8062EF8(enemy, &enemy->qPos, 0U);

        for (var_r4 = 0; var_r4 < (enemy->unk7 - 1); var_r4++) {
            var_r6 = sub_8062EF8(enemy, &enemy->qUnk3C[var_r4], var_r4 + 1);
        }
    }
    if (sub_80630AC(enemy, &enemy->sprites[0], &enemy->qPos) == 1) {
        TaskDestroy(gCurTask);
        return;
    }

    me = enemy->me;
    SET_MAP_ENTITY_INITIALIZED(me);

    if (var_r6 == 1) {
        enemy->dir = -1;
        enemy->unk7 = 0U;
        gCurTask->main = Task_Muukaden;
    }
}

void Task_8062C4C(void)
{
    Vec2_32 *temp_r1;
    u8 var_r4;

    Muukaden *enemy = TASK_DATA(gCurTask);
    MapEntity *me;
    bool32 var_r6 = FALSE;

    sub_80631F8(enemy);
    sub_8063260(enemy);
    sub_8062CFC(enemy);

    if ((gStageData.unk4 != 1) && (gStageData.unk4 != 2) && (gStageData.unk4 != 4)) {
        sub_8062EF8(enemy, &enemy->qPos, 0U);

        for (var_r4 = 0; var_r4 < (enemy->unk7 - 1); var_r4++) {
            var_r6 = sub_8062EF8(enemy, &enemy->qUnk3C[var_r4], var_r4 + 1);
        }
    }
    if (sub_80630AC(enemy, &enemy->sprites[0], &enemy->qPos) == 1) {
        TaskDestroy(gCurTask);
        return;
    }

    if (var_r6 == 1) {
        enemy->dir = +1;
        enemy->unk7 = 0U;
        gCurTask->main = Task_Muukaden;
    }
}

void sub_8062CFC(Muukaden *enemy)
{
    s32 sp4;
    Sprite2 *s;
    u8 i;

    s = &enemy->sprites[3];
    if (++enemy->unk1A >= 60) {
        sp4 = sub_8063324(enemy);

        if ((((s->anim == gUnknown_080D20C4[3].anim) && (s->variant == gUnknown_080D20C4[3].variant))
             || ((s->anim == gUnknown_080D20C4[6].anim) && (s->variant == gUnknown_080D20C4[6].variant)))
            && ((u32)enemy->unk1A > 0xB3U)) {
            sp4 = 0;
        }

        for (i = 0; i < 2; i++) {
            if (sp4 == 0) {
                if (i != 0) {
                    s = &enemy->sprites[4];
                }
                if (((s->anim == gUnknown_080D20C4[4].anim) && (s->variant == gUnknown_080D20C4[4].variant))
                    || ((s->anim == gUnknown_080D20C4[7].anim) && (s->variant == gUnknown_080D20C4[7].variant))) {
                    if ((s->anim == gUnknown_080D20C4[4].anim) && (s->variant == gUnknown_080D20C4[4].variant)) {
                        s->anim = gUnknown_080D20C4[5].anim;
                        s->variant = gUnknown_080D20C4[5].variant;
                        s->prevVariant = -1;
                    } else {
                        s->anim = gUnknown_080D20C4[8].anim;
                        s->variant = gUnknown_080D20C4[8].variant;
                        s->prevVariant = -1;
                    }
                    if (i != 0) {
                        CpuFill16(0, &enemy->sprites[3].hitboxes[1].b, sizeof(enemy->sprites[3].hitboxes[1].b));
                    } else {
                        CpuFill16(0, &enemy->sprites[4].hitboxes[1].b, sizeof(enemy->sprites[4].hitboxes[1].b));
                    }
                    enemy->unk1A = 0;
                } else {
                    if (((s->anim == gUnknown_080D20C4[5].anim) && (s->variant == gUnknown_080D20C4[5].variant))
                        || ((s->anim == gUnknown_080D20C4[8].anim) && (s->variant == gUnknown_080D20C4[8].variant))) {
                        if ((s->anim == gUnknown_080D20C4[5].anim) && (s->variant == gUnknown_080D20C4[5].variant)) {
                            s->anim = gUnknown_080D20C4[3].anim;
                            s->variant = gUnknown_080D20C4[3].variant;
                        } else {
                            s->anim = gUnknown_080D20C4[6].anim;
                            s->variant = gUnknown_080D20C4[6].variant;
                        }
                        s->prevVariant = -1;
                        enemy->unk1A = 60;
                    } else {
                        if (((s->anim == gUnknown_080D20C4[3].anim) && (s->variant == gUnknown_080D20C4[3].variant))
                            || ((s->anim == gUnknown_080D20C4[6].anim) && (s->variant == gUnknown_080D20C4[6].variant))) {
                            if ((s->anim == gUnknown_080D20C4[6].anim) && (s->variant == gUnknown_080D20C4[6].variant)) {
                                s->anim = gUnknown_080D20C4[7].anim;
                                s->variant = gUnknown_080D20C4[7].variant;
                            } else {
                                s->anim = gUnknown_080D20C4[4].anim;
                                s->variant = gUnknown_080D20C4[4].variant;
                            }
                            s->prevVariant = -1;
                        }
                    }
                }
            }
        }
    }
}

u32 sub_8062EF8(Muukaden *enemy, Vec2_32 *arg1, u8 arg2)
{
#ifndef NON_MATCHING
    s32 forMatching = enemy->tf.rotation;
#endif
    s32 var_r6 = 0;

    if (enemy->tf.rotation != 0) {
        arg1->y -= Q(enemy->dir);
        if (enemy->qTop > arg1->y) {
            arg1->y = enemy->qTop;
            var_r6 = 1;
        } else if (enemy->qBottom < arg1->y) {
            arg1->y = enemy->qBottom;
            var_r6 = 1;
        } else {
            arg1->x = enemy->qUnk5C.x + SIN_24_8(I(enemy->unkA[arg2]) * 4) * 2;
            enemy->unkA[arg2] += 0x400;
        }
    } else {
        arg1->x -= Q(enemy->dir);
        if (enemy->qLeft > arg1->x) {
            arg1->x = enemy->qLeft;
            var_r6 = 1;
        } else if (enemy->qRight < arg1->x) {
            arg1->x = enemy->qRight;
            var_r6 = 1;
        } else {
            arg1->y = enemy->qUnk5C.y + SIN_24_8(I(enemy->unkA[arg2]) * 4) * 2;
            enemy->unkA[arg2] += 0x400;
        }
    }
    if ((var_r6 == 1) && (arg2 == 4)) {
        return TRUE;
    }
    return FALSE;
}

bool32 sub_8062FC0(Muukaden *enemy)
{
    Player *p;
    s32 qDx, qDy;
    u8 i;

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        p = sub_805CD20(i);
        if (p == NULL) {
            break;
        }

        if (enemy->tf.rotation == 0) {
            qDy = p->qWorldY - Q(TO_WORLD_POS_RAW(0, enemy->region[1]));

            if (ABS(qDy - enemy->qPos.y) <= 0x500) {
                if ((!(enemy->sprites[0].frameFlags & 0x400) && ((p->qWorldX - Q(TO_WORLD_POS_RAW(0, enemy->region[0]))) <= enemy->qPos.x))
                    || ((enemy->sprites[0].frameFlags & 0x400)
                        && ((p->qWorldX - Q(TO_WORLD_POS_RAW(0, enemy->region[0]))) >= enemy->qPos.x))) {
                    enemy->qUnk1C.x = p->qWorldX;
                    enemy->qUnk1C.y = p->qWorldY;
                    return TRUE;
                }
            }
        } else {
            qDx = p->qWorldX - Q(TO_WORLD_POS_RAW(0, enemy->region[0]));

            if (ABS(qDx - enemy->qPos.x) <= 0x500) {
                if (((enemy->tf.rotation != 0) && ((p->qWorldY - Q(TO_WORLD_POS_RAW(0, enemy->region[1]))) <= enemy->qPos.y))
                    || ((enemy->tf.rotation == 0x300) && ((p->qWorldY - Q(TO_WORLD_POS_RAW(0, enemy->region[1]))) >= enemy->qPos.y))) {
                    enemy->qUnk1C.x = p->qWorldX;
                    enemy->qUnk1C.y = p->qWorldY;
                    return TRUE;
                }
            }
        }
    }

    return FALSE;
}

bool32 sub_80630AC(Muukaden *enemy, Sprite2 *s, Vec2_32 *param2)
{
    EnemyUnknownStruc0 strc;
    Sprite2 *sprCurr;
    Vec2_32 *qPos;
    s32 var_r4;
    u8 i;

    for (i = 0; i < (enemy->unk7 - 1); i++) {
        if ((i == 0) || (i == 3)) {
            qPos = &enemy->qUnk3C[i];

            sprCurr = &enemy->sprites[3];
            strc.unk4 = sub_8063574(enemy, sprCurr, qPos, &strc);
            strc.spr = (Sprite *)sprCurr;
            strc.posX = qPos->x;
            strc.posY = qPos->y;
            strc.regionX = enemy->region[0];
            strc.regionY = enemy->region[1];
            strc.me = enemy->me;
            strc.meX = enemy->meX;

            sprCurr = &enemy->sprites[4];
            strc.unk4 = sub_8063574(enemy, sprCurr, qPos, &strc);
            strc.spr = (Sprite *)sprCurr;
            strc.posX = qPos->x;
            strc.posY = qPos->y;
            strc.regionX = enemy->region[0];
            strc.regionY = enemy->region[1];
            strc.me = enemy->me;
            strc.meX = enemy->meX;
        }

        qPos = &enemy->qUnk3C[i];
        sprCurr = &enemy->sprites[1];
        strc.unk4 = sub_8063574(enemy, sprCurr, &enemy->qUnk3C[i], &strc);
        strc.spr = (Sprite *)sprCurr;
        strc.posX = qPos->x;
        strc.posY = qPos->y;
        strc.regionX = enemy->region[0];
        strc.regionY = enemy->region[1];
        strc.me = enemy->me;
        strc.meX = enemy->meX;
    }

    qPos = &enemy->qPos;
    sprCurr = &enemy->sprites[0];
    strc.unk4 = sub_8063574(enemy, sprCurr, &enemy->qPos, &strc);
    strc.spr = (Sprite *)sprCurr;
    strc.posX = Q(sprCurr->x + gCamera.x);
    strc.posY = Q(sprCurr->y + gCamera.y);

    if (strc.spr->frameFlags & 0x20) {
        strc.spr->x += 10;
        strc.spr->y += 30;
    }

    strc.regionX = 0U;
    strc.regionY = 0U;
    strc.me = enemy->me;
    strc.meX = enemy->meX;
    return sub_805C280((EnemyUnknownStruc0 *)&strc);
}

void sub_80631F8(Muukaden *enemy)
{
    Sprite2 *s;
    SpriteTransform *tf;

    tf = &enemy->tf;
    s = enemy->sprites;

    s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region[1]) - gCamera.y;

    sub_806359C(s, tf, enemy);

    if (SPRITE_FLAG_GET(s, ROT_SCALE_ENABLE)) {
        tf->x = s->x;
        tf->y = s->y;
        TransformSprite((Sprite *)s, tf);
    }
    UpdateSpriteAnimation((Sprite *)s);
    DisplaySprite((Sprite *)s);
}

bool32 sub_8063260(Muukaden *enemy)
{
    Sprite2 *s;
    u8 var_r7;
    u8 var_sl;
    SpriteTransform *tf = &enemy->tf;

    var_sl = 0;
    for (var_r7 = 0; var_r7 < 4; var_r7++) {
        if (var_r7 == var_sl) {
            var_sl += 3;
            s = &enemy->sprites[2];
        } else {
            s = &enemy->sprites[1];
        }

        s->x = TO_WORLD_POS_RAW(I(enemy->qUnk3C[var_r7].x), enemy->region[0]) - gCamera.x;
        s->y = TO_WORLD_POS_RAW(I(enemy->qUnk3C[var_r7].y), enemy->region[1]) - gCamera.y;
        sub_806359C(s, tf, enemy);

        if (SPRITE_FLAG_GET(s, ROT_SCALE_ENABLE)) {
            tf->x = s->x;
            tf->y = s->y;
            TransformSprite((Sprite *)s, tf);
        }
        DisplaySprite((Sprite *)s);
    }

    s = &enemy->sprites[2];
    UpdateSpriteAnimation((Sprite *)s);
    s = &enemy->sprites[1];
    UpdateSpriteAnimation((Sprite *)s);

    return TRUE;
}

bool32 sub_8063324(Muukaden *enemy)
{
    SpriteTransform *tf;
    Sprite2 *s;
    Vec2_32 *temp_r5;
    s32 temp_r3;
    s32 temp_r5_2;
    s32 *temp_r4;
    u8 temp_r0;
    u8 var_r8;
    u8 var_sb;

    tf = &enemy->tf;
    var_r8 = 0;
    var_sb = 0;
    if (UpdateSpriteAnimation((Sprite *)&enemy->sprites[3]) == ACMD_RESULT__ENDED) {
        var_sb = 1;
    }
    if (UpdateSpriteAnimation((Sprite *)&enemy->sprites[4]) == ACMD_RESULT__ENDED) {
        var_sb += 1;
    }

    for (var_r8 = 0; var_r8 < 4; var_r8 += 3) {
        s = &enemy->sprites[3];
        s->x = TO_WORLD_POS_RAW(I(enemy->qUnk3C[var_r8].x), enemy->region[0]) - gCamera.x;
        s->y = TO_WORLD_POS_RAW(I(enemy->qUnk3C[var_r8].y), enemy->region[1]) - gCamera.y;
        DisplaySprite((Sprite *)s);
        s = &enemy->sprites[4];
        s->x = TO_WORLD_POS_RAW(I(enemy->qUnk3C[var_r8].x), enemy->region[0]) - gCamera.x;
        s->y = TO_WORLD_POS_RAW(I(enemy->qUnk3C[var_r8].y), enemy->region[1]) - gCamera.y;
        if (tf->rotation != 0) {
            s->frameFlags |= 0x400;
            s->x++;
        } else {
            s->frameFlags |= 0x800;
            s->y++;
        }
        DisplaySprite((Sprite *)s);
    }
    if (var_sb == 2) {
        return FALSE;
    }

    return TRUE;
}

void CreateEntity_Muukaden_0(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    Muukaden *enemy;

    enemy = TASK_DATA(TaskCreate(Task_Muukaden, sizeof(Muukaden), 0x2100U, 0U, TaskDestructor_Muukaden));
    CreateMuukaden(enemy, me, regionX, regionY, id);
    sub_8062800(enemy, MKTYPE_A);
    SET_MAP_ENTITY_INITIALIZED(me);
}

void CreateEntity_Muukaden_1(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    Muukaden *enemy;

    enemy = TASK_DATA(TaskCreate(Task_Muukaden, sizeof(Muukaden), 0x2100U, 0U, TaskDestructor_Muukaden));
    CreateMuukaden(enemy, me, regionX, regionY, id);
    sub_8062800(enemy, MKTYPE_B);
    SET_MAP_ENTITY_INITIALIZED(me);
}

void sub_8063514(Sprite2 *s, SpriteTransform *tf, u8 type, u8 arg3)
{
    u32 var_r0;
    u8 temp_r0;

    s->frameFlags = 0x1000;
    switch (type) {
        case 0:
            s->frameFlags |= 0x1000;
            s->frameFlags |= 0x400;
            tf->rotation = type;
            return;
        case 1:
            if (arg3 != 0) {
                s->frameFlags |= 0x60;
                s->frameFlags |= (arg3 + 10);
            } else {
                s->frameFlags |= 0x6A;
            }
            tf->rotation = 0x100;
            tf->x = s->x;
            tf->y = s->y;
            tf->qScaleX = Q(1);
            tf->qScaleY = Q(1);
            TransformSprite((Sprite *)s, tf);
            return;
    }
}

bool32 sub_8063574(Muukaden *enemy, Sprite2 *sprCurr, Vec2_32 *qParam2, EnemyUnknownStruc0 *strc)
{
    strc->me = NULL;
    strc->meX = 0;
    strc->unk4 = 0;
    strc->spr = (Sprite *)sprCurr;
    strc->posX = qParam2->x;
    strc->posY = qParam2->y;
    strc->regionX = enemy->region[0];
    strc->regionY = enemy->region[1];
    return sub_805C63C(strc);
}

void sub_806359C(Sprite2 *s, SpriteTransform *tf, Muukaden *enemy)
{
    if (tf->rotation != 0) {
        if (enemy->dir < 0) {
            tf->rotation = 0x300;
        } else {
            tf->rotation = 0x100;
        }
    } else {
        if (enemy->dir < 0) {
            s->frameFlags |= 0x400;
        } else {
            s->frameFlags &= ~0x400;
        }
    }
}

void TaskDestructor_Muukaden(Task *t)
{
    Muukaden *enemy = TASK_DATA(t);
    VramFree(enemy->sprites[1].tiles);
}

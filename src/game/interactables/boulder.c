#include <string.h>
#include "global.h"
#include "trig.h"
#include "malloc_vram.h"
#include "module_unclear.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/player_callbacks.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/move_states.h"
#include "constants/songs.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ Sprite s2;
    /* 0x5C */ s16 worldX;
    /* 0x5E */ s16 worldY;
    /* 0x60 */ s32 qWorldX;
    /* 0x64 */ s32 qWorldY;
    /* 0x68 */ s32 qUnk68; // speed?
    /* 0x6C */ s32 qUnk6C;
    /* 0x70 */ s32 qUnk70;
    /* 0x74 */ void *tiles;
    /* 0x78 */ s16 unk78;
    /* 0x7A */ u8 unk7A;
    /* 0x7B */ u8 unk7B;
    /* 0x7C */ u8 unk7C;
    /* 0x7D */ s8 unk7D[4][4];
} Boulder;

void Task_Boulder(void);
void sub_8049CA8(void);
void sub_8049D70(void);
void sub_8049FD0(void);
void InitBoulderSprite(Boulder *);
void InitDebrisSprites(Boulder *);
void sub_804A1E0(void);
void TaskDestructor_Boulder(struct Task *);

void CreateEntity_Boulder(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Boulder, sizeof(Boulder), 0x2100, 0, TaskDestructor_Boulder);
    Boulder *boulder = TASK_DATA(t);
    Sprite *s;

    boulder->base.regionX = regionX;
    boulder->base.regionY = regionY;
    boulder->base.me = me;
    boulder->base.meX = me->x;
    boulder->base.id = id;

    boulder->worldX = TO_WORLD_POS(me->x, regionX);
    boulder->worldY = TO_WORLD_POS(me->y, regionY);
    boulder->qWorldX = Q(boulder->worldX);
    boulder->qWorldY = Q(boulder->worldY);
    boulder->qUnk68 = 0;
    boulder->qUnk6C = 0;
    boulder->qUnk70 = 0;
    boulder->unk78 = 0;
    boulder->unk7A = 0;
    boulder->unk7B = 0;
    boulder->tiles = NULL;

    s = &boulder->s;
    s->x = boulder->worldX - gCamera.x;
    s->y = boulder->worldY - gCamera.y;

    SET_MAP_ENTITY_INITIALIZED(me);

    InitBoulderSprite(boulder);
}

void Task_Boulder(void)
{
    Boulder *boulder = TASK_DATA(gCurTask);
    Player *p;
    Sprite *s;
    s16 i;
    u32 res;

    boulder->unk78 = (gStageData.timer % 64u);

    // TODO: Solve this condition more sensibly!
    if (((*(u32 *)&boulder->unk78) & 0x00FFFFFF) == 0) {
        boulder->qUnk68 = 0;
        boulder->qUnk6C = 0;
        boulder->qUnk70 = 0;
        boulder->unk7A = 1;

        s = &boulder->s;

        for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
            p = GET_SP_PLAYER_V0(i);

            res = sub_8020874(s, I(boulder->qWorldX), I(boulder->qWorldY), 0, p, 0, 0);
            if (res) {
                if (!(p->moveState & (MOVESTATE_1000000))) {
                    Player_HitWithoutRingsUpdate(p);
                }
            }
        }
    }

    if (boulder->unk7A == 1 || boulder->unk7A == 2 || boulder->unk7A == 3) {
        s = &boulder->s;

        for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
            p = GET_SP_PLAYER_V0(i);

            if (!sub_802C080(p)) {
                s32 res = sub_8020874(s, I(boulder->qWorldX), I(boulder->qWorldY), 0, p, 0, 0);

                if (res) {
                    if (res & 0x10000) {
                        p->qWorldY += Q_8_8(res);
                    } else {
                        p->qWorldX += Q_8_8((s16)res >> 8);
                    }

                    if ((p->charFlags.anim0 == 238) || (p->charFlags.anim0 == 239) || (p->charFlags.anim0 == 244)
                        || (p->charFlags.anim0 == 245)) {
                        Player_8012FE0(p);
                        p->charFlags.anim0 = 24;

                        Player_800DAF4(p);
                    }

                    res = sub_80517FC(I(boulder->qWorldY), I(boulder->qWorldX), 1, 8, NULL, sub_805217C);

                    if (res < 0) {
                        p->qWorldY += Q_8_8((s16)res >> 8);
                    }

                    Player_8014550(p);
                }
            }
        }
    }

    sub_8049CA8();
    sub_804A1E0();
}

void sub_8049CA8(void)
{
    Boulder *boulder = TASK_DATA(gCurTask);

    switch (boulder->unk7A) {
        case 0: {
            sub_8003E28(SE_BOULDER);
            InitBoulderSprite(boulder);
        } break;

        case 1:
        case 2:
        case 3: {
            sub_8049D70();
            sub_8049FD0();
        } break;

        case 4: {
            boulder->qUnk68 = 0;
            boulder->qUnk6C = 0;
            boulder->qUnk70 = 0;
            boulder->unk7B = 0;

            if (boulder->unk7C & 0x20) {
                boulder->unk7A = 5;
            }
        } break;

        case 5: {
            boulder->qWorldX = Q(boulder->worldX);
            boulder->qWorldY = Q(boulder->worldY);
            boulder->qUnk68 = 0;
            boulder->qUnk6C = 0;
            boulder->qUnk70 = 0;
            boulder->unk7A = 0;
            boulder->unk7B = 0;
        } break;
    }

    boulder->qWorldX += boulder->qUnk6C;
    boulder->qWorldY += boulder->qUnk70;
}

// TODO: Fix register fakematch
void sub_8049D70(void)
{
    Boulder *boulder = TASK_DATA(gCurTask);
    u8 r8_0 = boulder->unk7B;
#ifndef NON_MATCHING
    register u32 r8 asm("r1");
#else
    u32 r8;
#endif
    u8 sp08[4];
    s32 sl;
    u32 theta;
    s32 sinVal, cosVal;
    s32 res;

    sp08[0] = r8_0;

    theta = (r8_0 * 4);
    sinVal = (SIN(theta) * 5) >> 4;
    cosVal = (COS(theta) * 5) >> 4;

    r8 = (u8)(r8_0 + 0x20);
    sp08[0] = r8;

    // TODO/BUG: Is it a bug that this value is only used by case 0's comparison?
    sl = 8;

    if (boulder->unk7A == 1) {
        sl = 4;
    }

    switch (sp08[0] >> 6) {
        case 0: {
            res = sub_80517FC(I(boulder->qWorldY + cosVal), I(boulder->qWorldX), 1, +8, sp08, sub_805217C);
            if (res < sl) {
                boulder->qWorldY += Q(res);

                if (!GetBit(sp08[0], 0)) {
                    boulder->unk7B = sp08[0];
                }
            }
        } break;

        case 1: {
            res = sub_80517FC(I(boulder->qWorldX + sinVal), I(boulder->qWorldY + cosVal), 1, -8, sp08, sub_805203C);
            if (res < 4) {
                boulder->qWorldX -= Q(res);

                if (!GetBit(sp08[0], 0)) {
                    boulder->unk7B = sp08[0];
                }
            }

        } break;

        case 2: {
            res = sub_80517FC(I(boulder->qWorldY + cosVal), I(boulder->qWorldX + sinVal), 1, -8, sp08, sub_805217C);
            if (res < 4) {
                boulder->qWorldY -= Q(res);

                if (!GetBit(sp08[0], 0)) {
                    boulder->unk7B = sp08[0];
                }
            }
        } break;

        case 3: {
            res = sub_80517FC(I(boulder->qWorldX + sinVal), I(boulder->qWorldY + cosVal), 1, +8, sp08, sub_805203C);
            if (res < 4) {
                boulder->qWorldX += Q(res);

                if (!GetBit(sp08[0], 0)) {
                    boulder->unk7B = sp08[0];
                }
            }
        } break;
    }

    if (boulder->unk7A == 2) {

        s32 resN = sub_80517FC(I(boulder->qWorldX - cosVal), I(boulder->qWorldY), 1, -8, sp08, sub_805203C);
        s32 resP = sub_80517FC(I(boulder->qWorldX + cosVal), I(boulder->qWorldY), 1, +8, sp08, sub_805203C);

        if (resN < 0 || resP < 0) {
            boulder->unk7A = 4;
            boulder->qUnk68 = 0;
            boulder->qUnk6C = 0;
            boulder->qUnk70 = 0;

            InitDebrisSprites(boulder);
            sub_8003DF0(SE_BOULDER);
        }

        if (res > 16) {
            boulder->unk7A = 3;
        }
    } else if (boulder->unk7A == 3 || boulder->unk7A == 1) {
        if (res <= 0) {
            if (boulder->unk7A == 1) {
                boulder->unk7A = 2;
                boulder->qUnk68 = 0;
                boulder->qUnk6C = 0;
                boulder->qUnk70 = 0;
            } else {
                boulder->unk7A = 4;
                boulder->qUnk68 = 0;
                boulder->qUnk6C = 0;
                boulder->qUnk70 = 0;

                InitDebrisSprites(boulder);
                sub_8003DF0(SE_BOULDER);
            }
        }
    }

    if (!IsWorldPtActive(I(boulder->qWorldX), I(boulder->qWorldY))) {
        boulder->unk7A = 5;
        sub_8003E28(SE_BOULDER);
    }
}

void sub_8049FD0(void)
{
    Boulder *boulder = TASK_DATA(gCurTask);
    s32 r4;

    if (boulder->unk7A == 2) {
        s16 r2 = boulder->unk7B;

        if (r2 != 0 && (r2 <= +64)) {
            boulder->qUnk68 += Q(4. / 256.);
        } else if (r2 >= (u8)-64) {
            boulder->qUnk68 -= Q(4. / 256.);
        }

        if (ABS(boulder->qUnk68) > Q(8)) {
            if (boulder->qUnk68 < 0) {
                boulder->qUnk68 = -Q(8);
            } else {
                boulder->qUnk68 = +Q(8);
            }
        }

        r4 = (s16)boulder->qUnk68;

        boulder->qUnk6C = Q_MUL(COS_24_8(r2 * 4), r4);
        boulder->qUnk70 = Q_MUL(SIN_24_8(r2 * 4), r4);
    } else if (boulder->unk7A == 1 || boulder->unk7A == 3) {
        boulder->qUnk70 += Q(16. / 256.);
    }

    if (boulder->qUnk68 < 0) {
        SPRITE_FLAG_SET(&boulder->s, X_FLIP);
    } else if (boulder->qUnk68 > 0) {
        SPRITE_FLAG_CLEAR(&boulder->s, X_FLIP);
    }
}

void InitBoulderSprite(Boulder *boulder)
{
    Sprite *s = &boulder->s;

    if (!boulder->tiles) {
        boulder->tiles = ALLOC_TILES(ANIM_BOULDER);
    }

    s->tiles = boulder->tiles;
    s->anim = ANIM_BOULDER;
    s->variant = 0;
    s->oamFlags = SPRITE_OAM_ORDER(24);
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);
    UpdateSpriteAnimation(s);
}

extern s8 gUnknown_080D03C8[0x10];

void InitDebrisSprites(Boulder *boulder)
{
    Sprite *s;
    s16 i, j;

    // const s8 arr[4][4] = {{-10, -8, -6, -6}, {10, -2, 6, -4}, {-10, 0, 3, -8}, {-2, 0, -2, -3}};
    s8 arr[4][4];
    memcpy(arr, gUnknown_080D03C8, sizeof(arr));

    s = &boulder->s;
    s->tiles = boulder->tiles;
    s->anim = ANIM_BOULDER;
    s->variant = 1;
    s->oamFlags = SPRITE_OAM_ORDER(8);
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 0);
    UpdateSpriteAnimation(s);

    s = &boulder->s2;
    s->tiles = boulder->tiles + MAX_TILES_VARIANT(ANIM_BOULDER, 1) * TILE_SIZE_4BPP;
    s->anim = ANIM_BOULDER;
    s->variant = 2;
    s->oamFlags = SPRITE_OAM_ORDER(8);
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 0);
    UpdateSpriteAnimation(s);

    boulder->unk7C = 0;

    for (i = 0; i < 4; i++) {
        for (j = 0; j < 4; j++) {
            boulder->unk7D[i][j] = arr[i][j];
        }
    }
}

// (99.90%) https://decomp.me/scratch/8XNhi
NONMATCH("asm/non_matching/game/interactables/boulder__sub_804A1E0.inc", void sub_804A1E0(void))
{
    bool32 isOnScreen = FALSE;
    Boulder *boulder = TASK_DATA(gCurTask);
    Sprite *s = &boulder->s;
    Sprite *s2;
    MapEntity *me = boulder->base.me;
    s16 worldX, worldY;
    u32 sl;
    s16 i;

    if (IsWorldPtActive(boulder->worldX, boulder->worldY) == TRUE) {
        isOnScreen = TRUE;
    }
    // _0804A220

    worldX = I(boulder->qWorldX);
    worldY = I(boulder->qWorldY);

    if (IsWorldPtActive(worldX, worldY) == TRUE) {
        isOnScreen = TRUE;
    }
    // _0804A248

    if (!isOnScreen) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, boulder->base.meX);
        TaskDestroy(gCurTask);
        return;
    }
    // _0804A270

    if (boulder->unk7A == 4) {

        boulder->unk7C += 1;

        sl = ((boulder->unk7C & 0x2) >> 1);

        for (i = 0; i < 2; i++) {
            u8 index = sl + (i << 1);
            boulder->unk7D[index][0] += boulder->unk7D[index][2];
            boulder->unk7D[index][1] += boulder->unk7D[index][3];
            boulder->unk7D[index][3] += 1;
        }

        s->x = (worldX - gCamera.x) + (boulder->unk7D[sl][0] >> 1);
        s->y = (worldY - gCamera.y) + (boulder->unk7D[sl][1] >> 1);
        s->animSpeed = SPRITE_ANIM_SPEED(1.0);
        UpdateSpriteAnimation(s);
        DisplaySprite(s);

        s2 = &boulder->s2;
        s2->x = (worldX - gCamera.x) + (boulder->unk7D[sl + 2][0] >> 1);
        s2->y = (worldY - gCamera.y) + (boulder->unk7D[sl + 2][1] >> 1);

        s2->animSpeed = SPRITE_ANIM_SPEED(1.0);
        UpdateSpriteAnimation(s2);
        DisplaySprite(s2);
    } else if (boulder->unk7A != 5) {
        // _0804A38C
        u8 qAnimSpeed;

        s->x = worldX - gCamera.x;
        s->y = worldY - gCamera.y;

        qAnimSpeed = ABS(boulder->qUnk68 >> 4);
        s->animSpeed = MIN(qAnimSpeed, SPRITE_ANIM_SPEED(4.0));

        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}
END_NONMATCH

void TaskDestructor_Boulder(struct Task *t)
{
    Boulder *boulder = TASK_DATA(t);
    sub_8003E28(SE_BOULDER);
    VramFree(boulder->tiles);
}
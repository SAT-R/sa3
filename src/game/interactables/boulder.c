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
    /* 0x68 */ s32 unk68;
    /* 0x6C */ s32 qUnk6C;
    /* 0x70 */ s32 qUnk70;
    /* 0x74 */ void *tiles;
    /* 0x78 */ s16 unk78;
    /* 0x7A */ u8 unk7A;
    /* 0x7B */ u8 unk7B;
    /* 0x7C */ u8 unk7C;
    /* 0x7D */ u8 filler7C[0x13];
} Boulder;

void Task_Boulder(void);
void sub_8049CA8(void);
void sub_8049D70(void);
void sub_8049FD0(void);
void sub_804A0B0(Boulder *);
void sub_804A104(Boulder *);
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
    boulder->base.spriteX = me->x;
    boulder->base.id = id;

    boulder->worldX = TO_WORLD_POS(me->x, regionX);
    boulder->worldY = TO_WORLD_POS(me->y, regionY);
    boulder->qWorldX = Q(boulder->worldX);
    boulder->qWorldY = Q(boulder->worldY);
    boulder->unk68 = 0;
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

    sub_804A0B0(boulder);
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
        boulder->unk68 = 0;
        boulder->qUnk6C = 0;
        boulder->qUnk70 = 0;
        boulder->unk7A = 1;

        s = &boulder->s;

        for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
            p = (i == 0) ? &gPlayers[gStageData.charId] : &gPlayers[p->charFlags.partnerIndex];

            res = sub_8020874(s, I(boulder->qWorldX), I(boulder->qWorldY), 0, p, 0, 0);
            if (res) {
                if (!(p->moveState & (MOVESTATE_1000000))) {
                    sub_8008E38(p);
                }
            }
        }
    }

    if (boulder->unk7A == 1 || boulder->unk7A == 2 || boulder->unk7A == 3) {
        s = &boulder->s;

        for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
            p = (i == 0) ? &gPlayers[gStageData.charId] : &gPlayers[p->charFlags.partnerIndex];

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

                    sub_8014550(p);
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
            sub_804A0B0(boulder);
        } break;

        case 1:
        case 2:
        case 3: {
            sub_8049D70();
            sub_8049FD0();
        } break;

        case 4: {
            boulder->unk68 = 0;
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
            boulder->unk68 = 0;
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
            boulder->unk68 = 0;
            boulder->qUnk6C = 0;
            boulder->qUnk70 = 0;

            sub_804A104(boulder);
            sub_8003DF0(SE_BOULDER);
        }

        if (res > 16) {
            boulder->unk7A = 3;
        }
    } else if (boulder->unk7A == 3 || boulder->unk7A == 1) {
        if (res <= 0) {
            if (boulder->unk7A == 1) {
                boulder->unk7A = 2;
                boulder->unk68 = 0;
                boulder->qUnk6C = 0;
                boulder->qUnk70 = 0;
            } else {
                boulder->unk7A = 4;
                boulder->unk68 = 0;
                boulder->qUnk6C = 0;
                boulder->qUnk70 = 0;

                sub_804A104(boulder);
                sub_8003DF0(SE_BOULDER);
            }
        }
    }

    if (!IsPointInScreenRect(I(boulder->qWorldX), I(boulder->qWorldY))) {
        boulder->unk7A = 5;
        sub_8003E28(SE_BOULDER);
    }
}

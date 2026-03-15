#include "global.h"
#include "core.h"
#include "trig.h"
#include "malloc_vram.h"
#include "module_unclear.h"
#include "lib/m4a/m4a.h"
#include "game/camera.h"
#include "game/enemy_unknown.h"
#include "game/player.h" // PlayerCallback
#include "game/player_callbacks.h"
#include "game/stage.h"
#include "game/interactables/bonus_game_enemies.h"
#include "constants/animations.h"
#include "constants/move_states.h" // MOVESTATE_1000000
#include "constants/songs.h"

typedef struct EUC_Strc14 {
    /* 0x00 */ u8 unk0;
    /* 0x02 */ u16 regionX;
    /* 0x04 */ u16 regionY;
    /* 0x08 */ s32 qWorldX;
    /* 0x0C */ s32 qWorldY;
    /* 0x10 */ Player *p;
} EUC_Strc14;

typedef struct EUC_Strc40 {
    /* 0x00 */ u8 filler0[0x4];
    /* 0x04 */ u8 unk4;
    /* 0x04 */ u8 unk5;
    /* 0x06 */ u16 regionX;
    /* 0x06 */ u16 regionY;
    /* 0x0A */ s16 unkA;
    /* 0x0C */ s32 qWorldX;
    /* 0x10 */ s32 qWorldY;
    /* 0x14 */ Player *p;
    /* 0x18 */ Sprite s;
} EUC_Strc40;

void Task_14_805C03C(void);
void sub_805C138(EUC_Strc40 *arg0);
void Task_40_805C198(void);
void TaskDestructor_805C03C(struct Task *t);
bool32 sub_805CF90(s32 worldX, s32 worldY, s32 spriteX, s32 spriteY);
void sub_805CB70(Player *p, Sprite *s, u32 collision, s32 x, UNUSED s32 y, s8 dir);
void sub_805CC5C(Player *p, Sprite *s, s32 collision, s32 x, u32 y, s8 dir);
void sub_805CFE8(Player *p, Sprite *s, s32 collision, s32 x, u32 y, s8 dir);
AnimCmdResult sub_805D058(EUC_Strc40 *strc40);
void TaskDestructor_805D09C(struct Task *t);
extern void sub_8027578(MapEntity *me);
extern void sub_8004D68(s32 x, s32 y);
extern void sub_80044CC(Player *p);
Player gUnknown_03001DA0[MULTI_SIO_PLAYERS_MAX];

static inline void sub_805CF38__inline(s32 qWorldX, s32 qWorldY, u16 regionX, u16 regionY, Player *p)
{
    if (p != 0) {
        EUC_Strc14 *strc14 = TASK_DATA(TaskCreate(Task_14_805C03C, sizeof(EUC_Strc14), 0x4040U, 0U, TaskDestructor_805C03C));
        strc14->unk0 = 0;
        strc14->p = p;
        strc14->qWorldX = qWorldX;
        strc14->qWorldY = qWorldY;
        strc14->regionX = regionX;
        strc14->regionY = regionY;
    }
}

static inline void sub_805CEBC__inline(s32 qWorldX, s32 qWorldY, u16 regionX, u16 regionY, u8 arg4, Player *p)
{
    EUC_Strc40 *strc = TASK_DATA(TaskCreate(Task_40_805C198, sizeof(EUC_Strc40), 0x4040U, 0U, TaskDestructor_805D09C));
    strc->unkA = 60;
    strc->qWorldX = qWorldX;
    strc->qWorldY = qWorldY;
    strc->regionX = regionX;
    strc->regionY = regionY;
    strc->p = p;
    strc->unk4 = arg4;
    strc->unk5 = 0;
    sub_805C138(strc);
    if (arg4 == 0) {
        m4aSongNumStart(SE_POOF);
    }
}

static inline Player *GetPlayer__inline(u8 pid)
{
    Player *p = NULL;

    if (pid == PLAYER_1) {
        p = GET_SP_PLAYER_V0(pid);
    } else {
#if BUG_FIX
        // TODO: Not sure whether this is the correct assignment to fix this NULLPTR
        p = GET_SP_PLAYER_V0(PLAYER_1);
#endif
        if (p->charFlags.someIndex == 1) {
            p = &gPlayers[p->charFlags.partnerIndex];
        }
    }
    return p;
}

// (98.18%) https://decomp.me/scratch/8XN8s
NONMATCH("asm/non_matching/game/enemies/euc__Task_14_805C03C.inc", void Task_14_805C03C(void))
{
    s32 temp_r0_4;
    s32 temp_r5;
    s32 var_r2_2;
    u8 var_r0;
    s16 mask;
    Player *p;
    u8 var_ip = 0;
    u8 i;
    Strc3001CFC *strc3001CFC = TASK_DATA(gTask_03001CFC);
    Strc3001CFC_sub *strcSub = &strc3001CFC->unk28[0];
    EUC_Strc14 *strc14 = TASK_DATA(gCurTask);
    s32 someNum = 0x478;

    for (i = 0; i < 32; i++, strcSub++) {
        if (strcSub->unkC != 0) {
            if (i == 0x1F) {
                var_ip = 0;
                break;
            }
        } else {
            var_ip = i;
            break;
        }
    }
    strc3001CFC->unk2B0 = ((strc14->p->moveState >> 16) & 0x1);
    p = strc14->p;

    if (p->layer > 1U) {
        strcSub->unkE = 1;
    } else {
        strcSub->unkE = p->layer;
    }

    strcSub->unkC = 0xB4U;
    strcSub->unk0 = Q(TO_WORLD_POS_RAW(I(strc14->qWorldX), strc14->regionX));
    strcSub->unk4 = Q(TO_WORLD_POS_RAW(I(strc14->qWorldY), strc14->regionY));

    if (someNum >= 0) {
        temp_r0_4 = I(someNum);
        if (temp_r0_4 > 5) {
            var_r2_2 = (-temp_r0_4) + 9;
        } else {
            var_r2_2 = temp_r0_4;
        }
        temp_r5 = COS((0xFF & someNum) * 4) >> var_r2_2;
        temp_r5 = temp_r5 - (temp_r5 >> 1);
    }

    strcSub->unk8 = 0;
    strcSub->unkA = temp_r5;
    if (strc14->p->moveState & 0x10000) {
        strcSub->unkA = -strcSub->unkA;
    }

    strcSub->unk10 = var_ip % 4u;
    TaskDestroy(gCurTask);
}
END_NONMATCH

void sub_805C138(EUC_Strc40 *arg0)
{
    u8 *tiles = ALLOC_TILES(ANIM_ITEM_BOX_CLOUD_EFFECT);
    Sprite *s = &arg0->s;
    s->tiles = tiles;
    s->anim = ANIM_ITEM_BOX_CLOUD_EFFECT;
    s->variant = 0;
    s->prevVariant = -1;
    s->x = I(arg0->qWorldX) - gCamera.x;
    s->y = I(arg0->qWorldY) - gCamera.y;
    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->frameFlags = 0;
    s->hitboxes[0].index = -1;
    UpdateSpriteAnimation(s);
}

// (95.47%) https://decomp.me/scratch/TFAFN
NONMATCH("asm/non_matching/game/enemies/euc__Task_40_805C198.inc", void Task_40_805C198(void))
{
    EUC_Strc40 *strc40 = TASK_DATA(gCurTask);
    s16 worldX = I(strc40->qWorldX);
    s16 worldY = I(strc40->qWorldY);
    s16 qWorldX = TO_WORLD_POS_RAW(worldX, strc40->regionX);
    s16 qWorldY = TO_WORLD_POS_RAW(worldY, strc40->regionY);

    if ((gStageData.act != 7) && (gStageData.act != 9) && (strc40->unk4 == 0 && strc40->unk5 == 0)) {
        u16 regionX = *((vu16 *)&strc40->regionX);
        u16 regionY = *((vu16 *)&strc40->regionY);

        if (strc40->p != NULL) {
            sub_805CF38__inline(strc40->qWorldX, strc40->qWorldY, regionX, regionY, strc40->p);
        }

        strc40->unk5 = 1;
    } else if ((gStageData.act == 9) && (strc40->unk4 == 0 && strc40->unk5 == 0)) {
        CreateBonusFlower(qWorldX, qWorldY, strc40->p->charFlags.character);
        strc40->unk5 = 1;
    }

    if (sub_805D058(strc40) == ACMD_RESULT__ENDED) {
        TaskDestroy(gCurTask);
    }
}
END_NONMATCH

// (78.64%) https://decomp.me/scratch/gRwMF
NONMATCH("asm/non_matching/game/enemies/euc__sub_805C280.inc", bool32 sub_805C280(EnemyUnknownStruc0 *arg0))
{
    s32 zero = 0;
    MapEntity *temp_r1_2;
    Sprite *s;
    Sprite *temp_r3_3;
    s32 temp_r1;
    s32 temp_r3;
    s32 temp_r4_2;
    s16 qWorldX, qWorldY;
    s32 temp_r5_2;
    s32 temp_r5_4;
    s32 temp_r7;
    s32 temp_sb;
    s32 temp_sb_2;
    Player *temp_r7_2;
    Player *temp_sb_3;
    s8 temp_r6;
    u16 temp_r0_4;
    u16 temp_r4_3;
    u16 temp_r4_5;
    u16 temp_r5_3;
    u16 temp_r5_5;
    u16 temp_sb_4;
    u16 temp_sl_2;
    EUC_Strc40 *temp_r0;
    void *temp_r4_4;
    s16 spawnX = TO_WORLD_POS_RAW(I(arg0->posX), arg0->regionX);
    s16 spawnY = TO_WORLD_POS_RAW(I(arg0->posY), arg0->regionY);
    s8 meX;

    s = arg0->spr;
    qWorldX = (gCamera.x + s->x);
    qWorldY = (gCamera.y + s->y);
    if (arg0->unk4 != 0) {
        if (gStageData.act != 9) {
            sub_805CEBC__inline(Q(qWorldX), Q(qWorldY), zero, zero, 0, arg0->p);
        } else {
            qWorldX = Q(s->x + gCamera.x);
            qWorldY = Q(s->y + gCamera.y);
            sub_805CEBC__inline(qWorldX, qWorldY, zero, zero, 0, arg0->p);
        }
        if (gStageData.gameMode > 4U) {
            sub_8027578(arg0->me);
        }

        return 1U;
    }

    meX = arg0->me->x;
    if ((gStageData.gameMode > 4U) && (meX >= -6 && meX <= -3)) {
        if (gStageData.act != 9) {
            temp_r4_3 = arg0->regionX;
            temp_r5_3 = arg0->regionY;
            temp_sb_3 = arg0->p;
            sub_805CEBC__inline(arg0->posX, arg0->posY, temp_r4_3, temp_r5_3, 0, temp_sb_3);
            temp_sb_4 = arg0->regionX;
            temp_sl_2 = arg0->regionY;
            temp_r4_4 = &gUnknown_03001DA0[meX];
            sub_805CF38__inline(arg0->posX, arg0->posY, temp_sb_4, temp_sl_2, temp_r4_4);
        } else {
            sub_805CEBC__inline(arg0->posX, arg0->posY, arg0->regionX, arg0->regionY, 0, arg0->p);
        }

        return 1U;
    } else {
        if (!sub_805CF90(spawnX, spawnY, arg0->spr->x, arg0->spr->y)) {
            if (arg0->me != NULL) {
                SET_MAP_ENTITY_NOT_INITIALIZED(arg0->me, arg0->meX);
            }

            return 1U;
        }
    }

    return 0;
}
END_NONMATCH

// (88.72%) https://decomp.me/scratch/BywUv
NONMATCH("asm/non_matching/game/enemies/euc__sub_805C510.inc", bool32 sub_805C510(Sprite *s))
{
    s16 temp_r2_5;
    s16 temp_r4;
    s16 inSpriteY;
    s16 cheeseSpriteY;
    u16 absWidth0;
    u16 absHeight0;
    u16 absWidth1;
    u16 absHeight1;
    Cheese *cheese;
    bool32 result;
    Sprite2 *sprCheese;

    cheese = TASK_DATA(gStageData.taskCheese);
    sprCheese = &cheese->s;
    result = 0;
    if (!(CMS_2 & cheese->moveState)) {
        return FALSE;
    }

    absWidth0 = ABS(s->hitboxes[0].b.left - s->hitboxes[0].b.right);
    absHeight0 = ABS(s->hitboxes[0].b.top - s->hitboxes[0].b.bottom);
    absWidth1 = ABS(sprCheese->hitboxes[1].b.left - sprCheese->hitboxes[1].b.right);
    absHeight1 = ABS(sprCheese->hitboxes[1].b.top - sprCheese->hitboxes[1].b.bottom);

    if ((absWidth0 != 0) || (absHeight0 != 0)) {
        temp_r4 = s->x;
        temp_r2_5 = sprCheese->x;
        if (temp_r4 <= temp_r2_5) {
            if ((temp_r4 + absWidth0) < temp_r2_5) {
                if (temp_r4 < temp_r2_5) {
                    return result;
                }
            } else {
                goto block_16;
            }
        }
        {
        block_15:
            if ((sprCheese->x + absWidth1) >= s->x) {
            block_16:
                inSpriteY = s->y;
                cheeseSpriteY = sprCheese->y;
                if (inSpriteY <= cheeseSpriteY) {
                    if ((inSpriteY + absHeight0) < cheeseSpriteY) {
                        if (inSpriteY >= cheeseSpriteY) {
                            goto block_19;
                        }
                    } else {
                        goto block_20;
                    }
                } else {
                block_19:
                    if ((sprCheese->y + absHeight1) >= s->y) {
                    block_20:
                        result = 1;
                    }
                }
            }
        }
    }
    return result;
}
END_NONMATCH

// (97.62%) https://decomp.me/scratch/xn8lP
NONMATCH("asm/non_matching/game/enemies/euc__sub_805C63C.inc", u32 sub_805C63C(EnemyUnknownStruc0 *arg0))
{
    Sprite *s;
    Task *temp_r0;
    s32 worldY;
    s32 worldX;
    s32 qWorldY;
    s32 qWorldX;
    u8 i;
    Player *p = NULL;
    u32 sp8 = 0;
    s32 posX = I(arg0->posX);
    s32 posY = I(arg0->posY);

    worldX = TO_WORLD_POS_RAW(posX, arg0->regionX);
    worldY = TO_WORLD_POS_RAW(posY, arg0->regionY);
    s = arg0->spr;
    qWorldX = Q(worldX);
    qWorldY = Q(worldY);
    if (s->anim == 1201) {
        qWorldY -= Q(16);
        qWorldX -= Q(16);
    }
    sub_8004D68(qWorldX, qWorldY);

#ifndef NON_MATCHING
    asm("" ::"r"(s->anim));
#endif

    i = 0;
    do {
        p = GET_SP_PLAYER_V0(i);

        if (sub_802C080(p) == 0) {
            if (gStageData.taskCheese != NULL) {
                Cheese *cheese = TASK_DATA(gStageData.taskCheese);
                if ((cheese->player == p) && (sub_805C510(s) == 1)) {
                    sp8 = 1;
                }
            }
            if (sub_8020700(s, worldX, worldY, 1, p, 0)) {
                if (p->framesInvincible) {
                    if (sub_8020700(s, worldX, worldY, 0, p, 0)) {
                        if (i == 0) {
                            arg0->playerIndex = gStageData.playerIndex;
                        } else {
                            arg0->playerIndex = p->charFlags.partnerIndex;
                        }
                        sp8 = 1;
                    }
                } else {
                    sub_8020CE0(s, worldX, worldY, 0, p);
                    sub_8020CE0(s, worldX, worldY, 1, p);
                }
            } else {
                if (sub_8020700(s, worldX, worldY, 0, p, 1)) {
                    if (I(p->qWorldX) < worldX) {
                        arg0->dirX = +1;
#ifndef NON_MATCHING
                        asm("");
#endif
                    } else {
                        arg0->dirX = -1;
                    }
                    if (I(p->qWorldY) < worldY) {
                        arg0->dirY = +1;
                    } else {
                        arg0->dirY = -1;
                    }

                    sub_80044CC(p);
                    if (i == 0) {
                        arg0->playerIndex = gStageData.playerIndex;
                    } else {
                        arg0->playerIndex = p->charFlags.partnerIndex;
                    }

                    sp8 = 1;
                } else if (sub_8020700(s, worldX, worldY, 0, p, 0)) {
                    if (p->framesInvincible == 0) {
                        sub_8020CE0(s, worldX, worldY, 0, p);
                        sub_8020CE0(s, worldX, worldY, 1, p);
                    } else {
                        if (I(p->qWorldX) < worldX) {
                            arg0->dirX = +1;
#ifndef NON_MATCHING
                            asm("");
#endif
                        } else {
                            arg0->dirX = -1;
                        }

                        if (I(p->qWorldY) < worldY) {
                            arg0->dirY = +1;
                        } else {
                            arg0->dirY = -1;
                        }
                        sub_80044CC(p);
                        if (i == 0) {
                            arg0->playerIndex = gStageData.playerIndex;
                        } else {
                            arg0->playerIndex = p->charFlags.partnerIndex;
                        }
                        sp8 = 1;
                    }
                } else if ((sub_8020700(s, worldX, worldY, 1, p, 1)) && (p->framesInvincible == 0)) {
                    sub_8020CE0(s, worldX, worldY, 0, p);
                    sub_8020CE0(s, worldX, worldY, 1, p);
                }
            }
        }
    } while (++i < NUM_SINGLE_PLAYER_CHARS);
    arg0->p = p;

    return sp8;
}
END_NONMATCH

// (99.91%) https://decomp.me/scratch/07C6C
NONMATCH("asm/non_matching/game/enemies/euc__sub_805C890.inc", bool32 sub_805C890(EnemyUnknownStruc0 *param0, s8 param1))
{
    bool32 result;
    u8 i;
    Sprite *s;
    u32 temp_r0_2;
    u32 temp_r4;
    s32 worldX, worldY;

    Player *p = NULL;
    result = FALSE;
    worldX = I(param0->posX);
    worldY = I(param0->posY);
    worldX = TO_WORLD_POS_RAW(worldX, param0->regionX);
    worldY = TO_WORLD_POS_RAW(worldY, param0->regionY);
    s = param0->spr;
    sub_8004D68(Q(worldX), Q(worldY));
    i = 0;
    do {
        p = GET_SP_PLAYER_V0(i);
        if (gStageData.taskCheese != NULL) {
            Cheese *cheese = TASK_DATA(gStageData.taskCheese);
            if ((cheese->player == p) && (sub_805C510(s) == 1)) {
                result = TRUE;
            }
        }
        if (!(p->moveState & MOVESTATE_100)) {
            if (p->charFlags.someIndex == 1 || p->charFlags.someIndex == 2 || p->charFlags.someIndex == 4) {
                temp_r0_2 = sub_8020700(s, worldX, worldY, 1, p, 1);
                if (temp_r0_2 != 0) {
                    if (!(MOVESTATE_1000000 & p->moveState)) {
                        if (((p->moveState & MOVESTATE_2) && (p->framesInvincible == 0) && (p->framesInvulnerable == 0))) {
                            temp_r4 = sub_8020874(s, worldX, worldY, 1, p, 1, 0);
                            if (p->moveState & MOVESTATE_IN_AIR) {
                                sub_805CFE8(p, s, temp_r4, worldX, worldY, param1);
                                sub_805CC5C(p, s, temp_r4, worldX, worldY, param1);
                                p->charFlags.state1 = 0;
                                SetPlayerCallback(p, Player_800DB30);
                            } else {
                                sub_805CB70(p, s, temp_r4, worldX, worldY, param1);
                                Player_800891C(p);
                            }

                            if (p->moveState & MOVESTATE_FACING_LEFT) {
                                p->moveState &= ~MOVESTATE_FACING_LEFT;
                            } else {
                                p->moveState |= MOVESTATE_FACING_LEFT;
                            }
                        } else {
                            if (p->spriteInfoBody->s.hitboxes[1].index != -1) {
                                goto lbl0;
                            } else {
                                continue;
                            }
                        lbl0:
                            goto lbl;
                        }
                    }
                } else if (sub_8020700(s, worldX, worldY, 1, p, 0) != 0) {
                    if (!(p->moveState & MOVESTATE_1000000) && (p->framesInvulnerable == 0)) {
                        if (p->framesInvincible == 0) {
                            Player *players;
                            Player *innerPartner;
                            u32 *moveState;
                            sub_8020CE0(s, worldX, worldY, 0, p);
                            sub_8020CE0(s, worldX, worldY, 1, p);
                            players = &gPlayers[PLAYER_1];
                            moveState = &players[p->charFlags.partnerIndex].moveState;
#ifndef NON_MATCHING
                            asm("" ::"r"(moveState));
#endif
                            if (*moveState & MOVESTATE_1000000) {
                                innerPartner = GET_SP_PLAYER_V1(PLAYER_2);
                                sub_8020CE0(s, worldX, worldY, 0, innerPartner);
                                innerPartner = GET_SP_PLAYER_V1(PLAYER_2);
                                sub_8020CE0(s, worldX, worldY, 1, innerPartner);
                            }
                        } else {
                        lbl:
                            sub_80044CC(p);
                            result = TRUE;
                        }
                    }
                } else if (sub_8020700(s, worldX, worldY, 0, p, 1) != 0) {
                    if (!(p->moveState & MOVESTATE_1000000)) {
                        if (p->moveState & MOVESTATE_800000) {
                            sub_8016F28(p);
                        }
                        sub_80044CC(p);
                        result = TRUE;
                    }
                }
            }
        }
    } while (++i < NUM_SINGLE_PLAYER_CHARS);

    param0->p = p;

    return result;
}
END_NONMATCH

void sub_805CB70(Player *p, Sprite *s, u32 collision, s32 x, UNUSED s32 y, s8 dir)
{
    if (0x30000 & collision) {
        p->qWorldY += Q_8_8(collision);
    } else if (0xC0000 & collision) {
        if (dir < 0) {
            if (p->qWorldX < Q(HB_LEFT(x, s->hitboxes[1].b))) {
                p->qWorldX = Q(x - 16);
            } else if (p->qWorldX > Q(x + s->hitboxes[1].b.right)) {
                p->qWorldX = Q(x + 16);
            }
        } else if (p->qWorldX < Q(HB_LEFT(x, s->hitboxes[1].b))) {
            p->qWorldX = Q(x - 16);
        } else if (p->qWorldX > Q(x + s->hitboxes[1].b.right)) {
            p->qWorldX = Q(x + 16);
        }
    }

    if (dir < 0) {
        if (ABS(p->qSpeedAirX) < Q(2)) {
            if (p->qSpeedAirX > 0) {
                p->qSpeedAirX += Q(2);
            } else {
                p->qSpeedAirX -= Q(2);
            }
        }
    } else {
        if (ABS(p->qSpeedAirX) < Q(2)) {
            if (p->qSpeedAirX >= 0) {
                p->qSpeedAirX += Q(2);
            } else {
                p->qSpeedAirX -= Q(2);
            }
        }
    }

    p->qSpeedGround = p->qSpeedAirX;
    p->qSpeedGround *= -1;
}

void sub_805CC5C(Player *p, Sprite *s, s32 arg2, s32 x, u32 y, s8 dir)
{
    if (((0x80000 & arg2) && (p->qSpeedAirX < 0)) || ((0x40000 & arg2) && (p->qSpeedAirY > 0))) {
        p->qWorldY = Q(y - 48);
        p->qSpeedAirY = -Q(3);
        if (dir < 0) {
            if (p->qWorldX < Q(x + s->hitboxes[1].b.left)) {
                p->qWorldX = Q(x - 16);
            } else if (p->qWorldX > Q(x + s->hitboxes[1].b.right)) {
                p->qWorldX = Q(x + 16);
            }
        } else if (p->qWorldX < Q(x + s->hitboxes[1].b.left)) {
            p->qWorldX = Q(x - 16);
        } else if (p->qWorldX > Q(x + s->hitboxes[1].b.right)) {
            p->qWorldX = Q(x + 16);
        }

        if (((dir < 0) && (p->qSpeedAirX < 0)) || ((dir > 0) && (p->qSpeedAirX > 0))) {
            if (dir < 0) {
                p->qSpeedAirX = +Q(3);
            } else {
                p->qSpeedAirX = -Q(3);
            }
        }
    }
}

Player *EUC_GetPlayer(u8 pid)
{
    Player *p = NULL;

    if (pid == PLAYER_1) {
        p = GET_SP_PLAYER_V0(pid);
    } else {
#if BUG_FIX
        // TODO: Not sure whether this is the correct assignment to fix this NULLPTR
        p = GET_SP_PLAYER_V0(PLAYER_1);
#endif
        if (p->charFlags.someIndex == 1) {
            p = &gPlayers[p->charFlags.partnerIndex];
        }
    }
    return p;
}

void sub_805CD70(Vec2_32 *qVal, Vec2_32 *param1, u16 region[2], s8 *param3)
{
    s8 temp_r7 = 0;

    s32 worldX = I(qVal->x);
    s32 worldY = I(qVal->y);

    if (region != NULL) {
        worldX += TO_WORLD_POS_RAW(0, region[0]);
        worldY += TO_WORLD_POS_RAW(0, region[1]);
    }

    temp_r7 = sub_8052394(worldY, worldX, 1, 8, NULL, sub_805217C);
    if ((*param3 != 1) || (temp_r7 != -1) || ((s8)sub_8052394(worldY - 1, worldX, 1, 8, NULL, sub_805217C) != 1)) {
        *param3 = temp_r7;
        qVal->y += Q(temp_r7);

        if (param1 != NULL) {
            param1->y += Q(temp_r7);
        }
    }
}

void sub_805CE14(Vec2_32 *qVal, Vec2_32 *param1, u16 region[2], s8 *param3)
{
    s8 temp_r7 = 0;

    s32 worldX = I(qVal->x);
    s32 worldY = I(qVal->y);

    if (region != NULL) {
        worldX += TO_WORLD_POS_RAW(0, region[0]);
        worldY += TO_WORLD_POS_RAW(0, region[1]);
    }

    temp_r7 = sub_8052394(worldY, worldX, 1, -8, NULL, sub_805217C);
    if ((*param3 != 1) || (temp_r7 != -1) || ((s8)sub_8052394(worldY + 1, worldX, 1, -8, NULL, sub_805217C) != 1)) {
        *param3 = temp_r7;
        qVal->y -= Q(temp_r7);

        if (param1 != NULL) {
            param1->y -= Q(temp_r7);
        }
    }
}

void sub_805CEBC(s32 qWorldX, s32 qWorldY, u16 regionX, u16 regionY, u8 arg4, Player *p)
{
    EUC_Strc40 *strc = TASK_DATA(TaskCreate(Task_40_805C198, sizeof(EUC_Strc40), 0x4040U, 0U, TaskDestructor_805D09C));
    strc->unkA = 60;
    strc->qWorldX = qWorldX;
    strc->qWorldY = qWorldY;
    strc->regionX = regionX;
    strc->regionY = regionY;
    strc->p = p;
    strc->unk4 = arg4;
    strc->unk5 = 0;
    sub_805C138(strc);
    if (arg4 == 0) {
        m4aSongNumStart(SE_POOF);
    }
}

void sub_805CF38(s32 qWorldX, s32 qWorldY, u16 regionX, u16 regionY, Player *p)
{
    if (p != 0) {
        EUC_Strc14 *strc14 = TASK_DATA(TaskCreate(Task_14_805C03C, sizeof(EUC_Strc14), 0x4040U, 0U, TaskDestructor_805C03C));
        strc14->unk0 = 0;
        strc14->p = p;
        strc14->qWorldX = qWorldX;
        strc14->qWorldY = qWorldY;
        strc14->regionX = regionX;
        strc14->regionY = regionY;
    }
}

void TaskDestructor_805C03C(Task *arg0) { }

bool32 sub_805CF90(s32 worldX, s32 worldY, s32 spriteX, s32 spriteY)
{
    worldX -= gCamera.x;
    worldY -= gCamera.y;

    // TODO: Cam-range macro
    if ((((u32)(worldX + (CAM_REGION_WIDTH / 2)) > (DISPLAY_WIDTH + 256)) || ((s32)(worldY + (CAM_REGION_WIDTH / 2)) < 0)
         || (worldY > (DISPLAY_HEIGHT + 128)))
        && (((u32)(spriteX + (CAM_REGION_WIDTH / 2)) > (DISPLAY_WIDTH + 256)) || ((s32)(spriteY + (CAM_REGION_WIDTH / 2)) < 0)
            || ((s32)spriteY > (DISPLAY_HEIGHT + 128)))) {
        return FALSE;
    }
    return TRUE;
}

void sub_805CFE8(Player *p, Sprite *s, s32 collision, s32 x, u32 y, s8 dir)
{
    if (((0x10000 & collision) && (p->qSpeedAirY < 0)) || ((0x20000 & collision) && (p->qSpeedAirY > 0))) {
        p->qWorldY = Q(y - 48);
        p->qSpeedAirY = -Q(3);

        if (((dir < 0) && (p->qSpeedAirX < 0)) || ((dir > 0) && (p->qSpeedAirX > 0))) {
            if (dir < 0) {
                p->qSpeedAirX = -Q(3);
            } else {
                p->qSpeedAirX = +Q(3);
            }
        }
    }
}

AnimCmdResult sub_805D058(EUC_Strc40 *strc40)
{
    Sprite *s;
    s32 acmdRes;

    s = &strc40->s;
    s->x = TO_WORLD_POS_RAW(I(strc40->qWorldX), strc40->regionX) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(strc40->qWorldY), strc40->regionY) - gCamera.y;
    acmdRes = UpdateSpriteAnimation(s);
    DisplaySprite(s);
    return acmdRes;
}

void TaskDestructor_805D09C(Task *t)
{
    EUC_Strc40 *strc = TASK_DATA(t);
    VramFree(strc->s.tiles);
}

#if 0
void CreateBonusFlower(s16 worldX, s16 worldY, s32 UNUSED character);                 /* extern */
? sub_80044CC(Player *);                            /* extern */
? sub_8004D68(s32, s32);                            /* extern */
? sub_8027578(MapEntity *);                         /* extern */
void TaskDestructor_805C03C(Task *);                /* static */
void TaskDestructor_805D09C(Task *);                /* static */
void Task_14_805C03C();                                /* static */
void sub_805C198();                                 /* static */
void sub_805CB70(Player *arg0, Sprite *arg1, u32 arg2, s32 arg3, s32 arg5, s32); /* static */
void sub_805CC5C(Player *arg0, Sprite *arg1, u32 arg2, s32 arg3, s32 arg4, s32 arg5); /* static */
s32 sub_805CF90(s16 arg0, s16 arg1, s16 arg2, s16 arg3); /* static */
void sub_805CFE8(Player *arg0, Sprite *arg2, u32 arg4, s32 arg5, s32, s32); /* static */
s32 sub_805D058(u16 arg0);                          /* static */
extern ? gUnknown_03001DA0;
#endif

#include "global.h"
#include "core.h"
#include "game/player.h" // PlayerCallback

typedef struct EUC_Strc14 {
    /* 0x00 */ u8 unk0;
    /* 0x00 */ u8 filler1[0xF];
    /* 0x10 */ PlayerCallback callback;
} EUC_Strc14;

typedef struct EUC_Strc40 {
    /* 0x00 */ u8 filler0[0x14];
    /* 0x14 */ PlayerCallback callback;
    /* 0x18 */ Sprite s;
} EUC_Strc40;

#if 0
void Task_14_805C03C(void) {
    s32 temp_r0_4;
    s32 temp_r5;
    s32 var_r2_2;
    u16 temp_r0_2;
    u32 var_ip;
    u8 var_r2;
    u8 var_r0;
    void *temp_r0_3;
    Strc3001CFC_sub *var_r3;
    s16 var_r5 = 0;
    Strc3001CFC *temp_r0 = TASK_DATA(gTask_03001CFC);

    temp_r0_2 = gCurTask->data;
    var_ip = 0;
    for(var_r2 = 0; var_r2 < 32; var_r2++)
    {
        var_r3 = &temp_r0->unk28[var_r2];
        
        if (var_r3->unkC != 0) {
            if (var_r2 == 0x1F) {
                var_r2 = 0;
            } else {
                var_r2++;
                var_r3 += 0x14;
            }
        }        
    }
    temp_r0->unk2B0 = (s8) (temp_r0_2->unk10->unk6 & 1);
    temp_r0_3 = temp_r0_2->unk10;
    if ((u32) temp_r0_3->unk27 > 1U) {
        var_r3->unkE = 1;
    } else {
        var_r3->unkE = temp_r0_3->unk27;
    }
    var_r3->unkC = 0xB4U;
    var_r3->unk0 = Q(I(temp_r0_2->unk8) + Q(temp_r0_2->unk2));
    var_r3->unk4 = Q(I(temp_r0_2->unkC) + Q(temp_r0_2->unk4));
    if (0x478 >= 0) {
        temp_r0_4 = 0x478 >> 8;
        if (temp_r0_4 > 5) {
            var_r2_2 = (0 - temp_r0_4) + 9;
        } else {
            var_r2_2 = temp_r0_4;
        }
        temp_r5 = (s16) *(((0xFF & 0x478) * 8) + 0x200 + gSineTable) >> var_r2_2;
        var_r5 = temp_r5 - (temp_r5 >> 1);
    }
    var_r3->unk8 = 0;
    var_r3->unkA = var_r5;
    if (temp_r0_2->unk10->unk4 & 0x10000) {
        var_r3->unkA = (s16) (0 - var_r5);
    }
    var_r3->unk10 = (s16) (var_r2 & 3);
    TaskDestroy(gCurTask);
}

void sub_805C138(EUC_Strc40 *arg0) {
    Sprite *temp_r0;

    temp_r0 = arg0 + 0x18;
    arg0->unk18 = VramMalloc(0x10U);
    temp_r0->anim = 0x53A;
    temp_r0->variant = 0;
    temp_r0->prevVariant = 0xFF;
    temp_r0->x = ((s32) arg0->unkC >> 8) - gCamera.x;
    temp_r0->y = ((s32) arg0->unk10 >> 8) - gCamera.y;
    temp_r0->oamFlags = 0x480;
    temp_r0->animCursor = 0;
    temp_r0->qAnimDelay = 0;
    temp_r0->animSpeed = 0x10;
    temp_r0->palId = 0;
    temp_r0->frameFlags = 0;
    temp_r0->hitboxes[0].index = -1;
    UpdateSpriteAnimation(temp_r0);
}

void sub_805C198(void) {
    s32 temp_r0;
    s32 temp_r1_2;
    s32 temp_sb;
    s32 temp_sl;
    u16 temp_r0_2;
    u16 temp_r1;
    u16 temp_r6;
    u16 temp_r7;
    u16 temp_r8;
    void *temp_r5;

    temp_r1 = gCurTask->data;
    temp_r0 = temp_r1->unkC;
    temp_sl = temp_r0;
    temp_r1_2 = temp_r1->unk10;
    temp_sb = temp_r1_2;
    if (gStageData.act != 7) {
        if (gStageData.act != 9) {
            temp_r6 = temp_r1->unk4;
            if (temp_r6 == 0) {
                temp_r7 = temp_r1->unk6;
                temp_r8 = temp_r1->unk8;
                temp_r5 = temp_r1->unk14;
                if (temp_r5 != NULL) {
                    temp_r0_2 = TaskCreate(Task_14_805C03C, 0x14U, 0x4040U, 0U, TaskDestructor_805C03C)->data;
                    temp_r0_2->unk0 = (s8) temp_r6;
                    temp_r0_2->unk10 = temp_r5;
                    temp_r0_2->unk8 = temp_sl;
                    temp_r0_2->unkC = temp_sb;
                    temp_r0_2->unk2 = temp_r7;
                    temp_r0_2->unk4 = temp_r8;
                }
                goto block_8;
            }
            goto block_5;
        }
        goto block_6;
    }
block_5:
    if (gStageData.act == 9) {
block_6:
        if (temp_r1->unk4 == 0) {
            CreateBonusFlower((s16) (u16) (((s32) (temp_r0 << 8) >> 0x10) + (temp_r1->unk6 << 8)), (s16) (u16) (((s32) (temp_r1_2 << 8) >> 0x10) + (temp_r1->unk8 << 8)), (u32) (temp_r1->unk14->unk2A << 0x1C) >> 0x1C);
block_8:
            temp_r1->unk5 = 1;
        }
    }
    if (sub_805D058(temp_r1) == ACMD_RESULT__ENDED) {
        TaskDestroy(gCurTask);
    }
}

u32 sub_805C280(EnemyUnknownStruc0 *arg0) {
    s32 sp4;
    MapEntity *temp_r1_2;
    Sprite *temp_r3_2;
    Sprite *temp_r3_3;
    s32 temp_r1;
    s32 temp_r3;
    s32 temp_r4;
    s32 temp_r4_2;
    s32 temp_r5;
    s32 temp_r5_2;
    s32 temp_r5_4;
    s32 temp_r7;
    s32 temp_r7_2;
    s32 temp_sb;
    s32 temp_sb_2;
    s32 temp_sb_3;
    s32 temp_sl;
    s8 temp_r6;
    u16 temp_r0;
    u16 temp_r0_2;
    u16 temp_r0_3;
    u16 temp_r0_4;
    u16 temp_r0_5;
    u16 temp_r4_3;
    u16 temp_r4_5;
    u16 temp_r5_3;
    u16 temp_r5_5;
    u16 temp_sb_4;
    u16 temp_sl_2;
    void *temp_r4_4;

    temp_r1 = arg0->posX;
    sp4 = temp_r1;
    temp_r3 = arg0->posY;
    temp_sl = temp_r3;
    temp_r3_2 = arg0->spr;
    if (arg0->unk4 != 0) {
        if (gStageData.act != 9) {
            temp_r5 = (s32) ((u16) ((u16) temp_r3_2->x + gCamera.x) << 0x10) >> 8;
            temp_r4 = (s32) ((u16) ((u16) temp_r3_2->y + gCamera.y) << 0x10) >> 8;
            temp_sb = arg0->unk18;
            temp_r0 = TaskCreate(sub_805C198, 0x40U, 0x4040U, 0U, TaskDestructor_805D09C)->data;
            temp_r0->unkA = 0x3C;
            temp_r0->unkC = temp_r5;
            temp_r0->unk10 = temp_r4;
            temp_r0->unk6 = 0;
            temp_r0->unk8 = 0;
            temp_r0->unk14 = temp_sb;
            temp_r0->unk4 = 0;
            temp_r0->unk5 = 0;
            sub_805C138();
            m4aSongNumStart(0x8AU);
        } else {
            temp_r5_2 = (temp_r3_2->x + gCamera.x) << 8;
            temp_r4_2 = (temp_r3_2->y + gCamera.y) << 8;
            temp_sb_2 = arg0->unk18;
            temp_r0_2 = TaskCreate(sub_805C198, 0x40U, 0x4040U, 0U, TaskDestructor_805D09C)->data;
            temp_r0_2->unkA = 0x3C;
            temp_r0_2->unkC = temp_r5_2;
            temp_r0_2->unk10 = temp_r4_2;
            temp_r0_2->unk6 = 0;
            temp_r0_2->unk8 = 0;
            temp_r0_2->unk14 = temp_sb_2;
            temp_r0_2->unk4 = 0;
            temp_r0_2->unk5 = 0;
            sub_805C138();
            m4aSongNumStart(0x8AU);
        }
        if ((u32) gStageData.gameMode <= 4U) {

        } else {
            sub_8027578(arg0->me);
        }
        goto block_20;
    }
    if ((u32) gStageData.gameMode <= 4U) {
        goto block_17;
    }
    temp_r6 = (s8) arg0->me->x;
    if ((s32) temp_r6 < -6) {
        goto block_17;
    }
    if ((s32) temp_r6 > -3) {
block_17:
        temp_r3_3 = arg0->spr;
        if (sub_805CF90((s16) (u16) (((s32) (temp_r1 << 8) >> 0x10) + (arg0->regionX << 8)), (s16) (u16) (((s32) (temp_r3 << 8) >> 0x10) + (arg0->regionY << 8)), temp_r3_3->x, temp_r3_3->y) == 0) {
            temp_r1_2 = arg0->me;
            if (temp_r1_2 != NULL) {
                temp_r1_2->x = (u8) arg0->meX;
            }
            goto block_20;
        }
        return 0U;
    }
    if (gStageData.act != 9) {
        temp_r4_3 = arg0->regionX;
        temp_r5_3 = arg0->regionY;
        temp_sb_3 = arg0->unk18;
        temp_r0_3 = TaskCreate(sub_805C198, 0x40U, 0x4040U, 0U, TaskDestructor_805D09C)->data;
        temp_r0_3->unkA = 0x3C;
        temp_r0_3->unkC = sp4;
        temp_r0_3->unk10 = temp_sl;
        temp_r0_3->unk6 = temp_r4_3;
        temp_r0_3->unk8 = temp_r5_3;
        temp_r0_3->unk14 = temp_sb_3;
        temp_r0_3->unk4 = 0;
        temp_r0_3->unk5 = 0;
        sub_805C138();
        m4aSongNumStart(0x8AU);
        temp_sb_4 = arg0->regionX;
        temp_sl_2 = arg0->regionY;
        temp_r5_4 = arg0->posX;
        temp_r7 = arg0->posY;
        temp_r4_4 = (temp_r6 * 0x150) + &gUnknown_03001DA0;
        if (temp_r4_4 != NULL) {
            temp_r0_4 = TaskCreate(Task_14_805C03C, 0x14U, 0x4040U, 0U, TaskDestructor_805C03C)->data;
            temp_r0_4->unk0 = 0;
            temp_r0_4->unk10 = temp_r4_4;
            temp_r0_4->unk8 = temp_r5_4;
            temp_r0_4->unkC = temp_r7;
            temp_r0_4->unk2 = temp_sb_4;
            temp_r0_4->unk4 = temp_sl_2;
        }
    } else {
        temp_r4_5 = arg0->regionX;
        temp_r5_5 = arg0->regionY;
        temp_r7_2 = arg0->unk18;
        temp_r0_5 = TaskCreate(sub_805C198, 0x40U, 0x4040U, 0U, TaskDestructor_805D09C)->data;
        temp_r0_5->unkA = 0x3C;
        temp_r0_5->unkC = sp4;
        temp_r0_5->unk10 = temp_sl;
        temp_r0_5->unk6 = temp_r4_5;
        temp_r0_5->unk8 = temp_r5_5;
        temp_r0_5->unk14 = temp_r7_2;
        temp_r0_5->unk4 = 0;
        temp_r0_5->unk5 = 0;
        sub_805C138();
        m4aSongNumStart(0x8AU);
    }
block_20:
    return 1U;
}

u32 sub_805C510(Sprite *s) {
    s16 temp_r2_5;
    s16 temp_r2_6;
    s16 temp_r4;
    s16 temp_r4_2;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r0_3;
    s32 var_r0_4;
    s8 temp_r1_2;
    s8 temp_r1_3;
    s8 temp_r1_4;
    s8 temp_r1_5;
    s8 temp_r2;
    s8 temp_r2_2;
    s8 temp_r2_3;
    s8 temp_r2_4;
    u16 temp_r0;
    u16 temp_r0_2;
    u16 temp_r1;
    u32 var_sb;
    void *temp_r3;

    temp_r1 = gStageData.taskCheese->data;
    temp_r3 = temp_r1 + 0x20;
    var_sb = 0;
    if (!(2 & temp_r1->unk16)) {
        return 0U;
    }
    temp_r2 = s->hitboxes[0].b.left;
    temp_r1_2 = (s8) (u8) s->hitboxes[0].b.right;
    var_r0 = temp_r2 - temp_r1_2;
    if (var_r0 < 0) {
        var_r0 = temp_r1_2 - temp_r2;
    }
    temp_r0 = (u16) var_r0;
    temp_r2_2 = s->hitboxes[0].b.top;
    temp_r1_3 = (s8) (u8) s->hitboxes[0].b.bottom;
    var_r0_2 = temp_r2_2 - temp_r1_3;
    if (var_r0_2 < 0) {
        var_r0_2 = temp_r1_3 - temp_r2_2;
    }
    temp_r0_2 = (u16) var_r0_2;
    temp_r2_3 = temp_r3->unk2C;
    temp_r1_4 = (s8) temp_r3->unk2E;
    var_r0_3 = temp_r2_3 - temp_r1_4;
    if (var_r0_3 < 0) {
        var_r0_3 = temp_r1_4 - temp_r2_3;
    }
    temp_r2_4 = temp_r3->unk2D;
    temp_r1_5 = (s8) temp_r3->unk2F;
    var_r0_4 = temp_r2_4 - temp_r1_5;
    if (var_r0_4 < 0) {
        var_r0_4 = temp_r1_5 - temp_r2_4;
    }
    if ((temp_r0 != 0) || (temp_r0_2 != 0)) {
        temp_r4 = s->x;
        temp_r2_5 = temp_r3->unk10;
        if ((s32) temp_r4 <= (s32) temp_r2_5) {
            if ((s32) (temp_r4 + temp_r0) < (s32) temp_r2_5) {
                if ((s32) temp_r4 >= (s32) temp_r2_5) {
                    goto block_15;
                }
            } else {
                goto block_16;
            }
        } else {
block_15:
            if ((s32) (temp_r3->unk10 + (u16) var_r0_3) >= (s32) s->x) {
block_16:
                temp_r4_2 = s->y;
                temp_r2_6 = temp_r3->unk12;
                if ((s32) temp_r4_2 <= (s32) temp_r2_6) {
                    if ((s32) (temp_r4_2 + temp_r0_2) < (s32) temp_r2_6) {
                        if ((s32) temp_r4_2 >= (s32) temp_r2_6) {
                            goto block_19;
                        }
                    } else {
                        goto block_20;
                    }
                } else {
block_19:
                    if ((s32) (temp_r3->unk12 + (u16) var_r0_4) >= (s32) s->y) {
block_20:
                        var_sb = 1;
                    }
                }
            }
        }
    }
    return var_sb;
}

u32 sub_805C63C(EnemyUnknownStruc0 *arg0) {
    u32 sp8;
    Player *var_r5;
    Sprite *temp_r1;
    Task *temp_r0;
    s32 temp_r6;
    s32 temp_r7;
    s32 var_r1;
    s32 var_r2;
    u32 temp_r0_2;
    u8 temp_r0_3;
    u8 var_r0;
    u8 var_r0_2;
    u8 var_r0_3;
    u8 var_sl;

    var_r5 = NULL;
    sp8 = 0;
    temp_r7 = ((s32) arg0->posX >> 8) + (arg0->regionX << 8);
    temp_r6 = ((s32) arg0->posY >> 8) + (arg0->regionY << 8);
    temp_r1 = arg0->spr;
    var_r2 = temp_r7 << 8;
    var_r1 = temp_r6 << 8;
    if (temp_r1->anim == 0x4B1) {
        var_r1 += 0xFFFFF000;
        var_r2 += 0xFFFFF000;
    }
    sub_8004D68(var_r2, var_r1);
    var_sl = 0;
loop_3:
    if (var_sl == 0) {
        var_r5 = &gPlayers[gStageData.playerIndex];
    } else {
        var_r5 = &gPlayers[(u32) (var_r5->unk2B << 0x1E) >> 0x1E];
    }
    if (sub_802C080(var_r5) != 0) {

    } else {
        temp_r0 = gStageData.taskCheese;
        if ((temp_r0 != NULL) && (temp_r0->data->unk50 == var_r5) && (sub_805C510(temp_r1) == 1)) {
            sp8 = 1;
        }
        if (sub_8020700(temp_r1, temp_r7, temp_r6, 1, var_r5, 0) != 0) {
            if (var_r5->framesInvincible != 0) {
                if (sub_8020700(temp_r1, temp_r7, temp_r6, 0, var_r5, 0) == 0) {

                } else {
                    if (var_sl == 0) {
                        var_r0 = gStageData.playerIndex;
                    } else {
                        goto block_38;
                    }
                    goto block_39;
                }
            } else {
                goto block_29;
            }
        } else {
            temp_r0_2 = sub_8020700(temp_r1, temp_r7, temp_r6, 0, var_r5, 1);
            if (temp_r0_2 != 0) {
                if ((s32) ((s32) var_r5->qWorldX >> 8) < temp_r7) {
                    arg0->filler9[1] = 1;
                } else {
                    arg0->filler9[1] = 0xFF;
                }
                if ((s32) ((s32) var_r5->qWorldY >> 8) < temp_r6) {
                    var_r0_2 = 1;
                } else {
                    var_r0_2 = 0xFF;
                }
                arg0->filler9[2] = var_r0_2;
                sub_80044CC(var_r5);
                if (var_sl == 0) {
                    var_r0 = gStageData.playerIndex;
                } else {
                    goto block_38;
                }
                goto block_39;
            }
            if (sub_8020700(temp_r1, temp_r7, temp_r6, 0, var_r5, (s16) temp_r0_2) != 0) {
                if (var_r5->framesInvincible == 0) {
block_29:
                    sub_8020CE0(temp_r1, temp_r7, temp_r6, 0, var_r5);
                    sub_8020CE0(temp_r1, temp_r7, temp_r6, 1, var_r5);
                } else {
                    if ((s32) ((s32) var_r5->qWorldX >> 8) < temp_r7) {
                        arg0->filler9[1] = 1;
                    } else {
                        arg0->filler9[1] = 0xFF;
                    }
                    if ((s32) ((s32) var_r5->qWorldY >> 8) < temp_r6) {
                        var_r0_3 = 1;
                    } else {
                        var_r0_3 = 0xFF;
                    }
                    arg0->filler9[2] = var_r0_3;
                    sub_80044CC(var_r5);
                    if (var_sl == 0) {
                        var_r0 = gStageData.playerIndex;
                    } else {
block_38:
                        var_r0 = (u8) ((u32) (var_r5->unk2B << 0x1E) >> 0x1E);
                    }
block_39:
                    arg0->filler9[0] = var_r0;
                    sp8 = 1;
                }
            } else if ((sub_8020700(temp_r1, temp_r7, temp_r6, 1, var_r5, 1) != 0) && (var_r5->framesInvincible == 0)) {
                sub_8020CE0(temp_r1, temp_r7, temp_r6, 0, var_r5);
                sub_8020CE0(temp_r1, temp_r7, temp_r6, 1, var_r5);
            }
        }
    }
    temp_r0_3 = var_sl + 1;
    var_sl = temp_r0_3;
    if ((u32) temp_r0_3 <= 1U) {
        goto loop_3;
    }
    arg0->unk18 = (s32) var_r5;
    return sp8;
}

u32 sub_805C890(EnemyUnknownStruc0 *param0, s8 param1) {
    EnemyUnknownStruc0 *spC;
    u32 sp10;
    s32 sp14;
    s32 sp18;
    Player *var_r6;
    Sprite *temp_sb;
    Task *temp_r0;
    s16 temp_r5;
    s32 temp_r2;
    s32 temp_r7;
    s32 temp_r8;
    u32 temp_r0_2;
    u32 temp_r1;
    u32 temp_r1_2;
    u32 temp_r1_3;
    u32 temp_r2_2;
    u32 temp_r4;
    u8 temp_r0_3;

    spC = param0;
    var_r6 = NULL;
    sp10 = 0;
    temp_r8 = ((s32) spC->posX >> 8) + (spC->regionX << 8);
    temp_r7 = ((s32) spC->posY >> 8) + (spC->regionY << 8);
    temp_sb = spC->spr;
    sub_8004D68(temp_r8 << 8, temp_r7 << 8);
    sp14 = 0;
    sp18 = (s32) (s8) (u8) param1;
loop_1:
    if (sp14 == 0) {
        var_r6 = &gPlayers[gStageData.playerIndex];
    } else {
        var_r6 = &gPlayers[(u32) (var_r6->unk2B << 0x1E) >> 0x1E];
    }
    temp_r0 = gStageData.taskCheese;
    if ((temp_r0 != NULL) && (temp_r0->data->unk50 == var_r6) && (sub_805C510(temp_sb) == 1)) {
        sp10 = 1;
    }
    if (var_r6->moveState & 0x100) {

    } else {
        temp_r2 = 0x1C & var_r6->unk2B;
        if ((temp_r2 != 4) && (temp_r2 != 8) && (temp_r2 != 0x10)) {

        } else {
            temp_r0_2 = sub_8020700(temp_sb, temp_r8, temp_r7, 1, var_r6, 1);
            if (temp_r0_2 != 0) {
                temp_r1 = var_r6->moveState;
                if (0x01000000 & temp_r1) {

                } else if ((temp_r1 & 2) && (var_r6->framesInvincible == 0) && (temp_r5 = var_r6->framesInvulnerable, (temp_r5 == 0))) {
                    temp_r4 = sub_8020874(temp_sb, temp_r8, temp_r7, 1, var_r6, 1, (u8) (s32) temp_r5);
                    if (var_r6->moveState & 4) {
                        sub_805CFE8(var_r6, temp_sb, temp_r4, temp_r8, temp_r7, sp18);
                        sub_805CC5C(var_r6, temp_sb, temp_r4, temp_r8, temp_r7, sp18);
                        var_r6->charFlags.state1 = (u16) temp_r5;
                        SetPlayerCallback(var_r6, Player_800DB30);
                    } else {
                        sub_805CB70(var_r6, temp_sb, temp_r4, temp_r8, temp_r7, sp18);
                        Player_800891C(var_r6);
                    }
                    temp_r1_2 = var_r6->moveState;
                    if (temp_r1_2 & 1) {
                        var_r6->moveState = temp_r1_2 & ~1;
                    } else {
                        var_r6->moveState = temp_r1_2 | 1;
                    }
                } else if (var_r6->spriteInfoBody->s.hitboxes[1].index == -1) {

                } else {
                    goto block_35;
                }
            } else if (sub_8020700(temp_sb, temp_r8, temp_r7, 1, var_r6, (s16) temp_r0_2) != 0) {
                if (!(var_r6->moveState & 0x01000000) && (var_r6->framesInvulnerable == 0)) {
                    if (var_r6->framesInvincible == 0) {
                        sub_8020CE0(temp_sb, temp_r8, temp_r7, 0, var_r6);
                        sub_8020CE0(temp_sb, temp_r8, temp_r7, 1, var_r6);
                        temp_r2_2 = var_r6->unk2B << 0x1E;
                        if (*(((temp_r2_2 >> 0x1E) * 0x150) + &gPlayers->moveState) & 0x01000000) {
                            sub_8020CE0(temp_sb, temp_r8, temp_r7, 0, &gPlayers[temp_r2_2 >> 0x1E]);
                            sub_8020CE0(temp_sb, temp_r8, temp_r7, 1, &gPlayers[(u32) (var_r6->unk2B << 0x1E) >> 0x1E]);
                        }
                    } else {
block_35:
                        sub_80044CC(var_r6);
                        sp10 = 1;
                    }
                }
            } else if (sub_8020700(temp_sb, temp_r8, temp_r7, 0, var_r6, 1) != 0) {
                temp_r1_3 = var_r6->moveState;
                if (!(0x01000000 & temp_r1_3)) {
                    if (temp_r1_3 & 0x800000) {
                        sub_8016F28(var_r6);
                    }
                    sub_80044CC(var_r6);
                    sp10 = 1;
                }
            }
        }
    }
    temp_r0_3 = sp14 + 1;
    sp14 = (s32) temp_r0_3;
    if ((u32) temp_r0_3 <= 1U) {
        goto loop_1;
    }
    spC->unk18 = (s32) var_r6;
    return sp10;
}

void sub_805CB70(Player *arg0, Sprite *arg1, u32 arg2, s32 arg3, s32 arg5) {
    s16 var_r1;
    s16 var_r1_2;
    s32 var_r0;
    s32 var_r2;
    s32 var_r2_2;
    u8 temp_r5;

    temp_r5 = (u8) arg5;
    if (0x30000 & arg2) {
        arg0->qWorldY += (s16) (arg2 << 8);
        var_r2 = temp_r5 << 0x18;
    } else {
        var_r2 = temp_r5 << 0x18;
        if (0xC0000 & arg2) {
            if (var_r2 < 0) {
                if ((s32) arg0->qWorldX < (s32) ((arg3 + (s8) arg1->unk2C) << 8)) {
                    var_r0 = arg3 - 0x10;
                    goto block_10;
                }
                goto block_8;
            }
            if ((s32) arg0->qWorldX < (s32) ((arg3 + (s8) arg1->unk2C) << 8)) {
                var_r0 = arg3 - 0x10;
                goto block_10;
            }
block_8:
            if (arg0->qWorldX > (s32) ((arg3 + (s8) arg1->unk2E) << 8)) {
                var_r0 = arg3 + 0x10;
block_10:
                arg0->qWorldX = var_r0 << 8;
            }
        }
    }
    if (var_r2 < 0) {
        var_r1 = arg0->qSpeedAirX;
        if ((s32) var_r1 < 0) {
            var_r1 = 0 - var_r1;
        }
        if ((s32) var_r1 <= 0x1FF) {
            if ((s32) arg0->qSpeedAirX > 0) {
                var_r2_2 = 0x200;
            } else {
                goto block_22;
            }
            goto block_23;
        }
    } else {
        var_r1_2 = arg0->qSpeedAirX;
        if ((s32) var_r1_2 < 0) {
            var_r1_2 = 0 - var_r1_2;
        }
        if ((s32) var_r1_2 <= 0x1FF) {
            if ((s32) arg0->qSpeedAirX >= 0) {
                var_r2_2 = 0x200;
            } else {
block_22:
                var_r2_2 = 0xFFFFFE00;
            }
block_23:
            arg0->qSpeedAirX = (u16) arg0->qSpeedAirX + var_r2_2;
        }
    }
    arg0->qSpeedGround = (u16) arg0->qSpeedAirX;
    arg0->qSpeedGround = 0 - (s16) arg0->qSpeedGround;
}

void sub_805CC5C(Player *arg0, Sprite *arg1, u32 arg2, s32 arg3, s32 arg4, s32 arg5) {
    s16 var_r0_2;
    s32 temp_r0;
    s32 var_r0;
    s8 temp_r1_2;
    u8 temp_r1;

    temp_r1 = (u8) arg5;
    if (((0x80000 & arg2) && ((s32) arg0->qSpeedAirX < 0)) || ((0x40000 & arg2) && ((s32) arg0->qSpeedAirY > 0))) {
        arg0->qWorldY = (arg4 - 0x30) << 8;
        arg0->qSpeedAirY = -0x300;
        temp_r0 = temp_r1 << 0x18;
        if (temp_r0 < 0) {
            if ((s32) arg0->qWorldX < (s32) ((arg3 + (s8) arg1->unk2C) << 8)) {
                var_r0 = arg3 - 0x10;
                goto block_11;
            }
            goto block_9;
        }
        if ((s32) arg0->qWorldX < (s32) ((arg3 + (s8) arg1->unk2C) << 8)) {
            var_r0 = arg3 - 0x10;
            goto block_11;
        }
block_9:
        if (arg0->qWorldX > (s32) ((arg3 + (s8) arg1->unk2E) << 8)) {
            var_r0 = arg3 + 0x10;
block_11:
            arg0->qWorldX = var_r0 << 8;
        }
        temp_r1_2 = (s8) temp_r1;
        if ((((s32) temp_r1_2 < 0) && ((s32) arg0->qSpeedAirX < 0)) || (((s32) temp_r1_2 > 0) && ((s32) arg0->qSpeedAirX > 0))) {
            if (temp_r0 < 0) {
                var_r0_2 = 0x300;
            } else {
                var_r0_2 = -0x300;
            }
            arg0->qSpeedAirX = var_r0_2;
        }
    }
}

Player *sub_805CD20(u8 arg0) {
    Player *var_r1;
    u8 temp_r2;

    var_r1 = NULL;
    if ((arg0 << 0x18) == 0) {
        var_r1 = &gPlayers[gStageData.playerIndex];
    } else {
        temp_r2 = *(u8 *)0x2B;
        if ((0x1C & temp_r2) == 4) {
            var_r1 = &gPlayers[(u32) (temp_r2 << 0x1E) >> 0x1E];
        }
    }
    return var_r1;
}

void sub_805CD70(Vec2_32 *qVal, Vec2_32 *param1, u16 *region, s8 *param3) {
    s16 temp_r1;
    s32 var_r4;
    s32 var_r5;
    u8 temp_r7;

    var_r5 = (s32) qVal->x >> 8;
    var_r4 = (s32) qVal->y >> 8;
    if (region != NULL) {
        var_r5 += region->unk0 << 8;
        var_r4 += region[1] << 8;
    }
    temp_r7 = (u8) sub_8052394(var_r4, var_r5, 1, 8, NULL, sub_805217C);
    if ((*param3 != 1) || ((s8) temp_r7 != -1) || ((s8) sub_8052394(var_r4 - 1, var_r5, 1, 8, NULL, sub_805217C) != 1)) {
        *param3 = (s8) temp_r7;
        temp_r1 = temp_r7 << 8;
        qVal->y += temp_r1;
        if (param1 != NULL) {
            param1->y += temp_r1;
        }
    }
}

void sub_805CE14(Vec2_32 *qVal, Vec2_32 *param1, u16 *region, s8 *param3) {
    s16 temp_r1;
    s32 var_r4;
    s32 var_r5;
    u8 temp_r7;

    var_r5 = (s32) qVal->x >> 8;
    var_r4 = (s32) qVal->y >> 8;
    if (region != NULL) {
        var_r5 += region->unk0 << 8;
        var_r4 += region[1] << 8;
    }
    temp_r7 = (u8) sub_8052394(var_r4, var_r5, 1, -8, NULL, sub_805217C);
    if ((*param3 != 1) || ((s8) temp_r7 != -1) || ((s8) sub_8052394(var_r4 + 1, var_r5, 1, -8, NULL, sub_805217C) != 1)) {
        *param3 = (s8) temp_r7;
        temp_r1 = temp_r7 << 8;
        qVal->y -= temp_r1;
        if (param1 != NULL) {
            param1->y -= temp_r1;
        }
    }
}

void sub_805CEBC(s32 arg0, s32 arg1, u16 arg2, u16 arg3, s32 arg4, s32 arg5) {
    u16 temp_r0;
    u8 temp_r6;

    temp_r6 = (u8) arg4;
    temp_r0 = TaskCreate(sub_805C198, 0x40U, 0x4040U, 0U, TaskDestructor_805D09C)->data;
    temp_r0->unkA = 0x3C;
    temp_r0->unkC = arg0;
    temp_r0->unk10 = arg1;
    temp_r0->unk6 = arg2;
    temp_r0->unk8 = arg3;
    temp_r0->unk14 = arg5;
    temp_r0->unk4 = temp_r6;
    temp_r0->unk5 = 0;
    sub_805C138();
    if (temp_r6 == 0) {
        m4aSongNumStart(0x8AU);
    }
}

void sub_805CF38(s32 arg0, s32 arg1, u16 arg2, u16 arg3, s32 arg4) {
    u16 temp_r0;

    if (arg4 != 0) {
        temp_r0 = TaskCreate(Task_14_805C03C, 0x14U, 0x4040U, 0U, TaskDestructor_805C03C)->data;
        temp_r0->unk0 = 0;
        temp_r0->unk10 = arg4;
        temp_r0->unk8 = arg0;
        temp_r0->unkC = arg1;
        temp_r0->unk2 = arg2;
        temp_r0->unk4 = arg3;
    }
}

void TaskDestructor_805C03C(Task *arg0) {

}

s32 sub_805CF90(s16 arg0, s16 arg1, s16 arg2, s32 arg3) {
    s32 temp_r4;

    temp_r4 = arg1 - gCamera.y;
    if ((((u32) ((arg0 - gCamera.x) + 0x80) > 0x1F0U) || ((s32) (temp_r4 + 0x80) < 0) || (temp_r4 > 0x120)) && (((u32) (arg2 + 0x80) > 0x1F0U) || ((s32) (arg3 + 0x80) < 0) || (arg3 > 0x120))) {
        return 0;
    }
    return 1;
}

void sub_805CFE8(Player *arg0, s32 arg2, u32 arg4, s32 arg5) {
    s16 var_r0;
    s8 temp_r2;
    u8 temp_r3;

    temp_r3 = (u8) arg5;
    if ((((0x10000 & arg2) && ((s32) arg0->qSpeedAirY < 0)) || ((0x20000 & arg2) && ((s32) arg0->qSpeedAirY > 0))) && (((arg0->qWorldY = (arg4 - 0x30) << 8, arg0->qSpeedAirY = -0x300, temp_r2 = (s8) temp_r3, ((s32) temp_r2 < 0)) && ((s32) arg0->qSpeedAirX < 0)) || (((s32) temp_r2 > 0) && ((s32) arg0->qSpeedAirX > 0)))) {
        if ((s32) (temp_r3 << 0x18) < 0) {
            var_r0 = -0x300;
        } else {
            var_r0 = 0x300;
        }
        arg0->qSpeedAirX = var_r0;
    }
}

s32 sub_805D058(void *arg0) {
    Sprite *temp_r5;
    s32 temp_r4;

    temp_r5 = arg0 + 0x18;
    temp_r5->x = (((s32) arg0->unkC >> 8) + (arg0->unk6 << 8)) - gCamera.x;
    temp_r5->y = (((s32) arg0->unk10 >> 8) + (arg0->unk8 << 8)) - gCamera.y;
    temp_r4 = UpdateSpriteAnimation(temp_r5);
    DisplaySprite(temp_r5);
    return temp_r4;
}

void TaskDestructor_805D09C(Task *arg0) {
    VramFree(arg0->data->unk18);
}
#endif

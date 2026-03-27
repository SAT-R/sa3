#define NULL 0

void AddRings(s32);
void TaskDestructor_RingsMgr(Task *);
void Task_RingsMgrExtraZone();
void Task_RingsMgrStage();
void sub_802AB10(s16 arg0, s16 arg1, Player *p);
void sub_802AB8C();
void Task_802ACF0();
extern u32 *gUnknown_080CEF58[];
extern struct MP2KSongHeader song117;

typedef struct RingsManager {
    /* 0x00 */ Sprite s;
    /* 0x28 */ u8 *ringPositions;
} RingsManager;

typedef struct RingsMgrUnk2C {
    /* 0x00 */ Sprite s;
    /* 0x28 */ u8 unk28;
    /* 0x29 */ u8 unk29;
} RingsMgrUnk2C;

typedef struct RingsMgrUnk30 {
    /* 0x00 */ Sprite s;
    /* 0x28 */ Player *p;
    /* 0x2C */ s16 magnitude;
} RingsMgrUnk30;

void CreateStageRingsManager(void)
{
    Task *t;
    s32 temp_r4;
    s32 var_r0_2;
    u16 temp_r0;
    u32 **temp_r4_2;
    u32 **ringsArray;
    u32 **ringsCompressed;
    void (*var_r0)();
    RingsManager *temp_r0_2;
    s16 mapIndex = gStageData.currMapIndex;
    void *var_r5;
    Sprite *s;

    if (gStageData.gameMode != 7) {
        if (mapIndex != 72) {
            t = TaskCreate(Task_RingsMgrStage, sizeof(RingsManager), 0x2800U, 0U, TaskDestructor_RingsMgr);
        } else {
            t = TaskCreate(Task_RingsMgrExtraZone, sizeof(RingsManager), 0x2800U, 0U, TaskDestructor_RingsMgr);
        }

        // NOTE: First 4 byte of RL-compressed data contains uncompressed size.
        ringsArray = gUnknown_080CEF58;
        ringsCompressed = &ringsArray[mapIndex];
        var_r5 = EwramMalloc(**ringsCompressed >> 8);
        RLUnCompWram(*ringsCompressed, var_r5);
    }
    temp_r0_2 = TASK_DATA(t);
    temp_r0_2->ringPositions = var_r5;
    s = &temp_r0_2->s;
    if (gStageData.gameMode < 6) {
        s->tiles = OBJ_VRAM0 + 0x4180;
    } else if (gStageData.gameMode == 6) {
        s->tiles = OBJ_VRAM0 + 0x41A0;
    }

    s->frameFlags = 0x41200;
    s->anim = ANIM_RING;
    s->x = DISPLAY_CENTER_X;
    s->y = DISPLAY_CENTER_Y;
    s->oamFlags = 0x280;
    s->qAnimDelay = 0;
    s->prevAnim = 0xFFFF;
    s->variant = 0;
    s->prevVariant = 0xFF;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
}

void PlayRingCollectSE(void)
{
    if ((gStageData.gameMode != 2)
        && (((gStageData.unk4 != 9) && (gStageData.unk4 != 4) && (gStageData.unk4 != 5) && (gStageData.unk4 != 6))
            || (gStageData.zone != 7))) {
        if (gStageData.rings & 1) {
            MPlayStart(&gMPlayInfo_SE2, &song117);
            m4aMPlayImmInit(&gMPlayInfo_SE2);
            m4aMPlayVolumeControl(&gMPlayInfo_SE2, 0xFFFFU, 128);
            m4aMPlayPanpotControl(&gMPlayInfo_SE2, 0xFFFFU, -64);
        } else {
            MPlayStart(&gMPlayInfo_SE1, &song117);
            m4aMPlayImmInit(&gMPlayInfo_SE1);
            m4aMPlayVolumeControl(&gMPlayInfo_SE1, 0xFFFFU, 128);
            m4aMPlayPanpotControl(&gMPlayInfo_SE1, 0xFFFFU, +64);
        }
    }
}

void CreateCollectRingEffect(s16 worldX, s16 worldY)
{
    RingsMgrUnk2C *strc;
    Sprite *s;
    s32 var_r0;
    u16 temp_r2;

    if (gStageData.unkB5 < 8) {
        strc = TASK_DATA(TaskCreate(Task_802ACF0, sizeof(RingsMgrUnk2C), 0x2810U, 0U, NULL));
        strc->unk29 = 0;
        strc->unk28 = (s8)(1 & gStageData.rings);
        s = &strc->s;
        if (gStageData.gameMode < 6) {
            s->tiles = OBJ_VRAM0 + 0x4380;
        } else if (gStageData.gameMode == 6) {
            s->tiles = OBJ_VRAM0 + 0x43A0;
        }
        s->frameFlags = 0x41200;
        s->anim = ANIM_RING_COLLECT_EFFECT;
        // NOTE: Initializing sprite pos to world pos
        s->x = worldX;
        s->y = worldY;
        s->oamFlags = 0x280;
        s->qAnimDelay = 0;
        s->prevAnim = 0xFFFF;
        s->variant = 0;
        s->prevVariant = 0xFF;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->hitboxes[0].index = -1;
        gStageData.unkB5++;
        PlayRingCollectSE();
    }
}

// Like CreateCollectRingEffect(), just no sound effect.
void CreateCollectRingEffectNoSfx(s16 worldX, s16 worldY)
{
    RingsMgrUnk2C *strc;
    Sprite *s;
    s32 var_r0;
    u16 temp_r2;

    if (gStageData.unkB5 < 8) {
        strc = TASK_DATA(TaskCreate(Task_802ACF0, sizeof(RingsMgrUnk2C), 0x2810U, 0U, NULL));
        strc->unk29 = 0;
        strc->unk28 = (s8)(1 & gStageData.rings);
        s = &strc->s;
        if (gStageData.gameMode < 6) {
            s->tiles = OBJ_VRAM0 + 0x4380;
        } else if (gStageData.gameMode == 6) {
            s->tiles = OBJ_VRAM0 + 0x43A0;
        }
        s->frameFlags = 0x41200;
        s->anim = ANIM_RING_COLLECT_EFFECT;
        // NOTE: Initializing sprite pos to world pos
        s->x = worldX;
        s->y = worldY;
        s->oamFlags = 0x280;
        s->qAnimDelay = 0;
        s->prevAnim = 0xFFFF;
        s->variant = 0;
        s->prevVariant = 0xFF;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->hitboxes[0].index = -1;
        gStageData.unkB5++;
    }
}

#if 0
void Task_RingsMgrStage(void) {
    Sprite *sp4;
    void *sp8;
    SpriteOffset *spC;
    u32 sp10;
    u32 sp14;
    s32 sp18;
    s32 sp1C;
    ? *sp20;
    ? *sp24;
    s32 sp28;
    ? *sp2C;
    ? *sp30;
    s32 sp34;
    s32 sp38;
    s32 sp3C;
    s32 sp40;
    u8 *sp44;
    OamData *sp48;
    OamData *temp_r0_14;
    OamData *temp_r0_7;
    OamData *temp_r2_12;
    OamData *temp_r2_14;
    Player *temp_r0;
    Player *temp_r0_2;
    Player *var_sb;
    Sprite *temp_r1;
    s16 temp_r6_4;
    s16 temp_r7;
    s16 temp_r7_2;
    s16 temp_r7_3;
    s32 temp_r0_11;
    s32 temp_r0_12;
    s32 temp_r0_13;
    s32 temp_r0_3;
    s32 temp_r0_5;
    s32 temp_r0_6;
    s32 temp_r1_10;
    s32 temp_r1_11;
    s32 temp_r1_12;
    s32 temp_r1_2;
    s32 temp_r1_4;
    s32 temp_r1_5;
    s32 temp_r1_6;
    s32 temp_r1_7;
    s32 temp_r1_9;
    s32 temp_r2_10;
    s32 temp_r2_11;
    s32 temp_r2_3;
    s32 temp_r2_4;
    s32 temp_r2_7;
    s32 temp_r2_8;
    s32 temp_r2_9;
    s32 temp_r6_2;
    s32 temp_r6_3;
    s32 temp_r6_5;
    s32 temp_r7_4;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r1_4;
    s32 var_r2;
    s32 var_r2_2;
    s32 var_r3;
    s32 var_r3_2;
    s8 *temp_r1_3;
    s8 *temp_r1_8;
    s8 *temp_r2_2;
    s8 *temp_r2_6;
    s8 temp_r3;
    s8 temp_r3_2;
    s8 temp_r3_3;
    s8 temp_r3_4;
    u16 temp_r0_15;
    u16 temp_r0_16;
    u16 temp_r0_8;
    u16 temp_r0_9;
    u16 temp_r2_13;
    u16 temp_r2_15;
    u16 temp_r3_5;
    u16 temp_r3_6;
    u32 temp_r1_13;
    u32 temp_r1_15;
    u32 temp_r1_16;
    u32 temp_r2;
    u32 var_r8;
    u32 var_r8_2;
    u32 var_r8_3;
    u32 var_r8_4;
    u32 var_sl;
    u32 var_sl_2;
    u32 var_sl_3;
    u32 var_sl_4;
    u8 *var_r5;
    u8 *var_r5_2;
    u8 temp_r0_10;
    u8 temp_r0_4;
    u8 temp_r1_14;
    u8 temp_r1_17;
    u8 temp_r2_5;
    u8 var_r1;
    u8 var_r1_2;
    u8 var_r1_3;
    void *temp_r6;
    void *var_r5_3;
    void *var_r5_4;

    var_sb = saved_reg_r9;
    temp_r1 = gCurTask->data + 0x03000000;
    sp4 = temp_r1;
    sp8 = temp_r1->unk28;
    sp18 = 0;
    UpdateSpriteAnimation(sp4);
    temp_r2 = sp4->frameNum;
    if ((temp_r2 >> 0x1C) == 0) {
        spC = &gRefSpriteTables->dimensions[sp4->anim][temp_r2];
    } else {
        spC = gRefSpriteTables->dimensions[sp4->anim] + (temp_r2 * 0x10);
    }
    temp_r6 = sp8 + 4;
    sp10 = (u32) (u16) sp8->unk4;
    sp8 = temp_r6 + 4 + 4;
    sp14 = (u32) (u16) temp_r6->unk4;
    if ((u32) gStageData.gameMode > 5U) {
        sp1C = 0;
        sp2C = &subroutine_arg0;
loop_94:
        sp28 = 0;
        temp_r0 = &gPlayers[sp1C];
        temp_r1_2 = 0x1C & temp_r0->unk2B;
        sp40 = sp1C + 1;
        if (temp_r1_2 == 0x14) {

        } else if (temp_r1_2 == 8) {

        } else {
            temp_r0_2 = &gPlayers[gStageData.playerIndex];
            if ((temp_r0 == temp_r0_2) || (temp_r0 == &gPlayers[(u32) (temp_r0_2->unk2B << 0x1E) >> 0x1E])) {
                sp28 = 1;
            }
            sp40 = sp1C + 1;
            if (temp_r0->moveState & 0x100) {

            } else if (temp_r0->charFlags.anim0 == 0x66) {

            } else if (temp_r0->unk48 != 0) {

            } else {
                temp_r1_3 = &temp_r0->spriteOffsetX;
                sp2C->unk0 = (s8) (0 - (u8) *temp_r1_3);
                temp_r2_2 = &temp_r0->spriteOffsetY;
                sp2C->unk1 = (s8) (0 - (u8) *temp_r2_2);
                sp2C->unk2 = (u8) *temp_r1_3;
                sp2C->unk3 = (u8) *temp_r2_2;
                temp_r1_4 = (s32) temp_r0->qWorldY >> 8;
                var_sl = (u32) ((temp_r1_4 + sp2C->unk1) << 8) >> 0x10;
                if ((s32) var_sl > (s32) ((s32) ((s8) sp2C->unk3 + temp_r1_4 + 8) >> 8)) {

                } else if (var_sl >= sp14) {

                } else {
                    sp30 = &subroutine_arg0;
loop_112:
                    var_r2 = temp_r0->qWorldX;
                    temp_r1_5 = var_r2 >> 8;
                    var_r8 = (u32) (((temp_r1_5 + sp30->unk0) - 8) << 8) >> 0x10;
                    var_r0 = (s32) (sp30->unk2 + temp_r1_5 + 0x10) >> 8;
                    var_r3 = temp_r0->qWorldY;
                    sp3C = var_sl + 1;
loop_135:
                    if (((s32) var_r8 <= var_r0) && (var_r8 < sp10)) {
                        temp_r0_3 = *((var_r8 * 4) + ((sp10 * var_sl * 4) + sp8));
                        sp38 = var_r8 + 1;
                        if (temp_r0_3 != 0) {
                            var_r5 = sp8 + (temp_r0_3 - 8);
                            var_r1 = *var_r5;
                            if (var_r1 != 0xFF) {
                                do {
                                    if (var_r1 == 0xFE) {
                                        var_r5 += 2;
                                    } else {
                                        temp_r7 = (var_r5->unk0 * 8) + (var_r8 << 8);
                                        temp_r6_2 = (var_r5->unk1 * 8) + (var_sl << 8);
                                        temp_r2_3 = temp_r7 - 8;
                                        temp_r3 = subroutine_arg0.unk0;
                                        temp_r1_6 = ((s32) temp_r0->qWorldX >> 8) + temp_r3;
                                        if (temp_r2_3 <= temp_r1_6) {
                                            if ((s32) (temp_r7 + 8) < temp_r1_6) {
                                                if (temp_r2_3 >= temp_r1_6) {
                                                    goto block_121;
                                                }
                                            } else {
                                                goto block_122;
                                            }
                                        } else {
block_121:
                                            if ((s32) (temp_r1_6 + (subroutine_arg0.unk2 - temp_r3)) >= temp_r2_3) {
block_122:
                                                temp_r2_4 = temp_r6_2 - 0x10;
                                                temp_r3_2 = subroutine_arg0.unk1;
                                                temp_r1_7 = ((s32) temp_r0->qWorldY >> 8) + temp_r3_2;
                                                if (temp_r2_4 <= temp_r1_7) {
                                                    if (temp_r6_2 < temp_r1_7) {
                                                        if (temp_r2_4 >= temp_r1_7) {
                                                            goto block_125;
                                                        }
                                                    } else {
                                                        goto block_126;
                                                    }
                                                } else {
block_125:
                                                    if ((s32) (temp_r1_7 + (subroutine_arg0.unk3 - temp_r3_2)) >= temp_r2_4) {
block_126:
                                                        if (sp28 != 0) {
                                                            if (gStageData.playerIndex == sp1C) {
                                                                AddRings(1);
                                                                CreateCollectRingEffect((s32) temp_r7, (s32) (s16) temp_r6_2);
                                                            } else {
                                                                CreateCollectRingEffectNoSfx((u16) temp_r7, (u16) (s16) temp_r6_2);
                                                            }
                                                        } else {
                                                            CreateCollectRingEffectNoSfx((u16) temp_r7, (u16) (s16) temp_r6_2);
                                                        }
                                                        var_r5->unk0 = 0xFE;
                                                    }
                                                }
                                            }
                                        }
                                        var_r5 += 2;
                                        var_r3 = temp_r0->qWorldY;
                                        var_r2 = temp_r0->qWorldX;
                                    }
                                    var_r1 = *var_r5;
                                } while (var_r1 != 0xFF);
                            }
                        }
                        var_r8 = (u32) (u16) sp38;
                        var_r0 = (s32) (sp30->unk2 + (var_r2 >> 8) + 0x10) >> 8;
                        goto loop_135;
                    }
                    var_sl = (u32) (u16) sp3C;
                    if (((s32) var_sl <= (s32) ((s32) (sp30->unk3 + (var_r3 >> 8) + 8) >> 8)) && (var_sl < sp14)) {
                        goto loop_112;
                    }
                }
            }
        }
        temp_r0_4 = (u8) sp40;
        sp1C = (s32) temp_r0_4;
        if ((u32) temp_r0_4 <= 3U) {
            goto loop_94;
        }
        goto block_143;
    }
    sp1C = 0;
    sp20 = &subroutine_arg0;
loop_6:
    if (sp1C == 0) {
        var_r1_2 = gStageData.playerIndex;
    } else {
        var_r1_2 = (u8) ((u32) (var_sb->unk2B << 0x1E) >> 0x1E);
    }
    var_sb = &gPlayers[var_r1_2];
    if (var_sb->moveState & 0x100) {
        goto block_90;
    }
    if (var_sb->charFlags.anim0 == 0x66) {
        goto block_90;
    }
    if (var_sb->unk48 != 0) {
        goto block_90;
    }
    temp_r2_5 = var_sb->unk2B;
    sp44 = var_sb + 0x2B;
    if (((0x1C & temp_r2_5) == 8) && (*((((u32) (temp_r2_5 << 0x1E) >> 0x1E) * 0x150) + &gPlayers->moveState) & 0x100)) {
        goto block_90;
    }
    temp_r1_8 = &var_sb->spriteOffsetX;
    sp20->unk0 = (s8) (0 - (u8) *temp_r1_8);
    temp_r2_6 = &var_sb->spriteOffsetY;
    sp20->unk1 = (s8) (0 - (u8) *temp_r2_6);
    sp20->unk2 = (u8) *temp_r1_8;
    sp20->unk3 = (u8) *temp_r2_6;
    temp_r1_9 = (s32) var_sb->qWorldY >> 8;
    var_sl_2 = (u32) ((temp_r1_9 + sp20->unk1) << 8) >> 0x10;
    if ((s32) var_sl_2 > (s32) ((s32) ((s8) sp20->unk3 + temp_r1_9 + 8) >> 8)) {

    } else if (var_sl_2 >= sp14) {

    } else {
        sp24 = &subroutine_arg0;
loop_23:
        var_r2_2 = var_sb->qWorldX;
        temp_r1_10 = var_r2_2 >> 8;
        var_r8_2 = (u32) (((temp_r1_10 + sp24->unk0) - 8) << 8) >> 0x10;
        var_r3_2 = var_sb->qWorldY;
        sp3C = var_sl_2 + 1;
        if ((s32) var_r8_2 > (s32) ((s32) (sp24->unk2 + temp_r1_10 + 0x10) >> 8)) {

        } else if (var_r8_2 >= sp10) {

        } else {
loop_27:
            temp_r0_5 = *((var_r8_2 * 4) + ((sp10 * var_sl_2 * 4) + sp8));
            sp38 = var_r8_2 + 1;
            if (temp_r0_5 != 0) {
                var_r5_2 = sp8 + (temp_r0_5 - 8);
                var_r1_3 = *var_r5_2;
                if (var_r1_3 != 0xFF) {
                    do {
                        if (var_r1_3 == 0xFE) {
                            var_r5_2 += 2;
                        } else {
                            temp_r7_2 = (var_r5_2->unk0 * 8) + (var_r8_2 << 8);
                            temp_r6_3 = (var_r5_2->unk1 * 8) + (var_sl_2 << 8);
                            temp_r2_7 = temp_r7_2 - 8;
                            temp_r3_3 = subroutine_arg0.unk0;
                            temp_r1_11 = ((s32) var_sb->qWorldX >> 8) + temp_r3_3;
                            if (temp_r2_7 <= temp_r1_11) {
                                if ((s32) (temp_r7_2 + 8) < temp_r1_11) {
                                    if (temp_r2_7 >= temp_r1_11) {
                                        goto block_35;
                                    }
                                } else {
                                    goto block_36;
                                }
                            } else {
block_35:
                                if ((s32) (temp_r1_11 + (subroutine_arg0.unk2 - temp_r3_3)) >= temp_r2_7) {
block_36:
                                    temp_r2_8 = temp_r6_3 - 0x10;
                                    temp_r3_4 = subroutine_arg0.unk1;
                                    temp_r1_12 = ((s32) var_sb->qWorldY >> 8) + temp_r3_4;
                                    if (temp_r2_8 <= temp_r1_12) {
                                        if (temp_r6_3 < temp_r1_12) {
                                            if (temp_r2_8 >= temp_r1_12) {
                                                goto block_39;
                                            }
                                        } else {
                                            goto block_40;
                                        }
                                    } else {
block_39:
                                        if ((s32) (temp_r1_12 + (subroutine_arg0.unk3 - temp_r3_4)) >= temp_r2_8) {
block_40:
                                            if ((sp1C == 0) || ((0x1C & *sp44) == 8)) {
                                                AddRings(1);
                                            }
                                            CreateCollectRingEffect((s32) temp_r7_2, (s32) (s16) temp_r6_3);
                                            var_r5_2->unk0 = 0xFE;
                                        }
                                    }
                                }
                            }
                            var_r5_2 += 2;
                            var_r3_2 = var_sb->qWorldY;
                            var_r2_2 = var_sb->qWorldX;
                        }
                        var_r1_3 = *var_r5_2;
                    } while (var_r1_3 != 0xFF);
                }
            }
            var_r8_2 = (u32) (u16) sp38;
            if (((s32) var_r8_2 <= (s32) ((s32) (sp24->unk2 + (var_r2_2 >> 8) + 0x10) >> 8)) && (var_r8_2 < sp10)) {
                goto loop_27;
            }
        }
        var_sl_2 = (u32) (u16) sp3C;
        if (((s32) var_sl_2 <= (s32) ((s32) (sp24->unk3 + (var_r3_2 >> 8) + 8) >> 8)) && (var_sl_2 < sp14)) {
            goto loop_23;
        }
    }
    var_sl_3 = (u32) (gCamera.y << 8) >> 0x10;
    if (!(0x20 & var_sb->unk13C)) {
        goto block_90;
    }
    if ((s32) (var_sl_3 << 8) >= (s32) (gCamera.y + 0xA0)) {
        goto block_90;
    }
    if (var_sl_3 >= sp14) {
        goto block_90;
    }
loop_58:
    temp_r1_13 = (u32) (gCamera.x << 8) >> 0x10;
    var_r8_3 = temp_r1_13;
    if ((s32) (temp_r1_13 << 8) >= (s32) (gCamera.x + 0xF0)) {
        goto block_87;
    }
    temp_r2_9 = sp10 * var_sl_3;
    var_r0_2 = *((var_r8_3 * 4) + ((temp_r2_9 * 4) + sp8));
    sp34 = temp_r2_9;
    if (var_r8_3 >= sp10) {
        goto block_87;
    }
loop_62:
    if (var_r0_2 == 0) {
        goto block_84;
    }
    var_r5_3 = sp8 + (var_r0_2 - 8);
loop_82:
    temp_r1_14 = var_r5_3->unk0;
    switch (temp_r1_14) {                           /* irregular */
    default:
        temp_r7_3 = (var_r5_3->unk0 * 8) + (var_r8_3 << 8);
        temp_r6_4 = (var_r5_3->unk1 * 8) + (var_sl_3 << 8);
        if ((u32) ((temp_r7_3 - gCamera.x) + 8) <= 0x100U) {
            temp_r0_6 = temp_r6_4 - gCamera.y;
            if ((temp_r0_6 >= 0) && ((s32) (temp_r0_6 - 0x10) <= 0xA0)) {
                temp_r2_10 = (s32) var_sb->qWorldX >> 8;
                if (((s32) (temp_r7_3 - 0x40) <= temp_r2_10) && ((s32) (temp_r7_3 + 0x40) >= temp_r2_10)) {
                    temp_r2_11 = (s32) var_sb->qWorldY >> 8;
                    if (((s32) (temp_r6_4 - 0x48) <= temp_r2_11) && ((s32) (temp_r6_4 + 0x38) >= temp_r2_11)) {
                        sub_802AB10(temp_r7_3, temp_r6_4, var_sb);
                        var_r5_3->unk0 = 0xFEU;
                        goto block_74;
                    }
                }
                var_r5_3 += 2;
                if ((sp18 == 0) || (sp4->oamBaseIndex == 0xFF)) {
                    sp4->oamBaseIndex = 0xFF;
                    sp4->x = temp_r7_3 - gCamera.x;
                    sp4->y = temp_r6_4 - gCamera.y;
                    DisplaySprite(sp4);
                    goto block_81;
                }
                temp_r2_12 = &gOamMallocBuffer[sp4->oamBaseIndex];
                sp48 = temp_r2_12;
                temp_r0_7 = OamMalloc((u8) ((u32) ((u16) sp4->oamFlags & 0x7C0) >> 6));
                if (iwram_end == temp_r0_7) {
                    return;
                }
                (void *)0x040000D4->unk0 = temp_r2_12;
                (void *)0x040000D4->unk4 = temp_r0_7;
                (void *)0x040000D4->unk8 = 0x80000003;
                temp_r3_5 = temp_r0_7->all.attr1 & 0xFE00;
                temp_r0_7->all.attr1 = temp_r3_5;
                temp_r2_13 = temp_r0_7->all.attr0 & 0xFF00;
                temp_r0_7->all.attr0 = temp_r2_13;
                temp_r0_7->all.attr0 = temp_r2_13 + (u8) ((temp_r6_4 - gCamera.y) - (u16) spC->offsetY);
                temp_r0_7->all.attr1 = temp_r3_5 + (((temp_r7_3 - gCamera.x) - (u16) spC->offsetX) & 0x1FF);
block_81:
                sp18 = (s32) (u8) (sp18 + 1);
                goto loop_82;
            }
        }
    case 0xFE:
block_74:
        var_r5_3 += 2;
        goto loop_82;
    case 0xFF:
block_84:
        temp_r0_8 = var_r8_3 + 1;
        var_r8_3 = (u32) temp_r0_8;
        if ((s32) (temp_r0_8 << 8) < (s32) (gCamera.x + 0xF0)) {
            var_r0_2 = *((var_r8_3 * 4) + ((sp34 * 4) + sp8));
            if (var_r8_3 < sp10) {
                goto loop_62;
            }
        }
block_87:
        temp_r0_9 = var_sl_3 + 1;
        var_sl_3 = (u32) temp_r0_9;
        if (((s32) (temp_r0_9 << 8) < (s32) (gCamera.y + 0xA0)) && (var_sl_3 < sp14)) {
            goto loop_58;
        }
block_90:
        temp_r0_10 = sp1C + 1;
        sp1C = (s32) temp_r0_10;
        if ((u32) temp_r0_10 <= 1U) {
            goto loop_6;
        }
block_143:
        temp_r0_11 = gCamera.y;
        temp_r1_15 = (u32) (temp_r0_11 << 8) >> 0x10;
        var_sl_4 = temp_r1_15;
        var_r1_4 = temp_r1_15 << 8;
loop_168:
        if ((var_r1_4 < (s32) (temp_r0_11 + 0xA0)) && (var_sl_4 < sp14)) {
            temp_r1_16 = (u32) (gCamera.x << 8) >> 0x10;
            var_r8_4 = temp_r1_16;
            if ((s32) (temp_r1_16 << 8) >= (s32) (gCamera.x + 0xF0)) {
                goto block_167;
            }
            if (var_r8_4 >= sp10) {
                goto block_167;
            }
loop_148:
            temp_r0_12 = *((var_r8_4 * 4) + ((sp10 * var_sl_4 * 4) + sp8));
            if (temp_r0_12 == 0) {
                goto block_164;
            }
            var_r5_4 = sp8 + (temp_r0_12 - 8);
loop_162:
            temp_r1_17 = var_r5_4->unk0;
            switch (temp_r1_17) {                   /* switch 1; irregular */
            default:                                /* switch 1 */
                temp_r7_4 = (var_r5_4->unk0 * 8) + (var_r8_4 << 8);
                temp_r6_5 = (var_r5_4->unk1 * 8) + (var_sl_4 << 8);
                if (((u32) ((temp_r7_4 - gCamera.x) + 8) > 0x100U) || (temp_r0_13 = temp_r6_5 - gCamera.y, (temp_r0_13 < 0)) || ((s32) (temp_r0_13 - 0x10) > 0xA0)) {
                case 0xFE:                          /* switch 1 */
                    var_r5_4 += 2;
                    goto loop_162;
                }
                var_r5_4 += 2;
                if ((sp18 == 0) || (sp4->oamBaseIndex == 0xFF)) {
                    sp4->oamBaseIndex = 0xFF;
                    sp4->x = temp_r7_4 - gCamera.x;
                    sp4->y = temp_r6_5 - gCamera.y;
                    DisplaySprite(sp4);
                    goto block_161;
                }
                temp_r2_14 = &gOamMallocBuffer[sp4->oamBaseIndex];
                sp48 = temp_r2_14;
                temp_r0_14 = OamMalloc((u8) ((u32) ((u16) sp4->oamFlags & 0x7C0) >> 6));
                if (iwram_end != temp_r0_14) {
                    (void *)0x040000D4->unk0 = temp_r2_14;
                    (void *)0x040000D4->unk4 = temp_r0_14;
                    (void *)0x040000D4->unk8 = 0x80000003;
                    temp_r3_6 = temp_r0_14->all.attr1 & 0xFE00;
                    temp_r0_14->all.attr1 = temp_r3_6;
                    temp_r2_15 = temp_r0_14->all.attr0 & 0xFF00;
                    temp_r0_14->all.attr0 = temp_r2_15;
                    temp_r0_14->all.attr0 = temp_r2_15 + (u8) ((temp_r6_5 - gCamera.y) - (u16) spC->offsetY);
                    temp_r0_14->all.attr1 = temp_r3_6 + (((temp_r7_4 - gCamera.x) - (u16) spC->offsetX) & 0x1FF);
block_161:
                    sp18 = (s32) (u8) (sp18 + 1);
                    goto loop_162;
                }
                break;
            case 0xFF:                              /* switch 1 */
block_164:
                temp_r0_15 = var_r8_4 + 1;
                var_r8_4 = (u32) temp_r0_15;
                if (((s32) (temp_r0_15 << 8) < (s32) (gCamera.x + 0xF0)) && (var_r8_4 < sp10)) {
                    goto loop_148;
                }
block_167:
                temp_r0_16 = var_sl_4 + 1;
                var_sl_4 = (u32) temp_r0_16;
                var_r1_4 = temp_r0_16 << 8;
                goto loop_168;
            }
        }
        return;
    }
}

void Task_RingsMgrExtraZone(void) {
    Sprite *sp4;
    void *sp8;
    SpriteOffset *spC;
    u32 sp10;
    u32 sp14;
    s32 sp18;
    ? *sp1C;
    s32 sp20;
    s32 sp24;
    s32 sp28;
    OamData *sp2C;
    OamData *temp_r0_6;
    OamData *temp_r2_5;
    Player *var_sl;
    Sprite *temp_r1;
    s16 temp_r7;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_4;
    s32 temp_r0_5;
    s32 temp_r1_2;
    s32 temp_r1_3;
    s32 temp_r1_4;
    s32 temp_r1_5;
    s32 temp_r2_2;
    s32 temp_r2_3;
    s32 temp_r2_4;
    s32 temp_r6;
    s32 temp_r6_2;
    s32 temp_r7_2;
    s32 var_r0;
    s32 var_r1_3;
    s32 var_r2_2;
    s32 var_r3;
    s8 temp_r3;
    s8 temp_r3_2;
    struct Camera *var_r2_3;
    u16 temp_r0_7;
    u16 temp_r0_8;
    u16 temp_r2_6;
    u16 temp_r3_3;
    u32 temp_r1_6;
    u32 temp_r1_7;
    u32 temp_r2;
    u32 var_r8;
    u32 var_r8_2;
    u32 var_sb;
    u32 var_sb_2;
    u8 *var_r5;
    u8 temp_r1_8;
    u8 var_r1;
    u8 var_r1_2;
    u8 var_r2;
    void *temp_r0;
    void *var_r5_2;

    var_sl = saved_reg_r10;
    temp_r1 = gCurTask->data + 0x03000000;
    sp4 = temp_r1;
    sp8 = temp_r1->unk28;
    sp18 = 0;
    if (gCamera.unk6A != 0) {
        RLUnCompWram(*(((s32) (gStageData.currMapIndex << 0x10) >> 0xE) + &gUnknown_080CEF58), sp8);
    }
    if ((gStageData.zone == 8) && (gStageData.unk4 != 3)) {
        return;
    }
    subroutine_arg0.unk0 = -0xA;
    subroutine_arg0.unk1 = 0xF6U;
    subroutine_arg0.unk2 = 0xA;
    subroutine_arg0.unk3 = 0xAU;
    UpdateSpriteAnimation(sp4);
    temp_r2 = sp4->frameNum;
    if ((temp_r2 >> 0x1C) == 0) {
        spC = &gRefSpriteTables->dimensions[sp4->anim][temp_r2];
    } else {
        spC = gRefSpriteTables->dimensions[sp4->anim] + (temp_r2 * 0x10);
    }
    temp_r0 = sp8 + 4;
    sp10 = (u32) (u16) sp8->unk4;
    sp8 = temp_r0 + 4 + 4;
    sp14 = (u32) (u16) temp_r0->unk4;
    var_r2 = 0;
loop_9:
    if (var_r2 == 0) {
        var_r1 = gStageData.playerIndex;
    } else {
        var_r1 = (u8) ((u32) (var_sl->unk2B << 0x1E) >> 0x1E);
    }
    var_sl = &gPlayers[var_r1];
    sp28 = var_r2 + 1;
    if (var_sl->moveState & 0x100) {

    } else if (var_sl->charFlags.anim0 == 0x66) {

    } else if (var_sl->unk48 != 0) {

    } else {
        temp_r2_2 = var_sl->qWorldY;
        temp_r1_2 = temp_r2_2 >> 8;
        var_sb = (u32) ((temp_r1_2 + (s8) subroutine_arg0.unk1) << 8) >> 0x10;
        var_r3 = temp_r2_2;
        if ((s32) var_sb > (s32) ((s32) ((temp_r1_2 + (s8) subroutine_arg0.unk3) - 0x10) >> 8)) {

        } else if (var_sb >= sp14) {

        } else {
            sp1C = &subroutine_arg0;
loop_23:
            var_r2_2 = var_sl->qWorldX;
            temp_r1_3 = var_r2_2 >> 8;
            var_r8 = (u32) (((temp_r1_3 + sp1C->unk0) - 8) << 8) >> 0x10;
            sp24 = var_sb + 1;
            if (((s32) var_r8 <= (s32) ((s32) ((temp_r1_3 + sp1C->unk2) - 8) >> 8)) && (var_r8 < sp10)) {
loop_25:
                temp_r0_2 = *((var_r8 * 4) + ((sp10 * var_sb * 4) + sp8));
                sp20 = var_r8 + 1;
                if (temp_r0_2 != 0) {
                    var_r5 = sp8 + (temp_r0_2 - 8);
                    var_r1_2 = *var_r5;
                    if (var_r1_2 != 0xFF) {
                        do {
                            if (var_r1_2 == 0xFE) {
                                var_r5 += 2;
                            } else {
                                temp_r7 = (var_r5->unk0 * 8) + (var_r8 << 8);
                                temp_r6 = (var_r5->unk1 * 8) + (var_sb << 8);
                                if (1 != 0) {
                                    temp_r2_3 = temp_r7 - 8;
                                    temp_r3 = subroutine_arg0.unk0;
                                    temp_r1_4 = ((s32) var_sl->qWorldX >> 8) + temp_r3;
                                    if (temp_r2_3 <= temp_r1_4) {
                                        if ((s32) (temp_r7 + 8) < temp_r1_4) {
                                            if (temp_r2_3 >= temp_r1_4) {
                                                goto block_34;
                                            }
                                        } else {
                                            goto block_35;
                                        }
                                    } else {
block_34:
                                        if ((s32) (temp_r1_4 + (subroutine_arg0.unk2 - temp_r3)) >= temp_r2_3) {
block_35:
                                            temp_r2_4 = temp_r6 - 0x10;
                                            temp_r3_2 = (s8) subroutine_arg0.unk1;
                                            temp_r1_5 = ((s32) var_sl->qWorldY >> 8) + temp_r3_2;
                                            if (temp_r2_4 <= temp_r1_5) {
                                                if (temp_r6 < temp_r1_5) {
                                                    if (temp_r2_4 >= temp_r1_5) {
                                                        goto block_38;
                                                    }
                                                } else {
                                                    goto block_39;
                                                }
                                            } else {
block_38:
                                                if ((s32) (temp_r1_5 + ((s8) subroutine_arg0.unk3 - temp_r3_2)) >= temp_r2_4) {
block_39:
                                                    AddRings(1);
                                                    CreateCollectRingEffect((s32) temp_r7, (s32) (s16) temp_r6);
                                                    var_r5->unk0 = 0xFE;
                                                }
                                            }
                                        }
                                    }
                                }
                                var_r5 += 2;
                                var_r3 = var_sl->qWorldY;
                                var_r2_2 = var_sl->qWorldX;
                            }
                            var_r1_2 = *var_r5;
                        } while (var_r1_2 != 0xFF);
                    }
                }
                var_r8 = (u32) (u16) sp20;
                if (((s32) var_r8 <= (s32) ((s32) (((var_r2_2 >> 8) + sp1C->unk2) - 8) >> 8)) && (var_r8 < sp10)) {
                    goto loop_25;
                }
            }
            var_sb = (u32) (u16) sp24;
            if (((s32) var_sb <= (s32) ((s32) (((var_r3 >> 8) + sp1C->unk3) - 0x10) >> 8)) && (var_sb < sp14)) {
                goto loop_23;
            }
        }
    }
    var_r2 = (u8) sp28;
    if ((u32) var_r2 <= 1U) {
        goto loop_9;
    }
    var_r2_3 = &gCamera;
    temp_r1_6 = (u32) (gCamera.y << 8) >> 0x10;
    var_sb_2 = temp_r1_6;
    var_r1_3 = temp_r1_6 << 8;
    var_r0 = gCamera.y + 0xA0;
loop_72:
    if ((var_r1_3 < var_r0) && (var_sb_2 < sp14)) {
        temp_r0_3 = var_r2_3->x;
        temp_r1_7 = (u32) (temp_r0_3 << 8) >> 0x10;
        var_r8_2 = temp_r1_7;
        if ((s32) (temp_r1_7 << 8) >= (s32) (temp_r0_3 + 0xF0)) {
            goto block_71;
        }
        if (var_r8_2 >= sp10) {
            goto block_71;
        }
loop_54:
        temp_r0_4 = *((var_r8_2 * 4) + ((sp10 * var_sb_2 * 4) + sp8));
        if (temp_r0_4 != 0) {
            var_r5_2 = sp8 + (temp_r0_4 - 8);
loop_67:
            temp_r1_8 = var_r5_2->unk0;
            if (temp_r1_8 == 0xFF) {
                goto block_68;
            }
            if ((temp_r1_8 == 0xFE) || (temp_r7_2 = (var_r5_2->unk0 * 8) + (var_r8_2 << 8), temp_r6_2 = (var_r5_2->unk1 * 8) + (var_sb_2 << 8), ((u32) ((temp_r7_2 - gCamera.x) + 8) > 0x100U)) || (temp_r0_5 = temp_r6_2 - gCamera.y, (temp_r0_5 < 0)) || ((s32) (temp_r0_5 - 0x10) > 0xA0)) {
                var_r5_2 += 2;
                goto loop_67;
            }
            var_r5_2 += 2;
            if ((sp18 == 0) || (sp4->oamBaseIndex == 0xFF)) {
                sp4->oamBaseIndex = 0xFF;
                sp4->x = temp_r7_2 - gCamera.x;
                sp4->y = temp_r6_2 - gCamera.y;
                DisplaySprite(sp4);
                goto block_66;
            }
            temp_r2_5 = &gOamMallocBuffer[sp4->oamBaseIndex];
            sp2C = temp_r2_5;
            temp_r0_6 = OamMalloc((u8) ((u32) ((u16) sp4->oamFlags & 0x7C0) >> 6));
            if (iwram_end != temp_r0_6) {
                (void *)0x040000D4->unk0 = temp_r2_5;
                (void *)0x040000D4->unk4 = temp_r0_6;
                (void *)0x040000D4->unk8 = 0x80000003;
                temp_r3_3 = temp_r0_6->all.attr1 & 0xFE00;
                temp_r0_6->all.attr1 = temp_r3_3;
                temp_r2_6 = temp_r0_6->all.attr0 & 0xFF00;
                temp_r0_6->all.attr0 = temp_r2_6;
                temp_r0_6->all.attr0 = temp_r2_6 + (u8) ((temp_r6_2 - gCamera.y) - (u16) spC->offsetY);
                temp_r0_6->all.attr1 = temp_r3_3 + (((temp_r7_2 - gCamera.x) - (u16) spC->offsetX) & 0x1FF);
block_66:
                sp18 = (s32) (u8) (sp18 + 1);
                goto loop_67;
            }
        } else {
block_68:
            temp_r0_7 = var_r8_2 + 1;
            var_r8_2 = (u32) temp_r0_7;
            if (((s32) (temp_r0_7 << 8) < (s32) (gCamera.x + 0xF0)) && (var_r8_2 < sp10)) {
                goto loop_54;
            }
block_71:
            temp_r0_8 = var_sb_2 + 1;
            var_sb_2 = (u32) temp_r0_8;
            var_r1_3 = temp_r0_8 << 8;
            var_r2_3 = &gCamera;
            var_r0 = var_r2_3->y + 0xA0;
            goto loop_72;
        }
    }
}
#endif

void sub_802AB10(s16 worldX, s16 worldY, Player *p)
{
    u16 temp_r0;
    RingsMgrUnk30 *strc30;
    Sprite *s;

    strc30 = TASK_DATA(TaskCreate(sub_802AB8C, sizeof(RingsMgrUnk30), 0x2000U, 0U, NULL));
    s = &strc30->s;
    strc30->p = p;
    strc30->magnitude = 0;
    s->x = worldX;
    s->y = worldY;
    s->tiles = OBJ_VRAM0 + 0x4180;
    s->oamFlags = 0x280;
    s->anim = ANIM_RING;
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = 0xFF;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0x41200;
}

void sub_802AB8C(void)
{
    RingsMgrUnk30 *strc30;
    s16 temp_r0_2;
    s32 sxMinus8;
    s32 temp_r5_2;
    s8 temp_r3_2;
    s8 temp_r6;
    s16 syTemp;
    s16 sxTemp;
    PlayerSpriteInfo *temp_r0_5;
    PlayerSpriteInfo *psiPlayer;
    Player *p;
    Sprite *s;
    s16 dx, dy;

    strc30 = TASK_DATA(gCurTask);
    p = strc30->p;
    s = &strc30->s;
    dx = I(p->qWorldX) - s->x;
    dy = I(p->qWorldY) - s->y;
    temp_r0_2 = sa2__sub_8004418(dy, dx);
    strc30->magnitude += 64;
    s->x += (strc30->magnitude * COS(temp_r0_2)) >> 0x16;
    s->y += (strc30->magnitude * SIN(temp_r0_2)) >> 0x16;
    syTemp = s->y;
    sxTemp = s->x;

    if (((((s->x - 8) <= HB_LEFT(I(p->qWorldX), p->spriteInfoBody->s.hitboxes[0].b))
          && ((s->x + 8) >= HB_LEFT(I(p->qWorldX), p->spriteInfoBody->s.hitboxes[0].b)))
         || (((s->x - 8) >= HB_LEFT(I(p->qWorldX), p->spriteInfoBody->s.hitboxes[0].b))
             && (HB_RIGHT(I(p->qWorldX), p->spriteInfoBody->s.hitboxes[0].b) >= (s->x - 8))))
        && (((syTemp - 16 > HB_TOP(I(p->qWorldY), p->spriteInfoBody->s.hitboxes[0].b))
             && (HB_BOTTOM(I(p->qWorldY), p->spriteInfoBody->s.hitboxes[0].b) >= syTemp - 16))
            || ((syTemp >= HB_TOP(I(p->qWorldY), p->spriteInfoBody->s.hitboxes[0].b))
                && (HB_BOTTOM(I(p->qWorldY), p->spriteInfoBody->s.hitboxes[0].b) >= syTemp - 16)))) {
        if (!(p->moveState & MOVESTATE_100)) {
            AddRings(1);
            CreateCollectRingEffect(sxTemp, syTemp);
        }
        TaskDestroy(gCurTask);
        return;
    }

block_past_if:
    s->x -= gCamera.x;
    s->y -= gCamera.y;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
    s->x = sxTemp;
    s->y = syTemp;
}

void Task_802ACF0(void)
{
    RingsMgrUnk2C *strc2C = TASK_DATA(gCurTask);
    Sprite *s = &strc2C->s;
    s16 temp_r5 = s->x;
    s16 temp_r6 = s->y;

    s->x -= gCamera.x;
    s->y -= gCamera.y;
    if (UpdateSpriteAnimation(s) == ACMD_RESULT__ENDED) {
        DisplaySprite(s);
        gStageData.unkB5 -= 1;
        TaskDestroy(gCurTask);
        return;
    }
    DisplaySprite(s);
    s->x = (s16)temp_r5;
    s->y = (s16)temp_r6;
}

void TaskDestructor_RingsMgr(Task *t)
{
    RingsManager *mgr = TASK_DATA(t);
    EwramFree(mgr->ringPositions);
}
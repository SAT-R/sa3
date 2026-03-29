#include "global.h"
#include "game/sa1_sa2_shared/rings_manager.h"

void AddRings(s32 count);
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
    /* 0x28 */ void *ringPositions;
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

#define READ_START_INDEX(p, hrc, rx, ry) (*((u32 *)((((u8 *)(p)) + (((hrc) * (ry)) * (sizeof(u32)))) + ((rx) * (sizeof(u32))))))
#define DATA_START(data)                 (void *)((u8 *)(data) - (sizeof(u32) * 2))

#define TO_REGION(pos) ((pos) >> 8)

#define REGION_LOWER(posX, bound, offset)                                                                                                  \
    ({                                                                                                                                     \
        s32 a = (posX);                                                                                                                    \
        s32 b = (bound);                                                                                                                   \
        TO_REGION(a + b + offset);                                                                                                         \
    })

// Swapped for the region upper calc??
#define REGION_UPPER(posX, bound, offset)                                                                                                  \
    ({                                                                                                                                     \
        s32 a = (posX);                                                                                                                    \
        s32 b = (bound);                                                                                                                   \
        TO_REGION(b + a + offset);                                                                                                         \
    })

// From header...
#define RECT_TOUCHING_RING(posX, posY, ringIntX, ringIntY, rect)                                                                           \
    ((((ringIntX - TILE_WIDTH) <= RECT_LEFT((posX), rect) && (ringIntX + TILE_WIDTH) >= RECT_LEFT((posX), rect))                           \
      || ((ringIntX - TILE_WIDTH) >= RECT_LEFT((posX), rect) && RECT_RIGHT((posX), rect) >= (ringIntX - TILE_WIDTH)))                      \
     && ((((ringIntY - (TILE_WIDTH * 2)) <= RECT_TOP((posY), rect) && ringIntY >= RECT_TOP((posY), rect))                                  \
          || ((ringIntY - (TILE_WIDTH * 2)) >= RECT_TOP((posY), rect) && RECT_BOTTOM((posY), rect) >= (ringIntY - (TILE_WIDTH * 2))))))

// From header...
#define HB_TOUCHING_RING(posX, posY, ringIntX, ringIntY, hb)                                                                               \
    ((((ringIntX - TILE_WIDTH) <= HB_LEFT((posX), hb) && (ringIntX + TILE_WIDTH) >= HB_LEFT((posX), hb))                                   \
      || ((ringIntX - TILE_WIDTH) >= HB_LEFT((posX), hb) && HB_RIGHT((posX), hb) >= (ringIntX - TILE_WIDTH)))                              \
     && ((((ringIntY - (TILE_WIDTH * 2)) <= HB_TOP((posY), hb) && ringIntY >= HB_TOP((posY), hb))                                          \
          || ((ringIntY - (TILE_WIDTH * 2)) >= HB_TOP((posY), hb) && HB_BOTTOM((posY), hb) >= (ringIntY - (TILE_WIDTH * 2))))))

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
                                        temp_r7 = (var_r5[0] * 8) + (var_r8 << 8);
                                        temp_r6_2 = (var_r5[1] * 8) + (var_sl << 8);
                                        temp_r2_3 = temp_r7 - 8;
                                        temp_r3 = sp00[0];
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
                                            if ((s32) (temp_r1_6 + (sp00[2] - temp_r3)) >= temp_r2_3) {
block_122:
                                                temp_r2_4 = temp_r6_2 - 0x10;
                                                temp_r3_2 = sp00[1];
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
                                                    if ((s32) (temp_r1_7 + (sp00[3] - temp_r3_2)) >= temp_r2_4) {
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
                                                        var_r5[0] = 0xFE;
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
                            temp_r7_2 = (var_r5_2[0] * 8) + (var_r8_2 << 8);
                            temp_r6_3 = (var_r5_2[1] * 8) + (var_sl_2 << 8);
                            temp_r2_7 = temp_r7_2 - 8;
                            temp_r3_3 = sp00[0];
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
                                if ((s32) (temp_r1_11 + (sp00[2] - temp_r3_3)) >= temp_r2_7) {
block_36:
                                    temp_r2_8 = temp_r6_3 - 0x10;
                                    temp_r3_4 = sp00[1];
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
                                        if ((s32) (temp_r1_12 + (sp00[3] - temp_r3_4)) >= temp_r2_8) {
block_40:
                                            if ((sp1C == 0) || ((0x1C & *sp44) == 8)) {
                                                AddRings(1);
                                            }
                                            CreateCollectRingEffect((s32) temp_r7_2, (s32) (s16) temp_r6_3);
                                            var_r5_2[0] = 0xFE;
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
#endif

void Task_RingsMgrExtraZone(void)
{
    s8 rect[4];
    bool32 sp08 = TRUE;
    const SpriteOffset *dimensions;
    RingsManager *mgr;
    u32 *rings;
    u32 h_regionCount, v_regionCount;
    OamData *oamAllocated;
    OamData *oamDat;
    Player *p;
    s32 rx;
    s32 ry;
    struct Camera *cam;
    MapEntity_Ring *meRing;
    u8 pid;
    u16 regionX, regionY;
    Sprite *s;
    s16 mapIndex;
    u8 drawCount;

    mgr = TASK_DATA(gCurTask);

    rings = mgr->ringPositions;
    mapIndex = gStageData.currMapIndex;
    drawCount = 0;
    if (gCamera.unk6A != 0) {
        RLUnCompWram(gUnknown_080CEF58[mapIndex], rings);
    }
    if ((gStageData.zone == 8) && (gStageData.unk4 != 3)) {
        return;
    }
    rect[0] = -10;
    rect[1] = -10;
    rect[2] = +10;
    rect[3] = +10;
    UpdateSpriteAnimation(&mgr->s);
    if ((mgr->s.frameNum >> 28) == 0) {
        dimensions = &gRefSpriteTables->dimensions[mgr->s.anim][mgr->s.frameNum];
    } else {
        dimensions = &gRefSpriteTables->dimensions[mgr->s.anim][mgr->s.frameNum * 8];
    }
    (rings[4] + 4);
    rings[4] + 4;
    rings = rings + 4 + 4 + 4;

    pid = 0;
    do {
        s16 leftIndex;
        p = GET_SP_PLAYER_V0(pid);

        // Handle collisions
        for (regionY = REGION_LOWER(I(p->qWorldY), rect[1], 0);
             regionY <= REGION_UPPER(I(p->qWorldY), rect[3], TILE_WIDTH) && regionY < v_regionCount; regionY++) {

            for (regionX = REGION_LOWER(I(p->qWorldX), rect[leftIndex], -TILE_WIDTH);
                 regionX <= REGION_UPPER(I(p->qWorldX), rect[2], TILE_WIDTH * 2) && regionX < h_regionCount; regionX++) {

                u32 offset = READ_START_INDEX(rings, h_regionCount, regionX, regionY);
                if (offset) {
                    meRing = DATA_START(rings) + offset;

                    while (meRing->x != (u8)MAP_ENTITY_STATE_ARRAY_END) {
                        if (meRing->x != (u8)MAP_ENTITY_STATE_INITIALIZED) {
                            // _080080D6
                            rx = TO_WORLD_POS(meRing->x, regionX);
                            ry = TO_WORLD_POS(meRing->y, regionY);

                            if (sp08 != FALSE
#if (GAME == GAME_SA2)
                                || (gCurrentLevel != LEVEL_INDEX(ZONE_FINAL, ACT_TRUE_AREA_53) && !(p->moveState & MOVESTATE_2))
#endif
                               ) {
                                if (RECT_TOUCHING_RING(I(p->qWorldX), I(p->qWorldY), rx, ry, (Rect8 *)rect)) {
#if (GAME == GAME_SA3)
                                    AddRings(1);
#else
#ifndef COLLECT_RINGS_ROM
                                    INCREMENT_RINGS(1);
#else
                                    {
                                        s32 prevLives, newLives;
                                        s32 oldRings = gRingCount;
                                        gRingCount += 1;
                                        if (!(IS_EXTRA_STAGE(CURRENT_LEVEL(0)))) {
                                            newLives = Div(gRingCount, 100);
                                            prevLives = Div(oldRings, 100);
                                            if ((newLives != prevLives) && (gGameMode == GAME_MODE_SINGLE_PLAYER)) {
                                                if (gNumLives < 255) {
                                                    gNumLives++;
                                                };
                                            }
                                        }
                                    }
#endif // COLLECT_RINGS_ROM
                                    if (gGameMode == GAME_MODE_MULTI_PLAYER_COLLECT_RINGS && gRingCount > 255) 
                                    {
                                        gRingCount = 255;
                                    }
#endif // (GAME == GAME_SA3)


                                    CreateCollectRingEffect(rx, ry);
                                    meRing->x = (u8)MAP_ENTITY_STATE_INITIALIZED;
                                }
                            }
                        }
                        meRing++;
                    }
                }
            }
        }
    } while (++pid < NUM_SINGLE_PLAYER_CHARS);

    for (; TO_WORLD_POS(0, regionY) < gCamera.y + DISPLAY_HEIGHT && regionY < v_regionCount; regionY++) {
#ifndef NON_MATCHING
        while (0)
            ;
#endif
        for (regionX = TO_REGION(gCamera.x); TO_WORLD_POS(0, regionX) < gCamera.x + DISPLAY_WIDTH && regionX < h_regionCount;
             regionX++) {
            u32 offset = READ_START_INDEX(rings, h_regionCount, regionX, regionY);

            if (offset != 0) {
                meRing = DATA_START(rings) + offset;
                while (meRing->x != (u8)MAP_ENTITY_STATE_ARRAY_END) {
                    if (meRing->x == (u8)MAP_ENTITY_STATE_INITIALIZED) {
                        meRing++;
                        continue;
                    }

                    rx = TO_WORLD_POS(meRing->x, regionX);
                    ry = TO_WORLD_POS(meRing->y, regionY);

                    if (rx - gCamera.x < -TILE_WIDTH || (rx - gCamera.x) + TILE_WIDTH > DISPLAY_WIDTH + 2 * TILE_WIDTH
                        || ry - gCamera.y < 0 || (ry - gCamera.y) - 2 * TILE_WIDTH > DISPLAY_HEIGHT) {
                        meRing++;
                    } else {
                        meRing++;

                        if ((drawCount == 0) || s->oamBaseIndex == 0xFF) {
                            s->oamBaseIndex = 0xFF;
                            s->x = rx - gCamera.x;
                            s->y = ry - gCamera.y;
                            DisplaySprite(s);
                        } else {
                            OamData *oamDat = &gOamMallocBuffer[s->oamBaseIndex];
                            OamData *oamAllocated = OamMalloc(GET_SPRITE_OAM_ORDER(s));

                            if (iwram_end == oamAllocated)
                                return;

                            DmaCopy16(3, oamDat, oamAllocated, sizeof(OamDataShort));

#if !EXTENDED_OAM
                            // TODO: Can these be done more explicitly?
                            oamAllocated->all.attr1 &= 0xFE00;
                            oamAllocated->all.attr0 &= 0xFF00;
                            oamAllocated->all.attr0 += ((ry - gCamera.y) - dimensions->offsetY) & 0xFF;
                            oamAllocated->all.attr1 += ((rx - gCamera.x) - dimensions->offsetX) & 0x1FF;
#else
                            oamAllocated->split.x = ((rx - gCamera.x) - dimensions->offsetX);
                            oamAllocated->split.y = ((ry - gCamera.y) - dimensions->offsetY);
#endif
                        }

                        drawCount++;
                    }
                }
            }
        }
    }
}

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
        && (((syTemp - 16 <= HB_TOP(I(p->qWorldY), p->spriteInfoBody->s.hitboxes[0].b))
             && (syTemp >= HB_TOP(I(p->qWorldY), p->spriteInfoBody->s.hitboxes[0].b)))
            || ((syTemp - 16 >= HB_TOP(I(p->qWorldY), p->spriteInfoBody->s.hitboxes[0].b))
                && (HB_BOTTOM(I(p->qWorldY), p->spriteInfoBody->s.hitboxes[0].b) >= syTemp - 16)))) {
        if (!(p->moveState & MOVESTATE_100)) {
            AddRings(1);
            CreateCollectRingEffect(sxTemp, syTemp);
        }
        TaskDestroy(gCurTask);
        return;
    }

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
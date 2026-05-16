#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "game/shared/stage/player.h"
#include "game/stage.h"

typedef struct ItemBox {
    /* 0x00 */ MapEntity *me;
    /* 0x04 */ u8 meX;
    /* 0x05 */ u8 id;
    /* 0x06 */ u8 meIndex;
    /* 0x07 */ u8 unk7;
    /* 0x08 */ u8 unk8;
    /* 0x09 */ u8 unk9;
    /* 0x0A */ s16 regionX;
    /* 0x0C */ s16 regionY;
    /* 0x0E */ u8 fillerE[0x2];
    /* 0x10 */ s16 unk10;
    /* 0x10 */ s16 unk12;
    /* 0x14 */ s32 unk14;
    /* 0x18 */ s32 unk18;
    /* 0x1C */ Sprite s;
    /* 0x44 */ Sprite s2;
    /* 0x6C */ Player *p;
} ItemBox; /* 0x70 */

void sub_8004428(s32, s32); /* extern */
void sub_800ED50(Player *); /* extern */
void sub_80179BC(Player *); /* extern */
void sub_8017A58(Player *); /* extern */
void sub_80267E8(); /* extern */
void sub_8027538(s32); /* extern */
void sub_802773C(u16, u16); /* extern */
void sub_8027768(u32, s32); /* extern */
void sub_80277AC(u32, s32); /* extern */
void sub_80277F0(u32, s32); /* extern */
void sub_8027834(); /* extern */
void sub_805CEBC(s32, s32, s32, s32, s32, s32); /* extern */
void TaskDestructor_ItemBox(Task *); /* static */
extern u32 gUnknown_080CF3B8[2];
extern u16 gUnknown_080CF3C0[][3];
extern u16 gUnknown_080CF420[];
extern u16 gUnknown_080CF43E[];
extern u16 gUnknown_080CF44E[];

void sub_802C35C(ItemBox *itembox, s32 param1);
void sub_802C618(ItemBox *itembox);
void Task_802D61C(void);
s32 sub_802CE4C(ItemBox *itembox);
s32 sub_802D354(ItemBox *itembox, s32 arg1, s32 arg2, u8 arg3, Player *p, s32 arg5);
s32 sub_802D4A8(Sprite *s, s32 arg1, s32 arg2, u8 arg3);
void sub_802D6CC(ItemBox *itembox, s32 arg1);

bool32 sub_802D694(s32 x, s32 y);

void Task_ItemBoxInit(void);
void sub_802C7B0(ItemBox *arg0);

#if 00

void CreateEntity_ItemBox(MapEntity *me, u16 regionX, u16 regionY, u8 id) {
    ItemBox *itembox;
    u16 temp_r1;
    u16 temp_r7;
    u8 temp_r0;
    u8 var_r0;
    Sprite *s;

    temp_r1 = regionX;
    temp_r7 = regionY;
    if (gStageData.gameMode == 3 || gStageData.gameMode == 4) {
        temp_r0 = me->index;
        if (temp_r0 == 0) {
            SET_MAP_ENTITY_INITIALIZED(me);
            return;
        } else {
            if (temp_r0 == 3) {
                var_r0 = 2;
                goto block_7;
            }
            goto block_8;
        }
    } else {
        if ((u8) gStageData.gameMode == 6) {
            var_r0 = 0x11;
block_7:
            me->index = var_r0;
        }
block_8:
        itembox = TASK_DATA(TaskCreate(Task_ItemBoxInit, sizeof(ItemBox), 0x2000U, 0U, TaskDestructor_ItemBox));
        itembox->meIndex = me->index;
        itembox->unk10 = 0;
        itembox->unk14 = TO_WORLD_POS(me->x, regionX);
        itembox->unk18 = TO_WORLD_POS(me->y, regionY);
        itembox->regionX = regionX;
        itembox->regionY = regionY;
        itembox->me = me;
        itembox->meX = me->x;
        itembox->id = id;
        itembox->p = NULL;
    
        s = &itembox->s;
        s->tiles = VramMalloc(0x10U);
        s->anim = ANIM_ITEM_BOX;
        s->variant = 0;
        s->oamFlags = SPRITE_OAM_ORDER(24);
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->prevVariant = 0xFF;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->hitboxes[0].index = -1;
        s->frameFlags = 0x1000;
        UpdateSpriteAnimation(s);
    
        s = &itembox->s2;
        s->tiles = VramMalloc(4U);
        s->oamFlags = SPRITE_OAM_ORDER(24);
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->prevVariant = -1;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->hitboxes[0].index = -1;
        s->frameFlags = 0x1000;
        sub_802C35C(itembox, 1);
    }
    
    SET_MAP_ENTITY_INITIALIZED(me);
}

void sub_802C35C(ItemBox *itembox, s32 param1) {
    s32 temp_r0;
    s32 temp_r1;
    s32 temp_r3_2;
    s32 temp_r3_3;
    s32 temp_r3_4;
    s32 var_r1_3;
    s32 var_r3_2;
    u16 *var_r1;
    u16 temp_r3;
    u16 var_r0;
    u32 temp_r5;
    u32 var_r0_2;
    u32 var_r1_2;
    u32 var_r3;
    u8 temp_r0_2;

    if (gStageData.gameMode != 6) {
        if (param1 == 0) {
            return;
        }
        if (itembox->meIndex == 0) {
            itembox->s2.frameFlags |= 0x40000;
            itembox->s2.palId = gStageData.playerIndex;
            temp_r0 = gPlayers[gStageData.playerIndex].charFlags.character * 6;
            itembox->s2.anim = *(temp_r0 + gUnknown_080CF420);
            var_r0 = *(temp_r0 + (gUnknown_080CF420 + 2));
            var_r1 = &itembox->s2.anim + 0xE;
        } else {
            itembox->s2.anim = *gUnknown_080CF3C0[itembox->meIndex];
            var_r0 = *((itembox->meIndex * 6) + &gUnknown_080CF3C0[0][1]);
            var_r1 = (u16 *) &itembox->s2.variant;
        }
        *var_r1 = (s8) var_r0;
        UpdateSpriteAnimation(&itembox->s2);
        return;
    }
    temp_r5 = (u32) (gStageData.timer << 0xB) >> 0x10;
    temp_r3 = (u16) Div((s32) temp_r5, 6);
    itembox->unk9 = temp_r5 - (temp_r3 * 6);
    temp_r0_2 = itembox->unk9;
    switch (temp_r0_2) {                            /* switch 1 */
    case 0:                                         /* switch 1 */
        temp_r3_2 = temp_r3 & 0xF;
        var_r1_2 = 0;
        if ((temp_r3_2 == 2) || (temp_r3_2 == 7) || (temp_r3_2 == 0xC)) {
            var_r1_2 = 1;
        }
        var_r3 = var_r1_2;
        break;
    case 1:                                         /* switch 1 */
        var_r3_2 = temp_r3 & 7;
        var_r0_2 = 0;
        if ((var_r3_2 != 1) && (var_r3_2 != 4)) {
            var_r1_3 = 6;
block_23:
            temp_r1 = var_r1_3 ^ var_r3_2;
            var_r0_2 = (u32) ((0 - temp_r1) | temp_r1) >> 0x1F;
        }
block_28:
        var_r3 = var_r0_2;
        break;
    case 2:                                         /* switch 1 */
        temp_r3_3 = temp_r3 & 0xF;
        var_r0_2 = 0;
        switch (temp_r3_3) {                        /* switch 2; irregular */
        case 14:                                    /* switch 2 */
            /* fallthrough */
        case 4:                                     /* switch 2 */
        case 9:                                     /* switch 2 */
block_27:
            var_r0_2 = 1;
            break;
        }
        goto block_28;
    case 3:                                         /* switch 1 */
        var_r1_3 = 7;
        var_r3_2 = temp_r3 & 7;
        var_r0_2 = 0;
        if ((var_r3_2 != 2) && (var_r3_2 != 4)) {
            goto block_23;
        }
        goto block_28;
    case 4:                                         /* switch 1 */
        temp_r3_4 = temp_r3 & 0xF;
        var_r0_2 = 0;
        if ((temp_r3_4 == 3) || (temp_r3_4 == 8) || (temp_r3_4 == 0xD)) {
            goto block_27;
        }
        goto block_28;
    case 5:                                         /* switch 1 */
        var_r3 = 0;
        break;
    default:                                        /* switch 1 */
        itembox->unk9 = 0;
        var_r3 = 1 & temp_r5;
        break;
    }
    itembox->meIndex = (u8) *((var_r3 * 2) + (itembox->unk9 * 4) + gUnknown_080CF44E);
    itembox->s.anim = gUnknown_080CF3B8[var_r3];
    itembox->s.variant = (u8) *((var_r3 * 4) + (gUnknown_080CF3B8 + 2));
    UpdateSpriteAnimation(&itembox->s);
    itembox->s2.anim = *gUnknown_080CF3C0[itembox->meIndex];
    itembox->s2.variant = (u8) *((itembox->meIndex * 6) + &gUnknown_080CF3C0[0][1]);
    UpdateSpriteAnimation(&itembox->s2);
}

void Task_ItemBoxInit() {
    Player *p;
    s32 temp_r0_2;
    u32 temp_r0;
    u32 i;
    u32 var_r1_2;

    ItemBox *itembox = TASK_DATA(gCurTask);

    if ((gStageData.gameMode > 4U) && (itembox->me->x == (u8)-3)) {
        itembox->p = NULL;
        sub_802C618(itembox);
        return;
    }
    if (sub_802CE4C(itembox) != 0) {
        sub_802C618(itembox);
    } else {
        sub_802C35C(itembox, 0);
    }
    if (sub_802D694(itembox->unk14, itembox->unk18) != 0) {
        i = 0;
        do {
            p = GET_SP_PLAYER_V0(i);
            ResolvePlayerSpriteCollision(&itembox->s, p);
        } while (++i < 2);
        SET_MAP_ENTITY_NOT_INITIALIZED(itembox->me, itembox->meX);
        TaskDestroy(gCurTask);
        return;
    }
    sub_8004428(Q(itembox->unk14), Q(itembox->unk18));
    sub_802D6CC(itembox, 0);
}

void sub_802C618(ItemBox* itembox) {
    s16 sp8;
    Player* p;
    Player* boxPlayer;
    PlayerSpriteInfo* spi;
    s16 i;

    sub_805CEBC(itembox->unk14 << 8, itembox->unk18 << 8, 0, 0, 1, 0);
    for(i = 0; i < 2; i++)
    {
        p = GET_SP_PLAYER_V0(i);
        CpuFill16(0, &itembox->s.hitboxes[0].b, sizeof(itembox->s.hitboxes));
        sub_8020950(&itembox->s, itembox->unk14, itembox->unk18, p, 0U);
    }

    boxPlayer = itembox->p;
    if (boxPlayer != NULL) {
        if ((itembox->unk8 != 1) || (boxPlayer->moveState & 4)) {
            spi = boxPlayer->spriteInfoBody;
            if(((spi->s.anim != 570 || spi->s.variant != 1) 
            && (spi->s.anim != 363 || spi->s.variant != 0)
            && (spi->s.anim != 38 || spi->s.variant != 0)
            && (spi->s.anim != 37 || spi->s.variant != 0)
            && (itembox->unk8 != 2)
            && (spi->s.anim != 42 || spi->s.variant != 0)
            && (spi->s.anim != 531 || spi->s.variant != 0)
            && (spi->s.anim != 689 || spi->s.variant != 0)
            && (boxPlayer->charFlags.anim0 != 257)
            && (boxPlayer->charFlags.anim0 != 0xE3)
            && (boxPlayer->charFlags.anim0 != 0xD5)
              ))
            {
                boxPlayer->qSpeedAirY = -Q(3);
                boxPlayer->charFlags.anim1 = -1;
            }
        } else {
            Player_BoostModeDisengage(boxPlayer);            
        }
    }
    Player_PlaySong(boxPlayer, 0x96U);
    itembox->unk7 = 0;
    if ((gStageData.gameMode > 4U)
        && (boxPlayer != NULL)
        && (((boxPlayer->charFlags.someIndex == 1)) || (boxPlayer->charFlags.someIndex == 2))) {
        sub_8027538((s32) itembox->me);
    }
    gCurTask->main = Task_802D61C;
}

#if 0
void sub_802C7B0(ItemBox *arg0, ? arg3) {
    Player *temp_r0;
    Player *temp_r0_12;
    Player *temp_r0_13;
    Player *temp_r0_16;
    Player *temp_r0_19;
    Player *temp_r0_23;
    Player *temp_r0_27;
    Player *temp_r0_3;
    Player *temp_r0_6;
    Player *temp_r0_7;
    Player *temp_r1;
    Player *temp_r1_10;
    Player *temp_r1_2;
    Player *temp_r1_3;
    Player *temp_r1_4;
    Player *temp_r1_5;
    Player *temp_r1_6;
    Player *temp_r1_7;
    Player *temp_r1_8;
    Player *temp_r1_9;
    s16 *temp_r0_9;
    s16 temp_r2;
    s16 temp_r2_2;
    s16 temp_r4_13;
    s16 temp_r4_9;
    s16 temp_r5;
    s16 temp_r5_2;
    s16 temp_r5_3;
    s16 var_r0_2;
    s16 var_r1_2;
    s16 var_r1_3;
    s16 var_r1_4;
    s16 var_r1_5;
    s16 var_r6_2;
    s16 var_r6_5;
    s16 var_r6_9;
    s32 temp_r0_22;
    s32 temp_r0_26;
    s32 temp_r4;
    s32 temp_r4_10;
    s32 temp_r4_12;
    s32 temp_r4_2;
    s32 temp_r4_3;
    s32 temp_r4_4;
    s32 temp_r4_5;
    s32 temp_r4_6;
    s32 temp_r4_8;
    s32 var_r0;
    s8 *var_r1;
    u16 temp_r0_18;
    u16 temp_r0_21;
    u16 temp_r0_25;
    u16 temp_r0_29;
    u16 temp_r4_11;
    u16 temp_r4_7;
    u32 temp_r0_10;
    u32 temp_r0_11;
    u32 temp_r0_14;
    u32 temp_r0_15;
    u32 temp_r0_17;
    u32 temp_r0_20;
    u32 temp_r0_24;
    u32 temp_r0_28;
    u32 temp_r0_4;
    u32 temp_r0_5;
    u32 temp_r0_8;
    u32 var_r6;
    u32 var_r6_10;
    u32 var_r6_11;
    u32 var_r6_12;
    u32 var_r6_3;
    u32 var_r6_4;
    u32 var_r6_6;
    u32 var_r6_7;
    u32 var_r6_8;
    u8 temp_r0_2;
    u8 var_r2;
    u8 var_r2_2;
    u8 var_r2_3;

    temp_r0 = arg0->unk6C;
    if (temp_r0 == NULL) {
        goto block_109;
    }
    if (temp_r0->moveState & 0x100) {
        goto block_109;
    }
    temp_r0_2 = arg0->meIndex;
    switch ((u32) temp_r0_2) {                      /* irregular */
    case 0:
        AddLives(1);
        if (gStageData.gameMode != 5) {

        } else {
            sub_8027834();
        }
block_109:
        arg0->unk7 = 0;
        gCurTask->main = (void (*)()) Task_802D660;
        return;
    case 6:
        temp_r1 = arg0->unk6C;
        temp_r1->unk13C &= 0xDF;
        temp_r1_2 = arg0->unk6C;
        var_r1 = temp_r1_2 + 0x13C;
        var_r2 = temp_r1_2->unk13C;
        var_r0 = 0x10;
block_13:
        *var_r1 = var_r0 | var_r2;
        goto block_109;
    case 7:
        temp_r1_3 = arg0->unk6C;
        temp_r1_3->unk13C &= 0xEF;
        temp_r1_4 = arg0->unk6C;
        var_r1 = temp_r1_4 + 0x13C;
        var_r2 = temp_r1_4->unk13C;
        var_r0 = 0x20;
        goto block_13;
    case 5:
        arg0->unk6C->framesInvincible = 0x4B0;
        temp_r1_5 = arg0->unk6C;
        var_r1 = temp_r1_5 + 0x13C;
        var_r2 = temp_r1_5->unk13C;
        var_r0 = 0x40;
        goto block_13;
    case 4:
        arg0->unk6C->timerSpeedup = 0x4B0;
        arg0->unk6C->timerSlowItem = 0;
        arg0->unk6C->unk62 = 0;
        if (gStageData.gameMode != 6) {

        } else {
            var_r6 = 0;
            temp_r0_3 = arg0->unk6C;
            if (gPlayers != temp_r0_3) {
loop_18:
                temp_r0_4 = (var_r6 << 0x10) + 0x10000;
                var_r6 = temp_r0_4 >> 0x10;
                temp_r4 = (s32) temp_r0_4 >> 0x10;
                if (temp_r4 <= 3) {
                    if (&gPlayers[temp_r4] != temp_r0_3) {
                        goto loop_18;
                    }
                }
            }
            sub_80277AC(var_r6, 0);
        }
        goto block_109;
    case 2:
        var_r0_2 = 0xA;
block_99:
        AddRings((u16) var_r0_2);
        sub_8003DF0(0x75U);
        goto block_109;
    case 15:
        gUnknown_03001060.unk8 = 0;
        gUnknown_03001060.unk9 = 0;
        sub_80267E8();
        var_r2_2 = 0;
        if (gPlayers != arg0->unk6C) {
loop_24:
            var_r2_2 += 1;
            if ((u32) var_r2_2 <= 3U) {
                if (&gPlayers[var_r2_2] != arg0->unk6C) {
                    goto loop_24;
                }
            }
        }
        if (!(((s32) gUnknown_03001060.unk9 >> (var_r2_2 + 4)) & 1)) {

        } else if (saved_reg_r5->unk4 & 0x01000000) {

        } else {
            sub_800ED50(arg0->unk6C);
        }
        goto block_109;
    case 11:
        var_r6_2 = 0;
        do {
            temp_r2 = var_r6_2;
            temp_r1_6 = &gPlayers[temp_r2];
            temp_r0_6 = arg0->unk6C;
            if ((temp_r1_6 != temp_r0_6) && (temp_r2 != ((u32) (temp_r0_6->unk2B << 0x1E) >> 0x1E))) {
                temp_r1_6->unk62 = 0x258;
                temp_r1_6->timerSlowItem = 0;
                *(&temp_r1_6->timerSlowItem - 2) = 0;
                sub_80179BC(temp_r1_6);
            }
            temp_r0_5 = (var_r6_2 << 0x10) + 0x10000;
            var_r6_2 = (s16) (temp_r0_5 >> 0x10);
        } while ((s32) ((s32) temp_r0_5 >> 0x10) <= 3);
        var_r6_3 = 0;
        temp_r0_7 = arg0->unk6C;
        if (gPlayers != temp_r0_7) {
loop_38:
            temp_r0_8 = (var_r6_3 << 0x10) + 0x10000;
            var_r6_3 = temp_r0_8 >> 0x10;
            temp_r4_2 = (s32) temp_r0_8 >> 0x10;
            if (temp_r4_2 <= 3) {
                if (&gPlayers[temp_r4_2] != temp_r0_7) {
                    goto loop_38;
                }
            }
        }
        sub_80277F0(var_r6_3, 0);
        goto block_109;
    case 12:
        arg0->unk6C->unk62 = 0x258;
        arg0->unk6C->timerSlowItem = 0;
        arg0->unk6C->timerSpeedup = 0;
        sub_80179BC(arg0->unk6C);
        temp_r1_7 = &gPlayers[(u32) (arg0->unk6C->unk2B << 0x1E) >> 0x1E];
        temp_r1_7->unk62 = 0x258;
        temp_r0_9 = &temp_r1_7->unk62 - 2;
        *temp_r0_9 = 0;
        *(temp_r0_9 - 2) = 0;
        sub_80179BC(temp_r1_7);
        var_r6_4 = 0;
        if (gPlayers != arg0->unk6C) {
loop_43:
            temp_r0_10 = (var_r6_4 << 0x10) + 0x10000;
            var_r6_4 = temp_r0_10 >> 0x10;
            temp_r4_3 = (s32) temp_r0_10 >> 0x10;
            if (temp_r4_3 <= 3) {
                if (&gPlayers[temp_r4_3] != arg0->unk6C) {
                    goto loop_43;
                }
            }
        }
        sub_80277F0(var_r6_4, 1);
        goto block_109;
    case 13:
        var_r6_5 = 0;
        do {
            temp_r2_2 = var_r6_5;
            temp_r1_8 = &gPlayers[temp_r2_2];
            temp_r0_12 = arg0->unk6C;
            if ((temp_r1_8 != temp_r0_12) && (temp_r2_2 != ((u32) (temp_r0_12->unk2B << 0x1E) >> 0x1E))) {
                temp_r1_8->timerSlowItem = 0x258;
                temp_r1_8->unk62 = 0;
                *(&temp_r1_8->unk62 - 4) = 0;
                sub_80179BC(temp_r1_8);
            }
            temp_r0_11 = (var_r6_5 << 0x10) + 0x10000;
            var_r6_5 = (s16) (temp_r0_11 >> 0x10);
        } while ((s32) ((s32) temp_r0_11 >> 0x10) <= 3);
        var_r6_6 = 0;
        temp_r0_13 = arg0->unk6C;
        if (gPlayers != temp_r0_13) {
loop_53:
            temp_r0_14 = (var_r6_6 << 0x10) + 0x10000;
            var_r6_6 = temp_r0_14 >> 0x10;
            temp_r4_4 = (s32) temp_r0_14 >> 0x10;
            if (temp_r4_4 <= 3) {
                if (&gPlayers[temp_r4_4] != temp_r0_13) {
                    goto loop_53;
                }
            }
        }
        sub_8027768(var_r6_6, 0);
        goto block_109;
    case 14:
        arg0->unk6C->timerSlowItem = 0x258;
        arg0->unk6C->unk62 = 0;
        arg0->unk6C->timerSpeedup = 0;
        sub_80179BC(arg0->unk6C);
        temp_r1_9 = &gPlayers[(u32) (arg0->unk6C->unk2B << 0x1E) >> 0x1E];
        temp_r1_9->timerSlowItem = 0x258;
        temp_r1_9->unk62 = 0;
        *((&temp_r1_9->timerSlowItem + 2) - 4) = 0;
        sub_80179BC(temp_r1_9);
        var_r6_7 = 0;
        if (gPlayers != arg0->unk6C) {
loop_58:
            temp_r0_15 = (var_r6_7 << 0x10) + 0x10000;
            var_r6_7 = temp_r0_15 >> 0x10;
            temp_r4_5 = (s32) temp_r0_15 >> 0x10;
            if (temp_r4_5 <= 3) {
                if (&gPlayers[temp_r4_5] != arg0->unk6C) {
                    goto loop_58;
                }
            }
        }
        sub_8027768(var_r6_7, 1);
        goto block_109;
    case 10:
        var_r6_8 = 0;
        temp_r0_16 = arg0->unk6C;
        if (gPlayers != temp_r0_16) {
loop_63:
            temp_r0_17 = (var_r6_8 << 0x10) + 0x10000;
            var_r6_8 = temp_r0_17 >> 0x10;
            temp_r4_6 = (s32) temp_r0_17 >> 0x10;
            if (temp_r4_6 <= 3) {
                if (&gPlayers[temp_r4_6] != temp_r0_16) {
                    goto loop_63;
                }
            }
        }
        sub_80277AC(var_r6_8, 1);
        goto block_109;
    case 1:
        if (gStageData.gameMode == 6) {
            var_r6_9 = 0;
loop_69:
            temp_r5 = var_r6_9;
            if ((s32) temp_r5 <= 3) {
                temp_r1_10 = &gPlayers[temp_r5];
                if (temp_r1_10 == arg0->unk6C) {
                    sub_8017A58(temp_r1_10);
                } else {
                    var_r6_9 = (s16) (u16) (temp_r5 + 1);
                    goto loop_69;
                }
            }
            temp_r4_7 = 1 & temp_r5;
            sub_802773C(temp_r4_7, 5U);
            var_r1_2 = 0;
            do {
                temp_r5_2 = var_r1_2;
                if ((temp_r5_2 & 1) == (s16) temp_r4_7) {
                    sub_8017A58(&gPlayers[temp_r5_2]);
                }
                temp_r0_18 = temp_r5_2 + 1;
                var_r1_2 = (s16) temp_r0_18;
            } while ((s32) (s16) temp_r0_18 <= 3);
        }
        var_r0_2 = 5;
        goto block_99;
    case 8:
        var_r6_10 = 0;
        temp_r0_19 = arg0->unk6C;
        if (gPlayers != temp_r0_19) {
loop_79:
            temp_r0_20 = (var_r6_10 << 0x10) + 0x10000;
            var_r6_10 = temp_r0_20 >> 0x10;
            temp_r4_8 = (s32) temp_r0_20 >> 0x10;
            if (temp_r4_8 <= 3) {
                if (&gPlayers[temp_r4_8] != temp_r0_19) {
                    goto loop_79;
                }
            }
        }
        sub_802773C(~var_r6_10 & 1, 5U);
        var_r1_3 = 0;
        do {
            temp_r4_9 = var_r1_3;
            if ((temp_r4_9 & 1) != ((s32) (0x10000 & (var_r6_10 << 0x10)) >> 0x10)) {
                sub_8017A58(&gPlayers[temp_r4_9]);
            }
            temp_r0_21 = temp_r4_9 + 1;
            var_r1_3 = (s16) temp_r0_21;
        } while ((s32) (s16) temp_r0_21 <= 3);
        goto block_109;
    case 3:
        if (gStageData.gameMode == 3) {
            var_r2_3 = 0xA;
        } else {
            temp_r0_22 = (gPseudoRandom * 0x196225) + 0x3C6EF35F;
            gPseudoRandom = temp_r0_22;
            var_r2_3 = *((temp_r0_22 & 0xF) + gUnknown_080CF43E);
        }
        if (gStageData.gameMode == 6) {
            var_r6_11 = 0;
            temp_r0_23 = arg0->unk6C;
            if (gPlayers != temp_r0_23) {
loop_92:
                temp_r0_24 = (var_r6_11 << 0x10) + 0x10000;
                var_r6_11 = temp_r0_24 >> 0x10;
                temp_r4_10 = (s32) temp_r0_24 >> 0x10;
                if (temp_r4_10 <= 3) {
                    if (&gPlayers[temp_r4_10] != temp_r0_23) {
                        goto loop_92;
                    }
                }
            }
            temp_r4_11 = (s16) var_r6_11 & 1;
            sub_802773C(temp_r4_11, (u16) var_r2_3);
            var_r1_4 = 0;
            do {
                temp_r5_3 = var_r1_4;
                if ((temp_r5_3 & 1) == (s16) temp_r4_11) {
                    sub_8017A58(&gPlayers[temp_r5_3]);
                }
                temp_r0_25 = temp_r5_3 + 1;
                var_r1_4 = (s16) temp_r0_25;
            } while ((s32) (s16) temp_r0_25 <= 3);
        }
        var_r0_2 = (s16) var_r2_3;
        goto block_99;
    case 9:
        temp_r0_26 = (gPseudoRandom * 0x196225) + 0x3C6EF35F;
        gPseudoRandom = temp_r0_26;
        var_r6_12 = 0;
        temp_r0_27 = arg0->unk6C;
        if (gPlayers != temp_r0_27) {
loop_102:
            temp_r0_28 = (var_r6_12 << 0x10) + 0x10000;
            var_r6_12 = temp_r0_28 >> 0x10;
            temp_r4_12 = (s32) temp_r0_28 >> 0x10;
            if (temp_r4_12 <= 3) {
                if (&gPlayers[temp_r4_12] != temp_r0_27) {
                    goto loop_102;
                }
            }
        }
        sub_802773C(~var_r6_12 & 1, (u16) *((temp_r0_26 & 0xF) + gUnknown_080CF43E));
        var_r1_5 = 0;
        do {
            temp_r4_13 = var_r1_5;
            if ((temp_r4_13 & 1) != ((s32) (0x10000 & (var_r6_12 << 0x10)) >> 0x10)) {
                sub_8017A58(&gPlayers[temp_r4_13]);
            }
            temp_r0_29 = temp_r4_13 + 1;
            var_r1_5 = (s16) temp_r0_29;
        } while ((s32) (s16) temp_r0_29 <= 3);
        sub_8003DF0(0x75U);
        goto block_109;
    }
}

s32 sub_802CE4C(ItemBox *itembox) {
    Player *p;
    Sprite *temp_r1;
    s16 temp_r0_2;
    s16 temp_r1_4;
    s32 temp_r0;
    s32 temp_r1_7;
    s32 temp_r2_4;
    s32 temp_r3_2;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_sl;
    u16 temp_r1_3;
    u32 temp_r0_3;
    u32 temp_r0_4;
    u32 temp_r0_5;
    u32 temp_r0_6;
    u32 temp_r1_5;
    u32 temp_r1_6;
    u32 temp_r2_2;
    u32 temp_r2_3;
    u32 temp_r3;
    u32 var_r1;
    u8 temp_r1_2;
    u8 temp_r2;
    u8 var_r1_2;
    void *temp_r4;

    p = saved_reg_r4;
    var_sl = 0;
    temp_r1 = &itembox->s;
    var_r1 = 0;
loop_1:
    temp_r0 = var_r1 << 0x10;
    if (temp_r0 == 0) {
        var_r1_2 = gStageData.playerIndex;
    } else {
        var_r1_2 = (u8) ((u32) (p->unk2B << 0x1E) >> 0x1E);
    }
    p = &gPlayers[var_r1_2];
    if (sub_802C080(p) != 0) {
        goto block_77;
    }
    temp_r2 = p->unk2B;
    if (((0x1C & temp_r2) != 4) && ((0xF & p->unk2A) != 3)) {
        goto block_60;
    }
    if (((0x1C0F & (u16) p->unk2A) == 0x803) && ((u32) (u16) ((u16) p->charFlags.anim0 - 0xE7) <= 2U) && ((temp_r2_2 = temp_r2 << 0x1E, ((u32) (u16) ((u16) gPlayers[temp_r2_2 >> 0x1E].charFlags.anim0 - 0xAF) <= 1U)) || (gPlayers[temp_r2_2 >> 0x1E].charFlags.anim0 == 0xE0) || (gPlayers[temp_r2_2 >> 0x1E].charFlags.anim0 == 0xE1) || (gPlayers[temp_r2_2 >> 0x1E].charFlags.anim0 == 0xC8) || (gPlayers[temp_r2_2 >> 0x1E].charFlags.anim0 == 0xC9) || (gPlayers[temp_r2_2 >> 0x1E].charFlags.anim0 == 0x10A) || (gPlayers[temp_r2_2 >> 0x1E].charFlags.anim0 == 0x10B))) {
        if (sub_802D354((ItemBox *) &itembox->s, itembox->unk14, itembox->unk18, 0U, p, 1) != 0) {
            itembox->unk6C = &gPlayers[(u32) (p->unk2B << 0x1E) >> 0x1E];
            itembox->unk8 = 1;
            return 1;
        }
        goto block_27;
    }
    if ((0xF & p->unk2A) == 3) {
        temp_r1_2 = p->unk2B;
        if ((0x1C & temp_r1_2) != 4) {
            temp_r2_3 = temp_r1_2 << 0x1E;
            if ((gPlayers[temp_r2_3 >> 0x1E].charFlags.anim2 != 0x60) && (gPlayers[temp_r2_3 >> 0x1E].charFlags.anim2 != 0x1A6) && (gPlayers[temp_r2_3 >> 0x1E].charFlags.anim2 != 0x103) && (gPlayers[temp_r2_3 >> 0x1E].charFlags.anim2 != 0x2EC)) {
                goto block_77;
            }
        }
    }
block_27:
    if (sub_802D354((ItemBox *) &itembox->s, itembox->unk14, itembox->unk18, 0U, p, 1) == 0) {
        goto block_60;
    }
    if (0x10000 & sub_8020950(temp_r1, itembox->unk14, itembox->unk18, p, 0U)) {
        temp_r1_3 = (u16) p->charFlags.anim0;
        if ((u32) (u16) (temp_r1_3 - 0xE2) <= 1U) {
            goto block_77;
        }
        temp_r0_2 = (s16) temp_r1_3;
        switch (temp_r0_2) {                        /* irregular */
        case 0xF7:
            goto block_77;
        case 0xA:
            goto block_77;
        case 0xB:
            goto block_77;
        }
    } else {
        if ((p->moveState & 6) != 6) {
            itembox->unk8 = 1;
            p->moveState |= 0x4000;
            var_sl = 1;
            temp_r1_4 = p->charFlags.anim0;
            if ((temp_r1_4 == 0xAA) || (temp_r1_4 == 0xBB) || (temp_r1_4 == 0x100)) {
                p->moveState |= 4;
                SetPlayerCallback(p, Player_80069E4);
            }
            if ((0xF & p->unk2A) != 3) {
                goto block_55;
            }
            temp_r3 = p->unk2B << 0x1E;
            temp_r1_5 = temp_r3 >> 0x1E;
            if ((gPlayers[temp_r1_5].charFlags.anim2 == 0x60) || (gPlayers[temp_r1_5].charFlags.anim2 == 0x1A6) || (gPlayers[temp_r3 >> 0x1E].charFlags.anim2 == 0x103) || (gPlayers[temp_r3 >> 0x1E].charFlags.anim2 == 0x2EC)) {
                itembox->unk6C = &gPlayers[(u32) (p->unk2B << 0x1E) >> 0x1E];
            } else {
                goto block_55;
            }
            goto block_83;
        }
        temp_r0_3 = sub_802C0D4(p);
        if (temp_r0_3 == 0) {
            if (0x30000 & sub_8020950(temp_r1, itembox->unk14, itembox->unk18, p, (u8) temp_r0_3)) {
                itembox->unk8 = 1;
                var_sl = 1;
                p->moveState |= 0x4004;
                SetPlayerCallback(p, Player_80069E4);
                if (((0xF & p->unk2A) == 3) && (temp_r1_6 = (u32) (p->unk2B << 0x1E) >> 0x1E, (gPlayers[temp_r1_6].charFlags.anim2 == 0x60))) {
                    itembox->unk6C = &gPlayers[temp_r1_6];
                } else {
block_55:
                    itembox->unk6C = p;
                }
                goto block_83;
            }
            if (p->charFlags.anim2 == 0x208) {
                temp_r2_4 = 0x1C & p->unk2B;
                if (temp_r2_4 == 4) {
                    itembox->unk8 = 1;
                    p->moveState = p->moveState | 0x4000 | temp_r2_4;
                    SetPlayerCallback(p, Player_80069E4);
                    itembox->unk6C = p;
                    return 1;
                }
            }
            itembox->unk8 = 1;
            itembox->unk6C = p;
            return 1;
        }
block_60:
        temp_r0_4 = sub_802C0D4(p);
        if (temp_r0_4 == 0) {
            temp_r0_5 = sub_8020950(temp_r1, itembox->unk14, itembox->unk18, p, (u8) temp_r0_4);
            if (temp_r0_5 & 0x10000) {
                if (!(p->moveState & 0x10000)) {
                    var_r0 = p->qWorldY + (s16) (temp_r0_5 << 8);
                } else {
                    goto block_67;
                }
                goto block_68;
            }
            if (0x20000 & temp_r0_5) {
                if (p->moveState & 0x10000) {
                    var_r0 = p->qWorldY + (s16) (temp_r0_5 << 8);
                } else {
block_67:
                    var_r0 = p->qWorldY - (s16) (temp_r0_5 << 8);
                }
block_68:
                p->qWorldY = var_r0;
                p->qSpeedAirY = 0;
            }
            if (0xC0000 & temp_r0_5) {
                temp_r3_2 = p->qWorldX + (((s32) (temp_r0_5 << 0x10) >> 0x18) << 8);
                p->qWorldX = temp_r3_2;
                p->qSpeedAirX = 0;
                p->qSpeedGround = 0;
                if ((0x40000 & temp_r0_5) && (0x20 & p->keyInput)) {
                    var_r0_2 = temp_r3_2 + 0xFFFFFF00;
                    goto block_76;
                }
                if ((0x80000 & temp_r0_5) && (0x10 & p->keyInput)) {
                    var_r0_2 = p->qWorldX + 0x100;
block_76:
                    p->qWorldX = var_r0_2;
                    p->moveState |= 0x40;
                }
            }
        }
block_77:
        temp_r0_6 = temp_r0 + 0x10000;
        var_r1 = temp_r0_6 >> 0x10;
        if ((s32) ((s32) temp_r0_6 >> 0x10) <= 1) {
            goto loop_1;
        }
        temp_r4 = gStageData.taskCheese->data->unk50;
        temp_r1_7 = 0x1C & temp_r4->unk2B;
        if (((temp_r1_7 == 4) || (temp_r1_7 == 0x10)) && (sub_802D4A8(&itembox->s, itembox->unk14, itembox->unk18, 0U) != 0)) {
            itembox->unk8 = 2;
            itembox->unk6C = temp_r4;
            var_sl = 1;
        }
block_83:
        return var_sl;
    }
}

s32 sub_802D354(ItemBox *itembox, s32 arg1, s32 arg2, u8 arg3, Player *p, s32 arg5) {
    s32 sp0;
    s32 sp4;
    s32 sp8;
    PlayerSpriteInfo *temp_r2;
    Sprite2 *temp_r1;
    s32 temp_r0;
    s32 temp_r1_3;
    s32 temp_r1_4;
    s32 temp_r2_2;
    s32 temp_r2_3;
    s32 temp_r4;
    s8 temp_r0_2;
    s8 temp_r1_2;
    s8 temp_r3;
    s8 temp_r6_2;
    u8 temp_r7;
    void *temp_r3_2;
    void *temp_r6;

    sp0 = arg1;
    sp4 = arg2;
    temp_r7 = (u8) arg5;
    temp_r2 = p->spriteInfoBody;
    temp_r1 = &temp_r2->s;
    if (p->moveState & 0x100) {
        goto block_13;
    }
    temp_r0 = arg3 * 8;
    if ((*(&itembox->s.frameNum + temp_r0) != -1) && (temp_r2->s.hitboxes[temp_r7].index != -1)) {
        temp_r3 = (0xFFFFFF & ((0xFF00FFFF & ((0xFFFF00FF & ((0xFFFFFF00 & saved_reg_r8) | (u8) temp_r1->hitboxes[temp_r7].b.left)) | (u16) (((u8) temp_r1->hitboxes[temp_r7].b.top - 4) << 8))) | ((u8) temp_r1->hitboxes[temp_r7].b.right << 0x10))) | (((u8) temp_r1->hitboxes[temp_r7].b.bottom + 4) << 0x18);
        temp_r6 = itembox + temp_r0;
        temp_r0_2 = (s8) temp_r6->unk24;
        sp8 = (s32) temp_r0_2;
        temp_r2_2 = sp0 + temp_r0_2;
        temp_r1_2 = temp_r3;
        temp_r1_3 = ((s32) p->qWorldX >> 8) + temp_r1_2;
        if (temp_r2_2 <= temp_r1_3) {
            if ((s32) (temp_r2_2 + ((s8) temp_r6->unk26 - sp8)) < temp_r1_3) {
                if (temp_r2_2 >= temp_r1_3) {
                    goto block_7;
                }
                goto block_13;
            }
            goto block_8;
        }
block_7:
        if ((s32) (temp_r1_3 + (((s32) (temp_r3 << 8) >> 0x18) - temp_r1_2)) >= temp_r2_2) {
block_8:
            temp_r3_2 = itembox + temp_r0;
            temp_r6_2 = temp_r3_2->unk25;
            temp_r2_3 = sp4 + temp_r6_2;
            temp_r4 = (s32) (temp_r3 << 0x10) >> 0x18;
            temp_r1_4 = ((s32) p->qWorldY >> 8) + temp_r4;
            if (temp_r2_3 <= temp_r1_4) {
                if ((s32) (temp_r2_3 + ((s8) temp_r3_2->unk27 - temp_r6_2)) < temp_r1_4) {
                    if (temp_r2_3 >= temp_r1_4) {
                        goto block_11;
                    }
                    goto block_13;
                }
                goto block_12;
            }
block_11:
            if ((s32) (temp_r1_4 + ((temp_r3 >> 0x18) - temp_r4)) >= temp_r2_3) {
block_12:
                return 1;
            }
            goto block_13;
        }
        goto block_13;
    }
block_13:
    return 0;
}

#endif
#endif

s32 sub_802D4A8(Sprite *s, s32 worldX, s32 worldY, u8 arg3) {
    s32 temp_r1_2;
    s32 temp_r1_3;
    s32 temp_r2;
    s32 temp_r2_2;
    s32 temp_r4;
    s32 temp_r6;
    s8 temp_r0;
    s8 temp_r1;
    s8 temp_r3_3;
    s8 temp_r6_3;
    Cheese *cheese;
    u8 temp_r3;
    void *temp_r3_4;
    void *temp_r6_2;

    temp_r3 = arg3;
    cheese = TASK_DATA(gStageData.taskCheese);
    if (s->hitboxes[arg3].index == -1) {
        goto block_14;
    }
    if (cheese->s.hitboxes[arg3].index == -1) {
        goto block_14;
    }
    if (CMS_2 & cheese->moveState) 
    {
        Hitbox *cheeseHB = &cheese->s.hitboxes[arg3];
        s8 arr[4] = {
            [0] = cheeseHB->b.left,
            [1] = cheeseHB->b.top - 4,
            [2] = cheeseHB->b.right,
            [3] = cheeseHB->b.bottom + 4,
        };
        asm("" :: "r"(arr));
        //temp_r6_2 = s->hitboxes[arg3];
        temp_r2 = worldX + s->hitboxes[arg3].left;
        temp_r1 = temp_r3_3;
        temp_r1_2 = I(cheese->unk0) + temp_r1;
#if 0
        if (temp_r2 <= temp_r1_2) {
            if ((s32) (temp_r2 + (s->hitboxes[arg3].right - s->hitboxes[arg3].left)) < temp_r1_2) {
                if (temp_r2 >= temp_r1_2) {
                    goto block_8;
                }
                goto block_14;
            }
            goto block_9;
        }
block_8:
        if ((s32) (temp_r1_2 + (((s32) (temp_r3_3 << 8) >> 0x18) - temp_r1)) >= temp_r2) {
block_9:
            temp_r3_4 = itembox + (temp_r3 * 8);
            temp_r6_3 = temp_r3_4->unk25;
            temp_r2_2 = worldY + temp_r6_3;
            temp_r4 = (s32) (temp_r3_3 << 0x10) >> 0x18;
            temp_r1_3 = ((s32) cheese->unk4 >> 8) + temp_r4;
            if (temp_r2_2 <= temp_r1_3) {
                if ((s32) (temp_r2_2 + ((s8) temp_r3_4->unk27 - temp_r6_3)) < temp_r1_3) {
                    if (temp_r2_2 >= temp_r1_3) {
                        goto block_12;
                    }
                    goto block_14;
                }
                goto block_13;
            }
block_12:
            if ((s32) (temp_r1_3 + ((temp_r3_3 >> 0x18) - temp_r4)) >= temp_r2_2) {
block_13:
                return 1;
            }
            goto block_14;
        }
        goto block_14;
#endif
    }
block_14:
    return 0;
}

void TaskDestructor_ItemBox(Task *t)
{
    ItemBox *itembox = TASK_DATA(t);
    VramFree(itembox->s.tiles);
    VramFree(itembox->s2.tiles);
}

void Task_802D61C()
{
    ItemBox *itembox = TASK_DATA(gCurTask);

    if (itembox->unk7++ > 0x3BU) {
        sub_802C7B0(itembox);
    } else {
        itembox->unk10 = (u16)(itembox->unk10 - Q(1));
    }
    sub_802D6CC(itembox, 1);
}

void Task_802D660(void)
{
    ItemBox *itembox = TASK_DATA(gCurTask);

    if (itembox->unk7++ >= 30) {
        TaskDestroy(gCurTask);
        return;
    }

    sub_802D6CC(itembox, 1);
}

bool32 sub_802D694(s32 x, s32 y)
{
    x -= gCamera.x;
    y -= gCamera.y;

    if (IS_OUT_OF_CAM_RANGE_TYPED(u32, x, y)) {
        return TRUE;
    }
    return FALSE;
}

void sub_802D6CC(ItemBox *itembox, s32 arg1)
{
    itembox->s.x = itembox->unk14 - gCamera.x;
    itembox->s.y = itembox->unk18 - gCamera.y;
    itembox->s2.x = itembox->unk14 - gCamera.x;
    itembox->s2.y = I(itembox->unk10) + itembox->s.y;
    if (arg1 == 0) {
        DisplaySprite(&itembox->s);
    }
    DisplaySprite(&itembox->s2);
}

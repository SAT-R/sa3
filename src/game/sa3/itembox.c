#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "game/shared/stage/player.h"
#include "game/shared/stage/player_callbacks.h"
#include "game/stage.h"
#include "constants/animations.h"
#include "constants/move_states.h"
#include "constants/songs.h"

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
void sub_8027538(MapEntity *me); /* extern */
void sub_802773C(u16, u16); /* extern */
void sub_8027768(u16, u16); /* extern */
void sub_80277AC(u16, u16); /* extern */
void sub_80277F0(u16, u16); /* extern */
void sub_8027834(); /* extern */
void sub_805CEBC(s32, s32, s32, s32, s32, s32); /* extern */
void TaskDestructor_ItemBox(Task *); /* static */
extern u16 gUnknown_080CF3B8[2][2];
extern u16 gUnknown_080CF3C0[][3];
extern u16 gUnknown_080CF420[][3];
extern u8 ItemBox_ringAmountTable[16];
extern u16 gUnknown_080CF44E[][2];

void sub_802C35C(ItemBox *itembox, s32 param1);
void sub_802C618(ItemBox *itembox);
void Task_802D61C(void);
s32 sub_802CE4C(ItemBox *itembox);
bool32 Itembox_CollisionPlayer(Sprite *s, Vec2_32 world, u8 hbIndexSpr, Player *p, u8 hbIndexPlayer);
bool32 Itembox_CollisionCheese(Sprite *s, s32 worldX, s32 worldY, u8 hbIndex);
void sub_802D6CC(ItemBox *itembox, s32 arg1);

bool32 sub_802D694(s32 x, s32 y);

void Task_ItemBoxInit(void);
void Task_802D660(void);
void sub_802C7B0(ItemBox *itembox);
extern void AddLives(u16 count);

#if defined(NON_MATCHING)
// OK
void CreateEntity_ItemBox(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    Task *t;
    ItemBox *itembox;
    Sprite *s;
    u32 itemIndex;

    if (gStageData.gameMode == GAME_MODE_TIME_ATTACK || gStageData.gameMode == GAME_MODE_BOSS_TIME_ATTACK) {
        if (me->index == 0) {
            SET_MAP_ENTITY_INITIALIZED(me);
            return;
        } else if (me->index == 3) {
            me->index = 2;
        }
    } else if ((u8)gStageData.gameMode == GAME_MODE_MP_MULTI_PACK) {
        me->index = 17;
    }
    t = TaskCreate(Task_ItemBoxInit, sizeof(ItemBox), 0x2000U, 0U, TaskDestructor_ItemBox);
    itembox = TASK_DATA(t);
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
    s->prevVariant = -1;
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

    SET_MAP_ENTITY_INITIALIZED(me);
}

// OK
void sub_802C35C(ItemBox *itembox, s32 param1)
{
    u16 temp_r5;
    u32 var_r0;
    u32 var_r3;

    if (gStageData.gameMode != GAME_MODE_MP_MULTI_PACK) {
        if (param1 == 0) {
            return;
        }
        if (itembox->meIndex == 0) {
            s16 character;
            itembox->s2.frameFlags |= 0x40000;
            itembox->s2.palId = gStageData.playerIndex;
            character = gPlayers[gStageData.playerIndex].charFlags.character;
            itembox->s2.anim = gUnknown_080CF420[character][0];
            itembox->s2.variant = gUnknown_080CF420[character][1];
        } else {
            itembox->s2.anim = gUnknown_080CF3C0[itembox->meIndex][0];
            itembox->s2.variant = gUnknown_080CF3C0[itembox->meIndex][1];
        }
        UpdateSpriteAnimation(&itembox->s2);
        return;
    }
    temp_r5 = gStageData.timer >> 5;
    var_r3 = (u16)Div((s32)temp_r5, 6);
    itembox->unk9 = temp_r5 - (var_r3 * 6);
    switch (itembox->unk9) {
        case 0: {
            // TODO: Fake-match!
#ifndef NON_MATCHING
            register s32 var_r1_2 asm("r1");
#else
            s32 var_r1_2;
#endif
            var_r3 = var_r3 & 0xF;
            var_r1_2 = 0;
            if ((var_r3 == 2) || (var_r3 == 7) || (var_r3 == 12)) {
                var_r1_2 = 1;
            }
            var_r3 = var_r1_2;
            asm("");
        } break;
        case 1:
            var_r3 = var_r3 & 7;
            var_r0 = 0;
            if ((var_r3 != 1) && (var_r3 != 4)) {
                var_r0 = (var_r3 ^ 6) ? 1 : 0;
            }

            var_r3 = var_r0;
            break;
        case 2:
            var_r3 = var_r3 & 0xF;
            var_r0 = 0;
            if (var_r3 == 4 || var_r3 == 9 || var_r3 == 14) {
                var_r0 = 1;
            }
            var_r3 = var_r0;
            break;
        case 3:
            var_r3 = var_r3 & 7;
            var_r0 = 0;
            if ((var_r3 != 2) && (var_r3 != 4)) {
                var_r0 = (7 ^ var_r3) ? 1 : 0;
            }
            var_r3 = var_r0;
            break;
        case 4:
            var_r3 = var_r3 & 0xF;
            var_r0 = 0;
            if ((var_r3 == 3) || (var_r3 == 8) || (var_r3 == 0xD)) {
                var_r0 = 1;
            }
            var_r3 = var_r0;
            break;
        case 5:
            var_r3 = 0;
            break;
        default:
            itembox->unk9 = 0;
            var_r3 = 1 & temp_r5;
            break;
    }
    itembox->meIndex = gUnknown_080CF44E[itembox->unk9][var_r3];
    itembox->s.anim = gUnknown_080CF3B8[var_r3][0];
    itembox->s.variant = gUnknown_080CF3B8[var_r3][1];
    UpdateSpriteAnimation(&itembox->s);
    itembox->s2.anim = gUnknown_080CF3C0[itembox->meIndex][0];
    itembox->s2.variant = gUnknown_080CF3C0[itembox->meIndex][1];
    UpdateSpriteAnimation(&itembox->s2);
}

// OK
void Task_ItemBoxInit()
{
    Player *p;
    s16 i;

    ItemBox *itembox = TASK_DATA(gCurTask);

    if (!GAME_MODE_IS_SINGLE_PLAYER(gStageData.gameMode) && ((s8)itembox->me->x == -3)) {
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
        for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
            p = GET_SP_PLAYER_V1(i);
            ResolvePlayerSpriteCollision(&itembox->s, p);
        }
        SET_MAP_ENTITY_NOT_INITIALIZED(itembox->me, itembox->meX);
        TaskDestroy(gCurTask);
        return;
    } else {
        sub_8004428(Q(itembox->unk14), Q(itembox->unk18));
        sub_802D6CC(itembox, 0);
    }
}

// OK
void sub_802C618(ItemBox *itembox)
{
    Player *p;
    Player *boxPlayer;
    s16 i;

    sub_805CEBC(itembox->unk14 << 8, itembox->unk18 << 8, 0, 0, 1, 0);
    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        p = GET_SP_PLAYER_V0(i);
        CpuFill16(0, &itembox->s.hitboxes[0].b, sizeof(itembox->s.hitboxes[0].b));
        sub_8020950(&itembox->s, itembox->unk14, itembox->unk18, p, 0U);
    }

    boxPlayer = itembox->p;
    if (boxPlayer != NULL) {
        if ((itembox->unk8 != 1) || (boxPlayer->moveState & 4)) {
            PlayerSpriteInfo *spi = boxPlayer->spriteInfoBody;
            if (((spi->s.anim != 570 || spi->s.variant != 1) && (spi->s.anim != 363 || spi->s.variant != 0)
                 && (spi->s.anim != 38 || spi->s.variant != 0) && (spi->s.anim != 37 || spi->s.variant != 0) && (itembox->unk8 != 2)
                 && (spi->s.anim != 42 || spi->s.variant != 0) && (spi->s.anim != 531 || spi->s.variant != 0)
                 && (spi->s.anim != 689 || spi->s.variant != 0) && (boxPlayer->charFlags.anim0 != 257)
                 && (boxPlayer->charFlags.anim0 != 0xE3) && (boxPlayer->charFlags.anim0 != 0xD5))) {
                boxPlayer->qSpeedAirY = -Q(3);
                boxPlayer->charFlags.anim1 = -1;
            }
        } else {
            Player_BoostModeDisengage(boxPlayer);
        }
    }
    Player_PlaySong(boxPlayer, SE_ITEMBOX);
    itembox->unk7 = 0;
    if ((gStageData.gameMode > 4U) && (boxPlayer != NULL)
        && (((boxPlayer->charFlags.someIndex == 1)) || (boxPlayer->charFlags.someIndex == 2))) {
        sub_8027538(itembox->me);
    }
    gCurTask->main = Task_802D61C;
}
#endif

#if 0
// OK
void sub_802C7B0(ItemBox *itembox)
{
    Player *player;
    Player *partner;
    s16 var_r1_2;
    u8 pid;
    s16 var_r6;
    s16 rings;

    if ((itembox->p != NULL) && !(itembox->p->moveState & 0x100)) {
        switch (itembox->meIndex) {
            case 0:
                AddLives(1);
                if (gStageData.gameMode == GAME_MODE_5) {
                    sub_8027834();
                }
                break;
            case 6:
                itembox->p->unk13C &= ~0x20;
                itembox->p->unk13C |= 0x10;
                break;
            case 7:
                itembox->p->unk13C &= ~0x10;
                itembox->p->unk13C |= 0x20;
                break;
            case 5:
                itembox->p->framesInvincible = 0x4B0;
                itembox->p->unk13C |= 0x40;
                break;
            case 4:
                itembox->p->timerSpeedup = 0x4B0;
                itembox->p->timerSlowItem = 0;
                itembox->p->unk62 = 0;
                if (gStageData.gameMode == 6) {
                    for (var_r6 = 0; var_r6 < NUM_MULTI_PLAYER_CHARS; var_r6++) {
                        if (&gPlayers[var_r6] == itembox->p) {
                            break;
                        }
                    }
                    sub_80277AC(var_r6, 0);
                }
                break;
            case 2:
                AddRings(10);
                sub_8003DF0(SE_RING_OLD_2);
                break;
            case 15: {
                gUnknown_03001060.unk8 = 0;
                gUnknown_03001060.unk9 = 0;
                sub_80267E8();
                for (pid = 0; pid < 4; pid++) {
#ifdef BUG_FIX
                    player = &gPlayers[pid];
#endif
                    if (&gPlayers[pid] == itembox->p) {
                        break;
                    }
                }
                if (GetBit(gUnknown_03001060.unk9, (pid + 4))) {
                    if (!(player->moveState & 0x01000000)) { // TODO/BUG: 'player' not set here?
                        sub_800ED50(itembox->p);
                    }
                }
            } break;
            case 11:
                for (var_r6 = 0; var_r6 < 4; var_r6++) {
                    if ((&gPlayers[var_r6] != itembox->p) && (var_r6 != itembox->p->charFlags.partnerIndex)) {
                        player = &gPlayers[var_r6];
                        player->unk62 = 600;
                        player->timerSlowItem = 0;
                        player->timerSpeedup = 0;
                        sub_80179BC(player);
                    }
                }
                for (var_r6 = 0; var_r6 < 4; var_r6++) {
                    if (&gPlayers[var_r6] == itembox->p) {
                        break;
                    }
                }
                sub_80277F0(var_r6, 0);
                break;
            case 12:
                itembox->p->unk62 = 600;
                itembox->p->timerSlowItem = 0;
                itembox->p->timerSpeedup = 0;
                sub_80179BC(itembox->p);
                {
                    partner = &gPlayers[itembox->p->charFlags.partnerIndex];
                    partner->unk62 = 600;
                    partner->timerSlowItem = 0;
                    partner->timerSpeedup = 0;
                    sub_80179BC(partner);
                }
                for (var_r6 = 0; var_r6 < 4; var_r6++) {
                    if (&gPlayers[var_r6] == itembox->p) {
                        break;
                    }
                }
                sub_80277F0(var_r6, 1);
                break;
            case 13:
                for (var_r6 = 0; var_r6 < 4; var_r6++) {
                    if ((&gPlayers[var_r6] != itembox->p) && (var_r6 != itembox->p->charFlags.partnerIndex)) {
                        player = &gPlayers[var_r6];
                        player->timerSlowItem = 600;
                        player->unk62 = 0;
                        player->timerSpeedup = 0;
                        sub_80179BC(player);
                    }
                }
                for (var_r6 = 0; var_r6 < 4; var_r6++) {
                    if (&gPlayers[var_r6] == itembox->p) {
                        break;
                    }
                }
                sub_8027768(var_r6, 0);
                break;
            case 14:
                itembox->p->timerSlowItem = 600;
                itembox->p->unk62 = 0;
                itembox->p->timerSpeedup = 0;
                sub_80179BC(itembox->p);
                {
                    partner = &gPlayers[itembox->p->charFlags.partnerIndex];
                    partner->timerSlowItem = 600;
                    partner->unk62 = 0;
                    partner->timerSpeedup = 0;
                    sub_80179BC(partner);
                }
                for (var_r6 = 0; var_r6 < 4; var_r6++) {
                    if (&gPlayers[var_r6] == itembox->p) {
                        break;
                    }
                }
                sub_8027768(var_r6, 1);
                break;
            case 10:
                for (var_r6 = 0; var_r6 < 4; var_r6++) {
                    if (&gPlayers[var_r6] == itembox->p) {
                        break;
                    }
                }
                sub_80277AC(var_r6, 1);
                break;
            case 1: {
                if (gStageData.gameMode == GAME_MODE_MP_MULTI_PACK) {
                    for (var_r6 = 0; var_r6 < 4; var_r6++) {
                        Player *player = &gPlayers[var_r6];
                        if (player == itembox->p) {
                            sub_8017A58(player);
                            break;
                        }
                    }
                    sub_802773C(1 & var_r6, 5U);
                    for (var_r1_2 = 0; var_r1_2 < 4; var_r1_2++) {
                        if ((var_r1_2 & 1) == (1 & var_r6)) {
                            sub_8017A58(&gPlayers[var_r1_2]);
                        }
                    }
                }
                AddRings(5);
                sub_8003DF0(SE_RING_OLD_2);
            } break;
            case 8:
                for (var_r6 = 0; var_r6 < 4; var_r6++) {
                    if (&gPlayers[var_r6] == itembox->p) {
                        break;
                    }
                }
                sub_802773C(~var_r6 & 1, 5U);
                for (var_r1_2 = 0; var_r1_2 < 4; var_r1_2++) {
                    if ((var_r1_2 & 1) != (var_r6 & 1)) {
                        sub_8017A58(&gPlayers[var_r1_2]);
                    }
                }
                break;
            case 3:
                if (gStageData.gameMode == 3) {
                    rings = 10;
                } else {
                    rings = ItemBox_ringAmountTable[PseudoRandom32() % ARRAY_COUNT(ItemBox_ringAmountTable)];
                }
                if (gStageData.gameMode == GAME_MODE_MP_MULTI_PACK) {
                    for (var_r6 = 0; var_r6 < 4; var_r6++) {
                        if (&gPlayers[var_r6] == itembox->p) {
                            break;
                        }
                    }
                    sub_802773C(var_r6 & 1, (u16)rings);
                    for (var_r1_2 = 0; var_r1_2 < 4; var_r1_2++) {
                        if ((var_r1_2 & 1) == (var_r6 & 1)) {
                            sub_8017A58(&gPlayers[var_r1_2]);
                        }
                    }
                }
                AddRings(rings);
                sub_8003DF0(SE_RING_OLD_2);
                break;
            case 9:
                rings = ItemBox_ringAmountTable[PseudoRandom32() % ARRAY_COUNT(ItemBox_ringAmountTable)];
                for (var_r6 = 0; var_r6 < 4; var_r6++) {
                    if (&gPlayers[var_r6] == itembox->p) {
                        break;
                    }
                }
                sub_802773C(~var_r6 & 1, rings);
                for (var_r1_2 = 0; var_r1_2 < 4; var_r1_2++) {
                    if ((var_r1_2 & 1) != (var_r6 & 1)) {
                        sub_8017A58(&gPlayers[var_r1_2]);
                    }
                }
                sub_8003DF0(SE_RING_OLD_2);
                break;
            default:
                return;
        }
    }

    itembox->unk7 = 0;
    gCurTask->main = Task_802D660;
}

// Almost OK, just the ASM-hack does not match.
s32 sub_802CE4C(ItemBox* itembox) {
    Player* playerCheese;
    Player* p;
    Sprite* sprItembox;
    s32 temp_r1_7;
    s32 var_sl;
    s16 var_r1;
    u8 temp_r1_2;
    u8 temp_r2;
    u8 var_r1_2;
    u32 coll;

    var_sl = 0;
    sprItembox = &itembox->s;
    for(var_r1 = 0; var_r1 < 2; var_r1++)
    {
        p = GET_SP_PLAYER_V0(var_r1);
        if (sub_802C080(p) != 0) {
            continue;
        }
        if (!((p->charFlags.someIndex != 1) && (p->charFlags.character != KNUCKLES))) {
            if (((p->charFlags.someIndex == 2) && p->charFlags.character == KNUCKLES)
                && (p->charFlags.anim0 == 0xE7 || p->charFlags.anim0 == 0xE8 || p->charFlags.anim0 == 0xE9)
                && ((gPlayers[p->charFlags.partnerIndex].charFlags.anim0 == 0xAF)
                 || (gPlayers[p->charFlags.partnerIndex].charFlags.anim0 == 0xB0)
                 || (gPlayers[p->charFlags.partnerIndex].charFlags.anim0 == 0xE0)
                 || (gPlayers[p->charFlags.partnerIndex].charFlags.anim0 == 0xE1) 
                 || (gPlayers[p->charFlags.partnerIndex].charFlags.anim0 == 0xC8) 
                 || (gPlayers[p->charFlags.partnerIndex].charFlags.anim0 == 0xC9) 
                 || (gPlayers[p->charFlags.partnerIndex].charFlags.anim0 == 0x10A) 
                 || (gPlayers[p->charFlags.partnerIndex].charFlags.anim0 == 0x10B)))
            {
                if (Itembox_CollisionPlayer(&itembox->s, itembox->unk14, 0, p, 1U) != 0) {
                    itembox->p = &gPlayers[p->charFlags.partnerIndex];
                    itembox->unk8 = 1;
                    return 1;
                }
            } else if (p->charFlags.character == KNUCKLES) {
                temp_r1_2 = p->charFlags.someIndex;
                if (p->charFlags.someIndex != 1) {
                    if ((gPlayers[p->charFlags.partnerIndex].charFlags.anim2 != 0x60)
                     && (gPlayers[p->charFlags.partnerIndex].charFlags.anim2 != 0x1A6) 
                     && (gPlayers[p->charFlags.partnerIndex].charFlags.anim2 != 0x103) 
                     && (gPlayers[p->charFlags.partnerIndex].charFlags.anim2 != 0x2EC)) {
                        continue;
                    }
                }
            }

            if (Itembox_CollisionPlayer(&itembox->s, itembox->unk14, 0, p, 1U) != 0) {
                coll = sub_8020950(sprItembox, itembox->unk14.x, itembox->unk14.y, p, 0U);
                if ((0x10000 & coll) &&
                 (p->charFlags.anim0 == 0xE2 || p->charFlags.anim0 == 0xE3 || p->charFlags.anim0 == 0xF7 || p->charFlags.anim0 == 10 || p->charFlags.anim0 == 11))
                {
                    continue;
                } else {
                    if ((p->moveState & 6) != 6) {
                        itembox->unk8 = 1;;
                        p->moveState |= 0x4000;
                        var_sl = 1;
                        if ((p->charFlags.anim0 == 0xAA) || (p->charFlags.anim0 == 0xBB) || (p->charFlags.anim0 == 0x100)) {
                            p->moveState |= 4;
                            SetPlayerCallback(p, Player_80069E4);
                        }
                        if (p->charFlags.character == 3) {
                            if ((gPlayers[p->charFlags.partnerIndex].charFlags.anim2 == 0x60)
                            || (gPlayers[p->charFlags.partnerIndex].charFlags.anim2 == 0x1A6)
                            || (gPlayers[p->charFlags.partnerIndex].charFlags.anim2 == 0x103)
                            || (gPlayers[p->charFlags.partnerIndex].charFlags.anim2 == 0x2EC))
                            {
                                itembox->p = &gPlayers[p->charFlags.partnerIndex];
                            } else {
                                itembox->p = p;
                            }
                        } else {
                            itembox->p = p;                        
                        }
                            goto lbl_return;
                    } else if (sub_802C0D4(p) == 0) {
                        coll = sub_8020950(sprItembox, itembox->unk14.x, itembox->unk14.y, p, 0);
                        if (0x30000 & coll) {
                            itembox->unk8 = 1;
                            p->moveState |= 0x4000;
                            var_sl = 1;
                            p->moveState |= 4;
                            SetPlayerCallback(p, Player_80069E4);
                            if ((p->charFlags.character == KNUCKLES) && (gPlayers[p->charFlags.partnerIndex].charFlags.anim2 == 0x60))
                            {
                                itembox->p = &gPlayers[p->charFlags.partnerIndex];
                            } else {
                                itembox->p = p;
                            }
                            goto lbl_return;
                        } else {
                            if (p->charFlags.anim2 == 0x208) {
                                if (p->charFlags.someIndex == 1) {
                                    itembox->unk8 = 1;
                                    p->moveState |= 0x4000;
                                    p->moveState |= 4;
                                    SetPlayerCallback(p, Player_80069E4);
                                    itembox->p = p;
                                    return 1;
                                }
                            }
                            itembox->unk8 = 1;
                            itembox->p = p;
                            return 1;
                        }
                    }
                }
            }
        } 
        if (sub_802C0D4(p) == 0) {
            coll = sub_8020950(sprItembox, itembox->unk14.x, itembox->unk14.y, p, 0);
            if (coll & 0x10000) {
                if (!(p->moveState & 0x10000)) {
                    p->qWorldY += Q_8_8(coll);
                } else {
                    p->qWorldY -= Q_8_8(coll);
                }
                p->qSpeedAirY = 0;
            } else if (0x20000 & coll) {
                if (p->moveState & 0x10000) {
                    p->qWorldY += Q_8_8(coll);
                } else {
                    p->qWorldY -= Q_8_8(coll);
                }
                p->qSpeedAirY = 0;
            }
            if (0xC0000 & coll) {
                if(p->moveState & 2) {
                    // TODO: ASM-hack
                    asm("");
                }
                p->qWorldX += Q((s16)coll >> 8);
                p->qSpeedAirX = 0;
                p->qSpeedGround = 0;
                if ((0x40000 & coll) && (0x20 & p->keyInput)) {
                    p->qWorldX -= Q(1);
                    p->moveState |= 0x40;
                } else if ((0x80000 & coll) && (0x10 & p->keyInput)) {
                    p->qWorldX += Q(1);
                    p->moveState |= 0x40;
                }
            }
        }
    }
    {
        Cheese *cheese = TASK_DATA(gStageData.taskCheese);
        playerCheese = cheese->player;
        temp_r1_7 = 0x1C & playerCheese->charFlags.someIndex;
        if (((playerCheese->charFlags.someIndex == 1) || (playerCheese->charFlags.someIndex == 4)) && (Itembox_CollisionCheese(&itembox->s, itembox->unk14.x, itembox->unk14.y, 0U) != 0)) {
            itembox->unk8 = 2;
            itembox->p = playerCheese;
            var_sl = 1;
        }
    }

lbl_return:
    return var_sl;
}
#endif

// (84.34%) https://decomp.me/scratch/GzKFl
NONMATCH("asm/non_matching/game/Itembox_CollisionPlayer.inc",
         bool32 Itembox_CollisionPlayer(Sprite *s, Vec2_32 world, u8 hbIndexSpr, Player *p, u8 hbIndexPlayer))
{
    PlayerSpriteInfo *psiBody = p->spriteInfoBody;
    Sprite2 *sprBody = &psiBody->s;

    if (!(p->moveState & MOVESTATE_DEAD)) {
        if (HITBOX_IS_ACTIVE(s->hitboxes[hbIndexSpr]) && HITBOX_IS_ACTIVE(psiBody->s.hitboxes[hbIndexPlayer])) {
            Rect8 hbPlayer;
            hbPlayer.left = sprBody->hitboxes[hbIndexPlayer].b.left;
            hbPlayer.top = sprBody->hitboxes[hbIndexPlayer].b.top - 4;
            hbPlayer.right = sprBody->hitboxes[hbIndexPlayer].b.right;
            hbPlayer.bottom = sprBody->hitboxes[hbIndexPlayer].b.bottom + 4;

            if (HB_COLLISION(world.x, world.y, s->hitboxes[hbIndexSpr].b, I(p->qWorldX), I(p->qWorldY), hbPlayer)) {
                return TRUE;
            }
        }
    }

    return FALSE;
}
END_NONMATCH

// (73.87%) https://decomp.me/scratch/PChXs
NONMATCH("asm/non_matching/game/Itembox_CollisionCheese.inc", bool32 Itembox_CollisionCheese(Sprite *s, s32 worldX, s32 worldY, u8 hbIndex))
{
    Cheese *cheese = TASK_DATA(gStageData.taskCheese);

    if (HITBOX_IS_ACTIVE(s->hitboxes[hbIndex]) && HITBOX_IS_ACTIVE(cheese->s.hitboxes[1])) {
        if (CMS_2 & cheese->moveState) {
            Rect8 hbCheese;
            hbCheese.left = cheese->s.hitboxes[1].b.left;
            hbCheese.top = cheese->s.hitboxes[1].b.top - 4;
            hbCheese.right = cheese->s.hitboxes[1].b.right;
            hbCheese.bottom = cheese->s.hitboxes[1].b.bottom + 4;

            if (HB_COLLISION(worldX, worldY, s->hitboxes[hbIndex].b, I(cheese->qWorldX), I(cheese->qWorldY), hbCheese)) {
                return TRUE;
            }
        }
    }

    return FALSE;
}
END_NONMATCH

void TaskDestructor_ItemBox(Task *t)
{
    ItemBox *itembox = TASK_DATA(t);
    VramFree(itembox->s.tiles);
    VramFree(itembox->s2.tiles);
}

void Task_802D61C()
{
    ItemBox *itembox = TASK_DATA(gCurTask);

    if (itembox->unk7++ >= 60) {
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

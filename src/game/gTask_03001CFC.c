#include "global.h"
#include "core.h"
#include "trig.h"
#include "lib/m4a/m4a.h"
#include "game/gTask_03001CFC.h"
#include "game/stage.h"
#include "game/shared/rings_manager.h"
#include "game/shared/stage/entity.h"
#include "game/shared/stage/player.h"
#include "game/shared/stage/terrain_collision.h"
#include "constants/move_states.h"
#include "constants/songs.h"

void Task_802B71C(void);
void Task_802B744(void);
void Task_802B76C(void);
void TaskDestructor_802B778(struct Task *t);

void sub_802AFFC(Strc_3001CFC *arg0, Strc_3001CFC_sub *arg1, s32 arg2, s32 arg3);
void sub_802B0A4(Strc_3001CFC *arg0, Strc_3001CFC_sub *arg1, s32 arg2, s32 arg3);
void sub_802B160(Strc_3001CFC *arg0, Strc_3001CFC_sub *arg1, s32 arg2, s32 arg3);
void sub_802B1A0(Strc_3001CFC *arg0, Strc_3001CFC_sub *arg1, s32 arg2, s32 arg3);

// TODO: We might be able to match without these?
static inline s32 tempGetCamX() { return gCamera.x; }
static inline s32 tempGetCamY() { return gCamera.y; }

struct Task *gTask_03001CFC = NULL;

void Create_gTask_03001CFC(void)
{
    s16 sp4;
    struct Task *t;
    struct Task **pt;
    Strc_3001CFC *strc;
    Sprite *s;
    u8 *var_r0_2;
    void (*var_r0)(void);
    Strc_3001CFC_sub *sub;

    // NOTE: The way this is written is necesary for matching... might've been a macro?
    if (gStageData.gameMode != 7) {
        if (gStageData.gameMode < 6) {
            pt = &gTask_03001CFC;
            *pt = t = TaskCreate(Task_802B71C, sizeof(Strc_3001CFC), 0x2001U, 0U, TaskDestructor_802B778);
        } else {
            pt = &gTask_03001CFC;
            *pt = t = TaskCreate(Task_802B744, sizeof(Strc_3001CFC), 0x2001U, 0U, TaskDestructor_802B778);
        }
    } else {
        pt = &gTask_03001CFC;
        *pt = t = TaskCreate(Task_802B76C, sizeof(Strc_3001CFC), 0x2001U, 0U, TaskDestructor_802B778);
    }
    strc = TASK_DATA(t);
    s = &strc->s;
    s->x = 0;
    s->y = 0;
    if ((u32)gStageData.gameMode <= 5U) {
        s->tiles = OBJ_VRAM1 + 0x180;
    } else {
        s->tiles = OBJ_VRAM1 + 0x1A0;
    }
    s->oamFlags = 0x400;
    s->anim = 0x535;
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = 0xFF;
    s->animSpeed = 0x20;
    s->palId = 0;
    s->frameFlags = 0x41200;
    strc->unk2AE = 0;
    strc->unk2AC = 0x94;
    strc->unk2A8 = 0x12;
    strc->unk2B0 = 0;

    sub = &strc->unk28[0];
    DmaFill16(3, 0, sub, sizeof(strc->unk28));
}

// (89.41%) https://decomp.me/scratch/mPhLU
NONMATCH("asm/non_matching/game/c031__sub_802AE64.inc", void sub_802AE64(Player *p, s16 arg1))
{
    Strc_3001CFC *temp_sb;
    Strc_3001CFC_sub *var_r4;
    s32 var_r6;
    s32 var_r7;
    s32 temp_r1;
    s32 temp_r2;
    s32 var_ip;
    s32 var_r0;
    s32 var_r3;
    s32 var_sb;
    u16 var_r1;
    s32 r1;

    temp_sb = TASK_DATA(gTask_03001CFC);
    var_r4 = temp_sb->unk28;
    var_r6 = 0;
    var_r7 = 0;
    if (arg1 == 0) {
        return;
    }
    if (gStageData.gameMode == 6) {
        if ((&gPlayers[gStageData.playerIndex] == p) || (gStageData.playerIndex == p->charFlags.partnerIndex)) {
            gStageData.rings = 0;
        }
    } else if (gStageData.gameMode == 5) {
        gStageData.rings = 0;
    }

    if (gStageData.gameMode > 5U) {
        r1 = arg1;
        if (arg1 > 0x10) {
            r1 = 0x10;
        }
        arg1 = r1;
    } else {
        r1 = arg1;
        if (arg1 > 0x20) {
            r1 = 0x20;
        }
        arg1 = r1;
    }
    m4aSongNumStart(SE_LOST_RINGS);

    var_r3 = 0x488;
    temp_sb->unk2B0 = GetBit(p->moveState, 16);
    for (var_sb = 0, var_ip = 0; var_sb < 32; var_sb++, var_r4++) {
        {
            if (var_r4->unkC == 0) {
                var_r4->unkC = 0xB4;
                var_r4->unkE = (u16)p->layer;
                var_r4->unk0 = p->qWorldX;
                var_r4->unk4 = p->qWorldY;
                if (var_r3 >= 0) {
                    temp_r2 = var_r3 >> 8;
                    if (temp_r2 > 5) {
                        var_r0 = -temp_r2;
                        var_r0 += 9;
                    } else {
                        var_r0 = temp_r2;
                    }
                    temp_r2 = var_r0;
                    var_r6 = SIN((0xFF & var_r3) * 4) >> temp_r2;
                    var_r7 = COS((0xFF & var_r3) * 4) >> temp_r2;
                    var_r6 = var_r6 - (var_r6 >> 2);
                    var_r7 = var_r7 - (var_r7 >> 2);
                    var_r3 = (var_r3 + 0x10) | 0x80;
                }

                var_r4->unk8 = var_r6;
                var_r4->unkA = var_r7;
                if (p->moveState & 0x10000) {
                    var_r4->unkA = -var_r4->unkA;
                }
                var_r3 = 0 - var_r3;
                var_r6 = 0 - var_r6;
                var_r4->unk10 = 0;
                if (!(PseudoRandom32() & 0x10000)) {
                    var_r4->unk10 = 4;
                }
                var_r4->unk10 |= var_ip & 3;
                if (++var_ip >= arg1)
                    break;
            }
        }
    }
}
END_NONMATCH

void sub_802AFFC(Strc_3001CFC *arg0, Strc_3001CFC_sub *arg1, s32 arg2, s32 arg3)
{
    s16 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r7;
    s32 var_r0;
    u16 temp_r1;

    temp_r7 = arg0->unk2A8;
    temp_r0 = arg1->unkA;
    if ((s32)temp_r0 > 0) {
        if (!(7 & arg1->unk10)) {
            temp_r0_2 = sa2__sub_801F100(arg3, arg2, (s32)(s16)arg1->unkE, 8, sa2__sub_801EC3C);
            if (temp_r0_2 <= 0) {
                var_r0 = arg1->unk4 + (temp_r0_2 << 8);
                arg1->unk4 = var_r0;
                arg1->unkA = (arg1->unkA >> 2) - arg1->unkA; // *= -75%
            }
        }
    } else if (((s32)temp_r0 < 0) && (1 & (u16)arg0->unk2AE) && !(7 & arg1->unk10)) {
        temp_r0_3 = sa2__sub_801F100(arg3 - 0x10, arg2, (s32)(s16)arg1->unkE, -8, sa2__sub_801EC3C);
        if (temp_r0_3 <= 0) {
            var_r0 = arg1->unk4 - (temp_r0_3 << 8);
        block_9:
            arg1->unk4 = var_r0;
            arg1->unkA = (arg1->unkA >> 2) - arg1->unkA; // *= -75%
        }
    }
    arg1->unkA = (u16)arg1->unkA + temp_r7;
}

void sub_802B0A4(Strc_3001CFC *arg0, Strc_3001CFC_sub *arg1, s32 arg2, s32 arg3)
{
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r8;
    u16 temp_r1;
    u16 temp_r1_2;

    temp_r8 = arg0->unk2A8;
    if (((s32)arg1->unkA < 0) && !(7 & arg1->unk10)) {
        temp_r0 = sa2__sub_801F100(arg3 - 0x10, arg2, (s32)(s16)arg1->unkE, -8, sa2__sub_801EC3C);
        if (temp_r0 <= 0) {
            arg1->unk4 -= temp_r0 << 8;
            temp_r1 = (u16)arg1->unkA;
            arg1->unkA = ((s32)(temp_r1 << 0x10) >> 0x12) - temp_r1;
        }
    }
    if ((1 & (u16)arg0->unk2AE) && ((s32)arg1->unkA > 0) && !(7 & arg1->unk10)) {
        temp_r0_2 = sa2__sub_801F100(arg3, arg2, (s32)(s16)arg1->unkE, 8, sa2__sub_801EC3C);
        if (temp_r0_2 <= 0) {
            arg1->unk4 += temp_r0_2 << 8;
            temp_r1_2 = (u16)arg1->unkA;
            arg1->unkA = ((s32)(temp_r1_2 << 0x10) >> 0x12) - temp_r1_2;
        }
    }
    arg1->unkA = (u16)arg1->unkA - temp_r8;
}

void sub_802B160(Strc_3001CFC *arg0, Strc_3001CFC_sub *arg1, s32 arg2, s32 arg3)
{
    if (((u32)(arg2 + 7) < 255) && (arg3 > -8) && (arg3 < 0xA8) && (((u32)arg1->unkC > 0x1FU) || !(gStageData.timer & 2))) {
        arg0->s.oamBaseIndex = 0xFF;
        arg0->s.x = arg2;
        arg0->s.y = (s16)arg3;
        DisplaySprite(&arg0->s);
    }
}

void sub_802B1A0(Strc_3001CFC *arg0, Strc_3001CFC_sub *arg1, s32 arg2, s32 arg3)
{
    s32 sp0;
    Player *p;
    PlayerSpriteInfo *temp_r4;
    s32 temp_r0;
    s32 temp_r1_2;
    s32 temp_r2_3;
    s32 temp_r2_4;
    s8 temp_r3_2;
    u32 temp_r0_3;
    s16 pid;
    u8 temp_r2;
    u8 var_r1_2;

    sp0 = (s32)(u16)arg0->unk2AC;
    for (pid = 0; pid < 2; pid++) {
        p = GET_SP_PLAYER_V0(pid);
        temp_r4 = p->spriteInfoBody;
        if (((p->charFlags.someIndex != 2) || !(gPlayers[p->charFlags.partnerIndex].moveState & MOVESTATE_DEAD)) && ((s32)arg1->unkC <= sp0)
            && ((p->charFlags.anim0 != 0x66) || (p->framesInvulnerable == 0)) && !(p->moveState & MOVESTATE_DEAD)) {
            Rect8 *b = &temp_r4->s.hitboxes[0].b;
            if ((arg2 - 8) <= (I(p->qWorldX) + b->left)) {
                if ((arg2 + 8) < (I(p->qWorldX) + b->left)) {
                    if ((arg2 - 8) < (I(p->qWorldX) + b->left)) {
                        continue;
                    }
                } else {
                    goto block_14;
                }
            }
            if (((I(p->qWorldX) + b->left) + (b->right - b->left)) >= (arg2 - 8)) {
            block_14:
                temp_r2_3 = arg3 - 0x10;
                temp_r1_2 = ((s32)p->qWorldY >> 8) + b->top;
                if (temp_r2_3 <= temp_r1_2) {
                    if (arg3 < temp_r1_2) {
                        if (temp_r2_3 < temp_r1_2) {
                            continue;
                        }
                    } else {
                        goto block_18;
                    }
                }
            block_17:
                if ((s32)(temp_r1_2 + (b->bottom - b->top)) >= temp_r2_3) {
                block_18:
                    CreateCollectRingEffect((s16)arg2, (s16)arg3);
                    if ((pid == 0) || ((p->charFlags.someIndex == 2)) || (p->charFlags.someIndex == 5)) {
                        AddRings(1U);
                    }
                    arg1->unkC = 1;
                    return;
                }
            }
        }
    }
}

void sub_802B2F8(void)
{
    Strc_3001CFC_sub *var_r7;
    s32 temp_r8;
    s32 temp_r4;
    s32 temp_r4_2;
    s32 temp_r5;
    s32 temp_r5_2;
    s32 temp_r6;
    s32 var_sl;
    u16 temp_r1;
    Strc_3001CFC *strc = TASK_DATA(gCurTask);

    var_r7 = strc->unk28;
    UpdateSpriteAnimation(&strc->s);

    for (var_sl = 0; var_sl < (s32)ARRAY_COUNT(strc->unk28); var_r7++, var_sl++) {
        if (var_r7->unkC != 0) {
            var_r7->unk0 += var_r7->unk8;
            var_r7->unk4 += var_r7->unkA;
            temp_r5_2 = I(var_r7->unk0);
            temp_r4_2 = I(var_r7->unk4);
            temp_r8 = temp_r5_2 - tempGetCamX();
            temp_r6 = temp_r4_2 - tempGetCamY();
            sub_802B1A0(strc, var_r7, temp_r5_2, temp_r4_2);
            sub_802B0A4(strc, var_r7, temp_r5_2, temp_r4_2);
            sub_802B160(strc, var_r7, temp_r8, temp_r6);
            temp_r1 = var_r7->unk10;
            var_r7->unk10 = (var_r7->unk10 & ~3) | ((var_r7->unk10 + 1) & 3);
            var_r7->unkC -= 1;
        }
    }
}

void sub_802B3B8()
{
    Strc_3001CFC_sub *var_r7;
    s32 temp_r8;
    s32 temp_r4;
    s32 temp_r4_2;
    s32 temp_r5;
    s32 temp_r5_2;
    s32 temp_r6;
    s32 var_sl;
    u16 temp_r1;

    Strc_3001CFC *strc = TASK_DATA(gCurTask);

    var_r7 = strc->unk28;
    UpdateSpriteAnimation(&strc->s);

    for (var_sl = 0; var_sl < (s32)ARRAY_COUNT(strc->unk28); var_sl++, var_r7++) {
        if (var_r7->unkC != 0) {
            var_r7->unk0 += var_r7->unk8;
            var_r7->unk4 += var_r7->unkA;
            temp_r5_2 = I(var_r7->unk0);
            temp_r4_2 = I(var_r7->unk4);
            temp_r8 = temp_r5_2 - tempGetCamX();
            temp_r6 = temp_r4_2 - tempGetCamY();
            sub_802B1A0(strc, var_r7, temp_r5_2, temp_r4_2);
            sub_802AFFC(strc, var_r7, temp_r5_2, temp_r4_2);
            sub_802B160(strc, var_r7, temp_r8, temp_r6);
            temp_r1 = var_r7->unk10;
            var_r7->unk10 = (var_r7->unk10 & ~3) | ((var_r7->unk10 + 1) & 3);
            var_r7->unkC -= 1;
        }
    }
}

void sub_802B478()
{
    Strc_3001CFC_sub *var_r7;
    s32 temp_r8;
    s32 temp_r4;
    s32 temp_r4_2;
    s32 temp_r5;
    s32 temp_r5_2;
    s32 temp_r6;
    s32 var_sl;
    u16 temp_r1;
    Strc_3001CFC *strc = TASK_DATA(gCurTask);

    var_r7 = strc->unk28;
    UpdateSpriteAnimation(&strc->s);

    for (var_sl = 0; var_sl < (s32)ARRAY_COUNT(strc->unk28); var_r7++, var_sl++) {
        if (var_r7->unkC != 0) {
            var_r7->unk0 += var_r7->unk8;
            var_r7->unk4 += var_r7->unkA;
            temp_r5_2 = I(var_r7->unk0);
            temp_r4_2 = I(var_r7->unk4);
            temp_r8 = temp_r5_2 - tempGetCamX();
            temp_r6 = temp_r4_2 - tempGetCamY();
            sub_802B1A0(strc, var_r7, temp_r5_2, temp_r4_2);
            sub_802B0A4(strc, var_r7, temp_r5_2, temp_r4_2);
            sub_802B160(strc, var_r7, temp_r8, temp_r6);
            temp_r1 = var_r7->unk10;
            var_r7->unk10 = (var_r7->unk10 & ~3) | ((var_r7->unk10 + 1) & 3);
            var_r7->unkC -= 1;
        }
    }
}

void sub_802B538(void)
{
    Strc_3001CFC_sub *var_r7;
    s32 temp_r8;
    s32 temp_r4;
    s32 temp_r4_2;
    s32 temp_r5;
    s32 temp_r5_2;
    s32 temp_r6;
    s32 var_sl;
    u16 temp_r1;
    Strc_3001CFC *strc = TASK_DATA(gCurTask);

    var_r7 = strc->unk28;
    UpdateSpriteAnimation(&strc->s);

    for (var_sl = 0; var_sl < (s32)ARRAY_COUNT(strc->unk28); var_r7++, var_sl++) {
        if (var_r7->unkC != 0) {
            var_r7->unk0 += var_r7->unk8;
            var_r7->unk4 += var_r7->unkA;
            temp_r5_2 = I(var_r7->unk0);
            temp_r4_2 = I(var_r7->unk4);
            temp_r8 = temp_r5_2 - tempGetCamX();
            temp_r6 = temp_r4_2 - tempGetCamY();
            sub_802B1A0(strc, var_r7, temp_r5_2, temp_r4_2);
            sub_802AFFC(strc, var_r7, temp_r5_2, temp_r4_2);
            sub_802B160(strc, var_r7, temp_r8, temp_r6);
            temp_r1 = var_r7->unk10;
            var_r7->unk10 = (var_r7->unk10 & ~3) | ((var_r7->unk10 + 1) & 3);
            var_r7->unkC -= 1;
        }
    }
}

void Task_802B5F8()
{
    Strc_3001CFC_sub *var_r7;
    s32 temp_r8;
    s32 temp_r4_2;
    s32 temp_r5_2;
    s32 temp_r6;
    s32 var_sl;
    u16 temp_r1;

    Strc_3001CFC *strc = TASK_DATA(gCurTask);

    var_r7 = strc->unk28;
    UpdateSpriteAnimation(&strc->s);

    for (var_sl = 0; var_sl < (s32)ARRAY_COUNT(strc->unk28); var_r7++, var_sl++) {
        if (var_r7->unkC != 0) {
            var_r7->unk0 += var_r7->unk8;
            var_r7->unk4 += var_r7->unkA;
            temp_r5_2 = I(var_r7->unk0);
            temp_r4_2 = I(var_r7->unk4);
            temp_r8 = temp_r5_2 - tempGetCamX();
            temp_r6 = temp_r4_2 - tempGetCamY();
            sub_802B1A0(strc, var_r7, temp_r5_2, temp_r4_2);
            sub_802AFFC(strc, var_r7, temp_r5_2, temp_r4_2);
            sub_802B160(strc, var_r7, temp_r8, temp_r6);
            temp_r1 = var_r7->unk10;
            var_r7->unk10 = (var_r7->unk10 & ~3) | ((var_r7->unk10 + 1) & 3);
            var_r7->unkC -= 1;
        }
    }
}

void sub_802B6B8(void)
{
    TaskDestroy(gTask_03001CFC);
    gTask_03001CFC = NULL;
}

void sub_802B6D0(u16 arg0, u16 arg1)
{
    Strc_3001CFC_sub *var_r2;
    s32 var_r3;

    if (gTask_03001CFC != NULL) {
        Strc_3001CFC *strc = TASK_DATA(gTask_03001CFC);
        var_r2 = strc->unk28;
        for (var_r3 = 0; var_r3 < (s32)ARRAY_COUNT(strc->unk28); var_r3++, var_r2++) {
            if (var_r2->unkC != 0) {
                var_r2->unk0 += (s32)(arg0 << 0x10) >> 8;
                var_r2->unk4 += (s32)(arg1 << 0x10) >> 8;
            }
        }
    }
}

void Task_802B71C(void)
{
    Strc_3001CFC *strc = TASK_DATA(gCurTask);

    if (strc->unk2B0 != 0) {
        sub_802B2F8();
        return;
    }
    sub_802B3B8();
}

void Task_802B744()
{
    Strc_3001CFC *strc = TASK_DATA(gCurTask);
    if (strc->unk2B0 != 0) {
        sub_802B478();
        return;
    }
    sub_802B538();
}

void Task_802B76C(void) { Task_802B5F8(); }

void TaskDestructor_802B778(Task *arg0) { gTask_03001CFC = NULL; }

void sub_802B784(void) { }
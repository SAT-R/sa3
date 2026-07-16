#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "multi_sio_stuff.h"
#include "game/shared/stage/music_manager.h"
#include "game/shared/stage/player.h"
#include "game/sa3/bosses/more_gemerl.h"
#include "game/save.h"
#include "game/stage.h"
#include "constants/animations.h"
#include "constants/move_states.h"

#define SPRITE_ARR_1_COUNT 16
#define SPRITE_ARR_2_COUNT 11

typedef struct {
    s32 unk0;
    u8 unk4;
    u8 unk5;
} EggFoot_3C8;

typedef struct {
    s32 x;
    s32 y;
    Sprite2 s;
} ExtSprite;

typedef struct {
    /* 0x00 */ AnimId anim;
    /* 0x02 */ u8 pattern;
    /* 0x03 */ u8 unk3;
    /* 0x04 */ u8 unk4;
    /* 0x05 */ u8 unk5;
    /* 0x06 */ u8 unk6;
    /* 0x07 */ u8 unk7;
} Strc_80D57CC;

typedef struct {
    /* 0x000 */ s32 unk0;
    /* 0x000 */ s32 unk4;
    /* 0x000 */ s32 unk8;
    /* 0x000 */ s32 unkC;
    /* 0x010 */ s32 unk10;
    /* 0x014 */ s32 unk14;
    /* 0x018 */ s32 unk18;
    /* 0x01C */ s32 unk1C;
    /* 0x020 */ u16 unk20;
    /* 0x024 */ u8 unk24[8];
    /* 0x02C */ u8 *bossPhase;
    /* 0x030 */ u8 lives;
    /* 0x031 */ u8 unk31;
    /* 0x032 */ u16 unk32;
    /* 0x034 */ u16 unk34;
    /* 0x036 */ u16 unk36;
    /* 0x038 */ u8 *vram38; // 124 tiles
    /* 0x03C */ u8 *vram3C; // 116 tiles
    /* 0x040 */ Player *player;
    /* 0x044 */ Player *partner;
    /* 0x048 */ ExtSprite sprites48[SPRITE_ARR_1_COUNT];
    /* 0x3C8 */ EggFoot_3C8 unk3C8[2][SPRITE_ARR_2_COUNT];
    /* 0x478 */ ExtSprite sprites478[SPRITE_ARR_2_COUNT];
} EggFoot;

void sub_806D404(EggFoot *boss);
void sub_806D6C4(EggFoot *boss);
void sub_806DA20(EggFoot *boss);
void sub_806DB78(EggFoot *boss);
void sub_806E330(EggFoot *boss);
void sub_806EAA0(EggFoot *boss);
void Task_EggFootInit(void);
bool8 sub_806D840(EggFoot *arg0, s32 arg1);
void sub_806E99C(void);
void sub_806E9C0(void);
void sub_806E9F0(void);
void sub_807A37C(void);
void TaskDestructor_EggFoot(struct Task *t);
void sub_8078E34(s32 *sp0, VoidFn func);

extern const Strc_80D57CC gUnknown_080D57CC[SPRITE_ARR_1_COUNT];

Task *CreateEggFoot(u8 *bossPhase, s32 worldX, s32 worldY)
{
    Task *t = TaskCreate(Task_EggFootInit, sizeof(EggFoot), 0x2100U, 0U, TaskDestructor_EggFoot);
    EggFoot *boss = TASK_DATA(t);

    gStageData.taskBoss = t;

    boss->unk0 = worldX << 8;
    boss->unk4 = -0xC800;
    boss->player = gPlayers;
    boss->partner = &gPlayers[1];
    boss->unk8 = 0;
    boss->unkC = 0;
    boss->bossPhase = bossPhase;

    if (gStageData.difficulty == DIFFICULTY_NORMAL) {
        boss->lives = 8;
    } else {
        boss->lives = 6;
    }

    boss->unk10 = 0x4800;
    boss->unk32 = 0;
    boss->unk24[5] = 1;
    boss->unk24[6] = 0;
    boss->unk18 = 0;
    boss->unk1C = 0;
    boss->unk20 = 0;
    boss->unk24[2] = 0;
    boss->unk24[3] = 0;
    boss->vram38 = VramMalloc(0x7CU);
    boss->vram3C = VramMalloc(0x74U);
    sub_806D404(boss);
    SetFixedRandomIfTimeAttackMode();

    return t;
}

void Task_806D268(void)
{
    EggFoot *boss = TASK_DATA(gCurTask);
    s16 temp_r1;
    s16 pid;
    u16 temp_r0;

    if (*boss->bossPhase == 3) {
        TaskDestroy(gCurTask);
        return;
    }
    sub_806D6C4(boss);

    if (*boss->bossPhase == 2) {
        for (pid = 0; pid < NUM_SINGLE_PLAYER_CHARS; pid++) {
            Player *p = &gPlayers[pid];
            if (I(p->qWorldX) <= 1248 || I(p->qWorldX) >= 1608) {
                return;
            }
        }

        if (pid >= NUM_SINGLE_PLAYER_CHARS) {
            sub_80299D4(50);
            boss->unk34 = 0;
            boss->unk36 = 1;
            gCurTask->main = sub_806E99C;
        }
    }
}

void sub_806D2F8(void)
{
    EggFoot *boss = TASK_DATA(gCurTask);
    u8 temp_r4;

    sub_806E330(boss);
    sub_806DB78(boss);
    temp_r4 = sub_806D840(boss, 0);
    temp_r4 += sub_806D840(boss, 1);

    if (temp_r4) {
        sub_806DA20(boss);
    }

    if (boss->lives == 0) {
        if (gStageData.gameMode == GAME_MODE_5) {
            if (gStageData.playerIndex != PLAYER_1) {
                gCurTask->main = sub_806E9C0;
            } else {
                sub_8027674(1U, 0U);
                sub_806EAA0(boss);
                gCurTask->main = sub_806E9F0;
            }
        } else {
            sub_806EAA0(boss);
            gCurTask->main = sub_806E9F0;
        }
    }

    sub_806D6C4(boss);
}

void sub_806D388()
{
    s32 sp0[4];
    EggFoot *boss = TASK_DATA(gCurTask);
    Player *p = boss->player;

    switch (boss->unk34) {
        case 0:
            if (boss->vram38 != NULL) {
                VramFree(boss->vram38);
                boss->vram38 = NULL;
            }
            sp0[0] = I(boss->unk0);
            sp0[1] = gCamera.maxY - 50;
            sp0[2] = I(boss->unk0);
            sp0[3] = gCamera.maxY - 37;
            sub_8078E34(sp0, sub_807A37C);
            boss->unk34 = 1;
            break;

        case 1:
            if (!(p->moveState & MOVESTATE_IGNORE_INPUT)) {
                *boss->bossPhase = 0;
                boss->unk34 = 100;
            }
            break;
    }
}

void sub_806D404(EggFoot *boss)
{
    Sprite *s;
    const Strc_80D57CC *temp_r4;
    u8 *vram = boss->vram38;
    u8 i;

    for (i = 0; i < SPRITE_ARR_1_COUNT; i++) {
        ExtSprite *ext = &boss->sprites48[i];
        s = (Sprite *)&ext->s;
        boss->sprites48[i].x = boss->unk0;
        boss->sprites48[i].y = boss->unk4;
        s->tiles = vram;
        temp_r4 = &gUnknown_080D57CC[i];
        s->oamFlags = SPRITE_OAM_ORDER(temp_r4->unk3 + 2);
        s->anim = temp_r4->anim;
        s->variant = temp_r4->pattern;
        s->qAnimDelay = 0;
        s->prevVariant = -1;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->x = 0;
        s->y = 0;
        s->frameFlags = 0x1000;

        if (temp_r4->unk4 == 0) {
            s->frameFlags |= 0x80000;
        }

        if (temp_r4->unk5 != 0) {
            s->frameFlags |= 0x400;
        }

        UpdateSpriteAnimation((Sprite *)&ext->s);
        vram += temp_r4->unk6 * TILE_SIZE_4BPP;
    }

    vram = boss->vram3C;
    for (i = 0; i < SPRITE_ARR_2_COUNT; i++) {
        ExtSprite *ext;
        boss->unk3C8[0][i].unk0 = 0;
        boss->unk3C8[0][i].unk4 = 0;
        boss->unk3C8[0][i].unk5 = 1;
        boss->unk3C8[1][i].unk0 = 0;
        boss->unk3C8[1][i].unk4 = 0;
        boss->unk3C8[1][i].unk5 = 1;
        ext = &boss->sprites478[i];
        s = (Sprite *)&ext->s;
        boss->sprites478[i].x = 0;
        boss->sprites478[i].y = 0;
        s->tiles = vram;
        s->oamFlags = 0x540;
        s->anim = 0x4C5;
        s->variant = 0;
        s->qAnimDelay = 0;
        s->prevVariant = 0xFF;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->x = 0;
        s->y = 0;
        s->frameFlags = 0x1000;
        UpdateSpriteAnimation(s);
        vram += 5 * TILE_SIZE_4BPP;
    }
}

// (95.03%) https://decomp.me/scratch/tQUZm
NONMATCH("asm/non_matching/game/bosses/boss_3__sub_806D568.inc", void sub_806D568(EggFoot *boss))
{
    s32 x;
    s32 y;
    s32 temp_r5;
    s32 var_r3;
    u8 i;

    boss->sprites48[0].x = x = boss->unk0;
    boss->sprites48[0].y = y = boss->unk4;
    boss->sprites48[1].x = x;
    boss->sprites48[1].y = y;
    boss->sprites48[2].x = x - Q(37);
    boss->sprites48[2].y = y + Q(8);
    boss->sprites48[3].x = x + Q(37);
    boss->sprites48[3].y = y + Q(8);
    boss->sprites48[4].x = boss->sprites48[2].x;
    boss->sprites48[4].y = boss->sprites48[2].y + boss->unk10;
    boss->sprites48[5].x = boss->sprites48[3].x;
    boss->sprites48[5].y = boss->sprites48[3].y + boss->unk10;
    boss->sprites48[6].x = boss->sprites48[4].x;
    boss->sprites48[6].y = boss->sprites48[4].y;
    boss->sprites48[7].x = boss->sprites48[5].x;
    boss->sprites48[7].y = boss->sprites48[5].y;

    temp_r5 = ((boss->unk10 - Q(28)) / 4) + 1;

    var_r3 = boss->sprites48[2].y + Q(12);
    for (i = 0; i < 4; i++, var_r3 += temp_r5) {
        boss->sprites48[8 + i].x = boss->sprites48[2].x;
        boss->sprites48[8 + i].y = var_r3;
    }

    var_r3 = boss->sprites48[3].y + Q(12);
    for (i = 0; i < 4; i++, var_r3 += temp_r5) {
        boss->sprites48[12 + i].x = boss->sprites48[3].x;
        boss->sprites48[12 + i].y = var_r3;
    }
}
END_NONMATCH

void sub_806D6C4(EggFoot *boss)
{
    u32 sp0;
    ExtSprite *temp_r6;
    Sprite *s;
    EggFoot_3C8 *temp_r6_2;
    AnimCmdResult acmdRes;
    s32 temp_r0_3;
    u8 var_r4;
    u8 j;

    if (boss->unk24[5] != 0) {
        for (var_r4 = 0; var_r4 < SPRITE_ARR_1_COUNT; var_r4++) {
            s32 qExtX, qExtY;
            s = (Sprite *)&boss->sprites48[var_r4].s;
            s->x = I(boss->sprites48[var_r4].x) - gCamera.x;
            s->y = I(boss->sprites48[var_r4].y) - gCamera.y;

            switch (var_r4) {
                case 1:
                case 6:
                case 7: {
                    UpdateSpriteAnimation(s);
                } break;
            }
            DisplaySprite(s);
        }
    }

    for (var_r4 = 0; var_r4 < SPRITE_ARR_2_COUNT; var_r4++) {
        if (boss->sprites478[var_r4].x != ACMD_RESULT__ENDED) {
            s = (Sprite *)&boss->sprites478[var_r4].s;
            acmdRes = UpdateSpriteAnimation(s);
            if (acmdRes == ACMD_RESULT__ENDED) {
                boss->sprites478[var_r4].x = 0;
            }
        }
    }

    for (var_r4 = 0; var_r4 < SPRITE_ARR_2_COUNT; var_r4++) {
        for (j = 0; j < (s32)ARRAY_COUNT(boss->unk3C8); j++) {
            if (boss->unk3C8[j][var_r4].unk0 != 0) {
                s = (Sprite *)&boss->sprites478[boss->unk3C8[j][var_r4].unk4].s;
                s->x = I(boss->unk3C8[j][var_r4].unk0) - gCamera.x;
                s->y = 192 - gCamera.y; // TODO: 192 might be (DISPLAY_HEIGHT + 32) instead?
                DisplaySprite(s);
                temp_r0_3 = boss->sprites478[boss->unk3C8[j][var_r4].unk4].x;
                if (temp_r0_3 == 0) {
                    boss->unk3C8[j][var_r4].unk0 = 0;
                }
            }
        }
    }
}

void sub_806D808(EggFoot *arg0, u8 pattern)
{
    Sprite *s = (Sprite *)&arg0->sprites48[1].s;

    switch (pattern) {
        case 1:
            s->anim = ANIM_BOSS_3_EGGMAN;
            s->variant = pattern;
            break;
        case 0:
            s->anim = ANIM_BOSS_3_EGGMAN;
            s->variant = pattern;
            break;
        case 2:
            s->anim = ANIM_BOSS_3_EGGMAN;
            s->variant = pattern;
            break;
        case 3:
            s->anim = ANIM_BOSS_3_EGGMAN;
            s->variant = pattern;
            break;
    }

    s->prevVariant = -1;
}

#if 0
? SetFixedRandomIfTimeAttackMode();                 /* extern */
? sub_80044CC(Player *);                            /* extern */
? sub_8004D68(s32, s32);                            /* extern */
? sub_8078E34(? *, ? *, s32, s32, s32, s32);        /* extern */
? sub_8079758(s32, s32, s16, s32, u32, s32, s32, u8 *); /* extern */
s32 sub_807A1DC(Sprite *);                          /* extern */
? sub_807A4A8();                                    /* extern */
u8 sub_806D840(EggFoot *arg0, s32 arg1);            /* static */
void sub_806DA20(EggFoot *arg0);                    /* static */
void sub_806DB78(EggFoot *arg0, ? arg3);            /* static */
void sub_806E330(EggFoot *arg0);                    /* static */
void sub_806E950(EggFoot *boss);                    /* static */
void sub_806E99C();                                 /* static */
void sub_806E9C0();                                 /* static */
void sub_806E9F0();                                 /* static */
void sub_806EAA0(EggFoot *arg0);                    /* static */
extern ? gUnknown_080D57CC;
extern ? gUnknown_080D584C;
extern ? gUnknown_080D5870;
extern ? sub_807A37C;

u8 sub_806D840(EggFoot *arg0, s32 arg1) {
    Player *temp_r0;
    Sprite *temp_r7;
    s32 temp_r0_3;
    s32 temp_r1;
    s32 temp_r2;
    s32 temp_r2_2;
    s32 temp_r4;
    s32 temp_r4_2;
    s32 temp_r5;
    s32 temp_r5_2;
    u32 temp_r0_2;
    u8 var_r4;
    u8 var_r5;
    u8 var_r5_2;
    u8 var_sl;

    var_sl = 0;
    temp_r0 = *(arg0 + 0x40 + ((u32) (arg1 << 0x18) >> 0x16));
    temp_r7 = arg0 + 0x50;
    temp_r4 = arg0->sprites48[0].x;
    temp_r5 = arg0->sprites48[0].y;
    if ((arg0->unk30 == 0) || (sub_802C080(temp_r0) != 0)) {
        return 0U;
    }
    if (arg0->unk24[6] == 0) {
        sub_8004D68(temp_r4, temp_r5);
        if ((((0xF & temp_r0->unk2A) == 1) || ((gStageData.gameMode == 5) && (((0xF & arg0->player->unk2A) == 1) || ((0xF & arg0->partner->unk2A) == 1)) && (gStageData.playerIndex == 0))) && (sub_807A1DC(temp_r7) == 1)) {
            var_sl = 1;
        }
        temp_r4_2 = temp_r4 >> 8;
        temp_r5_2 = temp_r5 >> 8;
        if (sub_8020E3C(temp_r7, temp_r4_2, temp_r5_2, 0, temp_r0) == 1) {
            var_sl = 1;
            temp_r0_2 = sub_8020874(temp_r7, temp_r4_2, temp_r5_2, 0, temp_r0, 1, 0U);
            if (0x20000 & temp_r0_2) {
                temp_r0_3 = temp_r0->qWorldY + 0x400 + (s16) (temp_r0_2 << 8);
                temp_r0->qWorldY = temp_r0_3;
                if (temp_r0_3 > 0xB0FF) {
                    temp_r0->qWorldY = 0xB100;
                }
                temp_r0->qSpeedAirY = 0;
            }
            if (arg0->unk32 == 0) {
                sub_80044CC(temp_r0);
            }
        }
    } else {
        sub_8020CE0(temp_r7, temp_r4 >> 8, temp_r5 >> 8, 0, temp_r0);
    }
    var_r5 = 0;
    do {
        var_r4 = 0;
loop_21:
        temp_r1 = (var_r5 * 8) + (var_r4 * 0x58);
        temp_r2 = *(arg0 + 0x3C8 + temp_r1);
        if ((temp_r2 != 0) && (sub_8020CE0(((arg0 + temp_r1)->unk3CC * 0x38) + arg0 + 0x480, temp_r2 >> 8, 0xC0, 1, temp_r0) != 0)) {
            var_r5 = 0xB;
            var_r4 = 2;
        }
        var_r4 += 1;
        if ((u32) var_r4 <= 1U) {
            goto loop_21;
        }
        var_r5 += 1;
    } while ((u32) var_r5 <= 0xAU);
    var_r5_2 = 0;
    do {
        if (var_r5_2 != 1) {
            temp_r2_2 = var_r5_2 * 0x38;
            if (sub_8020CE0(temp_r2_2 + arg0 + 0x50, (s32) *(arg0 + 0x48 + temp_r2_2) >> 8, (s32) *(arg0 + 0x4C + temp_r2_2) >> 8, 1, temp_r0) != 0) {
                var_r5_2 = 0x10;
            }
        }
        var_r5_2 += 1;
    } while ((u32) var_r5_2 <= 0xFU);
    return var_sl;
}

void sub_806DA20(EggFoot *arg0) {
    u8 temp_r0;
    u8 temp_r1;
    u8 temp_r1_2;

    temp_r1 = arg0->unk30;
    if ((temp_r1 != 0) && (arg0->unk32 == 0)) {
        temp_r1_2 = temp_r1 - 1;
        arg0->unk30 = temp_r1_2;
        if (gStageData.difficulty == 0) {
            if (temp_r1_2 == 4) {
                sub_80299D4(0x33U);
            }
        } else if (temp_r1_2 == 3) {
            sub_80299D4(0x33U);
        }
        m4aSongNumStart(0xEBU);
        sub_807A468();
        sub_806D808(arg0, 2U);
        sub_8078DB0(0x4C7, 0, 0x7A, 0U);
        sub_8078DB0(0x4C8, 0, 0x7A, 0U);
        arg0->unk32 = 0x7A;
        if (gStageData.gameMode == 5) {
            if (gStageData.playerIndex == 0) {
                temp_r0 = arg0->unk30;
                if (temp_r0 != 0) {
                    sub_8027674(3U, (u16) temp_r0);
                }
            } else {
                sub_8027674(4U, (u16) arg0->unk30);
            }
        }
    }
}

void sub_806DAD4(void *arg0) {
    s32 temp_r3;
    u16 temp_r5;
    u8 var_r3;
    void **temp_r2;
    void *temp_r1;

    temp_r5 = gStageData.taskBoss->data;
    temp_r3 = 0x7F & arg0->unk2;
    if (temp_r3 != 1) {
        if ((temp_r3 >= 1) && (temp_r3 <= 4) && (temp_r3 >= 3) && (temp_r5->unk30 != (u8) (arg0->unk3 | (arg0->unk4 << 8)))) {
            sub_806DA20((EggFoot *) temp_r5);
        }
    } else {
        temp_r5->unk30 = 0U;
        temp_r5->unk34 = 0;
        temp_r5->unk36 = (s16) temp_r3;
        temp_r5->unk20 = 0;
        var_r3 = 0;
        do {
            temp_r2 = temp_r5 + 0x40 + (var_r3 * 4);
            temp_r1 = *temp_r2;
            temp_r1->unk4 = (s32) (temp_r1->unk4 | 0x08000000);
            temp_r1->unk1C = 0;
            (*temp_r2)->unk18 = 0;
            var_r3 += 1;
        } while ((u32) var_r3 <= 1U);
        gStageData.taskBoss->main = sub_806E9F0;
    }
}

void sub_806DB78(EggFoot *arg0, ? arg3) {
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_4;
    s32 temp_r0_5;
    s32 temp_r0_6;
    s32 temp_r0_8;
    s32 temp_r1_3;
    s32 temp_r1_5;
    s32 temp_r5;
    s32 var_r3;
    u16 temp_r0_7;
    u16 temp_r1;
    u16 var_r0;
    u8 temp_r0_9;
    u8 temp_r2;
    u8 var_r2;
    u8 var_r2_2;
    void *temp_r1_2;
    void *temp_r1_4;
    void *temp_r1_6;

    temp_r1 = arg0->unk20;
    switch (temp_r1) {                              /* irregular */
    case 0x3E8:
        var_r0 = 0;
block_32:
        arg0->unk20 = var_r0;
        return;
    case 0x0:
        var_r2 = 0;
        do {
            *(arg0 + 0x478 + (var_r2 * 0x38)) = 0x64;
            var_r2 += 1;
        } while ((u32) var_r2 <= 0xAU);
        return;
    case 0xA:
        var_r2_2 = 0;
        var_r3 = 4;
        do {
            temp_r0 = var_r2_2 * 0x38;
            *(arg0 + 0x478 + temp_r0) = var_r3;
            temp_r1_2 = arg0 + (temp_r0 + 0x478) + 8;
            temp_r1_2->unk1B = (u8) (temp_r1_2->unk1B | 0xFF);
            var_r2_2 += 1;
            var_r3 = (s32) (u8) (var_r3 + 4);
        } while ((u32) var_r2_2 <= 0xAU);
        temp_r0_2 = arg0->unk0;
        arg0->unk18 = temp_r0_2 + 0xFFFFDB00;
        arg0->unk1C = temp_r0_2 + 0x2500;
        arg0->unk24[2] = 0;
        arg0->unk24[3] = 0;
        arg0->unk22 = 4U;
        m4aSongNumStart(0x228U);
        var_r0 = 0x64;
        goto block_32;
    case 0x64:
        temp_r0_3 = arg0->unk18;
        if (temp_r0_3 != 0) {
            temp_r0_4 = temp_r0_3 + 0xFFFFFD00;
            arg0->unk18 = temp_r0_4;
            if ((s32) (temp_r0_4 >> 8) <= (s32) gCamera.minX) {
                arg0->unk18 = 0;
            }
        }
        temp_r0_5 = arg0->unk1C;
        if (temp_r0_5 != 0) {
            temp_r0_6 = temp_r0_5 + 0x300;
            arg0->unk1C = temp_r0_6;
            if ((s32) (temp_r0_6 >> 8) >= (s32) gCamera.maxX) {
                arg0->unk1C = 0;
            }
        }
        temp_r0_7 = arg0->unk22 - 1;
        arg0->unk22 = temp_r0_7;
        if ((temp_r0_7 << 0x10) == 0) {
            temp_r2 = arg0->unk24[2];
            temp_r5 = temp_r2 * 8;
            temp_r0_8 = temp_r2 * 0x38;
            *(arg0 + 0x478 + temp_r0_8) = 1;
            (arg0 + (temp_r0_8 + 0x478) + 8)->unk1B = 0xFF;
            temp_r1_3 = arg0->unk18;
            if (temp_r1_3 != 0) {
                *(arg0 + 0x3C8 + temp_r5) = temp_r1_3;
                temp_r1_4 = arg0 + temp_r5;
                temp_r1_4->unk3CC = (u8) arg0->unk24[2];
                temp_r1_4->unk3CD = 0x14;
            }
            temp_r1_5 = arg0->unk1C;
            if (temp_r1_5 != 0) {
                *(arg0 + 0x420 + temp_r5) = temp_r1_5;
                temp_r1_6 = arg0 + temp_r5;
                temp_r1_6->unk424 = (u8) arg0->unk24[2];
                temp_r1_6->unk425 = 0x14;
            }
            temp_r0_9 = arg0->unk24[2] + 1;
            arg0->unk24[2] = temp_r0_9;
            if ((u32) (u8) (temp_r0_9 & ~0) > 0xAU) {
                arg0->unk24[2] = 0;
            }
            arg0->unk22 = 4U;
        }
        m4aSongNumStartOrContinue(0x228U);
        if ((arg0->unk18 == 0) && (arg0->unk1C == 0)) {
            var_r0 = 0x3E8;
            goto block_32;
        }
        break;
    }
}

void sub_806DD34(EggFoot *arg0) {
    s16 temp_r1_2;
    s32 temp_r0_4;
    s32 temp_r0_5;
    s32 temp_r0_6;
    s32 temp_r0_7;
    s32 temp_r1_3;
    s32 temp_r2;
    s32 var_r3;
    u16 temp_r0;
    u16 temp_r0_2;
    u16 temp_r0_3;
    u16 temp_r1;
    u16 var_r0;

    temp_r1 = arg0->unk34;
    switch (temp_r1) {                              /* irregular */
    case 0xD2:
        temp_r0 = arg0->unk36 - 1;
        arg0->unk36 = temp_r0;
        if ((temp_r0 << 0x10) == 0) {
            sub_806D808(arg0, 0U);
            arg0->unk36 = 0x3C;
            arg0->unk34 = 0x3E8;
        }
        break;
    case 0xC8:
        temp_r0_2 = arg0->unk36 - 1;
        arg0->unk36 = temp_r0_2;
        if ((temp_r0_2 << 0x10) == 0) {
            sub_806D808(arg0, 1U);
            arg0->unk36 = 0x3C;
            arg0->unk34 = 0xD2;
        }
        break;
    case 0x3E8:
        temp_r0_3 = arg0->unk36 - 1;
        arg0->unk36 = temp_r0_3;
        temp_r1_2 = (s16) temp_r0_3;
        if (temp_r1_2 == 0) {
            arg0->unk36 = 1;
            arg0->unk34 = (u16) temp_r1_2;
            sub_807A4A8();
            gCurTask->main = (void (*)()) sub_806D2F8;
        }
        break;
    case 0x0:
        arg0->unk36 = 1;
        arg0->unk34 = 0xA;
        arg0->unk8 = (s32) temp_r1;
        arg0->unkC = (s32) temp_r1;
        arg0->unk14 = 0x200;
        break;
    case 0xA:
        temp_r0_4 = arg0->unkC + 0x20;
        arg0->unkC = temp_r0_4;
        if (temp_r0_4 > 0x3FF) {
            arg0->unkC = 0x400;
        }
        arg0->unk4 += arg0->unkC;
        temp_r0_5 = arg0->unk10 + arg0->unk14;
        arg0->unk10 = temp_r0_5;
        if (temp_r0_5 > 0x7FFF) {
            arg0->unk10 = 0x8000;
        }
        var_r3 = 0;
        temp_r2 = arg0->unk10;
        if ((s32) (arg0->unk4 + (temp_r2 + 0x800)) > 0xB4FF) {
            arg0->unk4 = 0xAD00 - temp_r2;
            var_r3 = 1;
        }
        if (var_r3 == 1) {
            CreateScreenShake(0x800U, 0x20U, 0U, -1U, 0x91U);
            arg0->unk14 = -0x200;
            arg0->unk36 = 0x3C;
            arg0->unk34 = 0x64;
            m4aSongNumStart(0x227U);
        }
        break;
    case 0x64:
        temp_r0_6 = arg0->unk10 + arg0->unk14;
        arg0->unk10 = temp_r0_6;
        if (temp_r0_6 <= 0x4800) {
            arg0->unk14 = -0x1C0;
            var_r0 = 0x6E;
block_30:
            arg0->unk34 = var_r0;
        }
block_31:
        arg0->unk4 = 0xAD00 - arg0->unk10;
        break;
    case 0x6E:
        temp_r0_7 = arg0->unk14 + 0x10;
        arg0->unk14 = temp_r0_7;
        temp_r1_3 = arg0->unk10 + temp_r0_7;
        arg0->unk10 = temp_r1_3;
        if (temp_r1_3 > 0x47FF) {
            arg0->unk10 = 0x4800;
            arg0->unk36 = 0x3C;
            var_r0 = 0xC8;
            goto block_30;
        }
        goto block_31;
    }
    sub_806D568(arg0);
}

void sub_806DED8(EggFoot *arg0) {
    ? sp10;
    ExtSprite *temp_r1_2;
    ExtSprite *temp_r1_3;
    ExtSprite *temp_r6;
    ExtSprite *var_r8;
    Player *temp_r1_5;
    Player *temp_r1_6;
    s16 temp_r0_14;
    s32 *temp_r2;
    s32 *var_r7;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_6;
    s32 temp_r0_7;
    s32 temp_r0_8;
    s32 temp_r1_4;
    s32 var_r2;
    s32 var_r5;
    u16 temp_r0;
    u16 temp_r0_11;
    u16 temp_r0_12;
    u16 temp_r0_13;
    u16 temp_r0_5;
    u16 temp_r1;
    u32 temp_r0_4;
    u32 temp_r0_9;
    u32 temp_r5;
    u32 temp_r5_2;
    u32 var_r5_2;
    u32 var_r5_3;
    u8 temp_r0_10;
    u8 var_r3;

    sp10.unk0 = (s32) gUnknown_080D5870.unk0;
    sp10.unk4 = (s32) gUnknown_080D5870.unk4;
    sp10.unk8 = (s32) gUnknown_080D5870.unk8;
    sp10.unkC = (s32) gUnknown_080D5870.unkC;
    temp_r1 = arg0->unk34;
    if (temp_r1 == 0x6E) {
        temp_r0 = arg0->unk36 - 1;
        arg0->unk36 = temp_r0;
        if ((temp_r0 << 0x10) == 0) {
            arg0->unk36 = 0x19;
            arg0->unk34 = 0xC8;
        }
        if (1 & arg0->unk36) {
            temp_r0_2 = (0x196225 * gPseudoRandom) + 0x3C6EF35F;
            temp_r5 = 0x3FF & temp_r0_2;
            temp_r0_3 = (0x196225 * temp_r0_2) + 0x3C6EF35F;
            gPseudoRandom = temp_r0_3;
            temp_r0_4 = (u32) temp_r0_3 % 80U;
            sub_8079758(7, (s32) ((arg0->unk0 + ((u32) (temp_r0_4 * gSineTable[temp_r5 + 0x100]) >> 6)) << 8) >> 0x10, (s16) (gCamera.y + (((u32) (gSineTable[temp_r5] * temp_r0_4) >> 0xE) + 0x50)), 0x200, temp_r5, 0x1E, 0, arg0->vram3C);
        }
        var_r8 = arg0 + 0x80;
        var_r7 = arg0 + 0x84;
        if (0x3F & arg0->unk36) {

        } else {
            m4aSongNumStart(0x221U);
        }
    } else if ((s32) temp_r1 <= 0x6E) {
        if (temp_r1 != 0xA) {
            if ((s32) temp_r1 <= 0xA) {
                if (temp_r1 != 0) {
                    var_r8 = arg0 + 0x80;
                    goto block_24;
                }
                if (((s16) arg0->unk32 != 0) && (temp_r0_5 = arg0->unk32 - 1, arg0->unk32 = temp_r0_5, var_r8 = arg0 + 0x80, var_r7 = arg0 + 0x84, ((temp_r0_5 << 0x10) != 0))) {

                } else {
                    arg0->unk34 = 0xA;
                    sub_806D808(arg0, 3U);
                    var_r8 = &arg0->sprites48[1];
                    goto block_24;
                }
            } else {
                if (temp_r1 != 0x64) {
                    var_r8 = &arg0->sprites48[1];
                    goto block_24;
                }
                arg0->unk36 += 1;
                temp_r0_6 = arg0->unkC + 0x20;
                arg0->unkC = temp_r0_6;
                if (temp_r0_6 > 0x7FF) {
                    arg0->unkC = 0x800;
                }
                arg0->unk4 += arg0->unkC;
                arg0->unk14 += 0x20;
                var_r3 = 2;
                var_r5 = 0x80;
                var_r8 = &arg0->sprites48[1];
                var_r7 = &arg0->sprites48[1].y;
                temp_r6 = arg0->sprites48;
                do {
                    if (1 & var_r3) {
                        var_r2 = var_r3 * 8;
                        temp_r1_2 = &temp_r6[var_r3];
                        temp_r1_2->x += var_r5;
                        var_r5 += 0x80;
                    } else {
                        var_r2 = var_r3 * 8;
                        temp_r1_3 = &temp_r6[var_r3];
                        temp_r1_3->x -= var_r5;
                    }
                    temp_r2 = ((var_r2 - var_r3) * 8) + &arg0->sprites48[0].y;
                    *temp_r2 += arg0->unk14;
                    var_r3 += 1;
                } while ((u32) var_r3 <= 0xFU);
                if (1 & arg0->unk36) {
                    temp_r0_7 = (0x196225 * gPseudoRandom) + 0x3C6EF35F;
                    temp_r5_2 = 0x3FF & temp_r0_7;
                    temp_r0_8 = (0x196225 * temp_r0_7) + 0x3C6EF35F;
                    gPseudoRandom = temp_r0_8;
                    temp_r0_9 = (u32) temp_r0_8 % 48U;
                    sub_8079758(7, (s32) ((arg0->unk0 + ((u32) (temp_r0_9 * gSineTable[temp_r5_2 + 0x100]) >> 6)) << 8) >> 0x10, (s16) ((s32) ((arg0->unk4 + ((u32) (temp_r0_9 * gSineTable[temp_r5_2]) >> 6)) << 8) >> 0x10), 0x400, temp_r5_2, 0x14, 0x80, arg0->vram3C);
                }
                if (!(0x3F & arg0->unk36)) {
                    m4aSongNumStart(0x221U);
                }
                if ((s32) (arg0->unk4 + 0x1000) <= 0xB4FF) {

                } else {
                    CreateScreenShake(0x800U, 0x20U, 0U, -1U, 0x91U);
                    temp_r0_10 = arg0->unk24[4] + 1;
                    arg0->unk24[4] = temp_r0_10;
                    if ((u32) temp_r0_10 > 3U) {
                        arg0->unk36 = 0xB4;
                        arg0->unk34 = 0x6E;
                    } else {
                        arg0->unkC = ((arg0->unk24[4] * 4) + sp)->unk10 << 8;
                    }
                    m4aSongNumStart(0x227U);
                }
            }
        } else {
            arg0->unk36 = 0;
            arg0->unk24[4] = 0;
            arg0->unk8 = 0;
            arg0->unkC = ((arg0->unk24[4] * 4) + sp)->unk10 << 8;
            arg0->unk14 = -0x400;
            m4aSongNumStart(0x221U);
            arg0->unk34 = 0x64;
            var_r8 = &arg0->sprites48[1];
            goto block_24;
        }
    } else {
        switch (temp_r1) {                          /* irregular */
        case 0xD2:
            temp_r0_11 = arg0->unk36 - 1;
            arg0->unk36 = temp_r0_11;
            var_r8 = &arg0->sprites48[1];
            var_r7 = &arg0->sprites48[1].y;
            if ((temp_r0_11 << 0x10) == 0) {
                var_r5_2 = 0;
                do {
                    sub_8079758(7, (s32) (arg0->unk0 << 8) >> 0x10, (s16) ((s32) (arg0->unk4 << 8) >> 0x10), 0x200, var_r5_2, 0x1E, 0, arg0->vram3C);
                    var_r5_2 = (u32) (u16) (var_r5_2 + 0x80);
                } while (var_r5_2 <= 0x3FFU);
                arg0->unk36 = 0xA;
                arg0->unk34 = 0x3E8;
            }
            break;
        case 0xC8:
            arg0->unk24[5] ^= 1;
            temp_r0_12 = arg0->unk36 - 1;
            arg0->unk36 = temp_r0_12;
            var_r8 = &arg0->sprites48[1];
            var_r7 = &arg0->sprites48[1].y;
            if ((temp_r0_12 << 0x10) == 0) {
                var_r5_3 = 0;
                do {
                    sub_8079758(7, (s32) (arg0->unk0 << 8) >> 0x10, (s16) ((s32) (arg0->unk4 << 8) >> 0x10), 0x200, var_r5_3, 0x1E, 0, arg0->vram3C);
                    var_r5_3 = (u32) (u16) (var_r5_3 + 0x80);
                } while (var_r5_3 <= 0x3FFU);
                m4aSongNumStart(0x221U);
                arg0->unk24[5] = 0;
                arg0->unk36 = 0xA;
                arg0->unk34 = 0xD2;
            }
            break;
        default:
            var_r8 = &arg0->sprites48[1];
block_24:
            var_r7 = &arg0->sprites48[1].y;
            break;
        case 0x3E8:
            temp_r0_13 = arg0->unk36 - 1;
            arg0->unk36 = temp_r0_13;
            temp_r0_14 = (s16) temp_r0_13;
            var_r8 = &arg0->sprites48[1];
            var_r7 = &arg0->sprites48[1].y;
            if (temp_r0_14 == 0) {
                arg0->unk34 = (u16) temp_r0_14;
                gCurTask->main = (void (*)()) sub_806D388;
            }
            break;
        }
    }
    temp_r1_4 = arg0->unk0;
    arg0->sprites48[0].x = temp_r1_4;
    arg0->sprites48[0].y = arg0->unk4;
    var_r8->x = temp_r1_4;
    *var_r7 = arg0->sprites48[0].y;
    temp_r1_5 = arg0->player;
    temp_r1_5->moveState |= 0x08000000;
    temp_r1_6 = arg0->partner;
    temp_r1_6->moveState |= 0x08000000;
}

void sub_806E330(EggFoot *arg0) {
    s16 temp_r0_10;
    s16 temp_r0_19;
    s32 temp_r0;
    s32 temp_r0_12;
    s32 temp_r0_13;
    s32 temp_r0_14;
    s32 temp_r0_15;
    s32 temp_r0_17;
    s32 temp_r0_21;
    s32 temp_r0_22;
    s32 temp_r0_23;
    s32 temp_r0_24;
    s32 temp_r0_3;
    s32 temp_r0_5;
    s32 temp_r0_6;
    s32 temp_r0_7;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r1_3;
    s32 temp_r1_4;
    s32 temp_r2_2;
    s32 temp_r2_3;
    s32 temp_r2_4;
    s32 temp_r2_5;
    s32 temp_r2_6;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r0_4;
    s32 var_r3;
    s32 var_r3_2;
    s32 var_r5;
    u16 temp_r0_11;
    u16 temp_r0_16;
    u16 temp_r0_18;
    u16 temp_r0_20;
    u16 temp_r0_25;
    u16 temp_r0_2;
    u16 temp_r0_9;
    u16 temp_r2;
    u16 var_r0_3;
    u16 var_r0_5;
    u32 temp_r0_4;
    u32 temp_r0_8;
    void *temp_r3;
    void *temp_r3_2;
    void *temp_r3_3;
    void *temp_r3_4;

    temp_r2 = arg0->unk34;
    switch (temp_r2) {                              /* irregular */
    case 0x203:
        temp_r0 = arg0->unk10 + arg0->unk14;
        arg0->unk10 = temp_r0;
        if (temp_r0 <= 0x4800) {
            arg0->unk14 = -0x1C0;
            arg0->unk34 = 0x208;
        }
        var_r0 = 0xAD00;
block_147:
        arg0->unk4 = var_r0 - arg0->unk10;
        break;
    case 0x12C:
        temp_r0_2 = arg0->unk36 - 1;
        arg0->unk36 = temp_r0_2;
        if ((temp_r0_2 << 0x10) != 0) {

        } else {
            arg0->unk24[6] = 0;
            if (arg0->unk31 != 0) {
                var_r0_2 = *((*((arg0 + 0x31) - 1) * 4) + &gUnknown_080D584C);
            } else {
                var_r0_2 = 0 - *((arg0->unk30 * 4) + &gUnknown_080D584C);
            }
            arg0->unk8 = var_r0_2;
            temp_r0_3 = (gPseudoRandom * 0x196225) + 0x3C6EF35F;
            gPseudoRandom = temp_r0_3;
            temp_r0_4 = (u32) temp_r0_3 % 10000U;
            if (temp_r0_4 <= 0x3E7U) {
                var_r0_3 = 0x3C;
            } else if (temp_r0_4 <= 0xF9FU) {
                var_r0_3 = 0xB4;
            } else if (temp_r0_4 <= 0x1F3FU) {
                var_r0_3 = 0xF0;
            } else {
                var_r0_3 = 0x12C;
            }
            arg0->unk36 = var_r0_3;
            arg0->unk31 ^= 1;
            arg0->unk34 = 0x136;
        }
        break;
    case 0xC8:
        temp_r1 = arg0->unkC - 0x20;
        arg0->unkC = temp_r1;
        temp_r0_5 = arg0->unk4 + temp_r1;
        arg0->unk4 = temp_r0_5;
        if (temp_r0_5 <= 0) {
            arg0->unk4 = 0;
        }
        temp_r0_6 = arg0->unk10 + arg0->unk14;
        arg0->unk10 = temp_r0_6;
        if (temp_r0_6 <= 0x4800) {
            arg0->unk10 = 0x4800;
        }
        if ((s32) arg0->unk4 > 0) {

        } else if ((s32) arg0->unk10 > 0x4800) {

        } else {
            temp_r3 = arg0 + 0x1A0;
            temp_r3->unkC = 0x4C4;
            temp_r3->unk1A = 1;
            temp_r3_2 = arg0 + 0x1D8;
            temp_r3_2->unkC = 0x4C4;
            temp_r3_2->unk1A = 1;
            arg0->unkC = 0;
            arg0->unk36 = 0x3C;
            arg0->unk34 = 0x12C;
        }
        break;
    case 0x19A:
        var_r5 = 0;
        if (gStageData.difficulty == 0) {
            if ((u32) arg0->unk30 <= 4U) {
                goto block_97;
            }
        } else if ((u32) arg0->unk30 <= 3U) {
block_97:
            var_r5 = 1;
        }
        temp_r0_7 = (gPseudoRandom * 0x196225) + 0x3C6EF35F;
        gPseudoRandom = temp_r0_7;
        temp_r0_8 = (u32) ((u32) temp_r0_7 >> 1) % 10000U;
        if (var_r5 != 0) {
            if (temp_r0_8 > 0x176FU) {
                goto block_103;
            }
            goto block_102;
        }
        if (temp_r0_8 <= 0x1F3FU) {
block_102:
            arg0->unk34 = 0x1F4;
        } else {
block_103:
            arg0->unk34 = 0x258;
        }
        break;
    case 0x136:
        temp_r2_2 = arg0->unk8;
        temp_r1_2 = arg0->unk0 + temp_r2_2;
        arg0->unk0 = temp_r1_2;
        if (temp_r2_2 < 0) {
            var_r0_4 = 0x52000;
            if (temp_r1_2 <= 0x52000) {
                goto block_86;
            }
        } else if (temp_r1_2 > 0x607FF) {
            var_r0_4 = 0x60800;
block_86:
            arg0->unk0 = var_r0_4;
            arg0->unk8 = 0 - temp_r2_2;
        }
        temp_r0_9 = arg0->unk36 - 1;
        arg0->unk36 = temp_r0_9;
        temp_r0_10 = (s16) temp_r0_9;
        if (temp_r0_10 != 0) {

        } else {
            arg0->unk8 = (s32) temp_r0_10;
            arg0->unk36 = 0x3C;
            arg0->unk34 = 0x190;
        }
        break;
    case 0x190:
        temp_r0_11 = arg0->unk36 - 1;
        arg0->unk36 = temp_r0_11;
        if ((temp_r0_11 << 0x10) != 0) {

        } else {
            arg0->unk34 = 0x19A;
        }
        break;
    case 0x1F4:
        arg0->unk8 = 0;
        arg0->unkC = 0;
        arg0->unk14 = 0x200;
        arg0->unk34 = 0x1FE;
        break;
    case 0x1FE:
        temp_r0_12 = arg0->unkC + 0x20;
        arg0->unkC = temp_r0_12;
        if (temp_r0_12 > 0x3FF) {
            arg0->unkC = 0x400;
        }
        arg0->unk4 += arg0->unkC;
        temp_r0_13 = arg0->unk10 + arg0->unk14;
        arg0->unk10 = temp_r0_13;
        if (temp_r0_13 > 0x7FFF) {
            arg0->unk10 = 0x8000;
        }
        var_r3 = 0;
        temp_r2_3 = arg0->unk10;
        if ((s32) (arg0->unk4 + (temp_r2_3 + 0x800)) > 0xB4FF) {
            arg0->unk4 = 0xAD00 - temp_r2_3;
            var_r3 = 1;
        }
        if (var_r3 != 1) {

        } else {
            CreateScreenShake(0x800U, 0x20U, 0U, -1U, 0x91U);
            arg0->unk14 = -0x200;
            arg0->unk34 = 0x203;
block_135:
            m4aSongNumStart(0x227U);
        }
        break;
    case 0x26C:
        temp_r0_14 = arg0->unkC + 0x20;
        arg0->unkC = temp_r0_14;
        if (temp_r0_14 > 0x3FF) {
            arg0->unkC = 0x400;
        }
        arg0->unk4 += arg0->unkC;
        temp_r0_15 = arg0->unk10 + arg0->unk14;
        arg0->unk10 = temp_r0_15;
        if (temp_r0_15 > 0x7FFF) {
            arg0->unk10 = 0x8000;
        }
        var_r3_2 = 0;
        temp_r2_4 = arg0->unk10;
        if ((s32) (arg0->unk4 + (temp_r2_4 + 0x800)) > 0xB8FF) {
            arg0->unk4 = 0xB100 - temp_r2_4;
            var_r3_2 = 1;
        }
        if (var_r3_2 == 1) {
            CreateScreenShake(0x800U, 0x20U, 0U, -1U, 0x91U);
            arg0->unk14 = -0x200;
            arg0->unk34 = 0x271;
            arg0->unk20 = 0xA;
            goto block_135;
        }
        break;
    case 0x212:
        temp_r0_16 = arg0->unk36 - 1;
        arg0->unk36 = temp_r0_16;
        if ((temp_r0_16 << 0x10) != 0) {

        } else {
            arg0->unk34 = 0x64;
        }
        break;
    case 0x208:
        temp_r0_17 = arg0->unk14 + 0x10;
        arg0->unk14 = temp_r0_17;
        temp_r1_3 = arg0->unk10 + temp_r0_17;
        arg0->unk10 = temp_r1_3;
        if (temp_r1_3 > 0x47FF) {
            arg0->unk10 = 0x4800;
            arg0->unk36 = 0x3C;
            arg0->unk34 = 0x212;
        }
        var_r0 = 0xAD00;
        goto block_147;
    case 0x258:
        temp_r3_3 = arg0 + 0x1A0;
        temp_r3_3->unkC = 0x4C4;
        temp_r3_3->unk1A = 0;
        temp_r3_4 = arg0 + 0x1D8;
        temp_r3_4->unkC = 0x4C4;
        temp_r3_4->unk1A = 0;
        arg0->unk36 = 0x3C;
        arg0->unk34 = 0x262;
        break;
    case 0x262:
        temp_r0_18 = arg0->unk36 - 1;
        arg0->unk36 = temp_r0_18;
        temp_r0_19 = (s16) temp_r0_18;
        if (temp_r0_19 != 0) {

        } else {
            arg0->unk8 = (s32) temp_r0_19;
            arg0->unkC = (s32) temp_r0_19;
            arg0->unk14 = 0x200;
            arg0->unk34 = 0x26C;
        }
        break;
    case 0x280:
        temp_r0_20 = arg0->unk36 - 1;
        arg0->unk36 = temp_r0_20;
        if ((temp_r0_20 << 0x10) == 0) {
            arg0->unk34 = 0x28A;
        }
        break;
    case 0x271:
        temp_r0_21 = arg0->unk10 + arg0->unk14;
        arg0->unk10 = temp_r0_21;
        if (temp_r0_21 <= 0x4800) {
            arg0->unk14 = -0x1C0;
            var_r0_5 = 0x276;
block_145:
            arg0->unk34 = var_r0_5;
        }
block_146:
        var_r0 = 0xB100;
        goto block_147;
    case 0x276:
        temp_r0_22 = arg0->unk14 + 0x10;
        arg0->unk14 = temp_r0_22;
        temp_r1_4 = arg0->unk10 + temp_r0_22;
        arg0->unk10 = temp_r1_4;
        if (temp_r1_4 > 0x47FF) {
            arg0->unk10 = 0x4800;
            arg0->unk36 = 0x3C;
            arg0->unk34 = 0x280;
        }
        goto block_146;
    case 0x28A:
        arg0->unk14 = -0x1C0;
        arg0->unk34 = 0x294;
        break;
    case 0x294:
        temp_r2_5 = arg0->unk14 + 0x10;
        arg0->unk14 = temp_r2_5;
        temp_r0_23 = arg0->unk10 + temp_r2_5;
        arg0->unk10 = temp_r0_23;
        if (temp_r0_23 > 0x7FFF) {
            arg0->unk10 = 0x8000;
            arg0->unkC = 0 - temp_r2_5;
            arg0->unk14 = -0x180;
            var_r0_5 = 0xC8;
            goto block_145;
        }
        goto block_146;
    case 0x0:
        arg0->unk36 = 1;
        arg0->unk34 = 0x64;
        arg0->unk31 = 0;
        arg0->unk8 = (s32) temp_r2;
        arg0->unkC = (s32) temp_r2;
        break;
    case 0x64:
        arg0->unk14 = -0x1C0;
        arg0->unk34 = 0x6E;
        break;
    case 0x6E:
        temp_r2_6 = arg0->unk14 + 0x10;
        arg0->unk14 = temp_r2_6;
        temp_r0_24 = arg0->unk10 + temp_r2_6;
        arg0->unk10 = temp_r0_24;
        if (temp_r0_24 > 0x7FFF) {
            arg0->unk10 = 0x8000;
            arg0->unkC = 0 - temp_r2_6;
            arg0->unk14 = -0x180;
            arg0->unk34 = 0xC8;
        }
        var_r0 = 0xAD00;
        goto block_147;
    }
    if ((s16) arg0->unk32 != 0) {
        temp_r0_25 = arg0->unk32 - 1;
        arg0->unk32 = temp_r0_25;
        if ((temp_r0_25 << 0x10) == 0) {
            sub_806D808(arg0, 0U);
        }
    }
    sub_806D568(arg0);
}

void Task_EggFootInit(void) {
    void (*var_r0)(EggFoot *);

    if ((sub_8079FFC() << 0x18) != 0) {
        var_r0 = sub_806E950;
    } else {
        var_r0 = Task_806D268;
    }
    gCurTask->main = var_r0;
    sub_806D6C4(M2C_ERROR(/* Read from unset register $r0 */));
}

void sub_806E950(EggFoot *boss) {
    if (*boss->bossPhase == 3) {
        TaskDestroy(gCurTask);
        return;
    }
    sub_806D6C4(boss);
    if ((*boss->bossPhase == 2) && ((sub_807A074() << 0x18) != 0)) {
        gCurTask->main = (void (*)()) Task_806D268;
    }
}

void sub_806E99C(void) {
    EggFoot *temp_r4;

    temp_r4 = M2C_ERROR(/* Read from unset register $r0 */);
    sub_806DD34(temp_r4);
    sub_806D6C4(temp_r4);
}

void sub_806E9C0(void) {
    EggFoot *temp_r0;
    Player *temp_r2;
    Player *temp_r2_2;

    temp_r0 = M2C_ERROR(/* Read from unset register $r0 */);
    temp_r2 = temp_r0->player;
    temp_r2->moveState |= 0x08000000;
    temp_r2_2 = temp_r0->partner;
    temp_r2_2->moveState |= 0x08000000;
    sub_806D6C4(temp_r0);
}

void sub_806E9F0(void) {
    EggFoot *temp_r4;

    temp_r4 = M2C_ERROR(/* Read from unset register $r0 */);
    sub_806DED8(temp_r4);
    sub_806D6C4(temp_r4);
}

void TaskDestructor_EggFoot(Task *t) {
    u16 temp_r1;
    void *temp_r0;
    void *temp_r0_2;

    temp_r1 = t->data;
    temp_r0 = temp_r1->unk38;
    if (temp_r0 != NULL) {
        VramFree(temp_r0);
        temp_r1->unk38 = NULL;
    }
    temp_r0_2 = temp_r1->unk3C;
    if (temp_r0_2 != NULL) {
        VramFree(temp_r0_2);
        temp_r1->unk3C = NULL;
    }
}

s32 sub_806EA40(void *arg0) {
    s32 temp_r3;
    s32 var_r4;

    var_r4 = 0;
    temp_r3 = arg0->unk10;
    if ((s32) (arg0->unk4 + (temp_r3 + 0x800)) > 0xB4FF) {
        arg0->unk4 = (s32) (0xAD00 - temp_r3);
        var_r4 = 1;
    }
    return var_r4;
}

s32 sub_806EA70(void *arg0) {
    s32 temp_r3;
    s32 var_r4;

    var_r4 = 0;
    temp_r3 = arg0->unk10;
    if ((s32) (arg0->unk4 + (temp_r3 + 0x800)) > 0xB8FF) {
        arg0->unk4 = (s32) (0xB100 - temp_r3);
        var_r4 = 1;
    }
    return var_r4;
}

void sub_806EAA0(EggFoot *arg0) {
    u8 var_r3;
    void **temp_r2;
    void *temp_r1;

    arg0->unk34 = 0;
    arg0->unk36 = 1;
    arg0->unk20 = 0;
    var_r3 = 0;
    do {
        temp_r2 = arg0 + 0x40 + (var_r3 * 4);
        temp_r1 = *temp_r2;
        temp_r1->unk4 = (s32) (temp_r1->unk4 | 0x08000000);
        temp_r1->unk1C = 0;
        (*temp_r2)->unk18 = 0;
        var_r3 += 1;
    } while ((u32) var_r3 <= 1U);
}
#endif

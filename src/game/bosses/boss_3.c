#include "global.h"
#include "core.h"
#include "trig.h"
#include "malloc_vram.h"
#include "multi_sio_stuff.h"
#include "lib/m4a/m4a.h"
#include "game/bosses.h"
#include "game/shared/stage/screen_shake.h"
#include "game/shared/stage/music_manager.h"
#include "game/shared/stage/player.h"
#include "game/sa3/bosses/more_gemerl.h"
#include "game/save.h"
#include "game/stage.h"
#include "constants/animations.h"
#include "constants/move_states.h"
#include "constants/songs.h"

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
    /* 0x020 */ u16 unk22;
    /* 0x024 */ u8 unk24[8];
    /* 0x02C */ u8 *bossPhase;
    /* 0x030 */ u8 lives;
    /* 0x031 */ u8 unk31;
    /* 0x032 */ s16 unk32;
    /* 0x034 */ u16 unk34;
    /* 0x036 */ s16 unk36;
    /* 0x038 */ u8 *vram38; // 124 tiles
    /* 0x03C */ u8 *vram3C; // 116 tiles
    /* 0x040 */ Player *players[NUM_SINGLE_PLAYER_CHARS];
    /* 0x048 */ ExtSprite sprites48[SPRITE_ARR_1_COUNT];
    /* 0x3C8 */ EggFoot_3C8 unk3C8[2][SPRITE_ARR_2_COUNT];
    /* 0x478 */ ExtSprite sprites478[SPRITE_ARR_2_COUNT];
} EggFoot;

void sub_806D404(EggFoot *boss);
void sub_806D568(EggFoot *boss);
void sub_806D6C4(EggFoot *boss);
void sub_806DA20(EggFoot *boss);
void sub_806DB78(EggFoot *boss);
void sub_806DD34(EggFoot *boss);
void sub_806DED8(EggFoot *boss);
void sub_806E330(EggFoot *boss);
void sub_806EAA0(EggFoot *boss);

void Task_EggFootInit(void);
void Task_806D268(void);
void sub_806D388(void);
bool8 sub_806D840(EggFoot *arg0, u8 pid);
void sub_806D808(EggFoot *arg0, u8 pattern);
void Task_806E950(void);
void sub_806E99C(void);
void sub_806E9C0(void);
void Task_806E9F0(void);
void sub_807A37C(void);
void TaskDestructor_EggFoot(struct Task *t);
void sub_8078E34(s32 *sp0, VoidFn func);

extern s32 sub_807A1DC(Sprite *);

const Strc_80D57CC gUnknown_080D57CC[SPRITE_ARR_1_COUNT] = {
    [0] = { ANIM_BOSS_3_COCKPIT, 0x00, 0x13, 0x01, 0x00, 0x40, 0x00 }, //
    [1] = { ANIM_BOSS_3_EGGMAN, 0x00, 0x12, 0x01, 0x00, 0x08, 0x00 }, //
    [2] = { ANIM_BOSS_3_DISC, 0x00, 0x12, 0x01, 0x00, 0x00, 0x00 }, //
    [3] = { ANIM_BOSS_3_DISC, 0x00, 0x12, 0x00, 0x01, 0x09, 0x00 }, //
    [4] = { ANIM_BOSS_3_ANKLE, 0x00, 0x12, 0x01, 0x00, 0x00, 0x00 }, //
    [5] = { ANIM_BOSS_3_ANKLE, 0x00, 0x12, 0x00, 0x01, 0x0C, 0x00 }, //
    [6] = { ANIM_BOSS_3_FOOT, 0x01, 0x12, 0x01, 0x00, 0x00, 0x00 }, //
    [7] = { ANIM_BOSS_3_FOOT, 0x01, 0x12, 0x00, 0x01, 0x19, 0x00 }, //
    [8] = { ANIM_BOSS_3_SCREW, 0x00, 0x12, 0x01, 0x00, 0x00, 0x00 }, //
    [9] = { ANIM_BOSS_3_SCREW, 0x00, 0x12, 0x00, 0x00, 0x00, 0x00 }, //
    [10] = { ANIM_BOSS_3_SCREW, 0x00, 0x12, 0x00, 0x00, 0x00, 0x00 }, //
    [11] = { ANIM_BOSS_3_SCREW, 0x00, 0x12, 0x00, 0x00, 0x00, 0x00 }, //
    [12] = { ANIM_BOSS_3_SCREW, 0x00, 0x12, 0x00, 0x01, 0x00, 0x00 }, //
    [13] = { ANIM_BOSS_3_SCREW, 0x00, 0x12, 0x00, 0x01, 0x00, 0x00 }, //
    [14] = { ANIM_BOSS_3_SCREW, 0x00, 0x12, 0x00, 0x01, 0x00, 0x00 }, //
    [15] = { ANIM_BOSS_3_SCREW, 0x00, 0x12, 0x00, 0x01, 0x06, 0x00 } //
};

const s32 gUnknown_080D584C[9] = {
    0x0000, 0x0300, 0x0200, 0x0180, 0x0180, 0x0100, 0x0100, 0x0100, 0x0100,
};
const s32 gUnknown_080D5870[4] = { -8, -6, -4, -3 };

static inline s32 check_range_inline(EggFoot *boss)
{
    s32 var_r3 = 0;

    // TODO: This should be able to be written with 2 conditions...
    s32 var = boss->unk4 + 0x800 + boss->unk10;
    if (var >= 0xB500) {
        var = 0xAD00 - boss->unk10;
        boss->unk4 = var;
        var_r3 = 1;
    }
    return var_r3;
}

static inline s32 check_range_2_inline(EggFoot *boss)
{
    s32 var_r3 = 0;

    // TODO: This should be able to be written with 2 conditions...
    s32 var = boss->unk4 + 0x800 + boss->unk10;
    if (var >= 0xB900) {
        var = 0xB100 - boss->unk10;
        boss->unk4 = var;
        var_r3 = 1;
    }
    return var_r3;
}

Task *CreateEggFoot(u8 *bossPhase, s32 worldX, s32 worldY)
{
    Task *t = TaskCreate(Task_EggFootInit, sizeof(EggFoot), 0x2100U, 0U, TaskDestructor_EggFoot);
    EggFoot *boss = TASK_DATA(t);

    gStageData.taskBoss = t;

    boss->unk0 = worldX << 8;
    boss->unk4 = -0xC800;
    boss->players[0] = &gPlayers[PLAYER_1];
    boss->players[1] = &gPlayers[PLAYER_2];
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
    boss->unk24[3] = 1;
    boss->unk24[4] = 0;
    boss->unk18 = 0;
    boss->unk1C = 0;
    boss->unk20 = 0;
    boss->unk24[0] = 0;
    boss->unk24[1] = 0;
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
                gCurTask->main = Task_806E9F0;
            }
        } else {
            sub_806EAA0(boss);
            gCurTask->main = Task_806E9F0;
        }
    }

    sub_806D6C4(boss);
}

void sub_806D388()
{
    s32 sp0[4];
    EggFoot *boss = TASK_DATA(gCurTask);
    Player *p = boss->players[0];

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
        s->frameFlags = SPRITE_FLAG(PRIORITY, 1);

        if (temp_r4->unk4 == 0) {
            s->frameFlags |= SPRITE_FLAG_MASK_19;
        }

        if (temp_r4->unk5 != 0) {
            s->frameFlags |= SPRITE_FLAG_MASK_X_FLIP;
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
        s->anim = ANIM_BOSS_3_PROJ;
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

void sub_806D568(EggFoot *boss)
{
    s32 x;
    s32 y;
    s32 yIncr;
    u8 i;

    x = boss->sprites48[0].x = boss->unk0;
    y = boss->sprites48[0].y = boss->unk4;
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

    yIncr = ((boss->unk10 - Q(28)) / 4) + 1;
    y = boss->sprites48[2].y + Q(12);
    for (i = 0; i < 4; i++, y += yIncr) {
        boss->sprites48[8 + i].x = boss->sprites48[2].x;
        boss->sprites48[8 + i].y = y;
    }

    y = boss->sprites48[3].y + Q(12);
    for (i = 0; i < 4; i++, y += yIncr) {
        boss->sprites48[12 + i].x = boss->sprites48[3].x;
        boss->sprites48[12 + i].y = y;
    }
}

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

    if (boss->unk24[3] != 0) {
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

bool8 sub_806D840(EggFoot *arg0, u8 playerIndex)
{
    Sprite *s;
    s32 temp_r0_3;
    s32 temp_r1;
    s32 temp_r2;
    s32 qX, qY;
    u32 temp_r0_2;
    u8 pid;
    u8 var_r5;
    u8 result = 0;
    Player *p;

    p = arg0->players[playerIndex];
    s = (Sprite *)&arg0->sprites48[0].s;
    qX = arg0->sprites48[0].x;
    qY = arg0->sprites48[0].y;
    if ((arg0->lives == 0) || (sub_802C080(p) != 0)) {
        return FALSE;
    }
    if (arg0->unk24[4] == 0) {
        sub_8004D68(qX, qY);
        if (((p->charFlags.character == CREAM)
             || ((gStageData.gameMode == GAME_MODE_5)
                 && ((arg0->players[0]->charFlags.character == CREAM) || (arg0->players[1]->charFlags.character == CREAM))
                 && (gStageData.playerIndex == 0)))
            && (sub_807A1DC(s) == 1)) {
            result = TRUE;
        }

        if (sub_8020E3C(s, I(qX), I(qY), 0, p) == 1) {
            result = 1;
            temp_r0_2 = sub_8020874(s, I(qX), I(qY), 0, p, 1, 0U);
            if (0x20000 & temp_r0_2) {
                p->qWorldY += Q(4) + Q_8_8(temp_r0_2);
                if (p->qWorldY >= Q(177)) {
                    p->qWorldY = Q(177);
                }
                p->qSpeedAirY = 0;
            }
            if ((s16)arg0->unk32 == 0) {
                sub_80044CC(p);
            }
        }
    } else {
        sub_8020CE0(s, I(qX), I(qY), 0, p);
    }

    for (var_r5 = 0; var_r5 < 11; var_r5++) {
        for (pid = 0; pid < 2; pid++) {
            temp_r2 = arg0->unk3C8[pid][var_r5].unk0;
            if (temp_r2 != 0) {
                s = (Sprite *)&arg0->sprites478[arg0->unk3C8[pid][var_r5].unk4].s;
                if (sub_8020CE0(s, I(temp_r2), 0xC0, 1, p) != 0) {
                    var_r5 = 11;
                    pid = 2;
                }
            }
        }
    }

    for (var_r5 = 0; var_r5 < 16; var_r5++) {
        if (var_r5 != 1) {
            s = (Sprite *)&arg0->sprites48[var_r5].s;
            if ((sub_8020CE0(s, I(arg0->sprites48[var_r5].x), I(arg0->sprites48[var_r5].y), 1, p) != 0)) {
                var_r5 = 0x10;
            }
        }
    }

    return result;
}

void sub_806DA20(EggFoot *boss)
{
    if ((boss->lives != 0) && (boss->unk32 == 0)) {
        boss->lives--;
        if (gStageData.difficulty == 0) {
            if (boss->lives == 4) {
                sub_80299D4(51);
            }
        } else if (boss->lives == 3) {
            sub_80299D4(51);
        }
        m4aSongNumStart(SE_235);
        sub_807A468();
        sub_806D808(boss, 2U);
        sub_8078DB0(ANIM_PALETTE_BOSS_3_A, 0, 0x7A, 0U);
        sub_8078DB0(ANIM_PALETTE_BOSS_3_B, 0, 0x7A, 0U);
        boss->unk32 = 0x7A;

        if (gStageData.gameMode == GAME_MODE_5) {
            if (gStageData.playerIndex == PLAYER_1) {
                if (boss->lives != 0) {
                    sub_8027674(3U, boss->lives);
                }
            } else {
                sub_8027674(4U, boss->lives);
            }
        }
    }
}

void sub_806DAD4(u8 *arg0, s16 param1)
{
    EggFoot *boss = TASK_DATA(gStageData.taskBoss);
    s32 temp_r3 = 0x7F & arg0[2];
    u16 someLivesVal = (arg0[3] | (arg0[4] << 8));
    u8 pid;

    if (temp_r3 != 1) {
        switch (temp_r3) {
            case 1:
            case 3:
            case 4: {
                if (boss->lives != (u8)someLivesVal) {
                    sub_806DA20(boss);
                }
            } break;
        }
    } else {
        boss->lives = 0;
        boss->unk34 = 0;
        boss->unk36 = 1;
        boss->unk20 = 0;

        for (pid = 0; pid < ARRAY_COUNT(boss->players); pid++) {
            boss->players[pid]->moveState |= MOVESTATE_IGNORE_INPUT;
            boss->players[pid]->qSpeedGround = 0;
            boss->players[pid]->qSpeedAirX = 0;
        }

        gStageData.taskBoss->main = Task_806E9F0;
    }
}

void sub_806DB78(EggFoot *boss)
{
    Sprite *s;
    u8 var_r3;
    u8 i;

    switch (boss->unk20) {
        case 0:
            for (i = 0; i < SPRITE_ARR_2_COUNT; i++) {
                boss->sprites478[i].x = 100;
            }
            break;

        case 10:
            for (i = 0, var_r3 = 4; i < SPRITE_ARR_2_COUNT; i++, var_r3 += 4) {
                boss->sprites478[i].x = var_r3;
                s = (Sprite *)&boss->sprites478[i].s;
                s->prevVariant = -1;
            }

            boss->unk18 = boss->unk0 - Q(37);
            boss->unk1C = boss->unk0 + Q(37);
            boss->unk24[0] = 0;
            boss->unk24[1] = 0;
            boss->unk22 = 4U;
            m4aSongNumStart(SE_552);
            boss->unk20 = 100;
            break;

        case 100:
            if (boss->unk18 != 0) {
                boss->unk18 -= Q(3);

                if (I(boss->unk18) <= gCamera.minX) {
                    boss->unk18 = 0;
                }
            }

            if (boss->unk1C != 0) {
                boss->unk1C += Q(3);
                if (I(boss->unk1C) >= gCamera.maxX) {
                    boss->unk1C = 0;
                }
            }

            if (--boss->unk22 == 0) {
                i = boss->unk24[0];
                boss->sprites478[i].x = 1;
                s = (Sprite *)&boss->sprites478[i].s;
                s->prevVariant = -1;

                if (boss->unk18 != 0) {
                    boss->unk3C8[0][i].unk0 = boss->unk18;
                    boss->unk3C8[0][i].unk4 = boss->unk24[0];
                    boss->unk3C8[0][i].unk5 = 0x14;
                }

                if (boss->unk1C != 0) {
                    boss->unk3C8[1][i].unk0 = boss->unk1C;
                    boss->unk3C8[1][i].unk4 = boss->unk24[0];
                    boss->unk3C8[1][i].unk5 = 0x14;
                }

                if (++boss->unk24[0] >= 11) {
                    boss->unk24[0] = 0;
                }
                boss->unk22 = 4U;
            }

            m4aSongNumStartOrContinue(SE_552);

            if ((boss->unk18 == 0) && (boss->unk1C == 0)) {
                boss->unk20 = 1000;
                break;
            }
            break;

        case 1000:
            boss->unk20 = 0;
            break;
    }
}

void sub_806DD34(EggFoot *boss)
{
    s32 var_r3;

    switch (boss->unk34) {
        case 0:
            boss->unk36 = 1;
            boss->unk34 = 10;
            boss->unk8 = 0;
            boss->unkC = 0;
            boss->unk14 = 0x200;
            break;

        case 10:
            boss->unkC += 0x20;
            if (boss->unkC >= 0x400) {
                boss->unkC = 0x400;
            }
            boss->unk4 += boss->unkC;
            boss->unk10 += boss->unk14;
            if (boss->unk10 >= 0x8000) {
                boss->unk10 = 0x8000;
            }

            if (check_range_inline(boss) == 1) {
                CreateScreenShake(0x800U, 0x20U, 0U, -1U, 0x91U);
                boss->unk14 = -0x200;
                boss->unk36 = 0x3C;
                boss->unk34 = 100;
                m4aSongNumStart(SE_551);
            }
            break;

        case 100:
            boss->unk10 += boss->unk14;
            if (boss->unk10 <= 0x4800) {
                boss->unk14 = -0x1C0;
                boss->unk34 = 110;
            }
            boss->unk4 = 0xAD00 - boss->unk10;
            break;

        case 110:
            boss->unk14 += 0x10;
            boss->unk10 += boss->unk14;

            if (boss->unk10 >= 0x4800) {
                boss->unk10 = 0x4800;
                boss->unk36 = 0x3C;
                boss->unk34 = 200;
            }
            boss->unk4 = 0xAD00 - boss->unk10;
            break;

        case 200:
            if (--boss->unk36 == 0) {
                sub_806D808(boss, 1);
                boss->unk36 = 0x3C;
                boss->unk34 = 210;
            }
            break;

        case 210:
            if (--boss->unk36 == 0) {
                sub_806D808(boss, 0);
                boss->unk36 = 0x3C;
                boss->unk34 = 1000;
            }
            break;

        case 1000:
            if (--boss->unk36 == 0) {
                boss->unk36 = 1;
                boss->unk34 = 0;
                sub_807A4A8();
                gCurTask->main = sub_806D2F8;
            }
            break;
    }
    sub_806D568(boss);
}

void sub_806DED8(EggFoot *arg0)
{
    s32 sp10[4];
    s32 var_r5;
    u32 temp_r0_4;
    u32 angle;
    u16 var_r5_2;
    u8 var_r3;
    s32 dirX, dirY;

    // TODO: This matches by just setting sp10 directly,
    //       but sub_806E330 (which is later in the ROM)
    //       references gUnknown_080D584C, which is above gUnknown_080D5870.
    //       And none of the other functions reference them... unless they're unused somewhere?
    //       So the .rodata section would not be correct.
    memcpy(sp10, gUnknown_080D5870, sizeof(sp10));

    switch (arg0->unk34) {
        case 0: {
            if (arg0->unk32 == 0 || --arg0->unk32 == 0) {
                arg0->unk34 = 10;
                sub_806D808(arg0, 3);
            }
        } break;

        case 10: {
            arg0->unk36 = 0;
            arg0->unk24[2] = 0;
            arg0->unk8 = 0;
            arg0->unkC = sp10[arg0->unk24[2]] << 8;
            arg0->unk14 = -0x400;
            m4aSongNumStart(SE_545);
            arg0->unk34 = 100;
        } break;

        case 100: {
            arg0->unk36++;
            arg0->unkC += 0x20;
            if (arg0->unkC >= 0x800) {
                arg0->unkC = 0x800;
            }
            arg0->unk4 += arg0->unkC;
            arg0->unk14 += 0x20;
            for (var_r3 = 2, var_r5 = 0x80; var_r3 < SPRITE_ARR_1_COUNT; var_r3++) {
                if (1 & var_r3) {
                    arg0->sprites48[var_r3].x += var_r5;
                    var_r5 += 0x80;
                } else {
                    arg0->sprites48[var_r3].x -= var_r5;
                }
                arg0->sprites48[var_r3].y += arg0->unk14;
            }

            if (1 & arg0->unk36) {
                s32 r0;
                angle = PseudoRandom32() & 0x3FF;
                temp_r0_4 = PseudoRandom32() % 48U;
                dirX = (((u32)(temp_r0_4 * COS(angle)) >> 6));
                r0 = (((u32)(temp_r0_4 * SIN(angle)) >> 6));
                dirY = r0;
                sub_8079758(7, (arg0->unk0 + dirX) >> 8, (arg0->unk4 + dirY) >> 8, 0x400, angle, 0x14, 0x80, arg0->vram3C);
            }
            if ((0x3F & arg0->unk36) == 0) {
                m4aSongNumStart(SE_545);
            }
            if ((arg0->unk4 + 0x1000) >= 0xB500) {
                CreateScreenShake(0x800U, 0x20U, 0U, -1U, 0x91U);
                if (++arg0->unk24[2] > 3U) {
                    arg0->unk36 = 0xB4;
                    arg0->unk34 = 0x6E;
                } else {
                    arg0->unkC = sp10[arg0->unk24[2]] << 8;
                }
                m4aSongNumStart(SE_551);
            }
        } break;

        case 110: {
            if (--arg0->unk36 == 0) {
                arg0->unk36 = 0x19;
                arg0->unk34 = 200;
            }
            if (1 & arg0->unk36) {
                u32 sinVal;
                angle = PseudoRandom32() % SIN_PERIOD;
                temp_r0_4 = PseudoRandom32() % 80U;
                dirX = (((u32)(temp_r0_4 * COS(angle)) >> 6));
                sinVal = (temp_r0_4 * SIN(angle));
                sub_8079758(7, (arg0->unk0 + dirX) >> 8, gCamera.y + (sinVal = ((sinVal >>= 14) + 80)), 0x200, angle, 0x1E, 0,
                            arg0->vram3C);
            }

            if ((0x3F & arg0->unk36) == 0) {
                m4aSongNumStart(SE_545);
            }
        } break;

        case 200: {
            arg0->unk24[3] ^= 1;
            if (--arg0->unk36 == 0) {
                for (var_r5_2 = 0; var_r5_2 < 0x400; var_r5_2 += 0x80) {
                    sub_8079758(7, arg0->unk0 >> 8, arg0->unk4 >> 8, 0x200, var_r5_2, 30, 0, arg0->vram3C);
                }
                m4aSongNumStart(SE_545);
                arg0->unk24[3] = 0;
                arg0->unk36 = 0xA;
                arg0->unk34 = 210;
            }
        } break;

        case 210: {
            if (--arg0->unk36 == 0) {
                for (var_r5_2 = 0; var_r5_2 < 0x400; var_r5_2 += 0x80) {
                    sub_8079758(7, arg0->unk0 >> 8, arg0->unk4 >> 8, 0x200, var_r5_2, 30, 0, arg0->vram3C);
                }
                arg0->unk36 = 0xA;
                arg0->unk34 = 1000;
            }
        } break;

        case 1000: {
            if (--arg0->unk36 == 0) {
                arg0->unk34 = 0;
                gCurTask->main = sub_806D388;
            }
        } break;
    }

    arg0->sprites48[0].x = arg0->unk0;
    arg0->sprites48[0].y = arg0->unk4;
    arg0->sprites48[1].x = arg0->sprites48[0].x;
    arg0->sprites48[1].y = arg0->sprites48[0].y;
    arg0->players[0]->moveState |= MOVESTATE_IGNORE_INPUT;
    arg0->players[1]->moveState |= MOVESTATE_IGNORE_INPUT;
}

void sub_806E330(EggFoot *boss)
{
    s32 var_r5;
    u32 rnd;
    Sprite *s;

    switch (boss->unk34) {
        case 0x0:
            boss->unk36 = 1;
            boss->unk34 = 0x64;
            boss->unk31 = 0;
            boss->unk8 = 0;
            boss->unkC = 0;
            break;
        case 0x64:
            boss->unk14 = -0x1C0;
            boss->unk34 = 0x6E;
            break;
        case 0x6E:
            boss->unk14 += 0x10;
            boss->unk10 += boss->unk14;

            if (boss->unk10 >= 0x8000) {
                boss->unk10 = 0x8000;
                boss->unkC = -boss->unk14;
                boss->unk14 = -0x180;
                boss->unk34 = 0xC8;
            }

            boss->unk4 = 0xAD00 - boss->unk10;
            break;
        case 0xC8:
            boss->unkC -= 0x20;
            boss->unk4 += boss->unkC;
            if (boss->unk4 <= 0) {
                boss->unk4 = 0;
            }
            boss->unk10 += boss->unk14;
            if (boss->unk10 <= 0x4800) {
                boss->unk10 = 0x4800;
            }

            if ((boss->unk4 <= 0) && (boss->unk10 <= 0x4800)) {
                s = (Sprite *)&boss->sprites48[6].s;
                s->anim = 0x4C4;
                s->variant = 1;
                s = (Sprite *)&boss->sprites48[7].s;
                s->anim = 0x4C4;
                s->variant = 1;
                boss->unkC = 0;
                boss->unk36 = 0x3C;
                boss->unk34 = 0x12C;
            }
            break;
        case 0x12C:
            if (--boss->unk36 == 0) {
                boss->unk24[4] = 0;
                if (boss->unk31 != 0) {
                    boss->unk8 = +gUnknown_080D584C[boss->lives];
                } else {
                    boss->unk8 = -gUnknown_080D584C[boss->lives];
                }

                rnd = (u32)PseudoRandom32();
                rnd = rnd % 10000U;

                if (rnd <= 0x3E7U) {
                    boss->unk36 = 0x3C;
                } else if (rnd <= 0xF9FU) {
                    boss->unk36 = 0xB4;
                } else if (rnd <= 0x1F3FU) {
                    boss->unk36 = 0xF0;
                } else {
                    boss->unk36 = 0x12C;
                }
                boss->unk31 ^= 1;
                boss->unk34 = 0x136;
            }
            break;
        case 0x136:
            boss->unk0 += boss->unk8;
            if (boss->unk8 < 0) {
                if (boss->unk0 <= 0x52000) {
                    boss->unk0 = 0x52000;
                    boss->unk8 = -boss->unk8;
                }
            } else {
                if (boss->unk0 >= 0x60800) {
                    boss->unk0 = 0x60800;
                    boss->unk8 = -boss->unk8;
                }
            }

            if (--boss->unk36 == 0) {
                boss->unk8 = 0;
                boss->unk36 = 0x3C;
                boss->unk34 = 0x190;
            }
            break;
        case 0x190:
            if (--boss->unk36 == 0) {
                boss->unk34 = 0x19A;
            }
            break;
        case 0x19A:
            var_r5 = 0;
            if (gStageData.difficulty == 0) {
                if ((u32)boss->lives < 5) {
                    var_r5 = 1;
                }
            } else if ((u32)boss->lives < 4) {
                var_r5 = 1;
            }

            rnd = (u32)PseudoRandom32() >> 1;
            rnd = rnd % 10000U;
            if (var_r5 != 0) {
                if (rnd < 0x1770) {
                    boss->unk34 = 0x1F4;
                } else {
                    boss->unk34 = 0x258;
                }
            } else {
                if (rnd < 0x1F40) {
                    boss->unk34 = 0x1F4;
                } else {
                    boss->unk34 = 0x258;
                }
            }
            break;
        case 0x1F4:
            boss->unk8 = 0;
            boss->unkC = 0;
            boss->unk14 = 0x200;
            boss->unk34 = 0x1FE;
            break;
        case 0x1FE:
            boss->unkC += 0x20;
            if (boss->unkC >= 0x400) {
                boss->unkC = 0x400;
            }
            boss->unk4 += boss->unkC;
            boss->unk10 += boss->unk14;
            if (boss->unk10 >= 0x8000) {
                boss->unk10 = 0x8000;
            }

            if (check_range_inline(boss) == 1) {
                CreateScreenShake(0x800U, 0x20U, 0U, -1U, 0x91U);
                boss->unk14 = -0x200;
                boss->unk34 = 0x203;
                m4aSongNumStart(0x227U);
            }
            break;
        case 0x203:
            boss->unk10 += boss->unk14;
            if (boss->unk10 <= 0x4800) {
                boss->unk14 = -0x1C0;
                boss->unk34 = 0x208;
            }
            boss->unk4 = 0xAD00 - boss->unk10;
            break;
        case 0x208:
            boss->unk14 += 0x10;
            boss->unk10 += boss->unk14;
            if (boss->unk10 >= 0x4800) {
                boss->unk10 = 0x4800;
                boss->unk36 = 0x3C;
                boss->unk34 = 0x212;
            }
            boss->unk4 = 0xAD00 - boss->unk10;
            break;
        case 0x212:
            if (--boss->unk36 == 0) {
                boss->unk34 = 100;
            }
            break;
        case 0x258: {
            s = (Sprite *)&boss->sprites48[6].s;
            s->anim = 0x4C4;
            s->variant = 0;
            s = (Sprite *)&boss->sprites48[7].s;
            s->anim = 0x4C4;
            s->variant = 0;
            boss->unk36 = 0x3C;
            boss->unk34 = 0x262;
        } break;
        case 0x262:
            if (--boss->unk36 == 0) {
                boss->unk8 = 0;
                boss->unkC = 0;
                boss->unk14 = 0x200;
                boss->unk34 = 0x26C;
            }
            break;
        case 0x26C:
            boss->unkC += 0x20;
            if (boss->unkC >= 0x400) {
                boss->unkC = 0x400;
            }
            boss->unk4 += boss->unkC;
            boss->unk10 += boss->unk14;
            if (boss->unk10 >= 0x8000) {
                boss->unk10 = 0x8000;
            }

            if (check_range_2_inline(boss) == 1) {
                CreateScreenShake(0x800U, 0x20U, 0U, -1U, 0x91U);
                boss->unk14 = -0x200;
                boss->unk34 = 0x271;
                boss->unk20 = 0xA;
                m4aSongNumStart(0x227U);
            }
            break;
        case 0x271:
            boss->unk10 += boss->unk14;
            if (boss->unk10 <= 0x4800) {
                boss->unk14 = -0x1C0;
                boss->unk34 = 0x276;
            }
            boss->unk4 = 0xB100 - boss->unk10;
            break;
        case 0x276:
            boss->unk14 += 0x10;
            boss->unk10 += boss->unk14;
            if (boss->unk10 >= 0x4800) {
                boss->unk10 = 0x4800;
                boss->unk36 = 0x3C;
                boss->unk34 = 0x280;
            }
            boss->unk4 = 0xB100 - boss->unk10;
            break;
        case 0x280:
            if (--boss->unk36 == 0) {
                boss->unk34 = 0x28A;
            }
            break;
        case 0x28A:
            boss->unk14 = -0x1C0;
            boss->unk34 = 0x294;
            break;
        case 0x294:
            boss->unk14 += 0x10;
            boss->unk10 += boss->unk14;
            if (boss->unk10 >= 0x8000) {
                boss->unk10 = 0x8000;
                boss->unkC = -boss->unk14;
                boss->unk14 = -0x180;
                boss->unk34 = 0xC8;
            }
            boss->unk4 = 0xB100 - boss->unk10;
            break;
    }
    if (boss->unk32 != 0) {
        if (--boss->unk32 == 0) {
            sub_806D808(boss, 0U);
        }
    }
    sub_806D568(boss);
}

void Task_EggFootInit(void)
{
    EggFoot *boss = TASK_DATA(gCurTask);

    if (sub_8079FFC() != 0) {
        gCurTask->main = Task_806E950;
    } else {
        gCurTask->main = Task_806D268;
    }
    sub_806D6C4(boss);
}

void Task_806E950(void)
{
    EggFoot *boss = TASK_DATA(gCurTask);
    if (*boss->bossPhase == 3) {
        TaskDestroy(gCurTask);
        return;
    }
    sub_806D6C4(boss);
    if ((*boss->bossPhase == 2) && ((sub_807A074() << 0x18) != 0)) {
        gCurTask->main = (void (*)())Task_806D268;
    }
}

void sub_806E99C(void)
{
    EggFoot *boss = TASK_DATA(gCurTask);

    sub_806DD34(boss);
    sub_806D6C4(boss);
}

void sub_806E9C0(void)
{
    EggFoot *boss = TASK_DATA(gCurTask);

    boss->players[0]->moveState |= MOVESTATE_IGNORE_INPUT;
    boss->players[1]->moveState |= MOVESTATE_IGNORE_INPUT;
    sub_806D6C4(boss);
}

void Task_806E9F0(void)
{
    EggFoot *boss = TASK_DATA(gCurTask);

    sub_806DED8(boss);
    sub_806D6C4(boss);
}

void TaskDestructor_EggFoot(Task *t)
{
    EggFoot *boss = TASK_DATA(t);

    if (boss->vram38 != NULL) {
        VramFree(boss->vram38);
        boss->vram38 = NULL;
    }

    if (boss->vram3C != NULL) {
        VramFree(boss->vram3C);
        boss->vram3C = NULL;
    }
}

s32 check_range(EggFoot *boss)
{
    s32 var_r3 = 0;

    // TODO: This should be able to be written with 2 conditions...
    s32 var = boss->unk4 + 0x800 + boss->unk10;
    if (var >= 0xB500) {
        var = 0xAD00 - boss->unk10;
        boss->unk4 = var;
        var_r3 = 1;
    }
    return var_r3;
}

s32 check_range_2(EggFoot *boss)
{
    s32 var_r3 = 0;

    // TODO: This should be able to be written with 2 conditions...
    s32 var = boss->unk4 + 0x800 + boss->unk10;
    if (var >= 0xB900) {
        var = 0xB100 - boss->unk10;
        boss->unk4 = var;
        var_r3 = 1;
    }
    return var_r3;
}

void sub_806EAA0(EggFoot *boss)
{
    u8 pid;

    boss->unk34 = 0;
    boss->unk36 = 1;
    boss->unk20 = 0;

    for (pid = 0; pid < ARRAY_COUNT(boss->players); pid++) {
        boss->players[pid]->moveState |= MOVESTATE_IGNORE_INPUT;
        boss->players[pid]->qSpeedGround = 0;
        boss->players[pid]->qSpeedAirX = 0;
    }
}

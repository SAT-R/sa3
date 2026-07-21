#include "global.h"
#include "core.h"
#include "trig.h"
#include "multi_sio_stuff.h"
#include "lib/m4a/m4a.h"
#include "malloc_vram.h"
#include "game/bosses.h"
#include "game/stage.h"
#include "game/shared/stage/player_callbacks.h"
#include "game/shared/stage/screen_shake.h"
#include "game/sa3/bosses/more_gemerl.h"
#include "game/shared/stage/music_manager.h"
#include "game/shared/stage/player.h"
#include "constants/animations.h"
#include "constants/move_states.h"
#include "constants/songs.h"

typedef struct {
    /* 0x000 */ s32 qWorldX;
    /* 0x004 */ s32 qWorldY;
    /* 0x008 */ s32 unk8;
    /* 0x00C */ s32 unkC;
    /* 0x010 */ u16 unk10;
    /* 0x012 */ u8 unk12;
    /* 0x013 */ u8 unk13;
    /* 0x014 */ u8 *bossPhase;
    /* 0x018 */ u8 unk18;
    /* 0x019 */ s8 unk19;
    /* 0x01A */ u8 unk1A;
    /* 0x01B */ u8 unk1B;
    /* 0x01C */ u8 unk1C;
    /* 0x01D */ u8 unk1D;
    /* 0x01E */ u16 unk1E;
    /* 0x020 */ s16 unk20;
    /* 0x022 */ u16 unk22;
    /* 0x024 */ u16 unk24;
    /* 0x026 */ s16 unk26;
    /* 0x028 */ s16 unk28;
    /* 0x02A */ s16 unk2A;
    /* 0x02C */ u16 unk2C;
    /* 0x02E */ s16 unk2E;
    /* 0x030 */ s16 unk30;
    /* 0x032 */ u8 unk32;
    /* 0x033 */ u8 unk33;
    /* 0x033 */ u8 *vram34;
    /* 0x038 */ u8 *vram38;
    /* 0x03C */ u8 *vram3C;
    /* 0x040 */ Player *players[2];
    /* 0x048 */ Sprite spr48;
    /* 0x070 */ Sprite spr70;
    /* 0x098 */ s32 unk98;
    /* 0x09C */ s32 unk9C;
    /* 0x0A0 */ s32 unkA0;
    /* 0x0A4 */ s32 unkA4;
    /* 0x0A8 */ s32 unkA8;
    /* 0x0AC */ s32 unkAC;
    /* 0x0B0 */ s32 unkB0;
    /* 0x0B4 */ s32 unkB4;
    /* 0x0B8 */ s32 unkB8;
    /* 0x0BC */ s32 unkBC;
    /* 0x0C0 */ u8 fillerC0[0x8];
    /* 0x0C8 */ u8 *vramC8;
    /* 0x0CC */ u8 *vramCC;
    /* 0x0D0 */ Sprite sprD0;
    /* 0x0F8 */ SpriteTransform tf0F8;
    /* 0x104 */ Sprite spr104;
    /* 0x0F8 */ SpriteTransform tf12C;
    /* 0x138 */ Sprite spr138;
    /* 0x138 */ Sprite spr160;
} EggCube; /* 0x188 */

void Task_EggCubeInit(void);
void Task_EggCube_806ED00(void);
void Task_EggCube_806EDE8(void);
void Task_EggCube_806EEB8(void);
void sub_806EFE8(EggCube *boss);
bool32 sub_806F5F0(Player *p);
void Task_EggCube_806F3A0(void);
void sub_806F2B8(EggCube *boss);
void sub_806FA0C(EggCube *boss);
void sub_806FAFC(EggCube *boss, u8 param1);
void sub_806FE98(EggCube *boss);
void SpawnGuardEnemy(EggCube *boss, u8 param1);
void sub_8070138(EggCube *boss);
void sub_8070208(EggCube *boss);
void sub_8070370(EggCube *boss);
void sub_8071410(EggCube *boss);
void sub_8071664(void);
void sub_8071904(EggCube *boss, u16 param1);
void sub_8071968(EggCube *boss, u8 param1);
void sub_80719B4(EggCube *boss);
void sub_80719C8(EggCube *boss);
void sub_8071720(EggCube *boss);
void sub_8071764(EggCube *boss);
void sub_80717A8(EggCube *boss);
void sub_806F56C(void);
void sub_807A37C(void);
void TaskDestructor_EggCube(struct Task *t);
extern void sub_8078E34(s32 *, VoidFn);
extern bool32 sub_807A1DC(Sprite *);

const u16 gUnknown_080D5880[4] = {
    0x0276,
    0x021C,
    0x0168,
    0x00E1,
};

static inline void sub_8071904_inline(EggCube *boss, u16 arg1)
{
    if (boss->unk10 != arg1) {
        boss->unk10 = arg1;
        switch (boss->unk10) {
            case 0:
                boss->unk1A = 0;
                boss->unk8 = 0;
                boss->unkC = 0;
                break;
            case 1:
                boss->unk8 = -8;
                boss->unkC = 0;
                break;
            case 2:
                boss->unk8 = 0x80;
                boss->unkC = 0;
                if (I(boss->qWorldX) > 0x66F) {
                    boss->unk10 = 3U;
                }
                break;
            case 4:
                boss->unk1A = 0;
                boss->unk8 = 0x800;
                boss->unkC = 0;
                break;
        }
    }
}

Task *CreateEggCube(u8 *bossPhase, s32 worldX, s32 worldY)
{
    Task *t;
    Sprite *s;
    EggCube *boss;
    u8 *vram;
    void *temp_r4;
    void *temp_r4_2;

    t = TaskCreate(Task_EggCubeInit, sizeof(EggCube), 0x2100U, 0U, TaskDestructor_EggCube);
    gStageData.taskBoss = t;
    boss = TASK_DATA(t);
    boss->qWorldX = Q(1488);
    boss->qWorldY = Q(worldY);
    boss->unk2C = 0;
    boss->unk18 = 0;
    boss->bossPhase = bossPhase;
    boss->unk19 = 0;
    boss->players[0] = &gPlayers[PLAYER_1];
    boss->players[1] = &gPlayers[gPlayers->charFlags.partnerIndex];
    boss->unk20 = 0x12C;
    boss->unk1A = 0;
    boss->unk2E = 0;
    boss->unk30 = 0;
    boss->unk1B = 0;
    boss->unk12 = 1;
    boss->unk13 = 0;
    boss->unk1C = 1;
    boss->unk1D = 0;
    boss->unk1E = 0;
    boss->unk32 = 0;
    sub_8071904(boss, 0U);

    vram = VramMalloc(100);
    boss->vram38 = vram;
    vram += 48 * TILE_SIZE_4BPP;
    boss->vram3C = vram;
    vram += 8 * TILE_SIZE_4BPP;

    s = &boss->spr70;
    s->tiles = vram;
    s->oamFlags = 0x240;
    s->anim = 0x4C9;
    s->variant = 1;
    s->qAnimDelay = 0;
    s->prevVariant = 0xFF;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->x = 0;
    s->y = 0;
    s->frameFlags = 0x1000;
    UpdateSpriteAnimation(s);

    vram += 28 * TILE_SIZE_4BPP;

    s = &boss->spr48;
    s->tiles = vram;
    s->oamFlags = 0x240;
    s->anim = 0x4CA;
    s->variant = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->x = 0;
    s->y = 0;
    s->frameFlags = 0x1000;
    UpdateSpriteAnimation(s);

    sub_8070138(boss);
    sub_80719B4(boss);
    boss->vram34 = NULL;

    SetFixedRandomIfTimeAttackMode();

    return t;
}

void Task_EggCube_806EC50(void)
{
    EggCube *boss = TASK_DATA(gCurTask);
    Player *p, *partner;

    if (*boss->bossPhase == 3) {
        TaskDestroy(gCurTask);
        return;
    }

    sub_806F5F0(boss->players[0]);
    sub_806F5F0(boss->players[1]);
    sub_8070208(boss);
    sub_806FA0C(boss);

    p = GET_SP_PLAYER_V0(PLAYER_1);
    partner = GET_SP_PLAYER_V0(PLAYER_2);

    if ((I(p->qWorldX) < 1342) && (partner->qWorldX > p->qWorldX)) {
        p->qWorldX = Q(1342);
    }

    if ((*boss->bossPhase == 2) && (sub_807A074() != 0)) {
        gCurTask->main = Task_EggCube_806ED00;
    }
}

void Task_EggCube_806ED00(void)
{
    Player *p;
    Player *partner;
    s16 pid;
    EggCube *boss = TASK_DATA(gCurTask);

    if (*boss->bossPhase == 3) {
        TaskDestroy(gCurTask);
        return;
    }

    sub_806F5F0(boss->players[0]);
    sub_806F5F0(boss->players[1]);
    sub_8070208(boss);
    sub_806FA0C(boss);

    if (*boss->bossPhase == 2) {
        for (pid = 0; pid < NUM_SINGLE_PLAYER_CHARS; pid++) {
            Player *p = &gPlayers[pid];
            if (I(p->qWorldX) < 1296 || I(p->qWorldX) >= 1712) {
                return;
            }
        }

        p = &gPlayers[gStageData.playerIndex];
        partner = &gPlayers[p->charFlags.partnerIndex];
        if (I(p->qWorldX) < 1342) {
            if (partner->qWorldX > p->qWorldX) {
                p->qWorldX = Q(1342);
            }
        }

        sub_80299D4(50);
        boss->unk13 = 1;
        gCurTask->main = Task_EggCube_806EDE8;
    }
}

void Task_EggCube_806EDE8(void)
{
    EggCube *boss = TASK_DATA(gCurTask);

    boss->unk2C++;

    sub_806F5F0(boss->players[0]);
    sub_806F5F0(boss->players[1]);

    switch (boss->unk2C) {
        case 60:
            sub_8071968(boss, 1U);
            m4aSongNumStart(SE_558);
            sub_806FAFC(boss, 1U);
            boss->unk18 = 1;
            sub_806F2B8(boss);
            break;

        case 240:
            sub_8071968(boss, 0U);
            UpdateSpriteAnimation(&boss->sprD0);
            break;

        case 300:
            sub_806FAFC(boss, 2U);
            break;

        case 400:
            boss->unk2C = 0;
            boss->unk18 = 1;
            boss->unk12 = 0;
            boss->unk13 = 0;
            sub_806FAFC(boss, 0U);
            sub_8071904(boss, 1U);
            sub_807A4A8();
            gCurTask->main = Task_EggCube_806EEB8;
            break;
    }

    sub_8070208(boss);
    sub_806FA0C(boss);
}

void Task_EggCube_806EEB8(void)
{
    EggCube *boss = TASK_DATA(gCurTask);
    u8 temp_r4;

    boss->unk2C++;
    if (I(boss->qWorldX) > 0x677) {
        if (gStageData.gameMode == 5) {
            if (gStageData.playerIndex != 0) {
                gCurTask->main = sub_8071664;
            } else {
                sub_8027674(1U, I(boss->qWorldX));
                sub_80719C8(boss);
                gCurTask->main = Task_EggCube_806F3A0;
            }
        } else {
            sub_80719C8(boss);
            gCurTask->main = Task_EggCube_806F3A0;
        }
        sub_806FA0C(boss);
        return;
    }

    temp_r4 = sub_806F5F0(boss->players[0]);
    temp_r4 += sub_806F5F0(boss->players[1]);
    if (temp_r4 != 0) {
        if (gStageData.gameMode == GAME_MODE_5) {
            if (gStageData.playerIndex == PLAYER_1) {
                sub_8071410(boss);
            }
        } else {
            sub_8071410(boss);
        }
    }

    if (boss->unk19 != 0) {
        boss->unk19--;
    }

    sub_806EFE8(boss);
    sub_8070208(boss);

    if (--boss->unk20 == 0) {
        s32 index;

        if (boss->qWorldX >= Q(0x630)) {
            index = 3;
        } else if (boss->qWorldX >= Q(0x612)) {
            index = 2;
        } else if (boss->qWorldX >= Q(0x5D6)) {
            index = 1;
        } else {
            index = 0;
        }
        boss->unk20 = gUnknown_080D5880[index];
        boss->unk1B ^= 1;
        SpawnGuardEnemy(boss, 0U);
        SpawnGuardEnemy(boss, 1U);
        SpawnGuardEnemy(boss, 2U);
    }
    sub_806FA0C(boss);
}

void sub_806EFE8(EggCube *boss)
{
    s32 var_r3;
    s32 qPrevWorldX = 0;

    if ((boss->unk10 == 2 || boss->unk10 == 3) && ((I(boss->unkC) & 3) == 0)) {
        sub_8079758(8U, (I(boss->qWorldX) - 32), (I(boss->qWorldY) - 4), 0, 0U, 0x10U, 0, NULL);
    }
    if (boss->unk10 != 4) {
        if (boss->unk1D == 0) {
            if (I(boss->qWorldX) >= 0x618) {
                sub_80299D4(0x33);
                boss->unk1D ^= 1;
            }
        } else if (I(boss->qWorldX) < 0x618) {
            sub_80299D4(0x32);
            boss->unk1D ^= 1;
        }
    }

    qPrevWorldX = boss->qWorldX;

    switch (boss->unk10) {
        case 0:
            break;
        case 1:
            boss->qWorldX += boss->unk8;
            if (I(boss->qWorldX) <= 0x550) {
                boss->qWorldX = Q(0x550);
                if (boss->unk13 == 0) {
                    boss->unk24 = 0x65;
                    boss->unk13 = 1;
                    if (boss->unk10 != 4) {
                        boss->unk10 = 4U;
                        boss->unk1A = 0;
                        boss->unk8 = 0x800;
                        boss->unkC = 0;
                    }
                }
            }
            break;
        case 2:
            boss->qWorldX += boss->unk8;
            if (gStageData.difficulty == 0) {
                var_r3 = 0x1000;
            } else {
                var_r3 = 0x1800;
            }
            boss->unkC += boss->unk8;
            if (boss->unkC >= var_r3) {
                sub_8071904_inline(boss, 0);
            }
            break;
        case 3:
            boss->qWorldX += boss->unk8;
            boss->unkC = boss->unkC + boss->unk8;
            if (boss->unkC >= 0x2000) {
                sub_8071904_inline(boss, 0);
            }
            break;
        case 4:
            boss->qWorldX += boss->unk8;
            if (1 & boss->unk1A) {
                if (I(boss->qWorldX) <= 0x550) {
                    boss->qWorldX = Q(0x550);
                    boss->unk8 = (s32)(0 - boss->unk8);
                    boss->unk1A++;
                }
            } else if (I(boss->qWorldX) > 0x64F) {
                boss->qWorldX = Q(0x650);
                boss->unk8 = (s32)(0 - boss->unk8);
                boss->unk1A++;
            }
            if (((s8)boss->unk1A == 10) && (I(boss->qWorldX) > 0x5CF)) {
                boss->qWorldX = Q(0x5D0);
                sub_8071904_inline(boss, 0);

                boss->unk12 = 1;
                sub_806F2B8(boss);
                boss->unk12 = 0;
                sub_806FAFC(boss, 1U);
                m4aSongNumStart(0x22EU);
            }
            break;
    }
    qPrevWorldX = boss->qWorldX - qPrevWorldX;
    if ((boss->players[0]->moveState & MOVESTATE_COLLIDING_ENT) && (boss->players[0]->sprColliding == &boss->spr70)) {
        boss->players[0]->qWorldX += qPrevWorldX;
    }
    if ((boss->players[1]->moveState & MOVESTATE_COLLIDING_ENT) && (boss->players[1]->sprColliding == &boss->spr70)) {
        boss->players[1]->qWorldX += qPrevWorldX;
    }
}

void sub_806F2B8(EggCube *boss)
{
    s32 temp_r0;
    s32 temp_r1;
    s32 var_r4;
    u8 rnd;
    u8 temp_r0_3;
    u8 var_r6;

    temp_r1 = boss->qWorldX;
    if (temp_r1 > 0x62FFF) {
        var_r4 = 3;
    } else if (temp_r1 > 0x611FF) {
        var_r4 = 2;
    } else if (temp_r1 > 0x5D5FF) {
        var_r4 = 1;
    } else {
        var_r4 = 0;
    }

    var_r6 = 0;
    rnd = PseudoRandom32() % 100U;
    switch (var_r4) {
        case 0:
            var_r6 = 1;
            if (rnd < 0x1E) {
                var_r6 = 2;
            }
            break;
        case 1:
            var_r6 = 2;
            if (rnd > 0x27U) {
                var_r6 = 1;
                if (rnd < 0x46) {
                    var_r6 = 0;
                }
            }
            break;
        case 2:
            var_r6 = 2;
            if (rnd > 0x31U) {
                var_r6 = 1;
                if (rnd <= 0x59U) {
                    var_r6 = 0;
                }
            }
            break;
        case 3:
            if (rnd <= 0x31U) {
                var_r6 = 2;
            }
            break;
    }
    boss->unk18 = var_r6;
    if (boss->unk12 != 0) {
        boss->unk18 = 1;
    }

    switch (boss->unk18) {
        case 0:
            sub_8071720(boss);
            break;
        case 1:
            sub_8071764(boss);
            sub_806FE98(boss);
            break;
        case 2:
            sub_80717A8(boss);
            break;
    }
    boss->unk13 = 1;
}

void Task_EggCube_806F3A0(void)
{
    Player *temp_r1_4;
    Player *temp_r1_5;
    s16 temp_r0;
    s16 temp_r0_6;
    s16 temp_r1_2;
    s32 temp_r0_2;
    s32 temp_r1_3;
    u16 temp_r2;
    s16 var_r0;
    u8 *temp_r0_3;
    void *temp_r0_4;
    void *temp_r0_5;
    EggCube *boss = TASK_DATA(gCurTask);
    s16 temp_r1 = I(boss->qWorldX);
    s32 timer = gStageData.timer;

    switch (boss->unk2C) {
        case 0x0:
            boss->unk8 = 0;
            boss->unk20 = 1;
            boss->unk2C = 10;
            break;

        case 10:
            boss->unk8 += 0x20;
            if (boss->unk8 >= 0x400) {
                boss->unk8 = 0x400;
            }

            boss->qWorldY = boss->qWorldY + boss->unk8;
            if (I(boss->qWorldY) > (gCamera.maxY + 80)) {
                boss->unk2C = 100;
            }
            break;

        case 100:
            if (boss->vram38 != NULL) {
                VramFree(boss->vram38);
                boss->vram38 = NULL;
            }

            if (boss->vramC8 != NULL) {
                VramFree(boss->vramC8);
                boss->vramC8 = NULL;
            }

            if (boss->vramCC != NULL) {
                VramFree(boss->vramCC);
                boss->vramCC = NULL;
            }
            boss->vram34 = VramMalloc(158);
            m4aSongNumStart(0x221U);
            CreateScreenShake(0x800U, 8U, 0U, -1U, 0x91U);
            boss->unk20 = 0xB4;
            boss->unk2C = 200;
            break;

        case 200:
            if (1 & timer) {
                if (2 & timer) {
                    temp_r1 = (temp_r1 += 32) - ((timer & 0x1F) * 2);
                } else {
                    temp_r1 = (temp_r1 -= 32) + ((timer & 0x1F) * 2);
                }
                sub_8079758(6, temp_r1, (gCamera.maxY + 16), 0x500, 0x300U, 0x14U, -0xA, boss->vram34);
            }
            if (!(gStageData.timer & 0x3F)) {
                m4aSongNumStart(0x221U);
            }
            if (--boss->unk20 == 0) {
                boss->unk20 = 0x3C;
                boss->unk2C = 1000;
            }
            break;

        case 1000:
            if (--boss->unk20 == 0) {
                gCurTask->main = sub_806F56C;
                boss->unk2C = 0;
            }
            break;
    }
    temp_r1_4 = boss->players[0];
    temp_r1_4->moveState |= MOVESTATE_IGNORE_INPUT;
    temp_r1_5 = boss->players[1];
    temp_r1_5->moveState |= MOVESTATE_IGNORE_INPUT;
    sub_8070208(boss);
    sub_806FA0C(boss);
}

void sub_806F56C()
{
    s32 sp00[4];
    u16 var_r0;
    EggCube *boss = TASK_DATA(gCurTask);
    Player *player = boss->players[0];

    switch (boss->unk2C) {
        case 0:
            if (boss->vram34 != NULL) {
                VramFree(boss->vram34);
                boss->vram34 = NULL;
            }
            boss->qWorldY -= Q(40);
            sp00[0] = I(boss->qWorldX);
            sp00[1] = I(boss->qWorldY);
            sp00[2] = I(boss->qWorldX);
            sp00[3] = I(boss->qWorldY) + 32;
            sub_8078E34(sp00, sub_807A37C);
            boss->unk2C = 1;
            return;
        case 1:
            if (!(player->moveState & MOVESTATE_IGNORE_INPUT)) {
                *boss->bossPhase = 0;
                boss->unk2C = 100;
                return;
            }
            break;
    }
}

u32 sub_806F5F0(Player *p)
{
    Player *player;
    Sprite *s;
    Sprite *temp_r5;
    u32 temp_r0;
    u32 result = 0;
    EggCube *boss = TASK_DATA(gCurTask);

    s = &boss->sprD0;
    if (sub_802C080(p) == 0) {
        s32 unk98 = boss->unk98;
        s32 unk9C = boss->unk9C;
        if ((boss->unk22 == 0) && (boss->unk19 == 0)) {
            sub_8004D68(unk98, unk9C);
        }

        if ((gPlayers[gStageData.playerIndex].charFlags.character == CREAM)
            || (gPlayers[gPlayers[gStageData.playerIndex].charFlags.partnerIndex].charFlags.character == CREAM)) {
            s->x = I(boss->unk98) - gCamera.x;
            s->y = I(boss->unk9C) - gCamera.y;

            if (sub_807A1DC(s) == 1) {
                result = 1;
            }
        }
        boss->spr70.hitboxes[0].b.left = -30;
        boss->spr70.hitboxes[0].b.top = -53;
        boss->spr70.hitboxes[0].b.right = +30;
        boss->spr70.hitboxes[0].b.bottom = 0;
        temp_r5 = &boss->spr70;
        temp_r0 = sub_8020950(temp_r5, I(boss->qWorldX), I(boss->qWorldY), p, 0U);

        if (0x10000 & temp_r0) {
            if (((u16)boss->unk30 == 1) && (boss->unk12 == 0)) {
                if ((p->moveState & 0x20) && (p->sprColliding == temp_r5)) {
                    Player_8014550(p);
                } else {
                    Player_800E67C(p);
                    p->qSpeedAirY -= Q(3);
                }
            } else {
                Sprite *s = (Sprite *)&p->spriteInfoBody->s;
                p->qWorldY = ((p->qWorldY + Q_8_8(temp_r0 + 1)) & 0xFFFFFF00) - 1;
                p->qSpeedAirY = 0;
                s->hitboxes[1].index = -1;
            }
        } else {
            if (0x40000 & temp_r0) {
                p->qWorldX += (s16)(temp_r0 & 0xFF00);
                if ((s32)p->qSpeedAirX < 0) {
                    p->qSpeedAirX = 0;
                }
                p->qSpeedGround = 0;
                if (0x20 & p->keyInput) {
                    p->qWorldX += 0xFFFFFF00;
                    p->moveState |= 0x40;
                }
            }
            if (0x80000 & temp_r0) {
                p->qWorldX += (s16)(temp_r0 & 0xFF00);
                if ((s32)p->qSpeedAirX > 0) {
                    p->qSpeedAirX = 0;
                }
                p->qSpeedGround = 0;
                if (0x10 & p->keyInput) {
                    p->qWorldX += 0x100;
                    p->moveState |= 0x40;
                }
            }
        }
        if (boss->unk24 || boss->unk12 || boss->unk13) {
            if (boss->unk12 != 0) {
                temp_r0 = sub_8020950(s, (s32)boss->unk98 >> 8, (s32)boss->unk9C >> 8, p, 0U);
                if (0x10000 & temp_r0) {
                    s = (Sprite *)&p->spriteInfoBody->s;
                    p->qWorldY = ((p->qWorldY + (s16)((temp_r0 + 1) << 8)) & 0xFFFFFF00) - 1;
                    p->qSpeedAirY = 0;
                    s->hitboxes[1].index = -1;
                } else {
                    if (0x40000 & temp_r0) {
                        p->qWorldX += (s16)(temp_r0 & 0xFF00);
                        if ((s32)p->qSpeedAirX < 0) {
                            p->qSpeedAirX = 0;
                        }
                        p->qSpeedGround = 0;
                        if (DPAD_LEFT & p->keyInput) {
                            p->qWorldX -= Q(1);
                            p->moveState |= 0x40;
                        }
                    }
                    if (0x80000 & temp_r0) {
                        p->qWorldX += (s16)(temp_r0 & 0xFF00);
                        if ((s32)p->qSpeedAirX > 0) {
                            p->qSpeedAirX = 0;
                        }
                        p->qSpeedGround = 0;
                        if (DPAD_RIGHT & p->keyInput) {
                            p->qWorldX += Q(1);
                            p->moveState |= 0x40;
                        }
                    }
                }
            }
            return FALSE;
        }
    }

    if (!sub_802C0D4(p) && ((gStageData.unk4 != 6 && gStageData.unk4 != 7 && gStageData.unk4 != 8) && (boss->unk22 == 0))) {
        if (sub_8020E3C(s, I(boss->unk98), I(boss->unk9C), 0, p) != 0) {
            if (p->moveState & 4) {
                s32 qNewSpeedX = -p->qSpeedAirX;
                s32 qNewSpeedY = -p->qSpeedAirY;
                p->qSpeedAirX = (s16)qNewSpeedX >> 1;
                p->qSpeedAirY = (s16)qNewSpeedY >> 1;

                if (ABS(p->qSpeedAirX) < Q(1.5)) {
                    if (p->qSpeedAirX <= 0) {
                        p->qSpeedAirX = -Q(1.5);
                    } else {
                        p->qSpeedAirX = +Q(1.5);
                    }
                }

                if (ABS(p->qSpeedAirY) < Q(1.5)) {
                    if (p->qSpeedAirY <= 0) {
                        p->qSpeedAirY = -Q(1.5);
                    } else {
                        p->qSpeedAirY = +Q(1.5);
                    }
                }
                p->qWorldY += p->qSpeedAirY;
                p->qWorldX += p->qSpeedAirX;
            } else {
                s32 qSpeedGround;
                qSpeedGround = -p->qSpeedGround;
                p->qSpeedGround = qSpeedGround;
                p->qSpeedGround = (s16)((s32)(p->qSpeedGround + ((u32)p->qSpeedGround >> 0x1F)) >> 1);
                p->qWorldX += p->qSpeedGround;
            }

            if (p->charFlags.anim0 == 0xD4) {
                Player_800DB30(p);
            }
            result = 1;
        } else {
            sub_8020CE0(s, (s32)boss->unk98 >> 8, (s32)boss->unk9C >> 8, 0, p);
        }
    }

    return result;
}

// TODO: Fake-match
// (100.00%) https://decomp.me/scratch/H3hQ7
void sub_806FA0C(EggCube *boss)
{
    Sprite *s;
    s16 screenX;
    s16 screenY;
    u8 var_r4;

    screenX = I(boss->qWorldX) - gCamera.x;
    screenY = I(boss->qWorldY) - gCamera.y;
    s = &boss->spr48;
    s->x = screenX;
    s->y = screenY;

    UpdateSpriteAnimation(s);

    SPRITE_FLAG_CLEAR(s, X_FLIP);
    DisplaySprite(s);
    SPRITE_FLAG_SET(s, X_FLIP);
    DisplaySprite(s);

    s = &boss->spr70;
    s->x = screenX;
    s->y = screenY;
    SPRITE_FLAG_CLEAR(s, X_FLIP);
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
    SPRITE_FLAG_SET(s, X_FLIP);
    DisplaySprite(s);

    sub_8070370(boss);

    if (boss->unk32 != 0) {
        for (var_r4 = 0; var_r4 < 2; var_r4++) {
            // TODO: screenX is (probably?) NOT the correct variable name,
            //       but using it, matches the code...
            screenX = 0;

            if (boss->players[var_r4]->qWorldX >= Q(0x65F)) {
                boss->players[var_r4]->qWorldX = Q(0x65F);
                screenX = 1;
            } else if (boss->players[var_r4]->qWorldX <= Q(0x541)) {
                boss->players[var_r4]->qWorldX = Q(0x541);
                screenX = 1;
            }
            if (screenX != 0) {
                boss->players[var_r4]->qSpeedAirX = 0;
                boss->players[var_r4]->qSpeedGround = 0;
            }
        }
    }
}

void sub_806FAFC(EggCube *boss, u8 param1)
{
    u8 temp_r1;

    switch (param1) {
        case 0: {
            boss->spr48.variant = 0;
            boss->spr70.variant = 0;
            boss->unk30 = 0;
        } break;

        case 1: {
            boss->spr48.variant = 1;
            boss->spr70.variant = 1;
            boss->unk30 = 1;
        } break;

        case 2: {
            boss->spr48.variant = 2;
            boss->spr70.variant = 2;
            boss->unk30 = 2;
        } break;
    }

    boss->spr48.prevVariant = -1;
    boss->spr70.prevVariant = -1;
}

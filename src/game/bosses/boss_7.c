#include "global.h"
#include "core.h"
#include "trig.h"
#include "malloc_vram.h"
#include "multi_sio_stuff.h"
#include "lib/m4a/m4a.h"
#include "game/bosses.h"
#include "game/stage.h"
#include "game/sa3/bosses/eggman_escape.h"
#include "game/shared/stage/music_manager.h"
#include "game/shared/stage/player_callbacks.h"
#include "game/shared/stage/player.h"
#include "game/shared/stage/screen_shake.h"
#include "game/shared/stage/terrain_collision.h"
#include "game/sa3/bosses/eggman_escape.h"
#include "constants/animations.h"
#include "constants/move_states.h"
#include "constants/songs.h"

typedef struct {
    /* 0x00 */ s32 qUnk0;
    /* 0x04 */ s32 qUnk4;
    /* 0x08 */ s32 qUnk8;
    /* 0x0C */ s32 qUnkC;
    /* 0x10 */ u8 filler10[0x4];
    /* 0x14 */ s32 unk14;
    /* 0x18 */ s32 unk18;
    /* 0x1C */ u8 *bossPhase;
    /* 0x20 */ u8 unk20;
    /* 0x21 */ u8 lives;
    /* 0x22 */ u8 unk22;
    /* 0x23 */ u8 unk23;
    /* 0x24 */ u8 unk24;
    /* 0x25 */ u8 unk25;
    /* 0x26 */ u8 unk26;
    /* 0x27 */ u8 unk27;
    /* 0x28 */ u8 unk28;
    /* 0x29 */ u8 unk29;
    /* 0x2A */ u8 unk2A;
    /* 0x2B */ u8 unk2B;
    /* 0x2B */ u16 unk2C;
    /* 0x2E */ u8 unk2E[2];
    /* 0x2B */ u16 unk30;
    /* 0x2B */ s16 unk32;
    /* 0x2B */ u16 unk34[4];
    /* 0x2B */ s32 unk3C;
    /* 0x30 */ u8 filler40[0x4];
    /* 0x2B */ s32 unk44;
    /* 0x48 */ u8 *vram48;
    /* 0x4C */ u8 *vram4C;
    /* 0x50 */ Player *players[NUM_SINGLE_PLAYER_CHARS];
    /* 0x58 */ Sprite sprCockpit;
    /* 0x80 */ Sprite spr80;
    /* 0xA8 */ Sprite sprGemerlAnchor;
    /* 0xD0 */ Task *taskStrc100;
    /* 0xD4 */ u8 unkD4;
} EggGravity; /* 0xD8 */

typedef struct {
    /* 0x00 */ EggGravity *boss;
    /* 0x04 */ s32 unk4[21];
    /* 0x58 */ s32 unk58[21];
    /* 0xB0 */ s32 unkAC;
    /* 0xB0 */ u8 unkB0;
    /* 0xB1 */ u8 unkB1;
    /* 0xB2 */ u8 unkB2;
    /* 0xB3 */ u8 unkB3;
    /* 0xB3 */ s8 unkB4;
    /* 0xB3 */ u8 unkB5;
    /* 0xB3 */ u8 unkB6;
    /* 0xB3 */ s8 unkB7;
    /* 0xB3 */ u8 unkB8;
    /* 0xB3 */ u8 unkB9;
    /* 0xB3 */ u8 unkBA;
    /* 0xB3 */ u8 unkBB;
    /* 0xB3 */ s32 unkBC;
    /* 0xB3 */ s32 unkC0;
    /* 0xC4 */ Vec2_32 qUnkC4;
    /* 0xCC */ Sprite sprCC;
    /* 0xF4 */ Player *players[NUM_SINGLE_PLAYER_CHARS];
    /* 0xFC */ EggGravity *bossFC;
} EggGravity100; /* 0x100 */

typedef struct {
    /* 0x00 */ u8 *unk0;
    /* 0x08 */ u8 *unk4;
    /* 0x08 */ u8 unk8;
    /* 0x08 */ u8 unk9;
    /* 0x0C */ s32 *unkC;
    /* 0x0C */ s32 *unk10;
    /* 0x14 */ s32 qUnk14[2];
    /* 0x14 */ s32 qUnk1C[2];
    /* 0x24 */ s32 qUnk24[2][2];
    /* 0x24 */ s32 qUnk34;
    /* 0x24 */ s32 qUnk38;
    /* 0x08 */ u8 *vram3C;
    /* 0x08 */ Something *unk40;
    /* 0x28 */ Sprite2 sprites44[4];
} EggGravity104; /* 0x104 */

typedef struct {
    /* 0x00 */ u8 unk0[2];
    /* 0x02 */ u8 filler2[2];
    /* 0x04 */ u16 unk4[2];
    /* 0x08 */ Vec2_16 unk8[4];
    /* 0x18 */ Sprite s;
    /* 0x40 */ Player *players[NUM_SINGLE_PLAYER_CHARS];
    /* 0x48 */ EggGravity *boss;
} EggGravity4C_A; /* 0x4C */

typedef struct {
    s32 x0, y0;
    s32 x1, y1;
} Arg0_80786B4;

typedef struct {
    /* 0x00 */ u8 *unk0;
    // TODO: qUnk4 / qUnkC are not Vec2's apparently?
    /* 0x04 */ s32 qUnk4Xs[2];
    /* 0x04 */ s32 qUnkCYs[2];
    /* 0x04 */ Vec2_32 qUnk14;
    /* 0x1C */ Sprite s;
    /* 0x44 */ u8 filler44[0x8];
} EggGravity4C_B; /* 0x4C */

typedef struct {
    /* 0x00 */ u8 *bossPhase;
    /* 0x04 */ u16 unk4[2];
    /* 0x04 */ u16 unk8[8];
    /* 0x00 */ s32 *unk18Xs;
    /* 0x00 */ s32 *unk1CYs;
    /* 0x00 */ s32 unk20;
    /* 0x04 */ Vec2_32 unk24[8];
    Sprite *spr64;
} EggGravity68;

typedef struct {
    /* 0x08 */ u8 *unk0;
    /* 0x08 */ u8 unk4[2];
    /* 0x08 */ s16 *unk8;
    /* 0x0C */ s16 *unkC;
    /* 0x10 */ s32 unk10[2];
    /* 0x18 */ s32 unk18[2];
    Something *unk20;
    Sprite2 spr24;
    Sprite2 spr54;
} EggGravity84;

typedef struct {
    /* 0x08 */ u8 *unk0;
    /* 0x08 */ u8 unk4;
    /* 0x08 */ u16 unk6;
    /* 0x08 */ s32 *unk8;
    /* 0x0C */ s32 *unkC;
    /* 0x10 */ s32 unk10;
    /* 0x14 */ s32 qUnk14[2][2];
    /* 0x24 */ Sprite *pSpr24;
} EggGravity28;

typedef struct {
    /* 0x00 */ u8 *unk0;
    u8 unk4;
    s8 unk5;
    s8 unk6;
    u8 unk7;
    u16 unk8;
    /* 0x00 */ u8 fillerA[0x2];
    s32 unkC;
    s32 unk10;
    s32 unk14;
    s32 unk18;
    s32 unk1C;
    s32 unk20;
    s32 unk24;
    /* 0x28 */ Sprite *pSpr28;
    /* 0x2C */ void *unk2C;
} EggGravity30;

typedef struct {
    /* 0x00 */ u8 *unk0;
    /* 0x04 */ u8 unk4;
    /* 0x05 */ u8 unk5;
    /* 0x06 */ u8 unk6;
    /* 0x07 */ u8 unk7;
    /* 0x08 */ u16 unk8;
    /* 0x09 */ u16 unkA;
    /* 0x09 */ u16 unkC;
    /* 0x0A */ u8 fillerE[0x2];
    /* 0x10 */ s32 *unk10;
    /* 0x14 */ s32 *unk14;
    /* 0x20 */ s32 unk18;
    /* 0x20 */ s32 unk1C;
    /* 0x20 */ s32 unk20;
    /* 0x24 */ Vec2_32 unk24[3];
    /* 0x3C */ Vec2_32 unk3C[3];
    /* 0x54 */ s32 unk54[3];
    /* 0x60 */ s32 unk60[3];
    /* 0x6C */ Sprite spr6C;
    /* 0x94 */ Sprite spr94;
} EggGravityBC; /* 0xBC */

typedef struct {
    u16 anim;
    u16 pattern;
} AnimPattern;

Task *CreateEggGravity(u8 *bossPhase, s32 worldX, s32 worldY);
void Task_D8_8075064(void);
void Task_D8_8075204(void);
void Task_D8_8075324(void);
void Task_D8_8075674(void);
void Task_D8_80759B4(void);
void Task_D8_8075C40(void);
void Task_D8_8075DA4(void);
void Task_D8_8075EE8(void);
void Task_D8_8076050(void);
void Task_D8_8076218(void);
void Task_D8_80762B4(void);
void Task_4C_A_8076618(void);
void sub_8076328(EggGravity *boss);
void sub_8076420(EggGravity *boss);
void sub_8076550(EggGravity *boss);
void sub_80769C4(u8 *param0, s16 param1);
Task *sub_8076A54(EggGravity *boss);
void Task_100_8076B58(void);
void sub_8076DD4(EggGravity100 *strc100);
void sub_8077874(EggGravity *boss, Player *p);
void Task_D8_EggGravityInit(void);
u8 sub_8077174(Task *task_EggGravity100);
void Task_D8_80777AC(void);
void sub_80778D0(EggGravity *arg0);
void sub_8077918(EggGravity *boss);
void sub_8077954(EggGravity *boss, u8 arg1);
void sub_8077A28(EggGravity *boss);
void TaskDestructor_EggGravity(Task *t);
void sub_8077A04(Task *arg0, s8 arg1);
void sub_8077238(Task *task_EggGravity100, u8 arg1, s32 arg2, s32 arg3);
void sub_8077A14(Task *arg0, s8 arg1);
s32 sub_80787D8(EggGravity68 *strc68);
void TaskDestructor_100_80779EC(struct Task *t);
void sub_80772F0(EggGravity100 *strc100, u8 pid);
extern u8 sub_8078D6C(EggGravity68 *strc68);
s32 sub_8078CC4(EggGravity28 *arg0);
s32 sub_8078650(EggGravity28 *arg0);
AnimCmdResult sub_8078504(EggGravityBC *strcBC);
void sub_8078570(EggGravityBC *strcBC);
s32 sub_8078468(EggGravityBC *strcBC);
void sub_8078B50(void);
s32 sub_8078BAC(EggGravity30 *strc30);
void sub_8078B24(void);
void sub_807813C(EggGravity30 *strc30);
void sub_80789EC(Sprite *s, Vec2_32 *vec, u8 *);
void sub_8078B74(EggGravity30 *strc30);
void TaskDestructor_8078D30(Task *t);
void Task_68_8078D34(void);
void Task_30_8078AC4(void);
void TaskDestructor_8078AC0(Task *t);
void TaskDestructor_28_8078C8C(Task *t);
void Task_28_8078C90(void);
void Task_D8_8077718(void);
void Task_D8_8077764(void);
void Task_104_8077F80(void);
void TaskDestructor_104_8078A68(Task *t);
void sub_8077D40(EggGravity104 *strc104);
void Task_4C_8078764(void);
static void InitSpritesStructBC(EggGravityBC *strcBC);
void Task_BC_8078C3C(void);
void TaskDestructor_8078C28(Task *t);
void TaskDestructor_4C_B_8078D18(Task *t);
extern Something *sub_807A3D8(Something **spriteArray, u8 spriteCount, AnimId anim, u8 pattern, u8 *arg4);

// TEMP

#if 0 // M2C
Task *CreateEggGravity(u8 *bossPhase, s32 worldX, s32 worldY, EggGravity *boss);
void Task_D8_8075064(EggGravity *boss);
void Task_D8_8075204(EggGravity *boss);
void Task_D8_8075324(EggGravity *boss);
void Task_D8_8075674(EggGravity *boss);
void Task_D8_80759B4(EggGravity *boss);
void Task_D8_8075C40(EggGravity *boss);
void Task_D8_8075DA4(EggGravity *boss);
void Task_D8_8075EE8(EggGravity *boss);
void Task_D8_8076050(EggGravity *boss);
void Task_D8_8076218(EggGravity *boss);
void Task_D8_80762B4(EggGravity *boss);
void Task_104_8077F80(EggGravity104 *strc104);
void sub_8076550(EggGravity *boss, EggGravity4C_A *strc4C);
Task *sub_8076A54(EggGravity *boss, EggGravity100 *strc100);
void Task_4C_A_8076618(EggGravity4C_A *strc4C);
void Task_100_8076B58(EggGravity100 *strc100);
#endif

extern void EnablePlayerMovement(void);
extern void sub_8078E34(s32 *, VoidFn);
extern bool32 IsCollidingWithCheese(Sprite *);
extern void sub_80781C0(Vec2_32 *, s8 *);
s32 sub_8078A78(EggGravity104 *strc104, Vec2_32 *pos);
void sub_8078070(EggGravity104 *strc104, Vec2_32 *pos);

extern const u16 gUnknown_080D59EC[4][2];
extern const AnimPattern gUnknown_080D5904[4];
extern const u16 gUnknown_080D5940[8];
extern const u16 gUnknown_080D5978[4][4];
extern const AnimPattern sBoss7AnimsCockpit[4];
extern const AnimPattern gUnknown_080D592C[5];
extern const s32 gUnknown_080D5954[];
extern const u32 gUnknown_080D5998[];
extern const TileInfo2 gUnknown_080D5A44[4];
extern const TileInfo2 gUnknown_080D59FC[4];
extern const TileInfo2 gUnknown_080D5A14[6];
extern const u8 gUnknown_080D5A64[ARRAY_COUNT(((EggGravity68 *)NULL)->unk8)];
void Task_84_8077C08(void);
void TaskDestructor_8078A64(Task *t);

Task *CreateEggGravity(u8 *bossPhase, s32 worldX, s32 worldY)
{
    EggGravity *boss;
    Task *t;
    u8 *vram;
    u8 lives;
    Sprite *s;

    t = TaskCreate(Task_D8_EggGravityInit, sizeof(EggGravity), 0x2100U, 0U, TaskDestructor_EggGravity);
    boss = TASK_DATA(t);
    gStageData.taskBoss = t;
    boss->qUnk0 = Q(0x408);
    boss->qUnk4 = Q(0x249);
    boss->unk14 = 0;
    boss->unk18 = 0;
    boss->unk32 = 0;
    boss->unk3C = 0;
    boss->unk44 = 0;
    boss->unk30 = 0;
    boss->unk22 = 0;
    boss->unk23 = 0;
    boss->unk24 = 0;
    boss->unk25 = 0;
    boss->unk26 = 0;
    boss->unk27 = 0;
    boss->unk28 = 0;
    boss->unkD4 = 0;
    if (gStageData.difficulty == 0) {
        boss->lives = 8;
    } else {
        boss->lives = 6;
    }
    boss->bossPhase = bossPhase;
    boss->players[PLAYER_1] = &gPlayers[PLAYER_1];
    boss->players[PLAYER_2] = &gPlayers[gPlayers->charFlags.partnerIndex];
    boss->unk34[0] = 0;
    boss->unk34[1] = 0;
    boss->qUnk8 = 0;
    boss->qUnkC = 0;
    sub_8077918(boss);
    boss->vram48 = VramMalloc(116);
    boss->vram4C = VramMalloc(30);
    vram = VramMalloc(0x41U);
    s = &boss->sprCockpit;
    s->tiles = vram;
    s->anim = ANIM_BOSS_7_COCKPIT;
    s->variant = 0;
    s->oamFlags = 0x540;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = 0xFF;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x1000;
    UpdateSpriteAnimation(s);
    vram += 0x480;

    s = &boss->spr80;
    s->tiles = vram;
    s->anim = ANIM_BOSS_7_EGGMAN_ROTATED;
    s->variant = 0;
    s->oamFlags = 0x500;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x1000;
    UpdateSpriteAnimation(s);
    vram += 0x120;

    s = &boss->sprGemerlAnchor;
    s->tiles = vram;
    s->anim = ANIM_BOSS_7_GEMERL;
    s->variant = 0;
    s->oamFlags = 0x580;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x1000;
    UpdateSpriteAnimation(s);

    boss->taskStrc100 = sub_8076A54(boss);
    sub_8076550(boss);
    SetFixedRandomIfTimeAttackMode();
    return t;
}

void Task_D8_8075064(void)
{
    Player *player;
    Player *partner;
    u8 i;
    EggGravity *boss = TASK_DATA(gCurTask);

    for (i = 0; i < ARRAY_COUNT(boss->players); i++) {
        player = boss->players[i];

        if (!(0x08000100 & player->moveState)) {
            if (player->qWorldY >= 0xD700) {
                player->moveState |= 0x8000000;
                if (player->moveState & 0x800000) {
                    sub_8016F28(player);
                }
                if (player->moveState & 0x01000000) {
                    player->moveState &= ~0x01000000;
                }
                Player_800E67C(player);
            }
        } else if ((0x08000000 & player->moveState) && (player->qWorldY < 0xD700)) {
            player->moveState = player->moveState & 0xF7FFFFFF;
        }
        if ((s32)player->qWorldX > 0x4A5FF) {
            player->qWorldX = 0x4A600;
            player->qSpeedAirX = 0;
            player->qSpeedGround = 0;
        }
    }

    player = &gPlayers[gStageData.playerIndex];
    partner = &gPlayers[player->charFlags.partnerIndex];
    if ((s32)player->qWorldY > 0x225FF) {
        gCamera.minY = 0x1B8;
        gCamera.maxY = 0x2D8;
        boss->unk30 = 0;
        if (gStageData.gameMode != 5) {
            sub_80299D4(0x34U);
            gCurTask->main = Task_D8_8075204;
            if ((partner->qWorldY >= 0x28A00) && (partner->charFlags.someIndex == 2)) {
                partner->qSpeedGround = 0;
                partner->qSpeedAirY = 0;
                partner->qSpeedAirX = 0;
                partner->qWorldX = player->qWorldX;
                partner->qWorldY = player->qWorldY;
                partner->layer = player->layer;
                partner->framesInvulnerable = 0x78;
                partner->unk56 = 0xE;
                partner->unk57 = 0x3C;
                partner->moveState &= 0xFFFFFEFF;
                SetPlayerCallback(partner, Player_8005380);
            }
        } else {
            sub_8079FFC();
            gCurTask->main = Task_D8_80777AC;
        }
    }

    sub_8076328(boss);
}

void Task_D8_8075204(void)
{
    Player *player;
    Player *partner;
    s32 temp_r1;
    u16 temp_r0;
    u16 temp_r2;
    u16 var_r1;
    u8 i;
    EggGravity *boss = TASK_DATA(gCurTask);
    EggGravity100 *strc100 = TASK_DATA(boss->taskStrc100);

    boss->unk30 += 1;
    if (!(boss->players[0]->moveState & 0x100) && !(boss->unk30 & 2)) {
        gDispCnt |= 0x100;
    } else {
        gDispCnt &= ~0x100;
    }

    switch (boss->unk30) {
        case 30:
            player = boss->players[0];
            player->moveState &= ~0x8000000;
            partner = boss->players[1];
            partner->moveState &= ~0x8000000;
            break;

        case 67:
            sub_8077954(boss, 4);
            break;

        case 127:
            strc100->unkB1 = 1;
            gDispCnt |= 0x100;
            boss->unk30 = 0U;
            sub_8077954(boss, 0);
            sub_807A4A8();
            gCurTask->main = Task_D8_8075324;
            break;
    }

    for (i = 0; i < 2; i++) {
        Player *p = boss->players[i];
        if ((p->moveState & 0x08000000) && ((s32)p->qWorldX >= 0x4A600)) {
            p->qWorldX = 0x4A600;
            p->qSpeedAirX = 0;
            p->qSpeedGround = 0;
        }
    }

    sub_8076328(boss);
}

void Task_D8_8075324(void)
{
    u32 var_r2;
    u8 i;
    EggGravity *boss = TASK_DATA(gCurTask);
    Sprite *spr80 = &boss->spr80;
    Sprite *cockpit = &boss->sprCockpit;
    Sprite *gemerlAnchor = &boss->sprGemerlAnchor;
    Player *p = boss->players[PLAYER_1];

    boss->unk30 = (u16)(boss->unk30 + 1);
    boss->unk26 = 0;
    sub_80778D0(boss);
    sub_8077874(boss, boss->players[PLAYER_1]);
    sub_8077874(boss, boss->players[PLAYER_2]);
    sub_8076420(boss);

    if (boss->unk27 != 0) {
        boss->unk27 = 0;
        boss->unk2B = 0;
        boss->unk2C = 1;
        gCurTask->main = Task_D8_8075674;
        if (gStageData.gameMode != 5) {

        } else if (gStageData.playerIndex == 0) {
            sub_8027674(3U, 0U);
        } else {
            sub_8027674(4U, 0U);
        }
    } else {
        if ((boss->unk24 == 0) || (--boss->unk24 == 0)) {
            boss->unk24 = gUnknown_080D5940[boss->lives];
            var_r2 = 0;
            if (boss->unk23 == 0) {
                if (p->moveState & 0x10000) {
                    var_r2 = 1;
                } else {
                    var_r2 = 0;
                }
            } else if (!(p->moveState & 0x10000)) {
                var_r2 = 1;
            }
            boss->unk25 = 0;
            if (var_r2 != 0) {
                // TODO: Fake-match!
#ifndef NON_MATCHING
                register s32 var_r0 asm("r0");
                register s32 var_r1 asm("r1");
#else
                s32 var_r0;
                s32 var_r1;
#endif
                var_r0 = boss->qUnk0;
                var_r0 += boss->unk14;
                var_r1 = p->qWorldX;
                var_r1 -= var_r0;
                // TODO: Use ABS() macro!
                var_r0 = var_r1;
                if (var_r1 < 0) {
                    var_r0 = -var_r1;
                }
                var_r1 = I(var_r0);
                for (i = 0; i < 4; i++) {
                    if ((var_r1) <= gUnknown_080D5978[i][0]) {
                        if ((PseudoRandom32() % 10000U) <= gUnknown_080D5978[i][1]) {
                            if ((PseudoRandom32() % 10000U) <= gUnknown_080D5978[i][2]) {
                                boss->unk25 = 1;
                            } else {
                                boss->unk25 = 2;
                            }
                        }
                        break;
                    }
                }
            }

            switch (boss->unk25) {
                case 0:
                    break;
                case 1:
                    boss->unk2B = 0;
                    boss->unk2C = 1;
                    gCurTask->main = Task_D8_8075C40;
                    break;
                case 2:
                    boss->unk29 = 0xC;
                    gCurTask->main = Task_D8_8075DA4;
                    if (boss->unk23 != 0) {
                        boss->unk23 = 0;
                        spr80->anim = gUnknown_080D5904[2].anim;
                        spr80->variant = (u8)gUnknown_080D5904[2].pattern;
                        spr80->prevAnim = -1;
                        spr80->prevVariant = -1;
                        cockpit->anim = sBoss7AnimsCockpit[2].anim;
                        cockpit->variant = (u8)sBoss7AnimsCockpit[2].pattern;
                        cockpit->prevAnim = -1;
                        cockpit->prevVariant = -1;
                        gemerlAnchor->anim = gUnknown_080D592C[2].anim;
                        gemerlAnchor->variant = (u8)gUnknown_080D592C[2].pattern;
                        gemerlAnchor->prevAnim = -1;
                        gemerlAnchor->prevVariant = -1;
                    } else {
                        boss->unk23 = 1;
                        spr80->anim = gUnknown_080D5904[3].anim;
                        spr80->variant = gUnknown_080D5904[3].pattern;
                        spr80->prevAnim = -1;
                        spr80->prevVariant = -1;
                        cockpit->anim = sBoss7AnimsCockpit[3].anim;
                        cockpit->variant = (u8)sBoss7AnimsCockpit[3].pattern;
                        cockpit->prevAnim = -1;
                        cockpit->prevVariant = -1;
                        gemerlAnchor->anim = gUnknown_080D592C[3].anim;
                        gemerlAnchor->variant = gUnknown_080D592C[3].pattern;
                        gemerlAnchor->prevAnim = -1;
                        gemerlAnchor->prevVariant = -1;
                    }
                    break;
            }
        }
    }

    if (boss->lives == 0) {
        if (gStageData.gameMode == 5) {
            if (boss->unkD4 == 0) {
                sub_8027674(1U, (u16)((boss->unk14 << 8) >> 0x10));
                goto block_36;
            }
        } else if (boss->unkD4 == 0) {
        block_36:
            sub_8077A28(boss);
            gCurTask->main = Task_D8_8075EE8;
        }
    }
    sub_8076328(boss);
}

void Task_D8_8075674(void)
{
    EggGravity *boss = TASK_DATA(gCurTask);
    Sprite *gemerlAnchor = &boss->sprGemerlAnchor;
    s32 temp_r0_3;
    s32 temp_r0_4;
    s32 var_r2;
    s32 var_r2_2;
    u8 temp_r0;
    u8 temp_r0_2;
    u8 temp_r0_5;
    void (*var_r0)(EggGravity *);

    boss->unk30 = (u16)(boss->unk30 + 1);
    sub_8077874(boss, boss->players[0]);
    sub_8077874(boss, boss->players[1]);
    temp_r0 = boss->unk2B;
    switch ((u32)temp_r0) { /* irregular */
        case 0:
            boss->unk26 = 3;
            gemerlAnchor->anim = gUnknown_080D592C[4].anim;
            gemerlAnchor->variant = gUnknown_080D592C[4].pattern;
            gemerlAnchor->prevAnim = 0xFFFF;
            gemerlAnchor->prevVariant = 0xFF;
            if (boss->unk23 != 0) {
                boss->unk32 = 0x600;
            } else {
                boss->unk32 = -0x600;
                gemerlAnchor->frameFlags |= 0x800;
            }
            sub_8077A04(boss->taskStrc100, 1);
            m4aSongNumStart(SE_564);
            boss->unk2B = 0xA;
            break;
        case 10:
            boss->unk3C = (s32)(boss->unk3C + boss->unk32);
            var_r2 = 0;
            if (boss->unk23 != 0) {
                if (I(boss->qUnk4) > 0x2C8) {
                    var_r2 = 1;
                }
            } else if (I(boss->qUnk4) <= 0x1C7) {
                var_r2 = 1;
            }

            if (var_r2 != 0) {
                sub_8078DB0(0x4EE, 0, 0x3A, 0U);
                sub_8078DB0(0x4EF, 0, 0x3A, 0U);
                boss->unk32 = 0;
                boss->unk2B = 0xB;
                gemerlAnchor->anim = gUnknown_080D592C[boss->unk23].anim;
                gemerlAnchor->variant = gUnknown_080D592C[boss->unk23].pattern;
                gemerlAnchor->prevAnim = 0xFFFF;
                gemerlAnchor->prevVariant = 0xFF;
                if (boss->unk23 != 0) {
                    sub_8077954(boss, 8);
                } else {
                    gemerlAnchor->frameFlags &= 0xFFFFF7FF;
                    sub_8077954(boss, 5);
                }
                temp_r0_2 = boss->lives;
                if (temp_r0_2 != 0) {
                    boss->lives = temp_r0_2 - 1;
                }
                if (gStageData.difficulty == 0) {
                    if (boss->lives == 4) {
                        sub_80299D4(0x35U);
                    }
                } else if (boss->lives == 3) {
                    sub_80299D4(0x35U);
                }
                m4aSongNumStart(SE_235);
                PlayVoiceEggmanHit();
            }
            break;
        case 11:
            var_r2_2 = 0;
            if (boss->unk23 != 0) {
                boss->unk32 = (s16)((u16)boss->unk32 - 0x40);
                temp_r0_3 = boss->unk3C + boss->unk32;
                boss->unk3C = temp_r0_3;
                if (temp_r0_3 < 0) {
                    boss->unk3C = 0;
                    goto block_31;
                }
                goto block_30;
            }
            boss->unk32 = (s16)((u16)boss->unk32 + 0x40);
            temp_r0_4 = boss->unk3C + boss->unk32;
            boss->unk3C = temp_r0_4;
            if (temp_r0_4 > 0) {
                boss->unk3C = 0;
                var_r2_2 = 1;
            }
        block_30:
            if (var_r2_2 != 0) {
            block_31:
                boss->unk32 = 0;
                boss->unk2B = 0x14;
                if (boss->unk23 != 0) {
                    sub_8077954(boss, 1);
                } else {
                    sub_8077954(boss, 0);
                }
            }
            break;
        case 20:
            if (sub_8077174(boss->taskStrc100) != 0) {
                m4aSongNumStart(SE_565);
                sub_8077238(boss->taskStrc100, 1 ^ boss->unk23, boss->qUnk0 + boss->unk14, 0x800);
                sub_8077A14(boss->taskStrc100, 3);
                boss->unk2C = 0x3C;
                boss->unk2B = 0x1E;
            }
            break;
        case 30:
            if ((sub_8077174(boss->taskStrc100) << 0x18) != 0) {
                u32 lives;
                sub_8077A04(boss->taskStrc100, 0);
                boss->unk2B = 0;
                sub_8077918(boss);
                lives = boss->lives;
                if ((lives != 0) && (boss->lives < 5)) {
                    boss->unk29 = 0x1E;
                    boss->unk2A = 0;
                    gCurTask->main = Task_D8_80759B4;
                } else {
                    gCurTask->main = Task_D8_8075324;
                }
            }
            break;
    }
    sub_8076328(boss);
}

void Task_D8_80759B4(void)
{
    s32 temp_r0;
    u32 temp_r0_3;
    u8 temp_r0_2;
    u8 temp_r0_4;
    u8 temp_r0_5;
    EggGravity *boss = TASK_DATA(gCurTask);
    Sprite *spr80 = &boss->spr80;
    Sprite *sprCockpit = &boss->sprCockpit;
    Sprite *gemerlAnchor = &boss->sprGemerlAnchor;
    boss->unk30 = (u16)(boss->unk30 + 1);
    boss->unk26 = 4;
    sub_8077874(boss, boss->players[0]);
    sub_8077874(boss, boss->players[1]);
    if (boss->unk2A == 0) {
        boss->unk29 = 1;
        boss->unk2A += 1;
        boss->unk22 = ((u32)PseudoRandom32() >> 8) % 2u;
        if (boss->unk22 != 0) {
            boss->qUnk8 = -0x400;
        } else {
            boss->qUnk8 = +0x400;
        }
        if (boss->lives > 1) {
            temp_r0_3 = boss->qUnk8;
            boss->qUnk8 = (u32)((s32)(temp_r0_3 + (temp_r0_3 >> 0x1F)) >> 1);
        }
    } else {
        sub_80778D0(boss);
        if (--boss->unk29 == 0) {
            if (1 & boss->unk2A) {
                boss->unk29 = 0xC;
                if (boss->unk23 != 0) {
                    boss->unk23 = 0;
                    spr80->anim = gUnknown_080D5904[2].anim;
                    spr80->variant = gUnknown_080D5904[2].pattern;
                    spr80->prevAnim = 0xFFFF;
                    spr80->prevVariant |= 0xFF;
                    sprCockpit->anim = sBoss7AnimsCockpit[2].anim;
                    sprCockpit->variant = (u8)sBoss7AnimsCockpit[2].pattern;
                    sprCockpit->prevAnim = -1;
                    sprCockpit->prevVariant |= 0xFF;
                    gemerlAnchor->anim = gUnknown_080D592C[2].anim;
                    gemerlAnchor->variant = gUnknown_080D592C[2].pattern;
                    gemerlAnchor->prevAnim = -1;
                    gemerlAnchor->prevVariant = -1;
                } else {
                    boss->unk23 = 1;
                    spr80->anim = gUnknown_080D5904[3].anim;
                    spr80->variant = gUnknown_080D5904[3].pattern;
                    spr80->prevAnim = 0xFFFF;
                    spr80->prevVariant |= 0xFF;
                    sprCockpit->anim = sBoss7AnimsCockpit[3].anim;
                    sprCockpit->variant = sBoss7AnimsCockpit[3].pattern;
                    sprCockpit->prevAnim = -1;
                    sprCockpit->prevVariant |= 0xFF;
                    gemerlAnchor->anim = gUnknown_080D592C[3].anim;
                    gemerlAnchor->variant = gUnknown_080D592C[3].pattern;
                    gemerlAnchor->prevAnim = -1;
                    gemerlAnchor->prevVariant = -1;
                }
            } else {
                boss->unk29 = 4;
                spr80->anim = gUnknown_080D5904[boss->unk23].anim;
                spr80->variant = gUnknown_080D5904[boss->unk23].pattern;
                spr80->prevAnim = 0xFFFF;
                spr80->prevVariant |= 0xFF;
                sprCockpit->anim = sBoss7AnimsCockpit[boss->unk23].anim;
                sprCockpit->variant = sBoss7AnimsCockpit[boss->unk23].pattern;
                sprCockpit->prevAnim = -1;
                sprCockpit->prevVariant |= 0xFF;
                gemerlAnchor->anim = gUnknown_080D592C[boss->unk23].anim;
                gemerlAnchor->variant = gUnknown_080D592C[boss->unk23].pattern;
                gemerlAnchor->prevAnim = -1;
                gemerlAnchor->prevVariant = -1;
            }

            if (++boss->unk2A > 0x14U) {
                sub_8077918(boss);
                gCurTask->main = Task_D8_8075324;
            }
        }
    }
    sub_8076328(boss);
}

void Task_D8_8075C40(void)
{
    EggGravity *boss = TASK_DATA(gCurTask);
    s32 var_r2;

    boss->unk30 = (u16)(boss->unk30 + 1);
    sub_8077874(boss, boss->players[0]);
    sub_8077874(boss, boss->players[1]);

    switch (boss->unk2B) {
        case 0: {
            boss->unk26 = 2;
            if (boss->unk23 != 0) {
                boss->unk32 = +0x600;
            } else {
                boss->unk32 = -0x600;
            }
            sub_8077A04(boss->taskStrc100, 1);
            m4aSongNumStart(0x234U);
            boss->unk2B = 0xA;
        } break;

        case 10: {
            var_r2 = 0;
            if (boss->unk23 != 0) {
                boss->unk32 -= 0x40;
                boss->unk3C += boss->unk32;
                if (boss->unk3C < 0) {
                    boss->unk3C = 0;
                    var_r2 = 1;
                }
            } else {
                boss->unk32 += 0x40;
                boss->unk3C += boss->unk32;
                if (boss->unk3C > 0) {
                    boss->unk3C = 0;
                    var_r2 = 1;
                }
            }

            if (var_r2 != 0) {
                boss->unk32 = 0U;
                boss->unk2B = 0x14;
            }
        } break;

        case 20: {
            if (sub_8077174(boss->taskStrc100) != 0) {
                m4aSongNumStart(SE_565);
                sub_8077238(boss->taskStrc100, 1 ^ boss->unk23, boss->qUnk0 + boss->unk14, 0x800);
                sub_8077A14(boss->taskStrc100, 3);
                boss->unk2B = 30;
            }
        } break;

        case 30: {
            if (sub_8077174(boss->taskStrc100) != 0) {
                boss->unk2B = 0;
                gCurTask->main = Task_D8_8075324;
                sub_8077A04(boss->taskStrc100, 0);
            }
        } break;
    }
    sub_8076328(boss);
}

void Task_D8_8075DA4(void)
{
    EggGravity *boss = TASK_DATA(gCurTask);
    s32 temp_r0_2;
    u8 temp_r0;
    Sprite *spr80 = &boss->spr80;
    Sprite *sprCockpit = &boss->sprCockpit;
    Sprite *sprGemerlAnchor = &boss->sprGemerlAnchor;

    boss->unk30 += 1;
    boss->unk26 = 1;
    sub_8077874(boss, boss->players[0]);
    sub_8077874(boss, boss->players[1]);
    if (--boss->unk29 == 0) {
        gCurTask->main = Task_D8_8075324;
        spr80->anim = gUnknown_080D5904[boss->unk23].anim;
        spr80->variant = gUnknown_080D5904[boss->unk23].pattern;
        spr80->prevAnim = 0xFFFF;
        spr80->prevVariant |= 0xFF;
        sprCockpit->anim = sBoss7AnimsCockpit[boss->unk23].anim;
        sprCockpit->variant = sBoss7AnimsCockpit[boss->unk23].pattern;
        sprCockpit->prevAnim = -1;
        sprCockpit->prevVariant |= 0xFF;
        sprGemerlAnchor->anim = gUnknown_080D592C[boss->unk23].anim;
        sprGemerlAnchor->variant = gUnknown_080D592C[boss->unk23].pattern;
        sprGemerlAnchor->prevAnim = -1;
        sprGemerlAnchor->prevVariant |= 0xFF;
        if ((u32)((u32)PseudoRandom32() % 10000) < 3000) {
            boss->unk22 ^= 1;
            boss->qUnk8 = -boss->qUnk8;
        }
    }
    sub_8076328(boss);
}

void Task_D8_8075EE8(void)
{
    EggGravity *boss = TASK_DATA(gCurTask);
    Player *temp_r1;
    Player *temp_r1_2;
    Player *temp_r1_3;
    u16 temp_r0_2;
    u8 var_r2;
    Sprite *spr80 = &boss->spr80;
    Sprite *sprCockpit = &boss->sprCockpit;
    Sprite *sprGemerlAnchor = &boss->sprGemerlAnchor;

    switch (boss->unk2B) { /* irregular */
        case 0x0:
            boss->unk2C = 0xCU;
            boss->unk2B = 0xA;
            var_r2 = 0;
            do {
                temp_r1 = boss->players[var_r2];
                temp_r1->moveState |= 0x08000000;
                var_r2 += 1;
            } while ((u32)var_r2 <= 1U);
            CreateScreenShake(0x800U, 0x40U, 0U, -1U, 0x91U);
            if (boss->unk23 != 0) {
                boss->unk23 = 0;
                spr80->anim = gUnknown_080D5904[2].anim;
                spr80->variant = (u8)gUnknown_080D5904[2].pattern;
                spr80->prevAnim = 0xFFFF;
                spr80->prevVariant = 0xFF;
                sprCockpit->anim = sBoss7AnimsCockpit[2].anim;
                sprCockpit->variant = (u8)sBoss7AnimsCockpit[2].pattern;
                sprCockpit->prevAnim = -1;
                sprCockpit->prevVariant = -1;
                sprGemerlAnchor->anim = gUnknown_080D592C[2].anim;
                sprGemerlAnchor->variant = (u8)gUnknown_080D592C[2].pattern;
                sprGemerlAnchor->prevAnim = -1;
                sprGemerlAnchor->prevVariant = -1;
            }
            break;
        case 0xA:
            if (--boss->unk2C == 0) {
                boss->unk2B = 0x64;
                if (boss->unk23 != 0) {
                    sub_8077954(boss, 9);
                } else {
                    sub_8077954(boss, 6);
                }
            }
            break;
        case 0x64:
            boss->unk2B = 0;
            boss->unk30 = 0xB4;
            m4aSongNumStart(SE_545);
            gCurTask->main = Task_D8_8076050;
            break;
    }
    temp_r1_2 = boss->players[0];
    temp_r1_2->moveState |= 0x08000000;
    temp_r1_3 = boss->players[1];
    temp_r1_3->moveState |= 0x08000000;
    sub_8076328(boss);
}

void Task_D8_8076050(void)
{
    EggGravity *boss = TASK_DATA(gCurTask);
    s16 sp10;
    s16 sp14;
    s16 temp_r5;
    s16 temp_r3_2;
    u16 angle;
    u8 i;

    switch (boss->unk2B) {
        case 0:
            boss->unk32 = -Q(6);
            boss->unk2C = 0;
            boss->unk2B = 0xA;
            break;

        case 10:
            boss->unk32 += 0x40;
            boss->unk44 += boss->unk32;
            boss->unk2C += 1;
            sp10 = I(boss->qUnk0 + boss->unk14);
            sp14 = I(boss->qUnk4 + boss->unk44);

            for (i = 0; i < ARRAY_COUNT(boss->unk34); i++) {
                s32 sinVal, cosVal;

                boss->unk34[i] = (boss->unk34[i] + (((i & 1)) ? -0x40 : +0x40)) % 1024u;
                angle = boss->unk34[i];

                sinVal = ((SIN(angle) * 5) >> 12);
                cosVal = ((COS(angle) * 5) >> 12);
                temp_r5 = sp10 + cosVal;
                temp_r3_2 = sp14 + sinVal;
                if (1 & boss->unk2C) {
                    if (i & 1) {
                        sub_8079758(7U, temp_r5, temp_r3_2, 0x200, angle, 0x14U, 0, boss->vram48);
                    }
                } else {
                    if (!(i & 1)) {
                        sub_8079758(7U, temp_r5, temp_r3_2, 0x200, angle, 0x14U, 0, boss->vram48);
                    }
                }
            }

            if (!(0x3F & boss->unk2C)) {
                m4aSongNumStart(SE_545);
            }
            if (I(boss->unk44) > 0x12C) {
                boss->unk2B = 0xC8;
            }
            break;

        case 200:
            boss->unk2B = 0;
            boss->unk2C = 0U;
            boss->unk30 = 0x78;
            m4aSongNumStart(SE_545);
            gCurTask->main = Task_D8_8076218;
            break;
    }
    sub_8076328(boss);
}

void Task_D8_8076218(void)
{
    EggGravity *boss = TASK_DATA(gCurTask);
    EggGravity100 *strc100 = TASK_DATA(boss->taskStrc100);

    if (boss->unk30 & 2) {
        gDispCnt &= ~DISPCNT_BG0_ON;
    } else {
        gDispCnt |= DISPCNT_BG0_ON;
    }

    if (--boss->unk30 == 0) {
        gDispCnt &= ~DISPCNT_BG0_ON;
        gCamera.maxY = 980;
        strc100->unkB2 = 1;
        boss->unk28 = 1;
        boss->unk30 = 0;
        gCurTask->main = Task_D8_80762B4;
    }
}

void Task_D8_80762B4(void)
{
    s32 sp00[4];
    EggGravity *boss = TASK_DATA(gCurTask);
    Player *player = boss->players[0];

    switch (boss->unk30) {
        case 0: {
            sp00[0] = I(boss->qUnk0 + boss->unk14);
            sp00[1] = 0x3AE;
            sp00[2] = I(boss->qUnk0 + boss->unk14);
            sp00[3] = 0x3B6;
            sub_8078E34(sp00, &EnablePlayerMovement);
            boss->unk30 = 1;
        } break;

        case 1:
            if (!(player->moveState & MOVESTATE_IGNORE_INPUT)) {
                *boss->bossPhase = 0;
                boss->unk30 = 100;
                break;
            }
            break;
    }
}

void sub_8076328(EggGravity *boss)
{
    s32 temp_r0_2;
    s16 temp_r4;
    s8 temp_r0_3;
    s8 var_r1;
    EggGravity100 *strc100 = TASK_DATA(boss->taskStrc100);
    Sprite *s = &boss->sprCockpit;
    s16 temp_r0 = I(boss->qUnk0 + boss->unk14);
    s32 var_r0 = temp_r0 - 0x360;
    if (var_r0 < 0) {
        var_r0 = temp_r0 - 849;
    }
    temp_r0_2 = var_r0 >> 4;
    var_r1 = (u8)temp_r0_2;
    temp_r0_3 = (s8)temp_r0_2;
    if (temp_r0_3 < 0) {
        var_r1 = 0;
    } else if (temp_r0_3 > 0x14) {
        var_r1 = 0x14;
    }
    temp_r4 = I(strc100->qUnkC4.y + strc100->unk4[var_r1]);
    s->x = temp_r0 - gCamera.x;
    s->y = ((temp_r4 + ((s32)boss->unk3C >> 8)) - gCamera.y) + I(boss->unk44);
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
    boss->qUnk4 = (temp_r4 + ((s32)boss->unk3C >> 8)) << 8;

    s = &boss->spr80;
    s->x = temp_r0 - gCamera.x;
    s->y = ((temp_r4 + ((s32)boss->unk3C >> 8)) - gCamera.y) + I(boss->unk44);
    UpdateSpriteAnimation(s);
    DisplaySprite(s);

    s = &boss->sprGemerlAnchor;
    s->x = temp_r0 - gCamera.x;
    s->y = (temp_r4 - gCamera.y) + ((s32)boss->unk44 >> 8);
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void sub_8076420(EggGravity *boss)
{
    Player *p;
    u8 i;
    Sprite *sprGemerlAnchor = &boss->sprGemerlAnchor;
    u8 var_r8 = 0;
    if (boss->lives == 0) {
        return;
    }
    if (!(boss->players[gStageData.playerIndex]->moveState & 0x100)) {
        Player *players;
        s32 x0 = sprGemerlAnchor->x;
        s32 x = (gCamera.x + x0) << 8;
        s32 y0 = sprGemerlAnchor->y;
        s32 y = (gCamera.y + y0) << 8;
        sub_8004D68(x, y);
        players = gPlayers;
        p = &players[gStageData.playerIndex];
        // NOTE(Jace): The cast is necessary to match... but it's a 4-bit unsigned value!?
        if ((((s8)p->charFlags.character == CREAM) || (gPlayers[p->charFlags.partnerIndex].charFlags.character == CREAM))
            && (IsCollidingWithCheese(sprGemerlAnchor) == 1)) {
            var_r8 = 1;
        }

        for (i = 0; i < ARRAY_COUNT(boss->players); i++) {
            Player *p = boss->players[i];
            if ((sub_802C080(p) == 0) && (sprGemerlAnchor->hitboxes[0].index != -1)) {
                if (sub_8020E3C(sprGemerlAnchor, (s32)(boss->qUnk0 + boss->unk14) >> 8, (s32)boss->qUnk4 >> 8, 0, p) == 1) {
                    var_r8 = 1;
                    sub_80044CC(p);
                } else {
                    sub_8020CE0(sprGemerlAnchor, (s32)(boss->qUnk0 + boss->unk14) >> 8, (s32)boss->qUnk4 >> 8, 0, p);
                }
            }
        }

        if (var_r8 == 1) {
            boss->unk27 = 1;
        }
    }
}

void sub_8076550(EggGravity *boss)
{
    EggGravity4C_A *strc4C = TASK_DATA(TaskCreate(Task_4C_A_8076618, sizeof(EggGravity4C_A), 0x2200U, 0U, NULL));
    u8 i;

    strc4C->boss = boss;
    for (i = 0; i < 2; i++) {
        strc4C->unk0[i] = 0;
        strc4C->players[i] = boss->players[i];
        strc4C->unk4[i] = 1;
    }

    for (i = 0; i < ARRAY_COUNT(strc4C->unk8); i++) {
        strc4C->unk8[i].x = gUnknown_080D59EC[i][0];
        strc4C->unk8[i].y = gUnknown_080D59EC[i][1];
    }

    {
        Sprite *s = &strc4C->s;
        s->tiles = boss->vram4C;
        s->anim = ANIM_BOSS_7_TUNNEL;
        s->variant = 0;
        s->oamFlags = 0x200;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->prevVariant = -1;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->hitboxes[0].index = -1;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }
}

void Task_4C_A_8076618(void)
{
    EggGravity4C_A *strc4C = TASK_DATA(gCurTask);
    EggGravity100 *strc100 = TASK_DATA(strc4C->boss->taskStrc100);
    Sprite *s = &strc4C->s;
    u8 pid, i;
    Player *player;
    Player *partner;
    s32 var_r1;
    s32 qDx;
    bool32 enteredTube;

    for (pid = 0; pid < ARRAY_COUNT(strc4C->players); pid++) {
        player = strc4C->players[pid];
        partner = &gPlayers[player->charFlags.partnerIndex];

        if (sub_802C080(player) == 0) {
            switch (strc4C->unk0[pid]) {
                case 0: {
                    if (!(MOVESTATE_IGNORE_INPUT & player->moveState)) {
                        if (I(player->qWorldY) >= 440) {
                            if (I(player->qWorldX) < 1032) {
                                if (I(player->qWorldY) < 584) {
                                    i = 0;
                                } else {
                                    i = 1;
                                }
                            } else {
                                if (I(player->qWorldY) < 584) {
                                    i = 2;
                                } else {
                                    i = 3;
                                }
                            }
                            enteredTube = 0;
                            switch (i) {
                                case 0: {
                                    if ((I(player->qWorldX) <= 864) && (I(player->qWorldY) < 584)) {
                                        player->qWorldX = Q(864);
                                        player->moveState |= MOVESTATE_GRAVITY_SWITCHED;
                                        player->moveState &= ~MOVESTATE_FACING_LEFT;
                                        enteredTube = 1;
                                    }
                                } break;

                                case 1: {
                                    if ((I(player->qWorldX) <= 864) && (I(player->qWorldY) > 584)) {
                                        player->qWorldX = Q(864);
                                        player->moveState &= ~MOVESTATE_GRAVITY_SWITCHED;
                                        player->moveState &= ~MOVESTATE_FACING_LEFT;
                                        enteredTube = 1;
                                    }
                                } break;

                                case 2: {
                                    if ((I(player->qWorldX) >= 1199) && (I(player->qWorldY) < 584)) {
                                        player->qWorldX = Q(1199);
                                        player->moveState |= MOVESTATE_GRAVITY_SWITCHED;
                                        player->moveState |= MOVESTATE_FACING_LEFT;
                                        enteredTube = 1;
                                    }
                                } break;

                                case 3: {
                                    if ((I(player->qWorldX) >= 1199) && (I(player->qWorldY) > 584)) {
                                        player->qWorldX = Q(1199);
                                        player->moveState &= ~MOVESTATE_GRAVITY_SWITCHED;
                                        player->moveState |= MOVESTATE_FACING_LEFT;
                                        enteredTube = 1;
                                    }
                                } break;
                            }

                            if (enteredTube != 0) {
                                strc4C->unk0[pid] = 0xA;
                                strc4C->unk4[pid] = 4;
                                player->qSpeedAirY = 0;
                                qDx = Q(584) - player->qWorldY;
                                if (ABS(qDx) >= Q(32)) {
                                    if (qDx < 0) {
                                        qDx = -Q(32);
                                    } else {
                                        qDx = +Q(32);
                                    }
                                }
                                player->qWorldY = qDx + Q(584);
                                player->moveState |= MOVESTATE_IGNORE_INPUT;

                                if (i < 2) {
                                    strc100->unkB4 = 20;
                                    player->qSpeedAirX = +Q(2);
                                    player->qSpeedGround = +Q(2);
                                    player->qWorldX = Q(player->spriteOffsetX + 864);
                                } else {
                                    strc100->unkB4 = 0;
                                    player->qSpeedAirX = -Q(2);
                                    player->qSpeedGround = -Q(2);
                                    player->qWorldX = Q(1199 - player->spriteOffsetX);
                                }

                                if (player->moveState & MOVESTATE_TAG_ACTION_CHARGED) {
                                    sub_8016F28(player);
                                    player->charFlags.unk2C_04 = 0;
                                    Player_8005528(player);
                                    partner->qSpeedAirX = player->qSpeedAirX;
                                    partner->qSpeedAirY = player->qSpeedAirY;
                                    partner->qSpeedGround = player->qSpeedGround;
                                    partner->qWorldX = player->qWorldX;
                                    partner->qWorldY = player->qWorldY;
                                    partner->moveState &= ~MOVESTATE_GRAVITY_SWITCHED;
                                    partner->moveState |= (player->moveState & MOVESTATE_GRAVITY_SWITCHED);
                                    Player_8005528(partner);
                                }
                                if (player->charFlags.anim2 == 514 || player->charFlags.anim2 == 515) {
                                    player->unk148.arr_u8[0] = 0x80 - player->unk148.arr_u8[0];
                                    player->qSpeedAirX *= -1;
                                    Player_8005528(player);
                                }
                            }
                        }
                    }
                } break;

                case 10: {
                    strc4C->unk4[pid] -= 1;
                    if (strc4C->unk4[pid] == 0) {
                        strc4C->unk0[pid] = 0;
                        if (strc4C->boss->lives != 0) {
                            player->moveState &= ~MOVESTATE_IGNORE_INPUT;
                        } else if (strc4C->boss->unk28 != 0) {
                            player->moveState &= ~MOVESTATE_GRAVITY_SWITCHED;
                            player->moveState &= ~MOVESTATE_IGNORE_INPUT;
                        }
                    }
                } break;
            }

            strc4C->boss->unk2E[pid] = strc4C->unk0[pid];
        }
    }
    player = strc4C->players[0];

    if ((I(player->qWorldY) > 900) && !(player->moveState & MOVESTATE_DEAD)) {
        TaskDestroy(gCurTask);
    }
    for (i = 0; i < ARRAY_COUNT(strc4C->unk8); i++) {
        s->x = strc4C->unk8[i].x - gCamera.x;
        s->y = strc4C->unk8[i].y - gCamera.y;
        DisplaySprite(s);
    }
}

void sub_80769C4(u8 *param0, s16 param1)
{
    EggGravity *boss = TASK_DATA(gStageData.taskBoss);
    u16 temp_r4 = param0[2] & 0x7F;
    u16 val = (param0[3] | (param0[4] << 8));

    switch (temp_r4) {
        case 1:
            boss->lives = 0;
            if (boss->unkD4 == 0) {
                boss->unk14 = (s32)Q(val);
                boss->unk2B = 0;
                boss->unk2C = 1;
                boss->unkD4 = 1U;
                gStageData.taskBoss->main = Task_D8_8075EE8;
            }
            break;
        case 3:
        case 4: {
            if (boss->unk26 == 0) {
                boss->unk27 = 1;
            }
        } break;
    }
}

Task *sub_8076A54(EggGravity *boss)
{
    Task *t = TaskCreate(Task_100_8076B58, sizeof(EggGravity100), 0x2200U, 0U, TaskDestructor_100_80779EC);
    EggGravity100 *strc100 = TASK_DATA(t);
    Sprite *sprCC;
    s32 qX, qY;
#ifndef NON_MATCHING
    register Vec2_32 *pos asm("r2");
#else
    Vec2_32 *pos;
#endif
    u8 i;

    strc100->bossFC = boss;
    pos = &strc100->qUnkC4;
    qX = boss->qUnk0;
    qY = boss->qUnk4;
    pos->x = qX;
    pos->y = qY;
    strc100->boss = NULL;

    for (i = 0; i < ARRAY_COUNT(strc100->unk4); i++) {
        strc100->unk4[i] = 0;
        strc100->unk58[i] = 0;
    }

    strc100->players[0] = boss->players[0];
    strc100->players[1] = boss->players[1];
    strc100->unkAC = 0;
    strc100->unkB0 = 0;
    strc100->unkB1 = 0;
    strc100->unkB2 = 0;
    strc100->unkB3 = 0;
    strc100->unkB4 = -1;
    strc100->unkB5 = 0;
    strc100->unkB6 = 0;
    strc100->unkB7 = 0;
    strc100->unkC0 = 0;
    strc100->unkB8 = 0;
    strc100->unkBC = 0;

    sprCC = &strc100->sprCC;
    sprCC->tiles = VramMalloc(4U);
    sprCC->anim = 0x4EA;
    sprCC->variant = 0;
    sprCC->oamFlags = 0x5C0;
    sprCC->animCursor = 0;
    sprCC->qAnimDelay = 0;
    sprCC->prevVariant = -1;
    sprCC->animSpeed = 0x10;
    sprCC->palId = 0;
    sprCC->hitboxes[0].index = -1;
    sprCC->frameFlags = 0x1000;
    UpdateSpriteAnimation(sprCC);

    return t;
}

void Task_100_8076B58(void)
{
    EggGravity100 *strc100 = TASK_DATA(gCurTask);
    Sprite *sp0;
    Player *temp_r0_2;
    Player *player;
    Player *partner;
    Player *temp_r4;
    Player *temp_r5;
    s32 temp_r1;
    s32 temp_r1_5;
    s32 var_r0;
    s32 var_r2;
    u8 i;
    u8 var_r5_2;
    u8 var_sb;

    sp0 = &strc100->sprCC;
    strc100->unkB3 = (strc100->unkB3 + 1) & 3;
    if ((strc100->bossFC->lives != 0) && (strc100->unkB1 != 0)) {
        for (var_sb = 0; var_sb < 2; var_sb++) {
            temp_r5 = strc100->players[var_sb];
            if (sub_802C080(temp_r5) == 0) {
                var_r2 = 0;
                if ((I(temp_r5->qWorldY) > 0x2C8)) {
                    var_r2 = 1;
                } else if (I(temp_r5->qWorldY) < 0x1C8) {
                    var_r2 = 1;
                }
                if (((s32)temp_r5->framesInvulnerable > 0) || ((s32)temp_r5->framesInvincible > 0)) {
                    var_r2 = 0;
                }
                if (var_r2 != 0) {
                    player = strc100->players[0];
                    if (player->moveState & 0xC00000) {
                        sub_8016F28(player);
                        strc100->players[0]->charFlags.unk2C_04 = 0;
                    }
                    partner = strc100->players[1];
                    if (partner->moveState & 0xC00000) {
                        sub_8016F28(partner);
                        temp_r0_2 = strc100->players[1];
                        temp_r0_2->charFlags.unk2C_04 = 0;
                        Player_8005380(strc100->players[1]);
                    }
                    Call__Player_8014550(temp_r5);
                }
            }
        }
    }
    if (strc100->unkB2 != 0) {
        for (i = 0; i < 2; i++) {
            temp_r4 = strc100->players[i];
            temp_r4->moveState &= 0xFFFEFFFF;
            ResolvePlayerSpriteCollision(sp0, temp_r4);
            sub_8016F28(temp_r4);
            SetPlayerCallback(temp_r4, Player_800E67C);
            temp_r4->charFlags.unk2C_04 = 0;
            temp_r4->moveState &= 0xFFFFFEFF;
            temp_r1_5 = temp_r4->qWorldX;
            if (temp_r1_5 > 0x369FF) {
                var_r0 = temp_r1_5;
                if (var_r0 > 0x4A500) {
                    var_r0 = 0x4A500;
                }
            } else {
                var_r0 = 0x36A00;
            }
            temp_r4->qWorldX = var_r0;
            temp_r4->qSpeedAirX = 0;
        }

        m4aSongNumStart(SE_566);
        TaskDestroy(gCurTask);
        return;
    } else {
        sub_8076DD4(strc100);
        sub_80772F0(strc100, gStageData.playerIndex);
        if (gStageData.gameMode != 5) {
            temp_r5 = &gPlayers[gStageData.playerIndex];
            sub_80772F0(strc100, temp_r5->charFlags.partnerIndex);
        }
        strc100->unk4[0] = 0;
        strc100->unk4[0x14] = 0;
        if (!(2 & strc100->unkB3) || (strc100->bossFC->lives != 0)) {
            Sprite *s = &strc100->sprCC;
            s16 var_r4 = (((s32)strc100->qUnkC4.x >> 8) - gCamera.x) - 160;
            for (i = 0; i < ARRAY_COUNT(strc100->unk4); i++, var_r4 += 16) {
                s->x = var_r4;
                s->y = I(strc100->qUnkC4.y + strc100->unk4[i]) - gCamera.y;
                DisplaySprite(s);
            }
        }
    }
}

// (99.21%) https://decomp.me/scratch/CqvJ2
NONMATCH("asm/non_matching/game/bosses/boss_7__sub_8076DD4.inc", void sub_8076DD4(EggGravity100 *strc100))
{
    s32 sp0;
    s32 temp_r5_2;
    s32 var_r0;
    s32 var_r5;
    s32 var_r6;
    u16 temp_r3;
    u16 var_r4;
    u8 var_r2;
    u8 var_r3;

    for (var_r2 = 0; var_r2 < 21; var_r2++) {
        if (strc100->unk58[var_r2] != 0) {
            sp0 = var_r2;
            break;
        }
    }

    if ((u8)(var_r2 - 1) > 18) {
        for (var_r3 = 0; var_r3 < 21; var_r3++) {
            strc100->unk4[var_r3] = 0;
        }
        return;
    }

    strc100->unkBC = strc100->unk4[sp0];
    if (strc100->unkB5 != 0) {
        var_r3 = 1;
        var_r5 = 0;
        while (var_r3 != 0) {
            if (strc100->unkC0 < 0) {
                if (var_r5 < strc100->unk4[strc100->unkB5]) {
                    strc100->unk58[strc100->unkB5] += strc100->unkC0;
                    var_r5 += strc100->unk58[strc100->unkB5];
                } else {
                    break;
                }
            } else {
                if (var_r5 > strc100->unk4[strc100->unkB5]) {
                    strc100->unk58[strc100->unkB5] += strc100->unkC0;
                    var_r5 += strc100->unk58[strc100->unkB5];
                } else {
                    break;
                }
            }
        }
        strc100->unkB5 = 0;
    }

    strc100->unk58[sp0] += strc100->unkC0;
    strc100->unk4[sp0] += strc100->unk58[sp0];
    if (strc100->unkB7 != 0) {
        if (strc100->unkC0 < 0) {
            if (strc100->unk58[strc100->unkB7] < 0) {
                strc100->unkB7 = 0;
            }
        } else if (strc100->unk58[strc100->unkB7] > 0) {
            strc100->unkB7 = 0;
        }
    }

    if (strc100->unkB8 != 0) {
        if (strc100->unkBC < 0) {
            if (strc100->unk4[sp0] >= 0) {
                strc100->unk58[sp0] = (s32)(strc100->unk58[sp0] + ((u32)strc100->unk58[sp0] >> 0x1F)) >> 1;
                strc100->unkC0 = -strc100->unkC0;
                strc100->unkB8 -= 1;
            }
        } else if ((strc100->unkBC != 0) && (strc100->unk4[sp0] < 0)) {
            strc100->unk58[sp0] = (s32)(strc100->unk58[sp0] + ((u32)strc100->unk58[sp0] >> 0x1F)) >> 1;
            strc100->unkC0 = -strc100->unkC0;
            strc100->unkB8 -= 1;
        }
    } else {
        if (strc100->unkBC < 0) {
            if (strc100->unk4[sp0] >= 0) {
                strc100->unk58[sp0] = 0;
                strc100->unk4[sp0] = 0;
            }
        } else if (strc100->unkBC != 0) {
            if (strc100->unk4[sp0] < 0) {
                strc100->unk58[sp0] = 0;
                strc100->unk4[sp0] = 0;
            }
        }
    }

    strc100->unkBC -= strc100->unk4[sp0];
    if (strc100->unkC0 < 0) {
#ifndef NON_MATCHING
        register s32 r3 asm("r3") = sp0;
#else
        s32 r3 = sp0;
#endif
        temp_r3 = 0x200 / r3;
        temp_r5_2 = (s32)(strc100->unk4[sp0] + ((u32)strc100->unk4[sp0] >> 0x1F)) >> 1;
        var_r6 = ABS(temp_r5_2);
        var_r2 = (u8)(sp0 - 1);
        var_r4 = temp_r3;
        while (var_r2 != 0) {
            var_r0 = (var_r6 * COS(var_r4)) / 0x4000;
            strc100->unk4[var_r2] = temp_r5_2 + var_r0;
            var_r2 -= 1;
            var_r4 += temp_r3;
        }
        temp_r3 = (u8)(0x14 - sp0);
        temp_r3 = (u16)(0x200 / temp_r3);
        var_r2 = (u8)(sp0 + 1);
        var_r4 = temp_r3;
        while (var_r2 < 0x14) {
            var_r0 = ((var_r6 * COS(var_r4)) / 0x4000);
            strc100->unk4[var_r2] = temp_r5_2 + var_r0;
            var_r2 += 1;
            var_r4 += temp_r3;
        }
    } else {
#ifndef NON_MATCHING
        register s32 r3 asm("r3") = sp0;
#else
        s32 r3 = sp0;
#endif
        temp_r3 = 0x200 / r3;
        temp_r5_2 = (s32)(strc100->unk4[sp0] + ((u32)strc100->unk4[sp0] >> 0x1F)) >> 1;
        var_r6 = ABS(temp_r5_2);
        var_r2 = (u8)(sp0 - 1);
        var_r4 = (SIN_PERIOD / 2) - temp_r3;
        while (var_r2 != 0) {
            var_r0 = (COS(var_r4) * var_r6) / 0x4000;
            strc100->unk4[var_r2] = temp_r5_2 + var_r0;
            var_r2--;
            var_r4 -= temp_r3;
        }
        temp_r3 = (u8)(0x14 - sp0);
        temp_r3 = (u16)(0x200 / temp_r3);
        var_r2 = (u8)(sp0 + 1);
        var_r4 = ((SIN_PERIOD / 2) - temp_r3);
        while (var_r2 < 0x14) {
            var_r0 = (COS(var_r4) * var_r6) / 0x4000;
            strc100->unk4[var_r2] = temp_r5_2 + (var_r0);
            var_r2 += 1;
            var_r4 -= temp_r3;
        }
    }
}
END_NONMATCH

u8 sub_8077174(Task *task_EggGravity100)
{
    s32 *temp_r2_2;
    s32 *var_r1_2;
    s32 temp_r0;
    s32 temp_r1_2;
    s32 temp_r2;
    s32 temp_r6;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r1;
    u8 var_r3;
    u8 var_r3_2;
    u8 var_r4;
    u8 var_r4_2;
    u8 var_r5;
    u8 var_sb;
    EggGravity100 *strc100;

    var_sb = 0;
    strc100 = TASK_DATA(task_EggGravity100);
    var_r3 = 0;
    var_r4 = 0;
    var_r5 = 0;

    do {
        temp_r2 = var_r3 * 4;
        if (strc100->unk4[var_r3] == 0) {
            var_r4 += 1;
        }
        if (strc100->unk58[var_r3] == 0) {
            var_r5 += 1;
        }
        var_r3 += 1;
    } while ((u32)var_r3 <= 0x14U);
    if (var_r4 == 0x15) {
        strc100->unkB7 = 0;
        var_sb = 1;
    } else if (var_r5 == 0x15) {
        var_r1 = 0;
        var_r3_2 = 0;
        var_r4_2 = 0;
        do {
            if (ABS(strc100->unk4[var_r3_2]) > var_r1) {
                var_r1 = ABS(strc100->unk4[var_r3_2]);
                var_r4_2 = var_r3_2;
            }
            var_r3_2 += 1;
        } while ((u32)var_r3_2 <= 0x14U);
        temp_r1_2 = var_r4_2 * 4;
        if (strc100->unk4[var_r4_2] < 0) {
            strc100->unk58[var_r4_2] = +0x20;
        } else {
            strc100->unk58[var_r4_2] = -0x20;
        }
    }
    return var_sb;
}

void sub_8077238(Task *task_EggGravity100, u8 arg1, s32 arg2, s32 arg3)
{
    s32 temp_r0;
    s32 temp_r2;
    s32 var_r0;
    s8 temp_r0_2;
    s8 temp_r1_2;
    s8 var_r1;
    u8 temp_r0_3;
    s8 var_r4;
    EggGravity100 *strc100 = TASK_DATA(task_EggGravity100);

    temp_r2 = arg2 >> 8;
    var_r0 = temp_r2 - 864;
    if (var_r0 < 0) {
        var_r0 = temp_r2 - 849;
    }
    var_r0 >>= 4;
    var_r4 = var_r0;
    temp_r0_2 = var_r0;
    if (temp_r0_2 < 0) {
        var_r4 = 0;
    } else if (temp_r0_2 > 0x14) {
        var_r4 = 0x14;
    }

    for (var_r1 = 0; var_r1 < 21; var_r1++) {
        if (var_r1 != var_r4) {
            strc100->unk58[var_r1] = 0;
        }
    }

    if (arg1 != 0) {
        strc100->unk58[var_r4] = +arg3 + 1;
        strc100->unkC0 = -0x80;
    } else {
        strc100->unk58[var_r4] = -arg3 + 1;
        strc100->unkC0 = +0x80;
    }

    strc100->unkB7 = var_r4;
}

// (72.91%) https://decomp.me/scratch/bXmet
NONMATCH("asm/non_matching/game/bosses/boss_7__sub_80772F0.inc", void sub_80772F0(EggGravity100 *strc100, u8 pid))
{
    s32 sp4;
    s32 sp8;
    s32 spC;
    s32 sp10;
    s32 sp14;
    Player *temp_r4;
    Sprite *temp_r0;
    s16 temp_r3_2;
    s16 var_r1;
    s32 *temp_r0_11;
    s32 *temp_r2;
    s32 *temp_r2_4;
    s32 *temp_r2_6;
    s32 *temp_r3_3;
    s32 *temp_r3_4;
    s32 *var_r3_2;
    s32 temp_r0_10;
    s32 temp_r0_2;
    s32 temp_r1_2;
    s32 temp_r1_7;
    s32 temp_r3;
    s32 temp_r7;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r0_3;
    s32 var_r0_5;
    s32 var_r0_6;
    s32 var_r1_3;
    s32 var_r1_4;
    s32 var_r2;
    s8 temp_r0_3;
    s8 temp_r0_8;
    s8 temp_r1_4;
    s8 temp_r1_5;
    s8 temp_r1_6;
    s8 temp_r2_3;
    s8 temp_r2_5;
    s8 temp_r5;
    s8 var_r1_2;
    s8 var_r1_5;
    u32 temp_r0_4;
    u32 temp_r0_5;
    u32 temp_r1_3;
    u32 temp_r2_2;
    u32 var_r3;
    u8 *temp_r0_7;
    u8 *var_r7;
    u8 temp_r0_6;
    u8 temp_r0_9;
    u8 temp_r1;
    u8 var_r0_4;

    temp_r1 = pid;
    sp4 = (s32)temp_r1;
    temp_r0 = &strc100->sprCC;
    temp_r4 = strc100->players[temp_r1];
    spC = 0;
    sp10 = 0;
    temp_r1_2 = (s32)temp_r4->qWorldX >> 8;
    var_r0 = temp_r1_2 + 0xFFFFFCA0;
    if (var_r0 < 0) {
        var_r0 = temp_r1_2 + 0xFFFFFCAF;
    }
    temp_r0_2 = var_r0 >> 4;
    sp8 = (s32)(u8)temp_r0_2;
    temp_r0_3 = (s8)temp_r0_2;
    if ((s32)temp_r0_3 < 0) {
        sp8 = 0;
    } else if ((s32)temp_r0_3 > 0x14) {
        sp8 = 0x14;
    }
    temp_r3 = sp8 << 0x18;
    temp_r5 = (s8)sp8;
    temp_r7 = (((s32)strc100->qUnkC4.x >> 8) - 0xA0) + (temp_r5 * 0x10);
    temp_r2 = strc100->unk4;
    sp14 = (s32)(strc100->qUnkC4.y + temp_r2[temp_r5]) >> 8;
    temp_r1_3 = temp_r4->moveState;
    if ((0x20 & temp_r1_3) && (temp_r4->sprColliding == temp_r0) && (strc100->unkB4 == temp_r5)) {
        if (temp_r1_3 & 0x10000) {
            var_r0_2 = temp_r4->qWorldY + 0xFFFFFC00;
        } else {
            var_r0_2 = temp_r4->qWorldY + 0x400;
        }
        temp_r4->qWorldY = var_r0_2 - strc100->unkBC;
    }
    var_r1 = temp_r4->qSpeedAirY;
    if ((s32)var_r1 < 0) {
        var_r1 = 0 - var_r1;
    }
    if ((s32)var_r1 > 0x300) {
        spC = 1;
    }
    temp_r0_4 = sub_802C0D4(temp_r4);
    if (temp_r0_4 == 0) {
        temp_r0_5 = sub_8020950(temp_r0, temp_r7, sp14, temp_r4, (u8)temp_r0_4);
        temp_r3_2 = temp_r0_5 & 0x10000;
        if (temp_r3_2 != 0) {
            temp_r4->qWorldY += (s16)(temp_r0_5 << 8);
        } else if (0x20000 & temp_r0_5) {
            temp_r4->qWorldY = (temp_r4->qWorldY + 0xFFFFFF00) - (s16)(temp_r0_5 << 8);
            temp_r4->qSpeedAirY = temp_r3_2;
        }
    }
    if (sp4 != gStageData.playerIndex) {
        return;
    }
    if (strc100->unkB6 != 0) {
        if ((s8)strc100->unkB7 != 0) {
            var_r3 = 0;
            temp_r2_2 = temp_r4->moveState;
            if ((0x20 & temp_r2_2) && (temp_r4->sprColliding == temp_r0)) {
                if (strc100->bossFC->unk23 == 0) {
                    var_r3 = (u32)(0 - (temp_r2_2 & 0x10000)) >> 0x1F;
                } else if (!(temp_r2_2 & 0x10000)) {
                    var_r3 = 1;
                }
                temp_r2_3 = (s8)strc100->unkB7;
                temp_r1_4 = (s8)sp8;
                if (((s32)(temp_r2_3 - 3) <= (s32)temp_r1_4) && ((s32)(temp_r2_3 + 3) >= (s32)temp_r1_4) && (var_r3 != 0)
                    && (strc100->bossFC->lives != 0)) {
                    SetPlayerCallback(temp_r4, Player_80068EC);
                    temp_r4->qSpeedAirY = -0x400;
                }
            }
        }
    } else if ((temp_r4->moveState & 0x20) && (temp_r4->sprColliding == temp_r0)) {
        sp10 = 1;
    }
    if (sp10 == 0) {
        temp_r0_7 = &strc100->unkB4;
        temp_r2_5 = strc100->unkB4;
        var_r7 = temp_r0_7;
        if (temp_r2_5 == (s8)sp8) {
            if ((temp_r2_5 != 0) && (temp_r2_5 != 0x14)) {
                var_r0_5 = strc100->unk58[temp_r2_5];
                if (var_r0_5 < 0) {
                    var_r0_5 = 0 - var_r0_5;
                }
                if (var_r0_5 > 0x80) {

                } else {
                    var_r1_3 = ABS(temp_r2[temp_r2_5]);
                    if (var_r1_3 <= 0xE00) {
                        if (temp_r2[temp_r2_5] != 0) {
                            var_r0_6 = 0 - strc100->unkC0;
                            strc100->unk58[temp_r2_5] = var_r0_6;
                        } else if (temp_r4->moveState & 0x10000) {
                            strc100->unk58[temp_r2_5] = -0x400;
                            strc100->unkC0 = 0x80;
                        } else {
                            strc100->unk58[temp_r2_5] = 0x400;
                            strc100->unkC0 = -0x80;
                        }
                    }
                }
            }
        } else {
            if (temp_r2_5 != -1) {
                var_r1_4 = temp_r2[strc100->unkB4];
                if (var_r1_4 < 0) {
                    var_r1_4 = 0 - var_r1_4;
                }
                if (var_r1_4 > 0xE00) {
                    spC = 0;
                } else {
                    spC = 1;
                }
            }

            if (spC != 0) {
                if ((sp8 != 0) && (sp8 != 0x14)) {
                    for (var_r1_5 = 0; var_r1_5 < 21; var_r1_5++) {
                        if (var_r1_5 != sp8) {
                            strc100->unk58[temp_r1_6] = 0;
                        }
                    }
                    if (spC == 0) {
                        var_r2 = ABS(strc100->unk4[sp8]);
                        if (var_r2 >= 0xE00) {
                            strc100->unk58[sp8] = gUnknown_080D5998[sp8] + 1;
                        } else {
                            strc100->unk58[sp8] = 0x400;
                        }
                    } else {
                        strc100->unk58[sp8] = gUnknown_080D5998[sp8] + 1;
                    }
                    strc100->unkB5 = 0; // subroutine_arg0.unk8;
                    if (temp_r4->moveState & 0x10000) {
                        temp_r0_11 = strc100->unk58 + ((sp8 << 0x18) >> 0x16);
                        *temp_r0_11 = 0 - *temp_r0_11;
                        strc100->unkC0 = 0x80;
                    } else {
                        strc100->unkC0 = -0x80;
                    }
                }
            }
        }
        var_r0_4 = 0; // subroutine_arg0.unk8;

    } else {
        if ((strc100->unkB4 != -1) && (temp_r2[strc100->unkB4] != 0)) {
            for (var_r1_2 = 0; var_r1_2 < 21; var_r1_2++) {
                if (var_r1_2 != strc100->unkB4) {
                    strc100->unk58[var_r1_2] = 0;
                }
            }
            if (strc100->unk58[strc100->unkB4] == 0) {
                if (temp_r4->moveState & 0x10000) {
                    strc100->unk58[strc100->unkB4] = -0x20;
                } else {
                    strc100->unk58[strc100->unkB4] = +0x20;
                }
            }
        }
        var_r0_4 = 0xFF;
    }
    strc100->unkB4 = var_r0_4;
}
END_NONMATCH

void Task_D8_EggGravityInit(void)
{
    EggGravity *boss = TASK_DATA(gCurTask);

    if (*boss->bossPhase == 3) {
        TaskDestroy(gCurTask);
        return;
    }
    if ((sub_8079FFC() << 0x18) != 0) {
        gCurTask->main = Task_D8_8077718;
    } else {
        gCurTask->main = Task_D8_8077764;
    }

    sub_8076328(boss);
}

void Task_D8_8077718(void)
{
    EggGravity *boss = TASK_DATA(gCurTask);
    if (*boss->bossPhase == 3) {
        TaskDestroy(gCurTask);
        return;
    }
    sub_8076328(boss);
    if ((*boss->bossPhase == 2) && ((sub_807A074() << 0x18) != 0)) {
        gCurTask->main = Task_D8_8077764;
    }
}

void Task_D8_8077764(void)
{
    EggGravity *boss = TASK_DATA(gCurTask);
    if (*boss->bossPhase == 3) {
        TaskDestroy(gCurTask);
        return;
    }
    sub_8076328(boss);
    if (*boss->bossPhase == 2) {
        boss->unk30 = 0;
        gCurTask->main = Task_D8_8075064;
    }
}

void Task_D8_80777AC(void)
{
    EggGravity *boss = TASK_DATA(gCurTask);
    s16 pid;

    if (sub_807A074() != 0) {
        for (pid = 0; pid < NUM_SINGLE_PLAYER_CHARS; pid++) {
            Player *p = &gPlayers[pid];
            if (I(p->qWorldY) < 450) {
                return;
            }
        }

        sub_80299D4(MUS_VS__7_BOSS);
        gCurTask->main = Task_D8_8075204;
    }

    sub_8076328(boss);
}

void sub_8077818(void) { }

void sub_807781C(void) { }

void sub_8077820(void)
{
    EggGravity *boss = TASK_DATA(gCurTask);

    boss->players[0]->moveState |= 0x08000000;
    boss->players[1]->moveState |= 0x08000000;
    sub_8076328(boss);
}

void TaskDestructor_EggGravity(Task *t)
{
    EggGravity *boss = TASK_DATA(t);

    VramFree(boss->vram48);
    VramFree(boss->vram4C);
    VramFree(boss->sprCockpit.tiles);
}

void sub_8077874(EggGravity *boss, Player *p)
{
    Sprite *s = &boss->sprCockpit;

    if ((sub_802C080(p) == 0) && (p->charFlags.someIndex == 1 || p->charFlags.someIndex == 2 || p->charFlags.someIndex == 4)
        && (boss->lives != 0)) {
        sub_8020CE0(s, I(boss->qUnk0 + boss->unk14), I(boss->qUnk4), 0, p);
    }
}

void sub_80778C8(void) { }

void sub_80778CC(void) { }

void sub_80778D0(EggGravity *boss)
{
    s32 temp_r0;
    s32 temp_r0_2;
    u8 var_r0;

    if (boss->unk22 != 0) {
        boss->unk14 += boss->qUnk8;
        if (boss->unk14 < -Q(140)) {
            boss->unk22 = 0;
            boss->qUnk8 = -boss->qUnk8;
        }
    } else {
        boss->unk14 += boss->qUnk8;
        if (boss->unk14 > +Q(140)) {
            boss->unk22 = 1;
            boss->qUnk8 = -boss->qUnk8;
        }
    }
    boss->unk18 = 0;
}

void sub_8077918(EggGravity *arg0)
{
    if (arg0->unk22 != 0) {
        arg0->qUnk8 = -gUnknown_080D5954[arg0->lives];
    } else {
        arg0->qUnk8 = +gUnknown_080D5954[arg0->lives];
    }
}

void sub_8077954(EggGravity *boss, u8 arg1)
{
    Sprite *s = &boss->spr80;
    s->anim = gUnknown_080D5904[arg1].anim;
    s->variant = gUnknown_080D5904[arg1].pattern;
    s->prevAnim = -1;
    s->prevVariant = -1;
}

void sub_8077978(void) { }

void sub_807797C(void) { }

void sub_8077980(void) { }

void sub_8077984(EggGravity100 *strc100)
{
    Sprite *s = &strc100->sprCC;
    s16 var_r4 = (((s32)strc100->qUnkC4.x >> 8) - gCamera.x) - 0xA0;
    u8 var_r5;
    for (var_r5 = 0; var_r5 < 21; var_r5++, var_r4 += 0x10) {
        s32 *ptr = &strc100->qUnkC4.y;
        s32 *ptr2;
        s32 *ptr3;
        s32 y;
        s->x = var_r4;
        y = *ptr + strc100->unk4[var_r5];
        s->y = I(y) - gCamera.y;
        DisplaySprite(s);
    }
}

void TaskDestructor_100_80779EC(Task *t)
{
    EggGravity100 *strc100 = TASK_DATA(t);
    VramFree(strc100->sprCC.tiles);
}

void sub_8077A04(Task *t, s8 arg1)
{
    EggGravity100 *strc100 = TASK_DATA(t);
    strc100->unkB6 = arg1;
}

void sub_8077A14(Task *t, s8 arg1)
{
    EggGravity100 *strc100 = TASK_DATA(t);
    strc100->unkB8 = arg1;
}

void sub_8077A24(void) { }

void sub_8077A28(EggGravity *boss)
{
    boss->unk2B = 0;
    boss->unk2C = 1;
    boss->unkD4 = 1;
}

void sub_8077A3C(Something *arg0, s16 *arg1, s16 *arg2, u8 *vram, u8 *arg4)
{
    Sprite *sp10;
    u8 *sp14;
    u8 *sp18;
    Sprite *s;
    TileInfo2 *temp_r7;
    s32 *temp_r1;
    s32 *temp_r1_2;
    s32 temp_r0_2;
    s32 temp_r0_4;
    s32 temp_r0_6;
    u32 temp_r2;
    s8 temp_r5;
    s8 dir = 1;
    u8 *temp_r4;
    u8 temp_r0_3;
    u8 temp_r0_7;
    u32 rand;
    u8 sp4 = 1;
    EggGravity84 *strc84 = TASK_DATA(TaskCreate(Task_84_8077C08, sizeof(EggGravity84), 0x2100U, 0U, TaskDestructor_8078A64));
    strc84->unk20 = arg0;
    if (arg0 != NULL) {
        Something *sth = sub_807A3D8(&arg0, 1, 0x4C0, 0, &sp4);
        strc84->unk8 = &sth->spr14->x;
        strc84->unkC = &sth->spr14->y;
    } else {
        strc84->unk8 = arg1;
        strc84->unkC = arg2;
    }

    if ((((u32)PseudoRandom32() >> 8) & 0x7F) < 60) {
        dir = -1;
    } else {
        dir = +1;
    }

    for (sp4 = 0; sp4 < 2; sp4++) {
        strc84->unk10[sp4] = (((u32)PseudoRandom32() >> 8) & 0x1F) * dir;
        strc84->unk18[sp4] = (((u32)PseudoRandom32() >> 8) & 0x1F) * dir;
        strc84->unk10[sp4] <<= 8;
        strc84->unk18[sp4] <<= 8;
    }

    strc84->unk0 = arg4;
    temp_r0_6 = ((u32)PseudoRandom32() >> 8) % ARRAY_COUNT(gUnknown_080D59FC);
    for (sp4 = 0; sp4 < 2; sp4++) {
        if (sp4 != 0) {
            s = (Sprite *)&strc84->spr24;
        } else {
            s = (Sprite *)&strc84->spr54;
        }
        s->tiles = vram;
        vram += gUnknown_080D59FC[temp_r0_6].numTiles << 5;
        s->anim = gUnknown_080D59FC[temp_r0_6].anim;
        s->variant = gUnknown_080D59FC[temp_r0_6].variant;
        s->prevVariant = 0xFF;
        s->x = 0;
        s->y = 0;
        s->oamFlags = 0x480;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0x1000;
        s->hitboxes[0].index = -1;
        UpdateSpriteAnimation(s);
        strc84->unk4[sp4] = 1;
    }
}

// (80.28%) https://decomp.me/scratch/DCy2M
NONMATCH("asm/non_matching/game/bosses/boss_7__Task_84_8077C08.inc", void Task_84_8077C08(void))
{
#ifndef NON_MATCHING
    register s32 var_r4 asm("r4");
    register s32 var_r5 asm("r5");
#else
    s32 var_r4;
    s32 var_r5;
#endif
    s32 temp_r6;
    u8 *temp_r1;
    u8 temp_r0_2;
    u8 temp_r0_3;
    u8 sp4 = 1;
    u8 sp8 = 0;
    EggGravity84 *strc84 = TASK_DATA(gCurTask);
    if (strc84->unk20 != NULL) {
        Sprite2 *s = sub_807A3D8(&strc84->unk20, 1U, 0x4C0U, 0U, &sp4)->spr14;
        var_r4 = s->x;
        var_r5 = s->y + 32;
    } else {
        var_r4 = (*(s32 *)strc84->unk8);
        var_r5 = (*(s32 *)strc84->unkC);
        var_r4 >>= 8;
        var_r5 >>= 8;
    }

    for (sp4 = 0; sp4 < ARRAY_COUNT(strc84->unk4); sp4++) {
        Sprite2 *s = (sp4 != 0) ? &strc84->spr24 : &strc84->spr54;
        if (strc84->unk4[sp4] != 0) {
            PseudoRandom32();
            s->x = var_r4 + I(strc84->unk10[sp4]);
            s->y = var_r5 + I(strc84->unk18[sp4]);
            temp_r6 = UpdateSpriteAnimation((Sprite *)s);
            DisplaySprite((Sprite *)s);
            if (temp_r6 == ACMD_RESULT__ENDED) {
                sp8 += 1;
            }
            strc84->unk4[sp4] = (u8)temp_r6;
        } else {
            break;
        }
    }
    if (sp8 == 2) {
        *strc84->unk0 = 0;
        TaskDestroy(gCurTask);
    }
}
END_NONMATCH

void sub_8077D40(EggGravity104 *strc104)
{
    Sprite2 *s;
    s8 dirX;
    u32 var_r2;
    u8 i;
    u32 randX, randY;

    strc104->unk8 = 0;
    strc104->unk0 = (u8 *)1;

    if ((((u32)PseudoRandom32() >> 8) % 128u) < 60) {
        dirX = -1;
    } else {
        dirX = +1;
    }

    for (i = 0; i < 2; i++) {
        strc104->qUnk14[i] = (((u32)PseudoRandom32() >> 8) % 32u) * dirX;
        strc104->qUnk1C[i] = (((u32)PseudoRandom32() >> 8) % 32u) * dirX;
        strc104->qUnk14[i] <<= 8;
        strc104->qUnk1C[i] <<= 8;
        strc104->qUnk24[0][i] = strc104->qUnk14[i];
        strc104->qUnk24[1][i] = strc104->qUnk1C[i];
    }

    randX = (+(((u32)PseudoRandom32() >> 8) % 16u) * dirX);
    randY = (-(((u32)PseudoRandom32() >> 8) % 64u));
    strc104->qUnk34 = randX << 5;
    strc104->qUnk38 = randY << 5;

    for (i = 0; i < 2; i++) {
        var_r2 = ((u32)PseudoRandom32() >> 8) % 4u;
        if (var_r2 > 2U) {
            var_r2 = 2;
        }
        if (strc104->unk40 == NULL) {
            if (i != 0) {
                s = &strc104->sprites44[2];
            } else {
                s = &strc104->sprites44[3];
            }
        } else {
            s = &strc104->sprites44[2];

            if (i != 0)
                break;
        }

        {
            s->tiles = (u8 *)strc104->vram3C;
            strc104->vram3C += gUnknown_080D5A44[var_r2].numTiles << 5;
            s->anim = gUnknown_080D5A44[var_r2].anim;
            s->variant = gUnknown_080D5A44[var_r2].variant;
            s->prevVariant = 0xFF;
            s->x = 0;
            s->y = 0;
            s->oamFlags = 0x40;
            s->animCursor = 0;
            s->qAnimDelay = 0;
            s->animSpeed = 0x10;
            s->palId = 0;
            s->frameFlags = 0x1000;
            s->hitboxes[0].index = -1;
            UpdateSpriteAnimation((Sprite *)s);
        }
    }

    for (i = 0; i < 2; i++) {
        var_r2 = ((u32)PseudoRandom32() >> 8) % 8u;
        if (var_r2 > 5U) {
            var_r2 = 5;
        }
        if (strc104->unk40 == NULL) {
            if (i != 0) {
                s = &strc104->sprites44[0];
            } else {
                s = &strc104->sprites44[1];
            }
        } else {
            s = &strc104->sprites44[0];

            if (i != 0)
                break;
        }

        {
            s->tiles = (u8 *)strc104->vram3C;
            strc104->vram3C += gUnknown_080D5A14[var_r2].numTiles << 5;
            s->anim = gUnknown_080D5A14[var_r2].anim;
            s->variant = gUnknown_080D5A14[var_r2].variant;
            s->prevVariant = -1;
            s->x = 0;
            s->y = 0;
            s->oamFlags = 0;
            s->animCursor = 0;
            s->qAnimDelay = 0;
            s->animSpeed = 0x10;
            s->palId = 0;
            s->frameFlags = 0x1000;
            s->hitboxes[0].index = -1;
            UpdateSpriteAnimation((Sprite *)s);
            strc104->unk8 = 1;
        }
    }
}

void Task_104_8077F80(void)
{
    u8 sp4 = 1;
    u8 var_r7 = 0;
    EggGravity104 *strc104 = TASK_DATA(gCurTask);
    Vec2_32 sp8;
    Something *temp_r0;
    s32 temp_r0_2;
    s32 var_r0;
    u8 *temp_r1;
    u8 *temp_r1_2;
    u8 temp_r0_3;
    u8 temp_r2;

    if (strc104->unk40 != NULL) {
        temp_r0 = sub_807A3D8(&strc104->unk40, 1U, 0x4C0U, 0U, &sp4);
        sp8.x = temp_r0->spr14->x;
        sp8.y = temp_r0->spr14->y + 0x20;
    } else {
        temp_r0_2 = *strc104->unkC;
        sp8.x = temp_r0_2;
        sp8.y = (s32)*strc104->unk10;
        sp8.x >>= 8;
        sp8.y >>= 8;
    }

    sub_8078A78(strc104, &sp8);
    sub_8078070(strc104, &sp8);

    if (strc104->unk8 != 0) {
        for (sp4 = 0; sp4 < 2; sp4++) {
            if ((sp8.y + I(strc104->qUnk24[1][sp4])) > 0xB3) {
                var_r7 += 1;
            }
        }

        if ((strc104->unk0 == NULL) && (var_r7 == 2)) {
            *strc104->unk4 = 0;
            TaskDestroy(gCurTask);
        }
    } else {
        if (strc104->unk0 == NULL) {
            *strc104->unk4 = 0;
            TaskDestroy(gCurTask);
        }
    }
}

void sub_8078070(EggGravity104 *strc104, Vec2_32 *pos)
{
    Sprite *var_r4;
    u8 var_r7;

    for (var_r7 = 0; var_r7 < 2; var_r7++) {
        if (strc104->unk40 == NULL) {
            if (var_r7 != 0) {
                var_r4 = (Sprite *)&strc104->sprites44[2];
            } else {
                var_r4 = (Sprite *)&strc104->sprites44[3];
            }
        } else {
            var_r4 = (Sprite *)&strc104->sprites44[2];
        }

        PseudoRandom32();

        if (strc104->unk0 == (u8 *)1) {
            var_r4->x = pos->x + I(strc104->qUnk14[var_r7]);
            var_r4->y = pos->y + I(strc104->qUnk1C[var_r7]);
            strc104->unk0 = (u8 *)UpdateSpriteAnimation(var_r4);
            DisplaySprite(var_r4);
        }
        if (strc104->unk8 != 0) {
            if (strc104->unk40 == NULL) {
                if (var_r7 != 0) {
                    var_r4 = (Sprite *)&strc104->sprites44[0];
                } else {
                    var_r4 = (Sprite *)&strc104->sprites44[1];
                }
            } else {
                var_r4 = (Sprite *)&strc104->sprites44[0];
            }
            var_r4->x = pos->x + ((s32)strc104->qUnk24[0][var_r7] >> 8);
            var_r4->y = pos->y + ((s32)strc104->qUnk24[1][var_r7] >> 8);
            UpdateSpriteAnimation((Sprite *)var_r4);
            DisplaySprite((Sprite *)var_r4);
        }
    }
}

// (98.57%) https://decomp.me/scratch/8NhQO
NONMATCH("asm/non_matching/game/bosses/boss_7__sub_807813C.inc", void sub_807813C(EggGravity30 *strc30))
{
#ifndef NON_MATCHING
    register s32 worldX asm("r5");
    register s32 worldX2 asm("r1");
    register s32 worldY asm("r0");
    register s32 worldY2 asm("r6");
#else
    s32 worldX;
    s32 worldX2;
    s32 worldY;
    s32 worldY2;
#endif

    strc30->unk20 += strc30->unkC;
    worldX = I(strc30->unk20) + gCamera.x;
    if (worldX > gCamera.maxX) {
        strc30->unk5 = -1;
        strc30->unkC = -strc30->unkC;
    } else if (worldX < gCamera.minX) {
        strc30->unk5 = +1;
        strc30->unkC = -strc30->unkC;
    }
    strc30->unk24 += strc30->unk10;

    worldX2 = I(strc30->unk20);
    worldX2 += gCamera.x;
    worldY = I(strc30->unk24);
    worldY += gCamera.y;
    worldY2 = worldY;

    if (SA2_LABEL(sub_801F07C)(worldY, worldX2, 1, 8, NULL, sa2__sub_801EE64) < 0) {
        strc30->unk6 = -1;
        strc30->unk10 = -strc30->unk10;
    } else if (worldY2 < gCamera.minY) {
        strc30->unk6 = +1;
        strc30->unk10 = -strc30->unk10;
    }
}
END_NONMATCH

void sub_80781C0(Vec2_32 *arg0, s8 *arg1)
{
    s32 *sp8;
    s32 spC;
    u8 var_r7;
    u32 rnd;
    EggGravityBC *strcBC = TASK_DATA(TaskCreate(Task_BC_8078C3C, sizeof(EggGravityBC), 0x2100U, 0U, TaskDestructor_8078C28));
    strcBC->unk0 = arg1;
    strcBC->unk5 = (s8)(((u32)PseudoRandom32() >> 8) % 2u);
    strcBC->unk6 = (s8)(((u32)PseudoRandom32() >> 8) & 0x5);
    strcBC->unk8 = 0;
    strcBC->unk20 = 0;
    strcBC->unk4 = 1;
    strcBC->unk10 = &arg0->x;
    strcBC->unk14 = &arg0->y;
    strcBC->unk18 = (s32)arg0->x;
    strcBC->unk1C = (s32)arg0->y;
    strcBC->unkA = (s16)gCamera.x;
    strcBC->unkC = (s16)gCamera.y;

    for (var_r7 = 0; var_r7 < ARRAY_COUNT(strcBC->unk24); var_r7++) {
        strcBC->unk24[var_r7].x = Q(((u32)PseudoRandom32() >> 8) % 32u);
        strcBC->unk24[var_r7].x -= Q(16);
    }

    for (var_r7 = 0; var_r7 < ARRAY_COUNT(strcBC->unk24); var_r7++) {
        strcBC->unk24[var_r7].y = Q(((u32)PseudoRandom32() >> 8) % 32u);
        strcBC->unk24[var_r7].y -= Q(16);
    }

    for (var_r7 = 0; var_r7 < ARRAY_COUNT(strcBC->unk3C); var_r7++) {
        strcBC->unk3C[var_r7].x = strcBC->unk24[var_r7].x;
        strcBC->unk3C[var_r7].y = strcBC->unk24[var_r7].y;
    }

    for (var_r7 = 0; var_r7 < ARRAY_COUNT(strcBC->unk60); var_r7++) {
        strcBC->unk60[var_r7] = -(((((u32)PseudoRandom32() >> 8) & 7) + 5) * 0x80);
        strcBC->unk54[var_r7] = +(((((u32)PseudoRandom32() >> 8) & 5) * 16));
        if (((u32)PseudoRandom32() >> 8) & 1) {
            strcBC->unk54[var_r7] = -strcBC->unk54[var_r7];
        }
    }

    m4aSongNumStart(SE_CAPSULE_DESTROY);

    InitSpritesStructBC(strcBC);
}

static void InitSpritesStructBC(EggGravityBC *strcBC)
{
    u16 numTilesA = gUnknown_080D5A44[strcBC->unk5].numTiles;
    u16 numTilesB = gUnknown_080D5A14[strcBC->unk6].numTiles;
    u8 *vram = VramMalloc(numTilesA + numTilesB);

    {
        Sprite *s = &strcBC->spr6C;
        s->tiles = vram;
        vram += (numTilesA * TILE_SIZE_4BPP);
        s->anim = gUnknown_080D5A44[strcBC->unk5].anim;
        s->variant = gUnknown_080D5A44[strcBC->unk5].variant;
        s->prevVariant = -1;
        s->x = I(strcBC->unk24[0].x);
        s->y = I(strcBC->unk24[0].y);
        s->oamFlags = SPRITE_OAM_ORDER(1);
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        s->hitboxes[0].index = -1;
        UpdateSpriteAnimation(s);
    }

    if (strcBC->unk6 != 7) {
        Sprite *s = &strcBC->spr94;
        s->tiles = vram;
        s->anim = gUnknown_080D5A14[strcBC->unk6].anim;
        s->variant = gUnknown_080D5A14[strcBC->unk6].variant;
        s->prevVariant = -1;
        s->x = I(strcBC->unk3C[0].x);
        s->y = I(strcBC->unk3C[0].y);
        s->oamFlags = SPRITE_OAM_ORDER(0);
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        s->hitboxes[0].index = -1;
        UpdateSpriteAnimation(s);
    }
}

#if 0
s32 sub_8078468(EggGravity104 *arg0) {
    s32 *temp_r0_2;
    s32 *temp_r2_3;
    s32 *temp_r2_4;
    s32 *temp_r3;
    s32 temp_r0;
    s32 temp_r1_2;
    s32 temp_r2;
    s32 temp_r2_2;
    s32 temp_r7;
    s32 var_r0;
    u8 var_r6;
    u8 var_r8;
    void *temp_r1;

    var_r8 = 0;
    var_r6 = 0;
    temp_r7 = arg0 + 0x40;
    do {
        temp_r2 = var_r6 * 8;
        if ((s32) (arg0->qUnk1CY[0] + *(temp_r7 + temp_r2)) <= 0xB3FF) {
            temp_r0 = var_r6 * 4;
            temp_r1 = arg0 + 0x54;
            temp_r3 = temp_r1 + temp_r0;
            temp_r2_2 = *temp_r3;
            if (temp_r2_2 > 0) {
                var_r0 = temp_r2_2 + 0x10;
            } else {
                var_r0 = temp_r2_2 - 0x10;
            }
            *temp_r3 = var_r0;
            temp_r2_3 = arg0 + 0x3C + temp_r2;
            *temp_r2_3 += *(temp_r1 + temp_r0);
            temp_r0_2 = arg0 + 0x60 + temp_r0;
            temp_r1_2 = *temp_r0_2 + 0x40;
            *temp_r0_2 = temp_r1_2;
            temp_r2_4 = temp_r7 + temp_r2;
            *temp_r2_4 += temp_r1_2;
        } else {
            var_r8 += 1;
        }
        var_r6 += 1;
    } while ((u32) var_r6 <= 2U);
    if (var_r8 != 3) {
        return 0;
    }
    return 1;
}

ACmdRes sub_8078504(EggGravityBC *strcBC) {
    Sprite *temp_r4;
    s32 *temp_r2_2;
    s32 *temp_r6;
    s32 temp_r1;
    s32 temp_r2;
    s32 temp_r3;
    s32 temp_r8;
    u8 var_r7;

    temp_r4 = arg0 + 0x6C;
    temp_r8 = UpdateSpriteAnimation(temp_r4);
    var_r7 = 0;
    do {
        temp_r2 = var_r7 * 8;
        temp_r6 = arg0 + 0x24 + temp_r2;
        temp_r3 = (s32) (*arg0->unk10 + *temp_r6) >> 8;
        temp_r4->x = (s16) temp_r3;
        temp_r2_2 = arg0 + 0x28 + temp_r2;
        temp_r1 = (s32) (*arg0->qUnk14X[0] + *temp_r2_2) >> 8;
        temp_r4->y = (s16) temp_r1;
        if (var_r7 != 0) {
            temp_r4->x = temp_r3 + ((s32) *temp_r6 >> 8);
            temp_r4->y = temp_r1 + ((s32) *temp_r2_2 >> 8);
        }
        DisplaySprite(temp_r4);
        var_r7 += 1;
    } while ((u32) var_r7 <= 2U);
    return temp_r8;
}

void sub_8078570(EggGravityBC *strcBC) {
#ifndef NON_MATCHING
    // BUG: How did this even work?
    s16 sp[0];
#else
    s16 sp[2];
#endif
    s32 *var_r2;
    s32 temp_r0_2;
    s32 temp_r1;
    s32 temp_r2;
    s32 temp_r6;
    s32 var_r3;
    u8 temp_r0;
    u8 var_r8;

    for(var_r8 = 0; var_r8< 3; var_r8++)
    {
        if (strcBC->unk6 != 7) {
            Sprite *s = &strcBC->spr94;
            temp_r0_2 = strcBC->unk6;
            temp_r6 = strcBC->unk8;
            if ((strcBC->unk6 != temp_r6) && (strcBC->unk7 != strcBC->unk9)) {
                sp[0] = gCamera.x - strcBC->unkA;
                sp[1] = gCamera.y - strcBC->unkC;
                var_r3 = var_r8 * 8;
                s->x = (u16) ((s32) (temp_r6 + sp[0] + *(&strcBC->unk11 + var_r3)) >> 8);
                var_r2 = &strcBC->unk12;
                strcBC->unkA6 = (s16) ((s32) (strcBC->unk9 + sp[1] + *(var_r2 + var_r3)) >> 8);
            } else {
                temp_r2 = var_r8 * 8;
                s->x = (u16) ((s32) (strcBC->unk6 + *(&strcBC->unk11 + temp_r2)) >> 8);
                var_r3 = temp_r2;
                var_r2 = &strcBC->unk12;
            }
            temp_r1 = (s32) (*strcBC->unk7 + *(var_r2 + var_r3)) >> 8;
            strcBC->unkA6 = (s16) temp_r1;
            if (var_r8 != 0) {
                s->x += (u16) (((s32) *(&strcBC->unkB + var_r3) >> 8));
                strcBC->unkA6 = (s16) (temp_r1 + ((s32) *(&strcBC->unkC + var_r3) >> 8));
            }
            DisplaySprite(s);
        }
    }
}
#endif

#if 0
s32 sub_8078650(EggGravity28 *strc28) {
    s32 temp_r0;
    s16 temp_r0_2;
    s32 temp_r1;

    strc28->unk10 += Q(10);
    temp_r0_2 = SIN_24_8((u8) (strc28->unk10 >> 7) * 8);
    strc28->qUnk14[0][0] = +temp_r0_2 * 0x10;
    strc28->qUnk14[1][0] = -temp_r0_2 * 0x10;
    strc28->qUnk14[0][1] -= Q(4);
    strc28->qUnk14[1][1] -= Q(4);
    if (temp_r1 >= -Q(60)) {
        return 0;
    }
    strc28->pSpr24->prevVariant = -1;
    strc28->qUnk14[0][1] = 0;
    strc28->qUnk14[1][1] = 0;
    strc28->unk10 = 0;
    return 1;
}

void sub_80786B4(Arg0_80786B4 *arg0, s32 arg1, s32 arg2, u8 *arg3) {
    EggGravity4C_B *temp_r4 = TASK_DATA(TaskCreate(Task_4C_8078764, sizeof(EggGravity4C_B), 0x2100U, 0U, TaskDestructor_4C_B_8078D18));
    Sprite *s;
    temp_r4->qUnk4Xs[0] = arg0->x0;
    temp_r4->qUnkCYs[0] = arg0->y0;
    temp_r4->qUnk4Xs[1] = arg0->x1;
    temp_r4->qUnkCYs[1] = arg0->y1;
    temp_r4->qUnk14.x = arg1;
    temp_r4->qUnk14.y = arg2;
    temp_r4->unk0 = arg3;

    s = &temp_r4->s;
    s->tiles = VramMalloc(gUnknown_080D5A44[1].numTiles);
    s->anim = gUnknown_080D5A44[1].anim;
    s->variant = gUnknown_080D5A44[1].variant;
    s->prevVariant = 0xFF;
    s->x = I(temp_r4->qUnk4Xs[0]);
    s->y = I(temp_r4->qUnkCYs[0]);
    s->oamFlags = 0x80;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0;
    s->hitboxes[0].index = -1;
    UpdateSpriteAnimation(s);
}

void Task_4C_8078764(void) {
    EggGravity4C_B *strc4C = TASK_DATA(gCurTask);
    s32 *temp_r5;
    AnimCmdResult acmdRes;
    Sprite *s = &strc4C->s;

    s->x = I(strc4C->qUnk14.x + strc4C->qUnk4Xs[0]);
    s->y = I(strc4C->qUnk14.y + strc4C->qUnkCYs[0]);
    DisplaySprite(s);
    s->x = (s16) ((s32) (strc4C->qUnk14.x + strc4C->qUnk4Xs[1]) >> 8);
    s->y = (s16) ((s32) (strc4C->qUnk14.y + strc4C->qUnkCYs[1]) >> 8);
    acmdRes = UpdateSpriteAnimation(s);
    DisplaySprite(s);
    if (acmdRes == ACMD_RESULT__ENDED) {
        *strc4C->unk0 = 0;
        TaskDestroy(gCurTask);
    }
}

s32 sub_80787D8(EggGravity68 *strc68) {
    Vec2_32 *temp_r4;
    s32 *temp_r3;
    u16 *temp_r6;
    u16 temp_r1_2;
    u8 temp_r1;
    u8 var_r7;

    for(var_r7 = 0; var_r7 < ARRAY_COUNT(strc68->unk8); var_r7++)
    {
        temp_r1 = gUnknown_080D5A64[var_r7];
        strc68->unk24[var_r7].y = 0;
        temp_r4 = &strc68->unk24[var_r7];
        temp_r4->x = 0;
        strc68->unk24[var_r7].y   += (strc68->unk8[var_r7] >> 6) * ((s32) ( COS_24_8(temp_r1 * 4) * 0xC) >> 6) * 0x10;
        temp_r4->x += (strc68->unk8[var_r7] >> 6) * ((s32) ( SIN_24_8(temp_r1 * 4) * 0xC) >> 6) * 0x10;
        temp_r1_2 = strc68->unk8[var_r7];
        if ((u32) (temp_r1_2 >> 6) >= 0x10U) {
            return 1U;
        }
        strc68->unk8[var_r7] = temp_r1_2 + 0x80;
    }

    return 0U;
}

void sub_80788A4(Something *sth, s32 screenX, s32 screenY, s32 arg3, u8 *arg4) {
    u8 sp4 = 1;
    EggGravity104 *temp_r1 = TASK_DATA(TaskCreate(Task_104_8077F80, sizeof(EggGravity104), 0x2100U, 0U, TaskDestructor_104_8078A68));
    temp_r1->unk40 = sth;
    temp_r1->unk3C = arg3;

    if (sth != NULL) {
        Something *sth = sub_807A3D8(&sth, 1, 0x4C0, 0, &sp4);
        Sprite *s = (Sprite*)sth->spr14;
        temp_r1->unkC  = s->x;
        temp_r1->unk10 = s->y;
    } else {
        temp_r1->unkC  = screenX;
        temp_r1->unk10 = screenY;
    }

    temp_r1->unk9 = 0;
    temp_r1->unk4 = arg4;
    sub_8077D40(temp_r1);
}

void sub_8078920(Sprite *s, Vec2_32 *vec, s8 *param2)
{
    EggGravity28 *temp_r0 = TASK_DATA(TaskCreate(Task_28_8078C90, sizeof(EggGravity28), 0x2100U, 0U, TaskDestructor_28_8078C8C));
    temp_r0->unk0 = param2;
    temp_r0->unk8 = &vec->x;
    temp_r0->unkC = &vec->y;
    temp_r0->unk10 = 0;
    temp_r0->qUnk14[0][0] = 0;
    temp_r0->qUnk14[0][1] = 0;
    temp_r0->qUnk14[1][0] = 0;
    temp_r0->qUnk14[1][1] = 0;
    temp_r0->unk6 = 0;
    temp_r0->unk4 = 0;
    temp_r0->pSpr24 = s;
}

void sub_8078970(Sprite *s, void *arg1, Vec2_32 *arg2, u8 arg3, u8 *arg4) {
    EggGravity30 *temp_r0 = TASK_DATA(TaskCreate(Task_30_8078AC4, sizeof(EggGravity30), 0x2100U, 0U, TaskDestructor_8078AC0));
    temp_r0->unk8 = 0;
    temp_r0->unk1C = 0;
    temp_r0->unk5 = +1;
    temp_r0->unk6 = -1;
    temp_r0->unk4 = arg3;
    temp_r0->unk0 = arg4;
    temp_r0->unk20 = arg2->x;
    temp_r0->unk24 = arg2->y;
    temp_r0->unkC  = +0x400;
    temp_r0->unk10 = -0x400;
    temp_r0->unk14 = 0;
    temp_r0->unk18 = 0;
    temp_r0->pSpr28 = s;
    temp_r0->unk2C = arg1;
}
    
void sub_80789EC(Sprite *s, Vec2_32 *vec, u8 *bossPhase) {
    s32 temp_r1;
    u8 var_r2;
    EggGravity68 *strc68 = TASK_DATA(TaskCreate(Task_68_8078D34, sizeof(EggGravity68), 0x2100U, 0U, TaskDestructor_8078D30));
    strc68->bossPhase = bossPhase;
    strc68->unk18Xs = &vec->x;
    strc68->unk1CYs = &vec->y;
    strc68->unk20 = 0;
    strc68->unk8[0] = 0;
    strc68->unk4[0] = 0;
    strc68->spr64 = s;
    var_r2 = 0;
    do {
        temp_r1 = var_r2 * 8;
        strc68->unk24[var_r2].x = 0;
        strc68->unk24[var_r2].y = 0;
        strc68->unk4[2 + var_r2] = 0;
        var_r2 += 1;
    } while ((u32) var_r2 <= 7U);
}

void TaskDestructor_8078A64(Task *arg0) {

}

void TaskDestructor_104_8078A68(Task *arg0) {
    EggGravity104 *strc104 = TASK_DATA(gCurTask);
    *strc104->unk4 = 0;
}

s32 sub_8078A78(EggGravity104 *strc104, Vec2_32 *pos) {
    s32 *temp_r2;
    s32 *temp_r3;
    s32 temp_r1;
    u8 var_r4;

    for(var_r4 = 0; var_r4 < 2; var_r4++)
    {
        if ((pos->y + I(strc104->qUnk24[1][0])) < 0xB4) {
            strc104->qUnk24[0][0] += strc104->qUnk34;
            strc104->qUnk38 += 0x20;;
            strc104->qUnk24[1][var_r4] += strc104->qUnk38;
        }
    }

    return 0;
}

void TaskDestructor_8078AC0(Task *strc30) {

}

void Task_30_8078AC4(void) {
    EggGravity30 *strc30 = TASK_DATA(gCurTask);
    sub_8078B74(strc30);
    sub_807813C(strc30);
    if (*strc30->unk0 == 1) {
        TaskDestroy(gCurTask);
    }
}

void sub_8078AF8(void) {
    EggGravity30 *strc30 = TASK_DATA(gCurTask);
    if (sub_8078BAC(strc30) == 1) {
        gCurTask->main = sub_8078B24;
    }
}

void sub_8078B24(void) {
    EggGravity30 *strc30 = TASK_DATA(gCurTask);

    if (strc30->unk8 > 0xB3U) {
        *strc30->unk0 = 1;
        gCurTask->main = sub_8078B50;
    }
}

void sub_8078B50(void) {
    EggGravity30 *strc30 = TASK_DATA(gCurTask);
    *strc30->unk0 = 2;
    TaskDestroy(gCurTask);
}

void sub_8078B74(EggGravity30 *strc30) {
    Sprite *temp_r6;
    u8 temp_r0;
    u8 var_r5;

//    temp_r6 = strc30->qUnk24X[1];
//    temp_r0 = strc30->filler0[4];
    if (temp_r0 != 0) {
        for(var_r5 = 0; var_r5 < strc30->unk4; var_r5++)
        {
            {
//                temp_r6->x = I(strc30->qUnk1C.x);
//                temp_r6->y = I(strc30->qUnk24.y);
                DisplaySprite(temp_r6);
            }
        }
    }
}

s32 sub_8078BAC(EggGravity30 *strc30) {
    s8 temp_r0 = sa2__sub_801F07C(strc30->pSpr28->y + gCamera.y, 0, 0, 8,
                                  NULL, sa2__sub_801EE64);
    if (temp_r0 < 0) {
        strc30->unk24 += Q(temp_r0);
        strc30->unk6 = -1;
        strc30->unk10 = (strc30->unk10 >> 1);
        strc30->unk18 = -strc30->unk18;
    }
    strc30->unk18 -= Q(strc30->unk6);
    strc30->unk10 += strc30->unk18;
    strc30->unk24 += strc30->unk10;
    if (strc30->unk10 != 0) {
        return 0;
    }
    return 1;
}

void TaskDestructor_8078C28(Task *t) {
    EggGravityBC *strcBC = TASK_DATA(t);
    VramFree(strcBC->spr6C.tiles);
}

void Task_BC_8078C3C(void) {
    EggGravityBC *strcBC = TASK_DATA(gCurTask);
    u8 *temp_r0;
    u8 *temp_r1;

    if (strcBC->unk4 == 1) {
        strcBC->unk4 = sub_8078504(strcBC);
    }
    sub_8078570(strcBC);
    if (sub_8078468(strcBC) == 1) {
        *strcBC->unk0 -= 1;
        if (*strcBC->unk0 > 0xC8U) {
            *strcBC->unk0 = 0;
        }
        TaskDestroy(gCurTask);
    }
}

void TaskDestructor_28_8078C8C(Task *t) {

}

void Task_28_8078C90(void) {
    EggGravity28 *strc28 = TASK_DATA(gCurTask);

    sub_8078650(strc28);

    if (*strc28->unk0 == 0) {
        TaskDestroy(gCurTask);
        return;
    }
    sub_8078CC4(strc28);
}

s32 sub_8078CC4(EggGravity28 *strc28) {
    s32 temp_r4;
    Sprite *s;

    s = strc28->pSpr24;
    s->x = I(*strc28->unk8 + strc28->qUnk14[0][0]);
    s->y = I(*strc28->unkC + strc28->qUnk14[0][1]);
    DisplaySprite(s);

    s->x = I(*strc28->unk8 + strc28->qUnk14[1][0]);
    s->y = I(*strc28->unkC + strc28->qUnk14[1][1]);
    temp_r4 = UpdateSpriteAnimation(s);
    DisplaySprite(s);

    return temp_r4;
}

void TaskDestructor_4C_B_8078D18(Task *t) {
    EggGravity4C_B *strc4C = TASK_DATA(t);
    VramFree(strc4C->s.tiles);
}

void sub_8078D2C(void) {

}

void TaskDestructor_8078D30(Task *arg0) {

}

void Task_68_8078D34(void) {
    EggGravity68 *strc68 = TASK_DATA(gCurTask);
    sub_8078D6C(strc68);

    if (sub_80787D8(strc68) == 1) {
        *strc68->bossPhase += 1;
        TaskDestroy(gCurTask);
    }
}

u8 sub_8078D6C(EggGravity68 *strc68) {
    Sprite *s;
    u8 i;

    for(i = 0; i < 8; i++)
    {
        s = strc68->spr64;
        s->x = I(strc68->unk18Xs[0] + strc68->unk24[i].x);
        s->y = I(strc68->unk1CYs[0] + strc68->unk24[i].y);
        DisplaySprite(s);
    }

    return 1U;
}
#endif

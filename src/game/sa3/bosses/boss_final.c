#include "global.h"
#include "core.h"
#include "trig.h"
#include "multi_sio_stuff.h" // sub_8027674
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "game/sa3/bosses/eggman_escape.h" // sub_807A4A8
#include "game/shared/stage/music_manager.h" // sub_80299D4
#include "game/shared/stage/player.h"
#include "game/shared/stage/player_callbacks.h"
#include "game/shared/stage/screen_shake.h"
#include "game/save.h" // DIFFICULTY_NORMAL
#include "game/stage.h" // gStageData
#include "constants/animations.h"
#include "constants/move_states.h"
#include "constants/songs.h"
#include "constants/tilemaps.h"

#define BOSS_F_PLATFORM_COUNT 4
#define CHAOS_EMERALD_COUNT   7

// TODO: Probably identical to AltarEmeraldCutEmeraldPos?
typedef struct {
    Vec2_32 qWorld;
    s32 unk8;
    s32 unkC;
    s16 unk10;
    u16 unk12;
} HyberEggRoboPlatform; /* 0x14 */

typedef struct {
    /* 0x00 */ Vec2_32 qWorld;
    /* 0x08 */ Vec2_32 qUnk8;
    /* 0x12 */ u16 unk10;
    /* 0x12 */ u8 unk12;
    /* 0x13 */ u8 unk13;
    /* 0x14 */ s16 unk14;
    /* 0x16 */ u16 unk16;
    /* 0x18 */ u8 unk18;
    /* 0x18 */ u8 unk19;
    /* 0x1A */ u8 unk1A;
    /* 0x1B */ u8 unk1B;
    /* 0x1C */ s32 unk1C;
    /* 0x20 */ s32 unk20;
    /* 0x24 */ s32 unk24;
} HyberEggRoboStrc144; /* 0x28 */

typedef struct {
    /* 0x00 */ Vec2_32 qWorld;
    /* 0x14 */ s32 unk8;
    /* 0x14 */ s32 unkC;
    /* 0x10 */ s32 unk10;
    /* 0x14 */ s16 unk14;
    /* 0x16 */ u16 unk16;
    /* 0x18 */ u16 unk18;
    /* 0x1A */ s16 unk1A;
} HyberEggRoboStrc194; /* 0x1C */

typedef struct {
    /* 0x000 */ u8 lives;
    /* 0x001 */ u8 unk1;
    /* 0x002 */ u8 unk2;
    /* 0x002 */ u8 unk3;
    /* 0x004 */ u8 *initArg0;
    /* 0x008 */ s16 unk8;
    /* 0x002 */ s16 unkA;
    /* 0x00C */ u16 unkC;
    /* 0x00E */ u8 unkE;
    /* 0x00E */ u8 unkF;
    /* 0x010 */ u8 unk10;
    /* 0x011 */ u8 unk11;
    /* 0x012 */ u8 unk12;
    /* 0x013 */ u8 unk13;
    /* 0x014 */ s16 unk14;
    /* 0x016 */ u16 unk16;
    /* 0x018 */ u8 *vram18;
    /* 0x018 */ u8 filler1C[0x4];
    /* 0x020 */ Player *players[NUM_SINGLE_PLAYER_CHARS];
    /* 0x028 */ Task *task28;
    /* 0x02C */ HyberEggRoboPlatform unk2C[BOSS_F_PLATFORM_COUNT];
    /* 0x07C */ Sprite sprPlatforms[BOSS_F_PLATFORM_COUNT];
    /* 0x11C */ Vec2_32 qWorld;
    /* 0x124 */ s32 unk124;
    /* 0x128 */ s32 unk128;
    /* 0x12C */ s16 unk12C;
    /* 0x12E */ u16 unk12E;
    /* 0x130 */ Vec2_32 qCockpitWorldPos;
    /* 0x130 */ u8 filler138[0xC];
    /* 0x144 */ HyberEggRoboStrc144 pos144[2];
    /* 0x194 */ HyberEggRoboStrc194 unk194[3];
    /* 0x1E8 */ Background bgBody;
    /* 0x228 */ Sprite spr228;
    /* 0x250 */ Sprite spr250;
    /* 0x250 */ Sprite spr278[2];
    /* 0x2C8 */ Sprite spr2C8[3];
    /* 0x110 */ SpriteTransform tf340[2];
} HyperEggRobo; /* 0x358 */

// TODO: Might be identical to HyberEggRoboStrc194
typedef struct {
    /* 0x00 */ Vec2_32 qWorld;
    /* 0x14 */ s32 unk8;
    /* 0x14 */ s32 unkC;
    /* 0x14 */ u16 unk10; // TODO: type
    /* 0x14 */ u16 unk12; // TODO: type
    /* 0x14 */ u16 unk14;
    /* 0x14 */ u16 unk16;
    /* 0x14 */ u16 unk18;
    /* 0x14 */ s16 unk1A;
} EggmanEscapeStrc14; /* 0x1C */

// TODO: Probably identical to HyberEggRoboPlatform?
typedef struct {
    /* 0x00 */ u8 initialArg0;
    /* 0x01 */ u8 unk1;
    /* 0x02 */ u16 unk2;
    /* 0x04 */ u16 unk4;
    /* 0x06 */ u16 unk6;
    /* 0x08 */ u8 *vram8;
    /* 0x0C */ u8 *vramC;
    /* 0x10 */ u8 *vram10;
    /* 0x14 */ EggmanEscapeStrc14 unk14[3];
    /* 0x68 */ Sprite3 sprites[3]; // 0 : Eggman, 1 : Neo Egg Mobile, 2 : Gemerl
    /* 0x110 */ SpriteTransform tf;
} AltarEmeraldCutsceneEggmanEscape; /* 0x11C */

// TODO: Probably identical to HyberEggRoboPlatform?
typedef struct {
    Vec2_32 qWorld;
    s32 unk8;
    s32 unkC;
    s16 unk10;
    s16 unk12;
} AltarEmeraldCutEmeraldPos;

typedef struct {
    /* 0x00 */ u8 unk0;
    /* 0x01 */ u8 unk1;
    /* 0x02 */ u16 unk2;
    /* 0x14 */ s32 unk4;
    /* 0x14 */ s32 unk8;
    /* 0x14 */ u16 unkC;
    /* 0x14 */ u16 unkE; // TODO: type
    /* 0x14 */ s16 unk10;
    /* 0x14 */ u16 unk12;
    /* 0x14 */ u16 unk14;
    /* 0x16 */ u16 unk16;
    /* 0x18 */ u8 *vram18;
    /* 0x1C */ AltarEmeraldCutEmeraldPos unk1C[CHAOS_EMERALD_COUNT];
    /* 0xA8 */ Sprite sprEmeralds[CHAOS_EMERALD_COUNT];
} AltarEmeraldCutsceneSuperSonic; /* 0x1C0 */

void CreateHyperEggRobo(u8 *arg0);
void Task_358_807B808(void);
void Task_358_807B9B8(void);
void Task_358_807BC04(void);
void sub_807C48C(Sprite *sprColliding, s32 qWorldX, s32 qWorldY);
void sub_358_807BCCC(HyperEggRobo *boss);
void sub_358_807BD88(HyperEggRobo *boss);
void sub_807BE58(HyperEggRobo *boss, u8 param1);
void sub_358_807BEF0(HyperEggRobo *boss);
void sub_358_807BFEC(HyperEggRobo *boss);
void sub_358_807C074(HyperEggRobo *boss);
void sub_358_807C14C(HyperEggRobo *boss);
void sub_807DB00(HyperEggRobo *boss, u8 arg1, u8 arg2);
bool8 sub_807CD4C(HyperEggRobo *boss);
void sub_807CFAC(HyperEggRobo *boss);
void sub_807CCA8(HyperEggRobo *boss);
void sub_807CDF0(HyperEggRobo *boss);
u8 sub_807C244(Sprite *s, s32 qX, s32 qY, s32 arg3, s32 qArg4);
u8 sub_807C374(Sprite *s, s32 qX, s32 qY, s32 arg3, s32 qArg4);
void sub_807D2A4(HyberEggRoboStrc194 *strc194, u8 param1);
void sub_807D81C(HyperEggRobo *boss);
void sub_807DE20(HyperEggRobo *boss, u8 param1);
void sub_358_807CBC8(HyperEggRobo *boss);
void sub_358_807D6C4(HyperEggRobo *boss);
void sub_807D8B4(HyperEggRobo *boss, u8 param1, u8 param2);
bool8 sub_807D9B4(HyperEggRobo *boss, u8 param1);
void sub_807DA34(HyperEggRobo *boss, u8 param1);
void sub_807DB60(HyperEggRobo *boss);
void sub_807DCD8(HyperEggRobo *boss, u8 param1);
void sub_807ED8C(HyperEggRobo *boss);
u8 sub_807F228(HyperEggRobo *arg0);
void sub_807F434(HyperEggRobo *boss);
void sub_807FB7C(u8);
void sub_80816C0(HyperEggRobo *boss);
void UpdateHandAnimation(HyperEggRobo *boss, u8 param1, u8 param2);
void sub_8081A74(HyperEggRobo *boss, u8 param1, u8 param2);
void Task_1C0_ExtraChaosEmeraldsInit(void);
void InitChaosEmeraldSprites(AltarEmeraldCutsceneSuperSonic *emeraldsCut);
void sub_1C0_807FEB4(AltarEmeraldCutsceneSuperSonic *emeraldsCut);
void sub_1C0_808007C(AltarEmeraldCutsceneSuperSonic *emeraldsCut);
void sub_8081BBC(HyperEggRobo *boss);
Task *CreateAltarEmeraldPostBossCutscene(u8 arg0);

void Task_358_HyperEggRoboInit(void);
void TaskDestructor_HyperEggRobo(Task *t);

bool32 sub_807D41C(HyperEggRobo *arg0, u8 arg1);
s32 sub_807D37C(HyperEggRobo *boss, HyberEggRoboStrc194 *strc194);
void sub_807E214(HyperEggRobo *boss, u8 param1);
void sub_807F334(Sprite *s, SpriteTransform *tf, u8 param2, u8 param3);
void Task_358_807F568(void);
void PlayerCB_80819BC(Player *p);
void sub_8081A10(Player *p);
void sub_8081C08(HyperEggRobo *boss);
void PlayerCB_808183C(Player *p);
void PlayerCB_8081810(Player *p);
void PlayerCB_8081840(Player *p);
void PlayerCB_808186C(Player *p);

bool32 MetExtraBossEnableConditions(void);
void sub_808178C(u8);
void sub_8002508(void);
void sub_8081DF4(Task *task28);
void sub_1C0_8080548(AltarEmeraldCutsceneSuperSonic *emeraldsCut);
void Task_11C_8080AD4(void);
void TaskDestructor_AltarEmeraldPostBossCutscene(Task *t);
void sub_8080BD0(AltarEmeraldCutsceneEggmanEscape *sceneEggman);
void sub_80811E0(AltarEmeraldCutsceneEggmanEscape *sceneEggman);
void TaskDestructor_ExtraChaosEmeralds(Task *t);
extern void sub_8086D64(s16, s16, s16, s16, u8, u8 *vram);
void sub_808170C(HyperEggRobo *boss);
void sub_8081A40(HyperEggRobo *boss);
void sub_8081AA0(HyperEggRobo *boss);

extern bool32 IsCollidingWithCheese(Sprite *);
// TEMP

#if 0 // M2C
void CreateHyperEggRobo(u8 *arg0, HyperEggRobo *boss);
void Task_358_807B808(HyperEggRobo *boss);
void Task_358_807B9B8(HyperEggRobo *boss);
void Task_358_807BC04(HyperEggRobo *boss);
u8 sub_807C244(Sprite *s, s32 qX, s32 qY, s32 arg3, s32 qArg4, HyperEggRobo *boss);
u8 sub_807C374(Sprite *s, s32 qX, s32 qY, s32 arg3, s32 qArg4, HyperEggRobo *boss);
void sub_807C48C(Sprite *sprColliding, s32 qWorldX, s32 qWorldY);
void Task_1C0_ExtraChaosEmeraldsInit(AltarEmeraldCutsceneSuperSonic *emeraldsCut);
#endif

extern u8 gUnknown_080D5C78[2][4];
extern const s16 gUnknown_080D5C80[8][2]; // NOTE: Vec2_16 does not match!
extern const u16 gUnknown_080D5C38[4][2];
extern const u8 gUnknown_080D5C48[8];
extern const u16 gUnknown_080D5C70[4];
extern const u8 gUnknown_080D5CA0[4];
extern Vec2_32 gUnknown_080D5CD4[7]; // TODO: Maybe Chaos Emerald starting positions?
extern const s32 gUnknown_080D5C50[5]; // NOTE: Apparently only 0-2 are used.
extern u8 gUnknown_080D5CA4[4];
extern u16 sBossExtraAnimsChaosEmeralds[7][3];
extern const u16 sBossFinalAnimsHandsLeft[6][2];
extern const u16 sBossFinalAnimsHandsRight[6][2];
typedef void (*FinalBossFunc0)(HyperEggRobo *boss);
typedef void (*ChaosEmeraldCutsceneFunc0)(AltarEmeraldCutsceneSuperSonic *emeraldCut);
typedef void (*FinalBossFunc1)(HyperEggRobo *boss, u8 param1);
extern const FinalBossFunc0 gUnknown_08E2ED00[6];
extern const FinalBossFunc1 gUnknown_08E2ED18[12];
extern const ChaosEmeraldCutsceneFunc0 gUnknown_08E2ED48[2];

typedef struct {
    s32 a : 16;
    s32 b : 16;
    s32 c : 16;
    s32 d : 16;
} SomeMatrix;

// TODO: Seems like the 1st parameter is a different type, that is just 0x8 bytes? Is it a different function overall?
extern void SA2_LABEL(sub_8085A9C)(SomeMatrix *p1, u8 p2);

void CreateHyperEggRobo(u8 *arg0)
{
    struct Task *t = TaskCreate(Task_358_HyperEggRoboInit, sizeof(HyperEggRobo), 0x2100U, 0U, TaskDestructor_HyperEggRobo);
    HyperEggRobo *boss = TASK_DATA(t);
    u8 i;

    gStageData.taskBoss = t;
    if (gStageData.difficulty == DIFFICULTY_NORMAL) {
        boss->lives = 8;
    } else {
        boss->lives = 6;
    }
    boss->initArg0 = arg0;
    boss->unk14 = 1;
    boss->unk16 = 0;
    boss->unk8 = 1;
    boss->unkC = 0;
    boss->players[0] = &gPlayers[PLAYER_1];
    boss->players[1] = &gPlayers[gPlayers[PLAYER_1].charFlags.partnerIndex];
    boss->spr250.tiles = NULL;
    boss->spr228.tiles = NULL;

    for (i = 0; i < ARRAY_COUNT(boss->sprPlatforms); i++) {
        boss->sprPlatforms[i].tiles = NULL;
    }

    boss->vram18 = 0;

    for (i = 0; i < ARRAY_COUNT(boss->spr2C8); i++) {
        boss->spr2C8[i].tiles = NULL;
    }

    boss->spr278[0].tiles = NULL;
    boss->spr278[1].tiles = NULL;

    gDispCnt &= ~DISPCNT_BG0_ON;

    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gBgCntRegs[0] = BGCNT_SCREENBASE(27) | BGCNT_CHARBASE(3) | BGCNT_TXT256x512 | BGCNT_16COLOR | BGCNT_PRIORITY(2);
    gBgSprites_Unknown1[0] = 0;
    gBgSprites_Unknown2[0][0] = 0;
    gBgSprites_Unknown2[0][1] = 0;
    gBgSprites_Unknown2[0][2] = 0xFF;
    gBgSprites_Unknown2[0][3] = 0x20;

    sub_358_807C074(boss);
}

// TODO: Fake-match!
void Task_358_807B808(void)
{
    HyperEggRobo *boss = TASK_DATA(gCurTask);
    u16 sp0[NUM_SINGLE_PLAYER_CHARS];
    u16 inputMask;
    u32 prevKeyInput;
    u16 temp_r1_3;
    Player *player = boss->players[PLAYER_1];
    Player *partner = boss->players[PLAYER_2];

    sub_358_807C14C(boss);
    sub_80816C0(boss);

    sp0[0] = sp0[1] = 0;

    switch (boss->unkC) {
        case 0x0:
            sub_807FB7C(12);
            sub_807FB7C(0);
            sub_807FB7C(10);
            sub_807FB7C(11);
            boss->unk8 = 5;
            boss->unkC = 10;
            break;
        case 10:
            if (--boss->unk8 != 0) {
                return;
            }
            sub_80299D4(MUS_VS__FINAL_BOSS);
            boss->unkC = 100;
            break;
        case 100:
            if (I(player->qWorldX) >= 1677) {
                player->qWorldX = Q(1677);
                player->qSpeedGround = 0;
                player->qSpeedAirX = 0;
            } else {
                sp0[0] |= DPAD_RIGHT;
            }
            if (I(partner->qWorldX) >= 1637) {
                partner->qWorldX = Q(1637);
                partner->qSpeedGround = 0;
                partner->qSpeedAirX = 0;
            } else {
                sp0[1] |= DPAD_RIGHT;
            }
            prevKeyInput = player->keyInput;
            inputMask = sp0[0];
            player->keyInput = inputMask;
#ifndef NON_MATCHING
            asm("eor %0, %1, %2" : "=r"(prevKeyInput) : "r"(prevKeyInput), "r"(inputMask));
#else
            prevKeyInput ^= inputMask;
#endif
            prevKeyInput &= inputMask;
            player->keyInput2 = prevKeyInput;
            prevKeyInput = partner->keyInput;
            inputMask = sp0[1];
            partner->keyInput = inputMask;
#ifndef NON_MATCHING
            asm("eor %0, %1, %2" : "=r"(prevKeyInput) : "r"(prevKeyInput), "r"(inputMask));
#else
            prevKeyInput ^= inputMask;
#endif
            prevKeyInput &= inputMask;
            partner->keyInput2 = prevKeyInput;
            if ((I(player->qWorldX) > 0x68C) && (I(player->qWorldY) > 0xB2) && (I(partner->qWorldX) > 0x664)
                && (I(partner->qWorldY) > 0xB2)) {
                boss->unk8 = 0x1EU;
                boss->unkC = 110;
                return;
            }
            break;
        case 110:
            if (--boss->unk8 == 0) {
                boss->unkC = 200;
                return;
            }
            break;
        case 200:
            gCamera.minY = 0x10;
            sub_358_807BCCC(boss);
            sub_358_807BEF0(boss);
            sub_358_807D6C4(boss);
            sub_358_807CBC8(boss);
            boss->unk10 = 0;
            boss->unk12 = 0;
            boss->unk8 = 1;
            boss->unkC = 0;
            gCurTask->main = Task_358_807B9B8;
            break;
        case 1000:
            player->qSpeedGround = 0;
            player->qSpeedAirX = 0;
            partner->qSpeedGround = 0;
            partner->qSpeedAirX = 0;
            sub_807A4A8();
            break;
    }
}

void Task_358_807B9B8(void)
{
    HyperEggRobo *boss = TASK_DATA(gCurTask);
    s32 temp_r1;
    u16 temp_r0;
    u16 temp_r0_2;
    u16 temp_r0_3;
    u16 temp_r0_4;
    u16 temp_r0_5;
    u16 temp_r0_6;
    u16 temp_r0_7;
    u16 temp_r0_8;

    switch (boss->unkC) {
        case 0:
            boss->unk8 = 0x3CU;
            boss->unkC = 1;
            break;
        case 1:
            boss->unk8 -= 1;
            if (boss->unk8 == 0) {
                m4aSongNumStart(SE_567);
                boss->unk8 = 0x78;
                boss->unkC = 0xAU;
                gDispCnt |= 0x100;
                CreateScreenShake(0x800U, 4U, 0U, -1, 0xD3U);
                sub_807FB7C(0xD2U);
            }
            break;
        case 10:
            boss->unk8 -= 1;
            if (boss->unk8 == 0) {
                boss->unkC = 0xCU;
            }
            break;
        case 12:
            if (I(boss->qWorld.y) < 0xB8) {
                sub_807FB7C(0xDCU);
                boss->unkC = 0xBU;
            }
            /* fallthrough */
        case 11:
            boss->qWorld.y -= 0x80;
            if (boss->qWorld.y > 0x9800) {

            } else {
                boss->unk8 = 0x3CU;
                boss->unkC = 0x14;
            }
            break;
        case 20:
            boss->unk8 -= 1;
            if (boss->unk8 == 0) {
                boss->unkC = 21;
            }
            break;
        case 21:
            boss->pos144[0].qWorld.x += Q(1);
            boss->pos144[1].qWorld.x -= Q(1);
            if (boss->pos144[0].qWorld.x > 0x613FF) {
                boss->unk8 = 0x1EU;
                boss->unkC = 0x1EU;
                m4aSongNumStop(SE_567);
                sub_8081A74(boss, 0, 1U);
            }
            break;
        case 30:
            boss->unk8 -= 1;
            if (boss->unk8 == 0) {
                boss->unk8 = 0x24;
                boss->unkC = 0x1FU;
                sub_8081A74(boss, 0, 0U);
                UpdateHandAnimation(boss, 0U, 4U);
                UpdateHandAnimation(boss, 1U, 4U);
            }
            break;
        case 31:
            boss->unk8 -= 1;
            if (boss->unk8 == 0) {
                boss->unk8 = 0x24;
                boss->unkC = 0x20;
                UpdateHandAnimation(boss, 0U, 5U);
                UpdateHandAnimation(boss, 1U, 5U);
            }
            break;
        case 32:
            boss->unk8 -= 1;
            if (boss->unk8 == 0) {
                sub_807FB7C(0xFAU);
                sub_807FB7C(0x14U);
                boss->unk8 = 0x1EU;
                boss->unkC = 100;
            }
            break;
        case 100:
            boss->unk8 -= 1;
            if (boss->unk8 == 0) {
                boss->unkC = 200;
            }
            break;
        case 200:
            boss->unk8 = 1;
            boss->unkC = 0;
            boss->unk1 = 0;
            gCurTask->main = Task_358_807BC04;
            break;
    }
    sub_358_807BD88(boss);
    sub_358_807BFEC(boss);
    sub_807DB60(boss);
    sub_807D81C(boss);
    sub_358_807C14C(boss);
    sub_80816C0(boss);
}

void Task_358_807BC04(void)
{
    HyperEggRobo *boss = TASK_DATA(gCurTask);

    gUnknown_08E2ED00[boss->unk1](boss);
    sub_807ED8C(boss);
    sub_358_807BD88(boss);
    sub_807DB60(boss);
    sub_807D81C(boss);
    sub_358_807BFEC(boss);
    sub_358_807C14C(boss);
    sub_80816C0(boss);

    {
        Player *p = &gPlayers[gStageData.playerIndex];
        if (I(p->qWorldY) >= 218) {
            if (!(p->moveState & MOVESTATE_DEAD)) {
                sub_807FB7C(0xA0U);
                SetPlayerCallback(p, Player_HitWithoutRingsUpdate);
            } else if ((p->callback != Player_HitWithoutRingsUpdate) && (p->callback != Player_800913C)
                       && (p->callback != Player_800DF9C)) {
                sub_807FB7C(0xA0U);
                SetPlayerCallback(p, Player_HitWithoutRingsUpdate);
            }
        }
    }
}

void sub_358_807BCCC(HyperEggRobo *boss)
{
    Background *bgBody = &boss->bgBody;

    boss->unk124 = 0;
    boss->unk128 = 0;
    boss->unk12C = 1;
    boss->unk12E = 0;
    boss->qWorld.x = Q(1656);
    boss->qWorld.y = Q(352);

    gBgScrollRegs[0][0] = 128 - (I(boss->qWorld.x) - gCamera.x);
    gBgScrollRegs[0][1] = 128 - (I(boss->qWorld.y) - gCamera.y);
    bgBody->graphics.dest = BG_CHAR_ADDR(3);
    bgBody->graphics.anim = 0;
    bgBody->layoutVram = BG_SCREEN_ADDR(27);
    bgBody->unk18 = 0;
    bgBody->unk1A = 0;
    bgBody->tilemapId = TM_HYPER_EGGROBO;
    bgBody->unk1E = 0;
    bgBody->unk20 = 0;
    bgBody->unk22 = 0;
    bgBody->unk24 = 0;
    bgBody->targetTilesX = 256 / TILE_WIDTH;
    bgBody->targetTilesY = 256 / TILE_WIDTH;
    bgBody->paletteOffset = 0;
    bgBody->flags = 0;
    DrawBackground(bgBody);
}

void sub_358_807BD88(HyperEggRobo *boss)
{
    s32 temp_r0_2;
    u16 var_r0;

    switch (boss->unk12E) {
        case 0: {
        } break;

        case 10:
            boss->qWorld.x = boss->unk124 + Q(gUnknown_080D5C80[boss->unk12C][0]);
            boss->qWorld.y = boss->unk128 + Q(gUnknown_080D5C80[boss->unk12C][1]);
            boss->unk12C = (boss->unk12C + 1) & 7;
            break;
        case 20:
            boss->qWorld.y += boss->unk128;
            if (boss->qWorld.y > 0x15FFF) {
                boss->unk12E = 0;
            }
            break;
    }
    gBgScrollRegs[0][0] = 128 - (I(boss->qWorld.x) - gCamera.x);
    gBgScrollRegs[0][1] = 128 - (I(boss->qWorld.y) - gCamera.y);
}

void sub_807BE58(HyperEggRobo *boss, u8 param1)
{
    switch (param1) {
        case 0:
            boss->unk124 = boss->qWorld.x;
            boss->unk128 = boss->qWorld.y;
            boss->unk12C = 0;
            boss->unk12E = 10;
            break;
        case 1:
            boss->unk12E = 0;
            boss->qWorld.x = boss->unk124;
            boss->qWorld.y = boss->unk128;
            break;
        case 10:
            boss->unk128 = 0x80;
            boss->unk12C = 0;
            boss->unk12E = 0x14;
            break;
    }
}

void sub_358_807BEF0(HyperEggRobo *boss)
{

    boss->qCockpitWorldPos.x = boss->qWorld.x;
    boss->qCockpitWorldPos.y = boss->qWorld.y - Q(72);

    {
        Sprite *s = &boss->spr250;
        s->tiles = ALLOC_TILES(ANIM_BOSS_FINAL_GLASS);
        s->anim = ANIM_BOSS_FINAL_GLASS;
        s->variant = 0;
        s->oamFlags = SPRITE_OAM_ORDER(22);
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->prevVariant = -1;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->hitboxes[0].index = -1;
        s->frameFlags = 0x2000;
        s->x = I(boss->qCockpitWorldPos.x) - gCamera.x;
        s->y = I(boss->qCockpitWorldPos.y) - gCamera.y;
        UpdateSpriteAnimation(s);

        s = &boss->spr228;
        s->tiles = VramMalloc(8U);
        s->anim = ANIM_BOSS_FINAL_EGGMAN;
        s->variant = 0;
        s->oamFlags = SPRITE_OAM_ORDER(22);
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->prevVariant = -1;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->hitboxes[0].index = -1;
        s->frameFlags = 0x2000;
        s->x = I(boss->qCockpitWorldPos.x) - gCamera.x;
        s->y = I(boss->qCockpitWorldPos.y) - gCamera.y;
        UpdateSpriteAnimation(s);
    }
}

void sub_358_807BFEC(HyperEggRobo *boss)
{
    boss->qCockpitWorldPos.x = boss->qWorld.x;
    boss->qCockpitWorldPos.y = boss->qWorld.y - Q(72);
    {
        Sprite *s = &boss->spr228;
        s->x = I(boss->qCockpitWorldPos.x) - gCamera.x;
        s->y = I(boss->qCockpitWorldPos.y) - gCamera.y;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);

        s = &boss->spr250;
        s->x = I(boss->qCockpitWorldPos.x) - gCamera.x;
        s->y = I(boss->qCockpitWorldPos.y) - gCamera.y;
        DisplaySprite(s);
    }
}

void sub_358_807C074(HyperEggRobo *boss)
{
    Sprite *s;
    s32 *temp_r1_2;
    s32 *temp_r2;
    s32 temp_r3;
    u8 *vram;
    u8 i;

    vram = VramMalloc(21);
    for (i = 0; i < ARRAY_COUNT(boss->sprPlatforms); i++) {
        s = &boss->sprPlatforms[i];
        s->tiles = vram;
        s->anim = ANIM_BOSS_7_WIDE_PLATFORM;
        s->variant = 0;
        s->oamFlags = SPRITE_OAM_ORDER(20);
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->prevVariant = -1;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->hitboxes[0].index = -1;
        s->frameFlags = 0x1000;
        boss->unk2C[i].unk10 = 1;
        boss->unk2C[i].unk12 = 0;
        boss->unk2C[i].unk8 = 0;
        boss->unk2C[i].unkC = 0;
        boss->unk2C[i].qWorld.x = Q(1567 + (i * 59));
        boss->unk2C[i].qWorld.y = Q(204);
        s->x = I(boss->unk2C[i].qWorld.x) - gCamera.x;
        s->y = I(boss->unk2C[i].qWorld.y) - gCamera.y;
        UpdateSpriteAnimation(s);
        s->hitboxes[0].b.bottom += 32;
    }
}

void sub_358_807C14C(HyperEggRobo *boss)
{
    s32 dy;
    u8 i;

    for (i = 0; i < ARRAY_COUNT(boss->unk2C); i++) {
        u8 lives = boss->lives;
        if ((lives == 0) && ((boss->unk2C[i].unk12 == 100) || (boss->unk2C[i].unk12 == 110))) {
            boss->unk2C[i].unkC = -Q(4);
            boss->unk2C[i].unk12 = 200;
        }

        dy = boss->unk2C[i].qWorld.y;
        boss->unk2C[i].qWorld.y += boss->unk2C[i].unkC;
        dy -= boss->unk2C[i].qWorld.y;
        switch (boss->unk2C[i].unk12) {
            case 0:
                break;
            case 100:
                if (boss->unk2C[i].qWorld.y >= 0xF400) {
                    boss->unk2C[i].qWorld.y = 0xF400;
                    boss->unk2C[i].unk10 = 120;
                    boss->unk2C[i].unk12 = 110;
                }
                break;
            case 110:
                if (--boss->unk2C[i].unk10 == 0) {
                    boss->unk2C[i].unkC = -boss->unk2C[i].unkC / 2;
                    boss->unk2C[i].unk12 = 200;
                }
                break;
            case 200:
                if (boss->unk2C[i].qWorld.y <= 0xCC00) {
                    boss->unk2C[i].qWorld.y = 0xCC00;
                    boss->unk2C[i].unkC = 0;
                    boss->unk2C[i].unk12 = 0;
                }
                break;
        }
        sub_807C374(&boss->sprPlatforms[i], boss->unk2C[i].qWorld.x, boss->unk2C[i].qWorld.y, 0, dy);
    }
}

u8 sub_807C244(Sprite *s, s32 qX, s32 qY, s32 arg3, s32 qArg4)
{
    HyperEggRobo *boss = TASK_DATA(gCurTask);
    Player *p;
    s32 absDX, absDY;
    u32 temp_r0;
    u8 i;
    u8 var_r6;

    var_r6 = 0;
    for (i = 0; i < ARRAY_COUNT(boss->players); i++) {
        p = boss->players[i];
        if (sub_802C080(p) == 0) {
            if ((0x20 & p->moveState) && (p->sprColliding == s)) {
                p->qWorldX -= arg3;
                if (!(p->moveState & MOVESTATE_IN_AIR)) {
                    p->qWorldY += Q(4);
                    p->qWorldY -= qArg4;
                    var_r6 |= 1 << i;
                } else {
                    p->qWorldY = (p->qWorldY - qArg4) - Q(2);
                }
            }

            absDX = I(ABS(p->qWorldX - qX));
            if (absDX <= 0x40) {
                absDY = ABS(p->qWorldY - qY);
                if (I(absDY) <= 0x40) {
                    temp_r0 = sub_8020950(s, I(qX), I(qY), p, 0U);
                    if (0x10000 & temp_r0) {
                        p->qWorldY += (s16)(temp_r0 << 8);
                    } else if (0x20000 & temp_r0) {
                        p->qWorldY += 0x100 + (s16)(temp_r0 << 8);
                        p->qSpeedAirY = 0;
                    }
                    if (0xC0000 & temp_r0) {
                        p->qWorldX += ((s32)(temp_r0 << 0x10) >> 0x18) << 8;
                        p->qSpeedAirX = 0;
                    }
                }
            }
        }
    }

    return var_r6;
}

u8 sub_807C374(Sprite *s, s32 qX, s32 qY, s32 arg3, s32 qArg4)
{
    HyperEggRobo *boss = TASK_DATA(gCurTask);
    Player *p;
    s32 var_r0;
    s32 var_r0_2;
    u8 result = 0;
    u8 i;

    for (i = 0; i < 2; i++) {
        p = boss->players[i];
        if (sub_802C080(p) == 0) {
            if ((p->moveState & 0x20) && (p->sprColliding == s)) {
                p->qWorldX -= arg3;
                if (qArg4 != 0) {
                    p->qWorldY += Q(4);
                    p->qWorldY -= qArg4;
                }
            }

            var_r0 = I(ABS(p->qWorldX - qX));
            if ((var_r0) <= 0x40) {
                var_r0_2 = I(ABS(p->qWorldY - qY));
                if (var_r0_2 <= Q(0.25)) {
                    u32 temp_r0 = sub_8020950(s, I(qX), I(qY), p, 0U);
                    if (0x10000 & temp_r0) {
                        p->qWorldY += Q_8_8(temp_r0);
                        result |= 1 << i;
                    } else if (0x20000 & temp_r0) {
                        p->qWorldY += Q(1);
                        p->qWorldY += Q_8_8(temp_r0);
                        p->qSpeedAirY = 0;
                    }
                    if (0xC0000 & temp_r0) {
                        p->qWorldX += Q(I((s16)temp_r0));
                        p->qSpeedAirX = 0;
                    }
                }
            }
        }
    }

    return result;
}

void sub_807C48C(Sprite *sprColliding, s32 qWorldX, s32 qWorldY)
{
    HyperEggRobo *boss = TASK_DATA(gCurTask);
    Player *p;
    s32 temp_r1;
    u32 temp_r1_2;
    u8 var_r5;

    for (var_r5 = 0; var_r5 < 2; var_r5++) {
        p = boss->players[var_r5];
        if (!sub_802C0D4(p) && (((p->charFlags.someIndex == 1)) || (p->charFlags.someIndex == 2) || (p->charFlags.someIndex == 4))) {
            if ((MOVESTATE_COLLIDING_ENT & p->moveState) && (p->sprColliding == sprColliding)) {
                p->moveState &= ~MOVESTATE_COLLIDING_ENT;
                p->moveState |= MOVESTATE_IN_AIR;
                p->sprColliding = NULL;
                sub_8016F28(p);
                p->charFlags.unk2C_04 = 0;
                Player_8005380(p);
            }
        }
    }
}

void sub_807C518(HyperEggRobo *arg0, u8 arg1)
{
    HyberEggRoboStrc144 *strc144 = &arg0->pos144[arg1];
    Sprite *s = &arg0->spr278[arg1];
    u8 i;

    for (i = 0; i < ARRAY_COUNT(arg0->players); i++) {
        Player *p = arg0->players[i];
        if (sub_802C080(p) == 0) {
            if (p->qWorldY > (strc144->qWorld.y + Q(s->hitboxes[0].b.bottom))) {
                if (p->moveState & MOVESTATE_COLLIDING_ENT) {
                    if ((p->sprColliding == &arg0->sprPlatforms[0]) || ((p->sprColliding == &arg0->sprPlatforms[1]))
                        || ((p->sprColliding == &arg0->sprPlatforms[2])) || (p->sprColliding == &arg0->sprPlatforms[3])) {
                        sub_8020CE0(s, I(strc144->qWorld.x), I(strc144->qWorld.y), 0, p);
                    }
                } else {
                    sub_8020CE0(s, I(strc144->qWorld.x), I(strc144->qWorld.y), 0, p);
                }
            }
        }
    }
}

void sub_807C5D0(void)
{
    HyperEggRobo *boss = TASK_DATA(gCurTask);
    u8 i;

    for (i = 0; i < 2; i++) {
        Player *p = boss->players[i];
        if ((p->charFlags.someIndex == 1) || (p->charFlags.someIndex == 2) || (p->charFlags.someIndex == 4)) {
            if (!sub_802C0D4(p)) {
                if (p->moveState & MOVESTATE_COLLIDING_ENT) {
                    if (p->sprColliding != &boss->sprPlatforms[0]) {
                        if (p->sprColliding != &boss->sprPlatforms[1]) {
                            if ((p->sprColliding != &boss->sprPlatforms[2]) && (p->sprColliding != &boss->sprPlatforms[3])) {
                                p->moveState &= ~0x20;
                                p->moveState |= 4;
                                p->sprColliding = NULL;
                                sub_8016F28(p);
                                p->charFlags.unk2C_04 = 0;
                                Player_8005380(p);
                            }
                        }
                    }
                }
            }
        }
    }
}

void sub_807C670(HyperEggRobo *boss)
{
    u8 sp0[4];
    u32 temp_r0_2;
    u8 var_r0;
    bool32 var_r5 = 0;
    memcpy(sp0, &gUnknown_080D5CA0, sizeof(sp0));

    temp_r0_2 = (u32)PseudoRandom32();
    temp_r0_2 %= 10000U;
    if (gStageData.difficulty == DIFFICULTY_NORMAL) {
        if (boss->lives <= 4) {
            var_r5 = 1;
        }
    } else if (boss->lives <= 3) {
        var_r5 = 1;
    }

    if (var_r5 == 0) {
        boss->unk1 = sp0[boss->unk12];
        boss->unk12 = (boss->unk12 + 1) & 3;
    } else {
        if (temp_r0_2 < 0x9C4) {
            boss->unk1 = 1;
        } else if (temp_r0_2 < 0x1388) {
            boss->unk1 = 2;
        } else if (temp_r0_2 < 0x1D4C) {
            boss->unk1 = 3;
        } else {
            boss->unk1 = 4;
        }
    }
    boss->unk8 = 1;
    boss->unkC = 0;
}

void sub_807C728(HyperEggRobo *boss)
{
    s32 var_r2 = 0;
    u8 i;

    switch (boss->unkC) {
        case 0:
            for (i = 0; i < ARRAY_COUNT(boss->unk194); i++) {
                boss->unk194[i].unk18 = 0;
                boss->unk194[i].qWorld.x = boss->qWorld.x;
                boss->unk194[i].qWorld.y = boss->qWorld.y - Q(32);
            }

            boss->unk2 = PseudoRandom32() & 1;
            boss->unkA = 600;
            boss->unk8 = 1;
            boss->unkC = 10;
            sub_807DB00(boss, 0U, 1);
            sub_807DB00(boss, 1U, 1);
            break;
        case 10:
            if (boss->unk2 == 0) {
                if (--boss->unkA == 0) {
                    var_r2 = 1;
                }
            } else if (boss->unk16 != 0) {
                var_r2 = 1;
            }

            if (var_r2 != 0) {
                for (i = 0; i < ARRAY_COUNT(boss->unk194); i++) {
                    if (boss->unk194[i].unk18 == 1) {
                        boss->unk194[i].unk14 = 239;
                    }
                }
                boss->unk8 = 0x3C;
                boss->unkC = 0x3E8;
            } else {
                if (--boss->unk8 == 0) {
                    if (!sub_807CD4C(boss)) {
                        sub_807CDF0(boss);
                        boss->unk8 = 0x3C;
                    } else {
                        boss->unk8 = 1;
                    }
                }
            }
            break;
        case 1000:
            if (--boss->unk8 == 0) {
                sub_807DB00(boss, 0, 5);
                sub_807DB00(boss, 1, 5);
                sub_8081BBC(boss);
            }
            break;
    }

    sub_807CFAC(boss);
    sub_807CCA8(boss);
}

void sub_807C8AC(HyperEggRobo *boss)
{
    switch (boss->unkC) {
        case 0:
            sub_807DB00(boss, 0U, 2);
            sub_807DB00(boss, 1U, 2);
            boss->unk8 = 0xF0;
            boss->unkE = 1;
            boss->unkC = 10;
            break;
        case 10:
            if (--boss->unk8 == 0) {
                boss->unkC = 20;
            }
            break;
        case 20:
            boss->unk3 = ((u32)((u32)PseudoRandom32() % 10000U) >> 2) & 3;
            boss->unk2 = 1;
            sub_807D8B4(boss, 1U, boss->unk3);
            boss->unkC = 100;
            break;
        case 100:
            if ((sub_807D9B4(boss, 0U) << 0x18) != 0) {
                boss->unkE += 1;
                boss->unkC = 200;
                return;
            }
            break;
        case 200:
            sub_807D8B4(boss, 0x14U, 0U);
            boss->unkC = 500;
            return;
        case 500:
            if ((sub_807D9B4(boss, 1U) << 0x18) != 0) {
                boss->unkC = 1000;
                return;
            }
            break;
        case 1000:
            sub_807DB00(boss, 0U, 5);
            sub_807DB00(boss, 1U, 5);
            sub_8081BBC(boss);
            break;
    }
}

void sub_807C9C0(HyperEggRobo *boss)
{
    switch (boss->unkC) {
        case 0:
            sub_807DB00(boss, 0U, 3);
            sub_807DB00(boss, 1U, 3);
            boss->unk8 = 1;
            boss->unkE = 0;
            boss->unkC = 10;
            break;

        case 10:
            if (sub_807D9B4(boss, 0U)) {
                boss->unkC = 1000;
                return;
            }
            break;

        case 1000:
            sub_807DB00(boss, 0U, 5);
            sub_807DB00(boss, 1U, 5);
            sub_8081BBC(boss);
            break;
    }
}

void sub_807CA38(HyperEggRobo *boss)
{
    switch (boss->unkC) {
        case 0x0:
            sub_807DB00(boss, 0U, 4);
            sub_807DB00(boss, 1U, 4);
            boss->unk8 = 1;
            boss->unkE = 0;
            boss->unkC = 10;
            break;

        case 10:
            if ((sub_807D9B4(boss, 2U) << 0x18) != 0) {
            block_28:
                boss->unk8 = 0x1E;
                boss->unkC = 0x64;
            }
            break;

        case 100:
            if (--boss->unk8 == 0) {
                boss->unkC = 0x6E;
            }
            if (boss->unk8 == 0xA) {
                if (boss->unkE == 0) {
                    if ((s32)(((s32)boss->players[0]->qWorldX >> 8) - gCamera.x) <= 0x77) {
                        boss->unk2 = 0;
                    } else {
                        boss->unk2 = 1;
                    }
                }
                sub_807DA34(boss, gUnknown_080D5C78[boss->unk2][boss->unkE]);
            }
            break;
        case 110:
            if ((sub_807D9B4(boss, 2U) << 0x18) != 0) {
                if (++boss->unkE <= 2U) {
                    boss->unk8 = 0x1E;
                    boss->unkC = 0x64;
                } else {
                    boss->unkC = 0x1FE;
                    boss->unk8 = 0x3C;
                }
            }
            break;
        case 500:
            if ((sub_807D9B4(boss, 0U) << 0x18) != 0) {
                boss->unkC = 1000;
            }
            break;
        case 510:
            if (--boss->unk8 == 0) {
                boss->unkC = 1000;
            }
            break;
        case 1000:
            sub_807DB00(boss, 0U, 5);
            sub_807DB00(boss, 1U, 5);
            sub_8081BBC(boss);
            break;
    }
}

void sub_807CB78(HyperEggRobo *boss)
{
    switch (boss->unkC) {
        case 0:
            break;
        case 10:
            if (--boss->unk8 == 0) {
                boss->unkC = 0x14;
                sub_807DB00(boss, 0, 10);
                sub_807DB00(boss, 1, 10);
            }
            break;
        case 20:
            break;
        case 100:
            boss->unk8 = 1;
            boss->unkC = 0;
            boss->unk1 = 0;
            break;
    }
}

void sub_358_807CBC8(HyperEggRobo *boss)
{
    Sprite *s;
    u8 i;

    u8 *vram = boss->vram18 = VramMalloc(0x74U);
    for (i = 0; i < 3; i++) {
        s = &boss->spr2C8[i];
        s->tiles = vram;
        s->anim = ANIM_BOSS_FINAL_PROJ;
        s->variant = 0;
        s->oamFlags = SPRITE_OAM_ORDER(20);
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->prevVariant = -1;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->hitboxes[0].index = -1;
        s->frameFlags = 0x1000;
        boss->unk194[i].qWorld.x = Q(0x678);
        boss->unk194[i].qWorld.y = Q(0x160);
        s->x = I(boss->unk194[i].qWorld.x) - gCamera.x;
        s->y = I(boss->unk194[i].qWorld.y) - gCamera.y;
        UpdateSpriteAnimation(s);
        boss->unk194[i].unk18 = 0;
        boss->unk194[i].unk1A = 1;
        vram += 0x480;
    }
}

void sub_807CCA8(HyperEggRobo *boss)
{
    Sprite *s;
    u8 i;

    for (i = 0; i < ARRAY_COUNT(boss->unk194); i++) {
        if (boss->unk194[i].unk18 != 0) {
            s = &boss->spr2C8[i];
            s->x = I(boss->unk194[i].qWorld.x) - gCamera.x;
            s->y = I(boss->unk194[i].qWorld.y) - gCamera.y;

            if (boss->unk194[i].unk1A != 0) {
                if (boss->unk194[i].unk1A & 1) {
                    UpdateSpriteAnimation(s);
                    DisplaySprite(s);
                }
                boss->unk194[i].unk1A -= 1;
            } else {
                UpdateSpriteAnimation(s);
                DisplaySprite(s);
            }
        }
    }
}

bool8 sub_807CD4C(HyperEggRobo *boss)
{
    bool8 result = FALSE;
    u8 i;

    if ((boss->unk194[0].unk18 != 0) && (boss->unk194[1].unk18 != 0) && (boss->unk194[2].unk18 != 0)) {
        return result;
    }

    for (i = 0; i < ARRAY_COUNT(boss->unk194); i++) {
        if (boss->unk194[i].unk18 != 0) {
            s32 x = boss->unk194[i].qWorld.x - boss->qWorld.x;
            s32 y = boss->unk194[i].qWorld.y + Q(32);
            y -= boss->qWorld.y;
            if (Sqrt(SQUARE(x) + SQUARE(y)) < Q(24)) {
                result = TRUE;
                break;
            }
        }
    }
    return result;
}

void sub_807CDF0(HyperEggRobo *boss)
{
    Sprite *s;
    u16 temp_r0_2;
    u32 temp_r0_3;
    u8 i;

    for (i = 0; i < ARRAY_COUNT(boss->unk194); i++) {
        if (boss->unk194[i].unk18 == 0) {
            boss->unk194[i].unk18 = 1;
            boss->unk194[i].unk14 = 0;
            boss->unk194[i].unk1A = 30;
            boss->unk194[i].qWorld.x = boss->qWorld.x;
            boss->unk194[i].qWorld.y = boss->qWorld.y;
            boss->unk194[i].qWorld.y -= Q(32);
            temp_r0_2 = (u32)PseudoRandom32() & 0x3FF;
            temp_r0_3 = temp_r0_2 >> 7;
            switch (temp_r0_3) {
                case 0:
                case 3:
                case 4:
                case 7:
                    boss->unk194[i].unk16 = temp_r0_2;
                    break;
                case 1:
                case 5:
                    boss->unk194[i].unk16 = temp_r0_2 - 0x80;
                    break;
                case 2:
                case 6:
                    boss->unk194[i].unk16 = temp_r0_2 + 0x80;
                    break;
            }

            boss->unk194[i].unk10 = gUnknown_080D5C50[boss->unk10];
            boss->unk194[i].unk8 = (COS(boss->unk194[i].unk16) * boss->unk194[i].unk10) / 0x4000;
            boss->unk194[i].unkC = (SIN(boss->unk194[i].unk16) * boss->unk194[i].unk10) / 0x4000;
            s = &boss->spr2C8[i];
            s->anim = ANIM_BOSS_FINAL_PROJ;
            s->variant = 0;
            m4aSongNumStart(SE_568);

            if (++boss->unk10 >= 3) {
                boss->unk10 = 0;
            }

            i = ARRAY_COUNT(boss->unk194);
        }
    }
}

void sub_807CFAC(HyperEggRobo *boss)
{
    u8 i;
    u8 sp8;
    s32 qBottomY;
    Sprite *s;
    s32 qWorldDX, qWorldDY;
    Player *player, *partner;

    for (i = 0; i < 3; i++) {
        s = &boss->spr2C8[i];
        switch (boss->unk194[i].unk18) {
            case 0: {
            } break;

            case 1: {
                qWorldDX = boss->unk194[i].qWorld.x;
                qWorldDY = boss->unk194[i].qWorld.y;
                boss->unk194[i].qWorld.x += boss->unk194[i].unk8;
                boss->unk194[i].qWorld.y += boss->unk194[i].unkC;
                sub_807D41C(boss, i);
                qWorldDX -= boss->unk194[i].qWorld.x;
                qWorldDY -= boss->unk194[i].qWorld.y;
                qBottomY = boss->unk194[i].qWorld.y + Q(s->hitboxes[0].b.bottom);
                sub_807D37C(boss, &boss->unk194[i]);
                if (boss->unk194[i].unk1A == 0) {
                    sp8 = sub_807C244(s, boss->unk194[i].qWorld.x, boss->unk194[i].qWorld.y, qWorldDX, qWorldDY);
                    player = boss->players[0];
                    if (sub_802C080(player) == 0) {
                        if (1 & sp8) {
                            if (((s32)(boss->unk194[i].qWorld.y >> 8) <= 32) && (player->framesInvulnerable == 0) && (boss->lives != 0)) {
                                Call__Player_8014550(player);
                            }
                        } else if ((player->qWorldY > qBottomY) && (boss->lives != 0)) {
                            sub_8020CE0(s, I(boss->unk194[i].qWorld.x), I(boss->unk194[i].qWorld.y), 0, player);
                        }
                    }
                    {
                        partner = boss->players[1];
                        if ((sub_802C080(partner) == 0) && !(2 & sp8) && (partner->qWorldY > qBottomY) && (boss->lives != 0)) {
                            sub_8020CE0(s, I(boss->unk194[i].qWorld.x), I(boss->unk194[i].qWorld.y), 0, partner);
                        }
                    }
                }

                if (boss->unk194[i].unk14 != 0) {
                    boss->unk194[i].unk14 += 1;
                    if (boss->unk194[i].unk14 != 0xB4) {
                        if (boss->unk194[i].unk14 == 0xF0) {
                            if (1 & sp8) {
                                player = boss->players[0];
                                if (sub_802C080(player) == 0) {
                                    Call__Player_8014550(player);
                                }
                            }
                            if (2 & sp8) {
                                partner = boss->players[1];
                                if (sub_802C080(partner) == 0) {
                                    Call__Player_8014550(partner);
                                }
                            }
                            boss->unk194[i].unk18 = 0x64;
                        }
                    }
                }
                if (sp8 != 0) {
                    if (boss->unk194[i].unk14 == 0) {
                        boss->unk194[i].unk14 = 1;
                    }
                } else {
                    boss->unk194[i].unk14 = sp8;
                }
            } break;

            case 100: {
                boss->unk194[i].unk14 = 0x1E;
                boss->unk194[i].unk18 = 0x6E;
                boss->unk194[i].unk1A = 0;
                m4aSongNumStart(SE_569);
                s->anim = ANIM_BOSS_FINAL_EXPLOSION;
                s->variant = 0;
                for (sp8 = 0; sp8 < ARRAY_COUNT(boss->players); sp8++) {
                    player = boss->players[sp8];
                    if ((player->moveState & MOVESTATE_COLLIDING_ENT) && (player->sprColliding == s)) {
                        player->moveState &= ~MOVESTATE_COLLIDING_ENT;
                        player->sprColliding = NULL;
                    }
                }
            } break;

            case 110: {
                if (--boss->unk194[i].unk14 == 0) {
                    boss->unk194[i].unk18 = 0;
                }
            } break;
        }
    }
}

void sub_807D2A4(HyberEggRoboStrc194 *strc194, u8 param1)
{
    u16 var_r2 = strc194->unk16;

    switch (param1) {
        case 0:
            if (var_r2 >= 0x300) {
                var_r2 = 0x400 - var_r2;
            } else {
                var_r2 = 0x400 - var_r2;
            }
            break;
        case 1:
            if (var_r2 >= 0x100) {
                var_r2 = 0x400 - var_r2;
            } else {
                var_r2 = 0x400 - var_r2;
            }
            break;
        case 2:
            if (var_r2 >= 0x200) {
                var_r2 = 0x600 - var_r2;
            } else {
                var_r2 = 0x200 - var_r2;
            }
            break;
        case 3:
            if (var_r2 >= 0x300) {
                var_r2 = 0x600 - var_r2;
            } else {
                var_r2 = 0x200 - var_r2;
            }
            break;
    }
    strc194->unk16 = var_r2 & 0x3FF;
    strc194->unk8 = (strc194->unk10 * COS(strc194->unk16)) / 0x4000;
    strc194->unkC = (strc194->unk10 * SIN(strc194->unk16)) / 0x4000;
}

s32 sub_807D37C(HyperEggRobo *boss, HyberEggRoboStrc194 *strc194)
{
    s16 temp_r1;
    s32 var_r5;
    u16 temp_r0;
    u16 temp_r7;

    var_r5 = 0;
    temp_r7 = ((s32)strc194->qWorld.x >> 8) - gCamera.x;
    temp_r0 = ((s32)strc194->qWorld.y >> 8) - gCamera.y;
    if (((s32)(temp_r0 << 0x10) <= 0) && ((u32)strc194->unk16 > 0x200U)) {
        sub_807D2A4(strc194, 0U);
        var_r5 = 1;
    }
    if (((s32)(s16)(((s32)strc194->qWorld.y >> 8) + 8) > 0xBF) && ((u32)strc194->unk16 <= 0x1FFU)) {
        if (var_r5 == 0) {
            sub_807D2A4(strc194, 1U);
            var_r5 = 2;
            goto block_7;
        }
        goto block_12;
    }
block_7:
    if (var_r5 == 0) {
        if (((s32)(s16)temp_r0 > 0xB3) || (temp_r1 = (s16)temp_r7, ((s32)temp_r1 <= -0x14)) || ((s32)temp_r1 > 0x103)) {
            strc194->unk18 = 0;
            var_r5 = 3;
        }
    } else {
    block_12:
        m4aSongNumStart(0x238U);
    }
    return var_r5;
}

// (90.45%) https://decomp.me/scratch/O3P3r
NONMATCH("asm/non_matching/game/sa3/bosses/boss_f__sub_807D41C.inc", bool32 sub_807D41C(HyperEggRobo *boss, u8 arg1))
{
    bool32 var_r7 = 0;
    u8 sp0[4];
    s32 sp8;
    HyberEggRoboStrc194 *temp_r4;
    HyberEggRoboStrc194 *temp_r5;
    s32 var_ip;
    s32 temp_r6;
    s32 var_r0_2;
    s32 var_r0_3;
    u8 i;

    memcpy(&sp0, &gUnknown_080D5CA4, sizeof(sp0));

    temp_r5 = &boss->unk194[arg1];
    for (i = sp0[arg1]; i < 3; i++) {
        if (i != arg1) {
            temp_r4 = &boss->unk194[i];
            if (temp_r4->unk18 != 0) {
                u32 len;
                var_ip = temp_r5->qWorld.x - temp_r4->qWorld.x;
                temp_r6 = temp_r5->qWorld.y - temp_r4->qWorld.y;
                len = Sqrt(SQUARE(var_ip) + SQUARE(temp_r6));
                if (I(len) < 20u) {
                    s32 qDX = (temp_r5->qWorld.x - temp_r4->qWorld.x);
                    s32 qDY = (temp_r5->qWorld.y - temp_r4->qWorld.y);

                    temp_r5->unk16 = SA2_LABEL(sub_8004418)(I(qDY), I(qDX));
                    temp_r4->unk16 = (temp_r5->unk16 + 0x200) & 0x3FF;
                    var_ip = (temp_r5->qWorld.x + temp_r4->qWorld.x) / 2;
                    temp_r6 = (temp_r5->qWorld.y + temp_r4->qWorld.y) / 2;
                    var_r0_2 = ((COS(temp_r5->unk16) * 11) / 0x40);
                    var_r0_3 = ((SIN(temp_r5->unk16) * 11) / 0x40);
                    temp_r5->qWorld.x = var_ip + (var_r0_2);
                    temp_r5->qWorld.y = temp_r6 + (var_r0_3);
                    temp_r5->unk8 = (COS(temp_r5->unk16) * temp_r5->unk10) / 0x4000;
                    temp_r5->unkC = (SIN(temp_r5->unk16) * temp_r5->unk10) / 0x4000;
                    var_r0_2 = (COS(temp_r4->unk16) * 11) / 0x40;
                    var_r0_3 = (SIN(temp_r4->unk16) * 11) / 0x40;
                    temp_r4->qWorld.x = var_r0_2 + var_ip;
                    temp_r4->qWorld.y = var_r0_3 + temp_r6;
                    temp_r4->unk8 = (COS(temp_r4->unk16) * temp_r4->unk10) / 0x4000;
                    temp_r4->unkC = (SIN(temp_r4->unk16) * temp_r4->unk10) / 0x4000;
                    var_r7 = 1;
                }
            }
        }
    }

    if (var_r7 != 0) {
        m4aSongNumStart(SE_568);
    }

    return var_r7;
}
END_NONMATCH

u8 sub_807D610(HyperEggRobo *boss, s32 arg1, u8 arg2)
{
    HyperEggRobo *sp0;
    HyberEggRoboStrc194 *temp_r4;
    u8 var_r7 = 0;
    u8 var_r2;

    for (var_r2 = 0; var_r2 < 3; var_r2++) {
        if (boss->unk194[var_r2].unk18 != 0) {
            if (arg2 == 0) {
                if (boss->unk194[var_r2].qWorld.x <= arg1) {
                    if (boss->unk194[var_r2].unk16 > 0x100) {
                        if (boss->unk194[var_r2].unk16 < 0x300) {
                            var_r7 = 0x80 | var_r2;
                            var_r2 = 3;
                        }
                    }
                }
            } else {
                if (boss->unk194[var_r2].qWorld.x >= arg1) {
                    if ((u32)(u16)(boss->unk194[var_r2].unk16 - Q(1)) > 0x200U) {
                        var_r7 = var_r2 | 0x80;
                        var_r2 = 3;
                    }
                }
            }
        }
    }

    return var_r7;
}

void sub_358_807D6C4(HyperEggRobo *boss)
{
    SpriteTransform *tf;
    Sprite *s;

    boss->pos144[0].qWorld.x = Q(0x5C4);
    boss->pos144[0].qWorld.y = Q(0x98);
    sub_807DB00(boss, 0U, 0U);
    boss->pos144[1].qWorld.x = Q(0x72C);
    boss->pos144[1].qWorld.y = Q(0x98);
    sub_807DB00(boss, 1U, 0U);
    s = &boss->spr278[0];
    tf = &boss->tf340[0];
    s->tiles = VramMalloc(64);
    s->anim = ANIM_BOSS_FINAL_HAND;
    s->variant = 0;
    s->oamFlags = 0x500;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x106A;
    s->x = I(boss->pos144[0].qWorld.x) - gCamera.x;
    s->y = I(boss->pos144[0].qWorld.y) - gCamera.y;
    tf->rotation = 0;
    tf->x = s->x;
    tf->y = s->y;
    tf->qScaleX = Q(1);
    tf->qScaleY = Q(1);
    UpdateSpriteAnimation(s);

    s = &boss->spr278[1];
    tf = &boss->tf340[1];
    s->tiles = VramMalloc(64);
    s->anim = ANIM_BOSS_FINAL_HAND;
    s->variant = 6;
    s->oamFlags = 0x500;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x106B;
    s->x = I(boss->pos144[1].qWorld.x) - gCamera.x;
    s->y = I(boss->pos144[1].qWorld.y) - gCamera.y;
    tf->rotation = 0;
    tf->x = s->x;
    tf->y = s->y;
    tf->qScaleX = Q(1);
    tf->qScaleY = Q(1);
    UpdateSpriteAnimation(s);
}

void sub_807D81C(HyperEggRobo *boss)
{
    Sprite *s;
    SpriteTransform *tf;
    s16 temp_r2;
    s16 temp_r2_2;

    s = boss->spr278;
    tf = &boss->tf340[0];
    s->x = I(boss->pos144[0].qWorld.x) - gCamera.x;
    s->y = I(boss->pos144[0].qWorld.y) - gCamera.y;
    tf->x = s->x;
    tf->y = s->y;
    TransformSprite(s, tf);
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
    s = &boss->spr278[1];
    tf = &boss->tf340[1];
    s->x = I(boss->pos144[1].qWorld.x) - gCamera.x;
    s->y = I(boss->pos144[1].qWorld.y) - gCamera.y;
    tf->x = s->x;
    tf->y = s->y;
    TransformSprite(s, tf);
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void sub_807D8B4(HyperEggRobo *boss, u8 param1, u8 param2)
{
    switch (param1) {
        case 0:
            if (param2 < 2) {
                boss->pos144[0].unk1A = param2 | 0x80;
                boss->pos144[1].unk16 = 0x3E8;
            } else {
                boss->pos144[1].unk1A = param2 | 0x80;
                boss->pos144[0].unk16 = 0x3E8;
            }
            break;
        case 1:
            switch (param2) {
                case 0:
                    boss->pos144[0].unk1A = 0x80;
                    boss->pos144[1].unk1A = 0x82;
                    break;
                case 1:
                    boss->pos144[0].unk1A = 0x80;
                    boss->pos144[1].unk1A = 0x83;
                    break;
                case 2:
                    boss->pos144[0].unk1A = 0x81;
                    boss->pos144[1].unk1A = 0x82;
                    break;
                case 3:
                    boss->pos144[0].unk1A = 0x81;
                    boss->pos144[1].unk1A = 0x83;
                    break;
            }
            break;
        case 10:
            boss->pos144[0].unk1A = 0;
            boss->pos144[1].unk1A = 0;
            boss->pos144[0].unk16 = 0x14;
            boss->pos144[1].unk16 = 0x14;
            break;
        case 20:
            boss->pos144[0].unk16 = 0x12C;
            boss->pos144[1].unk16 = 0x12C;
            break;
    }
}

u8 sub_807D9B4(HyperEggRobo *boss, u8 param1)
{
    u16 temp_r1_2;
    u16 temp_r1_3;
    u8 var_r3;

    var_r3 = 0;
    switch (param1) { /* irregular */
        case 0:
            if ((boss->pos144[0].unk16 == 0x3E8) && (boss->pos144[1].unk16 == boss->pos144[0].unk16)) {
                var_r3 = 1;
            }
            break;
        case 1:
            if ((boss->pos144[0].unk16 == 0x15E) && (boss->pos144[1].unk16 == boss->pos144[0].unk16)) {
                var_r3 = 1;
            }
            break;
        case 2:
            if ((boss->pos144[0].unk16 == 0x6E) && (boss->pos144[1].unk16 == 0x6E)) {
                var_r3 = 1;
            }
            break;
    }

    return var_r3;
}

// (86.58%) https://decomp.me/scratch/UmZSB
NONMATCH("asm/non_matching/game/sa3/bosses/boss_f__sub_807DA34.inc", void sub_807DA34(HyperEggRobo *boss, u8 param1))
{
    SomeMatrix sp0;
    SomeMatrix sp4;

    s16 var_r0;
    s32 temp_r1_2;
    s32 temp_r2;
    s32 temp_r2_2;
    u16 temp_r0;
    Sprite *s2;
#ifndef NON_MATCHING
    register HyberEggRoboStrc144 *temp_r6 asm("r6") = &boss->pos144[param1];
#else
    HyberEggRoboStrc144 *temp_r6 = &boss->pos144[param1];
#endif
    Player *p = boss->players[0];
    sp0.a = (I(p->qWorldX) - I(temp_r6->qWorld.x));
    sp0.b = (I(p->qWorldY) - I(temp_r6->qWorld.y));
    sp0.c = 0;

    sa2__sub_8085A9C(&sp0, 8U);
    temp_r6->qUnk8.x = sp0.a;
    temp_r6->qUnk8.y = sp0.b;
    temp_r2_2 = p->qWorldX - temp_r6->qWorld.x;
    temp_r1_2 = p->qWorldY - temp_r6->qWorld.y;
    temp_r6->unk24 = Sqrt(SQUARE(temp_r2_2) + SQUARE(temp_r1_2));
    temp_r6->unk1C = (temp_r6->unk24 >> 4);
    temp_r6->unk20 = 0;
    temp_r6->unk14 = 0xA;
    temp_r6->unk16 = 0xC8;

    s2 = &boss->spr278[1];
    if (param1 != 0) {
        s2->oamFlags = 0x4C0;
    } else {
        s2->oamFlags = 0x500;
    }
}
END_NONMATCH

#if 01
#else
void sub_807DB00(HyperEggRobo *boss, u8 arg1, u8 arg2)
{
    boss->pos144[arg1].qUnk8.x = 0;
    boss->pos144[arg1].qUnk8.y = 0;
    boss->pos144[arg1].unk14 = 1;
    boss->pos144[arg1].unk16 = 0;
    boss->pos144[arg1].unk18 = arg2;
    boss->pos144[arg1].unk19 = 0;
    boss->pos144[arg1].unk13 = 1;
}

void sub_807C518(HyperEggRobo *arg0, u8 arg1);
void sub_807DB60(HyperEggRobo *boss)
{
    u8 i;
    s32 spC;
    s32 sp10;
    HyberEggRoboStrc144 *strc144;
    Sprite *s;
    s32 temp_r6_2;
    s32 temp_sl;
    HyperEggRobo *boss2;
    u8 var_sb;

    for (i = 0; i < ARRAY_COUNT(boss->pos144); i++) {
        boss->unk11 = 0;
        strc144 = &boss->pos144[i];
        gUnknown_08E2ED18[strc144->unk18](boss, i);
        if ((gUnknown_08E2ED18[strc144->unk18] == sub_807E214) && (strc144->unk1B != 0)
            && (boss->players[0]->callback != PlayerCB_80819BC)) {
            strc144->unk1B = 0;
        }

        if ((strc144->unk13 != 0) && (boss->lives != 0)) {
            if (boss->unk11 != 0) {
                sub_807C518(boss, (u8)i);
            } else {
                s = &boss->spr278[i];
                temp_sl = strc144->qWorld.x;
                temp_r6_2 = strc144->qWorld.y;
                boss2 = TASK_DATA(gCurTask);
                for (var_sb = 0; var_sb < ARRAY_COUNT(boss2->players); var_sb++) {
                    Player *p = boss2->players[var_sb];
                    if (sub_802C080(p) == 0) {
                        if (p->moveState & MOVESTATE_COLLIDING_ENT) {
                            if ((p->sprColliding == &boss2->sprPlatforms[0]) || (p->sprColliding == &boss2->sprPlatforms[1])
                                || (p->sprColliding == &boss2->sprPlatforms[2]) || (p->sprColliding == &boss2->sprPlatforms[3])) {
                                sub_8020CE0(s, temp_sl >> 8, temp_r6_2 >> 8, 0, p);
                            }
                        } else {
                            sub_8020CE0(s, temp_sl >> 8, temp_r6_2 >> 8, 0, p);
                        }
                    }
                }
            }
        }

        sub_807F334(&boss->spr278[i], &boss->tf340[i], 0U, i);
    }
}

void sub_807DCD8(HyperEggRobo *boss, u8 param1)
{
    HyberEggRoboStrc144 *temp_r4;
    s16 temp_r0_2;
    s16 var_r0;
    s32 *var_r0_2;
    s32 temp_r1;
    s32 temp_r3_2;
    s32 temp_r3_3;
    s32 temp_r6;
    s32 var_r0_3;
    s32 var_r0_4;
    s32 var_r1;
    s32 var_r1_2;
    s32 var_r8;
    u8 temp_r3;

    temp_r4 = &boss->pos144[param1];
    var_r8 = 0;
    switch (temp_r4->unk16) {
        case 0:
            if (param1 == 0) {
                var_r1 = temp_r4->qWorld.x + Q(50);
            } else {
                var_r1 = temp_r4->qWorld.x - Q(50);
            }
            temp_r3 = sub_807D610(boss, var_r1, param1);
            if (temp_r3 != 0) {
                temp_r4->unk19 = temp_r3;
                temp_r4->unk16 = 10;
            }
            break;
        case 10:
            temp_r3_2 = 0x7F & temp_r4->unk19;
            if (boss->unk194[temp_r3_2].unk18 == 0) {
                temp_r4->unk19 = 0;
                temp_r4->unk14 = 0x3C;
                var_r0 = 0x14;
                temp_r4->unk16 = 0x14;
            } else {
                if (boss->unk194[temp_r3_2].qWorld.y > temp_r4->qWorld.y) {
                    boss->pos144[param1].qUnk8.y = +Q(2);
                } else {
                    boss->pos144[param1].qUnk8.y = -Q(2);
                }
                temp_r4->qWorld.y += temp_r4->qUnk8.y;
                temp_r3_3 = temp_r4->qWorld.x - boss->unk194[temp_r3_2].qWorld.x;
                var_r0_3 = ABS(temp_r3_3) >> 8;
                temp_r1 = temp_r4->qWorld.y - boss->unk194[temp_r3_2].qWorld.y;
                var_r0_4 = (ABS(temp_r1) >> 8);
                if (((var_r0_3) < 0x10) && (var_r0_4 < 0x20)) {
                    sub_807D2A4(&boss->unk194[temp_r3_2], (u8)(param1 + 2));
                    var_r8 = 1;
                }
                if (var_r8 != 0) {
                    m4aSongNumStart(SE_568);
                    temp_r4->unk19 = 0;
                    temp_r4->unk14 = 0x3C;
                    temp_r4->unk16 = 0x14;
                }
            }
            break;
        case 20:
            if (--temp_r4->unk14 == 0) {
                temp_r4->unk16 = 0;
            }
            break;
    }
}

void sub_807DE20(HyperEggRobo *boss, u8 param1)
{
    HyberEggRoboStrc144 *temp_r5;
    Sprite *temp_r0_2;
    SpriteTransform *temp_r2;
    s16 temp_r0_6;
    s16 temp_r0_7;
    s16 temp_r0_8;
    s32 *temp_r3_2;
    s32 temp_r0_11;
    s32 temp_r0_3;
    s32 temp_r0_4;
    s32 temp_r0_5;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r1_3;
    s32 temp_r1_6;
    s32 temp_r1_7;
    s32 temp_r2_2;
    s32 temp_r2_3;
    s32 temp_r2_5;
    s32 temp_r4;
    s32 temp_r4_2;
    s32 var_r0_2;
    s32 var_r0_3;
    s32 var_r0_4;
    s32 var_r0_5;
    s32 var_r0_6;
    s32 var_r0_7;
    s32 var_r0_8;
    s32 var_sl;
    u16 temp_r0_10;
    u16 temp_r0_9;
    u16 temp_r1_5;
    u16 temp_r6;
    u16 var_r0;
    u8 temp_r2_4;

    temp_r5 = &boss->pos144[param1];
    temp_r0_2 = &boss->spr278[param1];
    temp_r2 = &boss->tf340[param1];
    var_sl = 0;
    switch (temp_r5->unk16) {
        case 0: {
            temp_r5->qUnk8.y = -Q(2);
            temp_r5->unk1A = 0;
            temp_r5->unk16 = 10;
        } break;
        case 10: {
            if (param1 == 0) {
                if (temp_r2->rotation != 0x100) {
                    temp_r2->rotation = (temp_r2->rotation + 0x10) & 0x3FF;
                }
            } else {
                if (temp_r2->rotation != 0x300) {
                    temp_r2->rotation = (temp_r2->rotation - 0x10) & 0x3FF;
                }
            }
            temp_r5->qWorld.y += temp_r5->qUnk8.y;
            if (temp_r5->qWorld.y > (s32)(boss->qWorld.y - Q(32))) {
                return;
            }
            if (param1 == 0) {
                temp_r5->qUnk8.x = +Q(2);
            } else {
                temp_r5->qUnk8.x = -Q(2);
            }
            temp_r5->unk16 = 20;
        } break;
        case 20: {
            temp_r5->qWorld.x += temp_r5->qUnk8.x;
            if (param1 == 0) {
                if (temp_r5->qUnk8.x >= 0) {
                    if (temp_r5->qWorld.x >= 0x66800) {
                        temp_r5->qWorld.x = 0x66800;
                        temp_r5->qUnk8.x = -temp_r5->qUnk8.x;
                    }
                } else {
                    if (temp_r5->qWorld.x <= 0x61400) {
                        temp_r5->qWorld.x = 0x61400;
                        temp_r5->qUnk8.x = -temp_r5->qUnk8.x;
                    }
                }
            } else if (temp_r5->qUnk8.x >= 0) {
                if (temp_r5->qWorld.x >= 0x6DC00) {
                    temp_r5->qWorld.x = 0x6DC00;
                    temp_r5->qUnk8.x = -temp_r5->qUnk8.x;
                }
            } else {
                if (temp_r5->qWorld.x <= 0x68800) {
                    temp_r5->qWorld.x = 0x68800;
                    temp_r5->qUnk8.x = -temp_r5->qUnk8.x;
                }
            }
            temp_r2_4 = temp_r5->unk1A;
            if (!(0x80 & temp_r2_4)) {
                return;
            }
            temp_r1_7 = boss->unk2C[0x7F & temp_r2_4].qWorld.x;
            temp_r2_5 = temp_r1_7 - temp_r5->qWorld.x;
            var_r0_8 = temp_r2_5;
            if (temp_r2_5 < 0) {
                var_r0_8 = 0 - temp_r2_5;
            }
            if ((s32)(var_r0_8 >> 8) > 1) {
                return;
            }
            temp_r5->qWorld.x = temp_r1_7;
            temp_r5->unk14 = 0x1E;
            temp_r5->unk16 = 30;
            temp_r5->qUnk8.y = 0x600;
        } break;
        case 30: {
            if (--temp_r5->unk14 == 0) {
                temp_r5->unk16 = 100;
            }
        } break;
        case 100: {
            temp_r4_2 = temp_r5->qWorld.y;
            temp_r5->qWorld.y += temp_r5->qUnk8.y;
            temp_r4_2 -= temp_r5->qUnk8.y;
            sub_807F334(temp_r0_2, temp_r2, 1U, param1);
            sub_807C244(temp_r0_2, temp_r5->qWorld.x, temp_r5->qWorld.y, 0, temp_r4_2);
            boss->unk11 = 1;
            temp_r1 = temp_r5->unk1A & 0x7F;
            if (boss->unk2C[temp_r1].unkC <= 0) {
                var_r0_2 = ABS((boss->pos144[param1].qWorld.y) - (boss->unk2C[temp_r1].qWorld.y));
                if (I(var_r0_2) < 20) {
                    boss->unk2C[temp_r1].unkC = boss->pos144[param1].qUnk8.y;
                    boss->unk2C[temp_r1].unk12 = 100;
                    m4aSongNumStart(SE_570);
                }
            }
            if ((s32)temp_r5->qWorld.y <= 0xF3FF) {
                return;
            }
            temp_r5->qUnk8.y = -Q(1.5);
            temp_r0_5 = PseudoRandom32() & 3;
            temp_r5->unk14 = gUnknown_080D5C70[temp_r0_5];
            temp_r5->unk16 = 110;
        } break;
        case 110: {
            sub_807F334(temp_r0_2, temp_r2, 1U, param1);
            if (--temp_r5->unk14 == 0) {
                temp_r5->unk16 = 120;
                temp_r5->unk13 = 1;
            }
        } break;
        case 120: {
            temp_r4 = temp_r5->qWorld.y;
            temp_r0_3 = temp_r4 + temp_r5->qUnk8.y;
            temp_r5->qWorld.y = temp_r0_3;
            temp_r4 -= temp_r5->qWorld.y;
            sub_807F334(temp_r0_2, temp_r2, 1U, param1);
            sub_807C244(temp_r0_2, temp_r5->qWorld.x, temp_r5->qWorld.y, 0, temp_r4);
            boss->unk11 = 1;
            if (temp_r5->qWorld.y > (boss->qWorld.y - Q(64))) {
                return;
            }
            sub_807C48C(temp_r0_2, temp_r5->qWorld.x, temp_r5->qWorld.y);
            temp_r5->unk13 = 0;
            temp_r5->unk16 = 200;
        } break;
        case 200:
            if (param1 == 0) {
                temp_r2->rotation = (temp_r2->rotation - 0x10) & 0x3FF;
                if (temp_r2->rotation == 0x100) {
                    var_sl = 1;
                }
            } else {
                temp_r2->rotation = (temp_r2->rotation + 0x10) & 0x3FF;
                if (temp_r2->rotation == 0x300) {
                    var_sl = 1;
                }
            }

            if (var_sl != 0) {
                temp_r5->unk14 = 0x1E;
                temp_r5->unk16 = 210;
                break;
            }
            break;
        case 210: {
            if (--temp_r5->unk14 == 0) {
                temp_r5->unk16 = 1000;
            }
        } break;
        case 300: {
            if (param1 == 0) {
                temp_r5->qUnk8.x = -Q(2);
            } else {
                temp_r5->qUnk8.x = +Q(2);
            }
            temp_r5->unk16 = 310;
        } break;
        case 310: {
            temp_r5->qWorld.x += temp_r5->qUnk8.x;
            if (param1 == 0) {
                if (temp_r5->qWorld.x <= 0x61400) {
                    temp_r5->qWorld.x = 0x61400;
                    temp_r5->unk16 = 320;
                }
            } else if (temp_r5->qWorld.x >= 0x6DC00) {
                temp_r5->qWorld.x = 0x6DC00;
                temp_r5->unk16 = 320;
            }
        } break;
        case 320: {
            if (param1 == 0) {
                temp_r2->rotation = (temp_r2->rotation - 0x10) & 0x3FF;
            } else {
                temp_r2->rotation = (temp_r2->rotation + 0x10) & 0x3FF;
            }
            if (temp_r2->rotation == 0) {
                temp_r5->unk13 = 1;
                temp_r5->unk16 = 350;
            }
        } break;
    }
}

void sub_807C5D0(void);
void sub_807E214(HyperEggRobo *boss, u8 param1)
{
    Player *p;
    s32 sp4;
    Sprite sp8;
    HyberEggRoboStrc144 *temp_r4;
    Player *temp_r5;
    Player *temp_r5_2;
    s16 temp_r0_2;
    s16 temp_r0_5;
    s16 temp_r0_6;
    s32 temp_r0;
    s32 temp_r1_3;
    s32 temp_r1_4;
    s32 temp_r1_5;
    s32 temp_r1_6;
    s32 temp_r3;
    s32 temp_r7;
    s32 var_r0_3;
    s32 var_r0_4;
    s32 var_r0_5;
    s32 var_r7;
    u16 temp_r1;
    u16 var_r0;
    u16 var_r0_2;
    u8 temp_r0_3;
    u8 temp_r0_4;
    u8 temp_r6;
    HyberEggRoboStrc144 *temp_r1_2;

    temp_r4 = &boss->pos144[param1];
    var_r7 = 0;
    switch (temp_r4->unk16) {
        case 0: {
            temp_r4->qUnk8.x = 0;
            temp_r4->qUnk8.y = 0;
            temp_r4->unk1B = 0;
            temp_r4->unk1C = 0;
            temp_r4->unk14 = 0x79;
            temp_r4->unk16 = 10;
        } break;

        case 10: {
            temp_r4->qUnk8.y += temp_r4->unk1C;
            if (temp_r4->qUnk8.y < 0) {
                var_r0_3 = -0x200;
                if (temp_r4->qUnk8.y <= 0xFFFFFE00) {
                    goto block_26;
                }
            } else if (temp_r1_5 > 0x1FF) {
                var_r0_3 = 0x200;
            block_26:
                temp_r4->qUnk8.y = var_r0_3;
            }
            temp_r4->qWorld.y += temp_r4->qUnk8.y;
            if (--temp_r4->unk14 == 0) {
                if (param1 == 0) {
                    temp_r4->qUnk8.x = +Q(4);
                } else {
                    temp_r4->qUnk8.x = -Q(4);
                }
                temp_r4->unk16 = 0x64U;
                temp_r4->unk13 = 0;
                return;
            }
            if ((temp_r4->unk14 % 10) == 0) {
                if (temp_r4->qWorld.y > boss->players[0]->qWorldY - Q(16)) {
                    temp_r4->unk1C = -0x40;
                } else {
                    temp_r4->unk1C = +0x40;
                }
            }
        } break;

        case 100: {
            temp_r3 = temp_r4->qWorld.x;
            temp_r1_6 = temp_r3 + temp_r4->qUnk8.x;
            temp_r4->qWorld.x = temp_r1_6;
            if (param1 == 0) {
                if (temp_r1_6 >= 0x66800) {
                    temp_r4->qWorld.x = 0x66800;
                    var_r7 = 1;
                }
            } else {
                var_r0_5 = 0x68800;
                if (temp_r1_6 <= 0x68800) {
                    temp_r4->qWorld.x = 0x68800;
                    var_r7 = 1;
                }
                //                p = NULL;
            }
            temp_r3 -= temp_r4->qWorld.x;
            sub_807C244(&boss->spr278[param1], temp_r4->qWorld.x, temp_r4->qWorld.y, temp_r3, 0);
            if (var_r7 == 0) {
                return;
            }
            temp_r4->unk16 = 0xC8U;
            if (param1 == 0) {
                return;
            }
            sub_807C5D0();
            sp8.hitboxes[0].index = 0;
            sp8.hitboxes[0].b.left = -16;
            sp8.hitboxes[0].b.top = -16;
            sp8.hitboxes[0].b.right = 16;
            sp8.hitboxes[0].b.bottom = 30;
            temp_r5_2 = boss->players[0];
            if (temp_r5_2->framesInvulnerable == 0) {
                p = temp_r5_2;
                if (sub_8020700(&sp8, I(boss->qWorld.x), I(temp_r4->qWorld.y), 0, 0, 0) != 0) {
                    temp_r4->unk1B = 1;
                    sub_807FB7C(0xA0U);
                    sub_8081A10(temp_r5_2);
                    temp_r5_2->qWorldX = boss->qWorld.x;
                    temp_r5_2->qWorldY = temp_r4->qWorld.y;
                }
            }
            m4aSongNumStart(SE_571);
        } break;

        case 200: {
            if (param1 == 0) {
                return;
            }

            temp_r1_2 = temp_r4 - 1;
            if (temp_r1_2->unk16 != 0xC8) {
                return;
            }
            if (temp_r4->unk1B != 0) {
                temp_r1_2->unk16 = temp_r4->unk16 = 0x12C;
            } else {
                temp_r1_2->unk16 = temp_r4->unk16 = 0x1F4;
            }
            temp_r4->qUnk8.x = -temp_r4->qUnk8.x;
            temp_r1_2->qUnk8.x = -temp_r1_2->qUnk8.x;
        } break;

        case 300: {
            temp_r4->qUnk8.y = -0x800;
            temp_r4->unk1B = 4;
            temp_r4->unk16 = 0x136U;
        } break;

        case 310: {
            temp_r4->qWorld.y += temp_r4->qUnk8.y;
            temp_r4->qUnk8.y += 0x80;
            if ((param1 != 0) && (temp_r4->unk1B != 0)) {
                boss->players[0]->qWorldY = temp_r4->qWorld.y;
            }
            if ((temp_r4->qWorld.y >= 0xB000) && (temp_r4->qUnk8.y >= 0)) {
                temp_r4->qWorld.y = 0xB000;
                temp_r4->unk14 = 0x1E;
                temp_r4->unk16 = 0x140U;
                if (param1 != 0) {
                    m4aSongNumStart(SE_572);
                    CreateScreenShake(0x800U, 0x20U, 0U, -1U, 0x91);
                }
            }
        } break;

        case 320: {
            if (--temp_r4->unk14 == 0) {
                if (temp_r4->unk1B != 0) {
                    temp_r4->unk1B--;
                }

                if (temp_r4->unk1B <= 1U) {
                    if (param1 != 0) {
                        temp_r5 = boss->players[0];
                        if (temp_r4->unk1B != 0) {
                            if ((temp_r5->framesInvulnerable > 0) || (temp_r5->framesInvincible > 0)) {
                                temp_r5->qCamOffsetY = 0;
                                temp_r5->moveState &= ~0x20;
                                temp_r5->sprColliding = NULL;
                                SetPlayerCallback(temp_r5, Player_8008CD0);
                                temp_r5->framesInvulnerable = 0x78;
                            } else {
                                Player_8014550(temp_r5);
                            }
                        }
                    }
                    temp_r4->unk16 = 0x1F4U;
                    temp_r4->unk13 = 1;
                    return;
                }
                temp_r4->qUnk8.y = -0xA00;
                temp_r4->unk16 = 0x136U;
            }
        } break;

        case 500: {
            temp_r4->qWorld.x += temp_r4->qUnk8.x;
            if (param1 == 0) {
                if (temp_r4->qWorld.x <= 0x61400) {
                    temp_r4->qWorld.x = 0x61400;
                    var_r7 = 1;
                }
            } else {
                if (temp_r4->qWorld.x >= 0x6DC00) {
                    temp_r4->qWorld.x = 0x6DC00;
                    var_r7 = 1;
                }
            }

            if (var_r7 != 0) {
                temp_r4->unk16 = 0x3E8;
            }
        } break;
    }
}

void sub_807E54C(HyperEggRobo *boss, u8 param1)
{
    s16 sp0[3];
    HyberEggRoboStrc144 *temp_r5;
    Sprite *var_r2;
    Sprite *var_r2_2;
    SpriteTransform *temp_r3;
    s16 temp_r0;
    s16 temp_r0_2;
    s16 temp_r0_3;
    s16 temp_r0_5;
    s32 temp_r0_4;
    s32 temp_r0_7;
    s32 temp_r0_8;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r2_2;
    s32 temp_r2_3;
    s32 temp_r2_4;
    s32 var_r0;
    s32 var_r0_10;
    s32 var_r0_12;
    s32 var_r0_14;
    s32 var_r0_2;
    s32 var_r0_3;
    s32 var_r0_4;
    s32 var_r0_5;
    s32 var_r0_6;
    s32 var_r0_7;
    s32 var_r0_8;
    s32 var_r0_9;
    s32 var_r1;
    s32 var_r1_2;
    s32 var_r4;
    u16 temp_r0_6;
    u16 temp_r1_3;
    u16 temp_r2;
    u16 temp_r3_2;
    u16 temp_r3_3;
    temp_r5 = &boss->pos144[param1];
    temp_r3 = &boss->tf340[param1];
    var_r4 = 0;
    temp_r2 = temp_r5->unk16;
    switch (temp_r2) {
        case 0x0:
            switch (param1) {
                case 0: {
                    Sprite *s = &boss->spr278[0];
                    s->anim = sBossFinalAnimsHandsLeft[1][0];
                    s->variant = sBossFinalAnimsHandsLeft[1][1];
                } break;
                case 1: {
                    Sprite *s = &boss->spr278[1];
                    s->anim = sBossFinalAnimsHandsRight[1][0];
                    s->variant = sBossFinalAnimsHandsRight[1][1];
                } break;
            }
            if (param1 == 0) {
                var_r0_14 = (s32)temp_r5->qWorld.x >> 8;
                var_r1_2 = 0x630;
            } else {
                var_r0_14 = (s32)temp_r5->qWorld.x >> 8;
                var_r1_2 = 0x6C0;
            }
            temp_r0_7 = (sp0[0] & 0xFFFF0000) | (u16)(var_r1_2 - var_r0_14);
            sp0[0] = temp_r0_7;
            sp0[1] = (u16)temp_r0_7 | ((0x60 - ((s32)temp_r5->qWorld.y >> 8)) << 0x10);
            sp0[2] &= 0xFFFF0000;
            sa2__sub_8085A9C((void *)&sp0, 8U);
            temp_r5->qUnk8.x = sp0[0] * 2;
            temp_r5->qUnk8.y = sp0[1] * 2;
            temp_r5->unk10 = 0x300U;
            temp_r5->unk16 = 0xAU;
            break;
        case 10: /* switch 1 */
            temp_r5->qWorld.x += temp_r5->qUnk8.x;
            temp_r0_8 = temp_r5->qWorld.y + temp_r5->qUnk8.y;
            temp_r5->qWorld.y = temp_r0_8;
            if (temp_r0_8 <= 0x6000) {
                temp_r5->unk13 = 0;
                temp_r5->unk14 = (s16)temp_r2;
                temp_r5->unk16 = 0x14U;
            }
            if (param1 == 0) {
                if (temp_r3->rotation == 0x100) {
                    return;
                }
                var_r0_12 = temp_r3->rotation + 0x10;
                temp_r3->rotation = var_r0_12 & 0x3FF;
                break;
            }
            temp_r1_3 = temp_r3->rotation;
            if (temp_r1_3 == 0x300) {
                return;
            }
            var_r0_12 = temp_r1_3 - 0x10;
            temp_r3->rotation = var_r0_12 & 0x3FF;
            break;
        case 20: /* switch 1 */
            temp_r0_2 = (u16)temp_r5->unk14 - 1;
            temp_r5->unk14 = temp_r0_2;
            if ((temp_r0_2 << 0x10) != 0) {
                return;
            }
            temp_r5->unk14 = 0;
            temp_r5->unk16 = 0x64U;
            return;
        case 100:
            if (param1 == 0) {
                temp_r3_2 = temp_r5->unk10;
                var_r0 = (COS(temp_r3_2) * 24) / 0x40;
                var_r0_2 = (SIN(temp_r3_2) * 24) / 0x40;
                temp_r5->qWorld.x = (0x63000 + var_r0);
                temp_r5->qWorld.y = (0x7800 + var_r0_2);
                var_r0_3 = temp_r5->unk10 - 0x10;
            } else {
                temp_r3_3 = temp_r5->unk10;
                var_r0_4 = (COS(temp_r3_3) * 24) / 0x40;
                var_r0_5 = (SIN(temp_r3_3) * 24) / 0x40;
                temp_r5->qWorld.x = (var_r0_4) + 0x6C000;
                temp_r5->qWorld.y = (var_r0_5) + 0x7800;
                var_r0_3 = temp_r5->unk10 + 0x10;
            }
            temp_r5->unk10 = (u16)(var_r0_3 & 0x3FF);
            temp_r5->unk14 += 0x10;
            if (temp_r5->unk14 <= 0x07FFu) {
                return;
            }
        block_93:
            temp_r5->unk16 = 0x6EU;
            break;
        case 200: /* switch 1 */
            temp_r0 = (u16)temp_r5->unk14 - 1;
            temp_r5->unk14 = temp_r0;
            if ((temp_r0 << 0x10) != 0) {
                return;
            }
            m4aSongNumStart(0x23DU);
            temp_r5->unk16 = 210;
            break;
        case 210:
            temp_r1_2 = temp_r5->unk20;
            if (temp_r1_2 < (s32)temp_r5->unk24) {
                temp_r2_3 = temp_r5->unk1C;
                temp_r5->unk20 = (s32)(temp_r1_2 + temp_r2_3);
                temp_r5->qWorld.x += (temp_r2_3 * temp_r5->qUnk8.x) / 0x100;
                temp_r5->qWorld.y += (temp_r2_3 * temp_r5->qUnk8.y) / 0x100;
            } else {
                var_r4 = 1;
            }
            if (temp_r3->qScaleX <= 0x1FF) {
                temp_r3->qScaleX += 0x10;
                temp_r3->qScaleY += 0x10;
            } else {
                var_r4 |= 2;
            }
            if ((s32)temp_r3->qScaleX > 0x180) {
                sub_807F334(&boss->spr278[param1], temp_r3, 2U, param1);
                temp_r5->unk13 = 1;
            }
            if (var_r4 != 3) {
                return;
            }
            temp_r5->unk14 = 0xA;
            temp_r5->unk16 = 220;
            break;

        case 220: {
            if (--temp_r5->unk14 != 0) {
                return;
            }
            temp_r5->unk16 = 230;
            temp_r5->unk13 = 0;
        } break;

        case 230:
            if (temp_r5->unk20 > 0) {
                temp_r5->unk20 -= temp_r5->unk1C;
                temp_r2_2 = -temp_r5->unk1C;
                temp_r5->qWorld.x += (temp_r2_2 * temp_r5->qUnk8.x) / 0x100;
                temp_r5->qWorld.y += (temp_r2_2 * temp_r5->qUnk8.y) / 0x100;
            } else {
                var_r4 = 1;
            }
            if (temp_r3->qScaleX > 0x100) {
                temp_r3->qScaleX -= 0x10;
                temp_r3->qScaleY -= 0x10;
            } else {
                var_r4 |= 2;
            }
            if (var_r4 == 3) {
                temp_r5->unk16 = 0x6EU;
            }
            break;

        case 300:
            if (param1 == 0) {
                var_r0_10 = (s32)temp_r5->qWorld.x >> 8;
                var_r1 = 0x614;
            } else {
                var_r0_10 = (s32)temp_r5->qWorld.x >> 8;
                var_r1 = 0x6DC;
            }
            sp0[0] = (s16)(var_r1 - var_r0_10);
            sp0[1] = (s16)(0x98 - I(temp_r5->qWorld.y));
            sp0[2] = 0;
            sa2__sub_8085A9C((UNK_8085D14 *)&sp0, 8U);
            temp_r5->qUnk8.x = sp0[0] * 2;
            temp_r5->qUnk8.y = sp0[1] * 2;
            switch (param1) {
                case 0:
                    var_r2 = &boss->spr278[0];
                    var_r2->anim = sBossFinalAnimsHandsLeft[2][0];
                    var_r2->variant = sBossFinalAnimsHandsLeft[2][1];
                    break;
                case 1:
                    var_r2 = &boss->spr278[1];
                    var_r2->anim = sBossFinalAnimsHandsRight[2][0];
                    var_r2->variant = sBossFinalAnimsHandsRight[2][1];
                    break;
            }
            temp_r5->unk13 = 1;
            temp_r5->unk16 = 310;
            break;

        case 310: {
            temp_r5->qWorld.x += temp_r5->qUnk8.x;
            temp_r5->qWorld.y += temp_r5->qUnk8.y;
            if (param1 == 0) {
                if (temp_r5->qWorld.x <= 0x61400) {
                    temp_r5->unk16 = 0x3E8U;
                }
                if (temp_r3->rotation != 0) {
                    temp_r3->rotation = (temp_r3->rotation - 0x10) & 0x3FF;
                }
            } else {
                if (temp_r5->qWorld.x >= 0x6DC00) {
                    temp_r5->unk16 = 0x3E8U;
                }
                if (temp_r3->rotation != 0) {
                    temp_r3->rotation = (temp_r3->rotation + 0x10) & 0x3FF;
                }
            }
        } break;
    }
}

void sub_807E99C(HyperEggRobo *boss, u8 param1)
{
    s32 sp0[3];
    HyberEggRoboStrc144 *temp_r5;
    Sprite *var_r2;
    SpriteTransform *tf;
    s32 temp_r0_2;
    s32 temp_r3_2;
    s32 var_r0;
    s32 var_r1;
    u16 temp_r0_3;
    u16 temp_r0_4;
    HyberEggRoboStrc144 *temp_r1;

    temp_r5 = &boss->pos144[param1];
    tf = &boss->tf340[param1];
    switch (temp_r5->unk16) { /* switch 1; irregular */
        case 0:
            if (param1 == 0) {
                var_r1 = (s32)boss->qCockpitWorldPos.x >> 8;
                var_r0 = ((s32)temp_r5->qWorld.x >> 8) + 0x20;
            } else {
                var_r1 = (s32)boss->qCockpitWorldPos.x >> 8;
                var_r0 = ((s32)temp_r5->qWorld.x >> 8) - 0x20;
            }
            temp_r0_2 = (sp0[0] & 0xFFFF0000) | (u16)(var_r1 - var_r0);
            sp0[0] = temp_r0_2;
            sp0[0] = (u16)temp_r0_2 | ((((s32)boss->qCockpitWorldPos.y >> 8) - ((s32)temp_r5->qWorld.y >> 8)) << 0x10);
            sp0[2] &= 0xFFFF0000;
            sa2__sub_8085A9C((void *)sp0, 8U);
            temp_r5->qUnk8.x = sp0[0] * 2;
            temp_r5->qUnk8.y = sp0[1] * 2;
            temp_r5->unk16 = 10;
            break;
        case 10:
            temp_r3_2 = temp_r5->qWorld.x + temp_r5->qUnk8.x;
            temp_r5->qWorld.x = temp_r3_2;
            temp_r5->qWorld.y += temp_r5->qUnk8.y;
            if (param1 == 0) {
                if ((s32)(boss->qCockpitWorldPos.x + 0xFFFFE000) <= temp_r3_2) {
                    temp_r5->unk16 = 0x14;
                }
            } else if ((s32)(boss->qCockpitWorldPos.x + 0x2000) >= temp_r3_2) {
                temp_r5->unk16 = 0x14;
            }
            break;
        case 20:
            if (param1 != 0) {
                temp_r1 = temp_r5 - 1;
                if ((temp_r5->unk16 == 0x14) && (temp_r1->unk16 == 0x14)) {
                    temp_r5->unk16 = 0x1EU;
                    temp_r1->unk16 = 0x1EU;
                }
            }
            break;
        case 30:
            switch (param1) {
                case 0: /* switch 2 */
                    var_r2 = &boss->spr278[0];
                    var_r2->anim = sBossFinalAnimsHandsLeft[4][0];
                    var_r2->variant = sBossFinalAnimsHandsLeft[4][1];
                    break;
                case 1: /* switch 2 */
                    var_r2 = &boss->spr278[1];
                    var_r2->anim = sBossFinalAnimsHandsRight[4][0];
                    var_r2->variant = sBossFinalAnimsHandsRight[4][1];
                    break;
            }
            temp_r5->unk16 = 0x1F;
            break;
        case 31:
            if (param1 == 0) {
                temp_r0_3 = (tf->rotation - 8) & 0x3FF;
                tf->rotation = temp_r0_3;
                if (temp_r0_3 == 0x300) {
                    temp_r5->unk16 = 0x64U;
                    boss->unkC = 0xA;
                    return;
                }
            } else {
                temp_r0_4 = (tf->rotation + 8) & 0x3FF;
                tf->rotation = temp_r0_4;
                if (temp_r0_4 == 0x100) {
                    temp_r5->unk16 = 100;
                }
            }
            break;
    }
}

void sub_807EBB8(HyperEggRobo *boss, u8 param1)
{
    s16 sp0[4];
    HyberEggRoboStrc144 *temp_r5;
    Sprite *var_r2;
    SpriteTransform *temp_r2;
    s32 temp_r0_2;
    s32 temp_r2_2;
    s32 var_r0;
    s32 var_r0_4;
    s32 var_r1;
    u16 temp_r0;
    u16 var_r0_3;
    u8 temp_r6;

    temp_r5 = &boss->pos144[param1];
    temp_r2 = &boss->tf340[param1];
    temp_r0 = temp_r5->unk16;
    switch (temp_r0) {
        case 0:
            if (param1 == 0) {
                var_r0 = (s32)temp_r5->qWorld.x >> 8;
                var_r1 = 0x614;
            } else {
                var_r0 = (s32)temp_r5->qWorld.x >> 8;
                var_r1 = 0x6DC;
            }
            temp_r0_2 = (sp0[0] & 0xFFFF0000) | (u16)(var_r1 - var_r0);
            sp0[0] = temp_r0_2;
            sp0[0] = (u16)temp_r0_2 | ((0x98 - ((s32)temp_r5->qWorld.y >> 8)) << 0x10);
            sp0[2] &= 0xFFFF0000;
            sa2__sub_8085A9C((UNK_8085D14 *)&sp0, 8U);
            temp_r5->qUnk8.x = sp0[0] * 2;
            temp_r5->qUnk8.y = sp0[1] * 2;
            switch (param1) {
                case 0: /* switch 2 */
                    var_r2 = boss->spr278;
                    var_r2->anim = sBossFinalAnimsHandsLeft[5][0];
                    var_r2->variant = sBossFinalAnimsHandsLeft[5][1];
                    break;
                case 1: /* switch 2 */
                    var_r2 = &boss->spr278[1];
                    var_r2->anim = sBossFinalAnimsHandsRight[5][0];
                    var_r2->variant = sBossFinalAnimsHandsRight[5][1];
                    break;
            }
            temp_r5->unk16 = 10;
            break;
        case 10:
            if (param1 == 0) {
                temp_r2->rotation = (temp_r2->rotation + 8) & 0x3FF;
            } else {
                temp_r2->rotation = (temp_r2->rotation - 8) & 0x3FF;
            }
            if (temp_r2->rotation == 0) {
                temp_r5->unk16 = 20;
                break;
            }
            break;
        case 20:
            temp_r2_2 = temp_r5->qWorld.x + temp_r5->qUnk8.x;
            temp_r5->qWorld.x = temp_r2_2;
            temp_r5->qWorld.y += temp_r5->qUnk8.y;
            if (param1 == 0) {
                if (temp_r2_2 <= 0x61400) {
                    temp_r5->unk16 = 30;
                    boss->unkC = 0x64;
                }
            } else {
                if (temp_r2_2 >= 0x6DC00) {
                    temp_r5->unk16 = 30;
                }
            }
            break;
    }
}

void sub_807ECFC(HyperEggRobo *boss, u8 param1)
{
    HyberEggRoboStrc144 *temp_r4;
    s16 temp_r0_2;
    s32 temp_r0;
    s32 temp_r2;
    s32 temp_r3;
    u16 temp_r1;
    u16 var_r0;

    temp_r4 = &boss->pos144[param1];
    switch (temp_r4->unk16) {
        case 0: {
            temp_r4->qUnk8.x = +Q(0);
            temp_r4->qUnk8.y = -Q(3);
            temp_r4->unk14 = 0;
            temp_r4->unk16 = 10;
        } break;

        case 10: {
            temp_r3 = temp_r4->qWorld.x + temp_r4->qUnk8.x;
            temp_r4->qWorld.x = temp_r3;
            temp_r4->qWorld.y += temp_r4->qUnk8.y;
            temp_r4->qUnk8.y += 0x40;
            temp_r4->unk14++;
            if (temp_r4->unk14 & 1) {
                sub_8079758(7U, I(temp_r3), I(temp_r4->qWorld.y), 0x300, 0U, 0x1EU, 0, boss->vram18);
            }
            if (I(temp_r4->qWorld.y) > 0x12C00) {
                temp_r4->unk16 = 0x3E8;
            }
        } break;
    }
}

void sub_807ED8C(HyperEggRobo *boss)
{
    Sprite *s;
    Player *temp_r2;
    s16 temp_r0_8;
    s16 temp_r1_3;
    s16 temp_r4;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_6;
    s32 temp_r1_2;
    s32 temp_r1_4;
    s32 temp_r7;
    s32 temp_r7_2;
    u16 temp_r0;
    u16 temp_r0_10;
    u16 temp_r0_12;
    u16 temp_r0_13;
    u16 temp_r0_5;
    u16 temp_r0_9;
    u16 temp_r3;
    u32 temp_r0_4;
    u32 temp_r0_7;
    u8 temp_r0_14;
    u8 var_r1;
    u8 var_r1_2;
    u8 var_r1_3;
    u8 var_r3;

    switch (boss->unk16) {
        case 0x0:
            if (boss->unk1 > 4) {
                return;
            }
            if (boss->unk1 < 1) {
                return;
            }
            if (sub_807F228(boss) == 0) {
                return;
            }
            sub_807F434(boss);
            break;
        case 0x1: {
            if (--boss->unk14 == 0) {
                sub_807BE58(boss, 1U);
                if (boss->lives != 0) {
                    s = &boss->spr228;
                    s->anim = gUnknown_080D5C38[0][0];
                    s->variant = gUnknown_080D5C38[0][1];
                    boss->unk16 = (u16)0;
                    return;
                }
                if (gStageData.gameMode == 5) {
                    if (gStageData.playerIndex != 0) {
                        boss->unk16 = 0x6E;
                        return;
                    }
                    sub_8027674(1U, gStageData.levelTimer);
                }

                sub_8081C08(boss);
                boss->unk16 = 0x64;
            }
        } break;
        case 100: {
            if (--boss->unk14 == 0) {
                for (var_r3 = 0; var_r3 < 2; var_r3++) {
                    temp_r2 = &gPlayers[var_r3];
                    if ((temp_r2->moveState & 0x100) && (((temp_r2->charFlags.someIndex == 1)) || (temp_r2->charFlags.someIndex == 3))) {
                        boss->unk14 = 4;
                        return;
                    }
                }
                gStageData.unk4 = 4;
                sub_807BE58(boss, 0xAU);
                CreateScreenShake(0x800U, 4U, 0U, -1U, 0xD3U);

                if (boss->lives != 0) {
                    var_r1_3 = boss->lives - 1;
                } else {
                    var_r1_3 = 0;
                }
                boss->unk8 = gUnknown_080D5C48[var_r1_3];
                boss->unkC = 0;
                boss->unk1 = 5;
                sub_807DB00(boss, 0U, 0xBU);
                sub_807DB00(boss, 1U, 0xBU);
                s = &boss->spr228;
                s->anim = gUnknown_080D5C38[3][0];
                s->variant = gUnknown_080D5C38[3][1];
                m4aSongNumStart(0x221U);
                sub_807FB7C(0x96U);
                sub_807FB7C(0U);
                boss->unk16 = 200;
            }
        } break;

        case 200:
            if (1 & boss->unk14) {
                temp_r7 = PseudoRandom32() % 1024u;
                temp_r0_4 = PseudoRandom32() % 48U;
                {
                    s32 cosVal = (COS(temp_r7) * temp_r0_4) >> 6;
                    s32 sinVal = (SIN(temp_r7) * temp_r0_4) >> 6;
                    sub_8079758(7U, I(boss->qWorld.x + cosVal), (I(boss->qWorld.y + sinVal) - 48), 0x300, (u16)temp_r7, 0x1EU, 0,
                                boss->vram18);
                }
            }
            boss->unk14 += 1;
            if (!(boss->unk14 & 0x3F)) {
                m4aSongNumStart(0x221U);
            }
            if (boss->unk12E != 0) {
                return;
            }
            boss->unk16 = 0xD2;
            boss->unk14 = 0x3C;
            sub_807FB7C(0xAU);
            break;
        case 210:
            for (var_r1 = 0; var_r1 < 4; var_r1++) {
                gPlayers[var_r1].idleAndCamCounter = 0x168;
            }

            if (--boss->unk14 == 0) {
                boss->unk14 = 0xB4;
                boss->unk16 = 0xDC;
                m4aSongNumStart(0x221U);
                gMusicManagerState.fadeoutSpeed = Q(1.25);
            }
            break;
        case 220:
            for (var_r1_2 = 0; var_r1_2 < 4; var_r1_2++) {
                gPlayers[var_r1_2].idleAndCamCounter = 0x168;
            }

            if (1 & boss->unk14) {
                temp_r7 = (PseudoRandom32() & 0xFF) + 0x280;
                temp_r0_7 = PseudoRandom32() % 48U;
                {
                    s32 val = ((temp_r0_7 & 3) << 8);
                    s32 cosVal = (COS(temp_r7) * temp_r0_7) >> 6;
                    s32 sinVal = (SIN(temp_r7) * temp_r0_7) >> 6;
                    sub_8079758(7U, I(boss->qWorld.x + cosVal), I(boss->qWorld.y + (sinVal)) - 96, 0x400 | val, (u16)temp_r7, 0x1EU, 0,
                                boss->vram18);
                }
            }
            if (!(0x3F & boss->unk14)) {
                m4aSongNumStart(0x221U);
            }

            if (boss->unk14 == 0x3C) {
                gBldRegs.bldCnt = 0x3FBF;
                gBldRegs.bldAlpha = 8;
                gBldRegs.bldY = 0;
            } else if ((boss->unk14 <= 0x3B) && (1 & boss->unk14) && (gBldRegs.bldY != 0x10)) {
                gBldRegs.bldY += 1;
            }

            if (--boss->unk14 == 0) {
                boss->unk14 = 0x3C;
                boss->unk16 = 1000;
                return;
            }
            return;
        case 1000:
            if (--boss->unk14 == 0) {
                boss->unk8 = 1;
                boss->unkC = 0;
                if (gStageData.gameMode == 0) {
                    gPlayers[1].moveState &= 0xFFFFFEFF;
                    SetPlayerCallback(&gPlayers[1], Player_8005380);
                    gPlayers[1].qWorldX = gPlayers[PLAYER_1].qWorldX;
                    gPlayers[1].qWorldY = gPlayers[PLAYER_1].qWorldY;
                    gPlayers[1].layer = gPlayers[PLAYER_1].layer;
                }
                gCurTask->main = Task_358_807F568;
            }
            break;
    }
}

u8 sub_807F228(HyperEggRobo *arg0)
{
    u8 var_r7;
    s32 var_sl = 0;
    Sprite *s = &arg0->spr250;

    sub_8004D68(arg0->qCockpitWorldPos.x, arg0->qCockpitWorldPos.y);
    if (((gPlayers[gStageData.playerIndex].charFlags.character == CREAM)
         || (gPlayers[gPlayers[gStageData.playerIndex].charFlags.partnerIndex].charFlags.character == 1))
        && (IsCollidingWithCheese(s) == 1)) {
        var_sl = 1;
    }

    for (var_r7 = 0; var_r7 < 2; var_r7++) {
        Player *p = &gPlayers[var_r7];
        if ((sub_802C080(p) == 0) && (s->hitboxes[0].index != -1)) {
            if (sub_8020E3C(s, I(arg0->qCockpitWorldPos.x), I(arg0->qCockpitWorldPos.y), 0, p) == 1) {
                var_sl = 1;
                sub_80044CC(p);
            } else {
                sub_8020CE0(s, I(arg0->qCockpitWorldPos.x), I(arg0->qCockpitWorldPos.y), 0, p);
            }
        }
    }

    return var_sl;
}

void sub_807F334(Sprite *s, SpriteTransform *tf, u8 param2, u8 param3)
{
    switch (param2) {
        default:
        case 0: {
            if (param3 == 0) {
                s->hitboxes[0].b.left = -13;
                s->hitboxes[0].b.top = -19;
                s->hitboxes[0].b.right = +8;
                s->hitboxes[0].b.bottom = +30;
            } else {
                s->hitboxes[0].b.left = -8;
                s->hitboxes[0].b.top = -19;
                s->hitboxes[0].b.right = +13;
                s->hitboxes[0].b.bottom = +30;
            }
        } break;

        case 1: {
            if (param3 == 0) {
                s->hitboxes[0].b.left = -30;
                s->hitboxes[0].b.top = -13;
                s->hitboxes[0].b.right = +19;
                s->hitboxes[0].b.bottom = +8;
            } else {
                s->hitboxes[0].b.left = -19;
                s->hitboxes[0].b.top = -13;
                s->hitboxes[0].b.right = +30;
                s->hitboxes[0].b.bottom = +8;
            }
        } break;

        case 2: {
            if (param3 == 0) {
                s->hitboxes[0].b.left = -30;
                s->hitboxes[0].b.top = -13;
                s->hitboxes[0].b.right = +19;
                s->hitboxes[0].b.bottom = +8;
            } else {
                s->hitboxes[0].b.left = -19;
                s->hitboxes[0].b.top = -13;
                s->hitboxes[0].b.right = +30;
                s->hitboxes[0].b.bottom = +8;
            }

            s->hitboxes[0].b.left = I(s->hitboxes[0].b.left * tf->qScaleX);
            s->hitboxes[0].b.top = I(s->hitboxes[0].b.top * tf->qScaleY);
            s->hitboxes[0].b.right = I(s->hitboxes[0].b.right * tf->qScaleX);
            s->hitboxes[0].b.bottom = I(s->hitboxes[0].b.bottom * tf->qScaleY);
        } break;
    }
}

void sub_807F434(HyperEggRobo *boss)
{
    u8 temp_r0;
    Sprite *s;

    boss->unk14 = 0x78;
    sub_807BE58(boss, 0U);
    s = &boss->spr228;
    s->anim = gUnknown_080D5C38[2][0];
    s->variant = gUnknown_080D5C38[2][1];
    sub_8078DB0(0x4F4, 0, boss->unk14, 0U);
    sub_8078DB0(0x4F5, 0, boss->unk14, 0U);
    boss->lives--;
    boss->unk16 = 1;
    if (gStageData.difficulty == DIFFICULTY_NORMAL) {
        if (boss->lives == 4) {
            sub_80299D4(0x37U);
        }
    } else if (boss->lives == 3) {
        sub_80299D4(0x37U);
    }
    m4aSongNumStart(0xEBU);
    PlayVoiceEggmanHit();
    if (CURRENT_GAME_MODE == GAME_MODE_MP_STORY_COOP) {
        if (gStageData.playerIndex == 0) {
            if (boss->lives != 0) {
                sub_8027674(3U, boss->lives);
            }
        } else {
            sub_8027674(4U, boss->lives);
        }
    }
}

// TODO: Fake-match!
void sub_807F4F0(u8 *param0, s16 param1)
{
    HyperEggRobo *boss = TASK_DATA(gStageData.taskBoss);
#ifndef NON_MATCHING
    register s32 r2 asm("r2") = param0[2];
    register s32 temp_r1 asm("r1") = 0x7F & r2;
#else
    s32 temp_r1 = 0x7F & param0[2];
#endif
    u16 temp_r2 = param0[3] | (param0[4] << 8);
    Sprite *s;

    if (temp_r1 == 1) {
        boss->lives = 0;
        gStageData.levelTimer = temp_r2;
        boss->unk14 = 0x3C;
        s = &boss->spr228;
        s->anim = gUnknown_080D5C38[0][0];
        s->variant = gUnknown_080D5C38[0][1];
        boss->unk16 = 0x64;
        return;
    }

    switch (temp_r1) {
        case 1:
            break;
        case 3:
        case 4:
            if (boss->lives != (u8)temp_r2) {
                sub_807F434(boss);
            }
            break;
    }
}

void Task_358_807F568(void)
{
    Player *p;
    Player *temp_r6;
    Sprite *temp_r0;
    s16 var_r0;
    s16 var_r3;
    s16 var_r4_2;
    u8 var_r1;
    u8 var_r4;
    HyperEggRobo *boss = TASK_DATA(gCurTask);

    gStageData.rings = 0;
    sub_358_807C14C(boss);
    for (var_r4 = 0; var_r4 < 4; var_r4++) {
        temp_r0 = &boss->sprPlatforms[var_r4];
        temp_r0->x = I(boss->unk2C[var_r4].qWorld.x) - gCamera.x;
        temp_r0->y = I(boss->unk2C[var_r4].qWorld.y) - gCamera.y;
        DisplaySprite(temp_r0);
    }

    if (boss->unkC != 1030) {
        for (var_r1 = 0; var_r1 < 4; var_r1++) {
            gPlayers[var_r1].idleAndCamCounter = 0x168;
        }
    }

    switch (boss->unkC) {
        case 0x0: {
            p = &gPlayers[gStageData.playerIndex];
            p->framesInvulnerable = 0;
            gPlayers[p->charFlags.partnerIndex].framesInvulnerable = 0;
            if (boss->vram18 != NULL) {
                VramFree(boss->vram18);
                boss->vram18 = NULL;
            }
            if (boss->spr278[0].tiles != NULL) {
                VramFree(boss->spr278[0].tiles);
                boss->spr278[0].tiles = NULL;
            }
            if (boss->spr278[1].tiles != NULL) {
                VramFree(boss->spr278[1].tiles);
                boss->spr278[1].tiles = NULL;
            }
            if (boss->spr250.tiles != NULL) {
                VramFree(boss->spr250.tiles);
                boss->spr250.tiles = NULL;
            }
            if (boss->spr228.tiles != NULL) {
                VramFree(boss->spr228.tiles);
                boss->spr228.tiles = NULL;
            }
            gDispCnt &= ~(DISPCNT_WIN0_ON | DISPCNT_WIN1_ON | DISPCNT_BG0_ON);
            gBgScrollRegs[0][0] = 0;
            gBgScrollRegs[0][1] = 0;
            sub_80299FC();
            gStageData.unk4 = 9;
            gStageData.zone = 7;
            boss->unkC = 10;
        } break;
        case 10:
            boss->unkC = 100;
            break;
        case 100:
            if (MetExtraBossEnableConditions()) {
                boss->unkC = 2000;
            } else {
                boss->unkC = 1000;
            }
            break;
        case 1000:
            sub_807FB7C(1U);
            sub_808178C(0U);
            CreateAltarEmeraldPostBossCutscene(0U);
            sub_807FB7C(2U);
            gCamera.maxX += 0x258;
            boss->unk8 = 0x4B0;
            boss->unkC = 0x3E9;
            return;
            return;
        case 1001:
            gBldRegs.bldY -= 1;
            if (gBldRegs.bldY == 0) {
                gBldRegs.bldCnt = 0;
                gBldRegs.bldAlpha = 0;
                gBldRegs.bldY = 0;
                boss->unk8 = 0x4B0;
                boss->unkC = 0x3F2;
            }
            break;

        case 1010:
            boss->unk8 -= 1;
            if (boss->unk8 == 0) {
                boss->unkC = 1020;
            }
            break;
        case 1020: {
            SetPlayerCallback(&gPlayers[gStageData.playerIndex], Player_8005E80);
            SetPlayerCallback(&gPlayers[temp_r6->charFlags.partnerIndex], Player_8005E80);
            boss->unkC = 1030;
        } break;
        case 2000:
            sub_807FB7C(1U);
            boss->task28 = CreateAltarEmeraldPostBossCutscene(1U);
            sub_808178C(1U);
            sub_807FB7C(2U);
            gCamera.maxX += 480;
            gCamera.minY = gCamera.y;
            boss->unk8 = 0x2E0;
            m4aMPlayAllStop();
            boss->unkC = 2001;
            break;
        case 2001: {
            gBldRegs.bldY -= 1;
            if (gBldRegs.bldY == 0) {
                gBldRegs.bldCnt = 0;
                gBldRegs.bldAlpha = 0;
                gBldRegs.bldY = 0;
                boss->unk8 = 0x2E0;
                boss->unkC = 0x7DA;
            }
        } break;

        case 2010: {
            boss->unk8 -= 1;
            if (boss->unk8 == 0) {
                gCamera.minX = gCamera.maxX - DISPLAY_WIDTH;
                boss->unk8 = 0xC8;
                m4aSongNumStart(MUS_EX_DEMO_1);
                boss->unkC = 2020;
            }
        } break;

        case 2020: {
            boss->unk8 -= 1;
            if (boss->unk8 == 0) {
                gDispCnt |= 0x2000;
                gWinRegs[WINREG_WIN0H] = 0x7778;
                gWinRegs[2] = WIN_RANGE(0, DISPLAY_HEIGHT);
                gWinRegs[4] = 0x3C;
                gWinRegs[5] = 0x1C;
                gBldRegs.bldCnt = 0x3FBF;
                gBldRegs.bldAlpha = 8;
                gBldRegs.bldY = 8;
                boss->unkA = 0;
                boss->unkC = 2030;
                m4aSongNumStart(SE_667);
            }
        } break;

        case 2030: {
            s32 r0;
            boss->unkA += 0x20;
            if (boss->unkA >= 0x100) {
                boss->unk8 = 0x78;
                boss->unkA = 2;
                boss->unkE = 0;
                boss->unkC = 0x7F3;
            }

            var_r4_2 = 120 - (SIN(boss->unkA) / 0x200);
            if (var_r4_2 < 0) {
                var_r4_2 = 0;
            }

            var_r3 = 120 + (SIN(boss->unkA) / 0x200);
            if (var_r3 > 240) {
                var_r3 = 240;
            }

            gWinRegs[WINREG_WIN0H] = WIN_RANGE(var_r4_2, var_r3);
        } break;

        case 2035:
            var_r4_2 = 0x58;
            var_r3 = 0x98;
            if (--boss->unk8 == 0) {
                boss->unkA = 0;
                boss->unkC = 0x7F8;
            } else {
                if (--boss->unkA == 0) {
                    boss->unkA = 2;
                    boss->unkE ^= 1;
                    if (boss->unkE == 0) {
                        var_r4_2 = 0x60;
                        var_r3 = 0x90;
                    }
                }
            }
            gWinRegs[WINREG_WIN0H] = WIN_RANGE(var_r4_2, var_r3);
            break;
        case 2040:
            boss->unkA += 8;
            if (boss->unkA >= 0x100) {
                boss->unk8 = 4;
                m4aSongNumStop(0x29BU);
                boss->unkC = 0x802;
            }

            var_r4_2 = 88 - ((SIN(boss->unkA) * 88) / 0x4000);
            if (var_r4_2 < 0) {
                var_r4_2 = 0;
            }

            var_r3 = 152 + ((SIN(boss->unkA) * 88) / 0x4000);
            if (var_r3 > 0xF0) {
                var_r3 = 0xF0;
            }

            gWinRegs[WINREG_WIN0H] = WIN_RANGE(var_r4_2, var_r3);
            break;
        case 2050: {
            boss->unk8 -= 1;
            if (boss->unk8 == 0) {
                gBldRegs.bldY += 1;
                if (gBldRegs.bldY == 0x10) {
                    boss->unk8 = 0x78;
                    boss->unkC = 0x80C;
                } else {
                    boss->unk8 = 4;
                }
            }
        } break;
        case 2060: {
            if (--boss->unk8 == 0) {
                sub_8081DF4(boss->task28);
                m4aSongNumStart(SE_EXTRA_BOSS_578);
                boss->unkC = 2070;
            }
        } break;

        case 2070: {
            gBldRegs.bldY -= 1;
            if (gBldRegs.bldY == 0) {
                gDispCnt &= 0xDFFF;
                gWinRegs[4] = 0;
                gWinRegs[5] = 0;
                gBldRegs.bldCnt = 0;
                gBldRegs.bldAlpha = 0;
                gBldRegs.bldY = 0;
                boss->unk8 = 0x78A;
                boss->unkC = 2080;
            }
        } break;

        case 2080:
            if (--boss->unk8 == 0) {
                boss->unkC = 2300;
            }
            break;

        case 2300: {
            m4aSongNumStart(0x58U);
            sub_8002508();
            boss->unkC = 0x91A;
            sub_807FB7C(0x1EU);
        } break;
    }
}

void sub_807FB7C(u8 arg0)
{
    Player *player = &gPlayers[PLAYER_1];
    Player *partner = &gPlayers[player->charFlags.partnerIndex];

    if (player->moveState & 0x100) {
        return;
    }
    if (!(partner->moveState & 0x100)) {
        switch (arg0) {
            case 0:
                player->moveState |= MOVESTATE_IGNORE_INPUT;
                partner->moveState |= MOVESTATE_IGNORE_INPUT;
                break;
            case 1:
                gStageData.rings = 0;
                player->moveState &= ~1;
                partner->moveState &= ~MOVESTATE_FACING_LEFT;
                partner->moveState &= ~MOVESTATE_DEAD;
                partner->moveState2 &= ~MOVESTATE_DEAD;
                player->qSpeedGround = (s16)0;
                player->qSpeedAirX = (s16)0;
                player->qSpeedAirY = (s16)0;
                player->framesInvulnerable = (s16)0;
                Player_8005380(player);
                player->qWorldX = Q(1656);
                player->qWorldY = Q(179);
                partner->qSpeedGround = (s16)0;
                partner->qSpeedAirX = (s16)0;
                partner->qSpeedAirY = (s16)0;
                partner->framesInvulnerable = (s16)0;
                Player_8005380(partner);
                partner->qWorldX = Q(1624);
                partner->qWorldY = Q(179);
                player->moveState |= 0x20;
                partner->moveState |= 0x20;
                break;
            case 2:
                player->moveState &= ~MOVESTATE_IGNORE_INPUT;
                partner->moveState &= ~MOVESTATE_IGNORE_INPUT;
                break;
            case 10:
                gStageData.unk4 = 9;
                player->keyInput = 0;
                player->keyInput2 = 0;
                partner->keyInput = 0;
                partner->keyInput2 = 0;
                break;
            case 11:
                if (player->moveState & 0xC00000) {
                    sub_8016F28(gPlayers);
                    player->charFlags.unk2C_04 = 0;
                }
                if (partner->moveState & 0xC00000) {
                    sub_8016F28(partner);
                    partner->charFlags.unk2C_04 = 0;
                }
                if (!(player->moveState & 0x100)) {
                    Player_8005380(gPlayers);
                }
                if (!(partner->moveState & 0x100) || ((player->charFlags.someIndex) == 2)) {
                    Player_8005380(partner);
                }
                player->moveState &= ~0x20;
                partner->moveState &= -0x21;
                break;
            case 12:
                break;
            case 20:
                gStageData.unk4 = 3;
                player->moveState &= ~MOVESTATE_IGNORE_INPUT;
                partner->moveState &= ~MOVESTATE_IGNORE_INPUT;
                player->keyInput = 0;
                player->keyInput2 = 0;
                partner->keyInput = 0;
                partner->keyInput2 = 0;
                break;
            case 30:
                partner->charFlags.character = TAILS;
                break;
            case 100:
                SetPlayerCallback(gPlayers, PlayerCB_8081810);
                break;
            case 150:
                sub_807C5D0();
                if (player->callback == PlayerCB_80819BC) {
                    Player_8005380(gPlayers);
                    return;
                }
                break;
            case 160:
                if (player->moveState & 0xC00000) {
                    sub_8016F28(gPlayers);
                    player->charFlags.unk2C_04 = 0;
                }
                if (partner->moveState & 0xC00000) {
                    sub_8016F28(partner);
                    partner->charFlags.unk2C_04 = 0;
                    Player_8005380(partner);
                    return;
                }
                break;
            case 200:
                partner->qSpeedAirX = 0;
                partner->qSpeedAirY = 0;
                SetPlayerCallback(partner, PlayerCB_808183C);
                PlayerCB_808183C(partner);
                break;
            case 210:
                player->moveState |= 1;
                SetPlayerCallback(gPlayers, PlayerCB_8081840);
                SetPlayerCallback(partner, PlayerCB_8081840);
                break;
            case 220:
                SetPlayerCallback(gPlayers, PlayerCB_808186C);
                SetPlayerCallback(partner, PlayerCB_808186C);
                break;
            case 250:
                SetPlayerCallback(gPlayers, Player_8005380);
                SetPlayerCallback(partner, Player_8005380);
                break;
        }
    }
}

void Task_1C0_ExtraChaosEmeraldsInit(void)
{
    AltarEmeraldCutsceneSuperSonic *emeraldsCut = TASK_DATA(gCurTask);
    Player *temp_r4;
    u16 temp_r0;
    u16 temp_r0_2;
    u16 temp_r1;
    u16 temp_r1_2;

    temp_r4 = &gPlayers[gPlayers[PLAYER_1].charFlags.partnerIndex];
    emeraldsCut->unk16 = 0;
    emeraldsCut->unk14 = 0;
    gUnknown_08E2ED48[emeraldsCut->unk0](emeraldsCut);
    temp_r1 = gPlayers[PLAYER_1].keyInput;
    temp_r0 = emeraldsCut->unk14;
    gPlayers[PLAYER_1].keyInput = temp_r0;
    gPlayers[PLAYER_1].keyInput2 = (temp_r1 ^ temp_r0) & temp_r0;
    temp_r1_2 = temp_r4->keyInput;
    temp_r0_2 = emeraldsCut->unk16;
    temp_r4->keyInput = temp_r0_2;
    temp_r4->keyInput2 = (temp_r1_2 ^ temp_r0_2) & temp_r0_2;
    sub_1C0_8080548(emeraldsCut);
}

void sub_1C0_807FEB4(AltarEmeraldCutsceneSuperSonic *emeraldsCut)
{
    Player *temp_r2;
    s32 temp_r2_2;
    u16 temp_r0;
    u16 temp_r0_2;
    u16 temp_r0_3;
    u16 temp_r0_4;
    u16 temp_r1;
    u16 temp_r2_3;
    u16 var_r0;

    temp_r2 = &gPlayers[gPlayers[PLAYER_1].charFlags.partnerIndex];
    switch (emeraldsCut->unk12) {
        case 0: {
            emeraldsCut->unk10 = 0x172U;
            var_r0 = 0xA;
            emeraldsCut->unk12 = var_r0;
        } break;

        case 10: {
            if (--emeraldsCut->unk10 == 0) {
                emeraldsCut->unk10 = 0xB4U;
                emeraldsCut->unk12 = 100;
            }
        } break;

        case 100: {
            emeraldsCut->unk14 |= 0x10;
            if (emeraldsCut->unk10 <= 0x95) {
                emeraldsCut->unk16 |= 0x10;
            }
            if (--emeraldsCut->unk10 == 0) {
                emeraldsCut->unk12 = 0x12C;
            }
        } break;

        case 300: {
            temp_r2_2 = I(gPlayers[PLAYER_1].qWorldX);
            if (temp_r2_2 > 0x898) {
                emeraldsCut->unk14 |= 0x20;
            }
            if ((temp_r2_2 > 0x8CB) && (gPlayers[PLAYER_1].moveState & 1)) {
                emeraldsCut->unk10 = 0x3CU;
                gPlayers[PLAYER_1].qSpeedGround = 0;
                gPlayers[PLAYER_1].qSpeedAirX = 0;
                gPlayers[PLAYER_1].qSpeedAirY = 0;
                Player_8005380(gPlayers);
                emeraldsCut->unk12 = 0x136U;
            }
        } break;

        case 310: {
            if (--emeraldsCut->unk10 == 0) {
                emeraldsCut->unk10 = 0x14U;
                emeraldsCut->unk12 = 0x140U;
            }
            if ((I(temp_r2->qWorldX) > 0x897) && (temp_r2->qSpeedAirX != 0)) {
                temp_r2->qSpeedGround = 0;
                temp_r2->qSpeedAirX = 0;
                temp_r2->qSpeedAirY = 0;
                Player_8005380(temp_r2);
            }
        } break;

        case 320: {
            emeraldsCut->unk14 |= 0x10;
            if (--emeraldsCut->unk10 == 0) {
                gPlayers[PLAYER_1].unkC |= 0x40;
                emeraldsCut->unk14 |= gStageData.buttonConfig.jump;
                emeraldsCut->unk12 = 0x14A;
            }
        } break;

        case 330: {
            emeraldsCut->unk14 |= 0x10;
            emeraldsCut->unk14 |= gStageData.buttonConfig.jump;
            if (I(gPlayers[PLAYER_1].qWorldX) >= Q(9.0625)) {
                gPlayers[PLAYER_1].qSpeedAirX *= -1;
                gPlayers[PLAYER_1].qSpeedAirY = 0;
                sub_80044CC(gPlayers);
                emeraldsCut->unk12 = 0x82;
            }
        } break;

        case 130: {
            if (((s32)((s32)gPlayers[PLAYER_1].qWorldY >> 8) > 0xB0) && ((s32)gPlayers[PLAYER_1].qSpeedAirY > 0)) {
                gPlayers[PLAYER_1].qSpeedGround = 0;
                gPlayers[PLAYER_1].qSpeedAirX = 0;
                gPlayers[PLAYER_1].qSpeedAirY = 0;
                Player_8005380(gPlayers);
                emeraldsCut->unk12 = 200;
            }
        } break;

        case 200: {
        } break;
    }
}

void sub_1C0_808007C(AltarEmeraldCutsceneSuperSonic *emeraldsCut)
{
    s16 temp_r1_3;
    s16 temp_r1_4;
    s16 temp_r2;
    s32 temp_r0_6;
    s32 temp_r1_2;
    u16 temp_r0;
    u16 temp_r0_10;
    u16 temp_r0_11;
    u16 temp_r0_12;
    u16 temp_r0_13;
    u16 temp_r0_14;
    u16 temp_r0_15;
    u16 temp_r0_16;
    u16 temp_r0_17;
    u16 temp_r0_18;
    u16 temp_r0_19;
    u16 temp_r0_2;
    u16 temp_r0_3;
    u16 temp_r0_4;
    u16 temp_r0_5;
    u16 temp_r0_7;
    u16 temp_r0_8;
    u16 temp_r0_9;
    u16 temp_r1;
    u16 var_r0;
    Player *player = &gPlayers[PLAYER_1];

    gStageData.unk4 = 9;
    switch (emeraldsCut->unk12) {
        case 0:
            emeraldsCut->unk10 = 0x181U;
            emeraldsCut->unk12 = 10;
            break;
        case 10:
            if (--emeraldsCut->unk10 == 0) {
                emeraldsCut->unk10 = 0x87U;
                emeraldsCut->unk12 = 100;
            }
            break;
        case 100:
            emeraldsCut->unk14 |= 0x10;
            if (emeraldsCut->unk10 <= 0x45) {
                emeraldsCut->unk16 |= 0x10;
            }
            if (--emeraldsCut->unk10 == 0) {
                emeraldsCut->unk12 = 110;
            }
            break;
        case 110:
            if ((s32)(player->qWorldX >> 8) > 0x85C) {
                player->qSpeedGround = 0;
                player->qSpeedAirX = 0;
                player->qSpeedAirY = 0;
                Player_8005380(gPlayers);
                emeraldsCut->unk10 = 0xD6U;
                emeraldsCut->unk12 = 120;
                sub_807FB7C(0xC8U);
            }
            break;
        case 120:
            if (--emeraldsCut->unk10 == 0) {
                SetPlayerCallback(gPlayers, Player_8008CD0);
                m4aSongNumStart(0x29AU);
                emeraldsCut->unkC = 10;
                emeraldsCut->unk12 = 130;
            }
            break;
        case 130:
            if ((s32)((s32)player->qWorldX >> 8) > 0x803) {
                return;
            }
            player->moveState &= ~1;
            player->qSpeedGround = 0;
            player->qSpeedAirX = 0;
            player->qSpeedAirY = 0;
            player->framesInvulnerable = 0;
            Player_8005380(gPlayers);
            emeraldsCut->unk12 = 140;
            break;
        case 140:
            if (gBldRegs.bldY != 0x10) {
                return;
            }
            emeraldsCut->unk14 |= 0x80;
            emeraldsCut->unk10 = 0x1A4U;
            emeraldsCut->unk12 = 500;
            break;
        case 170:
            if (--emeraldsCut->unk10 == 0) {
                SetPlayerCallback(gPlayers, Player_8008CD0);
                emeraldsCut->unk10 = 0xB4;
                emeraldsCut->unk12 = 510;
            }
            break;
        case 171:
            if (--emeraldsCut->unk10 == 0) {
                emeraldsCut->unk12 = 172;
                player->qSpeedAirY = -0x80;
            }
            break;
        case 172:
            player->qWorldY += player->qSpeedAirY;
            if ((player->qWorldY >> 8) > (s32)(gCamera.y + 0x64)) {
                return;
            }
            emeraldsCut->unk10 = 1U;
            emeraldsCut->unk12 = 180;
            break;

        case 180:
            if (--emeraldsCut->unk10 == 0) {
                player->charFlags.anim0 = 0x128;
                emeraldsCut->unk10 = 0x78U;
                emeraldsCut->unk12 = 190;
            }
            break;
        case 190: {
            if (--emeraldsCut->unk10 == 0) {
                gBldRegs.bldCnt = 0x3FBF;
                gBldRegs.bldAlpha = 8;
                gBldRegs.bldY = 0;
                emeraldsCut->unk10 = 1U;
                emeraldsCut->unk12 = 200;
            }
        } break;

        case 200:
            if (--emeraldsCut->unk10 == 0) {
                emeraldsCut->unk10 = 4U;
                gBldRegs.bldY += 1;
                if (gBldRegs.bldY == 0x10) {
                    emeraldsCut->unk1 = 0;
                    emeraldsCut->unkC = 0x3E8;
                    emeraldsCut->unk10 = 0x3CU;
                    emeraldsCut->unk12 = 210;
                    break;
                }
            }
            break;
        case 210:
            if (--emeraldsCut->unk10 == 0) {
                player->charFlags.anim0 = 0x129;
                emeraldsCut->unk12 = 220;
                m4aSongNumStart(SE_EXTRA_BOSS_578);
            }
            break;
        case 220:
            if (--gBldRegs.bldY == 0) {
                gBldRegs.bldCnt = 0;
                gBldRegs.bldAlpha = 0;
                gBldRegs.bldY = 0;
                emeraldsCut->unk10 = 120;
                emeraldsCut->unk12 = 600;
            }
            break;
        case 230:
            if (--emeraldsCut->unk10 == 0) {
                player->moveState &= ~1;
                player->charFlags.anim0 = 0x12A;
                emeraldsCut->unk10 = 0x1EU;
                emeraldsCut->unk12 = 240;
                break;
            }
            break;
        case 240:
            if (--emeraldsCut->unk10 == 0) {
                player->charFlags.anim0 = 0x12B;
                player->qSpeedAirX = 0;
                player->qSpeedAirY = -0x200;
                emeraldsCut->unk12 = 0xFAU;
                m4aSongNumStart(0x70U);
                return;
            }
            break;
        case 250:
            player->qSpeedAirY -= 0x2A;
            player->qWorldY += player->qSpeedAirY;
            if (I(player->qWorldY) < -0x10) {
                emeraldsCut->unk12 = 0x12C;
                break;
            }
            break;
        case 500: {
            if (--emeraldsCut->unk10 == 0) {
                SetPlayerCallback(gPlayers, Player_8008CD0);
                emeraldsCut->unk10 = 0xB4U;
                emeraldsCut->unk12 = 510;
            }
        } break;

        case 510: {
            if (--emeraldsCut->unk10 == 0) {
                emeraldsCut->unk12 = 520;
                player->framesInvulnerable = temp_r1_4;
            }
        } break;

        case 520:
            emeraldsCut->unk14 |= 0x10;
            if (I(player->qWorldX) < (gCamera.x + DISPLAY_CENTER_X)) {
                return;
            }
            sub_807FB7C(0x64U);
            player->qWorldX = (gCamera.x + 0x78) << 8;
            emeraldsCut->unk10 = 0x3CU;
            emeraldsCut->unk12 = 530;
            m4aSongNumStart(0x73U);
            break;
        case 530:
            if (--emeraldsCut->unk10 == 0) {
                player->charFlags.anim0 = 0x126;
                emeraldsCut->unk10 = 0x1E0U;
                emeraldsCut->unk12 = 0xAAU;
                emeraldsCut->unkC = 0x64;
                m4aSongNumStart(0x3DU);
            }
            break;
        case 600:
            if (--emeraldsCut->unk10 == 0) {
                player->moveState |= 1;
                emeraldsCut->unk10 = 0x78U;
                emeraldsCut->unk12 = 230;
                break;
            }
            break;
    }
}

void InitChaosEmeraldSprites(AltarEmeraldCutsceneSuperSonic *emeraldsCut)
{
    Sprite *var_r2;
    s32 temp_r1;
    s32 temp_r1_2;
    u8 *var_r6;
    u8 var_r5;

    var_r2 = emeraldsCut->sprEmeralds;
    var_r6 = emeraldsCut->vram18;
    emeraldsCut->unk1 = 0;

    for (var_r5 = 0; var_r5 < 7; var_r5++, var_r2++, var_r6 += 0x80) {
        emeraldsCut->unk1C[var_r5].qWorld.x = 0;
        emeraldsCut->unk1C[var_r5].qWorld.y = 0;
        emeraldsCut->unk1C[var_r5].unk8 = 0;
        emeraldsCut->unk1C[var_r5].unkC = 0;
        emeraldsCut->unk1C[var_r5].unk10 = 1;
        emeraldsCut->unk1C[var_r5].unk12 = 0;
        var_r2->tiles = var_r6;
        var_r2->oamFlags = 0x280;
        temp_r1_2 = var_r5 * 6;
        var_r2->anim = sBossExtraAnimsChaosEmeralds[var_r5][0];
        var_r2->variant = sBossExtraAnimsChaosEmeralds[var_r5][1];
        var_r2->qAnimDelay = 0;
        var_r2->prevVariant = 0xFF;
        var_r2->animSpeed = 0x10;
        var_r2->palId = sBossExtraAnimsChaosEmeralds[var_r5][2];
        var_r2->x = 0;
        var_r2->y = 0;
        var_r2->frameFlags = 0x1000;
    }
}

void sub_1C0_8080548(AltarEmeraldCutsceneSuperSonic *arg0)
{
    s32 *sp0;
    Sprite *var_r4_2;
    s16 var_r0_6;
    s32 *temp_r0_5;
    s32 *temp_r2;
    s32 *temp_r2_3;
    s32 *temp_r4;
    s32 temp_r0_3;
    s32 temp_r0_4;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r1_3;
    s32 temp_r1_4;
    s32 temp_r2_2;
    s32 temp_r2_4;
    s32 temp_r3;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r0_3;
    s32 var_r0_4;
    s32 var_r0_5;
    s32 var_r7;
    u16 temp_r0;
    u16 temp_r0_2;
    u16 var_r7_2;
    u8 var_r5;
    u8 var_r5_2;
    u8 var_r5_3;
    u8 var_r5_4;
    u8 var_r5_5;
    u8 var_r5_6;
    u8 var_r5_7;
    u8 var_r6;
    Sprite *s;
    Player *player = &gPlayers[PLAYER_1];

    switch (arg0->unkC) { /* irregular */
        case 0: {
        } break;
        case 10: {
            for (var_r5 = 0; var_r5 < 7; var_r5++) {
                arg0->unk1C[var_r5].qWorld.x = Q(gCamera.x + DISPLAY_CENTER_X);
                arg0->unk1C[var_r5].qWorld.y = player->qWorldY;
                arg0->unk1C[var_r5].unk8 = gUnknown_080D5CD4[var_r5].x;
                arg0->unk1C[var_r5].unkC = gUnknown_080D5CD4[var_r5].y;
            }
            arg0->unk1 = 1;
            arg0->unkC = 20;
        } break;
        case 20:
            for (var_r5 = 0, var_r6 = 0; var_r5 < 7; var_r5++) {
                if (I(arg0->unk1C[var_r5].qWorld.y) >= 0xBC) {
                    arg0->unk1C[var_r5].qWorld.y = Q(0xBC);
                    var_r6 += 1;
                } else {
                    arg0->unk1C[var_r5].qWorld.x += arg0->unk1C[var_r5].unk8;
                    arg0->unk1C[var_r5].unkC += 0x2A;
                    arg0->unk1C[var_r5].qWorld.y += temp_r1_4;
                }
            }

            if (var_r6 == 7) {
                arg0->unkE = 0xB4U;
                arg0->unkC = 0x1E;
            }
            break;
        case 30:
            if (--arg0->unkE == 0) {
                for (var_r5 = 0; var_r5 < 7; var_r5++) {
                    arg0->unk1C[var_r5].unkC = gUnknown_080D5CD4[var_r5].y / 8;
                }
                arg0->unkC = 40;
            }
            break;
        case 40:
            for (var_r5 = 0; var_r5 < 7; var_r5++) {
                arg0->unk1C[var_r5].qWorld.y += arg0->unk1C[var_r5].unkC;
            }

            if (gBldRegs.bldY != 0x10) {

            } else {
                arg0->unk1 = 0;
                arg0->unkC = 0x3E8;
            }
            break;
        case 100:
            arg0->unk2 = 0;
            arg0->unk8 = 0x7800;
            arg0->unk4 = 0x1E000;
            arg0->unk1C[0].unk8 = Q(gCamera.x + 120);
            arg0->unk1C[0].unkC = Q(gCamera.y + 104);
            for (var_r5 = 0, var_r7 = 0; var_r5 < 7; var_r5++) {
                var_r0_2 = (COS(var_r7) * arg0->unk4) / 0x4000;
                var_r0_3 = (SIN(var_r7) * arg0->unk8) / 0x4000;

                arg0->unk1C[var_r5].qWorld.x = (var_r0_2 >> 14) + arg0->unk1C[0].unk8;
                arg0->unk1C[var_r5].qWorld.y = (var_r0_3 >> 14) + arg0->unk1C[0].unkC;
                var_r7 = (var_r7 + 0x92) & 0x3FF;
            }
            arg0->unk1 = 1;
            arg0->unkC = 110;
            break;
        case 110:
            arg0->unk2 = (arg0->unk2 - 8) & 0x3FF;
            arg0->unk8 -= 0x40;
            if (I(arg0->unk8) <= 8) {
                arg0->unk8 = 0x800;
            }
            arg0->unk4 = arg0->unk8 * 4;
            s = arg0->sprEmeralds;
            for (var_r5 = 0, var_r7_2 = arg0->unk2; var_r5 < 7; var_r5++, s++) {
                var_r0_4 = (COS(var_r7_2) * arg0->unk4) / 0x4000;
                var_r0_5 = (SIN(var_r7_2) * arg0->unk8) / 0x4000;
                arg0->unk1C[var_r5].qWorld.x = (var_r0_4 >> 0xE) + arg0->unk1C[0].unk8;
                arg0->unk1C[var_r5].qWorld.y = (var_r0_5 >> 0xE) + arg0->unk1C[0].unkC;
                if ((u32)var_r7_2 < 0x200U) {
                    s->oamFlags = SPRITE_OAM_ORDER(8);
                } else {
                    s->oamFlags = SPRITE_OAM_ORDER(19);
                }
                var_r7_2 = (var_r7_2 + 0x92) & 0x3FF;
            }
            break;
    }
    if (arg0->unk1 != 0) {
        var_r4_2 = arg0->sprEmeralds;
        for (var_r5 = 0; var_r5 < 7; var_r5++, var_r4_2++) {
            var_r4_2->x = I(arg0->unk1C[var_r5].qWorld.x) - gCamera.x;
            var_r4_2->y = I(arg0->unk1C[var_r5].qWorld.y) - gCamera.y;
            UpdateSpriteAnimation(var_r4_2);
            DisplaySprite(var_r4_2);
        }
    }
}

Task *CreateAltarEmeraldPostBossCutscene(u8 arg0)
{
    s32 *sp8;
    s32 *spC;
    s32 sp10;
    EggmanEscapeStrc14 *sp14;
    EggmanEscapeStrc14 *temp_r1;
    s32 temp_r1_2;
    s32 temp_r1_3;
    s32 var_r3;
    u8 *vram;
    u8 *temp_r0_2;
    u8 *var_r0_2;
    u8 var_r0;
    u8 var_r4;
    u8 var_r4_2;
    void *temp_r1_4;
    Task *t
        = TaskCreate(Task_11C_8080AD4, sizeof(AltarEmeraldCutsceneEggmanEscape), 0x2100U, 0U, TaskDestructor_AltarEmeraldPostBossCutscene);

    AltarEmeraldCutsceneEggmanEscape *sceneEggman = TASK_DATA(t);
    sceneEggman->initialArg0 = arg0;
    sceneEggman->unk4 = 1;
    sceneEggman->unk6 = 0;
    sceneEggman->unk2 = 0;
    sceneEggman->vramC = NULL;
    sceneEggman->vram10 = NULL;
    for (var_r4 = 0; var_r4 < 3; var_r4++) {
        sceneEggman->sprites[var_r4].tiles = NULL;
    }

    for (var_r4 = 0; var_r4 < 3; var_r4++) {
        if (var_r4 != 2) {
            var_r3 = var_r4 * 8;
            sceneEggman->unk14[var_r4].qWorld.x = Q(gCamera.x + DISPLAY_CENTER_X);
            sceneEggman->unk14[var_r4].qWorld.y = Q(gCamera.y + 0xB4);
        } else {
            sceneEggman->unk14[2].qWorld.x = (gCamera.x + 0x8C) << 8;
            sceneEggman->unk14[2].qWorld.y = (gCamera.y + 0xD4) << 8;
            var_r3 = 0x10;
        }
        temp_r1_2 = var_r3 - var_r4;
        sceneEggman->unk14[temp_r1_2].unk8 = 0;
        sceneEggman->unk14[temp_r1_2].unkC = 0;
        sceneEggman->unk14[temp_r1_2].unk10 = 0;
        sceneEggman->unk14[temp_r1_2].unk14 = 1;
        sceneEggman->unk14[temp_r1_2].unk16 = 0;

        if (sceneEggman->initialArg0 != 0) {
            sceneEggman->unk14[temp_r1_2].unk18 = 0x3E8;
        } else {
            sceneEggman->unk14[temp_r1_2].unk18 = 0;
        }
    }

    if (sceneEggman->initialArg0 == 0) {
        sceneEggman->vram8 = VramMalloc(0x74U);
    } else {
        sceneEggman->vram8 = NULL;
    }
    vram = VramMalloc(0x80U);
    sceneEggman->vramC = vram;
    {
        Sprite *s = (Sprite *)&sceneEggman->sprites[0];
        s->tiles = vram;
        s->oamFlags = 0x540;
        s->anim = ANIM_EGGMAN_SIDE;
        s->variant = 4;
        s->qAnimDelay = 0;
        s->prevVariant = -1;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->x = 0;
        s->y = 0;
        s->frameFlags = 0x1000;
    }
    {
        Sprite *s = (Sprite *)&sceneEggman->sprites[1];
        s->tiles = vram + 0x800;
        s->oamFlags = 0x580;
        s->anim = ANIM_NEO_EGGMOBILE;
        s->variant = 0;
        s->qAnimDelay = 0;
        s->prevVariant = -1;
        s->animSpeed = 0x10;
        s->palId = 9;
        s->x = 0;
        s->y = 0;
        s->frameFlags = 0x1000;
        {
            SpriteTransform *tf = &sceneEggman->tf;
            tf->rotation = sceneEggman->unk2;
            tf->x = s->x;
            tf->y = s->y;
            tf->qScaleX = Q(1);
            tf->qScaleY = Q(1);
        }
    }
    {
        Sprite *s = (Sprite *)&sceneEggman->sprites[2];
        vram = VramMalloc(0x24U);
        sceneEggman->vram10 = vram;
        s->tiles = vram;
        s->oamFlags = 0x500;
        s->anim = ANIM_GEMERL_HOVER_AWAY;
        s->variant = 0;
        s->qAnimDelay = 0;
        s->prevVariant = -1;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->x = 0;
        s->y = 0;
        s->frameFlags = 0x1000;
    }
    return t;
}

void Task_11C_8080AD4(void)
{
    AltarEmeraldCutsceneEggmanEscape *sceneEggman = TASK_DATA(gCurTask);
    SpriteTransform *tf = &sceneEggman->tf;
    u16 temp_r1;
    u8 var_r6;

    temp_r1 = sceneEggman->unk14[0].unk18;
    if (((temp_r1 == 0xC8) && (sceneEggman->unk14[2].unk18 == 0xC8)) || ((temp_r1 == 0x7D0) && (sceneEggman->unk14[2].unk18 == temp_r1))) {
        TaskDestroy(gCurTask);
        return;
    }
    sub_8080BD0(sceneEggman);
    sub_80811E0(sceneEggman);
    for (var_r6 = 0; var_r6 < 3; var_r6++) {
        Sprite *s = (Sprite *)&sceneEggman->sprites[var_r6];
        s->x = I(sceneEggman->unk14[var_r6].qWorld.x) - gCamera.x;
        s->y = I(sceneEggman->unk14[var_r6].qWorld.y) - gCamera.y;
        if (s->frameFlags & 0x20) {
            tf->rotation = sceneEggman->unk2;
            tf->x = s->x;
            tf->y = s->y;
            TransformSprite(s, tf);
            UpdateSpriteAnimation(s);
            DisplaySprite(s);
        } else {
            UpdateSpriteAnimation(s);
            DisplaySprite(s);
        }
        //        if (((u32) var_r6 <= 2U) && ((var_r6 != 2) || (sceneEggman->vram10 != NULL))) {
        //            goto loop_6;
        //        }
    }
}

void sub_8080BD0(AltarEmeraldCutsceneEggmanEscape *arg0)
{
    s16 temp_r0_5;
    s16 temp_r0_9;
    s16 temp_r1_2;
    s16 temp_r1_6;
    s16 var_r0_3;
    s32 temp_r0;
    s32 temp_r0_11;
    s32 temp_r0_12;
    s32 temp_r0_14;
    s32 temp_r0_15;
    s32 temp_r0_16;
    s32 temp_r0_22;
    s32 temp_r0_3;
    s32 temp_r0_7;
    s32 temp_r1_3;
    s32 temp_r1_4;
    s32 temp_r1_5;
    s32 temp_r1_7;
    s32 temp_r3_2;
    u16 temp_r0_10;
    u16 temp_r0_13;
    u16 temp_r0_17;
    u16 temp_r0_18;
    u16 temp_r0_19;
    u16 temp_r0_20;
    u16 temp_r0_21;
    u16 temp_r0_2;
    u16 temp_r0_4;
    u16 temp_r0_6;
    u16 temp_r0_8;
    u16 temp_r1;
    u16 temp_r1_8;
    u16 var_r0;
    u16 var_r0_2;
    u16 var_r0_4;
    u16 var_r2;
    Sprite *temp_r3;
    Sprite *temp_r7;
    EggmanEscapeStrc14 *subStrc14 = arg0->unk14;

    temp_r7 = (Sprite *)&arg0->sprites[0];
    temp_r3 = (Sprite *)&arg0->sprites[1];
    temp_r1 = subStrc14->unk18;
    if (temp_r1 == 0x41A) {
        temp_r0 = arg0->unk14[0].qWorld.x + subStrc14->unk8;
        arg0->unk14[0].qWorld.x = temp_r0;
        if ((s32)(temp_r0 >> 8) > 0x8BB) {

        } else {
            var_r0 = 0x424;
            goto block_148;
        }
    } else if ((s32)temp_r1 <= 0x41A) {
        switch (temp_r1) { /* switch 1; irregular */
            case 50: /* switch 1 */
                arg0->unk14[0].qWorld.x = subStrc14->unk8 + (*gUnknown_080D5C80[subStrc14->unk16] << 8);
                subStrc14->qWorld.y = (s32)(subStrc14->unkC + Q(gUnknown_080D5C80[subStrc14->unk16][1]));
                subStrc14->unk16 = (u16)((subStrc14->unk16 + 1) & 7);
                temp_r0_2 = subStrc14->unk14 - 1;
                subStrc14->unk14 = temp_r0_2;
                if ((temp_r0_2 << 0x10) != 0) {

                } else {
                    subStrc14->unkC = 0x80;
                    subStrc14->unk18 = 0x64U;
                    m4aSongNumStart(SE_545);
                }
                break;
            case 20: /* switch 1 */
                temp_r0_3 = subStrc14->qWorld.y + subStrc14->unkC;
                subStrc14->qWorld.y = temp_r0_3;
                if ((s32)(temp_r0_3 >> 8) > 0x6E) {

                } else {
                    subStrc14->unk14 = 0x28U;
                    var_r0 = 0x1E;
                    goto block_148;
                }
                break;
            case 0: /* switch 1 */
                subStrc14->unk14 = 0x4BU;
                var_r0 = 0xA;
                goto block_148;
            case 10: /* switch 1 */
                temp_r0_4 = subStrc14->unk14 - 1;
                subStrc14->unk14 = temp_r0_4;
                temp_r0_5 = (s16)temp_r0_4;
                if (temp_r0_5 != 0) {

                } else {
                    subStrc14->unk8 = (s32)temp_r0_5;
                    subStrc14->unkC = -0x100;
                    var_r0 = 0x14;
                    goto block_148;
                }
                break;
            case 30: /* switch 1 */
                temp_r0_6 = subStrc14->unk14 - 1;
                subStrc14->unk14 = temp_r0_6;
                temp_r1_2 = (s16)temp_r0_6;
                if (temp_r1_2 != 0) {

                } else {
                    subStrc14->unk8 = 0x180;
                    subStrc14->unkC = (s32)temp_r1_2;
                    var_r0_2 = 0x28;
                block_114:
                    subStrc14->unk18 = var_r0_2;
                    temp_r7->anim = ANIM_EGGMAN_SIDE;
                    temp_r7->variant = 8;
                    temp_r7->prevVariant = -1;
                    temp_r7->frameFlags |= 0x400;
                    temp_r3->frameFlags |= 0x400;
                    m4aSongNumStart(VOICE__EGGMAN__YOURE_GOING_TO_PAY_FOR_THIS);
                }
                break;
            case 40: /* switch 1 */
                temp_r0_7 = arg0->unk14[0].qWorld.x + subStrc14->unk8;
                arg0->unk14[0].qWorld.x = temp_r0_7;
                temp_r1_3 = temp_r0_7 >> 8;
                if (temp_r1_3 > 0x923) {
                    subStrc14->unk16 = 0U;
                    subStrc14->unk14 = 0x20U;
                    subStrc14->unk8 = (s32)arg0->unk14[0].qWorld.x;
                    subStrc14->unkC = (s32)subStrc14->qWorld.y;
                    subStrc14->unk18 = 0x32U;
                    m4aSongNumStart(VOICE__EGGMAN__OW);
                } else if (temp_r1_3 <= 0x833) {

                } else {
                    subStrc14->unk8 = 0x180;
                }
                break;
            default: /* switch 1 */
                var_r2 = 0x3F2;
                switch (temp_r1) { /* switch 2; irregular */
                    case 0x3F2: /* switch 2 */
                        temp_r0_8 = subStrc14->unk14 - 1;
                        subStrc14->unk14 = temp_r0_8;
                        temp_r0_9 = (s16)temp_r0_8;
                        if (temp_r0_9 != 0) {

                        } else {
                            subStrc14->unk8 = (s32)temp_r0_9;
                            subStrc14->unkC = -0x100;
                            var_r0 = 0x3FC;
                            goto block_148;
                        }
                        break;
                    case 0x64: /* switch 2 */
                        subStrc14->unk16 = (u16)((subStrc14->unk16 + 8) & 0x1FF);
                        var_r0_3 = gSineTable[subStrc14->unk16];
                        if ((s32)var_r0_3 < 0) {
                            var_r0_3 += 0x3F;
                        }
                        arg0->unk14[0].qWorld.x += var_r0_3 >> 6;
                        temp_r1_4 = subStrc14->qWorld.y + subStrc14->unkC;
                        subStrc14->qWorld.y = temp_r1_4;
                        temp_r0_10 = subStrc14->unk14 + 1;
                        subStrc14->unk14 = temp_r0_10;
                        if ((s32)(s16)temp_r0_10 > 9) {
                            if (!(gStageData.timer & 3)) {
                                temp_r1_5 = PseudoRandom32() & 0x3FF;
                                temp_r3_2 = PseudoRandom32() & 0xF;
                                sub_8086D64(I(arg0->unk14[0].qWorld.x + ((temp_r3_2 * COS(temp_r1_5)) >> 6)),
                                            I(((u32)(temp_r3_2 * SIN(temp_r1_5)) >> 6) + temp_r1_4), 0x100, 0x200, 0x1E, arg0->vram8);
                            }
                            if (((s32)((s32)arg0->unk14[0].qWorld.x >> 8) <= 0x996) && !(0x3F & subStrc14->unk14)) {
                                m4aSongNumStart(0x221U);
                            }
                        }
                        if ((s16)subStrc14->unk14 == 0xA) {
                            temp_r7->anim = ANIM_EGGMAN_SIDE;
                            temp_r7->variant = 4;
                            temp_r7->prevVariant = -1;
                        }
                        if (I(subStrc14->qWorld.y) >= 250) {
                            subStrc14->unk18 = 0xC8;
                            break;
                        }
                        break;
                    case 0x3E8: /* switch 2 */
                        var_r0_4 = 0x4B;
                        goto block_141;
                    default: /* switch 2 */
                        var_r2 = 0x406;
                        switch (temp_r1) { /* switch 3; irregular */
                            case 0x406: /* switch 3 */
                                temp_r0_13 = subStrc14->unk14 - 1;
                                subStrc14->unk14 = temp_r0_13;
                                temp_r1_6 = (s16)temp_r0_13;
                                if (temp_r1_6 != 0) {

                                } else {
                                    subStrc14->unk8 = 0x180;
                                    subStrc14->unkC = (s32)temp_r1_6;
                                    var_r0_2 = 0x410;
                                    goto block_114;
                                }
                                break;
                            case 0x3FC: /* switch 3 */
                                temp_r0_14 = subStrc14->qWorld.y + subStrc14->unkC;
                                subStrc14->qWorld.y = temp_r0_14;
                                if ((s32)(temp_r0_14 >> 8) > 0x6E) {

                                } else {
                                    var_r0_4 = 0x28;
                                    goto block_141;
                                }
                                break;
                            case 0x410: /* switch 3 */
                                temp_r0_15 = arg0->unk14[0].qWorld.x + subStrc14->unk8;
                                arg0->unk14[0].qWorld.x = temp_r0_15;
                                if ((s32)(temp_r0_15 >> 8) > 0x8FB) {
                                    subStrc14->unk8 = -0x100;
                                    temp_r7->anim = ANIM_EGGMAN_SIDE;
                                    temp_r7->variant = 0;
                                    temp_r7->prevVariant = 0xFF;
                                    temp_r7->frameFlags &= ~0x400;
                                    temp_r3->frameFlags &= ~0x400;
                                    subStrc14->unk18 = 0x41AU;
                                } else if ((s32)((s32)arg0->unk14[0].qWorld.x >> 8) <= 0x7CF) {

                                } else {
                                    subStrc14->unk8 = 0x280;
                                }
                                break;
                        }
                        break;
                }
                break;
        }
    } else {
        switch (temp_r1) { /* switch 4; irregular */
            case 0x46A: /* switch 4 */
                subStrc14->unk14 = 0x4E2U;
                var_r0 = 0x474;
            block_148:
                subStrc14->unk18 = var_r0;
                break;
            case 0x438: /* switch 4 */
                temp_r7->anim = ANIM_EGGMAN_SIDE;
                temp_r7->variant = 12;
                temp_r7->prevVariant = -1;
                temp_r7->oamFlags = 0x280;
                temp_r3->anim = 0x4F7;
                temp_r3->variant = 5;
                temp_r3->prevVariant = -1;
                temp_r3->oamFlags = 0x2C0;
                temp_r7->frameFlags |= 0x3E;
                temp_r3->frameFlags |= 0x3F;
                arg0->unk2 = 0x380;
                var_r0 = 0x424;
                subStrc14->unk18 = var_r0;
                break;
            case 0x42E: /* switch 4 */
                temp_r7->anim = ANIM_EGGMAN_SIDE;
                temp_r7->variant = 8;
                temp_r7->prevVariant = -1;
                subStrc14->unk18 = 0x424U;
                break;
            case 0x456: /* switch 4 */
                arg0->unk14[0].qWorld.x += subStrc14->unk8;
                temp_r1_7 = subStrc14->qWorld.y + subStrc14->unkC;
                subStrc14->qWorld.y = temp_r1_7;
                if ((s32)(temp_r1_7 >> 8) < (s32)(gCamera.y + 0x79)) {

                } else {
                    CreateScreenShake(0x800U, 0x40U, 0U, -1U, 0x91U);
                    m4aSongNumStart(VOICE__EGGMAN__OW);
                    subStrc14->unkC = -0x400;
                    subStrc14->unk18 = 0x460;
                    break;
                }
                break;
            case 0x44C: /* switch 4 */
                subStrc14->unk8 = 0;
                subStrc14->unkC = 0x800;
                subStrc14->unk18 = 0x456U;
                break;
            case 0x460: /* switch 4 */
                temp_r0_16 = subStrc14->unkC + 0x2A;
                subStrc14->unkC = temp_r0_16;
                subStrc14->qWorld.y = (s32)(subStrc14->qWorld.y + temp_r0_16);
                temp_r1_8 = arg0->unk2;
                if (temp_r1_8 != 0x300) {
                    arg0->unk2 = temp_r1_8 - 8;
                }
                if (((s32)((s32)subStrc14->qWorld.y >> 8) >= (s32)(gCamera.y + 0x79)) && ((s32)subStrc14->unkC > 0)) {
                    subStrc14->unkC = 0;
                    subStrc14->unk18 = 0x46AU;
                }
                break;
            default: /* switch 4 */
                var_r2 = 0x488;
                switch (temp_r1) { /* switch 5; irregular */
                    case 0x488: /* switch 5 */
                        temp_r0_17 = subStrc14->unk14 - 1;
                        subStrc14->unk14 = temp_r0_17;
                        if ((temp_r0_17 << 0x10) == 0) {
                            var_r0 = 0x492;
                            goto block_148;
                        }
                        break;
                    case 0x474: /* switch 5 */
                        temp_r0_18 = subStrc14->unk14 - 1;
                        subStrc14->unk14 = temp_r0_18;
                        if ((temp_r0_18 << 0x10) == 0) {
                            var_r0 = 0x492;
                            goto block_148;
                        }
                        break;
                    case 0x47E: /* switch 5 */
                        temp_r0_19 = subStrc14->unk14 - 1;
                        subStrc14->unk14 = temp_r0_19;
                        if ((temp_r0_19 << 0x10) == 0) {
                            var_r0_4 = 0x12C;
                        block_141:
                            subStrc14->unk14 = var_r0_4;
                            subStrc14->unk18 = var_r2;
                        }
                        break;
                    default: /* switch 5 */
                        var_r2 = 0x49C;
                        switch (temp_r1) { /* switch 6; irregular */
                            case 0x49C: /* switch 6 */
                                temp_r0_20 = subStrc14->unk14 - 1;
                                subStrc14->unk14 = temp_r0_20;
                                if ((temp_r0_20 << 0x10) == 0) {
                                    subStrc14->unk8 = 0x400;
                                    subStrc14->unkC = -0x400;
                                    subStrc14->unk18 = 0x4A6U;
                                    m4aSongNumStart(SE_112);
                                }
                                break;
                            case 0x492: /* switch 6 */
                                temp_r0_21 = (arg0->unk2 + 8) & 0x3FF;
                                arg0->unk2 = temp_r0_21;
                                if (temp_r0_21 == 0) {
                                    var_r0_4 = 0xB4;
                                    goto block_141;
                                }
                                break;
                            case 0x4A6: /* switch 6 */
                                arg0->unk14[0].qWorld.x += subStrc14->unk8;
                                temp_r0_22 = subStrc14->qWorld.y + subStrc14->unkC;
                                subStrc14->qWorld.y = temp_r0_22;
                                if (temp_r0_22 < 0) {
                                    var_r0 = 0x7D0;
                                    goto block_148;
                                }
                                break;
                        }
                        break;
                }
                break;
        }
    }
    arg0->unk14[1].qWorld.x = arg0->unk14[0].qWorld.x;
    arg0->unk14[1].qWorld.y = arg0->unk14[0].qWorld.y;
}

void sub_80811E0(AltarEmeraldCutsceneEggmanEscape *sceneEggman)
{
    s16 temp_r0_22;
    s16 temp_r0_2;
    s16 temp_r1_2;
    s16 temp_r1_5;
    s32 temp_r0_10;
    s32 temp_r0_12;
    s32 temp_r0_13;
    s32 temp_r0_15;
    s32 temp_r0_19;
    s32 temp_r0_3;
    s32 temp_r0_4;
    s32 temp_r0_6;
    s32 temp_r0_8;
    s32 temp_r1_4;
    u16 temp_r0;
    u16 temp_r0_11;
    u16 temp_r0_14;
    u16 temp_r0_16;
    u16 temp_r0_17;
    u16 temp_r0_18;
    u16 temp_r0_20;
    u16 temp_r0_21;
    u16 temp_r0_5;
    u16 temp_r0_7;
    u16 temp_r0_9;
    u16 temp_r1;
    u16 temp_r1_3;
    u16 var_r0;
    u16 var_r0_2;

    switch (sceneEggman->unk14[2].unk18) { /* irregular */
        case 0x0:
            sceneEggman->unk14[2].unk14 = 0x4B;
            var_r0 = 0xA;
            goto block_136;
        case 0xA:
            temp_r0_21 = sceneEggman->unk14[2].unk14 - 1;
            sceneEggman->unk14[2].unk14 = temp_r0_21;
            temp_r0_22 = (s16)temp_r0_21;
            if (temp_r0_22 != 0) {
                return;
            }
            sceneEggman->unk14[2].unk8 = (s32)temp_r0_22;
            sceneEggman->unk14[2].unkC = -0x100;
            var_r0 = 0x14;
            goto block_136;
        case 0x14:
            temp_r0_4 = sceneEggman->unk14[2].qWorld.y + sceneEggman->unk14[2].unkC;
            sceneEggman->unk14[2].qWorld.y = temp_r0_4;
            if ((s32)(temp_r0_4 >> 8) > 0x8E) {
                return;
            }
            sceneEggman->unk14[2].unk14 = 0x28;
            var_r0 = 0x1E;
            goto block_136;
        case 0x1E:
            temp_r0_5 = sceneEggman->unk14[2].unk14 - 1;
            sceneEggman->unk14[2].unk14 = temp_r0_5;
            temp_r1_2 = (s16)temp_r0_5;
            if (temp_r1_2 != 0) {
                return;
            }
            sceneEggman->unk14[2].unk8 = 0x180;
            sceneEggman->unk14[2].unkC = (s32)temp_r1_2;
            sceneEggman->unk14[2].unk18 = 0x28;
        block_108:
            sceneEggman->sprites[2].anim = 0x50A;
            sceneEggman->sprites[2].variant = 0;
            sceneEggman->sprites[2].prevVariant = 0xFF;
            sceneEggman->sprites[2].frameFlags |= 0x400;
            return;
        case 0x28:
            temp_r0_6 = sceneEggman->unk14[2].qWorld.x + sceneEggman->unk14[2].unk8;
            sceneEggman->unk14[2].qWorld.x = temp_r0_6;
            if ((s32)(temp_r0_6 >> 8) <= 0x819) {
                return;
            }
            sceneEggman->unk14[2].unk8 = 0x100;
            var_r0 = 0x32;
            goto block_136;
        case 0x32:
            temp_r0_3 = sceneEggman->unk14[2].qWorld.x + sceneEggman->unk14[2].unk8;
            sceneEggman->unk14[2].qWorld.x = temp_r0_3;
            if ((s32)(temp_r0_3 >> 8) <= 0x8F2) {
                return;
            }
            sceneEggman->unk14[2].unk8 = 0;
            sceneEggman->unk14[2].unkC = 0x80;
            var_r0 = 0x3C;
            sceneEggman->unk14[2].unk14 = 0x3C;
            goto block_136;
        case 0x3C:
            temp_r0_8 = sceneEggman->unk14[2].qWorld.y + sceneEggman->unk14[2].unkC;
            sceneEggman->unk14[2].qWorld.y = temp_r0_8;
            if ((s32)(temp_r0_8 >> 8) <= 0xB3) {
                return;
            }
            sceneEggman->sprites[2].anim = 0x50B;
            sceneEggman->sprites[2].variant = 1;
            sceneEggman->sprites[2].prevVariant = 0xFF;
            sceneEggman->unk14[2].unk14 = 0x14;
            var_r0 = 0x46;
            goto block_136;
        case 0x46:
            temp_r0_9 = sceneEggman->unk14[2].unk14 - 1;
            sceneEggman->unk14[2].unk14 = temp_r0_9;
            if ((temp_r0_9 << 0x10) != 0) {
                return;
            }
            sceneEggman->unk14[2].unk14 = 0x3C;
            sceneEggman->unk14[2].unk18 = 0x50;
            var_r0_2 = 0x506;
        block_120:
            sceneEggman->sprites[2].anim = var_r0_2;
            sceneEggman->sprites[2].variant = 0;
            sceneEggman->sprites[2].prevVariant = 0xFF;
            return;
        case 0x50:
            temp_r0_7 = sceneEggman->unk14[2].unk14 - 1;
            sceneEggman->unk14[2].unk14 = temp_r0_7;
            if ((temp_r0_7 << 0x10) != 0) {
                return;
            }
            sceneEggman->unk14[2].unk14 = 0x96;
            sceneEggman->unk14[2].unk18 = 0x5A;
            sceneEggman->sprites[2].anim = 0x50B;
            sceneEggman->sprites[2].variant = 2;
            sceneEggman->sprites[2].prevVariant = 0xFF;
            sceneEggman->sprites[2].frameFlags &= 0xFFFFFBFF;
            return;
        case 0x5A:
            temp_r0_11 = sceneEggman->unk14[2].unk14 - 1;
            sceneEggman->unk14[2].unk14 = temp_r0_11;
            if ((temp_r0_11 << 0x10) != 0) {
                return;
            }
            sceneEggman->unk14[2].unk8 = 0x100;
            sceneEggman->unk14[2].unkC = -0x400;
            sceneEggman->sprites[2].anim = 0x50A;
            sceneEggman->sprites[2].variant = 0;
            sceneEggman->sprites[2].prevVariant = 0xFF;
            sceneEggman->sprites[2].frameFlags |= 0x400;
            sceneEggman->unk14[2].unk18 = 0x64;
            m4aSongNumStart(0x74U);
            return;
        case 0x64:
            sceneEggman->unk14[2].unkC += 0x2A;
            sceneEggman->unk14[2].qWorld.x += sceneEggman->unk14[2].unk8;
            temp_r0_10 = sceneEggman->unk14[2].qWorld.y + sceneEggman->unk14[2].unkC;
            sceneEggman->unk14[2].qWorld.y = temp_r0_10;
            if ((s32)(temp_r0_10 >> 8) <= 0xF9) {
                return;
            }
            var_r0 = 0xC8;
            goto block_136;
        case 0x3E8:
            sceneEggman->unk14[2].unk14 = 0x4B;
            sceneEggman->unk14[2].unk18 = 0x3F2;
            return;
        case 0x3F2:
            temp_r0 = sceneEggman->unk14[2].unk14 - 1;
            sceneEggman->unk14[2].unk14 = temp_r0;
            temp_r0_2 = (s16)temp_r0;
            if (temp_r0_2 != 0) {
                return;
            }
            sceneEggman->unk14[2].unk8 = (s32)temp_r0_2;
            sceneEggman->unk14[2].unkC = -0x100;
            var_r0 = 0x3FC;
        block_136:
            sceneEggman->unk14[2].unk18 = var_r0;
            return;
        case 0x3FC:
            temp_r0_13 = sceneEggman->unk14[2].qWorld.y + sceneEggman->unk14[2].unkC;
            sceneEggman->unk14[2].qWorld.y = temp_r0_13;
            if ((s32)(temp_r0_13 >> 8) > 0x8E) {
                return;
            }
            sceneEggman->unk14[2].unk14 = 0x28;
            var_r0 = 0x406;
            goto block_136;
        case 0x406:
            temp_r0_14 = sceneEggman->unk14[2].unk14 - 1;
            sceneEggman->unk14[2].unk14 = temp_r0_14;
            temp_r1_5 = (s16)temp_r0_14;
            if (temp_r1_5 != 0) {
                return;
            }
            sceneEggman->unk14[2].unk8 = 0x180;
            sceneEggman->unk14[2].unkC = (s32)temp_r1_5;
            sceneEggman->unk14[2].unk18 = 0x410;
            goto block_108;
        case 0x410:
            temp_r0_12 = sceneEggman->unk14[2].qWorld.x + sceneEggman->unk14[2].unk8;
            sceneEggman->unk14[2].qWorld.x = temp_r0_12;
            temp_r1_4 = temp_r0_12 >> 8;
            if (temp_r1_4 > 0x8AB) {
                sceneEggman->unk14[2].unk8 = 0;
                sceneEggman->unk14[2].unkC = 0x200;
                sceneEggman->unk14[2].unk14 = 0x3C;
                var_r0 = 0x41A;
                goto block_136;
            }
            if (temp_r1_4 <= 0x76B) {
                return;
            }
            sceneEggman->unk14[2].unk8 = 0x200;
            return;
        case 0x41A:
            temp_r0_15 = sceneEggman->unk14[2].qWorld.y + sceneEggman->unk14[2].unkC;
            sceneEggman->unk14[2].qWorld.y = temp_r0_15;
            if ((s32)(temp_r0_15 >> 8) <= 0xB3) {
                return;
            }
            sceneEggman->sprites[2].anim = 0x50B;
            sceneEggman->sprites[2].variant = 1;
            sceneEggman->sprites[2].prevVariant = 0xFF;
            sceneEggman->unk14[2].unk14 = 0x14;
            var_r0 = 0x424;
            goto block_136;
        case 0x424:
            temp_r0_16 = sceneEggman->unk14[2].unk14 - 1;
            sceneEggman->unk14[2].unk14 = temp_r0_16;
            if ((temp_r0_16 << 0x10) != 0) {
                return;
            }
            sceneEggman->unk14[2].unk14 = 0xB4;
            sceneEggman->unk14[2].unk18 = 0x42E;
            var_r0_2 = 0x509;
            goto block_120;
        case 0x42E:
            temp_r1_3 = sceneEggman->unk14[2].unk14 - 1;
            sceneEggman->unk14[2].unk14 = temp_r1_3;
            if ((temp_r1_3 << 0x10) == 0) {
                sceneEggman->unk14[2].unk14 = 0xA;
                sceneEggman->unk14[2].unk18 = 0x433;
                sceneEggman->sprites[2].anim = 0x50B;
                sceneEggman->sprites[2].variant = 0;
                sceneEggman->sprites[2].prevVariant = 0xFF;
                sceneEggman->sprites[2].frameFlags &= 0xFFFFFBFF;
                m4aSongNumStart(0x223U);
                return;
            }
            if (!(temp_r1_3 & 0x3F)) {
                m4aSongNumStart(0x224U);
                return;
            }
            break;
        case 0x433:
            temp_r0_18 = sceneEggman->unk14[2].unk14 - 1;
            sceneEggman->unk14[2].unk14 = temp_r0_18;
            if ((temp_r0_18 << 0x10) == 0) {
                sceneEggman->unk14[2].unk8 = -0x400;
                var_r0 = 0x438;
                goto block_136;
            }
            break;
        case 0x438:
            temp_r0_19 = sceneEggman->unk14[2].qWorld.x + sceneEggman->unk14[2].unk8;
            sceneEggman->unk14[2].qWorld.x = temp_r0_19;
            if ((s32)(temp_r0_19 >> 8) <= 0x85C) {
                sceneEggman->sprites[2].anim = 0x509;
                sceneEggman->sprites[2].variant = 0;
                sceneEggman->sprites[2].prevVariant = 0xFF;
                sceneEggman->unk14[2].unk8 = 0;
                sceneEggman->unk14[2].unkC = 0;
                sceneEggman->unk14[2].unk14 = 0x78;
                sceneEggman->unk14[2].unk18 = 0x442;
                m4aSongNumStop(0x223U);
                return;
            }
            break;
        case 0x442:
            temp_r0_17 = sceneEggman->unk14[2].unk14 - 1;
            sceneEggman->unk14[2].unk14 = temp_r0_17;
            if ((temp_r0_17 << 0x10) == 0) {
                sceneEggman->sprites[2].anim = 0x5CA;
                sceneEggman->sprites[2].variant = 0;
                sceneEggman->sprites[2].prevVariant = 0xFF;
                sceneEggman->unk14[2].unk14 = 0xB4;
                var_r0 = 0x44C;
                goto block_136;
            }
            break;
        case 0x44C:
            temp_r0_20 = sceneEggman->unk14[2].unk14 - 1;
            sceneEggman->unk14[2].unk14 = temp_r0_20;
            if ((temp_r0_20 << 0x10) == 0) {
                sceneEggman->sprites[2].anim = 0x5CA;
                sceneEggman->sprites[2].variant = 1;
                sceneEggman->sprites[2].prevVariant = 0xFF;
                sceneEggman->unk14[2].unkC = -0x80;
                sceneEggman->unk14[2].unk18 = 0x456;
                return;
            }
            break;
        case 0x456:
            sceneEggman->unk14[2].qWorld.y += sceneEggman->unk14[2].unkC;
            if (gBldRegs.bldY == 0x10) {
                var_r0 = 0x460;
                goto block_136;
            }
            break;
        case 0x460:
            VramFree(sceneEggman->vram10);
            sceneEggman->vram10 = NULL;
            var_r0 = 0x7D0;
            goto block_136;
    }
}

void sub_80816C0(HyperEggRobo *boss)
{
    u8 i;

    for (i = 0; i < ARRAY_COUNT(boss->sprPlatforms); i++) {
        Sprite *s = &boss->sprPlatforms[i];
        s->x = I(boss->unk2C[i].qWorld.x) - gCamera.x;
        s->y = I(boss->unk2C[i].qWorld.y) - gCamera.y;
        DisplaySprite(s);
    }
}

void sub_808170C(HyperEggRobo *boss)
{
    u8 *temp_r0;

    temp_r0 = boss->sprPlatforms[0].tiles;
    if (temp_r0 != NULL) {
        VramFree(temp_r0);
        boss->sprPlatforms[0].tiles = NULL;
    }
}

void sub_8081724(HyperEggRobo *boss, u8 arg1, u8 arg2)
{
    if (boss->unk2C[arg2].unkC <= 0) {
        s32 diffY = boss->pos144[arg1].qWorld.y - boss->unk2C[arg2].qWorld.y;
        s32 absDiffY = ABS(diffY);
        diffY = I(absDiffY);
        if (diffY < 20) {
            boss->unk2C[arg2].unkC = boss->pos144[arg1].qUnk8.y;
            boss->unk2C[arg2].unk12 = 0x64;
            m4aSongNumStart(0x23AU);
        }
    }
}

void sub_808178C(u8 arg0)
{
    AltarEmeraldCutsceneSuperSonic *sceneSuperSonic;

    sceneSuperSonic = TASK_DATA(TaskCreate(Task_1C0_ExtraChaosEmeraldsInit, sizeof(AltarEmeraldCutsceneSuperSonic), 0x2200U, 0U,
                                           TaskDestructor_ExtraChaosEmeralds));
    sceneSuperSonic->unk0 = arg0;
    sceneSuperSonic->unk10 = 1;
    sceneSuperSonic->unk12 = 0;
    sceneSuperSonic->unkC = 0;
    sceneSuperSonic->unk16 = 0;
    sceneSuperSonic->unk14 = 0;
    sceneSuperSonic->vram18 = VramMalloc(28);
    InitChaosEmeraldSprites(sceneSuperSonic);
}

void TaskDestructor_HyperEggRobo(Task *t)
{
    HyperEggRobo *boss = TASK_DATA(t);

    if (boss->vram18 != NULL) {
        VramFree(boss->vram18);
        boss->vram18 = NULL;
    }

    sub_8081AA0(boss);
    sub_8081A40(boss);
    sub_808170C(boss);
}

void PlayerCB_8081810(Player *p)
{
    p->charFlags.anim0 = 0x125;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    SetPlayerCallback(p, PlayerCB_808183C);
    PlayerCB_808183C(p);
}

void PlayerCB_808183C(Player *p) { }

void PlayerCB_8081894(Player *p);
void Task_358_8081958(void);
void Task_358_80819BC(void);
void PlayerCB_8081840(Player *p)
{
    p->qSpeedGround = 0;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    p->charFlags.anim0 = 0x96;
    SetPlayerCallback(p, PlayerCB_8081894);
    PlayerCB_8081894(p);
}

void PlayerCB_808186C(Player *p)
{
    p->qSpeedGround = 0;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    p->charFlags.anim0 = 0;
    SetPlayerCallback(p, PlayerCB_8081894);
    PlayerCB_8081894(p);
}

void PlayerCB_8081894(Player *p) { }

void sub_8081898(void)
{
    HyperEggRobo *boss = TASK_DATA(gCurTask);
    Player *p = boss->players[0];

    sub_358_807C14C(boss);
    sub_80816C0(boss);
    if (I(p->qWorldX) > 1644) {
        gCamera.minY = 0x10;
        sub_358_807BCCC(boss);
        sub_358_807BEF0(boss);
        sub_358_807D6C4(boss);
        sub_358_807CBC8(boss);
        boss->unk10 = 0;
        boss->unk8 = 1;
        boss->unkC = 0;
        gCurTask->main = (void (*)())Task_358_807B9B8;
    }
}

void Task_358_HyperEggRoboInit(void)
{
    HyperEggRobo *boss = TASK_DATA(gCurTask);
    void (*var_r0)(HyperEggRobo *);

    sub_358_807C14C(boss);
    sub_80816C0(boss);
    if (*boss->initArg0 == 3) {
        TaskDestroy(gCurTask);
        return;
    }
    if ((sub_8079FFC() << 0x18) != 0) {
        gCurTask->main = Task_358_8081958;
    } else {
        gCurTask->main = Task_358_807B808;
    }
}

void Task_358_8081958(void)
{
    HyperEggRobo *boss = TASK_DATA(gCurTask);

    if (*boss->initArg0 == 3) {
        TaskDestroy(gCurTask);
        return;
    }
    sub_358_807C14C(boss);
    sub_80816C0(boss);
    if ((*boss->initArg0 == 2) && ((sub_807A074() << 0x18) != 0)) {
        sub_807FB7C(0U);
        sub_807FB7C(0xAU);
        sub_807FB7C(0xBU);
        gCurTask->main = Task_358_80819BC;
    }
}

void Task_358_80819BC(void)
{
    HyperEggRobo *boss = TASK_DATA(gCurTask);
    if (*boss->initArg0 == 3) {
        TaskDestroy(gCurTask);
        return;
    }
    sub_358_807C14C(boss);
    sub_80816C0(boss);
    if (*boss->initArg0 == 2) {
        boss->unk8 = 5;
        boss->unkC = 0xA;
        SetFixedRandomIfTimeAttackMode();
        gCurTask->main = (void (*)())Task_358_807B808;
    }
}

void sub_8081A10(Player *p)
{
    p->qSpeedGround = 0;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    p->charFlags.anim0 = 0x96;
    SetPlayerCallback(p, PlayerCB_80819BC);
    PlayerCB_80819BC(p);
}

void PlayerCB_80819BC(Player *p) { }

void sub_8081A40(HyperEggRobo *boss)
{
    if (boss->spr250.tiles != NULL) {
        VramFree(boss->spr250.tiles);
        boss->spr250.tiles = NULL;
    }

    if (boss->spr228.tiles != NULL) {
        VramFree(boss->spr228.tiles);
        boss->spr228.tiles = NULL;
    }
}

void sub_8081A74(HyperEggRobo *boss, u8 param1, u8 param2)
{
    if (param1 == 0) {
        Sprite *s = &boss->spr228;
        s->anim = gUnknown_080D5C38[param2][0];
        s->variant = gUnknown_080D5C38[param2][1];
    }
}

void sub_8081AA0(HyperEggRobo *boss)
{
    if (boss->spr278[0].tiles != NULL) {
        VramFree(boss->spr278[0].tiles);
        boss->spr278[0].tiles = NULL;
    }

    if (boss->spr278[1].tiles != NULL) {
        VramFree(boss->spr278[1].tiles);
        boss->spr278[1].tiles = NULL;
    }
}

void UpdateHandAnimation(HyperEggRobo *boss, u8 param1, u8 param2)
{
    Sprite *s;

    switch (param1) {
        case 0: {
            s = &boss->spr278[0];
            s->anim = sBossFinalAnimsHandsLeft[param2][0];
            s->variant = sBossFinalAnimsHandsLeft[param2][1];
        } break;
        case 1: {
            s = &boss->spr278[1];
            s->anim = sBossFinalAnimsHandsRight[param2][0];
            s->variant = sBossFinalAnimsHandsRight[param2][1];
        } break;
        default:
            return;
    }
}

void sub_8081B18(void) { }

void sub_8081B1C(void) { }

void sub_8081B20(void) { }

// TODO: Unused?
void sub_8081B24(Sprite *arg0, s32 qWorldX, s32 qWorldY)
{
    Player *temp_r4;
    HyperEggRobo *boss = TASK_DATA(gCurTask);
    u8 i;

    for (i = 0; i < ARRAY_COUNT(boss->players); i++) {
        temp_r4 = boss->players[i];
        if (sub_802C080(temp_r4) == 0) {
            if (temp_r4->moveState & 0x20) {
                if ((temp_r4->sprColliding == &boss->sprPlatforms[0]) || (temp_r4->sprColliding == &boss->sprPlatforms[1])
                    || (temp_r4->sprColliding == &boss->sprPlatforms[2]) || (temp_r4->sprColliding == &boss->sprPlatforms[3])) {
                    sub_8020CE0(arg0, I(qWorldX), I(qWorldY), 0, temp_r4);
                }
            } else {
                sub_8020CE0(arg0, I(qWorldX), I(qWorldY), 0, temp_r4);
            }
        }
    }
}

void sub_8081BBC(HyperEggRobo *boss)
{
    u8 lives;

    // TODO: Ternary op?
    if (boss->lives != 0) {
        lives = boss->lives - 1;
    } else {
        lives = 0;
    }
    boss->unk8 = (u16)gUnknown_080D5C48[lives];
    boss->unkC = 0;
    boss->unk1 = 5;
}

void sub_8081BE8(HyperEggRobo *boss, u8 arg1)
{
    switch (arg1) {
        case 0:
            boss->unkC = 10;
            break;
        case 1:
            boss->unkC = 100;
            break;
    }
}

void sub_8081C08(HyperEggRobo *boss)
{
    boss->unk14 = 0x3C;
    {
        Sprite *s = &boss->spr228;
        s->anim = gUnknown_080D5C38[0][0];
        s->variant = gUnknown_080D5C38[0][1];
    }
}

void TaskDestructor_ExtraChaosEmeralds(Task *t)
{
    AltarEmeraldCutsceneSuperSonic *sceneSuperSonic = TASK_DATA(t);
    gStageData.unk4 = 5;

    if (sceneSuperSonic->vram18 != NULL) {
        VramFree(sceneSuperSonic->vram18);
        sceneSuperSonic->vram18 = NULL;
    }
}

void TaskDestructor_AltarEmeraldPostBossCutscene(Task *t)
{
    AltarEmeraldCutsceneEggmanEscape *scene = TASK_DATA(t);

    if (scene->vram8 != NULL) {
        VramFree(scene->vram8);
        scene->vram8 = NULL;
    }
    if (scene->vramC != NULL) {
        VramFree(scene->vramC);
#ifdef BUG_FIX
        scene->vramC = NULL;
#endif
    }
    if (scene->vram10 != NULL) {
        VramFree(scene->vram10);
#ifdef BUG_FIX
        scene->vram10 = NULL;
#endif
    }
}
#endif // outer

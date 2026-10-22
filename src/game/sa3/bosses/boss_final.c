#include "global.h"
#include "core.h"
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
    s16 unk12;
} HyberEggRoboPlatform; /* 0x14 */

typedef struct {
    /* 0x00 */ Vec2_32 qWorld;
    /* 0x08 */ Vec2_32 qUnk8;
    /* 0x12 */ u16 unk10;
    /* 0x12 */ u8 unk12;
    /* 0x13 */ u8 unk13;
    /* 0x14 */ s16 unk14;
    /* 0x16 */ s16 unk16;
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
    /* 0x14 */ u16 unk10; // TODO: type
    /* 0x14 */ u16 unk12; // TODO: type
    /* 0x14 */ u16 unk14;
    /* 0x14 */ u16 unk16;
    /* 0x14 */ u16 unk18;
    /* 0x14 */ s16 unk1A;
} HyberEggRoboStrc194; /* 0x1C */

typedef struct {
    /* 0x000 */ u8 lives;
    /* 0x001 */ u8 unk1;
    /* 0x002 */ u8 unk2;
    /* 0x002 */ u8 unk3;
    /* 0x004 */ u8 *initArg0;
    /* 0x008 */ u16 unk8;
    /* 0x002 */ u16 unkA;
    /* 0x00C */ u16 unkC;
    /* 0x00E */ u8 unkE;
    /* 0x00E */ u8 unkF;
    /* 0x010 */ u8 unk10;
    /* 0x011 */ u8 unk11;
    /* 0x012 */ u8 unk12;
    /* 0x013 */ u8 unk13;
    /* 0x014 */ u16 unk14;
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

// TODO: Probably identical to HyberEggRoboPlatform?
typedef struct {
    /* 0x00 */ u8 filler0[0x8];
    /* 0x08 */ u8 vram8;
    /* 0x0C */ u8 vramC;
    /* 0x10 */ u8 vram10;
    /* 0x14 */ u8 filler14[0x64];
    /* 0x78 */ Sprite sprEggman;
    /* 0xA0 */ Sprite sprNeoEggMobile;
    /* 0xD8 */ Sprite sprGemerl;
    /* 0x100 */ u8 filler100[0x10];
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
    /* 0x14 */ s32 unk4;
    /* 0x14 */ s32 unk8;
    /* 0x14 */ u16 unkC;
    /* 0x02 */ u8 fillerE[0x6];
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
void sub_807C48C(Sprite *sprColliding);
void sub_358_807BCCC(HyperEggRobo *boss);
void sub_358_807BD88(HyperEggRobo *boss);
void sub_807BE58(HyperEggRobo *boss, u8 param1);
void sub_358_807BEF0(HyperEggRobo *boss);
void sub_358_807BFEC(HyperEggRobo *boss);
void sub_358_807C074(HyperEggRobo *boss);
void sub_358_807C14C(HyperEggRobo *boss);
void sub_807DB00(HyperEggRobo *boss, u8 arg1, u8 arg2);
bool32 sub_807CD4C(HyperEggRobo *boss);
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
bool8 sub_807D8B4(HyperEggRobo *boss, u8 param1, u8 param2);
bool8 sub_807D9B4(HyperEggRobo *boss, u8 param1);
void sub_807DA34(HyperEggRobo *boss, u8 param1);
void sub_807DB60(HyperEggRobo *boss);
void sub_807DCD8(HyperEggRobo *boss, u8 param1);
void sub_807ED8C(HyperEggRobo *boss);
s32 sub_807F228(HyperEggRobo *arg0);
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

// TEMP

#if 0 // M2C
void CreateHyperEggRobo(u8 *arg0, HyperEggRobo *boss);
void Task_358_807B808(HyperEggRobo *boss);
void Task_358_807B9B8(HyperEggRobo *boss);
void Task_358_807BC04(HyperEggRobo *boss);
u8 sub_807C244(Sprite *s, s32 qX, s32 qY, s32 arg3, s32 qArg4, HyperEggRobo *boss);
u8 sub_807C374(Sprite *s, s32 qX, s32 qY, s32 arg3, s32 qArg4, HyperEggRobo *boss);
void sub_807C48C(Sprite *sprColliding);
void Task_1C0_ExtraChaosEmeraldsInit(AltarEmeraldCutsceneSuperSonic *emeraldsCut);
#endif

extern u8 gUnknown_080D5C78[2][4];
extern const s16 gUnknown_080D5C80[8][2]; // NOTE: Vec2_16 does not match!
extern const u8 gUnknown_080D5CA0[4];
typedef void (*FinalBossFunc0)(HyperEggRobo *boss);
typedef void (*ChaosEmeraldCutsceneFunc0)(AltarEmeraldCutsceneSuperSonic *emeraldCut);
typedef void (*FinalBossFunc1)(HyperEggRobo *boss, u8 param1);
extern const FinalBossFunc0 gUnknown_08E2ED00[6];
extern const FinalBossFunc1 gUnknown_08E2ED18[12];
extern const ChaosEmeraldCutsceneFunc0 gUnknown_08E2ED48[2];

typedef struct {
    s16 unk0;
    s16 unk2;
    s16 unk4;
    s16 unk6;
    u16 unk8;
    u16 unkA;
    u16 unkC;
    u16 unkE;
    u16 unk10;
    u16 unk12;
    u32 unk14;
    u32 unk18;
    u32 unk1C;
} UNK_8085D14;

// TODO: Seems like the 1st oarameter is a different type, that is just 0x8 bytes? Is it a different function overall?
extern void SA2_LABEL(sub_8085A9C)(UNK_8085D14 *p1, u8 p2);

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

#if 01
#else
void sub_358_807C14C(HyperEggRobo *boss)
{
    s16 temp_r0_4;
    s16 var_r0;
    s32 *temp_r2_2;
    s32 *temp_r2_3;
    s32 *temp_r4;
    s32 *temp_r5;
    s32 *var_r1;
    s32 temp_r0_2;
    s32 temp_r1;
    s32 temp_r7;
    u16 temp_r0_3;
    u16 temp_r2;
    u32 temp_r0_5;
    u8 temp_r0;
    u8 var_r8;

    var_r8 = 0;
    do {
        var_r1 = &boss->unk2C[0].unkC;
        if ((boss->lives == 0) && ((temp_r2 = (u16)boss->unk2C[var_r8].unk12, (temp_r2 == 0x64)) || (temp_r2 == 0x6E))) {
            temp_r2_2 = &boss->unk2C[0].unkC;
            *(temp_r2_2 + (var_r8 * 0x14)) = 0xFFFFFC00;
            boss->unk2C[var_r8].unk12 = 0xC8;
            var_r1 = temp_r2_2;
        }
        temp_r0_2 = var_r8 * 0x14;
        temp_r2_3 = &boss->unk2C[0].qWorld.y;
        temp_r4 = temp_r2_3 + temp_r0_2;
        temp_r7 = *temp_r4;
        temp_r5 = var_r1 + temp_r0_2;
        temp_r1 = temp_r7 + *temp_r5;
        *temp_r4 = temp_r1;
        temp_r0_3 = (u16)boss->unk2C[var_r8].unk12;
        switch (temp_r0_3) { /* irregular */
            case 0x64:
                if (temp_r1 > 0xF3FF) {
                    *temp_r4 = 0xF400;
                    boss->unk2C[var_r8].unk10 = 0x78;
                    var_r0 = 0x6E;
                block_16:
                    boss->unk2C[var_r8].unk12 = var_r0;
                }
                break;
            case 0x6E:
                temp_r0_4 = (u16)boss->unk2C[var_r8].unk10 - 1;
                boss->unk2C[var_r8].unk10 = temp_r0_4;
                if ((temp_r0_4 << 0x10) == 0) {
                    temp_r0_5 = 0 - *temp_r5;
                    *temp_r5 = (s32)(temp_r0_5 + (temp_r0_5 >> 0x1F)) >> 1;
                    var_r0 = 0xC8;
                    goto block_16;
                }
                break;
            case 0xC8:
                if (temp_r1 <= 0xCC00) {
                    *temp_r4 = 0xCC00;
                    var_r0 = 0;
                    *temp_r5 = 0;
                    goto block_16;
                }
                break;
        }
        sub_807C374(&boss->sprPlatforms[var_r8], boss->unk2C[var_r8].qWorld.x, *((var_r8 * 0x14) + temp_r2_3), 0, temp_r7 - temp_r1);
        temp_r0 = var_r8 + 1;
        var_r8 = temp_r0;
    } while ((u32)temp_r0 <= 3U);
}

u8 sub_807C244(Sprite *s, s32 qX, s32 qY, s32 arg3, s32 qArg4)
{
    HyperEggRobo *boss = TASK_DATA(gCurTask);
    s32 sp4;
    HyperEggRobo *sp8;
    Player *temp_r4;
    s16 temp_r3;
    s32 temp_r1_2;
    s32 temp_r1_3;
    s32 var_r0;
    s32 var_r0_2;
    u32 temp_r0;
    u32 temp_r1;
    u8 var_r5;
    u8 var_r6;

    sp4 = arg3;
    sp8 = boss;
    var_r6 = 0;
    var_r5 = 0;
    do {
        temp_r4 = sp8->players[var_r5];
        if (sub_802C080(temp_r4) == 0) {
            temp_r1 = temp_r4->moveState;
            if ((0x20 & temp_r1) && (temp_r4->sprColliding == s)) {
                temp_r4->qWorldX -= sp4;
                if (!(temp_r1 & 4)) {
                    temp_r4->qWorldY = (temp_r4->qWorldY + 0x400) - qArg4;
                    var_r6 |= 1 << var_r5;
                } else {
                    temp_r4->qWorldY = (temp_r4->qWorldY - qArg4) + 0xFFFFFE00;
                }
            }
            temp_r1_2 = temp_r4->qWorldX;
            var_r0 = temp_r1_2 - qX;
            if (var_r0 < 0) {
                var_r0 = qX - temp_r1_2;
            }
            if ((s32)(var_r0 >> 8) <= 0x40) {
                temp_r1_3 = temp_r4->qWorldY;
                var_r0_2 = temp_r1_3 - qY;
                if (var_r0_2 < 0) {
                    var_r0_2 = qY - temp_r1_3;
                }
                if ((s32)(var_r0_2 >> 8) <= 0x40) {
                    temp_r0 = sub_8020950(s, qX >> 8, qY >> 8, temp_r4, 0U);
                    temp_r3 = 0x10000 & temp_r0;
                    if (temp_r3 != 0) {
                        temp_r4->qWorldY += (s16)(temp_r0 << 8);
                    } else if (0x20000 & temp_r0) {
                        temp_r4->qWorldY = temp_r4->qWorldY + 0x100 + (s16)(temp_r0 << 8);
                        temp_r4->qSpeedAirY = temp_r3;
                    }
                    if (0xC0000 & temp_r0) {
                        temp_r4->qWorldX += ((s32)(temp_r0 << 0x10) >> 0x18) << 8;
                        temp_r4->qSpeedAirX = 0;
                    }
                }
            }
        }
        var_r5 += 1;
    } while ((u32)var_r5 <= 1U);
    return var_r6;
}

u8 sub_807C374(Sprite *s, s32 qX, s32 qY, s32 arg3, s32 qArg4)
{
    HyperEggRobo *boss = TASK_DATA(gCurTask);
    s32 sp4;
    HyperEggRobo *sp8;
    Player *temp_r4;
    s16 temp_r3;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 var_r0;
    s32 var_r0_2;
    u32 temp_r0;
    u8 var_r5;
    u8 var_r6;

    sp4 = arg3;
    sp8 = boss;
    var_r6 = 0;
    var_r5 = 0;
    do {
        temp_r4 = sp8->players[var_r5];
        if (sub_802C080(temp_r4) == 0) {
            if ((temp_r4->moveState & 0x20) && (temp_r4->sprColliding == s)) {
                temp_r4->qWorldX -= sp4;
                if (qArg4 != 0) {
                    temp_r4->qWorldY = (temp_r4->qWorldY + 0x400) - qArg4;
                }
            }
            temp_r1 = temp_r4->qWorldX;
            var_r0 = temp_r1 - qX;
            if (var_r0 < 0) {
                var_r0 = qX - temp_r1;
            }
            if ((s32)(var_r0 >> 8) <= 0x40) {
                temp_r1_2 = temp_r4->qWorldY;
                var_r0_2 = temp_r1_2 - qY;
                if (var_r0_2 < 0) {
                    var_r0_2 = qY - temp_r1_2;
                }
                if ((s32)(var_r0_2 >> 8) <= 0x40) {
                    temp_r0 = sub_8020950(s, qX >> 8, qY >> 8, temp_r4, 0U);
                    temp_r3 = 0x10000 & temp_r0;
                    if (temp_r3 != 0) {
                        temp_r4->qWorldY += (s16)(temp_r0 << 8);
                        var_r6 |= 1 << var_r5;
                    } else if (0x20000 & temp_r0) {
                        temp_r4->qWorldY = temp_r4->qWorldY + 0x100 + (s16)(temp_r0 << 8);
                        temp_r4->qSpeedAirY = temp_r3;
                    }
                    if (0xC0000 & temp_r0) {
                        temp_r4->qWorldX += ((s32)(temp_r0 << 0x10) >> 0x18) << 8;
                        temp_r4->qSpeedAirX = 0;
                    }
                }
            }
        }
        var_r5 += 1;
    } while ((u32)var_r5 <= 1U);
    return var_r6;
}

void sub_807C48C(Sprite *sprColliding)
{
    HyperEggRobo *boss = TASK_DATA(gCurTask);
    Player *p;
    s32 temp_r1;
    u32 temp_r1_2;
    u8 var_r5;

    for (var_r5 = 0; var_r5 < 2; var_r5++) {
        p = boss->players[var_r5];
        if ((sub_802C0D4(p) == 0) && (((p->charFlags.someIndex == 1)) || (p->charFlags.someIndex == 2) || (p->charFlags.someIndex == 4))) {
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
    Player *temp_r4;
    Sprite *temp_r1_2;
    Sprite *temp_r6;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_4;
    s32 temp_r1;
    s32 temp_r2;
    u8 var_r7;
    HyberEggRoboStrc144 *temp_r0;

    temp_r1 = arg1 * 0x28;
    temp_r0 = &arg0->pos144[arg1];
    temp_r6 = &arg0->spr278[arg1];
    var_r7 = 0;
    do {
        temp_r4 = arg0->players[var_r7];
        if (sub_802C080(temp_r4) == 0) {
            if (temp_r4->qWorldY > (s32)(temp_r0->qWorld.y + Q(temp_r6->hitboxes[0].b.bottom))) {
                if (temp_r4->moveState & 0x20) {
                    if ((temp_r4->sprColliding == &arg0->sprPlatforms[0]) || ((temp_r4->sprColliding == &arg0->sprPlatforms[1]))
                        || ((temp_r4->sprColliding == &arg0->sprPlatforms[2])) || (temp_r4->sprColliding == &arg0->sprPlatforms[3])) {
                        sub_8020CE0(temp_r6, I(temp_r0->qWorld.x), I(temp_r0->qWorld.y), 0, temp_r4);
                    }
                } else {
                    sub_8020CE0(temp_r6, I(temp_r0->qWorld.x), I(temp_r0->qWorld.y), 0, temp_r4);
                }
            }
        }
        var_r7 += 1;
    } while ((u32)var_r7 <= 1U);
}

void sub_807C5D0(void)
{
    HyperEggRobo *boss = TASK_DATA(gCurTask);
    Player *p;
    Sprite *temp_r1_2;
    u32 temp_r0;
    u8 var_r6;

    var_r6 = 0;
    do {
        p = boss->players[var_r6];
        if ((p->charFlags.someIndex == 1) || (p->charFlags.someIndex == 2) || (p->charFlags.someIndex == 4)) {
            if (!sub_802C0D4(p)) {
                if (0x20 & p->moveState) {
                    if (p->sprColliding != &boss->sprPlatforms[0]) {
                        if (p->sprColliding != &boss->sprPlatforms[1]) {
                            if ((p->sprColliding != &boss->sprPlatforms[2]) && (p->sprColliding != &boss->sprPlatforms[3])) {
                                p->moveState &= ~0x20;
                                p->moveState |= 4;
                                p->sprColliding = NULL;
                                sub_8016F28(p);
                                p->charFlags.someIndex &= ~1;
                                Player_8005380(p);
                            }
                        }
                    }
                }
            }
        }
        var_r6 += 1;
    } while ((u32)var_r6 <= 1U);
}

void sub_807C670(HyperEggRobo *boss)
{
    u8 sp0[4];
    s32 temp_r0;
    u32 temp_r0_2;
    u8 var_r0;
    s32 var_r5 = 0;
    memcpy(sp0, &gUnknown_080D5CA0, sizeof(sp0));

    temp_r0_2 = (u32)PseudoRandom32() % 10000U;
    if (gStageData.difficulty == 0) {
        if ((u32)boss->lives <= 4U) {
            goto block_7;
        }
        goto block_5;
    }
    if ((u32)boss->lives <= 3U) {
        var_r5 = 1;
    }
block_5:
    if (var_r5 == 0) {
        boss->unk1 = sp0[boss->unk12];
        boss->unk12 = (boss->unk12 + 1) & 3;
    } else {
    block_7:
        if (temp_r0_2 < 0x9C4) {
            var_r0 = 1;
        } else if (temp_r0_2 < 0x1388) {
            var_r0 = 2;
        } else if (temp_r0_2 < 0x1D4C) {
            var_r0 = 3;
        } else {
            var_r0 = 4;
        }
        boss->unk1 = var_r0;
    }
    boss->unk8 = 1;
    boss->unkC = 0;
}

void sub_807C728(HyperEggRobo *boss)
{
    s32 temp_r0_2;
    s32 temp_r1_2;
    s32 var_r2;
    u16 temp_r0;
    u16 temp_r0_3;
    u16 temp_r0_4;
    u8 var_r3;
    u8 var_r3_2;
    void *temp_r1_3;

    var_r2 = 0;
    switch (boss->unkC) {
        case 0:
            for (var_r3 = 0; var_r3 < ARRAY_COUNT(boss->unk194); var_r3++) {
                boss->unk194[var_r3].unk14 = 0;
                boss->unk194[var_r3].qWorld.x = boss->qWorld.x;
                boss->unk194[var_r3].qWorld.y = boss->qWorld.y - Q(32);
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
                temp_r0_3 = boss->unkA - 1;
                boss->unkA = temp_r0_3;
                if ((temp_r0_3 << 0x10) == 0) {
                    goto block_16;
                }
                goto block_15;
            }
            if (boss->unk16 != 0) {
                var_r2 = 1;
            }
        block_15:
            if (var_r2 != 0) {
            block_16:
                for (var_r3_2 = 0; var_r3_2 < 3; var_r3_2++) {
                    if (boss->unk194[var_r3_2].unk18 == 1) {
                        boss->unk194[var_r3_2].unk14 = 239;
                    }
                }
                boss->unk8 = 0x3C;
                boss->unkC = 0x3E8;
            } else {
                temp_r0_4 = boss->unk8 - 1;
                boss->unk8 = temp_r0_4;
                if ((temp_r0_4 << 0x10) == 0) {
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
    s32 temp_r0_2;
    u16 temp_r0;
    u16 temp_r1;

    temp_r1 = boss->unkC;
    switch (temp_r1) { /* irregular */
        case 0x0:
            sub_807DB00(boss, 0U, 2);
            sub_807DB00(boss, 1U, 2);
            boss->unk8 = 0xF0;
            boss->unkE = 1;
            boss->unkC = 0xA;
            return;
        case 0xA:
            temp_r0 = boss->unk8 - 1;
            boss->unk8 = temp_r0;
            if ((temp_r0 << 0x10) == 0) {
                boss->unkC = 0x14;
                return;
            }
            return;
        case 0x14:
            boss->unk3 = ((u32)((u32)PseudoRandom32() % 10000U) >> 2) & 3;
            boss->unk2 = 1;
            sub_807D8B4(boss, 1U, boss->unk3);
            boss->unkC = 0x64;
            return;
        case 0x64:
            if ((sub_807D9B4(boss, 0U) << 0x18) != 0) {
                boss->unkE += 1;
                boss->unkC = 0xC8;
                return;
            }
            break;
        case 0xC8:
            sub_807D8B4(boss, 0x14U, 0U);
            boss->unkC = 0x1F4;
            return;
        case 0x1F4:
            if ((sub_807D9B4(boss, 1U) << 0x18) != 0) {
                boss->unkC = 0x3E8;
                return;
            }
            break;
        case 0x3E8:
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
    u16 temp_r0;
    u16 temp_r0_3;
    u16 temp_r1;
    u8 temp_r0_2;
    u8 var_r0;

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
                    goto block_28;
                }
                boss->unkC = 0x1FE;
                boss->unk8 = 0x3C;
            }
            break;
        case 500:
            if ((sub_807D9B4(boss, 0U) << 0x18) != 0) {
            block_33:
                boss->unkC = 0x3E8;
                return;
            }
            break;
        case 510:
            temp_r0_3 = boss->unk8 - 1;
            boss->unk8 = temp_r0_3;
            if ((temp_r0_3 << 0x10) == 0) {
                goto block_33;
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
    u16 temp_r0;
    u16 temp_r0_2;

    switch (boss->unkC) {
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
    u8 *sp0;
    Sprite *temp_r0_2;
    s32 *temp_r2;
    s32 *temp_r3;
    s32 temp_r4;
    u8 *temp_r0;
    u8 var_r6;
    void *temp_r1;

    temp_r0 = VramMalloc(0x74U);
    boss->vram18 = temp_r0;
    sp0 = temp_r0;
    var_r6 = 0;
    do {
        temp_r0_2 = &boss->spr2C8[var_r6];
        temp_r0_2->tiles = sp0;
        temp_r0_2->anim = 0x4F0;
        temp_r0_2->variant = 0;
        temp_r0_2->oamFlags = 0x500;
        temp_r0_2->animCursor = 0;
        temp_r0_2->qAnimDelay = 0;
        temp_r0_2->prevVariant = 0xFF;
        temp_r0_2->animSpeed = 0x10;
        temp_r0_2->palId = 0;
        temp_r0_2->hitboxes[0].index = -1;
        temp_r0_2->frameFlags = 0x1000;
        boss->unk194[var_r6].qWorld.x = 0x67800;
        boss->unk194[var_r6].qWorld.y = 0x16000;
        temp_r0_2->x = ((s32)*temp_r2 >> 8) - gCamera.x;
        temp_r0_2->y = ((s32)*temp_r3 >> 8) - gCamera.y;
        UpdateSpriteAnimation(temp_r0_2);
        temp_r1 = boss + temp_r4;
        boss->unk194[var_r6].unk18 = 0;
        boss->unk194[var_r6].unk1A = 1;
        sp0 += 0x480;
        var_r6 += 1;
    } while ((u32)var_r6 <= 2U);
}

void sub_807CCA8(HyperEggRobo *boss)
{
    Sprite *temp_r5;
    u16 *temp_r4;
    u8 var_r7;

    for (var_r7 = 0; var_r7 < 3; var_r7++) {
        if (boss->unk194[var_r7].unk18 != 0) {
            temp_r5 = &boss->spr2C8[var_r7];
            temp_r5->x = I(boss->unk194[var_r7].qWorld.x) - gCamera.x;
            temp_r5->y = I(boss->unk194[var_r7].qWorld.y) - gCamera.y;

            if (boss->unk194[var_r7].unk1A != 0) {
                if (1 & boss->unk194[var_r7].unk1A) {
                    UpdateSpriteAnimation(temp_r5);
                    DisplaySprite(temp_r5);
                }
                boss->unk194[var_r7].unk1A -= 1;
            } else {
                UpdateSpriteAnimation(temp_r5);
                DisplaySprite(temp_r5);
            }
        }
    }
}

u32 sub_807CD4C(HyperEggRobo *boss)
{
    s32 temp_r1;
    s32 temp_r2;
    u32 var_r7;
    u8 var_r5;

    var_r7 = 0;
    if ((boss->unk194[0].unk18 != 0) && (boss->unk194[1].unk18 != 0) && (boss->unk194[2].unk18 != 0)) {
        return 0U;
    }
    var_r5 = 0;
loop_6:
    if ((boss->unk194[var_r5].unk18 == 0)
        || (temp_r2 = boss->unk194[var_r5].qWorld.x - boss->qWorld.x,
            temp_r1 = (*(&boss->unk194[0].qWorld.y + (var_r5 * 0x1C)) + 0x2000) - boss->qWorld.y,
            ((u32)Sqrt((temp_r2 * temp_r2) + (temp_r1 * temp_r1)) > 0x17FFU))) {
        var_r5 += 1;
        if ((u32)var_r5 <= 2U) {
            goto loop_6;
        }
    } else {
        var_r7 = 1;
    }
    return var_r7;
}
extern const u16 gUnknown_080D5C50[8][2]; // TODO: Type!
void sub_807CDF0(HyperEggRobo *boss)
{
    Sprite *temp_r0_4;
    s16 var_r1;
    s32 *temp_r6;
    s32 temp_r0;
    s32 temp_r1;
    s32 temp_r2_2;
    s32 var_r0_2;
    s32 var_r0_3;
    u16 temp_r0_2;
    u16 temp_r2;
    u16 temp_r4;
    u32 temp_r0_3;
    u8 temp_r0_5;
    u8 temp_r0_6;
    u8 var_ip;

    var_ip = 0;
loop_1:
    temp_r4 = boss->unk194[var_ip].unk18;
    if (temp_r4 != 0) {

    } else {
        boss->unk194[var_ip].unk18 = 1;
        boss->unk194[var_ip].unk14 = temp_r4;
        boss->unk194[var_ip].unk1A = 0x1E;
        boss->unk194[var_ip].qWorld.x = boss->qWorld.x;
        *(&boss->unk194[0].qWorld.y + (var_ip * 0x1C)) = boss->qWorld.y + 0xFFFFE000;
        temp_r0 = (gPseudoRandom * 0x196225) + 0x3C6EF35F;
        gPseudoRandom = temp_r0;
        temp_r0_2 = temp_r0 & 0x3FF;
        temp_r2 = temp_r0_2;
        temp_r0_3 = (u32)(temp_r0_2 << 0x10) >> 0x17;
        switch (temp_r0_3) {
            case 0:
            case 3:
            case 4:
            case 7:
                boss->unk194[var_ip].unk16 = temp_r2;
                break;
            case 1:
            case 5:
                var_r1 = temp_r2 - 0x80;
                boss->unk194[var_ip].unk16 = temp_r2 - 0x80;
                break;
            case 2:
            case 6:
                boss->unk194[var_ip].unk16 = temp_r2 + 0x80;
                break;
        }

        boss->unk194[var_ip].unk10 = gUnknown_080D5C50[boss->unk10][0];
        boss->unk194[var_ip].unk8 = (COS(boss->unk194[var_ip].unk16) * boss->unk194[var_ip].unk10) / 0x4000;
        boss->unk194[var_ip].unkC = (SIN(boss->unk194[var_ip].unk16) * boss->unk194[var_ip].unk10) / 0x4000;
        temp_r0_4 = &boss->spr2C8[var_ip];
        temp_r0_4->anim = 0x4F0;
        temp_r0_4->variant = 0;
        m4aSongNumStart(0x238U);
        temp_r0_5 = boss->unk10 + 1;
        boss->unk10 = temp_r0_5;
        if ((u32)temp_r0_5 > 2U) {
            boss->unk10 = 0;
        }
        var_ip = 3;
    }
    temp_r0_6 = var_ip + 1;
    var_ip = temp_r0_6;
    if ((u32)temp_r0_6 <= 2U) {
        goto loop_1;
    }
}

bool32 sub_807D41C(HyperEggRobo *arg0, u8 arg1);
s32 sub_807D37C(HyperEggRobo *boss, HyberEggRoboStrc194 *strc194);
void sub_807CFAC(HyperEggRobo *boss)
{
    s32 sp0;
    s32 sp4;
    s32 sp8;
    s32 spC;
    Sprite *sp10;
    s32 sp14;
    s32 sp18;
    HyberEggRoboStrc194 *temp_r0_4;
    Player *temp_r4_2;
    Player *temp_r4_3;
    Player *temp_r4_4;
    Player *temp_r4_5;
    Player *temp_r4_6;
    s16 temp_r0_3;
    s16 temp_r0_7;
    s32 *temp_r6;
    s32 temp_r1_2;
    s32 temp_r2;
    s32 temp_r3;
    s32 temp_r3_2;
    s32 temp_r4;
    s32 temp_sb;
    u16 temp_r0_2;
    u16 temp_r0_6;
    u16 temp_r5;
    u32 temp_r1;
    u8 temp_r0;
    u8 temp_r0_9;
    void *temp_r0_5;
    void *temp_r0_8;

    for (sp4 = 0; sp4 < 3; sp4++) {
        sp10 = &boss->spr2C8[sp4];
        temp_r4 = sp4 * 0x1C;
        temp_r5 = boss->unk194[sp4].unk18;
        sp14 = sp4 * 8;
        if (temp_r5 != 1) {
            switch ((s32)temp_r5) { /* irregular */
                case 0x64:
                    boss->unk194[sp4].unk14 = 0x1E;
                    boss->unk194[sp4].unk18 = 0x6E;
                    boss->unk194[sp4].unk1A = 0;
                    m4aSongNumStart(0x239U);
                    sp10->anim = 0x4F6;
                    sp10->variant = 0;
                    for (sp8 = 0; sp8 < 2; sp8++) {
                        temp_r4_2 = boss->players[sp8];
                        if ((temp_r4_2->moveState & 0x20) && (temp_r4_2->sprColliding == sp10)) {
                            temp_r4_2->moveState &= ~0x20;
                            temp_r4_2->sprColliding = NULL;
                        }
                    }
                    break;
                case 0x6E:
                    temp_r0_2 = boss->unk194[sp4].unk14 - 1;
                    boss->unk194[sp4].unk14 = temp_r0_2;
                    temp_r0_3 = (s16)temp_r0_2;
                    if (temp_r0_3 == 0) {
                        boss->unk194[sp4].unk18 = (u16)temp_r0_3;
                    }
                    break;
            }
        } else {
            temp_r0_4 = &boss->unk194[sp4];
            temp_r0_4->qWorld.x = temp_r0_4->qWorld.x + *(&boss->unk194[0].unk8 + temp_r4);
            boss->unk194[sp4].qWorld.y += *(&boss->unk194[0].unkC + temp_r4);
            sp18 = temp_r0_4->qWorld.x;
            sub_807D41C(boss, sp4);
            temp_r3_2 = temp_r0_4->qWorld.x - temp_r0_4->qWorld.x;
            spC = boss->unk194[sp4].qWorld.y + Q(sp10->hitboxes[0].b.bottom);
            sp18 = temp_r3_2;
            sub_807D37C(boss, &boss->unk194[sp4]);
            if (boss->unk194[sp4].unk1A == 0) {
                sp0 = boss->unk194[sp4].qWorld.y - boss->unk194[sp4].qWorld.y;
                sp8 = (s32)sub_807C244(sp10, temp_r0_4->qWorld.x, boss->unk194[sp4].qWorld.y, temp_r3_2, sp0);
                if (sub_802C080(boss->players[0]) == 0) {
                    if (temp_r5 & sp8) {
                        if (((s32)(boss->unk194[sp4].qWorld.y >> 8) <= 32) && (boss->players[0]->framesInvulnerable == 0)
                            && (boss->lives != 0)) {
                            Call__Player_8014550(boss->players[0]);
                        }
                    } else if ((boss->players[0]->qWorldY > spC) && (boss->lives != 0)) {
                        sub_8020CE0(sp10, I(temp_r0_4->qWorld.x), I(boss->unk194[sp4].qWorld.y), 0, boss->players[0]);
                    }
                }
                temp_r4_4 = boss->players[1];
                if ((sub_802C080(temp_r4_4) == 0) && !(2 & sp8) && ((s32)temp_r4_4->qWorldY > spC) && (boss->lives != 0)) {
                    temp_r2 = sp14 - sp4;
                    //                sp0 = temp_r4_4;
                    //                sub_8020CE0(sp10, (s32) *(boss->unk194 + (temp_r2 * 4)) >> 8, (s32)
                    //                (&boss->unk194[0].qWorld.y)[temp_r2] >> 8, 0, M2C_ERROR(/* Unable to find stack arg 0x0 in block */));
                }
            }

            if (boss->unk194[sp14 - sp4].unk14 != 0) {
                boss->unk194[sp14 - sp4].unk14 += 1;
                if ((boss->unk194[sp14 - sp4].unk14 != 0xB4) && (boss->unk194[sp14 - sp4].unk14 == 0xF0)) {
                    if (1 & sp8) {
                        temp_r4_5 = boss->players[0];
                        if (sub_802C080(temp_r4_5) == 0) {
                            Call__Player_8014550(temp_r4_5);
                        }
                    }
                    if (2 & sp8) {
                        temp_r4_6 = boss->players[1];
                        if (sub_802C080(temp_r4_6) == 0) {
                            Call__Player_8014550(temp_r4_6);
                        }
                    }
                    boss->unk194[sp14 - sp4].unk18 = 0x64;
                }
            }
            if (sp8 != 0) {
                if (boss->unk194[sp14 - sp4].unk14 == 0) {
                    boss->unk194[sp14 - sp4].unk14 = 1;
                }
            } else {
                boss->unk194[sp14 - sp4].unk14 = 0; //(u16) sp0.unk8;
            }
        }
    }
}

void sub_807D2A4(HyberEggRoboStrc194 *strc194, u8 param1)
{
    s32 temp_r1_2;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r0_3;
    s32 var_r4;
    u16 var_r2;
    u8 temp_r1;

    temp_r1 = param1;
    var_r2 = strc194->unk16;
    switch (temp_r1) { /* irregular */
        case 0:
            if ((u32)var_r2 > 0x2FFU) {
                var_r0 = 0x400;
            } else {
                var_r4 = 0x400;
            block_18:
                var_r0 = var_r4;
            }
        block_19:
            var_r2 = var_r0 - var_r2;
            break;
        case 1:
            if ((u32)var_r2 > 0xFFU) {
                var_r0 = 0x400;
            } else {
                var_r4 = 0x400;
                goto block_18;
            }
            goto block_19;
        case 2:
            if ((u32)var_r2 > 0x1FFU) {
                var_r0 = 0x600;
            } else {
            block_17:
                var_r4 = 0x200;
                goto block_18;
            }
            goto block_19;
        case 3:
            if ((u32)var_r2 > 0x2FFU) {
                var_r0 = 0x600;
            } else {
                goto block_17;
            }
            goto block_19;
    }
    strc194->unk16 = var_r2 & 0x3FF;
    temp_r1_2 = strc194->unk10;
    var_r0_2 = temp_r1_2 * gSineTable[strc194->unk16 + 0x100];
    if (var_r0_2 < 0) {
        var_r0_2 += 0x3FFF;
    }
    strc194->unk8 = var_r0_2 >> 0xE;
    var_r0_3 = temp_r1_2 * gSineTable[strc194->unk16];
    if (var_r0_3 < 0) {
        var_r0_3 += 0x3FFF;
    }
    strc194->unkC = var_r0_3 >> 0xE;
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

extern u8 gUnknown_080D5CA4[4];
bool32 sub_807D41C(HyperEggRobo *boss, u8 arg1)
{
    u8 sp0[4];
    s32 sp8;
    HyberEggRoboStrc194 *temp_r4;
    HyberEggRoboStrc194 *temp_r5;
    s32 temp_r0_3;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r2;
    s32 temp_r6;
    s32 temp_r6_2;
    s32 var_r0_2;
    s32 var_r0_3;
    s32 var_r0_4;
    s32 var_r0_5;
    s32 var_r0_6;
    s32 var_r0_7;
    s32 var_r0_8;
    s32 var_r0_9;
    s32 var_r7;
    u16 temp_r0;
    u16 temp_r2_2;
    u16 temp_r3;
    u16 temp_r3_2;
    u16 temp_r3_3;
    u32 temp_r0_2;
    u32 temp_r0_4;
    u8 var_r0;

    sp8 = (s32)arg1;
    var_r7 = 0;
    memcpy(&sp0, &gUnknown_080D5CA4, 4);
    temp_r5 = &boss->unk194[sp8];
    var_r0 = sp0[arg1];
loop_25:
    if ((u32)var_r0 <= 2U) {
        if (var_r0 == sp8) {

        } else {
            temp_r4 = &boss->unk194[var_r0];
            if (temp_r4->unk18 == 0) {

            } else {
                temp_r1 = temp_r5->qWorld.x - temp_r4->qWorld.x;
                temp_r6 = temp_r5->qWorld.y - temp_r4->qWorld.y;
                if ((u32)((u32)(Sqrt((temp_r1 * temp_r1) + (temp_r6 * temp_r6)) << 0x10) >> 0x18) > 0x13U) {

                } else {
                    temp_r0 = (u16)sa2__sub_8004418((s16)((s32)((temp_r5->qWorld.y - temp_r4->qWorld.y) << 8) >> 0x10),
                                                    (s16)((s32)((temp_r5->qWorld.x - temp_r4->qWorld.x) << 8) >> 0x10));
                    temp_r5->unk16 = temp_r0;
                    temp_r4->unk16 = (temp_r0 + 0x200) & 0x3FF;
                    temp_r0_2 = temp_r5->qWorld.x + temp_r4->qWorld.x;
                    temp_r0_3 = (s32)(temp_r0_2 + (temp_r0_2 >> 0x1F)) >> 1;
                    temp_r0_4 = temp_r5->qWorld.y + temp_r4->qWorld.y;
                    temp_r6_2 = (s32)(temp_r0_4 + (temp_r0_4 >> 0x1F)) >> 1;
                    temp_r3 = temp_r5->unk16;
                    var_r0_2 = gSineTable[temp_r3 + 0x100] * 0xB;
                    if (var_r0_2 < 0) {
                        var_r0_2 += 0x3F;
                    }
                    var_r0_3 = gSineTable[temp_r3] * 0xB;
                    if (var_r0_3 < 0) {
                        var_r0_3 += 0x3F;
                    }
                    temp_r5->qWorld.x = temp_r0_3 + (var_r0_2 >> 6);
                    temp_r5->qWorld.y = temp_r6_2 + (var_r0_3 >> 6);
                    temp_r3_2 = temp_r5->unk16;
                    temp_r2 = temp_r5->unk10;
                    var_r0_4 = temp_r2 * gSineTable[temp_r3_2 + 0x100];
                    if (var_r0_4 < 0) {
                        var_r0_4 += 0x3FFF;
                    }
                    temp_r5->unk8 = var_r0_4 >> 0xE;
                    var_r0_5 = temp_r2 * gSineTable[temp_r3_2];
                    if (var_r0_5 < 0) {
                        var_r0_5 += 0x3FFF;
                    }
                    temp_r5->unkC = var_r0_5 >> 0xE;
                    temp_r3_3 = temp_r4->unk16;
                    var_r0_6 = gSineTable[temp_r3_3 + 0x100] * 0xB;
                    if (var_r0_6 < 0) {
                        var_r0_6 += 0x3F;
                    }
                    var_r0_7 = gSineTable[temp_r3_3] * 0xB;
                    if (var_r0_7 < 0) {
                        var_r0_7 += 0x3F;
                    }
                    temp_r4->qWorld.x = temp_r0_3 + (var_r0_6 >> 6);
                    temp_r4->qWorld.y = temp_r6_2 + (var_r0_7 >> 6);
                    temp_r2_2 = temp_r4->unk16;
                    temp_r1_2 = temp_r4->unk10;
                    var_r0_8 = temp_r1_2 * gSineTable[temp_r2_2 + 0x100];
                    if (var_r0_8 < 0) {
                        var_r0_8 += 0x3FFF;
                    }
                    temp_r4->unk8 = var_r0_8 >> 0xE;
                    var_r0_9 = temp_r1_2 * gSineTable[temp_r2_2];
                    if (var_r0_9 < 0) {
                        var_r0_9 += 0x3FFF;
                    }
                    temp_r4->unkC = var_r0_9 >> 0xE;
                    var_r7 = 1;
                }
            }
        }
        var_r0 += 1;
        goto loop_25;
    }
    if (var_r7 != 0) {
        m4aSongNumStart(0x238U);
    }
    return var_r7;
}

u8 sub_807D610(HyperEggRobo *boss, s32 arg1, u8 arg2)
{
    HyperEggRobo *sp0;
    HyberEggRoboStrc194 *temp_r4;
    u16 temp_r0;
    u8 var_r2;
    u8 var_r7;

    sp0 = boss;
    var_r7 = 0;
    var_r2 = 0;
    temp_r4 = boss->unk194;
    do {
        if (sp0->unk194[var_r2].unk18 != 0) {
            if (arg2 == 0) {
                if ((s32)temp_r4[var_r2].qWorld.x <= arg1) {
                    temp_r0 = sp0->unk194[var_r2].unk16;
                    if (((u32)temp_r0 > 0x100U) && ((u32)temp_r0 <= 0x2FFU)) {
                        var_r7 = 0x80 | var_r2;
                        goto block_10;
                    }
                }
            } else if (((s32)temp_r4[var_r2].qWorld.x >= arg1) && ((u32)(u16)(sp0->unk194[var_r2].unk16 + 0xFFFFFF00) > 0x200U)) {
                var_r7 = var_r2 | 0x80;
            block_10:
                var_r2 = 3;
            }
        }
        var_r2 += 1;
    } while ((u32)var_r2 <= 2U);
    return var_r7;
}

void sub_358_807D6C4(HyperEggRobo *boss)
{
    SpriteTransform *tf;

    boss->pos144[0].qWorld.x = 0x5C400;
    boss->pos144[0].qWorld.y = 0x9800;
    sub_807DB00(boss, 0U, 0U);
    boss->pos144[1].qWorld.x = 0x72C00;
    boss->pos144[1].qWorld.y = 0x9800;
    sub_807DB00(boss, 1U, 0U);
    tf = &boss->tf340[0];
    boss->spr278[0].tiles = VramMalloc(0x40U);
    boss->spr278[0].anim = 0x4F1;
    boss->spr278[0].variant = 0;
    boss->spr278[0].oamFlags = 0x500;
    boss->spr278[0].animCursor = 0;
    boss->spr278[0].qAnimDelay = 0;
    boss->spr278[0].prevVariant = -1;
    boss->spr278[0].animSpeed = 0x10;
    boss->spr278[0].palId = 0;
    boss->spr278[0].hitboxes[0].index = -1;
    boss->spr278[0].frameFlags = 0x106A;
    boss->spr278[0].x = I(boss->pos144[0].qWorld.x) - gCamera.x;
    boss->spr278[0].y = I(boss->pos144[0].qWorld.y) - gCamera.y;
    tf->rotation = 0;
    tf->x = boss->spr278[0].x;
    tf->y = boss->spr278[0].y;
    tf->qScaleX = Q(1);
    tf->qScaleY = Q(1);
    UpdateSpriteAnimation(boss->spr278);

    tf = &boss->tf340[1];
    boss->spr278[1].tiles = VramMalloc(0x40U);
    boss->spr278[1].anim = 0x4F1;
    boss->spr278[1].variant = 6;
    boss->spr278[1].oamFlags = 0x500;
    boss->spr278[1].animCursor = 0;
    boss->spr278[1].qAnimDelay = 0;
    boss->spr278[1].prevVariant = -1;
    boss->spr278[1].animSpeed = 0x10;
    boss->spr278[1].palId = 0;
    boss->spr278[1].hitboxes[0].index = -1;
    boss->spr278[1].frameFlags = 0x106B;
    boss->spr278[1].x = I(boss->pos144[1].qWorld.x) - gCamera.x;
    boss->spr278[1].y = I(boss->pos144[1].qWorld.y) - gCamera.y;
    tf->rotation = 0;
    tf->x = boss->spr278[1].x;
    tf->y = boss->spr278[1].y;
    tf->qScaleX = Q(1);
    tf->qScaleY = Q(1);
    UpdateSpriteAnimation(&boss->spr278[1]);
}

void sub_807D81C(HyperEggRobo *boss)
{
    Sprite *s;
    s16 temp_r2;
    s16 temp_r2_2;

    s = boss->spr278;
    boss->spr278[0].x = I(boss->pos144[0].qWorld.x) - gCamera.x;
    boss->spr278[0].y = I(boss->pos144[0].qWorld.y) - gCamera.y;
    boss->tf340[0].x = boss->spr278[0].x;
    boss->tf340[0].y = boss->spr278[0].y;
    TransformSprite(s, boss->tf340);
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
    s = &boss->spr278[1];
    s->x = I(boss->pos144[1].qWorld.x) - gCamera.x;
    s->y = I(boss->pos144[1].qWorld.y) - gCamera.y;
    boss->tf340[1].x = s->x;
    boss->tf340[1].y = s->y;
    TransformSprite(s, &boss->tf340[1]);
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

u8 sub_807D8B4(HyperEggRobo *boss, u8 param1, u8 param2)
{
    s16 var_r0;
    u16 *var_r1;
    u8 temp_r0;
    u8 temp_r1;

    temp_r0 = param1;
    temp_r1 = param2;
    if (temp_r0 != 1) {
        if ((s32)temp_r0 <= 1) {
            if (temp_r0 != 0) {
                return temp_r0;
            }
            if ((u32)temp_r1 <= 1U) {
                boss->pos144[0].unk1A = temp_r1 | 0x80;
                var_r1 = &boss->pos144[1].unk16;
                var_r0 = 0x3E8;
            } else {
                boss->pos144[1].unk1A = temp_r1 | 0x80;
                var_r1 = &boss->pos144[0].unk16;
                var_r0 = 0x3E8;
            }
            goto block_26;
        }
        switch (temp_r0) { /* switch 1; irregular */
            case 10: /* switch 1 */
                boss->pos144[0].unk1A = 0;
                boss->pos144[1].unk1A = 0;
                var_r0 = 0x14;
                boss->pos144[0].unk16 = 0x14;
            block_25:
                var_r1 = &boss->pos144[1].unk16;
            block_26:
                *var_r1 = var_r0;
                return (u8)var_r0;
            case 20: /* switch 1 */
                var_r0 = 0x12C;
                boss->pos144[0].unk16 = 0x12C;
                goto block_25;
            default: /* switch 1 */
                return temp_r0;
        }
    } else if (temp_r1 != 1) {
        if ((s32)temp_r1 <= 1) {
            if (temp_r1 != 0) {
                return temp_r0;
            }
            boss->pos144[0].unk1A = 0x80;
            goto block_20;
        }
        switch (temp_r1) {
            case 2: /* switch 2 */
                boss->pos144[0].unk1A = 0x81;
            block_20:
                boss->pos144[1].unk1A = 0x82;
                return 0x82U;
            case 3: /* switch 2 */
                boss->pos144[0].unk1A = 0x81;
                goto block_22;
            default: /* switch 2 */
                return temp_r0;
        }
    } else {
        boss->pos144[0].unk1A = 0x80;
    block_22:
        boss->pos144[1].unk1A = 0x83;
        return 0x83U;
    }
}

u8 sub_807D9B4(HyperEggRobo *boss, u8 param1)
{
    u16 temp_r1_2;
    u16 temp_r1_3;
    u8 temp_r1;
    u8 var_r3;

    temp_r1 = param1;
    var_r3 = 0;
    switch (temp_r1) { /* irregular */
        case 0:
            temp_r1_2 = boss->pos144[0].unk16;
            if ((temp_r1_2 == 0x3E8) && (boss->pos144[1].unk16 == temp_r1_2)) {
            block_14:
                var_r3 = 1;
            }
            break;
        case 1:
            temp_r1_3 = boss->pos144[0].unk16;
            if ((temp_r1_3 == 0x15E) && (boss->pos144[1].unk16 == temp_r1_3)) {
                goto block_14;
            }
            break;
        case 2:
            if ((boss->pos144[0].unk16 == 0x6E) && (boss->pos144[1].unk16 == 0x6E)) {
                goto block_14;
            }
            break;
    }
    return var_r3;
}

void sub_807DA34(HyperEggRobo *boss, u8 param1)
{
    u16 sp0[2];
    s32 sp4;
    HyberEggRoboStrc144 *temp_r6;
    Player *temp_r4;
    s16 var_r0;
    s32 temp_r1_2;
    s32 temp_r2;
    s32 temp_r2_2;
    u16 temp_r0;
    u8 temp_r1;

    temp_r1 = param1;
    temp_r6 = &boss->pos144[temp_r1];
    temp_r4 = boss->players[0];
    sp0[0] = (sp0[0] & 0xFFFF0000) | (u16)(((s32)temp_r4->qWorldX >> 8) - ((s32)temp_r6->qWorld.x >> 8));
    sp4 = (0xFFFF & sp0[0]) | ((((s32)temp_r4->qWorldY >> 8) - ((s32)temp_r6->qWorld.y >> 8)) << 0x10);
    sp4 &= 0xFFFF0000;
    sa2__sub_8085A9C((UNK_8085D14 *)&sp0, 8U);
    temp_r6->qUnk8.x = sp0[0];
    temp_r6->qUnk8.y = sp0[1];
    temp_r2_2 = temp_r4->qWorldX - temp_r6->qWorld.x;
    temp_r1_2 = temp_r4->qWorldY - temp_r6->qWorld.y;
    temp_r6->unk24 = Sqrt(SQUARE(temp_r2_2) + SQUARE(temp_r1_2));
    temp_r6->unk1C = (temp_r6->unk24 >> 4);
    temp_r6->unk20 = 0;
    temp_r6->unk14 = 0xA;
    temp_r6->unk16 = 0xC8;
    if (temp_r1 != 0) {
        var_r0 = 0x4C0;
    } else {
        var_r0 = 0x500;
    }
    boss->spr278[1].oamFlags = var_r0;
}

void sub_807DB00(HyperEggRobo *boss, u8 arg1, u8 arg2)
{
    s32 temp_r3;
    void *temp_r0;

    temp_r3 = arg1 * 0x28;
    boss->pos144[arg1].qWorld.x = 0;
    boss->pos144[arg1].qWorld.y = 0;
    boss->pos144[arg1].unk14 = 1;
    boss->pos144[arg1].unk16 = 0;
    boss->pos144[arg1].unk18 = arg2;
    boss->pos144[arg1].unk19 = 0;
    boss->pos144[arg1].unk13 = 1;
}

void sub_807E214(HyperEggRobo *boss, u8 param1);
void PlayerCB_80819BC(Player *p);
void sub_807DB60(HyperEggRobo *boss)
{
    s32 sp4;
    s32 sp8;
    s32 spC;
    s32 sp10;
    HyberEggRoboStrc144 *temp_r6;
    Sprite *temp_r1;
    Sprite *temp_r7;
    Sprite *temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_4;
    s32 temp_r6_2;
    s32 temp_sl;
    HyperEggRobo *boss2;
    u8 temp_r0;
    u8 temp_r0_5;
    u8 var_sb;

    for (sp4 = 0; sp4 < 2; sp4++) {
    loop_1:
        boss->unk11 = 0;
        temp_r6 = &boss->pos144[sp4];
        gUnknown_08E2ED18[temp_r6->unk18](boss, (u8)sp4);
        sp10 = sp4 * 4;
        if ((gUnknown_08E2ED18[temp_r6->unk18] == sub_807E214) && (temp_r6->unk1B != 0)
            && (boss->players[0]->callback != PlayerCB_80819BC)) {
            temp_r6->unk1B = 0;
        }
        spC = sp4 * 2;
        sp8 = sp4 + 1;
        if ((temp_r6->unk13 != 0) && (boss->lives != 0)) {
            if (boss->unk11 != 0) {
                sub_807C518(boss, (u8)sp4);
            } else {
                temp_r7 = ((sp10 + sp4) * 8) + boss->spr278;
                temp_sl = temp_r6->qWorld.x;
                temp_r6_2 = temp_r6->qWorld.y;
                boss2 = TASK_DATA(gCurTask);
                for (var_sb = 0; var_sb < 2; var_sb++) {
                    Player *p = boss2->players[var_sb];
                    if (sub_802C080(p) == 0) {
                        if (p->moveState & 0x20) {
                            if ((p->sprColliding == &boss2->sprPlatforms[0]) || (p->sprColliding == &boss2->sprPlatforms[1])
                                || (p->sprColliding == &boss2->sprPlatforms[2]) || (p->sprColliding == &boss2->sprPlatforms[3])) {
                                sub_8020CE0(temp_r7, temp_sl >> 8, temp_r6_2 >> 8, 0, p);
                            }
                        } else {
                            sub_8020CE0(temp_r7, temp_sl >> 8, temp_r6_2 >> 8, 0, p);
                        }
                    }
                }
            }
        }
        //    sub_807F334(boss->spr278[sp10 + sp4], ((spC + sp4) * 4) + 0x340 + boss, 0U, sp4);
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
    s32 temp_r5;
    s32 temp_r6;
    s32 var_r0_3;
    s32 var_r0_4;
    s32 var_r1;
    s32 var_r1_2;
    s32 var_r8;
    u16 temp_r0;
    u8 temp_r3;
    u8 temp_r7;

    temp_r7 = param1;
    temp_r5 = temp_r7 * 0x28;
    temp_r4 = &boss->pos144[temp_r7];
    var_r8 = 0;
    temp_r0 = temp_r4->unk16;
    switch (temp_r0) { /* irregular */
        case 0:
            if (temp_r7 == 0) {
                var_r1 = temp_r4->qWorld.x + 0x3200;
            } else {
                var_r1 = temp_r4->qWorld.x + 0xFFFFCE00;
            }
            temp_r3 = sub_807D610(boss, var_r1, temp_r7);
            if (temp_r3 != 0) {
                temp_r4->unk19 = temp_r3;
                var_r0 = 0xA;
            block_26:
                temp_r4->unk16 = (u16)var_r0;
            }
            return;
        case 10:
            temp_r3_2 = 0x7F & temp_r4->unk19;
            if (boss->unk194[temp_r3_2].unk18 == 0) {
                temp_r4->unk19 = 0;
                temp_r4->unk14 = 0x3C;
                var_r0 = 0x14;
                goto block_26;
            }
            if ((s32) * (&boss->unk194[0].qWorld.y + (temp_r3_2 * 0x1C)) > (s32)temp_r4->qWorld.y) {
                var_r0_2 = &boss->pos144[0].qUnk8.y + temp_r5;
                var_r1_2 = 0x200;
            } else {
                var_r0_2 = &boss->pos144[0].qUnk8.y + temp_r5;
                var_r1_2 = 0xFFFFFE00;
            }
            *var_r0_2 = var_r1_2;
            temp_r6 = temp_r4->qWorld.y + temp_r4->qUnk8.y;
            temp_r4->qWorld.y = temp_r6;
            temp_r3_3 = temp_r4->qWorld.x - boss->unk194[temp_r3_2].qWorld.x;
            var_r0_3 = temp_r3_3;
            if (temp_r3_3 < 0) {
                var_r0_3 = 0 - temp_r3_3;
            }
            temp_r1 = temp_r6 - *(&boss->unk194[0].qWorld.y + (temp_r3_2 * 0x1C));
            var_r0_4 = temp_r1;
            if (temp_r1 < 0) {
                var_r0_4 = 0 - temp_r1;
            }
            if (((s32)(var_r0_3 >> 8) <= 0xF) && ((s32)(var_r0_4 >> 8) <= 0x1F)) {
                sub_807D2A4(&boss->unk194[temp_r3_2], (u8)(temp_r7 + 2));
                var_r8 = 1;
            }
            if (var_r8 != 0) {
                m4aSongNumStart(0x238U);
                temp_r4->unk19 = 0;
                temp_r4->unk14 = 0x3C;
                var_r0 = 0x14;
                goto block_26;
            }
            break;
        case 20:
            temp_r0_2 = (u16)temp_r4->unk14 - 1;
            temp_r4->unk14 = temp_r0_2;
            var_r0 = temp_r0_2;
            if (var_r0 == 0) {
                goto block_26;
            }
            break;
    }
}

void sub_807F334(Sprite *s, SpriteTransform *tf, u8 param2, u8 param3);

extern const u16 gUnknown_080D5C70[4];
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
    u16 temp_r1_4;
    u16 temp_r1_5;
    u16 temp_r6;
    u16 var_r0;
    u8 temp_r2_4;

    temp_r5 = &boss->pos144[param1];
    temp_r0_2 = &boss->spr278[param1];
    temp_r2 = &boss->tf340[param1];
    var_sl = 0;
    temp_r6 = temp_r5->unk16;
    switch (temp_r6) { /* irregular */
        case 0x78:
            temp_r4 = temp_r5->qWorld.y;
            temp_r0_3 = temp_r4 + temp_r5->qUnk8.y;
            temp_r5->qWorld.y = temp_r0_3;
            sub_807F334(temp_r0_2, temp_r2, 1U, param1);
            sub_807C244(temp_r0_2, temp_r5->qWorld.x, temp_r5->qWorld.y, 0, temp_r4 - temp_r0_3);
            boss->unk11 = 1;
            if ((s32)temp_r5->qWorld.y > (s32)(boss->qWorld.y + 0xFFFFC000)) {
                return;
            }
            sub_807C48C(temp_r0_2);
            temp_r5->unk13 = 0;
            var_r0 = 0xC8;
        block_107:
            temp_r5->unk16 = var_r0;
            return;
        case 0x64:
            temp_r4_2 = temp_r5->qWorld.y;
            temp_r0_4 = temp_r4_2 + temp_r5->qUnk8.y;
            temp_r5->qWorld.y = temp_r0_4;
            sub_807F334(temp_r0_2, temp_r2, 1U, param1);
            sub_807C244(temp_r0_2, temp_r5->qWorld.x, temp_r5->qWorld.y, 0, temp_r4_2 - temp_r0_4);
            boss->unk11 = 1;
            temp_r1 = 0x7F & temp_r5->unk1A;
            temp_r2_2 = temp_r1 * 0x14;
            temp_r3_2 = &boss->unk2C[0].unkC + temp_r2_2;
            if ((s32)*temp_r3_2 <= 0) {
                temp_r1_2 = *(&boss->pos144[0].qWorld.y + (param1 * 0x28)) - *(&boss->unk2C[0].qWorld.y + temp_r2_2);
                var_r0_2 = temp_r1_2;
                if (temp_r1_2 < 0) {
                    var_r0_2 = 0 - temp_r1_2;
                }
                if ((s32)(var_r0_2 >> 8) <= 0x13) {
                    *temp_r3_2 = *(&boss->pos144[0].qUnk8.y + (param1 * 0x28));
                    boss->unk2C[temp_r1].unk12 = (s16)temp_r6;
                    m4aSongNumStart(0x23AU);
                }
            }
            if ((s32)temp_r5->qWorld.y <= 0xF3FF) {
                return;
            }
            temp_r5->qUnk8.y = -0x180;
            temp_r0_5 = (gPseudoRandom * 0x196225) + 0x3C6EF35F;
            gPseudoRandom = temp_r0_5;
            temp_r5->unk14 = gUnknown_080D5C70[temp_r0_5 & 3];
            var_r0 = 0x6E;
            goto block_107;
        case 0x1E:
            temp_r0_6 = (u16)temp_r5->unk14 - 1;
            temp_r5->unk14 = temp_r0_6;
            if ((temp_r0_6 << 0x10) != 0) {
                return;
            }
            var_r0 = 0x64;
            goto block_107;
        case 0x6E:
            sub_807F334(temp_r0_2, temp_r2, 1U, param1);
            temp_r0_7 = (u16)temp_r5->unk14 - 1;
            temp_r5->unk14 = temp_r0_7;
            if ((temp_r0_7 << 0x10) != 0) {
                return;
            }
            temp_r5->unk16 = 0x78U;
            temp_r5->unk13 = 1;
            return;
        case 0x136:
            temp_r1_3 = temp_r5->qWorld.x + temp_r5->qUnk8.x;
            temp_r5->qWorld.x = temp_r1_3;
            if (param1 == 0) {
                if (temp_r1_3 <= 0x61400) {
                    temp_r5->qWorld.x = 0x61400;
                    var_r0 = 0x140;
                    goto block_107;
                }
            } else if (temp_r1_3 > 0x6DBFF) {
                temp_r5->qWorld.x = 0x6DC00;
                var_r0 = 0x140;
                goto block_107;
            }
            break;
        case 0xD2:
            temp_r0_8 = (u16)temp_r5->unk14 - 1;
            temp_r5->unk14 = temp_r0_8;
            if ((temp_r0_8 << 0x10) == 0) {
                var_r0 = 0x3E8;
                goto block_107;
            }
            break;
        case 0xC8:
            if (param1 == 0) {
                temp_r0_9 = (temp_r2->rotation - 0x10) & 0x3FF;
                temp_r2->rotation = temp_r0_9;
                if (temp_r0_9 == 0x100) {
                    goto block_90;
                }
                goto block_89;
            }
            temp_r0_10 = (temp_r2->rotation + 0x10) & 0x3FF;
            temp_r2->rotation = temp_r0_10;
            if (temp_r0_10 == 0x300) {
                var_sl = 1;
            }
        block_89:
            if (var_sl != 0) {
            block_90:
                temp_r5->unk14 = 0x1E;
                var_r0 = 0xD2;
                goto block_107;
            }
            break;
        case 0x12C:
            if (param1 == 0) {
                var_r0_3 = -0x200;
            } else {
                var_r0_3 = 0x200;
            }
            temp_r5->qUnk8.x = var_r0_3;
            var_r0 = 0x136;
            goto block_107;
            return;
        case 0x140:
            if (param1 == 0) {
                var_r0_4 = temp_r2->rotation - 0x10;
            } else {
                var_r0_4 = temp_r2->rotation + 0x10;
            }
            temp_r2->rotation = var_r0_4 & 0x3FF;
            if (temp_r2->rotation == 0) {
                temp_r5->unk13 = 1;
                var_r0 = 0x15E;
                goto block_107;
            }
            break;
        case 0x0:
            temp_r5->qUnk8.y = -0x200;
            temp_r5->unk1A = 0;
            var_r0 = 0xA;
            goto block_107;
        case 0xA:
            if (param1 == 0) {
                temp_r1_4 = temp_r2->rotation;
                if (temp_r1_4 != 0x100) {
                    var_r0_5 = temp_r1_4 + 0x10;
                    goto block_42;
                }
            } else {
                temp_r1_5 = temp_r2->rotation;
                if (temp_r1_5 != 0x300) {
                    var_r0_5 = temp_r1_5 - 0x10;
                block_42:
                    temp_r2->rotation = var_r0_5 & 0x3FF;
                }
            }
            temp_r0_11 = temp_r5->qWorld.y + temp_r5->qUnk8.y;
            temp_r5->qWorld.y = temp_r0_11;
            if (temp_r0_11 > (s32)(boss->qWorld.y + 0xFFFFC000)) {
                return;
            }
            if (param1 == 0) {
                var_r0_6 = 0x200;
            } else {
                var_r0_6 = -0x200;
            }
            temp_r5->qUnk8.x = var_r0_6;
            var_r0 = 0x14;
            goto block_107;
        case 0x14:
            temp_r1_6 = temp_r5->qUnk8.x;
            temp_r2_3 = temp_r5->qWorld.x + temp_r1_6;
            temp_r5->qWorld.x = temp_r2_3;
            if (param1 == 0) {
                if (temp_r1_6 >= 0) {
                    if (temp_r2_3 > 0x667FF) {
                        var_r0_7 = 0x66800;
                        goto block_59;
                    }
                } else {
                    var_r0_7 = 0x61400;
                    goto block_58;
                }
            } else if (temp_r1_6 >= 0) {
                if (temp_r2_3 > 0x6DBFF) {
                    var_r0_7 = 0x6DC00;
                    goto block_59;
                }
            } else {
                var_r0_7 = 0x68800;
            block_58:
                if (temp_r2_3 <= var_r0_7) {
                block_59:
                    temp_r5->qWorld.x = var_r0_7;
                    temp_r5->qUnk8.x = 0 - temp_r1_6;
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
            temp_r5->unk16 = 0x1EU;
            temp_r5->qUnk8.y = 0x600;
            return;
    }
}

void sub_8081A10(Player *p);
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
    temp_r1 = temp_r4->unk16;
    switch (temp_r1) { /* irregular */
        case 0xC8:
            if (param1 == 0) {
                return;
            }
            //        temp_r1_2 = temp_r4 - 0x28;
            if (temp_r1_2->unk16 != 0xC8) {
                return;
            }
            if (temp_r4->unk1B != 0) {
                var_r0 = 0x12C;
            } else {
                var_r0 = 0x1F4;
            }
            temp_r4->unk16 = var_r0;
            temp_r1_2->unk16 = var_r0;
            temp_r4->qUnk8.x = -temp_r4->qUnk8.x;
            temp_r1_2->qUnk8.x = -temp_r1_2->qUnk8.x;
            return;
        case 0x136:
            temp_r0 = temp_r4->qUnk8.y;
            temp_r1_3 = temp_r4->qWorld.y + temp_r0;
            temp_r4->qWorld.y = temp_r1_3;
            temp_r4->qUnk8.y = temp_r0 + 0x80;
            if ((param1 != 0) && (temp_r4->unk1B != 0)) {
                boss->players[0]->qWorldY = temp_r1_3;
            }
            if (((s32)temp_r4->qWorld.y > 0xAFFF) && ((s32)temp_r4->qUnk8.y >= 0)) {
                temp_r4->qWorld.y = 0xB000;
                temp_r4->unk14 = 0x1E;
                temp_r4->unk16 = 0x140U;
                if (param1 != 0) {
                    m4aSongNumStart(0x23CU);
                    CreateScreenShake(0x800U, 0x20U, 0U, -1U, 0x91);
                    return;
                }
            }
            return;
        case 0x12C:
            temp_r4->qUnk8.y = -0x800;
            temp_r4->unk1B = 4;
            temp_r4->unk16 = 0x136U;
            return;
        case 0x140:
            temp_r0_2 = (u16)temp_r4->unk14 - 1;
            temp_r4->unk14 = temp_r0_2;
            if ((temp_r0_2 << 0x10) == 0) {
                temp_r0_3 = temp_r4->unk1B;
                if (temp_r0_3 != 0) {
                    temp_r4->unk1B = temp_r0_3 - 1;
                }
                temp_r0_4 = temp_r4->unk1B;
                if ((u32)temp_r0_4 <= 1U) {
                    if (param1 != 0) {
                        temp_r5 = boss->players[0];
                        if (temp_r0_4 != 0) {
                            if (((s32)temp_r5->framesInvulnerable > 0) || ((s32)temp_r5->framesInvincible > 0)) {
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
                return;
            }
            break;
        case 0x1F4:
            temp_r1_4 = temp_r4->qWorld.x + temp_r4->qUnk8.x;
            temp_r4->qWorld.x = temp_r1_4;
            if (param1 == 0) {
                if (temp_r1_4 <= 0x61400) {
                    temp_r4->qWorld.x = 0x61400;
                    goto block_84;
                }
                goto block_83;
            }
            if (temp_r1_4 > 0x6DBFF) {
                temp_r4->qWorld.x = 0x6DC00;
                var_r7 = 1;
            }
        block_83:
            if (var_r7 != 0) {
            block_84:
                var_r0_2 = 0x3E8;
            block_85:
                temp_r4->unk16 = var_r0_2;
            }
            break;
        case 0x0:
            temp_r4->qUnk8.x = 0;
            temp_r4->qUnk8.y = 0;
            temp_r4->unk1B = 0;
            temp_r4->unk1C = 0;
            temp_r4->unk14 = 0x79;
            var_r0_2 = 0xA;
            goto block_85;
        case 0xA:
            temp_r1_5 = temp_r4->qUnk8.y + temp_r4->unk1C;
            temp_r4->qUnk8.y = temp_r1_5;
            if (temp_r1_5 < 0) {
                var_r0_3 = -0x200;
                if (temp_r1_5 <= 0xFFFFFE00) {
                    goto block_26;
                }
            } else if (temp_r1_5 > 0x1FF) {
                var_r0_3 = 0x200;
            block_26:
                temp_r4->qUnk8.y = var_r0_3;
            }
            temp_r7 = temp_r4->qWorld.y + temp_r4->qUnk8.y;
            temp_r4->qWorld.y = temp_r7;
            temp_r0_5 = (u16)temp_r4->unk14 - 1;
            temp_r4->unk14 = temp_r0_5;
            if ((temp_r0_5 << 0x10) == 0) {
                if (param1 == 0) {
                    var_r0_4 = 0x400;
                } else {
                    var_r0_4 = -0x400;
                }
                temp_r4->qUnk8.x = var_r0_4;
                temp_r4->unk16 = 0x64U;
                temp_r4->unk13 = 0;
                return;
            }
            if ((((s16)temp_r4->unk14 % 10) << 0x10) != 0) {
                return;
            }
            if (temp_r7 > (s32)(boss->players[0]->qWorldY + 0xFFFFF000)) {
                temp_r4->unk1C = -0x40;
                return;
            }
            temp_r4->unk1C = 0x40;
            return;
        case 0x64:
            temp_r3 = temp_r4->qWorld.x;
            temp_r1_6 = temp_r3 + temp_r4->qUnk8.x;
            temp_r4->qWorld.x = temp_r1_6;
            if (param1 == 0) {
                if (temp_r1_6 > 0x667FF) {
                    var_r0_5 = 0x66800;
                    goto block_41;
                }
            } else {
                var_r0_5 = 0x68800;
                if (temp_r1_6 <= 0x68800) {
                block_41:
                    temp_r4->qWorld.x = var_r0_5;
                    var_r7 = 1;
                }
            }
            p = NULL;
            sub_807C244(&boss->spr278[param1], temp_r4->qWorld.x, temp_r4->qWorld.y, temp_r3 * 0, 0);
            if (var_r7 == 0) {
                return;
            }
            temp_r4->unk16 = 0xC8U;
            if (param1 == 0) {
                return;
            }
            sub_807C5D0();
            sp8.hitboxes[0].index = 0;
            sp8.hitboxes[0].b.left = -0x10;
            sp8.hitboxes[0].b.top = -0x10;
            //        p->unk2E = 0x10;
            //        p->unk2F = 0x1E;
            temp_r5_2 = boss->players[0];
            temp_r0_6 = temp_r5_2->framesInvulnerable;
            if (temp_r0_6 == 0) {
                p = temp_r5_2;
                sp4 = (s32)temp_r0_6;
                if (sub_8020700(&sp8, I(boss->qWorld.x), I(temp_r4->qWorld.y), 0, 0, 0) != 0) {
                    temp_r4->unk1B = 1;
                    sub_807FB7C(0xA0U);
                    sub_8081A10(temp_r5_2);
                    temp_r5_2->qWorldX = boss->qWorld.x;
                    temp_r5_2->qWorldY = temp_r4->qWorld.y;
                }
            }
            m4aSongNumStart(0x23BU);
            return;
    }
}

extern const u16 sBossFinalAnimsHands[12][2];
void sub_807E54C(HyperEggRobo *boss, u8 param1)
{
    u16 sp0[3];
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
    u8 temp_r6;

    temp_r6 = param1;
    temp_r5 = &boss->pos144[temp_r6];
    temp_r3 = &boss->tf340[temp_r6];
    var_r4 = 0;
    temp_r2 = temp_r5->unk16;
    switch (temp_r2) {
        case 0xC8: /* switch 1 */
            temp_r0 = (u16)temp_r5->unk14 - 1;
            temp_r5->unk14 = temp_r0;
            if ((temp_r0 << 0x10) != 0) {
                return;
            }
            m4aSongNumStart(0x23DU);
            temp_r5->unk16 = 0xD2U;
            return;
        case 0x14: /* switch 1 */
            temp_r0_2 = (u16)temp_r5->unk14 - 1;
            temp_r5->unk14 = temp_r0_2;
            if ((temp_r0_2 << 0x10) != 0) {
                return;
            }
            temp_r5->unk14 = 0;
            temp_r5->unk16 = 0x64U;
            return;
        case 0x64: /* switch 1 */
            if (temp_r6 == 0) {
                temp_r3_2 = temp_r5->unk10;
                var_r0 = gSineTable[temp_r3_2 + 0x100] * 0x18;
                if (var_r0 < 0) {
                    var_r0 += 0x3F;
                }
                var_r0_2 = gSineTable[temp_r3_2] * 0x18;
                if (var_r0_2 < 0) {
                    var_r0_2 += 0x3F;
                }
                temp_r5->qWorld.x = (var_r0 >> 6) + 0x63000;
                temp_r5->qWorld.y = (var_r0_2 >> 6) + 0x7800;
                var_r0_3 = temp_r5->unk10 - 0x10;
            } else {
                temp_r3_3 = temp_r5->unk10;
                var_r0_4 = gSineTable[temp_r3_3 + 0x100] * 0x18;
                if (var_r0_4 < 0) {
                    var_r0_4 += 0x3F;
                }
                var_r0_5 = gSineTable[temp_r3_3] * 0x18;
                if (var_r0_5 < 0) {
                    var_r0_5 += 0x3F;
                }
                temp_r5->qWorld.x = (var_r0_4 >> 6) + 0x6C000;
                temp_r5->qWorld.y = (var_r0_5 >> 6) + 0x7800;
                var_r0_3 = temp_r5->unk10 + 0x10;
            }
            temp_r5->unk10 = (u16)(var_r0_3 & 0x3FF);
            temp_r0_3 = (u16)temp_r5->unk14 + 0x10;
            temp_r5->unk14 = temp_r0_3;
            if ((s32)(temp_r0_3 << 0x10) <= 0x07FF0000) {
                return;
            }
        block_93:
            temp_r5->unk16 = 0x6EU;
            return;
        case 0xE6: /* switch 1 */
            temp_r1 = temp_r5->unk20;
            if (temp_r1 > 0) {
                temp_r0_4 = temp_r5->unk1C;
                temp_r5->unk20 = (s32)(temp_r1 - temp_r0_4);
                temp_r2_2 = 0 - temp_r0_4;
                var_r0_6 = temp_r2_2 * temp_r5->qUnk8.x;
                if (var_r0_6 < 0) {
                    var_r0_6 += 0xFF;
                }
                temp_r5->qWorld.x += var_r0_6 >> 8;
                var_r0_7 = temp_r2_2 * temp_r5->qUnk8.y;
                if (var_r0_7 < 0) {
                    var_r0_7 += 0xFF;
                }
                temp_r5->qWorld.y += var_r0_7 >> 8;
            } else {
                var_r4 = 1;
            }
            if ((s32)temp_r3->qScaleX > 0x100) {
                temp_r3->qScaleX = (u16)temp_r3->qScaleX - 0x10;
                temp_r3->qScaleY = (u16)temp_r3->qScaleY - 0x10;
            } else {
                var_r4 |= 2;
            }
            if (var_r4 == 3) {
                goto block_93;
            }
            return;
        case 0xD2: /* switch 1 */
            temp_r1_2 = temp_r5->unk20;
            if (temp_r1_2 < (s32)temp_r5->unk24) {
                temp_r2_3 = temp_r5->unk1C;
                temp_r5->unk20 = (s32)(temp_r1_2 + temp_r2_3);
                var_r0_8 = temp_r2_3 * temp_r5->qUnk8.x;
                if (var_r0_8 < 0) {
                    var_r0_8 += 0xFF;
                }
                temp_r5->qWorld.x += var_r0_8 >> 8;
                var_r0_9 = temp_r2_3 * temp_r5->qUnk8.y;
                if (var_r0_9 < 0) {
                    var_r0_9 += 0xFF;
                }
                temp_r5->qWorld.y += var_r0_9 >> 8;
            } else {
                var_r4 = 1;
            }
            if ((s32)temp_r3->qScaleX <= 0x1FF) {
                temp_r3->qScaleX = (u16)temp_r3->qScaleX + 0x10;
                temp_r3->qScaleY = (u16)temp_r3->qScaleY + 0x10;
            } else {
                var_r4 |= 2;
            }
            if ((s32)temp_r3->qScaleX > 0x180) {
                sub_807F334(&boss->spr278[temp_r6], temp_r3, 2U, temp_r6);
                temp_r5->unk13 = 1;
            }
            if (var_r4 != 3) {
                return;
            }
            temp_r5->unk14 = 0xA;
            temp_r5->unk16 = 0xDCU;
            return;
        case 0xDC: /* switch 1 */
            temp_r0_5 = (u16)temp_r5->unk14 - 1;
            temp_r5->unk14 = temp_r0_5;
            if ((temp_r0_5 << 0x10) != 0) {
                return;
            }
            temp_r5->unk16 = 0xE6U;
            temp_r5->unk13 = 0;
            return;
        case 0x12C: /* switch 1 */
            if (temp_r6 == 0) {
                var_r0_10 = (s32)temp_r5->qWorld.x >> 8;
                var_r1 = 0x614;
            } else {
                var_r0_10 = (s32)temp_r5->qWorld.x >> 8;
                var_r1 = 0x6DC;
            }
            sp0[0] = (s16)(var_r1 - var_r0_10);
            sp0[1] = (s16)(0x98 - ((s32)temp_r5->qWorld.y >> 8));
            sp0[2] = 0;
            sa2__sub_8085A9C((UNK_8085D14 *)&sp0, 8U);
            temp_r5->qUnk8.x = sp0[0] * 2;
            temp_r5->qUnk8.y = sp0[1] * 2;
            switch (temp_r6) { /* switch 3; irregular */
                case 0: /* switch 3 */
                    var_r2 = &boss->spr278[0];
                    var_r2->anim = sBossFinalAnimsHands[6][0];
                    var_r2->variant = sBossFinalAnimsHands[6][1];
                    break;
                case 1:
                    var_r2 = &boss->spr278[1];
                    var_r2->anim = sBossFinalAnimsHands[6 + 1][0];
                    var_r2->variant = sBossFinalAnimsHands[6 + 1][1];
                    break;
            }
            temp_r5->unk13 = 1;
            temp_r5->unk16 = 0x136U;
            return;
        case 0x136: /* switch 1 */
            temp_r2_4 = temp_r5->qWorld.x + temp_r5->qUnk8.x;
            temp_r5->qWorld.x = temp_r2_4;
            temp_r5->qWorld.y += temp_r5->qUnk8.y;
            if (temp_r6 == 0) {
                if (temp_r2_4 <= 0x61400) {
                    temp_r5->unk16 = 0x3E8U;
                }
                temp_r0_6 = temp_r3->rotation;
                if (temp_r0_6 != 0) {
                    var_r0_12 = temp_r0_6 - 0x10;
                    temp_r3->rotation = var_r0_12 & 0x3FF;
                }
            } else {
                if (temp_r2_4 > 0x6DBFF) {
                    temp_r5->unk16 = 0x3E8U;
                }
                if (temp_r3->rotation != 0) {
                block_112:
                    var_r0_12 = temp_r3->rotation + 0x10;
                    temp_r3->rotation = var_r0_12 & 0x3FF;
                }
            }
            break;
        case 0x0: /* switch 1 */
            switch (temp_r6) {
                case 0:
                    var_r2_2 = &boss->spr278[0];
                    var_r2_2->anim = sBossFinalAnimsHands[1][0];
                    var_r2_2->variant = sBossFinalAnimsHands[1][1];
                    break;
                case 1:
                    var_r2_2 = &boss->spr278[1];
                    var_r2_2->anim = sBossFinalAnimsHands[1 + 1][0];
                    var_r2_2->variant = sBossFinalAnimsHands[1 + 1][1];
                    break;
            }
            if (temp_r6 == 0) {
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
            return;
        case 0xA: /* switch 1 */
            temp_r5->qWorld.x += temp_r5->qUnk8.x;
            temp_r0_8 = temp_r5->qWorld.y + temp_r5->qUnk8.y;
            temp_r5->qWorld.y = temp_r0_8;
            if (temp_r0_8 <= 0x6000) {
                temp_r5->unk13 = 0;
                temp_r5->unk14 = (s16)temp_r2;
                temp_r5->unk16 = 0x14U;
            }
            if (temp_r6 == 0) {
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
    }
}

void sub_807E99C(HyperEggRobo *boss, u8 param1)
{
    s32 sp0[3];
    HyberEggRoboStrc144 *temp_r5;
    Sprite *var_r2;
    SpriteTransform *temp_r3;
    s32 temp_r0_2;
    s32 temp_r3_2;
    s32 var_r0;
    s32 var_r1;
    u16 temp_r0;
    u16 temp_r0_3;
    u16 temp_r0_4;
    u16 var_r0_2;
    u8 temp_r2;
    void *temp_r1;

    temp_r2 = param1;
    temp_r5 = &boss->pos144[temp_r2];
    temp_r3 = &boss->tf340[temp_r2];
    temp_r0 = temp_r5->unk16;
    switch ((u32)temp_r0) { /* switch 1; irregular */
        case 0:
            if (temp_r2 == 0) {
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
            var_r0_2 = 0xA;
        block_28:
            temp_r5->unk16 = var_r0_2;
            break;
        case 10:
            temp_r3_2 = temp_r5->qWorld.x + temp_r5->qUnk8.x;
            temp_r5->qWorld.x = temp_r3_2;
            temp_r5->qWorld.y += temp_r5->qUnk8.y;
            if (temp_r2 == 0) {
                if ((s32)(boss->qCockpitWorldPos.x + 0xFFFFE000) <= temp_r3_2) {
                    temp_r5->unk16 = 0x14;
                }
            } else if ((s32)(boss->qCockpitWorldPos.x + 0x2000) >= temp_r3_2) {
                temp_r5->unk16 = 0x14;
            }
            break;
        case 20:
            if (temp_r2 != 0) {
                temp_r1 = temp_r5 - 0x28;
                //            if ((temp_r5->unk16 == 0x14) && (temp_r1->unk16 == 0x14))
                {
                    //              temp_r5->unk16 = 0x1EU;
                    //            temp_r1->unk16 = 0x1EU;
                }
            }
            break;
        case 30:
            switch (temp_r2) {
                case 0: /* switch 2 */
                    var_r2 = &boss->spr278[0];
                    var_r2->anim = sBossFinalAnimsHands[8][0];
                    var_r2->variant = sBossFinalAnimsHands[8][1];
                    break;
                case 1: /* switch 2 */
                    var_r2 = &boss->spr278[1];
                    var_r2->anim = sBossFinalAnimsHands[6][0];
                    var_r2->variant = sBossFinalAnimsHands[6][1];
                    break;
            }
            var_r0_2 = 0x1F;
            temp_r5->unk16 = var_r0_2;
            break;
        case 31:
            if (temp_r2 == 0) {
                temp_r0_3 = (temp_r3->rotation - 8) & 0x3FF;
                temp_r3->rotation = temp_r0_3;
                if (temp_r0_3 == 0x300) {
                    temp_r5->unk16 = 0x64U;
                    boss->unkC = 0xA;
                    return;
                }
            } else {
                temp_r0_4 = (temp_r3->rotation + 8) & 0x3FF;
                temp_r3->rotation = temp_r0_4;
                if (temp_r0_4 == 0x100) {
                    temp_r5->unk16 = 100;
                }
            }
            break;
    }
}

extern const u8 gUnknown_080D5C48[8];
void sub_807EBB8(HyperEggRobo *boss, u8 param1)
{
    u16 sp0[3];
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

    temp_r6 = param1;
    temp_r5 = &boss->pos144[temp_r6];
    temp_r2 = &boss->tf340[temp_r6];
    temp_r0 = temp_r5->unk16;
    switch (temp_r0) {
        case 0:
            if (temp_r6 == 0) {
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
            switch (temp_r6) {
                case 0: /* switch 2 */
                    var_r2 = boss->spr278;
                    var_r2->anim = sBossFinalAnimsHands[5][0];
                    var_r2->variant = sBossFinalAnimsHands[5][1];
                    break;
                case 1: /* switch 2 */
                    var_r2 = &boss->spr278[1];
                    var_r2->anim = sBossFinalAnimsHands[10][0];
                    var_r2->variant = sBossFinalAnimsHands[10][1];
                    break;
            }
            var_r0_3 = 0xA;
        block_26:
            temp_r5->unk16 = var_r0_3;
            return;
        case 10:
            if (temp_r6 == 0) {
                var_r0_4 = temp_r2->rotation + 8;
            } else {
                var_r0_4 = temp_r2->rotation - 8;
            }
            temp_r2->rotation = var_r0_4 & 0x3FF;
            if (temp_r2->rotation == 0) {
                var_r0_3 = 0x14;
                goto block_26;
            }
            break;
        case 20:
            temp_r2_2 = temp_r5->qWorld.x + temp_r5->qUnk8.x;
            temp_r5->qWorld.x = temp_r2_2;
            temp_r5->qWorld.y += temp_r5->qUnk8.y;
            if (temp_r6 == 0) {
                if (temp_r2_2 <= 0x61400) {
                    temp_r5->unk16 = 0x1EU;
                    boss->unkC = 0x64;
                    return;
                }
            } else if (temp_r2_2 > 0x6DBFF) {
                var_r0_3 = 0x1E;
                goto block_26;
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
    temp_r1 = temp_r4->unk16;
    switch (temp_r1) { /* irregular */
        case 0:
            temp_r4->qUnk8.x = (s32)temp_r1;
            temp_r4->qUnk8.y = -0x300;
            temp_r4->unk14 = (s16)temp_r1;
            var_r0 = 0xA;
        block_8:
            temp_r4->unk16 = var_r0;
            return;
        case 10:
            temp_r3 = temp_r4->qWorld.x + temp_r4->qUnk8.x;
            temp_r4->qWorld.x = temp_r3;
            temp_r0 = temp_r4->qUnk8.y;
            temp_r2 = temp_r4->qWorld.y + temp_r0;
            temp_r4->qWorld.y = temp_r2;
            temp_r4->qUnk8.y = temp_r0 + 0x40;
            temp_r0_2 = (u16)temp_r4->unk14 + 1;
            temp_r4->unk14 = temp_r0_2;
            if (temp_r0_2 & 1) {
                sub_8079758(7U, (s16)((s32)(temp_r3 << 8) >> 0x10), (s16)((s32)(temp_r2 << 8) >> 0x10), 0x300, 0U, 0x1EU, 0, boss->vram18);
            }
            if ((s32)((s32)temp_r4->qWorld.y >> 8) > 0x12C00) {
                var_r0 = 0x3E8;
                goto block_8;
            }
            break;
    }
}

void Task_358_807F568(void);
void sub_8081C08(HyperEggRobo *boss);
extern const u16 gUnknown_080D5C38[4][2];
extern bool32 IsCollidingWithCheese(Sprite *);
void sub_807ED8C(HyperEggRobo *boss)
{
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
    u16 temp_r1;
    u16 temp_r3;
    u32 temp_r0_4;
    u32 temp_r0_7;
    u8 temp_r0_11;
    u8 temp_r0_14;
    u8 var_r1;
    u8 var_r1_2;
    u8 var_r1_3;
    u8 var_r3;

    temp_r1 = boss->unk16;
    switch (temp_r1) {
        case 0xD2:
            var_r1 = 0;
            do {
                gPlayers[var_r1].idleAndCamCounter = 0x168;
                var_r1 += 1;
            } while ((u32)var_r1 <= 3U);
            temp_r0 = boss->unk14 - 1;
            boss->unk14 = temp_r0;
            if ((temp_r0 << 0x10) != 0) {
                return;
            }
            boss->unk14 = 0xB4;
            boss->unk16 = 0xDC;
            m4aSongNumStart(0x221U);
            gMusicManagerState.fadeoutSpeed = Q(1.25);
            return;
        case 0xC8:
            if (1 & boss->unk14) {
                temp_r0_2 = (0x196225 * gPseudoRandom) + 0x3C6EF35F;
                temp_r7 = 0x3FF & temp_r0_2;
                temp_r0_3 = (0x196225 * temp_r0_2) + 0x3C6EF35F;
                gPseudoRandom = temp_r0_3;
                temp_r0_4 = (u32)temp_r0_3 % 48U;
                sub_8079758(7U, (s16)((s32)((boss->qWorld.x + ((u32)(temp_r0_4 * gSineTable[temp_r7 + 0x100]) >> 6)) << 8) >> 0x10),
                            (s16)(((s32)(boss->qWorld.y + ((u32)(temp_r0_4 * gSineTable[temp_r7]) >> 6)) >> 8) - 0x30), 0x300, (u16)temp_r7,
                            0x1EU, 0, boss->vram18);
            }
            temp_r0_5 = boss->unk14 + 1;
            boss->unk14 = temp_r0_5;
            if (!(temp_r0_5 & 0x3F)) {
                m4aSongNumStart(0x221U);
            }
            if (boss->unk12E != 0) {
                return;
            }
            boss->unk16 = 0xD2;
            boss->unk14 = 0x3C;
            sub_807FB7C(0xAU);
            return;
        case 0xDC:
            var_r1_2 = 0;
            do {
                gPlayers[var_r1_2].idleAndCamCounter = 0x168;
                var_r1_2 += 1;
            } while ((u32)var_r1_2 <= 3U);
            if (1 & boss->unk14) {
                temp_r1_2 = (0x196225 * gPseudoRandom) + 0x3C6EF35F;
                temp_r7_2 = (0xFF & temp_r1_2) + 0x280;
                temp_r0_6 = (0x196225 * temp_r1_2) + 0x3C6EF35F;
                gPseudoRandom = temp_r0_6;
                temp_r0_7 = (u32)temp_r0_6 % 48U;
                sub_8079758(7U, (s16)((s32)((boss->qWorld.x + ((u32)(temp_r0_7 * gSineTable[temp_r7_2 + 0x100]) >> 6)) << 8) >> 0x10),
                            (s16)(((s32)(boss->qWorld.y + ((u32)(temp_r0_7 * gSineTable[temp_r7_2]) >> 6)) >> 8) - 0x60),
                            ((temp_r0_7 & 3) << 8) | 0x400, (u16)temp_r7_2, 0x1EU, 0, boss->vram18);
            }
            if (!(0x3F & boss->unk14)) {
                m4aSongNumStart(0x221U);
            }
            temp_r0_8 = (s16)boss->unk14;
            temp_r3 = boss->unk14;
            if (temp_r0_8 == 0x3C) {
                gBldRegs.bldCnt = 0x3FBF;
                gBldRegs.bldAlpha = 8;
                gBldRegs.bldY = 0;
            } else if (((s32)temp_r0_8 <= 0x3B) && (1 & temp_r3) && (gBldRegs.bldY != 0x10)) {
                gBldRegs.bldY += 1;
            }
            temp_r0_9 = temp_r3 - 1;
            boss->unk14 = temp_r0_9;
            if ((temp_r0_9 << 0x10) == 0) {
                boss->unk14 = 0x3C;
                boss->unk16 = 0x3E8;
                return;
            }
            return;
        case 0x3E8:
            temp_r0_10 = boss->unk14 - 1;
            boss->unk14 = temp_r0_10;
            temp_r1_3 = (s16)temp_r0_10;
            if (temp_r1_3 == 0) {
                boss->unk8 = 1;
                boss->unkC = (u16)temp_r1_3;
                if (gStageData.gameMode == 0) {
                    gPlayers[1].moveState &= 0xFFFFFEFF;
                    SetPlayerCallback(&gPlayers[1], Player_8005380);
                    gPlayers[1].qWorldX = gPlayers->qWorldX;
                    gPlayers[1].qWorldY = gPlayers->qWorldY;
                    gPlayers[1].layer = gPlayers->layer;
                }
                gCurTask->main = Task_358_807F568;
            }
            break;
        case 0x0:
            temp_r0_11 = boss->unk1;
            if ((s32)temp_r0_11 > 4) {
                return;
            }
            if ((s32)temp_r0_11 < 1) {
                return;
            }
            if ((sub_807F228(boss) << 0x18) == 0) {
                return;
            }
            sub_807F434(boss);
            return;
        case 0x1: {
            if (--boss->unk14 == 0) {
                sub_807BE58(boss, 1U);
                if (boss->lives != 0) {
                    boss->spr228.anim = gUnknown_080D5C38[0][0];
                    boss->spr228.variant = gUnknown_080D5C38[0][1];
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
        case 0x64:
            temp_r0_13 = boss->unk14 - 1;
            boss->unk14 = temp_r0_13;
            if ((temp_r0_13 << 0x10) != 0) {
                return;
            }
            var_r3 = 0;
        loop_39:
            temp_r2 = &gPlayers[var_r3];
            if ((temp_r2->moveState & 0x100) && (((temp_r2->charFlags.someIndex == 1)) || (temp_r2->charFlags.someIndex == 3))) {
                boss->unk14 = 4;
                return;
            }
            var_r3 += 1;
            if ((u32)var_r3 > 1U) {
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
                boss->spr228.anim = gUnknown_080D5C38[6][0];
                boss->spr228.variant = gUnknown_080D5C38[6][1];
                m4aSongNumStart(0x221U);
                sub_807FB7C(0x96U);
                sub_807FB7C(0U);
                boss->unk16 = 0xC8;
                return;
            }
            goto loop_39;
    }
}

s32 sub_807F228(HyperEggRobo *arg0)
{
    Player *p;
    Player *temp_r4;
    Sprite *temp_r0;
    s32 var_sl;
    u8 var_r7;

    var_sl = 0;
    temp_r0 = &arg0->spr250;
    sub_8004D68(arg0->qCockpitWorldPos.x, arg0->qCockpitWorldPos.y);
    p = &gPlayers[gStageData.playerIndex];
    if (((p->charFlags.character == CREAM) || (gPlayers[p->charFlags.partnerIndex].charFlags.character == 1))
        && (IsCollidingWithCheese(temp_r0) == 1)) {
        var_sl = 1;
    }
    var_r7 = 0;
    do {
        temp_r4 = &gPlayers[var_r7];
        if ((sub_802C080(temp_r4) == 0) && (temp_r0->hitboxes[0].index != -1)) {
            if (sub_8020E3C(temp_r0, (s32)arg0->qCockpitWorldPos.x >> 8, (s32)arg0->qCockpitWorldPos.y >> 8, 0, temp_r4) == 1) {
                var_sl = 1;
                sub_80044CC(temp_r4);
            } else {
                sub_8020CE0(temp_r0, (s32)arg0->qCockpitWorldPos.x >> 8, (s32)arg0->qCockpitWorldPos.y >> 8, 0, temp_r4);
            }
        }
        var_r7 += 1;
    } while ((u32)var_r7 <= 1U);
    return var_sl;
}

void sub_807F334(Sprite *s, SpriteTransform *tf, u8 param2, u8 param3)
{
    Rect8 *temp_r1;
    Rect8 *temp_r1_2;
    Rect8 *temp_r1_3;
    Rect8 *temp_r1_4;
    Rect8 *var_r4;
    s8 *var_r1;
    s8 *var_r1_2;
    s8 *var_r2;
    s8 *var_r3;
    s8 var_r0;
    s8 var_r0_2;
    s8 var_r0_3;
    u8 temp_r2;
    u8 temp_r3;

    temp_r2 = param2;
    temp_r3 = param3;
    switch (temp_r2) { /* irregular */
        default:
            if (temp_r3 == 0) {
                temp_r1 = &s->hitboxes[0].b;
                s->hitboxes[0].b.left = -0xD;
                s->hitboxes[0].b.top = -0x13;
                s->hitboxes[0].b.right = 8;
                s->hitboxes[0].b.bottom = 0x1E;
            } else {
                temp_r1_2 = &s->hitboxes[0].b;
                s->hitboxes[0].b.left = -8;
                s->hitboxes[0].b.top = -0x13;
                s->hitboxes[0].b.right = 0xD;
                s->hitboxes[0].b.bottom = 0x1E;
            }
            break;
        case 1:
            if (temp_r3 == 0) {
                temp_r1_3 = &s->hitboxes[0].b;
                s->hitboxes[0].b.left = -0x1E;
                temp_r1_3->top = -0xD;
                var_r1_2 = &temp_r1_3->top + 1;
                *var_r1_2 = 0x13;
                var_r1_2[1] = 8;
            } else {
                temp_r1_4 = &s->hitboxes[0].b;
                s->hitboxes[0].b.left = -0x13;
                temp_r1_4->top = -0xD;
                var_r1_2 = &temp_r1_4->top + 1;
                *var_r1_2 = 0x1E;
                var_r1_2[1] = 8;
            }
            return;
        case 2:
            if (temp_r3 == 0) {
                var_r4 = &s->hitboxes[0].b;
                s->hitboxes[0].b.left = -0x1E;
                var_r3 = &s->hitboxes[0].b.top;
                s->hitboxes[0].b.top = -0xD;
                var_r2 = &s->hitboxes[0].b.right;
                var_r0_3 = 0x13;
            } else {
                var_r4 = &s->hitboxes[0].b;
                s->hitboxes[0].b.left = -0x13;
                var_r3 = &s->hitboxes[0].b.top;
                s->hitboxes[0].b.top = -0xD;
                var_r2 = &s->hitboxes[0].b.right;
                var_r0_3 = 0x1E;
            }
            *var_r2 = var_r0_3;
            s->hitboxes[0].b.bottom = 8;
            var_r4->left = (s8)((s32)(var_r4->left * tf->qScaleX) >> 8);
            *var_r3 = (s8)((s32)(*var_r3 * tf->qScaleY) >> 8);
            *var_r2 = (s8)((s32)(*var_r2 * tf->qScaleX) >> 8);
            s->hitboxes[0].b.bottom = (s8)((s32)(s->hitboxes[0].b.bottom * tf->qScaleY) >> 8);
            return;
    }
}

void sub_807F434(HyperEggRobo *boss)
{
    u8 temp_r0;
    u8 temp_r1;

    boss->unk14 = 0x78;
    sub_807BE58(boss, 0U);
    boss->spr228.anim = gUnknown_080D5C38[4][0];
    boss->spr228.variant = gUnknown_080D5C38[4][1];
    sub_8078DB0(0x4F4, 0, (s16)boss->unk14, 0U);
    sub_8078DB0(0x4F5, 0, (s16)boss->unk14, 0U);
    temp_r1 = boss->lives - 1;
    boss->lives = temp_r1;
    boss->unk16 = 1;
    if (gStageData.difficulty == 0) {
        if (temp_r1 == 4) {
            sub_80299D4(0x37U);
        }
    } else if (temp_r1 == 3) {
        sub_80299D4(0x37U);
    }
    m4aSongNumStart(0xEBU);
    PlayVoiceEggmanHit();
    if (gStageData.gameMode == 5) {
        if (gStageData.playerIndex == 0) {
            temp_r0 = boss->lives;
            if (temp_r0 != 0) {
                sub_8027674(3U, (u16)temp_r0);
            }
        } else {
            sub_8027674(4U, (u16)boss->lives);
        }
    }
}

void sub_807F4F0(u8 *param0, s16 param1)
{
    s32 temp_r1;
    u16 temp_r2;
    Sprite *s;
    HyperEggRobo *boss = TASK_DATA(gStageData.taskBoss);

    temp_r1 = 0x7F & param0[2];
    temp_r2 = param0[3] | (param0[4] << 8);
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
    if ((temp_r1 >= 1) && (temp_r1 <= 4) && (temp_r1 >= 3) && (boss->lives != (u8)temp_r2)) {
        sub_807F434(boss);
    }
}

bool32 MetExtraBossEnableConditions(void);
void sub_808178C(u8);
void sub_8002508(void);
void sub_8081DF4(Task *task28);
void Task_358_807F568(void)
{
    Player *temp_r0_22;
    Player *temp_r6;
    Sprite *temp_r0;
    s16 temp_r0_14;
    s16 temp_r3;
    s16 var_r0;
    s32 temp_r1_2;
    s32 temp_r1_3;
    s32 var_r0_3;
    u16 temp_r0_10;
    u16 temp_r0_11;
    u16 temp_r0_12;
    u16 temp_r0_13;
    u16 temp_r0_15;
    u16 temp_r0_17;
    u16 temp_r0_18;
    u16 temp_r0_19;
    u16 temp_r0_20;
    u16 temp_r0_21;
    u16 temp_r0_2;
    u16 temp_r0_3;
    u16 temp_r0_4;
    u16 temp_r0_5;
    u16 temp_r0_6;
    u16 temp_r0_7;
    u16 temp_r0_8;
    u16 temp_r0_9;
    u16 temp_r1;
    u16 temp_r3_2;
    u16 var_r0_2;
    u16 var_r3;
    u16 var_r4_2;
    u8 *temp_r0_23;
    u8 *temp_r0_24;
    u8 *temp_r0_25;
    u8 *temp_r0_26;
    u8 *temp_r0_27;
    u8 temp_r0_16;
    u8 var_r1;
    u8 var_r4;
    HyperEggRobo *boss = TASK_DATA(gCurTask);

    gStageData.rings = 0;
    sub_358_807C14C(boss);
    var_r4 = 0;
    do {
        temp_r0 = &boss->sprPlatforms[var_r4];
        temp_r0->x = ((s32)boss->unk2C[var_r4].qWorld.x >> 8) - gCamera.x;
        temp_r0->y = ((s32) * (&boss->unk2C[0].qWorld.y + (var_r4 * 0x14)) >> 8) - gCamera.y;
        DisplaySprite(temp_r0);
        var_r4 += 1;
    } while ((u32)var_r4 <= 3U);
    if (boss->unkC != 0x406) {
        var_r1 = 0;
        do {
            gPlayers[var_r1].idleAndCamCounter = 0x168;
            var_r1 += 1;
        } while ((u32)var_r1 <= 3U);
    }
    temp_r1 = boss->unkC;
    switch (temp_r1) { /* irregular */
        case 0x7DA:
            temp_r0_2 = boss->unk8 - 1;
            boss->unk8 = temp_r0_2;
            if ((temp_r0_2 << 0x10) != 0) {
                return;
            }
            gCamera.minX = gCamera.maxX - 0xF0;
            boss->unk8 = 0xC8;
            m4aSongNumStart(0x3CU);
            boss->unkC = 0x7E4;
            return;
        case 0x3E9:
            temp_r0_3 = gBldRegs.bldY - 1;
            gBldRegs.bldY = temp_r0_3;
            temp_r0_4 = temp_r0_3;
            if (temp_r0_4 != 0) {
                return;
            }
            gBldRegs.bldCnt = temp_r0_4;
            gBldRegs.bldAlpha = temp_r0_4;
            gBldRegs.bldY = temp_r0_4;
            boss->unk8 = 0x4B0;
            boss->unkC = 0x3F2;
            return;
        case 0xA:
            boss->unkC = 0x64;
            return;
        case 0x64:
            if (MetExtraBossEnableConditions() != 0) {
                boss->unkC = 0x7D0;
                return;
            }
            boss->unkC = 0x3E8;
            return;
        case 0x3E8:
            sub_807FB7C(1U);
            sub_808178C(0U);
            CreateAltarEmeraldPostBossCutscene(0U);
            sub_807FB7C(2U);
            gCamera.maxX += 0x258;
            boss->unk8 = 0x4B0;
            boss->unkC = 0x3E9;
            return;
            return;
        case 0x3F2:
            temp_r0_5 = boss->unk8 - 1;
            boss->unk8 = temp_r0_5;
            if ((temp_r0_5 << 0x10) != 0) {
                return;
            }
            boss->unkC = 0x3FC;
            return;
        case 0x3FC:
            SetPlayerCallback(&gPlayers[gStageData.playerIndex], Player_8005E80);
            SetPlayerCallback(&gPlayers[temp_r6->charFlags.partnerIndex], Player_8005E80);
            boss->unkC = 0x406;
            return;
        case 0x7D0:
            sub_807FB7C(1U);
            boss->task28 = CreateAltarEmeraldPostBossCutscene(1U);
            sub_808178C(1U);
            sub_807FB7C(2U);
            gCamera.maxX += 0x1E0;
            gCamera.minY = gCamera.y;
            boss->unk8 = 0x2E0;
            m4aMPlayAllStop();
            boss->unkC = 0x7D1;
            return;
        case 0x7D1:
            temp_r0_6 = gBldRegs.bldY - 1;
            gBldRegs.bldY = temp_r0_6;
            temp_r0_7 = temp_r0_6;
            if (temp_r0_7 != 0) {
                return;
            }
            gBldRegs.bldCnt = temp_r0_7;
            gBldRegs.bldAlpha = temp_r0_7;
            gBldRegs.bldY = temp_r0_7;
            boss->unk8 = 0x2E0;
            boss->unkC = 0x7DA;
            return;
        case 0x802:
            temp_r0_8 = boss->unk8 - 1;
            boss->unk8 = temp_r0_8;
            if ((temp_r0_8 << 0x10) == 0) {
                temp_r0_9 = gBldRegs.bldY + 1;
                gBldRegs.bldY = temp_r0_9;
                if (temp_r0_9 == 0x10) {
                    boss->unk8 = 0x78;
                    boss->unkC = 0x80C;
                    return;
                }
                boss->unk8 = 4;
                return;
            }
            return;
        case 0x7EE:
            temp_r0_10 = boss->unkA + 0x20;
            boss->unkA = temp_r0_10;
            if ((s32)(s16)temp_r0_10 > 0xFF) {
                boss->unk8 = 0x78;
                boss->unkA = 2;
                boss->unkE = 0;
                boss->unkC = 0x7F3;
            }
            var_r0 = gSineTable[(s16)boss->unkA];
            if ((s32)var_r0 < 0) {
                var_r0 += 0x1FF;
            }
            temp_r1_2 = var_r0 >> 9;
            temp_r0_11 = 0x78 - temp_r1_2;
            var_r4_2 = temp_r0_11;
            if ((s32)(temp_r0_11 << 0x10) < 0) {
                var_r4_2 = 0;
            }
            var_r0_2 = temp_r1_2 + 0x78;
        block_111:
            var_r3 = var_r0_2;
            if ((s32)(s16)var_r0_2 > 0xF0) {
                var_r3 = 0xF0;
            }
        block_113:
            gWinRegs[0] = (s16)var_r3 | ((s32)(var_r4_2 << 0x10) >> 8);
            break;
        case 0x7E4:
            temp_r0_12 = boss->unk8 - 1;
            boss->unk8 = temp_r0_12;
            temp_r3 = (s16)temp_r0_12;
            if (temp_r3 != 0) {
                return;
            }
            gDispCnt |= 0x2000;
            gWinRegs[0] = 0x7778;
            gWinRegs[2] = 0xA0;
            gWinRegs[4] = 0x3C;
            gWinRegs[5] = 0x1C;
            gBldRegs.bldCnt = 0x3FBF;
            gBldRegs.bldAlpha = 8;
            gBldRegs.bldY = 8;
            boss->unkA = (u16)temp_r3;
            boss->unkC = 0x7EE;
            m4aSongNumStart(0x29BU);
            return;
        case 0x7F3:
            var_r4_2 = 0x58;
            var_r3 = 0x98;
            temp_r0_13 = boss->unk8 - 1;
            boss->unk8 = temp_r0_13;
            temp_r0_14 = (s16)temp_r0_13;
            if (temp_r0_14 == 0) {
                boss->unkA = (u16)temp_r0_14;
                boss->unkC = 0x7F8;
            } else {
                temp_r0_15 = boss->unkA - 1;
                boss->unkA = temp_r0_15;
                if ((temp_r0_15 << 0x10) == 0) {
                    boss->unkA = 2;
                    temp_r0_16 = boss->unkE ^ 1;
                    boss->unkE = temp_r0_16;
                    if (temp_r0_16 == 0) {
                        var_r4_2 = 0x60;
                        var_r3 = 0x90;
                    }
                }
            }
            gWinRegs[0] = (s16)var_r3 | ((s32)(var_r4_2 << 0x10) >> 8);
            break;
        case 0x7F8:
            temp_r0_17 = boss->unkA + 8;
            boss->unkA = temp_r0_17;
            if ((s32)(s16)temp_r0_17 > 0xFF) {
                boss->unk8 = 4;
                m4aSongNumStop(0x29BU);
                boss->unkC = 0x802;
            }
            var_r0_3 = gSineTable[(s16)boss->unkA] * 0x58;
            if (var_r0_3 < 0) {
                var_r0_3 += 0x3FFF;
            }
            temp_r1_3 = var_r0_3 >> 0xE;
            temp_r0_18 = 0x58 - temp_r1_3;
            var_r4_2 = temp_r0_18;
            if ((s32)(temp_r0_18 << 0x10) < 0) {
                var_r4_2 = 0;
            }
            var_r0_2 = temp_r1_3 + 0x98;
            goto block_111;
        case 0x820:
            temp_r0_19 = boss->unk8 - 1;
            boss->unk8 = temp_r0_19;
            if ((temp_r0_19 << 0x10) == 0) {
                boss->unkC = 0x8FC;
                return;
            }
            break;
        case 0x80C:
            temp_r0_20 = boss->unk8 - 1;
            boss->unk8 = temp_r0_20;
            if ((temp_r0_20 << 0x10) == 0) {
                sub_8081DF4(boss->task28);
                m4aSongNumStart(0x23FU);
                boss->unkC = 0x816;
                return;
            }
            break;
        case 0x816:
            temp_r0_21 = gBldRegs.bldY - 1;
            gBldRegs.bldY = temp_r0_21;
            temp_r3_2 = temp_r0_21;
            if (temp_r3_2 == 0) {
                gDispCnt &= 0xDFFF;
                gWinRegs[4] = temp_r3_2;
                gWinRegs[5] = temp_r3_2;
                gBldRegs.bldCnt = temp_r3_2;
                gBldRegs.bldAlpha = temp_r3_2;
                gBldRegs.bldY = temp_r3_2;
                boss->unk8 = 0x78A;
                boss->unkC = 0x820;
                return;
            }
            break;
        case 0x8FC:
            m4aSongNumStart(0x58U);
            sub_8002508();
            boss->unkC = 0x91A;
            sub_807FB7C(0x1EU);
            break;
        case 0x0:
            temp_r0_22 = &gPlayers[gStageData.playerIndex];
            temp_r0_22->framesInvulnerable = 0;
            gPlayers[temp_r0_22->charFlags.partnerIndex].framesInvulnerable = 0;
            temp_r0_23 = boss->vram18;
            if (temp_r0_23 != NULL) {
                VramFree(temp_r0_23);
                boss->vram18 = NULL;
            }
            temp_r0_24 = boss->spr278[0].tiles;
            if (temp_r0_24 != NULL) {
                VramFree(temp_r0_24);
                boss->spr278[0].tiles = NULL;
            }
            temp_r0_25 = boss->spr278[1].tiles;
            if (temp_r0_25 != NULL) {
                VramFree(temp_r0_25);
                boss->spr278[1].tiles = NULL;
            }
            temp_r0_26 = boss->spr250.tiles;
            if (temp_r0_26 != NULL) {
                VramFree(temp_r0_26);
                boss->spr250.tiles = NULL;
            }
            temp_r0_27 = boss->spr228.tiles;
            if (temp_r0_27 != NULL) {
                VramFree(temp_r0_27);
                boss->spr228.tiles = NULL;
            }
            gDispCnt &= 0x9EFF;
            gBgScrollRegs[0][0] = 0;
            gBgScrollRegs[0][1] = 0;
            sub_80299FC();
            gStageData.unk4 = 9;
            gStageData.zone = 7;
            boss->unkC = 0xA;
            return;
    }
}

#if 0

void sub_807FB7C(u8 arg0) {
    Player *temp_r6;
    s32 var_r1;
    s32 var_r1_2;
    u16 temp_r5;
    u8 temp_r3;
    void (*var_r4)(Player *);

    temp_r3 = arg0;
    temp_r6 = &gPlayers[(u32) (gPlayers->unk2B << 0x1E) >> 0x1E];
    if (gPlayers->moveState & 0x100) {
        return;
    }
    temp_r5 = temp_r6->moveState & 0x100;
    if (temp_r5 == 0) {
        switch (temp_r3) {                              /* irregular */
        case 0x1E:
            temp_r6->unk2A = (u8) ((-0x10 & temp_r6->unk2A) | 2);
            return;
            return;
        case 0x14:
            gStageData.unk4 = 3;
            gPlayers->moveState &= 0xF7FFFFFF;
            temp_r6->moveState &= 0xF7FFFFFF;
    block_59:
            gPlayers->keyInput = 0;
            gPlayers->keyInput2 = 0;
            temp_r6->keyInput = 0;
            temp_r6->keyInput2 = 0;
            return;
        case 0xC8:
            temp_r6->qSpeedAirX = (s16) 0;
            temp_r6->qSpeedAirY = (s16) 0;
            SetPlayerCallback(temp_r6, sub_808183C);
            sub_808183C(temp_r6);
            return;
        case 0x96:
            sub_807C5D0();
            if (gPlayers->callback == PlayerCB_80819BC) {
                Player_8005380(gPlayers);
                return;
            }
            return;
        case 0x64:
            SetPlayerCallback(gPlayers, sub_8081810);
            return;
        case 0xA0:
            if (gPlayers->moveState & 0xC00000) {
                sub_8016F28(gPlayers);
                gPlayers->unk2C = (u8) (-5 & gPlayers->unk2C);
            }
            if (temp_r6->moveState & 0xC00000) {
                sub_8016F28(temp_r6);
                temp_r6->unk2C = (u8) (-5 & temp_r6->unk2C);
                Player_8005380(temp_r6);
                return;
            }
            break;
        case 0xDC:
            var_r4 = sub_808186C;
    block_71:
            SetPlayerCallback(gPlayers, var_r4);
            SetPlayerCallback(temp_r6, var_r4);
            return;
        case 0xD2:
            gPlayers->moveState |= 1;
            var_r4 = sub_8081840;
            goto block_71;
        case 0xFA:
            SetPlayerCallback(gPlayers, Player_8005380);
            SetPlayerCallback(temp_r6, Player_8005380);
            break;
        case 0x0:
            var_r1 = 0x08000000;
            gPlayers->moveState |= 0x08000000;
    block_44:
            temp_r6->moveState |= var_r1;
            return;
        case 0x1:
            gStageData.rings = 0;
            gPlayers->moveState &= ~1;
            temp_r6->moveState = temp_r6->moveState & ~1 & ~0x100;
            temp_r6->moveState2 &= ~0x100;
            gPlayers->qSpeedGround = (s16) 0;
            gPlayers->qSpeedAirX = (s16) 0;
            gPlayers->qSpeedAirY = (s16) 0;
            gPlayers->framesInvulnerable = (s16) 0;
            Player_8005380(gPlayers);
            gPlayers->qWorldX = 0x67800;
            gPlayers->qWorldY = 0xB300;
            temp_r6->qSpeedGround = (s16) 0;
            temp_r6->qSpeedAirX = (s16) 0;
            temp_r6->qSpeedAirY = (s16) 0;
            temp_r6->framesInvulnerable = (s16) 0;
            Player_8005380(temp_r6);
            temp_r6->qWorldX = 0x65800;
            temp_r6->qWorldY = 0xB300;
            var_r1 = 0x20;
            gPlayers->moveState |= 0x20;
            goto block_44;
        case 0x2:
            var_r1_2 = 0xF7FFFFFF;
            gPlayers->moveState &= 0xF7FFFFFF;
    block_57:
            temp_r6->moveState &= var_r1_2;
            return;
        case 0xA:
            gStageData.unk4 = 9;
            goto block_59;
        case 0xB:
            if (gPlayers->moveState & 0xC00000) {
                sub_8016F28(gPlayers);
                gPlayers->unk2C = (u8) (-5 & gPlayers->unk2C);
            }
            if (temp_r6->moveState & 0xC00000) {
                sub_8016F28(temp_r6);
                temp_r6->unk2C = (u8) (-5 & temp_r6->unk2C);
            }
            if (!(gPlayers->moveState & 0x100)) {
                Player_8005380(gPlayers);
            }
            if (!(temp_r6->moveState & 0x100) || ((0x1C & gPlayers->unk2B) == 8)) {
                Player_8005380(temp_r6);
            }
            var_r1_2 = -0x21;
            gPlayers->moveState &= ~0x20;
            goto block_57;
        }
    }
}
void Task_1C0_ExtraChaosEmeraldsInit(AltarEmeraldCutsceneSuperSonic *emeraldsCut) {
    Player *temp_r4;
    u16 temp_r0;
    u16 temp_r0_2;
    u16 temp_r1;
    u16 temp_r1_2;

    temp_r4 = &gPlayers[(u32) (gPlayers->unk2B << 0x1E) >> 0x1E];
    emeraldsCut->unk16 = 0;
    emeraldsCut->unk14 = 0;
    gUnknown_08E2ED48[emeraldsCut->unk0](emeraldsCut);
    temp_r1 = gPlayers->keyInput;
    temp_r0 = emeraldsCut->unk14;
    gPlayers->keyInput = temp_r0;
    gPlayers->keyInput2 = (temp_r1 ^ temp_r0) & temp_r0;
    temp_r1_2 = temp_r4->keyInput;
    temp_r0_2 = emeraldsCut->unk16;
    temp_r4->keyInput = temp_r0_2;
    temp_r4->keyInput2 = (temp_r1_2 ^ temp_r0_2) & temp_r0_2;
    sub_1C0_8080548(emeraldsCut);
}

void sub_1C0_807FEB4(AltarEmeraldCutsceneSuperSonic *emeraldsCut) {
    Player *temp_r2;
    s32 temp_r2_2;
    u16 temp_r0;
    u16 temp_r0_2;
    u16 temp_r0_3;
    u16 temp_r0_4;
    u16 temp_r1;
    u16 temp_r2_3;
    u16 var_r0;

    temp_r2 = &gPlayers[(u32) (gPlayers->unk2B << 0x1E) >> 0x1E];
    temp_r1 = emeraldsCut->unk12;
    switch (temp_r1) {                              /* irregular */
        return;
    case 0x82:
        if (((s32) ((s32) gPlayers->qWorldY >> 8) > 0xB0) && ((s32) gPlayers->qSpeedAirY > 0)) {
            gPlayers->qSpeedGround = 0;
            gPlayers->qSpeedAirX = 0;
            gPlayers->qSpeedAirY = 0;
            Player_8005380(gPlayers);
            var_r0 = 0xC8;
block_45:
            emeraldsCut->unk12 = var_r0;
        }
        return;
    case 0x14A:
        emeraldsCut->unk14 = 0x10 | emeraldsCut->unk14 | gStageData.buttonConfig.jump;
        if ((s32) ((s32) gPlayers->qWorldX >> 8) > 0x90F) {
            gPlayers->qSpeedAirX = 0 - gPlayers->qSpeedAirX;
            gPlayers->qSpeedAirY = 0;
            sub_80044CC(gPlayers);
            var_r0 = 0x82;
            goto block_45;
        }
        break;
    case 0x0:
        emeraldsCut->unk10 = 0x172U;
        var_r0 = 0xA;
        goto block_45;
    case 0xA:
        temp_r0 = emeraldsCut->unk10 - 1;
        emeraldsCut->unk10 = temp_r0;
        if ((temp_r0 << 0x10) != 0) {
            return;
        }
        emeraldsCut->unk10 = 0xB4U;
        var_r0 = 0x64;
        goto block_45;
    case 0x64:
        emeraldsCut->unk14 |= 0x10;
        if ((s32) (s16) emeraldsCut->unk10 <= 0x95) {
            emeraldsCut->unk16 |= 0x10;
        }
        temp_r0_2 = emeraldsCut->unk10 - 1;
        emeraldsCut->unk10 = temp_r0_2;
        if ((temp_r0_2 << 0x10) != 0) {
            return;
        }
        var_r0 = 0x12C;
        goto block_45;
    case 0x12C:
        temp_r2_2 = (s32) gPlayers->qWorldX >> 8;
        if (temp_r2_2 > 0x898) {
            emeraldsCut->unk14 |= 0x20;
        }
        if ((temp_r2_2 > 0x8CB) && (gPlayers->moveState & 1)) {
            emeraldsCut->unk10 = 0x3CU;
            gPlayers->qSpeedGround = 0;
            gPlayers->qSpeedAirX = 0;
            gPlayers->qSpeedAirY = 0;
            Player_8005380(gPlayers);
            emeraldsCut->unk12 = 0x136U;
            return;
        }
        break;
    case 0x136:
        temp_r0_3 = emeraldsCut->unk10 - 1;
        emeraldsCut->unk10 = temp_r0_3;
        if ((temp_r0_3 << 0x10) == 0) {
            emeraldsCut->unk10 = 0x14U;
            emeraldsCut->unk12 = 0x140U;
        }
        if (((s32) ((s32) temp_r2->qWorldX >> 8) > 0x897) && (temp_r2->qSpeedAirX != 0)) {
            temp_r2->qSpeedGround = 0;
            temp_r2->qSpeedAirX = 0;
            temp_r2->qSpeedAirY = 0;
            Player_8005380(temp_r2);
            return;
        }
        break;
    case 0x140:
        temp_r2_3 = 0x10 | emeraldsCut->unk14;
        emeraldsCut->unk14 = temp_r2_3;
        temp_r0_4 = emeraldsCut->unk10 - 1;
        emeraldsCut->unk10 = temp_r0_4;
        if ((temp_r0_4 << 0x10) == 0) {
            gPlayers->unkC |= 0x40;
            emeraldsCut->unk14 = temp_r2_3 | gStageData.buttonConfig.jump;
            var_r0 = 0x14A;
            goto block_45;
        }
        break;
    }
}

void sub_1C0_808007C(AltarEmeraldCutsceneSuperSonic *emeraldsCut) {
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

    gStageData.unk4 = 9;
    temp_r1 = emeraldsCut->unk12;
    switch (temp_r1) {                              /* irregular */
    case 0xBE:
        temp_r0 = emeraldsCut->unk10 - 1;
        emeraldsCut->unk10 = temp_r0;
        temp_r2 = (s16) temp_r0;
        if (temp_r2 != 0) {
            return;
        }
        gBldRegs.bldCnt = 0x3FBF;
        gBldRegs.bldAlpha = 8;
        gBldRegs.bldY = (u16) temp_r2;
        emeraldsCut->unk10 = 1U;
        var_r0 = 0xC8;
block_123:
        emeraldsCut->unk12 = var_r0;
        return;
    case 0x82:
        if ((s32) ((s32) gPlayers->qWorldX >> 8) > 0x803) {
            return;
        }
        gPlayers->moveState &= ~1;
        gPlayers->qSpeedGround = 0;
        gPlayers->qSpeedAirX = 0;
        gPlayers->qSpeedAirY = 0;
        gPlayers->framesInvulnerable = 0;
        Player_8005380(gPlayers);
        var_r0 = 0x8C;
        goto block_123;
    case 0x78:
        temp_r0_2 = emeraldsCut->unk10 - 1;
        emeraldsCut->unk10 = temp_r0_2;
        if ((temp_r0_2 << 0x10) != 0) {
            return;
        }
        SetPlayerCallback(gPlayers, Player_8008CD0);
        m4aSongNumStart(0x29AU);
        emeraldsCut->unkC = 0xA;
        var_r0 = 0x82;
        goto block_123;
    case 0xAB:
        temp_r0_3 = emeraldsCut->unk10 - 1;
        emeraldsCut->unk10 = temp_r0_3;
        if ((temp_r0_3 << 0x10) != 0) {
            return;
        }
        gPlayers->qSpeedAirY = -0x80;
        var_r0 = 0xAC;
        goto block_123;
    case 0x8C:
        if (gBldRegs.bldY != 0x10) {
            return;
        }
        emeraldsCut->unk14 |= 0x80;
        emeraldsCut->unk10 = 0x1A4U;
        var_r0 = 0x1F4;
        goto block_123;
    case 0xAA:
        temp_r0_4 = emeraldsCut->unk10 - 1;
        emeraldsCut->unk10 = temp_r0_4;
        if ((temp_r0_4 << 0x10) != 0) {
            return;
        }
        gPlayers->charFlags.anim0 = 0x127;
        emeraldsCut->unk10 = 0x1EU;
        var_r0 = 0xAB;
        goto block_123;
    case 0xAC:
        temp_r1_2 = gPlayers->qWorldY + gPlayers->qSpeedAirY;
        gPlayers->qWorldY = temp_r1_2;
        if ((s32) (temp_r1_2 >> 8) > (s32) (gCamera.y + 0x64)) {
            return;
        }
        emeraldsCut->unk10 = 1U;
        var_r0 = 0xB4;
        goto block_123;
    case 0xB4:
        temp_r0_5 = emeraldsCut->unk10 - 1;
        emeraldsCut->unk10 = temp_r0_5;
        if ((temp_r0_5 << 0x10) != 0) {
            return;
        }
        gPlayers->charFlags.anim0 = 0x128;
        emeraldsCut->unk10 = 0x78U;
        var_r0 = 0xBE;
        goto block_123;
    case 0xFA:
        gPlayers->qSpeedAirY = (u16) gPlayers->qSpeedAirY - 0x2A;
        temp_r0_6 = gPlayers->qWorldY + gPlayers->qSpeedAirY;
        gPlayers->qWorldY = temp_r0_6;
        if ((s32) (temp_r0_6 >> 8) < -0x10) {
            var_r0 = 0x12C;
            goto block_123;
        }
        break;
    case 0xDC:
        temp_r0_7 = gBldRegs.bldY - 1;
        gBldRegs.bldY = temp_r0_7;
        temp_r0_8 = temp_r0_7;
        if (temp_r0_8 == 0) {
            gBldRegs.bldCnt = temp_r0_8;
            gBldRegs.bldAlpha = temp_r0_8;
            gBldRegs.bldY = temp_r0_8;
            emeraldsCut->unk10 = 0x78U;
            var_r0 = 0x258;
            goto block_123;
        }
        break;
    case 0xC8:
        temp_r0_9 = emeraldsCut->unk10 - 1;
        emeraldsCut->unk10 = temp_r0_9;
        if ((temp_r0_9 << 0x10) != 0) {
            return;
        }
        emeraldsCut->unk10 = 4U;
        temp_r0_10 = gBldRegs.bldY + 1;
        gBldRegs.bldY = temp_r0_10;
        if (temp_r0_10 == 0x10) {
            emeraldsCut->unk1 = 0;
            emeraldsCut->unkC = 0x3E8;
            emeraldsCut->unk10 = 0x3CU;
            var_r0 = 0xD2;
            goto block_123;
        }
        break;
    case 0xD2:
        temp_r0_11 = emeraldsCut->unk10 - 1;
        emeraldsCut->unk10 = temp_r0_11;
        if ((temp_r0_11 << 0x10) == 0) {
            gPlayers->charFlags.anim0 = 0x129;
            emeraldsCut->unk12 = 0xDCU;
            m4aSongNumStart(0x23FU);
            return;
        }
        break;
    case 0xE6:
        temp_r0_12 = emeraldsCut->unk10 - 1;
        emeraldsCut->unk10 = temp_r0_12;
        if ((temp_r0_12 << 0x10) == 0) {
            gPlayers->moveState &= ~1;
            gPlayers->charFlags.anim0 = 0x12A;
            emeraldsCut->unk10 = 0x1EU;
            var_r0 = 0xF0;
            goto block_123;
        }
        break;
    case 0xF0:
        temp_r0_13 = emeraldsCut->unk10 - 1;
        emeraldsCut->unk10 = temp_r0_13;
        temp_r1_3 = (s16) temp_r0_13;
        if (temp_r1_3 == 0) {
            gPlayers->charFlags.anim0 = 0x12B;
            gPlayers->qSpeedAirX = temp_r1_3;
            gPlayers->qSpeedAirY = -0x200;
            emeraldsCut->unk12 = 0xFAU;
            m4aSongNumStart(0x70U);
            return;
        }
        break;
    case 0x208:
        emeraldsCut->unk14 |= 0x10;
        if ((s32) ((s32) gPlayers->qWorldX >> 8) < (s32) (gCamera.x + 0x78)) {
            return;
        }
        sub_807FB7C(0x64U);
        gPlayers->qWorldX = (gCamera.x + 0x78) << 8;
        emeraldsCut->unk10 = 0x3CU;
        emeraldsCut->unk12 = 0x212U;
        m4aSongNumStart(0x73U);
        return;
    case 0x1F4:
        temp_r0_14 = emeraldsCut->unk10 - 1;
        emeraldsCut->unk10 = temp_r0_14;
        if ((temp_r0_14 << 0x10) != 0) {
            return;
        }
        SetPlayerCallback(gPlayers, Player_8008CD0);
        emeraldsCut->unk10 = 0xB4U;
        var_r0 = 0x1FE;
        goto block_123;
    case 0x1FE:
        temp_r0_15 = emeraldsCut->unk10 - 1;
        emeraldsCut->unk10 = temp_r0_15;
        temp_r1_4 = (s16) temp_r0_15;
        if (temp_r1_4 != 0) {
            return;
        }
        emeraldsCut->unk12 = 0x208U;
        gPlayers->framesInvulnerable = temp_r1_4;
        return;
    case 0x258:
        temp_r0_16 = emeraldsCut->unk10 - 1;
        emeraldsCut->unk10 = temp_r0_16;
        if ((temp_r0_16 << 0x10) == 0) {
            gPlayers->moveState |= 1;
            emeraldsCut->unk10 = 0x78U;
            var_r0 = 0xE6;
            goto block_123;
        }
        break;
    case 0x212:
        temp_r0_17 = emeraldsCut->unk10 - 1;
        emeraldsCut->unk10 = temp_r0_17;
        if ((temp_r0_17 << 0x10) != 0) {
            return;
        }
        gPlayers->charFlags.anim0 = 0x126;
        emeraldsCut->unk10 = 0x1E0U;
        emeraldsCut->unk12 = 0xAAU;
        emeraldsCut->unkC = 0x64;
        m4aSongNumStart(0x3DU);
        return;
    case 0x0:
        emeraldsCut->unk10 = 0x181U;
        var_r0 = 0xA;
        goto block_123;
    case 0xA:
        temp_r0_18 = emeraldsCut->unk10 - 1;
        emeraldsCut->unk10 = temp_r0_18;
        if ((temp_r0_18 << 0x10) != 0) {
            return;
        }
        emeraldsCut->unk10 = 0x87U;
        var_r0 = 0x64;
        goto block_123;
    case 0x64:
        emeraldsCut->unk14 |= 0x10;
        if ((s32) (s16) emeraldsCut->unk10 <= 0x45) {
            emeraldsCut->unk16 |= 0x10;
        }
        temp_r0_19 = emeraldsCut->unk10 - 1;
        emeraldsCut->unk10 = temp_r0_19;
        if ((temp_r0_19 << 0x10) != 0) {
            return;
        }
        var_r0 = 0x6E;
        goto block_123;
    case 0x6E:
        if ((s32) ((s32) gPlayers->qWorldX >> 8) <= 0x85C) {
            return;
        }
        gPlayers->qSpeedGround = 0;
        gPlayers->qSpeedAirX = 0;
        gPlayers->qSpeedAirY = 0;
        Player_8005380(gPlayers);
        emeraldsCut->unk10 = 0xD6U;
        emeraldsCut->unk12 = 0x78U;
        sub_807FB7C(0xC8U);
        return;
    }
}

void InitChaosEmeraldSprites(AltarEmeraldCutsceneSuperSonic *emeraldsCut) {
    Sprite *var_r2;
    s32 temp_r1;
    s32 temp_r1_2;
    u8 *var_r6;
    u8 var_r5;

    var_r2 = emeraldsCut->sprEmeralds;
    var_r6 = emeraldsCut->vram18;
    emeraldsCut->unk1 = 0;
    var_r5 = 0;
    do {
        temp_r1 = var_r5 * 0x14;
        emeraldsCut->unk1C[var_r5].qWorld.x = 0;
        *(&emeraldsCut->unk1C[0].qWorld.y + temp_r1) = 0;
        *(&emeraldsCut->unk1C[0].unk8 + temp_r1) = 0;
        *(&emeraldsCut->unk1C[0].unkC + temp_r1) = 0;
        emeraldsCut->unk1C[var_r5].unk10 = 1;
        emeraldsCut->unk1C[var_r5].unk12 = 0;
        var_r2->tiles = var_r6;
        var_r2->oamFlags = 0x280;
        temp_r1_2 = var_r5 * 6;
        var_r2->anim = *(temp_r1_2 + &sBossExtraAnimsChaosEmeralds);
        var_r2->variant = (u8) *(temp_r1_2 + (&sBossExtraAnimsChaosEmeralds + 2));
        var_r2->qAnimDelay = 0;
        var_r2->prevVariant = 0xFF;
        var_r2->animSpeed = 0x10;
        var_r2->palId = (u8) *(temp_r1_2 + (&sBossExtraAnimsChaosEmeralds + 4));
        var_r2->x = 0;
        var_r2->y = 0;
        var_r2->frameFlags = 0x1000;
        var_r5 += 1;
        var_r2 += 0x28;
        var_r6 += 0x80;
    } while ((u32) var_r5 <= 6U);
}

void sub_1C0_8080548(AltarEmeraldCutsceneSuperSonic *arg0) {
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
    void *var_r4;

    temp_r0 = arg0->unkC;
    switch (temp_r0) {                              /* irregular */
    case 0x1E:
        temp_r0_2 = arg0->unkE - 1;
        arg0->unkE = temp_r0_2;
        if ((temp_r0_2 << 0x10) != 0) {

        } else {
            var_r5 = 0;
            do {
                var_r0 = *((var_r5 * 8) + &gUnknown_080D5CD8);
                if (var_r0 < 0) {
                    var_r0 += 7;
                }
                *(arg0 + 0x28 + (var_r5 * 0x14)) = var_r0 >> 3;
                var_r5 += 1;
            } while ((u32) var_r5 <= 6U);
            arg0->unkC = 0x28;
        }
        break;
    case 0x64:
        arg0->unk2 = 0;
        arg0->unk8 = 0x7800;
        arg0->unk4 = 0x1E000;
        arg0->unk1C[0].unk8 = (gCamera.x + 0x78) << 8;
        arg0->unk1C[0].unkC = (gCamera.y + 0x68) << 8;
        var_r5_2 = 0;
        var_r7 = 0;
        do {
            var_r0_2 = gSineTable[var_r7 + 0x100] * arg0->unk4;
            if (var_r0_2 < 0) {
                var_r0_2 += 0x3FFF;
            }
            var_r0_3 = gSineTable[var_r7] * arg0->unk8;
            if (var_r0_3 < 0) {
                var_r0_3 += 0x3FFF;
            }
            temp_r1 = var_r5_2 * 0x14;
            sp0 = arg0 + 0x1C + temp_r1;
            *sp0 = (var_r0_2 >> 0xE) + arg0->unk1C[0].unk8;
            *(temp_r1 + (arg0 + 0x20)) = (var_r0_3 >> 0xE) + arg0->unk1C[0].unkC;
            var_r7 = (var_r7 + 0x92) & 0x3FF;
            var_r5_2 += 1;
        } while ((u32) var_r5_2 <= 6U);
        arg0->unk1 = 1;
        arg0->unkC = 0x6E;
        break;
    case 0x28:
        var_r5_3 = 0;
        do {
            temp_r0_3 = var_r5_3 * 0x14;
            temp_r2 = arg0 + 0x20 + temp_r0_3;
            *temp_r2 += *(arg0 + 0x28 + temp_r0_3);
            var_r5_3 += 1;
        } while ((u32) var_r5_3 <= 6U);
        if (gBldRegs.bldY != 0x10) {

        } else {
            arg0->unk1 = 0;
            arg0->unkC = 0x3E8;
        }
        break;
    case 0x6E:
        arg0->unk2 = (arg0->unk2 - 8) & 0x3FF;
        temp_r0_4 = arg0->unk8 - 0x40;
        arg0->unk8 = temp_r0_4;
        if ((s32) (temp_r0_4 >> 8) <= 8) {
            arg0->unk8 = 0x800;
        }
        arg0->unk4 = arg0->unk8 * 4;
        var_r4 = arg0 + 0xA8;
        var_r5_4 = 0;
        var_r7_2 = arg0->unk2;
        do {
            var_r0_4 = gSineTable[var_r7_2 + 0x100] * arg0->unk4;
            if (var_r0_4 < 0) {
                var_r0_4 += 0x3FFF;
            }
            var_r0_5 = gSineTable[var_r7_2] * arg0->unk8;
            if (var_r0_5 < 0) {
                var_r0_5 += 0x3FFF;
            }
            temp_r1_2 = var_r5_4 * 0x14;
            sp0 = arg0 + 0x1C + temp_r1_2;
            *sp0 = (var_r0_4 >> 0xE) + arg0->unk1C[0].unk8;
            *(temp_r1_2 + (arg0 + 0x20)) = (var_r0_5 >> 0xE) + arg0->unk1C[0].unkC;
            if ((u32) var_r7_2 <= 0x1FFU) {
                var_r0_6 = 0x200;
            } else {
                var_r0_6 = 0x4C0;
            }
            var_r4->unk14 = var_r0_6;
            var_r7_2 = (var_r7_2 + 0x92) & 0x3FF;
            var_r5_4 += 1;
            var_r4 += 0x28;
        } while ((u32) var_r5_4 <= 6U);
        break;
    case 0xA:
        var_r5_5 = 0;
        do {
            temp_r2_2 = var_r5_5 * 0x14;
            *(arg0 + 0x1C + temp_r2_2) = (gCamera.x + 0x78) << 8;
            *(arg0 + 0x20 + temp_r2_2) = gPlayers->qWorldY;
            temp_r1_3 = var_r5_5 * 8;
            *(arg0 + 0x24 + temp_r2_2) = *(temp_r1_3 + &gUnknown_080D5CD4);
            *(temp_r2_2 + (arg0 + 0x28)) = *(temp_r1_3 + &gUnknown_080D5CD8);
            var_r5_5 += 1;
        } while ((u32) var_r5_5 <= 6U);
        arg0->unk1 = 1;
        arg0->unkC = 0x14;
        break;
    case 0x14:
        var_r5_6 = 0;
        var_r6 = 0;
        do {
            temp_r3 = var_r5_6 * 0x14;
            temp_r4 = arg0 + 0x20 + temp_r3;
            if ((s32) ((s32) *temp_r4 >> 8) > 0xBB) {
                *temp_r4 = 0xBC00;
                var_r6 += 1;
            } else {
                temp_r2_3 = arg0 + 0x1C + temp_r3;
                *temp_r2_3 += *(arg0 + 0x24 + temp_r3);
                temp_r0_5 = arg0 + 0x28 + temp_r3;
                temp_r1_4 = *temp_r0_5 + 0x2A;
                *temp_r0_5 = temp_r1_4;
                *temp_r4 += temp_r1_4;
            }
            var_r5_6 += 1;
        } while ((u32) var_r5_6 <= 6U);
        if (var_r6 != 7) {

        } else {
            arg0->unkE = 0xB4U;
            arg0->unkC = 0x1E;
        }
        break;
    }
    if (arg0->unk1 != 0) {
        var_r4_2 = arg0 + 0xA8;
        var_r5_7 = 0;
        do {
            temp_r2_4 = var_r5_7 * 0x14;
            var_r4_2->x = ((s32) *(arg0 + 0x1C + temp_r2_4) >> 8) - gCamera.x;
            var_r4_2->y = ((s32) *(temp_r2_4 + (arg0 + 0x20)) >> 8) - gCamera.y;
            UpdateSpriteAnimation(var_r4_2);
            DisplaySprite(var_r4_2);
            var_r5_7 += 1;
            var_r4_2 += 0x28;
        } while ((u32) var_r5_7 <= 6U);
    }
}

Task *CreateAltarEmeraldPostBossCutscene(u8 arg0) {
    Task *sp4;
    u8 *sp8;
    u8 *spC;
    s32 sp10;
    s32 *sp14;
    s32 *temp_r1;
    s32 temp_r1_2;
    s32 temp_r2;
    s32 var_r3;
    u8 var_r0;
    u8 var_r4;
    u8 var_r4_2;
    void *temp_r0;
    void *temp_r0_2;
    void *temp_r1_3;
    void *temp_r1_4;
    void *var_r0_2;
    Task *t = TaskCreate(Task_11C_8080AD4, sizeof(AltarEmeraldCutsceneEggmanEscape), 0x2100U, 0U, TaskDestructor_AltarEmeraldPostBossCutscene);
    AltarEmeraldCutsceneEggmanEscape *sceneEscape = TASK_DATA(t);

    sceneEscape->filler0[0] = arg0;
    sceneEscape->unk4 = 1;
    sceneEscape->unk6 = 0;
    sceneEscape->unk2 = 0U;
    sceneEscape->unkC = NULL;
    sceneEscape->unk10 = NULL;
    var_r4 = 0;
    do {
        *(&sceneEscape->filler14[0x5D] + (var_r4 * 0x38)) = 0;
        var_r4 += 1;
    } while ((u32) var_r4 <= 2U);
    var_r4_2 = 0;
    sp8 = &sceneEscape->filler14[0x11];
    spC = &sceneEscape->filler14[0x15];
    do {
        if (var_r4_2 != 2) {
            var_r3 = var_r4_2 * 8;
            temp_r2 = var_r4_2 * 0x1C;
            temp_r1 = &sceneEscape->filler14[9] + temp_r2;
            sp14 = temp_r1;
            *temp_r1 = (gCamera.x + 0x78) << 8;
            *(&sceneEscape->filler14[0xD] + temp_r2) = (gCamera.y + 0xB4) << 8;
        } else {
            sceneEscape->unk4C = (s32) ((gCamera.x + 0x8C) << 8);
            sceneEscape->unk50 = (s32) ((gCamera.y + 0xD4) << 8);
            var_r3 = 0x10;
        }
        temp_r1_2 = (var_r3 - var_r4_2) * 4;
        *(sp8 + temp_r1_2) = 0;
        *(spC + temp_r1_2) = 0;
        *(&sceneEscape->filler14[0x19] + temp_r1_2) = 0;
        temp_r1_3 = sceneEscape + temp_r1_2;
        temp_r1_3->unk28 = 1;
        temp_r1_3->unk2A = 0;
        var_r0 = sceneEscape->filler0[0];
        if (var_r0 != 0) {
            var_r0 = 0x3E8;
        }
        temp_r1_3->unk2C = (s16) var_r0;
        var_r4_2 += 1;
    } while ((u32) var_r4_2 <= 2U);
    if (sceneEscape->filler0[0] == 0) {
        var_r0_2 = VramMalloc(0x74U);
    } else {
        var_r0_2 = NULL;
    }
    sceneEscape->unk8 = var_r0_2;
    temp_r0 = VramMalloc(0x80U);
    sceneEscape->unkC = temp_r0;
    sceneEscape->unk68 = temp_r0;
    sceneEscape->sprEggman.anim = 0x540;
    sceneEscape->unk74 = 0x4F8;
    sceneEscape->unk82 = 4;
    sceneEscape->sprEggman.animCursor = 0;
    sceneEscape->unk83 = 0xFF;
    sceneEscape->unk84 = 0x10;
    sceneEscape->unk87 = 0;
    sceneEscape->unk78 = 0;
    sceneEscape->unk7A = 0;
    sceneEscape->sprEggman.tiles = (u8 *)0x1000;
    sceneEscape->sprNeoEggMobile.frameFlags = (u32) (temp_r0 + 0x800);
    sceneEscape->unkB4 = 0x580;
    sceneEscape->sprNeoEggMobile.oamFlags = 0x4F7;
    sceneEscape->unkBA = 0;
    sceneEscape->unkB6 = 0;
    sceneEscape->unkBB = -1;
    sceneEscape->sprNeoEggMobile.hitboxes[0].b.left = 0x10;
    sceneEscape->sprNeoEggMobile.hitboxes[0].b.bottom = 9;
    sceneEscape->sprNeoEggMobile.prevAnim = 0;
    sceneEscape->unkB2 = 0U;
    sceneEscape->unkA8 = 0x1000;
    temp_r1_4 = sceneEscape + 0x110;
    sceneEscape->unk110 = (u16) sceneEscape->unk2;
    temp_r1_4->unk6 = (u16) sceneEscape->sprNeoEggMobile.prevAnim;
    temp_r1_4->unk8 = (u16) sceneEscape->unkB2;
    temp_r1_4->unk2 = 0x100;
    temp_r1_4->unk4 = 0x100;
    sp10 = 0;
    temp_r0_2 = VramMalloc(0x24U);
    sceneEscape->unk10 = temp_r0_2;
    sceneEscape->unkD8 = temp_r0_2;
    sceneEscape->unkEC = 0x500;
    sceneEscape->unkE4 = 0x50A;
    sceneEscape->filler100[0xA] = 0;
    sceneEscape->unkEE = 0;
    sceneEscape->filler100[0xB] = -1U;
    sceneEscape->filler100[0xC] = 0x10;
    sceneEscape->filler100[0xF] = 0;
    sceneEscape->unkE8 = 0;
    sceneEscape->unkEA = 0;
    sceneEscape->sprGemerl.hitboxes[0].index = 0x1000;
    return t;
}

void Task_11C_8080AD4(void) {
    Sprite *temp_r4;
    SpriteTransform *temp_r7;
    s32 temp_r2_2;
    u16 temp_r1;
    u8 var_r6;
    void *temp_r2;

    temp_r2 = M2C_ERROR(/* Read from unset register $r0 */);
    temp_r7 = temp_r2 + 0x110;
    temp_r1 = temp_r2->unk2C;
    if (((temp_r1 == 0xC8) && (temp_r2->unk64 == 0xC8)) || ((temp_r1 == 0x7D0) && (temp_r2->unk64 == temp_r1))) {
        TaskDestroy(*M2C_ERROR(/* Read from unset register $r0 */));
        return;
    }
    sub_8080BD0(temp_r2);
    sub_80811E0(temp_r2);
    var_r6 = 0;
loop_6:
    temp_r4 = temp_r2 + ((var_r6 * 0x38) + 0x68);
    temp_r2_2 = var_r6 * 0x1C;
    temp_r4->x = ((s32) *(temp_r2 + 0x14 + temp_r2_2) >> 8) - gCamera.x;
    temp_r4->y = ((s32) *(temp_r2_2 + (temp_r2 + 0x18)) >> 8) - gCamera.y;
    if (temp_r4->frameFlags & 0x20) {
        temp_r2->unk110 = (u16) temp_r2->unk2;
        temp_r7->x = temp_r4->x;
        temp_r7->y = temp_r4->y;
        TransformSprite(temp_r4, temp_r7);
        UpdateSpriteAnimation(temp_r4);
        DisplaySprite(temp_r4);
    } else {
        UpdateSpriteAnimation(temp_r4);
        DisplaySprite(temp_r4);
    }
    var_r6 += 1;
    if (((u32) var_r6 <= 2U) && ((var_r6 != 2) || (temp_r2->unk10 != 0))) {
        goto loop_6;
    }
}

void sub_8080BD0(void *arg0) {
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
    void *temp_r3;
    void *temp_r5;
    void *temp_r7;

    temp_r5 = arg0 + 0x14;
    temp_r7 = arg0 + 0x68;
    temp_r3 = arg0 + 0xA0;
    temp_r1 = temp_r5->unk18;
    if (temp_r1 == 0x41A) {
        temp_r0 = arg0->unk14 + temp_r5->unk8;
        arg0->unk14 = temp_r0;
        if ((s32) (temp_r0 >> 8) > 0x8BB) {

        } else {
            var_r0 = 0x424;
            goto block_148;
        }
    } else if ((s32) temp_r1 <= 0x41A) {
        switch (temp_r1) {                          /* switch 1; irregular */
        case 50:                                    /* switch 1 */
            arg0->unk14 = (s32) (temp_r5->unk8 + (*gUnknown_080D5C80[temp_r5->unk16] << 8));
            temp_r5->unk4 = (s32) (temp_r5->unkC + (*((temp_r5->unk16 * 4) + &gUnknown_080D5C80[0][1]) << 8));
            temp_r5->unk16 = (u16) ((temp_r5->unk16 + 1) & 7);
            temp_r0_2 = temp_r5->unk14 - 1;
            temp_r5->unk14 = temp_r0_2;
            if ((temp_r0_2 << 0x10) != 0) {

            } else {
                temp_r5->unkC = 0x80;
                temp_r5->unk18 = 0x64U;
                m4aSongNumStart(0x221U);
            }
            break;
        case 20:                                    /* switch 1 */
            temp_r0_3 = temp_r5->unk4 + temp_r5->unkC;
            temp_r5->unk4 = temp_r0_3;
            if ((s32) (temp_r0_3 >> 8) > 0x6E) {

            } else {
                temp_r5->unk14 = 0x28U;
                var_r0 = 0x1E;
                goto block_148;
            }
            break;
        case 0:                                     /* switch 1 */
            temp_r5->unk14 = 0x4BU;
            var_r0 = 0xA;
            goto block_148;
        case 10:                                    /* switch 1 */
            temp_r0_4 = temp_r5->unk14 - 1;
            temp_r5->unk14 = temp_r0_4;
            temp_r0_5 = (s16) temp_r0_4;
            if (temp_r0_5 != 0) {

            } else {
                temp_r5->unk8 = (s32) temp_r0_5;
                temp_r5->unkC = -0x100;
                var_r0 = 0x14;
                goto block_148;
            }
            break;
        case 30:                                    /* switch 1 */
            temp_r0_6 = temp_r5->unk14 - 1;
            temp_r5->unk14 = temp_r0_6;
            temp_r1_2 = (s16) temp_r0_6;
            if (temp_r1_2 != 0) {

            } else {
                temp_r5->unk8 = 0x180;
                temp_r5->unkC = (s32) temp_r1_2;
                var_r0_2 = 0x28;
block_114:
                temp_r5->unk18 = var_r0_2;
                temp_r7->unkC = 0x4F8;
                temp_r7->unk1A = 8;
                temp_r7->unk1B = 0xFF;
                temp_r7->unk8 = (s32) (temp_r7->unk8 | 0x400);
                temp_r3->unk8 = (s32) (temp_r3->unk8 | 0x400);
                m4aSongNumStart(0x27EU);
            }
            break;
        case 40:                                    /* switch 1 */
            temp_r0_7 = arg0->unk14 + temp_r5->unk8;
            arg0->unk14 = temp_r0_7;
            temp_r1_3 = temp_r0_7 >> 8;
            if (temp_r1_3 > 0x923) {
                temp_r5->unk16 = 0U;
                temp_r5->unk14 = 0x20U;
                temp_r5->unk8 = (s32) arg0->unk14;
                temp_r5->unkC = (s32) temp_r5->unk4;
                temp_r5->unk18 = 0x32U;
                m4aSongNumStart(0x27CU);
            } else if (temp_r1_3 <= 0x833) {

            } else {
                temp_r5->unk8 = 0x180;
            }
            break;
        default:                                    /* switch 1 */
            var_r2 = 0x3F2;
            switch (temp_r1) {                      /* switch 2; irregular */
            case 0x3F2:                             /* switch 2 */
                temp_r0_8 = temp_r5->unk14 - 1;
                temp_r5->unk14 = temp_r0_8;
                temp_r0_9 = (s16) temp_r0_8;
                if (temp_r0_9 != 0) {

                } else {
                    temp_r5->unk8 = (s32) temp_r0_9;
                    temp_r5->unkC = -0x100;
                    var_r0 = 0x3FC;
                    goto block_148;
                }
                break;
            case 0x64:                              /* switch 2 */
                temp_r5->unk16 = (u16) ((temp_r5->unk16 + 8) & 0x1FF);
                var_r0_3 = gSineTable[temp_r5->unk16];
                if ((s32) var_r0_3 < 0) {
                    var_r0_3 += 0x3F;
                }
                arg0->unk14 = (s32) (arg0->unk14 + (var_r0_3 >> 6));
                temp_r1_4 = temp_r5->unk4 + temp_r5->unkC;
                temp_r5->unk4 = temp_r1_4;
                temp_r0_10 = temp_r5->unk14 + 1;
                temp_r5->unk14 = temp_r0_10;
                if ((s32) (s16) temp_r0_10 > 9) {
                    if (!(gStageData.timer & 3)) {
                        temp_r0_11 = (0x196225 * gPseudoRandom) + 0x3C6EF35F;
                        temp_r1_5 = 0x3FF & temp_r0_11;
                        temp_r0_12 = (0x196225 * temp_r0_11) + 0x3C6EF35F;
                        gPseudoRandom = temp_r0_12;
                        temp_r3_2 = 0xF & temp_r0_12;
                        sub_8086D64((s32) ((arg0->unk14 + ((u32) (temp_r3_2 * gSineTable[temp_r1_5 + 0x100]) >> 6)) << 8) >> 0x10, (s32) ((((u32) (temp_r3_2 * gSineTable[temp_r1_5]) >> 6) + temp_r1_4) << 8) >> 0x10, 0x100, 0x200, 0x1E, arg0->unk8);
                    }
                    if (((s32) ((s32) arg0->unk14 >> 8) <= 0x996) && !(0x3F & temp_r5->unk14)) {
                        m4aSongNumStart(0x221U);
                    }
                }
                if ((s16) temp_r5->unk14 == 0xA) {
                    temp_r7->unkC = 0x4F8;
                    temp_r7->unk1A = 4;
                    temp_r7->unk1B = 0xFF;
                }
                if ((s32) ((s32) temp_r5->unk4 >> 8) <= 0xF9) {

                } else {
                    var_r0 = 0xC8;
                    goto block_148;
                }
                break;
            case 0x3E8:                             /* switch 2 */
                var_r0_4 = 0x4B;
                goto block_141;
            default:                                /* switch 2 */
                var_r2 = 0x406;
                switch (temp_r1) {                  /* switch 3; irregular */
                case 0x406:                         /* switch 3 */
                    temp_r0_13 = temp_r5->unk14 - 1;
                    temp_r5->unk14 = temp_r0_13;
                    temp_r1_6 = (s16) temp_r0_13;
                    if (temp_r1_6 != 0) {

                    } else {
                        temp_r5->unk8 = 0x180;
                        temp_r5->unkC = (s32) temp_r1_6;
                        var_r0_2 = 0x410;
                        goto block_114;
                    }
                    break;
                case 0x3FC:                         /* switch 3 */
                    temp_r0_14 = temp_r5->unk4 + temp_r5->unkC;
                    temp_r5->unk4 = temp_r0_14;
                    if ((s32) (temp_r0_14 >> 8) > 0x6E) {

                    } else {
                        var_r0_4 = 0x28;
                        goto block_141;
                    }
                    break;
                case 0x410:                         /* switch 3 */
                    temp_r0_15 = arg0->unk14 + temp_r5->unk8;
                    arg0->unk14 = temp_r0_15;
                    if ((s32) (temp_r0_15 >> 8) > 0x8FB) {
                        temp_r5->unk8 = -0x100;
                        temp_r7->unkC = 0x4F8;
                        temp_r7->unk1A = 0;
                        temp_r7->unk1B = 0xFF;
                        temp_r7->unk8 = (s32) (temp_r7->unk8 & 0xFFFFFBFF);
                        temp_r3->unk8 = (s32) (temp_r3->unk8 & 0xFFFFFBFF);
                        temp_r5->unk18 = 0x41AU;
                    } else if ((s32) ((s32) arg0->unk14 >> 8) <= 0x7CF) {

                    } else {
                        temp_r5->unk8 = 0x280;
                    }
                    break;
                }
                break;
            }
            break;
        }
    } else {
        switch (temp_r1) {                          /* switch 4; irregular */
        case 0x46A:                                 /* switch 4 */
            temp_r5->unk14 = 0x4E2U;
            var_r0 = 0x474;
block_148:
            temp_r5->unk18 = var_r0;
            break;
        case 0x438:                                 /* switch 4 */
            temp_r7->unkC = 0x4F8;
            temp_r7->unk1A = 0xC;
            temp_r7->unk1B = 0xFF;
            temp_r7->unk14 = 0x280;
            temp_r3->unkC = 0x4F7;
            temp_r3->unk1A = 5;
            temp_r3->unk1B = -1;
            temp_r3->unk14 = 0x2C0;
            temp_r7->unk8 = (s32) (temp_r7->unk8 | 0x3E);
            temp_r3->unk8 = (s32) (temp_r3->unk8 | 0x3F);
            arg0->unk2 = 0x380U;
            var_r0 = 0x424;
            goto block_148;
        case 0x42E:                                 /* switch 4 */
            temp_r7->unkC = 0x4F8;
            temp_r7->unk1A = 8;
            temp_r7->unk1B = 0xFF;
            temp_r5->unk18 = 0x424U;
            break;
        case 0x456:                                 /* switch 4 */
            arg0->unk14 = (s32) (arg0->unk14 + temp_r5->unk8);
            temp_r1_7 = temp_r5->unk4 + temp_r5->unkC;
            temp_r5->unk4 = temp_r1_7;
            if ((s32) (temp_r1_7 >> 8) < (s32) (gCamera.y + 0x79)) {

            } else {
                CreateScreenShake(0x800U, 0x40U, 0U, -1U, 0x91U);
                m4aSongNumStart(0x27CU);
                temp_r5->unkC = -0x400;
                var_r0 = 0x460;
                goto block_148;
            }
            break;
        case 0x44C:                                 /* switch 4 */
            temp_r5->unk8 = 0;
            temp_r5->unkC = 0x800;
            temp_r5->unk18 = 0x456U;
            break;
        case 0x460:                                 /* switch 4 */
            temp_r0_16 = temp_r5->unkC + 0x2A;
            temp_r5->unkC = temp_r0_16;
            temp_r5->unk4 = (s32) (temp_r5->unk4 + temp_r0_16);
            temp_r1_8 = arg0->unk2;
            if (temp_r1_8 != 0x300) {
                arg0->unk2 = (u16) (temp_r1_8 - 8);
            }
            if (((s32) ((s32) temp_r5->unk4 >> 8) >= (s32) (gCamera.y + 0x79)) && ((s32) temp_r5->unkC > 0)) {
                temp_r5->unkC = 0;
                temp_r5->unk18 = 0x46AU;
            }
            break;
        default:                                    /* switch 4 */
            var_r2 = 0x488;
            switch (temp_r1) {                      /* switch 5; irregular */
            case 0x488:                             /* switch 5 */
                temp_r0_17 = temp_r5->unk14 - 1;
                temp_r5->unk14 = temp_r0_17;
                if ((temp_r0_17 << 0x10) == 0) {
                    var_r0 = 0x492;
                    goto block_148;
                }
                break;
            case 0x474:                             /* switch 5 */
                temp_r0_18 = temp_r5->unk14 - 1;
                temp_r5->unk14 = temp_r0_18;
                if ((temp_r0_18 << 0x10) == 0) {
                    var_r0 = 0x492;
                    goto block_148;
                }
                break;
            case 0x47E:                             /* switch 5 */
                temp_r0_19 = temp_r5->unk14 - 1;
                temp_r5->unk14 = temp_r0_19;
                if ((temp_r0_19 << 0x10) == 0) {
                    var_r0_4 = 0x12C;
block_141:
                    temp_r5->unk14 = var_r0_4;
                    temp_r5->unk18 = var_r2;
                }
                break;
            default:                                /* switch 5 */
                var_r2 = 0x49C;
                switch (temp_r1) {                  /* switch 6; irregular */
                case 0x49C:                         /* switch 6 */
                    temp_r0_20 = temp_r5->unk14 - 1;
                    temp_r5->unk14 = temp_r0_20;
                    if ((temp_r0_20 << 0x10) == 0) {
                        temp_r5->unk8 = 0x400;
                        temp_r5->unkC = -0x400;
                        temp_r5->unk18 = 0x4A6U;
                        m4aSongNumStart(0x70U);
                    }
                    break;
                case 0x492:                         /* switch 6 */
                    temp_r0_21 = (arg0->unk2 + 8) & 0x3FF;
                    arg0->unk2 = temp_r0_21;
                    if (temp_r0_21 == 0) {
                        var_r0_4 = 0xB4;
                        goto block_141;
                    }
                    break;
                case 0x4A6:                         /* switch 6 */
                    arg0->unk14 = (s32) (arg0->unk14 + temp_r5->unk8);
                    temp_r0_22 = temp_r5->unk4 + temp_r5->unkC;
                    temp_r5->unk4 = temp_r0_22;
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
    arg0->unk30 = (s32) arg0->unk14;
    (arg0 + 0x30)->unk4 = (s32) temp_r5->unk4;
}

void sub_80811E0(void *arg0) {
    s16 temp_r0_22;
    s16 temp_r0_2;
    s16 temp_r1_2;
    s16 temp_r1_5;
    s16 var_r0_2;
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
    void *temp_r3;
    void *temp_r4;

    temp_r4 = arg0 + 0x4C;
    temp_r3 = arg0 + 0xD8;
    temp_r1 = temp_r4->unk18;
    switch (temp_r1) {                              /* irregular */
    case 0x3F2:
        temp_r0 = temp_r4->unk14 - 1;
        temp_r4->unk14 = temp_r0;
        temp_r0_2 = (s16) temp_r0;
        if (temp_r0_2 != 0) {
            return;
        }
        temp_r4->unk8 = (s32) temp_r0_2;
        temp_r4->unkC = 0xFFFFFF00;
        var_r0 = 0x3FC;
block_136:
        temp_r4->unk18 = var_r0;
        return;
    case 0x32:
        temp_r0_3 = arg0->unk4C + temp_r4->unk8;
        arg0->unk4C = temp_r0_3;
        if ((s32) (temp_r0_3 >> 8) <= 0x8F2) {
            return;
        }
        temp_r4->unk8 = 0;
        temp_r4->unkC = 0x80;
        var_r0 = 0x3C;
        temp_r4->unk14 = 0x3CU;
        goto block_136;
    case 0x14:
        temp_r0_4 = temp_r4->unk4 + temp_r4->unkC;
        temp_r4->unk4 = temp_r0_4;
        if ((s32) (temp_r0_4 >> 8) > 0x8E) {
            return;
        }
        temp_r4->unk14 = 0x28U;
        var_r0 = 0x1E;
        goto block_136;
    case 0x1E:
        temp_r0_5 = temp_r4->unk14 - 1;
        temp_r4->unk14 = temp_r0_5;
        temp_r1_2 = (s16) temp_r0_5;
        if (temp_r1_2 != 0) {
            return;
        }
        temp_r4->unk8 = 0x180;
        temp_r4->unkC = (s32) temp_r1_2;
        temp_r4->unk18 = 0x28U;
block_108:
        temp_r3->unkC = 0x50A;
        temp_r3->unk1A = 0;
        temp_r3->unk1B = 0xFF;
        temp_r3->unk8 = (s32) (temp_r3->unk8 | 0x400);
        return;
    case 0x28:
        temp_r0_6 = arg0->unk4C + temp_r4->unk8;
        arg0->unk4C = temp_r0_6;
        if ((s32) (temp_r0_6 >> 8) <= 0x819) {
            return;
        }
        temp_r4->unk8 = 0x100;
        var_r0 = 0x32;
        goto block_136;
    case 0x50:
        temp_r0_7 = temp_r4->unk14 - 1;
        temp_r4->unk14 = temp_r0_7;
        if ((temp_r0_7 << 0x10) != 0) {
            return;
        }
        temp_r4->unk14 = 0x96U;
        temp_r4->unk18 = 0x5AU;
        temp_r3->unkC = 0x50B;
        temp_r3->unk1A = 2;
        temp_r3->unk1B = 0xFF;
        temp_r3->unk8 = (s32) (temp_r3->unk8 & 0xFFFFFBFF);
        return;
    case 0x3C:
        temp_r0_8 = temp_r4->unk4 + temp_r4->unkC;
        temp_r4->unk4 = temp_r0_8;
        if ((s32) (temp_r0_8 >> 8) <= 0xB3) {
            return;
        }
        temp_r3->unkC = 0x50B;
        temp_r3->unk1A = 1;
        temp_r3->unk1B = 0xFF;
        temp_r4->unk14 = 0x14U;
        var_r0 = 0x46;
        goto block_136;
    case 0x46:
        temp_r0_9 = temp_r4->unk14 - 1;
        temp_r4->unk14 = temp_r0_9;
        if ((temp_r0_9 << 0x10) != 0) {
            return;
        }
        temp_r4->unk14 = 0x3CU;
        temp_r4->unk18 = 0x50U;
        var_r0_2 = 0x506;
block_120:
        temp_r3->unkC = var_r0_2;
        temp_r3->unk1A = 0;
        temp_r3->unk1B = 0xFF;
        return;
    case 0x64:
        temp_r4->unkC = (s32) (temp_r4->unkC + 0x2A);
        arg0->unk4C = (s32) (arg0->unk4C + temp_r4->unk8);
        temp_r0_10 = temp_r4->unk4 + temp_r4->unkC;
        temp_r4->unk4 = temp_r0_10;
        if ((s32) (temp_r0_10 >> 8) <= 0xF9) {
            return;
        }
        var_r0 = 0xC8;
        goto block_136;
    case 0x5A:
        temp_r0_11 = temp_r4->unk14 - 1;
        temp_r4->unk14 = temp_r0_11;
        if ((temp_r0_11 << 0x10) != 0) {
            return;
        }
        temp_r4->unk8 = 0x100;
        temp_r4->unkC = 0xFFFFFC00;
        temp_r3->unkC = 0x50A;
        temp_r3->unk1A = 0;
        temp_r3->unk1B = 0xFF;
        temp_r3->unk8 = (s32) (temp_r3->unk8 | 0x400);
        temp_r4->unk18 = 0x64U;
        m4aSongNumStart(0x74U);
        return;
    case 0x3E8:
        temp_r4->unk14 = 0x4BU;
        temp_r4->unk18 = 0x3F2U;
        return;
    case 0x42E:
        temp_r1_3 = temp_r4->unk14 - 1;
        temp_r4->unk14 = temp_r1_3;
        if ((temp_r1_3 << 0x10) == 0) {
            temp_r4->unk14 = 0xAU;
            temp_r4->unk18 = 0x433U;
            temp_r3->unkC = 0x50B;
            temp_r3->unk1A = 0;
            temp_r3->unk1B = 0xFF;
            temp_r3->unk8 = (s32) (temp_r3->unk8 & 0xFFFFFBFF);
            m4aSongNumStart(0x223U);
            return;
        }
        if (!(temp_r1_3 & 0x3F)) {
            m4aSongNumStart(0x224U);
            return;
        }
        break;
    case 0x410:
        temp_r0_12 = arg0->unk4C + temp_r4->unk8;
        arg0->unk4C = temp_r0_12;
        temp_r1_4 = temp_r0_12 >> 8;
        if (temp_r1_4 > 0x8AB) {
            temp_r4->unk8 = 0;
            temp_r4->unkC = 0x200;
            temp_r4->unk14 = 0x3CU;
            var_r0 = 0x41A;
            goto block_136;
        }
        if (temp_r1_4 <= 0x76B) {
            return;
        }
        temp_r4->unk8 = 0x200;
        return;
    case 0x3FC:
        temp_r0_13 = temp_r4->unk4 + temp_r4->unkC;
        temp_r4->unk4 = temp_r0_13;
        if ((s32) (temp_r0_13 >> 8) > 0x8E) {
            return;
        }
        temp_r4->unk14 = 0x28U;
        var_r0 = 0x406;
        goto block_136;
    case 0x406:
        temp_r0_14 = temp_r4->unk14 - 1;
        temp_r4->unk14 = temp_r0_14;
        temp_r1_5 = (s16) temp_r0_14;
        if (temp_r1_5 != 0) {
            return;
        }
        temp_r4->unk8 = 0x180;
        temp_r4->unkC = (s32) temp_r1_5;
        temp_r4->unk18 = 0x410U;
        goto block_108;
    case 0x41A:
        temp_r0_15 = temp_r4->unk4 + temp_r4->unkC;
        temp_r4->unk4 = temp_r0_15;
        if ((s32) (temp_r0_15 >> 8) <= 0xB3) {
            return;
        }
        temp_r3->unkC = 0x50B;
        temp_r3->unk1A = 1;
        temp_r3->unk1B = 0xFF;
        temp_r4->unk14 = 0x14U;
        var_r0 = 0x424;
        goto block_136;
    case 0x424:
        temp_r0_16 = temp_r4->unk14 - 1;
        temp_r4->unk14 = temp_r0_16;
        if ((temp_r0_16 << 0x10) != 0) {
            return;
        }
        temp_r4->unk14 = 0xB4U;
        temp_r4->unk18 = 0x42EU;
        var_r0_2 = 0x509;
        goto block_120;
    case 0x442:
        temp_r0_17 = temp_r4->unk14 - 1;
        temp_r4->unk14 = temp_r0_17;
        if ((temp_r0_17 << 0x10) == 0) {
            temp_r3->unkC = 0x5CA;
            temp_r3->unk1A = 0;
            temp_r3->unk1B = 0xFF;
            temp_r4->unk14 = 0xB4U;
            var_r0 = 0x44C;
            goto block_136;
        }
        break;
    case 0x433:
        temp_r0_18 = temp_r4->unk14 - 1;
        temp_r4->unk14 = temp_r0_18;
        if ((temp_r0_18 << 0x10) == 0) {
            temp_r4->unk8 = 0xFFFFFC00;
            var_r0 = 0x438;
            goto block_136;
        }
        break;
    case 0x438:
        temp_r0_19 = arg0->unk4C + temp_r4->unk8;
        arg0->unk4C = temp_r0_19;
        if ((s32) (temp_r0_19 >> 8) <= 0x85C) {
            temp_r3->unkC = 0x509;
            temp_r3->unk1A = 0;
            temp_r3->unk1B = 0xFF;
            temp_r4->unk8 = 0;
            temp_r4->unkC = 0;
            temp_r4->unk14 = 0x78U;
            temp_r4->unk18 = 0x442U;
            m4aSongNumStop(0x223U);
            return;
        }
        break;
    case 0x456:
        temp_r4->unk4 = (s32) (temp_r4->unk4 + temp_r4->unkC);
        if (gBldRegs.bldY == 0x10) {
            var_r0 = 0x460;
            goto block_136;
        }
        break;
    case 0x44C:
        temp_r0_20 = temp_r4->unk14 - 1;
        temp_r4->unk14 = temp_r0_20;
        if ((temp_r0_20 << 0x10) == 0) {
            temp_r3->unkC = 0x5CA;
            temp_r3->unk1A = 1;
            temp_r3->unk1B = 0xFF;
            temp_r4->unkC = -0x80;
            temp_r4->unk18 = 0x456U;
            return;
        }
        break;
    case 0x460:
        VramFree(arg0->unk10);
        arg0->unk10 = NULL;
        var_r0 = 0x7D0;
        goto block_136;
    case 0x0:
        temp_r4->unk14 = 0x4BU;
        var_r0 = 0xA;
        goto block_136;
    case 0xA:
        temp_r0_21 = temp_r4->unk14 - 1;
        temp_r4->unk14 = temp_r0_21;
        temp_r0_22 = (s16) temp_r0_21;
        if (temp_r0_22 != 0) {
            return;
        }
        temp_r4->unk8 = (s32) temp_r0_22;
        temp_r4->unkC = 0xFFFFFF00;
        var_r0 = 0x14;
        goto block_136;
    }
}

void sub_80816C0(HyperEggRobo *boss) {
    Sprite *temp_r0;
    u8 var_r4;

    var_r4 = 0;
    do {
        temp_r0 = &boss->sprPlatforms[var_r4];
        temp_r0->x = ((s32) boss->unk2C[var_r4].qWorld.x >> 8) - gCamera.x;
        temp_r0->y = ((s32) *(&boss->unk2C[0].qWorld.y + (var_r4 * 0x14)) >> 8) - gCamera.y;
        DisplaySprite(temp_r0);
        var_r4 += 1;
    } while ((u32) var_r4 <= 3U);
}

void sub_808170C(void *arg0) {
    void *temp_r0;

    temp_r0 = arg0->unk7C;
    if (temp_r0 != NULL) {
        VramFree(temp_r0);
        arg0->unk7C = NULL;
    }
}

void sub_8081724(s32 arg0, u8 arg1, u8 arg2) {
    s32 *temp_r5;
    s32 temp_r1;
    s32 temp_r2;
    s32 temp_r4;
    s32 var_r0;

    temp_r2 = arg2 * 0x14;
    temp_r5 = arg0 + 0x38 + temp_r2;
    if ((s32) *temp_r5 <= 0) {
        temp_r4 = arg1 * 0x28;
        temp_r1 = *(arg0 + 0x148 + temp_r4) - *(arg0 + 0x30 + temp_r2);
        var_r0 = temp_r1;
        if (temp_r1 < 0) {
            var_r0 = 0 - temp_r1;
        }
        if ((s32) (var_r0 >> 8) <= 0x13) {
            *temp_r5 = *(arg0 + 0x150 + temp_r4);
            (arg0 + temp_r2)->unk3E = 0x64;
            m4aSongNumStart(0x23AU);
        }
    }
}

void sub_808178C(u8 arg0) {
    u16 temp_r4;

    temp_r4 = TaskCreate((void (*)()) Task_1C0_ExtraChaosEmeraldsInit, 0x1C0U, 0x2200U, 0U, TaskDestructor_ExtraChaosEmeralds)->data;
    temp_r4->unk0 = arg0;
    temp_r4->unk10 = 1;
    temp_r4->unk12 = 0;
    temp_r4->unkC = 0;
    temp_r4->unk16 = 0;
    temp_r4->unk14 = 0;
    temp_r4->unk18 = VramMalloc(0x1CU);
    InitChaosEmeraldSprites((AltarEmeraldCutsceneSuperSonic *) temp_r4);
}

void TaskDestructor_HyperEggRobo(Task *t) {
    u16 temp_r1;
    void *temp_r0;

    temp_r1 = t->data;
    temp_r0 = temp_r1->unk18;
    if (temp_r0 != NULL) {
        VramFree(temp_r0);
        temp_r1->unk18 = NULL;
    }
    sub_8081AA0(temp_r1);
    sub_8081A40(temp_r1);
    sub_808170C((void *) temp_r1);
}

void sub_8081810(Player *p) {
    p->charFlags.anim0 = 0x125;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    SetPlayerCallback(p, sub_808183C);
    sub_808183C(p);
}

void sub_808183C(Player *p) {

}

void sub_8081840(Player *p) {
    p->qSpeedGround = 0;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    p->charFlags.anim0 = 0x96;
    SetPlayerCallback(p, PlayerCB_8081894);
    PlayerCB_8081894(p);
}

void sub_808186C(Player *p) {
    p->qSpeedGround = 0;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    p->charFlags.anim0 = 0;
    SetPlayerCallback(p, PlayerCB_8081894);
    PlayerCB_8081894(p);
}

void PlayerCB_8081894(Player *p) {

}

void sub_8081898(void) {
    u16 temp_r1;
    void *temp_r4;

    temp_r1 = gCurTask->data;
    temp_r4 = temp_r1->unk20;
    sub_358_807C14C((HyperEggRobo *) temp_r1);
    sub_80816C0((HyperEggRobo *) temp_r1);
    if ((s32) ((s32) temp_r4->unk10 >> 8) > 0x66C) {
        gCamera.minY = 0x10;
        sub_358_807BCCC((HyperEggRobo *) temp_r1);
        sub_358_807BEF0((HyperEggRobo *) temp_r1);
        sub_358_807D6C4((HyperEggRobo *) temp_r1);
        sub_358_807CBC8((HyperEggRobo *) temp_r1);
        temp_r1->unk10 = 0;
        temp_r1->unk8 = 1;
        temp_r1->unkC = 0;
        gCurTask->main = (void (*)()) Task_358_807B9B8;
    }
}

void Task_358_HyperEggRoboInit(void) {
    HyperEggRobo *temp_r4;
    void (*var_r0)(HyperEggRobo *);

    temp_r4 = M2C_ERROR(/* Read from unset register $r0 */);
    sub_358_807C14C(temp_r4);
    sub_80816C0(temp_r4);
    if (*temp_r4->initArg0 == 3) {
        TaskDestroy(gCurTask);
        return;
    }
    if ((sub_8079FFC() << 0x18) != 0) {
        var_r0 = Task_358_8081958;
    } else {
        var_r0 = Task_358_807B808;
    }
    gCurTask->main = var_r0;
}

void Task_358_8081958(HyperEggRobo *boss) {
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    if (*temp_r1->unk4 == 3) {
        TaskDestroy(gCurTask);
        return;
    }
    sub_358_807C14C((HyperEggRobo *) temp_r1);
    sub_80816C0((HyperEggRobo *) temp_r1);
    if ((*temp_r1->unk4 == 2) && ((sub_807A074() << 0x18) != 0)) {
        sub_807FB7C(0U);
        sub_807FB7C(0xAU);
        sub_807FB7C(0xBU);
        gCurTask->main = Task_358_80819BC;
    }
}

void Task_358_80819BC(void) {
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    if (*temp_r1->unk4 == 3) {
        TaskDestroy(gCurTask);
        return;
    }
    sub_358_807C14C((HyperEggRobo *) temp_r1);
    sub_80816C0((HyperEggRobo *) temp_r1);
    if (*temp_r1->unk4 == 2) {
        temp_r1->unk8 = 5;
        temp_r1->unkC = 0xA;
        SetFixedRandomIfTimeAttackMode();
        gCurTask->main = (void (*)()) Task_358_807B808;
    }
}

void sub_8081A10(Player *arg0) {
    arg0->qSpeedGround = 0;
    arg0->qSpeedAirX = 0;
    arg0->qSpeedAirY = 0;
    arg0->charFlags.anim0 = 0x96;
    SetPlayerCallback(arg0, PlayerCB_80819BC);
    PlayerCB_80819BC(arg0);
}

void PlayerCB_80819BC(Player *p) {

}

void sub_8081A40(void *arg0) {
    void *temp_r0;
    void *temp_r0_2;

    temp_r0 = arg0->unk250;
    if (temp_r0 != NULL) {
        VramFree(temp_r0);
        arg0->unk250 = NULL;
    }
    temp_r0_2 = arg0->unk228;
    if (temp_r0_2 != NULL) {
        VramFree(temp_r0_2);
        arg0->unk228 = NULL;
    }
}

void sub_8081A74(HyperEggRobo *boss, u8 param1, u8 param2) {
    s32 temp_r2;

    if ((param1 << 0x18) == 0) {
        temp_r2 = param2 * 4;
        boss->spr228.anim = *(temp_r2 + &gUnknown_080D5C38);
        boss->spr228.variant = (u8) *(temp_r2 + (&gUnknown_080D5C38 + 2));
    }
}

void sub_8081AA0(void *arg0) {
    void *temp_r0;
    void *temp_r0_2;

    temp_r0 = arg0->unk278;
    if (temp_r0 != NULL) {
        VramFree(temp_r0);
        arg0->unk278 = NULL;
    }
    temp_r0_2 = arg0->unk2A0;
    if (temp_r0_2 != NULL) {
        VramFree(temp_r0_2);
        arg0->unk2A0 = NULL;
    }
}

void UpdateHandAnimation(HyperEggRobo *boss, u8 param1, u8 param2) {
    ? *var_r1;
    Sprite *var_r3;
    s32 temp_r2;
    u8 temp_r1;

    temp_r1 = param1;
    switch (temp_r1) {                              /* irregular */
    case 0:
        var_r3 = boss->spr278;
        var_r1 = &sBossFinalAnimsHands;
block_5:
        temp_r2 = param2 * 4;
        var_r3->anim = *(temp_r2 + var_r1);
        var_r3->variant = (u8) *(temp_r2 + (var_r1 + 2));
        return;
    case 1:
        var_r3 = &boss->spr278[1];
        var_r1 = &sBossFinalAnimsHands + 0x18;
        goto block_5;
    }
}

void sub_8081B18(HyperEggRobo *boss, u8 param1) {

}

void sub_8081B1C(void) {

}

void sub_8081B20(void) {

}

void sub_8081B24(Sprite *arg0, s32 arg1, s32 arg2) {
    Player *temp_r4;
    Sprite *temp_r1;
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    u16 temp_r5;
    u8 var_r6;

    temp_r5 = gCurTask->data;
    var_r6 = 0;
    do {
        temp_r4 = *(temp_r5 + 0x20 + (var_r6 * 4));
        if (sub_802C080(temp_r4) == 0) {
            if (temp_r4->moveState & 0x20) {
                temp_r0 = temp_r5 + 0x7C;
                temp_r1 = temp_r4->sprColliding;
                if ((temp_r1 == temp_r0) || (temp_r0_2 = temp_r0 + 0x28, (temp_r1 == temp_r0_2)) || (temp_r0_3 = temp_r0_2 + 0x28, (temp_r1 == temp_r0_3)) || (temp_r1 == (temp_r0_3 + 0x28))) {
                    sub_8020CE0(arg0, arg1 >> 8, arg2 >> 8, 0, temp_r4);
                }
            } else {
                sub_8020CE0(arg0, arg1 >> 8, arg2 >> 8, 0, temp_r4);
            }
        }
        var_r6 += 1;
    } while ((u32) var_r6 <= 1U);
}

void sub_8081BBC(HyperEggRobo *boss) {
    u8 temp_r0;
    u8 var_r1;

    temp_r0 = boss->lives;
    if (temp_r0 != 0) {
        var_r1 = temp_r0 - 1;
    } else {
        var_r1 = 0;
    }
    boss->unk8 = (u16) *(var_r1 + &gUnknown_080D5C48);
    boss->unkC = 0;
    boss->unk1 = 5;
}

void sub_8081BE8(void *arg0, u8 arg1) {
    s16 var_r0;
    u8 temp_r1;

    temp_r1 = arg1;
    switch (temp_r1) {                              /* irregular */
    case 0:
        var_r0 = 0xA;
block_5:
        arg0->unkC = var_r0;
        return;
    case 1:
        var_r0 = 0x64;
        goto block_5;
    }
}

void sub_8081C08(HyperEggRobo *arg0) {
    void *temp_r0;

    arg0->unk14 = 0x3C;
    temp_r0 = arg0 + 0x228;
    temp_r0->unkC = (u16) gUnknown_080D5C38.unk0;
    temp_r0->unk1A = (s8) gUnknown_080D5C38.unk2;
}

void TaskDestructor_ExtraChaosEmeralds(Task *t) {
    u16 temp_r1;
    void *temp_r0;

    temp_r1 = t->data;
    gStageData.unk4 = 5;
    temp_r0 = temp_r1->unk18;
    if (temp_r0 != NULL) {
        VramFree(temp_r0);
        temp_r1->unk18 = NULL;
    }
}

void TaskDestructor_AltarEmeraldPostBossCutscene(Task *t) {
    u16 temp_r1;
    void *temp_r0;
    void *temp_r0_2;
    void *temp_r0_3;

    temp_r1 = t->data;
    temp_r0 = temp_r1->unk8;
    if (temp_r0 != NULL) {
        VramFree(temp_r0);
        temp_r1->unk8 = NULL;
    }
    temp_r0_2 = temp_r1->unkC;
    if (temp_r0_2 != NULL) {
        VramFree(temp_r0_2);
    }
    temp_r0_3 = temp_r1->unk10;
    if (temp_r0_3 != NULL) {
        VramFree(temp_r0_3);
    }
}
#endif
#endif // outer

#include "global.h"
#include "core.h"
#include "trig.h"
#include "lib/m4a/m4a.h"
#include "malloc_vram.h"
#include "multi_sio_stuff.h"
#include "game/shared/stage/player.h"
#include "game/shared/stage/player_callbacks.h"
#include "game/sa3/bosses/eggman_escape.h"
#include "game/shared/stage/music_manager.h"
#include "game/shared/stage/screen_shake.h"
#include "game/stage.h"
#include "constants/animations.h"
#include "constants/songs.h"
#include "constants/move_states.h"

#define CHASER_PLATFORMS_MAX_ACTIVE 4 // total number of visible platforms
#define CHASER_PLATFORMS_COUNT      17 // number of pre-determined platform positions

typedef struct {
    /* 0x000 */ s32 qWorldX;
    /* 0x004 */ s32 qWorldY;
    /* 0x008 */ s16 unk8;
    /* 0x00A */ s16 unkA;
    /* 0x00C */ u8 *bossPhase;
    /* 0x010 */ s16 unk10;
    /* 0x012 */ u8 unk12;
    /* 0x012 */ s8 unk13;
    /* 0x014 */ u16 unk14;
    /* 0x016 */ u16 unk16;
    /* 0x018 */ s16 unk18;
    /* 0x01A */ u8 unk1A;
    /* 0x01B */ u8 unk1B;
    /* 0x01C */ u8 *vram1C;
    /* 0x020 */ u8 *vramPlatformTiles;
    /* 0x024 */ s16 unk24;
    /* 0x026 */ u16 unk26;
    /* 0x028 */ s32 camMaxY;
    /* 0x02C */ u8 unk2C;
    /* 0x02D */ u8 unk2D;
    /* 0x02D */ u8 unk2E;
    /* 0x02D */ u8 unk2F;
    /* 0x030 */ u16 unk30;
    /* 0x032 */ s16 unk32;
    /* 0x034 */ u16 unk34;
    /* 0x036 */ s16 unk36;
    /* 0x038 */ u16 unk38;
    /* 0x03A */ u16 unk3A;
    /* 0x03A */ u16 unk3C;
    /* 0x03A */ u16 unk3E;
    /* 0x040 */ s32 unk40;
    /* 0x044 */ s32 unk44;
    /* 0x048 */ Vec2_32 unk48[8];
    /* 0x088 */ s32 unk88;
    /* 0x08C */ s32 unk8C;
    /* 0x090 */ Sprite sprMace;
    /* 0x0B8 */ Sprite sprMaceNode;
    /* 0x0E0 */ Sprite sprGears[2];
    /* 0x130 */ Player *players[2];
    /* 0x138 */ Task *taskCheese;
    /* 0x13C */ Sprite sprCockpit;
    /* 0x164 */ Sprite sprEggman;
    /* 0x18C */ Sprite sprRail;
    /* 0x1B4 */ Sprite sprRailPiece;
} EggChaserBoss; /* 0x1DC */

typedef struct {
    /* 0x00 */ EggChaserBoss *boss;
    /* 0x04 */ s32 qWorldX;
    /* 0x08 */ s32 qWorldY;
    /* 0x0C */ s16 unkC;
    /* 0x0C */ s16 unkE;
    /* 0x10 */ u8 unk10;
    /* 0x11 */ u8 unk11;
    /* 0x12 */ u8 unk12;
    /* 0x13 */ u8 unk13;
    /* 0x13 */ u8 filler14[4];
    /* 0x18 */ Sprite s;
    /* 0x40 */ Player *players[2];
} EggChaserBossPlatform; /* 0x48 */

void Task_EggChaserBossInit(void);
void Task_Chaser_8071D68(void);
void Task_Chaser_8071DF8(void);
void Task_Chaser_8071E94(void);
void Task_Chaser_80720E4(void);
void Task_Chaser_80724E4(void);
void sub_8072558(EggChaserBoss *boss);
void sub_80725FC(EggChaserBoss *boss);
void sub_80728B4(EggChaserBoss *boss);
void sub_8072B80(EggChaserBoss *boss);
void sub_8072D04(EggChaserBoss *boss);
void sub_8072DA4(EggChaserBoss *boss);
void CreateChaserPlatform(s32 x, s32 y, EggChaserBoss *boss);
void Task_48_8072EF0(void);
void Task_48_8073040(void);
void Task_48_80731DC(void);
void sub_8073258(EggChaserBossPlatform *platform);
void sub_80732CC(u8 *param0, s16 param1);
void Task_EggChaserBossInit(void);
void Task_Chaser_8073380(void);
void Task_Chaser_80733CC(void);
void Task_Chaser_8073420(void);
void sub_8073480(EggChaserBoss *boss, Player *inPlayer);
void TaskDestructor_EggChaserBoss(struct Task *t);
void sub_80734EC(Player *p);
void sub_8073570(EggChaserBoss *boss);
void sub_80735C4(EggChaserBoss *boss);
void sub_8073608(EggChaserBoss *boss);

extern void sub_802B6D0(u16 arg0, u16 arg1);
extern void EnablePlayerMovement(void);
extern void sub_8078E34(s32 *, VoidFn);

// TODO: Make these editable in map editor "BriBaSA"
const s16 sEggChaserBossPlatformPositions[CHASER_PLATFORMS_COUNT][2] = {
    { 1336, -16 }, //
    { 1224, -56 }, //
    { 1296, -48 }, //
    { 1392, -16 }, //
    { 1224, -48 }, //
    { 1320, -48 }, //
    { 1392, -48 }, //
    { 1296, -40 }, //
    { 1224, -56 }, //
    { 1200, -40 }, //
    { 1272, -40 }, //
    { 1360, -16 }, //
    { 1240, -48 }, //
    { 1384, -8 }, //
    { 1240, -64 }, //
    { 1312, -32 }, //
    { 1208, -64 }, //
};
extern const s16 gUnknown_080D58CC[10];

// NOTE: There is also an enemy in the Sonic universe called "Egg Chaser",
//       so we call it EggChaserBoss, to differentiate it.
Task *CreateEggChaserBoss(u8 *bossPhase, s32 worldX, s32 worldY)
{
    Task *t;
    Sprite *s, *sprMace;
    EggChaserBoss *boss;
    u8 *vram;
    u8 i;

    t = TaskCreate(Task_EggChaserBossInit, sizeof(EggChaserBoss), 0x2100U, 0U, TaskDestructor_EggChaserBoss);
    boss = TASK_DATA(t);
    gStageData.taskBoss = t;
    boss->qWorldX = Q((worldX + 4));
    boss->qWorldY = Q(worldY);
    boss->unk10 = 0;
    boss->unk14 = 0;
    boss->unk16 = 0;
    boss->unk18 = 0;

    if (gStageData.difficulty == 0) {
        boss->unk12 = 8;
    } else {
        boss->unk12 = 6;
    }

    boss->bossPhase = bossPhase;
    boss->unk13 = 0;
    boss->unk1A = 4U;
    boss->unk1B = 0;
    boss->unk26 = 0;
    boss->unk24 = 0x49C;
    boss->unk2C = 1;
    boss->players[0] = &gPlayers[PLAYER_1];
    boss->players[1] = &gPlayers[gPlayers[PLAYER_1].charFlags.partnerIndex];

    boss->taskCheese = (Task *)gStageData.taskCheese;

    boss->vramPlatformTiles = VramMalloc(246);
    vram = boss->vramPlatformTiles + 12 * TILE_SIZE_4BPP;

    boss->unk38 = 0x300;
    boss->unk3A = 0x100;

    for (i = 0; i < ARRAY_COUNT(boss->sprGears); i++) {
        s = &boss->sprGears[i];
        s->tiles = vram;
        s->anim = ANIM_BOSS_5_GEAR;
        s->variant = 0;
        s->oamFlags = 0x280;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->prevVariant = 0xFF;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->hitboxes[0].index = -1;
        s->frameFlags = 0;
        s->x = I(boss->qWorldX) - gCamera.x;
        s->y = I(boss->qWorldY) - gCamera.y;
        UpdateSpriteAnimation(s);
        vram += 16 * TILE_SIZE_4BPP;
    }

    s = &boss->sprMace;
    s->tiles = vram;
    s->anim = ANIM_BOSS_5_MACE;
    s->variant = 0;
    s->oamFlags = 0x4C0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant |= ~0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0;
    s->x = I(boss->qWorldX) - gCamera.x;
    s->y = I(boss->qWorldY) - gCamera.y;
    UpdateSpriteAnimation(s);
    vram += 16 * TILE_SIZE_4BPP;

    s = &boss->sprMaceNode;
    s->tiles = vram;
    s->anim = ANIM_BOSS_5_MACE_NODE;
    s->variant = 1;
    s->oamFlags = 0x4C0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant |= ~0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0;
    s->x = I(boss->qWorldX) - gCamera.x;
    s->y = I(boss->qWorldY) - gCamera.y;
    UpdateSpriteAnimation(s);
    vram += 1 * TILE_SIZE_4BPP;

    s = &boss->sprCockpit;
    s->tiles = vram;
    s->anim = ANIM_BOSS_5_COCKPIT;
    s->variant = 0;
    s->oamFlags = 0x440;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant |= ~0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);
    vram += 45 * TILE_SIZE_4BPP;

    s = &boss->sprEggman;
    s->tiles = vram;
    s->anim = ANIM_BOSS_5_EGGMAN;
    s->variant = 0;
    s->oamFlags = 0x400;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant |= ~0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);
    vram += 12 * TILE_SIZE_4BPP;

    s = &boss->sprRail;
    s->tiles = vram;
    s->anim = ANIM_BOSS_5_RAIL;
    s->variant = 0;
    s->oamFlags = 0x480;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant |= ~0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);
    vram += 10 * TILE_SIZE_4BPP;

    s = &boss->sprRailPiece;
    s->tiles = vram;
    s->anim = ANIM_BOSS_5_RAIL;
    s->variant = 1;
    s->oamFlags = 0x480;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);
    vram += 2 * TILE_SIZE_4BPP;

    boss->vram1C = vram;
    boss->unk24 = 0x568;

    for (boss->unk1A = 0; boss->unk1A < CHASER_PLATFORMS_MAX_ACTIVE; boss->unk1A++) {
        CreateChaserPlatform(sEggChaserBossPlatformPositions[boss->unk1A][0], boss->unk24, boss);
        boss->unk24 += sEggChaserBossPlatformPositions[boss->unk1A][1];
    }

    SetFixedRandomIfTimeAttackMode();
    return t;
}

void Task_Chaser_8071D68(void)
{
    EggChaserBoss *boss = TASK_DATA(gCurTask);
    s16 i;

    if (*boss->bossPhase == 3) {
        TaskDestroy(gCurTask);
        return;
    }

    sub_80728B4(boss);

    if (*boss->bossPhase == 2) {
        for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
            Player *p = &gPlayers[i];
            s32 worldX = I(p->qWorldX);
            if (worldX <= 1152 || worldX >= 1448) {
                return;
            }
        }

        sub_80299D4(MUS_VS__BOSS);
        boss->camMaxY = gCamera.maxY;
        gCurTask->main = Task_Chaser_8071DF8;
    }
}

void Task_Chaser_8071DF8(void)
{
    EggChaserBoss *boss = TASK_DATA(gCurTask);
    Sprite *s = &boss->sprEggman;

    boss->unk14 += 1;

    switch (boss->unk14) {
        case 60:
            s->anim = ANIM_BOSS_5_EGGMAN;
            s->variant = 1;
            break;

        case 120:
            s->anim = ANIM_BOSS_5_EGGMAN;
            s->variant = 0;
            break;

        case 180:
            boss->unk14 = 0;
            boss->unk16 = gUnknown_080D58CC[boss->unk12];
            boss->unk30 = 0;
            boss->unk32 = 1;
            boss->unk34 = 0;
            boss->unk36 = 1;
            boss->unk2C = 0;
            sub_807A4A8();
            gCurTask->main = Task_Chaser_8071E94;
            break;
    }

    sub_8073570(boss);
    sub_80728B4(boss);
}

void Task_Chaser_8071E94(void)
{
    Player *temp_r3;
    s32 temp_r1;
    s8 temp_r6;
    u16 temp_r0_2;
    u16 temp_r0_3;
    u32 temp_r2;
    u8 temp_r0;
    u8 temp_r0_4;
    u8 var_r0;
    u8 var_r3;
    void (*temp_r2_2)(Player *);
    void (*var_r0_2)(EggChaserBoss *);
    EggChaserBoss *boss = TASK_DATA(gCurTask);
    Sprite *sprCockpit = &boss->sprCockpit;
    Sprite *sprEggman = &boss->sprEggman;

    boss->unk14 += 1;

    sub_8072B80(boss);
    sub_8073480(boss, boss->players[0]);
    sub_8073480(boss, boss->players[1]);
    if (boss->unk13 != 0) {
        if (--boss->unk13 == 0) {
            sprEggman->variant = 0;
            sprEggman->prevVariant = -1;
        }

        if (boss->unk16 != 0) {
            boss->unk16 -= 1;
        }
    } else {
        if ((boss->unk16 == 0) || (boss->unk16 = boss->unk16 - 1, sub_80725FC(boss), ((u16)boss->unk16 == 0))) {
            switch (sprCockpit->variant) {
                case 0:
                    boss->unk16 = 8;
                    sprCockpit->variant = 1;
                    break;
                case 1:
                    boss->unk16 = 0x104;
                    sprCockpit->variant = 2;
                    boss->unk26 = 0;
                    boss->unk40 = boss->qWorldX + boss->unk10;
                    boss->unk44 = boss->qWorldY - Q(24);

                    for (var_r3 = 0; var_r3 < 8; var_r3++) {
                        temp_r1 = var_r3 * 8;
                        boss->unk48[var_r3].x = boss->unk40;
                        boss->unk48[var_r3].y = boss->unk44;
                    }

                    boss->unk88 = 0;
                    boss->unk8C = 0;
                    boss->unk30 = 0;
                    boss->unk32 = 1;
                    break;
                case 2:
                    boss->unk16 = 8;
                    sprCockpit->variant = 3;
                    break;
                case 3:
                    boss->unk16 = gUnknown_080D58CC[boss->unk12];
                    sprCockpit->variant = 0;
                    break;
            }
            sprCockpit->prevVariant = 0xFF;
        }
        sub_80735C4(boss);
    }
    if (boss->unk12 == 0) {
        if (gStageData.gameMode == 5) {
            if (gStageData.playerIndex != 0) {
                gCurTask->main = Task_Chaser_8073420;
            } else {
                sub_8027674(1U, 0U);
                sub_8072D04(boss);
                gCurTask->main = Task_Chaser_80733CC;
            }
        } else {
            sub_8072D04(boss);
            gCurTask->main = Task_Chaser_80733CC;
        }
        sub_80728B4(boss);
        return;
    }
    temp_r3 = &gPlayers[gStageData.playerIndex];
    if (!(0x01000000 & temp_r3->moveState) && (I(temp_r3->qWorldY) > (s32)gCamera.maxY)) {
        if (!(temp_r3->moveState & 0x100)) {
            SetPlayerCallback(temp_r3, Player_HitWithoutRingsUpdate);
        } else {
            temp_r2_2 = temp_r3->callback;
            if ((temp_r2_2 != Player_HitWithoutRingsUpdate) && (temp_r2_2 != sub_800913C) && (temp_r2_2 != sub_800DF9C)) {
                temp_r3->qWorldY = Q(gCamera.maxY - 8);
                SetPlayerCallback(temp_r3, Player_HitWithoutRingsUpdate);
            }
        }
    }
    sub_8072558(boss);
    sub_8073608(boss);
    sub_8073570(boss);
    sub_80728B4(boss);
}

// (97.89%) https://decomp.me/scratch/7A07F
NONMATCH("asm/non_matching/game/bosses/boss_5__Task_Chaser_80720E4.inc", void Task_Chaser_80720E4(void))
{
    EggChaserBoss *boss = TASK_DATA(gCurTask);
    Sprite *sprCockpit = &boss->sprCockpit;
    Sprite *sprEggman = &boss->sprEggman;
    s32 temp_r0;
    u16 temp_r7;
    s32 cosVal, sinVal;

    boss->unk14 += 1;

    switch (boss->unk30) {
        case 0x0: {
            boss->qWorldX += boss->unk10;

            if (I(boss->qWorldX) > 0x514) {
                boss->unk8 = -0x100;
            } else {
                boss->unk8 = +0x100;
            }

            boss->unkA = Q(0xFC);
            gCamera.maxY = boss->camMaxY;
            boss->unk30 = 0xA;
        } break;

        case 10:
            boss->unkA += 0x40;
            if (boss->unkA > 0x400) {
                boss->unkA = 0x400U;
            }
            boss->qWorldX += boss->unk8;
            boss->qWorldY += boss->unkA;

            if (boss->unk8 != 0) {
                if (boss->unk8 < 0) {
                    if (I(boss->qWorldX) <= 0x514) {
                        boss->unk8 = 0;
                    }
                } else {
                    if (I(boss->qWorldX) >= 0x514) {
                        boss->unk8 = 0;
                    }
                }
            }
            if (I(boss->qWorldY) > 0x596) {
                boss->unkA = Q(0xFA);
                boss->unk30 = 0x14;
                CreateScreenShake(0x800U, 4U, 0U, -1U, 0x91U);
            }
            if (1 & boss->unk14) {
                temp_r7 = PseudoRandom32() % SIN_PERIOD;
                temp_r0 = PseudoRandom32() % 48U;
                cosVal = (((u32)(COS(temp_r7) * temp_r0) >> 6));
                sinVal = (((u32)(SIN(temp_r7) * temp_r0) >> 6));

                sub_8079758(7U, I(boss->qWorldX + (cosVal)), I(boss->qWorldY + (sinVal)), 0x400, temp_r7, 0x14U, 0x80, boss->vram1C);
            }
            if (!(0x3F & boss->unk14)) {
                m4aSongNumStart(0x221U);
            }
            break;
        case 20:
            boss->unkA = (u16)(boss->unkA + 0x20);
            boss->qWorldX += boss->unk8;
            boss->qWorldY += boss->unkA;
            if (boss->qWorldY > 0x640) {
                boss->unk32 = 0x3C;
                boss->unk30 = 0x32;
            }
            if (1 & boss->unk14) {
                s16 ddx, ddy;
                temp_r7 = 0x3FF & PseudoRandom32();
                temp_r0 = 0x1F & PseudoRandom32();
                cosVal = (((u32)(COS(temp_r7) * temp_r0) >> 6));
                sinVal = (((u32)(SIN(temp_r7) * temp_r0) >> 6));

                sub_8079758(7U, I(boss->qWorldX + (cosVal)), I(boss->qWorldY + (sinVal)), 0x400, temp_r7, 0x14U, 0x20, boss->vram1C);
            }
            if (!(0x3F & boss->unk14)) {
                m4aSongNumStart(0x221U);
            }
            break;
        case 50:
            boss->unk32 -= 1;
            if (boss->unk32 == 0) {
                boss->unk32 = 0xB4;
                boss->unk30 = 0x64;
                m4aSongNumStart(0x221U);
            }
            break;
        case 100:
            if (1 & (u16)boss->unk32) {
                s32 r3;
                temp_r7 = (PseudoRandom32() % 256u) + 0x280;
                temp_r0 = PseudoRandom32() % 48U;
                r3 = (temp_r0 % 4u) << 8;
                cosVal = ((u32)(COS(temp_r7) * temp_r0));
                sinVal = ((u32)(SIN(temp_r7) * temp_r0));
                cosVal = ((u32)cosVal >> 14);
                cosVal += 0x514;
                sub_8079758(7, cosVal, (((u32)sinVal >> 14) + 0x604), r3 | 0x400, (u16)temp_r7, 0x14U, 0, boss->vram1C);
            }
            if (!(0x3F & (u16)boss->unk32)) {
                m4aSongNumStart(0x221U);
            }

            if (--boss->unk32 == 0) {
                boss->unk14 = 0;
                boss->unk30 = 0x3E8;
                gCurTask->main = Task_Chaser_80724E4;
            }
            break;
    }
    sprCockpit->x = I(boss->qWorldX) - gCamera.x;
    sprCockpit->y = I(boss->qWorldY) - gCamera.y;

    sprCockpit->frameFlags |= 0x400;
    DisplaySprite(sprCockpit);
    sprCockpit->frameFlags &= ~0x400;
    DisplaySprite(sprCockpit);

    if (sprCockpit->variant == 0) {
        sprEggman->x = I(boss->qWorldX) - gCamera.x;
        sprEggman->y = I(boss->qWorldY) - gCamera.y;
        UpdateSpriteAnimation(sprEggman);
        DisplaySprite(sprEggman);
    }
    boss->players[0]->moveState |= MOVESTATE_IGNORE_INPUT;
    boss->players[1]->moveState |= MOVESTATE_IGNORE_INPUT;
}
END_NONMATCH

#if 0
#endif
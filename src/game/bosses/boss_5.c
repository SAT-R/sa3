#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "game/shared/stage/player.h"
#include "game/sa3/bosses/eggman_escape.h"
#include "game/stage.h"
#include "constants/animations.h"
#include "constants/songs.h"
#include "constants/move_states.h"

#define CHASER_PLATFORMS_MAX_ACTIVE 4 // total number of visible platforms
#define CHASER_PLATFORMS_COUNT      17 // number of pre-determined platform positions

typedef struct {
    /* 0x000 */ s32 qWorldX;
    /* 0x004 */ s32 qWorldY;
    /* 0x008 */ u8 filler8[4];
    /* 0x00C */ u8 *bossPhase;
    /* 0x010 */ s16 unk10;
    /* 0x012 */ u8 unk12;
    /* 0x012 */ u8 unk13;
    /* 0x014 */ s16 unk14;
    /* 0x016 */ s16 unk16;
    /* 0x018 */ s16 unk18;
    /* 0x01A */ u8 unk1A;
    /* 0x01B */ u8 unk1B;
    /* 0x01C */ u8 *vram1C;
    /* 0x020 */ u8 *vramPlatformTiles;
    /* 0x024 */ s16 unk24;
    /* 0x026 */ s16 unk26;
    /* 0x028 */ s16 camMaxY;
    /* 0x02A */ u8 unk2A;
    /* 0x02B */ u8 unk2B;
    /* 0x02C */ u8 unk2C;
    /* 0x02D */ u8 unk2D;
    /* 0x02D */ u8 unk2E;
    /* 0x02D */ u8 unk2F;
    /* 0x038 */ s16 unk30;
    /* 0x038 */ s16 unk32;
    /* 0x038 */ s16 unk34;
    /* 0x038 */ s16 unk36;
    /* 0x038 */ s16 unk38;
    /* 0x038 */ s16 unk3A;
    /* 0x03C */ u8 filler3C[0x54];
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
void TaskDestructor_EggChaserBoss(struct Task *t);
void sub_8072DA4(EggChaserBoss *boss, Player *inPlayer);
void sub_80734EC(EggChaserBoss *boss);
void sub_8073570(EggChaserBoss *boss);
void sub_80735C4(EggChaserBoss *boss);
void sub_8073608(EggChaserBoss *boss);

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
#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "game/shared/stage/player.h"
#include "game/sa3/bosses/eggman_escape.h"
#include "game/stage.h"
#include "constants/animations.h"
#include "constants/songs.h"
#include "constants/move_states.h"

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
    /* 0x000 */ u8 unk1A;
    /* 0x000 */ u8 unk1B;
    /* 0x000 */ u8 *vram1C;
    /* 0x000 */ u8 *vramPlatformTiles;
    /* 0x000 */ s16 unk24;
    /* 0x000 */ s16 unk26;
    /* 0x02A */ u8 unk2A;
    /* 0x02B */ u8 unk2B;
    /* 0x02C */ u8 unk2C;
    /* 0x02D */ u8 unk2D;
    /* 0x008 */ u8 filler2E[2 + 8];
    /* 0x038 */ s16 unk38;
    /* 0x038 */ s16 unk3A;
    /* 0x03C */ u8 filler3C[0x54];
    /* 0x090 */ Sprite spr90;
    /* 0x0B8 */ Sprite sprB8;
    /* 0x0E0 */ Sprite sprE0[2];
    /* 0x130 */ Player *players[2];
    /* 0x138 */ Task *taskCheese;
    /* 0x13C */ Sprite spr13C;
    /* 0x164 */ Sprite spr164;
    /* 0x18C */ Sprite spr18C;
    /* 0x1B4 */ Sprite spr1B4;
} EggChaserBoss; /* 0x1DC */

void Task_EggChaserBossInit(void);
void CreateChaserPlatform(s32 x, s32 y, EggChaserBoss *boss);
void TaskDestructor_EggChaserBoss(struct Task *t);

extern const s16 gUnknown_080D5888[0x11][2];

#if 0
// NOTE: There is also an enemy in the Sonic universe called "Egg Chaser",
//       so we call it EggChaserBoss, to differentiate it.
Task *CreateEggChaserBoss(u8 *bossPhase, s32 worldX, s32 worldY)
{
    Task *t;
    Sprite *s;
    s8 var_r0;
    EggChaserBoss *boss;
    u8 *vram;
    u8 temp_r0_3;
    u8 var_r4;

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

    vram = VramMalloc(246);
    boss->vramPlatformTiles = vram;
    vram += 12 * TILE_SIZE_4BPP;

    boss->unk38 = 0x300;
    boss->unk3A = 0x100;

    for(var_r4 = 0; var_r4 < 2; var_r4++)
	{
        s = &boss->sprE0[var_r4];
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
        vram += 0x200;
    }

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
    vram += 0x200;

    s = &boss->sprB8;
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
    vram += 0x20;

    s = &boss->spr13C;
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

    s = &boss->spr164;
    s->tiles = vram;
    s->anim = 0x4DC;
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

    vram = vram + 0x180;
    s = &boss->spr18C;
    s->tiles = vram;
    s->anim = ANIM_BOSS_5_LEG;
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

    vram = vram + 0x140;
    s = &boss->spr1B4;
    s->tiles = vram;
    s->anim = ANIM_BOSS_5_LEG;
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
    boss->vram1C = (void *)(vram + 0x40);
    boss->unk24 = 0x568;

    for(boss->unk1A = 0; boss->unk1A < 4; boss->unk1A++)
	{
        CreateChaserPlatform(gUnknown_080D5888[boss->unk1A][0], boss->unk24, boss);
        boss->unk24 += gUnknown_080D5888[boss->unk1A][1];
    }

    SetFixedRandomIfTimeAttackMode();
    return t;
}
#endif

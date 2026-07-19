#include "global.h"
#include "core.h"
#include "trig.h"
#include "malloc_vram.h"
#include "game/bosses.h"
#include "game/stage.h"
#include "game/sa3/bosses/more_gemerl.h"
#include "game/shared/stage/player.h"
#include "constants/animations.h"
#include "constants/move_states.h"
#include "constants/songs.h"

typedef struct {
    /* 0x000 */ s32 qWorldX;
    /* 0x004 */ s32 qWorldY;
    /* 0x028 */ u8 filler8[0x8 + 2];
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
    /* 0x02C */ s16 unk2C;
    /* 0x02E */ s16 unk2E;
    /* 0x030 */ s16 unk30;
    /* 0x032 */ u8 unk32;
    /* 0x033 */ u8 unk33;
    /* 0x033 */ u8 *unk34;
    /* 0x038 */ u8 *vram38;
    /* 0x03C */ u8 *vram3C;
    /* 0x040 */ Player *player;
    /* 0x044 */ Player *partner;
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
    /* 0x0C0 */ u8 fillerC0[0x10];
    /* 0x0D0 */ Sprite sprD0;
    /* 0x0F8 */ SpriteTransform tf0F8;
    /* 0x104 */ Sprite spr104;
    /* 0x0F8 */ SpriteTransform tf12C;
    /* 0x138 */ Sprite spr138;
    /* 0x138 */ Sprite spr160;
} EggCube; /* 0x188 */

void Task_EggCubeInit(void);
void sub_806ED00(void);
void sub_806F5F0(Player *p);
void sub_806FA0C(EggCube *boss);
void sub_8070138(EggCube *boss);
void sub_8070208(EggCube *boss);
void sub_8071904(EggCube *boss, u16 param1);
void sub_80719B4(EggCube *boss);
void TaskDestructor_EggCube(struct Task *t);

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
    boss->player = &gPlayers[PLAYER_1];
    boss->partner = &gPlayers[gPlayers->charFlags.partnerIndex];
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
    boss->unk34 = 0;

    SetFixedRandomIfTimeAttackMode();

    return t;
}

void sub_806EC50(void)
{
    EggCube *boss = TASK_DATA(gCurTask);
    Player *p, *partner;

    if (*boss->bossPhase == 3) {
        TaskDestroy(gCurTask);
        return;
    }

    sub_806F5F0(boss->player);
    sub_806F5F0(boss->partner);
    sub_8070208(boss);
    sub_806FA0C(boss);

    p = GET_SP_PLAYER_V0(PLAYER_1);
    partner = GET_SP_PLAYER_V0(PLAYER_2);

    if ((I(p->qWorldX) < 1342) && (partner->qWorldX > p->qWorldX)) {
        p->qWorldX = Q(1342);
    }

    if ((*boss->bossPhase == 2) && (sub_807A074() != 0)) {
        gCurTask->main = sub_806ED00;
    }
}

#include "global.h"
#include "core.h"
#include "trig.h"
#include "multi_sio_stuff.h"
#include "lib/m4a/m4a.h"
#include "malloc_vram.h"
#include "game/math.h"
#include "game/sa3/bosses/eggman_escape.h"
#include "game/shared/stage/music_manager.h"
#include "game/shared/stage/player.h"
#include "game/shared/stage/player_callbacks.h"
#include "game/shared/stage/screen_shake.h"
#include "game/stage.h"
#include "game/bosses.h"
#include "constants/animations.h"
#include "constants/move_states.h"
#include "constants/songs.h"

typedef struct {
    /* 0x000 */ s32 qWorldX;
    /* 0x004 */ s32 qWorldY;
    /* 0x004 */ s16 unk8;
    /* 0x004 */ s16 unkA;
    /* 0x00C */ Vec2_16 unkC;
    /* 0x010 */ Vec2_16 unk10[8]; // same type as unkC!
    /* 0x030 */ u8 *bossPhase;
    /* 0x034 */ s16 *unk34[2];
    /* 0x058 */ u8 unk3C;
    /* 0x058 */ u8 unk3D;
    /* 0x058 */ s16 unk3E;
    /* 0x058 */ u8 unk40;
    /* 0x030 */ u8 filler41[0x3];
    /* 0x058 */ u16 unk44;
    /* 0x058 */ u16 unk46;
    /* 0x058 */ u16 unk48;
    /* 0x058 */ u16 unk4A;
    /* 0x04C */ u8 *vram4C;
    /* 0x050 */ u8 *vram50;
    /* 0x054 */ u8 *vram54;
    /* 0x058 */ s16 unk58;
    /* 0x05A */ u16 unk5A;
    /* 0x05C */ s16 unk5C[4];
    /* 0x064 */ s32 unk64;
    /* 0x068 */ Player *players[2];
    /* 0x070 */ Sprite spr70;
    /* 0x098 */ Sprite spr98;
    /* 0x0C0 */ Sprite sprC0;
    /* 0x0E8 */ Sprite sprE8;
    /* 0x0E8 */ Sprite spr110;
    /* 0x0E8 */ Sprite spr138;
    /* 0x160 */ SpriteTransform tf160;
} EggPinball; /* 0x16C */

typedef struct {
    /* 0x00 */ EggPinball *boss;
    /* 0x04 */ s32 unk4;
    /* 0x08 */ s32 unk8;
    /* 0x0C */ s16 unkC;
    /* 0x0C */ s16 unkE;
    /* 0x10 */ s32 unk10;
    /* 0x14 */ u16 unk14;
    /* 0x16 */ s16 unk16;
    /* 0x18 */ u8 unk18;
    /* 0x19 */ u8 unk19;
    /* 0x1A */ u8 unk1A;
    /* 0x1B */ u8 unk1B;
    /* 0x1C */ Sprite s;
    /* 0x44 */ Player *players[2];
} EggPinballBall; /* 0x4C */

typedef struct {
    /* 0x00 */ EggPinball *boss;
    /* 0x04 */ s32 unk4;
    /* 0x08 */ s32 unk8;
    /* 0x0C */ s32 unkC;
    /* 0x10 */ s32 unk10;
    /* 0x14 */ s16 unk14;
    /* 0x16 */ s16 unk16;
    /* 0x18 */ Player *players[NUM_SINGLE_PLAYER_CHARS];
    /* 0x1C */ u8 unk20;
    /* 0x1C */ u8 unk21;
    /* 0x1C */ u8 filler22[2];
    /* 0x1C */ u16 unk24;
    /* 0x1C */ u16 unk26;
    /* 0x28 */ Sprite s;
} EggPinballPlatform; /* 0x50 */

Task *CreateEggPinball(u8 *bossPhase, s32 worldX, s32 worldY);
void Task_Boss_807391C(void);
void Task_Boss_80739AC(void);
void Task_Boss_8073A40(void);
void Task_Boss_8073ACC(void);
void Task_Boss_8073B5C(void);
void Task_Boss_8073BE0(void);
void Task_Boss_8073CE4(void);
void Task_Boss_8073D98(void);
void Task_Boss_8073F4C(void);
void Task_Boss_8074050(void);
void Task_Ball_807442C(void);
void Task_Platform_OuterPlat(void);
void Task_EggPinballInit(void);
void Task_Boss_8074C94(void);
void Task_Ball_8074DC4(void);
void sub_80740CC(EggPinball *boss);
void sub_8074148(EggPinball *boss);
void sub_807467C(EggPinballBall *ball, Player *inPlayer);
void CreateEggPinballBall(EggPinball *boss);
void sub_Boss_8074AF0(EggPinball *boss);
void CreateEggPinballOuterPlatform(s32 param0, s32 param1, EggPinball *boss, bool8 param3);
void sub_8074BA0(u8 *data);
void sub_8074CF0(EggPinball *boss);
void sub_8074D1C(EggPinball *boss);
void sub_8074D44(EggPinball *boss, Player *inPlayer);
void TaskDestructor_EggPinball(struct Task *t);
void TaskDestructor_EggPinballOuterPlatform(struct Task *t);
static void PlatformRender(EggPinballPlatform *platform);
void sub_8074E18(EggPinballBall *ball);
void sub_8074E4C(EggPinball *boss);

extern void sub_8078E34(s32 *, VoidFn);
extern void EnablePlayerMovement(void);

extern s16 gUnknown_080D58E0[10];

static inline void sub_8074E4C_inline(EggPinball *boss)
{
    boss->unk44 = 0x12C;
    boss->unk5C[0] = 0;
    boss->unk5C[1] = 0;
    boss->unk5C[2] = 0x200;
    boss->unk5C[3] = 0x200;
    boss->players[0]->moveState |= MOVESTATE_IGNORE_INPUT;
    boss->players[1]->moveState |= MOVESTATE_IGNORE_INPUT;
}

Task *CreateEggPinball(u8 *bossPhase, s32 worldX, s32 worldY)
{
    s16 *temp_r0;
    s8 *var_r1;
    s8 var_r0;
    u8 *vram;
    u8 var_r2;
    Task *t = TaskCreate((void (*)())Task_EggPinballInit, sizeof(EggPinball), 0x2100U, 0U, TaskDestructor_EggPinball);
    EggPinball *boss = TASK_DATA(t);
    Sprite *spr70;
    Sprite *spr98;
    Sprite *sprC0;
    Sprite *sprE8;
    Sprite *spr110;
    Sprite *spr138;
    SpriteTransform *tf;
    gStageData.taskBoss = t;
    boss->qWorldX = Q(worldX + 4);
    boss->qWorldY = Q(worldY) + Q(0xB6);
    boss->unkC.x = 0;
    boss->unkC.y = 0;
    boss->unk44 = 0;
    boss->unk4A = 0;
    if (gStageData.difficulty == 0) {
        boss->unk3D = 8;
    } else {
        boss->unk3D = 6;
    }
    boss->bossPhase = bossPhase;
    boss->unk3E = 0;
    boss->unk58 = 0;
    boss->unk5A = 0;
    boss->unk48 = 0;
    boss->unk46 = 0;
    boss->players[0] = gPlayers;
    boss->players[1] = &gPlayers[gPlayers->charFlags.partnerIndex];
    boss->unk3C = 0;
    boss->unk40 = 0;

    for (var_r2 = 0; var_r2 < ARRAY_COUNT(boss->unk10); var_r2++) {
        boss->unk10[var_r2] = boss->unkC;
    }

    boss->vram4C = VramMalloc(0x74U);
    boss->vram50 = VramMalloc(0x14U);
    boss->vram54 = VramMalloc(4U);
    vram = VramMalloc(0x6CU);
    sprE8 = &boss->spr70;
    sprE8->tiles = vram;
    sprE8->anim = ANIM_BOSS_6_COCKPIT;
    sprE8->variant = 0;
    sprE8->oamFlags = 0x440;
    sprE8->animCursor = 0;
    sprE8->qAnimDelay = 0;
    sprE8->prevVariant = 0xFF;
    sprE8->animSpeed = 0x10;
    sprE8->palId = 0;
    sprE8->hitboxes[0].index = -1;
    sprE8->frameFlags = 0;
    UpdateSpriteAnimation(sprE8);
    vram += 0x800;
    sprE8 = &boss->spr98;
    sprE8->tiles = vram;
    sprE8->anim = ANIM_BOSS_6_HOSE;
    sprE8->variant = 0;
    sprE8->oamFlags = 0x480;
    sprE8->animCursor = 0;
    sprE8->qAnimDelay = 0;
    sprE8->prevVariant = -1;
    sprE8->animSpeed = 0x10;
    sprE8->palId = 0;
    sprE8->hitboxes[0].index = -1;
    sprE8->frameFlags = 0x20;
    UpdateSpriteAnimation(sprE8);
    vram += 0x200;
    sprE8 = &boss->sprC0;
    sprE8->tiles = vram;
    sprE8->anim = ANIM_BOSS_6_GEMERL;
    sprE8->variant = 0;
    sprE8->oamFlags = 0x3C0;
    sprE8->animCursor = 0;
    sprE8->qAnimDelay = 0;
    sprE8->prevVariant = -1;
    sprE8->animSpeed = 0x10;
    sprE8->palId = 0;
    sprE8->hitboxes[0].index = -1;
    sprE8->frameFlags = 0;
    UpdateSpriteAnimation(sprE8);
    sprE8 = &boss->sprE8;
    vram += 0x200;
    sprE8->tiles = vram;
    sprE8->anim = ANIM_BOSS_6_SHIELDING;
    sprE8->variant = 0;
    sprE8->oamFlags = 0x380;
    sprE8->animCursor = 0;
    sprE8->qAnimDelay = 0;
    sprE8->prevVariant = -1;
    sprE8->animSpeed = 0x10;
    sprE8->palId = 0;
    sprE8->hitboxes[0].index = -1;
    sprE8->frameFlags = 0;
    UpdateSpriteAnimation(sprE8);
    vram += 0x80;
    sprE8 = &boss->spr110;
    sprE8->tiles = vram;
    sprE8->anim = ANIM_BOSS_6_EGGMAN;
    sprE8->variant = 0;
    sprE8->oamFlags = 0x340;
    sprE8->animCursor = 0;
    sprE8->qAnimDelay = 0;
    sprE8->prevVariant = -1;
    sprE8->animSpeed = 0x10;
    sprE8->palId = 0;
    sprE8->hitboxes[0].index = -1;
    sprE8->frameFlags = 0;
    UpdateSpriteAnimation(sprE8);
    vram += 0x100;
    sprE8 = &boss->spr138;
    sprE8->tiles = vram;
    sprE8->anim = ANIM_BOSS_6_EGGMAN;
    sprE8->variant = 0;
    sprE8->oamFlags = 0x340;
    sprE8->animCursor = 0;
    sprE8->qAnimDelay = 0;
    sprE8->prevVariant = -1;
    sprE8->animSpeed = 0x10;
    sprE8->palId = 0;
    sprE8->hitboxes[0].index = -1;
    sprE8->frameFlags = 0;
    UpdateSpriteAnimation(sprE8);
    tf = &boss->tf160;
    tf->qScaleX = 0x100;
    tf->qScaleY = 0x100;
    tf->x = 0;
    tf->y = 0;
    tf->rotation = 0;
    CreateEggPinballOuterPlatform(0x558, 0x125, boss, 0U);
    CreateEggPinballOuterPlatform(0x648, 0x125, boss, 1U);
    SetFixedRandomIfTimeAttackMode();
    return t;
}

// TODO: Fake-match!
void Task_Boss_807391C(void)
{
    EggPinball *boss = TASK_DATA(gCurTask);
    s32 var_r0;
    Player *p = &gPlayers[gStageData.playerIndex];
    s32 temp_r3 = I(p->qWorldX);
#ifndef NON_MATCHING
    register struct Camera *cam asm("r4") = &gCamera;
#else
    struct Camera *cam = &gCamera;
#endif
    var_r0 = cam->minX + 0x30;
    if ((temp_r3 <= var_r0) || (var_r0 = cam->maxX - 0x30, (temp_r3 >= var_r0))) {
        p->qWorldX = var_r0 << 8;
        p->qSpeedAirX = 0;
    }
    if (*boss->bossPhase == 3) {
        TaskDestroy(gCurTask);
        return;
    }
    sub_8074148(boss);
    if ((*boss->bossPhase == 2) && sub_807A074()) {
        gCurTask->main = Task_Boss_80739AC;
    }
}

void Task_Boss_80739AC(void)
{
    EggPinball *boss = TASK_DATA(gCurTask);
    Player *p;
    s32 temp_r1;
    s32 var_r0;

    p = &gPlayers[gStageData.playerIndex];
    temp_r1 = I(p->qWorldX);
    var_r0 = gCamera.minX + 0x30;
    if ((temp_r1 <= var_r0) || (var_r0 = gCamera.maxX - 0x30, (temp_r1 >= var_r0))) {
        p->qWorldX = var_r0 << 8;
        p->qSpeedAirX = 0;
    }
    if (*boss->bossPhase == 3) {
        TaskDestroy(gCurTask);
        return;
    }
    sub_8074148(boss);
    if ((*boss->bossPhase == 2) && ((s32)p->qWorldY > 0xF000)) {
        sub_8079FFC();
        gCurTask->main = Task_Boss_8073A40;
    }
}

void Task_Boss_8073A40(void)
{
    EggPinball *boss = TASK_DATA(gCurTask);
    Player *p;
    Player *temp_r5;
    s32 temp_r1;
    s32 var_r0;

    p = GET_SP_PLAYER_V1(PLAYER_1);
    temp_r5 = GET_SP_PLAYER_V1(PLAYER_2);
    temp_r1 = (s32)p->qWorldX >> 8;
    var_r0 = gCamera.minX + 0x30;
    if ((temp_r1 <= var_r0) || (var_r0 = gCamera.maxX - 0x30, (temp_r1 >= var_r0))) {
        p->qWorldX = var_r0 << 8;
        p->qSpeedAirX = 0;
    }
    sub_8074148(boss);
    if (((s32)p->qWorldY > Q(240)) && ((s32)temp_r5->qWorldY > Q(240))) {
        gCurTask->main = (void (*)())Task_Boss_8073ACC;
    }
}

void Task_Boss_8073ACC(void)
{
    EggPinball *boss = TASK_DATA(gCurTask);
    Player *temp_r4;
    s32 temp_r1;
    s32 var_r0;

    temp_r4 = &gPlayers[gStageData.playerIndex];
    temp_r1 = (s32)temp_r4->qWorldX >> 8;
    var_r0 = gCamera.minX + 0x30;
    if ((temp_r1 <= var_r0) || (var_r0 = gCamera.maxX - 0x30, (temp_r1 >= var_r0))) {
        temp_r4->qWorldX = var_r0 << 8;
        temp_r4->qSpeedAirX = 0;
    }
    sub_8074148(boss);
    if (temp_r4->qWorldY > 0xF000) {
        gCamera.minY = 0xB8;
        gCamera.maxY = gCamera.minY + DISPLAY_HEIGHT;
        gCamera.minX -= 0x10;
        gCamera.maxX += 0x10;
        boss->unk64 = 0x158;
        sub_80299D4(MUS_VS__BOSS);
        gCurTask->main = (void (*)())Task_Boss_8073B5C;
    }
}

void Task_Boss_8073B5C(void)
{
    EggPinball *boss = TASK_DATA(gCurTask);
    Sprite *s = &boss->spr110;

    boss->unk44 += 1;

    switch (boss->unk44) { /* irregular */
        case 60:
            s->anim = ANIM_BOSS_6_EGGMAN;
            s->variant = 1;
            break;
        case 120:
            s->anim = ANIM_BOSS_6_EGGMAN;
            s->variant = 0;
            break;
        case 180:
            boss->unk44 = 0U;
            boss->unk40 = 1;
            sub_807A4A8();
            gCurTask->main = Task_Boss_8073BE0;
            break;
    }
    sub_8074148(boss);
}

// (85.35%) https://decomp.me/scratch/K1gBj
NONMATCH("asm/non_matching/game/bosses/boss_6__Task_Boss_8073BE0.inc", void Task_Boss_8073BE0(void))
{
    EggPinball *boss = TASK_DATA(gCurTask);
    Sprite *s = &boss->spr110;
    s16 *var_r6;
    u16 temp_r0;
    u16 var_r1;
    u8 *var_r4;

    boss->unk44 += 1;

    if (boss->unk3E != 0) {
        if (--boss->unk3E == 0) {
            s->variant = 0;
            s->prevVariant = 0xFF;
        }
    }

    if (boss->unk46 != 0) {
        boss->unk46 -= 1;
    }

    if (--boss->unk48 == 0) {
        CreateEggPinballBall(boss);
        boss->unk46 = 0x14U;
        boss->unk48 = gUnknown_080D58E0[boss->unk3D];
        m4aSongNumStart(SE_561);
    }

    if (boss->unk3E < 0x96) {
        sub_80740CC(boss);
    }

    if (boss->unk3D == 0) {
        if (CURRENT_GAME_MODE == 5) {
            if (gStageData.playerIndex != 0) {
                gCurTask->main = Task_Boss_8074C94;
            } else {
                sub_8027674(1U, 0U);
                sub_8074E4C(boss);
                gCurTask->main = Task_Boss_8073CE4;
            }
        } else {
            sub_8074E4C(boss);
            gCurTask->main = Task_Boss_8073CE4;
        }
    }
    sub_8074CF0(boss);
    sub_8074148(boss);
}
END_NONMATCH

void Task_Boss_8073CE4(void)
{
    EggPinball *boss = TASK_DATA(gCurTask);
    Player *temp_r1_2;
    Player *temp_r1_3;
    s32 val;

    boss->qWorldX += boss->unkC.x;
    boss->qWorldY += boss->unkC.y;
    boss->unkC.x = 0;
    boss->unkC.y = 0;
    boss->unk8 = (s16)(-((boss->unk10[boss->unk3C].x - boss->unk10[(boss->unk3C - 1) & 7].x) >> 2));
    boss->unkA = 0xF800;
    boss->unk44 = 0xB4;
    gCamera.maxY = boss->unk64;
    *boss->unk34[0] = 1000;
    *boss->unk34[1] = 1000;
    m4aSongNumStart(SE_545);
    gCurTask->main = Task_Boss_8073D98;
    boss->players[0]->moveState |= 0x08000000;
    boss->players[1]->moveState |= 0x08000000;
    sub_8074148(boss);
}

// (76.00%) https://decomp.me/scratch/ylfFk
NONMATCH("asm/non_matching/game/bosses/boss_6__Task_Boss_8073D98.inc", void Task_Boss_8073D98(void))
{
    EggPinball *boss = TASK_DATA(gCurTask);
    u16 *sp10;
    Player *temp_r1_2;
    Player *temp_r1_3;
    s16 *temp_r3;
    s16 *temp_r7;
    s32 temp_r1;
    s32 var_r1;
    u16 temp_r0;
    u16 temp_r2;
    u16 temp_r4;
    s16 temp_sl;
    s16 temp_r8;
    u8 var_r6;

    boss->unkA += 0x20;
    boss->qWorldX += boss->unk8;
    boss->qWorldY += boss->unkA;
    if ((boss->qWorldX <= Q(0x578)) && (boss->unk8 < 0)) {
        boss->qWorldX = Q(0x578);
        boss->unk8 *= -1;
    } else if ((boss->qWorldX >= Q(0x622)) && (boss->unk8 > 0)) {
        boss->qWorldX = Q(0x622);
        boss->unk8 *= -1;
    }
    temp_sl = I(boss->qWorldX);
    temp_r8 = I(boss->qWorldY);
    var_r6 = 1;

    if (1 & boss->unk44) {
        var_r6 = 0;
    }
    if (var_r6 < 4) {
        for (; var_r6 < 4; var_r6 += 2) {
            if (1 & var_r6) {
                boss->unk5C[var_r6] = (boss->unk5C[var_r6] - 0x3E) & 0x3FF;
            } else {
                boss->unk5C[var_r6] = (boss->unk5C[var_r6] + 0x3E) & 0x3FF;
            }
            temp_r4 = boss->unk5C[var_r6];
            sub_8079758(7U, (s16)((s16)temp_sl + ((s32)(COS(temp_r4) * 5) >> 0xC)), (s16)((s16)temp_r8 + ((s32)(SIN(temp_r4) * 5) >> 0xC)),
                        0x200, (u16)(s32)temp_r4, 0x14U, 0, boss->vram4C);
        }
    }
    if (!(0x3F & boss->unk44)) {
        m4aSongNumStart(SE_545);
    }

    if ((--boss->unk44 == 0) || (temp_r8 > 0x01CC)) {
        VramFree(boss->spr70.tiles);
        boss->spr70.tiles = NULL;
        m4aSongNumStart(SE_545);
        boss->unk44 = 0x12C;
        gCurTask->main = Task_Boss_8073F4C;
        return;
    }

    boss->players[0]->moveState |= MOVESTATE_IGNORE_INPUT;
    boss->players[1]->moveState |= MOVESTATE_IGNORE_INPUT;

    sub_8074CF0(boss);
    sub_8074148(boss);
}
END_NONMATCH

// (83.56%)  https://decomp.me/scratch/6oonJ
NONMATCH("asm/non_matching/game/bosses/boss_6__Task_Boss_8073F4C.inc", void Task_Boss_8073F4C(void))
{
    s32 temp_r0_3;
    s32 temp_r0_4;
    u16 temp_r4;
    u16 temp_r0;
    u16 temp_r0_2;
    u16 temp_r1;
    u32 temp_r0_5;
    EggPinball *boss = TASK_DATA(gCurTask);

    if (boss->unk44 != 0) {
        boss->unk44 -= 1;

        if (boss->unk44 == 240) {
            CreateScreenShake(0x800U, 8U, 0U, -1U, 0x91U);
            m4aSongNumStart(SE_545);
        }
        temp_r1 = boss->unk44;
        if ((u32)temp_r1 <= 0xEFU) {
            if (1 & temp_r1) {
                temp_r4 = PseudoRandom32() % 256u;
                temp_r4 += 0x280;
                temp_r0_5 = (u32)PseudoRandom32() % 48U;
                sub_8079758(7U, (s16)(((u32)(temp_r0_5 * COS(temp_r4)) >> 14) + 0x5D0),
                            (s16)(((u32)(temp_r0_5 * SIN(temp_r4)) >> 14) + 0x170), ((temp_r0_5 & 3) << 8) | 0x400, (u16)temp_r4, 0x14U, 0,
                            boss->vram4C);
            }
            if (!(0x3F & boss->unk44)) {
                m4aSongNumStart(SE_545);
            }
        }
    } else {
        gCurTask->main = Task_Boss_8074050;
    }
}
END_NONMATCH

void Task_Boss_8074050(void)
{
    s32 sp[4];
    u16 var_r0;
    u8 temp_r1;
    EggPinball *boss = TASK_DATA(gCurTask);
    Player *p = boss->players[0];

    switch (boss->unk44) { /* irregular */
        case 0: {
            sp[0] = ((s32)boss->qWorldX >> 8);
            sp[1] = (((s32)boss->qWorldY >> 8) - 0x20);
            sp[2] = ((s32)boss->qWorldX >> 8);
            sp[3] = ((s32)boss->qWorldY >> 8);
            sub_8078E34(sp, EnablePlayerMovement);
            boss->unk44 = 1;
        } break;

        case 1: {
            if (!(p->moveState & 0x08000000)) {
                *boss->bossPhase = 0;
                *boss->unk34[0] = 10;
                *boss->unk34[1] = 10;
                boss->unk44 = 100;
            }
        } break;
    }
}

void sub_80740CC(EggPinball *boss)
{
    s32 temp_r1;

    if (boss->unk46 == 0) {
        sub_8074D1C(boss);
        boss->unk4A += 3;
        boss->unkC.x = ((SIN(boss->unk4A & 0x3FF) * 0x1F) >> 5);
        boss->unkC.y = 0;
        return;
    }

    boss->unkC.y = (gSineTable[(u32)((u16)boss->unk4A << 0x14) >> 0x16] * 5) >> 6;
    boss->unkC.y += SIN(boss->unk46 * 12) >> 0x4;
}

// (74.68%) https://decomp.me/scratch/aYLuZ
NONMATCH("asm/non_matching/game/bosses/boss_6__sub_8074148.inc", void sub_8074148(EggPinball *boss))
{
    s32 sp0[2];
    s16 temp_r2;
    s32 temp_r3;
    u16 temp_r4;
    u8 temp_r0;
    Sprite *temp_r7 = &boss->spr70;
    SpriteTransform *tf = &boss->tf160;
    sp0[0] = (s32)boss->unk3C;
    temp_r7->x = I((boss->qWorldX + boss->unkC.x)) - gCamera.x;
    temp_r7->y = I((boss->qWorldY + boss->unkC.y)) - gCamera.y;
    UpdateSpriteAnimation(temp_r7);
    DisplaySprite(temp_r7);

    temp_r7 = &boss->sprC0;
    temp_r7->x = I((boss->qWorldX + boss->unkC.x)) - gCamera.x;
    temp_r7->y = I((boss->qWorldY + boss->unkC.y)) - gCamera.y;
    UpdateSpriteAnimation(temp_r7);
    DisplaySprite(temp_r7);

    temp_r7 = &boss->spr110;
    temp_r7->x = I((boss->qWorldX + boss->unkC.x)) - gCamera.x;
    temp_r7->y = I((boss->qWorldY + boss->unkC.y)) - gCamera.y;
    UpdateSpriteAnimation(temp_r7);
    DisplaySprite(temp_r7);

    temp_r4 = ((u16)boss->unk5A - Q(1)) & 0x3FF;
    temp_r3 = (s32)(SIN(boss->unk46 * 0x18) << 0x10) >> 0x1B;
    temp_r7 = &boss->spr98;
    temp_r2 = ((s32)(boss->qWorldX + boss->unkC.x) >> 8) - gCamera.x;
    temp_r7->x = temp_r2;
    temp_r7->x = temp_r2 - ((s32)(temp_r3 * COS(temp_r4)) >> 0xE);
    temp_r7->y = ((I(boss->qWorldY + boss->unkC.y)) - gCamera.y) - ((s32)(temp_r3 * SIN(temp_r4)) >> 0xE);
    temp_r7->frameFlags = (gNextFreeAffineIndex++ | 0x20);
    tf->x = temp_r7->x;
    tf->y = temp_r7->y;
    tf->rotation = temp_r4;
    UpdateSpriteAnimation(temp_r7);
    TransformSprite(temp_r7, tf);
    DisplaySprite(temp_r7);

    temp_r7 = &boss->sprE8;
    sp0[1] = sp0[0] * 4;
    temp_r7->x = I(boss->qWorldX + boss->unk10[sp0[0]].x) - gCamera.x;
    temp_r7->y = I(boss->qWorldY + boss->unk10[sp0[0]].y) - gCamera.y;
    UpdateSpriteAnimation(temp_r7);
    temp_r7->frameFlags &= ~0x400;
    DisplaySprite(temp_r7);
    temp_r7->frameFlags |= 0x400;
    DisplaySprite(temp_r7);
}
END_NONMATCH

// (93.65%) https://decomp.me/scratch/4cwBW
NONMATCH("asm/non_matching/game/bosses/boss_6__CreateEggPinballBall.inc", void CreateEggPinballBall(EggPinball *boss))
{
    u16 temp_r4;
    s32 temp_r5;
    s32 temp_r7;
    s32 temp_r5_2;
    EggPinballBall *ball = TASK_DATA(TaskCreate(Task_Ball_807442C, sizeof(EggPinballBall), 0x2000U, 0U, NULL));
    Sprite *s = &ball->s;
    s16 a = (boss->unk5A - Q(1));
    s32 mask = 0x3FF;
    temp_r4 = a & mask;
    temp_r5 = SIN(temp_r4);
    temp_r7 = COS(temp_r4);
    temp_r5_2 = 65 - boss->unk3D;
    ball->boss = boss;
    ball->unk4 = boss->qWorldX + boss->unkC.x + (temp_r7 >> 1);
    ball->unk8 = boss->qWorldY + boss->unkC.y + (temp_r5 >> 1);
    ball->unkC = I(temp_r5_2 * temp_r7);
    ball->unkE = I(temp_r5_2 * temp_r5);
    ball->unk10 = temp_r5_2;
    ball->unk14 = temp_r4;
    ball->unk18 = 0xC;
    ball->unk19 = 0;
    ball->unk1A = 0;
    ball->unk1B = 0;
    ball->players[0] = boss->players[0];
    ball->players[1] = boss->players[1];
    s->tiles = boss->vram50;
    s->anim = 0x4E4;
    s->variant = 0;
    s->oamFlags = 0x400;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = 0xFF;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x1000;
    UpdateSpriteAnimation(s);
}
END_NONMATCH

void Task_Ball_807442C(void)
{
    EggPinball *temp_r6;
    Sprite *sprBall;
    Sprite *temp_r8;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r1_3;
    s32 temp_r2;
    s32 temp_r2_2;
    s32 temp_r3_2;
    s8 temp_r1_4;
    s8 temp_r3;
    s8 temp_r5;
    s8 temp_r5_2;
    s32 var_r3 = 0;
    EggPinballBall *ball = TASK_DATA(gCurTask);

    temp_r6 = ball->boss;
    sprBall = &ball->s;
    temp_r8 = &temp_r6->spr70;
    if ((s8)ball->unk18 != 0) {
        ball->unk18 -= 1;
        ball->unk10 -= 4;
        ball->unkC = (ball->unk10 * COS(ball->unk14)) >> 8;
        ball->unkE = (ball->unk10 * SIN(ball->unk14)) >> 8;
    }

    ball->unk4 += ball->unkC;
    ball->unk8 += ball->unkE;
    if ((ball->unk4 <= Q(0x544)) && (ball->unkC < 0)) {
        ball->unk19 += 1;
        ball->unk4 = Q(0x544);
        ball->unkC *= -1;
        var_r3 = 1;
    } else if ((ball->unk4 >= Q(0x65C)) && (ball->unkC > 0)) {
        ball->unk19 += 1;
        ball->unk4 = Q(0x65C);
        ball->unkC *= -1;
        var_r3 = 1;
    }
    if ((ball->unk8 <= Q(0xB8)) && ((s32)ball->unkE < 0)) {
        if (var_r3 == 0) {
            ball->unk19 += 1;
        }
        ball->unk8 = Q(0xB8);
        ball->unkE *= -1;
        var_r3 = 1;
    }
    if (var_r3 != 0) {
        m4aSongNumStart(0x232U);
    }
    if ((s32)ball->unk8 > 0x15FFF) {
        TaskDestroy(gCurTask);
        return;
    }
    if (((u32)ball->unk19 > 9U) || (temp_r6->unk3D == 0)) {
        ball->unk1B = 0x1E;
        gCurTask->main = Task_Ball_8074DC4;
        Task_Ball_8074DC4();
        return;
    }
    sub_807467C(ball, ball->players[0]);
    sub_807467C(ball, ball->players[1]);
    if ((ball->unk1A != 0) && ((s16)temp_r6->unk3E == 0) && (temp_r6->unk3D != 0)) {
        if (HB_COLLISION(I(ball->unk4), I(ball->unk8), sprBall->hitboxes[0].b, I(temp_r6->qWorldX + temp_r6->unkC.x),
                         I(temp_r6->qWorldY + temp_r6->unkC.y), temp_r8->hitboxes[0].b)) {
            sub_Boss_8074AF0(temp_r6);
            ball->unkE = -0x180;
            if ((s32)ball->unk4 < (s32)(temp_r6->qWorldX + temp_r6->unkC.x)) {
                ball->unkC = -0x180;
            } else {
                ball->unkC = +0x180;
            }
            ball->unk1B = 30;
            gCurTask->main = (void (*)())Task_Ball_8074DC4;
        }
    }
    sub_8074E18(ball);
}

// (92.39%) https://decomp.me/scratch/reR6q
NONMATCH("asm/non_matching/game/bosses/boss_6__sub_807467C.inc", void sub_807467C(EggPinballBall *ball, Player *inPlayer))
{
    Sprite *temp_r7;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r1_3;
    EggPinball *boss;
    s32 var_r0;
    s32 var_r1;
    u16 temp_r1;
    u16 temp_r1_2;
    u16 temp_r5;
    u16 var_r1_2;
    u8 temp_r0;

    boss = ball->boss;
    temp_r7 = &ball->s;
    temp_r0 = ball->unk1B;
    if (temp_r0 != 0) {
        ball->unk1B = temp_r0 - 1;
        return;
    }
    if (sub_802C080(inPlayer) != 0) {
        return;
    }
    if (sub_8020E3C(temp_r7, (s32)ball->unk4 >> 8, (s32)ball->unk8 >> 8, 0, inPlayer) == 0) {
        goto block_22;
    }
    if (inPlayer->moveState & 0x10) {
        goto block_22;
    }
    if (inPlayer->charFlags.anim0 == 0xF7) {
        goto block_22;
    }
    ball->unk1B = 0xA;
    ball->unk1A = 1;
    ball->unk19 += 1;
    temp_r5 = (u16)sa2__sub_8004418((s16)((s32)((inPlayer->qWorldY - ball->unk8) << 8) >> 0x10),
                                    (s16)((s32)((inPlayer->qWorldX - ball->unk4) << 8) >> 0x10));
    if ((sa2__sub_808558C((u16)ball->unk14, temp_r5, 0xAU) << 0x10) < 0) {
        temp_r0_2 = ball->unk14 - temp_r5;
        if (temp_r0_2 >= 0) {
            var_r1 = ball->unk14 - temp_r0_2;
            var_r0 = 0x3FF;
        } else {
            var_r0 = ball->unk14 - ABS(temp_r5 - ball->unk14);
            var_r1 = 0x3FF;
        }
        ball->unk14 = var_r0 & var_r1;
    } else {
        temp_r0_3 = ball->unk14 - temp_r5;
        if (temp_r0_3 >= 0) {
            var_r1_2 = ball->unk14 + temp_r0_3;
        } else {
            var_r1_2 = temp_r5;
        }
        ball->unk14 = var_r1_2 & 0x3FF;
    }
    temp_r1_3 = ball->unk10;
    ball->unkC = (s16)((s32)(0 - (temp_r1_3 * gSineTable[(u16)ball->unk14 + 0x100])) >> 8);
    ball->unkE = (s16)((s32)(0 - (temp_r1_3 * gSineTable[(u16)ball->unk14])) >> 8);
    inPlayer->qSpeedGround = 0 - ((s32)((u16)inPlayer->qSpeedGround << 0x10) >> 0x11);
    inPlayer->qSpeedAirX = 0 - ((s32)((u16)inPlayer->qSpeedAirX << 0x10) >> 0x11);
    inPlayer->qSpeedAirY = 0 - ((s32)((u16)inPlayer->qSpeedAirY << 0x10) >> 0x11);
    temp_r7->tiles = boss->vram54;
    temp_r7->anim = ANIM_BOSS_6_BALL;
    temp_r7->variant = 1;
    temp_r7->prevVariant = 0xFF;

    if (inPlayer->charFlags.anim0 == 0xD4) {
        Player_800DB30(inPlayer);
    }
    m4aSongNumStart(0x233U);
    return;
    {
    block_22:
        sub_8020CE0(temp_r7, (s32)ball->unk4 >> 8, (s32)ball->unk8 >> 8, 0, inPlayer);
    }
}
END_NONMATCH

// (96.04%) https://decomp.me/scratch/L1LLD
NONMATCH("asm/non_matching/game/bosses/boss_6__CreateEggPinballOuterPlatform.inc",
         void CreateEggPinballOuterPlatform(s32 param0, s32 param1, EggPinball *boss, u8 param3))
{
    Task *t = TaskCreate(Task_Platform_OuterPlat, sizeof(EggPinballPlatform), 0x2000U, 0U, TaskDestructor_EggPinballOuterPlatform);
    EggPinballPlatform *platform = TASK_DATA(t);
    Sprite *s = &platform->s;
    s32 x, y;
    platform->boss = boss;
    platform->unkC = Q(param0);
    platform->unk10 = Q(param1);
    x = platform->unkC;
    y = platform->unk10;
    platform->unk4 = x;
    platform->unk8 = y;
    platform->unk14 = 0;
    platform->unk16 = 0;
    platform->unk20 = 0;
    platform->unk24 = 0x7D0;
    platform->unk26 = 0;
    platform->players[0] = boss->players[0];
    platform->players[1] = boss->players[1];
    boss->unk34[param3] = &platform->unk24;
    s->tiles = VramMalloc(18);
    s->anim = ANIM_PLATFORM_BOSS_6;
    s->variant = 0;
    s->oamFlags = 0x480;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x1000;
    UpdateSpriteAnimation(s);
}
END_NONMATCH

// (94.70%) https://decomp.me/scratch/KvtXM
NONMATCH("asm/non_matching/game/bosses/boss_6__Task_Platform_OuterPlat.inc", void Task_Platform_OuterPlat(void))
{
    EggPinballPlatform *platform = TASK_DATA(gCurTask);
    EggPinball *boss = platform->boss;
    s32 sp4;
    Sprite *sp8;
    s32 temp_r0_2;
    s32 temp_r1;
    s32 temp_r3;
    Player *p;
    u16 var_r0_2;
    u32 temp_r0;
    u8 var_r0;
    u8 var_r5;

    sp8 = &platform->s;
    sp4 = (s32)platform->unk20;
    if ((platform->unk24 == 0x7D0) && (boss->unk40 != 0)) {
        platform->unk24 = 0U;
    }

    for (var_r5 = 0; var_r5 < 2; var_r5++) {
        p = platform->players[var_r5];
        temp_r0 = sub_8020950(sp8, I(platform->unkC), I(platform->unk10), p, 0U);
        if (0x10000 & temp_r0) {
            p->qWorldY += Q_8_8(temp_r0);
            SetBit(platform->unk20, var_r5);
        } else {
            ClearBit(platform->unk20, var_r5);
        }
    }

    if (platform->unk24 >= 2 && platform->unk24 < 1000) {
        platform->unk24 -= 1;
    }

    if (sp4 == 0) {
        if (platform->unk20 == 0) {
            goto block_47;
        }
        if ((platform->unk24 == 0) && (platform->unk10 == platform->unk8)) {
            platform->unk26 = 0x3CU;
        }
    }
    if (platform->unk20 != 0) {
        if (ABS(platform->unk10 - platform->unk8) < 0x6000) {
            switch (platform->unk24) {
                case 0:
                    if ((s16)platform->unk26 != 0) {
                        platform->unk26 -= 1;
                    } else {
                        platform->unk10 = platform->unk10 + 0x600;
                        for (var_r5 = 0; var_r5 < 2; var_r5++) {
                            p = platform->players[var_r5];
                            if (GetBit(platform->unk20, var_r5)) {
                                p->qWorldY += Q(6);
                            }
                        }
                    }
                    break;
                case 1:
                    platform->unk10 -= 0x600;
                    for (var_r5 = 0; var_r5 < 2; var_r5++) {
                        if (GetBit(platform->unk20, var_r5)) {
                            p = platform->players[var_r5];
                            p->qWorldY -= Q(6);
                        }
                    }
                    break;
                case 1000:
                    if (platform->unk10 <= platform->unk8) {
                        platform->unk10 = platform->unk8;
                    } else {
                        platform->unk10 -= 0x600;
                        for (var_r5 = 0; var_r5 < 2; var_r5++) {
                            if (GetBit(platform->unk20, var_r5)) {
                                p = platform->players[var_r5];
                                p->qWorldY -= Q(6);
                            }
                        }
                    }
                    break;
            }
        }
    } else {
    block_47:
        if (platform->unk10 != platform->unk8) {
            if (platform->unk10 > platform->unk8) {
                platform->unk10 -= 0x600;
                if (platform->unk10 <= platform->unk8) {
                    platform->unk10 = platform->unk8;
                }
            } else {
                platform->unk10 += 0x600;
                if (platform->unk10 >= platform->unk8) {
                    platform->unk10 = platform->unk8;
                }
            }
        }

        platform->unk26 = 0;
    }
    PlatformRender(platform);
}
END_NONMATCH

void sub_Boss_8074AF0(EggPinball *boss)
{
    Sprite *s = &boss->spr110;

    if (boss->unk3E == 0) {
        if (boss->unk3D != 0) {
            boss->unk3D -= 1;
        }
        if (gStageData.difficulty == 0) {
            if (boss->unk3D == 4) {
                sub_80299D4(MUS_VS__BOSS_PINCH);
            }
        } else {
            if (boss->unk3D == 3) {
                sub_80299D4(MUS_VS__BOSS_PINCH);
            }
        }

        m4aSongNumStart(SE_235);
        PlayVoiceEggmanHit();
        boss->unk3E = 0xB4;
        s->variant = 2;
        s->prevVariant = -1;

        sub_8078DB0(ANIM_PALETTE_BOSS_6_A, 0, 0xB4, 0U);
        sub_8078DB0(ANIM_PALETTE_BOSS_6_B, 0, 0xB4, 0U);

        if (CURRENT_GAME_MODE == GAME_MODE_5) {
            if (gStageData.playerIndex == PLAYER_1) {
                if (boss->unk3D != 0) {
                    sub_8027674(3U, boss->unk3D);
                }
            } else {
                sub_8027674(4U, boss->unk3D);
            }
        }
    }
}

void sub_8074BA0(u8 *data)
{
    EggPinball *boss = TASK_DATA(gStageData.taskBoss);
    s32 r2 = data[2];
    s32 temp_r1 = 0x7F;
    temp_r1 &= r2;
    r2 = (data[3]);
    r2 |= (data[4] << 8);

    switch (temp_r1) {
        case 1: {
            boss->unk3D = 0U;
            sub_8074E4C_inline(boss);
            gStageData.taskBoss->main = Task_Boss_8073CE4;
        } break;

        case 3:
        case 4: {
            if (boss->unk3D != (u8)r2) {
                sub_Boss_8074AF0(boss);
            }
        } break;
    }
}

void Task_EggPinballInit(void)
{
    EggPinball *boss = TASK_DATA(gCurTask);

    if (sub_8079FFC()) {
        gCurTask->main = Task_Boss_807391C;
    } else {
        gCurTask->main = Task_Boss_8073ACC;
    }

    sub_8074148(boss);
}

void Task_Boss_8074C94(void)
{
    EggPinball *boss = TASK_DATA(gCurTask);

    boss->players[0]->moveState |= MOVESTATE_IGNORE_INPUT;
    boss->players[1]->moveState |= MOVESTATE_IGNORE_INPUT;

    sub_8074148(boss);
}

void TaskDestructor_EggPinball(Task *t)
{
    EggPinball *boss = TASK_DATA(t);

    if (boss->spr70.tiles != NULL) {
        VramFree(boss->spr70.tiles);
    }

    VramFree(boss->vram4C);
    VramFree(boss->vram50);
    VramFree(boss->vram54);
}

void sub_8074CF0(EggPinball *boss)
{
    boss->unk10[boss->unk3C] = boss->unkC;

    boss->unk3C += 1;

    if (boss->unk3C == 8) {
        boss->unk3C = 0U;
    }
}

void sub_8074D1C(EggPinball *boss)
{
    s32 sinVal;

    boss->unk58 += 7;
    sinVal = SIN(boss->unk58 & 0x3FF);
    boss->unk5A = Q_2_14_TO_Q_24_8(sinVal >> 1);
}

void sub_8074D44(EggPinball *boss, Player *inPlayer)
{
    Sprite *s = &boss->spr70;
    if (sub_802C080(inPlayer) == 0) {
        sub_8020CE0(s, I(boss->qWorldX + boss->unkC.x), I(boss->qWorldY), 0, inPlayer);
    }
}

void TaskDestructor_EggPinballOuterPlatform(Task *t)
{
    EggPinballPlatform *platform = TASK_DATA(t);
    VramFree(platform->s.tiles);
}

static void PlatformRender(EggPinballPlatform *platform)
{
    Sprite *s = &platform->s;

    s->x = (I(platform->unkC) - gCamera.x);
    s->y = (I(platform->unk10) - gCamera.y);

    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void Task_Ball_8074DC4(void)
{
    EggPinballBall *ball = TASK_DATA(gCurTask);

    ball->unkE += 24;
    ball->unk4 += ball->unkC;
    ball->unk8 += ball->unkE;

    if (--ball->unk1B == 0) {
        TaskDestroy(gCurTask);
        return;
    }

    if (ball->unk1B & 2) {
        sub_8074E18(ball);
    }
}

void sub_8074E18(EggPinballBall *ball)
{
    Sprite *s = &ball->s;
    s->x = I(ball->unk4) - gCamera.x;
    s->y = I(ball->unk8) - gCamera.y;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void sub_8074E4C(EggPinball *boss)
{
    boss->unk44 = 0x12C;
    boss->unk5C[0] = 0;
    boss->unk5C[1] = 0;
    boss->unk5C[2] = 0x200;
    boss->unk5C[3] = 0x200;
    boss->players[0]->moveState |= 0x08000000;
    boss->players[1]->moveState |= 0x08000000;
}

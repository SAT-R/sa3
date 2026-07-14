#include "global.h"
#include "core.h"
#include "trig.h"
#include "malloc_vram.h"
#include "multi_sio_stuff.h"
#include "lib/m4a/m4a.h"
#include "game/save.h"
#include "game/stage.h"
#include "game/enemy_unknown.h"
#include "game/shared/stage/screen_shake.h"
#include "game/sa3/bosses/more_gemerl.h"
#include "game/shared/stage/music_manager.h"
#include "game/shared/stage/player_callbacks.h"
#include "game/shared/stage/terrain_collision.h"
#include "game/interactables/blue_red_button.h"
#include "constants/animations.h"
#include "constants/move_states.h"
#include "constants/interactables.h"
#include "constants/songs.h"

typedef struct {
    /* 0x0C */ s32 unk0;
    /* 0x0C */ s32 unk4;
    /* 0x0C */ s32 unk8;
    /* 0x0C */ s32 unkC;
    /* 0x10 */ u8 *unk10;
    /* 0x14 */ u8 unk14;
    /* 0x15 */ s8 unk15;
    /* 0x16 */ s8 unk16;
    /* 0x17 */ u8 unk17;
    /* 0x18 */ s8 unk18;
    /* 0x19 */ s8 unk19;
    /* 0x1A */ s8 unk1A;
    /* 0x1B */ s8 unk1B;
    /* 0x1C */ s8 unk1C;
    /* 0x1D */ u8 unk1D;
    /* 0x1E */ u8 unk1E;
    /* 0x1F */ u8 unk1F;
    /* 0x20 */ u8 unk20;
    /* 0x21 */ u8 unk21;
    /* 0x22 */ u8 unk22;
    /* 0x23 */ s8 unk23;
    /* 0x24 */ s8 unk24;
    /* 0x25 */ u8 unk25;
    /* 0x26 */ s8 unk26;
    /* 0x27 */ s8 unk27;
    /* 0x28 */ s16 unk28;
    /* 0x2A */ u16 unk2A;
    /* 0x2C */ u16 unk2C;
    /* 0x2E */ u16 unk2E;
    /* 0x30 */ u16 unk30;
    /* 0x34 */ u8 *vram34;
    /* 0x38 */ s32 unk38;
    /* 0x3C */ s32 unk3C;
    /* 0x40 */ s32 unk40;
    /* 0x44 */ s32 unk44;
    /* 0x48 */ Vec2_32 unk48;
    /* 0x50 */ Player *player;
    /* 0x54 */ Player *partner;
    /* 0x58 */ MapEntity me;
    /* 0x60 */ SpriteTransform tf;
    /* 0x6C */ Sprite sprBody;
    /* 0x94 */ Sprite2 sprEggman;
    /* 0xC4 */ Sprite sprExplosion;
    /* 0xEC */ u8 fillerEC[0x10];
    /* 0xC4 */ Sprite sprFC;
} EggWheeler; /* 0x124 */

typedef struct {
    /* 0x00 */ s32 unk0;
    /* 0x04 */ s32 unk4;
    /* 0x08 */ u8 unk8;
    /* 0x09 */ u8 playerIndex;
    /* 0x0A */ u8 unkA;
    /* 0x0B */ u8 unkB;
    /* 0x0C */ u16 unkC;
    /* 0x0E */ u16 unkE;
    /* 0x10 */ s32 unk10;
    /* 0x10 */ s32 unk14;
    /* 0x10 */ s32 unk18;
    /* 0x1C */ Sprite *s;
    /* 0x20 */ u8 unk20[8];
} Strc_806CAA4;

typedef struct {
    /* 0x00 */ u8 *data;
    /* 0x04 */ s32 dx;
    /* 0x08 */ s32 unk8;
    /* 0x0C */ s32 unkC;
    /* 0x10 */ Sprite2 s;
} Boss2Entrance;

typedef struct {
    /* 0x00 */ u8 *data;
    /* 0x04 */ s32 dx;
    /* 0x08 */ s32 unk8;
    /* 0x0C */ s32 unkC;
    /* 0x10 */ Sprite2 s;
} Boss2Exit;

void Task_Boss2Entrance(void);
void TaskDestructor_Boss2Entrance(struct Task *t);

void Task_Boss2Init(void);
void Boss2_TransitionToIntro(void);
void Task_806AC7C(void);
void Task_806AD04(void);
void Task_806ADDC(void);
void Task_806AEDC(void);
void Task_CreatePlatformButton(void);
void TaskDestructor_Boss2(struct Task *t);
void Task_Boss2ExitInit(void);
void TaskDestructor_Boss2Exit(struct Task *);
void sub_806AA40(EggWheeler *boss);
void sub_806AAA4(EggWheeler *boss);
u8 sub_806B094(EggWheeler *boss);
bool32 sub_806B844(EggWheeler *boss);
AnimCmdResult sub_806BC50(EggWheeler *boss);
void sub_806BE5C(void);
void sub_806C12C(void);
void sub_806C1C8(void);
void sub_806CA28(EggWheeler *boss);
void sub_806CCB0(Player *);
void sub_806CEE8(EggWheeler *boss);
void sub_806D01C(EggWheeler *boss);
void sub_806D07C(EggWheeler *boss);
void CreateBoss2Entrance(u8 *out, u8 *vram);
s32 sub_806B6C8(EggWheeler *boss);
void CreateBoss2Exit(u8 *out, u8 *vram);
void sub_806B144(EggWheeler *boss, Vec2_32 *vec);
void sub_806B23C(EggWheeler *boss, Vec2_32 *vec);
void sub_806B2F4(EggWheeler *boss, Vec2_32 *vec);
u8 sub_806B3A4(EggWheeler *boss, Vec2_32 *vec);
void sub_806B484(EggWheeler *boss);
void sub_806B5A8(EggWheeler *boss);
void sub_806B788(void);
s32 sub_806CAA4(Strc_806CAA4 *); /* extern */
void sub_806CEB8(); /* extern */
void sub_8004D68(s32, s32);
void sub_806C004(void);
void sub_806C06C(Boss2Exit *strc);
bool32 sub_806D17C(Boss2Exit *exit);
bool32 sub_806CFD4(EggWheeler *boss);
void sub_806C2F8(void);
void sub_806C370(void);

void sub_806C4F8(void);
void sub_806C5D4(EggWheeler *boss);
void sub_806C7B0(void);
void sub_806C970(void);
void sub_806C9C4(EggWheeler *boss);
void sub_806CE74(void);
bool32 sub_806C6FC(EggWheeler *boss);
void sub_806C8BC(void);
bool8 sub_807A074(void);
bool32 sub_806CF70(EggWheeler *boss);

extern const u8 gUnknown_080D57C0[];
extern const u8 gUnknown_080D57C5[];
extern s8 sub_80781C0(Vec2_32 *, s8 *);
extern void sub_8078920(Sprite *s, Vec2_32 *vec, s8 *param2);
extern void sub_80789EC(Sprite *, Vec2_32 *vec, s8 *);
extern void sub_8078E34(s32 *, VoidFn);
extern bool8 sub_8079FFC(void);
extern void sub_807A37C(void);
extern void sub_807A4A8(void);
extern void SetFixedRandomIfTimeAttackMode(void);
extern const TileInfo2 gUnknown_080D5780[8];
extern void sub_80BE46C(Sprite *);

typedef struct {
    s32 unk0;
    s32 unk4;
    s32 unk8;
    s32 unkC;
} Unknown;

// Officially called: "Egg Ball No. 2"
Task *CreateEggWheeler(u8 *param0, s32 worldX, s32 worldY)
{
    s32 sp4;
    Task *t = TaskCreate(Task_Boss2Init, sizeof(EggWheeler), 0x2100U, 0U, TaskDestructor_Boss2);
    EggWheeler *boss = TASK_DATA(t);
    gStageData.taskBoss = t;
    boss->unk28 = 0;
    boss->unk8 = worldX << 8;
    boss->unkC = worldY << 8;
    boss->unk10 = param0;
    boss->unk14 = 0;
    boss->unk17 = 0;
    boss->unk16 = 0;
    boss->unk2A = 0;
    boss->unk15 = 0;
    boss->unk26 = 0;
    boss->unk27 = 0;
    boss->unk0 = 0x5DA00;
    boss->unk4 = 0xDC00;
    boss->unk48.x = Q(DISPLAY_CENTER_X);
    boss->unk48.y = Q(DISPLAY_CENTER_Y);

    if (gStageData.difficulty == DIFFICULTY_NORMAL) {
        boss->unk1D = 8;
    } else {
        boss->unk1D = 6;
    }

    boss->unk24 = 1;
    boss->unk20 = 3;
    boss->unk2C = 0x17C0;
    boss->unk25 = 0;
    boss->player = &gPlayers[PLAYER_1];
    boss->partner = &gPlayers[PLAYER_2];
    sub_806AA40(boss);
    gDispCnt |= DISPCNT_BG2_ON;
    DmaFill32(3, 0, BG_CHAR_ADDR_FROM_BGCNT(2), 2 * TILE_SIZE_4BPP);
    sub_806AAA4(boss);

    gPseudoRandom = gFrameCount;
    SetFixedRandomIfTimeAttackMode();

    return t;
}

void sub_806AA40(EggWheeler *boss)
{
    boss->unk23 = 0;
    boss->unk2E = 0x78;
    boss->unk30 = 0;
    boss->unk1B = 0;
    boss->unk1C = 0;
    boss->unk40 = -0x100;
    boss->unk44 = 0;
    boss->unk38 = 0;
    boss->unk3C = 0;
    boss->unk1E = 0;
    boss->unk1F = 0;
    boss->unk21 = 0;
    boss->unk18 = 0;
    boss->unk1A = 0;
    CpuFill16(0, &boss->sprEggman.hitboxes[1].b, sizeof(boss->sprEggman.hitboxes[1].b));
    CpuFill16(0, &boss->sprFC.hitboxes[0].b, sizeof(boss->sprFC.hitboxes[0].b));
}

void sub_806AAA4(EggWheeler *boss)
{
    Sprite *s;
    Sprite *temp_r4;
    Sprite *s3;
    SpriteTransform *tf;
    void *temp_r8_2;

    u8 *vram = VramMalloc(0x84U);
    s = &boss->sprBody;
    s->tiles = (void *)(BG_VRAM + 0x4040);
    s->anim = gUnknown_080D5780[0].anim;
    s->variant = gUnknown_080D5780[0].variant;
    s->prevVariant = -1;
    s->x = 40;
    s->y = 40;
    s->oamFlags = 0x500;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0x11000;
    s->hitboxes[0].index = -1;
    UpdateSpriteAnimation_BG(s);

    temp_r4 = (Sprite *)&boss->sprEggman;
    tf = &boss->tf;
    temp_r4->tiles = vram;
    vram += (gUnknown_080D5780[2].numTiles * TILE_SIZE_4BPP);
    temp_r4->anim = gUnknown_080D5780[2].anim;
    temp_r4->variant = gUnknown_080D5780[2].variant;
    temp_r4->prevVariant = -1;
    temp_r4->x = I(boss->unk48.x);
    temp_r4->y = I(boss->unk48.y);
    temp_r4->oamFlags = 0x640;
    temp_r4->animCursor = 0;
    temp_r4->qAnimDelay = 0;
    temp_r4->animSpeed = 0x10;
    temp_r4->palId = 0;
    temp_r4->frameFlags = 0x106A;
    temp_r4->hitboxes[0].index = -1;
    tf->rotation = 0x100;
    tf->x = temp_r4->x;
    tf->y = temp_r4->y;
    tf->qScaleX = Q(1);
    tf->qScaleY = Q(1);
    TransformSprite(temp_r4, tf);
    UpdateSpriteAnimation(temp_r4);

    s3 = &boss->sprExplosion;
    s3->tiles = vram;
    vram += 116 * TILE_SIZE_4BPP;
    s3->anim = ANIM_EXPLOSION_1273;
    s3->variant = 0;
    s3->prevVariant = -1;
    s3->x = I(boss->unk0) - gCamera.x;
    s3->y = I(boss->unk4) - gCamera.y;
    s3->oamFlags = 0;
    s3->animCursor = 0;
    s3->qAnimDelay = 0;
    s3->animSpeed = 0x10;
    s3->palId = 0;
    s3->frameFlags = 0;
    s3->hitboxes[0].index = -1;
    UpdateSpriteAnimation(s3);

    boss->vram34 = vram;
}

void Boss2_TransitionToIntro()
{
    EggWheeler *boss = TASK_DATA(gCurTask);
    s16 pid;
    u8 *vram;

    if (*boss->unk10 == 3) {
        TaskDestroy(gCurTask);
        return;
    } else if (*boss->unk10 == 2) {
        for (pid = 0; pid < NUM_SINGLE_PLAYER_CHARS; pid++) {
            Player *p = &gPlayers[pid];
            if (I(p->qWorldX) < 1145 || I(p->qWorldX) >= 1545) {
                return;
            }
        }

        m4aSongNumStop(MUS_SUNSET_HILL__ACT_3);
        sub_80299D4(50);

        vram = boss->vram34;
        vram += (18 * TILE_SIZE_4BPP);
        CreateBoss2Entrance(&boss->unk1B, vram);
        CreateBoss2Exit(&boss->unk1C, vram);

        vram += (18 * TILE_SIZE_4BPP);
        boss->vram34 = vram;

        boss->unk1E = 0xC0;
        gCurTask->main = Task_806AC7C;
    }
}

void Task_806AC7C(void)
{
    Player *p = NULL;
    EggWheeler *boss = TASK_DATA(gCurTask);
    u8 pid;

    if (*boss->unk10 == 2) {
        boss->unk1B = 1;
        boss->unk1C = 1;

        for (pid = 0; pid < NUM_SINGLE_PLAYER_CHARS; pid++) {
            p = GET_SP_PLAYER_V0(pid);
            p->layer = (p->layer == PLAYER_LAYER__FRONT) ? PLAYER_LAYER__BACK : PLAYER_LAYER__FRONT;
        }

        gCurTask->main = Task_806AD04;
    }

    sub_806D07C(boss);
    sub_806BC50(boss);
}

void Task_806AD04(void)
{
    EggWheeler *boss = TASK_DATA(gCurTask);
    Sprite *s;

    boss->unk0 += boss->unk38;
    boss->unk4 += boss->unk3C;
    sub_806B094(boss);
    sub_806CEE8(boss);
    boss->unk38 = COS(boss->unk1E * 4) >> 9;
    boss->unk3C = SIN(boss->unk1E * 4) >> 9;
    boss->unk3C += boss->unk44;
    boss->unk38 += boss->unk40;
    boss->unk1F = boss->unk1E;
    sub_806D07C(boss);
    sub_806BC50(boss);

    if ((ABS(boss->unk38) < 2) && (boss->unk1E < 2)) {
        sub_807A4A8();
        sub_806AA40(boss);

        boss->unk24 = -1;
        do {
            boss->unk20 = 0;
        } while (0);
        boss->unk40 = 0x80;
        boss->unk2C = 0;
        boss->unk2E = 0;

        s = (Sprite *)&boss->sprEggman;
        s->anim = gUnknown_080D5780[2].anim;
        s->variant = gUnknown_080D5780[2].variant;
        s->prevVariant = -1;

        gCurTask->main = Task_806ADDC;
    }
}

void Task_806ADDC(void)
{
    EggWheeler *boss = TASK_DATA(gCurTask);
    Sprite *s;
    s16 temp_r0;

    if (++boss->unk2E > 0x3CU) {
        boss->unk2E = 0;
        gCurTask->main = Task_CreatePlatformButton;
        return;
    }

    sub_806D07C(boss);

    if (sub_806BC50(boss) == ACMD_RESULT__ENDED) {
        s = (Sprite *)&boss->sprEggman;
        s->anim = gUnknown_080D5780[2].anim;
        s->variant = gUnknown_080D5780[2].variant;
        s->prevVariant = -1;
    }
}

// TODO: Fake-match
void Task_CreatePlatformButton()
{
    EggWheeler *boss = TASK_DATA(gCurTask);
    s32 worldX = I(boss->unk0);
    u16 regionX = (boss->unk0 >> 16);
    u16 regionY = (boss->unk4 >> 16);
    u8 *pByte0 = &boss->me.x;
    u8 *pByte;
#ifndef NON_MATCHING
    register u8 *pByteR3 asm("r3");
#else
    u8 *pByteR3;
#endif
    s32 newY;
    s32 worldY;
    s32 zero = 0;
    *pByte0 = ((u8)worldX) >> 3;
    worldY = (I(boss->unk4) + 38);
    pByte = &boss->me.y;
    *pByte = (u8)worldY >> 3;
    pByte = &boss->me.index;
    *pByte = IA__BLLUE_BUTTON;

    pByte = &boss->me.d.uData[0];
    *pByte = 10;
    pByteR3 = &boss->me.d.uData[1];
    *pByteR3 = 1;
    pByteR3 = &boss->me.d.uData[2];
    *pByteR3 = zero;
    pByteR3 = &boss->me.d.uData[3];
    *pByteR3 = zero;
    pByteR3 = &boss->me.d.uData[4];
    *pByteR3 = BitValue(0); // gets set to 0xFF once Boss is defeated, triggering Destructor of button
    boss->unk22 = *pByte0;
    CreateEntity_BlueButton(&boss->me, regionX, regionY, 0);
    gCurTask->main = Task_806AEDC;
}

void Task_806AEDC(void)
{
    s16 temp_r2_3;
    s16 temp_r3_2;
    s16 temp_r0_4;
    s32 temp_r1;
    s32 temp_r2;
    s32 temp_r2_2;
    s32 temp_r3;
    s32 temp_r4;
    s16 temp_r4_2;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r2;
    u16 temp_r0;
    u16 temp_r0_2;
    u16 temp_r0_3;
    u8 *var_r1;
    s32 temp_r6;
    s32 var_r4;
    u8 var_r0_3;

    EggWheeler *boss = TASK_DATA(gCurTask);

    if ((boss->unk30 == 0) || (--boss->unk30 == 0)) {
        boss->unk38 = 0x1F4;
        boss->unk40 = (s32)boss->unk40 >> 1;
        boss->unk3C = 0x1F4;
        boss->unk44 = (s32)boss->unk44 >> 1;
    }
    boss->unk0 += boss->unk38;
    boss->unk4 += boss->unk3C;
    temp_r6 = sub_806B094(boss);
    if ((u8)boss->unk1D == 1) {
        boss->unk38 = COS(boss->unk1E * 4) >> 7;
        boss->unk3C = SIN(boss->unk1E * 4) >> 7;
    } else {
        boss->unk38 = COS(boss->unk1E * 4) >> 8;
        boss->unk3C = SIN(boss->unk1E * 4) >> 8;
    }
    boss->unk3C += boss->unk44;
    temp_r2 = boss->unk40;
    temp_r3 = boss->unk38 + boss->unk40;
    boss->unk38 = temp_r3;

    if (boss->unk30 != 0) {
        if (boss->unk40 < 0) {
            boss->unk38 += Q(2);
        } else if (boss->unk40 > 0) {
            boss->unk38 -= Q(2);
        }
        if (boss->unk44 < 0) {
            boss->unk3C += Q(2);
        } else if (boss->unk44 > 0) {
            boss->unk3C -= Q(2);
        }
    }

    if (boss->unk30 == 0) {
        sub_806D01C(boss);
        boss->unk30 = 0xFFFF;
    }

    sub_806CEE8(boss);
    boss->unk1F = boss->unk1E;
    sub_806D07C(boss);
    sub_806BC50(boss);
    if (temp_r6 != 0) {
        sub_806D01C(boss);
    }
    if (sub_806B844(boss) == 1) {
        gCurTask->main = sub_806C1C8;
        boss->me.d.sData[4] = 0xFF;
    } else {
        s16 worldY;
        u16 regionX, regionY;
        temp_r4 = boss->unk0;
        regionX = (I(boss->unk0) >> 8);
        regionY = (I(boss->unk4) >> 8);
        temp_r0_4 = (s16)((boss->unk22));
        temp_r0_4 = temp_r0_4 * 8 + ((regionX << 8));
        worldY = TO_WORLD_POS(boss->me.y, regionY);
        temp_r4 = Q(temp_r4);
        temp_r3_2 = (I(boss->unk4) + 38);
        if ((temp_r0_4 - 0x10 < (temp_r4 >> 16)) && ((s32)(temp_r0_4 + 0x10) > (temp_r4 >> 16))) {
            temp_r2_3 = worldY;
            if (((s32)(temp_r2_3 - 8) < (s32)temp_r3_2) && ((s32)(temp_r2_3 + 8) > (s32)temp_r3_2)) {
                boss->me.d.sData[4] = 2;
            }
        }
    }
}

u8 sub_806B094(EggWheeler *boss)
{
    u8 result = 0;
    s32 sinVal = -SIN_24_8(boss->unk1F * 4);
    s32 cosVal = +COS_24_8(boss->unk1F * 4);
    s32 qWorldX = boss->unk0 + sinVal * 32 + sinVal * 4 + sinVal * 2;
    s32 qWorldY = boss->unk4 + cosVal * 32 + cosVal * 4 + cosVal * 2;
    Vec2_32 vec;

    vec.x = I(qWorldX);
    vec.y = I(qWorldY);

    if ((u8)(boss->unk1E + 0x60) <= 0x3FU) {
        sub_806B144(boss, &vec);
    } else if ((u8)(boss->unk1E - 0x60) <= 0x3FU) {
        sub_806B23C(boss, &vec);
    } else {
        u8 temp_r0 = boss->unk1E - 32;
        if (temp_r0 < (u8) + Q(0.25)) {
            sub_806B2F4(boss, &vec);
        } else if (temp_r0 >= (u8)-Q(0.25)) {
            result = sub_806B3A4(boss, &vec);
        }
    }
    return result;
}

// Fake-match
void sub_806B144(EggWheeler *boss, Vec2_32 *pos)
{
    s32 sb = 0;
    s32 var_r0_2;
    s8 *var_r2_2;
    s8 var_r0;
    u8 *temp_r6;
    u8 temp_r0;
    u8 temp_r5;
    s32 temp_r1;
    u8 var_r2;
    s32 var_r4;

    temp_r5 = SA2_LABEL(sub_801F07C)(pos->x + 0, pos->y, 0, 8, &boss->unk1E, SA2_LABEL(sub_801ED24));
    var_r0 = SA2_LABEL(sub_801F07C)(pos->x - 8, pos->y, 0, 8, &boss->unk1E, SA2_LABEL(sub_801ED24));
#ifndef NON_MATCHING
    asm("mov %0, %1" : "=r"(var_r2) : "r"(var_r0));
#else
    var_r2 = var_r0;
#endif
    if (var_r0 << 24 > temp_r5 << 24) {
        var_r2 = temp_r5;
    }
    var_r4 = var_r2;
    if (boss->unk1E == 0x80) {
        boss->unk1E = 0;
    }
    if (boss->unk1E == 0) {
        boss->unk1E = 0xA0;
    }

    sb = 1;
    if (boss->unk20 == 0) {
        boss->unk24 = 1;
        boss->unk44 = 0 - boss->unk40;
        boss->unk3C = 0 - boss->unk38;
    } else {
        if (boss->unk20 == 1) {
            boss->unk24 = -1;
            boss->unk44 = boss->unk40;
            boss->unk3C = boss->unk38;
        }
    }
    if (boss->unk1D != 1) {
        boss->unk44 += 2;
    }
    if (boss->unk3C > 0) {
        boss->unk24 = -1;
    } else {
        boss->unk24 = +1;
    }
    boss->unk38 = 0;
    boss->unk40 = 0;
    boss->unk20 = 3;
    if (sb != 0) {
        if (sb > 0) {
            boss->unk0 += Q_8_8(var_r4);
        } else {
            boss->unk0 -= Q_8_8(var_r4);
        }
    }
}

// Fake-match
void sub_806B23C(EggWheeler *boss, Vec2_32 *pos)
{
    u8 temp_r2;
    s8 var;

    temp_r2 = SA2_LABEL(sub_801F07C)(pos->y, pos->x, 0, -8, &boss->unk1E, SA2_LABEL(sub_801EE64));
    if (boss->unk1E == 0) {
        boss->unk1E = 160;
    }

    if (boss->unk20 == 2) {
        boss->unk24 = -1;
        boss->unk40 = -boss->unk44;
        boss->unk38 = -boss->unk3C;
    } else if (boss->unk20 == 3) {
        boss->unk24 = +1;
        boss->unk40 = +boss->unk44;
        boss->unk38 = +boss->unk3C;
    }

    if (boss->unk1D != 1) {
        if (boss->unk24 < 0) {
            boss->unk40 -= 2;
        } else {
            boss->unk40 += 2;
        }
    }

    boss->unk44 = 0;
    boss->unk3C = 0;
    boss->unk20 = 1;
#ifndef NON_MATCHING
    asm("mov %0, #0xFF" : "=r"(var));
#else
    var = -1;
#endif
    if (var != 0) {
        if (var > 0) {
            boss->unk4 += Q_8_8(temp_r2);
        } else {
            boss->unk4 -= Q_8_8(temp_r2);
        }
    }
}

// TODO: Fake-match
void sub_806B2F4(EggWheeler *boss, Vec2_32 *vec)
{
    s8 temp_r0;
    s32 var_r0;
    s32 var_r0_3;
    s8 *var_r1;
    s8 var_r0_2;
    u8 temp_r2;
    u8 temp_r3;

    temp_r3 = (u8)sa2__sub_801F07C(vec->x, vec->y, 0, -8, &boss->unk1E, sa2__sub_801ED24);
    if (boss->unk1E == 0) {
        boss->unk1E = 0x40;
    }
    temp_r2 = (u8)boss->unk20;
    if (temp_r2 == 0) {
        boss->unk24 = -1;
        boss->unk44 = +boss->unk40;
        boss->unk3C = +boss->unk38;
    } else if (temp_r2 == 1) {
        boss->unk24 = +1;
        boss->unk44 = -boss->unk40;
        boss->unk3C = -boss->unk38;
    }
    if (boss->unk1D != 1) {
        boss->unk44 += 2;
    }
    if (boss->unk3C > 0) {
        boss->unk24 = 1;
    } else {
        boss->unk24 = -1;
    }
    boss->unk38 = 0;
    boss->unk40 = 0;
    boss->unk20 = 2;
#ifndef NON_MATCHING
    asm("mov %0, #0xFF" : "=r"(temp_r0));
#else
    temp_r0 = -1;
#endif
    if (temp_r0 != 0) {
        if (temp_r0 > 0) {
            boss->unk0 = boss->unk0 + (s16)(temp_r3 << 8);
        } else {
            boss->unk0 = boss->unk0 - (s16)(temp_r3 << 8);
        }
    }
}

// TODO: Fake-match
u8 sub_806B3A4(EggWheeler *boss, Vec2_32 *pos)
{
    s32 temp_r1_2;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r0_3;
    s32 var_r0_4;
    s32 var_r0_5;
    u8 temp_r0;
    u8 temp_r1;
    u8 var_r5 = 0;
    u8 temp_r3 = (u8)sa2__sub_801F07C(pos->y, pos->x, 0, 8, &boss->unk1E, sa2__sub_801EE64);
    s32 r7 = 1;
#ifndef NON_MATCHING
    register s32 r0 asm("r0");
#else
    s32 r0;
#endif

    if (boss->unk1E == 0x80) {
        boss->unk1E = 0;
    }

    if (boss->unk20 == 2) {
        boss->unk24 = r7;
        boss->unk40 = +boss->unk44;
        boss->unk38 = +boss->unk3C;
    } else if (boss->unk20 == 3) {
        boss->unk24 = -1;
        boss->unk40 = -boss->unk44;
        boss->unk38 = -boss->unk3C;
    }

    if (boss->unk1D != 1) {
        if (boss->unk24 < 0) {
            boss->unk40 = boss->unk40 + 2;
        } else {
            boss->unk40 = boss->unk40 - 2;
        }
    }

    if (ABS(boss->unk40) <= 0) {
        if (boss->unk1D != 1) {
            if (boss->unk24 < 0) {
                boss->unk40 += 2;
            } else {
                boss->unk40 -= 2;
            }
        }
        var_r5 = 1;
    }
    boss->unk3C = 0;
    boss->unk44 = 0;
    boss->unk20 = 0;
    r0 = r7;
    if (r0 != 0) {
        if (r0 > 0) {
            boss->unk4 += Q_8_8(temp_r3);
        } else {
            boss->unk4 -= Q_8_8(temp_r3);
        }
    }
    return var_r5;
}

// (98.61%) https://decomp.me/scratch/RLSBK
NONMATCH("asm/non_matching/game/bosses/boss_2__sub_806B484.inc", void sub_806B484(EggWheeler *boss))
{
    s32 var_r4;
    s32 var_r6;
    s32 value0;
    s32 value;

    var_r6 = 5;
    var_r4 = 0;
    if (boss->unk14 != 0) {
        var_r6 = 7;
        boss->unk14--;
    }
    if ((ABS(boss->unk38) >= 500 && (ABS(boss->unk38) < 800)) || (ABS(boss->unk3C) >= 500 && (ABS(boss->unk3C) < 800))) {
        var_r4 = 2;
    } else if ((ABS(boss->unk38) >= 800 && (ABS(boss->unk38) < 1100)) || (ABS(boss->unk3C) >= 800 && (ABS(boss->unk3C) < 1100))) {
        var_r4 = 3;
    } else if ((ABS(boss->unk38) >= 1100) || (ABS(boss->unk3C) >= 1100)) {
        var_r4 = 4;
    }

    if (boss->unk20 == 0) {
        if (boss->unk38 > -0x80) {
            value = (var_r4 + 1) << var_r6;
        } else if ((u32)(boss->unk38 + 0xFF) <= 0x7FU) {
            value = (var_r4 + 2) << var_r6;
        } else {
            value = (var_r4 + 3) << var_r6;
        }
        value0 = boss->unk2C - value;
        boss->unk2C = value0;
    } else if (boss->unk20 == 1) {
        if (boss->unk38 <= 0x7F) {
            value = (var_r4 + 1) << var_r6;
        } else if ((u32)(boss->unk38 - 0x80) <= 0x7FU) {
            value = (var_r4 + 2) << var_r6;
        } else {
            value = (var_r4 + 3) << var_r6;
        }
        value0 = boss->unk2C - value;
        boss->unk2C = value0;
    } else if (boss->unk20 == 2) {
        if (boss->unk3C > -0x80) {
            value = (var_r4 + 1) << var_r6;
        } else if (boss->unk3C > -0x100 && (boss->unk38 <= -0x80)) {
            value = (var_r4 + 2) << var_r6;
        } else {
            value = (var_r4 + 3) << var_r6;
        }
        value0 = boss->unk2C - value;
        boss->unk2C = value0;
    } else if (boss->unk20 == 3) {
        if (boss->unk3C < 0x80) {
            value = (var_r4 + 1) << var_r6;
        } else if ((boss->unk3C <= 0xFF) && (boss->unk38 > 0x7F)) {
            value = (var_r4 + 2) << var_r6;
        } else {
            value = (var_r4 + 3) << var_r6;
        }
        value0 = boss->unk2C - value;
        boss->unk2C = value0;
    }

    if (boss->unk2C > 0x3FF0) {
        boss->unk2C = 0x3FF0;
    }
}
END_NONMATCH

// (98.53%) https://decomp.me/scratch/8cBpi
NONMATCH("asm/non_matching/game/bosses/boss_2__sub_806B5A8.inc", void sub_806B5A8(EggWheeler *boss))
{
    s32 var_r4;
    s32 var_r6;
    s32 value;

    var_r6 = 5;
    var_r4 = 0;
    if (boss->unk14 != 0) {
        var_r6 = 7;
        boss->unk14--;
    }
    if ((ABS(boss->unk38) >= 500 && (ABS(boss->unk38) < 800)) || (ABS(boss->unk3C) >= 500 && (ABS(boss->unk3C) < 800))) {
        var_r4 = 2;
    } else if ((ABS(boss->unk38) >= 800 && (ABS(boss->unk38) < 1100)) || (ABS(boss->unk3C) >= 800 && (ABS(boss->unk3C) < 1100))) {
        var_r4 = 3;
    } else if ((ABS(boss->unk38) >= 1100) || (ABS(boss->unk3C) >= 1100)) {
        var_r4 = 4;
    }

    if (boss->unk20 == 0) {
        if (boss->unk38 < 0x80) {
            value = (var_r4 + 1) << var_r6;
        } else if (boss->unk38 >= 0x80 && boss->unk38 < 0x100) {
            value = (var_r4 + 2) << var_r6;
        } else {
            value = (var_r4 + 3) << var_r6;
        }
        value += boss->unk2C;
        boss->unk2C = value;
    } else if (boss->unk20 == 1) {
        if (boss->unk38 > -0x80) {
            value = (var_r4 + 1) << var_r6;
        } else if ((u32)(boss->unk38 + 0xFF) <= 0x7FU) {
            value = (var_r4 + 2) << var_r6;
        } else {
            value = (var_r4 + 3) << var_r6;
        }
        value += boss->unk2C;
        boss->unk2C = value;
    } else if (boss->unk20 == 2) {
        if (boss->unk3C < 0x80) {
            value = (var_r4 + 1) << var_r6;
        } else if (boss->unk3C >= 0x80 && boss->unk3C < 0x100) {
            value = (var_r4 + 2) << var_r6;
        } else {
            value = (var_r4 + 3) << var_r6;
        }
        value += boss->unk2C;
        boss->unk2C = value;
    } else if (boss->unk20 == 3) {
        if (boss->unk3C > -0x80) {
            value = (var_r4 + 1) << var_r6;
        } else if ((u32)(boss->unk3C + 0xFF) <= 0x7FU) {
            value = (var_r4 + 2) << var_r6;
        } else {
            value = (var_r4 + 3) << var_r6;
        }
        value += boss->unk2C;
        boss->unk2C = value;
    }

    if (boss->unk2C > 0x3FF0U) {
        boss->unk2C = 0;
    }
}
END_NONMATCH

s32 sub_806B6C8(EggWheeler *boss)
{
    Strc_806CAA4 sp0;
    Sprite *s = (Sprite *)&boss->sprEggman;
    s32 temp_ip = 0;
    s32 sx, sy;
    s32 x, y;
    sp0.unk0 = 0;
    sp0.unk8 = 0;
    sp0.unk4 = 0;
    sp0.playerIndex = 0;
    boss->sprEggman.hitboxes[0].b.left += 0x11;
    boss->sprEggman.hitboxes[0].b.top += 0x29;
    boss->sprEggman.hitboxes[0].b.right += 0x11;
    boss->sprEggman.hitboxes[0].b.bottom += 0x29;
    sp0.s = s;
    sx = s->x;
    x = gCamera.x + sx;
    sp0.unk10 = Q(x);
    sy = s->y;
    y = gCamera.y + sy;
    sp0.unk14 = Q(y);
    sp0.unkC = 0;
    sp0.unkE = 0;
    temp_ip = sub_806CAA4(&sp0);
    boss->sprEggman.hitboxes[0].b.left -= 0x11;
    boss->sprEggman.hitboxes[0].b.top -= 0x29;
    boss->sprEggman.hitboxes[0].b.right -= 0x11;
    boss->sprEggman.hitboxes[0].b.bottom -= 0x29;
    boss->unk15 = sp0.playerIndex;
    boss->unk26 = sp0.unkA;
    boss->unk27 = sp0.unkB;

    return temp_ip;
}

// (83.85%) https://decomp.me/scratch/Dh15W
NONMATCH("asm/non_matching/game/bosses/boss_2__sub_806B788.inc", void sub_806B788(void))
{
    s32 points[4];
    Player *p;
    s32 temp_r2;
    u16 temp_r0;
    u8 var_r1;
    u8 var_r2;
    EggWheeler *boss = TASK_DATA(gCurTask);

    if (boss->unk2E == 0) {
        s32 x = (I(boss->unk0) - gCamera.x) + 10;
        boss->unk2E++;
        points[0] = gCamera.x + x;
        points[1] = gCamera.maxY - 50;
        points[2] = gCamera.x;
        points[3] = gCamera.maxY - 27;
        sub_8078E34(points, sub_807A37C);
    }
    if ((u8)boss->unk1C == 4) {
        for (var_r2 = 0; var_r2 < 2; var_r2++) {
            p = GET_SP_PLAYER_V0(var_r2);
            p->layer = 1;
        }

        gCurTask->main = sub_806CEB8;
    }
}
END_NONMATCH

bool32 sub_806B844(EggWheeler *boss)
{
    u8 sp0;
    s32 sp4;
#ifndef BUG_FIX
    Sprite *sprEggman;
#else
    // Prevent potential use of uninitted var
    Sprite *sprEggman = (Sprite *)&boss->sprEggman;
#endif
    PlayerSpriteInfo *temp_r0_6;
    PlayerSpriteInfo *temp_r0_9;
    PlayerSpriteInfo *temp_r1;
    PlayerSpriteInfo *temp_r1_4;
    s32 temp_r5;
    s32 temp_r6;
    s32 temp_r7;
    s32 var_r4;
    u8 temp_r4_2;
    u8 temp_r5_5;
    Player *p = NULL;
    s32 r6 = 0x480;
    s32 sb = 0x1C;
    sp4 = 0;
    var_r4 = 0;
    if (boss->unk25 != 0) {
        boss->unk25 = 0;
        var_r4 = 1;
    } else {
        Sprite *sprEggmanInner = (Sprite *)&boss->sprEggman;
        u16 eggmanX = sprEggmanInner->x;
        sprEggman = sprEggmanInner;
        if (eggmanX > DISPLAY_WIDTH) {
            goto return_0;
        }
        if (sprEggman->y > DISPLAY_HEIGHT) {
            goto return_0;
        }
        if (sprEggman->y < 0) {
            goto return_0;
        }

        if ((boss->unk23 == 0) && (boss->unk1D != 0) && (sub_806B6C8(boss) == 1)) {
            var_r4 = 1;
        }
    }

    if (var_r4) {
        boss->unk14 = 0x3C;
        temp_r4_2 = boss->unk1E;
        temp_r5_5 = (u8)boss->unk1F;
        sub_806AA40(boss);
        boss->unk1E = temp_r4_2;
        boss->unk1F = temp_r5_5;

        if (boss->unk20 == 0) {
            if (boss->unk26 > 0) {
                boss->unk24 = +1;
                boss->unk40 = +r6;
            } else {
                boss->unk24 = -1;
                boss->unk40 = -r6;
            }
        } else if (boss->unk20 == 1) {
            if (boss->unk26 < 0) {
                boss->unk24 = +1;
                boss->unk40 = -r6;
            } else {
                boss->unk24 = -1;
                boss->unk40 = +r6;
            }
        } else if (boss->unk20 == 3) {
            if (boss->unk27 < 0) {
                boss->unk24 = +1;
                boss->unk44 = -r6;
            } else {
                boss->unk24 = -1;
                boss->unk44 = +r6;
            }
        } else if (boss->unk20 == 2) {
            if (boss->unk27 < 0) {
                boss->unk24 = +1;
                boss->unk44 = -r6;
            } else {
                boss->unk24 = -1;
                boss->unk44 = +r6;
            }
        }

        m4aSongNumStart(SE_143);
        sub_807A468();
        boss->unk1D--;
        if (gStageData.gameMode == 5) {
            if (gStageData.playerIndex == 0) {
                if (boss->unk1D != 0) {
                    sub_8027674(3U, boss->unk1D);
                }
            } else {
                sub_8027674(4U, boss->unk1D);
            }
        }
        if (gStageData.difficulty == 0) {
            if ((u8)boss->unk1D == 4) {
                sub_80299D4(0x33U);
            }
        } else if ((u8)boss->unk1D == 3) {
            sub_80299D4(0x33U);
        }
        if ((u8)boss->unk1D == 1) {
            boss->unk30 = 0xFFFF;
        } else {
            boss->unk30 = 0x3C;
        }
        boss->sprEggman.anim = gUnknown_080D5780[3].anim;
        boss->sprEggman.variant = gUnknown_080D5780[3].variant;
        boss->sprEggman.prevVariant = -1;

        boss->unk23 = 0x7A;
        sub_8078DB0(0x4BE, 0, 0x7A, 1U);
        sub_8078DB0(0x4BF, 0, 0x7A, 0U);
    } else {
        if (boss->unk21 == 0) {
            for (sp0 = 0; sp0 < NUM_SINGLE_PLAYER_CHARS; sp0++) {
                p = GET_SP_PLAYER_V0(sp0);
                if (sub_802C080(p) == 0) {
                    temp_r5 = I(p->qWorldX);
                    temp_r5 += p->spriteInfoBody->s.hitboxes[0].b.left;
                    temp_r6 = I(p->qWorldY);
                    temp_r6 += p->spriteInfoBody->s.hitboxes[0].b.top;
                    if (((ABS(temp_r5 - I(boss->unk0)) < sb)) && ((ABS(temp_r6 - I(boss->unk4)) < sb))) {
                        sp4 = 1;
                    }

                    temp_r5 = I(p->qWorldX);
                    temp_r5 += p->spriteInfoBody->s.hitboxes[0].b.left;
                    temp_r6 = I(p->qWorldY);
                    temp_r6 += p->spriteInfoBody->s.hitboxes[0].b.bottom;
                    if (((ABS(temp_r5 - I(boss->unk0)) < sb)) && ((ABS(temp_r6 - I(boss->unk4)) < sb))) {
                        sp4 = 1;
                    }

                    temp_r5 = I(p->qWorldX);
                    temp_r5 += p->spriteInfoBody->s.hitboxes[0].b.right;
                    temp_r6 = I(p->qWorldY);
                    temp_r6 += p->spriteInfoBody->s.hitboxes[0].b.top;
                    if (((ABS(temp_r5 - I(boss->unk0)) < sb)) && ((ABS(temp_r6 - I(boss->unk4)) < sb))) {
                        sp4 = 1;
                    }

                    temp_r5 = I(p->qWorldX);
                    temp_r5 += p->spriteInfoBody->s.hitboxes[0].b.right;
                    temp_r6 = I(p->qWorldY);
                    temp_r6 += p->spriteInfoBody->s.hitboxes[0].b.bottom;
                    if (((ABS(temp_r5 - I(boss->unk0)) < sb)) && ((ABS(temp_r6 - I(boss->unk4)) < sb))) {
                        sp4 = 1;
                    }

                    if (sp4 != 0) {
                        Player_8014550(p);
                        sprEggman->anim = gUnknown_080D5780[2].anim;
                        sprEggman->variant = gUnknown_080D5780[2].variant;
                        sprEggman->prevVariant = -1;
                    }
                    sp4 = 0;
                }
            }
        }
    }

    if ((u8)boss->unk1D == 0) {
        if (CURRENT_GAME_MODE == GAME_MODE_5) {
            if (gStageData.playerIndex != PLAYER_1) {
                gCurTask->main = sub_806C12C;
                return FALSE;
            } else {
                sub_8027674(1U, 0U);
            }
        }

        sub_806CA28(boss);
        return TRUE;
    }

return_0:
    return FALSE;
}

// TODO: Fake-match, using screenX, as command result because of reg-swaps
AnimCmdResult sub_806BC50(EggWheeler *boss)
{
    AnimCmdResult acmdRes;
    Sprite *s;
    SpriteTransform *tf;
    u32 var_r0;
    s32 screenX, screenY;
    s32 sx, sy;
    s32 x, y;

    if (boss->unk23 != 0) {
        boss->unk23--;
    }

    screenX = I(boss->unk0) - gCamera.x;
    screenY = I(boss->unk4) - gCamera.y;
    s = (Sprite *)&boss->sprEggman;
    tf = &boss->tf;

    if (boss->unk21 != 0) {
        s->frameFlags |= 0x40000;
    } else {
        s->frameFlags &= ~0x40000;
    }
    s->x = screenX;
    s->y = screenY;
    tf->rotation = (boss->unk2C >> 4);
    tf->x = s->x;
    tf->y = s->y;
    TransformSprite(s, tf);
    sx = s->x;
    x = gCamera.x;
    x = Q(x + sx);
    sy = s->y;
    y = gCamera.y;
    y = Q(y + sy);
    sub_8004D68(x, y);
    screenX = UpdateSpriteAnimation(s);
    DisplaySprite(s);

    if ((screenX == ACMD_RESULT__ENDED) && (s->variant != gUnknown_080D5780[1].variant)) {
        s->anim = gUnknown_080D5780[1].anim;
        s->variant = gUnknown_080D5780[1].variant;
        s->prevVariant = -1;
    }

    return screenX;
}

void CreateBoss2Entrance(u8 *out, u8 *vram)
{
    Sprite *s;
    s16 temp_r1;
    s16 temp_r1_2;
    s16 temp_r1_3;
    Boss2Entrance *temp_r4;

    temp_r4 = TASK_DATA(TaskCreate(Task_Boss2Entrance, sizeof(Boss2Entrance), 0x2100U, 0U, TaskDestructor_Boss2Entrance));
    temp_r4->data = out;
    temp_r4->unk8 = 0x700;
    temp_r4->unkC = -0x3200;
    temp_r4->dx = (gCamera.maxX - gCamera.minX);
    s = (Sprite *)&temp_r4->s;
    s->tiles = VramMalloc(18);
    s->anim = ANIM_BREAKABLE_WALL_2;
    s->variant = 3;
    s->prevVariant = -1;
    s->x = gCamera.minX - gCamera.x;
    s->x += I(temp_r4->unk8);
    s->y = gCamera.minY + ((gCamera.maxY - gCamera.minY) >> 1);
    s->y = s->y - gCamera.y;
    s->y += I(temp_r4->unkC);
    s->oamFlags = 0x580;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0x1400;
    s->hitboxes[0].index = -1;
    UpdateSpriteAnimation(s);
}

void Task_Boss2Entrance(void)
{
    Sprite *temp_r0_2;
    s16 temp_r2_2;
    s16 temp_r2_3;
    s16 temp_r2_4;
    s32 temp_r0;
    u8 *temp_r2;
    Boss2Entrance *temp_r1 = TASK_DATA(gCurTask);

    if (*temp_r1->data == 1) {
        if (temp_r1->unkC < -Q(25)) {
            temp_r1->unkC += Q(1);
        } else {
            temp_r1->unkC = -Q(25);
            *temp_r1->data = 2;
        }
    }
    temp_r0_2 = (Sprite *)&temp_r1->s;
    temp_r0_2->x = gCamera.minX - gCamera.x;
    temp_r0_2->x += I(temp_r1->unk8);
    temp_r0_2->y = gCamera.minY + ((gCamera.maxY - gCamera.minY) >> 1);
    temp_r0_2->y -= gCamera.y;
    temp_r0_2->y += I(temp_r1->unkC);
    DisplaySprite(temp_r0_2);

    if (*temp_r1->data == 3) {
        gCurTask->main = sub_806BE5C;
    }
}

void sub_806BE5C(void)
{
    Sprite *s;
    s16 temp_r2;
    s16 temp_r2_2;
    s16 temp_r2_3;
    Boss2Entrance *temp_r0 = TASK_DATA(gCurTask);

    s = (Sprite *)&temp_r0->s;
    s->x = gCamera.minX - gCamera.x;
    s->x += I(temp_r0->unk8);
    s->y = gCamera.minY + ((s32)(gCamera.maxY - gCamera.minY) >> 1);
    s->y -= gCamera.y;
    s->y += ((s32)temp_r0->unkC >> 8);
    DisplaySprite(s);

    // TODO: This is an odd compare...
    if (temp_r0->s.x < (u32)-temp_r0->dx) {
        TaskDestroy(gCurTask);
    }
}

void CreateBoss2Exit(u8 *out, u8 *vram)
{
    Sprite *s;
    s16 temp_r1;
    s16 temp_r1_2;
    s16 temp_r1_3;
    Boss2Exit *strc = TASK_DATA(TaskCreate(Task_Boss2ExitInit, sizeof(Boss2Exit), 0x2100U, 0U, TaskDestructor_Boss2Exit));

    strc->data = out;
    strc->unk8 = -Q(8);
    strc->unkC = -Q(50);
    s = (Sprite *)&strc->s;
    s->tiles = VramMalloc(18);
    s->anim = ANIM_BREAKABLE_WALL_2;
    s->variant = 3;
    s->prevVariant = 0xFF;
    s->x = gCamera.minX - gCamera.x;
    s->x += I(strc->unk8);
    s->y = gCamera.minY + ((s32)(gCamera.maxY - gCamera.minY) >> 1);
    s->y = s->y - gCamera.y;
    s->y += I(strc->unkC);
    s->oamFlags = 0x580;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0x1000;
    s->hitboxes[0].index = -1;
    UpdateSpriteAnimation(s);
}

void Task_Boss2ExitInit(void)
{
    Sprite *temp_r0_2;
    s32 camMinY;
    s32 camMaxY;
    s32 temp_r2_2;
    s32 temp_r2_3;
    s32 temp_r2_4;
    s32 temp_r0;
    u8 *temp_r2;
    Boss2Exit *strc = TASK_DATA(gCurTask);

    if (*strc->data == 1) {
        if (strc->unkC < -Q(25)) {
            strc->unkC += Q(1);
        } else {
            strc->unkC = -Q(25);
            *strc->data = 2;
        }
    }
    temp_r0_2 = (Sprite *)&strc->s;
    temp_r2_2 = gCamera.maxX - gCamera.x;
    temp_r0_2->x = temp_r2_2;
    temp_r0_2->x = temp_r2_2 + ((s32)strc->unk8 >> 8);
    camMinY = gCamera.minY;
    camMaxY = gCamera.maxY;
    temp_r0_2->y = camMinY + ((s32)(camMaxY - camMinY) >> 1);
    temp_r0_2->y -= gCamera.y;
    temp_r0_2->y += I(strc->unkC);
    DisplaySprite(temp_r0_2);

    if (*strc->data == 3) {
        gCurTask->main = sub_806C004;
    }
}

void sub_806C004(void)
{
    Sprite *temp_r0_2;
    s32 camMinY;
    s32 camMaxY;
    s32 temp_r2;
    s32 temp_r2_2;
    Boss2Exit *strc = TASK_DATA(gCurTask);

    temp_r0_2 = (Sprite *)&strc->s;
    temp_r2 = gCamera.maxX - gCamera.x;
    temp_r0_2->x = temp_r2;
    temp_r0_2->x = temp_r2 + ((s32)strc->unk8 >> 8);
    camMinY = gCamera.minY;
    camMaxY = gCamera.maxY;
    temp_r0_2->y = camMinY + ((s32)(camMaxY - camMinY) >> 1);
    temp_r0_2->y -= gCamera.y;
    temp_r0_2->y += I(strc->unkC);
    DisplaySprite(temp_r0_2);
    if (sub_806D17C(strc) == 1) {
        *strc->data = 4;
        TaskDestroy(gCurTask);
    }
}

// (81.69%) https://decomp.me/scratch/WJSVH
NONMATCH("asm/non_matching/game/bosses/boss_2__sub_806C06C.inc", void sub_806C06C(Boss2Exit *strc))
{
    s32 temp_r7;
    s32 temp_r8;
    s32 var_r1_2;
    u32 temp_r0;
    u8 var_r1;
    u8 var_r5;
    Sprite *s = (Sprite *)&strc->s;
    Player *p = NULL;

    temp_r8 = s->x + gCamera.x;
    temp_r7 = s->y + gCamera.y;
    for (var_r5 = 0; var_r5 < 2; var_r5++) {
        p = GET_SP_PLAYER_V0(var_r5);
        if (sub_802C080(p) || !sub_8020950(s, temp_r8, temp_r7, p, 0)) {
            continue;
        } else {
            goto if2;
        }

    check : {
        if (I(strc->unk8) == 4) {
            p->qWorldX -= Q(1);
        } else {
            p->qWorldX += Q(1);
        }

        continue;
    }

    if2:
        if (!sub_8020950(s, temp_r8, temp_r7, p, 0)) {
            goto check;
        }
    }
}
END_NONMATCH

// (93.64%) https://decomp.me/scratch/mnvfv
NONMATCH("asm/non_matching/game/bosses/boss_2__sub_806C12C.inc", void sub_806C12C(void))
{
    Vec2_32 sp10;
    Player *temp_r1;
    Player *temp_r1_2;
    Sprite *temp_r5;
    s32 temp_r0;
    EggWheeler *boss = TASK_DATA(gCurTask);
    s32 unk2C;
    s32 x, y;

    boss->player->moveState |= MOVESTATE_IGNORE_INPUT;
    boss->partner->moveState |= MOVESTATE_IGNORE_INPUT;
    x = ((s32)boss->unk0 >> 8) - gCamera.x;
    sp10.x = x;
    y = ((s32)boss->unk4 >> 8) - gCamera.y;
    sp10.y = y;
    boss->unk48.x = x << 8;
    boss->unk48.y = y << 8;
    unk2C = (boss->unk2C >> 4);
    sa2__sub_8003EE4(unk2C, 0x100, 0x100, 0x28, 0x28, sp10.x, sp10.y, gBgAffineRegs);
    temp_r5 = (Sprite *)&boss->sprBody;
    temp_r5->x = 0x28;
    temp_r5->y = 0x28;
    UpdateSpriteAnimation_BG(temp_r5);
    sub_80BE46C(temp_r5);
    sub_806BC50(boss);
}
END_NONMATCH

// (96.61%) https://decomp.me/scratch/zI0v8
NONMATCH("asm/non_matching/game/bosses/boss_2__sub_806C1C8.inc", void sub_806C1C8(void))
{
    Vec2_32 sp10;
    Player *temp_r1_2;
    Player *temp_r1_3;
    Sprite *sprBody;
    Sprite *s2;
    s32 temp_r0;
    s32 temp_r1;
    s8 temp_r0_2;
    u8 var_r1;
    s32 v;
    EggWheeler *boss = TASK_DATA(gCurTask);

    sp10.x = ((s32)boss->unk0 >> 8) - gCamera.x;
    sp10.y = ((s32)boss->unk4 >> 8) - gCamera.y;
    boss->unk48.x = Q(sp10.x);
    boss->unk48.y = Q(sp10.y);
    v = (boss->unk2C >> 4);
    sa2__sub_8003EE4(v, 0x100, 0x100, 0x28, 0x28, sp10.x, sp10.y, gBgAffineRegs);
    sprBody = &boss->sprBody;
    sprBody->x = 0x28;
    sprBody->y = 0x28;
    UpdateSpriteAnimation_BG((Sprite *)sprBody);
    sub_80BE46C(sprBody);
    sub_806BC50(boss);
    for (var_r1 = 0; var_r1 < 4; var_r1++) {
        gPlayers[var_r1].idleAndCamCounter = TIME(0, 6);
    }

    if (sub_806CFD4(boss) == 1) {
        s32 x, y;
        boss->unk0 = (gCamera.x + 0x78) << 8;
        boss->unk44 = 0;
        boss->unk40 = 0;
        boss->unk38 = 0x200;
        boss->unk3C = 0;
        boss->unk24 = 1;
        boss->unk2A = 0;
        boss->unk17 = 0;
        x = (((s32)boss->unk0 >> 8) - gCamera.x);
        y = (((s32)boss->unk4 >> 8) - gCamera.y);
        boss->unk48.x = Q(x);
        boss->unk48.y = Q(y);
        boss->unk16 = 1;
        s2 = (Sprite *)&boss->sprEggman;
        s2->anim = gUnknown_080D5780[4].anim;
        s2->variant = gUnknown_080D5780[4].variant;
        s2->prevVariant = -1;
        gCurTask->main = sub_806C2F8;
    }
    temp_r1_2 = boss->player;
    temp_r1_2->moveState |= 0x08000000;
    temp_r1_3 = boss->partner;
    temp_r1_3->moveState |= 0x08000000;
}
END_NONMATCH

void sub_806C2F8()
{
    s8 temp_r0;
    EggWheeler *boss = TASK_DATA(gCurTask);
    u8 var_r1;

    for (var_r1 = 0; var_r1 < NUM_MULTI_PLAYER_CHARS; var_r1++) {
        gPlayers[var_r1].idleAndCamCounter = TIME(0, 6);
    }

    if (++boss->unk18 > 5U) {
        sub_8078920((Sprite *)&boss->sprExplosion, &boss->unk48, &boss->unk16);
        boss->unk18 = 0;
        boss->unk19 = (u8)boss->unk19 + 1;
    }
    if (boss->unk19 > 5U) {
        gCurTask->main = sub_806C370;
    }
}

// (89.26%) https://decomp.me/scratch/BFDSd
NONMATCH("asm/non_matching/game/bosses/boss_2__sub_806C370.inc", void sub_806C370(void))
{
    Vec2_32 sp10;
    Vec2_32 sp18;
    Vec2_32 sp20;
    Sprite *temp_r4;
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r1;
    s32 temp_r1_3;
    s32 temp_r2;
    s32 temp_r2_2;
    s32 temp_r3;
    s32 temp_r3_2;
    s32 temp_r4_2;
    u16 temp_r0_3;
    u8 temp_r1_2;
    u8 var_r1;
    void (*var_r0)();
    EggWheeler *boss = TASK_DATA(gCurTask);

    sp10.x = I(boss->unk0) - gCamera.x;
    temp_r0 = I(boss->unk4) - gCamera.y;
    sp10.y = temp_r0;
    boss->unk48.x = Q(sp10.x);
    boss->unk48.y = Q(temp_r0);

    for (var_r1 = 0; var_r1 < 4; var_r1++) {
        gPlayers[var_r1].idleAndCamCounter = TIME(0, 6);
    }

    temp_r1 = ((s32)boss->unk0 >> 8) - gCamera.x;
    sp18.x = temp_r0_2;
    temp_r0_2 = ((s32)boss->unk4 >> 8) - gCamera.y;
    sp18.y = temp_r0_2;
    boss->unk48.x = temp_r1 << 8;
    boss->unk48.y = temp_r0_2 << 8;
    sa2__sub_8003EE4((u16)((u16)boss->unk2C >> 4), 0x100, 0x100, 0x28, 0x28, sp18.x, sp18.y, gBgAffineRegs);
    temp_r4 = &boss->sprBody;
    temp_r4->x = 0x28;
    temp_r4->y = 0x28;
    UpdateSpriteAnimation_BG(temp_r4);
    sub_80BE46C(temp_r4);
    sub_806BC50(boss);
    boss->unk2C -= 0xE0;
    if (boss->unk2C > 0x3FF0) {
        boss->unk2C = 0x3FF0;
    }
    sub_806C9C4(boss);

    if (sp10.y > 10) {
        sub_806C5D4(boss);
    }
    if (sub_806C6FC(boss) == 1) {
        temp_r4_2 = boss->unk3C;
        if (temp_r4_2 != 0) {
            gCurTask->main = sub_806C4F8;
        } else {
            temp_r2 = -SIN_24_8(boss->unk1F * 4);
            temp_r3 = +COS_24_8(boss->unk1F * 4);
            temp_r2_2 = boss->unk0 + (temp_r2 << 5) + (temp_r2 * 4) + (temp_r2 * 2);
            sp20.x = temp_r2_2;
            temp_r3_2 = boss->unk4 + (temp_r3 << 5) + (temp_r3 * 4) + (temp_r3 * 2);
            sp20.y = temp_r3_2;
            temp_r1_3 = temp_r2_2 >> 8;
            sp20.x = temp_r1_3;
            boss->unk4 += (s16)(sa2__sub_801F07C(temp_r3_2 >> 8, temp_r1_3, 0, 8, (u8 *)temp_r4_2, sa2__sub_801EE64) << 8);
            boss->unk2A = (s16)temp_r4_2;
            gCurTask->main = sub_806C7B0;
        }
    }
}
END_NONMATCH

// (90.00%) https://decomp.me/scratch/8LnyE
NONMATCH("asm/non_matching/game/bosses/boss_2__sub_806C4F8.inc", void sub_806C4F8(void))
{
    Sprite *temp_r4;
    s32 temp_r0;
    s32 temp_r1;
    u16 temp_r0_2;
    EggWheeler *boss = TASK_DATA(gCurTask);
    u8 var_r1;

    for (var_r1 = 0; var_r1 < 4; var_r1++) {
        gPlayers[var_r1].idleAndCamCounter = TIME(0, 6);
    }

    temp_r1 = ((s32)boss->unk0 >> 8) - gCamera.x;
    temp_r0 = ((s32)boss->unk4 >> 8) - gCamera.y;
    boss->unk48.x = temp_r1 << 8;
    boss->unk48.y = temp_r0 << 8;
    sa2__sub_8003EE4((u16)((u16)boss->unk2C >> 4), 0x100, 0x100, 0x28, 0x28, temp_r1, temp_r0, gBgAffineRegs);
    temp_r4 = &boss->sprBody;
    temp_r4->x = 0x28;
    temp_r4->y = 0x28;
    UpdateSpriteAnimation_BG((Sprite *)temp_r4);
    sub_80BE46C((Sprite *)temp_r4);
    sub_806BC50(boss);
    boss->unk2C -= 0xE0;
    if (boss->unk2C > 0x3FF0U) {
        boss->unk2C = 0x3FF0;
    }
    sub_806C9C4(boss);
    if (sub_806CF70(boss) == 1) {
        gCurTask->main = sub_806C370;
    }
}
END_NONMATCH

// (81.96%) https://decomp.me/scratch/6YEoJ
NONMATCH("asm/non_matching/game/bosses/boss_2__sub_806C5D4.inc", void sub_806C5D4(EggWheeler *boss))
{
    Unknown sp8;
    s32 sp10;
    s32 temp_r0;
    s32 temp_r2;
    s32 temp_r2_2;
    s32 temp_r3;
    s32 temp_r3_2;
    s32 temp_r3_3;
    s32 temp_r6;
    s32 var_r0;
    s32 var_r0_2;
    s8 temp_sb;

    sp8.unk0 = 0;
    sp8.unk4 = 0;
    temp_r2 = -SIN_24_8(boss->unk1F * 4);
    temp_r3 = +COS_24_8(boss->unk1F * 4);
    sp8.unk0 = boss->unk0 + (temp_r2 << 5) + (temp_r2 * 4) + (temp_r2 * 2);
    sp8.unk4 = boss->unk4 + (temp_r3 << 5) + (temp_r3 * 4) + (temp_r3 * 2);
    asm("");
    sp8.unk0 >>= 8;
    sp8.unk8 = sp8.unk0;
    temp_sb = (u8)sa2__sub_801F07C(temp_r6, sp8.unk8, 0, -8, NULL, sa2__sub_801ED24);
    sa2__sub_801F07C(temp_r6, sp8.unk8, 0, 8, NULL, sa2__sub_801ED24);
    temp_r2_2 = boss->unk0 >> 8;
    if ((s32)(temp_r2_2 - 30) < (s32)gCamera.x) {
        boss->unk38 = +ABS(boss->unk38);
        boss->unk0 += Q(temp_sb);
        CreateScreenShake(0x800U, 0x20U, 0U, -1U, 0x51U);
    } else if ((s32)(temp_r2_2 + 0x1E) > (s32)(gCamera.x + 0xF0)) {
        boss->unk38 = -ABS(boss->unk38);
        boss->unk0 += Q(-temp_sb);
        CreateScreenShake(0x800U, 0x20U, 0U, -1U, 0x51U);
    }

    boss->unk38 += boss->unk40;
    boss->unk0 += boss->unk38;
}
END_NONMATCH

// (94.31%) https://decomp.me/scratch/BeEwS
NONMATCH("asm/non_matching/game/bosses/boss_2__sub_806C6FC.inc", u32 sub_806C6FC(EggWheeler *boss))
{
    s32 temp_r0_3;
    s32 temp_r1;
    s32 temp_r4;
    s8 temp_r0;
    u16 temp_r0_2;
    u8 var_r6;

    var_r6 = 0;
    if ((s32)(I(boss->unk4) - gCamera.y) > 0x14) {
        var_r6 = gCamera.maxY - ((boss->unk4 >> 8) + 0x30);
    }
    temp_r0 = (s8)var_r6;
    if ((s32)temp_r0 < -1) {
        s32 val;
        boss->unk4 += Q(temp_r0);
        boss->unk24 = 1;
        val = gUnknown_080D57C0[boss->unk2A];
        boss->unk3C = (val << 8) - (val << 9);
        boss->unk44 = 0;
        temp_r0_2 = (u16)boss->unk2A;
        if (boss->unk2A < 4) {
            boss->unk2A++;
        }
        CreateScreenShake(0x800U, 0x20U, 0U, -1U, 0x91U);
        return 1U;
    }
    boss->unk44 += ((s8)(u8)boss->unk24 * 4);
    boss->unk3C += boss->unk44;
    if (boss->unk3C > 0x600) {
        boss->unk3C = 0x600;
    }
    boss->unk4 += boss->unk3C;
    return 0U;
}
END_NONMATCH

// (94.02%) https://decomp.me/scratch/RoamL
NONMATCH("asm/non_matching/game/bosses/boss_2__sub_806C7B0.inc", void sub_806C7B0(void))
{
    Vec2_32 sp10;
    Sprite *temp_r4;
    s32 temp_r0;
    s32 temp_r1;
    u8 temp_r0_2;
    u8 var_r1;
    EggWheeler *boss = TASK_DATA(gCurTask);
    s32 x, y;

    x = (((s32)boss->unk0 >> 8) - gCamera.x);
    y = (((s32)boss->unk4 >> 8) - gCamera.y);
    boss->unk48.x = Q(x);
    boss->unk48.y = Q(y);

    for (var_r1 = 0; var_r1 < 4; var_r1++) {
        gPlayers[var_r1].idleAndCamCounter = TIME(0, 6);
    }

    sp10.x = ((s32)boss->unk0 >> 8) - gCamera.x;
    sp10.y = ((s32)boss->unk4 >> 8) - gCamera.y;
    boss->unk48.x = sp10.x << 8;
    boss->unk48.y = sp10.y << 8;
    sa2__sub_8003EE4((u16)((u16)boss->unk2C >> 4), 0x100, 0x100, 0x28, 0x28, sp10.x, sp10.y, gBgAffineRegs);
    temp_r4 = &boss->sprBody;
    temp_r4->x = 0x28;
    temp_r4->y = 0x28;
    UpdateSpriteAnimation_BG((Sprite *)temp_r4);
    sub_80BE46C((Sprite *)temp_r4);
    boss->unk16 = 0;

    if (boss->unk17 == 0) {
        boss->unk2A = 0;
        boss->unk18 = 0;
        CreateScreenShake(0x800U, 0x20U, 0U, -1U, 0x51U);
        sub_80789EC((Sprite *)&boss->sprEggman, &boss->unk48, &boss->unk16);
        gDispCnt &= 0xFBFF;
        gCurTask->main = sub_806C8BC;
    }
}
END_NONMATCH

void sub_806C8BC(void)
{
    s8 temp_r0;
    u16 temp_r0_2;
    u8 var_r1;
    EggWheeler *boss = TASK_DATA(gCurTask);
    s32 x, y;

    x = (((s32)boss->unk0 >> 8) - gCamera.x);
    y = (((s32)boss->unk4 >> 8) - gCamera.y);
    boss->unk48.x = Q(x);
    boss->unk48.y = Q(y);
    var_r1 = 0;
    do {
        gPlayers[var_r1].idleAndCamCounter = TIME(0, 6);
        var_r1 += 1;
    } while ((u32)var_r1 <= 3U);
    if (++boss->unk18 > 5U) {
        if (boss->unk2A <= 1U) {
            boss->unk2A++;
            sub_80789EC((Sprite *)&boss->sprExplosion, &boss->unk48, &boss->unk16);
            boss->unk18 = 0;
        }
    }
    if ((u32)(u8)boss->unk16 <= 1U) {
        UpdateSpriteAnimation(&boss->sprExplosion);
        return;
    }
    m4aSongNumStart(0x221U);
    gCurTask->main = sub_806C970;
}

void sub_806C970(void)
{
    EggWheeler *boss = TASK_DATA(gCurTask);
    u8 var_r3;

    var_r3 = 0;
    do {
        gPlayers[var_r3].idleAndCamCounter = TIME(0, 6);
        var_r3 += 1;
    } while ((u32)var_r3 <= 3U);
    boss->unk2E = 0;
    boss->unk1B = 3;
    boss->unk1C = 3;
    gCurTask->main = sub_806B788;
}

void sub_806C9C4(EggWheeler *boss)
{
    s32 x = (I(boss->unk0) - gCamera.x);
    s32 y = (I(boss->unk4) - gCamera.y);

    boss->unk48.x = Q(x);
    boss->unk48.y = Q(y);

    if (++boss->unk2E > gUnknown_080D57C5[boss->unk17]) {
        boss->unk2E = 0;
        if (++boss->unk17 < 4) {
            sub_80781C0(&boss->unk48, &boss->unk17);
            return;
        }
        boss->unk17 = 3;
    }
}

void sub_806CA28(EggWheeler *boss)
{
    Player *p;
    u32 var_r1;
    u8 var_r5;
    Sprite *s;

    p = NULL;
    boss->unk2E = 0x12C;
    for (var_r5 = 0; var_r5 < NUM_SINGLE_PLAYER_CHARS; var_r5++) {
        p = GET_SP_PLAYER_V1(var_r5);
        if (!(p->moveState & 0x100)) {
            Player_8005380(p);
            p->moveState |= 0x08000000;
        }
    }

    s = (Sprite *)&boss->sprEggman;
    s->anim = (u16)gUnknown_080D5780[4].anim;
    s->variant = (u8)gUnknown_080D5780[4].variant;
    s->prevVariant = -1;
}

// (98.76%) https://decomp.me/scratch/7MGp4
NONMATCH("asm/non_matching/game/bosses/boss_2__sub_806CAA4.inc", s32 sub_806CAA4(Strc_806CAA4 *arg0))
{
    Sprite *temp_r8;
    u8 var_sl;
    Player *p = NULL;
    s32 sp8 = 0;
    s32 x = I(arg0->unk10);
    s32 y = I(arg0->unk14);
    x += Q(arg0->unkC);
    y += Q(arg0->unkE);
    temp_r8 = arg0->s;
    sub_8004D68(x << 8, y << 8);

    for (var_sl = 0; var_sl < 2; var_sl++) {
        p = GET_SP_PLAYER_V0(var_sl);
        if (!(p->moveState & 0x01000000)) {
            if (((p->charFlags.character) == CREAM) && (sub_805C510(temp_r8) == 1)) {
                sp8 = 1;
            }
            if (!sub_802C080(p)) {
                if (sub_8020700(temp_r8, x, y, 1, p, 0) != 0) {
                    if (p->framesInvincible == 0) {
                        sub_8020CE0(temp_r8, x, y, 0, p);
                        sub_8020CE0(temp_r8, x, y, 1, p);
                    }
                } else {
                    if (sub_8020700(temp_r8, x, y, 0, p, 1)) {
                        if (I(p->qWorldX) < x) {
                            arg0->unkA = +1;
                        } else {
                            arg0->unkA = -1;
                        }
                        if (I(p->qWorldY) < y) {
                            arg0->unkB = +1;
                        } else {
                            arg0->unkB = -1;
                        }

                        sub_806CCB0(p);
                        arg0->playerIndex = (var_sl == 0) ? gStageData.playerIndex : p->charFlags.partnerIndex;

                        sp8 = 1;
                    } else if (sub_8020700(temp_r8, x, y, 0, p, 0) != 0) {
                        if (p->framesInvincible == 0) {
                            sub_8020CE0(temp_r8, x, y, 0, p);
                            sub_8020CE0(temp_r8, x, y, 1, p);
                        } else {
                            if (I(p->qWorldX) < x) {
                                arg0->unkA = +1;
                            } else {
                                arg0->unkA = -1;
                            }
                            if (I(p->qWorldY) < y) {
                                arg0->unkB = +1;
                            } else {
                                arg0->unkB = -1;
                            }
                            sub_806CCB0(p);
                            if (var_sl == 0) {
                                arg0->playerIndex = gStageData.playerIndex;
                            } else {
                                arg0->playerIndex = p->charFlags.partnerIndex;
                            }
                            sp8 = 1;
                        }
                    } else if ((sub_8020700(temp_r8, x, y, 1, p, 1) != 0) && (p->framesInvincible == 0)) {
                        sub_8020CE0(temp_r8, x, y, 0, p);
                        sub_8020CE0(temp_r8, x, y, 1, p);
                    }
                }
            }
        }
    }
    return sp8;
}
END_NONMATCH

void sub_806CCB0(Player *p) {
    EggWheeler *boss = TASK_DATA(gCurTask);

    if (p->moveState & 4) {
        s32 dx = I(p->qWorldX) - I(boss->unk0);
        s32 dy = I(p->qWorldY) - I(boss->unk4);
        s16 angle = sa2__sub_8004418(dy, dx);
        if (COS(angle) < 0) {
            if (p->qSpeedGround >= 0) {
                p->qSpeedGround = -(p->qSpeedGround >> 1);
            }
            if (p->qSpeedAirX >= 0) {
                p->qSpeedAirX = -(p->qSpeedAirX >> 1);
            }
        } else {
            if (p->qSpeedGround < 0) {
                p->qSpeedGround = -(p->qSpeedGround >> 1);
            }
            if (p->qSpeedAirX < 0) {
                p->qSpeedAirX = -(p->qSpeedAirX >> 1);
            }
        }

        if (ABS(p->qSpeedGround) > 0x300) {
            if (p->qSpeedGround >= 0) {
                p->qSpeedGround = +0x300;
            } else {
                p->qSpeedGround = -0x300;
            }
        }

        if (ABS(p->qSpeedAirX) > 0x300) {
            if ((s32) p->qSpeedAirX >= 0) {
                p->qSpeedAirX = +0x300;
            } else {
                p->qSpeedAirX = -0x300;
            }
        }
        if (SIN(angle) < 0) {
            p->qSpeedAirY = -0x300;
        } else {
            p->qSpeedAirY = +0x200;
        }
        Player_800DB30(p);
    }
}

// TODO: Fake-match
void sub_0806CDB8(u8 *arg0, s16 unused) {
    EggWheeler *temp_r4 = TASK_DATA(gStageData.taskBoss);
#ifndef NON_MATCHING
    register s32 temp_r2 asm("r2") = arg0[2];
#else
    s32 temp_r2 = arg0[2];
#endif
    s32 temp_r1;
    u16 uhh;
    temp_r1 = 0x7F;
    temp_r1 &= temp_r2;
    uhh = (arg0[3] | (arg0[4] << 8));

    switch (temp_r1) {
        case 1: {
            temp_r4->me.d.sData[4] = -1;
            temp_r4->unk1D = 0U;
            sub_806CA28(temp_r4);
            gStageData.taskBoss->main = sub_806C1C8;
        } break;

        case 3:
        case 4: {
            temp_r1 = temp_r4->unk1D;
            if (temp_r1 != (u8)uhh) {
                temp_r4->unk25 = 1;
            }
        } break;
    }
}

void Task_Boss2Init(void) {
    EggWheeler *boss = TASK_DATA(gCurTask);

    if (*boss->unk10 == 3) {
        TaskDestroy(gCurTask);
        return;
    } else if (sub_8079FFC()) {
        gCurTask->main = sub_806CE74;
    } else {
        gCurTask->main = Boss2_TransitionToIntro;
    }
}

void sub_806CE74(void) {
    EggWheeler *boss = TASK_DATA(gCurTask);

    if (*boss->unk10 == 3) {
        TaskDestroy(gCurTask);
        return;
    } else if(*boss->unk10 == 2) {
        if (sub_807A074() != 0) {
            gCurTask->main = Boss2_TransitionToIntro;
        }
    }
}

void sub_806CEB8(void) {
    EggWheeler *boss = TASK_DATA(gCurTask);

    VramFree(boss->sprEggman.tiles);
    *boss->unk10 = 0;
}

void TaskDestructor_Boss2(Task *t) {

}

void sub_806CEE8(EggWheeler *boss) {
    if (boss->unk20 == 1) {
        if (boss->unk38 > 0) {
            sub_806B484(boss);            
        } else {
            sub_806B5A8(boss);
        }
    } else if(boss->unk20 == 0) {
        if (boss->unk38 > 0) {
            sub_806B5A8(boss);            
        } else {
            sub_806B484(boss);
        }
    } else if(boss->unk20 == 2) {
        if (boss->unk3C > 0) {
            sub_806B5A8(boss);
        } else {
            sub_806B484(boss);            
        }
    } else if(boss->unk20 == 3) {
        if (boss->unk3C > 0) {
            sub_806B484(boss);
        } else {
            sub_806B5A8(boss);            
        }
    }
}

bool32 sub_806CF38(EggWheeler *boss) {
    EnemyUnknownStruc0 sp0;
    sp0.unk4 = sub_806B6C8(boss);
    sp0.spr = (Sprite*)&boss->sprEggman;
    sp0.posX = boss->unk48.x;
    sp0.posY = boss->unk48.y;
    sp0.regionX = 0;
    sp0.regionY = 0;
    sp0.me = 0;
    sp0.meX = 0;
    return sub_805C280(&sp0);
}

// Fake-match
bool32 sub_806CF70(EggWheeler *boss)
{
    s8 var_r6 = 0;
#ifndef NON_MATCHING
    register s32 r1 asm("r1");
    register s32 r3 asm("r3");
    register struct Camera *cam asm("r5");
    r1 = boss->unk4;
    asm("mov %0, %1" : "=r"(r3) : "r"(r1));
#else
    s32 r1;
    s32 r3;
    struct Camera *cam;
    r1 = boss->unk4;
    r3 = r1;
    ;
#endif
    r3 >>= 8;
    r1 >>= 8;
    cam = &gCamera;

    r1 -= cam->y;

    if (r1 > 10) {
        s32 r0 = cam->maxY;
        r1 = r3;
        r1 += 0x30;
        var_r6 = r0 - r1;
    }
    if (r3 > 0xA) {
        sub_806C5D4(boss);
    }
    if (var_r6 < 0) {
        return TRUE;
    } else {
        boss->unk44 += ((s8)(u8)boss->unk24 * 4);
        boss->unk3C += boss->unk44;
        boss->unk4 += boss->unk3C;
        return 0U;
    }
}


// (87.12%) https://decomp.me/scratch/kYVcQ
NONMATCH("asm/non_matching/game/bosses/boss_2__sub_806CFD4.inc", bool32 sub_806CFD4(EggWheeler *boss))
{
    s32 y = (((s32)boss->unk4 >> 8) - gCamera.y);

    y <<= 8;
    if ((y <= -Q(120)) || (y = y - Q(4), (y < -Q(120)))) {
        y = -Q(120);
        boss->unk4 = Q(gCamera.y) + y;
        return 1U;
    }
    boss->unk4 = Q(gCamera.y) + y;
    return 0U;
}
END_NONMATCH


#if 01
void sub_806D01C(EggWheeler *boss) {
    if (((u32)PseudoRandom32() >> 8) & 1) {
        boss->unk24 = +1;
        if ((u8) boss->unk1D == 1) {
            boss->unk40 = -0x700;
        } else {
            boss->unk40 = -0x100;
        }
    } else {
        boss->unk24 = -1;
        if (boss->unk1D == 1) {
            boss->unk40 = -0x700;
        } else {
            boss->unk40 = -0x100;
        }
    }
}


#else
void sub_806D07C(EggWheeler *boss)
{
    Sprite *temp_r4;
    Vec2_32 pos;
    u16 angle;

    pos.x = I(boss->unk0) - gCamera.x;
    pos.y = I(boss->unk4) - gCamera.y;
    boss->unk48.x = pos.x << 8;
    boss->unk48.y = pos.y << 8;
    angle = boss->unk2C >> 4;
    sa2__sub_8003EE4(angle, 0x100, 0x100, 0x28, 0x28, pos.x, pos.y, gBgAffineRegs);
    temp_r4 = (Sprite *)&boss->sprBody;
    temp_r4->x = 40;
    temp_r4->y = 40;
    UpdateSpriteAnimation_BG(temp_r4);
    sub_80BE46C(temp_r4);
}

void sub_806D0E8(EggWheeler *boss) {
    s32 temp_r1 = I(boss->unk0);
    s32 temp_r0;
    Sprite *s;
    temp_r1 -= gCamera.x;
    temp_r0 = I(boss->unk4);
    temp_r0 -= gCamera.y;
    boss->unk48.x = Q(temp_r1);
    boss->unk48.y = Q(temp_r0);
    sa2__sub_8003EE4((u16) ((u16) boss->unk2C >> 4), 0x100, 0x100, 0x28, 0x28,
                     temp_r1,
                     temp_r0, gBgAffineRegs);
    s = &boss->sprBody;
    s->x = 0x28;
    s->y = 0x28;
    UpdateSpriteAnimation_BG(s);
    sub_80BE46C(s);
}

void TaskDestructor_Boss2Entrance(Task *t) {
    Boss2Entrance *strc = TASK_DATA(t);
    VramFree(strc->s.tiles);
}

void TaskDestructor_Boss2Exit(Task *t) {
    Boss2Exit *strc = TASK_DATA(t);
    VramFree(strc->s.tiles);
}

bool32 sub_806D17C(Boss2Exit *arg0) {
    if (arg0->unkC > -Q(70)) {
        arg0->unkC -= Q(1);
        return 0; 
    } else {
        return 1;
    }
}
#endif

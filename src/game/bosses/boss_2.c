#include "global.h"
#include "core.h"
#include "trig.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "game/save.h"
#include "game/stage.h"
#include "game/shared/stage/music_manager.h"
#include "game/interactables/blue_red_button.h"
#include "constants/animations.h"
#include "constants/interactables.h"
#include "constants/songs.h"

typedef struct {
    /* 0x0C */ s32 unk0;
    /* 0x0C */ s32 unk4;
    /* 0x0C */ s32 unk8;
    /* 0x0C */ s32 unkC;
    /* 0x10 */ u8 *unk10;
    /* 0x14 */ s8 unk14;
    /* 0x15 */ s8 unk15;
    /* 0x16 */ s8 unk16;
    /* 0x17 */ s8 unk17;
    /* 0x18 */ s8 unk18;
    /* 0x19 */ s8 unk19;
    /* 0x1A */ s8 unk1A;
    /* 0x1B */ s8 unk1B;
    /* 0x1C */ s8 unk1C;
    /* 0x1D */ s8 unk1D;
    /* 0x1E */ u8 unk1E;
    /* 0x1F */ s8 unk1F;
    /* 0x20 */ s8 unk20;
    /* 0x21 */ s8 unk21;
    /* 0x22 */ s8 unk22;
    /* 0x23 */ s8 unk23;
    /* 0x24 */ s8 unk24;
    /* 0x25 */ s8 unk25;
    /* 0x26 */ s8 unk26;
    /* 0x27 */ s8 unk27;
    /* 0x28 */ s16 unk28;
    /* 0x2A */ s16 unk2A;
    /* 0x2C */ s16 unk2C;
    /* 0x2E */ s16 unk2E;
    /* 0x30 */ u16 unk30;
    /* 0x18 */ u8 filler32[0x2];
    /* 0x34 */ u8 *vram34;
    /* 0x38 */ s32 unk38;
    /* 0x3C */ s32 unk3C;
    /* 0x40 */ s32 unk40;
    /* 0x44 */ s32 unk44;
    /* 0x48 */ s32 unk48;
    /* 0x4C */ s32 unk4C;
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

void Task_Boss2Init(void);
void Task_806AC7C(void);
void Task_806AD04(void);
void Task_806ADDC(void);
void Task_806AEDC(void);
void Task_CreatePlatformButton(void);
void TaskDestructor_Boss2(struct Task *t);
void sub_806AA40(EggWheeler *boss);
void sub_806AAA4(EggWheeler *boss);
void sub_806B094(EggWheeler *boss);
AnimCmdResult sub_806BC50(EggWheeler *boss);
void sub_806CEE8(EggWheeler *boss);
void sub_806D07C(EggWheeler *boss);
void CreateBoss2Entrance(u8 *out, u8 *vram);
void CreateBoss2Exit(u8 *out, u8 *vram);

extern void sub_807A4A8(void);
extern void SetFixedRandomIfTimeAttackMode(void);
extern const TileInfo2 gUnknown_080D5780[8];

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
    boss->unk48 = Q(DISPLAY_CENTER_X);
    boss->unk4C = Q(DISPLAY_CENTER_Y);

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
    temp_r4->x = I(boss->unk48);
    temp_r4->y = I(boss->unk4C);
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

// (99.53%) https://decomp.me/scratch/mo9Hu
NONMATCH("asm/non_matching/game/bosses/boss_2__Task_806AD04.inc", void Task_806AD04(void))
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
        boss->unk20 = 0;
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
END_NONMATCH

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

#include "global.h"
#include "core.h"
#include "flags.h"
#include "color.h"
#include "multi_sio_stuff.h"
#include "lib/m4a/m4a.h"
#include "game/save.h"
#include "game/stage.h"
#include "constants/songs.h"

typedef struct {
    /* 0x00 */ u8 *unk0;
    /* 0x04 */ u8 unk4;
    /* 0x05 */ u8 unk5;
    /* 0x05 */ u16 unk6;
    /* 0x00 */ u8 filler8[0x4];
    /* 0x00 */ s32 unkC;
    /* 0x00 */ s32 unk10;
    /* 0x14 */ Sprite spr14;
    /* 0x14 */ Sprite spr3C;
} Code_2_0__64; /* 0x64 */

typedef struct {
    /* 0x00 */ u8 unk0[4];
    /* 0x04 */ u8 unk4;
    /* 0x04 */ s16 unk6;
    /* 0x04 */ s16 unk8;
    /* 0x04 */ s16 unkA;
    /* 0x0C */ u8 fillerC[0x4];
    /* 0x10 */ Vec2_32 unk10;
    /* 0x10 */ Vec2_32 unk18;
    /* 0x10 */ Vec2_32 unk20;
    /* 0x10 */ Vec2_32 unk28;
    /* 0x04 */ u8 filler30[0x540];
} Code_2_0__570; /* 0x570 */

typedef struct {
    /* 0x00 */ u8 *unk0; // TODO: previously set as (Code_2_0__64 *), but changed for matching
    /* 0x04 */ u8 unk4;
    /* 0x05 */ u8 unk5;
    /* 0x06 */ u16 unk6;
    /* 0x08 */ u16 unk8;
    /* 0x0A */ u16 unkA;
    /* 0x0C */ u8 *vramC;
    /* 0x0A */ s32 unk10;
    /* 0x0A */ s32 unk14;
    /* 0x0A */ s32 unk18;
    /* 0x0A */ s32 unk1C;
    /* 0x0A */ s32 unk20;
    /* 0x0A */ s32 unk24;
    /* 0x0A */ s32 unk28;
    /* 0x0A */ s32 unk2C;
    /* 0x0A */ s32 unk30;
    /* 0x34 */ Sprite spr34;
    /* 0x5C */ Sprite spr5C;
    /* 0x84 */ Sprite spr84;
    /* 0xAC */ Sprite sprAC;
} Code_2_1; /* 0xD4 */

void sub_809D5B8(u8 *someData, u8 *vram); // prev. void sub_809D5B8(Code_2_0__64 *someStruct, u8 *vram);
void sub_809D27C(u8 *vram, void *someStruct);
void sub_809D6A0(Code_2_1 *strc);
void Task_D4_809D810(void);
void Task_D4_809D960(void);
void Task_D4_809DA18(void);
void Task_D4_809DB74(void);
void Task_D4_809DCA4(void);
void Task_D4_809E778(void);
void sub_809DE9C(Code_2_1 *unused);
void sub_809DFAC(Code_2_1 *strc);
void sub_809E018(Code_2_1 *strc);
void sub_809E078(Code_2_0__570 *strc);
void Task_809E0D4(Code_2_0__570 *strc570);
void sub_809E7DC(Code_2_1 *strc);
s32 sub_809E7F8(Code_2_1 *strc);
void TaskDestructor_809E858(Task *t);
void sub_80A1A4C(u8 errorCode);
bool32 sub_809E828(Code_2_1 *strc);

#if 0 // M2C
void sub_809D5B8(u8 *someData, u8 *vram, Code_2_1 *strc);
void Task_D4_809D810(Code_2_1 *strc);
void Task_D4_809D960(Code_2_1 *strc);
void Task_D4_809DA18(Code_2_1 *strc);
void Task_D4_809DB74(Code_2_1 *strc);
void Task_D4_809DCA4(Code_2_1 *strc);
void Task_D4_809E778(Code_2_1 *strc);
#endif

extern s16 sub_802610C();
extern VsRecords *sub_8001C30(u32 param0, u16 *param1);
extern const u8 gUnknown_030010AC[4];

extern const ColorRaw gUnknown_080D97F8[10 * PALETTE_LEN_4BPP];
extern const ColorRaw gUnknown_080D9898[4 * PALETTE_LEN_4BPP];
extern const TileInfo2 gUnknown_080D9738[48];
extern const u8 gUnknown_080D961D[NUM_CHARACTERS];

void sub_809D5B8(u8 *someData, u8 *vram)
{
    Code_2_1 *strc = TASK_DATA(TaskCreate(Task_D4_809D810, sizeof(Code_2_1), 0x2100U, 0U, TaskDestructor_809E858));
    strc->vramC = vram;
    strc->unk0 = someData;
    strc->unk5 = 0;
    strc->unk6 = 0;
    strc->unk8 = 0;
    strc->unkA = 0;
    strc->unk10 = Q(160);
    strc->unk18 = 0;
    strc->unk1C = +Q(120);
    strc->unk20 = -Q(50);
    strc->unk2C = -Q(120);
    strc->unk30 = +Q(80);
    strc->unk24 = -Q(50);
    strc->unk28 = +Q(80);
    sub_809D6A0(strc);

    gWinRegs[2] = (I(strc->unk18) * WIN_RANGE(1, 1)) + WIN_RANGE(0, I(strc->unk10));
    gDispCnt |= DISPCNT_BG1_ON;
    gBgPalette[0] = 0;
    gFlags |= FLAGS_UPDATE_BACKGROUND_PALETTES;

    CpuFastSet(&gUnknown_080D97F8, &OBJ_PLTT[0 * PALETTE_LEN_4BPP], (20 * sizeof(ColorRaw)));
    CpuFastSet(&gUnknown_080D9898, &gObjPalette[7 * PALETTE_LEN_4BPP], (4 * sizeof(ColorRaw)));
    CpuFastSet(&gUnknown_080D97F8, &gObjPalette[0 * PALETTE_LEN_4BPP], (20 * sizeof(ColorRaw)));

    gFlags |= FLAGS_UPDATE_SPRITE_PALETTES;
}

void sub_809D6A0(Code_2_1 *strc)
{
    u8 lang = LOADED_SAVE->language;
    s32 lang4;

    {
        Sprite *s = &strc->spr34;
        s->tiles = strc->vramC;
        strc->vramC += gUnknown_080D9738[lang4 = lang * 4].numTiles * TILE_SIZE_4BPP;
        s->anim = gUnknown_080D9738[lang * 4].anim;
        s->variant = gUnknown_080D9738[lang * 4].variant;
        s->prevVariant = -1;
        s->x = I(strc->unk1C);
        s->y = I(strc->unk20);
        s->oamFlags = 0x180;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0x80;
        UpdateSpriteAnimation(s);
    }

    {
        Sprite *s = &strc->spr5C;
        s->tiles = strc->vramC;
        strc->vramC += gUnknown_080D9738[lang4 + 1].numTiles * TILE_SIZE_4BPP;
        s->anim = gUnknown_080D9738[lang4 + 1].anim;
        s->variant = gUnknown_080D9738[lang4 + 1].variant;
        s->prevVariant = -1;
        s->x = I(strc->unk24);
        s->y = I(strc->unk28);
        s->oamFlags = 0x180;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }

    {
        Sprite *s = &strc->spr84;
        s->tiles = strc->vramC;
        strc->vramC += gUnknown_080D9738[lang4 + 2].numTiles * TILE_SIZE_4BPP;
        s->anim = gUnknown_080D9738[lang4 + 2].anim;
        s->variant = gUnknown_080D9738[lang4 + 2].variant;
        s->prevVariant = -1;
        s->x = I(strc->unk24);
        s->y = I(strc->unk28);
        s->oamFlags = 0x180;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }

    {
        Sprite *s = &strc->sprAC;
        s->tiles = strc->vramC;
        strc->vramC += gUnknown_080D9738[3].numTiles * TILE_SIZE_4BPP;
        s->anim = gUnknown_080D9738[3].anim;
        s->variant = gUnknown_080D9738[3].variant;
        s->prevVariant = -1;
        s->x = I(strc->unk2C);
        s->y = I(strc->unk30);
        s->oamFlags = 0x180;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }
}

void Task_D4_809D810(void)
{
    s32 temp_r0;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r1_3;
    u8 temp_r5;
    u8 var_r6;
    Code_2_1 *strc;
    union MultiSioData *send = &gMultiSioSend;

    temp_r5 = gStageData.playerIndex;
    var_r6 = 0;
    if (sub_802610C() < 0) {
        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        gBgSpritesCount = 0;
        PAUSE_GRAPHICS_QUEUE();
        sub_80A1A4C(3);
        return;
    }

    strc = TASK_DATA(gCurTask);

    if (temp_r5 != 0) {
        send->pat0.unk0 = 0x6611;
    }

    sub_809E7DC(strc);

    if (strc->unkA == 0) {
        gBldRegs.bldCnt = 0x3FFF;
        gDispCnt |= DISPCNT_WIN0_ON | DISPCNT_WIN1_ON;
        gWinRegs[WINREG_WIN0H] = WIN_RANGE(0, WIN_GET_HIGHER(-1));
        gWinRegs[WINREG_WIN1H] = WIN_RANGE(0, WIN_GET_HIGHER(-1));
        gWinRegs[WINREG_WIN1V] = WIN_RANGE(0, WIN_GET_HIGHER(-1));
        gWinRegs[WINREG_WININ] = 0x3112;
        gWinRegs[WINREG_WINOUT] = 0;
        gBldRegs.bldAlpha = 0x1F;
        gBldRegs.bldY = 6;
        strc->unk8 = 0x600;
        strc->unkA = 1;
    }

    if (strc->unk18 <= Q(68)) {
        strc->unk18 += Q(4);
        if (strc->unk18 >= Q(68)) {
            strc->unk18 = Q(68);
            var_r6 += 1;
        }
    }

    if (strc->unk10 >= Q(24)) {
        strc->unk10 -= Q(8);
        if (strc->unk10 <= Q(24)) {
            strc->unk10 = Q(24);
            var_r6 += 1;
        }
    }

    gWinRegs[WINREG_WIN0V] = (I(strc->unk18) * WIN_RANGE(1, 1)) + WIN_RANGE(0, I(strc->unk10));

    if (var_r6 == 2) {
        gBldRegs.bldCnt = 0x3FFF;
        gWinRegs[WINREG_WININ] = 0x3112;
        gBldRegs.bldAlpha = 0x1F;
        gBldRegs.bldY = 6;
        strc->unkA = 0;
        gCurTask->main = Task_D4_809D960;
    }
}

void Task_D4_809D960(void)
{
    union MultiSioData *send = &gMultiSioSend;
    u8 playerIndex = gStageData.playerIndex;
    u8 var_r5 = 0;

    if (sub_802610C() < 0) {
        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        gBgSpritesCount = 0;
        PAUSE_GRAPHICS_QUEUE();
        sub_80A1A4C(3);
        return;
    }

    if (playerIndex != 0) {
        send->pat0.unk0 = 0x6611;
    }

    {
        Code_2_1 *strc = TASK_DATA(gCurTask);
        sub_809E7DC(strc);
        sub_809DFAC(strc);
        sub_809E018(strc);

        if (sub_809E7F8(strc) == 1) {
            var_r5 += 1;
        }
        if (sub_809E828(strc) == 1) {
            var_r5 += 1;
        }
        if (var_r5 == 2) {
            gCurTask->main = Task_D4_809DA18;
        }
    }
}

void Task_D4_809DA18(void)
{
    union MultiSioData *send = &gMultiSioSend;
    s16 playerIndex = gStageData.playerIndex;

    if (sub_802610C() < 0) {
        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        gBgSpritesCount = 0;
        PAUSE_GRAPHICS_QUEUE();
        sub_80A1A4C(3);
        return;
    }
    {
        Code_2_1 *strc = TASK_DATA(gCurTask);
        sub_809E7DC(strc);
        sub_809DFAC(strc);
        sub_809E018(strc);

        if (playerIndex != 0) {
            union MultiSioData *recv = gMultiSioRecv;
            if (recv->pat0.unk0 == 0x6612) {
                if (strc->unk5 == 1) {
                    m4aMPlayAllStop();
                    m4aSongNumStart(MUS_VS_BGM_5);
                }

                gCurTask->main = Task_D4_809DCA4;
            } else if (recv->pat0.unk0 != 0x6611) {
                if ((u8)recv->pat0.unk0 > 1U) {
                    strc->unk5 = 0;
                }
                strc->unk5 = (u8)recv->pat0.unk0;
                if (strc->unk5 > 1U) {
                    strc->unk5 = 0;
                }
                send->pat0.unk0 = (u16)strc->unk5;
            } else {
                send->pat0.unk0 = 0x6611;
            }
        } else {
            if (DPAD_LEFT & gRepeatedKeys) {
                m4aSongNumStart(SE_DPAD_SELECT);
                strc->unk5 = 0;
            }
            if (DPAD_RIGHT & gRepeatedKeys) {
                m4aSongNumStart(SE_DPAD_SELECT);
                strc->unk5 = 1;
            }
            send->pat0.unk0 = (u16)strc->unk5;
            if (!(B_BUTTON & gPressedKeys)) {
                if (!(A_BUTTON & gPressedKeys))
                    return;
            } else {
                strc->unk5 = 1;
            }

            if (strc->unk5 == 1) {
                m4aMPlayAllStop();
                m4aSongNumStart(MUS_VS_BGM_5);
            } else {
                m4aSongNumStart(SE_SELECT);
            }

            gCurTask->main = Task_D4_809DB74;
        }
    }
}

void Task_D4_809DB74(void)
{
    union MultiSioData *send = &gMultiSioSend;
    u8 sp0[3] = { 0 };
    u8 sp4[ARRAY_COUNT(sp0)] = { 0 };
    u8 var_r7 = 0;
    u8 var_r8 = 0;
    Code_2_1 *strc = TASK_DATA(gCurTask);
    u8 i;

    if (sub_802610C() < 0) {
        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        gBgSpritesCount = 0;
        PAUSE_GRAPHICS_QUEUE();
        sub_80A1A4C(3);
        return;
    }
    send->pat0.unk0 = strc->unk5;

    for (i = 0; i < ARRAY_COUNT(sp0); i++) {
        if (gPlayers[i].charFlags.someIndex == 3) {
            sp0[i] = 1;
            var_r8 += 1;
        }

        if (sp0[i] == 1) {
            union MultiSioData *recv = &gMultiSioRecv[i];
            if (recv->pat0.unk0 == strc->unk5) {
                sp4[i] = 1;
            }
        }

        if (sp0[i] != 0) {
            if ((sp4[i] != 0) && (sp0[i] == sp4[i])) {
                var_r7 += 1;
            }
        }
    }

    if (var_r7 == var_r8) {
        send->pat0.unk0 = 0x6612;
        gCurTask->main = Task_D4_809DCA4;
    }
}

void Task_D4_809DCA4(void)
{
    union MultiSioData *send = &gMultiSioSend;
    s16 temp_r4 = gStageData.playerIndex;
    u8 var_r7 = 0;
    u8 sp0[3] = { 0 };
    u8 sp4[ARRAY_COUNT(sp0)] = { 0 };
    u8 var_sb = 0;
    u8 var_r8 = 0;
    Code_2_1 *strc = TASK_DATA(gCurTask);
    union MultiSioData *recv;
    u8 i;

    if (sub_802610C() < 0) {
        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        gBgSpritesCount = 0;
        PAUSE_GRAPHICS_QUEUE();
        sub_80A1A4C(3);
        return;
    }
    if (temp_r4 == 0) {
        for (i = 0; i < ARRAY_COUNT(sp0); i++) {
            if (gPlayers[i].charFlags.someIndex == 3) {
                sp0[i] = 1;
                var_r8 += 1;
            }

            if (sp0[i] == 1) {
                recv = &gMultiSioRecv[i];
                if (recv->pat0.unk0 == 0x6612) {
                    sp4[i] = 1;
                }
            }

            if (sp0[i] != 0) {
                if ((sp4[i] != 0) && (sp0[i] == sp4[i])) {
                    var_sb += 1;
                }
            }
        }

        if (var_sb == var_r8) {
            var_r7 = 1;
        }
    } else {
        send->pat0.unk0 = 0x6612;
        recv = &gMultiSioRecv[0];
        if (recv->pat0.unk0 == 0x6612) {
            var_r7 = 1;
        }
    }

    if (var_r7 != 0) {
        if (strc->unk18 <= 0x5000) {
            if (strc->unk5 == 1) {
                strc->unk18 += Q(0.25);
            } else {
                strc->unk18 += Q(1.00);
            }
            if (strc->unk18 >= 0x5000) {
                strc->unk18 = 0x5000;
                var_r7 += 1;
            }
        }

        if (strc->unk10 >= 0) {
            if (strc->unk5 == 1) {
                strc->unk10 -= Q(0.5);
            } else {
                strc->unk10 -= Q(2);
            }
            if ((s32)strc->unk10 <= 0) {
                strc->unk10 = 0;
                var_r7 += 1;
            }
        }
        gWinRegs[2] = (I(strc->unk18) * WIN_RANGE(1, 1)) + WIN_RANGE(0, I(strc->unk10));
        if (var_r7 == 3) {
            if (strc->unk5 == 1) {
                *strc->unk0 = 0xB;
            } else {
                *strc->unk0 = 9;
            }
            gDispCnt &= ~0x200;
            gCurTask->main = Task_D4_809E778;
        }
    }
}

void sub_809DE9C(Code_2_1 *unused)
{
    s32 var_r4;
    s8 i;
    VsRecords *vsrec;
    s16 playerIndex = gStageData.playerIndex;

    switch (gStageData.unkB8) {
        case 0:
            var_r4 = playerIndex % 2u;
            break;
        case 1:
            var_r4 = gStageData.unkB8 & ~playerIndex;
            break;
        case 2:
            var_r4 = 2;
            break;
        default:
            return;
    }

    switch (var_r4) {
        case 0:
            if (LOADED_SAVE->vsWins < MAX_MULTIPLAYER_SCORE) {
                LOADED_SAVE->vsWins += 1;
            }
            break;
        case 1:
            if (LOADED_SAVE->vsLosses < MAX_MULTIPLAYER_SCORE) {
                LOADED_SAVE->vsLosses += 1;
            }
            break;
        case 2:
            if (LOADED_SAVE->vsDraws < MAX_MULTIPLAYER_SCORE) {
                LOADED_SAVE->vsDraws += 1;
            }
            break;
        default:
            return;
    }

    for (i = 3; i >= 0; i--) {
        if (GetBit(gUnknown_03001060.unk7, i) && ((playerIndex % 2u) != (i % 2u))) {
            vsrec = sub_8001C30(gUnknown_03001060.unkC[i], gUnknown_03001060.unk1C[i]);
            switch (var_r4) {
                case 0:
                    if (vsrec->losses < MAX_MULTIPLAYER_SCORE) {
                        vsrec->losses += 1;
                    }
                    break;
                case 1:
                    if (vsrec->wins < MAX_MULTIPLAYER_SCORE) {
                        vsrec->wins += 1;
                    }
                    break;
                case 2:
                    if (vsrec->draws < MAX_MULTIPLAYER_SCORE) {
                        vsrec->draws += 1;
                    }
                    break;
            }
        }
    }
}

void sub_809DFAC(Code_2_1 *strc)
{
    Sprite *s = &strc->sprAC;
    s->x = 100;
    s->y = 80;
    SPRITE_FLAG_CLEAR(s, X_FLIP);
    if (strc->unk5 == 0) {
        s->palId = 4;
    } else {
        s->palId = 0;
    }
    UpdateSpriteAnimation(s);
    DisplaySprite(s);

    s->x = 140;
    s->y = 80;
    SPRITE_FLAG_SET(s, X_FLIP);
    if (strc->unk5 == 0) {
        s->palId = 0;
    } else {
        s->palId = 4;
    }
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void sub_809E018(Code_2_1 *strc)
{
    {
        Sprite *s = &strc->spr5C;

        s->x = I(strc->unk24);
        s->y = I(strc->unk28);
        if (strc->unk5 == 0) {
            s->palId = 0;
        } else {
            s->palId = 2;
        }
        s->frameFlags = 0;
        DisplaySprite(s);
    }

    {
        Sprite *s = &strc->spr84;
        s->x = DISPLAY_WIDTH - I(strc->unk24);
        s->y = I(strc->unk28);
        if (strc->unk5 == 0) {
            s->palId = 2;
        } else {
            s->palId = 0;
        }
        s->frameFlags = 0;
        DisplaySprite(s);
    }
}

void sub_809E078(Code_2_0__570 *strc)
{
    u8 var_r2;

    strc->unkA = 0;
    strc->unk6 = 0;
    strc->unk8 = 0;
    strc->unk4 = 0;

    for (var_r2 = 0; var_r2 < ARRAY_COUNT(strc->unk0); var_r2++) {
        s32 index = gUnknown_030010AC[var_r2];
        strc->unk0[var_r2] = gUnknown_080D961D[index];
    }

    strc->unk10.x = -Q(130);
    strc->unk10.y = +Q(80);
    strc->unk20.x = -Q(130);
    strc->unk20.y = +Q(160);
    strc->unk18.x = +Q(370); // TODO: Q(DISPLAY_WIDTH + 130) ?
    strc->unk18.y = +Q(80);
    strc->unk28.x = +Q(370);
    strc->unk28.y = +Q(160); // TODO: Q(DISPLAY_HEIGHT) ?
}

#if 01
#else
void Task_570_809E0D4(void)
{
    s8 temp_r0;
    u16 temp_r4;
    u16 temp_r5;

    temp_r5 = gCurTask->data;
    temp_r4 = temp_r5;
    if ((s32)(sub_802610C() << 0x10) < 0) {
        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        gBgSpritesCount = 0;
        PAUSE_GRAPHICS_QUEUE();
        sub_80A1A4C(3);
        return;
    }
    sub_809C8C4(temp_r4);
    temp_r0 = sub_809C810(temp_r4);
    if (temp_r0 == 1) {
        temp_r4->unk4 = temp_r0;
        sub_809CC80(temp_r4->unkC, temp_r5 + 4, temp_r4->unk5);
        gCurTask->main = Task_570_809C620;
    }
}

void Task_570_809E164(void)
{
    u16 temp_r4;

    temp_r4 = gCurTask->data;
    if ((s32)(sub_802610C() << 0x10) < 0) {
        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        gBgSpritesCount = 0;
        PAUSE_GRAPHICS_QUEUE();
        sub_80A1A4C(3);
        return;
    }
    if (temp_r4->unk4 == 0xA) {
        if (temp_r4->unk5 != 0) {
            TaskDestroy(gCurTask);
            return;
        }
        sub_809E85C(0);
        TaskDestroy(gCurTask);
    }
}

void Task_60_809E1E8(void)
{
    s16 temp_r0;
    u16 temp_r1;
    u16 var_r0;
    u8 temp_r4;

    temp_r4 = gStageData.playerIndex;
    temp_r1 = gCurTask->data;
    sub_809E384(temp_r1);
    if (temp_r4 == 0) {
        var_r0 = sub_8025360();
    } else {
        var_r0 = sub_8025AA8();
    }
    temp_r0 = (s16)var_r0;
    if ((s32)temp_r0 < 0) {
        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        gBgSpritesCount = 0;
        PAUSE_GRAPHICS_QUEUE();
        sub_80A1A4C(3);
        return;
    }
    if (temp_r0 == 1) {
        **temp_r1 = 0xA;
        TaskDestroy(gCurTask);
    }
}

void TaskDestructor_809E280(void) { }

void Task_60_809E284(void)
{
    u16 temp_r1;
    u16 var_r0;
    u8 temp_r4;

    temp_r4 = gStageData.playerIndex;
    temp_r1 = gCurTask->data;
    sub_809E384(temp_r1);
    if (temp_r4 == 0) {
        var_r0 = sub_8025A90();
    } else {
        var_r0 = sub_80253CC();
    }
    if ((s32)(var_r0 << 0x10) < 0) {
        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        gBgSpritesCount = 0;
        PAUSE_GRAPHICS_QUEUE();
        sub_80A1A4C(3);
        return;
    }
    if (sub_809E354(temp_r1) == 1) {
        gCurTask->main = Task_60_809CA64;
    }
}

void Task_809E31C(void)
{
    u16 temp_r0;
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    temp_r0 = temp_r1->unk6 - 1;
    temp_r1->unk6 = temp_r0;
    if ((temp_r0 << 0x10) == 0) {
        *temp_r1->unk0 = 0xA;
        sub_808ADF0(1U);
        TaskDestroy(gCurTask);
    }
}

s32 sub_809E354(void *arg0)
{
    s32 temp_r0;
    s32 temp_r0_2;

    temp_r0 = arg0->unkC;
    if ((temp_r0 > 0x4FFF) || (temp_r0_2 = temp_r0 + 0x1000, arg0->unkC = temp_r0_2, (temp_r0_2 > 0x4FFF))) {
        arg0->unkC = 0x5000;
        return 1;
    }
    return 0;
}

void sub_809E384(void *arg0)
{
    Sprite *temp_r0;
    Sprite *temp_r0_2;

    temp_r0 = arg0 + 0x10;
    temp_r0->x = (s16)((s32)arg0->unk8 >> 8);
    temp_r0->y = (s16)((s32)arg0->unkC >> 8);
    DisplaySprite(temp_r0);
    temp_r0_2 = arg0 + 0x38;
    temp_r0_2->x = (s16)((s32)arg0->unk8 >> 8);
    temp_r0_2->y = (s16)((s32)arg0->unkC >> 8);
    DisplaySprite(temp_r0_2);
}

void TaskDestructor_809E3B4(void) { }

void Task_F4_809E3B8(void)
{
    u16 temp_r4;
    u8 temp_r0;

    temp_r4 = gCurTask->data;
    if ((s32)(sub_802610C() << 0x10) < 0) {
        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        gBgSpritesCount = 0;
        PAUSE_GRAPHICS_QUEUE();
        sub_80A1A4C(3);
        return;
    }
    sub_809CE58(temp_r4);
    if (sub_809CDC8(temp_r4) == 1) {
        temp_r0 = temp_r4->unk4;
        if (temp_r0 == 0) {
            sub_809C970(temp_r4->unk8, temp_r4->unk0);
        } else if (temp_r0 == 1) {
            sub_809CF04(temp_r4->unk8, temp_r4->unk0);
        }
        gCurTask->main = Task_809E458;
    }
}

void Task_809E458(void)
{
    u16 temp_r4;
    u8 temp_r0;

    temp_r4 = gCurTask->data;
    if ((s32)(sub_802610C() << 0x10) < 0) {
        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        gBgSpritesCount = 0;
        PAUSE_GRAPHICS_QUEUE();
        sub_80A1A4C(3);
        return;
    }
    sub_809CE58(temp_r4);
    temp_r0 = **temp_r4;
    switch (temp_r0) { /* irregular */
        case 10:
            TaskDestroy(gCurTask);
            return;
        case 0:
            TaskDestroy(gCurTask);
            return;
    }
}

void TaskDestructor_809E4DC(void) { }

void Task_809E4E0(void)
{
    u16 temp_r4;

    temp_r4 = gCurTask->data;
    if ((s32)(sub_802610C() << 0x10) < 0) {
        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        gBgSpritesCount = 0;
        PAUSE_GRAPHICS_QUEUE();
        sub_80A1A4C(3);
        return;
    }
    sub_809E5E4(temp_r4);
    if (sub_809E5AC(temp_r4) == 1) {
        if (temp_r4->unk4 == 1) {
            sub_809CFA8(temp_r4->unk8, temp_r4->unk0);
        } else {
            sub_809D27C(temp_r4->unk8, temp_r4->unk0);
        }
        gCurTask->main = Task_809E574;
    }
}

void Task_809E574(void)
{
    u16 temp_r4;
    u8 temp_r0;

    temp_r4 = gCurTask->data;
    sub_809E5E4(temp_r4);
    temp_r0 = **temp_r4;
    switch (temp_r0) { /* irregular */
        case 10:
            TaskDestroy(gCurTask);
            return;
        case 0:
            TaskDestroy(gCurTask);
            return;
    }
}

s32 sub_809E5AC(void *arg0)
{
    s32 temp_r0;
    s32 temp_r2;

    temp_r2 = arg0->unkC;
    if (temp_r2 <= 0x77FF) {
        temp_r0 = temp_r2 + 0x1000;
        arg0->unkC = temp_r0;
        if (temp_r0 > 0x7800) {
            arg0->unkC = 0x7800;
            return 1;
        }
        return 0;
    }
    arg0->unkC = 0x7800;
    return 1;
}

void sub_809E5E4(void *arg0)
{
    Sprite *temp_r4;

    temp_r4 = arg0 + 0x14;
    temp_r4->x = (s16)((s32)arg0->unkC >> 8);
    temp_r4->y = (s16)((s32)arg0->unk10 >> 8);
    temp_r4->frameFlags &= 0xFFFFFBFF;
    DisplaySprite(temp_r4);
    temp_r4->x = 0xF0 - ((s32)arg0->unkC >> 8);
    temp_r4->y = (s16)((s32)arg0->unk10 >> 8);
    temp_r4->frameFlags |= 0x400;
    DisplaySprite(temp_r4);
}

void TaskDestructor_809E630(void) { }

s32 sub_809E634(void *arg0)
{
    s32 temp_r0;
    s32 temp_r2;

    temp_r2 = arg0->unkC;
    if (temp_r2 <= 0x77FF) {
        temp_r0 = temp_r2 + 0x800;
        arg0->unkC = temp_r0;
        if (temp_r0 > 0x7800) {
            arg0->unkC = 0x7800;
            return 1;
        }
        return 0;
    }
    arg0->unkC = 0x7800;
    return 1;
}

void sub_809E66C(void *arg0)
{
    Sprite *temp_r2;

    temp_r2 = arg0 + 0x14;
    temp_r2->x = (s16)((s32)arg0->unkC >> 8);
    temp_r2->y = (s16)((s32)arg0->unk10 >> 8);
    DisplaySprite(temp_r2);
}

void TaskDestructor_809E688(void) { }

void Task_809E68C(void)
{
    u16 temp_r4;
    u8 temp_r0;

    temp_r4 = gCurTask->data;
    if ((s32)(sub_802610C() << 0x10) < 0) {
        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        gBgSpritesCount = 0;
        PAUSE_GRAPHICS_QUEUE();
        sub_80A1A4C(3);
        return;
    }
    temp_r0 = **temp_r4;
    switch (temp_r0) { /* irregular */
        case 10:
            TaskDestroy(gCurTask);
            return;
        case 0:
            TaskDestroy(gCurTask);
            return;
    }
}

s32 sub_809E708(void *arg0)
{
    s32 temp_r0;
    s32 temp_r2;

    temp_r2 = arg0->unkC;
    if (temp_r2 <= 0x27FF) {
        temp_r0 = temp_r2 + 0x800;
        arg0->unkC = temp_r0;
        if (temp_r0 > 0x2800) {
            arg0->unkC = 0x2800;
            return 1;
        }
        return 0;
    }
    arg0->unkC = 0x2800;
    return 1;
}

void sub_809E740(void *arg0)
{
    Sprite *temp_r0;
    Sprite *temp_r0_2;

    temp_r0 = arg0 + 0x14;
    temp_r0->x = (s16)((s32)arg0->unkC >> 8);
    temp_r0->y = (s16)((s32)arg0->unk10 >> 8);
    DisplaySprite(temp_r0);
    temp_r0_2 = arg0 + 0x3C;
    temp_r0_2->x = 0xF0 - ((s32)arg0->unkC >> 8);
    temp_r0_2->y = (s16)((s32)arg0->unk10 >> 8);
    DisplaySprite(temp_r0_2);
}

void TaskDestructor_809E774(void) { }

void Task_D4_809E778(Code_2_1 *strc)
{
    if (*strc->unk0 == 0xA) {
        if (strc->unk5 != 0) {
            gDispCnt &= 0x9FFF;
            sub_80AD9E4();
            TaskDestroy(gCurTask);
            return;
        }
        sub_809DE9C(strc);
        gStageData.gameMode = 6;
        CreateMultiPakConnectionCheck(0xFF);
        TaskDestroy(gCurTask);
    }
}

void sub_809E7DC(Code_2_1 *arg0)
{
    Sprite *temp_r2;

    temp_r2 = arg0 + 0x34;
    temp_r2->x = (s16)((s32)arg0->unk1C >> 8);
    temp_r2->y = (s16)((s32)arg0->unk20 >> 8);
    DisplaySprite(temp_r2);
}

s32 sub_809E7F8(Code_2_1 *strc)
{
    s32 temp_r0;
    s32 temp_r0_2;

    temp_r0 = strc->unk20;
    if ((temp_r0 > 0x31FF) || (temp_r0_2 = temp_r0 + 0x1000, strc->unk20 = temp_r0_2, (temp_r0_2 > 0x31FF))) {
        strc->unk20 = 0x3200;
        return 1;
    }
    return 0;
}

bool32 sub_809E828(Code_2_1 *strc)
{
    s32 temp_r0;
    s32 temp_r0_2;

    temp_r0 = strc->unk24;
    if ((temp_r0 > 0x3BFF) || (temp_r0_2 = temp_r0 + 0x1000, strc->unk24 = temp_r0_2, (temp_r0_2 > 0x3BFF))) {
        strc->unk24 = 0x3C00;
        return 1;
    }
    return 0;
}

void TaskDestructor_809E858(Task *t) { }
#endif

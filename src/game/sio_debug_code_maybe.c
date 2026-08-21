#include <stdio.h>
#include "global.h"
#include "core.h"
#include "lib/m4a/m4a.h"
#include "game/save.h"
#include "game/screen_fade.h"
#include "game/stage.h" // gStageData
#include "animation_commands_bg.h" // RenderText
#include "multi_sio_stuff.h"
#include "constants/characters.h"
#include "constants/songs.h"

typedef struct {
    /* 0x000 */ u8 filler0[0x10];
    /* 0x000 */ s16 unk10;
    /* 0x000 */ u8 filler12[0xFAE];
    /* 0xFC0 */ ScreenFade fade;
} SDC_FCC; /* 0xFCC */

typedef struct {
    /* 0x00 */ ScreenFade fade;
    /* 0x12 */ s16 unkC;
    /* 0x0E */ s8 unkE[4];
    /* 0x12 */ u8 unk12;
    /* 0x13 */ s8 unk13;
    /* 0x14 */ s8 unk14;
    /* 0x15 */ u8 unk15;
    /* 0x16 */ u8 unk16;
    /* 0x17 */ u8 unk17;
    /* 0x18 */ u8 unk18;
    /* 0x19 */ u8 unk19;
    /* 0x1C */ Background bg1C;
    /* 0x5C */ Background bg5C;
    /* 0x9C */ Sprite spr9C;
    /* 0xC4 */ Sprite sprC4;
} SDC_EC; /* 0xEC */

void CreateMultiPakConnectionCheck(u8);
void Task_FCC_808D00C(void);
void Task_EC_808D214(void);
void Task_EC_808D270(void);
void Task_EC_808D45C(void);
void sub_808D548(SDC_EC *strcEC, u8 arg1);
void sub_808D648(SDC_EC *arg0, s8 arg1);
void sub_808D5CC(SDC_EC *arg0, u8 arg1);
void sub_808D6BC(SDC_EC *arg0);
void Task_EC_808D718(void);
void Task_EC_808D7F0(void);
void Task_EC_808D988(void);
void Task_EC_808DA44(void);
void Task_EC_808DC38(void);
void Task_EC_808DCFC(void);
void Task_EC_808DD6C(void);
void Task_EC_808DEB8(void);
void Task_EC_808E068(void);
void Task_EC_808E2E8(void);
void Task_EC_808E430(void);
void Task_EC_808E7B0(void);
void Task_EC_808E864(void);
void Task_EC_808E8FC(void);
void Task_EC_808E9AC(void);
void Task_EC_808EA6C(void);
void Task_EC_808EB50(void);
void Task_FCC_808ECC4(void);
void Task_FCC_808ECF4(void);
void Task_EC_808ED60(void);
void Task_EC_808EDA8(void);
void Task_EC_808EDE4(void);
void Task_EC_808EE34(void);
void Task_EC_808EE8C(void);
void Task_EC_808EEB8(void);
void Task_EC_808EF14(void);
void nullsub_808EF98(void);
void nullsub_808EF94(void);

extern const u8 gUnknown_080D8F18[NUM_CHARACTERS];
s16 sub_8024A4C(u8 arg0);
s16 sub_8025908(u8 arg0);

extern s16 sub_80244E4(void);
extern s16 sub_80246B4(void);
extern s16 sub_8024AC0(u16);
extern void sub_80258FC();
extern void sub_80259EC();
extern void sub_80260F0(void);
extern void sub_802613C(void);
extern void sub_80258D4(void);
extern void MultiSio_SendPlayerName(void); // 0x080256E0
extern s16 sub_802440C();
extern s16 sub_8024584();
extern void sub_80C6168(void);

s16 sub_8024B84(u8 arg0);
s16 sub_8024F84(u8 arg0);
s16 sub_8025024(u8 arg0);
s16 sub_80259F8(u8 arg0);
s16 sub_8025948(u8 arg0);
extern s32 sub_8025998();
extern s16 sub_8025674();
extern s16 sub_8025B48();

extern void sub_80022E8(s16 level);

extern s16 sub_8024E1C(s16);
extern s16 sub_8024F1C(s16);
extern s16 sub_80250EC(s16);
extern s16 sub_80251F8(s16);
extern s16 sub_8025A90(void);
extern s16 sub_80253CC(void);
extern s16 sub_8025534(void);
extern s16 sub_8025614(void);
extern s16 sub_8025A38(void);
extern void sub_8027960(void);
extern s16 sub_8025360(void);
extern s16 sub_8025460(s16);
extern s16 sub_80255B0(void);
extern s16 sub_8025AA8(void);
extern void sub_808EBBC(void);
void LaunchChaoMenu(s16 arg0, u8 arg1);

extern u8 gUnknown_030010AC[4];
extern u8 gUnknown_080D6F00[3][4];
extern const char gStringSelectStage[];
extern const char gStringZoneNActN[];
extern const char gStringPressABtn[];
extern const char gStringPleaseWait[];
extern u8 gUnknown_082B5344[]; // NOTE: Not the actual pointer. Like SA1/SA2 the font was only included in debug builds.
extern const u8 gUnknown_080D6F0C[0x15];

extern const u16 gTilemapIdsConnectionStatus[];

extern TileInfo2 gUnknown_080D6898[6];
extern TileInfo2 gUnknown_080D68C8;
extern TileInfo2 gUnknown_080D6EE8[3];

extern void CreateCharacterSelectMultiplayer(SDC_EC *strcEC);

extern s32 sub_8024984(u8);
extern s32 sub_8024C68(u8);

extern u8 gUnknown_080D6EE0[NUM_CHARACTERS];
extern const u16 gCharacterSelectedVoices[NUM_CHARACTERS];

#ifdef M2C
void CreateMultiPakConnectionCheck(u8 arg0, SDC_EC *strcEC);
void Task_FCC_808D00C(SDC_FCC *strcFCC);
void Task_EC_808D214(SDC_EC *strcEC);
void Task_EC_808D270(SDC_EC *strcEC);
void Task_EC_808D45C(SDC_EC *strcEC);
void Task_EC_808D718(SDC_EC *strcEC);
void Task_EC_808D7F0(SDC_EC *strcEC);
void Task_EC_808D988(SDC_EC *strcEC);
void Task_EC_808DA44(SDC_EC *strcEC);
void Task_EC_808DC38(SDC_EC *strcEC);
void Task_EC_808DCFC(SDC_EC *strcEC);
void Task_EC_808DD6C(SDC_EC *strcEC);
void Task_EC_808DEB8(SDC_EC *strcEC);
void Task_EC_808E068(SDC_EC *strcEC);
void Task_EC_808E2E8(SDC_EC *strcEC);
void Task_EC_808E430(SDC_EC *strcEC);
void Task_EC_808E7B0(SDC_EC *strcEC);
void Task_EC_808E864(SDC_EC *strcEC);
void Task_EC_808E8FC(SDC_EC *strcEC);
void Task_EC_808E9AC(SDC_EC *strcEC);
void Task_EC_808EA6C(SDC_EC *strcEC);
void Task_EC_808EB50(SDC_EC *strcEC);
void Task_FCC_808ECC4(SDC_FCC *strcFCC);
void Task_FCC_808ECF4(SDC_FCC *strcFCC);
void Task_EC_808ED60(SDC_EC *strcEC);
void Task_EC_808EDA8(SDC_EC *strcEC);
void Task_EC_808EDE4(SDC_EC *strcEC);
void Task_EC_808EE34(SDC_EC *strcEC);
void Task_EC_808EE8C(SDC_EC *strcEC);
void Task_EC_808EEB8(SDC_EC *strcEC);
void Task_EC_808EF14(SDC_EC *strcEC);
#endif

void Task_FCC_808D00C(void)
{
    SDC_FCC *strcFCC = TASK_DATA(gCurTask);
    ScreenFade *fade;

    fade = &strcFCC->fade;
    if ((A_BUTTON | START_BUTTON) & gPressedKeys) {
        fade->window = 0;
        fade->flags = 1;
        fade->brightness = 0;
        fade->speed = 0x200;
        fade->bldCnt = 0xFF;
        fade->bldAlpha = 0;
        ScreenFadeUpdateValues(fade);

        gCurTask->main = Task_FCC_808ECF4;
    } else if (B_BUTTON & gPressedKeys) {
        m4aSongNumStart(SE_ABORT);
        strcFCC->unk10 = 2;
        fade->window = 0;
        fade->flags = 1;
        fade->brightness = 0;
        fade->speed = 0x200;
        fade->bldCnt = 0xFF;
        fade->bldAlpha = 0;
        ScreenFadeUpdateValues(fade);

        gCurTask->main = Task_FCC_808ECF4;
    } else if (0xC0 & gRepeatedKeys) {
        if (0x40 & gRepeatedKeys) {
            if (strcFCC->unk10 == 0) {
                strcFCC->unk10 = 2;
                return;
            }

            strcFCC->unk10 -= 1;
        } else if (0x80 & gRepeatedKeys) {
            if (strcFCC->unk10 == 2) {
                strcFCC->unk10 = 0;
                return;
            }

            strcFCC->unk10 += 1;
        }
    }
}

void CreateMultiPakConnectionCheck(u8 arg0)
{
    s32 sp4;
    s16 temp_r0_2;
    s16 var_r1;
    u16 temp_r0;
    u8 *temp_r2;
    u8 temp_r7;
    SDC_EC *strcEC;
    ScreenFade *fade;

    temp_r7 = arg0;
    gDispCnt = 0x1340;
    strcEC = TASK_DATA(TaskCreate(Task_EC_808D214, sizeof(SDC_EC), 0x1000U, 0U, NULL));
    fade = &strcEC->fade;
    fade->window = 0;
    fade->flags = 2;
    fade->brightness = 0;
    fade->speed = 0x200;
    fade->bldCnt = 0xFF;
    fade->bldAlpha = 0;
    ScreenFadeUpdateValues(fade);
    for (var_r1 = 0; var_r1 < 4; var_r1++) {
        strcEC->unkE[var_r1] = -1;
    }
    strcEC->unk13 = 0;
    strcEC->unk14 = 0;
    strcEC->unk17 = 0;
    strcEC->unk12 = 0;
    strcEC->unk16 = 1;
    strcEC->unkC = 0;
    strcEC->unk18 = LOADED_SAVE->language;
    strcEC->unk19 = temp_r7;
    if (temp_r7 != 0xFF) {
        sub_80C6168();
        sub_80258D4();
    } else {
        MultiSio_SendPlayerName();
    }

    DmaFill32(3, 0, BG_CHAR_ADDR_FROM_BGCNT(2), 0x40);

    gBgSprites_Unknown1[2] = 0;
    gBgSprites_Unknown2[2][0] = 0;
    gBgSprites_Unknown2[2][1] = 0;
    gBgSprites_Unknown2[2][2] = 0xFF;
    gBgSprites_Unknown2[2][3] = 0x40;
    gBgSprites_Unknown1[1] = 0;
    gBgSprites_Unknown2[1][0] = 0;
    gBgSprites_Unknown2[1][1] = 0;
    gBgSprites_Unknown2[1][2] = -1;
    gBgSprites_Unknown2[1][3] = 0x40;
    gBgSprites_Unknown1[0] = 0;
    gBgSprites_Unknown2[0][0] = 0;
    gBgSprites_Unknown2[0][1] = 0;
    gBgSprites_Unknown2[0][2] = -1;
    gBgSprites_Unknown2[0][3] = 0x40;
    sub_808D548(strcEC, 3);
    m4aMPlayAllStop();
    m4aSongNumStart(MUS_VS_MUSIC_1);
}

void Task_EC_808D214(void)
{
    SDC_EC *strcEC = TASK_DATA(gCurTask);
    ScreenFade *fade = &strcEC->fade;

    sub_808D5CC(strcEC, 0);

    if (strcEC->unkC == 0) {
        fade->window = 0;
        fade->flags = 2;
        fade->brightness = 0;
        fade->speed = 0x200;
        fade->bldCnt = 0xFF;
        fade->bldAlpha = 0;
        strcEC->unkC = 1;
    }

    if (UpdateScreenFade(fade) == SCREEN_FADE_COMPLETE) {
        gCurTask->main = Task_EC_808D270;
    }
}

void Task_EC_808D270(void)
{
    SDC_EC *strcEC = TASK_DATA(gCurTask);
    s16 var_r0;
    u16 var_r4;
    u8 playerIndex;
    void (*var_r0_2)(SDC_EC *);
    ScreenFade *fade = &strcEC->fade;
    s16 i;

    playerIndex = gStageData.playerIndex;
    var_r4 = 0;
    if (gStageData.playerIndex == 0) {
        var_r0 = sub_802440C();
    } else {
        var_r0 = sub_8024584();
    }
    if (var_r0 < 0) {
        sub_802613C();
        return;
    }

    for (i = 0; i < 4; i++) {
        if (GetBit(var_r0, i)) {
            var_r4 += 1;
        }
    }

    sub_808D648(strcEC, (s8)(var_r4 - 1));
    if (UpdateScreenFade(fade) == 0) {
        return;
    }
    if (playerIndex == 0) {
        if ((var_r0 == 3 && var_r4 == 2) || (var_r0 == 7 && var_r4 == 3) || (var_r0 == 15 && var_r4 == 4)) {
            var_r4 = 0;
            for (i = 0; i < 4; i++) {
                if (!GetBit(var_r0, i) && (((vu16 *)&REG_SIODATA32)[i] == 0)) {
                    var_r4 = 1;
#ifdef BUG_FIX
                    // NOTE: Just a small performance bug, but a bug none-the-less
                    break;
#endif
                }
            }

            if (var_r4 == 0) {
                sub_808D6BC(strcEC);
                if (8 & gPressedKeys) {
                    sub_80244E4();
                    m4aSongNumStart(MUS_VS_SUCCESS);
                    fade->window = 0;
                    fade->flags = 1;
                    fade->brightness = 0;
                    fade->speed = 0x200;
                    fade->bldCnt = 0xFF;
                    fade->bldAlpha = 0;
                    ScreenFadeUpdateValues(fade);
                    sub_808D548(strcEC, 4U);
                    sub_808D5CC(strcEC, 2);
                    strcEC->unkC = (u16)0;
                    gCurTask->main = Task_EC_808D45C;
                    return;
                }
            }
        }
    } else if (var_r0 & 0x10) {
        sub_80246B4();
        fade->window = 0;
        fade->flags = 1;
        fade->brightness = 0;
        fade->speed = 0x200;
        fade->bldCnt = 0xFF;
        fade->bldAlpha = 0;
        ScreenFadeUpdateValues(fade);
        m4aSongNumStart(MUS_VS_SUCCESS);
        sub_808D548(strcEC, 4U);
        sub_808D5CC(strcEC, 2);
        strcEC->unkC = 0;
        gCurTask->main = Task_EC_808D45C;
        return;
    }

    if ((B_BUTTON & gPressedKeys) && (strcEC->unk19 != 0xFF)) {
        m4aSongNumStart(SE_ABORT);
        sub_80260F0();
        fade->window = 0;
        fade->flags = 1;
        fade->brightness = 0;
        fade->speed = 0x200;
        fade->bldCnt = 0xFF;
        fade->bldAlpha = 0;
        ScreenFadeUpdateValues(fade);
        strcEC->unk17 = 0x26;
        gCurTask->main = Task_EC_808ED60;
    }
}

void Task_EC_808D45C(void)
{
    SDC_EC *strcEC = TASK_DATA(gCurTask);
    ScreenFade *fade = &strcEC->fade;
    s16 temp_r5;
    u16 var_r0;
    u8 temp_r7;

    temp_r7 = gStageData.playerIndex;
    if (temp_r7 == 0) {
        var_r0 = sub_80244E4();
    } else {
        var_r0 = sub_80246B4();
    }
    temp_r5 = (s16)var_r0;
    if ((s32)temp_r5 < 0) {
        sub_802613C();
        return;
    }
    if ((s32)(s16)strcEC->unkC <= 0x77) {
        strcEC->unkC += 1;
        return;
    }
    if (((UpdateScreenFade(fade) << 0x18) != 0) && (0x10 & temp_r5)) {
        if (temp_r7 == 0) {
            sub_80258FC();
        } else {
            sub_80259EC();
        }
        fade->window = 0;
        fade->flags = 2;
        fade->brightness = 0;
        fade->speed = 0x200;
        fade->bldCnt = 0xFF;
        fade->bldAlpha = 0;

        ScreenFadeUpdateValues(fade);
        DmaFill32(3, 0, BG_CHAR_ADDR_FROM_BGCNT(2), 0x40);

        gBgSprites_Unknown1[2] = 0;
        gBgSprites_Unknown2[2][0] = 0;
        gBgSprites_Unknown2[2][1] = 0;
        gBgSprites_Unknown2[2][2] = 0xFF;
        gBgSprites_Unknown2[2][3] = 0x40;
        gCurTask->main = Task_EC_808D718;
    }
}

void sub_808D548(SDC_EC *strcEC, u8 arg1)
{
    gBgCntRegs[1] = BGCNT_SCREENBASE(6) | BGCNT_CHARBASE(0) | BGCNT_PRIORITY(2);
    gDispCnt |= 0x200;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    {
        Background *bg = &strcEC->bg5C;
        bg->graphics.dest = (void *)BG_CHAR_ADDR(0);
        bg->graphics.anim = 0;
        bg->layoutVram = (u16 *)BG_SCREEN_ADDR(6);
        bg->unk18 = 0;
        bg->unk1A = 0;
        bg->tilemapId = gTilemapIdsConnectionStatus[arg1 + (strcEC->unk18 * 4)];
        bg->unk1E = 0;
        bg->unk20 = 0;
        bg->unk22 = 0;
        bg->unk24 = 0;
        bg->targetTilesX = 0x20;
        bg->targetTilesY = 0x20;
        bg->paletteOffset = 0;
        bg->flags = 1;
        DrawBackground(bg);
    }
}

void sub_808D5CC(SDC_EC *arg0, u8 arg1)
{

    gBgCntRegs[0] = BGCNT_SCREENBASE(14) | BGCNT_CHARBASE(1) | BGCNT_PRIORITY(3) | BGCNT_TXT256x256;
    gDispCnt |= DISPCNT_BG0_ON;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    {
        Background *bg = &arg0->bg1C;
        bg->graphics.dest = (void *)BG_CHAR_ADDR(1);
        bg->graphics.anim = 0;
        bg->layoutVram = (u16 *)BG_SCREEN_ADDR(14);
        bg->unk18 = 0;
        bg->unk1A = 0;
        bg->tilemapId = gTilemapIdsConnectionStatus[arg1];
        bg->unk1E = 0;
        bg->unk20 = 0;
        bg->unk22 = 0;
        bg->unk24 = 0;
        bg->targetTilesX = 256 / TILE_WIDTH;
        bg->targetTilesY = 256 / TILE_WIDTH;
        bg->paletteOffset = 0;
        bg->flags = 0;
        DrawBackground(bg);
    }
}

void sub_808D648(SDC_EC *arg0, s8 arg1)
{
    Sprite *s;
    void *temp_r0;

    if (arg1 > 0) {
        s = &arg0->sprC4;
        arg0->sprC4.tiles = OBJ_VRAM0 + (gUnknown_080D6898[arg0->unk18].numTiles << 5);
        s->anim = gUnknown_080D6EE8[arg1 - 1].anim;
        s->variant = gUnknown_080D6EE8[arg1 - 1].variant;
        s->prevVariant = 0xFF;
        s->x = 113;
        s->y = 103;
        s->oamFlags = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        s->hitboxes[0].index = -1;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

void sub_808D6BC(SDC_EC *arg0)
{
    Sprite *s = &arg0->spr9C;
    s->tiles = (u8 *)OBJ_VRAM0;
    s->anim = gUnknown_080D6898[arg0->unk18].anim;
    s->variant = gUnknown_080D6898[arg0->unk18].variant;
    s->prevVariant = 0xFF;
    s->x = 120;
    s->y = 0x8C;
    s->oamFlags = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0;
    s->hitboxes[0].index = -1;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void Task_EC_808D718(void)
{
    SDC_EC *strcEC = TASK_DATA(gCurTask);
    u8 *temp_r0;
    u8 *temp_r0_3;
    u8 temp_r4;
    u16 temp_r5;
    u8 var_r1;
    u8 var_r2;
    u8 var_r2_2;
    union MultiSioData *temp_r0_2;
    void (*var_r0)(SDC_EC *);
    union MultiSioData *send = &gMultiSioSend;

    temp_r5 = gStageData.playerIndex;
    CreateCharacterSelectMultiplayer(strcEC);
    send->pat0.unk0 = 0;
    send->pat0.unk2 = 0;
    send->pat0.unk3 = 0;
    send->raw[4] = 0;
    send->raw[5] = 0;
    send->pat1.unk6 = 0;
    send->pat3.unk8 = 0;
    send->pat0.unk8[2] = 0;
    send->pat0.unkE = 0;
    for (var_r2 = 0; var_r2 < 4; var_r2++) {
        send->pat3_0.unkF[var_r2] = -1;
    }

    for (var_r1 = 0; var_r1 < 4; var_r1++) {
        temp_r0_2 = &gMultiSioRecv[var_r1];
        temp_r0_2->pat0.unk0 = 0;
        temp_r0_2->pat0.unk2 = 0;
        temp_r0_2->pat0.unk3 = 0;
        temp_r0_2->raw[4] = 0;
        temp_r0_2->raw[5] = 0;
        temp_r0_2->pat1.unk6 = 0;
        temp_r0_2->pat3.unk8 = 0;
        temp_r0_2->pat0.unk8[2] = 0;
        temp_r0_2->pat0.unkE = 0;
        for (var_r2 = 0; var_r2 < 4; var_r2++) {
            temp_r0_2->pat3_0.unkF[var_r2] = -1;
        }
    }

    if ((s32)(s16)temp_r5 <= 1) {
        gCurTask->main = Task_EC_808D7F0;
    } else {
        gCurTask->main = Task_EC_808DA44;
    }
}

void Task_EC_808D7F0(void)
{
    SDC_EC *strcEC = TASK_DATA(gCurTask);
    ScreenFade *fade = &strcEC->fade;
    s16 i;
    s16 var_r0;
    union MultiSioData *temp_r0;
    s16 playerIndex = gStageData.playerIndex;
    if (playerIndex == 0) {
        var_r0 = sub_8025908(gUnknown_080D8F18[strcEC->unk13]);
    } else {
        var_r0 = sub_8024A4C(gUnknown_080D8F18[strcEC->unk13]);
    }
    if (var_r0 < 0) {
        sub_802613C();
        return;
    }

    for (i = 0; i < MULTI_SIO_PLAYERS_MAX; i++) {
        temp_r0 = &gMultiSioRecv[i];
        strcEC->unkE[i] = temp_r0->raw[4];
        gUnknown_03001060.unk4C[i] = temp_r0->pat3_0.unkF[i];
    }

    if ((UpdateScreenFade(fade) != 0) && (strcEC->unk16 != 0)) {
        if (A_BUTTON & gPressedKeys) {
            for (i = 0; i < MULTI_SIO_PLAYERS_MAX; i++) {
                if (gUnknown_03001060.unk4C[i] == gUnknown_080D8F18[strcEC->unk13]) {
                    return;
                }
            }
            if (i >= MULTI_SIO_PLAYERS_MAX) {
                if (playerIndex == 0) {
                    gUnknown_03001060.unk4C[playerIndex] = gUnknown_080D8F18[strcEC->unk13];
                    strcEC->unk17 = 0xC;
                    gCurTask->main = Task_EC_808DA44;
                } else {
                    gUnknown_03001060.unk4C[playerIndex] = gUnknown_080D8F18[strcEC->unk13];
                    strcEC->unk17 = 0xC;
                    gCurTask->main = Task_EC_808D988;
                }
                return;
            }
        } else if (DPAD_LEFT & gPressedKeys) {
            m4aSongNumStart(SE_CHARSELECT_SLIDE);
            if (strcEC->unk13 > 0) {
                strcEC->unk13 -= 1;
            } else {
                strcEC->unk13 = 4;
            }
        } else if (DPAD_RIGHT & gPressedKeys) {
            m4aSongNumStart(SE_CHARSELECT_SLIDE);
            if (strcEC->unk13 < 4) {
                strcEC->unk13 += 1;
            } else {
                strcEC->unk13 = 0;
            }
        }
        strcEC->unk12 = (u8)strcEC->unk13;
    }
}

void Task_EC_808D988(void)
{
    SDC_EC *strcEC = TASK_DATA(gCurTask);
    s32 temp_r0;
    s16 temp_r1_2;
    s16 var_r0_2;
    u16 temp_r1;
    s16 temp_r5 = gStageData.playerIndex;
    temp_r0 = sub_8024AC0(gUnknown_080D8F18[strcEC->unk13]);
    if (temp_r0 < 0) {
        sub_802613C();
        return;
    }
    if (temp_r0 == 1) {
        gUnknown_03001060.unk4C[temp_r5] = gUnknown_080D8F18[strcEC->unk13];
        gCurTask->main = Task_EC_808DA44;
    } else if (temp_r0 == 2) {
        strcEC->unk17 = 2;
        gUnknown_03001060.unk4C[temp_r5] = 0xFF;
        gCurTask->main = Task_EC_808D7F0;
    }
    for (var_r0_2 = 0; var_r0_2 < 4; var_r0_2++) {
        union MultiSioData *recv = gMultiSioRecv;
        u8 *src = &recv[var_r0_2].raw[4];
        strcEC->unkE[var_r0_2] = *src;
    }
}

// (77.57%) https://decomp.me/scratch/jdWlT
NONMATCH("asm/non_matching/game/siodbg__Task_EC_808DA44.inc", void Task_EC_808DA44(void))
{
    SDC_EC *strcEC = TASK_DATA(gCurTask);
    s16 temp_r0_2;
    s16 temp_r1_3;
    s16 temp_r1_4;
    s16 temp_r1_5;
    s16 temp_r2;
    s16 var_r2;
    s16 var_r2_2;
    s16 var_r0;
    const u16 *var_r0_2;
    u16 temp_r0;
    u16 temp_r1_2;
    u8 *temp_r1;
    s16 temp_r6 = gStageData.playerIndex;
    u8 var_r1;

    if (temp_r6 == 0) {
        var_r0 = sub_8024984(gUnknown_080D8F18[strcEC->unk13]);
    } else {
        var_r0 = sub_8024C68(gUnknown_080D8F18[strcEC->unk13]);
    }
    for (var_r2 = 0; var_r2 < 4; var_r2++) {
        strcEC->unkE[var_r2] = gMultiSioRecv[var_r2].pat3_0.unk4;
    }

    if (var_r0 < 0) {
        sub_802613C();
        return;
    }
    if (var_r0 == 2) {
        strcEC->unkC = 0x3C;
        if (temp_r6 == 0) {
            u8 index = gUnknown_03001060.unk4C[0];
            m4aSongNumStart(gCharacterSelectedVoices[gUnknown_080D6EE0[index]]);
            gCurTask->main = Task_EC_808DCFC;
            return;
        }
        if (temp_r6 == 1) {
            if (gUnknown_03001060.unk4C[1] == gMultiSioRecv->pat3_0.unk4) {
                strcEC->unk17 = 2;
                gUnknown_03001060.unk4C[1] = 0xFF;
                gCurTask->main = Task_EC_808D7F0;
                return;
            }
            gUnknown_03001060.unk4C[1] = gUnknown_080D8F18[strcEC->unk13];
            gUnknown_03001060.unk4C[0] = strcEC->unkE[0];
            var_r0_2 = &gCharacterSelectedVoices[gUnknown_080D6EE0[gUnknown_03001060.unk4C[1]]];
        } else {
            for (var_r2 = 0; var_r2 < 4; var_r2++) {
                gUnknown_03001060.unk4C[var_r2] = temp_r1[var_r2];
            }
            var_r0_2 = &gCharacterSelectedVoices[gUnknown_080D6EE0[(u8)gUnknown_03001060.unk1C[3][5]]];
        }
        m4aSongNumStart(*var_r0_2);
        strcEC->unk17 = 0xC;
        gCurTask->main = Task_EC_808DD6C;
    } else {
        if (temp_r6 == 2) {
            var_r1 = gMultiSioRecv->pat3_0.unk4;
            strcEC->unk12 = gUnknown_080D6EE0[var_r1];
        } else if (temp_r6 == 3) {
            var_r1 = gMultiSioRecv[1].pat3_0.unk4;
            strcEC->unk12 = gUnknown_080D6EE0[var_r1];
        }
        if (temp_r6 > 1) {
            UpdateScreenFade(&strcEC->fade);
        }
    }
}
END_NONMATCH

void Task_EC_808DC38(void)
{
    SDC_EC *strcEC = TASK_DATA(gCurTask);
    s16 temp_r0;
    s16 temp_r1_2;
    s16 var_r0_3;
    u16 temp_r1;
    s16 var_r0;
    s16 playerIndex = gStageData.playerIndex;

    if (playerIndex == 0) {
        var_r0 = sub_8025948(gUnknown_080D8F18[strcEC->unk13]);
    } else {
        var_r0 = sub_8024B84(gUnknown_080D8F18[strcEC->unk13]);
    }

    if (var_r0 < 0) {
        sub_802613C();
        return;
    }
    if (var_r0 == 1) {
        strcEC->unk17 = 2;
        gUnknown_03001060.unk4C[playerIndex] = 0xFF;
        gCurTask->main = Task_EC_808D7F0;
    } else if (var_r0 == 2) {
        gCurTask->main = Task_EC_808DA44;
    }

    for (var_r0_3 = 0; var_r0_3 < 4; var_r0_3++) {
        union MultiSioData *recv = gMultiSioRecv;
        u8 *src = &recv[var_r0_3].raw[4];
        u8 *dst = strcEC->unkE;
        dst[var_r0_3] = *src;
    }
}

void Task_EC_808DCFC(void)
{
    SDC_EC *strcEC = TASK_DATA(gCurTask);
    s16 i;
    s16 temp_r3;

    temp_r3 = sub_8025998();
    for (i = 0; i < 4; i++) {
        strcEC->unkE[i] = gUnknown_030010AC[i];
    }

    if (temp_r3 < 0) {
        sub_802613C();
        return;
    }
    if (temp_r3 == 1) {
        strcEC->unkC = 0;
        gCurTask->main = Task_EC_808DD6C;
    }
}

void Task_EC_808DD6C(void)
{
    SDC_EC *strcEC = TASK_DATA(gCurTask);
    Player *p;
    s16 temp_r2;
    s16 var_r7;
    s32 temp_r0_3;
    s16 var_r0;
    s16 var_r3;
    s16 playerIndex = gStageData.playerIndex;
    if (playerIndex == 0) {
        var_r0 = sub_80259F8(gUnknown_080D8F18[strcEC->unk13]);
    } else {
        var_r0 = sub_8024F84(gUnknown_080D8F18[strcEC->unk13]);
    }
    if (var_r0 < 0) {
        sub_802613C();
        return;
    }

    if (++strcEC->unkC > 0x3B) {
        if (playerIndex < 2) {
            gPlayers[playerIndex].charFlags.character = gUnknown_080D8F18[strcEC->unk13];
            ;
        } else {
            gPlayers[playerIndex % 2u].charFlags.character = gUnknown_080D8F18[strcEC->unk13];
            ;
        }

        for (var_r7 = 0; var_r7 < 5; var_r7++) {
            for (var_r3 = 0; var_r3 < 2; var_r3++) {
                if (gUnknown_03001060.unk4C[var_r3] == gUnknown_080D8F18[var_r7]) {
                    break;
                }
            }
            if (var_r3 == 2) {
                strcEC->unk13 = var_r7;
                break;
            }
        }
        gUnknown_03001060.unk4C[2] = strcEC->unk13;
        strcEC->unk12 = strcEC->unk13;
        gCurTask->main = Task_EC_808DEB8;
    }
}

// (78.77%) https://decomp.me/scratch/OqzVF
NONMATCH("asm/non_matching/game/siodbg__Task_EC_808DEB8.inc", void Task_EC_808DEB8(void))
{
    SDC_EC *strcEC = TASK_DATA(gCurTask);
    s32 sp0;
    s16 temp_r2_2;
    s16 var_r1;
    s32 var_r2;
    s32 var_r2_2;
    s16 var_r0;
    u32 temp_r0;
    u8 temp_r0_2;
    u8 temp_r2;
    s8 var_r0_2;
    u8 var_r6;
    u8 playerIndex = gStageData.playerIndex;
    u8 var_r5 = 0;
    if (playerIndex == 0) {
        var_r0 = sub_80259F8(gUnknown_080D8F18[strcEC->unk13]);
    } else {
        var_r0 = sub_8024F84(gUnknown_080D8F18[strcEC->unk13]);
    }
    if (var_r0 < 0) {
        sub_802613C();
        return;
    }
    if ((playerIndex << 0x10) == 0) {
        var_r6 = gUnknown_080D8F18[strcEC->unk13];
    } else {
        var_r6 = gMultiSioRecv->raw[4];
    }
    switch (gUnknown_03001060.unk7) { /* irregular */
        case 3:
            var_r2 = 0;
            break;
        case 7:
            var_r2 = 1;
            break;
        case 15:
            var_r2 = 2;
            break;
        default:
            sub_802613C();
            return;
    }

    for (var_r1 = 0; var_r1 < 4; var_r1++) {
        temp_r2 = gUnknown_080D6F00[var_r2][var_r1];
        if ((temp_r2 == (s16)playerIndex)
            || ((temp_r0_2 = gMultiSioRecv[temp_r2].raw[4], (temp_r0_2 == var_r6)) && (temp_r0_2 != gUnknown_030010AC[0])
                && (temp_r0_2 != gUnknown_03001060.unk4C[1]))) {
            var_r5 += 1;
        }
    }

    if (var_r5 == 4) {
        if (strcEC->unk17 < 0xD) {
            strcEC->unk17 = 0xD;
        }
        if ((u32)strcEC->unk17 > 0xDU) {
            if ((playerIndex == 0) || (playerIndex == 2)) {
                if ((var_r5 & gUnknown_03001060.unk7) && (playerIndex == 0)) {
                    var_r2_2 = 0;
                    var_r0_2 = -1;
                } else {
                    var_r2_2 = 1;
                    var_r0_2 = 2;
                }
            } else if ((8 & gUnknown_03001060.unk7) && (playerIndex == 1)) {
                var_r2_2 = 0;
                var_r0_2 = -1;
            } else {
                var_r2_2 = 1;
                var_r0_2 = 3;
            }
            strcEC->unk14 = var_r0_2;
            gUnknown_03001060.unk4C[2] = strcEC->unkE[2];
            gUnknown_03001060.unk4C[3] = strcEC->unkE[3];
            if (var_r2_2 != 0) {
                strcEC->unk12 = 0xFF;
                gCurTask->main = Task_EC_808E068;
            } else {
                gCurTask->main = Task_EC_808E430;
            }
        }
    }
}
END_NONMATCH

// (72.90%) https://decomp.me/scratch/LYB57
NONMATCH("asm/non_matching/game/siodbg__Task_EC_808E068.inc", void Task_EC_808E068(void))
{
    SDC_EC *strcEC = TASK_DATA(gCurTask);
    s16 temp_r0_2;
    s16 temp_r1;
    s16 temp_r2;
    s16 temp_r2_2;
    s16 temp_r2_3;
    s16 var_r4;
    s16 var_r4_2;
    s32 temp_r0_6;
    s32 temp_r0_9;
    s32 temp_r3;
    s32 var_r0_2;
    s32 var_r6_2;
    s32 var_r6_3;
    s8 temp_r0_4;
    s8 temp_r0_7;
    s32 var_r0_4;
    u16 temp_r0;
    u16 temp_r0_3;
    u16 var_r0;
    u32 temp_r0_5;
    u32 temp_r0_8;
    u32 var_r4_3;
    u32 var_r4_4;
    u8 temp_r7;
    union MultiSioData *var_r1;
    void (*var_r0_3)(SDC_EC *);
    s16 playerIndex = gStageData.playerIndex;
    temp_r7 = gUnknown_03001060.unk7;
    if (playerIndex == 0) {
        var_r0 = sub_80259F8(gUnknown_080D8F18[strcEC->unk13]);
    } else {
        var_r0 = sub_8024F84(gUnknown_080D8F18[strcEC->unk13]);
    }
    if ((s32)(var_r0 << 0x10) < 0) {
        sub_802613C();
        return;
    }
    var_r4 = 0;
    do {
        temp_r2 = var_r4;
        temp_r3 = var_r4 << 0x10;
        if ((4 << temp_r2) & temp_r7) {
            strcEC->unkE[var_r4 + 2] = gMultiSioRecv[temp_r2].pat0.unk4;
        } else {
            strcEC->unkE[var_r4 + 2] = gMultiSioRecv[temp_r2].pat0.unk4;
        }
        temp_r0 = temp_r0_2 + 1;
        var_r4 = (s16)temp_r0;
    } while ((s32)(s16)temp_r0 <= 1);
    if (strcEC->unk14 == -1) {
        return;
    }
    if (strcEC->unk16 == 0) {
        return;
    }
    if (1 & gPressedKeys) {
        for (var_r4_2 = 0; var_r4_2 < 4; var_r4_2++) {
            if (gUnknown_03001060.unk4C[var_r4_2] == gUnknown_080D8F18[strcEC->unk13]) {
                return;
            }
        }

        if (var_r4_2 > 3) {
            if ((u32)(u16)playerIndex <= 1U) {
                playerIndex += 2;
            }
            gUnknown_03001060.unk4C[playerIndex] = gUnknown_080D8F18[strcEC->unk13];
            if (!(A_BUTTON & playerIndex)) {
                strcEC->unk17 = 0x15;
                gCurTask->main = Task_EC_808E430;
            } else {
                strcEC->unk17 = 0x15;
                gCurTask->main = Task_EC_808E2E8;
            }
            if (((s32)playerIndex <= 1) && !(gUnknown_03001060.unk7 & (4 << playerIndex))) {
                playerIndex += 2;
            }
            gUnknown_03001060.unk4C[playerIndex] = gUnknown_080D8F18[strcEC->unk13];
            return;
        }
    } else if (0x20 & gPressedKeys) {
        m4aSongNumStart(SE_CHARSELECT_SLIDE);
        do {
            s32 unk13;
            var_r6_2 = 0;
            if (strcEC->unk13 > 0) {
                var_r0_4 = (u8)strcEC->unk13 - 1;
            } else {
                var_r0_4 = 4;
            }
            strcEC->unk13 = var_r0_4;
            var_r4_3 = 0;
            if (gUnknown_030010AC[var_r4_3] == gUnknown_080D8F18[strcEC->unk13]) {
                continue;
            }
        loop_35:
            temp_r0_5 = (var_r4_3 << 0x10) + 0x10000;
            var_r4_3 = temp_r0_5 >> 0x10;
            temp_r0_6 = (s32)temp_r0_5 >> 0x10;
            if (temp_r0_6 <= 1) {
                if (gUnknown_030010AC[temp_r0_6] == gUnknown_080D8F18[var_r0_4]) {
                    var_r6_2 = 1;
                } else {
                    goto loop_35;
                }
            }
        } while (var_r6_2 != 0);
    } else if (0x10 & gPressedKeys) {
        m4aSongNumStart(SE_CHARSELECT_SLIDE);
        do {
        loop_42:
            var_r6_3 = 0;
            if ((s32)strcEC->unk13 <= 3) {
                strcEC->unk13 = (u8)strcEC->unk13 + 1;
            } else {
                strcEC->unk13 = 0;
            }
            var_r4_4 = 0;
            temp_r0_7 = strcEC->unk13;
            if (gUnknown_030010AC == *(temp_r0_7 + &gUnknown_080D8F18)) {
                continue;
            }
        loop_47:
            temp_r0_8 = (var_r4_4 << 0x10) + 0x10000;
            var_r4_4 = temp_r0_8 >> 0x10;
            temp_r0_9 = (s32)temp_r0_8 >> 0x10;
            if (temp_r0_9 <= 1) {
                if ((&gUnknown_030010AC)[temp_r0_9] == *(temp_r0_7 + &gUnknown_080D8F18)) {
                    var_r6_3 = 1;
                } else {
                    goto loop_47;
                }
            }
        } while (var_r6_3 != 0);
    }
    strcEC->unk12 = (u8)strcEC->unk13;
}
END_NONMATCH

void Task_EC_808E2E8(void)
{
    SDC_EC *strcEC = TASK_DATA(gCurTask);
    s16 i;
    s16 temp_sb;
    union MultiSioData *var_r1_2;
    void (*var_r0_2)(SDC_EC *);
    union MultiSioData *temp_r3;
    s16 temp_r5 = gUnknown_03001060.unk7;
    s16 var_r6 = gStageData.playerIndex;

    temp_sb = sub_8025024(gUnknown_080D8F18[strcEC->unk13]);
    for (i = 0; i < 2; i++) {
        if ((4 << i) & temp_r5) {
            temp_r3 = &gMultiSioRecv[i + 2];
        } else {
            temp_r3 = &gMultiSioRecv[i + 0];
        }
        strcEC->unkE[i + 2] = (u8)temp_r3->pat3_0.unk4;
        if (gUnknown_03001060.unk4C[i + 2] == 0xFF) {
            if (temp_r3->pat3_0.unk4 == temp_r3->pat3_0.unkF[i + 2]) {
                gUnknown_03001060.unk4C[i + 2] = temp_r3->pat3_0.unk4;
            } else {
                gUnknown_03001060.unk4C[i + 2] = temp_r3->pat3_0.unkF[i + 2];
            }
        }
    }

    if (temp_sb < 0) {
        sub_802613C();
    } else {
        if (temp_sb == 1) {
            if (var_r6 == 0 || var_r6 == 1) {
                var_r6 += 2;
            }
            if (var_r6 == 3) {
                if ((gUnknown_03001060.unk4C[2] != 0xFF) && (gUnknown_03001060.unk4C[2] == gUnknown_03001060.unk4C[3])) {
                    strcEC->unk17 = 0x13;
                    gUnknown_03001060.unk4C[3] = 0xFF;
                    gCurTask->main = Task_EC_808E068;
                } else {
                    gCurTask->main = Task_EC_808E430;
                }
            } else {
                gCurTask->main = Task_EC_808E430;
            }
            return;
        } else if (temp_sb == 2) {
            gCurTask->main = Task_EC_808E068;
        }
    }
}

// (58.99%) https://decomp.me/scratch/DdTQa
NONMATCH("asm/non_matching/game/siodbg__Task_EC_808E430.inc", void Task_EC_808E430(void))
{
    SDC_EC *strcEC = TASK_DATA(gCurTask);
    s16 temp_r0;
    s16 temp_r0_3;
    s16 temp_r0_4;
    s16 temp_r0_6;
    s16 temp_r0_9;
    s16 temp_r1;
    s16 temp_r1_2;
    s16 temp_r1_3;
    s16 temp_r2;
    s16 var_r1;
    s16 var_r1_4;
    s16 var_r1_6;
    s32 var_r0_2;
    s8 var_r1_3;
    u16 temp_r0_10;
    u16 temp_r0_2;
    u16 temp_r0_5;
    u16 temp_r0_7;
    u16 temp_r0_8;
    u16 var_r0;
    u16 var_r0_3;
    u8 *temp_r7;
    s16 temp_r4;
    u8 temp_r6;
    union MultiSioData *var_r1_2;

    temp_r4 = gStageData.playerIndex;
    temp_r6 = gUnknown_03001060.unk7;
    if (temp_r4 == 0) {
        var_r0 = sub_8024E1C(gUnknown_080D8F18[strcEC->unk13]);
    } else {
        var_r0 = sub_80250EC(gUnknown_080D8F18[strcEC->unk13]);
    }
    temp_r0 = (s16)var_r0;
    if ((s32)temp_r0 < 0) {
        sub_802613C();
        return;
    }
    if (temp_r0 == 1) {
        for (var_r1_4 = 0; var_r1_4 < 4; var_r1_4++) {
            gUnknown_03001060.unk4C[var_r1_4] = strcEC->unkE[var_r1_4];
        }
        if ((temp_r4 < 2) && !(temp_r6 & (4 << temp_r4))) {
            var_r0_3 = temp_r4 + 2;
        } else {
            var_r0_3 = temp_r4 + 0;
        }
        if (((s16)var_r0_3 == 2) || ((s16)temp_r4 == 2)) {
            if ((gUnknown_03001060.unk4C[3] != 0xFF) && (gUnknown_03001060.unk4C[2] == gUnknown_03001060.unk4C[3])) {
                strcEC->unk17 = 0x13;
                gUnknown_03001060.unk4C[2] = 0xFF;
                gCurTask->main = Task_EC_808E068;
                return;
            }

            for (var_r1_4 = 0; var_r1_4 < 4; var_r1_4++) {
                if (gUnknown_030010AC[var_r1_4] > 4U) {
                    break;
                }

                if (var_r1_4 + 1 > 3) {
                    if ((strcEC->unk14 == -1) && ((u32)(u16)temp_r4 <= 1U)) {
                        for (var_r1_6 = 0; var_r1_6 < 4; var_r1_6++) {
                            gUnknown_030010AC[var_r1_6] = temp_r7[var_r1_6];
                        }

                        if ((s16)var_r0_3 != 2) {
                            m4aSongNumStart(gCharacterSelectedVoices[gUnknown_080D6EE0[gUnknown_03001060.unk4C[temp_r4 + 2]]]);
                        }
                    } else {
                        m4aSongNumStart(gCharacterSelectedVoices[gUnknown_080D6EE0[gUnknown_03001060.unk4C[var_r0_3]]]);
                    }
                    gCurTask->main = Task_EC_808EDA8;
                    return;
                }
            }
        } else {
            for (var_r1_4 = 0; var_r1_4 < 4; var_r1_4++) {
                if (gUnknown_030010AC[var_r1_4] < 5) {
                    if ((s16)temp_r4 == 3) {
                        m4aSongNumStart(gCharacterSelectedVoices[gUnknown_080D6EE0[gUnknown_03001060.unk4C[var_r0_3]]]);
                    }
                    strcEC->unkC = 0;
                    gCurTask->main = Task_EC_808E7B0;
                } else {
                    break;
                }
            }
        }
    } else {
        for (var_r1_4 = 0; var_r1_4 < 2; var_r1_4++) {
            if ((4 << var_r1_4) & temp_r6) {
                strcEC->unkE[var_r1 + 2] = gMultiSioRecv[var_r1_4 + 2].pat0.unk4;
            } else {
                strcEC->unkE[var_r1 + 2] = gMultiSioRecv[var_r1_4 + 0].pat0.unk4;
            }
        }

        if (temp_r4 == 0) {
            strcEC->unk12 = gUnknown_080D6EE0[strcEC->unkE[2]];
        } else if (temp_r4 == 1) {
            strcEC->unk12 = gUnknown_080D6EE0[strcEC->unkE[3]];
        }
    }
}
END_NONMATCH

// Unused?
void sub_808E6B4(void)
{
    SDC_EC *strcEC = TASK_DATA(gCurTask);
    s16 temp_r0;
    s16 temp_r0_3;
    s16 temp_r2;
    s16 var_r1;
    u16 temp_r0_2;
    s16 var_r0;
    s16 var_r4 = gStageData.playerIndex;
    s16 temp_r6 = gUnknown_03001060.unk7;
    if (var_r4 == 0) {
        var_r0 = sub_8024F1C(gUnknown_080D8F18[strcEC->unk13]);
    } else {
        var_r0 = sub_80251F8(gUnknown_080D8F18[strcEC->unk13]);
    }
    if (var_r0 < 0) {
        sub_802613C();
        return;
    }
    if (var_r0 == 1) {
        strcEC->unk17 = 0x13;
        if ((u32)(u16)var_r4 <= 1U) {
            var_r4 += 2;
        }
        gUnknown_03001060.unk4C[var_r4] = 0xFF;
        gCurTask->main = Task_EC_808E068;
    } else if (var_r0 == 2) {
        gCurTask->main = Task_EC_808E430;
    }

    for (var_r1 = 0; var_r1 < 2; var_r1++) {
        union MultiSioData *recv;
        if ((4 << var_r1) & temp_r6) {
            recv = &gMultiSioRecv[var_r1 + 2];
        } else {
            recv = &gMultiSioRecv[var_r1 + 0];
        }
        strcEC->unkE[var_r1 + 2] = recv->pat3_0.unk4;
    }
}

void Task_EC_808E7B0(void)
{
    SDC_EC *strcEC = TASK_DATA(gCurTask);
    s16 playerIndex = gStageData.playerIndex;
    Player *p;
    s16 temp_r0_2;
    s16 var_r0;
    u8 var_r4;

    for (var_r4 = 0; var_r4 < 4; var_r4++) {
        Player *players = gPlayers;
        u8 *src = gUnknown_030010AC;
        players[var_r4].charFlags.character = src[var_r4];
    }

    if (playerIndex == 0) {
        var_r0 = sub_8025A90();
    } else {
        var_r0 = sub_80253CC();
    }
    if ((s32)var_r0 < 0) {
        sub_802613C();
        return;
    }
    if ((var_r0 == 1) || (playerIndex == 0)) {
        strcEC->unk17 = 0x14;
        gCurTask->main = Task_EC_808EDE4;
    }
}

void Task_EC_808E864(void)
{
    SDC_EC *strcEC = TASK_DATA(gCurTask);
    ScreenFade *fade = &strcEC->fade;
    s16 temp_r5;
    u16 temp_r0;
    u16 var_r0;
    u8 playerIndex = gStageData.playerIndex;
    if (playerIndex == 0) {
        var_r0 = sub_8025A90();
    } else {
        var_r0 = sub_80253CC();
    }
    temp_r5 = (s16)var_r0;
    if ((s32)temp_r5 < 0) {
        sub_802613C();
        return;
    }
    nullsub_808EF98();
    if ((UpdateScreenFade(fade) << 0x18) != 0) {
        if (--strcEC->unkC <= 60) {
            if (playerIndex == 0) {
                if (A_BUTTON & gPressedKeys) {
                    strcEC->unkC = 0;
                }
            } else if (temp_r5 == 1) {
                strcEC->unkC = 0;
            }
            if ((s32)(s16)strcEC->unkC <= 0) {
                gCurTask->main = Task_EC_808E8FC;
            }
        }
    }
}

void Task_EC_808E8FC(void)
{
    SDC_EC *strcEC = TASK_DATA(gCurTask);
    s16 temp_r4;
    u16 var_r0;

    if (gStageData.playerIndex == 0) {
        var_r0 = sub_8025360();
    } else {
        var_r0 = sub_8025AA8();
    }
    temp_r4 = (s16)var_r0;
    if ((s32)temp_r4 < 0) {
        sub_802613C();
        return;
    }
    if (((UpdateScreenFade(&strcEC->fade) << 0x18) != 0) && (temp_r4 == 1)) {
        DmaFill32(3, 0, BG_CHAR_ADDR_FROM_BGCNT(2), 0x40);
        gBgSprites_Unknown1[2] = 0;
        gBgSprites_Unknown2[2][0] = 0;
        gBgSprites_Unknown2[2][1] = 0;
        gBgSprites_Unknown2[2][2] = 0xFF;
        gBgSprites_Unknown2[2][3] = 0x40;
        gCurTask->main = Task_EC_808E9AC;
    }
}

void Task_EC_808E9AC(void)
{
    SDC_EC *strcEC = TASK_DATA(gCurTask);
    u16 var_r0;
    u8 playerIndex = gStageData.playerIndex;

    strcEC->unk13 = 0;
    strcEC->unk15 = 0;
    gDispCnt = 0x1640;
    gBgSprites_Unknown1[0] = 0;
    gBgSprites_Unknown2[0][0] = 0;
    gBgSprites_Unknown2[0][1] = 0;
    gBgSprites_Unknown2[0][2] = 0xFF;
    gBgSprites_Unknown2[0][3] = 0x20;
    gBgSprites_Unknown1[1] = 0;
    gBgSprites_Unknown2[1][0] = 0;
    gBgSprites_Unknown2[1][1] = 0;
    gBgSprites_Unknown2[1][2] = -1;
    gBgSprites_Unknown2[1][3] = 0x20;
    gBgSprites_Unknown1[2] = 0;
    gBgSprites_Unknown2[2][0] = 0;
    gBgSprites_Unknown2[2][1] = 0;
    gBgSprites_Unknown2[2][2] = -1;
    gBgSprites_Unknown2[2][3] = 0x20;
    gBgSprites_Unknown1[3] = 0;
    gBgSprites_Unknown2[3][0] = 0;
    gBgSprites_Unknown2[3][1] = 0;
    gBgSprites_Unknown2[3][2] = -1;
    gBgSprites_Unknown2[3][3] = 0x20;
    if (playerIndex == 0) {
        var_r0 = sub_8025460(strcEC->unk15);
    } else {
        var_r0 = sub_8025AA8();
    }
    if ((s32)(var_r0 << 0x10) < 0) {
        sub_802613C();
        return;
    }
    {
        ScreenFade *fade = &strcEC->fade;
        fade->window = 0;
        fade->flags = 2;
        fade->brightness = 0;
        fade->speed = 0x200;
        fade->bldCnt = 0xFF;
        fade->bldAlpha = 0;
        ScreenFadeUpdateValues(fade);
    }
    gCurTask->main = Task_EC_808EA6C;
}

void Task_EC_808EA6C(void)
{
    u8 sp[0x15];
    SDC_EC *strcEC = TASK_DATA(gCurTask);
    ScreenFade *fade = &strcEC->fade;
    s16 temp_r5;
    s16 var_r0;
    u8 playerIndex = gStageData.playerIndex;
    memcpy(sp, &gUnknown_080D6F0C, sizeof(sp));
    strcEC->unk15 = *(strcEC->unk13 + sp);
    if (playerIndex == 0) {
        var_r0 = sub_8025460(strcEC->unk15);
    } else {
        var_r0 = sub_80255B0();
    }
    if (var_r0 < 0) {
        sub_802613C();
        return;
    }
    sub_808EBBC();
    if ((UpdateScreenFade(fade) << 0x18) != 0) {
        if (var_r0 == 1) {
            gCurTask->main = Task_EC_808EB50;
            return;
        }
        if (playerIndex == 0) {
            if (A_BUTTON & gPressedKeys) {
                gCurTask->main = Task_EC_808EE8C;
                return;
            } else if (DPAD_RIGHT & gPressedKeys) {
                if (strcEC->unk13 > 0x13) {
                    strcEC->unk13 = 0;
                } else {
                    strcEC->unk13 += 1;
                }
            } else if (DPAD_LEFT & gPressedKeys) {
                if (strcEC->unk13 <= 0) {
                    strcEC->unk13 = 0x14;
                } else {
                    strcEC->unk13 -= 1;
                }
            }
        }
    }
}
void Task_EC_808EB50(void)
{
    SDC_EC *strcEC = TASK_DATA(gCurTask);
    s16 var_r0;

    if (gStageData.playerIndex == 0) {
        var_r0 = sub_8025534();
    } else {
        var_r0 = sub_8025614();
    }
    if (var_r0 < 0) {
        sub_802613C();
        return;
    }
    {
        ScreenFade *fade = &strcEC->fade;
        fade->window = 0;
        fade->flags = 1;
        fade->brightness = 0;
        fade->speed = 0x200;
        fade->bldCnt = 0xFF;
        fade->bldAlpha = 0;
        ScreenFadeUpdateValues(fade);
    }
    gCurTask->main = Task_EC_808EEB8;
}

void sub_808EBBC(void)
{
    char buffer[0x20];
    s16 temp_r4;
    u16 temp_r4_2;
    u16 temp_r5;
    u8 temp_sl = gStageData.playerIndex;
    u8 *vram = (void *)BG_VRAM + 0x40;
    temp_r4 = gUnknown_03001060.unk50;
    temp_r5 = Div((s32)temp_r4, 10) + 1;
    temp_r4_2 = Mod((s32)temp_r4, 10) - 1;
    sprintf(buffer, gStringSelectStage);
    RenderText(vram, gUnknown_082B5344, 0xAU, 6U, 2U, buffer, 0U);
    vram += 12 * TILE_SIZE_4BPP;
    sprintf(buffer, gStringZoneNActN, (s16)temp_r5, (s16)temp_r4_2);
    RenderText(vram, gUnknown_082B5344, 0xAU, 8U, 2U, buffer, 0U);
    vram += 13 * TILE_SIZE_4BPP;
    if (temp_sl == 0) {
        sprintf(buffer, gStringPressABtn);
    } else {
        sprintf(buffer, gStringPleaseWait);
    }
    RenderText(vram, gUnknown_082B5344, 0xAU, 0x10U, 2U, buffer, 0U);
}

void sub_808ECB8(void) { sub_8027960(); }

void Task_FCC_808ECC4(void)
{
    SDC_FCC *strcFCC = TASK_DATA(gCurTask);
    if (UpdateScreenFade(&strcFCC->fade) != 0) {
        gCurTask->main = Task_FCC_808D00C;
    }
}

void Task_FCC_808ECF4(void)
{
    SDC_FCC *strcFCC = TASK_DATA(gCurTask);
    s16 temp_r0;

    if (UpdateScreenFade(&strcFCC->fade) != 0) {
        switch (strcFCC->unk10) {
            case 0:
                CreateMultiPakConnectionCheck(0U);
                break;
            case 1:
                sub_8027960();
                break;
            case 2:
                LaunchChaoMenu(0, 0);
                break;
        }
        TaskDestroy(gCurTask);
    }
}

void sub_808ED5C(void) { }

void Task_EC_808ED60(void)
{
    SDC_EC *strcEC = TASK_DATA(gCurTask);
    if (UpdateScreenFade(&strcEC->fade) != 0) {
        if ((u32)strcEC->unk17 <= 0x22U) {
            strcEC->unk17 = 0x23;
        }
        if (strcEC->unk17 == 0x26) {
            sub_80260F0();
            LaunchChaoMenu(0, 4);
            TaskDestroy(gCurTask);
        }
    }
}

void Task_EC_808EDA8(void)
{
    SDC_EC *strcEC = TASK_DATA(gCurTask);
    s16 temp_r0 = sub_8025A38();
    if (temp_r0 < 0) {
        sub_802613C();
    } else if (temp_r0 == 1) {
        strcEC->unkC = 0;
        gCurTask->main = Task_EC_808E7B0;
    }
}

void Task_EC_808EDE4(void)
{
    SDC_EC *strcEC = TASK_DATA(gCurTask);
    s16 var_r0;

    if (gStageData.playerIndex == 0) {
        var_r0 = sub_8025A90();
    } else {
        var_r0 = sub_80253CC();
    }
    if (var_r0 < 0) {
        sub_802613C();
        return;
    }
    if (strcEC->unk17 == 0x26) {
        TaskDestroy(gCurTask);
    }
}

void Task_EC_808EE34(void)
{
    SDC_EC *strcEC = TASK_DATA(gCurTask);
    u16 var_r0;

    if (gStageData.playerIndex == 0) {
        var_r0 = sub_8025A90();
    } else {
        var_r0 = sub_80253CC();
    }
    if ((s32)(var_r0 << 0x10) < 0) {
        sub_802613C();
        return;
    }
    nullsub_808EF98();
    strcEC->unkC = 0x78;
    gCurTask->main = Task_EC_808E864;
}

void Task_EC_808EE8C(void)
{
    s16 temp_r0 = sub_8025534();
    if (temp_r0 < 0) {
        sub_802613C();
    } else if (temp_r0 == 1) {
        gCurTask->main = Task_EC_808EB50;
    }
}

void Task_EC_808EEB8(void)
{
    SDC_EC *strcEC = TASK_DATA(gCurTask);
    s16 var_r0;
    u8 playerIndex = gStageData.playerIndex;

    if (playerIndex == 0) {
        var_r0 = sub_8025534();
    } else {
        var_r0 = sub_8025614();
    }
    if (var_r0 < 0) {
        sub_802613C();
        return;
    }
    if (UpdateScreenFade(&strcEC->fade) != 0) {
        gCurTask->main = Task_EC_808EF14;
    }
}

void Task_EC_808EF14(void)
{
    SDC_EC *strcEC = TASK_DATA(gCurTask);
    s16 temp_r0;
    s16 var_r0;

    if (gStageData.playerIndex == 0) {
        var_r0 = sub_8025674();
    } else {
        var_r0 = sub_8025B48();
    }
    if (var_r0 < 0) {
        sub_802613C();
    } else if (var_r0 == 1) {
        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        gBgSpritesCount = 0;
        PAUSE_GRAPHICS_QUEUE();
        sub_80022E8(strcEC->unk15);
    }
}

void nullsub_808EF94(void) { }

void nullsub_808EF98(void) { }

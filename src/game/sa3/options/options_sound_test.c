#include "global.h"
#include "core.h"
#include "flags.h"
#include "lib/m4a/m4a.h"
#include "code_z_1.h"
#include "game/save.h"
#include "constants/songs.h"

typedef struct {
    /* 0x000 */ s32 unk0;
    /* 0x004 */ u8 unk4;
    /* 0x005 */ u8 unk5;
    /* 0x006 */ u8 unk6;
    /* 0x007 */ u8 unk7[3];
    /* 0x00C */ u8 *initArg3;
    /* 0x010 */ s16 unk10;
    /* 0x012 */ u16 unk12;
    /* 0x014 */ s16 *initArg2;
    /* 0x018 */ s16 unk18;
    /* 0x01A */ s16 unk1A[4];
    /* 0x022 */ s16 unk22;
    /* 0x024 */ u16 unk24;
    /* 0x026 */ u16 unk26;
    /* 0x028 */ s32 unk28[12];
    /* 0x058 */ u32 unk58;
    /* 0x05C */ u32 unk5C;
    /* 0x060 */ s32 unk60;
    /* 0x064 */ s32 unk64;
    /* 0x068 */ s32 unk68;
    /* 0x06C */ s32 unk6C;
    /* 0x070 */ s32 unk70;
    /* 0x074 */ s32 unk74;
    /* 0x078 */ s32 unk78;
    /* 0x07C */ s32 unk7C;
    /* 0x080 */ s32 unk80;
    /* 0x084 */ s32 unk84;
    /* 0x088 */ s32 unk88;
    /* 0x08C */ s32 unk8C;
    /* 0x090 */ s32 unk90;
    /* 0x094 */ s32 unk94;
    /* 0x098 */ s32 unk98;
    /* 0x09C */ s32 unk9C;
    /* 0x0A0 */ u8 *vramA0;
    /* 0x0A4 */ Sprite sprA4;
    /* 0x0CC */ Sprite sprCC;
    /* 0x0F4 */ Sprite sprF4;
    /* 0x11C */ Sprite spr11C[3];
    /* 0x194 */ Sprite spr194;
    /* 0x1BC */ Sprite spr1BC;
    /* 0x1E4 */ Sprite spr1E4;
    /* 0x20C */ u8 filler20C[0x40];
    /* 0x24C */ struct Task *taskNames;
} OptionsSoundTest; /* 0x250 */

typedef struct {
    u8 *initArg1;
    u8 unk4;
    s16 *initArg0;
    u16 unkC;
    s32 unk10;
    s32 unk14;
    u8 *vram18;
    Sprite sprites[24];
} OptionsSoundTestSongName; /* 0x3DC */

void Task_SoundTest(void);
void Task_8093D30(void);
void TaskDestructor_SoundTest(struct Task *t);
void Options_SoundTest(s16 highlitButton, u8 *vramBase, s16 *arg2, u8 *arg3);
void sub_8094144(OptionsSoundTest *st); // InitSprites(st);
void sub_8093DF4(OptionsSoundTest *st);
void sub_8093F64(OptionsSoundTest *st);
void sub_8093FDC(OptionsSoundTest *st);
void sub_80940B4(OptionsSoundTest *st);
void sub_80945A0(OptionsSoundTest *st);
void sub_8094604(OptionsSoundTest *st);
void sub_8094630(OptionsSoundTest *st);
void sub_8094664(OptionsSoundTest *st);
void sub_809473C(OptionsSoundTestSongName *name);
void TaskDestructor_SoundTestUI(Task *t);
void Task_3DC_80946F0(void);
extern ColorRaw gUnknown_080D8A8C[16];
extern const TileInfo2 gUnknown_080D8A84;

void Task_8093AB0(void);
struct Task *CreateSoundTestUI(s16 *arg0, u8 *arg1, u8 *vramBase);

extern u16 sSoundTestSongIds[124];
extern const TileInfo2 gUnknown_080D7628[6];
extern const TileInfo2 gUnknown_080D7658[12];
extern const TileInfo2 gUnknown_080D76C0[6];
extern const TileInfo2 gUnknown_080D76F0[10];
extern const TileInfo2 gUnknown_080D76B8;
extern const TileInfo2 gUnknown_080D7740;

extern const ColorRaw gOptionsBgPalette[256];

void Options_SoundTest(s16 highlitButton, u8 *vramBase, s16 *arg2, u8 *arg3)
{
    s32 *temp_r2;
    s32 *temp_r2_2;
    s32 *temp_r2_3;
    u8 i;
    OptionsSoundTest *st = TASK_DATA(TaskCreate(Task_SoundTest, sizeof(OptionsSoundTest), 0x100U, 0U, TaskDestructor_SoundTest));
    st->initArg3 = arg3;
    st->unk18 = 0;
    st->unk5 = 0;
    st->vramA0 = vramBase;
    st->unk4 = LOADED_SAVE->language;
    st->unk6 = 0;
    st->initArg2 = arg2;
    st->unk12 = 0;
    st->unk24 = 0;
    st->unk22 = 0;
    st->unk58 = 0;
    st->unk5C = 0;

    for (i = 0; i < ARRAY_COUNT(st->unk28); i++) {
        st->unk28[i] = 0;

        if (i < ARRAY_COUNT(st->unk1A)) {
            st->unk1A[i] = 0;
        }
    }

    st->unk60 = -gBgScrollRegs[1][0] + 24;
    st->unk64 = -gBgScrollRegs[1][1] + 135;
    st->unk68 = -gBgScrollRegs[1][0] + 25;
    st->unk6C = -gBgScrollRegs[1][1] + 25;
    st->unk70 = -gBgScrollRegs[1][0];
    st->unk74 = -gBgScrollRegs[1][1];
    st->unk78 = -gBgScrollRegs[1][0] + 80;
    st->unk7C = -gBgScrollRegs[1][1] + 92;
    st->unk80 = -gBgScrollRegs[1][0];
    st->unk84 = -gBgScrollRegs[1][1];
    st->unk90 = -gBgScrollRegs[1][0] + 80;
    st->unk94 = -gBgScrollRegs[1][1] + 92;
    st->unk98 = -gBgScrollRegs[1][0];
    st->unk9C = -gBgScrollRegs[1][1];
    st->unk88 = 0;
    st->unk8C = 0;
    st->unk26 = 0x100;
    st->unk7[2] = 0;
    st->unk7[1] = 0;
    st->unk7[0] = 1;
    st->unk0 = 0;
    sub_8094144(st); // InitSprites(st);

    m4aSongNumStop(MUS_OPTIONS_COPY);
}

void Task_8093AB0(void)
{
    u8 i;
    OptionsSoundTest *st = TASK_DATA(gCurTask);
    struct SoundMixerState *soundInfo = &gSoundInfo;

    sub_80945A0(st);
    sub_8093F64(st);
    sub_8094630(st);
    sub_8094664(st);
    sub_8093FDC(st);

    if (st->unk6 != 0) {
        sub_8093DF4(st);
    } else {
        st->unk26 = 0x100;
    }

    sub_8094604(st);
    sub_80940B4(st);

    if ((gBgScrollRegs[1][0] <= -200) && (st->unk70 <= -gBgScrollRegs[1][0])) {
        *st->initArg3 = 0;
        st->unk5 = 0;
        gCurTask->main = Task_8093D30;
        return;
    }

    st->unk70 = -gBgScrollRegs[1][0];

    if (B_BUTTON & gPressedKeys) {
        if (st->unk6 == 1) {
            st->unk6 = 0;
            st->unk88 = 0;
            st->unk8C = 0;
            m4aSongNumStop(sSoundTestSongIds[st->unk12]);
        } else {
            m4aSongNumStart(0x6BU);
            m4aSongNumStart(6U);
            *st->initArg2 = 0x7B;
            m4aSongNumStop(sSoundTestSongIds[st->unk12]);

            gCurTask->main = Task_8093D30;
            return;
        }
    } else if (A_BUTTON & gPressedKeys) {
        if (gBgScrollRegs[1][0] == 0) {
            m4aMPlayAllStop();
            m4aSongNumStop(sSoundTestSongIds[st->unk12]);
            st->unk24 = 0;
            st->unk26 = 0x100;
            st->unk5C = 0;
            st->unk58 = 0;
            st->unk22 = 0;

            for (i = 0; i < ARRAY_COUNT(st->unk28); i++) {
                st->unk28[i] = 0;
                soundInfo->chans[i].data.sound.freq = 0;
            }

            for (i = 0; i < ARRAY_COUNT(st->unk1A); i++) {
                st->unk1A[i] = 0;
            }

            soundInfo->pcmBuffer[0] = 0;
            st->unk6 = 1;
            m4aSongNumStart(sSoundTestSongIds[st->unk18]);
            st->unk12 = st->unk18;
            return;
        }
    }

    if ((gBgScrollRegs[1][0] == 0) && (DPAD_SIDEWAYS & gRepeatedKeys)) {
        u8 temp_r5_2 = 0;
        if (DPAD_RIGHT & gRepeatedKeys) {
            if (st->unk18 == 0x7A) {
                st->unk18 = 0;
            } else {
                st->unk18 += 1;
            }
        } else if (DPAD_LEFT & gRepeatedKeys) {
            if (st->unk18 == 0) {
                st->unk18 = 0x7A;
            } else {
                st->unk18 -= 1;
            }
        }
        temp_r5_2 = ((st->unk18 + 1) / 10);
        st->unk7[2] = (temp_r5_2 / 10);
        st->unk7[1] = temp_r5_2 - (st->unk7[2] * 10);
        st->unk7[0] = (st->unk18 + 1) - (temp_r5_2 * 10);
    }

    if (st->unk6 == 1) {
        if ((st->unk58 == 0) && (st->unk22 == 0)) {
            if (soundInfo->pcmBuffer[0] == 0) {
                if (++st->unk24 >= 120u) {
                    st->unk24 = 0;
                    st->unk6 = 0;
                    st->unk88 = 0;
                    st->unk8C = 0;
                    m4aSongNumStop(sSoundTestSongIds[st->unk12]);
                }
            }
        } else {
            st->unk24 = 0;
        }
    }
}

void Task_8093D30(void)
{
    OptionsSoundTest *st = TASK_DATA(gCurTask);

    sub_80945A0(st);
    sub_8093F64(st);
    sub_8094630(st);
    sub_8094664(st);
    sub_8093FDC(st);

    if (st->unk6 != 0) {
        sub_8093DF4(st);
    }

    sub_8094604(st);
    sub_80940B4(st);

    if ((gBgScrollRegs[1][0] <= -200) && (st->unk70 <= -gBgScrollRegs[1][0])) {
        if (FLAGS_20000 & gFlags) {
            CopyObjPaletteMasked(gOptionsBgPalette, 0U, 256);
        } else {
            DmaCopy16(3, gOptionsBgPalette, gObjPalette, 256 * sizeof(ColorRaw));
            gFlags |= FLAGS_UPDATE_SPRITE_PALETTES;
        }

        *st->initArg3 = 0;
        TaskDestroy(gCurTask);
    }
}

void sub_8093DF4(OptionsSoundTest *st)
{
    u16 temp_r0_3;
    s16 temp_r0_4;
    s16 unk5C;
    s32 freq;
    u32 var_r1_2;
    s16 temp_r3_2;
    s16 var_r4;
    u32 var_r3;
    u8 i;
    s32 unk26;
    struct SoundMixerState *soundInfo = &gSoundInfo;
    s16 var_r8 = 0;

    s16 sp0[4] = { 0 };
    sp0[0] = (REG_SOUND1CNT_H >> 12);
    sp0[1] = sp0[0] >> 12; // fake, should be setting equal to 0
    sp0[2] = (REG_SOUND3CNT_H >> 12);
    sp0[3] = (REG_SOUND4CNT_L >> 12);

    st->unk22 = 0;
    st->unk58 = 0;

    for (i = 0; i < ARRAY_COUNT(sp0); i++) {
        temp_r3_2 = ABS(st->unk1A[i] - sp0[i]);

        if (st->unk22 < temp_r3_2) {
            st->unk22 = temp_r3_2;
        }

        st->unk1A[i] = sp0[i];
    }

    for (i = 0; i < ARRAY_COUNT(soundInfo->chans); i++) {
        freq = soundInfo->chans[i].data.cgb.freq;
        var_r1_2 = ABS(st->unk28[i] - freq);
        if (st->unk58 < var_r1_2) {
            st->unk58 = var_r1_2;
        }
        st->unk28[i] = soundInfo->chans[i].data.cgb.freq;
    }

    var_r3 = st->unk58 >> 7;
    if (var_r3 > 0x20) {
        var_r3 = 0x20;
    }
    temp_r0_3 = (u16)st->unk22;
    var_r4 = temp_r0_3 * 8;
    if ((s32)(s16)(temp_r0_3 * 8) > 0x20) {
        var_r4 = 0x20;
    }

    if (soundInfo->pcmBuffer[0] != 0) {
        unk5C = st->unk5C;
        temp_r0_4 = ABS(soundInfo->pcmBuffer[0] - unk5C);
        if (temp_r0_4 > 0) {
            var_r8 = temp_r0_4 * 4;
        } else {
            var_r8 = temp_r0_4 * 2;
        }
        if (var_r8 > 0x30) {
            var_r8 = 0x30;
        }
        st->unk5C = soundInfo->pcmBuffer[0];
    }

    st->unk26 = var_r3 + 0x100 + var_r4 + var_r8;
    if (st->unk26 > 0x180) {
        st->unk26 = 0x180;
    }
}

void sub_8093F64(OptionsSoundTest *st)
{
    {
        Sprite *s = &st->sprA4;
        s->anim = gUnknown_080D7628[st->unk4].anim;
        s->variant = gUnknown_080D7628[st->unk4].variant;
        s->x = st->unk60;
        s->y = st->unk64;
        DisplaySprite(s);
    }
    {
        Sprite *s = &st->sprCC;
        s->anim = gUnknown_080D7658[(st->unk4 * 2) + st->unk6].anim;
        s->variant = gUnknown_080D7658[(st->unk4 * 2) + st->unk6].variant;
        s->prevVariant = -1;
        s->x = st->unk60 + 80;
        s->y = st->unk64;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

void sub_8093FDC(OptionsSoundTest *st)
{
    Sprite *s;
    u8 i;

    for (i = 0; i < ARRAY_COUNT(st->unk7); i++) {
        s = &st->spr11C[i];
        s->anim = gUnknown_080D76F0[st->unk7[i]].anim;
        s->variant = gUnknown_080D76F0[st->unk7[i]].variant;

        if (i == 0) {
            s->x = st->unk90;
            s->y = st->unk94;

            if (st->unk7[1] != 0) {
                s->x += 6;
            }

            if (st->unk7[2] != 0) {
                if (st->unk7[1] != 0) {
                    s->x -= 6;
                }

                s->x += 12;
            }

            UpdateSpriteAnimation(s);
            DisplaySprite(s);
        } else if (i == 1) {
            s->x = st->unk90 - 6;
            s->y = st->unk94;

            if (st->unk7[2]) {
                s->x += 6;
            }

            if (st->unk7[1] || st->unk7[2]) {
                UpdateSpriteAnimation(s);
                DisplaySprite(s);
            }
        } else if (i == 2) {
            s->x = st->unk90 - 12;
            s->y = (s16)st->unk94;

            if (st->unk7[2]) {
                UpdateSpriteAnimation(s);
                DisplaySprite(s);
            }
        }
    }
}

void sub_80940B4(OptionsSoundTest *st)
{
    Sprite *s = &st->spr1BC;
    u8 i;

    for (i = 0; i < 2; i++) {
        s->x = -gBgScrollRegs[1][0] + 56;
        s->y = -gBgScrollRegs[1][1] + 90;

        s->y += I(st->unk8C);

        if (i != 0) {
            s->frameFlags &= ~0x400;
            s->x += 48;
            s->x += I(st->unk88);
        } else {
            s->frameFlags |= 0x400;
            s->x -= I(st->unk88);
        }

        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

void sub_8094144(OptionsSoundTest *st)
{
    TileInfo2 *sp8;
    Sprite *s;
    u8 var_r4;

    st->sprF4.tiles = st->vramA0;
    st->vramA0 += gUnknown_080D76C0[st->unk4].numTiles * TILE_SIZE_4BPP;
    {
        Sprite *s = &st->sprF4;
        s->anim = gUnknown_080D76C0[st->unk4].anim;
        s->variant = gUnknown_080D76C0[st->unk4].variant;
        s->prevVariant = 0xFF;
        s->x = (s16)st->unk68;
        s->y = (s16)st->unk6C;
        s->oamFlags = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        s->hitboxes[0].index = -1;
        UpdateSpriteAnimation(s);
    }
    {
        Sprite *s = &st->sprA4;
        s->tiles = st->vramA0;
        st->vramA0 += 0x280;
        s->anim = gUnknown_080D7628[st->unk4].anim;
        s->variant = gUnknown_080D7628[st->unk4].variant;
        s->prevVariant = -1;
        s->x = (s16)st->unk60;
        s->y = (s16)st->unk64;
        s->oamFlags = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        s->hitboxes[0].index = -1;
        UpdateSpriteAnimation(s);
    }
    {
        Sprite *s = &st->sprCC;
        s->tiles = st->vramA0;
        st->vramA0 += 0x180;
        s->anim = gUnknown_080D7658[(st->unk4 * 2) + st->unk6].anim;
        s->variant = gUnknown_080D7658[(st->unk4 * 2) + st->unk6].variant;
        s->prevVariant = -1;
        s->x = st->unk60 + 0x40;
        s->y = (s16)st->unk64;
        s->oamFlags = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        s->hitboxes[0].index = -1;
        UpdateSpriteAnimation(s);
    }

    for (var_r4 = 0; var_r4 < 3; var_r4++) {
        Sprite *s = &st->spr11C[var_r4];
        s->tiles = st->vramA0;
        st->vramA0 += gUnknown_080D76F0[0].numTiles * TILE_SIZE_4BPP;
        s->anim = gUnknown_080D76F0[0].anim;
        s->variant = gUnknown_080D76F0[0].variant;
        s->prevVariant = -1;
        s->x = st->unk90;
        s->y = st->unk94;
        s->oamFlags = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        s->hitboxes[0].index = -1;
        UpdateSpriteAnimation(s);
    }

    {
        Sprite *s = &st->spr1E4;
        s->tiles = st->vramA0;
        st->vramA0 += gUnknown_080D76B8.numTiles * TILE_SIZE_4BPP;
        s->anim = gUnknown_080D76B8.anim;
        s->variant = gUnknown_080D76B8.variant;
        s->prevVariant |= ~0;
        s->x = st->unk80;
        s->y = st->unk84;
        s->oamFlags = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        s->hitboxes[0].index = -1;
        UpdateSpriteAnimation(s);
    }
    {
        Sprite *s = &st->spr1BC;
        s->tiles = st->vramA0;
        st->vramA0 += gUnknown_080D7740.numTiles << 5;
        s->anim = gUnknown_080D7740.anim;
        s->variant = gUnknown_080D7740.variant;
        s->prevVariant |= ~0;
        s->x = I(st->unk88);
        s->y = I(st->unk8C);
        s->oamFlags = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        s->hitboxes[0].index = -1;
        UpdateSpriteAnimation(s);
    }
}

void Task_3DC_SoundTestUI_Init(void)
{
    OptionsSoundTestSongName *name = TASK_DATA(gCurTask);
    Sprite *temp_r0;
    s32 temp_r0_2;
    u8 temp_r8;
    u8 var_r4;

    var_r4 = name->unk4;
    if ((s32)var_r4 < (s32)(var_r4 + 8)) {
        do {
            temp_r0 = &name->sprites[var_r4];
            temp_r0->tiles = name->vram18;
            name->vram18 += 0x80;
            temp_r0->anim = gUnknown_080D8A84.anim;
            temp_r0->variant = gUnknown_080D8A84.variant;
            temp_r0->prevVariant = 0xFF;
            temp_r0->x = 0;
            temp_r0->y = 0;
            temp_r0->oamFlags = 0;
            temp_r0->animCursor = 0;
            temp_r0->qAnimDelay = 0;
            temp_r0->animSpeed = 0x10;
            temp_r0->palId = 9;
            temp_r0->frameFlags = 0x40000;
            UpdateSpriteAnimation(temp_r0);
            var_r4 += 1;
        } while ((s32)var_r4 < (s32)(name->unk4 + 8));
    }
    temp_r0_2 = name->unk4 + 8;
    if (temp_r0_2 > 0x17) {
        if (0x20000 & gFlags) {
            CopyObjPaletteMasked(gUnknown_080D8A8C, 0xF0U, 0x10U);
        } else {
            DmaCopy16(3, gUnknown_080D8A8C, &gObjPalette[0xF0], 0x20);
            gFlags |= FLAGS_UPDATE_SPRITE_PALETTES;
        }
        name->unk4 = 0U;
        gCurTask->main = Task_3DC_80946F0;
        return;
    }
    name->unk4 = (u8)temp_r0_2;
}

typedef struct {
    /* 0x00 */ u8 nameSize;
    /* 0x01 */ u8 name[32];
    /* 0x21 */ u8 filler21[7];
} SongName;
extern const SongName sSongNames[123];

void SoundTest_DrawSongName(OptionsSoundTestSongName *arg0)
{
    Sprite *s;
    void *temp_r1;
    u8 nameSize;
    u8 i;

    for (i = 0; i < sSongNames[*arg0->initArg0].nameSize; i++) {
        {
            s = &arg0->sprites[i];
            if (sSongNames[*arg0->initArg0].name[i] != 0x30) {
                s->anim = gUnknown_080D8A84.anim;
                s->variant = (gUnknown_080D8A84.variant + sSongNames[*arg0->initArg0].name[i]) - 0x20;
                s->prevVariant = -1;
                s->x = -gBgScrollRegs[1][0] + I(arg0->unk10) + (i * 8);
                s->y = I(arg0->unk14);
                UpdateSpriteAnimation(s);
                DisplaySprite(s);
            }
        }
    }
}

void Task_SoundTest(void)
{
    OptionsSoundTest *temp_r4;

    temp_r4 = TASK_DATA(gCurTask);
    if (gBgScrollRegs[1][0] > -30) {
        temp_r4->taskNames = CreateSoundTestUI(&temp_r4->unk18, temp_r4->initArg3, temp_r4->vramA0);
        temp_r4->unk0 = 1;
        gCurTask->main = Task_8093AB0;
    }
}

void sub_80945A0(OptionsSoundTest *st)
{
    st->unk60 = 24 - gBgScrollRegs[1][0];
    st->unk64 = 135 - gBgScrollRegs[1][1];
    st->unk68 = 25 - gBgScrollRegs[1][0];
    st->unk6C = 25 - gBgScrollRegs[1][1];
    st->unk78 = -gBgScrollRegs[1][0] + 80;
    st->unk7C = -gBgScrollRegs[1][1] + 92;
    st->unk90 = -gBgScrollRegs[1][0] + 80;
    st->unk94 = -gBgScrollRegs[1][1] + 92;
}

void sub_8094604(OptionsSoundTest *st)
{
    s32 temp_r0;
    s32 temp_r0_2;

    temp_r0 = st->unk88;
    if (temp_r0 <= 0x9FF) {
        temp_r0_2 = temp_r0 + 0x60;
        st->unk88 = temp_r0_2;
        if (temp_r0_2 > 0x9FF) {
            st->unk88 = 0;
        }
    }
    st->unk8C = 0;
}

void sub_8094630(OptionsSoundTest *st)
{
    Sprite *s = &st->sprF4;
    s->anim = gUnknown_080D76C0[st->unk4].anim;
    s->variant = gUnknown_080D76C0[st->unk4].variant;
    s->x = st->unk68;
    s->y = st->unk6C;
    DisplaySprite(s);
}

void sub_8094664(OptionsSoundTest *st)
{
    s16 temp_r2;

    temp_r2 = (s16)st->unk26;
    sa2__sub_8003EE4(0U, temp_r2, temp_r2, 0x40, 0x40, (s16)(s32)(s16)st->unk78, (s16)(s32)(s16)st->unk7C, gBgAffineRegs);
}

void TaskDestructor_SoundTest(Task *t) { }

struct Task *CreateSoundTestUI(s16 *arg0, u8 *arg1, u8 *vramBase)
{
    struct Task *t = TaskCreate(Task_3DC_SoundTestUI_Init, sizeof(OptionsSoundTestSongName), 0x100U, 0U, TaskDestructor_SoundTestUI);
    OptionsSoundTestSongName *name = TASK_DATA(t);

    name->initArg1 = arg1;
    name->initArg0 = arg0;
    name->unk4 = 0;
    name->unkC = 0;
    name->unk10 = 0x2300;
    name->unk14 = 0x3C00;
    name->vram18 = vramBase;

    return t;
}

void TaskDestructor_SoundTestUI(Task *arg0) { }

void Task_3DC_80946F0(void)
{
    OptionsSoundTestSongName *name = TASK_DATA(gCurTask);
    if ((s32)gBgScrollRegs[1][0] >= -0x14) {
        name->unk4 = 1U;
        SoundTest_DrawSongName(name);
        sub_809473C(name);
        return;
    }
    if (name->unk4 != 0) {
        TaskDestroy(gCurTask);
    }
}

void sub_809473C(OptionsSoundTestSongName *name) { }

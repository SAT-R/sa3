#ifndef GUARD_SA3_TITLE_SCREEN_H
#define GUARD_SA3_TITLE_SCREEN_H

// TODO(Jace): I just found out that agbcc has -fshort-enums,
//             so once enabled, we should be able to use enums directly, instead of using u8's or u16's in their stead.
//             That way, assuming Dimps also used that option, we should be able to simplify code a tiny bit.
// NOTE: But those function calls would be binary INCOMPATIBLE with code expecting them to be word-sized.
//       CreateTitleScreen(ETitleFadeModeSA3 fadeMode) matches using the compiler flag!
typedef enum {
    TFM_UNKNOWN = 0,
    TFM_NO_FADE = 1,
    TFM_FADEIN = 2,
} ETitleFadeModeSA3;

typedef struct {
    u8 language;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u16 unk4;
    u16 unk6;
    u16 unk8;
    u16 unkA;
    u16 fadeMode;
    u16 qUnkE; // probably fade-value
    u16 unk10;
    u16 unk12;
    u16 unk14;
    u16 unk16;
    u16 unk18;
    u16 unk1A;
    u16 unk1C;
    u16 unk1E;
    u8 *vram20;
    s32 unk24;
    Sprite spr28;
    Sprite spr50;
    Sprite spr78;
    Background bgA0;
    Background bgE0;
    Background bg120;
    u8 unk160;
} TitleScreenSA3; /* 0x164 */

void CreateTitleScreen(u8 fadeMode);

#endif // GUARD_SA3_TITLE_SCREEN_H
#ifndef GUARD_SA3_GEMERL_STATES_H
#define GUARD_SA3_GEMERL_STATES_H

struct Gemerl;

typedef bool32 (*GemerlCallback)(struct Gemerl *);

typedef struct Gemerl {
    /* 0x00 */ GemerlCallback callback;
    /* 0x04 */ u8 *vram4;
    /* 0x08 */ s32 qSomeX;
    /* 0x0C */ s32 qSomeY;
    /* 0x14 */ s32 unk10;
    /* 0x14 */ s16 unk14;
    /* 0x16 */ s16 unk16;
    /* 0x18 */ s16 unk18;
    /* 0x1A */ u16 unk1A;
    /* 0x1C */ u8 *inputArg0;
    /* 0x20 */ s8 unk20;
    /* 0x21 */ s8 unk21;
    /* 0x22 */ u8 unk22;
    /* 0x23 */ u8 zone;
    /* 0x24 */ u8 unk24[10];
    /* 0x2E */ u8 unk2E;
    /* 0x2F */ u8 unk2F;
    /* 0x30 */ u8 unk30;
    /* 0x31 */ u8 unk31;
    /* 0x32 */ u8 unk32;
    /* 0x33 */ u8 unk33;
    /* 0x34 */ u8 filler34[0x6];
    /* 0x33 */ s16 unk3A;
    /* 0x3C */ Sprite2 spr3C;
    /* 0x6C */ SpriteTransform tf6C;
    /* 0x78 */ Sprite spr78;
    /* 0xA0 */ Sprite sprA0;
    /* 0xA0 */ Sprite sprC8;
} Gemerl; /* 0xF0 */

typedef struct {
    /* 0x00 */ GemerlCallback callback;
    /* 0x04 */ s16 unk4[4];
    /* 0x0C */ u8 unkC;
    /* 0x0D */ s8 unkD;
    /* 0x0E */ AnimId anim;
    /* 0x10 */ u8 pattern;
} GemerlState;

extern bool32 Gemerl_State_0(Gemerl *gemerl);
extern bool32 Gemerl_State_1(Gemerl *gemerl);
extern bool32 Gemerl_State_2(Gemerl *gemerl);
extern bool32 Gemerl_State_3(Gemerl *gemerl);
extern bool32 Gemerl_State_4(Gemerl *gemerl);
extern bool32 Gemerl_State_5(Gemerl *gemerl);
extern bool32 Gemerl_State_6(Gemerl *gemerl);
extern bool32 Gemerl_State_7(Gemerl *gemerl);
extern bool32 Gemerl_State_8(Gemerl *gemerl);
extern bool32 Gemerl_State_9(Gemerl *gemerl);
extern bool32 Gemerl_State_10_12_14(Gemerl *gemerl);
extern bool32 Gemerl_State_11_13_15(Gemerl *gemerl);
extern bool32 Gemerl_State_16(Gemerl *gemerl);
extern bool32 Gemerl_State_17(Gemerl *gemerl);
extern bool32 Gemerl_State_18(Gemerl *gemerl);
extern bool32 Gemerl_State_19(Gemerl *gemerl);
extern bool32 Gemerl_State_20(Gemerl *gemerl);
extern bool32 Gemerl_State_21(Gemerl *gemerl);
extern bool32 Gemerl_State_22(Gemerl *gemerl);
extern bool32 Gemerl_State_23(Gemerl *gemerl);
extern bool32 Gemerl_State_24(Gemerl *gemerl);
extern bool32 Gemerl_State_25(Gemerl *gemerl);
extern bool32 Gemerl_State_26(Gemerl *gemerl);
extern bool32 Gemerl_State_27(Gemerl *gemerl);
extern bool32 Gemerl_State_28(Gemerl *gemerl);
extern bool32 Gemerl_State_29(Gemerl *gemerl);
extern bool32 Gemerl_State_30(Gemerl *gemerl);
extern bool32 Gemerl_State_31(Gemerl *gemerl);
extern bool32 Gemerl_State_32(Gemerl *gemerl);
extern bool32 Gemerl_State_33(Gemerl *gemerl);
extern bool32 Gemerl_State_34(Gemerl *gemerl);
extern bool32 Gemerl_State_35(Gemerl *gemerl);
extern bool32 Gemerl_State_36(Gemerl *gemerl);
extern bool32 Gemerl_State_37(Gemerl *gemerl);
extern bool32 Gemerl_State_38(Gemerl *gemerl);
extern bool32 Gemerl_State_39(Gemerl *gemerl);
extern bool32 Gemerl_State_40(Gemerl *gemerl);
extern bool32 Gemerl_State_41(Gemerl *gemerl);
extern bool32 Gemerl_State_42(Gemerl *gemerl);
extern bool32 Gemerl_State_43(Gemerl *gemerl);
extern bool32 Gemerl_State_44(Gemerl *gemerl);
extern bool32 Gemerl_State_45(Gemerl *gemerl);
extern bool32 Gemerl_State_46(Gemerl *gemerl);
extern bool32 Gemerl_State_47(Gemerl *gemerl);
extern bool32 Gemerl_State_48(Gemerl *gemerl);
extern bool32 Gemerl_State_49(Gemerl *gemerl);
extern bool32 Gemerl_State_50(Gemerl *gemerl);
extern bool32 Gemerl_State_51(Gemerl *gemerl);
extern bool32 Gemerl_State_52(Gemerl *gemerl);
extern bool32 Gemerl_State_53(Gemerl *gemerl);
extern bool32 Gemerl_State_54(Gemerl *gemerl);

extern void sub_8068AD8(Gemerl *gemerl);

extern const GemerlState gGemerlStates[];

#endif // GUARD_SA3_GEMERL_STATES_H

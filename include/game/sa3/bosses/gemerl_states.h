#ifndef GUARD_SA3_GEMERL_STATES_H
#define GUARD_SA3_GEMERL_STATES_H

typedef bool32 (*GemerlCallback)(void *);

typedef struct {
    GemerlCallback callback;
    s16 unk4[4];
    s8 unkC;
    s8 unkD;
    AnimId anim;
    u8 pattern;
} GemerlState;

typedef struct {
    /* 0x00 */ u8 filler0[0x4];
    /* 0x04 */ u8 *vram4;
    /* 0x08 */ s32 qSomeX;
    /* 0x0C */ s32 qSomeY;
    /* 0x10 */ u8 filler10[0x4];
    /* 0x14 */ s16 unk14;
    /* 0x16 */ s16 unk16;
    /* 0x18 */ s16 unk18;
    /* 0x1C */ u8 *inputArg0;
    /* 0x20 */ u8 unk20;
    /* 0x21 */ u8 unk21;
    /* 0x22 */ u8 unk22;
    /* 0x23 */ u8 zone;
    /* 0x24 */ u8 unk24[10];
    /* 0x2E */ u8 unk2E;
    /* 0x2F */ u8 unk2F;
    /* 0x30 */ u8 unk30;
    /* 0x31 */ u8 unk31;
    /* 0x32 */ u8 unk32;
    /* 0x33 */ u8 unk33;
    /* 0x34 */ u8 filler34[0x8];
    /* 0x3C */ Sprite2 spr3C;
    /* 0x6C */ SpriteTransform tf6C;
    /* 0x78 */ Sprite spr78;
    /* 0xA0 */ Sprite sprA0;
    /* 0xA0 */ Sprite sprC8;
} Gemerl; /* 0xF0 */

extern bool32 Gemerl_State_0(void *gemerl);
extern bool32 Gemerl_State_1(void *gemerl);
extern bool32 Gemerl_State_2(void *gemerl);
extern bool32 Gemerl_State_3(void *gemerl);
extern bool32 Gemerl_State_4(void *gemerl);
extern bool32 Gemerl_State_5(void *gemerl);
extern bool32 Gemerl_State_6(void *gemerl);
extern bool32 Gemerl_State_7(void *gemerl);
extern bool32 Gemerl_State_8(void *gemerl);
extern bool32 Gemerl_State_9(void *gemerl);
extern bool32 Gemerl_State_10_12_14(void *gemerl);
extern bool32 Gemerl_State_11_13_15(void *gemerl);
extern bool32 Gemerl_State_16(void *gemerl);
extern bool32 Gemerl_State_17(void *gemerl);
extern bool32 Gemerl_State_18(void *gemerl);
extern bool32 Gemerl_State_19(void *gemerl);
extern bool32 Gemerl_State_20(void *gemerl);
extern bool32 Gemerl_State_21(void *gemerl);
extern bool32 Gemerl_State_22(void *gemerl);
extern bool32 Gemerl_State_23(void *gemerl);
extern bool32 Gemerl_State_24(void *gemerl);
extern bool32 Gemerl_State_25(void *gemerl);
extern bool32 Gemerl_State_26(void *gemerl);
extern bool32 Gemerl_State_27(void *gemerl);
extern bool32 Gemerl_State_28(void *gemerl);
extern bool32 Gemerl_State_29(void *gemerl);
extern bool32 Gemerl_State_30(void *gemerl);
extern bool32 Gemerl_State_31(void *gemerl);
extern bool32 Gemerl_State_32(void *gemerl);
extern bool32 Gemerl_State_33(void *gemerl);
extern bool32 Gemerl_State_34(void *gemerl);
extern bool32 Gemerl_State_35(void *gemerl);
extern bool32 Gemerl_State_36(void *gemerl);
extern bool32 Gemerl_State_37(void *gemerl);
extern bool32 Gemerl_State_38(void *gemerl);
extern bool32 Gemerl_State_39(void *gemerl);
extern bool32 Gemerl_State_40(void *gemerl);
extern bool32 Gemerl_State_41(void *gemerl);
extern bool32 Gemerl_State_42(void *gemerl);
extern bool32 Gemerl_State_43(void *gemerl);
extern bool32 Gemerl_State_44(void *gemerl);
extern bool32 Gemerl_State_45(void *gemerl);
extern bool32 Gemerl_State_46(void *gemerl);
extern bool32 Gemerl_State_47(void *gemerl);
extern bool32 Gemerl_State_48(void *gemerl);
extern bool32 Gemerl_State_49(void *gemerl);
extern bool32 Gemerl_State_50(void *gemerl);
extern bool32 Gemerl_State_51(void *gemerl);
extern bool32 Gemerl_State_52(void *gemerl);
extern bool32 Gemerl_State_53(void *gemerl);
extern bool32 Gemerl_State_54(void *gemerl);

#endif // GUARD_SA3_GEMERL_STATES_H

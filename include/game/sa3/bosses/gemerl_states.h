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

#include "global.h"
#include "core.h"

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

const GemerlState gGemerlStates[] = {
    {
        Gemerl_State_0,
        { 60, 80, 100, 120 },
        0,
        0,
        1286,
        0,
    },
    {
        Gemerl_State_1,
        { 60, 80, 100, 120 },
        1,
        0,
        1286,
        1,
    },
    {
        Gemerl_State_2,
        { 60, 80, 100, 120 },
        1,
        0,
        1289,
        0,
    },
    {
        Gemerl_State_3,
        { 15, 20, 25, 30 },
        0,
        0,
        1293,
        0,
    },
    {
        Gemerl_State_4,
        { 27, 36, 45, 57 },
        0,
        0,
        1287,
        0,
    },
    {
        Gemerl_State_5,
        { 0, 0, 0, 0 },
        0,
        0,
        1291,
        0,
    },
    {
        Gemerl_State_6,
        { 40, 40, 40, 40 },
        0,
        0,
        1291,
        1,
    },
    {
        Gemerl_State_7,
        { 60, 75, 88, 110 },
        0,
        0,
        1291,
        2,
    },
    {
        Gemerl_State_8,
        { 120, 120, 120, 120 },
        0,
        0,
        1290,
        0,
    },
    {
        Gemerl_State_9,
        { 30, 30, 30, 30 },
        0,
        0,
        1288,
        0,
    },
    {
        Gemerl_State_10_12_14,
        { 120, 120, 120, 120 },
        0,
        0,
        1295,
        0,
    },
    {
        Gemerl_State_11_13_15,
        { 69, 69, 69, 69 },
        0,
        0,
        1295,
        1,
    },
    {
        Gemerl_State_10_12_14,
        { 120, 120, 120, 120 },
        0,
        0,
        1296,
        0,
    },
    {
        Gemerl_State_11_13_15,
        { 31, 31, 31, 31 },
        0,
        0,
        1296,
        1,
    },
    {
        Gemerl_State_10_12_14,
        { 120, 120, 120, 120 },
        0,
        0,
        1297,
        0,
    },
    {
        Gemerl_State_11_13_15,
        { 25, 25, 25, 25 },
        0,
        0,
        1297,
        1,
    },
    {
        Gemerl_State_16,
        { 30, 30, 30, 30 },
        0,
        0,
        1286,
        1,
    },
    {
        Gemerl_State_17,
        { 30, 30, 30, 30 },
        0,
        0,
        1293,
        0,
    },
    {
        Gemerl_State_18,
        { 6, 6, 6, 6 },
        1,
        0,
        1301,
        0,
    },
    {
        Gemerl_State_19,
        { 60, 60, 60, 60 },
        0,
        0,
        1301,
        1,
    },
    {
        Gemerl_State_20,
        { 10, 10, 10, 10 },
        0,
        0,
        1301,
        2,
    },
    {
        Gemerl_State_21,
        { 0, 0, 0, 0 },
        0,
        0,
        1301,
        3,
    },
    {
        Gemerl_State_22,
        { 0, 0, 0, 0 },
        0,
        0,
        1297,
        0,
    },
    {
        Gemerl_State_23,
        { 0, 0, 0, 0 },
        0,
        0,
        1291,
        0,
    },
    {
        Gemerl_State_24,
        { 37, 37, 37, 37 },
        1,
        0,
        1299,
        0,
    },
    {
        Gemerl_State_25,
        { 13, 18, 20, 23 },
        0,
        0,
        1299,
        1,
    },
    {
        Gemerl_State_26,
        { 1, 1, 1, 1 },
        0,
        0,
        1286,
        0,
    },
    {
        Gemerl_State_27,
        { 26, 32, 36, 40 },
        1,
        0,
        1302,
        0,
    },
    {
        Gemerl_State_28,
        { 18, 20, 23, 28 },
        0,
        0,
        1302,
        1,
    },
    {
        Gemerl_State_29,
        { 0, 0, 0, 0 },
        0,
        0,
        1302,
        1,
    },
    {
        Gemerl_State_30,
        { 20, 27, 34, 40 },
        0,
        0,
        1291,
        1,
    },
    {
        Gemerl_State_31,
        { 21, 23, 27, 30 },
        0,
        0,
        1286,
        1,
    },
    {
        Gemerl_State_32,
        { 6, 6, 6, 6 },
        1,
        0,
        1301,
        0,
    },
    {
        Gemerl_State_33,
        { 60, 60, 60, 60 },
        0,
        0,
        1301,
        1,
    },
    {
        Gemerl_State_34,
        { 10, 10, 10, 10 },
        1,
        0,
        1301,
        2,
    },
    {
        Gemerl_State_35,
        { 0, 0, 0, 0 },
        0,
        0,
        1301,
        3,
    },
    {
        Gemerl_State_36,
        { 0, 0, 0, 0 },
        0,
        0,
        1297,
        0,
    },
    {
        Gemerl_State_37,
        { 0, 0, 0, 0 },
        0,
        0,
        1297,
        0,
    },
    {
        Gemerl_State_38,
        { 16, 19, 22, 25 },
        0,
        0,
        1297,
        1,
    },
    {
        Gemerl_State_39,
        { 6, 6, 6, 6 },
        1,
        0,
        1301,
        0,
    },
    {
        Gemerl_State_40,
        { 60, 60, 60, 60 },
        0,
        0,
        1301,
        1,
    },
    {
        Gemerl_State_41,
        { 10, 10, 10, 10 },
        0,
        0,
        1301,
        2,
    },
    {
        Gemerl_State_42,
        { 6, 8, 10, 12 },
        0,
        0,
        1302,
        2,
    },
    {
        Gemerl_State_43,
        { 7, 10, 13, 18 },
        0,
        0,
        1302,
        3,
    },
    {
        Gemerl_State_44,
        { 120, 120, 120, 120 },
        0,
        0,
        1301,
        3,
    },
    {
        Gemerl_State_45,
        { 6, 8, 10, 12 },
        0,
        0,
        1302,
        2,
    },
    {
        Gemerl_State_46,
        { 7, 10, 13, 18 },
        0,
        0,
        1302,
        3,
    },
    {
        Gemerl_State_47,
        { 0, 0, 0, 0 },
        0,
        0,
        1297,
        0,
    },
    {
        Gemerl_State_48,
        { 16, 19, 22, 25 },
        0,
        0,
        1297,
        1,
    },
    {
        Gemerl_State_49,
        { 60, 70, 80, 90 },
        1,
        0,
        1286,
        0,
    },
    {
        Gemerl_State_50,
        { 10, 10, 10, 10 },
        1,
        0,
        1286,
        0,
    },
    {
        Gemerl_State_51,
        { 1, 1, 1, 1 },
        0,
        0,
        1287,
        0,
    },
    {
        Gemerl_State_52,
        { 210, 210, 210, 210 },
        1,
        0,
        1289,
        0,
    },
    {
        Gemerl_State_53,
        { 1, 1, 1, 1 },
        0,
        0,
        1287,
        0,
    },
    {
        Gemerl_State_54,
        { 1, 1, 1, 1 },
        0,
        0,
        1287,
        0,
    },
    {
        NULL,
        { -1, -1, -1, -1 },
        0,
        0,
        65535,
        255,
    },
};

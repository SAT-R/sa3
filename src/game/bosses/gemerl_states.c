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

extern bool32 Gemerl_State0(void *gemerl);
extern bool32 sub_8067F2C(void *gemerl);
extern bool32 sub_8067F84(void *gemerl);
extern bool32 sub_806800C(void *gemerl);
extern bool32 sub_8068084(void *gemerl);
extern bool32 sub_80665D4(void *gemerl);
extern bool32 sub_8066670(void *gemerl);
extern bool32 sub_8068128(void *gemerl);
extern bool32 sub_8066890(void *gemerl);
extern bool32 sub_80681A0(void *gemerl);
extern bool32 sub_80681FC(void *gemerl);
extern bool32 sub_8068290(void *gemerl);
extern bool32 sub_80681FC(void *gemerl);
extern bool32 sub_8068290(void *gemerl);
extern bool32 sub_80681FC(void *gemerl);
extern bool32 sub_8068290(void *gemerl);
extern bool32 sub_80682A0(void *gemerl);
extern bool32 sub_8066570(void *gemerl);
extern bool32 sub_80682B0(void *gemerl);
extern bool32 sub_8068320(void *gemerl);
extern bool32 sub_806698C(void *gemerl);
extern bool32 sub_8066AB8(void *gemerl);
extern bool32 sub_806837C(void *gemerl);
extern bool32 sub_80683E8(void *gemerl);
extern bool32 sub_806845C(void *gemerl);
extern bool32 sub_8066BEC(void *gemerl);
extern bool32 sub_80684B0(void *gemerl);
extern bool32 sub_8068520(void *gemerl);
extern bool32 sub_8066C9C(void *gemerl);
extern bool32 sub_8066D0C(void *gemerl);
extern bool32 sub_80685AC(void *gemerl);
extern bool32 sub_80685C4(void *gemerl);
extern bool32 sub_80685F0(void *gemerl);
extern bool32 sub_8066EE4(void *gemerl);
extern bool32 sub_8066F64(void *gemerl);
extern bool32 sub_8067050(void *gemerl);
extern bool32 sub_8067204(void *gemerl);
extern bool32 sub_8068660(void *gemerl);
extern bool32 sub_80686C8(void *gemerl);
extern bool32 sub_80672E0(void *gemerl);
extern bool32 sub_8067378(void *gemerl);
extern bool32 sub_80686D8(void *gemerl);
extern bool32 sub_8068748(void *gemerl);
extern bool32 sub_8068778(void *gemerl);
extern bool32 sub_80673F8(void *gemerl);
extern bool32 sub_80687B0(void *gemerl);
extern bool32 sub_80687F4(void *gemerl);
extern bool32 sub_80674EC(void *gemerl);
extern bool32 sub_8068818(void *gemerl);
extern bool32 sub_8067FDC(void *gemerl);
extern bool32 sub_8068174(void *gemerl);
extern bool32 sub_8066728(void *gemerl);
extern bool32 sub_80680BC(void *gemerl);
extern bool32 sub_8068104(void *gemerl);
extern bool32 sub_8068124(void *gemerl);

const GemerlState gGemerlStates[] = {
    {
        Gemerl_State0,
        { 60, 80, 100, 120 },
        0,
        0,
        1286,
        0,
    },
    {
        sub_8067F2C,
        { 60, 80, 100, 120 },
        1,
        0,
        1286,
        1,
    },
    {
        sub_8067F84,
        { 60, 80, 100, 120 },
        1,
        0,
        1289,
        0,
    },
    {
        sub_806800C,
        { 15, 20, 25, 30 },
        0,
        0,
        1293,
        0,
    },
    {
        sub_8068084,
        { 27, 36, 45, 57 },
        0,
        0,
        1287,
        0,
    },
    {
        sub_80665D4,
        { 0, 0, 0, 0 },
        0,
        0,
        1291,
        0,
    },
    {
        sub_8066670,
        { 40, 40, 40, 40 },
        0,
        0,
        1291,
        1,
    },
    {
        sub_8068128,
        { 60, 75, 88, 110 },
        0,
        0,
        1291,
        2,
    },
    {
        sub_8066890,
        { 120, 120, 120, 120 },
        0,
        0,
        1290,
        0,
    },
    {
        sub_80681A0,
        { 30, 30, 30, 30 },
        0,
        0,
        1288,
        0,
    },
    {
        sub_80681FC,
        { 120, 120, 120, 120 },
        0,
        0,
        1295,
        0,
    },
    {
        sub_8068290,
        { 69, 69, 69, 69 },
        0,
        0,
        1295,
        1,
    },
    {
        sub_80681FC,
        { 120, 120, 120, 120 },
        0,
        0,
        1296,
        0,
    },
    {
        sub_8068290,
        { 31, 31, 31, 31 },
        0,
        0,
        1296,
        1,
    },
    {
        sub_80681FC,
        { 120, 120, 120, 120 },
        0,
        0,
        1297,
        0,
    },
    {
        sub_8068290,
        { 25, 25, 25, 25 },
        0,
        0,
        1297,
        1,
    },
    {
        sub_80682A0,
        { 30, 30, 30, 30 },
        0,
        0,
        1286,
        1,
    },
    {
        sub_8066570,
        { 30, 30, 30, 30 },
        0,
        0,
        1293,
        0,
    },
    {
        sub_80682B0,
        { 6, 6, 6, 6 },
        1,
        0,
        1301,
        0,
    },
    {
        sub_8068320,
        { 60, 60, 60, 60 },
        0,
        0,
        1301,
        1,
    },
    {
        sub_806698C,
        { 10, 10, 10, 10 },
        0,
        0,
        1301,
        2,
    },
    {
        sub_8066AB8,
        { 0, 0, 0, 0 },
        0,
        0,
        1301,
        3,
    },
    {
        sub_806837C,
        { 0, 0, 0, 0 },
        0,
        0,
        1297,
        0,
    },
    {
        sub_80683E8,
        { 0, 0, 0, 0 },
        0,
        0,
        1291,
        0,
    },
    {
        sub_806845C,
        { 37, 37, 37, 37 },
        1,
        0,
        1299,
        0,
    },
    {
        sub_8066BEC,
        { 13, 18, 20, 23 },
        0,
        0,
        1299,
        1,
    },
    {
        sub_80684B0,
        { 1, 1, 1, 1 },
        0,
        0,
        1286,
        0,
    },
    {
        sub_8068520,
        { 26, 32, 36, 40 },
        1,
        0,
        1302,
        0,
    },
    {
        sub_8066C9C,
        { 18, 20, 23, 28 },
        0,
        0,
        1302,
        1,
    },
    {
        sub_8066D0C,
        { 0, 0, 0, 0 },
        0,
        0,
        1302,
        1,
    },
    {
        sub_80685AC,
        { 20, 27, 34, 40 },
        0,
        0,
        1291,
        1,
    },
    {
        sub_80685C4,
        { 21, 23, 27, 30 },
        0,
        0,
        1286,
        1,
    },
    {
        sub_80685F0,
        { 6, 6, 6, 6 },
        1,
        0,
        1301,
        0,
    },
    {
        sub_8066EE4,
        { 60, 60, 60, 60 },
        0,
        0,
        1301,
        1,
    },
    {
        sub_8066F64,
        { 10, 10, 10, 10 },
        1,
        0,
        1301,
        2,
    },
    {
        sub_8067050,
        { 0, 0, 0, 0 },
        0,
        0,
        1301,
        3,
    },
    {
        sub_8067204,
        { 0, 0, 0, 0 },
        0,
        0,
        1297,
        0,
    },
    {
        sub_8068660,
        { 0, 0, 0, 0 },
        0,
        0,
        1297,
        0,
    },
    {
        sub_80686C8,
        { 16, 19, 22, 25 },
        0,
        0,
        1297,
        1,
    },
    {
        sub_80672E0,
        { 6, 6, 6, 6 },
        1,
        0,
        1301,
        0,
    },
    {
        sub_8067378,
        { 60, 60, 60, 60 },
        0,
        0,
        1301,
        1,
    },
    {
        sub_80686D8,
        { 10, 10, 10, 10 },
        0,
        0,
        1301,
        2,
    },
    {
        sub_8068748,
        { 6, 8, 10, 12 },
        0,
        0,
        1302,
        2,
    },
    {
        sub_8068778,
        { 7, 10, 13, 18 },
        0,
        0,
        1302,
        3,
    },
    {
        sub_80673F8,
        { 120, 120, 120, 120 },
        0,
        0,
        1301,
        3,
    },
    {
        sub_80687B0,
        { 6, 8, 10, 12 },
        0,
        0,
        1302,
        2,
    },
    {
        sub_80687F4,
        { 7, 10, 13, 18 },
        0,
        0,
        1302,
        3,
    },
    {
        sub_80674EC,
        { 0, 0, 0, 0 },
        0,
        0,
        1297,
        0,
    },
    {
        sub_8068818,
        { 16, 19, 22, 25 },
        0,
        0,
        1297,
        1,
    },
    {
        sub_8067FDC,
        { 60, 70, 80, 90 },
        1,
        0,
        1286,
        0,
    },
    {
        sub_8068174,
        { 10, 10, 10, 10 },
        1,
        0,
        1286,
        0,
    },
    {
        sub_8066728,
        { 1, 1, 1, 1 },
        0,
        0,
        1287,
        0,
    },
    {
        sub_80680BC,
        { 210, 210, 210, 210 },
        1,
        0,
        1289,
        0,
    },
    {
        sub_8068104,
        { 1, 1, 1, 1 },
        0,
        0,
        1287,
        0,
    },
    {
        sub_8068124,
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

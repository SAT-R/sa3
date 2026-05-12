
typedef struct Strc_3001CFC_sub {
    /* 0x00 */ s32 unk0;
    /* 0x04 */ s32 unk4;
    /* 0x08 */ s16 unk8;
    /* 0x0A */ s16 unkA;
    /* 0x0C */ u16 unkC;
    /* 0x0E */ u16 unkE;
    /* 0x10 */ u16 unk10;
} Strc_3001CFC_sub; /* 0x14 */

typedef struct Strc_3001CFC {
    /* 0x000 */ Sprite s;
    /* 0x028 */ Strc_3001CFC_sub unk28[32];
    /* 0x2A8 */ s32 unk2A8;
    /* 0x2AC */ s16 unk2AC;
    /* 0x2AE */ s16 unk2AE;
    /* 0x2B0 */ u8 unk2B0;
} Strc_3001CFC; /* 0x2B4 */
extern struct Task *gTask_03001CFC; // -> Strc_3001CFC

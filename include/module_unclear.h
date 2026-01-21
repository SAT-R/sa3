#ifndef GUARD_SA3_MODULE_UNCLEAR_H
#define GUARD_SA3_MODULE_UNCLEAR_H

#include "types.h"
#include "game/entity.h" // for MapEntity struct
#include "game/player.h"

/* The variable and function declarations in here do not have a corresponding module yet */

// Appears to be multiplayer-only?

// TODO: Type this properly
extern void *sa2__gUnknown_03002878;

extern u8 gBackgroundsCopyQueueIndex;
extern u8 sa2__gUnknown_03002A80;
extern u8 gBackgroundsCopyQueueCursor;

extern u8 sa2__gUnknown_03005390;

extern u8 gVramGraphicsCopyQueueIndex;
extern u8 gVramGraphicsCopyCursor;

// Multiplayer-related (used in IA item_box_mp.c)
typedef struct {
    /* 0x00 */ u8 filler0[7];
    /* 0x4C */ u8 unk7;
    /* 0x4C */ u8 unk8;
    /* 0x4C */ u8 unk9;
    /* 0x00 */ u8 fillerA[0x2];
    /* 0x4C */ u32 unkC[4];
    /* 0x00 */ u16 unk1C[4][6];
    /* 0x4C */ u8 unk4C;
    /* 0x4D */ u8 unk4D;
    /* 0x4E */ u8 filler4E[0x4];
    /* 0x52 */ u16 unk52;
    /* 0x54 */ u8 unk54;
    /* 0x55 */ u8 unk55; // used to determine item type in MP itemboxes (15 + (unk55 & 0x1))
    /* 0x56 */ u8 unk56;
} Struct_03001060; /* size: ??? */
extern Struct_03001060 gUnknown_03001060;

extern void sub_80003B8(void);

bool32 sub_8001E58(void);
void sub_800214C(void);
void WarpToMap(s16 level, u16);
void Task_800303C(void); // Player-related (Player.unk90.main gets set to this in goal_ring IA)
void sub_8003D2C(void);
void sub_8003DC4(u16 param0);
void sub_8003DF0(u16 song);
void sub_8003E0C(u16 song);
void sub_8003E28(u16 song); // StopSong?
void sub_8004D30(void);
void sub_8004DD8(s32 qWorldX, s32 qWorldY);
u16 sub_8004E20(s16, s16, s16 *param2);

extern bool32 sub_8020700(Sprite *s, s32 worldX, s32 worldY, s16 p3, Player *p, s16 p5);

// Collision - 'p5' might be hitbox ID?
extern u32 sub_8020874(Sprite *s, s32 worldX, s32 worldY, s16 p3, Player *p, s16 p5, u8 p6);
u32 sub_8020950(Sprite *s, s32 worldX, s32 worldY, Player *p, u8 param4); // collision
bool32 sub_8020A58(Sprite *s, s16 param1, s32 worldX, s32 worldY, Rect8 *param4, Player *p, u8 param6);
bool32 sub_8020CE0(Sprite *s, s32 worldX, s32 worldY, s16 hbIndex, Player *p);
bool32 sub_8020E3C(Sprite *s, s32 param1, s32 param2, s16 param3, Player *p);

void ResolvePlayerSpriteCollision(Sprite *s, Player *p);

void sub_80236C8(Sprite *, u8 p1, void *);
bool32 sub_8023734(void *chaoEwramData);
void sub_80239A8(void *chaoEwramData);
// NOTE: x and y have different signedness, but it's correct
void sub_80274F4(u8, u16 x, s16 y);

// The implementation of sub_80275B8 makes it seem that 'level' is a u8,
// but that way the calling site in some instances will be wrong
// (src/game/interactables/warp.c -> Task_802E6F8)
void sub_80275B8(u32 level, u8, u8);
void sub_80276A8(u8 charId);
void sub_80276F4(u16 somePlayerFlags, u16 playerIndex);
void sub_80296F8(u16 somePlayerFlags);
void sub_802954C(Player *p, s16 worldX, s16 worldY);
void sub_80299FC(void);
void sub_8029A18(u16 songId);
bool32 sub_802C140(s32 worldX, s32 worldY, s32 screenX, s32 screenY);
bool32 sub_802C1F8(s32, s32);
u8 sub_805203C(s32 worldX, s32 worldY, s32 param2, s32 param3, void *param4); // same type as sub_805217C
u8 sub_805217C(s32 worldX, s32 worldY, s32 param2, s32 param3, void *param4); // same type as sub_805203C
s32 sub_80517FC(s32 worldX, s32 worldY, s32 param2, s32 param3, void *param4, void *callback);
s32 sub_80519EC(s32 worldX, s32 worldY, s32 param2, s32 param3, void *param4, void *callback);
s32 sub_8051F54(s32 worldX, s32 worldY, s32 param2);
s32 sub_8052394(s32 worldX, s32 worldY, s32 param2, s32 param3, void *param4, void *callback);
s32 sub_8052418(s32 worldX, s32 worldY, s32 param2, s32 param3, void *callback);
void sub_8057AA0(u16, u16, u8);
void sub_8053128(s16, s16);
bool32 sub_805C510(Sprite *s);
bool8 sub_8079FFC(void);
bool8 sub_807A074(void);
void CreateCharacterSelect(u8);
void sub_80961E4(u8 param0);

void sub_80C07E0(Sprite *s);
void sub_80C460C(const u16 *pal, u8 paletteOffset, u16 palSize);
void *sub_80C4C60(void *param0, u8 param1);
void sub_80C4E24(void *param0, u8 param1, u32 *param2);
void sub_80C4EB0(void *param0, u8 param1, u32 mask);
void sub_80C59E8(void *param0, u8 param1, s32 *screenPos, u8 *arr4, s16 param4);
void sub_80C60B0(void **param0, u8 param1);
void sub_80C610C(void *param0, u8 param1);

typedef struct Strc3001CFC_sub {
    s32 unk0;
    s32 unk4;
    s16 unk8;
    s16 unkA;
    u16 unkC;
    u8 fillerE[0x6];
} Strc3001CFC_sub; /* 0x14 */
typedef struct Strc3001CFC {
    Sprite s;
    Strc3001CFC_sub unk28[32];
    u8 filler2A8[0x8];
    u8 unk2B0;
} Strc3001CFC; /* 0x2B4 */
extern struct Task *gTask_03001CFC; // -> Strc3001CFC

s32 sub_8011BFC(u8, Player *p);
extern void sub_8029C54(s32 param0, s32 param1);

void sub_80533F4(u32 character); // related to Special Springs

#endif // GUARD_SA3_MODULE_UNCLEAR_H
#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "game/shared/stage/player.h"

typedef struct ItemBox {
    /* 0x00 */ MapEntity *me;
    /* 0x04 */ u8 meX;
    /* 0x05 */ u8 id;
    /* 0x06 */ u8 meIndex;
    /* 0x07 */ u8 unk7;
    /* 0x08 */ u8 unk8;
    /* 0x09 */ u8 unk9;
    /* 0x0A */ s16 regionX;
    /* 0x0C */ s16 regionY;
    /* 0x0E */ u8 fillerE[0x2];
    /* 0x10 */ s16 unk10;
    /* 0x10 */ s16 unk12;
    /* 0x14 */ s32 unk14;
    /* 0x18 */ s32 unk18;
    /* 0x1C */ Sprite s;
    /* 0x44 */ Sprite s2;
    /* 0x6C */ Player *p;
} ItemBox; /* 0x70 */

void sub_8004428(s32, s32); /* extern */
void sub_800ED50(Player *); /* extern */
void sub_80179BC(Player *); /* extern */
void sub_8017A58(Player *); /* extern */
void sub_80267E8(); /* extern */
void sub_8027538(s32); /* extern */
void sub_802773C(u16, u16); /* extern */
void sub_8027768(u32, s32); /* extern */
void sub_80277AC(u32, s32); /* extern */
void sub_80277F0(u32, s32); /* extern */
void sub_8027834(); /* extern */
void sub_805CEBC(s32, s32, s32, s32, s32, s32); /* extern */
void TaskDestructor_ItemBox(Task *); /* static */
extern u32 gUnknown_080CF3B8[2];
extern u16 gUnknown_080CF3C0[][3];
extern u16 gUnknown_080CF420[];
extern u16 gUnknown_080CF43E[];
extern u16 gUnknown_080CF44E[];

void sub_802C35C(ItemBox *itembox, s32 param1);
void sub_802C618(ItemBox *itembox);
void Task_802D61C(void);
s32 sub_802CE4C(ItemBox *itembox);
s32 sub_802D354(ItemBox *itembox, s32 arg1, s32 arg2, u8 arg3, Player *p, s32 arg5);
s32 sub_802D4A8(ItemBox *itembox, s32 arg1, s32 arg2, u8 arg3);
void sub_802D6CC(ItemBox *itembox, s32 arg1);

bool32 sub_802D694(s32 x, s32 y);

void Task_ItemBoxInit(void);
void sub_802C7B0(ItemBox *arg0);

void TaskDestructor_ItemBox(Task *t)
{
    ItemBox *itembox = TASK_DATA(t);
    VramFree(itembox->s.tiles);
    VramFree(itembox->s2.tiles);
}

void Task_802D61C()
{
    ItemBox *itembox = TASK_DATA(gCurTask);

    if (itembox->unk7++ > 0x3BU) {
        sub_802C7B0(itembox);
    } else {
        itembox->unk10 = (u16)(itembox->unk10 - Q(1));
    }
    sub_802D6CC(itembox, 1);
}

void Task_802D660(void)
{
    ItemBox *itembox = TASK_DATA(gCurTask);

    if (itembox->unk7++ >= 30) {
        TaskDestroy(gCurTask);
        return;
    }

    sub_802D6CC(itembox, 1);
}

bool32 sub_802D694(s32 x, s32 y)
{
    x -= gCamera.x;
    y -= gCamera.y;

    if (IS_OUT_OF_CAM_RANGE_TYPED(u32, x, y)) {
        return TRUE;
    }
    return FALSE;
}

void sub_802D6CC(ItemBox *itembox, s32 arg1)
{
    itembox->s.x = itembox->unk14 - gCamera.x;
    itembox->s.y = itembox->unk18 - gCamera.y;
    itembox->s2.x = itembox->unk14 - gCamera.x;
    itembox->s2.y = I(itembox->unk10) + itembox->s.y;
    if (arg1 == 0) {
        DisplaySprite(&itembox->s);
    }
    DisplaySprite(&itembox->s2);
}

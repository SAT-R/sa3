#ifndef GUARD_SA3_NOTIFICATION_TEXT_H
#define GUARD_SA3_NOTIFICATION_TEXT_H

typedef struct {
    /* 0x00 */ Sprite *s;
    /* 0x04 */ u8 unk4;
    /* 0x05 */ u8 unk5;
    /* 0x06 */ u8 unk6;
    /* 0x07 */ u8 unk7;
    /* 0x08 */ u16 unk8;
    /* 0x0A */ u16 unkA;
    /* 0x0C */ u8 unkC;
    /* 0x0D */ u8 unkD;
    /* 0x0E */ u8 unkE;
    /* 0x0F */ u8 unkF;
    /* 0x10 */ u8 unk10;
    /* 0x11 */ u8 unk11;
    /* 0x12 */ u16 unk12;
    /* 0x14 */ u16 unk14;
    /* 0x16 */ u8 filler16[0x4];
    /* 0x1A */ u16 unk1A;
    /* 0x1C */ u8 unk1C;
    /* 0x1D */ u8 unk1D;
    /* 0x1E */ u8 unk1E;
    /* 0x1F */ u8 unk1F;
    /* 0x24 */ void *text;
    /* 0x24 */ void *vram24;
    /* 0x28 */ u8 padding28[0xC84];
} NotificationText; /* 0xCAC */

void sub_80236C8(Sprite *s, u8 textId, NotificationText *notifText);
bool32 sub_8023734(NotificationText *chaoEwramData);
void sub_80239A8(NotificationText *chaoEwramData);

typedef struct {
    /* 0x00 */ AnimId anim;
    /* 0x02 */ u8 pattern;
    /* 0x03 */ u8 unk3;
    /* 0x04 */ u8 unk4;
} StageNotifChar;

// TODO: Replace array indices with #defined names
const StageNotifChar gNotificationTextFont[];

#endif // GUARD_SA3_NOTIFICATION_TEXT_H

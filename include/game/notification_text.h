#ifndef GUARD_SA3_NOTIFICATION_TEXT_H
#define GUARD_SA3_NOTIFICATION_TEXT_H

typedef struct {
    /* 0x00 */ u8 filler0[0x1F];
    /* 0x1F */ u8 unk1F;
    /* 0x20 */ u8 padding20[0xC8C];
} NotificationText; /* 0xCAC */

void sub_80236C8(Sprite *s, u8 textId, NotificationText *notifText);
bool32 sub_8023734(NotificationText *chaoEwramData);
void sub_80239A8(NotificationText *chaoEwramData);

#endif // GUARD_SA3_NOTIFICATION_TEXT_H

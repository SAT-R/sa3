#include "global.h"
#include "core.h"
#include "constants/animations.h"
#include "game/notification_text.h"
#include "game/save.h" // NUM_LANGUAGES

extern u16 **gUnknown_08E7EA78[NUM_LANGUAGES];

void sub_80236C8(Sprite *s, u8 textId, NotificationText *notifText)
{
    u8 lang;
    u16 **text;

    notifText->s = s;
    notifText->unkA = 8;
    notifText->unk12 = 40;
    notifText->unk14 = 40;
    notifText->unkF = 40;
    notifText->unk10 = 40;
    notifText->unkD = 0;
    notifText->unkE = 0;
    notifText->unk5 = 0;
    notifText->unk6 = 0;
    notifText->unk8 = 0;
    notifText->unkC = 0;
    notifText->unk1C = 0;
    notifText->unk1A = 0;
    notifText->unk1D = 0;
    notifText->unk1E = 0;
    notifText->vram24 = OBJ_VRAM0 + 0x2000;
    notifText->unk1F = 0;

    lang = MIN(LOADED_SAVE->language, NUM_LANGUAGES - 1);
    text = gUnknown_08E7EA78[lang];
    notifText->text = text[textId];
}

#if 0
u32 sub_8023734(NotificationText *chaoEwramData) {
    Sprite *temp_r3_3;
    StageNotifChar *temp_r5;
    u16 temp_r0_2;
    u16 temp_r1_2;
    u16 temp_r2;
    u16 temp_r2_2;
    u16 temp_r2_3;
    u16 temp_r3;
    u16 temp_r6;
    u16 var_r2;
    u8 temp_r0;
    u8 temp_r0_3;
    u8 temp_r0_4;
    u8 var_r0;
    void *temp_r1;
    void *temp_r3_2;

    chaoEwramData->unk1C = 0;
    temp_r0 = chaoEwramData->unk5;
    if (temp_r0 != 0) {
        temp_r2 = *(((temp_r0 * 2) + chaoEwramData->text) - 2);
        if ((u32) (temp_r2 + 0xFFFFFEAC) <= 1U) {
            if (!(1 & gPressedKeys) && !(1 & chaoEwramData->unk1F)) {
                chaoEwramData->unk1C = 1;
                goto block_42;
            }
            if (temp_r2 != 0x154) {
                return 1U;
            }
            chaoEwramData->unk8 = chaoEwramData->unkA - 2;
            chaoEwramData->unk6 = 0;
            chaoEwramData->unkC = 0;
            chaoEwramData->unk12 = 0x28;
            chaoEwramData->unk14 = 0x28;
            chaoEwramData->vram24 = (void *)0x06012000;
            goto block_8;
        }
    }
block_8:
    temp_r2_2 = chaoEwramData->unk8 + 2;
    chaoEwramData->unk8 = temp_r2_2;
    if ((1 & gInput) && !(1 & chaoEwramData->unk1F)) {
        chaoEwramData->unk8 = temp_r2_2 + 2;
    }
    temp_r0_2 = chaoEwramData->unk8;
    temp_r3 = chaoEwramData->unkA;
    if ((u32) temp_r0_2 < (u32) temp_r3) {

    } else {
        temp_r6 = temp_r0_2 - temp_r3;
        chaoEwramData->unk8 = temp_r6;
        chaoEwramData->unk5 += 1;
        temp_r1 = chaoEwramData->text;
        temp_r2_3 = *(((chaoEwramData->unk5 * 2) + temp_r1) - 2);
        if ((u32) temp_r2_3 <= 0x150U) {
            temp_r0_3 = chaoEwramData->unk6;
            if (temp_r0_3 != 0) {
                temp_r3_2 = chaoEwramData + ((temp_r0_3 * 0x28) + 4);
                temp_r3_2->unk10 = (u16) chaoEwramData->unk16;
                temp_r3_2->unk12 = (u16) chaoEwramData->unk18;
            }
            temp_r5 = &gNotificationTextFont[temp_r2_3];
            temp_r3_3 = chaoEwramData + ((chaoEwramData->unk6 * 0x28) + 0x2C);
            if ((s16) chaoEwramData->unk12 != 0x28) {
                chaoEwramData->unk12 += temp_r5->unk3;
            }
            chaoEwramData->unk1E = 4;
            temp_r3_3->tiles = chaoEwramData->vram24;
            chaoEwramData->vram24 += 0x80;
            temp_r3_3->anim = temp_r5->anim;
            temp_r3_3->variant = temp_r5->pattern;
            temp_r1_2 = chaoEwramData->unk12;
            temp_r3_3->x = temp_r1_2;
            temp_r3_3->y = (s8) chaoEwramData->unkC + chaoEwramData->unk14;
            chaoEwramData->unk16 = temp_r1_2;
            chaoEwramData->unk18 = (u16) temp_r3_3->y;
            temp_r0_4 = chaoEwramData->unk1D;
            switch (temp_r0_4) {                    /* switch 1; irregular */
            case 1:                                 /* switch 1 */
                temp_r3_3->y -= 8;
                break;
            case 2:                                 /* switch 1 */
                temp_r3_3->y += 8;
                break;
            case 3:                                 /* switch 1 */
                temp_r3_3->x -= 8;
                break;
            }
            temp_r3_3->oamFlags = 0;
            temp_r3_3->animCursor = 0;
            temp_r3_3->qAnimDelay = 0;
            temp_r3_3->prevVariant = 0xFF;
            temp_r3_3->animSpeed = 0x10;
            temp_r3_3->palId = 0xF;
            temp_r3_3->hitboxes[0].index = -1;
            temp_r3_3->frameFlags = 0;
            UpdateSpriteAnimation(temp_r3_3);
            chaoEwramData->unk12 += gNotificationTextFont[temp_r2_3].unk4;
            chaoEwramData->unk6 += 1;
        } else {
            chaoEwramData->unk8 = temp_r3 + (temp_r6 + 0xFFFE);
            switch (temp_r2_3) {                    /* switch 2 */
            case -4294966959:                       /* switch 2 */
                chaoEwramData->unk5 += 1;
                chaoEwramData->unk12 += *(((chaoEwramData->unk5 * 2) + temp_r1) - 2);
                break;
            case -4294966958:                       /* switch 2 */
                chaoEwramData->unk5 += 1;
                var_r2 = *(((chaoEwramData->unk5 * 2) + temp_r1) - 2);
                if ((u32) var_r2 <= 2U) {
                    var_r2 = 2;
                }
                chaoEwramData->unk8 = 0;
                chaoEwramData->unkA = var_r2;
                break;
            case -4294966957:                       /* switch 2 */
                chaoEwramData->unk12 = (u16) (s8) chaoEwramData->unkF;
                chaoEwramData->unk14 += 0x10;
                break;
            case -4294966956:                       /* switch 2 */
                chaoEwramData->vram24 = chaoEwramData->unk28;
                break;
            case -4294966954:                       /* switch 2 */
                chaoEwramData->unk5 += 1;
                chaoEwramData->unkC = (u8) *(((chaoEwramData->unk5 * 2) + temp_r1) - 2);
                break;
            case -4294966953:                       /* switch 2 */
                chaoEwramData->unk5 += 1;
                chaoEwramData->unk1A = *(((chaoEwramData->unk5 * 2) + temp_r1) - 2);
                break;
            case -4294966951:                       /* switch 2 */
                var_r0 = 0;
block_41:
                chaoEwramData->unk1D = var_r0;
                break;
            case -4294966950:                       /* switch 2 */
                var_r0 = 1;
                goto block_41;
            case -4294966949:                       /* switch 2 */
                var_r0 = 2;
                goto block_41;
            case -4294966948:                       /* switch 2 */
                var_r0 = 3;
                goto block_41;
            }
        }
    }
block_42:
    return 0U;
}

void sub_80239A8(NotificationText *chaoEwramData) {
    Sprite *temp_r1;
    Sprite *temp_r1_2;
    Sprite *temp_r7;
    Sprite *var_r1;
    s16 var_r0;
    u8 temp_r0;
    u8 temp_r0_2;
    u8 var_r4;
    u8 var_r6;

    temp_r7 = chaoEwramData->s;
    var_r6 = chaoEwramData->unk6;
    if (var_r6 != 0) {
        if (chaoEwramData->unk1E != 0) {
            var_r6 -= 1;
        }
        var_r4 = 0;
        if ((u32) var_r6 > 0U) {
            do {
                temp_r1 = chaoEwramData + ((var_r4 * 0x28) + 0x2C);
                temp_r1->x += (s8) chaoEwramData->unkD;
                temp_r1->y += (s8) chaoEwramData->unkE;
                DisplaySprite(temp_r1);
                var_r4 += 1;
            } while ((u32) var_r4 < (u32) var_r6);
        }
        temp_r0 = chaoEwramData->unk1E;
        if (temp_r0 != 0) {
            chaoEwramData->unk1E = temp_r0 - 1;
            temp_r0_2 = chaoEwramData->unk1D;
            switch (temp_r0_2) {                    /* irregular */
            case 0:
                var_r1 = chaoEwramData + ((var_r4 * 0x28) + 0x2C);
block_17:
                DisplaySprite(var_r1);
                break;
            case 1:
                var_r1 = chaoEwramData + ((var_r4 * 0x28) + 0x2C);
                var_r0 = var_r1->y + 2;
block_16:
                var_r1->y = var_r0;
                goto block_17;
            case 2:
                var_r1 = chaoEwramData + ((var_r4 * 0x28) + 0x2C);
                var_r0 = var_r1->y - 2;
                goto block_16;
            case 3:
                temp_r1_2 = chaoEwramData + ((var_r4 * 0x28) + 0x2C);
                temp_r1_2->x += 2;
                DisplaySprite(temp_r1_2);
                break;
            }
        }
    }
    if ((chaoEwramData->unk1C != 0) && (temp_r7 != NULL)) {
        temp_r7->x = chaoEwramData->unk12 + 0xA;
        temp_r7->y = (s16) chaoEwramData->unk14;
        UpdateSpriteAnimation(temp_r7);
        DisplaySprite(temp_r7);
    }
}
#endif
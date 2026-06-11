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

bool32 sub_8023734(NotificationText *chaoEwramData)
{
    Sprite *s;
    const StageNotifChar *temp_r5;
    u16 temp_r0_2;
    u16 temp_r1_2;
    u16 temp_r2;
    s32 temp_r2_2;
    s32 temp_r3;
    u32 textChar;
    u8 temp_r0;
    u8 temp_r0_3;
    u8 temp_r0_4;
    u8 var_r0;
    s32 index;
    void *temp_r3_2;

    chaoEwramData->unk1C = 0;
    if (chaoEwramData->unk5 != 0) {
        textChar = chaoEwramData->text[chaoEwramData->unk5 - 1];
        if (textChar == 0x154 || textChar == 0x155) {
            if (!(1 & gPressedKeys) && !(1 & chaoEwramData->unk1F)) {
                chaoEwramData->unk1C = 1;
                return 0U;
            }
            if (textChar != 0x154) {
                return 1U;
            }
            chaoEwramData->unk8 = chaoEwramData->unkA - 2;
            chaoEwramData->unk6 = 0;
            chaoEwramData->unkC = 0;
            chaoEwramData->unk12 = 0x28;
            chaoEwramData->unk14 = 0x28;
            chaoEwramData->vram24 = (void *)(OBJ_VRAM0 + 0x2000);
        }
    }

    chaoEwramData->unk8 += 2;
    if ((A_BUTTON & gInput) && !(1 & chaoEwramData->unk1F)) {
        chaoEwramData->unk8 += 2;
    }

    if (chaoEwramData->unk8 >= (u32)chaoEwramData->unkA) {
        chaoEwramData->unk8 -= chaoEwramData->unkA;
        chaoEwramData->unk5 += 1;
        textChar = chaoEwramData->text[chaoEwramData->unk5 - 1];
        if (textChar < 0x151) {
            if (chaoEwramData->unk6 != 0) {
                s = &chaoEwramData->sprites2C[chaoEwramData->unk6 - 1];
                s->x = (u16)chaoEwramData->unk16;
                s->y = (u16)chaoEwramData->unk18;
            }
            temp_r5 = &gNotificationTextFont[textChar];
            s = &chaoEwramData->sprites2C[chaoEwramData->unk6];
            if ((s16)chaoEwramData->unk12 != 0x28) {
                chaoEwramData->unk12 += temp_r5->unk3;
            }
            chaoEwramData->unk1E = 4;
            s->tiles = chaoEwramData->vram24;
            {
#ifndef NON_MATCHING
                u8 *vram;
                asm("ldr %0, [%1, #0x24]" : "=r"(vram) : "r"(chaoEwramData));
                chaoEwramData->vram24 = vram + (4 * TILE_SIZE_4BPP);
#else
                chaoEwramData->vram24 += (4 * TILE_SIZE_4BPP);
#endif
            }
            s->anim = temp_r5->anim;
            s->variant = temp_r5->pattern;
            s->x = chaoEwramData->unk12;
            s->y = (s8)chaoEwramData->unkC + chaoEwramData->unk14;
            chaoEwramData->unk16 = s->x;
            chaoEwramData->unk18 = s->y;

            switch (chaoEwramData->unk1D) {
                case 0:
                    break;
                case 1:
                    s->y -= 8;
                    break;
                case 2:
                    s->y += 8;
                    break;
                case 3:
                    s->x -= 8;
                    break;
            }

            s->oamFlags = 0;
            s->animCursor = 0;
            s->qAnimDelay = 0;
            s->prevVariant = -1;
            s->animSpeed = 0x10;
            s->palId = 0xF;
            s->hitboxes[0].index = -1;
            s->frameFlags = 0;
            UpdateSpriteAnimation(s);
            chaoEwramData->unk12 += gNotificationTextFont[textChar].unk4;
            chaoEwramData->unk6 += 1;
        } else {
            chaoEwramData->unk8 += (chaoEwramData->unkA - 2);

            switch (textChar) {
                case 0x151:
                    chaoEwramData->unk5 += 1;
                    textChar = chaoEwramData->text[chaoEwramData->unk5 - 1];
                    chaoEwramData->unk12 += textChar;
                    break;
                case 0x152:
                    chaoEwramData->unk5 += 1;
                    textChar = chaoEwramData->text[chaoEwramData->unk5 - 1];
                    if (textChar <= 2U) {
                        textChar = 2;
                    }
                    chaoEwramData->unk8 = 0;
                    chaoEwramData->unkA = textChar;
                    break;
                case 0x153:
                    chaoEwramData->unk12 = (u16)(s8)chaoEwramData->unkF;
                    chaoEwramData->unk14 += 0x10;
                    break;
                case 0x154:
                    chaoEwramData->vram24 = chaoEwramData->vram28;
                    break;
                case 0x156:
                    chaoEwramData->unk5 += 1;
                    textChar = chaoEwramData->text[chaoEwramData->unk5 - 1];
                    chaoEwramData->unkC = textChar;
                    break;
                case 0x157:
                    chaoEwramData->unk5 += 1;
                    textChar = chaoEwramData->text[chaoEwramData->unk5 - 1];
                    chaoEwramData->unk1A = textChar;
                    break;
                case 0x159:
                    chaoEwramData->unk1D = 0;
                    break;
                case 0x15A:
                    chaoEwramData->unk1D = 1;
                    break;
                case 0x15B:
                    chaoEwramData->unk1D = 2;
                    break;
                case 0x15C:
                    chaoEwramData->unk1D = 3;
                    break;
            }
        }
    }

    return 0U;
}

#if 0
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
#include "global.h"
#include "core.h"
#include "constants/animations.h"
#include "game/notification_text.h"
#include "game/save.h" // NUM_LANGUAGES

extern u16 **gNotificationTexts[NUM_LANGUAGES];

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
    text = gNotificationTexts[lang];
    notifText->text = text[textId];
}

// Result: TRUE if reached end of text
bool32 sub_8023734(NotificationText *chaoEwramData)
{
    Sprite *s;
    const StageNotifChar *charData;
    u32 textChar;
    s32 index;

    chaoEwramData->unk1C = 0;
    if (chaoEwramData->unk5 != 0) {
        textChar = chaoEwramData->text[chaoEwramData->unk5 - 1];
        if (textChar == 0x154 || textChar == 0x155) {
            if (!(1 & gPressedKeys) && !(1 & chaoEwramData->unk1F)) {
                chaoEwramData->unk1C = 1;
                return FALSE;
            }
            if (textChar != 0x154) {
                return TRUE;
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
            charData = &gNotificationTextFont[textChar];
            s = &chaoEwramData->sprites2C[chaoEwramData->unk6];
            if ((s16)chaoEwramData->unk12 != 0x28) {
                chaoEwramData->unk12 += charData->unk3;
            }
            chaoEwramData->unk1E = 4;
            s->tiles = chaoEwramData->vram24;
            {
#ifndef NON_MATCHING
                // TODO: Fake-match
                u8 *vram;
                asm("ldr %0, [%1, #0x24]" : "=r"(vram) : "r"(chaoEwramData));
                chaoEwramData->vram24 = vram + (4 * TILE_SIZE_4BPP);
#else
                chaoEwramData->vram24 += (4 * TILE_SIZE_4BPP);
#endif
            }
            s->anim = charData->anim;
            s->variant = charData->pattern;
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

    return FALSE;
}

void sub_80239A8(NotificationText *chaoEwramData)
{
    Sprite *sprUnk = chaoEwramData->s;
    u8 var_r6 = chaoEwramData->unk6;
    Sprite *s;
    u8 i;

    if (var_r6 != 0) {
        if (chaoEwramData->unk1E != 0) {
            var_r6 -= 1;
        }

        for (i = 0; i < var_r6; i++) {
            s = &chaoEwramData->sprites2C[i];
            s->x += chaoEwramData->unkD;
            s->y += chaoEwramData->unkE;
            DisplaySprite(s);
        }

        if (chaoEwramData->unk1E > 0) {
            chaoEwramData->unk1E--;

            switch (chaoEwramData->unk1D) {
                case 0:
                    s = &chaoEwramData->sprites2C[i];
                    DisplaySprite(s);
                    break;
                case 1:
                    s = &chaoEwramData->sprites2C[i];
                    s->y += 2;
                    DisplaySprite(s);
                    break;
                case 2:
                    s = &chaoEwramData->sprites2C[i];
                    s->y -= 2;
                    DisplaySprite(s);
                    break;
                case 3:
                    s = &chaoEwramData->sprites2C[i];
                    s->x += 2;
                    DisplaySprite(s);
                    break;
            }
        }
    }

    if ((chaoEwramData->unk1C != 0) && (sprUnk != NULL)) {
        sprUnk->x = chaoEwramData->unk12 + 0xA;
        sprUnk->y = chaoEwramData->unk14;
        UpdateSpriteAnimation(sprUnk);
        DisplaySprite(sprUnk);
    }
}

#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "../_shared/rom_work.h"

/* This tool exports the SA3 Notification Texts that spawn i.e. when picking up Omochao */

#define NTXT_TERMINATOR 0x155


void export_notification_strings(RawFile file);
void generate_and_output_string_list(RawFile file, eLanguage language, RomPtrArray string_list);

static inline uint32_t ntxt_strlen(uint16_t *txt)
{
    uint32_t len = 0;

    while(*txt != NTXT_TERMINATOR)
    {
        len++;
        txt++;
    }

    return len;
}

int main(int argCount, char **args)
{
    if(argCount != 2) {
        printf("ERROR: Only the path to the ROM is expected as input parameter.)\n");
        exit(-1);
    } else {
        RawFile file = read_entire_file(args[1]);
        if(file.data != NULL)
        {
            export_notification_strings(file);
        }
    }
}

void export_notification_strings(RawFile file)
{
    RomPtrArray gNotificationTexts = {
        // NOTE: This offset is based on the European version!
        0x08E7EA78,
        NUM_LANGUAGES
    };

    for(int language = JAPANESE;
        language < gNotificationTexts.count;
        language++)
    {
        RomPtrArray string_list;
        string_list.base = read_romptr(file, gNotificationTexts.base, language);
        string_list.count = 256;

        generate_and_output_string_list(file, language, string_list);
    }

    printf("const u16 *(*gNotificationTexts[])[] = {\n");
    for(int lang = JAPANESE; lang < NUM_LANGUAGES; lang++)
    {
        printf("    sNotificationTexts_%s,\n", langIdents[lang]);
    }
    printf("};\n");
}

void generate_and_output_string_list(RawFile file, eLanguage language, RomPtrArray string_list)
{
    /* u16 NTXT_00_JP[] = {...}; */
    static const int templateLength = strlen("const u16 NTXT_00_JP[] = { };") + 1;

    char labelBuffer[10+1] = {0};
    uint16_t *notif = NULL;

    for(int stringId = 0; stringId < string_list.count; stringId++)
    {
        sprintf(labelBuffer, "NTXT_%02X_%s", (uint8_t)stringId, langIdents[language]);
        printf("const u16 %s[] = { ", labelBuffer);

        RomPtr ntxtRomPtr = read_romptr(file, string_list.base, stringId);
        uint16_t *stringN = ptr_from_romptr(file, ntxtRomPtr);

        int stringLen = ntxt_strlen(stringN);
        for(int charIndex = 0; charIndex < stringLen; charIndex++)
        {
            printf("0x%04X, ", stringN[charIndex]);
        }

        printf("0x%04X };\n", NTXT_TERMINATOR);
    }
    printf("\n");

    printf("const u16 *sNotificationTexts_%s[] = {\n", langIdents[language]);
    for(int stringId = 0; stringId < string_list.count; stringId++)
    {
        printf("    NTXT_%02X_%s,\n", (uint8_t)stringId, langIdents[language]);
    }
    printf("};\n\n");
}

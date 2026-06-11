#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

/* This tool exports the SA3 Notification Texts that spawn i.e. when picking up Omochao */

#define NTXT_TERMINATOR 0x155

#define ROM_BASE 0x08000000
#define ROM_SIZE (16 * 1024 * 1024) // NOTE: In other games this could be up to 32MB, but not the Sonic Advance trilogy!

#define IS_ROM_POINTER(ptr) ( ((ptr) >= ROM_BASE) && ((ptr) <= (ROM_BASE + ROM_SIZE)) )

typedef enum { JAPANESE = 0, ENGLISH = 1, GERMAN = 2, FRENCH = 3, SPANISH = 4, ITALIAN = 5, NUM_LANGUAGES } eLanguage;

typedef uint32_t RomPtr;
typedef struct {
    RomPtr base;
    uint32_t count;
} RomPtrArray;

typedef struct {
    void *data;
    size_t size;
} RawFile;

RawFile read_entire_file(char *path);
void export_notification_strings(RawFile file);
void generate_and_output_string_list(RawFile file, eLanguage language, RomPtrArray string_list);

const char *langIdents[NUM_LANGUAGES] = {
    [JAPANESE] = "JP",
    [ENGLISH]  = "EN",
    [GERMAN]   = "DE",
    [FRENCH]   = "FR",
    [SPANISH]  = "ES",
    [ITALIAN]  = "IT",
};

static inline void *ptr_from_romptr(RawFile file, RomPtr romptr) {
    if(IS_ROM_POINTER(romptr)) {
        return file.data + (romptr - ROM_BASE);
    } else {
        return NULL;
    }
}

static inline uint8_t read_u8(RawFile file, RomPtr romptr, int index)
{
    uint8_t val = ((uint8_t *)ptr_from_romptr(file, romptr))[index];
    return val;
}

static inline uint16_t read_u16(RawFile file, RomPtr romptr, int index)
{
    uint16_t val = ((uint16_t *)ptr_from_romptr(file, romptr))[index];
    return val;
}

static inline uint32_t read_u32(RawFile file, RomPtr romptr, int index)
{
    uint32_t val = ((uint32_t *)ptr_from_romptr(file, romptr))[index];
    return val;
}

static inline RomPtr read_romptr(RawFile file, RomPtr romptr, int index)
{
    RomPtr val = ((RomPtr *)ptr_from_romptr(file, romptr))[index];
    return val;
}

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

RawFile read_entire_file(char *path)
{
    RawFile file = { 0 };
    FILE *handle = fopen(path, "rb");

    if(handle != NULL)
    {
        fseek(handle, 0, SEEK_END);
        file.size = ftell(handle);
        fseek(handle, 0, SEEK_SET);

        if(file.size > 0) {
            file.data = malloc(file.size);
            fread(file.data, 1, file.size, handle);
        }

        fclose(handle);
    } else {
        printf("ERROR: Could not read file:\n"
                "'%s'\n\n", path);
    }

    return file;
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

#ifndef GUARD_ROM_WORK_H
#define GUARD_ROM_WORK_H

#define ROM_BASE 0x08000000
#define ROM_SIZE (16 * 1024 * 1024) // NOTE: In other games this could be up to 32MB, but not the Sonic Advance trilogy!

#define IS_ROM_POINTER(ptr) ( ((ptr) >= ROM_BASE) && ((ptr) <= (ROM_BASE + ROM_SIZE)) )

typedef uint32_t RomPtr;
typedef struct {
    RomPtr base;
    uint32_t count;
} RomPtrArray;

typedef struct {
    void *data;
    size_t size;
} RawFile;

typedef enum { JAPANESE = 0, ENGLISH = 1, GERMAN = 2, FRENCH = 3, SPANISH = 4, ITALIAN = 5, NUM_LANGUAGES } eLanguage;
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

static RawFile read_entire_file(char *path)
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

#endif // GUARD_ROM_WORK_H

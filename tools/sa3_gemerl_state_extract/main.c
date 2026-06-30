#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "../_shared/rom_work.h"

void export_struct();
void export_includes();
void export_callback_prototypes(RawFile file);
void export_gemerl_states_c(RawFile file);

typedef struct {
    /* 0x00 */ RomPtr callback;
    /* 0x04 */ int16_t unk4[4];
    /* 0x0C */ int8_t unkC;
    /* 0x0D */ int8_t unkD;
    /* 0x0E */ uint16_t anim;
    /* 0x10 */ uint8_t pattern;
} GemerlState;

int main(int argCount, char **args)
{
    if(argCount != 2) {
        printf("ERROR: Only the path to the ROM is expected as input parameter.)\n");
        exit(-1);
    } else {
        RawFile file = read_entire_file(args[1]);
        if(file.data != NULL)
        {
            export_includes();
            export_struct();
            export_callback_prototypes(file);
            export_gemerl_states_c(file);
        }
    }
}

#define IS_DUPLICATE(_i)  \
    ((_i == 10 || _i == 12 || _i == 14 || _i == 11 || _i == 13 || _i == 15))

void export_callback_prototypes(RawFile file)
{
    RomPtr gGemerlStatesPtr = ROM_BASE + 0xD527C;
    RomPtrArray gGemerlStates = {
        .base = gGemerlStatesPtr,
        .count = 56,
    };

    printf("\n");
    // NOTE: No need to print the last one, as it's 0xFFFFFFFF
    for(int i = 0 ; i < gGemerlStates.count-1; i++)
    {
        GemerlState *state = ptr_from_romptr(file, gGemerlStatesPtr + i * sizeof(GemerlState));

        if(!IS_DUPLICATE(i)) {
            // TODO: Add Gemerl struct type to parameter?
            printf("extern bool32 Gemerl_State_%d(void *gemerl);\n", i);
        } else {
            // Only print shared prototypes once.
            if(i == 10) {
                printf("extern bool32 Gemerl_State_10_12_14(void *gemerl);\n");
            } else if (i == 11) {
                printf("extern bool32 Gemerl_State_11_13_15(void *gemerl);\n");
            }
        }
    }
    printf("\n");
}

void export_includes()
{
    printf("#include \"global.h\"\n");
    printf("#include \"core.h\"\n");
    printf("\n");
}

void export_struct()
{
    printf("typedef bool32 (*GemerlCallback)(void *);\n");
    printf("typedef struct {\n");
        printf("    GemerlCallback callback;\n");
        printf("    s16 unk4[4];\n");
        printf("    s8 unkC;\n");
        printf("    s8 unkD;\n");
        printf("    AnimId anim;\n");
        printf("    u8 pattern;\n");
    printf("} GemerlState;\n");
}

void export_gemerl_states_c(RawFile file)
{
    RomPtr gGemerlStatesPtr = ROM_BASE + 0xD527C;
    RomPtrArray gGemerlStates = {
        .base = gGemerlStatesPtr,
        .count = 56,
    };

    printf("const GemerlState gGemerlStates[] = {\n");
    for(int i = 0; i < gGemerlStates.count; i++)
    {
        GemerlState *state = ptr_from_romptr(file, gGemerlStatesPtr + i * sizeof(GemerlState));
        RomPtr callbackPtr = (state->callback-1); // NOTE: Thumb pointers have the LSB set, so we have to -1 to clear it
        printf("    {\n");
        if(callbackPtr != (RomPtr)-1) {
            switch(i)
            {
            case 10:
            case 12:
            case 14: {
                // NOTE: These are shared
                printf("        Gemerl_State_10_12_14,\n");
            } break;

            case 11:
            case 13:
            case 15: {
                // NOTE: These are shared
                printf("        Gemerl_State_11_13_15,\n");
            } break;

            default: {
                // All other procedures are only assigned to one state
                printf("        Gemerl_State_%d,\n", i);
            } break;
            }
        } else {
            printf("        NULL,\n");
        }
        printf("        { %d, %d, %d, %d },\n",
            state->unk4[0], state->unk4[1], state->unk4[2], state->unk4[3] );
        printf("        %d,\n", state->unkC);
        printf("        %d,\n", state->unkD);
        printf("        %d,\n", state->anim);
        printf("        %d,\n", state->pattern);
        printf("    },\n");
    }
    printf("};\n");
}

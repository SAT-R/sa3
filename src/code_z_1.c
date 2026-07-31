#include "global.h"
#include "flags.h"
#include "core.h"
#include "color.h"

void CopyObjPaletteMasked(const ColorRaw *srcPalette, u8 destObjPaletteColorOffset, u16 numColors)
{
    u16 i;

    for (i = 0; i < numColors; srcPalette++, i++) {
        gObjPalette[destObjPaletteColorOffset + i] = //
            gRgbMap[R_CHANNEL][R_GET(*srcPalette)] | //
            gRgbMap[G_CHANNEL][G_GET(*srcPalette)] | //
            gRgbMap[B_CHANNEL][B_GET(*srcPalette)]; //
    }

    if (gUnknown_03003C08 != NULL) {
        gUnknown_03003C08(gObjPalette, destObjPaletteColorOffset, numColors);
    }

    gFlags |= FLAGS_UPDATE_SPRITE_PALETTES;
}

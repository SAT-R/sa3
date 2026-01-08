#include "global.h"
#include "core.h"

const u16 Palette_unknown_396[] = INCBIN_U16("graphics/tilemaps/unknown_396/palette.gbapal");
const u8 Tiles_unknown_396[] = INCBIN_U8("graphics/tilemaps/unknown_396/tiles.4bpp");
const u16 Tilemap_unknown_396[] = INCBIN_U16("graphics/tilemaps/unknown_396/tilemap.tilemap2");

const Tilemap unknown_396 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unknown_396,
    .tilesSize = sizeof(Tiles_unknown_396) - (0 * 0x00),
    .palette = Palette_unknown_396,
    .palOffset = 0,
    .palLength = sizeof(Palette_unknown_396) / sizeof(u16),
    .map = Tilemap_unknown_396,
};

#include "global.h"
#include "core.h"

const u16 Palette_unknown_435[] = INCBIN_U16("graphics/tilemaps/unknown_435/palette.gbapal");
const u8 Tiles_unknown_435[] = INCBIN_U8("graphics/tilemaps/unknown_435/tileset_0.8bpp");
const u16 Tilemap_unknown_435[] = INCBIN_U16("graphics/tilemaps/unknown_435/tilemap.tilemap1");

const Tilemap unknown_435 = {
    .xTiles = 128,
    .yTiles = 128,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unknown_435,
    .tilesSize = sizeof(Tiles_unknown_435) - (0 * 0x00),
    .palette = Palette_unknown_435,
    .palOffset = 0,
    .palLength = sizeof(Palette_unknown_435) / sizeof(u16),
    .map = Tilemap_unknown_435,
};

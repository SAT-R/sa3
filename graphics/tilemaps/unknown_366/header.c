#include "global.h"
#include "core.h"

const u16 Palette_unknown_366[] = INCBIN_U16("graphics/tilemaps/unknown_366/palette.gbapal");
const u8 Tiles_unknown_366[] = INCBIN_U8("graphics/tilemaps/unknown_366/tiles.4bpp");
const u16 Tilemap_unknown_366[] = INCBIN_U16("graphics/tilemaps/unknown_366/tilemap.tilemap2");

const Tilemap unknown_366 = {
    .xTiles = 16,
    .yTiles = 16,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unknown_366,
    .tilesSize = sizeof(Tiles_unknown_366) - (0 * 0x00),
    .palette = Palette_unknown_366,
    .palOffset = 0,
    .palLength = sizeof(Palette_unknown_366) / sizeof(u16),
    .map = Tilemap_unknown_366,
};

#include "global.h"
#include "core.h"

const u16 Palette_unknown_346[] = INCBIN_U16("graphics/tilemaps/unknown_346/palette.gbapal");
const u8 Tiles_unknown_346[] = INCBIN_U8("graphics/tilemaps/unknown_346/tiles.4bpp");
const u16 Tilemap_unknown_346[] = INCBIN_U16("graphics/tilemaps/unknown_346/tilemap.tilemap2");

const Tilemap unknown_346 = {
    .xTiles = 16,
    .yTiles = 16,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unknown_346,
    .tilesSize = sizeof(Tiles_unknown_346) - (0 * 0x00),
    .palette = Palette_unknown_346,
    .palOffset = 0,
    .palLength = sizeof(Palette_unknown_346) / sizeof(u16),
    .map = Tilemap_unknown_346,
};

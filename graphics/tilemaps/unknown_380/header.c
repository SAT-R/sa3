#include "global.h"
#include "core.h"

const u16 Palette_unknown_380[] = INCBIN_U16("graphics/tilemaps/unknown_380/palette.gbapal");
const u8 Tiles_unknown_380[] = INCBIN_U8("graphics/tilemaps/unknown_380/tiles.4bpp");
const u16 Tilemap_unknown_380[] = INCBIN_U16("graphics/tilemaps/unknown_380/tilemap.tilemap2");

const Tilemap unknown_380 = {
    .xTiles = 32,
    .yTiles = 32,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unknown_380,
    .tilesSize = sizeof(Tiles_unknown_380) - (0 * 0x00),
    .palette = Palette_unknown_380,
    .palOffset = 0,
    .palLength = sizeof(Palette_unknown_380) / sizeof(u16),
    .map = Tilemap_unknown_380,
};

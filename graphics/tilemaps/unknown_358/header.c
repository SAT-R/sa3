#include "global.h"
#include "core.h"

const u16 Palette_unknown_358[] = INCBIN_U16("graphics/tilemaps/unknown_358/palette.gbapal");
const u8 Tiles_unknown_358[] = INCBIN_U8("graphics/tilemaps/unknown_358/tiles.4bpp");
const u16 Tilemap_unknown_358[] = INCBIN_U16("graphics/tilemaps/unknown_358/tilemap.tilemap1");

const Tilemap unknown_358 = {
    .xTiles = 16,
    .yTiles = 16,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unknown_358,
    .tilesSize = sizeof(Tiles_unknown_358) - (0 * 0x00),
    .palette = Palette_unknown_358,
    .palOffset = 0,
    .palLength = sizeof(Palette_unknown_358) / sizeof(u16),
    .map = Tilemap_unknown_358,
};

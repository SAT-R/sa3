#include "global.h"
#include "core.h"

const u16 Palette_unknown_297[] = INCBIN_U16("graphics/tilemaps/unknown_297/palette.gbapal");
const u8 Tiles_unknown_297[] = INCBIN_U8("graphics/tilemaps/unknown_297/tiles.4bpp");
const u16 Tilemap_unknown_297[] = INCBIN_U16("graphics/tilemaps/unknown_297/tilemap.tilemap1");

const Tilemap unknown_297 = {
    .xTiles = 8,
    .yTiles = 10,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unknown_297,
    .tilesSize = sizeof(Tiles_unknown_297) - (0 * 0x00),
    .palette = Palette_unknown_297,
    .palOffset = 0,
    .palLength = sizeof(Palette_unknown_297) / sizeof(u16),
    .map = Tilemap_unknown_297,
};

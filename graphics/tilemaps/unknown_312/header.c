#include "global.h"
#include "core.h"

const u16 Palette_unknown_312[] = INCBIN_U16("graphics/tilemaps/unknown_312/palette.gbapal");
const u8 Tiles_unknown_312[] = INCBIN_U8("graphics/tilemaps/unknown_312/tiles.4bpp");
const u16 Tilemap_unknown_312[] = INCBIN_U16("graphics/tilemaps/unknown_312/tilemap.tilemap2");

const Tilemap unknown_312 = {
    .xTiles = 32,
    .yTiles = 32,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unknown_312,
    .tilesSize = sizeof(Tiles_unknown_312) - (0 * 0x00),
    .palette = Palette_unknown_312,
    .palOffset = 0,
    .palLength = sizeof(Palette_unknown_312) / sizeof(u16),
    .map = Tilemap_unknown_312,
};

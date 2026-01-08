#include "global.h"
#include "core.h"

const u16 Palette_unknown_446[] = INCBIN_U16("graphics/tilemaps/unknown_446/palette.gbapal");
const u8 Tiles_unknown_446[] = INCBIN_U8("graphics/tilemaps/unknown_446/tiles.4bpp");
const u16 Tilemap_unknown_446[] = INCBIN_U16("graphics/tilemaps/unknown_446/tilemap.tilemap2");

const Tilemap unknown_446 = {
    .xTiles = 32,
    .yTiles = 32,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unknown_446,
    .tilesSize = sizeof(Tiles_unknown_446) - (0 * 0x00),
    .palette = Palette_unknown_446,
    .palOffset = 0,
    .palLength = sizeof(Palette_unknown_446) / sizeof(u16),
    .map = Tilemap_unknown_446,
};

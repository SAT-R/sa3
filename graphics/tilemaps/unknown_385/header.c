#include "global.h"
#include "core.h"

const u16 Palette_unknown_385[] = INCBIN_U16("graphics/tilemaps/unknown_385/palette.gbapal");
const u8 Tiles_unknown_385[] = INCBIN_U8("graphics/tilemaps/unknown_385/tiles.4bpp");
const u16 Tilemap_unknown_385[] = INCBIN_U16("graphics/tilemaps/unknown_385/tilemap.tilemap2");

const Tilemap unknown_385 = {
    .xTiles = 32,
    .yTiles = 32,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unknown_385,
    .tilesSize = sizeof(Tiles_unknown_385) - (0 * 0x00),
    .palette = Palette_unknown_385,
    .palOffset = 0,
    .palLength = sizeof(Palette_unknown_385) / sizeof(u16),
    .map = Tilemap_unknown_385,
};

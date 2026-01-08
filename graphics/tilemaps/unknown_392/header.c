#include "global.h"
#include "core.h"

const u16 Palette_unknown_392[] = INCBIN_U16("graphics/tilemaps/unknown_392/palette.gbapal");
const u8 Tiles_unknown_392[] = INCBIN_U8("graphics/tilemaps/unknown_392/tiles.4bpp");
const u16 Tilemap_unknown_392[] = INCBIN_U16("graphics/tilemaps/unknown_392/tilemap.tilemap2");

const Tilemap unknown_392 = {
    .xTiles = 32,
    .yTiles = 32,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unknown_392,
    .tilesSize = sizeof(Tiles_unknown_392) - (0 * 0x00),
    .palette = Palette_unknown_392,
    .palOffset = 0,
    .palLength = sizeof(Palette_unknown_392) / sizeof(u16),
    .map = Tilemap_unknown_392,
};

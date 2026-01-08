#include "global.h"
#include "core.h"

const u16 Palette_unknown_434[] = INCBIN_U16("graphics/tilemaps/unknown_434/palette.gbapal");
const u8 Tiles_unknown_434[] = INCBIN_U8("graphics/tilemaps/unknown_434/tiles.4bpp");
const u16 Tilemap_unknown_434[] = INCBIN_U16("graphics/tilemaps/unknown_434/tilemap.tilemap2");

const Tilemap unknown_434 = {
    .xTiles = 128,
    .yTiles = 128,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unknown_434,
    .tilesSize = sizeof(Tiles_unknown_434) - (0 * 0x00),
    .palette = Palette_unknown_434,
    .palOffset = 0,
    .palLength = sizeof(Palette_unknown_434) / sizeof(u16),
    .map = Tilemap_unknown_434,
};

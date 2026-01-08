#include "global.h"
#include "core.h"

const u16 Palette_unknown_321[] = INCBIN_U16("graphics/tilemaps/unknown_321/palette.gbapal");
const u8 Tiles_unknown_321[] = INCBIN_U8("graphics/tilemaps/unknown_321/tiles.4bpp");
const u16 Tilemap_unknown_321[] = INCBIN_U16("graphics/tilemaps/unknown_321/tilemap.tilemap2");

const Tilemap unknown_321 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unknown_321,
    .tilesSize = sizeof(Tiles_unknown_321) - (0 * 0x00),
    .palette = Palette_unknown_321,
    .palOffset = 0,
    .palLength = sizeof(Palette_unknown_321) / sizeof(u16),
    .map = Tilemap_unknown_321,
};

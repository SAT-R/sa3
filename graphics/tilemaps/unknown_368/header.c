#include "global.h"
#include "core.h"

const u16 Palette_unknown_368[] = INCBIN_U16("graphics/tilemaps/unknown_368/palette.gbapal");
const u8 Tiles_unknown_368[] = INCBIN_U8("graphics/tilemaps/unknown_368/tiles.4bpp");
const u16 Tilemap_unknown_368[] = INCBIN_U16("graphics/tilemaps/unknown_368/tilemap.tilemap2");

const Tilemap unknown_368 = {
    .xTiles = 16,
    .yTiles = 16,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unknown_368,
    .tilesSize = sizeof(Tiles_unknown_368) - (0 * 0x00),
    .palette = Palette_unknown_368,
    .palOffset = 0,
    .palLength = sizeof(Palette_unknown_368) / sizeof(u16),
    .map = Tilemap_unknown_368,
};

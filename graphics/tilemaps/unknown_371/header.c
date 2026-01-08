#include "global.h"
#include "core.h"

const u16 Palette_unknown_371[] = INCBIN_U16("graphics/tilemaps/unknown_371/palette.gbapal");
const u8 Tiles_unknown_371[] = INCBIN_U8("graphics/tilemaps/unknown_371/tiles.4bpp");
const u16 Tilemap_unknown_371[] = INCBIN_U16("graphics/tilemaps/unknown_371/tilemap.tilemap2");

const Tilemap unknown_371 = {
    .xTiles = 16,
    .yTiles = 16,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unknown_371,
    .tilesSize = sizeof(Tiles_unknown_371) - (0 * 0x00),
    .palette = Palette_unknown_371,
    .palOffset = 0,
    .palLength = sizeof(Palette_unknown_371) / sizeof(u16),
    .map = Tilemap_unknown_371,
};

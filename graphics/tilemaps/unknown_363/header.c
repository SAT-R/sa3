#include "global.h"
#include "core.h"

const u16 Palette_unknown_363[] = INCBIN_U16("graphics/tilemaps/unknown_363/palette.gbapal");
const u8 Tiles_unknown_363[] = INCBIN_U8("graphics/tilemaps/unknown_363/tiles.4bpp");
const u16 Tilemap_unknown_363[] = INCBIN_U16("graphics/tilemaps/unknown_363/tilemap.tilemap1");

const Tilemap unknown_363 = {
    .xTiles = 16,
    .yTiles = 16,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unknown_363,
    .tilesSize = sizeof(Tiles_unknown_363) - (0 * 0x00),
    .palette = Palette_unknown_363,
    .palOffset = 0,
    .palLength = sizeof(Palette_unknown_363) / sizeof(u16),
    .map = Tilemap_unknown_363,
};

#include "global.h"
#include "core.h"

const u16 Palette_unknown_325[] = INCBIN_U16("graphics/tilemaps/unknown_325/palette.gbapal");
const u8 Tiles_unknown_325[] = INCBIN_U8("graphics/tilemaps/unknown_325/tiles.4bpp");
const u16 Tilemap_unknown_325[] = INCBIN_U16("graphics/tilemaps/unknown_325/tilemap.tilemap2");

const Tilemap unknown_325 = {
    .xTiles = 32,
    .yTiles = 32,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unknown_325,
    .tilesSize = sizeof(Tiles_unknown_325) - (0 * 0x00),
    .palette = Palette_unknown_325,
    .palOffset = 0,
    .palLength = sizeof(Palette_unknown_325) / sizeof(u16),
    .map = Tilemap_unknown_325,
};

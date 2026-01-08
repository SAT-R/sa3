#include "global.h"
#include "core.h"

const u16 Palette_unknown_337[] = INCBIN_U16("graphics/tilemaps/unknown_337/palette.gbapal");
const u8 Tiles_unknown_337[] = INCBIN_U8("graphics/tilemaps/unknown_337/tiles.4bpp");
const u16 Tilemap_unknown_337[] = INCBIN_U16("graphics/tilemaps/unknown_337/tilemap.tilemap2");

const Tilemap unknown_337 = {
    .xTiles = 32,
    .yTiles = 32,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unknown_337,
    .tilesSize = sizeof(Tiles_unknown_337) - (0 * 0x00),
    .palette = Palette_unknown_337,
    .palOffset = 0,
    .palLength = sizeof(Palette_unknown_337) / sizeof(u16),
    .map = Tilemap_unknown_337,
};

#include "global.h"
#include "core.h"

const u16 Palette_unknown_293[] = INCBIN_U16("graphics/tilemaps/unknown_293/palette.gbapal");
const u8 Tiles_unknown_293[] = INCBIN_U8("graphics/tilemaps/unknown_293/tiles.4bpp");
const u16 Tilemap_unknown_293[] = INCBIN_U16("graphics/tilemaps/unknown_293/tilemap.tilemap2");

const Tilemap unknown_293 = {
    .xTiles = 25,
    .yTiles = 10,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unknown_293,
    .tilesSize = sizeof(Tiles_unknown_293) - (0 * 0x00),
    .palette = Palette_unknown_293,
    .palOffset = 0,
    .palLength = sizeof(Palette_unknown_293) / sizeof(u16),
    .map = Tilemap_unknown_293,
};

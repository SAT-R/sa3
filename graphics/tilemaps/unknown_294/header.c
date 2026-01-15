#include "global.h"
#include "core.h"

const u16 Palette_unknown_294[] = INCBIN_U16("graphics/tilemaps/unknown_294/palette.gbapal");
const u8 Tiles_unknown_294[] = INCBIN_U8("graphics/tilemaps/unknown_294/tiles.4bpp");
const u16 Tilemap_unknown_294[] = INCBIN_U16("graphics/tilemaps/unknown_294/tilemap.tilemap1");

const Tilemap unknown_294 = {
    .xTiles = 8,
    .yTiles = 10,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unknown_294,
    .tilesSize = sizeof(Tiles_unknown_294) - (0 * 0x00),
    .palette = Palette_unknown_294,
    .palOffset = 0,
    .palLength = sizeof(Palette_unknown_294) / sizeof(u16),
    .map = Tilemap_unknown_294,
};

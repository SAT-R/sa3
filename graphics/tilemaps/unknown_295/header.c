#include "global.h"
#include "core.h"

const u16 Palette_unknown_295[] = INCBIN_U16("graphics/tilemaps/unknown_295/palette.gbapal");
const u8 Tiles_unknown_295[] = INCBIN_U8("graphics/tilemaps/unknown_295/tiles.4bpp");
const u16 Tilemap_unknown_295[] = INCBIN_U16("graphics/tilemaps/unknown_295/tilemap.tilemap2");

const Tilemap unknown_295 = {
    .xTiles = 25,
    .yTiles = 10,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unknown_295,
    .tilesSize = sizeof(Tiles_unknown_295) - (0 * 0x00),
    .palette = Palette_unknown_295,
    .palOffset = 0,
    .palLength = sizeof(Palette_unknown_295) / sizeof(u16),
    .map = Tilemap_unknown_295,
};

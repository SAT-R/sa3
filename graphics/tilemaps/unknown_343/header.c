#include "global.h"
#include "core.h"

const u16 Palette_unknown_343[] = INCBIN_U16("graphics/tilemaps/unknown_343/palette.gbapal");
const u8 Tiles_unknown_343[] = INCBIN_U8("graphics/tilemaps/unknown_343/tiles.4bpp");
const u16 Tilemap_unknown_343[] = INCBIN_U16("graphics/tilemaps/unknown_343/tilemap.tilemap2");

const Tilemap unknown_343 = {
    .xTiles = 64,
    .yTiles = 20,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unknown_343,
    .tilesSize = sizeof(Tiles_unknown_343) - (0 * 0x00),
    .palette = Palette_unknown_343,
    .palOffset = 0,
    .palLength = sizeof(Palette_unknown_343) / sizeof(u16),
    .map = Tilemap_unknown_343,
};

#include "global.h"
#include "core.h"

const u16 Palette_unknown_354[] = INCBIN_U16("graphics/tilemaps/unknown_354/palette.gbapal");
const u8 Tiles_unknown_354[] = INCBIN_U8("graphics/tilemaps/unknown_354/tiles.4bpp");
const u16 Tilemap_unknown_354[] = INCBIN_U16("graphics/tilemaps/unknown_354/tilemap.tilemap2");

const Tilemap unknown_354 = {
    .xTiles = 32,
    .yTiles = 24,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unknown_354,
    .tilesSize = sizeof(Tiles_unknown_354) - (0 * 0x00),
    .palette = Palette_unknown_354,
    .palOffset = 0,
    .palLength = sizeof(Palette_unknown_354) / sizeof(u16),
    .map = Tilemap_unknown_354,
};

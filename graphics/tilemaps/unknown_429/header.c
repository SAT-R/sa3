#include "global.h"
#include "core.h"

const u16 Palette_unknown_429[] = INCBIN_U16("graphics/tilemaps/unknown_429/palette.gbapal");
const u8 Tiles_unknown_429[] = INCBIN_U8("graphics/tilemaps/unknown_429/tiles.4bpp");
const u16 Tilemap_unknown_429[] = INCBIN_U16("graphics/tilemaps/unknown_429/tilemap.tilemap2");

const Tilemap unknown_429 = {
    .xTiles = 16,
    .yTiles = 16,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unknown_429,
    .tilesSize = sizeof(Tiles_unknown_429) - (0 * 0x00),
    .palette = Palette_unknown_429,
    .palOffset = 0,
    .palLength = sizeof(Palette_unknown_429) / sizeof(u16),
    .map = Tilemap_unknown_429,
};

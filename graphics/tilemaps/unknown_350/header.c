#include "global.h"
#include "core.h"

const u16 Palette_unknown_350[] = INCBIN_U16("graphics/tilemaps/unknown_350/palette.gbapal");
const u8 Tiles_unknown_350[] = INCBIN_U8("graphics/tilemaps/unknown_350/tiles.4bpp");
const u16 Tilemap_unknown_350[] = INCBIN_U16("graphics/tilemaps/unknown_350/tilemap.tilemap2");

const Tilemap unknown_350 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unknown_350,
    .tilesSize = sizeof(Tiles_unknown_350) - (0 * 0x00),
    .palette = Palette_unknown_350,
    .palOffset = 0,
    .palLength = sizeof(Palette_unknown_350) / sizeof(u16),
    .map = Tilemap_unknown_350,
};

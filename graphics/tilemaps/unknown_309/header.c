#include "global.h"
#include "core.h"

const u16 Palette_unknown_309[] = INCBIN_U16("graphics/tilemaps/unknown_309/palette.gbapal");
const u8 Tiles_unknown_309[] = INCBIN_U8("graphics/tilemaps/unknown_309/tiles.4bpp");
const u16 Tilemap_unknown_309[] = INCBIN_U16("graphics/tilemaps/unknown_309/tilemap.tilemap2");

const Tilemap unknown_309 = {
    .xTiles = 32,
    .yTiles = 32,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unknown_309,
    .tilesSize = sizeof(Tiles_unknown_309) - (0 * 0x00),
    .palette = Palette_unknown_309,
    .palOffset = 0,
    .palLength = sizeof(Palette_unknown_309) / sizeof(u16),
    .map = Tilemap_unknown_309,
};

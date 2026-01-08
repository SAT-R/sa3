#include "global.h"
#include "core.h"

const u16 Palette_unknown_322[] = INCBIN_U16("graphics/tilemaps/unknown_322/palette.gbapal");
const u8 Tiles_unknown_322[] = INCBIN_U8("graphics/tilemaps/unknown_322/tiles.4bpp");
const u16 Tilemap_unknown_322[] = INCBIN_U16("graphics/tilemaps/unknown_322/tilemap.tilemap2");

const Tilemap unknown_322 = {
    .xTiles = 32,
    .yTiles = 32,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unknown_322,
    .tilesSize = sizeof(Tiles_unknown_322) - (0 * 0x00),
    .palette = Palette_unknown_322,
    .palOffset = 0,
    .palLength = sizeof(Palette_unknown_322) / sizeof(u16),
    .map = Tilemap_unknown_322,
};

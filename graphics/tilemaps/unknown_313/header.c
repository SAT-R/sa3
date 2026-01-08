#include "global.h"
#include "core.h"

const u16 Palette_unknown_313[] = INCBIN_U16("graphics/tilemaps/unknown_313/palette.gbapal");
const u8 Tiles_unknown_313[] = INCBIN_U8("graphics/tilemaps/unknown_313/tiles.4bpp");
const u16 Tilemap_unknown_313[] = INCBIN_U16("graphics/tilemaps/unknown_313/tilemap.tilemap2");

const Tilemap unknown_313 = {
    .xTiles = 32,
    .yTiles = 32,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unknown_313,
    .tilesSize = sizeof(Tiles_unknown_313) - (0 * 0x00),
    .palette = Palette_unknown_313,
    .palOffset = 0,
    .palLength = sizeof(Palette_unknown_313) / sizeof(u16),
    .map = Tilemap_unknown_313,
};

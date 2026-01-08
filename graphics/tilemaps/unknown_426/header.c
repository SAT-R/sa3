#include "global.h"
#include "core.h"

const u16 Palette_unknown_426[] = INCBIN_U16("graphics/tilemaps/unknown_426/palette.gbapal");
const u8 Tiles_unknown_426[] = INCBIN_U8("graphics/tilemaps/unknown_426/tiles.4bpp");
const u16 Tilemap_unknown_426[] = INCBIN_U16("graphics/tilemaps/unknown_426/tilemap.tilemap2");

const Tilemap unknown_426 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unknown_426,
    .tilesSize = sizeof(Tiles_unknown_426) - (0 * 0x00),
    .palette = Palette_unknown_426,
    .palOffset = 0,
    .palLength = sizeof(Palette_unknown_426) / sizeof(u16),
    .map = Tilemap_unknown_426,
};

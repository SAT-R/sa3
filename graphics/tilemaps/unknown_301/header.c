#include "global.h"
#include "core.h"

const u16 Palette_unknown_301[] = INCBIN_U16("graphics/tilemaps/unknown_301/palette.gbapal");
const u8 Tiles_unknown_301[] = INCBIN_U8("graphics/tilemaps/unknown_301/tiles.4bpp");
const u16 Tilemap_unknown_301[] = INCBIN_U16("graphics/tilemaps/unknown_301/tilemap.tilemap2");

const Tilemap unknown_301 = {
    .xTiles = 32,
    .yTiles = 32,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unknown_301,
    .tilesSize = sizeof(Tiles_unknown_301) - (0 * 0x00),
    .palette = Palette_unknown_301,
    .palOffset = 0,
    .palLength = sizeof(Palette_unknown_301) / sizeof(u16),
    .map = Tilemap_unknown_301,
};

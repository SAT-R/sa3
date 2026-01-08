#include "global.h"
#include "core.h"

const u16 Palette_unknown_427[] = INCBIN_U16("graphics/tilemaps/unknown_427/palette.gbapal");
const u8 Tiles_unknown_427[] = INCBIN_U8("graphics/tilemaps/unknown_427/tiles.4bpp");
const u16 Tilemap_unknown_427[] = INCBIN_U16("graphics/tilemaps/unknown_427/tilemap.tilemap2");

const Tilemap unknown_427 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unknown_427,
    .tilesSize = sizeof(Tiles_unknown_427) - (0 * 0x00),
    .palette = Palette_unknown_427,
    .palOffset = 0,
    .palLength = sizeof(Palette_unknown_427) / sizeof(u16),
    .map = Tilemap_unknown_427,
};

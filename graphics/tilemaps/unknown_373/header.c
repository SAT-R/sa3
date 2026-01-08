#include "global.h"
#include "core.h"

const u16 Palette_unknown_373[] = INCBIN_U16("graphics/tilemaps/unknown_373/palette.gbapal");
const u8 Tiles_unknown_373[] = INCBIN_U8("graphics/tilemaps/unknown_373/tiles.4bpp");
const u16 Tilemap_unknown_373[] = INCBIN_U16("graphics/tilemaps/unknown_373/tilemap.tilemap2");

const Tilemap unknown_373 = {
    .xTiles = 30,
    .yTiles = 40,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unknown_373,
    .tilesSize = sizeof(Tiles_unknown_373) - (0 * 0x00),
    .palette = Palette_unknown_373,
    .palOffset = 0,
    .palLength = sizeof(Palette_unknown_373) / sizeof(u16),
    .map = Tilemap_unknown_373,
};

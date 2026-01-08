#include "global.h"
#include "core.h"

const u16 Palette_unknown_437[] = INCBIN_U16("graphics/tilemaps/unknown_437/palette.gbapal");
const u8 Tiles_unknown_437[] = INCBIN_U8("graphics/tilemaps/unknown_437/tiles.4bpp");
const u16 Tilemap_unknown_437[] = INCBIN_U16("graphics/tilemaps/unknown_437/tilemap.tilemap2");

const Tilemap unknown_437 = {
    .xTiles = 128,
    .yTiles = 128,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unknown_437,
    .tilesSize = sizeof(Tiles_unknown_437) - (0 * 0x00),
    .palette = Palette_unknown_437,
    .palOffset = 0,
    .palLength = sizeof(Palette_unknown_437) / sizeof(u16),
    .map = Tilemap_unknown_437,
};

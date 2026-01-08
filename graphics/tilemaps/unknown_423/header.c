#include "global.h"
#include "core.h"

const u16 Palette_unknown_423[] = INCBIN_U16("graphics/tilemaps/unknown_423/palette.gbapal");
const u8 Tiles_unknown_423[] = INCBIN_U8("graphics/tilemaps/unknown_423/tiles.4bpp");
const u16 Tilemap_unknown_423[] = INCBIN_U16("graphics/tilemaps/unknown_423/tilemap.tilemap2");

const Tilemap unknown_423 = {
    .xTiles = 32,
    .yTiles = 32,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unknown_423,
    .tilesSize = sizeof(Tiles_unknown_423) - (0 * 0x00),
    .palette = Palette_unknown_423,
    .palOffset = 0,
    .palLength = sizeof(Palette_unknown_423) / sizeof(u16),
    .map = Tilemap_unknown_423,
};

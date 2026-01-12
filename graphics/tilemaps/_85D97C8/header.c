#include "global.h"
#include "core.h"

const u16 Palette_85D97C8[] = INCBIN_U16("graphics/tilemaps/_85D97C8/palette.gbapal");
const u8 Tiles_85D97C8[] = INCBIN_U8("graphics/tilemaps/_85D97C8/tiles.4bpp");
const u16 Tilemap_85D97C8[] = INCBIN_U16("graphics/tilemaps/_85D97C8/tilemap.tilemap2");

const Tilemap _85D97C8 = {
    .xTiles = 32,
    .yTiles = 32,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_85D97C8,
    .tilesSize = sizeof(Tiles_85D97C8) - (0 * 0x00),
    .palette = Palette_85D97C8,
    .palOffset = 0,
    .palLength = sizeof(Palette_85D97C8) / sizeof(u16),
    .map = Tilemap_85D97C8,
};

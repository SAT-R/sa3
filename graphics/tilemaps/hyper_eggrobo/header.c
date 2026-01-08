#include "global.h"
#include "core.h"

const u16 Palette_hyper_eggrobo[] = INCBIN_U16("graphics/tilemaps/hyper_eggrobo/palette.gbapal");
const u8 Tiles_hyper_eggrobo[] = INCBIN_U8("graphics/tilemaps/hyper_eggrobo/tiles.4bpp");
const u16 Tilemap_hyper_eggrobo[] = INCBIN_U16("graphics/tilemaps/hyper_eggrobo/tilemap.tilemap2");

const Tilemap hyper_eggrobo = {
    .xTiles = 32,
    .yTiles = 32,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_hyper_eggrobo,
    .tilesSize = sizeof(Tiles_hyper_eggrobo) - (0 * 0x00),
    .palette = Palette_hyper_eggrobo,
    .palOffset = 0,
    .palLength = sizeof(Palette_hyper_eggrobo) / sizeof(u16),
    .map = Tilemap_hyper_eggrobo,
};

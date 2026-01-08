#include "global.h"
#include "core.h"

const u16 Palette_altar_emerald_bg_copy[] = INCBIN_U16("graphics/tilemaps/altar_emerald_bg_copy/palette.gbapal");
const u8 Tiles_altar_emerald_bg_copy[] = INCBIN_U8("graphics/tilemaps/altar_emerald_bg_copy/tiles.4bpp");
const u16 Tilemap_altar_emerald_bg_copy[] = INCBIN_U16("graphics/tilemaps/altar_emerald_bg_copy/tilemap.tilemap2");

const Tilemap altar_emerald_bg_copy = {
    .xTiles = 32,
    .yTiles = 32,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_altar_emerald_bg_copy,
    .tilesSize = sizeof(Tiles_altar_emerald_bg_copy) - (0 * 0x00),
    .palette = Palette_altar_emerald_bg_copy,
    .palOffset = 0,
    .palLength = sizeof(Palette_altar_emerald_bg_copy) / sizeof(u16),
    .map = Tilemap_altar_emerald_bg_copy,
};

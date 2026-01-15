#include "global.h"
#include "core.h"

const u16 Palette_master_emerald_altar[] = INCBIN_U16("graphics/tilemaps/master_emerald_altar/palette.gbapal");
const u8 Tiles_master_emerald_altar[]
    = INCBIN_U8("graphics/tilemaps/master_emerald_altar/tileset_0.4bpp", "graphics/tilemaps/master_emerald_altar/tileset_0_anim.4bpp");
const u16 Tilemap_master_emerald_altar[] = INCBIN_U16("graphics/tilemaps/master_emerald_altar/tilemap.tilemap2");

const Tilemap master_emerald_altar = {
    .xTiles = 32,
    .yTiles = 32,
    .animTileSize = 0x240,
    .animFrameCount = 8,
    .animDelay = 3,
    .tiles = Tiles_master_emerald_altar,
    .tilesSize = sizeof(Tiles_master_emerald_altar) - ((8 - 1) * 0x240),
    .palette = Palette_master_emerald_altar,
    .palOffset = 0,
    .palLength = sizeof(Palette_master_emerald_altar) / sizeof(u16),
    .map = Tilemap_master_emerald_altar,
};

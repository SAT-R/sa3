#include "global.h"
#include "core.h"

const u16 Palette_notification_chao_map_de[] = INCBIN_U16("graphics/tilemaps/notification_chao_map_de/palette.gbapal");
const u8 Tiles_notification_chao_map_de[] = INCBIN_U8("graphics/tilemaps/notification_chao_map_de/tiles.4bpp");
const u16 Tilemap_notification_chao_map_de[] = INCBIN_U16("graphics/tilemaps/notification_chao_map_de/tilemap.tilemap2");

const Tilemap notification_chao_map_de = {
    .xTiles = 32,
    .yTiles = 32,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_notification_chao_map_de,
    .tilesSize = sizeof(Tiles_notification_chao_map_de) - (0 * 0x00),
    .palette = Palette_notification_chao_map_de,
    .palOffset = 0,
    .palLength = sizeof(Palette_notification_chao_map_de) / sizeof(u16),
    .map = Tilemap_notification_chao_map_de,
};

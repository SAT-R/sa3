#include "global.h"
#include "core.h"

const u16 Palette_notification_please_wait_fr[] = INCBIN_U16("graphics/tilemaps/notification_please_wait_fr/palette.gbapal");
const u8 Tiles_notification_please_wait_fr[] = INCBIN_U8("graphics/tilemaps/notification_please_wait_fr/tiles.4bpp");
const u16 Tilemap_notification_please_wait_fr[] = INCBIN_U16("graphics/tilemaps/notification_please_wait_fr/tilemap.tilemap2");

const Tilemap notification_please_wait_fr = {
    .xTiles = 14,
    .yTiles = 3,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_notification_please_wait_fr,
    .tilesSize = sizeof(Tiles_notification_please_wait_fr) - (0 * 0x00),
    .palette = Palette_notification_please_wait_fr,
    .palOffset = 0,
    .palLength = sizeof(Palette_notification_please_wait_fr) / sizeof(u16),
    .map = Tilemap_notification_please_wait_fr,
};

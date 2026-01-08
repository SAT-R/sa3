#include "global.h"
#include "core.h"

const u16 Palette_notification_unlocked_cream_en[] = INCBIN_U16("graphics/tilemaps/notification_unlocked_cream_en/palette.gbapal");
const u8 Tiles_notification_unlocked_cream_en[] = INCBIN_U8("graphics/tilemaps/notification_unlocked_cream_en/tiles.4bpp");
const u16 Tilemap_notification_unlocked_cream_en[] = INCBIN_U16("graphics/tilemaps/notification_unlocked_cream_en/tilemap.tilemap2");

const Tilemap notification_unlocked_cream_en = {
    .xTiles = 32,
    .yTiles = 32,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_notification_unlocked_cream_en,
    .tilesSize = sizeof(Tiles_notification_unlocked_cream_en) - (0 * 0x00),
    .palette = Palette_notification_unlocked_cream_en,
    .palOffset = 0,
    .palLength = sizeof(Palette_notification_unlocked_cream_en) / sizeof(u16),
    .map = Tilemap_notification_unlocked_cream_en,
};

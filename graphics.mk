# Empty in SA3 for now

tileset_%.4bpp: tileset_%.png
	$(GFX) $< $@ -ignore_trailing
    
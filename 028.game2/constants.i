BACKGROUND_UPDATE_COUNT	equ	$3
FOREGROUND_DELAY_BIT	equ	0

FOREGROUND_SCROLL_SHIFT_CONVERT	equ	1
FOREGROUND_SCROLL_PIXELS	equ	2
	
SCREEN_WIDTH		    equ 320
SCREEN_HEIGHT		    equ 256
SCREEN_WIDTH_BYTES	    equ (SCREEN_WIDTH/8)
SCREEN_WIDTH_WORDS	    equ SCREEN_WIDTH_BYTES/2
BITPLANE_WIDTH		    equ 352
BITPLANE_WIDTH_BYTES	    equ BITPLANE_WIDTH/8
BITPLANE_WIDTH_WORDS	    equ BITPLANE_WIDTH_BYTES/2
TILEMAP_WIDTH		    equ	320
TILEMAP_WIDTH_BYTES	    equ	TILEMAP_WIDTH/8
TILEMAP_WIDTH_WORDS	    equ	TILEMAP_WIDTH_BYTES/2

			if NUM_COLORS==64
SCREEN_BIT_DEPTH	equ 6
			endif
			if NUM_COLORS==32
SCREEN_BIT_DEPTH	equ 5
			endif
			if NUM_COLORS==16
SCREEN_BIT_DEPTH	equ 4
			endif
			if NUM_COLORS==8
SCREEN_BIT_DEPTH	equ 3
			endif
			if NUM_COLORS==4
SCREEN_BIT_DEPTH	equ 2
			endif
			if NUM_COLORS==2
SCREEN_BIT_DEPTH	equ 1
			endif

SCREEN_RES		equ 8 	; 8=lo resolution, 4=hi resolution
RASTER_X_START		equ $81	; hard coded coordinates from hardware manual
RASTER_Y_START		equ $2c
RASTER_X_STOP		equ RASTER_X_START+SCREEN_WIDTH
RASTER_Y_STOP		equ RASTER_Y_START+256
IMAGESIZE		equ BITPLANE_WIDTH_BYTES*SCREEN_BIT_DEPTH*SCREEN_HEIGHT
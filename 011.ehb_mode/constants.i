LVL3_INT_VECTOR		equ $6c
SCREEN_WIDTH		equ 320
SCREEN_HEIGHT		equ 256
SCREEN_WIDTH_BYTES	equ (SCREEN_WIDTH/8)
			if SCREEN_COLORS==64
SCREEN_BIT_DEPTH	equ 6
			endif
			if SCREEN_COLORS==32
SCREEN_BIT_DEPTH	equ 5
			endif
			if SCREEN_COLORS==16
SCREEN_BIT_DEPTH	equ 4
			endif
			if SCREEN_COLORS==8
SCREEN_BIT_DEPTH	equ 3
			endif
			if SCREEN_COLORS==4
SCREEN_BIT_DEPTH	equ 2
			endif
			if SCREEN_COLORS==2
SCREEN_BIT_DEPTH	equ 1
			endif
SCREEN_RES		equ 8 	; 8=lo resolution, 4=hi resolution
RASTER_X_START		equ $81	; hard coded coordinates from hardware manual
RASTER_Y_START		equ $2c
RASTER_X_STOP		equ RASTER_X_START+SCREEN_WIDTH
RASTER_Y_STOP		equ RASTER_Y_START+SCREEN_HEIGHT

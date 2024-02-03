	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song510_1
song510_1:	@ 0x082B07DC
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 10
	.byte	VOL	, v127
	.byte	PAN	, c_v
	.byte		N54	, Cn3, v127
	.byte	W54
	.byte	FINE

	.align 2
	.global song510
song510:	@ 0x082B07EC
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup004		@ voicegroup/tone

	.word	song510_1		@ track

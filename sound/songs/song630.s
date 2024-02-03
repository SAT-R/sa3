	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song630_1
song630_1:	@ 0x082B21F8
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 30
	.byte	VOL	, v127
	.byte	PAN	, c_v
	.byte		N66	, Cn3, v127
	.byte	W66
	.byte	FINE

	.align 2
	.global song630
song630:	@ 0x082B2208
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup004		@ voicegroup/tone

	.word	song630_1		@ track

	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song624_1
song624_1:	@ 0x082B2150
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 24
	.byte	VOL	, v127
	.byte	PAN	, c_v
	.byte		N22	, Cn3, v127
	.byte	W22
	.byte	FINE

	.align 2
	.global song624
song624:	@ 0x082B2160
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup004		@ voicegroup/tone

	.word	song624_1		@ track

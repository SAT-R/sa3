	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song614_1
song614_1:	@ 0x082B2054
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 14
	.byte	VOL	, v127
	.byte	PAN	, c_v
	.byte		N44	, Cn3, v127
	.byte	W44
	.byte	FINE

	.align 2
	.global song614
song614:	@ 0x082B2064
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup004		@ voicegroup/tone

	.word	song614_1		@ track

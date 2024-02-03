	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song629_1
song629_1:	@ 0x082B21DC
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 29
	.byte	VOL	, v127
	.byte	PAN	, c_v
	.byte		N52	, Cn3, v127
	.byte	W52
	.byte	FINE

	.align 2
	.global song629
song629:	@ 0x082B21EC
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup004		@ voicegroup/tone

	.word	song629_1		@ track

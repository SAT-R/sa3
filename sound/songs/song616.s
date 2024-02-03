	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song616_1
song616_1:	@ 0x082B208C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 16
	.byte	VOL	, v127
	.byte	PAN	, c_v
	.byte		N48	, Cn3, v127
	.byte	W48
	.byte	W02
	.byte	FINE

	.align 2
	.global song616
song616:	@ 0x082B209C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup004		@ voicegroup/tone

	.word	song616_1		@ track

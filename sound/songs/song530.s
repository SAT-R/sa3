	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song530_1
song530_1:	@ 0x082B0CCC
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 29
	.byte	VOL	, v120
	.byte	LFOS	, 4
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 127
	.byte		N03	, Gs3, v127
	.byte	W04
	.byte		N20	, Cn4
	.byte	W20
	.byte	FINE

	.align 2
	.global song530
song530:	@ 0x082B0CE4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	song530_1		@ track

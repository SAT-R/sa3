	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song544_1
song544_1:	@ 0x082B1078
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 31
	.byte	VOL	, v090
	.byte	LFOS	, 65
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 101
	.byte		N11	, Cn3, v127
	.byte	W24
	.byte			Cn3, v084
	.byte	W11
	.byte	FINE

	.align 2
	.global song544
song544:	@ 0x082B1094
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	song544_1		@ track

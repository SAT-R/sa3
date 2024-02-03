	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song537_1
song537_1:	@ 0x082B0E84
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 32
	.byte	VOL	, v120
	.byte	LFOS	, 30
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 127
	.byte		N02	, An2, v127
	.byte	W02
	.byte		N10	, Gs3
	.byte	W10
	.byte	FINE

	.align 2
	.global song537
song537:	@ 0x082B0EA0
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	song537_1		@ track

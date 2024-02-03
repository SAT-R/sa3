	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song534_1
song534_1:	@ 0x082B0DF0
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 23
	.byte	VOL	, v120
	.byte	LFOS	, 63
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 127
	.byte		N19	, Gn2, v127
	.byte	W24
	.byte			Gn2, v084
	.byte	W24
	.byte			Gn2, v040
	.byte	W19
	.byte	FINE

	@********************** Track  2 **********************@

	.global song534_2
song534_2:	@ 0x082B0E0D
	.byte	KEYSH	, 0
	.byte	VOICE	, 31
	.byte	VOL	, v090
	.byte	LFOS	, 65
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 7
	.byte		N19	, Gs2, v127
	.byte	W24
	.byte			Gs2, v084
	.byte	W24
	.byte			Gs2, v040
	.byte	W19
	.byte	FINE

	.align 2
	.global song534
song534:	@ 0x082B0E28
	.byte	2		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	song534_1		@ track
	.word	song534_2		@ track

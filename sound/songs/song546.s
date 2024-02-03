	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song546_1
song546_1:	@ 0x082B10FC
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 23
	.byte	VOL	, v120
	.byte	LFOS	, 63
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 127
	.byte		N15	, Cn3, v127
	.byte	W20
	.byte			Cn3, v068
	.byte	W15
	.byte	FINE

	@********************** Track  2 **********************@

	.global song546_2
song546_2:	@ 0x082B1116
	.byte	KEYSH	, 0
	.byte	VOICE	, 31
	.byte	VOL	, v090
	.byte	LFOS	, 65
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 7
	.byte		N03	, Gs2, v127
	.byte	W20
	.byte			Gs2, v068
	.byte	W03
	.byte	FINE

	.align 2
	.global song546
song546:	@ 0x082B1130
	.byte	2		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	song546_1		@ track
	.word	song546_2		@ track

	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song587_1
song587_1:	@ 0x082B1AA0
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 48
	.byte	VOL	, v120
	.byte	LFOS	, 127
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 127
	.byte		N14	, Fs2, v127
	.byte		N03	, Gn2
	.byte	W04
	.byte		N10	, En3
	.byte	W04
	.byte			Bn2, v088
	.byte	W04
	.byte			Gs2, v060
	.byte	W10
	.byte	FINE

	.align 2
	.global song587
song587:	@ 0x082B1AC4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	song587_1		@ track

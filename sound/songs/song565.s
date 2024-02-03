	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song565_1
song565_1:	@ 0x082B14FC
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 3
	.byte	VOL	, v120
	.byte	LFOS	, 63
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 127
	.byte		N03	, En2, v127
	.byte	W04
	.byte		N07	, Gn2
	.byte	W20
	.byte		N03	, En2, v084
	.byte	W04
	.byte		N07	, Gn2
	.byte	W20
	.byte		N03	, En2, v040
	.byte	W04
	.byte		N07	, Gn2
	.byte	W07
	.byte	FINE

	@********************** Track  2 **********************@

	.global song565_2
song565_2:	@ 0x082B1524
	.byte	KEYSH	, 0
	.byte	VOICE	, 31
	.byte	VOL	, v090
	.byte	LFOS	, 65
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 7
	.byte		N03	, Ds2, v127
	.byte	W04
	.byte		N15	, Gs2
	.byte	W20
	.byte		N03	, Ds2, v084
	.byte	W04
	.byte		N15	, Gs2
	.byte	W20
	.byte		N03	, Ds2, v040
	.byte	W04
	.byte		N15	, Gs2
	.byte	W15
	.byte	FINE

	.align 2
	.global song565
song565:	@ 0x082B154C
	.byte	2		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	song565_1		@ track
	.word	song565_2		@ track

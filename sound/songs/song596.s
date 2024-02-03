	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song596_1
song596_1:	@ 0x082B1C38
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 0
	.byte	VOL	, v120
	.byte	LFOS	, 63
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 127
	.byte		N11	, Dn1, v127
	.byte	W12
	.byte		N19	, Dn1, v080
	.byte	W19
	.byte	FINE

	@********************** Track  2 **********************@

	.global song596_2
song596_2:	@ 0x082B1C53
	.byte	KEYSH	, 0
	.byte	VOICE	, 31
	.byte	VOL	, v090
	.byte	LFOS	, 44
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 15
	.byte		N03	, As2, v127
	.byte	W12
	.byte			As2, v088
	.byte	W12
	.byte			As2, v076
	.byte	W03
	.byte	FINE

	.align 2
	.global song596
song596:	@ 0x082B1C70
	.byte	2		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	song596_1		@ track
	.word	song596_2		@ track

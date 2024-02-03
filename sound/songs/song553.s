	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song553_1
song553_1:	@ 0x082B127C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 22
	.byte	VOL	, v090
	.byte	LFOS	, 52
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 32
	.byte		N03	, Fs2, v112
	.byte	W04
	.byte		N04	, As2, v120
	.byte	W04
	.byte		N03	, En3, v104
	.byte	W04
	.byte		N04	, An3, v108
	.byte	W08
	.byte		N03	, En3, v072
	.byte	W04
	.byte		N04	, An3, v080
	.byte	W04
	.byte	FINE

	.align 2
	.global song553
song553:	@ 0x082B12A8
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	song553_1		@ track

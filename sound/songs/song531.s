	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song531_1
song531_1:	@ 0x082B0CF0
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 17
	.byte	VOL	, v120
	.byte	LFOS	, 127
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 127
	.byte		N03	, Cs3, v127
	.byte	W04
	.byte		N66	, Fn3
	.byte	W66
	.byte	W01
	.byte	FINE

	.align 2
	.global song531
song531:	@ 0x082B0D0C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	song531_1		@ track

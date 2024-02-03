	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song515_1
song515_1:	@ 0x082B08D0
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 0
	.byte	VOL	, v120
	.byte	PAN	, c_v
	.byte		N03	, Ds6, v064
	.byte	W06
	.byte	MOD	, 14
	.byte	FINE

	.align 2
	.global song515
song515:	@ 0x082B08E4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	song515_1		@ track

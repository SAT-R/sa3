	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song612_1
song612_1:	@ 0x082B2018
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 0
	.byte	VOL	, v120
	.byte	PAN	, c_v
	.byte	MOD	, 127
	.byte		N03	, Bn6, v064
	.byte	W03
	.byte	FINE

	.align 2
	.global song612
song612:	@ 0x082B202C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	song612_1		@ track

	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song594_1
song594_1:	@ 0x082B1BF4
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 54
	.byte	VOL	, v120
	.byte	PAN	, c_v
	.byte		N13	, Cn3, v127
	.byte	W13
	.byte	FINE

	.align 2
	.global song594
song594:	@ 0x082B1C04
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	song594_1		@ track

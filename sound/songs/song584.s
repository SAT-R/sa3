	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song584_1
song584_1:	@ 0x082B1A30
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 1
	.byte	VOL	, v120
	.byte	PAN	, c_v
	.byte		N02	, Gn5, v064
	.byte	W02
	.byte			Gn6
	.byte	W02
	.byte	FINE

	.align 2
	.global song584
song584:	@ 0x082B1A44
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	song584_1		@ track

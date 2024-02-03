	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song508_1
song508_1:	@ 0x082B07A4
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 8
	.byte	VOL	, v127
	.byte	PAN	, c_v
	.byte		N54	, Cn3, v127
	.byte	W54
	.byte	FINE

	.align 2
	.global song508
song508:	@ 0x082B07B4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup004		@ voicegroup/tone

	.word	song508_1		@ track

	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song509_1
song509_1:	@ 0x082B07C0
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 9
	.byte	VOL	, v127
	.byte	PAN	, c_v
	.byte		N42	, Cn3, v127
	.byte	W42
	.byte	FINE

	.align 2
	.global song509
song509:	@ 0x082B07D0
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup004		@ voicegroup/tone

	.word	song509_1		@ track

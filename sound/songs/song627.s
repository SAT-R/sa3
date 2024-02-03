	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song627_1
song627_1:	@ 0x082B21A4
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 27
	.byte	VOL	, v127
	.byte	PAN	, c_v
	.byte		N48	, Cn3, v127
	.byte	W48
	.byte	W02
	.byte	FINE

	.align 2
	.global song627
song627:	@ 0x082B21B4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup004		@ voicegroup/tone

	.word	song627_1		@ track

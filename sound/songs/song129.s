	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song129_1
song129_1:	@ 0x082AF688
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 117
	.byte	VOL	, v120
	.byte		N84	, Cn3, v127
	.byte	W84
	.byte	FINE

	.align 2
	.global song129
song129:	@ 0x082AF698
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup001		@ voicegroup/tone

	.word	song129_1		@ track

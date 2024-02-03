	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song144_1
song144_1:	@ 0x082AF8BC
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 27
	.byte	VOL	, v120
	.byte	LFOS	, 84
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 77
	.byte		N18	, Gn2, v127
	.byte	W18
	.byte	FINE

	.align 2
	.global song144
song144:	@ 0x082AF8D4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup001		@ voicegroup/tone

	.word	song144_1		@ track

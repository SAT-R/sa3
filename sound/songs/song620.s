	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song620_1
song620_1:	@ 0x082B20FC
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 20
	.byte	VOL	, v127
	.byte	PAN	, c_v
	.byte		N20	, Cn3, v127
	.byte	W20
	.byte	FINE

	.align 2
	.global song620
song620:	@ 0x082B210C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup004		@ voicegroup/tone

	.word	song620_1		@ track

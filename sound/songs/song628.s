	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song628_1
song628_1:	@ 0x082B21C0
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 28
	.byte	VOL	, v127
	.byte	PAN	, c_v
	.byte		N44	, Cn3, v127
	.byte	W44
	.byte	FINE

	.align 2
	.global song628
song628:	@ 0x082B21D0
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup004		@ voicegroup/tone

	.word	song628_1		@ track

	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song512_1
song512_1:	@ 0x082B0814
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 12
	.byte	VOL	, v127
	.byte	PAN	, c_v
	.byte		TIE	, Cn3, v127
	.byte	W96
	.byte	W24
	.byte	W02
	.byte		EOT	
	.byte	FINE

	.align 2
	.global song512
song512:	@ 0x082B0828
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup004		@ voicegroup/tone

	.word	song512_1		@ track

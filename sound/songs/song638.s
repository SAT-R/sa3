	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song638_1
song638_1:	@ 0x082B22D8
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 38
	.byte	VOL	, v127
	.byte	PAN	, c_v
	.byte		TIE	, Cn3, v127
	.byte	W96
	.byte	W10
	.byte		EOT	
	.byte	FINE

	.align 2
	.global song638
song638:	@ 0x082B22EC
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup004		@ voicegroup/tone

	.word	song638_1		@ track

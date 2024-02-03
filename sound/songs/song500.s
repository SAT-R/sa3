	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song500_1
song500_1:	@ 0x082B06C0
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 0
	.byte	VOL	, v127
	.byte	PAN	, c_v
	.byte		TIE	, Cn3, v127
	.byte	W96
	.byte	W64
	.byte		EOT	
	.byte	FINE

	.align 2
	.global song500
song500:	@ 0x082B06D4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup004		@ voicegroup/tone

	.word	song500_1		@ track

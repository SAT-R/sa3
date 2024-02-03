	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song505_1
song505_1:	@ 0x082B0750
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 5
	.byte	VOL	, v127
	.byte	PAN	, c_v
	.byte		N56	, Cn3, v127
	.byte	W56
	.byte	FINE

	.align 2
	.global song505
song505:	@ 0x082B0760
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup004		@ voicegroup/tone

	.word	song505_1		@ track

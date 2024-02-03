	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song502_1
song502_1:	@ 0x082B06FC
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 2
	.byte	VOL	, v127
	.byte	PAN	, c_v
	.byte		N56	, Cn3, v127
	.byte	W56
	.byte	FINE

	.align 2
	.global song502
song502:	@ 0x082B070C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup004		@ voicegroup/tone

	.word	song502_1		@ track

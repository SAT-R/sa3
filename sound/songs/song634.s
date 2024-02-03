	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song634_1
song634_1:	@ 0x082B2268
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 34
	.byte	VOL	, v127
	.byte	PAN	, c_v
	.byte		N36	, Cn3, v127
	.byte	W36
	.byte	FINE

	.align 2
	.global song634
song634:	@ 0x082B2278
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup004		@ voicegroup/tone

	.word	song634_1		@ track

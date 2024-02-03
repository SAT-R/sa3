	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song618_1
song618_1:	@ 0x082B20C4
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 18
	.byte	VOL	, v127
	.byte	PAN	, c_v
	.byte		N32	, Cn3, v127
	.byte	W32
	.byte	W02
	.byte	FINE

	.align 2
	.global song618
song618:	@ 0x082B20D4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup004		@ voicegroup/tone

	.word	song618_1		@ track

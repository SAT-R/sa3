	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song636_1
song636_1:	@ 0x082B22A0
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 36
	.byte	VOL	, v127
	.byte	PAN	, c_v
	.byte		N24	, Cn3, v127
	.byte	W24
	.byte	FINE

	.align 2
	.global song636
song636:	@ 0x082B22B0
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup004		@ voicegroup/tone

	.word	song636_1		@ track

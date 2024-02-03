	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song528_1
song528_1:	@ 0x082B0C68
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 27
	.byte	VOL	, v120
	.byte	PAN	, c_v
	.byte		N20	, Cn3, v127
	.byte	W20
	.byte	FINE

	.align 2
	.global song528
song528:	@ 0x082B0C78
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	song528_1		@ track

	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song581_1
song581_1:	@ 0x082B19B4
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 45
	.byte	VOL	, v120
	.byte	PAN	, c_v
	.byte		N24	, Cn3, v127
	.byte	W24
	.byte	W01
	.byte	FINE

	.align 2
	.global song581
song581:	@ 0x082B19C4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	song581_1		@ track

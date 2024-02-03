	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song633_1
song633_1:	@ 0x082B224C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 33
	.byte	VOL	, v127
	.byte	PAN	, c_v
	.byte		N40	, Cn3, v127
	.byte	W40
	.byte	FINE

	.align 2
	.global song633
song633:	@ 0x082B225C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup004		@ voicegroup/tone

	.word	song633_1		@ track

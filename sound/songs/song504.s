	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song504_1
song504_1:	@ 0x082B0734
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 4
	.byte	VOL	, v127
	.byte	PAN	, c_v
	.byte		N60	, Cn3, v127
	.byte	W60
	.byte	FINE

	.align 2
	.global song504
song504:	@ 0x082B0744
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup004		@ voicegroup/tone

	.word	song504_1		@ track

	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song506_1
song506_1:	@ 0x082B076C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 6
	.byte	VOL	, v127
	.byte	PAN	, c_v
	.byte		N60	, Cn3, v127
	.byte	W60
	.byte	FINE

	.align 2
	.global song506
song506:	@ 0x082B077C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup004		@ voicegroup/tone

	.word	song506_1		@ track

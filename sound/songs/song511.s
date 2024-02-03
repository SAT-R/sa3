	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song511_1
song511_1:	@ 0x082B07F8
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 11
	.byte	VOL	, v127
	.byte	PAN	, c_v
	.byte		N42	, Cn3, v127
	.byte	W42
	.byte	FINE

	.align 2
	.global song511
song511:	@ 0x082B0808
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup004		@ voicegroup/tone

	.word	song511_1		@ track

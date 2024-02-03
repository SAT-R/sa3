	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song822_1
song822_1:	@ 0x082B455C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 38
	.byte	VOL	, v120
	.byte	PAN	, c_v
	.byte	BENDR	, 15
	.byte		N12	, Gn4, v100
	.byte	W12
	.byte			Dn4, v092
	.byte	W12
	.byte	FINE

	.align 2
	.global song822
song822:	@ 0x082B4570
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	.word	voicegroup025		@ voicegroup/tone

	.word	song822_1		@ track

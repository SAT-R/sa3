	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song220_1
song220_1:	@ 0x082AFE4C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 81
	.byte	VOICE	, 20
	.byte	VOL	, v100
	.byte	LFOS	, 51
	.byte	BENDR	, 15
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte		N24	, Ds4, v120
	.byte	W24
	.byte	FINE

	.align 2
	.global song220
song220:	@ 0x082AFE64
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup002		@ voicegroup/tone

	.word	song220_1		@ track

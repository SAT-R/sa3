	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song121_1
song121_1:	@ 0x082AF488
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 34
	.byte	VOL	, v107
	.byte	LFOS	, 2
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 0
	.byte		N05	, Dn4, v092
	.byte	W06
	.byte		N04	, Fs3
	.byte	W04
	.byte	FINE

	.align 2
	.global song121
song121:	@ 0x082AF4A0
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup001		@ voicegroup/tone

	.word	song121_1		@ track

	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song098_1
song098_1:	@ 0x082AEDB8
	.byte	KEYSH	, 0
	.byte	TEMPO	, 70
	.byte	VOICE	, 113
	.byte	VOL	, v028
	.byte	PAN	, c_v
	.byte		N06	, Gs5, v112
	.byte	W24
	.byte			Ds5
	.byte	W24
	.byte			Fs5
	.byte	W24
	.byte			Cs5
	.byte	W24
	.byte		N12	, Cn5
	.byte	W12
	.byte	FINE

	@********************** Track  2 **********************@

	.global song098_2
song098_2:	@ 0x082AEDD0
	.byte	KEYSH	, 0
	.byte	VOICE	, 114
	.byte	VOL	, v035
	.byte	PAN	, c_v
	.byte		N06	, Ds5, v112
	.byte	W24
	.byte			Cn5
	.byte	W24
	.byte			Cs5
	.byte	W24
	.byte			As4
	.byte	W24
	.byte		N12	, Gs4
	.byte	W12
	.byte	FINE

	@********************** Track  3 **********************@

	.global song098_3
song098_3:	@ 0x082AEDE6
	.byte	KEYSH	, 0
	.byte	VOICE	, 68
	.byte	VOL	, v077
	.byte	PAN	, c_v
	.byte		N06	, Cn4, v112
	.byte	W24
	.byte			Gs3
	.byte	W24
	.byte			As3
	.byte	W24
	.byte			Fs3
	.byte	W24
	.byte			Ds3
	.byte	W06
	.byte	FINE

	@********************** Track  4 **********************@

	.global song098_4
song098_4:	@ 0x082AEDFB
	.byte	KEYSH	, 0
	.byte	VOICE	, 69
	.byte	VOL	, v077
	.byte	PAN	, c_v
	.byte		N06	, Gs4, v112
	.byte	W24
	.byte			Ds4
	.byte	W24
	.byte			Fs4
	.byte	W24
	.byte			Cs4
	.byte	W24
	.byte		N54	, Cn4
	.byte	W54
	.byte	FINE

	@********************** Track  5 **********************@

	.global song098_5
song098_5:	@ 0x082AEE11
	.byte	KEYSH	, 0
	.byte	VOICE	, 68
	.byte	VOL	, v038
	.byte	PAN	, c_v
	.byte		N23	, Ds4, v112
	.byte	W24
	.byte			Cn4
	.byte	W24
	.byte			Cs4
	.byte	W24
	.byte			As3
	.byte	W24
	.byte	VOICE	, 68
	.byte		N78	, Gs3
	.byte	W78
	.byte	FINE

	.align 2
	.global song098
song098:	@ 0x082AEE2C
	.byte	5		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

	.word	voicegroup021		@ voicegroup/tone

	.word	song098_1		@ track
	.word	song098_2		@ track
	.word	song098_3		@ track
	.word	song098_4		@ track
	.word	song098_5		@ track

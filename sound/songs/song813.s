	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song813_1
song813_1:	@ 0x082B4394
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 12
	.byte	VOL	, v075
	.byte	BENDR	, 15
	.byte	PAN	, c_v
	.byte		N01	, Gs4, v104
	.byte	W01
	.byte			As4, v108
	.byte	W01
	.byte			Gs4, v112
	.byte	W01
	.byte			As4, v108
	.byte	W01
	.byte			Gs4
	.byte	W01
	.byte			As4
	.byte	W02
	.byte			Gs4, v104
	.byte	W01
	.byte			As4, v108
	.byte	W01
	.byte			Gs4, v112
	.byte	W01
	.byte			As4, v108
	.byte	W01
	.byte			Gs4
	.byte	W01
	.byte			As4
	.byte	W01
	.byte			Gs4, v104
	.byte	W01
	.byte			As4, v108
	.byte	W01
	.byte			Gs4, v112
	.byte	W01
	.byte			As4, v108
	.byte	W01
	.byte			Gs4
	.byte	W01
	.byte			As4
	.byte	W01
	.byte			Gs4, v104
	.byte	W01
	.byte			As4, v108
	.byte	W01
	.byte			Gs4, v112
	.byte	W01
	.byte			As4, v108
	.byte	W01
	.byte			Gs4
	.byte	W01
	.byte			As4
	.byte	W01
	.byte	FINE

	.align 2
	.global song813
song813:	@ 0x082B43E4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	.word	voicegroup025		@ voicegroup/tone

	.word	song813_1		@ track

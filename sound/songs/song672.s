	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song672_1
song672_1:	@ 0x082B2540
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 61
	.byte	VOL	, v103
	.byte	LFOS	, 110
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte		N05	, Fn4, v080
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte	MOD	, 5
	.byte		N01	, As3
	.byte	W01
	.byte			Dn4
	.byte	W02
	.byte			Fn4
	.byte	W01
	.byte		N24	, As4
	.byte	W24
	.byte	W02
	.byte		N01	, As3, v040
	.byte	W01
	.byte			Dn4
	.byte	W02
	.byte			Fn4
	.byte	W01
	.byte		N24	, As4
	.byte	W24
	.byte	W02
	.byte		N01	, As3, v020
	.byte	W01
	.byte			Dn4
	.byte	W02
	.byte			Fn4
	.byte	W01
	.byte		N24	, As4
	.byte	W08
	.byte	W18
	.byte	FINE

	.align 2
	.global song672
song672:	@ 0x082B2580
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	song672_1		@ track

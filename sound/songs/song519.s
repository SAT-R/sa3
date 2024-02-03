	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song519_1
song519_1:	@ 0x082B0998
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 20
	.byte	VOL	, v120
	.byte	LFOS	, 21
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 3
	.byte		N03	, Dn5, v127
	.byte	W04
	.byte			Gs5
	.byte	W04
	.byte			Cn6
	.byte	W04
	.byte			Ds6
	.byte	W04
	.byte		N11	, Fn6
	.byte	W12
	.byte		N03	, Dn5, v060
	.byte	W04
	.byte			Gs5
	.byte	W04
	.byte			Cn6
	.byte	W04
	.byte			Ds6
	.byte	W04
	.byte		N32	, Fn6
	.byte	W32
	.byte	W02
	.byte	FINE

	@********************** Track  2 **********************@

	.global song519_2
song519_2:	@ 0x082B09C6
	.byte	KEYSH	, 0
	.byte	VOICE	, 24
	.byte	VOL	, v120
	.byte	BENDR	, 127
	.byte	LFOS	, 127
	.byte	LFODL	, 0
	.byte	MOD	, 69
	.byte	PAN	, c_v
	.byte	BEND	, c_v
	.byte		N84	, As2, v127
	.byte	W08
	.byte	BEND	, c_v+63
	.byte	W80
	.byte	FINE

	.align 2
	.global song519
song519:	@ 0x082B09E0
	.byte	2		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	song519_1		@ track
	.word	song519_2		@ track

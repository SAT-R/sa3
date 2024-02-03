	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song673_1
song673_1:	@ 0x082B258C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 22
	.byte	VOL	, v103
	.byte	LFOS	, 13
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 0
	.byte		N03	, As3, v127
	.byte	W04
	.byte			Fn4
	.byte	W04
	.byte			An4
	.byte	W04
	.byte			Fn4, v080
	.byte	W04
	.byte			An4
	.byte	W04
	.byte			Fn4, v060
	.byte	W04
	.byte			An4
	.byte	W04
	.byte			Fn4, v052
	.byte	W04
	.byte			An4
	.byte	W04
	.byte			Fn4, v040
	.byte	W04
	.byte			An4
	.byte	W04
	.byte			Fn4, v032
	.byte	W04
	.byte			An4
	.byte	W04
	.byte			Fn4, v020
	.byte	W04
	.byte			An4
	.byte	W04
	.byte			Fn4, v012
	.byte	W04
	.byte			An4
	.byte	W03
	.byte	FINE

	.align 2
	.global song673
song673:	@ 0x082B25C8
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	song673_1		@ track

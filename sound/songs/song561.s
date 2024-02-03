	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song561_1
song561_1:	@ 0x082B144C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 30
	.byte	VOL	, v120
	.byte	LFOS	, 127
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 111
	.byte		N17	, An2, v127
	.byte	W18
	.byte		N06	, An2, v088
	.byte	W18
	.byte		N36	, An2, v040
	.byte	W36
	.byte	FINE

	.align 2
	.global song561
song561:	@ 0x082B146C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	song561_1		@ track

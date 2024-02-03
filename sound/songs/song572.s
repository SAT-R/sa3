	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song572_1
song572_1:	@ 0x082B1700
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 23
	.byte	VOL	, v120
	.byte	LFOS	, 63
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 127
	.byte		N19	, Fs1, v127
	.byte	W20
	.byte			Fs1, v080
	.byte	W19
	.byte	FINE

	@********************** Track  2 **********************@

	.global song572_2
song572_2:	@ 0x082B171A
	.byte	KEYSH	, 0
	.byte	VOICE	, 31
	.byte	VOL	, v090
	.byte	LFOS	, 44
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 26
	.byte		N03	, Fs2, v127
	.byte	W28
	.byte			Fs2, v088
	.byte	W28
	.byte			Fs2, v076
	.byte	W03
	.byte	FINE

	.align 2
	.global song572
song572:	@ 0x082B1738
	.byte	2		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	song572_1		@ track
	.word	song572_2		@ track

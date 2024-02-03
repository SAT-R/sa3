	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song551_1
song551_1:	@ 0x082B1200
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 3
	.byte	VOL	, v120
	.byte	LFOS	, 63
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 127
	.byte		N07	, Cs2, v127
	.byte	W24
	.byte			Cs2, v084
	.byte	W24
	.byte			Cs2, v040
	.byte	W07
	.byte	FINE

	@********************** Track  2 **********************@

	.global song551_2
song551_2:	@ 0x082B121D
	.byte	KEYSH	, 0
	.byte	VOICE	, 31
	.byte	VOL	, v090
	.byte	LFOS	, 65
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 7
	.byte		N19	, Ds2, v127
	.byte	W24
	.byte			Ds2, v084
	.byte	W24
	.byte			Ds2, v040
	.byte	W19
	.byte	FINE

	.align 2
	.global song551
song551:	@ 0x082B1238
	.byte	2		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	song551_1		@ track
	.word	song551_2		@ track

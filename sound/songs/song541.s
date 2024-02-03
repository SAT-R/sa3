	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song541_1
song541_1:	@ 0x082B0FE8
	.byte	KEYSH	, 0
	.byte	TEMPO	, 105
	.byte	VOICE	, 33
	.byte	VOL	, v120
	.byte	LFOS	, 83
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 127
	.byte		TIE	, Fs3, v052
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W72
song541_1_1:
	.byte	W24
	.byte	W72
	.byte	GOTO	
		.word	song541_1_1
	.byte	W23
	.byte		EOT	, Fs3
	.byte	FINE

	.align 2
	.global song541
song541:	@ 0x082B100C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	song541_1		@ track

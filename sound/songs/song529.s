	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song529_1
song529_1:	@ 0x082B0C84
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 28
	.byte	VOL	, v120
	.byte	BENDR	, 6
	.byte	LFOS	, 127
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	MOD	, 127
	.byte	PAN	, c_v
	.byte		TIE	, Cn4, v060
	.byte	W03
	.byte	BEND	, c_v-62
	.byte	W01
	.byte		c_v-56
	.byte	W01
	.byte		c_v-50
	.byte	W01
	.byte		c_v-44
	.byte	W01
	.byte		c_v-37
	.byte	W01
	.byte		c_v-31
	.byte	W01
	.byte		c_v-25
	.byte	W01
	.byte		c_v-18
	.byte	W01
	.byte		c_v-12
	.byte	W01
	.byte		c_v-6
	.byte	W60
song529_1_1:
	.byte	W24
	.byte	W72
	.byte	GOTO	
		.word	song529_1_1
	.byte	W23
	.byte		EOT	, Cn4
	.byte	W01
	.byte	FINE

	.align 2
	.global song529
song529:	@ 0x082B0CC0
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	song529_1		@ track

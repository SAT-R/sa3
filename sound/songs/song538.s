	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song538_1
song538_1:	@ 0x082B0EAC
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 62
	.byte	VOL	, v120
	.byte	BENDR	, 14
	.byte	LFOS	, 50
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 4
	.byte		N24	, An4, v080
	.byte	W03
	.byte	BEND	, c_v
	.byte	W01
	.byte		c_v+1
	.byte	W01
	.byte		c_v+2
	.byte	W01
	.byte		c_v+3
	.byte	W01
	.byte		c_v+5
	.byte	W01
	.byte		c_v+6
	.byte	W01
	.byte		c_v+7
	.byte	W01
	.byte		c_v+9
	.byte	W01
	.byte		c_v+10
	.byte	W01
	.byte		c_v+11
	.byte	W01
	.byte		c_v+12
	.byte	W01
	.byte		c_v+14
	.byte	W01
	.byte		c_v+15
	.byte	W01
	.byte		c_v+16
	.byte	W01
	.byte		c_v+18
	.byte	W01
	.byte		c_v+19
	.byte	W01
	.byte		c_v+20
	.byte	W01
	.byte		c_v+22
	.byte	W01
	.byte		c_v+23
	.byte	W01
	.byte		c_v+24
	.byte	W01
	.byte		c_v+25
	.byte	W01
	.byte		c_v+27
	.byte	W01
	.byte		c_v+28
	.byte	W01
	.byte		c_v+29
	.byte	W01
	.byte		c_v+31
	.byte	W01
	.byte		c_v+32
	.byte	W01
	.byte		c_v+33
	.byte	FINE

	.align 2
	.global song538
song538:	@ 0x082B0EFC
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	song538_1		@ track

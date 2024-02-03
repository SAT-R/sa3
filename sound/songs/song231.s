	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song231_1
song231_1:	@ 0x082B01A0
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 31
	.byte	VOL	, v100
	.byte	PAN	, c_v
	.byte	MOD	, 60
	.byte	BENDR	, 19
	.byte	LFOS	, 60
	.byte	MODT	, 0
	.byte		TIE	, Fn3, v080
	.byte	W24
song231_1_1:
	.byte	W72
	.byte	W96
	.byte	GOTO	
		.word	song231_1_1
	.byte	W13
	.byte		EOT	, Fn3
	.byte	FINE

	.align 2
	.global song231
song231:	@ 0x082B01C4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup002		@ voicegroup/tone

	.word	song231_1		@ track

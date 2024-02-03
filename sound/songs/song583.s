	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song583_1
song583_1:	@ 0x082B1A00
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 0
	.byte	VOL	, v120
	.byte	BENDR	, 12
	.byte	LFOS	, 25
	.byte	MODT	, 0
	.byte	MOD	, 23
	.byte	PAN	, c_v
	.byte		TIE	, Gs5, v068
	.byte	W48
song583_1_1:
	.byte	W44
	.byte	W03
	.byte	GOTO	
		.word	song583_1_1
	.byte	W01
	.byte	W01
	.byte		EOT	, Gs5
	.byte	FINE

	.align 2
	.global song583
song583:	@ 0x082B1A24
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	song583_1		@ track

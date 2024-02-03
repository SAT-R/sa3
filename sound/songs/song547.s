	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song547_1
song547_1:	@ 0x082B1140
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 28
	.byte	VOL	, v120
	.byte	BENDR	, 6
	.byte	LFOS	, 127
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	MOD	, 21
	.byte	PAN	, c_v
	.byte		TIE	, Dn3, v060
	.byte	W72
song547_1_1:
	.byte	W24
	.byte	W72
	.byte	GOTO	
		.word	song547_1_1
	.byte	W23
	.byte		EOT	, Dn3
	.byte	W01
	.byte	FINE

	.align 2
	.global song547
song547:	@ 0x082B1164
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	song547_1		@ track

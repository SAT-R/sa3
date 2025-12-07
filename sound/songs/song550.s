	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song550_1
song550_1:	@ 0x082B11D0
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
	.byte		TIE	, Fs2, v060
	.byte	W72
song550_1_1:
	.byte	W24
	.byte	W72
	.byte	GOTO	
		.word	song550_1_1
	.byte	W23
	.byte		EOT	, Fs2
	.byte	W01
	.byte	FINE
    
	mAlignWord
	.global song550
song550:	@ 0x082B11F4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	.word	voicegroup003		@ voicegroup/tone

	.word	song550_1		@ track

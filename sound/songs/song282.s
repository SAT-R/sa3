	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song282_1
song282_1:	@ 0x082B05D8
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 82
	.byte	MOD	, 13
	.byte	VOL	, v090
	.byte	LFOS	, 84
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte		TIE	, An3, v127
	.byte	W96
song282_1_1:
	.byte	W96
	.byte	GOTO	
		.word	song282_1_1
	.byte	W06
	.byte		EOT	, An3
	.byte	FINE
    
	mAlignWord
	.global song282
song282:	@ 0x082B05F8
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	.word	voicegroup002		@ voicegroup/tone

	.word	song282_1		@ track

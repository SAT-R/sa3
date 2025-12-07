	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song281_1
song281_1:	@ 0x082B05A8
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 81
	.byte	PAN	, c_v
	.byte	MOD	, 43
	.byte	LFOS	, 7
	.byte	MODT	, 0
	.byte	BENDR	, 10
	.byte	VOL	, v090
	.byte		TIE	, As3, v127
	.byte	W24
song281_1_1:
	.byte	W72
	.byte	W72
	.byte	GOTO	
		mPtr	song281_1_1
	.byte	W24
	.byte		EOT	, As3
	.byte	FINE
    
	mAlignWord
	.global song281
song281:	@ 0x082B05CC
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	mPtr	voicegroup002		@ voicegroup/tone

	mPtr	song281_1		@ track

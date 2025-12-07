	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song224_1
song224_1:	@ 0x082AFFD8
	.byte	VOL	, v100
	.byte	KEYSH	, 0
	.byte	TEMPO	, 63
	.byte	VOICE	, 24
	.byte	LFOS	, 60
	.byte	BENDR	, 15
	.byte	PAN	, c_v
	.byte	MOD	, 0
	.byte		N06	, Gn5, v127
	.byte	W06
	.byte		TIE	, Cn6
	.byte	W18
song224_1_1:
	.byte	W72
	.byte	W48
	.byte	GOTO	
		mPtr	song224_1_1
	.byte	W24
	.byte		EOT	, Cn6
	.byte	FINE
    
	mAlignWord
	.global song224
song224:	@ 0x082AFFFC
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	mPtr	voicegroup002		@ voicegroup/tone

	mPtr	song224_1		@ track

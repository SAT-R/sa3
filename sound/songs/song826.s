	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@
    
	mAlignWord
	.global song826_1
song826_1:	@ 0x082B4704
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 68
	.byte	VOL	, v100
	.byte	LFOS	, 15
	.byte	BENDR	, 15
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 46
	.byte		N04	, Cs4, v127
	.byte	W05
	.byte		N02	, Gn3
	.byte	W03
	.byte		N01	, Fn5
	.byte	W02
	.byte		N03	, Ds5
	.byte	W10
	.byte		TIE	, Bn3, v072
	.byte	W76
song826_1_1:
	.byte	W96
	.byte	GOTO	
		mPtr	song826_1_1
	.byte	W12
	.byte		EOT	, Bn3
	.byte	FINE
    
	mAlignWord
	.global song826
song826:	@ 0x082B4734
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	mPtr	voicegroup027		@ voicegroup/tone

	mPtr	song826_1		@ track

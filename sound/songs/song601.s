	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song601_1
song601_1:	@ 0x082B1D60
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 22
	.byte	VOL	, v090
	.byte	LFOS	, 71
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 118
	.byte		N03	, Bn2, v112
	.byte	W04
	.byte		N04	, Ds3, v120
	.byte	W04
	.byte		N03	, An3, v104
	.byte	W04
	.byte		N04	, Dn4, v108
	.byte	W04
	.byte		N02	, Gn4, v127
	.byte	W12
	.byte		N03	, An3, v072
	.byte	W04
	.byte		N04	, Dn4, v080
	.byte	W04
	.byte		N02	, Gn4, v096
	.byte	W12
	.byte		N03	, An3, v052
	.byte	W04
	.byte		N04	, Dn4, v060
	.byte	W04
	.byte		N02	, Gn4, v056
	.byte	W02
	.byte	FINE
    
	mAlignWord
	.global song601
song601:	@ 0x082B1DA0
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	mPtr	voicegroup003		@ voicegroup/tone

	mPtr	song601_1		@ track

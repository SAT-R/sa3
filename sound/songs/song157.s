	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song157_1
song157_1:	@ 0x082AFC44
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 125
	.byte	VOL	, v090
	.byte	LFOS	, 51
	.byte	BENDR	, 15
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 60
	.byte		N05	, Fs2, v127
	.byte	W06
	.byte	VOL	, v083
	.byte		N90	, Gn3
	.byte	W06
	.byte	VOL	, v077
	.byte	W06
	.byte		v070
	.byte	W06
	.byte		v064
	.byte	W06
	.byte		v058
	.byte	W06
	.byte		v051
	.byte	W06
	.byte		v045
	.byte	W06
	.byte		v038
	.byte	W06
	.byte		v032
	.byte	W06
	.byte		v026
	.byte	W06
	.byte		v019
	.byte	W06
	.byte		v013
	.byte	W06
	.byte		v007
	.byte	W06
	.byte		v000
	.byte	W12
	.byte	FINE
    
	mAlignWord
	.global song157
song157:	@ 0x082AFC7C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	.word	voicegroup001		@ voicegroup/tone

	.word	song157_1		@ track

	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song563_1
song563_1:	@ 0x082B14A4
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 60
	.byte	VOL	, v127
	.byte	LFOS	, 60
	.byte	BENDR	, 15
	.byte	MOD	, 9
	.byte	PAN	, c_v
	.byte	MODT	, 0
	.byte		N02	, Fs3, v127
	.byte	W02
	.byte		N01	, Fn4
	.byte	W02
	.byte		N21	, Bn3
	.byte	W21
	.byte	FINE
    
	mAlignWord
	.global song563
song563:	@ 0x082B14C4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	40		@ priority
	.byte	128		@ reverb

	mAlignWord
	mPtr	voicegroup003		@ voicegroup/tone

	mPtr	song563_1		@ track

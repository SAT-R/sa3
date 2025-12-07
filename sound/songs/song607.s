	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song607_1
song607_1:	@ 0x082B1E98
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 35
	.byte	VOL	, v090
	.byte	BENDR	, 6
	.byte	LFOS	, 13
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	MOD	, 41
	.byte	PAN	, c_v
	.byte		N04	, Fs3, v076
	.byte	W24
	.byte		N04	
	.byte	W24
	.byte		N04	
	.byte	W24
	.byte		N04	
	.byte	W24
song607_1_1:
	.byte	MOD	, 41
	.byte		N04	, Fs3, v076
	.byte	W24
	.byte		N04	
	.byte	W24
	.byte		N04	
	.byte	W24
	.byte		N04	
	.byte	W23
	.byte	GOTO	
		mPtr	song607_1_1
	.byte	FINE
    
	mAlignWord
	.global song607
song607:	@ 0x082B1EC8
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	mAlignWord
	mPtr	voicegroup003		@ voicegroup/tone

	mPtr	song607_1		@ track

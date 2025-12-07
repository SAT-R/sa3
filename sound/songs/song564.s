	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song564_1
song564_1:	@ 0x082B14D0
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 31
	.byte	VOL	, v090
	.byte	LFOS	, 65
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 101
	.byte		N11	, En2, v127
	.byte	W03
	.byte			Fs2
	.byte	W03
	.byte			Gs2
	.byte	W03
	.byte			As2
	.byte	W03
	.byte		N20	, Bn2
	.byte	W20
	.byte	FINE
    
	mAlignWord
	.global song564
song564:	@ 0x082B14F0
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	mPtr	voicegroup003		@ voicegroup/tone

	mPtr	song564_1		@ track

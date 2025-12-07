	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song572_1
song572_1:	@ 0x082B1700
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 23
	.byte	VOL	, v120
	.byte	LFOS	, 63
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 127
	.byte		N19	, Fs1, v127
	.byte	W20
	.byte			Fs1, v080
	.byte	W19
	.byte	FINE

	@********************** Track  2 **********************@

	.global song572_2
song572_2:	@ 0x082B171A
	.byte	KEYSH	, 0
	.byte	VOICE	, 31
	.byte	VOL	, v090
	.byte	LFOS	, 44
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 26
	.byte		N03	, Fs2, v127
	.byte	W28
	.byte			Fs2, v088
	.byte	W28
	.byte			Fs2, v076
	.byte	W03
	.byte	FINE
    
	mAlignWord
	.global song572
song572:	@ 0x082B1738
	.byte	2		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	mPtr	voicegroup003		@ voicegroup/tone

	mPtr	song572_1		@ track
	mPtr	song572_2		@ track

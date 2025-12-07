	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song574_1
song574_1:	@ 0x082B1770
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 42
	.byte	VOL	, v090
	.byte	LFOS	, 127
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 8
	.byte		N68	, Fn5, v112
	.byte	W68
	.byte	W03
	.byte	FINE
    
	mAlignWord
	.global song574
song574:	@ 0x082B1788
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	mPtr	voicegroup003		@ voicegroup/tone

	mPtr	song574_1		@ track

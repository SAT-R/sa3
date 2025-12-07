	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song520_1
song520_1:	@ 0x082B09F0
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 20
	.byte	VOL	, v120
	.byte	LFOS	, 21
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 3
	.byte		N03	, An6, v127
	.byte	W04
	.byte		N13	, Ds7
	.byte	W14
	.byte		N03	, An6, v056
	.byte	W04
	.byte		N60	, Ds7
	.byte	W64
	.byte	FINE
    
	mAlignWord
	.global song520
song520:	@ 0x082B0A14
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	mPtr	voicegroup003		@ voicegroup/tone

	mPtr	song520_1		@ track

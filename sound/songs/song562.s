	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song562_1
song562_1:	@ 0x082B1478
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 30
	.byte	VOL	, v120
	.byte	LFOS	, 127
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 111
	.byte		N11	, Fn2, v127
	.byte	W12
	.byte		N06	, En3, v088
	.byte	W18
	.byte		N36	, En3, v040
	.byte	W36
	.byte	FINE
    
	mAlignWord
	.global song562
song562:	@ 0x082B1498
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	mPtr	voicegroup003		@ voicegroup/tone

	mPtr	song562_1		@ track

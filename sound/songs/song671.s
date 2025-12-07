	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song671_1
song671_1:	@ 0x082B2508
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 34
	.byte	VOL	, v103
	.byte	LFOS	, 96
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 4
	.byte		N03	, Cn3, v020
	.byte	W03
	.byte			En3, v040
	.byte	W03
	.byte			An3, v060
	.byte	W03
	.byte			En4, v080
	.byte	W03
	.byte			Bn4, v100
	.byte	W03
	.byte		N12	, Gn5, v120
	.byte	W12
	.byte		N42	, An4, v127
	.byte	W42
	.byte	FINE
    
	mAlignWord
	.global song671
song671:	@ 0x082B2534
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	mPtr	voicegroup003		@ voicegroup/tone

	mPtr	song671_1		@ track

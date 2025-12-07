	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song606_1
song606_1:	@ 0x082B1E68
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 57
	.byte	VOL	, v120
	.byte	LFOS	, 127
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 0
	.byte		TIE	, Fn3, v127
	.byte	W06
song606_1_1:
	.byte	W90
	.byte	W72
	.byte	GOTO	
		mPtr	song606_1_1
	.byte	W18
	.byte		EOT	, Fn3
	.byte	FINE
    
	mAlignWord
	.global song606
song606:	@ 0x082B1E8C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	mPtr	voicegroup003		@ voicegroup/tone

	mPtr	song606_1		@ track

	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song152_1
song152_1:	@ 0x082AFA14
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 64
	.byte	VOL	, v090
	.byte	LFOS	, 15
	.byte	BENDR	, 15
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 0
	.byte		N05	, Cn5, v127
	.byte	W05
	.byte		N24	, An4
	.byte	W24
	.byte	W01
	.byte	FINE
    
	mAlignWord
	.global song152
song152:	@ 0x082AFA30
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	mPtr	voicegroup000		@ voicegroup/tone

	mPtr	song152_1		@ track

	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song585_1
song585_1:	@ 0x082B1A50
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 47
	.byte	VOL	, v120
	.byte	BENDR	, 24
	.byte	LFOS	, 6
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 127
	.byte		N12	, Gn3, v064
	.byte	W01
	.byte	BEND	, c_v
	.byte	W06
	.byte		c_v+60
	.byte	W05
	.byte	FINE
    
	mAlignWord
	.global song585
song585:	@ 0x082B1A6C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	.word	voicegroup003		@ voicegroup/tone

	.word	song585_1		@ track

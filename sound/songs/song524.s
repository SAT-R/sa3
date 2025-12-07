	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song524_1
song524_1:	@ 0x082B0AF0
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 22
	.byte	VOL	, v120
	.byte	BENDR	, 30
	.byte	LFOS	, 49
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	BEND	, c_v
	.byte		N03	, An5, v064
	.byte	W01
	.byte	BEND	, c_v-16
	.byte	W01
	.byte		c_v-32
	.byte	W01
	.byte		c_v-48
	.byte	W03
	.byte	MOD	, 9
	.byte		N01	, Bn3, v127
	.byte	W01
	.byte	BEND	, c_v+2
	.byte	W01
	.byte		c_v+5
	.byte	W01
	.byte		c_v+9
	.byte	W01
	.byte		c_v+13
	.byte	W01
	.byte		c_v+17
	.byte	W01
	.byte		c_v+21
	.byte	W01
	.byte		c_v+24
	.byte	W01
	.byte		c_v+3
	.byte	FINE
    
	mAlignWord
	.global song524
song524:	@ 0x082B0B24
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	.word	voicegroup003		@ voicegroup/tone

	.word	song524_1		@ track

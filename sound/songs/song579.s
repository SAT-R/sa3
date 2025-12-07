	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song579_1
song579_1:	@ 0x082B1930
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 43
	.byte	VOL	, v120
	.byte	BENDR	, 22
	.byte	LFOS	, 42
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 5
	.byte		TIE	, Gn3, v092
	.byte	W12
	.byte	BEND	, c_v+1
	.byte	W12
	.byte		c_v+2
	.byte	W12
	.byte		c_v+3
	.byte	W12
	.byte		c_v+4
	.byte	W12
	.byte		c_v+5
	.byte	W12
	.byte		c_v+6
	.byte	W12
	.byte		c_v+7
	.byte	W12
	.byte		c_v+8
	.byte	W12
	.byte		c_v+9
	.byte	W12
	.byte		c_v+10
	.byte	W12
	.byte		c_v+11
	.byte	W12
	.byte		c_v+12
	.byte	W12
	.byte		c_v+13
	.byte	W36
song579_1_1:
	.byte	W72
	.byte	GOTO	
		.word	song579_1_1
	.byte	W19
	.byte		EOT	, Gn3
	.byte	FINE
    
	mAlignWord
	.global song579
song579:	@ 0x082B1970
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	.word	voicegroup003		@ voicegroup/tone

	.word	song579_1		@ track

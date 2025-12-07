	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song222_1
song222_1:	@ 0x082AFF14
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 22
	.byte	VOL	, v100
	.byte	MOD	, 6
	.byte	BENDR	, 12
	.byte	LFOS	, 103
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	BEND	, c_v-60
	.byte		TIE	, An3, v127
	.byte	W01
	.byte	BEND	, c_v-50
	.byte	W01
	.byte		c_v-40
	.byte	W01
	.byte		c_v-30
	.byte	W03
	.byte		c_v+1
	.byte	W03
	.byte		c_v+32
	.byte	W15
song222_1_1:
	.byte	W72
	.byte	W24
	.byte	GOTO	
		.word	song222_1_1
	.byte	W64
	.byte	W01
	.byte		EOT	, An3
	.byte	W01
	.byte	FINE
    
	mAlignWord
	.global song222
song222:	@ 0x082AFF44
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	.word	voicegroup002		@ voicegroup/tone

	.word	song222_1		@ track

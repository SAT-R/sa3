	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song158_1
song158_1:	@ 0x082AFC88
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 36
	.byte	VOL	, v090
	.byte	LFOS	, 2
	.byte	BENDR	, 4
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 0
	.byte	BEND	, c_v-64
	.byte		N06	, Bn3, v127
	.byte	W02
	.byte	BEND	, c_v-53
	.byte	W01
	.byte		c_v-41
	.byte	W01
	.byte		c_v-30
	.byte	W01
	.byte		c_v-18
	.byte	W01
	.byte		c_v-7
	.byte	W01
	.byte		c_v+5
	.byte	W01
	.byte		c_v+16
	.byte	W01
	.byte		c_v+28
	.byte	W01
	.byte		c_v+39
	.byte	W01
	.byte		c_v+51
	.byte	W01
	.byte		c_v-64
	.byte		N06	, Fs4
	.byte	W01
	.byte	BEND	, c_v-53
	.byte	W01
	.byte		c_v-41
	.byte	W01
	.byte		c_v-30
	.byte	W01
	.byte		c_v-18
	.byte	W01
	.byte		c_v-7
	.byte	W01
	.byte		c_v+5
	.byte	W01
	.byte		c_v+16
	.byte	W01
	.byte		c_v+28
	.byte	W01
	.byte		c_v+39
	.byte	W01
	.byte		c_v+51
	.byte	FINE
    
	mAlignWord
	.global song158
song158:	@ 0x082AFCD0
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	mPtr	voicegroup000		@ voicegroup/tone

	mPtr	song158_1		@ track

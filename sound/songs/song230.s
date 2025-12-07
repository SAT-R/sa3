	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song230_1
song230_1:	@ 0x082B00FC
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 30
	.byte	VOL	, v100
	.byte	BENDR	, 18
	.byte	LFOS	, 30
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 5
	.byte	BEND	, c_v+63
	.byte		N30	, Cn3, v127
	.byte	W01
	.byte	VOL	, v100
	.byte	BEND	, c_v+32
	.byte	W01
	.byte	VOL	, v100
	.byte	BEND	, c_v
	.byte	W01
	.byte	VOL	, v100
	.byte	BEND	, c_v-32
	.byte	W01
	.byte	VOL	, v096
	.byte	BEND	, c_v-64
	.byte	W01
	.byte	VOL	, v092
	.byte	BEND	, c_v-33
	.byte	W01
	.byte	VOL	, v087
	.byte	BEND	, c_v-1
	.byte	W01
	.byte	VOL	, v083
	.byte	BEND	, c_v+31
	.byte	W01
	.byte	VOL	, v079
	.byte	BEND	, c_v+63
	.byte	W01
	.byte	VOL	, v074
	.byte	BEND	, c_v+56
	.byte	W01
	.byte	VOL	, v070
	.byte	BEND	, c_v+49
	.byte	W01
	.byte	VOL	, v066
	.byte	BEND	, c_v+42
	.byte	W01
	.byte	VOL	, v062
	.byte	BEND	, c_v+35
	.byte	W01
	.byte	VOL	, v058
	.byte	BEND	, c_v+28
	.byte	W01
	.byte	VOL	, v054
	.byte	BEND	, c_v+21
	.byte	W01
	.byte	VOL	, v049
	.byte	BEND	, c_v+14
	.byte	W01
	.byte	VOL	, v045
	.byte	BEND	, c_v+7
	.byte	W01
	.byte	VOL	, v041
	.byte	BEND	, c_v
	.byte	W01
	.byte	VOL	, v037
	.byte	BEND	, c_v-7
	.byte	W01
	.byte	VOL	, v033
	.byte	BEND	, c_v-14
	.byte	W01
	.byte	VOL	, v024
	.byte	BEND	, c_v-21
	.byte	W01
	.byte	VOL	, v018
	.byte	BEND	, c_v-28
	.byte	W01
	.byte	VOL	, v012
	.byte	BEND	, c_v-35
	.byte	W01
	.byte	VOL	, v006
	.byte	BEND	, c_v-42
	.byte	W01
	.byte	VOL	, v000
	.byte	BEND	, c_v-49
	.byte	W01
	.byte		c_v-56
	.byte	W01
	.byte		c_v-64
	.byte	W05
	.byte	FINE
    
	mAlignWord
	.global song230
song230:	@ 0x082B0194
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	205		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	.word	voicegroup002		@ voicegroup/tone

	.word	song230_1		@ track

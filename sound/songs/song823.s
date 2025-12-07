	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song823_1
song823_1:	@ 0x082B457C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 37
	.byte	VOICE	, 16
	.byte	VOL	, v118
	.byte	LFOS	, 48
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 46
	.byte	BEND	, c_v+63
	.byte		N48	, Ds2, v104
	.byte	W01
	.byte	VOL	, v115
	.byte	W01
	.byte		v112
	.byte	W01
	.byte		v109
	.byte	BEND	, c_v-46
	.byte	W01
	.byte	VOL	, v107
	.byte	W01
	.byte		v104
	.byte	W01
	.byte		v102
	.byte	BEND	, c_v-42
	.byte	W01
	.byte	VOL	, v099
	.byte	W01
	.byte		v096
	.byte	W01
	.byte		v094
	.byte	BEND	, c_v-33
	.byte	W01
	.byte	VOL	, v091
	.byte	W01
	.byte		v088
	.byte	W01
	.byte		v085
	.byte	BEND	, c_v-24
	.byte	W01
	.byte	VOL	, v083
	.byte	W01
	.byte		v081
	.byte	W01
	.byte		v078
	.byte	BEND	, c_v-6
	.byte	W01
	.byte	VOL	, v075
	.byte	W01
	.byte		v072
	.byte	W01
	.byte		v070
	.byte	BEND	, c_v+26
	.byte	W01
	.byte	VOL	, v068
	.byte	W01
	.byte		v065
	.byte	W01
	.byte		v062
	.byte	BEND	, c_v+53
	.byte	W01
	.byte	VOL	, v059
	.byte	W01
	.byte		v057
	.byte	W01
	.byte		v054
	.byte	W01
	.byte		v051
	.byte	W01
	.byte		v049
	.byte	W01
	.byte		v042
	.byte	W01
	.byte		v041
	.byte	W01
	.byte		v040
	.byte	W01
	.byte		v038
	.byte	W01
	.byte		v037
	.byte	W01
	.byte		v036
	.byte	W01
	.byte		v034
	.byte	W01
	.byte		v034
	.byte	W01
	.byte		v033
	.byte	W01
	.byte		v031
	.byte	W01
	.byte		v030
	.byte	W01
	.byte		v028
	.byte	W01
	.byte		v027
	.byte	W01
	.byte		v026
	.byte	W01
	.byte		v024
	.byte	W01
	.byte		v023
	.byte	W01
	.byte		v022
	.byte	W01
	.byte		v020
	.byte	W01
	.byte		v019
	.byte	W01
	.byte		v018
	.byte	W01
	.byte		v017
	.byte	W01
	.byte		v016
	.byte	W01
	.byte		v014
	.byte	W01
	.byte		v013
	.byte	W01
	.byte		v012
	.byte	W01
	.byte		v010
	.byte	W01
	.byte		v009
	.byte	W01
	.byte		v008
	.byte	W01
	.byte		v006
	.byte	W01
	.byte		v005
	.byte	FINE
    
	mAlignWord
	.global song823
song823:	@ 0x082B4618
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	.word	voicegroup027		@ voicegroup/tone

	.word	song823_1		@ track

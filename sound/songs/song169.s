	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song169_1
song169_1:	@ 0x082AFCDC
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 99
	.byte	VOL	, v088
	.byte	LFOS	, 43
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 48
	.byte	BEND	, c_v-64
	.byte		N48	, Cn4, v127
	.byte	W01
	.byte	VOL	, v086
	.byte	BEND	, c_v-56
	.byte	W01
	.byte	VOL	, v084
	.byte	BEND	, c_v-48
	.byte	W01
	.byte	VOL	, v082
	.byte	BEND	, c_v-39
	.byte	W01
	.byte	VOL	, v080
	.byte	BEND	, c_v-31
	.byte	W01
	.byte	VOL	, v080
	.byte	BEND	, c_v-22
	.byte	W01
	.byte	VOL	, v076
	.byte	BEND	, c_v-14
	.byte	W01
	.byte	VOL	, v074
	.byte	BEND	, c_v-5
	.byte	W01
	.byte	VOL	, v072
	.byte	BEND	, c_v+3
	.byte	W01
	.byte	VOL	, v070
	.byte	BEND	, c_v+12
	.byte	W01
	.byte	VOL	, v068
	.byte	BEND	, c_v+20
	.byte	W01
	.byte	VOL	, v066
	.byte	BEND	, c_v+29
	.byte	W01
	.byte	VOL	, v064
	.byte	BEND	, c_v+37
	.byte	W01
	.byte	VOL	, v062
	.byte	W01
	.byte		v060
	.byte	W01
	.byte		v058
	.byte	W01
	.byte		v056
	.byte	W01
	.byte		v054
	.byte	W01
	.byte		v053
	.byte	W01
	.byte		v051
	.byte	W01
	.byte		v048
	.byte	W01
	.byte		v046
	.byte	W01
	.byte		v044
	.byte	W01
	.byte		v043
	.byte	W01
	.byte		v041
	.byte	W01
	.byte		v038
	.byte	W01
	.byte		v036
	.byte	W01
	.byte		v031
	.byte	W01
	.byte		v031
	.byte	W01
	.byte		v030
	.byte	W01
	.byte		v029
	.byte	W01
	.byte		v028
	.byte	W01
	.byte		v027
	.byte	W01
	.byte		v026
	.byte	W01
	.byte		v025
	.byte	W01
	.byte		v024
	.byte	W01
	.byte		v023
	.byte	W01
	.byte		v022
	.byte	W01
	.byte		v021
	.byte	W01
	.byte		v020
	.byte	W01
	.byte		v019
	.byte	W01
	.byte		v018
	.byte	W01
	.byte		v017
	.byte	W01
	.byte		v017
	.byte	W01
	.byte		v015
	.byte	W01
	.byte		v014
	.byte	W01
	.byte		v014
	.byte	W01
	.byte		v012
	.byte	W01
	.byte		v012
	.byte	W01
	.byte		v010
	.byte	W01
	.byte		v009
	.byte	W01
	.byte		v009
	.byte	W01
	.byte		v007
	.byte	W01
	.byte		v007
	.byte	W01
	.byte		v006
	.byte	W01
	.byte		v004
	.byte	W01
	.byte		v004
	.byte	FINE
    
	mAlignWord
	.global song169
song169:	@ 0x082AFD88
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	.word	voicegroup002		@ voicegroup/tone

	.word	song169_1		@ track

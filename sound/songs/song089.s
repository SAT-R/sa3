	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song089_1
song089_1:	@ 0x082ADBE8
	.byte	KEYSH	, 0
	.byte	TEMPO	, 77
	.byte	VOICE	, 127
	.byte	VOL	, v080
	.byte	PAN	, c_v
	.byte	W12
	.byte		N06	, Gs7, v108
	.byte	W12
	.byte	W24
	.byte		N11	, Gn7
	.byte	W12
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte		N12	
	.byte	W36
	.byte	W12
	.byte		N44	, As4, v120
	.byte		N18	, Gn7, v108
	.byte	W24
	.byte		N18	
	.byte	W24
	.byte			Gs7
	.byte	W12
	.byte	W12
	.byte		N11	, Gn7
	.byte	W12
	.byte		N10	, Gs7
	.byte	W10
	.byte	FINE

	@********************** Track  2 **********************@

	.global song089_2
song089_2:	@ 0x082ADC18
	.byte	KEYSH	, 0
	.byte	VOICE	, 125
	.byte	VOL	, v079
	.byte	PAN	, c_v
	.byte		N11	, Fs1, v108
	.byte		TIE	, Fs7
	.byte	W18
	.byte		N05	, Fs1
	.byte	W06
song089_2_1:
	.byte		N05	, Fs1, v108
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	
	.byte	W36
	.byte		N11	
	.byte	W24
	.byte	PEND
	.byte		N11	
	.byte	W12
	.byte		N18	
	.byte	W12
	.byte		EOT	, Fs7
	.byte	W24
	.byte		N11	, Fs1
	.byte	W18
	.byte		N05	
	.byte	W06
	.byte	PATT	
		.word	song089_2_1
	.byte		N11	, Fs1, v108
	.byte	W12
	.byte		N18	
	.byte	W24
	.byte		N11	
	.byte	W06
	.byte		TIE	, Fs7
	.byte	W06
	.byte		N11	, Fs1
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W66
	.byte	W18
	.byte		EOT	, Fs7
	.byte	FINE

	@********************** Track  3 **********************@

	.global song089_3
song089_3:	@ 0x082ADC5F
	.byte	KEYSH	, 0
	.byte	VOICE	, 6
	.byte	VOL	, v080
	.byte	PAN	, c_v-30
	.byte	TUNE	, c_v+3
	.byte	BENDR	, 12
	.byte	W24
	.byte	W12
	.byte	BEND	, c_v
	.byte		N03	, An4, v084
	.byte	W06
	.byte			An4, v036
	.byte	W06
	.byte			En4, v064
	.byte	W06
	.byte			En4, v016
	.byte	W06
	.byte			Dn4, v044
	.byte	W06
	.byte			Dn4, v012
	.byte	W06
	.byte			Cs4, v076
	.byte	W06
	.byte			Cs4, v040
	.byte	W18
	.byte	W12
	.byte			An4, v084
	.byte	W06
	.byte			An4, v036
	.byte	W06
	.byte			Bn4, v084
	.byte	W06
	.byte			Bn4, v036
	.byte	W06
	.byte			Cs5, v084
	.byte	W06
	.byte			Dn5, v092
	.byte	W06
	.byte			Cs5, v076
	.byte	W06
	.byte			An4, v056
	.byte	W06
	.byte			Bn4, v076
	.byte	W06
	.byte			En4, v056
	.byte	W06
	.byte			En4, v032
	.byte	W06
	.byte			An4, v076
	.byte	W06
	.byte			Gn4, v084
	.byte	W06
	.byte			Gn4, v036
	.byte	W06
	.byte			Gn4, v028
	.byte	W06
	.byte			Gn4, v016
	.byte	W06
	.byte			Gn4, v008
	.byte	W12
	.byte			Fn4, v056
	.byte	W06
	.byte			Fn4, v036
	.byte	W06
	.byte			Fn4, v028
	.byte	W06
	.byte			Fn4, v016
	.byte	W06
	.byte			Fn4, v008
	.byte	W24
	.byte			En4, v084
	.byte	W06
	.byte			En4, v036
	.byte	W06
	.byte			En4, v028
	.byte	W06
	.byte			En4, v016
	.byte	W06
	.byte			Dn4, v056
	.byte	W06
	.byte			Dn4, v036
	.byte	W06
	.byte			Dn4, v028
	.byte	W06
	.byte			Dn4, v016
	.byte	W06
	.byte			Dn4, v008
	.byte	W12
	.byte			An4, v056
	.byte	W06
	.byte			An4, v036
	.byte	W06
	.byte			An4, v032
	.byte	W06
	.byte			An4, v020
	.byte	W06
	.byte			An4, v016
	.byte	W06
	.byte			An4, v036
	.byte	W06
	.byte			An4, v032
	.byte	W06
	.byte			An4, v020
	.byte	W06
	.byte			An4, v052
	.byte	W06
	.byte			An4, v020
	.byte	W06
	.byte			An4, v004
	.byte	W06
	.byte			An4, v020
	.byte	W06
	.byte			An4, v016
	.byte	W06
	.byte			An4, v036
	.byte	W06
	.byte			An4, v032
	.byte	W06
	.byte			An4, v020
	.byte	W06
	.byte			An4, v016
	.byte	W06
	.byte			An4, v012
	.byte	W03
	.byte	FINE

	@********************** Track  4 **********************@

	.global song089_4
song089_4:	@ 0x082ADD1D
	.byte	KEYSH	, 0
	.byte	VOICE	, 26
	.byte	VOL	, v080
	.byte	PAN	, c_v-4
	.byte	TUNE	, c_v-4
	.byte	BENDR	, 12
	.byte	W24
	.byte	W12
	.byte		N32	, An2, v112
	.byte	W36
	.byte		N23	, Bn2
	.byte	W24
	.byte		N11	, Cs3
	.byte	W12
	.byte		N23	, En3
	.byte	W24
	.byte			Fs3
	.byte	W24
	.byte			Gs3
	.byte	W12
	.byte	W12
	.byte		N32	, An3
	.byte	W36
	.byte		N23	, Gn3
	.byte	W24
	.byte		N11	, Fn3
	.byte	W12
	.byte		N32	, En3
	.byte	W36
	.byte			Dn3
	.byte	W24
	.byte	W12
	.byte		TIE	, An3
	.byte	W60
	.byte	W60
	.byte	W02
	.byte		EOT	
	.byte	FINE

	@********************** Track  5 **********************@

	.global song089_5
song089_5:	@ 0x082ADD53
	.byte	KEYSH	, 0
	.byte	VOICE	, 1
	.byte	VOL	, v069
	.byte	PAN	, c_v+56
	.byte	W24
	.byte	W12
	.byte		N32	, Gn3, v096
	.byte	W36
	.byte		N23	, An3, v084
	.byte	W24
	.byte		N11	, Bn3, v076
	.byte	W12
	.byte		N23	, Dn4, v080
	.byte	W24
	.byte			En4, v088
	.byte	W24
	.byte			Fs4, v084
	.byte	W12
	.byte	W12
	.byte		N32	, Gn4, v080
	.byte	W36
	.byte		N23	, Fn4, v076
	.byte	W24
	.byte		N11	, Ds4, v060
	.byte	W12
	.byte		N32	, Dn4, v080
	.byte	W36
	.byte			Cn4
	.byte	W24
	.byte	W12
	.byte		TIE	, Bn3, v072
	.byte	W60
	.byte	W60
	.byte	W02
	.byte		EOT	
	.byte	FINE

	@********************** Track  6 **********************@

	.global song089_6
song089_6:	@ 0x082ADD8F
	.byte	KEYSH	, 0
	.byte	VOICE	, 107
	.byte	VOL	, v080
	.byte	PAN	, c_v
	.byte	W24
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W12
	.byte		TIE	, An3, v108
	.byte		TIE	, En4, v104
	.byte	W60
	.byte	W60
	.byte	W01
	.byte		EOT	, An3
	.byte			En4
	.byte	FINE

	@********************** Track  7 **********************@

	.global song089_7
song089_7:	@ 0x082ADDAA
	.byte	KEYSH	, 0
	.byte	VOICE	, 3
	.byte	VOL	, v075
	.byte	PAN	, c_v
	.byte	W24
	.byte	W12
	.byte		N30	, An1, v100
	.byte	W36
	.byte		N36	, En2
	.byte	W24
	.byte	W12
	.byte		N12	, Cs2
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Cs3
	.byte	W24
	.byte			En2
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			An1
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			En2
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			En2
	.byte	W12
	.byte		N30	, An1
	.byte	W36
	.byte		N84	
	.byte	W24
	.byte	W60
	.byte	FINE

	@********************** Track  8 **********************@

	.global song089_8
song089_8:	@ 0x082ADDE6
	.byte	KEYSH	, 0
	.byte	VOICE	, 31
	.byte	VOL	, v044
	.byte	PAN	, c_v
	.byte	TUNE	, c_v+3
	.byte	BENDR	, 12
	.byte	W24
	.byte	W12
	.byte		N04	, An5, v096
	.byte	W06
	.byte			An5, v048
	.byte	W06
	.byte			En5, v076
	.byte	W06
	.byte			En5, v028
	.byte	W06
	.byte			Dn5, v056
	.byte	W06
	.byte			Dn5, v020
	.byte	W06
	.byte			Cs5, v064
	.byte	W06
	.byte			Cs5, v032
	.byte	W18
	.byte	W12
	.byte		N02	, An5, v084
	.byte	W06
	.byte		N03	, An5, v036
	.byte	W06
	.byte		N02	, Bn5, v084
	.byte	W06
	.byte		N03	, Bn5, v036
	.byte	W06
	.byte			Cs6, v084
	.byte	W06
	.byte			Dn6, v092
	.byte	W06
	.byte			Cs6, v076
	.byte	W06
	.byte			An5, v056
	.byte	W06
	.byte			Bn5, v076
	.byte	W06
	.byte		N02	, En5, v056
	.byte	W06
	.byte		N03	, En5, v032
	.byte	W06
	.byte			An5, v076
	.byte	W06
	.byte		N02	, Gn5, v084
	.byte	W06
	.byte			Gn5, v036
	.byte	W06
	.byte			Gn5, v028
	.byte	W06
	.byte			Gn5, v016
	.byte	W06
	.byte		N03	, Gn5, v008
	.byte	W12
	.byte		N02	, Fn5, v056
	.byte	W06
	.byte			Fn5, v036
	.byte	W06
	.byte			Fn5, v028
	.byte	W06
	.byte			Fn5, v016
	.byte	W06
	.byte		N03	, Fn5, v008
	.byte	W24
	.byte		N02	, En5, v084
	.byte	W06
	.byte			En5, v036
	.byte	W06
	.byte			En5, v028
	.byte	W06
	.byte			En5, v016
	.byte	W06
	.byte			Dn5, v056
	.byte	W06
	.byte			Dn5, v036
	.byte	W06
	.byte			Dn5, v028
	.byte	W06
	.byte			Dn5, v016
	.byte	W06
	.byte		N03	, Dn5, v008
	.byte	W12
	.byte			An5, v056
	.byte	W06
	.byte			An5, v036
	.byte	W06
	.byte			An5, v032
	.byte	W06
	.byte			An5, v020
	.byte	W06
	.byte			An5, v016
	.byte	W06
	.byte			An5, v036
	.byte	W06
	.byte			An5, v032
	.byte	W06
	.byte			An5, v020
	.byte	W06
	.byte			An5, v052
	.byte	W06
	.byte			An5, v020
	.byte	W06
	.byte			An5, v004
	.byte	W06
	.byte			An5, v020
	.byte	W06
	.byte			An5, v016
	.byte	W06
	.byte			An5, v036
	.byte	W06
	.byte			An5, v032
	.byte	W06
	.byte			An5, v020
	.byte	W06
	.byte			An5, v016
	.byte	W06
	.byte			An5, v012
	.byte	W03
	.byte	FINE

	@********************** Track  9 **********************@

	.global song089_9
song089_9:	@ 0x082ADEAE
	.byte	KEYSH	, 0
	.byte	VOICE	, 5
	.byte	VOL	, v050
	.byte	PAN	, c_v
	.byte	W24
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W12
	.byte		N04	, En3, v048
	.byte	W04
	.byte			En3, v052
	.byte	W04
	.byte			En3, v056
	.byte	W04
	.byte			En3, v064
	.byte	W04
	.byte			En3, v080
	.byte	W04
	.byte			En3, v108
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte			En3, v100
	.byte	W04
	.byte			En3, v084
	.byte	W04
	.byte			En3, v072
	.byte	W04
	.byte			En3, v064
	.byte	W04
	.byte			En3, v052
	.byte	W04
	.byte			En3, v040
	.byte	W04
	.byte			En3, v032
	.byte	W04
	.byte			En3, v020
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte			En3, v024
	.byte	W04
	.byte			En3, v020
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte	FINE

	@********************** Track  10 **********************@

	.global song089_10
song089_10:	@ 0x082ADF0A
	.byte	KEYSH	, 0
	.byte	VOICE	, 89
	.byte	VOL	, v044
	.byte	PAN	, c_v
	.byte	W24
	.byte	W12
	.byte		N05	, Cn5, v096
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W30
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W30
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
song089_10_1:
	.byte		N05	, Cn5, v096
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song089_10_1
	.byte		N05	, Cn5, v096
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Cn5, v076
	.byte	W12
	.byte			Cn5, v096
	.byte	W05
	.byte	FINE

	@********************** Track  11 **********************@

	.global song089_11
song089_11:	@ 0x082ADF59
	.byte	KEYSH	, 0
	.byte	VOICE	, 63
	.byte	VOL	, v078
	.byte	PAN	, c_v-14
	.byte	W24
	.byte	W12
	.byte		N23	, Ds3, v108
	.byte	W24
	.byte			Gn3
	.byte	W24
	.byte			As3
	.byte	W12
	.byte	W12
	.byte			Gn4
	.byte	W24
	.byte			As4
	.byte	W24
	.byte			Dn5
	.byte	W12
	.byte	W12
	.byte		N11	, Ds5
	.byte	W12
	.byte			As4
	.byte	W12
	.byte			Fs4
	.byte	W12
	.byte			Cs4
	.byte	W12
	.byte			Gs4
	.byte	W12
	.byte			Dn5
	.byte	W12
	.byte			Fn5
	.byte	W12
	.byte			As4
	.byte	W12
	.byte			Fn4
	.byte	W12
	.byte			As3
	.byte	W12
	.byte			Dn5
	.byte	W12
	.byte			Fn5
	.byte	W12
	.byte		N68	, Ds5
	.byte	W60
	.byte	W10
	.byte	FINE
    
	mAlignWord
	.global song089
song089:	@ 0x082ADF94
	.byte	11		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	.word	voicegroup016		@ voicegroup/tone

	.word	song089_1		@ track
	.word	song089_2		@ track
	.word	song089_3		@ track
	.word	song089_4		@ track
	.word	song089_5		@ track
	.word	song089_6		@ track
	.word	song089_7		@ track
	.word	song089_8		@ track
	.word	song089_9		@ track
	.word	song089_10		@ track
	.word	song089_11		@ track

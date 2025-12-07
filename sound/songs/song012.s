	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song012_1
song012_1:	@ 0x0826AAE8
	.byte	KEYSH	, 0
song012_1_5:
	.byte	TEMPO	, 60
	.byte	VOICE	, 21
	.byte	VOL	, v063
	.byte	PAN	, c_v-30
	.byte		N06	, Ds3, v024
	.byte	W18
	.byte			Ds3, v056
	.byte	W18
	.byte			Ds3, v096
	.byte	W18
	.byte			Ds3, v056
	.byte	W18
	.byte			Ds3, v024
	.byte	W24
	.byte	W96
	.byte	W06
	.byte			En3, v056
	.byte	W18
	.byte			En3, v024
	.byte	W18
	.byte			En3, v056
	.byte	W18
	.byte			En3, v096
	.byte	W18
	.byte			En3, v056
	.byte	W18
	.byte	W96
	.byte			Cn3, v024
	.byte	W18
	.byte			Cn3, v056
	.byte	W18
	.byte			Cn3, v096
	.byte	W18
	.byte			Cn3, v056
	.byte	W18
	.byte			Cn3, v024
	.byte	W24
	.byte	W96
	.byte	W06
	.byte			Cn3, v056
	.byte	W18
	.byte			Cn3, v024
	.byte	W18
	.byte			Cn3, v056
	.byte	W18
	.byte			Cn3, v096
	.byte	W18
	.byte			Cn3, v056
	.byte	W18
	.byte	W96
song012_1_1:
	.byte		N06	, An3, v024
	.byte	W18
	.byte			An3, v056
	.byte	W18
	.byte			An3, v096
	.byte	W18
	.byte			An3, v056
	.byte	W18
	.byte			An3, v024
	.byte	W24
	.byte	PEND
song012_1_2:
	.byte		N06	, Gs3, v024
	.byte	W18
	.byte			Gs3, v056
	.byte	W18
	.byte			Gs3, v096
	.byte	W18
	.byte			Gs3, v056
	.byte	W18
	.byte			Gs3, v024
	.byte	W24
	.byte	PEND
song012_1_3:
	.byte	W06
	.byte		N06	, Gn3, v056
	.byte	W18
	.byte			Gn3, v024
	.byte	W18
	.byte			Gn3, v056
	.byte	W18
	.byte			Gn3, v096
	.byte	W18
	.byte			Gn3, v056
	.byte	W18
	.byte	PEND
song012_1_4:
	.byte	W06
	.byte		N06	, Fs3, v056
	.byte	W18
	.byte			Fs3, v024
	.byte	W18
	.byte			Fs3, v056
	.byte	W18
	.byte			Fs3, v096
	.byte	W18
	.byte			Fs3, v056
	.byte	W18
	.byte	PEND
	.byte	PATT	
		mPtr	song012_1_1
	.byte	PATT	
		mPtr	song012_1_2
	.byte	PATT	
		mPtr	song012_1_3
	.byte	PATT	
		mPtr	song012_1_4
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		mPtr	song012_1_5
	.byte	FINE

	@********************** Track  2 **********************@

	.global song012_2
song012_2:	@ 0x0826AB99
	.byte	KEYSH	, 0
song012_2_2:
	.byte	VOICE	, 48
	.byte	VOL	, v063
	.byte	PAN	, c_v
	.byte	W12
	.byte		N05	, Gs3, v124
	.byte	W12
	.byte			Gs3, v044
	.byte	W12
	.byte			Gs3, v084
	.byte	W12
	.byte			Gs3, v044
	.byte	W12
	.byte			Gs3, v064
	.byte	W12
	.byte		N06	, Gs3, v024
	.byte	W24
	.byte	W12
	.byte		N05	, Gs3, v124
	.byte	W12
	.byte			Gs3, v044
	.byte	W12
	.byte			Bn3, v084
	.byte	W12
	.byte			Bn3, v044
	.byte	W12
	.byte			Gs3, v064
	.byte	W12
	.byte		N06	, Gs3, v024
	.byte	W12
	.byte		N05	, Bn3, v124
	.byte	W12
song012_2_1:
	.byte		N05	, Bn3, v044
	.byte	W12
	.byte			Bn3, v084
	.byte	W12
	.byte			Bn3, v044
	.byte	W12
	.byte			Bn3, v064
	.byte	W12
	.byte		N06	, Bn3, v024
	.byte	W48
	.byte	PEND
	.byte	W96
	.byte	W12
	.byte		N05	, Gs3, v124
	.byte	W12
	.byte			Gs3, v044
	.byte	W12
	.byte			Gs3, v084
	.byte	W12
	.byte			Gs3, v044
	.byte	W12
	.byte			Gs3, v064
	.byte	W12
	.byte		N06	, Gs3, v024
	.byte	W24
	.byte	W12
	.byte		N05	, Gs3, v124
	.byte	W12
	.byte			Gs3, v044
	.byte	W12
	.byte			Cn4, v084
	.byte	W12
	.byte			Cn4, v044
	.byte	W12
	.byte			Gs3, v064
	.byte	W12
	.byte		N06	, Gs3, v024
	.byte	W12
	.byte		N05	, Bn3, v124
	.byte	W12
	.byte	PATT	
		mPtr	song012_2_1
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W12
	.byte		N05	, Gs3, v124
	.byte	W12
	.byte			Gs3, v044
	.byte	W12
	.byte			Gs3, v084
	.byte	W12
	.byte			Gs3, v044
	.byte	W12
	.byte			Gs3, v064
	.byte	W12
	.byte			Fs3, v124
	.byte	W12
	.byte			Fs3, v064
	.byte	W12
	.byte			Fs3, v044
	.byte	W12
	.byte			Fs3, v084
	.byte	W12
	.byte			Fs3, v064
	.byte	W12
	.byte			Fs3, v044
	.byte	W12
	.byte		N06	, Fs3, v024
	.byte	W12
	.byte		N05	, Fs3, v044
	.byte	W12
	.byte			Fs3, v024
	.byte	W24
	.byte	W12
	.byte			Bn3, v124
	.byte	W12
	.byte			Bn3, v044
	.byte	W12
	.byte			Bn3, v084
	.byte	W12
	.byte			Bn3, v044
	.byte	W12
	.byte			Bn3, v064
	.byte	W12
	.byte			En3, v124
	.byte	W12
	.byte			En3, v044
	.byte	W12
	.byte			En3, v064
	.byte	W12
	.byte			En3, v044
	.byte	W12
	.byte			Ds3, v084
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Cs3, v044
	.byte	W12
	.byte			Cs3, v064
	.byte	W12
	.byte			Cs3, v044
	.byte	W12
	.byte		N06	, Cs3, v024
	.byte	W12
	.byte	GOTO	
		mPtr	song012_2_2
	.byte	FINE

	@********************** Track  3 **********************@

	.global song012_3
song012_3:	@ 0x0826AC80
	.byte	KEYSH	, 0
song012_3_5:
	.byte	VOICE	, 23
	.byte	VOL	, v037
	.byte	PAN	, c_v+30
	.byte		N03	, Ds3, v024
	.byte	W06
	.byte			En3, v044
	.byte	W06
	.byte			Fs3, v064
	.byte	W06
	.byte			As3, v084
	.byte	W06
	.byte			Gs3, v036
	.byte	W06
	.byte			As3, v056
	.byte	W06
	.byte			Bn3, v076
	.byte	W06
	.byte			Ds4, v096
	.byte	W06
	.byte			Fs4, v116
	.byte	W06
	.byte			En4, v096
	.byte	W06
	.byte			Ds4, v076
	.byte	W06
	.byte			En4, v096
	.byte	W06
	.byte			Ds4, v076
	.byte	W06
	.byte			Bn3, v056
	.byte	W06
	.byte			Gs3, v036
	.byte	W06
	.byte			Fs3, v016
	.byte	W06
	.byte			Ds3, v024
	.byte	W06
	.byte			En3, v044
	.byte	W06
	.byte			Fs3, v064
	.byte	W06
	.byte			As3, v084
	.byte	W06
	.byte			Gs3, v036
	.byte	W06
	.byte			As3, v056
	.byte	W06
	.byte			Bn3, v076
	.byte	W06
	.byte			Ds4, v096
	.byte	W06
	.byte			Fs4, v116
	.byte	W06
	.byte			En4, v096
	.byte	W06
	.byte			Ds4, v076
	.byte	W06
	.byte			En4, v096
	.byte	W06
	.byte			Ds4, v076
	.byte	W06
	.byte			Bn3, v056
	.byte	W06
	.byte			Gs3, v036
	.byte	W06
	.byte			Fs3, v016
	.byte	W06
song012_3_1:
	.byte		N03	, Dn3, v024
	.byte	W06
	.byte			En3, v044
	.byte	W06
	.byte			Fs3, v064
	.byte	W06
	.byte			An3, v084
	.byte	W06
	.byte			Gn3, v036
	.byte	W06
	.byte			An3, v056
	.byte	W06
	.byte			Bn3, v076
	.byte	W06
	.byte			Dn4, v096
	.byte	W06
	.byte			Fs4, v116
	.byte	W06
	.byte			En4, v096
	.byte	W06
	.byte			Dn4, v076
	.byte	W06
	.byte			En4, v096
	.byte	W06
	.byte			Dn4, v076
	.byte	W06
	.byte			Bn3, v056
	.byte	W06
	.byte			Gn3, v036
	.byte	W06
	.byte			En3, v016
	.byte	W06
	.byte	PEND
	.byte	PATT	
		mPtr	song012_3_1
song012_3_2:
	.byte		N03	, Gn3, v024
	.byte	W06
	.byte			Gs3, v044
	.byte	W06
	.byte			As3, v064
	.byte	W06
	.byte			Dn4, v084
	.byte	W06
	.byte			Cn4, v036
	.byte	W06
	.byte			Dn4, v056
	.byte	W06
	.byte			Ds4, v076
	.byte	W06
	.byte			Gn4, v096
	.byte	W06
	.byte			As4, v116
	.byte	W06
	.byte			Gs4, v096
	.byte	W06
	.byte			Gn4, v076
	.byte	W06
	.byte			Gs4, v096
	.byte	W06
	.byte			Gn4, v076
	.byte	W06
	.byte			Ds4, v056
	.byte	W06
	.byte			Cn4, v036
	.byte	W06
	.byte			As3, v016
	.byte	W06
	.byte	PEND
	.byte	PATT	
		mPtr	song012_3_2
song012_3_3:
	.byte		N03	, Fs3, v024
	.byte	W06
	.byte			Gs3, v044
	.byte	W06
	.byte			As3, v064
	.byte	W06
	.byte			Cs4, v084
	.byte	W06
	.byte			Bn3, v036
	.byte	W06
	.byte			Cs4, v056
	.byte	W06
	.byte			Ds4, v076
	.byte	W06
	.byte			Fs4, v096
	.byte	W06
	.byte			As4, v116
	.byte	W06
	.byte			Gs4, v096
	.byte	W06
	.byte			Fs4, v076
	.byte	W06
	.byte			Gs4, v096
	.byte	W06
	.byte			Fs4, v076
	.byte	W06
	.byte			Ds4, v056
	.byte	W06
	.byte			Bn3, v036
	.byte	W06
	.byte			Gs3, v016
	.byte	W06
	.byte	PEND
	.byte	PATT	
		mPtr	song012_3_3
	.byte		N03	, Gn3, v036
	.byte	W06
	.byte			An3, v056
	.byte	W06
	.byte			Bn3, v076
	.byte	W06
	.byte			Dn4, v096
	.byte	W06
	.byte			Cn4, v044
	.byte	W06
	.byte			Dn4, v064
	.byte	W06
	.byte			En4, v084
	.byte	W06
	.byte			Gn4, v104
	.byte	W06
	.byte			Bn4, v124
	.byte	W06
	.byte			An4, v104
	.byte	W06
	.byte			Gn4, v084
	.byte	W06
	.byte			An4, v104
	.byte	W06
	.byte			Gn4, v084
	.byte	W06
	.byte			En4, v064
	.byte	W06
	.byte			Cn4, v044
	.byte	W06
	.byte			Gn3, v036
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Gs3, v056
	.byte	W06
	.byte			Bn3, v076
	.byte	W06
	.byte			Ds4, v096
	.byte	W06
	.byte			Cs4, v044
	.byte	W06
	.byte			Ds4, v064
	.byte	W06
	.byte			En4, v084
	.byte	W06
	.byte			Gs4, v104
	.byte	W06
	.byte			Bn4, v124
	.byte	W06
	.byte			Gs4, v104
	.byte	W06
	.byte			Fs4, v084
	.byte	W06
	.byte			Gs4, v104
	.byte	W06
	.byte			Fs4, v084
	.byte	W06
	.byte			Ds4, v064
	.byte	W06
	.byte			Cs4, v044
	.byte	W06
	.byte			Gs3, v036
	.byte	W06
song012_3_4:
	.byte		N03	, Fs3, v036
	.byte	W06
	.byte			Gs3, v056
	.byte	W06
	.byte			As3, v076
	.byte	W06
	.byte			Cs4, v096
	.byte	W06
	.byte			As3, v044
	.byte	W06
	.byte			Cs4, v064
	.byte	W06
	.byte			Ds4, v084
	.byte	W06
	.byte			Fs4, v104
	.byte	W06
	.byte			As4, v124
	.byte	W06
	.byte			Gs4, v104
	.byte	W06
	.byte			Fs4, v084
	.byte	W06
	.byte			Gs4, v104
	.byte	W06
	.byte			Fs4, v084
	.byte	W06
	.byte			Ds4, v064
	.byte	W06
	.byte			As3, v044
	.byte	W06
	.byte			Fs3, v036
	.byte	W06
	.byte	PEND
	.byte		N03	
	.byte	W06
	.byte			Gs3, v056
	.byte	W06
	.byte			An3, v076
	.byte	W06
	.byte			Cn4, v096
	.byte	W06
	.byte			An3, v044
	.byte	W06
	.byte			Cn4, v064
	.byte	W06
	.byte			Ds4, v084
	.byte	W06
	.byte			Fs4, v104
	.byte	W06
	.byte			An4, v124
	.byte	W06
	.byte			Gs4, v104
	.byte	W06
	.byte			Fs4, v084
	.byte	W06
	.byte			Gs4, v104
	.byte	W06
	.byte			Fs4, v084
	.byte	W06
	.byte			Ds4, v064
	.byte	W06
	.byte			Cn4, v044
	.byte	W06
	.byte			An3, v036
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Gs3, v056
	.byte	W06
	.byte			Cn4, v076
	.byte	W06
	.byte			Ds4, v096
	.byte	W06
	.byte			Cn4, v044
	.byte	W06
	.byte			Ds4, v064
	.byte	W06
	.byte			Fn4, v084
	.byte	W06
	.byte			Gn4, v104
	.byte	W06
	.byte			As4, v124
	.byte	W06
	.byte			Gs4, v104
	.byte	W06
	.byte			Gn4, v084
	.byte	W06
	.byte			Gs4, v104
	.byte	W06
	.byte			Gn4, v084
	.byte	W06
	.byte			Ds4, v064
	.byte	W06
	.byte			Cn4, v044
	.byte	W06
	.byte			Gs3, v036
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			Gs3, v056
	.byte	W06
	.byte			Bn3, v076
	.byte	W06
	.byte			Dn4, v096
	.byte	W06
	.byte			Bn3, v044
	.byte	W06
	.byte			Dn4, v064
	.byte	W06
	.byte			Fn4, v084
	.byte	W06
	.byte			Gs4, v104
	.byte	W06
	.byte			Bn4, v124
	.byte	W06
	.byte			As4, v104
	.byte	W06
	.byte			Gs4, v084
	.byte	W06
	.byte			As4, v104
	.byte	W06
	.byte			Gs4, v084
	.byte	W06
	.byte			Fn4, v064
	.byte	W06
	.byte			Dn4, v044
	.byte	W06
	.byte			Gs3, v036
	.byte	W06
	.byte	PATT	
		mPtr	song012_3_4
	.byte		N03	, Fs3, v036
	.byte	W06
	.byte			Gs3, v056
	.byte	W06
	.byte			Cn4, v076
	.byte	W06
	.byte			Ds4, v096
	.byte	W06
	.byte			Cn4, v044
	.byte	W06
	.byte			Ds4, v064
	.byte	W06
	.byte			Fs4, v084
	.byte	W06
	.byte			Gs4, v104
	.byte	W06
	.byte			An4, v124
	.byte	W06
	.byte			Gs4, v104
	.byte	W06
	.byte			Fs4, v084
	.byte	W06
	.byte			Gs4, v104
	.byte	W06
	.byte			Fs4, v084
	.byte	W06
	.byte			Ds4, v064
	.byte	W06
	.byte			Cn4, v044
	.byte	W06
	.byte			An3, v036
	.byte	W06
	.byte		N05	, Bn4, v092
	.byte	W06
	.byte			Bn4, v072
	.byte	W06
	.byte			Bn4, v060
	.byte	W06
	.byte			Bn4, v048
	.byte	W06
	.byte			Bn4, v040
	.byte	W06
	.byte			Fs5, v104
	.byte	W06
	.byte			Fs5, v088
	.byte	W06
	.byte			Fs5, v072
	.byte	W06
	.byte			Fs5, v060
	.byte	W06
	.byte			Ds5, v088
	.byte	W06
	.byte			Ds5, v072
	.byte	W06
	.byte			Ds5, v060
	.byte	W06
	.byte			Ds5, v048
	.byte	W06
	.byte			Ds5, v040
	.byte	W06
	.byte			Bn4, v076
	.byte	W06
	.byte			Bn4, v064
	.byte	W06
	.byte			Bn4, v056
	.byte	W06
	.byte			Bn4, v044
	.byte	W06
	.byte			Bn4, v036
	.byte	W06
	.byte			Bn4, v024
	.byte	W12
	.byte			Fs5, v104
	.byte	W06
	.byte			Fs5, v088
	.byte	W06
	.byte			Fs5, v072
	.byte	W06
	.byte			Fs5, v060
	.byte	W06
	.byte			Ds5, v088
	.byte	W06
	.byte			Ds5, v072
	.byte	W06
	.byte			Ds5, v060
	.byte	W06
	.byte			Ds5, v048
	.byte	W06
	.byte			Ds5, v040
	.byte	W18
	.byte			As4, v092
	.byte	W06
	.byte			As4, v072
	.byte	W06
	.byte			As4, v060
	.byte	W06
	.byte			As4, v048
	.byte	W06
	.byte			As4, v040
	.byte	W06
	.byte			Fs5, v104
	.byte	W06
	.byte			Fs5, v088
	.byte	W06
	.byte			Fs5, v072
	.byte	W06
	.byte			Fs5, v060
	.byte	W06
	.byte			Ds5, v088
	.byte	W06
	.byte			Ds5, v072
	.byte	W06
	.byte			Ds5, v060
	.byte	W06
	.byte			Ds5, v048
	.byte	W06
	.byte			Ds5, v040
	.byte	W06
	.byte			Bn4, v076
	.byte	W06
	.byte			Bn4, v064
	.byte	W06
	.byte			Bn4, v056
	.byte	W06
	.byte			Bn4, v044
	.byte	W06
	.byte			Bn4, v036
	.byte	W06
	.byte			Bn4, v024
	.byte	W12
	.byte			Fs5, v104
	.byte	W06
	.byte			Fs5, v088
	.byte	W06
	.byte			Fs5, v072
	.byte	W06
	.byte			Fs5, v060
	.byte	W06
	.byte			Ds5, v088
	.byte	W06
	.byte			Ds5, v072
	.byte	W06
	.byte			Ds5, v060
	.byte	W06
	.byte			Bn4, v064
	.byte	W06
	.byte			Bn4, v056
	.byte	W06
	.byte			Bn4, v044
	.byte	W06
	.byte			Bn4, v036
	.byte	W06
	.byte	GOTO	
		mPtr	song012_3_5
	.byte	FINE

	@********************** Track  4 **********************@

	.global song012_4
song012_4:	@ 0x0826AF9E
	.byte	KEYSH	, 0
song012_4_5:
	.byte	W01
	.byte	VOICE	, 24
	.byte	VOL	, v029
	.byte	PAN	, c_v
	.byte	TUNE	, c_v-10
	.byte	W01
	.byte		N03	, Ds3, v024
	.byte	W06
	.byte			En3, v044
	.byte	W06
	.byte			Fs3, v064
	.byte	W06
	.byte			As3, v084
	.byte	W06
	.byte			Gs3, v036
	.byte	W06
	.byte			As3, v056
	.byte	W06
	.byte			Bn3, v076
	.byte	W06
	.byte			Ds4, v096
	.byte	W06
	.byte			Fs4, v116
	.byte	W06
	.byte			En4, v096
	.byte	W06
	.byte			Ds4, v076
	.byte	W06
	.byte			En4, v096
	.byte	W06
	.byte			Ds4, v076
	.byte	W06
	.byte			Bn3, v056
	.byte	W06
	.byte			Gs3, v036
	.byte	W06
	.byte			Fs3, v016
	.byte	W04
	.byte	W02
	.byte			Ds3, v024
	.byte	W06
	.byte			En3, v044
	.byte	W06
	.byte			Fs3, v064
	.byte	W06
	.byte			As3, v084
	.byte	W06
	.byte			Gs3, v036
	.byte	W06
	.byte			As3, v056
	.byte	W06
	.byte			Bn3, v076
	.byte	W06
	.byte			Ds4, v096
	.byte	W06
	.byte			Fs4, v116
	.byte	W06
	.byte			En4, v096
	.byte	W06
	.byte			Ds4, v076
	.byte	W06
	.byte			En4, v096
	.byte	W06
	.byte			Ds4, v076
	.byte	W06
	.byte			Bn3, v056
	.byte	W06
	.byte			Gs3, v036
	.byte	W06
	.byte			Fs3, v016
	.byte	W04
song012_4_1:
	.byte	W02
	.byte		N03	, Dn3, v024
	.byte	W06
	.byte			En3, v044
	.byte	W06
	.byte			Fs3, v064
	.byte	W06
	.byte			An3, v084
	.byte	W06
	.byte			Gn3, v036
	.byte	W06
	.byte			An3, v056
	.byte	W06
	.byte			Bn3, v076
	.byte	W06
	.byte			Dn4, v096
	.byte	W06
	.byte			Fs4, v116
	.byte	W06
	.byte			En4, v096
	.byte	W06
	.byte			Dn4, v076
	.byte	W06
	.byte			En4, v096
	.byte	W06
	.byte			Dn4, v076
	.byte	W06
	.byte			Bn3, v056
	.byte	W06
	.byte			Gn3, v036
	.byte	W06
	.byte			En3, v016
	.byte	W04
	.byte	PEND
	.byte	PATT	
		mPtr	song012_4_1
song012_4_2:
	.byte	W02
	.byte		N03	, Gn3, v024
	.byte	W06
	.byte			Gs3, v044
	.byte	W06
	.byte			As3, v064
	.byte	W06
	.byte			Dn4, v084
	.byte	W06
	.byte			Cn4, v036
	.byte	W06
	.byte			Dn4, v056
	.byte	W06
	.byte			Ds4, v076
	.byte	W06
	.byte			Gn4, v096
	.byte	W06
	.byte			As4, v116
	.byte	W06
	.byte			Gs4, v096
	.byte	W06
	.byte			Gn4, v076
	.byte	W06
	.byte			Gs4, v096
	.byte	W06
	.byte			Gn4, v076
	.byte	W06
	.byte			Ds4, v056
	.byte	W06
	.byte			Cn4, v036
	.byte	W06
	.byte			As3, v016
	.byte	W04
	.byte	PEND
	.byte	PATT	
		mPtr	song012_4_2
song012_4_3:
	.byte	W02
	.byte		N03	, Fs3, v024
	.byte	W06
	.byte			Gs3, v044
	.byte	W06
	.byte			As3, v064
	.byte	W06
	.byte			Cs4, v084
	.byte	W06
	.byte			Bn3, v036
	.byte	W06
	.byte			Cs4, v056
	.byte	W06
	.byte			Ds4, v076
	.byte	W06
	.byte			Fs4, v096
	.byte	W06
	.byte			As4, v116
	.byte	W06
	.byte			Gs4, v096
	.byte	W06
	.byte			Fs4, v076
	.byte	W06
	.byte			Gs4, v096
	.byte	W06
	.byte			Fs4, v076
	.byte	W06
	.byte			Ds4, v056
	.byte	W06
	.byte			Bn3, v036
	.byte	W06
	.byte			Gs3, v016
	.byte	W04
	.byte	PEND
	.byte	PATT	
		mPtr	song012_4_3
	.byte	W02
	.byte		N03	, Gn3, v036
	.byte	W06
	.byte			An3, v056
	.byte	W06
	.byte			Bn3, v076
	.byte	W06
	.byte			Dn4, v096
	.byte	W06
	.byte			Cn4, v044
	.byte	W06
	.byte			Dn4, v064
	.byte	W06
	.byte			En4, v084
	.byte	W06
	.byte			Gn4, v104
	.byte	W06
	.byte			Bn4, v124
	.byte	W06
	.byte			An4, v104
	.byte	W06
	.byte			Gn4, v084
	.byte	W06
	.byte			An4, v104
	.byte	W06
	.byte			Gn4, v084
	.byte	W06
	.byte			En4, v064
	.byte	W06
	.byte			Cn4, v044
	.byte	W06
	.byte			Gn3, v036
	.byte	W04
	.byte	W02
	.byte			Fs3
	.byte	W06
	.byte			Gs3, v056
	.byte	W06
	.byte			Bn3, v076
	.byte	W06
	.byte			Ds4, v096
	.byte	W06
	.byte			Cs4, v044
	.byte	W06
	.byte			Ds4, v064
	.byte	W06
	.byte			En4, v084
	.byte	W06
	.byte			Gs4, v104
	.byte	W06
	.byte			Bn4, v124
	.byte	W06
	.byte			Gs4, v104
	.byte	W06
	.byte			Fs4, v084
	.byte	W06
	.byte			Gs4, v104
	.byte	W06
	.byte			Fs4, v084
	.byte	W06
	.byte			Ds4, v064
	.byte	W06
	.byte			Cs4, v044
	.byte	W06
	.byte			Gs3, v036
	.byte	W04
song012_4_4:
	.byte	W02
	.byte		N03	, Fs3, v036
	.byte	W06
	.byte			Gs3, v056
	.byte	W06
	.byte			As3, v076
	.byte	W06
	.byte			Cs4, v096
	.byte	W06
	.byte			As3, v044
	.byte	W06
	.byte			Cs4, v064
	.byte	W06
	.byte			Ds4, v084
	.byte	W06
	.byte			Fs4, v104
	.byte	W06
	.byte			As4, v124
	.byte	W06
	.byte			Gs4, v104
	.byte	W06
	.byte			Fs4, v084
	.byte	W06
	.byte			Gs4, v104
	.byte	W06
	.byte			Fs4, v084
	.byte	W06
	.byte			Ds4, v064
	.byte	W06
	.byte			As3, v044
	.byte	W06
	.byte			Fs3, v036
	.byte	W04
	.byte	PEND
	.byte	W02
	.byte		N03	
	.byte	W06
	.byte			Gs3, v056
	.byte	W06
	.byte			An3, v076
	.byte	W06
	.byte			Cn4, v096
	.byte	W06
	.byte			An3, v044
	.byte	W06
	.byte			Cn4, v064
	.byte	W06
	.byte			Ds4, v084
	.byte	W06
	.byte			Fs4, v104
	.byte	W06
	.byte			An4, v124
	.byte	W06
	.byte			Gs4, v104
	.byte	W06
	.byte			Fs4, v084
	.byte	W06
	.byte			Gs4, v104
	.byte	W06
	.byte			Fs4, v084
	.byte	W06
	.byte			Ds4, v064
	.byte	W06
	.byte			Cn4, v044
	.byte	W06
	.byte			An3, v036
	.byte	W04
	.byte	W02
	.byte			Gn3
	.byte	W06
	.byte			Gs3, v056
	.byte	W06
	.byte			Cn4, v076
	.byte	W06
	.byte			Ds4, v096
	.byte	W06
	.byte			Cn4, v044
	.byte	W06
	.byte			Ds4, v064
	.byte	W06
	.byte			Fn4, v084
	.byte	W06
	.byte			Gn4, v104
	.byte	W06
	.byte			As4, v124
	.byte	W06
	.byte			Gs4, v104
	.byte	W06
	.byte			Gn4, v084
	.byte	W06
	.byte			Gs4, v104
	.byte	W06
	.byte			Gn4, v084
	.byte	W06
	.byte			Ds4, v064
	.byte	W06
	.byte			Cn4, v044
	.byte	W06
	.byte			Gs3, v036
	.byte	W04
	.byte	W02
	.byte			Fn3
	.byte	W06
	.byte			Gs3, v056
	.byte	W06
	.byte			Bn3, v076
	.byte	W06
	.byte			Dn4, v096
	.byte	W06
	.byte			Bn3, v044
	.byte	W06
	.byte			Dn4, v064
	.byte	W06
	.byte			Fn4, v084
	.byte	W06
	.byte			Gs4, v104
	.byte	W06
	.byte			Bn4, v124
	.byte	W06
	.byte			As4, v104
	.byte	W06
	.byte			Gs4, v084
	.byte	W06
	.byte			As4, v104
	.byte	W06
	.byte			Gs4, v084
	.byte	W06
	.byte			Fn4, v064
	.byte	W06
	.byte			Dn4, v044
	.byte	W06
	.byte			Gs3, v036
	.byte	W04
	.byte	PATT	
		mPtr	song012_4_4
	.byte	W02
	.byte		N03	, Fs3, v036
	.byte	W06
	.byte			Gs3, v056
	.byte	W06
	.byte			Cn4, v076
	.byte	W06
	.byte			Ds4, v096
	.byte	W06
	.byte			Cn4, v044
	.byte	W06
	.byte			Ds4, v064
	.byte	W06
	.byte			Fs4, v084
	.byte	W06
	.byte			Gs4, v104
	.byte	W06
	.byte			An4, v124
	.byte	W06
	.byte			Gs4, v104
	.byte	W06
	.byte			Fs4, v084
	.byte	W06
	.byte			Gs4, v104
	.byte	W06
	.byte			Fs4, v084
	.byte	W06
	.byte			Ds4, v064
	.byte	W06
	.byte			Cn4, v044
	.byte	W06
	.byte			An3, v036
	.byte	W03
	.byte	PAN	, c_v-30
	.byte	W01
	.byte		N06	, Gs3, v064
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte	GOTO	
		mPtr	song012_4_5
	.byte	FINE

	@********************** Track  5 **********************@

	.global song012_5
song012_5:	@ 0x0826B29B
	.byte	KEYSH	, 0
song012_5_1:
	.byte	VOICE	, 26
	.byte	VOL	, v070
	.byte	PAN	, c_v
	.byte	W96
	.byte	W96
	.byte	W44
	.byte	W01
	.byte		N24	, Dn3, v112
	.byte	W24
	.byte			Bn2, v100
	.byte	W24
	.byte			Gn2, v096
	.byte	W03
	.byte	W21
	.byte			Dn2, v084
	.byte	W24
	.byte			Gn2, v100
	.byte	W24
	.byte		N32	, Dn3, v112
	.byte	W24
	.byte	W03
	.byte	W96
	.byte	W96
	.byte	W44
	.byte	W01
	.byte		N24	, Fs3
	.byte	W24
	.byte			Ds3, v100
	.byte	W24
	.byte			Bn2, v096
	.byte	W03
	.byte	W21
	.byte			Fs2, v084
	.byte	W24
	.byte			Bn2, v100
	.byte	W24
	.byte		N28	, Fs3, v112
	.byte	W24
	.byte		N48	, En3, v108
	.byte	W03
	.byte	W44
	.byte	W01
	.byte		N44	, Cn3, v104
	.byte	W48
	.byte		N48	, Cs3
	.byte	W03
	.byte	W44
	.byte	W01
	.byte		N44	, Fs3, v112
	.byte	W48
	.byte		N48	, Fn3, v108
	.byte	W03
	.byte	W44
	.byte	W01
	.byte		N44	, As2, v104
	.byte	W48
	.byte		N48	, An2, v100
	.byte	W03
	.byte	W44
	.byte	W01
	.byte		N44	, En3, v108
	.byte	W48
	.byte		N48	, Gs2, v076
	.byte		N48	, Ds3, v108
	.byte	W03
	.byte	W44
	.byte	W01
	.byte		N44	, Cn3, v104
	.byte	W48
	.byte		N48	, Fn2, v076
	.byte		N48	, Bn2, v104
	.byte	W03
	.byte	W44
	.byte	W01
	.byte		N44	, Fs3, v112
	.byte	W48
	.byte			As2, v076
	.byte		N48	, Fn3, v108
	.byte	W03
	.byte	W44
	.byte	W01
	.byte		N44	, As2, v104
	.byte	W48
	.byte		N90	, En2, v076
	.byte		N90	, An2, v100
	.byte	W03
	.byte	W92
	.byte	W01
	.byte		N48	, Gs1, v080
	.byte	W03
	.byte	W44
	.byte	W01
	.byte			Fs1
	.byte	W48
	.byte			En1
	.byte	W03
	.byte	W44
	.byte	W01
	.byte			Ds1
	.byte	W48
	.byte			As1
	.byte	W03
	.byte	W44
	.byte	W01
	.byte			Fs1
	.byte	W48
	.byte			Gs1
	.byte	W03
	.byte	W44
	.byte	W01
	.byte			Bn1
	.byte	W48
	.byte	W03
	.byte	GOTO	
		mPtr	song012_5_1
	.byte	FINE

	@********************** Track  6 **********************@

	.global song012_6
song012_6:	@ 0x0826B34C
	.byte	KEYSH	, 0
song012_6_3:
	.byte	VOICE	, 13
	.byte	VOL	, v084
	.byte		N06	, Gs1, v104
	.byte	W12
	.byte			Gs1, v124
	.byte	W84
	.byte	W96
	.byte			En2, v104
	.byte	W12
	.byte			En2, v124
	.byte	W84
	.byte	W96
	.byte			Cn2, v104
	.byte	W12
	.byte			Cn2, v124
	.byte	W84
	.byte	W96
song012_6_1:
	.byte		N06	, Gs1, v104
	.byte	W12
	.byte			Gs1, v124
	.byte	W84
	.byte	PEND
	.byte	W96
	.byte			An1, v104
	.byte	W12
	.byte			An1, v124
	.byte	W84
	.byte			Cs2, v104
	.byte	W12
	.byte			Cs2, v124
	.byte	W84
song012_6_2:
	.byte		N06	, Ds2, v104
	.byte	W12
	.byte			Ds2, v124
	.byte	W84
	.byte	PEND
	.byte	PATT	
		mPtr	song012_6_1
	.byte		N06	, Fn1, v104
	.byte	W12
	.byte			Fn1, v124
	.byte	W84
	.byte			As1, v104
	.byte	W12
	.byte			As1, v124
	.byte	W84
	.byte	PATT	
		mPtr	song012_6_2
	.byte	PATT	
		mPtr	song012_6_1
	.byte		N18	, Gs1, v120
	.byte	W36
	.byte			Fs1, v127
	.byte	W36
	.byte			Ds2
	.byte	W24
	.byte	W96
	.byte		N12	, Ds1, v120
	.byte	W12
	.byte		N18	, Ds2, v127
	.byte	W24
	.byte		N12	, Ds1, v120
	.byte	W24
	.byte			Ds2, v127
	.byte	W12
	.byte		N24	, Gs1
	.byte	W24
	.byte	W96
	.byte	GOTO	
		mPtr	song012_6_3
	.byte	FINE

	@********************** Track  7 **********************@

	.global song012_7
song012_7:	@ 0x0826B3C4
	.byte	KEYSH	, 0
song012_7_3:
	.byte	VOICE	, 89
	.byte	VOL	, v060
	.byte	PAN	, c_v-30
	.byte		N04	, Cn5, v124
	.byte	W18
	.byte			Cn5, v076
	.byte	W18
	.byte		N04	
	.byte	W18
	.byte		N04	
	.byte	W24
	.byte		N04	
	.byte	W18
song012_7_1:
	.byte		N04	, Cn5, v124
	.byte	W18
	.byte			Cn5, v076
	.byte	W18
	.byte		N04	
	.byte	W18
	.byte		N04	
	.byte	W24
	.byte		N04	
	.byte	W18
	.byte	PEND
	.byte	PATT	
		mPtr	song012_7_1
song012_7_2:
	.byte		N04	, Cn5, v124
	.byte	W06
	.byte			Cn5, v076
	.byte	W06
	.byte		N04	
	.byte	W24
	.byte		N04	
	.byte	W12
	.byte			Cn5, v124
	.byte	W06
	.byte			Cn5, v076
	.byte	W06
	.byte		N04	
	.byte	W36
	.byte	PEND
	.byte	PATT	
		mPtr	song012_7_1
	.byte	PATT	
		mPtr	song012_7_1
	.byte	PATT	
		mPtr	song012_7_1
	.byte	PATT	
		mPtr	song012_7_2
	.byte	PATT	
		mPtr	song012_7_1
	.byte	PATT	
		mPtr	song012_7_1
	.byte	PATT	
		mPtr	song012_7_1
	.byte	PATT	
		mPtr	song012_7_2
	.byte	PATT	
		mPtr	song012_7_1
	.byte	PATT	
		mPtr	song012_7_1
	.byte	PATT	
		mPtr	song012_7_1
	.byte	PATT	
		mPtr	song012_7_2
	.byte	PATT	
		mPtr	song012_7_1
	.byte	PATT	
		mPtr	song012_7_1
	.byte	PATT	
		mPtr	song012_7_1
	.byte	PATT	
		mPtr	song012_7_2
	.byte	GOTO	
		mPtr	song012_7_3
	.byte	FINE

	@********************** Track  8 **********************@

	.global song012_8
song012_8:	@ 0x0826B456
	.byte	KEYSH	, 0
song012_8_3:
	.byte	VOICE	, 89
	.byte	VOL	, v060
	.byte	PAN	, c_v+30
	.byte	W06
	.byte		N04	, Cn5, v076
	.byte	W24
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W06
	.byte			Cn5, v124
	.byte	W18
	.byte			Cn5, v076
	.byte	W30
song012_8_1:
	.byte	W06
	.byte		N04	, Cn5, v076
	.byte	W24
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W06
	.byte			Cn5, v124
	.byte	W18
	.byte			Cn5, v076
	.byte	W30
	.byte	PEND
	.byte	PATT	
		mPtr	song012_8_1
song012_8_2:
	.byte	W18
	.byte		N04	, Cn5, v124
	.byte	W06
	.byte			Cn5, v076
	.byte	W06
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W24
	.byte			Cn5, v124
	.byte	W06
	.byte			Cn5, v076
	.byte	W06
	.byte		N04	
	.byte	W18
	.byte	PEND
	.byte	PATT	
		mPtr	song012_8_1
	.byte	PATT	
		mPtr	song012_8_1
	.byte	PATT	
		mPtr	song012_8_1
	.byte	PATT	
		mPtr	song012_8_2
	.byte	PATT	
		mPtr	song012_8_1
	.byte	PATT	
		mPtr	song012_8_1
	.byte	PATT	
		mPtr	song012_8_1
	.byte	PATT	
		mPtr	song012_8_2
	.byte	PATT	
		mPtr	song012_8_1
	.byte	PATT	
		mPtr	song012_8_1
	.byte	PATT	
		mPtr	song012_8_1
	.byte	PATT	
		mPtr	song012_8_2
	.byte	PATT	
		mPtr	song012_8_1
	.byte	PATT	
		mPtr	song012_8_1
	.byte	PATT	
		mPtr	song012_8_1
	.byte	PATT	
		mPtr	song012_8_2
	.byte	GOTO	
		mPtr	song012_8_3
	.byte	FINE

	@********************** Track  9 **********************@

	.global song012_9
song012_9:	@ 0x0826B4ED
	.byte	KEYSH	, 0
song012_9_1:
	.byte	VOICE	, 91
	.byte	VOL	, v059
	.byte	PAN	, c_v
	.byte	W84
	.byte		N11	, Cn6, v084
	.byte	W12
	.byte	W84
	.byte		N11	
	.byte	W12
	.byte	W84
	.byte		N11	
	.byte	W12
	.byte	W84
	.byte		N11	
	.byte	W12
	.byte	W96
	.byte	W84
	.byte		N11	
	.byte	W12
	.byte	W84
	.byte		N11	
	.byte	W12
	.byte	W84
	.byte		N11	
	.byte	W12
	.byte	W96
	.byte	W84
	.byte		N11	
	.byte	W12
	.byte	W84
	.byte		N11	
	.byte	W12
	.byte	W84
	.byte		N11	
	.byte	W12
	.byte	W96
	.byte	W84
	.byte		N11	
	.byte	W12
	.byte	W84
	.byte		N11	
	.byte	W12
	.byte	W84
	.byte		N11	
	.byte	W12
	.byte	W96
	.byte	W84
	.byte		N11	
	.byte	W12
	.byte	W84
	.byte		N11	
	.byte	W12
	.byte	W84
	.byte		N11	
	.byte	W12
	.byte	GOTO	
		mPtr	song012_9_1
	.byte	FINE
    
	mAlignWord
	.global song012
song012:	@ 0x0826B534
	.byte	9		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	mAlignWord
	mPtr	voicegroup016		@ voicegroup/tone

	mPtr	song012_1		@ track
	mPtr	song012_2		@ track
	mPtr	song012_3		@ track
	mPtr	song012_4		@ track
	mPtr	song012_5		@ track
	mPtr	song012_6		@ track
	mPtr	song012_7		@ track
	mPtr	song012_8		@ track
	mPtr	song012_9		@ track

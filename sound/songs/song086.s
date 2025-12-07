	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song086_1
song086_1:	@ 0x082ACB34
	.byte	KEYSH	, 0
	.byte	TEMPO	, 72
	.byte	VOICE	, 11
	.byte	VOL	, v082
	.byte	PAN	, c_v-14
	.byte		N28	, Ds2, v100
	.byte		N28	, Gs2, v108
	.byte		N28	, Cn3, v104
	.byte	W36
	.byte		N48	, Fn2
	.byte		N54	, As2, v096
	.byte		N48	, Dn3
	.byte	W60
	.byte		N32	, Fs2, v104
	.byte		N32	, Bn2
	.byte		N32	, Ds3, v112
	.byte	W36
	.byte		N56	, Gs2, v108
	.byte		N54	, Cs3, v112
	.byte		N56	, Fn3
	.byte	W60
	.byte		N05	, Cn3, v120
	.byte		N05	, Fn3
	.byte	W06
	.byte		N04	, Cn3
	.byte		N04	, Fn3
	.byte	W30
	.byte		N05	, Ds3
	.byte		N05	, Gs3
	.byte	W06
	.byte		N04	, Ds3
	.byte		N04	, Gs3
	.byte	W42
	.byte		N21	, Ds3, v100
	.byte		N21	, Gn3, v108
	.byte	W12
	.byte	W12
	.byte		N11	, As2, v100
	.byte		N11	, Ds3, v104
	.byte		N11	, Gs3, v116
	.byte	W24
	.byte		N22	, As2, v104
	.byte		N22	, Ds3, v120
	.byte		N21	, Gn3, v124
	.byte	W24
	.byte		N05	, As2, v116
	.byte		N04	, Ds3, v112
	.byte		N05	, Gs3, v124
	.byte	W36
	.byte			Cn3, v120
	.byte		N05	, Fn3
	.byte	W06
	.byte		N04	, Cn3
	.byte		N04	, Fn3
	.byte	W30
	.byte		N05	, Ds3
	.byte		N05	, Gs3
	.byte	W06
	.byte		N04	, Ds3
	.byte		N04	, Gs3
	.byte	W42
	.byte		N20	, Ds3, v100
	.byte		N21	, As3, v108
	.byte	W12
	.byte	W12
	.byte		N11	, Ds3, v100
	.byte		N11	, Fn3, v104
	.byte		N11	, As3, v116
	.byte	W24
	.byte		N22	, As2, v104
	.byte		N22	, Ds3, v120
	.byte		N21	, Gn3, v124
	.byte	W24
	.byte		N05	, Cn3, v116
	.byte		N04	, Fn3, v112
	.byte		N05	, As3, v124
	.byte	W36
	.byte			Fn3, v120
	.byte		N05	, As3
	.byte	W06
	.byte		N04	, Fn3
	.byte		N04	, As3
	.byte	W30
	.byte		N05	, Ds3
	.byte		N05	, Gs3
	.byte	W06
	.byte		N04	, Ds3
	.byte		N04	, Gs3
	.byte	W30
	.byte		N05	, Ds3
	.byte		N05	, Gn3
	.byte	W12
	.byte			Dn3
	.byte		N05	, Fn3
	.byte	W12
	.byte		N13	, Ds3
	.byte		N13	, Gn3
	.byte	W18
	.byte		N05	, Cn3
	.byte		N05	, Fn3
	.byte		N05	, Gs3
	.byte	W18
	.byte		N56	, Gn2, v100
	.byte		N56	, Ds3
	.byte		N56	, As3, v120
	.byte	W60
	.byte		N03	, Cs3
	.byte		N03	, Fs3
	.byte		N03	, Bn3
	.byte	W06
	.byte		N06	, Cs3
	.byte		N06	, Fs3
	.byte		N06	, Bn3
	.byte	W30
	.byte		N04	, Ds3
	.byte		N04	, Gs3
	.byte		N04	, Cs4
	.byte	W06
	.byte		N06	, Ds3
	.byte		N06	, Gs3
	.byte		N06	, Cs4
	.byte	W30
	.byte		N05	, Cs3
	.byte		N05	, Fs3
	.byte		N05	, Bn3
	.byte	W12
	.byte		N06	, Ds3
	.byte		N06	, Gs3
	.byte		N06	, Cs4
	.byte	W12
	.byte		TIE	, Gn3
	.byte		TIE	, As3
	.byte		TIE	, Ds4
	.byte	W96
	.byte	W02
	.byte		EOT	, Gn3
	.byte			As3
	.byte			Ds4
	.byte	W92
	.byte	W02
song086_1_1:
	.byte	W96
	.byte	W96
	.byte	GOTO	
		mPtr	song086_1_1
	.byte	FINE

	@********************** Track  2 **********************@

	.global song086_2
song086_2:	@ 0x082ACC49
	.byte	KEYSH	, 0
	.byte	VOICE	, 20
	.byte	VOL	, v082
	.byte	PAN	, c_v+56
	.byte		N32	, Ds4, v104
	.byte	W36
	.byte		N48	, Fn4, v100
	.byte	W10
	.byte	MOD	, 2
	.byte	W03
	.byte		6
	.byte	W03
	.byte		8
	.byte	W04
	.byte		11
	.byte	W03
	.byte		14
	.byte	W03
	.byte		17
	.byte	W15
	.byte		11
	.byte	W01
	.byte		0
	.byte	W06
	.byte		N06	, Ds4, v084
	.byte	W05
	.byte		N07	, Fn4, v076
	.byte	W07
	.byte		N40	, Fs4, v104
	.byte	W36
	.byte	W02
	.byte		N52	, Gs4, v092
	.byte	W16
	.byte	MOD	, 1
	.byte	W04
	.byte		5
	.byte	W03
	.byte		7
	.byte	W01
	.byte		10
	.byte	W03
	.byte		14
	.byte	W03
	.byte		16
	.byte	W03
	.byte		19
	.byte	W15
	.byte		16
	.byte	W02
	.byte		0
	.byte	W08
	.byte		N03	, Fn4, v116
	.byte	W06
	.byte		N04	, Fn4, v120
	.byte	W30
	.byte		N03	, Gs4
	.byte	W06
	.byte		N04	, Gs4, v124
	.byte	W44
	.byte		N03	, Fn4, v088
	.byte	W02
	.byte		N22	, Gn4, v092
	.byte	W08
	.byte	W14
	.byte		N23	, Fn4
	.byte	W24
	.byte		N03	, Dn4, v096
	.byte	W02
	.byte		N21	, Ds4
	.byte	W20
	.byte		N05	, Cn4
	.byte	W12
	.byte		N12	, As3, v100
	.byte	W12
	.byte		N11	, Fn3, v096
	.byte	W12
	.byte		N03	, Fn4, v116
	.byte	W06
	.byte		N04	, Fn4, v120
	.byte	W30
	.byte		N03	, Gs4
	.byte	W06
	.byte		N04	, Gs4, v124
	.byte	W44
	.byte		N03	, Gs4, v088
	.byte	W02
	.byte		N22	, As4, v092
	.byte	W08
	.byte	W14
	.byte		N23	, Gn4
	.byte	W24
	.byte		N03	, Dn4, v096
	.byte	W02
	.byte		N21	, Ds4
	.byte	W20
	.byte		N05	, As3
	.byte	W12
	.byte		N12	, Gn3, v100
	.byte	W12
	.byte		N11	, Ds3, v096
	.byte	W12
	.byte		N05	, Fn4, v116
	.byte	W06
	.byte		N06	, Fn4, v120
	.byte	W30
	.byte		N05	, Gs4
	.byte	W06
	.byte			Gs4, v124
	.byte	W30
	.byte			Gn4, v112
	.byte	W12
	.byte		N03	, Fn4
	.byte	W12
	.byte		N12	, Gn4, v124
	.byte	W18
	.byte		N06	, Gs4, v112
	.byte	W18
	.byte		N48	, As4, v127
	.byte	W60
	.byte		N03	, Bn4, v104
	.byte	W06
	.byte		N06	, Bn4, v096
	.byte	W30
	.byte		N04	, Cs5, v112
	.byte	W06
	.byte		N06	, Cs5, v108
	.byte	W30
	.byte		N05	, Bn4, v112
	.byte	W12
	.byte		N06	, Cs5, v116
	.byte	W12
	.byte		N23	, Ds5, v124
	.byte	W24
	.byte		N23	
	.byte	W24
	.byte		N23	
	.byte	W24
	.byte		N23	
	.byte	W24
	.byte	W96
song086_2_1:
	.byte	W96
	.byte	W96
	.byte	GOTO	
		mPtr	song086_2_1
	.byte	FINE

	@********************** Track  3 **********************@

	.global song086_3
song086_3:	@ 0x082ACD33
	.byte	KEYSH	, 0
	.byte	VOICE	, 21
	.byte	VOL	, v052
	.byte	PAN	, c_v
	.byte		N32	, Ds4, v104
	.byte	W36
	.byte		N48	, Fn4, v100
	.byte	W10
	.byte	MOD	, 2
	.byte	W03
	.byte		6
	.byte	W03
	.byte		8
	.byte	W04
	.byte		11
	.byte	W03
	.byte		14
	.byte	W03
	.byte		17
	.byte	W15
	.byte		11
	.byte	W01
	.byte		0
	.byte	W06
	.byte		N06	, Ds4, v084
	.byte	W05
	.byte		N07	, Fn4, v076
	.byte	W07
	.byte		N40	, Fs4, v104
	.byte	W36
	.byte	W02
	.byte		N52	, Gs4, v092
	.byte	W16
	.byte	MOD	, 1
	.byte	W04
	.byte		5
	.byte	W03
	.byte		7
	.byte	W01
	.byte		10
	.byte	W03
	.byte		14
	.byte	W03
	.byte		16
	.byte	W03
	.byte		19
	.byte	W15
	.byte		16
	.byte	W02
	.byte		0
	.byte	W08
	.byte		N03	, Fn4, v116
	.byte	W06
	.byte		N04	, Fn4, v120
	.byte	W30
	.byte		N03	, Gs4
	.byte	W06
	.byte		N04	, Gs4, v124
	.byte	W44
	.byte		N03	, Fn4, v088
	.byte	W02
	.byte		N22	, Gn4, v092
	.byte	W08
	.byte	W14
	.byte		N23	, Fn4
	.byte	W24
	.byte		N03	, Dn4, v096
	.byte	W02
	.byte		N21	, Ds4
	.byte	W20
	.byte		N05	, Cn4
	.byte	W12
	.byte		N12	, As3, v100
	.byte	W12
	.byte		N11	, Fn3, v096
	.byte	W12
	.byte		N03	, Fn4, v116
	.byte	W06
	.byte		N04	, Fn4, v120
	.byte	W30
	.byte		N03	, Gs4
	.byte	W06
	.byte		N04	, Gs4, v124
	.byte	W44
	.byte		N03	, Gs4, v088
	.byte	W02
	.byte		N22	, As4, v092
	.byte	W08
	.byte	W14
	.byte		N23	, Gn4
	.byte	W24
	.byte		N03	, Dn4, v096
	.byte	W02
	.byte		N21	, Ds4
	.byte	W20
	.byte		N05	, As3
	.byte	W12
	.byte		N12	, Gn3, v100
	.byte	W12
	.byte		N11	, Ds3, v096
	.byte	W12
	.byte		N03	, Fn4, v116
	.byte	W06
	.byte		N04	, Fn4, v120
	.byte	W30
	.byte		N03	, Gs4
	.byte	W06
	.byte		N04	, Gs4, v124
	.byte	W30
	.byte		N05	, Gn4, v112
	.byte	W12
	.byte		N03	, Fn4
	.byte	W12
	.byte		N13	, Gn4, v124
	.byte	W18
	.byte		N05	, Gs4, v112
	.byte	W18
	.byte		N48	, As4, v127
	.byte	W60
	.byte		N03	, Bn4, v096
	.byte	W06
	.byte		N06	, Bn4, v084
	.byte	W30
	.byte		N04	, Cs5, v104
	.byte	W06
	.byte		N06	, Cs5, v096
	.byte	W30
	.byte		N05	, Bn4, v104
	.byte	W12
	.byte		N06	, Cs5
	.byte	W12
	.byte		TIE	, Ds5, v080
	.byte	W96
	.byte	W02
	.byte		EOT	
	.byte	W92
	.byte	W02
song086_3_1:
	.byte	W96
	.byte	W96
	.byte	GOTO	
		mPtr	song086_3_1
	.byte	FINE

	@********************** Track  4 **********************@

	.global song086_4
song086_4:	@ 0x082ACE1B
	.byte	KEYSH	, 0
	.byte	VOICE	, 22
	.byte	VOL	, v080
	.byte	PAN	, c_v-19
	.byte		N12	, Ds4, v124
	.byte	W12
	.byte		N05	, As4, v100
	.byte	W12
	.byte		N07	, Ds5, v104
	.byte	W12
	.byte		N06	, Ds4, v100
	.byte	W12
	.byte			As4, v096
	.byte	W12
	.byte			Ds5
	.byte	W12
	.byte			Ds4, v104
	.byte	W12
	.byte		N08	, As4, v100
	.byte	W12
	.byte		N09	, Ds4, v116
	.byte	W12
	.byte		N05	, As4, v100
	.byte	W12
	.byte		N09	, Ds5, v112
	.byte	W12
	.byte		N06	, Ds4, v108
	.byte	W12
	.byte		N10	, As4, v104
	.byte	W12
	.byte		N05	, Ds5, v108
	.byte	W12
	.byte		N06	, Ds4, v120
	.byte	W12
	.byte		N05	, As4, v104
	.byte	W12
song086_4_1:
	.byte		N04	, Fn4, v120
	.byte	W06
	.byte		N05	
	.byte	W30
	.byte		N04	, Gs4
	.byte	W06
	.byte		N05	
	.byte	W54
	.byte	PEND
	.byte	W96
	.byte	PATT	
		mPtr	song086_4_1
	.byte	W96
	.byte		N04	, Fn4, v120
	.byte	W06
	.byte		N05	
	.byte	W30
	.byte		N04	, Gs4
	.byte	W06
	.byte		N05	
	.byte	W30
	.byte			Gn4
	.byte	W12
	.byte		N04	, Fn4
	.byte	W12
	.byte		N13	, Ds4
	.byte	W18
	.byte		N05	, Fn4
	.byte	W18
	.byte		N56	, Gn4
	.byte	W60
	.byte		N03	, Ds4
	.byte	W06
	.byte		N06	
	.byte	W30
	.byte		N04	, Fn4
	.byte	W06
	.byte		N06	
	.byte	W30
	.byte		N05	, Ds4
	.byte	W12
	.byte		N06	, Fn4
	.byte	W12
	.byte		N96	, Gn4
	.byte	W96
	.byte	W96
song086_4_2:
	.byte	W96
	.byte	W96
	.byte	GOTO	
		mPtr	song086_4_2
	.byte	FINE

	@********************** Track  5 **********************@

	.global song086_5
song086_5:	@ 0x082ACEA7
	.byte	KEYSH	, 0
	.byte	VOICE	, 23
	.byte	VOL	, v082
	.byte	PAN	, c_v
	.byte	W02
	.byte		N13	, Gs1, v112
	.byte	W12
	.byte		N11	, Gs2, v100
	.byte	W12
	.byte		N12	, Gs1, v104
	.byte	W12
	.byte		N13	, As2, v084
	.byte	W12
	.byte		N12	, As1, v108
	.byte	W12
	.byte			As2, v096
	.byte	W12
	.byte		N14	, As1, v100
	.byte	W12
	.byte		N11	, As2
	.byte	W10
	.byte	W02
	.byte		N12	, Bn1, v116
	.byte	W12
	.byte		N11	, Bn2, v112
	.byte	W12
	.byte		N12	, Bn1, v116
	.byte	W12
	.byte			Cs3, v100
	.byte	W12
	.byte		N13	, Cs2, v116
	.byte	W12
	.byte		N12	, Cs3, v104
	.byte	W18
	.byte		N13	, Cs2, v108
	.byte	W06
	.byte		N09	, Cs3
	.byte	W10
	.byte		N05	, Gs1, v116
	.byte	W06
	.byte		N06	, Gs1, v120
	.byte	W30
	.byte		N04	, As1
	.byte	W06
	.byte		N06	, As1, v124
	.byte	W44
	.byte		N24	, Fn1, v120
	.byte	W10
	.byte	W13
	.byte		N10	, Fn2, v116
	.byte	W13
	.byte		N13	, Gn1, v112
	.byte	W12
	.byte		N15	, Gn2, v116
	.byte	W12
	.byte		N12	, Gs1, v112
	.byte	W13
	.byte		N16	, Gs2, v108
	.byte	W10
	.byte		N12	, As1, v112
	.byte	W13
	.byte		N11	, As2, v104
	.byte	W10
	.byte		N05	, Gs1, v116
	.byte	W06
	.byte		N06	, Gs1, v120
	.byte	W30
	.byte		N04	, As1
	.byte	W06
	.byte		N06	, As1, v124
	.byte	W42
	.byte		N24	, Ds1, v120
	.byte	W12
	.byte	W13
	.byte		N14	, Ds2, v104
	.byte	W13
	.byte		N09	, Cs1, v108
	.byte	W10
	.byte		N12	, Cs2, v120
	.byte	W12
	.byte		N09	, Cn1, v116
	.byte	W11
	.byte		N12	, Cn2, v120
	.byte	W12
	.byte		N13	, As0
	.byte	W12
	.byte			As1
	.byte	W13
	.byte	VOL	, v089
	.byte	PAN	, c_v-4
	.byte		N04	, Gs1, v116
	.byte	W06
	.byte		N06	, Gs1, v120
	.byte	W30
	.byte		N04	, As1
	.byte	W06
	.byte		N06	, As1, v124
	.byte	W21
	.byte		N09	, Fn1, v100
	.byte	W09
	.byte		N06	, Cn2, v120
	.byte	W12
	.byte			Dn2, v112
	.byte	W12
	.byte		N13	, Ds2, v124
	.byte	W18
	.byte		N06	, As1, v112
	.byte	W18
	.byte		N23	, Ds1, v127
	.byte	W24
	.byte		N11	, Ds1, v116
	.byte	W12
	.byte		N12	, Fs1, v112
	.byte	W12
	.byte		N11	, Gn1, v104
	.byte	W12
	.byte		N03	, Gs1
	.byte	W06
	.byte		N06	, Gs1, v096
	.byte	W30
	.byte		N04	, As1, v112
	.byte	W06
	.byte		N06	, As1, v108
	.byte	W30
	.byte		N05	, Gs1, v112
	.byte	W12
	.byte		N06	, As1, v116
	.byte	W12
	.byte		TIE	, Ds1, v124
	.byte	W96
	.byte	W02
	.byte		EOT	
	.byte	W92
	.byte	W02
song086_5_1:
	.byte	W96
	.byte	W96
	.byte	GOTO	
		mPtr	song086_5_1
	.byte	FINE

	@********************** Track  6 **********************@

	.global song086_6
song086_6:	@ 0x082ACFA7
	.byte	KEYSH	, 0
	.byte	VOICE	, 24
	.byte	VOL	, v054
	.byte	PAN	, c_v
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W54
	.byte		N03	, Ds2, v120
	.byte	W03
	.byte			Fn2, v127
	.byte	W03
	.byte			Gs2
	.byte	W03
	.byte			Cs3
	.byte	W03
	.byte			Ds3
	.byte	W03
	.byte			Fn3
	.byte	W03
	.byte			Gs3
	.byte	W03
	.byte			Cs4
	.byte	W03
	.byte			Ds4
	.byte	W03
	.byte			Fn4
	.byte	W03
	.byte			Gs4
	.byte	W03
	.byte			Cs5
	.byte	W03
	.byte			Ds5
	.byte	W03
	.byte			Fn5
	.byte	W03
	.byte			As5
	.byte	W03
	.byte			Ds6
	.byte	W03
	.byte			As5
	.byte	W03
	.byte			Gn5
	.byte	W03
	.byte			Fn5
	.byte	W03
	.byte			Ds5
	.byte	W03
	.byte			As4
	.byte	W03
	.byte			Gn4
	.byte	W03
	.byte			Fn4
	.byte	W03
	.byte			Ds4
	.byte	W03
	.byte			As3
	.byte	W03
	.byte			Gn3
	.byte	W03
	.byte			Fn3
	.byte	W03
	.byte			Ds3
	.byte	W03
	.byte			As2
	.byte	W03
	.byte			Gn2
	.byte	W04
	.byte			Ds6, v072
	.byte	W03
	.byte			As5
	.byte	W03
	.byte			Gn5
	.byte	W03
	.byte			Fn5
	.byte	W03
	.byte			Ds5
	.byte	W03
	.byte			As4
	.byte	W03
	.byte			Gn4
	.byte	W03
	.byte			Fn4
	.byte	W03
	.byte			Ds4
	.byte	W03
	.byte			As3
	.byte	W03
	.byte			Gn3
	.byte	W03
	.byte			Fn3
	.byte	W03
	.byte			Ds3
	.byte	W03
	.byte			As2
	.byte	W03
	.byte			Gn2
	.byte	W05
	.byte			Ds6, v028
	.byte	W03
	.byte			As5
	.byte	W03
	.byte			Gn5
	.byte	W03
	.byte			Fn5
	.byte	W03
	.byte			Ds5
	.byte	W03
	.byte			As4
	.byte	W03
	.byte			Gn4
	.byte	W03
	.byte			Fn4
	.byte	W03
	.byte			Ds4
	.byte	W03
	.byte			As3
	.byte	W03
	.byte			Gn3
	.byte	W03
	.byte			Fn3
	.byte	W03
	.byte			Ds3
	.byte	W03
	.byte			As2
	.byte	W03
	.byte			Gn2
	.byte		N03	, Ds6, v016
	.byte	W03
	.byte			As5
	.byte	W03
	.byte			Gn5
	.byte	W03
	.byte			Fn5
	.byte	W03
	.byte			Ds5
	.byte	W03
	.byte			As4
	.byte	W03
	.byte			Gn4
	.byte	W03
	.byte			Fn4
	.byte	W03
	.byte			Ds4
	.byte	W03
	.byte			As3
	.byte	W03
	.byte			Gn3
	.byte	W03
	.byte			Fn3
	.byte	W03
	.byte			Ds3
	.byte	W03
	.byte			As2
	.byte	W03
	.byte			Gn2
	.byte	W12
song086_6_1:
	.byte	W96
	.byte	W96
	.byte	GOTO	
		mPtr	song086_6_1
	.byte	FINE

	@********************** Track  7 **********************@

	.global song086_7
song086_7:	@ 0x082AD05C
	.byte	KEYSH	, 0
	.byte	VOICE	, 25
	.byte	VOL	, v022
	.byte	PAN	, c_v
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W54
	.byte		N03	, Ds2, v120
	.byte	W03
	.byte			Fn2, v127
	.byte	W03
	.byte			Gs2
	.byte	W03
	.byte			Cs3
	.byte	W03
	.byte			Ds3
	.byte	W03
	.byte			Fn3
	.byte	W03
	.byte			Gs3
	.byte	W03
	.byte			Cs4
	.byte	W03
	.byte			Ds4
	.byte	W03
	.byte			Fn4
	.byte	W03
	.byte			Gs4
	.byte	W03
	.byte			Cs5
	.byte	W03
	.byte			Ds5
	.byte	W03
	.byte			Fn5
	.byte	W03
	.byte			Gs5
	.byte	W03
	.byte			Ds6
	.byte	W03
	.byte			As5
	.byte	W03
	.byte			Gn5
	.byte	W03
	.byte			Fn5
	.byte	W03
	.byte			Ds5
	.byte	W03
	.byte			As4
	.byte	W03
	.byte			Gn4
	.byte	W03
	.byte			Fn4
	.byte	W03
	.byte			Ds4
	.byte	W03
	.byte			As3
	.byte	W03
	.byte			Gn3
	.byte	W03
	.byte			Fn3
	.byte	W03
	.byte			Ds3
	.byte	W03
	.byte			As2
	.byte	W03
	.byte			Gn2
	.byte	W04
	.byte			Ds6, v072
	.byte	W03
	.byte			As5
	.byte	W03
	.byte			Gn5
	.byte	W03
	.byte			Fn5
	.byte	W03
	.byte			Ds5
	.byte	W03
	.byte			As4
	.byte	W03
	.byte			Gn4
	.byte	W03
	.byte			Fn4
	.byte	W03
	.byte			Ds4
	.byte	W03
	.byte			As3
	.byte	W03
	.byte			Gn3
	.byte	W03
	.byte			Fn3
	.byte	W03
	.byte			Ds3
	.byte	W03
	.byte			As2
	.byte	W03
	.byte			Gn2
	.byte	W05
	.byte			Ds6, v028
	.byte	W03
	.byte			As5
	.byte	W03
	.byte			Gn5
	.byte	W03
	.byte			Fn5
	.byte	W03
	.byte			Ds5
	.byte	W03
	.byte			As4
	.byte	W03
	.byte			Gn4
	.byte	W03
	.byte			Fn4
	.byte	W03
	.byte			Ds4
	.byte	W03
	.byte			As3
	.byte	W03
	.byte			Gn3
	.byte	W03
	.byte			Fn3
	.byte	W03
	.byte			Ds3
	.byte	W03
	.byte			As2
	.byte	W03
	.byte			Gn2
	.byte		N03	, Ds6, v016
	.byte	W03
	.byte			As5
	.byte	W03
	.byte			Gn5
	.byte	W03
	.byte			Fn5
	.byte	W03
	.byte			Ds5
	.byte	W03
	.byte			As4
	.byte	W03
	.byte			Gn4
	.byte	W03
	.byte			Fn4
	.byte	W03
	.byte			Ds4
	.byte	W03
	.byte			As3
	.byte	W03
	.byte			Gn3
	.byte	W03
	.byte			Fn3
	.byte	W03
	.byte			Ds3
	.byte	W03
	.byte			As2
	.byte	W03
	.byte			Gn2
	.byte	W12
song086_7_1:
	.byte	W96
	.byte	W96
	.byte	GOTO	
		mPtr	song086_7_1
	.byte	FINE

	@********************** Track  8 **********************@

	.global song086_8
song086_8:	@ 0x082AD111
	.byte	KEYSH	, 0
	.byte	VOICE	, 127
	.byte	VOL	, v093
	.byte	PAN	, c_v
	.byte		N11	, Cn1, v127
	.byte		N32	, Fs2, v120
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte	W12
	.byte			Cs1
	.byte	W12
	.byte		N17	, Cn1
	.byte		N32	, Fs2, v120
	.byte	W18
	.byte		N05	, Cs1, v127
	.byte	W06
	.byte		N11	, Cn1
	.byte	W12
	.byte			Cs1
	.byte	W12
	.byte		N05	, Cn1
	.byte	W06
	.byte			Cs1
	.byte	W06
	.byte		N11	, Cn1
	.byte		N32	, Fs2, v120
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte	W12
	.byte			Cs1
	.byte	W12
	.byte		N17	, Cn1
	.byte		N32	, Fs2, v120
	.byte	W18
	.byte		N05	, Cs1
	.byte	W06
	.byte			Cn1
	.byte	W06
	.byte			Cs1
	.byte	W06
	.byte		N11	, Fs1, v127
	.byte		N11	, Gs1
	.byte	W12
	.byte		N03	, An1, v120
	.byte	W04
	.byte		N02	
	.byte	W02
	.byte		N18	, Gn1
	.byte	W06
	.byte		N11	, Cs1
	.byte		N32	, Fs2, v108
	.byte	W12
	.byte		N11	, Cn1, v096
	.byte	W12
	.byte		N05	, Cs1, v116
	.byte	W06
	.byte			Cn1, v120
	.byte	W06
	.byte		N11	, Cs1, v108
	.byte		N56	, Fs2, v120
	.byte	W12
	.byte		N05	, Cs1, v100
	.byte		N05	, En2
	.byte	W06
	.byte		N06	, Cs1, v127
	.byte	W06
	.byte		N11	, Fs1, v096
	.byte		N11	, Gs1
	.byte	W12
	.byte		N06	, Cs1, v120
	.byte	W06
	.byte		N05	, Gn1, v092
	.byte	W05
	.byte		N11	, Fn1, v108
	.byte		N11	, Gs1
	.byte	W13
song086_8_1:
	.byte		N11	, Cn1, v127
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte			Cs1
	.byte	W12
	.byte		N17	, Cn1
	.byte	W18
	.byte		N05	, Cs1
	.byte	W06
	.byte		N11	, Cn1
	.byte	W12
	.byte			Cs1
	.byte	W12
	.byte		N05	, Cn1
	.byte	W06
	.byte			Cs1
	.byte	W06
	.byte	PEND
	.byte		N06	, Cs1, v108
	.byte		N32	, Fs2
	.byte	W06
	.byte		N12	, Cn1, v104
	.byte	W12
	.byte		N17	, Cs1, v096
	.byte	W18
	.byte		N05	, Cs1, v127
	.byte		N48	, Fs2, v108
	.byte	W06
	.byte		N12	, Cs1, v104
	.byte	W12
	.byte			Gs1, v096
	.byte	W12
	.byte		N05	, Cs1, v108
	.byte	W06
	.byte		N11	, Cn1, v127
	.byte	W12
	.byte		N03	, An1, v120
	.byte	W04
	.byte		N02	
	.byte	W02
	.byte		N06	, Gn1
	.byte	W06
	.byte		N11	, Cn1
	.byte		N32	, Fs2, v108
	.byte	W12
	.byte		N11	, Cs1, v120
	.byte	W12
	.byte		N05	, Cs1, v116
	.byte	W06
	.byte			Cn1, v120
	.byte	W06
	.byte			Cs1, v108
	.byte		N56	, Fs2, v120
	.byte	W06
	.byte		N05	, Cs1
	.byte	W06
	.byte		N03	, Cn1
	.byte	W04
	.byte			Cs1, v108
	.byte	W04
	.byte		N06	, Cs1, v064
	.byte	W04
	.byte		N05	, Gs1, v100
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N06	, Gn1, v096
	.byte	W06
	.byte		N05	, Gn1, v092
	.byte	W05
	.byte		N06	, Fs1, v108
	.byte	W07
	.byte		N05	, Fn1, v104
	.byte	W06
	.byte		N06	, Cs1, v108
	.byte		N32	, Fs2
	.byte	W06
	.byte		N12	, Cn1, v104
	.byte	W12
	.byte		N17	, Cs1, v096
	.byte	W18
	.byte		N06	, Cn1, v127
	.byte	W04
	.byte		N32	, Fs2, v108
	.byte	W02
	.byte		N12	, Cs1, v104
	.byte	W12
	.byte			Gs1, v096
	.byte	W12
	.byte		N05	, Cs1, v108
	.byte	W06
	.byte		N11	, Cn1, v127
	.byte	W12
	.byte		N05	, Cn1, v116
	.byte	W06
	.byte			Cs1, v096
	.byte	W06
	.byte		N17	, Cn1, v120
	.byte		N72	, Fs2, v108
	.byte	W18
	.byte		N17	, Cs1
	.byte	W18
	.byte		N23	, Cn1, v116
	.byte	W24
	.byte		N03	, An1, v120
	.byte	W04
	.byte		N02	
	.byte	W02
	.byte		N23	, Gs1
	.byte	W06
	.byte		N11	, Cs1
	.byte	W12
	.byte			Cn1, v096
	.byte	W12
	.byte		N05	, Cs1, v116
	.byte		N68	, Fs2, v108
	.byte	W06
	.byte		N05	, Cs1, v100
	.byte	W12
	.byte			Cn1, v120
	.byte	W06
	.byte		N17	, Cs1, v108
	.byte	W18
	.byte		N03	, An1, v120
	.byte	W04
	.byte		N12	
	.byte	W14
	.byte			Gs1
	.byte	W12
	.byte		N05	, Cs1, v116
	.byte	W06
	.byte			Cs1, v100
	.byte	W06
	.byte			Cn1
	.byte	W06
	.byte			Cs1
	.byte	W06
	.byte		N30	, Cn1
	.byte		TIE	, Fs2, v108
	.byte	W96
	.byte		N11	, Cn1, v127
	.byte	W01
	.byte		EOT	, Fs2
	.byte	W11
	.byte		N11	, Cn1
	.byte	W12
	.byte			Cs1
	.byte	W12
	.byte		N17	, Cn1
	.byte	W18
	.byte		N05	, Cs1
	.byte	W06
	.byte		N11	, Cn1
	.byte	W12
	.byte			Cs1
	.byte	W12
	.byte		N05	, Cn1
	.byte	W06
	.byte			Cs1
	.byte	W06
song086_8_2:
	.byte	PATT	
		mPtr	song086_8_1
	.byte	PATT	
		mPtr	song086_8_1
	.byte	GOTO	
		mPtr	song086_8_2
	.byte		N11	, Cn1, v127
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte			Cs1
	.byte	W12
	.byte		N17	, Cn1
	.byte	W18
	.byte		N05	, Cs1
	.byte	W06
	.byte		N11	, Cn1
	.byte	W12
	.byte			Cs1
	.byte	W12
	.byte		N05	, Cn1
	.byte	W06
	.byte			Cs1
	.byte	W05
	.byte	FINE

	@********************** Track  9 **********************@

	.global song086_9
song086_9:	@ 0x082AD2D0
	.byte	VOL	, v095
	.byte	KEYSH	, 0
song086_9_1:
	.byte		N01	, Dn1, v056
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N02	
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N01	
	.byte	W07
	.byte		N03	
	.byte	W05
	.byte		N06	
	.byte	W07
	.byte		N02	
	.byte	W12
	.byte		N01	
	.byte	W05
	.byte		N06	
	.byte	W07
	.byte		N02	
	.byte	W05
	.byte	PEND
	.byte	PATT	
		mPtr	song086_9_1
song086_9_2:
	.byte		N09	, Dn1, v040
	.byte	W18
	.byte		N09	
	.byte	W18
	.byte		N09	
	.byte	W36
	.byte		N21	, Ds1
	.byte	W24
	.byte	PEND
	.byte	PATT	
		mPtr	song086_9_1
	.byte	PATT	
		mPtr	song086_9_2
	.byte	PATT	
		mPtr	song086_9_1
	.byte	PATT	
		mPtr	song086_9_2
	.byte		N09	, Dn1, v040
	.byte	W18
	.byte		N09	
	.byte	W18
	.byte		N09	
	.byte	W36
	.byte		N24	, Ds1
	.byte	W24
	.byte	W06
	.byte		N24	
	.byte	W90
	.byte	W96
	.byte	PATT	
		mPtr	song086_9_1
song086_9_3:
	.byte	PATT	
		mPtr	song086_9_1
	.byte	PATT	
		mPtr	song086_9_1
	.byte	GOTO	
		mPtr	song086_9_3
	.byte		N01	, Dn1, v056
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N02	
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N01	
	.byte	W07
	.byte		N03	
	.byte	W05
	.byte		N06	
	.byte	W07
	.byte		N02	
	.byte	W12
	.byte		N01	
	.byte	W05
	.byte		N06	
	.byte	W07
	.byte		N02	
	.byte	W02
	.byte	FINE
    
	mAlignWord
	.global song086
song086:	@ 0x082AD350
	.byte	9		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	mPtr	voicegroup011		@ voicegroup/tone

	mPtr	song086_1		@ track
	mPtr	song086_2		@ track
	mPtr	song086_3		@ track
	mPtr	song086_4		@ track
	mPtr	song086_5		@ track
	mPtr	song086_6		@ track
	mPtr	song086_7		@ track
	mPtr	song086_8		@ track
	mPtr	song086_9		@ track

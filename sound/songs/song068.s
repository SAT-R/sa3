	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song068_1
song068_1:	@ 0x082A1490
	.byte	KEYSH	, 0
	.byte	TEMPO	, 65
	.byte	VOICE	, 127
	.byte	VOL	, v085
	.byte	PAN	, c_v
	.byte	W03
	.byte	TEMPO	, 65
	.byte		N06	, Gn7, v127
	.byte	W06
	.byte			Gs4
	.byte	W06
	.byte		N05	, An4
	.byte	W05
	.byte		N13	, Gn7
	.byte	W13
	.byte		N05	, Bn4
	.byte	W06
	.byte		N06	, Fs5
	.byte		N06	, En6
	.byte	W07
	.byte		N05	, Cs5
	.byte	W05
	.byte		N06	, Dn5
	.byte	W06
	.byte		N05	, Ds5
	.byte	W06
	.byte			Gn7
	.byte	W05
	.byte		N06	
	.byte	W07
	.byte			Fs5
	.byte		N06	, En6
	.byte	W07
	.byte		N04	, Gn5
	.byte	W05
	.byte		N06	, Gn7
	.byte	W06
	.byte		N05	, An5
	.byte	W06
song068_1_1:
	.byte		N06	, Gn7, v127
	.byte	W06
	.byte			Gs4
	.byte	W06
	.byte		N05	, An4
	.byte	W05
	.byte		N13	, Gn7
	.byte	W13
	.byte		N05	, Bn4
	.byte	W06
	.byte		N06	, Fs5
	.byte		N06	, En6
	.byte	W07
	.byte		N05	, Cs5
	.byte	W05
	.byte		N06	, Dn5
	.byte	W06
	.byte		N05	, Ds5
	.byte	W06
	.byte			Gn7
	.byte	W05
	.byte		N06	
	.byte	W07
	.byte			Fs5
	.byte		N06	, En6
	.byte	W07
	.byte		N04	, Gn5
	.byte	W05
	.byte		N06	, Gn7
	.byte	W06
	.byte		N05	, An5
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song068_1_1
song068_1_2:
	.byte		N06	, Gn7, v127
	.byte	W06
	.byte		N05	, Bn5
	.byte	W06
	.byte			Cn6
	.byte	W05
	.byte		N06	, Gn7
	.byte	W07
	.byte			Dn6
	.byte	W06
	.byte		N05	, Ds6
	.byte	W06
	.byte		N06	, Fs5
	.byte		N06	, En6
	.byte	W07
	.byte		N05	, Fn6
	.byte	W05
	.byte		N06	, Gn7
	.byte	W07
	.byte		N05	, Gn6
	.byte	W05
	.byte			Gs6
	.byte	W06
	.byte		N06	, An6
	.byte	W06
	.byte			As6
	.byte	W06
	.byte		N05	, Fs5
	.byte		N05	, En6
	.byte	W06
	.byte			Cn7
	.byte	W06
	.byte		N06	, Cs7
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song068_1_1
	.byte	PATT	
		.word	song068_1_1
	.byte	PATT	
		.word	song068_1_1
	.byte	PATT	
		.word	song068_1_2
	.byte	PATT	
		.word	song068_1_1
	.byte	PATT	
		.word	song068_1_1
	.byte	PATT	
		.word	song068_1_1
	.byte	PATT	
		.word	song068_1_2
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song068_1_1
	.byte	GOTO	
		.word	song068_1_1
	.byte	PATT	
		.word	song068_1_1
	.byte	FINE

	@********************** Track  2 **********************@

	.global song068_2
song068_2:	@ 0x082A156C
	.byte	KEYSH	, 0
	.byte	VOICE	, 60
	.byte	VOL	, v053
	.byte	PAN	, c_v-19
	.byte	W03
song068_2_1:
	.byte		N05	, Ds7, v052
	.byte	W06
	.byte		N03	, Bn6, v020
	.byte	W18
	.byte		N05	, Ds7, v024
	.byte	W06
	.byte		N03	, Bn6, v004
	.byte	W18
	.byte		N05	, Ds7, v052
	.byte	W06
	.byte		N03	, Bn6, v020
	.byte	W18
	.byte		N05	, Ds7, v052
	.byte	W06
	.byte		N03	, Bn6, v020
	.byte	W18
	.byte	PEND
song068_2_2:
	.byte	PATT	
		.word	song068_2_1
	.byte	PATT	
		.word	song068_2_1
	.byte	PATT	
		.word	song068_2_1
	.byte	PATT	
		.word	song068_2_1
	.byte	PATT	
		.word	song068_2_1
	.byte	PATT	
		.word	song068_2_1
	.byte	PATT	
		.word	song068_2_1
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W54
	.byte		N03	, Bn6, v020
	.byte	W18
	.byte		N05	, Ds7, v052
	.byte	W06
	.byte		N03	, Bn6, v020
	.byte	W18
	.byte	PATT	
		.word	song068_2_1
	.byte	GOTO	
		.word	song068_2_2
	.byte		N05	, Ds7, v052
	.byte	W06
	.byte		N03	, Bn6, v020
	.byte	W18
	.byte		N05	, Ds7, v024
	.byte	W06
	.byte		N03	, Bn6, v004
	.byte	W18
	.byte		N05	, Ds7, v052
	.byte	W06
	.byte		N03	, Bn6, v020
	.byte	W18
	.byte		N05	, Ds7, v052
	.byte	W06
	.byte		N03	, Bn6, v020
	.byte	W03
	.byte	FINE

	@********************** Track  3 **********************@

	.global song068_3
song068_3:	@ 0x082A15F8
	.byte	KEYSH	, 0
	.byte	VOICE	, 61
	.byte	VOL	, v074
	.byte	PAN	, c_v-19
	.byte	W03
song068_3_1:
	.byte	W12
	.byte		N12	, Gn7, v068
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte	PEND
song068_3_2:
	.byte	PATT	
		.word	song068_3_1
	.byte	PATT	
		.word	song068_3_1
	.byte	PATT	
		.word	song068_3_1
	.byte	PATT	
		.word	song068_3_1
	.byte	PATT	
		.word	song068_3_1
	.byte	PATT	
		.word	song068_3_1
	.byte	PATT	
		.word	song068_3_1
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W60
	.byte		N12	, Gn7, v068
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte	PATT	
		.word	song068_3_1
	.byte	GOTO	
		.word	song068_3_2
	.byte	PATT	
		.word	song068_3_1
	.byte	FINE

	@********************** Track  4 **********************@

	.global song068_4
song068_4:	@ 0x082A164E
	.byte	KEYSH	, 0
	.byte	VOICE	, 46
	.byte	VOL	, v081
	.byte	PAN	, c_v-4
	.byte	W03
song068_4_1:
	.byte	W01
	.byte		N05	, As1, v100
	.byte	W18
	.byte			As2
	.byte	W06
	.byte			As1
	.byte	W24
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			As1
	.byte	W11
	.byte	PEND
song068_4_2:
	.byte	W01
	.byte		N05	, Cn2, v100
	.byte	W18
	.byte			Cn3
	.byte	W12
	.byte			Cn2
	.byte	W18
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			Cn2
	.byte	W11
	.byte	PEND
song068_4_3:
	.byte	W01
	.byte		N05	, Fn1, v100
	.byte	W18
	.byte			Fn2
	.byte	W06
	.byte			Fn1
	.byte	W24
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			Fn1
	.byte	W11
	.byte	PEND
song068_4_4:
	.byte	W01
	.byte		N05	, Ds1, v100
	.byte	W18
	.byte			Ds2
	.byte	W12
	.byte			Ds1
	.byte	W18
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			Ds1
	.byte	W11
	.byte	PEND
	.byte	PATT	
		.word	song068_4_1
	.byte	PATT	
		.word	song068_4_2
	.byte	PATT	
		.word	song068_4_3
	.byte	PATT	
		.word	song068_4_4
	.byte	PATT	
		.word	song068_4_1
	.byte	PATT	
		.word	song068_4_2
	.byte	PATT	
		.word	song068_4_3
	.byte	PATT	
		.word	song068_4_4
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song068_4_1
	.byte	GOTO	
		.word	song068_4_2
	.byte	W01
	.byte		N05	, Cn2, v100
	.byte	W18
	.byte			Cn3
	.byte	W12
	.byte			Cn2
	.byte	W18
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			Cn2
	.byte	W05
	.byte	FINE

	@********************** Track  5 **********************@

	.global song068_5
song068_5:	@ 0x082A16F1
	.byte	KEYSH	, 0
	.byte	VOICE	, 76
	.byte	VOL	, v081
	.byte	PAN	, c_v
	.byte	W03
	.byte	W96
song068_5_1:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W92
	.byte	W03
	.byte		N04	, An2, v096
	.byte		N04	, An3, v076
	.byte	W01
	.byte	W01
	.byte		N22	, As2, v084
	.byte		N22	, As3, v064
	.byte	W24
	.byte	W01
	.byte		N12	, Gn2, v104
	.byte		N12	, Gn3, v084
	.byte	W12
	.byte		N14	, Fn2, v100
	.byte		N14	, Fn3, v080
	.byte	W23
	.byte		N03	, Fn2, v096
	.byte		N03	, Fn3, v076
	.byte	W12
	.byte		N11	, Gn2, v104
	.byte		N11	, Gn3, v084
	.byte	W12
	.byte		N05	, As2
	.byte		N05	, As3, v064
	.byte	W11
	.byte	W01
	.byte		N17	, Cn3, v096
	.byte		N17	, Cn4, v076
	.byte	W17
	.byte		N08	, Dn3, v100
	.byte		N08	, Dn4, v080
	.byte	W19
	.byte		N52	, Cn3, v092
	.byte		N52	, Cn4, v072
	.byte	W56
	.byte	W03
	.byte	W11
	.byte		N02	, Fn2, v100
	.byte		N02	, Fn3, v080
	.byte	W13
	.byte		N11	, Gn2, v104
	.byte		N11	, Gn3, v084
	.byte	W11
	.byte		N05	, As2
	.byte		N05	, As3, v064
	.byte	W13
	.byte		N11	, Cn3, v092
	.byte		N11	, Cn4, v072
	.byte	W11
	.byte		N15	, As2, v088
	.byte		N15	, As3, v068
	.byte	W24
	.byte	W02
	.byte		N03	, Cn3, v088
	.byte		N03	, Cn4, v068
	.byte	W01
	.byte		N22	, Dn3, v096
	.byte		N22	, Dn4, v076
	.byte	W10
	.byte	W12
	.byte		N09	, As2, v096
	.byte		N09	, As3, v076
	.byte	W11
	.byte		N12	, Gn2, v100
	.byte		N12	, Gn3, v080
	.byte	W13
	.byte		N48	, Fn2, v100
	.byte		N48	, Fn3, v080
	.byte	W60
	.byte		N03	, An2, v100
	.byte		N03	, An3, v080
	.byte	W01
	.byte		N11	, As2, v084
	.byte		N11	, As3, v064
	.byte	W24
	.byte		N12	, Gn2, v108
	.byte		N12	, Gn3, v088
	.byte	W12
	.byte		N15	, Fn2, v100
	.byte		N15	, Fn3, v080
	.byte	W24
	.byte		N04	, Fn2, v104
	.byte		N04	, Fn3, v084
	.byte	W13
	.byte		N10	, Gn2, v108
	.byte		N10	, Gn3, v088
	.byte	W10
	.byte		N05	, As2, v084
	.byte		N05	, As3, v064
	.byte	W12
	.byte	W01
	.byte		N17	, Cn3, v096
	.byte		N17	, Cn4, v076
	.byte	W17
	.byte		N11	, Dn3, v104
	.byte		N11	, Dn4, v084
	.byte	W21
	.byte		N54	, Cn3, v100
	.byte		N54	, Cn4, v080
	.byte	W56
	.byte	W01
	.byte	W11
	.byte		N03	, Fn2, v104
	.byte		N03	, Fn3, v084
	.byte	W11
	.byte		N12	, Gn2, v108
	.byte		N12	, Gn3, v088
	.byte	W13
	.byte		N04	, As2, v084
	.byte		N04	, As3, v064
	.byte	W12
	.byte		N12	, Cn3, v100
	.byte		N12	, Cn4, v080
	.byte	W11
	.byte		N18	, As2, v088
	.byte		N18	, As3, v068
	.byte	W24
	.byte	W01
	.byte		N02	, Cn3, v080
	.byte		N02	, Cn4, v060
	.byte	W01
	.byte		N24	, Dn3, v104
	.byte		N24	, Dn4, v084
	.byte	W12
	.byte	W10
	.byte		N14	, Cn3, v096
	.byte		N14	, Cn4, v076
	.byte	W24
	.byte	W01
	.byte		N54	, As2, v088
	.byte		N54	, As3, v068
	.byte	W60
	.byte	W01
	.byte	W96
	.byte	GOTO	
		.word	song068_5_1
	.byte	FINE

	@********************** Track  6 **********************@

	.global song068_6
song068_6:	@ 0x082A1827
	.byte	KEYSH	, 0
	.byte	VOICE	, 101
	.byte	VOL	, v056
	.byte	PAN	, c_v
	.byte	W03
song068_6_1:
	.byte		N14	, As3, v116
	.byte	W24
	.byte		N12	, Gn3
	.byte	W12
	.byte		N15	, Fn3, v108
	.byte	W24
	.byte		N12	, Fn3, v100
	.byte	W12
	.byte		N13	, Gn3, v116
	.byte	W12
	.byte		N12	, As3, v100
	.byte	W12
	.byte	PEND
song068_6_2:
	.byte		N13	, Cn4, v080
	.byte	W12
	.byte		N12	, Dn4, v104
	.byte	W24
	.byte		N36	, Cn4, v096
	.byte	W60
	.byte	W12
	.byte		N13	, Fn3, v104
	.byte	W12
	.byte		N12	, Gn3, v108
	.byte	W12
	.byte			As3, v088
	.byte	W12
	.byte			Cn4, v100
	.byte	W12
	.byte		N17	, As3
	.byte	W24
	.byte		N23	, Dn4
	.byte	W12
	.byte	W12
	.byte		N13	, As3, v092
	.byte	W12
	.byte		N11	, Gn3, v104
	.byte	W12
	.byte		N36	, Fn3, v096
	.byte	W60
	.byte		N15	, As3
	.byte	W24
	.byte		N14	, Gn3, v112
	.byte	W12
	.byte		N15	, Fn3, v100
	.byte	W24
	.byte		N11	, Fn3, v104
	.byte	W12
	.byte		N13	, Gn3, v112
	.byte	W12
	.byte		N12	, As3, v088
	.byte	W12
	.byte			Cn4, v100
	.byte	W12
	.byte			Dn4, v104
	.byte	W24
	.byte		N42	, Cn4, v100
	.byte	W60
	.byte	W12
	.byte		N15	, Fn3, v104
	.byte	W12
	.byte		N12	, Gn3, v108
	.byte	W12
	.byte		N13	, As3, v088
	.byte	W12
	.byte		N12	, Cn4, v100
	.byte	W12
	.byte		N14	, As3, v092
	.byte	W24
	.byte		N24	, Dn4, v108
	.byte	W12
	.byte	W12
	.byte		N23	, Cn4, v100
	.byte	W24
	.byte		N44	, As3, v096
	.byte	W60
	.byte		N96	, As1, v100
	.byte	W96
	.byte			Cn2, v108
	.byte	W96
	.byte			Fn2, v112
	.byte	W96
	.byte			Ds2, v104
	.byte	W96
	.byte			As1
	.byte	W96
	.byte			Cn2, v108
	.byte	W96
	.byte			Fn2, v116
	.byte	W96
	.byte		N68	, Ds2, v104
	.byte	W72
	.byte		N05	
	.byte	W06
	.byte		N07	, Fn2, v112
	.byte	W06
	.byte		N09	, Ds2, v104
	.byte	W12
	.byte	PATT	
		.word	song068_6_1
	.byte	GOTO	
		.word	song068_6_2
	.byte		N13	, Cn4, v080
	.byte	W12
	.byte		N12	, Dn4, v104
	.byte	W24
	.byte		N36	, Cn4, v096
	.byte	W36
	.byte	FINE

	@********************** Track  7 **********************@

	.global song068_7
song068_7:	@ 0x082A18F3
	.byte	KEYSH	, 0
	.byte	VOICE	, 0
	.byte	VOL	, v063
	.byte	PAN	, c_v
	.byte	MOD	, 0
	.byte	W03
song068_7_1:
	.byte		N14	, As4, v072
	.byte	W24
	.byte		N12	, Gn4
	.byte	W12
	.byte		N15	, Fn4
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte		N13	, Gn4
	.byte	W12
	.byte		N12	, As4
	.byte	W12
	.byte	PEND
song068_7_2:
	.byte		N13	, Cn5, v072
	.byte	W12
	.byte		N12	, Dn5
	.byte	W24
	.byte		N36	, Cn5
	.byte	W13
	.byte	MOD	, 1
	.byte	W02
	.byte		3
	.byte	W04
	.byte		6
	.byte	W07
	.byte		8
	.byte	W19
	.byte		1
	.byte	W01
	.byte		0
	.byte	W14
	.byte	W12
	.byte		N13	, Fn4
	.byte	W12
	.byte		N12	, Gn4
	.byte	W12
	.byte			As4
	.byte	W12
	.byte			Cn5
	.byte	W12
	.byte		N17	, As4
	.byte	W24
	.byte		N23	, Dn5
	.byte	W12
	.byte	W12
	.byte		N13	, As4
	.byte	W12
	.byte		N11	, Gn4
	.byte	W12
	.byte		N36	, Fn4
	.byte	W14
	.byte	MOD	, 2
	.byte	W10
	.byte		5
	.byte	W19
	.byte		1
	.byte	W01
	.byte		0
	.byte	W01
	.byte	W15
	.byte		N15	, As4
	.byte	W24
	.byte		N14	, Gn4
	.byte	W12
	.byte		N15	, Fn4
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte		N13	, Gn4
	.byte	W12
	.byte		N12	, As4
	.byte	W12
	.byte			Cn5
	.byte	W12
	.byte			Dn5
	.byte	W24
	.byte		N42	, Cn5
	.byte	W17
	.byte	MOD	, 2
	.byte	W07
	.byte		5
	.byte	W20
	.byte		0
	.byte	W16
	.byte	W12
	.byte		N15	, Fn4
	.byte	W12
	.byte		N12	, Gn4
	.byte	W12
	.byte		N13	, As4
	.byte	W12
	.byte		N12	, Cn5
	.byte	W12
	.byte		N14	, As4
	.byte	W24
	.byte		N24	, Dn5
	.byte	W12
	.byte	W12
	.byte		N23	, Cn5
	.byte	W24
	.byte		N44	, As4
	.byte	W19
	.byte	MOD	, 1
	.byte	W08
	.byte		3
	.byte	W09
	.byte		6
	.byte	W15
	.byte		3
	.byte	W01
	.byte		0
	.byte	W08
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song068_7_1
	.byte	GOTO	
		.word	song068_7_2
	.byte		N13	, Cn5, v072
	.byte	W12
	.byte		N12	, Dn5
	.byte	W24
	.byte		N36	, Cn5
	.byte	W13
	.byte	MOD	, 1
	.byte	W02
	.byte		3
	.byte	W04
	.byte		6
	.byte	W07
	.byte		8
	.byte	W19
	.byte		1
	.byte	W01
	.byte		0
	.byte	FINE

	@********************** Track  8 **********************@

	.global song068_8
song068_8:	@ 0x082A19BA
	.byte	KEYSH	, 0
	.byte	VOICE	, 118
	.byte	VOL	, v085
	.byte	PAN	, c_v-34
	.byte	W03
song068_8_1:
	.byte		N05	, As1, v072
	.byte	W06
	.byte			Dn2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			Dn2
	.byte	W06
	.byte			As1
	.byte	W06
	.byte			Fn1
	.byte	W06
	.byte			As1
	.byte	W06
	.byte			Dn2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			Dn2
	.byte	W06
	.byte			As1
	.byte	W06
	.byte			Fn1
	.byte	W06
	.byte	PEND
song068_8_2:
	.byte		N05	, Cn2, v072
	.byte	W06
	.byte			En2
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			En2
	.byte	W06
	.byte			Cn2
	.byte	W06
	.byte			Gn1
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Cn2
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			Dn2
	.byte	W06
	.byte			Gn1
	.byte	W06
	.byte			En1
	.byte	W06
	.byte	PEND
song068_8_3:
	.byte		N05	, Fn2, v072
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte	PEND
song068_8_4:
	.byte		N05	, Ds2, v072
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Ds3
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			Cs2
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song068_8_1
	.byte	PATT	
		.word	song068_8_2
	.byte	PATT	
		.word	song068_8_3
	.byte	PATT	
		.word	song068_8_4
	.byte	PATT	
		.word	song068_8_1
	.byte	PATT	
		.word	song068_8_2
	.byte	PATT	
		.word	song068_8_3
	.byte	PATT	
		.word	song068_8_4
	.byte		N05	, As1, v080
	.byte	W06
	.byte			Dn2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			Dn2
	.byte	W06
	.byte			As1
	.byte	W06
	.byte			Fn1
	.byte	W06
	.byte			As1
	.byte	W06
	.byte			Dn2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			Dn2
	.byte	W06
	.byte			As1
	.byte	W06
	.byte			Fn1
	.byte	W06
	.byte			Cn2
	.byte	W06
	.byte			En2
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			En2
	.byte	W06
	.byte			Cn2
	.byte	W06
	.byte			Gn1
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Cn2
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			Dn2
	.byte	W06
	.byte			Gn1
	.byte	W06
	.byte			En1
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Ds3
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			Cs2
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte	PATT	
		.word	song068_8_1
	.byte	GOTO	
		.word	song068_8_2
	.byte	PATT	
		.word	song068_8_2
	.byte	FINE

	@********************** Track  9 **********************@

	.global song068_9
song068_9:	@ 0x082A1B09
	.byte	KEYSH	, 0
	.byte	VOICE	, 118
	.byte	VOL	, v077
	.byte	PAN	, c_v+56
	.byte	W03
song068_9_1:
	.byte	W02
	.byte		N05	, As1, v072
	.byte	W06
	.byte			Dn2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			Dn2
	.byte	W06
	.byte			As1
	.byte	W06
	.byte			Fn1
	.byte	W06
	.byte			As1
	.byte	W06
	.byte			Dn2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			Dn2
	.byte	W06
	.byte			As1
	.byte	W06
	.byte			Fn1
	.byte	W04
	.byte	PEND
song068_9_2:
	.byte	W02
	.byte		N05	, Cn2, v072
	.byte	W06
	.byte			En2
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			En2
	.byte	W06
	.byte			Cn2
	.byte	W06
	.byte			Gn1
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Cn2
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			Dn2
	.byte	W06
	.byte			Gn1
	.byte	W06
	.byte			En1
	.byte	W04
	.byte	PEND
song068_9_3:
	.byte	W02
	.byte		N05	, Fn2, v072
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			Ds2
	.byte	W04
	.byte	PEND
song068_9_4:
	.byte	W02
	.byte		N05	, Ds2, v072
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Ds3
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			Cs2
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			Gs1
	.byte	W04
	.byte	PEND
	.byte	PATT	
		.word	song068_9_1
	.byte	PATT	
		.word	song068_9_2
	.byte	PATT	
		.word	song068_9_3
	.byte	PATT	
		.word	song068_9_4
	.byte	PATT	
		.word	song068_9_1
	.byte	PATT	
		.word	song068_9_2
	.byte	PATT	
		.word	song068_9_3
	.byte	PATT	
		.word	song068_9_4
	.byte	W02
	.byte		N05	, As1, v080
	.byte	W06
	.byte			Dn2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			Dn2
	.byte	W06
	.byte			As1
	.byte	W06
	.byte			Fn1
	.byte	W06
	.byte			As1
	.byte	W06
	.byte			Dn2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			Dn2
	.byte	W06
	.byte			As1
	.byte	W06
	.byte			Fn1
	.byte	W04
	.byte	W02
	.byte			Cn2
	.byte	W06
	.byte			En2
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			En2
	.byte	W06
	.byte			Cn2
	.byte	W06
	.byte			Gn1
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Cn2
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			Dn2
	.byte	W06
	.byte			Gn1
	.byte	W06
	.byte			En1
	.byte	W04
	.byte	W02
	.byte			Fn2
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			Ds2
	.byte	W04
	.byte	W02
	.byte		N05	
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Ds3
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			Cs2
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			Gs1
	.byte	W04
	.byte	PATT	
		.word	song068_9_1
	.byte	GOTO	
		.word	song068_9_2
	.byte	PATT	
		.word	song068_9_2
	.byte	W01
	.byte	FINE
    
	mAlignWord
	.global song068
song068:	@ 0x082A1C64
	.byte	9		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	.word	voicegroup008		@ voicegroup/tone

	.word	song068_1		@ track
	.word	song068_2		@ track
	.word	song068_3		@ track
	.word	song068_4		@ track
	.word	song068_5		@ track
	.word	song068_6		@ track
	.word	song068_7		@ track
	.word	song068_8		@ track
	.word	song068_9		@ track

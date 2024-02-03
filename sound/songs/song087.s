	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song087_1
song087_1:	@ 0x082AD37C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 72
	.byte	VOICE	, 11
	.byte	VOL	, v089
	.byte	PAN	, c_v-14
	.byte		N28	, Ds2, v092
	.byte		N28	, Gs2, v096
	.byte		N28	, Cn3
	.byte	W36
	.byte		N48	, Fn2, v092
	.byte		N54	, As2, v088
	.byte		N48	, Dn3
	.byte	W60
	.byte		N32	, Fs2, v092
	.byte		N32	, Bn2, v096
	.byte		N32	, Ds3, v104
	.byte	W36
	.byte		N56	, Gs2, v100
	.byte		N54	, Cs3
	.byte		N56	, Fn3, v104
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
	.byte		N20	, Gs2, v092
	.byte		N21	, Cn3, v088
	.byte		N21	, Fn3, v100
	.byte	W12
	.byte	W12
	.byte		N11	, As2, v092
	.byte		N11	, Ds3
	.byte		N11	, Gs3, v104
	.byte	W24
	.byte		N22	, As2, v092
	.byte		N22	, Ds3, v108
	.byte		N21	, Gn3, v112
	.byte	W24
	.byte		N05	, As2, v108
	.byte		N04	, Ds3, v104
	.byte		N05	, Gs3, v112
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
	.byte		N21	, As2, v088
	.byte		N20	, Ds3, v092
	.byte		N21	, As3, v100
	.byte	W12
	.byte	W12
	.byte		N11	, Ds3, v092
	.byte		N11	, Fn3
	.byte		N11	, As3, v104
	.byte	W24
	.byte		N22	, As2, v092
	.byte		N22	, Ds3, v108
	.byte		N21	, Gn3, v112
	.byte	W24
	.byte		N05	, Cn3, v108
	.byte		N04	, Fn3, v104
	.byte		N05	, As3, v112
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
	.byte			Fn3
	.byte		N05	, Gs3
	.byte	W12
	.byte		N13	, Gn3
	.byte		N13	, As3
	.byte	W18
	.byte		N05	, Fn3
	.byte		N05	, Cn4
	.byte	W18
	.byte		N56	, Ds3
	.byte		N56	, Ds4
	.byte	W60
	.byte	W96
	.byte	W96
song087_1_1:
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	song087_1_1
	.byte	FINE

	@********************** Track  2 **********************@

	.global song087_2
song087_2:	@ 0x082AD45A
	.byte	KEYSH	, 0
	.byte	VOICE	, 20
	.byte	VOL	, v060
	.byte	PAN	, c_v
	.byte	W96
	.byte	W96
song087_2_1:
	.byte		N05	, Ds3, v116
	.byte	W06
	.byte		N06	, Ds3, v120
	.byte	W30
	.byte		N05	, Fn3
	.byte	W06
	.byte			Fn3, v124
	.byte	W54
	.byte	PEND
	.byte	W96
	.byte	PATT	
		.word	song087_2_1
	.byte	W96
	.byte		N05	, Ds3, v116
	.byte	W06
	.byte		N06	, Ds3, v120
	.byte	W30
	.byte		N05	, Fn3
	.byte	W06
	.byte			Fn3, v124
	.byte	W30
	.byte			Ds3, v112
	.byte	W12
	.byte		N03	, Fn3
	.byte	W12
	.byte		N13	, Gn3, v124
	.byte	W18
	.byte		N05	, Gs3, v112
	.byte	W18
	.byte		N48	, As3, v127
	.byte	W60
	.byte	W96
	.byte	W96
song087_2_2:
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	song087_2_2
	.byte	FINE

	@********************** Track  3 **********************@

	.global song087_3
song087_3:	@ 0x082AD4A4
	.byte	KEYSH	, 0
	.byte	VOICE	, 21
	.byte	VOL	, v052
	.byte	PAN	, c_v
	.byte		N36	, Ds4, v104
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
	.byte		N03	, Gs4
	.byte	W12
	.byte		N13	, As4, v124
	.byte	W18
	.byte		N05	, Cn5, v112
	.byte	W18
	.byte		N48	, Ds5, v127
	.byte	W60
	.byte	W96
	.byte	W96
song087_3_1:
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	song087_3_1
	.byte	FINE

	@********************** Track  4 **********************@

	.global song087_4
song087_4:	@ 0x082AD56F
	.byte	KEYSH	, 0
	.byte	VOICE	, 22
	.byte	VOL	, v080
	.byte	PAN	, c_v-19
	.byte	W96
	.byte	W96
song087_4_1:
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
		.word	song087_4_1
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
	.byte		N04	, Gs4
	.byte	W12
	.byte		N13	, Gn3
	.byte	W18
	.byte		N05	, Fn3
	.byte	W18
	.byte		N56	, Ds3
	.byte	W60
	.byte	W96
	.byte	W96
song087_4_2:
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	song087_4_2
	.byte	FINE

	@********************** Track  5 **********************@

	.global song087_5
song087_5:	@ 0x082AD5AF
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
	.byte		N05	, Gs1, v116
	.byte	W06
	.byte		N06	, Gs1, v120
	.byte	W30
	.byte		N04	, As1
	.byte	W06
	.byte		N06	, As1, v124
	.byte	W30
	.byte			Cn2, v112
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte		N17	, Ds2, v124
	.byte	W18
	.byte		N06	, As1, v112
	.byte	W18
	.byte		N48	, Ds1, v127
	.byte	W60
	.byte	W96
	.byte	W96
song087_5_1:
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	song087_5_1
	.byte	FINE

	@********************** Track  6 **********************@

	.global song087_6
song087_6:	@ 0x082AD67C
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
	.byte	W24
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
	.byte	W84
song087_6_1:
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	song087_6_1
	.byte	FINE

	@********************** Track  7 **********************@

	.global song087_7
song087_7:	@ 0x082AD711
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
	.byte	W24
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
	.byte	W84
song087_7_1:
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	song087_7_1
	.byte	FINE

	@********************** Track  8 **********************@

	.global song087_8
song087_8:	@ 0x082AD7A6
	.byte	KEYSH	, 0
	.byte	VOICE	, 127
	.byte	VOL	, v089
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
song087_8_1:
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
	.byte		N05	, Cs1, v127
	.byte		N32	, Fs2, v108
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
	.byte		N23	, Gs1
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
	.byte		N17	, Cs1, v108
	.byte		N68	, Fs2, v120
	.byte	W60
	.byte	PATT	
		.word	song087_8_1
	.byte	PATT	
		.word	song087_8_1
song087_8_2:
	.byte	PATT	
		.word	song087_8_1
	.byte	PATT	
		.word	song087_8_1
	.byte	GOTO	
		.word	song087_8_2
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

	.global song087_9
song087_9:	@ 0x082AD924
	.byte	VOL	, v095
	.byte	KEYSH	, 0
song087_9_1:
	.byte	W12
	.byte		N09	, Dn1, v060
	.byte	W24
	.byte		N09	
	.byte	W24
	.byte		N09	
	.byte	W24
	.byte		N09	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song087_9_1
song087_9_2:
	.byte		N09	, Dn1, v040
	.byte	W36
	.byte		N09	
	.byte	W36
	.byte		N12	, En1
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song087_9_1
	.byte	PATT	
		.word	song087_9_2
	.byte	PATT	
		.word	song087_9_1
	.byte	W06
	.byte		N09	, Dn1, v040
	.byte	W36
	.byte		N09	
	.byte	W30
	.byte		N21	, Ds1
	.byte	W24
	.byte		N09	, Dn1
	.byte	W18
	.byte		N09	
	.byte	W18
	.byte		N09	
	.byte	W60
	.byte	PATT	
		.word	song087_9_1
	.byte	PATT	
		.word	song087_9_1
song087_9_3:
	.byte	PATT	
		.word	song087_9_1
	.byte	PATT	
		.word	song087_9_1
	.byte	GOTO	
		.word	song087_9_3
	.byte	W12
	.byte		N09	, Dn1, v060
	.byte	W24
	.byte		N09	
	.byte	W24
	.byte		N09	
	.byte	W24
	.byte		N09	
	.byte	W09
	.byte	FINE

	.align 2
	.global song087
song087:	@ 0x082AD988
	.byte	9		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	.word	voicegroup011		@ voicegroup/tone

	.word	song087_1		@ track
	.word	song087_2		@ track
	.word	song087_3		@ track
	.word	song087_4		@ track
	.word	song087_5		@ track
	.word	song087_6		@ track
	.word	song087_7		@ track
	.word	song087_8		@ track
	.word	song087_9		@ track

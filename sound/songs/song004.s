	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song004_1
song004_1:	@ 0x08266440
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 127
	.byte	VOL	, v078
	.byte	PAN	, c_v
	.byte	W03
	.byte	TEMPO	, 60
	.byte		N06	, Gn7, v127
	.byte	W12
	.byte		N12	
	.byte	W11
	.byte		N07	, Fs1
	.byte	W08
	.byte		N04	, An2
	.byte	W05
	.byte		N06	, Fn2
	.byte	W06
	.byte		N04	, Gn7
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N04	, An2
	.byte	W06
	.byte		N12	, Gn7
	.byte	W12
	.byte		N11	, Fs1
	.byte	W12
	.byte		N06	, Fs2
	.byte	W06
	.byte		N04	, An2
	.byte	W06
song004_1_1:
	.byte		N06	, Gn7, v127
	.byte	W12
	.byte		N12	
	.byte	W11
	.byte		N07	, Fs1
	.byte	W08
	.byte		N04	, An2
	.byte	W05
	.byte		N06	, Fn2
	.byte	W06
	.byte		N04	, Gn7
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N04	, An2
	.byte	W06
	.byte		N12	, Gn7
	.byte	W12
	.byte		N11	, Fs1
	.byte	W12
	.byte		N06	, Fs2
	.byte	W06
	.byte		N04	, An2
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song004_1_1
	.byte	PATT	
		.word	song004_1_1
song004_1_3:
	.byte	W96
song004_1_2:
	.byte	W68
	.byte	W03
	.byte		N08	, Fs1, v127
	.byte	W24
	.byte	W01
	.byte	PEND
	.byte	PATT	
		.word	song004_1_1
	.byte	PATT	
		.word	song004_1_1
	.byte	PATT	
		.word	song004_1_1
	.byte	PATT	
		.word	song004_1_1
	.byte	PATT	
		.word	song004_1_1
	.byte	PATT	
		.word	song004_1_1
	.byte	PATT	
		.word	song004_1_1
	.byte	PATT	
		.word	song004_1_1
	.byte	PATT	
		.word	song004_1_1
	.byte	PATT	
		.word	song004_1_1
	.byte	PATT	
		.word	song004_1_1
	.byte	PATT	
		.word	song004_1_1
	.byte	PATT	
		.word	song004_1_1
	.byte	PATT	
		.word	song004_1_1
	.byte	PATT	
		.word	song004_1_1
	.byte	PATT	
		.word	song004_1_2
	.byte	PATT	
		.word	song004_1_1
	.byte	PATT	
		.word	song004_1_1
	.byte	PATT	
		.word	song004_1_1
	.byte	PATT	
		.word	song004_1_1
	.byte	PATT	
		.word	song004_1_1
	.byte	PATT	
		.word	song004_1_1
	.byte	PATT	
		.word	song004_1_1
	.byte	PATT	
		.word	song004_1_1
	.byte	PATT	
		.word	song004_1_1
	.byte	PATT	
		.word	song004_1_1
	.byte	PATT	
		.word	song004_1_1
	.byte	PATT	
		.word	song004_1_1
	.byte	PATT	
		.word	song004_1_1
	.byte	PATT	
		.word	song004_1_1
	.byte	PATT	
		.word	song004_1_1
	.byte	PATT	
		.word	song004_1_1
	.byte	GOTO	
		.word	song004_1_3
	.byte	FINE

	@********************** Track  2 **********************@

	.global song004_2
song004_2:	@ 0x0826654D
	.byte	KEYSH	, 0
	.byte	VOICE	, 60
	.byte	VOL	, v047
	.byte	PAN	, c_v-19
	.byte	W03
song004_2_1:
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
	.byte	PATT	
		.word	song004_2_1
	.byte	PATT	
		.word	song004_2_1
	.byte	PATT	
		.word	song004_2_1
song004_2_2:
	.byte	PATT	
		.word	song004_2_1
	.byte	PATT	
		.word	song004_2_1
	.byte	PATT	
		.word	song004_2_1
	.byte	PATT	
		.word	song004_2_1
	.byte	PATT	
		.word	song004_2_1
	.byte	PATT	
		.word	song004_2_1
	.byte	PATT	
		.word	song004_2_1
	.byte	PATT	
		.word	song004_2_1
	.byte	PATT	
		.word	song004_2_1
	.byte	PATT	
		.word	song004_2_1
	.byte	PATT	
		.word	song004_2_1
	.byte	PATT	
		.word	song004_2_1
	.byte	PATT	
		.word	song004_2_1
	.byte	PATT	
		.word	song004_2_1
	.byte	PATT	
		.word	song004_2_1
	.byte	PATT	
		.word	song004_2_1
	.byte	PATT	
		.word	song004_2_1
	.byte	PATT	
		.word	song004_2_1
	.byte	PATT	
		.word	song004_2_1
	.byte	PATT	
		.word	song004_2_1
	.byte	PATT	
		.word	song004_2_1
	.byte	PATT	
		.word	song004_2_1
	.byte	PATT	
		.word	song004_2_1
	.byte	PATT	
		.word	song004_2_1
	.byte	PATT	
		.word	song004_2_1
	.byte	PATT	
		.word	song004_2_1
	.byte	PATT	
		.word	song004_2_1
	.byte	PATT	
		.word	song004_2_1
	.byte	PATT	
		.word	song004_2_1
	.byte	PATT	
		.word	song004_2_1
	.byte	PATT	
		.word	song004_2_1
	.byte	PATT	
		.word	song004_2_1
	.byte	PATT	
		.word	song004_2_1
	.byte	PATT	
		.word	song004_2_1
	.byte	GOTO	
		.word	song004_2_2
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

	.global song004_3
song004_3:	@ 0x08266656
	.byte	KEYSH	, 0
	.byte	VOICE	, 61
	.byte	VOL	, v066
	.byte	PAN	, c_v-19
	.byte	W03
song004_3_1:
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
	.byte	PATT	
		.word	song004_3_1
	.byte	PATT	
		.word	song004_3_1
	.byte	PATT	
		.word	song004_3_1
song004_3_5:
	.byte	PATT	
		.word	song004_3_1
song004_3_4:
	.byte	W12
	.byte		N12	, Gn7, v068
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W36
	.byte	PEND
	.byte	PATT	
		.word	song004_3_1
	.byte	PATT	
		.word	song004_3_1
song004_3_2:
	.byte	W12
	.byte		N12	, Gn7, v068
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte	PEND
song004_3_3:
	.byte		N11	, Gn7, v068
	.byte	W12
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song004_3_1
	.byte	PATT	
		.word	song004_3_1
	.byte	PATT	
		.word	song004_3_2
	.byte	PATT	
		.word	song004_3_3
	.byte	PATT	
		.word	song004_3_1
	.byte	PATT	
		.word	song004_3_1
	.byte	PATT	
		.word	song004_3_2
	.byte	PATT	
		.word	song004_3_3
	.byte	PATT	
		.word	song004_3_1
	.byte	PATT	
		.word	song004_3_1
	.byte	PATT	
		.word	song004_3_2
	.byte	PATT	
		.word	song004_3_4
	.byte	PATT	
		.word	song004_3_1
	.byte	PATT	
		.word	song004_3_1
	.byte	PATT	
		.word	song004_3_1
	.byte	PATT	
		.word	song004_3_1
	.byte	PATT	
		.word	song004_3_1
	.byte	PATT	
		.word	song004_3_1
	.byte	PATT	
		.word	song004_3_1
	.byte	PATT	
		.word	song004_3_1
	.byte	PATT	
		.word	song004_3_1
	.byte	PATT	
		.word	song004_3_1
	.byte	PATT	
		.word	song004_3_2
	.byte	PATT	
		.word	song004_3_3
	.byte	PATT	
		.word	song004_3_1
	.byte	PATT	
		.word	song004_3_1
	.byte	PATT	
		.word	song004_3_1
	.byte	PATT	
		.word	song004_3_1
	.byte	GOTO	
		.word	song004_3_5
	.byte	PATT	
		.word	song004_3_1
	.byte	FINE

	@********************** Track  4 **********************@

	.global song004_4
song004_4:	@ 0x08266743
	.byte	KEYSH	, 0
	.byte	VOICE	, 46
	.byte	VOL	, v069
	.byte	PAN	, c_v-6
	.byte	W03
song004_4_1:
	.byte	W01
	.byte		N05	, Fs2, v100
	.byte	W06
	.byte			Fs1
	.byte	W12
	.byte			En1
	.byte	W06
	.byte			Fs1
	.byte	W06
	.byte			En1
	.byte	W06
	.byte			Fs2
	.byte	W06
	.byte			Fs1
	.byte	W12
	.byte			En1
	.byte	W06
	.byte			En2
	.byte	W06
	.byte			En1
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte			En2
	.byte	W06
	.byte			En1
	.byte	W05
	.byte	PEND
song004_4_2:
	.byte	W01
	.byte		N05	, Fs1, v100
	.byte	W06
	.byte			Cs1
	.byte	W06
	.byte			Fs2
	.byte	W06
	.byte			Fs1
	.byte	W12
	.byte			En2
	.byte	W06
	.byte			En1
	.byte	W12
	.byte			Fs1
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte			En1
	.byte	W06
	.byte			Fs2
	.byte	W06
	.byte			En1
	.byte	W06
	.byte			En2
	.byte	W06
	.byte			En1
	.byte	W05
	.byte	PEND
	.byte	PATT	
		.word	song004_4_1
	.byte	PATT	
		.word	song004_4_2
song004_4_4:
	.byte	PATT	
		.word	song004_4_1
song004_4_3:
	.byte	W01
	.byte		N05	, Fs1, v100
	.byte	W06
	.byte			Cs1
	.byte	W06
	.byte			Fs2
	.byte	W06
	.byte			Fs1
	.byte	W12
	.byte			En2
	.byte	W06
	.byte			En1
	.byte	W12
	.byte			Fs1
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte			En1
	.byte	W06
	.byte			En2
	.byte	W06
	.byte			En1
	.byte	W17
	.byte	PEND
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song004_4_1
	.byte	PATT	
		.word	song004_4_2
	.byte	PATT	
		.word	song004_4_1
	.byte	PATT	
		.word	song004_4_2
	.byte	PATT	
		.word	song004_4_1
	.byte	PATT	
		.word	song004_4_2
	.byte	PATT	
		.word	song004_4_1
	.byte	PATT	
		.word	song004_4_2
	.byte	PATT	
		.word	song004_4_1
	.byte	PATT	
		.word	song004_4_2
	.byte	PATT	
		.word	song004_4_1
	.byte	PATT	
		.word	song004_4_3
	.byte	PATT	
		.word	song004_4_1
	.byte	PATT	
		.word	song004_4_2
	.byte	PATT	
		.word	song004_4_1
	.byte	PATT	
		.word	song004_4_2
	.byte	PATT	
		.word	song004_4_1
	.byte	PATT	
		.word	song004_4_2
	.byte	PATT	
		.word	song004_4_1
	.byte	PATT	
		.word	song004_4_2
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song004_4_1
	.byte	PATT	
		.word	song004_4_2
	.byte	PATT	
		.word	song004_4_1
	.byte	PATT	
		.word	song004_4_2
	.byte	GOTO	
		.word	song004_4_4
	.byte	PATT	
		.word	song004_4_1
	.byte	FINE

	@********************** Track  5 **********************@

	.global song004_5
song004_5:	@ 0x0826683C
	.byte	KEYSH	, 0
	.byte	VOICE	, 71
	.byte	VOL	, v062
	.byte	PAN	, c_v-54
	.byte	W03
	.byte	W96
song004_5_1:
	.byte	W42
	.byte	W01
	.byte		N10	, As2, v100
	.byte	W12
	.byte		N03	, As2, v120
	.byte	W05
	.byte			As2, v088
	.byte	W13
	.byte			As2, v092
	.byte	W11
	.byte		N10	, Ds3, v108
	.byte	W12
	.byte	PEND
	.byte	W96
song004_5_3:
	.byte	W60
	.byte		N03	, Cn2, v088
	.byte	W24
	.byte		N10	, Ds3, v108
	.byte	W12
	.byte	PEND
song004_5_4:
	.byte		N05	, Cn3, v100
	.byte	W06
	.byte			Fs2
	.byte	W06
	.byte			Dn2
	.byte	W06
	.byte			Bn1
	.byte	W06
	.byte			Fs2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			En2
	.byte	W06
	.byte			Fs2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			En2
	.byte	W06
	.byte			Cs2
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			Dn2
	.byte	W06
	.byte			Cs2
	.byte	W06
	.byte			As1
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			Dn2
	.byte	W06
	.byte			Bn1
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			En2
	.byte	W06
	.byte			Fs2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			Dn2
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Gn2
	.byte	W18
	.byte	W96
	.byte	PATT	
		.word	song004_5_1
	.byte	W96
	.byte	PATT	
		.word	song004_5_1
	.byte	W96
	.byte	PATT	
		.word	song004_5_1
	.byte	W96
song004_5_2:
	.byte	W42
	.byte	W01
	.byte		N17	, As2, v100
	.byte	W17
	.byte		N03	, Cn2, v088
	.byte	W13
	.byte			As2, v092
	.byte	W11
	.byte		N10	, Ds3, v108
	.byte	W12
	.byte	PEND
	.byte	W96
	.byte	PATT	
		.word	song004_5_1
	.byte	W96
	.byte	PATT	
		.word	song004_5_2
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song004_5_1
	.byte	W96
	.byte	PATT	
		.word	song004_5_1
	.byte	W96
	.byte	PATT	
		.word	song004_5_1
	.byte	W96
	.byte	PATT	
		.word	song004_5_1
	.byte	W96
	.byte	PATT	
		.word	song004_5_1
	.byte	W96
	.byte	PATT	
		.word	song004_5_1
	.byte	W96
	.byte	PATT	
		.word	song004_5_1
	.byte	W96
	.byte	PATT	
		.word	song004_5_3
	.byte	GOTO	
		.word	song004_5_4
	.byte		N05	, Cn3, v100
	.byte	W06
	.byte			Fs2
	.byte	W06
	.byte			Dn2
	.byte	W06
	.byte			Bn1
	.byte	W06
	.byte			Fs2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			En2
	.byte	W06
	.byte			Fs2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			En2
	.byte	W06
	.byte			Cs2
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			Dn2
	.byte	W05
	.byte	FINE

	@********************** Track  6 **********************@

	.global song004_6
song004_6:	@ 0x08266931
	.byte	KEYSH	, 0
	.byte	VOICE	, 74
	.byte	VOL	, v062
	.byte	PAN	, c_v-54
	.byte	W03
song004_6_1:
	.byte	W42
	.byte	W01
	.byte		N11	, Cs3, v100
	.byte	W12
	.byte		N03	, Cs3, v120
	.byte	W05
	.byte		N05	, Cs3, v127
	.byte	W36
	.byte	PEND
	.byte	W96
	.byte	PATT	
		.word	song004_6_1
song004_6_4:
	.byte	W42
	.byte	W01
	.byte		N17	, Cs3, v100
	.byte	W30
	.byte		N03	, Cs3, v092
	.byte	W23
	.byte	PEND
song004_6_5:
	.byte	W96
	.byte	W96
song004_6_2:
	.byte	W13
	.byte		N11	, Cs3, v100
	.byte	W12
	.byte		N03	, Cs3, v120
	.byte	W05
	.byte		N05	, Cs3, v127
	.byte	W13
	.byte		N11	, Cs3, v100
	.byte	W12
	.byte		N03	, Cs3, v120
	.byte	W05
	.byte		N05	, Cs3, v127
	.byte	W36
	.byte	PEND
song004_6_3:
	.byte	W13
	.byte		N11	, Cs3, v100
	.byte	W12
	.byte		N03	, Cs3, v120
	.byte	W05
	.byte		N05	, Cs3, v127
	.byte	W66
	.byte	PEND
	.byte	PATT	
		.word	song004_6_2
	.byte	PATT	
		.word	song004_6_3
	.byte	PATT	
		.word	song004_6_1
	.byte	PATT	
		.word	song004_6_3
	.byte	PATT	
		.word	song004_6_1
	.byte	W96
	.byte	PATT	
		.word	song004_6_1
	.byte	PATT	
		.word	song004_6_3
	.byte	PATT	
		.word	song004_6_1
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song004_6_1
	.byte	W96
	.byte	PATT	
		.word	song004_6_1
	.byte	W96
	.byte	PATT	
		.word	song004_6_1
	.byte	W96
	.byte	PATT	
		.word	song004_6_1
	.byte	W96
	.byte	PATT	
		.word	song004_6_2
	.byte	PATT	
		.word	song004_6_3
	.byte	PATT	
		.word	song004_6_2
	.byte	PATT	
		.word	song004_6_3
	.byte	PATT	
		.word	song004_6_1
	.byte	W96
	.byte	PATT	
		.word	song004_6_1
	.byte	PATT	
		.word	song004_6_4
	.byte	GOTO	
		.word	song004_6_5
	.byte	FINE

	@********************** Track  7 **********************@

	.global song004_7
song004_7:	@ 0x082669F4
	.byte	KEYSH	, 0
	.byte	VOICE	, 95
	.byte	VOL	, v056
	.byte	PAN	, c_v-4
	.byte	W03
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song004_7_5:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N92	, Fs3, v112
	.byte	W96
	.byte		N80	, Gs3
	.byte	W84
	.byte		N06	, Fs3, v100
	.byte	W06
	.byte			Gs3, v120
	.byte	W06
	.byte		N96	, An3, v116
	.byte	W96
	.byte			Bn3, v108
	.byte	W96
song004_7_1:
	.byte	W12
	.byte		N06	, Cs4, v124
	.byte	W30
	.byte		N14	
	.byte	W18
	.byte		N05	, Cs4, v120
	.byte	W36
	.byte	PEND
song004_7_2:
	.byte	W12
	.byte		N05	, Cs4, v120
	.byte	W30
	.byte		N11	, Bn3
	.byte	W18
	.byte		N04	, Bn3, v108
	.byte	W12
	.byte			Bn3, v112
	.byte	W12
	.byte		N05	, En4, v108
	.byte	W12
	.byte	PEND
song004_7_3:
	.byte	W12
	.byte		N06	, Cs4, v124
	.byte	W30
	.byte		N12	, Cs4, v108
	.byte	W18
	.byte		N04	, Cs4, v100
	.byte	W36
	.byte	PEND
song004_7_4:
	.byte	W12
	.byte		N05	, Cs4, v120
	.byte	W30
	.byte		N11	, Bn3
	.byte	W18
	.byte		N04	, Bn3, v108
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N05	, En4, v112
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song004_7_1
	.byte	PATT	
		.word	song004_7_2
	.byte	PATT	
		.word	song004_7_3
	.byte	PATT	
		.word	song004_7_4
	.byte	PATT	
		.word	song004_7_1
	.byte	PATT	
		.word	song004_7_2
	.byte	PATT	
		.word	song004_7_3
	.byte	PATT	
		.word	song004_7_4
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	song004_7_5
	.byte	FINE

	@********************** Track  8 **********************@

	.global song004_8
song004_8:	@ 0x08266A97
	.byte	KEYSH	, 0
	.byte	VOICE	, 0
	.byte	VOL	, v056
	.byte	PAN	, c_v
	.byte	W03
song004_8_1:
	.byte		N04	, Cs5, v092
	.byte	W24
	.byte		N18	, Bn4
	.byte	W19
	.byte		N03	, As4
	.byte	W36
	.byte	W01
	.byte			Fs4
	.byte	W11
	.byte			En4
	.byte	W05
	.byte	PEND
song004_8_2:
	.byte		N06	, Fs4, v092
	.byte	W07
	.byte		N04	, En4
	.byte	W05
	.byte		N02	, Fs4
	.byte	W07
	.byte		N03	, As4
	.byte	W76
	.byte	W01
	.byte	PEND
song004_8_3:
	.byte		N05	, Cs5, v092
	.byte	W24
	.byte		N18	, Bn4
	.byte	W19
	.byte		N04	, As4
	.byte	W36
	.byte	W01
	.byte		N03	, Fs4
	.byte	W11
	.byte			En4
	.byte	W05
	.byte	PEND
song004_8_4:
	.byte		N06	, Fs4, v092
	.byte	W07
	.byte		N03	, En4
	.byte	W05
	.byte		N02	, Fs4
	.byte	W07
	.byte		N04	, As4
	.byte	W17
	.byte		N05	, Bn4
	.byte	W07
	.byte		N04	, As4
	.byte	W05
	.byte		N03	, Bn4
	.byte	W07
	.byte			Cs5
	.byte	W40
	.byte	W01
	.byte	PEND
song004_8_5:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song004_8_1
	.byte	PATT	
		.word	song004_8_2
	.byte	PATT	
		.word	song004_8_3
	.byte	PATT	
		.word	song004_8_4
	.byte	PATT	
		.word	song004_8_1
	.byte	PATT	
		.word	song004_8_2
	.byte	PATT	
		.word	song004_8_3
	.byte	PATT	
		.word	song004_8_4
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song004_8_1
	.byte	PATT	
		.word	song004_8_2
	.byte	PATT	
		.word	song004_8_3
	.byte	PATT	
		.word	song004_8_4
	.byte	PATT	
		.word	song004_8_1
	.byte	PATT	
		.word	song004_8_2
	.byte	PATT	
		.word	song004_8_3
	.byte	PATT	
		.word	song004_8_4
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song004_8_1
	.byte	PATT	
		.word	song004_8_2
	.byte	PATT	
		.word	song004_8_3
	.byte	PATT	
		.word	song004_8_4
	.byte	GOTO	
		.word	song004_8_5
	.byte	FINE

	@********************** Track  9 **********************@

	.global song004_9
song004_9:	@ 0x08266B62
	.byte	KEYSH	, 0
	.byte	VOICE	, 98
	.byte	VOL	, v078
	.byte	PAN	, c_v+11
	.byte	W03
song004_9_5:
	.byte		N04	, As2, v120
	.byte	W24
	.byte		N18	, Gs2
	.byte	W19
	.byte		N03	, Gn2
	.byte	W36
	.byte	W02
	.byte			Ds2
	.byte	W10
	.byte			Cs2
	.byte	W05
	.byte	PEND
song004_9_1:
	.byte		N06	, Ds2, v120
	.byte	W07
	.byte		N04	, Cs2
	.byte	W05
	.byte		N02	, Ds2
	.byte	W07
	.byte		N03	, Gn2
	.byte	W76
	.byte	W01
	.byte	PEND
song004_9_2:
	.byte		N05	, As2, v120
	.byte	W24
	.byte		N18	, Gs2
	.byte	W19
	.byte		N04	, Gn2
	.byte	W36
	.byte	W01
	.byte		N03	, Ds2
	.byte	W11
	.byte			Cs2
	.byte	W05
	.byte	PEND
song004_9_3:
	.byte		N06	, Ds2, v120
	.byte	W07
	.byte		N03	, Cs2
	.byte	W05
	.byte		N02	, Ds2
	.byte	W07
	.byte		N04	, Gn2
	.byte	W17
	.byte		N05	, Gs2
	.byte	W07
	.byte		N04	, Gn2
	.byte	W05
	.byte		N03	, Gs2
	.byte	W07
	.byte			As2
	.byte	W40
	.byte	W01
	.byte	PEND
song004_9_6:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song004_9_4:
	.byte		N04	, As2, v120
	.byte	W24
	.byte		N18	, Gs2
	.byte	W19
	.byte		N03	, Gn2
	.byte	W36
	.byte	W01
	.byte			Ds2
	.byte	W11
	.byte			Cs2
	.byte	W05
	.byte	PEND
	.byte	PATT	
		.word	song004_9_1
	.byte	PATT	
		.word	song004_9_2
	.byte	PATT	
		.word	song004_9_3
	.byte	PATT	
		.word	song004_9_4
	.byte	PATT	
		.word	song004_9_1
	.byte	PATT	
		.word	song004_9_2
	.byte	PATT	
		.word	song004_9_3
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song004_9_5
	.byte	PATT	
		.word	song004_9_1
	.byte	PATT	
		.word	song004_9_2
	.byte	PATT	
		.word	song004_9_3
	.byte	PATT	
		.word	song004_9_5
	.byte	PATT	
		.word	song004_9_1
	.byte	PATT	
		.word	song004_9_2
	.byte	PATT	
		.word	song004_9_3
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song004_9_5
	.byte	PATT	
		.word	song004_9_1
	.byte	PATT	
		.word	song004_9_2
	.byte	PATT	
		.word	song004_9_3
	.byte	GOTO	
		.word	song004_9_6
	.byte	FINE

	@********************** Track  10 **********************@

	.global song004_10
song004_10:	@ 0x08266C38
	.byte	KEYSH	, 0
	.byte	VOICE	, 118
	.byte	VOL	, v075
	.byte	PAN	, c_v+56
	.byte	W03
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song004_10_3:
	.byte		N06	, An2, v100
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			Bn1
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			Cn2
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			En2
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Cs2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			Cn2
	.byte	W06
	.byte			Cs2
	.byte	W06
	.byte			As1
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Bn1
	.byte	W06
	.byte	PEND
	.byte			As1
	.byte	W06
	.byte			Gn1
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			En2
	.byte	W06
	.byte			Bn1
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte			En2
	.byte	W06
	.byte			Cs2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			Cn2
	.byte	W06
	.byte			Dn2
	.byte	W06
	.byte			Bn1
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			En2
	.byte	W18
song004_10_1:
	.byte	W01
	.byte		N05	, Fs2, v092
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Fs2
	.byte	W06
	.byte			En2
	.byte	W06
	.byte			Fs2
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Fs2
	.byte	W06
	.byte			Cs2
	.byte	W05
	.byte	PEND
song004_10_2:
	.byte	W01
	.byte		N05	, Fs2, v092
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Fs2
	.byte	W06
	.byte			Cs2
	.byte	W06
	.byte			Bn1
	.byte	W06
	.byte			En2
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte			En3
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte			Fs2
	.byte	W06
	.byte			Bn1
	.byte	W06
	.byte			En1
	.byte	W05
	.byte	PEND
	.byte	PATT	
		.word	song004_10_1
	.byte	PATT	
		.word	song004_10_2
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	song004_10_3
	.byte	PATT	
		.word	song004_10_3
	.byte	FINE

	@********************** Track  11 **********************@

	.global song004_11
song004_11:	@ 0x08266CFD
	.byte	KEYSH	, 0
	.byte	VOICE	, 118
	.byte	VOL	, v075
	.byte	PAN	, c_v-34
	.byte	W03
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song004_11_3:
	.byte	W02
	.byte		N06	, An2, v100
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			Bn1
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			Cn2
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			En2
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Cs2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			Cn2
	.byte	W06
	.byte			Cs2
	.byte	W06
	.byte			As1
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Bn1
	.byte	W04
	.byte	PEND
	.byte	W02
	.byte			As1
	.byte	W06
	.byte			Gn1
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			En2
	.byte	W06
	.byte			Bn1
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte			En2
	.byte	W06
	.byte			Cs2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			Cn2
	.byte	W06
	.byte			Dn2
	.byte	W06
	.byte			Bn1
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			En2
	.byte	W16
song004_11_1:
	.byte	W02
	.byte		N05	, Fs2, v092
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Fs2
	.byte	W06
	.byte			En2
	.byte	W06
	.byte			Fs2
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Fs2
	.byte	W06
	.byte			Cs2
	.byte	W04
	.byte	PEND
song004_11_2:
	.byte	W02
	.byte		N05	, Fs2, v092
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Fs2
	.byte	W06
	.byte			Cs2
	.byte	W06
	.byte			Bn1
	.byte	W06
	.byte			En2
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte			En3
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte			Fs2
	.byte	W06
	.byte			Bn1
	.byte	W06
	.byte			En1
	.byte	W04
	.byte	PEND
	.byte	PATT	
		.word	song004_11_1
	.byte	PATT	
		.word	song004_11_2
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	song004_11_3
	.byte	PATT	
		.word	song004_11_3
	.byte	W02
	.byte	FINE

	@********************** Track  12 **********************@

	.global song004_12
song004_12:	@ 0x08266DC5
	.byte	KEYSH	, 0
	.byte	VOICE	, 83
	.byte	VOL	, v069
	.byte	PAN	, c_v-34
	.byte	W03
song004_12_1:
	.byte		N06	, An2, v092
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			Bn1
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			Cn2
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			En2
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Cs2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			Cn2
	.byte	W06
	.byte			Cs2
	.byte	W06
	.byte			As1
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Bn1
	.byte	W06
	.byte	PEND
song004_12_2:
	.byte		N06	, As1, v092
	.byte	W06
	.byte			Gn1
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			En2
	.byte	W06
	.byte			Bn1
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte			En2
	.byte	W06
	.byte			Cs2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			Cn2
	.byte	W06
	.byte			Dn2
	.byte	W06
	.byte			Bn1
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			En2
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte			Fn1
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song004_12_1
	.byte	PATT	
		.word	song004_12_2
song004_12_3:
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song004_12_1
	.byte	PATT	
		.word	song004_12_2
	.byte	PATT	
		.word	song004_12_1
	.byte	PATT	
		.word	song004_12_2
	.byte	PATT	
		.word	song004_12_1
	.byte	PATT	
		.word	song004_12_2
	.byte	PATT	
		.word	song004_12_1
	.byte	PATT	
		.word	song004_12_2
	.byte	PATT	
		.word	song004_12_1
	.byte	PATT	
		.word	song004_12_2
	.byte	PATT	
		.word	song004_12_1
	.byte	PATT	
		.word	song004_12_2
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song004_12_1
	.byte	PATT	
		.word	song004_12_2
	.byte	PATT	
		.word	song004_12_1
	.byte	PATT	
		.word	song004_12_2
	.byte	PATT	
		.word	song004_12_1
	.byte	PATT	
		.word	song004_12_2
	.byte	PATT	
		.word	song004_12_1
	.byte	PATT	
		.word	song004_12_2
	.byte	PATT	
		.word	song004_12_1
	.byte	PATT	
		.word	song004_12_2
	.byte	PATT	
		.word	song004_12_1
	.byte	PATT	
		.word	song004_12_2
	.byte	PATT	
		.word	song004_12_1
	.byte	PATT	
		.word	song004_12_2
	.byte	PATT	
		.word	song004_12_1
	.byte	PATT	
		.word	song004_12_2
	.byte	GOTO	
		.word	song004_12_3
	.byte	FINE

	@********************** Track  13 **********************@

	.global song004_13
song004_13:	@ 0x08266EB6
	.byte	KEYSH	, 0
	.byte	VOICE	, 83
	.byte	VOL	, v069
	.byte	PAN	, c_v+56
	.byte	W03
song004_13_1:
	.byte	W02
	.byte		N06	, An2, v092
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			Bn1
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			Cn2
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			En2
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Cs2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			Cn2
	.byte	W06
	.byte			Cs2
	.byte	W06
	.byte			As1
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Bn1
	.byte	W04
	.byte	PEND
song004_13_2:
	.byte	W02
	.byte		N06	, As1, v092
	.byte	W06
	.byte			Gn1
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			En2
	.byte	W06
	.byte			Bn1
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte			En2
	.byte	W06
	.byte			Cs2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			Cn2
	.byte	W06
	.byte			Dn2
	.byte	W06
	.byte			Bn1
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			En2
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte			Fn1
	.byte	W04
	.byte	PEND
	.byte	PATT	
		.word	song004_13_1
	.byte	PATT	
		.word	song004_13_2
song004_13_3:
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song004_13_1
	.byte	PATT	
		.word	song004_13_2
	.byte	PATT	
		.word	song004_13_1
	.byte	PATT	
		.word	song004_13_2
	.byte	PATT	
		.word	song004_13_1
	.byte	PATT	
		.word	song004_13_2
	.byte	PATT	
		.word	song004_13_1
	.byte	PATT	
		.word	song004_13_2
	.byte	PATT	
		.word	song004_13_1
	.byte	PATT	
		.word	song004_13_2
	.byte	PATT	
		.word	song004_13_1
	.byte	PATT	
		.word	song004_13_2
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song004_13_1
	.byte	PATT	
		.word	song004_13_2
	.byte	PATT	
		.word	song004_13_1
	.byte	PATT	
		.word	song004_13_2
	.byte	PATT	
		.word	song004_13_1
	.byte	PATT	
		.word	song004_13_2
	.byte	PATT	
		.word	song004_13_1
	.byte	PATT	
		.word	song004_13_2
	.byte	PATT	
		.word	song004_13_1
	.byte	PATT	
		.word	song004_13_2
	.byte	PATT	
		.word	song004_13_1
	.byte	PATT	
		.word	song004_13_2
	.byte	PATT	
		.word	song004_13_1
	.byte	PATT	
		.word	song004_13_2
	.byte	PATT	
		.word	song004_13_1
	.byte	PATT	
		.word	song004_13_2
	.byte	GOTO	
		.word	song004_13_3
	.byte	W02
	.byte	FINE
    
	mAlignWord
	.global song004
song004:	@ 0x08266FAC
	.byte	13		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	mAlignWord
	.word	voicegroup008		@ voicegroup/tone

	.word	song004_1		@ track
	.word	song004_2		@ track
	.word	song004_3		@ track
	.word	song004_4		@ track
	.word	song004_5		@ track
	.word	song004_6		@ track
	.word	song004_7		@ track
	.word	song004_8		@ track
	.word	song004_9		@ track
	.word	song004_10		@ track
	.word	song004_11		@ track
	.word	song004_12		@ track
	.word	song004_13		@ track

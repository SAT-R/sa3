	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song070_1
song070_1:	@ 0x082A290C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 70
	.byte	VOICE	, 127
	.byte	VOL	, v078
	.byte	PAN	, c_v+4
	.byte	W03
	.byte	TEMPO	, 70
	.byte		N06	, Gn7, v127
	.byte	W12
	.byte		N12	
	.byte	W11
	.byte		N07	, Gs3
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
	.byte		N11	, Gs3
	.byte	W12
	.byte		N06	, Fs2
	.byte	W06
	.byte		N04	, An2
	.byte	W06
song070_1_1:
	.byte		N06	, Gn7, v127
	.byte	W12
	.byte		N12	
	.byte	W11
	.byte		N07	, Gs3
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
	.byte		N11	, Gs3
	.byte	W12
	.byte		N06	, Fs2
	.byte	W06
	.byte		N04	, An2
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song070_1_1
	.byte	PATT	
		.word	song070_1_1
	.byte	PATT	
		.word	song070_1_1
	.byte	PATT	
		.word	song070_1_1
song070_1_2:
	.byte		N10	, Gs3, v127
	.byte	W12
	.byte		N12	, Gn7
	.byte	W11
	.byte		N07	, Gs3
	.byte	W08
	.byte		N04	, An2
	.byte	W05
	.byte		N06	, Fn2
	.byte	W06
	.byte		N04	, Gn7
	.byte	W06
	.byte		N10	, Gs3
	.byte	W06
	.byte		N04	, An2
	.byte	W06
	.byte		N12	, Gn7
	.byte	W12
	.byte		N11	, Gs3
	.byte	W12
	.byte		N06	, Fs2
	.byte	W06
	.byte		N04	, An2
	.byte	W06
	.byte	PEND
song070_1_3:
	.byte		N10	, Gs3, v127
	.byte	W12
	.byte		N12	, Gn7
	.byte	W11
	.byte		N07	, Gs3
	.byte	W08
	.byte		N04	, An2
	.byte	W05
	.byte		N06	, Fn2
	.byte	W06
	.byte		N04	, Gn7
	.byte	W06
	.byte		N06	, Gs3
	.byte	W06
	.byte		N04	, An2
	.byte	W06
	.byte		N12	, Gn7
	.byte	W18
	.byte		N11	, Gs3
	.byte	W12
	.byte		N04	, Ds4
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song070_1_1
	.byte	PATT	
		.word	song070_1_1
	.byte	PATT	
		.word	song070_1_1
	.byte	PATT	
		.word	song070_1_1
	.byte	PATT	
		.word	song070_1_1
	.byte	PATT	
		.word	song070_1_1
	.byte	PATT	
		.word	song070_1_2
	.byte	PATT	
		.word	song070_1_3
	.byte	PATT	
		.word	song070_1_1
	.byte	GOTO	
		.word	song070_1_1
	.byte		N06	, Gn7, v127
	.byte	W12
	.byte		N12	
	.byte	W11
	.byte		N07	, Gs3
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
	.byte		N11	, Gs3
	.byte	W12
	.byte		N06	, Fs2
	.byte	W06
	.byte		N04	, An2
	.byte	W05
	.byte	FINE

	@********************** Track  2 **********************@

	.global song070_2
song070_2:	@ 0x082A2A13
	.byte	KEYSH	, 0
	.byte	VOICE	, 60
	.byte	VOL	, v047
	.byte	PAN	, c_v-19
	.byte	W03
song070_2_1:
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
song070_2_5:
	.byte	PATT	
		.word	song070_2_1
	.byte	PATT	
		.word	song070_2_1
	.byte	PATT	
		.word	song070_2_1
	.byte	PATT	
		.word	song070_2_1
song070_2_2:
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
	.byte	W06
	.byte		N05	, Ds7, v052
	.byte	W06
	.byte		N03	, Bn6, v020
	.byte	W06
	.byte	PEND
song070_2_3:
	.byte	W12
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
	.byte		N05	, Ds7, v052
	.byte	W06
	.byte		N03	, Bn6, v020
	.byte	W06
	.byte	PEND
song070_2_4:
	.byte	W12
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
	.byte	W30
	.byte	PEND
	.byte	PATT	
		.word	song070_2_1
	.byte	PATT	
		.word	song070_2_1
	.byte	PATT	
		.word	song070_2_1
	.byte	PATT	
		.word	song070_2_1
	.byte	PATT	
		.word	song070_2_1
	.byte	PATT	
		.word	song070_2_2
	.byte	PATT	
		.word	song070_2_3
	.byte	PATT	
		.word	song070_2_4
	.byte	PATT	
		.word	song070_2_1
	.byte	GOTO	
		.word	song070_2_5
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

	.global song070_3
song070_3:	@ 0x082A2B09
	.byte	KEYSH	, 0
	.byte	VOICE	, 61
	.byte	VOL	, v066
	.byte	PAN	, c_v-19
	.byte	W03
song070_3_1:
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
song070_3_5:
	.byte	PATT	
		.word	song070_3_1
	.byte	PATT	
		.word	song070_3_1
	.byte	PATT	
		.word	song070_3_1
	.byte	PATT	
		.word	song070_3_1
song070_3_2:
	.byte	W12
	.byte		N12	, Gn7, v068
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W36
	.byte	PEND
song070_3_3:
	.byte		N12	, Gn7, v068
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte	PEND
song070_3_4:
	.byte		N12	, Gn7, v068
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song070_3_1
	.byte	PATT	
		.word	song070_3_1
	.byte	PATT	
		.word	song070_3_1
	.byte	PATT	
		.word	song070_3_1
	.byte	PATT	
		.word	song070_3_1
	.byte	PATT	
		.word	song070_3_2
	.byte	PATT	
		.word	song070_3_3
	.byte	PATT	
		.word	song070_3_4
	.byte	PATT	
		.word	song070_3_1
	.byte	GOTO	
		.word	song070_3_5
	.byte	PATT	
		.word	song070_3_1
	.byte	FINE

	@********************** Track  4 **********************@

	.global song070_4
song070_4:	@ 0x082A2B8C
	.byte	KEYSH	, 0
	.byte	VOICE	, 46
	.byte	VOL	, v066
	.byte	PAN	, c_v-6
	.byte	W03
song070_4_1:
	.byte	W01
	.byte		N05	, Fs1, v100
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte			Fs1
	.byte	W06
	.byte			Gs2
	.byte	W06
	.byte			Gs1
	.byte	W12
	.byte			Fs1
	.byte	W06
	.byte			Fs2
	.byte	W06
	.byte			Bn1
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte			Bn1
	.byte	W06
	.byte			Cs2
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte			Cs3
	.byte	W05
	.byte	PEND
song070_4_2:
	.byte	W01
	.byte		N05	, Gs1, v100
	.byte	W12
	.byte			Fs2
	.byte	W06
	.byte			Fs1
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte			Ds1
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			Ds1
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			Ds1
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			Fn1
	.byte	W11
	.byte	PEND
	.byte	PATT	
		.word	song070_4_1
song070_4_3:
	.byte	W01
	.byte		N05	, Gs1, v100
	.byte	W12
	.byte			Fs2
	.byte	W06
	.byte			Fs1
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte			Bn1
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			Bn1
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte			Bn1
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			Cs2
	.byte	W11
	.byte	PEND
	.byte	PATT	
		.word	song070_4_1
	.byte	PATT	
		.word	song070_4_2
song070_4_4:
	.byte	W01
	.byte		N05	, An1, v100
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte			An1
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte			Bn1
	.byte	W12
	.byte			An1
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Bn1
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte			Bn1
	.byte	W06
	.byte			Cs2
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte			Cs3
	.byte	W05
	.byte	PEND
song070_4_5:
	.byte	W01
	.byte		N05	, Cs2, v100
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			Cs2
	.byte	W06
	.byte			Cs3
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte			Bn1
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			Bn1
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte			Bn1
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			Cs2
	.byte	W06
	.byte			Fs1
	.byte	W05
	.byte	PEND
	.byte	PATT	
		.word	song070_4_1
	.byte	PATT	
		.word	song070_4_2
	.byte	PATT	
		.word	song070_4_1
	.byte	PATT	
		.word	song070_4_3
	.byte	PATT	
		.word	song070_4_1
	.byte	PATT	
		.word	song070_4_2
	.byte	PATT	
		.word	song070_4_4
	.byte	PATT	
		.word	song070_4_5
	.byte	PATT	
		.word	song070_4_1
	.byte	GOTO	
		.word	song070_4_2
	.byte	W01
	.byte		N05	, Gs1, v100
	.byte	W12
	.byte			Fs2
	.byte	W06
	.byte			Fs1
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte			Ds1
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			Ds1
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			Ds1
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			Fn1
	.byte	W05
	.byte	FINE

	@********************** Track  5 **********************@

	.global song070_5
song070_5:	@ 0x082A2C8A
	.byte	KEYSH	, 0
	.byte	VOICE	, 71
	.byte	VOL	, v075
	.byte	PAN	, c_v-24
	.byte	W03
song070_5_1:
	.byte	W12
	.byte		N04	, Fn2, v116
	.byte	W10
	.byte		N03	, Gn3, v127
	.byte	W04
	.byte		N09	, Gs3, v116
	.byte	W09
	.byte		N03	, Gn3, v112
	.byte	W13
	.byte		N18	, Fn3, v108
	.byte	W18
	.byte		N04	, Gn3, v124
	.byte	W19
	.byte		N17	, Fn3
	.byte	W11
	.byte	PEND
song070_5_6:
	.byte	W12
	.byte		N04	, Fn3, v127
	.byte	W84
song070_5_2:
	.byte	W13
	.byte		N03	, Fn2, v120
	.byte	W12
	.byte		N05	, Gn3, v127
	.byte	W03
	.byte		N07	, Gs3, v120
	.byte	W08
	.byte		N04	, Gn3
	.byte	W13
	.byte		N17	, Fn3, v124
	.byte	W17
	.byte		N04	, Gn3, v120
	.byte	W19
	.byte			Gn3, v127
	.byte	W03
	.byte		N15	, Gs3, v116
	.byte	W08
	.byte	PEND
song070_5_3:
	.byte	W13
	.byte		N04	, Gs3, v127
	.byte	W80
	.byte	W03
	.byte	PEND
song070_5_4:
	.byte	W22
	.byte		N04	, Gn3, v127
	.byte	W03
	.byte		N07	, Gs3
	.byte	W11
	.byte		N04	, Gn3, v116
	.byte	W12
	.byte		N17	, Fn3, v124
	.byte	W19
	.byte		N05	, Gn3, v120
	.byte	W18
	.byte		N17	, Fn3
	.byte	W11
	.byte	PEND
song070_5_5:
	.byte	W10
	.byte		N05	, Fn3, v120
	.byte	W84
	.byte	W02
	.byte	PEND
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song070_5_1
	.byte	W12
	.byte		N04	, Fn3, v127
	.byte	W84
	.byte	PATT	
		.word	song070_5_2
	.byte	PATT	
		.word	song070_5_3
	.byte	PATT	
		.word	song070_5_4
	.byte	PATT	
		.word	song070_5_5
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song070_5_1
	.byte	GOTO	
		.word	song070_5_6
	.byte	W12
	.byte		N04	, Fn3, v127
	.byte	W04
	.byte	FINE

	@********************** Track  6 **********************@

	.global song070_6
song070_6:	@ 0x082A2D2D
	.byte	KEYSH	, 0
	.byte	VOICE	, 70
	.byte	VOL	, v075
	.byte	PAN	, c_v-24
	.byte	W03
	.byte	W96
song070_6_1:
	.byte	W32
	.byte	W03
	.byte		N03	, Fs2, v092
	.byte	W13
	.byte		N07	, Bn2, v104
	.byte	W10
	.byte		N03	, Fs2, v100
	.byte	W08
	.byte		N08	, Bn2, v108
	.byte	W13
	.byte		N03	, Fs2, v012
	.byte	W03
	.byte		N09	, Bn2, v116
	.byte	W08
	.byte		N02	, An2, v084
	.byte	W02
	.byte			Gn2
	.byte	W02
	.byte		N01	, Dn2, v068
	.byte		N01	, En2, v072
	.byte	W01
	.byte			Cn2, v060
	.byte	W01
	.byte	PEND
song070_6_2:
	.byte		N01	, An1, v084
	.byte		N01	, Bn1, v080
	.byte	W01
	.byte			Gn1, v072
	.byte	W02
	.byte		N03	, Fs1, v048
	.byte	W92
	.byte	W01
	.byte	PEND
song070_6_3:
	.byte	W32
	.byte	W03
	.byte		N03	, Gs2, v092
	.byte	W13
	.byte		N07	, Ds3, v104
	.byte	W10
	.byte		N03	, Gs2, v100
	.byte	W08
	.byte		N08	, Ds3, v108
	.byte	W13
	.byte		N03	, Gs2, v012
	.byte	W03
	.byte		N09	, Ds3, v116
	.byte	W08
	.byte		N02	, Cs3, v084
	.byte	W02
	.byte			An2
	.byte	W02
	.byte		N01	, En2, v068
	.byte		N01	, Fs2, v072
	.byte	W01
	.byte			Dn2, v060
	.byte	W01
	.byte	PEND
song070_6_4:
	.byte		N01	, Bn1, v084
	.byte		N01	, Cs2, v080
	.byte	W01
	.byte			An1, v072
	.byte	W02
	.byte		N03	, Gs1, v048
	.byte	W92
	.byte	W01
	.byte	PEND
song070_6_5:
	.byte	W24
	.byte		N03	, Cs3, v092
	.byte	W01
	.byte		N11	, Dn3, v100
	.byte	W12
	.byte		N03	, Cs2
	.byte	W06
	.byte			Cs3, v088
	.byte		N09	, Dn3, v104
	.byte	W11
	.byte		N03	, Cs2, v088
	.byte	W05
	.byte		N07	, Dn3, v116
	.byte	W01
	.byte		N03	, Cs3, v076
	.byte	W08
	.byte		N04	, Cs2, v096
	.byte	W05
	.byte		N03	, Dn3, v116
	.byte	W04
	.byte		N09	, Cs3, v108
	.byte	W05
	.byte		N07	, Bn2, v100
	.byte	W05
	.byte		N03	, Gs2, v104
	.byte	W03
	.byte		N02	, En2, v084
	.byte	W02
	.byte			Cn2
	.byte	W02
	.byte		N01	, Gn1, v068
	.byte		N01	, An1, v072
	.byte	W01
	.byte			Fn1, v060
	.byte	W01
	.byte	PEND
song070_6_6:
	.byte		N01	, Dn1, v084
	.byte		N01	, En1, v080
	.byte	W01
	.byte			Cn1, v072
	.byte	W02
	.byte		N03	, Bn0, v048
	.byte	W92
	.byte	W01
	.byte	PEND
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song070_6_1
	.byte	PATT	
		.word	song070_6_2
	.byte	PATT	
		.word	song070_6_3
	.byte	PATT	
		.word	song070_6_4
	.byte	PATT	
		.word	song070_6_5
	.byte	PATT	
		.word	song070_6_6
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	song070_6_1
	.byte	W56
	.byte	W03
	.byte		N03	, Bn2, v116
	.byte	W11
	.byte			Bn2, v120
	.byte	W06
	.byte		N04	, Cs3, v112
	.byte	W13
	.byte		N04	
	.byte	W04
	.byte	FINE

	@********************** Track  7 **********************@

	.global song070_7
song070_7:	@ 0x082A2E37
	.byte	KEYSH	, 0
	.byte	VOICE	, 98
	.byte	VOL	, v078
	.byte	PAN	, c_v
	.byte	W03
song070_7_1:
	.byte	W12
	.byte		N03	, Fn2, v120
	.byte	W13
	.byte		N04	, Dn3
	.byte	W01
	.byte		N07	, Ds3
	.byte	W10
	.byte		N03	, Dn3
	.byte	W12
	.byte		N19	, Cn3
	.byte	W19
	.byte		N03	, Dn3
	.byte	W18
	.byte		N20	, Cn3
	.byte	W11
	.byte	PEND
song070_7_2:
	.byte	W13
	.byte		N03	, Cn3, v120
	.byte	W80
	.byte	W03
	.byte	PEND
song070_7_3:
	.byte	W13
	.byte		N03	, Fn2, v116
	.byte	W12
	.byte		N04	, Dn3, v120
	.byte	W02
	.byte		N08	, Ds3
	.byte	W09
	.byte		N03	, Dn3
	.byte	W12
	.byte		N21	, Cn3
	.byte	W20
	.byte		N03	, Dn3
	.byte	W17
	.byte		N17	, Ds3
	.byte	W11
	.byte	PEND
	.byte	W12
	.byte		N03	
	.byte	W84
	.byte	PATT	
		.word	song070_7_1
	.byte	PATT	
		.word	song070_7_2
song070_7_4:
	.byte	W01
	.byte		N13	, Ds3, v120
	.byte	W24
	.byte			Dn3
	.byte	W24
	.byte		N24	, Cn3
	.byte	W24
	.byte		N04	, Dn3
	.byte	W12
	.byte		N03	, An2, v108
	.byte	W02
	.byte		N20	, As2, v096
	.byte	W09
	.byte	PEND
song070_7_5:
	.byte	W12
	.byte		N03	, Gs2, v112
	.byte	W13
	.byte		N10	, As2, v096
	.byte	W10
	.byte		N03	, Gs2, v108
	.byte	W11
	.byte			Bn2, v112
	.byte	W02
	.byte		N11	, Cn3, v104
	.byte	W11
	.byte		N03	, Gs2, v116
	.byte	W12
	.byte		N11	, Fn2, v120
	.byte	W11
	.byte		N05	, Ds2, v116
	.byte	W14
	.byte	PEND
	.byte	PATT	
		.word	song070_7_1
	.byte	PATT	
		.word	song070_7_2
	.byte	PATT	
		.word	song070_7_3
	.byte	W12
	.byte		N03	, Ds3, v120
	.byte	W84
	.byte	W13
	.byte			Fn2
	.byte	W12
	.byte		N04	, Dn3
	.byte	W02
	.byte		N07	, Ds3
	.byte	W09
	.byte		N03	, Dn3
	.byte	W12
	.byte		N19	, Cn3
	.byte	W19
	.byte		N03	, Dn3
	.byte	W18
	.byte		N20	, Cn3
	.byte	W11
	.byte	W13
	.byte		N03	
	.byte	W80
	.byte	W02
	.byte		N04	, Dn3
	.byte	W01
	.byte	PATT	
		.word	song070_7_4
	.byte	PATT	
		.word	song070_7_5
	.byte	PATT	
		.word	song070_7_1
	.byte	GOTO	
		.word	song070_7_2
	.byte	W13
	.byte		N03	, Cn3, v120
	.byte	W03
	.byte	FINE

	@********************** Track  8 **********************@

	.global song070_8
song070_8:	@ 0x082A2F06
	.byte	KEYSH	, 0
	.byte	VOICE	, 101
	.byte	VOL	, v050
	.byte	PAN	, c_v
	.byte	W03
song070_8_2:
	.byte	W12
	.byte		N03	, Gs3, v120
	.byte	W13
	.byte		N04	, Fn4
	.byte	W01
	.byte		N07	, Fs4
	.byte	W10
	.byte		N03	, Fn4
	.byte	W12
	.byte		N19	, Ds4
	.byte	W19
	.byte		N03	, Fn4
	.byte	W18
	.byte		N20	, Ds4
	.byte	W11
	.byte	PEND
song070_8_1:
	.byte	W13
	.byte		N03	, Ds4, v120
	.byte	W80
	.byte	W03
	.byte	PEND
song070_8_3:
	.byte	W13
	.byte		N03	, Gs3, v116
	.byte	W12
	.byte		N04	, Fn4, v120
	.byte	W02
	.byte		N08	, Fs4
	.byte	W09
	.byte		N03	, Fn4
	.byte	W12
	.byte		N21	, Ds4
	.byte	W20
	.byte		N03	, Fn4
	.byte	W17
	.byte		N17	, Fs4
	.byte	W11
	.byte	PEND
	.byte	W12
	.byte		N03	
	.byte	W84
song070_8_4:
	.byte	W13
	.byte		N03	, Gs3, v120
	.byte	W12
	.byte		N04	, Fn4
	.byte	W02
	.byte		N07	, Fs4
	.byte	W09
	.byte		N03	, Fn4
	.byte	W12
	.byte		N19	, Ds4
	.byte	W19
	.byte		N03	, Fn4
	.byte	W18
	.byte		N20	, Ds4
	.byte	W11
	.byte	PEND
	.byte	PATT	
		.word	song070_8_1
song070_8_5:
	.byte	W01
	.byte		N13	, Fs4, v120
	.byte	W24
	.byte			Fn4
	.byte	W24
	.byte		N24	, Ds4
	.byte	W24
	.byte		N04	, Fn4
	.byte	W12
	.byte		N03	, Cn4, v108
	.byte	W02
	.byte		N20	, Cs4, v096
	.byte	W09
	.byte	PEND
song070_8_6:
	.byte	W12
	.byte		N03	, Bn3, v112
	.byte	W13
	.byte		N10	, Cs4, v096
	.byte	W10
	.byte		N03	, Bn3, v108
	.byte	W11
	.byte			Dn4, v112
	.byte	W02
	.byte		N11	, Ds4, v104
	.byte	W11
	.byte		N03	, Bn3, v116
	.byte	W12
	.byte		N11	, Gs3, v120
	.byte	W11
	.byte		N05	, Fs3, v116
	.byte	W14
	.byte	PEND
	.byte	PATT	
		.word	song070_8_2
	.byte	PATT	
		.word	song070_8_1
	.byte	PATT	
		.word	song070_8_3
	.byte	W12
	.byte		N03	, Fs4, v120
	.byte	W84
	.byte	PATT	
		.word	song070_8_4
	.byte	W13
	.byte		N03	, Ds4, v120
	.byte	W80
	.byte	W02
	.byte		N04	, Fn4
	.byte	W01
	.byte	PATT	
		.word	song070_8_5
	.byte	PATT	
		.word	song070_8_6
	.byte	PATT	
		.word	song070_8_2
	.byte	GOTO	
		.word	song070_8_1
	.byte	W13
	.byte		N03	, Ds4, v120
	.byte	W03
	.byte	FINE

	@********************** Track  9 **********************@

	.global song070_9
song070_9:	@ 0x082A2FDA
	.byte	KEYSH	, 0
	.byte	VOICE	, 118
	.byte	VOL	, v069
	.byte	PAN	, c_v+56
	.byte	W03
song070_9_1:
	.byte	W01
	.byte		N06	, Gs1, v040
	.byte	W06
	.byte			Gs2, v052
	.byte	W06
	.byte			Fs1, v040
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte			Gs2, v052
	.byte	W06
	.byte			Gs1, v040
	.byte	W06
	.byte			Fs1
	.byte	W06
	.byte			Fs2, v052
	.byte	W06
	.byte			Gs1, v040
	.byte	W06
	.byte			Ds2, v052
	.byte	W06
	.byte			Gs1, v040
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Fs2, v052
	.byte	W06
	.byte			Gs1, v040
	.byte	W06
	.byte			Fs2, v052
	.byte	W06
	.byte			Fs1, v040
	.byte	W05
	.byte	PEND
song070_9_3:
	.byte	W01
	.byte		N06	, Gs1, v040
	.byte	W06
	.byte			Gs2, v052
	.byte	W06
	.byte			Gs1, v040
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Gs2, v052
	.byte	W06
	.byte			Gs1, v040
	.byte	W06
	.byte			Fs1
	.byte	W06
	.byte			Fs2, v052
	.byte	W06
	.byte			Gs1, v040
	.byte	W06
	.byte			Cs2, v052
	.byte	W06
	.byte			Gs1, v040
	.byte	W06
	.byte			Ds2, v052
	.byte	W06
	.byte			Gs1, v040
	.byte	W06
	.byte			Fs2, v052
	.byte	W06
	.byte			Gs1, v040
	.byte	W06
	.byte			Fs2, v052
	.byte	W05
	.byte	PEND
	.byte	PATT	
		.word	song070_9_1
song070_9_2:
	.byte	W01
	.byte		N06	, Gs1, v040
	.byte	W06
	.byte			Gs2, v052
	.byte	W06
	.byte			Gs1, v040
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Gs2, v052
	.byte	W06
	.byte			Gs1, v040
	.byte	W06
	.byte			Fs1
	.byte	W06
	.byte			Fs2, v052
	.byte	W06
	.byte			Gs1, v040
	.byte	W06
	.byte			Cs2, v052
	.byte	W06
	.byte			Gs1, v040
	.byte	W06
	.byte			Ds2, v052
	.byte	W06
	.byte			Fs1, v040
	.byte	W06
	.byte			Fs2, v052
	.byte	W06
	.byte			Gs1, v040
	.byte	W06
	.byte			Fs2, v052
	.byte	W05
	.byte	PEND
	.byte	PATT	
		.word	song070_9_1
	.byte	PATT	
		.word	song070_9_2
	.byte	PATT	
		.word	song070_9_1
	.byte	PATT	
		.word	song070_9_2
	.byte	PATT	
		.word	song070_9_1
	.byte	PATT	
		.word	song070_9_1
	.byte	PATT	
		.word	song070_9_3
	.byte	PATT	
		.word	song070_9_1
	.byte	PATT	
		.word	song070_9_2
	.byte	PATT	
		.word	song070_9_1
	.byte	PATT	
		.word	song070_9_2
	.byte	PATT	
		.word	song070_9_1
	.byte	PATT	
		.word	song070_9_1
	.byte	GOTO	
		.word	song070_9_3
	.byte	PATT	
		.word	song070_9_3
	.byte	W01
	.byte	FINE

	@********************** Track  10 **********************@

	.global song070_10
song070_10:	@ 0x082A30C7
	.byte	KEYSH	, 0
	.byte	VOICE	, 118
	.byte	VOL	, v069
	.byte	PAN	, c_v-34
	.byte	W03
song070_10_1:
	.byte		N06	, Gs1, v040
	.byte	W06
	.byte			Gs2, v052
	.byte	W06
	.byte			Fs1, v040
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte			Gs2, v052
	.byte	W06
	.byte			Gs1, v040
	.byte	W06
	.byte			Fs1
	.byte	W06
	.byte			Fs2, v052
	.byte	W06
	.byte			Gs1, v040
	.byte	W06
	.byte			Ds2, v052
	.byte	W06
	.byte			Gs1, v040
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Fs2, v052
	.byte	W06
	.byte			Gs1, v040
	.byte	W06
	.byte			Fs2, v052
	.byte	W06
	.byte			Fs1, v040
	.byte	W06
	.byte	PEND
song070_10_2:
	.byte		N06	, Gs1, v040
	.byte	W06
	.byte			Gs2, v052
	.byte	W06
	.byte			Gs1, v040
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Gs2, v052
	.byte	W06
	.byte			Gs1, v040
	.byte	W06
	.byte			Fs1
	.byte	W06
	.byte			Fs2, v052
	.byte	W06
	.byte			Gs1, v040
	.byte	W06
	.byte			Cs2, v052
	.byte	W06
	.byte			Gs1, v040
	.byte	W06
	.byte			Ds2, v052
	.byte	W06
	.byte			Fs1, v040
	.byte	W06
	.byte			Fs2, v052
	.byte	W06
	.byte			Gs1, v040
	.byte	W06
	.byte			Fs2, v052
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song070_10_1
	.byte	PATT	
		.word	song070_10_2
	.byte	PATT	
		.word	song070_10_1
	.byte	PATT	
		.word	song070_10_2
	.byte	PATT	
		.word	song070_10_1
	.byte	PATT	
		.word	song070_10_2
	.byte	PATT	
		.word	song070_10_1
	.byte	PATT	
		.word	song070_10_1
	.byte	PATT	
		.word	song070_10_2
	.byte	PATT	
		.word	song070_10_1
	.byte	PATT	
		.word	song070_10_2
	.byte	PATT	
		.word	song070_10_1
	.byte	PATT	
		.word	song070_10_2
	.byte	PATT	
		.word	song070_10_1
	.byte	PATT	
		.word	song070_10_1
	.byte	GOTO	
		.word	song070_10_2
	.byte	PATT	
		.word	song070_10_2
	.byte	FINE
    
	mAlignWord
	.global song070
song070:	@ 0x082A3188
	.byte	10		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

	mAlignWord
	.word	voicegroup008		@ voicegroup/tone

	.word	song070_1		@ track
	.word	song070_2		@ track
	.word	song070_3		@ track
	.word	song070_4		@ track
	.word	song070_5		@ track
	.word	song070_6		@ track
	.word	song070_7		@ track
	.word	song070_8		@ track
	.word	song070_9		@ track
	.word	song070_10		@ track

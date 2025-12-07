	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song007_1
song007_1:	@ 0x08267C70
	.byte	KEYSH	, 0
	.byte	TEMPO	, 70
	.byte	VOICE	, 127
	.byte	VOL	, v078
	.byte	PAN	, c_v
	.byte	W03
	.byte	TEMPO	, 70
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
song007_1_1:
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
		mPtr	song007_1_1
	.byte	PATT	
		mPtr	song007_1_1
	.byte	PATT	
		mPtr	song007_1_1
	.byte	PATT	
		mPtr	song007_1_1
	.byte	PATT	
		mPtr	song007_1_1
	.byte	PATT	
		mPtr	song007_1_1
	.byte	PATT	
		mPtr	song007_1_1
	.byte	PATT	
		mPtr	song007_1_1
	.byte	PATT	
		mPtr	song007_1_1
	.byte	PATT	
		mPtr	song007_1_1
	.byte	PATT	
		mPtr	song007_1_1
	.byte	PATT	
		mPtr	song007_1_1
	.byte	PATT	
		mPtr	song007_1_1
	.byte	PATT	
		mPtr	song007_1_1
	.byte	PATT	
		mPtr	song007_1_1
	.byte	GOTO	
		mPtr	song007_1_1
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
	.byte	W05
	.byte	FINE

	@********************** Track  2 **********************@

	.global song007_2
song007_2:	@ 0x08267D38
	.byte	KEYSH	, 0
	.byte	VOICE	, 60
	.byte	VOL	, v047
	.byte	PAN	, c_v-19
	.byte	W03
song007_2_1:
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
song007_2_2:
	.byte	PATT	
		mPtr	song007_2_1
	.byte	PATT	
		mPtr	song007_2_1
	.byte	PATT	
		mPtr	song007_2_1
	.byte	PATT	
		mPtr	song007_2_1
	.byte	PATT	
		mPtr	song007_2_1
	.byte	PATT	
		mPtr	song007_2_1
	.byte	PATT	
		mPtr	song007_2_1
	.byte	PATT	
		mPtr	song007_2_1
	.byte	PATT	
		mPtr	song007_2_1
	.byte	PATT	
		mPtr	song007_2_1
	.byte	PATT	
		mPtr	song007_2_1
	.byte	PATT	
		mPtr	song007_2_1
	.byte	PATT	
		mPtr	song007_2_1
	.byte	PATT	
		mPtr	song007_2_1
	.byte	PATT	
		mPtr	song007_2_1
	.byte	PATT	
		mPtr	song007_2_1
	.byte	GOTO	
		mPtr	song007_2_2
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

	.global song007_3
song007_3:	@ 0x08267DD8
	.byte	KEYSH	, 0
	.byte	VOICE	, 61
	.byte	VOL	, v066
	.byte	PAN	, c_v-19
	.byte	W03
song007_3_1:
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
song007_3_4:
	.byte	PATT	
		mPtr	song007_3_1
	.byte	PATT	
		mPtr	song007_3_1
	.byte	PATT	
		mPtr	song007_3_1
	.byte	PATT	
		mPtr	song007_3_1
	.byte	PATT	
		mPtr	song007_3_1
song007_3_2:
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
song007_3_3:
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
		mPtr	song007_3_1
	.byte	PATT	
		mPtr	song007_3_1
	.byte	PATT	
		mPtr	song007_3_1
	.byte	PATT	
		mPtr	song007_3_1
	.byte	PATT	
		mPtr	song007_3_1
	.byte	PATT	
		mPtr	song007_3_1
	.byte	PATT	
		mPtr	song007_3_2
	.byte	PATT	
		mPtr	song007_3_3
	.byte	PATT	
		mPtr	song007_3_1
	.byte	GOTO	
		mPtr	song007_3_4
	.byte	PATT	
		mPtr	song007_3_1
	.byte	FINE

	@********************** Track  4 **********************@

	.global song007_4
song007_4:	@ 0x08267E57
	.byte	KEYSH	, 0
	.byte	VOICE	, 46
	.byte	VOL	, v069
	.byte	PAN	, c_v-6
	.byte	W03
song007_4_1:
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
song007_4_2:
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
		mPtr	song007_4_1
song007_4_3:
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
		mPtr	song007_4_1
	.byte	PATT	
		mPtr	song007_4_2
song007_4_4:
	.byte	W01
	.byte		N05	, An1, v100
	.byte	W06
	.byte			Bn1
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
song007_4_5:
	.byte	W01
	.byte		N05	, Cs2, v100
	.byte	W12
	.byte			Bn2
	.byte	W06
	.byte			Bn1
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
	.byte			Fs2
	.byte		N05	, Cs3
	.byte	W06
	.byte			Fs1
	.byte		N05	, Cs2
	.byte	W11
	.byte	PEND
	.byte	PATT	
		mPtr	song007_4_1
	.byte	PATT	
		mPtr	song007_4_2
	.byte	PATT	
		mPtr	song007_4_1
	.byte	PATT	
		mPtr	song007_4_3
	.byte	PATT	
		mPtr	song007_4_1
	.byte	PATT	
		mPtr	song007_4_2
	.byte	PATT	
		mPtr	song007_4_4
	.byte	PATT	
		mPtr	song007_4_5
	.byte	PATT	
		mPtr	song007_4_1
	.byte	GOTO	
		mPtr	song007_4_2
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

	.global song007_5
song007_5:	@ 0x08267F55
	.byte	KEYSH	, 0
	.byte	VOICE	, 71
	.byte	VOL	, v062
	.byte	PAN	, c_v-54
	.byte	W03
song007_5_1:
	.byte	W12
	.byte		N03	, Gn3, v096
	.byte	W02
	.byte		N14	, Gs3, v108
	.byte	W17
	.byte		N04	, Gs3, v112
	.byte	W18
	.byte		N03	, Gn3, v100
	.byte	W01
	.byte		N13	, Gs3, v116
	.byte	W17
	.byte		N07	, Gs3, v120
	.byte	W28
	.byte	W01
	.byte	PEND
song007_5_2:
	.byte	W11
	.byte		N04	, Gn3, v096
	.byte	W02
	.byte		N13	, Gs3, v104
	.byte	W18
	.byte		N06	
	.byte	W17
	.byte		N10	, Gs3, v112
	.byte	W12
	.byte		N05	, Gn3, v104
	.byte	W05
	.byte			Fn3, v112
	.byte	W30
	.byte	W01
	.byte	PEND
song007_5_3:
	.byte	W12
	.byte		N03	, Gn3, v096
	.byte	W02
	.byte		N11	, Gs3, v108
	.byte	W17
	.byte		N04	, Gs3, v112
	.byte	W18
	.byte		N03	, Gn3, v100
	.byte	W01
	.byte		N13	, Gs3, v116
	.byte	W17
	.byte		N04	, Gs3, v120
	.byte	W28
	.byte	W01
	.byte	PEND
song007_5_4:
	.byte	W12
	.byte		N02	, Gn3, v096
	.byte	W01
	.byte		N13	, Gs3, v116
	.byte	W18
	.byte		N04	, Gs3, v100
	.byte	W19
	.byte		N08	, Gs3, v116
	.byte	W10
	.byte		N05	, Gn3, v104
	.byte	W06
	.byte			Cs4, v108
	.byte	W30
	.byte	PEND
	.byte	PATT	
		mPtr	song007_5_1
	.byte	PATT	
		mPtr	song007_5_2
	.byte	PATT	
		mPtr	song007_5_3
	.byte	PATT	
		mPtr	song007_5_4
	.byte	PATT	
		mPtr	song007_5_1
	.byte	PATT	
		mPtr	song007_5_2
	.byte	PATT	
		mPtr	song007_5_3
	.byte	PATT	
		mPtr	song007_5_4
	.byte	PATT	
		mPtr	song007_5_1
	.byte	PATT	
		mPtr	song007_5_2
	.byte	PATT	
		mPtr	song007_5_3
	.byte	PATT	
		mPtr	song007_5_4
	.byte	PATT	
		mPtr	song007_5_1
	.byte	GOTO	
		mPtr	song007_5_2
	.byte	W11
	.byte		N04	, Gn3, v096
	.byte	W02
	.byte		N13	, Gs3, v104
	.byte	W18
	.byte		N06	
	.byte	W17
	.byte		N10	, Gs3, v112
	.byte	W12
	.byte		N05	, Gn3, v104
	.byte	W05
	.byte			Fn3, v112
	.byte	W05
	.byte	FINE

	@********************** Track  6 **********************@

	.global song007_6
song007_6:	@ 0x08268022
	.byte	KEYSH	, 0
	.byte	VOICE	, 0
	.byte	VOL	, v056
	.byte	PAN	, c_v
	.byte	MOD	, 0
	.byte	W03
song007_6_1:
	.byte	W01
	.byte		N13	, Ds4, v116
	.byte	W24
	.byte		N03	, Cn4, v100
	.byte	W02
	.byte		N11	, Cs4, v108
	.byte	W12
	.byte		N13	, Cn4
	.byte	W23
	.byte		N12	, Gs3
	.byte	W24
	.byte		N22	, Cn4, v116
	.byte	W10
	.byte	PEND
song007_6_2:
	.byte	W12
	.byte		N04	, Cs4, v112
	.byte	W13
	.byte		N15	, Ds4, v108
	.byte	W23
	.byte		N03	, Cn4, v100
	.byte	W02
	.byte		N10	, Cs4, v104
	.byte	W11
	.byte		N04	, Cn4, v112
	.byte	W13
	.byte		N11	, Gs3
	.byte	W11
	.byte		N12	, Fs3, v104
	.byte	W11
	.byte	PEND
song007_6_3:
	.byte	W01
	.byte		N14	, Ds4, v108
	.byte	W23
	.byte		N03	, Cn4, v096
	.byte	W02
	.byte		N10	, Cs4, v100
	.byte	W12
	.byte		N13	, Cn4, v108
	.byte	W24
	.byte		N12	, Gs3
	.byte	W24
	.byte		N23	, Cn4
	.byte	W10
	.byte	PEND
song007_6_4:
	.byte	W13
	.byte		N03	, Cs4, v104
	.byte	W12
	.byte		N12	, Ds4, v100
	.byte	W12
	.byte		N18	, Fs4, v116
	.byte	W24
	.byte		N03	, Dn4, v104
	.byte	W02
	.byte		N12	, Ds4, v108
	.byte	W11
	.byte		N11	, Cs4
	.byte	W11
	.byte		N12	, Cn4
	.byte	W11
	.byte	PEND
song007_6_5:
	.byte	W02
	.byte		N13	, Ds4, v116
	.byte	W22
	.byte		N03	, Cn4, v100
	.byte	W02
	.byte		N11	, Cs4, v108
	.byte	W11
	.byte		N13	, Cn4
	.byte	W24
	.byte	W01
	.byte		N12	, Gs3, v116
	.byte	W23
	.byte		N24	, Cn4, v108
	.byte	W11
	.byte	PEND
song007_6_6:
	.byte	W13
	.byte		N05	, Cs4, v100
	.byte	W12
	.byte		N12	, Ds4, v108
	.byte	W24
	.byte	W01
	.byte		N03	, Cn4, v104
	.byte	W02
	.byte		N10	, Cs4, v108
	.byte	W11
	.byte		N04	, Cn4, v104
	.byte	W11
	.byte		N11	, Gs3, v108
	.byte	W12
	.byte			Fs3, v080
	.byte	W10
	.byte	PEND
	.byte	W02
	.byte		N56	, Bn3, v100
	.byte	W14
	.byte	MOD	, 1
	.byte	W06
	.byte		3
	.byte	W07
	.byte		6
	.byte	W24
	.byte	W01
	.byte		2
	.byte	W01
	.byte		0
	.byte	W05
	.byte		N04	, Cn4
	.byte	W02
	.byte		N11	, Cs4, v104
	.byte	W12
	.byte		N13	, Ds4, v108
	.byte	W12
	.byte		N48	, Cs4, v112
	.byte	W10
	.byte	W15
	.byte	MOD	, 1
	.byte	W03
	.byte		3
	.byte	W03
	.byte		6
	.byte	W04
	.byte		8
	.byte	W14
	.byte		6
	.byte	W02
	.byte		2
	.byte	W01
	.byte		0
	.byte	W08
	.byte		N03	, Cn4, v100
	.byte	W01
	.byte		N11	, Cs4, v116
	.byte	W11
	.byte		N03	, Cn4, v108
	.byte	W11
	.byte		N11	, Gs3, v112
	.byte	W11
	.byte		N10	, Fs3, v104
	.byte	W12
	.byte	PATT	
		mPtr	song007_6_1
	.byte	PATT	
		mPtr	song007_6_2
	.byte	PATT	
		mPtr	song007_6_3
	.byte	PATT	
		mPtr	song007_6_4
	.byte	PATT	
		mPtr	song007_6_5
	.byte	PATT	
		mPtr	song007_6_6
	.byte	W02
	.byte		N56	, Bn3, v100
	.byte	W20
	.byte	MOD	, 1
	.byte	W05
	.byte		3
	.byte	W10
	.byte		6
	.byte	W18
	.byte		2
	.byte	W02
	.byte		0
	.byte	W03
	.byte		N04	, Cn4
	.byte	W02
	.byte		N11	, Cs4, v104
	.byte	W12
	.byte		N13	, Ds4, v108
	.byte	W12
	.byte		N48	, Cs4, v112
	.byte	W10
	.byte	W17
	.byte	MOD	, 2
	.byte	W04
	.byte		5
	.byte	W04
	.byte		7
	.byte	W17
	.byte		5
	.byte	W02
	.byte		1
	.byte	W01
	.byte		0
	.byte	W05
	.byte		N03	, Cn4, v100
	.byte	W01
	.byte		N11	, Cs4, v116
	.byte	W11
	.byte		N03	, Cn4, v108
	.byte	W11
	.byte		N11	, Gs3, v112
	.byte	W11
	.byte		N10	, Fs3, v104
	.byte	W12
	.byte	PATT	
		mPtr	song007_6_1
	.byte	GOTO	
		mPtr	song007_6_2
	.byte	PATT	
		mPtr	song007_6_2
	.byte	W01
	.byte	FINE

	@********************** Track  7 **********************@

	.global song007_7
song007_7:	@ 0x08268182
	.byte	KEYSH	, 0
	.byte	VOICE	, 98
	.byte	VOL	, v078
	.byte	PAN	, c_v+11
	.byte	W03
song007_7_1:
	.byte		N13	, Cn3, v116
	.byte	W24
	.byte		N04	, An2, v100
	.byte	W03
	.byte		N10	, As2
	.byte	W11
	.byte		N11	, An2, v108
	.byte	W23
	.byte			Fn2
	.byte	W24
	.byte		N23	, An2
	.byte	W11
	.byte	PEND
song007_7_2:
	.byte	W12
	.byte		N05	, As2, v104
	.byte	W13
	.byte		N13	, Cn3, v116
	.byte	W24
	.byte		N03	, An2, v100
	.byte	W02
	.byte		N11	, As2
	.byte	W11
	.byte		N04	, An2
	.byte	W11
	.byte		N10	, Fn2, v108
	.byte	W11
	.byte			Ds2, v104
	.byte	W12
	.byte	PEND
song007_7_3:
	.byte	W01
	.byte		N10	, Cn3, v112
	.byte	W24
	.byte		N04	, An2, v092
	.byte	W02
	.byte		N10	, As2, v104
	.byte	W11
	.byte		N11	, An2, v100
	.byte	W23
	.byte		N13	, Fn2, v116
	.byte	W24
	.byte		N23	, An2, v108
	.byte	W11
	.byte	PEND
song007_7_4:
	.byte	W12
	.byte		N05	, As2, v096
	.byte	W13
	.byte		N04	, Cn3, v108
	.byte	W11
	.byte		N24	, Ds3, v112
	.byte	W24
	.byte	W01
	.byte		N12	, Cn3
	.byte	W12
	.byte		N11	, As2, v092
	.byte	W10
	.byte		N13	, An2, v104
	.byte	W13
	.byte	PEND
song007_7_5:
	.byte	W01
	.byte		N13	, Cn3, v108
	.byte	W23
	.byte		N03	, An2
	.byte	W02
	.byte		N10	, As2, v096
	.byte	W11
	.byte		N12	, An2, v108
	.byte	W24
	.byte		N14	, Fn2, v112
	.byte	W24
	.byte		N23	, An2, v108
	.byte	W11
	.byte	PEND
song007_7_6:
	.byte	W11
	.byte		N05	, As2, v096
	.byte	W13
	.byte		N12	, Cn3, v116
	.byte	W24
	.byte		N04	, An2, v104
	.byte	W02
	.byte		N10	, As2, v096
	.byte	W11
	.byte		N04	, An2, v108
	.byte	W11
	.byte		N11	, Fn2, v104
	.byte	W11
	.byte		N14	, Ds2, v096
	.byte	W13
	.byte	PEND
song007_7_7:
	.byte	W01
	.byte		N44	, Gs2, v112
	.byte	W60
	.byte		N14	, As2, v096
	.byte	W13
	.byte		N13	, Cn3, v104
	.byte	W11
	.byte		N44	, As2
	.byte	W11
	.byte	PEND
song007_7_8:
	.byte	W48
	.byte		N03	, An2, v104
	.byte	W03
	.byte		N08	, As2, v100
	.byte	W09
	.byte		N04	, An2, v112
	.byte	W13
	.byte		N13	, Fn2, v096
	.byte	W11
	.byte		N09	, Ds2, v104
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song007_7_1
	.byte	PATT	
		mPtr	song007_7_2
	.byte	PATT	
		mPtr	song007_7_3
	.byte	PATT	
		mPtr	song007_7_4
	.byte	PATT	
		mPtr	song007_7_5
	.byte	PATT	
		mPtr	song007_7_6
	.byte	PATT	
		mPtr	song007_7_7
	.byte	PATT	
		mPtr	song007_7_8
	.byte	PATT	
		mPtr	song007_7_1
	.byte	GOTO	
		mPtr	song007_7_2
	.byte	W12
	.byte		N05	, As2, v104
	.byte	W13
	.byte		N13	, Cn3, v116
	.byte	W24
	.byte		N03	, An2, v100
	.byte	W02
	.byte		N11	, As2
	.byte	W11
	.byte		N04	, An2
	.byte	W11
	.byte		N10	, Fn2, v108
	.byte	W11
	.byte			Ds2, v104
	.byte	W10
	.byte	FINE

	@********************** Track  8 **********************@

	.global song007_8
song007_8:	@ 0x0826829A
	.byte	KEYSH	, 0
	.byte	VOICE	, 118
	.byte	VOL	, v075
	.byte	PAN	, c_v+56
	.byte	W03
song007_8_1:
	.byte	W03
	.byte		N12	, Gs1, v092
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Fs1
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte			Fs1
	.byte	W12
	.byte			Fs2
	.byte	W09
	.byte	PEND
song007_8_2:
	.byte	W03
	.byte		N12	, Gs1, v092
	.byte	W12
	.byte			Ds2
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Fs1
	.byte	W09
	.byte	PEND
song007_8_3:
	.byte	W03
	.byte		N12	, Gs1, v092
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte			Fs1
	.byte	W12
	.byte			Fs2
	.byte	W09
	.byte	PEND
song007_8_4:
	.byte	W03
	.byte		N12	, Gs1, v092
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte			Ds2
	.byte	W12
	.byte			Fs1
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte			Fs2
	.byte	W09
	.byte	PEND
	.byte	PATT	
		mPtr	song007_8_1
	.byte	PATT	
		mPtr	song007_8_2
	.byte	PATT	
		mPtr	song007_8_3
	.byte	PATT	
		mPtr	song007_8_4
	.byte	PATT	
		mPtr	song007_8_1
	.byte	PATT	
		mPtr	song007_8_2
	.byte	PATT	
		mPtr	song007_8_3
	.byte	PATT	
		mPtr	song007_8_4
	.byte	PATT	
		mPtr	song007_8_1
	.byte	PATT	
		mPtr	song007_8_2
	.byte	PATT	
		mPtr	song007_8_3
	.byte	PATT	
		mPtr	song007_8_4
	.byte	PATT	
		mPtr	song007_8_1
	.byte	GOTO	
		mPtr	song007_8_2
	.byte	PATT	
		mPtr	song007_8_2
	.byte	W03
	.byte	FINE

	@********************** Track  9 **********************@

	.global song007_9
song007_9:	@ 0x08268340
	.byte	KEYSH	, 0
	.byte	VOICE	, 118
	.byte	VOL	, v075
	.byte	PAN	, c_v-34
	.byte	W03
song007_9_1:
	.byte		N12	, Gs1, v092
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Fs1
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte			Fs1
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte	PEND
song007_9_2:
	.byte		N12	, Gs1, v092
	.byte	W12
	.byte			Ds2
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Fs1
	.byte	W12
	.byte	PEND
song007_9_3:
	.byte		N12	, Gs1, v092
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte			Fs1
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte	PEND
song007_9_4:
	.byte		N12	, Gs1, v092
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte			Ds2
	.byte	W12
	.byte			Fs1
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song007_9_1
	.byte	PATT	
		mPtr	song007_9_2
	.byte	PATT	
		mPtr	song007_9_3
	.byte	PATT	
		mPtr	song007_9_4
	.byte	PATT	
		mPtr	song007_9_1
	.byte	PATT	
		mPtr	song007_9_2
	.byte	PATT	
		mPtr	song007_9_3
	.byte	PATT	
		mPtr	song007_9_4
	.byte	PATT	
		mPtr	song007_9_1
	.byte	PATT	
		mPtr	song007_9_2
	.byte	PATT	
		mPtr	song007_9_3
	.byte	PATT	
		mPtr	song007_9_4
	.byte	PATT	
		mPtr	song007_9_1
	.byte	GOTO	
		mPtr	song007_9_2
	.byte	PATT	
		mPtr	song007_9_2
	.byte	FINE
    
	mAlignWord
	.global song007
song007:	@ 0x082683E4
	.byte	9		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	mAlignWord
	mPtr	voicegroup008		@ voicegroup/tone

	mPtr	song007_1		@ track
	mPtr	song007_2		@ track
	mPtr	song007_3		@ track
	mPtr	song007_4		@ track
	mPtr	song007_5		@ track
	mPtr	song007_6		@ track
	mPtr	song007_7		@ track
	mPtr	song007_8		@ track
	mPtr	song007_9		@ track

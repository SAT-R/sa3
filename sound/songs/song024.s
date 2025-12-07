	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song024_1
song024_1:	@ 0x08272590
	.byte	KEYSH	, 0
	.byte	TEMPO	, 80
	.byte	VOICE	, 127
	.byte	VOL	, v075
	.byte	PAN	, c_v
	.byte	W03
	.byte	TEMPO	, 80
	.byte	W12
	.byte		N11	, Gn7, v127
	.byte	W12
	.byte			En6
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte		N05	, En6
	.byte	W06
	.byte		N08	, Gn7
	.byte	W12
	.byte		N05	, En6
	.byte		N05	, Gn7
	.byte	W12
	.byte		N02	
	.byte	W06
	.byte		N11	, En6
	.byte	W12
song024_1_1:
	.byte		N11	, Gs7, v127
	.byte	W24
	.byte		N06	, En6
	.byte	W19
	.byte		N03	
	.byte	W05
	.byte		N11	, Gs7
	.byte	W19
	.byte		N06	, En6
	.byte	W28
	.byte	W01
	.byte	PEND
song024_1_2:
	.byte		N11	, Gs7, v127
	.byte	W24
	.byte		N06	, En6
	.byte	W24
	.byte		N11	, Gs7
	.byte	W19
	.byte			En6
	.byte	W17
	.byte			Gs7
	.byte	W12
	.byte	PEND
song024_1_3:
	.byte		N11	, Gs7, v127
	.byte	W24
	.byte		N05	, En6
	.byte	W19
	.byte		N04	
	.byte	W05
	.byte		N11	, Gs7
	.byte	W19
	.byte		N05	, En6
	.byte	W28
	.byte	W01
	.byte	PEND
song024_1_9:
	.byte		N11	, Gs7, v127
	.byte	W24
	.byte		N06	, En6
	.byte	W24
	.byte		N11	, Gs7
	.byte	W19
	.byte		N12	, En6
	.byte	W17
	.byte		N11	, Gs7
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song024_1_1
	.byte	PATT	
		.word	song024_1_2
	.byte	PATT	
		.word	song024_1_3
song024_1_10:
	.byte		N11	, Gs7, v127
	.byte	W24
	.byte		N06	, En6
	.byte	W24
	.byte		N05	, Gs7
	.byte	W06
	.byte		N10	, En6
	.byte	W12
	.byte		N04	, Fs5
	.byte	W04
	.byte		N06	, En6
	.byte	W12
	.byte		N11	, Gs7
	.byte	W14
	.byte	PEND
song024_1_5:
	.byte		N11	, Gs7, v127
	.byte	W24
	.byte		N06	, En6
	.byte		N11	, Gs7
	.byte	W19
	.byte		N03	, En6
	.byte	W05
	.byte		N11	, Gs7
	.byte	W19
	.byte		N04	, En6
	.byte	W05
	.byte		N11	, Gs7
	.byte	W24
	.byte	PEND
song024_1_4:
	.byte		N11	, Gs7, v127
	.byte	W24
	.byte		N06	, En6
	.byte		N11	, Gs7
	.byte	W24
	.byte		N11	
	.byte	W19
	.byte		N04	, En6
	.byte	W05
	.byte		N11	, Gs7
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte	PEND
song024_1_6:
	.byte		N11	, Gs7, v127
	.byte	W24
	.byte		N05	, En6
	.byte		N11	, Gs7
	.byte	W19
	.byte		N04	, En6
	.byte	W05
	.byte		N11	, Gs7
	.byte	W19
	.byte		N04	, En6
	.byte	W05
	.byte		N11	, Gs7
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song024_1_4
song024_1_7:
	.byte		N11	, Gs7, v127
	.byte	W24
	.byte		N06	, En6
	.byte		N11	, Gs7
	.byte	W19
	.byte		N03	, En6
	.byte	W05
	.byte		N11	, Gs7
	.byte	W19
	.byte		N04	, En6
	.byte	W05
	.byte		N11	, Gs7
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song024_1_4
	.byte		N11	, Gs7, v127
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N05	, En6
	.byte		N11	, Gs7
	.byte	W19
	.byte		N04	, En6
	.byte	W05
	.byte		N11	, Gs7
	.byte	W19
	.byte		N05	, En6
	.byte	W05
	.byte		N11	, Gs7
	.byte	W24
	.byte	W24
	.byte		N06	, En6
	.byte	W24
	.byte		N12	
	.byte	W19
	.byte		N04	
	.byte	W17
	.byte		N06	
	.byte	W12
	.byte	PATT	
		.word	song024_1_5
	.byte	PATT	
		.word	song024_1_4
	.byte	PATT	
		.word	song024_1_6
	.byte	PATT	
		.word	song024_1_4
	.byte	PATT	
		.word	song024_1_7
	.byte	PATT	
		.word	song024_1_4
song024_1_8:
	.byte		N11	, Gs7, v127
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N05	, En6
	.byte		N11	, Gs7
	.byte	W19
	.byte		N04	, En6
	.byte	W05
	.byte		N11	, Gs7
	.byte	W19
	.byte		N04	, En6
	.byte	W05
	.byte		N11	, Gs7
	.byte	W24
	.byte	PEND
	.byte		N11	
	.byte	W24
	.byte		N06	, En6
	.byte		N11	, Gs7
	.byte	W24
	.byte		N06	
	.byte	W07
	.byte		N12	, En6
	.byte	W17
	.byte		N04	, Fs5
	.byte		N05	, Gs7
	.byte	W12
	.byte		N06	, En6
	.byte		N05	, Gs7
	.byte	W12
	.byte	PATT	
		.word	song024_1_5
	.byte	PATT	
		.word	song024_1_4
	.byte		N11	, Gs7, v127
	.byte	W24
	.byte		N05	, En6
	.byte		N11	, Gs7
	.byte	W19
	.byte		N04	, En6
	.byte	W05
	.byte		N11	, Gs7
	.byte	W19
	.byte		N05	, En6
	.byte	W05
	.byte		N11	, Gs7
	.byte	W24
	.byte	PATT	
		.word	song024_1_4
	.byte	PATT	
		.word	song024_1_7
	.byte	PATT	
		.word	song024_1_4
	.byte	PATT	
		.word	song024_1_8
	.byte	W12
	.byte		N11	, Gn7, v127
	.byte	W12
	.byte			En6
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte		N05	, En6
	.byte	W06
	.byte		N08	, Gn7
	.byte	W12
	.byte		N05	, En6
	.byte		N05	, Gn7
	.byte	W12
	.byte		N02	
	.byte	W06
	.byte		N11	, En6
	.byte	W12
	.byte	PATT	
		.word	song024_1_1
	.byte	PATT	
		.word	song024_1_2
	.byte	PATT	
		.word	song024_1_3
	.byte	PATT	
		.word	song024_1_9
	.byte	PATT	
		.word	song024_1_1
	.byte	PATT	
		.word	song024_1_2
	.byte	PATT	
		.word	song024_1_3
	.byte	PATT	
		.word	song024_1_10
	.byte	GOTO	
		.word	song024_1_1
	.byte		N11	, Gs7, v127
	.byte	W24
	.byte		N06	, En6
	.byte	W19
	.byte		N03	
	.byte	W05
	.byte		N11	, Gs7
	.byte	W19
	.byte		N06	, En6
	.byte	W06
	.byte	FINE

	@********************** Track  2 **********************@

	.global song024_2
song024_2:	@ 0x08272776
	.byte	KEYSH	, 0
	.byte	VOICE	, 46
	.byte	VOL	, v075
	.byte	PAN	, c_v-5
	.byte	W03
	.byte	W13
	.byte		N11	, Fs2, v120
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Fs1
	.byte	W24
	.byte			Gs2
	.byte	W24
	.byte			Gs1
	.byte	W11
song024_2_6:
	.byte	W01
	.byte		N11	, Fs1, v120
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Ds2
	.byte	W12
	.byte			Fs2
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte			As1
	.byte	W11
	.byte	PEND
song024_2_1:
	.byte	W01
	.byte		N11	, Gs1, v120
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Ds2
	.byte	W12
	.byte			Gs2
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte			Ds2
	.byte	W12
	.byte			Cs2
	.byte	W11
	.byte	PEND
song024_2_2:
	.byte	W01
	.byte		N11	, Fn2, v120
	.byte	W12
	.byte			Cn2
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte			Fn1
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte			Gs1
	.byte	W11
	.byte	PEND
song024_2_3:
	.byte	W01
	.byte		N11	, Fs1, v120
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Fs2
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Fs1
	.byte	W11
	.byte	PEND
song024_2_7:
	.byte	W01
	.byte		N11	, Fs1, v120
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Ds2
	.byte	W12
	.byte			Fs2
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Fs1
	.byte	W11
	.byte	PEND
	.byte	PATT	
		.word	song024_2_1
	.byte	PATT	
		.word	song024_2_2
	.byte	PATT	
		.word	song024_2_3
song024_2_4:
	.byte	W01
	.byte		N11	, Fs1, v120
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Ds2
	.byte	W12
	.byte			Fs2
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte			Fs1
	.byte	W11
	.byte	PEND
song024_2_5:
	.byte	W01
	.byte		N11	, Fn1, v120
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte			Cn2
	.byte	W12
	.byte			Fn2
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte			Fn1
	.byte	W11
	.byte	PEND
	.byte	PATT	
		.word	song024_2_4
	.byte	PATT	
		.word	song024_2_5
	.byte	PATT	
		.word	song024_2_4
	.byte	PATT	
		.word	song024_2_5
	.byte	W01
	.byte		N11	, Fs2, v120
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			As1
	.byte	W12
	.byte			Fs1
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N11	
	.byte	W11
	.byte	W13
	.byte			Cs1
	.byte	W12
	.byte			Fn1
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte			Cs2
	.byte	W18
	.byte			Ds1
	.byte	W18
	.byte			Fn1
	.byte	W11
	.byte	PATT	
		.word	song024_2_6
	.byte	PATT	
		.word	song024_2_1
song024_2_8:
	.byte	W01
	.byte		N11	, Fn2, v120
	.byte	W12
	.byte			Cn2
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte			Fn1
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte			Cs2
	.byte	W11
	.byte	PEND
song024_2_9:
	.byte	W01
	.byte		N11	, Fs1, v120
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Ds2
	.byte	W12
	.byte			Fs2
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Gs1
	.byte	W11
	.byte	PEND
	.byte	PATT	
		.word	song024_2_7
	.byte	PATT	
		.word	song024_2_1
	.byte	PATT	
		.word	song024_2_8
	.byte	PATT	
		.word	song024_2_9
	.byte	W01
	.byte		N36	, Bn1, v120
	.byte	W36
	.byte			As1
	.byte	W36
	.byte			Gs1
	.byte	W23
	.byte	W13
	.byte			Fs1
	.byte	W36
	.byte		N12	, Fn1
	.byte	W24
	.byte			Ds1
	.byte	W23
	.byte	W01
	.byte		N36	, As1
	.byte	W36
	.byte			Cn2
	.byte	W36
	.byte			Cs2
	.byte	W23
	.byte	W13
	.byte			Ds2
	.byte	W36
	.byte		N12	, Fn2
	.byte	W24
	.byte			As2
	.byte	W23
	.byte	W01
	.byte		N36	, An2
	.byte	W36
	.byte			Gs2
	.byte	W36
	.byte			Fs2
	.byte	W23
	.byte	W13
	.byte			En2
	.byte	W36
	.byte		N12	, Ds2
	.byte	W24
	.byte			Cs2
	.byte	W23
	.byte	W01
	.byte		N36	, Gs1
	.byte	W36
	.byte			Ds2
	.byte	W36
	.byte			Gs1
	.byte	W23
	.byte	W13
	.byte		N11	, Fs2
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Fs1
	.byte	W12
	.byte		N06	, Gs1
	.byte	W18
	.byte		N12	
	.byte	W18
	.byte		N10	
	.byte	W11
	.byte	PATT	
		.word	song024_2_6
	.byte	PATT	
		.word	song024_2_1
	.byte	W01
	.byte		N11	, Fn2, v120
	.byte	W12
	.byte			Cn2
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte			Fn1
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte			Cn2
	.byte	W11
	.byte	W01
	.byte			En1
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			En2
	.byte	W24
	.byte			Fs2
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Gs1
	.byte	W11
	.byte	PATT	
		.word	song024_2_7
	.byte	PATT	
		.word	song024_2_1
	.byte	PATT	
		.word	song024_2_2
	.byte	PATT	
		.word	song024_2_3
	.byte	GOTO	
		.word	song024_2_6
	.byte	PATT	
		.word	song024_2_6
	.byte	W01
	.byte	FINE

	@********************** Track  3 **********************@

	.global song024_3
song024_3:	@ 0x08272913
	.byte	KEYSH	, 0
	.byte	VOICE	, 6
	.byte	VOL	, v069
	.byte	PAN	, c_v-34
	.byte	W03
	.byte		N06	, As3, v068
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			Cn4, v060
	.byte	W06
song024_3_1:
	.byte		N06	, Fn4, v060
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			Cs4, v056
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			Cs4, v052
	.byte	W06
	.byte			Fn4, v048
	.byte	W06
	.byte			Cs4, v044
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			Cs4, v040
	.byte	W06
	.byte			Fn4, v036
	.byte	W06
	.byte			Cs4, v032
	.byte	W06
	.byte			Fn4, v028
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte	PEND
song024_3_2:
	.byte		N06	, Fn4, v024
	.byte	W06
	.byte			Cs4, v020
	.byte	W06
	.byte			Fn4, v016
	.byte	W06
	.byte			Cs4, v012
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			Cs4, v008
	.byte	W06
	.byte			Fn4, v004
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte	PEND
	.byte	W96
song024_3_3:
	.byte		N06	, As3, v060
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song024_3_1
	.byte	PATT	
		.word	song024_3_2
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
	.byte	PATT	
		.word	song024_3_1
	.byte	PATT	
		.word	song024_3_2
	.byte	W96
	.byte	PATT	
		.word	song024_3_3
	.byte	PATT	
		.word	song024_3_1
	.byte	PATT	
		.word	song024_3_2
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	song024_3_1
	.byte	PATT	
		.word	song024_3_1
	.byte	FINE

	@********************** Track  4 **********************@

	.global song024_4
song024_4:	@ 0x08272A01
	.byte	KEYSH	, 0
	.byte	VOICE	, 21
	.byte	VOL	, v069
	.byte	PAN	, c_v+56
	.byte	W03
	.byte	W01
	.byte		N06	, As3, v088
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			Cn4, v080
	.byte	W05
song024_4_1:
	.byte	W01
	.byte		N06	, Fn4, v080
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			Cs4, v076
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			Cs4, v072
	.byte	W06
	.byte			Fn4, v068
	.byte	W06
	.byte			Cs4, v064
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			Cs4, v060
	.byte	W06
	.byte			Fn4, v056
	.byte	W06
	.byte			Cs4, v052
	.byte	W06
	.byte			Fn4, v048
	.byte	W06
	.byte			Cs4
	.byte	W05
	.byte	PEND
song024_4_2:
	.byte	W01
	.byte		N06	, Fn4, v044
	.byte	W06
	.byte			Cs4, v040
	.byte	W06
	.byte			Fn4, v036
	.byte	W06
	.byte			Cs4, v032
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			Cs4, v028
	.byte	W06
	.byte			Fn4, v024
	.byte	W06
	.byte			Cs4, v020
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			Cs4, v016
	.byte	W06
	.byte			Fn4, v012
	.byte	W06
	.byte			Cs4, v008
	.byte	W06
	.byte			Fn4, v004
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			Cs4
	.byte	W05
	.byte	PEND
	.byte	W96
song024_4_5:
	.byte	W01
	.byte		N06	, As3, v080
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			Cn4
	.byte	W05
	.byte	PEND
	.byte	PATT	
		.word	song024_4_1
	.byte	PATT	
		.word	song024_4_2
	.byte	W96
song024_4_6:
	.byte		N06	, As3, v080
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte	PEND
	.byte			Fn4
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			Cs4, v076
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			Cs4, v072
	.byte	W06
	.byte			Fn4, v068
	.byte	W06
	.byte			Cs4, v064
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			Cs4, v060
	.byte	W06
	.byte			Fn4, v056
	.byte	W06
	.byte			Cs4, v052
	.byte	W06
	.byte			Fn4, v048
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Fn4, v044
	.byte	W06
	.byte			Cs4, v040
	.byte	W06
	.byte			Fn4, v036
	.byte	W06
	.byte			Cs4, v032
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			Cs4, v028
	.byte	W06
	.byte			Fn4, v024
	.byte	W06
	.byte			Cs4, v020
	.byte	W21
	.byte			Gs4, v092
	.byte	W06
	.byte			As4
	.byte	W06
	.byte		N12	, Cs5
	.byte	W12
	.byte		N06	, Gs4, v072
	.byte	W06
	.byte			As4
	.byte	W03
song024_4_3:
	.byte	W03
	.byte		N12	, Cs5, v072
	.byte	W12
	.byte		N06	, Gs4, v052
	.byte	W06
	.byte			As4
	.byte	W06
	.byte		N12	, Cs5
	.byte	W12
	.byte		N06	, Gs4, v032
	.byte	W06
	.byte			As4
	.byte	W06
	.byte		N12	, Cs5
	.byte	W12
	.byte			As4
	.byte	W32
	.byte	W01
	.byte	PEND
	.byte	W60
	.byte	W03
	.byte		N06	, Gs4, v092
	.byte	W06
	.byte			As4
	.byte	W06
	.byte		N12	, Cs5
	.byte	W12
	.byte		N06	, Gs4, v072
	.byte		N12	, Fn5, v092
	.byte	W06
	.byte		N06	, As4, v072
	.byte	W03
	.byte	W03
	.byte		N12	, Cs5
	.byte	W12
	.byte		N06	, Gs4, v052
	.byte		N12	, Fn5, v072
	.byte	W06
	.byte		N06	, As4, v052
	.byte	W06
	.byte		N12	, Cs5
	.byte	W12
	.byte		N06	, Gs4, v032
	.byte		N12	, Fn5, v052
	.byte	W06
	.byte		N06	, As4, v032
	.byte	W06
	.byte		N12	, Cs5
	.byte	W12
	.byte			Fn5
	.byte	W32
	.byte	W01
	.byte	W60
	.byte	W03
	.byte		N06	, Gs4, v092
	.byte	W06
	.byte			As4
	.byte	W06
	.byte		N12	, Cs5
	.byte	W12
	.byte		N06	, Gs4, v072
	.byte	W06
	.byte			As4
	.byte	W03
	.byte	PATT	
		.word	song024_4_3
	.byte	W15
	.byte		N06	, Cs5, v076
	.byte	W12
	.byte			As4
	.byte	W12
	.byte		N24	, Gs4
	.byte	W24
	.byte		N06	, Fn4
	.byte	W12
	.byte			Gs4
	.byte	W12
	.byte			Cn5
	.byte	W09
	.byte	W96
song024_4_4:
	.byte	W60
	.byte	W01
	.byte		N06	, Gs4, v076
	.byte	W06
	.byte			As4
	.byte	W06
	.byte		N12	, Cs5
	.byte	W12
	.byte			As4
	.byte	W11
	.byte	PEND
	.byte	W96
	.byte	W60
	.byte	W01
	.byte		N06	, Gs4
	.byte	W06
	.byte			As4
	.byte	W06
	.byte		N12	, Cs5
	.byte	W12
	.byte			Fn5
	.byte	W11
	.byte	W96
	.byte	PATT	
		.word	song024_4_4
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W04
	.byte		N06	, As3, v076
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Ds4
	.byte	W08
	.byte	PATT	
		.word	song024_4_1
	.byte	PATT	
		.word	song024_4_2
	.byte	W96
	.byte	PATT	
		.word	song024_4_5
	.byte	PATT	
		.word	song024_4_1
	.byte	PATT	
		.word	song024_4_2
	.byte	W96
	.byte	PATT	
		.word	song024_4_6
	.byte	GOTO	
		.word	song024_4_1
	.byte	PATT	
		.word	song024_4_1
	.byte	W01
	.byte	FINE

	@********************** Track  5 **********************@

	.global song024_5
song024_5:	@ 0x08272C1B
	.byte	KEYSH	, 0
	.byte	VOICE	, 60
	.byte	VOL	, v037
	.byte	PAN	, c_v-19
	.byte	W03
	.byte	W96
song024_5_1:
	.byte		N12	, Ds7, v080
	.byte	W32
	.byte		N03	, Ds7, v040
	.byte	W24
	.byte		N04	
	.byte	W24
	.byte			Ds7, v060
	.byte	W16
	.byte	PEND
song024_5_2:
	.byte	W08
	.byte		N03	, Ds7, v052
	.byte	W24
	.byte		N04	
	.byte	W24
	.byte			Ds7, v060
	.byte	W24
	.byte			Ds7, v088
	.byte	W16
	.byte	PEND
	.byte	PATT	
		.word	song024_5_1
	.byte	PATT	
		.word	song024_5_2
	.byte	PATT	
		.word	song024_5_1
	.byte	PATT	
		.word	song024_5_2
	.byte	PATT	
		.word	song024_5_1
song024_5_3:
	.byte		N08	, Ds7, v040
	.byte	W08
	.byte		N03	, Ds7, v052
	.byte	W24
	.byte		N03	
	.byte	W16
	.byte		N05	, Ds7, v060
	.byte	W24
	.byte		N06	, Ds7, v088
	.byte	W08
	.byte		N03	
	.byte	W16
	.byte	PEND
	.byte	PATT	
		.word	song024_5_1
	.byte	PATT	
		.word	song024_5_2
	.byte	PATT	
		.word	song024_5_1
	.byte	PATT	
		.word	song024_5_2
	.byte	PATT	
		.word	song024_5_1
	.byte	PATT	
		.word	song024_5_2
	.byte	PATT	
		.word	song024_5_1
	.byte	PATT	
		.word	song024_5_3
	.byte	PATT	
		.word	song024_5_1
	.byte	PATT	
		.word	song024_5_2
	.byte	PATT	
		.word	song024_5_1
	.byte	PATT	
		.word	song024_5_2
	.byte	PATT	
		.word	song024_5_1
	.byte	PATT	
		.word	song024_5_2
	.byte	PATT	
		.word	song024_5_1
	.byte	PATT	
		.word	song024_5_3
	.byte	PATT	
		.word	song024_5_1
	.byte	PATT	
		.word	song024_5_2
	.byte	PATT	
		.word	song024_5_1
	.byte	PATT	
		.word	song024_5_2
	.byte	PATT	
		.word	song024_5_1
	.byte	PATT	
		.word	song024_5_2
	.byte	PATT	
		.word	song024_5_1
	.byte	PATT	
		.word	song024_5_3
	.byte	PATT	
		.word	song024_5_1
	.byte	PATT	
		.word	song024_5_2
	.byte	PATT	
		.word	song024_5_1
	.byte	PATT	
		.word	song024_5_2
	.byte	PATT	
		.word	song024_5_1
	.byte	PATT	
		.word	song024_5_2
	.byte	PATT	
		.word	song024_5_1
	.byte	PATT	
		.word	song024_5_3
	.byte	GOTO	
		.word	song024_5_1
	.byte		N12	, Ds7, v080
	.byte	W32
	.byte		N03	, Ds7, v040
	.byte	W24
	.byte		N04	
	.byte	W24
	.byte			Ds7, v060
	.byte	W04
	.byte	FINE

	@********************** Track  6 **********************@

	.global song024_6
song024_6:	@ 0x08272D22
	.byte	KEYSH	, 0
	.byte	VOICE	, 61
	.byte	VOL	, v050
	.byte	PAN	, c_v-19
	.byte	W03
	.byte	W96
song024_6_1:
	.byte	W12
	.byte		N11	, Cn8, v080
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song024_6_1
	.byte	PATT	
		.word	song024_6_1
	.byte	PATT	
		.word	song024_6_1
	.byte	PATT	
		.word	song024_6_1
	.byte	PATT	
		.word	song024_6_1
	.byte	PATT	
		.word	song024_6_1
song024_6_2:
	.byte	W12
	.byte		N11	, Cn8, v080
	.byte	W24
	.byte		N11	
	.byte	W18
	.byte		N11	
	.byte	W30
	.byte		N11	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song024_6_1
	.byte	PATT	
		.word	song024_6_1
	.byte	PATT	
		.word	song024_6_1
	.byte	PATT	
		.word	song024_6_1
	.byte	PATT	
		.word	song024_6_1
	.byte	PATT	
		.word	song024_6_1
	.byte	PATT	
		.word	song024_6_1
	.byte	PATT	
		.word	song024_6_2
	.byte	PATT	
		.word	song024_6_1
	.byte	PATT	
		.word	song024_6_1
	.byte	PATT	
		.word	song024_6_1
	.byte	PATT	
		.word	song024_6_1
	.byte	PATT	
		.word	song024_6_1
	.byte	PATT	
		.word	song024_6_1
	.byte	PATT	
		.word	song024_6_1
	.byte	PATT	
		.word	song024_6_2
	.byte	PATT	
		.word	song024_6_1
	.byte	PATT	
		.word	song024_6_1
	.byte	PATT	
		.word	song024_6_1
	.byte	PATT	
		.word	song024_6_1
	.byte	PATT	
		.word	song024_6_1
	.byte	PATT	
		.word	song024_6_1
	.byte	PATT	
		.word	song024_6_1
	.byte	PATT	
		.word	song024_6_2
	.byte	PATT	
		.word	song024_6_1
	.byte	PATT	
		.word	song024_6_1
	.byte	PATT	
		.word	song024_6_1
	.byte	PATT	
		.word	song024_6_1
	.byte	PATT	
		.word	song024_6_1
	.byte	PATT	
		.word	song024_6_1
	.byte	PATT	
		.word	song024_6_1
	.byte	PATT	
		.word	song024_6_2
	.byte	GOTO	
		.word	song024_6_1
	.byte	W12
	.byte		N11	, Cn8, v080
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N11	
	.byte	W11
	.byte	FINE

	@********************** Track  7 **********************@

	.global song024_7
song024_7:	@ 0x08272E13
	.byte	KEYSH	, 0
	.byte	VOICE	, 90
	.byte	VOL	, v080
	.byte	PAN	, c_v-4
	.byte	W03
	.byte	W96
song024_7_2:
	.byte		N24	, Gs3, v127
	.byte		N24	, Cn4
	.byte	W36
	.byte			Fs3
	.byte		N24	, As3
	.byte	W36
	.byte			Gs3
	.byte		N24	, Cn4
	.byte	W24
	.byte	PEND
song024_7_3:
	.byte	W12
	.byte		N24	, Fs3, v127
	.byte		N24	, As3
	.byte	W36
	.byte		N12	, Gs3
	.byte		N12	, Cn4
	.byte	W24
	.byte			Fs3
	.byte		N12	, As3
	.byte	W24
	.byte	PEND
song024_7_4:
	.byte		N24	, Gs3, v127
	.byte		N24	, Cs4
	.byte	W36
	.byte			Gs3
	.byte		N24	, Cn4
	.byte	W36
	.byte			Fs3
	.byte		TIE	, As3
	.byte	W24
	.byte	PEND
	.byte		N96	, Fn3
	.byte	W96
	.byte		EOT	, As3
song024_7_1:
	.byte		N24	, Fs3, v127
	.byte		N24	, As3
	.byte	W36
	.byte			Gs3
	.byte		N24	, Cn4
	.byte	W36
	.byte		N12	, As3
	.byte		N12	, Cs4
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song024_7_1
song024_7_5:
	.byte		N24	, Gs3, v127
	.byte		N24	, Cs4
	.byte	W36
	.byte		N60	, Gs3
	.byte		TIE	, Cn4
	.byte	W60
	.byte	PEND
	.byte		N96	, Fs3
	.byte	W96
	.byte		EOT	, Cn4
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
	.byte	PATT	
		.word	song024_7_2
	.byte	PATT	
		.word	song024_7_3
	.byte	PATT	
		.word	song024_7_4
	.byte		N96	, Fn3, v127
	.byte	W96
	.byte		EOT	, As3
	.byte	PATT	
		.word	song024_7_1
	.byte	PATT	
		.word	song024_7_1
	.byte	PATT	
		.word	song024_7_5
	.byte		N96	, Fs3, v127
	.byte	W96
	.byte		EOT	, Cn4
	.byte	GOTO	
		.word	song024_7_2
	.byte	PATT	
		.word	song024_7_2
	.byte	FINE

	@********************** Track  8 **********************@

	.global song024_8
song024_8:	@ 0x08272EC4
	.byte	KEYSH	, 0
	.byte	VOICE	, 98
	.byte	VOL	, v069
	.byte	PAN	, c_v-44
	.byte	W03
	.byte	W96
song024_8_6:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W12
	.byte		N03	, Fn2, v092
	.byte	W12
	.byte		N13	, Gn2
	.byte	W12
	.byte		N03	, Fn2
	.byte	W12
	.byte		N19	, As2
	.byte	W18
	.byte		N30	, Gn2
	.byte	W30
song024_8_1:
	.byte	W12
	.byte		N03	, Fn2, v092
	.byte	W12
	.byte		N11	, Gn2
	.byte	W12
	.byte		N04	, Fn2
	.byte	W12
	.byte		N17	, As2
	.byte	W18
	.byte			Cn3
	.byte	W18
	.byte		N22	, Dn3
	.byte	W12
	.byte	PEND
	.byte	W12
	.byte		N03	, Fn2
	.byte	W12
	.byte		N11	, Gn2
	.byte	W12
	.byte		N03	, Fn2
	.byte	W12
	.byte		N17	, As2
	.byte	W18
	.byte		N32	, Gn2
	.byte	W30
	.byte	W12
	.byte		N03	, Fn2
	.byte	W12
	.byte		N14	, Gn2
	.byte	W12
	.byte		N04	, Fn2
	.byte	W12
	.byte		N18	, Cn3
	.byte	W18
	.byte		N16	, As2
	.byte	W18
	.byte		N15	, Gn2
	.byte	W12
	.byte	W12
	.byte		N03	, Fn2
	.byte	W12
	.byte		N12	, Gn2
	.byte	W12
	.byte		N03	, Fn2
	.byte	W12
	.byte		N17	, As2
	.byte	W18
	.byte		N32	, Gn2
	.byte	W30
	.byte	PATT	
		.word	song024_8_1
	.byte	W12
	.byte		N03	, Fn2, v092
	.byte	W12
	.byte		N11	, Gn2
	.byte	W12
	.byte		N03	, Fn2
	.byte	W12
	.byte		N19	, As2
	.byte	W18
	.byte		N32	, Gn2
	.byte	W30
	.byte	W12
	.byte		N03	, Fn2
	.byte	W12
	.byte		N23	
	.byte	W24
	.byte		N17	, Cn3
	.byte	W18
	.byte		N28	, As2
	.byte	W30
song024_8_2:
	.byte		N11	, Dn3, v116
	.byte	W12
	.byte		N14	, As2, v096
	.byte	W60
	.byte		N11	, Dn3, v116
	.byte	W12
	.byte		N06	, As2, v092
	.byte	W12
	.byte	PEND
song024_8_3:
	.byte		N11	, Cn3, v112
	.byte	W12
	.byte		N14	, An2, v108
	.byte	W84
	.byte	PEND
song024_8_4:
	.byte		N11	, Cn3, v112
	.byte	W12
	.byte		N12	, An2
	.byte	W60
	.byte		N11	, Dn3, v108
	.byte	W12
	.byte		N05	, An2, v100
	.byte	W12
	.byte	PEND
song024_8_5:
	.byte		N11	, As2, v096
	.byte	W12
	.byte		N17	, Gn2, v112
	.byte	W48
	.byte		N03	, Gn2, v104
	.byte	W12
	.byte		N11	, As2, v096
	.byte	W12
	.byte			Cn3, v104
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song024_8_2
	.byte	PATT	
		.word	song024_8_3
	.byte	PATT	
		.word	song024_8_4
	.byte	PATT	
		.word	song024_8_5
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
		.word	song024_8_6
	.byte	FINE

	@********************** Track  9 **********************@

	.global song024_9
song024_9:	@ 0x08272FB8
	.byte	KEYSH	, 0
	.byte	VOICE	, 0
	.byte	VOL	, v075
	.byte	PAN	, c_v-4
	.byte	W03
	.byte	W96
song024_9_2:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W48
	.byte	W02
	.byte		N12	, Cs4, v092
	.byte	W12
	.byte		N24	, As3
	.byte	W24
	.byte		N12	, Cs4
	.byte	W10
song024_9_1:
	.byte	W02
	.byte		N24	, Cn4, v092
	.byte	W24
	.byte		N12	, Cs4
	.byte	W12
	.byte		N24	, Cn4
	.byte	W24
	.byte		N72	, Gs3
	.byte	W30
	.byte	W01
	.byte	MOD	, 2
	.byte	W03
	.byte	PEND
	.byte	W02
	.byte		5
	.byte	W05
	.byte		7
	.byte	W05
	.byte		10
	.byte	W08
	.byte		12
	.byte	W17
	.byte		8
	.byte	W01
	.byte		N12	, As3
	.byte	W01
	.byte	MOD	, 0
	.byte	W11
	.byte		N12	, Fn4
	.byte	W12
	.byte		N24	, Ds4
	.byte	W24
	.byte		N12	, Cs4
	.byte	W10
	.byte	W02
	.byte		N24	, Cn4
	.byte	W24
	.byte		N12	, Cs4
	.byte	W12
	.byte		N24	, Cn4
	.byte	W24
	.byte		N84	, Gs3
	.byte	W30
	.byte	MOD	, 2
	.byte	W04
	.byte	W02
	.byte		5
	.byte	W05
	.byte		7
	.byte	W06
	.byte		10
	.byte	W24
	.byte	W03
	.byte		7
	.byte	W02
	.byte		0
	.byte	W08
	.byte		N12	, Cs4
	.byte	W12
	.byte		N24	, As3
	.byte	W24
	.byte		N12	, Cs4
	.byte	W10
	.byte	PATT	
		.word	song024_9_1
	.byte	W04
	.byte	MOD	, 5
	.byte	W05
	.byte		7
	.byte	W04
	.byte		10
	.byte	W07
	.byte		12
	.byte	W16
	.byte		10
	.byte	W01
	.byte		1
	.byte	W01
	.byte		N12	, As3, v092
	.byte	W01
	.byte	MOD	, 0
	.byte	W11
	.byte		N12	
	.byte	W12
	.byte		N24	, Fn3
	.byte	W24
	.byte		N12	, As3
	.byte	W10
	.byte	W02
	.byte		N24	, Gs3
	.byte	W24
	.byte		N12	, As3
	.byte	W12
	.byte		N24	, Gs3
	.byte	W24
	.byte		N84	, Cs3
	.byte	W30
	.byte	MOD	, 2
	.byte	W04
	.byte	W01
	.byte		5
	.byte	W03
	.byte		7
	.byte	W03
	.byte		10
	.byte	W05
	.byte		12
	.byte	W30
	.byte	W01
	.byte		8
	.byte	W02
	.byte		0
	.byte	W05
	.byte		N12	, Cs5
	.byte	W12
	.byte		N24	, As4
	.byte	W24
	.byte		N12	, Cs5
	.byte	W10
	.byte	W02
	.byte		N24	, Cn5
	.byte	W24
	.byte		N12	, Cs5
	.byte	W12
	.byte		N24	, Cn5
	.byte	W24
	.byte		N72	, Gs4
	.byte	W30
	.byte	W01
	.byte	MOD	, 2
	.byte	W03
	.byte	W01
	.byte		5
	.byte	W03
	.byte		7
	.byte	W03
	.byte		10
	.byte	W05
	.byte		12
	.byte	W03
	.byte		15
	.byte	W17
	.byte		7
	.byte	W02
	.byte		0
	.byte	W04
	.byte		N12	, As4
	.byte	W12
	.byte			Fn5
	.byte	W12
	.byte		N24	, Ds5
	.byte	W24
	.byte		N12	, Cs5
	.byte	W10
	.byte	W02
	.byte		N24	, Cn5
	.byte	W24
	.byte		N12	, Cs5
	.byte	W12
	.byte		N24	, Cn5
	.byte	W24
	.byte		N84	, Gs4
	.byte	W30
	.byte	W01
	.byte	MOD	, 2
	.byte	W03
	.byte	W02
	.byte		5
	.byte	W05
	.byte		7
	.byte	W05
	.byte		10
	.byte	W24
	.byte		5
	.byte	W01
	.byte		0
	.byte	W13
	.byte		N12	, Cs5
	.byte	W12
	.byte		N24	, As4
	.byte	W24
	.byte		N12	, Cs5
	.byte	W10
	.byte	W02
	.byte		N24	, Cn5
	.byte	W24
	.byte		N12	, Cs5
	.byte	W12
	.byte		N24	, Cn5
	.byte	W24
	.byte		N72	, Gs4
	.byte	W28
	.byte	MOD	, 2
	.byte	W06
	.byte	W02
	.byte		5
	.byte	W10
	.byte		7
	.byte	W23
	.byte		0
	.byte	W01
	.byte	W02
	.byte		N12	, As4
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N24	, Fn4
	.byte	W24
	.byte		N12	, As4
	.byte	W10
	.byte	W02
	.byte		N24	, Gs4
	.byte	W24
	.byte		N12	, As4
	.byte	W12
	.byte		N24	, Gs4
	.byte	W24
	.byte		N06	, Cs4
	.byte	W12
	.byte		N10	
	.byte	W10
	.byte		N11	, Fn4
	.byte	W12
	.byte		TIE	, Ds4
	.byte	W56
	.byte	MOD	, 1
	.byte	W13
	.byte		3
	.byte	W11
	.byte		6
	.byte	W14
	.byte		8
	.byte	W02
	.byte	W56
	.byte	W02
	.byte		5
	.byte	W02
	.byte		EOT	
	.byte	MOD	, 0
	.byte		N12	, Cs4
	.byte	W12
	.byte			Ds4
	.byte	W12
	.byte		TIE	, Fn4
	.byte	W12
	.byte	W88
	.byte	W01
	.byte	MOD	, 1
	.byte	W03
	.byte		3
	.byte	W04
	.byte		6
	.byte	W08
	.byte		8
	.byte	W11
	.byte		11
	.byte	W36
	.byte	W03
	.byte		8
	.byte	W02
	.byte		EOT	
	.byte	MOD	, 2
	.byte		N09	, Cs4
	.byte	W01
	.byte	MOD	, 0
	.byte	W11
	.byte		N12	
	.byte	W12
	.byte			Fn4
	.byte	W12
	.byte		TIE	, En4
	.byte	W80
	.byte	W01
	.byte	MOD	, 2
	.byte	W07
	.byte		5
	.byte	W04
	.byte		7
	.byte	W04
	.byte	W06
	.byte		10
	.byte	W52
	.byte		5
	.byte	W02
	.byte		EOT	
	.byte	MOD	, 0
	.byte		N12	, Cs4
	.byte	W12
	.byte			En4
	.byte	W12
	.byte		N96	, Ds4
	.byte	W12
	.byte	W30
	.byte	MOD	, 2
	.byte	W05
	.byte		5
	.byte	W05
	.byte		7
	.byte	W06
	.byte		10
	.byte	W13
	.byte		12
	.byte	W22
	.byte		8
	.byte	W02
	.byte		0
	.byte	W01
	.byte		N08	, Fn4
	.byte	W12
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N11	, Fs4
	.byte	W12
	.byte		N12	, Fn4
	.byte	W12
	.byte			Gs4
	.byte	W12
	.byte		N08	, Fn4
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			Cs4
	.byte	W12
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	song024_9_2
	.byte	FINE

	@********************** Track  10 **********************@

	.global song024_10
song024_10:	@ 0x0827317C
	.byte	KEYSH	, 0
	.byte	VOICE	, 82
	.byte	VOL	, v075
	.byte	PAN	, c_v-34
	.byte	W03
	.byte	W96
song024_10_1:
	.byte		N92	, Cs3, v092
	.byte		N92	, Fn3, v080
	.byte	W92
	.byte	W03
	.byte		N90	, Ds3, v084
	.byte	W01
	.byte	PEND
	.byte			As2, v092
	.byte	W96
	.byte		N44	, Fn3, v088
	.byte		N44	, Gs3, v080
	.byte	W44
	.byte	W03
	.byte		N48	, Cn3, v092
	.byte	W01
	.byte			Fn3, v080
	.byte	W48
	.byte		N92	, Gs2, v060
	.byte	W01
	.byte			Cs3, v080
	.byte	W92
	.byte	W03
	.byte			Cs3, v092
	.byte		N92	, Fs3, v080
	.byte	W92
	.byte	W03
	.byte		N90	, Ds3, v084
	.byte	W01
song024_10_2:
	.byte		N90	, Cs3, v092
	.byte	W92
	.byte	W03
	.byte		N44	, Gs3, v080
	.byte	W01
	.byte	PEND
	.byte			Cs3, v096
	.byte	W44
	.byte	W03
	.byte		N48	, Cn3
	.byte	W01
	.byte			Fn3, v080
	.byte	W48
	.byte		N92	, Fs2, v084
	.byte	W01
	.byte			Cs3, v080
	.byte	W92
	.byte	W02
	.byte			As2, v096
	.byte	W01
	.byte			Fn2, v092
	.byte	W96
	.byte	W56
	.byte	W03
	.byte		N06	, En2, v096
	.byte	W07
	.byte		N04	, Fn2
	.byte	W05
	.byte		N05	, Gs2
	.byte	W07
	.byte		N04	, As2
	.byte	W05
	.byte		N08	, Cs3
	.byte	W12
	.byte		N10	, Gs2
	.byte		N12	, Cs3
	.byte	W01
	.byte	W12
	.byte		N80	, Fs2
	.byte		N80	, Ds3
	.byte	W84
	.byte	W56
	.byte	W03
	.byte		N06	
	.byte	W07
	.byte			En3
	.byte	W06
	.byte			Ds3
	.byte	W06
	.byte		N05	, Cs3
	.byte	W06
	.byte			Gs2
	.byte	W11
	.byte		N80	, As2
	.byte	W01
	.byte			Fn2, v092
	.byte	W80
	.byte	W03
	.byte		N05	, Ds3, v096
	.byte	W07
	.byte		N04	, Dn3
	.byte	W05
	.byte		N60	, Cn3
	.byte	W01
	.byte		N56	, Fn2, v092
	.byte	W60
	.byte	W01
	.byte		N05	, Cn3, v096
	.byte	W05
	.byte			Cs3
	.byte	W05
	.byte		N06	, Cn3
	.byte	W07
	.byte		N04	, Bn2
	.byte	W05
	.byte		N06	, Fn2
	.byte	W12
	.byte		N80	, As2
	.byte	W01
	.byte			Fn2
	.byte	W84
	.byte	W01
	.byte		N05	
	.byte	W05
	.byte			En2
	.byte	W05
	.byte		N11	, Cs2
	.byte	W01
	.byte	W11
	.byte			Ds2
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Gs2
	.byte		N11	, Ds3
	.byte	W36
	.byte	W01
	.byte	PATT	
		.word	song024_10_1
	.byte		N90	, Gs2, v092
	.byte	W92
	.byte	W03
	.byte		N44	, Gs3, v080
	.byte	W01
song024_10_3:
	.byte		N44	, Fn3, v088
	.byte	W44
	.byte	W03
	.byte		N48	, Cn3, v092
	.byte	W01
	.byte			Fn3, v080
	.byte	W48
	.byte	PEND
	.byte		N92	, Gs2, v084
	.byte	W01
	.byte			Cs3, v080
	.byte	W92
	.byte	W03
	.byte	PATT	
		.word	song024_10_1
	.byte	PATT	
		.word	song024_10_2
	.byte	PATT	
		.word	song024_10_3
	.byte		N92	, Fs3, v084
	.byte	W01
	.byte			As2, v080
	.byte	W92
	.byte	W03
	.byte		N32	, Bn2, v092
	.byte		N32	, Fs3, v080
	.byte	W36
	.byte			As2
	.byte		N32	, Fn3
	.byte	W36
	.byte			Gs2
	.byte		N32	, Ds3
	.byte	W24
	.byte	W12
	.byte			Fs2, v084
	.byte		N32	, Cs3
	.byte	W36
	.byte		N22	, Fn2, v080
	.byte		N22	, Cn3
	.byte	W24
	.byte		N23	, Fn2
	.byte	W24
	.byte		N32	
	.byte		N32	, As2, v088
	.byte	W36
	.byte			Gn2, v080
	.byte		N32	, Cn3, v092
	.byte	W36
	.byte		N23	, Gs2
	.byte		N23	, Cs3, v080
	.byte	W24
	.byte	W12
	.byte		N32	, Ds3, v084
	.byte	W01
	.byte			As2, v080
	.byte	W32
	.byte	W03
	.byte		N24	, Cs3
	.byte		N22	, Fn3, v092
	.byte	W24
	.byte		N23	, Fn3, v080
	.byte		N23	, As3, v092
	.byte	W24
	.byte		N32	, En3, v080
	.byte		N32	, An3, v092
	.byte	W36
	.byte			Ds3, v080
	.byte		N32	, Gs3, v092
	.byte	W36
	.byte			Cs3
	.byte		N32	, Fs3, v080
	.byte	W24
	.byte	W12
	.byte			Bn2, v084
	.byte		N32	, En3, v092
	.byte	W36
	.byte		N22	, As2
	.byte		N22	, Ds3, v080
	.byte	W24
	.byte		N24	, Gs2, v092
	.byte		N24	, Cs3, v080
	.byte	W24
	.byte		N44	, Fn3, v088
	.byte		N44	, Gs3
	.byte	W44
	.byte	W03
	.byte		N48	, Cn3, v092
	.byte		N48	, Fn3
	.byte	W48
	.byte	W01
	.byte		N92	, Gs2, v084
	.byte	W96
song024_10_4:
	.byte		N06	, Fs2, v088
	.byte		N06	, Cs3, v096
	.byte		N06	, Fn3, v088
	.byte	W18
	.byte			Fs2, v080
	.byte		N06	, Cs3, v092
	.byte		N06	, Fn3, v080
	.byte	W18
	.byte			Fs2, v068
	.byte		N06	, Cs3, v080
	.byte		N06	, Fn3, v068
	.byte	W10
	.byte			Fs2, v064
	.byte		N06	, Fn3
	.byte	W01
	.byte			Cs3, v076
	.byte	W17
	.byte			Fs2, v052
	.byte		N06	, Fn3
	.byte	W01
	.byte			Cs3, v064
	.byte	W17
	.byte			Fs2, v044
	.byte		N06	, Fn3
	.byte	W01
	.byte			Cs3, v056
	.byte	W13
	.byte	PEND
song024_10_5:
	.byte		N06	, Fs2, v044
	.byte		N06	, Cs3
	.byte		N06	, Ds3
	.byte	W16
	.byte			Fs2
	.byte		N06	, Ds3
	.byte	W01
	.byte			Cs3
	.byte	W17
	.byte			Fs2
	.byte		N06	, Ds3
	.byte	W01
	.byte			Cs3
	.byte	W11
	.byte			Fs2
	.byte		N06	, Ds3
	.byte	W01
	.byte			Cs3
	.byte	W17
	.byte			Fs2
	.byte		N06	, Ds3
	.byte	W01
	.byte			Cs3
	.byte	W17
	.byte			Fs2
	.byte		N06	, Ds3
	.byte	W01
	.byte			Cs3
	.byte	W13
	.byte	PEND
song024_10_6:
	.byte		N06	, Fn2, v088
	.byte		N06	, Gs2, v096
	.byte		N06	, Ds3, v088
	.byte	W16
	.byte			Fn2, v084
	.byte		N06	, Ds3
	.byte	W01
	.byte			Gs2, v096
	.byte	W17
	.byte			Fn2, v072
	.byte		N06	, Ds3
	.byte	W01
	.byte			Gs2, v084
	.byte	W11
	.byte			Fn2, v064
	.byte		N06	, Ds3
	.byte	W01
	.byte			Gs2, v076
	.byte	W19
	.byte			Fn2, v048
	.byte		N06	, Gs2, v060
	.byte		N06	, Ds3, v048
	.byte	W18
	.byte			Fn2, v044
	.byte		N06	, Gs2, v052
	.byte		N06	, Ds3, v044
	.byte	W12
	.byte	PEND
	.byte			En2
	.byte		N06	, As2
	.byte		N06	, Ds3
	.byte	W18
	.byte			En2
	.byte		N06	, As2
	.byte		N06	, Ds3
	.byte	W16
	.byte			As2
	.byte		N06	, Ds3
	.byte	W01
	.byte			En2
	.byte	W11
	.byte			As2
	.byte		N06	, Ds3
	.byte	W01
	.byte			En2
	.byte	W17
	.byte			As2
	.byte		N06	, Ds3
	.byte	W01
	.byte			En2
	.byte	W17
	.byte			As2
	.byte		N06	, Ds3
	.byte	W01
	.byte			En2
	.byte	W13
	.byte	PATT	
		.word	song024_10_4
	.byte	PATT	
		.word	song024_10_5
	.byte	PATT	
		.word	song024_10_6
	.byte		N06	, Fs2, v044
	.byte		N06	, Cs3
	.byte		N06	, Fn3
	.byte	W18
	.byte			Fs2
	.byte		N06	, Cs3
	.byte		N06	, Fn3
	.byte	W16
	.byte			Cs3
	.byte		N06	, Fn3
	.byte	W01
	.byte			Fs2
	.byte	W11
	.byte			Cs3
	.byte		N06	, Fn3
	.byte	W01
	.byte			Fs2
	.byte	W17
	.byte			Cs3
	.byte		N06	, Fn3
	.byte	W01
	.byte			Fs2
	.byte	W17
	.byte			Cs3
	.byte		N06	, Fn3
	.byte	W01
	.byte			Fs2
	.byte	W13
	.byte	GOTO	
		.word	song024_10_1
	.byte		N92	, Cs3, v092
	.byte		N92	, Fn3, v080
	.byte	W92
	.byte	W02
	.byte	FINE

	@********************** Track  11 **********************@

	.global song024_11
song024_11:	@ 0x082733F3
	.byte	KEYSH	, 0
	.byte	VOICE	, 120
	.byte	VOL	, v069
	.byte	PAN	, c_v+36
	.byte	W03
	.byte	W96
song024_11_3:
	.byte		N92	, Ds4, v112
	.byte	W92
	.byte	W03
	.byte		N90	, Cs4
	.byte	W01
song024_11_1:
	.byte	W92
	.byte	W03
	.byte		N44	, Fs4, v112
	.byte	W01
	.byte	PEND
	.byte	W48
	.byte		N48	, Ds4
	.byte	W48
song024_11_2:
	.byte	W01
	.byte		N92	, Bn3, v112
	.byte	W92
	.byte	W03
	.byte	PEND
	.byte			En4
	.byte	W92
	.byte	W03
	.byte		N90	, Cs4
	.byte	W01
	.byte	PATT	
		.word	song024_11_1
	.byte	W48
	.byte		N48	, Ds4, v112
	.byte	W48
	.byte	PATT	
		.word	song024_11_2
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
	.byte		N36	, An4, v112
	.byte	W36
	.byte			Gs4
	.byte	W36
	.byte			Fs4
	.byte	W24
	.byte	W12
	.byte			En4
	.byte	W36
	.byte		N12	, Ds4
	.byte	W24
	.byte			Cs4
	.byte	W12
	.byte			Ds4
	.byte	W12
	.byte		N36	, Gs3
	.byte	W36
	.byte			As3
	.byte	W36
	.byte			Bn3
	.byte	W24
	.byte	W12
	.byte			Cs4
	.byte	W36
	.byte		N12	, Ds4
	.byte	W24
	.byte			Gs4
	.byte	W24
	.byte		N36	, Gn4
	.byte	W36
	.byte			Fs4
	.byte	W36
	.byte			En4
	.byte	W24
	.byte	W12
	.byte			Dn4
	.byte	W36
	.byte		N24	, Cs4
	.byte	W24
	.byte			Bn3
	.byte	W23
	.byte		N44	, Fs4
	.byte	W01
	.byte	W48
	.byte		N48	, Ds4
	.byte	W48
	.byte	PATT	
		.word	song024_11_2
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	song024_11_3
	.byte		N92	, Ds4, v112
	.byte	W92
	.byte	W02
	.byte	FINE

	@********************** Track  12 **********************@

	.global song024_12
song024_12:	@ 0x0827348B
	.byte	KEYSH	, 0
	.byte	VOICE	, 108
	.byte	VOL	, v075
	.byte	PAN	, c_v+36
	.byte	W03
	.byte	W96
song024_12_5:
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
song024_12_1:
	.byte		N11	, Fn4, v116
	.byte	W12
	.byte		N14	, Cs4, v096
	.byte	W60
	.byte		N11	, Fn4, v116
	.byte	W12
	.byte		N06	, Cs4, v092
	.byte	W12
	.byte	PEND
song024_12_2:
	.byte		N11	, Ds4, v112
	.byte	W12
	.byte		N14	, Cn4, v108
	.byte	W84
	.byte	PEND
song024_12_3:
	.byte		N11	, Ds4, v112
	.byte	W12
	.byte		N12	, Cn4
	.byte	W60
	.byte		N11	, Fn4, v108
	.byte	W12
	.byte		N05	, Cn4, v100
	.byte	W12
	.byte	PEND
song024_12_4:
	.byte		N11	, Cs4, v096
	.byte	W12
	.byte		N17	, As3, v112
	.byte	W48
	.byte		N03	, As3, v104
	.byte	W12
	.byte		N11	, Cs4, v096
	.byte	W12
	.byte			Ds4, v104
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song024_12_1
	.byte	PATT	
		.word	song024_12_2
	.byte	PATT	
		.word	song024_12_3
	.byte	PATT	
		.word	song024_12_4
	.byte		N36	, Fs4, v120
	.byte	W36
	.byte			Fn4
	.byte	W36
	.byte			Ds4
	.byte	W24
	.byte	W12
	.byte			Cs4
	.byte	W36
	.byte		N12	, Cn4
	.byte	W24
	.byte			As3
	.byte	W12
	.byte			Cn4
	.byte	W12
	.byte		N36	, As3
	.byte	W36
	.byte			Cn4
	.byte	W36
	.byte			Cs4
	.byte	W24
	.byte	W12
	.byte			Ds4
	.byte	W36
	.byte		N12	, Fn4
	.byte	W24
	.byte			As4
	.byte	W24
	.byte		N36	, An4
	.byte	W36
	.byte			Gs4
	.byte	W36
	.byte			Fs4
	.byte	W24
	.byte	W12
	.byte			En4
	.byte	W36
	.byte		N24	, Ds4
	.byte	W24
	.byte			Cs4
	.byte	W23
	.byte		N44	, Ds4, v088
	.byte	W01
	.byte	W48
	.byte		N48	, Cn4
	.byte	W48
	.byte	W01
	.byte		N92	, Gs3
	.byte	W92
	.byte	W03
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	song024_12_5
	.byte	FINE
    
	mAlignWord
	.global song024
song024:	@ 0x08273544
	.byte	12		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	mAlignWord
	.word	voicegroup008		@ voicegroup/tone

	.word	song024_1		@ track
	.word	song024_2		@ track
	.word	song024_3		@ track
	.word	song024_4		@ track
	.word	song024_5		@ track
	.word	song024_6		@ track
	.word	song024_7		@ track
	.word	song024_8		@ track
	.word	song024_9		@ track
	.word	song024_10		@ track
	.word	song024_11		@ track
	.word	song024_12		@ track

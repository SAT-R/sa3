	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song072_1
song072_1:	@ 0x082A3E84
	.byte	KEYSH	, 0
	.byte	TEMPO	, 82
	.byte	VOICE	, 127
	.byte	VOL	, v083
	.byte	PAN	, c_v
	.byte	W03
	.byte	TEMPO	, 82
	.byte		N06	, Gn7, v127
	.byte	W06
	.byte			Gs4
	.byte	W06
	.byte		N05	, An4
	.byte	W07
	.byte		N07	, Gn7
	.byte	W11
	.byte		N05	, Bn4
	.byte	W06
	.byte		N06	, Cn5
	.byte	W07
	.byte		N05	, Cs5
	.byte	W05
	.byte		N06	, Dn5
	.byte	W06
	.byte		N05	, Ds5
	.byte	W06
	.byte			Gn7
	.byte	W05
	.byte		N06	, Fn5
	.byte	W07
	.byte			Fs5
	.byte	W07
	.byte		N04	, Gn5
	.byte	W05
	.byte		N06	, Gs5
	.byte	W06
	.byte		N05	, An5
	.byte	W06
song072_1_1:
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
	.byte		N06	, En6
	.byte	W07
	.byte		N05	, Fn6
	.byte	W05
	.byte		N06	, Fs6
	.byte	W07
	.byte		N05	, Gn6
	.byte	W05
	.byte			Gs6
	.byte	W06
	.byte		N06	, An6
	.byte	W06
	.byte			As6
	.byte	W06
	.byte		N05	, Bn6
	.byte	W06
	.byte			Cn7
	.byte	W06
	.byte		N06	, Cs7
	.byte	W06
	.byte	PEND
	.byte			Gn7
	.byte	W06
	.byte			Gs4
	.byte	W06
	.byte		N05	, An4
	.byte	W07
	.byte		N06	, Gn7
	.byte	W11
	.byte		N05	, Bn4
	.byte	W06
	.byte		N06	, Cn5
	.byte	W07
	.byte		N05	, Cs5
	.byte	W05
	.byte		N06	, Dn5
	.byte	W06
	.byte		N05	, Ds5
	.byte	W06
	.byte			Gn7
	.byte	W05
	.byte		N06	, Fn5
	.byte	W07
	.byte			Fs5
	.byte	W07
	.byte		N04	, Gn5
	.byte	W05
	.byte		N06	, Gs5
	.byte	W06
	.byte		N05	, An5
	.byte	W06
	.byte	PATT	
		.word	song072_1_1
	.byte		N06	, Gn7, v127
	.byte	W06
	.byte			Gs4
	.byte	W06
	.byte		N05	, An4
	.byte	W05
	.byte		N07	, Gn7
	.byte	W13
	.byte		N05	, Bn4
	.byte	W06
	.byte		N06	, Cn5
	.byte	W07
	.byte		N05	, Cs5
	.byte	W05
	.byte		N06	, Dn5
	.byte	W06
	.byte		N05	, Ds5
	.byte	W06
	.byte			Gn7
	.byte	W05
	.byte		N06	, Fn5
	.byte	W07
	.byte			Fs5
	.byte	W07
	.byte		N04	, Gn5
	.byte	W05
	.byte		N06	, Gs5
	.byte	W06
	.byte		N05	, An5
	.byte	W06
	.byte	PATT	
		.word	song072_1_1
song072_1_2:
	.byte		N06	, Gn7, v127
	.byte	W06
	.byte			Gs4
	.byte	W06
	.byte		N05	, An4
	.byte	W05
	.byte		N06	, Gn7
	.byte	W13
	.byte		N05	, Bn4
	.byte	W06
	.byte		N06	, Cn5
	.byte	W07
	.byte		N05	, Cs5
	.byte	W05
	.byte		N06	, Dn5
	.byte	W06
	.byte		N05	, Ds5
	.byte	W06
	.byte			Gn7
	.byte	W05
	.byte		N06	, Fn5
	.byte	W07
	.byte			Fs5
	.byte	W07
	.byte		N04	, Gn5
	.byte	W05
	.byte		N06	, Gs5
	.byte	W06
	.byte		N05	, An5
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song072_1_1
	.byte	PATT	
		.word	song072_1_2
	.byte	PATT	
		.word	song072_1_1
	.byte	PATT	
		.word	song072_1_2
	.byte	PATT	
		.word	song072_1_1
	.byte	PATT	
		.word	song072_1_2
	.byte	PATT	
		.word	song072_1_1
	.byte	PATT	
		.word	song072_1_2
	.byte	PATT	
		.word	song072_1_1
	.byte		N06	, Gn7, v127
	.byte	W06
	.byte			Gs4
	.byte	W06
	.byte		N05	, An4
	.byte	W07
	.byte		N07	, Gn7
	.byte	W11
	.byte		N05	, Bn4
	.byte	W06
	.byte		N06	, Cn5
	.byte	W07
	.byte		N05	, Cs5
	.byte	W05
	.byte		N06	, Dn5
	.byte	W06
	.byte		N05	, Ds5
	.byte	W06
	.byte			Gn7
	.byte	W05
	.byte		N06	, Fn5
	.byte	W07
	.byte			Fs5
	.byte	W07
	.byte		N04	, Gn5
	.byte	W05
	.byte		N06	, Gs5
	.byte	W06
	.byte		N05	, An5
	.byte	W06
	.byte	GOTO	
		.word	song072_1_1
	.byte	PATT	
		.word	song072_1_1
	.byte	FINE

	@********************** Track  2 **********************@

	.global song072_2
song072_2:	@ 0x082A3FD6
	.byte	KEYSH	, 0
	.byte	VOICE	, 60
	.byte	VOL	, v050
	.byte	PAN	, c_v-19
	.byte	W03
song072_2_1:
	.byte		N05	, Ds7, v080
	.byte	W06
	.byte		N03	, Bn6, v052
	.byte	W18
	.byte		N05	, Ds7, v056
	.byte	W06
	.byte		N03	, Bn6, v032
	.byte	W18
	.byte		N05	, Ds7, v080
	.byte	W06
	.byte		N03	, Bn6, v052
	.byte	W18
	.byte		N05	, Ds7, v080
	.byte	W06
	.byte		N03	, Bn6, v052
	.byte	W18
	.byte	PEND
song072_2_2:
	.byte	PATT	
		.word	song072_2_1
	.byte	PATT	
		.word	song072_2_1
	.byte	PATT	
		.word	song072_2_1
	.byte	PATT	
		.word	song072_2_1
	.byte	PATT	
		.word	song072_2_1
	.byte	PATT	
		.word	song072_2_1
	.byte	PATT	
		.word	song072_2_1
	.byte	PATT	
		.word	song072_2_1
	.byte	PATT	
		.word	song072_2_1
	.byte	PATT	
		.word	song072_2_1
	.byte	PATT	
		.word	song072_2_1
	.byte	PATT	
		.word	song072_2_1
	.byte	PATT	
		.word	song072_2_1
	.byte	PATT	
		.word	song072_2_1
	.byte	PATT	
		.word	song072_2_1
	.byte	PATT	
		.word	song072_2_1
	.byte	GOTO	
		.word	song072_2_2
	.byte		N05	, Ds7, v080
	.byte	W06
	.byte		N03	, Bn6, v052
	.byte	W18
	.byte		N05	, Ds7, v056
	.byte	W06
	.byte		N03	, Bn6, v032
	.byte	W18
	.byte		N05	, Ds7, v080
	.byte	W06
	.byte		N03	, Bn6, v052
	.byte	W18
	.byte		N05	, Ds7, v080
	.byte	W06
	.byte		N03	, Bn6, v052
	.byte	W03
	.byte	FINE

	@********************** Track  3 **********************@

	.global song072_3
song072_3:	@ 0x082A4076
	.byte	KEYSH	, 0
	.byte	VOICE	, 61
	.byte	VOL	, v070
	.byte	PAN	, c_v-19
	.byte	W03
song072_3_1:
	.byte	W12
	.byte		N12	, Gn7, v068
	.byte	W48
	.byte		N12	
	.byte	W36
	.byte	PEND
song072_3_5:
	.byte	PATT	
		.word	song072_3_1
	.byte	PATT	
		.word	song072_3_1
song072_3_2:
	.byte	W12
	.byte		N12	, Gn7, v068
	.byte	W48
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song072_3_1
	.byte	PATT	
		.word	song072_3_1
song072_3_3:
	.byte	W12
	.byte		N12	, Gn7, v068
	.byte	W48
	.byte		N11	
	.byte	W36
	.byte	PEND
song072_3_4:
	.byte	W12
	.byte		N12	, Gn7, v068
	.byte	W24
	.byte		N12	
	.byte	W48
	.byte		N12	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song072_3_1
	.byte	PATT	
		.word	song072_3_1
	.byte	PATT	
		.word	song072_3_1
	.byte	PATT	
		.word	song072_3_2
	.byte	PATT	
		.word	song072_3_1
	.byte	PATT	
		.word	song072_3_1
	.byte	PATT	
		.word	song072_3_3
	.byte	PATT	
		.word	song072_3_4
	.byte	PATT	
		.word	song072_3_1
	.byte	GOTO	
		.word	song072_3_5
	.byte	W12
	.byte		N12	, Gn7, v068
	.byte	W48
	.byte		N12	
	.byte	W12
	.byte	FINE

	@********************** Track  4 **********************@

	.global song072_4
song072_4:	@ 0x082A40F1
	.byte	KEYSH	, 0
	.byte	VOICE	, 46
	.byte	VOL	, v073
	.byte	PAN	, c_v-6
	.byte	W03
song072_4_1:
	.byte		N13	, Cs2, v100
	.byte	W36
	.byte		N16	, Dn2
	.byte	W36
	.byte		N17	, Ds2
	.byte	W24
	.byte	PEND
song072_4_2:
	.byte	W12
	.byte		N17	, Ds2, v100
	.byte	W36
	.byte		N13	, Dn2
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte	PEND
song072_4_3:
	.byte		N18	, Cs2, v100
	.byte	W36
	.byte		N17	, Dn2
	.byte	W36
	.byte		N32	, Ds2
	.byte	W24
	.byte	PEND
song072_4_4:
	.byte	W12
	.byte		N11	, Ds2, v100
	.byte	W12
	.byte			As1
	.byte	W12
	.byte		N52	, Ds1
	.byte	W60
	.byte	PEND
	.byte	PATT	
		.word	song072_4_1
	.byte	PATT	
		.word	song072_4_2
	.byte	PATT	
		.word	song072_4_3
	.byte	PATT	
		.word	song072_4_4
song072_4_5:
	.byte	W03
	.byte		N10	, Fs1, v100
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte			Fs1
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Gs1
	.byte	W24
	.byte			Fs1
	.byte	W12
	.byte			Fs2
	.byte	W09
	.byte	PEND
song072_4_6:
	.byte	W03
	.byte		N10	, Bn1, v100
	.byte	W24
	.byte		N10	
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte			Cs3
	.byte	W09
	.byte	PEND
song072_4_7:
	.byte	W03
	.byte		N10	, Gs1, v100
	.byte	W24
	.byte			Fs2
	.byte	W12
	.byte			Fs1
	.byte	W24
	.byte			Gs1
	.byte	W24
	.byte		N10	
	.byte	W09
	.byte	PEND
	.byte	W03
	.byte			Ds1
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte			Ds1
	.byte	W12
	.byte			Ds2
	.byte	W12
	.byte			Ds1
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte			Fn1
	.byte	W21
	.byte	PATT	
		.word	song072_4_5
	.byte	PATT	
		.word	song072_4_6
	.byte	PATT	
		.word	song072_4_7
	.byte	W03
	.byte		N10	, Bn1, v100
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Cs2
	.byte	W21
	.byte	PATT	
		.word	song072_4_1
	.byte	GOTO	
		.word	song072_4_2
	.byte	W12
	.byte		N17	, Ds2, v100
	.byte	W36
	.byte		N13	, Dn2
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte	FINE

	@********************** Track  5 **********************@

	.global song072_5
song072_5:	@ 0x082A41B0
	.byte	KEYSH	, 0
	.byte	VOICE	, 120
	.byte	VOL	, v080
	.byte	PAN	, c_v+16
	.byte	MOD	, 0
	.byte	W03
	.byte	W96
song072_5_1:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N12	, En3, v112
	.byte	W24
	.byte			Ds3, v108
	.byte	W24
	.byte		N13	, En3, v104
	.byte	W12
	.byte		N15	, Fs3
	.byte	W24
	.byte			Cs3, v108
	.byte	W12
	.byte	W12
	.byte		N14	, Cs3, v100
	.byte	W24
	.byte		N11	, Cs3, v104
	.byte	W12
	.byte		N14	, Ds3, v116
	.byte	W12
	.byte			Cs3, v108
	.byte	W12
	.byte		N12	, Ds3, v112
	.byte	W24
	.byte		N11	, En3, v120
	.byte	W24
	.byte		N12	, Ds3, v104
	.byte	W24
	.byte			En3, v116
	.byte	W12
	.byte		N14	, Gs3, v112
	.byte	W24
	.byte			Cs3, v116
	.byte	W12
	.byte	W12
	.byte			Cs3, v108
	.byte	W84
	.byte		N12	, En3, v120
	.byte	W24
	.byte			Ds3, v112
	.byte	W24
	.byte			En3
	.byte	W12
	.byte		N16	, Fs3, v100
	.byte	W24
	.byte		N14	, Cs3, v108
	.byte	W12
	.byte	W12
	.byte			Cs3, v104
	.byte	W24
	.byte		N10	
	.byte	W12
	.byte		N14	, Ds3
	.byte	W12
	.byte			Cs3, v112
	.byte	W12
	.byte		N13	, Ds3, v116
	.byte	W24
	.byte		N12	, En3
	.byte	W24
	.byte		N10	, Ds3
	.byte	W24
	.byte		N13	, En3, v120
	.byte	W12
	.byte		N15	, Gs3, v100
	.byte	W24
	.byte		N14	, Cs3, v112
	.byte	W12
	.byte	W12
	.byte		N15	
	.byte	W84
	.byte	W96
	.byte	GOTO	
		.word	song072_5_1
	.byte	FINE

	@********************** Track  6 **********************@

	.global song072_6
song072_6:	@ 0x082A423B
	.byte	KEYSH	, 0
	.byte	VOICE	, 0
	.byte	VOL	, v083
	.byte	PAN	, c_v+11
	.byte	W03
song072_6_1:
	.byte	W01
	.byte		N10	, Ds5, v060
	.byte	W12
	.byte		N07	, Cs5
	.byte	W12
	.byte		N06	, Cn5
	.byte	W12
	.byte		N10	, Cs5
	.byte	W12
	.byte		N08	, Cn5
	.byte	W12
	.byte		N06	, As4
	.byte	W12
	.byte		N10	, Cn5
	.byte	W12
	.byte			As4
	.byte	W11
	.byte	PEND
song072_6_2:
	.byte	W01
	.byte		N08	, Gs4, v060
	.byte	W12
	.byte		N10	, As4
	.byte	W12
	.byte		N07	, Gs4
	.byte	W12
	.byte		N06	, Fs4
	.byte	W12
	.byte		N11	, Gs4
	.byte	W12
	.byte			Fs4
	.byte	W12
	.byte		N08	, Fn4
	.byte	W12
	.byte		N06	, Ds4
	.byte	W11
	.byte	W01
	.byte		N10	, Fs4
	.byte	W12
	.byte		N08	, Fn4
	.byte	W12
	.byte		N06	, Ds4
	.byte	W12
	.byte		N10	, Fn4
	.byte	W12
	.byte		N08	, Ds4
	.byte	W12
	.byte		N06	, Cs4
	.byte	W12
	.byte		N96	, Cn4
	.byte	W19
	.byte	MOD	, 1
	.byte	W03
	.byte		5
	.byte	W01
	.byte	W03
	.byte		8
	.byte	W06
	.byte		11
	.byte	W11
	.byte		14
	.byte	W44
	.byte		11
	.byte	W02
	.byte		7
	.byte	W01
	.byte		0
	.byte	W01
	.byte	W28
	.byte	W01
	.byte		N14	, Ds5
	.byte	W12
	.byte		N08	, Cs5
	.byte	W12
	.byte		N06	, Cn5
	.byte	W12
	.byte		N13	, Cs5
	.byte	W12
	.byte		N08	, Cn5
	.byte	W12
	.byte		N06	, As4
	.byte	W12
	.byte		N12	, Cn5
	.byte	W12
	.byte		N09	, As4
	.byte	W11
	.byte	W01
	.byte		N06	, Gs4
	.byte	W12
	.byte		N12	, As4
	.byte	W12
	.byte		N11	, Gs4
	.byte	W12
	.byte		N06	, Fs4
	.byte	W12
	.byte		N12	, Gs4
	.byte	W12
	.byte		N11	, Fs4
	.byte	W12
	.byte		N09	, Fn4
	.byte	W12
	.byte		N05	, Ds4
	.byte	W11
	.byte		N12	, Fs5
	.byte	W13
	.byte		N09	, Fn5
	.byte	W12
	.byte		N06	, Ds5
	.byte	W12
	.byte		N11	, Fn5
	.byte	W12
	.byte		N09	, Ds5
	.byte	W12
	.byte		N07	, Cs5
	.byte	W12
	.byte		TIE	, Ds5
	.byte	W22
	.byte	MOD	, 2
	.byte	W01
	.byte	W04
	.byte		5
	.byte	W08
	.byte		7
	.byte	W07
	.byte		10
	.byte	W09
	.byte		12
	.byte	W44
	.byte		10
	.byte	W02
	.byte		0
	.byte	W10
	.byte		EOT	
	.byte	W12
	.byte	MOD	, 5
	.byte	W01
	.byte		N08	, Fs4
	.byte	W01
	.byte	MOD	, 0
	.byte	W23
	.byte		N08	, Fn4
	.byte	W24
	.byte		N10	, Fs4
	.byte	W12
	.byte		N11	, Gs4
	.byte	W24
	.byte			Ds4
	.byte	W11
	.byte	W13
	.byte		N10	
	.byte	W24
	.byte		N07	
	.byte	W12
	.byte		N10	, Fn4
	.byte	W12
	.byte			Ds4
	.byte	W12
	.byte		N08	, Fn4
	.byte	W23
	.byte	W01
	.byte		N07	, Fs4
	.byte	W24
	.byte		N08	, Fn4
	.byte	W24
	.byte		N09	, Fs4
	.byte	W12
	.byte		N10	, As4
	.byte	W24
	.byte			Ds4
	.byte	W11
	.byte	W13
	.byte		N10	
	.byte	W80
	.byte	W03
	.byte	W01
	.byte		N08	, Fs4
	.byte	W24
	.byte			Fn4
	.byte	W24
	.byte			Fs4
	.byte	W12
	.byte		N12	, Gs4
	.byte	W24
	.byte		N10	, Ds4
	.byte	W11
	.byte	W13
	.byte		N10	
	.byte	W24
	.byte		N06	
	.byte	W12
	.byte		N10	, Fn4
	.byte	W12
	.byte			Ds4
	.byte	W12
	.byte		N09	, Fn4
	.byte	W23
	.byte	W01
	.byte		N08	, Fs4
	.byte	W24
	.byte		N06	, Fn4
	.byte	W24
	.byte		N09	, Fs4
	.byte	W12
	.byte		N11	, As4
	.byte	W24
	.byte		N10	, Ds4
	.byte	W11
	.byte	W13
	.byte		N11	
	.byte	W80
	.byte	W03
	.byte	PATT	
		.word	song072_6_1
	.byte	GOTO	
		.word	song072_6_2
	.byte	W01
	.byte		N08	, Gs4, v060
	.byte	W12
	.byte		N10	, As4
	.byte	W12
	.byte		N07	, Gs4
	.byte	W12
	.byte		N06	, Fs4
	.byte	W12
	.byte		N11	, Gs4
	.byte	W12
	.byte			Fs4
	.byte	W12
	.byte		N08	, Fn4
	.byte	W12
	.byte		N06	, Ds4
	.byte	W07
	.byte	FINE

	@********************** Track  7 **********************@

	.global song072_7
song072_7:	@ 0x082A4380
	.byte	KEYSH	, 0
	.byte	VOICE	, 100
	.byte	VOL	, v083
	.byte	PAN	, c_v-34
	.byte	W03
song072_7_1:
	.byte	W04
	.byte		N10	, Ds4, v076
	.byte	W12
	.byte		N07	, Cs4
	.byte	W12
	.byte		N06	, Cn4
	.byte	W12
	.byte		N10	, Cs4
	.byte	W12
	.byte		N08	, Cn4
	.byte	W12
	.byte		N06	, As3
	.byte	W12
	.byte		N10	, Cn4
	.byte	W12
	.byte			As3
	.byte	W08
	.byte	PEND
song072_7_2:
	.byte	W04
	.byte		N08	, Gs3, v076
	.byte	W12
	.byte		N10	, As3
	.byte	W12
	.byte		N07	, Gs3
	.byte	W12
	.byte		N06	, Fs3
	.byte	W12
	.byte		N11	, Gs3
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte		N08	, Fn3
	.byte	W12
	.byte		N06	, Ds3
	.byte	W08
	.byte	W04
	.byte		N10	, Fs3
	.byte	W12
	.byte		N08	, Fn3
	.byte	W12
	.byte		N06	, Ds3
	.byte	W12
	.byte		N10	, Fn3
	.byte	W12
	.byte		N08	, Ds3
	.byte	W12
	.byte		N06	, Cs3
	.byte	W12
	.byte		N96	, Cn3
	.byte	W19
	.byte	MOD	, 1
	.byte	W01
	.byte	W02
	.byte		5
	.byte	W04
	.byte		8
	.byte	W06
	.byte		11
	.byte	W11
	.byte		14
	.byte	W44
	.byte		11
	.byte	W02
	.byte		7
	.byte	W01
	.byte		0
	.byte	W01
	.byte	W24
	.byte	W01
	.byte	W04
	.byte		N14	, Ds4
	.byte	W12
	.byte		N08	, Cs4
	.byte	W12
	.byte		N06	, Cn4
	.byte	W12
	.byte		N13	, Cs4
	.byte	W12
	.byte		N08	, Cn4
	.byte	W12
	.byte		N06	, As3
	.byte	W12
	.byte		N12	, Cn4
	.byte	W12
	.byte		N09	, As3
	.byte	W08
	.byte	W04
	.byte		N06	, Gs3
	.byte	W12
	.byte		N12	, As3
	.byte	W12
	.byte		N11	, Gs3
	.byte	W12
	.byte		N06	, Fs3
	.byte	W12
	.byte		N12	, Gs3
	.byte	W12
	.byte		N11	, Fs3
	.byte	W12
	.byte		N09	, Fn3
	.byte	W12
	.byte		N05	, Ds3
	.byte	W08
	.byte	W03
	.byte		N12	, Fs4
	.byte	W13
	.byte		N09	, Fn4
	.byte	W12
	.byte		N06	, Ds4
	.byte	W12
	.byte		N11	, Fn4
	.byte	W12
	.byte		N09	, Ds4
	.byte	W12
	.byte		N07	, Cs4
	.byte	W12
	.byte		TIE	, Ds4
	.byte	W20
	.byte	W02
	.byte	MOD	, 2
	.byte	W05
	.byte		5
	.byte	W08
	.byte		7
	.byte	W07
	.byte		10
	.byte	W09
	.byte		12
	.byte	W44
	.byte		10
	.byte	W02
	.byte		0
	.byte	W10
	.byte		EOT	
	.byte	W09
	.byte	PAN	, c_v-34
	.byte	W01
	.byte	MOD	, 5
	.byte	W02
	.byte		0
	.byte		N10	, Fs3, v112
	.byte	W24
	.byte		N09	, Fn3, v108
	.byte	W24
	.byte		N11	, Fs3, v104
	.byte	W12
	.byte		N12	, Gs3
	.byte	W24
	.byte			Ds3, v108
	.byte	W09
	.byte	W15
	.byte			Ds3, v100
	.byte	W24
	.byte		N08	, Ds3, v104
	.byte	W12
	.byte		N11	, Fn3, v116
	.byte	W12
	.byte			Ds3, v108
	.byte	W12
	.byte		N10	, Fn3, v112
	.byte	W21
	.byte	W03
	.byte		N09	, Fs3, v120
	.byte	W24
	.byte		N10	, Fn3, v104
	.byte	W24
	.byte			Fs3, v116
	.byte	W12
	.byte		N11	, As3, v112
	.byte	W24
	.byte		N12	, Ds3, v116
	.byte	W09
	.byte	W15
	.byte			Ds3, v108
	.byte	W80
	.byte	W01
	.byte	W03
	.byte		N10	, Fs3, v120
	.byte	W24
	.byte			Fn3, v112
	.byte	W24
	.byte		N09	, Fs3
	.byte	W12
	.byte		N13	, Gs3, v100
	.byte	W24
	.byte		N12	, Ds3, v108
	.byte	W09
	.byte	W15
	.byte		N11	, Ds3, v104
	.byte	W24
	.byte		N08	
	.byte	W12
	.byte		N11	, Fn3
	.byte	W12
	.byte			Ds3, v112
	.byte	W12
	.byte			Fn3, v116
	.byte	W21
	.byte	W03
	.byte		N09	, Fs3
	.byte	W24
	.byte		N08	, Fn3
	.byte	W24
	.byte		N11	, Fs3, v120
	.byte	W12
	.byte		N13	, As3, v100
	.byte	W24
	.byte		N12	, Ds3, v112
	.byte	W09
	.byte	W15
	.byte		N12	
	.byte	W80
	.byte	W01
	.byte	PATT	
		.word	song072_7_1
	.byte	GOTO	
		.word	song072_7_2
	.byte	W04
	.byte		N08	, Gs3, v076
	.byte	W12
	.byte		N10	, As3
	.byte	W12
	.byte		N07	, Gs3
	.byte	W12
	.byte		N06	, Fs3
	.byte	W12
	.byte		N11	, Gs3
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte		N08	, Fn3
	.byte	W12
	.byte		N06	, Ds3
	.byte	W07
	.byte	FINE

	@********************** Track  8 **********************@

	.global song072_8
song072_8:	@ 0x082A44E3
	.byte	KEYSH	, 0
	.byte	VOICE	, 72
	.byte	VOL	, v083
	.byte	PAN	, c_v
	.byte	W03
song072_8_1:
	.byte		N15	, Ds3, v120
	.byte	W36
	.byte		N13	, En3, v124
	.byte	W36
	.byte		N15	, Fn3
	.byte	W24
	.byte	PEND
song072_8_2:
	.byte	W12
	.byte		N15	, Fn3, v124
	.byte	W36
	.byte		N12	, En3
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte	PEND
song072_8_3:
	.byte		N15	, Ds3, v116
	.byte	W36
	.byte		N13	, En3, v124
	.byte	W36
	.byte		N84	, Fn3
	.byte	W24
	.byte	PEND
	.byte	W96
	.byte	PATT	
		.word	song072_8_1
	.byte	PATT	
		.word	song072_8_2
	.byte	PATT	
		.word	song072_8_3
	.byte	W56
	.byte	W03
	.byte		N04	, Gn4, v084
	.byte	W01
	.byte		N05	, En4, v080
	.byte		N04	, Fn4, v072
	.byte	W03
	.byte			Dn4, v108
	.byte	W02
	.byte			Cn4, v116
	.byte	W02
	.byte			Bn3, v104
	.byte	W01
	.byte			An3, v124
	.byte	W01
	.byte			Gn3, v112
	.byte	W01
	.byte			Fn3, v104
	.byte	W02
	.byte			En3
	.byte	W02
	.byte			Dn3
	.byte	W01
	.byte			Cn3, v100
	.byte	W01
	.byte			Bn2, v104
	.byte	W01
	.byte			An2, v096
	.byte	W01
	.byte			Gn2, v104
	.byte	W01
	.byte			Fn2, v096
	.byte	W02
	.byte			En2, v100
	.byte	W01
	.byte			Dn2, v104
	.byte	W01
	.byte			Cn2, v096
	.byte	W01
	.byte			Bn1
	.byte	W01
	.byte			An1, v088
	.byte	W01
	.byte			Gn1, v076
	.byte	W01
	.byte			Fn1, v072
	.byte	W01
	.byte			Dn1, v084
	.byte		N04	, En1, v072
	.byte	W01
	.byte			Cn1, v080
	.byte	W01
	.byte			Bn0, v076
	.byte	W01
	.byte			An0, v064
	.byte	W02
	.byte			Gn0, v052
	.byte	W03
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song072_8_1
	.byte	GOTO	
		.word	song072_8_2
	.byte	W12
	.byte		N15	, Fn3, v124
	.byte	W36
	.byte		N12	, En3
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte	FINE

	@********************** Track  9 **********************@

	.global song072_9
song072_9:	@ 0x082A4594
	.byte	KEYSH	, 0
	.byte	VOICE	, 118
	.byte	VOL	, v066
	.byte	PAN	, c_v+56
	.byte	W03
song072_9_1:
	.byte	W03
	.byte		N12	, En1, v092
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Fs1
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Gn1
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Gs1
	.byte	W09
	.byte	PEND
song072_9_2:
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
	.byte			Fs1
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Fs1
	.byte	W09
	.byte	PEND
	.byte	PATT	
		.word	song072_9_1
	.byte	PATT	
		.word	song072_9_2
	.byte	W03
	.byte		N12	, Fs2, v092
	.byte	W12
	.byte			Fs1
	.byte	W24
	.byte			Gn2
	.byte	W12
	.byte			Gn1
	.byte	W24
	.byte			Gs2
	.byte	W12
	.byte			Gs1
	.byte	W09
	.byte	W15
	.byte			Ds2
	.byte	W12
	.byte			Gs1
	.byte	W24
	.byte			Fs2
	.byte	W12
	.byte			Fs1
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Fs1
	.byte	W09
	.byte	W03
	.byte			Fs2
	.byte	W12
	.byte			Fs1
	.byte	W24
	.byte			Gn2
	.byte	W12
	.byte			Gn1
	.byte	W24
	.byte			Gs2
	.byte	W21
	.byte	PATT	
		.word	song072_9_2
song072_9_3:
	.byte	W03
	.byte		N12	, Gs2, v092
	.byte	W12
	.byte			Gs3, v080
	.byte	W12
	.byte			Fs2, v092
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Gs3, v080
	.byte	W12
	.byte			Gs2, v092
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Fs3, v080
	.byte	W09
	.byte	PEND
song072_9_4:
	.byte	W03
	.byte		N12	, Gs2, v092
	.byte	W12
	.byte			Ds3, v080
	.byte	W12
	.byte			Gs2, v092
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			Fs3, v080
	.byte	W12
	.byte			Gs2, v092
	.byte	W12
	.byte			Fs3, v080
	.byte	W12
	.byte			Fs2, v092
	.byte	W09
	.byte	PEND
song072_9_5:
	.byte	W03
	.byte		N12	, Gs2, v092
	.byte	W12
	.byte			Gs3, v080
	.byte	W12
	.byte			Gs2, v092
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			Gs3, v080
	.byte	W12
	.byte			Gs2, v092
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Fs3, v080
	.byte	W09
	.byte	PEND
song072_9_6:
	.byte	W03
	.byte		N12	, Gs2, v092
	.byte	W12
	.byte			Cs3, v080
	.byte	W12
	.byte			Gs2, v092
	.byte	W12
	.byte			Ds3, v080
	.byte	W12
	.byte			Fs2, v092
	.byte	W12
	.byte			Fs3, v080
	.byte	W12
	.byte			Gs2, v092
	.byte	W12
	.byte			Fs3, v080
	.byte	W09
	.byte	PEND
	.byte	PATT	
		.word	song072_9_3
	.byte	PATT	
		.word	song072_9_4
	.byte	PATT	
		.word	song072_9_5
	.byte	PATT	
		.word	song072_9_6
	.byte	PATT	
		.word	song072_9_1
	.byte	GOTO	
		.word	song072_9_2
	.byte	PATT	
		.word	song072_9_2
	.byte	W03
	.byte	FINE

	@********************** Track  10 **********************@

	.global song072_10
song072_10:	@ 0x082A4687
	.byte	KEYSH	, 0
	.byte	VOICE	, 118
	.byte	VOL	, v066
	.byte	PAN	, c_v-54
	.byte	W03
song072_10_1:
	.byte		N12	, En1, v100
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Fs1
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Gn1
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte	PEND
song072_10_2:
	.byte		N12	, Gs1, v100
	.byte	W12
	.byte			Ds2
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Fs1
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Fs1
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song072_10_1
	.byte	PATT	
		.word	song072_10_2
	.byte		N12	, Fs2, v100
	.byte	W12
	.byte			Fs1
	.byte	W24
	.byte			Gn2
	.byte	W12
	.byte			Gn1
	.byte	W24
	.byte			Gs2
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte	W12
	.byte			Ds2
	.byte	W12
	.byte			Gs1
	.byte	W24
	.byte			Fs2
	.byte	W12
	.byte			Fs1
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Fs1
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Fs1
	.byte	W24
	.byte			Gn2
	.byte	W12
	.byte			Gn1
	.byte	W24
	.byte			Gs2
	.byte	W24
	.byte	PATT	
		.word	song072_10_2
song072_10_3:
	.byte		N12	, Gs1, v100
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
song072_10_4:
	.byte		N12	, Gs1, v100
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
song072_10_5:
	.byte		N12	, Gs1, v100
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
song072_10_6:
	.byte		N12	, Gs1, v100
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
		.word	song072_10_3
	.byte	PATT	
		.word	song072_10_4
	.byte	PATT	
		.word	song072_10_5
	.byte	PATT	
		.word	song072_10_6
	.byte	PATT	
		.word	song072_10_1
	.byte	GOTO	
		.word	song072_10_2
	.byte	PATT	
		.word	song072_10_2
	.byte	FINE
    
	mAlignWord
	.global song072
song072:	@ 0x082A475C
	.byte	10		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

	mAlignWord
	.word	voicegroup008		@ voicegroup/tone

	.word	song072_1		@ track
	.word	song072_2		@ track
	.word	song072_3		@ track
	.word	song072_4		@ track
	.word	song072_5		@ track
	.word	song072_6		@ track
	.word	song072_7		@ track
	.word	song072_8		@ track
	.word	song072_9		@ track
	.word	song072_10		@ track

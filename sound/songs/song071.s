	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song071_1
song071_1:	@ 0x082A31B8
	.byte	KEYSH	, 0
	.byte	TEMPO	, 90
	.byte	VOICE	, 127
	.byte	VOL	, v078
	.byte	PAN	, c_v
	.byte	W03
	.byte	TEMPO	, 90
	.byte		N10	, Gs3, v127
	.byte	W12
	.byte		N12	, Gn7
	.byte	W24
	.byte		N22	, Gs3
	.byte	W36
	.byte		N12	
	.byte	W24
	.byte	W12
	.byte		N12	
	.byte	W36
	.byte		N11	
	.byte	W12
	.byte		N12	, Gn7
	.byte	W12
	.byte			Gs3
	.byte	W24
	.byte		N10	
	.byte	W12
	.byte		N12	, Gn7
	.byte	W24
	.byte		N22	, Gs3
	.byte	W36
	.byte		N22	
	.byte	W24
song071_1_3:
	.byte		N06	, Gn7, v127
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N17	, Gs3
	.byte	W18
	.byte		N04	, Gn7
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N22	, Gs3
	.byte	W24
	.byte	PEND
song071_1_1:
	.byte		N06	, Gn7, v127
	.byte	W12
	.byte		N12	
	.byte	W11
	.byte		N11	, Gs3
	.byte	W13
	.byte		N10	
	.byte	W12
	.byte		N06	, Gn7
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N24	, Gs3
	.byte	W24
	.byte	PEND
song071_1_2:
	.byte		N06	, Gn7, v127
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N11	, Gs3
	.byte	W12
	.byte		N10	
	.byte	W06
	.byte		N04	, Gn7
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N24	, Gs3
	.byte	W24
	.byte	PEND
	.byte	PATT	
		mPtr	song071_1_1
	.byte	PATT	
		mPtr	song071_1_2
	.byte	PATT	
		mPtr	song071_1_1
	.byte	PATT	
		mPtr	song071_1_2
	.byte	PATT	
		mPtr	song071_1_1
	.byte	PATT	
		mPtr	song071_1_2
	.byte	PATT	
		mPtr	song071_1_1
	.byte	PATT	
		mPtr	song071_1_2
	.byte	PATT	
		mPtr	song071_1_1
	.byte	PATT	
		mPtr	song071_1_2
	.byte	PATT	
		mPtr	song071_1_1
	.byte	PATT	
		mPtr	song071_1_2
	.byte	PATT	
		mPtr	song071_1_1
	.byte	PATT	
		mPtr	song071_1_2
	.byte	PATT	
		mPtr	song071_1_1
	.byte	PATT	
		mPtr	song071_1_2
	.byte	PATT	
		mPtr	song071_1_1
	.byte	PATT	
		mPtr	song071_1_2
	.byte		N06	, Gn7, v127
	.byte	W12
	.byte		N12	
	.byte	W24
	.byte	W01
	.byte			Gs3
	.byte	W32
	.byte	W03
	.byte			Gn7
	.byte	W24
	.byte	W12
	.byte		N12	
	.byte	W36
	.byte	W01
	.byte		N10	, Gs3
	.byte	W23
	.byte		N12	, Gn7
	.byte	W24
	.byte		N22	
	.byte	W36
	.byte		N23	
	.byte	W36
	.byte		N22	, Gs3
	.byte	W24
	.byte	PATT	
		mPtr	song071_1_3
	.byte		N10	, Gs7, v127
	.byte	W12
	.byte		N12	, Gn7
	.byte	W24
	.byte		N23	
	.byte	W36
	.byte		N13	
	.byte	W24
	.byte	W12
	.byte		N12	
	.byte	W36
	.byte		N11	, Gs3
	.byte	W12
	.byte		N12	, Gn7
	.byte	W12
	.byte			Gs3
	.byte	W24
	.byte		N10	, Gn7
	.byte	W12
	.byte		N12	
	.byte	W24
	.byte		N22	, Gs3
	.byte	W36
	.byte			Gn7
	.byte	W24
	.byte		N06	
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N17	, Gs3
	.byte	W18
	.byte		N04	, Gn7
	.byte	W06
	.byte		N10	, Gs3
	.byte	W12
	.byte		N12	, Gn7
	.byte	W12
	.byte		N22	, Gs3
	.byte	W24
	.byte	GOTO	
		mPtr	song071_1_1
	.byte	PATT	
		mPtr	song071_1_1
	.byte	FINE

	@********************** Track  2 **********************@

	.global song071_2
song071_2:	@ 0x082A32DD
	.byte	KEYSH	, 0
	.byte	VOICE	, 60
	.byte	VOL	, v047
	.byte	PAN	, c_v-19
	.byte	W03
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song071_2_1:
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
		mPtr	song071_2_1
	.byte	PATT	
		mPtr	song071_2_1
	.byte	PATT	
		mPtr	song071_2_1
	.byte	PATT	
		mPtr	song071_2_1
	.byte	PATT	
		mPtr	song071_2_1
	.byte	PATT	
		mPtr	song071_2_1
	.byte	PATT	
		mPtr	song071_2_1
	.byte	PATT	
		mPtr	song071_2_1
	.byte	PATT	
		mPtr	song071_2_1
	.byte	PATT	
		mPtr	song071_2_1
	.byte	PATT	
		mPtr	song071_2_1
	.byte	PATT	
		mPtr	song071_2_1
	.byte	PATT	
		mPtr	song071_2_1
	.byte	PATT	
		mPtr	song071_2_1
	.byte	PATT	
		mPtr	song071_2_1
	.byte	PATT	
		mPtr	song071_2_1
	.byte	PATT	
		mPtr	song071_2_1
	.byte	PATT	
		mPtr	song071_2_1
	.byte	PATT	
		mPtr	song071_2_1
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		mPtr	song071_2_1
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

	.global song071_3
song071_3:	@ 0x082A3398
	.byte	KEYSH	, 0
	.byte	VOICE	, 61
	.byte	VOL	, v066
	.byte	PAN	, c_v-19
	.byte	W03
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song071_3_1:
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
		mPtr	song071_3_1
	.byte	PATT	
		mPtr	song071_3_1
	.byte	PATT	
		mPtr	song071_3_1
	.byte	PATT	
		mPtr	song071_3_1
	.byte	PATT	
		mPtr	song071_3_1
song071_3_2:
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
song071_3_3:
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
		mPtr	song071_3_1
	.byte	PATT	
		mPtr	song071_3_1
	.byte	PATT	
		mPtr	song071_3_2
	.byte	PATT	
		mPtr	song071_3_3
	.byte	PATT	
		mPtr	song071_3_1
	.byte	PATT	
		mPtr	song071_3_1
	.byte	PATT	
		mPtr	song071_3_1
	.byte	PATT	
		mPtr	song071_3_1
	.byte	PATT	
		mPtr	song071_3_1
	.byte	PATT	
		mPtr	song071_3_1
	.byte	PATT	
		mPtr	song071_3_2
	.byte	PATT	
		mPtr	song071_3_3
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		mPtr	song071_3_1
	.byte	PATT	
		mPtr	song071_3_1
	.byte	FINE

	@********************** Track  4 **********************@

	.global song071_4
song071_4:	@ 0x082A3432
	.byte	KEYSH	, 0
	.byte	VOICE	, 46
	.byte	VOL	, v069
	.byte	PAN	, c_v-6
	.byte	W03
	.byte		N13	, Cs2, v127
	.byte	W36
	.byte		N16	, Dn2, v124
	.byte	W36
	.byte		N17	, Ds2, v120
	.byte	W24
	.byte	W12
	.byte			Ds2, v112
	.byte	W36
	.byte		N13	, Dn2, v120
	.byte	W24
	.byte		N12	, Dn2, v116
	.byte	W24
	.byte		N18	, Cs2
	.byte	W36
	.byte		N17	, Dn2, v124
	.byte	W36
	.byte		N32	, Ds2, v108
	.byte	W24
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte		N09	, Ds2, v104
	.byte	W12
	.byte			Ds2, v108
	.byte	W12
	.byte		N12	, Ds2, v112
	.byte	W12
	.byte			As1
	.byte	W12
	.byte			Gn1, v108
	.byte	W12
	.byte			Ds1, v120
	.byte	W12
song071_4_1:
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
song071_4_2:
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
song071_4_3:
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
song071_4_4:
	.byte	W03
	.byte		N10	, Ds1, v100
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
	.byte	PEND
	.byte	PATT	
		mPtr	song071_4_1
	.byte	PATT	
		mPtr	song071_4_2
	.byte	PATT	
		mPtr	song071_4_3
song071_4_5:
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
	.byte	PEND
	.byte	W03
	.byte			An1
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte			An1
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			Bn1
	.byte	W24
	.byte			An1
	.byte	W12
	.byte			An2
	.byte	W09
	.byte	PATT	
		mPtr	song071_4_2
	.byte	W03
	.byte		N10	, Cs2, v100
	.byte	W24
	.byte			Bn2
	.byte	W12
	.byte			Bn1
	.byte	W24
	.byte			Cs2
	.byte	W24
	.byte		N10	
	.byte	W09
	.byte	W03
	.byte			Bn1
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte			Fs2
	.byte		N10	, Cs3
	.byte	W12
	.byte			Fs1
	.byte		N10	, Cs2
	.byte	W21
	.byte	PATT	
		mPtr	song071_4_1
	.byte	PATT	
		mPtr	song071_4_2
	.byte	PATT	
		mPtr	song071_4_3
	.byte	PATT	
		mPtr	song071_4_4
	.byte	PATT	
		mPtr	song071_4_1
	.byte	PATT	
		mPtr	song071_4_2
	.byte	PATT	
		mPtr	song071_4_3
	.byte	PATT	
		mPtr	song071_4_5
song071_4_6:
	.byte		N13	, Cs2, v100
	.byte	W36
	.byte		N16	, Dn2
	.byte	W36
	.byte		N17	, Ds2
	.byte	W24
	.byte	PEND
song071_4_7:
	.byte	W12
	.byte		N17	, Ds2, v100
	.byte	W36
	.byte		N13	, Dn2
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte	PEND
song071_4_8:
	.byte		N18	, Cs2, v100
	.byte	W36
	.byte		N17	, Dn2
	.byte	W36
	.byte		N32	, Ds2
	.byte	W24
	.byte	PEND
song071_4_9:
	.byte	W12
	.byte		N11	, Ds2, v100
	.byte	W12
	.byte			As1
	.byte	W12
	.byte		N52	, Ds1
	.byte	W60
	.byte	PEND
	.byte	PATT	
		mPtr	song071_4_6
	.byte	PATT	
		mPtr	song071_4_7
	.byte	PATT	
		mPtr	song071_4_8
	.byte	PATT	
		mPtr	song071_4_9
	.byte	GOTO	
		mPtr	song071_4_1
	.byte	PATT	
		mPtr	song071_4_1
	.byte	W01
	.byte	FINE

	@********************** Track  5 **********************@

	.global song071_5
song071_5:	@ 0x082A3581
	.byte	KEYSH	, 0
	.byte	VOICE	, 120
	.byte	VOL	, v075
	.byte	PAN	, c_v+16
	.byte	MOD	, 0
	.byte	W03
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song071_5_1:
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
	.byte	PEND
song071_5_2:
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
	.byte	PEND
song071_5_3:
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
	.byte	PEND
	.byte	W12
	.byte			Cs3, v108
	.byte	W84
song071_5_4:
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
	.byte	PEND
song071_5_5:
	.byte	W12
	.byte		N14	, Cs3, v104
	.byte	W24
	.byte		N10	
	.byte	W12
	.byte		N14	, Ds3
	.byte	W12
	.byte			Cs3, v112
	.byte	W12
	.byte		N13	, Ds3, v116
	.byte	W24
	.byte	PEND
song071_5_6:
	.byte		N12	, En3, v116
	.byte	W24
	.byte		N10	, Ds3
	.byte	W24
	.byte		N13	, En3, v120
	.byte	W12
	.byte		N15	, Gs3, v100
	.byte	W24
	.byte		N14	, Cs3, v112
	.byte	W12
	.byte	PEND
	.byte	W12
	.byte		N15	
	.byte	W84
	.byte		TIE	, An3, v120
	.byte	W96
	.byte	W36
	.byte		EOT	
	.byte		N24	, Gs3, v116
	.byte	W24
	.byte		N32	, Fs3, v108
	.byte	W36
	.byte		TIE	, Bn3, v116
	.byte	W96
	.byte	W02
	.byte		EOT	
	.byte	W10
	.byte		N13	, Bn3, v100
	.byte	W24
	.byte		N11	, An3, v116
	.byte	W24
	.byte		N22	, Gs3, v120
	.byte	W24
	.byte		N11	, An3, v116
	.byte	W12
	.byte	PATT	
		mPtr	song071_5_1
	.byte	PATT	
		mPtr	song071_5_2
	.byte	PATT	
		mPtr	song071_5_3
	.byte	W12
	.byte		N14	, Cs3, v108
	.byte	W84
	.byte	PATT	
		mPtr	song071_5_4
	.byte	PATT	
		mPtr	song071_5_5
	.byte	PATT	
		mPtr	song071_5_6
	.byte	W12
	.byte		N15	, Cs3, v112
	.byte	W84
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		mPtr	song071_5_1
	.byte	PATT	
		mPtr	song071_5_1
	.byte	W03
	.byte	FINE

	@********************** Track  6 **********************@

	.global song071_6
song071_6:	@ 0x082A366A
	.byte	KEYSH	, 0
	.byte	VOICE	, 0
	.byte	VOL	, v078
	.byte	PAN	, c_v+11
	.byte	W03
	.byte	W02
	.byte		N04	, An4, v072
	.byte	W01
	.byte		N19	, As4
	.byte	W36
	.byte	W02
	.byte		N17	, Gs4
	.byte	W32
	.byte	W01
	.byte		N18	, Cs5
	.byte	W22
	.byte	W12
	.byte		N06	, An4
	.byte	W03
	.byte		N32	, As4
	.byte	W32
	.byte	W02
	.byte		N12	, Gs4
	.byte	W12
	.byte			Fs4
	.byte	W13
	.byte		N23	, Cs4
	.byte	W22
	.byte	W02
	.byte		N05	, Cn5
	.byte	W02
	.byte		N19	, Cs5
	.byte	W32
	.byte	W02
	.byte		N20	, As4
	.byte	W32
	.byte	W03
	.byte		TIE	, Ds5
	.byte	W23
	.byte	W24
	.byte	W02
	.byte	MOD	, 1
	.byte	W18
	.byte		3
	.byte	W04
	.byte		6
	.byte	W16
	.byte		8
	.byte	W21
	.byte		EOT	
	.byte	W11
song071_6_3:
	.byte	MOD	, 5
	.byte	W01
	.byte		N12	, Fs4, v060
	.byte	W01
	.byte	MOD	, 0
	.byte	W23
	.byte		N12	, Fn4
	.byte	W24
	.byte		N13	, Fs4
	.byte	W12
	.byte		N15	, Gs4
	.byte	W24
	.byte			Ds4
	.byte	W11
	.byte	PEND
	.byte	W13
	.byte		N14	
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte		N14	, Fn4
	.byte	W12
	.byte			Ds4
	.byte	W12
	.byte		N12	, Fn4
	.byte	W23
	.byte	W01
	.byte		N11	, Fs4
	.byte	W24
	.byte		N12	, Fn4
	.byte	W24
	.byte			Fs4
	.byte	W12
	.byte		N14	, As4
	.byte	W24
	.byte			Ds4
	.byte	W11
	.byte	W13
	.byte		N14	
	.byte	W80
	.byte	W03
	.byte	W01
	.byte		N12	, Fs4
	.byte	W24
	.byte			Fn4
	.byte	W24
	.byte			Fs4
	.byte	W12
	.byte		N16	, Gs4
	.byte	W24
	.byte		N14	, Ds4
	.byte	W11
	.byte	W13
	.byte		N14	
	.byte	W24
	.byte		N10	
	.byte	W12
	.byte		N14	, Fn4
	.byte	W12
	.byte			Ds4
	.byte	W12
	.byte		N13	, Fn4
	.byte	W23
	.byte	W01
	.byte		N12	, Fs4
	.byte	W24
	.byte		N10	, Fn4
	.byte	W24
	.byte		N13	, Fs4
	.byte	W12
	.byte		N15	, As4
	.byte	W24
	.byte		N14	, Ds4
	.byte	W11
	.byte	W13
	.byte		N15	
	.byte	W80
	.byte	W03
	.byte	W36
	.byte	W01
	.byte		N14	, Fs3, v092
	.byte	W13
	.byte			Gs3, v104
	.byte	W12
	.byte		N11	, As3, v092
	.byte	W11
	.byte		N12	, Bn3, v096
	.byte	W11
	.byte		N13	, Cs4, v100
	.byte	W12
	.byte	W14
	.byte		N14	, Ds4, v096
	.byte	W24
	.byte	W02
	.byte		N05	, Fn4, v104
	.byte	W02
	.byte		N22	, Fs4, v092
	.byte	W22
	.byte		N12	, Fn4, v100
	.byte	W12
	.byte			Ds4, v104
	.byte	W12
	.byte		N24	, Cs4, v112
	.byte	W08
	.byte	W14
	.byte		N16	, Ds4, v084
	.byte	W12
	.byte		N15	, Fn4
	.byte	W13
	.byte		N22	, Gs4, v104
	.byte	W23
	.byte		N14	, Cs5
	.byte	W12
	.byte		N12	, Ds5, v096
	.byte	W12
	.byte		N23	, Fn5, v100
	.byte	W10
	.byte	W13
	.byte		N05	, Dn5, v092
	.byte	W03
	.byte		N12	, Ds5, v108
	.byte	W11
	.byte		N11	, Cs5
	.byte	W12
	.byte		N54	, Gs4
	.byte	W22
	.byte	MOD	, 2
	.byte	W04
	.byte		5
	.byte	W04
	.byte		7
	.byte	W02
	.byte		10
	.byte	W01
	.byte		12
	.byte	W04
	.byte		15
	.byte	W04
	.byte		17
	.byte	W16
	.byte	W01
	.byte		N12	, Fs5, v060
	.byte	W01
	.byte	MOD	, 0
	.byte		14
	.byte	W02
	.byte		3
	.byte	W02
	.byte		0
	.byte	W19
	.byte		N12	, Fn5
	.byte	W24
	.byte		N13	, Fs5
	.byte	W12
	.byte		N15	, Gs5
	.byte	W24
	.byte			Ds5
	.byte	W11
	.byte	W13
	.byte		N14	
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte		N14	, Fn5
	.byte	W12
	.byte			Ds5
	.byte	W12
	.byte		N12	, Fn5
	.byte	W23
	.byte	W01
	.byte		N11	, Fs5
	.byte	W24
	.byte		N12	, Fn5
	.byte	W24
	.byte			Fs5
	.byte	W12
	.byte		N14	, As5
	.byte	W24
	.byte			Ds5
	.byte	W11
	.byte	W13
	.byte		N14	
	.byte	W80
	.byte	W03
	.byte	W01
	.byte		N12	, Fs5
	.byte	W24
	.byte			Fn5
	.byte	W24
	.byte			Fs5
	.byte	W12
	.byte		N16	, Gs5
	.byte	W24
	.byte		N14	, Ds5
	.byte	W11
	.byte	W13
	.byte		N14	
	.byte	W24
	.byte		N10	
	.byte	W12
	.byte		N14	, Fn5
	.byte	W12
	.byte			Ds5
	.byte	W12
	.byte		N13	, Fn5
	.byte	W23
	.byte	W01
	.byte		N12	, Fs5
	.byte	W24
	.byte		N10	, Fn5
	.byte	W24
	.byte		N13	, Fs5
	.byte	W12
	.byte		N15	, As5
	.byte	W24
	.byte		N14	, Ds5
	.byte	W11
	.byte	W13
	.byte		N15	
	.byte	W80
	.byte	W03
song071_6_1:
	.byte	W01
	.byte		N14	, Ds5, v060
	.byte	W12
	.byte		N12	, Cs5
	.byte	W12
	.byte		N11	, Cn5
	.byte	W12
	.byte		N13	, Cs5
	.byte	W12
	.byte			Cn5
	.byte	W12
	.byte		N11	, As4
	.byte	W12
	.byte			Cn5
	.byte	W12
	.byte		N14	, As4
	.byte	W11
	.byte	PEND
song071_6_2:
	.byte	W01
	.byte		N11	, Gs4, v060
	.byte	W12
	.byte		N15	, As4
	.byte	W12
	.byte		N12	, Gs4
	.byte	W12
	.byte			Fs4
	.byte	W12
	.byte		N15	, Gs4
	.byte	W12
	.byte			Fs4
	.byte	W12
	.byte		N14	, Fn4
	.byte	W12
	.byte		N10	, Ds4
	.byte	W11
	.byte	PEND
	.byte	W01
	.byte		N13	, Fs4
	.byte	W12
	.byte			Fn4
	.byte	W12
	.byte		N09	, Ds4
	.byte	W12
	.byte		N11	, Fn4
	.byte	W12
	.byte		N15	, Ds4
	.byte	W12
	.byte		N13	, Cs4
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
	.byte	PATT	
		mPtr	song071_6_1
	.byte	PATT	
		mPtr	song071_6_2
	.byte		N12	, Fs5, v060
	.byte	W13
	.byte		N14	, Fn5
	.byte	W12
	.byte		N11	, Ds5
	.byte	W12
	.byte		N14	, Fn5
	.byte	W12
	.byte		N13	, Ds5
	.byte	W12
	.byte		N12	, Cs5
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
	.byte	GOTO	
		mPtr	song071_6_3
	.byte	PATT	
		mPtr	song071_6_3
	.byte	W04
	.byte	FINE

	@********************** Track  7 **********************@

	.global song071_7
song071_7:	@ 0x082A3874
	.byte	KEYSH	, 0
	.byte	VOICE	, 100
	.byte	VOL	, v078
	.byte	PAN	, c_v-34
	.byte	W03
	.byte	W03
	.byte		N04	, An3, v032
	.byte	W02
	.byte		N19	, As3
	.byte	W36
	.byte	W01
	.byte		N17	, Gs3
	.byte	W32
	.byte	W02
	.byte		N18	, Cs4
	.byte	W20
	.byte	W13
	.byte		N06	, An3
	.byte	W04
	.byte		N32	, As3
	.byte	W32
	.byte	W02
	.byte		N12	, Gs3
	.byte	W12
	.byte			Fs3
	.byte	W13
	.byte		N23	, Cs3
	.byte	W20
	.byte	W03
	.byte		N05	, Cn4
	.byte	W03
	.byte		N19	, Cs4
	.byte	W32
	.byte	W01
	.byte		N20	, As3
	.byte	W36
	.byte		TIE	, Ds4
	.byte	W21
	.byte	W24
	.byte	W03
	.byte	MOD	, 1
	.byte	W19
	.byte		3
	.byte	W03
	.byte		6
	.byte	W17
	.byte		8
	.byte	W21
	.byte		EOT	
	.byte	W09
song071_7_10:
	.byte	PAN	, c_v-14
	.byte	W01
	.byte	MOD	, 5
	.byte	W02
	.byte		0
	.byte		N12	, Fs3, v112
	.byte	W24
	.byte			Fn3, v108
	.byte	W24
	.byte		N13	, Fs3, v104
	.byte	W12
	.byte		N15	, Gs3
	.byte	W24
	.byte			Ds3, v108
	.byte	W09
song071_7_1:
	.byte	W15
	.byte		N14	, Ds3, v100
	.byte	W24
	.byte		N11	, Ds3, v104
	.byte	W12
	.byte		N14	, Fn3, v116
	.byte	W12
	.byte			Ds3, v108
	.byte	W12
	.byte		N12	, Fn3, v112
	.byte	W21
	.byte	PEND
song071_7_2:
	.byte	W03
	.byte		N11	, Fs3, v120
	.byte	W24
	.byte		N12	, Fn3, v104
	.byte	W24
	.byte			Fs3, v116
	.byte	W12
	.byte		N14	, As3, v112
	.byte	W24
	.byte			Ds3, v116
	.byte	W09
	.byte	PEND
song071_7_3:
	.byte	W15
	.byte		N14	, Ds3, v108
	.byte	W80
	.byte	W01
	.byte	PEND
song071_7_4:
	.byte	W03
	.byte		N12	, Fs3, v120
	.byte	W24
	.byte			Fn3, v112
	.byte	W24
	.byte			Fs3
	.byte	W12
	.byte		N16	, Gs3, v100
	.byte	W24
	.byte		N14	, Ds3, v108
	.byte	W09
	.byte	PEND
song071_7_5:
	.byte	W15
	.byte		N14	, Ds3, v104
	.byte	W24
	.byte		N10	
	.byte	W12
	.byte		N14	, Fn3
	.byte	W12
	.byte			Ds3, v112
	.byte	W12
	.byte		N13	, Fn3, v116
	.byte	W21
	.byte	PEND
song071_7_6:
	.byte	W03
	.byte		N12	, Fs3, v116
	.byte	W24
	.byte		N10	, Fn3
	.byte	W24
	.byte		N13	, Fs3, v120
	.byte	W12
	.byte		N15	, As3, v100
	.byte	W24
	.byte		N14	, Ds3, v112
	.byte	W09
	.byte	PEND
song071_7_7:
	.byte	W15
	.byte		N15	, Ds3, v112
	.byte	W80
	.byte	W01
	.byte	PEND
	.byte		TIE	, Bn2, v120
	.byte	W54
	.byte	MOD	, 1
	.byte	W04
	.byte		3
	.byte	W05
	.byte		6
	.byte	W10
	.byte		8
	.byte	W05
	.byte		11
	.byte	W13
	.byte		14
	.byte	W05
	.byte	W36
	.byte		EOT	
	.byte		N24	, As2, v116
	.byte	W01
	.byte	MOD	, 10
	.byte	W02
	.byte		2
	.byte	W02
	.byte		0
	.byte	W19
	.byte		N32	, Gs2, v108
	.byte	W36
	.byte		TIE	, Cs3, v116
	.byte	W24
	.byte	W02
	.byte	MOD	, 2
	.byte	W06
	.byte		5
	.byte	W05
	.byte		7
	.byte	W04
	.byte		10
	.byte	W07
	.byte		12
	.byte	W06
	.byte		15
	.byte	W05
	.byte		17
	.byte	W36
	.byte	W01
	.byte	W02
	.byte		EOT	
	.byte	W07
	.byte	MOD	, 8
	.byte	W02
	.byte		0
	.byte	W01
	.byte		N13	, Cs3, v100
	.byte	W24
	.byte		N11	, Bn2, v116
	.byte	W24
	.byte		N22	, As2, v120
	.byte	W24
	.byte		N11	, Bn2, v116
	.byte	W12
	.byte	W03
	.byte		N12	, Fs3, v112
	.byte	W24
	.byte			Fn3, v108
	.byte	W24
	.byte		N13	, Fs3, v104
	.byte	W12
	.byte		N15	, Gs3
	.byte	W24
	.byte			Ds3, v108
	.byte	W09
	.byte	PATT	
		mPtr	song071_7_1
	.byte	PATT	
		mPtr	song071_7_2
	.byte	PATT	
		mPtr	song071_7_3
	.byte	PATT	
		mPtr	song071_7_4
	.byte	PATT	
		mPtr	song071_7_5
	.byte	PATT	
		mPtr	song071_7_6
	.byte	PATT	
		mPtr	song071_7_7
song071_7_8:
	.byte	W03
	.byte		N14	, Ds4, v076
	.byte	W12
	.byte		N12	, Cs4
	.byte	W12
	.byte		N11	, Cn4
	.byte	W12
	.byte		N13	, Cs4
	.byte	W12
	.byte			Cn4
	.byte	W12
	.byte		N11	, As3
	.byte	W12
	.byte			Cn4
	.byte	W12
	.byte		N14	, As3
	.byte	W09
	.byte	PEND
song071_7_9:
	.byte	W03
	.byte		N11	, Gs3, v076
	.byte	W12
	.byte		N15	, As3
	.byte	W12
	.byte		N12	, Gs3
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte		N15	, Gs3
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte		N14	, Fn3
	.byte	W12
	.byte		N10	, Ds3
	.byte	W09
	.byte	PEND
	.byte	W03
	.byte		N13	, Fs3
	.byte	W12
	.byte			Fn3
	.byte	W12
	.byte		N09	, Ds3
	.byte	W12
	.byte		N11	, Fn3
	.byte	W12
	.byte		N15	, Ds3
	.byte	W12
	.byte		N13	, Cs3
	.byte	W12
	.byte		N96	, Cn3
	.byte	W18
	.byte	MOD	, 1
	.byte	W03
	.byte	W01
	.byte		5
	.byte	W04
	.byte		8
	.byte	W05
	.byte		11
	.byte	W11
	.byte		14
	.byte	W44
	.byte		11
	.byte	W02
	.byte		7
	.byte	W02
	.byte		0
	.byte	W24
	.byte	W03
	.byte	PATT	
		mPtr	song071_7_8
	.byte	PATT	
		mPtr	song071_7_9
	.byte	W01
	.byte		N12	, Fs4, v076
	.byte	W14
	.byte		N14	, Fn4
	.byte	W12
	.byte		N11	, Ds4
	.byte	W12
	.byte		N14	, Fn4
	.byte	W12
	.byte		N13	, Ds4
	.byte	W12
	.byte		N12	, Cs4
	.byte	W12
	.byte		TIE	, Ds4
	.byte	W21
	.byte	MOD	, 2
	.byte	W06
	.byte		5
	.byte	W07
	.byte		7
	.byte	W07
	.byte		10
	.byte	W10
	.byte		12
	.byte	W44
	.byte		10
	.byte	W02
	.byte		0
	.byte	W10
	.byte		EOT	
	.byte	W10
	.byte	GOTO	
		mPtr	song071_7_10
	.byte	PAN	, c_v-14
	.byte	W03
	.byte		N12	, Fs3, v112
	.byte	W24
	.byte			Fn3, v108
	.byte	W24
	.byte		N13	, Fs3, v104
	.byte	W12
	.byte		N15	, Gs3
	.byte	W24
	.byte			Ds3, v108
	.byte	W09
	.byte	W06
	.byte	FINE

	@********************** Track  8 **********************@

	.global song071_8
song071_8:	@ 0x082A3A6C
	.byte	KEYSH	, 0
	.byte	VOICE	, 72
	.byte	VOL	, v078
	.byte	PAN	, c_v
	.byte	W03
song071_8_1:
	.byte		N15	, Ds3, v120
	.byte	W36
	.byte		N13	, En3, v124
	.byte	W36
	.byte		N15	, Fn3
	.byte	W24
	.byte	PEND
song071_8_2:
	.byte	W12
	.byte		N15	, Fn3, v124
	.byte	W36
	.byte		N12	, En3
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte	PEND
song071_8_3:
	.byte		N15	, Ds3, v116
	.byte	W36
	.byte		N13	, En3, v124
	.byte	W36
	.byte		N84	, Fn3
	.byte	W24
	.byte	PEND
song071_8_4:
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
	.byte	PEND
song071_8_5:
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
		mPtr	song071_8_1
	.byte	PATT	
		mPtr	song071_8_2
	.byte	PATT	
		mPtr	song071_8_3
	.byte	PATT	
		mPtr	song071_8_4
	.byte	PATT	
		mPtr	song071_8_1
	.byte	PATT	
		mPtr	song071_8_2
	.byte	PATT	
		mPtr	song071_8_3
	.byte	W96
	.byte	GOTO	
		mPtr	song071_8_5
	.byte	FINE

	@********************** Track  9 **********************@

	.global song071_9
song071_9:	@ 0x082A3B2F
	.byte	KEYSH	, 0
	.byte	VOICE	, 118
	.byte	VOL	, v075
	.byte	PAN	, c_v+56
	.byte	W03
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W15
	.byte		N12	, Ds3, v092
	.byte	W24
	.byte			Cs3
	.byte	W24
	.byte			Cn3
	.byte	W24
	.byte			As2
	.byte	W09
song071_9_1:
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
song071_9_2:
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
song071_9_3:
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
song071_9_4:
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
		mPtr	song071_9_1
	.byte	PATT	
		mPtr	song071_9_2
	.byte	PATT	
		mPtr	song071_9_3
	.byte	PATT	
		mPtr	song071_9_4
	.byte	W03
	.byte		N12	, Bn1, v092
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			An1
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte			An1
	.byte	W12
	.byte			An2
	.byte	W09
	.byte	W03
	.byte			Bn1
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			An1
	.byte	W09
	.byte	W03
	.byte			Cs2
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte			Bn2
	.byte	W09
	.byte	W03
	.byte			Cs2
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Cs3
	.byte	W09
song071_9_5:
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
song071_9_6:
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
song071_9_7:
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
song071_9_8:
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
		mPtr	song071_9_5
	.byte	PATT	
		mPtr	song071_9_6
	.byte	PATT	
		mPtr	song071_9_7
	.byte	PATT	
		mPtr	song071_9_8
song071_9_9:
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
song071_9_10:
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
		mPtr	song071_9_9
	.byte	PATT	
		mPtr	song071_9_10
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
		mPtr	song071_9_10
	.byte	GOTO	
		mPtr	song071_9_1
	.byte	PATT	
		mPtr	song071_9_5
	.byte	W03
	.byte	FINE

	@********************** Track  10 **********************@

	.global song071_10
song071_10:	@ 0x082A3CD5
	.byte	KEYSH	, 0
	.byte	VOICE	, 118
	.byte	VOL	, v072
	.byte	PAN	, c_v-54
	.byte	W03
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N12	, Ds2, v112
	.byte	W24
	.byte			Cs2
	.byte	W24
	.byte			Cn2
	.byte	W24
	.byte			As1
	.byte	W24
song071_10_1:
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
song071_10_2:
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
song071_10_3:
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
song071_10_4:
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
		mPtr	song071_10_1
	.byte	PATT	
		mPtr	song071_10_2
	.byte	PATT	
		mPtr	song071_10_3
	.byte	PATT	
		mPtr	song071_10_4
	.byte		N12	, Bn1, v100
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			An1
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte			An1
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			An1
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Cs3
	.byte	W12
song071_10_5:
	.byte		N12	, Gs2, v100
	.byte	W12
	.byte			Gs3
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Gs3
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte	PEND
song071_10_6:
	.byte		N12	, Gs2, v100
	.byte	W12
	.byte			Ds3
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte	PEND
song071_10_7:
	.byte		N12	, Gs2, v100
	.byte	W12
	.byte			Gs3
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			Gs3
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte	PEND
song071_10_8:
	.byte		N12	, Gs2, v100
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Ds3
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song071_10_5
	.byte	PATT	
		mPtr	song071_10_6
	.byte	PATT	
		mPtr	song071_10_7
	.byte	PATT	
		mPtr	song071_10_8
song071_10_9:
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
song071_10_10:
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
		mPtr	song071_10_9
	.byte	PATT	
		mPtr	song071_10_10
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
		mPtr	song071_10_10
	.byte	GOTO	
		mPtr	song071_10_1
	.byte	PATT	
		mPtr	song071_10_1
	.byte	FINE
    
	mAlignWord
	.global song071
song071:	@ 0x082A3E54
	.byte	10		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

	mAlignWord
	mPtr	voicegroup008		@ voicegroup/tone

	mPtr	song071_1		@ track
	mPtr	song071_2		@ track
	mPtr	song071_3		@ track
	mPtr	song071_4		@ track
	mPtr	song071_5		@ track
	mPtr	song071_6		@ track
	mPtr	song071_7		@ track
	mPtr	song071_8		@ track
	mPtr	song071_9		@ track
	mPtr	song071_10		@ track

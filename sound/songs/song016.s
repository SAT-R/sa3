	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song016_1
song016_1:	@ 0x0826CA00
	.byte	KEYSH	, 0
song016_1_1:
	.byte	TEMPO	, 45
	.byte	VOICE	, 27
	.byte	VOL	, v062
	.byte	PAN	, c_v
	.byte		TIE	, Dn2, v076
	.byte		N92	, Gn2, v084
	.byte	W96
	.byte			Fs2
	.byte	W96
	.byte			Fn2
	.byte	W96
	.byte			En2
	.byte	W96
	.byte		EOT	, Dn2
	.byte		N96	, Cn2, v076
	.byte		N96	, Ds2, v084
	.byte	W96
	.byte		N48	, As1, v076
	.byte		N48	, Dn2, v084
	.byte	W48
	.byte			Dn2, v076
	.byte		N44	, Fn2, v084
	.byte	W48
	.byte		N96	, Ds2, v076
	.byte		N44	, Gn2, v084
	.byte	W48
	.byte			As1
	.byte	W48
	.byte		N48	, Dn2, v076
	.byte		N92	, Fs2, v084
	.byte	W48
	.byte		N48	, Cn2, v076
	.byte	W48
	.byte	PAN	, c_v-30
	.byte		TIE	, Dn2, v104
	.byte		N92	, Gn2, v116
	.byte	W96
	.byte			Fs2
	.byte	W96
	.byte			Fn2
	.byte	W96
	.byte			En2
	.byte	W96
	.byte		EOT	, Dn2
	.byte		N96	, Cn2, v104
	.byte		N96	, Ds2, v116
	.byte	W96
	.byte		N48	, As1, v104
	.byte		N48	, Dn2, v116
	.byte	W48
	.byte			Dn2, v104
	.byte		N44	, Fn2, v116
	.byte	W48
	.byte		N96	, Dn2, v104
	.byte		N44	, Fs2, v116
	.byte	W48
	.byte			An2
	.byte	W48
	.byte		N48	, Dn2, v104
	.byte		N92	, Gn2, v116
	.byte	W48
	.byte		N44	, As1, v104
	.byte	W48
	.byte	PAN	, c_v
	.byte		TIE	, Dn2, v076
	.byte		N44	, Fs2, v084
	.byte	W48
	.byte			Gn2
	.byte	W48
	.byte		N92	, Fs2
	.byte	W92
	.byte	W03
	.byte		EOT	, Dn2
	.byte	W01
	.byte		N96	, Dn2, v076
	.byte		N92	, Ds2, v084
	.byte	W96
	.byte		N96	, An1, v076
	.byte		N92	, Dn2, v084
	.byte	W96
	.byte	GOTO	
		.word	song016_1_1
	.byte	FINE

	@********************** Track  2 **********************@

	.global song016_2
song016_2:	@ 0x0826CAA0
	.byte	KEYSH	, 0
song016_2_1:
	.byte	VOICE	, 28
	.byte	VOL	, v094
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N96	, Gn2, v127
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
		.word	song016_2_1
	.byte	FINE

	@********************** Track  3 **********************@

	.global song016_3
song016_3:	@ 0x0826CAC3
	.byte	KEYSH	, 0
song016_3_3:
	.byte	VOICE	, 29
	.byte	VOL	, v086
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W92
	.byte	W01
	.byte	VOICE	, 29
	.byte		N11	, Cn3, v124
	.byte	W03
song016_3_1:
	.byte	W09
	.byte	VOICE	, 53
	.byte		N11	, Cn3, v112
	.byte	W36
	.byte	VOICE	, 29
	.byte		N11	, Cn3, v124
	.byte	W12
	.byte	VOICE	, 53
	.byte		N11	, Cn3, v112
	.byte	W36
	.byte	VOICE	, 29
	.byte		N11	, Cn3, v124
	.byte	W03
	.byte	PEND
song016_3_2:
	.byte	W09
	.byte	VOICE	, 53
	.byte		N11	, Cn3, v112
	.byte	W36
	.byte	VOICE	, 33
	.byte		N11	, Ds3, v124
	.byte	W12
	.byte	VOICE	, 54
	.byte		N11	, Cn3, v112
	.byte	W36
	.byte	VOICE	, 29
	.byte		N11	, Cn3, v124
	.byte	W03
	.byte	PEND
	.byte	PATT	
		.word	song016_3_1
	.byte	PATT	
		.word	song016_3_2
	.byte	W09
	.byte	VOICE	, 53
	.byte		N11	, Cn3, v112
	.byte	W36
	.byte	VOICE	, 29
	.byte		N11	, Dn3, v124
	.byte	W12
	.byte	VOICE	, 53
	.byte		N11	, Dn3, v112
	.byte	W36
	.byte	VOICE	, 29
	.byte		N11	, Cn3, v124
	.byte	W03
	.byte	W09
	.byte	VOICE	, 53
	.byte		N11	, Cn3, v112
	.byte	W36
	.byte	VOICE	, 29
	.byte		N11	, Dn3, v124
	.byte	W12
	.byte	VOICE	, 53
	.byte		N11	, Cn3, v112
	.byte	W36
	.byte	VOICE	, 29
	.byte		N11	, Cn3, v124
	.byte	W03
	.byte	W09
	.byte	VOICE	, 53
	.byte		N11	, Cn3, v112
	.byte	W36
	.byte	VOICE	, 33
	.byte		N11	, Ds3, v124
	.byte	W12
	.byte	VOICE	, 54
	.byte		N11	, Cn3, v112
	.byte	W36
	.byte	W03
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	song016_3_3
	.byte	FINE

	@********************** Track  4 **********************@

	.global song016_4
song016_4:	@ 0x0826CB67
	.byte	KEYSH	, 0
song016_4_1:
	.byte	VOICE	, 52
	.byte	VOL	, v086
	.byte		N18	, Gn2, v096
	.byte	W18
	.byte			Cn3, v104
	.byte	W18
	.byte		N06	, Bn2, v100
	.byte	W06
	.byte			Cn3
	.byte	W04
	.byte		N24	, Gn2, v080
	.byte	W24
	.byte	W02
	.byte		N18	, Cn3, v104
	.byte	W22
	.byte			Gn2, v096
	.byte	W02
	.byte	W18
	.byte			Cn3, v104
	.byte	W18
	.byte		N07	, Bn2, v100
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte		N24	, Dn3, v080
	.byte	W24
	.byte		N18	, Fn3, v104
	.byte	W22
	.byte			Gn2, v096
	.byte	W02
	.byte	W18
	.byte			Cn3, v104
	.byte	W18
	.byte		N07	, Ds3, v100
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte		N18	, Gn3, v104
	.byte	W24
	.byte		N24	, As2, v080
	.byte	W24
	.byte			Cn3, v096
	.byte	W24
	.byte		N12	, Gn3, v104
	.byte	W12
	.byte			Fn3, v100
	.byte	W24
	.byte		N24	, Ds3, v096
	.byte	W24
	.byte		N12	, Dn3, v100
	.byte	W12
	.byte		N24	, As2, v096
	.byte	W24
	.byte		N12	, Gs3, v100
	.byte	W12
	.byte		N18	, Gn3, v096
	.byte	W24
	.byte		N24	, As3, v104
	.byte	W24
	.byte			Gn3
	.byte	W12
	.byte	W24
	.byte		N12	, Fn3, v100
	.byte	W12
	.byte		N24	, Ds3, v092
	.byte	W24
	.byte			Gn3, v104
	.byte	W36
	.byte			Dn3, v100
	.byte	W24
	.byte		N12	, Ds3
	.byte	W12
	.byte		N24	, Dn3, v096
	.byte	W24
	.byte		N12	, Cn3, v084
	.byte	W12
	.byte		N10	, Gs2, v100
	.byte	W10
	.byte		N15	, Gn2, v096
	.byte	W14
	.byte	W92
	.byte	W02
	.byte		N19	
	.byte	W02
	.byte	W18
	.byte		N17	, Cn3, v104
	.byte	W18
	.byte		N05	, Bn2, v100
	.byte	W06
	.byte			Cn3
	.byte	W05
	.byte		N24	, Gn2, v080
	.byte	W24
	.byte	W01
	.byte		N16	, Cn3, v104
	.byte	W22
	.byte		N19	, Gn2, v096
	.byte	W02
	.byte	W18
	.byte		N17	, Cn3, v104
	.byte	W18
	.byte		N05	, Bn2, v100
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte		N23	, Dn3, v080
	.byte	W24
	.byte		N18	, Fn3, v104
	.byte	W22
	.byte		N19	, Gn2, v096
	.byte	W02
	.byte	W18
	.byte		N17	, Cn3, v104
	.byte	W18
	.byte		N05	, Ds3, v100
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte		N17	, Gn3, v104
	.byte	W24
	.byte		N23	, As2, v080
	.byte	W24
	.byte			Cn3, v096
	.byte	W24
	.byte		N11	, Gn3, v104
	.byte	W12
	.byte		N17	, Fn3, v100
	.byte	W24
	.byte		N23	, Ds3, v096
	.byte	W24
	.byte		N11	, Dn3, v100
	.byte	W12
	.byte		N23	, As2, v096
	.byte	W24
	.byte		N11	, Gs3, v100
	.byte	W12
	.byte		N17	, Gn3, v096
	.byte	W24
	.byte		N23	, As3, v104
	.byte	W24
	.byte		N28	, Gn3
	.byte	W12
	.byte	W24
	.byte		N11	, Fn3, v100
	.byte	W12
	.byte		N23	, Ds3, v092
	.byte	W24
	.byte		N28	, Gn3, v104
	.byte	W36
	.byte		N11	, Bn2, v100
	.byte	W12
	.byte			Ds3, v104
	.byte	W12
	.byte			Gs3, v116
	.byte	W12
	.byte		N17	, Gn3
	.byte	W24
	.byte		N23	, Bn2, v124
	.byte	W24
	.byte		N11	, Gn2, v104
	.byte	W12
	.byte		N23	, Cn3, v124
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	song016_4_1
	.byte	FINE

	@********************** Track  5 **********************@

	.global song016_5
song016_5:	@ 0x0826CC8F
	.byte	KEYSH	, 0
song016_5_1:
	.byte	VOICE	, 35
	.byte	VOL	, v074
	.byte	PAN	, c_v
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
	.byte		N92	, Ds3, v076
	.byte	W96
	.byte		TIE	, Dn3, v080
	.byte	W96
	.byte	W92
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte		N90	, Bn2, v076
	.byte	W96
	.byte	GOTO	
		.word	song016_5_1
	.byte	FINE

	@********************** Track  6 **********************@

	.global song016_6
song016_6:	@ 0x0826CCBD
	.byte	KEYSH	, 0
song016_6_1:
	.byte	VOICE	, 37
	.byte	VOL	, v059
	.byte	PAN	, c_v
	.byte		TIE	, As2, v088
	.byte	W96
	.byte	W44
	.byte		EOT	
	.byte	W04
	.byte		N44	, Cn3, v068
	.byte	W48
	.byte		TIE	, As2, v084
	.byte	W96
	.byte		N84	, Dn3, v080
	.byte	W01
	.byte		EOT	, As2
	.byte	W92
	.byte	W03
	.byte		N44	, Cn3, v076
	.byte	W48
	.byte		N48	, An2
	.byte	W48
	.byte		N44	, As2, v092
	.byte	W48
	.byte		N42	, An2
	.byte	W48
	.byte		N48	, Gn2, v080
	.byte	W48
	.byte			As2, v084
	.byte	W48
	.byte			Dn3, v092
	.byte	W48
	.byte			Ds3, v096
	.byte	W48
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W48
	.byte		N23	, Dn3, v084
	.byte	W24
	.byte			Cn3, v076
	.byte	W24
	.byte		N44	, Ds3, v084
	.byte	W48
	.byte		N92	, Fs3, v092
	.byte	W48
	.byte	W48
	.byte		N44	, Ds3, v084
	.byte	W48
	.byte		N88	, Dn3, v076
	.byte	W96
	.byte	GOTO	
		.word	song016_6_1
	.byte	FINE

	@********************** Track  7 **********************@

	.global song016_7
song016_7:	@ 0x0826CD1E
	.byte	KEYSH	, 0
song016_7_1:
	.byte	VOICE	, 14
	.byte	VOL	, v062
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N96	, Gn1, v096
	.byte	W96
	.byte			Fs1
	.byte	W96
	.byte			Fn1
	.byte	W96
	.byte			En1
	.byte	W96
	.byte			Fn1
	.byte	W96
	.byte			As1
	.byte	W96
	.byte			Dn1
	.byte	W96
	.byte			Gn1
	.byte	W96
	.byte			Dn2, v076
	.byte	W96
	.byte	W96
	.byte			Dn1
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	song016_7_1
	.byte	FINE

	@********************** Track  8 **********************@

	.global song016_8
song016_8:	@ 0x0826CD4B
	.byte	KEYSH	, 0
song016_8_2:
	.byte	VOICE	, 34
	.byte	VOL	, v039
	.byte	PAN	, c_v+30
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W12
	.byte		N01	, Gn3, v056
	.byte	W12
	.byte			As3, v064
	.byte	W12
	.byte			Dn4, v076
	.byte	W12
	.byte			Gn4, v064
	.byte	W12
	.byte			As4, v076
	.byte	W12
	.byte			Gn4, v064
	.byte	W12
	.byte			Dn4, v076
	.byte	W12
	.byte			Fs3, v044
	.byte	W12
	.byte			Gn3, v056
	.byte	W12
	.byte			An3, v064
	.byte	W12
	.byte			Dn4, v076
	.byte	W12
	.byte			Fs4, v064
	.byte	W12
	.byte			An4, v076
	.byte	W12
	.byte			Fs4, v064
	.byte	W12
	.byte			Dn4, v076
	.byte	W12
song016_8_1:
	.byte		N01	, Gn3, v044
	.byte	W12
	.byte			An3, v056
	.byte	W12
	.byte			As3, v064
	.byte	W12
	.byte			Dn4, v076
	.byte	W12
	.byte			Gn4, v064
	.byte	W12
	.byte			As4, v076
	.byte	W12
	.byte			Gn4, v064
	.byte	W12
	.byte			Dn4, v076
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song016_8_1
	.byte		N01	, Gn3, v044
	.byte	W12
	.byte			An3, v056
	.byte	W12
	.byte			Cn4, v064
	.byte	W12
	.byte			Fn4, v076
	.byte	W12
	.byte			An4, v064
	.byte	W12
	.byte			Cn5, v076
	.byte	W12
	.byte			An4, v064
	.byte	W12
	.byte			Fn4, v076
	.byte	W12
	.byte			Fn3, v044
	.byte	W06
	.byte			An3, v060
	.byte	W06
	.byte			Fn4, v076
	.byte	W24
	.byte			Ds4
	.byte	W24
	.byte			Dn4, v064
	.byte	W06
	.byte			Fn4, v076
	.byte	W18
	.byte			Dn4
	.byte	W12
	.byte			Fn3, v044
	.byte	W12
	.byte			Gn3, v056
	.byte	W12
	.byte			As3, v064
	.byte	W12
	.byte			Dn4, v076
	.byte	W12
	.byte			Ds4, v064
	.byte	W12
	.byte			Gn4, v076
	.byte	W12
	.byte			Ds4, v064
	.byte	W12
	.byte			Dn4, v076
	.byte	W12
	.byte	PATT	
		.word	song016_8_1
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	song016_8_2
	.byte	FINE

	@********************** Track  9 **********************@

	.global song016_9
song016_9:	@ 0x0826CDFC
	.byte	KEYSH	, 0
song016_9_2:
	.byte	VOICE	, 36
	.byte	VOL	, v035
	.byte	PAN	, c_v
	.byte	TUNE	, c_v-10
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W03
	.byte		N01	, Fs3, v044
	.byte	W12
	.byte			Gn3, v056
	.byte	W12
	.byte			As3, v064
	.byte	W12
	.byte			Dn4, v076
	.byte	W12
	.byte			Gn4, v064
	.byte	W12
	.byte			As4, v076
	.byte	W12
	.byte			Gn4, v064
	.byte	W12
	.byte			Dn4, v076
	.byte	W09
	.byte	W03
	.byte			Fs3, v044
	.byte	W12
	.byte			Gn3, v056
	.byte	W12
	.byte			An3, v064
	.byte	W12
	.byte			Dn4, v076
	.byte	W12
	.byte			Fs4, v064
	.byte	W12
	.byte			An4, v076
	.byte	W12
	.byte			Fs4, v064
	.byte	W12
	.byte			Dn4, v076
	.byte	W09
song016_9_1:
	.byte	W03
	.byte		N01	, Gn3, v044
	.byte	W12
	.byte			An3, v056
	.byte	W12
	.byte			As3, v064
	.byte	W12
	.byte			Dn4, v076
	.byte	W12
	.byte			Gn4, v064
	.byte	W12
	.byte			As4, v076
	.byte	W12
	.byte			Gn4, v064
	.byte	W12
	.byte			Dn4, v076
	.byte	W09
	.byte	PEND
	.byte	PATT	
		.word	song016_9_1
	.byte	W03
	.byte		N01	, Gn3, v044
	.byte	W12
	.byte			An3, v056
	.byte	W12
	.byte			Cn4, v064
	.byte	W12
	.byte			Fn4, v076
	.byte	W12
	.byte			An4, v064
	.byte	W12
	.byte			Cn5, v076
	.byte	W12
	.byte			An4, v064
	.byte	W12
	.byte			Fn4, v076
	.byte	W09
	.byte	W03
	.byte			Fn3, v044
	.byte	W06
	.byte			An3, v060
	.byte	W06
	.byte			Fn4, v076
	.byte	W24
	.byte			Ds4
	.byte	W24
	.byte			Dn4, v064
	.byte	W06
	.byte			Fn4, v076
	.byte	W18
	.byte			Dn4
	.byte	W09
	.byte	W03
	.byte			Fn3, v044
	.byte	W12
	.byte			Gn3, v056
	.byte	W12
	.byte			As3, v064
	.byte	W12
	.byte			Dn4, v076
	.byte	W12
	.byte			Ds4, v064
	.byte	W12
	.byte			Gn4, v076
	.byte	W12
	.byte			Ds4, v064
	.byte	W12
	.byte			Dn4, v076
	.byte	W09
	.byte	PATT	
		.word	song016_9_1
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	song016_9_2
	.byte	FINE

	@********************** Track  10 **********************@

	.global song016_10
song016_10:	@ 0x0826CEB7
	.byte	KEYSH	, 0
song016_10_2:
	.byte	VOICE	, 89
	.byte	VOL	, v047
	.byte		N03	, Cn6, v096
	.byte	W12
	.byte			Fs4, v076
	.byte	W12
	.byte			Fs4, v056
	.byte	W12
	.byte		N06	, Fs4, v044
	.byte	W12
	.byte		N03	, Cn6, v096
	.byte	W12
	.byte			Fs4, v076
	.byte	W12
	.byte			Fs4, v056
	.byte	W12
	.byte		N06	, Fs4, v044
	.byte	W12
song016_10_1:
	.byte		N03	, Cn6, v096
	.byte	W12
	.byte			Fs4, v076
	.byte	W12
	.byte			Fs4, v056
	.byte	W12
	.byte		N06	, Fs4, v044
	.byte	W12
	.byte		N03	, Cn6, v096
	.byte	W12
	.byte			Fs4, v076
	.byte	W12
	.byte			Fs4, v056
	.byte	W12
	.byte		N06	, Fs4, v044
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song016_10_1
	.byte	PATT	
		.word	song016_10_1
	.byte	PATT	
		.word	song016_10_1
	.byte	PATT	
		.word	song016_10_1
	.byte	PATT	
		.word	song016_10_1
	.byte	PATT	
		.word	song016_10_1
	.byte	PATT	
		.word	song016_10_1
	.byte	PATT	
		.word	song016_10_1
	.byte	PATT	
		.word	song016_10_1
	.byte	PATT	
		.word	song016_10_1
	.byte	PATT	
		.word	song016_10_1
	.byte	PATT	
		.word	song016_10_1
	.byte	PATT	
		.word	song016_10_1
	.byte	PATT	
		.word	song016_10_1
	.byte	PATT	
		.word	song016_10_1
	.byte	PATT	
		.word	song016_10_1
	.byte	PATT	
		.word	song016_10_1
	.byte	PATT	
		.word	song016_10_1
	.byte	GOTO	
		.word	song016_10_2
	.byte	FINE

	.align 2
	.global song016
song016:	@ 0x0826CF58
	.byte	10		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	.word	voicegroup016		@ voicegroup/tone

	.word	song016_1		@ track
	.word	song016_2		@ track
	.word	song016_3		@ track
	.word	song016_4		@ track
	.word	song016_5		@ track
	.word	song016_6		@ track
	.word	song016_7		@ track
	.word	song016_8		@ track
	.word	song016_9		@ track
	.word	song016_10		@ track

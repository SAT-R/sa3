	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song061_1
song061_1:	@ 0x0829B09C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 72
	.byte	VOICE	, 126
	.byte	VOL	, v085
	.byte	PAN	, c_v-4
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W48
	.byte		N03	, Cs1, v120
	.byte	W04
	.byte		N03	
	.byte	W04
	.byte		N05	
	.byte	W16
	.byte			Gn1
	.byte	W06
	.byte		N05	
	.byte	W18
	.byte	TEMPO	, 74
	.byte		N06	, Gs1
	.byte	W18
	.byte		N17	, Cs1
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N05	
	.byte	W24
	.byte		N05	
	.byte	W06
song061_1_1:
	.byte	W18
	.byte		N17	, Cs1, v120
	.byte	W54
	.byte		N11	
	.byte	W24
	.byte	PEND
	.byte		N05	
	.byte	W24
	.byte		N17	
	.byte	W48
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte		N17	
	.byte	W48
	.byte		N03	
	.byte	W04
	.byte		N03	
	.byte	W04
	.byte		N06	
	.byte	W16
	.byte			Gn1
	.byte	W06
	.byte		N05	
	.byte	W18
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
	.byte	TEMPO	, 74
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song061_1_2:
	.byte		N06	, Cs1, v120
	.byte	W18
	.byte		N17	
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N05	
	.byte	W24
	.byte		N05	
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song061_1_1
	.byte		N05	, Cs1, v120
	.byte	W24
	.byte		N17	
	.byte	W30
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W15
	.byte		N03	
	.byte	W04
	.byte		N03	
	.byte	W05
	.byte		N05	
	.byte	W12
	.byte	W12
	.byte		N05	
	.byte	W36
	.byte		N03	
	.byte	W04
	.byte		N03	
	.byte	W04
	.byte		N06	
	.byte	W16
	.byte			Gn1
	.byte	W06
	.byte		N05	
	.byte	W18
	.byte	PATT	
		.word	song061_1_2
	.byte		N72	, Fs2, v120
	.byte	W18
	.byte		N17	, Cs1
	.byte	W30
	.byte		N03	
	.byte	W04
	.byte		N03	
	.byte	W04
	.byte		N06	
	.byte	W16
	.byte			Gn1
	.byte	W06
	.byte		N05	
	.byte	W18
	.byte	W48
	.byte		N03	, Cs1
	.byte	W04
	.byte		N03	
	.byte	W04
	.byte		N06	
	.byte	W16
	.byte			Gn1
	.byte	W06
	.byte		N05	
	.byte	W18
	.byte	TEMPO	, 74
	.byte		N06	, Cs1
	.byte		N56	, Fs2
	.byte	W18
	.byte		N17	, Cs1
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N05	
	.byte	W24
	.byte		N05	
	.byte	W06
	.byte	GOTO	
		.word	song061_1_1
	.byte	W18
	.byte		N17	, Cs1, v120
	.byte	W54
	.byte		N11	
	.byte	W11
	.byte	FINE

	@********************** Track  2 **********************@

	.global song061_2
song061_2:	@ 0x0829B16B
	.byte	KEYSH	, 0
	.byte	VOICE	, 126
	.byte	VOL	, v085
	.byte	PAN	, c_v-54
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song061_2_3:
	.byte	W60
	.byte		N05	, Gs1, v127
	.byte	W06
	.byte		N05	
	.byte	W30
	.byte	PEND
	.byte	W54
	.byte		N12	
	.byte	W42
song061_2_1:
	.byte	W54
	.byte		N05	, An1, v127
	.byte	W03
	.byte			Gs1
	.byte	W36
	.byte	W03
	.byte	PEND
song061_2_2:
	.byte	W06
	.byte		N12	, Gs1, v127
	.byte	W36
	.byte		N12	
	.byte	W54
	.byte	PEND
	.byte	W18
	.byte		N12	
	.byte	W42
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W30
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
	.byte	W54
	.byte		N12	
	.byte	W42
	.byte	PATT	
		.word	song061_2_1
	.byte	PATT	
		.word	song061_2_2
	.byte	W06
	.byte		N12	, Gs1, v127
	.byte	W54
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W30
	.byte	W54
	.byte		N12	
	.byte	W42
	.byte	PATT	
		.word	song061_2_3
	.byte	PATT	
		.word	song061_2_3
	.byte	W54
	.byte		N12	, Gs1, v127
	.byte	W42
	.byte	GOTO	
		.word	song061_2_1
	.byte	W54
	.byte		N05	, An1, v127
	.byte	W03
	.byte			Gs1
	.byte	W05
	.byte	FINE

	@********************** Track  3 **********************@

	.global song061_3
song061_3:	@ 0x0829B1E7
	.byte	KEYSH	, 0
	.byte	VOICE	, 126
	.byte	VOL	, v085
	.byte	PAN	, c_v+61
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song061_3_2:
	.byte	W80
	.byte	W03
	.byte		N06	, Fs1, v127
	.byte	W07
	.byte		N05	, Fn1
	.byte	W06
	.byte	PEND
	.byte	W96
song061_3_1:
	.byte	W60
	.byte	W01
	.byte		N11	, Fs1, v127
	.byte	W32
	.byte	W03
	.byte	PEND
	.byte	W60
	.byte		N12	
	.byte	W36
	.byte	W36
	.byte		N12	
	.byte	W44
	.byte	W03
	.byte		N06	
	.byte	W07
	.byte		N05	, Fn1
	.byte	W06
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
		.word	song061_3_1
	.byte	W72
	.byte		N12	, Fs1, v127
	.byte	W24
	.byte	W24
	.byte		N12	
	.byte	W56
	.byte	W03
	.byte		N06	
	.byte	W07
	.byte		N05	, Fn1
	.byte	W06
	.byte	W96
	.byte	PATT	
		.word	song061_3_2
	.byte	PATT	
		.word	song061_3_2
	.byte	W96
	.byte	GOTO	
		.word	song061_3_1
	.byte	W60
	.byte	W01
	.byte		N11	, Fs1, v127
	.byte	W11
	.byte	FINE

	@********************** Track  4 **********************@

	.global song061_4
song061_4:	@ 0x0829B256
	.byte	KEYSH	, 0
	.byte	VOICE	, 125
	.byte	VOL	, v083
	.byte	PAN	, c_v-4
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W56
	.byte	W02
	.byte		N36	, Fs7, v112
	.byte	W36
	.byte	W02
	.byte		N68	, Fn7
	.byte	W06
	.byte		N12	, Gn7, v127
	.byte	W30
	.byte		N06	
	.byte	W36
	.byte		N11	
	.byte	W12
	.byte		N05	
	.byte	W12
song061_4_6:
	.byte		N17	, Gn7, v127
	.byte	W36
	.byte		N17	
	.byte	W48
	.byte		N11	
	.byte	W12
	.byte		N48	, Fn7, v080
	.byte	W18
	.byte		N05	, Gn7, v127
	.byte	W36
	.byte		N06	
	.byte	W30
	.byte		N05	
	.byte	W12
	.byte	W30
	.byte		N06	
	.byte	W66
song061_4_2:
	.byte		N92	, Fn7, v127
	.byte		N23	, Gn7
	.byte	W24
	.byte		N23	
	.byte	W24
	.byte		N23	
	.byte	W24
	.byte		N23	
	.byte	W24
	.byte	PEND
song061_4_1:
	.byte		N23	, Gn7, v127
	.byte	W24
	.byte		N23	
	.byte	W24
	.byte		N23	
	.byte	W24
	.byte		N23	
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song061_4_1
song061_4_3:
	.byte		N11	, Gn7, v127
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte			En7
	.byte		N11	, Gn7
	.byte	W12
	.byte			En7
	.byte		N11	, Gn7
	.byte	W12
	.byte		N05	, En7
	.byte		N05	, Gn7
	.byte	W06
	.byte			En7
	.byte		N05	, Gn7
	.byte	W06
	.byte			En7
	.byte		N05	, Gn7
	.byte	W06
	.byte			En7
	.byte		N05	, Gn7
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song061_4_2
	.byte	PATT	
		.word	song061_4_1
	.byte	PATT	
		.word	song061_4_1
	.byte	PATT	
		.word	song061_4_3
	.byte	PATT	
		.word	song061_4_2
	.byte	PATT	
		.word	song061_4_1
	.byte	PATT	
		.word	song061_4_1
	.byte	PATT	
		.word	song061_4_3
	.byte	PATT	
		.word	song061_4_2
	.byte	PATT	
		.word	song061_4_1
	.byte	PATT	
		.word	song061_4_1
	.byte	PATT	
		.word	song061_4_3
	.byte	PATT	
		.word	song061_4_2
	.byte	PATT	
		.word	song061_4_1
	.byte	PATT	
		.word	song061_4_1
	.byte	PATT	
		.word	song061_4_3
	.byte	PATT	
		.word	song061_4_2
song061_4_4:
	.byte		N23	, Gn7, v127
	.byte	W24
	.byte		N23	
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song061_4_2
	.byte	PATT	
		.word	song061_4_4
	.byte		N32	, Fn7, v120
	.byte	W06
	.byte		N12	, Gn7, v127
	.byte	W30
	.byte		N06	
	.byte	W36
	.byte		N11	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N32	, Fn7, v120
	.byte		N17	, Gn7, v127
	.byte	W36
	.byte		N17	
	.byte	W48
	.byte		N11	
	.byte	W12
	.byte		N32	, Fn7, v120
	.byte	W18
	.byte		N05	, Gn7, v127
	.byte	W36
	.byte		N06	
	.byte	W18
	.byte		N05	
	.byte	W12
	.byte		N44	, Fn7, v120
	.byte	W12
	.byte	W36
	.byte		N06	, Gn7, v127
	.byte	W60
song061_4_5:
	.byte	W06
	.byte		N12	, Gn7, v127
	.byte	W30
	.byte		N06	
	.byte	W36
	.byte		N11	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte	PEND
	.byte		N17	
	.byte	W36
	.byte		N17	
	.byte	W18
	.byte		N04	
	.byte	W04
	.byte		N36	, Fs7, v112
	.byte	W14
	.byte		N11	, Gn7, v127
	.byte	W24
	.byte		N52	, Fn7, v120
	.byte		N11	, Gn7, v127
	.byte	W60
	.byte		N72	, Fs7, v112
	.byte	W36
	.byte	PATT	
		.word	song061_4_5
	.byte	GOTO	
		.word	song061_4_6
	.byte		N17	, Gn7, v127
	.byte	W36
	.byte		N17	
	.byte	W48
	.byte		N11	
	.byte	W11
	.byte	FINE

	@********************** Track  5 **********************@

	.global song061_5
song061_5:	@ 0x0829B3A2
	.byte	KEYSH	, 0
	.byte	VOICE	, 91
	.byte	VOL	, v066
	.byte	PAN	, c_v
	.byte	BEND	, c_v
	.byte		N03	, Bn4, v028
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte		N12	, Fn5, v032
	.byte	W12
	.byte		N03	, Bn4, v028
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte		N12	, Fn5, v032
	.byte	W12
	.byte		N03	, Bn4, v028
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte		N12	, Fn5, v036
	.byte	W12
	.byte		N03	, Bn4, v024
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte		N12	, Fn5, v040
	.byte	W12
	.byte		N03	, Bn4, v024
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte		N12	, Fn5, v040
	.byte	W12
	.byte		N03	, Bn4, v024
	.byte	W06
	.byte			Bn4, v032
	.byte	W06
	.byte		N12	, Fn5, v044
	.byte	W12
	.byte		N03	, Bn4, v032
	.byte	W06
	.byte			Bn4, v024
	.byte	W06
	.byte		N12	, Fn5, v044
	.byte	W12
	.byte		N03	, Bn4, v036
	.byte	W06
	.byte			Bn4, v024
	.byte	W06
	.byte		N12	, Fn5, v044
	.byte	W12
	.byte		N03	, Bn4, v028
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte		N12	, Fn5, v048
	.byte	W12
	.byte		N03	, Bn4, v036
	.byte	W06
	.byte			Bn4, v032
	.byte	W06
	.byte		N12	, Fn5, v048
	.byte	W12
	.byte		N03	, Bn4, v044
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte		N12	, Fn5, v048
	.byte	W12
	.byte		N03	, Bn4, v044
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte		N12	, Fn5, v048
	.byte	W12
	.byte		N03	, Bn4, v044
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte		N12	, Fn5, v052
	.byte	W12
	.byte		N03	, Bn4, v044
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte		N12	, Fn5, v052
	.byte	W12
	.byte		N03	, Bn4, v044
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte		N12	, Fn5, v064
	.byte	W12
	.byte		N03	, Bn4, v044
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte		N12	, Fn5, v064
	.byte	W12
	.byte	W96
song061_5_1:
	.byte		N03	, Bn4, v044
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte		N12	, Fn5, v064
	.byte	W12
	.byte		N03	, Bn4, v044
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte		N12	, Fn5, v064
	.byte	W12
	.byte		N03	, Bn4, v044
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte		N12	, Fn5, v064
	.byte	W12
	.byte		N03	, Bn4, v044
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte		N12	, Fn5, v064
	.byte	W12
	.byte	PEND
song061_5_5:
	.byte	PATT	
		.word	song061_5_1
	.byte	PATT	
		.word	song061_5_1
	.byte	PATT	
		.word	song061_5_1
	.byte	PATT	
		.word	song061_5_1
	.byte	PATT	
		.word	song061_5_1
	.byte	PATT	
		.word	song061_5_1
	.byte	PATT	
		.word	song061_5_1
	.byte	PATT	
		.word	song061_5_1
	.byte	PATT	
		.word	song061_5_1
	.byte	PATT	
		.word	song061_5_1
	.byte	PATT	
		.word	song061_5_1
	.byte	PATT	
		.word	song061_5_1
	.byte	PATT	
		.word	song061_5_1
	.byte	PATT	
		.word	song061_5_1
	.byte	PATT	
		.word	song061_5_1
	.byte	PATT	
		.word	song061_5_1
	.byte	PATT	
		.word	song061_5_1
	.byte	PATT	
		.word	song061_5_1
	.byte	PATT	
		.word	song061_5_1
	.byte	PATT	
		.word	song061_5_1
	.byte	PATT	
		.word	song061_5_1
	.byte	PATT	
		.word	song061_5_1
	.byte	PATT	
		.word	song061_5_1
song061_5_2:
	.byte		N03	, Bn4, v044
	.byte	W06
	.byte			Bn4, v004
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			Bn4, v044
	.byte	W06
	.byte			Bn4, v004
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			Bn4, v044
	.byte	W06
	.byte			Bn4, v004
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			Bn4, v044
	.byte	W06
	.byte			Bn4, v004
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			Bn4, v044
	.byte	W06
	.byte			Bn4, v004
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			Bn4, v044
	.byte	W06
	.byte	PEND
song061_5_3:
	.byte		N03	, Bn4, v044
	.byte	W06
	.byte			Bn4, v004
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			Bn4, v044
	.byte	W06
	.byte			Bn4, v004
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			Bn4, v044
	.byte	W06
	.byte			Bn4, v004
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			Bn4, v044
	.byte	W06
	.byte			Bn4, v016
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte		N05	, Bn4, v044
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song061_5_2
	.byte	PATT	
		.word	song061_5_3
song061_5_4:
	.byte		N12	, Fn5, v064
	.byte	W78
	.byte		N12	
	.byte	W18
	.byte	PEND
	.byte	PATT	
		.word	song061_5_4
	.byte	PATT	
		.word	song061_5_4
	.byte	W96
	.byte	PATT	
		.word	song061_5_3
	.byte	PATT	
		.word	song061_5_3
	.byte	W96
	.byte	PATT	
		.word	song061_5_1
	.byte	GOTO	
		.word	song061_5_5
	.byte	PATT	
		.word	song061_5_1
	.byte	FINE

	@********************** Track  6 **********************@

	.global song061_6
song061_6:	@ 0x0829B57D
	.byte	KEYSH	, 0
	.byte	VOICE	, 3
	.byte	VOL	, v073
	.byte		TIE	, Cs2, v092
	.byte	W24
	.byte	PAN	, c_v-4
	.byte	W68
	.byte	W03
	.byte		N96	, Bn1
	.byte	W01
	.byte	W01
	.byte		EOT	, Cs2
	.byte	W92
	.byte	W01
	.byte		TIE	, An1, v100
	.byte	W02
	.byte	W92
	.byte	W03
	.byte			Bn1, v112
	.byte	W01
	.byte	W01
	.byte		EOT	, An1
	.byte	W68
	.byte	W03
	.byte	VOL	, v073
	.byte	W24
	.byte	W09
	.byte		v072
	.byte	W03
	.byte		v071
	.byte	W06
	.byte		v069
	.byte	W06
	.byte		v068
	.byte	W07
	.byte		v068
	.byte	W04
	.byte		v066
	.byte	W03
	.byte		v065
	.byte	W04
	.byte		v063
	.byte	W05
	.byte		v061
	.byte	W03
	.byte		v059
	.byte	W04
	.byte		v058
	.byte	W04
	.byte		v056
	.byte	W04
	.byte		v054
	.byte	W04
	.byte		v050
	.byte	W02
	.byte		v046
	.byte	W01
	.byte		v046
	.byte	W04
	.byte		v041
	.byte	W04
	.byte		v038
	.byte	W04
	.byte		v036
	.byte	W04
	.byte		v031
	.byte	W03
	.byte		v026
	.byte	W03
	.byte		v020
	.byte	W01
	.byte		v015
	.byte	W01
	.byte		EOT	, Bn1
	.byte	W01
	.byte	VOL	, v073
	.byte	W02
song061_6_8:
	.byte		N11	, Cs2, v112
	.byte	W12
	.byte		N12	, Gs1, v100
	.byte	W12
	.byte		N06	, Cs2
	.byte	W06
	.byte		N12	, Bn1
	.byte	W12
	.byte		N06	, Gs1
	.byte	W06
	.byte			En2
	.byte	W06
	.byte		N04	, Cs2
	.byte	W06
	.byte		N12	
	.byte	W12
	.byte		N06	, Gs1
	.byte	W06
	.byte		N12	, Bn1
	.byte	W12
	.byte		N06	, Fs1
	.byte	W06
	.byte	PEND
song061_6_1:
	.byte		N06	, Bn1, v100
	.byte	W06
	.byte		N04	, Ds2
	.byte	W06
	.byte		N12	, Bn1
	.byte	W12
	.byte		N06	, Fs1
	.byte	W06
	.byte		N12	, An1
	.byte	W12
	.byte		N06	, Fs1
	.byte	W06
	.byte			Gs2
	.byte	W06
	.byte		N04	, Bn1
	.byte	W06
	.byte		N12	
	.byte	W12
	.byte		N06	, Fs1
	.byte	W06
	.byte		N12	, An1
	.byte	W12
	.byte		N06	, Fs1
	.byte	W06
	.byte	PEND
song061_6_2:
	.byte		N06	, En2, v100
	.byte	W06
	.byte		N04	, An1
	.byte	W06
	.byte		N12	
	.byte	W12
	.byte		N06	, En1
	.byte	W06
	.byte		N12	, An1
	.byte	W12
	.byte		N06	, En1
	.byte	W06
	.byte			En2
	.byte	W06
	.byte		N04	, An1
	.byte	W06
	.byte		N12	
	.byte	W12
	.byte		N06	, En1
	.byte	W06
	.byte		N12	, An1
	.byte	W12
	.byte		N06	, En1
	.byte	W06
	.byte	PEND
	.byte			Fs1
	.byte	W06
	.byte		N04	, Fs2
	.byte	W06
	.byte		N12	, Fs1
	.byte	W12
	.byte		N06	, Cs1
	.byte	W06
	.byte		N12	, Fs1
	.byte	W12
	.byte		N06	, Cs1
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte		N04	, Gs2
	.byte	W06
	.byte		N11	, Gs1
	.byte	W12
	.byte		N06	
	.byte	W06
	.byte		N12	, Ds2
	.byte	W12
	.byte		N06	, Gs1
	.byte	W06
song061_6_3:
	.byte		N06	, En2, v100
	.byte	W06
	.byte		N04	, Cs2
	.byte	W06
	.byte		N12	
	.byte	W12
	.byte		N06	, Gs1
	.byte	W06
	.byte		N12	, Bn1
	.byte	W12
	.byte		N06	, Gs1
	.byte	W06
	.byte			En2
	.byte	W06
	.byte		N04	, Cs2
	.byte	W06
	.byte		N12	
	.byte	W12
	.byte		N06	, Gs1
	.byte	W06
	.byte		N12	, Bn1
	.byte	W12
	.byte		N06	, Fs1
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song061_6_1
	.byte	PATT	
		.word	song061_6_2
song061_6_6:
	.byte		N06	, Fs1, v100
	.byte	W06
	.byte		N04	, Fs2
	.byte	W06
	.byte		N12	, Fs1
	.byte	W12
	.byte		N06	, Cs1
	.byte	W06
	.byte		N12	, Fs1
	.byte	W12
	.byte		N06	, Cs1
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte		N04	, Gs2
	.byte	W06
	.byte		N12	, Gs1
	.byte	W12
	.byte		N06	, Ds1
	.byte	W06
	.byte		N12	, Ds2
	.byte	W12
	.byte		N06	, Gs1
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song061_6_3
	.byte	PATT	
		.word	song061_6_1
song061_6_4:
	.byte		N06	, En2, v100
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N12	
	.byte	W12
	.byte		N06	, Gs1
	.byte	W06
	.byte		N12	, Bn1
	.byte	W12
	.byte		N06	, Gs1
	.byte	W06
	.byte			En2
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N12	
	.byte	W12
	.byte		N06	, Gs1
	.byte	W06
	.byte		N12	, Bn1
	.byte	W12
	.byte		N06	, Gs1
	.byte	W06
	.byte	PEND
song061_6_5:
	.byte		N06	, Fs2, v100
	.byte	W06
	.byte		N04	, An1
	.byte	W06
	.byte		N12	, Fs2
	.byte	W12
	.byte		N06	, An1
	.byte	W06
	.byte		N12	, Fs2
	.byte	W12
	.byte		N06	, An1
	.byte	W06
	.byte			Gs2
	.byte	W06
	.byte		N04	, Gs1
	.byte	W06
	.byte		N12	
	.byte	W12
	.byte		N06	, Ds1
	.byte	W06
	.byte		N12	, Ds2
	.byte	W12
	.byte		N06	, Gs1
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song061_6_3
	.byte	PATT	
		.word	song061_6_1
	.byte	PATT	
		.word	song061_6_4
	.byte	PATT	
		.word	song061_6_5
	.byte	PATT	
		.word	song061_6_3
	.byte	PATT	
		.word	song061_6_1
	.byte	PATT	
		.word	song061_6_2
	.byte	PATT	
		.word	song061_6_6
	.byte	PATT	
		.word	song061_6_3
	.byte	PATT	
		.word	song061_6_1
	.byte	PATT	
		.word	song061_6_4
	.byte	PATT	
		.word	song061_6_5
	.byte		N12	, An1, v100
	.byte	W12
	.byte			An2
	.byte	W12
	.byte		N06	, An1
	.byte	W06
	.byte			En2
	.byte	W06
	.byte			An2
	.byte	W06
	.byte		N12	, Bn2
	.byte	W12
	.byte		N06	, An2
	.byte	W06
	.byte			Fs2
	.byte	W06
	.byte			Cs2
	.byte	W06
	.byte			Fs1
	.byte	W06
	.byte			An1
	.byte	W06
	.byte			Cn2
	.byte	W06
	.byte			An1
	.byte	W06
	.byte		N12	, Gs1
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte		N06	, Gs1
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte		N12	, Gs2
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte		N06	, Gs1
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte		N12	, Gs2
	.byte	W12
	.byte			Cs1
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte		N06	, Cs1
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte			Cs2
	.byte	W06
	.byte		N12	, Fs2
	.byte	W12
	.byte		N06	, En3
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			En2
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte			Cs2
	.byte	W06
	.byte			En2
	.byte	W06
	.byte			Cs2
	.byte	W06
	.byte		N12	, An1
	.byte	W12
	.byte			An2
	.byte	W12
	.byte		N06	, An1
	.byte	W06
	.byte			En2
	.byte	W06
	.byte		N12	, An2
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte		N06	, Bn1
	.byte	W06
	.byte			Fs2
	.byte	W06
	.byte		N12	, Bn2
	.byte	W12
	.byte		N18	, Gs1
	.byte	W42
	.byte		N13	
	.byte	W18
	.byte		N05	, Gn1
	.byte	W06
	.byte		N18	, Gs1
	.byte	W18
	.byte		N12	, Gn1
	.byte	W12
	.byte		N17	, Fs1
	.byte	W36
	.byte		N14	
	.byte	W60
	.byte		N18	, Ds1, v112
	.byte	W42
	.byte		N16	, Ds1, v100
	.byte	W30
	.byte		N11	, Gn1
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte		N44	
	.byte	W48
	.byte			En1
	.byte	W48
song061_6_7:
	.byte		N05	, Gn1, v100
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song061_6_7
	.byte	W96
	.byte	PATT	
		.word	song061_6_8
	.byte	GOTO	
		.word	song061_6_1
	.byte	PATT	
		.word	song061_6_1
	.byte	FINE

	@********************** Track  7 **********************@

	.global song061_7
song061_7:	@ 0x0829B801
	.byte	KEYSH	, 0
	.byte	VOICE	, 1
	.byte	VOL	, v073
	.byte	PAN	, c_v+36
	.byte	LFOS	, 0
	.byte		N92	, En2, v100
	.byte	W96
	.byte			Fs2
	.byte	W96
	.byte			Gn1
	.byte		N92	, Bn2
	.byte	W96
	.byte		TIE	, An1
	.byte		TIE	, Cs3
	.byte	W72
	.byte	VOL	, v073
	.byte	W24
	.byte	W09
	.byte		v072
	.byte	W03
	.byte		v071
	.byte	W06
	.byte		v069
	.byte	W06
	.byte		v068
	.byte	W07
	.byte		v068
	.byte	W04
	.byte		v066
	.byte	W03
	.byte		v065
	.byte	W04
	.byte		v063
	.byte	W05
	.byte		EOT	, An1
	.byte	VOL	, v061
	.byte	W03
	.byte		v059
	.byte	W04
	.byte		v058
	.byte	W04
	.byte		v056
	.byte	W04
	.byte		v054
	.byte	W04
	.byte		v050
	.byte	W02
	.byte		v046
	.byte	W01
	.byte		v046
	.byte	W04
	.byte		v041
	.byte	W04
	.byte		v038
	.byte	W04
	.byte		v036
	.byte	W04
	.byte		v031
	.byte	W03
	.byte		v026
	.byte	W03
	.byte		v020
	.byte	W01
	.byte		v015
	.byte	W03
	.byte		EOT	, Cs3
	.byte	W01
	.byte	VOL	, v073
	.byte		N96	, Bn2
	.byte	W96
song061_7_4:
	.byte		N96	, An2, v080
	.byte		N96	, Cs3
	.byte	W96
	.byte			Gn2
	.byte		N96	, Dn3
	.byte	W96
	.byte		N48	, En2
	.byte		N48	, En3
	.byte	W48
	.byte		N24	, Fs2
	.byte		N48	, Fs3
	.byte	W48
	.byte		N96	, Bn2, v100
	.byte	W96
song061_7_2:
	.byte		N96	, An2, v080
	.byte		N96	, Cs3, v092
	.byte	W96
	.byte	PEND
song061_7_3:
	.byte		N96	, Bn2, v080
	.byte		N96	, Dn3, v100
	.byte	W96
	.byte	PEND
song061_7_1:
	.byte		N48	, An2, v080
	.byte		N48	, En3, v100
	.byte	W48
	.byte			Fs2, v080
	.byte		N48	, Fs3, v100
	.byte	W48
	.byte	PEND
	.byte		N96	, Bn2
	.byte	W96
	.byte			An2, v080
	.byte		N96	, Cs3
	.byte	W96
	.byte			An2, v092
	.byte		N96	, Dn3
	.byte	W96
	.byte	PATT	
		.word	song061_7_1
	.byte		N96	, Bn2, v100
	.byte	W96
	.byte			An2, v080
	.byte		N96	, Cs3
	.byte	W96
	.byte			An2, v092
	.byte		N96	, Dn3
	.byte	W96
	.byte	PATT	
		.word	song061_7_1
	.byte		N96	, Bn2, v100
	.byte	W96
	.byte	PATT	
		.word	song061_7_2
	.byte	PATT	
		.word	song061_7_3
	.byte	PATT	
		.word	song061_7_1
	.byte		N96	, Bn2, v100
	.byte	W96
	.byte			An2, v080
	.byte		N96	, Cs3
	.byte	W96
	.byte			An2, v092
	.byte		N96	, Dn3
	.byte	W96
	.byte	PATT	
		.word	song061_7_1
	.byte		N96	, Gn2, v112
	.byte	W96
	.byte			An2, v080
	.byte	W96
	.byte			Bn2
	.byte	W96
	.byte		N48	, Gn2
	.byte		N48	, Dn3
	.byte	W48
	.byte			An2
	.byte		N48	, En3
	.byte	W48
	.byte		N19	, Fs3, v104
	.byte	W36
	.byte		N24	, Fs2, v116
	.byte	W24
	.byte		N18	, Fs3, v092
	.byte	W18
	.byte			Fn3, v088
	.byte	W18
	.byte			En3
	.byte	W36
	.byte		N56	, En2, v112
	.byte	W60
	.byte		N24	, En3
	.byte	W48
	.byte		N18	, An3, v092
	.byte	W18
	.byte		N17	, Gn3, v088
	.byte	W18
	.byte		N56	, Fs3, v104
	.byte	W12
	.byte	W48
	.byte		N44	, An3
	.byte	W48
	.byte	W01
	.byte		N05	, Cn4, v112
	.byte	W05
	.byte		N06	
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte		N05	, Fn4
	.byte	W06
	.byte		N06	
	.byte	W13
	.byte		N05	
	.byte	W05
	.byte		N06	
	.byte	W12
	.byte		N05	, An4
	.byte	W06
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte	W01
	.byte			Cn5
	.byte	W05
	.byte		N06	
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte		N05	, Fn5
	.byte	W06
	.byte		N06	
	.byte	W13
	.byte		N05	
	.byte	W05
	.byte		N06	
	.byte	W12
	.byte		N05	, An5
	.byte	W06
	.byte		N05	
	.byte	W13
	.byte		N04	
	.byte	W05
	.byte		N05	, Cn6, v100
	.byte	W14
	.byte		N03	, Cn6, v072
	.byte	W04
	.byte		N05	, Cn6, v080
	.byte	W13
	.byte		N03	, Cn6, v060
	.byte	W05
	.byte		N04	
	.byte	W13
	.byte		N03	, Cn6, v052
	.byte	W05
	.byte		N04	
	.byte	W18
	.byte		N06	, Gn5
	.byte	W24
	.byte		N96	, Bn2, v080
	.byte	W96
	.byte	GOTO	
		.word	song061_7_4
	.byte		N96	, An2, v080
	.byte		N96	, Cs3
	.byte	W96
	.byte	FINE

	@********************** Track  8 **********************@

	.global song061_8
song061_8:	@ 0x0829B971
	.byte	KEYSH	, 0
	.byte	VOICE	, 26
	.byte	VOL	, v066
	.byte	PAN	, c_v-64
	.byte		N92	, Fs2, v088
	.byte	W92
	.byte	W02
	.byte		N48	, Gs2
	.byte	W02
	.byte	W44
	.byte	W02
	.byte			Bn2
	.byte	W48
	.byte		N44	, Cs3
	.byte	W02
	.byte	W44
	.byte	W02
	.byte			En3
	.byte	W48
	.byte			Fs3, v076
	.byte	W02
	.byte	W44
	.byte	W02
	.byte		TIE	, Bn3
	.byte	W24
	.byte	W02
	.byte	VOL	, v073
	.byte	W24
	.byte	W09
	.byte		v072
	.byte	W03
	.byte		v071
	.byte	W06
	.byte		v069
	.byte	W06
	.byte		v068
	.byte	W07
	.byte		v068
	.byte	W04
	.byte		v066
	.byte	W03
	.byte		v065
	.byte	W04
	.byte		v063
	.byte	W05
	.byte		v061
	.byte	W03
	.byte		v059
	.byte	W04
	.byte		v058
	.byte	W04
	.byte		v056
	.byte	W04
	.byte		v054
	.byte	W04
	.byte		v050
	.byte	W02
	.byte		v046
	.byte	W01
	.byte		v046
	.byte	W04
	.byte		v041
	.byte	W04
	.byte		v038
	.byte	W04
	.byte		v036
	.byte	W04
	.byte		v031
	.byte	W03
	.byte		v026
	.byte	W03
	.byte		v020
	.byte	W01
	.byte		v015
	.byte	W01
	.byte		EOT	
	.byte	W03
	.byte	VOL	, v073
	.byte	W96
song061_8_2:
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
	.byte	W92
	.byte	W03
	.byte		N20	, Gs3, v080
	.byte	W01
song061_8_1:
	.byte	W20
	.byte		N14	, Fs3, v080
	.byte	W16
	.byte		N40	, Cs3
	.byte	W48
	.byte	W03
	.byte		N02	
	.byte	W03
	.byte		N04	, Ds3
	.byte	W05
	.byte		N19	, En3
	.byte	W01
	.byte	PEND
	.byte	W20
	.byte		N01	, Gn3
	.byte	W03
	.byte		N11	, Gs3
	.byte	W13
	.byte		N48	, Fs3
	.byte	W56
	.byte	W03
	.byte		N19	, Gs3
	.byte	W01
	.byte	PATT	
		.word	song061_8_1
	.byte	W20
	.byte		N02	, Dn3, v080
	.byte	W03
	.byte		N17	, Ds3
	.byte	W19
	.byte		N48	, Bn2
	.byte	W48
	.byte	W02
	.byte		N19	, Gs3, v100
	.byte	W04
	.byte	W16
	.byte		N17	, Fs3
	.byte	W19
	.byte		N54	, Cs3
	.byte	W54
	.byte	W01
	.byte		N21	, En3
	.byte	W06
	.byte	W17
	.byte		N18	, Gs3, v092
	.byte	W19
	.byte		N52	, Fs3
	.byte	W56
	.byte	W02
	.byte		N42	, Gs3, v084
	.byte	W02
	.byte	W42
	.byte	W01
	.byte		N04	, As3
	.byte	W04
	.byte		N23	, Bn3
	.byte	W24
	.byte		N10	, An3
	.byte	W11
	.byte		TIE	, Gs3
	.byte	W14
	.byte	W84
	.byte	W02
	.byte		EOT	
	.byte	W10
	.byte		N92	, Dn4, v072
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	song061_8_2
	.byte	FINE

	@********************** Track  9 **********************@

	.global song061_9
song061_9:	@ 0x0829BA54
	.byte	KEYSH	, 0
	.byte	VOICE	, 26
	.byte	PAN	, c_v+56
	.byte	VOL	, v066
	.byte		N92	, Cs2, v076
	.byte	W92
	.byte		N48	, Ds2
	.byte	W04
	.byte	W44
	.byte			Fs2
	.byte	W48
	.byte			En2
	.byte	W04
	.byte	W44
	.byte			Gs2
	.byte	W48
	.byte			Bn2, v068
	.byte	W04
	.byte	W44
	.byte		TIE	, Ds3
	.byte	W28
	.byte	VOL	, v073
	.byte	W24
	.byte	W09
	.byte		v072
	.byte	W03
	.byte		v071
	.byte	W06
	.byte		v069
	.byte	W06
	.byte		v068
	.byte	W07
	.byte		v068
	.byte	W04
	.byte		v066
	.byte	W03
	.byte		v065
	.byte	W04
	.byte		v063
	.byte	W05
	.byte		v061
	.byte	W03
	.byte		v059
	.byte	W04
	.byte		v058
	.byte	W04
	.byte		v056
	.byte	W04
	.byte		v054
	.byte	W04
	.byte		v050
	.byte	W02
	.byte		v046
	.byte	W01
	.byte		v046
	.byte	W04
	.byte		v041
	.byte	W04
	.byte		v038
	.byte	W04
	.byte		v036
	.byte	W04
	.byte		v031
	.byte	W03
	.byte		v026
	.byte	W03
	.byte		v020
	.byte	W01
	.byte		v015
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte	VOL	, v073
	.byte	W96
song061_9_1:
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
	.byte		N20	, Ds3, v052
	.byte	W21
	.byte		N15	, Cs3, v060
	.byte	W16
	.byte		N40	, An2, v052
	.byte	W48
	.byte	W03
	.byte		N03	, Gs2
	.byte	W03
	.byte		N04	, As2
	.byte	W05
	.byte		N20	, Bn2
	.byte	W21
	.byte		N02	, Ds3
	.byte	W03
	.byte		N11	, En3
	.byte	W12
	.byte		N44	, Ds3
	.byte	W54
	.byte	W01
	.byte		N04	, Dn3
	.byte	W05
	.byte		N20	, Ds3
	.byte	W21
	.byte		N14	, Cs3
	.byte	W15
	.byte		N40	, Gs2
	.byte	W52
	.byte		N02	
	.byte	W03
	.byte		N04	, As2
	.byte	W05
	.byte		N20	, Bn2
	.byte	W21
	.byte		N02	, Ds3
	.byte	W03
	.byte		N11	, En3
	.byte	W12
	.byte		N48	, Ds3
	.byte	W60
	.byte	W01
	.byte		N20	, Gs3, v080
	.byte	W22
	.byte		N14	, Fs3, v100
	.byte	W14
	.byte		N48	, Cs3
	.byte	W56
	.byte	W03
	.byte	W01
	.byte		N20	, En3
	.byte	W22
	.byte		N13	, Gs3
	.byte	W14
	.byte		N48	, Fs3, v060
	.byte	W56
	.byte	W02
	.byte		N42	, Gs3
	.byte	W01
	.byte	W44
	.byte	W03
	.byte		N23	, Gs3, v076
	.byte	W24
	.byte	W01
	.byte		N08	, Fs3
	.byte	W09
	.byte		N52	, Ds3
	.byte	W15
	.byte	W40
	.byte			Fs3
	.byte	W56
	.byte	W96
	.byte		N92	, Gn4, v052
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	song061_9_1
	.byte	FINE

	@********************** Track  10 **********************@

	.global song061_10
song061_10:	@ 0x0829BB36
	.byte	KEYSH	, 0
	.byte	VOICE	, 59
	.byte	VOL	, v073
	.byte	PAN	, c_v-29
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N92	, En3, v092
	.byte	W96
song061_10_3:
	.byte		N92	, Dn3, v092
	.byte	W96
	.byte			Cn3
	.byte	W96
song061_10_1:
	.byte		N44	, An3, v092
	.byte	W48
	.byte			Bn3
	.byte	W48
	.byte	PEND
	.byte		N92	, En3
	.byte	W96
	.byte			Dn3
	.byte	W96
	.byte			Cn3
	.byte	W96
	.byte	PATT	
		.word	song061_10_1
	.byte		N92	, En3, v092
	.byte	W96
	.byte			Dn3
	.byte	W96
	.byte			Gn3
	.byte	W96
	.byte	PATT	
		.word	song061_10_1
	.byte		N12	, En3, v080
	.byte	W18
	.byte		N06	
	.byte	W17
	.byte		N12	, Bn2
	.byte	W19
	.byte			En3
	.byte	W18
	.byte		N06	
	.byte	W11
	.byte		N12	, Bn2
	.byte	W13
	.byte			Dn3
	.byte	W18
	.byte		N06	
	.byte	W17
	.byte		N18	, An2
	.byte	W19
	.byte		N12	, Dn3
	.byte	W18
	.byte		N06	
	.byte	W11
	.byte		N12	, Fs3
	.byte	W13
	.byte			Gn3
	.byte	W18
	.byte		N06	
	.byte	W17
	.byte		N12	, Dn3
	.byte	W19
	.byte			Gn3
	.byte	W18
	.byte		N06	
	.byte	W11
	.byte		N12	, Dn3
	.byte	W13
	.byte			An3
	.byte	W18
	.byte		N06	
	.byte	W18
	.byte		N12	
	.byte	W18
	.byte		N17	, Bn3
	.byte	W18
	.byte		N06	
	.byte	W11
	.byte		N10	
	.byte	W13
song061_10_2:
	.byte		N12	, En4, v080
	.byte	W18
	.byte		N06	
	.byte	W17
	.byte		N12	, Bn3
	.byte	W19
	.byte			En4
	.byte	W18
	.byte		N06	
	.byte	W11
	.byte		N12	, Bn3
	.byte	W13
	.byte	PEND
	.byte			Dn4
	.byte	W18
	.byte		N06	
	.byte	W17
	.byte		N18	, An3
	.byte	W19
	.byte		N12	, Dn4
	.byte	W18
	.byte		N06	
	.byte	W11
	.byte		N12	, An3
	.byte	W13
	.byte			Cn4
	.byte	W18
	.byte		N06	
	.byte	W17
	.byte		N12	, Gn3
	.byte	W19
	.byte			Cn4
	.byte	W18
	.byte		N06	
	.byte	W11
	.byte		N12	, Gn3
	.byte	W13
	.byte			An3
	.byte	W18
	.byte		N06	
	.byte	W18
	.byte		N12	, En3
	.byte	W18
	.byte		N18	, Bn3
	.byte	W18
	.byte		N06	, An3
	.byte	W11
	.byte			Fs3
	.byte	W13
	.byte	PATT	
		.word	song061_10_2
	.byte		N12	, Dn4, v080
	.byte	W18
	.byte		N06	
	.byte	W17
	.byte		N18	, An3
	.byte	W19
	.byte		N12	
	.byte	W18
	.byte		N06	, Dn4
	.byte	W11
	.byte		N12	, An3
	.byte	W13
	.byte			Gn4
	.byte	W18
	.byte		N06	
	.byte	W17
	.byte		N12	, Dn4
	.byte	W19
	.byte			Gn4
	.byte	W18
	.byte		N06	
	.byte	W11
	.byte		N12	, Dn4
	.byte	W13
	.byte			An4
	.byte	W18
	.byte		N06	
	.byte	W18
	.byte		N12	, Fs4
	.byte	W18
	.byte		N18	, Bn4
	.byte	W18
	.byte		N11	, An4
	.byte	W11
	.byte			Fs4
	.byte	W13
	.byte		N54	, Cn3, v100
	.byte	W60
	.byte		N32	, Cn3, v096
	.byte	W36
	.byte		N54	, Bn2, v100
	.byte	W60
	.byte		N32	
	.byte	W36
	.byte		N56	, En3, v104
	.byte	W60
	.byte		N24	, Dn3, v108
	.byte	W24
	.byte		N12	, En3, v096
	.byte	W12
	.byte		N48	, Gn3, v108
	.byte	W48
	.byte			An3
	.byte	W48
	.byte		N19	, Bn3, v104
	.byte	W36
	.byte		N24	, Bn2, v116
	.byte	W24
	.byte		N18	, Bn3, v092
	.byte	W18
	.byte			As3, v088
	.byte	W18
	.byte			An3
	.byte	W36
	.byte		N56	, An2, v112
	.byte	W60
	.byte		N24	, Fs3
	.byte	W36
	.byte		N32	, Fs2, v116
	.byte	W36
	.byte		N11	, As2
	.byte	W12
	.byte		N60	, Bn2, v104
	.byte	W12
	.byte	W48
	.byte		N44	, Dn3
	.byte	W48
	.byte		N92	, As2
	.byte	W96
	.byte		N05	, Fn3, v100
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte		N05	, As3
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte		N05	, Dn4
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte			Fn4, v112
	.byte	W06
	.byte			Fn4, v100
	.byte	W12
	.byte		N04	, Fn4, v072
	.byte	W06
	.byte		N05	, Fn4, v080
	.byte	W12
	.byte		N04	, Fn4, v060
	.byte	W06
	.byte		N05	
	.byte	W12
	.byte		N04	, Fn4, v052
	.byte	W06
	.byte		N05	
	.byte	W36
	.byte		N92	, En3, v092
	.byte	W96
	.byte	GOTO	
		.word	song061_10_3
	.byte		N92	, Dn3, v092
	.byte	W92
	.byte	W03
	.byte	FINE

	@********************** Track  11 **********************@

	.global song061_11
song061_11:	@ 0x0829BCA4
	.byte	KEYSH	, 0
	.byte	VOICE	, 50
	.byte	PAN	, c_v+46
	.byte	VOL	, v082
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song061_11_1:
	.byte		N03	, Cs4, v096
	.byte	W06
	.byte			Cs3, v076
	.byte	W12
	.byte			Cs4, v096
	.byte	W06
	.byte			Cs3, v076
	.byte	W06
	.byte			Cs3, v056
	.byte	W06
	.byte			Cs4, v096
	.byte	W06
	.byte			Cs3, v076
	.byte	W12
	.byte			Cs4, v096
	.byte	W06
	.byte			Cs3, v076
	.byte	W06
	.byte			Cs3, v056
	.byte	W06
	.byte		N06	, Cs4, v096
	.byte	W06
	.byte		N03	, Cs3, v056
	.byte	W06
	.byte			Cs3, v076
	.byte	W12
	.byte	PEND
song061_11_2:
	.byte		N03	, Ds4, v096
	.byte	W06
	.byte			Bn2, v076
	.byte	W06
	.byte			Bn2, v056
	.byte	W06
	.byte			Ds4, v096
	.byte	W06
	.byte			Bn2, v076
	.byte	W06
	.byte			Bn2, v056
	.byte	W06
	.byte			Ds4, v096
	.byte	W06
	.byte			Bn2, v076
	.byte	W06
	.byte			Bn2, v056
	.byte	W06
	.byte			Ds4, v096
	.byte	W06
	.byte			Bn2, v076
	.byte	W06
	.byte			Bn2, v056
	.byte	W06
	.byte		N06	, Ds4, v096
	.byte	W24
	.byte	PEND
song061_11_3:
	.byte		N03	, En4, v096
	.byte	W06
	.byte			En3, v076
	.byte	W12
	.byte			En4, v096
	.byte	W06
	.byte			En3, v076
	.byte	W06
	.byte			En3, v056
	.byte	W06
	.byte			En4, v096
	.byte	W06
	.byte			En3, v076
	.byte	W12
	.byte			En4, v096
	.byte	W06
	.byte			En3, v076
	.byte	W06
	.byte			En3, v056
	.byte	W06
	.byte		N06	, En4, v096
	.byte	W06
	.byte		N03	, En3, v056
	.byte	W06
	.byte			En3, v076
	.byte	W12
	.byte	PEND
song061_11_4:
	.byte		N03	, Fs4, v096
	.byte	W06
	.byte			Fs3, v076
	.byte	W06
	.byte			Fs3, v056
	.byte	W06
	.byte			Fs4, v096
	.byte	W06
	.byte			Fs3, v076
	.byte	W06
	.byte			Fs3, v056
	.byte	W06
	.byte			Fs4, v096
	.byte	W06
	.byte			Gs3, v076
	.byte	W06
	.byte			Gs3, v056
	.byte	W06
	.byte			Gs4, v096
	.byte	W06
	.byte			Gs3, v076
	.byte	W06
	.byte			Gs3, v056
	.byte	W06
	.byte		N06	, Gs4, v096
	.byte	W06
	.byte		N03	, Gs3, v076
	.byte	W06
	.byte			Gs3, v056
	.byte	W06
	.byte		N06	, Gs4, v112
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song061_11_1
	.byte	PATT	
		.word	song061_11_2
	.byte	PATT	
		.word	song061_11_3
	.byte	PATT	
		.word	song061_11_4
	.byte	PATT	
		.word	song061_11_1
	.byte	PATT	
		.word	song061_11_2
	.byte	PATT	
		.word	song061_11_3
	.byte	PATT	
		.word	song061_11_4
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song061_11_5:
	.byte		N03	, Cs4, v104
	.byte	W06
	.byte			Cs3, v084
	.byte	W12
	.byte			Cs4, v104
	.byte	W06
	.byte			Cs3, v084
	.byte	W06
	.byte			Cs3, v064
	.byte	W06
	.byte			Cs4, v104
	.byte	W06
	.byte			Cs3, v084
	.byte	W12
	.byte			Cs4, v104
	.byte	W06
	.byte			Cs3, v084
	.byte	W06
	.byte			Cs3, v064
	.byte	W06
	.byte		N06	, Cs4, v104
	.byte	W06
	.byte		N03	, Cs3, v064
	.byte	W06
	.byte			Cs3, v084
	.byte	W12
	.byte	PEND
song061_11_6:
	.byte		N03	, Ds4, v084
	.byte	W06
	.byte			Bn2, v064
	.byte	W06
	.byte			Bn2, v044
	.byte	W06
	.byte			Ds4, v084
	.byte	W06
	.byte			Bn2, v064
	.byte	W06
	.byte			Bn2, v044
	.byte	W06
	.byte			Ds4, v084
	.byte	W06
	.byte			Bn2, v064
	.byte	W06
	.byte			Bn2, v044
	.byte	W06
	.byte			Ds4, v084
	.byte	W06
	.byte			Bn2, v064
	.byte	W06
	.byte			Bn2, v044
	.byte	W06
	.byte		N06	, Ds4, v084
	.byte	W24
	.byte	PEND
song061_11_7:
	.byte		N03	, En4, v084
	.byte	W06
	.byte			En3, v064
	.byte	W12
	.byte			En4, v084
	.byte	W06
	.byte			En3, v064
	.byte	W06
	.byte			En3, v044
	.byte	W06
	.byte			En4, v084
	.byte	W06
	.byte			En3, v064
	.byte	W12
	.byte			En4, v084
	.byte	W06
	.byte			En3, v064
	.byte	W06
	.byte			En3, v044
	.byte	W06
	.byte		N06	, En4, v084
	.byte	W06
	.byte		N03	, En3, v044
	.byte	W06
	.byte			En3, v064
	.byte	W12
	.byte	PEND
song061_11_8:
	.byte		N03	, Fs4, v084
	.byte	W06
	.byte			Fs3, v064
	.byte	W06
	.byte			Fs3, v044
	.byte	W06
	.byte			Fs4, v084
	.byte	W06
	.byte			Fs3, v064
	.byte	W06
	.byte			Fs3, v044
	.byte	W06
	.byte			Fs4, v084
	.byte	W06
	.byte			Gs3, v064
	.byte	W06
	.byte			Gs3, v044
	.byte	W06
	.byte			Gs4, v084
	.byte	W06
	.byte			Gs3, v064
	.byte	W06
	.byte			Gs3, v044
	.byte	W06
	.byte		N06	, Gs4, v084
	.byte	W06
	.byte		N03	, Gs3, v064
	.byte	W06
	.byte			Gs3, v044
	.byte	W06
	.byte		N06	, Gs4, v100
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song061_11_5
	.byte	PATT	
		.word	song061_11_6
	.byte	PATT	
		.word	song061_11_7
	.byte	PATT	
		.word	song061_11_8
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N03	, Cs4, v076
	.byte	W06
	.byte			Cs3, v056
	.byte	W12
	.byte			Cs4, v076
	.byte	W06
	.byte			Cs3, v056
	.byte	W06
	.byte			Cs3, v036
	.byte	W06
	.byte			Cs4, v076
	.byte	W06
	.byte			Cs3, v056
	.byte	W12
	.byte			Cs4, v076
	.byte	W06
	.byte			Cs3, v056
	.byte	W06
	.byte			Cs3, v036
	.byte	W06
	.byte		N06	, Cs4, v076
	.byte	W06
	.byte		N03	, Cs3, v036
	.byte	W06
	.byte			Cs3, v056
	.byte	W12
	.byte			En4, v076
	.byte	W06
	.byte			Cs3, v056
	.byte	W06
	.byte			Cs3, v036
	.byte	W06
	.byte			En4, v076
	.byte	W06
	.byte			Cs3, v056
	.byte	W06
	.byte			Cs3, v036
	.byte	W06
	.byte			En4, v076
	.byte	W06
	.byte			Cs3, v056
	.byte	W06
	.byte			Cs3, v036
	.byte	W06
	.byte			En4, v076
	.byte	W06
	.byte			Cs3, v056
	.byte	W06
	.byte			Cs3, v036
	.byte	W06
	.byte		N06	, En4, v076
	.byte	W24
	.byte		N03	, Ds4
	.byte	W06
	.byte			Ds3, v056
	.byte	W12
	.byte			Ds4, v076
	.byte	W06
	.byte			Ds3, v056
	.byte	W06
	.byte			Ds3, v036
	.byte	W06
	.byte			Ds4, v076
	.byte	W06
	.byte			Ds3, v056
	.byte	W12
	.byte			Ds4, v076
	.byte	W06
	.byte			Ds3, v056
	.byte	W06
	.byte			Ds3, v036
	.byte	W06
	.byte		N06	, Ds4, v076
	.byte	W06
	.byte		N03	, Ds3, v036
	.byte	W06
	.byte			Ds3, v056
	.byte	W12
	.byte			Gs4, v076
	.byte	W06
	.byte			Gs3, v056
	.byte	W06
	.byte			Gs3, v036
	.byte	W06
	.byte			Gs4, v076
	.byte	W06
	.byte			Gs3, v056
	.byte	W06
	.byte			Gs3, v036
	.byte	W06
	.byte			Gs4, v076
	.byte	W06
	.byte			Gs3, v056
	.byte	W06
	.byte			Bn3, v036
	.byte	W06
	.byte			Bn4, v076
	.byte	W06
	.byte			Bn3, v056
	.byte	W06
	.byte			Bn3, v036
	.byte	W06
	.byte		N06	, Bn4, v076
	.byte	W06
	.byte		N03	, Bn3, v056
	.byte	W06
	.byte			Bn3, v036
	.byte	W06
	.byte		N06	, Bn4, v092
	.byte	W06
song061_11_9:
	.byte		N03	, Gn4, v076
	.byte	W06
	.byte			Gn3, v056
	.byte	W06
	.byte			Gn3, v036
	.byte	W06
	.byte			Gn4, v076
	.byte	W06
	.byte			Gn3, v056
	.byte	W06
	.byte			Gn3, v036
	.byte	W06
	.byte			Gn4, v076
	.byte	W06
	.byte			Gn3, v056
	.byte	W06
	.byte			Gn3, v036
	.byte	W06
	.byte			Gn4, v076
	.byte	W06
	.byte			Gn3, v056
	.byte	W06
	.byte			Gn3, v036
	.byte	W06
	.byte		N06	, Gn4, v076
	.byte	W06
	.byte		N03	, Gn3, v056
	.byte	W06
	.byte			Gn3, v036
	.byte	W06
	.byte		N06	, Gn4, v092
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song061_11_9
	.byte	W96
	.byte	PATT	
		.word	song061_11_1
	.byte	GOTO	
		.word	song061_11_2
	.byte		N03	, Ds4, v096
	.byte	W06
	.byte			Bn2, v076
	.byte	W06
	.byte			Bn2, v056
	.byte	W06
	.byte			Ds4, v096
	.byte	W06
	.byte			Bn2, v076
	.byte	W06
	.byte			Bn2, v056
	.byte	W06
	.byte			Ds4, v096
	.byte	W06
	.byte			Bn2, v076
	.byte	W06
	.byte			Bn2, v056
	.byte	W06
	.byte			Ds4, v096
	.byte	W06
	.byte			Bn2, v076
	.byte	W06
	.byte			Bn2, v056
	.byte	W06
	.byte		N06	, Ds4, v096
	.byte	W06
	.byte	FINE

	@********************** Track  12 **********************@

	.global song061_12
song061_12:	@ 0x0829BF7C
	.byte	KEYSH	, 0
	.byte	VOICE	, 39
	.byte	VOL	, v066
	.byte	PAN	, c_v
	.byte		N06	, Fs5, v060
	.byte	W06
	.byte			Fn5
	.byte	W06
	.byte		N12	, Fs5
	.byte	W12
	.byte		N06	, Fn5
	.byte	W06
	.byte			Cs5
	.byte	W06
	.byte			Gs4
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			Fs5
	.byte	W06
	.byte			Fn5
	.byte	W06
	.byte		N12	, Fs5
	.byte	W12
	.byte		N06	, Fn5
	.byte	W06
	.byte			Cs5
	.byte	W06
	.byte			Gs4
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			Fs5
	.byte	W06
	.byte			Fn5
	.byte	W06
	.byte		N12	, Fs5
	.byte	W12
	.byte		N06	, Ds5
	.byte	W06
	.byte			Bn4
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			Fs5
	.byte	W06
	.byte			Fn5
	.byte	W06
	.byte		N12	, Fs5
	.byte	W12
	.byte		N06	, Ds5
	.byte	W06
	.byte			Bn4
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			En5, v072
	.byte	W06
	.byte			Ds5
	.byte	W06
	.byte		N12	, En5
	.byte	W12
	.byte		N06	, Cs5
	.byte	W06
	.byte			An4
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			En5
	.byte	W06
	.byte			Ds5
	.byte	W06
	.byte		N12	, En5
	.byte	W12
	.byte		N06	, Cs5
	.byte	W06
	.byte			An4
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Fs5, v080
	.byte	W06
	.byte			Fn5
	.byte	W06
	.byte		N12	, Fs5
	.byte	W12
	.byte		N06	, Ds5
	.byte	W06
	.byte			Bn4
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			Fs5
	.byte	W06
	.byte			Fn5
	.byte	W06
	.byte		N12	, Fs5
	.byte	W12
	.byte		N06	, Ds5
	.byte	W06
	.byte			Bn4
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte	W12
	.byte	VOICE	, 31
	.byte	VOL	, v060
	.byte	W12
	.byte		N04	, Gs2, v127
	.byte	W04
	.byte			An2
	.byte	W04
	.byte			Gs2, v076
	.byte	W04
	.byte			An2, v056
	.byte	W04
	.byte			Gs2, v052
	.byte	W04
	.byte			An2, v056
	.byte	W04
	.byte			Gs2
	.byte	W04
	.byte			An2, v060
	.byte	W04
	.byte			Gs2, v068
	.byte	W04
	.byte			An2, v076
	.byte	W04
	.byte			Gs2, v080
	.byte	W04
	.byte			An2, v088
	.byte	W04
	.byte			Gs2, v100
	.byte	W04
	.byte			An2, v104
	.byte	W04
	.byte			Gs2, v112
	.byte	W04
	.byte			An2, v120
	.byte	W04
	.byte			Gs2, v124
	.byte	W04
	.byte			An2
	.byte	W04
song061_12_8:
	.byte	W02
	.byte		N04	, Ds5, v100
	.byte	W02
	.byte		N12	, En5
	.byte	W10
	.byte		N06	, Cs5, v092
	.byte	W12
	.byte			Gs4, v080
	.byte	W12
	.byte			Cs5, v092
	.byte	W06
	.byte		N12	, Gs4, v080
	.byte	W12
	.byte		N06	, Fs4, v076
	.byte	W06
	.byte		N12	, Cs4
	.byte	W18
	.byte		N06	, Fs4
	.byte	W12
	.byte			An4, v084
	.byte	W04
	.byte	PEND
song061_12_9:
	.byte	W02
	.byte		N04	, Gs4, v088
	.byte	W04
	.byte			An4, v052
	.byte	W04
	.byte			Gs4, v056
	.byte	W04
	.byte			An4, v064
	.byte	W04
	.byte			Gs4, v072
	.byte	W04
	.byte			An4, v084
	.byte	W04
	.byte		N06	, Gs4, v096
	.byte	W12
	.byte		N04	, En5, v092
	.byte	W04
	.byte			Fn5, v052
	.byte	W04
	.byte			En5, v060
	.byte	W04
	.byte			Fn5, v068
	.byte	W04
	.byte			En5, v076
	.byte	W04
	.byte			Fn5, v088
	.byte	W04
	.byte		N06	, En5, v096
	.byte	W06
	.byte			Bn4, v084
	.byte	W06
	.byte			Cs5
	.byte	W06
	.byte			Gs4, v080
	.byte	W06
	.byte			Fs4, v076
	.byte	W06
	.byte			Cs4, v072
	.byte	W04
	.byte	PEND
	.byte	W02
	.byte		N18	, Fs4
	.byte	W18
	.byte			Fs5, v080
	.byte	W18
	.byte			Bn5, v084
	.byte	W18
	.byte			Bn4, v072
	.byte	W18
	.byte		N12	, Fs5, v080
	.byte	W12
	.byte		N06	, Bn5, v084
	.byte	W10
	.byte	W02
	.byte			Cs5
	.byte	W12
	.byte		N12	, Fs5
	.byte	W18
	.byte		N12	
	.byte	W18
	.byte			Gs5
	.byte	W18
	.byte			Gs5, v096
	.byte	W18
	.byte			Cs6, v100
	.byte	W10
song061_12_1:
	.byte	W01
	.byte		N21	, Fs5, v084
	.byte	W21
	.byte			Fn5
	.byte	W19
	.byte		N40	, Cs5
	.byte	W48
	.byte		N04	
	.byte	W03
	.byte		N06	, Ds5
	.byte	W04
	.byte	PEND
song061_12_2:
	.byte	W01
	.byte		N21	, En5, v084
	.byte	W21
	.byte		N04	, Gn5
	.byte	W03
	.byte		N19	, Gs5
	.byte	W19
	.byte		N40	, Fs5
	.byte	W44
	.byte	W01
	.byte		N05	, Cs5
	.byte	W03
	.byte			Fn5
	.byte	W04
	.byte	PEND
song061_12_3:
	.byte	W01
	.byte		N19	, Fs5, v084
	.byte	W19
	.byte		N24	, En5
	.byte	W21
	.byte		N42	, Cs5
	.byte	W44
	.byte	W02
	.byte		N05	
	.byte	W04
	.byte		N06	, Ds5
	.byte	W05
	.byte	PEND
song061_12_4:
	.byte	W01
	.byte		N19	, En5, v084
	.byte	W19
	.byte		N06	, Dn5
	.byte	W05
	.byte		N18	, Ds5
	.byte	W19
	.byte		N44	, Bn4
	.byte	W52
	.byte	PEND
	.byte	PATT	
		.word	song061_12_1
song061_12_5:
	.byte	W01
	.byte		N21	, En5, v084
	.byte	W21
	.byte		N04	, Gn5
	.byte	W03
	.byte		N19	, Gs5
	.byte	W19
	.byte		N48	, Fs5
	.byte	W52
	.byte	PEND
song061_12_6:
	.byte	W01
	.byte		N42	, Gs5, v084
	.byte	W42
	.byte	W01
	.byte		N03	, An5
	.byte	W01
	.byte		N05	, As5
	.byte	W05
	.byte		N24	, Bn5
	.byte	W23
	.byte		N18	, An5
	.byte	W17
	.byte		TIE	, Gs5
	.byte	W06
	.byte	PEND
	.byte	W92
	.byte	W02
	.byte		EOT	
	.byte	W02
	.byte		N04	, Ds4
	.byte	W02
	.byte		N12	, En4
	.byte	W10
	.byte		N06	, Cs4, v076
	.byte	W12
	.byte			Gs3, v064
	.byte	W12
	.byte			Cs4, v084
	.byte	W06
	.byte		N12	, Gs3, v076
	.byte	W12
	.byte		N06	, Fs3, v064
	.byte	W06
	.byte		N12	, Cs3, v076
	.byte	W18
	.byte		N06	, Fs3
	.byte	W12
	.byte			An3, v084
	.byte	W06
	.byte		N04	, Gs3, v088
	.byte	W04
	.byte			An3, v052
	.byte	W04
	.byte			Gs3, v056
	.byte	W04
	.byte			An3, v064
	.byte	W04
	.byte			Gs3, v072
	.byte	W04
	.byte			An3, v084
	.byte	W04
	.byte		N06	, Gs3, v088
	.byte	W12
	.byte		N04	, En4
	.byte	W04
	.byte			Fn4, v052
	.byte	W04
	.byte			En4, v060
	.byte	W04
	.byte			Fn4, v068
	.byte	W04
	.byte			En4, v076
	.byte	W04
	.byte			Fn4, v088
	.byte	W04
	.byte		N06	, En4
	.byte	W06
	.byte			Bn3, v084
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Gs3, v080
	.byte	W06
	.byte			Fs3, v076
	.byte	W06
	.byte			Cs3, v072
	.byte	W06
	.byte		N18	, Fs3
	.byte	W18
	.byte			Fs4, v080
	.byte	W18
	.byte			Bn4, v084
	.byte	W18
	.byte			Bn3, v072
	.byte	W18
	.byte		N12	, Fs4, v080
	.byte	W12
	.byte		N06	, Bn4, v084
	.byte	W12
	.byte			Cs4
	.byte	W12
	.byte		N12	, Fs4
	.byte	W18
	.byte		N12	
	.byte	W18
	.byte			Gs4
	.byte	W18
	.byte			Gs4, v088
	.byte	W18
	.byte			Cs5
	.byte	W12
	.byte	W01
	.byte		N21	, Fs5, v100
	.byte	W21
	.byte			Fn5
	.byte	W19
	.byte		N40	, Cs5
	.byte	W48
	.byte		N04	, Cs5, v084
	.byte	W03
	.byte		N06	, Ds5
	.byte	W04
	.byte	PATT	
		.word	song061_12_2
	.byte	PATT	
		.word	song061_12_3
	.byte	PATT	
		.word	song061_12_4
	.byte	PATT	
		.word	song061_12_1
	.byte	PATT	
		.word	song061_12_5
	.byte	PATT	
		.word	song061_12_6
	.byte	W92
	.byte	W02
	.byte		EOT	, Gs5
	.byte	W02
	.byte	W01
	.byte		N21	, Gs5, v084
	.byte	W21
	.byte		N19	, Fs5
	.byte	W18
	.byte		N40	, Cs5
	.byte	W48
	.byte	W01
	.byte		N04	
	.byte	W03
	.byte		N06	, Ds5
	.byte	W04
	.byte	W01
	.byte		N21	, En5
	.byte	W21
	.byte		N04	, Gn5
	.byte	W03
	.byte		N18	, Gs5
	.byte	W16
	.byte		N48	, Fs5
	.byte	W54
	.byte	W01
	.byte	W01
	.byte		N21	, Gs5
	.byte	W21
	.byte		N16	, Fs5
	.byte	W18
	.byte		N40	, Cs5
	.byte	W48
	.byte	W01
	.byte		N04	
	.byte	W03
	.byte		N06	, Ds5
	.byte	W04
	.byte	W01
	.byte		N21	, En5
	.byte	W21
	.byte		N04	, Dn5
	.byte	W03
	.byte		N16	, Ds5
	.byte	W15
	.byte		N48	, Bn4
	.byte	W56
song061_12_7:
	.byte	W06
	.byte		N05	, Cs5, v084
	.byte	W06
	.byte			Bn4
	.byte	W06
	.byte			Gs4
	.byte	W06
	.byte			An4
	.byte	W06
	.byte			Gs4
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Gs4
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			En4
	.byte	W12
	.byte			Gs4
	.byte	W12
	.byte			Bn4
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song061_12_7
	.byte	W06
	.byte		N05	, Cs5, v084
	.byte	W06
	.byte			Bn4
	.byte	W06
	.byte			Gs4
	.byte	W06
	.byte			An4
	.byte	W06
	.byte			Gs4
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Gs4
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			En4
	.byte	W12
	.byte			Bn4
	.byte	W17
	.byte		N04	, Cn5
	.byte	W01
	.byte	W03
	.byte			Ds5, v068
	.byte	W04
	.byte			Gs5
	.byte	W04
	.byte			Cn6
	.byte	W04
	.byte			Gs5
	.byte	W04
	.byte			Ds5
	.byte	W04
	.byte			Gs5
	.byte	W04
	.byte			Ds5
	.byte	W04
	.byte			Cn5
	.byte	W04
	.byte			Ds5
	.byte	W04
	.byte			Cn5
	.byte	W04
	.byte			Gs4
	.byte	W04
	.byte			Cn5
	.byte	W04
	.byte			Gs4
	.byte	W04
	.byte			Ds4
	.byte	W04
	.byte			Gs4
	.byte	W04
	.byte			Cn5
	.byte	W04
	.byte			Ds5
	.byte	W04
	.byte			Gn5
	.byte	W04
	.byte			Gs5
	.byte	W04
	.byte			Ds5
	.byte	W04
	.byte			Gs5
	.byte	W04
	.byte			Cn6
	.byte	W04
	.byte		N05	, Ds6
	.byte	W04
	.byte			Dn6
	.byte	W01
	.byte	W03
	.byte		N04	, Gn5
	.byte	W04
	.byte			Bn5
	.byte	W04
	.byte			Gn5
	.byte	W04
	.byte			Dn5
	.byte	W04
	.byte			Gn5
	.byte	W04
	.byte			Dn5
	.byte	W04
	.byte			Bn4
	.byte	W04
	.byte			Dn5
	.byte	W04
	.byte			Bn4
	.byte	W04
	.byte			Gn4
	.byte	W04
	.byte			Bn4
	.byte	W04
	.byte			Gn4
	.byte	W04
	.byte			Dn4
	.byte	W04
	.byte			Gn4
	.byte	W04
	.byte			Bn4
	.byte	W04
	.byte			Dn5
	.byte	W04
	.byte			Fs5
	.byte	W04
	.byte			Gn5
	.byte	W04
	.byte			Dn5
	.byte	W04
	.byte			Gn5
	.byte	W04
	.byte			Bn5
	.byte	W04
	.byte			Dn6
	.byte	W09
	.byte		N05	, Fs6, v076
	.byte	W06
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte		N04	, Gs2, v120
	.byte	W04
	.byte			An2
	.byte	W04
	.byte			Gs2, v068
	.byte	W04
	.byte			An2, v044
	.byte	W04
	.byte			Gs2, v040
	.byte	W04
	.byte			An2, v044
	.byte	W04
	.byte			Gs2, v048
	.byte	W04
	.byte			An2, v052
	.byte	W04
	.byte			Gs2, v060
	.byte	W04
	.byte			An2, v064
	.byte	W04
	.byte			Gs2, v072
	.byte	W04
	.byte			An2, v080
	.byte	W04
	.byte			Gs2, v088
	.byte	W04
	.byte			An2, v092
	.byte	W04
	.byte			Gs2, v100
	.byte	W04
	.byte			An2, v112
	.byte	W04
	.byte			Gs2
	.byte	W04
	.byte			An2
	.byte	W04
	.byte	PATT	
		.word	song061_12_8
	.byte	GOTO	
		.word	song061_12_9
	.byte	PATT	
		.word	song061_12_9
	.byte	W02
	.byte	FINE

	@********************** Track  13 **********************@

	.global song061_13
song061_13:	@ 0x0829C330
	.byte	KEYSH	, 0
	.byte	VOICE	, 5
	.byte	PAN	, c_v-54
	.byte	VOL	, v042
	.byte	W24
	.byte		N06	, Gs3, v116
	.byte	W12
	.byte			Gs3, v076
	.byte	W12
	.byte			Cs4, v116
	.byte	W12
	.byte			Cs4, v096
	.byte	W12
	.byte			Cs4, v076
	.byte	W12
	.byte			Cs4, v064
	.byte	W12
	.byte	W12
	.byte			Gs3, v116
	.byte	W12
	.byte			Gs3, v076
	.byte	W12
	.byte			Bn3, v116
	.byte	W12
	.byte			Bn3, v096
	.byte	W12
	.byte			Bn3, v076
	.byte	W12
	.byte			Bn3, v064
	.byte	W13
	.byte		N04	, En4, v080
	.byte	W05
	.byte			An3
	.byte	W04
	.byte			Cs4
	.byte	W02
	.byte	W02
	.byte			An3
	.byte	W04
	.byte			En3
	.byte	W04
	.byte			An3
	.byte	W04
	.byte			En3
	.byte	W04
	.byte			Cs3
	.byte	W04
	.byte			En3
	.byte	W04
	.byte			Cs3
	.byte	W04
	.byte			An2
	.byte	W04
	.byte			Cs3
	.byte	W04
	.byte			An2
	.byte	W04
	.byte			En2
	.byte	W04
	.byte			An2
	.byte	W04
	.byte			En2
	.byte	W04
	.byte			An1
	.byte	W04
	.byte			An2
	.byte	W04
	.byte			Cs3
	.byte	W04
	.byte			En3
	.byte	W04
	.byte			Gs3
	.byte	W04
	.byte			An3
	.byte	W04
	.byte			En3
	.byte	W04
	.byte			An3
	.byte	W03
	.byte			Fs4
	.byte	W05
	.byte			Bn3
	.byte	W04
	.byte			Ds4
	.byte	W02
	.byte	W02
	.byte			Bn3
	.byte	W04
	.byte			Fs3
	.byte	W04
	.byte			Bn3
	.byte	W04
	.byte			Fs3
	.byte	W04
	.byte			Ds3
	.byte	W04
	.byte			Fs3
	.byte	W04
	.byte			Ds3
	.byte	W04
	.byte			Bn2
	.byte	W04
	.byte			Ds3
	.byte	W04
	.byte			Bn2
	.byte	W04
	.byte			Fs2
	.byte	W04
	.byte			Bn2
	.byte	W04
	.byte			Fs2
	.byte	W04
	.byte			Bn1
	.byte	W04
	.byte			Bn2
	.byte	W04
	.byte			Ds3
	.byte	W04
	.byte			Fs3
	.byte	W04
	.byte			As3
	.byte	W04
	.byte			Bn3
	.byte	W04
	.byte			Fs3
	.byte	W04
	.byte			Bn3
	.byte	W04
	.byte			Ds4
	.byte	W04
	.byte			Fs4
	.byte	W06
	.byte		N06	, Fs4, v072
	.byte	W12
	.byte			Fs4, v080
	.byte	W12
	.byte			Fs4, v084
	.byte	W12
	.byte			Fs4, v060
	.byte	W12
	.byte		N04	, Gs3, v092
	.byte	W06
	.byte			Cs4, v100
	.byte	W06
	.byte			Fs4, v120
	.byte	W06
	.byte			Bn4
	.byte	W06
	.byte			Cs4, v100
	.byte	W04
	.byte			Fs4, v112
	.byte	W04
	.byte			Bn4, v120
	.byte	W04
	.byte			En5
	.byte	W04
	.byte			Fs5
	.byte	W04
	.byte		N05	, Bn5
	.byte	W04
song061_13_4:
	.byte	PAN	, c_v+56
	.byte	W05
	.byte		N04	, Ds4, v100
	.byte	W02
	.byte		N12	, En4
	.byte	W10
	.byte		N06	, Cs4, v084
	.byte	W12
	.byte			Gs3, v076
	.byte	W12
	.byte			Cs4, v096
	.byte	W06
	.byte		N12	, Gs3, v084
	.byte	W12
	.byte		N06	, Fs3, v076
	.byte	W06
	.byte		N12	, Cs3, v084
	.byte	W18
	.byte		N06	, Fs3
	.byte	W12
	.byte			An3, v096
	.byte	W01
	.byte	PEND
song061_13_5:
	.byte	W05
	.byte		N04	, Gs3, v100
	.byte	W04
	.byte			An3, v064
	.byte	W04
	.byte			Gs3, v068
	.byte	W04
	.byte			An3, v076
	.byte	W04
	.byte			Gs3, v084
	.byte	W04
	.byte			An3, v096
	.byte	W04
	.byte		N06	, Gs3, v100
	.byte	W12
	.byte		N04	, En4
	.byte	W04
	.byte			Fn4, v064
	.byte	W04
	.byte			En4, v068
	.byte	W04
	.byte			Fn4, v080
	.byte	W04
	.byte			En4, v088
	.byte	W04
	.byte			Fn4, v096
	.byte	W04
	.byte		N06	, En4, v100
	.byte	W06
	.byte			Bn3, v096
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Gs3, v092
	.byte	W06
	.byte			Fs3, v084
	.byte	W06
	.byte			Cs3, v080
	.byte	W01
	.byte	W05
	.byte		N11	, Fs3
	.byte	W19
	.byte			Fs4, v092
	.byte	W18
	.byte			Bn4, v096
	.byte	W17
	.byte		N18	, Bn3, v080
	.byte	W18
	.byte		N12	, Fs4, v092
	.byte	W12
	.byte		N06	, Bn4, v096
	.byte	W07
	.byte	W05
	.byte			Cs4
	.byte	W12
	.byte		N12	, Fs4
	.byte	W18
	.byte		N12	
	.byte	W18
	.byte			Gs4
	.byte	W18
	.byte			Gs4, v100
	.byte	W18
	.byte		N08	, Cs5
	.byte	W07
song061_13_1:
	.byte	W03
	.byte		N21	, Cs5, v084
	.byte	W21
	.byte			Cn5
	.byte	W19
	.byte		N40	, Gs4
	.byte	W48
	.byte		N04	
	.byte	W03
	.byte		N06	, As4
	.byte	W02
	.byte	PEND
	.byte	W03
	.byte		N21	, Bn4
	.byte	W21
	.byte		N04	, Ds5
	.byte	W03
	.byte		N19	, En5
	.byte	W19
	.byte		N40	, Ds5
	.byte	W44
	.byte	W01
	.byte		N05	, Gs4
	.byte	W03
	.byte			Cn5
	.byte	W02
	.byte	W03
	.byte		N19	, Cs5
	.byte	W19
	.byte		N24	, Bn4
	.byte	W21
	.byte		N42	, Gs4
	.byte	W44
	.byte	W02
	.byte		N05	
	.byte	W04
	.byte		N06	, As4
	.byte	W03
	.byte	W03
	.byte		N19	, Bn4
	.byte	W19
	.byte		N06	, An4
	.byte	W05
	.byte		N18	, As4
	.byte	W19
	.byte		N44	, Fs4
	.byte	W48
	.byte		N05	, Cn5
	.byte	W02
	.byte	PATT	
		.word	song061_13_1
	.byte	W03
	.byte		N21	, Bn4, v084
	.byte	W21
	.byte		N04	, Ds5
	.byte	W03
	.byte		N19	, En5
	.byte	W19
	.byte		N48	, Ds5
	.byte	W48
	.byte	W02
	.byte	W03
	.byte		N42	, En5
	.byte	W42
	.byte	W01
	.byte		N03	, Fs5
	.byte	W01
	.byte		N05	, Gn5
	.byte	W05
	.byte		N24	, Gs5
	.byte	W23
	.byte		N18	, Fs5
	.byte	W17
	.byte		N52	, En5
	.byte	W04
	.byte	W44
	.byte			Ds5
	.byte	W52
	.byte	W03
	.byte		N04	, Ds4, v104
	.byte	W02
	.byte		N12	, En4
	.byte	W10
	.byte		N06	, Cs4, v096
	.byte	W12
	.byte			Gs3, v084
	.byte	W12
	.byte			Cs4, v104
	.byte	W06
	.byte		N12	, Gs3, v096
	.byte	W12
	.byte		N06	, Fs3, v084
	.byte	W06
	.byte		N12	, Cs3, v096
	.byte	W18
	.byte		N06	, Fs3
	.byte	W12
	.byte			An3, v104
	.byte	W03
	.byte	W03
	.byte		N04	, Gs3, v108
	.byte	W04
	.byte			An3, v072
	.byte	W04
	.byte			Gs3, v076
	.byte	W04
	.byte			An3, v084
	.byte	W04
	.byte			Gs3, v092
	.byte	W04
	.byte			An3, v104
	.byte	W04
	.byte		N06	, Gs3, v108
	.byte	W12
	.byte		N04	, En4
	.byte	W04
	.byte			Fn4, v072
	.byte	W04
	.byte			En4, v080
	.byte	W04
	.byte			Fn4, v088
	.byte	W04
	.byte			En4, v096
	.byte	W04
	.byte			Fn4, v108
	.byte	W04
	.byte		N06	, En4
	.byte	W06
	.byte			Bn3, v104
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Gs3, v100
	.byte	W06
	.byte			Fs3, v096
	.byte	W06
	.byte			Cs3, v092
	.byte	W03
	.byte	W03
	.byte		N18	, Fs3
	.byte	W18
	.byte			Fs4, v100
	.byte	W18
	.byte			Bn4, v104
	.byte	W18
	.byte			Bn3, v092
	.byte	W18
	.byte		N12	, Fs4, v100
	.byte	W12
	.byte		N06	, Bn4, v104
	.byte	W09
	.byte	W03
	.byte			Cs4
	.byte	W12
	.byte		N12	, Fs4
	.byte	W18
	.byte		N12	
	.byte	W18
	.byte			Gs4
	.byte	W18
	.byte			Gs4, v108
	.byte	W17
	.byte			Cs5
	.byte	W10
song061_13_2:
	.byte	W03
	.byte		N21	, Cs5, v096
	.byte	W21
	.byte			Cn5
	.byte	W19
	.byte		N40	, Gs4
	.byte	W48
	.byte		N04	
	.byte	W03
	.byte		N06	, As4
	.byte	W02
	.byte	PEND
	.byte	W03
	.byte		N21	, Bn4
	.byte	W21
	.byte		N04	, Ds5
	.byte	W03
	.byte		N19	, En5
	.byte	W19
	.byte		N40	, Ds5
	.byte	W44
	.byte	W01
	.byte		N05	, Gs4
	.byte	W03
	.byte			Cn5
	.byte	W02
	.byte	W03
	.byte		N19	, Cs5
	.byte	W19
	.byte		N24	, Bn4
	.byte	W21
	.byte		N42	, Gs4
	.byte	W44
	.byte	W02
	.byte		N05	
	.byte	W04
	.byte		N06	, As4
	.byte	W03
	.byte	W03
	.byte		N19	, Bn4
	.byte	W19
	.byte		N06	, An4
	.byte	W05
	.byte		N18	, As4
	.byte	W19
	.byte		N44	, Fs4
	.byte	W48
	.byte		N05	, Cn5
	.byte	W02
	.byte	PATT	
		.word	song061_13_2
	.byte	W03
	.byte		N21	, Bn4, v096
	.byte	W21
	.byte		N04	, Ds5
	.byte	W03
	.byte		N19	, En5
	.byte	W19
	.byte		N48	, Ds5
	.byte	W48
	.byte	W02
	.byte	W03
	.byte		N42	, En5
	.byte	W42
	.byte	W01
	.byte		N03	, Fs5
	.byte	W01
	.byte		N05	, Gn5
	.byte	W05
	.byte		N24	, Gs5
	.byte	W23
	.byte		N18	, Fs5
	.byte	W17
	.byte		N52	, En5
	.byte	W04
	.byte	W44
	.byte			Ds5
	.byte	W52
	.byte	W03
	.byte		N21	, Ds5, v084
	.byte	W21
	.byte			Cs5
	.byte	W19
	.byte		N40	, An4
	.byte	W48
	.byte		N04	, Gs4
	.byte	W03
	.byte		N06	, As4
	.byte	W02
	.byte	W03
	.byte		N21	, Bn4
	.byte	W21
	.byte		N04	, Ds5
	.byte	W03
	.byte		N16	, En5
	.byte	W16
	.byte		N48	, Ds5
	.byte	W48
	.byte	W03
	.byte		N05	, Dn5
	.byte	W02
	.byte	W03
	.byte		N21	, Ds5
	.byte	W21
	.byte		N19	, Cs5
	.byte	W19
	.byte		N40	, Gs4
	.byte	W48
	.byte		N04	
	.byte	W03
	.byte		N06	, As4
	.byte	W02
	.byte	W03
	.byte		N21	, Bn4
	.byte	W21
	.byte		N04	, Gn4
	.byte	W03
	.byte		N16	, Gs4
	.byte	W16
	.byte		N48	, Fs4
	.byte	W52
	.byte	W01
song061_13_3:
	.byte	W07
	.byte		N05	, Gs4, v084
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Bn3
	.byte	W12
	.byte			Ds4
	.byte	W12
	.byte			Fs4
	.byte	W05
	.byte	PEND
	.byte	PATT	
		.word	song061_13_3
	.byte	W07
	.byte		N05	, Gs4, v084
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Bn3
	.byte	W12
	.byte			Fs4
	.byte	W17
	.byte	W01
	.byte		N04	, Cn5, v092
	.byte	W04
	.byte			Ds5
	.byte	W04
	.byte			Gs5
	.byte	W04
	.byte			Cn6
	.byte	W04
	.byte			Gs5
	.byte	W04
	.byte			Ds5
	.byte	W04
	.byte			Gs5
	.byte	W04
	.byte			Ds5
	.byte	W04
	.byte			Cn5
	.byte	W04
	.byte			Ds5
	.byte	W04
	.byte			Cn5
	.byte	W04
	.byte			Gs4
	.byte	W04
	.byte			Cn5
	.byte	W04
	.byte			Gs4
	.byte	W04
	.byte			Ds4
	.byte	W04
	.byte			Gs4
	.byte	W04
	.byte			Cn5
	.byte	W04
	.byte			Ds5
	.byte	W04
	.byte			Gn5
	.byte	W04
	.byte			Gs5
	.byte	W04
	.byte			Ds5
	.byte	W04
	.byte			Gs5
	.byte	W04
	.byte			Cn6
	.byte	W04
	.byte			Ds6
	.byte	W03
	.byte	W01
	.byte		N05	, Dn6
	.byte	W05
	.byte		N04	, Gn5
	.byte	W04
	.byte			Bn5
	.byte	W04
	.byte			Gn5
	.byte	W04
	.byte			Dn5
	.byte	W04
	.byte			Gn5
	.byte	W04
	.byte			Dn5
	.byte	W04
	.byte			Bn4
	.byte	W04
	.byte			Dn5
	.byte	W04
	.byte			Bn4
	.byte	W04
	.byte			Gn4
	.byte	W04
	.byte			Bn4
	.byte	W04
	.byte			Gn4
	.byte	W04
	.byte			Dn4
	.byte	W04
	.byte			Gn4
	.byte	W04
	.byte			Bn4
	.byte	W04
	.byte			Dn5
	.byte	W04
	.byte			Fs5
	.byte	W04
	.byte			Gn5
	.byte	W04
	.byte			Dn5
	.byte	W04
	.byte			Gn5
	.byte	W04
	.byte			Bn5
	.byte	W04
	.byte			Dn6
	.byte	W06
	.byte		N05	, Dn6, v076
	.byte	W06
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N04	, Gs3, v092
	.byte	W06
	.byte			Cs4, v100
	.byte	W06
	.byte			Fs4, v120
	.byte	W06
	.byte			Bn4
	.byte	W06
	.byte			Cs4, v100
	.byte	W04
	.byte			Fs4, v112
	.byte	W04
	.byte			Bn4, v120
	.byte	W04
	.byte			En5
	.byte	W04
	.byte			Fs5
	.byte	W04
	.byte		N05	, Bn5
	.byte	W04
	.byte	PATT	
		.word	song061_13_4
	.byte	GOTO	
		.word	song061_13_5
	.byte	W05
	.byte		N04	, Gs3, v100
	.byte	W04
	.byte			An3, v064
	.byte	W04
	.byte			Gs3, v068
	.byte	W04
	.byte			An3, v076
	.byte	W04
	.byte			Gs3, v084
	.byte	W04
	.byte			An3, v096
	.byte	W04
	.byte		N06	, Gs3, v100
	.byte	W12
	.byte		N04	, En4
	.byte	W04
	.byte			Fn4, v064
	.byte	W04
	.byte			En4, v068
	.byte	W04
	.byte			Fn4, v080
	.byte	W04
	.byte			En4, v088
	.byte	W04
	.byte			Fn4, v096
	.byte	W04
	.byte		N06	, En4, v100
	.byte	W06
	.byte			Bn3, v096
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Gs3, v092
	.byte	W06
	.byte			Fs3, v084
	.byte	W06
	.byte	FINE

	.align 2
	.global song061
song061:	@ 0x0829C73C
	.byte	13		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

	.word	voicegroup016		@ voicegroup/tone

	.word	song061_1		@ track
	.word	song061_2		@ track
	.word	song061_3		@ track
	.word	song061_4		@ track
	.word	song061_5		@ track
	.word	song061_6		@ track
	.word	song061_7		@ track
	.word	song061_8		@ track
	.word	song061_9		@ track
	.word	song061_10		@ track
	.word	song061_11		@ track
	.word	song061_12		@ track
	.word	song061_13		@ track

	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song062_1
song062_1:	@ 0x0829C778
	.byte	KEYSH	, 0
	.byte	TEMPO	, 63
	.byte	VOICE	, 1
	.byte	VOL	, v085
	.byte	PAN	, c_v
	.byte	BENDR	, 12
	.byte	BEND	, c_v
	.byte		N96	, An2, v108
	.byte	W96
song062_1_5:
	.byte		N23	, En3, v100
	.byte	W24
	.byte		N48	, Dn3, v104
	.byte	W48
	.byte		N24	, Cs3, v100
	.byte	W24
	.byte	PEND
	.byte		N96	, Dn3, v108
	.byte	W96
song062_1_6:
	.byte		N24	, Fn3, v104
	.byte	W24
	.byte		N11	, En3
	.byte	W12
	.byte		N36	, Dn3, v096
	.byte	W36
	.byte		N24	, An2
	.byte	W24
	.byte	PEND
song062_1_1:
	.byte		N68	, En3, v100
	.byte	W72
	.byte		N24	, Dn3, v096
	.byte	W24
	.byte	PEND
song062_1_2:
	.byte		N24	, Cs3, v100
	.byte	W24
	.byte		N12	, Dn3, v108
	.byte	W12
	.byte		N24	, En3, v100
	.byte	W24
	.byte		N36	, An2, v088
	.byte	W36
	.byte	PEND
song062_1_3:
	.byte		N72	, Dn3, v100
	.byte	W72
	.byte		N23	, En3
	.byte	W24
	.byte	PEND
song062_1_4:
	.byte		N24	, Fn3, v100
	.byte	W24
	.byte		N13	, Gn3, v104
	.byte	W12
	.byte		N24	, En3, v100
	.byte	W24
	.byte		N28	, Dn3, v104
	.byte	W36
	.byte	PEND
	.byte		N92	, Cs3, v100
	.byte	W96
	.byte		N48	, Fs3
	.byte	W48
	.byte		N44	, Fs2, v088
	.byte	W48
	.byte		N48	, En3, v100
	.byte	W48
	.byte			Dn3
	.byte	W48
	.byte			Cs3
	.byte	W48
	.byte			Bn2
	.byte	W48
	.byte	PATT	
		.word	song062_1_1
	.byte	PATT	
		.word	song062_1_2
	.byte	PATT	
		.word	song062_1_3
	.byte	PATT	
		.word	song062_1_4
	.byte		N96	, An2, v108
	.byte	W96
	.byte	PATT	
		.word	song062_1_5
	.byte		N96	, Dn3, v108
	.byte	W96
	.byte	PATT	
		.word	song062_1_6
	.byte	PATT	
		.word	song062_1_1
	.byte	PATT	
		.word	song062_1_2
	.byte	PATT	
		.word	song062_1_3
	.byte	PATT	
		.word	song062_1_4
	.byte		N96	, An2, v108
	.byte	W96
	.byte	PATT	
		.word	song062_1_5
	.byte		N96	, Dn3, v108
	.byte	W96
	.byte		N24	, Fn3, v104
	.byte	W24
	.byte		N11	, En3
	.byte	W12
	.byte		N36	, Dn3, v096
	.byte	W36
	.byte		N23	, An2
	.byte	W24
	.byte		N92	, An2, v100
	.byte	W96
	.byte		N24	, En3
	.byte	W24
	.byte		N12	, Dn3, v108
	.byte	W12
	.byte		N24	, Cs3, v100
	.byte	W24
	.byte		N36	, An2, v088
	.byte	W36
	.byte	PATT	
		.word	song062_1_3
	.byte	PATT	
		.word	song062_1_4
	.byte	VOL	, v085
	.byte	PAN	, c_v
	.byte	BEND	, c_v
	.byte		N96	, An2, v108
	.byte	W96
	.byte	GOTO	
		.word	song062_1_5
	.byte	PATT	
		.word	song062_1_5
	.byte	FINE

	@********************** Track  2 **********************@

	.global song062_2
song062_2:	@ 0x0829C879
	.byte	KEYSH	, 0
	.byte	VOICE	, 7
	.byte	PAN	, c_v
	.byte	VOL	, v069
	.byte	BEND	, c_v
	.byte		N09	, Fn4, v120
	.byte	W12
	.byte			Fn4, v080
	.byte	W12
	.byte			Fn4, v048
	.byte	W12
	.byte			Fn4, v108
	.byte	W12
	.byte			Dn4, v068
	.byte	W11
	.byte		N12	, Ds4, v100
	.byte	W13
	.byte		N11	, Fn4, v112
	.byte	W12
	.byte		N09	, As3, v120
	.byte	W12
song062_2_5:
	.byte		N09	, As3, v068
	.byte	W12
	.byte			As3, v060
	.byte	W12
	.byte			As3, v040
	.byte	W36
	.byte			Gn3, v120
	.byte	W12
	.byte			An3, v060
	.byte	W12
	.byte			As3, v120
	.byte	W12
	.byte			Fs3, v088
	.byte	W12
	.byte			Fs3, v060
	.byte	W12
	.byte			Fs3, v040
	.byte	W12
	.byte			Fs3, v120
	.byte	W12
	.byte			As3, v060
	.byte	W12
	.byte		N11	, Cn4, v112
	.byte	W12
	.byte			Cs4, v120
	.byte	W12
	.byte		N09	, Fn4
	.byte	W12
	.byte			Fn4, v100
	.byte	W12
	.byte			Fs4
	.byte	W12
	.byte			Fn4, v092
	.byte	W12
	.byte			Ds4, v120
	.byte	W12
	.byte			Ds4, v088
	.byte	W12
	.byte			Ds4, v060
	.byte	W12
	.byte			Ds4, v040
	.byte	W24
	.byte			Fn4, v120
	.byte	W11
	.byte			Fn4, v080
	.byte	W12
	.byte			Fn4, v048
	.byte	W13
	.byte			Fn4, v108
	.byte	W11
	.byte			Dn4, v068
	.byte	W12
	.byte		N12	, Ds4, v100
	.byte	W12
	.byte		N11	, Fn4, v112
	.byte	W13
	.byte		N09	, As3, v120
	.byte	W11
	.byte			As3, v068
	.byte	W01
	.byte	W11
	.byte			As3, v060
	.byte	W12
	.byte			As3, v040
	.byte	W36
	.byte	W01
	.byte			Gn3, v120
	.byte	W11
	.byte			An3, v060
	.byte	W13
	.byte			As3, v120
	.byte	W11
	.byte			Fs3, v088
	.byte	W01
	.byte	W11
	.byte			Fs3, v060
	.byte	W12
	.byte			Fs3, v040
	.byte	W13
	.byte			Fs3, v120
	.byte	W11
	.byte			As3, v060
	.byte	W13
	.byte		N11	, Cn4, v112
	.byte	W11
	.byte			Cs4, v120
	.byte	W13
	.byte		N09	, Fn4
	.byte	W11
	.byte			Fn4, v100
	.byte	W01
	.byte	W11
	.byte			Fs4
	.byte	W12
	.byte			Fn4, v092
	.byte	W13
	.byte			Ds4, v120
	.byte	W11
	.byte			Ds4, v088
	.byte	W12
	.byte			Ds4, v060
	.byte	W12
	.byte			Ds4, v040
	.byte	W24
	.byte	W01
	.byte	PAN	, c_v+36
	.byte		N07	, Bn3, v076
	.byte	W12
	.byte			Gn3, v056
	.byte	W12
	.byte			An3, v064
	.byte	W12
	.byte			Gn3, v056
	.byte	W12
	.byte			Bn3, v076
	.byte	W12
	.byte			Gn3, v056
	.byte	W12
	.byte			An3, v064
	.byte	W12
	.byte			Gn3, v056
	.byte	W12
	.byte			Bn3, v076
	.byte	W12
	.byte			Gn3, v056
	.byte	W12
	.byte			An3, v064
	.byte	W12
	.byte			Gn3, v056
	.byte	W12
	.byte			Bn3, v076
	.byte	W12
	.byte			Gn3, v056
	.byte	W12
	.byte			An3, v064
	.byte	W12
	.byte			Gn3, v056
	.byte	W12
	.byte			Cn4, v076
	.byte	W12
	.byte			Gn3, v056
	.byte	W12
	.byte			An3, v064
	.byte	W12
	.byte			Gn3, v056
	.byte	W12
	.byte			Cn4, v076
	.byte	W12
	.byte			Gn3, v056
	.byte	W12
	.byte			An3, v064
	.byte	W12
	.byte			Gn3, v056
	.byte	W12
	.byte			Fn4, v076
	.byte	W12
	.byte			Fn3, v056
	.byte	W12
	.byte			Gn3, v064
	.byte	W12
	.byte			Fn3, v056
	.byte	W12
	.byte			Fn4, v076
	.byte	W12
	.byte			Fn3, v056
	.byte	W12
	.byte			Gn3, v064
	.byte	W12
	.byte			Fn3, v056
	.byte	W12
	.byte			An3, v076
	.byte	W12
	.byte			Dn3, v056
	.byte	W12
	.byte			Fn3, v064
	.byte	W12
	.byte			Dn3, v056
	.byte	W12
	.byte			An3, v076
	.byte	W12
	.byte			Dn3, v056
	.byte	W12
	.byte			Fn3, v064
	.byte	W12
	.byte			Dn3, v056
	.byte	W12
	.byte			As3, v076
	.byte	W12
	.byte			Dn3, v056
	.byte	W12
	.byte			Fn3, v064
	.byte	W12
	.byte			Dn3, v056
	.byte	W12
	.byte			As3, v076
	.byte	W12
	.byte			Fn3, v056
	.byte	W12
	.byte			Gn3, v064
	.byte	W12
	.byte			Fn3, v056
	.byte	W12
	.byte			Dn4, v076
	.byte	W12
	.byte			Fn3, v056
	.byte	W12
	.byte			Gn3, v064
	.byte	W12
	.byte			Fn3, v056
	.byte	W12
	.byte			Ds4, v076
	.byte	W12
	.byte			Fs3, v056
	.byte	W12
	.byte			Gs3, v064
	.byte	W12
	.byte			Fs3, v056
	.byte	W12
	.byte			Ds4, v076
	.byte	W12
	.byte			Fs3, v056
	.byte	W12
	.byte			Gs3, v064
	.byte	W12
	.byte			Fs3, v056
	.byte	W12
	.byte			Ds4, v076
	.byte	W12
	.byte			Fs3, v056
	.byte	W12
	.byte			Gs3, v064
	.byte	W12
	.byte			Fs3, v056
	.byte	W12
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PAN	, c_v
	.byte		N09	, Fn4, v096
	.byte	W11
	.byte			Fn4, v068
	.byte	W12
	.byte			Fn4, v040
	.byte	W13
	.byte			Fn4, v096
	.byte	W11
	.byte			Dn4, v060
	.byte	W12
	.byte		N12	, Ds4, v088
	.byte	W12
	.byte		N11	, Fn4, v096
	.byte	W13
	.byte		N09	, As3, v108
	.byte	W11
	.byte			As3, v068
	.byte	W01
	.byte	W11
	.byte			As3, v060
	.byte	W12
	.byte			As3, v040
	.byte	W36
	.byte	W01
	.byte			Gn3, v108
	.byte	W11
	.byte			An3, v060
	.byte	W13
	.byte			As3, v108
	.byte	W11
	.byte			As3, v088
	.byte	W01
	.byte	W11
	.byte			As3, v060
	.byte	W12
	.byte			As3, v040
	.byte	W13
	.byte			As3, v108
	.byte	W11
	.byte			As3, v060
	.byte	W13
	.byte		N11	, Cn4, v108
	.byte	W11
	.byte			Cs4, v096
	.byte	W13
	.byte		N09	, Fn4
	.byte	W11
	.byte			Fn4, v092
	.byte	W01
	.byte	W11
	.byte			Fs4
	.byte	W12
	.byte			Fn4, v080
	.byte	W13
	.byte			Ds4, v096
	.byte	W11
	.byte			Ds4, v080
	.byte	W12
	.byte			Ds4, v060
	.byte	W12
	.byte			Ds4, v040
	.byte	W24
	.byte	W01
song062_2_1:
	.byte		N09	, Dn4, v120
	.byte	W11
	.byte			Dn4, v088
	.byte	W12
	.byte			Dn4, v060
	.byte	W12
	.byte			Dn4, v040
	.byte	W12
	.byte			Dn4, v032
	.byte	W12
	.byte			Dn4, v024
	.byte	W12
	.byte		N09	
	.byte	W12
	.byte			Dn4, v020
	.byte	W13
	.byte	PEND
song062_2_2:
	.byte		N09	, As3, v120
	.byte	W11
	.byte			As3, v088
	.byte	W12
	.byte			As3, v060
	.byte	W12
	.byte			As3, v040
	.byte	W12
	.byte			As3, v032
	.byte	W12
	.byte			As3, v024
	.byte	W12
	.byte		N09	
	.byte	W12
	.byte			As3, v020
	.byte	W13
	.byte	PEND
song062_2_3:
	.byte		N09	, Ds4, v120
	.byte	W11
	.byte			Ds4, v088
	.byte	W12
	.byte			Ds4, v060
	.byte	W12
	.byte			Ds4, v040
	.byte	W12
	.byte			Ds4, v032
	.byte	W12
	.byte			Ds4, v024
	.byte	W12
	.byte		N09	
	.byte	W12
	.byte			Ds4, v020
	.byte	W13
	.byte	PEND
song062_2_4:
	.byte		N09	, Fs4, v120
	.byte	W11
	.byte			Fs4, v088
	.byte	W12
	.byte			Fs4, v060
	.byte	W12
	.byte			Fs4, v040
	.byte	W12
	.byte			Fs4, v032
	.byte	W12
	.byte			Fs4, v024
	.byte	W12
	.byte		N09	
	.byte	W12
	.byte			Fs4, v020
	.byte	W13
	.byte	PEND
	.byte	PATT	
		.word	song062_2_1
	.byte	PATT	
		.word	song062_2_2
	.byte	PATT	
		.word	song062_2_3
	.byte	PATT	
		.word	song062_2_4
	.byte	PAN	, c_v
	.byte	VOL	, v069
	.byte		N09	, Fn4, v120
	.byte	W12
	.byte			Fn4, v080
	.byte	W12
	.byte			Fn4, v048
	.byte	W12
	.byte			Fn4, v108
	.byte	W12
	.byte			Dn4, v068
	.byte	W11
	.byte		N12	, Ds4, v100
	.byte	W13
	.byte		N11	, Fn4, v112
	.byte	W12
	.byte		N09	, As3, v120
	.byte	W12
	.byte	GOTO	
		.word	song062_2_5
	.byte		N09	, As3, v068
	.byte	W12
	.byte			As3, v060
	.byte	W12
	.byte			As3, v040
	.byte	W36
	.byte			Gn3, v120
	.byte	W12
	.byte			An3, v060
	.byte	W12
	.byte			As3, v120
	.byte	W09
	.byte	FINE

	@********************** Track  3 **********************@

	.global song062_3
song062_3:	@ 0x0829CB18
	.byte	KEYSH	, 0
	.byte	VOICE	, 6
	.byte	MOD	, 0
	.byte	VOL	, v066
	.byte	PAN	, c_v+36
	.byte	BEND	, c_v
	.byte	W96
song062_3_1:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PAN	, c_v
	.byte	VOL	, v066
	.byte	W48
	.byte	W01
	.byte		N04	, An4, v116
	.byte	W03
	.byte		N20	, As4, v112
	.byte	W20
	.byte		N22	, Gs4, v120
	.byte	W24
	.byte		N03	, Bn4, v112
	.byte	W04
	.byte		N13	, Cn5, v116
	.byte	W14
	.byte		N17	, Gs4, v112
	.byte	W18
	.byte		N24	, Fn4, v120
	.byte	W24
	.byte	W02
	.byte		N23	, Gs4
	.byte	W23
	.byte		N48	, Fn4, v104
	.byte	W11
	.byte	W44
	.byte		N04	, Dn4, v120
	.byte	W04
	.byte		N17	, Ds4
	.byte	W17
	.byte		N16	, Cs4
	.byte	W18
	.byte		N11	, Bn3
	.byte	W13
	.byte	W01
	.byte		N04	, An3, v112
	.byte	W03
	.byte		N14	, As3, v120
	.byte	W14
	.byte		N15	, Gs3, v112
	.byte	W18
	.byte			Fs3, v116
	.byte	W15
	.byte		N03	, Dn3, v108
	.byte	W02
	.byte		N16	, Ds3, v116
	.byte	W17
	.byte		N32	, Cs3
	.byte	W24
	.byte	W02
	.byte	W48
	.byte	W01
	.byte		N04	, Fn3
	.byte	W03
	.byte		N20	, Fs3, v112
	.byte	W20
	.byte		N22	, Ds3, v120
	.byte	W24
	.byte		N03	, Gn3, v112
	.byte	W04
	.byte		N13	, Gs3, v116
	.byte	W14
	.byte		N17	, Ds3, v112
	.byte	W18
	.byte		N24	, Cs4, v120
	.byte	W24
	.byte	W02
	.byte		N23	, Bn3
	.byte	W23
	.byte		N48	, En4, v104
	.byte	W11
	.byte	W44
	.byte		N04	, As3, v120
	.byte	W04
	.byte		N17	, Bn3
	.byte	W17
	.byte		N16	, An3
	.byte	W18
	.byte		N11	, Fs3
	.byte	W13
	.byte	W01
	.byte		N04	, Ds3, v112
	.byte	W03
	.byte		N14	, En3, v120
	.byte	W14
	.byte		N15	, Dn3, v112
	.byte	W18
	.byte			Bn2, v116
	.byte	W15
	.byte		N03	, Fn2, v108
	.byte	W02
	.byte		N16	, Fs2, v116
	.byte	W17
	.byte		N32	, En2
	.byte	W24
	.byte	W02
	.byte		N09	, Fs4, v120
	.byte	W12
	.byte			Fs4, v080
	.byte	W12
	.byte			Fs4, v048
	.byte	W12
	.byte			Fs4, v040
	.byte	W12
	.byte			Ds4, v068
	.byte	W11
	.byte			En4, v100
	.byte	W13
	.byte			Fs4, v112
	.byte	W12
	.byte		N08	, Bn3, v120
	.byte	W12
	.byte		N06	, Bn3, v068
	.byte	W12
	.byte			Bn3, v060
	.byte	W12
	.byte			Bn3, v040
	.byte	W12
	.byte			Bn3, v036
	.byte	W24
	.byte		N09	, Gs3, v120
	.byte	W12
	.byte			As3, v060
	.byte	W12
	.byte			Bn3, v120
	.byte	W12
	.byte		N08	
	.byte	W11
	.byte		N06	, Bn3, v068
	.byte	W12
	.byte			Bn3, v060
	.byte	W12
	.byte			Bn3, v040
	.byte	W13
	.byte		N09	, Bn3, v060
	.byte	W12
	.byte		N11	, Cs4, v112
	.byte	W12
	.byte			Dn4, v120
	.byte	W12
	.byte		N09	, Fs4
	.byte	W12
	.byte			Fs4, v100
	.byte	W12
	.byte			Gn4
	.byte	W12
	.byte			Fs4, v092
	.byte	W12
	.byte		N08	, En4, v120
	.byte	W11
	.byte		N06	, En4, v068
	.byte	W12
	.byte			En4, v060
	.byte	W12
	.byte			En4, v040
	.byte	W12
	.byte			En4, v032
	.byte	W13
	.byte	PAN	, c_v+36
	.byte		N09	, Fs4, v100
	.byte	W12
	.byte			Fs4, v060
	.byte	W12
	.byte			Fs4, v028
	.byte	W12
	.byte			Fs4, v020
	.byte	W12
	.byte			Ds4, v048
	.byte	W11
	.byte			En4, v080
	.byte	W13
	.byte			Fs4, v092
	.byte	W12
	.byte		N08	, Bn3, v100
	.byte	W12
	.byte		N06	, Bn3, v048
	.byte	W12
	.byte			Bn3, v040
	.byte	W12
	.byte			Bn3, v020
	.byte	W12
	.byte			Bn3, v016
	.byte	W24
	.byte		N09	, Gs3, v100
	.byte	W12
	.byte			As3, v040
	.byte	W12
	.byte			Bn3, v100
	.byte	W12
	.byte		N08	, Gn3
	.byte	W11
	.byte		N06	, Gn3, v048
	.byte	W12
	.byte			Gn3, v040
	.byte	W12
	.byte			Gn3, v020
	.byte	W13
	.byte		N09	, Bn3, v040
	.byte	W12
	.byte		N11	, Cs4, v092
	.byte	W12
	.byte			Dn4, v100
	.byte	W12
	.byte		N09	, Fs4
	.byte	W12
	.byte			Fs4, v080
	.byte	W12
	.byte			Gn4
	.byte	W12
	.byte			Fs4, v072
	.byte	W12
	.byte		N08	, En4, v100
	.byte	W11
	.byte		N06	, En4, v048
	.byte	W12
	.byte			En4, v040
	.byte	W12
	.byte			En4, v020
	.byte	W12
	.byte			En4, v012
	.byte	W13
	.byte		N04	, Cn4, v080
	.byte	W02
	.byte		N17	, Cs4, v088
	.byte	W18
	.byte		TIE	, Bn3
	.byte	W04
	.byte	VOL	, v068
	.byte	W09
	.byte		v067
	.byte	W05
	.byte		v066
	.byte	W06
	.byte		v065
	.byte	W04
	.byte		v064
	.byte	W01
	.byte		v063
	.byte	W02
	.byte		v062
	.byte	W03
	.byte		v062
	.byte	W02
	.byte		v061
	.byte	W05
	.byte		v060
	.byte	W01
	.byte		v059
	.byte	W03
	.byte		v058
	.byte	W03
	.byte		v057
	.byte	W01
	.byte		v057
	.byte	W02
	.byte		v056
	.byte	W01
	.byte		v055
	.byte	W05
	.byte		v054
	.byte	W02
	.byte		v053
	.byte	W01
	.byte		v052
	.byte	W01
	.byte		v051
	.byte	W02
	.byte		v050
	.byte	W02
	.byte		v049
	.byte	W02
	.byte		v048
	.byte	W01
	.byte		v047
	.byte	W01
	.byte		v047
	.byte	W01
	.byte		v046
	.byte	W02
	.byte		v045
	.byte	W01
	.byte		v044
	.byte	W01
	.byte		v043
	.byte	W01
	.byte		v042
	.byte	W01
	.byte		v042
	.byte	W01
	.byte		v041
	.byte	W01
	.byte		v040
	.byte	W01
	.byte		v039
	.byte	W01
	.byte		v038
	.byte	W01
	.byte		v038
	.byte	W01
	.byte		v037
	.byte	W03
	.byte		v036
	.byte	W01
	.byte		v035
	.byte	W01
	.byte		v034
	.byte	W01
	.byte		v033
	.byte	W01
	.byte		v033
	.byte	W02
	.byte		v032
	.byte	W01
	.byte		v030
	.byte	W02
	.byte		v029
	.byte	W02
	.byte		v028
	.byte	W01
	.byte		v028
	.byte	W03
	.byte		v027
	.byte	W03
	.byte		v026
	.byte	W04
	.byte		v025
	.byte	W03
	.byte		v024
	.byte	W01
	.byte		v023
	.byte	W02
	.byte		v023
	.byte	W03
	.byte		v022
	.byte	W02
	.byte		v021
	.byte	W02
	.byte		v020
	.byte	W02
	.byte		v019
	.byte	W03
	.byte		v019
	.byte	W03
	.byte		v018
	.byte	W10
	.byte		v017
	.byte	W16
	.byte		v016
	.byte	W03
	.byte		v015
	.byte	W14
	.byte		v070
	.byte	W01
	.byte		EOT	
	.byte		N04	, Fn4, v080
	.byte	W04
	.byte		N14	, Fs4, v084
	.byte	W14
	.byte		TIE	, En4, v092
	.byte	W14
	.byte	VOL	, v069
	.byte	W11
	.byte		v068
	.byte	W04
	.byte		v067
	.byte	W03
	.byte		v066
	.byte	W04
	.byte		v065
	.byte	W03
	.byte		v064
	.byte	W02
	.byte		v063
	.byte	W02
	.byte		v062
	.byte	W01
	.byte		v062
	.byte	W04
	.byte		v061
	.byte	W02
	.byte		v060
	.byte	W02
	.byte		v058
	.byte	W05
	.byte		v057
	.byte	W05
	.byte		v052
	.byte	W01
	.byte		v049
	.byte	W04
	.byte		v044
	.byte	W01
	.byte		v047
	.byte	W03
	.byte		v041
	.byte	W05
	.byte		v033
	.byte	W02
	.byte	W03
	.byte		v033
	.byte	W02
	.byte		v032
	.byte	W01
	.byte		v031
	.byte	W04
	.byte		v030
	.byte	W01
	.byte		v029
	.byte	W04
	.byte		v028
	.byte	W04
	.byte		v028
	.byte	W02
	.byte		v027
	.byte	W01
	.byte		v026
	.byte	W01
	.byte		v025
	.byte	W05
	.byte		v024
	.byte	W01
	.byte		v023
	.byte	W01
	.byte		v023
	.byte	W02
	.byte		v022
	.byte	W01
	.byte		v021
	.byte	W03
	.byte		v020
	.byte	W01
	.byte		v019
	.byte	W02
	.byte		v019
	.byte	W01
	.byte		v018
	.byte	W02
	.byte		v016
	.byte	W02
	.byte		EOT	
	.byte	VOL	, v014
	.byte	W01
	.byte		v070
	.byte	W01
	.byte		N05	, Cn4, v076
	.byte	W04
	.byte		N15	, Cs4, v084
	.byte	W15
	.byte		N16	, An3, v096
	.byte	W17
	.byte		N13	, Fs3, v108
	.byte	W14
	.byte		N03	, Cn4, v052
	.byte	W03
	.byte		N15	, Cs4, v100
	.byte	W16
	.byte		TIE	, Bn3, v080
	.byte	W04
	.byte	VOL	, v071
	.byte	W01
	.byte		v069
	.byte	W03
	.byte		v068
	.byte	W16
	.byte		v067
	.byte	W03
	.byte		v066
	.byte	W02
	.byte		v066
	.byte	W02
	.byte		v065
	.byte	W03
	.byte		v064
	.byte	W01
	.byte		v063
	.byte	W02
	.byte		v062
	.byte	W08
	.byte		v062
	.byte	W02
	.byte		v061
	.byte	W06
	.byte		v059
	.byte	W02
	.byte		v058
	.byte	W04
	.byte		v057
	.byte	W02
	.byte		v057
	.byte	W03
	.byte		v054
	.byte	W03
	.byte		v053
	.byte	W01
	.byte		v052
	.byte	W01
	.byte		v052
	.byte	W03
	.byte		v051
	.byte	W01
	.byte		v050
	.byte	W03
	.byte		v049
	.byte	W01
	.byte	W01
	.byte		v048
	.byte	W03
	.byte		v047
	.byte	W01
	.byte		v047
	.byte	W01
	.byte		v046
	.byte	W04
	.byte		v045
	.byte	W03
	.byte		v044
	.byte	W02
	.byte		v043
	.byte	W05
	.byte		v042
	.byte	W03
	.byte		v042
	.byte	W02
	.byte		v041
	.byte	W10
	.byte		v040
	.byte	W04
	.byte		v039
	.byte	W02
	.byte		v038
	.byte	W02
	.byte		v038
	.byte	W01
	.byte		v037
	.byte	W02
	.byte		v036
	.byte	W02
	.byte		v035
	.byte	W02
	.byte		v034
	.byte	W01
	.byte		v033
	.byte	W02
	.byte		v033
	.byte	W01
	.byte		v032
	.byte	W06
	.byte		v031
	.byte	W02
	.byte		v030
	.byte	W06
	.byte		v029
	.byte	W01
	.byte		v028
	.byte	W01
	.byte		v028
	.byte	W01
	.byte		v027
	.byte	W01
	.byte		v026
	.byte	W01
	.byte		v025
	.byte	W02
	.byte		v024
	.byte	W02
	.byte		v023
	.byte	W01
	.byte		v023
	.byte	W02
	.byte		v022
	.byte	W02
	.byte		v021
	.byte	W02
	.byte		v020
	.byte	W03
	.byte		v019
	.byte	W02
	.byte		v019
	.byte	W03
	.byte		v018
	.byte	W02
	.byte		EOT	
	.byte	W01
	.byte		N05	, Fn4, v084
	.byte	W01
	.byte	VOL	, v071
	.byte	W03
	.byte		N12	, Fs4, v072
	.byte	W15
	.byte		TIE	, En4, v080
	.byte	W06
	.byte	VOL	, v068
	.byte	W09
	.byte		v067
	.byte	W05
	.byte		v066
	.byte	W06
	.byte		v065
	.byte	W04
	.byte		v064
	.byte	W01
	.byte		v063
	.byte	W02
	.byte		v062
	.byte	W03
	.byte		v062
	.byte	W02
	.byte		v061
	.byte	W05
	.byte		v059
	.byte	W04
	.byte		v058
	.byte	W03
	.byte		v057
	.byte	W01
	.byte		v057
	.byte	W01
	.byte		v056
	.byte	W01
	.byte		v055
	.byte	W06
	.byte		v054
	.byte	W01
	.byte		v053
	.byte	W01
	.byte		v052
	.byte	W01
	.byte		v052
	.byte	W01
	.byte		v051
	.byte	W02
	.byte		v050
	.byte	W01
	.byte		v049
	.byte	W03
	.byte		v048
	.byte	W01
	.byte		v047
	.byte	W01
	.byte		v047
	.byte	W01
	.byte		v046
	.byte	W02
	.byte		v044
	.byte	W01
	.byte		v043
	.byte	W01
	.byte		v042
	.byte	W01
	.byte		v042
	.byte	W01
	.byte		v041
	.byte	W01
	.byte		v040
	.byte	W02
	.byte		v039
	.byte	W01
	.byte		v038
	.byte	W01
	.byte		v038
	.byte	W01
	.byte		v037
	.byte	W02
	.byte		v036
	.byte	W01
	.byte		v035
	.byte	W01
	.byte		v034
	.byte	W01
	.byte		v033
	.byte	W02
	.byte		v033
	.byte	W01
	.byte		v032
	.byte	W01
	.byte		v031
	.byte	W01
	.byte		v030
	.byte	W01
	.byte		v029
	.byte	W02
	.byte		v028
	.byte	W02
	.byte		v028
	.byte	W03
	.byte		v027
	.byte	W02
	.byte		v026
	.byte	W04
	.byte		v025
	.byte	W03
	.byte		v024
	.byte	W01
	.byte		v023
	.byte	W02
	.byte		v023
	.byte	W04
	.byte		v022
	.byte	W02
	.byte		v021
	.byte	W01
	.byte		v020
	.byte	W03
	.byte		v019
	.byte	W02
	.byte		v019
	.byte	W04
	.byte		v018
	.byte	W09
	.byte		v017
	.byte	W17
	.byte		v016
	.byte	W02
	.byte		v015
	.byte	W08
	.byte		EOT	
	.byte	W08
	.byte	MOD	, 0
	.byte	VOL	, v066
	.byte	PAN	, c_v+36
	.byte	W96
	.byte	GOTO	
		.word	song062_3_1
	.byte	FINE

	@********************** Track  4 **********************@

	.global song062_4
song062_4:	@ 0x0829CEBC
	.byte	KEYSH	, 0
	.byte	VOICE	, 3
	.byte	VOL	, v057
	.byte	PAN	, c_v
	.byte		N96	, Bn1, v104
	.byte	W96
song062_4_4:
	.byte		N96	, Gs1, v100
	.byte	W96
song062_4_2:
	.byte		N48	, Gn2, v104
	.byte	W48
	.byte			Gn1, v112
	.byte	W48
	.byte	PEND
song062_4_1:
	.byte		N48	, An2, v104
	.byte	W48
	.byte			An1
	.byte	W48
	.byte	PEND
	.byte		N96	, Ds2, v076
	.byte	W96
	.byte			Gs1, v100
	.byte	W96
song062_4_3:
	.byte		N48	, Gn1, v104
	.byte	W48
	.byte			En2, v112
	.byte	W48
	.byte	PEND
	.byte	PATT	
		.word	song062_4_1
	.byte		N96	, Gs1, v104
	.byte	W96
	.byte			Fn2, v100
	.byte	W96
	.byte		N48	, Cs2, v104
	.byte	W48
	.byte			Cs1, v112
	.byte	W48
	.byte			Fs2, v104
	.byte	W48
	.byte			Fs1
	.byte	W48
	.byte		N96	, Ds2
	.byte	W96
	.byte			Gs1, v100
	.byte	W96
	.byte			Gn1, v104
	.byte	W96
	.byte		N48	, Gn2
	.byte	W48
	.byte			En2
	.byte	W48
	.byte		N96	, Bn1
	.byte	W96
	.byte			Gs1, v100
	.byte	W96
	.byte	PATT	
		.word	song062_4_2
	.byte	PATT	
		.word	song062_4_1
	.byte		N96	, Ds2, v076
	.byte	W96
	.byte			Gs1, v100
	.byte	W96
	.byte	PATT	
		.word	song062_4_3
	.byte	PATT	
		.word	song062_4_1
	.byte		N96	, Bn1, v100
	.byte	W96
	.byte			An1
	.byte	W96
	.byte			Gn1
	.byte	W96
	.byte			Fs1
	.byte	W96
	.byte			Bn1
	.byte	W96
	.byte			An1
	.byte	W96
	.byte			Gn1
	.byte	W96
	.byte			Fs1
	.byte	W96
	.byte	VOL	, v057
	.byte		N96	, Bn1, v104
	.byte	W96
	.byte	GOTO	
		.word	song062_4_4
	.byte		N96	, Gs1, v100
	.byte	W96
	.byte	FINE

	@********************** Track  5 **********************@

	.global song062_5
song062_5:	@ 0x0829CF53
	.byte	KEYSH	, 0
	.byte	VOICE	, 5
	.byte	MOD	, 127
	.byte	VOL	, v037
	.byte	LFOS	, 127
	.byte	VOL	, v037
	.byte	TUNE	, c_v
	.byte	PAN	, c_v-31
	.byte		TIE	, Cn7, v084
	.byte	W02
	.byte	VOL	, v036
	.byte	W03
	.byte		v035
	.byte	W02
	.byte		v034
	.byte	W03
	.byte		v033
	.byte	W02
	.byte		v033
	.byte	W03
	.byte		v032
	.byte	W02
	.byte		v031
	.byte	W03
	.byte		v030
	.byte	W02
	.byte		v029
	.byte	W03
	.byte		v028
	.byte	W02
	.byte		v028
	.byte	W03
	.byte		v027
	.byte	W02
	.byte		v026
	.byte	W03
	.byte		v025
	.byte	W02
	.byte		v024
	.byte	W03
	.byte		v023
	.byte	W02
	.byte		v023
	.byte	W03
	.byte		v022
	.byte	W02
	.byte		v021
	.byte	W03
	.byte		v020
	.byte	W18
	.byte		v019
	.byte	W09
	.byte		v019
	.byte	W09
	.byte		v018
	.byte	W09
	.byte		v017
	.byte	W01
song062_5_1:
	.byte	W08
	.byte	VOL	, v016
	.byte	W09
	.byte		v015
	.byte	W09
	.byte		v014
	.byte	W09
	.byte		v014
	.byte	W09
	.byte		v013
	.byte	W44
	.byte	W01
	.byte		v009
	.byte	W07
	.byte	PEND
	.byte	W96
	.byte	W23
	.byte		EOT	, Cn7
	.byte	W72
	.byte	W01
song062_5_2:
	.byte	VOL	, v037
	.byte		TIE	, Cn7, v084
	.byte	W02
	.byte	VOL	, v036
	.byte	W03
	.byte		v035
	.byte	W02
	.byte		v034
	.byte	W03
	.byte		v033
	.byte	W02
	.byte		v033
	.byte	W03
	.byte		v032
	.byte	W02
	.byte		v031
	.byte	W03
	.byte		v030
	.byte	W02
	.byte		v029
	.byte	W03
	.byte		v028
	.byte	W02
	.byte		v028
	.byte	W03
	.byte		v027
	.byte	W02
	.byte		v026
	.byte	W03
	.byte		v025
	.byte	W02
	.byte		v024
	.byte	W03
	.byte		v023
	.byte	W02
	.byte		v023
	.byte	W03
	.byte		v022
	.byte	W02
	.byte		v021
	.byte	W03
	.byte		v020
	.byte	W18
	.byte		v019
	.byte	W09
	.byte		v019
	.byte	W09
	.byte		v018
	.byte	W09
	.byte		v017
	.byte	W01
	.byte	PEND
	.byte	PATT	
		.word	song062_5_1
	.byte	W96
	.byte	W23
	.byte		EOT	, Cn7
	.byte	W72
	.byte	W01
	.byte	PATT	
		.word	song062_5_2
	.byte	PATT	
		.word	song062_5_1
	.byte	W96
	.byte	W23
	.byte		EOT	, Cn7
	.byte	W72
	.byte	W01
	.byte	PATT	
		.word	song062_5_2
	.byte	PATT	
		.word	song062_5_1
	.byte	W96
	.byte	W23
	.byte		EOT	, Cn7
	.byte	W72
	.byte	W01
	.byte	VOL	, v037
	.byte	TUNE	, c_v
	.byte	PAN	, c_v
	.byte		TIE	, Cn7, v084
	.byte	W02
	.byte	VOL	, v036
	.byte	W03
	.byte		v035
	.byte	W02
	.byte		v034
	.byte	W03
	.byte		v033
	.byte	W02
	.byte		v033
	.byte	W03
	.byte		v032
	.byte	W02
	.byte		v031
	.byte	W03
	.byte		v030
	.byte	W02
	.byte		v029
	.byte	W03
	.byte		v028
	.byte	W02
	.byte		v028
	.byte	W03
	.byte		v027
	.byte	W02
	.byte		v026
	.byte	W03
	.byte		v025
	.byte	W02
	.byte		v024
	.byte	W03
	.byte		v023
	.byte	W02
	.byte		v023
	.byte	W03
	.byte		v022
	.byte	W02
	.byte		v021
	.byte	W03
	.byte		v020
	.byte	W18
	.byte		v019
	.byte	W09
	.byte		v019
	.byte	W09
	.byte		v018
	.byte	W09
	.byte		v017
	.byte	W01
	.byte	PATT	
		.word	song062_5_1
	.byte	W96
	.byte	W23
	.byte		EOT	, Cn7
	.byte	W72
	.byte	W01
	.byte	PATT	
		.word	song062_5_2
	.byte	PATT	
		.word	song062_5_1
	.byte	W96
	.byte	W23
	.byte		EOT	, Cn7
	.byte	W72
	.byte	W01
	.byte	PATT	
		.word	song062_5_2
	.byte	PATT	
		.word	song062_5_1
	.byte	W96
	.byte	W23
	.byte		EOT	, Cn7
	.byte	W72
	.byte	W01
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	MOD	, 127
	.byte	VOL	, v037
	.byte	TUNE	, c_v
	.byte	PAN	, c_v-31
	.byte		TIE	, Cn7, v084
	.byte	W02
	.byte	VOL	, v036
	.byte	W03
	.byte		v035
	.byte	W02
	.byte		v034
	.byte	W03
	.byte		v033
	.byte	W02
	.byte		v033
	.byte	W03
	.byte		v032
	.byte	W02
	.byte		v031
	.byte	W03
	.byte		v030
	.byte	W02
	.byte		v029
	.byte	W03
	.byte		v028
	.byte	W02
	.byte		v028
	.byte	W03
	.byte		v027
	.byte	W02
	.byte		v026
	.byte	W03
	.byte		v025
	.byte	W02
	.byte		v024
	.byte	W03
	.byte		v023
	.byte	W02
	.byte		v023
	.byte	W03
	.byte		v022
	.byte	W02
	.byte		v021
	.byte	W03
	.byte		v020
	.byte	W18
	.byte		v019
	.byte	W09
	.byte		v019
	.byte	W09
	.byte		v018
	.byte	W09
	.byte		v017
	.byte	W01
	.byte	GOTO	
		.word	song062_5_1
	.byte	PATT	
		.word	song062_5_1
	.byte	W96
	.byte	W23
	.byte		EOT	, Cn7
	.byte	FINE

	.align 2
	.global song062
song062:	@ 0x0829D0C8
	.byte	5		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

	.word	voicegroup016		@ voicegroup/tone

	.word	song062_1		@ track
	.word	song062_2		@ track
	.word	song062_3		@ track
	.word	song062_4		@ track
	.word	song062_5		@ track

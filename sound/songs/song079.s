	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song079_1
song079_1:	@ 0x082A84FC
	.byte	KEYSH	, 0
	.byte	TEMPO	, 63
	.byte	VOICE	, 1
	.byte	VOL	, v085
	.byte	PAN	, c_v
	.byte	BENDR	, 12
	.byte	BEND	, c_v
	.byte		N92	, An2, v120
	.byte	W96
song079_1_5:
	.byte		N23	, En3, v112
	.byte	W24
	.byte		N48	, Dn3, v120
	.byte	W48
	.byte		N24	, Cs3, v112
	.byte	W24
	.byte	PEND
	.byte		N96	, Dn3, v120
	.byte	W96
	.byte		N24	, Fn3
	.byte	W24
	.byte		N11	, En3
	.byte	W12
	.byte		N36	, Dn3, v112
	.byte	W36
	.byte		N24	, An2, v108
	.byte	W24
song079_1_1:
	.byte		N68	, En3, v116
	.byte	W72
	.byte		N24	, Dn3, v112
	.byte	W24
	.byte	PEND
song079_1_2:
	.byte		N24	, Cs3, v116
	.byte	W24
	.byte		N12	, Dn3, v124
	.byte	W12
	.byte		N24	, En3, v116
	.byte	W24
	.byte		N36	, An2, v104
	.byte	W36
	.byte	PEND
song079_1_3:
	.byte		N72	, Dn3, v116
	.byte	W72
	.byte		N23	, En3, v112
	.byte	W24
	.byte	PEND
song079_1_4:
	.byte		N24	, Fn3, v116
	.byte	W24
	.byte		N13	, Gn3, v120
	.byte	W12
	.byte		N24	, En3, v116
	.byte	W24
	.byte		N28	, Dn3, v120
	.byte	W36
	.byte	PEND
	.byte		N92	, Cs3, v116
	.byte	W96
	.byte		N48	, Fs3
	.byte	W48
	.byte		N44	, Fs2, v104
	.byte	W48
	.byte		N48	, En3, v116
	.byte	W48
	.byte			Dn3
	.byte	W48
	.byte			Cs3
	.byte	W48
	.byte			Bn2
	.byte	W48
	.byte	PATT	
		.word	song079_1_1
	.byte	PATT	
		.word	song079_1_2
	.byte	PATT	
		.word	song079_1_3
	.byte	PATT	
		.word	song079_1_4
	.byte		N96	, An2, v120
	.byte	W96
	.byte	PATT	
		.word	song079_1_5
	.byte		N96	, Dn3, v120
	.byte	W96
	.byte		N24	, Fn3
	.byte	W24
	.byte		N11	, En3
	.byte	W12
	.byte		N36	, Dn3, v112
	.byte	W36
	.byte		N23	, An2, v108
	.byte	W24
	.byte	TEMPO	, 60
	.byte		N92	, An2, v116
	.byte	W96
	.byte		N24	, En3
	.byte	W24
	.byte		N12	, Dn3, v124
	.byte	W12
	.byte		N24	, Cs3, v116
	.byte	W24
	.byte		N36	, An2, v104
	.byte	W36
	.byte	TEMPO	, 59
	.byte		N72	, Dn3, v116
	.byte	W72
	.byte		N23	, En3, v112
	.byte	W24
	.byte	TEMPO	, 58
	.byte		N24	, Fn3, v116
	.byte	W24
	.byte		N13	, Gn3, v120
	.byte	W12
	.byte		N24	, En3, v116
	.byte	W12
	.byte	TEMPO	, 56
	.byte	W12
	.byte		N28	, Dn3, v120
	.byte	W06
	.byte	TEMPO	, 50
	.byte	W06
	.byte	TEMPO	, 46
	.byte	W24
	.byte	VOL	, v085
	.byte	PAN	, c_v
	.byte	BEND	, c_v
	.byte		N92	, An2
	.byte	W48
	.byte	W02
	.byte	VOL	, v085
	.byte	W01
	.byte		v085
	.byte	W18
	.byte		v084
	.byte	W07
	.byte		v082
	.byte	W04
	.byte		v081
	.byte	W04
	.byte		v081
	.byte	W02
	.byte		v079
	.byte	W04
	.byte		v078
	.byte	W03
	.byte		v076
	.byte	W03
	.byte		TIE	, An2, v076
	.byte	W02
	.byte	VOL	, v075
	.byte	W02
	.byte		v073
	.byte	W03
	.byte		v072
	.byte	W02
	.byte		v072
	.byte	W08
	.byte		v071
	.byte	W03
	.byte		v069
	.byte	W01
	.byte		v068
	.byte	W02
	.byte		v066
	.byte	W02
	.byte		v064
	.byte	W02
	.byte		v061
	.byte	W08
	.byte		v059
	.byte	W03
	.byte		v057
	.byte	W03
	.byte		v056
	.byte	W03
	.byte		v053
	.byte	W02
	.byte		v050
	.byte	W03
	.byte		v048
	.byte	W02
	.byte		v047
	.byte	W02
	.byte		v047
	.byte	W02
	.byte		v044
	.byte	W05
	.byte		v042
	.byte	W03
	.byte		v040
	.byte	W03
	.byte		v038
	.byte	W02
	.byte		v036
	.byte	W03
	.byte		v035
	.byte	W03
	.byte		v033
	.byte	W04
	.byte		v031
	.byte	W02
	.byte		v029
	.byte	W02
	.byte		v028
	.byte	W03
	.byte		v028
	.byte	W03
	.byte		v025
	.byte	W03
	.byte		v023
	.byte	W02
	.byte		v023
	.byte	W03
	.byte		v020
	.byte	W03
	.byte		v019
	.byte	W03
	.byte		v017
	.byte	W02
	.byte		v015
	.byte	W03
	.byte		v013
	.byte	W02
	.byte		v010
	.byte	W14
	.byte		EOT	
	.byte	W21
	.byte	TEMPO	, 80
	.byte	VOICE	, 127
	.byte	VOL	, v099
	.byte	PAN	, c_v
	.byte		N24	, Ds4, v100
	.byte	W06
	.byte		N11	, Gn7
	.byte	W12
	.byte		N11	
	.byte	W06
	.byte		N12	, Gs3
	.byte	W06
	.byte		N11	, Gn7
	.byte	W06
	.byte		N10	, Ds4
	.byte	W06
	.byte		N05	, Gs3
	.byte	W06
	.byte	TEMPO	, 82
	.byte		N11	, Gn7
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N12	, Gs3
	.byte	W12
	.byte		N06	, An3
	.byte	W07
	.byte		N05	, As3
	.byte	W05
	.byte		N06	, Gn7
	.byte	W07
	.byte		N05	, Cn4
	.byte	W05
	.byte		N06	, Gn7
	.byte	W06
	.byte		N05	, Dn4
	.byte	W06
	.byte		N06	, Ds4
	.byte	W07
	.byte		N09	, Gn7
	.byte	W12
	.byte		N03	, Fs4
	.byte	W05
song079_1_6:
	.byte		N11	, Gn7, v100
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N12	, Gs3
	.byte	W12
	.byte		N06	, An3
	.byte	W07
	.byte		N05	, As3
	.byte	W05
	.byte		N06	, Gn7
	.byte	W07
	.byte		N05	, Cn4
	.byte	W05
	.byte		N06	, Gn7
	.byte	W06
	.byte		N05	, Dn4
	.byte	W06
	.byte		N06	, Ds4
	.byte	W08
	.byte		N09	, Gn7
	.byte	W11
	.byte		N03	, Fs4
	.byte	W05
	.byte	PEND
song079_1_7:
	.byte		N11	, Gn7, v100
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N12	, Gs3
	.byte	W12
	.byte		N06	, An3
	.byte	W07
	.byte		N05	, As3
	.byte	W05
	.byte		N06	, Gn7
	.byte	W07
	.byte		N05	, Cn4
	.byte	W05
	.byte		N06	, Gn7
	.byte	W06
	.byte		N05	, Dn4
	.byte	W06
	.byte		N06	, Ds4
	.byte	W07
	.byte		N09	, Gn7
	.byte	W12
	.byte		N03	, Fs4
	.byte	W05
	.byte	PEND
song079_1_8:
	.byte		N11	, Gn7, v100
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N12	, Gs3
	.byte	W12
	.byte		N06	, An3
	.byte	W07
	.byte		N04	, Gn7
	.byte	W05
	.byte		N06	
	.byte	W07
	.byte		N05	, Ds4
	.byte	W05
	.byte		N11	, Gn7
	.byte	W12
	.byte			Gs3
	.byte	W12
	.byte		N06	, Gn7
	.byte	W07
	.byte		N05	, As3
	.byte	W05
	.byte	PEND
song079_1_9:
	.byte	VOL	, v105
	.byte		N11	, Gn7, v100
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N12	, Gs3
	.byte	W12
	.byte		N06	, An3
	.byte	W07
	.byte		N05	, As3
	.byte	W05
	.byte		N06	, Gn7
	.byte	W07
	.byte		N05	, Cn4
	.byte	W05
	.byte		N06	, Gn7
	.byte	W06
	.byte		N05	, Dn4
	.byte	W06
	.byte		N06	, Ds4
	.byte	W07
	.byte		N09	, Gn7
	.byte	W12
	.byte		N03	, Fs4
	.byte	W05
	.byte	PEND
	.byte	PATT	
		.word	song079_1_6
	.byte	PATT	
		.word	song079_1_7
	.byte	PATT	
		.word	song079_1_8
	.byte	PATT	
		.word	song079_1_7
	.byte	PATT	
		.word	song079_1_6
	.byte	PATT	
		.word	song079_1_7
	.byte	PATT	
		.word	song079_1_8
	.byte	PATT	
		.word	song079_1_9
	.byte	PATT	
		.word	song079_1_6
	.byte	PATT	
		.word	song079_1_7
	.byte	PATT	
		.word	song079_1_8
	.byte	PATT	
		.word	song079_1_7
	.byte	PATT	
		.word	song079_1_6
	.byte	PATT	
		.word	song079_1_7
	.byte	PATT	
		.word	song079_1_8
	.byte	PATT	
		.word	song079_1_9
	.byte	PATT	
		.word	song079_1_6
	.byte	PATT	
		.word	song079_1_7
	.byte	PATT	
		.word	song079_1_8
	.byte	PATT	
		.word	song079_1_7
	.byte	PATT	
		.word	song079_1_6
	.byte	PATT	
		.word	song079_1_7
	.byte	PATT	
		.word	song079_1_8
	.byte	PATT	
		.word	song079_1_9
	.byte	PATT	
		.word	song079_1_6
	.byte	PATT	
		.word	song079_1_7
	.byte		N11	, Gn7, v100
	.byte	W12
	.byte			Ds4
	.byte	W12
	.byte		N12	, Gs3
	.byte	W12
	.byte		N06	, An3
	.byte	W07
	.byte		N05	, Gn7
	.byte	W05
	.byte		N06	, Gs3
	.byte	W07
	.byte		N05	, Gn7
	.byte	W05
	.byte		N12	, Ds4
	.byte	W12
	.byte		N11	, Gs3
	.byte	W12
	.byte		N06	, Gn7
	.byte	W07
	.byte		N04	
	.byte	W05
	.byte	PATT	
		.word	song079_1_7
	.byte	PATT	
		.word	song079_1_6
	.byte	PATT	
		.word	song079_1_7
	.byte	PATT	
		.word	song079_1_8
	.byte	PATT	
		.word	song079_1_9
	.byte	PATT	
		.word	song079_1_6
	.byte	PATT	
		.word	song079_1_7
	.byte	PATT	
		.word	song079_1_8
	.byte	PATT	
		.word	song079_1_7
	.byte	PATT	
		.word	song079_1_6
	.byte	PATT	
		.word	song079_1_7
	.byte	PATT	
		.word	song079_1_8
	.byte	PATT	
		.word	song079_1_9
	.byte	PATT	
		.word	song079_1_6
	.byte	PATT	
		.word	song079_1_7
	.byte	PATT	
		.word	song079_1_8
	.byte	PATT	
		.word	song079_1_7
	.byte	PATT	
		.word	song079_1_6
	.byte	PATT	
		.word	song079_1_7
	.byte		N11	, Gn7, v100
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N12	, Gs3
	.byte	W12
	.byte		N06	, An3
	.byte	W07
	.byte		N04	, Gn7
	.byte	W05
	.byte		N06	
	.byte	W07
	.byte		N05	, Ds4
	.byte	W05
	.byte		N11	, Gn7
	.byte	W12
	.byte			Gs3
	.byte	W06
	.byte	VOL	, v099
	.byte	W06
	.byte		N06	, Gn7
	.byte	W05
	.byte	VOL	, v092
	.byte	W02
	.byte		N05	, As3
	.byte	W05
	.byte		N11	, Gn7
	.byte	W12
	.byte		N11	
	.byte	W06
	.byte	VOL	, v090
	.byte	W06
	.byte		N12	, Gs3
	.byte	W10
	.byte	VOL	, v088
	.byte	W02
	.byte		N06	, An3
	.byte	W07
	.byte		N05	, As3
	.byte	W05
	.byte		N06	, Gn7
	.byte	W07
	.byte		N05	, Cn4
	.byte	W03
	.byte	VOL	, v086
	.byte	W02
	.byte		N06	, Gn7
	.byte	W06
	.byte		N05	, Dn4
	.byte	W05
	.byte	VOL	, v084
	.byte	W01
	.byte		N06	, Ds4
	.byte	W07
	.byte		N09	, Gn7
	.byte	W08
	.byte	VOL	, v082
	.byte	W04
	.byte		N03	, Fs4
	.byte	W05
	.byte		N11	, Gn7
	.byte	W05
	.byte	VOL	, v081
	.byte	W07
	.byte		N11	
	.byte	W12
	.byte		N12	, Gs3
	.byte	W06
	.byte	VOL	, v078
	.byte	W06
	.byte		N06	, An3
	.byte	W07
	.byte		N05	, As3
	.byte	W05
	.byte		N06	, Gn7
	.byte	W07
	.byte		N05	, Cn4
	.byte	W05
	.byte		N06	, Gn7
	.byte	W06
	.byte	VOL	, v076
	.byte		N05	, Dn4
	.byte	W06
	.byte		N06	, Ds4
	.byte	W08
	.byte		N09	, Gn7
	.byte	W05
	.byte	VOL	, v075
	.byte	W06
	.byte		N03	, Fs4
	.byte	W05
	.byte		N11	, Gn7
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N12	, Gs3
	.byte	W07
	.byte	VOL	, v072
	.byte	W05
	.byte		N06	, An3
	.byte	W07
	.byte		N05	, As3
	.byte	W04
	.byte	VOL	, v071
	.byte	W01
	.byte		N06	, Gn7
	.byte	W07
	.byte		N05	, Cn4
	.byte	W05
	.byte		N06	, Gn7
	.byte	W01
	.byte	VOL	, v069
	.byte	W05
	.byte		N05	, Dn4
	.byte	W06
	.byte		N06	, Ds4
	.byte	W04
	.byte	VOL	, v066
	.byte	W03
	.byte		N09	, Gn7
	.byte	W09
	.byte	VOL	, v065
	.byte	W03
	.byte		N03	, Fs4
	.byte	W05
	.byte		N11	, Gn7
	.byte	W01
	.byte	VOL	, v063
	.byte	W11
	.byte		N11	
	.byte	W12
	.byte		N12	, Gs3
	.byte	W10
	.byte	VOL	, v061
	.byte	W02
	.byte		N06	, An3
	.byte	W07
	.byte		N04	, Gn7
	.byte	W05
	.byte		N06	
	.byte	W06
	.byte	VOL	, v059
	.byte	W01
	.byte		N05	, Ds4
	.byte	W05
	.byte		N11	, Gn7
	.byte	W07
	.byte	VOL	, v057
	.byte	W05
	.byte		N11	, Gs3
	.byte	W02
	.byte	VOL	, v053
	.byte	W09
	.byte		v052
	.byte	W01
	.byte		N06	, Gn7
	.byte	W07
	.byte		N05	, As3
	.byte	W05
	.byte		N11	, Gn7
	.byte	W05
	.byte	VOL	, v049
	.byte	W07
	.byte		N11	
	.byte	W02
	.byte	VOL	, v047
	.byte	W10
	.byte		N12	, Gs3
	.byte	W01
	.byte	VOL	, v046
	.byte	W09
	.byte		v043
	.byte	W02
	.byte		N06	, An3
	.byte	W07
	.byte		N05	, As3
	.byte	W01
	.byte	VOL	, v042
	.byte	W04
	.byte		N06	, Gn7
	.byte	W05
	.byte	VOL	, v040
	.byte	W02
	.byte		N05	, Cn4
	.byte	W05
	.byte		N06	, Gn7
	.byte	W06
	.byte	VOL	, v038
	.byte		N05	, Dn4
	.byte	W06
	.byte		N06	, Ds4
	.byte	W07
	.byte		N09	, Gn7
	.byte	W03
	.byte	VOL	, v036
	.byte	W09
	.byte		N03	, Fs4
	.byte	W02
	.byte	VOL	, v034
	.byte	W03
	.byte		N11	, Gn7
	.byte	W12
	.byte		N11	
	.byte	W03
	.byte	VOL	, v032
	.byte	W09
	.byte		N12	, Gs3
	.byte	W05
	.byte	VOL	, v030
	.byte	W07
	.byte		N06	, An3
	.byte	W06
	.byte	VOL	, v028
	.byte	W01
	.byte		N05	, As3
	.byte	W05
	.byte		N06	, Gn7
	.byte	W04
	.byte	VOL	, v026
	.byte	W03
	.byte		N05	, Cn4
	.byte	W05
	.byte	VOL	, v023
	.byte		N06	, Gn7
	.byte	W06
	.byte		N05	, Dn4
	.byte	W03
	.byte	VOL	, v020
	.byte	W03
	.byte		N06	, Ds4
	.byte	W08
	.byte		N09	, Gn7
	.byte	W09
	.byte	VOL	, v019
	.byte	W02
	.byte		N03	, Fs4
	.byte	W05
	.byte		N11	, Gn7
	.byte	W06
	.byte	VOL	, v017
	.byte	W06
	.byte		N11	
	.byte	W12
	.byte	VOL	, v014
	.byte		N12	, Gs3
	.byte	W12
	.byte		N06	, An3
	.byte	W02
	.byte	VOL	, v013
	.byte	W05
	.byte		N05	, As3
	.byte	W05
	.byte		N06	, Gn7
	.byte	W07
	.byte		N05	, Cn4
	.byte	W04
	.byte	VOL	, v011
	.byte	W01
	.byte		N06	, Gn7
	.byte	W06
	.byte		N05	, Dn4
	.byte	W06
	.byte		N06	, Ds4
	.byte	W07
	.byte		N09	, Gn7
	.byte	W03
	.byte	VOL	, v009
	.byte	W09
	.byte		N03	, Fs4
	.byte	W04
	.byte	VOL	, v007
	.byte	W01
	.byte		N11	, Gn7
	.byte	W12
	.byte		N11	
	.byte	W02
	.byte	VOL	, v005
	.byte	W10
	.byte		N12	, Gs3
	.byte	W12
	.byte		N06	, An3
	.byte	W07
	.byte		N04	, Gn7
	.byte	W05
	.byte		N06	
	.byte	W04
	.byte	VOL	, v003
	.byte	W03
	.byte		N05	, Ds4
	.byte	W05
	.byte		N11	, Gn7
	.byte	W12
	.byte			Gs3
	.byte	W12
	.byte		N06	, Gn7
	.byte	W07
	.byte		N03	, As3, v112
	.byte	W05
	.byte	TEMPO	, 35
	.byte	VOICE	, 127
	.byte	VOL	, v103
	.byte	PAN	, c_v
	.byte		N11	, Gn7, v120
	.byte	W92
	.byte		N03	
	.byte	W04
	.byte		N11	
	.byte	W96
	.byte		N11	
	.byte	W11
	.byte		N11	
	.byte	W84
	.byte	W01
	.byte		N11	
	.byte	W60
	.byte		N11	
	.byte	W12
	.byte		N07	, Ds2
	.byte	W24
song079_1_10:
	.byte		N11	, Gn7, v120
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N06	, Ds2
	.byte	W07
	.byte		N04	, En2
	.byte	W05
	.byte		N06	, Fn2
	.byte	W07
	.byte		N03	, Fs2
	.byte	W05
	.byte		N05	, Gn7
	.byte	W07
	.byte		N04	, Gs2
	.byte	W05
	.byte		N05	, As2
	.byte	W07
	.byte		N04	, Bn2
	.byte	W05
	.byte		N06	, Ds2
	.byte	W07
	.byte		N04	, En2
	.byte	W05
	.byte		N06	, Fn2
	.byte	W07
	.byte		N03	, Gn7
	.byte	W05
	.byte	PEND
song079_1_11:
	.byte		N11	, Gn7, v120
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N06	, Ds2
	.byte	W07
	.byte		N04	, En2
	.byte	W05
	.byte		N06	, Fn2
	.byte	W07
	.byte		N04	, Fs2
	.byte	W05
	.byte		N05	, Gn7
	.byte	W07
	.byte		N04	, An2
	.byte	W05
	.byte		N05	, As2
	.byte	W07
	.byte		N04	, Bn2
	.byte	W05
	.byte		N06	, Ds2
	.byte	W07
	.byte		N04	, En2
	.byte	W05
	.byte		N07	, Fn2
	.byte	W07
	.byte		N03	, Gn7
	.byte	W05
	.byte	PEND
	.byte	PATT	
		.word	song079_1_10
song079_1_12:
	.byte		N11	, Gn7, v120
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N06	, Ds2
	.byte	W07
	.byte		N04	, En2
	.byte	W05
	.byte		N06	, Fn2
	.byte	W07
	.byte		N03	, Fs2
	.byte	W05
	.byte		N06	, Gn7
	.byte	W07
	.byte		N04	, An2
	.byte	W05
	.byte		N05	, As2
	.byte	W07
	.byte		N04	, Bn2
	.byte	W05
	.byte		N06	, Ds2
	.byte	W07
	.byte		N04	, En2
	.byte	W05
	.byte		N07	, Fn2
	.byte	W07
	.byte		N03	, Gn7
	.byte	W05
	.byte	PEND
	.byte	PATT	
		.word	song079_1_10
	.byte	PATT	
		.word	song079_1_11
	.byte	PATT	
		.word	song079_1_10
	.byte	PATT	
		.word	song079_1_12
	.byte	PATT	
		.word	song079_1_10
	.byte	PATT	
		.word	song079_1_11
	.byte	PATT	
		.word	song079_1_10
	.byte	PATT	
		.word	song079_1_12
	.byte	PATT	
		.word	song079_1_10
	.byte	PATT	
		.word	song079_1_11
	.byte	PATT	
		.word	song079_1_10
song079_1_13:
	.byte		N11	, Gn7, v120
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N06	, Ds2
	.byte	W07
	.byte		N04	, En2
	.byte	W05
	.byte		N06	, Fn2
	.byte	W07
	.byte		N03	, Fs2
	.byte	W05
	.byte		N06	, Gn7
	.byte	W48
	.byte	PEND
song079_1_14:
	.byte	W56
	.byte	W03
	.byte		N11	, Gn7, v120
	.byte	W12
	.byte		N07	, Ds2
	.byte	W24
	.byte	W01
	.byte	PEND
	.byte	PATT	
		.word	song079_1_10
	.byte	PATT	
		.word	song079_1_11
	.byte	PATT	
		.word	song079_1_10
	.byte	PATT	
		.word	song079_1_12
	.byte	PATT	
		.word	song079_1_10
	.byte	PATT	
		.word	song079_1_11
	.byte	PATT	
		.word	song079_1_10
	.byte	PATT	
		.word	song079_1_12
	.byte	PATT	
		.word	song079_1_10
	.byte	PATT	
		.word	song079_1_11
	.byte	PATT	
		.word	song079_1_10
	.byte	PATT	
		.word	song079_1_13
	.byte	PATT	
		.word	song079_1_14
	.byte	PATT	
		.word	song079_1_10
	.byte	PATT	
		.word	song079_1_11
	.byte	PATT	
		.word	song079_1_10
	.byte	PATT	
		.word	song079_1_12
	.byte	PATT	
		.word	song079_1_10
	.byte	PATT	
		.word	song079_1_11
	.byte	PATT	
		.word	song079_1_10
	.byte	PATT	
		.word	song079_1_12
	.byte	PATT	
		.word	song079_1_10
	.byte	PATT	
		.word	song079_1_11
	.byte	PATT	
		.word	song079_1_10
	.byte	PATT	
		.word	song079_1_12
	.byte	PATT	
		.word	song079_1_10
	.byte	PATT	
		.word	song079_1_11
	.byte	PATT	
		.word	song079_1_10
	.byte	PATT	
		.word	song079_1_12
	.byte	PATT	
		.word	song079_1_10
	.byte	PATT	
		.word	song079_1_11
	.byte	PATT	
		.word	song079_1_10
	.byte	PATT	
		.word	song079_1_13
	.byte	W56
	.byte	W03
	.byte		N11	, Gn7, v120
	.byte	W12
	.byte		N07	, Ds2
	.byte	W08
	.byte	FINE

	@********************** Track  2 **********************@

	.global song079_2
song079_2:	@ 0x082A8B7F
	.byte	KEYSH	, 0
	.byte	VOICE	, 7
	.byte	PAN	, c_v
	.byte	VOL	, v069
	.byte	BEND	, c_v
	.byte		N09	, Fn4, v127
	.byte	W12
	.byte			Fn4, v096
	.byte	W12
	.byte			Fn4, v064
	.byte	W12
	.byte			Fn4, v124
	.byte	W12
	.byte			Dn4, v084
	.byte	W11
	.byte		N12	, Ds4, v112
	.byte	W13
	.byte		N11	, Fn4, v124
	.byte	W12
	.byte		N09	, As3, v127
	.byte	W12
	.byte			As3, v084
	.byte	W12
	.byte			As3, v076
	.byte	W12
	.byte			As3, v056
	.byte	W36
	.byte			Gn3, v127
	.byte	W12
	.byte			An3, v076
	.byte	W12
	.byte			As3, v127
	.byte	W12
	.byte			Fs3, v104
	.byte	W12
	.byte			Fs3, v076
	.byte	W12
	.byte			Fs3, v056
	.byte	W12
	.byte			Fs3, v127
	.byte	W12
	.byte			As3, v076
	.byte	W12
	.byte		N11	, Cn4, v127
	.byte	W12
	.byte			Cs4
	.byte	W12
	.byte		N09	, Fn4
	.byte	W12
	.byte			Fn4, v116
	.byte	W12
	.byte			Fs4
	.byte	W12
	.byte			Fn4, v108
	.byte	W12
	.byte			Ds4, v127
	.byte	W12
	.byte			Ds4, v104
	.byte	W12
	.byte			Ds4, v076
	.byte	W12
	.byte			Ds4, v056
	.byte	W24
	.byte			Fn4, v127
	.byte	W11
	.byte			Fn4, v096
	.byte	W12
	.byte			Fn4, v064
	.byte	W13
	.byte			Fn4, v124
	.byte	W11
	.byte			Dn4, v084
	.byte	W12
	.byte		N12	, Ds4, v112
	.byte	W12
	.byte		N11	, Fn4, v124
	.byte	W13
	.byte		N09	, As3, v127
	.byte	W11
	.byte			As3, v084
	.byte	W01
	.byte	W11
	.byte			As3, v076
	.byte	W12
	.byte			As3, v056
	.byte	W36
	.byte	W01
	.byte			Gn3, v127
	.byte	W11
	.byte			An3, v076
	.byte	W13
	.byte			As3, v127
	.byte	W11
	.byte			Fs3, v104
	.byte	W01
	.byte	W11
	.byte			Fs3, v076
	.byte	W12
	.byte			Fs3, v056
	.byte	W13
	.byte			Fs3, v127
	.byte	W11
	.byte			As3, v076
	.byte	W13
	.byte		N11	, Cn4, v127
	.byte	W11
	.byte			Cs4
	.byte	W13
	.byte		N09	, Fn4
	.byte	W11
	.byte			Fn4, v116
	.byte	W01
	.byte	W11
	.byte			Fs4
	.byte	W12
	.byte			Fn4, v108
	.byte	W13
	.byte			Ds4, v127
	.byte	W11
	.byte			Ds4, v104
	.byte	W12
	.byte			Ds4, v076
	.byte	W12
	.byte			Ds4, v056
	.byte	W24
	.byte	W01
	.byte	PAN	, c_v+36
	.byte		N07	, Bn3, v092
	.byte	W12
	.byte			Gn3, v072
	.byte	W12
	.byte			An3, v080
	.byte	W12
	.byte			Gn3, v072
	.byte	W12
	.byte			Bn3, v092
	.byte	W12
	.byte			Gn3, v072
	.byte	W12
	.byte			An3, v080
	.byte	W12
	.byte			Gn3, v072
	.byte	W12
	.byte			Bn3, v092
	.byte	W12
	.byte			Gn3, v072
	.byte	W12
	.byte			An3, v080
	.byte	W12
	.byte			Gn3, v072
	.byte	W12
	.byte			Bn3, v092
	.byte	W12
	.byte			Gn3, v072
	.byte	W12
	.byte			An3, v080
	.byte	W12
	.byte			Gn3, v072
	.byte	W12
	.byte			Cn4, v092
	.byte	W12
	.byte			Gn3, v072
	.byte	W12
	.byte			An3, v080
	.byte	W12
	.byte			Gn3, v072
	.byte	W12
	.byte			Cn4, v092
	.byte	W12
	.byte			Gn3, v072
	.byte	W12
	.byte			An3, v080
	.byte	W12
	.byte			Gn3, v072
	.byte	W12
	.byte			Fn4, v092
	.byte	W12
	.byte			Fn3, v072
	.byte	W12
	.byte			Gn3, v080
	.byte	W12
	.byte			Fn3, v072
	.byte	W12
	.byte			Fn4, v092
	.byte	W12
	.byte			Fn3, v072
	.byte	W12
	.byte			Gn3, v080
	.byte	W12
	.byte			Fn3, v072
	.byte	W12
	.byte			An3, v092
	.byte	W12
	.byte			Dn3, v072
	.byte	W12
	.byte			Fn3, v080
	.byte	W12
	.byte			Dn3, v072
	.byte	W12
	.byte			An3, v092
	.byte	W12
	.byte			Dn3, v072
	.byte	W12
	.byte			Fn3, v080
	.byte	W12
	.byte			Dn3, v072
	.byte	W12
	.byte			As3, v092
	.byte	W12
	.byte			Dn3, v072
	.byte	W12
	.byte			Fn3, v080
	.byte	W12
	.byte			Dn3, v072
	.byte	W12
	.byte			As3, v092
	.byte	W12
	.byte			Fn3, v072
	.byte	W12
	.byte			Gn3, v080
	.byte	W12
	.byte			Fn3, v072
	.byte	W12
	.byte			Dn4, v092
	.byte	W12
	.byte			Fn3, v072
	.byte	W12
	.byte			Gn3, v080
	.byte	W12
	.byte			Fn3, v072
	.byte	W12
	.byte			Ds4, v092
	.byte	W12
	.byte			Fs3, v072
	.byte	W12
	.byte			Gs3, v080
	.byte	W12
	.byte			Fs3, v072
	.byte	W12
	.byte			Ds4, v092
	.byte	W12
	.byte			Fs3, v072
	.byte	W12
	.byte			Gs3, v080
	.byte	W12
	.byte			Fs3, v072
	.byte	W12
	.byte			Ds4, v092
	.byte	W12
	.byte			Fs3, v072
	.byte	W12
	.byte			Gs3, v080
	.byte	W12
	.byte			Fs3, v072
	.byte	W12
song079_2_4:
	.byte	PAN	, c_v
	.byte		N09	, Dn4, v127
	.byte	W11
	.byte			Dn4, v104
	.byte	W12
	.byte			Dn4, v076
	.byte	W12
	.byte			Dn4, v056
	.byte	W12
	.byte			Dn4, v048
	.byte	W12
	.byte			Dn4, v040
	.byte	W12
	.byte		N09	
	.byte	W12
	.byte			Dn4, v036
	.byte	W13
	.byte	PEND
song079_2_1:
	.byte		N09	, As3, v127
	.byte	W11
	.byte			As3, v104
	.byte	W12
	.byte			As3, v076
	.byte	W12
	.byte			As3, v056
	.byte	W12
	.byte			As3, v048
	.byte	W12
	.byte			As3, v040
	.byte	W12
	.byte		N09	
	.byte	W12
	.byte			As3, v036
	.byte	W13
	.byte	PEND
song079_2_2:
	.byte		N09	, Ds4, v127
	.byte	W11
	.byte			Ds4, v104
	.byte	W12
	.byte			Ds4, v076
	.byte	W12
	.byte			Ds4, v056
	.byte	W12
	.byte			Ds4, v048
	.byte	W12
	.byte			Ds4, v040
	.byte	W12
	.byte		N09	
	.byte	W12
	.byte			Ds4, v036
	.byte	W13
	.byte	PEND
song079_2_3:
	.byte		N09	, Fs4, v127
	.byte	W11
	.byte			Fs4, v104
	.byte	W12
	.byte			Fs4, v076
	.byte	W12
	.byte			Fs4, v056
	.byte	W12
	.byte			Fs4, v048
	.byte	W12
	.byte			Fs4, v040
	.byte	W12
	.byte		N09	
	.byte	W12
	.byte			Fs4, v036
	.byte	W13
	.byte	PEND
	.byte			Dn4, v127
	.byte	W11
	.byte			Dn4, v104
	.byte	W12
	.byte			Dn4, v076
	.byte	W12
	.byte			Dn4, v056
	.byte	W12
	.byte			Dn4, v048
	.byte	W12
	.byte			Dn4, v040
	.byte	W12
	.byte		N09	
	.byte	W12
	.byte			Dn4, v036
	.byte	W13
	.byte	PATT	
		.word	song079_2_1
	.byte	PATT	
		.word	song079_2_2
	.byte	PATT	
		.word	song079_2_3
	.byte	PATT	
		.word	song079_2_4
	.byte		N09	, As3, v127
	.byte	W11
	.byte			As3, v104
	.byte	W12
	.byte			As3, v076
	.byte	W12
	.byte			As3, v056
	.byte	W12
	.byte			As3, v048
	.byte	W12
	.byte			As3, v040
	.byte	W12
	.byte			As3, v032
	.byte	W12
	.byte			As3, v028
	.byte	W13
	.byte			As3, v024
	.byte	W48
	.byte	VOICE	, 60
	.byte	VOL	, v057
	.byte	PAN	, c_v
	.byte	W48
song079_2_5:
	.byte		N03	, Fs7, v012
	.byte	W24
	.byte		N03	
	.byte	W24
	.byte		N03	
	.byte	W24
	.byte		N03	
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song079_2_5
	.byte	PATT	
		.word	song079_2_5
	.byte	PATT	
		.word	song079_2_5
	.byte	PATT	
		.word	song079_2_5
	.byte	PATT	
		.word	song079_2_5
	.byte	PATT	
		.word	song079_2_5
	.byte	PATT	
		.word	song079_2_5
	.byte	PATT	
		.word	song079_2_5
	.byte	PATT	
		.word	song079_2_5
	.byte	PATT	
		.word	song079_2_5
	.byte	PATT	
		.word	song079_2_5
	.byte	PATT	
		.word	song079_2_5
	.byte	PATT	
		.word	song079_2_5
	.byte	PATT	
		.word	song079_2_5
	.byte	PATT	
		.word	song079_2_5
	.byte	PATT	
		.word	song079_2_5
	.byte	PATT	
		.word	song079_2_5
	.byte	PATT	
		.word	song079_2_5
	.byte	PATT	
		.word	song079_2_5
	.byte	PATT	
		.word	song079_2_5
	.byte	PATT	
		.word	song079_2_5
	.byte	PATT	
		.word	song079_2_5
	.byte	PATT	
		.word	song079_2_5
	.byte	PATT	
		.word	song079_2_5
	.byte	PATT	
		.word	song079_2_5
	.byte	PATT	
		.word	song079_2_5
	.byte	PATT	
		.word	song079_2_5
	.byte	PATT	
		.word	song079_2_5
	.byte	PATT	
		.word	song079_2_5
	.byte	PATT	
		.word	song079_2_5
	.byte	PATT	
		.word	song079_2_5
	.byte	PATT	
		.word	song079_2_5
	.byte	PATT	
		.word	song079_2_5
	.byte	PATT	
		.word	song079_2_5
	.byte	PATT	
		.word	song079_2_5
	.byte	PATT	
		.word	song079_2_5
	.byte	PATT	
		.word	song079_2_5
	.byte	PATT	
		.word	song079_2_5
	.byte	PATT	
		.word	song079_2_5
	.byte	PATT	
		.word	song079_2_5
	.byte	PATT	
		.word	song079_2_5
	.byte	PATT	
		.word	song079_2_5
	.byte	PATT	
		.word	song079_2_5
	.byte	PATT	
		.word	song079_2_5
	.byte	PATT	
		.word	song079_2_5
	.byte	PATT	
		.word	song079_2_5
	.byte	PATT	
		.word	song079_2_5
	.byte	PATT	
		.word	song079_2_5
	.byte	PATT	
		.word	song079_2_5
	.byte	PATT	
		.word	song079_2_5
	.byte		N03	, Fs7, v012
	.byte	W24
	.byte		N03	
	.byte	W24
	.byte		N03	
	.byte	W24
	.byte		N03	
	.byte	W06
	.byte	VOL	, v057
	.byte	W12
	.byte		v053
	.byte	W06
	.byte		N03	
	.byte	W19
	.byte	VOL	, v052
	.byte	W05
	.byte		N03	
	.byte	W11
	.byte	VOL	, v051
	.byte	W13
	.byte		N03	
	.byte	W11
	.byte	VOL	, v050
	.byte	W13
	.byte		N03	
	.byte	W01
	.byte	VOL	, v048
	.byte	W15
	.byte		v047
	.byte	W08
	.byte		N03	
	.byte	W06
	.byte	VOL	, v047
	.byte	W18
	.byte		N03	
	.byte	W07
	.byte	VOL	, v045
	.byte	W17
	.byte		N03	
	.byte	W19
	.byte	VOL	, v044
	.byte	W05
	.byte		N03	
	.byte	W14
	.byte	VOL	, v043
	.byte	W10
	.byte		N03	
	.byte	W24
	.byte		N03	
	.byte	W08
	.byte	VOL	, v042
	.byte	W16
	.byte		v041
	.byte		N03	
	.byte	W14
	.byte	VOL	, v040
	.byte	W10
	.byte		N03	
	.byte	W05
	.byte	VOL	, v038
	.byte	W12
	.byte		v038
	.byte	W07
	.byte		N03	
	.byte	W02
	.byte	VOL	, v036
	.byte	W22
	.byte		N03	
	.byte	W11
	.byte	VOL	, v035
	.byte	W13
	.byte		N03	
	.byte	W07
	.byte	VOL	, v034
	.byte	W13
	.byte		v033
	.byte	W04
	.byte		N03	
	.byte	W03
	.byte	VOL	, v031
	.byte	W09
	.byte		v029
	.byte	W12
	.byte		N03	
	.byte	W06
	.byte	VOL	, v028
	.byte	W10
	.byte		v028
	.byte	W08
	.byte		N03	
	.byte	W02
	.byte	VOL	, v026
	.byte	W10
	.byte		v025
	.byte	W09
	.byte		v023
	.byte	W03
	.byte		N03	
	.byte	W06
	.byte	VOL	, v023
	.byte	W13
	.byte		v022
	.byte	W05
	.byte		N03	
	.byte	W11
	.byte	VOL	, v020
	.byte	W11
	.byte		v019
	.byte	W02
	.byte		N03	
	.byte	W16
	.byte	VOL	, v019
	.byte	W08
	.byte		N03	
	.byte	W06
	.byte	VOL	, v017
	.byte	W13
	.byte		v016
	.byte	W05
	.byte		N03	
	.byte	W05
	.byte	VOL	, v015
	.byte	W08
	.byte		v013
	.byte	W09
	.byte		v011
	.byte	W02
	.byte		N03	
	.byte	W19
	.byte	VOL	, v010
	.byte	W05
	.byte		N03	
	.byte	W07
	.byte	VOL	, v009
	.byte	W17
	.byte		N03	
	.byte	W01
	.byte	VOL	, v008
	.byte	W14
	.byte		v007
	.byte	W09
	.byte		N03	
	.byte	W12
	.byte	VOL	, v006
	.byte	W12
	.byte		N03	
	.byte	W12
	.byte	VOL	, v004
	.byte	W12
	.byte		N03	
	.byte	W01
	.byte	VOL	, v004
	.byte	W14
	.byte		v003
	.byte	W09
	.byte		N03	
	.byte	W24
	.byte		N03	
	.byte	W05
	.byte	VOL	, v001
	.byte	W19
	.byte		N03	
	.byte	W24
	.byte	VOICE	, 60
	.byte	VOL	, v062
	.byte	PAN	, c_v-19
	.byte		N04	, Ds7, v052
	.byte	W24
	.byte			Ds7, v028
	.byte	W12
	.byte			Ds7, v052
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W24
song079_2_6:
	.byte		N04	, Ds7, v052
	.byte	W24
	.byte			Ds7, v028
	.byte	W12
	.byte			Ds7, v052
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song079_2_6
song079_2_7:
	.byte		N04	, Ds7, v052
	.byte	W24
	.byte			Ds7, v028
	.byte	W12
	.byte			Ds7, v052
	.byte	W12
	.byte		N04	
	.byte	W19
	.byte		N04	
	.byte	W05
	.byte		N04	
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song079_2_6
	.byte	PATT	
		.word	song079_2_6
	.byte	PATT	
		.word	song079_2_6
	.byte	PATT	
		.word	song079_2_7
	.byte	PATT	
		.word	song079_2_6
	.byte	PATT	
		.word	song079_2_6
	.byte	PATT	
		.word	song079_2_6
	.byte	PATT	
		.word	song079_2_7
	.byte	PATT	
		.word	song079_2_6
	.byte	PATT	
		.word	song079_2_6
	.byte	PATT	
		.word	song079_2_6
	.byte	PATT	
		.word	song079_2_6
	.byte	PATT	
		.word	song079_2_6
	.byte	PATT	
		.word	song079_2_6
	.byte	PATT	
		.word	song079_2_6
song079_2_8:
	.byte		N04	, Ds7, v052
	.byte	W24
	.byte			Ds7, v028
	.byte	W12
	.byte			Ds7, v052
	.byte	W08
	.byte		N03	
	.byte	W52
	.byte	PEND
	.byte	W96
	.byte	PATT	
		.word	song079_2_6
	.byte	PATT	
		.word	song079_2_6
	.byte	PATT	
		.word	song079_2_6
	.byte	PATT	
		.word	song079_2_7
	.byte	PATT	
		.word	song079_2_6
	.byte	PATT	
		.word	song079_2_6
	.byte	PATT	
		.word	song079_2_6
	.byte	PATT	
		.word	song079_2_6
	.byte	PATT	
		.word	song079_2_6
	.byte	PATT	
		.word	song079_2_6
	.byte	PATT	
		.word	song079_2_6
	.byte	PATT	
		.word	song079_2_8
	.byte	W96
	.byte	PATT	
		.word	song079_2_6
	.byte	PATT	
		.word	song079_2_6
	.byte	PATT	
		.word	song079_2_6
	.byte	PATT	
		.word	song079_2_7
	.byte	PATT	
		.word	song079_2_6
	.byte	PATT	
		.word	song079_2_6
	.byte	PATT	
		.word	song079_2_6
	.byte	PATT	
		.word	song079_2_7
	.byte	PATT	
		.word	song079_2_6
	.byte	PATT	
		.word	song079_2_6
	.byte	PATT	
		.word	song079_2_6
	.byte	PATT	
		.word	song079_2_7
	.byte	PATT	
		.word	song079_2_6
	.byte	PATT	
		.word	song079_2_6
	.byte	PATT	
		.word	song079_2_6
	.byte	PATT	
		.word	song079_2_6
	.byte	PATT	
		.word	song079_2_6
	.byte	PATT	
		.word	song079_2_6
	.byte	PATT	
		.word	song079_2_6
	.byte		N04	, Ds7, v052
	.byte	W24
	.byte			Ds7, v028
	.byte	W12
	.byte			Ds7, v052
	.byte	W08
	.byte		N03	
	.byte	W03
	.byte	FINE

	@********************** Track  3 **********************@

	.global song079_3
song079_3:	@ 0x082A90BF
	.byte	KEYSH	, 0
	.byte	VOICE	, 6
	.byte	VOL	, v066
	.byte	PAN	, c_v
	.byte	MOD	, 0
	.byte	BEND	, c_v
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W48
	.byte	W01
	.byte		N04	, An4, v127
	.byte	W03
	.byte		N20	, As4
	.byte	W20
	.byte		N22	, Gs4
	.byte	W24
	.byte		N03	, Bn4
	.byte	W04
	.byte		N13	, Cn5
	.byte	W14
	.byte		N17	, Gs4
	.byte	W18
	.byte		N24	, Fn4
	.byte	W24
	.byte	W02
	.byte		N23	, Gs4
	.byte	W23
	.byte		N48	, Fn4, v120
	.byte	W11
	.byte	W44
	.byte		N04	, Dn4, v127
	.byte	W04
	.byte		N17	, Ds4
	.byte	W17
	.byte		N16	, Cs4
	.byte	W18
	.byte		N11	, Bn3
	.byte	W13
	.byte	W01
	.byte		N04	, An3, v124
	.byte	W03
	.byte		N14	, As3, v127
	.byte	W14
	.byte		N15	, Gs3
	.byte	W18
	.byte			Fs3
	.byte	W15
	.byte		N03	, Dn3, v124
	.byte	W02
	.byte		N16	, Ds3, v127
	.byte	W17
	.byte		N32	, Cs3
	.byte	W24
	.byte	W02
	.byte	W48
	.byte	W01
	.byte		N04	, Fn3
	.byte	W03
	.byte		N20	, Fs3
	.byte	W20
	.byte		N22	, Ds3
	.byte	W24
	.byte		N03	, Gn3
	.byte	W04
	.byte		N13	, Gs3
	.byte	W14
	.byte		N17	, Ds3
	.byte	W18
	.byte		N24	, Cs4
	.byte	W24
	.byte	W02
	.byte		N23	, Bn3
	.byte	W23
	.byte		N48	, En4, v120
	.byte	W11
	.byte	W44
	.byte		N04	, As3, v127
	.byte	W04
	.byte		N17	, Bn3
	.byte	W17
	.byte		N16	, An3
	.byte	W18
	.byte		N11	, Fs3
	.byte	W13
	.byte	W01
	.byte		N04	, Ds3, v124
	.byte	W03
	.byte		N14	, En3, v127
	.byte	W14
	.byte		N15	, Dn3
	.byte	W18
	.byte			Bn2
	.byte	W15
	.byte		N03	, Fn2, v124
	.byte	W02
	.byte		N16	, Fs2, v127
	.byte	W17
	.byte		N32	, En2
	.byte	W24
	.byte	W02
	.byte	PAN	, c_v+36
	.byte		N04	, Cn4, v096
	.byte	W02
	.byte		N17	, Cs4, v104
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
	.byte		N04	, Fn4, v096
	.byte	W04
	.byte		N14	, Fs4
	.byte	W14
	.byte		TIE	, En4, v108
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
	.byte		N05	, Cn4, v092
	.byte	W04
	.byte		N15	, Cs4, v100
	.byte	W15
	.byte		N16	, An3, v108
	.byte	W17
	.byte		N13	, Fs3, v124
	.byte	W14
	.byte		N03	, Cn4, v068
	.byte	W03
	.byte		N15	, Cs4, v112
	.byte	W16
	.byte		TIE	, Bn3, v096
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
	.byte		N05	, Fn4, v100
	.byte	W01
	.byte	VOL	, v071
	.byte	W03
	.byte		N15	, Fs4, v088
	.byte	W15
	.byte		TIE	, En4, v096
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
	.byte	W01
	.byte		EOT	
	.byte	W02
	.byte	VOL	, v071
	.byte		N05	, Cn4, v092
	.byte	W04
	.byte		N15	, Cs4, v100
	.byte	W15
	.byte		N16	, An3, v108
	.byte	W17
	.byte		N13	, Fs3, v124
	.byte	W14
	.byte	VOL	, v068
	.byte	PAN	, c_v+36
	.byte		N04	, Cn4, v096
	.byte	W02
	.byte		N17	, Cs4, v104
	.byte	W18
	.byte		TIE	, Bn3
	.byte	W13
	.byte	VOL	, v067
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
	.byte	W15
	.byte	W08
	.byte		EOT	
	.byte	W40
	.byte	VOICE	, 62
	.byte	VOL	, v057
	.byte	PAN	, c_v
	.byte	W48
song079_3_1:
	.byte	W12
	.byte		N11	, Gs7, v020
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song079_3_1
	.byte	PATT	
		.word	song079_3_1
	.byte	PATT	
		.word	song079_3_1
	.byte	PATT	
		.word	song079_3_1
	.byte	PATT	
		.word	song079_3_1
	.byte	PATT	
		.word	song079_3_1
	.byte	PATT	
		.word	song079_3_1
	.byte	PATT	
		.word	song079_3_1
	.byte	PATT	
		.word	song079_3_1
	.byte	PATT	
		.word	song079_3_1
	.byte	PATT	
		.word	song079_3_1
	.byte	PATT	
		.word	song079_3_1
	.byte	PATT	
		.word	song079_3_1
	.byte	PATT	
		.word	song079_3_1
	.byte	PATT	
		.word	song079_3_1
	.byte	PATT	
		.word	song079_3_1
	.byte	PATT	
		.word	song079_3_1
	.byte	PATT	
		.word	song079_3_1
	.byte	PATT	
		.word	song079_3_1
	.byte	PATT	
		.word	song079_3_1
	.byte	PATT	
		.word	song079_3_1
	.byte	PATT	
		.word	song079_3_1
	.byte	PATT	
		.word	song079_3_1
	.byte	PATT	
		.word	song079_3_1
	.byte	PATT	
		.word	song079_3_1
	.byte	PATT	
		.word	song079_3_1
	.byte	PATT	
		.word	song079_3_1
	.byte	PATT	
		.word	song079_3_1
	.byte	PATT	
		.word	song079_3_1
	.byte	PATT	
		.word	song079_3_1
	.byte	PATT	
		.word	song079_3_1
	.byte	PATT	
		.word	song079_3_1
	.byte	PATT	
		.word	song079_3_1
	.byte	PATT	
		.word	song079_3_1
	.byte	PATT	
		.word	song079_3_1
	.byte	PATT	
		.word	song079_3_1
	.byte	PATT	
		.word	song079_3_1
	.byte	PATT	
		.word	song079_3_1
	.byte	PATT	
		.word	song079_3_1
	.byte	PATT	
		.word	song079_3_1
	.byte	PATT	
		.word	song079_3_1
	.byte	PATT	
		.word	song079_3_1
	.byte	PATT	
		.word	song079_3_1
	.byte	PATT	
		.word	song079_3_1
	.byte	PATT	
		.word	song079_3_1
	.byte	PATT	
		.word	song079_3_1
	.byte	PATT	
		.word	song079_3_1
	.byte	PATT	
		.word	song079_3_1
	.byte	PATT	
		.word	song079_3_1
	.byte	PATT	
		.word	song079_3_1
	.byte	W12
	.byte		N11	, Gs7, v020
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N11	
	.byte	W18
	.byte	VOL	, v057
	.byte	W06
	.byte		N11	
	.byte	W04
	.byte	VOL	, v053
	.byte	W08
	.byte	W12
	.byte		N11	
	.byte	W05
	.byte	VOL	, v052
	.byte	W16
	.byte		v051
	.byte	W03
	.byte		N11	
	.byte	W21
	.byte	VOL	, v050
	.byte	W03
	.byte		N11	
	.byte	W11
	.byte	VOL	, v048
	.byte	W13
	.byte		N11	
	.byte	W02
	.byte	VOL	, v047
	.byte	W10
	.byte	W04
	.byte		v047
	.byte	W08
	.byte		N11	
	.byte	W17
	.byte	VOL	, v045
	.byte	W07
	.byte		N11	
	.byte	W24
	.byte		N11	
	.byte	W05
	.byte	VOL	, v044
	.byte	W19
	.byte		v043
	.byte		N11	
	.byte	W12
	.byte	W12
	.byte		N11	
	.byte	W18
	.byte	VOL	, v042
	.byte	W06
	.byte		N11	
	.byte	W10
	.byte	VOL	, v041
	.byte	W14
	.byte		v040
	.byte		N11	
	.byte	W15
	.byte	VOL	, v038
	.byte	W09
	.byte		N11	
	.byte	W03
	.byte	VOL	, v038
	.byte	W09
	.byte	W01
	.byte		v036
	.byte	W11
	.byte		N11	
	.byte	W21
	.byte	VOL	, v035
	.byte	W03
	.byte		N11	
	.byte	W17
	.byte	VOL	, v034
	.byte	W07
	.byte		N11	
	.byte	W06
	.byte	VOL	, v033
	.byte	W07
	.byte		v031
	.byte	W09
	.byte		v029
	.byte	W02
	.byte		N11	
	.byte	W12
	.byte	W04
	.byte	VOL	, v028
	.byte	W08
	.byte		N11	
	.byte	W02
	.byte	VOL	, v028
	.byte	W10
	.byte		v026
	.byte	W10
	.byte		v025
	.byte	W02
	.byte		N11	
	.byte	W07
	.byte	VOL	, v023
	.byte	W09
	.byte		v023
	.byte	W08
	.byte		N11	
	.byte	W05
	.byte	VOL	, v022
	.byte	W16
	.byte		v020
	.byte	W03
	.byte		N11	
	.byte	W08
	.byte	VOL	, v019
	.byte	W04
	.byte	W12
	.byte		N11	
	.byte	W02
	.byte	VOL	, v019
	.byte	W14
	.byte		v017
	.byte	W08
	.byte		N11	
	.byte	W05
	.byte	VOL	, v016
	.byte	W10
	.byte		v015
	.byte	W08
	.byte		v013
	.byte	W01
	.byte		N11	
	.byte	W08
	.byte	VOL	, v011
	.byte	W16
	.byte		N11	
	.byte	W05
	.byte	VOL	, v010
	.byte	W07
	.byte	W05
	.byte		v009
	.byte	W07
	.byte		N11	
	.byte	W11
	.byte	VOL	, v008
	.byte	W13
	.byte		N11	
	.byte	W01
	.byte	VOL	, v007
	.byte	W21
	.byte		v006
	.byte	W02
	.byte		N11	
	.byte	W22
	.byte	VOL	, v004
	.byte	W02
	.byte		N11	
	.byte	W11
	.byte	VOL	, v004
	.byte	W01
	.byte	W12
	.byte		N11	
	.byte	W01
	.byte	VOL	, v003
	.byte	W23
	.byte		N11	
	.byte	W15
	.byte	VOL	, v001
	.byte	W09
	.byte		N11	
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte	VOICE	, 62
	.byte	VOL	, v086
	.byte	PAN	, c_v-19
	.byte	W12
	.byte		N08	, Fs7, v072
	.byte	W72
	.byte			Gn7
	.byte	W12
song079_3_2:
	.byte	W12
	.byte		N08	, Fs7, v072
	.byte	W72
	.byte			Gn7
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song079_3_2
song079_3_3:
	.byte	W12
	.byte		N08	, Fs7, v072
	.byte	W42
	.byte	W01
	.byte			Gn7
	.byte	W28
	.byte	W01
	.byte		N08	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song079_3_2
	.byte	PATT	
		.word	song079_3_2
	.byte	PATT	
		.word	song079_3_2
	.byte	PATT	
		.word	song079_3_3
	.byte	PATT	
		.word	song079_3_2
	.byte	PATT	
		.word	song079_3_2
	.byte	PATT	
		.word	song079_3_2
	.byte	PATT	
		.word	song079_3_3
	.byte	PATT	
		.word	song079_3_2
	.byte	PATT	
		.word	song079_3_2
	.byte	PATT	
		.word	song079_3_2
	.byte	PATT	
		.word	song079_3_2
	.byte	PATT	
		.word	song079_3_2
	.byte	PATT	
		.word	song079_3_2
	.byte	PATT	
		.word	song079_3_2
song079_3_4:
	.byte	W12
	.byte		N08	, Fs7, v072
	.byte	W36
	.byte			Gn7, v040
	.byte	W48
	.byte	PEND
	.byte	W96
	.byte	PATT	
		.word	song079_3_2
	.byte	PATT	
		.word	song079_3_2
	.byte	PATT	
		.word	song079_3_2
	.byte	PATT	
		.word	song079_3_3
	.byte	PATT	
		.word	song079_3_2
	.byte	PATT	
		.word	song079_3_2
	.byte	PATT	
		.word	song079_3_2
	.byte	PATT	
		.word	song079_3_2
	.byte	PATT	
		.word	song079_3_2
	.byte	PATT	
		.word	song079_3_2
	.byte	PATT	
		.word	song079_3_2
	.byte	PATT	
		.word	song079_3_4
	.byte	W96
	.byte	PATT	
		.word	song079_3_2
	.byte	PATT	
		.word	song079_3_2
	.byte	PATT	
		.word	song079_3_2
	.byte	PATT	
		.word	song079_3_3
	.byte	PATT	
		.word	song079_3_2
	.byte	PATT	
		.word	song079_3_2
	.byte	PATT	
		.word	song079_3_2
	.byte	PATT	
		.word	song079_3_3
	.byte	PATT	
		.word	song079_3_2
	.byte	PATT	
		.word	song079_3_2
	.byte	PATT	
		.word	song079_3_2
	.byte	PATT	
		.word	song079_3_3
	.byte	PATT	
		.word	song079_3_2
	.byte	PATT	
		.word	song079_3_2
	.byte	PATT	
		.word	song079_3_2
	.byte	PATT	
		.word	song079_3_2
	.byte	PATT	
		.word	song079_3_2
	.byte	PATT	
		.word	song079_3_2
	.byte	PATT	
		.word	song079_3_2
	.byte	W12
	.byte		N08	, Fs7, v072
	.byte	W36
	.byte			Gn7, v040
	.byte	W08
	.byte	FINE

	@********************** Track  4 **********************@

	.global song079_4
song079_4:	@ 0x082A9703
	.byte	KEYSH	, 0
	.byte	VOICE	, 3
	.byte	VOL	, v057
	.byte	PAN	, c_v
	.byte		N92	, Bn1, v120
	.byte	W96
	.byte		N96	, Gs1, v116
	.byte	W96
	.byte		N48	, Gn2, v120
	.byte	W48
	.byte			Gn1, v124
	.byte	W48
song079_4_1:
	.byte		N48	, An2, v120
	.byte	W48
	.byte			An1
	.byte	W48
	.byte	PEND
	.byte		N96	, Ds2, v092
	.byte	W96
	.byte			Gs1, v116
	.byte	W96
	.byte		N48	, Gn1, v120
	.byte	W48
	.byte			En2, v124
	.byte	W48
	.byte	PATT	
		.word	song079_4_1
	.byte		N96	, Gs1, v120
	.byte	W96
	.byte			Fn2, v116
	.byte	W96
	.byte		N48	, Cs2, v120
	.byte	W48
	.byte			Cs1, v124
	.byte	W48
	.byte			Fs2, v120
	.byte	W48
	.byte			Fs1
	.byte	W48
	.byte		N96	, Ds2
	.byte	W96
	.byte			Gs1, v116
	.byte	W96
	.byte			Gn1, v120
	.byte	W96
	.byte		N48	, Gn2
	.byte	W48
	.byte			En2
	.byte	W48
	.byte		N96	, Bn1, v116
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
	.byte		TIE	, Bn1, v108
	.byte	W16
	.byte	VOL	, v057
	.byte	W30
	.byte	W01
	.byte		v056
	.byte	W04
	.byte		v054
	.byte	W05
	.byte		v053
	.byte	W04
	.byte		v052
	.byte	W03
	.byte		v051
	.byte	W03
	.byte		v050
	.byte	W05
	.byte		v048
	.byte	W04
	.byte		v047
	.byte	W06
	.byte		v045
	.byte	W04
	.byte		v044
	.byte	W02
	.byte		v043
	.byte	W03
	.byte		v042
	.byte	W02
	.byte		v041
	.byte	W02
	.byte		v040
	.byte	W02
	.byte	W06
	.byte		EOT	
	.byte	W04
	.byte	VOL	, v038
	.byte	W84
	.byte	W02
	.byte	W48
	.byte	VOICE	, 46
	.byte	VOL	, v090
	.byte	PAN	, c_v-6
	.byte	BENDR	, 59
	.byte	W48
song079_4_2:
	.byte	W02
	.byte		N10	, Dn2, v092
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Dn3
	.byte	W10
	.byte	PEND
song079_4_4:
	.byte	W02
	.byte		N10	, Dn2, v092
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Fs3
	.byte	W10
	.byte	PEND
	.byte	PATT	
		.word	song079_4_2
song079_4_5:
	.byte	W02
	.byte		N10	, Dn2, v092
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			En3
	.byte	W10
	.byte	PEND
song079_4_3:
	.byte	W02
	.byte		N10	, An1, v092
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			An1
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			An1
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			An1
	.byte	W12
	.byte			An2
	.byte	W10
	.byte	PEND
song079_4_6:
	.byte	W02
	.byte		N10	, An1, v092
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			An1
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte			Bn2
	.byte	W10
	.byte	PEND
	.byte	PATT	
		.word	song079_4_3
song079_4_7:
	.byte	W02
	.byte		N10	, An1, v092
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			An1
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Cs3
	.byte	W10
	.byte	PEND
	.byte	PATT	
		.word	song079_4_2
	.byte	PATT	
		.word	song079_4_4
	.byte	PATT	
		.word	song079_4_2
	.byte	PATT	
		.word	song079_4_5
	.byte	PATT	
		.word	song079_4_3
	.byte	PATT	
		.word	song079_4_6
	.byte	PATT	
		.word	song079_4_3
	.byte	PATT	
		.word	song079_4_7
	.byte	W02
	.byte		N10	, Fs1, v092
	.byte	W12
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
	.byte	W12
	.byte			Fs2
	.byte	W10
	.byte	W02
	.byte			Fs1
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Fs1
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			An1
	.byte	W12
	.byte			An2
	.byte	W10
	.byte	PATT	
		.word	song079_4_2
	.byte	PATT	
		.word	song079_4_4
song079_4_8:
	.byte	W02
	.byte		N10	, Cs2, v092
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Cs3
	.byte	W10
	.byte	PEND
song079_4_9:
	.byte	W02
	.byte		N10	, Cs2, v092
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Cs3
	.byte	W10
	.byte	PEND
	.byte	PATT	
		.word	song079_4_2
	.byte	W02
	.byte		N10	, Dn2, v092
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte			Fn3
	.byte	W10
	.byte	W02
	.byte			Fs2
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Fs3
	.byte	W10
	.byte	W02
	.byte			Fs2
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Gs3
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			An3
	.byte	W10
	.byte	PATT	
		.word	song079_4_2
	.byte	PATT	
		.word	song079_4_4
	.byte	PATT	
		.word	song079_4_8
	.byte	PATT	
		.word	song079_4_9
	.byte	PATT	
		.word	song079_4_2
	.byte	W02
	.byte		N10	, En2, v092
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			En3
	.byte	W10
	.byte	PATT	
		.word	song079_4_2
	.byte	PATT	
		.word	song079_4_4
	.byte	PATT	
		.word	song079_4_2
	.byte	PATT	
		.word	song079_4_5
	.byte	PATT	
		.word	song079_4_8
song079_4_10:
	.byte	W02
	.byte		N10	, Cs2, v092
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			En3
	.byte	W10
	.byte	PEND
	.byte	PATT	
		.word	song079_4_2
	.byte	PATT	
		.word	song079_4_8
	.byte	PATT	
		.word	song079_4_2
	.byte	PATT	
		.word	song079_4_4
	.byte	PATT	
		.word	song079_4_2
	.byte	PATT	
		.word	song079_4_5
	.byte	PATT	
		.word	song079_4_8
	.byte	PATT	
		.word	song079_4_10
	.byte	W02
	.byte		N10	, Dn1, v092
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Dn1
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Dn1
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Dn1
	.byte	W12
	.byte			Dn2
	.byte	W10
	.byte	W02
	.byte			En1
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			En1
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			Fs1
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte			Gs2
	.byte	W10
	.byte	PATT	
		.word	song079_4_2
	.byte	PATT	
		.word	song079_4_4
	.byte	PATT	
		.word	song079_4_2
	.byte	W02
	.byte		N10	, Dn2, v092
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			En2
	.byte	W04
	.byte	VOL	, v090
	.byte	W08
	.byte		N10	, En3
	.byte	W04
	.byte	VOL	, v084
	.byte	W06
	.byte	W02
	.byte		N10	, An1
	.byte	W12
	.byte			An2
	.byte	W05
	.byte	VOL	, v082
	.byte	W07
	.byte		N10	, An1
	.byte	W09
	.byte	VOL	, v081
	.byte	W03
	.byte		N10	, An2
	.byte	W12
	.byte			An1
	.byte	W08
	.byte	VOL	, v079
	.byte	W04
	.byte		N10	, An2
	.byte	W10
	.byte	VOL	, v077
	.byte	W02
	.byte		N10	, An1
	.byte	W12
	.byte			An2
	.byte	W02
	.byte	VOL	, v076
	.byte	W08
	.byte	W02
	.byte		N10	, An1
	.byte	W03
	.byte	VOL	, v073
	.byte	W09
	.byte		N10	, An2
	.byte	W12
	.byte			An1
	.byte	W05
	.byte	VOL	, v071
	.byte	W07
	.byte		N10	, An2
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte			Bn2
	.byte	W05
	.byte	VOL	, v070
	.byte	W07
	.byte		N10	, Bn1
	.byte	W12
	.byte	VOL	, v068
	.byte		N10	, Bn2
	.byte	W10
	.byte	W02
	.byte			An1
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			An1
	.byte	W06
	.byte	VOL	, v066
	.byte	W06
	.byte		N10	, An2
	.byte	W10
	.byte	VOL	, v065
	.byte	W02
	.byte		N10	, An1
	.byte	W12
	.byte	VOL	, v063
	.byte		N10	, An2
	.byte	W12
	.byte			An1
	.byte	W03
	.byte	VOL	, v061
	.byte	W09
	.byte		N10	, An2
	.byte	W03
	.byte	VOL	, v059
	.byte	W07
	.byte	W02
	.byte		v057
	.byte		N10	, An1
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			An1
	.byte	W09
	.byte	VOL	, v056
	.byte	W03
	.byte		N10	, An2
	.byte	W12
	.byte			Bn1
	.byte	W05
	.byte	VOL	, v054
	.byte	W07
	.byte		N10	, Bn2
	.byte	W06
	.byte	VOL	, v052
	.byte	W06
	.byte		N10	, Cs2
	.byte	W01
	.byte	VOL	, v048
	.byte	W09
	.byte		v047
	.byte	W02
	.byte		N10	, Cs3
	.byte	W10
	.byte	W02
	.byte			Dn2
	.byte	W04
	.byte	VOL	, v045
	.byte	W08
	.byte		N10	, Dn3
	.byte	W01
	.byte	VOL	, v043
	.byte	W11
	.byte		v042
	.byte		N10	, Dn2
	.byte	W09
	.byte	VOL	, v040
	.byte	W03
	.byte		N10	, Dn3
	.byte	W07
	.byte	VOL	, v038
	.byte	W05
	.byte		N10	, Dn2
	.byte	W04
	.byte	VOL	, v036
	.byte	W08
	.byte		N10	, Dn3
	.byte	W05
	.byte	VOL	, v034
	.byte	W07
	.byte		N10	, Dn2
	.byte	W09
	.byte	VOL	, v033
	.byte	W03
	.byte		N10	, Dn3
	.byte	W08
	.byte	VOL	, v031
	.byte	W02
	.byte	W02
	.byte		N10	, Dn2
	.byte	W12
	.byte			Dn3
	.byte	W01
	.byte	VOL	, v029
	.byte	W11
	.byte		N10	, Dn2
	.byte	W04
	.byte	VOL	, v028
	.byte	W08
	.byte		N10	, Dn3
	.byte	W05
	.byte	VOL	, v026
	.byte	W07
	.byte		N10	, En2
	.byte	W02
	.byte	VOL	, v023
	.byte	W09
	.byte		v020
	.byte	W01
	.byte		N10	, En3
	.byte	W08
	.byte	VOL	, v019
	.byte	W04
	.byte		N10	, Fs2
	.byte	W12
	.byte			Fs3
	.byte	W04
	.byte	VOL	, v017
	.byte	W06
	.byte	W02
	.byte		N10	, Dn2
	.byte	W05
	.byte	VOL	, v015
	.byte	W07
	.byte		N10	, Dn3
	.byte	W11
	.byte	VOL	, v014
	.byte	W01
	.byte		N10	, Dn2
	.byte	W12
	.byte			Dn3
	.byte	W01
	.byte	VOL	, v011
	.byte	W11
	.byte		N10	, Dn2
	.byte	W10
	.byte	VOL	, v009
	.byte	W02
	.byte		N10	, Dn3
	.byte	W12
	.byte			Dn2
	.byte	W09
	.byte	VOL	, v008
	.byte	W03
	.byte		N10	, Dn3
	.byte	W10
	.byte	VOL	, v006
	.byte	W02
	.byte		N10	, Dn2
	.byte	W12
	.byte			Dn3
	.byte	W01
	.byte	VOL	, v004
	.byte	W11
	.byte		N10	, Dn2
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			En2
	.byte	W03
	.byte	VOL	, v003
	.byte	W09
	.byte		N10	, En3
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			En3
	.byte	W10
	.byte	VOICE	, 46
	.byte	VOL	, v095
	.byte	PAN	, c_v-6
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song079_4_11:
	.byte		N44	, Bn1, v120
	.byte	W48
	.byte		N32	, Gs1
	.byte	W48
	.byte	PEND
song079_4_12:
	.byte		N42	, Cs2, v120
	.byte	W48
	.byte		N36	, Gn1
	.byte	W48
	.byte	PEND
song079_4_13:
	.byte		N40	, Cn2, v120
	.byte	W48
	.byte		N42	, Fn1
	.byte	W48
	.byte	PEND
song079_4_14:
	.byte		N48	, En1, v120
	.byte	W48
	.byte		N44	, Fs1
	.byte	W48
	.byte	PEND
	.byte	PATT	
		.word	song079_4_11
	.byte	PATT	
		.word	song079_4_12
	.byte	PATT	
		.word	song079_4_13
	.byte	PATT	
		.word	song079_4_14
song079_4_15:
	.byte		N09	, En2, v120
	.byte	W19
	.byte		N24	, En1
	.byte	W28
	.byte	W01
	.byte		N09	, Ds2
	.byte	W19
	.byte		N24	, Ds1
	.byte	W28
	.byte	W01
	.byte	PEND
song079_4_17:
	.byte		N09	, Cs2, v120
	.byte	W19
	.byte		N28	, Cs1
	.byte	W28
	.byte	W01
	.byte		N09	, Ds2
	.byte	W19
	.byte		N28	, Ds1
	.byte	W28
	.byte	W01
	.byte	PEND
song079_4_18:
	.byte		N09	, En2, v120
	.byte	W19
	.byte		N28	, En1
	.byte	W28
	.byte	W01
	.byte		N09	, Ds2
	.byte	W19
	.byte		N28	, Ds1
	.byte	W28
	.byte	W01
	.byte	PEND
song079_4_19:
	.byte		N09	, Cs2, v120
	.byte	W19
	.byte		N23	, Cs1
	.byte	W28
	.byte	W01
	.byte		N09	, Fs2
	.byte	W24
	.byte		N23	, Fs1
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song079_4_15
song079_4_20:
	.byte		N09	, Cs2, v120
	.byte	W19
	.byte		N24	, Cs1
	.byte	W28
	.byte	W01
	.byte		N09	, Ds2
	.byte	W19
	.byte		N24	, Ds1
	.byte	W28
	.byte	W01
	.byte	PEND
	.byte	PATT	
		.word	song079_4_15
	.byte		N09	, Cs2, v120
	.byte	W19
	.byte		N24	, Cs1
	.byte	W28
	.byte	W01
	.byte		N48	, En1
	.byte	W04
	.byte	VOL	, v095
	.byte	W03
	.byte		v094
	.byte	W02
	.byte		v093
	.byte	W01
	.byte		v092
	.byte	W01
	.byte		v090
	.byte	W01
	.byte		v090
	.byte	W01
	.byte		v089
	.byte	W01
	.byte		v088
	.byte	W01
	.byte		v085
	.byte	W01
	.byte		v085
	.byte	W02
	.byte		v084
	.byte	W01
	.byte		v083
	.byte	W01
	.byte		v081
	.byte	W01
	.byte		v081
	.byte	W01
	.byte		v079
	.byte	W01
	.byte		v078
	.byte	W01
	.byte		v077
	.byte	W01
	.byte		v076
	.byte	W01
	.byte		v075
	.byte	W01
	.byte		v072
	.byte	W01
	.byte		v071
	.byte	W01
	.byte		v070
	.byte	W01
	.byte		v068
	.byte	W01
	.byte		v067
	.byte	W01
	.byte		v066
	.byte	W01
	.byte		v065
	.byte	W01
	.byte		v064
	.byte	W01
	.byte		v063
	.byte	W01
	.byte		v061
	.byte	W01
	.byte		v060
	.byte	W01
	.byte		v059
	.byte	W02
	.byte		v057
	.byte	W02
	.byte		v057
	.byte	W01
	.byte		v056
	.byte	W01
	.byte		v054
	.byte	W01
	.byte		v052
	.byte	W02
	.byte		v052
	.byte	W01
	.byte		v051
	.byte		N56	, An1
	.byte	W02
	.byte	VOL	, v050
	.byte	W01
	.byte		v047
	.byte	W02
	.byte		v047
	.byte	W02
	.byte		v046
	.byte	W01
	.byte		v045
	.byte	W02
	.byte		v042
	.byte	W01
	.byte		v042
	.byte	W01
	.byte		v041
	.byte	W02
	.byte		v040
	.byte	W01
	.byte		v039
	.byte	W01
	.byte		v038
	.byte	W02
	.byte		v038
	.byte	W01
	.byte		v036
	.byte	W02
	.byte		v035
	.byte	W01
	.byte		v034
	.byte	W01
	.byte		v033
	.byte	W01
	.byte		v033
	.byte	W01
	.byte		v032
	.byte	W03
	.byte		v031
	.byte	W02
	.byte		v029
	.byte	W01
	.byte		v028
	.byte	W02
	.byte		v028
	.byte	W03
	.byte		v027
	.byte	W03
	.byte		v026
	.byte	W02
	.byte		v025
	.byte	W06
	.byte		v024
	.byte	W24
	.byte	W01
	.byte	VOICE	, 42
	.byte	VOL	, v090
	.byte	W24
	.byte		N44	, Ds1, v096
	.byte	W48
	.byte			Dn1
	.byte	W48
	.byte			Cs1
	.byte	W48
	.byte			Gn1
	.byte	W48
	.byte			Cn1
	.byte	W48
	.byte			Fn1
	.byte	W48
	.byte			En1
	.byte	W48
	.byte			Fs1
	.byte	W48
song079_4_16:
	.byte		N09	, En2, v096
	.byte	W19
	.byte		N24	, En1
	.byte	W28
	.byte	W01
	.byte		N09	, Ds2
	.byte	W19
	.byte		N24	, Ds1
	.byte	W28
	.byte	W01
	.byte	PEND
	.byte		N09	, Cs2
	.byte	W19
	.byte		N28	, Cs1
	.byte	W28
	.byte	W01
	.byte		N09	, Ds2
	.byte	W19
	.byte		N28	, Ds1
	.byte	W28
	.byte	W01
	.byte		N09	, En2
	.byte	W19
	.byte		N28	, En1
	.byte	W28
	.byte	W01
	.byte		N09	, Ds2
	.byte	W19
	.byte		N28	, Ds1
	.byte	W28
	.byte	W01
	.byte		N09	, Cs2
	.byte	W19
	.byte		N23	, Cs1
	.byte	W28
	.byte	W01
	.byte		N09	, Fs2
	.byte	W24
	.byte		N23	, Fs1
	.byte	W24
	.byte	PATT	
		.word	song079_4_16
	.byte		N09	, Cs2, v096
	.byte	W19
	.byte		N24	, Cs1
	.byte	W28
	.byte	W01
	.byte		N09	, Ds2
	.byte	W19
	.byte		N24	, Ds1
	.byte	W28
	.byte	W01
	.byte	PATT	
		.word	song079_4_16
	.byte		N09	, Cs2, v096
	.byte	W19
	.byte		N24	, Cs1
	.byte	W28
	.byte	W01
	.byte		TIE	, En1
	.byte	W04
	.byte	VOL	, v095
	.byte	W03
	.byte		v094
	.byte	W02
	.byte		v093
	.byte	W01
	.byte		v092
	.byte	W01
	.byte		v090
	.byte	W01
	.byte		v090
	.byte	W01
	.byte		v089
	.byte	W01
	.byte		v088
	.byte	W01
	.byte		v085
	.byte	W01
	.byte		v085
	.byte	W02
	.byte		v084
	.byte	W01
	.byte		v083
	.byte	W01
	.byte		v081
	.byte	W01
	.byte		v081
	.byte	W01
	.byte		v079
	.byte	W01
	.byte		v078
	.byte	W01
	.byte		v077
	.byte	W01
	.byte		v076
	.byte	W01
	.byte		v075
	.byte	W01
	.byte		v072
	.byte	W01
	.byte		v071
	.byte	W01
	.byte		v070
	.byte	W01
	.byte		v068
	.byte	W01
	.byte		v067
	.byte	W01
	.byte		v066
	.byte	W01
	.byte		v065
	.byte	W01
	.byte		v064
	.byte	W01
	.byte		v063
	.byte	W01
	.byte		v061
	.byte	W01
	.byte		v060
	.byte	W01
	.byte		v059
	.byte	W02
	.byte		v057
	.byte	W02
	.byte		v057
	.byte	W01
	.byte		v056
	.byte	W01
	.byte		v054
	.byte	W01
	.byte		v052
	.byte	W02
	.byte		v052
	.byte	W01
	.byte		v051
	.byte	W02
	.byte		v050
	.byte	W01
	.byte		v047
	.byte	W02
	.byte		v047
	.byte	W02
	.byte		v046
	.byte	W01
	.byte		v045
	.byte	W02
	.byte		v042
	.byte	W01
	.byte		v042
	.byte	W01
	.byte		v041
	.byte	W02
	.byte		v040
	.byte	W01
	.byte		v039
	.byte	W01
	.byte		v038
	.byte	W02
	.byte		v038
	.byte	W01
	.byte		v036
	.byte	W02
	.byte		v035
	.byte	W01
	.byte		v034
	.byte	W01
	.byte		v033
	.byte	W01
	.byte		v033
	.byte	W01
	.byte		v032
	.byte	W03
	.byte		v031
	.byte	W02
	.byte		v029
	.byte	W01
	.byte		v028
	.byte	W02
	.byte		v028
	.byte	W03
	.byte		v027
	.byte	W03
	.byte		v026
	.byte	W02
	.byte		v025
	.byte	W06
	.byte		v024
	.byte	W02
	.byte		EOT	
	.byte	W44
	.byte	W01
	.byte	VOL	, v095
	.byte	W02
	.byte		N44	, Bn1, v100
	.byte	W48
	.byte			Gs1
	.byte	W48
	.byte			Cs2
	.byte	W48
	.byte			Gn1
	.byte	W48
	.byte			Cn2
	.byte	W48
	.byte			Fn1
	.byte	W48
	.byte			En1
	.byte	W48
	.byte			Fs1
	.byte	W48
	.byte	VOICE	, 46
	.byte		N44	, Bn1, v120
	.byte	W48
	.byte		N32	, Gs1
	.byte	W48
	.byte	PATT	
		.word	song079_4_12
	.byte	PATT	
		.word	song079_4_13
	.byte	PATT	
		.word	song079_4_14
	.byte	PATT	
		.word	song079_4_11
	.byte	PATT	
		.word	song079_4_12
	.byte	PATT	
		.word	song079_4_13
	.byte	PATT	
		.word	song079_4_14
	.byte	PATT	
		.word	song079_4_15
	.byte	PATT	
		.word	song079_4_17
	.byte	PATT	
		.word	song079_4_18
	.byte	PATT	
		.word	song079_4_19
	.byte	PATT	
		.word	song079_4_15
	.byte	PATT	
		.word	song079_4_20
	.byte	PATT	
		.word	song079_4_15
	.byte		N09	, Cs2, v120
	.byte	W19
	.byte		N24	, Cs1
	.byte	W28
	.byte	W01
	.byte		N48	, En1
	.byte	W32
	.byte	W02
	.byte	VOL	, v090
	.byte	W01
	.byte		v087
	.byte	W05
	.byte		v085
	.byte	W02
	.byte		v085
	.byte	W03
	.byte		v082
	.byte	W02
	.byte		v081
	.byte	W01
	.byte		N56	, An1
	.byte	W02
	.byte	VOL	, v078
	.byte	W05
	.byte		v075
	.byte	W03
	.byte		v072
	.byte	W02
	.byte		v071
	.byte	W04
	.byte		v069
	.byte	W03
	.byte		v066
	.byte	W03
	.byte		v064
	.byte	W01
	.byte		v063
	.byte	W02
	.byte		v062
	.byte	W03
	.byte		v060
	.byte	W03
	.byte		v059
	.byte	W03
	.byte		v057
	.byte	W01
	.byte		v056
	.byte	W02
	.byte		v054
	.byte	W02
	.byte		v052
	.byte	W01
	.byte		v051
	.byte	W03
	.byte		v048
	.byte	W02
	.byte		v047
	.byte	W04
	.byte		v044
	.byte	W01
	.byte		v043
	.byte	W03
	.byte		v041
	.byte	W02
	.byte		v036
	.byte	W01
	.byte		v034
	.byte	W36
	.byte	W02
	.byte		v095
	.byte	W02
	.byte		N48	, Bn1
	.byte	W48
	.byte		N44	, Gs1
	.byte	W48
	.byte			Cs2
	.byte	W48
	.byte			Gn1
	.byte	W48
	.byte		N48	, Cn2
	.byte	W48
	.byte			Fn1
	.byte	W48
	.byte			En1
	.byte	W48
	.byte			Fs1
	.byte	W48
	.byte		N13	, En2, v100
	.byte	W19
	.byte		N24	, En1
	.byte	W28
	.byte	W01
	.byte		N13	, Ds2
	.byte	W19
	.byte		N24	, Ds1
	.byte	W28
	.byte	W01
	.byte		N13	, Cs2
	.byte	W19
	.byte		N28	, Cs1
	.byte	W28
	.byte	W01
	.byte		N13	, Ds2
	.byte	W19
	.byte		N28	, Ds1
	.byte	W28
	.byte	W01
	.byte		N13	, En2
	.byte	W19
	.byte		N28	, En1
	.byte	W28
	.byte	W01
	.byte		N13	, Ds2
	.byte	W19
	.byte		N28	, Ds1
	.byte	W06
	.byte	VOL	, v095
	.byte	W01
	.byte		v091
	.byte	W04
	.byte		v090
	.byte	W11
	.byte		v089
	.byte	W04
	.byte		v087
	.byte	W03
	.byte		N13	, Cs2
	.byte	W02
	.byte	VOL	, v085
	.byte	W05
	.byte		v085
	.byte	W02
	.byte		v083
	.byte	W10
	.byte		N23	, Cs1
	.byte	W16
	.byte	VOL	, v082
	.byte	W04
	.byte		v081
	.byte	W03
	.byte		v080
	.byte	W03
	.byte		v078
	.byte	W03
	.byte		v076
	.byte		N14	, Fs2
	.byte	W03
	.byte	VOL	, v076
	.byte	W10
	.byte		v074
	.byte	W06
	.byte		v071
	.byte	W03
	.byte		v071
	.byte	W02
	.byte		N23	, Fs1
	.byte	W06
	.byte	VOL	, v069
	.byte	W03
	.byte		v067
	.byte	W01
	.byte		v066
	.byte	W03
	.byte		v065
	.byte	W04
	.byte		v064
	.byte	W02
	.byte		v062
	.byte	W03
	.byte		v062
	.byte	W02
	.byte		N13	, En2
	.byte	W06
	.byte	VOL	, v060
	.byte	W02
	.byte		v059
	.byte	W02
	.byte		v057
	.byte	W04
	.byte		v056
	.byte	W04
	.byte		v055
	.byte	W01
	.byte		N24	, En1
	.byte	W04
	.byte	VOL	, v053
	.byte	W06
	.byte		v052
	.byte	W01
	.byte		v051
	.byte	W02
	.byte		v050
	.byte	W05
	.byte		v048
	.byte	W05
	.byte		v047
	.byte	W03
	.byte		v046
	.byte	W03
	.byte		N13	, Ds2
	.byte	W02
	.byte	VOL	, v044
	.byte	W02
	.byte		v043
	.byte	W01
	.byte		v042
	.byte	W05
	.byte		v041
	.byte	W03
	.byte		v039
	.byte	W02
	.byte		v038
	.byte	W04
	.byte		N24	, Ds1
	.byte	W03
	.byte	VOL	, v037
	.byte	W02
	.byte		v035
	.byte	W02
	.byte		v034
	.byte	W07
	.byte		v033
	.byte	W13
	.byte		v032
	.byte	W02
	.byte		N13	, Cs2
	.byte	W02
	.byte	VOL	, v030
	.byte	W02
	.byte		v029
	.byte	W06
	.byte		v028
	.byte	W09
	.byte		N24	, Cs1
	.byte	W07
	.byte	VOL	, v026
	.byte	W06
	.byte		v025
	.byte	W03
	.byte		v023
	.byte	W04
	.byte		v023
	.byte	W08
	.byte		v021
	.byte	W01
	.byte		N13	, Ds2, v092
	.byte	W02
	.byte	VOL	, v020
	.byte	W03
	.byte		v019
	.byte	W02
	.byte		v017
	.byte	W04
	.byte		v016
	.byte	W03
	.byte		v014
	.byte	W04
	.byte		v014
	.byte	W01
	.byte		N24	, Ds1, v100
	.byte	W04
	.byte	VOL	, v012
	.byte	W03
	.byte		v011
	.byte	W05
	.byte		v009
	.byte	W06
	.byte		v008
	.byte	W08
	.byte		v007
	.byte	W03
	.byte		N13	, En2
	.byte	W05
	.byte	VOL	, v005
	.byte	W08
	.byte		v004
	.byte	W04
	.byte		v003
	.byte	W02
	.byte		N24	, En1
	.byte	W28
	.byte	W01
	.byte		N13	, Ds2
	.byte	W19
	.byte		N24	, Ds1
	.byte	W28
	.byte	W01
	.byte		N13	, Cs2
	.byte	W19
	.byte		N24	, Cs1
	.byte	W28
	.byte	W01
	.byte		N48	, En1
	.byte	W48
	.byte		N56	, An1
	.byte	W56
	.byte	W02
	.byte	FINE

	@********************** Track  5 **********************@

	.global song079_5
song079_5:	@ 0x082A9EB8
	.byte	KEYSH	, 0
	.byte	VOICE	, 5
	.byte	VOL	, v037
	.byte	PAN	, c_v-31
	.byte	LFOS	, 127
	.byte	MOD	, 127
	.byte	TUNE	, c_v
	.byte		TIE	, Cn7, v100
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
	.byte	W96
	.byte	W96
	.byte	W23
	.byte		EOT	
	.byte	W72
	.byte	W01
song079_5_1:
	.byte	VOL	, v037
	.byte		TIE	, Cn7, v100
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
song079_5_2:
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
	.byte	PATT	
		.word	song079_5_1
	.byte	PATT	
		.word	song079_5_2
	.byte	W96
	.byte	W23
	.byte		EOT	, Cn7
	.byte	W72
	.byte	W01
	.byte	PATT	
		.word	song079_5_1
	.byte	PATT	
		.word	song079_5_2
	.byte	W96
	.byte	W23
	.byte		EOT	, Cn7
	.byte	W72
	.byte	W01
song079_5_3:
	.byte		TIE	, Cn7, v100
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
		.word	song079_5_2
	.byte	W96
	.byte	W23
	.byte		EOT	, Cn7
	.byte	W72
	.byte	W01
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song079_5_3
	.byte	PATT	
		.word	song079_5_2
	.byte	W06
	.byte		EOT	, Cn7
	.byte	W42
	.byte	VOICE	, 98
	.byte	VOL	, v090
	.byte	PAN	, c_v-29
	.byte	LFOS	, 0
	.byte	MOD	, 0
	.byte	BEND	, c_v
	.byte	W48
song079_5_12:
	.byte		N12	, Cs3, v104
	.byte	W24
	.byte			Bn2
	.byte	W24
	.byte			As2, v100
	.byte	W12
	.byte			Bn2, v104
	.byte	W24
	.byte		N68	, Fs2, v100
	.byte	W12
	.byte	PEND
song079_5_13:
	.byte	W60
	.byte		N05	, Ds2, v092
	.byte	W12
	.byte		N12	, Fs2, v104
	.byte	W12
	.byte			Ds2, v096
	.byte	W12
	.byte	PEND
song079_5_14:
	.byte		N12	, Cs3, v104
	.byte	W24
	.byte			Bn2
	.byte	W24
	.byte			As2
	.byte	W12
	.byte			Bn2
	.byte	W24
	.byte			Cs3
	.byte	W12
	.byte	PEND
	.byte	W12
	.byte		N44	, Fs2, v100
	.byte	W48
	.byte		N04	, Ds2, v088
	.byte	W12
	.byte		N12	, Fs2, v100
	.byte	W12
	.byte			Ds2, v084
	.byte	W12
	.byte			Gs2, v104
	.byte	W24
	.byte			Fs2, v100
	.byte	W24
	.byte			Ds2
	.byte	W12
	.byte			Fs2, v096
	.byte	W24
	.byte			Fs2, v100
	.byte	W12
	.byte	W12
	.byte		N12	
	.byte	W24
	.byte		N06	, Ds2
	.byte	W12
	.byte		N24	, As2
	.byte	W24
	.byte			Ds2, v088
	.byte	W24
	.byte		N12	, Gs2, v096
	.byte	W24
	.byte			Fs2, v100
	.byte	W24
	.byte			Ds2, v096
	.byte	W12
	.byte			Fs2, v088
	.byte	W24
	.byte			As2, v104
	.byte	W12
	.byte	W12
	.byte		N44	, Fs2, v088
	.byte	W48
	.byte		N05	, Ds2, v072
	.byte	W12
	.byte		N12	, Fs2, v080
	.byte	W12
	.byte		N08	, Ds2, v084
	.byte	W12
	.byte		N12	, Cs3, v104
	.byte	W24
	.byte			Bn2, v100
	.byte	W24
	.byte			As2, v104
	.byte	W12
	.byte			Bn2, v096
	.byte	W24
	.byte		N68	, Fs2, v100
	.byte	W12
	.byte	W60
	.byte		N05	, Ds2
	.byte	W12
	.byte		N12	, Fs2
	.byte	W12
	.byte			Ds2, v092
	.byte	W12
	.byte			Cs3, v104
	.byte	W24
	.byte			Bn2
	.byte	W24
	.byte			As2, v100
	.byte	W12
	.byte			Bn2, v096
	.byte	W24
	.byte			Cs3, v088
	.byte	W12
	.byte	W12
	.byte		N44	, Fs2, v100
	.byte	W48
	.byte		N03	, Ds2, v084
	.byte	W12
	.byte		N12	, Fs2, v096
	.byte	W12
	.byte			Ds2, v088
	.byte	W12
	.byte			Gs2, v100
	.byte	W24
	.byte			Fs2
	.byte	W24
	.byte			Ds2, v096
	.byte	W12
	.byte			Fs2, v092
	.byte	W24
	.byte			Fs2, v100
	.byte	W12
	.byte	W12
	.byte			Fs2, v096
	.byte	W24
	.byte		N06	, Ds2
	.byte	W12
	.byte		N23	, As2, v104
	.byte	W24
	.byte		N24	, Ds2, v088
	.byte	W24
	.byte		N12	, Gs2, v100
	.byte	W24
	.byte			Fs2
	.byte	W24
	.byte			Ds2, v096
	.byte	W12
	.byte			Fs2, v092
	.byte	W24
	.byte			As2, v104
	.byte	W12
	.byte	W12
	.byte		N78	, Fs2, v096
	.byte	W84
song079_5_4:
	.byte		N12	, Ds2, v104
	.byte	W24
	.byte			Cs2, v100
	.byte	W24
	.byte			As1
	.byte	W12
	.byte			Cs2, v096
	.byte	W24
	.byte			Cs2, v100
	.byte	W12
	.byte	PEND
song079_5_5:
	.byte	W12
	.byte		N12	, Cs2, v100
	.byte	W24
	.byte		N06	, As1
	.byte	W12
	.byte		N24	, Fs2
	.byte	W24
	.byte			As1, v088
	.byte	W24
	.byte	PEND
song079_5_6:
	.byte		N12	, Ds2, v096
	.byte	W24
	.byte			Cs2, v100
	.byte	W24
	.byte			Gs1, v096
	.byte	W12
	.byte			Bn1, v088
	.byte	W24
	.byte			Fs2, v104
	.byte	W12
	.byte	PEND
song079_5_7:
	.byte	W12
	.byte		N12	, Fs2, v100
	.byte	W24
	.byte		N06	, Gs1
	.byte	W12
	.byte		N24	
	.byte	W24
	.byte			Fs2, v088
	.byte	W24
	.byte	PEND
song079_5_8:
	.byte		N12	, As1, v104
	.byte	W24
	.byte			Gs1, v100
	.byte	W24
	.byte			Fn1
	.byte	W12
	.byte			Gs1, v096
	.byte	W24
	.byte			Gs1, v100
	.byte	W12
	.byte	PEND
song079_5_9:
	.byte	W12
	.byte		N12	, Gs1, v100
	.byte	W24
	.byte		N06	, Fn1
	.byte	W12
	.byte		N24	, Cs2
	.byte	W24
	.byte			Fn1, v088
	.byte	W24
	.byte	PEND
song079_5_10:
	.byte		N12	, Bn1, v096
	.byte	W24
	.byte			As1, v100
	.byte	W24
	.byte			Ds1, v096
	.byte	W12
	.byte			Fs1, v088
	.byte	W24
	.byte			Cs2, v104
	.byte	W12
	.byte	PEND
song079_5_11:
	.byte	W12
	.byte		N36	, Cs2, v088
	.byte	W36
	.byte		N05	, Gs1, v068
	.byte	W12
	.byte		N05	
	.byte	W10
	.byte		N13	, Cs2, v072
	.byte	W14
	.byte		N05	, Gs1, v068
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song079_5_4
	.byte	PATT	
		.word	song079_5_5
	.byte	PATT	
		.word	song079_5_6
	.byte	PATT	
		.word	song079_5_7
	.byte	PATT	
		.word	song079_5_8
	.byte	PATT	
		.word	song079_5_9
	.byte	PATT	
		.word	song079_5_10
	.byte	PATT	
		.word	song079_5_11
	.byte		N72	, Bn1, v076
	.byte	W72
	.byte		N12	, Cs2, v084
	.byte	W12
	.byte		N72	, Ds2, v088
	.byte	W12
	.byte	W60
	.byte		N36	, Fn2, v096
	.byte	W36
	.byte		N72	, Fs2, v092
	.byte	W72
	.byte		N12	, Fn2, v080
	.byte	W12
	.byte		N72	, Cs2, v084
	.byte	W12
	.byte	W60
	.byte		N32	, Gs2, v096
	.byte	W36
	.byte		N92	, As1, v068
	.byte	W96
	.byte		N56	, Fn2, v084
	.byte	W60
	.byte		N24	, Ds2
	.byte	W24
	.byte		N16	, Fn2, v080
	.byte	W12
	.byte		N17	, Fs2, v096
	.byte	W18
	.byte		N15	, Gs2, v092
	.byte	W18
	.byte		N12	, Ds2, v088
	.byte	W12
	.byte		N48	, Fs2, v084
	.byte	W48
	.byte			Gs2, v092
	.byte	W48
	.byte		N44	, Fn2, v080
	.byte	W48
	.byte		N72	, Bn2, v076
	.byte	W72
	.byte		N12	, Cs3, v084
	.byte	W12
	.byte		N72	, Ds3, v088
	.byte	W12
	.byte	W60
	.byte		N36	, Fn3, v096
	.byte	W36
	.byte		N72	, Fs3, v092
	.byte	W72
	.byte		N12	, Fn3, v080
	.byte	W12
	.byte		N72	, Cs3, v084
	.byte	W12
	.byte	W60
	.byte		N24	, Gs2, v096
	.byte	W24
	.byte		N12	, Fs2, v076
	.byte	W12
	.byte		N92	, As2, v068
	.byte	W96
	.byte		N56	, Cs3, v084
	.byte	W60
	.byte		N24	, As2
	.byte	W24
	.byte		N12	, Cs3, v080
	.byte	W12
	.byte		N17	, Fs3, v096
	.byte	W18
	.byte		N18	, Gs3, v092
	.byte	W18
	.byte		N12	, Ds3, v088
	.byte	W12
	.byte		N48	, Fs3, v084
	.byte	W48
	.byte			Gs3, v092
	.byte	W48
	.byte			Cs4, v080
	.byte	W48
	.byte	PATT	
		.word	song079_5_12
	.byte	PATT	
		.word	song079_5_13
	.byte	PATT	
		.word	song079_5_14
	.byte	W12
	.byte		N44	, Fs2, v100
	.byte	W48
	.byte		N04	, Ds2, v088
	.byte	W12
	.byte		N12	, Fs2, v100
	.byte	W06
	.byte	VOL	, v090
	.byte	W06
	.byte		N12	, Ds2, v084
	.byte	W05
	.byte	VOL	, v084
	.byte	W07
	.byte		N12	, Gs2, v104
	.byte	W18
	.byte	VOL	, v082
	.byte	W06
	.byte		N12	, Fs2, v100
	.byte	W10
	.byte	VOL	, v081
	.byte	W14
	.byte		N12	, Ds2
	.byte	W10
	.byte	VOL	, v079
	.byte	W02
	.byte		N12	, Fs2, v096
	.byte	W12
	.byte	VOL	, v077
	.byte	W12
	.byte		N12	, Fs2, v100
	.byte	W04
	.byte	VOL	, v076
	.byte	W08
	.byte	W05
	.byte		v073
	.byte	W07
	.byte		N12	
	.byte	W18
	.byte	VOL	, v071
	.byte	W06
	.byte		N06	, Ds2
	.byte	W12
	.byte		N24	, As2
	.byte	W18
	.byte	VOL	, v070
	.byte	W06
	.byte		N24	, Ds2, v088
	.byte	W14
	.byte	VOL	, v068
	.byte	W10
	.byte		N12	, Gs2, v096
	.byte	W24
	.byte			Fs2, v100
	.byte	W07
	.byte	VOL	, v066
	.byte	W17
	.byte		v065
	.byte		N12	, Ds2, v096
	.byte	W12
	.byte			Fs2, v088
	.byte	W01
	.byte	VOL	, v063
	.byte	W15
	.byte		v061
	.byte	W08
	.byte		N12	, As2, v104
	.byte	W05
	.byte	VOL	, v059
	.byte	W07
	.byte	W02
	.byte		v057
	.byte	W10
	.byte		N44	, Fs2, v088
	.byte	W23
	.byte	VOL	, v056
	.byte	W20
	.byte		v054
	.byte	W05
	.byte		N05	, Ds2, v072
	.byte	W07
	.byte	VOL	, v052
	.byte	W05
	.byte		N12	, Fs2, v080
	.byte	W02
	.byte	VOL	, v048
	.byte	W09
	.byte		v047
	.byte	W01
	.byte		N08	, Ds2, v084
	.byte	W12
	.byte		N12	, Cs3, v104
	.byte	W05
	.byte	VOL	, v045
	.byte	W10
	.byte		v043
	.byte	W09
	.byte		N12	, Bn2, v100
	.byte	W01
	.byte	VOL	, v042
	.byte	W10
	.byte		v040
	.byte	W09
	.byte		v038
	.byte	W04
	.byte		N12	, As2, v104
	.byte	W05
	.byte	VOL	, v036
	.byte	W07
	.byte		N12	, Bn2, v096
	.byte	W06
	.byte	VOL	, v034
	.byte	W16
	.byte		v033
	.byte	W02
	.byte		N68	, Fs2, v100
	.byte	W09
	.byte	VOL	, v031
	.byte	W03
	.byte	W15
	.byte		v029
	.byte	W14
	.byte		v028
	.byte	W13
	.byte		v026
	.byte	W10
	.byte		v023
	.byte	W08
	.byte		v020
	.byte		N05	, Ds2
	.byte	W09
	.byte	VOL	, v019
	.byte	W03
	.byte		N12	, Fs2
	.byte	W12
	.byte			Ds2, v092
	.byte	W06
	.byte	VOL	, v017
	.byte	W06
	.byte		N12	, Cs3, v104
	.byte	W07
	.byte	VOL	, v015
	.byte	W17
	.byte		N12	, Bn2
	.byte	W01
	.byte	VOL	, v014
	.byte	W14
	.byte		v011
	.byte	W09
	.byte		N12	, As2, v100
	.byte	W11
	.byte	VOL	, v009
	.byte	W01
	.byte		N12	, Bn2, v096
	.byte	W23
	.byte	VOL	, v008
	.byte	W01
	.byte		N12	, Cs3, v088
	.byte	W12
	.byte	VOL	, v006
	.byte	W12
	.byte		N44	, Fs2, v100
	.byte	W02
	.byte	VOL	, v004
	.byte	W36
	.byte	W02
	.byte		v003
	.byte	W08
	.byte		N03	, Ds2, v084
	.byte	W12
	.byte		N12	, Fs2, v096
	.byte	W12
	.byte		N10	, Ds2, v088
	.byte	W12
	.byte	VOICE	, 82
	.byte	VOL	, v100
	.byte	PAN	, c_v
	.byte		N30	, Fs3, v120
	.byte	W30
	.byte	W01
	.byte		N08	, Ds3
	.byte	W09
	.byte		N07	, En3
	.byte	W08
	.byte		N08	, Fs3
	.byte	W09
	.byte		N09	, Gs3
	.byte	W10
	.byte		N11	, As3
	.byte	W12
	.byte		N16	, Bn3
	.byte	W17
song079_5_15:
	.byte		N23	, Bn3, v120
	.byte	W24
	.byte			Gs3
	.byte	W24
	.byte		N17	, Gn3
	.byte	W18
	.byte		N28	, En3
	.byte	W30
	.byte	PEND
song079_5_16:
	.byte		N28	, Ds3, v120
	.byte	W30
	.byte	W01
	.byte		N08	
	.byte	W09
	.byte		N07	, Fs3
	.byte	W08
	.byte		N08	, As3
	.byte	W09
	.byte			Cs4
	.byte	W09
	.byte		N11	, Bn3
	.byte	W12
	.byte		N16	, Gs3
	.byte	W18
	.byte	PEND
song079_5_17:
	.byte		N44	, Ds4, v120
	.byte	W48
	.byte		N42	, Dn4
	.byte	W48
	.byte	PEND
song079_5_18:
	.byte		N30	, Fs3, v120
	.byte	W30
	.byte	W01
	.byte		N08	, Ds3
	.byte	W09
	.byte		N07	, En3
	.byte	W08
	.byte		N08	, Fs3
	.byte	W09
	.byte		N09	, Gs3
	.byte	W10
	.byte		N11	, As3
	.byte	W12
	.byte		N16	, Bn3
	.byte	W17
	.byte	PEND
	.byte	PATT	
		.word	song079_5_15
	.byte	PATT	
		.word	song079_5_16
	.byte	PATT	
		.word	song079_5_17
	.byte	PATT	
		.word	song079_5_18
	.byte	PATT	
		.word	song079_5_15
	.byte	PATT	
		.word	song079_5_16
	.byte	PATT	
		.word	song079_5_17
song079_5_19:
	.byte		N08	, Ds4, v120
	.byte	W09
	.byte		N10	, Cs4
	.byte	W11
	.byte		N11	, Bn3
	.byte	W12
	.byte		N15	, Gs3
	.byte	W16
	.byte		N11	, Fs3
	.byte	W12
	.byte		N05	, Bn3
	.byte	W07
	.byte		N12	
	.byte	W13
	.byte		N11	, Cs4
	.byte	W16
	.byte	PEND
song079_5_20:
	.byte		N11	, Ds4, v120
	.byte	W12
	.byte		N07	, En4
	.byte	W08
	.byte		N11	, Fs4
	.byte	W12
	.byte		N14	, Bn3
	.byte	W16
	.byte		N42	
	.byte	W48
	.byte	PEND
	.byte		N08	, Ds4
	.byte	W09
	.byte		N10	, Cs4
	.byte	W11
	.byte		N11	, Bn3
	.byte	W12
	.byte		N15	, Gs3
	.byte	W16
	.byte		N11	, Fs3
	.byte	W12
	.byte		N05	, Bn3
	.byte	W07
	.byte		N11	
	.byte	W13
	.byte		N15	, Cs4
	.byte	W16
	.byte		N11	, Ds4
	.byte	W12
	.byte		N07	, En4
	.byte	W08
	.byte		N11	, Fs4
	.byte	W12
	.byte		N14	, Ds4
	.byte	W16
	.byte		N36	, Gs4
	.byte	W48
	.byte		N07	, Ds4
	.byte	W09
	.byte		N09	, Cs4
	.byte	W11
	.byte		N10	, Bn3
	.byte	W12
	.byte		N15	, Gs3
	.byte	W16
	.byte		N11	, Fs3
	.byte	W12
	.byte		N05	, Bn3
	.byte	W07
	.byte		N12	
	.byte	W13
	.byte		N11	, Cs4
	.byte	W16
	.byte		N10	, Ds4
	.byte	W12
	.byte		N07	, En4
	.byte	W08
	.byte		N11	, Fs4
	.byte	W12
	.byte		N14	, Bn3
	.byte	W16
	.byte		N42	
	.byte	W48
	.byte		N08	, Ds4
	.byte	W09
	.byte		N10	, Cs4
	.byte	W11
	.byte		N11	, Bn3
	.byte	W12
	.byte		N14	, Gs3
	.byte	W16
	.byte		N11	, Fs3
	.byte	W12
	.byte		N05	, Bn3
	.byte	W07
	.byte		N12	
	.byte	W13
	.byte		N11	, Cs4
	.byte	W16
song079_5_21:
	.byte		N10	, Ds4, v120
	.byte	W12
	.byte		N07	, En4
	.byte	W08
	.byte		N10	, Fs4
	.byte	W12
	.byte		N15	, Bn3
	.byte	W16
	.byte		N44	, Cs4
	.byte	W48
	.byte	PEND
	.byte		N28	, An4, v092
	.byte	W30
	.byte		N32	, Gn4
	.byte	W66
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
	.byte	W02
	.byte	VOL	, v100
	.byte	W02
	.byte		N30	, Fs3, v127
	.byte	W30
	.byte	W01
	.byte		N08	, Ds3
	.byte	W09
	.byte		N07	, En3
	.byte	W08
	.byte		N08	, Fs3
	.byte	W09
	.byte		N09	, Gs3
	.byte	W10
	.byte		N11	, As3
	.byte	W12
	.byte		N16	, Bn3
	.byte	W17
	.byte		N23	
	.byte	W24
	.byte			Gs3
	.byte	W24
	.byte		N17	, Gn3
	.byte	W18
	.byte		N28	, En3
	.byte	W30
	.byte			Ds3
	.byte	W30
	.byte	W01
	.byte		N08	
	.byte	W09
	.byte		N07	, Fs3
	.byte	W08
	.byte		N08	, As3
	.byte	W09
	.byte			Cs4
	.byte	W09
	.byte		N11	, Bn3
	.byte	W12
	.byte		N16	, Gs3
	.byte	W18
	.byte		N44	, Ds4
	.byte	W48
	.byte		N42	, Dn4
	.byte	W48
	.byte		N30	, Fs4
	.byte	W30
	.byte	W01
	.byte		N08	, Ds4
	.byte	W09
	.byte		N07	, En4
	.byte	W08
	.byte		N08	, Fs4
	.byte	W09
	.byte		N09	, Gs4
	.byte	W10
	.byte		N11	, As4
	.byte	W12
	.byte		N16	, Bn4
	.byte	W17
	.byte		N23	
	.byte	W24
	.byte			Gs4
	.byte	W24
	.byte		N17	, Gn4
	.byte	W18
	.byte		N28	, En4
	.byte	W30
	.byte			Ds4
	.byte	W30
	.byte	W01
	.byte		N08	
	.byte	W09
	.byte		N07	, Fs4
	.byte	W08
	.byte		N08	, As4
	.byte	W09
	.byte			Cs5
	.byte	W09
	.byte		N11	, Bn4
	.byte	W12
	.byte		N16	, Gs4
	.byte	W18
	.byte		N44	, Ds5
	.byte	W48
	.byte		N42	, Dn5
	.byte	W48
	.byte		N08	, Ds5
	.byte	W09
	.byte		N10	, Cs5
	.byte	W11
	.byte		N11	, Bn4
	.byte	W12
	.byte		N15	, Gs4
	.byte	W16
	.byte		N11	, Fs4
	.byte	W12
	.byte		N05	, Bn4
	.byte	W07
	.byte		N12	
	.byte	W13
	.byte		N11	, Cs5
	.byte	W16
	.byte			Ds5
	.byte	W12
	.byte		N07	, En5
	.byte	W08
	.byte		N11	, Fs5
	.byte	W12
	.byte		N14	, Bn4
	.byte	W16
	.byte		N42	
	.byte	W48
	.byte		N08	, Ds5
	.byte	W09
	.byte		N10	, Cs5
	.byte	W11
	.byte		N11	, Bn4
	.byte	W12
	.byte		N15	, Gs4
	.byte	W16
	.byte		N11	, Fs4
	.byte	W12
	.byte		N05	, Bn4
	.byte	W07
	.byte		N11	
	.byte	W13
	.byte		N15	, Cs5
	.byte	W16
	.byte		N11	, Ds5
	.byte	W12
	.byte		N07	, En5
	.byte	W08
	.byte		N11	, Fs5
	.byte	W12
	.byte		N14	, Ds5
	.byte	W16
	.byte		N36	, Gs5
	.byte	W48
	.byte		N07	, Ds5
	.byte	W09
	.byte		N09	, Cs5
	.byte	W11
	.byte		N10	, Bn4
	.byte	W12
	.byte		N15	, Gs4
	.byte	W16
	.byte		N11	, Fs4
	.byte	W12
	.byte		N05	, Bn4
	.byte	W07
	.byte		N12	
	.byte	W13
	.byte		N11	, Cs5
	.byte	W16
	.byte		N10	, Ds5
	.byte	W12
	.byte		N07	, En5
	.byte	W08
	.byte		N11	, Fs5
	.byte	W12
	.byte		N14	, Bn4
	.byte	W16
	.byte		N42	
	.byte	W48
	.byte		N08	, Ds5
	.byte	W09
	.byte		N10	, Cs5
	.byte	W11
	.byte		N11	, Bn4
	.byte	W12
	.byte		N14	, Gs4
	.byte	W16
	.byte		N11	, Fs4
	.byte	W12
	.byte		N05	, Bn4
	.byte	W07
	.byte		N12	
	.byte	W13
	.byte		N11	, Cs5
	.byte	W16
	.byte		N10	, Ds5
	.byte	W12
	.byte		N07	, En5
	.byte	W08
	.byte		N10	, Fs5
	.byte	W12
	.byte		N15	, Bn4
	.byte	W16
	.byte		N44	, Cs5
	.byte	W48
	.byte		N28	, An5, v100
	.byte	W30
	.byte		N32	, Gn5
	.byte	W64
	.byte	VOL	, v100
	.byte	W02
	.byte	PATT	
		.word	song079_5_18
	.byte	PATT	
		.word	song079_5_15
	.byte	PATT	
		.word	song079_5_16
	.byte	PATT	
		.word	song079_5_17
	.byte	PATT	
		.word	song079_5_19
	.byte	PATT	
		.word	song079_5_20
	.byte		N08	, Ds4, v120
	.byte	W09
	.byte		N10	, Cs4
	.byte	W11
	.byte		N11	, Bn3
	.byte	W12
	.byte		N15	, Gs3
	.byte	W16
	.byte		N11	, Fs3
	.byte	W12
	.byte		N05	, Bn3
	.byte	W07
	.byte		N11	
	.byte	W06
	.byte	VOL	, v100
	.byte	W04
	.byte		v095
	.byte	W03
	.byte		N15	, Cs4
	.byte	W09
	.byte	VOL	, v094
	.byte	W04
	.byte		v092
	.byte	W03
	.byte		N11	, Ds4
	.byte	W02
	.byte	VOL	, v091
	.byte	W05
	.byte		v090
	.byte	W02
	.byte		v088
	.byte	W03
	.byte		N07	, En4
	.byte	W08
	.byte		N11	, Fs4
	.byte	W12
	.byte		N14	, Ds4
	.byte	W03
	.byte	VOL	, v087
	.byte	W04
	.byte		v085
	.byte	W02
	.byte		v084
	.byte	W04
	.byte		v083
	.byte	W03
	.byte		v081
	.byte		N36	, Gs4
	.byte	W03
	.byte	VOL	, v081
	.byte	W10
	.byte		v079
	.byte	W06
	.byte		v076
	.byte	W03
	.byte		v075
	.byte	W08
	.byte		v073
	.byte	W02
	.byte		v072
	.byte	W02
	.byte		v071
	.byte	W03
	.byte		v069
	.byte	W03
	.byte		v068
	.byte	W03
	.byte		v066
	.byte	W03
	.byte		v065
	.byte	W02
	.byte		N07	, Ds4
	.byte	W06
	.byte	VOL	, v064
	.byte	W02
	.byte		v062
	.byte	W01
	.byte		N09	, Cs4
	.byte	W01
	.byte	VOL	, v061
	.byte	W04
	.byte		v060
	.byte	W04
	.byte		v058
	.byte	W02
	.byte		N10	, Bn3
	.byte	W03
	.byte	VOL	, v057
	.byte	W06
	.byte		v056
	.byte	W01
	.byte		v054
	.byte	W02
	.byte		v052
	.byte		N15	, Gs3
	.byte	W05
	.byte	VOL	, v052
	.byte	W05
	.byte		v050
	.byte	W03
	.byte		v048
	.byte	W03
	.byte		N11	, Fs3
	.byte	W02
	.byte	VOL	, v047
	.byte	W02
	.byte		v046
	.byte	W01
	.byte		v044
	.byte	W05
	.byte		v043
	.byte	W02
	.byte		N05	, Bn3
	.byte	W01
	.byte	VOL	, v042
	.byte	W02
	.byte		v040
	.byte	W04
	.byte		N12	
	.byte	W03
	.byte	VOL	, v039
	.byte	W02
	.byte		v038
	.byte	W02
	.byte		v036
	.byte	W06
	.byte		N11	, Cs4
	.byte	W01
	.byte	VOL	, v035
	.byte	W13
	.byte		v033
	.byte	W02
	.byte		N10	, Ds4
	.byte	W02
	.byte	VOL	, v032
	.byte	W02
	.byte		v031
	.byte	W06
	.byte		v029
	.byte	W02
	.byte		N07	, En4
	.byte	W08
	.byte		N11	, Fs4
	.byte	W06
	.byte	VOL	, v028
	.byte	W06
	.byte		v027
	.byte		N14	, Bn3
	.byte	W03
	.byte	VOL	, v025
	.byte	W04
	.byte		v023
	.byte	W08
	.byte		v023
	.byte	W01
	.byte		N42	
	.byte	W02
	.byte	VOL	, v021
	.byte	W03
	.byte		v019
	.byte	W02
	.byte		v019
	.byte	W04
	.byte		v017
	.byte	W03
	.byte		v015
	.byte	W04
	.byte		v014
	.byte	W05
	.byte		v013
	.byte	W03
	.byte		v011
	.byte	W05
	.byte		v010
	.byte	W06
	.byte		v009
	.byte	W08
	.byte		v007
	.byte	W03
	.byte		N08	, Ds4
	.byte	W05
	.byte	VOL	, v006
	.byte	W04
	.byte		N10	, Cs4
	.byte	W04
	.byte	VOL	, v004
	.byte	W04
	.byte		v003
	.byte	W03
	.byte		N11	, Bn3
	.byte	W09
	.byte	VOL	, v002
	.byte	W03
	.byte		N14	, Gs3
	.byte	W16
	.byte		N11	, Fs3
	.byte	W12
	.byte		N05	, Bn3
	.byte	W07
	.byte		N12	
	.byte	W13
	.byte		N11	, Cs4
	.byte	W16
	.byte	PATT	
		.word	song079_5_21
	.byte		N28	, An4, v092
	.byte	W30
	.byte		N32	, Gn4
	.byte	W32
	.byte	FINE

	@********************** Track  6 **********************@

	.global song079_6
song079_6:	@ 0x082AA67E
	.byte	KEYSH	, 0
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
	.byte	W48
	.byte	VOICE	, 82
	.byte	VOL	, v090
	.byte	PAN	, c_v
	.byte	W48
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
	.byte	W78
	.byte	VOL	, v090
	.byte	W11
	.byte		v084
	.byte	W07
	.byte	W18
	.byte		v082
	.byte	W16
	.byte		v081
	.byte	W24
	.byte		v079
	.byte	W14
	.byte		v077
	.byte	W15
	.byte		v076
	.byte	W09
	.byte	W05
	.byte		v073
	.byte	W24
	.byte	W01
	.byte		v071
	.byte	W36
	.byte		v070
	.byte	W19
	.byte		v068
	.byte	W11
	.byte	W30
	.byte	W01
	.byte		v066
	.byte	W16
	.byte		v065
	.byte	W14
	.byte		v063
	.byte	W15
	.byte		v061
	.byte	W12
	.byte		v059
	.byte	W08
	.byte	W01
	.byte		v057
	.byte	W32
	.byte	W01
	.byte		v056
	.byte	W20
	.byte		v054
	.byte	W13
	.byte		v052
	.byte	W07
	.byte		v048
	.byte	W09
	.byte		v047
	.byte	W13
	.byte	W05
	.byte		v045
	.byte	W10
	.byte		v043
	.byte	W10
	.byte		v042
	.byte	W10
	.byte		v040
	.byte	W09
	.byte		v038
	.byte	W09
	.byte		v036
	.byte	W13
	.byte		v034
	.byte	W16
	.byte		v033
	.byte	W11
	.byte		v031
	.byte	W03
	.byte	W15
	.byte		v029
	.byte	W14
	.byte		v028
	.byte	W13
	.byte		v026
	.byte	W10
	.byte		v023
	.byte	W08
	.byte		v020
	.byte	W09
	.byte		v019
	.byte	W21
	.byte		v017
	.byte	W06
	.byte	W06
	.byte		v015
	.byte	W18
	.byte		v014
	.byte	W14
	.byte		v011
	.byte	W21
	.byte		v009
	.byte	W24
	.byte		v008
	.byte	W13
	.byte		v006
	.byte	W14
	.byte		v004
	.byte	W36
	.byte	W02
	.byte		v003
	.byte	W44
	.byte	VOICE	, 82
	.byte	VOL	, v090
	.byte	PAN	, c_v+36
	.byte		N44	, As2, v072
	.byte		N44	, Cs3, v080
	.byte	W48
	.byte			An2, v076
	.byte		N44	, Cn3, v092
	.byte	W48
song079_6_1:
	.byte		N44	, Gs2, v088
	.byte		N44	, Bn2, v076
	.byte	W48
	.byte			En2, v100
	.byte		N44	, As2, v080
	.byte	W48
	.byte	PEND
	.byte			Fs2, v088
	.byte		N44	, As2, v092
	.byte	W48
	.byte			Bn2, v080
	.byte		N44	, Dn3, v092
	.byte	W48
song079_6_2:
	.byte		N44	, Bn2, v108
	.byte		N44	, Ds3, v100
	.byte	W48
	.byte			As2, v084
	.byte		N44	, Dn3, v096
	.byte	W48
	.byte	PEND
	.byte			As2, v072
	.byte		N44	, Cs3, v080
	.byte	W48
	.byte			Fs2, v088
	.byte		N44	, Cn3, v092
	.byte	W48
	.byte	PATT	
		.word	song079_6_1
	.byte		N44	, Fs2, v088
	.byte		N44	, As2, v076
	.byte	W48
	.byte			Bn2, v088
	.byte		N44	, Dn3, v108
	.byte	W48
	.byte	PATT	
		.word	song079_6_2
song079_6_4:
	.byte		N44	, As2, v072
	.byte		N44	, Cs3, v080
	.byte	W48
	.byte			An2, v088
	.byte		N44	, Cn3, v064
	.byte	W48
	.byte	PEND
song079_6_5:
	.byte		N44	, Gs2, v088
	.byte		N44	, Bn2, v076
	.byte	W48
	.byte			Gn2, v100
	.byte		N44	, As2, v080
	.byte	W48
	.byte	PEND
song079_6_6:
	.byte		N44	, Fs2, v088
	.byte		N44	, As2, v076
	.byte	W48
	.byte			Bn2, v108
	.byte		N44	, Dn3
	.byte	W48
	.byte	PEND
song079_6_7:
	.byte		N44	, Bn2, v108
	.byte		N44	, Ds3, v100
	.byte	W48
	.byte			As2, v084
	.byte		N44	, Dn3, v080
	.byte	W48
	.byte	PEND
song079_6_3:
	.byte		N44	, Bn2, v088
	.byte		N44	, Ds3, v104
	.byte	W48
	.byte			As2, v108
	.byte		N44	, Cs3, v092
	.byte	W48
	.byte	PEND
song079_6_8:
	.byte		N44	, Gs2, v104
	.byte		N44	, Bn2, v096
	.byte	W48
	.byte			As2, v092
	.byte		N44	, Cs3, v108
	.byte	W48
	.byte	PEND
	.byte	PATT	
		.word	song079_6_3
	.byte		N44	, Gs2, v104
	.byte		N44	, Bn2, v096
	.byte	W48
	.byte			As2, v092
	.byte		N44	, Dn3, v108
	.byte	W48
	.byte		N12	, Cs3
	.byte	W01
	.byte		N44	, Bn2, v104
	.byte	W17
	.byte		N28	, Ds3, v096
	.byte	W30
	.byte		N12	, Cs3, v100
	.byte	W01
	.byte		N44	, As2, v084
	.byte	W17
	.byte		N28	, Ds3, v092
	.byte	W30
	.byte		N44	, Gs2, v100
	.byte		N12	, Cs3
	.byte	W18
	.byte		N28	, Ds3, v096
	.byte	W30
	.byte		N44	, As2, v100
	.byte		N11	, Cs3
	.byte	W18
	.byte		N28	, Ds3, v096
	.byte	W30
	.byte		N10	, Cs3, v108
	.byte	W01
	.byte		N44	, Bn2, v104
	.byte	W17
	.byte		N28	, Ds3, v096
	.byte	W30
	.byte	W01
	.byte		N44	, As2, v084
	.byte		N11	, Cs3, v100
	.byte	W17
	.byte		N28	, Ds3, v092
	.byte	W30
	.byte		N42	, Gs2, v100
	.byte		N11	, Cs3
	.byte	W18
	.byte		N28	, Ds3, v096
	.byte	W30
	.byte		TIE	, Bn2
	.byte	W02
	.byte			Gn3
	.byte	W32
	.byte	VOL	, v090
	.byte	W01
	.byte		v087
	.byte	W05
	.byte		v085
	.byte	W02
	.byte		v085
	.byte	W03
	.byte		v082
	.byte	W02
	.byte		v081
	.byte	W01
	.byte	W02
	.byte		v078
	.byte	W05
	.byte		v075
	.byte	W03
	.byte		v072
	.byte	W02
	.byte		v071
	.byte	W04
	.byte		v069
	.byte	W03
	.byte		v066
	.byte	W03
	.byte		v064
	.byte	W01
	.byte		v063
	.byte	W02
	.byte		v062
	.byte	W03
	.byte		v060
	.byte	W03
	.byte		v059
	.byte	W03
	.byte		v057
	.byte	W01
	.byte		v056
	.byte	W02
	.byte		v054
	.byte	W02
	.byte		v052
	.byte	W01
	.byte		v051
	.byte	W03
	.byte		v048
	.byte	W02
	.byte		v047
	.byte	W04
	.byte		v044
	.byte	W01
	.byte		v043
	.byte	W03
	.byte		v041
	.byte	W02
	.byte		v036
	.byte	W01
	.byte		v034
	.byte	W01
	.byte		EOT	, Bn2
	.byte	W02
	.byte			Gn3
	.byte	W36
	.byte	W01
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
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W92
	.byte	W03
	.byte	VOL	, v090
	.byte	W01
	.byte	PATT	
		.word	song079_6_4
	.byte	PATT	
		.word	song079_6_5
	.byte	PATT	
		.word	song079_6_6
	.byte	PATT	
		.word	song079_6_7
	.byte	PATT	
		.word	song079_6_3
	.byte	PATT	
		.word	song079_6_8
	.byte		N44	, Bn2, v088
	.byte		N44	, Ds3, v104
	.byte	W48
	.byte			As2, v108
	.byte		N44	, Cs3, v092
	.byte	W24
	.byte	W01
	.byte	VOL	, v090
	.byte	W04
	.byte		v085
	.byte	W12
	.byte		v085
	.byte	W04
	.byte		v083
	.byte	W03
	.byte		N44	, Gs2, v104
	.byte		N44	, Bn2, v096
	.byte	W02
	.byte	VOL	, v082
	.byte	W05
	.byte		v081
	.byte	W02
	.byte		v080
	.byte	W24
	.byte	W02
	.byte		v078
	.byte	W04
	.byte		v077
	.byte	W02
	.byte		v076
	.byte	W04
	.byte		v075
	.byte	W03
	.byte		v073
	.byte		N44	, As2, v092
	.byte		N44	, Dn3, v108
	.byte	W03
	.byte	VOL	, v072
	.byte	W10
	.byte		v071
	.byte	W06
	.byte		v068
	.byte	W03
	.byte		v067
	.byte	W08
	.byte		v066
	.byte	W02
	.byte		v065
	.byte	W02
	.byte		v063
	.byte	W03
	.byte		v062
	.byte	W03
	.byte		v061
	.byte	W03
	.byte		v060
	.byte	W03
	.byte		v058
	.byte	W02
	.byte		N12	, Cs3
	.byte	W01
	.byte		N44	, Bn2, v104
	.byte	W05
	.byte	VOL	, v057
	.byte	W02
	.byte		v056
	.byte	W01
	.byte		v055
	.byte	W05
	.byte		v053
	.byte	W04
	.byte		v052
	.byte		N28	, Ds3, v096
	.byte	W05
	.byte	VOL	, v051
	.byte	W06
	.byte		v050
	.byte	W01
	.byte		v048
	.byte	W02
	.byte		v047
	.byte	W05
	.byte		v046
	.byte	W05
	.byte		v045
	.byte	W03
	.byte		v043
	.byte	W03
	.byte		N12	, Cs3, v100
	.byte	W01
	.byte		N44	, As2, v084
	.byte	W01
	.byte	VOL	, v042
	.byte	W02
	.byte		v041
	.byte	W01
	.byte		v040
	.byte	W05
	.byte		v038
	.byte	W03
	.byte		v038
	.byte	W02
	.byte		v036
	.byte	W03
	.byte		N28	, Ds3, v092
	.byte	W04
	.byte	VOL	, v035
	.byte	W02
	.byte		v033
	.byte	W02
	.byte		v033
	.byte	W06
	.byte		v031
	.byte	W14
	.byte		v030
	.byte	W02
	.byte		N44	, Gs2, v100
	.byte		N12	, Cs3
	.byte	W01
	.byte	VOL	, v028
	.byte	W03
	.byte		v028
	.byte	W06
	.byte		v026
	.byte	W08
	.byte		N28	, Ds3, v096
	.byte	W08
	.byte	VOL	, v025
	.byte	W06
	.byte		v023
	.byte	W03
	.byte		v023
	.byte	W04
	.byte		v021
	.byte	W08
	.byte		v020
	.byte	W01
	.byte		N44	, As2, v100
	.byte		N11	, Cs3
	.byte	W02
	.byte	VOL	, v019
	.byte	W03
	.byte		v018
	.byte	W02
	.byte		v016
	.byte	W03
	.byte		v015
	.byte	W04
	.byte		v014
	.byte	W04
	.byte		v013
	.byte		N28	, Ds3, v096
	.byte	W05
	.byte	VOL	, v011
	.byte	W03
	.byte		v010
	.byte	W05
	.byte		v009
	.byte	W06
	.byte		v008
	.byte	W08
	.byte		v006
	.byte	W03
	.byte		N10	, Cs3, v108
	.byte	W01
	.byte		N44	, Bn2, v104
	.byte	W04
	.byte	VOL	, v005
	.byte	W08
	.byte		v004
	.byte	W04
	.byte		v003
	.byte	W01
	.byte		N28	, Ds3, v096
	.byte	W11
	.byte	VOL	, v001
	.byte	W20
	.byte		N44	, As2, v084
	.byte		N11	, Cs3, v100
	.byte	W17
	.byte		N28	, Ds3, v092
	.byte	W30
	.byte		N42	, Gs2, v100
	.byte		N11	, Cs3
	.byte	W18
	.byte		N28	, Ds3, v096
	.byte	W30
	.byte		TIE	, Bn2
	.byte	W02
	.byte			Gn3
	.byte	W44
	.byte	W02
	.byte	W56
	.byte	W01
	.byte		EOT	, Bn2
	.byte	W02
	.byte			Gn3
	.byte	FINE

	@********************** Track  7 **********************@

	.global song079_7
song079_7:	@ 0x082AA9E3
	.byte	KEYSH	, 0
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
	.byte	W48
	.byte	VOICE	, 120
	.byte	VOL	, v099
	.byte	PAN	, c_v-14
	.byte	W48
song079_7_3:
	.byte		N68	, En3, v092
	.byte	W72
	.byte		N12	, Fs3, v080
	.byte	W12
	.byte		TIE	, En3, v060
	.byte		TIE	, Gn3, v092
	.byte	W12
	.byte	PEND
	.byte	W96
	.byte		EOT	, En3
	.byte			Gn3
song079_7_4:
	.byte		N72	, En3, v092
	.byte	W72
	.byte		N12	, Fs3
	.byte	W12
	.byte		TIE	, En3, v060
	.byte		N60	, Gn3, v092
	.byte	W12
	.byte	PEND
	.byte	W48
	.byte		N48	, An3
	.byte	W44
	.byte	W03
	.byte		EOT	, En3
	.byte	W01
	.byte		N68	, Dn3
	.byte	W72
	.byte		N13	, Cn3
	.byte	W12
	.byte		N84	, Bn2
	.byte	W12
	.byte	W72
	.byte		N24	, An2
	.byte	W24
	.byte		TIE	, Bn2
	.byte	W96
	.byte	W36
	.byte		EOT	
	.byte		N36	, Cn3, v100
	.byte	W36
	.byte		N23	, Dn3, v104
	.byte	W24
	.byte		N68	, En3, v100
	.byte	W72
	.byte		N12	, Fs3, v080
	.byte	W12
	.byte		TIE	, En3, v072
	.byte		TIE	, Gn3, v100
	.byte	W12
	.byte	W96
	.byte		EOT	, En3
	.byte			Gn3
	.byte		N68	, En3
	.byte	W72
	.byte		N12	, Fs3
	.byte	W12
	.byte		TIE	, En3, v072
	.byte		N60	, Gn3, v100
	.byte	W12
	.byte	W48
	.byte		N48	, An3
	.byte	W48
	.byte		EOT	, En3
	.byte		N72	, Dn3
	.byte	W72
	.byte		N12	, Cn3, v092
	.byte	W12
	.byte		N80	, Bn2, v100
	.byte	W12
	.byte	W72
	.byte		N24	, An2, v092
	.byte	W24
	.byte		TIE	, Bn2
	.byte	W96
	.byte	W36
	.byte		EOT	
	.byte		N36	, Cn3, v104
	.byte	W36
	.byte		N22	, Dn3
	.byte	W24
	.byte		N72	, En3, v096
	.byte	W72
	.byte		N12	, Fs3, v084
	.byte	W12
	.byte		TIE	, Gn3, v088
	.byte	W12
	.byte	W96
	.byte		EOT	
	.byte		N72	, Cn3
	.byte	W72
	.byte		N11	, Dn3
	.byte	W12
	.byte		TIE	, En3
	.byte	W12
	.byte	W92
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte		N72	, Dn3
	.byte	W72
	.byte		N12	, Cn3, v084
	.byte	W12
	.byte		N72	, Bn2, v092
	.byte	W12
	.byte	W60
	.byte		N23	, An2, v072
	.byte	W24
	.byte		N12	, Bn2, v088
	.byte	W12
	.byte		N72	, Cn3, v084
	.byte	W72
	.byte		N12	, Bn2, v096
	.byte	W12
	.byte		N56	, An2, v084
	.byte	W12
	.byte	W48
	.byte		N48	, Gn2, v096
	.byte	W48
	.byte		N72	, En3, v100
	.byte	W72
	.byte		N12	, Fs3, v088
	.byte	W12
	.byte		TIE	, Gn3, v096
	.byte	W12
	.byte	W96
	.byte		EOT	
	.byte		N72	, Cn3, v084
	.byte	W72
	.byte		N12	, Dn3, v096
	.byte	W12
	.byte		TIE	, En3
	.byte	W12
	.byte	W96
	.byte		EOT	
	.byte		N72	, Dn3, v100
	.byte	W72
	.byte		N12	, Cn3, v084
	.byte	W12
	.byte		N72	, Bn2, v100
	.byte	W12
	.byte	W60
	.byte		N24	, An2, v092
	.byte	W24
	.byte		N12	, Bn2
	.byte	W12
	.byte		N96	, Cn3, v088
	.byte	W96
	.byte		N92	, Dn3, v104
	.byte	W96
song079_7_1:
	.byte		N72	, Cn3, v076
	.byte	W72
	.byte		N12	, Dn3, v084
	.byte	W12
	.byte		N72	, En3, v088
	.byte	W12
	.byte	PEND
	.byte	W60
	.byte		N36	, Fs3, v096
	.byte	W36
song079_7_2:
	.byte		N72	, Gn3, v092
	.byte	W72
	.byte		N12	, Fs3, v080
	.byte	W12
	.byte		N72	, Dn3, v084
	.byte	W12
	.byte	PEND
	.byte	W60
	.byte		N32	, An2, v096
	.byte	W36
	.byte		N92	, Bn2, v068
	.byte	W96
	.byte		N56	, Fs3, v084
	.byte	W60
	.byte		N24	, En3
	.byte	W24
	.byte		N16	, Fs3, v080
	.byte	W12
	.byte		N17	, Gn3, v096
	.byte	W18
	.byte		N15	, An3, v092
	.byte	W18
	.byte		N12	, En3, v088
	.byte	W12
	.byte		N48	, Gn3, v084
	.byte	W48
	.byte			An3, v092
	.byte	W48
	.byte		N44	, Fs3, v080
	.byte	W48
	.byte	PATT	
		.word	song079_7_1
	.byte	W60
	.byte		N36	, Dn3, v096
	.byte	W36
	.byte	PATT	
		.word	song079_7_2
	.byte	W60
	.byte		N24	, An3, v096
	.byte	W24
	.byte		N12	, Gn3, v076
	.byte	W12
	.byte		N92	, Bn3, v068
	.byte	W96
	.byte		N56	, Dn4, v084
	.byte	W60
	.byte		N24	, Bn3
	.byte	W24
	.byte		N12	, Dn4, v080
	.byte	W12
	.byte		N17	, Gn4, v096
	.byte	W18
	.byte		N18	, An4, v092
	.byte	W18
	.byte		N12	, En4, v088
	.byte	W12
	.byte		N48	, Gn4, v084
	.byte	W48
	.byte			An4, v092
	.byte	W48
	.byte			Dn5, v080
	.byte	W48
	.byte	PATT	
		.word	song079_7_3
	.byte	W96
	.byte		EOT	, En3
	.byte			Gn3
	.byte	PATT	
		.word	song079_7_4
	.byte	W48
	.byte		N48	, An3, v092
	.byte	W30
	.byte	VOL	, v099
	.byte	W10
	.byte		v092
	.byte	W07
	.byte		EOT	, En3
	.byte	W01
	.byte		N68	, Dn3
	.byte	W18
	.byte	VOL	, v090
	.byte	W16
	.byte		v088
	.byte	W23
	.byte		v086
	.byte	W14
	.byte		v084
	.byte	W01
	.byte		N13	, Cn3
	.byte	W12
	.byte		N84	, Bn2
	.byte	W03
	.byte	VOL	, v082
	.byte	W09
	.byte	W04
	.byte		v081
	.byte	W24
	.byte	W01
	.byte		v078
	.byte	W36
	.byte	W01
	.byte		v076
	.byte	W06
	.byte		N24	, An2
	.byte	W13
	.byte	VOL	, v075
	.byte	W11
	.byte		TIE	, Bn2
	.byte	W30
	.byte	VOL	, v072
	.byte	W17
	.byte		v071
	.byte	W14
	.byte		v069
	.byte	W14
	.byte		v066
	.byte	W13
	.byte		v065
	.byte	W08
	.byte	W01
	.byte		v063
	.byte	W32
	.byte	W01
	.byte		v061
	.byte	W02
	.byte		EOT	
	.byte		N36	, Cn3, v100
	.byte	W18
	.byte	VOL	, v059
	.byte	W12
	.byte		v057
	.byte	W06
	.byte		N23	, Dn3, v104
	.byte	W01
	.byte	VOL	, v053
	.byte	W09
	.byte		v052
	.byte	W14
	.byte		N68	, En3, v100
	.byte	W05
	.byte	VOL	, v049
	.byte	W09
	.byte		v047
	.byte	W10
	.byte		v046
	.byte	W10
	.byte		v043
	.byte	W09
	.byte		v042
	.byte	W09
	.byte		v040
	.byte	W13
	.byte		v038
	.byte	W07
	.byte		N12	, Fs3, v080
	.byte	W09
	.byte	VOL	, v036
	.byte	W03
	.byte		TIE	, En3, v072
	.byte		TIE	, Gn3, v100
	.byte	W08
	.byte	VOL	, v034
	.byte	W04
	.byte	W14
	.byte		v032
	.byte	W15
	.byte		v030
	.byte	W12
	.byte		v028
	.byte	W10
	.byte		v026
	.byte	W08
	.byte		v023
	.byte	W10
	.byte		v020
	.byte	W20
	.byte		v019
	.byte	W07
	.byte		EOT	, En3
	.byte			Gn3
	.byte		N68	, En3
	.byte	W06
	.byte	VOL	, v017
	.byte	W18
	.byte		v014
	.byte	W14
	.byte		v013
	.byte	W20
	.byte		v011
	.byte	W14
	.byte		N12	, Fs3
	.byte	W10
	.byte	VOL	, v009
	.byte	W02
	.byte		TIE	, En3, v072
	.byte		N60	, Gn3, v100
	.byte	W11
	.byte	VOL	, v007
	.byte	W01
	.byte	W13
	.byte		v005
	.byte	W32
	.byte	W03
	.byte		N44	, An3
	.byte	W03
	.byte	VOL	, v003
	.byte	W42
	.byte	W01
	.byte		EOT	, En3
	.byte	W02
	.byte	VOICE	, 82
	.byte	VOL	, v082
	.byte	PAN	, c_v-44
	.byte		N44	, Ds1
	.byte		N44	, Fs2, v084
	.byte	W48
	.byte			Dn1, v100
	.byte		N44	, Dn2, v088
	.byte	W48
	.byte			Cs1, v100
	.byte		N44	, En2
	.byte	W48
	.byte			Gn1
	.byte		N44	, Cs2, v084
	.byte	W48
	.byte			Cn1, v096
	.byte		N44	, Ds2
	.byte	W48
	.byte			Fn1, v100
	.byte		N44	, Gs2, v096
	.byte	W48
song079_7_5:
	.byte		N44	, En1, v104
	.byte		N44	, Gs2, v096
	.byte	W48
	.byte			Fs1, v112
	.byte		N44	, En2, v092
	.byte	W48
	.byte	PEND
	.byte			Bn0, v100
	.byte		N44	, Fs2, v084
	.byte	W48
	.byte			Gs1, v100
	.byte		N44	, Ds2, v080
	.byte	W48
	.byte			Cs1, v100
	.byte		N44	, En2
	.byte	W48
	.byte			Gn1
	.byte		N44	, Cs2, v096
	.byte	W48
	.byte			Cn1
	.byte		N44	, Ds2
	.byte	W48
	.byte			Fn1, v108
	.byte		N44	, Gs2, v092
	.byte	W48
	.byte	PATT	
		.word	song079_7_5
song079_7_8:
	.byte		N44	, Ds2, v072
	.byte		N44	, Fs2, v084
	.byte	W48
	.byte			Ds2, v072
	.byte		N44	, Fs2, v092
	.byte	W48
	.byte	PEND
song079_7_9:
	.byte		N44	, Cs2, v088
	.byte		N44	, En2, v100
	.byte	W48
	.byte			Cs2, v096
	.byte		N44	, En2, v084
	.byte	W48
	.byte	PEND
song079_7_10:
	.byte		N44	, Cn2, v096
	.byte		N44	, Ds2
	.byte	W48
	.byte			Fn2, v108
	.byte		N44	, Gs2, v096
	.byte	W48
	.byte	PEND
song079_7_11:
	.byte		N44	, En1, v104
	.byte		N44	, En2
	.byte	W48
	.byte			Fs1, v100
	.byte		N44	, En2, v076
	.byte	W48
	.byte	PEND
song079_7_6:
	.byte		N44	, En1, v092
	.byte		N44	, Gs2, v104
	.byte	W48
	.byte			Ds1, v076
	.byte		N44	, Fs2, v096
	.byte	W48
	.byte	PEND
song079_7_12:
	.byte		N44	, Cs1, v100
	.byte		N44	, En2, v104
	.byte	W48
	.byte			Ds1, v120
	.byte		N44	, Fs2, v104
	.byte	W48
	.byte	PEND
	.byte	PATT	
		.word	song079_7_6
	.byte		N44	, Cs1, v100
	.byte		N44	, En2, v104
	.byte	W48
	.byte			Fs1, v120
	.byte		N44	, Gs2, v104
	.byte	W48
song079_7_7:
	.byte		N44	, En1, v120
	.byte		N44	, Gs2, v100
	.byte	W48
	.byte			Ds1
	.byte		N44	, Fs2, v092
	.byte	W48
	.byte	PEND
	.byte			Cs1, v084
	.byte		N44	, En2, v100
	.byte	W48
	.byte			Ds1, v084
	.byte		N44	, Fs2, v100
	.byte	W48
	.byte	PATT	
		.word	song079_7_7
	.byte		N44	, Cs1, v084
	.byte		N40	, En2, v100
	.byte	W42
	.byte		TIE	, En2, v096
	.byte	W02
	.byte			Gn2, v104
	.byte	W36
	.byte	W02
	.byte	VOL	, v082
	.byte	W01
	.byte		v079
	.byte	W05
	.byte		v078
	.byte	W02
	.byte		v077
	.byte	W03
	.byte		v075
	.byte	W02
	.byte		v073
	.byte	W01
	.byte	W01
	.byte		v071
	.byte	W06
	.byte		v067
	.byte	W03
	.byte		v066
	.byte	W02
	.byte		v065
	.byte	W04
	.byte		v062
	.byte	W03
	.byte		v061
	.byte	W02
	.byte		v058
	.byte	W02
	.byte		v057
	.byte	W02
	.byte		v057
	.byte	W01
	.byte		v056
	.byte	W05
	.byte		v053
	.byte	W03
	.byte		v052
	.byte	W01
	.byte		v050
	.byte	W02
	.byte		v049
	.byte	W02
	.byte		v047
	.byte	W01
	.byte		v046
	.byte	W03
	.byte		v044
	.byte	W02
	.byte		v042
	.byte	W03
	.byte		v040
	.byte	W02
	.byte		v039
	.byte	W02
	.byte		v037
	.byte	W02
	.byte		EOT	
	.byte	W01
	.byte		EOT	, En2
	.byte	VOL	, v033
	.byte	W01
	.byte		v031
	.byte	W40
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
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W92
	.byte	W03
	.byte		v082
	.byte	W01
	.byte	PATT	
		.word	song079_7_8
	.byte	PATT	
		.word	song079_7_9
	.byte	PATT	
		.word	song079_7_10
	.byte	PATT	
		.word	song079_7_11
	.byte	PATT	
		.word	song079_7_6
	.byte	PATT	
		.word	song079_7_12
	.byte		N44	, En1, v092
	.byte		N44	, Gs2, v104
	.byte	W48
	.byte			Ds1, v076
	.byte		N44	, Fs2, v096
	.byte	W24
	.byte	W01
	.byte	VOL	, v082
	.byte	W01
	.byte		v079
	.byte	W04
	.byte		v078
	.byte	W11
	.byte		v076
	.byte	W05
	.byte		v076
	.byte	W02
	.byte		N44	, Cs1, v100
	.byte		N44	, En2, v104
	.byte	W02
	.byte	VOL	, v075
	.byte	W05
	.byte		v073
	.byte	W02
	.byte		v072
	.byte	W24
	.byte	W03
	.byte		v071
	.byte	W03
	.byte		v070
	.byte	W03
	.byte		v069
	.byte	W03
	.byte		v068
	.byte	W03
	.byte		v066
	.byte		N44	, Fs1, v120
	.byte		N44	, Gs2, v104
	.byte	W03
	.byte	VOL	, v066
	.byte	W10
	.byte		v064
	.byte	W06
	.byte		v062
	.byte	W03
	.byte		v061
	.byte	W08
	.byte		v060
	.byte	W03
	.byte		v059
	.byte	W01
	.byte		v057
	.byte	W03
	.byte		v057
	.byte	W04
	.byte		v056
	.byte	W02
	.byte		v054
	.byte	W03
	.byte		v053
	.byte	W02
	.byte		N44	, En1, v120
	.byte		N44	, Gs2, v100
	.byte	W06
	.byte	VOL	, v052
	.byte	W02
	.byte		v051
	.byte	W02
	.byte		v050
	.byte	W04
	.byte		v048
	.byte	W04
	.byte		v047
	.byte	W05
	.byte		v047
	.byte	W06
	.byte		v045
	.byte	W01
	.byte		v044
	.byte	W02
	.byte		v043
	.byte	W05
	.byte		v042
	.byte	W05
	.byte		v041
	.byte	W03
	.byte		v040
	.byte	W03
	.byte		N44	, Ds1
	.byte		N44	, Fs2, v092
	.byte	W02
	.byte	VOL	, v038
	.byte	W02
	.byte		v038
	.byte	W06
	.byte		v035
	.byte	W03
	.byte		v034
	.byte	W02
	.byte		v033
	.byte	W08
	.byte		v032
	.byte	W01
	.byte		v031
	.byte	W02
	.byte		v029
	.byte	W07
	.byte		v028
	.byte	W13
	.byte		v028
	.byte	W02
	.byte		N44	, Cs1, v084
	.byte		N44	, En2, v100
	.byte	W02
	.byte	VOL	, v026
	.byte	W02
	.byte		v025
	.byte	W06
	.byte		v023
	.byte	W16
	.byte		v023
	.byte	W06
	.byte		v022
	.byte	W04
	.byte		v020
	.byte	W04
	.byte		v019
	.byte	W07
	.byte		v019
	.byte	W01
	.byte		N44	, Ds1, v084
	.byte		N44	, Fs2, v100
	.byte	W02
	.byte	VOL	, v017
	.byte	W03
	.byte		v016
	.byte	W03
	.byte		v015
	.byte	W03
	.byte		v014
	.byte	W03
	.byte		v013
	.byte	W04
	.byte		v011
	.byte	W05
	.byte		v010
	.byte	W03
	.byte		v009
	.byte	W05
	.byte		v008
	.byte	W06
	.byte		v007
	.byte	W08
	.byte		v006
	.byte	W03
	.byte		N44	, En1, v120
	.byte		N44	, Gs2, v100
	.byte	W05
	.byte	VOL	, v004
	.byte	W08
	.byte		v004
	.byte	W04
	.byte		v003
	.byte	W13
	.byte		v001
	.byte	W18
	.byte		N44	, Ds1
	.byte		N44	, Fs2, v092
	.byte	W48
	.byte			Cs1, v084
	.byte		N40	, En2, v100
	.byte	W42
	.byte		TIE	, En2, v096
	.byte	W02
	.byte			Gn2, v104
	.byte	W52
	.byte	W54
	.byte		EOT	
	.byte	W01
	.byte		EOT	, En2
	.byte	FINE

	@********************** Track  8 **********************@

	.global song079_8
song079_8:	@ 0x082AAEAA
	.byte	KEYSH	, 0
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
	.byte	W48
	.byte	VOICE	, 103
	.byte	LFOS	, 0
	.byte	VOL	, v082
	.byte	PAN	, c_v+46
	.byte	W48
song079_8_1:
	.byte	W13
	.byte		N05	, As2, v068
	.byte	W13
	.byte		N03	
	.byte	W21
	.byte		N06	
	.byte	W13
	.byte		N03	
	.byte	W24
	.byte		N06	
	.byte	W12
	.byte	PEND
song079_8_2:
	.byte	W12
	.byte		N05	, As2, v068
	.byte	W13
	.byte		N04	
	.byte	W23
	.byte		N05	
	.byte	W12
	.byte		N03	
	.byte	W36
	.byte	PEND
song079_8_3:
	.byte	W12
	.byte		N06	, As2, v068
	.byte	W12
	.byte		N04	
	.byte	W24
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W24
	.byte		N06	
	.byte	W12
	.byte	PEND
song079_8_4:
	.byte	W14
	.byte		N05	, As2, v068
	.byte	W12
	.byte		N04	
	.byte	W22
	.byte		N05	
	.byte	W11
	.byte		N05	
	.byte	W36
	.byte	W01
	.byte	PEND
	.byte	W96
	.byte	W96
	.byte	W96
song079_8_5:
	.byte	W48
	.byte		N05	, Fn2, v068
	.byte	W12
	.byte		N05	
	.byte	W24
	.byte		N05	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song079_8_1
	.byte	PATT	
		.word	song079_8_2
	.byte	PATT	
		.word	song079_8_3
	.byte	PATT	
		.word	song079_8_4
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song079_8_5
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
song079_8_6:
	.byte	W12
	.byte		N05	, As2, v068
	.byte	W12
	.byte		N03	
	.byte	W12
	.byte		N03	
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N03	
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte	PEND
song079_8_7:
	.byte		N03	, As2, v068
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W60
	.byte	PEND
	.byte	PATT	
		.word	song079_8_6
song079_8_8:
	.byte		N05	, As2, v068
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N04	
	.byte	W24
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W36
	.byte	PEND
song079_8_9:
	.byte	W12
	.byte		N06	, An2, v068
	.byte	W12
	.byte		N04	
	.byte	W24
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte	PEND
song079_8_10:
	.byte	W12
	.byte		N05	, An2, v068
	.byte	W12
	.byte		N04	
	.byte	W24
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W36
	.byte	PEND
song079_8_11:
	.byte	W12
	.byte		N06	, As2, v068
	.byte	W12
	.byte		N04	
	.byte	W24
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte	PEND
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N04	
	.byte	W24
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W24
	.byte			Fs2
	.byte	W12
	.byte	PATT	
		.word	song079_8_6
	.byte	PATT	
		.word	song079_8_7
	.byte	PATT	
		.word	song079_8_6
	.byte	PATT	
		.word	song079_8_8
	.byte	PATT	
		.word	song079_8_9
	.byte	PATT	
		.word	song079_8_10
	.byte	PATT	
		.word	song079_8_11
	.byte	W12
	.byte		N05	, Cn3, v068
	.byte	W12
	.byte		N04	
	.byte	W24
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W24
	.byte			Gs2
	.byte	W12
	.byte	PATT	
		.word	song079_8_1
	.byte	PATT	
		.word	song079_8_2
	.byte	PATT	
		.word	song079_8_3
	.byte	W14
	.byte		N05	, As2, v068
	.byte	W12
	.byte		N04	
	.byte	W22
	.byte		N05	
	.byte	W11
	.byte		N05	
	.byte	W19
	.byte	VOL	, v082
	.byte	W10
	.byte		v076
	.byte	W08
	.byte	W18
	.byte		v075
	.byte	W16
	.byte		v073
	.byte	W23
	.byte		v071
	.byte	W14
	.byte		v070
	.byte	W16
	.byte		v068
	.byte	W09
	.byte	W04
	.byte		v066
	.byte	W24
	.byte	W02
	.byte		v065
	.byte	W36
	.byte		v063
	.byte	W19
	.byte		v062
	.byte	W11
	.byte	W30
	.byte		v060
	.byte	W17
	.byte		v058
	.byte	W14
	.byte		v057
	.byte	W14
	.byte		v056
	.byte	W13
	.byte		v054
	.byte	W08
	.byte	W01
	.byte		v052
	.byte	W32
	.byte	W01
	.byte		v051
	.byte	W14
	.byte		N05	, Fn2
	.byte	W06
	.byte	VOL	, v049
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte	VOL	, v047
	.byte	W08
	.byte		v044
	.byte	W08
	.byte		v042
	.byte	W02
	.byte		N05	
	.byte	W12
	.byte	W05
	.byte	VOL	, v041
	.byte	W08
	.byte		N05	, As2
	.byte	W01
	.byte	VOL	, v039
	.byte	W10
	.byte		v038
	.byte	W02
	.byte		N03	
	.byte	W08
	.byte	VOL	, v036
	.byte	W09
	.byte		v034
	.byte	W04
	.byte		N06	
	.byte	W06
	.byte	VOL	, v033
	.byte	W07
	.byte		N03	
	.byte	W06
	.byte	VOL	, v031
	.byte	W15
	.byte		v029
	.byte	W03
	.byte		N06	
	.byte	W08
	.byte	VOL	, v028
	.byte	W04
	.byte	W12
	.byte		N05	
	.byte	W02
	.byte	VOL	, v027
	.byte	W11
	.byte		N04	
	.byte	W04
	.byte	VOL	, v025
	.byte	W12
	.byte		v023
	.byte	W07
	.byte		N05	
	.byte	W03
	.byte	VOL	, v022
	.byte	W09
	.byte		v019
	.byte		N03	
	.byte	W09
	.byte	VOL	, v017
	.byte	W20
	.byte		v015
	.byte	W07
	.byte	W06
	.byte		v014
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte	VOL	, v012
	.byte		N04	
	.byte	W14
	.byte	VOL	, v010
	.byte	W10
	.byte		N06	
	.byte	W10
	.byte	VOL	, v009
	.byte	W02
	.byte		N06	
	.byte	W22
	.byte	VOL	, v007
	.byte	W02
	.byte		N06	
	.byte	W11
	.byte	VOL	, v005
	.byte	W01
	.byte	W13
	.byte		v004
	.byte	W01
	.byte		N05	
	.byte	W12
	.byte		N04	
	.byte	W22
	.byte		N05	
	.byte	W04
	.byte	VOL	, v002
	.byte	W07
	.byte		N05	
	.byte	W36
	.byte	W01
	.byte	VOICE	, 107
	.byte	VOL	, v099
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
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W92
	.byte	W03
	.byte	VOL	, v103
	.byte	W01
song079_8_12:
	.byte		N30	, Fs3, v127
	.byte	W30
	.byte	W01
	.byte		N08	, Ds3
	.byte	W09
	.byte		N07	, En3
	.byte	W08
	.byte		N08	, Fs3
	.byte	W09
	.byte		N09	, Gs3
	.byte	W10
	.byte		N11	, As3
	.byte	W12
	.byte		N16	, Bn3
	.byte	W17
	.byte	PEND
song079_8_13:
	.byte		N23	, Bn3, v127
	.byte	W24
	.byte			Gs3
	.byte	W24
	.byte		N17	, Gn3
	.byte	W18
	.byte		N28	, En3
	.byte	W30
	.byte	PEND
song079_8_14:
	.byte		N28	, Ds3, v127
	.byte	W30
	.byte	W01
	.byte		N08	
	.byte	W09
	.byte		N07	, Fs3
	.byte	W08
	.byte		N08	, As3
	.byte	W09
	.byte			Cs4
	.byte	W09
	.byte		N11	, Bn3
	.byte	W12
	.byte		N16	, Gs3
	.byte	W18
	.byte	PEND
	.byte		N44	, Ds4
	.byte	W48
	.byte		N42	, Dn4
	.byte	W48
	.byte		N08	, Ds4
	.byte	W09
	.byte		N10	, Cs4
	.byte	W11
	.byte		N11	, Bn3
	.byte	W12
	.byte		N15	, Gs3
	.byte	W16
	.byte		N11	, Fs3
	.byte	W12
	.byte		N05	, Bn3
	.byte	W07
	.byte		N12	
	.byte	W13
	.byte		N11	, Cs4
	.byte	W16
	.byte			Ds4
	.byte	W12
	.byte		N07	, En4
	.byte	W08
	.byte		N11	, Fs4
	.byte	W12
	.byte		N14	, Bn3
	.byte	W16
	.byte		N42	
	.byte	W48
	.byte		N08	, Ds4
	.byte	W09
	.byte		N10	, Cs4
	.byte	W11
	.byte		N11	, Bn3
	.byte	W12
	.byte		N15	, Gs3
	.byte	W16
	.byte		N11	, Fs3
	.byte	W12
	.byte		N05	, Bn3
	.byte	W07
	.byte		N11	
	.byte	W13
	.byte		N15	, Cs4
	.byte	W16
	.byte		N11	, Ds4
	.byte	W12
	.byte		N07	, En4
	.byte	W08
	.byte		N11	, Fs4
	.byte	W12
	.byte		N14	, Ds4
	.byte	W16
	.byte		N36	, Gs4
	.byte	W48
	.byte		N07	, Ds4
	.byte	W09
	.byte		N09	, Cs4
	.byte	W11
	.byte		N10	, Bn3
	.byte	W12
	.byte		N15	, Gs3
	.byte	W16
	.byte		N11	, Fs3
	.byte	W12
	.byte		N05	, Bn3
	.byte	W07
	.byte		N12	
	.byte	W13
	.byte		N11	, Cs4
	.byte	W16
	.byte		N10	, Ds4
	.byte	W12
	.byte		N07	, En4
	.byte	W08
	.byte		N11	, Fs4
	.byte	W12
	.byte		N14	, Bn3
	.byte	W16
	.byte		N42	
	.byte	W48
	.byte		N08	, Ds4
	.byte	W09
	.byte		N10	, Cs4
	.byte	W11
	.byte		N11	, Bn3
	.byte	W12
	.byte		N14	, Gs3
	.byte	W16
	.byte		N11	, Fs3
	.byte	W12
	.byte		N05	, Bn3
	.byte	W07
	.byte		N12	
	.byte	W13
	.byte		N11	, Cs4
	.byte	W16
	.byte		N10	, Ds4
	.byte	W12
	.byte		N07	, En4
	.byte	W08
	.byte		N10	, Fs4
	.byte	W12
	.byte		N15	, Bn3
	.byte	W16
	.byte		N96	, Cs4
	.byte	W32
	.byte	W02
	.byte	VOL	, v082
	.byte	W01
	.byte		v079
	.byte	W05
	.byte		v078
	.byte	W02
	.byte		v077
	.byte	W03
	.byte		v075
	.byte	W02
	.byte		v073
	.byte	W01
	.byte	W02
	.byte		v071
	.byte	W05
	.byte		v067
	.byte	W03
	.byte		v066
	.byte	W02
	.byte		v065
	.byte	W04
	.byte		v062
	.byte	W03
	.byte		v061
	.byte	W02
	.byte		v058
	.byte	W02
	.byte		v057
	.byte	W02
	.byte		v057
	.byte	W03
	.byte		v054
	.byte	W03
	.byte		v053
	.byte	W03
	.byte		v052
	.byte	W01
	.byte		v050
	.byte	W02
	.byte		v049
	.byte	W02
	.byte		v047
	.byte	W01
	.byte		v046
	.byte	W03
	.byte		v044
	.byte	W02
	.byte		v042
	.byte	W04
	.byte		v040
	.byte	W01
	.byte		v039
	.byte	W03
	.byte		v037
	.byte	W02
	.byte		v033
	.byte	W01
	.byte		v031
	.byte	W36
	.byte	W03
	.byte		v099
	.byte	W01
	.byte	PATT	
		.word	song079_8_12
	.byte	PATT	
		.word	song079_8_13
	.byte	PATT	
		.word	song079_8_14
	.byte		N44	, Ds4, v127
	.byte	W48
	.byte		N42	, Dn4
	.byte	W42
	.byte	FINE

	@********************** Track  9 **********************@

	.global song079_9
song079_9:	@ 0x082AB1DE
	.byte	KEYSH	, 0
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
	.byte	W48
	.byte	VOICE	, 104
	.byte	VOL	, v074
	.byte	PAN	, c_v+46
	.byte	W48
song079_9_1:
	.byte		N17	, As2, v072
	.byte	W36
	.byte		N13	
	.byte	W36
	.byte		N16	
	.byte	W24
	.byte	PEND
song079_9_2:
	.byte		N16	, As2, v072
	.byte	W36
	.byte		N16	
	.byte	W32
	.byte	W02
	.byte		N13	, Cn3
	.byte	W13
	.byte		N12	, An2
	.byte	W13
	.byte	PEND
song079_9_3:
	.byte		N12	, As2, v072
	.byte	W36
	.byte		N16	
	.byte	W36
	.byte		N16	
	.byte	W24
	.byte	PEND
song079_9_4:
	.byte		N17	, As2, v072
	.byte	W36
	.byte		N15	
	.byte	W32
	.byte	W02
	.byte		N24	, Cn3
	.byte	W24
	.byte	W02
	.byte	PEND
song079_9_5:
	.byte		N12	, Gn2, v104
	.byte	W24
	.byte			Fn2, v100
	.byte	W24
	.byte			Dn2
	.byte	W12
	.byte			Fn2, v096
	.byte	W24
	.byte			Fn2, v100
	.byte	W12
	.byte	PEND
song079_9_6:
	.byte	W12
	.byte		N12	, Fn2, v100
	.byte	W24
	.byte		N06	, Dn2
	.byte	W12
	.byte		N24	, An2
	.byte	W24
	.byte			Dn2, v088
	.byte	W24
	.byte	PEND
song079_9_7:
	.byte		N12	, Gn2, v096
	.byte	W24
	.byte			Fn2, v100
	.byte	W24
	.byte			Dn2, v096
	.byte	W12
	.byte			Fn2, v088
	.byte	W24
	.byte			An2, v104
	.byte	W12
	.byte	PEND
song079_9_8:
	.byte	W12
	.byte		N36	, Fn2, v088
	.byte	W56
	.byte	W02
	.byte		N13	, An2, v072
	.byte	W24
	.byte	W02
	.byte	PEND
	.byte	PATT	
		.word	song079_9_1
	.byte	PATT	
		.word	song079_9_2
	.byte	PATT	
		.word	song079_9_3
	.byte	PATT	
		.word	song079_9_4
	.byte	PATT	
		.word	song079_9_5
	.byte	PATT	
		.word	song079_9_6
	.byte	PATT	
		.word	song079_9_7
	.byte	PATT	
		.word	song079_9_8
song079_9_9:
	.byte		N12	, Dn3, v104
	.byte	W24
	.byte			Cn3, v100
	.byte	W24
	.byte			An2
	.byte	W12
	.byte			Cn3, v096
	.byte	W24
	.byte			Cn3, v100
	.byte	W12
	.byte	PEND
song079_9_10:
	.byte	W12
	.byte		N12	, Cn3, v100
	.byte	W24
	.byte		N06	, An2
	.byte	W12
	.byte		N24	, Fn3
	.byte	W24
	.byte			An2, v088
	.byte	W24
	.byte	PEND
song079_9_11:
	.byte		N12	, Dn3, v096
	.byte	W24
	.byte			Cn3, v100
	.byte	W24
	.byte			Gn2, v096
	.byte	W12
	.byte			As2, v088
	.byte	W24
	.byte			Fn3, v104
	.byte	W12
	.byte	PEND
song079_9_12:
	.byte	W12
	.byte		N12	, Fn3, v100
	.byte	W24
	.byte		N06	, Gn2
	.byte	W12
	.byte		N24	
	.byte	W24
	.byte			Fn3, v088
	.byte	W24
	.byte	PEND
song079_9_13:
	.byte		N12	, An2, v104
	.byte	W24
	.byte			Gn2, v100
	.byte	W24
	.byte			En2
	.byte	W12
	.byte			Gn2, v096
	.byte	W24
	.byte			Gn2, v100
	.byte	W12
	.byte	PEND
song079_9_14:
	.byte	W12
	.byte		N12	, Gn2, v100
	.byte	W24
	.byte		N06	, En2
	.byte	W12
	.byte		N24	, Cn3
	.byte	W24
	.byte			En2, v088
	.byte	W24
	.byte	PEND
song079_9_15:
	.byte		N12	, As2, v096
	.byte	W24
	.byte			An2, v100
	.byte	W24
	.byte			Dn2, v096
	.byte	W12
	.byte			Fn2, v088
	.byte	W24
	.byte			Cn3, v104
	.byte	W12
	.byte	PEND
song079_9_16:
	.byte	W12
	.byte		N36	, Cn3, v088
	.byte	W56
	.byte	W02
	.byte		N13	, Cn3, v072
	.byte	W24
	.byte	W02
	.byte	PEND
	.byte	PATT	
		.word	song079_9_9
	.byte	PATT	
		.word	song079_9_10
	.byte	PATT	
		.word	song079_9_11
	.byte	PATT	
		.word	song079_9_12
	.byte	PATT	
		.word	song079_9_13
	.byte	PATT	
		.word	song079_9_14
	.byte	PATT	
		.word	song079_9_15
	.byte	PATT	
		.word	song079_9_16
	.byte		N17	, As2, v072
	.byte	W96
	.byte	W48
	.byte		N23	
	.byte	W22
	.byte		N13	, Cn3
	.byte	W13
	.byte		N12	, An2
	.byte	W13
	.byte			As2
	.byte	W96
song079_9_17:
	.byte	W36
	.byte		N15	, As2, v072
	.byte	W32
	.byte	W02
	.byte		N12	, Cn3
	.byte	W12
	.byte			Gn2
	.byte	W13
	.byte		N13	, An2
	.byte	W01
	.byte	PEND
song079_9_18:
	.byte	W32
	.byte	W03
	.byte		N16	, An2, v072
	.byte	W56
	.byte	W03
	.byte		N17	
	.byte	W02
	.byte	PEND
song079_9_19:
	.byte	W36
	.byte		N15	, An2, v072
	.byte	W32
	.byte	W02
	.byte		N23	, Cn3
	.byte	W24
	.byte	W01
	.byte		N13	, As2
	.byte	W01
	.byte	PEND
	.byte	W32
	.byte	W03
	.byte		N16	
	.byte	W56
	.byte	W03
	.byte		N17	
	.byte	W02
	.byte	W36
	.byte		N15	
	.byte	W32
	.byte	W02
	.byte		N13	, An2
	.byte	W24
	.byte	W02
	.byte		N17	, Dn3
	.byte	W96
	.byte	W48
	.byte		N23	
	.byte	W22
	.byte		N13	, Fn3
	.byte	W13
	.byte		N12	, Cn3
	.byte	W13
	.byte			As2
	.byte	W96
	.byte	PATT	
		.word	song079_9_17
	.byte	PATT	
		.word	song079_9_18
	.byte	PATT	
		.word	song079_9_19
	.byte	W32
	.byte	W03
	.byte		N16	, As2, v072
	.byte	W56
	.byte	W03
	.byte		N17	, Cn3
	.byte	W02
	.byte	W36
	.byte		N15	
	.byte	W32
	.byte	W02
	.byte		N13	, En3
	.byte	W24
	.byte	W02
	.byte	PATT	
		.word	song079_9_1
	.byte	PATT	
		.word	song079_9_2
	.byte	PATT	
		.word	song079_9_3
	.byte		N17	, As2, v072
	.byte	W36
	.byte		N15	
	.byte	W32
	.byte	W02
	.byte		N24	, Cn3
	.byte	W08
	.byte	VOL	, v074
	.byte	W11
	.byte		v069
	.byte	W07
	.byte		N12	, Gn2, v104
	.byte	W19
	.byte	VOL	, v067
	.byte	W05
	.byte		N12	, Fn2, v100
	.byte	W11
	.byte	VOL	, v066
	.byte	W13
	.byte		N12	, Dn2
	.byte	W10
	.byte	VOL	, v064
	.byte	W02
	.byte		N12	, Fn2, v096
	.byte	W12
	.byte	VOL	, v063
	.byte	W12
	.byte		N12	, Fn2, v100
	.byte	W04
	.byte	VOL	, v062
	.byte	W08
	.byte	W05
	.byte		v060
	.byte	W07
	.byte		N12	
	.byte	W19
	.byte	VOL	, v058
	.byte	W05
	.byte		N06	, Dn2
	.byte	W12
	.byte		N24	, An2
	.byte	W19
	.byte	VOL	, v057
	.byte	W05
	.byte		N24	, Dn2, v088
	.byte	W14
	.byte	VOL	, v056
	.byte	W10
	.byte		N12	, Gn2, v096
	.byte	W24
	.byte			Fn2, v100
	.byte	W08
	.byte	VOL	, v054
	.byte	W16
	.byte		v052
	.byte		N12	, Dn2, v096
	.byte	W12
	.byte			Fn2, v088
	.byte	W02
	.byte	VOL	, v052
	.byte	W14
	.byte		v050
	.byte	W08
	.byte		N12	, An2, v104
	.byte	W05
	.byte	VOL	, v048
	.byte	W07
	.byte	W02
	.byte		v047
	.byte	W10
	.byte		N36	, Fn2, v088
	.byte	W23
	.byte	VOL	, v046
	.byte	W20
	.byte		v044
	.byte	W12
	.byte		v042
	.byte	W03
	.byte		N13	, An2, v072
	.byte	W05
	.byte	VOL	, v040
	.byte	W08
	.byte		v038
	.byte	W13
	.byte		N17	, As2
	.byte	W06
	.byte	VOL	, v037
	.byte	W09
	.byte		v035
	.byte	W10
	.byte		v034
	.byte	W10
	.byte		v033
	.byte	W01
	.byte		N13	
	.byte	W09
	.byte	VOL	, v031
	.byte	W09
	.byte		v029
	.byte	W13
	.byte		v028
	.byte	W05
	.byte		N16	
	.byte	W10
	.byte	VOL	, v027
	.byte	W11
	.byte		v025
	.byte	W03
	.byte		N16	
	.byte	W15
	.byte	VOL	, v023
	.byte	W15
	.byte		v023
	.byte	W06
	.byte		N16	
	.byte	W06
	.byte	VOL	, v021
	.byte	W10
	.byte		v019
	.byte	W09
	.byte		v017
	.byte	W09
	.byte		v015
	.byte		N13	, Cn3
	.byte	W13
	.byte		N12	, An2
	.byte	W07
	.byte	VOL	, v014
	.byte	W06
	.byte		N12	, As2
	.byte	W07
	.byte	VOL	, v012
	.byte	W18
	.byte		v011
	.byte	W11
	.byte		N16	
	.byte	W03
	.byte	VOL	, v009
	.byte	W21
	.byte		v008
	.byte	W12
	.byte		N16	
	.byte	W11
	.byte	VOL	, v006
	.byte	W13
	.byte		v005
	.byte		N17	
	.byte	W15
	.byte	VOL	, v004
	.byte	W21
	.byte		N15	
	.byte	W17
	.byte	VOL	, v002
	.byte	W17
	.byte		N24	, Cn3
	.byte	W24
	.byte	W02
	.byte	VOICE	, 108
	.byte	VOL	, v099
	.byte	PAN	, c_v+36
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
	.byte	VOL	, v099
	.byte	W01
	.byte		N44	, As2, v112
	.byte		N44	, Cs3
	.byte	W48
	.byte			An2
	.byte		N44	, Cn3
	.byte	W48
	.byte			Gs2
	.byte		N44	, Bn2
	.byte	W48
	.byte			En2, v120
	.byte		N44	, As2, v112
	.byte	W48
	.byte			Fs2
	.byte		N44	, As2
	.byte	W48
	.byte			Bn2
	.byte		N44	, Dn3
	.byte	W48
	.byte			Bn2, v127
	.byte		N44	, Ds3, v120
	.byte	W48
	.byte			As2, v112
	.byte		N44	, Dn3, v116
	.byte	W48
song079_9_20:
	.byte		N44	, Bn2, v112
	.byte		N44	, Ds3, v124
	.byte	W48
	.byte			As2, v127
	.byte		N44	, Cs3, v112
	.byte	W48
	.byte	PEND
	.byte			Gs2, v124
	.byte		N44	, Bn2, v116
	.byte	W48
	.byte			As2, v112
	.byte		N44	, Cs3, v127
	.byte	W48
	.byte	PATT	
		.word	song079_9_20
	.byte		N44	, Gs2, v124
	.byte		N44	, Bn2, v116
	.byte	W48
	.byte			As2, v112
	.byte		N44	, Dn3, v127
	.byte	W48
	.byte		N12	, Cs3
	.byte	W01
	.byte		N44	, Bn2, v124
	.byte	W17
	.byte		N28	, Ds3, v116
	.byte	W30
	.byte		N12	, Cs3, v120
	.byte	W01
	.byte		N44	, As2, v112
	.byte	W17
	.byte		N28	, Ds3
	.byte	W30
	.byte		N44	, Gs2, v120
	.byte		N12	, Cs3
	.byte	W18
	.byte		N28	, Ds3, v116
	.byte	W30
	.byte		N44	, As2, v120
	.byte		N11	, Cs3
	.byte	W18
	.byte		N28	, Ds3, v116
	.byte	W30
	.byte		N10	, Cs3, v127
	.byte	W01
	.byte		N44	, Bn2, v124
	.byte	W17
	.byte		N28	, Ds3, v116
	.byte	W30
	.byte	W01
	.byte		N44	, As2, v112
	.byte		N11	, Cs3, v120
	.byte	W17
	.byte		N28	, Ds3, v112
	.byte	W30
	.byte		N42	, Gs2, v120
	.byte		N11	, Cs3
	.byte	W18
	.byte		N28	, Ds3, v116
	.byte	W30
	.byte		N92	, Bn2
	.byte	W02
	.byte			Gn3
	.byte	W32
	.byte	VOL	, v090
	.byte	W01
	.byte		v087
	.byte	W05
	.byte		v085
	.byte	W02
	.byte		v085
	.byte	W03
	.byte		v082
	.byte	W02
	.byte		v081
	.byte	W01
	.byte	W02
	.byte		v078
	.byte	W05
	.byte		v075
	.byte	W03
	.byte		v072
	.byte	W02
	.byte		v071
	.byte	W04
	.byte		v069
	.byte	W03
	.byte		v066
	.byte	W03
	.byte		v064
	.byte	W01
	.byte		v063
	.byte	W02
	.byte		v062
	.byte	W03
	.byte		v060
	.byte	W03
	.byte		v059
	.byte	W03
	.byte		v057
	.byte	W01
	.byte		v056
	.byte	W02
	.byte		v054
	.byte	W02
	.byte		v052
	.byte	W01
	.byte		v051
	.byte	W03
	.byte		v048
	.byte	W02
	.byte		v047
	.byte	W04
	.byte		v044
	.byte	W01
	.byte		v043
	.byte	W03
	.byte		v041
	.byte	W02
	.byte		v036
	.byte	W01
	.byte		v034
	.byte	W36
	.byte	W03
	.byte		v099
	.byte	W01
	.byte		N44	, As2, v092
	.byte		N44	, Cs3
	.byte	W48
	.byte			An2
	.byte		N44	, Cn3
	.byte	W48
	.byte			Gs2
	.byte		N44	, Bn2
	.byte	W48
	.byte			Gn2, v100
	.byte		N44	, As2, v092
	.byte	W48
	.byte			Fs2
	.byte		N44	, As2
	.byte	W48
	.byte			Bn2, v108
	.byte		N44	, Dn3
	.byte	W48
	.byte			Bn2
	.byte		N44	, Ds3, v100
	.byte	W48
	.byte			As2, v092
	.byte		N44	, Dn3
	.byte	W48
	.byte			As2, v060
	.byte		N44	, Cs3, v072
	.byte	W48
	.byte			Fs2, v076
	.byte		N44	, Cn3, v080
	.byte	W48
	.byte			Gs2
	.byte		N44	, Bn2, v068
	.byte	W48
	.byte			En2, v092
	.byte		N44	, As2, v072
	.byte	W48
	.byte			Fs2, v080
	.byte		N44	, As2, v068
	.byte	W48
	.byte			Bn2, v076
	.byte		N44	, Dn3, v096
	.byte	W48
	.byte			Bn2, v108
	.byte		N44	, Ds3, v100
	.byte	W48
	.byte			As2, v084
	.byte		N44	, Dn3, v096
	.byte	W48
	.byte			As2, v060
	.byte		N44	, Cs3, v072
	.byte	W48
	.byte			An2, v076
	.byte		N44	, Cn3, v056
	.byte	W48
	.byte			Gs2, v080
	.byte		N44	, Bn2, v068
	.byte	W48
	.byte			Gn2, v088
	.byte		N44	, As2, v072
	.byte	W48
	.byte			Fs2, v080
	.byte		N44	, As2, v068
	.byte	W48
	.byte			Bn2, v096
	.byte		N44	, Dn3
	.byte	W48
	.byte			Bn2, v100
	.byte		N44	, Ds3, v092
	.byte	W48
	.byte			As2, v076
	.byte		N44	, Dn3, v068
	.byte	W48
	.byte			Bn2, v076
	.byte		N44	, Ds3, v092
	.byte	W48
	.byte			As2, v096
	.byte		N44	, Cs3, v084
	.byte	W48
	.byte			Gs2, v104
	.byte		N44	, Bn2, v096
	.byte	W48
	.byte			As2, v092
	.byte		N44	, Cs3, v108
	.byte	W48
	.byte			Bn2, v088
	.byte		N44	, Ds3, v104
	.byte	W48
	.byte			As2, v108
	.byte		N44	, Cs3, v092
	.byte	W48
	.byte			Gs2, v104
	.byte		N44	, Bn2, v096
	.byte	W48
	.byte			As2, v092
	.byte		N44	, Dn3, v108
	.byte	W48
	.byte		N17	, Ds3
	.byte	W01
	.byte		N44	, Bn2, v104
	.byte	W17
	.byte		N28	, Gs3, v096
	.byte	W30
	.byte		N17	, Cs3, v100
	.byte	W01
	.byte		N44	, As2, v084
	.byte	W17
	.byte		N28	, Fs3, v092
	.byte	W30
	.byte		N44	, Gs2, v100
	.byte		N17	, Bn2
	.byte	W18
	.byte		N28	, En3, v096
	.byte	W30
	.byte		N44	, As2, v100
	.byte		N17	, Ds3
	.byte	W18
	.byte		N28	, As3, v096
	.byte	W30
	.byte		N17	, Bn3, v108
	.byte	W01
	.byte		N44	, Bn2, v104
	.byte	W17
	.byte		N28	, Ds4, v096
	.byte	W30
	.byte	W01
	.byte		N44	, As2, v084
	.byte		N17	, Cs4, v100
	.byte	W17
	.byte		N28	, As3, v092
	.byte	W30
	.byte		N42	, Gs2, v100
	.byte		N17	, Bn3
	.byte	W18
	.byte		N28	, En4, v096
	.byte	W30
	.byte		TIE	, Bn2
	.byte	W02
	.byte			Gn4
	.byte	W32
	.byte	VOL	, v090
	.byte	W01
	.byte		v087
	.byte	W05
	.byte		v085
	.byte	W02
	.byte		v085
	.byte	W03
	.byte		v082
	.byte	W02
	.byte		v081
	.byte	W01
	.byte	W02
	.byte		v078
	.byte	W05
	.byte		v075
	.byte	W03
	.byte		v072
	.byte	W02
	.byte		v071
	.byte	W04
	.byte		v069
	.byte	W03
	.byte		v066
	.byte	W03
	.byte		v064
	.byte	W01
	.byte		v063
	.byte	W02
	.byte		v062
	.byte	W03
	.byte		v060
	.byte	W03
	.byte		v059
	.byte	W03
	.byte		v057
	.byte	W01
	.byte		v056
	.byte	W02
	.byte		v054
	.byte	W02
	.byte		v052
	.byte	W01
	.byte		v051
	.byte	W03
	.byte		v048
	.byte	W02
	.byte		v047
	.byte	W04
	.byte		v044
	.byte	W01
	.byte		v043
	.byte	W03
	.byte		v041
	.byte	W02
	.byte		v036
	.byte	W01
	.byte		v034
	.byte	W02
	.byte		EOT	
	.byte	W02
	.byte		EOT	, Bn2
	.byte	FINE

	@********************** Track  10 **********************@

	.global song079_10
song079_10:	@ 0x082AB6D9
	.byte	KEYSH	, 0
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
	.byte	W48
	.byte	VOICE	, 21
	.byte	VOL	, v090
	.byte	PAN	, c_v+36
	.byte	W48
song079_10_1:
	.byte	W28
	.byte		N06	, Cs5, v060
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Cs5, v048
	.byte	W06
	.byte			Fs4, v044
	.byte	W18
	.byte			Cs5, v060
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Cs5, v048
	.byte	W06
	.byte			Fs4, v044
	.byte	W14
	.byte	PEND
song079_10_2:
	.byte	W16
	.byte		N06	, Cs5, v048
	.byte	W06
	.byte			Fs4, v044
	.byte	W06
	.byte			Cs5
	.byte	W06
	.byte			Fs4, v040
	.byte	W30
	.byte			Cs5, v032
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Cs5, v008
	.byte	W06
	.byte			Fs4, v004
	.byte	W14
	.byte	PEND
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song079_10_1
	.byte	PATT	
		.word	song079_10_2
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song079_10_1
	.byte	PATT	
		.word	song079_10_2
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song079_10_1
	.byte	PATT	
		.word	song079_10_2
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
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song079_10_1
	.byte	PATT	
		.word	song079_10_2
	.byte	W96
	.byte	W78
	.byte	VOL	, v090
	.byte	W12
	.byte		v084
	.byte	W06
	.byte	W19
	.byte		v082
	.byte	W09
	.byte		N06	, Cs5, v060
	.byte	W06
	.byte			Fs4
	.byte	W01
	.byte	VOL	, v081
	.byte	W05
	.byte		N06	, Cs5, v048
	.byte	W06
	.byte			Fs4, v044
	.byte	W13
	.byte	VOL	, v079
	.byte	W05
	.byte		N06	, Cs5, v060
	.byte	W06
	.byte			Fs4
	.byte	W02
	.byte	VOL	, v077
	.byte	W04
	.byte		N06	, Cs5, v048
	.byte	W06
	.byte			Fs4, v044
	.byte	W06
	.byte	VOL	, v076
	.byte	W08
	.byte	W06
	.byte		v073
	.byte	W10
	.byte		N06	, Cs5, v048
	.byte	W06
	.byte			Fs4, v044
	.byte	W06
	.byte			Cs5
	.byte	W03
	.byte	VOL	, v071
	.byte	W03
	.byte		N06	, Fs4, v040
	.byte	W30
	.byte			Cs5, v032
	.byte	W03
	.byte	VOL	, v070
	.byte	W03
	.byte		N06	, Fs4
	.byte	W06
	.byte			Cs5, v008
	.byte	W06
	.byte			Fs4, v004
	.byte	W04
	.byte	VOL	, v068
	.byte	W10
	.byte	W32
	.byte		v066
	.byte	W16
	.byte		v065
	.byte	W14
	.byte		v063
	.byte	W15
	.byte		v061
	.byte	W12
	.byte		v059
	.byte	W07
	.byte	W02
	.byte		v057
	.byte	W32
	.byte	W01
	.byte		v056
	.byte	W20
	.byte		v054
	.byte	W13
	.byte		v052
	.byte	W07
	.byte		v048
	.byte	W09
	.byte		v047
	.byte	W12
	.byte	W06
	.byte		v045
	.byte	W09
	.byte		v043
	.byte	W11
	.byte		v042
	.byte	W02
	.byte		N06	, Cs5, v060
	.byte	W06
	.byte			Fs4
	.byte	W01
	.byte	VOL	, v040
	.byte	W05
	.byte		N06	, Cs5, v048
	.byte	W05
	.byte	VOL	, v038
	.byte	W01
	.byte		N06	, Fs4, v044
	.byte	W08
	.byte	VOL	, v036
	.byte	W10
	.byte		N06	, Cs5, v060
	.byte	W03
	.byte	VOL	, v034
	.byte	W03
	.byte		N06	, Fs4
	.byte	W06
	.byte			Cs5, v048
	.byte	W06
	.byte			Fs4, v044
	.byte	W01
	.byte	VOL	, v033
	.byte	W11
	.byte		v031
	.byte	W02
	.byte	W16
	.byte		v029
	.byte		N06	, Cs5, v048
	.byte	W06
	.byte			Fs4, v044
	.byte	W06
	.byte			Cs5
	.byte	W02
	.byte	VOL	, v028
	.byte	W04
	.byte		N06	, Fs4, v040
	.byte	W09
	.byte	VOL	, v026
	.byte	W10
	.byte		v023
	.byte	W08
	.byte		v020
	.byte	W03
	.byte		N06	, Cs5, v032
	.byte	W06
	.byte	VOL	, v019
	.byte		N06	, Fs4
	.byte	W06
	.byte			Cs5, v008
	.byte	W06
	.byte			Fs4, v004
	.byte	W08
	.byte	VOL	, v017
	.byte	W06
	.byte	W07
	.byte		v015
	.byte	W18
	.byte		v014
	.byte	W14
	.byte		v011
	.byte	W21
	.byte		v009
	.byte	W23
	.byte		v008
	.byte	W13
	.byte		v006
	.byte	W15
	.byte		v004
	.byte	W36
	.byte	W02
	.byte		v003
	.byte	W42
	.byte	W01
	.byte	VOICE	, 108
	.byte	VOL	, v090
	.byte	PAN	, c_v-44
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
	.byte	VOL	, v090
	.byte	W01
	.byte		N44	, Ds1, v120
	.byte		N44	, Fs2, v112
	.byte	W48
	.byte			Dn1, v120
	.byte		N44	, Dn2, v112
	.byte	W48
	.byte			Cs1, v120
	.byte		N44	, En2
	.byte	W48
	.byte			Gn1
	.byte		N44	, Cs2, v112
	.byte	W48
	.byte			Cn1, v116
	.byte		N44	, Ds2
	.byte	W48
	.byte			Fn1, v120
	.byte		N44	, Gs2, v116
	.byte	W48
	.byte			En1, v124
	.byte		N44	, Gs2, v116
	.byte	W48
	.byte			Fs1, v127
	.byte		N44	, En2, v112
	.byte	W48
song079_10_3:
	.byte		N44	, En1, v112
	.byte		N44	, Gs2, v124
	.byte	W48
	.byte			Ds1, v112
	.byte		N44	, Fs2, v116
	.byte	W48
	.byte	PEND
	.byte			Cs1, v120
	.byte		N44	, En2, v124
	.byte	W48
	.byte			Ds1, v127
	.byte		N44	, Fs2, v124
	.byte	W48
	.byte	PATT	
		.word	song079_10_3
	.byte		N44	, Cs1, v120
	.byte		N44	, En2, v124
	.byte	W48
	.byte			Fs1, v127
	.byte		N44	, Gs2, v124
	.byte	W48
song079_10_4:
	.byte		N44	, En1, v127
	.byte		N44	, Gs2, v120
	.byte	W48
	.byte			Ds1
	.byte		N44	, Fs2, v112
	.byte	W48
	.byte	PEND
	.byte			Cs1
	.byte		N44	, En2, v120
	.byte	W48
	.byte			Ds1, v112
	.byte		N44	, Fs2, v120
	.byte	W48
	.byte	PATT	
		.word	song079_10_4
	.byte		N44	, Cs1, v112
	.byte		N40	, En2, v120
	.byte	W42
	.byte		N92	, En2, v116
	.byte	W02
	.byte		TIE	, Gn2, v124
	.byte	W36
	.byte	W02
	.byte	VOL	, v082
	.byte	W01
	.byte		v079
	.byte	W05
	.byte		v078
	.byte	W02
	.byte		v077
	.byte	W03
	.byte		v075
	.byte	W02
	.byte		v073
	.byte	W01
	.byte	W01
	.byte		v071
	.byte	W06
	.byte		v067
	.byte	W03
	.byte		v066
	.byte	W02
	.byte		v065
	.byte	W04
	.byte		v062
	.byte	W03
	.byte		v061
	.byte	W02
	.byte		v058
	.byte	W02
	.byte		v057
	.byte	W02
	.byte		v057
	.byte	W01
	.byte		v056
	.byte	W05
	.byte		v053
	.byte	W03
	.byte		v052
	.byte	W01
	.byte		v050
	.byte	W02
	.byte		v049
	.byte	W02
	.byte		v047
	.byte	W01
	.byte		v046
	.byte	W03
	.byte		v044
	.byte	W02
	.byte		v042
	.byte	W02
	.byte		EOT	
	.byte	W01
	.byte	VOL	, v040
	.byte	W02
	.byte		v039
	.byte	W02
	.byte		v037
	.byte	W03
	.byte		v033
	.byte	W01
	.byte		v031
	.byte	W36
	.byte	W03
	.byte		v090
	.byte	W01
	.byte		N44	, Ds2, v100
	.byte		N44	, Fs2
	.byte	W48
	.byte			Ds2
	.byte		N44	, Fs2, v104
	.byte	W48
	.byte			Cs2, v100
	.byte		N44	, En2, v108
	.byte	W48
	.byte			Cs2
	.byte		N44	, En2, v100
	.byte	W48
	.byte			Cn2, v104
	.byte		N44	, Ds2
	.byte	W48
	.byte			Fn2, v120
	.byte		N44	, Gs2, v108
	.byte	W48
	.byte			En1, v112
	.byte		N44	, En2
	.byte	W48
	.byte			Fs1, v108
	.byte		N44	, En2, v100
	.byte	W48
	.byte			Bn0, v092
	.byte		N44	, Fs2, v072
	.byte	W48
	.byte			Gs1, v092
	.byte		N44	, Ds2, v072
	.byte	W48
	.byte			Cs1, v092
	.byte		N44	, En2, v088
	.byte	W48
	.byte			Gn1, v092
	.byte		N44	, Cs2, v088
	.byte	W48
	.byte			Cn1, v084
	.byte		N44	, Ds2
	.byte	W48
	.byte			Fn1, v100
	.byte		N44	, Gs2, v080
	.byte	W48
	.byte			En1, v104
	.byte		N44	, Gs2, v096
	.byte	W48
	.byte			Fs1, v112
	.byte		N44	, En2, v092
	.byte	W48
	.byte			Ds2, v064
	.byte		N44	, Fs2, v072
	.byte	W48
	.byte			Ds2, v060
	.byte		N44	, Fs2, v084
	.byte	W48
	.byte			Cs2, v076
	.byte		N44	, En2, v088
	.byte	W48
	.byte			Cs2
	.byte		N44	, En2, v072
	.byte	W48
	.byte			Cn2, v084
	.byte		N44	, Ds2
	.byte	W48
	.byte			Fn2, v100
	.byte		N44	, Gs2, v088
	.byte	W48
	.byte			En1, v092
	.byte		N44	, En2
	.byte	W48
	.byte			Fs1, v088
	.byte		N44	, En2, v068
	.byte	W48
	.byte			En1, v080
	.byte		N44	, Gs2, v096
	.byte	W48
	.byte			Ds1, v068
	.byte		N44	, Fs2, v088
	.byte	W48
	.byte			Cs1, v100
	.byte		N44	, En2, v104
	.byte	W48
	.byte			Ds1, v120
	.byte		N44	, Fs2, v104
	.byte	W48
	.byte			En1, v092
	.byte		N44	, Gs2, v104
	.byte	W48
	.byte			Ds1, v076
	.byte		N44	, Fs2, v096
	.byte	W48
	.byte			Cs1, v100
	.byte		N44	, En2, v104
	.byte	W48
	.byte			Fs1, v120
	.byte		N44	, Gs2, v104
	.byte	W48
song079_10_5:
	.byte		N44	, En1, v120
	.byte		N44	, Gs2, v100
	.byte	W48
	.byte			Ds1
	.byte		N44	, Fs2, v092
	.byte	W48
	.byte	PEND
	.byte			Cs1, v084
	.byte		N44	, En2, v100
	.byte	W48
	.byte			Ds1, v084
	.byte		N44	, Fs2, v100
	.byte	W48
	.byte	PATT	
		.word	song079_10_5
	.byte		N44	, Cs1, v084
	.byte		N40	, En2, v100
	.byte	W42
	.byte		TIE	, En2, v096
	.byte	W02
	.byte			Gn2, v104
	.byte	W36
	.byte	W02
	.byte	VOL	, v082
	.byte	W01
	.byte		v079
	.byte	W05
	.byte		v078
	.byte	W02
	.byte		v077
	.byte	W03
	.byte		v075
	.byte	W02
	.byte		v073
	.byte	W01
	.byte	W01
	.byte		v071
	.byte	W06
	.byte		v067
	.byte	W03
	.byte		v066
	.byte	W02
	.byte		v065
	.byte	W04
	.byte		v062
	.byte	W03
	.byte		v061
	.byte	W02
	.byte		v058
	.byte	W02
	.byte		v057
	.byte	W02
	.byte		v057
	.byte	W01
	.byte		v056
	.byte	W05
	.byte		v053
	.byte	W03
	.byte		v052
	.byte	W01
	.byte		v050
	.byte	W02
	.byte		v049
	.byte	W02
	.byte		v047
	.byte	W01
	.byte		v046
	.byte	W03
	.byte		v044
	.byte	W02
	.byte		v042
	.byte	W03
	.byte		v040
	.byte	W02
	.byte		v039
	.byte	W02
	.byte		v037
	.byte	W02
	.byte		EOT	
	.byte	W01
	.byte		EOT	, En2
	.byte	VOL	, v033
	.byte	W01
	.byte		v031
	.byte	FINE

	@********************** Track  11 **********************@

	.global song079_11
song079_11:	@ 0x082ABA6C
	.byte	KEYSH	, 0
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
	.byte	W48
	.byte	VOICE	, 21
	.byte	VOL	, v090
	.byte	PAN	, c_v-54
	.byte	W48
song079_11_1:
	.byte	W64
	.byte		N06	, Cs5, v072
	.byte	W06
	.byte			Fs4
	.byte	W18
	.byte			Cs5
	.byte	W06
	.byte			Fs4
	.byte	W02
	.byte	PEND
song079_11_2:
	.byte	W04
	.byte		N06	, Cs5, v072
	.byte	W06
	.byte			Fs4
	.byte	W30
	.byte			Cs5
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Cs5
	.byte	W06
	.byte			Fs4
	.byte	W21
	.byte		N05	, Cs5
	.byte	W06
	.byte		N06	, Fs4
	.byte	W06
	.byte			Cs5
	.byte	W05
	.byte	PEND
song079_11_3:
	.byte	W01
	.byte		N06	, Fs4, v072
	.byte	W92
	.byte	W03
	.byte	PEND
	.byte	W96
	.byte	PATT	
		.word	song079_11_1
	.byte	PATT	
		.word	song079_11_2
	.byte	PATT	
		.word	song079_11_3
	.byte	W96
	.byte	PATT	
		.word	song079_11_1
	.byte	PATT	
		.word	song079_11_2
	.byte	PATT	
		.word	song079_11_3
	.byte	W96
	.byte	PATT	
		.word	song079_11_1
	.byte	PATT	
		.word	song079_11_2
	.byte	PATT	
		.word	song079_11_3
	.byte	W96
song079_11_4:
	.byte	W03
	.byte		N02	, Fs3, v072
	.byte	W06
	.byte			Fs2
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Fs2
	.byte	W06
	.byte		N06	, Fs3
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte		N04	, Fs3
	.byte	W12
	.byte		N02	, En2
	.byte	W06
	.byte			Fs2
	.byte	W06
	.byte		N06	, Fs3
	.byte	W09
	.byte	PEND
song079_11_5:
	.byte	W03
	.byte		N01	, Fs2, v072
	.byte	W12
	.byte		N04	, Fs3
	.byte	W12
	.byte		N01	, Gs2
	.byte	W02
	.byte		N04	, Gs3
	.byte	W10
	.byte			Gs2
	.byte	W12
	.byte		N06	, Gs3
	.byte	W12
	.byte		N03	, Gs2
	.byte	W12
	.byte		N02	
	.byte	W06
	.byte		N02	
	.byte	W06
	.byte			Fs2
	.byte	W09
	.byte	PEND
song079_11_6:
	.byte	W03
	.byte		N02	, An2, v072
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			An2
	.byte	W06
	.byte		N02	
	.byte	W06
	.byte		N06	, An3
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			An2
	.byte	W12
	.byte		N04	, An3
	.byte	W12
	.byte		N02	, Gn2
	.byte	W06
	.byte			An2
	.byte	W06
	.byte		N06	, An3
	.byte	W09
	.byte	PEND
song079_11_7:
	.byte	W03
	.byte		N01	, Gs2, v072
	.byte	W12
	.byte		N04	, Gs3
	.byte	W12
	.byte		N01	, An2
	.byte	W02
	.byte		N04	, An3
	.byte	W10
	.byte			An2
	.byte	W12
	.byte		N06	, An3
	.byte	W12
	.byte		N03	, An2
	.byte	W12
	.byte		N02	
	.byte	W06
	.byte		N02	
	.byte	W06
	.byte		N02	
	.byte	W09
	.byte	PEND
song079_11_8:
	.byte	W03
	.byte		N02	, Gs3, v072
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte			An2
	.byte	W06
	.byte		N06	, Gs3
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			An2
	.byte	W12
	.byte		N04	, Gs3
	.byte	W12
	.byte		N02	, Gn2
	.byte	W06
	.byte			An2
	.byte	W06
	.byte		N06	, Gs3
	.byte	W09
	.byte	PEND
song079_11_9:
	.byte	W03
	.byte		N01	, An2, v072
	.byte	W12
	.byte		N04	, Gs3
	.byte	W12
	.byte		N01	, Fs2
	.byte	W02
	.byte		N04	, Gs3
	.byte	W10
	.byte			Fs2
	.byte	W12
	.byte		N06	, Gs3
	.byte	W12
	.byte		N03	, Fs2
	.byte	W12
	.byte		N02	, Gs3
	.byte	W06
	.byte			Fs2
	.byte	W06
	.byte			En2
	.byte	W09
	.byte	PEND
song079_11_10:
	.byte	W03
	.byte		N02	, An3, v072
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			An2
	.byte	W06
	.byte		N06	, Gs3
	.byte	W12
	.byte			An3
	.byte	W12
	.byte			An2
	.byte	W12
	.byte		N04	, An3
	.byte	W12
	.byte		N02	, Gn2
	.byte	W06
	.byte			An2
	.byte	W06
	.byte		N06	, Gs3
	.byte	W09
	.byte	PEND
	.byte	W03
	.byte		N01	, An2
	.byte	W12
	.byte		N04	, An3
	.byte	W12
	.byte		N01	, Fs2
	.byte	W02
	.byte		N04	, An3
	.byte	W10
	.byte			Fs2
	.byte	W12
	.byte		N06	, An3
	.byte	W12
	.byte		N03	, Fs2
	.byte	W12
	.byte		N02	, Gs3
	.byte	W06
	.byte			Fs2
	.byte	W06
	.byte			En2
	.byte	W01
	.byte		N06	, Cs5
	.byte	W06
	.byte			Fs4
	.byte	W02
	.byte	PATT	
		.word	song079_11_4
	.byte	PATT	
		.word	song079_11_5
	.byte	PATT	
		.word	song079_11_6
	.byte	PATT	
		.word	song079_11_7
	.byte	PATT	
		.word	song079_11_8
	.byte	PATT	
		.word	song079_11_9
	.byte	PATT	
		.word	song079_11_10
	.byte	W03
	.byte		N01	, An2, v072
	.byte	W12
	.byte		N04	, Bn3
	.byte	W12
	.byte		N01	, Fs2
	.byte	W02
	.byte		N04	, Bn3
	.byte	W10
	.byte			Fs2
	.byte	W12
	.byte		N06	, Bn3
	.byte	W12
	.byte		N03	, Fs2
	.byte	W12
	.byte		N02	, Bn3
	.byte	W06
	.byte			Fs2
	.byte	W06
	.byte			En2
	.byte	W01
	.byte		N06	, Cs5
	.byte	W06
	.byte			Fs4
	.byte	W02
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
		.word	song079_11_1
	.byte	PATT	
		.word	song079_11_2
	.byte	PATT	
		.word	song079_11_3
	.byte	W78
	.byte	VOL	, v090
	.byte	W11
	.byte		v084
	.byte	W07
	.byte	W18
	.byte		v082
	.byte	W16
	.byte		v081
	.byte	W24
	.byte		v079
	.byte	W06
	.byte		N06	, Cs5, v072
	.byte	W06
	.byte			Fs4
	.byte	W01
	.byte	VOL	, v077
	.byte	W16
	.byte		v076
	.byte	W01
	.byte		N06	, Cs5
	.byte	W06
	.byte			Fs4
	.byte	W02
	.byte	W04
	.byte	VOL	, v073
	.byte		N06	, Cs5
	.byte	W06
	.byte			Fs4
	.byte	W20
	.byte	VOL	, v071
	.byte	W10
	.byte		N06	, Cs5
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Cs5
	.byte	W06
	.byte			Fs4
	.byte	W08
	.byte	VOL	, v070
	.byte	W13
	.byte		N05	, Cs5
	.byte	W06
	.byte	VOL	, v068
	.byte		N06	, Fs4
	.byte	W06
	.byte			Cs5
	.byte	W05
	.byte	W01
	.byte			Fs4
	.byte	W30
	.byte	VOL	, v066
	.byte	W16
	.byte		v065
	.byte	W14
	.byte		v063
	.byte	W15
	.byte		v061
	.byte	W12
	.byte		v059
	.byte	W08
	.byte	W01
	.byte		v057
	.byte	W32
	.byte	W01
	.byte		v056
	.byte	W20
	.byte		v054
	.byte	W13
	.byte		v052
	.byte	W07
	.byte		v048
	.byte	W09
	.byte		v047
	.byte	W13
	.byte	W05
	.byte		v045
	.byte	W09
	.byte		v043
	.byte	W11
	.byte		v042
	.byte	W09
	.byte		v040
	.byte	W10
	.byte		v038
	.byte	W09
	.byte		v036
	.byte	W11
	.byte		N06	, Cs5
	.byte	W02
	.byte	VOL	, v034
	.byte	W04
	.byte		N06	, Fs4
	.byte	W12
	.byte	VOL	, v033
	.byte	W06
	.byte		N06	, Cs5
	.byte	W05
	.byte	VOL	, v031
	.byte	W01
	.byte		N06	, Fs4
	.byte	W02
	.byte	W04
	.byte			Cs5
	.byte	W06
	.byte			Fs4
	.byte	W04
	.byte	VOL	, v029
	.byte	W15
	.byte		v028
	.byte	W11
	.byte		N06	, Cs5
	.byte	W02
	.byte	VOL	, v026
	.byte	W04
	.byte		N06	, Fs4
	.byte	W05
	.byte	VOL	, v023
	.byte	W01
	.byte		N06	, Cs5
	.byte	W06
	.byte			Fs4
	.byte	W02
	.byte	VOL	, v020
	.byte	W09
	.byte		v019
	.byte	W10
	.byte		N05	, Cs5
	.byte	W06
	.byte		N06	, Fs4
	.byte	W04
	.byte	VOL	, v017
	.byte	W02
	.byte		N06	, Cs5
	.byte	W05
	.byte	W01
	.byte			Fs4
	.byte	W05
	.byte	VOL	, v015
	.byte	W18
	.byte		v014
	.byte	W14
	.byte		v011
	.byte	W21
	.byte		v009
	.byte	W23
	.byte		v008
	.byte	W13
	.byte		v006
	.byte	W01
	.byte	W14
	.byte		v004
	.byte	W36
	.byte	W02
	.byte		v003
	.byte	W44
	.byte	FINE

	@********************** Track  12 **********************@

	.global song079_12
song079_12:	@ 0x082ABD00
	.byte	KEYSH	, 0
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
	.byte	W48
	.byte	VOICE	, 63
	.byte	VOL	, v099
	.byte	PAN	, c_v-4
	.byte	BEND	, c_v
	.byte	W48
song079_12_1:
	.byte		N12	, En5, v100
	.byte	W24
	.byte			Dn5
	.byte	W24
	.byte			Cs5
	.byte	W12
	.byte			Dn5
	.byte	W24
	.byte		N68	, An4
	.byte	W12
	.byte	PEND
song079_12_14:
	.byte	W20
	.byte	MOD	, 1
	.byte	W12
	.byte		3
	.byte	W06
	.byte		6
	.byte	W22
	.byte		N05	, Fs4, v100
	.byte	W03
	.byte	MOD	, 2
	.byte	W01
	.byte		0
	.byte	W08
	.byte		N12	, An4
	.byte	W12
	.byte			Fs4
	.byte	W12
	.byte	PEND
song079_12_2:
	.byte		N12	, En5, v100
	.byte	W24
	.byte			Dn5
	.byte	W24
	.byte			Cs5
	.byte	W12
	.byte			Dn5
	.byte	W24
	.byte			En5
	.byte	W12
	.byte	PEND
	.byte	W12
	.byte		N44	, An4
	.byte	W18
	.byte	MOD	, 1
	.byte	W04
	.byte		3
	.byte	W05
	.byte		6
	.byte	W05
	.byte		8
	.byte	W07
	.byte		11
	.byte	W08
	.byte		7
	.byte	W01
	.byte		N04	, Fs4
	.byte	W01
	.byte	MOD	, 2
	.byte	W01
	.byte		0
	.byte	W10
	.byte		N12	, An4
	.byte	W12
	.byte			Fs4
	.byte	W12
song079_12_3:
	.byte		N12	, Bn4, v100
	.byte	W24
	.byte			An4
	.byte	W24
	.byte			Fs4
	.byte	W12
	.byte			An4
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte	PEND
	.byte	W12
	.byte		N12	
	.byte	W24
	.byte		N06	, Fs4
	.byte	W12
	.byte		N24	, Cs5
	.byte	W24
	.byte			Fs4
	.byte	W24
song079_12_4:
	.byte		N12	, Bn4, v100
	.byte	W24
	.byte			An4
	.byte	W24
	.byte			Fs4
	.byte	W12
	.byte			An4
	.byte	W24
	.byte			Cs5
	.byte	W12
	.byte	PEND
	.byte	W12
	.byte		N44	, An4
	.byte	W23
	.byte	MOD	, 2
	.byte	W07
	.byte		5
	.byte	W03
	.byte		7
	.byte	W03
	.byte		10
	.byte	W07
	.byte		12
	.byte	W05
	.byte		N05	, Fs4
	.byte	W08
	.byte	MOD	, 7
	.byte	W02
	.byte		2
	.byte	W01
	.byte		0
	.byte	W01
	.byte		N12	, An4
	.byte	W12
	.byte		N08	, Fs4
	.byte	W12
	.byte	PATT	
		.word	song079_12_1
	.byte	W04
	.byte	MOD	, 1
	.byte	W06
	.byte		3
	.byte	W05
	.byte		6
	.byte	W05
	.byte		8
	.byte	W08
	.byte		11
	.byte	W22
	.byte		3
	.byte	W01
	.byte		0
	.byte	W09
	.byte		N05	, Fs4, v100
	.byte	W12
	.byte		N12	, An4
	.byte	W12
	.byte			Fs4
	.byte	W12
	.byte	PATT	
		.word	song079_12_2
	.byte	W12
	.byte		N44	, An4, v100
	.byte	W14
	.byte	MOD	, 2
	.byte	W04
	.byte		5
	.byte	W05
	.byte		7
	.byte	W08
	.byte		10
	.byte	W13
	.byte		7
	.byte	W02
	.byte		3
	.byte	W01
	.byte		1
	.byte	W01
	.byte		N03	, Fs4
	.byte	W01
	.byte	MOD	, 0
	.byte	W11
	.byte		N12	, An4
	.byte	W12
	.byte			Fs4
	.byte	W12
	.byte	PATT	
		.word	song079_12_3
	.byte	W12
	.byte		N12	, An4, v100
	.byte	W24
	.byte		N06	, Fs4
	.byte	W12
	.byte		N23	, Cs5
	.byte	W24
	.byte		N24	, Fs4
	.byte	W24
	.byte	PATT	
		.word	song079_12_4
	.byte	W12
	.byte		N78	, An4, v100
	.byte	W20
	.byte	MOD	, 1
	.byte	W07
	.byte		3
	.byte	W05
	.byte		6
	.byte	W06
	.byte		8
	.byte	W32
	.byte	W01
	.byte		2
	.byte	W02
	.byte		0
	.byte	W11
song079_12_5:
	.byte	W02
	.byte		N68	, En4, v064
	.byte	W68
	.byte	W02
	.byte		N05	, Cs4, v072
	.byte	W04
	.byte		N12	, Dn4, v076
	.byte	W10
	.byte		N80	, Cs4
	.byte	W10
	.byte	PEND
	.byte	W72
	.byte		N28	, Bn3, v080
	.byte	W24
	.byte	W03
	.byte		N04	, Cn4, v072
	.byte	W01
	.byte		N72	, Cs4, v084
	.byte	W68
	.byte	W01
	.byte		N05	, An3, v068
	.byte	W03
	.byte		N11	, Bn3, v064
	.byte	W10
	.byte		TIE	, Fs3, v072
	.byte	W10
	.byte	W90
	.byte	W01
	.byte		EOT	
	.byte	W05
song079_12_6:
	.byte	W01
	.byte		N72	, Gs3, v088
	.byte	W72
	.byte	W02
	.byte		N12	, An3, v084
	.byte	W12
	.byte		N68	, Bn3, v080
	.byte	W09
	.byte	PEND
song079_12_7:
	.byte	W60
	.byte	W03
	.byte		N32	, Fs3, v076
	.byte	W32
	.byte	W01
	.byte	PEND
song079_12_8:
	.byte	W01
	.byte		N05	, Cn4, v076
	.byte	W02
	.byte		N23	, Cs4, v080
	.byte	W22
	.byte		N10	, Bn3, v084
	.byte	W13
	.byte		N12	, En4, v080
	.byte	W24
	.byte		N05	, Cn4, v068
	.byte	W02
	.byte		N11	, Cs4, v084
	.byte	W22
	.byte		TIE	, Bn3, v080
	.byte	W10
	.byte	PEND
	.byte	W92
	.byte		EOT	
	.byte	W04
	.byte	PATT	
		.word	song079_12_5
	.byte	W72
	.byte		N28	, Bn3, v080
	.byte	W24
	.byte	W01
	.byte		N05	, Cn4, v072
	.byte	W03
	.byte		N23	, Cs4, v080
	.byte	W22
	.byte		N10	, Bn3, v084
	.byte	W12
	.byte		N12	, En4, v076
	.byte	W24
	.byte		N13	, Cs4, v084
	.byte	W24
	.byte		TIE	, Bn3
	.byte	W10
	.byte	W92
	.byte		EOT	
	.byte	W04
	.byte	PATT	
		.word	song079_12_6
	.byte	PATT	
		.word	song079_12_7
	.byte	PATT	
		.word	song079_12_8
	.byte	W92
	.byte		EOT	, Bn3
	.byte	W04
song079_12_9:
	.byte		N68	, Fs4, v080
	.byte	W72
	.byte		N12	, Gs4, v076
	.byte	W12
	.byte		N72	, An4, v072
	.byte	W12
	.byte	PEND
	.byte	W60
	.byte		N36	, Bn4, v084
	.byte	W36
song079_12_10:
	.byte		N03	, Cn5, v076
	.byte	W03
	.byte		N21	, Cs5, v072
	.byte	W21
	.byte		N12	, Bn4, v080
	.byte	W12
	.byte			En5, v076
	.byte	W24
	.byte			Cs5, v072
	.byte	W24
	.byte		N72	, Bn4, v076
	.byte	W12
	.byte	PEND
	.byte	W60
	.byte		N36	, An4, v072
	.byte	W36
song079_12_11:
	.byte		N03	, Cn5, v056
	.byte	W03
	.byte		N68	, Cs5, v068
	.byte	W68
	.byte	W01
	.byte		N12	, Bn4, v064
	.byte	W12
	.byte			An4, v072
	.byte	W12
	.byte	PEND
song079_12_12:
	.byte		N60	, Gs4, v088
	.byte	W60
	.byte		N24	, Fs4, v068
	.byte	W24
	.byte		N12	, Gs4
	.byte	W12
	.byte	PEND
song079_12_13:
	.byte		N18	, An4, v076
	.byte	W18
	.byte			Bn4, v072
	.byte	W18
	.byte		N12	, Fs4, v068
	.byte	W12
	.byte		N44	, An4, v072
	.byte	W48
	.byte	PEND
	.byte			Bn4, v080
	.byte	W44
	.byte		N05	, Gn4, v056
	.byte	W04
	.byte		N48	, Gs4, v068
	.byte	W48
	.byte	PATT	
		.word	song079_12_9
	.byte	W60
	.byte		N36	, Bn4, v084
	.byte	W36
	.byte	PATT	
		.word	song079_12_10
	.byte	W60
	.byte		N36	, An4, v072
	.byte	W36
	.byte	PATT	
		.word	song079_12_11
	.byte	PATT	
		.word	song079_12_12
	.byte	PATT	
		.word	song079_12_13
	.byte	W03
	.byte		N90	, Bn4, v076
	.byte	W92
	.byte	W01
	.byte	PATT	
		.word	song079_12_1
	.byte	PATT	
		.word	song079_12_14
	.byte	PATT	
		.word	song079_12_2
	.byte	W12
	.byte		N44	, An4, v100
	.byte	W18
	.byte	MOD	, 1
	.byte	W04
	.byte		3
	.byte	W05
	.byte		6
	.byte	W05
	.byte		8
	.byte	W07
	.byte		11
	.byte	W08
	.byte		7
	.byte	W01
	.byte		N04	, Fs4
	.byte	W01
	.byte	MOD	, 2
	.byte	W01
	.byte		0
	.byte	W10
	.byte		N12	, An4
	.byte	W06
	.byte	VOL	, v099
	.byte	W06
	.byte		N12	, Fs4
	.byte	W05
	.byte	VOL	, v092
	.byte	W07
	.byte		N12	, Bn4
	.byte	W19
	.byte	VOL	, v090
	.byte	W05
	.byte		N12	, An4
	.byte	W11
	.byte	VOL	, v088
	.byte	W13
	.byte		N12	, Fs4
	.byte	W10
	.byte	VOL	, v086
	.byte	W02
	.byte		N12	, An4
	.byte	W12
	.byte	VOL	, v084
	.byte	W12
	.byte		N12	
	.byte	W04
	.byte	VOL	, v082
	.byte	W08
	.byte	W05
	.byte		v081
	.byte	W07
	.byte		N12	
	.byte	W18
	.byte	VOL	, v078
	.byte	W06
	.byte		N06	, Fs4
	.byte	W12
	.byte		N24	, Cs5
	.byte	W19
	.byte	VOL	, v076
	.byte	W05
	.byte		N24	, Fs4
	.byte	W14
	.byte	VOL	, v075
	.byte	W10
	.byte		N12	, Bn4
	.byte	W24
	.byte			An4
	.byte	W07
	.byte	VOL	, v072
	.byte	W17
	.byte		v071
	.byte		N12	, Fs4
	.byte	W12
	.byte			An4
	.byte	W02
	.byte	VOL	, v069
	.byte	W14
	.byte		v066
	.byte	W08
	.byte		N12	, Cs5
	.byte	W05
	.byte	VOL	, v065
	.byte	W07
	.byte	W02
	.byte		v063
	.byte	W10
	.byte		N44	, An4
	.byte	W23
	.byte	VOL	, v061
	.byte	MOD	, 2
	.byte	W07
	.byte		5
	.byte	W03
	.byte		7
	.byte	W03
	.byte		10
	.byte	W07
	.byte	VOL	, v059
	.byte	MOD	, 12
	.byte	W05
	.byte		N05	, Fs4
	.byte	W07
	.byte	VOL	, v057
	.byte	W01
	.byte	MOD	, 7
	.byte	W02
	.byte		2
	.byte	W01
	.byte		0
	.byte	W01
	.byte		N12	, An4
	.byte	W03
	.byte	VOL	, v053
	.byte	W08
	.byte		v052
	.byte	W01
	.byte		N08	, Fs4
	.byte	W12
	.byte		N12	, En5
	.byte	W06
	.byte	VOL	, v049
	.byte	W09
	.byte		v047
	.byte	W09
	.byte		N12	, Dn5
	.byte	W01
	.byte	VOL	, v046
	.byte	W10
	.byte		v043
	.byte	W09
	.byte		v042
	.byte	W04
	.byte		N12	, Cs5
	.byte	W05
	.byte	VOL	, v040
	.byte	W07
	.byte		N12	, Dn5
	.byte	W07
	.byte	VOL	, v038
	.byte	W15
	.byte		v036
	.byte	W02
	.byte		N68	, An4
	.byte	W09
	.byte	VOL	, v034
	.byte	W03
	.byte	W04
	.byte	MOD	, 1
	.byte	W06
	.byte		3
	.byte	W05
	.byte	VOL	, v032
	.byte	MOD	, 6
	.byte	W05
	.byte		8
	.byte	W08
	.byte		11
	.byte	W02
	.byte	VOL	, v030
	.byte	W12
	.byte		v028
	.byte	W08
	.byte	MOD	, 3
	.byte	W01
	.byte		0
	.byte	W01
	.byte	VOL	, v026
	.byte	W08
	.byte		N05	, Fs4
	.byte	W01
	.byte	VOL	, v023
	.byte	W09
	.byte		v020
	.byte	W02
	.byte		N12	, An4
	.byte	W12
	.byte			Fs4
	.byte	W06
	.byte	VOL	, v019
	.byte	W06
	.byte		N12	, En5
	.byte	W07
	.byte	VOL	, v017
	.byte	W17
	.byte		N12	, Dn5
	.byte	W01
	.byte	VOL	, v014
	.byte	W14
	.byte		v013
	.byte	W09
	.byte		N12	, Cs5
	.byte	W11
	.byte	VOL	, v011
	.byte	W01
	.byte		N12	, Dn5
	.byte	W23
	.byte	VOL	, v009
	.byte	W01
	.byte		N12	, En5
	.byte	W12
	.byte	VOL	, v007
	.byte	W12
	.byte		N44	, An4
	.byte	W02
	.byte	VOL	, v005
	.byte	W12
	.byte	MOD	, 2
	.byte	W04
	.byte		5
	.byte	W05
	.byte		7
	.byte	W08
	.byte		10
	.byte	W10
	.byte	VOL	, v003
	.byte	W03
	.byte	MOD	, 7
	.byte	W02
	.byte		3
	.byte	W01
	.byte		1
	.byte	W01
	.byte		N03	, Fs4
	.byte	W01
	.byte	MOD	, 0
	.byte	W11
	.byte		N12	, An4
	.byte	W12
	.byte			Fs4
	.byte	W12
	.byte	FINE

	@********************** Track  13 **********************@

	.global song079_13
song079_13:	@ 0x082AC09E
	.byte	KEYSH	, 0
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
	.byte	W48
	.byte	VOICE	, 0
	.byte	VOL	, v090
	.byte	PAN	, c_v+6
	.byte	W48
song079_13_1:
	.byte	W02
	.byte		N12	, En4, v060
	.byte	W24
	.byte			Dn4
	.byte	W24
	.byte			Cs4
	.byte	W12
	.byte			Dn4
	.byte	W24
	.byte		N68	, An3
	.byte	W10
	.byte	PEND
song079_13_14:
	.byte	W20
	.byte	MOD	, 1
	.byte	W12
	.byte		3
	.byte	W06
	.byte		6
	.byte	W24
	.byte		N05	, Fs3, v060
	.byte	W01
	.byte	MOD	, 2
	.byte	W01
	.byte		0
	.byte	W10
	.byte		N12	, An3
	.byte	W12
	.byte			Fs3
	.byte	W10
	.byte	PEND
song079_13_2:
	.byte	W02
	.byte		N12	, En4, v060
	.byte	W24
	.byte			Dn4
	.byte	W24
	.byte			Cs4
	.byte	W12
	.byte			Dn4
	.byte	W24
	.byte			En4
	.byte	W10
	.byte	PEND
	.byte	W14
	.byte		N44	, An3
	.byte	W16
	.byte	MOD	, 1
	.byte	W04
	.byte		3
	.byte	W05
	.byte		6
	.byte	W05
	.byte		8
	.byte	W07
	.byte		11
	.byte	W08
	.byte		7
	.byte	W02
	.byte		2
	.byte	W01
	.byte		0
	.byte		N04	, Fs3
	.byte	W12
	.byte		N12	, An3
	.byte	W12
	.byte			Fs3
	.byte	W10
song079_13_3:
	.byte	W02
	.byte		N12	, Bn3, v060
	.byte	W24
	.byte			An3
	.byte	W24
	.byte			Fs3
	.byte	W12
	.byte			An3
	.byte	W24
	.byte		N12	
	.byte	W10
	.byte	PEND
	.byte	W14
	.byte		N12	
	.byte	W24
	.byte		N06	, Fs3
	.byte	W12
	.byte		N24	, Cs4
	.byte	W24
	.byte			Fs3
	.byte	W22
song079_13_4:
	.byte	W02
	.byte		N12	, Bn3, v060
	.byte	W24
	.byte			An3
	.byte	W24
	.byte			Fs3
	.byte	W12
	.byte			An3
	.byte	W24
	.byte			Cs4
	.byte	W10
	.byte	PEND
	.byte	W14
	.byte		N44	, An3
	.byte	W21
	.byte	MOD	, 2
	.byte	W07
	.byte		5
	.byte	W03
	.byte		7
	.byte	W03
	.byte		10
	.byte	W07
	.byte		12
	.byte	W07
	.byte		N05	, Fs3
	.byte	W06
	.byte	MOD	, 7
	.byte	W02
	.byte		2
	.byte	W01
	.byte		0
	.byte	W03
	.byte		N12	, An3
	.byte	W12
	.byte		N08	, Fs3
	.byte	W10
	.byte	PATT	
		.word	song079_13_1
	.byte	W04
	.byte	MOD	, 1
	.byte	W06
	.byte		3
	.byte	W05
	.byte		6
	.byte	W05
	.byte		8
	.byte	W08
	.byte		11
	.byte	W22
	.byte		3
	.byte	W01
	.byte		0
	.byte	W11
	.byte		N05	, Fs3, v060
	.byte	W12
	.byte		N12	, An3
	.byte	W12
	.byte			Fs3
	.byte	W10
	.byte	PATT	
		.word	song079_13_2
	.byte	W14
	.byte		N44	, An3, v060
	.byte	W12
	.byte	MOD	, 2
	.byte	W04
	.byte		5
	.byte	W05
	.byte		7
	.byte	W08
	.byte		10
	.byte	W13
	.byte		7
	.byte	W02
	.byte		3
	.byte	W01
	.byte		1
	.byte	W02
	.byte		0
	.byte	W01
	.byte		N03	, Fs3
	.byte	W12
	.byte		N12	, An3
	.byte	W12
	.byte			Fs3
	.byte	W10
	.byte	PATT	
		.word	song079_13_3
	.byte	W14
	.byte		N12	, An3, v060
	.byte	W24
	.byte		N06	, Fs3
	.byte	W12
	.byte		N23	, Cs4
	.byte	W24
	.byte		N24	, Fs3
	.byte	W22
	.byte	PATT	
		.word	song079_13_4
	.byte	W14
	.byte		N78	, An3, v060
	.byte	W18
	.byte	MOD	, 1
	.byte	W07
	.byte		3
	.byte	W05
	.byte		6
	.byte	W06
	.byte		8
	.byte	W32
	.byte	W01
	.byte		2
	.byte	W02
	.byte		0
	.byte	W11
song079_13_5:
	.byte	W02
	.byte		N68	, En4, v064
	.byte	W68
	.byte	W02
	.byte		N05	, Cs4, v072
	.byte	W04
	.byte		N12	, Dn4, v076
	.byte	W10
	.byte		N80	, Cs4
	.byte	W10
	.byte	PEND
	.byte	W72
	.byte		N28	, Bn3, v080
	.byte	W24
	.byte	W03
	.byte		N04	, Cn4, v072
	.byte	W01
	.byte		N72	, Cs4, v084
	.byte	W68
	.byte	W01
	.byte		N05	, An3, v068
	.byte	W03
	.byte		N11	, Bn3, v064
	.byte	W10
	.byte		TIE	, Fs3, v072
	.byte	W10
	.byte	W90
	.byte	W01
	.byte		EOT	
	.byte	W05
song079_13_6:
	.byte	W01
	.byte		N72	, Gs3, v088
	.byte	W72
	.byte	W02
	.byte		N12	, An3, v084
	.byte	W12
	.byte		N68	, Bn3, v080
	.byte	W09
	.byte	PEND
song079_13_7:
	.byte	W60
	.byte	W03
	.byte		N32	, Fs3, v076
	.byte	W32
	.byte	W01
	.byte	PEND
song079_13_8:
	.byte	W01
	.byte		N05	, Cn4, v076
	.byte	W02
	.byte		N23	, Cs4, v080
	.byte	W22
	.byte		N10	, Bn3, v084
	.byte	W13
	.byte		N12	, En4, v080
	.byte	W24
	.byte		N05	, Cn4, v068
	.byte	W02
	.byte		N11	, Cs4, v084
	.byte	W22
	.byte		TIE	, Bn3, v080
	.byte	W10
	.byte	PEND
	.byte	W92
	.byte		EOT	
	.byte	W04
	.byte	PATT	
		.word	song079_13_5
	.byte	W72
	.byte		N28	, Bn3, v080
	.byte	W24
	.byte	W01
	.byte		N05	, Cn4, v072
	.byte	W03
	.byte		N23	, Cs4, v080
	.byte	W22
	.byte		N10	, Bn3, v084
	.byte	W12
	.byte		N12	, En4, v076
	.byte	W24
	.byte		N13	, Cs4, v084
	.byte	W24
	.byte		TIE	, Bn3
	.byte	W10
	.byte	W92
	.byte		EOT	
	.byte	W04
	.byte	PATT	
		.word	song079_13_6
	.byte	PATT	
		.word	song079_13_7
	.byte	PATT	
		.word	song079_13_8
	.byte	W92
	.byte		EOT	, Bn3
	.byte	W04
song079_13_9:
	.byte		N68	, Fs4, v080
	.byte	W72
	.byte		N12	, Gs4, v076
	.byte	W12
	.byte		N72	, An4, v072
	.byte	W12
	.byte	PEND
	.byte	W60
	.byte		N36	, Bn4, v084
	.byte	W36
song079_13_10:
	.byte		N03	, Cn5, v076
	.byte	W03
	.byte		N21	, Cs5, v072
	.byte	W21
	.byte		N12	, Bn4, v080
	.byte	W12
	.byte			En5, v076
	.byte	W24
	.byte			Cs5, v072
	.byte	W24
	.byte		N72	, Bn4, v076
	.byte	W12
	.byte	PEND
	.byte	W60
	.byte		N36	, An4, v072
	.byte	W36
song079_13_11:
	.byte		N03	, Cn5, v056
	.byte	W03
	.byte		N68	, Cs5, v068
	.byte	W68
	.byte	W01
	.byte		N12	, Bn4, v064
	.byte	W12
	.byte			An4, v072
	.byte	W12
	.byte	PEND
song079_13_12:
	.byte		N60	, Gs4, v088
	.byte	W60
	.byte		N24	, Fs4, v068
	.byte	W24
	.byte		N12	, Gs4
	.byte	W12
	.byte	PEND
song079_13_13:
	.byte		N18	, An4, v076
	.byte	W18
	.byte			Bn4, v072
	.byte	W18
	.byte		N12	, Fs4, v068
	.byte	W12
	.byte		N44	, An4, v072
	.byte	W48
	.byte	PEND
	.byte			Bn4, v080
	.byte	W44
	.byte		N05	, Gn4, v056
	.byte	W04
	.byte		N48	, Gs4, v068
	.byte	W48
	.byte	PATT	
		.word	song079_13_9
	.byte	W60
	.byte		N36	, Bn4, v084
	.byte	W36
	.byte	PATT	
		.word	song079_13_10
	.byte	W60
	.byte		N36	, An4, v072
	.byte	W36
	.byte	PATT	
		.word	song079_13_11
	.byte	PATT	
		.word	song079_13_12
	.byte	PATT	
		.word	song079_13_13
	.byte	W03
	.byte		N90	, Bn4, v076
	.byte	W92
	.byte	W01
	.byte	PATT	
		.word	song079_13_1
	.byte	PATT	
		.word	song079_13_14
	.byte	PATT	
		.word	song079_13_2
	.byte	W14
	.byte		N44	, An3, v060
	.byte	W16
	.byte	MOD	, 1
	.byte	W04
	.byte		3
	.byte	W05
	.byte		6
	.byte	W05
	.byte		8
	.byte	W07
	.byte		11
	.byte	W08
	.byte		7
	.byte	W02
	.byte		2
	.byte	W01
	.byte		0
	.byte		N04	, Fs3
	.byte	W12
	.byte		N12	, An3
	.byte	W04
	.byte	VOL	, v090
	.byte	W08
	.byte		N12	, Fs3
	.byte	W02
	.byte	VOL	, v084
	.byte	W08
	.byte	W02
	.byte		N12	, Bn3
	.byte	W16
	.byte	VOL	, v082
	.byte	W08
	.byte		N12	, An3
	.byte	W08
	.byte	VOL	, v081
	.byte	W16
	.byte		N12	, Fs3
	.byte	W07
	.byte	VOL	, v079
	.byte	W05
	.byte		N12	, An3
	.byte	W09
	.byte	VOL	, v077
	.byte	W15
	.byte		N12	
	.byte	W01
	.byte	VOL	, v076
	.byte	W09
	.byte	W04
	.byte		v073
	.byte	W10
	.byte		N12	
	.byte	W16
	.byte	VOL	, v071
	.byte	W08
	.byte		N06	, Fs3
	.byte	W12
	.byte		N24	, Cs4
	.byte	W16
	.byte	VOL	, v070
	.byte	W08
	.byte		N24	, Fs3
	.byte	W11
	.byte	VOL	, v068
	.byte	W11
	.byte	W02
	.byte		N12	, Bn3
	.byte	W24
	.byte			An3
	.byte	W05
	.byte	VOL	, v066
	.byte	W16
	.byte		v065
	.byte	W03
	.byte		N12	, Fs3
	.byte	W11
	.byte	VOL	, v063
	.byte	W01
	.byte		N12	, An3
	.byte	W13
	.byte	VOL	, v061
	.byte	W11
	.byte		N12	, Cs4
	.byte	W02
	.byte	VOL	, v059
	.byte	W08
	.byte	W01
	.byte		v057
	.byte	W13
	.byte		N44	, An3, v072
	.byte	W20
	.byte	VOL	, v056
	.byte	W01
	.byte	MOD	, 2
	.byte	W07
	.byte		5
	.byte	W03
	.byte		7
	.byte	W03
	.byte		10
	.byte	W06
	.byte	VOL	, v054
	.byte	W01
	.byte	MOD	, 12
	.byte	W07
	.byte		N05	, Fs3
	.byte	W04
	.byte	VOL	, v052
	.byte	W02
	.byte	MOD	, 7
	.byte	W02
	.byte		2
	.byte	W01
	.byte		0
	.byte	W03
	.byte	VOL	, v048
	.byte		N12	, An3
	.byte	W08
	.byte	VOL	, v047
	.byte	W04
	.byte		N08	, Fs3
	.byte	W10
	.byte	W02
	.byte		N12	, En4
	.byte	W03
	.byte	VOL	, v045
	.byte	W09
	.byte		v043
	.byte	W11
	.byte		v042
	.byte	W01
	.byte		N12	, Dn4
	.byte	W08
	.byte	VOL	, v040
	.byte	W10
	.byte		v038
	.byte	W06
	.byte		N12	, Cs4
	.byte	W03
	.byte	VOL	, v036
	.byte	W09
	.byte		N12	, Dn4
	.byte	W04
	.byte	VOL	, v034
	.byte	W15
	.byte		v033
	.byte	W05
	.byte		N68	, An3
	.byte	W07
	.byte	VOL	, v031
	.byte	W03
	.byte	W04
	.byte	MOD	, 1
	.byte	W06
	.byte		3
	.byte	W04
	.byte	VOL	, v029
	.byte	W01
	.byte	MOD	, 6
	.byte	W05
	.byte		8
	.byte	W08
	.byte		11
	.byte	W01
	.byte	VOL	, v028
	.byte	W12
	.byte		v026
	.byte	W09
	.byte	MOD	, 3
	.byte	W01
	.byte	VOL	, v023
	.byte	MOD	, 0
	.byte	W09
	.byte	VOL	, v020
	.byte	W02
	.byte		N05	, Fs3
	.byte	W07
	.byte	VOL	, v019
	.byte	W05
	.byte		N12	, An3
	.byte	W12
	.byte			Fs3
	.byte	W03
	.byte	VOL	, v017
	.byte	W07
	.byte	W02
	.byte		N12	, En4
	.byte	W04
	.byte	VOL	, v015
	.byte	W18
	.byte		v014
	.byte	W02
	.byte		N12	, Dn4
	.byte	W12
	.byte	VOL	, v011
	.byte	W12
	.byte		N12	, Cs4
	.byte	W09
	.byte	VOL	, v009
	.byte	W03
	.byte		N12	, Dn4
	.byte	W20
	.byte	VOL	, v009
	.byte	W04
	.byte		N12	, En4, v080
	.byte	W09
	.byte	VOL	, v006
	.byte	W01
	.byte	W14
	.byte		v004
	.byte		N44	, An3
	.byte	W12
	.byte	MOD	, 2
	.byte	W04
	.byte		5
	.byte	W05
	.byte		7
	.byte	W08
	.byte		10
	.byte	W09
	.byte	VOL	, v003
	.byte	W04
	.byte	MOD	, 7
	.byte	W02
	.byte		3
	.byte	W01
	.byte		1
	.byte	W02
	.byte		0
	.byte	W01
	.byte		N03	, Fs3
	.byte	W12
	.byte		N12	, An3
	.byte	W12
	.byte		N09	, Fs3
	.byte	W10
	.byte	FINE

	.align 2
	.global song079
song079:	@ 0x082AC448
	.byte	13		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

	.word	voicegroup014		@ voicegroup/tone

	.word	song079_1		@ track
	.word	song079_2		@ track
	.word	song079_3		@ track
	.word	song079_4		@ track
	.word	song079_5		@ track
	.word	song079_6		@ track
	.word	song079_7		@ track
	.word	song079_8		@ track
	.word	song079_9		@ track
	.word	song079_10		@ track
	.word	song079_11		@ track
	.word	song079_12		@ track
	.word	song079_13		@ track

	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song046_1
song046_1:	@ 0x0828B130
	.byte	KEYSH	, 0
	.byte	TEMPO	, 90
	.byte	VOICE	, 127
	.byte	VOL	, v070
	.byte	W03
	.byte	W96
	.byte	TEMPO	, 89
	.byte	W24
	.byte	TEMPO	, 88
	.byte	W24
	.byte	TEMPO	, 88
	.byte	W24
	.byte	TEMPO	, 86
	.byte	W24
song046_1_18:
	.byte	TEMPO	, 91
	.byte		N16	, Gs7, v112
	.byte	W24
	.byte		N24	, En5, v124
	.byte	W36
	.byte		N13	, Gs7, v112
	.byte	W12
	.byte		N12	, En5, v124
	.byte	W12
	.byte		N15	, Gs7, v112
	.byte	W12
song046_1_1:
	.byte	W12
	.byte		N19	, Gs7, v112
	.byte	W12
	.byte		N24	, En5, v124
	.byte	W24
	.byte		N06	, Gs7, v112
	.byte	W12
	.byte		N16	
	.byte	W12
	.byte		N18	, En5, v124
	.byte	W12
	.byte		N05	, Gs7, v112
	.byte	W12
	.byte	PEND
song046_1_2:
	.byte		N24	, Gs7, v112
	.byte	W24
	.byte		N13	, En5, v124
	.byte	W12
	.byte		N12	, Gs7, v112
	.byte	W24
	.byte		N15	
	.byte	W12
	.byte		N13	, En5, v124
	.byte	W12
	.byte		N10	, Gs7, v112
	.byte	W12
	.byte	PEND
song046_1_3:
	.byte	W12
	.byte		N14	, Gs7, v112
	.byte	W12
	.byte		N08	, En5, v124
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte		N03	, Gs7, v112
	.byte	W12
	.byte		N13	
	.byte	W12
	.byte		N12	, En5, v124
	.byte	W12
	.byte	PEND
song046_1_4:
	.byte		N42	, Gs7, v112
	.byte	W24
	.byte		N23	, En5, v124
	.byte	W24
	.byte		N06	, Gs7, v112
	.byte	W12
	.byte		N15	
	.byte	W12
	.byte		N13	, En5, v124
	.byte	W12
	.byte		N14	, Gs7, v112
	.byte	W12
	.byte	PEND
song046_1_5:
	.byte	W12
	.byte		N14	, Gs7, v112
	.byte	W12
	.byte		N11	, En5, v124
	.byte	W12
	.byte		N16	, Gs7, v112
	.byte	W12
	.byte		N14	, En5, v124
	.byte	W24
	.byte		N12	, Gs7, v112
	.byte	W12
	.byte		N13	, En5, v124
	.byte	W12
	.byte	PEND
song046_1_6:
	.byte		N32	, Gs7, v112
	.byte	W24
	.byte		N21	, En5, v124
	.byte	W24
	.byte		N08	, Gs7, v112
	.byte	W12
	.byte		N16	
	.byte	W12
	.byte		N12	, En5, v124
	.byte	W12
	.byte		N14	, Gs7, v112
	.byte	W12
	.byte	PEND
	.byte		N10	, En5, v124
	.byte	W12
	.byte		N05	, Gs7, v112
	.byte	W12
	.byte		N15	
	.byte	W12
	.byte		N12	, En5, v124
	.byte	W24
	.byte		N09	
	.byte	W12
	.byte		N12	, Gs7, v112
	.byte	W06
	.byte		N06	, En5, v124
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
song046_1_7:
	.byte		N16	, Gs7, v112
	.byte	W24
	.byte		N24	, En5, v124
	.byte	W36
	.byte		N13	, Gs7, v112
	.byte	W12
	.byte		N12	, En5, v124
	.byte	W12
	.byte		N15	, Gs7, v112
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song046_1_1
	.byte	PATT	
		.word	song046_1_2
	.byte	PATT	
		.word	song046_1_3
	.byte	PATT	
		.word	song046_1_4
	.byte	PATT	
		.word	song046_1_5
	.byte	PATT	
		.word	song046_1_6
song046_1_15:
	.byte		N10	, En5, v124
	.byte	W12
	.byte		N05	, Gs7, v112
	.byte	W12
	.byte		N15	
	.byte	W12
	.byte		N12	, En5, v124
	.byte	W24
	.byte		N09	
	.byte	W12
	.byte		N10	
	.byte		N12	, Gs7, v112
	.byte	W12
	.byte		N06	, En5, v124
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song046_1_7
	.byte	PATT	
		.word	song046_1_1
	.byte	PATT	
		.word	song046_1_2
	.byte	PATT	
		.word	song046_1_3
	.byte	PATT	
		.word	song046_1_4
	.byte	PATT	
		.word	song046_1_5
	.byte	PATT	
		.word	song046_1_6
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W72
	.byte		N12	, Gs7, v116
	.byte	W12
	.byte			Gs7, v104
	.byte	W12
song046_1_8:
	.byte		N12	, Gs7, v116
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song046_1_8
	.byte	PATT	
		.word	song046_1_8
song046_1_16:
	.byte		N12	, Gs7, v116
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte	PEND
song046_1_9:
	.byte		N24	, Gs7, v112
	.byte	W24
	.byte		N11	, En5, v124
	.byte	W12
	.byte		N23	, Gs7, v112
	.byte	W24
	.byte		N12	, En5, v124
	.byte	W12
	.byte		N24	, Gs7, v112
	.byte	W24
	.byte	PEND
song046_1_10:
	.byte		N12	, En5, v124
	.byte	W12
	.byte		N18	, Gs7, v112
	.byte	W24
	.byte		N06	
	.byte	W12
	.byte		N24	
	.byte	W24
	.byte			En5, v124
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song046_1_9
	.byte	PATT	
		.word	song046_1_10
song046_1_11:
	.byte		N24	, Gs7, v112
	.byte	W24
	.byte		N10	, En5, v124
	.byte	W12
	.byte		N21	, Gs7, v112
	.byte	W36
	.byte		N18	, En5, v124
	.byte	W24
	.byte	PEND
song046_1_12:
	.byte		N24	, Gs7, v112
	.byte	W24
	.byte		N11	, En5, v124
	.byte	W12
	.byte		N15	, Gs7, v112
	.byte	W24
	.byte		N16	
	.byte	W12
	.byte		N23	, En5, v124
	.byte	W24
	.byte	PEND
song046_1_13:
	.byte		N24	, Gs7, v112
	.byte	W24
	.byte		N10	, En5, v124
	.byte	W12
	.byte		N36	, Gs7, v112
	.byte	W36
	.byte		N23	, En5, v124
	.byte	W24
	.byte	PEND
song046_1_14:
	.byte		N24	, Gs7, v112
	.byte	W24
	.byte		N12	, En5, v124
	.byte	W12
	.byte		N14	, Gs7, v112
	.byte	W24
	.byte		N18	
	.byte	W12
	.byte		N24	, En5, v124
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song046_1_11
	.byte	PATT	
		.word	song046_1_12
	.byte	PATT	
		.word	song046_1_13
	.byte	PATT	
		.word	song046_1_14
	.byte	PATT	
		.word	song046_1_11
	.byte	PATT	
		.word	song046_1_12
	.byte	PATT	
		.word	song046_1_13
	.byte		N24	, Gs7, v112
	.byte	W24
	.byte		N12	, En5, v124
	.byte	W12
	.byte			Gs7, v112
	.byte	W12
	.byte		N09	, Gs7, v116
	.byte	W12
	.byte		N09	
	.byte	W12
	.byte		N24	, En5, v124
	.byte		N09	, Gs7, v116
	.byte	W12
	.byte		N09	
	.byte	W12
	.byte	PATT	
		.word	song046_1_7
	.byte	PATT	
		.word	song046_1_1
	.byte	PATT	
		.word	song046_1_2
	.byte	PATT	
		.word	song046_1_3
	.byte	PATT	
		.word	song046_1_4
	.byte	PATT	
		.word	song046_1_5
	.byte	PATT	
		.word	song046_1_6
	.byte	PATT	
		.word	song046_1_15
	.byte	PATT	
		.word	song046_1_7
	.byte	PATT	
		.word	song046_1_1
	.byte	PATT	
		.word	song046_1_2
	.byte	PATT	
		.word	song046_1_3
	.byte	PATT	
		.word	song046_1_4
	.byte	PATT	
		.word	song046_1_5
	.byte	PATT	
		.word	song046_1_6
	.byte	PATT	
		.word	song046_1_15
	.byte	PATT	
		.word	song046_1_8
	.byte	PATT	
		.word	song046_1_8
	.byte	PATT	
		.word	song046_1_8
	.byte	PATT	
		.word	song046_1_16
song046_1_17:
	.byte		N06	, Gs7, v116
	.byte	W12
	.byte			Gs7, v084
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Gs7, v116
	.byte	W12
	.byte			Gs7, v084
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song046_1_17
	.byte		N04	, Gs7, v116
	.byte	W06
	.byte			Gs7, v084
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Gs7, v116
	.byte	W06
	.byte			Gs7, v084
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Gs7, v116
	.byte	W06
	.byte			Gs7, v084
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Gs7, v116
	.byte	W06
	.byte			Gs7, v084
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Gs7, v116
	.byte	W06
	.byte			Gs7, v084
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Gs7, v116
	.byte	W06
	.byte			Gs7, v084
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Gs7, v116
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte	GOTO	
		.word	song046_1_18
	.byte	FINE

	@********************** Track  2 **********************@

	.global song046_2
song046_2:	@ 0x0828B431
	.byte	KEYSH	, 0
	.byte	VOICE	, 27
	.byte	VOL	, v070
	.byte	PAN	, c_v+25
	.byte	W03
	.byte		N05	, Dn4, v112
	.byte	W02
	.byte	VOL	, v025
	.byte	W01
	.byte		v026
	.byte	W01
	.byte		N05	, En4
	.byte	W01
	.byte	VOL	, v026
	.byte	W01
	.byte		v027
	.byte	W02
	.byte		v028
	.byte		N05	, Dn4
	.byte	W01
	.byte	VOL	, v029
	.byte	W03
	.byte		v029
	.byte		N05	, En4
	.byte	W01
	.byte	VOL	, v030
	.byte	W02
	.byte		v031
	.byte	W01
	.byte		v031
	.byte		N05	, Dn4
	.byte	W02
	.byte	VOL	, v032
	.byte	W01
	.byte		v033
	.byte	W01
	.byte		N05	, En4
	.byte	W02
	.byte	VOL	, v034
	.byte	W01
	.byte		v034
	.byte	W01
	.byte		N05	, Dn4
	.byte	W01
	.byte	VOL	, v035
	.byte	W01
	.byte		v036
	.byte	W02
	.byte		N05	, En4
	.byte	W01
	.byte	VOL	, v036
	.byte	W01
	.byte		v037
	.byte	W02
	.byte		v038
	.byte		N05	, Dn4
	.byte	W01
	.byte	VOL	, v038
	.byte	W01
	.byte		v039
	.byte	W02
	.byte		v040
	.byte		N05	, En4
	.byte	W03
	.byte	VOL	, v041
	.byte	W01
	.byte		v041
	.byte		N05	, Dn4
	.byte	W01
	.byte	VOL	, v042
	.byte	W02
	.byte		v043
	.byte	W01
	.byte		N05	, En4
	.byte	W02
	.byte	VOL	, v044
	.byte	W02
	.byte		v045
	.byte		N05	, Dn4
	.byte	W02
	.byte	VOL	, v046
	.byte	W01
	.byte		v046
	.byte	W01
	.byte		N05	, En4
	.byte	W01
	.byte	VOL	, v047
	.byte	W02
	.byte		v048
	.byte	W01
	.byte		v048
	.byte		N05	, Dn4
	.byte	W02
	.byte	VOL	, v049
	.byte	W02
	.byte		v050
	.byte		N05	, En4
	.byte	W02
	.byte	VOL	, v051
	.byte	W01
	.byte		v051
	.byte	W01
	.byte		N05	, Dn4
	.byte	W01
	.byte	VOL	, v052
	.byte	W01
	.byte		v053
	.byte	W02
	.byte		v053
	.byte		N05	, En4
	.byte	W01
	.byte	VOL	, v054
	.byte	W03
	.byte		v055
	.byte		N05	, Dn4
	.byte	W01
	.byte	VOL	, v055
	.byte	W02
	.byte		v056
	.byte	W01
	.byte		v057
	.byte		N05	, En4
	.byte	W03
	.byte	VOL	, v058
	.byte	W01
	.byte		v058
	.byte		N05	, Dn4
	.byte	W02
	.byte	VOL	, v059
	.byte	W01
	.byte		v060
	.byte	W01
	.byte		N05	, En4
	.byte	W01
	.byte	VOL	, v060
	.byte	W01
	.byte		v061
	.byte	W02
	.byte		N05	, Dn4
	.byte	W01
	.byte	VOL	, v062
	.byte	W01
	.byte		v063
	.byte	W02
	.byte		v063
	.byte		N05	, En4
	.byte	W01
	.byte	VOL	, v064
	.byte	W02
	.byte		v024
	.byte	W01
	.byte		v065
	.byte		N05	, Dn4
	.byte	W03
	.byte	VOL	, v066
	.byte	W01
	.byte		v067
	.byte		N05	, En4
	.byte	W02
	.byte	VOL	, v068
	.byte	W01
	.byte		v068
	.byte	W01
	.byte		N05	, Dn4
	.byte	W02
	.byte	VOL	, v069
	.byte	W01
	.byte		v070
	.byte	W01
	.byte		N05	, En4
	.byte	W01
	.byte	VOL	, v070
	.byte	W01
	.byte		v071
	.byte	W02
	.byte		v072
	.byte		N05	, Dn4
	.byte	W01
	.byte	VOL	, v072
	.byte	W03
	.byte		v073
	.byte		N05	, En4
	.byte	W01
	.byte	VOL	, v074
	.byte	W02
	.byte		v075
	.byte	W01
	.byte		v075
	.byte		N05	, Dn4
	.byte	W03
	.byte	VOL	, v076
	.byte	W01
	.byte		v077
	.byte		N05	, En4
	.byte	W01
	.byte	VOL	, v077
	.byte	W02
	.byte		v078
	.byte	W01
	.byte		N05	, Dn4
	.byte	W01
	.byte	VOL	, v079
	.byte	W01
	.byte		v080
	.byte	W02
	.byte		v080
	.byte		N05	, En4
	.byte	W02
	.byte	VOL	, v081
	.byte	W01
	.byte		v082
	.byte	W01
	.byte		N05	, Dn4
	.byte	W01
	.byte	VOL	, v082
	.byte	W02
	.byte		v083
	.byte	W01
	.byte		N05	, En4
	.byte	W01
	.byte	VOL	, v084
	.byte	W01
	.byte		v085
	.byte	W02
	.byte		v085
	.byte		N05	, Dn4
	.byte	W01
	.byte	VOL	, v086
	.byte	W01
	.byte		v087
	.byte	W02
	.byte		N05	, En4
	.byte	W01
	.byte	VOL	, v087
	.byte	W02
	.byte		v088
	.byte	W01
	.byte		v089
	.byte		N05	, Dn4
	.byte	W01
	.byte	VOL	, v090
	.byte	W01
	.byte		v090
	.byte	W02
	.byte		N05	, En4
	.byte	W04
	.byte			Dn4
	.byte	W04
	.byte			En4
	.byte	W04
	.byte			Dn4
	.byte	W04
	.byte			En4
	.byte	W04
	.byte			Dn4
	.byte	W04
	.byte			En4
	.byte	W04
	.byte			Dn4
	.byte	W04
	.byte			En4
	.byte	W04
song046_2_8:
	.byte	PAN	, c_v+25
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song046_2_1:
	.byte	W92
	.byte	W03
	.byte	VOL	, v053
	.byte	W01
	.byte	PEND
song046_2_2:
	.byte		N05	, Cn3, v084
	.byte	W06
	.byte			As2, v096
	.byte	W06
	.byte			Cn3, v100
	.byte	W06
	.byte			Dn3, v104
	.byte	W06
	.byte			An3, v116
	.byte	W06
	.byte			Cn3, v104
	.byte	W06
	.byte			Gn3, v096
	.byte	W06
	.byte			Cn3, v104
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			Cn3, v096
	.byte	W06
	.byte			Ds3, v104
	.byte	W06
	.byte			An2, v096
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			Fn3, v104
	.byte	W06
	.byte			Ds3, v116
	.byte	W06
	.byte	PEND
song046_2_3:
	.byte		N03	, Dn4, v116
	.byte	W04
	.byte			Cn4, v096
	.byte	W04
	.byte			Dn4, v116
	.byte	W04
	.byte			As3, v104
	.byte	W04
	.byte			An3, v096
	.byte	W04
	.byte			As3, v116
	.byte	W04
	.byte		N05	, Fn3, v104
	.byte	W06
	.byte			En3, v084
	.byte	W06
	.byte			Fn3, v096
	.byte	W06
	.byte			Dn3, v064
	.byte	W06
	.byte			En3, v076
	.byte	W06
	.byte			Fn3, v084
	.byte	W06
	.byte			Gn3, v096
	.byte	W06
	.byte			As3, v104
	.byte	W06
	.byte			Cn4, v084
	.byte	W06
	.byte			Dn4, v096
	.byte	W06
	.byte			Fn4, v104
	.byte	W06
	.byte			Dn4, v084
	.byte	W06
	.byte	PEND
	.byte			Dn4, v100
	.byte	W04
	.byte			Ds4, v080
	.byte	W04
	.byte			Dn4, v068
	.byte	W04
	.byte			Ds4, v056
	.byte	W04
	.byte			Dn4, v052
	.byte	W04
	.byte			Ds4, v044
	.byte	W04
	.byte			Dn4
	.byte	W04
	.byte			Ds4, v048
	.byte	W04
	.byte			Dn4
	.byte	W04
	.byte			Ds4, v052
	.byte	W04
	.byte			Dn4
	.byte	W04
	.byte			Ds4, v056
	.byte	W04
	.byte			Dn4, v060
	.byte	W04
	.byte			Ds4, v064
	.byte	W04
	.byte			Dn4, v068
	.byte	W04
	.byte			Ds4, v076
	.byte	W04
	.byte			Dn4, v080
	.byte	W04
	.byte			Ds4, v088
	.byte	W04
	.byte			Dn4, v092
	.byte	W06
	.byte			Cn4, v108
	.byte	W06
	.byte			As3, v120
	.byte	W05
	.byte			An3, v124
	.byte	W07
	.byte			Fs3, v084
	.byte	W06
	.byte			Gn3, v104
	.byte	W06
	.byte			Dn4, v124
	.byte	W06
	.byte			Dn3, v084
	.byte	W06
	.byte			Ds3, v104
	.byte	W06
	.byte			As3, v124
	.byte	W06
	.byte			Cn3, v096
	.byte	W06
	.byte			Dn3, v116
	.byte	W06
	.byte			An3, v127
	.byte	W06
	.byte			Gn3, v124
	.byte	W06
	.byte			Fs3, v120
	.byte	W06
	.byte			Ds3, v116
	.byte	W06
	.byte			Dn3, v112
	.byte	W06
	.byte			Cn3, v116
	.byte	W06
	.byte			As2, v120
	.byte	W06
	.byte			An2, v124
	.byte	W06
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song046_2_1
	.byte	PATT	
		.word	song046_2_2
	.byte	PATT	
		.word	song046_2_3
	.byte		N03	, Dn4, v100
	.byte	W04
	.byte			Ds4, v080
	.byte	W04
	.byte			Dn4, v068
	.byte	W04
	.byte			Ds4, v056
	.byte	W04
	.byte			Dn4, v052
	.byte	W04
	.byte			Ds4, v044
	.byte	W04
	.byte			Dn4
	.byte	W04
	.byte			Ds4, v048
	.byte	W04
	.byte			Dn4
	.byte	W04
	.byte			Ds4, v052
	.byte	W04
	.byte			Dn4
	.byte	W04
	.byte			Ds4, v056
	.byte	W04
	.byte			Dn4, v060
	.byte	W04
	.byte			Ds4, v064
	.byte	W04
	.byte			Dn4, v068
	.byte	W04
	.byte			Ds4, v076
	.byte	W04
	.byte			Dn4, v080
	.byte	W04
	.byte			Ds4, v088
	.byte	W04
	.byte		N05	, Dn4, v092
	.byte	W06
	.byte			Cn4, v108
	.byte	W06
	.byte			As3, v120
	.byte	W05
	.byte			An3, v124
	.byte	W06
	.byte		N06	, Gn3
	.byte	W01
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song046_2_6:
	.byte	PAN	, c_v-30
	.byte	W24
	.byte		N05	, Gn3, v084
	.byte	W06
	.byte			Dn4, v096
	.byte	W06
	.byte			Gn4, v104
	.byte	W06
	.byte			Dn4, v096
	.byte	W30
	.byte			Gn3, v084
	.byte	W06
	.byte			Dn4, v096
	.byte	W06
	.byte			Gn4, v104
	.byte	W12
	.byte	PEND
song046_2_4:
	.byte	W24
	.byte		N05	, Gn3, v084
	.byte	W06
	.byte			Dn4, v096
	.byte	W06
	.byte			Gn4, v104
	.byte	W06
	.byte			Dn4, v096
	.byte	W30
	.byte			Fs4, v104
	.byte	W06
	.byte			Dn4, v096
	.byte	W06
	.byte			Cn4, v084
	.byte	W06
	.byte			As3
	.byte	W06
	.byte	PEND
song046_2_7:
	.byte	W24
	.byte		N05	, Gn3, v084
	.byte	W06
	.byte			Dn4, v096
	.byte	W06
	.byte			Gn4, v104
	.byte	W06
	.byte			Dn4, v096
	.byte	W30
	.byte			Gn3, v084
	.byte	W06
	.byte			Dn4, v096
	.byte	W06
	.byte			Gn4, v104
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song046_2_4
song046_2_5:
	.byte		TIE	, Dn2, v076
	.byte		N92	, Fs2, v084
	.byte	W96
	.byte	PEND
	.byte			Ds2
	.byte	W96
	.byte			Gn2
	.byte	W96
	.byte			As1
	.byte	W96
	.byte		EOT	, Dn2
	.byte		N96	, Dn2, v076
	.byte		TIE	, Ds2, v084
	.byte	W96
	.byte		N48	, An1, v076
	.byte	W48
	.byte		EOT	, Ds2
	.byte		N48	
	.byte		N44	, An2, v084
	.byte	W48
	.byte		N96	, Dn2, v076
	.byte		N44	, Fn2, v084
	.byte	W48
	.byte			An1
	.byte	W48
	.byte		N96	, As1, v076
	.byte		N92	, Ds2, v084
	.byte	W96
	.byte	PATT	
		.word	song046_2_5
	.byte		N92	, Ds2, v084
	.byte	W96
	.byte			Gn2
	.byte	W96
	.byte			As1
	.byte	W96
	.byte		TIE	, Fs2
	.byte	W96
	.byte		EOT	, Dn2
	.byte		N48	, Gs1, v076
	.byte	W48
	.byte		EOT	, Fs2
	.byte		N48	, Dn2
	.byte		N44	, Gs2, v084
	.byte	W48
	.byte		N96	, Cs2, v076
	.byte		N44	, Gn2, v084
	.byte	W48
	.byte			En2
	.byte	W48
	.byte		N48	, En2, v076
	.byte		N92	, As2, v084
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
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
		.word	song046_2_6
	.byte	PATT	
		.word	song046_2_4
	.byte	PATT	
		.word	song046_2_7
	.byte	PATT	
		.word	song046_2_4
	.byte	GOTO	
		.word	song046_2_8
	.byte	FINE

	@********************** Track  3 **********************@

	.global song046_3
song046_3:	@ 0x0828B7AE
	.byte	KEYSH	, 0
	.byte	VOICE	, 28
	.byte	VOL	, v085
	.byte	W03
	.byte		N44	, Dn3, v127
	.byte	W48
	.byte		N44	
	.byte	W48
	.byte		N23	
	.byte	W24
	.byte			Dn3, v056
	.byte	W24
	.byte			Dn3, v096
	.byte	W24
	.byte		N24	, Dn3, v127
	.byte	W24
song046_3_3:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N92	, Gn3, v127
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N24	
	.byte	W96
	.byte			Fs3, v104
	.byte	W96
	.byte			As3
	.byte	W96
	.byte			En3, v127
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song046_3_1:
	.byte		N24	, Gn3, v127
	.byte	W48
	.byte			Fn3, v104
	.byte	W48
	.byte	PEND
song046_3_2:
	.byte		N24	, Ds3, v104
	.byte	W48
	.byte			Dn3
	.byte	W48
	.byte	PEND
	.byte	PATT	
		.word	song046_3_1
	.byte	PATT	
		.word	song046_3_2
	.byte	PATT	
		.word	song046_3_1
	.byte	PATT	
		.word	song046_3_2
	.byte	PATT	
		.word	song046_3_1
	.byte	PATT	
		.word	song046_3_2
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N92	, Fn3, v127
	.byte	W96
	.byte			Gn3, v104
	.byte	W96
	.byte			Gs3
	.byte	W96
	.byte	W96
	.byte			En3, v127
	.byte	W96
	.byte			Fn3, v104
	.byte	W96
	.byte			Gs3
	.byte	W96
	.byte	W96
	.byte			Fn3, v127
	.byte	W96
	.byte			Gn3, v104
	.byte	W96
	.byte			Gs3
	.byte	W96
	.byte	W96
	.byte			En3, v127
	.byte	W96
	.byte			Fn3, v104
	.byte	W96
	.byte			Gs3
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song046_3_1
	.byte	PATT	
		.word	song046_3_2
	.byte	PATT	
		.word	song046_3_1
	.byte	PATT	
		.word	song046_3_2
	.byte	PATT	
		.word	song046_3_1
	.byte	PATT	
		.word	song046_3_2
	.byte	PATT	
		.word	song046_3_1
	.byte	PATT	
		.word	song046_3_2
	.byte	GOTO	
		.word	song046_3_3
	.byte	FINE

	@********************** Track  4 **********************@

	.global song046_4
song046_4:	@ 0x0828B877
	.byte	KEYSH	, 0
	.byte	VOICE	, 29
	.byte	VOL	, v070
	.byte	PAN	, c_v-15
	.byte	W03
	.byte	W96
	.byte	W96
song046_4_8:
	.byte	VOICE	, 29
	.byte		TIE	, Cn3, v104
	.byte	W96
	.byte	W96
	.byte	W92
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte		N92	, Dn3
	.byte	W96
	.byte		TIE	, Cn3
	.byte	W96
	.byte	W96
	.byte	W92
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte		N92	, Dn3
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	VOL	, v063
	.byte		TIE	, Cn3
	.byte	W96
	.byte	W96
	.byte	W92
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte		N92	, Dn3
	.byte	W92
	.byte	W03
	.byte	VOICE	, 33
	.byte	W01
	.byte		N92	, Cn3, v092
	.byte	W92
	.byte	W03
	.byte	VOICE	, 29
	.byte	W01
	.byte		N44	, Cn3, v104
	.byte	W44
	.byte	W03
	.byte	VOICE	, 33
	.byte	W01
	.byte		N92	, Cn3, v096
	.byte	W44
	.byte	W03
	.byte	VOICE	, 29
	.byte	W01
	.byte	W03
	.byte	VOL	, v076
	.byte	W01
	.byte		v072
	.byte	W01
	.byte		v067
	.byte	W01
	.byte		v061
	.byte	W01
	.byte		v058
	.byte	W01
	.byte		v053
	.byte	W01
	.byte		v047
	.byte	W01
	.byte		v043
	.byte	W01
	.byte		v038
	.byte	W01
	.byte		v033
	.byte	W01
	.byte		v029
	.byte	W01
	.byte		v024
	.byte	W01
	.byte		v018
	.byte	W01
	.byte		v014
	.byte	W02
	.byte		v015
	.byte	W01
	.byte		v017
	.byte	W01
	.byte		v017
	.byte	W01
	.byte		v019
	.byte	W01
	.byte		v020
	.byte	W01
	.byte		v021
	.byte	W01
	.byte		v022
	.byte	W01
	.byte		v024
	.byte	W01
	.byte		v024
	.byte	W01
	.byte		v026
	.byte	W01
	.byte		v027
	.byte	W01
	.byte		v028
	.byte	W01
	.byte		v029
	.byte	W01
	.byte		v031
	.byte	W01
	.byte		v031
	.byte	W01
	.byte		v033
	.byte	W01
	.byte		v034
	.byte	W01
	.byte		v035
	.byte	W01
	.byte		v036
	.byte	W01
	.byte		v038
	.byte	W01
	.byte		v038
	.byte	W01
	.byte		v040
	.byte	W01
	.byte		v041
	.byte	W01
	.byte		v042
	.byte	W01
	.byte		v043
	.byte	W01
	.byte		v045
	.byte	W01
	.byte		v046
	.byte	W01
	.byte		v046
	.byte	W01
	.byte		v048
	.byte	W01
	.byte		v048
	.byte	W01
	.byte		v050
	.byte		N44	, En3, v100
	.byte	W01
	.byte	VOL	, v051
	.byte	W01
	.byte		v052
	.byte	W01
	.byte		v053
	.byte	W01
	.byte		v055
	.byte	W01
	.byte		v055
	.byte	W01
	.byte		v057
	.byte	W01
	.byte		v058
	.byte	W01
	.byte		v059
	.byte	W01
	.byte		v060
	.byte	W01
	.byte		v062
	.byte	W01
	.byte		v063
	.byte	W01
	.byte		v064
	.byte	W01
	.byte		v065
	.byte	W01
	.byte		v066
	.byte	W01
	.byte		v068
	.byte	W01
	.byte		v069
	.byte	W01
	.byte		v070
	.byte	W01
	.byte		v071
	.byte	W01
	.byte		v072
	.byte	W01
	.byte		v073
	.byte	W01
	.byte		v075
	.byte	W01
	.byte		v076
	.byte	W01
	.byte		v077
	.byte	W01
	.byte		v077
	.byte	W02
	.byte		v078
	.byte	W02
	.byte		v079
	.byte	W03
	.byte		v080
	.byte	W02
	.byte		v080
	.byte	W03
	.byte		v081
	.byte	W02
	.byte		v082
	.byte	W02
	.byte		v082
	.byte	W03
	.byte		v083
	.byte	W02
	.byte		v084
	.byte	W02
	.byte	VOICE	, 29
	.byte	W01
	.byte	VOL	, v085
	.byte		N11	, Cn3, v124
	.byte	W12
	.byte			Cn3, v112
	.byte	W36
	.byte			Cn3, v124
	.byte	W12
	.byte			Cn3, v112
	.byte	W36
song046_4_1:
	.byte		N11	, Cn3, v124
	.byte	W12
	.byte			Cn3, v112
	.byte	W32
	.byte	W03
	.byte	VOICE	, 33
	.byte	W01
	.byte		N11	, Ds3, v124
	.byte	W12
	.byte			Cn3, v112
	.byte	W32
	.byte	W03
	.byte	VOICE	, 29
	.byte	W01
	.byte	PEND
	.byte		N11	, Cn3, v124
	.byte	W12
	.byte			Cn3, v112
	.byte	W36
	.byte			Cn3, v124
	.byte	W12
	.byte			Cn3, v112
	.byte	W36
	.byte	PATT	
		.word	song046_4_1
song046_4_2:
	.byte		N11	, Cn3, v116
	.byte	W12
	.byte			Cn3, v100
	.byte	W36
	.byte			Cn3, v116
	.byte	W12
	.byte			Cn3, v100
	.byte	W36
	.byte	PEND
song046_4_6:
	.byte		N11	, Cn3, v116
	.byte	W12
	.byte			Cn3, v100
	.byte	W32
	.byte	W03
	.byte	VOICE	, 33
	.byte	W01
	.byte		N11	, Ds3, v116
	.byte	W12
	.byte			Cn3, v100
	.byte	W32
	.byte	W03
	.byte	VOICE	, 29
	.byte	W01
	.byte	PEND
	.byte	PATT	
		.word	song046_4_2
song046_4_7:
	.byte		N11	, Cn3, v116
	.byte	W12
	.byte			Cn3, v100
	.byte	W32
	.byte	W03
	.byte	VOICE	, 33
	.byte	W01
	.byte		N11	, Ds3, v116
	.byte	W12
	.byte			Cn3, v100
	.byte	W36
	.byte	PEND
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	VOICE	, 29
	.byte	VOL	, v063
	.byte		N92	, As2, v116
	.byte	W96
song046_4_3:
	.byte		N92	, Cn3, v116
	.byte	W92
	.byte	W03
	.byte	VOICE	, 33
	.byte	W01
	.byte	PEND
	.byte		N92	, Dn3
	.byte	W96
	.byte			Bn2
	.byte	W96
song046_4_4:
	.byte	VOICE	, 29
	.byte		N92	, Dn3, v116
	.byte	W96
	.byte	PEND
song046_4_5:
	.byte		N92	, Ds3, v116
	.byte	W92
	.byte	W03
	.byte	VOICE	, 29
	.byte	W01
	.byte	PEND
	.byte		TIE	, Cs3
	.byte	W96
	.byte	W92
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte	VOICE	, 29
	.byte		N92	, As2
	.byte	W96
	.byte	PATT	
		.word	song046_4_3
	.byte		N92	, Dn3, v116
	.byte	W96
	.byte			Bn2
	.byte	W96
	.byte	PATT	
		.word	song046_4_4
	.byte	PATT	
		.word	song046_4_5
	.byte		TIE	, Cs3, v116
	.byte	W96
	.byte	W92
	.byte	W03
	.byte	VOICE	, 29
	.byte	W01
	.byte		EOT	
	.byte	PATT	
		.word	song046_4_2
	.byte	PATT	
		.word	song046_4_6
	.byte	PATT	
		.word	song046_4_2
	.byte	PATT	
		.word	song046_4_6
	.byte	PATT	
		.word	song046_4_2
	.byte	PATT	
		.word	song046_4_6
	.byte	PATT	
		.word	song046_4_2
	.byte	PATT	
		.word	song046_4_7
	.byte	GOTO	
		.word	song046_4_8
	.byte	FINE

	@********************** Track  5 **********************@

	.global song046_5
song046_5:	@ 0x0828BA75
	.byte	KEYSH	, 0
	.byte	VOICE	, 30
	.byte	VOL	, v078
	.byte	PAN	, c_v
	.byte	W03
	.byte	W96
	.byte	W96
song046_5_2:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song046_5_1:
	.byte	VOL	, v077
	.byte		N48	, Dn2, v064
	.byte	W48
	.byte			Gn2, v076
	.byte	W48
	.byte	PEND
	.byte			Fn2, v072
	.byte	W48
	.byte		N40	, Ds2, v064
	.byte	W48
	.byte		N96	, Cn3, v096
	.byte	W03
	.byte	VOL	, v077
	.byte	W01
	.byte		v074
	.byte	W01
	.byte		v070
	.byte	W01
	.byte		v065
	.byte	W01
	.byte		v060
	.byte	W01
	.byte		v055
	.byte	W01
	.byte		v048
	.byte	W01
	.byte		v040
	.byte	W01
	.byte		v035
	.byte	W01
	.byte		v027
	.byte	W01
	.byte		v019
	.byte	W01
	.byte		v014
	.byte	W02
	.byte		v014
	.byte	W01
	.byte		v015
	.byte	W01
	.byte		v016
	.byte	W01
	.byte		v017
	.byte	W01
	.byte		v018
	.byte	W01
	.byte		v019
	.byte	W01
	.byte		v019
	.byte	W01
	.byte		v020
	.byte	W01
	.byte		v021
	.byte	W01
	.byte		v022
	.byte	W01
	.byte		v023
	.byte	W01
	.byte		v024
	.byte	W01
	.byte		v024
	.byte	W01
	.byte		v025
	.byte	W01
	.byte		v026
	.byte	W01
	.byte		v027
	.byte	W01
	.byte		v028
	.byte	W01
	.byte		v029
	.byte	W01
	.byte		v029
	.byte	W01
	.byte		v030
	.byte	W01
	.byte		v031
	.byte	W01
	.byte		v032
	.byte	W01
	.byte		v034
	.byte	W01
	.byte		v034
	.byte	W01
	.byte		v036
	.byte	W01
	.byte		v037
	.byte	W01
	.byte		v038
	.byte	W01
	.byte		v039
	.byte	W01
	.byte		v041
	.byte	W01
	.byte		v042
	.byte	W01
	.byte		v043
	.byte	W01
	.byte		v044
	.byte	W01
	.byte		v046
	.byte	W01
	.byte		v047
	.byte	W01
	.byte		v048
	.byte	W01
	.byte		v049
	.byte	W01
	.byte		v051
	.byte	W01
	.byte		v052
	.byte	W01
	.byte		v053
	.byte	W01
	.byte		v054
	.byte	W01
	.byte		v055
	.byte	W01
	.byte		v057
	.byte	W01
	.byte		v058
	.byte	W01
	.byte		v060
	.byte	W01
	.byte		v061
	.byte	W01
	.byte		v063
	.byte	W01
	.byte		v064
	.byte	W01
	.byte		v065
	.byte	W01
	.byte		v067
	.byte	W01
	.byte		v068
	.byte	W01
	.byte		v070
	.byte	W01
	.byte		v071
	.byte	W01
	.byte		v072
	.byte	W01
	.byte		v074
	.byte	W01
	.byte		v075
	.byte	W01
	.byte		v077
	.byte	W01
	.byte		v077
	.byte	W24
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song046_5_1
	.byte		N48	, Fn2, v072
	.byte	W48
	.byte		N44	, Ds2, v064
	.byte	W48
	.byte		N90	, Bn2, v104
	.byte	W03
	.byte	VOL	, v077
	.byte	W01
	.byte		v074
	.byte	W01
	.byte		v070
	.byte	W01
	.byte		v065
	.byte	W01
	.byte		v060
	.byte	W01
	.byte		v055
	.byte	W01
	.byte		v048
	.byte	W01
	.byte		v040
	.byte	W01
	.byte		v035
	.byte	W01
	.byte		v027
	.byte	W01
	.byte		v019
	.byte	W01
	.byte		v014
	.byte	W02
	.byte		v014
	.byte	W01
	.byte		v015
	.byte	W01
	.byte		v016
	.byte	W01
	.byte		v017
	.byte	W01
	.byte		v018
	.byte	W01
	.byte		v019
	.byte	W01
	.byte		v019
	.byte	W01
	.byte		v020
	.byte	W01
	.byte		v021
	.byte	W01
	.byte		v022
	.byte	W01
	.byte		v023
	.byte	W01
	.byte		v024
	.byte	W01
	.byte		v024
	.byte	W01
	.byte		v025
	.byte	W01
	.byte		v026
	.byte	W01
	.byte		v027
	.byte	W01
	.byte		v028
	.byte	W01
	.byte		v029
	.byte	W01
	.byte		v029
	.byte	W01
	.byte		v030
	.byte	W01
	.byte		v031
	.byte	W01
	.byte		v032
	.byte	W01
	.byte		v034
	.byte	W01
	.byte		v034
	.byte	W01
	.byte		v036
	.byte	W01
	.byte		v037
	.byte	W01
	.byte		v038
	.byte	W01
	.byte		v039
	.byte	W01
	.byte		v041
	.byte	W01
	.byte		v042
	.byte	W01
	.byte		v043
	.byte	W01
	.byte		v044
	.byte	W01
	.byte		v046
	.byte	W01
	.byte		v047
	.byte	W01
	.byte		v048
	.byte	W01
	.byte		v049
	.byte	W01
	.byte		v051
	.byte	W01
	.byte		v052
	.byte	W01
	.byte		v053
	.byte	W01
	.byte		v054
	.byte	W01
	.byte		v055
	.byte	W01
	.byte		v057
	.byte	W01
	.byte		v058
	.byte	W01
	.byte		v060
	.byte	W01
	.byte		v061
	.byte	W01
	.byte		v063
	.byte	W01
	.byte		v064
	.byte	W01
	.byte		v065
	.byte	W01
	.byte		v067
	.byte	W01
	.byte		v068
	.byte	W01
	.byte		v070
	.byte	W01
	.byte		v071
	.byte	W01
	.byte		v072
	.byte	W01
	.byte		v074
	.byte	W01
	.byte		v075
	.byte	W01
	.byte		v077
	.byte	W01
	.byte		v077
	.byte	W24
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
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
		.word	song046_5_2
	.byte	FINE

	@********************** Track  6 **********************@

	.global song046_6
song046_6:	@ 0x0828BC03
	.byte	KEYSH	, 0
	.byte	VOICE	, 59
	.byte	VOL	, v078
	.byte	PAN	, c_v
	.byte	W03
	.byte	W96
	.byte	W96
song046_6_1:
	.byte		N12	, As3, v127
	.byte	W12
	.byte			As2, v092
	.byte	W12
	.byte		N24	, As3, v127
	.byte	W24
	.byte		N12	, As2, v092
	.byte	W12
	.byte			As3, v127
	.byte	W12
	.byte			As2, v092
	.byte	W12
	.byte		N24	, An3, v127
	.byte	W12
	.byte	PEND
song046_6_2:
	.byte	W12
	.byte		N12	, An2, v092
	.byte	W12
	.byte			An3, v127
	.byte	W24
	.byte			Fn3
	.byte	W12
	.byte			An2, v092
	.byte	W12
	.byte			Gn3, v127
	.byte	W12
	.byte			An2, v092
	.byte	W12
	.byte	PEND
song046_6_3:
	.byte		N12	, Gs3, v127
	.byte	W12
	.byte			Gs2, v092
	.byte	W12
	.byte		N24	, Gs3, v127
	.byte	W24
	.byte		N12	, Gs2, v092
	.byte	W12
	.byte			As3, v127
	.byte	W12
	.byte			Gs2, v092
	.byte	W12
	.byte		N24	, Gn3, v127
	.byte	W12
	.byte	PEND
	.byte	W12
	.byte		N12	, Gn2, v092
	.byte	W12
	.byte			Gn3, v127
	.byte	W12
	.byte		N06	, Gn2, v092
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			Gn3, v127
	.byte	W12
	.byte			Gs3
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte	PATT	
		.word	song046_6_1
	.byte	PATT	
		.word	song046_6_2
	.byte	PATT	
		.word	song046_6_3
	.byte	W12
	.byte		N12	, Gn2, v092
	.byte	W12
	.byte			Gn3, v127
	.byte	W12
	.byte		N06	, Gn2, v092
	.byte	W12
	.byte		N24	, As3, v127
	.byte	W24
	.byte			Ds4
	.byte	W24
	.byte		N14	, Cs4, v100
	.byte	W12
	.byte		N13	, As3, v084
	.byte	W84
	.byte	W60
	.byte		N09	
	.byte	W12
	.byte		N24	, Cs4
	.byte	W24
	.byte		N12	, Cs4, v100
	.byte	W12
	.byte		N10	, As3, v084
	.byte	W84
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N15	, Cs4, v108
	.byte	W12
	.byte		N10	, As3, v088
	.byte	W84
	.byte	W60
	.byte		N14	, As3, v100
	.byte	W12
	.byte		N24	, Cs4, v096
	.byte	W24
	.byte		N13	, Cs4, v104
	.byte	W12
	.byte		N11	, As3, v092
	.byte	W84
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song046_6_11:
	.byte		N24	, As3, v127
	.byte	W24
	.byte			As4, v080
	.byte	W24
	.byte		N28	, Gs3, v127
	.byte	W24
	.byte			As4, v080
	.byte	W24
	.byte	PEND
song046_6_12:
	.byte		N24	, Fs3, v127
	.byte	W24
	.byte			As4, v080
	.byte	W24
	.byte			Fn3, v127
	.byte	W24
	.byte			As4, v080
	.byte	W24
	.byte	PEND
song046_6_13:
	.byte		N28	, Ds3, v127
	.byte	W24
	.byte			As4, v080
	.byte	W24
	.byte		N24	, Cs3, v127
	.byte	W24
	.byte			As4, v080
	.byte	W24
	.byte	PEND
song046_6_14:
	.byte		N28	, Cn3, v127
	.byte	W24
	.byte			As4, v080
	.byte	W24
	.byte			An2, v127
	.byte	W24
	.byte			As4, v080
	.byte	W24
	.byte	PEND
song046_6_15:
	.byte		N13	, As3, v127
	.byte	W24
	.byte		N13	
	.byte		N24	, As4, v080
	.byte	W24
	.byte		N05	, Gs3, v127
	.byte	W12
	.byte		N15	
	.byte	W12
	.byte		N28	, As4, v080
	.byte	W12
	.byte		N14	, Fs3, v127
	.byte	W12
	.byte	PEND
song046_6_16:
	.byte	W12
	.byte		N13	, Fs3, v127
	.byte	W12
	.byte		N24	, As4, v080
	.byte	W12
	.byte		N16	, Fn3, v127
	.byte	W24
	.byte		N14	
	.byte	W12
	.byte		N08	, Fn4
	.byte		N24	, As4, v080
	.byte	W12
	.byte		N14	, Fn3, v127
	.byte	W12
	.byte	PEND
song046_6_17:
	.byte		N12	, Ds3, v127
	.byte	W24
	.byte		N11	
	.byte		N28	, As4, v080
	.byte	W24
	.byte		N05	, Cs3, v127
	.byte	W12
	.byte		N15	
	.byte	W12
	.byte		N24	, As4, v080
	.byte	W12
	.byte		N14	, Cn3, v127
	.byte	W12
	.byte	PEND
song046_6_18:
	.byte	W12
	.byte		N15	, Cn3, v127
	.byte	W12
	.byte		N28	, As4, v080
	.byte	W12
	.byte		N15	, An2, v127
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte		N12	, Fn3
	.byte		N28	, As4, v080
	.byte	W12
	.byte		N14	, Cn4, v127
	.byte	W12
	.byte	PEND
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song046_6_4:
	.byte		N12	, Gs3, v116
	.byte	W12
	.byte			Gs2, v084
	.byte	W12
	.byte			Gs3, v120
	.byte	W12
	.byte			Gs3, v092
	.byte	W12
	.byte			Gs2, v084
	.byte	W12
	.byte		N14	, Gs3, v112
	.byte	W12
	.byte		N12	, Gs2, v084
	.byte	W12
	.byte		N24	, As3, v120
	.byte	W12
	.byte	PEND
song046_6_5:
	.byte	W12
	.byte		N12	, As2, v084
	.byte	W12
	.byte			As3, v124
	.byte	W12
	.byte		N11	, As3, v092
	.byte	W12
	.byte		N12	, As2, v084
	.byte	W12
	.byte		N22	, As3, v124
	.byte	W12
	.byte		N12	, As2, v084
	.byte	W24
	.byte	PEND
song046_6_6:
	.byte		N15	, As3, v124
	.byte	W12
	.byte		N12	, As2, v084
	.byte	W12
	.byte			As3, v120
	.byte	W12
	.byte		N15	, As3, v092
	.byte	W12
	.byte		N12	, As2, v084
	.byte	W12
	.byte		N13	, As3, v120
	.byte	W12
	.byte		N12	, As2, v084
	.byte	W12
	.byte		N24	, Fn3, v116
	.byte	W12
	.byte	PEND
song046_6_7:
	.byte	W12
	.byte		N12	, Fn2, v084
	.byte	W12
	.byte			Fn3, v124
	.byte	W12
	.byte			Fn3, v092
	.byte	W12
	.byte			Fn2, v084
	.byte	W12
	.byte		N24	, Fn3, v116
	.byte	W12
	.byte		N12	, Fn2, v084
	.byte	W12
	.byte			Fn3
	.byte	W12
	.byte	PEND
song046_6_8:
	.byte		N14	, Cn4, v127
	.byte	W12
	.byte		N12	, Cn3, v084
	.byte	W12
	.byte			Cn4, v127
	.byte	W12
	.byte		N13	, Cn4, v100
	.byte	W12
	.byte		N12	, Cn3, v084
	.byte	W12
	.byte		N15	, Cn4, v112
	.byte	W12
	.byte		N12	, Cn3, v084
	.byte	W12
	.byte		N28	, Cs4, v116
	.byte	W12
	.byte	PEND
song046_6_9:
	.byte	W12
	.byte		N12	, Cs3, v084
	.byte	W12
	.byte			Cs4, v124
	.byte	W12
	.byte		N15	, Cs4, v092
	.byte	W12
	.byte		N12	, Cs3, v084
	.byte	W12
	.byte		N28	, Cs4, v116
	.byte	W24
	.byte		N12	, Cs3, v084
	.byte	W12
	.byte	PEND
song046_6_10:
	.byte		N12	, Cs4, v116
	.byte	W12
	.byte		N17	, Cs4, v084
	.byte	W12
	.byte		N12	, Cs3
	.byte	W12
	.byte		N24	, Bn3, v116
	.byte	W24
	.byte		N36	, Bn3, v084
	.byte	W36
	.byte	PEND
	.byte		N12	, Gs3, v127
	.byte	W12
	.byte		N15	, Gs3, v096
	.byte	W12
	.byte		N12	, Gs2, v084
	.byte	W12
	.byte		N24	, En3, v124
	.byte	W24
	.byte		N36	, En3, v092
	.byte	W36
	.byte	PATT	
		.word	song046_6_4
	.byte	PATT	
		.word	song046_6_5
	.byte	PATT	
		.word	song046_6_6
	.byte	PATT	
		.word	song046_6_7
	.byte	PATT	
		.word	song046_6_8
	.byte	PATT	
		.word	song046_6_9
	.byte	PATT	
		.word	song046_6_10
	.byte		N12	, Gs4, v127
	.byte	W12
	.byte		N15	, Gs4, v108
	.byte	W12
	.byte		N12	, Gs3, v084
	.byte	W12
	.byte		N24	, Bn4, v127
	.byte	W24
	.byte		N36	, Bn4, v104
	.byte	W36
	.byte	PATT	
		.word	song046_6_11
	.byte	PATT	
		.word	song046_6_12
	.byte	PATT	
		.word	song046_6_13
	.byte	PATT	
		.word	song046_6_14
	.byte	PATT	
		.word	song046_6_15
	.byte	PATT	
		.word	song046_6_16
	.byte	PATT	
		.word	song046_6_17
	.byte	PATT	
		.word	song046_6_18
	.byte	GOTO	
		.word	song046_6_1
	.byte	W05
	.byte	FINE

	@********************** Track  7 **********************@

	.global song046_7
song046_7:	@ 0x0828BEA8
	.byte	KEYSH	, 0
	.byte	VOICE	, 63
	.byte	VOL	, v087
	.byte	PAN	, c_v
	.byte	W03
	.byte	W96
	.byte	W96
song046_7_10:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W72
	.byte	PAN	, c_v
	.byte	W22
	.byte		N16	, Gs4, v116
	.byte	W02
song046_7_1:
	.byte	W18
	.byte		N17	, Cs5, v124
	.byte	W18
	.byte		N05	, Cn5, v120
	.byte	W06
	.byte		N04	, Cs5
	.byte	W04
	.byte		N18	, Gs4, v100
	.byte	W24
	.byte	W02
	.byte			Cs5, v124
	.byte	W22
	.byte		N16	, Gs4, v116
	.byte	W02
	.byte	PEND
song046_7_2:
	.byte	W18
	.byte		N17	, Cs5, v124
	.byte	W18
	.byte		N05	, Cn5, v120
	.byte	W06
	.byte			Cs5
	.byte	W06
	.byte		N18	, Ds5, v100
	.byte	W24
	.byte			Fs5, v124
	.byte	W22
	.byte		N16	, Gs4, v116
	.byte	W02
	.byte	PEND
song046_7_3:
	.byte	W18
	.byte		N17	, Cs5, v124
	.byte	W18
	.byte		N05	, En5, v120
	.byte	W06
	.byte			Fs5
	.byte	W06
	.byte		N18	, Gs5, v124
	.byte	W24
	.byte			Bn4, v100
	.byte	W24
	.byte	PEND
song046_7_4:
	.byte		N17	, Cs5, v116
	.byte	W24
	.byte		N11	, Gs5, v124
	.byte	W12
	.byte			Fs5, v120
	.byte	W24
	.byte		N23	, En5, v116
	.byte	W24
	.byte		N11	, Ds5, v120
	.byte	W12
	.byte	PEND
song046_7_5:
	.byte		N23	, Bn4, v116
	.byte	W24
	.byte		N11	, An5, v120
	.byte	W12
	.byte		N23	, Gs5, v116
	.byte	W24
	.byte			Bn5, v124
	.byte	W24
	.byte			Gs5
	.byte	W12
	.byte	PEND
song046_7_6:
	.byte	W24
	.byte		N11	, Fs5, v120
	.byte	W12
	.byte		N23	, En5, v112
	.byte	W24
	.byte			Gs5, v124
	.byte	W36
	.byte	PEND
	.byte			Ds5, v120
	.byte	W24
	.byte		N11	, En5
	.byte	W12
	.byte		N23	, Ds5, v116
	.byte	W24
	.byte		N11	, Cs5, v104
	.byte	W12
	.byte		N08	, An4, v120
	.byte	W10
	.byte		N13	, Gs4, v116
	.byte	W14
	.byte	W92
	.byte	W02
	.byte		N16	
	.byte	W02
	.byte	PATT	
		.word	song046_7_1
	.byte	PATT	
		.word	song046_7_2
	.byte	PATT	
		.word	song046_7_3
	.byte	PATT	
		.word	song046_7_4
	.byte	PATT	
		.word	song046_7_5
	.byte	PATT	
		.word	song046_7_6
	.byte		N11	, Cn5, v120
	.byte	W12
	.byte			En5, v124
	.byte	W12
	.byte			An5, v127
	.byte	W12
	.byte		N23	, Gs5
	.byte	W24
	.byte			Cn6
	.byte	W24
	.byte		N11	, Gs5, v124
	.byte	W12
	.byte		N32	, Cs6, v127
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song046_7_8:
	.byte	PAN	, c_v+30
	.byte	W24
	.byte		N10	, Cs6, v076
	.byte	W12
	.byte		N06	, Cs6, v124
	.byte	W36
	.byte		N10	, Cs6, v076
	.byte	W12
	.byte		N06	, Cs6, v124
	.byte	W12
	.byte	PEND
song046_7_7:
	.byte	W24
	.byte		N10	, Cs6, v076
	.byte	W12
	.byte		N06	, Cs6, v124
	.byte	W36
	.byte		N10	, Cn6, v076
	.byte	W12
	.byte		N06	, Cn6, v124
	.byte	W12
	.byte	PEND
song046_7_9:
	.byte	W24
	.byte		N10	, Cs6, v076
	.byte	W12
	.byte		N06	, Cs6, v124
	.byte	W36
	.byte		N10	, Cs6, v076
	.byte	W12
	.byte		N06	, Cs6, v124
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song046_7_7
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
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
		.word	song046_7_8
	.byte	PATT	
		.word	song046_7_7
	.byte	PATT	
		.word	song046_7_9
	.byte	PATT	
		.word	song046_7_7
	.byte	GOTO	
		.word	song046_7_10
	.byte	FINE

	@********************** Track  8 **********************@

	.global song046_8
song046_8:	@ 0x0828C005
	.byte	KEYSH	, 0
	.byte	VOICE	, 35
	.byte	VOL	, v067
	.byte	PAN	, c_v
	.byte	W03
	.byte	W96
	.byte	W96
song046_8_1:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
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
	.byte		TIE	, Cn3, v076
	.byte	W96
	.byte	W44
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte		N44	, As2, v127
	.byte	W48
	.byte		N23	, Gs2
	.byte	W24
	.byte		N68	, Ds3, v104
	.byte	W72
	.byte		N92	, Gn2, v084
	.byte	W96
	.byte		N88	, Cn3
	.byte	W96
	.byte		N44	, Bn2, v127
	.byte	W48
	.byte			Cn3
	.byte	W48
	.byte		N88	, Dn3, v104
	.byte	W96
	.byte		N44	, Cn3, v127
	.byte	W48
	.byte			Dn3
	.byte	W48
	.byte		N88	, Ds3, v104
	.byte	W96
	.byte		N44	, Gn3, v120
	.byte	W48
	.byte			Fs3, v116
	.byte	W48
	.byte			En3
	.byte	W48
	.byte			An2, v100
	.byte	W48
	.byte		N92	, Cn3, v112
	.byte	W96
	.byte			Fs3, v120
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
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
		.word	song046_8_1
	.byte	FINE

	@********************** Track  9 **********************@

	.global song046_9
song046_9:	@ 0x0828C09A
	.byte	KEYSH	, 0
	.byte	VOICE	, 37
	.byte	VOL	, v053
	.byte	PAN	, c_v
	.byte	W03
	.byte	W96
	.byte	W96
song046_9_2:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song046_9_1:
	.byte	W48
	.byte		N23	, Dn3, v084
	.byte	W24
	.byte			Cn3, v076
	.byte	W24
	.byte	PEND
	.byte		N44	, Ds3, v084
	.byte	W48
	.byte		N92	, Fs3, v092
	.byte	W48
	.byte	W48
	.byte		N44	, Dn3, v084
	.byte	W48
	.byte		N88	, As2, v076
	.byte	W96
	.byte		N44	, Gn2, v072
	.byte	W48
	.byte			Dn3, v076
	.byte	W48
	.byte			An2
	.byte	W48
	.byte			Ds3, v080
	.byte	W48
	.byte		N92	, An2, v076
	.byte	W96
	.byte			As2, v080
	.byte	W96
	.byte	PATT	
		.word	song046_9_1
	.byte		N44	, Ds3, v084
	.byte	W48
	.byte			Fs3, v092
	.byte	W48
	.byte		N23	, Gn3
	.byte	W24
	.byte		N68	, Dn3, v084
	.byte	W72
	.byte		N88	, As2, v076
	.byte	W96
	.byte		N44	, Fs2, v072
	.byte	W48
	.byte			Dn3, v076
	.byte	W48
	.byte			Gs2
	.byte	W48
	.byte			Dn3, v080
	.byte	W48
	.byte		N92	, Cs3, v076
	.byte	W96
	.byte			En3, v084
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
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
		.word	song046_9_2
	.byte	FINE

	@********************** Track  10 **********************@

	.global song046_10
song046_10:	@ 0x0828C139
	.byte	KEYSH	, 0
	.byte	VOICE	, 14
	.byte	VOL	, v054
	.byte	W03
	.byte	W02
	.byte		N18	, Dn3, v116
	.byte	W12
	.byte		N15	, Cs3
	.byte	W12
	.byte		N14	, Cn3
	.byte	W12
	.byte		N24	, Bn2
	.byte	W24
	.byte		N13	, As2
	.byte	W12
	.byte		N14	, An2
	.byte	W12
	.byte		N24	, Gs2
	.byte	W10
	.byte	W14
	.byte		N15	, Gn2
	.byte	W12
	.byte		N14	, Fs2
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte			En2
	.byte	W12
	.byte		N13	, Ds2
	.byte	W12
	.byte		N24	, Dn2
	.byte	W22
song046_10_1:
	.byte	W02
	.byte		N12	, Gn2, v116
	.byte	W12
	.byte			As2
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			As2
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Dn3
	.byte	W10
	.byte	PEND
song046_10_2:
	.byte	W02
	.byte		N12	, Fs2, v116
	.byte	W12
	.byte			As2
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			As2
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Dn3
	.byte	W10
	.byte	PEND
song046_10_3:
	.byte	W02
	.byte		N12	, Fn2, v116
	.byte	W12
	.byte			As2
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte			As2
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte			Dn3
	.byte	W10
	.byte	PEND
song046_10_4:
	.byte	W02
	.byte		N12	, En2, v116
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			As2
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte			As2
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			Dn3
	.byte	W10
	.byte	PEND
	.byte	PATT	
		.word	song046_10_1
	.byte	PATT	
		.word	song046_10_2
	.byte	PATT	
		.word	song046_10_3
	.byte	PATT	
		.word	song046_10_4
	.byte	PATT	
		.word	song046_10_1
	.byte	PATT	
		.word	song046_10_2
	.byte	PATT	
		.word	song046_10_3
	.byte	PATT	
		.word	song046_10_4
song046_10_6:
	.byte	W02
	.byte		N12	, Fn2, v116
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte			Fn3
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte			Fn3
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte			An2
	.byte	W10
	.byte	PEND
song046_10_5:
	.byte	W02
	.byte		N12	, As2, v116
	.byte	W12
	.byte			Fn3
	.byte	W12
	.byte			As3
	.byte	W12
	.byte			An3
	.byte	W12
	.byte			Fn3
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			As2
	.byte	W12
	.byte			Fn2
	.byte	W10
	.byte	PEND
	.byte	W02
	.byte			Ds2
	.byte	W12
	.byte			As2
	.byte	W12
	.byte			Ds3
	.byte	W12
	.byte			Fn3
	.byte	W12
	.byte			Ds3
	.byte	W12
	.byte			As2
	.byte	W12
	.byte			Ds2
	.byte	W12
	.byte			As2
	.byte	W10
song046_10_7:
	.byte	W02
	.byte		N12	, Dn2, v116
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Fs2
	.byte	W10
	.byte	PEND
	.byte	PATT	
		.word	song046_10_1
	.byte	PATT	
		.word	song046_10_2
	.byte	PATT	
		.word	song046_10_5
	.byte	PATT	
		.word	song046_10_4
	.byte	PATT	
		.word	song046_10_6
	.byte	W02
	.byte		N12	, Gn2, v116
	.byte	W12
	.byte			As2
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte			As2
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte			Dn3
	.byte	W10
	.byte	PATT	
		.word	song046_10_7
song046_10_8:
	.byte	W12
	.byte		N12	, Gn2, v116
	.byte	W12
	.byte			Gn1
	.byte	W12
	.byte			Gn2
	.byte	W24
	.byte			Fn2
	.byte	W12
	.byte			Fn1
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte	PEND
song046_10_9:
	.byte	W12
	.byte		N12	, Ds2, v116
	.byte	W12
	.byte			Ds1
	.byte	W12
	.byte			Ds2
	.byte	W24
	.byte			Dn2
	.byte	W12
	.byte			Dn1
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song046_10_8
	.byte	PATT	
		.word	song046_10_9
	.byte	PATT	
		.word	song046_10_8
	.byte	PATT	
		.word	song046_10_9
	.byte	PATT	
		.word	song046_10_8
song046_10_20:
	.byte	W12
	.byte		N12	, Ds2, v116
	.byte	W12
	.byte			Ds1
	.byte	W12
	.byte			Ds2
	.byte	W24
	.byte			Dn2
	.byte	W12
	.byte			Dn1
	.byte	W12
	.byte			An1
	.byte	W12
	.byte	PEND
	.byte	W02
	.byte		N17	, Dn2
	.byte	W24
	.byte		N04	
	.byte	W12
	.byte		N18	
	.byte	W24
	.byte		N05	
	.byte	W12
	.byte		N17	
	.byte	W22
	.byte	W02
	.byte		N05	
	.byte	W12
	.byte		N17	
	.byte	W24
	.byte		N05	
	.byte	W12
	.byte		N17	
	.byte	W24
	.byte		N05	
	.byte	W12
	.byte		N07	
	.byte	W10
	.byte	W02
	.byte		N17	, Gn2
	.byte	W24
	.byte		N06	
	.byte	W12
	.byte		N18	
	.byte	W24
	.byte		N06	
	.byte	W12
	.byte		N18	
	.byte	W22
	.byte	W02
	.byte		N06	
	.byte	W12
	.byte		N19	
	.byte	W24
	.byte		N04	
	.byte	W12
	.byte		N19	
	.byte	W24
	.byte		N06	
	.byte	W12
	.byte		N08	
	.byte	W10
	.byte	W02
	.byte		N11	, Cn2
	.byte	W12
	.byte		N15	, Gn2
	.byte	W12
	.byte		N12	, As2
	.byte	W12
	.byte		N24	, Cn3
	.byte	W24
	.byte		N14	, As2
	.byte	W12
	.byte		N13	, Gn2
	.byte	W12
	.byte			Cn2
	.byte	W10
	.byte	W02
	.byte		N11	, Fn2
	.byte	W12
	.byte		N15	, Cn3
	.byte	W12
	.byte		N12	, Ds3
	.byte	W12
	.byte		N24	, Fn3
	.byte	W24
	.byte		N14	, Ds3
	.byte	W12
	.byte		N13	, Cn3
	.byte	W12
	.byte			Fn2
	.byte	W10
	.byte	W02
	.byte		N11	, As2
	.byte	W12
	.byte		N15	, Fn3
	.byte	W12
	.byte		N12	, An3
	.byte	W12
	.byte		N24	, As3
	.byte	W24
	.byte		N14	, An3
	.byte	W12
	.byte		N13	, Fn3
	.byte	W12
	.byte			As2
	.byte	W10
	.byte	W02
	.byte		N11	, Ds2
	.byte	W12
	.byte		N15	, As2
	.byte	W12
	.byte		N12	, Dn3
	.byte	W12
	.byte		N24	, Ds3
	.byte	W24
	.byte		N14	, Dn3
	.byte	W12
	.byte		N13	, As2
	.byte	W12
	.byte			Ds2
	.byte	W10
song046_10_10:
	.byte		N12	, Dn1, v124
	.byte	W12
	.byte		N18	, Dn2
	.byte	W24
	.byte		N12	, Cn2
	.byte	W18
	.byte		N03	, As1
	.byte	W06
	.byte			An1
	.byte	W06
	.byte			Gn1
	.byte	W06
	.byte			Fs1
	.byte	W06
	.byte			Gn1
	.byte	W06
	.byte			An1
	.byte	W06
	.byte			Dn2
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song046_10_10
song046_10_11:
	.byte		N12	, Gn1, v124
	.byte	W12
	.byte		N18	, Gn2
	.byte	W24
	.byte		N12	, Fn2
	.byte	W18
	.byte		N03	, Ds2
	.byte	W06
	.byte			Dn2
	.byte	W06
	.byte			Cn2
	.byte	W06
	.byte			As1
	.byte	W06
	.byte			Cn2
	.byte	W06
	.byte			Dn2
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song046_10_11
	.byte		N12	, Bn1, v124
	.byte	W12
	.byte		N18	, Bn2
	.byte	W24
	.byte		N12	, An2
	.byte	W18
	.byte		N03	, Gn2
	.byte	W06
	.byte			Fs2
	.byte	W06
	.byte			En2
	.byte	W06
	.byte			Dn2
	.byte	W06
	.byte			En2
	.byte	W06
	.byte			Fs2
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte		N12	, En1
	.byte	W12
	.byte		N18	, En2
	.byte	W24
	.byte		N24	, Bn1
	.byte	W24
	.byte		N18	, En2
	.byte	W24
	.byte		N12	, En1
	.byte	W12
	.byte			An1
	.byte	W12
	.byte		N18	, An2
	.byte	W24
	.byte		N12	, Gn2
	.byte	W18
	.byte		N03	, Fn2
	.byte	W06
	.byte			En2
	.byte	W06
	.byte			Dn2
	.byte	W06
	.byte			Cs2
	.byte	W06
	.byte			Bn1
	.byte	W06
	.byte			Cs2
	.byte	W06
	.byte			An1
	.byte	W06
	.byte		N12	
	.byte	W12
	.byte		N18	, An2
	.byte	W24
	.byte			En2
	.byte	W24
	.byte			Cs2
	.byte	W24
	.byte		N12	, An1
	.byte	W12
song046_10_12:
	.byte	W02
	.byte		N12	, Fn2, v116
	.byte	W12
	.byte			Cn2
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte			Cn2
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte			Cn2
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte			Cn2
	.byte	W10
	.byte	PEND
song046_10_13:
	.byte	W02
	.byte		N12	, Gn2, v116
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Dn2
	.byte	W10
	.byte	PEND
song046_10_14:
	.byte	W02
	.byte		N12	, Gs2, v116
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Dn2
	.byte	W10
	.byte	PEND
song046_10_15:
	.byte	W02
	.byte		N12	, Gs2, v116
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Fn3
	.byte	W12
	.byte			Dn2
	.byte	W10
	.byte	PEND
song046_10_16:
	.byte	W02
	.byte		N12	, An2, v116
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			En2
	.byte	W10
	.byte	PEND
song046_10_17:
	.byte	W02
	.byte		N12	, As2, v116
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte			As2
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte			As2
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte			As2
	.byte	W12
	.byte			Fn2
	.byte	W10
	.byte	PEND
song046_10_18:
	.byte	W02
	.byte		N12	, Cs3, v116
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Gs2
	.byte	W10
	.byte	PEND
song046_10_19:
	.byte	W02
	.byte		N12	, Cs3, v116
	.byte	W12
	.byte			Ds3
	.byte	W12
	.byte			Fn3
	.byte	W12
	.byte		N24	, Fs3
	.byte	W24
	.byte		N12	, Gs3
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte			Cs4
	.byte	W10
	.byte	PEND
	.byte	PATT	
		.word	song046_10_12
	.byte	PATT	
		.word	song046_10_13
	.byte	PATT	
		.word	song046_10_14
	.byte	PATT	
		.word	song046_10_15
	.byte	PATT	
		.word	song046_10_16
	.byte	PATT	
		.word	song046_10_17
	.byte	PATT	
		.word	song046_10_18
	.byte	PATT	
		.word	song046_10_19
	.byte	PATT	
		.word	song046_10_8
	.byte	PATT	
		.word	song046_10_9
	.byte	PATT	
		.word	song046_10_8
	.byte	PATT	
		.word	song046_10_9
	.byte	PATT	
		.word	song046_10_8
	.byte	PATT	
		.word	song046_10_9
	.byte	PATT	
		.word	song046_10_8
	.byte	PATT	
		.word	song046_10_20
	.byte	GOTO	
		.word	song046_10_1
	.byte	FINE

	@********************** Track  11 **********************@

	.global song046_11
song046_11:	@ 0x0828C4AC
	.byte	KEYSH	, 0
	.byte	VOICE	, 39
	.byte	VOL	, v049
	.byte	PAN	, c_v-25
	.byte	W03
	.byte	W96
	.byte	W96
song046_11_4:
	.byte		N06	, Gn3, v036
	.byte	W12
	.byte		N12	, Gn4, v056
	.byte	W18
	.byte		N06	, Gn3, v036
	.byte	W06
	.byte		N12	, Dn4, v056
	.byte	W12
	.byte		N06	, As3, v064
	.byte	W06
	.byte			An3, v044
	.byte	W06
	.byte			Gn3, v024
	.byte	W06
	.byte			An3, v044
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Dn4, v056
	.byte	W06
	.byte			Gn4, v060
	.byte	W06
	.byte	PEND
	.byte			Fs3, v036
	.byte	W12
	.byte		N12	, Fs4, v056
	.byte	W18
	.byte		N06	, Fs3, v036
	.byte	W06
	.byte		N12	, Dn4, v056
	.byte	W12
	.byte		N06	, As3, v064
	.byte	W06
	.byte			An3, v044
	.byte	W06
	.byte			Fs3, v024
	.byte	W06
	.byte			An3, v044
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Dn4, v056
	.byte	W06
	.byte			Fs4, v060
	.byte	W06
	.byte			Fn3, v036
	.byte	W12
	.byte		N12	, Fn4, v056
	.byte	W18
	.byte		N06	, Fn3, v036
	.byte	W06
	.byte		N12	, Dn4, v056
	.byte	W12
	.byte		N06	, As3, v064
	.byte	W06
	.byte			An3, v044
	.byte	W06
	.byte			Fn3, v024
	.byte	W06
	.byte			An3, v044
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Dn4, v056
	.byte	W06
	.byte			Fn4, v060
	.byte	W06
	.byte		N12	, As4
	.byte	W12
	.byte		N06	, An4, v056
	.byte	W06
	.byte			Gn4, v052
	.byte	W12
	.byte			As4, v060
	.byte	W06
	.byte			En4, v052
	.byte	W12
	.byte		N04	, Dn4, v040
	.byte	W04
	.byte			En4, v052
	.byte	W04
	.byte			Dn5, v060
	.byte	W04
	.byte			Cn4, v040
	.byte	W04
	.byte			En4, v052
	.byte	W04
	.byte			Cn5, v060
	.byte	W04
	.byte			As3, v040
	.byte	W04
	.byte			En4, v052
	.byte	W04
	.byte			As4, v060
	.byte	W04
	.byte			Cn4, v040
	.byte	W04
	.byte			En4, v052
	.byte	W04
	.byte			Cn5, v060
	.byte	W04
	.byte		N06	, Dn4, v036
	.byte	W12
	.byte		N12	, Dn5, v056
	.byte	W18
	.byte		N06	, Dn4, v036
	.byte	W06
	.byte		N12	, Cn5, v056
	.byte	W12
	.byte		N06	, Dn5, v064
	.byte	W06
	.byte			Cn5, v044
	.byte	W06
	.byte			As4, v024
	.byte	W06
	.byte			Cn5, v044
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte			An4
	.byte	W06
	.byte			As4, v056
	.byte	W06
	.byte			Dn5, v060
	.byte	W06
	.byte			Dn4, v036
	.byte	W12
	.byte		N12	, Dn5, v056
	.byte	W18
	.byte		N06	, Dn4, v036
	.byte	W06
	.byte		N12	, Cn5, v056
	.byte	W12
	.byte		N06	, Dn5, v064
	.byte	W06
	.byte			Cn5, v044
	.byte	W06
	.byte			As4, v024
	.byte	W06
	.byte			Cn5, v044
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			An4
	.byte	W06
	.byte			As4, v056
	.byte	W06
	.byte			Dn5, v060
	.byte	W06
	.byte			Dn4, v036
	.byte	W12
	.byte		N12	, Dn5, v056
	.byte	W18
	.byte		N06	, Dn4, v036
	.byte	W06
	.byte		N12	, Cn5, v056
	.byte	W12
	.byte		N06	, Dn5, v064
	.byte	W06
	.byte			Cn5, v044
	.byte	W06
	.byte			As4, v024
	.byte	W06
	.byte			Cn5, v044
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte			An4
	.byte	W06
	.byte			As4, v056
	.byte	W06
	.byte		N18	, Dn5, v060
	.byte	W06
	.byte	W12
	.byte		N06	, Cn5, v056
	.byte	W06
	.byte			As4, v052
	.byte	W12
	.byte			Dn5, v060
	.byte	W06
	.byte			As4, v052
	.byte	W12
	.byte		N04	, Gn4, v040
	.byte	W04
	.byte			As4, v052
	.byte	W04
	.byte			Gn5, v060
	.byte	W04
	.byte			Fn4, v040
	.byte	W04
	.byte			As4, v052
	.byte	W04
	.byte			Fn5, v060
	.byte	W04
	.byte			En4, v040
	.byte	W04
	.byte			As4, v052
	.byte	W04
	.byte			En5, v060
	.byte	W04
	.byte			Gn4, v040
	.byte	W04
	.byte			As4, v052
	.byte	W04
	.byte			Gn5, v060
	.byte	W04
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song046_11_1:
	.byte		N04	, Dn4, v104
	.byte	W06
	.byte		N12	, Dn4, v116
	.byte	W12
	.byte		N04	, Dn4, v104
	.byte	W06
	.byte		N10	, As3
	.byte	W12
	.byte		N04	, Dn4
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Gn3, v116
	.byte	W06
	.byte			An3, v104
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			As3, v116
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			Dn4, v104
	.byte	W06
	.byte			Cn4, v116
	.byte	W06
	.byte			As3, v104
	.byte	W06
	.byte	PEND
	.byte			Dn4
	.byte	W06
	.byte		N12	, As3, v116
	.byte	W12
	.byte		N04	, As3, v104
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte		N12	, Dn4, v116
	.byte	W12
	.byte		N10	, Fs4, v124
	.byte	W12
	.byte		N04	, Dn4, v104
	.byte	W06
	.byte		N06	, An4, v116
	.byte	W06
	.byte			Fs4, v112
	.byte	W06
	.byte			Ds4, v104
	.byte	W06
	.byte			Dn4, v100
	.byte	W06
	.byte	PATT	
		.word	song046_11_1
	.byte		N04	, Dn4, v104
	.byte	W06
	.byte		N12	, As3, v116
	.byte	W12
	.byte		N04	, As3, v104
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte		N12	, Dn4, v116
	.byte	W12
	.byte		N10	, Fs4, v124
	.byte	W12
	.byte		N04	, Dn4, v104
	.byte	W06
	.byte		N06	, An4, v116
	.byte	W06
	.byte			Fs4, v112
	.byte	W06
	.byte			Ds4, v104
	.byte	W06
	.byte		N05	, Dn4, v100
	.byte	W05
	.byte	VOICE	, 34
	.byte	PAN	, c_v+30
	.byte	W01
song046_11_2:
	.byte		N01	, Fs3, v044
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
	.byte	PEND
	.byte	PATT	
		.word	song046_11_2
song046_11_3:
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
		.word	song046_11_3
	.byte	PATT	
		.word	song046_11_3
	.byte		N01	, Fn3, v044
	.byte	W06
	.byte			An3, v060
	.byte	W06
	.byte			Fn4, v076
	.byte	W24
	.byte			Ds4
	.byte	W24
	.byte			Dn4, v064
	.byte	W06
	.byte			Gn4, v076
	.byte	W18
	.byte			Ds4
	.byte	W12
	.byte			Fn3, v044
	.byte	W12
	.byte			Gn3, v056
	.byte	W12
	.byte			An3, v064
	.byte	W12
	.byte			Cn4, v076
	.byte	W12
	.byte			Fn4, v064
	.byte	W12
	.byte			An4, v076
	.byte	W12
	.byte			Fn4, v064
	.byte	W12
	.byte			Dn4, v076
	.byte	W12
	.byte			Gn3, v044
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
	.byte	W11
	.byte	VOICE	, 34
	.byte	PAN	, c_v+30
	.byte	W01
	.byte		N01	, Fs3, v044
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			Gn3, v056
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			An3, v064
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			Dn4, v076
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Fs4, v064
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			An4, v076
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Fs4, v064
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Dn4, v076
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Fs3, v044
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			An3, v056
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			Cn4, v064
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			Ds4, v076
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Fs4, v064
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			An4, v076
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Fs4, v064
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Ds4, v076
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Gn3, v044
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			An3, v056
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			As3, v064
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			Dn4, v076
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Gn4, v064
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			As4, v076
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			Gn4, v064
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Dn4, v076
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Gn3, v044
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			An3, v056
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			As3, v064
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			Dn4, v076
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Fn3, v044
	.byte	W04
	.byte			Gn3, v056
	.byte	W04
	.byte			An3, v076
	.byte	W04
	.byte			Gn3, v044
	.byte	W04
	.byte			An3, v064
	.byte	W04
	.byte			As3, v084
	.byte	W04
	.byte			Gn3, v044
	.byte	W04
	.byte			As3, v056
	.byte	W04
	.byte			Dn4, v064
	.byte	W04
	.byte			Fn4, v076
	.byte	W04
	.byte			Gn4, v084
	.byte	W04
	.byte			As4, v096
	.byte	W04
	.byte			Bn4, v084
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			Fs4, v064
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Dn4, v056
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Bn4, v084
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			Fs4, v064
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Dn4, v056
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Bn4, v084
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			Fs4, v064
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Gs3, v044
	.byte	W06
	.byte			Bn3, v060
	.byte	W06
	.byte			Fs4, v076
	.byte	W06
	.byte			Gs3, v044
	.byte	W06
	.byte			En3
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte			Dn4, v076
	.byte	W06
	.byte			Gs3, v044
	.byte	W06
	.byte			En3
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte			Bn3, v064
	.byte	W06
	.byte			Gs4, v076
	.byte	W06
	.byte			Gs3, v044
	.byte	W06
	.byte			En3
	.byte	W06
	.byte			Dn4, v076
	.byte	W06
	.byte			Gs4, v044
	.byte	W06
	.byte			An4, v084
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			En4, v064
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Cs4, v056
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			An4, v084
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			En4, v064
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Cs4, v056
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			An4, v084
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			En4, v064
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			As4, v084
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Fn4, v064
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Cs4, v056
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			As4, v084
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			En3, v044
	.byte	W04
	.byte			Gn3, v056
	.byte	W04
	.byte			As3, v076
	.byte	W04
	.byte			Gn3, v044
	.byte	W04
	.byte			As3, v064
	.byte	W04
	.byte			Cs4, v084
	.byte	W04
	.byte			Gn3, v044
	.byte	W04
	.byte			As3, v056
	.byte	W04
	.byte			Cs4, v064
	.byte	W04
	.byte			En4, v076
	.byte	W04
	.byte			Gn4, v084
	.byte	W04
	.byte			As4, v096
	.byte	W04
	.byte	VOICE	, 39
	.byte	PAN	, c_v-25
	.byte		N06	, Fn3, v056
	.byte	W12
	.byte		N12	, Fn4, v076
	.byte	W18
	.byte		N06	, Fn3, v056
	.byte	W06
	.byte		N12	, Cn4, v076
	.byte	W12
	.byte		N06	, Gs3, v084
	.byte	W06
	.byte			Gn3, v064
	.byte	W06
	.byte			Fn3, v044
	.byte	W06
	.byte			Gn3, v064
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Cn4, v076
	.byte	W06
	.byte			Fn4, v080
	.byte	W06
	.byte			Gn3, v024
	.byte	W12
	.byte		N12	, Gn4, v044
	.byte	W18
	.byte		N06	, Gn3, v024
	.byte	W06
	.byte		N12	, Dn4, v044
	.byte	W12
	.byte		N06	, As3, v056
	.byte	W06
	.byte			An3, v036
	.byte	W06
	.byte			Gn3, v016
	.byte	W06
	.byte			An3, v036
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Dn4, v044
	.byte	W06
	.byte			Gn4, v052
	.byte	W06
	.byte			Gn3, v024
	.byte	W06
	.byte		N12	, Gn4, v044
	.byte	W12
	.byte		N06	, Dn4, v024
	.byte	W06
	.byte		N04	, Gs4, v056
	.byte	W06
	.byte			Dn4, v024
	.byte	W06
	.byte		N06	, Gn3
	.byte	W06
	.byte		N12	, Gn4, v044
	.byte	W12
	.byte		N06	, Dn4, v024
	.byte	W06
	.byte		N04	, Gs4, v056
	.byte	W06
	.byte			Dn4, v024
	.byte	W06
	.byte		N06	, Gn3
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			Gn4, v044
	.byte	W06
	.byte		N04	, Gs4, v056
	.byte	W06
	.byte		N12	, As4, v052
	.byte	W12
	.byte		N06	, Gs4, v044
	.byte	W06
	.byte			Gn4, v040
	.byte	W06
	.byte			Gs4, v052
	.byte	W06
	.byte			Gn4, v044
	.byte	W06
	.byte			Fn4, v040
	.byte	W06
	.byte		N10	, Dn4, v036
	.byte	W12
	.byte		N04	
	.byte	W06
	.byte			Bn3, v024
	.byte	W06
	.byte			Dn4, v036
	.byte	W06
	.byte			Gs3, v024
	.byte	W06
	.byte			Bn3, v032
	.byte	W06
	.byte			Dn4, v036
	.byte	W06
	.byte			Gn4, v040
	.byte	W06
	.byte		N06	, An3, v024
	.byte	W12
	.byte		N12	, An4, v044
	.byte	W18
	.byte		N06	, An3, v024
	.byte	W06
	.byte		N12	, En4, v044
	.byte	W12
	.byte		N06	, Cn4, v056
	.byte	W06
	.byte			Bn3, v036
	.byte	W06
	.byte			An3, v016
	.byte	W06
	.byte			Bn3, v036
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			En4, v044
	.byte	W06
	.byte			An4, v052
	.byte	W06
	.byte			As3, v024
	.byte	W12
	.byte		N12	, As4, v044
	.byte	W18
	.byte		N06	, As3, v024
	.byte	W06
	.byte		N12	, Fn4, v044
	.byte	W12
	.byte		N06	, Cs4, v056
	.byte	W06
	.byte			Cn4, v036
	.byte	W06
	.byte			As3, v016
	.byte	W06
	.byte			Cn4, v036
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			Fn4, v044
	.byte	W06
	.byte			As4, v052
	.byte	W06
	.byte			Bn3, v024
	.byte	W06
	.byte		N12	, Bn4, v044
	.byte	W12
	.byte		N06	, Fs4, v024
	.byte	W06
	.byte		N04	, Cs5, v056
	.byte	W06
	.byte			Fs4, v024
	.byte	W06
	.byte		N06	, Bn3
	.byte	W06
	.byte		N12	, Bn4, v044
	.byte	W12
	.byte		N06	, Fs4, v024
	.byte	W06
	.byte		N04	, Cs5, v056
	.byte	W06
	.byte			Fs4, v024
	.byte	W06
	.byte		N06	, Bn3
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Bn4, v044
	.byte	W06
	.byte		N04	, Cs5, v056
	.byte	W06
	.byte		N12	, Ds5, v052
	.byte	W12
	.byte		N06	, Cs5, v044
	.byte	W06
	.byte			Bn4, v040
	.byte	W06
	.byte			Cs5, v052
	.byte	W06
	.byte			Bn4, v044
	.byte	W06
	.byte			Gs4, v040
	.byte	W06
	.byte		N10	, Fs4, v036
	.byte	W12
	.byte		N04	
	.byte	W06
	.byte			Ds4, v024
	.byte	W06
	.byte			Fs4, v036
	.byte	W06
	.byte			Cs4, v024
	.byte	W06
	.byte			Ds4, v032
	.byte	W06
	.byte			Fs4, v036
	.byte	W06
	.byte			Bn4, v040
	.byte	W06
	.byte		N06	, Fn3, v036
	.byte	W12
	.byte		N12	, Fn4, v056
	.byte	W18
	.byte		N06	, Fn3, v036
	.byte	W06
	.byte		N12	, Cn4, v056
	.byte	W12
	.byte		N06	, Gs3, v064
	.byte	W06
	.byte			Gn3, v044
	.byte	W06
	.byte			Fn3, v024
	.byte	W06
	.byte			Gn3, v044
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Cn4, v056
	.byte	W06
	.byte			Fn4, v060
	.byte	W06
	.byte	PATT	
		.word	song046_11_4
	.byte		N06	, Gn3, v036
	.byte	W06
	.byte		N12	, Gn4, v056
	.byte	W12
	.byte		N06	, Dn4, v036
	.byte	W06
	.byte		N04	, Gs4, v064
	.byte	W06
	.byte			Dn4, v036
	.byte	W06
	.byte		N06	, Gn3
	.byte	W06
	.byte		N12	, Gn4, v056
	.byte	W12
	.byte		N06	, Dn4, v036
	.byte	W06
	.byte		N04	, Gs4, v064
	.byte	W06
	.byte			Dn4, v036
	.byte	W06
	.byte		N06	, Gn3
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			Gn4, v056
	.byte	W06
	.byte		N04	, Gs4, v064
	.byte	W06
	.byte		N12	, As4, v060
	.byte	W12
	.byte		N06	, Gs4, v056
	.byte	W06
	.byte			Gn4, v052
	.byte	W06
	.byte			Gs4, v060
	.byte	W06
	.byte			Gn4, v056
	.byte	W06
	.byte			Fn4, v052
	.byte	W06
	.byte		N10	, Dn4, v044
	.byte	W12
	.byte		N04	
	.byte	W06
	.byte			Bn3, v036
	.byte	W06
	.byte			Dn4, v044
	.byte	W06
	.byte			Gs3, v036
	.byte	W06
	.byte			Bn3, v040
	.byte	W06
	.byte			Dn4, v044
	.byte	W06
	.byte			Gn4, v052
	.byte	W06
	.byte		N06	, An3, v036
	.byte	W12
	.byte		N12	, An4, v056
	.byte	W18
	.byte		N06	, An3, v036
	.byte	W06
	.byte		N12	, En4, v056
	.byte	W12
	.byte		N06	, Cn4, v064
	.byte	W06
	.byte			Bn3, v044
	.byte	W06
	.byte			An3, v024
	.byte	W06
	.byte			Bn3, v044
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			En4, v056
	.byte	W06
	.byte			An4, v060
	.byte	W06
	.byte			As3, v036
	.byte	W12
	.byte		N12	, As4, v056
	.byte	W18
	.byte		N06	, As3, v036
	.byte	W06
	.byte		N12	, Fn4, v056
	.byte	W12
	.byte		N06	, Cs4, v064
	.byte	W06
	.byte			Cn4, v044
	.byte	W06
	.byte			As3, v024
	.byte	W06
	.byte			Cn4, v044
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			Fn4, v056
	.byte	W06
	.byte			As4, v060
	.byte	W06
	.byte			Bn3, v036
	.byte	W06
	.byte		N12	, Bn4, v056
	.byte	W12
	.byte		N06	, Fs4, v036
	.byte	W06
	.byte		N04	, Cs5, v064
	.byte	W06
	.byte			Fs4, v036
	.byte	W06
	.byte		N06	, Bn3
	.byte	W06
	.byte		N12	, Bn4, v056
	.byte	W12
	.byte		N06	, Fs4, v036
	.byte	W06
	.byte		N04	, Cs5, v064
	.byte	W06
	.byte			Fs4, v036
	.byte	W06
	.byte		N06	, Bn3
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Bn4, v056
	.byte	W06
	.byte		N04	, Cs5, v064
	.byte	W06
	.byte		N12	, Ds5, v060
	.byte	W12
	.byte		N06	, Cs5, v056
	.byte	W06
	.byte			Bn4, v052
	.byte	W06
	.byte			Cs5, v060
	.byte	W06
	.byte			Bn4, v056
	.byte	W06
	.byte			Gs4, v052
	.byte	W06
	.byte		N10	, Fs4, v044
	.byte	W12
	.byte		N04	
	.byte	W06
	.byte			Ds4, v036
	.byte	W06
	.byte			Fs4, v044
	.byte	W06
	.byte			Cs4, v036
	.byte	W06
	.byte			Ds4, v040
	.byte	W06
	.byte			Fs4, v044
	.byte	W06
	.byte			Bn4, v052
	.byte	W06
song046_11_5:
	.byte		N04	, Dn4, v076
	.byte	W06
	.byte		N12	, Dn4, v084
	.byte	W12
	.byte		N04	, Dn4, v076
	.byte	W06
	.byte		N10	, As3
	.byte	W12
	.byte		N04	, Dn4
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Gn3, v084
	.byte	W06
	.byte			An3, v076
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			As3, v084
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			Dn4, v076
	.byte	W06
	.byte			Cn4, v084
	.byte	W06
	.byte			As3, v076
	.byte	W06
	.byte	PEND
song046_11_6:
	.byte		N04	, Dn4, v076
	.byte	W06
	.byte		N12	, As3, v084
	.byte	W12
	.byte		N04	, As3, v076
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte		N12	, Dn4, v084
	.byte	W12
	.byte		N10	, Fs4, v096
	.byte	W12
	.byte		N04	, Dn4, v076
	.byte	W06
	.byte		N06	, An4, v084
	.byte	W06
	.byte			Fs4, v080
	.byte	W06
	.byte			Ds4, v076
	.byte	W06
	.byte			Dn4, v072
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song046_11_5
song046_11_7:
	.byte		N04	, Dn4, v076
	.byte	W06
	.byte		N12	, As3, v084
	.byte	W12
	.byte		N04	, As3, v076
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte		N12	, Dn4, v084
	.byte	W12
	.byte		N10	, Fs4, v096
	.byte	W12
	.byte		N04	, Dn4, v076
	.byte	W06
	.byte		N06	, An4, v084
	.byte	W06
	.byte			Fs4, v080
	.byte	W06
	.byte			Ds4, v076
	.byte	W06
	.byte		N05	, Dn4, v072
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song046_11_5
	.byte	PATT	
		.word	song046_11_6
	.byte	PATT	
		.word	song046_11_5
	.byte	PATT	
		.word	song046_11_7
	.byte	GOTO	
		.word	song046_11_4
	.byte	FINE

	@********************** Track  12 **********************@

	.global song046_12
song046_12:	@ 0x0828CBBF
	.byte	KEYSH	, 0
	.byte	VOICE	, 40
	.byte	VOL	, v038
	.byte	PAN	, c_v+35
	.byte	TUNE	, c_v
	.byte	W03
	.byte	W96
	.byte	W96
song046_12_6:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N06	, Gn3, v096
	.byte	W12
	.byte		N12	, Gn4, v116
	.byte	W18
	.byte		N06	, Gn3, v096
	.byte	W06
	.byte		N12	, Dn4, v116
	.byte	W12
	.byte		N06	, As3, v124
	.byte	W06
	.byte			An3, v104
	.byte	W06
	.byte			Gn3, v084
	.byte	W06
	.byte			An3, v104
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Dn4, v116
	.byte	W06
	.byte			Gn4, v120
	.byte	W06
	.byte			Fs3, v096
	.byte	W12
	.byte		N12	, Fs4, v116
	.byte	W18
	.byte		N06	, Fs3, v096
	.byte	W06
	.byte		N12	, Dn4, v116
	.byte	W12
	.byte		N06	, As3, v124
	.byte	W06
	.byte			An3, v104
	.byte	W06
	.byte			Fs3, v084
	.byte	W06
	.byte			An3, v104
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Dn4, v116
	.byte	W06
	.byte			Fs4, v120
	.byte	W06
	.byte			Fn3, v096
	.byte	W12
	.byte		N12	, Fn4, v116
	.byte	W18
	.byte		N06	, Fn3, v096
	.byte	W06
	.byte		N12	, Dn4, v116
	.byte	W12
	.byte		N06	, As3, v124
	.byte	W06
	.byte			An3, v104
	.byte	W06
	.byte			Fn3, v084
	.byte	W06
	.byte			An3, v104
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Dn4, v116
	.byte	W06
	.byte			Fn4, v120
	.byte	W06
	.byte		N12	, As4
	.byte	W12
	.byte		N06	, An4, v116
	.byte	W06
	.byte			Gn4, v112
	.byte	W12
	.byte			As4, v120
	.byte	W06
	.byte			En4, v112
	.byte	W12
	.byte		N04	, Dn4, v100
	.byte	W04
	.byte			En4, v112
	.byte	W04
	.byte			Dn5, v120
	.byte	W04
	.byte			Cn4, v100
	.byte	W04
	.byte			En4, v112
	.byte	W04
	.byte			Cn5, v120
	.byte	W04
	.byte			As3, v100
	.byte	W04
	.byte			En4, v112
	.byte	W04
	.byte			As4, v120
	.byte	W04
	.byte			Cn4, v100
	.byte	W04
	.byte			En4, v112
	.byte	W04
	.byte			Cn5, v120
	.byte	W04
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song046_12_1:
	.byte		N04	, As3, v104
	.byte	W06
	.byte		N12	, As3, v116
	.byte	W12
	.byte		N04	, As3, v104
	.byte	W06
	.byte		N10	, Gn3
	.byte	W12
	.byte		N04	, As3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Dn3, v116
	.byte	W06
	.byte			Ds3, v104
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			Fn3, v116
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			An3, v104
	.byte	W06
	.byte			Gn3, v116
	.byte	W06
	.byte			Fn3, v104
	.byte	W06
	.byte	PEND
	.byte			As3
	.byte	W06
	.byte		N12	, Gn3, v116
	.byte	W12
	.byte		N04	, Gn3, v104
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte		N12	, As3, v116
	.byte	W12
	.byte		N10	, Dn4, v124
	.byte	W12
	.byte		N04	, As3, v104
	.byte	W06
	.byte		N06	, Fs4, v116
	.byte	W06
	.byte			Dn4, v112
	.byte	W06
	.byte			Cn4, v104
	.byte	W06
	.byte			As3, v100
	.byte	W06
	.byte	PATT	
		.word	song046_12_1
	.byte		N04	, As3, v104
	.byte	W06
	.byte		N12	, Gn3, v116
	.byte	W12
	.byte		N04	, Gn3, v104
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte		N12	, As3, v116
	.byte	W12
	.byte		N10	, Dn4, v124
	.byte	W12
	.byte		N04	, As3, v104
	.byte	W06
	.byte		N06	, Fs4, v116
	.byte	W06
	.byte			Dn4, v112
	.byte	W06
	.byte			Cn4, v104
	.byte	W06
	.byte		N05	, As3, v100
	.byte	W06
	.byte	W02
	.byte	VOICE	, 36
	.byte	PAN	, c_v
	.byte	TUNE	, c_v-10
	.byte	W01
	.byte		N01	, Fs3, v044
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
song046_12_2:
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
		.word	song046_12_2
	.byte	PATT	
		.word	song046_12_2
	.byte	W03
	.byte		N01	, Fn3, v044
	.byte	W06
	.byte			An3, v060
	.byte	W06
	.byte			Fn4, v076
	.byte	W24
	.byte			Ds4
	.byte	W24
	.byte			Dn4, v064
	.byte	W06
	.byte			Gn4, v076
	.byte	W18
	.byte			Ds4
	.byte	W09
	.byte	W03
	.byte			Fn3, v044
	.byte	W12
	.byte			Gn3, v056
	.byte	W12
	.byte			An3, v064
	.byte	W12
	.byte			Cn4, v076
	.byte	W12
	.byte			Fn4, v064
	.byte	W12
	.byte			An4, v076
	.byte	W12
	.byte			Fn4, v064
	.byte	W12
	.byte			Dn4, v076
	.byte	W09
	.byte	PATT	
		.word	song046_12_2
	.byte	W02
	.byte	VOICE	, 36
	.byte	PAN	, c_v
	.byte	TUNE	, c_v-10
	.byte	W01
	.byte		N01	, Fs3, v044
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			Gn3, v056
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			An3, v064
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			Dn4, v076
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Fs4, v064
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			An4, v076
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Fs4, v064
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Dn4, v076
	.byte	W06
	.byte			Fs3
	.byte	W03
	.byte	W03
	.byte			Fs3, v044
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			An3, v056
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			Cn4, v064
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			Ds4, v076
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Fs4, v064
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			An4, v076
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Fs4, v064
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Ds4, v076
	.byte	W06
	.byte			Fs3
	.byte	W03
	.byte	W03
	.byte			Gn3, v044
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			An3, v056
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			As3, v064
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			Dn4, v076
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Gn4, v064
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			As4, v076
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			Gn4, v064
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Dn4, v076
	.byte	W06
	.byte			Gn3
	.byte	W03
	.byte	W03
	.byte			Gn3, v044
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			An3, v056
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			As3, v064
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			Dn4, v076
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Fn3, v044
	.byte	W04
	.byte			Gn3, v056
	.byte	W04
	.byte			An3, v076
	.byte	W04
	.byte			Gn3, v044
	.byte	W04
	.byte			An3, v064
	.byte	W04
	.byte			As3, v084
	.byte	W04
	.byte			Gn3, v044
	.byte	W04
	.byte			As3, v056
	.byte	W04
	.byte			Dn4, v064
	.byte	W04
	.byte			Fn4, v076
	.byte	W04
	.byte			Gn4, v084
	.byte	W04
	.byte			As4, v096
	.byte	W01
	.byte	W03
	.byte			Bn4, v084
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			Fs4, v064
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Dn4, v056
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Bn4, v084
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			Fs4, v064
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Dn4, v056
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Bn4, v084
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			Fs4, v064
	.byte	W06
	.byte			Fs3
	.byte	W03
	.byte	W03
	.byte			Gs3, v044
	.byte	W06
	.byte			Bn3, v060
	.byte	W06
	.byte			Fs4, v076
	.byte	W06
	.byte			Gs3, v044
	.byte	W06
	.byte			En3
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte			Dn4, v076
	.byte	W06
	.byte			Gs3, v044
	.byte	W06
	.byte			En3
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte			Bn3, v064
	.byte	W06
	.byte			Gs4, v076
	.byte	W06
	.byte			Gs3, v044
	.byte	W06
	.byte			En3
	.byte	W06
	.byte			Dn4, v076
	.byte	W06
	.byte			Gs4, v044
	.byte	W03
	.byte	W03
	.byte			An4, v084
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			En4, v064
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Cs4, v056
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			An4, v084
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			En4, v064
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Cs4, v056
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			An4, v084
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			En4, v064
	.byte	W06
	.byte			Gn3
	.byte	W03
	.byte	W03
	.byte			As4, v084
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Fn4, v064
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Cs4, v056
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			As4, v084
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			En3, v044
	.byte	W04
	.byte			Gn3, v056
	.byte	W04
	.byte			As3, v076
	.byte	W04
	.byte			Gn3, v044
	.byte	W04
	.byte			As3, v064
	.byte	W04
	.byte			Cs4, v084
	.byte	W04
	.byte			Gn3, v044
	.byte	W04
	.byte			As3, v056
	.byte	W04
	.byte			Cs4, v064
	.byte	W04
	.byte			En4, v076
	.byte	W04
	.byte			Gn4, v084
	.byte	W04
	.byte			As4, v096
	.byte	W01
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	VOICE	, 40
	.byte	PAN	, c_v+35
	.byte	TUNE	, c_v
	.byte		N06	, Cn3, v064
	.byte	W12
	.byte		N12	, Cn4, v084
	.byte	W18
	.byte		N06	, Cn3, v064
	.byte	W06
	.byte		N12	, Gn3, v084
	.byte	W12
	.byte		N06	, Ds3, v096
	.byte	W06
	.byte			Dn3, v076
	.byte	W06
	.byte			Cn3, v056
	.byte	W06
	.byte			Dn3, v076
	.byte	W06
	.byte			Ds3
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			Gn3, v084
	.byte	W06
	.byte			Cn4, v092
	.byte	W06
	.byte			Dn3, v064
	.byte	W12
	.byte		N12	, Dn4, v084
	.byte	W18
	.byte		N06	, Dn3, v064
	.byte	W06
	.byte		N12	, An3, v084
	.byte	W12
	.byte		N06	, Fn3, v096
	.byte	W06
	.byte			En3, v076
	.byte	W06
	.byte			Dn3, v056
	.byte	W06
	.byte			En3, v076
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			An3, v084
	.byte	W06
	.byte			Dn4, v092
	.byte	W06
	.byte			Dn3, v064
	.byte	W06
	.byte		N12	, Dn4, v084
	.byte	W12
	.byte		N06	, Gn3, v064
	.byte	W06
	.byte		N04	, Fn4, v096
	.byte	W06
	.byte			Gn3, v064
	.byte	W06
	.byte		N06	, Dn3
	.byte	W06
	.byte		N12	, Dn4, v084
	.byte	W12
	.byte		N06	, Gn3, v064
	.byte	W06
	.byte		N04	, Fn4, v096
	.byte	W06
	.byte			Gn3, v064
	.byte	W06
	.byte		N06	, Dn3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Dn4, v084
	.byte	W06
	.byte		N04	, Fn4, v096
	.byte	W06
	.byte		N12	, Gn4, v092
	.byte	W12
	.byte		N06	, Fn4, v084
	.byte	W06
	.byte			Dn4, v080
	.byte	W06
	.byte			Fn4, v092
	.byte	W06
	.byte			Dn4, v084
	.byte	W06
	.byte			Bn3, v080
	.byte	W06
	.byte		N10	, Gn3, v076
	.byte	W12
	.byte		N04	
	.byte	W06
	.byte			Fn3, v064
	.byte	W06
	.byte			Gn3, v076
	.byte	W06
	.byte			Dn3, v064
	.byte	W06
	.byte			Fn3, v072
	.byte	W06
	.byte			Gn3, v076
	.byte	W06
	.byte			Dn4, v080
	.byte	W06
	.byte		N06	, En3, v064
	.byte	W12
	.byte		N12	, En4, v084
	.byte	W18
	.byte		N06	, En3, v064
	.byte	W06
	.byte		N12	, Bn3, v084
	.byte	W12
	.byte		N06	, Gn3, v096
	.byte	W06
	.byte			Fs3, v076
	.byte	W06
	.byte			En3, v056
	.byte	W06
	.byte			Fs3, v076
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Bn3, v084
	.byte	W06
	.byte			En4, v092
	.byte	W06
	.byte			Fn3, v064
	.byte	W12
	.byte		N12	, Fn4, v084
	.byte	W18
	.byte		N06	, Fn3, v064
	.byte	W06
	.byte		N12	, Cn4, v084
	.byte	W12
	.byte		N06	, Gs3, v096
	.byte	W06
	.byte			Gn3, v076
	.byte	W06
	.byte			Fn3, v056
	.byte	W06
	.byte			Gn3, v076
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Cn4, v084
	.byte	W06
	.byte			Fn4, v092
	.byte	W06
	.byte			Fs3, v064
	.byte	W06
	.byte		N12	, Fs4, v084
	.byte	W12
	.byte		N06	, Cs4, v064
	.byte	W06
	.byte		N04	, Gs4, v096
	.byte	W06
	.byte			Cs4, v064
	.byte	W06
	.byte		N06	, Fs3
	.byte	W06
	.byte		N12	, Fs4, v084
	.byte	W12
	.byte		N06	, Cs4, v064
	.byte	W06
	.byte		N04	, Gs4, v096
	.byte	W06
	.byte			Cs4, v064
	.byte	W06
	.byte		N06	, Fs3
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Fs4, v084
	.byte	W06
	.byte		N04	, Gs4, v096
	.byte	W06
	.byte		N12	, As4, v092
	.byte	W12
	.byte		N06	, Gs4, v084
	.byte	W06
	.byte			Fs4, v080
	.byte	W06
	.byte			Gs4, v092
	.byte	W06
	.byte			Fs4, v084
	.byte	W06
	.byte			Ds4, v080
	.byte	W06
	.byte		N10	, Cs4, v076
	.byte	W12
	.byte		N04	
	.byte	W06
	.byte			As3, v064
	.byte	W06
	.byte			Cs4, v076
	.byte	W06
	.byte			Gs3, v064
	.byte	W06
	.byte			As3, v072
	.byte	W06
	.byte			Cs4, v076
	.byte	W06
	.byte			Fs4, v080
	.byte	W06
song046_12_3:
	.byte		N04	, As3, v076
	.byte	W06
	.byte		N12	, As3, v084
	.byte	W12
	.byte		N04	, As3, v076
	.byte	W06
	.byte		N10	, Gn3
	.byte	W12
	.byte		N04	, As3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Dn3, v084
	.byte	W06
	.byte			Ds3, v076
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			Fn3, v084
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			An3, v076
	.byte	W06
	.byte			Gn3, v084
	.byte	W06
	.byte			Fn3, v076
	.byte	W06
	.byte	PEND
song046_12_4:
	.byte		N04	, As3, v076
	.byte	W06
	.byte		N12	, Gn3, v084
	.byte	W12
	.byte		N04	, Gn3, v076
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte		N12	, As3, v084
	.byte	W12
	.byte		N10	, Dn4, v096
	.byte	W12
	.byte		N04	, As3, v076
	.byte	W06
	.byte		N06	, Fs4, v084
	.byte	W06
	.byte			Dn4, v080
	.byte	W06
	.byte			Cn4, v076
	.byte	W06
	.byte			As3, v072
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song046_12_3
song046_12_5:
	.byte		N04	, As3, v076
	.byte	W06
	.byte		N12	, Gn3, v084
	.byte	W12
	.byte		N04	, Gn3, v076
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte		N12	, As3, v084
	.byte	W12
	.byte		N10	, Dn4, v096
	.byte	W12
	.byte		N04	, As3, v076
	.byte	W06
	.byte		N06	, Fs4, v084
	.byte	W06
	.byte			Dn4, v080
	.byte	W06
	.byte			Cn4, v076
	.byte	W06
	.byte		N05	, As3, v072
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song046_12_3
	.byte	PATT	
		.word	song046_12_4
	.byte	PATT	
		.word	song046_12_3
	.byte	PATT	
		.word	song046_12_5
	.byte	GOTO	
		.word	song046_12_6
	.byte	FINE

	@********************** Track  13 **********************@

	.global song046_13
song046_13:	@ 0x0828D118
	.byte	KEYSH	, 0
	.byte	VOICE	, 89
	.byte	VOL	, v042
	.byte	W03
	.byte	W96
	.byte	W96
song046_13_1:
	.byte		N03	, Dn5, v104
	.byte	W06
	.byte			Dn5, v064
	.byte	W18
	.byte			Dn5, v104
	.byte	W06
	.byte			Dn5, v064
	.byte	W12
	.byte			Dn5, v096
	.byte	W06
	.byte			Dn5, v104
	.byte	W06
	.byte			Dn5, v064
	.byte	W18
	.byte			Dn5, v104
	.byte	W06
	.byte			Dn5, v064
	.byte	W12
	.byte			Dn5, v096
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song046_13_1
	.byte	PATT	
		.word	song046_13_1
song046_13_2:
	.byte		N03	, Dn5, v104
	.byte	W06
	.byte			Dn5, v064
	.byte	W18
	.byte			Dn5, v104
	.byte	W06
	.byte			Dn5, v064
	.byte	W06
	.byte		N02	, Dn5, v096
	.byte	W04
	.byte		N02	
	.byte	W04
	.byte		N02	
	.byte	W16
	.byte		N03	, Dn5, v104
	.byte	W06
	.byte			Dn5, v064
	.byte	W06
	.byte			Dn5, v104
	.byte	W06
	.byte			Dn5, v064
	.byte	W18
	.byte	PEND
	.byte	PATT	
		.word	song046_13_1
	.byte	PATT	
		.word	song046_13_1
	.byte	PATT	
		.word	song046_13_1
	.byte	PATT	
		.word	song046_13_2
	.byte	PATT	
		.word	song046_13_1
	.byte	PATT	
		.word	song046_13_1
	.byte	PATT	
		.word	song046_13_1
	.byte	PATT	
		.word	song046_13_2
	.byte	PATT	
		.word	song046_13_1
	.byte	PATT	
		.word	song046_13_1
	.byte	PATT	
		.word	song046_13_1
	.byte	PATT	
		.word	song046_13_2
	.byte	PATT	
		.word	song046_13_1
	.byte	PATT	
		.word	song046_13_1
	.byte	PATT	
		.word	song046_13_1
	.byte	PATT	
		.word	song046_13_2
	.byte	PATT	
		.word	song046_13_1
	.byte	PATT	
		.word	song046_13_1
	.byte	PATT	
		.word	song046_13_1
song046_13_3:
	.byte		N03	, Dn5, v104
	.byte	W06
	.byte			Dn5, v064
	.byte	W06
	.byte			Dn5, v104
	.byte	W06
	.byte			Dn5, v124
	.byte	W06
	.byte			Dn5, v084
	.byte	W06
	.byte			Dn5, v064
	.byte	W06
	.byte		N02	, Dn5, v096
	.byte	W04
	.byte		N02	
	.byte	W04
	.byte		N02	
	.byte	W04
	.byte		N03	, Dn5, v104
	.byte	W06
	.byte			Dn5, v064
	.byte	W06
	.byte			Dn5, v104
	.byte	W06
	.byte			Dn5, v124
	.byte	W06
	.byte			Dn5, v084
	.byte	W06
	.byte			Dn5, v064
	.byte	W06
	.byte		N02	, Dn5, v096
	.byte	W04
	.byte		N02	
	.byte	W04
	.byte		N02	
	.byte	W04
	.byte	PEND
	.byte	PATT	
		.word	song046_13_3
	.byte	PATT	
		.word	song046_13_3
song046_13_4:
	.byte		N03	, Dn5, v104
	.byte	W06
	.byte			Dn5, v084
	.byte	W06
	.byte			Dn5, v064
	.byte	W06
	.byte			Dn5, v116
	.byte	W06
	.byte			Dn5, v084
	.byte	W06
	.byte			Dn5, v064
	.byte	W06
	.byte			Dn5, v124
	.byte	W06
	.byte			Dn5, v084
	.byte	W06
	.byte		N02	, Dn5, v096
	.byte	W04
	.byte		N02	
	.byte	W04
	.byte		N02	
	.byte	W04
	.byte		N03	, Dn5, v104
	.byte	W06
	.byte			Dn5, v124
	.byte	W06
	.byte		N02	
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte	PEND
song046_13_5:
	.byte		N03	, Dn5, v104
	.byte	W06
	.byte			Dn5, v064
	.byte	W18
	.byte			Dn5, v104
	.byte	W06
	.byte			Dn5, v064
	.byte	W18
	.byte			Dn5, v104
	.byte	W06
	.byte			Dn5, v064
	.byte	W18
	.byte			Dn5, v104
	.byte	W06
	.byte			Dn5, v064
	.byte	W18
	.byte	PEND
song046_13_6:
	.byte		N03	, Dn5, v104
	.byte	W06
	.byte			Dn5, v064
	.byte	W18
	.byte			Dn5, v104
	.byte	W06
	.byte			Dn5, v064
	.byte	W18
	.byte			Dn5, v104
	.byte	W06
	.byte			Dn5, v064
	.byte	W18
	.byte			Dn5, v104
	.byte	W06
	.byte			Dn5, v064
	.byte	W12
	.byte			Dn5, v096
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song046_13_1
	.byte	PATT	
		.word	song046_13_2
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song046_13_3
	.byte	PATT	
		.word	song046_13_3
	.byte	PATT	
		.word	song046_13_3
	.byte	PATT	
		.word	song046_13_4
	.byte	PATT	
		.word	song046_13_5
	.byte	PATT	
		.word	song046_13_6
	.byte	PATT	
		.word	song046_13_1
	.byte		N03	, Dn5, v104
	.byte	W06
	.byte			Dn5, v064
	.byte	W18
	.byte			Dn5, v104
	.byte	W06
	.byte			Dn5, v064
	.byte	W06
	.byte		N02	, Dn5, v096
	.byte	W04
	.byte		N02	
	.byte	W04
	.byte		N02	
	.byte	W52
	.byte	PATT	
		.word	song046_13_1
	.byte	PATT	
		.word	song046_13_1
	.byte	PATT	
		.word	song046_13_1
	.byte	PATT	
		.word	song046_13_2
	.byte	PATT	
		.word	song046_13_1
	.byte	PATT	
		.word	song046_13_1
	.byte	PATT	
		.word	song046_13_1
	.byte	PATT	
		.word	song046_13_2
	.byte	PATT	
		.word	song046_13_1
	.byte	PATT	
		.word	song046_13_1
	.byte	PATT	
		.word	song046_13_1
	.byte	PATT	
		.word	song046_13_2
	.byte	PATT	
		.word	song046_13_1
	.byte	PATT	
		.word	song046_13_1
	.byte	PATT	
		.word	song046_13_1
	.byte	PATT	
		.word	song046_13_2
	.byte	PATT	
		.word	song046_13_5
	.byte	PATT	
		.word	song046_13_6
	.byte	PATT	
		.word	song046_13_1
	.byte	PATT	
		.word	song046_13_2
	.byte	PATT	
		.word	song046_13_5
	.byte	PATT	
		.word	song046_13_6
	.byte	PATT	
		.word	song046_13_1
	.byte	PATT	
		.word	song046_13_2
	.byte	GOTO	
		.word	song046_13_1
	.byte	FINE

	@********************** Track  14 **********************@

	.global song046_14
song046_14:	@ 0x0828D33E
	.byte	KEYSH	, 0
	.byte	VOICE	, 91
	.byte	VOL	, v042
	.byte	W03
	.byte	W96
	.byte	W96
song046_14_1:
	.byte	W12
	.byte		N11	, Dn5, v104
	.byte	W24
	.byte		N05	
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N05	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song046_14_1
	.byte	PATT	
		.word	song046_14_1
song046_14_2:
	.byte	W12
	.byte		N11	, Dn5, v104
	.byte	W24
	.byte		N05	
	.byte	W12
	.byte		N11	
	.byte	W36
	.byte		N11	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song046_14_1
	.byte	PATT	
		.word	song046_14_1
	.byte	PATT	
		.word	song046_14_1
	.byte	PATT	
		.word	song046_14_2
	.byte	PATT	
		.word	song046_14_1
	.byte	PATT	
		.word	song046_14_1
	.byte	PATT	
		.word	song046_14_1
	.byte	PATT	
		.word	song046_14_2
	.byte	PATT	
		.word	song046_14_1
	.byte	PATT	
		.word	song046_14_1
	.byte	PATT	
		.word	song046_14_1
	.byte	PATT	
		.word	song046_14_2
	.byte	PATT	
		.word	song046_14_1
	.byte	PATT	
		.word	song046_14_1
	.byte	PATT	
		.word	song046_14_1
	.byte	PATT	
		.word	song046_14_2
	.byte	PATT	
		.word	song046_14_1
	.byte	PATT	
		.word	song046_14_1
	.byte	PATT	
		.word	song046_14_1
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song046_14_3:
	.byte	W12
	.byte		N11	, Dn5, v104
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte	PEND
song046_14_4:
	.byte	W12
	.byte		N11	, Dn5, v104
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N05	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song046_14_3
	.byte	PATT	
		.word	song046_14_4
	.byte	W96
	.byte	W96
	.byte	W96
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
		.word	song046_14_3
	.byte	PATT	
		.word	song046_14_4
	.byte	PATT	
		.word	song046_14_3
	.byte	W12
	.byte		N11	, Dn5, v104
	.byte	W24
	.byte		N11	
	.byte	W60
	.byte	PATT	
		.word	song046_14_1
	.byte	PATT	
		.word	song046_14_1
	.byte	PATT	
		.word	song046_14_1
	.byte	PATT	
		.word	song046_14_2
	.byte	PATT	
		.word	song046_14_1
	.byte	PATT	
		.word	song046_14_1
	.byte	PATT	
		.word	song046_14_1
	.byte	PATT	
		.word	song046_14_2
	.byte	PATT	
		.word	song046_14_1
	.byte	PATT	
		.word	song046_14_1
	.byte	PATT	
		.word	song046_14_1
	.byte	PATT	
		.word	song046_14_2
	.byte	PATT	
		.word	song046_14_1
	.byte	PATT	
		.word	song046_14_1
	.byte	PATT	
		.word	song046_14_1
	.byte	PATT	
		.word	song046_14_2
	.byte	PATT	
		.word	song046_14_3
	.byte	PATT	
		.word	song046_14_4
	.byte	PATT	
		.word	song046_14_3
	.byte	PATT	
		.word	song046_14_4
	.byte	PATT	
		.word	song046_14_3
	.byte	PATT	
		.word	song046_14_4
	.byte	PATT	
		.word	song046_14_3
	.byte	PATT	
		.word	song046_14_4
	.byte	GOTO	
		.word	song046_14_1
	.byte	FINE
    
	mAlignWord
	.global song046
song046:	@ 0x0828D490
	.byte	14		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	mAlignWord
	.word	voicegroup018		@ voicegroup/tone

	.word	song046_1		@ track
	.word	song046_2		@ track
	.word	song046_3		@ track
	.word	song046_4		@ track
	.word	song046_5		@ track
	.word	song046_6		@ track
	.word	song046_7		@ track
	.word	song046_8		@ track
	.word	song046_9		@ track
	.word	song046_10		@ track
	.word	song046_11		@ track
	.word	song046_12		@ track
	.word	song046_13		@ track
	.word	song046_14		@ track

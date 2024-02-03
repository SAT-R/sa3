	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song006_1
song006_1:	@ 0x0826762C
	.byte	KEYSH	, 0
song006_1_10:
	.byte	TEMPO	, 80
	.byte	VOICE	, 50
	.byte	VOL	, v066
	.byte	PAN	, c_v
	.byte		N10	, Cn3, v116
	.byte	W12
	.byte		N06	, Cn3, v044
	.byte	W12
	.byte		N10	, Cn3, v116
	.byte	W12
	.byte		N06	, Cn3, v044
	.byte	W06
	.byte	VOICE	, 51
	.byte	W06
	.byte		N11	, Cn3, v116
	.byte	W12
	.byte		N12	
	.byte	W18
	.byte	VOICE	, 50
	.byte	W06
	.byte		N12	
	.byte	W12
song006_1_2:
	.byte	W12
	.byte		N10	, Cn3, v116
	.byte	W12
	.byte		N06	, Cn3, v044
	.byte	W12
	.byte		N11	, Cn3, v116
	.byte	W11
	.byte	VOICE	, 51
	.byte	W01
	.byte		N11	
	.byte	W12
	.byte			Cn3, v044
	.byte	W12
	.byte		N12	, Cn3, v116
	.byte	W24
	.byte	PEND
song006_1_1:
	.byte	VOICE	, 50
	.byte		N10	, Cn3, v116
	.byte	W12
	.byte		N06	, Cn3, v044
	.byte	W12
	.byte		N10	, Cn3, v116
	.byte	W12
	.byte		N06	, Cn3, v044
	.byte	W06
	.byte	VOICE	, 51
	.byte	W06
	.byte		N11	, Cn3, v116
	.byte	W12
	.byte		N12	
	.byte	W18
	.byte	VOICE	, 50
	.byte	W06
	.byte		N12	
	.byte	W12
	.byte	PEND
song006_1_3:
	.byte	W12
	.byte		N10	, Cn3, v116
	.byte	W12
	.byte		N06	, Cn3, v044
	.byte	W12
	.byte		N11	, Cn3, v116
	.byte	W11
	.byte	VOICE	, 51
	.byte	W01
	.byte		N11	
	.byte	W12
	.byte			Cn3, v044
	.byte	W12
	.byte			Fn3, v116
	.byte	W12
	.byte			Fn3, v044
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song006_1_1
	.byte	PATT	
		.word	song006_1_2
	.byte	PATT	
		.word	song006_1_1
	.byte	PATT	
		.word	song006_1_3
song006_1_6:
	.byte	VOICE	, 50
	.byte		N10	, Gs2, v084
	.byte	W12
	.byte		N06	, Gs2, v024
	.byte	W12
	.byte		N10	, Gs2, v084
	.byte	W12
	.byte		N06	, Gs2, v024
	.byte	W12
	.byte		N11	, As2, v084
	.byte	W12
	.byte		N12	
	.byte	W24
	.byte			Gs2
	.byte	W12
	.byte	PEND
song006_1_4:
	.byte	W12
	.byte		N10	, Gs2, v084
	.byte	W12
	.byte		N06	, Gs2, v024
	.byte	W12
	.byte		N11	, Gs2, v084
	.byte	W12
	.byte			As2
	.byte	W12
	.byte			As2, v024
	.byte	W12
	.byte		N12	, As2, v084
	.byte	W24
	.byte	PEND
song006_1_5:
	.byte		N10	, Gs2, v096
	.byte	W12
	.byte		N06	, Gs2, v024
	.byte	W12
	.byte		N10	, Gs2, v096
	.byte	W12
	.byte		N06	, Gs2, v024
	.byte	W12
	.byte		N11	, As2, v096
	.byte	W12
	.byte		N12	
	.byte	W24
	.byte			Gs2
	.byte	W12
	.byte	PEND
song006_1_7:
	.byte	W12
	.byte		N10	, Gs2, v096
	.byte	W12
	.byte		N06	, Gs2, v024
	.byte	W12
	.byte		N11	, Gs2, v096
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte			As2, v056
	.byte	W12
	.byte		N12	, Cn3, v096
	.byte	W12
	.byte		N11	, As2, v076
	.byte	W12
	.byte	PEND
song006_1_8:
	.byte		N10	, Gs2, v084
	.byte	W12
	.byte		N06	, Gs2, v024
	.byte	W12
	.byte		N10	, Gs2, v084
	.byte	W12
	.byte		N06	, Gs2, v024
	.byte	W12
	.byte		N11	, As2, v084
	.byte	W12
	.byte		N12	
	.byte	W24
	.byte			Gs2
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song006_1_4
	.byte	PATT	
		.word	song006_1_5
song006_1_9:
	.byte	W12
	.byte		N10	, Gs2, v096
	.byte	W12
	.byte		N06	, Gs2, v024
	.byte	W12
	.byte		N11	, Gs2, v096
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte			As2, v056
	.byte	W12
	.byte		N06	, Cn3, v096
	.byte	W11
	.byte	VOICE	, 51
	.byte	W01
	.byte		N06	, Gn3, v100
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song006_1_6
	.byte	PATT	
		.word	song006_1_4
	.byte	PATT	
		.word	song006_1_5
	.byte	PATT	
		.word	song006_1_7
	.byte	PATT	
		.word	song006_1_8
	.byte	PATT	
		.word	song006_1_4
	.byte	PATT	
		.word	song006_1_5
	.byte	PATT	
		.word	song006_1_9
	.byte	GOTO	
		.word	song006_1_10
	.byte	FINE

	@********************** Track  2 **********************@

	.global song006_2
song006_2:	@ 0x08267794
	.byte	KEYSH	, 0
song006_2_2:
	.byte	VOICE	, 7
	.byte	VOL	, v046
	.byte	PAN	, c_v
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song006_2_1:
	.byte		N03	, Bn3, v084
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			Dn3, v044
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			Fs3, v064
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			Bn2, v036
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			Bn3, v084
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			Dn3, v044
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			Fs3, v064
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			Bn2, v036
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song006_2_1
	.byte	PATT	
		.word	song006_2_1
	.byte	PATT	
		.word	song006_2_1
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
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
		.word	song006_2_2
	.byte	FINE

	@********************** Track  3 **********************@

	.global song006_3
song006_3:	@ 0x082677EF
	.byte	KEYSH	, 0
song006_3_2:
	.byte	VOICE	, 6
	.byte	VOL	, v040
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
	.byte	W01
	.byte		N05	, Dn4, v088
	.byte	W03
	.byte		N20	, Ds4, v100
	.byte	W20
	.byte		N23	, Dn4, v096
	.byte	W24
	.byte		N24	, As3
	.byte	W24
	.byte		N72	, Gn3, v080
	.byte	W24
song006_3_1:
	.byte	W56
	.byte	W03
	.byte		N23	, Fn3, v096
	.byte	W24
	.byte		N13	, Gn3, v076
	.byte	W13
	.byte	PEND
	.byte		N80	, Cn4, v096
	.byte	W80
	.byte	W03
	.byte		N84	, As3
	.byte	W13
	.byte	W92
	.byte	W03
	.byte		N05	, Dn4
	.byte	W01
	.byte	W02
	.byte		N21	, Ds4, v100
	.byte	W22
	.byte		N23	, Dn4, v096
	.byte	W24
	.byte		N24	, As3
	.byte	W24
	.byte		N72	, Gn3, v080
	.byte	W24
	.byte	PATT	
		.word	song006_3_1
	.byte		N76	, Cn4, v092
	.byte	W84
	.byte		N06	, Cs4, v088
	.byte	W04
	.byte		TIE	, Dn4, v104
	.byte	W08
	.byte	W92
	.byte	W02
	.byte		EOT	
	.byte	W02
	.byte	GOTO	
		.word	song006_3_2
	.byte	FINE

	@********************** Track  4 **********************@

	.global song006_4
song006_4:	@ 0x0826785E
	.byte	KEYSH	, 0
song006_4_4:
	.byte	VOICE	, 4
	.byte	VOL	, v046
	.byte	PAN	, c_v-30
	.byte		N09	, Gn4, v076
	.byte	W12
	.byte			Gn4, v036
	.byte	W12
	.byte			Gn5, v084
	.byte	W12
	.byte			Fn5, v076
	.byte	W12
	.byte			Fn5, v024
	.byte	W12
	.byte			Gn5, v084
	.byte	W12
	.byte			Gn5, v036
	.byte	W12
	.byte			Gn5, v024
	.byte	W12
	.byte	W96
song006_4_2:
	.byte		N09	, Gn4, v076
	.byte	W12
	.byte			Gn4, v036
	.byte	W12
	.byte			Gn5, v084
	.byte	W12
	.byte			Fn5, v076
	.byte	W12
	.byte			Fn5, v024
	.byte	W12
	.byte			Fn5, v084
	.byte	W12
	.byte			Fn5, v036
	.byte	W12
	.byte			Fn5, v024
	.byte	W12
	.byte	PEND
	.byte	W96
song006_4_1:
	.byte		N09	, Gn4, v076
	.byte	W12
	.byte			Gn4, v036
	.byte	W12
	.byte			Gn5, v084
	.byte	W12
	.byte			Fn5, v076
	.byte	W12
	.byte			Fn5, v024
	.byte	W12
	.byte			Gn5, v084
	.byte	W12
	.byte			Gn5, v036
	.byte	W12
	.byte			Gn5, v024
	.byte	W12
	.byte	PEND
	.byte	W96
	.byte			Gn4, v076
	.byte	W12
	.byte			Gn4, v036
	.byte	W12
	.byte			Gn5, v084
	.byte	W12
	.byte			Fn5, v076
	.byte	W12
	.byte			Fn5, v024
	.byte	W12
	.byte			As5, v084
	.byte	W12
	.byte			As5, v036
	.byte	W12
	.byte			As5, v024
	.byte	W12
	.byte	W96
	.byte			Gn4, v076
	.byte	W12
	.byte			Gn4, v024
	.byte	W12
	.byte			Gn5, v084
	.byte	W12
	.byte			Fn5, v076
	.byte	W12
	.byte			Fn5, v036
	.byte	W12
	.byte			Fn5, v024
	.byte	W36
	.byte	W96
	.byte			Dn5, v084
	.byte	W12
	.byte			Dn5, v076
	.byte	W12
	.byte			Dn5, v024
	.byte	W12
	.byte			Gn4, v084
	.byte	W12
	.byte			Gn4, v036
	.byte	W12
	.byte			Gn4, v024
	.byte	W36
	.byte	W96
	.byte	PATT	
		.word	song006_4_1
	.byte	W96
	.byte	W12
	.byte		N09	, Fn5, v084
	.byte	W12
	.byte			Fn5, v036
	.byte	W12
	.byte			Fn5, v024
	.byte	W12
	.byte			Dn5, v084
	.byte	W12
	.byte			Dn5, v076
	.byte	W12
	.byte			Dn5, v024
	.byte	W12
	.byte			As5, v084
	.byte	W12
song006_4_3:
	.byte		N09	, As5, v036
	.byte	W12
	.byte			As5, v024
	.byte	W84
	.byte	PEND
	.byte	PATT	
		.word	song006_4_1
	.byte	W96
	.byte	PATT	
		.word	song006_4_2
	.byte	W96
	.byte	PATT	
		.word	song006_4_1
	.byte	W96
	.byte		N09	, Gn4, v076
	.byte	W12
	.byte			Gn4, v036
	.byte	W12
	.byte			Gn5, v084
	.byte	W12
	.byte			Fn5, v076
	.byte	W12
	.byte			Fn5, v036
	.byte	W12
	.byte			Fn5, v024
	.byte	W24
	.byte			As5, v084
	.byte	W12
	.byte	PATT	
		.word	song006_4_3
	.byte	GOTO	
		.word	song006_4_4
	.byte	FINE

	@********************** Track  5 **********************@

	.global song006_5
song006_5:	@ 0x0826794D
	.byte	KEYSH	, 0
song006_5_4:
	.byte	W03
	.byte	VOICE	, 5
	.byte	VOL	, v046
	.byte	PAN	, c_v+30
	.byte		N09	, Gn3, v076
	.byte	W12
	.byte			Gn3, v036
	.byte	W12
	.byte			Gn4, v084
	.byte	W12
	.byte			Fn4, v076
	.byte	W12
	.byte			Fn4, v024
	.byte	W12
	.byte			Gn4, v084
	.byte	W12
	.byte			Gn4, v036
	.byte	W12
	.byte			Gn4, v024
	.byte	W09
	.byte	W96
song006_5_2:
	.byte	W03
	.byte		N09	, Gn3, v076
	.byte	W12
	.byte			Gn3, v036
	.byte	W12
	.byte			Gn4, v084
	.byte	W12
	.byte			Fn4, v076
	.byte	W12
	.byte			Fn4, v024
	.byte	W12
	.byte			Fn4, v084
	.byte	W12
	.byte			Fn4, v036
	.byte	W12
	.byte			Fn4, v024
	.byte	W09
	.byte	PEND
	.byte	W96
song006_5_1:
	.byte	W03
	.byte		N09	, Gn3, v076
	.byte	W12
	.byte			Gn3, v036
	.byte	W12
	.byte			Gn4, v084
	.byte	W12
	.byte			Fn4, v076
	.byte	W12
	.byte			Fn4, v024
	.byte	W12
	.byte			Gn4, v084
	.byte	W12
	.byte			Gn4, v036
	.byte	W12
	.byte			Gn4, v024
	.byte	W09
	.byte	PEND
	.byte	W96
	.byte	W03
	.byte			Gn3, v076
	.byte	W12
	.byte			Gn3, v036
	.byte	W12
	.byte			Gn4, v084
	.byte	W12
	.byte			Fn4, v076
	.byte	W12
	.byte			Fn4, v024
	.byte	W12
	.byte			As4, v084
	.byte	W12
	.byte			As4, v036
	.byte	W12
	.byte			As4, v024
	.byte	W09
	.byte	W96
	.byte	W03
	.byte			Gn3, v076
	.byte	W12
	.byte			Gn3, v024
	.byte	W12
	.byte			Gn4, v084
	.byte	W12
	.byte			Fn4, v076
	.byte	W12
	.byte			Fn4, v036
	.byte	W12
	.byte			Fn4, v024
	.byte	W32
	.byte	W01
	.byte	W96
	.byte	W03
	.byte			Dn4, v084
	.byte	W12
	.byte			Dn4, v076
	.byte	W12
	.byte			Dn4, v024
	.byte	W12
	.byte			Gn3, v084
	.byte	W12
	.byte			Gn3, v036
	.byte	W12
	.byte			Gn3, v024
	.byte	W32
	.byte	W01
	.byte	W96
	.byte	PATT	
		.word	song006_5_1
	.byte	W96
	.byte	W15
	.byte		N09	, Fn4, v084
	.byte	W12
	.byte			Fn4, v036
	.byte	W12
	.byte			Fn4, v024
	.byte	W12
	.byte			Dn4, v084
	.byte	W12
	.byte		N09	
	.byte	W12
	.byte			Dn4, v024
	.byte	W12
	.byte			As4, v084
	.byte	W09
song006_5_3:
	.byte	W03
	.byte		N09	, As4, v036
	.byte	W12
	.byte			As4, v024
	.byte	W80
	.byte	W01
	.byte	PEND
	.byte	PATT	
		.word	song006_5_1
	.byte	W96
	.byte	PATT	
		.word	song006_5_2
	.byte	W96
	.byte	PATT	
		.word	song006_5_1
	.byte	W96
	.byte	W03
	.byte		N09	, Gn3, v076
	.byte	W12
	.byte			Gn3, v036
	.byte	W12
	.byte			Gn4, v084
	.byte	W12
	.byte			Fn4, v076
	.byte	W12
	.byte			Fn4, v036
	.byte	W12
	.byte			Fn4, v024
	.byte	W24
	.byte			As4, v084
	.byte	W09
	.byte	PATT	
		.word	song006_5_3
	.byte	GOTO	
		.word	song006_5_4
	.byte	FINE

	@********************** Track  6 **********************@

	.global song006_6
song006_6:	@ 0x08267A46
	.byte	KEYSH	, 0
song006_6_3:
	.byte	VOICE	, 49
	.byte	VOL	, v073
	.byte		N12	, Gs1, v112
	.byte	W12
	.byte		N06	, Gs2, v104
	.byte	W12
	.byte			Gs2, v056
	.byte	W12
	.byte			Gs1, v104
	.byte	W12
	.byte			Gs1, v056
	.byte	W12
	.byte			Gs2, v104
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte			Gs1, v056
	.byte	W12
song006_6_2:
	.byte		N12	, Gs1, v112
	.byte	W12
	.byte		N06	, Gs2, v104
	.byte	W12
	.byte			Gs2, v056
	.byte	W12
	.byte			Gs1, v104
	.byte	W12
	.byte			Gs1, v056
	.byte	W12
	.byte			Gs2, v104
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte			Gs1, v056
	.byte	W12
	.byte	PEND
song006_6_1:
	.byte		N12	, As1, v112
	.byte	W12
	.byte		N06	, As2, v104
	.byte	W12
	.byte			As2, v056
	.byte	W12
	.byte		N12	, As1, v112
	.byte	W12
	.byte		N06	, As2, v104
	.byte	W12
	.byte			As2, v056
	.byte	W12
	.byte		N12	, As1, v112
	.byte	W12
	.byte			As2, v104
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song006_6_1
	.byte	PATT	
		.word	song006_6_2
	.byte	PATT	
		.word	song006_6_2
	.byte	PATT	
		.word	song006_6_1
	.byte	PATT	
		.word	song006_6_1
	.byte	PATT	
		.word	song006_6_2
	.byte	PATT	
		.word	song006_6_2
	.byte	PATT	
		.word	song006_6_1
	.byte	PATT	
		.word	song006_6_1
	.byte	PATT	
		.word	song006_6_2
	.byte	PATT	
		.word	song006_6_2
	.byte	PATT	
		.word	song006_6_1
	.byte	PATT	
		.word	song006_6_1
	.byte	PATT	
		.word	song006_6_2
	.byte	PATT	
		.word	song006_6_2
	.byte	PATT	
		.word	song006_6_1
	.byte	PATT	
		.word	song006_6_1
	.byte	PATT	
		.word	song006_6_2
	.byte	PATT	
		.word	song006_6_2
	.byte	PATT	
		.word	song006_6_1
	.byte	PATT	
		.word	song006_6_1
	.byte	GOTO	
		.word	song006_6_3
	.byte	FINE

	@********************** Track  7 **********************@

	.global song006_7
song006_7:	@ 0x08267B0C
	.byte	KEYSH	, 0
song006_7_3:
	.byte	VOICE	, 89
	.byte	VOL	, v046
	.byte	W12
	.byte		N04	, Dn6, v084
	.byte	W12
	.byte			Dn6, v056
	.byte	W12
	.byte		N04	
	.byte	W24
	.byte			Dn6, v084
	.byte	W12
	.byte			Dn6, v056
	.byte	W12
	.byte		N04	
	.byte	W12
song006_7_1:
	.byte	W12
	.byte		N04	, Dn6, v084
	.byte	W12
	.byte			Dn6, v056
	.byte	W12
	.byte		N04	
	.byte	W24
	.byte			Dn6, v084
	.byte	W12
	.byte			Bn5, v056
	.byte	W06
	.byte			Ds6, v084
	.byte	W06
	.byte			Bn5, v076
	.byte	W06
	.byte			Fn5, v064
	.byte	W06
	.byte	PEND
song006_7_2:
	.byte	W12
	.byte		N04	, Dn6, v084
	.byte	W12
	.byte			Dn6, v056
	.byte	W12
	.byte		N04	
	.byte	W24
	.byte			Dn6, v084
	.byte	W12
	.byte			Dn6, v056
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song006_7_1
	.byte	PATT	
		.word	song006_7_2
	.byte	PATT	
		.word	song006_7_1
	.byte	PATT	
		.word	song006_7_2
	.byte	PATT	
		.word	song006_7_1
	.byte	PATT	
		.word	song006_7_2
	.byte	PATT	
		.word	song006_7_1
	.byte	PATT	
		.word	song006_7_2
	.byte	PATT	
		.word	song006_7_1
	.byte	PATT	
		.word	song006_7_2
	.byte	PATT	
		.word	song006_7_1
	.byte	PATT	
		.word	song006_7_2
	.byte	PATT	
		.word	song006_7_1
	.byte	PATT	
		.word	song006_7_2
	.byte	PATT	
		.word	song006_7_1
	.byte	PATT	
		.word	song006_7_2
	.byte	PATT	
		.word	song006_7_1
	.byte	PATT	
		.word	song006_7_2
	.byte	PATT	
		.word	song006_7_1
	.byte	PATT	
		.word	song006_7_2
	.byte	PATT	
		.word	song006_7_1
	.byte	GOTO	
		.word	song006_7_3
	.byte	FINE

	@********************** Track  8 **********************@

	.global song006_8
song006_8:	@ 0x08267BC0
	.byte	KEYSH	, 0
song006_8_2:
	.byte	VOICE	, 91
	.byte	VOL	, v026
	.byte		N12	, En5, v064
	.byte	W48
	.byte		N12	
	.byte	W48
song006_8_1:
	.byte		N12	, En5, v064
	.byte	W48
	.byte		N12	
	.byte	W48
	.byte	PEND
	.byte	PATT	
		.word	song006_8_1
	.byte	PATT	
		.word	song006_8_1
	.byte	PATT	
		.word	song006_8_1
	.byte	PATT	
		.word	song006_8_1
	.byte	PATT	
		.word	song006_8_1
	.byte	PATT	
		.word	song006_8_1
	.byte	PATT	
		.word	song006_8_1
	.byte	PATT	
		.word	song006_8_1
	.byte	PATT	
		.word	song006_8_1
	.byte	PATT	
		.word	song006_8_1
	.byte	PATT	
		.word	song006_8_1
	.byte	PATT	
		.word	song006_8_1
	.byte	PATT	
		.word	song006_8_1
	.byte	PATT	
		.word	song006_8_1
	.byte	PATT	
		.word	song006_8_1
	.byte	PATT	
		.word	song006_8_1
	.byte	PATT	
		.word	song006_8_1
	.byte	PATT	
		.word	song006_8_1
	.byte	PATT	
		.word	song006_8_1
	.byte	PATT	
		.word	song006_8_1
	.byte	PATT	
		.word	song006_8_1
	.byte	PATT	
		.word	song006_8_1
	.byte	GOTO	
		.word	song006_8_2
	.byte	FINE

	.align 2
	.global song006
song006:	@ 0x08267C48
	.byte	8		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	.word	voicegroup016		@ voicegroup/tone

	.word	song006_1		@ track
	.word	song006_2		@ track
	.word	song006_3		@ track
	.word	song006_4		@ track
	.word	song006_5		@ track
	.word	song006_6		@ track
	.word	song006_7		@ track
	.word	song006_8		@ track

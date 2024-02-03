	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song059_1
song059_1:	@ 0x08298EE0
	.byte	KEYSH	, 0
	.byte	TEMPO	, 90
	.byte	VOICE	, 126
	.byte	VOL	, v047
	.byte	PAN	, c_v-19
	.byte	W03
	.byte	TEMPO	, 90
	.byte	VOICE	, 126
	.byte	VOL	, v069
	.byte	PAN	, c_v
	.byte	BENDR	, 127
	.byte		N68	, Cs2, v127
	.byte	W84
	.byte		N24	, Ds1, v036
	.byte	W12
song059_1_3:
	.byte	W12
	.byte		N24	, Dn1, v036
	.byte	W36
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte		N12	, Gn1, v127
	.byte	W12
	.byte			Fs1
	.byte	W12
	.byte	PEND
song059_1_4:
	.byte		N24	, Ds1, v036
	.byte		N80	, Cs2, v056
	.byte	W36
	.byte		N24	, Ds1, v036
	.byte	W48
	.byte		N24	
	.byte		N72	, Cs2, v056
	.byte	W12
	.byte	PEND
song059_1_5:
	.byte	W12
	.byte		N24	, Dn1, v036
	.byte	W36
	.byte		N12	
	.byte	W24
	.byte			Gs1, v127
	.byte	W12
	.byte			Fn1
	.byte	W12
	.byte	PEND
song059_1_6:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song059_1_1:
	.byte	VOICE	, 126
	.byte	VOL	, v069
	.byte	PAN	, c_v
	.byte	BENDR	, 127
	.byte	W84
	.byte		N24	, Ds1, v036
	.byte	W12
	.byte	PEND
song059_1_2:
	.byte	W12
	.byte		N24	, Dn1, v036
	.byte	W24
	.byte		N12	, Gs1, v127
	.byte	W12
	.byte			Dn1, v036
	.byte	W12
	.byte			Gs1, v127
	.byte	W12
	.byte			Dn1, v036
	.byte		N12	, Gn1, v127
	.byte	W12
	.byte			Fs1
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song059_1_1
	.byte	PATT	
		.word	song059_1_2
	.byte	PATT	
		.word	song059_1_1
	.byte	PATT	
		.word	song059_1_3
	.byte	PATT	
		.word	song059_1_4
	.byte	PATT	
		.word	song059_1_5
	.byte	GOTO	
		.word	song059_1_6
	.byte	FINE

	@********************** Track  2 **********************@

	.global song059_2
song059_2:	@ 0x08298F84
	.byte	KEYSH	, 0
	.byte	VOICE	, 127
	.byte	VOL	, v075
	.byte	PAN	, c_v-4
	.byte	W03
song059_2_4:
	.byte		N12	, Gs3, v127
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			Gs3
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			Gs3
	.byte	W12
	.byte	PEND
song059_2_6:
	.byte	W12
	.byte		N12	, Gs3, v127
	.byte	W12
	.byte			Gn7
	.byte	W24
	.byte			Gs3
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			Gs3
	.byte	W24
	.byte	PEND
song059_2_7:
	.byte		N11	, Gs3, v127
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N23	, Gs3
	.byte	W24
	.byte		N11	, Gn7
	.byte	W12
	.byte		N22	, Gs3
	.byte	W24
	.byte	PEND
song059_2_8:
	.byte		N12	, Gn7, v127
	.byte	W12
	.byte			Gs3
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			Gs3
	.byte	W12
	.byte		N11	, Gn7
	.byte	W12
	.byte		N06	
	.byte	W06
	.byte		N05	, Dn4
	.byte	W06
	.byte		N10	, Gs3
	.byte	W12
	.byte		N05	, Ds4
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte	PEND
song059_2_1:
	.byte		N12	, Gn7, v127
	.byte	W12
	.byte		N11	, Gs7
	.byte	W11
	.byte		N12	, Gs3
	.byte	W13
	.byte		N06	, An3
	.byte	W06
	.byte		N05	, As3
	.byte	W06
	.byte		N06	, Gn7
	.byte	W06
	.byte		N05	, Cn4
	.byte	W06
	.byte		N06	, Gn7
	.byte	W06
	.byte		N05	, Dn4
	.byte	W06
	.byte		N10	, Gs3
	.byte	W12
	.byte		N05	, Ds4
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte	PEND
song059_2_2:
	.byte		N12	, Gn7, v127
	.byte	W12
	.byte		N11	, Gs7
	.byte	W11
	.byte		N12	, Gs3
	.byte	W13
	.byte		N06	, An3
	.byte	W06
	.byte		N05	, As3
	.byte	W06
	.byte		N06	, Gn7
	.byte	W06
	.byte		N05	, Cn4
	.byte	W06
	.byte		N06	, Gn7
	.byte	W06
	.byte		N05	, Dn4
	.byte	W06
	.byte		N11	, Gs3
	.byte	W12
	.byte		N05	, Fn4
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song059_2_1
song059_2_3:
	.byte		N11	, Gs7, v127
	.byte	W12
	.byte		N08	, Gs3
	.byte	W08
	.byte		N03	, An3
	.byte	W04
	.byte		N12	, As3
	.byte	W12
	.byte		N06	, Gn7
	.byte	W06
	.byte		N05	, Cn4
	.byte	W06
	.byte		N06	, Gn7
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N12	, Ds4
	.byte	W12
	.byte		N11	, En4
	.byte	W11
	.byte		N06	, Gn7
	.byte	W07
	.byte		N05	, Fs4
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song059_2_1
	.byte	PATT	
		.word	song059_2_2
	.byte	PATT	
		.word	song059_2_1
	.byte	PATT	
		.word	song059_2_3
	.byte	PATT	
		.word	song059_2_1
	.byte	PATT	
		.word	song059_2_2
	.byte	PATT	
		.word	song059_2_1
	.byte	PATT	
		.word	song059_2_3
	.byte	PATT	
		.word	song059_2_1
	.byte	PATT	
		.word	song059_2_2
	.byte	PATT	
		.word	song059_2_1
	.byte	PATT	
		.word	song059_2_3
	.byte	PATT	
		.word	song059_2_4
song059_2_5:
	.byte	W12
	.byte		N12	, Gs3, v127
	.byte	W12
	.byte			Gn7
	.byte	W24
	.byte		N12	
	.byte	W48
	.byte	PEND
	.byte	PATT	
		.word	song059_2_4
	.byte	PATT	
		.word	song059_2_5
	.byte	PATT	
		.word	song059_2_4
	.byte	PATT	
		.word	song059_2_6
	.byte	PATT	
		.word	song059_2_7
	.byte	PATT	
		.word	song059_2_8
	.byte	GOTO	
		.word	song059_2_1
	.byte	FINE

	@********************** Track  3 **********************@

	.global song059_3
song059_3:	@ 0x082990BE
	.byte	KEYSH	, 0
	.byte	VOICE	, 60
	.byte	VOL	, v047
	.byte	PAN	, c_v-19
	.byte	W03
song059_3_1:
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
	.byte	PATT	
		.word	song059_3_1
	.byte	PATT	
		.word	song059_3_1
	.byte	PATT	
		.word	song059_3_1
song059_3_2:
	.byte	PATT	
		.word	song059_3_1
	.byte	PATT	
		.word	song059_3_1
	.byte	PATT	
		.word	song059_3_1
	.byte	PATT	
		.word	song059_3_1
	.byte	PATT	
		.word	song059_3_1
	.byte	PATT	
		.word	song059_3_1
	.byte	PATT	
		.word	song059_3_1
	.byte	PATT	
		.word	song059_3_1
	.byte	PATT	
		.word	song059_3_1
	.byte	PATT	
		.word	song059_3_1
	.byte	PATT	
		.word	song059_3_1
	.byte	PATT	
		.word	song059_3_1
	.byte	PATT	
		.word	song059_3_1
	.byte	PATT	
		.word	song059_3_1
	.byte	PATT	
		.word	song059_3_1
	.byte	PATT	
		.word	song059_3_1
	.byte	PATT	
		.word	song059_3_1
	.byte	PATT	
		.word	song059_3_1
	.byte	PATT	
		.word	song059_3_1
	.byte	PATT	
		.word	song059_3_1
	.byte	PATT	
		.word	song059_3_1
	.byte	PATT	
		.word	song059_3_1
	.byte	PATT	
		.word	song059_3_1
	.byte	PATT	
		.word	song059_3_1
	.byte	GOTO	
		.word	song059_3_2
	.byte	FINE

	@********************** Track  4 **********************@

	.global song059_4
song059_4:	@ 0x08299175
	.byte	KEYSH	, 0
	.byte	VOICE	, 61
	.byte	VOL	, v066
	.byte	PAN	, c_v-19
	.byte	W03
song059_4_1:
	.byte	W12
	.byte		N12	, Gn7, v068
	.byte	W48
	.byte		N12	
	.byte	W36
	.byte	PEND
	.byte	PATT	
		.word	song059_4_1
	.byte	PATT	
		.word	song059_4_1
song059_4_2:
	.byte	W12
	.byte		N12	, Gn7, v068
	.byte	W48
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte	PEND
song059_4_5:
	.byte	PATT	
		.word	song059_4_1
	.byte	PATT	
		.word	song059_4_1
	.byte	PATT	
		.word	song059_4_1
	.byte	PATT	
		.word	song059_4_2
	.byte	PATT	
		.word	song059_4_1
	.byte	PATT	
		.word	song059_4_1
song059_4_3:
	.byte	W12
	.byte		N12	, Gn7, v068
	.byte	W48
	.byte		N11	
	.byte	W36
	.byte	PEND
song059_4_4:
	.byte	W12
	.byte		N12	, Gn7, v068
	.byte	W24
	.byte		N12	
	.byte	W48
	.byte		N12	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song059_4_1
	.byte	PATT	
		.word	song059_4_1
	.byte	PATT	
		.word	song059_4_1
	.byte	PATT	
		.word	song059_4_2
	.byte	PATT	
		.word	song059_4_1
	.byte	PATT	
		.word	song059_4_1
	.byte	PATT	
		.word	song059_4_3
	.byte	PATT	
		.word	song059_4_4
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song059_4_1
	.byte	PATT	
		.word	song059_4_1
	.byte	PATT	
		.word	song059_4_1
	.byte	PATT	
		.word	song059_4_2
	.byte	GOTO	
		.word	song059_4_5
	.byte	FINE

	@********************** Track  5 **********************@

	.global song059_5
song059_5:	@ 0x08299210
	.byte	KEYSH	, 0
	.byte	VOICE	, 46
	.byte	VOL	, v069
	.byte	PAN	, c_v-6
	.byte	W03
song059_5_9:
	.byte		N06	, Fn1, v104
	.byte	W12
	.byte		N07	, Fn1, v112
	.byte	W12
	.byte			As1
	.byte	W12
	.byte		N12	, Cn2, v104
	.byte	W24
	.byte			Cn2, v112
	.byte	W24
	.byte		N15	, Cs2, v116
	.byte	W12
	.byte	PEND
song059_5_10:
	.byte	W12
	.byte		N17	, Cs2, v100
	.byte	W36
	.byte		N13	, Ds2
	.byte	W24
	.byte		N12	, Fn2
	.byte	W24
	.byte	PEND
song059_5_11:
	.byte		N18	, Cs2, v100
	.byte	W36
	.byte		N17	, Cn2
	.byte	W36
	.byte		N32	, Ds2
	.byte	W24
	.byte	PEND
song059_5_12:
	.byte	W14
	.byte		N13	, Ds2, v100
	.byte	W12
	.byte		N06	, Cs2, v104
	.byte	W12
	.byte		N11	
	.byte	W10
	.byte		N07	, Cn2, v112
	.byte	W14
	.byte		N11	, Cn2, v108
	.byte	W11
	.byte		N07	, As1, v104
	.byte	W12
	.byte		N13	, As1, v112
	.byte	W11
	.byte	PEND
song059_5_1:
	.byte	W01
	.byte		N24	, Gs1, v112
	.byte	W24
	.byte		N12	, Cn2
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Ds2
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Cn2
	.byte	W12
	.byte		N28	, Gs1
	.byte	W11
	.byte	PEND
song059_5_2:
	.byte	W13
	.byte		N12	, Gs2, v112
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte		N18	, Gs1
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte			Cn2
	.byte	W12
	.byte			Cs2
	.byte	W11
	.byte	PEND
song059_5_3:
	.byte	W01
	.byte		N23	, Fs1, v112
	.byte	W24
	.byte		N12	, As1
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Ds2
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Fs1
	.byte	W12
	.byte		N24	, Fs2
	.byte	W11
	.byte	PEND
song059_5_4:
	.byte	W13
	.byte		N12	, Ds2, v112
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte		N24	, Fs1
	.byte	W24
	.byte		N12	, As1
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Ds2
	.byte	W11
	.byte	PEND
song059_5_5:
	.byte	W01
	.byte		N24	, Bn1, v112
	.byte	W24
	.byte		N12	, Ds2
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Ds2
	.byte	W12
	.byte		N24	, Bn2
	.byte	W11
	.byte	PEND
song059_5_6:
	.byte	W13
	.byte		N12	, Gs2, v112
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte		N20	, Bn1
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte			Ds2
	.byte	W12
	.byte			Fs2
	.byte	W11
	.byte	PEND
song059_5_7:
	.byte	W01
	.byte		N24	, Cs2, v112
	.byte	W24
	.byte		N12	, Fn2
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			As2
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte		N24	, Cs3
	.byte	W11
	.byte	PEND
song059_5_8:
	.byte	W13
	.byte		N12	, Bn2, v112
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte		N24	, Fn2
	.byte	W24
	.byte		N12	, Cs2
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte			Fs1
	.byte	W11
	.byte	PEND
	.byte	PATT	
		.word	song059_5_1
	.byte	PATT	
		.word	song059_5_2
	.byte	PATT	
		.word	song059_5_3
	.byte	PATT	
		.word	song059_5_4
	.byte	PATT	
		.word	song059_5_5
	.byte	PATT	
		.word	song059_5_6
	.byte	PATT	
		.word	song059_5_7
	.byte	PATT	
		.word	song059_5_8
	.byte	PATT	
		.word	song059_5_9
	.byte	W12
	.byte		N17	, Cs2, v100
	.byte	W84
	.byte	PATT	
		.word	song059_5_9
	.byte	W12
	.byte		N17	, Cs2, v100
	.byte	W84
	.byte	PATT	
		.word	song059_5_9
	.byte	PATT	
		.word	song059_5_10
	.byte	PATT	
		.word	song059_5_11
	.byte	PATT	
		.word	song059_5_12
	.byte	GOTO	
		.word	song059_5_1
	.byte	W02
	.byte	FINE

	@********************** Track  6 **********************@

	.global song059_6
song059_6:	@ 0x0829934F
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
song059_6_1:
	.byte		N15	, Cs4, v112
	.byte	W24
	.byte		N14	
	.byte	W24
	.byte		N18	, Bn3
	.byte	W24
	.byte		N16	, As3
	.byte	W24
	.byte		N12	, Bn3
	.byte	W12
	.byte		N14	, As3
	.byte	W24
	.byte			Fs3
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte			Gs3
	.byte	W12
	.byte		N10	, Fs3
	.byte	W12
	.byte		N11	, En4
	.byte	W24
	.byte			Ds4
	.byte	W24
	.byte			Cs4
	.byte	W12
	.byte			Ds4
	.byte	W24
	.byte		N68	, Bn3
	.byte	W12
	.byte	W60
	.byte		N11	, Fs3
	.byte	W12
	.byte		N10	, Gs3
	.byte	W12
	.byte		N12	, An3
	.byte	W12
	.byte			Dn4
	.byte	W24
	.byte		N13	
	.byte	W24
	.byte		N15	, Cs4
	.byte	W24
	.byte		N13	, Bn3
	.byte	W24
	.byte		N11	, Cs4
	.byte	W12
	.byte		N13	, An3
	.byte	W24
	.byte		N14	, Fs3
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte			An3
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte		N15	, Bn3
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N12	, An3
	.byte	W12
	.byte		N13	, Bn3
	.byte	W24
	.byte		N24	, En4
	.byte	W12
	.byte	W12
	.byte		N11	, Ds4
	.byte	W12
	.byte		N10	, Cs4
	.byte	W12
	.byte		N23	, Ds4
	.byte	W24
	.byte		N32	, Bn3
	.byte	W36
	.byte		N15	, Cs4, v120
	.byte	W24
	.byte		N14	
	.byte	W24
	.byte		N18	, Bn3
	.byte	W24
	.byte		N16	, As3, v108
	.byte	W24
	.byte		N12	, Bn3, v120
	.byte	W12
	.byte		N14	, As3, v104
	.byte	W24
	.byte			Fs3, v100
	.byte	W24
	.byte		N11	, Fs3, v108
	.byte	W12
	.byte			Gs3
	.byte	W12
	.byte		N10	, Fs3, v104
	.byte	W12
	.byte		N11	, En4
	.byte	W24
	.byte			Ds4, v108
	.byte	W24
	.byte			Cs4
	.byte	W12
	.byte			Ds4
	.byte	W24
	.byte		N68	, Bn3, v120
	.byte	W12
	.byte	W60
	.byte		N11	, Fs3, v100
	.byte	W12
	.byte		N10	, Gs3, v112
	.byte	W12
	.byte		N12	, An3
	.byte	W12
	.byte			Dn4, v108
	.byte	W24
	.byte		N13	, Dn4, v104
	.byte	W24
	.byte		N15	, Cs4
	.byte	W24
	.byte		N13	, Bn3, v100
	.byte	W24
	.byte		N11	, Cs4, v108
	.byte	W12
	.byte		N13	, An3
	.byte	W24
	.byte		N14	, Fs3, v096
	.byte	W24
	.byte		N12	, Fs3, v100
	.byte	W12
	.byte			An3, v104
	.byte	W12
	.byte			Fs3, v100
	.byte	W12
	.byte		N15	, Bn3, v104
	.byte	W24
	.byte		N11	, Bn3, v112
	.byte	W24
	.byte		N12	, An3
	.byte	W12
	.byte		N13	, Bn3
	.byte	W24
	.byte		N24	, En4, v120
	.byte	W12
	.byte	W12
	.byte		N11	, Ds4, v116
	.byte	W12
	.byte		N10	, Cs4
	.byte	W12
	.byte		N23	, Ds4, v120
	.byte	W24
	.byte		N32	, Bn3, v116
	.byte	W36
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	song059_6_1
	.byte	FINE

	@********************** Track  7 **********************@

	.global song059_7
song059_7:	@ 0x08299452
	.byte	KEYSH	, 0
	.byte	VOICE	, 0
	.byte	VOL	, v078
	.byte	PAN	, c_v+11
	.byte	W03
song059_7_1:
	.byte	W01
	.byte		N10	, Fn4, v060
	.byte	W12
	.byte		N07	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N10	, Gn4
	.byte	W24
	.byte		N10	
	.byte	W24
	.byte			Gs4
	.byte	W11
	.byte	PEND
song059_7_2:
	.byte	W13
	.byte		N21	, Gs4, v060
	.byte	W36
	.byte		N10	, As4
	.byte	W24
	.byte		N08	, Cn5
	.byte	W23
	.byte	PEND
song059_7_3:
	.byte	W01
	.byte		N10	, Cs5, v060
	.byte	W36
	.byte			Cn5
	.byte	W36
	.byte		N96	, Ds5
	.byte	W19
	.byte	MOD	, 1
	.byte	W03
	.byte		5
	.byte	W01
	.byte	PEND
song059_7_4:
	.byte	W03
	.byte	MOD	, 8
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
	.byte	PEND
song059_7_5:
	.byte	W02
	.byte		N15	, Ds4, v072
	.byte	W24
	.byte		N14	
	.byte	W24
	.byte		N18	, Cs4
	.byte	W24
	.byte		N16	, Cn4
	.byte	W22
	.byte	W02
	.byte		N12	, Cs4
	.byte	W12
	.byte		N14	, Cn4
	.byte	W24
	.byte			Gs3
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte			As3
	.byte	W12
	.byte		N10	, Gs3
	.byte	W10
	.byte	W02
	.byte		N11	, Fs4
	.byte	W24
	.byte			Fn4
	.byte	W24
	.byte			Ds4
	.byte	W12
	.byte			Fn4
	.byte	W24
	.byte		N68	, Cs4
	.byte	W10
	.byte	W60
	.byte	W02
	.byte		N11	, Gs3
	.byte	W12
	.byte		N10	, As3
	.byte	W12
	.byte		N12	, Bn3
	.byte	W10
	.byte	W02
	.byte			En4
	.byte	W24
	.byte		N13	
	.byte	W24
	.byte		N15	, Ds4
	.byte	W24
	.byte		N13	, Cs4
	.byte	W22
	.byte	W02
	.byte		N11	, Ds4
	.byte	W12
	.byte		N13	, Bn3
	.byte	W24
	.byte		N14	, Gs3
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte			Gs3
	.byte	W10
	.byte	W02
	.byte		N15	, Cs4
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N12	, Bn3
	.byte	W12
	.byte		N13	, Cs4
	.byte	W24
	.byte		N24	, Fs4
	.byte	W10
	.byte	W14
	.byte		N11	, Fn4
	.byte	W12
	.byte		N10	, Ds4
	.byte	W12
	.byte		N23	, Fn4
	.byte	W24
	.byte		N32	, Cs4
	.byte	W32
	.byte	W02
	.byte	W02
	.byte		N15	, Ds5
	.byte	W24
	.byte		N14	
	.byte	W24
	.byte		N18	, Cs5
	.byte	W24
	.byte		N16	, Cn5
	.byte	W22
	.byte	W02
	.byte		N12	, Cs5
	.byte	W12
	.byte		N14	, Cn5
	.byte	W24
	.byte			Gs4
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte			As4
	.byte	W12
	.byte		N10	, Gs4
	.byte	W10
	.byte	W02
	.byte		N11	, Fs5
	.byte	W24
	.byte			Fn5
	.byte	W24
	.byte			Ds5
	.byte	W12
	.byte			Fn5
	.byte	W24
	.byte		N68	, Cs5
	.byte	W10
	.byte	W60
	.byte	W02
	.byte		N11	, Gs4
	.byte	W12
	.byte		N10	, As4
	.byte	W12
	.byte		N12	, Bn4
	.byte	W10
	.byte	W02
	.byte			En5
	.byte	W24
	.byte		N13	
	.byte	W24
	.byte		N15	, Ds5
	.byte	W24
	.byte		N13	, Cs5
	.byte	W22
	.byte	W02
	.byte		N11	, Ds5
	.byte	W12
	.byte		N13	, Bn4
	.byte	W24
	.byte		N14	, Gs4
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte			Bn4
	.byte	W12
	.byte			Gs4
	.byte	W10
	.byte	W02
	.byte		N15	, Cs5
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N12	, Bn4
	.byte	W12
	.byte		N13	, Cs5
	.byte	W24
	.byte		N24	, Fs5
	.byte	W10
	.byte	W14
	.byte		N11	, Fn5
	.byte	W12
	.byte		N10	, Ds5
	.byte	W12
	.byte		N23	, Fn5
	.byte	W24
	.byte		N32	, Cs5
	.byte	W32
	.byte	W02
	.byte	W01
	.byte		N10	, Fn3, v060
	.byte	W12
	.byte		N07	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N10	, Gn3
	.byte	W24
	.byte		N10	
	.byte	W24
	.byte			Gs3
	.byte	W11
	.byte	W13
	.byte		N21	
	.byte	W80
	.byte	W03
	.byte	PATT	
		.word	song059_7_1
	.byte	W13
	.byte		N21	, Gs4, v060
	.byte	W80
	.byte	W03
	.byte	PATT	
		.word	song059_7_1
	.byte	PATT	
		.word	song059_7_2
	.byte	PATT	
		.word	song059_7_3
	.byte	PATT	
		.word	song059_7_4
	.byte	GOTO	
		.word	song059_7_5
	.byte	FINE

	@********************** Track  8 **********************@

	.global song059_8
song059_8:	@ 0x082995AA
	.byte	KEYSH	, 0
	.byte	VOICE	, 100
	.byte	VOL	, v078
	.byte	PAN	, c_v-34
	.byte	W03
song059_8_1:
	.byte	W03
	.byte		N10	, Fn3, v060
	.byte	W12
	.byte		N07	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N10	, Gn3
	.byte	W24
	.byte		N10	
	.byte	W24
	.byte			Gs3
	.byte	W09
	.byte	PEND
song059_8_3:
	.byte	W15
	.byte		N21	, Gs3, v060
	.byte	W36
	.byte		N10	, As3
	.byte	W24
	.byte		N08	, Cn4
	.byte	W21
	.byte	PEND
song059_8_4:
	.byte	W03
	.byte		N10	, Cs4, v060
	.byte	W36
	.byte			Cn4
	.byte	W36
	.byte		N96	, Ds4
	.byte	W19
	.byte	MOD	, 1
	.byte	W02
	.byte	PEND
song059_8_5:
	.byte	W01
	.byte	MOD	, 5
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
	.byte	W02
	.byte	PEND
song059_8_6:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
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
		.word	song059_8_1
song059_8_2:
	.byte	W15
	.byte		N21	, Gs3, v060
	.byte	W80
	.byte	W01
	.byte	PEND
	.byte	PATT	
		.word	song059_8_1
	.byte	PATT	
		.word	song059_8_2
	.byte	PATT	
		.word	song059_8_1
	.byte	PATT	
		.word	song059_8_3
	.byte	PATT	
		.word	song059_8_4
	.byte	PATT	
		.word	song059_8_5
	.byte	GOTO	
		.word	song059_8_6
	.byte	FINE

	@********************** Track  9 **********************@

	.global song059_9
song059_9:	@ 0x08299631
	.byte	KEYSH	, 0
	.byte	VOICE	, 79
	.byte	VOL	, v078
	.byte	PAN	, c_v+56
	.byte	W03
	.byte		N06	, Cs3, v100
	.byte	W09
	.byte			Cs3, v084
	.byte	W14
	.byte			Cs3, v104
	.byte	W13
	.byte		N15	, Ds3, v108
	.byte	W23
	.byte		N11	, Ds3, v116
	.byte	W36
	.byte	W01
	.byte	W72
	.byte		N14	, Gs3, v124
	.byte	W24
song059_9_2:
	.byte	W32
	.byte	W03
	.byte		N16	, Gs3, v116
	.byte	W60
	.byte	W01
	.byte	PEND
	.byte	W96
song059_9_3:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song059_9_1:
	.byte		N06	, Cs3, v100
	.byte	W09
	.byte			Cs3, v084
	.byte	W14
	.byte			Cs3, v104
	.byte	W13
	.byte		N15	, Ds3, v108
	.byte	W23
	.byte		N10	, Ds3, v116
	.byte	W36
	.byte	W01
	.byte	PEND
	.byte	W96
	.byte		N06	, Cs4, v100
	.byte	W09
	.byte			Cs4, v084
	.byte	W14
	.byte			Cs4, v104
	.byte	W13
	.byte		N15	, Ds4, v108
	.byte	W23
	.byte		N10	, Ds4, v116
	.byte	W36
	.byte	W01
	.byte	W96
	.byte	PATT	
		.word	song059_9_1
	.byte	W72
	.byte		N14	, Gs3, v124
	.byte	W24
	.byte	PATT	
		.word	song059_9_2
	.byte	W96
	.byte	GOTO	
		.word	song059_9_3
	.byte	FINE

	@********************** Track  10 **********************@

	.global song059_10
song059_10:	@ 0x082996AA
	.byte	KEYSH	, 0
	.byte	VOICE	, 80
	.byte	VOL	, v078
	.byte	PAN	, c_v+56
	.byte	W03
song059_10_1:
	.byte	W80
	.byte	W03
	.byte		N11	, Fn3, v120
	.byte	W13
	.byte	PEND
song059_10_2:
	.byte	W12
	.byte		N32	, Fn3, v120
	.byte	W36
	.byte		N16	, Gn3, v108
	.byte	W48
	.byte	PEND
song059_10_3:
	.byte		N15	, As3, v108
	.byte	W72
	.byte		N92	, Cn4, v116
	.byte	W24
	.byte	PEND
	.byte	W96
song059_10_4:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
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
		.word	song059_10_1
	.byte	W12
	.byte		N32	, Fn3, v120
	.byte	W36
	.byte	W01
	.byte		N04	, Ds3, v072
	.byte		N04	, Fn3, v084
	.byte	W01
	.byte		N05	, Dn3, v080
	.byte	W03
	.byte		N04	, Cn3, v108
	.byte	W01
	.byte			As2, v116
	.byte	W02
	.byte			An2, v104
	.byte	W01
	.byte			Gn2, v124
	.byte	W02
	.byte			Fn2, v112
	.byte	W01
	.byte			Ds2, v104
	.byte	W02
	.byte			Dn2
	.byte	W01
	.byte			Cn2
	.byte	W01
	.byte			As1, v100
	.byte	W02
	.byte			An1, v104
	.byte	W01
	.byte			Gn1, v096
	.byte	W01
	.byte			Fn1, v104
	.byte	W01
	.byte			Ds1, v096
	.byte	W01
	.byte			Dn1, v100
	.byte	W01
	.byte			Cn1, v104
	.byte	W01
	.byte			As0, v096
	.byte	W02
	.byte			An0
	.byte	W01
	.byte			Gn0, v088
	.byte	W01
	.byte			Fn0, v076
	.byte	W01
	.byte			Ds0, v072
	.byte	W01
	.byte			Cn0, v084
	.byte		N04	, Dn0, v072
	.byte	W01
	.byte			AnM1, v076
	.byte		N04	, AsM1, v080
	.byte	W02
	.byte			GnM1, v064
	.byte	W02
	.byte			FnM1, v052
	.byte	W13
	.byte	W80
	.byte	W03
	.byte		N11	, Fn4, v120
	.byte	W13
	.byte	W12
	.byte		N32	
	.byte	W36
	.byte	W01
	.byte		N04	, Ds5, v044
	.byte		N04	, Fn5, v056
	.byte	W01
	.byte		N05	, Dn5, v052
	.byte	W03
	.byte		N04	, Cn5, v076
	.byte	W01
	.byte			As4, v084
	.byte	W02
	.byte			An4, v072
	.byte	W01
	.byte			Gn4, v092
	.byte	W02
	.byte			Fn4, v084
	.byte	W01
	.byte			Ds4, v076
	.byte	W02
	.byte			Dn4
	.byte	W01
	.byte			Cn4
	.byte	W01
	.byte			As3, v072
	.byte	W02
	.byte			An3
	.byte	W01
	.byte			Gn3, v068
	.byte	W01
	.byte			Fn3, v072
	.byte	W01
	.byte			Ds3, v068
	.byte	W01
	.byte			Dn3
	.byte	W01
	.byte			Cn3, v072
	.byte	W01
	.byte			As2, v068
	.byte	W02
	.byte			An2
	.byte	W01
	.byte			Gn2, v060
	.byte	W01
	.byte			Fn2, v048
	.byte	W01
	.byte			Ds2, v040
	.byte	W01
	.byte			Cn2, v056
	.byte		N04	, Dn2, v044
	.byte	W01
	.byte			An1
	.byte		N04	, As1, v052
	.byte	W02
	.byte			Gn1, v036
	.byte	W02
	.byte			Fn1, v024
	.byte	W13
	.byte	PATT	
		.word	song059_10_1
	.byte	PATT	
		.word	song059_10_2
	.byte	PATT	
		.word	song059_10_3
	.byte	W96
	.byte	GOTO	
		.word	song059_10_4
	.byte	FINE

	@********************** Track  11 **********************@

	.global song059_11
song059_11:	@ 0x082997B4
	.byte	KEYSH	, 0
	.byte	VOICE	, 118
	.byte	VOL	, v062
	.byte	PAN	, c_v+56
	.byte	W03
song059_11_5:
	.byte	W02
	.byte		N12	, Cs1, v100
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Cs1
	.byte	W12
	.byte			Ds2
	.byte	W12
	.byte			Ds1
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Gs1
	.byte	W10
	.byte	PEND
song059_11_7:
	.byte	W02
	.byte		N12	, Gs1, v100
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte			Fn1
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte			Ds1
	.byte	W12
	.byte			Ds2
	.byte	W12
	.byte			Cn1
	.byte	W10
	.byte	PEND
song059_11_6:
	.byte	W02
	.byte		N12	, Cs1, v100
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Cs1
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte			Fn1
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Ds2
	.byte	W10
	.byte	PEND
song059_11_8:
	.byte	W02
	.byte		N12	, Ds1, v100
	.byte	W12
	.byte			Ds2
	.byte	W12
	.byte			Cs1
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Cn1
	.byte	W12
	.byte			Cn2
	.byte	W12
	.byte			As0
	.byte	W12
	.byte			As1
	.byte	W10
	.byte	PEND
song059_11_1:
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
song059_11_2:
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
song059_11_3:
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
song059_11_4:
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
		.word	song059_11_1
	.byte	PATT	
		.word	song059_11_2
	.byte	PATT	
		.word	song059_11_3
	.byte	PATT	
		.word	song059_11_4
	.byte	PATT	
		.word	song059_11_1
	.byte	PATT	
		.word	song059_11_2
	.byte	PATT	
		.word	song059_11_3
	.byte	PATT	
		.word	song059_11_4
	.byte	PATT	
		.word	song059_11_1
	.byte	PATT	
		.word	song059_11_2
	.byte	PATT	
		.word	song059_11_3
	.byte	PATT	
		.word	song059_11_4
	.byte	PATT	
		.word	song059_11_5
	.byte	PATT	
		.word	song059_11_6
	.byte	PATT	
		.word	song059_11_5
	.byte	PATT	
		.word	song059_11_7
	.byte	PATT	
		.word	song059_11_5
	.byte	PATT	
		.word	song059_11_7
	.byte	PATT	
		.word	song059_11_6
	.byte	PATT	
		.word	song059_11_8
	.byte	GOTO	
		.word	song059_11_1
	.byte	W02
	.byte	FINE

	@********************** Track  12 **********************@

	.global song059_12
song059_12:	@ 0x082998DF
	.byte	KEYSH	, 0
	.byte	VOICE	, 118
	.byte	VOL	, v062
	.byte	PAN	, c_v-54
	.byte	W03
song059_12_5:
	.byte		N12	, Cs1, v100
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Cs1
	.byte	W12
	.byte			Ds2
	.byte	W12
	.byte			Ds1
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte	PEND
song059_12_7:
	.byte		N12	, Gs1, v100
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte			Fn1
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte			Ds1
	.byte	W12
	.byte			Ds2
	.byte	W12
	.byte			Cn1
	.byte	W12
	.byte	PEND
song059_12_6:
	.byte		N12	, Cs1, v100
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Cs1
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte			Fn1
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Ds2
	.byte	W12
	.byte	PEND
song059_12_8:
	.byte		N12	, Ds1, v100
	.byte	W12
	.byte			Ds2
	.byte	W12
	.byte			Cs1
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Cn1
	.byte	W12
	.byte			Cn2
	.byte	W12
	.byte			As0
	.byte	W12
	.byte			As1
	.byte	W12
	.byte	PEND
song059_12_1:
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
song059_12_2:
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
song059_12_3:
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
song059_12_4:
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
		.word	song059_12_1
	.byte	PATT	
		.word	song059_12_2
	.byte	PATT	
		.word	song059_12_3
	.byte	PATT	
		.word	song059_12_4
	.byte	PATT	
		.word	song059_12_1
	.byte	PATT	
		.word	song059_12_2
	.byte	PATT	
		.word	song059_12_3
	.byte	PATT	
		.word	song059_12_4
	.byte	PATT	
		.word	song059_12_1
	.byte	PATT	
		.word	song059_12_2
	.byte	PATT	
		.word	song059_12_3
	.byte	PATT	
		.word	song059_12_4
	.byte	PATT	
		.word	song059_12_5
	.byte	PATT	
		.word	song059_12_6
	.byte	PATT	
		.word	song059_12_5
	.byte	PATT	
		.word	song059_12_7
	.byte	PATT	
		.word	song059_12_5
	.byte	PATT	
		.word	song059_12_7
	.byte	PATT	
		.word	song059_12_6
	.byte	PATT	
		.word	song059_12_8
	.byte	GOTO	
		.word	song059_12_1
	.byte	FINE

	.align 2
	.global song059
song059:	@ 0x082999EC
	.byte	12		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

	.word	voicegroup008		@ voicegroup/tone

	.word	song059_1		@ track
	.word	song059_2		@ track
	.word	song059_3		@ track
	.word	song059_4		@ track
	.word	song059_5		@ track
	.word	song059_6		@ track
	.word	song059_7		@ track
	.word	song059_8		@ track
	.word	song059_9		@ track
	.word	song059_10		@ track
	.word	song059_11		@ track
	.word	song059_12		@ track

	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song015_1
song015_1:	@ 0x0826BF30
	.byte	KEYSH	, 0
	.byte	TEMPO	, 65
	.byte	VOICE	, 127
	.byte	VOL	, v085
	.byte	PAN	, c_v
	.byte	W03
	.byte	TEMPO	, 65
	.byte		N18	, Gs7, v112
	.byte	W24
	.byte		N18	
	.byte	W24
	.byte		N18	
	.byte	W24
	.byte		N18	
	.byte	W24
song015_1_1:
	.byte		N18	, Gs7, v112
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte			Fs1
	.byte		N11	, Gs7
	.byte	W24
	.byte	PEND
song015_1_2:
	.byte		N18	, Gs7, v112
	.byte	W24
	.byte		N18	
	.byte	W24
	.byte		N18	
	.byte	W24
	.byte		N18	
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song015_1_1
	.byte	PATT	
		.word	song015_1_2
	.byte	PATT	
		.word	song015_1_1
	.byte	PATT	
		.word	song015_1_2
song015_1_4:
	.byte		N11	, Gs7, v112
	.byte	W24
	.byte			Fs1
	.byte		N11	, Gs7
	.byte	W24
	.byte		N05	
	.byte	W06
	.byte		N08	, Fs1
	.byte	W12
	.byte		N05	
	.byte		N05	, Gs7
	.byte	W12
	.byte		N02	
	.byte	W06
	.byte		N05	, Fs1
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte	PEND
song015_1_3:
	.byte		N03	, Gs7, v127
	.byte	W03
	.byte			As1
	.byte	W04
	.byte		N04	, Bn1
	.byte	W04
	.byte			Gs7
	.byte	W04
	.byte		N02	, Cs2
	.byte	W03
	.byte		N05	, Dn2
	.byte	W05
	.byte		N07	, Fs1
	.byte	W08
	.byte		N04	, En2
	.byte	W05
	.byte		N06	, Fn2
	.byte	W06
	.byte		N04	, Gs7
	.byte	W06
	.byte		N03	
	.byte	W03
	.byte			As1
	.byte	W04
	.byte		N04	, Bn1
	.byte	W04
	.byte			Gs7
	.byte	W04
	.byte		N02	, Cs2
	.byte	W03
	.byte		N05	, Dn2
	.byte	W05
	.byte		N07	, Fs1
	.byte	W08
	.byte		N04	, En2
	.byte	W05
	.byte		N06	, Fn2
	.byte	W06
	.byte		N04	, Gs7
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song015_1_3
	.byte	PATT	
		.word	song015_1_3
	.byte	PATT	
		.word	song015_1_3
	.byte	PATT	
		.word	song015_1_3
	.byte	PATT	
		.word	song015_1_3
	.byte	PATT	
		.word	song015_1_3
	.byte	PATT	
		.word	song015_1_3
	.byte	PATT	
		.word	song015_1_3
	.byte	PATT	
		.word	song015_1_3
	.byte	PATT	
		.word	song015_1_3
	.byte	PATT	
		.word	song015_1_3
	.byte	PATT	
		.word	song015_1_3
	.byte	PATT	
		.word	song015_1_3
	.byte	PATT	
		.word	song015_1_3
	.byte		N18	, Gs7, v112
	.byte	W54
	.byte	W01
	.byte		N05	, En1
	.byte	W17
	.byte		N11	, Fs1
	.byte		N11	, Gs7
	.byte	W12
	.byte		N06	, Fn2, v120
	.byte	W07
	.byte		N05	, Fs1, v112
	.byte	W05
	.byte	PATT	
		.word	song015_1_2
	.byte	PATT	
		.word	song015_1_1
	.byte	PATT	
		.word	song015_1_2
	.byte	PATT	
		.word	song015_1_1
	.byte	PATT	
		.word	song015_1_2
	.byte	PATT	
		.word	song015_1_1
	.byte	PATT	
		.word	song015_1_2
	.byte	PATT	
		.word	song015_1_4
	.byte	PATT	
		.word	song015_1_2
	.byte	GOTO	
		.word	song015_1_1
	.byte		N18	, Gs7, v112
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte			Fs1
	.byte		N11	, Gs7
	.byte	W11
	.byte	FINE

	@********************** Track  2 **********************@

	.global song015_2
song015_2:	@ 0x0826C05F
	.byte	KEYSH	, 0
	.byte	VOICE	, 60
	.byte	VOL	, v063
	.byte	PAN	, c_v+16
	.byte	W03
song015_2_1:
	.byte		N03	, Fs7, v012
	.byte	W24
	.byte		N03	
	.byte	W24
	.byte		N03	
	.byte	W24
	.byte		N03	
	.byte	W24
	.byte	PEND
song015_2_2:
	.byte	PATT	
		.word	song015_2_1
	.byte	PATT	
		.word	song015_2_1
	.byte	PATT	
		.word	song015_2_1
	.byte	PATT	
		.word	song015_2_1
	.byte	PATT	
		.word	song015_2_1
	.byte	PATT	
		.word	song015_2_1
	.byte	PATT	
		.word	song015_2_1
	.byte	PATT	
		.word	song015_2_1
	.byte	PATT	
		.word	song015_2_1
	.byte	PATT	
		.word	song015_2_1
	.byte	PATT	
		.word	song015_2_1
	.byte	PATT	
		.word	song015_2_1
	.byte	PATT	
		.word	song015_2_1
	.byte	PATT	
		.word	song015_2_1
	.byte	PATT	
		.word	song015_2_1
	.byte	PATT	
		.word	song015_2_1
	.byte	PATT	
		.word	song015_2_1
	.byte	PATT	
		.word	song015_2_1
	.byte	PATT	
		.word	song015_2_1
	.byte	PATT	
		.word	song015_2_1
	.byte	PATT	
		.word	song015_2_1
	.byte	PATT	
		.word	song015_2_1
	.byte	PATT	
		.word	song015_2_1
	.byte	PATT	
		.word	song015_2_1
	.byte	PATT	
		.word	song015_2_1
	.byte	PATT	
		.word	song015_2_1
	.byte	PATT	
		.word	song015_2_1
	.byte	PATT	
		.word	song015_2_1
	.byte	PATT	
		.word	song015_2_1
	.byte	PATT	
		.word	song015_2_1
	.byte	PATT	
		.word	song015_2_1
	.byte	PATT	
		.word	song015_2_1
	.byte	GOTO	
		.word	song015_2_2
	.byte		N03	, Fs7, v012
	.byte	W24
	.byte		N03	
	.byte	W24
	.byte		N03	
	.byte	W24
	.byte		N03	
	.byte	W03
	.byte	FINE

	@********************** Track  3 **********************@

	.global song015_3
song015_3:	@ 0x0826C123
	.byte	KEYSH	, 0
	.byte	VOICE	, 127
	.byte	VOL	, v088
	.byte	PAN	, c_v
	.byte	W03
song015_3_1:
	.byte		N01	, Ds7, v116
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N02	
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N01	
	.byte	W07
	.byte		N03	
	.byte	W05
	.byte		N06	
	.byte	W07
	.byte		N02	
	.byte	W12
	.byte		N01	
	.byte	W05
	.byte		N06	
	.byte		N08	, As7, v072
	.byte	W07
	.byte		N02	, Ds7, v116
	.byte	W05
	.byte	PEND
song015_3_2:
	.byte	PATT	
		.word	song015_3_1
	.byte	PATT	
		.word	song015_3_1
	.byte	PATT	
		.word	song015_3_1
	.byte	PATT	
		.word	song015_3_1
	.byte	PATT	
		.word	song015_3_1
	.byte	PATT	
		.word	song015_3_1
	.byte	PATT	
		.word	song015_3_1
	.byte	PATT	
		.word	song015_3_1
	.byte	PATT	
		.word	song015_3_1
	.byte	PATT	
		.word	song015_3_1
	.byte	PATT	
		.word	song015_3_1
	.byte	PATT	
		.word	song015_3_1
	.byte	PATT	
		.word	song015_3_1
	.byte	PATT	
		.word	song015_3_1
	.byte	PATT	
		.word	song015_3_1
	.byte	PATT	
		.word	song015_3_1
	.byte	PATT	
		.word	song015_3_1
	.byte	PATT	
		.word	song015_3_1
	.byte	PATT	
		.word	song015_3_1
	.byte	PATT	
		.word	song015_3_1
	.byte	PATT	
		.word	song015_3_1
	.byte	PATT	
		.word	song015_3_1
	.byte	PATT	
		.word	song015_3_1
	.byte	PATT	
		.word	song015_3_1
	.byte	PATT	
		.word	song015_3_1
	.byte	PATT	
		.word	song015_3_1
	.byte	PATT	
		.word	song015_3_1
	.byte	PATT	
		.word	song015_3_1
	.byte	PATT	
		.word	song015_3_1
	.byte	PATT	
		.word	song015_3_1
	.byte	PATT	
		.word	song015_3_1
	.byte	PATT	
		.word	song015_3_1
	.byte	GOTO	
		.word	song015_3_2
	.byte		N01	, Ds7, v116
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N02	
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N01	
	.byte	W07
	.byte		N03	
	.byte	W05
	.byte		N06	
	.byte	W07
	.byte		N02	
	.byte	W12
	.byte		N01	
	.byte	W05
	.byte		N06	
	.byte		N08	, As7, v072
	.byte	W07
	.byte		N02	, Ds7, v116
	.byte	W02
	.byte	FINE

	@********************** Track  4 **********************@

	.global song015_4
song015_4:	@ 0x0826C20D
	.byte	KEYSH	, 0
	.byte	VOICE	, 46
	.byte	VOL	, v081
	.byte	PAN	, c_v-6
	.byte	W03
song015_4_1:
	.byte		N12	, Fs1, v112
	.byte	W12
	.byte		N08	, Fs2
	.byte	W24
	.byte		N03	, Fs1
	.byte	W12
	.byte		N13	, Gs1
	.byte	W12
	.byte		N08	, Gs2
	.byte	W24
	.byte		N05	, Gs1
	.byte	W12
	.byte	PEND
song015_4_2:
	.byte		N13	, An1, v112
	.byte	W12
	.byte		N09	, An2
	.byte	W12
	.byte		N05	, An1
	.byte	W12
	.byte		N24	, Bn1
	.byte	W24
	.byte		N03	, Gs1
	.byte	W12
	.byte		N12	, Cs2
	.byte	W12
	.byte		N08	, Bn1
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song015_4_1
song015_4_3:
	.byte		N13	, An1, v112
	.byte	W12
	.byte		N09	, Gs2
	.byte	W24
	.byte		N05	, En1
	.byte	W12
	.byte		N12	, An1
	.byte	W12
	.byte		N03	, Fs1
	.byte	W12
	.byte		N12	, Bn1
	.byte	W12
	.byte		N07	, An1
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song015_4_1
	.byte	PATT	
		.word	song015_4_2
	.byte	PATT	
		.word	song015_4_1
	.byte	PATT	
		.word	song015_4_3
song015_4_4:
	.byte	W01
	.byte		N12	, Fs1, v112
	.byte	W11
	.byte		N08	, Fs2
	.byte	W24
	.byte		N03	, Fs1
	.byte	W13
	.byte		N13	
	.byte	W13
	.byte		N08	, Fs2
	.byte	W23
	.byte		N05	, Fs1
	.byte	W11
	.byte	PEND
song015_4_5:
	.byte	W03
	.byte		N13	, En1, v112
	.byte	W11
	.byte		N09	, En2
	.byte	W24
	.byte		N05	, En1
	.byte	W11
	.byte		N13	, Gn1
	.byte	W14
	.byte		N03	, En1
	.byte	W10
	.byte		N13	, An1
	.byte	W12
	.byte		N07	, Gn1
	.byte	W11
	.byte	PEND
	.byte	PATT	
		.word	song015_4_4
	.byte	PATT	
		.word	song015_4_5
	.byte	PATT	
		.word	song015_4_4
	.byte	PATT	
		.word	song015_4_5
	.byte	PATT	
		.word	song015_4_4
	.byte	PATT	
		.word	song015_4_5
	.byte	PATT	
		.word	song015_4_4
	.byte	PATT	
		.word	song015_4_5
	.byte	PATT	
		.word	song015_4_4
	.byte	PATT	
		.word	song015_4_5
	.byte	PATT	
		.word	song015_4_4
	.byte	PATT	
		.word	song015_4_5
	.byte	PATT	
		.word	song015_4_4
	.byte	PATT	
		.word	song015_4_5
	.byte	PATT	
		.word	song015_4_1
	.byte	PATT	
		.word	song015_4_2
	.byte	PATT	
		.word	song015_4_1
	.byte	PATT	
		.word	song015_4_3
	.byte	PATT	
		.word	song015_4_1
	.byte	PATT	
		.word	song015_4_2
	.byte	PATT	
		.word	song015_4_1
	.byte	PATT	
		.word	song015_4_3
	.byte	PATT	
		.word	song015_4_1
	.byte	GOTO	
		.word	song015_4_2
	.byte		N13	, An1, v112
	.byte	W12
	.byte		N09	, An2
	.byte	W12
	.byte		N05	, An1
	.byte	W12
	.byte		N24	, Bn1
	.byte	W24
	.byte		N03	, Gs1
	.byte	W12
	.byte		N12	, Cs2
	.byte	W12
	.byte		N08	, Bn1
	.byte	W08
	.byte	FINE

	@********************** Track  5 **********************@

	.global song015_5
song015_5:	@ 0x0826C32C
	.byte	KEYSH	, 0
	.byte	VOICE	, 63
	.byte	VOL	, v088
	.byte	PAN	, c_v-7
	.byte	W03
song015_5_1:
	.byte		N03	, Fn4, v092
	.byte	W03
	.byte		N56	, Fs4, v100
	.byte	W56
	.byte	W01
	.byte		N06	, En4
	.byte	W06
	.byte		N17	, Fn4
	.byte	W18
	.byte		N12	, An3, v092
	.byte	W12
	.byte	PEND
song015_5_2:
	.byte		N60	, En4, v096
	.byte	W60
	.byte		N03	, Dn4, v100
	.byte	W03
	.byte		N21	, Ds4, v096
	.byte	W21
	.byte		N12	, Gs3, v084
	.byte	W12
	.byte	PEND
	.byte		N60	, Cs4, v100
	.byte	W60
	.byte		N03	, Bn3, v104
	.byte	W03
	.byte		N21	, Cn4, v100
	.byte	W21
	.byte		N12	, Gs3, v104
	.byte	W12
	.byte		N60	, Bn3, v096
	.byte	W60
	.byte		N06	, Cs4
	.byte	W07
	.byte		N07	, Dn4, v104
	.byte	W07
	.byte		N06	, En4, v080
	.byte	W05
	.byte		N05	, Fs4, v108
	.byte	W05
	.byte		N12	, An4, v112
	.byte	W12
	.byte		N72	, Bn4
	.byte	W72
	.byte		N12	, Cs5, v092
	.byte	W12
	.byte			An4, v108
	.byte	W12
	.byte		N48	, Bn4, v112
	.byte	W60
	.byte		N04	, Bn4, v100
	.byte	W06
	.byte		N06	, Cn5, v088
	.byte	W06
	.byte			Bn4, v092
	.byte	W06
	.byte			An4, v104
	.byte	W06
	.byte		N12	, En4, v108
	.byte	W12
	.byte		N03	, En5, v084
	.byte	W03
	.byte		N56	, Fs5, v096
	.byte	W56
	.byte	W01
	.byte		N03	, Dn5, v088
	.byte	W03
	.byte		N18	, En5
	.byte	W21
	.byte		N11	, An4, v092
	.byte	W12
	.byte			Bn5, v100
	.byte	W12
	.byte		N64	, An5, v108
	.byte	W60
	.byte	W03
	.byte		N03	, Gn5, v060
	.byte	W02
	.byte			Fn5, v076
	.byte	W01
	.byte			Ds5, v084
	.byte	W02
	.byte			Dn5, v076
	.byte	W01
	.byte			Cn5, v088
	.byte	W01
	.byte			As4, v080
	.byte	W02
	.byte			An4, v072
	.byte	W02
	.byte			Gn4, v052
	.byte	W01
	.byte			Fn4, v072
	.byte	W03
	.byte			Ds4, v024
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
	.byte	PATT	
		.word	song015_5_1
	.byte	GOTO	
		.word	song015_5_2
	.byte	PATT	
		.word	song015_5_2
	.byte	FINE

	@********************** Track  6 **********************@

	.global song015_6
song015_6:	@ 0x0826C404
	.byte	KEYSH	, 0
	.byte	VOICE	, 65
	.byte	VOL	, v088
	.byte	PAN	, c_v+16
	.byte	W03
	.byte	W96
song015_6_6:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song015_6_4:
	.byte		N68	, Gn4, v116
	.byte	W72
	.byte		N12	, Cn5
	.byte	W12
	.byte		N60	, Fn4
	.byte	W12
	.byte	PEND
song015_6_1:
	.byte	W48
	.byte		N12	, As3, v116
	.byte	W12
	.byte			Cn4
	.byte	W12
	.byte			Ds4
	.byte	W12
	.byte			As3
	.byte	W12
	.byte	PEND
song015_6_2:
	.byte		N68	, Gn4, v116
	.byte	W68
	.byte	W01
	.byte		N03	, En4
	.byte	W03
	.byte		N12	, Fn4
	.byte	W12
	.byte			Cn4
	.byte	W12
	.byte	PEND
song015_6_3:
	.byte		N48	, Ds4, v116
	.byte	W48
	.byte		N12	, As3
	.byte	W12
	.byte			Cn4
	.byte	W12
	.byte			Ds4
	.byte	W12
	.byte			Fn4
	.byte	W12
	.byte	PEND
song015_6_5:
	.byte		N68	, Gn4, v116
	.byte	W72
	.byte		N12	, Cn5
	.byte	W12
	.byte		N68	, Fn4
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song015_6_1
	.byte	PATT	
		.word	song015_6_2
	.byte	PATT	
		.word	song015_6_3
	.byte	PATT	
		.word	song015_6_4
	.byte	PATT	
		.word	song015_6_1
	.byte	PATT	
		.word	song015_6_2
	.byte	PATT	
		.word	song015_6_3
	.byte	PATT	
		.word	song015_6_5
	.byte	PATT	
		.word	song015_6_1
	.byte	PATT	
		.word	song015_6_2
	.byte	PATT	
		.word	song015_6_3
	.byte		N03	, Bn3, v092
	.byte	W03
	.byte		N56	, Cn4, v100
	.byte	W56
	.byte	W01
	.byte		N06	, As3
	.byte	W06
	.byte		N17	, Bn3
	.byte	W18
	.byte		N12	, Ds3, v092
	.byte	W12
	.byte		N60	, As3, v096
	.byte	W60
	.byte		N03	, Gs3, v100
	.byte	W03
	.byte		N21	, An3, v096
	.byte	W21
	.byte		N12	, Dn3, v084
	.byte	W12
	.byte		N60	, Gn3, v100
	.byte	W60
	.byte		N03	, Fn3, v104
	.byte	W03
	.byte		N21	, Fs3, v100
	.byte	W21
	.byte		N12	, Dn3, v104
	.byte	W12
	.byte		N60	, Fn3, v096
	.byte	W60
	.byte		N06	, Gn3
	.byte	W07
	.byte		N07	, Gs3, v104
	.byte	W07
	.byte		N06	, As3, v080
	.byte	W05
	.byte		N05	, Cn4, v108
	.byte	W05
	.byte		N12	, Ds4, v112
	.byte	W12
	.byte		N72	, Fn4
	.byte	W72
	.byte		N12	, Gn4, v092
	.byte	W12
	.byte			Ds4, v108
	.byte	W12
	.byte		N48	, Fn4, v112
	.byte	W60
	.byte		N04	, Fn4, v100
	.byte	W06
	.byte		N06	, Fs4, v088
	.byte	W06
	.byte			Fn4, v092
	.byte	W06
	.byte			Ds4, v104
	.byte	W06
	.byte		N12	, As3, v108
	.byte	W12
	.byte		N03	, As4, v084
	.byte	W03
	.byte		N56	, Cn5, v096
	.byte	W56
	.byte	W01
	.byte		N03	, Gs4, v088
	.byte	W03
	.byte		N18	, As4
	.byte	W21
	.byte		N11	, Ds4, v092
	.byte	W12
	.byte			Fn5, v100
	.byte	W12
	.byte		N64	, Ds5, v108
	.byte	W60
	.byte	W03
	.byte		N03	, Cs5, v060
	.byte	W02
	.byte			Bn4, v076
	.byte	W01
	.byte			An4, v084
	.byte	W02
	.byte			Gs4, v076
	.byte	W01
	.byte			Fs4, v088
	.byte	W01
	.byte			En4, v080
	.byte	W02
	.byte			Ds4, v072
	.byte	W02
	.byte			Cs4, v052
	.byte	W01
	.byte			Bn3, v072
	.byte	W03
	.byte			An3, v024
	.byte	W06
	.byte	W96
	.byte	GOTO	
		.word	song015_6_6
	.byte	FINE

	@********************** Track  7 **********************@

	.global song015_7
song015_7:	@ 0x0826C536
	.byte	KEYSH	, 0
	.byte	VOICE	, 69
	.byte	VOL	, v074
	.byte	PAN	, c_v+46
	.byte	W03
song015_7_1:
	.byte		N12	, Cs4, v080
	.byte	W06
	.byte			Cs3
	.byte	W18
	.byte		N12	
	.byte		N12	, Cs4
	.byte	W24
	.byte			Ds4
	.byte	W06
	.byte			Ds3
	.byte	W18
	.byte		N12	
	.byte		N12	, Ds4
	.byte	W24
	.byte	PEND
song015_7_2:
	.byte		N12	, En4, v080
	.byte	W06
	.byte			En3
	.byte	W18
	.byte		N12	
	.byte		N12	, En4
	.byte	W12
	.byte			Fs4
	.byte	W06
	.byte			Fs3
	.byte	W18
	.byte		N12	
	.byte		N12	, Fs4
	.byte	W24
	.byte			Fs3
	.byte		N12	, Fs4
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song015_7_1
song015_7_3:
	.byte		N12	, En3, v080
	.byte		N12	, En4
	.byte	W12
	.byte			Ds3
	.byte		N12	, Ds4
	.byte	W12
	.byte			Cs3
	.byte		N12	, Cs4
	.byte	W12
	.byte			Bn3
	.byte	W06
	.byte			Bn2
	.byte	W18
	.byte		N12	
	.byte		N12	, Bn3
	.byte	W24
	.byte			Bn2
	.byte		N12	, Bn3
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song015_7_1
	.byte	PATT	
		.word	song015_7_2
	.byte	PATT	
		.word	song015_7_1
	.byte	PATT	
		.word	song015_7_3
song015_7_4:
	.byte		N22	, Cs4, v112
	.byte	W24
	.byte		N22	
	.byte	W36
	.byte		N12	
	.byte	W12
	.byte		N22	, Cn4, v104
	.byte	W24
	.byte	PEND
song015_7_5:
	.byte		N22	, Bn3, v104
	.byte	W24
	.byte		N22	
	.byte	W36
	.byte		N12	, Bn3, v112
	.byte	W12
	.byte		N24	, Cn4, v108
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song015_7_4
song015_7_6:
	.byte		N22	, Bn3, v104
	.byte	W24
	.byte		N22	
	.byte	W36
	.byte		N12	, Bn3, v112
	.byte	W12
	.byte		N24	, En3, v108
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song015_7_4
	.byte	PATT	
		.word	song015_7_5
	.byte	PATT	
		.word	song015_7_4
	.byte	PATT	
		.word	song015_7_6
	.byte	PATT	
		.word	song015_7_4
	.byte	PATT	
		.word	song015_7_5
	.byte	PATT	
		.word	song015_7_4
	.byte	PATT	
		.word	song015_7_6
	.byte	PATT	
		.word	song015_7_4
	.byte	PATT	
		.word	song015_7_5
	.byte	PATT	
		.word	song015_7_4
	.byte	PATT	
		.word	song015_7_6
	.byte	PATT	
		.word	song015_7_1
	.byte	PATT	
		.word	song015_7_2
	.byte	PATT	
		.word	song015_7_1
	.byte	PATT	
		.word	song015_7_3
	.byte	PATT	
		.word	song015_7_1
	.byte	PATT	
		.word	song015_7_2
	.byte	PATT	
		.word	song015_7_1
	.byte	PATT	
		.word	song015_7_3
	.byte	PATT	
		.word	song015_7_1
	.byte	GOTO	
		.word	song015_7_2
	.byte	PATT	
		.word	song015_7_2
	.byte	FINE

	@********************** Track  8 **********************@

	.global song015_8
song015_8:	@ 0x0826C641
	.byte	KEYSH	, 0
	.byte	VOICE	, 0
	.byte	VOL	, v085
	.byte	PAN	, c_v-4
	.byte	W03
	.byte	W96
song015_8_1:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PAN	, c_v+16
	.byte		N03	, Fn4, v052
	.byte	W03
	.byte		N56	, Fs4, v060
	.byte	W56
	.byte	W01
	.byte		N06	, En4
	.byte	W06
	.byte		N17	, Fn4
	.byte	W18
	.byte		N12	, An3, v052
	.byte	W12
	.byte		N60	, En4, v056
	.byte	W60
	.byte		N03	, Dn4, v060
	.byte	W03
	.byte		N21	, Ds4, v056
	.byte	W21
	.byte		N12	, Gs3, v044
	.byte	W12
	.byte		N60	, Cs4, v060
	.byte	W60
	.byte		N03	, Bn3, v064
	.byte	W03
	.byte		N21	, Cn4, v060
	.byte	W21
	.byte		N12	, Gs3, v064
	.byte	W12
	.byte		N60	, Bn3, v056
	.byte	W60
	.byte		N06	, Cs4
	.byte	W07
	.byte		N07	, Dn4, v064
	.byte	W07
	.byte		N06	, En4, v040
	.byte	W05
	.byte		N05	, Fs4, v068
	.byte	W05
	.byte		N12	, An4, v072
	.byte	W12
	.byte		N72	, Bn4
	.byte	W72
	.byte		N12	, Cs5, v052
	.byte	W12
	.byte			An4, v068
	.byte	W12
	.byte		N48	, Bn4, v072
	.byte	W60
	.byte		N04	, Bn4, v060
	.byte	W06
	.byte		N06	, Cn5, v048
	.byte	W06
	.byte			Bn4, v052
	.byte	W06
	.byte			An4, v064
	.byte	W06
	.byte		N12	, En4, v068
	.byte	W12
	.byte		N03	, En5, v044
	.byte	W03
	.byte		N56	, Fs5, v056
	.byte	W56
	.byte	W01
	.byte		N03	, Dn5, v048
	.byte	W03
	.byte		N18	, En5
	.byte	W21
	.byte		N11	, An4, v052
	.byte	W12
	.byte			Bn5, v060
	.byte	W12
	.byte		N64	, An5, v068
	.byte	W60
	.byte	W03
	.byte		N03	, Gn5, v020
	.byte	W02
	.byte			Fn5, v036
	.byte	W01
	.byte			Ds5, v044
	.byte	W02
	.byte			Dn5, v036
	.byte	W01
	.byte			Cn5, v048
	.byte	W01
	.byte			As4, v040
	.byte	W02
	.byte			An4, v032
	.byte	W02
	.byte			Gn4, v012
	.byte	W01
	.byte			Fn4, v032
	.byte	W03
	.byte			Ds4, v004
	.byte	W06
	.byte	W96
	.byte	GOTO	
		.word	song015_8_1
	.byte	FINE

	@********************** Track  9 **********************@

	.global song015_9
song015_9:	@ 0x0826C710
	.byte	KEYSH	, 0
	.byte	VOICE	, 21
	.byte	VOL	, v063
	.byte	PAN	, c_v+36
	.byte	W03
	.byte	W96
song015_9_3:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song015_9_1:
	.byte	W01
	.byte		N06	, Cs5, v080
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Cs5, v068
	.byte	W06
	.byte			Fs4, v064
	.byte	W18
	.byte			Cs5, v080
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Cs5, v068
	.byte	W06
	.byte			Fs4, v064
	.byte	W30
	.byte			Cs5, v068
	.byte	W06
	.byte			Fs4, v064
	.byte	W05
	.byte	PEND
song015_9_2:
	.byte	W01
	.byte		N06	, Cs5, v064
	.byte	W06
	.byte			Fs4, v060
	.byte	W30
	.byte			Cs5, v052
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Cs5, v028
	.byte	W06
	.byte			Fs4, v024
	.byte	W40
	.byte	W01
	.byte	PEND
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song015_9_1
	.byte	PATT	
		.word	song015_9_2
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song015_9_1
	.byte	PATT	
		.word	song015_9_2
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song015_9_1
	.byte	PATT	
		.word	song015_9_2
	.byte	W96
	.byte	W96
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
		.word	song015_9_3
	.byte	FINE

	@********************** Track  10 **********************@

	.global song015_10
song015_10:	@ 0x0826C78A
	.byte	KEYSH	, 0
	.byte	VOICE	, 21
	.byte	VOL	, v063
	.byte	PAN	, c_v-39
	.byte	W03
	.byte	W96
song015_10_3:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song015_10_1:
	.byte	W24
	.byte	W01
	.byte		N06	, Cs5, v080
	.byte	W06
	.byte			Fs4, v076
	.byte	W06
	.byte			Cs5, v056
	.byte	W06
	.byte			Fs4, v052
	.byte	W18
	.byte			Cs5, v080
	.byte	W06
	.byte			Fs4, v076
	.byte	W06
	.byte			Cs5, v056
	.byte	W06
	.byte			Fs4, v052
	.byte	W17
	.byte	PEND
song015_10_2:
	.byte	W13
	.byte		N06	, Cs5, v056
	.byte	W06
	.byte			Fs4, v052
	.byte	W06
	.byte			Cs5, v032
	.byte	W06
	.byte			Fs4, v028
	.byte	W21
	.byte		N05	, Cs5, v032
	.byte	W06
	.byte		N06	, Fs4, v028
	.byte	W06
	.byte			Cs5, v004
	.byte	W06
	.byte			Fs4
	.byte	W24
	.byte	W02
	.byte	PEND
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song015_10_1
	.byte	PATT	
		.word	song015_10_2
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song015_10_1
	.byte	PATT	
		.word	song015_10_2
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song015_10_1
	.byte	PATT	
		.word	song015_10_2
	.byte	W96
	.byte	W96
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
		.word	song015_10_3
	.byte	FINE

	@********************** Track  11 **********************@

	.global song015_11
song015_11:	@ 0x0826C809
	.byte	KEYSH	, 0
	.byte	VOICE	, 83
	.byte	VOL	, v085
	.byte	PAN	, c_v-34
	.byte	W03
song015_11_1:
	.byte		N06	, Cs1, v100
	.byte	W06
	.byte			Dn1
	.byte	W06
	.byte			Ds1
	.byte	W06
	.byte		N05	, En1
	.byte	W06
	.byte		N06	, Fn1
	.byte	W06
	.byte			Fs1
	.byte	W06
	.byte			Gn1
	.byte	W06
	.byte		N05	, Gs1
	.byte	W05
	.byte		N06	, An1
	.byte	W06
	.byte			As1
	.byte	W07
	.byte		N05	, Bn1
	.byte	W06
	.byte			Cn2
	.byte	W05
	.byte			Cs2
	.byte	W06
	.byte		N06	, Dn2
	.byte	W07
	.byte		N05	, Ds2
	.byte	W06
	.byte			En2
	.byte	W06
	.byte	PEND
song015_11_6:
	.byte	PATT	
		.word	song015_11_1
	.byte	PATT	
		.word	song015_11_1
	.byte	PATT	
		.word	song015_11_1
	.byte	PATT	
		.word	song015_11_1
	.byte	PATT	
		.word	song015_11_1
song015_11_4:
	.byte		N06	, Cs1, v100
	.byte	W06
	.byte			Dn1
	.byte	W06
	.byte			Ds1
	.byte	W06
	.byte		N05	, En1
	.byte	W06
	.byte		N06	, Fn1
	.byte	W06
	.byte			Fs1
	.byte	W06
	.byte			Gn1
	.byte	W06
	.byte		N05	, Gs1
	.byte	W05
	.byte		N06	, An1
	.byte	W06
	.byte			As1
	.byte	W07
	.byte		N05	, Bn1
	.byte	W06
	.byte			Cn2
	.byte	W05
	.byte			Cs2
	.byte	W06
	.byte		N06	, Dn2
	.byte	W07
	.byte		N05	, Ds2
	.byte	W06
	.byte			En2
	.byte	W05
	.byte		N06	, An1
	.byte	W01
	.byte	PEND
song015_11_5:
	.byte	W05
	.byte		N06	, As1, v100
	.byte	W07
	.byte		N05	, Bn1
	.byte	W06
	.byte			Cn2
	.byte	W42
	.byte			Bn1
	.byte	W06
	.byte			Cn2
	.byte	W05
	.byte			Cs2
	.byte	W06
	.byte		N06	, Dn2
	.byte	W07
	.byte		N05	, Ds2
	.byte	W06
	.byte			En2
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song015_11_1
	.byte	PATT	
		.word	song015_11_1
	.byte	PATT	
		.word	song015_11_1
	.byte	PATT	
		.word	song015_11_1
	.byte	PATT	
		.word	song015_11_1
	.byte	PATT	
		.word	song015_11_1
song015_11_2:
	.byte		N06	, Cs1, v100
	.byte	W06
	.byte			Dn1
	.byte	W06
	.byte			Ds1
	.byte	W06
	.byte		N05	, En1
	.byte	W06
	.byte		N06	, Fn1
	.byte	W06
	.byte			Fs1
	.byte	W06
	.byte			Gn1
	.byte	W06
	.byte		N05	, Gs1
	.byte	W05
	.byte		N06	, An1
	.byte	W06
	.byte			As1
	.byte	W07
	.byte		N05	, Bn1
	.byte	W06
	.byte			Cn2
	.byte	W05
	.byte			Cs2
	.byte	W06
	.byte		N06	, Dn2
	.byte	W07
	.byte		N05	, Ds2
	.byte	W06
	.byte			En2
	.byte	W05
	.byte		N06	, An1, v092
	.byte	W01
	.byte	PEND
song015_11_3:
	.byte	W05
	.byte		N06	, As1, v092
	.byte	W07
	.byte		N05	, Bn1
	.byte	W06
	.byte			Cn2
	.byte	W42
	.byte			Bn1
	.byte	W06
	.byte			Cn2
	.byte	W05
	.byte			Cs2
	.byte	W06
	.byte		N06	, Dn2
	.byte	W07
	.byte		N05	, Ds2
	.byte	W06
	.byte			En2
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song015_11_1
	.byte	PATT	
		.word	song015_11_1
	.byte	PATT	
		.word	song015_11_1
	.byte	PATT	
		.word	song015_11_1
	.byte	PATT	
		.word	song015_11_1
	.byte	PATT	
		.word	song015_11_1
	.byte	PATT	
		.word	song015_11_2
	.byte	PATT	
		.word	song015_11_3
	.byte	PATT	
		.word	song015_11_1
	.byte	PATT	
		.word	song015_11_1
	.byte	PATT	
		.word	song015_11_1
	.byte	PATT	
		.word	song015_11_1
	.byte	PATT	
		.word	song015_11_1
	.byte	PATT	
		.word	song015_11_1
	.byte	PATT	
		.word	song015_11_4
	.byte	PATT	
		.word	song015_11_5
	.byte	PATT	
		.word	song015_11_1
	.byte	GOTO	
		.word	song015_11_6
	.byte	PATT	
		.word	song015_11_1
	.byte	FINE

	@********************** Track  12 **********************@

	.global song015_12
song015_12:	@ 0x0826C960
	.byte	KEYSH	, 0
	.byte	VOICE	, 83
	.byte	VOL	, v063
	.byte	PAN	, c_v+56
	.byte	W03
	.byte	W96
song015_12_1:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N01	, Gn2, v068
	.byte		N01	, Dn3
	.byte	W01
	.byte		N04	
	.byte	W05
	.byte		N04	
	.byte	W06
	.byte		N06	, Bn2
	.byte	W06
	.byte		N03	, Dn3
	.byte	W06
	.byte		N03	
	.byte	W03
	.byte			Ds3
	.byte	W03
	.byte			En3
	.byte	W06
	.byte			Fn3
	.byte	W03
	.byte			Fs3
	.byte	W03
	.byte			Gs3
	.byte	W03
	.byte			An3
	.byte	W03
	.byte		N01	, Dn3
	.byte	W01
	.byte		N04	
	.byte	W05
	.byte		N04	
	.byte	W06
	.byte		N06	, Bn2
	.byte	W06
	.byte		N03	, Dn3
	.byte	W06
	.byte		N03	
	.byte	W03
	.byte			Ds3
	.byte	W03
	.byte			En3
	.byte	W06
	.byte			Fn3
	.byte	W03
	.byte			Fs3
	.byte	W03
	.byte			Gs3
	.byte	W03
	.byte			An3
	.byte	W03
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
		.word	song015_12_1
	.byte	FINE

	.align 2
	.global song015
song015:	@ 0x0826C9C8
	.byte	12		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	.word	voicegroup008		@ voicegroup/tone

	.word	song015_1		@ track
	.word	song015_2		@ track
	.word	song015_3		@ track
	.word	song015_4		@ track
	.word	song015_5		@ track
	.word	song015_6		@ track
	.word	song015_7		@ track
	.word	song015_8		@ track
	.word	song015_9		@ track
	.word	song015_10		@ track
	.word	song015_11		@ track
	.word	song015_12		@ track

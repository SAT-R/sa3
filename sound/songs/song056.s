	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song056_1
song056_1:	@ 0x082954F0
	.byte	KEYSH	, 0
song056_1_12:
	.byte	TEMPO	, 85
	.byte	VOICE	, 127
	.byte	VOL	, v085
	.byte	PAN	, c_v
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
song056_1_1:
	.byte		N24	, Gn7, v124
	.byte	W36
	.byte		N24	
	.byte	W36
	.byte	PEND
	.byte	PATT	
		.word	song056_1_1
	.byte	PATT	
		.word	song056_1_1
	.byte		N18	, Gs7, v124
	.byte	W24
	.byte			Gn7
	.byte	W24
	.byte			Gs7
	.byte	W24
song056_1_4:
	.byte		N72	, As4, v124
	.byte		N18	, Gn7
	.byte	W24
	.byte		N06	
	.byte	W12
	.byte		N12	, En4
	.byte	W24
	.byte		N06	, Gs7
	.byte	W12
	.byte	PEND
song056_1_3:
	.byte		N18	, Gn7, v124
	.byte	W24
	.byte		N06	
	.byte	W12
	.byte		N11	, En4
	.byte	W12
	.byte		N23	, Gn7
	.byte	W24
	.byte	PEND
song056_1_2:
	.byte		N18	, Gn7, v124
	.byte	W24
	.byte		N06	
	.byte	W12
	.byte		N12	, En4
	.byte	W24
	.byte		N06	, Gs7
	.byte	W12
	.byte	PEND
song056_1_5:
	.byte		N18	, Gn7, v124
	.byte	W24
	.byte		N06	
	.byte	W12
	.byte		N11	, En4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte		N05	, En4
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song056_1_2
	.byte	PATT	
		.word	song056_1_3
	.byte	PATT	
		.word	song056_1_2
song056_1_6:
	.byte		N12	, Gn7, v124
	.byte	W12
	.byte		N11	, En4
	.byte	W12
	.byte		N06	, Gn7
	.byte	W12
	.byte		N11	, En4
	.byte	W12
	.byte		N05	, Gn7
	.byte	W06
	.byte			En4
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song056_1_4
	.byte	PATT	
		.word	song056_1_3
	.byte	PATT	
		.word	song056_1_2
	.byte	PATT	
		.word	song056_1_5
	.byte	PATT	
		.word	song056_1_2
	.byte	PATT	
		.word	song056_1_3
	.byte	PATT	
		.word	song056_1_2
	.byte	PATT	
		.word	song056_1_6
	.byte	PATT	
		.word	song056_1_4
	.byte	PATT	
		.word	song056_1_3
	.byte	PATT	
		.word	song056_1_2
	.byte	PATT	
		.word	song056_1_5
	.byte	PATT	
		.word	song056_1_2
	.byte	PATT	
		.word	song056_1_3
	.byte	PATT	
		.word	song056_1_2
	.byte	PATT	
		.word	song056_1_6
	.byte	PATT	
		.word	song056_1_4
	.byte	PATT	
		.word	song056_1_3
	.byte	PATT	
		.word	song056_1_2
	.byte	PATT	
		.word	song056_1_5
	.byte	PATT	
		.word	song056_1_2
	.byte	PATT	
		.word	song056_1_3
	.byte	PATT	
		.word	song056_1_2
	.byte	PATT	
		.word	song056_1_6
song056_1_9:
	.byte		N72	, As4, v124
	.byte		N18	, Gn7
	.byte	W24
	.byte		N18	
	.byte	W24
	.byte			Gs7
	.byte	W24
	.byte	PEND
song056_1_7:
	.byte		N18	, Gn7, v124
	.byte	W24
	.byte		N18	
	.byte	W24
	.byte			Gs7
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song056_1_7
	.byte	PATT	
		.word	song056_1_7
	.byte		N72	, As4, v124
	.byte		N18	, Gn7
	.byte	W24
	.byte		N18	
	.byte	W24
	.byte		N06	, Gs7
	.byte	W12
	.byte		N11	, Dn5
	.byte	W12
	.byte		N06	, Gn7
	.byte	W12
	.byte			Gs7
	.byte	W12
	.byte		N18	, Gn7
	.byte	W24
	.byte		N06	, Gs7
	.byte	W06
	.byte		N05	, Dn5
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte		N18	, Gn7
	.byte	W24
	.byte		N18	
	.byte	W24
	.byte		N12	, Gs7
	.byte	W12
	.byte		N05	, Dn5
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N12	, Gs7
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte		N11	, Dn5
	.byte	W12
	.byte		N06	, Gs7
	.byte	W06
	.byte		N05	, Dn5
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N72	, As4
	.byte		N18	, Gn7
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte		N11	, Dn5
	.byte	W12
	.byte		N12	, Gs7
	.byte	W12
	.byte		N11	, Dn5
	.byte	W12
song056_1_8:
	.byte		N18	, Gn7, v124
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte		N11	, Dn5
	.byte	W12
	.byte		N12	, Gs7
	.byte	W12
	.byte		N11	, Dn5
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song056_1_8
	.byte		N18	, Gn7, v124
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte		N11	, Dn5
	.byte	W12
	.byte		N06	, Gs7
	.byte	W06
	.byte		N05	, Dn5
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte	PATT	
		.word	song056_1_8
	.byte	PATT	
		.word	song056_1_8
	.byte	PATT	
		.word	song056_1_8
	.byte		N18	, Gn7, v124
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte		N11	, Dn5
	.byte	W12
	.byte		N06	, Gs7
	.byte	W06
	.byte		N05	, Dn5
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte	PATT	
		.word	song056_1_9
	.byte		N18	, Gn7, v124
	.byte	W24
	.byte		N11	, En5
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
	.byte		N72	, As4
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte		N72	
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W24
	.byte		N09	, En4
	.byte	W12
	.byte		N09	
	.byte	W12
	.byte		N09	
	.byte	W12
	.byte		N09	
	.byte	W12
song056_1_11:
	.byte		N72	, As4, v124
	.byte		N18	, Gn7
	.byte	W24
	.byte		N12	, Gs7
	.byte	W12
	.byte		N11	, En4
	.byte	W12
	.byte		N12	, Gs7
	.byte	W12
	.byte		N11	, En4
	.byte	W12
	.byte	PEND
song056_1_10:
	.byte		N18	, Gn7, v124
	.byte	W24
	.byte		N12	, Gs7
	.byte	W12
	.byte		N11	, En4
	.byte	W12
	.byte		N12	, Gs7
	.byte	W12
	.byte		N11	, En4
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song056_1_10
	.byte	PATT	
		.word	song056_1_10
	.byte	PATT	
		.word	song056_1_10
	.byte	PATT	
		.word	song056_1_10
	.byte	PATT	
		.word	song056_1_10
	.byte	PATT	
		.word	song056_1_10
	.byte	PATT	
		.word	song056_1_11
	.byte	PATT	
		.word	song056_1_10
	.byte	PATT	
		.word	song056_1_10
	.byte	PATT	
		.word	song056_1_10
	.byte	PATT	
		.word	song056_1_10
	.byte	PATT	
		.word	song056_1_10
	.byte	PATT	
		.word	song056_1_10
	.byte	PATT	
		.word	song056_1_10
	.byte	GOTO	
		.word	song056_1_12
	.byte	FINE

	@********************** Track  2 **********************@

	.global song056_2
song056_2:	@ 0x08295744
	.byte	KEYSH	, 0
song056_2_21:
	.byte	VOICE	, 6
	.byte	VOL	, v085
	.byte	PAN	, c_v-30
	.byte	TUNE	, c_v+3
	.byte	BENDR	, 12
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
song056_2_1:
	.byte	BEND	, c_v-4
	.byte	W24
	.byte		c_v-4
	.byte		TIE	, An2, v104
	.byte	W06
	.byte	BEND	, c_v-3
	.byte	W06
	.byte		c_v-2
	.byte	W03
	.byte		c_v-1
	.byte	W01
	.byte		c_v
	.byte	W32
	.byte	PEND
song056_2_2:
	.byte	W68
	.byte	BEND	, c_v
	.byte	W01
	.byte		c_v+5
	.byte	W02
	.byte		c_v+11
	.byte	W01
	.byte	PEND
song056_2_3:
	.byte	BEND	, c_v+16
	.byte	W02
	.byte		c_v+22
	.byte	W01
	.byte		c_v+27
	.byte	W24
	.byte	W03
	.byte		c_v+27
	.byte	W01
	.byte		c_v+22
	.byte	W02
	.byte		c_v+16
	.byte	W01
	.byte		c_v+11
	.byte	W02
	.byte		c_v+2
	.byte	W01
	.byte		c_v
	.byte	W32
	.byte	W03
	.byte	PEND
song056_2_4:
	.byte	W44
	.byte	W01
	.byte	BEND	, c_v
	.byte	W02
	.byte		c_v+2
	.byte	W01
	.byte		c_v+5
	.byte	W02
	.byte		c_v+8
	.byte	W01
	.byte		c_v+11
	.byte	W18
	.byte		c_v+11
	.byte	W02
	.byte		c_v+15
	.byte	W01
	.byte	PEND
song056_2_5:
	.byte	BEND	, c_v+20
	.byte	W02
	.byte		c_v+24
	.byte	W01
	.byte		c_v+29
	.byte	W02
	.byte		c_v+34
	.byte	W01
	.byte		c_v+38
	.byte	W02
	.byte		c_v+43
	.byte	W01
	.byte		c_v+48
	.byte	W60
	.byte	W03
	.byte	PEND
song056_2_6:
	.byte	W68
	.byte	BEND	, c_v+48
	.byte	W01
	.byte		c_v+45
	.byte	W02
	.byte		c_v+42
	.byte	W01
	.byte	PEND
song056_2_7:
	.byte	BEND	, c_v+39
	.byte	W02
	.byte		c_v+35
	.byte	W01
	.byte		c_v+32
	.byte	W02
	.byte		c_v+29
	.byte	W01
	.byte		c_v+25
	.byte	W02
	.byte		c_v+22
	.byte	W01
	.byte		c_v+19
	.byte	W02
	.byte		c_v+15
	.byte	W01
	.byte		c_v+12
	.byte	W01
	.byte		c_v+11
	.byte	W56
	.byte	W03
	.byte	PEND
	.byte	W23
	.byte		EOT	, An2
	.byte	W01
	.byte		N06	, An2, v076
	.byte	W12
	.byte			An2, v056
	.byte	W12
	.byte			An2, v036
	.byte	W12
	.byte			An2, v016
	.byte	W11
	.byte	BEND	, c_v+11
	.byte	W01
	.byte	PATT	
		.word	song056_2_1
	.byte	PATT	
		.word	song056_2_2
song056_2_9:
	.byte	BEND	, c_v+16
	.byte	W02
	.byte		c_v+22
	.byte	W01
	.byte		c_v+27
	.byte	W21
	.byte		c_v+27
	.byte	W01
	.byte		c_v+23
	.byte	W02
	.byte		c_v+19
	.byte	W01
	.byte		c_v+15
	.byte	W02
	.byte		c_v+11
	.byte	W01
	.byte		c_v+6
	.byte	W02
	.byte		c_v
	.byte	W36
	.byte	W03
	.byte	PEND
song056_2_10:
	.byte	W30
	.byte	W01
	.byte	BEND	, c_v
	.byte	W01
	.byte		c_v+5
	.byte	W02
	.byte		c_v+10
	.byte	W01
	.byte		c_v+15
	.byte	W01
	.byte		c_v+16
	.byte	W30
	.byte		c_v+16
	.byte	W03
	.byte		c_v+15
	.byte	W03
	.byte	PEND
song056_2_11:
	.byte	BEND	, c_v+14
	.byte	W03
	.byte		c_v+13
	.byte	W03
	.byte		c_v+11
	.byte	W66
	.byte	PEND
	.byte	W72
	.byte		EOT	, An2
	.byte		N06	, An2, v076
	.byte	W12
	.byte			An2, v056
	.byte	W12
	.byte			An2, v036
	.byte	W12
	.byte			An2, v016
	.byte	W12
	.byte			An2, v004
	.byte	W24
	.byte	W68
	.byte	W03
	.byte	BEND	, c_v+11
	.byte	W01
song056_2_8:
	.byte	BEND	, c_v-4
	.byte	W24
	.byte		c_v-4
	.byte		TIE	, An2, v120
	.byte	W06
	.byte	BEND	, c_v-3
	.byte	W06
	.byte		c_v-2
	.byte	W03
	.byte		c_v-1
	.byte	W01
	.byte		c_v
	.byte	W32
	.byte	PEND
	.byte	PATT	
		.word	song056_2_2
	.byte	PATT	
		.word	song056_2_3
	.byte	PATT	
		.word	song056_2_4
	.byte	PATT	
		.word	song056_2_5
	.byte	PATT	
		.word	song056_2_6
	.byte	PATT	
		.word	song056_2_7
	.byte	W23
	.byte		EOT	, An2
	.byte	W01
	.byte		N06	, An2, v092
	.byte	W12
	.byte			An2, v072
	.byte	W12
	.byte			An2, v052
	.byte	W12
	.byte			An2, v032
	.byte	W11
	.byte	BEND	, c_v+11
	.byte	W01
	.byte	PATT	
		.word	song056_2_8
	.byte	PATT	
		.word	song056_2_2
	.byte	PATT	
		.word	song056_2_9
	.byte	PATT	
		.word	song056_2_10
	.byte	PATT	
		.word	song056_2_11
	.byte	W72
	.byte		EOT	, An2
	.byte		N06	, An2, v092
	.byte	W12
	.byte			An2, v072
	.byte	W12
	.byte			An2, v052
	.byte	W12
	.byte			An2, v032
	.byte	W12
	.byte			An2, v020
	.byte	W24
	.byte	W72
song056_2_12:
	.byte	BEND	, c_v
	.byte		N03	, An3, v124
	.byte	W06
	.byte			An3, v076
	.byte	W06
	.byte			En3, v104
	.byte	W06
	.byte			En3, v056
	.byte	W06
	.byte			Bn2, v084
	.byte	W06
	.byte			Bn2, v052
	.byte	W06
	.byte			Cs3, v116
	.byte	W06
	.byte			Cs3, v080
	.byte	W30
	.byte	PEND
song056_2_13:
	.byte	W12
	.byte		N03	, An3, v124
	.byte	W06
	.byte			An3, v076
	.byte	W06
	.byte			En3, v104
	.byte	W06
	.byte			En3, v056
	.byte	W06
	.byte			Bn2, v084
	.byte	W06
	.byte			Bn2, v052
	.byte	W06
	.byte			Cs3, v096
	.byte	W06
	.byte			Cs3, v048
	.byte	W06
	.byte			Gs3, v116
	.byte	W06
	.byte			Gs3, v068
	.byte	W06
	.byte	PEND
song056_2_14:
	.byte		N03	, An3, v124
	.byte	W06
	.byte			An3, v076
	.byte	W06
	.byte			En3, v104
	.byte	W06
	.byte			En3, v056
	.byte	W06
	.byte			Bn2, v084
	.byte	W06
	.byte			Bn2, v052
	.byte	W06
	.byte			Cs3, v116
	.byte	W06
	.byte			Cs3, v080
	.byte	W30
	.byte	PEND
song056_2_15:
	.byte	W12
	.byte		N03	, Cs3, v124
	.byte	W06
	.byte			Cs3, v076
	.byte	W06
	.byte			En3, v104
	.byte	W06
	.byte			En3, v056
	.byte	W06
	.byte			An3, v104
	.byte	W06
	.byte			An3, v072
	.byte	W06
	.byte			Bn3, v116
	.byte	W06
	.byte			Bn3, v068
	.byte	W06
	.byte			En3, v104
	.byte	W06
	.byte			En3, v056
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song056_2_12
	.byte	PATT	
		.word	song056_2_13
	.byte	PATT	
		.word	song056_2_14
	.byte	PATT	
		.word	song056_2_15
song056_2_16:
	.byte	BEND	, c_v
	.byte		N03	, An3, v116
	.byte	W06
	.byte			An3, v068
	.byte	W06
	.byte			En3, v096
	.byte	W06
	.byte			En3, v048
	.byte	W06
	.byte			Bn2, v076
	.byte	W06
	.byte			Bn2, v040
	.byte	W06
	.byte			Cs3, v104
	.byte	W06
	.byte			Cs3, v072
	.byte	W30
	.byte	PEND
song056_2_17:
	.byte	W12
	.byte		N03	, An3, v116
	.byte	W06
	.byte			An3, v068
	.byte	W06
	.byte			En3, v096
	.byte	W06
	.byte			En3, v048
	.byte	W06
	.byte			Bn2, v076
	.byte	W06
	.byte			Bn2, v040
	.byte	W06
	.byte			Cs3, v084
	.byte	W06
	.byte			Cs3, v036
	.byte	W06
	.byte			Gs3, v104
	.byte	W06
	.byte			Gs3, v056
	.byte	W06
	.byte	PEND
	.byte			An3, v116
	.byte	W06
	.byte			An3, v068
	.byte	W06
	.byte			En3, v096
	.byte	W06
	.byte			En3, v048
	.byte	W06
	.byte			Bn2, v076
	.byte	W06
	.byte			Bn2, v040
	.byte	W06
	.byte			Cs3, v104
	.byte	W06
	.byte			Cs3, v072
	.byte	W30
	.byte	W12
	.byte			Cs3, v116
	.byte	W06
	.byte			Cs3, v068
	.byte	W06
	.byte			En3, v096
	.byte	W06
	.byte			En3, v048
	.byte	W06
	.byte			An3, v096
	.byte	W06
	.byte			An3, v060
	.byte	W06
	.byte			Bn3, v104
	.byte	W06
	.byte			Bn3, v056
	.byte	W06
	.byte			En3, v096
	.byte	W06
	.byte			En3, v048
	.byte	W06
	.byte	PATT	
		.word	song056_2_16
	.byte	PATT	
		.word	song056_2_17
	.byte	PATT	
		.word	song056_2_17
	.byte		N03	, An3, v116
	.byte	W06
	.byte			An3, v068
	.byte	W06
	.byte			Bn3, v116
	.byte	W06
	.byte			Bn3, v068
	.byte	W06
	.byte			Cs4, v116
	.byte	W06
	.byte			Dn4, v120
	.byte	W06
	.byte			Cs4, v104
	.byte	W06
	.byte			An3, v084
	.byte	W06
	.byte			Bn3, v104
	.byte	W06
	.byte			En3, v084
	.byte	W06
	.byte			En3, v060
	.byte	W06
	.byte			An3, v104
	.byte	W06
	.byte			Gn3, v116
	.byte	W06
	.byte			Gn3, v068
	.byte	W06
	.byte			Gn3, v056
	.byte	W06
	.byte			Gn3, v048
	.byte	W06
	.byte			Gn3, v036
	.byte	W12
	.byte			Fn3, v084
	.byte	W06
	.byte			Fn3, v068
	.byte	W06
	.byte			Fn3, v056
	.byte	W06
	.byte			Fn3, v048
	.byte	W06
	.byte			Fn3, v036
	.byte	W12
	.byte	W12
	.byte			En3, v116
	.byte	W06
	.byte			En3, v068
	.byte	W06
	.byte			En3, v056
	.byte	W06
	.byte			En3, v048
	.byte	W06
	.byte			Bn2, v084
	.byte	W06
	.byte			Bn2, v068
	.byte	W06
	.byte			Bn2, v056
	.byte	W06
	.byte			Bn2, v048
	.byte	W06
	.byte			Bn2, v036
	.byte	W12
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W68
	.byte	W03
	.byte	BEND	, c_v
	.byte	W01
	.byte		TIE	, En3, v116
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W48
	.byte		EOT	
	.byte		N03	, En3, v084
	.byte	W06
	.byte			En3, v076
	.byte	W06
	.byte			En3, v056
	.byte	W06
	.byte			En3, v044
	.byte	W06
song056_2_18:
	.byte	BEND	, c_v
	.byte		TIE	, En3, v116
	.byte	W64
	.byte	BEND	, c_v
	.byte	W02
	.byte		c_v-4
	.byte	W01
	.byte		c_v-8
	.byte	W02
	.byte		c_v-12
	.byte	W01
	.byte		c_v-16
	.byte	W02
	.byte	PEND
song056_2_19:
	.byte	BEND	, c_v-21
	.byte	W01
	.byte		c_v-25
	.byte	W01
	.byte		c_v-27
	.byte	W42
	.byte		c_v-27
	.byte	W02
	.byte		c_v-25
	.byte	W01
	.byte		c_v-22
	.byte	W02
	.byte		c_v-20
	.byte	W01
	.byte		c_v-17
	.byte	W02
	.byte		c_v-15
	.byte	W01
	.byte		c_v-12
	.byte	W02
	.byte		c_v-9
	.byte	W01
	.byte		c_v-7
	.byte	W02
	.byte		c_v-4
	.byte	W01
	.byte		c_v-2
	.byte	W02
	.byte		c_v+1
	.byte	W01
	.byte		c_v+4
	.byte	W02
	.byte		c_v+6
	.byte	W01
	.byte		c_v+9
	.byte	W02
	.byte		c_v+11
	.byte	W01
	.byte		c_v+14
	.byte	W02
	.byte		c_v+17
	.byte	W01
	.byte		c_v+19
	.byte	W01
	.byte	PEND
song056_2_20:
	.byte	W01
	.byte	BEND	, c_v+22
	.byte	W01
	.byte		c_v+24
	.byte	W02
	.byte		c_v+27
	.byte	W68
	.byte	PEND
	.byte	W48
	.byte		EOT	, En3
	.byte		N03	, En3, v084
	.byte	W06
	.byte			En3, v076
	.byte	W06
	.byte			En3, v056
	.byte	W06
	.byte			En3, v044
	.byte	W05
	.byte	BEND	, c_v
	.byte	W01
	.byte		TIE	, En3, v116
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W48
	.byte		EOT	
	.byte		N03	, En3, v084
	.byte	W06
	.byte			En3, v076
	.byte	W06
	.byte			En3, v056
	.byte	W06
	.byte			En3, v044
	.byte	W06
	.byte	PATT	
		.word	song056_2_18
	.byte	PATT	
		.word	song056_2_19
	.byte	PATT	
		.word	song056_2_20
	.byte	W48
	.byte		EOT	, En3
	.byte		N03	, En3, v084
	.byte	W06
	.byte			En3, v076
	.byte	W06
	.byte			En3, v056
	.byte	W06
	.byte			En3, v044
	.byte	W06
	.byte	GOTO	
		.word	song056_2_21
	.byte	FINE

	@********************** Track  3 **********************@

	.global song056_3
song056_3:	@ 0x08295AD1
	.byte	KEYSH	, 0
song056_3_12:
	.byte	VOICE	, 6
	.byte	VOL	, v085
	.byte	PAN	, c_v+30
	.byte	TUNE	, c_v-4
	.byte	BENDR	, 12
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W06
	.byte	BEND	, c_v-4
	.byte	W24
	.byte		c_v-4
	.byte		TIE	, An2, v104
	.byte	W06
	.byte	BEND	, c_v-3
	.byte	W06
	.byte		c_v-2
	.byte	W03
	.byte		c_v-1
	.byte	W01
	.byte		c_v
	.byte	W24
	.byte	W02
	.byte	W72
song056_3_1:
	.byte	W02
	.byte	BEND	, c_v
	.byte	W01
	.byte		c_v+5
	.byte	W02
	.byte		c_v+11
	.byte	W01
	.byte		c_v+16
	.byte	W02
	.byte		c_v+22
	.byte	W01
	.byte		c_v+27
	.byte	W24
	.byte	W03
	.byte		c_v+27
	.byte	W01
	.byte		c_v+22
	.byte	W02
	.byte		c_v+16
	.byte	W01
	.byte		c_v+11
	.byte	W02
	.byte		c_v+2
	.byte	W01
	.byte		c_v
	.byte	W28
	.byte	W01
	.byte	PEND
song056_3_2:
	.byte	W48
	.byte	W03
	.byte	BEND	, c_v
	.byte	W02
	.byte		c_v+2
	.byte	W01
	.byte		c_v+5
	.byte	W02
	.byte		c_v+8
	.byte	W01
	.byte		c_v+11
	.byte	W15
	.byte	PEND
song056_3_3:
	.byte	W03
	.byte	BEND	, c_v+11
	.byte	W02
	.byte		c_v+15
	.byte	W01
	.byte		c_v+20
	.byte	W02
	.byte		c_v+24
	.byte	W01
	.byte		c_v+29
	.byte	W02
	.byte		c_v+34
	.byte	W01
	.byte		c_v+38
	.byte	W02
	.byte		c_v+43
	.byte	W01
	.byte		c_v+48
	.byte	W56
	.byte	W01
	.byte	PEND
	.byte	W72
song056_3_4:
	.byte	W02
	.byte	BEND	, c_v+48
	.byte	W01
	.byte		c_v+45
	.byte	W02
	.byte		c_v+42
	.byte	W01
	.byte		c_v+39
	.byte	W02
	.byte		c_v+35
	.byte	W01
	.byte		c_v+32
	.byte	W02
	.byte		c_v+29
	.byte	W01
	.byte		c_v+25
	.byte	W02
	.byte		c_v+22
	.byte	W01
	.byte		c_v+19
	.byte	W02
	.byte		c_v+15
	.byte	W01
	.byte		c_v+12
	.byte	W01
	.byte		c_v+11
	.byte	W52
	.byte	W01
	.byte	PEND
	.byte	W28
	.byte	W01
	.byte		EOT	, An2
	.byte	W01
	.byte		N06	, An2, v076
	.byte	W12
	.byte			An2, v056
	.byte	W12
	.byte			An2, v036
	.byte	W12
	.byte			An2, v016
	.byte	W06
	.byte	W05
	.byte	BEND	, c_v+11
	.byte	W01
	.byte		c_v-4
	.byte	W24
	.byte		c_v-4
	.byte		TIE	, An2, v104
	.byte	W06
	.byte	BEND	, c_v-3
	.byte	W06
	.byte		c_v-2
	.byte	W03
	.byte		c_v-1
	.byte	W01
	.byte		c_v
	.byte	W24
	.byte	W02
	.byte	W72
song056_3_6:
	.byte	W02
	.byte	BEND	, c_v
	.byte	W01
	.byte		c_v+5
	.byte	W02
	.byte		c_v+11
	.byte	W01
	.byte		c_v+16
	.byte	W02
	.byte		c_v+22
	.byte	W01
	.byte		c_v+27
	.byte	W21
	.byte		c_v+27
	.byte	W01
	.byte		c_v+23
	.byte	W02
	.byte		c_v+19
	.byte	W01
	.byte		c_v+15
	.byte	W02
	.byte		c_v+11
	.byte	W01
	.byte		c_v+6
	.byte	W02
	.byte		c_v
	.byte	W32
	.byte	W01
	.byte	PEND
song056_3_7:
	.byte	W36
	.byte	W01
	.byte	BEND	, c_v
	.byte	W01
	.byte		c_v+5
	.byte	W02
	.byte		c_v+10
	.byte	W01
	.byte		c_v+15
	.byte	W01
	.byte		c_v+16
	.byte	W30
	.byte	PEND
song056_3_8:
	.byte	BEND	, c_v+16
	.byte	W03
	.byte		c_v+15
	.byte	W03
	.byte		c_v+14
	.byte	W03
	.byte		c_v+13
	.byte	W03
	.byte		c_v+11
	.byte	W60
	.byte	PEND
	.byte	W72
	.byte	W06
	.byte		EOT	, An2
	.byte		N06	, An2, v076
	.byte	W12
	.byte			An2, v056
	.byte	W12
	.byte			An2, v036
	.byte	W12
	.byte			An2, v016
	.byte	W12
	.byte			An2, v004
	.byte	W18
	.byte	W72
song056_3_5:
	.byte	W05
	.byte	BEND	, c_v+11
	.byte	W01
	.byte		c_v-4
	.byte	W24
	.byte		c_v-4
	.byte		TIE	, An2, v120
	.byte	W06
	.byte	BEND	, c_v-3
	.byte	W06
	.byte		c_v-2
	.byte	W03
	.byte		c_v-1
	.byte	W01
	.byte		c_v
	.byte	W24
	.byte	W02
	.byte	PEND
	.byte	W72
	.byte	PATT	
		.word	song056_3_1
	.byte	PATT	
		.word	song056_3_2
	.byte	PATT	
		.word	song056_3_3
	.byte	W72
	.byte	PATT	
		.word	song056_3_4
	.byte	W28
	.byte	W01
	.byte		EOT	, An2
	.byte	W01
	.byte		N06	, An2, v092
	.byte	W12
	.byte			An2, v072
	.byte	W12
	.byte			An2, v052
	.byte	W12
	.byte			An2, v032
	.byte	W06
	.byte	PATT	
		.word	song056_3_5
	.byte	W72
	.byte	PATT	
		.word	song056_3_6
	.byte	PATT	
		.word	song056_3_7
	.byte	PATT	
		.word	song056_3_8
	.byte	W72
	.byte	W06
	.byte		EOT	, An2
	.byte		N06	, An2, v092
	.byte	W12
	.byte			An2, v072
	.byte	W12
	.byte			An2, v052
	.byte	W12
	.byte			An2, v032
	.byte	W12
	.byte			An2, v020
	.byte	W18
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W02
	.byte	BEND	, c_v
	.byte	W01
	.byte		TIE	, En3, v116
	.byte	W64
	.byte	BEND	, c_v
	.byte	W02
	.byte		c_v-4
	.byte	W01
	.byte		c_v-8
	.byte	W02
song056_3_9:
	.byte	BEND	, c_v-12
	.byte	W01
	.byte		c_v-16
	.byte	W02
	.byte		c_v-21
	.byte	W01
	.byte		c_v-25
	.byte	W01
	.byte		c_v-27
	.byte	W42
	.byte		c_v-27
	.byte	W02
	.byte		c_v-25
	.byte	W01
	.byte		c_v-22
	.byte	W02
	.byte		c_v-20
	.byte	W01
	.byte		c_v-17
	.byte	W02
	.byte		c_v-15
	.byte	W01
	.byte		c_v-12
	.byte	W02
	.byte		c_v-9
	.byte	W01
	.byte		c_v-7
	.byte	W02
	.byte		c_v-4
	.byte	W01
	.byte		c_v-2
	.byte	W02
	.byte		c_v+1
	.byte	W01
	.byte		c_v+4
	.byte	W02
	.byte		c_v+6
	.byte	W01
	.byte		c_v+9
	.byte	W02
	.byte		c_v+11
	.byte	W01
	.byte		c_v+14
	.byte	W01
	.byte	PEND
song056_3_10:
	.byte	W01
	.byte	BEND	, c_v+17
	.byte	W01
	.byte		c_v+19
	.byte	W02
	.byte		c_v+22
	.byte	W01
	.byte		c_v+24
	.byte	W02
	.byte		c_v+27
	.byte	W64
	.byte	W01
	.byte	PEND
	.byte	W48
	.byte	W03
	.byte		EOT	, En3
	.byte		N03	, En3, v084
	.byte	W06
	.byte			En3, v076
	.byte	W06
	.byte			En3, v056
	.byte	W06
	.byte			En3, v044
	.byte	W03
song056_3_11:
	.byte	W02
	.byte	BEND	, c_v
	.byte	W01
	.byte		TIE	, En3, v116
	.byte	W68
	.byte	W01
	.byte	PEND
	.byte	W72
	.byte	W72
	.byte	W48
	.byte	W03
	.byte		EOT	
	.byte		N03	, En3, v084
	.byte	W06
	.byte			En3, v076
	.byte	W06
	.byte			En3, v056
	.byte	W06
	.byte			En3, v044
	.byte	W03
	.byte	W03
	.byte	BEND	, c_v
	.byte		TIE	, En3, v116
	.byte	W64
	.byte	BEND	, c_v
	.byte	W02
	.byte		c_v-4
	.byte	W01
	.byte		c_v-8
	.byte	W02
	.byte	PATT	
		.word	song056_3_9
	.byte	PATT	
		.word	song056_3_10
	.byte	W48
	.byte	W03
	.byte		EOT	, En3
	.byte		N03	, En3, v084
	.byte	W06
	.byte			En3, v076
	.byte	W06
	.byte			En3, v056
	.byte	W06
	.byte			En3, v044
	.byte	W03
	.byte	PATT	
		.word	song056_3_11
	.byte	W72
	.byte	W72
	.byte	W48
	.byte	W03
	.byte		EOT	, En3
	.byte		N03	, En3, v084
	.byte	W06
	.byte			En3, v076
	.byte	W06
	.byte			En3, v056
	.byte	W06
	.byte			En3, v044
	.byte	W03
	.byte	GOTO	
		.word	song056_3_12
	.byte	FINE

	@********************** Track  4 **********************@

	.global song056_4
song056_4:	@ 0x08295D17
	.byte	KEYSH	, 0
song056_4_14:
	.byte	VOICE	, 63
	.byte	VOL	, v085
	.byte	PAN	, c_v
	.byte		TIE	, Gs2, v127
	.byte	W72
	.byte	W68
	.byte	W02
	.byte		EOT	
	.byte	W02
	.byte		TIE	, Gn2
	.byte	W72
	.byte	W68
	.byte	W02
	.byte		EOT	
	.byte	W02
	.byte		TIE	, Gs2
	.byte	W72
	.byte	W68
	.byte	W02
	.byte		EOT	
	.byte	W02
	.byte		TIE	, As2
	.byte	W72
	.byte	W68
	.byte	W02
	.byte		EOT	
	.byte	W02
song056_4_1:
	.byte		N22	, Gn3, v127
	.byte	W36
	.byte		N22	
	.byte	W36
	.byte	PEND
song056_4_2:
	.byte		N23	, Cn4, v127
	.byte	W24
	.byte		N24	, Gn3
	.byte	W48
	.byte	PEND
song056_4_3:
	.byte		N22	, Gs3, v127
	.byte	W36
	.byte		N22	
	.byte	W36
	.byte	PEND
song056_4_4:
	.byte		N23	, Cs4, v127
	.byte	W24
	.byte		N24	, Gs3
	.byte	W48
	.byte	PEND
song056_4_5:
	.byte		N22	, An3, v127
	.byte	W36
	.byte		N22	
	.byte	W36
	.byte	PEND
song056_4_6:
	.byte		N23	, Dn4, v127
	.byte	W24
	.byte		N24	, An3
	.byte	W48
	.byte	PEND
song056_4_7:
	.byte		N22	, As3, v127
	.byte	W36
	.byte		N22	
	.byte	W36
	.byte	PEND
song056_4_8:
	.byte		N23	, Ds4, v127
	.byte	W24
	.byte			As3
	.byte	W24
	.byte			Gn3
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song056_4_1
	.byte	PATT	
		.word	song056_4_2
	.byte	PATT	
		.word	song056_4_3
	.byte	PATT	
		.word	song056_4_4
	.byte	PATT	
		.word	song056_4_5
	.byte	PATT	
		.word	song056_4_6
	.byte	PATT	
		.word	song056_4_7
	.byte	PATT	
		.word	song056_4_8
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W68
	.byte	W03
	.byte	PAN	, c_v+40
	.byte	W01
song056_4_9:
	.byte		N23	, Fs2, v124
	.byte	W24
	.byte		N44	, Fs3
	.byte	W48
	.byte	PEND
song056_4_10:
	.byte		N23	, Gn2, v124
	.byte	W24
	.byte		N44	, Gn3
	.byte	W48
	.byte	PEND
	.byte	PATT	
		.word	song056_4_9
song056_4_11:
	.byte		N23	, Gn2, v124
	.byte	W24
	.byte			Gn3
	.byte	W24
	.byte			Cn4
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song056_4_9
	.byte	PATT	
		.word	song056_4_10
	.byte	PATT	
		.word	song056_4_9
	.byte	PATT	
		.word	song056_4_11
song056_4_12:
	.byte		N23	, Fs2, v124
	.byte	W24
	.byte			Fs3
	.byte	W24
	.byte			Fs4
	.byte	W24
	.byte	PEND
song056_4_13:
	.byte		N23	, Gn2, v124
	.byte	W24
	.byte			Gn3
	.byte	W24
	.byte			Gn4
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song056_4_12
	.byte	PATT	
		.word	song056_4_13
	.byte	PATT	
		.word	song056_4_12
	.byte	PATT	
		.word	song056_4_13
	.byte	PATT	
		.word	song056_4_12
	.byte	PATT	
		.word	song056_4_13
	.byte		N11	, Fs2, v124
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte			Fs4
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte			Fs4
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte			Gn4
	.byte	W12
	.byte			Gn2
	.byte	W36
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	GOTO	
		.word	song056_4_14
	.byte	FINE

	@********************** Track  5 **********************@

	.global song056_5
song056_5:	@ 0x08295E53
	.byte	KEYSH	, 0
song056_5_5:
	.byte	VOICE	, 1
	.byte	VOL	, v073
	.byte	PAN	, c_v-40
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W24
	.byte		N44	, En4, v104
	.byte	W48
	.byte		N23	, Cn4
	.byte	W24
	.byte		N44	, En4
	.byte	W48
	.byte	W24
	.byte			Dn4, v116
	.byte	W48
	.byte		N68	, An4, v124
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	VOICE	, 1
	.byte	VOL	, v085
	.byte	PAN	, c_v
	.byte	W72
song056_5_1:
	.byte	W12
	.byte		N11	, Gn3, v124
	.byte	W24
	.byte			Gn3, v096
	.byte	W24
	.byte			Gn3, v076
	.byte	W12
	.byte	PEND
song056_5_2:
	.byte	W12
	.byte		N11	, Gn3, v124
	.byte	W24
	.byte			Gn3, v096
	.byte	W24
	.byte			Dn4, v124
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song056_5_1
	.byte	PATT	
		.word	song056_5_2
	.byte	PATT	
		.word	song056_5_1
	.byte	PATT	
		.word	song056_5_2
	.byte	PATT	
		.word	song056_5_1
	.byte	PATT	
		.word	song056_5_2
song056_5_3:
	.byte	W12
	.byte		N11	, Dn4, v124
	.byte	W24
	.byte			Dn4, v096
	.byte	W24
	.byte			Dn4, v076
	.byte	W12
	.byte	PEND
song056_5_4:
	.byte	W12
	.byte		N11	, Dn4, v124
	.byte	W24
	.byte			Dn4, v096
	.byte	W24
	.byte			Gn4, v124
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song056_5_3
	.byte	PATT	
		.word	song056_5_4
	.byte	PATT	
		.word	song056_5_3
	.byte	PATT	
		.word	song056_5_4
	.byte	PATT	
		.word	song056_5_3
	.byte	PATT	
		.word	song056_5_4
	.byte	PATT	
		.word	song056_5_3
	.byte	W12
	.byte		N11	, Gn4, v124
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte		TIE	, Bn2
	.byte	W72
	.byte	W72
	.byte		EOT	
	.byte		TIE	, Cn3
	.byte	W72
	.byte	W72
	.byte		EOT	
	.byte		TIE	, Bn2
	.byte	W72
	.byte	W72
	.byte		EOT	
	.byte		N72	, Cn3
	.byte	W72
	.byte			Fn3
	.byte	W72
	.byte		TIE	, Bn2
	.byte	W72
	.byte	W72
	.byte		EOT	
	.byte		TIE	, Cn3
	.byte	W72
	.byte	W72
	.byte		EOT	
	.byte		TIE	, Bn2
	.byte	W72
	.byte	W72
	.byte		EOT	
	.byte		N72	, Cn3
	.byte	W72
	.byte			Fn3
	.byte	W72
	.byte		TIE	, Bn2, v116
	.byte	W72
	.byte	W72
	.byte		EOT	
	.byte		TIE	, Cn3
	.byte	W72
	.byte	W72
	.byte		EOT	
	.byte		TIE	, Bn2
	.byte	W72
	.byte	W72
	.byte		EOT	
	.byte		N72	, Cn3
	.byte	W72
	.byte			Fn3
	.byte	W72
	.byte		TIE	, Bn2
	.byte	W72
	.byte	W72
	.byte		EOT	
	.byte		TIE	, Cn3
	.byte	W72
	.byte	W72
	.byte		EOT	
	.byte		TIE	, Bn2
	.byte	W72
	.byte	W72
	.byte		EOT	
	.byte		N72	, Cn3
	.byte	W72
	.byte			Fn3
	.byte	W72
	.byte	GOTO	
		.word	song056_5_5
	.byte	FINE

	@********************** Track  6 **********************@

	.global song056_6
song056_6:	@ 0x08295F69
	.byte	KEYSH	, 0
song056_6_1:
	.byte	VOICE	, 1
	.byte	VOL	, v073
	.byte	PAN	, c_v+40
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W24
	.byte		N44	, En3, v104
	.byte	W48
	.byte		N23	, Cn3
	.byte	W24
	.byte		N44	, En3
	.byte	W48
	.byte	W24
	.byte			Dn3, v116
	.byte	W48
	.byte		N68	, An3, v124
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	GOTO	
		.word	song056_6_1
	.byte	FINE

	@********************** Track  7 **********************@

	.global song056_7
song056_7:	@ 0x08295FE0
	.byte	KEYSH	, 0
song056_7_9:
	.byte	VOICE	, 16
	.byte	VOL	, v040
	.byte	PAN	, c_v
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
song056_7_1:
	.byte	W06
	.byte	VOICE	, 16
	.byte	W28
	.byte	W01
	.byte		N07	, Fs3, v104
	.byte	W10
	.byte	VOICE	, 18
	.byte	W02
	.byte		N24	, Bn2
	.byte	W24
	.byte	W01
	.byte	PEND
	.byte	PATT	
		.word	song056_7_1
	.byte	W06
	.byte	VOICE	, 16
	.byte	W28
	.byte	W01
	.byte		N07	, Gn3, v104
	.byte	W10
	.byte	VOICE	, 18
	.byte	W02
	.byte		N24	, Cs3
	.byte	W24
	.byte			Gn3
	.byte	W01
	.byte	W23
	.byte			Cs3
	.byte	W24
	.byte			An3
	.byte	W24
	.byte	W01
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
song056_7_2:
	.byte	W06
	.byte	VOICE	, 16
	.byte	W28
	.byte	W01
	.byte		N07	, Fs3, v116
	.byte	W10
	.byte	VOICE	, 18
	.byte	W02
	.byte		N24	, Bn2, v104
	.byte	W24
	.byte	W01
	.byte	PEND
song056_7_5:
	.byte	W06
	.byte	VOICE	, 17
	.byte	W05
	.byte		N07	, Bn2, v116
	.byte	W10
	.byte	VOICE	, 18
	.byte	W02
	.byte		N24	, Fs3, v104
	.byte	W48
	.byte	W01
	.byte	PEND
song056_7_3:
	.byte	W06
	.byte	VOICE	, 16
	.byte	W28
	.byte	W01
	.byte		N07	, Gn3, v116
	.byte	W10
	.byte	VOICE	, 18
	.byte	W02
	.byte		N24	, Cn3, v104
	.byte	W24
	.byte	W01
	.byte	PEND
song056_7_6:
	.byte	W06
	.byte	VOICE	, 17
	.byte	W05
	.byte		N07	, Cn3, v116
	.byte	W10
	.byte	VOICE	, 18
	.byte	W02
	.byte		N24	, Gn3, v104
	.byte	W24
	.byte		N18	, Cn4
	.byte	W24
	.byte	W01
	.byte	PEND
song056_7_4:
	.byte	W06
	.byte	VOICE	, 16
	.byte	W28
	.byte	W01
	.byte		N07	, Gs3, v116
	.byte	W10
	.byte	VOICE	, 18
	.byte	W02
	.byte		N24	, Cs3, v104
	.byte	W24
	.byte	W01
	.byte	PEND
	.byte	W06
	.byte	VOICE	, 17
	.byte	W05
	.byte		N07	, Cs3, v116
	.byte	W10
	.byte	VOICE	, 18
	.byte	W02
	.byte		N24	, Gs3, v104
	.byte	W30
	.byte	W01
	.byte	VOICE	, 16
	.byte	W18
	.byte	W11
	.byte		N07	, An3, v116
	.byte	W10
	.byte	VOICE	, 18
	.byte	W02
	.byte		N24	, Fs3, v104
	.byte	W30
	.byte	W01
	.byte	VOICE	, 17
	.byte	W05
	.byte		N07	, An3, v116
	.byte	W10
	.byte	VOICE	, 18
	.byte	W02
	.byte		N24	, Dn4, v104
	.byte	W01
	.byte	W23
	.byte		N30	, An3
	.byte	W48
	.byte	W01
	.byte	PATT	
		.word	song056_7_2
song056_7_7:
	.byte	W06
	.byte	VOICE	, 17
	.byte	W05
	.byte		N07	, Bn2, v116
	.byte	W10
	.byte	VOICE	, 18
	.byte	W02
	.byte		N11	, Bn3, v104
	.byte	W12
	.byte			Fs3
	.byte	W24
	.byte		N11	
	.byte	W13
	.byte	PEND
	.byte	PATT	
		.word	song056_7_3
song056_7_8:
	.byte	W06
	.byte	VOICE	, 17
	.byte	W05
	.byte		N07	, Cn3, v116
	.byte	W10
	.byte	VOICE	, 18
	.byte	W02
	.byte		N11	, Cn4, v104
	.byte	W12
	.byte		N07	, Gn3
	.byte	W12
	.byte		N18	, En4
	.byte	W24
	.byte	W01
	.byte	PEND
	.byte	PATT	
		.word	song056_7_4
	.byte	W06
	.byte	VOICE	, 17
	.byte	W05
	.byte		N07	, Cs3, v116
	.byte	W10
	.byte	VOICE	, 18
	.byte	W02
	.byte		N11	, Cs4, v104
	.byte	W12
	.byte			Gs3
	.byte	W19
	.byte	VOICE	, 16
	.byte	W05
	.byte		N11	
	.byte	W13
	.byte	W11
	.byte		N07	, An3, v116
	.byte	W10
	.byte	VOICE	, 18
	.byte	W02
	.byte		N24	, Fs3, v104
	.byte	W30
	.byte	W01
	.byte	VOICE	, 17
	.byte	W05
	.byte		N07	, An3, v116
	.byte	W12
	.byte	VOICE	, 16
	.byte		N11	, Fs3, v104
	.byte	W01
	.byte	W11
	.byte	VOICE	, 17
	.byte		N11	, An3
	.byte	W12
	.byte	VOICE	, 18
	.byte		N11	, Dn4
	.byte	W12
	.byte	VOICE	, 17
	.byte		N11	, An3
	.byte	W24
	.byte		N12	, Fs3
	.byte	W13
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	PATT	
		.word	song056_7_2
	.byte	PATT	
		.word	song056_7_5
	.byte	PATT	
		.word	song056_7_3
	.byte	PATT	
		.word	song056_7_6
	.byte	PATT	
		.word	song056_7_2
	.byte	PATT	
		.word	song056_7_7
	.byte	PATT	
		.word	song056_7_3
	.byte	PATT	
		.word	song056_7_8
	.byte	PATT	
		.word	song056_7_2
	.byte	PATT	
		.word	song056_7_5
	.byte	PATT	
		.word	song056_7_3
	.byte	PATT	
		.word	song056_7_6
	.byte	PATT	
		.word	song056_7_2
	.byte	PATT	
		.word	song056_7_7
	.byte	PATT	
		.word	song056_7_3
	.byte	PATT	
		.word	song056_7_8
	.byte	GOTO	
		.word	song056_7_9
	.byte	FINE

	@********************** Track  8 **********************@

	.global song056_8
song056_8:	@ 0x082961AC
	.byte	KEYSH	, 0
song056_8_2:
	.byte	VOICE	, 107
	.byte	VOL	, v085
	.byte	PAN	, c_v
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte		TIE	, Fs3, v124
	.byte		TIE	, Fs4, v116
	.byte	W72
	.byte	W24
	.byte		N48	, En3, v124
	.byte		N48	, En4, v116
	.byte	W01
	.byte		EOT	, Fs3
	.byte			Fs4
	.byte	W44
	.byte	W03
	.byte		N84	, Cs3, v124
	.byte		N84	, Cs4, v116
	.byte	W72
	.byte	W24
	.byte		N24	, Bn2, v124
	.byte		N24	, Bn3, v116
	.byte	W24
	.byte			En2, v124
	.byte		N24	, En3, v116
	.byte	W24
	.byte			Fs2, v124
	.byte		N24	, Fs3, v116
	.byte	W24
	.byte			An2, v124
	.byte		N24	, An3, v116
	.byte	W24
	.byte			Bn2, v124
	.byte		N24	, Bn3, v116
	.byte	W24
	.byte		N42	, Cs3, v124
	.byte		N42	, Cs4, v116
	.byte	W48
	.byte		N24	, En3, v124
	.byte		N24	, En4, v116
	.byte	W24
song056_8_1:
	.byte		N72	, Fs3, v124
	.byte		N72	, Fs4, v116
	.byte	W72
	.byte	PEND
	.byte			Bn2, v124
	.byte		N72	, Bn3, v116
	.byte	W72
	.byte	W24
	.byte		N24	, En3, v124
	.byte		N24	, En4, v116
	.byte	W24
	.byte			Bn2, v124
	.byte		N24	, Bn3, v116
	.byte	W24
	.byte			Cs3, v124
	.byte		N24	, Cs4, v116
	.byte	W24
	.byte			En3, v124
	.byte		N24	, En4, v116
	.byte	W24
	.byte			Fs3, v124
	.byte		N24	, Fs4, v116
	.byte	W24
	.byte		N72	, An3, v124
	.byte		N72	, An4, v116
	.byte	W72
	.byte		N66	, Gs3, v124
	.byte		N66	, Gs4, v116
	.byte	W72
	.byte		N72	, En3, v124
	.byte		N72	, En4, v116
	.byte	W72
	.byte	PATT	
		.word	song056_8_1
	.byte		TIE	, An3, v124
	.byte		TIE	, An4, v116
	.byte	W72
	.byte	W66
	.byte		EOT	, An3
	.byte			An4
	.byte	W06
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	GOTO	
		.word	song056_8_2
	.byte	FINE

	@********************** Track  9 **********************@

	.global song056_9
song056_9:	@ 0x082962A1
	.byte	KEYSH	, 0
song056_9_22:
	.byte	VOICE	, 3
	.byte	VOL	, v078
	.byte	PAN	, c_v
	.byte		N04	, Dn2, v124
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W06
	.byte		N18	
	.byte	W24
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W06
	.byte		N18	
	.byte	W24
song056_9_1:
	.byte		N04	, Cs2, v124
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W06
	.byte		N18	
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song056_9_1
song056_9_2:
	.byte		N04	, Dn2, v124
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W06
	.byte		N12	, Dn3
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song056_9_2
	.byte		N04	, En2, v124
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W06
	.byte		N12	, En3
	.byte	W12
	.byte			En2
	.byte	W12
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N12	, En1
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			En1
	.byte	W12
	.byte			En2
	.byte	W12
song056_9_3:
	.byte		N24	, Fs1, v124
	.byte	W24
	.byte			Cs2
	.byte	W24
	.byte			Fs2
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song056_9_3
song056_9_4:
	.byte		N24	, Gn1, v124
	.byte	W24
	.byte			Dn2
	.byte	W24
	.byte			Gn2
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song056_9_4
song056_9_5:
	.byte		N24	, Gs1, v124
	.byte	W24
	.byte			Ds2
	.byte	W24
	.byte			Gs2
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song056_9_5
song056_9_6:
	.byte		N24	, An1, v124
	.byte	W24
	.byte			En2
	.byte	W24
	.byte			An2
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song056_9_6
	.byte	PATT	
		.word	song056_9_3
	.byte	PATT	
		.word	song056_9_3
	.byte	PATT	
		.word	song056_9_4
	.byte	PATT	
		.word	song056_9_4
	.byte	PATT	
		.word	song056_9_5
	.byte	PATT	
		.word	song056_9_5
	.byte	PATT	
		.word	song056_9_6
	.byte	PATT	
		.word	song056_9_6
song056_9_7:
	.byte		N24	, Fs1, v124
	.byte	W24
	.byte			Cs2
	.byte	W24
	.byte		N12	, Fs2
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song056_9_7
song056_9_9:
	.byte		N24	, Gn1, v124
	.byte	W24
	.byte			Dn2
	.byte	W24
	.byte		N12	, Gn2
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song056_9_4
song056_9_8:
	.byte		N24	, Gs1, v124
	.byte	W24
	.byte			Ds2
	.byte	W24
	.byte		N12	, Gs2
	.byte	W12
	.byte			Ds2
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song056_9_8
song056_9_10:
	.byte		N24	, An1, v124
	.byte	W24
	.byte			En2
	.byte	W24
	.byte		N12	, An2
	.byte	W12
	.byte			En2
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song056_9_6
	.byte	PATT	
		.word	song056_9_7
	.byte	PATT	
		.word	song056_9_7
	.byte	PATT	
		.word	song056_9_9
	.byte	PATT	
		.word	song056_9_4
	.byte	PATT	
		.word	song056_9_8
	.byte	PATT	
		.word	song056_9_8
	.byte	PATT	
		.word	song056_9_10
	.byte	PATT	
		.word	song056_9_6
song056_9_11:
	.byte		N30	, Cn2, v124
	.byte	W36
	.byte		N18	
	.byte	W36
	.byte	PEND
	.byte		N30	, Cs2
	.byte	W36
	.byte		N18	
	.byte	W36
	.byte	PATT	
		.word	song056_9_11
song056_9_13:
	.byte		N30	, Cs2, v124
	.byte	W36
	.byte		N18	
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte	PEND
song056_9_12:
	.byte		N30	, Cn2, v124
	.byte	W36
	.byte		N12	, Cn3
	.byte	W24
	.byte			Cn2
	.byte	W12
	.byte	PEND
song056_9_15:
	.byte		N12	, Cs2, v124
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Cs3
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song056_9_12
	.byte		N12	, Cs2, v124
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte		N05	, Cs2
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte		N05	
	.byte	W06
song056_9_14:
	.byte		N30	, Cn2, v124
	.byte	W36
	.byte		N18	
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song056_9_13
	.byte	PATT	
		.word	song056_9_14
	.byte	PATT	
		.word	song056_9_13
	.byte	PATT	
		.word	song056_9_12
	.byte	PATT	
		.word	song056_9_15
	.byte	PATT	
		.word	song056_9_12
	.byte	PATT	
		.word	song056_9_15
	.byte		N12	, Cn2, v124
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte			Cn2
	.byte	W12
	.byte			Cn2, v084
	.byte	W12
	.byte			Cn3, v124
	.byte	W12
	.byte			Cn2
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Cs2, v084
	.byte	W12
	.byte			Cs3, v124
	.byte	W12
	.byte			Cs2
	.byte	W12
song056_9_16:
	.byte		N30	, Fs2, v124
	.byte	W36
	.byte			Fs1
	.byte	W36
	.byte	PEND
song056_9_17:
	.byte	W12
	.byte		N12	, Fs2, v124
	.byte	W24
	.byte		N36	, Fs1
	.byte	W36
	.byte	PEND
song056_9_18:
	.byte		N30	, Gn2, v124
	.byte	W36
	.byte			Gn1
	.byte	W36
	.byte	PEND
song056_9_19:
	.byte	W12
	.byte		N12	, Bn2, v124
	.byte	W24
	.byte			Gn2
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song056_9_16
	.byte	PATT	
		.word	song056_9_17
	.byte	PATT	
		.word	song056_9_18
	.byte	PATT	
		.word	song056_9_19
	.byte	PATT	
		.word	song056_9_16
	.byte	PATT	
		.word	song056_9_17
	.byte	PATT	
		.word	song056_9_18
	.byte	PATT	
		.word	song056_9_19
	.byte	PATT	
		.word	song056_9_16
	.byte	PATT	
		.word	song056_9_17
	.byte	PATT	
		.word	song056_9_18
	.byte	PATT	
		.word	song056_9_19
song056_9_20:
	.byte		N30	, Fs1, v124
	.byte	W36
	.byte		N12	, Cs2
	.byte	W24
	.byte			Fs2
	.byte	W12
	.byte	PEND
song056_9_21:
	.byte	W12
	.byte		N12	, Fs1, v124
	.byte	W24
	.byte			Cs2
	.byte	W24
	.byte			Fs2
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song056_9_18
	.byte	PATT	
		.word	song056_9_19
	.byte	PATT	
		.word	song056_9_16
	.byte	PATT	
		.word	song056_9_17
	.byte	PATT	
		.word	song056_9_18
	.byte	PATT	
		.word	song056_9_19
	.byte	PATT	
		.word	song056_9_20
	.byte	PATT	
		.word	song056_9_21
	.byte	PATT	
		.word	song056_9_18
	.byte	PATT	
		.word	song056_9_19
	.byte	PATT	
		.word	song056_9_16
	.byte	PATT	
		.word	song056_9_17
	.byte	PATT	
		.word	song056_9_18
	.byte	PATT	
		.word	song056_9_19
	.byte	GOTO	
		.word	song056_9_22
	.byte	FINE

	@********************** Track  10 **********************@

	.global song056_10
song056_10:	@ 0x08296538
	.byte	KEYSH	, 0
song056_10_10:
	.byte	VOICE	, 31
	.byte	VOL	, v046
	.byte	PAN	, c_v
	.byte	TUNE	, c_v+3
	.byte	BENDR	, 12
	.byte		N03	, Fs4, v084
	.byte	W06
	.byte			Cs5, v096
	.byte	W06
	.byte			Fs5, v104
	.byte	W06
	.byte			Fs5, v064
	.byte	W06
	.byte			Fs5, v044
	.byte	W06
	.byte			Fs5, v024
	.byte	W42
song056_10_1:
	.byte		N03	, Fs4, v084
	.byte	W06
	.byte			Cs5, v096
	.byte	W06
	.byte			Fs5, v104
	.byte	W06
	.byte			Fs5, v064
	.byte	W06
	.byte			Fs5, v044
	.byte	W06
	.byte			Fs5, v024
	.byte	W42
	.byte	PEND
	.byte	PATT	
		.word	song056_10_1
	.byte	PATT	
		.word	song056_10_1
song056_10_2:
	.byte		N03	, Fs4, v084
	.byte	W06
	.byte			Cs5, v096
	.byte	W06
	.byte			Fs5, v104
	.byte	W06
	.byte			Fs5, v064
	.byte	W06
	.byte			Fs5, v044
	.byte	W06
	.byte			En5, v096
	.byte	W12
	.byte			Bn4
	.byte	W06
	.byte			Dn5
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			An4
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song056_10_2
	.byte		N03	, Gs4, v084
	.byte	W06
	.byte			Dn5, v096
	.byte	W06
	.byte			Gs5, v104
	.byte	W06
	.byte			Gs5, v064
	.byte	W06
	.byte			Gs4, v084
	.byte	W06
	.byte			Dn5, v096
	.byte	W06
	.byte			Gs5, v104
	.byte	W06
	.byte			Gs5, v064
	.byte	W06
	.byte			Gs4, v084
	.byte	W06
	.byte			Dn5, v096
	.byte	W06
	.byte			Gs5, v104
	.byte	W06
	.byte			Gs5, v064
	.byte	W06
	.byte			Gs4, v084
	.byte	W06
	.byte			Dn5, v096
	.byte	W06
	.byte			Gs5, v104
	.byte	W06
	.byte			Gs5, v064
	.byte	W06
	.byte			Gs4, v084
	.byte	W06
	.byte			Dn5, v096
	.byte	W06
	.byte			Gs5, v104
	.byte	W06
	.byte			Gs5, v064
	.byte	W06
	.byte			Dn5, v084
	.byte	W06
	.byte			Gs5, v096
	.byte	W06
	.byte			Bn5, v104
	.byte	W06
	.byte			Bn5, v064
	.byte	W06
song056_10_3:
	.byte	BEND	, c_v-4
	.byte	W24
	.byte		c_v-4
	.byte		TIE	, An2, v104
	.byte	W06
	.byte	BEND	, c_v-3
	.byte	W06
	.byte		c_v-2
	.byte	W03
	.byte		c_v-1
	.byte	W01
	.byte		c_v
	.byte	W32
	.byte	PEND
song056_10_4:
	.byte	W68
	.byte	BEND	, c_v
	.byte	W01
	.byte		c_v+5
	.byte	W02
	.byte		c_v+11
	.byte	W01
	.byte	PEND
	.byte		c_v+16
	.byte	W02
	.byte		c_v+22
	.byte	W01
	.byte		c_v+27
	.byte	W24
	.byte	W03
	.byte		c_v+27
	.byte	W01
	.byte		c_v+22
	.byte	W02
	.byte		c_v+16
	.byte	W01
	.byte		c_v+11
	.byte	W02
	.byte		c_v+2
	.byte	W01
	.byte		c_v
	.byte	W32
	.byte	W03
	.byte	W44
	.byte	W01
	.byte		c_v
	.byte	W02
	.byte		c_v+2
	.byte	W01
	.byte		c_v+5
	.byte	W02
	.byte		c_v+8
	.byte	W01
	.byte		c_v+11
	.byte	W18
	.byte		c_v+11
	.byte	W02
	.byte		c_v+15
	.byte	W01
	.byte		c_v+20
	.byte	W02
	.byte		c_v+24
	.byte	W01
	.byte		c_v+29
	.byte	W02
	.byte		c_v+34
	.byte	W01
	.byte		c_v+38
	.byte	W02
	.byte		c_v+43
	.byte	W01
	.byte		c_v+48
	.byte	W60
	.byte	W03
	.byte	W68
	.byte		c_v+48
	.byte	W01
	.byte		c_v+45
	.byte	W02
	.byte		c_v+42
	.byte	W01
	.byte		c_v+39
	.byte	W02
	.byte		c_v+35
	.byte	W01
	.byte		c_v+32
	.byte	W02
	.byte		c_v+29
	.byte	W01
	.byte		c_v+25
	.byte	W02
	.byte		c_v+22
	.byte	W01
	.byte		c_v+19
	.byte	W02
	.byte		c_v+15
	.byte	W01
	.byte		c_v+12
	.byte	W01
	.byte		c_v+11
	.byte	W56
	.byte	W03
	.byte	W23
	.byte		EOT	, An2
	.byte	W01
	.byte		N06	, An2, v076
	.byte	W12
	.byte			An2, v056
	.byte	W12
	.byte			An2, v036
	.byte	W12
	.byte			An2, v016
	.byte	W11
	.byte	BEND	, c_v+11
	.byte	W01
	.byte	PATT	
		.word	song056_10_3
	.byte	PATT	
		.word	song056_10_4
	.byte	BEND	, c_v+16
	.byte	W02
	.byte		c_v+22
	.byte	W01
	.byte		c_v+27
	.byte	W21
	.byte		c_v+27
	.byte	W01
	.byte		c_v+23
	.byte	W02
	.byte		c_v+19
	.byte	W01
	.byte		c_v+15
	.byte	W02
	.byte		c_v+11
	.byte	W01
	.byte		c_v+6
	.byte	W02
	.byte		c_v
	.byte	W36
	.byte	W03
	.byte	W30
	.byte	W01
	.byte		c_v
	.byte	W01
	.byte		c_v+5
	.byte	W02
	.byte		c_v+10
	.byte	W01
	.byte		c_v+15
	.byte	W01
	.byte		c_v+16
	.byte	W30
	.byte		c_v+16
	.byte	W03
	.byte		c_v+15
	.byte	W03
	.byte		c_v+14
	.byte	W03
	.byte		c_v+13
	.byte	W03
	.byte		c_v+11
	.byte	W66
	.byte	W72
	.byte		EOT	, An2
	.byte		N06	, An2, v076
	.byte	W12
	.byte			An2, v056
	.byte	W12
	.byte			An2, v036
	.byte	W12
	.byte			An2, v016
	.byte	W12
	.byte			An2, v004
	.byte	W24
	.byte	W72
	.byte	BEND	, c_v
	.byte	W24
	.byte		N06	, En4, v116
	.byte	W18
	.byte			Ds4
	.byte	W18
	.byte			Dn4
	.byte	W12
song056_10_5:
	.byte		N06	, Cs4, v116
	.byte	W06
	.byte		N18	, Fs3
	.byte	W24
	.byte		N04	, Fs3, v124
	.byte	W06
	.byte			Fs3, v096
	.byte	W06
	.byte			Fs3, v076
	.byte	W06
	.byte			Fs3, v056
	.byte	W06
	.byte			Fs3, v036
	.byte	W18
	.byte	PEND
	.byte	W72
	.byte	W72
song056_10_6:
	.byte	W24
	.byte		N06	, En4, v116
	.byte	W18
	.byte			Ds4
	.byte	W18
	.byte			Dn4
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song056_10_5
	.byte	W72
	.byte	W72
	.byte	PATT	
		.word	song056_10_6
	.byte	PATT	
		.word	song056_10_5
	.byte	W72
	.byte	W72
	.byte	PATT	
		.word	song056_10_6
	.byte	PATT	
		.word	song056_10_5
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W68
	.byte	W03
	.byte	VOL	, v066
	.byte	W01
	.byte	BEND	, c_v
	.byte		N04	, An5, v124
	.byte	W06
	.byte			An5, v076
	.byte	W06
	.byte			En5, v104
	.byte	W06
	.byte			En5, v056
	.byte	W06
	.byte			Bn4, v084
	.byte	W06
	.byte			Bn4, v052
	.byte	W06
	.byte			Cs5, v096
	.byte	W06
	.byte			Cs5, v060
	.byte	W30
song056_10_8:
	.byte	W12
	.byte		N04	, An5, v124
	.byte	W06
	.byte			An5, v076
	.byte	W06
	.byte			En5, v104
	.byte	W06
	.byte			En5, v056
	.byte	W06
	.byte			Bn4, v084
	.byte	W06
	.byte			Bn4, v052
	.byte	W06
	.byte			Cs5, v096
	.byte	W06
	.byte			Cs5, v048
	.byte	W06
	.byte			Gs5, v116
	.byte	W06
	.byte			Gs5, v068
	.byte	W06
	.byte	PEND
song056_10_7:
	.byte		N04	, An5, v124
	.byte	W06
	.byte			An5, v076
	.byte	W06
	.byte			En5, v104
	.byte	W06
	.byte			En5, v056
	.byte	W06
	.byte			Bn4, v084
	.byte	W06
	.byte			Bn4, v052
	.byte	W06
	.byte			Cs5, v096
	.byte	W06
	.byte			Cs5, v060
	.byte	W30
	.byte	PEND
	.byte	W12
	.byte			Cs5, v124
	.byte	W06
	.byte			Cs5, v076
	.byte	W06
	.byte			En5, v104
	.byte	W06
	.byte			En5, v056
	.byte	W06
	.byte			An5, v104
	.byte	W06
	.byte			An5, v072
	.byte	W06
	.byte			Bn5, v116
	.byte	W06
	.byte			Bn5, v068
	.byte	W06
	.byte			En5, v104
	.byte	W06
	.byte			En5, v056
	.byte	W06
	.byte	PATT	
		.word	song056_10_7
	.byte	PATT	
		.word	song056_10_8
	.byte	W12
	.byte		N02	, An5, v116
	.byte	W06
	.byte		N03	, An5, v068
	.byte	W06
	.byte		N02	, En5, v096
	.byte	W06
	.byte		N03	, En5, v048
	.byte	W06
	.byte		N02	, Bn4, v076
	.byte	W06
	.byte		N03	, Bn4, v040
	.byte	W06
	.byte		N02	, Cs5, v084
	.byte	W06
	.byte		N03	, Cs5, v036
	.byte	W06
	.byte		N02	, Gs5, v104
	.byte	W06
	.byte		N03	, Gs5, v056
	.byte	W06
	.byte		N02	, An5, v116
	.byte	W06
	.byte		N03	, An5, v068
	.byte	W06
	.byte		N02	, Bn5, v116
	.byte	W06
	.byte		N03	, Bn5, v068
	.byte	W06
	.byte			Cs6, v116
	.byte	W06
	.byte			Dn6, v120
	.byte	W06
	.byte			Cs6, v104
	.byte	W06
	.byte			An5, v084
	.byte	W06
	.byte			Bn5, v104
	.byte	W06
	.byte		N02	, En5, v084
	.byte	W06
	.byte		N03	, En5, v060
	.byte	W06
	.byte			An5, v104
	.byte	W06
	.byte		N02	, Gn5, v116
	.byte	W06
	.byte			Gn5, v068
	.byte	W06
	.byte			Gn5, v056
	.byte	W06
	.byte			Gn5, v048
	.byte	W06
	.byte		N03	, Gn5, v036
	.byte	W12
	.byte		N02	, Fn5, v084
	.byte	W06
	.byte			Fn5, v068
	.byte	W06
	.byte			Fn5, v056
	.byte	W06
	.byte			Fn5, v048
	.byte	W06
	.byte		N03	, Fn5, v036
	.byte	W12
	.byte	W12
	.byte		N02	, En5, v116
	.byte	W06
	.byte			En5, v068
	.byte	W06
	.byte			En5, v056
	.byte	W06
	.byte			En5, v048
	.byte	W06
	.byte			Bn4, v084
	.byte	W06
	.byte			Bn4, v068
	.byte	W06
	.byte			Bn4, v056
	.byte	W06
	.byte			Bn4, v048
	.byte	W06
	.byte		N03	, Bn4, v036
	.byte	W12
song056_10_9:
	.byte	VOL	, v060
	.byte		N03	, Fs4, v084
	.byte	W06
	.byte			Cs5, v096
	.byte	W06
	.byte			Fs5, v104
	.byte	W06
	.byte			Fs5, v064
	.byte	W06
	.byte			Fs5, v044
	.byte	W06
	.byte			Fs5, v024
	.byte	W42
	.byte	PEND
	.byte	PATT	
		.word	song056_10_1
	.byte	PATT	
		.word	song056_10_1
	.byte	PATT	
		.word	song056_10_2
	.byte	PATT	
		.word	song056_10_9
	.byte	PATT	
		.word	song056_10_1
	.byte	PATT	
		.word	song056_10_1
	.byte	PATT	
		.word	song056_10_2
	.byte	PATT	
		.word	song056_10_9
	.byte	PATT	
		.word	song056_10_1
	.byte	PATT	
		.word	song056_10_1
	.byte	PATT	
		.word	song056_10_2
	.byte	PATT	
		.word	song056_10_9
	.byte	PATT	
		.word	song056_10_1
	.byte	PATT	
		.word	song056_10_1
	.byte	PATT	
		.word	song056_10_2
	.byte	VOL	, v066
	.byte		N03	, Fs4, v084
	.byte	W06
	.byte			Cs5, v096
	.byte	W06
	.byte			Fs5, v104
	.byte	W06
	.byte			Fs5, v064
	.byte	W06
	.byte			Fs5, v044
	.byte	W06
	.byte			Fs5, v024
	.byte	W42
	.byte	PATT	
		.word	song056_10_1
	.byte	PATT	
		.word	song056_10_1
	.byte	PATT	
		.word	song056_10_2
	.byte	PATT	
		.word	song056_10_9
	.byte	PATT	
		.word	song056_10_1
	.byte	PATT	
		.word	song056_10_1
	.byte	PATT	
		.word	song056_10_2
	.byte	PATT	
		.word	song056_10_9
	.byte	PATT	
		.word	song056_10_1
	.byte	PATT	
		.word	song056_10_1
	.byte	PATT	
		.word	song056_10_2
	.byte	PATT	
		.word	song056_10_9
	.byte	PATT	
		.word	song056_10_1
	.byte	PATT	
		.word	song056_10_1
	.byte	PATT	
		.word	song056_10_2
	.byte	GOTO	
		.word	song056_10_10
	.byte	FINE

	@********************** Track  11 **********************@

	.global song056_11
song056_11:	@ 0x082968DA
	.byte	KEYSH	, 0
song056_11_26:
	.byte	VOICE	, 5
	.byte	VOL	, v053
	.byte	PAN	, c_v
	.byte		N03	, Cs3, v056
	.byte	W04
	.byte		N04	, Cs3, v060
	.byte	W04
	.byte			Cs3, v068
	.byte	W04
	.byte			Cs3, v072
	.byte	W04
	.byte			Cs3, v088
	.byte	W04
	.byte			Cs3, v116
	.byte	W04
	.byte			Cs3, v124
	.byte	W04
	.byte			Cs3, v108
	.byte	W04
	.byte			Cs3, v096
	.byte	W04
	.byte			Cs3, v084
	.byte	W04
	.byte			Cs3, v072
	.byte	W04
	.byte			Cs3, v064
	.byte	W04
	.byte			Cs3, v052
	.byte	W04
	.byte			Cs3, v040
	.byte	W04
	.byte			Cs3, v032
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
song056_11_10:
	.byte		N04	, Dn3, v056
	.byte	W04
	.byte			Dn3, v060
	.byte	W04
	.byte			Dn3, v068
	.byte	W04
	.byte			Dn3, v072
	.byte	W04
	.byte			Dn3, v088
	.byte	W04
	.byte			Dn3, v116
	.byte	W04
	.byte			Dn3, v124
	.byte	W04
	.byte			Dn3, v108
	.byte	W04
	.byte			Dn3, v096
	.byte	W04
	.byte			Dn3, v084
	.byte	W04
	.byte			Dn3, v072
	.byte	W04
	.byte			Dn3, v064
	.byte	W04
	.byte			Dn3, v052
	.byte	W04
	.byte			Dn3, v040
	.byte	W04
	.byte			Dn3, v032
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte	PEND
song056_11_15:
	.byte		N04	, Fs3, v056
	.byte	W04
	.byte			Fs3, v060
	.byte	W04
	.byte			Fs3, v068
	.byte	W04
	.byte			Fs3, v072
	.byte	W04
	.byte			Fs3, v088
	.byte	W04
	.byte			Fs3, v116
	.byte	W04
	.byte			Fs3, v124
	.byte	W04
	.byte			Fs3, v108
	.byte	W04
	.byte			Fs3, v096
	.byte	W04
	.byte			Fs3, v084
	.byte	W04
	.byte			Fs3, v072
	.byte	W04
	.byte			Fs3, v064
	.byte	W04
	.byte			Fs3, v052
	.byte	W04
	.byte			Fs3, v040
	.byte	W04
	.byte			Fs3, v032
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte	PEND
song056_11_1:
	.byte		N04	, Bn3, v056
	.byte	W04
	.byte			Bn3, v060
	.byte	W04
	.byte			Bn3, v068
	.byte	W04
	.byte			Bn3, v072
	.byte	W04
	.byte			Bn3, v088
	.byte	W04
	.byte			Bn3, v116
	.byte	W04
	.byte			Bn3, v124
	.byte	W04
	.byte			Bn3, v108
	.byte	W04
	.byte			Bn3, v096
	.byte	W04
	.byte			Bn3, v084
	.byte	W04
	.byte			Bn3, v072
	.byte	W04
	.byte			Bn3, v064
	.byte	W04
	.byte			Bn3, v052
	.byte	W04
	.byte			Bn3, v040
	.byte	W04
	.byte			Bn3, v032
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte	PEND
	.byte			Fs4, v056
	.byte	W04
	.byte			Fs4, v060
	.byte	W04
	.byte			Fs4, v068
	.byte	W04
	.byte			Fs4, v072
	.byte	W04
	.byte			Fs4, v088
	.byte	W04
	.byte			Fs4, v116
	.byte	W04
	.byte			Cs4, v124
	.byte	W04
	.byte			Cs4, v108
	.byte	W04
	.byte			Cs4, v096
	.byte	W04
	.byte			Cs4, v084
	.byte	W04
	.byte			Cs4, v072
	.byte	W04
	.byte			Cs4, v064
	.byte	W04
	.byte			Cs4, v052
	.byte	W04
	.byte			Cs4, v040
	.byte	W04
	.byte			Cs4, v032
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte			En4, v056
	.byte	W04
	.byte			En4, v060
	.byte	W04
	.byte			En4, v068
	.byte	W04
	.byte			En4, v072
	.byte	W04
	.byte			En4, v088
	.byte	W04
	.byte			En4, v116
	.byte	W04
	.byte			Bn3, v124
	.byte	W04
	.byte			Bn3, v108
	.byte	W04
	.byte			Bn3, v096
	.byte	W04
	.byte			Bn3, v084
	.byte	W04
	.byte			Bn3, v072
	.byte	W04
	.byte			Bn3, v064
	.byte	W04
	.byte			Bn3, v052
	.byte	W04
	.byte			Bn3, v040
	.byte	W04
	.byte			Bn3, v032
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte			Gs4, v056
	.byte	W04
	.byte			Gs4, v060
	.byte	W04
	.byte			Gs4, v068
	.byte	W04
	.byte			Gs4, v072
	.byte	W04
	.byte			Gs4, v088
	.byte	W04
	.byte			Gs4, v116
	.byte	W04
	.byte			Gs4, v124
	.byte	W04
	.byte			Gs4, v108
	.byte	W04
	.byte			Gs4, v096
	.byte	W04
	.byte			Gs4, v084
	.byte	W04
	.byte			Gs4, v072
	.byte	W04
	.byte			Gs4, v064
	.byte	W04
	.byte			Gs4, v052
	.byte	W04
	.byte			Gs4, v040
	.byte	W04
	.byte			Gs4, v032
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte	PATT	
		.word	song056_11_1
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
song056_11_2:
	.byte	W24
	.byte		N04	, Cs3, v056
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte			Cs3, v060
	.byte	W04
	.byte			Cs3, v068
	.byte	W04
	.byte			Cs3, v072
	.byte	W04
	.byte			Cs3, v080
	.byte	W04
	.byte			Cs3, v092
	.byte	W04
	.byte			Cs3, v100
	.byte	W04
	.byte			Cs3, v112
	.byte	W04
	.byte			Cs3, v120
	.byte	W04
	.byte			Cs3, v124
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte	PEND
song056_11_3:
	.byte		N04	, Cs3, v120
	.byte	W04
	.byte			Cs3, v112
	.byte	W04
	.byte			Cs3, v100
	.byte	W04
	.byte			Cs3, v084
	.byte	W04
	.byte			Cs3, v076
	.byte	W04
	.byte			Cs3, v072
	.byte	W04
	.byte			Cs3, v064
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte			Cs3, v056
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte			Cs3, v052
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte			Cs3, v048
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte			Cs3, v044
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte	PEND
song056_11_4:
	.byte	W24
	.byte		N04	, Dn3, v056
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte			Dn3, v060
	.byte	W04
	.byte			Dn3, v068
	.byte	W04
	.byte			Dn3, v072
	.byte	W04
	.byte			Dn3, v080
	.byte	W04
	.byte			Dn3, v092
	.byte	W04
	.byte			Dn3, v100
	.byte	W04
	.byte			Dn3, v112
	.byte	W04
	.byte			Dn3, v120
	.byte	W04
	.byte			Dn3, v124
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte	PEND
song056_11_5:
	.byte		N04	, Dn3, v120
	.byte	W04
	.byte			Dn3, v112
	.byte	W04
	.byte			Dn3, v100
	.byte	W04
	.byte			Dn3, v084
	.byte	W04
	.byte			Dn3, v076
	.byte	W04
	.byte			Dn3, v072
	.byte	W04
	.byte			Dn3, v064
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte			Dn3, v056
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte			Dn3, v052
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte			Dn3, v048
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte			Dn3, v044
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte	PEND
song056_11_6:
	.byte	W24
	.byte		N04	, Ds3, v056
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte			Ds3, v060
	.byte	W04
	.byte			Ds3, v068
	.byte	W04
	.byte			Ds3, v072
	.byte	W04
	.byte			Ds3, v080
	.byte	W04
	.byte			Ds3, v092
	.byte	W04
	.byte			Ds3, v100
	.byte	W04
	.byte			Ds3, v112
	.byte	W04
	.byte			Ds3, v120
	.byte	W04
	.byte			Ds3, v124
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte	PEND
song056_11_7:
	.byte		N04	, Ds3, v120
	.byte	W04
	.byte			Ds3, v112
	.byte	W04
	.byte			Ds3, v100
	.byte	W04
	.byte			Ds3, v084
	.byte	W04
	.byte			Ds3, v076
	.byte	W04
	.byte			Ds3, v072
	.byte	W04
	.byte			Ds3, v064
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte			Ds3, v056
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte			Ds3, v052
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte			Ds3, v048
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte			Ds3, v044
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte	PEND
song056_11_8:
	.byte	W24
	.byte		N04	, En3, v056
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte			En3, v060
	.byte	W04
	.byte			En3, v068
	.byte	W04
	.byte			En3, v072
	.byte	W04
	.byte			En3, v080
	.byte	W04
	.byte			En3, v092
	.byte	W04
	.byte			En3, v100
	.byte	W04
	.byte			En3, v112
	.byte	W04
	.byte			En3, v120
	.byte	W04
	.byte			En3, v124
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte	PEND
song056_11_9:
	.byte		N04	, En3, v120
	.byte	W04
	.byte			En3, v112
	.byte	W04
	.byte			En3, v100
	.byte	W04
	.byte			En3, v084
	.byte	W04
	.byte			En3, v076
	.byte	W04
	.byte			En3, v072
	.byte	W04
	.byte			En3, v064
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte			En3, v056
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte			En3, v052
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte			En3, v048
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte			En3, v044
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte	PEND
	.byte	PATT	
		.word	song056_11_2
	.byte	PATT	
		.word	song056_11_3
	.byte	PATT	
		.word	song056_11_4
	.byte	PATT	
		.word	song056_11_5
	.byte	PATT	
		.word	song056_11_6
	.byte	PATT	
		.word	song056_11_7
	.byte	PATT	
		.word	song056_11_8
	.byte	PATT	
		.word	song056_11_9
song056_11_11:
	.byte		N04	, Cs3, v056
	.byte	W04
	.byte			Cs3, v060
	.byte	W04
	.byte			Cs3, v068
	.byte	W04
	.byte			Cs3, v072
	.byte	W04
	.byte			Cs3, v088
	.byte	W04
	.byte			Cs3, v116
	.byte	W04
	.byte			Cs3, v124
	.byte	W04
	.byte			Cs3, v108
	.byte	W04
	.byte			Cs3, v096
	.byte	W04
	.byte			Cs3, v084
	.byte	W04
	.byte			Cs3, v072
	.byte	W04
	.byte			Cs3, v064
	.byte	W04
	.byte			Cs3, v052
	.byte	W04
	.byte			Cs3, v040
	.byte	W04
	.byte			Cs3, v032
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte	PEND
song056_11_12:
	.byte		N04	, An2, v056
	.byte	W04
	.byte			An2, v060
	.byte	W04
	.byte			An2, v068
	.byte	W04
	.byte			An2, v072
	.byte	W04
	.byte			An2, v088
	.byte	W04
	.byte			An2, v116
	.byte	W04
	.byte			Cs3, v124
	.byte	W04
	.byte			Cs3, v108
	.byte	W04
	.byte			Cs3, v096
	.byte	W04
	.byte			Cs3, v084
	.byte	W04
	.byte			Cs3, v072
	.byte	W04
	.byte			Cs3, v064
	.byte	W04
	.byte			Cs3, v052
	.byte	W04
	.byte			Cs3, v040
	.byte	W04
	.byte			Cs3, v032
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte	PEND
	.byte	PATT	
		.word	song056_11_10
song056_11_13:
	.byte		N04	, Fs3, v056
	.byte	W04
	.byte			Fs3, v060
	.byte	W04
	.byte			Fs3, v068
	.byte	W04
	.byte			Fs3, v072
	.byte	W04
	.byte			Fs3, v088
	.byte	W04
	.byte			Fs3, v116
	.byte	W04
	.byte			Dn3, v124
	.byte	W04
	.byte			Dn3, v108
	.byte	W04
	.byte			Dn3, v096
	.byte	W04
	.byte			Dn3, v084
	.byte	W04
	.byte			Dn3, v072
	.byte	W04
	.byte			Dn3, v064
	.byte	W04
	.byte			Dn3, v052
	.byte	W04
	.byte			Dn3, v040
	.byte	W04
	.byte			Dn3, v032
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte	PEND
	.byte			Ds3, v056
	.byte	W04
	.byte			Ds3, v060
	.byte	W04
	.byte			Ds3, v068
	.byte	W04
	.byte			Ds3, v072
	.byte	W04
	.byte			Ds3, v088
	.byte	W04
	.byte			Ds3, v116
	.byte	W04
	.byte			Ds3, v124
	.byte	W04
	.byte			Ds3, v108
	.byte	W04
	.byte			Ds3, v096
	.byte	W04
	.byte			Ds3, v084
	.byte	W04
	.byte			Ds3, v072
	.byte	W04
	.byte			Ds3, v064
	.byte	W04
	.byte			Ds3, v052
	.byte	W04
	.byte			Ds3, v040
	.byte	W04
	.byte			Ds3, v032
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte			Bn2, v056
	.byte	W04
	.byte			Bn2, v060
	.byte	W04
	.byte			Bn2, v068
	.byte	W04
	.byte			Bn2, v072
	.byte	W04
	.byte			Bn2, v088
	.byte	W04
	.byte			Bn2, v116
	.byte	W04
	.byte			Ds3, v124
	.byte	W04
	.byte			Ds3, v108
	.byte	W04
	.byte			Ds3, v096
	.byte	W04
	.byte			Ds3, v084
	.byte	W04
	.byte			Ds3, v072
	.byte	W04
	.byte			Ds3, v064
	.byte	W04
	.byte			Ds3, v052
	.byte	W04
	.byte			Ds3, v040
	.byte	W04
	.byte			Ds3, v032
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
song056_11_14:
	.byte		N04	, En3, v056
	.byte	W04
	.byte			En3, v060
	.byte	W04
	.byte			En3, v068
	.byte	W04
	.byte			En3, v072
	.byte	W04
	.byte			En3, v088
	.byte	W04
	.byte			En3, v116
	.byte	W04
	.byte			En3, v124
	.byte	W04
	.byte			En3, v108
	.byte	W04
	.byte			En3, v096
	.byte	W04
	.byte			En3, v084
	.byte	W04
	.byte			En3, v072
	.byte	W04
	.byte			En3, v064
	.byte	W04
	.byte			En3, v052
	.byte	W04
	.byte			En3, v040
	.byte	W04
	.byte			En3, v032
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte	PEND
	.byte			Gs3, v056
	.byte	W04
	.byte			Gs3, v060
	.byte	W04
	.byte			Gs3, v068
	.byte	W04
	.byte			Gs3, v072
	.byte	W04
	.byte			Gs3, v088
	.byte	W04
	.byte			Gs3, v116
	.byte	W04
	.byte			En3, v124
	.byte	W04
	.byte			En3, v108
	.byte	W04
	.byte			En3, v096
	.byte	W04
	.byte			En3, v084
	.byte	W04
	.byte			En3, v072
	.byte	W04
	.byte			En3, v064
	.byte	W04
	.byte			En3, v052
	.byte	W04
	.byte			En3, v040
	.byte	W04
	.byte			En3, v032
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	PATT	
		.word	song056_11_11
	.byte	PATT	
		.word	song056_11_12
	.byte	PATT	
		.word	song056_11_10
	.byte	PATT	
		.word	song056_11_13
	.byte	PATT	
		.word	song056_11_14
song056_11_16:
	.byte		N04	, Cs3, v056
	.byte	W04
	.byte			Cs3, v060
	.byte	W04
	.byte			Cs3, v068
	.byte	W04
	.byte			Cs3, v072
	.byte	W04
	.byte			Cs3, v088
	.byte	W04
	.byte			Cs3, v116
	.byte	W04
	.byte			En3, v124
	.byte	W04
	.byte			En3, v108
	.byte	W04
	.byte			En3, v096
	.byte	W04
	.byte			En3, v084
	.byte	W04
	.byte			En3, v072
	.byte	W04
	.byte			En3, v064
	.byte	W04
	.byte			En3, v052
	.byte	W04
	.byte			En3, v040
	.byte	W04
	.byte			En3, v032
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte	PEND
	.byte	PATT	
		.word	song056_11_15
song056_11_17:
	.byte		N04	, An3, v056
	.byte	W04
	.byte			An3, v060
	.byte	W04
	.byte			An3, v068
	.byte	W04
	.byte			An3, v072
	.byte	W04
	.byte			An3, v088
	.byte	W04
	.byte			An3, v116
	.byte	W04
	.byte			Bn2, v124
	.byte	W04
	.byte			Bn2, v108
	.byte	W04
	.byte			Bn2, v096
	.byte	W04
	.byte			Bn2, v084
	.byte	W04
	.byte			Bn2, v072
	.byte	W04
	.byte			Bn2, v064
	.byte	W04
	.byte			Bn2, v052
	.byte	W04
	.byte			Bn2, v040
	.byte	W04
	.byte			Bn2, v032
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte	PEND
	.byte	PATT	
		.word	song056_11_11
	.byte	PATT	
		.word	song056_11_12
	.byte	PATT	
		.word	song056_11_10
	.byte	PATT	
		.word	song056_11_13
	.byte	PATT	
		.word	song056_11_14
	.byte	PATT	
		.word	song056_11_16
	.byte	PATT	
		.word	song056_11_15
	.byte	PATT	
		.word	song056_11_17
song056_11_18:
	.byte		N04	, Cs3, v056
	.byte	W04
	.byte			Cs3, v060
	.byte	W04
	.byte			Cs3, v068
	.byte	W04
	.byte			Cs3, v072
	.byte	W04
	.byte			Cs3, v088
	.byte	W04
	.byte			Cs3, v116
	.byte	W04
	.byte			Cs3, v124
	.byte	W04
	.byte			Cs3, v108
	.byte	W04
	.byte			Cs3, v096
	.byte	W04
	.byte			Fs3, v092
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Fs3
	.byte	W04
	.byte			Fs3, v040
	.byte	W04
	.byte			Fs3, v032
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte	PEND
song056_11_19:
	.byte		N04	, An2, v056
	.byte	W04
	.byte			An2, v060
	.byte	W04
	.byte			An2, v068
	.byte	W04
	.byte			An2, v072
	.byte	W04
	.byte			An2, v088
	.byte	W04
	.byte			An2, v116
	.byte	W04
	.byte			Cs3, v124
	.byte	W04
	.byte			Cs3, v108
	.byte	W04
	.byte			Cs3, v096
	.byte	W04
	.byte			Fs3, v092
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Fs3
	.byte	W04
	.byte			Fs3, v040
	.byte	W04
	.byte			Fs3, v032
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte	PEND
song056_11_20:
	.byte		N04	, Dn3, v056
	.byte	W04
	.byte			Dn3, v060
	.byte	W04
	.byte			Dn3, v068
	.byte	W04
	.byte			Dn3, v072
	.byte	W04
	.byte			Dn3, v088
	.byte	W04
	.byte			Dn3, v116
	.byte	W04
	.byte			Dn3, v124
	.byte	W04
	.byte			Dn3, v108
	.byte	W04
	.byte			Dn3, v096
	.byte	W04
	.byte			An3, v092
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			An3
	.byte	W04
	.byte			An3, v040
	.byte	W04
	.byte			An3, v032
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte	PEND
song056_11_21:
	.byte		N04	, Fs3, v056
	.byte	W04
	.byte			Fs3, v060
	.byte	W04
	.byte			Fs3, v068
	.byte	W04
	.byte			Fs3, v072
	.byte	W04
	.byte			Fs3, v088
	.byte	W04
	.byte			Fs3, v116
	.byte	W04
	.byte			Dn3, v124
	.byte	W04
	.byte			Dn3, v108
	.byte	W04
	.byte			Dn3, v096
	.byte	W04
	.byte			An3, v092
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			An3
	.byte	W04
	.byte			An3, v040
	.byte	W04
	.byte			An3, v032
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte	PEND
song056_11_22:
	.byte		N04	, En3, v056
	.byte	W04
	.byte			En3, v060
	.byte	W04
	.byte			En3, v068
	.byte	W04
	.byte			En3, v072
	.byte	W04
	.byte			En3, v088
	.byte	W04
	.byte			En3, v116
	.byte	W04
	.byte			En3, v124
	.byte	W04
	.byte			En3, v108
	.byte	W04
	.byte			En3, v096
	.byte	W04
	.byte			Bn3, v092
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			Bn3
	.byte	W04
	.byte			Bn3, v040
	.byte	W04
	.byte			Bn3, v032
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte	PEND
song056_11_23:
	.byte		N04	, Cs3, v056
	.byte	W04
	.byte			Cs3, v060
	.byte	W04
	.byte			Cs3, v068
	.byte	W04
	.byte			Cs3, v072
	.byte	W04
	.byte			Cs3, v088
	.byte	W04
	.byte			Cs3, v116
	.byte	W04
	.byte			En3, v124
	.byte	W04
	.byte			En3, v108
	.byte	W04
	.byte			En3, v096
	.byte	W04
	.byte			Bn3, v092
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			Bn3
	.byte	W04
	.byte			Bn3, v040
	.byte	W04
	.byte			Bn3, v032
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte	PEND
song056_11_24:
	.byte		N04	, Fs3, v056
	.byte	W04
	.byte			Fs3, v060
	.byte	W04
	.byte			Fs3, v068
	.byte	W04
	.byte			Fs3, v072
	.byte	W04
	.byte			Fs3, v088
	.byte	W04
	.byte			Fs3, v116
	.byte	W04
	.byte			Fs3, v124
	.byte	W04
	.byte			Fs3, v108
	.byte	W04
	.byte			Fs3, v096
	.byte	W04
	.byte			Cs4, v092
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Cs4
	.byte	W04
	.byte			Cs4, v040
	.byte	W04
	.byte			Cs4, v032
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte	PEND
song056_11_25:
	.byte		N04	, An3, v056
	.byte	W04
	.byte			An3, v060
	.byte	W04
	.byte			An3, v068
	.byte	W04
	.byte			An3, v072
	.byte	W04
	.byte			An3, v088
	.byte	W04
	.byte			An3, v116
	.byte	W04
	.byte			Bn2, v124
	.byte	W04
	.byte			Bn2, v108
	.byte	W04
	.byte			Bn2, v096
	.byte	W04
	.byte			Cs4, v092
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Cs4
	.byte	W04
	.byte			Cs4, v040
	.byte	W04
	.byte			Cs4, v032
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte	PEND
	.byte	PATT	
		.word	song056_11_18
	.byte	PATT	
		.word	song056_11_19
	.byte	PATT	
		.word	song056_11_20
	.byte	PATT	
		.word	song056_11_21
	.byte	PATT	
		.word	song056_11_22
	.byte	PATT	
		.word	song056_11_23
	.byte	PATT	
		.word	song056_11_24
	.byte	PATT	
		.word	song056_11_25
	.byte	GOTO	
		.word	song056_11_26
	.byte	FINE

	@********************** Track  12 **********************@

	.global song056_12
song056_12:	@ 0x08296FBE
	.byte	KEYSH	, 0
song056_12_10:
	.byte	VOICE	, 89
	.byte	VOL	, v046
	.byte	PAN	, c_v
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
song056_12_1:
	.byte		N05	, Cn5, v076
	.byte	W06
	.byte			Cn5, v084
	.byte	W06
	.byte			Cn5, v096
	.byte	W06
	.byte			Cn5, v104
	.byte	W30
	.byte		N03	, Cn5, v096
	.byte	W04
	.byte			Cn5, v084
	.byte	W04
	.byte			Cn5, v076
	.byte	W04
	.byte		N03	
	.byte	W04
	.byte		N03	
	.byte	W04
	.byte		N03	
	.byte	W04
	.byte	PEND
	.byte	PATT	
		.word	song056_12_1
	.byte	PATT	
		.word	song056_12_1
	.byte		N05	, Cn5, v076
	.byte	W06
	.byte			Cn5, v084
	.byte	W06
	.byte			Cn5, v096
	.byte	W06
	.byte			Cn5, v104
	.byte	W30
	.byte			Cn5, v096
	.byte	W06
	.byte			Cn5, v104
	.byte	W06
	.byte			Cn5, v116
	.byte	W06
	.byte			Cn5, v124
	.byte	W06
song056_12_2:
	.byte		N05	, Cn5, v084
	.byte	W12
	.byte			Cn5, v104
	.byte	W24
	.byte			Cn5, v096
	.byte	W24
	.byte		N05	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song056_12_2
	.byte	PATT	
		.word	song056_12_2
	.byte	PATT	
		.word	song056_12_2
	.byte	PATT	
		.word	song056_12_2
	.byte	PATT	
		.word	song056_12_2
	.byte	PATT	
		.word	song056_12_2
song056_12_3:
	.byte		N05	, Cn5, v084
	.byte	W12
	.byte			Cn5, v104
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte			Cn5, v096
	.byte	W18
	.byte			Cn5, v104
	.byte	W06
	.byte			Cn5, v096
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song056_12_2
	.byte	PATT	
		.word	song056_12_2
	.byte	PATT	
		.word	song056_12_2
	.byte	PATT	
		.word	song056_12_2
	.byte	PATT	
		.word	song056_12_2
	.byte	PATT	
		.word	song056_12_2
	.byte	PATT	
		.word	song056_12_2
	.byte	PATT	
		.word	song056_12_3
song056_12_4:
	.byte		N05	, Cn5, v084
	.byte	W12
	.byte			Cn5, v104
	.byte	W12
	.byte			Cn5, v084
	.byte	W06
	.byte			Cn5, v104
	.byte	W12
	.byte			Cn5, v096
	.byte	W18
	.byte		N05	
	.byte	W06
	.byte			Cn5, v084
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song056_12_4
	.byte	PATT	
		.word	song056_12_4
song056_12_5:
	.byte		N05	, Cn5, v084
	.byte	W12
	.byte			Cn5, v104
	.byte	W12
	.byte			Cn5, v084
	.byte	W06
	.byte			Cn5, v104
	.byte	W12
	.byte			Cn5, v096
	.byte	W24
	.byte			Cn5, v084
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song056_12_4
	.byte	PATT	
		.word	song056_12_4
	.byte	PATT	
		.word	song056_12_4
song056_12_6:
	.byte		N05	, Cn5, v084
	.byte	W12
	.byte			Cn5, v104
	.byte	W12
	.byte			Cn5, v084
	.byte	W06
	.byte			Cn5, v104
	.byte	W12
	.byte			Cn5, v096
	.byte	W06
	.byte			Cn5, v104
	.byte	W06
	.byte			Cn5, v084
	.byte	W18
	.byte	PEND
	.byte	PATT	
		.word	song056_12_4
	.byte	PATT	
		.word	song056_12_4
	.byte	PATT	
		.word	song056_12_4
	.byte	PATT	
		.word	song056_12_5
	.byte	PATT	
		.word	song056_12_4
	.byte	PATT	
		.word	song056_12_4
	.byte	PATT	
		.word	song056_12_4
	.byte	PATT	
		.word	song056_12_6
song056_12_7:
	.byte		N05	, Cn5, v104
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W30
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte	PEND
song056_12_8:
	.byte		N05	, Cn5, v104
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W30
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song056_12_7
	.byte	PATT	
		.word	song056_12_8
	.byte	PATT	
		.word	song056_12_7
	.byte	PATT	
		.word	song056_12_8
	.byte	PATT	
		.word	song056_12_7
	.byte	PATT	
		.word	song056_12_8
	.byte	PATT	
		.word	song056_12_7
	.byte	PATT	
		.word	song056_12_8
	.byte	PATT	
		.word	song056_12_7
	.byte	PATT	
		.word	song056_12_8
	.byte	PATT	
		.word	song056_12_7
	.byte	PATT	
		.word	song056_12_8
	.byte	PATT	
		.word	song056_12_7
	.byte	PATT	
		.word	song056_12_8
	.byte		N05	, Cn5, v104
	.byte	W06
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
	.byte	W06
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte	PATT	
		.word	song056_12_2
	.byte	PATT	
		.word	song056_12_2
	.byte	PATT	
		.word	song056_12_2
	.byte	PATT	
		.word	song056_12_2
	.byte	PATT	
		.word	song056_12_2
	.byte	PATT	
		.word	song056_12_2
	.byte	PATT	
		.word	song056_12_2
	.byte	PATT	
		.word	song056_12_3
	.byte	PATT	
		.word	song056_12_2
	.byte	PATT	
		.word	song056_12_2
	.byte	PATT	
		.word	song056_12_2
	.byte	PATT	
		.word	song056_12_2
	.byte	PATT	
		.word	song056_12_2
	.byte	PATT	
		.word	song056_12_2
	.byte	PATT	
		.word	song056_12_2
	.byte	PATT	
		.word	song056_12_3
song056_12_9:
	.byte		N05	, Cn5, v104
	.byte	W24
	.byte		N05	
	.byte	W24
	.byte		N05	
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song056_12_9
	.byte	PATT	
		.word	song056_12_9
	.byte	PATT	
		.word	song056_12_9
	.byte	PATT	
		.word	song056_12_9
	.byte	PATT	
		.word	song056_12_9
	.byte	PATT	
		.word	song056_12_9
	.byte	PATT	
		.word	song056_12_9
	.byte	PATT	
		.word	song056_12_9
	.byte	PATT	
		.word	song056_12_9
	.byte	PATT	
		.word	song056_12_9
	.byte	PATT	
		.word	song056_12_9
	.byte	PATT	
		.word	song056_12_9
	.byte	PATT	
		.word	song056_12_9
	.byte	PATT	
		.word	song056_12_9
	.byte	PATT	
		.word	song056_12_9
	.byte	GOTO	
		.word	song056_12_10
	.byte	FINE

	@********************** Track  13 **********************@

	.global song056_13
song056_13:	@ 0x08297231
	.byte	KEYSH	, 0
song056_13_3:
	.byte	VOICE	, 91
	.byte	VOL	, v046
	.byte	PAN	, c_v
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W48
	.byte		N11	, Cn5, v096
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
song056_13_1:
	.byte	W36
	.byte		N11	, Cn5, v096
	.byte	W18
	.byte		N05	, Cn5, v116
	.byte	W18
	.byte	PEND
	.byte	W48
	.byte		N11	, Cn5, v096
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	PATT	
		.word	song056_13_1
	.byte	W48
	.byte		N11	, Cn5, v096
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N17	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W60
	.byte			Cn5, v116
	.byte	W12
	.byte	W48
	.byte			Cn5, v096
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N17	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W60
	.byte			Cn5, v116
	.byte	W12
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W48
	.byte			Cn5, v096
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	PATT	
		.word	song056_13_1
	.byte	W48
	.byte		N11	, Cn5, v096
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	PATT	
		.word	song056_13_1
song056_13_2:
	.byte	W12
	.byte		N11	, Cn5, v096
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song056_13_2
	.byte	PATT	
		.word	song056_13_2
	.byte	PATT	
		.word	song056_13_2
	.byte	PATT	
		.word	song056_13_2
	.byte	PATT	
		.word	song056_13_2
	.byte	PATT	
		.word	song056_13_2
	.byte	PATT	
		.word	song056_13_2
	.byte	PATT	
		.word	song056_13_2
	.byte	PATT	
		.word	song056_13_2
	.byte	PATT	
		.word	song056_13_2
	.byte	PATT	
		.word	song056_13_2
	.byte	PATT	
		.word	song056_13_2
	.byte	PATT	
		.word	song056_13_2
	.byte	PATT	
		.word	song056_13_2
	.byte	PATT	
		.word	song056_13_2
	.byte	GOTO	
		.word	song056_13_3
	.byte	FINE

	.align 2
	.global song056
song056:	@ 0x08297358
	.byte	13		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

	.word	voicegroup016		@ voicegroup/tone

	.word	song056_1		@ track
	.word	song056_2		@ track
	.word	song056_3		@ track
	.word	song056_4		@ track
	.word	song056_5		@ track
	.word	song056_6		@ track
	.word	song056_7		@ track
	.word	song056_8		@ track
	.word	song056_9		@ track
	.word	song056_10		@ track
	.word	song056_11		@ track
	.word	song056_12		@ track
	.word	song056_13		@ track

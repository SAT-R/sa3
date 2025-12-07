	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song045_1
song045_1:	@ 0x0828A02C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 63
	.byte	VOICE	, 127
	.byte	VOL	, v070
	.byte	W03
song045_1_1:
	.byte		N12	, Gs7, v116
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W48
	.byte	PEND
	.byte	PATT	
		.word	song045_1_1
	.byte	PATT	
		.word	song045_1_1
	.byte	PATT	
		.word	song045_1_1
	.byte	PATT	
		.word	song045_1_1
	.byte	PATT	
		.word	song045_1_1
	.byte	PATT	
		.word	song045_1_1
	.byte	PATT	
		.word	song045_1_1
	.byte	PATT	
		.word	song045_1_1
	.byte	PATT	
		.word	song045_1_1
	.byte	PATT	
		.word	song045_1_1
	.byte	PATT	
		.word	song045_1_1
	.byte	PATT	
		.word	song045_1_1
	.byte	PATT	
		.word	song045_1_1
	.byte	PATT	
		.word	song045_1_1
	.byte	PATT	
		.word	song045_1_1
song045_1_2:
	.byte		N04	, Fn4, v127
	.byte	W12
	.byte		N03	, Fn4, v120
	.byte	W12
	.byte			Fn4, v127
	.byte	W12
	.byte			Fn4, v096
	.byte	W06
	.byte		N04	, Fn4, v108
	.byte	W06
	.byte		N03	, Fn4, v096
	.byte	W12
	.byte		N11	, Fs4, v127
	.byte	W12
	.byte		N03	, Fn4, v112
	.byte	W12
	.byte			Fn4, v127
	.byte	W12
	.byte	PEND
song045_1_3:
	.byte		N03	, Fn4, v120
	.byte	W12
	.byte		N03	
	.byte	W12
	.byte			Fn4, v104
	.byte	W06
	.byte		N05	, Fn4, v112
	.byte	W12
	.byte		N03	, Fn4, v104
	.byte	W06
	.byte		N04	, Fn4, v112
	.byte	W12
	.byte		N03	, Fn4, v104
	.byte	W12
	.byte			Fn4, v120
	.byte	W12
	.byte		N11	, Fs4
	.byte	W12
	.byte	PEND
song045_1_4:
	.byte		N03	, Fn4, v108
	.byte	W12
	.byte			Fn4, v120
	.byte	W12
	.byte			Fn4, v112
	.byte	W06
	.byte		N04	, Fn4, v120
	.byte	W12
	.byte		N03	, Fn4, v104
	.byte	W06
	.byte		N04	, Fn4, v112
	.byte	W12
	.byte		N03	, Fn4, v104
	.byte	W12
	.byte		N11	, Fs4, v120
	.byte	W12
	.byte		N04	, Fn4, v104
	.byte	W12
	.byte	PEND
song045_1_5:
	.byte		N03	, Fn4, v120
	.byte	W12
	.byte			Fn4, v108
	.byte	W06
	.byte		N04	, Fn4, v104
	.byte	W12
	.byte			Fn4, v112
	.byte	W06
	.byte		N03	, Fn4, v108
	.byte	W12
	.byte		N04	, Fn4, v124
	.byte	W12
	.byte			Fn4, v116
	.byte	W12
	.byte		N03	, Fn4, v127
	.byte	W12
	.byte		N13	, Fs4
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song045_1_2
	.byte	PATT	
		.word	song045_1_3
	.byte	PATT	
		.word	song045_1_4
	.byte	PATT	
		.word	song045_1_5
	.byte	PATT	
		.word	song045_1_2
	.byte	PATT	
		.word	song045_1_3
	.byte	PATT	
		.word	song045_1_4
	.byte	PATT	
		.word	song045_1_5
	.byte	PATT	
		.word	song045_1_2
	.byte	PATT	
		.word	song045_1_3
	.byte	PATT	
		.word	song045_1_4
	.byte		N03	, Fn4, v120
	.byte	W12
	.byte			Fn4, v108
	.byte	W06
	.byte		N04	, Fn4, v104
	.byte	W12
	.byte			Fn4, v112
	.byte	W06
	.byte		N03	, Fn4, v108
	.byte	W12
	.byte		N04	, Fn4, v124
	.byte	W12
	.byte			Fn4, v116
	.byte	W12
	.byte		N03	, Fn4, v127
	.byte	W12
	.byte		N11	, Fs4
	.byte	W12
song045_1_6:
	.byte		N04	, Fn4, v127
	.byte		N12	, Gs7, v116
	.byte	W12
	.byte		N03	, Fn4, v120
	.byte	W12
	.byte			Fn4, v127
	.byte		N12	, Gs7, v116
	.byte	W12
	.byte		N03	, Fn4, v096
	.byte	W06
	.byte		N04	, Fn4, v108
	.byte	W06
	.byte		N03	, Fn4, v096
	.byte		N12	, Gs7, v116
	.byte	W12
	.byte		N11	, Fs4, v127
	.byte	W12
	.byte		N03	, Fn4, v112
	.byte	W12
	.byte			Fn4, v127
	.byte	W12
	.byte	PEND
song045_1_7:
	.byte		N03	, Fn4, v120
	.byte		N12	, Gs7, v116
	.byte	W12
	.byte		N03	, Fn4, v120
	.byte	W12
	.byte			Fn4, v104
	.byte		N12	, Gs7, v116
	.byte	W06
	.byte		N05	, Fn4, v112
	.byte	W12
	.byte		N03	, Fn4, v104
	.byte	W06
	.byte		N04	, Fn4, v112
	.byte		N12	, Gs7, v116
	.byte	W12
	.byte		N03	, Fn4, v104
	.byte	W12
	.byte			Fn4, v120
	.byte	W12
	.byte		N11	, Fs4
	.byte	W12
	.byte	PEND
song045_1_8:
	.byte		N03	, Fn4, v108
	.byte		N12	, Gs7, v116
	.byte	W12
	.byte		N03	, Fn4, v120
	.byte	W12
	.byte			Fn4, v112
	.byte		N12	, Gs7, v116
	.byte	W06
	.byte		N04	, Fn4, v120
	.byte	W12
	.byte		N03	, Fn4, v104
	.byte	W06
	.byte		N04	, Fn4, v112
	.byte		N12	, Gs7, v116
	.byte	W12
	.byte		N03	, Fn4, v104
	.byte	W12
	.byte		N11	, Fs4, v120
	.byte	W12
	.byte		N04	, Fn4, v104
	.byte	W12
	.byte	PEND
song045_1_9:
	.byte		N03	, Fn4, v120
	.byte		N12	, Gs7, v116
	.byte	W12
	.byte		N03	, Fn4, v108
	.byte	W06
	.byte		N04	, Fn4, v104
	.byte	W06
	.byte		N12	, Gs7, v116
	.byte	W06
	.byte		N04	, Fn4, v112
	.byte	W06
	.byte		N03	, Fn4, v108
	.byte	W12
	.byte		N04	, Fn4, v124
	.byte		N12	, Gs7, v116
	.byte	W12
	.byte		N04	, Fn4
	.byte	W12
	.byte		N03	, Fn4, v127
	.byte	W12
	.byte		N13	, Fs4
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song045_1_6
	.byte	PATT	
		.word	song045_1_7
	.byte	PATT	
		.word	song045_1_8
	.byte	PATT	
		.word	song045_1_9
	.byte	PATT	
		.word	song045_1_6
	.byte	PATT	
		.word	song045_1_7
	.byte	PATT	
		.word	song045_1_8
	.byte	PATT	
		.word	song045_1_9
	.byte	PATT	
		.word	song045_1_6
	.byte	PATT	
		.word	song045_1_7
	.byte	PATT	
		.word	song045_1_8
	.byte	PATT	
		.word	song045_1_9
	.byte	PATT	
		.word	song045_1_6
	.byte	PATT	
		.word	song045_1_7
	.byte	PATT	
		.word	song045_1_8
	.byte	PATT	
		.word	song045_1_9
	.byte	PATT	
		.word	song045_1_6
	.byte	PATT	
		.word	song045_1_7
	.byte	PATT	
		.word	song045_1_8
	.byte	PATT	
		.word	song045_1_9
	.byte	GOTO	
		.word	song045_1_2
	.byte	W01
	.byte	FINE

	@********************** Track  2 **********************@

	.global song045_2
song045_2:	@ 0x0828A282
	.byte	KEYSH	, 0
	.byte	VOICE	, 27
	.byte	VOL	, v070
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
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song045_2_9:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song045_2_1:
	.byte	W24
	.byte		N12	, Cn3, v080
	.byte		N12	, Gs3, v084
	.byte	W24
	.byte		N24	, Fn3, v076
	.byte		N24	, As3, v064
	.byte	W24
	.byte			Cn3, v060
	.byte		N24	, Gs3, v072
	.byte	W24
	.byte	PEND
song045_2_2:
	.byte	W24
	.byte		N12	, Dn3, v080
	.byte		N12	, As3, v084
	.byte	W24
	.byte		N24	, Gn3, v080
	.byte		N24	, Cn4, v084
	.byte	W24
	.byte			Dn3, v072
	.byte		N24	, As3, v076
	.byte	W24
	.byte	PEND
song045_2_3:
	.byte	W24
	.byte		N12	, Dn3, v084
	.byte		N12	, Bn3, v080
	.byte	W24
	.byte		N24	, Fn3, v076
	.byte		N24	, Dn4, v084
	.byte	W24
	.byte			Dn3, v076
	.byte		N24	, Bn3, v072
	.byte	W24
	.byte	PEND
song045_2_4:
	.byte	W24
	.byte		N12	, Dn3, v076
	.byte		N12	, Bn3, v080
	.byte	W24
	.byte		N24	, Fn3, v068
	.byte		N24	, Dn4, v084
	.byte	W24
	.byte			Bn3, v072
	.byte		N24	, Fn4, v056
	.byte	W24
	.byte	PEND
song045_2_5:
	.byte	W24
	.byte		N12	, En3, v076
	.byte		N12	, Cn4, v084
	.byte	W24
	.byte		N24	, Gn3, v076
	.byte		N24	, Dn4
	.byte	W24
	.byte			En3, v072
	.byte		N24	, Cn4, v076
	.byte	W24
	.byte	PEND
song045_2_6:
	.byte	W24
	.byte		N12	, Fn3, v084
	.byte		N12	, Cs4
	.byte	W24
	.byte		N24	, As3, v080
	.byte		N24	, Ds4, v076
	.byte	W24
	.byte			Fn3, v064
	.byte		N24	, Cs4, v080
	.byte	W24
	.byte	PEND
song045_2_7:
	.byte	W24
	.byte		N12	, Gs3, v080
	.byte		N12	, Fn4, v084
	.byte	W24
	.byte		N24	, Cs4, v076
	.byte		N24	, Fs4, v072
	.byte	W24
	.byte			Gs3, v068
	.byte		N24	, Fn4, v080
	.byte	W24
	.byte	PEND
song045_2_8:
	.byte	W24
	.byte		N12	, Gs3, v080
	.byte		N12	, Fn4, v092
	.byte	W24
	.byte		N24	, Cs4, v080
	.byte		N24	, Fs4, v072
	.byte	W24
	.byte			Ds4
	.byte		N24	, Gs4, v080
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song045_2_1
	.byte	PATT	
		.word	song045_2_2
	.byte	PATT	
		.word	song045_2_3
	.byte	PATT	
		.word	song045_2_4
	.byte	PATT	
		.word	song045_2_5
	.byte	PATT	
		.word	song045_2_6
	.byte	PATT	
		.word	song045_2_7
	.byte	PATT	
		.word	song045_2_8
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	song045_2_9
	.byte	FINE

	@********************** Track  3 **********************@

	.global song045_3
song045_3:	@ 0x0828A38C
	.byte	KEYSH	, 0
	.byte	VOICE	, 28
	.byte	VOL	, v085
	.byte	W03
song045_3_1:
	.byte		N44	, Gn3, v127
	.byte	W48
	.byte			Fn3, v104
	.byte	W48
	.byte	PEND
song045_3_2:
	.byte		N44	, Ds3, v104
	.byte	W48
	.byte			Dn3
	.byte	W48
	.byte	PEND
	.byte	PATT	
		.word	song045_3_1
	.byte	PATT	
		.word	song045_3_2
	.byte	PATT	
		.word	song045_3_1
	.byte	PATT	
		.word	song045_3_2
	.byte	PATT	
		.word	song045_3_1
	.byte	PATT	
		.word	song045_3_2
	.byte	PATT	
		.word	song045_3_1
	.byte	PATT	
		.word	song045_3_2
	.byte	PATT	
		.word	song045_3_1
	.byte	PATT	
		.word	song045_3_2
	.byte	PATT	
		.word	song045_3_1
	.byte	PATT	
		.word	song045_3_2
	.byte	PATT	
		.word	song045_3_1
	.byte	PATT	
		.word	song045_3_2
song045_3_3:
	.byte		N92	, Gn3, v108
	.byte	W96
	.byte			Fs3
	.byte	W96
	.byte			Fn3
	.byte	W96
	.byte			En3
	.byte	W96
	.byte			Gn3
	.byte	W96
	.byte			Fs3
	.byte	W96
	.byte			Fn3
	.byte	W96
	.byte			En3
	.byte	W96
	.byte			Gn3
	.byte	W96
	.byte			Fs3
	.byte	W96
	.byte			Fn3
	.byte	W96
	.byte			En3
	.byte	W96
	.byte			Gn3
	.byte	W96
	.byte			Fs3
	.byte	W96
	.byte			Fn3
	.byte	W96
	.byte			En3
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
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
		.word	song045_3_1
	.byte	PATT	
		.word	song045_3_2
	.byte	PATT	
		.word	song045_3_1
	.byte	PATT	
		.word	song045_3_2
	.byte	PATT	
		.word	song045_3_1
	.byte	PATT	
		.word	song045_3_2
	.byte	PATT	
		.word	song045_3_1
	.byte	PATT	
		.word	song045_3_2
	.byte	GOTO	
		.word	song045_3_3
	.byte	FINE

	@********************** Track  4 **********************@

	.global song045_4
song045_4:	@ 0x0828A448
	.byte	KEYSH	, 0
	.byte	VOICE	, 29
	.byte	VOL	, v077
	.byte	PAN	, c_v-14
	.byte	W03
	.byte		N96	, An3, v124
	.byte	W96
	.byte			Gn3
	.byte	W96
	.byte			Fn3
	.byte	W96
	.byte			En3
	.byte	W96
	.byte			Dn3
	.byte	W96
	.byte			Cn3
	.byte	W96
	.byte			As2
	.byte	W96
	.byte	W06
	.byte		N92	, Bn2, v092
	.byte	W90
	.byte		N96	, An3, v124
	.byte	W96
	.byte			Gn3
	.byte	W96
	.byte			Fn3
	.byte	W96
	.byte			En3
	.byte	W96
	.byte			Dn3
	.byte	W96
	.byte			Cn3
	.byte	W96
	.byte			As2
	.byte	W96
	.byte	W06
	.byte		N92	, Bn2
	.byte	W90
song045_4_1:
	.byte	VOL	, v085
	.byte		TIE	, Cn3, v124
	.byte	W96
	.byte	PEND
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
	.byte	PATT	
		.word	song045_4_1
	.byte	W96
	.byte	W92
	.byte	W03
	.byte		EOT	, Cn3
	.byte	W01
	.byte		N92	, Dn3, v124
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
	.byte			As2
	.byte	W96
song045_4_2:
	.byte		N92	, Cn3, v124
	.byte	W92
	.byte	W03
	.byte	VOICE	, 33
	.byte	W01
	.byte	PEND
	.byte		N92	, Dn3
	.byte	W96
	.byte			Bn2
	.byte	W96
song045_4_3:
	.byte	VOICE	, 29
	.byte	VOL	, v077
	.byte		N92	, Dn3, v124
	.byte	W96
	.byte	PEND
song045_4_4:
	.byte		N92	, Ds3, v124
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
	.byte	VOL	, v077
	.byte		N92	, As2
	.byte	W96
	.byte	PATT	
		.word	song045_4_2
	.byte		N92	, Dn3, v124
	.byte	W96
	.byte			Bn2
	.byte	W96
	.byte	PATT	
		.word	song045_4_3
	.byte	PATT	
		.word	song045_4_4
	.byte		TIE	, Cs3, v124
	.byte	W96
song045_4_5:
	.byte	W92
	.byte	W03
	.byte	VOICE	, 29
	.byte	W01
	.byte	PEND
	.byte		EOT	, Cs3
	.byte		TIE	, An2, v124
	.byte	W96
	.byte	PATT	
		.word	song045_4_5
	.byte		EOT	, An2
	.byte		TIE	, An2, v124
	.byte	W96
	.byte	PATT	
		.word	song045_4_5
	.byte		EOT	, An2
	.byte		TIE	, An2, v124
	.byte	W96
	.byte	W96
	.byte		EOT	
	.byte		TIE	
	.byte	W96
	.byte	W96
	.byte		EOT	
	.byte	GOTO	
		.word	song045_4_1
	.byte	FINE

	@********************** Track  5 **********************@

	.global song045_5
song045_5:	@ 0x0828A525
	.byte	KEYSH	, 0
	.byte	VOICE	, 30
	.byte	VOL	, v077
	.byte	PAN	, c_v
	.byte	W03
	.byte		N96	, Cn3, v124
	.byte	W96
	.byte			As2
	.byte	W96
	.byte			Gs2
	.byte	W96
	.byte			Gn2
	.byte	W96
	.byte			Fn2
	.byte	W96
	.byte			Ds2
	.byte	W96
	.byte			Cs2
	.byte	W96
	.byte			Dn2
	.byte	W96
	.byte			Cn3
	.byte	W96
	.byte			As2
	.byte	W96
	.byte			Gs2
	.byte	W96
	.byte			Gn2
	.byte	W96
	.byte			Fn2
	.byte	W96
	.byte			Ds2
	.byte	W96
	.byte			Cs2
	.byte	W96
	.byte			Dn2
	.byte	W96
song045_5_3:
	.byte	VOL	, v087
	.byte		N92	, Cn3, v124
	.byte	W96
song045_5_1:
	.byte		N40	, Bn2, v124
	.byte	W48
	.byte		N23	, Gn2
	.byte	W24
	.byte			An2
	.byte	W24
	.byte	PEND
song045_5_2:
	.byte		N64	, As2, v124
	.byte	W72
	.byte		N23	, Cn3
	.byte	W24
	.byte	PEND
	.byte		N84	, An2
	.byte	W96
	.byte		N92	, Cn3
	.byte	W96
	.byte	PATT	
		.word	song045_5_1
	.byte	PATT	
		.word	song045_5_2
	.byte		N84	, An2, v124
	.byte	W96
	.byte		N92	, Cn3
	.byte	W96
	.byte	PATT	
		.word	song045_5_1
	.byte	PATT	
		.word	song045_5_2
	.byte		N84	, An2, v124
	.byte	W96
	.byte		N92	, Cn3
	.byte	W96
	.byte	PATT	
		.word	song045_5_1
	.byte	PATT	
		.word	song045_5_2
	.byte		N84	, An2, v124
	.byte	W96
	.byte		N92	, As2
	.byte	W96
	.byte		TIE	, Cn3
	.byte	W96
	.byte	W92
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte		N92	, Gn2
	.byte	W96
	.byte			Dn3
	.byte	W96
	.byte		TIE	, Ds3
	.byte	W96
	.byte	W44
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte		N44	, Cs3
	.byte	W48
	.byte			As2
	.byte	W48
	.byte			Fs2
	.byte	W48
	.byte		N92	, As2
	.byte	W96
	.byte		N44	, Cn3
	.byte	W48
	.byte			Fn3
	.byte	W48
	.byte		N88	, Cn3
	.byte	W96
	.byte		N44	, Gn2
	.byte	W48
	.byte			As2
	.byte	W48
	.byte		N92	, Dn3
	.byte	W96
	.byte		N44	, Ds3
	.byte	W48
	.byte			Fs3
	.byte	W48
	.byte			Gs3
	.byte	W48
	.byte			Fs3
	.byte	W48
	.byte			As3
	.byte	W48
	.byte			Fs3
	.byte	W48
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	song045_5_3
	.byte	FINE

	@********************** Track  6 **********************@

	.global song045_6
song045_6:	@ 0x0828A5E9
	.byte	KEYSH	, 0
	.byte	VOICE	, 32
	.byte	VOL	, v035
	.byte	PAN	, c_v+26
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
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song045_6_3:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song045_6_1:
	.byte		N12	, Cn4, v092
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song045_6_1
	.byte	PATT	
		.word	song045_6_1
song045_6_2:
	.byte		N12	, Dn4, v092
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte			Ds4
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song045_6_1
	.byte	PATT	
		.word	song045_6_1
	.byte	PATT	
		.word	song045_6_1
	.byte	PATT	
		.word	song045_6_2
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
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
		.word	song045_6_3
	.byte	FINE

	@********************** Track  7 **********************@

	.global song045_7
song045_7:	@ 0x0828A65E
	.byte	KEYSH	, 0
	.byte	VOICE	, 35
	.byte	VOL	, v088
	.byte	PAN	, c_v
	.byte	W03
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		TIE	, Cn3, v124
	.byte	W96
	.byte	W48
	.byte		EOT	
	.byte		N48	, Dn3
	.byte	W48
	.byte		TIE	, Ds3
	.byte	W96
	.byte	W48
	.byte		EOT	
	.byte		N48	, Fn3
	.byte	W48
	.byte		N96	, Gn3
	.byte	W96
	.byte			Cn3
	.byte	W96
	.byte			Gs3
	.byte	W96
	.byte			Gn3
	.byte	W96
song045_7_1:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		TIE	, Cn3, v124
	.byte	W96
	.byte	W48
	.byte		EOT	
	.byte		N48	, Dn3
	.byte	W48
	.byte		TIE	, Ds3
	.byte	W96
	.byte	W48
	.byte		EOT	
	.byte		N48	, Fn3
	.byte	W48
	.byte		N96	, Gn3
	.byte	W96
	.byte			Cn3
	.byte	W96
	.byte			Gs3
	.byte	W96
	.byte			Gn3
	.byte	W96
	.byte	GOTO	
		.word	song045_7_1
	.byte	FINE

	@********************** Track  8 **********************@

	.global song045_8
song045_8:	@ 0x0828A6C9
	.byte	KEYSH	, 0
	.byte	VOICE	, 14
	.byte	VOL	, v056
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
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song045_8_1:
	.byte		N24	, Gn1, v120
	.byte	W36
	.byte		N14	, An1
	.byte	W24
	.byte			Gn1
	.byte	W12
	.byte		N23	, As1
	.byte	W24
	.byte	PEND
song045_8_2:
	.byte		N23	, Gn1, v120
	.byte	W36
	.byte		N15	, An1
	.byte	W24
	.byte		N13	, Gn1
	.byte	W12
	.byte		N24	, As1
	.byte	W24
	.byte	PEND
song045_8_3:
	.byte		N23	, Gn1, v120
	.byte	W36
	.byte		N14	, An1
	.byte	W24
	.byte			Gn1
	.byte	W12
	.byte		N24	, As1
	.byte	W24
	.byte	PEND
song045_8_4:
	.byte		N23	, Gn1, v120
	.byte	W36
	.byte		N14	, An1
	.byte	W24
	.byte		N11	, Gn1
	.byte	W12
	.byte		N12	, Cn2
	.byte	W12
	.byte			Fn1
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song045_8_1
	.byte	PATT	
		.word	song045_8_2
	.byte	PATT	
		.word	song045_8_3
	.byte	PATT	
		.word	song045_8_4
	.byte	PATT	
		.word	song045_8_1
	.byte	PATT	
		.word	song045_8_2
	.byte	PATT	
		.word	song045_8_3
	.byte	PATT	
		.word	song045_8_4
	.byte	PATT	
		.word	song045_8_1
	.byte	PATT	
		.word	song045_8_2
	.byte	PATT	
		.word	song045_8_3
	.byte	PATT	
		.word	song045_8_4
song045_8_6:
	.byte	W02
	.byte		N12	, Fn1, v120
	.byte	W12
	.byte			Cn2
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte			Cn2
	.byte	W10
	.byte	PEND
song045_8_7:
	.byte	W02
	.byte		N12	, Gn1, v120
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			As2
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Dn2
	.byte	W10
	.byte	PEND
song045_8_5:
	.byte	W02
	.byte		N12	, Gs1, v120
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Dn2
	.byte	W10
	.byte	PEND
	.byte	PATT	
		.word	song045_8_5
song045_8_8:
	.byte	W02
	.byte		N12	, An1, v120
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			An1
	.byte	W10
	.byte	PEND
song045_8_9:
	.byte	W02
	.byte		N12	, As1, v120
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte			As2
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte			As2
	.byte	W12
	.byte			Fn2
	.byte	W10
	.byte	PEND
song045_8_10:
	.byte	W02
	.byte		N12	, Cs2, v120
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Ds3
	.byte	W12
	.byte			Fn3
	.byte	W12
	.byte			Ds3
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Gs2
	.byte	W10
	.byte	PEND
song045_8_11:
	.byte	W02
	.byte		N12	, Cs2, v120
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Fn3
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Gs3
	.byte	W12
	.byte			Gs2
	.byte	W10
	.byte	PEND
	.byte	PATT	
		.word	song045_8_6
	.byte	PATT	
		.word	song045_8_7
	.byte	PATT	
		.word	song045_8_5
	.byte	PATT	
		.word	song045_8_5
	.byte	PATT	
		.word	song045_8_8
	.byte	PATT	
		.word	song045_8_9
	.byte	PATT	
		.word	song045_8_10
	.byte	PATT	
		.word	song045_8_11
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	song045_8_1
	.byte	FINE

	@********************** Track  9 **********************@

	.global song045_9
song045_9:	@ 0x0828A81B
	.byte	KEYSH	, 0
	.byte	VOICE	, 39
	.byte	VOL	, v042
	.byte	PAN	, c_v+21
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
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song045_9_1:
	.byte		N16	, Gn2, v080
	.byte	W12
	.byte		N14	, Dn3, v084
	.byte	W12
	.byte		N15	, Gn3, v076
	.byte	W12
	.byte		N14	, An3, v088
	.byte	W12
	.byte		N12	, As3, v076
	.byte	W12
	.byte		N14	, Dn4, v092
	.byte	W12
	.byte		N13	, Gn4, v088
	.byte	W12
	.byte		N15	, An4, v084
	.byte	W12
	.byte	PEND
song045_9_2:
	.byte		N13	, As4, v076
	.byte	W12
	.byte			Dn4, v080
	.byte	W12
	.byte		N15	, Gn4, v084
	.byte	W12
	.byte		N12	, As3, v076
	.byte	W12
	.byte		N14	, Dn4, v084
	.byte	W12
	.byte			Dn3, v072
	.byte	W12
	.byte		N13	, As3, v076
	.byte	W12
	.byte			As2
	.byte	W12
	.byte	PEND
song045_9_3:
	.byte		N16	, Gn2, v080
	.byte	W12
	.byte		N14	, Dn3, v084
	.byte	W12
	.byte		N15	, Gn3, v076
	.byte	W12
	.byte		N14	, An3, v088
	.byte	W12
	.byte		N12	, As3, v076
	.byte	W12
	.byte		N14	, Dn4, v092
	.byte	W12
	.byte		N13	, Gn4, v088
	.byte	W12
	.byte		N15	, As4, v084
	.byte	W12
	.byte	PEND
song045_9_4:
	.byte		N13	, Cn5, v076
	.byte	W12
	.byte			En4, v080
	.byte	W12
	.byte		N15	, Gn4, v084
	.byte	W12
	.byte		N12	, Cn4, v076
	.byte	W12
	.byte		N14	, En4, v084
	.byte	W12
	.byte			Gn3, v072
	.byte	W12
	.byte		N13	, Cn4, v076
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song045_9_1
	.byte	PATT	
		.word	song045_9_2
	.byte	PATT	
		.word	song045_9_3
	.byte	PATT	
		.word	song045_9_4
	.byte	PATT	
		.word	song045_9_1
	.byte	PATT	
		.word	song045_9_2
	.byte	PATT	
		.word	song045_9_3
	.byte	PATT	
		.word	song045_9_4
	.byte	PATT	
		.word	song045_9_1
	.byte	PATT	
		.word	song045_9_2
	.byte	PATT	
		.word	song045_9_3
	.byte	PATT	
		.word	song045_9_4
	.byte	VOICE	, 39
	.byte		N06	, Fn3, v096
	.byte	W12
	.byte		N12	, Fn4, v116
	.byte	W60
	.byte		N06	, Gs3, v096
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Cn4, v104
	.byte	W06
	.byte			Fn4, v112
	.byte	W06
song045_9_5:
	.byte		N06	, Gn3, v084
	.byte	W12
	.byte		N12	, Gn4, v104
	.byte	W60
	.byte		N06	, As3, v096
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Dn4, v104
	.byte	W06
	.byte			Gn4, v112
	.byte	W06
	.byte	PEND
song045_9_6:
	.byte		N06	, Gn3, v084
	.byte	W12
	.byte		N12	, Gn4, v104
	.byte	W60
	.byte		N06	, Gn3, v084
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			Gn4, v104
	.byte	W06
	.byte		N04	, Gs4, v116
	.byte	W06
	.byte	PEND
song045_9_7:
	.byte		N12	, As4, v112
	.byte	W12
	.byte		N06	, Gs4, v104
	.byte	W06
	.byte			Gn4, v100
	.byte	W06
	.byte			Gs4, v112
	.byte	W06
	.byte			Gn4, v104
	.byte	W06
	.byte			Fn4, v100
	.byte	W06
	.byte		N10	, Dn4, v096
	.byte	W12
	.byte		N04	
	.byte	W06
	.byte			Bn3, v084
	.byte	W06
	.byte			Dn4, v096
	.byte	W06
	.byte			Gs3, v084
	.byte	W06
	.byte			Bn3, v092
	.byte	W06
	.byte			Dn4, v096
	.byte	W06
	.byte			Gn4, v100
	.byte	W06
	.byte	PEND
song045_9_8:
	.byte		N06	, An3, v084
	.byte	W12
	.byte		N12	, An4, v104
	.byte	W60
	.byte		N06	, Cn4, v096
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			En4, v104
	.byte	W06
	.byte			An4, v112
	.byte	W06
	.byte	PEND
song045_9_9:
	.byte		N06	, As3, v084
	.byte	W12
	.byte		N12	, As4, v104
	.byte	W60
	.byte		N06	, Cs4, v096
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			Fn4, v104
	.byte	W06
	.byte			As4, v112
	.byte	W06
	.byte	PEND
song045_9_10:
	.byte		N06	, Bn3, v084
	.byte	W12
	.byte		N12	, Bn4, v104
	.byte	W60
	.byte		N06	, Bn3, v084
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Bn4, v104
	.byte	W06
	.byte		N04	, Cs5, v116
	.byte	W06
	.byte	PEND
song045_9_11:
	.byte		N12	, Ds5, v112
	.byte	W12
	.byte		N06	, Cs5, v104
	.byte	W06
	.byte			Bn4, v100
	.byte	W06
	.byte			Cs5, v112
	.byte	W06
	.byte			Bn4, v104
	.byte	W06
	.byte			Gs4, v100
	.byte	W06
	.byte		N10	, Fs4, v096
	.byte	W12
	.byte		N04	
	.byte	W06
	.byte			Ds4, v084
	.byte	W06
	.byte			Fs4, v096
	.byte	W06
	.byte			Cs4, v084
	.byte	W06
	.byte			Ds4, v092
	.byte	W06
	.byte			Fs4, v096
	.byte	W06
	.byte			Bn4, v100
	.byte	W06
	.byte	PEND
	.byte		N06	, Fn3, v096
	.byte	W12
	.byte		N12	, Fn4, v116
	.byte	W60
	.byte		N06	, Gs3, v096
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Cn4, v104
	.byte	W06
	.byte			Fn4, v112
	.byte	W06
	.byte	PATT	
		.word	song045_9_5
	.byte	PATT	
		.word	song045_9_6
	.byte	PATT	
		.word	song045_9_7
	.byte	PATT	
		.word	song045_9_8
	.byte	PATT	
		.word	song045_9_9
	.byte	PATT	
		.word	song045_9_10
	.byte	PATT	
		.word	song045_9_11
song045_9_12:
	.byte		N06	, As3, v060
	.byte	W12
	.byte			Cn4
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			As3
	.byte	W12
	.byte			Cn4
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			As3
	.byte	W12
	.byte			Cn4
	.byte	W12
	.byte	PEND
song045_9_13:
	.byte		N06	, Dn4, v060
	.byte	W12
	.byte			As3
	.byte	W12
	.byte			Cn4
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			As3
	.byte	W12
	.byte			Cn4
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			As3
	.byte	W12
	.byte	PEND
song045_9_14:
	.byte		N06	, Cn4, v060
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			As3
	.byte	W12
	.byte			Cn4
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			As3
	.byte	W12
	.byte			Cn4
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song045_9_12
	.byte	PATT	
		.word	song045_9_13
	.byte	PATT	
		.word	song045_9_14
	.byte	PATT	
		.word	song045_9_12
	.byte		N06	, Dn4, v060
	.byte	W12
	.byte			As3
	.byte	W12
	.byte			Cn4
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			As3
	.byte	W12
	.byte			Cn4
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Gn4
	.byte	W12
	.byte	GOTO	
		.word	song045_9_1
	.byte	FINE

	@********************** Track  10 **********************@

	.global song045_10
song045_10:	@ 0x0828AA63
	.byte	KEYSH	, 0
	.byte	VOICE	, 40
	.byte	VOL	, v038
	.byte	PAN	, c_v-24
	.byte	TUNE	, c_v
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
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song045_10_8:
	.byte	VOICE	, 40
	.byte	W01
	.byte		N16	, Gn2, v080
	.byte	W12
	.byte		N14	, Dn3, v084
	.byte	W12
	.byte		N15	, Gn3, v076
	.byte	W12
	.byte		N14	, An3, v088
	.byte	W12
	.byte		N12	, As3, v076
	.byte	W12
	.byte		N14	, Dn4, v092
	.byte	W12
	.byte		N13	, Gn4, v088
	.byte	W12
	.byte		N15	, An4, v084
	.byte	W11
song045_10_1:
	.byte	W01
	.byte		N13	, As4, v076
	.byte	W12
	.byte			Dn4, v080
	.byte	W12
	.byte		N15	, Gn4, v084
	.byte	W12
	.byte		N12	, As3, v076
	.byte	W12
	.byte		N14	, Dn4, v084
	.byte	W12
	.byte			Dn3, v072
	.byte	W12
	.byte		N13	, As3, v076
	.byte	W12
	.byte			As2
	.byte	W11
	.byte	PEND
song045_10_2:
	.byte	W01
	.byte		N16	, Gn2, v080
	.byte	W12
	.byte		N14	, Dn3, v084
	.byte	W12
	.byte		N15	, Gn3, v076
	.byte	W12
	.byte		N14	, An3, v088
	.byte	W12
	.byte		N12	, As3, v076
	.byte	W12
	.byte		N14	, Dn4, v092
	.byte	W12
	.byte		N13	, Gn4, v088
	.byte	W12
	.byte		N15	, As4, v084
	.byte	W11
	.byte	PEND
song045_10_3:
	.byte	W01
	.byte		N13	, Cn5, v076
	.byte	W12
	.byte			En4, v080
	.byte	W12
	.byte		N15	, Gn4, v084
	.byte	W12
	.byte		N12	, Cn4, v076
	.byte	W12
	.byte		N14	, En4, v084
	.byte	W12
	.byte			Gn3, v072
	.byte	W12
	.byte		N13	, Cn4, v076
	.byte	W12
	.byte			Cn3
	.byte	W11
	.byte	PEND
song045_10_4:
	.byte	W01
	.byte		N16	, Gn2, v080
	.byte	W12
	.byte		N14	, Dn3, v084
	.byte	W12
	.byte		N15	, Gn3, v076
	.byte	W12
	.byte		N14	, An3, v088
	.byte	W12
	.byte		N12	, As3, v076
	.byte	W12
	.byte		N14	, Dn4, v092
	.byte	W12
	.byte		N13	, Gn4, v088
	.byte	W12
	.byte		N15	, An4, v084
	.byte	W11
	.byte	PEND
	.byte	PATT	
		.word	song045_10_1
	.byte	PATT	
		.word	song045_10_2
	.byte	PATT	
		.word	song045_10_3
	.byte	PATT	
		.word	song045_10_4
	.byte	PATT	
		.word	song045_10_1
	.byte	PATT	
		.word	song045_10_2
	.byte	PATT	
		.word	song045_10_3
	.byte	PATT	
		.word	song045_10_4
	.byte	PATT	
		.word	song045_10_1
	.byte	PATT	
		.word	song045_10_2
	.byte	W01
	.byte		N13	, Cn5, v076
	.byte	W12
	.byte			En4, v080
	.byte	W12
	.byte		N15	, Gn4, v084
	.byte	W12
	.byte		N12	, Cn4, v076
	.byte	W12
	.byte		N14	, En4, v084
	.byte	W12
	.byte			Gn3, v072
	.byte	W12
	.byte		N13	, Cn4, v076
	.byte	W12
	.byte			Cn3
	.byte	W10
	.byte		N01	, As4, v096
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
	.byte	TUNE	, c_v
	.byte		N06	, Cn3
	.byte	W12
	.byte		N12	, Cn4, v116
	.byte	W60
	.byte		N06	, Ds3, v104
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			Gn3, v116
	.byte	W06
	.byte			Cn4, v120
	.byte	W06
	.byte			Dn3, v096
	.byte	W12
	.byte		N12	, Dn4, v116
	.byte	W60
	.byte		N06	, Fn3, v104
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			An3, v116
	.byte	W06
	.byte			Dn4, v120
	.byte	W06
	.byte			Dn3, v096
	.byte	W12
	.byte		N12	, Dn4, v116
	.byte	W60
	.byte		N06	, Dn3, v096
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Dn4, v116
	.byte	W06
	.byte		N04	, Fn4, v124
	.byte	W06
	.byte		N12	, Gn4, v120
	.byte	W12
	.byte		N06	, Fn4, v116
	.byte	W06
	.byte			Dn4, v112
	.byte	W06
	.byte			Fn4, v120
	.byte	W06
	.byte			Dn4, v116
	.byte	W06
	.byte			Bn3, v112
	.byte	W06
	.byte		N10	, Gn3, v104
	.byte	W12
	.byte		N04	
	.byte	W06
	.byte			Fn3, v096
	.byte	W06
	.byte			Gn3, v104
	.byte	W06
	.byte			Dn3, v096
	.byte	W06
	.byte			Fn3, v100
	.byte	W06
	.byte			Gn3, v104
	.byte	W06
	.byte			Dn4, v112
	.byte	W06
	.byte		N06	, En3, v096
	.byte	W12
	.byte		N12	, En4, v116
	.byte	W60
	.byte		N06	, Gn3, v104
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Bn3, v116
	.byte	W06
	.byte			En4, v120
	.byte	W06
	.byte			Fn3, v096
	.byte	W12
	.byte		N12	, Fn4, v116
	.byte	W60
	.byte		N06	, Gs3, v104
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Cn4, v116
	.byte	W06
	.byte			Fn4, v120
	.byte	W06
	.byte			Fs3, v096
	.byte	W12
	.byte		N12	, Fs4, v116
	.byte	W60
	.byte		N06	, Fs3, v096
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Fs4, v116
	.byte	W06
	.byte		N04	, Gs4, v124
	.byte	W06
	.byte		N12	, As4, v120
	.byte	W12
	.byte		N06	, Gs4, v116
	.byte	W06
	.byte			Fs4, v112
	.byte	W06
	.byte			Gs4, v120
	.byte	W06
	.byte			Fs4, v116
	.byte	W06
	.byte			Ds4, v112
	.byte	W06
	.byte		N10	, Cs4, v104
	.byte	W12
	.byte		N04	
	.byte	W06
	.byte			As3, v096
	.byte	W06
	.byte			Cs4, v104
	.byte	W06
	.byte			Gs3, v096
	.byte	W06
	.byte			As3, v100
	.byte	W06
	.byte			Cs4, v104
	.byte	W06
	.byte			Fs4, v112
	.byte	W06
song045_10_5:
	.byte	W01
	.byte		N06	, Gn3, v056
	.byte	W12
	.byte			An3
	.byte	W12
	.byte			As3
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte			An3
	.byte	W12
	.byte			As3
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte			An3
	.byte	W11
	.byte	PEND
song045_10_6:
	.byte	W01
	.byte		N06	, As3, v056
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte			An3
	.byte	W12
	.byte			As3
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte			An3
	.byte	W12
	.byte			As3
	.byte	W12
	.byte			Gn3
	.byte	W11
	.byte	PEND
song045_10_7:
	.byte	W01
	.byte		N06	, An3, v056
	.byte	W12
	.byte			As3
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte			An3
	.byte	W12
	.byte			As3
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte			An3
	.byte	W12
	.byte			As3
	.byte	W11
	.byte	PEND
	.byte	PATT	
		.word	song045_10_5
	.byte	PATT	
		.word	song045_10_6
	.byte	PATT	
		.word	song045_10_7
	.byte	PATT	
		.word	song045_10_5
	.byte	W01
	.byte		N06	, As3, v056
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte			An3
	.byte	W12
	.byte			As3
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte			An3
	.byte	W12
	.byte			As3
	.byte	W12
	.byte			Dn4
	.byte	W11
	.byte	GOTO	
		.word	song045_10_8
	.byte	FINE

	@********************** Track  11 **********************@

	.global song045_11
song045_11:	@ 0x0828ACB6
	.byte	KEYSH	, 0
	.byte	VOICE	, 89
	.byte	VOL	, v042
	.byte	W03
	.byte		v000
	.byte		N03	, Dn5, v104
	.byte	W01
	.byte	VOL	, v000
	.byte	W05
	.byte		N03	, Dn5, v064
	.byte	W06
	.byte			Dn5, v104
	.byte	W06
	.byte			Dn5, v124
	.byte	W06
	.byte			Dn5, v084
	.byte	W06
	.byte	VOL	, v001
	.byte		N03	, Dn5, v064
	.byte	W06
	.byte		N02	, Dn5, v096
	.byte	W04
	.byte		N02	
	.byte	W04
	.byte	VOL	, v002
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
	.byte	W02
	.byte	VOL	, v002
	.byte	W04
	.byte		N03	, Dn5, v064
	.byte	W06
	.byte		N02	, Dn5, v096
	.byte	W04
	.byte	VOL	, v003
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
	.byte	VOL	, v004
	.byte		N02	, Dn5, v096
	.byte	W04
	.byte		N02	
	.byte	W04
	.byte		N02	
	.byte	W04
	.byte		N03	, Dn5, v104
	.byte	W03
	.byte	VOL	, v004
	.byte	W03
	.byte		N03	, Dn5, v064
	.byte	W06
	.byte			Dn5, v104
	.byte	W06
	.byte			Dn5, v124
	.byte	W06
	.byte			Dn5, v084
	.byte	W06
	.byte			Dn5, v064
	.byte	W02
	.byte	VOL	, v005
	.byte	W04
	.byte		N02	, Dn5, v096
	.byte	W04
	.byte		N02	
	.byte	W04
	.byte		N02	
	.byte	W04
	.byte		N03	, Dn5, v104
	.byte	W01
	.byte	VOL	, v006
	.byte	W05
	.byte		N03	, Dn5, v064
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
	.byte	VOL	, v007
	.byte		N02	
	.byte	W04
	.byte		N03	, Dn5, v104
	.byte	W06
	.byte			Dn5, v064
	.byte	W05
	.byte	VOL	, v007
	.byte	W01
	.byte		N03	, Dn5, v104
	.byte	W06
	.byte			Dn5, v124
	.byte	W06
	.byte			Dn5, v084
	.byte	W06
	.byte			Dn5, v064
	.byte	W06
	.byte		N02	, Dn5, v096
	.byte	W04
	.byte	VOL	, v008
	.byte		N02	
	.byte	W04
	.byte		N02	
	.byte	W04
	.byte		N03	, Dn5, v104
	.byte	W06
	.byte			Dn5, v084
	.byte	W01
	.byte	VOL	, v009
	.byte	W05
	.byte		N03	, Dn5, v064
	.byte	W06
	.byte			Dn5, v116
	.byte	W06
	.byte			Dn5, v084
	.byte	W06
	.byte			Dn5, v064
	.byte	W06
	.byte	VOL	, v009
	.byte		N03	, Dn5, v124
	.byte	W06
	.byte			Dn5, v084
	.byte	W06
	.byte		N02	, Dn5, v096
	.byte	W02
	.byte	VOL	, v010
	.byte	W02
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
	.byte			Dn5, v104
	.byte	W01
	.byte	VOL	, v011
	.byte	W05
	.byte		N03	, Dn5, v064
	.byte	W06
	.byte			Dn5, v104
	.byte	W03
	.byte	VOL	, v012
	.byte	W03
	.byte		N03	, Dn5, v124
	.byte	W06
	.byte			Dn5, v084
	.byte	W06
	.byte			Dn5, v064
	.byte	W06
	.byte		N02	, Dn5, v096
	.byte	W04
	.byte		N02	
	.byte	W04
	.byte	VOL	, v012
	.byte		N02	
	.byte	W04
	.byte		N03	, Dn5, v104
	.byte	W06
	.byte			Dn5, v064
	.byte	W05
	.byte	VOL	, v013
	.byte	W01
	.byte		N03	, Dn5, v104
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
	.byte	W01
	.byte	VOL	, v014
	.byte	W05
	.byte		N03	, Dn5, v104
	.byte	W06
	.byte			Dn5, v124
	.byte	W03
	.byte	VOL	, v014
	.byte	W03
	.byte		N03	, Dn5, v084
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
	.byte	W02
	.byte	VOL	, v015
	.byte	W04
	.byte		N03	, Dn5, v064
	.byte	W06
	.byte			Dn5, v104
	.byte	W05
	.byte	VOL	, v016
	.byte	W01
	.byte		N03	, Dn5, v124
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
	.byte	W01
	.byte	VOL	, v017
	.byte	W05
	.byte		N03	, Dn5, v064
	.byte	W06
	.byte			Dn5, v104
	.byte	W03
	.byte	VOL	, v017
	.byte	W03
	.byte		N03	, Dn5, v124
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
	.byte	W05
	.byte	VOL	, v018
	.byte	W01
	.byte		N03	, Dn5, v104
	.byte	W06
	.byte			Dn5, v124
	.byte	W06
	.byte			Dn5, v084
	.byte	W02
	.byte	VOL	, v019
	.byte	W04
	.byte		N03	, Dn5, v064
	.byte	W06
	.byte		N02	, Dn5, v096
	.byte	W04
	.byte		N02	
	.byte	W04
	.byte		N02	
	.byte	W04
	.byte		N03	, Dn5, v104
	.byte	W06
	.byte			Dn5, v084
	.byte	W01
	.byte	VOL	, v019
	.byte	W05
	.byte		N03	, Dn5, v064
	.byte	W06
	.byte			Dn5, v116
	.byte	W03
	.byte	VOL	, v020
	.byte	W03
	.byte		N03	, Dn5, v084
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
	.byte	W05
	.byte	VOL	, v021
	.byte	W01
	.byte		N03	, Dn5, v124
	.byte	W06
	.byte		N02	
	.byte	W06
	.byte		N03	
	.byte	W02
	.byte	VOL	, v021
	.byte	W04
	.byte		N03	
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			Dn5, v104
	.byte	W06
	.byte			Dn5, v064
	.byte	W06
	.byte			Dn5, v104
	.byte	W03
	.byte	VOL	, v022
	.byte	W03
	.byte		N03	, Dn5, v124
	.byte	W06
	.byte			Dn5, v084
	.byte	W06
	.byte	VOL	, v023
	.byte		N03	, Dn5, v064
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
	.byte	W05
	.byte	VOL	, v024
	.byte	W01
	.byte		N03	, Dn5, v104
	.byte	W06
	.byte			Dn5, v124
	.byte	W06
	.byte			Dn5, v084
	.byte	W02
	.byte	VOL	, v024
	.byte	W04
	.byte		N03	, Dn5, v064
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
	.byte	W03
	.byte	VOL	, v025
	.byte	W03
	.byte		N03	, Dn5, v084
	.byte	W06
	.byte			Dn5, v064
	.byte	W06
	.byte	VOL	, v026
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
	.byte	W05
	.byte	VOL	, v026
	.byte	W01
	.byte		N03	, Dn5, v124
	.byte	W06
	.byte			Dn5, v084
	.byte	W06
	.byte			Dn5, v064
	.byte	W02
	.byte	VOL	, v027
	.byte	W04
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
	.byte	VOL	, v028
	.byte		N03	, Dn5, v064
	.byte	W06
	.byte		N02	, Dn5, v096
	.byte	W04
	.byte		N02	
	.byte	W04
	.byte	VOL	, v029
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
	.byte	W01
	.byte	VOL	, v029
	.byte	W05
	.byte		N03	, Dn5, v064
	.byte	W06
	.byte		N02	, Dn5, v096
	.byte	W04
	.byte	VOL	, v030
	.byte		N02	
	.byte	W04
	.byte		N02	
	.byte	W04
	.byte		N03	, Dn5, v104
	.byte	W06
	.byte			Dn5, v084
	.byte	W06
	.byte			Dn5, v064
	.byte	W06
	.byte			Dn5, v116
	.byte	W03
	.byte	VOL	, v031
	.byte	W03
	.byte		N03	, Dn5, v084
	.byte	W06
	.byte			Dn5, v064
	.byte	W06
	.byte	VOL	, v031
	.byte		N03	, Dn5, v124
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
	.byte	W02
	.byte	VOL	, v032
	.byte	W04
	.byte		N03	
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			Dn5, v104
	.byte	W01
	.byte	VOL	, v033
	.byte	W05
	.byte		N03	, Dn5, v064
	.byte	W06
	.byte			Dn5, v104
	.byte	W06
	.byte			Dn5, v124
	.byte	W06
	.byte			Dn5, v084
	.byte	W06
	.byte	VOL	, v034
	.byte		N03	, Dn5, v064
	.byte	W06
	.byte		N02	, Dn5, v096
	.byte	W04
	.byte		N02	
	.byte	W04
	.byte	VOL	, v034
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
	.byte	VOL	, v035
	.byte		N02	
	.byte	W04
	.byte		N02	
	.byte	W04
	.byte		N03	, Dn5, v104
	.byte	W06
	.byte			Dn5, v064
	.byte	W01
	.byte	VOL	, v036
	.byte	W05
	.byte		N03	, Dn5, v104
	.byte	W06
	.byte			Dn5, v124
	.byte	W06
	.byte			Dn5, v084
	.byte	W06
	.byte			Dn5, v064
	.byte	W06
	.byte	VOL	, v036
	.byte		N02	, Dn5, v096
	.byte	W04
	.byte		N02	
	.byte	W04
	.byte		N02	
	.byte	W04
	.byte		N03	, Dn5, v104
	.byte	W02
	.byte	VOL	, v037
	.byte	W04
	.byte		N03	, Dn5, v064
	.byte	W06
	.byte			Dn5, v104
	.byte	W06
	.byte			Dn5, v124
	.byte	W06
	.byte			Dn5, v084
	.byte	W06
	.byte			Dn5, v064
	.byte	W02
	.byte	VOL	, v038
	.byte	W04
	.byte		N02	, Dn5, v096
	.byte	W04
	.byte		N02	
	.byte	W04
	.byte		N02	
	.byte	W04
	.byte		N03	, Dn5, v104
	.byte	W01
	.byte	VOL	, v038
	.byte	W05
	.byte		N03	, Dn5, v064
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
	.byte	VOL	, v039
	.byte		N02	
	.byte	W04
	.byte		N03	, Dn5, v104
	.byte	W06
	.byte			Dn5, v064
	.byte	W05
	.byte	VOL	, v040
	.byte	W01
	.byte		N03	, Dn5, v104
	.byte	W06
	.byte			Dn5, v124
	.byte	W06
	.byte			Dn5, v084
	.byte	W06
	.byte			Dn5, v064
	.byte	W06
	.byte		N02	, Dn5, v096
	.byte	W04
	.byte	VOL	, v041
	.byte		N02	
	.byte	W04
	.byte		N02	
	.byte	W04
	.byte		N03	, Dn5, v104
	.byte	W06
	.byte			Dn5, v084
	.byte	W01
	.byte	VOL	, v041
	.byte	W05
	.byte		N03	, Dn5, v064
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
	.byte	W02
	.byte	VOL	, v042
	.byte	W02
	.byte		N02	
	.byte	W04
	.byte		N02	
	.byte	W04
	.byte		N03	, Dn5, v104
	.byte	W05
	.byte	VOL	, v043
	.byte	W01
	.byte		N03	, Dn5, v124
	.byte	W06
	.byte		N02	
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte		N03	
	.byte	W06
song045_11_1:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
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
		.word	song045_11_1
	.byte	FINE
    
	mAlignWord
	.global song045
song045:	@ 0x0828B0FC
	.byte	11		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	mAlignWord
	.word	voicegroup018		@ voicegroup/tone

	.word	song045_1		@ track
	.word	song045_2		@ track
	.word	song045_3		@ track
	.word	song045_4		@ track
	.word	song045_5		@ track
	.word	song045_6		@ track
	.word	song045_7		@ track
	.word	song045_8		@ track
	.word	song045_9		@ track
	.word	song045_10		@ track
	.word	song045_11		@ track

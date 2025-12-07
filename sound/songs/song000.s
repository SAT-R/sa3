	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song000_1
song000_1:	@ 0x0826402C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 72
	.byte	VOICE	, 127
	.byte	VOL	, v090
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	TEMPO	, 74
	.byte		N92	, As4, v124
	.byte		N23	, Gn7
	.byte	W24
	.byte		N23	
	.byte	W24
	.byte		N23	
	.byte	W24
	.byte		N23	
	.byte	W24
song000_1_1:
	.byte		N23	, Gn7, v124
	.byte	W24
	.byte		N23	
	.byte	W24
	.byte		N23	
	.byte	W24
	.byte		N23	
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song000_1_1
	.byte	PATT	
		.word	song000_1_1
	.byte		N92	, As4, v124
	.byte		N23	, Gn7
	.byte	W24
	.byte		N23	
	.byte	W24
	.byte		N23	
	.byte	W24
	.byte		N23	
	.byte	W24
	.byte	PATT	
		.word	song000_1_1
	.byte	PATT	
		.word	song000_1_1
	.byte		N11	, Gn7, v124
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte			Dn5
	.byte		N11	, Gn7
	.byte	W12
	.byte			Dn5
	.byte		N11	, Gn7
	.byte	W12
	.byte		N05	, Dn5
	.byte		N05	, Gn7
	.byte	W06
	.byte			Dn5
	.byte		N05	, Gn7
	.byte	W06
	.byte			Dn5
	.byte		N05	, Gn7
	.byte	W06
	.byte			Dn5
	.byte		N05	, Gn7
	.byte	W06
	.byte	TEMPO	, 74
	.byte		N92	, As4
	.byte		N23	, Gn7
	.byte	W24
	.byte		N23	
	.byte	W24
	.byte		N23	
	.byte	W24
	.byte		N23	
	.byte	W24
	.byte		N23	
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
	.byte		N23	
	.byte	W78
	.byte		N17	
	.byte	W18
	.byte		N23	
	.byte	W78
	.byte		N11	, As4, v084
	.byte		N17	, Gn7, v124
	.byte	W18
	.byte			As4
	.byte		N23	, Gn7
	.byte	W78
	.byte		N11	, As4, v084
	.byte		N17	, Gn7, v124
	.byte	W18
	.byte		N68	, As4, v104
	.byte		N23	, Gn7, v124
	.byte	W24
	.byte			Gn7, v064
	.byte	W24
	.byte			Gn7, v096
	.byte	W24
	.byte			Gn7, v124
	.byte	W24
	.byte		N17	
	.byte	W18
	.byte		N05	
	.byte	W18
	.byte		N17	
	.byte	W18
	.byte		N05	
	.byte	W18
	.byte		N17	
	.byte	W18
	.byte		N05	
	.byte	W06
	.byte		N17	
	.byte	W18
	.byte		N05	
	.byte	W18
	.byte		N17	
	.byte	W18
	.byte		N05	
	.byte	W18
	.byte		N11	
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N32	
	.byte	W36
	.byte	FINE

	@********************** Track  2 **********************@

	.global song000_2
song000_2:	@ 0x082640F3
	.byte	KEYSH	, 0
	.byte	VOICE	, 77
	.byte	PAN	, c_v
	.byte	VOL	, v090
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
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
	.byte	VOICE	, 79
	.byte	PAN	, c_v-40
	.byte	W01
	.byte		N05	, Cs4, v124
	.byte	W06
	.byte		N36	, Dn4
	.byte	W40
	.byte	W01
	.byte	VOICE	, 81
	.byte	W01
	.byte		N44	, An3
	.byte	W48
song000_2_1:
	.byte		N04	, An3, v124
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte		N04	
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte		N04	
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte		N04	
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte		N04	
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte		N04	
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song000_2_1
	.byte		N04	, An3, v124
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N11	
	.byte	W36
	.byte	FINE

	@********************** Track  3 **********************@

	.global song000_3
song000_3:	@ 0x08264148
	.byte	KEYSH	, 0
	.byte	VOICE	, 1
	.byte	PAN	, c_v
	.byte	VOL	, v087
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		TIE	, Bn2, v056
	.byte	W96
	.byte	W96
	.byte		EOT	
	.byte		N96	, An2
	.byte	W96
	.byte			Bn2
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W92
	.byte	W03
	.byte	VOL	, v087
	.byte	PAN	, c_v+40
	.byte	W01
	.byte		N44	, Cn3, v124
	.byte	W48
	.byte			En3
	.byte	W48
	.byte		N92	, Gn3
	.byte	W96
	.byte		N09	
	.byte	W18
	.byte		N09	
	.byte	W18
	.byte		N09	
	.byte	W18
	.byte		N09	
	.byte	W18
	.byte		N09	
	.byte	W18
	.byte		N03	
	.byte	W06
	.byte		N09	
	.byte	W12
	.byte		N03	
	.byte	W36
	.byte	FINE

	@********************** Track  4 **********************@

	.global song000_4
song000_4:	@ 0x08264189
	.byte	KEYSH	, 0
	.byte	VOICE	, 50
	.byte	PAN	, c_v-40
	.byte	VOL	, v087
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
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
song000_4_1:
	.byte		N03	, Cs4, v104
	.byte	W06
	.byte			Cs3, v084
	.byte	W06
	.byte			Cs3, v064
	.byte	W06
	.byte			Cs4, v104
	.byte	W06
	.byte			Cs3, v084
	.byte	W06
	.byte			Cs3, v064
	.byte	W06
	.byte			Cs4, v104
	.byte	W06
	.byte			Cs3, v084
	.byte	W06
	.byte			Cs3, v064
	.byte	W06
	.byte			Cs4, v104
	.byte	W06
	.byte			Cs3, v084
	.byte	W06
	.byte			Cs3, v064
	.byte	W06
	.byte		N06	, Cs4, v104
	.byte	W24
	.byte	PEND
	.byte		N03	, Bn3
	.byte	W06
	.byte			Bn2, v084
	.byte	W12
	.byte			Bn3, v104
	.byte	W06
	.byte			Bn2, v084
	.byte	W06
	.byte			Bn2, v064
	.byte	W06
	.byte			Bn3, v104
	.byte	W06
	.byte			Bn2, v084
	.byte	W12
	.byte			Bn3, v104
	.byte	W06
	.byte			Bn2, v084
	.byte	W06
	.byte			Bn2, v064
	.byte	W06
	.byte		N06	, Bn3, v104
	.byte	W06
	.byte		N03	, Bn2, v064
	.byte	W06
	.byte			Bn2, v084
	.byte	W12
	.byte	PATT	
		.word	song000_4_1
	.byte	W96
	.byte	VOICE	, 107
	.byte	VOL	, v087
	.byte	PAN	, c_v
	.byte		N92	, Gs2, v124
	.byte	W24
	.byte		N72	, Cs3
	.byte	W24
	.byte		N48	, Fs3
	.byte	W24
	.byte		N24	, Bn3
	.byte	W24
	.byte	VOICE	, 106
	.byte	VOL	, v087
	.byte	PAN	, c_v
	.byte		N48	, Gs2, v127
	.byte	W96
	.byte		N48	
	.byte	W96
	.byte		N48	
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W48
	.byte	FINE

	@********************** Track  5 **********************@

	.global song000_5
song000_5:	@ 0x08264243
	.byte	KEYSH	, 0
	.byte	VOICE	, 6
	.byte	PAN	, c_v+40
	.byte	VOL	, v059
	.byte	BENDR	, 7
	.byte	LFOS	, 30
	.byte	TUNE	, c_v+5
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N28	, Gs2, v076
	.byte	W06
	.byte	MOD	, 0
	.byte	W30
	.byte		N06	, Cs3, v056
	.byte	W06
	.byte			Ds3, v064
	.byte	W06
	.byte		N18	, En3, v076
	.byte	W18
	.byte			Bn3, v084
	.byte	W18
	.byte		N06	, Fs3, v064
	.byte	W12
	.byte		N30	, En3
	.byte	W12
	.byte	MOD	, 10
	.byte	W18
	.byte		0
	.byte	W06
	.byte		N30	, Gs3, v076
	.byte	W12
	.byte	MOD	, 10
	.byte	W24
	.byte		0
	.byte		N06	, En3
	.byte	W06
	.byte			Cs3, v072
	.byte	W06
	.byte			Gs2, v064
	.byte	W06
	.byte			En2, v060
	.byte	W06
	.byte		N24	, Fs2, v052
	.byte	W36
	.byte		N24	
	.byte	W24
	.byte		N12	, Gs2
	.byte	W12
	.byte			Fs2, v060
	.byte	W12
	.byte			Ds3
	.byte	W12
	.byte	W12
	.byte			Cs3, v076
	.byte	W18
	.byte		N12	
	.byte	W18
	.byte			En3
	.byte	W18
	.byte			En3, v084
	.byte	W18
	.byte			Gs3, v096
	.byte	W12
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W48
	.byte	FINE

	@********************** Track  6 **********************@

	.global song000_6
song000_6:	@ 0x082642B5
	.byte	KEYSH	, 0
	.byte	VOICE	, 26
	.byte	PAN	, c_v-64
	.byte	VOL	, v052
	.byte		N92	, Gs0, v124
	.byte		N92	, Fs2
	.byte	W92
	.byte	W02
	.byte		N96	, Bn0
	.byte		N96	, Gs2
	.byte	W02
	.byte	W92
	.byte	W02
	.byte			Cs1
	.byte		N96	, An2
	.byte	W02
	.byte	W92
	.byte	W02
	.byte		TIE	, Ds1
	.byte		TIE	, Bn2
	.byte	W02
	.byte	W96
	.byte	W92
	.byte	W02
	.byte		EOT	, Ds1
	.byte			Bn2
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
	.byte	W48
	.byte	FINE

	@********************** Track  7 **********************@

	.global song000_7
song000_7:	@ 0x082642EF
	.byte	KEYSH	, 0
	.byte	VOICE	, 26
	.byte	PAN	, c_v+63
	.byte	VOL	, v052
	.byte		N44	, Gs1, v124
	.byte		N92	, Cs2
	.byte	W44
	.byte		TIE	, Fs1
	.byte	W48
	.byte		N48	, Ds2
	.byte	W04
	.byte	W44
	.byte			Fs2
	.byte	W48
	.byte			Gs1
	.byte		N48	, En2
	.byte	W02
	.byte		EOT	, Fs1
	.byte	W02
	.byte	W44
	.byte		N48	, An1
	.byte		N48	, Fs2
	.byte	W48
	.byte		TIE	, Bn1
	.byte		N48	, Gs2
	.byte	W04
	.byte	W44
	.byte		TIE	, Fs2
	.byte	W52
	.byte	W92
	.byte	W03
	.byte		EOT	, Bn1
	.byte			Fs2
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
	.byte	W48
	.byte	FINE

	@********************** Track  8 **********************@

	.global song000_8
song000_8:	@ 0x08264334
	.byte	KEYSH	, 0
	.byte	VOICE	, 59
	.byte	PAN	, c_v
	.byte	VOL	, v080
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song000_8_1:
	.byte		N12	, En3, v124
	.byte	W18
	.byte		N06	
	.byte	W17
	.byte		N12	, Dn3, v104
	.byte	W19
	.byte			En3, v124
	.byte	W18
	.byte		N06	
	.byte	W11
	.byte		N12	, Dn3, v104
	.byte	W13
	.byte	PEND
song000_8_2:
	.byte		N12	, En3, v124
	.byte	W18
	.byte		N06	
	.byte	W17
	.byte		N18	, Gn3
	.byte	W19
	.byte		N12	, En3
	.byte	W18
	.byte		N06	
	.byte	W11
	.byte		N12	, Dn3, v104
	.byte	W13
	.byte	PEND
	.byte	PATT	
		.word	song000_8_1
	.byte		N12	, Dn3, v124
	.byte	W18
	.byte		N06	
	.byte	W18
	.byte		N12	, Gn3
	.byte	W18
	.byte		N18	
	.byte	W18
	.byte		N06	, En3
	.byte	W11
	.byte			Dn3
	.byte	W13
	.byte	PATT	
		.word	song000_8_1
	.byte	PATT	
		.word	song000_8_2
	.byte		N12	, Dn3, v124
	.byte	W18
	.byte		N06	
	.byte	W18
	.byte		N12	, An3
	.byte	W18
	.byte			Dn3
	.byte	W18
	.byte		N06	, An3
	.byte	W12
	.byte		N12	, Dn4
	.byte	W11
	.byte		N06	, En3
	.byte	W01
	.byte	W11
	.byte		N12	, An3
	.byte	W19
	.byte		N18	
	.byte	W18
	.byte		N12	, Bn3
	.byte	W18
	.byte		N12	
	.byte	W17
	.byte			En4
	.byte	W13
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N96	, An3
	.byte	W96
song000_8_3:
	.byte		N05	, Fn3, v124
	.byte	W06
	.byte		N06	, Fn3, v104
	.byte	W12
	.byte		N05	, Fn3, v124
	.byte	W06
	.byte		N06	, Fn3, v104
	.byte	W12
	.byte		N05	, Fn3, v124
	.byte	W06
	.byte		N06	, Fn3, v104
	.byte	W12
	.byte		N05	, Fn3, v124
	.byte	W06
	.byte		N06	, Fn3, v104
	.byte	W12
	.byte		N05	, Fn3, v124
	.byte	W06
	.byte		N06	, Fn3, v104
	.byte	W12
	.byte		N05	, Fn3, v124
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song000_8_3
	.byte		N05	, Fn3, v124
	.byte	W06
	.byte			Fn3, v104
	.byte	W06
	.byte		N12	, Fn3, v124
	.byte	W36
	.byte	FINE

	@********************** Track  9 **********************@

	.global song000_9
song000_9:	@ 0x082643EE
	.byte	KEYSH	, 0
	.byte	VOICE	, 95
	.byte	PAN	, c_v
	.byte	VOL	, v066
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W72
	.byte		N72	, Cs2, v116
	.byte	W24
	.byte	W48
	.byte	FINE

	@********************** Track  10 **********************@

	.global song000_10
song000_10:	@ 0x08264411
	.byte	KEYSH	, 0
	.byte	VOICE	, 13
	.byte	VOL	, v080
	.byte		TIE	, Gs1, v124
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		EOT	
song000_10_1:
	.byte		N06	, En2, v124
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
	.byte		N06	, Gs1
	.byte	W06
	.byte	PEND
song000_10_2:
	.byte		N06	, Fn2, v124
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
	.byte			Fn2
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
	.byte	PEND
	.byte			Fs2
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
	.byte			Fs2
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
song000_10_3:
	.byte		N06	, Gs2, v124
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
	.byte			Gs2
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
	.byte	PEND
	.byte	PATT	
		.word	song000_10_1
	.byte	PATT	
		.word	song000_10_2
	.byte		N06	, Fs2, v124
	.byte	W06
	.byte		N04	, Ds2
	.byte	W06
	.byte		N12	, Bn1
	.byte	W12
	.byte		N06	, Fs1
	.byte	W06
	.byte		N12	, Bn1
	.byte	W12
	.byte		N06	, Ds2
	.byte	W06
	.byte			Fs2
	.byte	W06
	.byte		N04	, Cs2
	.byte	W06
	.byte		N12	, Bn1
	.byte	W12
	.byte		N06	, Fs1
	.byte	W06
	.byte		N12	, Bn1
	.byte	W12
	.byte		N06	, Fs2
	.byte	W06
	.byte	PATT	
		.word	song000_10_3
	.byte		N12	, Gs1, v124
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte		N06	, Gs1
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			Gs2
	.byte	W06
	.byte		N12	, Gs3
	.byte	W12
	.byte		N06	, Fs3
	.byte	W06
	.byte			En3
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			Fs2
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Fs2
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
	.byte		N18	, Gs1
	.byte	W78
	.byte		N12	
	.byte	W18
	.byte		N18	
	.byte	W78
	.byte		N06	
	.byte	W12
	.byte		N03	
	.byte	W06
	.byte		N18	
	.byte	W78
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W06
	.byte		N92	, Fs1
	.byte	W96
song000_10_4:
	.byte		N05	, Dn2, v124
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte		N05	, Dn1
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte		N05	, Dn2
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte		N05	, Dn1
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte		N05	, Dn2
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte			Dn1
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song000_10_4
	.byte		N05	, Dn2, v124
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N12	
	.byte	W36
	.byte	FINE

	@********************** Track  11 **********************@

	.global song000_11
song000_11:	@ 0x08264553
	.byte	KEYSH	, 0
	.byte	VOICE	, 39
	.byte	PAN	, c_v
	.byte	VOL	, v042
	.byte		N06	, Fs5, v104
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
song000_11_1:
	.byte		N06	, Fs5, v104
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
	.byte	PEND
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
	.byte	PATT	
		.word	song000_11_1
	.byte	W12
	.byte	VOICE	, 31
	.byte	VOL	, v063
	.byte	W12
	.byte		N04	, Gs2, v127
	.byte	W04
	.byte			An2, v100
	.byte	W04
	.byte			Gs2, v080
	.byte	W04
	.byte			An2, v060
	.byte	W04
	.byte			Gs2, v056
	.byte	W04
	.byte			An2, v060
	.byte	W04
	.byte			Gs2, v064
	.byte	W04
	.byte			An2, v068
	.byte	W04
	.byte			Gs2, v076
	.byte	W04
	.byte			An2, v080
	.byte	W04
	.byte			Gs2, v088
	.byte	W04
	.byte			An2, v096
	.byte	W04
	.byte			Gs2, v104
	.byte	W04
	.byte			An2, v108
	.byte	W04
	.byte			Gs2, v116
	.byte	W04
	.byte			An2, v124
	.byte	W04
	.byte			Gs2, v127
	.byte	W04
	.byte			An2
	.byte	W04
	.byte	W96
	.byte	W96
	.byte	VOICE	, 39
	.byte	PAN	, c_v
	.byte	VOL	, v056
	.byte	W96
	.byte	W96
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
	.byte	W06
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
	.byte		N06	, Gs3, v116
	.byte	W12
	.byte		N04	, En4, v112
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
	.byte		N06	, En4, v116
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
	.byte	W06
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
	.byte	W12
	.byte			Cs4
	.byte	W12
	.byte		N12	, Fs4
	.byte	W18
	.byte		N12	
	.byte	W18
	.byte			Gs4
	.byte	W18
	.byte			Gs4, v116
	.byte	W18
	.byte			Cs5, v124
	.byte	W11
	.byte	VOL	, v049
	.byte	W01
	.byte		N04	, Gs2, v096
	.byte	W04
	.byte			An2, v088
	.byte	W02
	.byte			Gs2, v076
	.byte	W04
	.byte			An2, v068
	.byte	W02
	.byte			Gs2, v064
	.byte	W04
	.byte			An2, v060
	.byte	W02
	.byte			Gs2, v056
	.byte	W04
	.byte			An2
	.byte	W02
	.byte			Gs2
	.byte	W04
	.byte			An2, v048
	.byte	W02
	.byte			Gs2
	.byte	W04
	.byte			An2
	.byte	W02
	.byte			Gs2
	.byte	W04
	.byte			An2
	.byte	W02
	.byte			Gs2, v056
	.byte	W04
	.byte			An2, v060
	.byte	W02
	.byte			Gs2, v064
	.byte	W04
	.byte			An2, v076
	.byte	W02
	.byte			Gs2, v088
	.byte	W04
	.byte			An2, v104
	.byte	W02
	.byte			Gs2, v108
	.byte	W04
	.byte			An2
	.byte	W02
	.byte			Gs2, v104
	.byte	W04
	.byte			An2, v092
	.byte	W02
	.byte			Gs2, v088
	.byte	W04
	.byte			An2, v080
	.byte	W02
	.byte			Gs2, v072
	.byte	W04
	.byte			An2, v068
	.byte	W02
	.byte			Gs2, v064
	.byte	W04
	.byte			An2
	.byte	W02
	.byte			Gs2, v060
	.byte	W04
	.byte			An2
	.byte	W02
	.byte			Gs2
	.byte	W04
	.byte			An2
	.byte	W04
	.byte			Bn2, v064
	.byte	W04
	.byte			Gs2, v068
	.byte	W04
	.byte			Bn2
	.byte	W04
	.byte			Cs3, v072
	.byte	W04
	.byte			Gs2, v080
	.byte	W04
	.byte			Cs3
	.byte	W04
	.byte			Ds3, v084
	.byte	W04
	.byte			Gs2, v088
	.byte	W04
	.byte			Cs3
	.byte	W04
	.byte			Fs3, v092
	.byte	W04
	.byte			Cs3, v096
	.byte	W04
	.byte			Fs3
	.byte	W04
	.byte			Gs3, v104
	.byte	W04
	.byte			Cs3, v112
	.byte	W04
	.byte			Fs3
	.byte	W04
	.byte			An3, v120
	.byte	W04
	.byte		N06	, Fs3, v127
	.byte	W06
	.byte			Bn3, v124
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			Bn4
	.byte	W06
song000_11_2:
	.byte	W06
	.byte		N05	, Cs5, v124
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
	.byte	W06
	.byte			Cs5
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
	.byte	W18
	.byte	PATT	
		.word	song000_11_2
	.byte	VOL	, v056
	.byte		N92	, Cs5, v124
	.byte	W96
song000_11_3:
	.byte		N05	, Cs5, v124
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
	.byte	PEND
	.byte	PATT	
		.word	song000_11_3
	.byte		N05	, Cs5, v124
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	
	.byte	W36
	.byte	FINE

	@********************** Track  12 **********************@

	.global song000_12
song000_12:	@ 0x0826478B
	.byte	KEYSH	, 0
	.byte	VOICE	, 5
	.byte	PAN	, c_v
	.byte	VOL	, v045
	.byte	W24
	.byte		N06	, Gs3, v104
	.byte	W12
	.byte			Gs3, v064
	.byte	W12
	.byte			Cs4, v104
	.byte	W12
	.byte			Cs4, v084
	.byte	W12
	.byte			Cs4, v064
	.byte	W12
	.byte			Cs4, v044
	.byte	W12
	.byte			Gs3, v104
	.byte	W12
	.byte			Gs3, v064
	.byte	W12
	.byte			Bn3, v104
	.byte	W12
	.byte			Bn3, v084
	.byte	W12
	.byte			Bn3, v064
	.byte	W12
	.byte			Bn3, v044
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte	W24
	.byte			An3, v104
	.byte	W12
	.byte			An3, v064
	.byte	W12
	.byte			Cs4, v104
	.byte	W12
	.byte			Cs4, v084
	.byte	W12
	.byte			Cs4, v064
	.byte	W12
	.byte			Cs4, v044
	.byte	W12
	.byte			Fs4, v104
	.byte	W12
	.byte			Fs4, v084
	.byte	W12
	.byte			Ds4, v104
	.byte	W12
	.byte			Ds4, v084
	.byte	W12
	.byte			Bn3, v104
	.byte	W12
	.byte			Bn3, v084
	.byte	W12
	.byte			Bn4, v104
	.byte	W12
	.byte			Bn4, v084
	.byte	W12
	.byte			Bn4, v104
	.byte	W12
	.byte			Bn4, v084
	.byte	W12
	.byte			Bn4, v064
	.byte	W12
	.byte			Bn4, v044
	.byte	W12
	.byte		N04	, Gs3, v072
	.byte	W06
	.byte			Cs4, v080
	.byte	W06
	.byte			Fs4, v100
	.byte	W06
	.byte			Bn4, v116
	.byte	W06
	.byte			Cs4, v080
	.byte	W04
	.byte			Fs4, v092
	.byte	W04
	.byte			Bn4, v100
	.byte	W04
	.byte			En5, v112
	.byte	W04
	.byte			Fs5, v124
	.byte	W04
	.byte		N05	, Bn5, v120
	.byte	W04
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W92
	.byte	W03
	.byte	PAN	, c_v
	.byte	W01
	.byte	W96
	.byte	W24
	.byte		N24	, Fs4, v056
	.byte	W24
	.byte			Bn4, v064
	.byte	W24
	.byte		N23	, Fs5, v076
	.byte	W24
	.byte	W03
	.byte	VOICE	, 40
	.byte	W04
	.byte		N05	, Gs4, v104
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
	.byte			Cn4
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			Cn4
	.byte	W12
	.byte			Ds4
	.byte	W12
	.byte			Fs4
	.byte	W05
	.byte	W07
	.byte			Gs4
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
	.byte			Cn4
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			Cn4
	.byte	W12
	.byte			Fs4
	.byte	W17
	.byte	W07
	.byte			Gs4
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
	.byte			Cn4
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			En4
	.byte	W06
	.byte		N04	, Gs4
	.byte	W05
	.byte			Fs4
	.byte	W03
	.byte	VOICE	, 5
	.byte	W01
	.byte		N04	, An4
	.byte	W04
	.byte			Dn5
	.byte	W04
	.byte			Fs5
	.byte	W04
	.byte			Dn5
	.byte	W04
	.byte			An4
	.byte	W04
	.byte			Dn5
	.byte	W04
	.byte			An4
	.byte	W04
	.byte			Fs4
	.byte	W04
	.byte			An4
	.byte	W04
	.byte			Fs4
	.byte	W04
	.byte			Dn4
	.byte	W04
	.byte			Fs4
	.byte	W04
	.byte			Dn4
	.byte	W04
	.byte			An3
	.byte	W04
	.byte			Dn4
	.byte	W04
	.byte			Fs4
	.byte	W04
	.byte			An4
	.byte	W04
	.byte			Cs5
	.byte	W04
	.byte			Dn5
	.byte	W04
	.byte			An4
	.byte	W04
	.byte			Dn5
	.byte	W04
	.byte			Fs5
	.byte	W04
	.byte			An5
	.byte	W04
	.byte			Fs4, v088
	.byte	W04
	.byte			Gn4, v080
	.byte	W04
	.byte			Fs4, v072
	.byte	W04
	.byte			Gn4, v068
	.byte	W04
	.byte			Fs4, v064
	.byte	W04
	.byte			Gn4, v060
	.byte	W04
	.byte			Fs4
	.byte	W04
	.byte			Gn4
	.byte	W04
	.byte			Fs4, v056
	.byte	W04
	.byte			Gn4, v060
	.byte	W04
	.byte			Fs4
	.byte	W04
	.byte			Gn4
	.byte	W04
	.byte			An4, v064
	.byte	W04
	.byte			Bn4, v068
	.byte	W04
	.byte			An4
	.byte	W04
	.byte			Bn4, v072
	.byte	W04
	.byte			An4
	.byte	W04
	.byte			Bn4, v076
	.byte	W04
	.byte			An4, v080
	.byte	W04
	.byte			Bn4, v088
	.byte	W04
	.byte			An4, v092
	.byte	W04
	.byte			Bn4, v100
	.byte	W04
	.byte			An4, v104
	.byte	W04
	.byte			Bn4, v108
	.byte	W04
	.byte		N05	, Fs5, v104
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
	.byte	W06
	.byte		N09	
	.byte	W36
	.byte	FINE

	@********************** Track  13 **********************@

	.global song000_13
song000_13:	@ 0x0826491B
	.byte	KEYSH	, 0
	.byte	VOICE	, 89
	.byte	VOL	, v042
	.byte	PAN	, c_v
	.byte		N03	, Bn4, v116
	.byte	W06
	.byte		N03	
	.byte	W18
	.byte		N03	
	.byte	W06
	.byte		N03	
	.byte	W18
	.byte		N03	
	.byte	W06
	.byte		N03	
	.byte	W18
	.byte		N03	
	.byte	W06
	.byte		N03	
	.byte	W18
song000_13_1:
	.byte		N03	, Bn4, v116
	.byte	W06
	.byte		N03	
	.byte	W18
	.byte		N03	
	.byte	W06
	.byte		N03	
	.byte	W18
	.byte		N03	
	.byte	W06
	.byte		N03	
	.byte	W18
	.byte		N03	
	.byte	W06
	.byte		N03	
	.byte	W18
	.byte	PEND
	.byte	PATT	
		.word	song000_13_1
	.byte	PATT	
		.word	song000_13_1
	.byte	PATT	
		.word	song000_13_1
	.byte	PATT	
		.word	song000_13_1
	.byte	PATT	
		.word	song000_13_1
	.byte	PATT	
		.word	song000_13_1
	.byte	PATT	
		.word	song000_13_1
	.byte	PATT	
		.word	song000_13_1
	.byte	PATT	
		.word	song000_13_1
	.byte	PATT	
		.word	song000_13_1
	.byte	PATT	
		.word	song000_13_1
	.byte		N03	, Bn4, v116
	.byte	W06
	.byte			Bn4, v064
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			Bn4, v116
	.byte	W06
	.byte			Bn4, v064
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			Bn4, v116
	.byte	W06
	.byte			Bn4, v076
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			Bn4, v116
	.byte	W06
	.byte			Bn4, v076
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			Bn4, v116
	.byte	W06
	.byte			Bn4, v076
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			Bn4, v116
	.byte	W06
song000_13_2:
	.byte		N03	, Bn4, v116
	.byte	W06
	.byte			Bn4, v064
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			Bn4, v116
	.byte	W06
	.byte			Bn4, v064
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			Bn4, v116
	.byte	W06
	.byte			Bn4, v076
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			Bn4, v116
	.byte	W06
	.byte			Bn4, v084
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte		N05	, Bn4, v116
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte	PEND
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song000_13_2
	.byte	PATT	
		.word	song000_13_2
	.byte	W48
	.byte	FINE

	@********************** Track  14 **********************@

	.global song000_14
song000_14:	@ 0x082649E7
	.byte	KEYSH	, 0
	.byte	VOICE	, 91
	.byte	VOL	, v042
	.byte	PAN	, c_v
	.byte	BEND	, c_v
	.byte	W12
	.byte		N12	, Fn5, v116
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W12
song000_14_1:
	.byte	W12
	.byte		N12	, Fn5, v116
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song000_14_1
	.byte	PATT	
		.word	song000_14_1
	.byte	PATT	
		.word	song000_14_1
	.byte	PATT	
		.word	song000_14_1
	.byte	PATT	
		.word	song000_14_1
	.byte	PATT	
		.word	song000_14_1
	.byte	PATT	
		.word	song000_14_1
	.byte	PATT	
		.word	song000_14_1
	.byte	PATT	
		.word	song000_14_1
	.byte	PATT	
		.word	song000_14_1
	.byte	PATT	
		.word	song000_14_1
	.byte	W96
	.byte	W96
song000_14_2:
	.byte		N12	, Fn5, v116
	.byte	W78
	.byte		N12	
	.byte	W18
	.byte	PEND
	.byte	PATT	
		.word	song000_14_2
	.byte	PATT	
		.word	song000_14_2
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W48
	.byte	FINE
    
	mAlignWord
	.global song000
song000:	@ 0x08264A58
	.byte	14		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	mAlignWord
	.word	voicegroup016	@ voicegroup/tone
	.word	song000_1		@ track
	.word	song000_2		@ track
	.word	song000_3		@ track
	.word	song000_4		@ track
	.word	song000_5		@ track
	.word	song000_6		@ track
	.word	song000_7		@ track
	.word	song000_8		@ track
	.word	song000_9		@ track
	.word	song000_10		@ track
	.word	song000_11		@ track
	.word	song000_12		@ track
	.word	song000_13		@ track
	.word	song000_14		@ track

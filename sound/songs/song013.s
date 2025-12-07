	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song013_1
song013_1:	@ 0x0826B560
	.byte	KEYSH	, 0
song013_1_3:
	.byte	TEMPO	, 77
	.byte	VOICE	, 127
	.byte	VOL	, v086
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song013_1_1:
	.byte		N11	, Cs4, v116
	.byte	W12
	.byte			Ds4, v084
	.byte	W12
	.byte			Cs4, v116
	.byte	W12
	.byte			Ds4, v084
	.byte	W12
	.byte			Cs4, v116
	.byte	W12
	.byte			Ds4, v084
	.byte	W12
	.byte			Cs4, v116
	.byte	W12
	.byte			Ds4, v084
	.byte	W12
	.byte	PEND
song013_1_2:
	.byte		N11	, Cs4, v116
	.byte	W12
	.byte			Ds4, v084
	.byte	W12
	.byte			Cs4, v116
	.byte	W12
	.byte			Ds4, v084
	.byte	W12
	.byte			Cs4, v116
	.byte	W12
	.byte			Ds4, v084
	.byte	W12
	.byte			Cs4, v116
	.byte	W12
	.byte		N05	, Ds4, v084
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song013_1_1
	.byte	PATT	
		.word	song013_1_2
	.byte	PATT	
		.word	song013_1_1
	.byte	PATT	
		.word	song013_1_2
	.byte	PATT	
		.word	song013_1_1
	.byte	PATT	
		.word	song013_1_2
	.byte	GOTO	
		.word	song013_1_3
	.byte	FINE

	@********************** Track  2 **********************@

	.global song013_2
song013_2:	@ 0x0826B5CB
	.byte	KEYSH	, 0
song013_2_4:
	.byte	VOICE	, 42
	.byte	VOL	, v100
	.byte	PAN	, c_v
	.byte		N07	, As1, v116
	.byte	W12
	.byte		N06	, As1, v076
	.byte	W12
	.byte		N07	, Cs2, v116
	.byte	W12
	.byte		N06	, Cs2, v076
	.byte	W12
	.byte		N07	, As1, v116
	.byte	W12
	.byte		N06	, As1, v076
	.byte	W12
	.byte		N07	, Cs2, v116
	.byte	W12
	.byte		N06	, Cs2, v076
	.byte	W12
	.byte		N07	, As1, v116
	.byte	W12
	.byte		N06	, As1, v076
	.byte	W12
	.byte		N07	, Cs2, v116
	.byte	W12
	.byte		N06	, Cs2, v076
	.byte	W12
	.byte		N07	, As1, v116
	.byte	W12
	.byte		N06	, As1, v076
	.byte	W12
	.byte		N07	, Cs2, v116
	.byte	W12
	.byte		N06	, Cs2, v076
	.byte	W12
song013_2_1:
	.byte		N07	, Gs1, v116
	.byte	W12
	.byte		N06	, Gs1, v076
	.byte	W12
	.byte		N07	, Bn1, v116
	.byte	W12
	.byte		N06	, Bn1, v076
	.byte	W12
	.byte		N07	, Gs1, v116
	.byte	W12
	.byte		N06	, Gs1, v076
	.byte	W12
	.byte		N07	, Bn1, v116
	.byte	W12
	.byte		N06	, Bn1, v076
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song013_2_1
	.byte		N07	, Fs1, v116
	.byte	W12
	.byte		N06	, Fs1, v076
	.byte	W12
	.byte		N07	, An1, v116
	.byte	W12
	.byte		N06	, An1, v076
	.byte	W12
	.byte		N07	, Fs1, v116
	.byte	W12
	.byte		N06	, Fs1, v076
	.byte	W12
	.byte		N07	, An1, v116
	.byte	W12
	.byte		N06	, An1, v076
	.byte	W12
	.byte		N07	, En1, v116
	.byte	W12
	.byte		N06	, En1, v076
	.byte	W12
	.byte		N07	, Gn1, v116
	.byte	W12
	.byte		N06	, Gn1, v076
	.byte	W12
	.byte		N07	, En1, v116
	.byte	W12
	.byte		N06	, En1, v076
	.byte	W12
	.byte		N07	, Gn1, v116
	.byte	W12
	.byte		N06	, Gn1, v076
	.byte	W12
song013_2_2:
	.byte		N07	, Dn1, v116
	.byte	W12
	.byte		N06	, Dn1, v076
	.byte	W12
	.byte		N07	, Fn1, v116
	.byte	W12
	.byte		N06	, Fn1, v076
	.byte	W12
	.byte		N07	, Dn1, v116
	.byte	W12
	.byte		N06	, Dn1, v076
	.byte	W12
	.byte		N07	, Fn1, v116
	.byte	W12
	.byte		N06	, Fn1, v076
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song013_2_2
	.byte	VOICE	, 43
	.byte	PAN	, c_v-30
	.byte	W12
	.byte		N06	, Fn2, v084
	.byte	W12
	.byte			Fn2, v064
	.byte	W12
	.byte			Fn2, v036
	.byte	W24
	.byte			Gn2, v084
	.byte	W12
	.byte			Gn2, v036
	.byte	W12
	.byte			Gn2, v024
	.byte	W12
	.byte	W12
	.byte			Fn2, v084
	.byte	W12
	.byte			Fn2, v064
	.byte	W12
	.byte			Fn2, v036
	.byte	W18
	.byte	VOICE	, 42
	.byte	W06
	.byte		N06	, Cn3, v084
	.byte	W12
	.byte			Cn3, v064
	.byte	W12
	.byte			Cn3, v036
	.byte	W11
	.byte	VOICE	, 43
	.byte	W01
song013_2_3:
	.byte		N06	, As2, v104
	.byte	W12
	.byte			Dn2, v084
	.byte	W12
	.byte		N12	, As2, v104
	.byte	W12
	.byte		N06	, Dn2, v084
	.byte	W24
	.byte			As2, v104
	.byte	W36
	.byte	PEND
	.byte	PATT	
		.word	song013_2_3
	.byte	VOICE	, 43
	.byte	W12
	.byte		N06	, Fn2, v084
	.byte	W12
	.byte			Fn2, v064
	.byte	W12
	.byte			Fn2, v036
	.byte	W24
	.byte			Gn2, v084
	.byte	W12
	.byte			Gn2, v036
	.byte	W12
	.byte			Gn2, v024
	.byte	W12
	.byte	W12
	.byte			Gn2, v084
	.byte	W12
	.byte			Gn2, v064
	.byte	W12
	.byte			Gn2, v036
	.byte	W24
	.byte			As2, v084
	.byte	W12
	.byte			As2, v064
	.byte	W12
	.byte			As2, v036
	.byte	W11
	.byte	VOICE	, 43
	.byte	W01
	.byte		N06	, As2, v104
	.byte	W11
	.byte	VOICE	, 42
	.byte	W01
	.byte		N06	, Cn2, v084
	.byte	W11
	.byte	VOICE	, 43
	.byte	W01
	.byte		N11	, An2, v104
	.byte	W11
	.byte	VOICE	, 42
	.byte	W01
	.byte		N06	, Cn2, v084
	.byte	W23
	.byte	VOICE	, 43
	.byte	W01
	.byte		N06	, Fn2, v104
	.byte	W32
	.byte	W03
	.byte	VOICE	, 43
	.byte	W01
	.byte		N06	, As2
	.byte	W11
	.byte	VOICE	, 42
	.byte	W01
	.byte		N06	, Cn2, v084
	.byte	W11
	.byte	VOICE	, 43
	.byte	W01
	.byte		N11	, An2, v104
	.byte	W11
	.byte	VOICE	, 42
	.byte	W01
	.byte		N06	, Cn2, v084
	.byte	W24
	.byte			Cn3, v104
	.byte	W12
	.byte			Cn3, v084
	.byte	W12
	.byte			Cn3, v056
	.byte	W12
	.byte	GOTO	
		.word	song013_2_4
	.byte	FINE

	@********************** Track  3 **********************@

	.global song013_3
song013_3:	@ 0x0826B760
	.byte	KEYSH	, 0
song013_3_4:
	.byte	VOICE	, 22
	.byte	VOL	, v062
	.byte	PAN	, c_v+30
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song013_3_2:
	.byte	VOICE	, 22
	.byte	W12
	.byte		N18	, Fs3, v084
	.byte	W24
	.byte		N06	, Fs3, v104
	.byte	W24
	.byte			Fs3, v084
	.byte	W24
	.byte			Fs3, v104
	.byte	W12
	.byte	PEND
song013_3_3:
	.byte	W12
	.byte		N06	, Fs3, v084
	.byte	W24
	.byte			Fs3, v104
	.byte	W24
	.byte			Fs3, v084
	.byte	W24
	.byte			Fs3, v104
	.byte	W12
	.byte	PEND
song013_3_1:
	.byte	VOICE	, 21
	.byte	W12
	.byte		N18	, Gn3, v084
	.byte	W24
	.byte		N06	, Gn3, v104
	.byte	W24
	.byte			Gn3, v084
	.byte	W24
	.byte			Gn3, v104
	.byte	W12
	.byte	PEND
	.byte	W12
	.byte			Gn3, v084
	.byte	W24
	.byte			Gn3, v104
	.byte	W24
	.byte			Gn3, v084
	.byte	W23
	.byte	VOICE	, 21
	.byte	W01
	.byte		N06	, Gn3, v104
	.byte	W12
	.byte	PATT	
		.word	song013_3_1
	.byte	W12
	.byte		N06	, Gn3, v084
	.byte	W24
	.byte			Gn3, v104
	.byte	W24
	.byte			Gn3, v084
	.byte	W24
	.byte			Gn3, v104
	.byte	W12
	.byte	PATT	
		.word	song013_3_2
	.byte	PATT	
		.word	song013_3_3
	.byte	GOTO	
		.word	song013_3_4
	.byte	FINE

	@********************** Track  4 **********************@

	.global song013_4
song013_4:	@ 0x0826B7D7
	.byte	KEYSH	, 0
song013_4_2:
	.byte	VOICE	, 48
	.byte	VOL	, v059
	.byte	PAN	, c_v
	.byte		N22	, Fn4, v124
	.byte	W24
	.byte			Fn3, v096
	.byte	W24
	.byte			Fn4, v124
	.byte	W24
	.byte			Fn3, v096
	.byte	W24
song013_4_1:
	.byte		N04	, Fn4, v124
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Fn3, v096
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N22	, Fn4, v124
	.byte	W24
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Fn3, v096
	.byte	W06
	.byte			Fn4, v124
	.byte	W06
	.byte		N22	, Fn3
	.byte	W24
	.byte	PEND
	.byte			Ds4
	.byte	W24
	.byte			Ds3, v096
	.byte	W24
	.byte			Ds4, v124
	.byte	W24
	.byte			Ds3, v096
	.byte	W24
	.byte		N04	, Ds4, v124
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Ds3, v096
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N22	, Ds4, v124
	.byte	W24
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Ds3, v096
	.byte	W06
	.byte			Ds4, v124
	.byte	W06
	.byte		N22	, Ds3
	.byte	W24
	.byte			Cs4
	.byte	W24
	.byte			Cs3, v096
	.byte	W24
	.byte			Cs4, v124
	.byte	W24
	.byte			Cs3, v096
	.byte	W24
	.byte			Cs4, v124
	.byte	W24
	.byte			Cs3, v096
	.byte	W24
	.byte			Ds4, v124
	.byte	W24
	.byte			Ds3, v096
	.byte	W24
	.byte		N04	, Bn3, v124
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Bn2, v096
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N22	, Bn3, v124
	.byte	W24
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Bn2, v096
	.byte	W06
	.byte			Bn3, v124
	.byte	W06
	.byte		N22	, Bn2
	.byte	W24
	.byte		N04	, Cs4
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Cs3, v096
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N22	, Cs4, v124
	.byte	W24
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Cs3, v096
	.byte	W06
	.byte			Cs4, v124
	.byte	W06
	.byte		N22	, Cs3
	.byte	W24
	.byte			Fn4
	.byte	W24
	.byte			Fn3, v096
	.byte	W24
	.byte			Fn4, v124
	.byte	W24
	.byte			Fn3, v096
	.byte	W24
	.byte	PATT	
		.word	song013_4_1
	.byte		N22	, Gn4, v124
	.byte	W24
	.byte			Gn3, v096
	.byte	W24
	.byte			Gn4, v124
	.byte	W24
	.byte			Gn3, v096
	.byte	W24
	.byte		N04	, Gn4, v124
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Gn3, v096
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N22	, Gn4, v124
	.byte	W24
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Gn3, v096
	.byte	W06
	.byte			Gn4, v124
	.byte	W06
	.byte		N22	, Gn3
	.byte	W24
	.byte			Gs3
	.byte	W24
	.byte			Gs2, v096
	.byte	W24
	.byte			Gs3, v124
	.byte	W24
	.byte			Gs2, v096
	.byte	W24
	.byte		N04	, Gs3, v124
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Gs2, v096
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N22	, Gs3, v124
	.byte	W24
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Gs2, v096
	.byte	W06
	.byte			Gs3, v124
	.byte	W06
	.byte		N22	, Gs2
	.byte	W24
	.byte			As3
	.byte	W24
	.byte			As2, v096
	.byte	W24
	.byte			As3, v124
	.byte	W24
	.byte			As2, v096
	.byte	W24
	.byte		N04	, As3, v124
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			As2, v096
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N22	, As3, v124
	.byte	W24
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			As2, v096
	.byte	W06
	.byte			As3, v124
	.byte	W06
	.byte		N22	, As2
	.byte	W24
	.byte	GOTO	
		.word	song013_4_2
	.byte	FINE

	@********************** Track  5 **********************@

	.global song013_5
song013_5:	@ 0x0826B90B
	.byte	KEYSH	, 0
song013_5_1:
	.byte	VOICE	, 31
	.byte	MOD	, 0
	.byte	VOL	, v055
	.byte	PAN	, c_v+30
	.byte	MODT	, 0
	.byte	TUNE	, c_v
	.byte	BENDR	, 12
	.byte	BEND	, c_v
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	VOICE	, 23
	.byte	MOD	, 0
	.byte	VOL	, v043
	.byte	PAN	, c_v
	.byte	TUNE	, c_v+5
	.byte		N06	, An3, v064
	.byte	W12
	.byte			As3, v096
	.byte	W24
	.byte			Cn4, v104
	.byte	W24
	.byte			Cs4, v076
	.byte	W12
	.byte			Dn4, v096
	.byte	W12
	.byte			An4, v104
	.byte	W12
	.byte	W60
	.byte		N06	
	.byte	W24
	.byte			Gn4, v096
	.byte	W12
	.byte	W96
	.byte	W96
	.byte			Gn3, v064
	.byte	W12
	.byte			An3, v096
	.byte	W24
	.byte			As3, v104
	.byte	W24
	.byte			Cn4, v076
	.byte	W12
	.byte			Dn4, v096
	.byte	W12
	.byte			Gn4, v104
	.byte	W12
	.byte	W60
	.byte			An4
	.byte	W24
	.byte			Fn4, v096
	.byte	W12
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	song013_5_1
	.byte	FINE

	@********************** Track  6 **********************@

	.global song013_6
song013_6:	@ 0x0826B96A
	.byte	KEYSH	, 0
song013_6_1:
	.byte	VOICE	, 24
	.byte	VOL	, v031
	.byte	TUNE	, c_v-10
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W02
	.byte	VOICE	, 24
	.byte	VOL	, v023
	.byte	PAN	, c_v
	.byte	TUNE	, c_v-10
	.byte	W01
	.byte		N06	, An3, v064
	.byte	W12
	.byte			As3, v096
	.byte	W24
	.byte			Cn4, v104
	.byte	W24
	.byte			Cs4, v076
	.byte	W12
	.byte			Dn4, v096
	.byte	W12
	.byte			An4, v104
	.byte	W09
	.byte	W60
	.byte	W03
	.byte		N06	
	.byte	W24
	.byte			Gn4, v096
	.byte	W09
	.byte	W96
	.byte	W96
	.byte	W03
	.byte			Gn3, v064
	.byte	W12
	.byte			An3, v096
	.byte	W24
	.byte			As3, v104
	.byte	W24
	.byte			Cn4, v076
	.byte	W12
	.byte			Dn4, v096
	.byte	W12
	.byte			Gn4, v104
	.byte	W09
	.byte	W60
	.byte	W03
	.byte			An4
	.byte	W24
	.byte			Fn4, v096
	.byte	W09
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	song013_6_1
	.byte	FINE

	@********************** Track  7 **********************@

	.global song013_7
song013_7:	@ 0x0826B9C2
	.byte	KEYSH	, 0
song013_7_3:
	.byte	VOICE	, 49
	.byte	VOL	, v094
	.byte	BENDR	, 6
	.byte	LFOS	, 44
	.byte		N48	, Cn2, v104
	.byte	W48
	.byte			Cn3, v116
	.byte	W48
	.byte			Cn2, v104
	.byte	W48
	.byte			Cn3, v116
	.byte	W48
song013_7_1:
	.byte		N48	, As1, v104
	.byte	W48
	.byte			As2, v116
	.byte	W48
	.byte	PEND
	.byte	PATT	
		.word	song013_7_1
	.byte		N48	, Gs1, v104
	.byte	W48
	.byte			Gs2, v116
	.byte	W48
	.byte			Fs1, v104
	.byte	W48
	.byte			Fs2, v116
	.byte	W48
song013_7_2:
	.byte		N48	, En1, v104
	.byte	W48
	.byte			En2, v116
	.byte	W48
	.byte	PEND
	.byte	PATT	
		.word	song013_7_2
	.byte		N96	, Cn2, v104
	.byte	W96
	.byte		N48	, Cn3, v116
	.byte	W48
	.byte			Cn2, v104
	.byte	W48
	.byte		N96	, Dn2
	.byte	W96
	.byte		N48	, Dn3, v116
	.byte	W48
	.byte			Dn2, v104
	.byte	W48
	.byte		N96	, Ds2
	.byte	W96
	.byte		N48	, Ds3, v116
	.byte	W48
	.byte			Ds2, v104
	.byte	W48
	.byte		N96	, Fn2
	.byte	W96
	.byte		N48	, Fn1, v116
	.byte	W48
	.byte			Fn2, v104
	.byte	W48
	.byte	GOTO	
		.word	song013_7_3
	.byte	FINE

	@********************** Track  8 **********************@

	.global song013_8
song013_8:	@ 0x0826BA2F
	.byte	KEYSH	, 0
song013_8_2:
	.byte	VOICE	, 89
	.byte	VOL	, v047
	.byte		N03	, Dn5, v104
	.byte	W12
	.byte			Dn4, v080
	.byte	W12
	.byte			Dn5, v104
	.byte	W12
	.byte			Dn4, v080
	.byte	W12
	.byte			Dn5, v104
	.byte	W12
	.byte			Dn4, v080
	.byte	W12
	.byte			Dn5, v104
	.byte	W12
	.byte			Dn4, v080
	.byte	W12
song013_8_1:
	.byte		N03	, Dn5, v104
	.byte	W12
	.byte			Dn4, v080
	.byte	W12
	.byte			Dn5, v104
	.byte	W12
	.byte			Dn4, v080
	.byte	W12
	.byte			Dn5, v104
	.byte	W12
	.byte			Dn4, v080
	.byte	W12
	.byte			Dn5, v104
	.byte	W12
	.byte			Dn4, v080
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song013_8_1
	.byte	PATT	
		.word	song013_8_1
	.byte	PATT	
		.word	song013_8_1
	.byte	PATT	
		.word	song013_8_1
	.byte	PATT	
		.word	song013_8_1
	.byte	PATT	
		.word	song013_8_1
	.byte	PATT	
		.word	song013_8_1
	.byte	PATT	
		.word	song013_8_1
	.byte	PATT	
		.word	song013_8_1
	.byte	PATT	
		.word	song013_8_1
	.byte	PATT	
		.word	song013_8_1
	.byte	PATT	
		.word	song013_8_1
	.byte	PATT	
		.word	song013_8_1
	.byte	PATT	
		.word	song013_8_1
	.byte	GOTO	
		.word	song013_8_2
	.byte	FINE
    
	mAlignWord
	.global song013
song013:	@ 0x0826BAB4
	.byte	8		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	mAlignWord
	.word	voicegroup016		@ voicegroup/tone

	.word	song013_1		@ track
	.word	song013_2		@ track
	.word	song013_3		@ track
	.word	song013_4		@ track
	.word	song013_5		@ track
	.word	song013_6		@ track
	.word	song013_7		@ track
	.word	song013_8		@ track

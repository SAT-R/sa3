	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song018_1
song018_1:	@ 0x0826DBD4
	.byte	KEYSH	, 0
song018_1_4:
	.byte	TEMPO	, 39
	.byte	VOICE	, 16
	.byte	VOL	, v031
	.byte	PAN	, c_v-40
	.byte	W96
	.byte	W96
	.byte	W96
song018_1_2:
	.byte	W92
	.byte	W03
	.byte	VOICE	, 16
	.byte	W01
	.byte	PEND
song018_1_1:
	.byte		N04	, En3, v104
	.byte	W06
	.byte			En3, v044
	.byte	W06
	.byte			En3, v104
	.byte	W06
	.byte			En3, v044
	.byte	W05
	.byte	VOICE	, 17
	.byte	W01
	.byte		N04	, En3, v104
	.byte	W05
	.byte	VOICE	, 16
	.byte	W01
	.byte		N04	, En3, v044
	.byte	W05
	.byte	VOICE	, 18
	.byte	W01
	.byte		N04	, En3, v104
	.byte	W05
	.byte	VOICE	, 16
	.byte	W01
	.byte		N04	, En3, v044
	.byte	W06
	.byte			Cs3, v104
	.byte	W06
	.byte			Cs3, v044
	.byte	W06
	.byte			Cs3, v104
	.byte	W06
	.byte			Cs3, v044
	.byte	W05
	.byte	VOICE	, 17
	.byte	W01
	.byte		N04	, Cs3, v104
	.byte	W05
	.byte	VOICE	, 16
	.byte	W01
	.byte		N04	, Cs3, v044
	.byte	W05
	.byte	VOICE	, 18
	.byte	W01
	.byte		N04	, Cs3, v104
	.byte	W05
	.byte	VOICE	, 16
	.byte	W01
	.byte		N04	, Cs3, v044
	.byte	W05
	.byte	VOICE	, 16
	.byte	W01
	.byte	PEND
	.byte		N04	, An3, v104
	.byte	W06
	.byte			An3, v044
	.byte	W06
	.byte			An3, v104
	.byte	W06
	.byte			An3, v044
	.byte	W05
	.byte	VOICE	, 17
	.byte	W01
	.byte		N04	, An3, v104
	.byte	W05
	.byte	VOICE	, 16
	.byte	W01
	.byte		N04	, An3, v044
	.byte	W05
	.byte	VOICE	, 18
	.byte	W01
	.byte		N04	, An3, v104
	.byte	W05
	.byte	VOICE	, 16
	.byte	W01
	.byte		N04	, An3, v044
	.byte	W06
	.byte			An3, v104
	.byte	W06
	.byte			An3, v044
	.byte	W06
	.byte			An3, v104
	.byte	W06
	.byte			An3, v044
	.byte	W05
	.byte	VOICE	, 17
	.byte	W01
	.byte		N04	, An3, v104
	.byte	W05
	.byte	VOICE	, 16
	.byte	W01
	.byte		N04	, An3, v044
	.byte	W05
	.byte	VOICE	, 18
	.byte	W01
	.byte		N04	, An3, v104
	.byte	W05
	.byte	VOICE	, 16
	.byte	W01
	.byte		N04	, An3, v044
	.byte	W05
	.byte	VOICE	, 16
	.byte	W01
	.byte	PATT	
		.word	song018_1_1
	.byte		N04	, An3, v104
	.byte	W06
	.byte			An3, v044
	.byte	W06
	.byte			An3, v104
	.byte	W06
	.byte			An3, v044
	.byte	W05
	.byte	VOICE	, 17
	.byte	W01
	.byte		N04	, An3, v104
	.byte	W05
	.byte	VOICE	, 16
	.byte	W01
	.byte		N04	, An3, v044
	.byte	W05
	.byte	VOICE	, 18
	.byte	W01
	.byte		N04	, An3, v104
	.byte	W05
	.byte	VOICE	, 16
	.byte	W01
	.byte		N04	, An3, v044
	.byte	W06
	.byte			Gn3, v104
	.byte	W06
	.byte			Gn3, v044
	.byte	W06
	.byte			Gn3, v104
	.byte	W06
	.byte			Gn3, v044
	.byte	W05
	.byte	VOICE	, 17
	.byte	W01
	.byte		N04	, Gn3, v104
	.byte	W05
	.byte	VOICE	, 16
	.byte	W01
	.byte		N04	, Gn3, v044
	.byte	W05
	.byte	VOICE	, 18
	.byte	W01
	.byte		N04	, Gn3, v104
	.byte	W05
	.byte	VOICE	, 16
	.byte	W01
	.byte		N04	, Gn3, v044
	.byte	W06
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song018_1_2
song018_1_3:
	.byte		N04	, En3, v104
	.byte	W06
	.byte			En3, v044
	.byte	W06
	.byte			En3, v104
	.byte	W06
	.byte			En3, v044
	.byte	W05
	.byte	VOICE	, 17
	.byte	W01
	.byte		N04	, En3, v104
	.byte	W05
	.byte	VOICE	, 16
	.byte	W01
	.byte		N04	, En3, v044
	.byte	W05
	.byte	VOICE	, 18
	.byte	W01
	.byte		N04	, En3, v104
	.byte	W05
	.byte	VOICE	, 16
	.byte	W01
	.byte		N04	, En3, v044
	.byte	W12
	.byte		N04	
	.byte	W06
	.byte			En3, v104
	.byte	W06
	.byte			En3, v044
	.byte	W05
	.byte	VOICE	, 17
	.byte	W01
	.byte		N04	, En3, v104
	.byte	W05
	.byte	VOICE	, 16
	.byte	W01
	.byte		N04	, En3, v044
	.byte	W05
	.byte	VOICE	, 18
	.byte	W01
	.byte		N04	, En3, v104
	.byte	W05
	.byte	VOICE	, 16
	.byte	W01
	.byte		N04	, En3, v044
	.byte	W05
	.byte	VOICE	, 16
	.byte	W01
	.byte	PEND
	.byte	PATT	
		.word	song018_1_3
	.byte	PATT	
		.word	song018_1_3
	.byte		N04	, Cs3, v104
	.byte	W06
	.byte			Cs3, v044
	.byte	W06
	.byte			Cs3, v104
	.byte	W06
	.byte			Cs3, v044
	.byte	W05
	.byte	VOICE	, 17
	.byte	W01
	.byte		N04	, Cs3, v104
	.byte	W05
	.byte	VOICE	, 16
	.byte	W01
	.byte		N04	, Cs3, v044
	.byte	W05
	.byte	VOICE	, 18
	.byte	W01
	.byte		N04	, Cs3, v104
	.byte	W05
	.byte	VOICE	, 16
	.byte	W01
	.byte		N04	, Cs3, v044
	.byte	W12
	.byte		N04	
	.byte	W06
	.byte			Cs3, v104
	.byte	W06
	.byte			Cs3, v044
	.byte	W05
	.byte	VOICE	, 17
	.byte	W01
	.byte		N04	, Cs3, v104
	.byte	W05
	.byte	VOICE	, 16
	.byte	W01
	.byte		N04	, Cs3, v044
	.byte	W05
	.byte	VOICE	, 18
	.byte	W01
	.byte		N04	, Cs3, v104
	.byte	W05
	.byte	VOICE	, 16
	.byte	W01
	.byte		N04	, Cs3, v044
	.byte	W05
	.byte	VOICE	, 16
	.byte	W01
	.byte		N04	, An2, v104
	.byte	W06
	.byte			An2, v044
	.byte	W06
	.byte			An2, v104
	.byte	W06
	.byte			An2, v044
	.byte	W05
	.byte	VOICE	, 17
	.byte	W01
	.byte		N04	, An2, v104
	.byte	W05
	.byte	VOICE	, 16
	.byte	W01
	.byte		N04	, An2, v044
	.byte	W05
	.byte	VOICE	, 18
	.byte	W01
	.byte		N04	, An2, v104
	.byte	W05
	.byte	VOICE	, 16
	.byte	W01
	.byte		N04	, An2, v044
	.byte	W12
	.byte		N04	
	.byte	W06
	.byte			An2, v104
	.byte	W06
	.byte			An2, v044
	.byte	W05
	.byte	VOICE	, 17
	.byte	W01
	.byte		N04	, An2, v104
	.byte	W05
	.byte	VOICE	, 16
	.byte	W01
	.byte		N04	, An2, v044
	.byte	W05
	.byte	VOICE	, 18
	.byte	W01
	.byte		N04	, An2, v104
	.byte	W05
	.byte	VOICE	, 16
	.byte	W01
	.byte		N04	, An2, v044
	.byte	W05
	.byte	VOICE	, 16
	.byte	W01
	.byte		N04	, Ds3, v104
	.byte	W06
	.byte			Ds3, v044
	.byte	W06
	.byte			Ds3, v104
	.byte	W06
	.byte			Ds3, v044
	.byte	W05
	.byte	VOICE	, 17
	.byte	W01
	.byte		N04	, Ds3, v104
	.byte	W05
	.byte	VOICE	, 16
	.byte	W01
	.byte		N04	, Ds3, v044
	.byte	W05
	.byte	VOICE	, 18
	.byte	W01
	.byte		N04	, Ds3, v104
	.byte	W05
	.byte	VOICE	, 16
	.byte	W01
	.byte		N04	, Ds3, v044
	.byte	W12
	.byte		N04	
	.byte	W06
	.byte			Ds3, v104
	.byte	W06
	.byte			Ds3, v044
	.byte	W05
	.byte	VOICE	, 17
	.byte	W01
	.byte		N04	, Ds3, v104
	.byte	W05
	.byte	VOICE	, 16
	.byte	W01
	.byte		N04	, Ds3, v044
	.byte	W05
	.byte	VOICE	, 18
	.byte	W01
	.byte		N04	, Ds3, v104
	.byte	W05
	.byte	VOICE	, 16
	.byte	W01
	.byte		N04	, Ds3, v044
	.byte	W05
	.byte	VOICE	, 16
	.byte	W01
	.byte	PATT	
		.word	song018_1_3
	.byte		N04	, En3, v104
	.byte	W06
	.byte			En3, v044
	.byte	W06
	.byte			En3, v104
	.byte	W06
	.byte			En3, v044
	.byte	W05
	.byte	VOICE	, 17
	.byte	W01
	.byte		N04	, En3, v104
	.byte	W05
	.byte	VOICE	, 16
	.byte	W01
	.byte		N04	, En3, v044
	.byte	W05
	.byte	VOICE	, 18
	.byte	W01
	.byte		N04	, En3, v104
	.byte	W05
	.byte	VOICE	, 16
	.byte	W01
	.byte		N04	, En3, v044
	.byte	W12
	.byte		N04	
	.byte	W06
	.byte			En3, v104
	.byte	W06
	.byte			En3, v044
	.byte	W05
	.byte	VOICE	, 17
	.byte	W01
	.byte		N04	, En3, v104
	.byte	W05
	.byte	VOICE	, 16
	.byte	W01
	.byte		N04	, En3, v044
	.byte	W05
	.byte	VOICE	, 18
	.byte	W01
	.byte		N04	, En3, v104
	.byte	W05
	.byte	VOICE	, 16
	.byte	W01
	.byte		N04	, En3, v044
	.byte	W06
	.byte	GOTO	
		.word	song018_1_4
	.byte	FINE

	@********************** Track  2 **********************@

	.global song018_2
song018_2:	@ 0x0826DE95
	.byte	KEYSH	, 0
song018_2_2:
	.byte	VOICE	, 107
	.byte	VOL	, v090
	.byte	PAN	, c_v+40
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W92
	.byte	W02
	.byte		N48	, Dn3, v084
	.byte		N48	, Fs3, v096
	.byte	W02
song018_2_1:
	.byte	W44
	.byte	W02
	.byte		N48	, Bn2, v092
	.byte		N48	, Gn3, v100
	.byte	W48
	.byte			Dn3, v096
	.byte		N48	, Gs3, v104
	.byte	W02
	.byte	PEND
	.byte	W44
	.byte	W02
	.byte			Bn2, v092
	.byte		N48	, En3, v100
	.byte	W48
	.byte			Dn3, v084
	.byte		N48	, Fs3, v096
	.byte	W02
	.byte	PATT	
		.word	song018_2_1
	.byte	W44
	.byte	W02
	.byte		N48	, Cn3, v092
	.byte		N48	, Fs3, v100
	.byte	W48
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
	.byte	GOTO	
		.word	song018_2_2
	.byte	FINE

	@********************** Track  3 **********************@

	.global song018_3
song018_3:	@ 0x0826DEEC
	.byte	KEYSH	, 0
song018_3_1:
	.byte	VOICE	, 107
	.byte	VOL	, v090
	.byte	PAN	, c_v
	.byte	W96
	.byte	W96
	.byte		N24	, Dn4, v104
	.byte	W24
	.byte			Bn3, v100
	.byte	W24
	.byte			Gs3, v096
	.byte	W24
	.byte			Bn3, v100
	.byte	W24
	.byte			As3
	.byte	W24
	.byte			En3, v096
	.byte	W24
	.byte			Dn3
	.byte	W24
	.byte		N21	, Cn3, v092
	.byte	W24
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W12
	.byte		N30	, Dn3, v116
	.byte		N12	, Fs3, v124
	.byte	W12
	.byte		N18	, Gs3
	.byte	W24
	.byte		N30	, Cn3, v116
	.byte		N12	, En3, v124
	.byte	W12
	.byte		N18	, Fs3
	.byte	W22
	.byte		N24	, Gs2, v116
	.byte		N12	, Cn3, v124
	.byte	W12
	.byte			Ds3
	.byte	W02
	.byte	W10
	.byte			An2
	.byte	W12
	.byte		N18	, Ds2, v116
	.byte		N18	, Gs2, v124
	.byte	W24
	.byte	W01
	.byte			Cn3, v116
	.byte		N18	, Fs3, v124
	.byte	W24
	.byte			Fs3, v116
	.byte		N18	, Cn4, v124
	.byte	W24
	.byte	W01
	.byte		N42	, En3, v116
	.byte		N42	, As3, v124
	.byte	W48
	.byte			Dn3, v116
	.byte		N42	, Gs3, v124
	.byte	W48
	.byte			Cn3, v116
	.byte		N42	, Fs3, v124
	.byte	W48
	.byte			Dn3, v116
	.byte		N42	, Gs3, v124
	.byte	W48
	.byte	W12
	.byte		N30	, Dn3, v116
	.byte		N12	, Fs3, v124
	.byte	W12
	.byte		N18	, Gs3
	.byte	W24
	.byte		N30	, Cn3, v116
	.byte		N12	, En3, v124
	.byte	W12
	.byte		N18	, Fs3
	.byte	W23
	.byte		N24	, Gs2, v116
	.byte		N12	, Cn3, v124
	.byte	W12
	.byte			Ds3
	.byte	W01
	.byte	W11
	.byte			An2
	.byte	W12
	.byte		N18	, Ds2, v116
	.byte		N18	, Gs2, v124
	.byte	W24
	.byte			Cn3, v116
	.byte		N18	, Fs3, v124
	.byte	W24
	.byte			Fs3, v116
	.byte		N18	, Cn4, v124
	.byte	W24
	.byte	W01
	.byte		N42	, Gs3, v116
	.byte		N42	, Dn4, v124
	.byte	W48
	.byte			Fs3, v116
	.byte		N42	, Cn4, v124
	.byte	W48
	.byte			En3, v116
	.byte		N42	, As3, v124
	.byte	W48
	.byte			Fs3, v116
	.byte		N42	, Cn4, v124
	.byte	W48
	.byte		N48	, Dn3, v116
	.byte		N48	, Fn3, v124
	.byte	W48
	.byte			Cs3, v116
	.byte		N48	, Fs3, v124
	.byte	W48
	.byte			Dn3, v116
	.byte		N48	, Gs3, v124
	.byte	W48
	.byte			Cs3, v116
	.byte		N48	, An3, v124
	.byte	W48
	.byte			Dn3, v116
	.byte		N48	, As3, v124
	.byte	W48
	.byte			Cs3, v116
	.byte		N48	, Bn3, v124
	.byte	W48
	.byte		N90	, Fs3, v116
	.byte		N42	, Ds4, v124
	.byte	W48
	.byte		N48	, Dn4
	.byte	W48
	.byte		N90	, Gs3, v116
	.byte		N42	, Ds4, v124
	.byte	W48
	.byte		N48	, Dn4
	.byte	W48
	.byte		N90	, Gn3, v116
	.byte		N42	, Cn4, v124
	.byte	W48
	.byte		N48	, As3
	.byte	W48
	.byte		N96	, Fs3, v116
	.byte		N96	, Bn3, v124
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	song018_3_1
	.byte	FINE

	@********************** Track  4 **********************@

	.global song018_4
song018_4:	@ 0x0826E000
	.byte	KEYSH	, 0
song018_4_3:
	.byte	VOICE	, 48
	.byte	VOL	, v090
	.byte	PAN	, c_v
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song018_4_1:
	.byte		N44	, Bn0, v124
	.byte	W48
	.byte			Gs0
	.byte	W48
	.byte	PEND
	.byte			An0
	.byte	W48
	.byte			En1
	.byte	W48
	.byte	PATT	
		.word	song018_4_1
	.byte		N44	, An0, v124
	.byte	W48
	.byte			Bn0
	.byte	W48
	.byte		N92	, Gn0
	.byte	W96
	.byte		N92	
	.byte	W96
	.byte			Fn0
	.byte	W96
	.byte		N92	
	.byte	W96
	.byte			Cs0
	.byte	W96
	.byte		N92	
	.byte	W96
	.byte			Cn0
	.byte	W96
	.byte		N92	
	.byte	W96
song018_4_2:
	.byte		N44	, En1, v124
	.byte	W48
	.byte		N44	
	.byte	W48
	.byte	PEND
	.byte	PATT	
		.word	song018_4_2
	.byte	PATT	
		.word	song018_4_2
	.byte		N44	, Cs1, v124
	.byte	W48
	.byte		N44	
	.byte	W48
	.byte			As0
	.byte	W48
	.byte		N44	
	.byte	W48
	.byte			Ds1
	.byte	W48
	.byte		N44	
	.byte	W48
	.byte	PATT	
		.word	song018_4_2
	.byte	PATT	
		.word	song018_4_2
	.byte	GOTO	
		.word	song018_4_3
	.byte	FINE

	@********************** Track  5 **********************@

	.global song018_5
song018_5:	@ 0x0826E062
	.byte	KEYSH	, 0
song018_5_2:
	.byte	VOICE	, 63
	.byte	VOL	, v090
	.byte	PAN	, c_v+40
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song018_5_1:
	.byte		N12	, Fn3, v084
	.byte	W18
	.byte		N28	, Cn3
	.byte	W30
	.byte		N12	, Fn3
	.byte	W18
	.byte		N24	, Cn3
	.byte	W30
	.byte	PEND
	.byte	PATT	
		.word	song018_5_1
	.byte		N12	, Fn3, v084
	.byte	W18
	.byte		N28	, Cn3
	.byte	W30
	.byte		N12	, Fn3
	.byte	W18
	.byte			Cn3
	.byte	W18
	.byte			Fn3
	.byte	W12
	.byte		N12	
	.byte	W18
	.byte		N28	, Dn3
	.byte	W30
	.byte		N12	, Fn3
	.byte	W18
	.byte		N24	, Dn3
	.byte	W30
	.byte		N12	, Fs3
	.byte	W18
	.byte		N28	, Dn3
	.byte	W30
	.byte		N12	, Fs3
	.byte	W18
	.byte		N24	, Dn3
	.byte	W30
	.byte		N12	, Gs3
	.byte	W18
	.byte		N28	, Dn3
	.byte	W30
	.byte		N12	, Gs3
	.byte	W18
	.byte		N24	, Dn3
	.byte	W30
	.byte	PATT	
		.word	song018_5_1
	.byte	PATT	
		.word	song018_5_1
	.byte	GOTO	
		.word	song018_5_2
	.byte	FINE

	@********************** Track  6 **********************@

	.global song018_6
song018_6:	@ 0x0826E0CE
	.byte	KEYSH	, 0
song018_6_4:
	.byte	VOICE	, 3
	.byte	VOL	, v090
	.byte	PAN	, c_v
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song018_6_1:
	.byte		N06	, Bn1, v124
	.byte	W12
	.byte			Bn1, v084
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Bn1, v064
	.byte	W12
	.byte			Gs1, v124
	.byte	W12
	.byte			Gs1, v084
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Gs1, v064
	.byte	W12
	.byte	PEND
	.byte			En1, v124
	.byte	W12
	.byte			En1, v084
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			En1, v064
	.byte	W12
	.byte			En1, v124
	.byte	W12
	.byte			En1, v084
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			En1, v064
	.byte	W12
	.byte	PATT	
		.word	song018_6_1
	.byte		N06	, En1, v124
	.byte	W12
	.byte			En1, v084
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			En1, v064
	.byte	W12
	.byte			Dn1, v124
	.byte	W12
	.byte			Dn1, v084
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Dn1, v064
	.byte	W12
	.byte			Dn2, v124
	.byte	W12
	.byte			Dn2, v084
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Dn2, v064
	.byte	W12
	.byte			Dn2, v124
	.byte	W12
	.byte			Dn2, v084
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Dn2, v064
	.byte	W12
	.byte			Dn1, v124
	.byte	W12
	.byte			Dn1, v084
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Dn1, v064
	.byte	W12
	.byte			Dn1, v124
	.byte	W12
	.byte			Dn1, v084
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Dn1, v064
	.byte	W12
	.byte			Cn2, v124
	.byte	W12
	.byte			Cn2, v084
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Cn2, v064
	.byte	W12
	.byte			Cn2, v124
	.byte	W12
	.byte			Cn2, v084
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Cn2, v064
	.byte	W12
	.byte			Cn1, v124
	.byte	W12
	.byte			Cn1, v084
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Cn1, v064
	.byte	W12
	.byte			Cn1, v124
	.byte	W12
	.byte			Cn1, v084
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Cn1, v064
	.byte	W12
	.byte			Gs2, v124
	.byte	W12
	.byte			Gs2, v084
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Gs2, v064
	.byte	W12
	.byte			Gs2, v124
	.byte	W12
	.byte			Gs2, v084
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Gs2, v064
	.byte	W12
song018_6_3:
	.byte		N06	, Gs1, v124
	.byte	W12
	.byte			Gs1, v084
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Gs1, v064
	.byte	W12
	.byte			Gs1, v124
	.byte	W12
	.byte			Gs1, v084
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Gs1, v064
	.byte	W12
	.byte	PEND
	.byte			Gn2, v124
	.byte	W12
	.byte			Gn2, v084
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Gn2, v064
	.byte	W12
	.byte			Gn2, v124
	.byte	W12
	.byte			Gn2, v084
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Gn2, v064
	.byte	W12
	.byte			Gn1, v124
	.byte	W12
	.byte			Gn1, v084
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Gn1, v064
	.byte	W12
	.byte			Gn1, v124
	.byte	W12
	.byte			Gn1, v084
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Gn1, v064
	.byte	W12
song018_6_2:
	.byte		N06	, Bn1, v124
	.byte	W12
	.byte			Bn1, v084
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Bn1, v064
	.byte	W12
	.byte			Bn1, v124
	.byte	W12
	.byte			Bn1, v084
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Bn1, v064
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song018_6_2
	.byte	PATT	
		.word	song018_6_2
	.byte	PATT	
		.word	song018_6_3
	.byte		N06	, Fn1, v124
	.byte	W12
	.byte			Fn1, v084
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Fn1, v064
	.byte	W12
	.byte			Fn1, v124
	.byte	W12
	.byte			Fn1, v084
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Fn1, v064
	.byte	W12
	.byte			As1, v124
	.byte	W12
	.byte			As1, v084
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			As1, v064
	.byte	W12
	.byte			As1, v124
	.byte	W12
	.byte			As1, v084
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			As1, v064
	.byte	W12
	.byte	PATT	
		.word	song018_6_2
	.byte	PATT	
		.word	song018_6_2
	.byte	GOTO	
		.word	song018_6_4
	.byte	FINE

	@********************** Track  7 **********************@

	.global song018_7
song018_7:	@ 0x0826E23A
	.byte	KEYSH	, 0
song018_7_6:
	.byte	VOICE	, 23
	.byte	VOL	, v070
	.byte	PAN	, c_v
	.byte		N03	, Bn3, v076
	.byte	W06
	.byte			Fs4
	.byte	W18
	.byte			Fn4, v064
	.byte	W24
	.byte			Gs3, v076
	.byte	W06
	.byte			Ds4
	.byte	W18
	.byte			Dn4, v064
	.byte	W24
song018_7_2:
	.byte		N03	, En3, v076
	.byte	W06
	.byte			As3
	.byte	W18
	.byte			Bn3, v064
	.byte	W72
	.byte	PEND
song018_7_1:
	.byte		N03	, Bn3, v076
	.byte	W06
	.byte			Fs4
	.byte	W18
	.byte			Fn4, v064
	.byte	W24
	.byte			Gs3, v076
	.byte	W06
	.byte			Ds4
	.byte	W18
	.byte			Dn4, v064
	.byte	W24
	.byte	PEND
song018_7_3:
	.byte		N03	, En4, v076
	.byte	W06
	.byte			As4
	.byte	W18
	.byte			Bn4, v064
	.byte	W72
	.byte	PEND
	.byte	PATT	
		.word	song018_7_1
	.byte	PATT	
		.word	song018_7_2
	.byte	PATT	
		.word	song018_7_1
	.byte	PATT	
		.word	song018_7_3
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song018_7_4:
	.byte		N03	, Dn3, v076
	.byte	W12
	.byte			Dn3, v040
	.byte	W36
	.byte			Cn3, v076
	.byte	W12
	.byte			Cn3, v040
	.byte	W36
	.byte	PEND
	.byte			Ds3, v076
	.byte	W12
	.byte			Ds3, v040
	.byte	W36
	.byte			En3, v076
	.byte	W12
	.byte			En3, v040
	.byte	W36
	.byte			Fs3, v076
	.byte	W12
	.byte			Fs3, v040
	.byte	W36
	.byte			Gs3, v076
	.byte	W12
	.byte			Gs3, v040
	.byte	W36
	.byte	PATT	
		.word	song018_7_4
song018_7_5:
	.byte	W24
	.byte		N03	, Fs4, v076
	.byte	W24
	.byte			Dn4
	.byte	W48
	.byte	PEND
	.byte	PATT	
		.word	song018_7_5
	.byte	PATT	
		.word	song018_7_5
	.byte	W24
	.byte		N03	, Fs4, v076
	.byte	W24
	.byte			Gs4
	.byte	W48
	.byte	W24
	.byte			Ds4
	.byte	W24
	.byte			As3
	.byte	W48
	.byte	W24
	.byte			Ds4
	.byte	W24
	.byte			Fn4
	.byte	W48
	.byte		N03	
	.byte	W24
	.byte			Fs4
	.byte	W24
	.byte			Bn4
	.byte	W48
	.byte	W24
	.byte			Dn4
	.byte	W24
	.byte			Bn3
	.byte	W48
	.byte	GOTO	
		.word	song018_7_6
	.byte	FINE

	@********************** Track  8 **********************@

	.global song018_8
song018_8:	@ 0x0826E2F0
	.byte	KEYSH	, 0
song018_8_7:
	.byte	VOICE	, 56
	.byte	VOL	, v056
	.byte	PAN	, c_v
	.byte		N03	, Fs5, v096
	.byte	W06
	.byte			Fs5, v064
	.byte	W06
	.byte			Fs5, v044
	.byte	W06
	.byte			Fs5, v024
	.byte	W06
	.byte			Gn5, v096
	.byte	W06
	.byte			Gn5, v064
	.byte	W06
	.byte			Gn5, v044
	.byte	W06
	.byte			Gn5, v024
	.byte	W06
	.byte			Ds5, v096
	.byte	W06
	.byte			Ds5, v064
	.byte	W06
	.byte			Ds5, v044
	.byte	W06
	.byte			Ds5, v024
	.byte	W06
	.byte			Dn5, v096
	.byte	W06
	.byte			Dn5, v064
	.byte	W06
	.byte			Dn5, v044
	.byte	W06
	.byte			Dn5, v024
	.byte	W06
song018_8_2:
	.byte		N03	, Fs5, v096
	.byte	W06
	.byte			Fs5, v064
	.byte	W06
	.byte			Fs5, v044
	.byte	W06
	.byte			Fs5, v024
	.byte	W06
	.byte			Gn5, v096
	.byte	W06
	.byte			Gn5, v064
	.byte	W06
	.byte			Gn5, v044
	.byte	W06
	.byte			Gn5, v024
	.byte	W06
	.byte			Dn5, v096
	.byte	W06
	.byte			Dn5, v064
	.byte	W06
	.byte			Dn5, v044
	.byte	W06
	.byte			Dn5, v024
	.byte	W06
	.byte			Bn4, v096
	.byte	W06
	.byte			Bn4, v064
	.byte	W06
	.byte			Bn4, v044
	.byte	W06
	.byte			Bn4, v024
	.byte	W06
	.byte	PEND
song018_8_1:
	.byte		N03	, Fs5, v096
	.byte	W06
	.byte			Fs5, v064
	.byte	W06
	.byte			Fs5, v044
	.byte	W06
	.byte			Fs5, v024
	.byte	W06
	.byte			Gn5, v096
	.byte	W06
	.byte			Gn5, v064
	.byte	W06
	.byte			Gn5, v044
	.byte	W06
	.byte			Gn5, v024
	.byte	W06
	.byte			Ds5, v096
	.byte	W06
	.byte			Ds5, v064
	.byte	W06
	.byte			Ds5, v044
	.byte	W06
	.byte			Ds5, v024
	.byte	W06
	.byte			Dn5, v096
	.byte	W06
	.byte			Dn5, v064
	.byte	W06
	.byte			Dn5, v044
	.byte	W06
	.byte			Dn5, v024
	.byte	W06
	.byte	PEND
song018_8_3:
	.byte		N03	, Fs5, v096
	.byte	W06
	.byte			Fs5, v064
	.byte	W06
	.byte			Fs5, v044
	.byte	W06
	.byte			Fs5, v024
	.byte	W06
	.byte			Gs5, v096
	.byte	W06
	.byte			Gs5, v064
	.byte	W06
	.byte			Gs5, v044
	.byte	W06
	.byte			Gs5, v024
	.byte	W06
	.byte			Dn5, v096
	.byte	W06
	.byte			Dn5, v064
	.byte	W06
	.byte			Dn5, v044
	.byte	W06
	.byte			Dn5, v024
	.byte	W06
	.byte			Cn5, v096
	.byte	W06
	.byte			Cn5, v064
	.byte	W06
	.byte			Cn5, v044
	.byte	W06
	.byte			Cn5, v024
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song018_8_1
	.byte	PATT	
		.word	song018_8_2
	.byte	PATT	
		.word	song018_8_1
	.byte	PATT	
		.word	song018_8_3
song018_8_4:
	.byte		N03	, Fs5, v096
	.byte	W06
	.byte			Fs5, v064
	.byte	W06
	.byte			Fs5, v044
	.byte	W06
	.byte			Fs5, v024
	.byte	W06
	.byte			Gs5, v096
	.byte	W06
	.byte			Gs5, v064
	.byte	W06
	.byte			Gs5, v044
	.byte	W06
	.byte			Gs5, v024
	.byte	W06
	.byte			En5, v096
	.byte	W06
	.byte			En5, v064
	.byte	W06
	.byte			En5, v044
	.byte	W06
	.byte			En5, v024
	.byte	W06
	.byte			Dn5, v096
	.byte	W06
	.byte			Dn5, v064
	.byte	W06
	.byte			Dn5, v044
	.byte	W06
	.byte			Dn5, v024
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song018_8_3
	.byte	PATT	
		.word	song018_8_4
	.byte	PATT	
		.word	song018_8_3
	.byte	PATT	
		.word	song018_8_4
	.byte	PATT	
		.word	song018_8_3
	.byte	PATT	
		.word	song018_8_4
	.byte	PATT	
		.word	song018_8_3
song018_8_5:
	.byte		N03	, Fs5, v096
	.byte	W06
	.byte			Fs5, v064
	.byte	W06
	.byte			Fs5, v044
	.byte	W06
	.byte			Fs5, v024
	.byte	W06
	.byte			Gs5, v096
	.byte	W06
	.byte			Gs5, v064
	.byte	W06
	.byte			Gs5, v044
	.byte	W06
	.byte			Gs5, v024
	.byte	W06
	.byte			Dn5, v096
	.byte	W06
	.byte			Dn5, v064
	.byte	W06
	.byte			Dn5, v044
	.byte	W06
	.byte			Dn5, v024
	.byte	W06
	.byte			Cs5, v096
	.byte	W06
	.byte			Cs5, v064
	.byte	W06
	.byte			Cs5, v044
	.byte	W06
	.byte			Cs5, v024
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song018_8_5
	.byte	PATT	
		.word	song018_8_5
	.byte	PATT	
		.word	song018_8_5
song018_8_6:
	.byte		N03	, Gn5, v096
	.byte	W06
	.byte			Gn5, v064
	.byte	W06
	.byte			Gn5, v044
	.byte	W06
	.byte			Gn5, v024
	.byte	W06
	.byte			Gs5, v096
	.byte	W06
	.byte			Gs5, v064
	.byte	W06
	.byte			Gs5, v044
	.byte	W06
	.byte			Gs5, v024
	.byte	W06
	.byte			Dn5, v096
	.byte	W06
	.byte			Dn5, v064
	.byte	W06
	.byte			Dn5, v044
	.byte	W06
	.byte			Dn5, v024
	.byte	W06
	.byte			As4, v096
	.byte	W06
	.byte			As4, v064
	.byte	W06
	.byte			As4, v044
	.byte	W06
	.byte			As4, v024
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song018_8_6
	.byte	PATT	
		.word	song018_8_5
	.byte		N03	, Fs5, v096
	.byte	W06
	.byte			Fs5, v064
	.byte	W06
	.byte			Fs5, v044
	.byte	W06
	.byte			Fs5, v024
	.byte	W06
	.byte			Gs5, v096
	.byte	W06
	.byte			Gs5, v064
	.byte	W06
	.byte			Gs5, v044
	.byte	W06
	.byte			Gs5, v024
	.byte	W06
	.byte			Dn5, v096
	.byte	W06
	.byte			Dn5, v064
	.byte	W06
	.byte			Dn5, v044
	.byte	W06
	.byte			Dn5, v024
	.byte	W06
	.byte			Bn4, v096
	.byte	W06
	.byte			Bn4, v064
	.byte	W06
	.byte			Bn4, v044
	.byte	W06
	.byte			Bn4, v024
	.byte	W06
	.byte	GOTO	
		.word	song018_8_7
	.byte	FINE

	@********************** Track  9 **********************@

	.global song018_9
song018_9:	@ 0x0826E4DC
	.byte	KEYSH	, 0
song018_9_2:
	.byte	VOICE	, 89
	.byte	VOL	, v070
	.byte	PAN	, c_v
	.byte	W06
	.byte		N03	, Cn6, v096
	.byte	W06
	.byte			Cn6, v064
	.byte	W06
	.byte			Cn6, v044
	.byte	W12
	.byte			Cn6, v096
	.byte	W06
	.byte			Cn6, v064
	.byte	W06
	.byte			Cn6, v044
	.byte	W12
	.byte			Cn6, v096
	.byte	W06
	.byte			Cn6, v064
	.byte	W06
	.byte			Cn6, v044
	.byte	W12
	.byte			Cn6, v096
	.byte	W06
	.byte			Cn6, v064
	.byte	W06
	.byte			Cn6, v044
	.byte	W06
song018_9_1:
	.byte	W06
	.byte		N03	, Cn6, v096
	.byte	W06
	.byte			Cn6, v064
	.byte	W06
	.byte			Cn6, v044
	.byte	W12
	.byte			Cn6, v096
	.byte	W06
	.byte			Cn6, v064
	.byte	W06
	.byte			Cn6, v044
	.byte	W12
	.byte			Cn6, v096
	.byte	W06
	.byte			Cn6, v064
	.byte	W06
	.byte			Cn6, v044
	.byte	W12
	.byte			Cn6, v096
	.byte	W06
	.byte			Cn6, v064
	.byte	W06
	.byte			Cn6, v044
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song018_9_1
	.byte	PATT	
		.word	song018_9_1
	.byte	PATT	
		.word	song018_9_1
	.byte	PATT	
		.word	song018_9_1
	.byte	PATT	
		.word	song018_9_1
	.byte	PATT	
		.word	song018_9_1
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song018_9_1
	.byte	PATT	
		.word	song018_9_1
	.byte	PATT	
		.word	song018_9_1
	.byte	PATT	
		.word	song018_9_1
	.byte	PATT	
		.word	song018_9_1
	.byte	PATT	
		.word	song018_9_1
	.byte	PATT	
		.word	song018_9_1
	.byte	PATT	
		.word	song018_9_1
	.byte	PATT	
		.word	song018_9_1
	.byte	PATT	
		.word	song018_9_1
	.byte	PATT	
		.word	song018_9_1
	.byte	PATT	
		.word	song018_9_1
	.byte	GOTO	
		.word	song018_9_2
	.byte	FINE
    
	mAlignWord
	.global song018
song018:	@ 0x0826E598
	.byte	9		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	mAlignWord
	.word	voicegroup016		@ voicegroup/tone

	.word	song018_1		@ track
	.word	song018_2		@ track
	.word	song018_3		@ track
	.word	song018_4		@ track
	.word	song018_5		@ track
	.word	song018_6		@ track
	.word	song018_7		@ track
	.word	song018_8		@ track
	.word	song018_9		@ track

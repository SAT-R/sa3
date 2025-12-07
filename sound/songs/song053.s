	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song053_1
song053_1:	@ 0x0829169C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 87
	.byte	VOICE	, 127
	.byte	VOL	, v066
	.byte		N96	, As4, v127
	.byte		N10	, Gn7
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			En4
	.byte	W12
song053_1_1:
	.byte		N10	, Gn7, v127
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte	PEND
song053_1_4:
	.byte		N92	, As4, v127
	.byte		N10	, Gn7
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			En4
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song053_1_1
song053_1_2:
	.byte		N96	, As4, v127
	.byte		N10	, Gn7
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			En4
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song053_1_1
	.byte	PATT	
		.word	song053_1_2
	.byte	PATT	
		.word	song053_1_1
	.byte	PATT	
		.word	song053_1_2
	.byte	PATT	
		.word	song053_1_1
	.byte	PATT	
		.word	song053_1_2
	.byte	PATT	
		.word	song053_1_1
	.byte	PATT	
		.word	song053_1_2
	.byte	PATT	
		.word	song053_1_1
song053_1_3:
	.byte		N10	, Gn7, v127
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			En4
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song053_1_1
	.byte	PATT	
		.word	song053_1_2
	.byte	PATT	
		.word	song053_1_1
	.byte	PATT	
		.word	song053_1_3
	.byte	PATT	
		.word	song053_1_1
	.byte	PATT	
		.word	song053_1_2
	.byte	PATT	
		.word	song053_1_1
	.byte	PATT	
		.word	song053_1_4
	.byte	PATT	
		.word	song053_1_1
	.byte	PATT	
		.word	song053_1_2
	.byte	PATT	
		.word	song053_1_1
	.byte	PATT	
		.word	song053_1_4
	.byte	PATT	
		.word	song053_1_1
	.byte	GOTO	
		.word	song053_1_2
	.byte	FINE

	@********************** Track  2 **********************@

	.global song053_2
song053_2:	@ 0x08291781
	.byte	KEYSH	, 0
	.byte	VOICE	, 28
	.byte	VOL	, v085
	.byte		N48	, Gs2, v127
	.byte	W96
song053_2_1:
	.byte	W72
	.byte		N24	, An2, v127
	.byte		N24	, An3
	.byte	W24
	.byte	PEND
	.byte		N48	, Gs2
	.byte	W96
song053_2_2:
	.byte	W72
	.byte		N24	, Gs2, v127
	.byte		N24	, Gs3
	.byte	W24
	.byte	PEND
song053_2_3:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N48	, Gs2, v127
	.byte	W96
	.byte	PATT	
		.word	song053_2_1
	.byte		N48	, Gs2, v127
	.byte	W96
	.byte	PATT	
		.word	song053_2_2
	.byte		N48	, Gs2, v127
	.byte	W96
	.byte	PATT	
		.word	song053_2_1
	.byte		N48	, Gs2, v127
	.byte	W96
	.byte	PATT	
		.word	song053_2_2
	.byte	GOTO	
		.word	song053_2_3
	.byte	FINE

	@********************** Track  3 **********************@

	.global song053_3
song053_3:	@ 0x082917D8
	.byte	KEYSH	, 0
	.byte	VOICE	, 29
	.byte	VOL	, v082
	.byte	PAN	, c_v-40
	.byte		N60	, Cs3, v124
	.byte	W68
	.byte	W02
	.byte		N18	
	.byte	W24
	.byte			Ds3
	.byte	W02
song053_3_2:
	.byte	W22
	.byte		N18	, Ds3, v124
	.byte	W72
	.byte		N60	, Cs3
	.byte	W02
	.byte	PEND
song053_3_1:
	.byte	W68
	.byte	W02
	.byte		N18	, Cs3, v124
	.byte	W24
	.byte			Ds3
	.byte	W02
	.byte	PEND
song053_3_3:
	.byte	W22
	.byte		N18	, Ds3, v124
	.byte	W72
	.byte	W02
	.byte	PEND
song053_3_4:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
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
	.byte	VOICE	, 29
	.byte	VOL	, v082
	.byte	PAN	, c_v-40
	.byte		N60	, Cs3, v124
	.byte	W02
	.byte	PATT	
		.word	song053_3_1
	.byte	PATT	
		.word	song053_3_2
	.byte	PATT	
		.word	song053_3_1
	.byte	W22
	.byte		N18	, Ds3, v124
	.byte	W72
	.byte	VOICE	, 29
	.byte	VOL	, v082
	.byte	PAN	, c_v-40
	.byte		N60	, Cs3
	.byte	W02
	.byte	PATT	
		.word	song053_3_1
	.byte	PATT	
		.word	song053_3_2
	.byte	PATT	
		.word	song053_3_1
	.byte	PATT	
		.word	song053_3_3
	.byte	GOTO	
		.word	song053_3_4
	.byte	FINE

	@********************** Track  4 **********************@

	.global song053_4
song053_4:	@ 0x08291854
	.byte	KEYSH	, 0
	.byte	VOICE	, 29
	.byte	VOL	, v082
	.byte	PAN	, c_v+40
	.byte	W01
	.byte		N60	, Cs3, v124
	.byte	W72
	.byte		N18	
	.byte	W23
song053_4_1:
	.byte	W01
	.byte		N18	, Ds3, v124
	.byte	W24
	.byte		N18	
	.byte	W68
	.byte	W03
	.byte	PEND
song053_4_2:
	.byte	W01
	.byte		N60	, Cs3, v124
	.byte	W72
	.byte		N18	
	.byte	W23
	.byte	PEND
	.byte	PATT	
		.word	song053_4_1
song053_4_3:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
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
	.byte	VOICE	, 29
	.byte	VOL	, v082
	.byte	PAN	, c_v+40
	.byte	W02
	.byte	PATT	
		.word	song053_4_2
	.byte	PATT	
		.word	song053_4_1
	.byte	PATT	
		.word	song053_4_2
	.byte	W01
	.byte		N18	, Ds3, v124
	.byte	W24
	.byte		N18	
	.byte	W68
	.byte	W01
	.byte	VOICE	, 29
	.byte	VOL	, v082
	.byte	PAN	, c_v+40
	.byte	W02
	.byte	PATT	
		.word	song053_4_2
	.byte	PATT	
		.word	song053_4_1
	.byte	PATT	
		.word	song053_4_2
	.byte	PATT	
		.word	song053_4_1
	.byte	GOTO	
		.word	song053_4_3
	.byte	FINE

	@********************** Track  5 **********************@

	.global song053_5
song053_5:	@ 0x082918C9
	.byte	KEYSH	, 0
	.byte	VOICE	, 20
	.byte	VOL	, v033
	.byte	PAN	, c_v
	.byte	W72
	.byte		N28	, Cn2, v127
	.byte	W24
song053_5_3:
	.byte	W06
	.byte		N04	, Cs3, v127
	.byte	W06
	.byte		N16	, Cn2
	.byte	W18
	.byte		N04	, Cs3
	.byte	W06
	.byte		N16	, Cn2
	.byte	W18
	.byte		N04	, Gs2
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			Fn2
	.byte	W30
	.byte	PEND
song053_5_4:
	.byte	W72
	.byte		N04	, Cn2, v127
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte	PEND
song053_5_5:
	.byte	W06
	.byte		N04	, Cs3, v127
	.byte	W06
	.byte		N10	, Gn2
	.byte	W12
	.byte		N04	, Cn2
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte		N10	, Fn2
	.byte	W12
	.byte		N04	, Cn2
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			Gn2
	.byte	W04
	.byte			Cs3
	.byte	W04
	.byte			En3
	.byte	W28
	.byte	PEND
song053_5_7:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W92
	.byte	W03
	.byte	VOL	, v033
	.byte	PAN	, c_v-40
	.byte	W01
song053_5_1:
	.byte		N06	, Cs3, v124
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte	PEND
	.byte		N03	, Gs2
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte		N06	, Cs3
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			En3
	.byte	W36
	.byte	PATT	
		.word	song053_5_1
song053_5_2:
	.byte		N03	, En3, v124
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			En3
	.byte	W36
	.byte	PEND
	.byte	PATT	
		.word	song053_5_1
	.byte		N03	, Gs2, v124
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte		N06	, Cs3
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			En3
	.byte	W12
	.byte		N03	, Gs2
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte	PATT	
		.word	song053_5_1
	.byte	PATT	
		.word	song053_5_2
song053_5_6:
	.byte	VOL	, v026
	.byte	PAN	, c_v
	.byte	W72
	.byte		N28	, Cn2, v127
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song053_5_3
	.byte	PATT	
		.word	song053_5_4
	.byte	PATT	
		.word	song053_5_5
	.byte	PATT	
		.word	song053_5_6
	.byte	PATT	
		.word	song053_5_3
	.byte	PATT	
		.word	song053_5_4
	.byte	PATT	
		.word	song053_5_5
	.byte	GOTO	
		.word	song053_5_7
	.byte	FINE

	@********************** Track  6 **********************@

	.global song053_6
song053_6:	@ 0x082919BD
	.byte	KEYSH	, 0
	.byte	VOICE	, 57
	.byte	VOL	, v082
	.byte	PAN	, c_v+40
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song053_6_3:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song053_6_1:
	.byte		N18	, Cn3, v116
	.byte	W24
	.byte			Ds3, v124
	.byte	W24
	.byte		N12	, Cn3, v116
	.byte	W12
	.byte			Gn2
	.byte	W24
	.byte		N18	, Cn3
	.byte	W12
	.byte	PEND
song053_6_2:
	.byte	W12
	.byte		N10	, Gn2, v116
	.byte	W10
	.byte		N11	, Fs3
	.byte	W12
	.byte		N18	, Fn3
	.byte	W60
	.byte	W02
	.byte	PEND
	.byte	PATT	
		.word	song053_6_1
	.byte	W12
	.byte		N10	, Gn2, v116
	.byte	W10
	.byte		N16	, Gn3
	.byte	W24
	.byte		N18	, As3
	.byte	W24
	.byte			An3
	.byte	W24
	.byte	W02
	.byte	PATT	
		.word	song053_6_1
	.byte	PATT	
		.word	song053_6_2
	.byte	PATT	
		.word	song053_6_1
	.byte	W12
	.byte		N10	, Gn2, v116
	.byte	W10
	.byte		N16	, Fs3
	.byte	W24
	.byte		N18	, As3
	.byte	W24
	.byte			An3
	.byte	W24
	.byte	W02
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	song053_6_3
	.byte	FINE

	@********************** Track  7 **********************@

	.global song053_7
song053_7:	@ 0x08291A2D
	.byte	KEYSH	, 0
	.byte	VOICE	, 32
	.byte	VOL	, v062
	.byte	PAN	, c_v
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song053_7_1:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W92
	.byte		N09	, Gs2, v124
	.byte	W04
	.byte	W08
	.byte		N21	, Cs2, v116
	.byte	W24
	.byte			Gs2, v124
	.byte	W24
	.byte			Gs2, v116
	.byte	W24
	.byte		N15	, An2, v124
	.byte	W16
	.byte	W08
	.byte		N21	, Dn2, v116
	.byte	W24
	.byte			Dn2, v124
	.byte	W24
	.byte			Fs2, v116
	.byte	W36
	.byte		N09	, Fs2, v124
	.byte	W04
	.byte	W08
	.byte		N21	, Fs2, v116
	.byte	W24
	.byte			An2, v124
	.byte	W24
	.byte			Fs2, v116
	.byte	W24
	.byte			Bn2, v124
	.byte	W16
	.byte	W08
	.byte			Fs2, v116
	.byte	W24
	.byte			Bn2, v124
	.byte	W24
	.byte	W01
	.byte			Ds3, v116
	.byte	W36
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
	.byte	GOTO	
		.word	song053_7_1
	.byte	FINE

	@********************** Track  8 **********************@

	.global song053_8
song053_8:	@ 0x08291A8F
	.byte	KEYSH	, 0
	.byte	VOICE	, 58
	.byte	VOL	, v062
	.byte	PAN	, c_v
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song053_8_3:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song053_8_1:
	.byte		N11	, En3, v124
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N23	
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte		N23	
	.byte	W24
	.byte		N23	
	.byte	W12
	.byte	PEND
song053_8_2:
	.byte	W12
	.byte		N23	, En3, v124
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N06	, Bn2
	.byte	W12
	.byte		N11	, En3
	.byte	W12
	.byte		N06	, Bn2
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song053_8_1
	.byte	PATT	
		.word	song053_8_2
	.byte	PATT	
		.word	song053_8_1
	.byte	PATT	
		.word	song053_8_2
	.byte	PATT	
		.word	song053_8_1
	.byte	PATT	
		.word	song053_8_2
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	song053_8_3
	.byte	FINE

	@********************** Track  9 **********************@

	.global song053_9
song053_9:	@ 0x08291AF1
	.byte	KEYSH	, 0
	.byte	VOICE	, 31
	.byte	VOL	, v033
	.byte	PAN	, c_v
	.byte	TUNE	, c_v
	.byte		N06	, Gs3, v127
	.byte	W06
	.byte			Gs4
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte		N15	, An4
	.byte	W18
	.byte		N06	, Gs3
	.byte	W06
	.byte			Gs4
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte		N15	, An4
	.byte	W18
	.byte		N06	, Gs3
	.byte	W06
	.byte			Gs4
	.byte	W06
	.byte		N04	, An4
	.byte	W06
	.byte			Cn5
	.byte	W06
song053_9_2:
	.byte		N06	, Bn4, v127
	.byte	W06
	.byte		N12	, Ds4
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte		N06	, Bn3
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte		N04	, Bn3
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte		N12	, Fs4
	.byte	W12
	.byte		N04	, Gs3
	.byte	W06
	.byte		N12	, Dn4
	.byte	W12
	.byte	PEND
song053_9_3:
	.byte	W06
	.byte		N06	, Fn4, v127
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte		N15	, Fs4
	.byte	W18
	.byte		N06	, Fs3
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte		N15	, Fs4
	.byte	W18
	.byte		N06	, As2
	.byte	W06
	.byte			As3
	.byte	W06
	.byte		N04	, Bn3
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte	PEND
	.byte		N06	, Dn4
	.byte	W06
	.byte		N12	, Cs4
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte		N06	, Gs3
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte		N04	, Gs3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte		N06	, Ds4
	.byte	W06
	.byte		N21	, Gs3
	.byte	W23
	.byte	VOL	, v036
	.byte	TUNE	, c_v+10
	.byte	W01
song053_9_1:
	.byte		N10	, As3, v084
	.byte	W12
	.byte			As3, v124
	.byte	W12
	.byte			As3, v076
	.byte	W12
	.byte			An4, v124
	.byte	W12
	.byte			An4, v076
	.byte	W12
	.byte			As4, v124
	.byte	W12
	.byte			As4, v076
	.byte	W12
	.byte			Cs4, v124
	.byte	W12
	.byte	PEND
	.byte			Cs4, v076
	.byte	W12
	.byte			Bn3, v124
	.byte	W12
	.byte			Bn3, v076
	.byte	W12
	.byte			Fs4, v124
	.byte	W12
	.byte			Fs4, v076
	.byte	W12
	.byte			En4, v124
	.byte	W12
	.byte			En4, v076
	.byte	W12
	.byte			En4, v052
	.byte	W12
	.byte			Gs3, v084
	.byte	W12
	.byte			Gs3, v124
	.byte	W12
	.byte			Gs3, v076
	.byte	W12
	.byte			Gn4, v124
	.byte	W12
	.byte			Gn4, v076
	.byte	W12
	.byte			Gs4, v124
	.byte	W12
	.byte			Gs4, v076
	.byte	W12
	.byte			Cs4, v124
	.byte	W12
	.byte			Cs4, v076
	.byte	W12
	.byte			Fn4, v124
	.byte	W12
	.byte			Fn4, v076
	.byte	W12
	.byte			Gs4, v124
	.byte	W12
	.byte			Gs4, v076
	.byte	W12
	.byte			Cs5, v124
	.byte	W12
	.byte			Cs5, v076
	.byte	W12
	.byte			Cs5, v052
	.byte	W12
	.byte	PATT	
		.word	song053_9_1
	.byte		N10	, Cs4, v076
	.byte	W12
	.byte			Bn3, v124
	.byte	W12
	.byte			Bn3, v076
	.byte	W12
	.byte			Cs5, v124
	.byte	W12
	.byte			Cs5, v076
	.byte	W12
	.byte			Bn4, v124
	.byte	W12
	.byte			Bn4, v076
	.byte	W12
	.byte			Fs4, v124
	.byte	W12
	.byte			Gs4, v084
	.byte	W12
	.byte			Gs4, v124
	.byte	W12
	.byte			Gs4, v076
	.byte	W12
	.byte			Gn4, v124
	.byte	W12
	.byte			Gn4, v076
	.byte	W12
	.byte			Gs4, v124
	.byte	W12
	.byte			Gs4, v076
	.byte	W12
	.byte			Cs5, v124
	.byte	W12
	.byte			Cs5, v076
	.byte	W12
	.byte			Gs4, v124
	.byte	W12
	.byte			Gs4, v076
	.byte	W12
	.byte			Fn5, v124
	.byte	W12
	.byte			Fn5, v076
	.byte	W12
	.byte			Gs5, v124
	.byte	W12
	.byte			Gs5, v076
	.byte	W12
	.byte			Gs5, v052
	.byte	W12
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song053_9_4:
	.byte		N06	, Gs3, v127
	.byte	W06
	.byte			Gs4
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte		N15	, An4
	.byte	W18
	.byte		N06	, Gs3
	.byte	W06
	.byte			Gs4
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte		N15	, An4
	.byte	W18
	.byte		N06	, Gs3
	.byte	W06
	.byte			Gs4
	.byte	W06
	.byte		N04	, An4
	.byte	W06
	.byte			Cn5
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song053_9_2
	.byte	PATT	
		.word	song053_9_3
song053_9_5:
	.byte		N06	, Dn4, v127
	.byte	W06
	.byte		N12	, Cs4
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte		N06	, Gs3
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte		N04	, Gs3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte		N06	, Ds4
	.byte	W06
	.byte		N21	, Gs3
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song053_9_4
	.byte	PATT	
		.word	song053_9_2
	.byte	PATT	
		.word	song053_9_3
	.byte	PATT	
		.word	song053_9_5
	.byte	GOTO	
		.word	song053_9_1
	.byte	FINE

	@********************** Track  10 **********************@

	.global song053_10
song053_10:	@ 0x08291C95
	.byte	KEYSH	, 0
	.byte	VOICE	, 5
	.byte	VOL	, v040
	.byte	PAN	, c_v
	.byte	TUNE	, c_v
	.byte		N03	, Ds3, v072
	.byte	W04
	.byte			Ds3, v084
	.byte	W04
	.byte			Ds3, v092
	.byte	W04
	.byte			Ds3, v100
	.byte	W04
	.byte			Ds3, v112
	.byte	W04
	.byte			Ds3, v120
	.byte	W04
	.byte			Ds3, v127
	.byte	W04
	.byte			Ds3, v116
	.byte	W04
	.byte			Ds3, v108
	.byte	W04
	.byte			Ds3, v100
	.byte	W04
	.byte			Ds3, v092
	.byte	W04
	.byte			Ds3, v084
	.byte	W04
	.byte			En3, v072
	.byte	W04
	.byte			En3, v084
	.byte	W04
	.byte			En3, v092
	.byte	W04
	.byte			En3, v100
	.byte	W04
	.byte			En3, v112
	.byte	W04
	.byte			En3, v120
	.byte	W04
	.byte			En3, v127
	.byte	W04
	.byte			En3, v116
	.byte	W04
	.byte			En3, v108
	.byte	W04
	.byte			En3, v100
	.byte	W04
	.byte			En3, v092
	.byte	W04
	.byte			En3, v084
	.byte	W04
song053_10_2:
	.byte		N03	, Fn3, v072
	.byte	W04
	.byte			Fn3, v084
	.byte	W04
	.byte			Fn3, v092
	.byte	W04
	.byte			Fn3, v100
	.byte	W04
	.byte			Fn3, v112
	.byte	W04
	.byte			Fn3, v120
	.byte	W04
	.byte			Fn3, v127
	.byte	W04
	.byte			Fn3, v116
	.byte	W04
	.byte			Fn3, v108
	.byte	W04
	.byte			Fn3, v100
	.byte	W04
	.byte			Fn3, v092
	.byte	W04
	.byte			Fn3, v084
	.byte	W04
	.byte			As3, v072
	.byte	W04
	.byte			As3, v084
	.byte	W04
	.byte			As3, v092
	.byte	W04
	.byte			As3, v100
	.byte	W04
	.byte			As3, v112
	.byte	W04
	.byte			As3, v120
	.byte	W04
	.byte			As3, v127
	.byte	W04
	.byte			As3, v116
	.byte	W04
	.byte			As3, v108
	.byte	W04
	.byte			As3, v100
	.byte	W04
	.byte			As3, v092
	.byte	W04
	.byte			As3, v084
	.byte	W04
	.byte	PEND
song053_10_3:
	.byte		N03	, Bn3, v072
	.byte	W04
	.byte			Bn3, v084
	.byte	W04
	.byte			Bn3, v092
	.byte	W04
	.byte			Bn3, v100
	.byte	W04
	.byte			Bn3, v112
	.byte	W04
	.byte			Bn3, v120
	.byte	W04
	.byte			Bn3, v127
	.byte	W04
	.byte			Bn3, v116
	.byte	W04
	.byte			Bn3, v108
	.byte	W04
	.byte			Bn3, v100
	.byte	W04
	.byte			Bn3, v092
	.byte	W04
	.byte			Bn3, v084
	.byte	W04
	.byte			Fs3, v072
	.byte	W04
	.byte			Fs3, v084
	.byte	W04
	.byte			Fs3, v092
	.byte	W04
	.byte			Fs3, v100
	.byte	W04
	.byte			Fs3, v112
	.byte	W04
	.byte			Fs3, v120
	.byte	W04
	.byte			Fs3, v127
	.byte	W04
	.byte			Fs3, v116
	.byte	W04
	.byte			Fs3, v108
	.byte	W04
	.byte			Fs3, v100
	.byte	W04
	.byte			Fs3, v092
	.byte	W04
	.byte			Fs3, v084
	.byte	W04
	.byte	PEND
song053_10_4:
	.byte		N03	, Fn3, v072
	.byte	W04
	.byte			Fn3, v084
	.byte	W04
	.byte			Fn3, v092
	.byte	W04
	.byte			Fn3, v100
	.byte	W04
	.byte			Fn3, v112
	.byte	W04
	.byte			Fn3, v120
	.byte	W04
	.byte			Fn3, v127
	.byte	W04
	.byte			Fn3, v116
	.byte	W04
	.byte			Fn3, v108
	.byte	W04
	.byte			Fn3, v100
	.byte	W04
	.byte			Fn3, v092
	.byte	W04
	.byte			Fn3, v084
	.byte	W04
	.byte			Gs3, v072
	.byte	W04
	.byte			Gs3, v084
	.byte	W04
	.byte			Gs3, v092
	.byte	W04
	.byte			Gs3, v100
	.byte	W04
	.byte			Gs3, v112
	.byte	W04
	.byte			Gs3, v120
	.byte	W04
	.byte			Gs3, v127
	.byte	W04
	.byte			Gs3, v116
	.byte	W04
	.byte			Gs3, v108
	.byte	W04
	.byte			Gs3, v100
	.byte	W04
	.byte			Gs3, v092
	.byte	W04
	.byte			Gs3, v084
	.byte	W04
	.byte	PEND
song053_10_5:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song053_10_1:
	.byte		N03	, Ds3, v072
	.byte	W04
	.byte			Ds3, v084
	.byte	W04
	.byte			Ds3, v092
	.byte	W04
	.byte			Ds3, v100
	.byte	W04
	.byte			Ds3, v112
	.byte	W04
	.byte			Ds3, v120
	.byte	W04
	.byte			Ds3, v127
	.byte	W04
	.byte			Ds3, v116
	.byte	W04
	.byte			Ds3, v108
	.byte	W04
	.byte			Ds3, v100
	.byte	W04
	.byte			Ds3, v092
	.byte	W04
	.byte			Ds3, v084
	.byte	W04
	.byte			En3, v072
	.byte	W04
	.byte			En3, v084
	.byte	W04
	.byte			En3, v092
	.byte	W04
	.byte			En3, v100
	.byte	W04
	.byte			En3, v112
	.byte	W04
	.byte			En3, v120
	.byte	W04
	.byte			En3, v127
	.byte	W04
	.byte			En3, v116
	.byte	W04
	.byte			En3, v108
	.byte	W04
	.byte			En3, v100
	.byte	W04
	.byte			En3, v092
	.byte	W04
	.byte			En3, v084
	.byte	W04
	.byte	PEND
	.byte			Fn3, v072
	.byte	W04
	.byte			Fn3, v084
	.byte	W04
	.byte			Fn3, v092
	.byte	W04
	.byte			Fn3, v100
	.byte	W04
	.byte			Fn3, v112
	.byte	W04
	.byte			Fn3, v120
	.byte	W04
	.byte			Fn3, v127
	.byte	W04
	.byte			Fn3, v116
	.byte	W04
	.byte			Fn3, v108
	.byte	W04
	.byte			Fn3, v100
	.byte	W04
	.byte			Fn3, v092
	.byte	W04
	.byte			Fn3, v084
	.byte	W04
	.byte			En3, v072
	.byte	W04
	.byte			En3, v084
	.byte	W04
	.byte			En3, v092
	.byte	W04
	.byte			En3, v100
	.byte	W04
	.byte			En3, v112
	.byte	W04
	.byte			En3, v120
	.byte	W04
	.byte			En3, v127
	.byte	W04
	.byte			En3, v116
	.byte	W04
	.byte			En3, v108
	.byte	W04
	.byte			En3, v100
	.byte	W04
	.byte			En3, v092
	.byte	W04
	.byte			En3, v084
	.byte	W04
	.byte			Fs3, v072
	.byte	W04
	.byte			Fs3, v084
	.byte	W04
	.byte			Fs3, v092
	.byte	W04
	.byte			Fs3, v100
	.byte	W04
	.byte			Fs3, v112
	.byte	W04
	.byte			Fs3, v120
	.byte	W04
	.byte			Fs3, v127
	.byte	W04
	.byte			Fs3, v116
	.byte	W04
	.byte			Fs3, v108
	.byte	W04
	.byte			Fs3, v100
	.byte	W04
	.byte			Fs3, v092
	.byte	W04
	.byte			Fs3, v084
	.byte	W04
	.byte			As2, v072
	.byte	W04
	.byte			As2, v084
	.byte	W04
	.byte			As2, v092
	.byte	W04
	.byte			As2, v100
	.byte	W04
	.byte			As2, v112
	.byte	W04
	.byte			As2, v120
	.byte	W04
	.byte			As2, v127
	.byte	W04
	.byte			As2, v116
	.byte	W04
	.byte			As2, v108
	.byte	W04
	.byte			As2, v100
	.byte	W04
	.byte			As2, v092
	.byte	W04
	.byte			As2, v084
	.byte	W04
	.byte			Dn3, v072
	.byte	W04
	.byte			Dn3, v084
	.byte	W04
	.byte			Dn3, v092
	.byte	W04
	.byte			Dn3, v100
	.byte	W04
	.byte			Dn3, v112
	.byte	W04
	.byte			Dn3, v120
	.byte	W04
	.byte			Dn3, v127
	.byte	W04
	.byte			Dn3, v116
	.byte	W04
	.byte			Dn3, v108
	.byte	W04
	.byte			Dn3, v100
	.byte	W04
	.byte			Dn3, v092
	.byte	W04
	.byte			Dn3, v084
	.byte	W04
	.byte			Cs3, v072
	.byte	W04
	.byte			Cs3, v084
	.byte	W04
	.byte			Cs3, v092
	.byte	W04
	.byte			Cs3, v100
	.byte	W04
	.byte			Cs3, v112
	.byte	W04
	.byte			Cs3, v120
	.byte	W04
	.byte			Cs3, v127
	.byte	W04
	.byte			Cs3, v116
	.byte	W04
	.byte			Cs3, v108
	.byte	W04
	.byte			Cs3, v100
	.byte	W04
	.byte			Cs3, v092
	.byte	W04
	.byte			Cs3, v084
	.byte	W04
	.byte	PATT	
		.word	song053_10_1
	.byte	PATT	
		.word	song053_10_2
	.byte		N03	, An3, v072
	.byte	W04
	.byte			An3, v084
	.byte	W04
	.byte			An3, v092
	.byte	W04
	.byte			An3, v100
	.byte	W04
	.byte			An3, v112
	.byte	W04
	.byte			An3, v120
	.byte	W04
	.byte			An3, v127
	.byte	W04
	.byte			An3, v116
	.byte	W04
	.byte			An3, v108
	.byte	W04
	.byte			An3, v100
	.byte	W04
	.byte			An3, v092
	.byte	W04
	.byte			An3, v084
	.byte	W04
	.byte			Fn3, v072
	.byte	W04
	.byte			Fn3, v084
	.byte	W04
	.byte			Fn3, v092
	.byte	W04
	.byte			Fn3, v100
	.byte	W04
	.byte			Fn3, v112
	.byte	W04
	.byte			Fn3, v120
	.byte	W04
	.byte			Fn3, v127
	.byte	W04
	.byte			Fn3, v116
	.byte	W04
	.byte			Fn3, v108
	.byte	W04
	.byte			Fn3, v100
	.byte	W04
	.byte			Fn3, v092
	.byte	W04
	.byte			Fn3, v084
	.byte	W04
	.byte			Fs3, v072
	.byte	W04
	.byte			Fs3, v084
	.byte	W04
	.byte			Fs3, v092
	.byte	W04
	.byte			Fs3, v100
	.byte	W04
	.byte			Fs3, v112
	.byte	W04
	.byte			Fs3, v120
	.byte	W04
	.byte			Fs3, v127
	.byte	W04
	.byte			Fs3, v116
	.byte	W04
	.byte			Fs3, v108
	.byte	W04
	.byte			Fs3, v100
	.byte	W04
	.byte			Fs3, v092
	.byte	W04
	.byte			Fs3, v084
	.byte	W04
	.byte			Gs3, v072
	.byte	W04
	.byte			Gs3, v084
	.byte	W04
	.byte			Gs3, v092
	.byte	W04
	.byte			Gs3, v100
	.byte	W04
	.byte			Gs3, v112
	.byte	W04
	.byte			Gs3, v120
	.byte	W04
	.byte			Gs3, v127
	.byte	W04
	.byte			Gs3, v116
	.byte	W04
	.byte			Gs3, v108
	.byte	W04
	.byte			Gs3, v100
	.byte	W04
	.byte			Gs3, v092
	.byte	W04
	.byte			Gs3, v084
	.byte	W04
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song053_10_1
	.byte	PATT	
		.word	song053_10_2
	.byte	PATT	
		.word	song053_10_3
	.byte	PATT	
		.word	song053_10_4
	.byte	GOTO	
		.word	song053_10_5
	.byte	FINE

	@********************** Track  11 **********************@

	.global song053_11
song053_11:	@ 0x08291FA9
	.byte	KEYSH	, 0
	.byte	VOICE	, 3
	.byte	VOL	, v080
	.byte		N03	, Bn2, v124
	.byte	W06
	.byte			Fs2
	.byte	W06
	.byte		N12	, Bn1
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte		N06	, Bn1
	.byte	W06
	.byte		N03	, Fs2
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte			Fs2
	.byte	W06
	.byte		N12	, Bn1
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			Bn1
	.byte	W12
song053_11_7:
	.byte		N03	, Cs3, v124
	.byte	W06
	.byte			Gs2
	.byte	W06
	.byte		N12	, Cs2
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte		N06	, Cs2
	.byte	W06
	.byte		N03	, Gs2
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			Gs2
	.byte	W06
	.byte		N12	, Cs2
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte	PEND
song053_11_8:
	.byte		N03	, Gs2, v124
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte		N12	, Gs1
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte		N06	, Gs1
	.byte	W06
	.byte		N03	, Ds2
	.byte	W06
	.byte			Gs2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte		N12	, Gs1
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte	PEND
song053_11_9:
	.byte		N04	, Cs3, v127
	.byte	W06
	.byte			Cs2, v104
	.byte	W06
	.byte			Cs3, v112
	.byte	W06
	.byte			Cs2, v084
	.byte	W06
	.byte			Cs3, v112
	.byte	W06
	.byte			Cs2, v127
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte			En3, v104
	.byte	W06
	.byte		N06	, Bn3, v127
	.byte	W06
	.byte			Cs3, v104
	.byte	W06
	.byte			As3, v127
	.byte	W06
	.byte			Gs2, v104
	.byte	W06
	.byte			An3, v127
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte		N12	, Cs2
	.byte	W12
	.byte	PEND
song053_11_1:
	.byte		N03	, Ds3, v124
	.byte	W06
	.byte			As2
	.byte	W06
	.byte		N12	, Ds2
	.byte	W12
	.byte			Ds3
	.byte	W12
	.byte		N06	, Ds2
	.byte	W06
	.byte		N03	, As2
	.byte	W06
	.byte			Ds3
	.byte	W06
	.byte			As2
	.byte	W06
	.byte		N12	, Ds2
	.byte	W12
	.byte			Ds3
	.byte	W12
	.byte			Ds2
	.byte	W12
	.byte	PEND
song053_11_2:
	.byte		N03	, En3, v124
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte		N12	, En2
	.byte	W12
	.byte		N03	, Gn2
	.byte	W06
	.byte			Fs2
	.byte	W06
	.byte		N06	, Gn2
	.byte	W12
	.byte		N03	, En3
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte		N12	, En2
	.byte	W12
	.byte		N03	, Gn2
	.byte	W06
	.byte			Fs2
	.byte	W06
	.byte		N06	, Gn2
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte	PEND
song053_11_3:
	.byte		N03	, Gs2, v124
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte		N12	, Gs1
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte		N06	, Gs1
	.byte	W06
	.byte		N03	, Ds2
	.byte	W06
	.byte			Gs2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte		N36	, Gs1
	.byte	W36
	.byte	PEND
song053_11_4:
	.byte		N03	, Cs3, v124
	.byte	W06
	.byte			Gs2
	.byte	W06
	.byte		N12	, Cs2
	.byte	W12
	.byte		N03	, En2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte		N06	, En2
	.byte	W12
	.byte		N03	, Cs3
	.byte	W06
	.byte			Gs2
	.byte	W06
	.byte		N12	, Cs2
	.byte	W12
	.byte		N03	, En2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte		N06	, En2
	.byte	W06
	.byte			Gs2
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song053_11_1
	.byte	PATT	
		.word	song053_11_2
	.byte	PATT	
		.word	song053_11_3
	.byte	PATT	
		.word	song053_11_4
song053_11_5:
	.byte		N03	, Gs2, v124
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte		N30	, Gs1
	.byte	W30
	.byte		N03	, Ds2
	.byte	W06
	.byte			Gs2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte		N36	, Gs1
	.byte	W36
	.byte	PEND
song053_11_6:
	.byte		N03	, Gs2, v124
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte		N12	, Gs1
	.byte	W12
	.byte		N03	, Bn1
	.byte	W06
	.byte			As1
	.byte	W06
	.byte		N06	, Bn1
	.byte	W12
	.byte		N03	, Gs2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte		N12	, Gs1
	.byte	W12
	.byte		N03	, Bn1
	.byte	W06
	.byte			As1
	.byte	W06
	.byte		N06	, Bn1
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song053_11_5
	.byte	PATT	
		.word	song053_11_6
	.byte	PATT	
		.word	song053_11_5
	.byte	PATT	
		.word	song053_11_6
	.byte	PATT	
		.word	song053_11_5
	.byte	PATT	
		.word	song053_11_6
song053_11_10:
	.byte		N03	, Bn2, v124
	.byte	W06
	.byte			Fs2
	.byte	W06
	.byte		N12	, Bn1
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte		N06	, Bn1
	.byte	W06
	.byte		N03	, Fs2
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte			Fs2
	.byte	W06
	.byte		N12	, Bn1
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song053_11_7
	.byte	PATT	
		.word	song053_11_8
	.byte	PATT	
		.word	song053_11_9
	.byte	PATT	
		.word	song053_11_10
	.byte	PATT	
		.word	song053_11_7
	.byte	PATT	
		.word	song053_11_8
	.byte	PATT	
		.word	song053_11_9
	.byte	GOTO	
		.word	song053_11_1
	.byte	FINE

	@********************** Track  12 **********************@

	.global song053_12
song053_12:	@ 0x08292161
	.byte	KEYSH	, 0
	.byte	VOICE	, 89
	.byte	VOL	, v040
	.byte		N06	, Cn5, v104
	.byte	W24
	.byte		N06	
	.byte	W24
	.byte		N06	
	.byte	W24
	.byte		N06	
	.byte	W24
song053_12_2:
	.byte		N06	, Cn5, v104
	.byte	W24
	.byte		N06	
	.byte	W24
	.byte		N06	
	.byte	W24
	.byte		N05	, Cn5, v127
	.byte	W06
	.byte			Cn5, v104
	.byte	W18
	.byte	PEND
song053_12_1:
	.byte		N06	, Cn5, v104
	.byte	W24
	.byte		N06	
	.byte	W24
	.byte		N06	
	.byte	W24
	.byte		N06	
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song053_12_1
song053_12_3:
	.byte	PATT	
		.word	song053_12_1
	.byte	PATT	
		.word	song053_12_2
	.byte	PATT	
		.word	song053_12_1
	.byte	PATT	
		.word	song053_12_1
	.byte	PATT	
		.word	song053_12_1
	.byte	PATT	
		.word	song053_12_2
	.byte	PATT	
		.word	song053_12_1
	.byte	PATT	
		.word	song053_12_1
	.byte	PATT	
		.word	song053_12_1
	.byte	PATT	
		.word	song053_12_2
	.byte	PATT	
		.word	song053_12_1
	.byte	PATT	
		.word	song053_12_1
	.byte	PATT	
		.word	song053_12_1
	.byte	PATT	
		.word	song053_12_2
	.byte	PATT	
		.word	song053_12_1
	.byte	PATT	
		.word	song053_12_1
	.byte	PATT	
		.word	song053_12_1
	.byte	PATT	
		.word	song053_12_2
	.byte	PATT	
		.word	song053_12_1
	.byte	PATT	
		.word	song053_12_1
	.byte	PATT	
		.word	song053_12_1
	.byte	PATT	
		.word	song053_12_2
	.byte	PATT	
		.word	song053_12_1
	.byte	PATT	
		.word	song053_12_1
	.byte	GOTO	
		.word	song053_12_3
	.byte	FINE

	@********************** Track  13 **********************@

	.global song053_13
song053_13:	@ 0x0829220F
	.byte	KEYSH	, 0
	.byte	VOICE	, 91
	.byte	VOL	, v040
	.byte	W12
	.byte		N11	, Cn5, v104
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N11	
	.byte	W12
song053_13_1:
	.byte	W12
	.byte		N11	, Cn5, v104
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song053_13_1
	.byte	PATT	
		.word	song053_13_1
song053_13_2:
	.byte	PATT	
		.word	song053_13_1
	.byte	PATT	
		.word	song053_13_1
	.byte	PATT	
		.word	song053_13_1
	.byte	PATT	
		.word	song053_13_1
	.byte	PATT	
		.word	song053_13_1
	.byte	PATT	
		.word	song053_13_1
	.byte	PATT	
		.word	song053_13_1
	.byte	PATT	
		.word	song053_13_1
	.byte	PATT	
		.word	song053_13_1
	.byte	PATT	
		.word	song053_13_1
	.byte	PATT	
		.word	song053_13_1
	.byte	PATT	
		.word	song053_13_1
	.byte	PATT	
		.word	song053_13_1
	.byte	PATT	
		.word	song053_13_1
	.byte	PATT	
		.word	song053_13_1
	.byte	PATT	
		.word	song053_13_1
	.byte	PATT	
		.word	song053_13_1
	.byte	PATT	
		.word	song053_13_1
	.byte	PATT	
		.word	song053_13_1
	.byte	PATT	
		.word	song053_13_1
	.byte	PATT	
		.word	song053_13_1
	.byte	PATT	
		.word	song053_13_1
	.byte	PATT	
		.word	song053_13_1
	.byte	PATT	
		.word	song053_13_1
	.byte	GOTO	
		.word	song053_13_2
	.byte	FINE
    
	mAlignWord
	.global song053
song053:	@ 0x082922B4
	.byte	13		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

	mAlignWord
	.word	voicegroup016		@ voicegroup/tone

	.word	song053_1		@ track
	.word	song053_2		@ track
	.word	song053_3		@ track
	.word	song053_4		@ track
	.word	song053_5		@ track
	.word	song053_6		@ track
	.word	song053_7		@ track
	.word	song053_8		@ track
	.word	song053_9		@ track
	.word	song053_10		@ track
	.word	song053_11		@ track
	.word	song053_12		@ track
	.word	song053_13		@ track

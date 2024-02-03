	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song088_1
song088_1:	@ 0x082AD9B4
	.byte	KEYSH	, 0
	.byte	TEMPO	, 80
	.byte	VOICE	, 126
	.byte	VOL	, v080
	.byte	PAN	, c_v
	.byte	W03
	.byte	TEMPO	, 80
	.byte		N11	, Dn1, v127
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			Dn1
	.byte	W12
	.byte			Gn7
	.byte	W11
	.byte		N12	, Dn1
	.byte	W12
	.byte			Fs1
	.byte	W12
	.byte		N06	, Dn1
	.byte	W07
	.byte		N05	, Gs1
	.byte	W06
	.byte		N12	, Dn1
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N11	, Gn7
	.byte	W12
	.byte			Dn1
	.byte	W12
	.byte			Gn7
	.byte	W11
	.byte		N05	
	.byte	W07
	.byte			Dn1
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W05
	.byte		N06	, Gn7
	.byte	W07
	.byte		N05	, Gs1
	.byte	W06
	.byte		N11	, Dn1
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			Dn1
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N11	, Gn7
	.byte	W11
	.byte		N12	, Fs1
	.byte	W19
	.byte		N05	
	.byte	W06
	.byte		N11	, Dn1
	.byte	W12
	.byte		N23	
	.byte	W24
	.byte	FINE

	@********************** Track  2 **********************@

	.global song088_2
song088_2:	@ 0x082ADA09
	.byte	KEYSH	, 0
	.byte	VOICE	, 127
	.byte	VOL	, v080
	.byte	PAN	, c_v
	.byte	W03
song088_2_1:
	.byte		N36	, Cs2, v127
	.byte	W12
	.byte		N12	, En1, v052
	.byte	W36
	.byte			Ds1, v080
	.byte	W12
	.byte			Dn1, v060
	.byte	W12
	.byte			Ds1, v080
	.byte	W12
	.byte			En1, v052
	.byte	W12
	.byte	PEND
	.byte			Dn1
	.byte	W12
	.byte			En1
	.byte	W12
	.byte			Dn1
	.byte	W12
	.byte		N24	, En1
	.byte		N48	, Cs2, v127
	.byte	W48
	.byte		N12	, En1, v052
	.byte	W12
	.byte	PATT	
		.word	song088_2_1
	.byte	FINE

	@********************** Track  3 **********************@

	.global song088_3
song088_3:	@ 0x082ADA3D
	.byte	KEYSH	, 0
	.byte	VOICE	, 57
	.byte	VOL	, v072
	.byte	PAN	, c_v-6
	.byte	W03
	.byte	W01
	.byte		N05	, An1, v127
	.byte	W06
	.byte			An2, v116
	.byte	W06
	.byte			An1, v112
	.byte	W06
	.byte			An2, v104
	.byte	W06
	.byte			An2, v127
	.byte	W06
	.byte			An1, v116
	.byte	W06
	.byte			Gn2, v112
	.byte	W06
	.byte			Gn1
	.byte	W06
	.byte			Gn1, v104
	.byte	W06
	.byte			Gn2, v116
	.byte	W06
	.byte			Gn1, v127
	.byte	W06
	.byte			Gn1, v112
	.byte	W06
	.byte			Gn1, v104
	.byte	W06
	.byte			Gn2, v116
	.byte	W06
	.byte			Gn2, v127
	.byte	W06
	.byte			Gn1, v112
	.byte	W05
	.byte	W01
	.byte			Dn1, v127
	.byte	W06
	.byte			Dn1, v116
	.byte	W06
	.byte			Dn2, v112
	.byte	W06
	.byte			Dn1, v104
	.byte	W06
	.byte			Dn1, v127
	.byte	W06
	.byte			Dn1, v116
	.byte	W06
	.byte			En2
	.byte	W06
	.byte			En1, v112
	.byte	W06
	.byte			Ds2, v104
	.byte	W06
	.byte			En2, v116
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			En2, v112
	.byte	W06
	.byte			Ds2, v104
	.byte	W06
	.byte			En2, v116
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			En2, v112
	.byte	W05
	.byte		N13	, Fn1
	.byte	W12
	.byte		N12	, Fn2, v108
	.byte	W12
	.byte		N05	, Fn1
	.byte	W12
	.byte		N18	, Gn1
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte		N12	, Gn2
	.byte	W12
	.byte		N05	, Gn1, v112
	.byte	W12
	.byte		N96	, An1, v120
	.byte	W96
	.byte	FINE

	@********************** Track  4 **********************@

	.global song088_4
song088_4:	@ 0x082ADAC0
	.byte	KEYSH	, 0
	.byte	VOICE	, 0
	.byte	VOL	, v056
	.byte	BENDR	, 13
	.byte	LFOS	, 28
	.byte	MODT	, 0
	.byte	MOD	, 1
	.byte	W01
	.byte	PAN	, c_v+6
	.byte	W02
	.byte		N11	, An4, v116
	.byte	W12
	.byte		N05	, En4, v100
	.byte	W12
	.byte		N04	, Cs4, v108
	.byte	W12
	.byte		N22	, Gn4
	.byte	W24
	.byte		N05	, Fs4, v104
	.byte	W12
	.byte		N04	, En4, v100
	.byte	W12
	.byte		N05	, Dn4, v116
	.byte	W12
	.byte		N12	, Fs4, v100
	.byte	W12
	.byte		N03	, Dn4
	.byte	W12
	.byte			Fs4
	.byte	W12
	.byte		N23	, Gs4, v108
	.byte	W24
	.byte		N20	, An4, v096
	.byte	W20
	.byte		N15	, Bn4, v108
	.byte	W16
	.byte		N36	, An4, v096
	.byte	W36
	.byte		N60	, Bn4, v108
	.byte	W60
	.byte		N96	, Cs5, v104
	.byte	W96
	.byte	FINE

	@********************** Track  5 **********************@

	.global song088_5
song088_5:	@ 0x082ADB0F
	.byte	KEYSH	, 0
	.byte	VOICE	, 98
	.byte	VOL	, v075
	.byte	PAN	, c_v+16
	.byte	BENDR	, 12
	.byte	W03
	.byte	W96
	.byte	W96
	.byte		N36	, Fn3, v104
	.byte	W36
	.byte		N60	, Gn3
	.byte	W60
	.byte		N96	, An2, v127
	.byte	W96
	.byte	FINE

	@********************** Track  6 **********************@

	.global song088_6
song088_6:	@ 0x082ADB28
	.byte	KEYSH	, 0
	.byte	VOICE	, 63
	.byte	VOL	, v072
	.byte	PAN	, c_v+16
	.byte	W03
	.byte		N06	, Cs3, v120
	.byte		N12	, An3
	.byte	W12
	.byte		N06	, En3
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte		N23	, Bn2
	.byte		N23	, Gn3
	.byte	W24
	.byte		N06	, Fs3
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte		N11	, An2
	.byte		N11	, Fs3
	.byte	W12
	.byte		N06	, Dn3
	.byte	W12
	.byte			An2
	.byte		N06	, Fs3
	.byte	W12
	.byte		N56	, Bn2
	.byte		N56	, Gs3
	.byte	W60
	.byte		N36	, An3, v116
	.byte	W36
	.byte		N60	, Bn3, v104
	.byte	W60
	.byte		N96	, Cs3, v108
	.byte		N96	, Cs4, v120
	.byte	W96
	.byte	FINE

	@********************** Track  7 **********************@

	.global song088_7
song088_7:	@ 0x082ADB69
	.byte	KEYSH	, 0
	.byte	VOICE	, 105
	.byte	VOL	, v056
	.byte	PAN	, c_v-44
	.byte	BENDR	, 12
	.byte	W03
	.byte		N12	, Fn3, v112
	.byte	W36
	.byte		N23	, Ds3
	.byte	W60
	.byte		N12	, Dn3
	.byte	W36
	.byte		N23	, Cn3
	.byte	W60
	.byte		N12	, Cs3
	.byte	W36
	.byte		N23	, Ds3
	.byte	W48
	.byte	W03
	.byte		N96	, Fn1, v052
	.byte	W09
	.byte	W84
	.byte	W03
	.byte	FINE

	@********************** Track  8 **********************@

	.global song088_8
song088_8:	@ 0x082ADB8F
	.byte	KEYSH	, 0
	.byte	VOICE	, 104
	.byte	VOL	, v062
	.byte	PAN	, c_v-44
	.byte	W03
	.byte	W12
	.byte		N06	, Fn2, v100
	.byte	W12
	.byte		N11	
	.byte	W36
	.byte		N06	, An2
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte	W12
	.byte		N06	, As2
	.byte	W12
	.byte		N06	
	.byte	W36
	.byte			Cn3
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte		N11	
	.byte	W36
	.byte		N06	, Ds2
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte	FINE

	.align 2
	.global song088
song088:	@ 0x082ADBC0
	.byte	8		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	.word	voicegroup012		@ voicegroup/tone

	.word	song088_1		@ track
	.word	song088_2		@ track
	.word	song088_3		@ track
	.word	song088_4		@ track
	.word	song088_5		@ track
	.word	song088_6		@ track
	.word	song088_7		@ track
	.word	song088_8		@ track

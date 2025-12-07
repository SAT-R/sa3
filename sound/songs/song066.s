	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song066_1
song066_1:	@ 0x082A0E64
	.byte	KEYSH	, 0
song066_1_3:
	.byte	TEMPO	, 90
	.byte	VOICE	, 127
	.byte	VOL	, v080
	.byte	PAN	, c_v
	.byte		N44	, As4, v127
	.byte		N10	, Gn7
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			Dn4
	.byte	W12
song066_1_1:
	.byte		N10	, Gn7, v127
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song066_1_1
song066_1_2:
	.byte		N10	, Gn7, v127
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte		N04	, Gn7
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte	PEND
	.byte		N44	, As4
	.byte		N10	, Gn7
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte	PATT	
		mPtr	song066_1_1
	.byte	PATT	
		mPtr	song066_1_1
	.byte	PATT	
		mPtr	song066_1_2
	.byte	GOTO	
		mPtr	song066_1_3
	.byte	FINE

	@********************** Track  2 **********************@

	.global song066_2
song066_2:	@ 0x082A0EDA
	.byte	KEYSH	, 0
song066_2_1:
	.byte	VOICE	, 1
	.byte	VOL	, v071
	.byte	PAN	, c_v
	.byte		N28	, Dn4, v116
	.byte	W36
	.byte		N17	, As3, v104
	.byte	W36
	.byte		N28	, Dn4, v116
	.byte	W24
	.byte	W12
	.byte		N17	, As3, v104
	.byte	W36
	.byte		N21	, Fn3
	.byte	W24
	.byte			As3, v116
	.byte	W24
	.byte		N28	, Dn4
	.byte	W36
	.byte		N17	, Gn3, v104
	.byte	W36
	.byte		N28	, Dn4, v116
	.byte	W24
	.byte	W12
	.byte		N17	, Gn3, v104
	.byte	W36
	.byte		N21	
	.byte	W24
	.byte			As3, v116
	.byte	W24
	.byte		N28	, Fn4
	.byte	W36
	.byte		N17	, Dn4, v104
	.byte	W36
	.byte		N28	, Fn4, v116
	.byte	W24
	.byte	W12
	.byte		N17	, Dn4, v104
	.byte	W36
	.byte		N21	, As3
	.byte	W24
	.byte			Dn4, v116
	.byte	W24
	.byte		N28	, Gn4
	.byte	W36
	.byte		N17	, As3, v104
	.byte	W36
	.byte		N28	, Gn4, v116
	.byte	W24
	.byte	W12
	.byte		N17	, As3, v104
	.byte	W36
	.byte		N21	, Gn4
	.byte	W24
	.byte			As4, v116
	.byte	W24
	.byte	GOTO	
		mPtr	song066_2_1
	.byte	FINE

	@********************** Track  3 **********************@

	.global song066_3
song066_3:	@ 0x082A0F40
	.byte	KEYSH	, 0
song066_3_1:
	.byte	VOICE	, 82
	.byte	VOL	, v080
	.byte	PAN	, c_v
	.byte		N68	, Gn2, v127
	.byte	W01
	.byte			Gn1
	.byte	W68
	.byte	W03
	.byte		N06	, Gn2, v104
	.byte	W01
	.byte			Gn1
	.byte	W11
	.byte			Gn2, v076
	.byte	W01
	.byte			Gn1
	.byte	W11
	.byte			Gn2, v056
	.byte	W01
	.byte			Gn1
	.byte	W32
	.byte	W03
	.byte		N28	, Cn3, v127
	.byte	W01
	.byte			Cn2
	.byte	W28
	.byte	W01
	.byte		N05	, Cs3
	.byte	W01
	.byte			Cs2
	.byte	W05
	.byte		N23	, Dn3
	.byte	W01
	.byte			Dn2
	.byte	W23
	.byte		N68	, An2
	.byte	W01
	.byte			An1
	.byte	W68
	.byte	W03
	.byte		N06	, An2, v104
	.byte	W01
	.byte			An1
	.byte	W11
	.byte			An2, v076
	.byte	W01
	.byte			An1
	.byte	W11
	.byte			An2, v056
	.byte	W01
	.byte			An1
	.byte	W32
	.byte	W03
	.byte		N28	, Cn3, v127
	.byte	W01
	.byte			Cn2
	.byte	W28
	.byte	W01
	.byte		N05	, Cs3
	.byte	W01
	.byte			Cs2
	.byte	W05
	.byte		N23	, Dn3
	.byte	W01
	.byte			Dn2
	.byte	W23
	.byte		N68	, Gn3
	.byte	W01
	.byte			Gn2
	.byte	W68
	.byte	W03
	.byte		N06	, Gn3, v104
	.byte	W01
	.byte			Gn2
	.byte	W11
	.byte			Gn3, v076
	.byte	W01
	.byte			Gn2
	.byte	W11
	.byte			Gn3, v056
	.byte	W01
	.byte			Gn2
	.byte	W32
	.byte	W03
	.byte		N28	, Cn4, v127
	.byte	W01
	.byte			Cn3
	.byte	W28
	.byte	W01
	.byte		N05	, Cs4
	.byte	W01
	.byte			Cs3
	.byte	W05
	.byte		N23	, Dn4
	.byte	W01
	.byte			Dn3
	.byte	W23
	.byte		N68	, An3
	.byte	W01
	.byte			An2
	.byte	W68
	.byte	W03
	.byte		N06	, An3, v104
	.byte	W01
	.byte			An2
	.byte	W11
	.byte			An3, v076
	.byte	W01
	.byte			An2
	.byte	W11
	.byte			An3, v056
	.byte	W01
	.byte			An2
	.byte	W92
	.byte	W03
	.byte	GOTO	
		mPtr	song066_3_1
	.byte	FINE

	@********************** Track  4 **********************@

	.global song066_4
song066_4:	@ 0x082A0FDE
	.byte	KEYSH	, 0
song066_4_4:
	.byte	VOICE	, 49
	.byte	VOL	, v080
	.byte	PAN	, c_v
	.byte		N11	, Gn1, v127
	.byte	W12
	.byte			Gn1, v088
	.byte	W12
	.byte			Gn1, v048
	.byte	W12
	.byte			Gn2, v127
	.byte	W12
	.byte			Gn2, v088
	.byte	W12
	.byte			Gn2, v048
	.byte	W12
	.byte			Gn1, v127
	.byte	W12
	.byte			Gn1, v088
	.byte	W12
song066_4_1:
	.byte		N11	, Gn1, v048
	.byte	W12
	.byte			Gn2, v127
	.byte	W12
	.byte			Gn2, v088
	.byte	W12
	.byte			Gn2, v048
	.byte	W12
	.byte			Gn1, v127
	.byte	W12
	.byte			Gn1, v088
	.byte	W12
	.byte			Gn2, v127
	.byte	W12
	.byte			Gn2, v088
	.byte	W12
	.byte	PEND
song066_4_2:
	.byte		N11	, Fs1, v127
	.byte	W12
	.byte			Fs1, v088
	.byte	W12
	.byte			Fs1, v048
	.byte	W12
	.byte			Fs2, v127
	.byte	W12
	.byte			Fs2, v088
	.byte	W12
	.byte			Fs2, v048
	.byte	W12
	.byte			Fs1, v127
	.byte	W12
	.byte			Fs1, v088
	.byte	W12
	.byte	PEND
song066_4_3:
	.byte		N11	, Fs1, v048
	.byte	W12
	.byte			Fs2, v127
	.byte	W12
	.byte			Fs2, v088
	.byte	W12
	.byte			Fs2, v048
	.byte	W12
	.byte			Fs1, v127
	.byte	W12
	.byte			Fs1, v088
	.byte	W12
	.byte			Fs2, v127
	.byte	W12
	.byte			Fs2, v088
	.byte	W12
	.byte	PEND
	.byte			Gn1, v127
	.byte	W12
	.byte			Gn1, v088
	.byte	W12
	.byte			Gn1, v048
	.byte	W12
	.byte			Gn2, v127
	.byte	W12
	.byte			Gn2, v088
	.byte	W12
	.byte			Gn2, v048
	.byte	W12
	.byte			Gn1, v127
	.byte	W12
	.byte			Gn1, v088
	.byte	W12
	.byte	PATT	
		mPtr	song066_4_1
	.byte	PATT	
		mPtr	song066_4_2
	.byte	PATT	
		mPtr	song066_4_3
	.byte	GOTO	
		mPtr	song066_4_4
	.byte	FINE

	@********************** Track  5 **********************@

	.global song066_5
song066_5:	@ 0x082A107A
	.byte	KEYSH	, 0
song066_5_3:
	.byte	VOICE	, 4
	.byte	VOL	, v050
	.byte	PAN	, c_v+63
	.byte		N06	, Cn5, v124
	.byte	W06
	.byte			Bn4, v116
	.byte	W06
	.byte			An4, v104
	.byte	W06
	.byte			Gn4, v096
	.byte	W06
	.byte			Fn4, v084
	.byte	W06
	.byte			Gn4, v096
	.byte	W06
	.byte			An4, v104
	.byte	W06
	.byte			Bn4, v116
	.byte	W06
	.byte			Cn5, v124
	.byte	W06
	.byte			Bn4, v116
	.byte	W06
	.byte			An4, v104
	.byte	W06
	.byte			Gn4, v096
	.byte	W06
	.byte			Fn4, v084
	.byte	W06
	.byte			Gn4, v096
	.byte	W06
	.byte			An4, v104
	.byte	W06
	.byte			Bn4, v116
	.byte	W06
song066_5_1:
	.byte		N06	, Cn5, v124
	.byte	W06
	.byte			Bn4, v116
	.byte	W06
	.byte			An4, v104
	.byte	W06
	.byte			Gn4, v096
	.byte	W06
	.byte			Fn4, v084
	.byte	W06
	.byte			Gn4, v096
	.byte	W06
	.byte			An4, v104
	.byte	W06
	.byte			Bn4, v116
	.byte	W06
	.byte			Cn5, v124
	.byte	W06
	.byte			Bn4, v116
	.byte	W06
	.byte			An4, v104
	.byte	W06
	.byte			Gn4, v096
	.byte	W06
	.byte			Fn4, v084
	.byte	W06
	.byte			Gn4, v096
	.byte	W06
	.byte			An4, v104
	.byte	W06
	.byte			Bn4, v116
	.byte	W06
	.byte	PEND
	.byte	PATT	
		mPtr	song066_5_1
	.byte	PATT	
		mPtr	song066_5_1
song066_5_2:
	.byte		N06	, Gn5, v124
	.byte	W06
	.byte			Fn5, v116
	.byte	W06
	.byte			En5, v104
	.byte	W06
	.byte			Dn5, v096
	.byte	W06
	.byte			Cn5, v084
	.byte	W06
	.byte			Dn5, v096
	.byte	W06
	.byte			En5, v104
	.byte	W06
	.byte			Fn5, v116
	.byte	W06
	.byte			Gn5, v124
	.byte	W06
	.byte			Fn5, v116
	.byte	W06
	.byte			En5, v104
	.byte	W06
	.byte			Dn5, v096
	.byte	W06
	.byte			Cn5, v084
	.byte	W06
	.byte			Dn5, v096
	.byte	W06
	.byte			En5, v104
	.byte	W06
	.byte			Fn5, v116
	.byte	W06
	.byte	PEND
	.byte	PATT	
		mPtr	song066_5_2
	.byte	PATT	
		mPtr	song066_5_2
	.byte	PATT	
		mPtr	song066_5_2
	.byte	GOTO	
		mPtr	song066_5_3
	.byte	FINE

	@********************** Track  6 **********************@

	.global song066_6
song066_6:	@ 0x082A1136
	.byte	KEYSH	, 0
song066_6_1:
	.byte	VOICE	, 56
	.byte	VOL	, v053
	.byte	PAN	, c_v-64
	.byte	W24
	.byte		N06	, Cn5, v124
	.byte	W12
	.byte			Cn5, v084
	.byte	W12
	.byte			Cn5, v064
	.byte	W12
	.byte			Gn4, v124
	.byte	W12
	.byte			Gn4, v084
	.byte	W12
	.byte			En4, v124
	.byte	W12
	.byte			En4, v084
	.byte	W12
	.byte			En4, v064
	.byte	W24
	.byte			Gn4, v124
	.byte	W12
	.byte			Gn4, v084
	.byte	W12
	.byte			Gn4, v064
	.byte	W12
	.byte			An4, v124
	.byte	W12
	.byte			An4, v084
	.byte	W12
	.byte	W24
	.byte			En5, v124
	.byte	W12
	.byte			En5, v084
	.byte	W12
	.byte			En5, v064
	.byte	W12
	.byte			Cn5, v124
	.byte	W12
	.byte			Cn5, v084
	.byte	W12
	.byte			An4, v124
	.byte	W12
	.byte			An4, v084
	.byte	W12
	.byte			An4, v064
	.byte	W24
	.byte			Cn5, v124
	.byte	W12
	.byte			Cn5, v084
	.byte	W12
	.byte			Cn5, v064
	.byte	W12
	.byte			En5, v124
	.byte	W12
	.byte			En5, v084
	.byte	W12
	.byte	W24
	.byte			En5, v124
	.byte	W12
	.byte			En5, v084
	.byte	W12
	.byte			En5, v064
	.byte	W12
	.byte			Cn5, v124
	.byte	W12
	.byte			Cn5, v084
	.byte	W12
	.byte			Gn4, v124
	.byte	W12
	.byte			Gn4, v084
	.byte	W12
	.byte			Gn4, v064
	.byte	W24
	.byte			Cn5, v124
	.byte	W12
	.byte			Cn5, v084
	.byte	W12
	.byte			Cn5, v064
	.byte	W12
	.byte			Dn5, v124
	.byte	W12
	.byte			Dn5, v084
	.byte	W12
	.byte	W24
	.byte			Gn5, v124
	.byte	W12
	.byte			Gn5, v084
	.byte	W12
	.byte			Gn5, v064
	.byte	W12
	.byte			En5, v124
	.byte	W12
	.byte			En5, v084
	.byte	W12
	.byte			Cn5, v124
	.byte	W12
	.byte			Cn5, v084
	.byte	W12
	.byte			Cn5, v064
	.byte	W24
	.byte			En5, v124
	.byte	W12
	.byte			En5, v084
	.byte	W12
	.byte			En5, v064
	.byte	W12
	.byte			Gn5, v124
	.byte	W12
	.byte			Gn5, v084
	.byte	W12
	.byte	GOTO	
		mPtr	song066_6_1
	.byte	FINE

	@********************** Track  7 **********************@

	.global song066_7
song066_7:	@ 0x082A11E5
	.byte	KEYSH	, 0
song066_7_2:
	.byte	VOICE	, 89
	.byte	VOL	, v050
	.byte	PAN	, c_v
	.byte	W12
	.byte		N06	, Cn5, v096
	.byte	W24
	.byte		N06	
	.byte	W24
	.byte		N06	
	.byte	W24
	.byte		N06	
	.byte	W12
song066_7_1:
	.byte	W12
	.byte		N06	, Cn5, v096
	.byte	W24
	.byte		N06	
	.byte	W24
	.byte		N06	
	.byte	W24
	.byte		N06	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song066_7_1
	.byte	PATT	
		mPtr	song066_7_1
	.byte	PATT	
		mPtr	song066_7_1
	.byte	PATT	
		mPtr	song066_7_1
	.byte	PATT	
		mPtr	song066_7_1
	.byte	PATT	
		mPtr	song066_7_1
	.byte	GOTO	
		mPtr	song066_7_2
	.byte	FINE

	@********************** Track  8 **********************@

	.global song066_8
song066_8:	@ 0x082A1228
	.byte	KEYSH	, 0
song066_8_2:
	.byte	VOICE	, 91
	.byte	VOL	, v044
	.byte	PAN	, c_v
	.byte		N11	, Cn6, v096
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N11	
	.byte	W24
song066_8_1:
	.byte		N11	, Cn6, v096
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte	PEND
	.byte	PATT	
		mPtr	song066_8_1
	.byte	PATT	
		mPtr	song066_8_1
	.byte	PATT	
		mPtr	song066_8_1
	.byte	PATT	
		mPtr	song066_8_1
	.byte	PATT	
		mPtr	song066_8_1
	.byte	PATT	
		mPtr	song066_8_1
	.byte	GOTO	
		mPtr	song066_8_2
	.byte	FINE
    
	mAlignWord
	.global song066
song066:	@ 0x082A126C
	.byte	8		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	mPtr	voicegroup016		@ voicegroup/tone

	mPtr	song066_1		@ track
	mPtr	song066_2		@ track
	mPtr	song066_3		@ track
	mPtr	song066_4		@ track
	mPtr	song066_5		@ track
	mPtr	song066_6		@ track
	mPtr	song066_7		@ track
	mPtr	song066_8		@ track

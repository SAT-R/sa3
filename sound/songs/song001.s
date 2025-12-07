	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song001_1
song001_1:	@ 0x08264A98
	.byte	KEYSH	, 0
	.byte	TEMPO	, 246
	.byte	VOICE	, 126
	.byte	VOL	, v090
	.byte	PAN	, c_v
	.byte	BENDR	, 3
	.byte	W24
	.byte	TEMPO	, 61
	.byte		N06	, Cn1, v127
	.byte		N06	, Dn1, v052
	.byte	W06
	.byte		N03	, Cs1, v127
	.byte		N12	, En1, v044
	.byte		N06	, Gs1, v127
	.byte	W03
	.byte		N03	, Cs1
	.byte	W03
	.byte		N05	, Cs1, v052
	.byte		N06	, Dn1
	.byte		N06	, Gn1, v127
	.byte	W06
	.byte			Cs1
	.byte	W06
	.byte		N06	
	.byte		N12	, En1, v044
	.byte		N32	, Cs2, v127
	.byte	W06
	.byte		N06	, Cn1
	.byte	W12
	.byte		N06	
	.byte		N04	, Dn1, v060
	.byte	W06
	.byte		N06	, Gn1, v127
	.byte	W06
	.byte			Cs1
	.byte	W06
	.byte			Cn1
	.byte	W06
	.byte			Cs1
	.byte		N12	, En1, v044
	.byte		N36	, Cs2, v127
	.byte	W18
	.byte		N06	, Cn1
	.byte		N12	, En1, v044
	.byte	W12
	.byte		N06	, Cn1, v127
	.byte		N06	, Dn1, v052
	.byte	W06
	.byte		N03	, Cs1, v127
	.byte	W03
	.byte		N03	
	.byte	W03
	.byte		N06	, Cs1, v052
	.byte		N06	, Dn1
	.byte	W06
	.byte			Cs1, v127
	.byte	W06
	.byte		N06	
	.byte		N32	, Cs2, v100
	.byte	W06
	.byte		N06	, Cn1, v127
	.byte	W06
	.byte		N06	
	.byte		N12	, En1, v052
	.byte	W06
	.byte		N06	, Gn1, v127
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte			Fs1
	.byte	W06
	.byte			Cn1
	.byte		N06	, Dn1, v052
	.byte	W06
	.byte			Cn1, v127
	.byte		N52	, Cs2
	.byte	W06
	.byte		N06	, Cn1
	.byte		N06	, Dn1, v052
	.byte	W06
	.byte		N03	, Cs1, v127
	.byte	W03
	.byte		N03	
	.byte	W03
	.byte		N06	, Cs1, v052
	.byte		N06	, Dn1
	.byte	W06
	.byte			Cs1, v127
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Dn1, v052
	.byte		N06	, An1, v088
	.byte	W06
	.byte			Cs1, v127
	.byte	W06
	.byte			Dn1, v060
	.byte	W06
	.byte			Cs1, v127
	.byte		N06	, En1, v044
	.byte	W06
	.byte			Cn1, v088
	.byte		N06	, Dn1, v052
	.byte	W06
	.byte			Cs1, v127
	.byte		N06	, En1, v052
	.byte	W06
	.byte			Cn1, v127
	.byte		N06	, Dn1, v052
	.byte	W06
	.byte			Cs1, v127
	.byte		N06	, En1, v052
	.byte	W06
	.byte			Cn1, v127
	.byte		N06	, Dn1, v052
	.byte	W06
	.byte		N11	, An1, v127
	.byte		N60	, Cs2
	.byte	W01
	.byte		N12	, En1, v052
	.byte	W11
	.byte		N06	, Cn1, v120
	.byte	W06
	.byte		N11	, Gn1, v127
	.byte	W06
	.byte		N06	, En1, v052
	.byte	W06
	.byte			Cn1, v127
	.byte		N06	, Dn1, v044
	.byte		N06	, Gs1, v127
	.byte	W06
	.byte			Gn1
	.byte	W06
	.byte			Fn1
	.byte	W06
	.byte			Cn1
	.byte	W06
	.byte		N06	
	.byte		N12	, En1, v044
	.byte		N06	, Gs1, v127
	.byte	W06
	.byte			Cs1
	.byte	W12
	.byte			Cn1
	.byte		N12	, En1, v044
	.byte	W06
	.byte		N06	, Cs1, v127
	.byte	W12
	.byte			Cn1
	.byte		N06	, Dn1, v052
	.byte		N60	, Cs2, v127
	.byte	W60
	.byte	FINE

	@********************** Track  2 **********************@

	.global song001_2
song001_2:	@ 0x08264BAC
	.byte	KEYSH	, 0
	.byte	VOICE	, 0
	.byte	VOL	, v042
	.byte	PAN	, c_v
	.byte	BENDR	, 13
	.byte	LFOS	, 18
	.byte	LFODL	, 20
	.byte	MOD	, 3
	.byte	MODT	, 0
	.byte	W24
	.byte	W24
	.byte		N03	, Cn5, v104
	.byte	W03
	.byte		N18	, Cs5, v108
	.byte	W22
	.byte		N04	, Cs5, v100
	.byte	W06
	.byte		N03	, Bn4, v108
	.byte	W06
	.byte		N02	, An4, v100
	.byte	W07
	.byte		N40	, Bn4, v116
	.byte	W40
	.byte	W01
	.byte		N03	, An4, v104
	.byte	W05
	.byte		N02	, Bn4, v108
	.byte	W06
	.byte	W01
	.byte		N23	, Cn5, v120
	.byte	W23
	.byte		N02	, Dn5, v100
	.byte	W03
	.byte		N08	, En5, v108
	.byte	W16
	.byte		N18	, Dn5, v112
	.byte	W18
	.byte		N06	, Gn5, v108
	.byte	W11
	.byte			Fn5, v088
	.byte	W06
	.byte		N03	, En5, v092
	.byte	W06
	.byte		N06	, Dn5, v088
	.byte	W07
	.byte		N04	, En5, v104
	.byte	W05
	.byte	W10
	.byte		N02	, Bn4, v108
	.byte	W01
	.byte		N09	, Cs5, v104
	.byte	W10
	.byte		N05	, Bn4, v096
	.byte	W11
	.byte		N04	, An4, v112
	.byte	W12
	.byte		N36	, Gn4, v100
	.byte	W40
	.byte		N06	, Fs4, v096
	.byte	W06
	.byte		N04	, Gn4, v092
	.byte	W06
	.byte	W02
	.byte		N07	, An4, v108
	.byte	W17
	.byte		N06	, Bn4
	.byte	W17
	.byte		N04	, Cn5, v096
	.byte	W02
	.byte		N18	, Cs5
	.byte	W20
	.byte		N03	, As4, v068
	.byte	W01
	.byte		N02	, Bn4, v072
	.byte	W01
	.byte		N03	, An4, v048
	.byte	W01
	.byte			Gn4, v064
	.byte	W01
	.byte		N02	, Fn4, v072
	.byte	W02
	.byte		N03	, En4, v056
	.byte	W01
	.byte			Dn4, v080
	.byte	W01
	.byte		N02	, Cn4, v068
	.byte	W01
	.byte		N03	, Bn3, v048
	.byte	W01
	.byte			An3, v068
	.byte	W01
	.byte			Gn3
	.byte	W01
	.byte			En3
	.byte		N02	, Fn3, v024
	.byte	W02
	.byte		N03	, Cn3, v004
	.byte		N03	, Dn3
	.byte	W01
	.byte		N02	, Bn2
	.byte	W05
	.byte			Bn1
	.byte	W03
	.byte	FINE

	@********************** Track  3 **********************@

	.global song001_3
song001_3:	@ 0x08264C69
	.byte	KEYSH	, 0
	.byte	VOICE	, 2
	.byte	VOL	, v077
	.byte	PAN	, c_v
	.byte	BENDR	, 3
	.byte	LFOS	, 56
	.byte	LFODL	, 0
	.byte	MOD	, 2
	.byte	MODT	, 2
	.byte	W24
	.byte	W24
	.byte		N16	, An3, v100
	.byte		N16	, Cs4, v120
	.byte	W24
	.byte		N03	
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte		N02	, An3
	.byte	W06
	.byte		N36	, Gs3, v100
	.byte		N36	, Bn3, v120
	.byte	W42
	.byte		N02	, An3
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte		N20	, An3
	.byte		N20	, Cn4
	.byte	W24
	.byte		N10	
	.byte		N10	, En4
	.byte	W18
	.byte		N48	, Bn3
	.byte		N48	, Dn4
	.byte	W54
	.byte	W07
	.byte		N03	, An3
	.byte		N03	, Cs4
	.byte	W11
	.byte			Gn3
	.byte		N03	, Bn3
	.byte	W12
	.byte		N04	, Fn3, v116
	.byte		N04	, An3
	.byte	W12
	.byte		N42	, Ds3
	.byte		N42	, Gn3
	.byte	W42
	.byte		N06	, Fs3
	.byte	W06
	.byte			Gn3, v124
	.byte	W06
	.byte			Fs3, v120
	.byte		N06	, An3, v124
	.byte	W18
	.byte			En3
	.byte		N05	, Gs3, v120
	.byte		N07	, Bn3, v116
	.byte	W17
	.byte		N30	, An3, v108
	.byte		N30	, Cs4, v112
	.byte	W01
	.byte			Cs3, v108
	.byte	W30
	.byte	W01
	.byte	FINE

	@********************** Track  4 **********************@

	.global song001_4
song001_4:	@ 0x08264CDA
	.byte	KEYSH	, 0
	.byte	VOICE	, 3
	.byte	VOL	, v090
	.byte	PAN	, c_v-19
	.byte	BENDR	, 3
	.byte	LFOS	, 23
	.byte	LFODL	, 22
	.byte	MOD	, 4
	.byte	MODT	, 0
	.byte	W24
	.byte	W24
	.byte		N17	, An2, v120
	.byte	W24
	.byte		N06	
	.byte	W19
	.byte		N36	, Bn2
	.byte	W36
	.byte	W03
	.byte		N04	, An2
	.byte	W06
	.byte		N03	, Bn2
	.byte	W08
	.byte		N18	, Cn3
	.byte	W22
	.byte		N06	
	.byte	W20
	.byte		N42	, Dn3
	.byte	W42
	.byte		N05	, Cn3, v112
	.byte	W05
	.byte		N07	, Dn3
	.byte	W07
	.byte	W07
	.byte		N05	, En3
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte		N04	, Cn3
	.byte	W12
	.byte		N40	, As2
	.byte	W40
	.byte	W01
	.byte		N06	, An2
	.byte	W05
	.byte		N05	, As2
	.byte	W07
	.byte		N12	, Cn3
	.byte	W18
	.byte			Dn3
	.byte	W18
	.byte		N28	, En3
	.byte	W24
	.byte	W02
	.byte		N04	, Dn3, v064
	.byte	W03
	.byte		N03	, Cn3, v068
	.byte	W02
	.byte			Bn2, v084
	.byte	W02
	.byte			An2
	.byte	W01
	.byte			Gn2, v100
	.byte	W01
	.byte			Fn2
	.byte	W01
	.byte			En2, v096
	.byte	W01
	.byte			Dn2, v100
	.byte	W01
	.byte			Cn2, v096
	.byte	W01
	.byte			Bn1, v092
	.byte	W01
	.byte			An1, v084
	.byte	W01
	.byte			Gn1, v072
	.byte	W01
	.byte			En1, v068
	.byte		N02	, Fn1, v060
	.byte	W01
	.byte		N03	, Dn1, v076
	.byte	W01
	.byte			Cn1, v040
	.byte	W01
	.byte			Bn0, v060
	.byte	W01
	.byte			An0, v032
	.byte	W01
	.byte			Gn0
	.byte	W03
	.byte	FINE

	@********************** Track  5 **********************@

	.global song001_5
song001_5:	@ 0x08264D63
	.byte	KEYSH	, 0
	.byte	VOICE	, 4
	.byte	VOL	, v056
	.byte	PAN	, c_v
	.byte	BENDR	, 3
	.byte	LFOS	, 23
	.byte	LFODL	, 22
	.byte	MOD	, 0
	.byte	MODT	, 0
	.byte	W24
	.byte	W07
	.byte		N04	, En2, v100
	.byte	W02
	.byte			Fs2
	.byte	W03
	.byte			Gs2
	.byte	W02
	.byte			As2
	.byte	W03
	.byte			Cn3
	.byte	W02
	.byte			Cs3
	.byte	W05
	.byte		N20	, Dn3, v092
	.byte	W24
	.byte		N06	
	.byte	W19
	.byte		N36	, En3
	.byte	W52
	.byte	W01
	.byte		N18	, Fn3
	.byte	W24
	.byte		N06	, An3
	.byte	W19
	.byte		N36	, Gn3
	.byte	W52
	.byte	W01
	.byte	W07
	.byte		N03	, En3, v124
	.byte	W11
	.byte			Dn3, v120
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte		N42	, As2, v100
	.byte	W42
	.byte		N06	, Fs3, v108
	.byte	W06
	.byte			Gn3, v116
	.byte	W06
	.byte		N14	, An3, v092
	.byte	W17
	.byte		N03	, Bn3
	.byte	W17
	.byte		N28	, Cs4
	.byte	W28
	.byte	W01
	.byte	FINE

	@********************** Track  6 **********************@

	.global song001_6
song001_6:	@ 0x08264DBA
	.byte	KEYSH	, 0
	.byte	VOICE	, 1
	.byte	VOL	, v090
	.byte	PAN	, c_v
	.byte	BENDR	, 3
	.byte	LFOS	, 23
	.byte	LFODL	, 22
	.byte	MOD	, 2
	.byte	MODT	, 0
	.byte	W24
	.byte	W24
	.byte		N21	, Dn1, v112
	.byte	W24
	.byte		N12	, Dn2, v120
	.byte	W18
	.byte		N22	, En1, v100
	.byte	W24
	.byte		N05	, Bn1, v112
	.byte	W06
	.byte			En2
	.byte	W06
	.byte			Bn1, v104
	.byte	W06
	.byte		N11	, En1
	.byte	W12
	.byte		N16	, Fn1, v116
	.byte	W24
	.byte		N11	, Cn2
	.byte	W12
	.byte		N05	, Fn2, v112
	.byte	W06
	.byte		N16	, Gn1, v100
	.byte	W18
	.byte		N12	, Dn2, v120
	.byte	W18
	.byte		N18	, Gn2
	.byte	W18
	.byte	W05
	.byte		N06	, An1, v116
	.byte	W12
	.byte		N07	, Dn2, v108
	.byte	W13
	.byte		N08	, Gn2, v104
	.byte	W13
	.byte		N32	, As2, v092
	.byte	W32
	.byte	W03
	.byte		N06	, Ds2, v104
	.byte	W06
	.byte			Fs2, v096
	.byte	W06
	.byte			Cn2, v104
	.byte	W06
	.byte		N14	, An2
	.byte	W18
	.byte		N16	, En2, v112
	.byte	W18
	.byte		N32	, An1, v096
	.byte	W32
	.byte	W03
	.byte	FINE
    
	mAlignWord
	.global song001
song001:	@ 0x08264E28
	.byte	6		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	mAlignWord
	mPtr	voicegroup009		@ voicegroup/tone

	mPtr	song001_1		@ track
	mPtr	song001_2		@ track
	mPtr	song001_3		@ track
	mPtr	song001_4		@ track
	mPtr	song001_5		@ track
	mPtr	song001_6		@ track

	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song096_1
song096_1:	@ 0x082AE69C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 67
	.byte	VOL	, v077
	.byte	PAN	, c_v
	.byte	W24
	.byte		N15	, Dn2, v120
	.byte	W18
	.byte		N06	
	.byte	W18
	.byte		N15	
	.byte	W18
	.byte		N06	
	.byte	W06
	.byte			An1
	.byte	W06
	.byte			Dn2
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Dn2
	.byte	W06
	.byte		N15	, En2
	.byte	W18
	.byte		N06	
	.byte	W18
	.byte		N15	
	.byte	W18
	.byte		N06	
	.byte	W06
	.byte			An1
	.byte	W06
	.byte			En2
	.byte	W06
	.byte			An1
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			En2
	.byte	W06
	.byte			An1
	.byte	W06
	.byte		N15	, Fn2
	.byte	W18
	.byte		N06	
	.byte	W18
	.byte		N18	, Gn2
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte		N06	
	.byte	W06
	.byte		N09	
	.byte	W12
	.byte		N24	, An2
	.byte	W06
	.byte	W18
	.byte	FINE

	@********************** Track  2 **********************@

	.global song096_2
song096_2:	@ 0x082AE6E5
	.byte	KEYSH	, 0
	.byte	VOICE	, 127
	.byte	VOL	, v081
	.byte	PAN	, c_v
	.byte	W24
	.byte		N12	, Ds2, v120
	.byte	W12
	.byte		N06	, En2
	.byte	W06
	.byte		N12	, Ds2
	.byte	W12
	.byte		N06	, En2
	.byte	W06
	.byte		N12	, Ds2
	.byte	W12
	.byte		N06	
	.byte	W06
	.byte		N03	, Cn3, v112
	.byte	W03
	.byte		N03	
	.byte	W03
	.byte		N06	
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte		N04	, As2
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N06	, An2
	.byte	W06
	.byte			Gs2
	.byte	W06
	.byte		N12	, Ds2, v120
	.byte	W12
	.byte		N06	, En2
	.byte	W06
	.byte		N12	, Ds2
	.byte	W12
	.byte		N06	, En2
	.byte	W06
	.byte		N12	, Ds2
	.byte	W12
	.byte		N06	
	.byte	W06
	.byte			En2, v112
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			An1
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte			Gn1
	.byte	W06
	.byte			Fs1
	.byte	W06
	.byte		N18	, Ds2, v120
	.byte	W18
	.byte		N12	
	.byte	W12
	.byte		N06	, En2
	.byte	W06
	.byte		N12	, Ds2
	.byte	W12
	.byte		N06	
	.byte	W06
	.byte			Gs2, v112
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			As2
	.byte	W06
	.byte		N04	, Cn3
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte			Bn2
	.byte	W04
	.byte		N06	, As2
	.byte	W06
	.byte		N12	, Ds2, v120
	.byte	W06
	.byte	W12
	.byte		N18	
	.byte	W18
	.byte	FINE

	@********************** Track  3 **********************@

	.global song096_3
song096_3:	@ 0x082AE75E
	.byte	KEYSH	, 0
	.byte	VOICE	, 127
	.byte	VOL	, v077
	.byte	PAN	, c_v
	.byte	W24
	.byte		N12	, Cs2, v120
	.byte	W12
	.byte		N06	, Dn1, v060
	.byte	W06
	.byte		N12	, Ds1, v072
	.byte	W12
	.byte		N06	, Dn1, v060
	.byte	W06
	.byte		N18	, Fs2, v120
	.byte	W60
	.byte		N12	, Gn2
	.byte	W12
	.byte		N06	, Dn1, v060
	.byte	W06
	.byte		N12	, Ds1, v072
	.byte	W12
	.byte		N06	, Dn1, v060
	.byte	W06
	.byte		N18	, Cs2, v120
	.byte	W18
	.byte		N06	, Dn1, v060
	.byte	W06
	.byte			Ds1, v072
	.byte	W06
	.byte			Dn1, v060
	.byte	W30
	.byte		N18	, Cs2, v120
	.byte	W12
	.byte		N06	, Dn1, v060
	.byte	W06
	.byte		N12	, Ds1, v072
	.byte	W12
	.byte		N06	, Dn1, v060
	.byte	W06
	.byte		N18	, Fs2, v120
	.byte	W54
	.byte			Gn2
	.byte	W06
	.byte	W12
	.byte		N24	, Cs2
	.byte	W24
	.byte	FINE

	@********************** Track  4 **********************@

	.global song096_4
song096_4:	@ 0x082AE7B3
	.byte	KEYSH	, 0
	.byte	VOICE	, 115
	.byte	VOL	, v046
	.byte	W24
	.byte		N18	, Dn4, v112
	.byte	W18
	.byte		N06	, An3
	.byte	W18
	.byte		N42	, En3
	.byte	W60
	.byte		N18	, An3
	.byte	W18
	.byte		N06	, Dn4
	.byte	W18
	.byte		N42	, En4
	.byte	W60
	.byte		N15	, Fn4
	.byte	W18
	.byte		N06	
	.byte	W18
	.byte		N18	, Gn4
	.byte	W18
	.byte		N06	, Gn3
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte		N15	, An4
	.byte	W06
	.byte	W12
	.byte		N24	
	.byte	W24
	.byte	FINE

	@********************** Track  5 **********************@

	.global song096_5
song096_5:	@ 0x082AE7E9
	.byte	KEYSH	, 0
	.byte	VOICE	, 1
	.byte	VOL	, v063
	.byte	PAN	, c_v-30
	.byte	MOD	, 2
	.byte	W24
	.byte		N18	, Dn4, v100
	.byte	W18
	.byte		N06	, An3
	.byte	W18
	.byte		N18	, En3
	.byte	W18
	.byte		N03	, Cn3, v080
	.byte	W03
	.byte			En3
	.byte	W03
	.byte			Bn3
	.byte	W03
	.byte			En3
	.byte	W03
	.byte			En4
	.byte	W03
	.byte			Cn4
	.byte	W03
	.byte			Cn5
	.byte	W03
	.byte			Gn4
	.byte	W03
	.byte			Cn5
	.byte	W03
	.byte			Dn4
	.byte	W03
	.byte			Gn4
	.byte	W03
	.byte			Gn3
	.byte	W03
	.byte			Cn4
	.byte	W03
	.byte			Cn3
	.byte	W03
	.byte		N18	, An3, v100
	.byte	W18
	.byte		N06	, Dn4
	.byte	W18
	.byte		N18	, En4
	.byte	W18
	.byte		N03	, An3, v080
	.byte	W03
	.byte			En3
	.byte	W03
	.byte			Dn4
	.byte	W03
	.byte			An3
	.byte	W03
	.byte			An4
	.byte	W03
	.byte			En4
	.byte	W03
	.byte			En5
	.byte	W03
	.byte			Fs4
	.byte	W03
	.byte			Cs5
	.byte	W03
	.byte			Cs4
	.byte	W03
	.byte			En4
	.byte	W03
	.byte			Fs3
	.byte	W03
	.byte			Cs4
	.byte	W03
	.byte			Cs3
	.byte	W03
	.byte			Fn4
	.byte	W03
	.byte			Fn3
	.byte	W03
	.byte			An3
	.byte	W03
	.byte			Fn3
	.byte	W03
	.byte			Fn4
	.byte	W06
	.byte		N06	, Fn4, v100
	.byte	W18
	.byte		N18	, Gn4
	.byte	W18
	.byte		N03	, Gn2, v080
	.byte	W03
	.byte			Gn3
	.byte	W03
	.byte			Bn2
	.byte	W03
	.byte			Bn3
	.byte	W03
	.byte			Dn3
	.byte	W03
	.byte			Dn4
	.byte	W03
	.byte			En3
	.byte	W03
	.byte			En4
	.byte	W03
	.byte			Fn3
	.byte	W03
	.byte			Fn4
	.byte	W03
	.byte			Gn3
	.byte	W03
	.byte			Gn4
	.byte	W03
	.byte		N09	, An4
	.byte	W06
	.byte	W12
	.byte		N30	, An4, v100
	.byte	W30
	.byte	FINE

	@********************** Track  6 **********************@

	.global song096_6
song096_6:	@ 0x082AE878
	.byte	KEYSH	, 0
	.byte	VOICE	, 12
	.byte	VOL	, v063
	.byte	PAN	, c_v+30
	.byte	MOD	, 0
	.byte	W24
	.byte		N18	, Fs3, v100
	.byte	W18
	.byte		N06	
	.byte	W18
	.byte		N18	, Cn3
	.byte	W18
	.byte		N03	, En3, v080
	.byte	W03
	.byte			Gn3
	.byte	W03
	.byte			Dn3
	.byte	W03
	.byte			Cn4
	.byte	W03
	.byte			Gn3
	.byte	W03
	.byte			Gn4
	.byte	W03
	.byte			En4
	.byte	W03
	.byte			En5
	.byte	W03
	.byte			En4
	.byte	W03
	.byte			Bn4
	.byte	W03
	.byte			Cn4
	.byte	W03
	.byte			En4
	.byte	W03
	.byte			En3
	.byte	W03
	.byte			Gn3
	.byte	W03
	.byte		N18	, Dn3, v100
	.byte	W18
	.byte		N06	, Fs3
	.byte	W18
	.byte		N18	, An3
	.byte	W18
	.byte		N03	, Cs3, v080
	.byte	W03
	.byte			Cs4
	.byte	W03
	.byte			Fs3
	.byte	W03
	.byte			En4
	.byte	W03
	.byte			Cs4
	.byte	W03
	.byte			Cs5
	.byte	W03
	.byte			An4
	.byte	W03
	.byte			Dn5
	.byte	W03
	.byte			En4
	.byte	W03
	.byte			An4
	.byte	W03
	.byte			An3
	.byte	W03
	.byte			Dn4
	.byte	W03
	.byte			En3
	.byte	W03
	.byte			An3
	.byte	W03
	.byte		N03	
	.byte	W03
	.byte			Cn4
	.byte	W03
	.byte			Cn3
	.byte	W03
	.byte			Cn4
	.byte	W03
	.byte			An3
	.byte	W06
	.byte		N06	, An3, v100
	.byte	W18
	.byte		N18	, Bn3
	.byte	W18
	.byte		N03	, Bn4, v080
	.byte	W03
	.byte			Fs5
	.byte	W03
	.byte			Gn4
	.byte	W03
	.byte			Bn4
	.byte	W03
	.byte			Fs4
	.byte	W03
	.byte			An4
	.byte	W03
	.byte			En4
	.byte	W03
	.byte			Gn4
	.byte	W03
	.byte			Cn4
	.byte	W03
	.byte			Fn4
	.byte	W03
	.byte			Bn3
	.byte	W03
	.byte			Dn4
	.byte	W03
	.byte		N09	, An3
	.byte	W06
	.byte	W12
	.byte		N30	, An3, v100
	.byte	W30
	.byte	FINE

	@********************** Track  7 **********************@

	.global song096_7
song096_7:	@ 0x082AE906
	.byte	KEYSH	, 0
	.byte	VOICE	, 74
	.byte	VOL	, v056
	.byte	BENDR	, 4
	.byte	PAN	, c_v+30
	.byte	W24
	.byte		N18	, Dn3, v112
	.byte	W18
	.byte		N06	, An2
	.byte	W18
	.byte		N48	, En2
	.byte	W60
	.byte		N18	, An2
	.byte	W18
	.byte		N06	, Dn3
	.byte	W18
	.byte		N48	, En3
	.byte	W60
	.byte		N15	, Fn3
	.byte	W18
	.byte		N06	
	.byte	W18
	.byte		N18	, Gn3
	.byte	W18
	.byte		N06	, Gn2
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			En3
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte		N15	, An3
	.byte	W06
	.byte	W12
	.byte		N30	
	.byte	W30
	.byte	FINE

	@********************** Track  8 **********************@

	.global song096_8
song096_8:	@ 0x082AE940
	.byte	KEYSH	, 0
	.byte	VOICE	, 74
	.byte	VOL	, v056
	.byte	BENDR	, 4
	.byte	PAN	, c_v-30
	.byte	W24
	.byte		N18	, Fs2, v112
	.byte	W18
	.byte		N06	
	.byte	W18
	.byte		N48	, Cn2
	.byte	W60
	.byte		N18	, Dn2
	.byte	W18
	.byte		N06	, Fs2
	.byte	W18
	.byte		N48	, An2
	.byte	W60
	.byte		N15	
	.byte	W18
	.byte		N06	
	.byte	W18
	.byte		N18	, Bn2
	.byte	W18
	.byte		N06	, Bn1
	.byte	W06
	.byte			Dn2
	.byte	W06
	.byte			Fs2
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte		N15	, An2
	.byte	W06
	.byte	W12
	.byte		N30	
	.byte	W30
	.byte	FINE

	@********************** Track  9 **********************@

	.global song096_9
song096_9:	@ 0x082AE978
	.byte	KEYSH	, 0
	.byte	VOICE	, 80
	.byte	VOL	, v077
	.byte	PAN	, c_v
	.byte	W08
	.byte		N02	, En1, v092
	.byte		N04	, Fn1, v100
	.byte	W03
	.byte		N03	, Gn1, v076
	.byte	W02
	.byte		N02	, An1, v096
	.byte	W02
	.byte			Bn1, v104
	.byte	W01
	.byte			Cn2, v108
	.byte	W01
	.byte			Dn2, v116
	.byte	W02
	.byte			En2
	.byte	W01
	.byte			Fn2
	.byte	W02
	.byte			Gn2, v108
	.byte	W02
	.byte		N18	, An2, v112
	.byte	W18
	.byte		N09	
	.byte	W18
	.byte		N48	, Gn2
	.byte	W60
	.byte		N18	, An2
	.byte	W18
	.byte		N09	
	.byte	W18
	.byte		N60	, En3
	.byte	W60
	.byte		N18	, Cn3
	.byte	W18
	.byte		N09	
	.byte	W18
	.byte		N30	, Dn3
	.byte	W32
	.byte	W03
	.byte		N02	, Cn2, v092
	.byte		N04	, Cs2, v100
	.byte	W03
	.byte		N03	, Ds2, v076
	.byte	W02
	.byte		N02	, Fn2, v096
	.byte	W02
	.byte			Gn2, v104
	.byte	W01
	.byte			Gs2, v108
	.byte	W01
	.byte			As2, v116
	.byte	W02
	.byte			Cn3
	.byte	W01
	.byte			Cs3
	.byte	W02
	.byte			Ds3, v108
	.byte	W05
	.byte		N12	, En3, v112
	.byte	W06
	.byte	W12
	.byte		N12	
	.byte	W11
	.byte		N05	, Dn3, v052
	.byte	W05
	.byte		N03	, Cn3, v072
	.byte	W02
	.byte		N02	, Bn2, v080
	.byte	W02
	.byte			An2, v088
	.byte	W02
	.byte			Gn2, v080
	.byte	W02
	.byte			Fs2, v088
	.byte	W02
	.byte			En2
	.byte	W02
	.byte			Dn2
	.byte	W01
	.byte			Cn2, v096
	.byte	W02
	.byte			Bn1
	.byte	W01
	.byte			An1, v092
	.byte	W02
	.byte			Gn1, v088
	.byte	W01
	.byte			Fs1, v084
	.byte	W02
	.byte			En1, v076
	.byte	W02
	.byte		N01	, Dn1, v068
	.byte	W01
	.byte	FINE
    
	mAlignWord
	.global song096
song096:	@ 0x082AEA10
	.byte	9		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	.word	voicegroup023		@ voicegroup/tone

	.word	song096_1		@ track
	.word	song096_2		@ track
	.word	song096_3		@ track
	.word	song096_4		@ track
	.word	song096_5		@ track
	.word	song096_6		@ track
	.word	song096_7		@ track
	.word	song096_8		@ track
	.word	song096_9		@ track

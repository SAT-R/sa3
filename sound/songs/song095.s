	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song095_1
song095_1:	@ 0x082AE500
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 67
	.byte	VOL	, v073
	.byte	PAN	, c_v
	.byte	W24
	.byte		N15	, Dn2, v120
	.byte	W18
	.byte		N06	
	.byte	W18
	.byte		N12	, Gn2
	.byte	W18
	.byte		N18	, Fs2
	.byte	W18
	.byte		N06	, Fn2
	.byte	W06
	.byte			En2
	.byte	W12
	.byte		N18	, Dn2
	.byte	W06
	.byte	W96
	.byte	FINE

	@********************** Track  2 **********************@

	.global song095_2
song095_2:	@ 0x082AE521
	.byte	KEYSH	, 0
	.byte	VOICE	, 127
	.byte	VOL	, v076
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
	.byte			En2
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N04	, An1
	.byte	W04
	.byte			Gs1
	.byte	W04
	.byte			Gn1
	.byte	W04
	.byte		N06	, En2
	.byte	W06
	.byte		N24	, Ds2
	.byte	W06
	.byte	W96
	.byte	FINE

	@********************** Track  3 **********************@

	.global song095_3
song095_3:	@ 0x082AE551
	.byte	KEYSH	, 0
	.byte	VOICE	, 127
	.byte	VOL	, v073
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
	.byte	W18
	.byte		N06	, Dn1, v060
	.byte	W06
	.byte			Ds1, v072
	.byte	W06
	.byte			Dn1, v060
	.byte	W06
	.byte			En1, v072
	.byte	W06
	.byte			Dn1, v060
	.byte	W06
	.byte			Ds1, v072
	.byte	W06
	.byte		N24	, Cs2, v120
	.byte	W06
	.byte	W96
	.byte	FINE

	@********************** Track  4 **********************@

	.global song095_4
song095_4:	@ 0x082AE587
	.byte	VOL	, v085
	.byte	KEYSH	, 0
	.byte	VOICE	, 2
	.byte	PAN	, c_v-30
	.byte	MOD	, 2
	.byte	W24
	.byte		N18	, An4, v112
	.byte	W18
	.byte		N09	, Gn4
	.byte	W18
	.byte		N18	, Bn4
	.byte	W18
	.byte		N09	, An4
	.byte	W18
	.byte		N06	, Cn5
	.byte	W06
	.byte			Cs5
	.byte	W12
	.byte		N24	, Dn5
	.byte	W06
	.byte	W96
	.byte	FINE

	@********************** Track  5 **********************@

	.global song095_5
song095_5:	@ 0x082AE5A9
	.byte	KEYSH	, 0
	.byte	VOICE	, 12
	.byte	VOL	, v060
	.byte	PAN	, c_v+30
	.byte	MOD	, 0
	.byte	W24
	.byte		N18	, Fs4, v112
	.byte	W18
	.byte		N09	, En4
	.byte	W18
	.byte		N18	, Dn4
	.byte	W18
	.byte		N09	
	.byte	W18
	.byte		N06	, An4
	.byte	W06
	.byte			Gs4
	.byte	W12
	.byte		N24	, Fs4
	.byte	W06
	.byte	W96
	.byte	FINE

	@********************** Track  6 **********************@

	.global song095_6
song095_6:	@ 0x082AE5CA
	.byte	KEYSH	, 0
	.byte	VOICE	, 74
	.byte	VOL	, v053
	.byte	BENDR	, 4
	.byte	PAN	, c_v+30
	.byte	W24
	.byte		N18	, An2, v112
	.byte	W18
	.byte		N09	, Gn2
	.byte	W18
	.byte		N18	, Bn2
	.byte	W18
	.byte		N09	, An2
	.byte	W18
	.byte		N06	, Cn3
	.byte	W06
	.byte			Cs3
	.byte	W12
	.byte		N24	, Dn3
	.byte	W06
	.byte	W96
	.byte	FINE

	@********************** Track  7 **********************@

	.global song095_7
song095_7:	@ 0x082AE5EC
	.byte	KEYSH	, 0
	.byte	VOICE	, 74
	.byte	VOL	, v053
	.byte	BENDR	, 4
	.byte	PAN	, c_v-30
	.byte	W24
	.byte		N18	, Fs2, v112
	.byte	W18
	.byte		N09	, En2
	.byte	W18
	.byte		N18	, Dn2
	.byte	W18
	.byte		N09	
	.byte	W18
	.byte		N06	, An2
	.byte	W06
	.byte			Gs2
	.byte	W12
	.byte		N24	, Fs2
	.byte	W06
	.byte	W96
	.byte	FINE

	@********************** Track  8 **********************@

	.global song095_8
song095_8:	@ 0x082AE60D
	.byte	KEYSH	, 0
	.byte	VOICE	, 80
	.byte	VOL	, v073
	.byte	PAN	, c_v
	.byte	W03
	.byte		N05	, An1, v100
	.byte	W03
	.byte			Bn1, v080
	.byte	W03
	.byte			Cn2, v072
	.byte	W03
	.byte			Dn2, v080
	.byte	W03
	.byte			En2, v072
	.byte	W03
	.byte			Fn2, v080
	.byte	W03
	.byte			Gn2, v072
	.byte	W03
	.byte		N18	, An2, v112
	.byte	W18
	.byte		N09	, Gn2
	.byte	W18
	.byte		N18	, An2
	.byte	W18
	.byte		N09	
	.byte	W18
	.byte		N06	, Dn3
	.byte	W06
	.byte			Gs2
	.byte	W12
	.byte		N12	, An3
	.byte	W06
	.byte	W05
	.byte		N05	, Gn3, v052
	.byte	W05
	.byte		N03	, Fn3, v072
	.byte	W02
	.byte		N02	, En3, v080
	.byte	W02
	.byte			Dn3, v088
	.byte	W02
	.byte			Cn3, v080
	.byte	W02
	.byte			Bn2, v088
	.byte	W02
	.byte			An2
	.byte	W02
	.byte			Gn2
	.byte	W01
	.byte			Fn2, v096
	.byte	W02
	.byte			En2
	.byte	W01
	.byte			Dn2, v092
	.byte	W02
	.byte			Cn2, v088
	.byte	W01
	.byte			Bn1, v084
	.byte	W02
	.byte			An1, v076
	.byte	W02
	.byte		N01	, Gn1, v068
	.byte	W60
	.byte	W03
	.byte	FINE

	.align 2
	.global song095
song095:	@ 0x082AE674
	.byte	8		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

	.word	voicegroup023		@ voicegroup/tone

	.word	song095_1		@ track
	.word	song095_2		@ track
	.word	song095_3		@ track
	.word	song095_4		@ track
	.word	song095_5		@ track
	.word	song095_6		@ track
	.word	song095_7		@ track
	.word	song095_8		@ track

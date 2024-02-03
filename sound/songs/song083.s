	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song083_1
song083_1:	@ 0x082AC7AC
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 127
	.byte	BENDR	, 127
	.byte	VOL	, v125
	.byte	PAN	, c_v
	.byte		N08	, Cn1, v120
	.byte		N48	, Cn2
	.byte	W44
	.byte	W02
	.byte	VOL	, v000
	.byte	W01
	.byte		v002
	.byte	W01
	.byte		v005
	.byte		N48	, Bn1
	.byte	W01
	.byte	VOL	, v007
	.byte	W01
	.byte		v010
	.byte	W01
	.byte		v012
	.byte	W01
	.byte		v015
	.byte	W01
	.byte		v018
	.byte	W01
	.byte		v020
	.byte	W01
	.byte		v023
	.byte	W01
	.byte		v025
	.byte	W01
	.byte		v028
	.byte	W01
	.byte		v030
	.byte	W01
	.byte		v033
	.byte	W01
	.byte		v035
	.byte	W01
	.byte		v038
	.byte	W01
	.byte		v040
	.byte	W01
	.byte		v043
	.byte	W01
	.byte		v045
	.byte	W01
	.byte		v048
	.byte	W01
	.byte		v051
	.byte	W01
	.byte		v053
	.byte	W01
	.byte		v056
	.byte	W01
	.byte		v058
	.byte	W01
	.byte		v061
	.byte	W01
	.byte		v062
	.byte	W01
	.byte		v065
	.byte	W01
	.byte		v067
	.byte	W01
	.byte		v070
	.byte	W01
	.byte		v072
	.byte	W01
	.byte		v075
	.byte	W01
	.byte		v078
	.byte	W01
	.byte		v080
	.byte	W01
	.byte		v083
	.byte	W01
	.byte		v085
	.byte	W01
	.byte		v088
	.byte	W01
	.byte		v090
	.byte	W01
	.byte		v093
	.byte	W01
	.byte		v095
	.byte	W01
	.byte		v098
	.byte	W01
	.byte		v100
	.byte	W01
	.byte		v103
	.byte	W01
	.byte		v105
	.byte	W01
	.byte		v108
	.byte	W01
	.byte		v111
	.byte	W01
	.byte		v113
	.byte	W01
	.byte		v116
	.byte	W01
	.byte		v118
	.byte	W01
	.byte		v121
	.byte	W01
	.byte		v123
	.byte	W01
	.byte	W16
	.byte		N04	, As1
	.byte	W04
	.byte		N04	
	.byte	W20
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N48	, Cn2
	.byte	W48
	.byte	FINE

	@********************** Track  2 **********************@

	.global song083_2
song083_2:	@ 0x082AC835
	.byte	KEYSH	, 0
	.byte	VOICE	, 74
	.byte	BENDR	, 0
	.byte	PAN	, c_v
	.byte	VOL	, v059
	.byte	W12
	.byte		N06	, An2, v127
	.byte		N06	, Dn3
	.byte	W06
	.byte			An2
	.byte		N06	, Dn3
	.byte	W06
	.byte			Dn3, v120
	.byte		N06	, Fs3
	.byte	W06
	.byte		N06	
	.byte		N06	, An3
	.byte	W06
	.byte			An3, v124
	.byte		N06	, Dn4
	.byte	W12
	.byte		N18	, An3, v120
	.byte		N18	, Cn4
	.byte	W18
	.byte			Gn3, v124
	.byte		N18	, Bn3
	.byte	W18
	.byte		N11	, En3
	.byte		N11	, Gn3
	.byte	W12
	.byte		N48	, Fs3, v120
	.byte		N48	, An3
	.byte	W48
	.byte	FINE

	@********************** Track  3 **********************@

	.global song083_3
song083_3:	@ 0x082AC86F
	.byte	KEYSH	, 0
	.byte	VOICE	, 80
	.byte	BENDR	, 0
	.byte	PAN	, c_v
	.byte	VOL	, v078
	.byte		N12	, An2, v127
	.byte	W48
	.byte		N18	, Gn3
	.byte	W18
	.byte			Dn3
	.byte	W18
	.byte		N11	, Gn2
	.byte	W12
	.byte		N48	, An2
	.byte	W48
	.byte	FINE

	@********************** Track  4 **********************@

	.global song083_4
song083_4:	@ 0x082AC889
	.byte	KEYSH	, 0
	.byte	VOICE	, 90
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	VOL	, v125
	.byte	LFOS	, 10
	.byte	LFODL	, 0
	.byte	BENDR	, 2
	.byte		N24	, Cn3, v127
	.byte	W84
	.byte		N03	, Gn2
	.byte	W04
	.byte		N03	
	.byte	W04
	.byte		N03	
	.byte	W04
	.byte		N12	, Cn3
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte		N24	, Cn3
	.byte	W24
	.byte	FINE

	.align 2
	.global song083
song083:	@ 0x082AC8B4
	.byte	4		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

	.word	voicegroup019		@ voicegroup/tone

	.word	song083_1		@ track
	.word	song083_2		@ track
	.word	song083_3		@ track
	.word	song083_4		@ track

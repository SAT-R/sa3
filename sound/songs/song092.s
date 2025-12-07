	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song092_1
song092_1:	@ 0x082AE2C8
	.byte	KEYSH	, 0
	.byte	TEMPO	, 90
	.byte	VOICE	, 127
	.byte	VOL	, v075
	.byte	PAN	, c_v
	.byte		N68	, As4, v104
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
	.byte			Gn7
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte		N68	, As4, v104
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
	.byte		N92	, As4, v104
	.byte		N22	, Gn7, v127
	.byte	W36
	.byte			Gn7, v112
	.byte	W12
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte		N22	, Gn7, v116
	.byte	W24
	.byte		N04	, Ds4, v080
	.byte		N22	, Gn7, v116
	.byte	W06
	.byte		N04	, Ds4, v080
	.byte	W06
	.byte			Ds4, v084
	.byte	W06
	.byte			Ds4, v088
	.byte	W06
	.byte			Ds4, v092
	.byte		N22	, Gn7, v127
	.byte	W06
	.byte		N04	, Ds4, v100
	.byte	W06
	.byte			Ds4, v108
	.byte	W06
	.byte			Ds4, v120
	.byte	W06
	.byte		N22	, Ds4, v127
	.byte		N10	, Gn7
	.byte	W23
	.byte	FINE

	@********************** Track  2 **********************@

	.global song092_2
song092_2:	@ 0x082AE335
	.byte	KEYSH	, 0
	.byte	VOICE	, 82
	.byte	VOL	, v075
	.byte	PAN	, c_v
	.byte		N17	, Cn4, v127
	.byte	W36
	.byte		N32	
	.byte	W36
	.byte		N12	, As3
	.byte	W12
	.byte		N06	, Fn3
	.byte	W12
	.byte			As3
	.byte	W12
	.byte		N12	, Dn4
	.byte	W12
	.byte		N24	, Cn4
	.byte	W24
	.byte	W12
	.byte		N24	
	.byte	W36
	.byte		TIE	, As3
	.byte	W48
	.byte	W90
	.byte		EOT	
	.byte	W06
	.byte		N20	, Cn4
	.byte	W23
	.byte	FINE

	@********************** Track  3 **********************@

	.global song092_3
song092_3:	@ 0x082AE35E
	.byte	KEYSH	, 0
	.byte	VOICE	, 80
	.byte	VOL	, v075
	.byte	PAN	, c_v
	.byte		N17	, En3, v127
	.byte	W36
	.byte		N32	
	.byte	W36
	.byte		N22	, Dn3
	.byte	W24
	.byte		N18	, Gn3
	.byte	W23
	.byte	VOICE	, 77
	.byte	W01
	.byte		N18	
	.byte	W24
	.byte	W12
	.byte		N30	
	.byte	W32
	.byte	W03
	.byte	VOICE	, 79
	.byte	W01
	.byte		N68	, Fs3, v104
	.byte	W48
	.byte	W23
	.byte	VOICE	, 80
	.byte	W01
	.byte		N68	, As3, v116
	.byte	W68
	.byte	W03
	.byte	VOICE	, 77
	.byte	W01
	.byte		N21	, Gn3
	.byte	W23
	.byte	FINE

	@********************** Track  4 **********************@

	.global song092_4
song092_4:	@ 0x082AE392
	.byte	KEYSH	, 0
	.byte	VOICE	, 49
	.byte	VOL	, v075
	.byte	PAN	, c_v
	.byte		N11	, Gn1, v127
	.byte	W12
	.byte			Gn1, v088
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte			Gn2, v127
	.byte	W12
	.byte			Gn2, v088
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte			As2, v127
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte			As2
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte		N23	, Gs1
	.byte	W12
	.byte	W12
	.byte			Cs2
	.byte	W24
	.byte		N11	, Cs3
	.byte	W12
	.byte		N23	, Fs2
	.byte	W24
	.byte		N68	, Fs1
	.byte	W24
	.byte	W48
	.byte		N23	, As1
	.byte	W24
	.byte			Cs2
	.byte	W24
	.byte			Cn2
	.byte	W23
	.byte	FINE

	@********************** Track  5 **********************@

	.global song092_5
song092_5:	@ 0x082AE3CE
	.byte	KEYSH	, 0
	.byte	VOICE	, 4
	.byte	LFOS	, 39
	.byte	MOD	, 0
	.byte	VOL	, v041
	.byte	PAN	, c_v+63
	.byte	BEND	, c_v
	.byte		N04	, Fs5, v127
	.byte	W03
	.byte		N10	, Gn5
	.byte	W32
	.byte	W01
	.byte	MOD	, 14
	.byte		N30	
	.byte	W36
	.byte	MOD	, 0
	.byte		N13	, Fn5
	.byte	W12
	.byte		N07	, Dn5
	.byte	W12
	.byte			Fn5
	.byte	W12
	.byte			As5
	.byte	W12
	.byte		N22	, Gn5
	.byte	W24
	.byte	W12
	.byte		N22	
	.byte	W12
	.byte	MOD	, 20
	.byte	W23
	.byte		0
	.byte	LFOS	, 39
	.byte	W01
	.byte		N68	, Fn5
	.byte	W24
	.byte	MOD	, 14
	.byte	W24
	.byte		0
	.byte	W24
	.byte		N04	, Fn4
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			As4
	.byte	W06
	.byte			Cs5
	.byte	W06
	.byte			As4
	.byte	W06
	.byte			Cs5
	.byte	W06
	.byte			Fn5
	.byte	W06
	.byte			Fs5
	.byte	W06
	.byte			Cs5
	.byte	W06
	.byte			Fs5
	.byte	W06
	.byte			As5
	.byte	W06
	.byte			Cs6
	.byte	W06
	.byte		N16	, Cn6
	.byte	W23
	.byte	FINE

	@********************** Track  6 **********************@

	.global song092_6
song092_6:	@ 0x082AE426
	.byte	KEYSH	, 0
	.byte	VOICE	, 56
	.byte	MOD	, 0
	.byte	VOL	, v041
	.byte	LFOS	, 39
	.byte	PAN	, c_v-64
	.byte	BEND	, c_v
	.byte		N04	, Ds5, v127
	.byte	W03
	.byte		N10	, En5
	.byte	W32
	.byte	W01
	.byte	MOD	, 14
	.byte		N30	
	.byte	W36
	.byte	MOD	, 0
	.byte		N13	, Dn5
	.byte	W12
	.byte		N07	, As4
	.byte	W12
	.byte			Dn5
	.byte	W12
	.byte			Fn5
	.byte	W12
	.byte		N22	, Ds5
	.byte	W24
	.byte	W12
	.byte			Cn5
	.byte	W12
	.byte	MOD	, 20
	.byte	W23
	.byte		0
	.byte	LFOS	, 39
	.byte	W01
	.byte		N68	, Cs5
	.byte	W24
	.byte	MOD	, 14
	.byte	W24
	.byte		0
	.byte	W24
	.byte	W01
	.byte		N04	, Cs4
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			As4
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			As4
	.byte	W06
	.byte			Cs5
	.byte	W06
	.byte			Ds5
	.byte	W06
	.byte			As4
	.byte	W06
	.byte			Ds5
	.byte	W06
	.byte			Fs5
	.byte	W06
	.byte			As5
	.byte	W05
	.byte	W01
	.byte		N16	, Gn5
	.byte	W22
	.byte	FINE

	@********************** Track  7 **********************@

	.global song092_7
song092_7:	@ 0x082AE480
	.byte	KEYSH	, 0
	.byte	VOICE	, 89
	.byte	VOL	, v047
	.byte	PAN	, c_v
	.byte	W12
	.byte		N06	, Cn5, v096
	.byte	W24
	.byte		N06	
	.byte	W24
	.byte		N06	
	.byte	W12
	.byte	W12
	.byte		N06	
	.byte	W24
	.byte		N06	
	.byte	W24
	.byte		N06	
	.byte	W12
	.byte	W12
	.byte		N06	
	.byte	W24
	.byte		N06	
	.byte	W60
	.byte	W48
	.byte		N05	, Cn5, v084
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Cn5, v092
	.byte	W06
	.byte			Cn5, v096
	.byte	W06
	.byte			Cn5, v100
	.byte	W06
	.byte			Cn5, v108
	.byte	W06
	.byte			Cn5, v112
	.byte	W06
	.byte			Cn5, v120
	.byte	W06
	.byte		N06	, Cn5, v124
	.byte	W23
	.byte	FINE

	@********************** Track  8 **********************@

	.global song092_8
song092_8:	@ 0x082AE4BB
	.byte	KEYSH	, 0
	.byte	VOICE	, 91
	.byte	VOL	, v041
	.byte	PAN	, c_v
	.byte		N11	, Cn6, v096
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N11	
	.byte	W72
	.byte	W96
	.byte	W23
	.byte	FINE
    
	mAlignWord
	.global song092
song092:	@ 0x082AE4D8
	.byte	8		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	mPtr	voicegroup016		@ voicegroup/tone

	mPtr	song092_1		@ track
	mPtr	song092_2		@ track
	mPtr	song092_3		@ track
	mPtr	song092_4		@ track
	mPtr	song092_5		@ track
	mPtr	song092_6		@ track
	mPtr	song092_7		@ track
	mPtr	song092_8		@ track

	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song060_1
song060_1:	@ 0x08299A24
	.byte	KEYSH	, 0
	.byte	TEMPO	, 85
	.byte	VOICE	, 127
	.byte	VOL	, v085
	.byte	PAN	, c_v
	.byte	W03
	.byte	TEMPO	, 85
	.byte		N72	, As4, v124
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W24
	.byte		N09	, En4
	.byte		N09	, En5
	.byte	W12
	.byte			En4
	.byte		N09	, En5
	.byte	W12
	.byte			En4
	.byte		N09	, En5
	.byte	W12
	.byte			En4
	.byte		N09	, En5
	.byte	W12
song060_1_3:
	.byte		N32	, As4, v124
	.byte		N18	, Gn7
	.byte	W24
	.byte		N06	
	.byte	W12
	.byte		N12	, En4
	.byte		N12	, En5
	.byte	W24
	.byte		N06	, Gs7
	.byte	W12
	.byte	PEND
song060_1_2:
	.byte		N18	, Gn7, v124
	.byte	W24
	.byte		N06	
	.byte	W12
	.byte		N11	, En4
	.byte		N11	, En5
	.byte	W12
	.byte		N23	, Gn7
	.byte	W24
	.byte	PEND
song060_1_1:
	.byte		N18	, Gn7, v124
	.byte	W24
	.byte		N06	
	.byte	W12
	.byte		N12	, En4
	.byte		N12	, En5
	.byte	W24
	.byte		N06	, Gs7
	.byte	W12
	.byte	PEND
song060_1_4:
	.byte		N18	, Gn7, v124
	.byte	W24
	.byte		N06	
	.byte	W12
	.byte		N11	, En4
	.byte		N11	, En5
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte		N05	, En4
	.byte		N05	, En5
	.byte	W06
	.byte			En4
	.byte		N05	, En5
	.byte	W06
	.byte	PEND
	.byte	PATT	
		mPtr	song060_1_1
	.byte	PATT	
		mPtr	song060_1_2
	.byte	PATT	
		mPtr	song060_1_1
song060_1_5:
	.byte		N12	, Gn7, v124
	.byte	W12
	.byte		N11	, En4
	.byte		N11	, En5
	.byte	W12
	.byte		N06	, Gn7
	.byte	W12
	.byte		N11	, En4
	.byte		N11	, En5
	.byte	W12
	.byte		N05	, Gn7
	.byte	W06
	.byte			En4
	.byte		N05	, En5
	.byte	W06
	.byte			En4
	.byte		N05	, En5
	.byte	W06
	.byte			En4
	.byte		N05	, En5
	.byte	W06
	.byte	PEND
	.byte	PATT	
		mPtr	song060_1_3
	.byte	PATT	
		mPtr	song060_1_2
	.byte	PATT	
		mPtr	song060_1_1
	.byte	PATT	
		mPtr	song060_1_4
	.byte	PATT	
		mPtr	song060_1_1
	.byte	PATT	
		mPtr	song060_1_2
	.byte	PATT	
		mPtr	song060_1_1
	.byte	PATT	
		mPtr	song060_1_5
song060_1_7:
	.byte		N44	, As4, v124
	.byte		N16	, Gn7
	.byte	W24
	.byte		N16	
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte	PEND
song060_1_6:
	.byte		N16	, Gn7, v124
	.byte	W24
	.byte		N15	
	.byte	W24
	.byte		N20	
	.byte	W24
	.byte	PEND
	.byte	PATT	
		mPtr	song060_1_6
	.byte	PATT	
		mPtr	song060_1_6
	.byte	PATT	
		mPtr	song060_1_6
	.byte	PATT	
		mPtr	song060_1_6
	.byte	PATT	
		mPtr	song060_1_6
song060_1_8:
	.byte		N12	, Gn7, v124
	.byte	W12
	.byte		N11	, En4
	.byte	W12
	.byte		N06	, Gn7
	.byte	W12
	.byte		N11	, En4
	.byte	W12
	.byte		N05	, Gn7
	.byte	W06
	.byte			En4
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte	PEND
	.byte	PATT	
		mPtr	song060_1_7
	.byte	PATT	
		mPtr	song060_1_6
	.byte	PATT	
		mPtr	song060_1_6
	.byte	PATT	
		mPtr	song060_1_6
	.byte	PATT	
		mPtr	song060_1_6
	.byte	PATT	
		mPtr	song060_1_6
	.byte	PATT	
		mPtr	song060_1_6
	.byte	PATT	
		mPtr	song060_1_8
	.byte	PATT	
		mPtr	song060_1_7
	.byte	PATT	
		mPtr	song060_1_6
	.byte	PATT	
		mPtr	song060_1_6
	.byte	PATT	
		mPtr	song060_1_6
	.byte	PATT	
		mPtr	song060_1_6
	.byte	PATT	
		mPtr	song060_1_6
	.byte	PATT	
		mPtr	song060_1_6
	.byte	PATT	
		mPtr	song060_1_8
	.byte	PATT	
		mPtr	song060_1_7
	.byte	PATT	
		mPtr	song060_1_6
	.byte	PATT	
		mPtr	song060_1_6
	.byte	PATT	
		mPtr	song060_1_6
	.byte	PATT	
		mPtr	song060_1_6
	.byte	PATT	
		mPtr	song060_1_6
	.byte	PATT	
		mPtr	song060_1_6
	.byte	PATT	
		mPtr	song060_1_8
	.byte	PATT	
		mPtr	song060_1_3
	.byte	PATT	
		mPtr	song060_1_2
	.byte	PATT	
		mPtr	song060_1_1
	.byte	PATT	
		mPtr	song060_1_4
	.byte	PATT	
		mPtr	song060_1_1
	.byte	PATT	
		mPtr	song060_1_2
	.byte	PATT	
		mPtr	song060_1_1
	.byte	PATT	
		mPtr	song060_1_5
	.byte	GOTO	
		mPtr	song060_1_3
	.byte		N32	, As4, v124
	.byte		N18	, Gn7
	.byte	W24
	.byte		N06	
	.byte	W12
	.byte		N12	, En4
	.byte		N12	, En5
	.byte	W24
	.byte		N06	, Gs7
	.byte	W06
	.byte	FINE

	@********************** Track  2 **********************@

	.global song060_2
song060_2:	@ 0x08299BE5
	.byte	KEYSH	, 0
	.byte	VOICE	, 6
	.byte	VOL	, v085
	.byte	PAN	, c_v-30
	.byte	TUNE	, c_v+3
	.byte	BENDR	, 12
	.byte	W03
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
song060_2_2:
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W01
	.byte	BEND	, c_v-4
	.byte	W24
	.byte		c_v-4
	.byte		TIE	, Gn3, v080
	.byte	W06
	.byte	BEND	, c_v-3
	.byte	W06
	.byte		c_v-2
	.byte	W03
	.byte		c_v-1
	.byte	W01
	.byte		c_v
	.byte	W30
	.byte	W01
song060_2_1:
	.byte	W68
	.byte	W01
	.byte	BEND	, c_v
	.byte	W01
	.byte		c_v+5
	.byte	W02
	.byte	PEND
	.byte		c_v+11
	.byte	W01
	.byte		c_v+16
	.byte	W02
	.byte		c_v+22
	.byte	W01
	.byte		c_v+27
	.byte	W24
	.byte	W03
	.byte		c_v+27
	.byte	W01
	.byte		c_v+22
	.byte	W02
	.byte		c_v+16
	.byte	W01
	.byte		c_v+11
	.byte	W02
	.byte		c_v+2
	.byte	W01
	.byte		c_v
	.byte	W32
	.byte	W02
	.byte	W44
	.byte	W02
	.byte		c_v
	.byte	W02
	.byte		c_v+2
	.byte	W01
	.byte		c_v+5
	.byte	W02
	.byte		c_v+8
	.byte	W01
	.byte		c_v+11
	.byte	W18
	.byte		c_v+11
	.byte	W02
	.byte		c_v+15
	.byte	W01
	.byte		c_v+20
	.byte	W02
	.byte		c_v+24
	.byte	W01
	.byte		c_v+29
	.byte	W02
	.byte		c_v+34
	.byte	W01
	.byte		c_v+38
	.byte	W02
	.byte		c_v+43
	.byte	W01
	.byte		c_v+48
	.byte	W60
	.byte	W02
	.byte	W68
	.byte	W01
	.byte		c_v+48
	.byte	W01
	.byte		c_v+45
	.byte	W02
	.byte		c_v+42
	.byte	W01
	.byte		c_v+39
	.byte	W02
	.byte		c_v+35
	.byte	W01
	.byte		c_v+32
	.byte	W02
	.byte		c_v+29
	.byte	W01
	.byte		c_v+25
	.byte	W02
	.byte		c_v+22
	.byte	W01
	.byte		c_v+15
	.byte	W01
	.byte		c_v+13
	.byte	W03
	.byte		c_v+5
	.byte	W56
	.byte	W02
	.byte	W24
	.byte		EOT	, Gn3
	.byte	W01
	.byte		N06	, Gn3, v052
	.byte	W12
	.byte			Gn3, v032
	.byte	W12
	.byte			Gn3, v012
	.byte	W12
	.byte			Gn3, v004
	.byte	W11
	.byte	BEND	, c_v+11
	.byte	W01
	.byte		c_v-4
	.byte	W24
	.byte		c_v-4
	.byte		TIE	, Gn3, v080
	.byte	W06
	.byte	BEND	, c_v-3
	.byte	W06
	.byte		c_v-2
	.byte	W03
	.byte		c_v-1
	.byte	W01
	.byte		c_v
	.byte	W30
	.byte	W01
	.byte	PATT	
		mPtr	song060_2_1
	.byte	BEND	, c_v+11
	.byte	W01
	.byte		c_v+16
	.byte	W02
	.byte		c_v+22
	.byte	W01
	.byte		c_v+27
	.byte	W21
	.byte		c_v+27
	.byte	W01
	.byte		c_v+23
	.byte	W02
	.byte		c_v+19
	.byte	W01
	.byte		c_v+15
	.byte	W02
	.byte		c_v+11
	.byte	W01
	.byte		c_v+6
	.byte	W02
	.byte		c_v
	.byte	W36
	.byte	W02
	.byte	W32
	.byte		c_v
	.byte	W01
	.byte		c_v+5
	.byte	W02
	.byte		c_v+10
	.byte	W01
	.byte		c_v+15
	.byte	W01
	.byte		c_v+16
	.byte	W30
	.byte		c_v+16
	.byte	W03
	.byte		c_v+15
	.byte	W02
	.byte	W01
	.byte		c_v+14
	.byte	W03
	.byte		c_v+13
	.byte	W03
	.byte		c_v+11
	.byte	W64
	.byte	W01
	.byte	W72
	.byte	W01
	.byte		EOT	, Gn3
	.byte		N06	, Gn3, v052
	.byte	W12
	.byte			Gn3, v032
	.byte	W12
	.byte			Gn3, v012
	.byte	W12
	.byte			Gn3, v004
	.byte	W12
	.byte		N06	
	.byte	W23
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	GOTO	
		mPtr	song060_2_2
	.byte	FINE

	@********************** Track  3 **********************@

	.global song060_3
song060_3:	@ 0x08299D00
	.byte	KEYSH	, 0
	.byte	VOICE	, 6
	.byte	VOL	, v085
	.byte	PAN	, c_v+30
	.byte	TUNE	, c_v-4
	.byte	BENDR	, 12
	.byte	W03
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
song060_3_3:
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
song060_3_1:
	.byte	BEND	, c_v-4
	.byte	W24
	.byte		c_v-4
	.byte		TIE	, Gn3, v080
	.byte	W06
	.byte	BEND	, c_v-3
	.byte	W06
	.byte		c_v-2
	.byte	W03
	.byte		c_v-1
	.byte	W01
	.byte		c_v
	.byte	W32
	.byte	PEND
song060_3_2:
	.byte	W68
	.byte	BEND	, c_v
	.byte	W01
	.byte		c_v+5
	.byte	W02
	.byte		c_v+11
	.byte	W01
	.byte	PEND
	.byte		c_v+16
	.byte	W02
	.byte		c_v+22
	.byte	W01
	.byte		c_v+27
	.byte	W24
	.byte	W03
	.byte		c_v+27
	.byte	W01
	.byte		c_v+22
	.byte	W02
	.byte		c_v+16
	.byte	W01
	.byte		c_v+11
	.byte	W02
	.byte		c_v+2
	.byte	W01
	.byte		c_v
	.byte	W32
	.byte	W03
	.byte	W44
	.byte	W01
	.byte		c_v
	.byte	W02
	.byte		c_v+2
	.byte	W01
	.byte		c_v+5
	.byte	W02
	.byte		c_v+8
	.byte	W01
	.byte		c_v+11
	.byte	W18
	.byte		c_v+11
	.byte	W02
	.byte		c_v+15
	.byte	W01
	.byte		c_v+20
	.byte	W02
	.byte		c_v+24
	.byte	W01
	.byte		c_v+29
	.byte	W02
	.byte		c_v+34
	.byte	W01
	.byte		c_v+38
	.byte	W02
	.byte		c_v+43
	.byte	W01
	.byte		c_v+48
	.byte	W60
	.byte	W03
	.byte	W68
	.byte		c_v+48
	.byte	W01
	.byte		c_v+45
	.byte	W02
	.byte		c_v+42
	.byte	W01
	.byte		c_v+39
	.byte	W02
	.byte		c_v+35
	.byte	W01
	.byte		c_v+32
	.byte	W02
	.byte		c_v+29
	.byte	W01
	.byte		c_v+25
	.byte	W02
	.byte		c_v+22
	.byte	W01
	.byte		c_v+15
	.byte	W01
	.byte		c_v+13
	.byte	W03
	.byte		c_v+5
	.byte	W56
	.byte	W03
	.byte	W23
	.byte		EOT	, Gn3
	.byte	W01
	.byte		N06	, Gn3, v052
	.byte	W12
	.byte			Gn3, v032
	.byte	W12
	.byte			Gn3, v012
	.byte	W12
	.byte			Gn3, v004
	.byte	W11
	.byte	BEND	, c_v+11
	.byte	W01
	.byte	PATT	
		mPtr	song060_3_1
	.byte	PATT	
		mPtr	song060_3_2
	.byte	BEND	, c_v+16
	.byte	W02
	.byte		c_v+22
	.byte	W01
	.byte		c_v+27
	.byte	W21
	.byte		c_v+27
	.byte	W01
	.byte		c_v+23
	.byte	W02
	.byte		c_v+19
	.byte	W01
	.byte		c_v+15
	.byte	W02
	.byte		c_v+11
	.byte	W01
	.byte		c_v+6
	.byte	W02
	.byte		c_v
	.byte	W36
	.byte	W03
	.byte	W30
	.byte	W01
	.byte		c_v
	.byte	W01
	.byte		c_v+5
	.byte	W02
	.byte		c_v+10
	.byte	W01
	.byte		c_v+15
	.byte	W01
	.byte		c_v+16
	.byte	W30
	.byte		c_v+16
	.byte	W03
	.byte		c_v+15
	.byte	W03
	.byte		c_v+14
	.byte	W03
	.byte		c_v+13
	.byte	W03
	.byte		c_v+11
	.byte	W66
	.byte	W72
	.byte		EOT	, Gn3
	.byte		N06	, Gn3, v052
	.byte	W12
	.byte			Gn3, v032
	.byte	W12
	.byte			Gn3, v012
	.byte	W12
	.byte			Gn3, v004
	.byte	W12
	.byte		N06	
	.byte	W24
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	GOTO	
		mPtr	song060_3_3
	.byte	FINE

	@********************** Track  4 **********************@

	.global song060_4
song060_4:	@ 0x08299E08
	.byte	KEYSH	, 0
	.byte	VOICE	, 63
	.byte	VOL	, v085
	.byte	PAN	, c_v+16
	.byte	BEND	, c_v
	.byte	W03
song060_4_9:
	.byte		TIE	, Cs4, v092
	.byte		TIE	, Cs5, v100
	.byte	W72
	.byte	PEND
	.byte	W68
	.byte	W02
	.byte		EOT	
	.byte	W01
	.byte		EOT	, Cs4
	.byte	W01
song060_4_10:
	.byte		N36	, Fs4, v092
	.byte		N07	, En5, v100
	.byte	W06
	.byte		N28	, Fs5
	.byte	W30
	.byte		N84	, Cs4, v092
	.byte		N80	, Cs5, v100
	.byte	W36
	.byte	PEND
song060_4_11:
	.byte	W48
	.byte		N24	, En4, v092
	.byte		N23	, En5, v100
	.byte	W24
	.byte	PEND
song060_4_12:
	.byte		N32	, Ds4, v092
	.byte		N36	, Ds5, v100
	.byte	W36
	.byte		N80	, As3, v092
	.byte		N84	, As4, v100
	.byte	W36
	.byte	PEND
song060_4_13:
	.byte	W48
	.byte		N23	, Ds4, v092
	.byte		N23	, Ds5, v100
	.byte	W24
	.byte	PEND
song060_4_14:
	.byte		N32	, En4, v092
	.byte		N32	, En5, v100
	.byte	W36
	.byte			Bn3, v092
	.byte		N32	, Bn4, v100
	.byte	W36
	.byte	PEND
song060_4_15:
	.byte		N23	, Cn4, v100
	.byte		N23	, Gs5, v112
	.byte	W24
	.byte			Gs3, v100
	.byte		N23	, Fs5
	.byte	W24
	.byte			Ds3
	.byte		N23	, Ds5, v112
	.byte	W24
	.byte	PEND
song060_4_16:
	.byte		N44	, En4, v120
	.byte	W48
	.byte		N11	, Ds4, v096
	.byte	W12
	.byte			En4, v104
	.byte	W12
	.byte		N23	, Fs4, v108
	.byte	W24
	.byte		N32	, En4, v100
	.byte	W36
	.byte		N11	, Fs4, v104
	.byte	W12
	.byte			Gn4, v100
	.byte	W12
	.byte			An4, v108
	.byte	W12
	.byte		N44	, As4, v104
	.byte	W48
	.byte		N23	, An4, v108
	.byte	W24
	.byte		N32	, Gn4, v100
	.byte	W36
	.byte		N10	, An4, v088
	.byte	W12
	.byte		N44	, As4, v104
	.byte	W48
	.byte		N11	, An4, v088
	.byte	W12
	.byte		N10	, As4
	.byte	W12
	.byte		N44	, Cn5, v096
	.byte	W48
	.byte		N12	, As4, v092
	.byte	W12
	.byte		N11	, Cn5, v104
	.byte	W12
	.byte		N44	, Dn5
	.byte	W48
	.byte		N11	, Cs5, v100
	.byte	W12
	.byte			Dn5, v096
	.byte	W12
	.byte		N68	, En5, v108
	.byte	W72
	.byte		N44	
	.byte	W48
	.byte		N11	, Ds5, v096
	.byte	W12
	.byte			En5, v104
	.byte	W12
	.byte		N23	, Fs5, v108
	.byte	W24
	.byte		N32	, En5, v100
	.byte	W36
	.byte		N11	, Fs5, v104
	.byte	W12
	.byte			Gn5, v100
	.byte	W12
	.byte			An5, v108
	.byte	W12
	.byte		N44	, As5, v104
	.byte	W48
	.byte		N23	, An5, v108
	.byte	W24
	.byte		N32	, Gn5, v100
	.byte	W36
	.byte		N10	, An5, v088
	.byte	W12
	.byte		N44	, As5, v104
	.byte	W48
	.byte		N11	, An5, v088
	.byte	W12
	.byte		N10	, As5
	.byte	W12
	.byte		N44	, Cn6, v096
	.byte	W48
	.byte		N12	, As5, v092
	.byte	W12
	.byte		N11	, Cn6, v104
	.byte	W12
	.byte		N44	, Dn6
	.byte	W48
	.byte		N11	, Cs6, v100
	.byte	W12
	.byte			Dn6, v096
	.byte	W12
	.byte		N68	, En6, v108
	.byte	W72
	.byte		TIE	, Cs5
	.byte	W72
	.byte	W68
	.byte	W02
	.byte		EOT	
	.byte	W02
song060_4_1:
	.byte		N07	, En5, v108
	.byte	W03
	.byte		N36	, Fs5
	.byte	W32
	.byte	W02
	.byte		N80	, Cs5
	.byte	W32
	.byte	W03
	.byte	PEND
	.byte	W48
	.byte		N24	, En5
	.byte	W24
song060_4_2:
	.byte	W01
	.byte		N36	, Ds5, v108
	.byte	W32
	.byte	W02
	.byte		N80	, As4
	.byte	W36
	.byte	W01
	.byte	PEND
song060_4_3:
	.byte	W42
	.byte	W01
	.byte		N24	, Ds5, v108
	.byte	W24
	.byte	W02
	.byte		N36	, Dn5
	.byte	W03
	.byte	PEND
song060_4_4:
	.byte	W32
	.byte	W03
	.byte		N32	, An4, v108
	.byte	W32
	.byte	W02
	.byte		N22	, Dn5
	.byte	W03
	.byte	PEND
song060_4_5:
	.byte	W20
	.byte		N24	, Cs5, v108
	.byte	W24
	.byte	W02
	.byte			Cn5
	.byte	W24
	.byte	W02
	.byte	PEND
	.byte		TIE	, Cs5
	.byte	W72
	.byte	W68
	.byte	W02
	.byte		EOT	
	.byte	W02
	.byte	PATT	
		mPtr	song060_4_1
	.byte	W48
	.byte		N24	, En5, v108
	.byte	W24
	.byte	PATT	
		mPtr	song060_4_2
	.byte	PATT	
		mPtr	song060_4_3
	.byte	PATT	
		mPtr	song060_4_4
	.byte	PATT	
		mPtr	song060_4_5
	.byte		TIE	, Cs5, v116
	.byte	W72
	.byte	W68
	.byte	W02
	.byte		EOT	
	.byte	W02
song060_4_6:
	.byte		N05	, En5, v116
	.byte	W06
	.byte		N28	, Fs5
	.byte	W30
	.byte		N80	, Cs5
	.byte	W36
	.byte	PEND
	.byte	W48
	.byte		N23	, Ds5
	.byte	W24
	.byte		N32	, As5
	.byte	W36
	.byte		N80	
	.byte	W36
	.byte	W48
	.byte		N23	, Ds5
	.byte	W24
song060_4_7:
	.byte		N32	, Dn5, v116
	.byte	W36
	.byte			An4
	.byte	W36
	.byte	PEND
song060_4_8:
	.byte		N23	, Dn5, v116
	.byte	W24
	.byte			Cs5
	.byte	W24
	.byte			Cn5
	.byte	W24
	.byte	PEND
	.byte		TIE	, Cs5
	.byte	W72
	.byte	W68
	.byte	W02
	.byte		EOT	
	.byte	W02
	.byte	PATT	
		mPtr	song060_4_6
	.byte	W48
	.byte		N23	, En5, v116
	.byte	W24
	.byte		N32	, Ds5
	.byte	W36
	.byte		N80	, As4
	.byte	W36
	.byte	W48
	.byte		N23	, Ds5
	.byte	W24
	.byte	PATT	
		mPtr	song060_4_7
	.byte	PATT	
		mPtr	song060_4_8
	.byte	PATT	
		mPtr	song060_4_9
	.byte	W68
	.byte	W02
	.byte		EOT	, Cs5
	.byte	W01
	.byte			Cs4
	.byte	W01
	.byte	PATT	
		mPtr	song060_4_10
	.byte	PATT	
		mPtr	song060_4_11
	.byte	PATT	
		mPtr	song060_4_12
	.byte	PATT	
		mPtr	song060_4_13
	.byte	PATT	
		mPtr	song060_4_14
	.byte	PATT	
		mPtr	song060_4_15
	.byte	GOTO	
		mPtr	song060_4_16
	.byte		N44	, En4, v120
	.byte	W48
	.byte		N11	, Ds4, v096
	.byte	W12
	.byte			En4, v104
	.byte	W11
	.byte	FINE

	@********************** Track  5 **********************@

	.global song060_5
song060_5:	@ 0x0829A00F
	.byte	KEYSH	, 0
	.byte	VOICE	, 1
	.byte	VOL	, v073
	.byte	PAN	, c_v-40
	.byte	BEND	, c_v
	.byte	W03
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
song060_5_1:
	.byte		TIE	, Cn3, v088
	.byte	W72
	.byte	W68
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte		TIE	, Cs3, v092
	.byte	W72
	.byte	W68
	.byte	W02
	.byte		EOT	
	.byte	W02
	.byte		TIE	, Dn3, v096
	.byte	W72
	.byte	W68
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte		N68	, Ds3, v104
	.byte	W72
	.byte			En3, v100
	.byte	W72
	.byte		TIE	, Fn3, v112
	.byte	W72
	.byte	W68
	.byte	W02
	.byte		EOT	
	.byte	W02
	.byte		TIE	, Fs3, v096
	.byte	W72
	.byte	W68
	.byte	W02
	.byte		EOT	
	.byte	W02
	.byte		TIE	, Gn3, v108
	.byte	W72
	.byte	W68
	.byte	W02
	.byte		EOT	
	.byte	W02
	.byte		N68	, Gs3
	.byte	W72
	.byte		N23	, An3
	.byte	W24
	.byte			As3, v092
	.byte	W24
	.byte			Bn3, v104
	.byte	W24
	.byte		TIE	, Cn3
	.byte	W72
	.byte	W72
	.byte		EOT	
	.byte		TIE	, Cs3
	.byte	W72
	.byte	W72
	.byte		EOT	
	.byte		TIE	, Dn3
	.byte	W72
	.byte	W72
	.byte		EOT	
	.byte		N72	, Ds3
	.byte	W72
	.byte			En3
	.byte	W72
	.byte		TIE	, Cn3
	.byte	W72
	.byte	W72
	.byte		EOT	
	.byte		TIE	, Cs3
	.byte	W72
	.byte	W72
	.byte		EOT	
	.byte		TIE	, Dn3
	.byte	W72
	.byte	W72
	.byte		EOT	
	.byte		N72	, Ds3
	.byte	W72
	.byte			En3
	.byte	W72
	.byte		TIE	, Cn3
	.byte	W72
	.byte	W72
	.byte		EOT	
	.byte		TIE	, Cs3
	.byte	W72
	.byte	W72
	.byte		EOT	
	.byte		TIE	, Dn3
	.byte	W72
	.byte	W72
	.byte		EOT	
	.byte		N72	, Ds3
	.byte	W72
	.byte			En3
	.byte	W72
	.byte		TIE	, Cn3
	.byte	W72
	.byte	W72
	.byte		EOT	
	.byte		TIE	, Cs3
	.byte	W72
	.byte	W72
	.byte		EOT	
	.byte		TIE	, Dn3
	.byte	W72
	.byte	W72
	.byte		EOT	
	.byte		N72	, Ds3
	.byte	W72
	.byte		N68	, En3
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	GOTO	
		mPtr	song060_5_1
	.byte		TIE	, Cn3, v088
	.byte	W72
	.byte	W68
	.byte	W03
	.byte		EOT	
	.byte	FINE

	@********************** Track  6 **********************@

	.global song060_6
song060_6:	@ 0x0829A0CB
	.byte	KEYSH	, 0
	.byte	VOICE	, 1
	.byte	VOL	, v080
	.byte	PAN	, c_v+6
	.byte	BEND	, c_v
	.byte	W03
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
song060_6_5:
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte		TIE	, Fn4, v092
	.byte	W72
	.byte	W68
	.byte	W03
	.byte		EOT	
	.byte	W01
song060_6_1:
	.byte		N32	, As4, v092
	.byte	W36
	.byte		N80	, Fn4
	.byte	W36
	.byte	PEND
	.byte	W48
	.byte		N23	, Gs4
	.byte	W24
song060_6_2:
	.byte		N32	, Gn4, v092
	.byte	W36
	.byte		N80	, Dn4
	.byte	W36
	.byte	PEND
	.byte	W48
	.byte		N23	, Gn4
	.byte	W24
song060_6_3:
	.byte		N32	, Fs4, v092
	.byte	W36
	.byte			Cs4
	.byte	W36
	.byte	PEND
song060_6_4:
	.byte		N22	, Fs4, v092
	.byte	W24
	.byte		N23	, Fn4
	.byte	W24
	.byte		N24	, En4
	.byte	W24
	.byte	PEND
	.byte		TIE	, Fn4
	.byte	W72
	.byte	W68
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte	PATT	
		mPtr	song060_6_1
	.byte	W48
	.byte		N23	, Gs4, v092
	.byte	W24
	.byte	PATT	
		mPtr	song060_6_2
	.byte	W48
	.byte		N23	, Gn4, v092
	.byte	W24
	.byte	PATT	
		mPtr	song060_6_3
	.byte	PATT	
		mPtr	song060_6_4
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	GOTO	
		mPtr	song060_6_5
	.byte	FINE

	@********************** Track  7 **********************@

	.global song060_7
song060_7:	@ 0x0829A163
	.byte	KEYSH	, 0
	.byte	VOICE	, 107
	.byte	VOL	, v085
	.byte	PAN	, c_v-24
	.byte	LFOS	, 0
	.byte	W03
song060_7_8:
	.byte		N08	, Gn4, v108
	.byte	W08
	.byte		N09	, Fs4, v104
	.byte	W14
	.byte			Fn4, v100
	.byte	W09
	.byte		N07	, Fs4, v104
	.byte	W14
	.byte		N10	, Gn4, v112
	.byte	W11
	.byte		N08	, Fs4, v104
	.byte	W13
	.byte		N09	, Fn4, v112
	.byte	W03
	.byte	PEND
song060_7_9:
	.byte	W07
	.byte		N07	, Fs4, v108
	.byte	W14
	.byte		N10	, Gn4, v116
	.byte	W10
	.byte		N09	, Fs4, v104
	.byte	W14
	.byte		N10	, Fn4, v116
	.byte	W11
	.byte		N11	, Dn4, v108
	.byte	W13
	.byte		N10	, Gs4, v112
	.byte	W03
	.byte	PEND
song060_7_10:
	.byte	W07
	.byte		N10	, Gn4, v112
	.byte	W14
	.byte		N09	, Fs4
	.byte	W10
	.byte			Gn4, v104
	.byte	W14
	.byte		N10	, Gs4, v112
	.byte	W11
	.byte		N08	, Gn4, v104
	.byte	W13
	.byte		N10	, Fs4, v124
	.byte	W03
	.byte	PEND
song060_7_11:
	.byte	W08
	.byte		N08	, Gn4, v108
	.byte	W13
	.byte		N10	, An4, v116
	.byte	W11
	.byte		N12	, As4, v104
	.byte	W13
	.byte		N10	, Bn4, v120
	.byte	W10
	.byte		N13	, Cn5, v116
	.byte	W17
	.byte	PEND
song060_7_12:
	.byte		N07	, An4, v108
	.byte	W08
	.byte		N09	, Gs4, v104
	.byte	W14
	.byte			Gn4, v100
	.byte	W09
	.byte		N07	, Gs4, v104
	.byte	W14
	.byte		N10	, An4, v112
	.byte	W11
	.byte		N08	, Gs4, v104
	.byte	W13
	.byte		N09	, Gn4, v112
	.byte	W03
	.byte	PEND
song060_7_13:
	.byte	W07
	.byte		N07	, Gs4, v108
	.byte	W14
	.byte		N10	, An4, v116
	.byte	W10
	.byte		N09	, Gs4, v104
	.byte	W15
	.byte			Fn4, v116
	.byte	W10
	.byte		N07	, Dn4, v108
	.byte	W13
	.byte		N10	, As4, v112
	.byte	W03
	.byte	PEND
song060_7_14:
	.byte	W07
	.byte		N10	, An4, v112
	.byte	W15
	.byte		N09	, Gs4
	.byte	W10
	.byte			An4, v104
	.byte	W14
	.byte		N11	, As4, v112
	.byte	W12
	.byte		N08	, An4, v104
	.byte	W13
	.byte		N09	, Dn5, v124
	.byte	W01
	.byte	PEND
song060_7_15:
	.byte	W09
	.byte		N10	, Cn5, v108
	.byte	W13
	.byte			Dn4, v116
	.byte	W11
	.byte		N13	, Cn4, v104
	.byte	W13
	.byte		N09	, An3, v120
	.byte	W11
	.byte		N11	, Fs3, v116
	.byte	W12
	.byte		N44	, As3
	.byte	W03
	.byte	PEND
song060_7_1:
	.byte	W44
	.byte	W01
	.byte		N11	, An3, v116
	.byte	W12
	.byte			As3
	.byte	W12
	.byte		N23	, Cn4
	.byte	W03
	.byte	PEND
song060_7_2:
	.byte	W21
	.byte		N32	, As3, v116
	.byte	W36
	.byte		N11	, Cn4
	.byte	W12
	.byte			Cs4
	.byte	W03
	.byte	PEND
song060_7_3:
	.byte	W09
	.byte		N11	, Ds4, v116
	.byte	W12
	.byte		N44	, En4
	.byte	W48
	.byte		N23	, Ds4
	.byte	W03
	.byte	PEND
song060_7_4:
	.byte	W21
	.byte		N32	, Cs4, v116
	.byte	W36
	.byte		N10	, Ds4
	.byte	W12
	.byte		N44	, En4
	.byte	W03
	.byte	PEND
song060_7_5:
	.byte	W44
	.byte	W01
	.byte		N11	, Ds4, v116
	.byte	W12
	.byte		N10	, En4
	.byte	W12
	.byte		N44	, Fs4
	.byte	W03
	.byte	PEND
song060_7_6:
	.byte	W44
	.byte	W01
	.byte		N12	, En4, v116
	.byte	W12
	.byte		N11	, Fs4
	.byte	W12
	.byte		N44	, Gs4
	.byte	W03
	.byte	PEND
song060_7_7:
	.byte	W44
	.byte	W01
	.byte		N11	, Gn4, v116
	.byte	W12
	.byte			Gs4
	.byte	W12
	.byte		N68	, As4
	.byte	W03
	.byte	PEND
	.byte	W68
	.byte	W01
	.byte		N44	, As3
	.byte	W03
	.byte	PATT	
		mPtr	song060_7_1
	.byte	PATT	
		mPtr	song060_7_2
	.byte	PATT	
		mPtr	song060_7_3
	.byte	PATT	
		mPtr	song060_7_4
	.byte	PATT	
		mPtr	song060_7_5
	.byte	PATT	
		mPtr	song060_7_6
	.byte	PATT	
		mPtr	song060_7_7
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	PATT	
		mPtr	song060_7_8
	.byte	PATT	
		mPtr	song060_7_9
	.byte	PATT	
		mPtr	song060_7_10
	.byte	PATT	
		mPtr	song060_7_11
	.byte	PATT	
		mPtr	song060_7_12
	.byte	PATT	
		mPtr	song060_7_13
	.byte	PATT	
		mPtr	song060_7_14
	.byte	PATT	
		mPtr	song060_7_15
	.byte	GOTO	
		mPtr	song060_7_1
	.byte	PATT	
		mPtr	song060_7_1
	.byte	W20
	.byte	FINE

	@********************** Track  8 **********************@

	.global song060_8
song060_8:	@ 0x0829A309
	.byte	KEYSH	, 0
	.byte	VOICE	, 3
	.byte	VOL	, v078
	.byte	PAN	, c_v
	.byte	W03
song060_8_1:
	.byte		N30	, Gn1, v116
	.byte	W36
	.byte		N30	
	.byte	W36
	.byte	PEND
song060_8_2:
	.byte	W12
	.byte		N12	, Gn1, v116
	.byte	W24
	.byte		N36	
	.byte	W36
	.byte	PEND
song060_8_9:
	.byte		N30	, Gs1, v116
	.byte	W36
	.byte		N30	
	.byte	W36
	.byte	PEND
song060_8_10:
	.byte	W12
	.byte		N12	, Gn2, v116
	.byte	W24
	.byte			Gn1
	.byte	W12
	.byte			As2
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte	PEND
song060_8_3:
	.byte		N30	, An1, v116
	.byte	W36
	.byte		N30	
	.byte	W36
	.byte	PEND
song060_8_4:
	.byte	W12
	.byte		N12	, En1, v116
	.byte	W24
	.byte		N36	
	.byte	W36
	.byte	PEND
song060_8_5:
	.byte		N30	, Fn1, v116
	.byte	W36
	.byte		N30	
	.byte	W36
	.byte	PEND
song060_8_6:
	.byte	W12
	.byte		N12	, Fn1, v116
	.byte	W24
	.byte			Fn2
	.byte	W12
	.byte			Fs1
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte	PEND
song060_8_17:
	.byte	PATT	
		mPtr	song060_8_1
	.byte	PATT	
		mPtr	song060_8_2
song060_8_7:
	.byte		N30	, Ds1, v116
	.byte	W36
	.byte		N30	
	.byte	W36
	.byte	PEND
song060_8_8:
	.byte	W12
	.byte		N12	, Gs2, v116
	.byte	W24
	.byte			Gs1
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song060_8_3
	.byte	PATT	
		mPtr	song060_8_4
	.byte	PATT	
		mPtr	song060_8_5
	.byte	PATT	
		mPtr	song060_8_6
	.byte	PATT	
		mPtr	song060_8_1
	.byte	PATT	
		mPtr	song060_8_2
	.byte	PATT	
		mPtr	song060_8_7
	.byte	PATT	
		mPtr	song060_8_8
	.byte	PATT	
		mPtr	song060_8_3
	.byte	PATT	
		mPtr	song060_8_4
	.byte	PATT	
		mPtr	song060_8_5
	.byte	PATT	
		mPtr	song060_8_6
	.byte	PATT	
		mPtr	song060_8_1
	.byte	PATT	
		mPtr	song060_8_2
	.byte	PATT	
		mPtr	song060_8_9
	.byte	PATT	
		mPtr	song060_8_10
	.byte	PATT	
		mPtr	song060_8_3
	.byte	PATT	
		mPtr	song060_8_4
	.byte	PATT	
		mPtr	song060_8_5
	.byte	PATT	
		mPtr	song060_8_6
	.byte	PATT	
		mPtr	song060_8_1
	.byte	PATT	
		mPtr	song060_8_2
	.byte	PATT	
		mPtr	song060_8_9
	.byte	PATT	
		mPtr	song060_8_10
	.byte	PATT	
		mPtr	song060_8_3
	.byte	PATT	
		mPtr	song060_8_4
	.byte	PATT	
		mPtr	song060_8_5
	.byte	PATT	
		mPtr	song060_8_6
song060_8_11:
	.byte		N24	, Gn1, v116
	.byte	W24
	.byte			Dn2
	.byte	W24
	.byte		N12	, Gn2
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song060_8_11
song060_8_13:
	.byte		N24	, Gs1, v116
	.byte	W24
	.byte			Ds2
	.byte	W24
	.byte		N12	, Gs2
	.byte	W12
	.byte			Ds2
	.byte	W12
	.byte	PEND
song060_8_14:
	.byte		N24	, Gs1, v116
	.byte	W24
	.byte			Ds2
	.byte	W24
	.byte			Gs2
	.byte	W24
	.byte	PEND
song060_8_12:
	.byte		N24	, An1, v116
	.byte	W24
	.byte			En2
	.byte	W24
	.byte		N12	, An2
	.byte	W12
	.byte			En2
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song060_8_12
song060_8_15:
	.byte		N24	, As1, v116
	.byte	W24
	.byte			Fn2
	.byte	W24
	.byte		N12	, As2
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte	PEND
song060_8_16:
	.byte		N24	, As1, v116
	.byte	W24
	.byte			Fn2
	.byte	W24
	.byte			As2
	.byte	W24
	.byte	PEND
	.byte	PATT	
		mPtr	song060_8_11
	.byte	PATT	
		mPtr	song060_8_11
	.byte	PATT	
		mPtr	song060_8_13
	.byte	PATT	
		mPtr	song060_8_14
	.byte	PATT	
		mPtr	song060_8_12
	.byte	PATT	
		mPtr	song060_8_12
	.byte	PATT	
		mPtr	song060_8_15
	.byte	PATT	
		mPtr	song060_8_16
	.byte	PATT	
		mPtr	song060_8_1
	.byte	PATT	
		mPtr	song060_8_2
	.byte	PATT	
		mPtr	song060_8_9
	.byte	PATT	
		mPtr	song060_8_10
	.byte	PATT	
		mPtr	song060_8_3
	.byte	PATT	
		mPtr	song060_8_4
	.byte	PATT	
		mPtr	song060_8_5
	.byte	PATT	
		mPtr	song060_8_6
	.byte	GOTO	
		mPtr	song060_8_17
	.byte		N30	, Gn1, v116
	.byte	W36
	.byte		N30	
	.byte	W30
	.byte	FINE

	@********************** Track  9 **********************@

	.global song060_9
song060_9:	@ 0x0829A4A7
	.byte	KEYSH	, 0
	.byte	VOICE	, 31
	.byte	VOL	, v046
	.byte	PAN	, c_v
	.byte	TUNE	, c_v+3
	.byte	BENDR	, 12
	.byte	W03
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
song060_9_1:
	.byte	VOL	, v060
	.byte		N03	, An3, v064
	.byte	W06
	.byte			An4, v076
	.byte	W06
	.byte			Dn5, v084
	.byte	W06
	.byte			Dn5, v044
	.byte	W06
	.byte			Dn5, v024
	.byte	W06
	.byte			Dn5, v004
	.byte	W42
	.byte	PEND
song060_9_2:
	.byte		N03	, An3, v064
	.byte	W06
	.byte			An4, v076
	.byte	W06
	.byte			Dn5, v084
	.byte	W06
	.byte			Dn5, v044
	.byte	W06
	.byte			Dn5, v024
	.byte	W06
	.byte			Dn5, v004
	.byte	W42
	.byte	PEND
song060_9_3:
	.byte		N03	, Cn4, v064
	.byte	W06
	.byte			Gs4, v076
	.byte	W06
	.byte			En5, v084
	.byte	W06
	.byte			En5, v044
	.byte	W06
	.byte			En5, v024
	.byte	W06
	.byte			En5, v004
	.byte	W42
	.byte	PEND
song060_9_4:
	.byte		N03	, Cn4, v064
	.byte	W06
	.byte			Gs4, v076
	.byte	W06
	.byte			En5, v084
	.byte	W06
	.byte			En5, v044
	.byte	W06
	.byte			En5, v024
	.byte	W06
	.byte			Dn5, v076
	.byte	W12
	.byte			An4
	.byte	W06
	.byte			Cn5
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			Gn4
	.byte	W12
	.byte	PEND
song060_9_5:
	.byte	VOL	, v060
	.byte		N03	, En4, v064
	.byte	W06
	.byte			Cn5, v076
	.byte	W06
	.byte			An5, v084
	.byte	W06
	.byte			An5, v044
	.byte	W06
	.byte			An5, v024
	.byte	W06
	.byte			An5, v004
	.byte	W42
	.byte	PEND
song060_9_6:
	.byte		N03	, En4, v064
	.byte	W06
	.byte			Cn5, v076
	.byte	W06
	.byte			An5, v084
	.byte	W06
	.byte			An5, v044
	.byte	W06
	.byte			An5, v024
	.byte	W06
	.byte			An5, v004
	.byte	W42
	.byte	PEND
song060_9_7:
	.byte		N03	, Gs4, v064
	.byte	W06
	.byte			Ds5, v076
	.byte	W06
	.byte			Gs5, v084
	.byte	W06
	.byte			Gs5, v044
	.byte	W06
	.byte			Gs5, v024
	.byte	W06
	.byte			Gs5, v004
	.byte	W42
	.byte	PEND
song060_9_8:
	.byte		N03	, Gs4, v064
	.byte	W06
	.byte			Ds5, v076
	.byte	W06
	.byte			Gs5, v084
	.byte	W06
	.byte			Gs5, v044
	.byte	W06
	.byte			Gs5, v024
	.byte	W06
	.byte			Gn5, v076
	.byte	W12
	.byte			Cn5
	.byte	W06
	.byte			Fn5
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			As4
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song060_9_1
	.byte	PATT	
		mPtr	song060_9_2
	.byte	PATT	
		mPtr	song060_9_3
	.byte	PATT	
		mPtr	song060_9_4
	.byte	PATT	
		mPtr	song060_9_5
	.byte	PATT	
		mPtr	song060_9_6
	.byte	PATT	
		mPtr	song060_9_7
	.byte	PATT	
		mPtr	song060_9_8
song060_9_9:
	.byte	VOL	, v060
	.byte		N03	, Dn4, v064
	.byte	W06
	.byte			Dn5, v076
	.byte	W06
	.byte			Gn5, v084
	.byte	W06
	.byte			Gn5, v044
	.byte	W06
	.byte			Gn5, v024
	.byte	W06
	.byte			Gn5, v004
	.byte	W42
	.byte	PEND
song060_9_10:
	.byte		N03	, Dn4, v064
	.byte	W06
	.byte			Dn5, v076
	.byte	W06
	.byte			Gn5, v084
	.byte	W06
	.byte			Gn5, v044
	.byte	W06
	.byte			Gn5, v024
	.byte	W06
	.byte			Gn5, v004
	.byte	W42
	.byte	PEND
song060_9_11:
	.byte		N03	, Ds4, v064
	.byte	W06
	.byte			Cn5, v076
	.byte	W06
	.byte			Gn5, v084
	.byte	W06
	.byte			Gn5, v044
	.byte	W06
	.byte			Gn5, v024
	.byte	W06
	.byte			Gn5, v004
	.byte	W42
	.byte	PEND
song060_9_12:
	.byte		N03	, Ds4, v064
	.byte	W06
	.byte			Cn5, v076
	.byte	W06
	.byte			Gn5, v084
	.byte	W06
	.byte			Gn5, v044
	.byte	W06
	.byte			Gn5, v024
	.byte	W06
	.byte			Fn5, v076
	.byte	W12
	.byte			Cn5
	.byte	W06
	.byte			Ds5
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			As4
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song060_9_5
	.byte	PATT	
		mPtr	song060_9_6
	.byte	PATT	
		mPtr	song060_9_7
	.byte	PATT	
		mPtr	song060_9_8
	.byte	PATT	
		mPtr	song060_9_9
	.byte	PATT	
		mPtr	song060_9_10
	.byte	PATT	
		mPtr	song060_9_11
	.byte	PATT	
		mPtr	song060_9_12
	.byte	PATT	
		mPtr	song060_9_5
	.byte	PATT	
		mPtr	song060_9_6
	.byte	PATT	
		mPtr	song060_9_7
	.byte	PATT	
		mPtr	song060_9_8
	.byte	BEND	, c_v
	.byte	W24
	.byte		N06	, Fn4, v096
	.byte	W18
	.byte			En4
	.byte	W18
	.byte			Ds4
	.byte	W12
song060_9_13:
	.byte		N06	, Dn4, v096
	.byte	W06
	.byte		N18	, Gn3
	.byte	W24
	.byte		N04	, Gn3, v104
	.byte	W06
	.byte			Gn3, v076
	.byte	W06
	.byte			Gn3, v056
	.byte	W06
	.byte			Gn3, v036
	.byte	W06
	.byte			Gn3, v016
	.byte	W18
	.byte	PEND
	.byte	W72
	.byte	W72
song060_9_14:
	.byte	W24
	.byte		N06	, Fn4, v096
	.byte	W18
	.byte			En4
	.byte	W18
	.byte			Ds4
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song060_9_13
	.byte	W72
	.byte	W72
	.byte	PATT	
		mPtr	song060_9_14
	.byte	PATT	
		mPtr	song060_9_13
	.byte	W72
	.byte	W72
	.byte	PATT	
		mPtr	song060_9_14
	.byte	PATT	
		mPtr	song060_9_13
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	GOTO	
		mPtr	song060_9_1
	.byte	VOL	, v060
	.byte		N03	, An3, v064
	.byte	W06
	.byte			An4, v076
	.byte	W06
	.byte			Dn5, v084
	.byte	W06
	.byte			Dn5, v044
	.byte	W06
	.byte			Dn5, v024
	.byte	W06
	.byte			Dn5, v004
	.byte	W03
	.byte	FINE

	@********************** Track  10 **********************@

	.global song060_10
song060_10:	@ 0x0829A69F
	.byte	KEYSH	, 0
	.byte	VOICE	, 5
	.byte	VOL	, v053
	.byte	PAN	, c_v
	.byte	W03
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
song060_10_2:
	.byte		N04	, Dn3, v036
	.byte	W04
	.byte			Dn3, v040
	.byte	W04
	.byte			Dn3, v048
	.byte	W04
	.byte			Dn3, v052
	.byte	W04
	.byte			Dn3, v068
	.byte	W04
	.byte			Dn3, v096
	.byte	W04
	.byte			Dn3, v104
	.byte	W04
	.byte			Dn3, v088
	.byte	W04
	.byte			Dn3, v076
	.byte	W04
	.byte			Dn3, v064
	.byte	W04
	.byte			Dn3, v052
	.byte	W04
	.byte			Dn3, v044
	.byte	W04
	.byte			Dn3, v032
	.byte	W04
	.byte			Dn3, v020
	.byte	W04
	.byte			Dn3, v012
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte	PEND
song060_10_3:
	.byte		N04	, As2, v036
	.byte	W04
	.byte			As2, v040
	.byte	W04
	.byte			As2, v048
	.byte	W04
	.byte			As2, v052
	.byte	W04
	.byte			As2, v068
	.byte	W04
	.byte			As2, v096
	.byte	W04
	.byte			Dn3, v104
	.byte	W04
	.byte			Dn3, v088
	.byte	W04
	.byte			Dn3, v076
	.byte	W04
	.byte			Dn3, v064
	.byte	W04
	.byte			Dn3, v052
	.byte	W04
	.byte			Dn3, v044
	.byte	W04
	.byte			Dn3, v032
	.byte	W04
	.byte			Dn3, v020
	.byte	W04
	.byte			Dn3, v012
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte	PEND
song060_10_4:
	.byte		N04	, As2, v036
	.byte	W04
	.byte			As2, v040
	.byte	W04
	.byte			As2, v048
	.byte	W04
	.byte			As2, v052
	.byte	W04
	.byte			As2, v068
	.byte	W04
	.byte			As2, v096
	.byte	W04
	.byte			As2, v104
	.byte	W04
	.byte			As2, v088
	.byte	W04
	.byte			As2, v076
	.byte	W04
	.byte			As2, v064
	.byte	W04
	.byte			As2, v052
	.byte	W04
	.byte			As2, v044
	.byte	W04
	.byte			As2, v032
	.byte	W04
	.byte			As2, v020
	.byte	W04
	.byte			As2, v012
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte	PEND
song060_10_5:
	.byte		N04	, Dn3, v036
	.byte	W04
	.byte			Dn3, v040
	.byte	W04
	.byte			Dn3, v048
	.byte	W04
	.byte			Dn3, v052
	.byte	W04
	.byte			Dn3, v068
	.byte	W04
	.byte			Dn3, v096
	.byte	W04
	.byte			As2, v104
	.byte	W04
	.byte			As2, v088
	.byte	W04
	.byte			As2, v076
	.byte	W04
	.byte			As2, v064
	.byte	W04
	.byte			As2, v052
	.byte	W04
	.byte			As2, v044
	.byte	W04
	.byte			As2, v032
	.byte	W04
	.byte			As2, v020
	.byte	W04
	.byte			As2, v012
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte	PEND
song060_10_1:
	.byte		N04	, En3, v036
	.byte	W04
	.byte			En3, v040
	.byte	W04
	.byte			En3, v048
	.byte	W04
	.byte			En3, v052
	.byte	W04
	.byte			En3, v068
	.byte	W04
	.byte			En3, v096
	.byte	W04
	.byte			En3, v104
	.byte	W04
	.byte			En3, v088
	.byte	W04
	.byte			En3, v076
	.byte	W04
	.byte			En3, v064
	.byte	W04
	.byte			En3, v052
	.byte	W04
	.byte			En3, v044
	.byte	W04
	.byte			En3, v032
	.byte	W04
	.byte			En3, v020
	.byte	W04
	.byte			En3, v012
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte	PEND
	.byte	PATT	
		mPtr	song060_10_1
song060_10_6:
	.byte		N04	, Fn3, v036
	.byte	W04
	.byte			Fn3, v040
	.byte	W04
	.byte			Fn3, v048
	.byte	W04
	.byte			Fn3, v052
	.byte	W04
	.byte			Fn3, v068
	.byte	W04
	.byte			Fn3, v096
	.byte	W04
	.byte			Fn3, v104
	.byte	W04
	.byte			Fn3, v088
	.byte	W04
	.byte			Fn3, v076
	.byte	W04
	.byte			Fn3, v064
	.byte	W04
	.byte			Fn3, v052
	.byte	W04
	.byte			Fn3, v044
	.byte	W04
	.byte			Fn3, v032
	.byte	W04
	.byte			Fn3, v020
	.byte	W04
	.byte			Fn3, v012
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte	PEND
	.byte			As3, v036
	.byte	W04
	.byte			As3, v040
	.byte	W04
	.byte			As3, v048
	.byte	W04
	.byte			As3, v052
	.byte	W04
	.byte			As3, v068
	.byte	W04
	.byte			As3, v096
	.byte	W04
	.byte			Fn3, v104
	.byte	W04
	.byte			Fn3, v088
	.byte	W04
	.byte			Fn3, v076
	.byte	W04
	.byte			Fn3, v064
	.byte	W04
	.byte			Fn3, v052
	.byte	W04
	.byte			Fn3, v044
	.byte	W04
	.byte			Fn3, v032
	.byte	W04
	.byte			Fn3, v020
	.byte	W04
	.byte			Fn3, v012
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte	PATT	
		mPtr	song060_10_2
	.byte	PATT	
		mPtr	song060_10_3
	.byte	PATT	
		mPtr	song060_10_4
	.byte	PATT	
		mPtr	song060_10_5
	.byte	PATT	
		mPtr	song060_10_1
	.byte	PATT	
		mPtr	song060_10_1
	.byte	PATT	
		mPtr	song060_10_6
	.byte		N04	, Bn3, v036
	.byte	W04
	.byte			Bn3, v040
	.byte	W04
	.byte			Bn3, v048
	.byte	W04
	.byte			Bn3, v052
	.byte	W04
	.byte			Bn3, v068
	.byte	W04
	.byte			Bn3, v096
	.byte	W04
	.byte			Fs3, v104
	.byte	W04
	.byte			Fs3, v088
	.byte	W04
	.byte			Fs3, v076
	.byte	W04
	.byte			Fs3, v064
	.byte	W04
	.byte			Fs3, v052
	.byte	W04
	.byte			Fs3, v044
	.byte	W04
	.byte			Fs3, v032
	.byte	W04
	.byte			Fs3, v020
	.byte	W04
	.byte			Fs3, v012
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte	PATT	
		mPtr	song060_10_2
	.byte	PATT	
		mPtr	song060_10_3
song060_10_7:
	.byte		N04	, Ds3, v036
	.byte	W04
	.byte			Ds3, v040
	.byte	W04
	.byte			Ds3, v048
	.byte	W04
	.byte			Ds3, v052
	.byte	W04
	.byte			Ds3, v068
	.byte	W04
	.byte			Ds3, v096
	.byte	W04
	.byte			Ds3, v104
	.byte	W04
	.byte			Ds3, v088
	.byte	W04
	.byte			Ds3, v076
	.byte	W04
	.byte			Ds3, v064
	.byte	W04
	.byte			Ds3, v052
	.byte	W04
	.byte			Ds3, v044
	.byte	W04
	.byte			Ds3, v032
	.byte	W04
	.byte			Ds3, v020
	.byte	W04
	.byte			Ds3, v012
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte	PEND
song060_10_8:
	.byte		N04	, Gn3, v036
	.byte	W04
	.byte			Gn3, v040
	.byte	W04
	.byte			Gn3, v048
	.byte	W04
	.byte			Gn3, v052
	.byte	W04
	.byte			Gn3, v068
	.byte	W04
	.byte			Gn3, v096
	.byte	W04
	.byte			Ds3, v104
	.byte	W04
	.byte			Ds3, v088
	.byte	W04
	.byte			Ds3, v076
	.byte	W04
	.byte			Ds3, v064
	.byte	W04
	.byte			Ds3, v052
	.byte	W04
	.byte			Ds3, v044
	.byte	W04
	.byte			Ds3, v032
	.byte	W04
	.byte			Ds3, v020
	.byte	W04
	.byte			Ds3, v012
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte	PEND
	.byte	PATT	
		mPtr	song060_10_1
	.byte	PATT	
		mPtr	song060_10_1
	.byte	PATT	
		mPtr	song060_10_6
	.byte		N04	, Cn4, v036
	.byte	W04
	.byte			Cn4, v040
	.byte	W04
	.byte			Cn4, v048
	.byte	W04
	.byte			Cn4, v052
	.byte	W04
	.byte			Cn4, v068
	.byte	W04
	.byte			Cn4, v096
	.byte	W04
	.byte			Fn3, v104
	.byte	W04
	.byte			Fn3, v088
	.byte	W04
	.byte			Fn3, v076
	.byte	W04
	.byte			Fn3, v064
	.byte	W04
	.byte			Fn3, v052
	.byte	W04
	.byte			Fn3, v044
	.byte	W04
	.byte			Fn3, v032
	.byte	W04
	.byte			Fn3, v020
	.byte	W04
	.byte			Fn3, v012
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte	PATT	
		mPtr	song060_10_2
	.byte	PATT	
		mPtr	song060_10_3
	.byte	PATT	
		mPtr	song060_10_7
	.byte	PATT	
		mPtr	song060_10_8
	.byte	PATT	
		mPtr	song060_10_1
	.byte	PATT	
		mPtr	song060_10_1
	.byte	PATT	
		mPtr	song060_10_6
	.byte		N04	, Ds4, v036
	.byte	W04
	.byte			Ds4, v040
	.byte	W04
	.byte			Ds4, v048
	.byte	W04
	.byte			Ds4, v052
	.byte	W04
	.byte			Ds4, v068
	.byte	W04
	.byte			Ds4, v096
	.byte	W04
	.byte			Fs3, v104
	.byte	W04
	.byte			Fs3, v088
	.byte	W04
	.byte			Fs3, v076
	.byte	W04
	.byte			Fs3, v064
	.byte	W04
	.byte			Fs3, v052
	.byte	W04
	.byte			Fs3, v044
	.byte	W04
	.byte			Fs3, v032
	.byte	W04
	.byte			Fs3, v020
	.byte	W04
	.byte			Fs3, v012
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte	W24
	.byte			Dn3, v036
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte			Dn3, v040
	.byte	W04
	.byte			Dn3, v048
	.byte	W04
	.byte			Dn3, v052
	.byte	W04
	.byte			Dn3, v060
	.byte	W04
	.byte			Dn3, v072
	.byte	W04
	.byte			Dn3, v080
	.byte	W04
	.byte			Dn3, v092
	.byte	W04
	.byte			Dn3, v100
	.byte	W04
	.byte			Dn3, v104
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte			Dn3, v100
	.byte	W04
	.byte			Dn3, v092
	.byte	W04
	.byte			Dn3, v080
	.byte	W04
	.byte			Dn3, v064
	.byte	W04
	.byte			Dn3, v056
	.byte	W04
	.byte			Dn3, v052
	.byte	W04
	.byte			Dn3, v044
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte			Dn3, v036
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte			Dn3, v032
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte			Dn3, v028
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte			Dn3, v024
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte	W24
	.byte			Ds3, v036
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte			Ds3, v040
	.byte	W04
	.byte			Ds3, v048
	.byte	W04
	.byte			Ds3, v052
	.byte	W04
	.byte			Ds3, v060
	.byte	W04
	.byte			Ds3, v072
	.byte	W04
	.byte			Ds3, v080
	.byte	W04
	.byte			Ds3, v092
	.byte	W04
	.byte			Ds3, v100
	.byte	W04
	.byte			Ds3, v104
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte			Ds3, v100
	.byte	W04
	.byte			Ds3, v092
	.byte	W04
	.byte			Ds3, v080
	.byte	W04
	.byte			Ds3, v064
	.byte	W04
	.byte			Ds3, v056
	.byte	W04
	.byte			Ds3, v052
	.byte	W04
	.byte			Ds3, v044
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte			Ds3, v036
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte			Ds3, v032
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte			Ds3, v028
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte			Ds3, v024
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte	W24
	.byte			En3, v036
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte			En3, v040
	.byte	W04
	.byte			En3, v048
	.byte	W04
	.byte			En3, v052
	.byte	W04
	.byte			En3, v060
	.byte	W04
	.byte			En3, v072
	.byte	W04
	.byte			En3, v080
	.byte	W04
	.byte			En3, v092
	.byte	W04
	.byte			En3, v100
	.byte	W04
	.byte			En3, v104
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte			En3, v100
	.byte	W04
	.byte			En3, v092
	.byte	W04
	.byte			En3, v080
	.byte	W04
	.byte			En3, v064
	.byte	W04
	.byte			En3, v056
	.byte	W04
	.byte			En3, v052
	.byte	W04
	.byte			En3, v044
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte			En3, v036
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte			En3, v032
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte			En3, v028
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte			En3, v024
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte	W24
	.byte			Fn3, v036
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte			Fn3, v040
	.byte	W04
	.byte			Fn3, v048
	.byte	W04
	.byte			Fn3, v052
	.byte	W04
	.byte			Fn3, v060
	.byte	W04
	.byte			Fn3, v072
	.byte	W04
	.byte			Fn3, v080
	.byte	W04
	.byte			Fn3, v092
	.byte	W04
	.byte			Fn3, v100
	.byte	W04
	.byte			Fn3, v104
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte			Fn3, v100
	.byte	W04
	.byte			Fn3, v092
	.byte	W04
	.byte			Fn3, v080
	.byte	W04
	.byte			Fn3, v064
	.byte	W04
	.byte			Fn3, v056
	.byte	W04
	.byte			Fn3, v052
	.byte	W04
	.byte			Fn3, v044
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte			Fn3, v036
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte			Fn3, v032
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte			Fn3, v028
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte			Fn3, v024
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte	PATT	
		mPtr	song060_10_2
	.byte	PATT	
		mPtr	song060_10_3
	.byte	PATT	
		mPtr	song060_10_7
	.byte	PATT	
		mPtr	song060_10_8
	.byte	PATT	
		mPtr	song060_10_1
	.byte		N04	, Cn3, v036
	.byte	W04
	.byte			Cn3, v040
	.byte	W04
	.byte			Cn3, v048
	.byte	W04
	.byte			Cn3, v052
	.byte	W04
	.byte			Cn3, v068
	.byte	W04
	.byte			Cn3, v096
	.byte	W04
	.byte			En3, v104
	.byte	W04
	.byte			En3, v088
	.byte	W04
	.byte			En3, v076
	.byte	W04
	.byte			En3, v064
	.byte	W04
	.byte			En3, v052
	.byte	W04
	.byte			En3, v044
	.byte	W04
	.byte			En3, v032
	.byte	W04
	.byte			En3, v020
	.byte	W04
	.byte			En3, v012
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte	PATT	
		mPtr	song060_10_6
	.byte		N04	, Dn4, v036
	.byte	W04
	.byte			Dn4, v040
	.byte	W04
	.byte			Dn4, v048
	.byte	W04
	.byte			Dn4, v052
	.byte	W04
	.byte			Dn4, v068
	.byte	W04
	.byte			Dn4, v096
	.byte	W04
	.byte			Fs3, v104
	.byte	W04
	.byte			Fs3, v088
	.byte	W04
	.byte			Fs3, v076
	.byte	W04
	.byte			Fs3, v064
	.byte	W04
	.byte			Fs3, v052
	.byte	W04
	.byte			Fs3, v044
	.byte	W04
	.byte			Fs3, v032
	.byte	W04
	.byte			Fs3, v020
	.byte	W04
	.byte			Fs3, v012
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	GOTO	
		mPtr	song060_10_2
	.byte	PATT	
		mPtr	song060_10_2
	.byte	FINE

	@********************** Track  11 **********************@

	.global song060_11
song060_11:	@ 0x0829AB6C
	.byte	KEYSH	, 0
	.byte	VOICE	, 89
	.byte	VOL	, v046
	.byte	PAN	, c_v
	.byte	W03
song060_11_1:
	.byte		N05	, Cn5, v064
	.byte	W12
	.byte			Cn5, v084
	.byte	W24
	.byte			Cn5, v076
	.byte	W24
	.byte		N05	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song060_11_1
	.byte	PATT	
		mPtr	song060_11_1
	.byte	PATT	
		mPtr	song060_11_1
	.byte	PATT	
		mPtr	song060_11_1
	.byte	PATT	
		mPtr	song060_11_1
	.byte	PATT	
		mPtr	song060_11_1
song060_11_2:
	.byte		N05	, Cn5, v064
	.byte	W12
	.byte			Cn5, v084
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte			Cn5, v076
	.byte	W18
	.byte			Cn5, v084
	.byte	W06
	.byte			Cn5, v076
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte	PEND
song060_11_6:
	.byte	PATT	
		mPtr	song060_11_1
	.byte	PATT	
		mPtr	song060_11_1
	.byte	PATT	
		mPtr	song060_11_1
	.byte	PATT	
		mPtr	song060_11_1
	.byte	PATT	
		mPtr	song060_11_1
	.byte	PATT	
		mPtr	song060_11_1
	.byte	PATT	
		mPtr	song060_11_1
	.byte	PATT	
		mPtr	song060_11_2
	.byte	PATT	
		mPtr	song060_11_1
	.byte	PATT	
		mPtr	song060_11_1
	.byte	PATT	
		mPtr	song060_11_1
	.byte	PATT	
		mPtr	song060_11_1
	.byte	PATT	
		mPtr	song060_11_1
	.byte	PATT	
		mPtr	song060_11_1
	.byte	PATT	
		mPtr	song060_11_1
	.byte	PATT	
		mPtr	song060_11_2
	.byte	PATT	
		mPtr	song060_11_1
	.byte	PATT	
		mPtr	song060_11_1
	.byte	PATT	
		mPtr	song060_11_1
	.byte	PATT	
		mPtr	song060_11_1
	.byte	PATT	
		mPtr	song060_11_1
	.byte	PATT	
		mPtr	song060_11_1
	.byte	PATT	
		mPtr	song060_11_1
	.byte	PATT	
		mPtr	song060_11_2
	.byte	PATT	
		mPtr	song060_11_1
	.byte	PATT	
		mPtr	song060_11_1
	.byte	PATT	
		mPtr	song060_11_1
	.byte	PATT	
		mPtr	song060_11_1
	.byte	PATT	
		mPtr	song060_11_1
	.byte	PATT	
		mPtr	song060_11_1
	.byte	PATT	
		mPtr	song060_11_1
	.byte	PATT	
		mPtr	song060_11_2
song060_11_3:
	.byte		N05	, Cn5, v064
	.byte	W12
	.byte			Cn5, v084
	.byte	W12
	.byte			Cn5, v064
	.byte	W06
	.byte			Cn5, v084
	.byte	W12
	.byte			Cn5, v076
	.byte	W18
	.byte		N05	
	.byte	W06
	.byte			Cn5, v064
	.byte	W06
	.byte	PEND
	.byte	PATT	
		mPtr	song060_11_3
	.byte	PATT	
		mPtr	song060_11_3
song060_11_4:
	.byte		N05	, Cn5, v064
	.byte	W12
	.byte			Cn5, v084
	.byte	W12
	.byte			Cn5, v064
	.byte	W06
	.byte			Cn5, v084
	.byte	W12
	.byte			Cn5, v076
	.byte	W24
	.byte			Cn5, v064
	.byte	W06
	.byte	PEND
	.byte	PATT	
		mPtr	song060_11_3
	.byte	PATT	
		mPtr	song060_11_3
	.byte	PATT	
		mPtr	song060_11_3
song060_11_5:
	.byte		N05	, Cn5, v064
	.byte	W12
	.byte			Cn5, v084
	.byte	W12
	.byte			Cn5, v064
	.byte	W06
	.byte			Cn5, v084
	.byte	W12
	.byte			Cn5, v076
	.byte	W06
	.byte			Cn5, v084
	.byte	W06
	.byte			Cn5, v064
	.byte	W18
	.byte	PEND
	.byte	PATT	
		mPtr	song060_11_3
	.byte	PATT	
		mPtr	song060_11_3
	.byte	PATT	
		mPtr	song060_11_3
	.byte	PATT	
		mPtr	song060_11_4
	.byte	PATT	
		mPtr	song060_11_3
	.byte	PATT	
		mPtr	song060_11_3
	.byte	PATT	
		mPtr	song060_11_3
	.byte	PATT	
		mPtr	song060_11_5
	.byte	PATT	
		mPtr	song060_11_1
	.byte	PATT	
		mPtr	song060_11_1
	.byte	PATT	
		mPtr	song060_11_1
	.byte	PATT	
		mPtr	song060_11_1
	.byte	PATT	
		mPtr	song060_11_1
	.byte	PATT	
		mPtr	song060_11_1
	.byte	PATT	
		mPtr	song060_11_1
	.byte	PATT	
		mPtr	song060_11_2
	.byte	GOTO	
		mPtr	song060_11_6
	.byte		N05	, Cn5, v064
	.byte	W12
	.byte			Cn5, v084
	.byte	W24
	.byte			Cn5, v076
	.byte	W24
	.byte		N05	
	.byte	W05
	.byte	FINE

	@********************** Track  12 **********************@

	.global song060_12
song060_12:	@ 0x0829AD11
	.byte	KEYSH	, 0
	.byte	VOICE	, 91
	.byte	VOL	, v046
	.byte	PAN	, c_v
	.byte	W03
	.byte	W48
	.byte		N11	, Cn5, v076
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
song060_12_1:
	.byte	W36
	.byte		N11	, Cn5, v076
	.byte	W18
	.byte		N05	, Cn5, v096
	.byte	W18
	.byte	PEND
song060_12_2:
	.byte	W48
	.byte		N11	, Cn5, v076
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	PATT	
		mPtr	song060_12_1
	.byte	W48
	.byte		N11	, Cn5, v076
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	PATT	
		mPtr	song060_12_1
	.byte	W48
	.byte		N11	, Cn5, v076
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	PATT	
		mPtr	song060_12_1
	.byte	W48
	.byte		N11	, Cn5, v076
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	PATT	
		mPtr	song060_12_1
	.byte	W48
	.byte		N11	, Cn5, v076
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N17	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W60
	.byte			Cn5, v096
	.byte	W12
	.byte	W48
	.byte			Cn5, v076
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N17	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W60
	.byte			Cn5, v096
	.byte	W12
	.byte	W48
	.byte			Cn5, v076
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte	PATT	
		mPtr	song060_12_1
	.byte	GOTO	
		mPtr	song060_12_2
	.byte	W48
	.byte		N11	, Cn5, v076
	.byte	W11
	.byte	FINE

	@********************** Track  13 **********************@

	.global song060_13
song060_13:	@ 0x0829AE06
	.byte	KEYSH	, 0
	.byte	VOICE	, 57
	.byte	VOL	, v060
	.byte	PAN	, c_v+56
	.byte	W03
	.byte		TIE	, Bn1, v092
	.byte	W72
	.byte	W68
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte		TIE	, Cn2
	.byte	W72
	.byte	W68
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte		N68	, Cs2
	.byte	W72
	.byte			Gs1
	.byte	W72
	.byte		TIE	, An1
	.byte	W72
	.byte	W36
	.byte		EOT	
	.byte		N32	, As1
	.byte	W36
song060_13_1:
	.byte		TIE	, Bn1, v092
	.byte	W72
	.byte	W68
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte		TIE	, Gn1
	.byte	W72
	.byte	W68
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte		N68	, Cs2
	.byte	W72
	.byte			Gs1
	.byte	W72
	.byte		TIE	, An1
	.byte	W72
	.byte	W36
	.byte		EOT	
	.byte		N32	, As1
	.byte	W36
	.byte		TIE	, Bn1
	.byte	W72
	.byte	W68
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte		TIE	, Gn1
	.byte	W72
	.byte	W68
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte		N68	, Cs2
	.byte	W72
	.byte			Gs1
	.byte	W72
	.byte		TIE	, An1
	.byte	W72
	.byte	W36
	.byte		EOT	
	.byte		N32	, As1
	.byte	W36
	.byte		TIE	, Bn1
	.byte	W72
	.byte	W68
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte		TIE	, Cn2
	.byte	W72
	.byte	W68
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte		N68	, Cs2
	.byte	W72
	.byte			Gs1
	.byte	W72
	.byte		TIE	, An1
	.byte	W72
	.byte	W36
	.byte		EOT	
	.byte		N32	, As1
	.byte	W36
	.byte		TIE	, Bn1
	.byte	W72
	.byte	W68
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte		TIE	, Cn2
	.byte	W72
	.byte	W68
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte		N68	, Cs2
	.byte	W72
	.byte			Gs1
	.byte	W72
	.byte		TIE	, An1
	.byte	W72
	.byte	W36
	.byte		EOT	
	.byte		N32	, As1
	.byte	W36
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte		TIE	, Bn1
	.byte	W72
	.byte	W68
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte		TIE	, Cn2
	.byte	W72
	.byte	W68
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte		N68	, Cs2
	.byte	W72
	.byte			Gs1
	.byte	W72
	.byte		TIE	, An1
	.byte	W72
	.byte	W36
	.byte		EOT	
	.byte		N32	, As1
	.byte	W36
	.byte	GOTO	
		mPtr	song060_13_1
	.byte		TIE	, Bn1, v092
	.byte	W72
	.byte	W68
	.byte	W03
	.byte		EOT	
	.byte	FINE

	@********************** Track  14 **********************@

	.global song060_14
song060_14:	@ 0x0829AED0
	.byte	KEYSH	, 0
	.byte	VOICE	, 16
	.byte	VOL	, v036
	.byte	PAN	, c_v-24
	.byte	BEND	, c_v
	.byte	W03
song060_14_1:
	.byte	W06
	.byte	VOICE	, 16
	.byte	W28
	.byte	W01
	.byte		N07	, Fs3, v084
	.byte	W10
	.byte	VOICE	, 18
	.byte	W02
	.byte		N24	, Bn2, v076
	.byte	W24
	.byte	W01
	.byte	PEND
song060_14_2:
	.byte	W06
	.byte	VOICE	, 17
	.byte	W05
	.byte		N07	, Bn2, v084
	.byte	W10
	.byte	VOICE	, 18
	.byte	W02
	.byte		N24	, Fs3, v076
	.byte	W48
	.byte	W01
	.byte	PEND
song060_14_3:
	.byte	W06
	.byte	VOICE	, 16
	.byte	W28
	.byte	W01
	.byte		N07	, Gn3, v084
	.byte	W10
	.byte	VOICE	, 18
	.byte	W02
	.byte		N24	, Cn3, v076
	.byte	W24
	.byte	W01
	.byte	PEND
song060_14_4:
	.byte	W06
	.byte	VOICE	, 17
	.byte	W05
	.byte		N07	, Cn3, v084
	.byte	W10
	.byte	VOICE	, 18
	.byte	W02
	.byte		N24	, Gn3, v076
	.byte	W24
	.byte		N18	, Cn4
	.byte	W24
	.byte	W01
	.byte	PEND
song060_14_5:
	.byte	W06
	.byte	VOICE	, 16
	.byte	W28
	.byte	W01
	.byte		N07	, Gs3, v084
	.byte	W10
	.byte	VOICE	, 18
	.byte	W02
	.byte		N24	, Cs3, v076
	.byte	W24
	.byte	W01
	.byte	PEND
song060_14_6:
	.byte	W06
	.byte	VOICE	, 17
	.byte	W05
	.byte		N07	, Cs3, v084
	.byte	W10
	.byte	VOICE	, 18
	.byte	W02
	.byte		N24	, Gs3, v076
	.byte	W30
	.byte	W01
	.byte	VOICE	, 16
	.byte	W18
	.byte	PEND
song060_14_7:
	.byte	W11
	.byte		N07	, An3, v084
	.byte	W10
	.byte	VOICE	, 18
	.byte	W02
	.byte		N24	, Fs3, v076
	.byte	W30
	.byte	W01
	.byte	VOICE	, 17
	.byte	W05
	.byte		N07	, An3, v084
	.byte	W10
	.byte	VOICE	, 18
	.byte	W02
	.byte		N24	, Dn4, v076
	.byte	W01
	.byte	PEND
song060_14_8:
	.byte	W23
	.byte		N30	, An3, v076
	.byte	W48
	.byte	W01
	.byte	PEND
song060_14_9:
	.byte	PATT	
		mPtr	song060_14_1
	.byte	PATT	
		mPtr	song060_14_2
	.byte	PATT	
		mPtr	song060_14_3
	.byte	PATT	
		mPtr	song060_14_4
	.byte	PATT	
		mPtr	song060_14_5
	.byte	PATT	
		mPtr	song060_14_6
	.byte	PATT	
		mPtr	song060_14_7
	.byte	PATT	
		mPtr	song060_14_8
	.byte	PATT	
		mPtr	song060_14_1
	.byte	PATT	
		mPtr	song060_14_2
	.byte	PATT	
		mPtr	song060_14_3
	.byte	PATT	
		mPtr	song060_14_4
	.byte	PATT	
		mPtr	song060_14_5
	.byte	PATT	
		mPtr	song060_14_6
	.byte	PATT	
		mPtr	song060_14_7
	.byte	PATT	
		mPtr	song060_14_8
	.byte	PATT	
		mPtr	song060_14_1
	.byte	PATT	
		mPtr	song060_14_2
	.byte	PATT	
		mPtr	song060_14_3
	.byte	PATT	
		mPtr	song060_14_4
	.byte	PATT	
		mPtr	song060_14_5
	.byte	PATT	
		mPtr	song060_14_6
	.byte	PATT	
		mPtr	song060_14_7
	.byte	PATT	
		mPtr	song060_14_8
	.byte	PATT	
		mPtr	song060_14_1
	.byte	PATT	
		mPtr	song060_14_2
	.byte	PATT	
		mPtr	song060_14_3
	.byte	PATT	
		mPtr	song060_14_4
	.byte	PATT	
		mPtr	song060_14_5
	.byte	PATT	
		mPtr	song060_14_6
	.byte	PATT	
		mPtr	song060_14_7
	.byte	PATT	
		mPtr	song060_14_8
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	PATT	
		mPtr	song060_14_1
	.byte	PATT	
		mPtr	song060_14_2
	.byte	PATT	
		mPtr	song060_14_3
	.byte	PATT	
		mPtr	song060_14_4
	.byte	PATT	
		mPtr	song060_14_5
	.byte	PATT	
		mPtr	song060_14_6
	.byte	PATT	
		mPtr	song060_14_7
	.byte	PATT	
		mPtr	song060_14_8
	.byte	GOTO	
		mPtr	song060_14_9
	.byte	W06
	.byte	VOICE	, 16
	.byte	W28
	.byte	W01
	.byte		N07	, Fs3, v084
	.byte	W10
	.byte	VOICE	, 18
	.byte	W02
	.byte		N24	, Bn2, v076
	.byte	W24
	.byte	FINE
    
	mAlignWord
	.global song060
song060:	@ 0x0829B05C
	.byte	14		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

	mAlignWord
	mPtr	voicegroup016		@ voicegroup/tone

	mPtr	song060_1		@ track
	mPtr	song060_2		@ track
	mPtr	song060_3		@ track
	mPtr	song060_4		@ track
	mPtr	song060_5		@ track
	mPtr	song060_6		@ track
	mPtr	song060_7		@ track
	mPtr	song060_8		@ track
	mPtr	song060_9		@ track
	mPtr	song060_10		@ track
	mPtr	song060_11		@ track
	mPtr	song060_12		@ track
	mPtr	song060_13		@ track
	mPtr	song060_14		@ track

	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song067_1
song067_1:	@ 0x082A1294
	.byte	KEYSH	, 0
song067_1_3:
	.byte	TEMPO	, 90
	.byte	VOICE	, 127
	.byte	VOL	, v090
	.byte	PAN	, c_v
	.byte		N11	, Gn7, v127
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Gn7
	.byte	W24
	.byte		N11	
	.byte	W24
song067_1_2:
	.byte		N11	, Gn7, v127
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Gn7
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte	PEND
song067_1_1:
	.byte		N11	, Gn7, v127
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Gn7
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte	PEND
	.byte		N11	
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Gn7
	.byte	W24
	.byte		N05	
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte	PATT	
		mPtr	song067_1_1
	.byte	PATT	
		mPtr	song067_1_2
	.byte	PATT	
		mPtr	song067_1_1
	.byte		N11	, Gn7, v127
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte		N23	, Gn7
	.byte	W06
	.byte		N05	, Dn4
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte		N23	, Gn7
	.byte	W06
	.byte		N05	, Dn4
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte	GOTO	
		mPtr	song067_1_3
	.byte	FINE

	@********************** Track  2 **********************@

	.global song067_2
song067_2:	@ 0x082A130C
	.byte	KEYSH	, 0
song067_2_2:
	.byte	VOICE	, 1
	.byte	VOL	, v087
	.byte	PAN	, c_v
	.byte		N17	, Fn3, v104
	.byte	W24
	.byte		N32	, Cn3
	.byte	W36
	.byte		N17	, Fn3
	.byte	W24
	.byte		TIE	, Fs3
	.byte	W12
	.byte	W88
	.byte	W01
	.byte		EOT	
	.byte	W07
song067_2_1:
	.byte		N17	, Gn3, v104
	.byte	W24
	.byte		N32	, Dn3
	.byte	W36
	.byte		N17	, Gn3
	.byte	W24
	.byte		TIE	, Gs3
	.byte	W12
	.byte	PEND
	.byte	W88
	.byte	W01
	.byte		EOT	
	.byte	W07
	.byte		N17	, Fn3
	.byte	W24
	.byte		N32	, Cn3
	.byte	W36
	.byte		N17	, Fn3
	.byte	W24
	.byte		TIE	, Fs3
	.byte	W12
	.byte	W88
	.byte	W01
	.byte		EOT	
	.byte	W07
	.byte	PATT	
		mPtr	song067_2_1
	.byte	W92
	.byte	W03
	.byte		EOT	, Gs3
	.byte	W01
	.byte	GOTO	
		mPtr	song067_2_2
	.byte	FINE

	@********************** Track  3 **********************@

	.global song067_3
song067_3:	@ 0x082A1357
	.byte	KEYSH	, 0
song067_3_1:
	.byte	VOICE	, 81
	.byte	VOL	, v090
	.byte	PAN	, c_v
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N80	, As3, v072
	.byte	W80
	.byte	W03
	.byte	VOICE	, 80
	.byte	W01
	.byte		TIE	, Cn4, v076
	.byte	W12
	.byte	W92
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte		N80	, Cs4, v080
	.byte	W84
	.byte		TIE	, Dn4, v084
	.byte	W12
	.byte	W90
	.byte		EOT	
	.byte	W06
	.byte	GOTO	
		mPtr	song067_3_1
	.byte	FINE

	@********************** Track  4 **********************@

	.global song067_4
song067_4:	@ 0x082A1384
	.byte	KEYSH	, 0
song067_4_3:
	.byte	VOICE	, 49
	.byte	VOL	, v090
	.byte	PAN	, c_v
	.byte		N09	, Dn2, v127
	.byte	W12
	.byte		N09	
	.byte	W24
	.byte		N11	, Dn1
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte			An1
	.byte	W12
	.byte			Dn1
	.byte	W12
song067_4_1:
	.byte		N11	, Dn2, v127
	.byte	W12
	.byte		N11	
	.byte	W24
	.byte		N23	
	.byte	W24
	.byte		N11	, Cn2
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			As1
	.byte	W12
	.byte	PEND
song067_4_2:
	.byte		N09	, Dn2, v127
	.byte	W12
	.byte		N09	
	.byte	W24
	.byte		N11	, Dn1
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte			An1
	.byte	W12
	.byte			Dn1
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song067_4_1
	.byte	PATT	
		mPtr	song067_4_2
	.byte	PATT	
		mPtr	song067_4_1
	.byte	PATT	
		mPtr	song067_4_2
	.byte	PATT	
		mPtr	song067_4_1
	.byte	GOTO	
		mPtr	song067_4_3
	.byte	FINE

	@********************** Track  5 **********************@

	.global song067_5
song067_5:	@ 0x082A13DA
	.byte	KEYSH	, 0
song067_5_2:
	.byte	VOICE	, 31
	.byte	VOL	, v046
	.byte	PAN	, c_v
	.byte	BEND	, c_v
	.byte	W12
	.byte		N06	, Dn4, v124
	.byte	W12
	.byte			Dn4, v084
	.byte	W12
	.byte			Dn4, v056
	.byte	W12
	.byte			Cn4, v124
	.byte	W12
	.byte			Cn4, v084
	.byte	W12
	.byte			Gn3, v124
	.byte	W12
	.byte			As3
	.byte	W12
	.byte			As3, v084
	.byte	W12
	.byte			As3, v056
	.byte	W24
	.byte			Cn4, v124
	.byte	W12
	.byte			Cn4, v084
	.byte	W12
	.byte			Cn4, v056
	.byte	W36
song067_5_1:
	.byte	W12
	.byte		N06	, Dn4, v124
	.byte	W12
	.byte			Dn4, v084
	.byte	W12
	.byte			Dn4, v056
	.byte	W12
	.byte			Cn4, v124
	.byte	W12
	.byte			Cn4, v084
	.byte	W12
	.byte			Gn3, v124
	.byte	W12
	.byte			As3
	.byte	W12
	.byte	PEND
	.byte			As3, v084
	.byte	W12
	.byte			As3, v056
	.byte	W12
	.byte			Cn4, v084
	.byte	W12
	.byte			Dn4, v124
	.byte	W12
	.byte			Dn4, v084
	.byte	W12
	.byte			Dn4, v056
	.byte	W36
	.byte	PATT	
		mPtr	song067_5_1
	.byte		N06	, As3, v084
	.byte	W12
	.byte			As3, v056
	.byte	W12
	.byte			Cn4, v084
	.byte	W12
	.byte			Dn4, v124
	.byte	W12
	.byte			Dn4, v084
	.byte	W12
	.byte			Gn4, v124
	.byte	W12
	.byte			Gn4, v084
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Gn4, v124
	.byte	W12
	.byte			Gn4, v084
	.byte	W12
	.byte			As4, v124
	.byte	W12
	.byte			Gn4, v084
	.byte	W12
	.byte			Gn4, v056
	.byte	W12
	.byte			Fn4, v124
	.byte	W12
	.byte			Fn4, v084
	.byte	W12
	.byte			Gn4, v124
	.byte	W12
	.byte			Gn4, v084
	.byte	W12
	.byte			Gn4, v056
	.byte	W84
	.byte	GOTO	
		mPtr	song067_5_2
	.byte	FINE
    
	mAlignWord
	.global song067
song067:	@ 0x082A1474
	.byte	5		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

	mAlignWord
	mPtr	voicegroup016		@ voicegroup/tone

	mPtr	song067_1		@ track
	mPtr	song067_2		@ track
	mPtr	song067_3		@ track
	mPtr	song067_4		@ track
	mPtr	song067_5		@ track

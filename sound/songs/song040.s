	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song040_1
song040_1:	@ 0x082837AC
	.byte	KEYSH	, 0
	.byte	TEMPO	, 77
	.byte	VOICE	, 127
	.byte	VOL	, v085
	.byte	PAN	, c_v
	.byte	W03
	.byte	TEMPO	, 77
	.byte	W96
song040_1_7:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song040_1_5:
	.byte	W54
	.byte	W01
	.byte		N05	, En1, v112
	.byte	W17
	.byte		N11	, Fs1
	.byte		N11	, Gs7
	.byte	W12
	.byte		N06	, Fn2, v120
	.byte	W07
	.byte		N05	, Fs1, v112
	.byte	W05
	.byte	PEND
song040_1_1:
	.byte		N18	, Gs7, v112
	.byte	W24
	.byte		N18	
	.byte	W24
	.byte		N18	
	.byte	W24
	.byte		N18	
	.byte	W24
	.byte	PEND
song040_1_2:
	.byte		N18	, Gs7, v112
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte			Fs1
	.byte		N11	, Gs7
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song040_1_1
	.byte	PATT	
		.word	song040_1_2
	.byte	PATT	
		.word	song040_1_1
	.byte	PATT	
		.word	song040_1_2
	.byte	PATT	
		.word	song040_1_1
song040_1_6:
	.byte		N11	, Gs7, v112
	.byte	W24
	.byte			Fs1
	.byte		N11	, Gs7
	.byte	W24
	.byte		N05	
	.byte	W06
	.byte		N08	, Fs1
	.byte	W12
	.byte		N05	
	.byte		N05	, Gs7
	.byte	W12
	.byte		N02	
	.byte	W06
	.byte		N05	, Fs1
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte	PEND
song040_1_3:
	.byte		N11	, Gs7, v112
	.byte	W18
	.byte		N06	, Fs1
	.byte	W06
	.byte		N11	, Gs7
	.byte	W24
	.byte		N06	
	.byte	W06
	.byte		N18	, Fs1
	.byte	W18
	.byte		N11	, Gs7
	.byte	W12
	.byte		N05	, Fs1
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte	PEND
song040_1_4:
	.byte		N11	, Gs7, v112
	.byte	W18
	.byte		N06	, Fs1
	.byte	W06
	.byte		N11	, Gs7
	.byte	W24
	.byte		N05	
	.byte	W18
	.byte		N06	, Fs1
	.byte	W06
	.byte		N12	, Gs7
	.byte	W12
	.byte			Fs1
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song040_1_3
	.byte	PATT	
		.word	song040_1_4
	.byte	PATT	
		.word	song040_1_3
	.byte	PATT	
		.word	song040_1_4
	.byte	PATT	
		.word	song040_1_3
	.byte	PATT	
		.word	song040_1_4
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song040_1_5
	.byte	PATT	
		.word	song040_1_1
	.byte	PATT	
		.word	song040_1_2
	.byte	PATT	
		.word	song040_1_1
	.byte		N18	, Gs7, v112
	.byte	W54
	.byte	W01
	.byte		N05	, En1
	.byte	W17
	.byte		N11	, Fs1
	.byte		N11	, Gs7
	.byte	W12
	.byte		N06	, Fn2, v120
	.byte	W07
	.byte		N05	, Fs1, v112
	.byte	W05
	.byte	PATT	
		.word	song040_1_1
	.byte	PATT	
		.word	song040_1_2
	.byte	PATT	
		.word	song040_1_1
	.byte	PATT	
		.word	song040_1_2
	.byte	PATT	
		.word	song040_1_1
	.byte	PATT	
		.word	song040_1_2
	.byte	PATT	
		.word	song040_1_1
	.byte	PATT	
		.word	song040_1_6
	.byte	PATT	
		.word	song040_1_3
	.byte	PATT	
		.word	song040_1_4
	.byte	PATT	
		.word	song040_1_3
	.byte	PATT	
		.word	song040_1_4
	.byte	PATT	
		.word	song040_1_3
	.byte	PATT	
		.word	song040_1_4
	.byte	PATT	
		.word	song040_1_3
	.byte	PATT	
		.word	song040_1_4
	.byte	PATT	
		.word	song040_1_1
	.byte	PATT	
		.word	song040_1_2
	.byte	PATT	
		.word	song040_1_1
	.byte	PATT	
		.word	song040_1_2
	.byte	PATT	
		.word	song040_1_1
	.byte	PATT	
		.word	song040_1_2
	.byte	PATT	
		.word	song040_1_1
	.byte	PATT	
		.word	song040_1_6
	.byte	PATT	
		.word	song040_1_3
	.byte	PATT	
		.word	song040_1_4
	.byte	PATT	
		.word	song040_1_3
	.byte	PATT	
		.word	song040_1_4
	.byte	PATT	
		.word	song040_1_3
	.byte	PATT	
		.word	song040_1_4
	.byte	PATT	
		.word	song040_1_3
	.byte	PATT	
		.word	song040_1_4
	.byte	PATT	
		.word	song040_1_3
	.byte	PATT	
		.word	song040_1_4
	.byte	PATT	
		.word	song040_1_3
	.byte	PATT	
		.word	song040_1_4
	.byte	PATT	
		.word	song040_1_3
	.byte	PATT	
		.word	song040_1_4
	.byte	PATT	
		.word	song040_1_3
	.byte	PATT	
		.word	song040_1_4
	.byte	W96
	.byte	GOTO	
		.word	song040_1_7
	.byte	FINE

	@********************** Track  2 **********************@

	.global song040_2
song040_2:	@ 0x08283964
	.byte	KEYSH	, 0
	.byte	VOICE	, 60
	.byte	VOL	, v063
	.byte	PAN	, c_v+16
	.byte	W03
song040_2_1:
	.byte		N03	, Fs7, v012
	.byte	W24
	.byte		N03	
	.byte	W24
	.byte		N03	
	.byte	W24
	.byte		N03	
	.byte	W24
	.byte	PEND
song040_2_2:
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	PATT	
		.word	song040_2_1
	.byte	GOTO	
		.word	song040_2_2
	.byte		N03	, Fs7, v012
	.byte	W24
	.byte		N03	
	.byte	W24
	.byte		N03	
	.byte	W24
	.byte		N03	
	.byte	W03
	.byte	FINE

	@********************** Track  3 **********************@

	.global song040_3
song040_3:	@ 0x08283AF0
	.byte	KEYSH	, 0
	.byte	VOICE	, 127
	.byte	VOL	, v088
	.byte	PAN	, c_v
	.byte	W03
song040_3_1:
	.byte		N01	, Ds7, v116
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N02	
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N01	
	.byte	W07
	.byte		N03	
	.byte	W05
	.byte		N06	
	.byte	W07
	.byte		N02	
	.byte	W12
	.byte		N01	
	.byte	W05
	.byte		N06	
	.byte		N08	, As7, v072
	.byte	W07
	.byte		N02	, Ds7, v116
	.byte	W05
	.byte	PEND
song040_3_3:
	.byte	PATT	
		.word	song040_3_1
	.byte	PATT	
		.word	song040_3_1
	.byte	PATT	
		.word	song040_3_1
	.byte	PATT	
		.word	song040_3_1
	.byte	PATT	
		.word	song040_3_1
	.byte	PATT	
		.word	song040_3_1
	.byte	PATT	
		.word	song040_3_1
	.byte	PATT	
		.word	song040_3_1
	.byte	PATT	
		.word	song040_3_1
	.byte	PATT	
		.word	song040_3_1
	.byte	PATT	
		.word	song040_3_1
	.byte	PATT	
		.word	song040_3_1
	.byte	PATT	
		.word	song040_3_1
	.byte	PATT	
		.word	song040_3_1
	.byte	PATT	
		.word	song040_3_1
	.byte	PATT	
		.word	song040_3_1
	.byte	PATT	
		.word	song040_3_1
	.byte	PATT	
		.word	song040_3_1
	.byte	PATT	
		.word	song040_3_1
	.byte	PATT	
		.word	song040_3_1
	.byte	PATT	
		.word	song040_3_1
	.byte	PATT	
		.word	song040_3_1
	.byte	PATT	
		.word	song040_3_1
	.byte	PATT	
		.word	song040_3_1
	.byte	PATT	
		.word	song040_3_1
	.byte	PATT	
		.word	song040_3_1
	.byte	PATT	
		.word	song040_3_1
	.byte	PATT	
		.word	song040_3_1
	.byte	PATT	
		.word	song040_3_1
	.byte	PATT	
		.word	song040_3_1
	.byte	PATT	
		.word	song040_3_1
	.byte	PATT	
		.word	song040_3_1
	.byte	PATT	
		.word	song040_3_1
	.byte	PATT	
		.word	song040_3_1
	.byte	PATT	
		.word	song040_3_1
	.byte	PATT	
		.word	song040_3_1
	.byte	PATT	
		.word	song040_3_1
	.byte	PATT	
		.word	song040_3_1
	.byte	PATT	
		.word	song040_3_1
	.byte	PATT	
		.word	song040_3_1
	.byte	PATT	
		.word	song040_3_1
	.byte	PATT	
		.word	song040_3_1
	.byte	PATT	
		.word	song040_3_1
	.byte	PATT	
		.word	song040_3_1
	.byte	PATT	
		.word	song040_3_1
	.byte	PATT	
		.word	song040_3_1
	.byte	PATT	
		.word	song040_3_1
	.byte	PATT	
		.word	song040_3_1
	.byte	PATT	
		.word	song040_3_1
	.byte	PATT	
		.word	song040_3_1
	.byte	PATT	
		.word	song040_3_1
	.byte	PATT	
		.word	song040_3_1
	.byte	PATT	
		.word	song040_3_1
	.byte	PATT	
		.word	song040_3_1
	.byte	PATT	
		.word	song040_3_1
song040_3_2:
	.byte		N01	, Ds7, v116
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N02	
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N01	
	.byte	W07
	.byte		N03	
	.byte	W05
	.byte		N06	
	.byte	W07
	.byte		N02	
	.byte	W12
	.byte		N01	
	.byte	W05
	.byte		N06	
	.byte	W07
	.byte		N02	
	.byte	W05
	.byte	PEND
	.byte	PATT	
		.word	song040_3_2
	.byte	PATT	
		.word	song040_3_2
	.byte	PATT	
		.word	song040_3_2
	.byte	PATT	
		.word	song040_3_2
	.byte	PATT	
		.word	song040_3_2
	.byte	PATT	
		.word	song040_3_2
	.byte	PATT	
		.word	song040_3_2
	.byte	PATT	
		.word	song040_3_2
	.byte	PATT	
		.word	song040_3_2
	.byte	PATT	
		.word	song040_3_2
	.byte	PATT	
		.word	song040_3_2
	.byte	PATT	
		.word	song040_3_2
	.byte	PATT	
		.word	song040_3_2
	.byte	PATT	
		.word	song040_3_2
	.byte	PATT	
		.word	song040_3_2
	.byte	PATT	
		.word	song040_3_1
	.byte	GOTO	
		.word	song040_3_3
	.byte		N01	, Ds7, v116
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N02	
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N01	
	.byte	W07
	.byte		N03	
	.byte	W05
	.byte		N06	
	.byte	W07
	.byte		N02	
	.byte	W12
	.byte		N01	
	.byte	W05
	.byte		N06	
	.byte		N08	, As7, v072
	.byte	W07
	.byte		N02	, Ds7, v116
	.byte	W02
	.byte	FINE

	@********************** Track  4 **********************@

	.global song040_4
song040_4:	@ 0x08283CB6
	.byte	KEYSH	, 0
	.byte	VOICE	, 46
	.byte	VOL	, v081
	.byte	PAN	, c_v-6
	.byte	W03
song040_4_1:
	.byte	W01
	.byte		N12	, Fs1, v112
	.byte	W11
	.byte		N08	, Fs2
	.byte	W24
	.byte		N03	, Fs1
	.byte	W13
	.byte		N13	
	.byte	W13
	.byte		N08	, Fs2
	.byte	W23
	.byte		N05	, Fs1
	.byte	W11
	.byte	PEND
song040_4_2:
	.byte	W03
	.byte		N13	, En1, v112
	.byte	W11
	.byte		N09	, En2
	.byte	W24
	.byte		N05	, En1
	.byte	W11
	.byte		N13	, Gn1
	.byte	W14
	.byte		N03	, En1
	.byte	W10
	.byte		N13	, An1
	.byte	W12
	.byte		N07	, Gn1
	.byte	W11
	.byte	PEND
	.byte	PATT	
		.word	song040_4_1
	.byte	PATT	
		.word	song040_4_2
	.byte	PATT	
		.word	song040_4_1
	.byte	PATT	
		.word	song040_4_2
	.byte	PATT	
		.word	song040_4_1
	.byte	PATT	
		.word	song040_4_2
	.byte	PATT	
		.word	song040_4_1
song040_4_3:
	.byte	W03
	.byte		N13	, Fs1, v112
	.byte	W11
	.byte		N09	, Fs2
	.byte	W24
	.byte		N05	, Fs1
	.byte	W11
	.byte		N13	, An1
	.byte	W14
	.byte		N03	, Fs1
	.byte	W10
	.byte		N13	, Bn1
	.byte	W12
	.byte		N07	, An1
	.byte	W11
	.byte	PEND
	.byte	PATT	
		.word	song040_4_1
	.byte	PATT	
		.word	song040_4_3
	.byte	PATT	
		.word	song040_4_1
	.byte	PATT	
		.word	song040_4_3
	.byte	PATT	
		.word	song040_4_1
	.byte	PATT	
		.word	song040_4_3
	.byte	PATT	
		.word	song040_4_1
	.byte	PATT	
		.word	song040_4_3
	.byte	PATT	
		.word	song040_4_1
	.byte	PATT	
		.word	song040_4_3
	.byte	PATT	
		.word	song040_4_1
	.byte	PATT	
		.word	song040_4_3
	.byte	PATT	
		.word	song040_4_1
	.byte	PATT	
		.word	song040_4_3
	.byte	PATT	
		.word	song040_4_1
	.byte	PATT	
		.word	song040_4_2
	.byte	PATT	
		.word	song040_4_1
	.byte	PATT	
		.word	song040_4_2
	.byte	PATT	
		.word	song040_4_1
	.byte	PATT	
		.word	song040_4_2
	.byte	PATT	
		.word	song040_4_1
	.byte	PATT	
		.word	song040_4_2
	.byte	PATT	
		.word	song040_4_1
	.byte	PATT	
		.word	song040_4_3
	.byte	PATT	
		.word	song040_4_1
	.byte	PATT	
		.word	song040_4_3
	.byte	PATT	
		.word	song040_4_1
	.byte	PATT	
		.word	song040_4_3
	.byte	PATT	
		.word	song040_4_1
	.byte	PATT	
		.word	song040_4_3
	.byte	PATT	
		.word	song040_4_1
	.byte	PATT	
		.word	song040_4_3
	.byte	PATT	
		.word	song040_4_1
	.byte	PATT	
		.word	song040_4_3
	.byte	PATT	
		.word	song040_4_1
	.byte	PATT	
		.word	song040_4_3
	.byte	PATT	
		.word	song040_4_1
	.byte	PATT	
		.word	song040_4_3
song040_4_4:
	.byte		N12	, Fs1, v112
	.byte	W12
	.byte		N08	, Fs2
	.byte	W24
	.byte		N03	, Fs1
	.byte	W12
	.byte		N13	, Gs1
	.byte	W12
	.byte		N08	, Gs2
	.byte	W24
	.byte		N05	, Gs1
	.byte	W12
	.byte	PEND
song040_4_5:
	.byte		N13	, An1, v112
	.byte	W12
	.byte		N09	, An2
	.byte	W12
	.byte		N05	, An1
	.byte	W12
	.byte		N24	, Bn1
	.byte	W24
	.byte		N03	, Gs1
	.byte	W12
	.byte		N12	, Cs2
	.byte	W12
	.byte		N08	, Bn1
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song040_4_4
song040_4_6:
	.byte		N13	, An1, v112
	.byte	W12
	.byte		N09	, Gs2
	.byte	W24
	.byte		N05	, En1
	.byte	W12
	.byte		N12	, An1
	.byte	W12
	.byte		N03	, Fs1
	.byte	W12
	.byte		N12	, Bn1
	.byte	W12
	.byte		N07	, An1
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song040_4_4
	.byte	PATT	
		.word	song040_4_5
	.byte	PATT	
		.word	song040_4_4
	.byte	PATT	
		.word	song040_4_6
	.byte	PATT	
		.word	song040_4_4
	.byte	PATT	
		.word	song040_4_5
	.byte	PATT	
		.word	song040_4_4
	.byte	PATT	
		.word	song040_4_6
	.byte	PATT	
		.word	song040_4_4
	.byte	PATT	
		.word	song040_4_5
	.byte	PATT	
		.word	song040_4_4
	.byte	PATT	
		.word	song040_4_6
	.byte	PATT	
		.word	song040_4_4
	.byte	PATT	
		.word	song040_4_5
	.byte	PATT	
		.word	song040_4_4
	.byte	PATT	
		.word	song040_4_6
	.byte	PATT	
		.word	song040_4_4
	.byte	PATT	
		.word	song040_4_5
	.byte	PATT	
		.word	song040_4_4
	.byte	PATT	
		.word	song040_4_6
	.byte	PATT	
		.word	song040_4_1
	.byte	GOTO	
		.word	song040_4_2
	.byte	W03
	.byte		N13	, En1, v112
	.byte	W11
	.byte		N09	, En2
	.byte	W24
	.byte		N05	, En1
	.byte	W11
	.byte		N13	, Gn1
	.byte	W14
	.byte		N03	, En1
	.byte	W10
	.byte		N13	, An1
	.byte	W12
	.byte		N07	, Gn1
	.byte	W07
	.byte	FINE

	@********************** Track  5 **********************@

	.global song040_5
song040_5:	@ 0x08283EB1
	.byte	KEYSH	, 0
	.byte	VOICE	, 63
	.byte	VOL	, v088
	.byte	PAN	, c_v-7
	.byte	W03
	.byte	W96
song040_5_1:
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
	.byte		N03	, Fn4, v072
	.byte	W03
	.byte		N56	, Fs4, v080
	.byte	W56
	.byte	W01
	.byte		N06	, En4
	.byte	W06
	.byte		N17	, Fn4
	.byte	W18
	.byte		N12	, An3, v072
	.byte	W12
	.byte		N60	, En4, v076
	.byte	W60
	.byte		N03	, Dn4, v080
	.byte	W03
	.byte		N21	, Ds4, v076
	.byte	W21
	.byte		N12	, Gs3, v064
	.byte	W12
	.byte		N60	, Cs4, v080
	.byte	W60
	.byte		N03	, Bn3, v084
	.byte	W03
	.byte		N21	, Cn4, v080
	.byte	W21
	.byte		N12	, Gs3, v084
	.byte	W12
	.byte		N60	, Bn3, v076
	.byte	W60
	.byte		N06	, Cs4
	.byte	W07
	.byte		N07	, Dn4, v084
	.byte	W07
	.byte		N06	, En4, v060
	.byte	W05
	.byte		N05	, Fs4, v088
	.byte	W05
	.byte		N12	, An4, v092
	.byte	W12
	.byte		N72	, Bn4
	.byte	W72
	.byte		N12	, Cs5, v072
	.byte	W12
	.byte			An4, v088
	.byte	W12
	.byte		N48	, Bn4, v092
	.byte	W60
	.byte		N04	, Bn4, v080
	.byte	W06
	.byte		N06	, Cn5, v068
	.byte	W06
	.byte			Bn4, v072
	.byte	W06
	.byte			An4, v084
	.byte	W06
	.byte		N12	, En4, v088
	.byte	W12
	.byte		N03	, En5, v064
	.byte	W03
	.byte		N56	, Fs5, v076
	.byte	W56
	.byte	W01
	.byte		N03	, Dn5, v068
	.byte	W03
	.byte		N18	, En5
	.byte	W21
	.byte		N11	, An4, v072
	.byte	W12
	.byte			Bn5, v080
	.byte	W12
	.byte		N64	, An5, v088
	.byte	W60
	.byte	W03
	.byte		N03	, Gn5, v040
	.byte	W02
	.byte			Fn5, v056
	.byte	W01
	.byte			Ds5, v064
	.byte	W02
	.byte			Dn5, v056
	.byte	W01
	.byte			Cn5, v068
	.byte	W01
	.byte			As4, v060
	.byte	W02
	.byte			An4, v052
	.byte	W02
	.byte			Gn4, v032
	.byte	W01
	.byte			Fn4, v052
	.byte	W03
	.byte			Ds4, v004
	.byte	W06
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
	.byte	W96
	.byte	GOTO	
		.word	song040_5_1
	.byte	FINE

	@********************** Track  6 **********************@

	.global song040_6
song040_6:	@ 0x08283FA6
	.byte	KEYSH	, 0
	.byte	VOICE	, 65
	.byte	VOL	, v088
	.byte	PAN	, c_v+16
	.byte	W03
	.byte	W96
song040_6_15:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song040_6_1:
	.byte		N16	, Cn5, v116
	.byte	W24
	.byte		N18	
	.byte	W24
	.byte		N11	, As4
	.byte	W12
	.byte		N15	, Cn5
	.byte	W24
	.byte		N24	, Ds5
	.byte	W12
	.byte	PEND
song040_6_2:
	.byte	W12
	.byte		N13	, Dn5, v116
	.byte	W12
	.byte		N10	, Cn5
	.byte	W12
	.byte		N11	, As4
	.byte	W12
	.byte		N24	, Cn5
	.byte	W24
	.byte		N23	, Fn4
	.byte	W24
	.byte	PEND
	.byte		N15	, Dn5
	.byte	W24
	.byte		N16	, Bn4
	.byte	W24
	.byte		N12	, Gn4
	.byte	W12
	.byte		N16	, Fn4
	.byte	W24
	.byte		N22	, Dn5
	.byte	W12
song040_6_3:
	.byte	W12
	.byte		N05	, Gn4, v116
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte		N13	, Fn4
	.byte	W12
	.byte		N12	, Gn4
	.byte	W12
	.byte		N24	, As4
	.byte	W36
	.byte	PEND
	.byte	PATT	
		.word	song040_6_1
	.byte	PATT	
		.word	song040_6_2
	.byte		N15	, Ds5, v116
	.byte	W24
	.byte		N16	, Cn5
	.byte	W24
	.byte		N12	, Gn4
	.byte	W12
	.byte		N16	, Fn4
	.byte	W24
	.byte		N22	, Dn5
	.byte	W12
	.byte	PATT	
		.word	song040_6_3
song040_6_4:
	.byte		N16	, Cn6, v116
	.byte	W24
	.byte		N18	
	.byte	W24
	.byte		N11	, As5
	.byte	W12
	.byte		N15	, Cn6
	.byte	W24
	.byte		N24	, Ds6
	.byte	W12
	.byte	PEND
song040_6_5:
	.byte	W12
	.byte		N13	, Dn6, v116
	.byte	W12
	.byte		N10	, Cn6
	.byte	W12
	.byte		N11	, As5
	.byte	W12
	.byte		N24	, Cn6
	.byte	W24
	.byte		N23	, Fn5
	.byte	W24
	.byte	PEND
	.byte		N15	, Dn6
	.byte	W24
	.byte		N16	, Bn5
	.byte	W24
	.byte		N12	, Gn5
	.byte	W12
	.byte		N16	, Fn5
	.byte	W24
	.byte		N22	, Dn6
	.byte	W12
	.byte	W12
	.byte		N05	, Gn5
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte		N13	, Fn5
	.byte	W12
	.byte		N12	, Gn5
	.byte	W12
	.byte		N24	, As5
	.byte	W36
	.byte	PATT	
		.word	song040_6_4
	.byte	PATT	
		.word	song040_6_5
	.byte		N15	, Ds6, v116
	.byte	W24
	.byte		N16	, Cn6
	.byte	W24
	.byte		N12	, Gn5
	.byte	W12
	.byte		N16	, Fn5
	.byte	W24
	.byte		N22	, Ds6
	.byte	W12
	.byte	W12
	.byte		N05	, Dn6
	.byte	W12
	.byte		N10	, Cn6
	.byte	W12
	.byte		N13	, As5
	.byte	W12
	.byte		N12	, Cn6
	.byte	W12
	.byte		N16	, Ds6
	.byte	W16
	.byte		N07	, Ds6, v088
	.byte	W07
	.byte		N06	, Cn6, v080
	.byte		N03	, Dn6, v088
	.byte	W01
	.byte			Cs6, v060
	.byte	W02
	.byte		N05	, Bn5, v068
	.byte	W03
	.byte		N04	, An5, v060
	.byte	W02
	.byte		N03	, Gn5, v068
	.byte	W02
	.byte		N02	, Fn5, v064
	.byte	W03
	.byte		N68	, Gn4, v088
	.byte	W72
	.byte		N12	, Cn5, v092
	.byte	W12
	.byte		N60	, Fn4, v096
	.byte	W12
song040_6_6:
	.byte	W48
	.byte		N12	, As3, v088
	.byte	W12
	.byte			Cn4, v096
	.byte	W12
	.byte			Ds4, v084
	.byte	W12
	.byte			As3, v088
	.byte	W12
	.byte	PEND
song040_6_7:
	.byte		N68	, Gn4, v080
	.byte	W68
	.byte	W01
	.byte		N03	, En4, v076
	.byte	W03
	.byte		N12	, Fn4, v088
	.byte	W12
	.byte			Cn4, v092
	.byte	W12
	.byte	PEND
song040_6_8:
	.byte		N48	, Ds4, v080
	.byte	W48
	.byte		N12	, As3, v096
	.byte	W12
	.byte			Cn4, v100
	.byte	W12
	.byte			Ds4, v096
	.byte	W12
	.byte			Fn4
	.byte	W12
	.byte	PEND
	.byte		N68	, Gn4, v088
	.byte	W72
	.byte		N12	, Cn5, v092
	.byte	W12
	.byte		N68	, Fn4, v096
	.byte	W12
	.byte	PATT	
		.word	song040_6_6
	.byte	PATT	
		.word	song040_6_7
	.byte	PATT	
		.word	song040_6_8
song040_6_9:
	.byte		N68	, Gn4, v116
	.byte	W68
	.byte	W01
	.byte		N03	, Bn4
	.byte	W03
	.byte		N12	, Cn5
	.byte	W12
	.byte		N68	, Ds5
	.byte	W12
	.byte	PEND
song040_6_10:
	.byte	W56
	.byte	W01
	.byte		N03	, Gn4, v116
	.byte	W03
	.byte		N24	, Gs4
	.byte	W24
	.byte		N12	, Gn4
	.byte	W12
	.byte	PEND
song040_6_11:
	.byte		N84	, Fs4, v116
	.byte	W84
	.byte		N72	, Dn5
	.byte	W12
	.byte	PEND
song040_6_12:
	.byte	W60
	.byte		N24	, Cn5, v116
	.byte	W24
	.byte		N12	, Dn5
	.byte	W12
	.byte	PEND
song040_6_13:
	.byte		N18	, Ds5, v116
	.byte	W18
	.byte			Fn5
	.byte	W18
	.byte		N12	, Cn5
	.byte	W12
	.byte		N80	, Ds5
	.byte	W48
	.byte	PEND
song040_6_14:
	.byte	W32
	.byte	W01
	.byte		N03	, Cn5, v116
	.byte	W03
	.byte		N24	, Dn5
	.byte	W24
	.byte			Cn5
	.byte	W24
	.byte		N12	, As4
	.byte	W12
	.byte	PEND
	.byte		N72	, Gn4
	.byte	W72
	.byte		N12	, Fn4
	.byte	W12
	.byte		N48	, Gn4
	.byte	W12
	.byte	W48
	.byte		N12	, As3
	.byte	W12
	.byte			Cn4
	.byte	W12
	.byte			Ds4
	.byte	W12
	.byte			Fn4
	.byte	W12
	.byte	PATT	
		.word	song040_6_9
	.byte	PATT	
		.word	song040_6_10
	.byte	PATT	
		.word	song040_6_11
	.byte	PATT	
		.word	song040_6_12
	.byte	PATT	
		.word	song040_6_13
	.byte	PATT	
		.word	song040_6_14
	.byte		N72	, Gn4, v116
	.byte	W72
	.byte		N12	, Fn4
	.byte	W12
	.byte		N96	, Gn4
	.byte	W12
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
		.word	song040_6_15
	.byte	FINE

	@********************** Track  7 **********************@

	.global song040_7
song040_7:	@ 0x0828419C
	.byte	KEYSH	, 0
	.byte	VOICE	, 69
	.byte	VOL	, v074
	.byte	PAN	, c_v+46
	.byte	W03
song040_7_1:
	.byte		N22	, Cs4, v112
	.byte	W24
	.byte		N22	
	.byte	W36
	.byte		N12	
	.byte	W12
	.byte		N22	, Cn4, v104
	.byte	W24
	.byte	PEND
song040_7_2:
	.byte		N22	, Bn3, v104
	.byte	W24
	.byte		N22	
	.byte	W36
	.byte		N12	, Bn3, v112
	.byte	W12
	.byte		N24	, Cn4, v108
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song040_7_1
song040_7_3:
	.byte		N22	, Bn3, v104
	.byte	W24
	.byte		N22	
	.byte	W36
	.byte		N12	, Bn3, v112
	.byte	W12
	.byte		N24	, En3, v108
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song040_7_1
	.byte	PATT	
		.word	song040_7_2
	.byte	PATT	
		.word	song040_7_1
	.byte	PATT	
		.word	song040_7_3
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
	.byte	PATT	
		.word	song040_7_1
	.byte	PATT	
		.word	song040_7_2
	.byte	PATT	
		.word	song040_7_1
	.byte	PATT	
		.word	song040_7_3
	.byte	PATT	
		.word	song040_7_1
	.byte	PATT	
		.word	song040_7_2
	.byte	PATT	
		.word	song040_7_1
	.byte	PATT	
		.word	song040_7_3
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
song040_7_4:
	.byte		N12	, Cs4, v080
	.byte	W06
	.byte			Cs3
	.byte	W18
	.byte		N12	
	.byte		N12	, Cs4
	.byte	W24
	.byte			Ds4
	.byte	W06
	.byte			Ds3
	.byte	W18
	.byte		N12	
	.byte		N12	, Ds4
	.byte	W24
	.byte	PEND
song040_7_5:
	.byte		N12	, En4, v080
	.byte	W06
	.byte			En3
	.byte	W18
	.byte		N12	
	.byte		N12	, En4
	.byte	W12
	.byte			Fs4
	.byte	W06
	.byte			Fs3
	.byte	W18
	.byte		N12	
	.byte		N12	, Fs4
	.byte	W24
	.byte			Fs3
	.byte		N12	, Fs4
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song040_7_4
song040_7_6:
	.byte		N12	, En3, v080
	.byte		N12	, En4
	.byte	W12
	.byte			Ds3
	.byte		N12	, Ds4
	.byte	W12
	.byte			Cs3
	.byte		N12	, Cs4
	.byte	W12
	.byte			Bn3
	.byte	W06
	.byte			Bn2
	.byte	W18
	.byte		N12	
	.byte		N12	, Bn3
	.byte	W24
	.byte			Bn2
	.byte		N12	, Bn3
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song040_7_4
	.byte	PATT	
		.word	song040_7_5
	.byte	PATT	
		.word	song040_7_4
	.byte	PATT	
		.word	song040_7_6
song040_7_7:
	.byte		N12	, Cs3, v080
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte			Ds3
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte	PEND
song040_7_8:
	.byte		N12	, En3, v080
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte			Fs3
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song040_7_7
song040_7_9:
	.byte		N12	, En3, v080
	.byte	W12
	.byte			Ds3
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Bn2
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song040_7_7
	.byte	PATT	
		.word	song040_7_8
	.byte	PATT	
		.word	song040_7_7
	.byte	PATT	
		.word	song040_7_9
	.byte	PATT	
		.word	song040_7_7
	.byte	PATT	
		.word	song040_7_8
	.byte	PATT	
		.word	song040_7_7
	.byte	PATT	
		.word	song040_7_9
	.byte	PATT	
		.word	song040_7_7
	.byte	PATT	
		.word	song040_7_8
	.byte	PATT	
		.word	song040_7_7
	.byte	PATT	
		.word	song040_7_9
	.byte	PATT	
		.word	song040_7_1
	.byte	GOTO	
		.word	song040_7_2
	.byte	PATT	
		.word	song040_7_2
	.byte	FINE

	@********************** Track  8 **********************@

	.global song040_8
song040_8:	@ 0x08284307
	.byte	KEYSH	, 0
	.byte	VOICE	, 91
	.byte	VOL	, v077
	.byte	PAN	, c_v+46
	.byte	W03
	.byte	W96
song040_8_1:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		TIE	, An2, v060
	.byte		TIE	, Cs3
	.byte	W96
	.byte	W54
	.byte		EOT	
	.byte	W06
	.byte		N07	
	.byte	W06
	.byte		N18	, Dn3
	.byte	W18
	.byte		N12	, Cs3
	.byte	W12
	.byte		EOT	, An2
	.byte		TIE	, Gs2
	.byte		TIE	, Cn3
	.byte	W96
	.byte	W92
	.byte	W02
	.byte		EOT	, Gs2
	.byte			Cn3
	.byte	W02
	.byte		TIE	, Gn2
	.byte		TIE	, Bn2
	.byte	W96
	.byte	W56
	.byte	W03
	.byte		EOT	, Gn2
	.byte			Bn2
	.byte	W01
	.byte		N32	, Gn2
	.byte		N06	, Cn3
	.byte	W06
	.byte		N18	, Cs3
	.byte	W18
	.byte		N12	, Bn2
	.byte	W12
	.byte		TIE	, Fs2
	.byte		TIE	, An2
	.byte	W96
	.byte	W92
	.byte	W02
	.byte		EOT	, Fs2
	.byte			An2
	.byte	W02
	.byte		TIE	, An3
	.byte		TIE	, Cs4
	.byte	W96
	.byte	W54
	.byte		EOT	
	.byte	W06
	.byte		N07	
	.byte	W06
	.byte		N18	, Dn4
	.byte	W18
	.byte		N12	, Cs4
	.byte	W12
	.byte		EOT	, An3
	.byte		TIE	, Gs3
	.byte		TIE	, Cn4
	.byte	W96
	.byte	W92
	.byte	W02
	.byte		EOT	, Gs3
	.byte			Cn4
	.byte	W02
	.byte		TIE	, Gn3
	.byte		TIE	, Bn3
	.byte	W96
	.byte	W56
	.byte	W03
	.byte		EOT	, Gn3
	.byte			Bn3
	.byte	W01
	.byte		N32	, Gn3
	.byte		N06	, Cn4
	.byte	W06
	.byte		N18	, Cs4
	.byte	W18
	.byte		N12	, Bn3
	.byte	W12
	.byte		TIE	, Fs3
	.byte		TIE	, An3
	.byte	W96
	.byte	W92
	.byte	W02
	.byte		EOT	, Fs3
	.byte			An3
	.byte	W02
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
	.byte	W96
	.byte	GOTO	
		.word	song040_8_1
	.byte	FINE

	@********************** Track  9 **********************@

	.global song040_9
song040_9:	@ 0x082843CC
	.byte	KEYSH	, 0
	.byte	VOICE	, 90
	.byte	VOL	, v090
	.byte	PAN	, c_v-4
	.byte	W03
	.byte	W96
song040_9_6:
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
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song040_9_1:
	.byte		N12	, Cs3, v092
	.byte		N12	, Fs3
	.byte	W24
	.byte			Cs3
	.byte		N12	, Fs3
	.byte	W24
	.byte			Ds3
	.byte		N12	, Gs3
	.byte	W24
	.byte			Ds3
	.byte		N12	, Gs3
	.byte	W24
	.byte	PEND
song040_9_2:
	.byte		N12	, En3, v092
	.byte		N12	, An3
	.byte	W24
	.byte			En3
	.byte		N12	, An3
	.byte	W12
	.byte			Fs3
	.byte		N12	, Bn3
	.byte	W24
	.byte			Fs3
	.byte		N12	, Bn3
	.byte	W24
	.byte			Fs3
	.byte		N12	, Bn3
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song040_9_1
song040_9_3:
	.byte		N12	, En3, v092
	.byte		N12	, An3
	.byte	W12
	.byte			Ds3
	.byte		N12	, Gs3
	.byte	W12
	.byte			Cs3
	.byte		N12	, Fs3
	.byte	W12
	.byte			Bn2
	.byte		N12	, En3
	.byte	W24
	.byte			Bn2
	.byte		N12	, En3
	.byte	W24
	.byte			Bn2
	.byte		N12	, En3
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song040_9_1
	.byte	PATT	
		.word	song040_9_2
	.byte	PATT	
		.word	song040_9_1
	.byte	PATT	
		.word	song040_9_3
song040_9_4:
	.byte		N12	, Cs3, v092
	.byte		N12	, An3
	.byte	W24
	.byte			Cs3
	.byte		N12	, An3
	.byte	W24
	.byte			Ds3
	.byte		N12	, Bn3
	.byte	W24
	.byte			Ds3
	.byte		N12	, Bn3
	.byte	W24
	.byte	PEND
	.byte			En3
	.byte		N12	, Cn4
	.byte	W24
	.byte			En3
	.byte		N12	, Cn4
	.byte	W12
	.byte			Fs3
	.byte		N12	, Dn4
	.byte	W24
	.byte			Fs3
	.byte		N12	, Dn4
	.byte	W24
	.byte			Fs3
	.byte		N12	, Dn4
	.byte	W12
	.byte	PATT	
		.word	song040_9_4
	.byte		N12	, En3, v092
	.byte		N12	, Cn4
	.byte	W12
	.byte			Ds3
	.byte		N12	, Bn3
	.byte	W12
	.byte			Cs3
	.byte		N12	, An3
	.byte	W12
	.byte			Bn2
	.byte		N12	, Gn3
	.byte	W24
	.byte			Bn2
	.byte		N12	, Gn3
	.byte	W24
	.byte			Bn2
	.byte		N12	, Gn3
	.byte	W12
song040_9_5:
	.byte		N12	, Fs3, v092
	.byte		N12	, Cs4
	.byte	W24
	.byte			Fs3
	.byte		N12	, Cs4
	.byte	W24
	.byte			Gs3
	.byte		N12	, Ds4
	.byte	W24
	.byte			Gs3
	.byte		N12	, Ds4
	.byte	W24
	.byte	PEND
	.byte			An3
	.byte		N12	, En4
	.byte	W24
	.byte			An3
	.byte		N12	, En4
	.byte	W12
	.byte			Bn3
	.byte		N12	, Fs4
	.byte	W24
	.byte			Bn3
	.byte		N12	, Fs4
	.byte	W24
	.byte			Bn3
	.byte		N12	, Fs4
	.byte	W12
	.byte	PATT	
		.word	song040_9_5
	.byte		N12	, An3, v092
	.byte		N12	, En4
	.byte	W12
	.byte			Gs3
	.byte		N12	, Ds4
	.byte	W12
	.byte			Fs3
	.byte		N12	, Cs4
	.byte	W12
	.byte			En3
	.byte		N12	, Bn3
	.byte	W24
	.byte			En3
	.byte		N12	, Bn3
	.byte	W24
	.byte			En3
	.byte		N12	, Bn3
	.byte	W12
	.byte	W96
	.byte	GOTO	
		.word	song040_9_6
	.byte	FINE

	@********************** Track  10 **********************@

	.global song040_10
song040_10:	@ 0x082844FE
	.byte	KEYSH	, 0
	.byte	VOICE	, 0
	.byte	VOL	, v085
	.byte	PAN	, c_v-4
	.byte	W03
	.byte	W96
song040_10_10:
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
	.byte	W03
	.byte	PAN	, c_v+16
	.byte		N16	, Fs3, v056
	.byte	W24
	.byte		N18	
	.byte	W24
	.byte		N11	, En3
	.byte	W12
	.byte		N15	, Fs3
	.byte	W24
	.byte		N24	, An3
	.byte	W09
song040_10_1:
	.byte	W15
	.byte		N13	, Gs3, v056
	.byte	W12
	.byte		N10	, Fs3
	.byte	W12
	.byte		N11	, En3
	.byte	W12
	.byte		N24	, Fs3
	.byte	W24
	.byte		N23	, Bn2
	.byte	W21
	.byte	PEND
	.byte	W03
	.byte		N15	, Gs3
	.byte	W24
	.byte		N16	, Fn3
	.byte	W24
	.byte		N12	, Cs3
	.byte	W12
	.byte		N16	, Bn2
	.byte	W24
	.byte		N22	, Gs3
	.byte	W09
song040_10_2:
	.byte	W15
	.byte		N05	, Cs3, v056
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte		N13	, Bn2
	.byte	W12
	.byte		N12	, Cs3
	.byte	W12
	.byte		N24	, En3
	.byte	W32
	.byte	W01
	.byte	PEND
	.byte	W03
	.byte		N16	, Fs3
	.byte	W24
	.byte		N18	
	.byte	W24
	.byte		N11	, En3
	.byte	W12
	.byte		N15	, Fs3
	.byte	W24
	.byte		N24	, An3
	.byte	W09
	.byte	PATT	
		.word	song040_10_1
	.byte	W03
	.byte		N15	, Fs3, v056
	.byte	W24
	.byte		N16	, En3
	.byte	W24
	.byte		N12	, Cs3
	.byte	W12
	.byte		N16	, Bn2
	.byte	W24
	.byte		N22	, Gs3
	.byte	W09
	.byte	PATT	
		.word	song040_10_2
	.byte	W03
	.byte	PAN	, c_v+16
	.byte		N16	, Fs4, v056
	.byte	W24
	.byte		N18	
	.byte	W24
	.byte		N11	, En4
	.byte	W12
	.byte		N15	, Fs4
	.byte	W24
	.byte		N24	, An4
	.byte	W09
song040_10_3:
	.byte	W15
	.byte		N13	, Gs4, v056
	.byte	W12
	.byte		N10	, Fs4
	.byte	W12
	.byte		N11	, En4
	.byte	W12
	.byte		N24	, Fs4
	.byte	W24
	.byte		N23	, Bn3
	.byte	W21
	.byte	PEND
	.byte	W03
	.byte		N15	, Gs4
	.byte	W24
	.byte		N16	, Fn4
	.byte	W24
	.byte		N12	, Cs4
	.byte	W12
	.byte		N16	, Bn3
	.byte	W24
	.byte		N22	, Gs4
	.byte	W09
	.byte	W15
	.byte		N05	, Cs4
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte		N13	, Bn3
	.byte	W12
	.byte		N12	, Cs4
	.byte	W12
	.byte		N24	, En4
	.byte	W32
	.byte	W01
	.byte	W03
	.byte		N16	, Fs4
	.byte	W24
	.byte		N18	
	.byte	W24
	.byte		N11	, En4
	.byte	W12
	.byte		N15	, Fs4
	.byte	W24
	.byte		N24	, An4
	.byte	W09
	.byte	PATT	
		.word	song040_10_3
	.byte	W03
	.byte		N15	, Fs4, v056
	.byte	W24
	.byte		N16	, En4
	.byte	W24
	.byte		N12	, Cs4
	.byte	W12
	.byte		N16	, Bn3
	.byte	W24
	.byte		N22	, Gs4
	.byte	W09
	.byte	W15
	.byte		N05	, Cs4
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte		N13	, Bn3
	.byte	W12
	.byte		N12	, Cs4
	.byte	W12
	.byte		N24	, En4
	.byte	W28
	.byte	W01
	.byte		N05	, En3
	.byte	W04
	.byte		N03	, Fn4, v052
	.byte	W03
	.byte		N56	, Fs4, v060
	.byte	W56
	.byte	W01
	.byte		N06	, En4
	.byte	W06
	.byte		N17	, Fn4
	.byte	W18
	.byte		N12	, An3, v052
	.byte	W12
	.byte		N60	, En4, v056
	.byte	W60
	.byte		N03	, Dn4, v060
	.byte	W03
	.byte		N21	, Ds4, v056
	.byte	W21
	.byte		N12	, Gs3, v044
	.byte	W12
	.byte		N60	, Cs4, v060
	.byte	W60
	.byte		N03	, Bn3, v064
	.byte	W03
	.byte		N21	, Cn4, v060
	.byte	W21
	.byte		N12	, Gs3, v064
	.byte	W12
	.byte		N60	, Bn3, v056
	.byte	W60
	.byte		N06	, Cs4
	.byte	W07
	.byte		N07	, Dn4, v064
	.byte	W07
	.byte		N06	, En4, v040
	.byte	W05
	.byte		N05	, Fs4, v068
	.byte	W05
	.byte		N12	, An4, v072
	.byte	W12
	.byte		N72	, Bn4
	.byte	W72
	.byte		N12	, Cs5, v052
	.byte	W12
	.byte			An4, v068
	.byte	W12
	.byte		N48	, Bn4, v072
	.byte	W60
	.byte		N04	, Bn4, v060
	.byte	W06
	.byte		N06	, Cn5, v048
	.byte	W06
	.byte			Bn4, v052
	.byte	W06
	.byte			An4, v064
	.byte	W06
	.byte		N12	, En4, v068
	.byte	W12
	.byte		N03	, En5, v044
	.byte	W03
	.byte		N56	, Fs5, v056
	.byte	W56
	.byte	W01
	.byte		N03	, Dn5, v048
	.byte	W03
	.byte		N18	, En5
	.byte	W21
	.byte		N11	, An4, v052
	.byte	W12
	.byte			Bn5, v060
	.byte	W12
	.byte		N64	, An5, v068
	.byte	W60
	.byte	W03
	.byte		N03	, Gn5, v020
	.byte	W02
	.byte			Fn5, v036
	.byte	W01
	.byte			Ds5, v044
	.byte	W02
	.byte			Dn5, v036
	.byte	W01
	.byte			Cn5, v048
	.byte	W01
	.byte			As4, v040
	.byte	W02
	.byte			An4, v032
	.byte	W02
	.byte			Gn4, v012
	.byte	W01
	.byte			Fn4, v032
	.byte	W03
	.byte			Ds4, v004
	.byte	W06
song040_10_4:
	.byte	W03
	.byte		N12	, Fs3, v080
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte			Gs3
	.byte	W24
	.byte		N12	
	.byte	W21
	.byte	PEND
song040_10_5:
	.byte	W03
	.byte		N12	, An3, v080
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte			Bn3
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W09
	.byte	PEND
	.byte	PATT	
		.word	song040_10_4
song040_10_6:
	.byte	W03
	.byte		N12	, An3, v080
	.byte	W12
	.byte			Gs3
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte			En3
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W09
	.byte	PEND
	.byte	PATT	
		.word	song040_10_4
	.byte	PATT	
		.word	song040_10_5
	.byte	PATT	
		.word	song040_10_4
	.byte	PATT	
		.word	song040_10_6
song040_10_7:
	.byte	W03
	.byte		N12	, Fs4, v080
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte			Gs4
	.byte	W24
	.byte		N12	
	.byte	W21
	.byte	PEND
song040_10_8:
	.byte	W03
	.byte		N12	, An4, v080
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte			Bn4
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W09
	.byte	PEND
	.byte	PATT	
		.word	song040_10_7
song040_10_9:
	.byte	W03
	.byte		N12	, An4, v080
	.byte	W12
	.byte			Gs4
	.byte	W12
	.byte			Fs4
	.byte	W12
	.byte			En4
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W09
	.byte	PEND
	.byte	PATT	
		.word	song040_10_7
	.byte	PATT	
		.word	song040_10_8
	.byte	PATT	
		.word	song040_10_7
	.byte	PATT	
		.word	song040_10_9
	.byte	W96
	.byte	GOTO	
		.word	song040_10_10
	.byte	FINE

	@********************** Track  11 **********************@

	.global song040_11
song040_11:	@ 0x08284745
	.byte	KEYSH	, 0
	.byte	VOICE	, 21
	.byte	VOL	, v063
	.byte	PAN	, c_v+36
	.byte	W03
	.byte	W96
song040_11_1:
	.byte	W01
	.byte		N06	, Cs5, v080
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Cs5, v068
	.byte	W06
	.byte			Fs4, v064
	.byte	W18
	.byte			Cs5, v080
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Cs5, v068
	.byte	W06
	.byte			Fs4, v064
	.byte	W30
	.byte			Cs5, v068
	.byte	W06
	.byte			Fs4, v064
	.byte	W05
	.byte	PEND
song040_11_2:
	.byte	W01
	.byte		N06	, Cs5, v064
	.byte	W06
	.byte			Fs4, v060
	.byte	W30
	.byte			Cs5, v052
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Cs5, v028
	.byte	W06
	.byte			Fs4, v024
	.byte	W40
	.byte	W01
	.byte	PEND
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song040_11_1
	.byte	PATT	
		.word	song040_11_2
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
	.byte	W96
	.byte	PATT	
		.word	song040_11_1
	.byte	PATT	
		.word	song040_11_2
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song040_11_1
	.byte	PATT	
		.word	song040_11_2
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
	.byte	PATT	
		.word	song040_11_1
	.byte	PATT	
		.word	song040_11_2
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song040_11_1
	.byte	PATT	
		.word	song040_11_2
	.byte	W96
	.byte	W96
song040_11_3:
	.byte	W01
	.byte		N06	, Fs5, v080
	.byte	W06
	.byte			Cs5
	.byte	W06
	.byte			Fs5, v068
	.byte	W06
	.byte			Cs5, v064
	.byte	W18
	.byte			Fs5, v080
	.byte	W06
	.byte			Cs5
	.byte	W06
	.byte			Fs5, v068
	.byte	W06
	.byte			Cs5, v064
	.byte	W30
	.byte			Fs5, v068
	.byte	W06
	.byte			Cs5, v064
	.byte	W05
	.byte	PEND
song040_11_4:
	.byte	W01
	.byte		N06	, Fs5, v064
	.byte	W06
	.byte			Cs5, v060
	.byte	W30
	.byte			Fs5, v052
	.byte	W06
	.byte			Cs5
	.byte	W06
	.byte			Fs5, v028
	.byte	W06
	.byte			Cs5, v024
	.byte	W40
	.byte	W01
	.byte	PEND
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song040_11_3
	.byte	PATT	
		.word	song040_11_4
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	song040_11_1
	.byte	PATT	
		.word	song040_11_1
	.byte	W01
	.byte	FINE

	@********************** Track  12 **********************@

	.global song040_12
song040_12:	@ 0x08284837
	.byte	KEYSH	, 0
	.byte	VOICE	, 21
	.byte	VOL	, v063
	.byte	PAN	, c_v-39
	.byte	W03
	.byte	W96
song040_12_1:
	.byte	W24
	.byte	W01
	.byte		N06	, Cs5, v080
	.byte	W06
	.byte			Fs4, v076
	.byte	W06
	.byte			Cs5, v056
	.byte	W06
	.byte			Fs4, v052
	.byte	W18
	.byte			Cs5, v080
	.byte	W06
	.byte			Fs4, v076
	.byte	W06
	.byte			Cs5, v056
	.byte	W06
	.byte			Fs4, v052
	.byte	W17
	.byte	PEND
song040_12_2:
	.byte	W13
	.byte		N06	, Cs5, v056
	.byte	W06
	.byte			Fs4, v052
	.byte	W06
	.byte			Cs5, v032
	.byte	W06
	.byte			Fs4, v028
	.byte	W21
	.byte		N05	, Cs5, v032
	.byte	W06
	.byte		N06	, Fs4, v028
	.byte	W06
	.byte			Cs5, v004
	.byte	W06
	.byte			Fs4
	.byte	W24
	.byte	W02
	.byte	PEND
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song040_12_1
	.byte	PATT	
		.word	song040_12_2
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
	.byte	W96
	.byte	PATT	
		.word	song040_12_1
	.byte	PATT	
		.word	song040_12_2
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song040_12_1
	.byte	PATT	
		.word	song040_12_2
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
	.byte	PATT	
		.word	song040_12_1
	.byte	PATT	
		.word	song040_12_2
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song040_12_1
	.byte	PATT	
		.word	song040_12_2
	.byte	W96
	.byte	W96
song040_12_3:
	.byte	W24
	.byte	W01
	.byte		N06	, Fs5, v080
	.byte	W06
	.byte			Cs5, v076
	.byte	W06
	.byte			Fs5, v056
	.byte	W06
	.byte			Cs5, v052
	.byte	W18
	.byte			Fs5, v080
	.byte	W06
	.byte			Cs5, v076
	.byte	W06
	.byte			Fs5, v056
	.byte	W06
	.byte			Cs5, v052
	.byte	W17
	.byte	PEND
song040_12_4:
	.byte	W13
	.byte		N06	, Fs5, v056
	.byte	W06
	.byte			Cs5, v052
	.byte	W06
	.byte			Fs5, v032
	.byte	W06
	.byte			Cs5, v028
	.byte	W21
	.byte		N05	, Fs5, v032
	.byte	W06
	.byte		N06	, Cs5, v028
	.byte	W06
	.byte			Fs5, v004
	.byte	W06
	.byte			Cs5
	.byte	W24
	.byte	W02
	.byte	PEND
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song040_12_3
	.byte	PATT	
		.word	song040_12_4
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	song040_12_1
	.byte	W24
	.byte	W01
	.byte		N06	, Cs5, v080
	.byte	W06
	.byte			Fs4, v076
	.byte	W06
	.byte			Cs5, v056
	.byte	W06
	.byte			Fs4, v052
	.byte	W18
	.byte			Cs5, v080
	.byte	W06
	.byte			Fs4, v076
	.byte	W06
	.byte			Cs5, v056
	.byte	W06
	.byte			Fs4, v052
	.byte	W06
	.byte	FINE

	@********************** Track  13 **********************@

	.global song040_13
song040_13:	@ 0x08284948
	.byte	KEYSH	, 0
	.byte	VOICE	, 83
	.byte	VOL	, v085
	.byte	PAN	, c_v-34
	.byte	W03
song040_13_1:
	.byte		N06	, Cs1, v100
	.byte	W06
	.byte			Dn1
	.byte	W06
	.byte			Ds1
	.byte	W06
	.byte		N05	, En1
	.byte	W06
	.byte		N06	, Fn1
	.byte	W06
	.byte			Fs1
	.byte	W06
	.byte			Gn1
	.byte	W06
	.byte		N05	, Gs1
	.byte	W05
	.byte		N06	, An1
	.byte	W06
	.byte			As1
	.byte	W07
	.byte		N05	, Bn1
	.byte	W06
	.byte			Cn2
	.byte	W05
	.byte			Cs2
	.byte	W06
	.byte		N06	, Dn2
	.byte	W07
	.byte		N05	, Ds2
	.byte	W06
	.byte			En2
	.byte	W06
	.byte	PEND
song040_13_9:
	.byte	PATT	
		.word	song040_13_1
song040_13_2:
	.byte		N06	, Cs1, v100
	.byte	W06
	.byte			Dn1
	.byte	W06
	.byte			Ds1
	.byte	W06
	.byte		N05	, En1
	.byte	W06
	.byte		N06	, Fn1
	.byte	W06
	.byte			Fs1
	.byte	W06
	.byte			Gn1
	.byte	W06
	.byte		N05	, Gs1
	.byte	W05
	.byte		N06	, An1
	.byte	W06
	.byte			As1
	.byte	W07
	.byte		N05	, Bn1
	.byte	W06
	.byte			Cn2
	.byte	W05
	.byte			Cs2
	.byte	W06
	.byte		N06	, Dn2
	.byte	W07
	.byte		N05	, Ds2
	.byte	W06
	.byte			En2
	.byte	W05
	.byte		N06	, An1
	.byte	W01
	.byte	PEND
song040_13_3:
	.byte	W05
	.byte		N06	, As1, v100
	.byte	W07
	.byte		N05	, Bn1
	.byte	W06
	.byte			Cn2
	.byte	W42
	.byte			Bn1
	.byte	W06
	.byte			Cn2
	.byte	W05
	.byte			Cs2
	.byte	W06
	.byte		N06	, Dn2
	.byte	W07
	.byte		N05	, Ds2
	.byte	W06
	.byte			En2
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song040_13_1
	.byte	PATT	
		.word	song040_13_1
	.byte	PATT	
		.word	song040_13_2
	.byte	PATT	
		.word	song040_13_3
song040_13_4:
	.byte		N06	, Cs1, v076
	.byte	W06
	.byte			Dn1
	.byte	W06
	.byte			Ds1
	.byte	W06
	.byte		N05	, En1
	.byte	W06
	.byte		N06	, Fn1
	.byte	W06
	.byte			Fs1
	.byte	W06
	.byte			Gn1
	.byte	W06
	.byte		N05	, Gs1
	.byte	W05
	.byte		N06	, An1
	.byte	W06
	.byte			As1
	.byte	W07
	.byte		N05	, Bn1
	.byte	W06
	.byte			Cn2
	.byte	W05
	.byte			Cs2
	.byte	W06
	.byte		N06	, Dn2
	.byte	W07
	.byte		N05	, Ds2
	.byte	W06
	.byte			En2
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song040_13_4
	.byte	PATT	
		.word	song040_13_4
	.byte	PATT	
		.word	song040_13_4
	.byte	PATT	
		.word	song040_13_4
	.byte	PATT	
		.word	song040_13_4
	.byte	PATT	
		.word	song040_13_4
	.byte	PATT	
		.word	song040_13_4
	.byte	PATT	
		.word	song040_13_4
	.byte	PATT	
		.word	song040_13_4
	.byte	PATT	
		.word	song040_13_4
	.byte	PATT	
		.word	song040_13_4
	.byte	PATT	
		.word	song040_13_4
	.byte	PATT	
		.word	song040_13_4
	.byte	PATT	
		.word	song040_13_4
	.byte	PATT	
		.word	song040_13_4
song040_13_6:
	.byte		N01	, Gn2, v060
	.byte	W01
	.byte		N04	
	.byte	W05
	.byte			An2
	.byte	W06
	.byte		N06	, Bn2
	.byte	W06
	.byte		N03	, Cn3
	.byte	W06
	.byte			Dn3
	.byte	W03
	.byte			Ds3
	.byte	W03
	.byte			En3
	.byte	W06
	.byte			Fn3
	.byte	W03
	.byte			Fs3
	.byte	W03
	.byte			Gs3
	.byte	W03
	.byte			An3
	.byte	W03
	.byte		N05	, Cn4
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte		N04	, Dn4
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte		N03	, Fs3
	.byte	W03
	.byte			Gn4
	.byte	W03
	.byte		N05	, An4
	.byte	W06
	.byte		N02	, Fs3
	.byte	W06
	.byte		N03	, Fs4
	.byte	W06
	.byte	PEND
song040_13_5:
	.byte		N01	, Gn2, v060
	.byte		N01	, Dn3
	.byte	W01
	.byte		N04	
	.byte	W05
	.byte		N04	
	.byte	W06
	.byte		N06	, Bn2
	.byte	W06
	.byte		N03	, Dn3
	.byte	W06
	.byte		N03	
	.byte	W03
	.byte			Ds3
	.byte	W03
	.byte			En3
	.byte	W06
	.byte			Fn3
	.byte	W03
	.byte			Fs3
	.byte	W03
	.byte			Gs3
	.byte	W03
	.byte			An3
	.byte	W03
	.byte		N01	, Dn3
	.byte	W01
	.byte		N04	
	.byte	W05
	.byte		N04	
	.byte	W06
	.byte		N06	, Bn2
	.byte	W06
	.byte		N03	, Dn3
	.byte	W06
	.byte		N03	
	.byte	W03
	.byte			Ds3
	.byte	W03
	.byte			En3
	.byte	W06
	.byte			Fn3
	.byte	W03
	.byte			Fs3
	.byte	W03
	.byte			Gs3
	.byte	W03
	.byte			An3
	.byte	W03
	.byte	PEND
song040_13_7:
	.byte	W01
	.byte		N04	, Gn2, v060
	.byte	W05
	.byte			An2
	.byte	W06
	.byte		N06	, Bn2
	.byte	W06
	.byte		N03	, Cn3
	.byte	W06
	.byte			Dn3
	.byte	W03
	.byte			Ds3
	.byte	W03
	.byte			En3
	.byte	W06
	.byte			Fn3
	.byte	W03
	.byte			Fs3
	.byte	W03
	.byte			Gs3
	.byte	W03
	.byte			An3
	.byte	W03
	.byte		N05	, Cn4
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte		N04	, Dn4
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte		N03	, Fs3
	.byte	W03
	.byte			Gn4
	.byte	W03
	.byte		N05	, An4
	.byte	W06
	.byte		N02	, Fs3
	.byte	W06
	.byte		N03	, Fs4
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song040_13_5
song040_13_8:
	.byte		N01	, Dn3, v060
	.byte	W01
	.byte		N04	
	.byte	W05
	.byte			An2
	.byte	W06
	.byte		N06	, Bn2
	.byte	W06
	.byte		N03	, Cn3
	.byte	W06
	.byte			Dn3
	.byte	W03
	.byte			Ds3
	.byte	W03
	.byte			En3
	.byte	W06
	.byte			Fn3
	.byte	W03
	.byte			Fs3
	.byte	W03
	.byte			Gs3
	.byte	W03
	.byte			An3
	.byte	W03
	.byte		N05	, As3
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte		N04	, Dn4
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte		N03	, Fs4
	.byte	W03
	.byte			Gn4
	.byte	W03
	.byte		N05	, An4
	.byte	W06
	.byte		N02	, Fs3
	.byte	W06
	.byte		N03	, Fs4
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song040_13_5
	.byte	W01
	.byte		N04	, Gn2, v060
	.byte	W05
	.byte			An2
	.byte	W06
	.byte		N06	, Bn2
	.byte	W06
	.byte		N03	, Cn3
	.byte	W06
	.byte			Dn3
	.byte	W03
	.byte			Ds3
	.byte	W03
	.byte			En3
	.byte	W06
	.byte			Fn3
	.byte	W03
	.byte			Fs3
	.byte	W03
	.byte			Gs3
	.byte	W03
	.byte			An3
	.byte	W03
	.byte		N05	, Cn4
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte		N04	, Dn4
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte		N03	, Fs3
	.byte	W03
	.byte			Gn4
	.byte	W03
	.byte		N05	, An4
	.byte	W06
	.byte		N02	, Fs3
	.byte	W06
	.byte		N03	, Fs4
	.byte	W05
	.byte		N06	, An1, v092
	.byte	W01
	.byte	W05
	.byte			As1
	.byte	W07
	.byte		N05	, Bn1
	.byte	W06
	.byte			Cn2
	.byte	W42
	.byte			Bn1
	.byte	W06
	.byte			Cn2
	.byte	W05
	.byte			Cs2
	.byte	W06
	.byte		N06	, Dn2
	.byte	W07
	.byte		N05	, Ds2
	.byte	W06
	.byte			En2
	.byte	W06
	.byte	PATT	
		.word	song040_13_4
	.byte	PATT	
		.word	song040_13_4
	.byte	PATT	
		.word	song040_13_4
	.byte	PATT	
		.word	song040_13_4
	.byte	PATT	
		.word	song040_13_4
	.byte	PATT	
		.word	song040_13_4
	.byte	PATT	
		.word	song040_13_4
	.byte	PATT	
		.word	song040_13_4
	.byte	PATT	
		.word	song040_13_4
	.byte	PATT	
		.word	song040_13_4
	.byte	PATT	
		.word	song040_13_4
	.byte	PATT	
		.word	song040_13_4
	.byte	PATT	
		.word	song040_13_4
	.byte	PATT	
		.word	song040_13_4
	.byte	PATT	
		.word	song040_13_4
	.byte	PATT	
		.word	song040_13_4
	.byte	PATT	
		.word	song040_13_6
	.byte	PATT	
		.word	song040_13_5
	.byte	PATT	
		.word	song040_13_7
	.byte	PATT	
		.word	song040_13_5
	.byte	PATT	
		.word	song040_13_8
	.byte	PATT	
		.word	song040_13_5
	.byte	PATT	
		.word	song040_13_7
	.byte	PATT	
		.word	song040_13_5
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
	.byte	PATT	
		.word	song040_13_1
	.byte	GOTO	
		.word	song040_13_9
	.byte	PATT	
		.word	song040_13_1
	.byte	FINE

	@********************** Track  14 **********************@

	.global song040_14
song040_14:	@ 0x08284C16
	.byte	KEYSH	, 0
	.byte	VOICE	, 83
	.byte	VOL	, v063
	.byte	PAN	, c_v+56
	.byte	W03
	.byte	W96
song040_14_1:
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
	.byte		N01	, Gn2, v068
	.byte		N01	, Dn3
	.byte	W01
	.byte		N04	
	.byte	W05
	.byte		N04	
	.byte	W06
	.byte		N06	, Bn2
	.byte	W06
	.byte		N03	, Dn3
	.byte	W06
	.byte		N03	
	.byte	W03
	.byte			Ds3
	.byte	W03
	.byte			En3
	.byte	W06
	.byte			Fn3
	.byte	W03
	.byte			Fs3
	.byte	W03
	.byte			Gs3
	.byte	W03
	.byte			An3
	.byte	W03
	.byte		N01	, Dn3
	.byte	W01
	.byte		N04	
	.byte	W05
	.byte		N04	
	.byte	W06
	.byte		N06	, Bn2
	.byte	W06
	.byte		N03	, Dn3
	.byte	W06
	.byte		N03	
	.byte	W03
	.byte			Ds3
	.byte	W03
	.byte			En3
	.byte	W06
	.byte			Fn3
	.byte	W03
	.byte			Fs3
	.byte	W03
	.byte			Gs3
	.byte	W03
	.byte			An3
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
		.word	song040_14_1
	.byte	FINE
    
	mAlignWord
	.global song040
song040:	@ 0x08284CA8
	.byte	14		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	mAlignWord
	.word	voicegroup008		@ voicegroup/tone

	.word	song040_1		@ track
	.word	song040_2		@ track
	.word	song040_3		@ track
	.word	song040_4		@ track
	.word	song040_5		@ track
	.word	song040_6		@ track
	.word	song040_7		@ track
	.word	song040_8		@ track
	.word	song040_9		@ track
	.word	song040_10		@ track
	.word	song040_11		@ track
	.word	song040_12		@ track
	.word	song040_13		@ track
	.word	song040_14		@ track

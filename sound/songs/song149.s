	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song149_1
song149_1:	@ 0x082AF92C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 39
	.byte	MOD	, 29
	.byte	VOL	, v089
	.byte	PAN	, c_v
	.byte	BENDR	, 15
	.byte	BEND	, c_v+31
	.byte		N96	, Dn4, v116
	.byte	W03
	.byte	BEND	, c_v+29
	.byte	W03
	.byte		c_v+27
	.byte	W03
	.byte		c_v+25
	.byte	W03
	.byte		c_v+23
	.byte	W03
	.byte		c_v+21
	.byte	W03
	.byte		c_v+19
	.byte	W03
	.byte		c_v+17
	.byte	W03
	.byte		c_v+15
	.byte	W03
	.byte		c_v+13
	.byte	W03
	.byte		c_v+11
	.byte	W03
	.byte		c_v+9
	.byte	W03
	.byte		c_v+7
	.byte	W03
	.byte		c_v+5
	.byte	W03
	.byte		c_v+3
	.byte	W03
	.byte		c_v+1
	.byte	W03
	.byte		c_v-1
	.byte	W03
	.byte		c_v-3
	.byte	W03
	.byte		c_v-5
	.byte	W03
	.byte		c_v-7
	.byte	W03
	.byte		c_v-9
	.byte	W03
	.byte		c_v-11
	.byte	W03
	.byte		c_v-13
	.byte	W03
	.byte		c_v-15
	.byte	W03
	.byte		c_v-17
	.byte	W03
	.byte		c_v-19
	.byte	W03
	.byte		c_v-21
	.byte	W03
	.byte		c_v-23
	.byte	W03
	.byte		c_v-25
	.byte	W03
	.byte		c_v-27
	.byte	W03
	.byte		c_v-29
	.byte	W03
	.byte		c_v-31
	.byte	W03
	.byte	FINE

	.align 2
	.global song149
song149:	@ 0x082AF980
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup001		@ voicegroup/tone

	.word	song149_1		@ track

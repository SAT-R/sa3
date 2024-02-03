	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song532_1
song532_1:	@ 0x082B0D18
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 28
	.byte	VOL	, v120
	.byte	BENDR	, 15
	.byte	LFOS	, 127
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	MOD	, 127
	.byte	PAN	, c_v
	.byte		TIE	, Fs3, v060
	.byte	W02
	.byte	BEND	, c_v-63
	.byte	W01
	.byte		c_v-62
	.byte	W01
	.byte		c_v-61
	.byte	W01
	.byte		c_v-60
	.byte	W01
	.byte		c_v-59
	.byte	W01
	.byte		c_v-58
	.byte	W01
	.byte		c_v-57
	.byte	W01
	.byte		c_v-56
	.byte	W01
	.byte		c_v-55
	.byte	W01
	.byte		c_v-54
	.byte	W01
	.byte		c_v-53
	.byte	W01
	.byte		c_v-51
	.byte	W01
	.byte		c_v-50
	.byte	W01
	.byte		c_v-49
	.byte	W01
	.byte		c_v-48
	.byte	W01
	.byte		c_v-47
	.byte	W01
	.byte		c_v-46
	.byte	W01
	.byte		c_v-45
	.byte	W01
	.byte		c_v-44
	.byte	W01
	.byte		c_v-43
	.byte	W01
	.byte		c_v-42
	.byte	W01
	.byte		c_v-41
	.byte	W01
	.byte		c_v-39
	.byte	W01
	.byte		c_v-38
	.byte	W01
	.byte		c_v-37
	.byte	W01
	.byte		c_v-36
	.byte	W01
	.byte		c_v-35
	.byte	W01
	.byte		c_v-34
	.byte	W01
	.byte		c_v-33
	.byte	W01
	.byte		c_v-32
	.byte	W01
	.byte		c_v-31
	.byte	W01
	.byte		c_v-30
	.byte	W01
	.byte		c_v-29
	.byte	W01
	.byte		c_v-27
	.byte	W01
	.byte		c_v-26
	.byte	W01
	.byte		c_v-25
	.byte	W01
	.byte		c_v-24
	.byte	W01
	.byte		c_v-23
	.byte	W01
	.byte		c_v-22
	.byte	W01
	.byte		c_v-21
	.byte	W01
	.byte		c_v-20
	.byte	W01
	.byte		c_v-19
	.byte	W01
	.byte		c_v-18
	.byte	W01
	.byte		c_v-17
	.byte	W01
	.byte		c_v-15
	.byte	W01
	.byte		c_v-14
	.byte	W01
	.byte		c_v-13
	.byte	W01
	.byte		c_v-12
	.byte	W01
	.byte		c_v-11
	.byte	W01
	.byte		c_v-10
	.byte	W01
	.byte		c_v-9
	.byte	W01
	.byte		c_v-8
	.byte	W01
	.byte		c_v-7
	.byte	W01
	.byte		c_v-6
	.byte	W01
	.byte		c_v-5
	.byte	W16
song532_1_1:
	.byte	W24
	.byte	W72
	.byte	GOTO	
		.word	song532_1_1
	.byte	W23
	.byte		EOT	, Fs3
	.byte	W01
	.byte	FINE

	.align 2
	.global song532
song532:	@ 0x082B0DAC
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	song532_1		@ track

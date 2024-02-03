	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song290_1
song290_1:	@ 0x082B0604
	.byte	KEYSH	, 0
	.byte	TEMPO	, 63
	.byte	VOICE	, 101
	.byte	VOL	, v100
	.byte	BENDR	, 18
	.byte	LFOS	, 30
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 0
	.byte	BEND	, c_v+63
	.byte		TIE	, Fn4, v127
	.byte	W01
	.byte	VOL	, v099
	.byte	BEND	, c_v+32
	.byte	W01
	.byte	VOL	, v097
	.byte	BEND	, c_v
	.byte	W01
	.byte	VOL	, v096
	.byte	BEND	, c_v-32
	.byte	W01
	.byte	VOL	, v095
	.byte	BEND	, c_v-64
	.byte	W01
	.byte	VOL	, v094
	.byte	BEND	, c_v-33
	.byte	W01
	.byte	VOL	, v092
	.byte	BEND	, c_v-1
	.byte	W01
	.byte	VOL	, v091
	.byte	BEND	, c_v+31
	.byte	W01
	.byte	VOL	, v090
	.byte	BEND	, c_v+63
	.byte	W01
	.byte	VOL	, v088
	.byte	BEND	, c_v+63
	.byte	W01
	.byte	VOL	, v088
	.byte	BEND	, c_v+59
	.byte	W01
	.byte	VOL	, v086
	.byte	BEND	, c_v+54
	.byte	W01
	.byte	VOL	, v085
	.byte	BEND	, c_v+50
	.byte	W01
	.byte	VOL	, v084
	.byte	BEND	, c_v+45
	.byte	W01
	.byte	VOL	, v082
	.byte	BEND	, c_v+41
	.byte	W01
	.byte	VOL	, v081
	.byte	BEND	, c_v+36
	.byte	W01
	.byte	VOL	, v080
	.byte	BEND	, c_v+32
	.byte	W01
	.byte	VOL	, v079
	.byte	BEND	, c_v+27
	.byte	W01
	.byte	VOL	, v077
	.byte	BEND	, c_v+23
	.byte	W01
	.byte	VOL	, v076
	.byte	BEND	, c_v+18
	.byte	W01
	.byte	VOL	, v075
	.byte	BEND	, c_v+14
	.byte	W01
	.byte	VOL	, v074
	.byte	BEND	, c_v+9
	.byte	W01
	.byte	VOL	, v073
	.byte	BEND	, c_v+4
	.byte	W01
	.byte	VOL	, v071
	.byte	BEND	, c_v
	.byte	W01
	.byte	VOL	, v070
	.byte	BEND	, c_v-5
	.byte	W01
	.byte		c_v-9
	.byte	W01
	.byte		c_v-14
	.byte	W04
	.byte	VOL	, v062
	.byte	W06
	.byte		v055
	.byte	W06
	.byte		v048
	.byte	W06
song290_1_1:
	.byte	VOL	, v040
	.byte	W06
	.byte		v033
	.byte	W06
	.byte		v025
	.byte	W06
	.byte		v018
	.byte	W30
	.byte	W48
	.byte	GOTO	
		.word	song290_1_1
	.byte	W07
	.byte		EOT	, Fn4
	.byte	FINE

	.align 2
	.global song290
song290:	@ 0x082B06B4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup002		@ voicegroup/tone

	.word	song290_1		@ track

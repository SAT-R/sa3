.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start sub_8002414
sub_8002414: @ 0x08002414
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _080024E0 @ =Task_8003FEC
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _080024E4 @ =TaskDestructor_8003D28
	str r1, [sp]
	movs r1, #0x60
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	movs r3, #0
	movs r1, #0
	strh r1, [r0]
	ldr r0, _080024E8 @ =0x03000004
	adds r7, r2, r0
	ldr r0, _080024EC @ =0x06012800
	str r0, [r7]
	ldr r6, _080024F0 @ =0x00000593
	strh r6, [r7, #0xc]
	strb r3, [r7, #0x1a]
	strh r1, [r7, #0x14]
	strh r1, [r7, #0x10]
	movs r0, #0x50
	mov r8, r0
	mov r0, r8
	strh r0, [r7, #0x12]
	strh r1, [r7, #0xe]
	strh r1, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r5, #0x10
	strb r5, [r7, #0x1c]
	strb r3, [r7, #0x1f]
	movs r4, #1
	rsbs r4, r4, #0
	str r4, [r7, #0x20]
	str r1, [r7, #8]
	ldr r0, _080024F4 @ =0x0300002C
	adds r7, r2, r0
	ldr r0, _080024F8 @ =0x060129C0
	str r0, [r7]
	strh r6, [r7, #0xc]
	movs r0, #1
	strb r0, [r7, #0x1a]
	strh r1, [r7, #0x14]
	strh r1, [r7, #0x10]
	mov r0, r8
	strh r0, [r7, #0x12]
	strh r1, [r7, #0xe]
	strh r1, [r7, #0x16]
	adds r0, r4, #0
	strb r0, [r7, #0x1b]
	strb r5, [r7, #0x1c]
	strb r3, [r7, #0x1f]
	str r4, [r7, #0x20]
	str r1, [r7, #8]
	ldr r1, _080024FC @ =gStageData
	movs r0, #7
	strb r0, [r1, #4]
	movs r1, #0
	ldr r6, _08002500 @ =gPlayers
	movs r5, #0x9e
	lsls r5, r5, #1
	movs r3, #0
	ldr r4, _08002504 @ =0x0000013D
_080024A4:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r1, r1, r6
	adds r2, r1, r5
	strb r3, [r2]
	adds r1, r1, r4
	strb r3, [r1]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _080024A4
	bl sub_80299FC
	movs r0, #0x52 @ MUS_GAME_OVER
	bl m4aSongNumStart
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080024E0: .4byte Task_8003FEC
_080024E4: .4byte TaskDestructor_8003D28
_080024E8: .4byte 0x03000004
_080024EC: .4byte 0x06012800
_080024F0: .4byte 0x00000593
_080024F4: .4byte 0x0300002C
_080024F8: .4byte VRAM + 0x000129C0
_080024FC: .4byte gStageData
_08002500: .4byte gPlayers
_08002504: .4byte 0x0000013D

	thumb_func_start sub_8002508
sub_8002508: @ 0x08002508
	push {r4, r5, lr}
	ldr r4, _08002564 @ =gStageData
	ldrb r0, [r4, #4]
	adds r3, r4, #0
	cmp r0, #6
	beq _0800259E
	ldrb r0, [r3, #6]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r2, _08002568 @ =gPlayers
	adds r1, r1, r2
	adds r0, r1, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r5, r0, #0x1c
	adds r1, #0x2b
	ldrb r1, [r1]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r1, r0, #0x1c
	ldrb r0, [r3, #0xa]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _08002570
	ldr r2, _0800256C @ =0x0000FFFE
	adds r0, r2, #0
	ldrb r2, [r3, #0xa]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	b _08002572
	.align 2, 0
_08002564: .4byte gStageData
_08002568: .4byte gPlayers
_0800256C: .4byte 0x0000FFFE
_08002570:
	movs r2, #4
_08002572:
	movs r0, #6
	strb r0, [r4, #4]
	adds r0, r3, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _08002592
	ldr r0, _080025A4 @ =gLoadedSaveGame
	adds r0, #0x22
	ldrb r3, [r3, #9]
	adds r3, r0, r3
	ldrb r0, [r3]
	cmp r0, #8
	bhi _08002592
	adds r0, #1
	strb r0, [r3]
_08002592:
	adds r0, r5, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r3, #0
	bl sub_8053284
_0800259E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080025A4: .4byte gLoadedSaveGame

	thumb_func_start AddRings
AddRings: @ 0x080025A8
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r6, _080025FC @ =gStageData
	adds r1, r6, #0
	adds r1, #0xac
	ldrh r5, [r1]
	adds r0, r5, r0
	strh r0, [r1]
	ldrh r0, [r6, #0xe]
	cmp r0, #0x48
	beq _080025E6
	ldrh r0, [r1]
	movs r1, #0x64
	bl Div
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #0x64
	bl Div
	cmp r4, r0
	beq _080025E6
	ldrb r0, [r6, #3]
	cmp r0, #0
	beq _080025E0
	cmp r0, #5
	bne _080025E6
_080025E0:
	movs r0, #1
	bl AddLives
_080025E6:
	ldr r1, _080025FC @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #7
	bne _08002600
	adds r1, #0xac
	ldrh r0, [r1]
	cmp r0, #0xff
	bls _0800260E
	movs r0, #0xff
	strh r0, [r1]
	b _0800260E
	.align 2, 0
_080025FC: .4byte gStageData
_08002600:
	adds r2, r1, #0
	adds r2, #0xac
	ldrh r0, [r2]
	ldr r1, _08002614 @ =0x000003E7
	cmp r0, r1
	bls _0800260E
	strh r1, [r2]
_0800260E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08002614: .4byte 0x000003E7

	thumb_func_start sub_8002618
sub_8002618: @ 0x08002618
	push {lr}
	sub sp, #0x1c
	ldr r1, _08002638 @ =gUnknown_080CE52C
	mov r0, sp
	movs r2, #0x1c
	bl memcpy
	ldr r0, _0800263C @ =gStageData
	ldrb r1, [r0, #0xa]
	ldrb r2, [r0, #9]
	adds r0, r2, #0
	cmp r0, #8
	bne _08002640
	movs r0, #0x38
	b _080026B2
	.align 2, 0
_08002638: .4byte gUnknown_080CE52C
_0800263C: .4byte gStageData
_08002640:
	cmp r0, #7
	bne _08002648
	movs r0, #0x11
	b _080026B2
_08002648:
	subs r0, r1, #1
	lsls r3, r1, #0x10
	cmp r0, #8
	bhi _080026B6
	lsls r0, r0, #2
	ldr r1, _0800265C @ =_08002660
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800265C: .4byte _08002660
_08002660: @ jump table
	.4byte _08002684 @ case 0
	.4byte _08002698 @ case 1
	.4byte _08002698 @ case 2
	.4byte _08002698 @ case 3
	.4byte _08002698 @ case 4
	.4byte _080026B6 @ case 5
	.4byte _080026A8 @ case 6
	.4byte _080026A4 @ case 7
	.4byte _080026A4 @ case 8
_08002684:
	ldr r0, _08002694 @ =gStageData
	ldrh r0, [r0, #0xe]
	movs r1, #4
	cmp r0, #0xb
	bne _08002690
	movs r1, #7
_08002690:
	adds r0, r1, #0
	b _080026B2
	.align 2, 0
_08002694: .4byte gStageData
_08002698:
	asrs r0, r3, #0x10
	lsls r1, r2, #2
	subs r1, #2
	adds r0, r0, r1
	add r0, sp
	b _080026B0
_080026A4:
	movs r0, #0x4c
	b _080026B2
_080026A8:
	lsls r1, r2, #2
	mov r0, sp
	adds r0, #1
	adds r0, r0, r1
_080026B0:
	ldrb r0, [r0]
_080026B2:
	bl sub_8029990
_080026B6:
	add sp, #0x1c
	pop {r0}
	bx r0

	thumb_func_start sub_80026BC
sub_80026BC: @ 0x080026BC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r6, _080026D8 @ =gStageData
	ldrb r0, [r6, #3]
	cmp r0, #6
	bne _080026DC
	adds r1, r6, #0
	adds r1, #0xac
	movs r0, #1
	b _080026E2
	.align 2, 0
_080026D8: .4byte gStageData
_080026DC:
	adds r1, r6, #0
	adds r1, #0xac
	movs r0, #0
_080026E2:
	strh r0, [r1]
	ldr r0, [r6, #0x24]
	adds r1, r6, #0
	adds r1, #0xae
	movs r5, #0
	movs r4, #0
	strh r0, [r1]
	adds r0, r6, #0
	adds r0, #0xb5
	strb r5, [r0]
	ldr r2, _080027D8 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _080027DC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080027E0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #7
	ands r0, r1
	adds r1, r6, #0
	adds r1, #0x86
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x87
	strb r5, [r0]
	subs r0, #2
	strb r5, [r0]
	movs r0, #1
	strb r0, [r6, #4]
	ldr r0, _080027E4 @ =Task_8002988
	movs r2, #0x80
	lsls r2, r2, #1
	str r4, [sp]
	movs r1, #0
	movs r3, #0
	bl TaskCreate
	adds r1, r6, #0
	adds r1, #0x90
	str r0, [r1]
	adds r0, r6, #0
	adds r0, #0x94
	str r4, [r0]
	adds r0, #4
	str r4, [r0]
	adds r0, #4
	str r4, [r0]
	adds r0, #4
	str r4, [r0]
	adds r0, #4
	str r4, [r0]
	adds r0, #0xc
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	subs r0, #0x86
	strb r5, [r0]
	adds r0, #1
	strb r5, [r0]
	movs r0, #0
	movs r7, #0x4e
	adds r7, r7, r6
	mov r8, r7
	movs r1, #0x5e
	adds r1, r1, r6
	mov ip, r1
	movs r7, #0x6e
	adds r7, r7, r6
	mov sb, r7
	adds r5, r6, #0
	adds r5, #0x2e
	movs r3, #0
	adds r4, r6, #0
	adds r4, #0x3e
_08002776:
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	lsls r1, r2, #1
	adds r0, r5, r1
	strh r3, [r0]
	adds r0, r4, r1
	strh r3, [r0]
	mov r7, r8
	adds r0, r7, r1
	strh r3, [r0]
	mov r7, ip
	adds r0, r7, r1
	strh r3, [r0]
	add r1, sb
	strh r3, [r1]
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r0, r2, #0x10
	asrs r2, r2, #0x10
	cmp r2, #7
	ble _08002776
	ldr r0, _080027E8 @ =gUnknown_03001060
	adds r0, #0x52
	movs r1, #0
	strh r1, [r0]
	ldr r4, _080027EC @ =gStageData
	movs r1, #0xe
	ldrsh r0, [r4, r1]
	bl sub_8003E44
	movs r7, #0xe
	ldrsh r0, [r6, r7]
	bl sub_8002838
	ldrb r0, [r4, #3]
	cmp r0, #7
	beq _0800281C
	bl Create_gTask_03001CFC
	ldrb r0, [r4, #3]
	cmp r0, #1
	bne _080027F4
	bl sub_8052E30
	ldr r0, _080027F0 @ =gPlayers
	ldrb r1, [r4, #9]
	bl sub_8004F48
	b _08002816
	.align 2, 0
_080027D8: .4byte gPseudoRandom
_080027DC: .4byte 0x00196225
_080027E0: .4byte 0x3C6EF35F
_080027E4: .4byte Task_8002988
_080027E8: .4byte gUnknown_03001060
_080027EC: .4byte gStageData
_080027F0: .4byte gPlayers
_080027F4:
	cmp r0, #2
	bne _0800280C
	bl sub_8053030
	ldr r0, _08002808 @ =gPlayers
	ldrb r1, [r4, #9]
	bl sub_8004F48
	b _08002826
	.align 2, 0
_08002808: .4byte gPlayers
_0800280C:
	bl sub_80215A0
	adds r1, r4, #0
	adds r1, #0xa4
	str r0, [r1]
_08002816:
	bl sub_8002618
	b _08002826
_0800281C:
	bl sub_8022FB0
	ldr r0, _08002834 @ =0x00000322 @ MUS_VS_BGM_7
	bl m4aSongNumStart
_08002826:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08002834: .4byte 0x00000322

	thumb_func_start sub_8002838
sub_8002838: @ 0x08002838
	push {lr}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r3, _08002864 @ =gStageData
	movs r2, #0
	ldrb r0, [r3, #3]
	cmp r0, #7
	bne _0800284A
	b _08002978
_0800284A:
	lsls r0, r1, #0x10
	ldr r1, _08002868 @ =0xFFF30000
	adds r0, r0, r1
	asrs r0, r0, #0x10
	cmp r0, #0x24
	bls _08002858
	b _08002950
_08002858:
	lsls r0, r0, #2
	ldr r1, _0800286C @ =_08002870
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08002864: .4byte gStageData
_08002868: .4byte 0xFFF30000
_0800286C: .4byte _08002870
_08002870: @ jump table
	.4byte _08002904 @ case 0
	.4byte _08002950 @ case 1
	.4byte _08002950 @ case 2
	.4byte _08002950 @ case 3
	.4byte _08002950 @ case 4
	.4byte _08002950 @ case 5
	.4byte _08002950 @ case 6
	.4byte _08002950 @ case 7
	.4byte _08002950 @ case 8
	.4byte _08002950 @ case 9
	.4byte _08002950 @ case 10
	.4byte _08002910 @ case 11
	.4byte _0800291C @ case 12
	.4byte _08002950 @ case 13
	.4byte _08002950 @ case 14
	.4byte _08002950 @ case 15
	.4byte _08002950 @ case 16
	.4byte _08002950 @ case 17
	.4byte _08002950 @ case 18
	.4byte _08002950 @ case 19
	.4byte _08002950 @ case 20
	.4byte _08002950 @ case 21
	.4byte _08002950 @ case 22
	.4byte _08002950 @ case 23
	.4byte _08002950 @ case 24
	.4byte _08002950 @ case 25
	.4byte _08002950 @ case 26
	.4byte _08002950 @ case 27
	.4byte _08002950 @ case 28
	.4byte _08002950 @ case 29
	.4byte _08002928 @ case 30
	.4byte _08002934 @ case 31
	.4byte _0800294C @ case 32
	.4byte _08002950 @ case 33
	.4byte _08002950 @ case 34
	.4byte _08002950 @ case 35
	.4byte _08002940 @ case 36
_08002904:
	ldr r0, _0800290C @ =gUnknown_08E2EC78
	ldr r2, [r0]
	b _08002950
	.align 2, 0
_0800290C: .4byte gUnknown_08E2EC78
_08002910:
	ldr r0, _08002918 @ =gUnknown_08E2EC78
	ldr r2, [r0, #4]
	b _08002950
	.align 2, 0
_08002918: .4byte gUnknown_08E2EC78
_0800291C:
	ldr r0, _08002924 @ =gUnknown_08E2EC78
	ldr r2, [r0, #8]
	b _08002950
	.align 2, 0
_08002924: .4byte gUnknown_08E2EC78
_08002928:
	ldr r0, _08002930 @ =gUnknown_08E2EC78
	ldr r2, [r0, #0x10]
	b _08002950
	.align 2, 0
_08002930: .4byte gUnknown_08E2EC78
_08002934:
	ldr r0, _0800293C @ =gUnknown_08E2EC78
	ldr r2, [r0, #0x14]
	b _08002950
	.align 2, 0
_0800293C: .4byte gUnknown_08E2EC78
_08002940:
	ldr r0, _08002948 @ =gUnknown_08E2EC78
	ldr r2, [r0, #0x18]
	b _08002950
	.align 2, 0
_08002948: .4byte gUnknown_08E2EC78
_0800294C:
	ldr r0, _08002974 @ =gUnknown_08E2EC78
	ldr r2, [r0, #0x1c]
_08002950:
	cmp r2, #0
	beq _08002978
	ldrh r1, [r2]
	adds r0, r3, #0
	adds r0, #0x84
	strb r1, [r0]
	adds r1, r3, #0
	adds r1, #0x80
	adds r0, r2, #4
	str r0, [r1]
	ldrh r1, [r2, #2]
	lsls r0, r1, #0x10
	orrs r0, r1
	movs r1, #0
	bl sub_80525F0
	b _08002982
	.align 2, 0
_08002974: .4byte gUnknown_08E2EC78
_08002978:
	adds r0, r3, #0
	adds r0, #0x84
	strb r2, [r0]
	subs r0, #4
	str r2, [r0]
_08002982:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Task_8002988
Task_8002988: @ 0x08002988
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r5, _080029F0 @ =gStageData
	ldr r1, _080029F4 @ =gUnknown_080CE548
	mov r0, sp
	movs r2, #4
	bl memcpy
	bl sub_805235C
	bl sub_802B788
	ldrb r0, [r5, #3]
	cmp r0, #7
	beq _080029AE
	bl CreateStageRingsManager
_080029AE:
	ldr r1, _080029F8 @ =gCamera
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	ldrh r0, [r5, #0xe]
	ldrb r1, [r5, #0xb]
	bl sub_804F740
	ldrb r0, [r5, #3]
	cmp r0, #7
	bne _080029C6
	b _08002AC0
_080029C6:
	cmp r0, #5
	bhi _08002A00
	ldrb r4, [r5, #6]
	adds r0, r4, #0
	bl InitializePlayer
	ldr r1, _080029FC @ =gPlayers
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r0, r0, r1
	adds r0, #0x2b
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	bl InitializePlayer
	b _08002A1C
	.align 2, 0
_080029F0: .4byte gStageData
_080029F4: .4byte gUnknown_080CE548
_080029F8: .4byte gCamera
_080029FC: .4byte gPlayers
_08002A00:
	cmp r0, #6
	bne _08002A1C
	movs r2, #0
_08002A06:
	lsls r4, r2, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	bl InitializePlayer
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r2, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #3
	ble _08002A06
_08002A1C:
	ldrb r0, [r5, #3]
	cmp r0, #2
	bne _08002A2E
	ldrb r0, [r5, #9]
	bl sub_806611C
	bl sub_8056AB0
	b _08002B44
_08002A2E:
	ldrb r0, [r5, #9]
	adds r1, r0, #0
	cmp r1, #6
	bhi _08002A9C
	ldrb r1, [r5, #0xa]
	cmp r1, #1
	bne _08002A50
	ldrh r0, [r5, #0xe]
	cmp r0, #0xb
	beq _08002A90
	ldrb r0, [r5, #0xb]
	cmp r0, #2
	beq _08002A90
	ldrb r0, [r5, #9]
	bl sub_8056AFC
	b _08002B44
_08002A50:
	cmp r1, #2
	bne _08002A58
	adds r0, #9
	b _08002A88
_08002A58:
	cmp r1, #7
	bls _08002AA0
	cmp r1, #8
	bne _08002A74
	ldr r0, _08002A70 @ =gStageData
	adds r0, #0xbe
	ldrb r1, [r5, #9]
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r1, #1
	b _08002A80
	.align 2, 0
_08002A70: .4byte gStageData
_08002A74:
	ldr r0, _08002A98 @ =gStageData
	adds r0, #0xbe
	ldrb r4, [r5, #9]
	adds r0, r0, r4
	ldrb r2, [r0]
	movs r1, #2
_08002A80:
	orrs r1, r2
	strb r1, [r0]
	ldrb r0, [r5, #9]
	adds r0, #0x12
_08002A88:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_806611C
_08002A90:
	bl sub_8057ECC
	b _08002B44
	.align 2, 0
_08002A98: .4byte gStageData
_08002A9C:
	cmp r1, #7
	bne _08002AAC
_08002AA0:
	ldrb r0, [r5, #9]
	bl sub_806611C
	bl sub_8056B78
	b _08002B44
_08002AAC:
	cmp r1, #8
	bne _08002B44
	ldrb r0, [r5, #9]
	bl sub_806611C
	bl sub_8056B78
	bl sub_8081C80
	b _08002B44
_08002AC0:
	movs r2, #0
	ldr r7, _08002BA0 @ =gPlayers
	mov r8, r7
_08002AC6:
	ldr r0, _08002BA4 @ =gUnknown_03001060
	ldrb r1, [r0, #7]
	lsls r2, r2, #0x10
	asrs r4, r2, #0x10
	asrs r1, r4
	movs r0, #1
	ands r1, r0
	adds r6, r2, #0
	cmp r1, #0
	beq _08002B2A
	adds r0, r4, #0
	bl InitializePlayer
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r4
	lsls r0, r0, #4
	mov r1, r8
	adds r5, r0, r1
	mov r7, sp
	adds r0, r7, r4
	ldrb r0, [r0]
	adds r3, r5, #0
	adds r3, #0x2a
	movs r2, #0xf
	ands r2, r0
	ldrb r0, [r3]
	movs r7, #0x10
	rsbs r7, r7, #0
	adds r1, r7, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	ldr r0, _08002BA8 @ =gStageData
	movs r3, #3
	ldrb r0, [r0, #6]
	cmp r4, r0
	bne _08002B16
	movs r3, #1
_08002B16:
	adds r2, r5, #0
	adds r2, #0x2b
	lsls r3, r3, #2
	ldrb r0, [r2]
	movs r4, #0x1d
	rsbs r4, r4, #0
	adds r1, r4, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
_08002B2A:
	movs r7, #0x80
	lsls r7, r7, #9
	adds r0, r6, r7
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08002AC6
	bl sub_8057ECC
	ldr r0, _08002BA8 @ =gStageData
	adds r0, #0xae
	ldr r1, _08002BAC @ =0x00002A30
	strh r1, [r0]
_08002B44:
	ldr r0, _08002BB0 @ =0x0400004C
	movs r1, #0
	strh r1, [r0]
	ldr r4, _08002BA8 @ =gStageData
	ldrb r0, [r4, #3]
	cmp r0, #4
	bls _08002B8A
	bl sub_80261B0
	ldrb r0, [r4, #3]
	cmp r0, #5
	bne _08002B7C
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _08002B7C
	ldrb r0, [r4, #0xe]
	ldrb r1, [r4, #9]
	ldrb r2, [r4, #0xb]
	bl sub_80275F0
	ldrb r0, [r4, #3]
	cmp r0, #5
	bne _08002B7C
	adds r0, r4, #0
	adds r0, #0xb4
	ldrb r0, [r0]
	bl sub_8027878
_08002B7C:
	ldr r0, _08002BA8 @ =gStageData
	adds r2, r0, #0
	adds r2, #0xb9
	movs r1, #0
	strb r1, [r2]
	adds r0, #0x85
	strb r1, [r0]
_08002B8A:
	ldr r0, _08002BB4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08002BB8 @ =Task_8002BBC
	str r0, [r1, #8]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08002BA0: .4byte gPlayers
_08002BA4: .4byte gUnknown_03001060
_08002BA8: .4byte gStageData
_08002BAC: .4byte 0x00002A30
_08002BB0: .4byte 0x0400004C
_08002BB4: .4byte gCurTask
_08002BB8: .4byte Task_8002BBC

	thumb_func_start Task_8002BBC
Task_8002BBC: @ 0x08002BBC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _08002BF8 @ =gStageData
	movs r0, #0
	mov sl, r0
	ldr r0, _08002BFC @ =gNextFreeAffineIndex
	movs r1, #6
	strb r1, [r0]
	ldrb r0, [r3, #3]
	cmp r0, #4
	bls _08002C04
	adds r1, r3, #0
	ldrb r0, [r1, #6]
	cmp r0, #0
	beq _08002C04
	ldr r2, _08002C00 @ =gMultiSioRecv
	ldr r1, [r1, #0x1c]
	ldrh r0, [r2, #2]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldrh r0, [r2, #2]
	adds r2, r3, #0
	str r0, [r2, #0x1c]
	ldrb r1, [r2, #4]
	b _08002C16
	.align 2, 0
_08002BF8: .4byte gStageData
_08002BFC: .4byte gNextFreeAffineIndex
_08002C00: .4byte gMultiSioRecv
_08002C04:
	ldrb r0, [r3, #4]
	adds r1, r0, #0
	cmp r1, #4
	beq _08002C16
	ldr r0, [r3, #0x1c]
	adds r0, #1
	str r0, [r3, #0x1c]
	movs r0, #1
	mov sl, r0
_08002C16:
	ldr r2, _08002CC4 @ =gStageData
	ldrb r0, [r2, #3]
	cmp r0, #7
	beq _08002D12
	cmp r1, #3
	beq _08002C24
	b _08002DC0
_08002C24:
	adds r1, r3, #0
	adds r1, #0xae
	ldrh r0, [r1]
	add r0, sl
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _08002CC8 @ =0x00008C9F
	cmp r0, r2
	bhi _08002C3A
	b _08002DC0
_08002C3A:
	strh r2, [r1]
	ldr r3, _08002CC4 @ =gStageData
	ldrb r0, [r3, #2]
	cmp r0, #0
	beq _08002C4C
	ldrb r0, [r3, #3]
	cmp r0, #6
	beq _08002C4C
	b _08002DC0
_08002C4C:
	ldr r0, _08002CC4 @ =gStageData
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r2, _08002CCC @ =gPlayers
	adds r4, r0, r2
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r5, r0, r2
	ldr r0, [r4, #4]
	movs r6, #0x80
	lsls r6, r6, #1
	ands r0, r6
	cmp r0, #0
	beq _08002C82
	b _08002DC0
_08002C82:
	bl sub_8003A14
	ldr r1, _08002CC4 @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _08002C9C
	bl sub_802789C
	ldr r0, _08002CC4 @ =gStageData
	adds r0, #0xb4
	ldrb r0, [r0]
	bl sub_8027878
_08002C9C:
	ldr r2, _08002CC4 @ =gStageData
	ldrb r0, [r2, #9]
	cmp r0, #8
	beq _08002CD0
	adds r0, r4, #0
	bl Player_8008E38
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #8
	beq _08002CBA
	b _08002DC0
_08002CBA:
	adds r0, r5, #0
	bl Player_8008E38
	b _08002DC0
	.align 2, 0
_08002CC4: .4byte gStageData
_08002CC8: .4byte 0x00008C9F
_08002CCC: .4byte gPlayers
_08002CD0:
	ldr r3, _08002CF4 @ =gStageData
	ldrb r0, [r3, #6]
	cmp r0, #0
	bne _08002CF8
	adds r0, r4, #0
	bl Player_8008E38
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #8
	bne _08002DC0
	adds r0, r5, #0
	bl sub_80105F0
	b _08002DC0
	.align 2, 0
_08002CF4: .4byte gStageData
_08002CF8:
	adds r0, r5, #0
	bl Player_8008E38
	ldr r0, [r5, #4]
	orrs r0, r6
	str r0, [r5, #4]
	ldr r0, [r4, #4]
	orrs r0, r6
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_80105F0
	b _08002DC0
_08002D12:
	cmp r1, #3
	bne _08002D82
	ldr r5, _08002E0C @ =gMultiSioRecv
	adds r1, r3, #0
	adds r1, #0xae
	ldrh r0, [r1]
	mov r2, sl
	subs r0, r0, r2
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r4, r1, #0
	cmp r2, #0x3c
	beq _08002D60
	cmp r2, #0x78
	beq _08002D60
	cmp r2, #0xb4
	beq _08002D60
	cmp r2, #0xf0
	beq _08002D60
	movs r0, #0x96
	lsls r0, r0, #1
	cmp r2, r0
	beq _08002D60
	adds r0, #0x3c
	cmp r2, r0
	beq _08002D60
	adds r0, #0x3c
	cmp r2, r0
	beq _08002D60
	adds r0, #0x3c
	cmp r2, r0
	beq _08002D60
	adds r0, #0x3c
	cmp r2, r0
	beq _08002D60
	adds r0, #0x3c
	cmp r2, r0
	bne _08002D66
_08002D60:
	ldr r0, _08002E10 @ =0x00000336
	bl m4aSongNumStart
_08002D66:
	ldrh r1, [r4]
	ldr r0, _08002E14 @ =0x00002A30
	cmp r1, r0
	bhi _08002D76
	ldrh r1, [r5]
	ldr r0, _08002E18 @ =0x0000600E
	cmp r1, r0
	bne _08002D82
_08002D76:
	movs r0, #0
	strh r0, [r4]
	ldr r0, _08002E1C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08002E20 @ =sub_8003288
	str r0, [r1, #8]
_08002D82:
	ldr r3, _08002E24 @ =gUnknown_03001060
	adds r4, r3, #0
	adds r4, #0x52
	ldrh r0, [r4]
	mov r1, sl
	adds r2, r0, r1
	strh r2, [r4]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	ldr r5, _08002E28 @ =0x000001FF
	cmp r0, r5
	bls _08002DC0
	ldr r0, _08002E2C @ =gStageData
	adds r0, #0x8f
	movs r1, #0
	strb r1, [r0]
	ands r2, r5
	strh r2, [r4]
	adds r2, r3, #0
	adds r2, #0x54
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #1
	ands r0, r1
	strb r0, [r2]
_08002DC0:
	ldr r0, _08002E2C @ =gStageData
	ldrb r1, [r0, #3]
	cmp r1, #7
	bne _08002DCA
	b _08003008
_08002DCA:
	adds r1, r0, #0
	adds r1, #0x2c
	ldrb r0, [r1]
	cmp r0, #0
	beq _08002E76
	movs r2, #0
	mov r8, r2
	mov sb, r1
_08002DDA:
	mov r3, sb
	ldrb r0, [r3]
	mov r1, r8
	lsls r2, r1, #0x10
	asrs r3, r2, #0x10
	asrs r0, r3
	movs r1, #1
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	beq _08002E62
	lsls r1, r3, #1
	ldr r0, _08002E2C @ =gStageData
	adds r0, #0x2e
	adds r1, r1, r0
	ldrh r3, [r1]
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r3, r0
	cmp r0, #0
	bge _08002E30
	movs r0, #0
	b _08002E34
	.align 2, 0
_08002E0C: .4byte gMultiSioRecv
_08002E10: .4byte 0x00000336
_08002E14: .4byte 0x00002A30
_08002E18: .4byte 0x0000600E
_08002E1C: .4byte gCurTask
_08002E20: .4byte sub_8003288
_08002E24: .4byte gUnknown_03001060
_08002E28: .4byte 0x000001FF
_08002E2C: .4byte gStageData
_08002E30:
	mov r2, sl
	subs r0, r3, r2
_08002E34:
	strh r0, [r1]
	asrs r5, r7, #0x10
	lsls r0, r5, #1
	ldr r6, _08002EB8 @ =gStageData
	adds r6, #0x2e
	adds r4, r0, r6
	ldrh r1, [r4]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _08002E50
	ldr r0, _08002EBC @ =0x00000249
	bl m4aSongNumStart
_08002E50:
	ldrh r0, [r4]
	cmp r0, #0
	bne _08002E62
	movs r1, #1
	lsls r1, r5
	mov r3, sb
	ldrb r0, [r3]
	bics r0, r1
	strb r0, [r3]
_08002E62:
	mov r1, r8
	lsls r0, r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r3, r0, #0x10
	mov r8, r3
	asrs r0, r0, #0x10
	cmp r0, #7
	ble _08002DDA
_08002E76:
	ldr r1, _08002EB8 @ =gStageData
	adds r1, #0x2d
	ldrb r0, [r1]
	cmp r0, #0
	beq _08002F02
	movs r0, #0
	mov r8, r0
	adds r6, r1, #0
	ldr r1, _08002EB8 @ =gStageData
	adds r1, #0x3e
	mov sb, r1
_08002E8C:
	ldrb r0, [r6]
	mov r3, r8
	lsls r2, r3, #0x10
	asrs r3, r2, #0x10
	asrs r0, r3
	movs r1, #1
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	beq _08002EEE
	lsls r0, r3, #1
	mov r1, sb
	adds r2, r0, r1
	ldrh r1, [r2]
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r1, r0
	cmp r0, #0
	bge _08002EC0
	movs r0, #0
	b _08002EC4
	.align 2, 0
_08002EB8: .4byte gStageData
_08002EBC: .4byte 0x00000249
_08002EC0:
	mov r3, sl
	subs r0, r1, r3
_08002EC4:
	strh r0, [r2]
	asrs r5, r7, #0x10
	lsls r0, r5, #1
	mov r1, sb
	adds r4, r0, r1
	ldrh r1, [r4]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _08002EDE
	ldr r0, _08002F44 @ =0x00000249
	bl m4aSongNumStart
_08002EDE:
	ldrh r0, [r4]
	cmp r0, #0
	bne _08002EEE
	movs r1, #1
	lsls r1, r5
	ldrb r0, [r6]
	bics r0, r1
	strb r0, [r6]
_08002EEE:
	mov r2, r8
	lsls r0, r2, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	lsrs r1, r0, #0x10
	mov r8, r1
	asrs r0, r0, #0x10
	cmp r0, #7
	ble _08002E8C
_08002F02:
	movs r2, #0
	mov r8, r2
	ldr r3, _08002F48 @ =gStageData + 0x5E
	mov sb, r3
	movs r0, #0x10
	add r0, sb
	mov ip, r0
	ldr r1, _08002F4C @ =0x03FF0000
	mov sl, r1
_08002F14:
	mov r3, r8
	lsls r2, r3, #0x10
	asrs r1, r2, #0xf
	mov r0, sb
	adds r6, r1, r0
	subs r0, #0x10
	adds r4, r1, r0
	add r1, ip
	ldrh r5, [r4]
	movs r3, #0
	ldrsh r0, [r4, r3]
	adds r7, r2, #0
	cmp r0, #0
	beq _08002F82
	ldrh r0, [r1]
	movs r2, #0
	ldrsh r3, [r1, r2]
	cmp r3, #0
	bne _08002F50
	movs r3, #0x78
	rsbs r3, r3, #0
	adds r0, r3, #0
	b _08002F80
	.align 2, 0
_08002F44: .4byte 0x00000249
_08002F48: .4byte gStageData + 0x5E
_08002F4C: .4byte 0x03FF0000
_08002F50:
	cmp r3, #0
	bge _08002F62
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08002F82
	movs r0, #1
	b _08002F80
_08002F62:
	subs r0, r5, r0
	strh r0, [r4]
	ldrh r3, [r1]
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #7
	bgt _08002F74
	adds r0, r3, #1
	strh r0, [r1]
_08002F74:
	movs r3, #0
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bgt _08002F82
	movs r0, #0
	strh r0, [r4]
_08002F80:
	strh r0, [r1]
_08002F82:
	movs r1, #0
	ldrsh r0, [r4, r1]
	mov r2, sl
	asrs r1, r2, #0x10
	cmp r0, r1
	ble _08002F90
	strh r1, [r4]
_08002F90:
	movs r0, #0
	ldrsh r3, [r4, r0]
	ldrh r0, [r6]
	movs r2, #0
	ldrsh r1, [r6, r2]
	cmp r3, r1
	ble _08002FB2
	adds r0, #0x10
	strh r0, [r6]
	ldrh r3, [r4]
	movs r2, #0
	ldrsh r1, [r4, r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bge _08002FCA
	b _08002FC8
_08002FB2:
	cmp r3, r1
	bge _08002FCA
	subs r0, #0x10
	strh r0, [r6]
	ldrh r3, [r4]
	movs r2, #0
	ldrsh r1, [r4, r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	ble _08002FCA
_08002FC8:
	strh r3, [r6]
_08002FCA:
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r7, r3
	lsrs r1, r0, #0x10
	mov r8, r1
	asrs r0, r0, #0x10
	cmp r0, #7
	ble _08002F14
	bl sub_80043B8
	ldr r3, _08003034 @ =gStageData
	ldrb r2, [r3, #3]
	cmp r2, #7
	beq _08003008
	ldr r0, _08003038 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08003008
	cmp r2, #1
	beq _08003008
	cmp r2, #2
	beq _08003008
	ldrh r0, [r3, #0xe]
	cmp r0, #1
	bne _08003004
	cmp r2, #5
	beq _08003008
_08003004:
	bl sub_800341C
_08003008:
	ldr r4, _08003034 @ =gStageData
	ldrb r0, [r4, #3]
	cmp r0, #4
	bls _08003018
	bl sub_8026478
	bl sub_80264F0
_08003018:
	adds r1, r4, #0
	adds r1, #0xbb
	ldrb r0, [r1]
	cmp r0, #0
	beq _08003026
	subs r0, #1
	strb r0, [r1]
_08003026:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003034: .4byte gStageData
_08003038: .4byte gPressedKeys

	thumb_func_start Task_800303C
Task_800303C: @ 0x0800303C
	push {lr}
	ldr r3, _08003058 @ =gStageData
	ldrb r1, [r3, #5]
	ldrb r2, [r3, #6]
	lsls r0, r2, #1
	asrs r1, r0
	movs r0, #3
	ands r1, r0
	cmp r1, #2
	bne _0800305C
	adds r0, r3, #0
	adds r0, #0xb8
	strb r1, [r0]
	b _08003070
	.align 2, 0
_08003058: .4byte gStageData
_0800305C:
	cmp r1, #0
	bne _08003064
	movs r0, #1
	b _08003068
_08003064:
	movs r0, #1
	eors r2, r0
_08003068:
	ands r2, r0
	adds r0, r3, #0
	adds r0, #0xb8
	strb r2, [r0]
_08003070:
	ldr r0, _0800307C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08003080 @ =sub_8003084
	str r0, [r1, #8]
	pop {r0}
	bx r0
	.align 2, 0
_0800307C: .4byte gCurTask
_08003080: .4byte sub_8003084

	thumb_func_start sub_8003084
sub_8003084: @ 0x08003084
	push {r4, r5, r6, lr}
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08003096
	bl sub_802613C
	b _080031B0
_08003096:
	ldr r2, _080030D0 @ =gPlayers
	ldr r3, _080030D4 @ =gStageData
	ldrb r1, [r3, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r2, #4
	adds r0, r0, r2
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #0x14
	orrs r1, r2
	str r1, [r0]
	ldrb r0, [r3, #6]
	adds r5, r3, #0
	cmp r0, #0
	bne _080030E0
	ldr r1, _080030D8 @ =gMultiSioSend
	ldr r0, _080030DC @ =0x000068E8
	strh r0, [r1]
	ldrb r0, [r5, #5]
	strb r0, [r1, #0x12]
	adds r0, r5, #0
	adds r0, #0xae
	ldrh r0, [r0]
	b _08003100
	.align 2, 0
_080030D0: .4byte gPlayers
_080030D4: .4byte gStageData
_080030D8: .4byte gMultiSioSend
_080030DC: .4byte 0x000068E8
_080030E0:
	ldr r1, _08003154 @ =gMultiSioRecv
	ldrh r2, [r1]
	ldr r0, _08003158 @ =0x000068E8
	cmp r2, r0
	bne _08003102
	ldrb r0, [r1, #0x12]
	strb r0, [r5, #5]
	ldrh r0, [r1, #0x14]
	adds r4, r5, #0
	adds r4, #0xae
	strh r0, [r4]
	ldr r1, _0800315C @ =gMultiSioSend
	strh r2, [r1]
	ldrb r0, [r5, #5]
	strb r0, [r1, #0x12]
	ldrh r0, [r4]
_08003100:
	strh r0, [r1, #0x14]
_08003102:
	movs r1, #0
	ldr r0, _08003160 @ =gUnknown_03001060
	ldrb r3, [r0, #7]
	ldr r6, _08003158 @ =0x000068E8
	movs r4, #1
_0800310C:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r0, r3, #0
	asrs r0, r2
	ands r0, r4
	cmp r0, #0
	beq _0800312A
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, _08003154 @ =gMultiSioRecv
	adds r1, r0, r1
	ldrh r0, [r1]
	cmp r0, r6
	bne _080031B0
_0800312A:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0800310C
	adds r4, r5, #0
	ldrb r3, [r4, #5]
	ldrb r2, [r4, #6]
	lsls r0, r2, #1
	asrs r3, r0
	movs r0, #3
	ands r3, r0
	adds r1, r3, #0
	cmp r1, #2
	bne _08003164
	adds r0, r4, #0
	adds r0, #0xb8
	strb r1, [r0]
	b _0800317C
	.align 2, 0
_08003154: .4byte gMultiSioRecv
_08003158: .4byte 0x000068E8
_0800315C: .4byte gMultiSioSend
_08003160: .4byte gUnknown_03001060
_08003164:
	cmp r1, #0
	bne _08003170
	movs r0, #1
	ands r2, r0
	adds r0, r4, #0
	b _08003178
_08003170:
	movs r0, #1
	eors r2, r0
	ands r2, r0
	adds r0, r5, #0
_08003178:
	adds r0, #0xb8
	strb r2, [r0]
_0800317C:
	adds r1, r3, #0
	movs r0, #0
	movs r2, #0
	bl sub_8056090
	ldr r0, _080031B8 @ =gUnknown_030010C0
	movs r2, #0
	strh r2, [r0]
	movs r1, #1
	strh r1, [r0, #2]
	strh r2, [r0, #4]
	movs r1, #0x80
	strh r1, [r0, #6]
	movs r1, #0xff
	strh r1, [r0, #8]
	strh r2, [r0, #0xa]
	bl ScreenFadeUpdateValues
	ldr r1, _080031BC @ =gStageData
	movs r0, #0xb4
	lsls r0, r0, #1
	strh r0, [r1, #0x3c]
	ldr r0, _080031C0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080031C4 @ =sub_80031C8
	str r0, [r1, #8]
_080031B0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080031B8: .4byte gUnknown_030010C0
_080031BC: .4byte gStageData
_080031C0: .4byte gCurTask
_080031C4: .4byte sub_80031C8

	thumb_func_start sub_80031C8
sub_80031C8: @ 0x080031C8
	push {r4, r5, r6, lr}
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080031DA
	bl sub_802613C
	b _08003264
_080031DA:
	ldr r6, _08003208 @ =gPlayers
	ldr r4, _0800320C @ =gStageData
	ldrb r1, [r4, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r1, r6, #4
	adds r0, r0, r1
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #0x14
	orrs r1, r2
	str r1, [r0]
	ldrh r0, [r4, #0x3c]
	adds r5, r0, #0
	cmp r5, #0
	beq _08003210
	subs r0, #1
	strh r0, [r4, #0x3c]
	b _08003264
	.align 2, 0
_08003208: .4byte gPlayers
_0800320C: .4byte gStageData
_08003210:
	ldr r0, _0800326C @ =gUnknown_030010C0
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08003264
	ldrb r0, [r4, #6]
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #2
	adds r4, r4, r0
	lsls r4, r4, #4
	adds r4, r4, r6
	bl sub_8004CC8
	adds r4, #0x2b
	ldrb r0, [r4]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	bl sub_8004CC8
	bl sub_802C100
	bl sub_8051140
	ldr r1, _08003270 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08003274 @ =gBackgroundsCopyQueueCursor
	ldr r0, _08003278 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0800327C @ =gBgSpritesCount
	strb r5, [r0]
	ldr r1, _08003280 @ =gVramGraphicsCopyCursor
	ldr r0, _08003284 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #1
	bl sub_809BFE8
_08003264:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800326C: .4byte gUnknown_030010C0
_08003270: .4byte 0x0000FFFF
_08003274: .4byte gBackgroundsCopyQueueCursor
_08003278: .4byte gBackgroundsCopyQueueIndex
_0800327C: .4byte gBgSpritesCount
_08003280: .4byte gVramGraphicsCopyCursor
_08003284: .4byte gVramGraphicsCopyQueueIndex

	thumb_func_start sub_8003288
sub_8003288: @ 0x08003288
	push {r4, r5, r6, r7, lr}
	ldr r2, _080032C8 @ =gPlayers
	ldr r3, _080032CC @ =gStageData
	ldrb r1, [r3, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r2, #4
	adds r0, r0, r2
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #0x14
	orrs r1, r2
	str r1, [r0]
	movs r0, #5
	strb r0, [r3, #4]
	ldrb r0, [r3, #6]
	mov ip, r3
	cmp r0, #0
	bne _080032DC
	ldr r2, _080032D0 @ =gMultiSioSend
	ldr r0, _080032D4 @ =0x0000600E
	strh r0, [r2]
	ldr r0, _080032D8 @ =gUnknown_03001060
	ldrb r0, [r0, #7]
	strb r0, [r2, #2]
	mov r0, ip
	adds r0, #0x8e
	ldrb r0, [r0]
	b _080032FE
	.align 2, 0
_080032C8: .4byte gPlayers
_080032CC: .4byte gStageData
_080032D0: .4byte gMultiSioSend
_080032D4: .4byte 0x0000600E
_080032D8: .4byte gUnknown_03001060
_080032DC:
	ldr r2, _0800338C @ =gMultiSioRecv
	ldrh r3, [r2]
	ldr r0, _08003390 @ =0x0000600E
	cmp r3, r0
	bne _08003300
	ldr r1, _08003394 @ =gUnknown_03001060
	ldrb r0, [r2, #2]
	strb r0, [r1, #7]
	ldrb r0, [r2, #3]
	mov r4, ip
	adds r4, #0x8e
	strb r0, [r4]
	ldr r2, _08003398 @ =gMultiSioSend
	strh r3, [r2]
	ldrb r0, [r1, #7]
	strb r0, [r2, #2]
	ldrb r0, [r4]
_080032FE:
	strb r0, [r2, #3]
_08003300:
	movs r2, #0
	ldr r0, _08003394 @ =gUnknown_03001060
	ldrb r5, [r0, #7]
	ldr r7, _08003390 @ =0x0000600E
	ldr r6, _0800339C @ =0x00006001
_0800330A:
	lsls r2, r2, #0x10
	asrs r3, r2, #0x10
	adds r1, r5, #0
	asrs r1, r3
	movs r0, #1
	ands r1, r0
	adds r4, r2, #0
	cmp r1, #0
	beq _08003330
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #3
	ldr r1, _0800338C @ =gMultiSioRecv
	adds r2, r0, r1
	ldrh r0, [r2]
	cmp r0, r7
	beq _08003330
	cmp r0, r6
	bne _08003386
_08003330:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0800330A
	mov r2, ip
	adds r2, #0x8e
	ldrb r0, [r2]
	cmp r0, #0xff
	beq _08003358
	ldr r1, _080033A0 @ =gUnknown_03000970
	lsls r0, r0, #2
	adds r1, r0, r1
	ldrb r0, [r1, #1]
	cmp r0, #0x62
	bhi _08003358
	adds r0, #1
	strb r0, [r1, #1]
_08003358:
	ldr r0, _080033A4 @ =0x00000325
	bl m4aSongNumStart
	ldr r0, _080033A8 @ =gUnknown_030010C0
	movs r2, #0
	strh r2, [r0]
	movs r1, #1
	strh r1, [r0, #2]
	strh r2, [r0, #4]
	movs r1, #0x80
	strh r1, [r0, #6]
	movs r1, #0xff
	strh r1, [r0, #8]
	strh r2, [r0, #0xa]
	bl ScreenFadeUpdateValues
	ldr r1, _080033AC @ =gStageData
	movs r0, #0xf0
	strh r0, [r1, #0x2e]
	ldr r0, _080033B0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080033B4 @ =sub_80033B8
	str r0, [r1, #8]
_08003386:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800338C: .4byte gMultiSioRecv
_08003390: .4byte 0x0000600E
_08003394: .4byte gUnknown_03001060
_08003398: .4byte gMultiSioSend
_0800339C: .4byte 0x00006001
_080033A0: .4byte gUnknown_03000970
_080033A4: .4byte 0x00000325
_080033A8: .4byte gUnknown_030010C0
_080033AC: .4byte gStageData
_080033B0: .4byte gCurTask
_080033B4: .4byte sub_80033B8

	thumb_func_start sub_80033B8
sub_80033B8: @ 0x080033B8
	push {lr}
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080033CA
	bl sub_802613C
	b _08003410
_080033CA:
	ldr r2, _080033F4 @ =gPlayers
	ldr r3, _080033F8 @ =gStageData
	ldrb r1, [r3, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r2, #4
	adds r0, r0, r2
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #0x14
	orrs r1, r2
	str r1, [r0]
	ldrh r0, [r3, #0x2e]
	cmp r0, #0
	beq _080033FC
	subs r0, #1
	strh r0, [r3, #0x2e]
	b _08003410
	.align 2, 0
_080033F4: .4byte gPlayers
_080033F8: .4byte gStageData
_080033FC:
	ldr r0, _08003414 @ =gUnknown_030010C0
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08003410
	ldr r0, _08003418 @ =sub_8028850
	movs r1, #0
	bl sub_8001D58
_08003410:
	pop {r0}
	bx r0
	.align 2, 0
_08003414: .4byte gUnknown_030010C0
_08003418: .4byte sub_8028850

	thumb_func_start sub_800341C
sub_800341C: @ 0x0800341C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	ldr r4, _080034A4 @ =gStageData
	adds r0, r4, #0
	adds r0, #0xa0
	ldr r0, [r0]
	cmp r0, #0
	beq _08003432
	b _080035D4
_08003432:
	ldr r0, _080034A8 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08003472
	ldrb r0, [r4, #4]
	cmp r0, #3
	beq _08003446
	b _080035D4
_08003446:
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	beq _08003452
	b _080035D4
_08003452:
	ldr r2, _080034AC @ =gPlayers
	ldrb r1, [r4, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08003472
	b _080035D4
_08003472:
	ldrb r0, [r4, #3]
	cmp r0, #4
	bhi _080034CA
	ldrb r1, [r4, #0xa]
	cmp r1, #0xa
	bne _080034B4
	ldr r0, _080034B0 @ =gLoadedSaveGame
	adds r1, r0, #0
	adds r1, #0x32
	ldrb r1, [r1]
	ldrb r2, [r4, #9]
	asrs r1, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #1
	ands r1, r2
	adds r2, r0, #0
	cmp r1, #0
	bne _08003514
	ldrb r0, [r4, #0xd]
	cmp r0, #1
	beq _08003514
	movs r7, #2
	b _08003516
	.align 2, 0
_080034A4: .4byte gStageData
_080034A8: .4byte gPressedKeys
_080034AC: .4byte gPlayers
_080034B0: .4byte gLoadedSaveGame
_080034B4:
	ldrb r0, [r4, #9]
	cmp r0, #6
	bhi _080034CA
	cmp r1, #8
	beq _080034CA
	cmp r1, #9
	beq _080034CA
	cmp r1, #1
	beq _080034CA
	cmp r1, #2
	bne _080034D4
_080034CA:
	movs r7, #2
	ldr r2, _080034D0 @ =gLoadedSaveGame
	b _08003516
	.align 2, 0
_080034D0: .4byte gLoadedSaveGame
_080034D4:
	movs r3, #0xe
	ldrsh r0, [r4, r3]
	mov r5, sp
	adds r5, #5
	add r1, sp, #4
	adds r2, r5, #0
	bl GetZoneAndActTypeFromStageID
	ldrb r0, [r4, #3]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080034FC
	movs r7, #1
	ldr r2, _080034F8 @ =gLoadedSaveGame
	b _08003516
	.align 2, 0
_080034F8: .4byte gLoadedSaveGame
_080034FC:
	ldr r2, _080035E0 @ =gLoadedSaveGame
	add r1, sp, #4
	adds r0, r2, #0
	adds r0, #0x29
	ldrb r1, [r1]
	adds r0, r0, r1
	ldrb r1, [r0]
	ldrb r0, [r5]
	ands r0, r1
	movs r7, #2
	cmp r0, #0
	beq _08003516
_08003514:
	movs r7, #0
_08003516:
	ldr r5, _080035E4 @ =gUnknown_080CE54C
	ldr r0, _080035E8 @ =0x00000366
	adds r6, r2, r0
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	lsls r4, r7, #3
	adds r4, r4, r7
	lsls r4, r4, #2
	adds r0, r0, r4
	adds r0, r0, r5
	ldrh r0, [r0]
	bl VramMalloc
	mov r8, r0
	ldrb r0, [r6]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, r1, r4
	adds r0, r5, #2
	adds r0, r1, r0
	ldrh r6, [r0]
	adds r5, #4
	adds r1, r1, r5
	ldrb r5, [r1]
	ldr r0, _080035EC @ =ewram_end
	ldr r0, [r0]
	cmp r8, r0
	beq _080035D4
	ldr r0, _080035F0 @ =sub_8003620
	ldr r2, _080035F4 @ =0x0000FFFE
	ldr r1, _080035F8 @ =TaskDestructor_8003D68
	str r1, [sp]
	movs r1, #0x38
	movs r3, #4
	bl TaskCreate
	ldr r1, _080035FC @ =gStageData
	adds r1, #0xa0
	str r0, [r1]
	ldrh r4, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r4, r1
	movs r3, #0
	strb r3, [r1]
	strb r7, [r1, #1]
	ldr r0, _08003600 @ =gInput
	ldrh r2, [r0]
	movs r0, #3
	ands r0, r2
	movs r2, #0
	strh r0, [r1, #2]
	ldr r1, _08003604 @ =0x03000010
	adds r0, r4, r1
	mov r1, r8
	str r1, [r0]
	str r3, [r0, #8]
	strh r6, [r0, #0xc]
	movs r1, #0x78
	strh r1, [r0, #0x10]
	movs r1, #0x50
	strh r1, [r0, #0x12]
	strh r3, [r0, #0x14]
	strh r3, [r0, #0x16]
	ldr r1, _08003608 @ =0x0000FFFF
	strh r1, [r0, #0x18]
	strb r5, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r2, [r0, #0x1f]
	subs r1, #0x11
	str r1, [r0, #0x20]
	bl UpdateSpriteAnimation
	ldr r0, _0800360C @ =0x040000D4
	ldr r2, _08003610 @ =gObjPalette + 0x1F2
	str r2, [r0]
	ldr r3, _08003614 @ =0x03000004
	adds r1, r4, r3
	str r1, [r0, #4]
	ldr r1, _08003618 @ =0x80000003
	str r1, [r0, #8]
	ldr r3, [r0, #8]
	adds r2, #6
	str r2, [r0]
	ldr r2, _0800361C @ =0x0300000A
	adds r4, r4, r2
	str r4, [r0, #4]
	str r1, [r0, #8]
	ldr r0, [r0, #8]
_080035D4:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080035E0: .4byte gLoadedSaveGame
_080035E4: .4byte gUnknown_080CE54C
_080035E8: .4byte 0x00000366
_080035EC: .4byte ewram_end
_080035F0: .4byte sub_8003620
_080035F4: .4byte 0x0000FFFE
_080035F8: .4byte TaskDestructor_8003D68
_080035FC: .4byte gStageData
_08003600: .4byte gInput
_08003604: .4byte 0x03000010
_08003608: .4byte 0x0000FFFF
_0800360C: .4byte 0x040000D4
_08003610: .4byte gObjPalette + 0x1F2
_08003614: .4byte 0x03000004
_08003618: .4byte 0x80000003
_0800361C: .4byte 0x0300000A

	thumb_func_start sub_8003620
sub_8003620: @ 0x08003620
	push {r4, r5, lr}
	ldr r0, _08003678 @ =gFlags
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r1, r2
	str r1, [r0]
	movs r0, #0
	ldr r5, _0800367C @ =gMPlayTable
_08003632:
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl MPlayStop
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #3
	ble _08003632
	movs r0, #0x8e
	bl m4aSongNumStart
	ldr r1, _08003680 @ =gStageData
	adds r2, r1, #0
	adds r2, #0xb9
	ldrb r0, [r2]
	cmp r0, #0
	bne _0800366A
	movs r0, #1
	ldrb r1, [r1, #6]
	lsls r0, r1
	strb r0, [r2]
_0800366A:
	ldr r0, _08003684 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08003688 @ =sub_800368C
	str r0, [r1, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08003678: .4byte gFlags
_0800367C: .4byte gMPlayTable
_08003680: .4byte gStageData
_08003684: .4byte gCurTask
_08003688: .4byte sub_800368C

	thumb_func_start sub_800368C
sub_800368C: @ 0x0800368C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r7, _080036F8 @ =gCurTask
	ldr r0, [r7]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0x10
	adds r0, r0, r1
	mov r8, r0
	movs r6, #0
	ldr r5, _080036FC @ =gStageData
	ldrb r0, [r5, #3]
	cmp r0, #4
	bls _0800370C
	bl sub_8026720
	bl sub_80264F0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080036C4
	b _08003A08
_080036C4:
	cmp r1, #1
	beq _080036CE
	ldrb r0, [r5, #4]
	cmp r0, #3
	beq _0800370C
_080036CE:
	ldr r2, _08003700 @ =gFlags
	ldr r0, [r2]
	ldr r1, _08003704 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r2]
	adds r0, r5, #0
	adds r0, #0xa0
	str r6, [r0]
	adds r0, #0x19
	strb r6, [r0]
	ldr r0, _08003708 @ =gMPlayTable
	ldr r0, [r0]
	bl m4aMPlayContinue
	movs r0, #0x8e
	bl MPlayStop
	ldr r0, [r7]
	bl TaskDestroy
	b _08003A08
	.align 2, 0
_080036F8: .4byte gCurTask
_080036FC: .4byte gStageData
_08003700: .4byte gFlags
_08003704: .4byte 0xFFFFFBFF
_08003708: .4byte gMPlayTable
_0800370C:
	ldrb r0, [r4, #1]
	cmp r0, #2
	beq _080037AE
	ldr r0, _0800374C @ =gReleasedKeys
	ldrh r2, [r4, #2]
	ldrh r1, [r0]
	adds r3, r1, #0
	eors r3, r2
	movs r0, #3
	ands r0, r1
	ands r3, r0
	ldr r0, _08003750 @ =gInput
	ldrh r0, [r0]
	ands r0, r2
	strh r0, [r4, #2]
	ldr r0, _08003754 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _0800373E
	ldrb r0, [r4]
	movs r1, #1
	eors r0, r1
	strb r0, [r4]
_0800373E:
	ldrb r0, [r4]
	cmp r0, #0
	bne _08003760
	ldr r5, _08003758 @ =0x050003F2
	ldr r2, _0800375C @ =0x050003F8
	b _08003764
	.align 2, 0
_0800374C: .4byte gReleasedKeys
_08003750: .4byte gInput
_08003754: .4byte gPressedKeys
_08003758: .4byte 0x050003F2
_0800375C: .4byte 0x050003F8
_08003760:
	ldr r2, _0800378C @ =0x050003F2
	ldr r5, _08003790 @ =0x050003F8
_08003764:
	ldr r0, _08003794 @ =0x040000D4
	adds r1, r4, #0
	adds r1, #0xa
	str r1, [r0]
	str r2, [r0, #4]
	ldr r2, _08003798 @ =0x80000003
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	adds r1, r4, #4
	str r1, [r0]
	str r5, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	beq _0800379C
	movs r6, #1
	b _080037AE
	.align 2, 0
_0800378C: .4byte 0x050003F2
_08003790: .4byte 0x050003F8
_08003794: .4byte 0x040000D4
_08003798: .4byte 0x80000003
_0800379C:
	movs r0, #1
	ands r3, r0
	cmp r3, #0
	beq _080037AE
	ldrb r0, [r4]
	movs r6, #1
	cmp r0, #0
	beq _080037AE
	movs r6, #2
_080037AE:
	ldr r4, _080037E0 @ =gStageData
	ldrb r0, [r4, #3]
	adds r7, r4, #0
	cmp r0, #4
	bls _08003874
	movs r5, #0
	adds r3, r4, #0
	adds r3, #0xb9
	ldrb r1, [r3]
	movs r0, #1
	ldrb r4, [r4, #6]
	lsls r0, r4
	cmp r1, r0
	bne _080037EC
	ldr r0, _080037E4 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsrs r5, r0, #0x1f
	ldr r1, _080037E8 @ =gPlayers
	mov ip, r1
	b _08003820
	.align 2, 0
_080037E0: .4byte gStageData
_080037E4: .4byte gPressedKeys
_080037E8: .4byte gPlayers
_080037EC:
	movs r2, #0
	ldr r6, _08003860 @ =gMultiSioRecv
	ldr r0, _08003864 @ =gPlayers
	mov ip, r0
	cmp r1, #1
	beq _0800380E
	movs r4, #1
_080037FA:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bhi _0800380E
	ldrb r1, [r3]
	adds r0, r4, #0
	lsls r0, r2
	cmp r1, r0
	bne _080037FA
_0800380E:
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r6
	ldrh r1, [r0]
	ldr r0, _08003868 @ =0x000068D0
	cmp r1, r0
	beq _08003820
	movs r5, #1
_08003820:
	ldrb r1, [r7, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	mov r1, ip
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08003840
	movs r5, #1
_08003840:
	cmp r5, #0
	bne _08003846
	b _080039FC
_08003846:
	ldr r2, _0800386C @ =gFlags
	ldr r0, [r2]
	ldr r1, _08003870 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r2]
	adds r0, r7, #0
	adds r0, #0xa0
	movs r1, #0
	str r1, [r0]
	adds r0, #0x19
	strb r1, [r0]
	b _0800389A
	.align 2, 0
_08003860: .4byte gMultiSioRecv
_08003864: .4byte gPlayers
_08003868: .4byte 0x000068D0
_0800386C: .4byte gFlags
_08003870: .4byte 0xFFFFFBFF
_08003874:
	ldr r0, _080038B4 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	bne _08003888
	cmp r6, #1
	bne _080038C8
_08003888:
	ldr r2, _080038B8 @ =gFlags
	ldr r0, [r2]
	ldr r1, _080038BC @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r2]
	adds r1, r4, #0
	adds r1, #0xa0
	movs r0, #0
	str r0, [r1]
_0800389A:
	ldr r0, _080038C0 @ =gMPlayTable
	ldr r0, [r0]
	bl m4aMPlayContinue
	movs r0, #0x8e
	bl MPlayStop
	ldr r0, _080038C4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08003A08
	.align 2, 0
_080038B4: .4byte gPressedKeys
_080038B8: .4byte gFlags
_080038BC: .4byte 0xFFFFFBFF
_080038C0: .4byte gMPlayTable
_080038C4: .4byte gCurTask
_080038C8:
	cmp r6, #2
	beq _080038CE
	b _080039FC
_080038CE:
	ldr r2, _08003908 @ =gFlags
	ldr r0, [r2]
	ldr r1, _0800390C @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r2]
	movs r0, #0x6a
	bl m4aSongNumStart
	ldrb r0, [r4, #0xa]
	cmp r0, #0xa
	bne _08003928
	ldrb r0, [r4, #0xd]
	cmp r0, #1
	bne _08003950
	ldr r1, _08003910 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08003914 @ =gBackgroundsCopyQueueCursor
	ldr r0, _08003918 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0800391C @ =gBgSpritesCount
	strb r5, [r0]
	ldr r1, _08003920 @ =gVramGraphicsCopyCursor
	ldr r0, _08003924 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	b _080039F4
	.align 2, 0
_08003908: .4byte gFlags
_0800390C: .4byte 0xFFFFFBFF
_08003910: .4byte 0x0000FFFF
_08003914: .4byte gBackgroundsCopyQueueCursor
_08003918: .4byte gBackgroundsCopyQueueIndex
_0800391C: .4byte gBgSpritesCount
_08003920: .4byte gVramGraphicsCopyCursor
_08003924: .4byte gVramGraphicsCopyQueueIndex
_08003928:
	ldrb r0, [r4, #6]
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #2
	adds r4, r4, r0
	lsls r4, r4, #4
	ldr r1, _08003984 @ =gPlayers
	adds r4, r4, r1
	bl sub_8004CC8
	adds r4, #0x2b
	ldrb r0, [r4]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	bl sub_8004CC8
	bl sub_802C100
	bl sub_8051140
_08003950:
	bl sub_8001E58
	ldr r1, _08003988 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0800398C @ =gBackgroundsCopyQueueCursor
	ldr r0, _08003990 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08003994 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08003998 @ =gVramGraphicsCopyCursor
	ldr r0, _0800399C @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r2, _080039A0 @ =gStageData
	ldrb r0, [r2, #3]
	cmp r0, #3
	bne _080039A4
	movs r0, #0
	movs r1, #2
	bl sub_808723C
	b _08003A08
	.align 2, 0
_08003984: .4byte gPlayers
_08003988: .4byte 0x0000FFFF
_0800398C: .4byte gBackgroundsCopyQueueCursor
_08003990: .4byte gBackgroundsCopyQueueIndex
_08003994: .4byte gBgSpritesCount
_08003998: .4byte gVramGraphicsCopyCursor
_0800399C: .4byte gVramGraphicsCopyQueueIndex
_080039A0: .4byte gStageData
_080039A4:
	cmp r0, #4
	bne _080039B2
	movs r0, #0
	movs r1, #3
	bl sub_808723C
	b _08003A08
_080039B2:
	ldrb r0, [r2, #9]
	cmp r0, #6
	bhi _080039F4
	ldrb r0, [r2, #0xa]
	cmp r0, #2
	bls _080039F4
	cmp r0, #0xa
	bne _080039DA
	ldrb r1, [r2, #9]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0x11
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r0, r1
	asrs r0, r0, #0x10
	movs r1, #4
	bl WarpToMap
	b _08003A08
_080039DA:
	ldrb r1, [r2, #9]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0x11
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r0, r1
	asrs r0, r0, #0x10
	ldrb r1, [r2, #0xa]
	subs r1, #2
	bl WarpToMap
	b _08003A08
_080039F4:
	movs r0, #1
	bl sub_808ADF0
	b _08003A08
_080039FC:
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r0, r8
	bl DisplaySprite
_08003A08:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8003A14
sub_8003A14: @ 0x08003A14
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _08003A80 @ =sub_8003A90
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _08003A84 @ =sub_80040BC
	str r1, [sp]
	movs r1, #0x60
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0]
	movs r0, #0
	movs r5, #0
_08003A3A:
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r4
	lsls r0, r0, #4
	ldr r1, _08003A88 @ =gPlayers
	adds r0, r0, r1
	movs r2, #0x9e
	lsls r2, r2, #1
	adds r1, r0, r2
	strb r5, [r1]
	adds r2, #1
	adds r1, r0, r2
	strb r5, [r1]
	bl Player_BoostModeDisengage
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #3
	ble _08003A3A
	ldr r0, _08003A8C @ =gStageData
	movs r1, #0
	str r1, [r0, #0x24]
	adds r0, #0x20
	movs r1, #1
	strb r1, [r0]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08003A80: .4byte sub_8003A90
_08003A84: .4byte sub_80040BC
_08003A88: .4byte gPlayers
_08003A8C: .4byte gStageData

	thumb_func_start sub_8003A90
sub_8003A90: @ 0x08003A90
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08003AB0 @ =gCurTask
	mov r8, r0
	ldr r1, [r0]
	ldrh r6, [r1, #6]
	ldr r0, _08003AB4 @ =gStageData
	ldrb r0, [r0, #4]
	cmp r0, #5
	bne _08003AB8
	adds r0, r1, #0
	bl TaskDestroy
	b _08003B1C
	.align 2, 0
_08003AB0: .4byte gCurTask
_08003AB4: .4byte gStageData
_08003AB8:
	ldr r0, _08003B28 @ =0x03000004
	adds r7, r6, r0
	ldr r0, _08003B2C @ =0x06012000
	str r0, [r7]
	movs r0, #0
	mov ip, r0
	movs r1, #0
	ldr r5, _08003B30 @ =0x00000593
	strh r5, [r7, #0xc]
	movs r0, #2
	strb r0, [r7, #0x1a]
	strh r1, [r7, #0x14]
	strh r1, [r7, #0x10]
	movs r4, #0x50
	strh r4, [r7, #0x12]
	strh r1, [r7, #0xe]
	strh r1, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r3, #0x10
	strb r3, [r7, #0x1c]
	mov r0, ip
	strb r0, [r7, #0x1f]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r7, #0x20]
	str r1, [r7, #8]
	ldr r0, _08003B34 @ =0x0300002C
	adds r7, r6, r0
	ldr r0, _08003B38 @ =0x060129C0
	str r0, [r7]
	strh r5, [r7, #0xc]
	movs r0, #1
	strb r0, [r7, #0x1a]
	strh r1, [r7, #0x14]
	strh r1, [r7, #0x10]
	strh r4, [r7, #0x12]
	strh r1, [r7, #0xe]
	strh r1, [r7, #0x16]
	adds r0, r2, #0
	strb r0, [r7, #0x1b]
	strb r3, [r7, #0x1c]
	mov r0, ip
	strb r0, [r7, #0x1f]
	str r2, [r7, #0x20]
	str r1, [r7, #8]
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _08003B3C @ =sub_8003B40
	str r0, [r1, #8]
_08003B1C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003B28: .4byte 0x03000004
_08003B2C: .4byte 0x06012000
_08003B30: .4byte 0x00000593
_08003B34: .4byte 0x0300002C
_08003B38: .4byte 0x060129C0
_08003B3C: .4byte sub_8003B40

	thumb_func_start sub_8003B40
sub_8003B40: @ 0x08003B40
	push {r4, r5, r6, lr}
	ldr r5, _08003B60 @ =gCurTask
	ldr r1, [r5]
	ldrh r6, [r1, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r6, r0
	ldr r0, _08003B64 @ =gStageData
	ldrb r0, [r0, #4]
	cmp r0, #5
	bne _08003B68
	adds r0, r1, #0
	bl TaskDestroy
	b _08003BCA
	.align 2, 0
_08003B60: .4byte gCurTask
_08003B64: .4byte gStageData
_08003B68:
	ldrh r0, [r4]
	cmp r0, #4
	bne _08003B74
	movs r0, #0x95
	bl m4aSongNumStart
_08003B74:
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	ldr r1, _08003B8C @ =0x012B0000
	cmp r0, r1
	bls _08003B94
	ldr r1, [r5]
	ldr r0, _08003B90 @ =sub_8003C38
	str r0, [r1, #8]
	b _08003BCA
	.align 2, 0
_08003B8C: .4byte 0x012B0000
_08003B90: .4byte sub_8003C38
_08003B94:
	ldrh r5, [r4]
	adds r0, r5, #0
	cmp r5, #0x78
	bls _08003B9E
	movs r5, #0x78
_08003B9E:
	cmp r0, #3
	bls _08003BCA
	ldr r0, _08003BD0 @ =0x03000004
	adds r4, r6, r0
	strh r5, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, _08003BD4 @ =0x0300002C
	adds r4, r6, r0
	movs r0, #0xf0
	subs r0, r0, r5
	strh r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08003BCA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08003BD0: .4byte 0x03000004
_08003BD4: .4byte 0x0300002C

	thumb_func_start sub_8003BD8
sub_8003BD8: @ 0x08003BD8
	push {r4, r5, lr}
	ldr r5, _08003C1C @ =gCurTask
	ldr r0, [r5]
	ldrh r2, [r0, #6]
	ldr r1, _08003C20 @ =0x03000054
	adds r0, r2, r1
	movs r4, #0
	strh r4, [r0]
	adds r1, #2
	adds r3, r2, r1
	movs r1, #1
	strh r1, [r3]
	ldr r3, _08003C24 @ =0x03000058
	adds r1, r2, r3
	strh r4, [r1]
	ldr r1, _08003C28 @ =0x0300005A
	adds r3, r2, r1
	movs r1, #0x80
	strh r1, [r3]
	ldr r1, _08003C2C @ =0x0300005C
	adds r3, r2, r1
	movs r1, #0xbf
	strh r1, [r3]
	ldr r3, _08003C30 @ =0x0300005E
	adds r2, r2, r3
	strh r4, [r2]
	bl ScreenFadeUpdateValues
	ldr r1, [r5]
	ldr r0, _08003C34 @ =sub_8003C38
	str r0, [r1, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08003C1C: .4byte gCurTask
_08003C20: .4byte 0x03000054
_08003C24: .4byte 0x03000058
_08003C28: .4byte 0x0300005A
_08003C2C: .4byte 0x0300005C
_08003C30: .4byte 0x0300005E
_08003C34: .4byte sub_8003C38

	thumb_func_start sub_8003C38
sub_8003C38: @ 0x08003C38
	push {r4, lr}
	ldr r4, _08003C94 @ =gStageData
	ldrb r0, [r4, #6]
	lsls r2, r0, #2
	adds r2, r2, r0
	lsls r2, r2, #2
	adds r2, r2, r0
	lsls r2, r2, #4
	ldr r3, _08003C98 @ =gPlayers
	adds r2, r2, r3
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r2, #0x4a
	movs r1, #0
	strh r1, [r2]
	adds r0, #0x4a
	strh r1, [r0]
	ldrb r0, [r4, #3]
	cmp r0, #6
	bne _08003C84
	movs r0, #5
	strb r0, [r4, #4]
	movs r0, #0xaa
	strb r0, [r4, #5]
	adds r0, r4, #0
	adds r0, #0x90
	ldr r1, [r0]
	ldr r0, _08003C9C @ =Task_800303C
	str r0, [r1, #8]
_08003C84:
	ldr r0, _08003CA0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08003C94: .4byte gStageData
_08003C98: .4byte gPlayers
_08003C9C: .4byte Task_800303C
_08003CA0: .4byte gCurTask

	thumb_func_start sub_8003CA4
sub_8003CA4: @ 0x08003CA4
	push {r4, r5, lr}
	ldr r5, _08003CE8 @ =gCurTask
	ldr r0, [r5]
	ldrh r2, [r0, #6]
	ldr r1, _08003CEC @ =0x03000054
	adds r0, r2, r1
	movs r4, #0
	strh r4, [r0]
	adds r1, #2
	adds r3, r2, r1
	movs r1, #1
	strh r1, [r3]
	ldr r3, _08003CF0 @ =0x03000058
	adds r1, r2, r3
	strh r4, [r1]
	ldr r1, _08003CF4 @ =0x0300005A
	adds r3, r2, r1
	movs r1, #0x80
	strh r1, [r3]
	ldr r1, _08003CF8 @ =0x0300005C
	adds r3, r2, r1
	movs r1, #0xbf
	strh r1, [r3]
	ldr r3, _08003CFC @ =0x0300005E
	adds r2, r2, r3
	strh r4, [r2]
	bl ScreenFadeUpdateValues
	ldr r1, [r5]
	ldr r0, _08003D00 @ =sub_8004058
	str r0, [r1, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08003CE8: .4byte gCurTask
_08003CEC: .4byte 0x03000054
_08003CF0: .4byte 0x03000058
_08003CF4: .4byte 0x0300005A
_08003CF8: .4byte 0x0300005C
_08003CFC: .4byte 0x0300005E
_08003D00: .4byte sub_8004058

	thumb_func_start sub_8003D04
sub_8003D04: @ 0x08003D04
	push {lr}
	ldr r1, _08003D1C @ =gStageData
	strb r0, [r1, #9]
	movs r0, #1
	strb r0, [r1, #0xa]
	strh r0, [r1, #0xe]
	ldr r0, _08003D20 @ =sub_8003F40
	ldr r1, _08003D24 @ =0x00007FFF
	bl sub_8001D58
	pop {r0}
	bx r0
	.align 2, 0
_08003D1C: .4byte gStageData
_08003D20: .4byte sub_8003F40
_08003D24: .4byte 0x00007FFF

	thumb_func_start TaskDestructor_8003D28
TaskDestructor_8003D28: @ 0x08003D28
	bx lr
	.align 2, 0

	thumb_func_start sub_8003D2C
sub_8003D2C: @ 0x08003D2C
	push {r4, lr}
	ldr r0, _08003D60 @ =gStageData
	ldrb r0, [r0, #6]
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #2
	adds r4, r4, r0
	lsls r4, r4, #4
	ldr r1, _08003D64 @ =gPlayers
	adds r4, r4, r1
	bl sub_8004CC8
	adds r4, #0x2b
	ldrb r0, [r4]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	bl sub_8004CC8
	bl sub_802C100
	bl sub_8051140
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08003D60: .4byte gStageData
_08003D64: .4byte gPlayers

	thumb_func_start TaskDestructor_8003D68
TaskDestructor_8003D68: @ 0x08003D68
	push {lr}
	ldr r0, _08003D80 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0
	.align 2, 0
_08003D80: .4byte gCurTask

	thumb_func_start sub_8003D84
sub_8003D84: @ 0x08003D84
	bx lr
	.align 2, 0

	thumb_func_start sub_8003D88
sub_8003D88: @ 0x08003D88
	bx lr
	.align 2, 0

	thumb_func_start sub_8003D8C
sub_8003D8C: @ 0x08003D8C
	bx lr
	.align 2, 0

	thumb_func_start AddLives
AddLives: @ 0x08003D90
	push {lr}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _08003DB0 @ =gStageData
	adds r3, r0, #0
	adds r3, #0xb4
	ldrb r2, [r3]
	adds r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0xff
	bls _08003DB4
	movs r0, #0xff
	strb r0, [r3]
	b _08003DB6
	.align 2, 0
_08003DB0: .4byte gStageData
_08003DB4:
	strb r1, [r3]
_08003DB6:
	ldr r1, _08003DC0 @ =gUnknown_03001CF0
	movs r0, #0x10
	strb r0, [r1, #3]
	pop {r0}
	bx r0
	.align 2, 0
_08003DC0: .4byte gUnknown_03001CF0

	thumb_func_start sub_8003DC4
sub_8003DC4: @ 0x08003DC4
	push {lr}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _08003DE4 @ =gStageData
	adds r3, r0, #0
	adds r3, #0xb4
	ldrb r2, [r3]
	adds r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0xff
	bls _08003DE8
	movs r0, #0xff
	strb r0, [r3]
	b _08003DEA
	.align 2, 0
_08003DE4: .4byte gStageData
_08003DE8:
	strb r1, [r3]
_08003DEA:
	pop {r0}
	bx r0
	.align 2, 0

@ Input:
    @ R0 = SongId
	thumb_func_start sub_8003DF0
sub_8003DF0: @ 0x08003DF0
	push {lr}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _08003E08 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #2
	beq _08003E04
	adds r0, r1, #0
	bl m4aSongNumStart
_08003E04:
	pop {r0}
	bx r0
	.align 2, 0
_08003E08: .4byte gStageData

	thumb_func_start sub_8003E0C
sub_8003E0C: @ 0x08003E0C
	push {lr}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _08003E24 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #2
	beq _08003E20
	adds r0, r1, #0
	bl m4aSongNumStartOrContinue
_08003E20:
	pop {r0}
	bx r0
	.align 2, 0
_08003E24: .4byte gStageData

@ Either StopSong
	thumb_func_start sub_8003E28
sub_8003E28: @ 0x08003E28
	push {lr}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _08003E40 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #2
	beq _08003E3C
	adds r0, r1, #0
	bl m4aSongNumStop
_08003E3C:
	pop {r0}
	bx r0
	.align 2, 0
_08003E40: .4byte gStageData

	thumb_func_start sub_8003E44
sub_8003E44: @ 0x08003E44
	push {lr}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _08003E74 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _08003F1C
	ldr r2, _08003E78 @ =0x06014D80
	cmp r0, #5
	bls _08003E5E
	cmp r0, #6
	bne _08003E5E
	adds r2, #0x20
_08003E5E:
	lsls r0, r1, #0x10
	ldr r1, _08003E7C @ =0xFFF30000
	adds r0, r0, r1
	asrs r0, r0, #0x10
	cmp r0, #0x24
	bhi _08003F1E
	lsls r0, r0, #2
	ldr r1, _08003E80 @ =_08003E84
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08003E74: .4byte gStageData
_08003E78: .4byte 0x06014D80
_08003E7C: .4byte 0xFFF30000
_08003E80: .4byte _08003E84
_08003E84: @ jump table
	.4byte _08003F18 @ case 0
	.4byte _08003F1E @ case 1
	.4byte _08003F1E @ case 2
	.4byte _08003F1E @ case 3
	.4byte _08003F1E @ case 4
	.4byte _08003F1E @ case 5
	.4byte _08003F1E @ case 6
	.4byte _08003F1E @ case 7
	.4byte _08003F1E @ case 8
	.4byte _08003F1E @ case 9
	.4byte _08003F1E @ case 10
	.4byte _08003F18 @ case 11
	.4byte _08003F18 @ case 12
	.4byte _08003F1E @ case 13
	.4byte _08003F1E @ case 14
	.4byte _08003F1E @ case 15
	.4byte _08003F1E @ case 16
	.4byte _08003F1E @ case 17
	.4byte _08003F1E @ case 18
	.4byte _08003F1E @ case 19
	.4byte _08003F1E @ case 20
	.4byte _08003F1E @ case 21
	.4byte _08003F1E @ case 22
	.4byte _08003F1E @ case 23
	.4byte _08003F1E @ case 24
	.4byte _08003F1E @ case 25
	.4byte _08003F1E @ case 26
	.4byte _08003F1E @ case 27
	.4byte _08003F1E @ case 28
	.4byte _08003F1E @ case 29
	.4byte _08003F18 @ case 30
	.4byte _08003F18 @ case 31
	.4byte _08003F18 @ case 32
	.4byte _08003F1E @ case 33
	.4byte _08003F1E @ case 34
	.4byte _08003F1E @ case 35
	.4byte _08003F18 @ case 36
_08003F18:
	adds r2, #0x40
	b _08003F1E
_08003F1C:
	ldr r2, _08003F30 @ =0x06012700
_08003F1E:
	ldr r0, _08003F34 @ =gVramHeapMaxTileSlots
	ldr r1, _08003F38 @ =0x06018000
	subs r1, r1, r2
	lsrs r1, r1, #5
	strh r1, [r0]
	ldr r0, _08003F3C @ =gVramHeapStartAddr
	str r2, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_08003F30: .4byte 0x06012700
_08003F34: .4byte gVramHeapMaxTileSlots
_08003F38: .4byte 0x06018000
_08003F3C: .4byte gVramHeapStartAddr

	thumb_func_start sub_8003F40
sub_8003F40: @ 0x08003F40
	push {r4, r5, lr}
	ldr r5, _08003F88 @ =gStageData
	ldrh r4, [r5, #0xe]
	movs r0, #0
	str r0, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x21
	strb r0, [r1]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0
	bl sub_80040D8
	adds r0, r4, #0
	movs r1, #1
	bl sub_80040D8
	adds r0, r4, #0
	movs r1, #2
	bl sub_80040D8
	adds r0, r4, #0
	movs r1, #3
	bl sub_80040D8
	ldrb r0, [r5, #3]
	cmp r0, #2
	beq _08003F7E
	bl m4aMPlayAllStop
_08003F7E:
	bl sub_8003FC8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08003F88: .4byte gStageData

	thumb_func_start sub_8003F8C
sub_8003F8C: @ 0x08003F8C
	push {r4, r5, lr}
	ldr r0, _08003FC4 @ =gStageData
	ldrh r2, [r0, #0xe]
	movs r1, #0
	str r1, [r0, #0x1c]
	adds r0, #0x21
	strb r1, [r0]
	movs r0, #0
	lsls r5, r2, #0x10
_08003F9E:
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	asrs r0, r5, #0x10
	adds r1, r4, #0
	bl sub_80040D8
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #3
	ble _08003F9E
	bl m4aMPlayAllStop
	bl sub_8003FC8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08003FC4: .4byte gStageData

	thumb_func_start sub_8003FC8
sub_8003FC8: @ 0x08003FC8
	push {lr}
	sub sp, #4
	movs r0, #0
	str r0, [sp]
	ldr r1, _08003FE4 @ =gCamera
	ldr r2, _08003FE8 @ =0x0500001B
	mov r0, sp
	bl CpuSet
	bl sub_80026BC
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08003FE4: .4byte gCamera
_08003FE8: .4byte 0x0500001B

	thumb_func_start Task_8003FEC
Task_8003FEC: @ 0x08003FEC
	push {r4, r5, r6, lr}
	ldr r0, _08004010 @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r6, r0
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _08004014 @ =0x01A30000
	cmp r0, r1
	bls _08004018
	bl sub_8003CA4
	b _08004048
	.align 2, 0
_08004010: .4byte gCurTask
_08004014: .4byte 0x01A30000
_08004018:
	ldrh r5, [r2]
	cmp r5, #0x78
	bls _08004020
	movs r5, #0x78
_08004020:
	ldr r0, _08004050 @ =0x03000004
	adds r4, r6, r0
	strh r5, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, _08004054 @ =0x0300002C
	adds r4, r6, r0
	movs r0, #0xf0
	subs r0, r0, r5
	strh r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08004048:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08004050: .4byte 0x03000004
_08004054: .4byte 0x0300002C

	thumb_func_start sub_8004058
sub_8004058: @ 0x08004058
	push {lr}
	ldr r0, _0800409C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _080040A0 @ =0x03000054
	adds r0, r0, r1
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08004098
	ldr r1, _080040A4 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080040A8 @ =gBackgroundsCopyQueueCursor
	ldr r0, _080040AC @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080040B0 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080040B4 @ =gVramGraphicsCopyCursor
	ldr r0, _080040B8 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl sub_8001E84
	bl sub_80260F0
	bl LaunchGameIntro
_08004098:
	pop {r0}
	bx r0
	.align 2, 0
_0800409C: .4byte gCurTask
_080040A0: .4byte 0x03000054
_080040A4: .4byte 0x0000FFFF
_080040A8: .4byte gBackgroundsCopyQueueCursor
_080040AC: .4byte gBackgroundsCopyQueueIndex
_080040B0: .4byte gBgSpritesCount
_080040B4: .4byte gVramGraphicsCopyCursor
_080040B8: .4byte gVramGraphicsCopyQueueIndex

	thumb_func_start sub_80040BC
sub_80040BC: @ 0x080040BC
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #4]
	bl VramFree
	ldr r0, [r4, #0x2c]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_80040D8
sub_80040D8: @ 0x080040D8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	adds r3, r1, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r3
	lsls r1, r1, #4
	ldr r0, _08004170 @ =gPlayers
	adds r1, r1, r0
	adds r7, r1, #0
	adds r7, #0x2b
	ldrb r4, [r7]
	lsls r0, r4, #0x1e
	lsrs r0, r0, #0x1e
	mov r8, r0
	movs r0, #0x2a
	adds r0, r0, r1
	mov sb, r0
	ldrb r6, [r0]
	lsls r6, r6, #0x1c
	lsrs r6, r6, #0x1c
	lsls r4, r4, #0x1b
	lsrs r4, r4, #0x1d
	movs r0, #0
	str r0, [sp]
	ldr r2, _08004174 @ =0x05000054
	mov r0, sp
	str r3, [sp, #4]
	bl CpuSet
	ldrb r1, [r7]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	mov r1, r8
	orrs r0, r1
	strb r0, [r7]
	mov r0, sb
	ldrb r1, [r0]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r6
	mov r1, sb
	strb r0, [r1]
	lsls r4, r4, #2
	ldrb r1, [r7]
	movs r0, #0x1d
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r4
	strb r0, [r7]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	adds r0, r5, #0
	ldr r3, [sp, #4]
	adds r1, r3, #0
	bl sub_8013D70
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004170: .4byte gPlayers
_08004174: .4byte 0x05000054

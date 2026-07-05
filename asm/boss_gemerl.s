.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_8067EA0
sub_8067EA0: @ 0x08067EA0
	push {r4, r5, r6, lr}
	ldr r1, _08067EE8 @ =gStageData
	adds r1, #0x88
	ldr r1, [r1]
	ldrh r3, [r1, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r3, r1
	adds r1, #0x3c
	adds r6, r3, r1
	ldrb r2, [r0, #2]
	movs r1, #0x7f
	ands r1, r2
	ldrb r2, [r0, #3]
	ldrb r0, [r0, #4]
	lsls r0, r0, #8
	orrs r2, r0
	adds r5, r2, #0
	cmp r1, #1
	bne _08067EF0
	ldr r0, _08067EEC @ =0x03000020
	adds r1, r3, r0
	movs r0, #0
	strb r0, [r1]
	lsls r0, r2, #8
	str r0, [r4, #8]
	ldr r0, [r4, #0x10]
	str r0, [r4, #0xc]
	movs r0, #0x10
	strb r0, [r6, #0x1c]
	adds r0, r4, #0
	movs r1, #0x33
	bl Gemerl_SwitchState
	b _08067F12
	.align 2, 0
_08067EE8: .4byte gStageData
_08067EEC: .4byte 0x03000020
_08067EF0:
	cmp r1, #1
	blt _08067F12
	cmp r1, #4
	bgt _08067F12
	cmp r1, #3
	blt _08067F12
	ldr r1, _08067F18 @ =0x03000020
	adds r0, r3, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	beq _08067F12
	adds r0, r4, #0
	bl sub_8067590
_08067F12:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08067F18: .4byte 0x03000020

	thumb_func_start Gemerl_State_0
Gemerl_State_0: @ 0x08067F1C
	push {lr}
	movs r1, #1
	bl Gemerl_SwitchStateAfterDelay
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start Gemerl_State_1
Gemerl_State_1: @ 0x08067F2C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #3
	bl Gemerl_SwitchStateAfterDelay
	adds r0, r4, #0
	adds r0, #0x23
	ldrb r0, [r0]
	cmp r0, #5
	bne _08067F4A
	adds r0, r4, #0
	movs r1, #1
	bl sub_8067D20
	b _08067F52
_08067F4A:
	adds r0, r4, #0
	movs r1, #1
	bl sub_8067B94
_08067F52:
	cmp r0, #0
	beq _08067F74
	adds r0, r4, #0
	adds r0, #0x23
	ldrb r0, [r0]
	cmp r0, #5
	bne _08067F68
	adds r0, r4, #0
	bl sub_8068AE4
	b _08067F74
_08067F68:
	adds r0, r4, #0
	bl sub_8068AAC
	adds r0, r4, #0
	bl sub_8067590
_08067F74:
	adds r0, r4, #0
	bl sub_8067ACC
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start Gemerl_State_2
Gemerl_State_2: @ 0x08067F84
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #3
	bl Gemerl_SwitchStateAfterDelay
	adds r0, r4, #0
	adds r0, #0x23
	ldrb r0, [r0]
	cmp r0, #5
	bne _08067FA2
	adds r0, r4, #0
	movs r1, #1
	bl sub_8067D20
	b _08067FAA
_08067FA2:
	adds r0, r4, #0
	movs r1, #1
	bl sub_8067B94
_08067FAA:
	cmp r0, #0
	beq _08067FCC
	adds r0, r4, #0
	adds r0, #0x23
	ldrb r0, [r0]
	cmp r0, #5
	bne _08067FC0
	adds r0, r4, #0
	bl sub_8068AE4
	b _08067FCC
_08067FC0:
	adds r0, r4, #0
	bl sub_8068AAC
	adds r0, r4, #0
	bl sub_8067590
_08067FCC:
	adds r0, r4, #0
	bl sub_8067ACC
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start Gemerl_State_49
Gemerl_State_49: @ 0x08067FDC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #3
	bl Gemerl_SwitchStateAfterDelay
	adds r0, r4, #0
	movs r1, #1
	bl sub_8067B94
	cmp r0, #0
	beq _08067FFE
	adds r0, r4, #0
	bl sub_8068AAC
	adds r0, r4, #0
	bl sub_8067590
_08067FFE:
	adds r0, r4, #0
	bl sub_8067ACC
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start Gemerl_State_3
Gemerl_State_3: @ 0x0806800C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _0806805C @ =gUnknown_080D56DC
	adds r0, #0x20
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r5, [r0]
	ldrh r0, [r4, #0x18]
	subs r0, #1
	strh r0, [r4, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08068064
	ldr r0, _08068060 @ =0x00000223
	bl m4aSongNumStart
	adds r0, r4, #0
	movs r1, #5
	bl Gemerl_SwitchState
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0
	bl sub_8068A38
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_8068A38
	adds r0, r4, #0
	bl sub_8068AD8
	b _0806807C
	.align 2, 0
_0806805C: .4byte gUnknown_080D56DC
_08068060: .4byte 0x00000223
_08068064:
	adds r0, r4, #0
	movs r1, #1
	bl sub_8067B94
	cmp r0, #0
	beq _0806807C
	adds r0, r4, #0
	bl sub_8068AAC
	adds r0, r4, #0
	bl sub_8067590
_0806807C:
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start Gemerl_State_4
Gemerl_State_4: @ 0x08068084
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #0x18]
	subs r0, #1
	strh r0, [r1, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080680B4
	adds r0, r1, #0
	adds r0, #0x20
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080680AC
	adds r0, r1, #0
	movs r1, #9
	bl Gemerl_SwitchState
	b _080680B4
_080680AC:
	adds r0, r1, #0
	movs r1, #8
	bl Gemerl_SwitchState
_080680B4:
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start Gemerl_State_52
Gemerl_State_52: @ 0x080680BC
	push {r4, lr}
	adds r1, r0, #0
	adds r4, r1, #0
	adds r4, #0x3c
	ldrh r0, [r1, #0x18]
	subs r0, #1
	strh r0, [r1, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080680E2
	adds r0, r1, #0
	movs r1, #8
	bl Gemerl_SwitchState
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
_080680E2:
	ldr r0, _08068100 @ =gStageData
	ldr r0, [r0, #0x1c]
	movs r1, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _080680F6
	movs r0, #0x89
	lsls r0, r0, #2
	bl m4aSongNumStart
_080680F6:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08068100: .4byte gStageData

	thumb_func_start Gemerl_State_53
Gemerl_State_53: @ 0x08068104
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x80
	lsls r1, r1, #2
	bl sub_8068984
	cmp r0, #1
	bne _0806811C
	adds r0, r4, #0
	movs r1, #0x33
	bl Gemerl_SwitchState
_0806811C:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start Gemerl_State_54
Gemerl_State_54: @ 0x08068124
    movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start Gemerl_State_7
Gemerl_State_7: @ 0x08068128
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x3c
	movs r1, #1
	bl sub_8067B94
	cmp r0, #0
	beq _08068166
	adds r0, r4, #0
	bl sub_8068AAC
	adds r0, r4, #0
	bl sub_8067590
	ldr r1, [r5, #8]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _08068160
	ldr r0, _0806815C @ =0xFFFFFBFF
	ands r1, r0
	str r1, [r5, #8]
	b _0806816C
	.align 2, 0
_0806815C: .4byte 0xFFFFFBFF
_08068160:
	orrs r1, r2
	str r1, [r5, #8]
	b _0806816C
_08068166:
	adds r0, r4, #0
	bl sub_806773C
_0806816C:
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start Gemerl_State_50
Gemerl_State_50: @ 0x08068174
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_8067B94
	cmp r0, #0
	beq _08068190
	adds r0, r4, #0
	bl sub_8068AAC
	adds r0, r4, #0
	bl sub_8067590
	b _08068196
_08068190:
	adds r0, r4, #0
	bl sub_806773C
_08068196:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start Gemerl_State_9
Gemerl_State_9: @ 0x080681A0
	push {r4, r5, lr}
	adds r1, r0, #0
	adds r5, r1, #0
	adds r5, #0x3c
	ldrh r0, [r1, #0x18]
	subs r0, #1
	strh r0, [r1, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080681F0
	adds r0, r1, #0
	adds r0, #0x20
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080681CE
	movs r0, #1
	strh r0, [r1, #0x18]
	adds r0, r1, #0
	bl sub_806773C
	b _080681F0
_080681CE:
	ldr r4, [r5, #8]
	adds r0, r1, #0
	movs r1, #0x34
	bl Gemerl_SwitchState
	movs r1, #0x80
	lsls r1, r1, #3
	ands r4, r1
	cmp r4, #0
	beq _080681E8
	ldr r0, [r5, #8]
	orrs r0, r1
	b _080681EE
_080681E8:
	ldr r0, [r5, #8]
	ldr r1, _080681F8 @ =0xFFFFFBFF
	ands r0, r1
_080681EE:
	str r0, [r5, #8]
_080681F0:
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080681F8: .4byte 0xFFFFFBFF

	thumb_func_start Gemerl_State_10_12_14
Gemerl_State_10_12_14: @ 0x080681FC
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	movs r5, #0xb
	adds r0, #0x23
	ldrb r0, [r0]
	cmp r0, #7
	bhi _08068246
	lsls r0, r0, #2
	ldr r1, _08068218 @ =_0806821C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08068218: .4byte _0806821C
_0806821C: @ jump table
	.4byte _0806823C @ case 0
	.4byte _0806823C @ case 1
	.4byte _08068246 @ case 2
	.4byte _08068240 @ case 3
	.4byte _08068246 @ case 4
	.4byte _08068244 @ case 5
	.4byte _08068246 @ case 6
	.4byte _08068244 @ case 7
_0806823C:
	movs r5, #0xb
	b _08068246
_08068240:
	movs r5, #0xd
	b _08068246
_08068244:
	movs r5, #0xf
_08068246:
	ldr r0, [r4, #0xc]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r0, r2
	str r1, [r4, #0xc]
	movs r1, #0xd0
	lsls r1, r1, #4
	adds r0, r0, r1
	asrs r0, r0, #8
	ldr r1, [r4, #8]
	asrs r1, r1, #8
	movs r2, #0
	str r2, [sp]
	ldr r2, _0806828C @ =sa2__sub_801EE64
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801E4E4
	cmp r0, #2
	bgt _08068280
	lsls r1, r0, #8
	ldr r0, [r4, #0xc]
	adds r0, r0, r1
	str r0, [r4, #0xc]
	adds r0, r4, #0
	adds r1, r5, #0
	bl Gemerl_SwitchState
_08068280:
	movs r0, #1
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0806828C: .4byte sa2__sub_801EE64

	thumb_func_start Gemerl_State_11_13_15
Gemerl_State_11_13_15: @ 0x08068290
	push {lr}
	movs r1, #0x10
	bl Gemerl_SwitchStateAfterDelay
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start Gemerl_State_16
Gemerl_State_16: @ 0x080682A0
	push {lr}
	movs r1, #0x11
	bl Gemerl_SwitchStateAfterDelay
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start Gemerl_State_18
Gemerl_State_18: @ 0x080682B0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08068314 @ =gUnknown_080D56F0
	adds r0, #0x20
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r1, [r0]
	ldrh r0, [r4, #0x18]
	subs r0, #1
	strh r0, [r4, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080682F4
	ldr r0, [r4, #0xc]
	ldr r2, _08068318 @ =0xFFFFF800
	adds r0, r0, r2
	str r0, [r4, #0xc]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #1
	bl sub_8068A38
	adds r0, r4, #0
	movs r1, #0x13
	bl Gemerl_SwitchState
	ldr r0, _0806831C @ =0x00000219
	bl m4aSongNumStart
_080682F4:
	adds r0, r4, #0
	movs r1, #1
	bl sub_8067B94
	cmp r0, #0
	beq _0806830C
	adds r0, r4, #0
	bl sub_8068AAC
	adds r0, r4, #0
	bl sub_8067590
_0806830C:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08068314: .4byte gUnknown_080D56F0
_08068318: .4byte 0xFFFFF800
_0806831C: .4byte 0x00000219

	thumb_func_start Gemerl_State_19
Gemerl_State_19: @ 0x08068320
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08068378 @ =gUnknown_080D56F0
	adds r0, #0x20
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, #2
	adds r0, r0, r2
	movs r1, #0
	ldrsh r2, [r0, r1]
	adds r0, r4, #0
	movs r1, #0
	bl sub_8068A6C
	movs r0, #0x16
	ldrsh r1, [r4, r0]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	ble _08068356
	adds r0, r4, #0
	movs r1, #0x14
	bl Gemerl_SwitchState
_08068356:
	adds r0, r4, #0
	movs r1, #1
	bl sub_8067B94
	cmp r0, #0
	beq _0806836E
	adds r0, r4, #0
	bl sub_8068AAC
	adds r0, r4, #0
	bl sub_8067590
_0806836E:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08068378: .4byte gUnknown_080D56F0

	thumb_func_start Gemerl_State_22
Gemerl_State_22: @ 0x0806837C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080683B8 @ =gUnknown_080D56F0
	adds r0, #0x20
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, #2
	adds r0, r0, r2
	ldrh r1, [r0]
	rsbs r1, r1, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_8068984
	cmp r0, #1
	bne _080683DE
	adds r0, r4, #0
	adds r0, #0x23
	ldrb r0, [r0]
	cmp r0, #3
	bne _080683BC
	adds r0, r4, #0
	movs r1, #0x32
	bl Gemerl_SwitchState
	b _080683C4
	.align 2, 0
_080683B8: .4byte gUnknown_080D56F0
_080683BC:
	adds r0, r4, #0
	movs r1, #7
	bl Gemerl_SwitchState
_080683C4:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_8068A38
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_8068A38
	movs r0, #0xe7
	bl m4aSongNumStop
_080683DE:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start Gemerl_State_23
Gemerl_State_23: @ 0x080683E8
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #0
	ldr r0, [r4, #0x44]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08068410
	ldr r0, _0806840C @ =gCamera
	ldr r0, [r0, #0x1c]
	subs r0, #0x2e
	lsls r0, r0, #8
	ldr r1, [r4, #8]
	cmp r0, r1
	bge _08068420
	b _08068424
	.align 2, 0
_0806840C: .4byte gCamera
_08068410:
	ldr r0, _08068458 @ =gCamera
	ldr r0, [r0, #0x18]
	adds r0, #0x2e
	lsls r0, r0, #8
	ldr r1, [r4, #8]
	cmp r0, r1
	ble _08068420
	movs r2, #1
_08068420:
	cmp r2, #0
	beq _08068440
_08068424:
	adds r0, r4, #0
	bl sub_8068ACC
	adds r0, r4, #0
	movs r1, #6
	bl Gemerl_SwitchState
	ldrh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r4, #0x14]
	movs r0, #0xe7
	bl m4aSongNumStop
_08068440:
	adds r0, r4, #0
	movs r1, #0
	bl sub_8067B94
	adds r0, r4, #0
	bl sub_8067A64
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08068458: .4byte gCamera

	thumb_func_start Gemerl_State_24
Gemerl_State_24: @ 0x0806845C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x19
	bl Gemerl_SwitchStateAfterDelay
	cmp r0, #1
	bne _08068490
	ldr r0, _0806847C @ =gStageData
	ldrb r0, [r0, #9]
	cmp r0, #3
	bne _08068480
	adds r1, r4, #0
	adds r1, #0x2e
	movs r0, #2
	b _08068486
	.align 2, 0
_0806847C: .4byte gStageData
_08068480:
	adds r1, r4, #0
	adds r1, #0x2e
	movs r0, #0
_08068486:
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
_08068490:
	adds r0, r4, #0
	movs r1, #1
	bl sub_8067B94
	cmp r0, #0
	beq _080684A8
	adds r0, r4, #0
	bl sub_8068AAC
	adds r0, r4, #0
	bl sub_8067590
_080684A8:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start Gemerl_State_26
Gemerl_State_26: @ 0x080684B0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _0806851C @ =gUnknown_080D5B00
	adds r3, r1, r0
	movs r6, #1
	movs r2, #0
	ldrb r0, [r3, #8]
	cmp r2, r0
	bhs _080684EE
	adds r0, r4, #0
	adds r0, #0x24
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	bne _080684FA
_080684D8:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldrb r0, [r3, #8]
	cmp r2, r0
	bhs _080684EE
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _080684D8
	movs r6, #0
_080684EE:
	cmp r6, #0
	beq _080684FA
	adds r0, r4, #0
	movs r1, #0x1f
	bl Gemerl_SwitchState
_080684FA:
	adds r0, r4, #0
	movs r1, #1
	bl sub_8067B94
	cmp r0, #0
	beq _08068512
	adds r0, r4, #0
	bl sub_8068AAC
	adds r0, r4, #0
	bl sub_8067590
_08068512:
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0806851C: .4byte gUnknown_080D5B00

	thumb_func_start Gemerl_State_27
Gemerl_State_27: @ 0x08068520
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r6, _08068560 @ =gPlayers
	adds r4, r5, #0
	adds r4, #0x3c
	movs r1, #0x1c
	bl Gemerl_SwitchStateAfterDelay
	cmp r0, #1
	bne _080685A0
	ldr r0, [r4, #8]
	movs r2, #0x80
	lsls r2, r2, #3
	ands r0, r2
	cmp r0, #0
	beq _0806856C
	ldr r0, _08068564 @ =gCamera
	ldr r0, [r0, #0x1c]
	subs r0, #0x2e
	lsls r0, r0, #8
	ldr r1, [r6, #0x10]
	cmp r0, r1
	blt _08068594
	movs r2, #0xa0
	lsls r2, r2, #6
	adds r0, r1, r2
	str r0, [r5, #8]
	ldr r0, [r4, #8]
	ldr r1, _08068568 @ =0xFFFFFBFF
	ands r0, r1
	b _0806859E
	.align 2, 0
_08068560: .4byte gPlayers
_08068564: .4byte gCamera
_08068568: .4byte 0xFFFFFBFF
_0806856C:
	ldr r0, _0806858C @ =gCamera
	ldr r0, [r0, #0x18]
	adds r0, #0x2e
	lsls r0, r0, #8
	ldr r1, [r6, #0x10]
	cmp r0, r1
	ble _08068594
	movs r3, #0xa0
	lsls r3, r3, #6
	adds r0, r1, r3
	str r0, [r5, #8]
	ldr r0, [r4, #8]
	ldr r1, _08068590 @ =0xFFFFFBFF
	ands r0, r1
	b _0806859E
	.align 2, 0
_0806858C: .4byte gCamera
_08068590: .4byte 0xFFFFFBFF
_08068594:
	ldr r3, _080685A8 @ =0xFFFFD800
	adds r0, r1, r3
	str r0, [r5, #8]
	ldr r0, [r4, #8]
	orrs r0, r2
_0806859E:
	str r0, [r4, #8]
_080685A0:
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080685A8: .4byte 0xFFFFD800

	thumb_func_start Gemerl_State_30
Gemerl_State_30: @ 0x080685AC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x32
	bl Gemerl_SwitchStateAfterDelay
	adds r0, r4, #0
	bl sub_8067A64
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start Gemerl_State_31
Gemerl_State_31: @ 0x080685C4
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_8067B94
	cmp r0, #0
	beq _080685E0
	adds r0, r4, #0
	bl sub_8068AAC
	adds r0, r4, #0
	bl sub_8067590
	b _080685E6
_080685E0:
	adds r0, r4, #0
	bl sub_806773C
_080685E6:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start Gemerl_State_32
Gemerl_State_32: @ 0x080685F0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08068654 @ =gUnknown_080D56F0
	adds r0, #0x20
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r1, [r0]
	ldrh r0, [r4, #0x18]
	subs r0, #1
	strh r0, [r4, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08068634
	ldr r0, [r4, #0xc]
	ldr r2, _08068658 @ =0xFFFFF800
	adds r0, r0, r2
	str r0, [r4, #0xc]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #1
	bl sub_8068A38
	adds r0, r4, #0
	movs r1, #0x21
	bl Gemerl_SwitchState
	ldr r0, _0806865C @ =0x00000219
	bl m4aSongNumStart
_08068634:
	adds r0, r4, #0
	movs r1, #1
	bl sub_8067B94
	cmp r0, #0
	beq _0806864C
	adds r0, r4, #0
	bl sub_8068AAC
	adds r0, r4, #0
	bl sub_8067590
_0806864C:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08068654: .4byte gUnknown_080D56F0
_08068658: .4byte 0xFFFFF800
_0806865C: .4byte 0x00000219

	thumb_func_start Gemerl_State_37
Gemerl_State_37: @ 0x08068660
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080686C4 @ =gUnknown_080D56F0
	adds r0, #0x20
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, #2
	adds r0, r0, r2
	ldrh r1, [r0]
	rsbs r1, r1, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_8068984
	cmp r0, #1
	bne _080686A4
	adds r0, r4, #0
	movs r1, #0x26
	bl Gemerl_SwitchState
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_8068A38
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_8068A38
_080686A4:
	adds r0, r4, #0
	movs r1, #1
	bl sub_8067B94
	cmp r0, #0
	beq _080686BC
	adds r0, r4, #0
	bl sub_8068AAC
	adds r0, r4, #0
	bl sub_8067590
_080686BC:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080686C4: .4byte gUnknown_080D56F0

	thumb_func_start Gemerl_State_38
Gemerl_State_38: @ 0x080686C8
	push {lr}
	movs r1, #0x32
	bl Gemerl_SwitchStateAfterDelay
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start Gemerl_State_41
Gemerl_State_41: @ 0x080686D8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08068740 @ =gUnknown_080D56F0
	adds r0, #0x20
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, #2
	adds r0, r0, r2
	movs r1, #0
	ldrsh r2, [r0, r1]
	rsbs r2, r2, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r4, #0
	movs r1, #0
	bl sub_8068A6C
	movs r0, #0x16
	ldrsh r1, [r4, r0]
	ldr r0, _08068744 @ =0xFFFFFD80
	cmp r1, r0
	bge _08068730
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_8068A38
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_8068A38
	adds r0, r4, #0
	movs r1, #0x2a
	bl Gemerl_SwitchState
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r4, #0xc]
_08068730:
	adds r0, r4, #0
	movs r1, #0
	bl sub_8067B94
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08068740: .4byte gUnknown_080D56F0
_08068744: .4byte 0xFFFFFD80

	thumb_func_start Gemerl_State_42
Gemerl_State_42: @ 0x08068748
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2, #0x18]
	subs r0, #1
	strh r0, [r2, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0806876E
	ldr r0, _08068774 @ =gCamera
	ldr r1, [r0, #0x18]
	ldr r0, [r0, #0x1c]
	adds r1, r1, r0
	asrs r1, r1, #1
	lsls r1, r1, #8
	str r1, [r2, #8]
	adds r0, r2, #0
	movs r1, #0x2b
	bl Gemerl_SwitchState
_0806876E:
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
_08068774: .4byte gCamera

	thumb_func_start Gemerl_State_43
Gemerl_State_43: @ 0x08068778
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x3c
	movs r1, #0x2c
	bl Gemerl_SwitchStateAfterDelay
	cmp r0, #0
	beq _080687A4
	ldr r0, [r4, #0xc]
	ldr r1, _080687AC @ =0xFFFFF800
	adds r0, r0, r1
	str r0, [r4, #0xc]
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080687A4
	ldrb r0, [r5, #0x1a]
	adds r0, #1
	strb r0, [r5, #0x1a]
_080687A4:
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080687AC: .4byte 0xFFFFF800

	thumb_func_start Gemerl_State_45
Gemerl_State_45: @ 0x080687B0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x3c
	movs r1, #0x2e
	bl Gemerl_SwitchStateAfterDelay
	cmp r0, #0
	beq _080687E6
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080687DC
	ldr r0, _080687D8 @ =gCamera
	ldr r0, [r0, #0x1c]
	subs r0, #0xc
	b _080687E2
	.align 2, 0
_080687D8: .4byte gCamera
_080687DC:
	ldr r0, _080687F0 @ =gCamera
	ldr r0, [r0, #0x18]
	adds r0, #0xc
_080687E2:
	lsls r0, r0, #8
	str r0, [r4, #8]
_080687E6:
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080687F0: .4byte gCamera

	thumb_func_start Gemerl_State_46
Gemerl_State_46: @ 0x080687F4
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x2f
	bl Gemerl_SwitchStateAfterDelay
	cmp r0, #0
	beq _0806880A
	ldr r0, [r4, #0xc]
	ldr r1, _08068814 @ =0xFFFFF800
	adds r0, r0, r1
	str r0, [r4, #0xc]
_0806880A:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08068814: .4byte 0xFFFFF800

	thumb_func_start Gemerl_State_48
Gemerl_State_48: @ 0x08068818
	push {lr}
	movs r1, #0x32
	bl Gemerl_SwitchStateAfterDelay
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start TaskDestructor_Gemerl
TaskDestructor_Gemerl: @ 0x08068828
	push {r4, r5, lr}
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _08068854
	ldr r0, [r4, #0x3c]
	bl VramFree
	ldr r0, [r4, #0x78]
	bl VramFree
	ldr r1, _0806885C @ =0x030000A0
	adds r0, r5, r1
	ldr r0, [r0]
	bl VramFree
	ldr r0, [r4, #4]
	bl VramFree
_08068854:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806885C: .4byte 0x030000A0

	thumb_func_start Task_Gemerl_8068860
Task_Gemerl_8068860: @ 0x08068860
	push {r4, r5, lr}
	ldr r5, _08068880 @ =gCurTask
	ldr r2, [r5]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x1c]
	ldrb r0, [r0]
	cmp r0, #3
	bne _08068884
	adds r0, r2, #0
	bl TaskDestroy
	b _080688AA
	.align 2, 0
_08068880: .4byte gCurTask
_08068884:
	adds r0, r4, #0
	bl sub_8068954
	adds r0, r4, #0
	bl sub_806799C
	bl sub_8079FFC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080688A4
	ldr r1, [r5]
	ldr r0, _080688A0 @ =sub_80688B4
	b _080688A8
	.align 2, 0
_080688A0: .4byte sub_80688B4
_080688A4:
	ldr r1, [r5]
	ldr r0, _080688B0 @ =Task_Gemerl_80663F0
_080688A8:
	str r0, [r1, #8]
_080688AA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080688B0: .4byte Task_Gemerl_80663F0

	thumb_func_start sub_80688B4
sub_80688B4: @ 0x080688B4
	push {r4, r5, lr}
	ldr r5, _080688D4 @ =gCurTask
	ldr r2, [r5]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x1c]
	ldrb r0, [r0]
	cmp r0, #3
	bne _080688D8
	adds r0, r2, #0
	bl TaskDestroy
	b _080688FC
	.align 2, 0
_080688D4: .4byte gCurTask
_080688D8:
	adds r0, r4, #0
	bl sub_8068954
	adds r0, r4, #0
	bl sub_806799C
	ldr r0, [r4, #0x1c]
	ldrb r0, [r0]
	cmp r0, #2
	bne _080688FC
	bl sub_807A074
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080688FC
	ldr r1, [r5]
	ldr r0, _08068904 @ =Task_Gemerl_80663F0
	str r0, [r1, #8]
_080688FC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08068904: .4byte Task_Gemerl_80663F0

	thumb_func_start sub_8068908
sub_8068908: @ 0x08068908
	push {r4, r5, lr}
	ldr r0, _0806892C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0x22
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r5, #0
	ldrsb r5, [r1, r5]
	cmp r5, #0
	beq _08068930
	subs r0, #1
	strb r0, [r1]
	b _08068942
	.align 2, 0
_0806892C: .4byte gCurTask
_08068930:
	ldr r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	cmp r0, #0
	beq _08068942
	ldr r0, [r4, #0x1c]
	strb r5, [r0]
	b _0806894E
_08068942:
	adds r0, r4, #0
	bl sub_8067840
	adds r0, r4, #0
	bl sub_806799C
_0806894E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8068954
sub_8068954: @ 0x08068954
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2]
	ldr r0, _0806897C @ =Gemerl_State_8
	cmp r1, r0
	beq _08068976
	ldr r3, _08068980 @ =gCamera
	ldr r0, [r3, #0x18]
	lsls r0, r0, #8
	ldr r1, [r2, #8]
	cmp r1, r0
	blt _08068974
	ldr r0, [r3, #0x1c]
	lsls r0, r0, #8
	cmp r1, r0
	ble _08068976
_08068974:
	str r0, [r2, #8]
_08068976:
	pop {r0}
	bx r0
	.align 2, 0
_0806897C: .4byte Gemerl_State_8
_08068980: .4byte gCamera

	thumb_func_start sub_8068984
sub_8068984: @ 0x08068984
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	movs r5, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r0, [r4, #0x16]
	adds r1, r1, r0
	strh r1, [r4, #0x16]
	ldr r0, [r4, #0xc]
	movs r1, #0xb0
	lsls r1, r1, #4
	adds r0, r0, r1
	asrs r0, r0, #8
	ldr r1, [r4, #8]
	asrs r1, r1, #8
	str r5, [sp]
	ldr r2, _080689D4 @ =sa2__sub_801EE64
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801E4E4
	cmp r0, #0
	bgt _080689CA
	adds r0, #1
	lsls r0, r0, #8
	ldr r1, [r4, #0xc]
	adds r1, r1, r0
	ldr r0, _080689D8 @ =0xFFFFFF00
	ands r1, r0
	subs r1, #1
	str r1, [r4, #0xc]
	strh r5, [r4, #0x16]
	movs r5, #1
_080689CA:
	adds r0, r5, #0
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080689D4: .4byte sa2__sub_801EE64
_080689D8: .4byte 0xFFFFFF00

	thumb_func_start Gemerl_SwitchStateAfterDelay
Gemerl_SwitchStateAfterDelay: @ 0x080689DC
	push {r4, lr}
	adds r2, r0, #0
	movs r4, #0
	ldrh r0, [r2, #0x18]
	subs r0, #1
	strh r0, [r2, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080689F6
	movs r4, #1
	adds r0, r2, #0
	bl Gemerl_SwitchState
_080689F6:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8068A00
sub_8068A00: @ 0x08068A00
	push {lr}
	adds r3, r0, #0
	adds r3, #0x3c
	ldr r2, _08068A24 @ =gCamera
	ldr r1, [r2, #0x18]
	ldr r2, [r2, #0x1c]
	adds r1, r1, r2
	asrs r1, r1, #1
	lsls r1, r1, #8
	ldr r0, [r0, #8]
	cmp r1, r0
	ble _08068A28
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _08068A2E
	.align 2, 0
_08068A24: .4byte gCamera
_08068A28:
	ldr r0, [r3, #8]
	ldr r1, _08068A34 @ =0xFFFFFBFF
	ands r0, r1
_08068A2E:
	str r0, [r3, #8]
	pop {r0}
	bx r0
	.align 2, 0
_08068A34: .4byte 0xFFFFFBFF

	thumb_func_start sub_8068A38
sub_8068A38: @ 0x08068A38
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	adds r0, #0x3c
	lsls r2, r2, #0x18
	cmp r2, #0
	bne _08068A62
	ldr r0, [r0, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08068A58
	strh r3, [r4, #0x14]
	b _08068A64
_08068A58:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	strh r0, [r4, #0x14]
	b _08068A64
_08068A62:
	strh r3, [r4, #0x16]
_08068A64:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8068A6C
sub_8068A6C: @ 0x08068A6C
	push {r4, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r0, [r3, #0x44]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08068A90
	ldrh r1, [r3, #0x14]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r3, #0x14]
	b _08068A9A
_08068A90:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r3, #0x14]
	adds r0, r0, r1
	strh r0, [r3, #0x14]
_08068A9A:
	ldrh r1, [r3, #0x16]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r3, #0x16]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8068AAC
sub_8068AAC: @ 0x08068AAC
	push {lr}
	adds r0, #0x21
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08068AC6
	movs r0, #0
_08068ABC:
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _08068ABC
_08068AC6:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8068ACC
sub_8068ACC: @ 0x08068ACC
	adds r0, #0x78
	movs r1, #1
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	bx lr

	thumb_func_start sub_8068AD8
sub_8068AD8: @ 0x08068AD8
	adds r0, #0x78
	movs r1, #0
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	bx lr

	thumb_func_start sub_8068AE4
sub_8068AE4: @ 0x08068AE4
	adds r2, r0, #0
	adds r2, #0xa0
	adds r0, #0x32
	movs r1, #0x14
	strb r1, [r0]
	movs r1, #0
	ldr r0, _08068B08 @ =0x0000050E
	strh r0, [r2, #0xc]
	strb r1, [r2, #0x1a]
	ldr r0, _08068B0C @ =0x0000FFFF
	strh r0, [r2, #0x18]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r2, #0x14]
	bx lr
	.align 2, 0
_08068B08: .4byte 0x0000050E
_08068B0C: .4byte 0x0000FFFF

	thumb_func_start sub_8068B10
sub_8068B10: @ 0x08068B10
	adds r2, r0, #0
	adds r2, #0xa0
	adds r0, #0x32
	movs r1, #0x12
	strb r1, [r0]
	movs r1, #0
	ldr r0, _08068B34 @ =0x00000514
	strh r0, [r2, #0xc]
	strb r1, [r2, #0x1a]
	ldr r0, _08068B38 @ =0x0000FFFF
	strh r0, [r2, #0x18]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r2, #0x14]
	bx lr
	.align 2, 0
_08068B34: .4byte 0x00000514
_08068B38: .4byte 0x0000FFFF

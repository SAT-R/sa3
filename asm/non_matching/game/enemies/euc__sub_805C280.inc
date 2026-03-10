
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	movs r0, #0
	mov r8, r0
	ldr r1, [r7, #0x10]
	str r1, [sp, #4]
	lsls r0, r1, #8
	ldr r3, [r7, #0x14]
	mov sl, r3
	lsls r2, r3, #8
	ldrh r1, [r7, #0xc]
	lsls r1, r1, #8
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldrh r0, [r7, #0xe]
	lsls r0, r0, #8
	asrs r2, r2, #0x10
	adds r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r3, [r7, #0x1c]     @ r3 = Sprite *
	ldr r1, _0805C328 @ =gCamera
	ldr r6, [r1]
	ldrh r0, [r3, #0x10]
	adds r0, r0, r6
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r1, [r1, #4]
	ldrh r0, [r3, #0x12]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, [r7, #4]
	cmp r0, #0
	beq _0805C3AC
	ldr r0, _0805C32C @ =gStageData
	ldrb r0, [r0, #0xa]
	cmp r0, #9
	beq _0805C33C
	lsls r5, r5, #0x10
	asrs r5, r5, #8
	lsls r4, r4, #0x10
	asrs r4, r4, #8
	ldr r0, [r7, #0x18]
	mov sb, r0
	ldr r0, _0805C330 @ =Task_40_805C198
	ldr r1, _0805C334 @ =TaskDestructor_805D09C
	str r1, [sp]
	movs r1, #0x40
	ldr r2, _0805C338 @ =0x00004040
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r2, #0
	movs r1, #0x3c
	strh r1, [r0, #0xa]
	str r5, [r0, #0xc]
	str r4, [r0, #0x10]
	mov r3, r8
	strh r3, [r0, #6]
	strh r3, [r0, #8]
	mov r4, sb
	str r4, [r0, #0x14]
	strb r2, [r0, #4]
	strb r2, [r0, #5]
	bl sub_805C138
	movs r0, #0x8a
	bl m4aSongNumStart
	b _0805C38A
	.align 2, 0
_0805C328: .4byte gCamera
_0805C32C: .4byte gStageData
_0805C330: .4byte Task_40_805C198
_0805C334: .4byte TaskDestructor_805D09C
_0805C338: .4byte 0x00004040
_0805C33C:
	movs r0, #0x10
	ldrsh r5, [r3, r0]
	adds r5, r5, r6
	lsls r5, r5, #8
	movs r0, #0x12
	ldrsh r4, [r3, r0]
	adds r4, r4, r1
	lsls r4, r4, #8
	ldr r1, [r7, #0x18]
	mov sb, r1
	ldr r0, _0805C39C @ =Task_40_805C198
	ldr r1, _0805C3A0 @ =TaskDestructor_805D09C
	str r1, [sp]
	movs r1, #0x40
	ldr r2, _0805C3A4 @ =0x00004040
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r0, r0, r3
	movs r2, #0
	movs r1, #0x3c
	strh r1, [r0, #0xa]
	str r5, [r0, #0xc]
	str r4, [r0, #0x10]
	mov r4, r8
	strh r4, [r0, #6]
	strh r4, [r0, #8]
	mov r5, sb
	str r5, [r0, #0x14]
	strb r2, [r0, #4]
	strb r2, [r0, #5]
	bl sub_805C138
	movs r0, #0x8a
	bl m4aSongNumStart
_0805C38A:
	ldr r0, _0805C3A8 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #4
	bhi _0805C394
	b _0805C4FA
_0805C394:
	ldr r0, [r7]
	bl sub_8027578
	b _0805C4FA
	.align 2, 0
_0805C39C: .4byte Task_40_805C198
_0805C3A0: .4byte TaskDestructor_805D09C
_0805C3A4: .4byte 0x00004040
_0805C3A8: .4byte gStageData
_0805C3AC:
	ldr r0, [r7]
	ldrb r1, [r0]
	ldr r3, _0805C468 @ =gStageData
	ldrb r0, [r3, #3]
	cmp r0, #4
	bhi _0805C3BA
	b _0805C4D4
_0805C3BA:
	lsls r0, r1, #0x18
	asrs r6, r0, #0x18
	movs r0, #6
	rsbs r0, r0, #0
	cmp r6, r0
	bge _0805C3C8
	b _0805C4D4
_0805C3C8:
	adds r0, #3
	cmp r6, r0
	ble _0805C3D0
	b _0805C4D4
_0805C3D0:
	ldrb r0, [r3, #0xa]
	cmp r0, #9
	beq _0805C484
	ldrh r4, [r7, #0xc]
	ldrh r5, [r7, #0xe]
	ldr r0, [r7, #0x18]
	mov sb, r0
	ldr r0, _0805C46C @ =Task_40_805C198
	ldr r1, _0805C470 @ =TaskDestructor_805D09C
	str r1, [sp]
	movs r1, #0x40
	ldr r2, _0805C474 @ =0x00004040
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r3, #0
	mov r8, r3
	movs r1, #0x3c
	strh r1, [r0, #0xa]
	ldr r1, [sp, #4]
	str r1, [r0, #0xc]
	mov r3, sl
	str r3, [r0, #0x10]
	strh r4, [r0, #6]
	strh r5, [r0, #8]
	mov r4, sb
	str r4, [r0, #0x14]
	mov r5, r8
	strb r5, [r0, #4]
	strb r5, [r0, #5]
	bl sub_805C138
	movs r0, #0x8a
	bl m4aSongNumStart
	ldrh r0, [r7, #0xc]
	mov sb, r0
	ldrh r1, [r7, #0xe]
	mov sl, r1
	ldr r5, [r7, #0x10]
	ldr r7, [r7, #0x14]
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r6
	lsls r0, r0, #4
	ldr r1, _0805C478 @ =gUnknown_03001DA0
	adds r4, r0, r1
	cmp r4, #0
	beq _0805C4FA
	ldr r0, _0805C47C @ =Task_14_805C03C
	ldr r1, _0805C480 @ =TaskDestructor_805C03C
	str r1, [sp]
	movs r1, #0x14
	ldr r2, _0805C474 @ =0x00004040
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r0, r0, r3
	mov r1, r8
	strb r1, [r0]
	str r4, [r0, #0x10]
	str r5, [r0, #8]
	str r7, [r0, #0xc]
	mov r3, sb
	strh r3, [r0, #2]
	mov r4, sl
	strh r4, [r0, #4]
	b _0805C4FA
	.align 2, 0
_0805C468: .4byte gStageData
_0805C46C: .4byte Task_40_805C198
_0805C470: .4byte TaskDestructor_805D09C
_0805C474: .4byte 0x00004040
_0805C478: .4byte gUnknown_03001DA0
_0805C47C: .4byte Task_14_805C03C
_0805C480: .4byte TaskDestructor_805C03C
_0805C484:
	ldrh r4, [r7, #0xc]
	ldrh r5, [r7, #0xe]
	ldr r7, [r7, #0x18]
	ldr r0, _0805C4C8 @ =Task_40_805C198
	ldr r1, _0805C4CC @ =TaskDestructor_805D09C
	str r1, [sp]
	movs r1, #0x40
	ldr r2, _0805C4D0 @ =0x00004040
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r2, #0
	movs r1, #0x3c
	strh r1, [r0, #0xa]
	ldr r3, [sp, #4]
	str r3, [r0, #0xc]
	mov r1, sl
	str r1, [r0, #0x10]
	strh r4, [r0, #6]
	strh r5, [r0, #8]
	str r7, [r0, #0x14]
	strb r2, [r0, #4]
	strb r2, [r0, #5]
	bl sub_805C138
	movs r0, #0x8a
	bl m4aSongNumStart
	b _0805C4FA
	.align 2, 0
_0805C4C8: .4byte Task_40_805C198
_0805C4CC: .4byte TaskDestructor_805D09C
_0805C4D0: .4byte 0x00004040
_0805C4D4:
	ldr r3, [r7, #0x1c]
	mov r4, sb
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	movs r5, #0x10
	ldrsh r2, [r3, r5]
	movs r4, #0x12
	ldrsh r3, [r3, r4]
	bl sub_805CF90
	cmp r0, #0
	bne _0805C4FE
	ldr r1, [r7]
	cmp r1, #0
	beq _0805C4FA
	ldrb r0, [r7, #8]
	strb r0, [r1]
_0805C4FA:
	movs r0, #1
	b _0805C500
_0805C4FE:
	movs r0, #0
_0805C500:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

.syntax divided

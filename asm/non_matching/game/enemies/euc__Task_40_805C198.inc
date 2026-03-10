
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0805C220 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0xc]
	mov sl, r0
	lsls r0, r0, #8
	ldr r1, [r4, #0x10]
	mov sb, r1
	lsls r2, r1, #8
	ldrh r1, [r4, #6]
	lsls r1, r1, #8
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrh r0, [r4, #8]
	lsls r0, r0, #8
	asrs r2, r2, #0x10
	adds r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r1, r2, #0x10
	ldr r0, _0805C224 @ =gStageData
	ldrb r3, [r0, #0xa]
	cmp r3, #7
	beq _0805C234
	cmp r3, #9
	beq _0805C23A
	ldrh r6, [r4, #4]
	cmp r6, #0
	bne _0805C234
	ldrh r7, [r4, #6]
	ldrh r0, [r4, #8]
	mov r8, r0
	ldr r5, [r4, #0x14]
	cmp r5, #0
	beq _0805C256
	ldr r0, _0805C228 @ =Task_14_805C03C
	ldr r1, _0805C22C @ =TaskDestructor_805C03C
	str r1, [sp]
	movs r1, #0x14
	ldr r2, _0805C230 @ =0x00004040
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	strb r6, [r0]
	str r5, [r0, #0x10]
	mov r1, sl
	str r1, [r0, #8]
	mov r1, sb
	str r1, [r0, #0xc]
	strh r7, [r0, #2]
	mov r1, r8
	strh r1, [r0, #4]
	b _0805C256
	.align 2, 0
_0805C220: .4byte gCurTask
_0805C224: .4byte gStageData
_0805C228: .4byte Task_14_805C03C
_0805C22C: .4byte TaskDestructor_805C03C
_0805C230: .4byte 0x00004040
_0805C234:
	ldrb r0, [r0, #0xa]
	cmp r0, #9
	bne _0805C25A
_0805C23A:
	ldrh r0, [r4, #4]
	cmp r0, #0
	bne _0805C25A
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, [r4, #0x14]
	adds r2, #0x2a
	ldrb r2, [r2]
	lsls r2, r2, #0x1c
	lsrs r2, r2, #0x1c
	bl CreateBonusFlower
_0805C256:
	movs r0, #1
	strb r0, [r4, #5]
_0805C25A:
	adds r0, r4, #0
	bl sub_805D058
	cmp r0, #0
	bne _0805C26C
	ldr r0, _0805C27C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_0805C26C:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805C27C: .4byte gCurTask

.syntax divided

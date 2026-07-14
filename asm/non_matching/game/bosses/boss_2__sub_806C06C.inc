
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov sb, r0
	mov r6, sb
	adds r6, #0x10
	movs r4, #0
	movs r0, #0x10
	ldrsh r1, [r6, r0]
	ldr r2, _0806C0A0 @ =gCamera
	ldr r0, [r2]
	adds r1, r1, r0
	mov r8, r1
	movs r0, #0x12
	ldrsh r1, [r6, r0]
	ldr r0, [r2, #4]
	adds r7, r1, r0
	movs r5, #0
_0806C094:
	cmp r5, #0
	bne _0806C0A8
	ldr r0, _0806C0A4 @ =gStageData
	ldrb r1, [r0, #6]
	b _0806C0B2
	.align 2, 0
_0806C0A0: .4byte gCamera
_0806C0A4: .4byte gStageData
_0806C0A8:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0806C0B2:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0806C0E0 @ =gPlayers
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C080
	adds r5, #1
	cmp r0, #0
	bne _0806C116
	str r0, [sp]
	adds r0, r6, #0
	mov r1, r8
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_8020950
	cmp r0, #0
	beq _0806C116
	b _0806C102
	.align 2, 0
_0806C0E0: .4byte gPlayers
_0806C0E4:
	mov r1, sb
	ldr r0, [r1, #8]
	asrs r0, r0, #8
	cmp r0, #4
	bne _0806C0F8
	ldr r0, [r4, #0x10]
	ldr r1, _0806C0F4 @ =0xFFFFFF00
	b _0806C0FE
	.align 2, 0
_0806C0F4: .4byte 0xFFFFFF00
_0806C0F8:
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
_0806C0FE:
	adds r0, r0, r1
	str r0, [r4, #0x10]
_0806C102:
	movs r0, #0
	str r0, [sp]
	adds r0, r6, #0
	mov r1, r8
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_8020950
	cmp r0, #0
	bne _0806C0E4
_0806C116:
	lsls r0, r5, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0806C094
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

.syntax divided

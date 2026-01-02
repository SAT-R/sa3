
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r1, _08019280 @ =gUnknown_080CE7C8
	mov r0, sp
	movs r2, #0x10
	bl memcpy
	ldr r4, _08019284 @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, [r5, #0x28]
	str r0, [sp, #0x10]
	ldrh r0, [r5, #0x2c]
	subs r0, #1
	strh r0, [r5, #0x2c]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08019288
	movs r0, #0x75
	bl sub_8003DF0
	ldr r0, [r4]
	bl TaskDestroy
	b _08019304
	.align 2, 0
_08019280: .4byte gUnknown_080CE7C8
_08019284: .4byte gCurTask
_08019288:
	ldrh r4, [r5, #0x2c]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	movs r1, #0
	movs r2, #1
	add r2, sp
	mov sl, r2
	lsls r4, r4, #0x10
	asrs r6, r4, #0x10
	ldr r7, _08019314 @ =gCamera
	mov r8, r7
	movs r0, #1
	ands r0, r6
	lsls r0, r0, #2
	mov sb, r0
_080192A8:
	lsls r4, r1, #0x10
	asrs r4, r4, #0x10
	mov r0, sb
	adds r1, r4, r0
	lsls r1, r1, #1
	mov r2, sp
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r0, #0
	muls r2, r6, r2
	add r1, sl
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r3, r0, #0
	muls r3, r6, r3
	ldr r7, [sp, #0x10]
	ldr r1, [r7, #0x10]
	asrs r1, r1, #8
	mov r7, r8
	ldr r0, [r7]
	subs r1, r1, r0
	lsls r2, r2, #0x16
	asrs r2, r2, #0x18
	adds r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r0, [sp, #0x10]
	ldr r1, [r0, #0x14]
	asrs r1, r1, #8
	ldr r0, [r7, #4]
	subs r1, r1, r0
	lsls r3, r3, #0x16
	asrs r3, r3, #0x18
	adds r3, r3, r1
	adds r3, #8
	strh r3, [r5, #0x12]
	adds r0, r5, #0
	bl DisplaySprite
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r1, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #3
	ble _080192A8
_08019304:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08019314: .4byte gCamera

.syntax divided


.syntax unified
.text
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r4, #0
	movs r1, #0
	movs r2, #0
	ldr r0, [r5, #0x28]
	movs r3, #0x12
	ldrsh r0, [r0, r3]
	ldr r3, _08078C14 @ =gCamera
	ldr r3, [r3, #4]
	adds r0, r0, r3
	str r4, [sp]
	ldr r3, _08078C18 @ =sa2__sub_801EE64
	str r3, [sp, #4]
	movs r2, #0
	movs r3, #8
	bl sa2__sub_801F07C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _08078BF2
	lsls r1, r0, #8
	ldr r0, [r5, #0x24]
	adds r0, r0, r1
	str r0, [r5, #0x24]
	movs r0, #0xff
	strb r0, [r5, #6]
	ldr r0, [r5, #0x10]
	asrs r0, r0, #1
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	rsbs r0, r0, #0
	str r0, [r5, #0x18]
_08078BF2:
	movs r0, #6
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	ldr r1, [r5, #0x18]
	subs r1, r1, r0
	str r1, [r5, #0x18]
	ldr r2, [r5, #0x10]
	adds r2, r2, r1
	str r2, [r5, #0x10]
	ldr r0, [r5, #0x24]
	adds r0, r0, r2
	str r0, [r5, #0x24]
	cmp r2, #0
	beq _08078C1C
	movs r0, #0
	b _08078C1E
	.align 2, 0
_08078C14: .4byte gCamera
_08078C18: .4byte sa2__sub_801EE64
_08078C1C:
	movs r0, #1
_08078C1E:
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

.syntax divided

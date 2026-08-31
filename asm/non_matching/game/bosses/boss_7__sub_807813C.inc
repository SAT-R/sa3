
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, [r4, #0x20]
	ldr r3, [r4, #0xc]
	adds r0, r0, r3
	str r0, [r4, #0x20]
	asrs r0, r0, #8
	ldr r1, _08078160 @ =gCamera
	ldr r2, [r1]
	adds r5, r0, r2
	ldr r0, [r1, #0x1c]
	adds r7, r1, #0
	cmp r5, r0
	ble _08078164
	movs r0, #0xff
	b _0807816C
	.align 2, 0
_08078160: .4byte gCamera
_08078164:
	ldr r0, [r7, #0x18]
	cmp r5, r0
	bge _08078172
	movs r0, #1
_0807816C:
	strb r0, [r4, #5]
	rsbs r0, r3, #0
	str r0, [r4, #0xc]
_08078172:
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x24]
	ldr r1, [r4, #0x20]
	asrs r1, r1, #8
	ldr r2, [r7]
	adds r1, r1, r2
	asrs r0, r0, #8
	ldr r2, [r7, #4]
	adds r0, r0, r2
	adds r6, r0, #0
	movs r2, #0
	str r2, [sp]
	ldr r2, _080781A4 @ =sa2__sub_801EE64
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801F07C
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _080781A8
	movs r0, #0xff
	b _080781B0
	.align 2, 0
_080781A4: .4byte sa2__sub_801EE64
_080781A8:
	ldr r0, [r7, #0x10]
	cmp r6, r0
	bge _080781B8
	movs r0, #1
_080781B0:
	strb r0, [r4, #6]
	ldr r0, [r4, #0x10]
	rsbs r0, r0, #0
	str r0, [r4, #0x10]
_080781B8:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

.syntax divided

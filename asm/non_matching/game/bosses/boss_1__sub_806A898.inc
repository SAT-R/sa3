
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	movs r1, #0xb0
	lsls r1, r1, #1
	adds r4, r0, r1
	ldr r1, [r0, #0x58]
	asrs r1, r1, #8
	ldr r3, _0806A8FC @ =gCamera
	ldr r2, [r3]
	subs r6, r1, r2
	ldr r1, [r0, #0x5c]
	asrs r1, r1, #8
	ldr r2, [r3, #4]
	subs r7, r1, r2
	ldr r0, [r0, #0x34]
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r2, _0806A900 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #1
	movs r5, #0x40
	str r5, [sp]
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #4]
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #8]
	ldr r1, _0806A904 @ =gBgAffineRegs
	str r1, [sp, #0xc]
	adds r1, r2, #0
	movs r3, #0x40
	bl sa2__sub_8003EE4
	strh r5, [r4, #0x10]
	movs r0, #0x68
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl sub_80BE46C
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806A8FC: .4byte gCamera
_0806A900: .4byte 0x000003FF
_0806A904: .4byte gBgAffineRegs

.syntax divided


.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r7, #0x4c
	ldr r1, [r0, #0x1c]
	asrs r6, r1, #8
	ldr r1, [r0, #0x20]
	asrs r5, r1, #8
	ldrh r1, [r0, #0xa]
	lsls r1, r1, #8
	adds r6, r6, r1
	ldrh r0, [r0, #0xc]
	lsls r0, r0, #8
	adds r5, r5, r0
	movs r4, #0
	movs r0, #0xff
	lsls r0, r0, #1
	mov r8, r0
	b _0805A9F2
_0805A98C:
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	subs r0, r0, r5
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x10]
	asrs r1, r1, #8
	subs r1, r1, r6
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sa2__sub_8004418
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r1, _0805A9E4 @ =0xFCFF0000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	cmp r0, #0xfe
	bls _0805A9BC
	subs r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xfe
	bhi _0805A9C8
_0805A9BC:
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0805A9E0
_0805A9C8:
	ldr r1, _0805A9E8 @ =0xFFFFFEFF
	adds r0, r2, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r8
	bhi _0805A9EC
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0805A9EC
_0805A9E0:
	movs r0, #1
	b _0805AA04
	.align 2, 0
_0805A9E4: .4byte 0xFCFF0000
_0805A9E8: .4byte 0xFFFFFEFF
_0805A9EC:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0805A9F2:
	cmp r4, #1
	bhi _0805AA02
	adds r0, r4, #0
	bl sub_805CD20
	adds r1, r0, #0
	cmp r1, #0
	bne _0805A98C
_0805AA02:
	movs r0, #0
_0805AA04:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

.syntax divided

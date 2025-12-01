
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r3, r0, #0
	movs r4, #0
	movs r0, #0x80
	lsls r0, r0, #5
	mov r8, r0
	movs r1, #0x80
	lsls r1, r1, #4
	mov ip, r1
	ldr r7, _0805E688 @ =gSineTable
	adds r5, r3, #0
	adds r5, #0x2c
	movs r6, #0xff
_0805E642:
	adds r0, r3, #6
	adds r0, r0, r4
	ldrb r2, [r0]
	cmp r2, #0
	bne _0805E6AC
	lsls r1, r4, #1
	adds r0, r3, #0
	adds r0, #0xe
	adds r1, r0, r1
	ldrh r0, [r1]
	adds r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r8
	bls _0805E664
	strh r2, [r1]
_0805E664:
	ldrh r0, [r1]
	lsls r1, r0, #0x10
	cmp r0, ip
	bls _0805E68C
	lsls r2, r4, #3
	adds r2, r5, r2
	lsrs r0, r1, #0x14
	ands r0, r6
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #2
	movs r1, #0x90
	lsls r1, r1, #5
	b _0805E6A4
	.align 2, 0
_0805E688: .4byte gSineTable
_0805E68C:
	lsls r2, r4, #3
	adds r2, r5, r2
	lsrs r0, r1, #0x14
	ands r0, r6
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #4
	movs r1, #0x80
	lsls r1, r1, #6
_0805E6A4:
	adds r0, r0, r1
	ldr r1, [r3, #0x24]
	subs r1, r1, r0
	str r1, [r2]
_0805E6AC:
	cmp r4, #0
	bne _0805E6B8
	ldr r0, [r3, #0x20]
	add r0, ip
	str r0, [r3, #0x28]
	b _0805E6C8
_0805E6B8:
	lsls r0, r4, #3
	adds r1, r3, #0
	adds r1, #0x28
	adds r1, r1, r0
	ldr r0, [r3, #0x20]
	ldr r2, _0805E6DC @ =0xFFFFF800
	adds r0, r0, r2
	str r0, [r1]
_0805E6C8:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0805E642
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805E6DC: .4byte 0xFFFFF800

.syntax divided

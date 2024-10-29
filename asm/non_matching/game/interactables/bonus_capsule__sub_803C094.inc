
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x14
	adds r7, r0, #0     @ r7 = s
	mov r8, r2          @ r8 = worldX
	mov sb, r3          @ sb = worldY
	ldr r5, [sp, #0x30] @ r5 = p
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r6, r1, #0     @ r6 = param1
	adds r0, r5, #0
	adds r0, #0x24
	ldrb r4, [r0]
	rsbs r0, r4, #0
	add r1, sp, #0x10
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x25
	ldrb r3, [r0]
	rsbs r2, r3, #0
	mov r0, sp
	adds r0, #0x11
	strb r2, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #1
	strb r3, [r0]
	add r0, sp, #0xc
	movs r2, #4
	bl memcpy
	lsls r1, r6, #3
	adds r0, r7, #0
	adds r0, #0x20
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0803C0F4
	ldr r1, [r5, #4]
	movs r2, #0x80
	lsls r2, r2, #1
	ands r2, r1
	cmp r2, #0
	beq _0803C0F8
_0803C0F4:
	movs r0, #0
	b _0803C11E
_0803C0F8:
	ldr r0, [sp, #0x34]
	cmp r0, #0
	beq _0803C10A
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #4
	orrs r1, r0
	str r1, [r5, #4]
_0803C10A:
	add r0, sp, #0xc
	str r0, [sp]
	str r5, [sp, #4]
	str r2, [sp, #8]
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, r8
	mov r3, sb
	bl sub_8020A58
_0803C11E:
	add sp, #0x14
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

.syntax divided

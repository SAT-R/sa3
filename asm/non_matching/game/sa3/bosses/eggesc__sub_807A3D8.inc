
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov sb, r0
	ldr r6, [sp, #0x20]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r5, r3, #0x18
	movs r3, #0
	ldrb r0, [r6]
	cmp r0, #0
	bne _0807A400
	movs r0, #0
	b _0807A45A
_0807A400:
	movs r4, #0
	cmp r3, r8
	bhs _0807A458
	mov r0, sb
	ldr r1, [r0]
_0807A40A:
	ldr r2, [r1, #0x14]
	ldrh r0, [r2, #0xc]
	cmp r0, r7
	bne _0807A424
	ldrb r0, [r2, #0x1a]
	cmp r0, r5
	bne _0807A424
	ldrb r0, [r6]
	subs r0, #1
	strb r0, [r6]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0807A442
_0807A424:
	ldrb r0, [r1, #2]
	cmp r0, #0
	beq _0807A444
	adds r0, r1, #0
	adds r0, #0x30
	ldrb r1, [r1, #2]
	str r6, [sp]
	adds r2, r7, #0
	adds r3, r5, #0
	bl sub_807A3D8
	adds r3, r0, #0
	cmp r3, #0
	beq _0807A444
	b _0807A45A
_0807A442:
	adds r3, r1, #0
_0807A444:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r8
	bhs _0807A458
	lsls r0, r4, #2
	add r0, sb
	ldr r1, [r0]
	cmp r3, #0
	beq _0807A40A
_0807A458:
	adds r0, r3, #0
_0807A45A:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

.syntax divided

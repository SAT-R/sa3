
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r1, #0
	lsls r0, r0, #0x10
	movs r1, #0x34
	adds r1, r1, r4
	mov r8, r1
	cmp r0, #0
	bne _0802BD22
	movs r3, #0x24
	adds r3, r3, r4
	mov r8, r3
_0802BD22:
	ldrh r1, [r4, #2]
	ldr r0, [r4, #4]
	muls r0, r1, r0
	ldrh r1, [r4]
	ldr r2, [r4, #0x48]
	lsls r1, r1, #2
	lsls r0, r0, #2
	adds r0, r0, r2
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r4, #0x18]
	cmp r0, #0
	beq _0802BDD0
	subs r0, #8
	adds r0, r2, r0
	str r0, [r4, #0xc]
	movs r1, #0
	str r1, [r4, #0x18]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r1, #1
	cmp r0, r1
	beq _0802BDD0
	movs r5, #2
	rsbs r5, r5, #0
	mov sl, r5
	mov sb, r1
_0802BD5A:
	ldr r2, [r4, #0xc]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, sl
	bge _0802BD68
	adds r0, r2, #0
	b _0802BDBA
_0802BD68:
	ldrb r1, [r2]
	lsls r1, r1, #3
	ldrh r0, [r4]
	lsls r0, r0, #8
	adds r3, r1, r0
	str r3, [r4, #0x1c]
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	ldrh r0, [r4, #2]
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [r4, #0x20]
	mov r5, r8
	ldr r0, [r5]
	ldrh r7, [r4, #2]
	ldrh r6, [r4]
	cmp r3, r0
	blt _0802BDB8
	ldr r0, [r5, #8]
	cmp r3, r0
	bgt _0802BDB8
	ldr r0, [r5, #4]
	cmp r1, r0
	blt _0802BDB8
	ldr r0, [r5, #0xc]
	cmp r1, r0
	bgt _0802BDB8
	ldr r1, _0802BDE0 @ =gSpriteInits_Interactables
	ldrb r0, [r2, #2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r5, [r0]
	cmp r5, #0
	beq _0802BDB8
	ldrb r3, [r4, #0x18]
	adds r0, r2, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl _call_via_r5
_0802BDB8:
	ldr r0, [r4, #0xc]
_0802BDBA:
	adds r0, #8
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x18]
	adds r0, #1
	str r0, [r4, #0x18]
	ldr r0, [r4, #0xc]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, sb
	bne _0802BD5A
_0802BDD0:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802BDE0: .4byte gSpriteInits_Interactables

.syntax divided

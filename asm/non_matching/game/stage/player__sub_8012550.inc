
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r4, r0, #0
	adds r0, #0x27
	ldrb r5, [r0]
	ldr r0, [r4, #0x10]
	str r0, [sp, #8]
	ldr r1, [r4, #0x14]
	str r1, [sp, #0xc]
	movs r0, #0x18
	ldrsh r2, [r4, r0]
	str r2, [sp, #0x10]
	movs r2, #0x1a
	ldrsh r1, [r4, r2]
	str r1, [sp, #0x14]
	ldr r1, [sp, #0xc]
	asrs r0, r1, #8
	subs r0, #3
	movs r2, #0x25
	adds r2, r2, r4
	mov r8, r2
	movs r1, #0
	ldrsb r1, [r2, r1]
	subs r6, r0, r1
	ldr r0, [sp, #8]
	asrs r7, r0, #8
	adds r2, r5, #0
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	ldr r0, _0801262C @ =0x000002FF
	cmp r1, r0
	bgt _0801259C
	movs r2, #0x80
	orrs r2, r5
_0801259C:
	movs r3, #8
	rsbs r3, r3, #0
	movs r1, #0
	mov sl, r1
	str r1, [sp]
	ldr r0, _08012630 @ =sub_805217C
	mov sb, r0
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_80517FC
	cmp r0, #0
	bgt _080125C0
	lsls r1, r0, #8
	ldr r0, [r4, #0x14]
	subs r0, r0, r1
	str r0, [r4, #0x14]
_080125C0:
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	adds r0, #3
	mov r2, r8
	movs r1, #0
	ldrsb r1, [r2, r1]
	adds r3, r0, r1
	ldr r0, [r4, #0x10]
	asrs r1, r0, #8
	adds r2, r5, #0
	movs r5, #0x1a
	ldrsh r0, [r4, r5]
	cmp r0, #0
	bge _080125E0
	movs r0, #0x80
	orrs r2, r0
_080125E0:
	mov r0, sl
	str r0, [sp]
	mov r5, sb
	str r5, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	bl sub_80517FC
	cmp r0, #0
	bgt _080125FC
	lsls r1, r0, #8
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
_080125FC:
	movs r0, #1
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8011024
	ldr r1, [sp, #8]
	str r1, [r4, #0x10]
	ldr r2, [sp, #0xc]
	str r2, [r4, #0x14]
	mov r5, sp
	ldrh r5, [r5, #0x10]
	strh r5, [r4, #0x18]
	mov r1, sp
	ldrh r1, [r1, #0x14]
	strh r1, [r4, #0x1a]
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0801262C: .4byte 0x000002FF
_08012630: .4byte sub_805217C

.syntax divided

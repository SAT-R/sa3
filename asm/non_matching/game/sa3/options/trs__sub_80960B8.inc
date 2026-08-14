
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	ldrb r1, [r6]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	str r0, [sp, #4]
	ldrb r0, [r6, #0x1e]
	str r0, [sp]
	ldrb r1, [r6, #0x1f]
	mov sl, r1
	movs r2, #0
	mov sb, r2
_080960DC:
	mov r3, sb
	lsls r1, r3, #1
	ldr r2, [sp]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	mov r3, sl
	lsls r0, r3, #4
	subs r0, r0, r3
	lsls r0, r0, #4
	adds r1, r1, r0
	mov r8, r1
	ldr r1, _080961D0 @ =0x0000054C
	adds r0, r6, r1
	mov r2, r8
	adds r7, r0, r2
	ldrb r0, [r7]
	cmp r0, #4
	bhi _080961C0
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r3, #0xd3
	lsls r3, r3, #2
	adds r0, r0, r3
	adds r2, r6, r0
	mov r0, sb
	lsls r1, r0, #3
	adds r0, r6, #0
	adds r0, #0x78
	adds r0, r0, r1
	ldr r4, [r0]
	asrs r4, r4, #8
	adds r4, #0x20
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	strh r4, [r2, #0x10]
	adds r5, r6, #0
	adds r5, #0x7c
	adds r5, r5, r1
	ldr r0, [r5]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	ldr r0, [r2, #8]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #8]
	adds r0, r2, #0
	bl DisplaySprite
	ldr r3, _080961D4 @ =0x00000414
	adds r2, r6, r3
	ldr r1, _080961D8 @ =gUnknown_080D8B44
	ldrh r0, [r1]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r2, #0x1a]
	ldr r1, _080961DC @ =gUnknown_080D8BE7
	ldr r3, [sp, #4]
	lsls r0, r3, #2
	orrs r0, r3
	ldrb r7, [r7]
	adds r0, r0, r7
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	strh r4, [r2, #0x10]
	ldr r0, [r5]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	ldr r0, [r2, #8]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #8]
	adds r0, r2, #0
	bl DisplaySprite
	ldr r2, _080961E0 @ =0x0000054D
	adds r0, r6, r2
	add r0, r8
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r3, #0xd3
	lsls r3, r3, #2
	adds r0, r0, r3
	adds r2, r6, r0
	adds r4, #0x10
	strh r4, [r2, #0x10]
	ldr r0, [r5]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	ldr r0, [r2, #8]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #8]
	adds r0, r2, #0
	bl DisplaySprite
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #4
	bls _080960DC
_080961C0:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080961D0: .4byte 0x0000054C
_080961D4: .4byte 0x00000414
_080961D8: .4byte gUnknown_080D8B44
_080961DC: .4byte gUnknown_080D8BE7
_080961E0: .4byte 0x0000054D

.syntax divided

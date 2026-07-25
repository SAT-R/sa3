
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r0
	movs r7, #0x82
	lsls r7, r7, #1
	add r7, r8
	movs r2, #0x96
	lsls r2, r2, #1
	add r2, r8
	ldrb r0, [r0, #0x18]
	cmp r0, #1
	bne _080711EA
	b _08071308
_080711EA:
	cmp r0, #1
	bgt _080711F4
	cmp r0, #0
	beq _080711FC
	b _080713FC
_080711F4:
	cmp r0, #2
	bne _080711FA
	b _080713A4
_080711FA:
	b _080713FC
_080711FC:
	mov r5, r8
	adds r5, #0xa8
	ldr r0, [r5]
	asrs r0, r0, #8
	ldr r1, _080712F4 @ =gCamera
	mov sl, r1
	ldr r1, [r1]
	subs r0, r0, r1
	strh r0, [r7, #0x10]
	mov r4, r8
	adds r4, #0xac
	ldr r0, [r4]
	asrs r0, r0, #8
	mov r3, sl
	ldr r1, [r3, #4]
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	mov r1, r8
	ldrh r0, [r1, #0x28]
	strh r0, [r2]
	ldrh r0, [r7, #0x10]
	strh r0, [r2, #6]
	ldrh r0, [r7, #0x12]
	strh r0, [r2, #8]
	adds r0, r7, #0
	adds r1, r2, #0
	bl TransformSprite
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	mov r2, r8
	ldr r1, [r2, #4]
	ldr r3, _080712F8 @ =0xFFFFE000
	adds r0, r1, r3
	ldr r4, [r4]
	cmp r4, r0
	bne _08071250
	b _080713FC
_08071250:
	movs r7, #0x9c
	lsls r7, r7, #1
	add r7, r8
	ldr r0, [r2]
	mov sb, r0
	ldr r2, _080712FC @ =0xFFFFC800
	adds r2, r2, r1
	mov r8, r2
	ldr r0, [r5]
	mov r3, sb
	subs r6, r0, r3
	subs r5, r4, r2
	lsls r0, r5, #8
	asrs r0, r0, #0x10
	lsls r1, r6, #8
	asrs r1, r1, #0x10
	bl sa2__sub_8004418
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r1, r6, #0
	muls r1, r6, r1
	adds r0, r5, #0
	muls r0, r5, r0
	adds r2, r1, r0
	adds r0, r2, #0
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r6, #0
	asrs r2, r0, #3
	ldr r1, _08071300 @ =gSineTable
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r4, r3
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r0, r2, r0
	cmp r0, #0
	bge _080712AA
	ldr r3, _08071304 @ =0x00003FFF
	adds r0, r0, r3
_080712AA:
	asrs r6, r0, #0xe
	lsls r0, r4, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r2, r0
	cmp r0, #0
	bge _080712BE
	ldr r2, _08071304 @ =0x00003FFF
	adds r0, r0, r2
_080712BE:
	asrs r5, r0, #0xe
	movs r4, #0
	mov r2, sl
_080712C4:
	mov r3, sb
	asrs r0, r3, #8
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r7, #0x10]
	mov r1, r8
	asrs r0, r1, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	str r2, [sp]
	bl DisplaySprite
	add sb, r6
	add r8, r5
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r2, [sp]
	cmp r4, #7
	bls _080712C4
	b _080713FC
	.align 2, 0
_080712F4: .4byte gCamera
_080712F8: .4byte 0xFFFFE000
_080712FC: .4byte 0xFFFFC800
_08071300: .4byte gSineTable
_08071304: .4byte 0x00003FFF
_08071308:
	movs r2, #0xa8
	add r2, r8
	mov sb, r2
	ldr r0, [r2]
	asrs r0, r0, #8
	ldr r5, _080713A0 @ =gCamera
	ldr r1, [r5]
	subs r0, r0, r1
	strh r0, [r7, #0x10]
	mov r4, r8
	adds r4, #0xac
	ldr r0, [r4]
	asrs r0, r0, #8
	ldr r1, [r5, #4]
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	ldr r4, [r4]
	movs r3, #0xf0
	lsls r3, r3, #6
	adds r1, r4, r3
	mov r2, r8
	ldr r0, [r2, #4]
	subs r6, r0, r1
	adds r0, r6, #0
	movs r1, #5
	bl __divsi3
	adds r6, r0, #0
	movs r3, #0xc0
	lsls r3, r3, #5
	adds r2, r4, r3
	movs r4, #0
_08071354:
	cmp r4, #1
	bhi _08071372
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r0, r1
	mov r3, r8
	adds r7, r3, r0
	adds r0, r7, #0
	str r2, [sp]
	bl UpdateSpriteAnimation
	ldr r2, [sp]
_08071372:
	mov r1, sb
	ldr r0, [r1]
	asrs r0, r0, #8
	ldr r1, [r5]
	subs r0, r0, r1
	strh r0, [r7, #0x10]
	asrs r0, r2, #8
	ldr r1, [r5, #4]
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	str r2, [sp]
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r2, [sp]
	adds r2, r2, r6
	cmp r4, #4
	bls _08071354
	b _080713FC
	.align 2, 0
_080713A0: .4byte gCamera
_080713A4:
	mov r0, r8
	adds r0, #0xa8
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r4, _0807140C @ =gCamera
	ldr r1, [r4]
	subs r0, r0, r1
	strh r0, [r7, #0x10]
	mov r0, r8
	adds r0, #0xac
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	movs r7, #0x9c
	lsls r7, r7, #1
	add r7, r8
	mov r0, r8
	adds r0, #0xb8
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, [r4]
	subs r0, r0, r1
	strh r0, [r7, #0x10]
	mov r0, r8
	adds r0, #0xbc
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_080713FC:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807140C: .4byte gCamera

.syntax divided

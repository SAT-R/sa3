.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_80631F8
sub_80631F8: @ 0x080631F8
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r5, r2, #0
	adds r5, #0x6c
	adds r4, r2, #0
	adds r4, #0x78
	ldr r1, [r2, #0x64]
	asrs r1, r1, #8
	ldrh r0, [r2, #0x14]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r3, _0806325C @ =gCamera
	ldr r0, [r3]
	subs r1, r1, r0
	strh r1, [r4, #0x10]
	ldr r1, [r2, #0x68]
	asrs r1, r1, #8
	ldrh r0, [r2, #0x16]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r4, #0x12]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_806359C
	ldr r0, [r4, #8]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08063248
	ldrh r0, [r4, #0x10]
	strh r0, [r5, #6]
	ldrh r0, [r4, #0x12]
	strh r0, [r5, #8]
	adds r0, r4, #0
	adds r1, r5, #0
	bl TransformSprite
_08063248:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806325C: .4byte gCamera

	thumb_func_start sub_8063260
sub_8063260: @ 0x08063260
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	adds r6, r5, #0
	adds r6, #0x6c
	movs r0, #0
	mov sl, r0
	movs r7, #0
_08063276:
	cmp r7, sl
	bne _08063290
	adds r0, r7, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	adds r4, r5, #0
	adds r4, #0xd8
	mov r8, r4
	movs r2, #0xa8
	adds r2, r2, r5
	mov sb, r2
	b _0806329C
_08063290:
	adds r4, r5, #0
	adds r4, #0xa8
	movs r3, #0xd8
	adds r3, r3, r5
	mov r8, r3
	mov sb, r4
_0806329C:
	lsls r2, r7, #3
	adds r0, r5, #0
	adds r0, #0x3c
	adds r0, r0, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	ldrh r0, [r5, #0x14]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r3, _08063320 @ =gCamera
	ldr r0, [r3]
	subs r1, r1, r0
	strh r1, [r4, #0x10]
	adds r0, r5, #0
	adds r0, #0x40
	adds r0, r0, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	ldrh r0, [r5, #0x16]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r4, #0x12]
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_806359C
	ldr r0, [r4, #8]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080632F0
	ldrh r0, [r4, #0x10]
	strh r0, [r6, #6]
	ldrh r0, [r4, #0x12]
	strh r0, [r6, #8]
	adds r0, r4, #0
	adds r1, r6, #0
	bl TransformSprite
_080632F0:
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	bls _08063276
	mov r4, r8
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	mov r4, sb
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	movs r0, #1
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08063320: .4byte gCamera

	thumb_func_start sub_8063324
sub_8063324: @ 0x08063324
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	adds r0, #0x6c
	str r0, [sp]
	movs r1, #0
	mov r8, r1
	mov sb, r1
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r6, r1
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _0806334E
	movs r0, #1
	mov sb, r0
_0806334E:
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r6, r1
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _08063366
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
_08063366:
	adds r0, r6, #0
	adds r0, #0x3c
	str r0, [sp, #4]
	movs r1, #0x40
	adds r1, r1, r6
	mov sl, r1
	ldr r7, _080633E8 @ =gCamera
_08063374:
	movs r0, #0x84
	lsls r0, r0, #1
	adds r2, r6, r0
	mov r1, r8
	lsls r4, r1, #3
	ldr r0, [sp, #4]
	adds r5, r0, r4
	ldr r1, [r5]
	asrs r1, r1, #8
	ldrh r0, [r6, #0x14]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r7]
	subs r1, r1, r0
	strh r1, [r2, #0x10]
	add r4, sl
	ldr r1, [r4]
	asrs r1, r1, #8
	ldrh r0, [r6, #0x16]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r7, #4]
	subs r1, r1, r0
	strh r1, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r2, r6, r1
	ldr r1, [r5]
	asrs r1, r1, #8
	ldrh r0, [r6, #0x14]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r7]
	subs r5, r1, r0
	strh r5, [r2, #0x10]
	ldr r1, [r4]
	asrs r1, r1, #8
	ldrh r0, [r6, #0x16]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r7, #4]
	subs r3, r1, r0
	strh r3, [r2, #0x12]
	ldr r1, [sp]
	ldrh r0, [r1]
	cmp r0, #0
	beq _080633EC
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r2, #8]
	adds r0, r5, #1
	strh r0, [r2, #0x10]
	b _080633FA
	.align 2, 0
_080633E8: .4byte gCamera
_080633EC:
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	adds r0, r3, #1
	strh r0, [r2, #0x12]
_080633FA:
	adds r0, r2, #0
	bl DisplaySprite
	mov r0, r8
	adds r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #3
	bls _08063374
	mov r0, sb
	cmp r0, #2
	beq _08063418
	movs r0, #1
	b _0806341A
_08063418:
	movs r0, #0
_0806341A:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start CreateEntity_Muukaden_0
CreateEntity_Muukaden_0: @ 0x0806342C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	mov sb, r0
	adds r6, r1, #0
	mov r8, r2
	adds r5, r3, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r0, _08063498 @ =Task_Muukaden
	movs r1, #0xb4
	lsls r1, r1, #1
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r3, _0806349C @ =TaskDestructor_Muukaden
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	str r5, [sp]
	adds r0, r4, #0
	mov r1, sb
	adds r2, r6, #0
	mov r3, r8
	bl CreateMuukaden
	adds r0, r4, #0
	movs r1, #0
	bl sub_8062800
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r1, sb
	strb r0, [r1]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08063498: .4byte Task_Muukaden
_0806349C: .4byte TaskDestructor_Muukaden

	thumb_func_start CreateEntity_Muukaden_1
CreateEntity_Muukaden_1: @ 0x080634A0
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	mov sb, r0
	adds r6, r1, #0
	mov r8, r2
	adds r5, r3, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r0, _0806350C @ =Task_Muukaden
	movs r1, #0xb4
	lsls r1, r1, #1
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r3, _08063510 @ =TaskDestructor_Muukaden
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	str r5, [sp]
	adds r0, r4, #0
	mov r1, sb
	adds r2, r6, #0
	mov r3, r8
	bl CreateMuukaden
	adds r0, r4, #0
	movs r1, #1
	bl sub_8062800
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r1, sb
	strb r0, [r1]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806350C: .4byte Task_Muukaden
_08063510: .4byte TaskDestructor_Muukaden

	thumb_func_start sub_8063514
sub_8063514: @ 0x08063514
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r0, r3, #0x18
	movs r3, #0x80
	lsls r3, r3, #5
	str r3, [r4, #8]
	cmp r2, #0
	beq _08063532
	cmp r2, #1
	beq _0806353E
	b _0806356C
_08063532:
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r3
	str r0, [r4, #8]
	strh r2, [r5]
	b _0806356C
_0806353E:
	cmp r0, #0
	beq _0806354C
	movs r1, #0x60
	orrs r1, r3
	adds r0, #0xa
	orrs r0, r1
	b _08063550
_0806354C:
	movs r0, #0x6a
	orrs r0, r3
_08063550:
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5]
	ldrh r1, [r4, #0x10]
	strh r1, [r5, #6]
	ldrh r1, [r4, #0x12]
	strh r1, [r5, #8]
	strh r0, [r5, #2]
	strh r0, [r5, #4]
	adds r0, r4, #0
	adds r1, r5, #0
	bl TransformSprite
_0806356C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8063574
sub_8063574: @ 0x08063574
	push {r4, lr}
	movs r4, #0
	str r4, [r3]
	strb r4, [r3, #8]
	str r4, [r3, #4]
	str r1, [r3, #0x1c]
	ldr r1, [r2]
	str r1, [r3, #0x10]
	ldr r1, [r2, #4]
	str r1, [r3, #0x14]
	ldrh r1, [r0, #0x14]
	strh r1, [r3, #0xc]
	ldrh r0, [r0, #0x16]
	strh r0, [r3, #0xe]
	adds r0, r3, #0
	bl sub_805C63C
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_806359C
sub_806359C: @ 0x0806359C
	push {lr}
	adds r3, r0, #0
	ldrh r0, [r1]
	cmp r0, #0
	beq _080635BE
	movs r0, #8
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bge _080635B6
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r1]
	b _080635D8
_080635B6:
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	b _080635D8
_080635BE:
	movs r0, #8
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bge _080635D0
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _080635D6
_080635D0:
	ldr r0, [r3, #8]
	ldr r1, _080635DC @ =0xFFFFFBFF
	ands r0, r1
_080635D6:
	str r0, [r3, #8]
_080635D8:
	pop {r0}
	bx r0
	.align 2, 0
_080635DC: .4byte 0xFFFFFBFF

	thumb_func_start TaskDestructor_Muukaden
TaskDestructor_Muukaden: @ 0x080635E0
	push {lr}
	ldrh r0, [r0, #6]
	ldr r1, _080635F4 @ =0x030000A8
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0
	.align 2, 0
_080635F4: .4byte 0x030000A8

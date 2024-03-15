.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Interactable062
CreateEntity_Interactable062: @ 0x080360AC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r3, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0803616C @ =sub_8036178
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08036170 @ =sub_80363E8
	str r1, [sp]
	movs r1, #0x44
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	adds r0, #0xc
	adds r6, r1, r0
	strh r7, [r3, #4]
	mov r1, r8
	strh r1, [r3, #6]
	str r5, [r3]
	ldrb r0, [r5]
	strb r0, [r3, #0xa]
	strb r4, [r3, #0xb]
	movs r2, #0
	ldrb r0, [r5, #7]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0803611A
	movs r4, #1
_08036100:
	lsls r0, r2, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #7
	bgt _0803611A
	ldrb r0, [r5, #7]
	asrs r0, r1
	ands r0, r4
	cmp r0, #0
	beq _08036100
_0803611A:
	adds r0, r3, #0
	adds r0, #0x34
	strb r2, [r0]
	ldrb r1, [r5]
	lsls r1, r1, #3
	lsls r0, r7, #8
	adds r1, r1, r0
	strh r1, [r3, #0x36]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	str r1, [r3, #0x3c]
	ldrb r0, [r5, #1]
	lsls r0, r0, #3
	mov r4, r8
	lsls r2, r4, #8
	adds r0, r0, r2
	strh r0, [r3, #0x38]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r3, #0x40]
	ldr r2, _08036174 @ =gCamera
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r6, #0x10]
	ldr r0, [r3, #0x40]
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r6, #0x12]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r5]
	adds r0, r6, #0
	bl sub_80363FC
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803616C: .4byte sub_8036178
_08036170: .4byte sub_80363E8
_08036174: .4byte gCamera

	thumb_func_start sub_8036178
sub_8036178: @ 0x08036178
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _08036210 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r3
	mov r8, r0
	ldr r0, _08036214 @ =0x0300000C
	adds r0, r3, r0
	str r0, [sp, #4]
	mov r1, r8
	ldr r0, [r1]
	movs r2, #0x36
	ldrsh r4, [r1, r2]
	lsls r4, r4, #8
	movs r2, #0x38
	ldrsh r6, [r1, r2]
	lsls r6, r6, #8
	mov ip, r6
	movs r5, #4
	ldrsb r5, [r0, r5]
	lsls r5, r5, #0xb
	movs r1, #3
	ldrsb r1, [r0, r1]
	lsls r1, r1, #0xb
	mov r6, r8
	ldr r6, [r6, #0x3c]
	mov sl, r6
	mov r0, r8
	ldr r0, [r0, #0x40]
	mov sb, r0
	ldr r2, _08036218 @ =gUnknown_030008A0
	ldr r6, _0803621C @ =0x03000034
	adds r3, r3, r6
	ldrb r0, [r3]
	lsls r0, r0, #1
	adds r2, #0x5e
	adds r0, r0, r2
	movs r6, #0
	ldrsh r0, [r0, r6]
	muls r1, r0, r1
	asrs r1, r1, #0xa
	adds r1, r1, r4
	mov r0, r8
	str r1, [r0, #0x3c]
	ldrb r0, [r3]
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r5, r0
	asrs r0, r0, #0xa
	add r0, ip
	mov r6, r8
	str r0, [r6, #0x40]
	mov r2, sl
	subs r2, r2, r1
	mov sl, r2
	mov r6, sb
	subs r6, r6, r0
	mov sb, r6
	movs r1, #0
_08036200:
	lsls r0, r1, #0x10
	adds r4, r0, #0
	cmp r4, #0
	bne _08036220
	ldr r0, _08036218 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _0803622A
	.align 2, 0
_08036210: .4byte gCurTask
_08036214: .4byte 0x0300000C
_08036218: .4byte gUnknown_030008A0
_0803621C: .4byte 0x03000034
_08036220:
	adds r0, r7, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0803622A:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08036300 @ =gUnknown_030015C0
	adds r7, r0, r1
	adds r0, r7, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _0803624E
	cmp r1, #8
	beq _0803624E
	cmp r1, #0x10
	bne _080362DC
_0803624E:
	adds r0, r7, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _080362DC
	ldr r0, [r7, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080362A4
	ldr r0, [r7, #0x6c]
	ldr r1, [sp, #4]
	cmp r0, r1
	bne _080362A4
	ldr r0, [r7, #0x10]
	mov r2, sl
	subs r0, r0, r2
	str r0, [r7, #0x10]
	ldr r0, [r7, #0x14]
	movs r6, #0x80
	lsls r6, r6, #3
	adds r0, r0, r6
	mov r1, sb
	subs r0, r0, r1
	str r0, [r7, #0x14]
	movs r0, #3
	adds r1, r7, #0
	movs r2, #0
	movs r3, #0
	bl sub_80110E8
	adds r1, r0, #0
	movs r0, #6
	rsbs r0, r0, #0
	cmp r1, r0
	bgt _0803629E
	lsls r1, r1, #8
	ldr r0, [r7, #0x14]
	adds r0, r0, r1
	str r0, [r7, #0x14]
_0803629E:
	adds r0, r7, #0
	bl sub_80149E4
_080362A4:
	mov r2, r8
	ldr r1, [r2, #0x3c]
	asrs r1, r1, #8
	ldr r2, [r2, #0x40]
	asrs r2, r2, #8
	movs r0, #0
	str r0, [sp]
	ldr r0, [sp, #4]
	adds r3, r7, #0
	bl sub_8020950
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	cmp r0, #0
	beq _080362D0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r7, #0x14]
	adds r0, r0, r1
	str r0, [r7, #0x14]
_080362D0:
	movs r0, #3
	adds r1, r7, #0
	movs r2, #0
	movs r3, #0
	bl sub_80110E8
_080362DC:
	movs r6, #0x80
	lsls r6, r6, #9
	adds r0, r4, r6
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08036200
	bl sub_8036304
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036300: .4byte gUnknown_030015C0

	thumb_func_start sub_8036304
sub_8036304: @ 0x08036304
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _08036364 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r0, #0xc
	adds r7, r1, r0
	ldr r1, [r6]
	mov sb, r1
	ldr r0, [r6, #0x3c]
	lsls r0, r0, #8
	ldr r1, [r6, #0x40]
	lsls r1, r1, #8
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	lsrs r2, r1, #0x10
	mov r8, r2
	asrs r1, r1, #0x10
	bl sub_802C198
	cmp r0, #0
	bne _080363B0
	movs r1, #0x36
	ldrsh r0, [r6, r1]
	movs r2, #0x38
	ldrsh r1, [r6, r2]
	bl sub_802C198
	cmp r0, #0
	bne _080363B0
	movs r1, #0
	ldr r2, _08036368 @ =gUnknown_030015C0
_08036350:
	lsls r0, r1, #0x10
	adds r5, r0, #0
	cmp r5, #0
	beq _0803636C
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08036370
	.align 2, 0
_08036364: .4byte gCurTask
_08036368: .4byte gUnknown_030015C0
_0803636C:
	ldr r0, _080363A8 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_08036370:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r2
	adds r0, r7, #0
	adds r1, r4, #0
	str r2, [sp]
	bl sub_80213B0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp]
	cmp r0, #1
	ble _08036350
	ldrb r0, [r6, #0xa]
	mov r2, sb
	strb r0, [r2]
	ldr r0, _080363AC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080363D4
	.align 2, 0
_080363A8: .4byte gUnknown_030008A0
_080363AC: .4byte gCurTask
_080363B0:
	ldr r2, _080363E4 @ =gCamera
	ldr r1, [r2]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r7, #0x10]
	ldr r1, [r2, #4]
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_080363D4:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080363E4: .4byte gCamera

	thumb_func_start sub_80363E8
sub_80363E8: @ 0x080363E8
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_80363FC
sub_80363FC: @ 0x080363FC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #9
	bl VramMalloc
	str r0, [r4]
	movs r2, #0
	movs r1, #0
	movs r0, #0xdd
	lsls r0, r0, #2
	strh r0, [r4, #0xc]
	movs r0, #2
	strb r0, [r4, #0x1a]
	movs r0, #0xe0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	pop {r4}
	pop {r0}
	bx r0

.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_8032FDC
sub_8032FDC: @ 0x08032FDC
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r0, _08033024 @ =gCurTask
	ldr r3, [r0]
	ldrh r0, [r3, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r0, r1
	adds r1, #0xc
	adds r7, r0, r1
	adds r1, #0x80
	adds r2, r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r1, #0
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _08033028 @ =0x77FF0000
	cmp r0, r1
	ble _08033012
	movs r0, #0xf0
	lsls r0, r0, #7
	strh r0, [r2]
	ldr r0, _0803302C @ =Task_LiftIdle
	str r0, [r3, #8]
_08033012:
	movs r5, #0
_08033014:
	cmp r5, #0
	beq _08033030
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08033034
	.align 2, 0
_08033024: .4byte gCurTask
_08033028: .4byte 0x77FF0000
_0803302C: .4byte Task_LiftIdle
_08033030:
	ldr r0, _08033090 @ =gStageData
	ldrb r1, [r0, #6]
_08033034:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08033094 @ =gPlayers
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C0D4
	adds r3, r0, #0
	cmp r3, #0
	bne _08033078
	adds r0, r6, #0
	adds r0, #0x84
	ldr r1, [r0]
	adds r0, #4
	ldr r2, [r0]
	str r3, [sp]
	adds r0, r7, #0
	adds r3, r4, #0
	bl sub_8020950
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	cmp r0, #0
	beq _08033078
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
_08033078:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _08033014
	bl sub_8033158
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033090: .4byte gStageData
_08033094: .4byte gPlayers

	thumb_func_start sub_8033098
sub_8033098: @ 0x08033098
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	movs r0, #0xa
	bl VramMalloc
	str r0, [r4]
	movs r1, #0
	mov sl, r1
	movs r2, #0
	movs r1, #0xc0
	lsls r1, r1, #3
	mov ip, r1
	mov r1, ip
	strh r1, [r4, #0x14]
	movs r1, #0xdb
	lsls r1, r1, #2
	mov sb, r1
	mov r1, sb
	strh r1, [r4, #0xc]
	movs r1, #2
	strb r1, [r4, #0x1a]
	strh r2, [r4, #0x16]
	movs r1, #0xff
	strb r1, [r4, #0x1b]
	movs r1, #0x10
	mov r8, r1
	mov r1, r8
	strb r1, [r4, #0x1c]
	mov r1, sl
	strb r1, [r4, #0x1f]
	strh r2, [r4, #0x10]
	strh r2, [r4, #0x12]
	movs r3, #0x80
	lsls r3, r3, #5
	str r3, [r4, #8]
	adds r0, #0xc0
	str r0, [r5]
	movs r1, #0xc8
	lsls r1, r1, #3
	strh r1, [r5, #0x14]
	mov r1, sb
	strh r1, [r5, #0xc]
	movs r1, #1
	strb r1, [r5, #0x1a]
	strh r2, [r5, #0x16]
	subs r1, #2
	strb r1, [r5, #0x1b]
	mov r1, r8
	strb r1, [r5, #0x1c]
	mov r1, sl
	strb r1, [r5, #0x1f]
	strh r2, [r5, #0x10]
	strh r2, [r5, #0x12]
	str r3, [r5, #8]
	adds r0, #0x20
	str r0, [r6]
	mov r0, ip
	strh r0, [r6, #0x14]
	mov r1, sb
	strh r1, [r6, #0xc]
	mov r0, sl
	strb r0, [r6, #0x1a]
	strh r2, [r6, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r6, #0x1b]
	mov r1, r8
	strb r1, [r6, #0x1c]
	mov r0, sl
	strb r0, [r6, #0x1f]
	strh r2, [r6, #0x10]
	strh r2, [r6, #0x12]
	str r3, [r6, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8033158
sub_8033158: @ 0x08033158
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080331E0 @ =gCurTask
	mov sl, r0
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r2
	mov r8, r0
	ldr r1, _080331E4 @ =0x0300000C
	adds r6, r2, r1
	ldr r7, [r0]
	mov sb, r7
	ldr r0, _080331E8 @ =0x03000084
	adds r4, r2, r0
	adds r1, #0x7c
	adds r0, r2, r1
	ldr r3, _080331EC @ =gCamera
	ldr r1, [r3, #4]
	movs r7, #0
	ldrsh r5, [r0, r7]
	subs r1, r5, r1
	ldr r7, _080331F0 @ =0x0300008C
	adds r0, r2, r7
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r0, [r3]
	movs r1, #0
	ldrsh r4, [r4, r1]
	subs r0, r4, r0
	strh r0, [r6, #0x10]
	ldr r0, [r3, #4]
	subs r0, r5, r0
	strh r0, [r6, #0x12]
	ldr r0, _080331F4 @ =0x0300008E
	adds r2, r2, r0
	ldrh r0, [r2]
	cmp r0, #0
	bne _080331F8
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0x10
	ldrsh r2, [r6, r0]
	movs r0, #0x12
	ldrsh r3, [r6, r0]
	adds r0, r4, #0
	bl sub_802C140
	cmp r0, #0
	bne _080331F8
	mov r1, r8
	ldrb r0, [r1, #0xa]
	mov r2, sb
	strb r0, [r2]
	mov r7, sl
	ldr r0, [r7]
	bl TaskDestroy
	b _0803326A
	.align 2, 0
_080331E0: .4byte gCurTask
_080331E4: .4byte 0x0300000C
_080331E8: .4byte 0x03000084
_080331EC: .4byte gCamera
_080331F0: .4byte 0x0300008C
_080331F4: .4byte 0x0300008E
_080331F8:
	ldrh r0, [r6, #0x10]
	mov sb, r0
	ldrh r1, [r6, #0x12]
	mov sl, r1
	ldr r0, [r6, #8]
	movs r5, #0x80
	lsls r5, r5, #3
	orrs r0, r5
	str r0, [r6, #8]
	adds r0, r6, #0
	bl DisplaySprite
	ldr r0, [r6, #8]
	ldr r4, _08033278 @ =0xFFFFFBFF
	ands r0, r4
	str r0, [r6, #8]
	adds r0, r6, #0
	bl DisplaySprite
	mov r6, r8
	adds r6, #0x5c
	mov r2, sb
	strh r2, [r6, #0x10]
	strh r7, [r6, #0x12]
	ldr r0, [r6, #8]
	orrs r0, r5
	str r0, [r6, #8]
	adds r0, r6, #0
	bl DisplaySprite
	ldr r0, [r6, #8]
	ands r0, r4
	str r0, [r6, #8]
	adds r0, r6, #0
	bl DisplaySprite
	subs r6, #0x28
	lsls r1, r7, #0x10
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	cmp r1, r0
	ble _0803326A
	adds r4, r2, #0
_08033250:
	mov r0, sb
	strh r0, [r6, #0x10]
	strh r7, [r6, #0x12]
	adds r0, r6, #0
	bl DisplaySprite
	lsls r0, r7, #0x10
	ldr r1, _0803327C @ =0xFFF00000
	adds r0, r0, r1
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r4
	bgt _08033250
_0803326A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033278: .4byte 0xFFFFFBFF
_0803327C: .4byte 0xFFF00000

	thumb_func_start TaskDestructor_Lift
TaskDestructor_Lift: @ 0x08033280
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl VramFree
	pop {r0}
	bx r0

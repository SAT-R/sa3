.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start Task_8064E10
Task_8064E10: @ 0x08064E10
	push {r4, r5, lr}
	ldr r0, _08064E60 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r5, #0
	ldr r0, _08064E64 @ =gStageData
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08064E44
	cmp r1, #4
	beq _08064E44
	adds r0, r4, #0
	bl sub_8064F80
	ldrh r0, [r4, #6]
	adds r0, #0x40
	strh r0, [r4, #6]
	ldrh r0, [r4, #8]
	adds r0, #0x40
	strh r0, [r4, #8]
_08064E44:
	adds r0, r4, #0
	bl sub_8064EA0
	adds r0, r4, #0
	movs r1, #0
	bl sub_8065164
	cmp r0, #1
	bne _08064E68
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	b _08064E6E
	.align 2, 0
_08064E60: .4byte gCurTask
_08064E64: .4byte gStageData
_08064E68:
	adds r0, r4, #0
	bl sub_8064FCC
_08064E6E:
	adds r0, r4, #0
	movs r1, #1
	bl sub_8065164
	cmp r0, #1
	bne _08064E82
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	b _08064E88
_08064E82:
	adds r0, r4, #0
	bl sub_8065028
_08064E88:
	cmp r5, #2
	bne _08064E94
	ldr r0, _08064E9C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08064E94:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08064E9C: .4byte gCurTask

	thumb_func_start sub_8064EA0
sub_8064EA0: @ 0x08064EA0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	movs r4, #0
	mov sl, r4
_08064EB2:
	mov r0, sl
	lsls r1, r0, #3
	adds r0, r5, #0
	adds r0, #0x10
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	mov r8, r0
	adds r0, r5, #0
	adds r0, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r6, r0, #8
	ldrh r0, [r5, #2]
	lsls r0, r0, #8
	add r8, r0
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r6, r6, r0
	adds r7, r5, #0
	adds r7, #0x68
	mov r1, sl
	cmp r1, #0
	bne _08064EE4
	subs r7, #0x30
_08064EE4:
	movs r0, #0
	mov sb, r0
_08064EE8:
	mov r1, sb
	cmp r1, #0
	bne _08064EF8
	ldr r0, _08064EF4 @ =gStageData
	ldrb r1, [r0, #6]
	b _08064F02
	.align 2, 0
_08064EF4: .4byte gStageData
_08064EF8:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_08064F02:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08064F4C @ =gPlayers
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _08064F50
	str r4, [sp]
	str r0, [sp, #4]
	adds r0, r7, #0
	mov r1, r8
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _08064F50
	adds r0, r4, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08064F48
	str r4, [sp]
	adds r0, r7, #0
	mov r1, r8
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020CE0
_08064F48:
	movs r0, #1
	b _08064F6E
	.align 2, 0
_08064F4C: .4byte gPlayers
_08064F50:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #1
	bls _08064EE8
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r0, #1
	bls _08064EB2
	movs r0, #0
_08064F6E:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8064F80
sub_8064F80: @ 0x08064F80
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2]
	cmp r0, #0
	beq _08064F98
	ldrh r1, [r2, #0xe]
	adds r0, r1, #0
	subs r0, #0x10
	strh r0, [r2, #0xe]
	movs r3, #0xf8
	lsls r3, r3, #1
	b _08064FA2
_08064F98:
	ldrh r1, [r2, #0xe]
	adds r0, r1, #0
	adds r0, #0x10
	strh r0, [r2, #0xe]
	ldr r3, _08064FC8 @ =0xFFFFFE10
_08064FA2:
	adds r0, r1, r3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, [r2, #0x18]
	adds r0, #0x80
	str r0, [r2, #0x18]
	ldr r0, [r2, #0x10]
	subs r0, #0x80
	str r0, [r2, #0x10]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r2, #0x14]
	adds r0, r0, r1
	str r0, [r2, #0x14]
	ldr r0, [r2, #0x1c]
	adds r0, r0, r1
	str r0, [r2, #0x1c]
	pop {r0}
	bx r0
	.align 2, 0
_08064FC8: .4byte 0xFFFFFE10

	thumb_func_start sub_8064FCC
sub_8064FCC: @ 0x08064FCC
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r4, r3, #0
	adds r4, #0x38
	ldr r1, [r3, #0x10]
	asrs r1, r1, #8
	ldrh r0, [r3, #2]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r2, _08065024 @ =gCamera
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r4, #0x10]
	ldr r1, [r3, #0x14]
	asrs r1, r1, #8
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r4, #0x12]
	adds r1, r3, #0
	adds r1, #0x20
	ldrh r0, [r3, #6]
	strh r0, [r3, #0x20]
	ldrh r0, [r4, #0x10]
	strh r0, [r1, #6]
	ldrh r0, [r4, #0x12]
	strh r0, [r1, #8]
	adds r0, r4, #0
	bl TransformSprite
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r5, r0, #0
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08065024: .4byte gCamera

	thumb_func_start sub_8065028
sub_8065028: @ 0x08065028
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r4, r3, #0
	adds r4, #0x68
	ldr r1, [r3, #0x18]
	asrs r1, r1, #8
	ldrh r0, [r3, #2]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r2, _08065080 @ =gCamera
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r4, #0x10]
	ldr r1, [r3, #0x1c]
	asrs r1, r1, #8
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r4, #0x12]
	adds r1, r3, #0
	adds r1, #0x2c
	ldrh r0, [r3, #8]
	strh r0, [r3, #0x2c]
	ldrh r0, [r4, #0x10]
	strh r0, [r1, #6]
	ldrh r0, [r4, #0x12]
	strh r0, [r1, #8]
	adds r0, r4, #0
	bl TransformSprite
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r5, r0, #0
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08065080: .4byte gCamera

	thumb_func_start sub_8065084
sub_8065084: @ 0x08065084
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x2c
	ldr r2, [r0, #0x1c]
	asrs r2, r2, #8
	ldrh r1, [r0, #0xa]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _080650C4 @ =gCamera
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #0x20]
	asrs r1, r1, #8
	ldrh r0, [r0, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r4, r0, #0
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080650C4: .4byte gCamera

	thumb_func_start sub_80650C8
sub_80650C8: @ 0x080650C8
	push {r4, lr}
	adds r2, r0, #0
	movs r0, #0
	str r0, [r1]
	strb r0, [r1, #8]
	str r0, [r1, #4]
	adds r0, r2, #0
	adds r0, #0x2c
	str r0, [r1, #0x1c]
	ldr r0, [r2, #0x14]
	str r0, [r1, #0x10]
	ldr r3, [r2, #0x18]
	str r3, [r1, #0x14]
	ldrb r0, [r2, #4]
	cmp r0, #0
	beq _080650F0
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r3, r4
	str r0, [r1, #0x14]
_080650F0:
	ldrh r0, [r2, #0xa]
	strh r0, [r1, #0xc]
	ldrh r0, [r2, #0xc]
	strh r0, [r1, #0xe]
	adds r0, r1, #0
	bl sub_805C63C
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_8065104
sub_8065104: @ 0x08065104
	push {r4, lr}
	sub sp, #0x28
	adds r4, r0, #0
	mov r1, sp
	bl sub_80650C8
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x2c
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x1c]
	str r0, [sp, #0x10]
	ldr r1, [r4, #0x20]
	str r1, [sp, #0x14]
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _0806512E
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r1, r2
	str r0, [sp, #0x14]
_0806512E:
	mov r1, sp
	ldrh r0, [r4, #0xa]
	strh r0, [r1, #0xc]
	ldrh r0, [r4, #0xc]
	strh r0, [r1, #0xe]
	ldr r0, [r4]
	str r0, [sp]
	ldrb r0, [r4, #6]
	strb r0, [r1, #8]
	mov r0, sp
	bl sub_805C280
	add sp, #0x28
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start TaskDestructor_Kamaki
TaskDestructor_Kamaki: @ 0x08065150
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x2c]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8065164
sub_8065164: @ 0x08065164
	push {r4, lr}
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x15
	adds r0, #0x10
	adds r0, r0, r1
	ldr r2, [r0]
	asrs r2, r2, #8
	mov r3, ip
	ldrh r0, [r3, #2]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _080651B0 @ =gCamera
	ldr r0, [r3]
	subs r2, r2, r0
	mov r0, ip
	adds r0, #0x14
	adds r0, r0, r1
	ldr r1, [r0]
	asrs r1, r1, #8
	mov r4, ip
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	cmp r2, #0xf0
	bhi _080651AC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xa0
	ble _080651B4
_080651AC:
	movs r0, #1
	b _080651B6
	.align 2, 0
_080651B0: .4byte gCamera
_080651B4:
	movs r0, #0
_080651B6:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start TaskDestructor_80651BC
TaskDestructor_80651BC: @ 0x080651BC
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x38]
	bl VramFree
	pop {r0}
	bx r0

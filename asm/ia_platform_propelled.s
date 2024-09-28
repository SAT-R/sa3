.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_8042930
sub_8042930: @ 0x08042930
	push {r4, r5, r6, lr}
	ldr r0, _080429A8 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r4, r0
	ldr r0, [r2]
	ldrb r1, [r0, #1]
	lsls r1, r1, #3
	ldrh r0, [r2, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r3, r1, #8
	ldr r0, _080429AC @ =0xFFFF4000
	adds r5, r3, r0
	ldr r0, _080429B0 @ =0x03000048
	adds r6, r4, r0
	movs r0, #0
	ldrsh r1, [r6, r0]
	ldr r0, [r2, #0x44]
	subs r0, r0, r1
	str r0, [r2, #0x44]
	ldr r1, _080429B4 @ =0xFFFFFF00
	cmp r0, r1
	bge _08042966
	str r1, [r2, #0x44]
_08042966:
	ldr r1, [r2, #0x44]
	ldr r0, _080429B8 @ =0x000007FF
	cmp r1, r0
	bgt _08042974
	adds r0, r1, #0
	adds r0, #0x10
	str r0, [r2, #0x44]
_08042974:
	ldr r0, [r2, #0x40]
	ldr r1, [r2, #0x44]
	adds r0, r0, r1
	str r0, [r2, #0x40]
	cmp r0, r5
	bge _08042982
	str r5, [r2, #0x40]
_08042982:
	ldr r0, [r2, #0x40]
	cmp r0, r3
	ble _0804298E
	str r3, [r2, #0x40]
	movs r0, #0
	str r0, [r2, #0x44]
_0804298E:
	ldr r0, [r2, #0x44]
	cmp r0, #0
	blt _0804299C
	movs r2, #0
	ldrsh r1, [r6, r2]
	cmp r1, #0
	beq _080429C0
_0804299C:
	ldr r0, _080429BC @ =0x03000026
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
	b _080429C6
	.align 2, 0
_080429A8: .4byte gCurTask
_080429AC: .4byte 0xFFFF4000
_080429B0: .4byte 0x03000048
_080429B4: .4byte 0xFFFFFF00
_080429B8: .4byte 0x000007FF
_080429BC: .4byte 0x03000026
_080429C0:
	ldr r2, _080429CC @ =0x03000026
	adds r0, r4, r2
	strb r1, [r0]
_080429C6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080429CC: .4byte 0x03000026

	thumb_func_start sub_80429D0
sub_80429D0: @ 0x080429D0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _08042A48 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	adds r0, #0xc
	adds r5, r1, r0
	ldr r1, [r7]
	mov r8, r1
	ldrb r0, [r7, #0xa]
	lsls r0, r0, #3
	ldrh r1, [r7, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	mov r2, r8
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	ldrh r2, [r7, #6]
	lsls r2, r2, #8
	adds r1, r1, r2
	ldr r2, [r7, #0x3c]
	asrs r2, r2, #8
	ldr r4, _08042A4C @ =gCamera
	ldr r3, [r4]
	subs r2, r2, r3
	strh r2, [r5, #0x10]
	ldr r2, [r7, #0x40]
	asrs r2, r2, #8
	ldr r3, [r4, #4]
	subs r2, r2, r3
	strh r2, [r5, #0x12]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r3, #0x10
	ldrsh r2, [r5, r3]
	movs r4, #0x12
	ldrsh r3, [r5, r4]
	bl sub_802C140
	cmp r0, #0
	bne _08042A98
	movs r1, #0
	ldr r2, _08042A50 @ =gPlayers
_08042A34:
	lsls r0, r1, #0x10
	adds r4, r0, #0
	cmp r4, #0
	beq _08042A54
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08042A58
	.align 2, 0
_08042A48: .4byte gCurTask
_08042A4C: .4byte gCamera
_08042A50: .4byte gPlayers
_08042A54:
	ldr r0, _08042A90 @ =gStageData
	ldrb r1, [r0, #6]
_08042A58:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r6, r0, r2
	adds r0, r5, #0
	adds r1, r6, #0
	str r2, [sp]
	bl sub_80213B0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp]
	cmp r0, #1
	ble _08042A34
	ldrb r0, [r7, #0xa]
	mov r2, r8
	strb r0, [r2]
	ldr r0, _08042A94 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08042ACC
	.align 2, 0
_08042A90: .4byte gStageData
_08042A94: .4byte gCurTask
_08042A98:
	movs r3, #0x10
	ldrsh r0, [r5, r3]
	movs r4, #0x12
	ldrsh r1, [r5, r4]
	bl sub_802C1F8
	cmp r0, #1
	bne _08042ACC
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r5, #8]
	ldr r1, _08042AD8 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	bl DisplaySprite
_08042ACC:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08042AD8: .4byte 0xFFFFFBFF

	thumb_func_start TaskDestructor_PlatformPropelled
TaskDestructor_PlatformPropelled: @ 0x08042ADC
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8042AF0
sub_8042AF0: @ 0x08042AF0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x18
	bl VramMalloc
	str r0, [r4]
	movs r2, #0
	movs r1, #0
	movs r0, #0xe3
	lsls r0, r0, #2
	strh r0, [r4, #0xc]
	strb r2, [r4, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x60
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x61
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

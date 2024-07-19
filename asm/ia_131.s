.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_804C008
sub_804C008: @ 0x0804C008
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	movs r0, #0
	mov r8, r0
	ldr r0, _0804C108 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r4
	mov sl, r0
	ldr r1, [r0]
	str r1, [sp]
	ldr r2, _0804C10C @ =0x0300017C
	adds r0, r4, r2
	ldrh r1, [r0]
	ldr r3, _0804C110 @ =0x03000180
	adds r0, r4, r3
	ldrh r0, [r0]
	mov ip, r0
	ldr r0, _0804C114 @ =0x0300000C
	adds r5, r4, r0
	ldr r2, _0804C118 @ =0x03000010
	adds r7, r4, r2
	ldrh r2, [r5]
	lsls r1, r1, #0x10
	mov sb, r1
	asrs r0, r1, #0x10
	adds r2, r0, r2
	ldr r3, _0804C11C @ =gCamera
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r7, #0x10]
	ldrh r2, [r5, #2]
	mov r5, ip
	lsls r5, r5, #0x10
	str r5, [sp, #4]
	asrs r1, r5, #0x10
	adds r2, r1, r2
	ldr r3, [r3, #4]
	subs r2, r2, r3
	strh r2, [r7, #0x12]
	ldr r2, _0804C120 @ =0x03000038
	adds r5, r4, r2
	ldr r3, _0804C124 @ =0x0300003C
	adds r4, r4, r3
	ldrh r2, [r5]
	adds r2, r0, r2
	str r2, [sp, #0xc]
	ldr r2, _0804C11C @ =gCamera
	ldr r2, [r2]
	ldr r3, [sp, #0xc]
	subs r3, r3, r2
	strh r3, [r4, #0x10]
	ldrh r2, [r5, #2]
	adds r2, r1, r2
	ldr r5, _0804C11C @ =gCamera
	ldr r3, [r5, #4]
	subs r2, r2, r3
	strh r2, [r4, #0x12]
	bl IsPointInScreenRect
	cmp r0, #1
	bne _0804C094
	movs r0, #1
	mov r8, r0
_0804C094:
	movs r1, #0x10
	ldrsh r0, [r7, r1]
	movs r2, #0x12
	ldrsh r1, [r7, r2]
	bl sub_802C1D0
	cmp r0, #1
	bne _0804C0B4
	movs r1, #2
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_0804C0B4:
	movs r5, #0x10
	ldrsh r0, [r4, r5]
	movs r2, #0x12
	ldrsh r1, [r4, r2]
	bl sub_802C1D0
	cmp r0, #1
	bne _0804C0D4
	movs r1, #4
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_0804C0D4:
	mov r5, r8
	lsls r0, r5, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	bne _0804C17C
	movs r2, #0
	ldr r3, _0804C128 @ =gPlayers
_0804C0E2:
	lsls r2, r2, #0x10
	asrs r1, r2, #0x10
	movs r0, #0x2c
	muls r0, r1, r0
	adds r0, #0xc
	mov r1, sl
	adds r5, r1, r0
	movs r1, #0
	adds r7, r2, #0
_0804C0F4:
	lsls r0, r1, #0x10
	adds r4, r0, #0
	cmp r4, #0
	beq _0804C12C
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0804C130
	.align 2, 0
_0804C108: .4byte gCurTask
_0804C10C: .4byte 0x0300017C
_0804C110: .4byte 0x03000180
_0804C114: .4byte 0x0300000C
_0804C118: .4byte 0x03000010
_0804C11C: .4byte gCamera
_0804C120: .4byte 0x03000038
_0804C124: .4byte 0x0300003C
_0804C128: .4byte gPlayers
_0804C12C:
	ldr r0, _0804C174 @ =gStageData
	ldrb r1, [r0, #6]
_0804C130:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r6, r0, r3
	adds r0, r5, #0
	adds r1, r6, #0
	str r3, [sp, #8]
	bl sub_80213B0
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r4, r2
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, [sp, #8]
	cmp r0, #1
	ble _0804C0F4
	adds r0, r7, r2
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0804C0E2
	mov r3, sl
	ldrb r0, [r3, #0xa]
	ldr r5, [sp]
	strb r0, [r5]
	ldr r0, _0804C178 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0804C200
	.align 2, 0
_0804C174: .4byte gStageData
_0804C178: .4byte gCurTask
_0804C17C:
	movs r0, #2
	ands r0, r5
	cmp r0, #0
	beq _0804C190
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_0804C190:
	movs r0, #4
	ands r0, r5
	cmp r0, #0
	beq _0804C1A4
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0804C1A4:
	movs r1, #0
	ldr r0, [sp, #4]
	mov r8, r0
	ldr r7, _0804C210 @ =gCamera
_0804C1AC:
	lsls r0, r1, #0x10
	asrs r6, r0, #0x10
	movs r0, #0x2c
	muls r0, r6, r0
	adds r0, #0x64
	mov r1, sl
	adds r5, r1, r0
	adds r4, r5, #4
	mov r2, sb
	asrs r0, r2, #0x10
	ldrh r3, [r5]
	adds r0, r0, r3
	ldr r1, [r7]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	mov r1, r8
	asrs r0, r1, #0x10
	ldrh r5, [r5, #2]
	adds r0, r0, r5
	ldr r1, [r7, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	movs r2, #0x10
	ldrsh r0, [r4, r2]
	movs r3, #0x12
	ldrsh r1, [r4, r3]
	bl sub_802C1D0
	cmp r0, #1
	bne _0804C1F4
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0804C1F4:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #5
	ble _0804C1AC
_0804C200:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804C210: .4byte gCamera

	thumb_func_start TaskDestructor_Pendulum
TaskDestructor_Pendulum: @ 0x0804C214
	push {lr}
	ldrh r0, [r0, #6]
	ldr r1, _0804C228 @ =0x03000178
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0
	.align 2, 0
_0804C228: .4byte 0x03000178

.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start Task_803E0D8
Task_803E0D8: @ 0x0803E0D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _0803E114 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r0, r1
	adds r1, #0xc
	adds r1, r1, r0
	mov r8, r1
	ldr r3, _0803E118 @ =0x03000064
	adds r0, r0, r3
	ldrh r0, [r0]
	adds r0, #0x80
	ldr r1, _0803E11C @ =0x000003FF
	ands r0, r1
	lsrs r4, r0, #8
	adds r0, r4, #0
	cmp r0, #1
	beq _0803E140
	cmp r0, #1
	bgt _0803E120
	cmp r0, #0
	beq _0803E12A
	b _0803E192
	.align 2, 0
_0803E114: .4byte gCurTask
_0803E118: .4byte 0x03000064
_0803E11C: .4byte 0x000003FF
_0803E120:
	cmp r0, #2
	beq _0803E15C
	cmp r0, #3
	beq _0803E178
	b _0803E192
_0803E12A:
	ldr r0, [r6, #0x60]
	asrs r0, r0, #8
	ldr r1, [r6, #0x5c]
	asrs r1, r1, #8
	add r2, sp, #8
	str r2, [sp]
	ldr r2, _0803E13C @ =sub_805217C
	b _0803E186
	.align 2, 0
_0803E13C: .4byte sub_805217C
_0803E140:
	ldr r0, [r6, #0x5c]
	asrs r0, r0, #8
	ldr r1, [r6, #0x60]
	asrs r1, r1, #8
	movs r3, #8
	rsbs r3, r3, #0
	add r2, sp, #8
	str r2, [sp]
	ldr r2, _0803E158 @ =sub_805203C
	str r2, [sp, #4]
	movs r2, #0
	b _0803E18C
	.align 2, 0
_0803E158: .4byte sub_805203C
_0803E15C:
	ldr r0, [r6, #0x60]
	asrs r0, r0, #8
	ldr r1, [r6, #0x5c]
	asrs r1, r1, #8
	movs r3, #8
	rsbs r3, r3, #0
	add r2, sp, #8
	str r2, [sp]
	ldr r2, _0803E174 @ =sub_805217C
	str r2, [sp, #4]
	movs r2, #0
	b _0803E18C
	.align 2, 0
_0803E174: .4byte sub_805217C
_0803E178:
	ldr r0, [r6, #0x5c]
	asrs r0, r0, #8
	ldr r1, [r6, #0x60]
	asrs r1, r1, #8
	add r3, sp, #8
	str r3, [sp]
	ldr r2, _0803E1A4 @ =sub_805203C
_0803E186:
	str r2, [sp, #4]
	movs r2, #0
	movs r3, #8
_0803E18C:
	bl sub_80517FC
	adds r2, r0, #0
_0803E192:
	adds r0, r4, #0
	cmp r0, #1
	beq _0803E1BC
	cmp r0, #1
	bgt _0803E1A8
	cmp r0, #0
	beq _0803E1B2
	b _0803E1D6
	.align 2, 0
_0803E1A4: .4byte sub_805203C
_0803E1A8:
	cmp r0, #2
	beq _0803E1C4
	cmp r0, #3
	beq _0803E1CE
	b _0803E1D6
_0803E1B2:
	lsls r1, r2, #8
	ldr r0, [r6, #0x60]
	adds r0, r0, r1
	str r0, [r6, #0x60]
	b _0803E1D6
_0803E1BC:
	lsls r1, r2, #8
	ldr r0, [r6, #0x5c]
	subs r0, r0, r1
	b _0803E1D4
_0803E1C4:
	lsls r1, r2, #8
	ldr r0, [r6, #0x60]
	subs r0, r0, r1
	str r0, [r6, #0x60]
	b _0803E1D6
_0803E1CE:
	lsls r1, r2, #8
	ldr r0, [r6, #0x5c]
	adds r0, r0, r1
_0803E1D4:
	str r0, [r6, #0x5c]
_0803E1D6:
	add r0, sp, #8
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r1, r6, #0
	adds r1, #0x64
	strh r0, [r1]
	movs r4, #0x66
	adds r4, r4, r6
	mov ip, r4
	movs r2, #0xa0
	lsls r2, r2, #1
	strh r2, [r4]
	ldr r4, _0803E250 @ =gSineTable
	ldrh r0, [r1]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r0, r2, r0
	asrs r0, r0, #0xe
	adds r3, r6, #0
	adds r3, #0x68
	strh r0, [r3]
	ldrh r0, [r1]
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r4, #0
	ldrsh r1, [r0, r4]
	mov r2, ip
	movs r4, #0
	ldrsh r0, [r2, r4]
	muls r0, r1, r0
	asrs r0, r0, #0xe
	adds r2, r6, #0
	adds r2, #0x6a
	strh r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, [r6, #0x5c]
	adds r0, r0, r1
	str r0, [r6, #0x5c]
	movs r4, #0
	ldrsh r1, [r2, r4]
	ldr r0, [r6, #0x60]
	adds r0, r0, r1
	str r0, [r6, #0x60]
	movs r1, #0
	mov sl, r3
	mov sb, r2
_0803E23E:
	movs r7, #0
	lsls r0, r1, #0x10
	adds r4, r0, #0
	cmp r4, #0
	bne _0803E258
	ldr r0, _0803E254 @ =gStageData
	ldrb r1, [r0, #6]
	b _0803E262
	.align 2, 0
_0803E250: .4byte gSineTable
_0803E254: .4byte gStageData
_0803E258:
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0803E262:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0803E2BC @ =gPlayers
	adds r5, r0, r1
	adds r0, r5, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _0803E308
	ldr r0, [r5, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0803E2C2
	ldr r0, [r5, #0x6c]
	cmp r0, r8
	bne _0803E2C2
	ldr r1, [r5, #0x14]
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r1, r0
	str r1, [r5, #0x14]
	mov r3, sl
	movs r0, #0
	ldrsh r2, [r3, r0]
	ldr r0, [r5, #0x10]
	adds r0, r0, r2
	str r0, [r5, #0x10]
	mov r2, sb
	movs r3, #0
	ldrsh r0, [r2, r3]
	adds r1, r1, r0
	str r1, [r5, #0x14]
	adds r0, r5, #0
	bl sub_801226C
	cmp r0, #0
	bge _0803E2C0
	adds r0, r5, #0
	bl sub_8008E38
	b _0803E2C2
	.align 2, 0
_0803E2BC: .4byte gPlayers
_0803E2C0:
	movs r7, #1
_0803E2C2:
	ldr r1, [r6, #0x5c]
	asrs r1, r1, #8
	ldr r2, [r6, #0x60]
	asrs r2, r2, #8
	movs r0, #1
	str r0, [sp]
	mov r0, r8
	adds r3, r5, #0
	bl sub_8020950
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	cmp r0, #0
	beq _0803E308
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r5, #0x14]
	adds r0, r0, r1
	str r0, [r5, #0x14]
	cmp r7, #0
	bne _0803E308
	ldrh r0, [r5, #0x1c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	strh r0, [r5, #0x1c]
	ldrh r0, [r5, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	strh r0, [r5, #0x18]
	ldrh r0, [r5, #0x1a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	strh r0, [r5, #0x1a]
_0803E308:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0803E23E
	bl sub_803E32C
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_803E32C
sub_803E32C: @ 0x0803E32C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0803E384 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	mov r8, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	add r0, r8
	mov sb, r0
	ldr r0, [r0]
	mov sl, r0
	mov r1, sb
	ldr r0, [r1, #0x5c]
	asrs r0, r0, #8
	ldr r2, _0803E388 @ =gCamera
	ldr r1, [r2]
	subs r7, r0, r1
	mov r1, sb
	ldr r0, [r1, #0x60]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r6, r0, r1
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_802C1D0
	cmp r0, #0
	bne _0803E3D0
	movs r1, #0
	ldr r7, _0803E38C @ =gPlayers
_0803E370:
	lsls r0, r1, #0x10
	adds r6, r0, #0
	cmp r6, #0
	beq _0803E390
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0803E394
	.align 2, 0
_0803E384: .4byte gCurTask
_0803E388: .4byte gCamera
_0803E38C: .4byte gPlayers
_0803E390:
	ldr r0, _0803E3C8 @ =gStageData
	ldrb r1, [r0, #6]
_0803E394:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r7
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_80213B0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r6, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0803E370
	mov r1, sb
	ldrb r0, [r1, #0xa]
	mov r1, sl
	strb r0, [r1]
	ldr r0, _0803E3CC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0803E3F8
	.align 2, 0
_0803E3C8: .4byte gStageData
_0803E3CC: .4byte gCurTask
_0803E3D0:
	ldr r5, _0803E408 @ =0x0300000C
	add r5, r8
	strh r7, [r5, #0x10]
	strh r6, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldr r5, _0803E40C @ =0x03000034
	add r5, r8
	strh r7, [r5, #0x10]
	strh r6, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_0803E3F8:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803E408: .4byte 0x0300000C
_0803E40C: .4byte 0x03000034

	thumb_func_start TaskDestructor_SlowChaosLift
TaskDestructor_SlowChaosLift: @ 0x0803E410
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl VramFree
	pop {r0}
	bx r0

.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.else
	thumb_func_start sub_806CAA4
sub_806CAA4: @ 0x0806CAA4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	movs r4, #0
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0x10]
	asrs r7, r0, #8
	ldr r0, [r5, #0x14]
	asrs r6, r0, #8
	ldrh r0, [r5, #0xc]
	lsls r0, r0, #8
	adds r7, r7, r0
	ldrh r0, [r5, #0xe]
	lsls r0, r0, #8
	adds r6, r6, r0
	ldr r1, [r5, #0x1c]
	mov r8, r1
	lsls r0, r7, #8
	lsls r1, r6, #8
	bl sub_8004D68
	movs r0, #0
	mov sl, r0
_0806CADC:
	mov r1, sl
	cmp r1, #0
	bne _0806CAEC
	ldr r0, _0806CAE8 @ =gStageData
	ldrb r1, [r0, #6]
	b _0806CAF6
	.align 2, 0
_0806CAE8: .4byte gStageData
_0806CAEC:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0806CAF6:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0806CB60 @ =gPlayers
	adds r4, r0, r1
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	beq _0806CB12
	b _0806CC8C
_0806CB12:
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #1
	bne _0806CB2E
	mov r0, r8
	bl sub_805C510
	cmp r0, #1
	bne _0806CB2E
	movs r0, #1
	str r0, [sp, #8]
_0806CB2E:
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	beq _0806CB3A
	b _0806CC8C
_0806CB3A:
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _0806CB64
	adds r0, r4, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0806CB5C
	b _0806CC8C
_0806CB5C:
	b _0806CBE6
	.align 2, 0
_0806CB60: .4byte gPlayers
_0806CB64:
	str r4, [sp]
	movs r0, #1
	mov sb, r0
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	beq _0806CBC6
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	cmp r0, r7
	bge _0806CB8A
	mov r1, sb
	strb r1, [r5, #0xa]
	b _0806CB8E
_0806CB8A:
	movs r0, #0xff
	strb r0, [r5, #0xa]
_0806CB8E:
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	cmp r0, r6
	bge _0806CB9A
	movs r0, #1
	b _0806CB9C
_0806CB9A:
	movs r0, #0xff
_0806CB9C:
	strb r0, [r5, #0xb]
	adds r0, r4, #0
	bl sub_806CCB0
	mov r0, sl
	cmp r0, #0
	bne _0806CBB4
	ldr r0, _0806CBB0 @ =gStageData
	ldrb r0, [r0, #6]
	b _0806CBBE
	.align 2, 0
_0806CBB0: .4byte gStageData
_0806CBB4:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
_0806CBBE:
	strb r0, [r5, #9]
	movs r1, #1
	str r1, [sp, #8]
	b _0806CC8C
_0806CBC6:
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	beq _0806CC4E
	adds r0, r4, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0806CC04
_0806CBE6:
	str r4, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_8020CE0
	str r4, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020CE0
	b _0806CC8C
_0806CC04:
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	cmp r0, r7
	bge _0806CC10
	mov r0, sb
	b _0806CC12
_0806CC10:
	movs r0, #0xff
_0806CC12:
	strb r0, [r5, #0xa]
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	cmp r0, r6
	bge _0806CC20
	movs r0, #1
	b _0806CC22
_0806CC20:
	movs r0, #0xff
_0806CC22:
	strb r0, [r5, #0xb]
	adds r0, r4, #0
	bl sub_806CCB0
	mov r1, sl
	cmp r1, #0
	bne _0806CC3C
	ldr r0, _0806CC38 @ =gStageData
	ldrb r0, [r0, #6]
	b _0806CC46
	.align 2, 0
_0806CC38: .4byte gStageData
_0806CC3C:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
_0806CC46:
	strb r0, [r5, #9]
	movs r0, #1
	str r0, [sp, #8]
	b _0806CC8C
_0806CC4E:
	str r4, [sp]
	mov r1, sb
	str r1, [sp, #4]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _0806CC8C
	adds r0, r4, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0806CC8C
	str r4, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_8020CE0
	str r4, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020CE0
_0806CC8C:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r0, #1
	bhi _0806CC9C
	b _0806CADC
_0806CC9C:
	ldr r0, [sp, #8]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_806CCB0
sub_806CCB0: @ 0x0806CCB0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0806CD1C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0806CDB0
	ldr r1, [r4, #0x10]
	asrs r1, r1, #8
	ldr r0, [r2]
	asrs r0, r0, #8
	subs r1, r1, r0
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	ldr r2, [r2, #4]
	asrs r2, r2, #8
	subs r0, r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sa2__sub_8004418
	lsls r0, r0, #0x10
	ldr r1, _0806CD20 @ =gSineTable
	lsrs r2, r0, #0x10
	asrs r0, r0, #0xf
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r0, r3
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _0806CD24
	ldrh r0, [r4, #0x1c]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _0806CD10
	asrs r0, r0, #0x11
	rsbs r0, r0, #0
	strh r0, [r4, #0x1c]
_0806CD10:
	ldrh r0, [r4, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _0806CD40
	b _0806CD3A
	.align 2, 0
_0806CD1C: .4byte gCurTask
_0806CD20: .4byte gSineTable
_0806CD24:
	ldrh r0, [r4, #0x1c]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0806CD32
	asrs r0, r0, #0x11
	rsbs r0, r0, #0
	strh r0, [r4, #0x1c]
_0806CD32:
	ldrh r0, [r4, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0806CD40
_0806CD3A:
	asrs r0, r0, #0x11
	rsbs r0, r0, #0
	strh r0, [r4, #0x18]
_0806CD40:
	movs r3, #0x1c
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bge _0806CD4A
	rsbs r0, r0, #0
_0806CD4A:
	movs r1, #0xc0
	lsls r1, r1, #2
	cmp r0, r1
	ble _0806CD64
	movs r3, #0x1c
	ldrsh r0, [r4, r3]
	cmp r0, #0
	blt _0806CD5E
	strh r1, [r4, #0x1c]
	b _0806CD64
_0806CD5E:
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r4, #0x1c]
_0806CD64:
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _0806CD6E
	rsbs r0, r0, #0
_0806CD6E:
	movs r1, #0xc0
	lsls r1, r1, #2
	cmp r0, r1
	ble _0806CD88
	movs r3, #0x18
	ldrsh r0, [r4, r3]
	cmp r0, #0
	blt _0806CD82
	strh r1, [r4, #0x18]
	b _0806CD88
_0806CD82:
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r4, #0x18]
_0806CD88:
	ldr r0, _0806CDA0 @ =gSineTable
	lsls r1, r2, #0x10
	asrs r1, r1, #0xf
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bge _0806CDA4
	movs r0, #0xfd
	lsls r0, r0, #8
	b _0806CDA8
	.align 2, 0
_0806CDA0: .4byte gSineTable
_0806CDA4:
	movs r0, #0x80
	lsls r0, r0, #2
_0806CDA8:
	strh r0, [r4, #0x1a]
	adds r0, r4, #0
	bl Player_800DB30
_0806CDB0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806CDB8
sub_0806CDB8: @ 0x0806CDB8
	push {r4, r5, lr}
	ldr r1, _0806CDF8 @ =gStageData
	adds r5, r1, #0
	adds r5, #0x88
	ldr r1, [r5]
	ldrh r4, [r1, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r3, r4, r1
	ldrb r2, [r0, #2]
	movs r1, #0x7f
	ands r1, r2
	ldrb r2, [r0, #3]
	ldrb r0, [r0, #4]
	lsls r0, r0, #8
	orrs r2, r0
	cmp r1, #1
	bne _0806CE04
	ldr r0, _0806CDFC @ =0x0300005F
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0
	strb r0, [r3, #0x1d]
	adds r0, r3, #0
	bl sub_806CA28
	ldr r1, [r5]
	ldr r0, _0806CE00 @ =sub_806C1C8
	str r0, [r1, #8]
	b _0806CE22
	.align 2, 0
_0806CDF8: .4byte gStageData
_0806CDFC: .4byte 0x0300005F
_0806CE00: .4byte sub_806C1C8
_0806CE04:
	cmp r1, #1
	blt _0806CE22
	cmp r1, #4
	bgt _0806CE22
	cmp r1, #3
	blt _0806CE22
	ldrb r1, [r3, #0x1d]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	beq _0806CE22
	ldr r0, _0806CE28 @ =0x03000025
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
_0806CE22:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806CE28: .4byte 0x03000025

	thumb_func_start Task_Boss2Init
Task_Boss2Init: @ 0x0806CE2C
	push {r4, lr}
	ldr r4, _0806CE4C @ =gCurTask
	ldr r2, [r4]
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	ldrb r0, [r0]
	cmp r0, #3
	bne _0806CE50
	adds r0, r2, #0
	bl TaskDestroy
	b _0806CE6A
	.align 2, 0
_0806CE4C: .4byte gCurTask
_0806CE50:
	bl sub_8079FFC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0806CE64
	ldr r1, [r4]
	ldr r0, _0806CE60 @ =sub_806CE74
	b _0806CE68
	.align 2, 0
_0806CE60: .4byte sub_806CE74
_0806CE64:
	ldr r1, [r4]
	ldr r0, _0806CE70 @ =Boss2_TransitionToIntro
_0806CE68:
	str r0, [r1, #8]
_0806CE6A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806CE70: .4byte Boss2_TransitionToIntro

	thumb_func_start sub_806CE74
sub_806CE74: @ 0x0806CE74
	push {r4, lr}
	ldr r4, _0806CE94 @ =gCurTask
	ldr r2, [r4]
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	ldrb r0, [r0]
	cmp r0, #3
	bne _0806CE98
	adds r0, r2, #0
	bl TaskDestroy
	b _0806CEAC
	.align 2, 0
_0806CE94: .4byte gCurTask
_0806CE98:
	cmp r0, #2
	bne _0806CEAC
	bl sub_807A074
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0806CEAC
	ldr r1, [r4]
	ldr r0, _0806CEB4 @ =Boss2_TransitionToIntro
	str r0, [r1, #8]
_0806CEAC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806CEB4: .4byte Boss2_TransitionToIntro

	thumb_func_start sub_806CEB8
sub_806CEB8: @ 0x0806CEB8
	push {r4, lr}
	ldr r0, _0806CEDC @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r0, r4
	ldr r1, _0806CEE0 @ =0x03000094
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	ldr r1, [r4, #0x10]
	movs r0, #0
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806CEDC: .4byte gCurTask
_0806CEE0: .4byte 0x03000094

	thumb_func_start TaskDestructor_Boss2
TaskDestructor_Boss2: @ 0x0806CEE4
	bx lr
	.align 2, 0

	thumb_func_start sub_806CEE8
sub_806CEE8: @ 0x0806CEE8
	push {lr}
	adds r1, r0, #0
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #1
	bne _0806CEFC
	ldr r0, [r1, #0x38]
	cmp r0, #0
	bgt _0806CF24
	b _0806CF12
_0806CEFC:
	cmp r0, #0
	bne _0806CF08
	ldr r0, [r1, #0x38]
	cmp r0, #0
	bgt _0806CF12
	b _0806CF24
_0806CF08:
	cmp r0, #2
	bne _0806CF1A
	ldr r0, [r1, #0x3c]
	cmp r0, #0
	ble _0806CF24
_0806CF12:
	adds r0, r1, #0
	bl sub_806B5A8
	b _0806CF32
_0806CF1A:
	cmp r0, #3
	bne _0806CF32
	ldr r0, [r1, #0x3c]
	cmp r0, #0
	ble _0806CF2C
_0806CF24:
	adds r0, r1, #0
	bl sub_806B484
	b _0806CF32
_0806CF2C:
	adds r0, r1, #0
	bl sub_806B5A8
_0806CF32:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_806CF38
sub_806CF38: @ 0x0806CF38
	push {r4, lr}
	sub sp, #0x28
	adds r4, r0, #0
	bl sub_806B6C8
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x94
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x48]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x4c]
	str r0, [sp, #0x14]
	mov r1, sp
	movs r2, #0
	movs r0, #0
	strh r0, [r1, #0xc]
	strh r0, [r1, #0xe]
	str r0, [sp]
	mov r0, sp
	strb r2, [r0, #8]
	bl sub_805C280
	add sp, #0x28
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_806CF70
sub_806CF70: @ 0x0806CF70
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r6, #0
	ldr r1, [r4, #4]
	adds r3, r1, #0
	asrs r3, r3, #8
	asrs r1, r1, #8
	ldr r5, _0806CFC8 @ =gCamera
	ldr r0, [r5, #4]
	subs r1, r1, r0
	cmp r1, #0xa
	ble _0806CF94
	ldr r0, [r5, #0x14]
	adds r1, r3, #0
	adds r1, #0x30
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0806CF94:
	cmp r3, #0xa
	ble _0806CF9E
	adds r0, r4, #0
	bl sub_806C5D4
_0806CF9E:
	lsls r0, r6, #0x18
	cmp r0, #0
	blt _0806CFCC
	adds r0, r4, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	ldr r1, [r4, #0x44]
	adds r1, r1, r0
	str r1, [r4, #0x44]
	ldr r2, [r4, #0x3c]
	adds r2, r2, r1
	str r2, [r4, #0x3c]
	ldr r0, [r4, #4]
	adds r0, r0, r2
	str r0, [r4, #4]
	movs r0, #0
	b _0806CFCE
	.align 2, 0
_0806CFC8: .4byte gCamera
_0806CFCC:
	movs r0, #1
_0806CFCE:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_806CFD4
sub_806CFD4: @ 0x0806CFD4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	ldr r1, _0806D000 @ =gCamera
	ldr r1, [r1, #4]
	subs r3, r0, r1
	lsls r3, r3, #8
	ldr r0, _0806D004 @ =0xFFFF8800
	cmp r3, r0
	ble _0806CFF2
	ldr r5, _0806D008 @ =0xFFFFFC00
	adds r3, r3, r5
	cmp r3, r0
	bge _0806D00C
_0806CFF2:
	adds r3, r0, #0
	lsls r0, r1, #8
	adds r0, r0, r3
	str r0, [r4, #4]
	movs r0, #1
	b _0806D014
	.align 2, 0
_0806D000: .4byte gCamera
_0806D004: .4byte 0xFFFF8800
_0806D008: .4byte 0xFFFFFC00
_0806D00C:
	lsls r0, r1, #8
	adds r0, r0, r3
	str r0, [r4, #4]
	movs r0, #0
_0806D014:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_806D01C
sub_806D01C: @ 0x0806D01C
	push {lr}
	adds r3, r0, #0
	ldr r2, _0806D048 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _0806D04C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0806D050 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #8
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0806D058
	adds r0, r3, #0
	adds r0, #0x24
	strb r1, [r0]
	ldrb r0, [r3, #0x1d]
	cmp r0, #1
	bne _0806D070
	ldr r0, _0806D054 @ =0xFFFFF900
	b _0806D072
	.align 2, 0
_0806D048: .4byte gPseudoRandom
_0806D04C: .4byte 0x00196225
_0806D050: .4byte 0x3C6EF35F
_0806D054: .4byte 0xFFFFF900
_0806D058:
	adds r0, r3, #0
	adds r0, #0x24
	movs r1, #0xff
	strb r1, [r0]
	ldrb r0, [r3, #0x1d]
	cmp r0, #1
	bne _0806D070
	ldr r0, _0806D06C @ =0xFFFFF900
	b _0806D072
	.align 2, 0
_0806D06C: .4byte 0xFFFFF900
_0806D070:
	ldr r0, _0806D078 @ =0xFFFFFF00
_0806D072:
	str r0, [r3, #0x40]
	pop {r0}
	bx r0
	.align 2, 0
_0806D078: .4byte 0xFFFFFF00

	thumb_func_start sub_806D07C
sub_806D07C: @ 0x0806D07C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldr r1, [r4]
	asrs r1, r1, #8
	ldr r2, _0806D0E0 @ =gCamera
	ldr r0, [r2]
	subs r1, r1, r0
	adds r6, r1, #0
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	ldr r2, [r2, #4]
	subs r0, r0, r2
	adds r7, r0, #0
	lsls r1, r1, #8
	str r1, [r4, #0x48]
	lsls r0, r0, #8
	str r0, [r4, #0x4c]
	ldrh r0, [r4, #0x2c]
	lsrs r0, r0, #4
	movs r2, #0x80
	lsls r2, r2, #1
	movs r5, #0x28
	str r5, [sp]
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #4]
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #8]
	ldr r1, _0806D0E4 @ =gBgAffineRegs
	str r1, [sp, #0xc]
	adds r1, r2, #0
	movs r3, #0x28
	bl sa2__sub_8003EE4
	adds r4, #0x6c
	strh r5, [r4, #0x10]
	strh r5, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation_BG
	adds r0, r4, #0
	bl sub_80BE46C
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806D0E0: .4byte gCamera
_0806D0E4: .4byte gBgAffineRegs

	thumb_func_start sub_806D0E8
sub_806D0E8: @ 0x0806D0E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldr r1, [r4]
	asrs r1, r1, #8
	ldr r2, _0806D14C @ =gCamera
	ldr r0, [r2]
	subs r1, r1, r0
	adds r6, r1, #0
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	ldr r2, [r2, #4]
	subs r0, r0, r2
	adds r7, r0, #0
	lsls r1, r1, #8
	str r1, [r4, #0x48]
	lsls r0, r0, #8
	str r0, [r4, #0x4c]
	ldrh r0, [r4, #0x2c]
	lsrs r0, r0, #4
	movs r2, #0x80
	lsls r2, r2, #1
	movs r5, #0x28
	str r5, [sp]
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #4]
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #8]
	ldr r1, _0806D150 @ =gBgAffineRegs
	str r1, [sp, #0xc]
	adds r1, r2, #0
	movs r3, #0x28
	bl sa2__sub_8003EE4
	adds r4, #0x6c
	strh r5, [r4, #0x10]
	strh r5, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation_BG
	adds r0, r4, #0
	bl sub_80BE46C
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806D14C: .4byte gCamera
_0806D150: .4byte gBgAffineRegs

	thumb_func_start TaskDestructor_Boss2Entrance
TaskDestructor_Boss2Entrance: @ 0x0806D154
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_Boss2Exit
TaskDestructor_Boss2Exit: @ 0x0806D168
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_806D17C
sub_806D17C: @ 0x0806D17C
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0xc]
	ldr r0, _0806D18C @ =0xFFFFBA00
	cmp r1, r0
	bgt _0806D190
	movs r0, #1
	b _0806D198
	.align 2, 0
_0806D18C: .4byte 0xFFFFBA00
_0806D190:
	ldr r3, _0806D19C @ =0xFFFFFF00
	adds r0, r1, r3
	str r0, [r2, #0xc]
	movs r0, #0
_0806D198:
	pop {r1}
	bx r1
	.align 2, 0
_0806D19C: .4byte 0xFFFFFF00
.endif

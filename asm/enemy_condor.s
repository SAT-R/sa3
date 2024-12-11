.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Condor
CreateEntity_Condor: @ 0x08058E70
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r4, r3, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08058EEC @ =Task_Condor
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08058EF0 @ =TaskDestructor_Condor
	str r1, [sp]
	movs r1, #0x68
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	mov r0, r8
	str r0, [r7]
	ldrb r0, [r0]
	movs r2, #0
	strb r0, [r7, #5]
	strb r2, [r7, #6]
	strb r4, [r7, #4]
	strh r5, [r7, #0xa]
	strh r6, [r7, #0xc]
	mov r3, r8
	ldrb r1, [r3]
	lsls r1, r1, #0xb
	str r1, [r7, #0x28]
	ldrb r0, [r3, #1]
	lsls r0, r0, #0xb
	str r0, [r7, #0x2c]
	str r1, [r7, #0x20]
	str r0, [r7, #0x24]
	movs r0, #3
	ldrsb r0, [r3, r0]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r7, #0x30]
	ldrb r0, [r3, #5]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r7, #0x34]
	strh r2, [r7, #8]
	ldrb r1, [r3, #7]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08058EF4
	movs r0, #0xff
	b _08058EF6
	.align 2, 0
_08058EEC: .4byte Task_Condor
_08058EF0: .4byte TaskDestructor_Condor
_08058EF4:
	movs r0, #1
_08058EF6:
	strb r0, [r7, #0xe]
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	adds r1, r7, #0
	adds r1, #0x64
	ldr r2, _08058F28 @ =0x01000002
	add r0, sp, #4
	bl CpuSet
	adds r0, r7, #0
	bl sub_8058F2C
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r3, r8
	strb r0, [r3]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08058F28: .4byte 0x01000002

	thumb_func_start sub_8058F2C
sub_8058F2C: @ 0x08058F2C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0x1e
	bl VramMalloc
	adds r6, r4, #0
	adds r6, #0x38
	str r0, [r4, #0x38]
	ldr r1, _08058FA8 @ =gUnknown_080D1E54
	ldrh r0, [r1]
	movs r5, #0
	movs r3, #0
	strh r0, [r6, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r6, #0x1a]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	ldr r1, [r4, #0x28]
	asrs r1, r1, #8
	ldrh r0, [r4, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r2, _08058FAC @ =gCamera
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r6, #0x10]
	ldr r1, [r4, #0x2c]
	asrs r1, r1, #8
	ldrh r0, [r4, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r6, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r6, #0x14]
	strh r3, [r6, #0xe]
	strh r3, [r6, #0x16]
	movs r0, #0x10
	strb r0, [r6, #0x1c]
	strb r5, [r6, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r6, #8]
	movs r0, #0xe
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _08058F96
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r6, #8]
_08058F96:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r6, #0x20]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08058FA8: .4byte gUnknown_080D1E54
_08058FAC: .4byte gCamera

	thumb_func_start Task_Condor
Task_Condor: @ 0x08058FB0
	push {r4, lr}
	ldr r0, _08058FEC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _08058FF0 @ =gStageData
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08058FD6
	cmp r1, #4
	beq _08058FD6
	adds r0, r4, #0
	bl sub_80595FC
_08058FD6:
	adds r0, r4, #0
	bl sub_80596B0
	cmp r0, #1
	bne _08058FF4
	ldr r0, _08058FEC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08059058
	.align 2, 0
_08058FEC: .4byte gCurTask
_08058FF0: .4byte gStageData
_08058FF4:
	adds r0, r4, #0
	bl sub_8059640
	adds r0, r4, #0
	bl sub_805933C
	cmp r0, #1
	bne _08059034
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _08059034
	adds r2, r4, #0
	adds r2, #0x38
	ldr r1, _08059028 @ =gUnknown_080D1E54
	ldrh r0, [r1, #0x10]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #0x12]
	strb r0, [r2, #0x1a]
	ldr r0, [r4, #0x28]
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x2c]
	str r0, [r4, #0x1c]
	ldr r0, _0805902C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08059030 @ =sub_805906C
	b _08059056
	.align 2, 0
_08059028: .4byte gUnknown_080D1E54
_0805902C: .4byte gCurTask
_08059030: .4byte sub_805906C
_08059034:
	ldr r1, [r4, #0x28]
	ldr r0, [r4, #0x30]
	cmp r1, r0
	ble _08059042
	ldr r0, [r4, #0x34]
	cmp r1, r0
	blt _08059058
_08059042:
	adds r2, r4, #0
	adds r2, #0x38
	ldr r1, _08059060 @ =gUnknown_080D1E54
	ldrh r0, [r1, #8]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #0xa]
	strb r0, [r2, #0x1a]
	ldr r0, _08059064 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08059068 @ =sub_80590E4
_08059056:
	str r0, [r1, #8]
_08059058:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08059060: .4byte gUnknown_080D1E54
_08059064: .4byte gCurTask
_08059068: .4byte sub_80590E4

.if 0
.endif

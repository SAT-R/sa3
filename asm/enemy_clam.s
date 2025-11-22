.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_80646F0
sub_80646F0: @ 0x080646F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	str r1, [sp, #8]
	mov r8, r2
	mov sb, r3
	ldr r0, [sp, #0x30]
	mov sl, r0
	ldr r6, [sp, #0x34]
	mov r1, r8
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	mov r0, sb
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	mov r1, sl
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sl, r1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _08064798 @ =Task_80647B0
	ldr r2, _0806479C @ =0x00004040
	ldr r1, _080647A0 @ =TaskDestructor_8064804
	str r1, [sp]
	movs r1, #0x4c
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r3, r4
	movs r5, #0
	strb r6, [r4]
	str r5, [r4, #0x14]
	str r5, [r4, #0x18]
	str r5, [r4, #8]
	str r7, [r4, #0xc]
	ldr r0, [sp, #8]
	str r0, [r4, #0x10]
	mov r1, r8
	strh r1, [r4, #2]
	mov r0, sb
	strh r0, [r4, #4]
	mov r1, sl
	strb r1, [r4, #1]
	add r0, sp, #4
	strh r5, [r0]
	ldr r0, _080647A4 @ =0x03000048
	adds r1, r3, r0
	ldr r6, _080647A8 @ =0x01000002
	add r0, sp, #4
	adds r2, r6, #0
	str r3, [sp, #0xc]
	bl CpuSet
	mov r0, sp
	adds r0, #6
	strh r5, [r0]
	ldr r3, [sp, #0xc]
	ldr r1, _080647AC @ =0x03000040
	adds r3, r3, r1
	adds r1, r3, #0
	adds r2, r6, #0
	bl CpuSet
	adds r0, r4, #0
	bl sub_8064304
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08064798: .4byte Task_80647B0
_0806479C: .4byte 0x00004040
_080647A0: .4byte TaskDestructor_8064804
_080647A4: .4byte 0x03000048
_080647A8: .4byte 0x01000002
_080647AC: .4byte 0x03000040

	thumb_func_start Task_80647B0
Task_80647B0: @ 0x080647B0
	push {r4, lr}
	ldr r0, _080647FC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _08064800 @ =gStageData
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _080647D6
	cmp r1, #4
	beq _080647D6
	adds r0, r4, #0
	bl sub_806437C
_080647D6:
	adds r0, r4, #0
	bl sub_8064564
	adds r0, r4, #0
	bl sub_8064490
	adds r0, r4, #0
	bl sub_8064420
	cmp r0, #1
	bne _080647F4
	ldr r0, _080647FC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_080647F4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080647FC: .4byte gCurTask
_08064800: .4byte gStageData

	thumb_func_start TaskDestructor_8064804
TaskDestructor_8064804: @ 0x08064804
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x1c]
	bl VramFree
	pop {r0}
	bx r0

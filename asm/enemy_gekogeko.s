.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_GekoGeko
CreateEntity_GekoGeko: @ 0x0805980C
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
	ldr r0, _080598A4 @ =Task_GekoGekoMain
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _080598A8 @ =TaskDestructor_GekoGeko
	str r1, [sp]
	movs r1, #0x5c
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	mov r0, r8
	str r0, [r7]
	movs r2, #0
	strb r2, [r7, #6]
	strb r4, [r7, #4]
	ldrb r0, [r0]
	strb r0, [r7, #5]
	movs r3, #0
	strh r5, [r7, #0xc]
	strh r6, [r7, #0xe]
	mov r4, r8
	ldrb r1, [r4]
	lsls r1, r1, #0xb
	str r1, [r7, #0x1c]
	ldrb r0, [r4, #1]
	lsls r0, r0, #0xb
	str r0, [r7, #0x20]
	str r1, [r7, #0x14]
	str r0, [r7, #0x18]
	movs r5, #1
	strb r5, [r7, #0xa]
	movs r0, #1
	rsbs r0, r0, #0
	adds r4, r0, #0
	movs r0, #0xff
	strb r0, [r7, #0x10]
	strh r2, [r7, #0x12]
	strb r3, [r7, #7]
	mov r2, r8
	movs r0, #3
	ldrsb r0, [r2, r0]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r7, #0x24]
	ldrb r0, [r2, #5]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r7, #0x28]
	strb r3, [r7, #8]
	ldrb r1, [r2, #7]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080598AC
	ldrb r0, [r7, #9]
	orrs r0, r4
	strb r0, [r7, #9]
	b _080598AE
	.align 2, 0
_080598A4: .4byte Task_GekoGekoMain
_080598A8: .4byte TaskDestructor_GekoGeko
_080598AC:
	strb r5, [r7, #9]
_080598AE:
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	adds r1, r7, #0
	adds r1, #0x58
	ldr r2, _080598DC @ =0x01000002
	add r0, sp, #4
	bl sub_80C7520
	adds r0, r7, #0
	bl sub_80598E0
	movs r4, #2
	rsbs r4, r4, #0
	adds r0, r4, #0
	mov r1, r8
	strb r0, [r1]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080598DC: .4byte 0x01000002

	thumb_func_start sub_80598E0
sub_80598E0: @ 0x080598E0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0x18
	bl VramMalloc
	adds r6, r4, #0
	adds r6, #0x2c
	str r0, [r4, #0x2c]
	ldr r1, _0805995C @ =gUnknown_080D1E94
	ldrh r0, [r1]
	movs r5, #0
	movs r3, #0
	strh r0, [r6, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r6, #0x1a]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	ldr r1, [r4, #0x1c]
	asrs r1, r1, #8
	ldrh r0, [r4, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r2, _08059960 @ =gUnknown_03001D10
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r6, #0x10]
	ldr r1, [r4, #0x20]
	asrs r1, r1, #8
	ldrh r0, [r4, #0xe]
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
	movs r0, #9
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _0805994A
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r6, #8]
_0805994A:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r6, #0x20]
	adds r0, r6, #0
	bl sub_80BF44C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805995C: .4byte gUnknown_080D1E94
_08059960: .4byte gUnknown_03001D10

	thumb_func_start Task_GekoGekoMain
Task_GekoGekoMain: @ 0x08059964
	push {r4, r5, r6, lr}
	ldr r6, _08059998 @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	ldr r1, _0805999C @ =0x0300001C
	adds r0, r5, r1
	subs r1, #0x10
	adds r2, r5, r1
	subs r1, #4
	adds r3, r5, r1
	movs r1, #0
	bl sub_805CD70
	adds r0, r4, #0
	bl sub_8059CB0
	cmp r0, #1
	bne _080599A0
	ldr r0, [r6]
	bl TaskDestroy
	b _08059A5E
	.align 2, 0
_08059998: .4byte gCurTask
_0805999C: .4byte 0x0300001C
_080599A0:
	adds r0, r4, #0
	bl sub_8059C3C
	adds r6, r0, #0
	ldr r0, _080599E0 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08059A5E
	cmp r1, #4
	beq _08059A5E
	cmp r6, #0
	bne _080599E8
	ldrb r0, [r4, #7]
	adds r0, #1
	strb r0, [r4, #7]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3c
	bls _080599EE
	movs r0, #0
	strh r6, [r4, #0x12]
	strb r0, [r4, #6]
	strb r0, [r4, #7]
	ldr r0, _080599E4 @ =0x03000047
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	b _080599EE
	.align 2, 0
_080599E0: .4byte gUnknown_030008A0
_080599E4: .4byte 0x03000047
_080599E8:
	adds r0, r4, #0
	bl sub_8059C14
_080599EE:
	cmp r6, #0
	bne _08059A5E
	adds r5, r4, #0
	adds r5, #0x2c
	ldr r0, [r4, #0x24]
	ldr r2, [r4, #0x1c]
	cmp r0, r2
	blt _08059A0A
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08059A1C
_08059A0A:
	ldr r0, [r4, #0x28]
	cmp r0, r2
	bgt _08059A3C
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08059A3C
_08059A1C:
	ldr r1, _08059A30 @ =gUnknown_080D1E94
	ldrh r0, [r1, #8]
	strh r0, [r5, #0xc]
	ldrb r0, [r1, #0xa]
	strb r0, [r5, #0x1a]
	ldr r0, _08059A34 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08059A38 @ =sub_8059B9C
	b _08059A5C
	.align 2, 0
_08059A30: .4byte gUnknown_080D1E94
_08059A34: .4byte gCurTask
_08059A38: .4byte sub_8059B9C
_08059A3C:
	adds r0, r4, #0
	bl sub_8059AE8
	cmp r0, #1
	bne _08059A5E
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _08059A5E
	ldr r1, _08059A64 @ =gUnknown_080D1E94
	ldrh r0, [r1, #0x10]
	strh r0, [r5, #0xc]
	ldrb r0, [r1, #0x12]
	strb r0, [r5, #0x1a]
	ldr r0, _08059A68 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08059A6C @ =sub_8059A70
_08059A5C:
	str r0, [r1, #8]
_08059A5E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08059A64: .4byte gUnknown_080D1E94
_08059A68: .4byte gCurTask
_08059A6C: .4byte sub_8059A70

	thumb_func_start sub_8059A70
sub_8059A70: @ 0x08059A70
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r6, _08059A94 @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_8059CB0
	cmp r0, #1
	bne _08059A98
	ldr r0, [r6]
	bl TaskDestroy
	b _08059ACC
	.align 2, 0
_08059A94: .4byte gCurTask
_08059A98:
	adds r0, r4, #0
	bl sub_8059C3C
	adds r3, r0, #0
	cmp r3, #0
	bne _08059ACC
	ldr r0, _08059AD4 @ =0x0300002C
	adds r2, r5, r0
	ldr r1, _08059AD8 @ =gUnknown_080D1E94
	ldrh r0, [r1]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r2, #0x1a]
	movs r0, #1
	strb r0, [r4, #6]
	mov r0, sp
	strh r3, [r0]
	ldr r0, _08059ADC @ =0x03000058
	adds r1, r5, r0
	ldr r2, _08059AE0 @ =0x01000002
	mov r0, sp
	bl sub_80C7520
	ldr r1, [r6]
	ldr r0, _08059AE4 @ =Task_GekoGekoMain
	str r0, [r1, #8]
_08059ACC:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08059AD4: .4byte 0x0300002C
_08059AD8: .4byte gUnknown_080D1E94
_08059ADC: .4byte 0x03000058
_08059AE0: .4byte 0x01000002
_08059AE4: .4byte Task_GekoGekoMain

	thumb_func_start sub_8059AE8
sub_8059AE8: @ 0x08059AE8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r7, #0x2c
	ldr r1, [r0, #0x1c]
	asrs r6, r1, #8
	ldr r1, [r0, #0x20]
	asrs r5, r1, #8
	ldrh r1, [r0, #0xc]
	lsls r1, r1, #8
	adds r6, r6, r1
	ldrh r0, [r0, #0xe]
	lsls r0, r0, #8
	adds r5, r5, r0
	movs r4, #0
	movs r0, #0xff
	lsls r0, r0, #1
	mov r8, r0
	b _08059B7E
_08059B10:
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	subs r0, r0, r5
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x10]
	asrs r1, r1, #8
	subs r1, r1, r6
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_80BF30C
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r1, _08059B6C @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	cmp r0, #0xfe
	bls _08059B42
	ldr r1, _08059B70 @ =0xFFFFFCFF
	adds r0, r2, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xfe
	bhi _08059B4E
_08059B42:
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08059B66
_08059B4E:
	ldr r1, _08059B74 @ =0xFFFFFEFF
	adds r0, r2, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r8
	bhi _08059B78
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08059B78
_08059B66:
	movs r0, #1
	b _08059B90
	.align 2, 0
_08059B6C: .4byte 0xFFFF0000
_08059B70: .4byte 0xFFFFFCFF
_08059B74: .4byte 0xFFFFFEFF
_08059B78:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08059B7E:
	cmp r4, #1
	bhi _08059B8E
	adds r0, r4, #0
	bl sub_805CD20
	adds r1, r0, #0
	cmp r1, #0
	bne _08059B10
_08059B8E:
	movs r0, #0
_08059B90:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8059B9C
sub_8059B9C: @ 0x08059B9C
	push {r4, r5, r6, lr}
	ldr r6, _08059BBC @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_8059CB0
	cmp r0, #1
	bne _08059BC0
	ldr r0, [r6]
	bl TaskDestroy
	b _08059C02
	.align 2, 0
_08059BBC: .4byte gCurTask
_08059BC0:
	adds r0, r4, #0
	bl sub_8059C3C
	cmp r0, #0
	bne _08059C02
	ldr r0, _08059BE4 @ =0x0300002C
	adds r2, r5, r0
	ldr r1, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _08059BEC
	ldr r0, _08059BE8 @ =0xFFFFFBFF
	ands r1, r0
	b _08059BEE
	.align 2, 0
_08059BE4: .4byte 0x0300002C
_08059BE8: .4byte 0xFFFFFBFF
_08059BEC:
	orrs r1, r3
_08059BEE:
	str r1, [r2, #8]
	ldr r1, _08059C08 @ =gUnknown_080D1E94
	ldrh r0, [r1]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r2, #0x1a]
	ldr r0, _08059C0C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08059C10 @ =Task_GekoGekoMain
	str r0, [r1, #8]
_08059C02:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08059C08: .4byte gUnknown_080D1E94
_08059C0C: .4byte gCurTask
_08059C10: .4byte Task_GekoGekoMain

	thumb_func_start sub_8059C14
sub_8059C14: @ 0x08059C14
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x34]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08059C2C
	ldr r0, [r2, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #1
	b _08059C30
_08059C2C:
	ldr r0, [r2, #0x1c]
	ldr r1, _08059C38 @ =0xFFFFFF00
_08059C30:
	adds r0, r0, r1
	str r0, [r2, #0x1c]
	pop {r0}
	bx r0
	.align 2, 0
_08059C38: .4byte 0xFFFFFF00

	thumb_func_start sub_8059C3C
sub_8059C3C: @ 0x08059C3C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x2c
	ldr r2, [r0, #0x1c]
	asrs r2, r2, #8
	ldrh r1, [r0, #0xc]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _08059C7C @ =gUnknown_03001D10
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #0x20]
	asrs r1, r1, #8
	ldrh r0, [r0, #0xe]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	adds r0, r5, #0
	bl sub_80BF44C
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_80C033C
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08059C7C: .4byte gUnknown_03001D10

	thumb_func_start sub_8059C80
sub_8059C80: @ 0x08059C80
	push {lr}
	movs r2, #0
	str r2, [r1]
	strb r2, [r1, #8]
	str r2, [r1, #4]
	adds r2, r0, #0
	adds r2, #0x2c
	str r2, [r1, #0x1c]
	ldr r2, [r0, #0x1c]
	str r2, [r1, #0x10]
	ldr r2, [r0, #0x20]
	str r2, [r1, #0x14]
	ldrh r2, [r0, #0xc]
	strh r2, [r1, #0xc]
	ldrh r0, [r0, #0xe]
	strh r0, [r1, #0xe]
	adds r0, r1, #0
	bl sub_805C63C
	pop {r1}
	bx r1
	.align 2, 0
    
	thumb_func_start sub_8059CAC
sub_8059CAC: @ 0x08059CAC
    movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_8059CB0
sub_8059CB0: @ 0x08059CB0
	push {r4, lr}
	sub sp, #0x28
	adds r4, r0, #0
	mov r1, sp
	bl sub_8059C80
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x2c
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x14]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x18]
	str r0, [sp, #0x14]
	mov r1, sp
	ldrh r0, [r4, #0xc]
	strh r0, [r1, #0xc]
	ldrh r0, [r4, #0xe]
	strh r0, [r1, #0xe]
	ldr r0, [r4]
	str r0, [sp]
	ldrb r0, [r4, #5]
	strb r0, [r1, #8]
	mov r0, sp
	bl sub_805C280
	add sp, #0x28
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start TaskDestructor_GekoGeko
TaskDestructor_GekoGeko: @ 0x08059CEC
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x2c]
	bl VramFree
	pop {r0}
	bx r0

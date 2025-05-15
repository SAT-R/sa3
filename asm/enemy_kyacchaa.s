.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ This function is already decompiled
	thumb_func_start Task_Kyacchaa
Task_Kyacchaa: @ 0x08065DE0
	push {r4, r5, lr}
	ldr r5, _08065E08 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_8065CE0
	adds r0, r4, #0
	bl sub_8065B90
	cmp r0, #1
	bne _08065E10
	ldr r1, [r5]
	ldr r0, _08065E0C @ =sub_8065A8C
	str r0, [r1, #8]
	b _08065E3A
	.align 2, 0
_08065E08: .4byte gCurTask
_08065E0C: .4byte sub_8065A8C
_08065E10:
	ldr r0, _08065E40 @ =gStageData
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08065E28
	cmp r1, #4
	beq _08065E28
	adds r0, r4, #0
	bl sub_8065EB0
_08065E28:
	adds r0, r4, #0
	bl sub_8065F5C
	cmp r0, #1
	bne _08065E3A
	ldr r0, _08065E44 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08065E3A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08065E40: .4byte gStageData
_08065E44: .4byte gCurTask

@ This function is already decompiled
	thumb_func_start sub_8065E48
sub_8065E48: @ 0x08065E48
	push {r4, r5, lr}
	ldr r0, _08065E8C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r5, #0
	ldr r0, _08065E90 @ =gStageData
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08065E72
	cmp r1, #4
	beq _08065E72
	adds r0, r4, #0
	bl sub_8065F10
	adds r5, r0, #0
_08065E72:
	adds r0, r4, #0
	bl sub_8065CE0
	adds r0, r4, #0
	bl sub_8065F5C
	cmp r0, #1
	bne _08065E94
	ldr r0, _08065E8C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08065EA0
	.align 2, 0
_08065E8C: .4byte gCurTask
_08065E90: .4byte gStageData
_08065E94:
	cmp r5, #1
	bne _08065EA0
	ldr r0, _08065EA8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08065EAC @ =Task_Kyacchaa
	str r0, [r1, #8]
_08065EA0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08065EA8: .4byte gCurTask
_08065EAC: .4byte Task_Kyacchaa

@ This function is already decompiled
	thumb_func_start sub_8065EB0
sub_8065EB0: @ 0x08065EB0
	push {r4, r5, lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x2c]
	ldr r3, [r2, #0x64]
	movs r4, #0x80
	lsls r4, r4, #3
	adds r0, r3, #0
	ands r0, r4
	cmp r0, #0
	beq _08065EE8
	ldr r0, [r2, #0x20]
	cmp r0, r1
	bgt _08065F06
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r0, r4
	str r0, [r2, #0x20]
	cmp r0, r1
	ble _08065F06
	str r1, [r2, #0x20]
	ldr r1, _08065EE4 @ =0xFFFFFBFF
	ands r3, r1
	str r3, [r2, #0x64]
	ldr r0, [r2, #0x3c]
	ands r0, r1
	b _08065F04
	.align 2, 0
_08065EE4: .4byte 0xFFFFFBFF
_08065EE8:
	ldrh r1, [r2, #0x30]
	ldr r0, [r2, #0x20]
	cmp r0, r1
	blt _08065F06
	ldr r5, _08065F0C @ =0xFFFFFF00
	adds r0, r0, r5
	str r0, [r2, #0x20]
	cmp r0, r1
	bge _08065F06
	str r1, [r2, #0x20]
	orrs r3, r4
	str r3, [r2, #0x64]
	ldr r0, [r2, #0x3c]
	orrs r0, r4
_08065F04:
	str r0, [r2, #0x3c]
_08065F06:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08065F0C: .4byte 0xFFFFFF00

@ This function is already decompiled
	thumb_func_start sub_8065F10
sub_8065F10: @ 0x08065F10
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x24]
	ldr r2, [r1, #0x1c]
	cmp r0, r2
	blt _08065F2A
	subs r0, #0x80
	str r0, [r1, #0x24]
	cmp r0, r2
	bge _08065F2A
	str r2, [r1, #0x24]
	movs r0, #1
	b _08065F2C
_08065F2A:
	movs r0, #0
_08065F2C:
	pop {r1}
	bx r1

@ This function is already decompiled
	thumb_func_start sub_8065F30
sub_8065F30: @ 0x08065F30
	push {lr}
	movs r2, #0
	str r2, [r1]
	strb r2, [r1, #8]
	str r2, [r1, #4]
	adds r2, r0, #0
	adds r2, #0x5c
	str r2, [r1, #0x1c]
	ldr r2, [r0, #0x20]
	str r2, [r1, #0x10]
	ldr r2, [r0, #0x24]
	str r2, [r1, #0x14]
	ldrh r2, [r0, #8]
	strh r2, [r1, #0xc]
	ldrh r0, [r0, #0xa]
	strh r0, [r1, #0xe]
	adds r0, r1, #0
	bl sub_805C63C
	pop {r1}
	bx r1
	.align 2, 0

@ This function is already decompiled
	thumb_func_start sub_8065F5C
sub_8065F5C: @ 0x08065F5C
	push {r4, lr}
	sub sp, #0x28
	adds r4, r0, #0
	mov r1, sp
	bl sub_8065F30
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x5c
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x18]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x1c]
	str r0, [sp, #0x14]
	mov r1, sp
	ldrh r0, [r4, #8]
	strh r0, [r1, #0xc]
	ldrh r0, [r4, #0xa]
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

@ This function is already decompiled
	thumb_func_start TaskDestructor_Kyacchaa
TaskDestructor_Kyacchaa: @ 0x08065F98
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x5c]
	bl VramFree
	pop {r0}
	bx r0

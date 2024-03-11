.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Buzzer
CreateEntity_Buzzer: @ 0x08059D00
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
	ldr r0, _08059D80 @ =Task_BuzzerMain
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08059D84 @ =TaskDestructor_Buzzer
	str r1, [sp]
	movs r1, #0x58
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
	strb r4, [r7, #4]
	movs r0, #0
	strh r5, [r7, #0xa]
	strh r6, [r7, #0xc]
	strb r0, [r7, #8]
	mov r3, r8
	ldrb r1, [r3]
	lsls r1, r1, #0xb
	str r1, [r7, #0x18]
	ldrb r0, [r3, #1]
	lsls r0, r0, #0xb
	str r0, [r7, #0x1c]
	str r1, [r7, #0x10]
	str r0, [r7, #0x14]
	movs r0, #3
	ldrsb r0, [r3, r0]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r7, #0x20]
	ldrb r0, [r3, #5]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r7, #0x24]
	strh r2, [r7, #0xe]
	ldrb r1, [r3, #7]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08059D88
	movs r0, #0xff
	b _08059D8A
	.align 2, 0
_08059D80: .4byte Task_BuzzerMain
_08059D84: .4byte TaskDestructor_Buzzer
_08059D88:
	movs r0, #1
_08059D8A:
	strb r0, [r7, #7]
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	adds r1, r7, #0
	adds r1, #0x54
	ldr r2, _08059DBC @ =0x01000002
	add r0, sp, #4
	bl sub_80C7520
	adds r0, r7, #0
	bl sub_8059DC0
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
_08059DBC: .4byte 0x01000002

	thumb_func_start sub_8059DC0
sub_8059DC0: @ 0x08059DC0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0x18
	bl VramMalloc
	adds r6, r4, #0
	adds r6, #0x28
	str r0, [r4, #0x28]
	ldr r1, _08059E3C @ =gUnknown_080D1EAC
	ldrh r0, [r1]
	movs r5, #0
	movs r3, #0
	strh r0, [r6, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r6, #0x1a]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	ldr r1, [r4, #0x18]
	asrs r1, r1, #8
	ldrh r0, [r4, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r2, _08059E40 @ =gUnknown_03001D10
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r6, #0x10]
	ldr r1, [r4, #0x1c]
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
	movs r0, #7
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _08059E2A
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r6, #8]
_08059E2A:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r6, #0x20]
	adds r0, r6, #0
	bl sub_80BF44C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08059E3C: .4byte gUnknown_080D1EAC
_08059E40: .4byte gUnknown_03001D10

	thumb_func_start Task_BuzzerMain
Task_BuzzerMain: @ 0x08059E44
	push {r4, r5, r6, lr}
	ldr r6, _08059E68 @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0x28
	adds r5, r1, r0
	adds r0, r4, #0
	bl sub_805A2EC
	cmp r0, #1
	bne _08059E6C
	ldr r0, [r6]
	bl TaskDestroy
	b _08059EF4
	.align 2, 0
_08059E68: .4byte gCurTask
_08059E6C:
	adds r0, r4, #0
	bl sub_805A27C
	ldr r0, _08059EAC @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08059EB8
	cmp r1, #4
	beq _08059EB8
	adds r0, r4, #0
	bl sub_805A238
	adds r0, r4, #0
	bl sub_805A04C
	cmp r0, #1
	bne _08059EB8
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _08059EB8
	ldr r1, _08059EB0 @ =gUnknown_080D1EAC
	ldrh r0, [r1, #0x10]
	strh r0, [r5, #0xc]
	ldrb r0, [r1, #0x12]
	strb r0, [r5, #0x1a]
	ldr r1, [r6]
	ldr r0, _08059EB4 @ =sub_8059FA0
	b _08059EF2
	.align 2, 0
_08059EAC: .4byte gUnknown_030008A0
_08059EB0: .4byte gUnknown_080D1EAC
_08059EB4: .4byte sub_8059FA0
_08059EB8:
	ldr r2, [r4, #0x18]
	ldr r0, [r4, #0x20]
	cmp r2, r0
	bgt _08059ECC
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08059EDE
_08059ECC:
	ldr r0, [r4, #0x24]
	cmp r2, r0
	blt _08059EF4
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08059EF4
_08059EDE:
	ldr r1, _08059EFC @ =gUnknown_080D1EAC
	ldrh r0, [r1, #8]
	strh r0, [r5, #0xc]
	ldrb r0, [r1, #0xa]
	strb r0, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	ldr r0, _08059F00 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08059F04 @ =sub_8059F08
_08059EF2:
	str r0, [r1, #8]
_08059EF4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08059EFC: .4byte gUnknown_080D1EAC
_08059F00: .4byte gCurTask
_08059F04: .4byte sub_8059F08

	thumb_func_start sub_8059F08
sub_8059F08: @ 0x08059F08
	push {r4, r5, r6, r7, lr}
	ldr r7, _08059F30 @ =gCurTask
	ldr r0, [r7]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_805A27C
	adds r6, r0, #0
	adds r0, r4, #0
	bl sub_805A2EC
	cmp r0, #1
	bne _08059F34
	ldr r0, [r7]
	bl TaskDestroy
	b _08059F90
	.align 2, 0
_08059F30: .4byte gCurTask
_08059F34:
	ldr r0, _08059F70 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08059F90
	cmp r1, #4
	beq _08059F90
	cmp r6, #0
	bne _08059F90
	ldr r0, _08059F74 @ =0x03000028
	adds r2, r5, r0
	ldr r1, _08059F78 @ =gUnknown_080D1EAC
	ldrh r0, [r1]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	ldr r1, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _08059F80
	ldr r0, _08059F7C @ =0xFFFFFBFF
	ands r1, r0
	b _08059F82
	.align 2, 0
_08059F70: .4byte gUnknown_030008A0
_08059F74: .4byte 0x03000028
_08059F78: .4byte gUnknown_080D1EAC
_08059F7C: .4byte 0xFFFFFBFF
_08059F80:
	orrs r1, r3
_08059F82:
	str r1, [r2, #8]
	movs r0, #0
	strb r0, [r4, #6]
	ldr r0, _08059F98 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08059F9C @ =Task_BuzzerMain
	str r0, [r1, #8]
_08059F90:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08059F98: .4byte gCurTask
_08059F9C: .4byte Task_BuzzerMain

	thumb_func_start sub_8059FA0
sub_8059FA0: @ 0x08059FA0
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r6, _08059FC8 @ =gCurTask
	ldr r0, [r6]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	adds r0, r5, #0
	bl sub_805A27C
	adds r0, r5, #0
	bl sub_805A2EC
	cmp r0, #1
	bne _08059FCC
	ldr r0, [r6]
	bl TaskDestroy
	b _0805A034
	.align 2, 0
_08059FC8: .4byte gCurTask
_08059FCC:
	ldr r0, _0805A03C @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0805A034
	cmp r1, #4
	beq _0805A034
	ldrb r0, [r5, #8]
	adds r0, #1
	strb r0, [r5, #8]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x21
	bls _0805A034
	ldr r0, _0805A040 @ =0x03000028
	adds r1, r4, r0
	ldr r2, _0805A044 @ =gUnknown_080D1EAC
	ldrh r0, [r2]
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #2]
	strb r0, [r1, #0x1a]
	movs r0, #1
	strb r0, [r5, #6]
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	movs r1, #0xf6
	cmp r0, #0
	beq _0805A00E
	movs r1, #0xa
_0805A00E:
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r5, #0x18]
	adds r0, r0, r1
	ldr r1, [r5, #0x1c]
	movs r2, #0xe0
	lsls r2, r2, #4
	adds r1, r1, r2
	ldrh r2, [r5, #0xa]
	ldrh r3, [r5, #0xc]
	ldrh r4, [r5, #0xe]
	str r4, [sp]
	bl sub_805A33C
	movs r0, #0
	strb r0, [r5, #8]
	ldr r1, [r6]
	ldr r0, _0805A048 @ =Task_BuzzerMain
	str r0, [r1, #8]
_0805A034:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805A03C: .4byte gUnknown_030008A0
_0805A040: .4byte 0x03000028
_0805A044: .4byte gUnknown_080D1EAC
_0805A048: .4byte Task_BuzzerMain

	thumb_func_start sub_805A04C
sub_805A04C: @ 0x0805A04C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r7, r0, #0
	movs r0, #0x28
	adds r0, r0, r7
	mov r8, r0
	ldr r0, [r7, #0x18]
	asrs r6, r0, #8
	ldr r0, [r7, #0x1c]
	asrs r5, r0, #8
	ldrh r0, [r7, #0xa]
	lsls r0, r0, #8
	adds r6, r6, r0
	ldrh r0, [r7, #0xc]
	lsls r0, r0, #8
	adds r5, r5, r0
	movs r3, #0
	b _0805A108
_0805A074:
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	subs r0, r0, r5
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x10]
	asrs r1, r1, #8
	subs r1, r1, r6
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	str r3, [sp]
	bl sub_80BF30C
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r1, _0805A0D8 @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	ldr r3, [sp]
	cmp r0, #0xfe
	bhi _0805A0AC
	mov r1, r8
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0805A0C6
_0805A0AC:
	ldr r1, _0805A0DC @ =0xFFFFFEFF
	adds r0, r2, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xfe
	bhi _0805A102
	mov r1, r8
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0805A102
_0805A0C6:
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	subs r1, r6, r0
	cmp r1, #0
	blt _0805A0E0
	cmp r1, #0x63
	ble _0805A0E6
	b _0805A102
	.align 2, 0
_0805A0D8: .4byte 0xFFFF0000
_0805A0DC: .4byte 0xFFFFFEFF
_0805A0E0:
	subs r0, r0, r6
	cmp r0, #0x63
	bgt _0805A102
_0805A0E6:
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	subs r1, r5, r0
	cmp r1, #0
	blt _0805A0F6
	cmp r1, #0x63
	ble _0805A0FC
	b _0805A102
_0805A0F6:
	subs r0, r0, r5
	cmp r0, #0x63
	bgt _0805A102
_0805A0FC:
	strh r2, [r7, #0xe]
	movs r0, #1
	b _0805A11E
_0805A102:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_0805A108:
	cmp r3, #1
	bhi _0805A11C
	adds r0, r3, #0
	str r3, [sp]
	bl sub_805CD20
	adds r4, r0, #0
	ldr r3, [sp]
	cmp r4, #0
	bne _0805A074
_0805A11C:
	movs r0, #0
_0805A11E:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_805A12C
sub_805A12C: @ 0x0805A12C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #4
	bl VramMalloc
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0x18
	str r1, [r4, #0x18]
	ldr r2, _0805A18C @ =gUnknown_080D1EC4
	ldrh r1, [r2]
	movs r6, #0
	movs r5, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r4, #0x10]
	asrs r1, r1, #8
	ldr r3, _0805A190 @ =gUnknown_03001D10
	ldr r2, [r3]
	subs r1, r1, r2
	strh r1, [r0, #0x10]
	ldr r1, [r4, #0x14]
	asrs r1, r1, #8
	ldr r2, [r3, #4]
	subs r1, r1, r2
	strh r1, [r0, #0x12]
	movs r1, #0x98
	lsls r1, r1, #3
	strh r1, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r6, [r0, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r0, #8]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0, #0x20]
	bl sub_80BF44C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805A18C: .4byte gUnknown_080D1EC4
_0805A190: .4byte gUnknown_03001D10

	thumb_func_start sub_805A194
sub_805A194: @ 0x0805A194
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	movs r4, #0
	ldr r1, [r0, #0x10]
	asrs r7, r1, #8
	ldr r1, [r0, #0x14]
	asrs r6, r1, #8
	ldrh r1, [r0]
	lsls r1, r1, #8
	adds r7, r7, r1
	ldrh r1, [r0, #2]
	lsls r1, r1, #8
	adds r6, r6, r1
	adds r0, #0x18
	mov r8, r0
	movs r5, #0
_0805A1B8:
	cmp r5, #0
	bne _0805A1C8
	ldr r0, _0805A1C4 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _0805A1D2
	.align 2, 0
_0805A1C4: .4byte gUnknown_030008A0
_0805A1C8:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0805A1D2:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0805A21C @ =gUnknown_030015C0
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _0805A220
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _0805A220
	adds r0, r4, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0805A218
	str r4, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020CE0
_0805A218:
	movs r0, #1
	b _0805A22C
	.align 2, 0
_0805A21C: .4byte gUnknown_030015C0
_0805A220:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0805A1B8
	movs r0, #0
_0805A22C:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_805A238
sub_805A238: @ 0x0805A238
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0805A25E
	ldr r0, [r2, #0x18]
	ldr r1, [r2, #0x24]
	cmp r0, r1
	bge _0805A272
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	str r0, [r2, #0x18]
	cmp r0, r1
	ble _0805A272
	b _0805A270
_0805A25E:
	ldr r0, [r2, #0x18]
	ldr r1, [r2, #0x20]
	cmp r0, r1
	blt _0805A272
	ldr r3, _0805A278 @ =0xFFFFFF00
	adds r0, r0, r3
	str r0, [r2, #0x18]
	cmp r0, r1
	bge _0805A272
_0805A270:
	str r1, [r2, #0x18]
_0805A272:
	pop {r0}
	bx r0
	.align 2, 0
_0805A278: .4byte 0xFFFFFF00

	thumb_func_start sub_805A27C
sub_805A27C: @ 0x0805A27C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x28
	ldr r2, [r0, #0x18]
	asrs r2, r2, #8
	ldrh r1, [r0, #0xa]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _0805A2BC @ =gUnknown_03001D10
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #0x1c]
	asrs r1, r1, #8
	ldrh r0, [r0, #0xc]
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
_0805A2BC: .4byte gUnknown_03001D10

	thumb_func_start sub_805A2C0
sub_805A2C0: @ 0x0805A2C0
	push {lr}
	movs r2, #0
	str r2, [r1]
	strb r2, [r1, #8]
	str r2, [r1, #4]
	adds r2, r0, #0
	adds r2, #0x28
	str r2, [r1, #0x1c]
	ldr r2, [r0, #0x18]
	str r2, [r1, #0x10]
	ldr r2, [r0, #0x1c]
	str r2, [r1, #0x14]
	ldrh r2, [r0, #0xa]
	strh r2, [r1, #0xc]
	ldrh r0, [r0, #0xc]
	strh r0, [r1, #0xe]
	adds r0, r1, #0
	bl sub_805C63C
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_805A2EC
sub_805A2EC: @ 0x0805A2EC
	push {r4, lr}
	sub sp, #0x28
	adds r4, r0, #0
	mov r1, sp
	bl sub_805A2C0
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x28
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x10]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [sp, #0x14]
	mov r1, sp
	ldrh r0, [r4, #0xa]
	strh r0, [r1, #0xc]
	ldrh r0, [r4, #0xc]
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

	thumb_func_start TaskDestructor_Buzzer
TaskDestructor_Buzzer: @ 0x0805A328
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x28]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_805A33C
sub_805A33C: @ 0x0805A33C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	mov r8, r0
	mov sb, r1
	adds r4, r2, #0
	adds r5, r3, #0
	ldr r6, [sp, #0x1c]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	ldr r0, _0805A39C @ =sub_805A3A8
	ldr r2, _0805A3A0 @ =0x00004040
	ldr r1, _0805A3A4 @ =sub_805A4A8
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	mov r1, r8
	str r1, [r0, #0x10]
	mov r1, sb
	str r1, [r0, #0x14]
	mov r1, r8
	str r1, [r0, #8]
	mov r1, sb
	str r1, [r0, #0xc]
	strh r4, [r0]
	strh r5, [r0, #2]
	strh r6, [r0, #4]
	bl sub_805A12C
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805A39C: .4byte sub_805A3A8
_0805A3A0: .4byte 0x00004040
_0805A3A4: .4byte sub_805A4A8

	thumb_func_start sub_805A3A8
sub_805A3A8: @ 0x0805A3A8
	push {r4, r5, lr}
	ldr r5, _0805A3E0 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_805A3E4
	adds r0, r4, #0
	bl sub_805A464
	adds r0, r4, #0
	bl sub_805A194
	adds r0, r4, #0
	bl sub_805A424
	cmp r0, #1
	bne _0805A3D8
	ldr r0, [r5]
	bl TaskDestroy
_0805A3D8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805A3E0: .4byte gCurTask

	thumb_func_start sub_805A3E4
sub_805A3E4: @ 0x0805A3E4
	push {r4, lr}
	ldr r4, _0805A420 @ =gUnknown_082B48B4
	ldrh r3, [r0, #4]
	lsrs r3, r3, #2
	movs r1, #0xff
	ands r3, r1
	lsls r1, r3, #3
	adds r1, r1, r4
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	lsls r1, r1, #1
	ldr r2, [r0, #0x14]
	adds r2, r2, r1
	str r2, [r0, #0x14]
	lsls r3, r3, #3
	movs r1, #0x80
	lsls r1, r1, #2
	adds r3, r3, r1
	adds r3, r3, r4
	ldrh r1, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	lsls r1, r1, #1
	ldr r2, [r0, #0x10]
	adds r2, r2, r1
	str r2, [r0, #0x10]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805A420: .4byte gUnknown_082B48B4

	thumb_func_start sub_805A424
sub_805A424: @ 0x0805A424
	push {lr}
	ldr r2, [r0, #0x10]
	asrs r2, r2, #8
	ldrh r1, [r0]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _0805A458 @ =gUnknown_03001D10
	ldr r1, [r3]
	subs r2, r2, r1
	ldr r1, [r0, #0x14]
	asrs r1, r1, #8
	ldrh r0, [r0, #2]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	cmp r2, #0xf0
	bhi _0805A454
	cmp r1, #0xa0
	bls _0805A45C
_0805A454:
	movs r0, #1
	b _0805A45E
	.align 2, 0
_0805A458: .4byte gUnknown_03001D10
_0805A45C:
	movs r0, #0
_0805A45E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_805A464
sub_805A464: @ 0x0805A464
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x18
	ldr r2, [r0, #0x10]
	asrs r2, r2, #8
	ldrh r1, [r0]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _0805A4A4 @ =gUnknown_03001D10
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #0x14]
	asrs r1, r1, #8
	ldrh r0, [r0, #2]
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
_0805A4A4: .4byte gUnknown_03001D10

	thumb_func_start sub_805A4A8
sub_805A4A8: @ 0x0805A4A8
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	bl VramFree
	pop {r0}
	bx r0

.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start sub_8055E50
sub_8055E50: @ 0x08055E50
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	ldr r0, _08055F1C @ =gStageData
	ldrb r2, [r0]
	mov r0, sl
	adds r0, #0x5e
	ldrb r0, [r0]
	mov sb, r0
	mov r0, sl
	adds r0, #0x5f
	ldrb r1, [r0]
	mov r7, sl
	adds r7, #0xc
	ldr r5, _08055F20 @ =gUnknown_080D1CE4
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r4, r2, #3
	adds r4, r4, r2
	adds r4, r4, r0
	lsls r4, r4, #1
	adds r0, r5, #4
	adds r0, r4, r0
	ldrh r0, [r0]
	bl VramMalloc
	mov r1, sl
	str r0, [r1, #0xc]
	adds r0, r4, r5
	ldrh r0, [r0]
	movs r6, #0
	strh r0, [r7, #0xc]
	adds r5, #2
	adds r4, r4, r5
	ldrh r0, [r4]
	strb r0, [r7, #0x1a]
	movs r0, #0x80
	strh r0, [r7, #0x14]
	str r6, [r7, #8]
	strh r6, [r7, #0xe]
	movs r1, #0x78
	strh r1, [r7, #0x10]
	movs r0, #0x50
	strh r0, [r7, #0x12]
	strh r6, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	movs r1, #0
	strb r1, [r7, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	str r0, [r7, #0x20]
	adds r7, #0x28
	ldr r5, _08055F24 @ =gUnknown_080D1CD2
	mov r1, sb
	lsls r4, r1, #1
	add r4, sb
	lsls r4, r4, #1
	adds r0, r5, #4
	adds r0, r4, r0
	ldrh r0, [r0]
	bl VramMalloc
	mov r1, sl
	str r0, [r1, #0x34]
	adds r0, r4, r5
	ldrh r0, [r0]
	strh r0, [r7, #0xc]
	adds r5, #2
	adds r4, r4, r5
	ldrh r0, [r4]
	strb r0, [r7, #0x1a]
	movs r0, #0x80
	strh r0, [r7, #0x14]
	str r6, [r7, #8]
	strh r6, [r7, #0xe]
	movs r1, #0x78
	strh r1, [r7, #0x10]
	movs r0, #0x28
	strh r0, [r7, #0x12]
	strh r6, [r7, #0x16]
	subs r0, #0x29
	strb r0, [r7, #0x1b]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	movs r1, #0
	strb r1, [r7, #0x1f]
	mov r0, r8
	str r0, [r7, #0x20]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08055F1C: .4byte gStageData
_08055F20: .4byte gUnknown_080D1CE4
_08055F24: .4byte gUnknown_080D1CD2

	thumb_func_start sub_8055F28
sub_8055F28: @ 0x08055F28
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _08055F54 @ =gStageData
	ldrb r0, [r0, #9]
	cmp r0, #1
	bne _08055F5C
	ldr r0, _08055F58 @ =Task_38_8056714
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x38
	movs r3, #0
	bl TaskCreate
	adds r4, r0, #0
	bl Task_38_80566A8
	movs r0, #8
	bl sub_8001EEC
	b _08055FA6
	.align 2, 0
_08055F54: .4byte gStageData
_08055F58: .4byte Task_38_8056714
_08055F5C:
	cmp r0, #3
	bne _08055F84
	ldr r0, _08055F80 @ =Task_38_8056884
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x38
	movs r3, #0
	bl TaskCreate
	adds r4, r0, #0
	bl sub_8056818
	movs r0, #0x10
	bl sub_8001EEC
	b _08055FA6
	.align 2, 0
_08055F80: .4byte Task_38_8056884
_08055F84:
	cmp r0, #5
	bne _08056016
	ldr r0, _08056020 @ =Task_38_8056934
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x38
	movs r3, #0
	bl TaskCreate
	adds r4, r0, #0
	bl sub_80568CC
	movs r0, #2
	bl sub_8001EEC
_08055FA6:
	ldrh r0, [r4, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r5, #0
	movs r1, #0x78
	strh r1, [r0, #0x34]
	movs r1, #1
	strh r1, [r0]
	movs r1, #2
	strh r1, [r0, #2]
	strh r5, [r0, #4]
	movs r1, #0x80
	lsls r1, r1, #3
	strh r1, [r0, #6]
	movs r1, #0xbf
	strh r1, [r0, #8]
	strh r5, [r0, #0xa]
	ldr r6, _08056024 @ =gStageData
	adds r4, r6, #0
	adds r4, #0xa4
	ldr r0, [r4]
	cmp r0, #0
	beq _08055FDC
	bl TaskDestroy
	str r5, [r4]
_08055FDC:
	movs r0, #9
	strb r0, [r6, #4]
	ldr r4, _08056028 @ =gPlayers
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r5, #0xf
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #1
	bne _08055FFA
	movs r0, #0
	adds r1, r4, #0
	bl sub_801EBC0
_08055FFA:
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r4, r4, r0
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #1
	bne _08056016
	movs r0, #0
	adds r1, r4, #0
	bl sub_801EBC0
_08056016:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08056020: .4byte Task_38_8056934
_08056024: .4byte gStageData
_08056028: .4byte gPlayers

.if 0
.endif

.include "asm/macros.inc"
.include "constants/constants.inc"

.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _0804DA34 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r4, r0
	adds r0, #0xc
	adds r0, r0, r4
	mov r8, r0
	movs r1, #0
	mov sb, r1
	ldr r0, _0804DA38 @ =gStageData
	ldrb r0, [r0, #4]
	cmp r0, #4
	beq _0804DA22
	ldr r0, _0804DA3C @ =0x03000042
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0804DA22
	movs r3, #7
	ands r3, r1
	adds r0, r1, #1
	movs r1, #0xf
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	movs r1, #0xf
	ands r0, r1
	ldr r2, _0804DA40 @ =0x03000043
	adds r1, r4, r2
	cmp r0, #0
	bne _0804D9C8
	ldrb r0, [r1]
	adds r0, #6
	strb r0, [r1]
_0804D9C8:
	adds r2, r1, #0
	ldrb r0, [r2]
	cmp r0, #0x20
	bls _0804D9D4
	movs r0, #0x20
	strb r0, [r2]
_0804D9D4:
	ldr r2, _0804DA44 @ =0x03000040
	adds r0, r4, r2
	ldrb r5, [r1]
	lsrs r5, r5, #2
	ldrh r2, [r0]
	adds r5, r5, r2
	strh r5, [r0]
	ldr r2, _0804DA48 @ =gUnknown_080D03E8
	lsls r3, r3, #1
	adds r0, r3, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrb r1, [r1]
	lsls r1, r1, #4
	adds r4, r0, #0
	muls r4, r1, r4
	adds r2, #1
	adds r3, r3, r2
	movs r0, #0
	ldrsb r0, [r3, r0]
	muls r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r5
	lsls r1, r1, #0x10
	movs r2, #0x34
	ldrsh r0, [r7, r2]
	lsls r0, r0, #8
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r0, r4
	str r0, [r7, #0x38]
	lsrs r0, r1, #0x10
	mov sb, r0
	asrs r1, r1, #0x10
	ldr r0, [r7, #0x3c]
	adds r0, r0, r1
	str r0, [r7, #0x3c]
_0804DA22:
	movs r1, #0
_0804DA24:
	lsls r0, r1, #0x10
	adds r5, r0, #0
	cmp r5, #0
	bne _0804DA4C
	ldr r0, _0804DA38 @ =gStageData
	ldrb r1, [r0, #6]
	b _0804DA56
	.align 2, 0
_0804DA34: .4byte gCurTask
_0804DA38: .4byte gStageData
_0804DA3C: .4byte 0x03000042
_0804DA40: .4byte 0x03000043
_0804DA44: .4byte 0x03000040
_0804DA48: .4byte gUnknown_080D03E8
_0804DA4C:
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0804DA56:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0804DAA4 @ =gPlayers
	adds r6, r0, r1
	adds r0, r6, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _0804DAE8
	ldr r0, [r6, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0804DAB0
	ldr r0, [r6, #0x6c]
	cmp r0, r8
	bne _0804DAB0
	movs r0, #3
	adds r1, r6, #0
	movs r2, #0
	movs r3, #0
	bl sub_80110E8
	cmp r0, #0
	ble _0804DAA8
	ldr r1, [r6, #0x14]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r1, r2
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	str r1, [r6, #0x14]
	b _0804DAB0
	.align 2, 0
_0804DAA4: .4byte gPlayers
_0804DAA8:
	lsls r1, r0, #8
	ldr r0, [r6, #0x14]
	adds r0, r0, r1
	str r0, [r6, #0x14]
_0804DAB0:
	ldr r1, [r7, #0x38]
	asrs r1, r1, #8
	ldr r2, [r7, #0x3c]
	asrs r2, r2, #8
	movs r4, #0
	str r4, [sp]
	mov r0, r8
	adds r3, r6, #0
	bl sub_8020950
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	cmp r0, #0
	beq _0804DAE8
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r6, #0x14]
	adds r0, r0, r1
	str r0, [r6, #0x14]
	strh r4, [r6, #0x1a]
	adds r2, r7, #0
	adds r2, #0x42
	ldrb r1, [r2]
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r2]
_0804DAE8:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0804DA24
	bl sub_804DB08
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

.syntax divided

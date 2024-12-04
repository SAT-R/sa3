
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r0, _08045F0C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0     @ r6 = rocket
	ldr r0, [r6]
	str r0, [sp, #8]    @ sp08 = me
	ldr r2, _08045F10 @ =0x030000E8
	adds r2, r2, r1
	mov r8, r2          @ r8 = s
	ldr r7, [r6, #0x18] @ r7 = worldX = rocket->worldX
	movs r0, #0
	strb r0, [r6, #0xa]
	movs r5, #0
	ldr r3, _08045F14 @ =0x030000E0
	adds r3, r1, r3 
	str r3, [sp, #0xc]  @ sp0C = &rocket->players
	lsls r0, r7, #0x10
	mov sl, r0
	asrs r0, r7, #0x10
	lsls r0, r0, #0x10
	mov sb, r0
_08045E1E_loop:
	lsls r1, r5, #2
	adds r0, r6, #0
	adds r0, #0xe0
	adds r0, r0, r1
	ldr r4, [r0]        @ r4 = p
	ldr r2, [r4, #4]
	ldr r3, _08045F18 @ =0x01000100
	ands r3, r2
	lsls r1, r7, #0x10
	str r1, [sp, #0x10]
	asrs r0, r7, #0x10
	str r0, [sp, #0x14]
	cmp r3, #0
	bne _08045E86
	ldr r1, [r4]
	ldr r0, _08045F1C @ =Player_801D73C
	cmp r1, r0
	beq _08045E86
	movs r0, #4
	ands r2, r0
	cmp r2, #0
	beq _08045E86
	str r4, [sp]
	str r3, [sp, #4]
	mov r0, r8
	mov r2, sl
	asrs r1, r2, #0x10
	mov r3, sb
	asrs r2, r3, #0x10
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	beq _08045E86
	adds r0, r4, #0
	bl sub_8016F28
	adds r0, r4, #0
	bl Player_800BE60
	ldr r0, [r4, #4]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4, #4]
	mov r0, r8
	str r0, [r4, #0x6c]
	lsls r1, r5, #1
	movs r0, #1
	lsls r0, r1
	ldrb r1, [r6, #0xa]
	orrs r0, r1
	strb r0, [r6, #0xa]
_08045E86:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _08045E1E_loop
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	beq _08045EA4
	ldr r0, _08045F20 @ =0x00000256
	bl sub_8003DF0
	ldr r0, _08045F0C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08045F24 @ =Task_8045F48
	str r0, [r1, #8]
_08045EA4:
	ldr r1, [sp, #0x10]
	asrs r0, r1, #0x10
	ldr r1, [sp, #0x14]
	ldr r3, _08045F28 @ =gCamera
	ldr r2, [r3]
	subs r2, r0, r2
	ldr r3, [r3, #4]
	subs r3, r1, r3
	bl sub_802C140
	cmp r0, #0
	bne _08045F30
	movs r5, #0
	movs r7, #0
_08045EC0:
	lsls r0, r5, #2
	ldr r2, [sp, #0xc]
	adds r0, r2, r0
	ldr r4, [r0]        @ r4 = p
	ldrb r1, [r6, #0xa]
	lsls r0, r5, #1
	asrs r1, r0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08045EEC
	adds r0, r4, #0
	bl Player_8009E8C
	ldr r0, [r4, #4]
	ldr r1, _08045F2C @ =0xEFFFFFFF
	ands r0, r1
	str r0, [r4, #4]
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r4, #0x1a]
	strh r7, [r4, #0x18]
_08045EEC:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _08045EC0
	ldrb r0, [r6, #8]
	ldr r3, [sp, #8]
	strb r0, [r3]
	ldr r0, _08045F20 @ =0x00000256
	bl sub_8003E28
	ldr r0, _08045F0C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08045F36
	.align 2, 0
_08045F0C: .4byte gCurTask
_08045F10: .4byte 0x030000E8
_08045F14: .4byte 0x030000E0
_08045F18: .4byte 0x01000100
_08045F1C: .4byte Player_801D73C
_08045F20: .4byte 0x00000256
_08045F24: .4byte Task_8045F48
_08045F28: .4byte gCamera
_08045F2C: .4byte 0xEFFFFFFF
_08045F30:
	adds r0, r6, #0
	bl sub_8046438
_08045F36:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
    
.syntax divided

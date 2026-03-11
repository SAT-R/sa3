.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

@ Input:
    @ R0 = EnemyUnknownStruc0*
@ Output:
    @ R0 = bool32
	thumb_func_start sub_805C63C
sub_805C63C: @ 0x0805C63C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r4, r0, #0
	movs r5, #0
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, [r4, #0x10]
	asrs r7, r0, #8
	ldr r0, [r4, #0x14]
	asrs r6, r0, #8
	ldrh r0, [r4, #0xc]
	lsls r0, r0, #8
	adds r7, r7, r0
	ldrh r0, [r4, #0xe]
	lsls r0, r0, #8
	adds r6, r6, r0
	ldr r1, [r4, #0x1c]
	mov r8, r1
	lsls r2, r7, #8
	lsls r1, r6, #8
	mov r3, r8
	ldrh r0, [r3, #0xc]
	ldr r3, _0805C6A8 @ =0x000004B1
	mov sb, r3
	cmp r0, sb
	bne _0805C67E
	ldr r0, _0805C6AC @ =0xFFFFF000
	adds r1, r1, r0
	adds r2, r2, r0
_0805C67E:
	adds r0, r2, #0
	bl sub_8004D68
	mov r1, r8
	ldrh r0, [r1, #0xc]
	movs r3, #0
	mov sl, r3
_0805C68C:
	mov r0, sl
	cmp r0, #0
	bne _0805C6B8
	ldr r1, _0805C6B0 @ =gStageData
	ldrb r0, [r1, #6]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r0, _0805C6B4 @ =gPlayers
	adds r5, r1, r0
	b _0805C6D0
	.align 2, 0
_0805C6A8: .4byte 0x000004B1
_0805C6AC: .4byte 0xFFFFF000
_0805C6B0: .4byte gStageData
_0805C6B4: .4byte gPlayers
_0805C6B8:
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0805C748 @ =gPlayers
	adds r5, r0, r1
_0805C6D0:
	adds r0, r5, #0
	bl sub_802C080
	cmp r0, #0
	beq _0805C6DC
	b _0805C86C
_0805C6DC:
	ldr r3, _0805C74C @ =gStageData + 0x98
	ldr r0, [r3]
	cmp r0, #0
	beq _0805C700
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x50]
	cmp r0, r5
	bne _0805C700
	mov r0, r8
	bl sub_805C510
	cmp r0, #1
	bne _0805C700
	movs r3, #1
	str r3, [sp, #8]
_0805C700:
	str r5, [sp]
	movs r0, #0
	mov sb, r0
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _0805C754
	adds r0, r5, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0805C7C4
	str r5, [sp]
	mov r3, sb
	str r3, [sp, #4]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	bne _0805C73C
	b _0805C86C
_0805C73C:
	mov r0, sl
	cmp r0, #0
	bne _0805C81C
	ldr r1, _0805C750 @ =gStageData
	ldrb r0, [r1, #6]
	b _0805C826
	.align 2, 0
_0805C748: .4byte gPlayers
_0805C74C: .4byte gStageData + 0x98
_0805C750: .4byte gStageData
_0805C754:
	str r5, [sp]
	movs r0, #1
	mov sb, r0
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	beq _0805C7A4
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	cmp r0, r7
	bge _0805C77A
	mov r1, sb
	strb r1, [r4, #0xa]
	b _0805C77E
_0805C77A:
	movs r0, #0xff
	strb r0, [r4, #0xa]
_0805C77E:
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	cmp r0, r6
	bge _0805C78A
	movs r0, #1
	b _0805C78C
_0805C78A:
	movs r0, #0xff
_0805C78C:
	strb r0, [r4, #0xb]
	adds r0, r5, #0
	bl sub_80044CC
	mov r3, sl
	cmp r3, #0
	bne _0805C81C
	ldr r1, _0805C7A0 @ =gStageData
	ldrb r0, [r1, #6]
	b _0805C826
	.align 2, 0
_0805C7A0: .4byte gStageData
_0805C7A4:
	str r5, [sp]
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	beq _0805C82E
	adds r0, r5, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0805C7E2
_0805C7C4:
	str r5, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_8020CE0
	str r5, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020CE0
	b _0805C86C
_0805C7E2:
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	cmp r0, r7
	bge _0805C7F0
	mov r3, sb
	strb r3, [r4, #0xa]
	b _0805C7F4
_0805C7F0:
	movs r0, #0xff
	strb r0, [r4, #0xa]
_0805C7F4:
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	cmp r0, r6
	bge _0805C800
	movs r0, #1
	b _0805C802
_0805C800:
	movs r0, #0xff
_0805C802:
	strb r0, [r4, #0xb]
	adds r0, r5, #0
	bl sub_80044CC
	mov r0, sl
	cmp r0, #0
	bne _0805C81C
	ldr r1, _0805C818 @ =gStageData
	ldrb r0, [r1, #6]
	b _0805C826
	.align 2, 0
_0805C818: .4byte gStageData
_0805C81C:
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
_0805C826:
	strb r0, [r4, #9]
	movs r3, #1
	str r3, [sp, #8]
	b _0805C86C
_0805C82E:
	str r5, [sp]
	mov r0, sb
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _0805C86C
	adds r0, r5, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0805C86C
	str r5, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_8020CE0
	str r5, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020CE0
_0805C86C:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r0, #1
	bhi _0805C87C
	b _0805C68C
_0805C87C:
	str r5, [r4, #0x18]
	ldr r0, [sp, #8]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

@ Result:
    @ R0 = bool32
	thumb_func_start sub_805C890
sub_805C890: @ 0x0805C890
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	str r0, [sp, #0xc]
	lsls r4, r1, #0x18
	lsrs r4, r4, #0x18
	movs r6, #0
	movs r0, #0
	str r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	ldr r0, [r1, #0x10]
	asrs r0, r0, #8
	mov r8, r0
	ldr r0, [r1, #0x14]
	asrs r7, r0, #8
	ldrh r0, [r1, #0xc]
	lsls r0, r0, #8
	add r8, r0
	ldrh r0, [r1, #0xe]
	lsls r0, r0, #8
	adds r7, r7, r0
	ldr r0, [r1, #0x1c]
	mov sb, r0
	mov r1, r8
	lsls r0, r1, #8
	lsls r1, r7, #8
	bl sub_8004D68
	movs r0, #0
	str r0, [sp, #0x14]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	str r4, [sp, #0x18]
_0805C8D8:
	ldr r1, [sp, #0x14]
	cmp r1, #0
	bne _0805C8FC
	ldr r2, _0805C8F4 @ =gStageData
	ldrb r1, [r2, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0805C8F8 @ =gPlayers
	adds r6, r0, r1
	b _0805C916
	.align 2, 0
_0805C8F4: .4byte gStageData
_0805C8F8: .4byte gPlayers
_0805C8FC:
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0805C9F8 @ =gPlayers
	adds r6, r0, r1
	ldr r2, _0805C9FC @ =gStageData
_0805C916:
	adds r0, r2, #0
	adds r0, #0x98
	ldr r0, [r0]
	cmp r0, #0
	beq _0805C93C
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x50]
	cmp r0, r6
	bne _0805C93C
	mov r0, sb
	bl sub_805C510
	cmp r0, #1
	bne _0805C93C
	movs r0, #1
	str r0, [sp, #0x10]
_0805C93C:
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0805C94A
	b _0805CB4A
_0805C94A:
	adds r1, r6, #0
	adds r1, #0x2b
	ldrb r0, [r1]
	movs r2, #0x1c
	ands r2, r0
	mov sl, r1
	cmp r2, #4
	beq _0805C964
	cmp r2, #8
	beq _0805C964
	cmp r2, #0x10
	beq _0805C964
	b _0805CB4A
_0805C964:
	str r6, [sp]
	movs r4, #1
	str r4, [sp, #4]
	mov r0, sb
	mov r1, r8
	adds r2, r7, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _0805CA4C
	ldr r1, [r6, #4]
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r0, r1
	cmp r0, #0
	beq _0805C988
	b _0805CB4A
_0805C988:
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	beq _0805CA38
	adds r0, r6, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0805CA38
	adds r0, r6, #0
	adds r0, #0x4a
	movs r1, #0
	ldrsh r5, [r0, r1]
	cmp r5, #0
	bne _0805CA38
	str r6, [sp]
	str r4, [sp, #4]
	str r5, [sp, #8]
	mov r0, sb
	mov r1, r8
	adds r2, r7, #0
	movs r3, #1
	bl sub_8020874
	adds r4, r0, #0
	ldr r0, [r6, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0805CA04
	str r7, [sp]
	ldr r0, [sp, #0x18]
	str r0, [sp, #4]
	adds r0, r6, #0
	mov r1, sb
	adds r2, r4, #0
	mov r3, r8
	bl sub_805CFE8
	str r7, [sp]
	ldr r1, [sp, #0x18]
	str r1, [sp, #4]
	adds r0, r6, #0
	mov r1, sb
	adds r2, r4, #0
	mov r3, r8
	bl sub_805CC5C
	strh r5, [r6, #0x36]
	adds r0, r6, #0
	ldr r1, _0805CA00 @ =Player_800DB30
	bl SetPlayerCallback
	b _0805CA1C
	.align 2, 0
_0805C9F8: .4byte gPlayers
_0805C9FC: .4byte gStageData
_0805CA00: .4byte Player_800DB30
_0805CA04:
	str r7, [sp]
	ldr r0, [sp, #0x18]
	str r0, [sp, #4]
	adds r0, r6, #0
	mov r1, sb
	adds r2, r4, #0
	mov r3, r8
	bl sub_805CB70
	adds r0, r6, #0
	bl Player_800891C
_0805CA1C:
	ldr r1, [r6, #4]
	movs r2, #1
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _0805CA32
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r6, #4]
	b _0805CB4A
_0805CA32:
	orrs r1, r2
	str r1, [r6, #4]
	b _0805CB4A
_0805CA38:
	adds r0, r6, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r1, [r0, #0x34]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0805CA4A
	b _0805CB4A
_0805CA4A:
	b _0805CB04
_0805CA4C:
	str r6, [sp]
	str r0, [sp, #4]
	mov r0, sb
	mov r1, r8
	adds r2, r7, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _0805CB10
	ldr r0, [r6, #4]
	movs r4, #0x80
	lsls r4, r4, #0x11
	ands r0, r4
	cmp r0, #0
	bne _0805CB4A
	adds r0, r6, #0
	adds r0, #0x4a
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0805CB4A
	adds r0, r6, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0805CB04
	str r6, [sp]
	mov r0, sb
	mov r1, r8
	adds r2, r7, #0
	movs r3, #0
	bl sub_8020CE0
	str r6, [sp]
	mov r0, sb
	mov r1, r8
	adds r2, r7, #0
	movs r3, #1
	bl sub_8020CE0
	ldr r5, _0805CB00 @ =gPlayers
	mov r1, sl
	ldrb r0, [r1]
	lsls r2, r0, #0x1e
	lsrs r1, r2, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r1, r5, #4
	adds r0, r0, r1
	ldr r0, [r0]
	ands r0, r4
	cmp r0, #0
	beq _0805CB4A
	lsrs r1, r2, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r5
	str r0, [sp]
	mov r0, sb
	mov r1, r8
	adds r2, r7, #0
	movs r3, #0
	bl sub_8020CE0
	mov r0, sl
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r5
	str r0, [sp]
	mov r0, sb
	mov r1, r8
	adds r2, r7, #0
	movs r3, #1
	bl sub_8020CE0
	b _0805CB4A
	.align 2, 0
_0805CB00: .4byte gPlayers
_0805CB04:
	adds r0, r6, #0
	bl sub_80044CC
	movs r1, #1
	str r1, [sp, #0x10]
	b _0805CB4A
_0805CB10:
	str r6, [sp]
	str r4, [sp, #4]
	mov r0, sb
	mov r1, r8
	adds r2, r7, #0
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	beq _0805CB4A
	ldr r1, [r6, #4]
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r0, r1
	cmp r0, #0
	bne _0805CB4A
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r1, r0
	cmp r1, #0
	beq _0805CB40
	adds r0, r6, #0
	bl sub_8016F28
_0805CB40:
	adds r0, r6, #0
	bl sub_80044CC
	movs r0, #1
	str r0, [sp, #0x10]
_0805CB4A:
	ldr r0, [sp, #0x14]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x14]
	cmp r0, #1
	bhi _0805CB5A
	b _0805C8D8
_0805CB5A:
	ldr r1, [sp, #0xc]
	str r6, [r1, #0x18]
	ldr r0, [sp, #0x10]
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_805CB70
sub_805CB70: @ 0x0805CB70
	push {r4, r5, lr}
	adds r4, r0, #0
	mov ip, r1
	ldr r0, [sp, #0x10]
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	movs r0, #0xc0
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _0805CB94
	lsls r1, r2, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	lsls r2, r5, #0x18
	b _0805CBF2
_0805CB94:
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r2
	lsls r2, r5, #0x18
	cmp r0, #0
	beq _0805CBF2
	cmp r2, #0
	bge _0805CBBE
	mov r0, ip
	adds r0, #0x2c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r3, r0
	lsls r0, r0, #8
	ldr r1, [r4, #0x10]
	cmp r1, r0
	bge _0805CBD8
	adds r0, r3, #0
	subs r0, #0x10
	b _0805CBEE
_0805CBBE:
	mov r0, ip
	adds r0, #0x2c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r3, r0
	lsls r0, r0, #8
	ldr r1, [r4, #0x10]
	cmp r1, r0
	bge _0805CBD8
	adds r0, r3, #0
	subs r0, #0x10
	b _0805CBEE
_0805CBD8:
	mov r0, ip
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r3, r0
	lsls r0, r0, #8
	cmp r1, r0
	ble _0805CBF2
	adds r0, r3, #0
	adds r0, #0x10
_0805CBEE:
	lsls r0, r0, #8
	str r0, [r4, #0x10]
_0805CBF2:
	cmp r2, #0
	bge _0805CC1C
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	cmp r1, #0
	bge _0805CC00
	rsbs r1, r1, #0
_0805CC00:
	ldr r0, _0805CC18 @ =0x000001FF
	cmp r1, r0
	bgt _0805CC46
	ldrh r1, [r4, #0x18]
	movs r2, #0x18
	ldrsh r0, [r4, r2]
	cmp r0, #0
	ble _0805CC40
	movs r2, #0x80
	lsls r2, r2, #2
	b _0805CC42
	.align 2, 0
_0805CC18: .4byte 0x000001FF
_0805CC1C:
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	cmp r1, #0
	bge _0805CC26
	rsbs r1, r1, #0
_0805CC26:
	ldr r0, _0805CC3C @ =0x000001FF
	cmp r1, r0
	bgt _0805CC46
	ldrh r1, [r4, #0x18]
	movs r2, #0x18
	ldrsh r0, [r4, r2]
	cmp r0, #0
	blt _0805CC40
	movs r2, #0x80
	lsls r2, r2, #2
	b _0805CC42
	.align 2, 0
_0805CC3C: .4byte 0x000001FF
_0805CC40:
	ldr r2, _0805CC58 @ =0xFFFFFE00
_0805CC42:
	adds r0, r1, r2
	strh r0, [r4, #0x18]
_0805CC46:
	ldrh r0, [r4, #0x18]
	strh r0, [r4, #0x1c]
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	rsbs r0, r0, #0
	strh r0, [r4, #0x1c]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805CC58: .4byte 0xFFFFFE00

	thumb_func_start sub_805CC5C
sub_805CC5C: @ 0x0805CC5C
	push {r4, r5, lr}
	adds r4, r0, #0
	mov ip, r1
	ldr r0, [sp, #0x10]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r2
	cmp r0, #0
	beq _0805CC7A
	movs r5, #0x18
	ldrsh r0, [r4, r5]
	cmp r0, #0
	blt _0805CC8C
_0805CC7A:
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r2
	cmp r0, #0
	beq _0805CD1A
	movs r2, #0x1a
	ldrsh r0, [r4, r2]
	cmp r0, #0
	ble _0805CD1A
_0805CC8C:
	ldr r0, [sp, #0xc]
	subs r0, #0x30
	lsls r0, r0, #8
	str r0, [r4, #0x14]
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r4, #0x1a]
	lsls r0, r1, #0x18
	adds r2, r0, #0
	cmp r2, #0
	bge _0805CCBC
	mov r0, ip
	adds r0, #0x2c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r3, r0
	lsls r0, r0, #8
	ldr r1, [r4, #0x10]
	cmp r1, r0
	bge _0805CCD6
	adds r0, r3, #0
	subs r0, #0x10
	b _0805CCEC
_0805CCBC:
	mov r0, ip
	adds r0, #0x2c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r3, r0
	lsls r0, r0, #8
	ldr r1, [r4, #0x10]
	cmp r1, r0
	bge _0805CCD6
	adds r0, r3, #0
	subs r0, #0x10
	b _0805CCEC
_0805CCD6:
	mov r0, ip
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r3, r0
	lsls r0, r0, #8
	cmp r1, r0
	ble _0805CCF0
	adds r0, r3, #0
	adds r0, #0x10
_0805CCEC:
	lsls r0, r0, #8
	str r0, [r4, #0x10]
_0805CCF0:
	asrs r1, r2, #0x18
	cmp r1, #0
	bge _0805CCFE
	movs r3, #0x18
	ldrsh r0, [r4, r3]
	cmp r0, #0
	blt _0805CD0A
_0805CCFE:
	cmp r1, #0
	ble _0805CD1A
	movs r5, #0x18
	ldrsh r0, [r4, r5]
	cmp r0, #0
	ble _0805CD1A
_0805CD0A:
	cmp r2, #0
	bge _0805CD14
	movs r0, #0xc0
	lsls r0, r0, #2
	b _0805CD18
_0805CD14:
	movs r0, #0xfd
	lsls r0, r0, #8
_0805CD18:
	strh r0, [r4, #0x18]
_0805CD1A:
	pop {r4, r5}
	pop {r0}
	bx r0

@ This function is inlined in most places, but seemingly not everywhere?
	thumb_func_start sub_805CD20
sub_805CD20: @ 0x0805CD20
	push {lr}
	lsls r0, r0, #0x18
	movs r1, #0
	cmp r0, #0
	bne _0805CD48
	ldr r0, _0805CD40 @ =gStageData
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0805CD44 @ =gPlayers
	adds r1, r0, r1
	b _0805CD66
	.align 2, 0
_0805CD40: .4byte gStageData
_0805CD44: .4byte gPlayers
_0805CD48:
	movs r0, #0x2b
	ldrb r2, [r0]
	movs r0, #0x1c
	ands r0, r2
	cmp r0, #4
	bne _0805CD66
	lsls r0, r2, #0x1e
	lsrs r0, r0, #0x1e
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r0, _0805CD6C @ =gPlayers
	adds r1, r1, r0
_0805CD66:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0805CD6C: .4byte gPlayers

	thumb_func_start sub_805CD70
sub_805CD70: @ 0x0805CD70
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	mov r8, r1
	mov sl, r3
	movs r7, #0
	ldr r0, [r6]
	asrs r5, r0, #8
	ldr r0, [r6, #4]
	asrs r4, r0, #8
	cmp r2, #0
	beq _0805CD9C
	ldrh r0, [r2]
	lsls r0, r0, #8
	adds r5, r5, r0
	ldrh r0, [r2, #2]
	lsls r0, r0, #8
	adds r4, r4, r0
_0805CD9C:
	str r7, [sp]
	ldr r0, _0805CE10 @ =sub_805217C
	mov sb, r0
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	movs r3, #8
	bl sub_8052394
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	mov r1, sl
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #1
	bne _0805CDE6
	lsls r0, r7, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0805CDE6
	subs r0, r4, #1
	movs r1, #0
	str r1, [sp]
	mov r2, sb
	str r2, [sp, #4]
	adds r1, r5, #0
	movs r2, #1
	movs r3, #8
	bl sub_8052394
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _0805CE00
_0805CDE6:
	mov r0, sl
	strb r7, [r0]
	lsls r0, r7, #0x18
	asrs r1, r0, #0x10
	ldr r0, [r6, #4]
	adds r0, r0, r1
	str r0, [r6, #4]
	mov r2, r8
	cmp r2, #0
	beq _0805CE00
	ldr r0, [r2, #4]
	adds r0, r0, r1
	str r0, [r2, #4]
_0805CE00:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805CE10: .4byte sub_805217C

	thumb_func_start sub_805CE14
sub_805CE14: @ 0x0805CE14
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	mov r8, r1
	mov sl, r3
	movs r7, #0
	ldr r0, [r6]
	asrs r5, r0, #8
	ldr r0, [r6, #4]
	asrs r4, r0, #8
	cmp r2, #0
	beq _0805CE40
	ldrh r0, [r2]
	lsls r0, r0, #8
	adds r5, r5, r0
	ldrh r0, [r2, #2]
	lsls r0, r0, #8
	adds r4, r4, r0
_0805CE40:
	str r7, [sp]
	ldr r0, _0805CEB8 @ =sub_805217C
	mov sb, r0
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_8052394
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	mov r1, sl
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #1
	bne _0805CE8E
	lsls r0, r7, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0805CE8E
	adds r0, r4, #1
	movs r1, #0
	str r1, [sp]
	mov r2, sb
	str r2, [sp, #4]
	adds r1, r5, #0
	movs r2, #1
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_8052394
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _0805CEA8
_0805CE8E:
	mov r0, sl
	strb r7, [r0]
	lsls r0, r7, #0x18
	asrs r1, r0, #0x10
	ldr r0, [r6, #4]
	subs r0, r0, r1
	str r0, [r6, #4]
	mov r2, r8
	cmp r2, #0
	beq _0805CEA8
	ldr r0, [r2, #4]
	subs r0, r0, r1
	str r0, [r2, #4]
_0805CEA8:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805CEB8: .4byte sub_805217C

	thumb_func_start sub_805CEBC
sub_805CEBC: @ 0x0805CEBC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov r8, r0
	mov sb, r1
	adds r4, r2, #0
	adds r5, r3, #0
	ldr r6, [sp, #0x20]
	ldr r7, [sp, #0x24]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _0805CF2C @ =Task_40_805C198
	ldr r2, _0805CF30 @ =0x00004040
	ldr r1, _0805CF34 @ =TaskDestructor_805D09C
	str r1, [sp]
	movs r1, #0x40
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r2, #0
	movs r1, #0x3c
	strh r1, [r0, #0xa]
	mov r1, r8
	str r1, [r0, #0xc]
	mov r1, sb
	str r1, [r0, #0x10]
	strh r4, [r0, #6]
	strh r5, [r0, #8]
	str r7, [r0, #0x14]
	strb r6, [r0, #4]
	strb r2, [r0, #5]
	bl sub_805C138
	cmp r6, #0
	bne _0805CF1C
	movs r0, #0x8a      @ SE_POOF
	bl m4aSongNumStart
_0805CF1C:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805CF2C: .4byte Task_40_805C198
_0805CF30: .4byte 0x00004040
_0805CF34: .4byte TaskDestructor_805D09C

	thumb_func_start sub_805CF38
sub_805CF38: @ 0x0805CF38
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r7, r1, #0
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r4, r3, #0x10
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _0805CF76
	ldr r0, _0805CF80 @ =Task_14_805C03C
	ldr r2, _0805CF84 @ =0x00004040
	ldr r1, _0805CF88 @ =TaskDestructor_805C03C
	str r1, [sp]
	movs r1, #0x14
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	ldr r1, [sp, #0x18]
	str r1, [r0, #0x10]
	str r6, [r0, #8]
	str r7, [r0, #0xc]
	strh r5, [r0, #2]
	strh r4, [r0, #4]
_0805CF76:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805CF80: .4byte Task_14_805C03C
_0805CF84: .4byte 0x00004040
_0805CF88: .4byte TaskDestructor_805C03C

    thumb_func_start TaskDestructor_805C03C
TaskDestructor_805C03C:
    bx lr
    .align 2 , 0

	thumb_func_start sub_805CF90
sub_805CF90: @ 0x0805CF90
	push {r4, r5, lr}
	adds r4, r1, #0
	adds r5, r2, #0
	ldr r2, _0805CFDC @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	ldr r1, [r2, #4]
	subs r4, r4, r1
	adds r0, #0x80
	movs r1, #0xf8
	lsls r1, r1, #1
	cmp r0, r1
	bhi _0805CFBA
	adds r0, r4, #0
	adds r0, #0x80
	cmp r0, #0
	blt _0805CFBA
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r4, r0
	ble _0805CFE0
_0805CFBA:
	adds r1, r5, #0
	adds r1, #0x80
	movs r0, #0xf8
	lsls r0, r0, #1
	cmp r1, r0
	bhi _0805CFD6
	adds r0, r3, #0
	adds r0, #0x80
	cmp r0, #0
	blt _0805CFD6
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r3, r0
	ble _0805CFE0
_0805CFD6:
	movs r0, #0
	b _0805CFE2
	.align 2, 0
_0805CFDC: .4byte gCamera
_0805CFE0:
	movs r0, #1
_0805CFE2:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_805CFE8
sub_805CFE8: @ 0x0805CFE8
	push {r4, lr}
	adds r1, r0, #0
	ldr r0, [sp, #0xc]
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r2
	cmp r0, #0
	beq _0805D004
	movs r4, #0x1a
	ldrsh r0, [r1, r4]
	cmp r0, #0
	blt _0805D016
_0805D004:
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _0805D052
	movs r2, #0x1a
	ldrsh r0, [r1, r2]
	cmp r0, #0
	ble _0805D052
_0805D016:
	ldr r0, [sp, #8]
	subs r0, #0x30
	lsls r0, r0, #8
	str r0, [r1, #0x14]
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r1, #0x1a]
	lsls r0, r3, #0x18
	asrs r2, r0, #0x18
	adds r3, r0, #0
	cmp r2, #0
	bge _0805D036
	movs r4, #0x18
	ldrsh r0, [r1, r4]
	cmp r0, #0
	blt _0805D042
_0805D036:
	cmp r2, #0
	ble _0805D052
	movs r2, #0x18
	ldrsh r0, [r1, r2]
	cmp r0, #0
	ble _0805D052
_0805D042:
	cmp r3, #0
	bge _0805D04C
	movs r0, #0xfd
	lsls r0, r0, #8
	b _0805D050
_0805D04C:
	movs r0, #0xc0
	lsls r0, r0, #2
_0805D050:
	strh r0, [r1, #0x18]
_0805D052:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_805D058
sub_805D058: @ 0x0805D058
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x18
	ldr r2, [r0, #0xc]
	asrs r2, r2, #8
	ldrh r1, [r0, #6]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _0805D098 @ =gCamera
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #0x10]
	asrs r1, r1, #8
	ldrh r0, [r0, #8]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r4, r0, #0
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0805D098: .4byte gCamera

	thumb_func_start TaskDestructor_805D09C
TaskDestructor_805D09C: @ 0x0805D09C
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	bl VramFree
	pop {r0}
	bx r0

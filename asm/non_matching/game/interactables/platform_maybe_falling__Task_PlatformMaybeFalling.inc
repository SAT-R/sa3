
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	ldr r0, _08042CD8 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]       @ r2 = offset
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	str r0, [sp, #4]        @ sp04 = platform
	ldr r3, [r0]            @ r3 = me
	ldrb r0, [r0, #0xa]
	lsls r0, r0, #3
	ldr r4, [sp, #4]
	ldrh r1, [r4, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]        @ sp08 = worldX
	ldrb r0, [r3, #1]
	lsls r0, r0, #3
	ldrh r1, [r4, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]      @ sp0C = worldY
	ldr r0, _08042CDC @ =gStageData
	ldr r0, [r0, #0x1c]
	ldr r1, _08042CE0 @ =0x000001FF
	ands r0, r1
	ldr r6, _08042CE4 @ =0x030000B2
	adds r1, r2, r6
	strh r0, [r1]
	movs r1, #0
	ldr r7, _08042CE8 @ =0x030000B4
	adds r7, r7, r2
	mov sl, r7              @ sl = &platform->unkB4
	ldr r0, _08042CEC @ =0x030000BC
	adds r0, r2, r0
	str r0, [sp, #0x10]     @ sp10 = &platform->unkBC
_08042C76_loop:
	ldr r3, [sp, #4]
	adds r3, #0xb2
	lsls r2, r1, #0x10
	asrs r1, r2, #0x10
	lsls r0, r1, #7
	ldrh r3, [r3]
	adds r3, r0, r3
	ldr r4, _08042CE0 @ =0x000001FF
	adds r0, r4, #0
	lsls r1, r1, #1
	mov r7, sl
	adds r6, r7, r1         @ r6 = &unkB4[i]
	ldrh r4, [r6]
	mov sb, r4              @ sb = unkB4[i]
	ldr r7, [sp, #0x10]     @ r7 = sp10 = &platform->unkBC
	adds r4, r7, r1
	ldrh r1, [r4]
	mov r8, r1              @ r8 = platform->unkBC[i]
	ands r3, r0
	str r2, [sp, #0x18]     @ sp18 = i << 16
	cmp r3, #0x3f
	bgt _08042CF4
	lsls r2, r3, #3
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r2, r3
	lsls r0, r0, #1
	ldr r7, _08042CF0 @ =gSineTable
	adds r0, r0, r7
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r3, #0x16
	muls r0, r3, r0
	asrs r1, r0, #0xe
	movs r7, #4
	rsbs r7, r7, #0
	adds r0, r7, #0
	subs r0, r0, r1
	strh r0, [r4]
	lsls r0, r2, #1
	ldr r1, _08042CF0 @ =gSineTable
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r3, r0
	asrs r1, r0, #0xe
	subs r3, #0x76
	adds r0, r3, #0
	b _08042D42
	.align 2, 0
_08042CD8: .4byte gCurTask
_08042CDC: .4byte gStageData
_08042CE0: .4byte 0x000001FF
_08042CE4: .4byte 0x030000B2
_08042CE8: .4byte 0x030000B4
_08042CEC: .4byte 0x030000BC
_08042CF0: .4byte gSineTable
_08042CF4:
	cmp r3, #0xff
	bgt _08042D02
	adds r0, r3, #0
	subs r0, #0xa0
	strh r0, [r6]
	movs r0, #0x12
	b _08042D5C
_08042D02:
	ldr r0, _08042D48 @ =0x0000013F
	cmp r3, r0
	bgt _08042D50
	adds r0, r3, #0
	subs r0, #0xc0
	lsls r0, r0, #0x13
	lsrs r2, r0, #0x10
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r2, r7
	lsls r0, r0, #1
	ldr r1, _08042D4C @ =gSineTable
	adds r0, r0, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	movs r7, #0x16
	muls r0, r7, r0
	asrs r1, r0, #0xe
	movs r3, #4
	rsbs r3, r3, #0
	adds r0, r3, #0
	subs r0, r0, r1
	strh r0, [r4]
	lsls r0, r2, #1
	ldr r4, _08042D4C @ =gSineTable
	adds r0, r0, r4
	movs r7, #0
	ldrsh r0, [r0, r7]
	movs r1, #0x16
	muls r0, r1, r0
	asrs r1, r0, #0xe
	movs r0, #0x60
_08042D42:
	subs r0, r0, r1
	strh r0, [r6]
	b _08042D5E
	.align 2, 0
_08042D48: .4byte 0x0000013F
_08042D4C: .4byte gSineTable
_08042D50:
	movs r2, #0xd0
	lsls r2, r2, #1
	adds r0, r2, #0
	subs r0, r0, r3
	strh r0, [r6]
	ldr r0, _08042DC4 @ =0x0000FFE6
_08042D5C:
	strh r0, [r4]
_08042D5E:
	ldr r0, [sp, #4]
	adds r0, #0xb1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08042D76
	ldr r3, [sp, #0x18]
	asrs r1, r3, #0xf           @ r1 = i * 2
	add r1, sl                  @ r1 = sl = &platform->unkB4
	movs r4, #0
	ldrsh r0, [r1, r4]
	rsbs r0, r0, #0
	strh r0, [r1]
_08042D76:
	ldr r6, [sp, #0x18]
	asrs r2, r6, #0x10          @ r2 = i
	lsls r3, r2, #1             @ r3 = i * 2
	mov r7, sl                  @ r7 = sl = &platform->unkB4
	adds r0, r7, r3
	ldrh r1, [r0]
	mov r4, sb
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r6, [sp, #0x10]         @ r6 = sp10 = &platform->unkBC
	adds r4, r6, r3
	ldrh r1, [r4]
	mov r7, r8
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, #0xc
	ldr r1, [sp, #4]
	adds r7, r1, r0     @ r7 = platform->sprites[i]
	movs r1, #0
	str r3, [sp, #0x14] @ sp14 = i * 2
_08042DB4_loop_inner:
	lsls r0, r1, #0x10
	adds r6, r0, #0
	cmp r6, #0
	bne _08042DCC
	ldr r0, _08042DC8 @ =gStageData
	ldrb r1, [r0, #6]
	b _08042DD6
	.align 2, 0
_08042DC4: .4byte 0x0000FFE6
_08042DC8: .4byte gStageData
_08042DCC:
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_08042DD6:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08042EA4 @ =gPlayers
	adds r5, r0, r1
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _08042DFA
	cmp r1, #8
	beq _08042DFA
	cmp r1, #0x10
	bne _08042E70_inner_continue
_08042DFA:
	adds r0, r5, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _08042E70_inner_continue
	ldr r0, [r5, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08042E32
	ldr r0, [r5, #0x6c]
	cmp r0, r7
	bne _08042E32
	mov r2, sb
	lsls r1, r2, #0x10
	asrs r1, r1, #8
	ldr r0, [r5, #0x10]
	subs r0, r0, r1
	str r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r1, r3
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #8
	subs r1, r1, r0
	str r1, [r5, #0x14]
_08042E32:
	ldr r0, [sp, #0x14]
	add r0, sl              @ r0 = sl = &platform->unkB4[i]
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r2, [sp, #8]        @ r2 = sp08 = worldX
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	movs r3, #0
	ldrsh r2, [r4, r3]
	ldr r3, [sp, #0xc]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r2, r2, r0
	movs r0, #0
	str r0, [sp]
	adds r0, r7, #0
	adds r3, r5, #0
	bl sub_8020950
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	cmp r0, #0
	beq _08042E70_inner_continue
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r5, #0x14]
	adds r0, r0, r1
	str r0, [r5, #0x14]
_08042E70_inner_continue:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r6, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08042DB4_loop_inner
	ldr r2, [sp, #0x18]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r2, r3
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	bgt _08042E90
	b _08042C76_loop
_08042E90:
	bl sub_8042F10
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08042EA4: .4byte gPlayers

.syntax divided

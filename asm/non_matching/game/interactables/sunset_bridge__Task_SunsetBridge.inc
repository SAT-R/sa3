
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	ldr r0, _08044E98 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r2, r0     @ r6 = bridge
	ldr r0, [r6]
	str r0, [sp, #0xc]  @ sp0C = me
	ldr r1, _08044E9C @ =0x03000080
	adds r1, r1, r2
	mov sb, r1          @ sb = s
	ldr r3, [r6, #0xc]
	lsls r3, r3, #8
	lsrs r3, r3, #0x10
	ldr r1, [r6, #0x10]
	lsls r1, r1, #8
	lsrs r1, r1, #0x10
	ldr r0, _08044EA0 @ =0x03000068
	adds r2, r2, r0
	ldrh r2, [r2]
	str r2, [sp, #0x10] @ sp10 = numSegments
	movs r0, #0
	str r0, [r6, #0x7c]
	movs r2, #0         @ r2 = i
	lsls r1, r1, #0x10
	str r1, [sp, #0x14] @ sp14 = worldY
	lsls r3, r3, #0x10
	str r3, [sp, #0x1c] @ sp1C = worldX
_08044E18:
	lsls r0, r2, #2
	adds r1, r6, #0
	adds r1, #0x74
	adds r1, r1, r0
	ldr r5, [r1]            @ r5 = p = bridge->ps[i]
	movs r1, #0
	mov r8, r1              @ r8 = r1 = someBool = FALSE
	movs r7, #0             @ r7 = j
	ldrh r0, [r6, #0x14]
	adds r0, #0xc
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10      @ r4 = bridge->left + (ANIM_SUNSET_BRIDGE_WIDTH / 2)
	adds r2, #1
	str r2, [sp, #0x18]     @ sp18 = i
	ldr r2, [sp, #0x10]
	cmp r8, r2
	bhs _08044EB8
_08044E3A:
	lsls r1, r7, #2
	adds r0, r6, #0
	adds r0, #0x28
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r6, #0x70]
	muls r0, r1, r0
	lsls r0, r0, #8
	lsls r4, r4, #0x10
	asrs r1, r4, #0x10      @ r1 = r4 = segmentX
	ldr r3, [sp, #0x14]     @ r3 = sp14 = worldY
	asrs r2, r3, #0x10
	asrs r0, r0, #0x10      @ r0 = I(bridge->unk28[j] * bridge->unk70)
	adds r2, r2, r0
	str r5, [sp]
	movs r0, #0
	str r0, [sp, #4]
	mov r0, sb
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	beq _08044EA4
	movs r1, #0x1a
	ldrsh r0, [r5, r1]
	cmp r0, #0
	blt _08044EA4
_mid_section:
	ldr r0, [r5, #4]
	movs r1, #0x20
	orrs r0, r1
	subs r1, #0x25
	ands r0, r1
	str r0, [r5, #4]
	mov r2, sb          @ r2 = sb = s
	str r2, [r5, #0x6c]
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_80450D8
	movs r3, #1
	mov r8, r3
	ldr r0, [r6, #0x7c]
	cmp r0, #0
	bne _08044EB8
	str r5, [r6, #0x7c]
	b _08044EB8
	.align 2, 0
_08044E98: .4byte gCurTask
_08044E9C: .4byte 0x03000080
_08044EA0: .4byte 0x03000068
_08044EA4:
	movs r1, #0xc0
	lsls r1, r1, #0xd
	adds r0, r4, r1
	lsrs r4, r0, #0x10
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r2, [sp, #0x10]
	cmp r7, r2
	blo _08044E3A
_08044EB8:
	mov r3, r8
	cmp r3, #0
	bne _08044ED8
	ldr r1, [r5, #4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08044ED8
	ldr r0, [r5, #0x6c]
	cmp r0, sb
	bne _08044ED8
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r5, #4]        @ p->moveState &= ~MOVESTATE_COLLIDING_ENT;
	str r3, [r5, #0x6c]     @ p->sprColliding = NULL;
_08044ED8:
	ldr r1, [sp, #0x18]     @ r1 = sp18 = i
	lsls r0, r1, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #1
	bls _08044E18
__08044EE2:
	ldr r2, [sp, #0x1c]     @ r2 = sp1C = worldX << 16
	asrs r0, r2, #0x10      @ r0 = worldX
	ldr r3, [sp, #0x14]
	asrs r1, r3, #0x10      @ r1 = sp14 = worldY << 16
	ldr r3, _08044F14 @ =gCamera
	ldr r2, [r3]
	subs r2, r0, r2         @ r2 = worldX - gCamera.x
	ldr r3, [r3, #4]
	subs r3, r1, r3         @ r3 = worldY - gCamera.y
	bl sub_802C140
	cmp r0, #0
	bne _08044F5C
	movs r1, #0
	ldr r5, _08044F18 @ =gPlayers
_08044F00:
	lsls r0, r1, #0x10
	adds r4, r0, #0
	cmp r4, #0
	beq _08044F1C
	mov r0, sl
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08044F20
	.align 2, 0
_08044F14: .4byte gCamera
_08044F18: .4byte gPlayers
_08044F1C:
	ldr r0, _08044F54 @ =gStageData
	ldrb r1, [r0, #6]
_08044F20:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r5
	mov sl, r0
	mov r0, sb
	mov r1, sl
	bl sub_80213B0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08044F00
	ldrb r0, [r6, #8]
	ldr r2, [sp, #0xc]
	strb r0, [r2]
	ldr r0, _08044F58 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08044F62
	.align 2, 0
_08044F54: .4byte gStageData
_08044F58: .4byte gCurTask
_08044F5C:
	adds r0, r6, #0
	bl sub_8044F74
_08044F62:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0


.syntax divided

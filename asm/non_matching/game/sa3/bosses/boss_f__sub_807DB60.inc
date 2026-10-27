
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	mov r8, r0
	movs r0, #0
	str r0, [sp, #4]
_0807DB72:
	movs r2, #0
	mov r1, r8
	strb r2, [r1, #0x11]
	ldr r3, [sp, #4]
	lsls r5, r3, #2
	adds r0, r5, r3
	lsls r0, r0, #3
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r0, r1
	mov r2, r8
	adds r6, r2, r0
	ldr r4, _0807DBEC @ =gUnknown_08E2ED18
	ldrb r0, [r6, #0x18]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r2, [r0]
	mov r0, r8
	adds r1, r3, #0
	bl _call_via_r2
	ldrb r0, [r6, #0x18]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	ldr r0, _0807DBF0 @ =sub_807E214
	str r5, [sp, #0x10]
	cmp r1, r0
	bne _0807DBC2
	ldrb r0, [r6, #0x1b]
	cmp r0, #0
	beq _0807DBC2
	mov r3, r8
	ldr r0, [r3, #0x20]
	ldr r1, [r0]
	ldr r0, _0807DBF4 @ =PlayerCB_80819BC
	cmp r1, r0
	beq _0807DBC2
	movs r0, #0
	strb r0, [r6, #0x1b]
_0807DBC2:
	ldrb r0, [r6, #0x13]
	ldr r1, [sp, #4]
	lsls r1, r1, #1
	str r1, [sp, #0xc]
	ldr r2, [sp, #4]
	adds r2, #1
	str r2, [sp, #8]
	cmp r0, #0
	beq _0807DC92
	mov r3, r8
	ldrb r0, [r3]
	cmp r0, #0
	beq _0807DC92
	ldrb r0, [r3, #0x11]
	cmp r0, #0
	beq _0807DBF8
	mov r0, r8
	ldr r1, [sp, #4]
	bl sub_807C518
	b _0807DC92
	.align 2, 0
_0807DBEC: .4byte gUnknown_08E2ED18
_0807DBF0: .4byte sub_807E214
_0807DBF4: .4byte PlayerCB_80819BC
_0807DBF8:
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #4]
	adds r0, r1, r2
	lsls r0, r0, #3
	mov r3, r8
	adds r7, r0, r3
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r7, r7, r0
	ldr r1, [r6]
	mov sl, r1
	ldr r6, [r6, #4]
	ldr r0, _0807DC70 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r5, r0, r2
	movs r3, #0
	mov sb, r3
_0807DC20:
	mov r1, sb
	lsls r0, r1, #2
	adds r1, r5, #0
	adds r1, #0x20
	adds r1, r1, r0
	ldr r4, [r1]
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _0807DC84
	ldr r0, [r4, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0807DC74
	adds r0, r5, #0
	adds r0, #0x7c
	ldr r1, [r4, #0x6c]
	cmp r1, r0
	beq _0807DC5C
	adds r0, #0x28
	cmp r1, r0
	beq _0807DC5C
	adds r0, #0x28
	cmp r1, r0
	beq _0807DC5C
	adds r0, #0x28
	cmp r1, r0
	bne _0807DC84
_0807DC5C:
	str r4, [sp]
	adds r0, r7, #0
	mov r2, sl
	asrs r1, r2, #8
	asrs r2, r6, #8
	movs r3, #0
	bl sub_8020CE0
	b _0807DC84
	.align 2, 0
_0807DC70: .4byte gCurTask
_0807DC74:
	str r4, [sp]
	adds r0, r7, #0
	mov r3, sl
	asrs r1, r3, #8
	asrs r2, r6, #8
	movs r3, #0
	bl sub_8020CE0
_0807DC84:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #1
	bls _0807DC20
_0807DC92:
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #4]
	adds r0, r1, r2
	lsls r0, r0, #3
	movs r3, #0x9e
	lsls r3, r3, #2
	adds r0, r0, r3
	add r0, r8
	ldr r3, [sp, #0xc]
	adds r1, r3, r2
	lsls r1, r1, #2
	movs r2, #0xd0
	lsls r2, r2, #2
	adds r1, r1, r2
	add r1, r8
	movs r2, #0
	ldr r3, [sp, #4]
	bl sub_807F334
	ldr r3, [sp, #8]
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	cmp r0, #1
	bhi _0807DCC6
	b _0807DB72
_0807DCC6:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

.syntax divided

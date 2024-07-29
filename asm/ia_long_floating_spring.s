.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start Task_804C22C
Task_804C22C: @ 0x0804C22C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	mov sl, r1
	adds r4, r2, #0
	adds r5, r3, #0
	ldr r6, [sp, #0x28]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _0804C358 @ =sub_804C364
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0804C35C @ =sub_804C6D4
	str r1, [sp]
	movs r1, #0x60
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	mov r8, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	mov r1, r8
	adds r7, r1, r0
	str r7, [sp, #4]
	strh r4, [r7, #4]
	strh r5, [r7, #6]
	mov r3, sl
	str r3, [r7]
	ldrb r0, [r3]
	strb r0, [r7, #0xa]
	strb r6, [r7, #0xb]
	ldrb r0, [r3]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	lsls r6, r0, #8
	str r6, [r7, #0xc]
	ldrb r0, [r3, #1]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	lsls r4, r0, #8
	str r4, [r7, #0x10]
	asrs r1, r6, #8
	strh r1, [r7, #0x24]
	asrs r2, r4, #8
	strh r2, [r7, #0x26]
	mov r5, sb
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl sub_804DC38
	strh r0, [r7, #0x28]
	ldr r0, _0804C360 @ =0x0300002B
	add r8, r0
	mov r1, r8
	strb r5, [r1]
	mov r3, sl
	movs r2, #4
	ldrsb r2, [r3, r2]
	lsls r2, r2, #0xb
	adds r2, r4, r2
	ldrb r3, [r3, #6]
	lsls r3, r3, #0xa
	mov r5, sl
	movs r0, #3
	ldrsb r0, [r5, r0]
	lsls r0, r0, #0xb
	adds r0, r6, r0
	ldrb r1, [r5, #5]
	lsls r1, r1, #0xa
	str r3, [r7, #0x14]
	str r1, [r7, #0x18]
	adds r0, r0, r1
	str r0, [r7, #0x1c]
	adds r2, r2, r3
	str r2, [r7, #0x20]
	movs r2, #0
	ldrb r0, [r5, #7]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0804C308
	movs r3, #1
_0804C2EC:
	lsls r0, r2, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #4
	bgt _0804C308
	mov r5, sl
	ldrb r0, [r5, #7]
	asrs r0, r1
	ands r0, r3
	cmp r0, #0
	beq _0804C2EC
_0804C308:
	adds r1, r2, #1
	ldr r0, [sp, #4]
	adds r0, #0x2a
	strb r1, [r0]
	mov r1, sl
	ldrb r0, [r1, #7]
	lsrs r0, r0, #6
	adds r1, r7, #0
	adds r1, #0x5c
	strb r0, [r1]
	mov r3, sl
	ldrb r0, [r3, #7]
	lsrs r0, r0, #5
	movs r1, #1
	ands r0, r1
	adds r2, r7, #0
	adds r2, #0x5d
	strb r0, [r2]
	adds r0, r7, #0
	adds r0, #0x2c
	asrs r1, r6, #8
	strh r1, [r0, #0x10]
	asrs r1, r4, #8
	strh r1, [r0, #0x12]
	movs r5, #2
	rsbs r5, r5, #0
	adds r1, r5, #0
	strb r1, [r3]
	ldrb r1, [r2]
	bl sub_804C608
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804C358: .4byte sub_804C364
_0804C35C: .4byte sub_804C6D4
_0804C360: .4byte 0x0300002B

	thumb_func_start sub_804C364
sub_804C364: @ 0x0804C364
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	ldr r0, _0804C398 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	mov sb, r6
	adds r0, #0x2c
	adds r7, r1, r0
	adds r0, r6, #0
	bl sub_804DD68
	movs r1, #0
_0804C388:
	lsls r0, r1, #0x10
	mov r8, r0
	cmp r0, #0
	bne _0804C3A0
	ldr r0, _0804C39C @ =gStageData
	ldrb r1, [r0, #6]
	b _0804C3AA
	.align 2, 0
_0804C398: .4byte gCurTask
_0804C39C: .4byte gStageData
_0804C3A0:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0804C3AA:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0804C460 @ =gPlayers
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	beq _0804C3C4
	b _0804C59E
_0804C3C4:
	movs r5, #0
	movs r0, #0x30
	ldrsh r1, [r4, r0]
	cmp r1, #0xa8
	beq _0804C406
	cmp r1, #0xb8
	beq _0804C406
	cmp r1, #0xcc
	beq _0804C406
	cmp r1, #0xd5
	bne _0804C3E0
	ldrh r0, [r4, #0x36]
	cmp r0, #1
	beq _0804C406
_0804C3E0:
	cmp r1, #0xe6
	beq _0804C406
	cmp r1, #0xfe
	beq _0804C406
	cmp r1, #0xff
	beq _0804C406
	movs r0, #0x81
	lsls r0, r0, #1
	cmp r1, r0
	beq _0804C406
	adds r0, #1
	cmp r1, r0
	beq _0804C406
	adds r0, #1
	cmp r1, r0
	beq _0804C406
	subs r0, #4
	cmp r1, r0
	bne _0804C422
_0804C406:
	ldr r1, [r6, #0xc]
	asrs r1, r1, #8
	ldr r2, [r6, #0x10]
	asrs r2, r2, #8
	str r4, [sp]
	movs r0, #1
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _0804C422
	movs r5, #1
_0804C422:
	cmp r5, #0
	bne _0804C43E
	ldr r1, [r6, #0xc]
	asrs r1, r1, #8
	ldr r2, [r6, #0x10]
	asrs r2, r2, #8
	str r4, [sp]
	str r5, [sp, #4]
	adds r0, r7, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _0804C49C
_0804C43E:
	ldrb r2, [r7, #0x1a]
	cmp r2, #0
	bne _0804C450
	ldr r0, [r7, #8]
	ldr r1, _0804C464 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r7, #8]
	adds r0, r2, #1
	strb r0, [r7, #0x1a]
_0804C450:
	cmp r5, #0
	beq _0804C46C
	adds r0, r4, #0
	ldr r1, _0804C468 @ =sub_800EA74
	bl SetPlayerCallback
	b _0804C474
	.align 2, 0
_0804C460: .4byte gPlayers
_0804C464: .4byte 0xFFFFBFFF
_0804C468: .4byte sub_800EA74
_0804C46C:
	adds r0, r4, #0
	ldr r1, _0804C498 @ =sub_800E9A4
	bl SetPlayerCallback
_0804C474:
	mov r0, sb
	adds r0, #0x5d
	ldrb r1, [r0]
	lsls r1, r1, #4
	subs r0, #1
	ldrb r2, [r0]
	movs r0, #0xf
	ands r0, r2
	orrs r1, r0
	adds r0, r4, #0
	adds r0, #0xa4
	strb r1, [r0]
	adds r0, r4, #0
	movs r1, #0x94
	bl sub_8004E98
	b _0804C59E
	.align 2, 0
_0804C498: .4byte sub_800E9A4
_0804C49C:
	ldr r1, [r6, #0xc]
	asrs r1, r1, #8
	ldr r2, [r6, #0x10]
	asrs r2, r2, #8
	str r4, [sp]
	str r5, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	adds r0, r7, #0
	movs r3, #0
	bl sub_8020874
	adds r5, r0, #0
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r5
	cmp r0, #0
	beq _0804C516
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0804C4D8
	ldr r1, [r4, #0x14]
	ldr r0, _0804C4D4 @ =0xFFFFFC00
	b _0804C4DE
	.align 2, 0
_0804C4D4: .4byte 0xFFFFFC00
_0804C4D8:
	ldr r1, [r4, #0x14]
	movs r0, #0x80
	lsls r0, r0, #3
_0804C4DE:
	adds r1, r1, r0
	lsls r0, r5, #0x18
	asrs r0, r0, #0x10
	adds r1, r1, r0
	str r1, [r4, #0x14]
	movs r0, #0
	strh r0, [r4, #0x1a]
	ldrh r1, [r4, #0x30]
	adds r0, r1, #0
	subs r0, #0xee
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0804C506
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf4
	beq _0804C506
	cmp r0, #0xf5
	bne _0804C516
_0804C506:
	adds r0, r4, #0
	bl sub_8012FE0
	movs r0, #0x18
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	bl sub_800DAF4
_0804C516:
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r5
	cmp r0, #0
	beq _0804C59E
	ldr r0, [r4, #4]
	ldr r1, _0804C554 @ =0x00040004
	ands r0, r1
	subs r1, #4
	cmp r0, r1
	bne _0804C558
	ldr r1, [r6, #0xc]
	asrs r1, r1, #8
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	subs r2, r1, r0
	adds r0, r2, #0
	cmp r2, #0
	bge _0804C53E
	rsbs r0, r2, #0
_0804C53E:
	cmp r0, #0xc
	bgt _0804C564
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _0804C564
	adds r0, r4, #0
	bl sub_8008E38
	b _0804C564
	.align 2, 0
_0804C554: .4byte 0x00040004
_0804C558:
	lsls r1, r5, #0x10
	asrs r1, r1, #0x18
	lsls r1, r1, #8
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
_0804C564:
	adds r0, r4, #0
	bl sub_801246C
	cmp r0, #0
	bge _0804C580
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _0804C59A
	adds r0, r4, #0
	bl sub_8008E38
	b _0804C59A
_0804C580:
	adds r0, r4, #0
	bl sub_8012550
	cmp r0, #0
	bge _0804C59A
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _0804C59A
	adds r0, r4, #0
	bl sub_8008E38
_0804C59A:
	movs r0, #0
	strh r0, [r4, #0x18]
_0804C59E:
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, r8
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _0804C5AE
	b _0804C388
_0804C5AE:
	ldr r0, [r6, #0xc]
	asrs r2, r0, #8
	ldr r3, [r6, #0x10]
	asrs r3, r3, #8
	movs r1, #0x24
	ldrsh r0, [r6, r1]
	movs r4, #0x26
	ldrsh r1, [r6, r4]
	ldr r4, [r6]
	bl sub_802C140
	cmp r0, #0
	bne _0804C5DC
	ldrb r0, [r6, #0xa]
	strb r0, [r4]
	ldr r0, _0804C5D8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0804C5FA
	.align 2, 0
_0804C5D8: .4byte gCurTask
_0804C5DC:
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_804DDD4
	ldrb r0, [r7, #0x1a]
	cmp r0, #1
	bne _0804C5FA
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0804C5FA
	movs r0, #0
	strb r0, [r7, #0x1a]
_0804C5FA:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_804C608
sub_804C608: @ 0x0804C608
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	ldr r0, _0804C628 @ =gStageData
	ldrb r0, [r0, #9]
	cmp r0, #3
	bne _0804C62C
	movs r0, #0x18
	bl VramMalloc
	str r0, [r4]
	movs r1, #0
	movs r0, #0xf6
	lsls r0, r0, #2
	b _0804C638
	.align 2, 0
_0804C628: .4byte gStageData
_0804C62C:
	movs r0, #0x18
	bl VramMalloc
	str r0, [r4]
	movs r1, #0
	ldr r0, _0804C678 @ =0x000003AB
_0804C638:
	strh r0, [r4, #0xc]
	strb r1, [r4, #0x1a]
	movs r2, #0
	movs r1, #0
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	str r0, [r4, #0x28]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r4, #8]
	cmp r5, #0
	beq _0804C66C
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r0, r1
	str r0, [r4, #8]
_0804C66C:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804C678: .4byte 0x000003AB

	thumb_func_start CreateEntity_LongFloatingSpringA
CreateEntity_LongFloatingSpringA: @ 0x0804C67C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #0
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl Task_804C22C
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_LongFloatingSpringB
CreateEntity_LongFloatingSpringB: @ 0x0804C6A8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #3
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl Task_804C22C
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_804C6D4
sub_804C6D4: @ 0x0804C6D4
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x2c]
	bl VramFree
	pop {r0}
	bx r0

.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start Task_Toggle_PlayerLayer
Task_Toggle_PlayerLayer: @ 0x0802E328
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0802E374 @ =gCurTask
	mov sl, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r7, [r6]
	ldrb r5, [r6, #8]
	ldrh r0, [r6, #4]
	ldrh r1, [r6, #6]
	lsls r2, r5, #3
	lsls r0, r0, #8
	adds r2, r2, r0
	mov sb, r2
	ldrb r0, [r7, #1]
	lsls r0, r0, #3
	lsls r1, r1, #8
	adds r0, r0, r1
	mov r8, r0
	mov r0, sb
	mov r1, r8
	bl IsPointInScreenRect
	cmp r0, #0
	bne _0802E378
	strb r5, [r7]
	mov r1, sl
	ldr r0, [r1]
	bl TaskDestroy
	b _0802E436
	.align 2, 0
_0802E374: .4byte gCurTask
_0802E378:
	movs r3, #0
	ldr r0, _0802E39C @ =gStageData
	mov sl, r0
	ldr r1, _0802E3A0 @ =sub_800DDD0
	mov ip, r1
	ldr r5, _0802E3A4 @ =gPlayers
_0802E384:
	mov r1, sl
	ldrb r0, [r1, #3]
	cmp r0, #7
	bne _0802E390
	cmp r3, #0
	bne _0802E42C
_0802E390:
	cmp r3, #0
	bne _0802E3A8
	mov r0, sl
	ldrb r1, [r0, #6]
	b _0802E3B2
	.align 2, 0
_0802E39C: .4byte gStageData
_0802E3A0: .4byte sub_800DDD0
_0802E3A4: .4byte gPlayers
_0802E3A8:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0802E3B2:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r5
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _0802E3D4
	cmp r1, #8
	beq _0802E3D4
	cmp r1, #0x10
	bne _0802E42C
_0802E3D4:
	ldr r0, [r4]
	cmp r0, ip
	beq _0802E42C
	ldr r0, [r4, #0x10]
	asrs r1, r0, #8
	cmp sb, r1
	bgt _0802E42C
	ldrb r0, [r7, #5]
	lsls r0, r0, #3
	add r0, sb
	cmp r0, r1
	blt _0802E42C
	ldr r0, [r4, #0x14]
	asrs r1, r0, #8
	cmp r8, r1
	bgt _0802E42C
	ldrb r0, [r7, #6]
	lsls r0, r0, #3
	add r0, r8
	cmp r0, r1
	blt _0802E42C
	ldrb r1, [r6, #9]
	cmp r1, #1
	beq _0802E414
	cmp r1, #1
	bgt _0802E40E
	cmp r1, #0
	beq _0802E414
	b _0802E42C
_0802E40E:
	cmp r1, #2
	beq _0802E41C
	b _0802E42C
_0802E414:
	adds r0, r4, #0
	adds r0, #0x27
	strb r1, [r0]
	b _0802E42C
_0802E41C:
	movs r2, #0
	adds r1, r4, #0
	adds r1, #0x27
	ldrb r0, [r1]
	cmp r0, #0
	bne _0802E42A
	movs r2, #1
_0802E42A:
	strb r2, [r1]
_0802E42C:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	bls _0802E384
_0802E436:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
    
.if 0
.endif

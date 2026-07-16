.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start Task_806D268
Task_806D268: @ 0x0806D268
	push {r4, r5, lr}
	ldr r0, _0806D288 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x2c]
	ldrb r0, [r0]
	cmp r0, #3
	bne _0806D28C
	adds r0, r2, #0
	bl TaskDestroy
	b _0806D2E0
	.align 2, 0
_0806D288: .4byte gCurTask
_0806D28C:
	adds r0, r4, #0
	bl sub_806D6C4
	ldr r0, [r4, #0x2c]
	ldrb r0, [r0]
	cmp r0, #2
	bne _0806D2E0
	movs r1, #0
	ldr r5, _0806D2E8 @ =gPlayers
	ldr r3, _0806D2EC @ =0xFFFFFB1F
	movs r2, #0xb3
	lsls r2, r2, #1
_0806D2A4:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r5
	ldr r0, [r0, #0x10]
	asrs r0, r0, #8
	adds r0, r0, r3
	cmp r0, r2
	bhi _0806D2E0
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0806D2A4
	movs r0, #0x32
	bl sub_80299D4
	movs r0, #0
	strh r0, [r4, #0x34]
	movs r0, #1
	strh r0, [r4, #0x36]
	ldr r0, _0806D2F0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806D2F4 @ =sub_806E99C
	str r0, [r1, #8]
_0806D2E0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806D2E8: .4byte gPlayers
_0806D2EC: .4byte 0xFFFFFB1F
_0806D2F0: .4byte gCurTask
_0806D2F4: .4byte sub_806E99C

	thumb_func_start sub_806D2F8
sub_806D2F8: @ 0x0806D2F8
	push {r4, r5, r6, r7, lr}
	ldr r7, _0806D354 @ =gCurTask
	ldr r0, [r7]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r6, r0
	adds r0, r5, #0
	bl sub_806E330
	adds r0, r5, #0
	bl sub_806DB78
	adds r0, r5, #0
	movs r1, #0
	bl sub_806D840
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r5, #0
	movs r1, #1
	bl sub_806D840
	adds r4, r4, r0
	lsls r4, r4, #0x18
	cmp r4, #0
	beq _0806D336
	adds r0, r5, #0
	bl sub_806DA20
_0806D336:
	ldr r1, _0806D358 @ =0x03000030
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0806D378
	ldr r1, _0806D35C @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _0806D36C
	ldrb r0, [r1, #6]
	cmp r0, #0
	beq _0806D364
	ldr r1, [r7]
	ldr r0, _0806D360 @ =sub_806E9C0
	b _0806D376
	.align 2, 0
_0806D354: .4byte gCurTask
_0806D358: .4byte 0x03000030
_0806D35C: .4byte gStageData
_0806D360: .4byte sub_806E9C0
_0806D364:
	movs r0, #1
	movs r1, #0
	bl sub_8027674
_0806D36C:
	adds r0, r5, #0
	bl sub_806EAA0
	ldr r1, [r7]
	ldr r0, _0806D384 @ =sub_806E9F0
_0806D376:
	str r0, [r1, #8]
_0806D378:
	adds r0, r5, #0
	bl sub_806D6C4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806D384: .4byte sub_806E9F0

	thumb_func_start sub_806D388
sub_806D388: @ 0x0806D388
	push {r4, r5, lr}
	sub sp, #0x10
	ldr r0, _0806D3A8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, [r5, #0x40]
	ldrh r4, [r5, #0x34]
	cmp r4, #0
	beq _0806D3AC
	cmp r4, #1
	beq _0806D3E8
	b _0806D3FC
	.align 2, 0
_0806D3A8: .4byte gCurTask
_0806D3AC:
	ldr r0, [r5, #0x38]
	cmp r0, #0
	beq _0806D3B8
	bl VramFree
	str r4, [r5, #0x38]
_0806D3B8:
	ldr r0, [r5]
	asrs r0, r0, #8
	str r0, [sp]
	ldr r0, _0806D3E0 @ =gCamera
	ldr r1, [r0, #0x14]
	adds r0, r1, #0
	subs r0, #0x32
	str r0, [sp, #4]
	ldr r0, [r5]
	asrs r0, r0, #8
	str r0, [sp, #8]
	subs r1, #0x25
	str r1, [sp, #0xc]
	ldr r1, _0806D3E4 @ =sub_807A37C
	mov r0, sp
	bl sub_8078E34
	movs r0, #1
	b _0806D3FA
	.align 2, 0
_0806D3E0: .4byte gCamera
_0806D3E4: .4byte sub_807A37C
_0806D3E8:
	ldr r1, [r0, #4]
	movs r0, #0x80
	lsls r0, r0, #0x14
	ands r1, r0
	cmp r1, #0
	bne _0806D3FC
	ldr r0, [r5, #0x2c]
	strb r1, [r0]
	movs r0, #0x64
_0806D3FA:
	strh r0, [r5, #0x34]
_0806D3FC:
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_806D404
sub_806D404: @ 0x0806D404
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, [r6, #0x38]
	mov r8, r0
	movs r7, #0
	movs r1, #0
	mov sb, r1
	movs r3, #0x80
	lsls r3, r3, #5
	mov sl, r3
_0806D422:
	lsls r4, r7, #3
	subs r2, r4, r7
	lsls r2, r2, #3
	adds r3, r2, #0
	adds r3, #0x48
	adds r3, r6, r3
	adds r5, r3, #0
	adds r5, #8
	adds r0, r6, #0
	adds r0, #0x48
	adds r0, r0, r2
	ldr r1, [r6]
	str r1, [r0]
	adds r0, r6, #0
	adds r0, #0x4c
	adds r0, r0, r2
	ldr r1, [r6, #4]
	str r1, [r0]
	mov r0, r8
	str r0, [r3, #8]
	ldr r0, _0806D55C @ =gUnknown_080D57CC
	adds r4, r4, r0
	ldrb r0, [r4, #3]
	adds r0, #2
	lsls r0, r0, #6
	strh r0, [r5, #0x14]
	ldrh r0, [r4]
	strh r0, [r5, #0xc]
	ldrb r0, [r4, #2]
	strb r0, [r5, #0x1a]
	mov r1, sb
	strh r1, [r5, #0x16]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	movs r3, #0
	strb r3, [r5, #0x1f]
	strh r1, [r5, #0x10]
	strh r1, [r5, #0x12]
	mov r0, sl
	str r0, [r5, #8]
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _0806D486
	movs r0, #0x80
	lsls r0, r0, #0xc
	mov r1, sl
	orrs r0, r1
	str r0, [r5, #8]
_0806D486:
	ldrb r0, [r4, #5]
	cmp r0, #0
	beq _0806D496
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r5, #8]
_0806D496:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	ldrb r0, [r4, #6]
	lsls r0, r0, #5
	add r8, r0
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0xf
	bls _0806D422
	ldr r3, [r6, #0x3c]
	mov r8, r3
	movs r7, #0
	movs r4, #0
	movs r0, #0x8f
	lsls r0, r0, #3
	mov sb, r0
	adds r1, r6, #0
	add r1, sb
	mov sl, r1
_0806D4C0:
	lsls r2, r7, #3
	movs r3, #0xf2
	lsls r3, r3, #2 @ 0x3C8
	adds r0, r6, r3
	adds r0, r0, r2
	str r4, [r0]
	adds r1, r6, r2
	adds r3, #4
	adds r0, r1, r3
	strb r4, [r0]
	adds r3, #1
	adds r0, r1, r3
	movs r3, #1
	strb r3, [r0]
	movs r3, #0x84
	lsls r3, r3, #3 @ 0x420
	adds r0, r6, r3
	adds r0, r0, r2
	str r4, [r0]
	adds r3, #4
	adds r0, r1, r3
	strb r4, [r0]
	ldr r0, _0806D560 @ =0x00000425
	adds r1, r1, r0
	movs r3, #1
	strb r3, [r1]
	subs r2, r2, r7
	lsls r2, r2, #3
	mov r0, sb
	adds r1, r2, r0
	adds r1, r6, r1
	adds r5, r1, #0
	adds r5, #8
	mov r3, sl
	adds r0, r3, r2
	str r4, [r0]
	ldr r3, _0806D564 @ =0x0000047C
	adds r0, r6, r3
	adds r0, r0, r2
	str r4, [r0]
	mov r0, r8
	str r0, [r1, #8]
	movs r0, #0xa8
	lsls r0, r0, #3
	strh r0, [r5, #0x14]
	subs r0, #0x7b
	strh r0, [r5, #0xc]
	strb r4, [r5, #0x1a]
	strh r4, [r5, #0x16]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	strb r4, [r5, #0x1f]
	strh r4, [r5, #0x10]
	strh r4, [r5, #0x12]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r5, #8]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	movs r1, #0xa0
	add r8, r1
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0xa
	bls _0806D4C0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806D55C: .4byte gUnknown_080D57CC
_0806D560: .4byte 0x00000425
_0806D564: .4byte 0x0000047C

	thumb_func_start sub_806D568
sub_806D568: @ 0x0806D568
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov ip, r0
	ldr r1, [r0]
	str r1, [r0, #0x48]
	ldr r0, [r0, #4]
	mov r2, ip
	str r0, [r2, #0x4c]
	adds r3, r0, #0
	mov r0, ip
	adds r0, #0x80
	str r1, [r0]
	adds r0, #4
	str r3, [r0]
	movs r7, #0xb8
	add r7, ip
	mov sb, r7
	ldr r2, _0806D6B8 @ =0xFFFFDB00
	adds r0, r1, r2
	str r0, [r7]
	movs r7, #0xbc
	add r7, ip
	mov sl, r7
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r3, r2
	str r0, [r7]
	movs r7, #0xf0
	add r7, ip
	mov r8, r7
	movs r2, #0x94
	lsls r2, r2, #6
	adds r1, r1, r2
	str r1, [r7]
	mov r6, ip
	adds r6, #0xf4
	str r0, [r6]
	movs r4, #0x94
	lsls r4, r4, #1
	add r4, ip
	mov r7, sb
	ldr r0, [r7]
	str r0, [r4]
	movs r5, #0x96
	lsls r5, r5, #1
	add r5, ip
	mov r1, sl
	ldr r0, [r1]
	mov r2, ip
	ldr r1, [r2, #0x10]
	adds r0, r0, r1
	str r0, [r5]
	movs r2, #0xb0
	lsls r2, r2, #1
	add r2, ip
	mov r7, r8
	ldr r0, [r7]
	str r0, [r2]
	movs r3, #0xb2
	lsls r3, r3, #1
	add r3, ip
	ldr r0, [r6]
	mov r7, ip
	ldr r1, [r7, #0x10]
	adds r0, r0, r1
	str r0, [r3]
	movs r1, #0xcc
	lsls r1, r1, #1
	add r1, ip
	ldr r0, [r4]
	str r0, [r1]
	movs r1, #0xce
	lsls r1, r1, #1
	add r1, ip
	ldr r0, [r5]
	str r0, [r1]
	movs r1, #0xe8
	lsls r1, r1, #1
	add r1, ip
	ldr r0, [r2]
	str r0, [r1]
	movs r1, #0xea
	lsls r1, r1, #1
	add r1, ip
	ldr r0, [r3]
	str r0, [r1]
	ldr r1, [r7, #0x10]
	ldr r2, _0806D6BC @ =0xFFFFE400
	adds r0, r1, r2
	cmp r0, #0
	bge _0806D62A
	ldr r7, _0806D6C0 @ =0xFFFFE403
	adds r0, r1, r7
_0806D62A:
	asrs r0, r0, #2
	adds r5, r0, #1
	mov r1, sl
	ldr r0, [r1]
	movs r2, #0xc0
	lsls r2, r2, #4
	adds r3, r0, r2
	movs r4, #0
	mov r7, r8
	str r7, [sp]
	str r6, [sp, #4]
	movs r0, #0x48
	add r0, ip
	mov r8, r0
	movs r1, #0x4c
	add r1, ip
	mov sl, r1
	mov ip, r8
	mov r7, sb
	mov r6, sl
_0806D652:
	adds r1, r4, #0
	adds r1, #8
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	mov r1, ip
	adds r2, r1, r0
	ldr r1, [r7]
	str r1, [r2]
	adds r0, r6, r0
	str r3, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r3, r3, r5
	cmp r4, #3
	bls _0806D652
	ldr r2, [sp, #4]
	ldr r0, [r2]
	movs r7, #0xc0
	lsls r7, r7, #4
	adds r3, r0, r7
	movs r4, #0
	mov ip, r8
	ldr r7, [sp]
	mov r6, sl
_0806D686:
	adds r1, r4, #0
	adds r1, #0xc
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	mov r1, ip
	adds r2, r1, r0
	ldr r1, [r7]
	str r1, [r2]
	adds r0, r6, r0
	str r3, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r3, r3, r5
	cmp r4, #3
	bls _0806D686
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806D6B8: .4byte 0xFFFFDB00
_0806D6BC: .4byte 0xFFFFE400
_0806D6C0: .4byte 0xFFFFE403

	thumb_func_start sub_806D6C4
sub_806D6C4: @ 0x0806D6C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	adds r0, #0x27
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806D736
	movs r4, #0
	movs r0, #0x48
	adds r0, r0, r7
	mov sb, r0
	movs r1, #0x4c
	adds r1, r1, r7
	mov r8, r1
	ldr r6, _0806D804 @ =gCamera
_0806D6EA:
	lsls r2, r4, #3
	subs r2, r2, r4
	lsls r2, r2, #3
	adds r0, r2, r7
	adds r5, r0, #0
	adds r5, #0x50
	mov r1, sb
	adds r0, r1, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, [r6]
	subs r0, r0, r1
	strh r0, [r5, #0x10]
	add r2, r8
	ldr r0, [r2]
	asrs r0, r0, #8
	ldr r1, [r6, #4]
	subs r0, r0, r1
	strh r0, [r5, #0x12]
	cmp r4, #1
	beq _0806D720
	cmp r4, #1
	blt _0806D726
	cmp r4, #7
	bgt _0806D726
	cmp r4, #6
	blt _0806D726
_0806D720:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
_0806D726:
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xf
	bls _0806D6EA
_0806D736:
	movs r4, #0
_0806D738:
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r1, r0, #3
	movs r2, #0x8f
	lsls r2, r2, #3
	adds r0, r7, r2
	adds r6, r0, r1
	ldr r0, [r6]
	cmp r0, #0
	beq _0806D760
	adds r0, r1, r7
	movs r1, #0x90
	lsls r1, r1, #3
	adds r5, r0, r1
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _0806D760
	str r0, [r6]
_0806D760:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xa
	bls _0806D738
	movs r4, #0
	movs r2, #0x8f
	lsls r2, r2, #3
	adds r2, r2, r7
	mov sl, r2
_0806D774:
	movs r3, #0
	lsls r0, r4, #3
	mov r8, r0
	adds r4, #1
	mov sb, r4
_0806D77E:
	movs r0, #0x58
	muls r0, r3, r0
	mov r2, r8
	adds r1, r2, r0
	movs r2, #0xf2
	lsls r2, r2, #2
	adds r0, r7, r2
	adds r6, r0, r1
	ldr r2, [r6]
	cmp r2, #0
	beq _0806D7DE
	adds r4, r7, r1
	movs r0, #0xf3
	lsls r0, r0, #2
	adds r4, r4, r0
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0x8f
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r0, r7, r0
	adds r5, r0, #0
	adds r5, #8
	asrs r0, r2, #8
	ldr r2, _0806D804 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r5, #0x10]
	ldr r1, [r2, #4]
	movs r0, #0xc0
	subs r0, r0, r1
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	str r3, [sp]
	bl DisplaySprite
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	add r0, sl
	ldr r0, [r0]
	ldr r3, [sp]
	cmp r0, #0
	bne _0806D7DE
	str r0, [r6]
_0806D7DE:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	bls _0806D77E
	mov r1, sb
	lsls r0, r1, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xa
	bls _0806D774
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806D804: .4byte gCamera

	thumb_func_start sub_806D808
sub_806D808: @ 0x0806D808
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r2, r0, #0
	adds r2, #0x88
	cmp r1, #1
	beq _0806D82C
	cmp r1, #1
	bgt _0806D820
	cmp r1, #0
	beq _0806D82A
	b _0806D832
_0806D820:
	cmp r1, #2
	beq _0806D82C
	cmp r1, #3
	beq _0806D82C
	b _0806D832
_0806D82A:
	movs r1, #0
_0806D82C:
	ldr r0, _0806D83C @ =0x000004C6
	strh r0, [r2, #0xc]
	strb r1, [r2, #0x1a]
_0806D832:
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	pop {r0}
	bx r0
	.align 2, 0
_0806D83C: .4byte 0x000004C6

	thumb_func_start sub_806D840
sub_806D840: @ 0x0806D840
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	lsls r1, r1, #0x18
	movs r0, #0
	mov sl, r0
	lsrs r1, r1, #0x16
	adds r0, r6, #0
	adds r0, #0x40
	adds r0, r0, r1
	ldr r0, [r0]
	mov r8, r0
	adds r7, r6, #0
	adds r7, #0x50
	ldr r4, [r6, #0x48]
	ldr r5, [r6, #0x4c]
	adds r0, r6, #0
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806D87C
	mov r0, r8
	bl sub_802C080
	cmp r0, #0
	beq _0806D880
_0806D87C:
	movs r0, #0
	b _0806DA0E
_0806D880:
	adds r0, r6, #0
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	bne _0806D95C
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_8004D68
	mov r0, r8
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r2, #0xf
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #1
	beq _0806D8CC
	ldr r3, _0806D954 @ =gStageData
	ldrb r0, [r3, #3]
	cmp r0, #5
	bne _0806D8DA
	ldr r0, [r6, #0x40]
	adds r0, #0x2a
	ldrb r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #1
	beq _0806D8C6
	ldr r0, [r6, #0x44]
	adds r0, #0x2a
	ldrb r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #1
	bne _0806D8DA
_0806D8C6:
	ldrb r0, [r3, #6]
	cmp r0, #0
	bne _0806D8DA
_0806D8CC:
	adds r0, r7, #0
	bl sub_807A1DC
	cmp r0, #1
	bne _0806D8DA
	movs r1, #1
	mov sl, r1
_0806D8DA:
	asrs r4, r4, #8
	asrs r5, r5, #8
	mov r2, r8
	str r2, [sp]
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #0
	bl sub_8020E3C
	cmp r0, #1
	bne _0806D96C
	movs r0, #1
	mov sl, r0
	mov r1, r8
	str r1, [sp]
	str r0, [sp, #4]
	movs r2, #0
	mov sb, r2
	str r2, [sp, #8]
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #0
	bl sub_8020874
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r1
	cmp r0, #0
	beq _0806D942
	mov r2, r8
	ldr r0, [r2, #0x14]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r0, r2
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	adds r0, r0, r1
	mov r1, r8
	str r0, [r1, #0x14]
	ldr r1, _0806D958 @ =0x0000B0FF
	cmp r0, r1
	ble _0806D93C
	movs r0, #0xb1
	lsls r0, r0, #8
	mov r2, r8
	str r0, [r2, #0x14]
_0806D93C:
	mov r1, sb
	mov r0, r8
	strh r1, [r0, #0x1a]
_0806D942:
	movs r2, #0x32
	ldrsh r0, [r6, r2]
	cmp r0, #0
	bne _0806D96C
	mov r0, r8
	bl sub_80044CC
	b _0806D96C
	.align 2, 0
_0806D954: .4byte gStageData
_0806D958: .4byte 0x0000B0FF
_0806D95C:
	asrs r1, r4, #8
	asrs r2, r5, #8
	mov r0, r8
	str r0, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl sub_8020CE0
_0806D96C:
	movs r5, #0
_0806D96E:
	movs r4, #0
_0806D970:
	lsls r1, r5, #3
	movs r0, #0x58
	muls r0, r4, r0
	adds r1, r1, r0
	movs r2, #0xf2
	lsls r2, r2, #2
	adds r0, r6, r2
	adds r0, r0, r1
	ldr r2, [r0]
	cmp r2, #0
	beq _0806D9B6
	adds r0, r6, r1
	movs r1, #0xf3
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r6
	movs r1, #0x90
	lsls r1, r1, #3
	adds r7, r0, r1
	asrs r1, r2, #8
	mov r2, r8
	str r2, [sp]
	adds r0, r7, #0
	movs r2, #0xc0
	movs r3, #1
	bl sub_8020CE0
	cmp r0, #0
	beq _0806D9B6
	movs r5, #0xb
	movs r4, #2
_0806D9B6:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0806D970
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xa
	bls _0806D96E
	movs r5, #0
_0806D9CC:
	cmp r5, #1
	beq _0806DA02
	lsls r2, r5, #3
	subs r2, r2, r5
	lsls r2, r2, #3
	adds r0, r2, r6
	adds r7, r0, #0
	adds r7, #0x50
	adds r0, r6, #0
	adds r0, #0x48
	adds r0, r0, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	adds r0, r6, #0
	adds r0, #0x4c
	adds r0, r0, r2
	ldr r2, [r0]
	asrs r2, r2, #8
	mov r0, r8
	str r0, [sp]
	adds r0, r7, #0
	movs r3, #1
	bl sub_8020CE0
	cmp r0, #0
	beq _0806DA02
	movs r5, #0x10
_0806DA02:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xf
	bls _0806D9CC
	mov r0, sl
_0806DA0E:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_806DA20
sub_806DA20: @ 0x0806DA20
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x30
	ldrb r1, [r2]
	cmp r1, #0
	beq _0806DACC
	movs r3, #0x32
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bne _0806DACC
	subs r1, #1
	strb r1, [r2]
	ldr r0, _0806DA54 @ =gStageData
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _0806DA58
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bne _0806DA66
	movs r0, #0x33
	bl sub_80299D4
	b _0806DA66
	.align 2, 0
_0806DA54: .4byte gStageData
_0806DA58:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bne _0806DA66
	movs r0, #0x33
	bl sub_80299D4
_0806DA66:
	movs r0, #0xeb
	bl m4aSongNumStart
	bl sub_807A468
	adds r0, r4, #0
	movs r1, #2
	bl sub_806D808
	ldr r0, _0806DAB8 @ =0x000004C7
	movs r1, #0
	movs r2, #0x7a
	movs r3, #0
	bl sub_8078DB0
	movs r0, #0x99
	lsls r0, r0, #3
	movs r1, #0
	movs r2, #0x7a
	movs r3, #0
	bl sub_8078DB0
	movs r0, #0x7a
	strh r0, [r4, #0x32]
	ldr r1, _0806DABC @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _0806DACC
	ldrb r0, [r1, #6]
	cmp r0, #0
	bne _0806DAC0
	adds r1, r4, #0
	adds r1, #0x30
	ldrb r0, [r1]
	cmp r0, #0
	beq _0806DACC
	adds r1, r0, #0
	movs r0, #3
	bl sub_8027674
	b _0806DACC
	.align 2, 0
_0806DAB8: .4byte 0x000004C7
_0806DABC: .4byte gStageData
_0806DAC0:
	adds r0, r4, #0
	adds r0, #0x30
	ldrb r1, [r0]
	movs r0, #4
	bl sub_8027674
_0806DACC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806DAD4
sub_0806DAD4: @ 0x0806DAD4
	push {r4, r5, r6, r7, lr}
	ldr r2, _0806DB1C @ =gStageData
	adds r1, r2, #0
	adds r1, #0x88
	ldr r1, [r1]
	ldrh r5, [r1, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r5, r1
	ldrb r1, [r0, #2]
	movs r3, #0x7f
	ands r3, r1
	ldrb r4, [r0, #3]
	ldrb r0, [r0, #4]
	lsls r0, r0, #8
	orrs r4, r0
	mov ip, r2
	cmp r3, #1
	beq _0806DB24
	cmp r3, #1
	blt _0806DB64
	cmp r3, #4
	bgt _0806DB64
	cmp r3, #3
	blt _0806DB64
	ldr r1, _0806DB20 @ =0x03000030
	adds r0, r5, r1
	ldrb r1, [r0]
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	beq _0806DB64
	adds r0, r6, #0
	bl sub_806DA20
	b _0806DB64
	.align 2, 0
_0806DB1C: .4byte gStageData
_0806DB20: .4byte 0x03000030
_0806DB24:
	ldr r0, _0806DB6C @ =0x03000030
	adds r1, r5, r0
	movs r0, #0
	strb r0, [r1]
	strh r0, [r6, #0x34]
	strh r3, [r6, #0x36]
	strh r0, [r6, #0x20]
	movs r3, #0
	ldr r7, _0806DB70 @ =sub_806E9F0
	ldr r1, _0806DB74 @ =0x03000040
	adds r5, r5, r1
	movs r6, #0x80
	lsls r6, r6, #0x14
	movs r4, #0
_0806DB40:
	lsls r2, r3, #2
	adds r2, r5, r2
	ldr r1, [r2]
	ldr r0, [r1, #4]
	orrs r0, r6
	str r0, [r1, #4]
	strh r4, [r1, #0x1c]
	ldr r0, [r2]
	strh r4, [r0, #0x18]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	bls _0806DB40
	mov r0, ip
	adds r0, #0x88
	ldr r0, [r0]
	str r7, [r0, #8]
_0806DB64:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806DB6C: .4byte 0x03000030
_0806DB70: .4byte sub_806E9F0
_0806DB74: .4byte 0x03000040

	thumb_func_start sub_806DB78
sub_806DB78: @ 0x0806DB78
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldrh r1, [r4, #0x20]
	cmp r1, #0xa
	beq _0806DBC0
	cmp r1, #0xa
	bgt _0806DB90
	cmp r1, #0
	beq _0806DBA0
	b _0806DD28
_0806DB90:
	cmp r1, #0x64
	beq _0806DC30
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp r1, r0
	bne _0806DB9E
	b _0806DD24
_0806DB9E:
	b _0806DD28
_0806DBA0:
	movs r2, #0
	movs r0, #0x8f
	lsls r0, r0, #3
	adds r1, r4, r0
	movs r3, #0x64
_0806DBAA:
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r0, r1, r0
	str r3, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xa
	bls _0806DBAA
	b _0806DD28
_0806DBC0:
	movs r2, #0
	movs r3, #4
	movs r1, #0x24
	adds r1, r1, r4
	mov ip, r1
	movs r5, #0x25
	adds r5, r5, r4
	mov r8, r5
	movs r5, #0x8f
	lsls r5, r5, #3
	adds r6, r4, r5
	movs r7, #0xff
_0806DBD8:
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r1, r6, r0
	str r3, [r1]
	adds r0, r0, r5
	adds r0, r4, r0
	adds r1, r0, #0
	adds r1, #8
	ldrb r0, [r1, #0x1b]
	orrs r0, r7
	strb r0, [r1, #0x1b]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r0, r3, #4
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r2, #0xa
	bls _0806DBD8
	ldr r0, [r4]
	ldr r7, _0806DC2C @ =0xFFFFDB00
	adds r1, r0, r7
	str r1, [r4, #0x18]
	movs r1, #0x94
	lsls r1, r1, #6
	adds r0, r0, r1
	str r0, [r4, #0x1c]
	movs r0, #0
	mov r2, ip
	strb r0, [r2]
	mov r5, r8
	strb r0, [r5]
	movs r0, #4
	strh r0, [r4, #0x22]
	movs r0, #0x8a
	lsls r0, r0, #2
	bl m4aSongNumStart
	movs r0, #0x64
	b _0806DD26
	.align 2, 0
_0806DC2C: .4byte 0xFFFFDB00
_0806DC30:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0806DC4A
	ldr r7, _0806DD10 @ =0xFFFFFD00
	adds r0, r0, r7
	str r0, [r4, #0x18]
	asrs r0, r0, #8
	ldr r1, _0806DD14 @ =gCamera
	ldr r1, [r1, #0x18]
	cmp r0, r1
	bgt _0806DC4A
	movs r0, #0
	str r0, [r4, #0x18]
_0806DC4A:
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0806DC66
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x1c]
	asrs r0, r0, #8
	ldr r1, _0806DD14 @ =gCamera
	ldr r1, [r1, #0x1c]
	cmp r0, r1
	blt _0806DC66
	movs r0, #0
	str r0, [r4, #0x1c]
_0806DC66:
	ldrh r0, [r4, #0x22]
	subs r0, #1
	strh r0, [r4, #0x22]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0806DCF6
	adds r6, r4, #0
	adds r6, #0x24
	ldrb r2, [r6]
	lsls r5, r2, #3
	subs r0, r5, r2
	lsls r0, r0, #3
	movs r3, #0x8f
	lsls r3, r3, #3
	adds r1, r4, r3
	adds r1, r1, r0
	movs r2, #1
	str r2, [r1]
	adds r0, r0, r3
	adds r0, r4, r0
	adds r1, r0, #0
	adds r1, #8
	subs r2, #2
	adds r3, r2, #0
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldr r1, [r4, #0x18]
	cmp r1, #0
	beq _0806DCBC
	movs r7, #0xf2
	lsls r7, r7, #2
	adds r0, r4, r7
	adds r0, r0, r5
	str r1, [r0]
	adds r1, r4, r5
	ldrb r2, [r6]
	adds r7, #4
	adds r0, r1, r7
	strb r2, [r0]
	ldr r0, _0806DD18 @ =0x000003CD
	adds r1, r1, r0
	movs r0, #0x14
	strb r0, [r1]
_0806DCBC:
	ldr r1, [r4, #0x1c]
	cmp r1, #0
	beq _0806DCDE
	movs r2, #0x84
	lsls r2, r2, #3
	adds r0, r4, r2
	adds r0, r0, r5
	str r1, [r0]
	adds r1, r4, r5
	ldrb r2, [r6]
	ldr r5, _0806DD1C @ =0x00000424
	adds r0, r1, r5
	strb r2, [r0]
	ldr r7, _0806DD20 @ =0x00000425
	adds r1, r1, r7
	movs r0, #0x14
	strb r0, [r1]
_0806DCDE:
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	ands r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xa
	bls _0806DCF2
	movs r0, #0
	strb r0, [r6]
_0806DCF2:
	movs r0, #4
	strh r0, [r4, #0x22]
_0806DCF6:
	movs r0, #0x8a
	lsls r0, r0, #2
	bl m4aSongNumStartOrContinue
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _0806DD28
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	bne _0806DD28
	movs r0, #0xfa
	lsls r0, r0, #2
	b _0806DD26
	.align 2, 0
_0806DD10: .4byte 0xFFFFFD00
_0806DD14: .4byte gCamera
_0806DD18: .4byte 0x000003CD
_0806DD1C: .4byte 0x00000424
_0806DD20: .4byte 0x00000425
_0806DD24:
	movs r0, #0
_0806DD26:
	strh r0, [r4, #0x20]
_0806DD28:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_806DD34
sub_806DD34: @ 0x0806DD34
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrh r1, [r4, #0x34]
	cmp r1, #0x6e
	beq _0806DE34
	cmp r1, #0x6e
	bgt _0806DD58
	cmp r1, #0xa
	beq _0806DD8A
	cmp r1, #0xa
	bgt _0806DD52
	cmp r1, #0
	beq _0806DD76
	b _0806DEC2
_0806DD52:
	cmp r1, #0x64
	beq _0806DE18
	b _0806DEC2
_0806DD58:
	cmp r1, #0xd2
	bne _0806DD5E
	b _0806DE82
_0806DD5E:
	cmp r1, #0xd2
	bgt _0806DD6A
	cmp r1, #0xc8
	bne _0806DD68
	b _0806DE64
_0806DD68:
	b _0806DEC2
_0806DD6A:
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp r1, r0
	bne _0806DD74
	b _0806DEA2
_0806DD74:
	b _0806DEC2
_0806DD76:
	movs r0, #1
	strh r0, [r4, #0x36]
	movs r0, #0xa
	strh r0, [r4, #0x34]
	str r1, [r4, #8]
	str r1, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r4, #0x14]
	b _0806DEC2
_0806DD8A:
	ldr r0, [r4, #0xc]
	adds r0, #0x20
	str r0, [r4, #0xc]
	ldr r1, _0806DE04 @ =0x000003FF
	cmp r0, r1
	ble _0806DD9C
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r4, #0xc]
_0806DD9C:
	ldr r0, [r4, #4]
	ldr r1, [r4, #0xc]
	adds r0, r0, r1
	str r0, [r4, #4]
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r1, _0806DE08 @ =0x00007FFF
	cmp r0, r1
	ble _0806DDB8
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r4, #0x10]
_0806DDB8:
	movs r3, #0
	ldr r2, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r2, r1
	ldr r1, [r4, #4]
	adds r1, r1, r0
	ldr r0, _0806DE0C @ =0x0000B4FF
	cmp r1, r0
	ble _0806DDD6
	movs r0, #0xad
	lsls r0, r0, #8
	subs r1, r0, r2
	str r1, [r4, #4]
	movs r3, #1
_0806DDD6:
	cmp r3, #1
	bne _0806DEC2
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x91
	str r1, [sp]
	movs r1, #0x20
	movs r2, #0
	bl CreateScreenShake
	ldr r0, _0806DE10 @ =0xFFFFFE00
	str r0, [r4, #0x14]
	movs r0, #0x3c
	strh r0, [r4, #0x36]
	movs r0, #0x64
	strh r0, [r4, #0x34]
	ldr r0, _0806DE14 @ =0x00000227
	bl m4aSongNumStart
	b _0806DEC2
	.align 2, 0
_0806DE04: .4byte 0x000003FF
_0806DE08: .4byte 0x00007FFF
_0806DE0C: .4byte 0x0000B4FF
_0806DE10: .4byte 0xFFFFFE00
_0806DE14: .4byte 0x00000227
_0806DE18:
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r1, #0x90
	lsls r1, r1, #7
	cmp r0, r1
	bgt _0806DE52
	ldr r0, _0806DE30 @ =0xFFFFFE40
	str r0, [r4, #0x14]
	movs r0, #0x6e
	b _0806DE50
	.align 2, 0
_0806DE30: .4byte 0xFFFFFE40
_0806DE34:
	ldr r0, [r4, #0x14]
	adds r0, #0x10
	str r0, [r4, #0x14]
	ldr r1, [r4, #0x10]
	adds r1, r1, r0
	str r1, [r4, #0x10]
	ldr r0, _0806DE60 @ =0x000047FF
	cmp r1, r0
	ble _0806DE52
	adds r0, #1
	str r0, [r4, #0x10]
	movs r0, #0x3c
	strh r0, [r4, #0x36]
	movs r0, #0xc8
_0806DE50:
	strh r0, [r4, #0x34]
_0806DE52:
	ldr r1, [r4, #0x10]
	movs r0, #0xad
	lsls r0, r0, #8
	subs r0, r0, r1
	str r0, [r4, #4]
	b _0806DEC2
	.align 2, 0
_0806DE60: .4byte 0x000047FF
_0806DE64:
	ldrh r0, [r4, #0x36]
	subs r0, #1
	strh r0, [r4, #0x36]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0806DEC2
	adds r0, r4, #0
	movs r1, #1
	bl sub_806D808
	movs r0, #0x3c
	strh r0, [r4, #0x36]
	movs r0, #0xd2
	strh r0, [r4, #0x34]
	b _0806DEC2
_0806DE82:
	ldrh r0, [r4, #0x36]
	subs r0, #1
	strh r0, [r4, #0x36]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0806DEC2
	adds r0, r4, #0
	movs r1, #0
	bl sub_806D808
	movs r0, #0x3c
	strh r0, [r4, #0x36]
	movs r0, #0xfa
	lsls r0, r0, #2
	strh r0, [r4, #0x34]
	b _0806DEC2
_0806DEA2:
	ldrh r0, [r4, #0x36]
	subs r0, #1
	strh r0, [r4, #0x36]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bne _0806DEC2
	movs r0, #1
	strh r0, [r4, #0x36]
	strh r1, [r4, #0x34]
	bl sub_807A4A8
	ldr r0, _0806DED0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806DED4 @ =sub_806D2F8
	str r0, [r1, #8]
_0806DEC2:
	adds r0, r4, #0
	bl sub_806D568
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806DED0: .4byte gCurTask
_0806DED4: .4byte sub_806D2F8

	thumb_func_start sub_806DED8
sub_806DED8: @ 0x0806DED8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	adds r4, r0, #0
	add r0, sp, #0x10
	ldr r1, _0806DF14 @ =gUnknown_080D5870
	ldm r1!, {r2, r3, r5}
	stm r0!, {r2, r3, r5}
	ldr r1, [r1]
	str r1, [r0]
	ldrh r1, [r4, #0x34]
	cmp r1, #0x6e
	bne _0806DEFA
	b _0806E138
_0806DEFA:
	cmp r1, #0x6e
	bgt _0806DF24
	cmp r1, #0xa
	beq _0806DF7C
	cmp r1, #0xa
	bgt _0806DF18
	cmp r1, #0
	beq _0806DF48
	movs r0, #0x80
	adds r0, r0, r4
	mov r8, r0
	b _0806DFAC
	.align 2, 0
_0806DF14: .4byte gUnknown_080D5870
_0806DF18:
	cmp r1, #0x64
	beq _0806DFBC
	movs r1, #0x80
	adds r1, r1, r4
	mov r8, r1
	b _0806DFAC
_0806DF24:
	cmp r1, #0xd2
	bne _0806DF2A
	b _0806E274
_0806DF2A:
	cmp r1, #0xd2
	bgt _0806DF3C
	cmp r1, #0xc8
	bne _0806DF34
	b _0806E1FC
_0806DF34:
	movs r2, #0x80
	adds r2, r2, r4
	mov r8, r2
	b _0806DFAC
_0806DF3C:
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp r1, r0
	bne _0806DF46
	b _0806E2D0
_0806DF46:
	b _0806DFA6
_0806DF48:
	ldrh r1, [r4, #0x32]
	movs r5, #0x32
	ldrsh r0, [r4, r5]
	cmp r0, #0
	beq _0806DF68
	subs r0, r1, #1
	strh r0, [r4, #0x32]
	lsls r0, r0, #0x10
	movs r1, #0x80
	adds r1, r1, r4
	mov r8, r1
	adds r7, r4, #0
	adds r7, #0x84
	cmp r0, #0
	beq _0806DF68
	b _0806E2F2
_0806DF68:
	movs r0, #0xa
	strh r0, [r4, #0x34]
	adds r0, r4, #0
	movs r1, #3
	bl sub_806D808
	movs r2, #0x80
	adds r2, r2, r4
	mov r8, r2
	b _0806DFAC
_0806DF7C:
	movs r1, #0
	movs r0, #0
	strh r0, [r4, #0x36]
	adds r2, r4, #0
	adds r2, #0x26
	strb r1, [r2]
	str r0, [r4, #8]
	ldrb r0, [r2]
	lsls r0, r0, #2
	add r0, sp
	adds r0, #0x10
	ldr r0, [r0]
	lsls r0, r0, #8
	str r0, [r4, #0xc]
	ldr r0, _0806DFB4 @ =0xFFFFFC00
	str r0, [r4, #0x14]
	ldr r0, _0806DFB8 @ =0x00000221
	bl m4aSongNumStart
	movs r0, #0x64
	strh r0, [r4, #0x34]
_0806DFA6:
	movs r3, #0x80
	adds r3, r3, r4
	mov r8, r3
_0806DFAC:
	adds r7, r4, #0
	adds r7, #0x84
	b _0806E2F2
	.align 2, 0
_0806DFB4: .4byte 0xFFFFFC00
_0806DFB8: .4byte 0x00000221
_0806DFBC:
	ldrh r0, [r4, #0x36]
	adds r0, #1
	strh r0, [r4, #0x36]
	ldr r0, [r4, #0xc]
	adds r0, #0x20
	str r0, [r4, #0xc]
	ldr r1, _0806E014 @ =0x000007FF
	cmp r0, r1
	ble _0806DFD4
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [r4, #0xc]
_0806DFD4:
	ldr r0, [r4, #4]
	ldr r1, [r4, #0xc]
	adds r0, r0, r1
	str r0, [r4, #4]
	ldr r0, [r4, #0x14]
	adds r0, #0x20
	str r0, [r4, #0x14]
	movs r3, #2
	movs r5, #0x80
	movs r0, #0x4c
	adds r0, r0, r4
	mov ip, r0
	movs r1, #0x80
	adds r1, r1, r4
	mov r8, r1
	adds r7, r4, #0
	adds r7, #0x84
	adds r6, r4, #0
	adds r6, #0x48
_0806DFFA:
	movs r0, #1
	ands r0, r3
	cmp r0, #0
	beq _0806E018
	lsls r2, r3, #3
	subs r1, r2, r3
	lsls r1, r1, #3
	adds r1, r6, r1
	ldr r0, [r1]
	adds r0, r0, r5
	str r0, [r1]
	adds r5, #0x80
	b _0806E026
	.align 2, 0
_0806E014: .4byte 0x000007FF
_0806E018:
	lsls r2, r3, #3
	subs r1, r2, r3
	lsls r1, r1, #3
	adds r1, r6, r1
	ldr r0, [r1]
	subs r0, r0, r5
	str r0, [r1]
_0806E026:
	subs r2, r2, r3
	lsls r2, r2, #3
	add r2, ip
	ldr r0, [r2]
	ldr r1, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xf
	bls _0806DFFA
	ldrh r1, [r4, #0x36]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0806E0AE
	ldr r3, _0806E100 @ =gPseudoRandom
	ldr r0, [r3]
	ldr r2, _0806E104 @ =0x00196225
	muls r0, r2, r0
	ldr r1, _0806E108 @ =0x3C6EF35F
	adds r0, r0, r1
	ldr r5, _0806E10C @ =0x000003FF
	ands r5, r0
	muls r0, r2, r0
	adds r0, r0, r1
	str r0, [r3]
	movs r1, #0x30
	bl __umodsi3
	adds r3, r0, #0
	ldr r1, _0806E110 @ =gSineTable
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r5, r2
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r3, r0
	lsrs r2, r0, #6
	lsls r0, r5, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r3, r0
	lsrs r0, r0, #6
	ldr r1, [r4]
	adds r1, r1, r2
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r2, r2, r0
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	movs r3, #0x80
	lsls r3, r3, #3
	str r5, [sp]
	movs r0, #0x14
	str r0, [sp, #4]
	movs r0, #0x80
	str r0, [sp, #8]
	ldr r0, [r4, #0x3c]
	str r0, [sp, #0xc]
	movs r0, #7
	bl sub_8079758
_0806E0AE:
	ldrh r1, [r4, #0x36]
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _0806E0BE
	ldr r0, _0806E114 @ =0x00000221
	bl m4aSongNumStart
_0806E0BE:
	ldr r0, [r4, #4]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r0, r2
	ldr r1, _0806E118 @ =0x0000B4FF
	cmp r0, r1
	bgt _0806E0CE
	b _0806E2F2
_0806E0CE:
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x91
	str r1, [sp]
	movs r1, #0x20
	movs r2, #0
	bl CreateScreenShake
	adds r1, r4, #0
	adds r1, #0x26
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _0806E11C
	movs r0, #0xb4
	strh r0, [r4, #0x36]
	movs r0, #0x6e
	strh r0, [r4, #0x34]
	b _0806E12A
	.align 2, 0
_0806E100: .4byte gPseudoRandom
_0806E104: .4byte 0x00196225
_0806E108: .4byte 0x3C6EF35F
_0806E10C: .4byte 0x000003FF
_0806E110: .4byte gSineTable
_0806E114: .4byte 0x00000221
_0806E118: .4byte 0x0000B4FF
_0806E11C:
	ldrb r0, [r1]
	lsls r0, r0, #2
	add r0, sp
	adds r0, #0x10
	ldr r0, [r0]
	lsls r0, r0, #8
	str r0, [r4, #0xc]
_0806E12A:
	ldr r0, _0806E134 @ =0x00000227
	bl m4aSongNumStart
	b _0806E2F2
	.align 2, 0
_0806E134: .4byte 0x00000227
_0806E138:
	ldrh r0, [r4, #0x36]
	subs r0, #1
	strh r0, [r4, #0x36]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0806E14C
	movs r0, #0x19
	strh r0, [r4, #0x36]
	movs r0, #0xc8
	strh r0, [r4, #0x34]
_0806E14C:
	ldrh r1, [r4, #0x36]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0806E1C0
	ldr r3, _0806E1E0 @ =gPseudoRandom
	ldr r0, [r3]
	ldr r2, _0806E1E4 @ =0x00196225
	muls r0, r2, r0
	ldr r1, _0806E1E8 @ =0x3C6EF35F
	adds r0, r0, r1
	ldr r5, _0806E1EC @ =0x000003FF
	ands r5, r0
	muls r0, r2, r0
	adds r0, r0, r1
	str r0, [r3]
	movs r1, #0x50
	bl __umodsi3
	adds r3, r0, #0
	ldr r1, _0806E1F0 @ =gSineTable
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r5, r2
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r3, r0
	lsrs r2, r0, #6
	lsls r0, r5, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r3, r0, r3
	ldr r1, [r4]
	adds r1, r1, r2
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	ldr r0, _0806E1F4 @ =gCamera
	ldr r2, [r0, #4]
	lsrs r3, r3, #0xe
	adds r3, #0x50
	adds r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r3, #0x80
	lsls r3, r3, #2
	str r5, [sp]
	movs r0, #0x1e
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, [r4, #0x3c]
	str r0, [sp, #0xc]
	movs r0, #7
	bl sub_8079758
_0806E1C0:
	ldrh r1, [r4, #0x36]
	movs r0, #0x3f
	ands r0, r1
	movs r2, #0x80
	adds r2, r2, r4
	mov r8, r2
	adds r7, r4, #0
	adds r7, #0x84
	cmp r0, #0
	beq _0806E1D6
	b _0806E2F2
_0806E1D6:
	ldr r0, _0806E1F8 @ =0x00000221
	bl m4aSongNumStart
	b _0806E2F2
	.align 2, 0
_0806E1E0: .4byte gPseudoRandom
_0806E1E4: .4byte 0x00196225
_0806E1E8: .4byte 0x3C6EF35F
_0806E1EC: .4byte 0x000003FF
_0806E1F0: .4byte gSineTable
_0806E1F4: .4byte gCamera
_0806E1F8: .4byte 0x00000221
_0806E1FC:
	adds r2, r4, #0
	adds r2, #0x27
	ldrb r0, [r2]
	movs r1, #1
	eors r0, r1
	strb r0, [r2]
	ldrh r0, [r4, #0x36]
	subs r0, #1
	strh r0, [r4, #0x36]
	lsls r0, r0, #0x10
	mov sl, r2
	movs r3, #0x80
	adds r3, r3, r4
	mov r8, r3
	adds r7, r4, #0
	adds r7, #0x84
	cmp r0, #0
	bne _0806E2F2
	movs r5, #0
	ldr r0, _0806E26C @ =0x000003FF
	mov sb, r0
_0806E226:
	ldr r1, [r4]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	ldr r2, [r4, #4]
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	str r5, [sp]
	movs r0, #0x1e
	str r0, [sp, #4]
	movs r6, #0
	str r6, [sp, #8]
	ldr r0, [r4, #0x3c]
	str r0, [sp, #0xc]
	movs r0, #7
	movs r3, #0x80
	lsls r3, r3, #2
	bl sub_8079758
	adds r0, r5, #0
	adds r0, #0x80
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, sb
	bls _0806E226
	ldr r0, _0806E270 @ =0x00000221
	bl m4aSongNumStart
	mov r1, sl
	strb r6, [r1]
	movs r0, #0xa
	strh r0, [r4, #0x36]
	movs r0, #0xd2
	strh r0, [r4, #0x34]
	b _0806E2F2
	.align 2, 0
_0806E26C: .4byte 0x000003FF
_0806E270: .4byte 0x00000221
_0806E274:
	ldrh r0, [r4, #0x36]
	subs r0, #1
	strh r0, [r4, #0x36]
	lsls r0, r0, #0x10
	movs r2, #0x80
	adds r2, r2, r4
	mov r8, r2
	adds r7, r4, #0
	adds r7, #0x84
	cmp r0, #0
	bne _0806E2F2
	movs r5, #0
	ldr r6, _0806E2CC @ =0x000003FF
_0806E28E:
	ldr r1, [r4]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	ldr r2, [r4, #4]
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	str r5, [sp]
	movs r0, #0x1e
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, [r4, #0x3c]
	str r0, [sp, #0xc]
	movs r0, #7
	movs r3, #0x80
	lsls r3, r3, #2
	bl sub_8079758
	adds r0, r5, #0
	adds r0, #0x80
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r6
	bls _0806E28E
	movs r0, #0xa
	strh r0, [r4, #0x36]
	movs r0, #0xfa
	lsls r0, r0, #2
	strh r0, [r4, #0x34]
	b _0806E2F2
	.align 2, 0
_0806E2CC: .4byte 0x000003FF
_0806E2D0:
	ldrh r0, [r4, #0x36]
	subs r0, #1
	strh r0, [r4, #0x36]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x80
	adds r3, r3, r4
	mov r8, r3
	adds r7, r4, #0
	adds r7, #0x84
	cmp r0, #0
	bne _0806E2F2
	strh r0, [r4, #0x34]
	ldr r0, _0806E328 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806E32C @ =sub_806D388
	str r0, [r1, #8]
_0806E2F2:
	ldr r1, [r4]
	str r1, [r4, #0x48]
	ldr r0, [r4, #4]
	str r0, [r4, #0x4c]
	mov r5, r8
	str r1, [r5]
	ldr r0, [r4, #0x4c]
	str r0, [r7]
	ldr r1, [r4, #0x40]
	ldr r0, [r1, #4]
	movs r2, #0x80
	lsls r2, r2, #0x14
	orrs r0, r2
	str r0, [r1, #4]
	ldr r1, [r4, #0x44]
	ldr r0, [r1, #4]
	orrs r0, r2
	str r0, [r1, #4]
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806E328: .4byte gCurTask
_0806E32C: .4byte sub_806D388

	thumb_func_start sub_806E330
sub_806E330: @ 0x0806E330
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrh r2, [r4, #0x34]
	ldr r0, _0806E360 @ =0x00000203
	cmp r2, r0
	bne _0806E340
	b _0806E700
_0806E340:
	cmp r2, r0
	bgt _0806E3A6
	subs r0, #0xd7
	cmp r2, r0
	bne _0806E34C
	b _0806E4DC
_0806E34C:
	cmp r2, r0
	bgt _0806E370
	cmp r2, #0x64
	beq _0806E436
	cmp r2, #0x64
	bgt _0806E364
	cmp r2, #0
	beq _0806E420
	b _0806E8DC
	.align 2, 0
_0806E360: .4byte 0x00000203
_0806E364:
	cmp r2, #0x6e
	beq _0806E444
	cmp r2, #0xc8
	bne _0806E36E
	b _0806E47C
_0806E36E:
	b _0806E8DC
_0806E370:
	movs r1, #0xcd
	lsls r1, r1, #1
	cmp r2, r1
	bne _0806E37A
	b _0806E5EA
_0806E37A:
	cmp r2, r1
	bgt _0806E392
	movs r0, #0x9b
	lsls r0, r0, #1
	cmp r2, r0
	bne _0806E388
	b _0806E592
_0806E388:
	adds r0, #0x5a
	cmp r2, r0
	bne _0806E390
	b _0806E5D8
_0806E390:
	b _0806E8DC
_0806E392:
	movs r0, #0xfa
	lsls r0, r0, #1
	cmp r2, r0
	bne _0806E39C
	b _0806E668
_0806E39C:
	adds r0, #0xa
	cmp r2, r0
	bne _0806E3A4
	b _0806E67A
_0806E3A4:
	b _0806E8DC
_0806E3A6:
	movs r1, #0x9b
	lsls r1, r1, #2
	cmp r2, r1
	bne _0806E3B0
	b _0806E7AE
_0806E3B0:
	cmp r2, r1
	bgt _0806E3E4
	ldr r3, _0806E3CC @ =0x00000212
	cmp r2, r3
	bne _0806E3BC
	b _0806E750
_0806E3BC:
	cmp r2, r3
	bgt _0806E3D0
	movs r0, #0x82
	lsls r0, r0, #2
	cmp r2, r0
	bne _0806E3CA
	b _0806E728
_0806E3CA:
	b _0806E8DC
	.align 2, 0
_0806E3CC: .4byte 0x00000212
_0806E3D0:
	movs r0, #0x96
	lsls r0, r0, #2
	cmp r2, r0
	bne _0806E3DA
	b _0806E764
_0806E3DA:
	adds r0, #0xa
	cmp r2, r0
	bne _0806E3E2
	b _0806E790
_0806E3E2:
	b _0806E8DC
_0806E3E4:
	movs r3, #0xa0
	lsls r3, r3, #2
	cmp r2, r3
	bne _0806E3EE
	b _0806E884
_0806E3EE:
	cmp r2, r3
	bgt _0806E408
	ldr r0, _0806E404 @ =0x00000271
	cmp r2, r0
	bne _0806E3FA
	b _0806E840
_0806E3FA:
	adds r0, #5
	cmp r2, r0
	bne _0806E402
	b _0806E860
_0806E402:
	b _0806E8DC
	.align 2, 0
_0806E404: .4byte 0x00000271
_0806E408:
	ldr r0, _0806E41C @ =0x0000028A
	cmp r2, r0
	bne _0806E410
	b _0806E89C
_0806E410:
	adds r0, #0xa
	cmp r2, r0
	bne _0806E418
	b _0806E8AC
_0806E418:
	b _0806E8DC
	.align 2, 0
_0806E41C: .4byte 0x0000028A
_0806E420:
	movs r0, #0
	movs r1, #1
	strh r1, [r4, #0x36]
	movs r1, #0x64
	strh r1, [r4, #0x34]
	adds r1, r4, #0
	adds r1, #0x31
	strb r0, [r1]
	str r2, [r4, #8]
	str r2, [r4, #0xc]
	b _0806E8DC
_0806E436:
	ldr r0, _0806E440 @ =0xFFFFFE40
	str r0, [r4, #0x14]
	movs r0, #0x6e
	strh r0, [r4, #0x34]
	b _0806E8DC
	.align 2, 0
_0806E440: .4byte 0xFFFFFE40
_0806E444:
	ldr r0, [r4, #0x14]
	adds r2, r0, #0
	adds r2, #0x10
	str r2, [r4, #0x14]
	ldr r0, [r4, #0x10]
	adds r0, r0, r2
	str r0, [r4, #0x10]
	ldr r1, _0806E474 @ =0x00007FFF
	cmp r0, r1
	ble _0806E46A
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r4, #0x10]
	rsbs r0, r2, #0
	str r0, [r4, #0xc]
	ldr r0, _0806E478 @ =0xFFFFFE80
	str r0, [r4, #0x14]
	movs r0, #0xc8
	strh r0, [r4, #0x34]
_0806E46A:
	ldr r1, [r4, #0x10]
	movs r0, #0xad
	lsls r0, r0, #8
	b _0806E8D8
	.align 2, 0
_0806E474: .4byte 0x00007FFF
_0806E478: .4byte 0xFFFFFE80
_0806E47C:
	ldr r1, [r4, #0xc]
	subs r1, #0x20
	str r1, [r4, #0xc]
	ldr r0, [r4, #4]
	adds r0, r0, r1
	str r0, [r4, #4]
	cmp r0, #0
	bgt _0806E490
	movs r0, #0
	str r0, [r4, #4]
_0806E490:
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r1, #0x90
	lsls r1, r1, #7
	cmp r0, r1
	bgt _0806E4A2
	str r1, [r4, #0x10]
_0806E4A2:
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _0806E4AA
	b _0806E8DC
_0806E4AA:
	ldr r0, [r4, #0x10]
	cmp r0, r1
	ble _0806E4B2
	b _0806E8DC
_0806E4B2:
	movs r0, #0xd0
	lsls r0, r0, #1
	adds r3, r4, r0
	movs r2, #0
	ldr r1, _0806E4D8 @ =0x000004C4
	strh r1, [r3, #0xc]
	movs r0, #1
	strb r0, [r3, #0x1a]
	movs r5, #0xec
	lsls r5, r5, #1
	adds r3, r4, r5
	strh r1, [r3, #0xc]
	strb r0, [r3, #0x1a]
	str r2, [r4, #0xc]
	movs r0, #0x3c
	strh r0, [r4, #0x36]
	adds r0, #0xf0
	strh r0, [r4, #0x34]
	b _0806E8DC
	.align 2, 0
_0806E4D8: .4byte 0x000004C4
_0806E4DC:
	ldrh r0, [r4, #0x36]
	subs r0, #1
	strh r0, [r4, #0x36]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0806E4EA
	b _0806E8DC
_0806E4EA:
	adds r1, r4, #0
	adds r1, #0x28
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x31
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	beq _0806E510
	ldr r1, _0806E50C @ =gUnknown_080D584C
	subs r0, #1
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	b _0806E520
	.align 2, 0
_0806E50C: .4byte gUnknown_080D584C
_0806E510:
	ldr r1, _0806E544 @ =gUnknown_080D584C
	adds r0, r4, #0
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	rsbs r0, r0, #0
_0806E520:
	str r0, [r4, #8]
	ldr r2, _0806E548 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _0806E54C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0806E550 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	adds r2, r0, #0
	ldr r1, _0806E554 @ =0x00002710
	bl __umodsi3
	adds r2, r0, #0
	ldr r0, _0806E558 @ =0x000003E7
	cmp r2, r0
	bhi _0806E55C
	movs r0, #0x3c
	b _0806E580
	.align 2, 0
_0806E544: .4byte gUnknown_080D584C
_0806E548: .4byte gPseudoRandom
_0806E54C: .4byte 0x00196225
_0806E550: .4byte 0x3C6EF35F
_0806E554: .4byte 0x00002710
_0806E558: .4byte 0x000003E7
_0806E55C:
	ldr r0, _0806E568 @ =0x00000F9F
	cmp r2, r0
	bhi _0806E56C
	movs r0, #0xb4
	b _0806E580
	.align 2, 0
_0806E568: .4byte 0x00000F9F
_0806E56C:
	ldr r0, _0806E578 @ =0x00001F3F
	cmp r2, r0
	bhi _0806E57C
	movs r0, #0xf0
	b _0806E580
	.align 2, 0
_0806E578: .4byte 0x00001F3F
_0806E57C:
	movs r0, #0x96
	lsls r0, r0, #1
_0806E580:
	strh r0, [r4, #0x36]
	ldrb r0, [r5]
	movs r1, #1
	eors r0, r1
	strb r0, [r5]
	movs r0, #0x9b
	lsls r0, r0, #1
	strh r0, [r4, #0x34]
	b _0806E8DC
_0806E592:
	ldr r0, [r4]
	ldr r2, [r4, #8]
	adds r1, r0, r2
	str r1, [r4]
	cmp r2, #0
	bge _0806E5A8
	movs r0, #0xa4
	lsls r0, r0, #0xb
	cmp r1, r0
	bgt _0806E5B6
	b _0806E5B0
_0806E5A8:
	ldr r0, _0806E5D4 @ =0x000607FF
	cmp r1, r0
	ble _0806E5B6
	adds r0, #1
_0806E5B0:
	str r0, [r4]
	rsbs r0, r2, #0
	str r0, [r4, #8]
_0806E5B6:
	ldrh r0, [r4, #0x36]
	subs r0, #1
	strh r0, [r4, #0x36]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _0806E5C6
	b _0806E8DC
_0806E5C6:
	str r0, [r4, #8]
	movs r0, #0x3c
	strh r0, [r4, #0x36]
	movs r0, #0xc8
	lsls r0, r0, #1
	strh r0, [r4, #0x34]
	b _0806E8DC
	.align 2, 0
_0806E5D4: .4byte 0x000607FF
_0806E5D8:
	ldrh r0, [r4, #0x36]
	subs r0, #1
	strh r0, [r4, #0x36]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0806E5E6
	b _0806E8DC
_0806E5E6:
	strh r1, [r4, #0x34]
	b _0806E8DC
_0806E5EA:
	movs r5, #0
	ldr r0, _0806E600 @ =gStageData
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _0806E604
	adds r0, r4, #0
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #4
	bhi _0806E610
	b _0806E60E
	.align 2, 0
_0806E600: .4byte gStageData
_0806E604:
	adds r0, r4, #0
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #3
	bhi _0806E610
_0806E60E:
	movs r5, #1
_0806E610:
	ldr r2, _0806E638 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _0806E63C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0806E640 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #1
	ldr r1, _0806E644 @ =0x00002710
	adds r0, r2, #0
	bl __umodsi3
	adds r2, r0, #0
	cmp r5, #0
	beq _0806E64C
	ldr r0, _0806E648 @ =0x0000176F
	cmp r2, r0
	bls _0806E652
	b _0806E660
	.align 2, 0
_0806E638: .4byte gPseudoRandom
_0806E63C: .4byte 0x00196225
_0806E640: .4byte 0x3C6EF35F
_0806E644: .4byte 0x00002710
_0806E648: .4byte 0x0000176F
_0806E64C:
	ldr r0, _0806E65C @ =0x00001F3F
	cmp r2, r0
	bhi _0806E660
_0806E652:
	movs r0, #0xfa
	lsls r0, r0, #1
	strh r0, [r4, #0x34]
	b _0806E8DC
	.align 2, 0
_0806E65C: .4byte 0x00001F3F
_0806E660:
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r4, #0x34]
	b _0806E8DC
_0806E668:
	movs r0, #0
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r4, #0x14]
	subs r0, #2
	strh r0, [r4, #0x34]
	b _0806E8DC
_0806E67A:
	ldr r0, [r4, #0xc]
	adds r0, #0x20
	str r0, [r4, #0xc]
	ldr r1, _0806E6EC @ =0x000003FF
	cmp r0, r1
	ble _0806E68C
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r4, #0xc]
_0806E68C:
	ldr r0, [r4, #4]
	ldr r1, [r4, #0xc]
	adds r0, r0, r1
	str r0, [r4, #4]
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r1, _0806E6F0 @ =0x00007FFF
	cmp r0, r1
	ble _0806E6A8
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r4, #0x10]
_0806E6A8:
	movs r3, #0
	ldr r2, [r4, #0x10]
	movs r5, #0x80
	lsls r5, r5, #4
	adds r0, r2, r5
	ldr r1, [r4, #4]
	adds r1, r1, r0
	ldr r0, _0806E6F4 @ =0x0000B4FF
	cmp r1, r0
	ble _0806E6C6
	movs r0, #0xad
	lsls r0, r0, #8
	subs r1, r0, r2
	str r1, [r4, #4]
	movs r3, #1
_0806E6C6:
	cmp r3, #1
	beq _0806E6CC
	b _0806E8DC
_0806E6CC:
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x91
	str r1, [sp]
	movs r1, #0x20
	movs r2, #0
	bl CreateScreenShake
	ldr r0, _0806E6F8 @ =0xFFFFFE00
	str r0, [r4, #0x14]
	ldr r0, _0806E6FC @ =0x00000203
	strh r0, [r4, #0x34]
	b _0806E81E
	.align 2, 0
_0806E6EC: .4byte 0x000003FF
_0806E6F0: .4byte 0x00007FFF
_0806E6F4: .4byte 0x0000B4FF
_0806E6F8: .4byte 0xFFFFFE00
_0806E6FC: .4byte 0x00000203
_0806E700:
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r1, #0x90
	lsls r1, r1, #7
	cmp r0, r1
	bgt _0806E71A
	ldr r0, _0806E724 @ =0xFFFFFE40
	str r0, [r4, #0x14]
	movs r0, #0x82
	lsls r0, r0, #2
	strh r0, [r4, #0x34]
_0806E71A:
	ldr r1, [r4, #0x10]
	movs r0, #0xad
	lsls r0, r0, #8
	b _0806E8D8
	.align 2, 0
_0806E724: .4byte 0xFFFFFE40
_0806E728:
	ldr r0, [r4, #0x14]
	adds r0, #0x10
	str r0, [r4, #0x14]
	ldr r1, [r4, #0x10]
	adds r1, r1, r0
	str r1, [r4, #0x10]
	ldr r0, _0806E74C @ =0x000047FF
	cmp r1, r0
	ble _0806E744
	adds r0, #1
	str r0, [r4, #0x10]
	movs r0, #0x3c
	strh r0, [r4, #0x36]
	strh r3, [r4, #0x34]
_0806E744:
	ldr r1, [r4, #0x10]
	movs r0, #0xad
	lsls r0, r0, #8
	b _0806E8D8
	.align 2, 0
_0806E74C: .4byte 0x000047FF
_0806E750:
	ldrh r0, [r4, #0x36]
	subs r0, #1
	strh r0, [r4, #0x36]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0806E75E
	b _0806E8DC
_0806E75E:
	movs r0, #0x64
	strh r0, [r4, #0x34]
	b _0806E8DC
_0806E764:
	movs r0, #0xd0
	lsls r0, r0, #1
	adds r3, r4, r0
	movs r1, #0
	ldr r0, _0806E788 @ =0x000004C4
	strh r0, [r3, #0xc]
	strb r1, [r3, #0x1a]
	movs r2, #0xec
	lsls r2, r2, #1
	adds r3, r4, r2
	strh r0, [r3, #0xc]
	strb r1, [r3, #0x1a]
	movs r0, #0x3c
	strh r0, [r4, #0x36]
	ldr r0, _0806E78C @ =0x00000262
	strh r0, [r4, #0x34]
	b _0806E8DC
	.align 2, 0
_0806E788: .4byte 0x000004C4
_0806E78C: .4byte 0x00000262
_0806E790:
	ldrh r0, [r4, #0x36]
	subs r0, #1
	strh r0, [r4, #0x36]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _0806E7A0
	b _0806E8DC
_0806E7A0:
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r4, #0x14]
	strh r1, [r4, #0x34]
	b _0806E8DC
_0806E7AE:
	ldr r0, [r4, #0xc]
	adds r0, #0x20
	str r0, [r4, #0xc]
	ldr r1, _0806E828 @ =0x000003FF
	cmp r0, r1
	ble _0806E7C0
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r4, #0xc]
_0806E7C0:
	ldr r0, [r4, #4]
	ldr r1, [r4, #0xc]
	adds r0, r0, r1
	str r0, [r4, #4]
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r1, _0806E82C @ =0x00007FFF
	cmp r0, r1
	ble _0806E7DC
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r4, #0x10]
_0806E7DC:
	movs r3, #0
	ldr r2, [r4, #0x10]
	movs r5, #0x80
	lsls r5, r5, #4
	adds r0, r2, r5
	ldr r1, [r4, #4]
	adds r1, r1, r0
	ldr r0, _0806E830 @ =0x0000B8FF
	cmp r1, r0
	ble _0806E7FA
	movs r0, #0xb1
	lsls r0, r0, #8
	subs r1, r0, r2
	str r1, [r4, #4]
	movs r3, #1
_0806E7FA:
	cmp r3, #1
	bne _0806E8DC
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x91
	str r1, [sp]
	movs r1, #0x20
	movs r2, #0
	bl CreateScreenShake
	ldr r0, _0806E834 @ =0xFFFFFE00
	str r0, [r4, #0x14]
	ldr r0, _0806E838 @ =0x00000271
	strh r0, [r4, #0x34]
	movs r0, #0xa
	strh r0, [r4, #0x20]
_0806E81E:
	ldr r0, _0806E83C @ =0x00000227
	bl m4aSongNumStart
	b _0806E8DC
	.align 2, 0
_0806E828: .4byte 0x000003FF
_0806E82C: .4byte 0x00007FFF
_0806E830: .4byte 0x0000B8FF
_0806E834: .4byte 0xFFFFFE00
_0806E838: .4byte 0x00000271
_0806E83C: .4byte 0x00000227
_0806E840:
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r1, #0x90
	lsls r1, r1, #7
	cmp r0, r1
	bgt _0806E8D2
	ldr r0, _0806E858 @ =0xFFFFFE40
	str r0, [r4, #0x14]
	ldr r0, _0806E85C @ =0x00000276
	b _0806E8D0
	.align 2, 0
_0806E858: .4byte 0xFFFFFE40
_0806E85C: .4byte 0x00000276
_0806E860:
	ldr r0, [r4, #0x14]
	adds r0, #0x10
	str r0, [r4, #0x14]
	ldr r1, [r4, #0x10]
	adds r1, r1, r0
	str r1, [r4, #0x10]
	ldr r0, _0806E880 @ =0x000047FF
	cmp r1, r0
	ble _0806E8D2
	adds r0, #1
	str r0, [r4, #0x10]
	movs r0, #0x3c
	strh r0, [r4, #0x36]
	strh r3, [r4, #0x34]
	b _0806E8D2
	.align 2, 0
_0806E880: .4byte 0x000047FF
_0806E884:
	ldrh r0, [r4, #0x36]
	subs r0, #1
	strh r0, [r4, #0x36]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0806E8DC
	ldr r0, _0806E898 @ =0x0000028A
	strh r0, [r4, #0x34]
	b _0806E8DC
	.align 2, 0
_0806E898: .4byte 0x0000028A
_0806E89C:
	ldr r0, _0806E8A8 @ =0xFFFFFE40
	str r0, [r4, #0x14]
	movs r0, #0xa5
	lsls r0, r0, #2
	strh r0, [r4, #0x34]
	b _0806E8DC
	.align 2, 0
_0806E8A8: .4byte 0xFFFFFE40
_0806E8AC:
	ldr r0, [r4, #0x14]
	adds r2, r0, #0
	adds r2, #0x10
	str r2, [r4, #0x14]
	ldr r0, [r4, #0x10]
	adds r0, r0, r2
	str r0, [r4, #0x10]
	ldr r1, _0806E908 @ =0x00007FFF
	cmp r0, r1
	ble _0806E8D2
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r4, #0x10]
	rsbs r0, r2, #0
	str r0, [r4, #0xc]
	ldr r0, _0806E90C @ =0xFFFFFE80
	str r0, [r4, #0x14]
	movs r0, #0xc8
_0806E8D0:
	strh r0, [r4, #0x34]
_0806E8D2:
	ldr r1, [r4, #0x10]
	movs r0, #0xb1
	lsls r0, r0, #8
_0806E8D8:
	subs r0, r0, r1
	str r0, [r4, #4]
_0806E8DC:
	ldrh r1, [r4, #0x32]
	movs r2, #0x32
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _0806E8F8
	subs r0, r1, #1
	strh r0, [r4, #0x32]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0806E8F8
	adds r0, r4, #0
	movs r1, #0
	bl sub_806D808
_0806E8F8:
	adds r0, r4, #0
	bl sub_806D568
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806E908: .4byte 0x00007FFF
_0806E90C: .4byte 0xFFFFFE80

	thumb_func_start Task_EggFootInit
Task_EggFootInit: @ 0x0806E910
	push {r4, r5, lr}
	ldr r4, _0806E930 @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	bl sub_8079FFC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0806E938
	ldr r1, [r4]
	ldr r0, _0806E934 @ =sub_806E950
	b _0806E93C
	.align 2, 0
_0806E930: .4byte gCurTask
_0806E934: .4byte sub_806E950
_0806E938:
	ldr r1, [r4]
	ldr r0, _0806E94C @ =Task_806D268
_0806E93C:
	str r0, [r1, #8]
	adds r0, r5, #0
	bl sub_806D6C4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806E94C: .4byte Task_806D268

	thumb_func_start sub_806E950
sub_806E950: @ 0x0806E950
	push {r4, r5, lr}
	ldr r5, _0806E970 @ =gCurTask
	ldr r2, [r5]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x2c]
	ldrb r0, [r0]
	cmp r0, #3
	bne _0806E974
	adds r0, r2, #0
	bl TaskDestroy
	b _0806E992
	.align 2, 0
_0806E970: .4byte gCurTask
_0806E974:
	adds r0, r4, #0
	bl sub_806D6C4
	ldr r0, [r4, #0x2c]
	ldrb r0, [r0]
	cmp r0, #2
	bne _0806E992
	bl sub_807A074
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0806E992
	ldr r1, [r5]
	ldr r0, _0806E998 @ =Task_806D268
	str r0, [r1, #8]
_0806E992:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806E998: .4byte Task_806D268

	thumb_func_start sub_806E99C
sub_806E99C: @ 0x0806E99C
	push {r4, lr}
	ldr r0, _0806E9BC @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_806DD34
	adds r0, r4, #0
	bl sub_806D6C4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806E9BC: .4byte gCurTask

	thumb_func_start sub_806E9C0
sub_806E9C0: @ 0x0806E9C0
	push {lr}
	ldr r0, _0806E9EC @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r2, [r0, #0x40]
	ldr r1, [r2, #4]
	movs r3, #0x80
	lsls r3, r3, #0x14
	orrs r1, r3
	str r1, [r2, #4]
	ldr r2, [r0, #0x44]
	ldr r1, [r2, #4]
	orrs r1, r3
	str r1, [r2, #4]
	bl sub_806D6C4
	pop {r0}
	bx r0
	.align 2, 0
_0806E9EC: .4byte gCurTask

	thumb_func_start sub_806E9F0
sub_806E9F0: @ 0x0806E9F0
	push {r4, lr}
	ldr r0, _0806EA10 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_806DED8
	adds r0, r4, #0
	bl sub_806D6C4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806EA10: .4byte gCurTask

	thumb_func_start TaskDestructor_EggFoot
TaskDestructor_EggFoot: @ 0x0806EA14
	push {r4, lr}
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _0806EA2C
	bl VramFree
	movs r0, #0
	str r0, [r4, #0x38]
_0806EA2C:
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _0806EA3A
	bl VramFree
	movs r0, #0
	str r0, [r4, #0x3c]
_0806EA3A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_806EA40
sub_806EA40: @ 0x0806EA40
	push {r4, lr}
	adds r2, r0, #0
	movs r4, #0
	ldr r3, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r3, r1
	ldr r1, [r2, #4]
	adds r1, r1, r0
	ldr r0, _0806EA6C @ =0x0000B4FF
	cmp r1, r0
	ble _0806EA62
	movs r0, #0xad
	lsls r0, r0, #8
	subs r1, r0, r3
	str r1, [r2, #4]
	movs r4, #1
_0806EA62:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0806EA6C: .4byte 0x0000B4FF

	thumb_func_start sub_806EA70
sub_806EA70: @ 0x0806EA70
	push {r4, lr}
	adds r2, r0, #0
	movs r4, #0
	ldr r3, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r3, r1
	ldr r1, [r2, #4]
	adds r1, r1, r0
	ldr r0, _0806EA9C @ =0x0000B8FF
	cmp r1, r0
	ble _0806EA92
	movs r0, #0xb1
	lsls r0, r0, #8
	subs r1, r0, r3
	str r1, [r2, #4]
	movs r4, #1
_0806EA92:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0806EA9C: .4byte 0x0000B8FF

	thumb_func_start sub_806EAA0
sub_806EAA0: @ 0x0806EAA0
	push {r4, r5, r6, lr}
	movs r2, #0
	strh r2, [r0, #0x34]
	movs r1, #1
	strh r1, [r0, #0x36]
	strh r2, [r0, #0x20]
	movs r3, #0
	adds r5, r0, #0
	adds r5, #0x40
	movs r6, #0x80
	lsls r6, r6, #0x14
	movs r4, #0
_0806EAB8:
	lsls r2, r3, #2
	adds r2, r5, r2
	ldr r1, [r2]
	ldr r0, [r1, #4]
	orrs r0, r6
	str r0, [r1, #4]
	strh r4, [r1, #0x1c]
	ldr r0, [r2]
	strh r4, [r0, #0x18]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	bls _0806EAB8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

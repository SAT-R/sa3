
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	ldr r2, _0806B7F0 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldrh r0, [r7, #0x2e]
	mov ip, r0
	mov r8, r2
	mov r1, ip
	cmp r1, #0
	bne _0806B7D8
	ldr r0, [r7]
	asrs r0, r0, #8
	ldr r3, _0806B7F4 @ =gCamera
	ldr r1, [r3]
	subs r0, r0, r1
	adds r4, r0, #0
	adds r4, #0xa
	mov r0, ip
	adds r0, #1
	strh r0, [r7, #0x2e]
	ldr r2, [r3]
	adds r2, r2, r4
	str r2, [sp]
	ldr r0, [r3, #0x14]
	adds r1, r0, #0
	subs r1, #0x32
	str r1, [sp, #4]
	str r2, [sp, #8]
	subs r0, #0x1b
	str r0, [sp, #0xc]
	ldr r1, _0806B7F8 @ =sub_807A37C
	mov r0, sp
	bl sub_8078E34
_0806B7D8:
	ldrb r0, [r7, #0x1c]
	cmp r0, #4
	bne _0806B836
	movs r2, #0
	ldr r4, _0806B7FC @ =sub_806CEB8
	ldr r3, _0806B800 @ =gPlayers
_0806B7E4:
	cmp r2, #0
	bne _0806B808
	ldr r0, _0806B804 @ =gStageData
	ldrb r1, [r0, #6]
	b _0806B812
	.align 2, 0
_0806B7F0: .4byte gCurTask
_0806B7F4: .4byte gCamera
_0806B7F8: .4byte sub_807A37C
_0806B7FC: .4byte sub_806CEB8
_0806B800: .4byte gPlayers
_0806B804: .4byte gStageData
_0806B808:
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0806B812:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r6, r0, r3
	adds r1, r6, #0
	adds r1, #0x27
	movs r0, #1
	strb r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #1
	bls _0806B7E4
	mov r1, r8
	ldr r0, [r1]
	str r4, [r0, #8]
_0806B836:
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

.syntax divided


.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x4c
	adds r4, r2, #0
	adds r6, r3, #0
	ldr r5, [sp, #0x6c]
	ldr r2, [sp, #0x70]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0          @ sb = worldX
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1          @ sl = worldY
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10  @ r4 = param2
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10  @ r6 = rand
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18  @ r5 = param4
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2          @ r8 = param5 (i)
	ldr r1, _08035028 @ =gUnknown_080CF638
	add r0, sp, #4
	movs r2, #0x48
	bl memcpy
	ldr r0, _0803502C @ =Task_DebrisInit
	movs r2, #0x84
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x38
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov ip, r0          @ ip = debris
	ldr r0, _08035030 @ =0x03000010
	adds r7, r1, r0     @ r7 = s
	mov r1, ip
	strb r5, [r1, #0xe]
	movs r0, #0x20
	strh r0, [r1, #0xc]
	ldr r2, _08035034 @ =gSineTable
	ldr r1, _08035038 @ =0x000003FF
	ands r1, r6
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r1, r3
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	muls r0, r4, r0
	asrs r0, r0, #0xe
	mov r3, ip          @ r3 = ip = debris
	strh r0, [r3, #8]
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	muls r0, r4, r0
	asrs r0, r0, #0xe
	strh r0, [r3, #0xa]
	ldr r1, _0803503C @ =gStageData
	ldrb r0, [r1, #0xa]
	cmp r0, #9
	bne _08035040
	movs r2, #0         @ r2 = zone
	b _0803504A
	.align 2, 0
_08035028: .4byte gUnknown_080CF638
_0803502C: .4byte Task_DebrisInit
_08035030: .4byte 0x03000010
_08035034: .4byte gSineTable
_08035038: .4byte 0x000003FF
_0803503C: .4byte gStageData
_08035040:
	ldrb r0, [r1, #9]
	movs r2, #0         @ r2 = zone
	cmp r0, #6
	beq _0803504A
	adds r2, r0, #0     @ r2 = zone
_0803504A:
	movs r3, #1
	mov r0, r8
	ands r3, r0
	cmp r3, #0
	bne _0803505C
	ldr r1, [sp, #0x74]     @ r1 = s
	str r1, [r7]
	lsls r2, r2, #0x10
	b _08035074
_0803505C:
	lsls r2, r2, #0x10
	asrs r0, r2, #0x10
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	add r0, sp, #8
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r1, [sp, #0x74]
	adds r0, r1, r0
	str r0, [r7]
_08035074:
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #1     @ r1 = r3 * 6
	asrs r2, r2, #0x10
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	mov r0, sp
	adds r0, r0, r1
	adds r0, #4
	ldrh r0, [r0]
	movs r3, #0
	movs r2, #0
	strh r0, [r7, #0xc]
	mov r0, sp
	adds r0, #6
	adds r0, r0, r1
	ldrh r0, [r0]
	strb r0, [r7, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r7, #0x14]
	strh r2, [r7, #0xe]
	strh r2, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	strb r3, [r7, #0x1f]
	subs r0, #0x11
	str r0, [r7, #0x20]
	str r2, [r7, #8]
	mov r2, r8
	cmp r2, #1
	bls _080350C2
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [r7, #8]
_080350C2:
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r0, r0, #8
	mov r1, ip
	str r0, [r1]
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r0, r0, #8
	str r0, [r1, #4]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	add sp, #0x4c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

.syntax divided

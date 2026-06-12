
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _080234F4 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r3, r0
	ldrh r1, [r7]
	movs r4, #0
	ldrsh r0, [r7, r4]
	cmp r0, #4
	ble _08023464
	movs r1, #4
_08023464:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0x11
	lsrs r4, r0, #0x10
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r1, #4
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0x11
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x46
	ble _08023486
	movs r2, #0x46
_08023486:
	ldr r0, _080234F8 @ =0x030000C8
	adds r1, r3, r0
	adds r0, #0xf0
	adds r0, r0, r3
	mov sl, r0
	movs r0, #0
	mov sb, r0
	lsls r2, r2, #0x10
	str r2, [sp, #4]
	lsls r4, r4, #0x10
	str r4, [sp]
_0802349C:
	adds r5, r1, #0
	movs r1, #0
	mov r8, r1
	mov r6, sl
	ldr r2, [sp]
	lsrs r3, r2, #0x10
	lsls r1, r3, #0x10
	ldr r4, [sp, #4]
	asrs r2, r4, #0x10
	mov r4, sb
	lsls r0, r4, #0x10
	adds r4, r5, #0
	adds r4, #0x28
	str r4, [sp, #8]
	ldr r4, [sp, #4]
	cmp r1, r4
	bge _0802352E
	asrs r0, r0, #0x10
	mov ip, r0
	adds r4, r2, #0
_080234C4:
	asrs r0, r1, #0xd
	movs r1, #0x96
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r2, r7, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _0802351C
	ldrb r0, [r2, #1]
	cmp r0, ip
	bne _0802351C
	mov r0, r8
	cmp r0, #0
	bne _080234FC
	ldrh r0, [r2, #4]
	strh r0, [r5, #0x10]
	ldrb r1, [r2, #2]
	ldrh r0, [r2, #6]
	adds r0, r0, r1
	ldrh r1, [r7, #4]
	subs r0, r0, r1
	strh r0, [r5, #0x12]
	b _0802350E
	.align 2, 0
_080234F4: .4byte gCurTask
_080234F8: .4byte 0x030000C8
_080234FC:
	ldrh r0, [r2, #4]
	strh r0, [r6]
	ldrb r1, [r2, #2]
	ldrh r0, [r2, #6]
	adds r0, r0, r1
	ldrh r1, [r7, #4]
	subs r0, r0, r1
	strh r0, [r6, #2]
	adds r6, #4
_0802350E:
	mov r1, r8
	lsls r0, r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r0, r0, #0x10
	mov r8, r0
_0802351C:
	lsls r0, r3, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r3, r0, #0x10
	lsls r1, r3, #0x10
	asrs r0, r1, #0x10
	cmp r0, r4
	blt _080234C4
_0802352E:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	beq _08023544
	adds r0, r5, #0
	bl DisplaySprite
_08023544:
	cmp r4, #1
	ble _0802355A
	mov r2, r8
	subs r2, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r5, #0
	mov r1, sl
	bl DisplaySprites
	mov sl, r6
_0802355A:
	mov r4, sb
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	ldr r1, [sp, #8]
	lsrs r2, r0, #0x10
	mov sb, r2
	asrs r0, r0, #0x10
	cmp r0, #5
	ble _0802349C
	movs r4, #0
	mov sb, r4
	ldr r6, _080235C8 @ =gLoadedSaveGame + 0x32
_08023576:
	ldrb r0, [r6]
	mov r2, sb
	lsls r1, r2, #0x10
	asrs r4, r1, #0x10
	asrs r0, r4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080235AA
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0x91
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r5, r7, r0
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #4
	ldrh r0, [r7, #4]
	subs r0, #0x38
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	adds r0, r5, #0
	bl DisplaySprite
_080235AA:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov sb, r2
	asrs r0, r0, #0x10
	cmp r0, #6
	ble _08023576
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080235C8: .4byte gLoadedSaveGame + 0x32

.syntax divided

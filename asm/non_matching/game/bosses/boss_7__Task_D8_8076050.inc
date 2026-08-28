
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r4, _0807607C @ =gCurTask
	ldr r0, [r4]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r3, r0
	adds r0, #0x2b
	adds r2, r3, r0
	ldrb r1, [r2]
	cmp r1, #0xa
	beq _08076096
	cmp r1, #0xa
	bgt _08076080
	cmp r1, #0
	beq _08076088
	b _080761FA
	.align 2, 0
_0807607C: .4byte gCurTask
_08076080:
	cmp r1, #0xc8
	bne _08076086
	b _080761E4
_08076086:
	b _080761FA
_08076088:
	movs r0, #0xfa
	lsls r0, r0, #8
	strh r0, [r6, #0x32]
	strh r1, [r6, #0x2c]
	movs r0, #0xa
	strb r0, [r2]
	b _080761FA
_08076096:
	ldrh r0, [r6, #0x32]
	adds r0, #0x40
	strh r0, [r6, #0x32]
	movs r1, #0x32
	ldrsh r0, [r6, r1]
	ldr r2, [r6, #0x44]
	adds r2, r2, r0
	str r2, [r6, #0x44]
	ldrh r0, [r6, #0x2c]
	adds r0, #1
	strh r0, [r6, #0x2c]
	ldr r0, [r6]
	ldr r1, [r6, #0x14]
	adds r0, r0, r1
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [r6, #4]
	adds r0, r0, r2
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	movs r4, #0
	mov r8, r4
	ldr r0, _080760E8 @ =0x03000034
	adds r0, r0, r3
	mov sl, r0
_080760CC:
	mov r3, r8
	lsls r1, r3, #1
	mov r4, sl
	adds r3, r4, r1
	ldrh r2, [r3]
	movs r0, #1
	mov r4, r8
	ands r0, r4
	adds r4, r1, #0
	cmp r0, #0
	beq _080760EC
	adds r1, r2, #0
	subs r1, #0x40
	b _080760F0
	.align 2, 0
_080760E8: .4byte 0x03000034
_080760EC:
	adds r1, r2, #0
	adds r1, #0x40
_080760F0:
	ldr r0, _08076178 @ =0x000003FF
	ands r1, r0
	strh r1, [r3]
	mov r1, sl
	adds r0, r1, r4
	ldrh r4, [r0]
	mov sb, r4
	lsls r0, r4, #1
	ldr r3, _0807617C @ =gSineTable
	adds r0, r0, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r2, r0, #2
	adds r2, r2, r0
	asrs r2, r2, #0xc
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r4, r3
	lsls r0, r0, #1
	ldr r1, _0807617C @ =gSineTable
	adds r0, r0, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r1, r0, #2
	adds r1, r1, r0
	asrs r1, r1, #0xc
	ldr r3, [sp, #0x10]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov ip, r5
	ldr r1, [sp, #0x14]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r7, r3, #0
	ldrh r1, [r6, #0x2c]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08076180
	mov r0, r8
	ands r0, r2
	cmp r0, #0
	beq _080761AA
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	str r4, [sp]
	movs r0, #0x14
	str r0, [sp, #4]
	movs r3, #0
	str r3, [sp, #8]
	ldr r0, [r6, #0x48]
	str r0, [sp, #0xc]
	movs r0, #7
	movs r3, #0x80
	lsls r3, r3, #2
	bl sub_8079758
	b _080761AA
	.align 2, 0
_08076178: .4byte 0x000003FF
_0807617C: .4byte gSineTable
_08076180:
	mov r3, r8
	ands r3, r2
	cmp r3, #0
	bne _080761AA
	mov r4, ip
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	lsls r2, r7, #0x10
	asrs r2, r2, #0x10
	mov r0, sb
	str r0, [sp]
	movs r0, #0x14
	str r0, [sp, #4]
	str r3, [sp, #8]
	ldr r0, [r6, #0x48]
	str r0, [sp, #0xc]
	movs r0, #7
	movs r3, #0x80
	lsls r3, r3, #2
	bl sub_8079758
_080761AA:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #3
	bls _080760CC
	ldrh r1, [r6, #0x2c]
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _080761C8
	ldr r0, _080761E0 @ =0x00000221
	bl m4aSongNumStart
_080761C8:
	ldr r0, [r6, #0x44]
	asrs r0, r0, #8
	movs r1, #0x96
	lsls r1, r1, #1
	cmp r0, r1
	ble _080761FA
	adds r1, r6, #0
	adds r1, #0x2b
	movs r0, #0xc8
	strb r0, [r1]
	b _080761FA
	.align 2, 0
_080761E0: .4byte 0x00000221
_080761E4:
	movs r0, #0
	strb r0, [r2]
	strh r0, [r6, #0x2c]
	movs r0, #0x78
	strh r0, [r6, #0x30]
	ldr r0, _08076210 @ =0x00000221
	bl m4aSongNumStart
	ldr r1, [r4]
	ldr r0, _08076214 @ =Task_D8_8076218
	str r0, [r1, #8]
_080761FA:
	adds r0, r6, #0
	bl sub_8076328
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08076210: .4byte 0x00000221
_08076214: .4byte Task_D8_8076218

.syntax divided

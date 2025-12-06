
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	mov sb, r0
	movs r0, #0
	str r0, [sp, #0x14]
	movs r1, #0
	str r1, [sp, #0x18]
	movs r2, #0
	str r2, [sp, #0x1c]
	movs r3, #0
	str r3, [sp, #0x20]
	movs r4, #0
	str r4, [sp, #0x24]
	mov r0, sb
	ldr r4, [r0, #4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	bne _080C036C
	b _080C07C8
_080C036C:
	lsrs r0, r4, #0x1c
	cmp r0, #0
	bne _080C0394
	ldr r3, _080C0390 @ =gRefSpriteTables
	ldr r0, [r3]
	mov r1, sb
	ldrh r2, [r1, #0xc]
	ldr r0, [r0, #4]
	lsls r1, r2, #2
	adds r1, r1, r0
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	mov r8, r1
	b _080C03AA
	.align 2, 0
_080C0390: .4byte gRefSpriteTables
_080C0394:
	ldr r3, _080C0460 @ =gRefSpriteTables
	ldr r0, [r3]
	mov r1, sb
	ldrh r2, [r1, #0xc]
	ldr r1, [r0, #4]
	lsls r0, r2, #2
	adds r0, r0, r1
	lsls r1, r4, #4
	ldr r0, [r0]
	adds r0, r0, r1
	mov r8, r0
_080C03AA:
	mov r4, r8
	ldrh r0, [r4, #2]
	mov r1, sb
	strb r0, [r1, #0x1e]
	movs r0, #0x10
	ldrsh r4, [r1, r0]
	str r4, [sp]
	movs r4, #0x12
	ldrsh r1, [r1, r4]
	mov sl, r1
	mov r0, sb
	ldr r1, [r0, #8]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r1
	adds r5, r1, #0
	cmp r0, #0
	beq _080C03E4
	ldr r0, _080C0464 @ =gSpriteOffset
	movs r4, #0
	ldrsh r1, [r0, r4]
	ldr r4, [sp]
	subs r4, r4, r1
	str r4, [sp]
	movs r1, #2
	ldrsh r0, [r0, r1]
	mov r4, sl
	subs r4, r4, r0
	mov sl, r4
_080C03E4:
	mov r0, r8
	ldrh r0, [r0, #4]
	str r0, [sp, #4]
	mov r1, r8
	ldrh r1, [r1, #6]
	str r1, [sp, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080C0408
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r4, #0
	ldr r4, [sp, #0x14]
	orrs r4, r0
	str r4, [sp, #0x14]
_080C0408:
	movs r0, #0x20
	ands r0, r5
	cmp r0, #0
	beq _080C0468
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r4, #0
	ldr r4, [sp, #0x14]
	orrs r4, r0
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	movs r0, #0x1f
	ands r0, r5
	lsls r0, r0, #9
	ldr r4, [sp, #0x18]
	orrs r4, r0
	str r4, [sp, #0x18]
	movs r0, #0x40
	ands r0, r5
	cmp r0, #0
	beq _080C04DE
	ldr r4, [sp, #4]
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x11
	ldr r4, [sp]
	subs r4, r4, r0
	str r4, [sp]
	ldr r4, [sp, #8]
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x11
	mov r4, sl
	subs r4, r4, r0
	mov sl, r4
	ldr r0, [sp, #4]
	lsls r0, r0, #1
	str r0, [sp, #4]
	ldr r4, [sp, #8]
	lsls r4, r4, #1
	str r4, [sp, #8]
	ldr r0, [sp, #0x14]
	orrs r0, r1
	str r0, [sp, #0x14]
	b _080C04DE
	.align 2, 0
_080C0460: .4byte gRefSpriteTables
_080C0464: .4byte gSpriteOffset
_080C0468:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r5
	cmp r0, #0
	beq _080C0484
	mov r1, r8
	movs r4, #0xa
	ldrsh r0, [r1, r4]
	ldr r1, [sp, #8]
	subs r0, r1, r0
	mov r4, sl
	subs r4, r4, r0
	mov sl, r4
	b _080C0490
_080C0484:
	mov r1, r8
	movs r4, #0xa
	ldrsh r0, [r1, r4]
	mov r1, sl
	subs r1, r1, r0
	mov sl, r1
_080C0490:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r5
	cmp r0, #0
	beq _080C04AC
	mov r4, r8
	movs r1, #8
	ldrsh r0, [r4, r1]
	ldr r4, [sp, #4]
	subs r0, r4, r0
	ldr r1, [sp]
	subs r1, r1, r0
	str r1, [sp]
	b _080C04B8
_080C04AC:
	mov r4, r8
	movs r1, #8
	ldrsh r0, [r4, r1]
	ldr r4, [sp]
	subs r4, r4, r0
	str r4, [sp]
_080C04B8:
	lsrs r0, r5, #0xb
	movs r6, #1
	ands r0, r6
	mov r4, r8
	ldrh r1, [r4]
	lsls r4, r1, #0x10
	lsrs r1, r4, #0x1f
	cmp r0, r1
	beq _080C04CE
	movs r0, #1
	str r0, [sp, #0x20]
_080C04CE:
	lsrs r1, r5, #0xa
	lsrs r0, r4, #0x1e
	eors r0, r1
	ands r0, r6
	cmp r0, #0
	beq _080C04DE
	movs r1, #1
	str r1, [sp, #0x24]
_080C04DE:
	ldr r4, [sp, #4]
	cmp r4, #0
	beq _080C0506
	ldr r1, [sp]
	adds r0, r1, r4
	cmp r0, #0
	bge _080C04EE
	b _080C07C8
_080C04EE:
	cmp r1, #0xf0
	ble _080C04F4
	b _080C07C8
_080C04F4:
	ldr r0, [sp, #8]
	add r0, sl
	cmp r0, #0
	bge _080C04FE
	b _080C07C8
_080C04FE:
	mov r4, sl
	cmp r4, #0xa0
	ble _080C0506
	b _080C07C8
_080C0506:
	mov r0, sb
	ldrb r1, [r0, #0x1f]
	lsls r1, r1, #0xc
	ldr r4, [sp, #0x1c]
	adds r1, r4, r1
	lsls r1, r1, #0x10
	movs r0, #0xc0
	lsls r0, r0, #1
	ands r0, r5
	lsls r0, r0, #3
	ldr r4, [sp, #0x14]
	orrs r4, r0
	str r4, [sp, #0x14]
	movs r0, #0xc0
	lsls r0, r0, #6
	ands r0, r5
	lsls r0, r0, #0xe
	orrs r0, r1
	lsrs r0, r0, #0x10
	str r0, [sp, #0x1c]
	ldr r0, [r3]
	ldr r1, [r0, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x10]
	ldr r0, _080C06C0 @ =gOamFreeIndex
	ldrb r0, [r0]
	mov r1, sb
	strb r0, [r1, #0x1d]
	movs r2, #0
	str r2, [sp, #0xc]
	mov r3, r8
	ldrh r3, [r3, #2]
	cmp r2, r3
	blo _080C0550
	b _080C0678
_080C0550:
	mov r4, sb
	ldrh r0, [r4, #0x14]
	movs r2, #0xf8
	lsls r2, r2, #3
	adds r1, r2, #0
	ands r0, r1
	lsrs r0, r0, #6
	bl OamMalloc
	adds r4, r0, #0
	ldr r0, _080C06C4 @ =iwram_end
	ldr r0, [r0]
	cmp r0, r4
	bne _080C056E
	b _080C07C8
_080C056E:
	mov r3, r8
	ldrh r0, [r3]
	ldr r2, _080C06C8 @ =0x00003FFF
	adds r1, r2, #0
	ands r1, r0
	ldr r3, [sp, #0xc]
	adds r1, r1, r3
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, [sp, #0x10]
	adds r0, r1, r0
	ldr r2, _080C06CC @ =0x040000D4
	str r0, [r2]
	str r4, [r2, #4]
	ldr r0, _080C06D0 @ =0x80000003
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r1, [r4, #2]
	ldr r3, _080C06D4 @ =0x000001FF
	adds r0, r3, #0
	adds r7, r0, #0
	ands r7, r1
	ldrh r2, [r4]
	ldrb r5, [r4]
	movs r0, #0xfe
	lsls r0, r0, #8
	adds r3, r0, #0
	ands r3, r1
	strh r3, [r4, #2]
	adds r1, r0, #0
	ands r1, r2
	strh r1, [r4]
	ldr r0, [sp, #0x20]
	ldr r2, [sp, #0x24]
	orrs r0, r2
	cmp r0, #0
	beq _080C060E
	adds r0, r1, #0
	movs r1, #0xc0
	lsls r1, r1, #8
	ands r0, r1
	lsrs r2, r0, #0xc
	adds r0, r3, #0
	ands r0, r1
	lsrs r0, r0, #0xe
	orrs r2, r0
	adds r6, r2, #0
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _080C05EE
	movs r0, #0x80
	lsls r0, r0, #6
	adds r1, r0, #0
	adds r0, r3, #0
	eors r0, r1
	strh r0, [r4, #2]
	lsls r0, r2, #1
	ldr r1, _080C06D8 @ =gOamShapesSizes+1
	adds r0, r0, r1
	ldrb r0, [r0]
	ldr r2, [sp, #8]
	subs r0, r2, r0
	subs r5, r0, r5
_080C05EE:
	ldr r3, [sp, #0x24]
	cmp r3, #0
	beq _080C060E
	ldrh r0, [r4, #2]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	eors r0, r1
	strh r0, [r4, #2]
	lsls r0, r6, #1
	ldr r3, _080C06DC @ =gOamShapesSizes
	adds r0, r0, r3
	ldrb r0, [r0]
	ldr r1, [sp, #4]
	subs r0, r1, r0
	subs r7, r0, r7
_080C060E:
	mov r3, sl
	adds r2, r3, r5
	movs r0, #0xff
	ands r2, r0
	ldrh r0, [r4]
	adds r2, r2, r0
	ldr r1, [sp]
	adds r0, r1, r7
	ldr r3, _080C06D4 @ =0x000001FF
	adds r1, r3, #0
	ands r0, r1
	ldrh r1, [r4, #2]
	adds r0, r0, r1
	ldr r3, [sp, #0x14]
	orrs r2, r3
	strh r2, [r4]
	ldr r1, [sp, #0x18]
	orrs r0, r1
	strh r0, [r4, #2]
	ldrh r0, [r4, #4]
	ldr r3, [sp, #0x1c]
	orrs r3, r0
	strh r3, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r1, #0
	ands r2, r0
	cmp r2, #0
	beq _080C0654
	ldr r2, _080C06E0 @ =0x000003FF
	adds r1, r2, #0
	adds r0, r3, #0
	ands r0, r1
	adds r0, r3, r0
	strh r0, [r4, #4]
_080C0654:
	mov r3, sb
	ldr r0, [r3]
	ldr r1, _080C06E4 @ =0xF9FF0000
	adds r0, r0, r1
	lsrs r0, r0, #5
	ldrh r2, [r4, #4]
	adds r0, r0, r2
	strh r0, [r4, #4]
	ldr r0, [sp, #0xc]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xc]
	mov r3, r8
	ldrh r3, [r3, #2]
	cmp r0, r3
	bhs _080C0678
	b _080C0550
_080C0678:
	mov r4, sb
	ldr r0, [r4, #4]
	lsrs r0, r0, #0x1c
	cmp r0, #1
	beq _080C0684
	b _080C07C8
_080C0684:
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r0, r1
	cmp r0, #0
	bne _080C0692
	b _080C07C8
_080C0692:
	ldr r0, _080C06E8 @ =0xFBFFFFFF
	ands r1, r0
	str r1, [r4, #8]
	mov r1, r8
	ldr r0, [r1, #0xc]
	ldr r1, _080C06EC @ =0x00FFFFFF
	ands r1, r0
	lsrs r0, r0, #0x18
	str r0, [sp, #0x28]
	ldr r0, _080C06F0 @ =gRefSpriteTables
	ldr r2, [r0]
	lsls r1, r1, #2
	ldr r0, [r2, #0x18]
	adds r0, r0, r1
	mov sl, r0
	ldr r0, [r0]
	cmp r0, #0
	blt _080C06F4
	movs r3, #0x20
	mov ip, r3
	ldr r2, [r2, #0x10]
	b _080C06FA
	.align 2, 0
_080C06C0: .4byte gOamFreeIndex
_080C06C4: .4byte iwram_end
_080C06C8: .4byte 0x00003FFF
_080C06CC: .4byte 0x040000D4
_080C06D0: .4byte 0x80000003
_080C06D4: .4byte 0x000001FF
_080C06D8: .4byte gOamShapesSizes+1
_080C06DC: .4byte gOamShapesSizes
_080C06E0: .4byte 0x000003FF
_080C06E4: .4byte 0xF9FF0000
_080C06E8: .4byte 0xFBFFFFFF
_080C06EC: .4byte 0x00FFFFFF
_080C06F0: .4byte gRefSpriteTables
_080C06F4:
	movs r4, #0x40
	mov ip, r4
	ldr r2, [r2, #0x14]
_080C06FA:
	mov r8, r2
	mov r3, ip
	mov r1, sl
	adds r1, #4
	mov sl, r1
	subs r1, #4
	ldm r1!, {r0}
	muls r0, r3, r0
	mov r4, r8
	adds r2, r4, r0
	mov r0, sb
	ldr r6, [r0]
	movs r7, #1
	ldr r1, [sp, #0x28]
	cmp r7, r1
	bhs _080C0790
	ldr r4, _080C0744 @ =gVramGraphicsCopyQueue
	mov sb, r4
	ldr r5, _080C0748 @ =gVramGraphicsCopyQueueIndex
_080C0720:
	mov r1, sl
	adds r1, #4
	mov sl, r1
	subs r1, #4
	ldm r1!, {r0}
	mov r4, ip
	muls r4, r0, r4
	adds r0, r4, #0
	mov r1, r8
	adds r4, r1, r0
	adds r0, r2, r3
	cmp r0, r4
	bne _080C074C
	mov r4, ip
	adds r0, r3, r4
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	b _080C0784
	.align 2, 0
_080C0744: .4byte gVramGraphicsCopyQueue
_080C0748: .4byte gVramGraphicsCopyQueueIndex
_080C074C:
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sb
	str r2, [r0]
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	mov r1, sb
	adds r1, #4
	adds r0, r0, r1
	str r6, [r0]
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sb
	strh r3, [r0, #8]
	ldrb r0, [r5]
	adds r0, #1
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r5]
	adds r6, r6, r3
	mov r3, ip
	adds r2, r4, #0
_080C0784:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r0, [sp, #0x28]
	cmp r7, r0
	blo _080C0720
_080C0790:
	ldr r4, _080C07D8 @ =gVramGraphicsCopyQueueIndex
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080C07DC @ =gVramGraphicsCopyQueue
	adds r0, r0, r1
	str r2, [r0]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080C07DC @ =gVramGraphicsCopyQueue
	adds r1, #4
	adds r0, r0, r1
	str r6, [r0]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _080C07DC @ =gVramGraphicsCopyQueue
	adds r0, r0, r2
	strh r3, [r0, #8]
	ldrb r0, [r4]
	adds r0, #1
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4]
_080C07C8:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C07D8: .4byte gVramGraphicsCopyQueueIndex
_080C07DC: .4byte gVramGraphicsCopyQueue

.syntax divided

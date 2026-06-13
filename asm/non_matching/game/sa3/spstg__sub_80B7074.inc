
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	ldr r0, _080B70CC @ =gCurTask
	ldr r0, [r0]
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r7
	mov sb, r0
	ldr r1, _080B70D0 @ =gUnknown_080E30DC
	mov r0, sp
	movs r2, #0x18
	bl memcpy
	add r4, sp, #0x18
	ldr r1, _080B70D4 @ =gUnknown_080E30F4
	adds r0, r4, #0
	movs r2, #0x18
	bl memcpy
	movs r5, #0
	ldr r0, _080B70D8 @ =gStageData
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	bne _080B70F8
	ldr r1, _080B70DC @ =0x0300027E
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080B70E8
	ldr r2, _080B70E0 @ =0x0300004C
	adds r0, r7, r2
	bl DisplaySprite
	ldr r3, _080B70E4 @ =0x03000074
	adds r0, r7, r3
	bl DisplaySprite
	b _080B715E
	.align 2, 0
_080B70CC: .4byte gCurTask
_080B70D0: .4byte gUnknown_080E30DC
_080B70D4: .4byte gUnknown_080E30F4
_080B70D8: .4byte gStageData
_080B70DC: .4byte 0x0300027E
_080B70E0: .4byte 0x0300004C
_080B70E4: .4byte 0x03000074
_080B70E8:
	ldr r1, _080B70F4 @ =0x0300009C
	adds r0, r7, r1
	bl DisplaySprite
	b _080B715E
	.align 2, 0
_080B70F4: .4byte 0x0300009C
_080B70F8:
	ldr r2, _080B72B4 @ =0x03000074
	adds r0, r7, r2
	bl DisplaySprite
	ldr r3, _080B72B8 @ =0x0300004C
	adds r0, r7, r3
	bl DisplaySprite
	ldr r1, _080B72BC @ =0x0300009C
	adds r0, r7, r1
	bl DisplaySprite
	ldr r2, _080B72C0 @ =0x030000C4
	adds r0, r7, r2
	bl DisplaySprite
	ldr r3, _080B72C4 @ =0x0300027E
	adds r0, r7, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne _080B717A
	ldr r5, _080B72C8 @ =0x030000EC
	adds r6, r7, r5
	ldr r0, _080B72CC @ =0x03000282
	adds r4, r7, r0
	ldrb r1, [r4]
	movs r5, #1
	movs r0, #1
	ands r0, r1
	adds r0, #0xc
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	ldr r1, _080B72D0 @ =0x03000114
	adds r6, r7, r1
	ldrb r0, [r4]
	eors r0, r5
	ands r0, r5
	adds r0, #0xe
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	ldr r5, _080B72D4 @ =0x0000FFF0
_080B715E:
	ldr r0, _080B72D8 @ =0x0000027E
	add r0, sb
	ldrb r0, [r0]
	cmp r0, #0
	bne _080B717A
	movs r2, #0xa1
	lsls r2, r2, #2
	add r2, sb
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
_080B717A:
	movs r1, #0xa1
	lsls r1, r1, #2
	add r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	movs r3, #0x80
	lsls r3, r3, #8
	str r3, [sp, #0x34]
	cmp r0, #0
	blt _080B7192
	ldrh r0, [r1]
	str r0, [sp, #0x34]
_080B7192:
	ldrh r4, [r1]
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #1
	movs r1, #0x54
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x30]
	lsrs r4, r4, #5
	movs r6, #0
	lsls r5, r5, #0x10
	str r5, [sp, #0x40]
	lsls r4, r4, #0x10
	str r4, [sp, #0x3c]
	ldr r1, _080B72DC @ =gSineTable
	mov r8, r1
	ldr r2, _080B72E0 @ =0x000003FF
	mov sl, r2
_080B71BA:
	movs r0, #0x92
	adds r1, r6, #0
	muls r1, r0, r1
	ldr r3, [sp, #0x30]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	movs r4, #0
	lsls r7, r6, #3
	adds r5, r6, #1
	str r5, [sp, #0x38]
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
_080B71D4:
	lsls r2, r4, #1
	mov r0, sp
	adds r3, r0, r2
	movs r0, #0x92
	muls r0, r4, r0
	adds r0, r5, r0
	mov r1, sl
	ands r0, r1
	lsls r0, r0, #1
	add r0, r8
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #7
	subs r1, r1, r4
	muls r0, r1, r0
	asrs r0, r0, #9
	strh r0, [r3]
	add r2, sp
	adds r2, #0x18
	movs r0, #0x46
	muls r0, r4, r0
	adds r0, r5, r0
	mov r3, sl
	ands r0, r3
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #1
	add r0, r8
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r0, r1, r0
	asrs r0, r0, #9
	strh r0, [r2]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #6
	bls _080B71D4
	mov r0, sp
	ldr r1, [sp, #0x34]
	bl sa3__sub_80B1560
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	add r0, sp, #0x18
	ldr r1, [sp, #0x34]
	bl sa3__sub_80B1560
	lsls r4, r4, #0x10
	adds r2, r7, r6
	lsls r2, r2, #4
	adds r2, r2, r6
	ldr r5, [sp, #0x3c]
	asrs r1, r5, #0x10
	adds r2, r2, r1
	mov r1, sl
	ands r2, r1
	lsls r1, r2, #1
	add r1, r8
	movs r5, #0
	ldrsh r3, [r1, r5]
	lsls r1, r3, #2
	adds r1, r1, r3
	asrs r1, r1, #0xb
	movs r3, #0xd8
	lsls r3, r3, #0xf
	adds r4, r4, r3
	asrs r4, r4, #0x10
	adds r4, r4, r1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r0, r0, #0x10
	movs r5, #0x80
	lsls r5, r5, #1
	adds r2, r2, r5
	lsls r2, r2, #1
	add r2, r8
	movs r1, #0
	ldrsh r2, [r2, r1]
	lsls r1, r2, #2
	adds r1, r1, r2
	asrs r1, r1, #0xb
	movs r2, #0xba
	lsls r2, r2, #0xf
	adds r0, r0, r2
	asrs r0, r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, [sp, #0x40]
	asrs r1, r3, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, _080B72E4 @ =0x0000027F
	add r0, sb
	ldrb r0, [r0]
	asrs r0, r6
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B72E8
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	adds r5, #0x3c
	adds r0, r0, r5
	mov r1, sb
	adds r6, r1, r0
	b _080B72EE
	.align 2, 0
_080B72B4: .4byte 0x03000074
_080B72B8: .4byte 0x0300004C
_080B72BC: .4byte 0x0300009C
_080B72C0: .4byte 0x030000C4
_080B72C4: .4byte 0x0300027E
_080B72C8: .4byte 0x030000EC
_080B72CC: .4byte 0x03000282
_080B72D0: .4byte 0x03000114
_080B72D4: .4byte 0x0000FFF0
_080B72D8: .4byte 0x0000027E
_080B72DC: .4byte gSineTable
_080B72E0: .4byte 0x000003FF
_080B72E4: .4byte 0x0000027F
_080B72E8:
	movs r6, #0x95
	lsls r6, r6, #2
	add r6, sb
_080B72EE:
	strh r4, [r6, #0x10]
	strh r2, [r6, #0x12]
	adds r0, r6, #0
	bl DisplaySprite
	ldr r2, [sp, #0x38]
	lsls r0, r2, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #6
	bhi _080B7304
	b _080B71BA
_080B7304:
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

.syntax divided


.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r6, r0, #0
	movs r1, #0
	ldrb r2, [r6]
	ldrb r0, [r6, #1]
	cmp r0, #1
	bne _08091E9E
	movs r1, #1
_08091E9E:
	movs r0, #0x8a
	lsls r0, r0, #1
	adds r7, r6, r0
	ldr r0, [r6, #0x28]
	str r0, [r7]
	ldr r3, _08092094 @ =gUnknown_080D73D0
	lsls r2, r2, #1
	adds r2, r1, r2
	lsls r2, r2, #3
	adds r0, r3, #4
	adds r0, r2, r0
	ldr r1, [r0]
	lsls r1, r1, #5
	ldr r0, [r6, #0x28]
	adds r0, r0, r1
	str r0, [r6, #0x28]
	adds r2, r2, r3
	ldrh r0, [r2]
	movs r1, #0
	mov sb, r1
	movs r4, #0
	strh r0, [r7, #0xc]
	ldrb r0, [r2, #2]
	strb r0, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	ldr r0, [r6, #0x4c]
	asrs r0, r0, #8
	strh r0, [r7, #0x10]
	ldr r0, [r6, #0x50]
	asrs r0, r0, #8
	strh r0, [r7, #0x12]
	movs r2, #0xc0
	mov r8, r2
	mov r3, r8
	strh r3, [r7, #0x14]
	strh r4, [r7, #0xe]
	strh r4, [r7, #0x16]
	movs r5, #0x10
	strb r5, [r7, #0x1c]
	mov r0, sb
	strb r0, [r7, #0x1f]
	str r4, [r7, #8]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	movs r1, #0xc6
	lsls r1, r1, #1
	adds r7, r6, r1
	ldr r0, [r6, #0x28]
	str r0, [r7]
	ldr r2, _08092098 @ =gUnknown_080D7430
	ldr r1, [r2, #4]
	lsls r1, r1, #5
	ldr r0, [r6, #0x28]
	adds r0, r0, r1
	str r0, [r6, #0x28]
	ldrh r0, [r2]
	strh r0, [r7, #0xc]
	ldrb r0, [r2, #2]
	strb r0, [r7, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	ldr r0, [r6, #0x64]
	asrs r0, r0, #8
	strh r0, [r7, #0x10]
	ldr r0, [r6, #0x68]
	asrs r0, r0, #8
	strh r0, [r7, #0x12]
	mov r2, r8
	strh r2, [r7, #0x14]
	strh r4, [r7, #0xe]
	strh r4, [r7, #0x16]
	strb r5, [r7, #0x1c]
	mov r3, sb
	strb r3, [r7, #0x1f]
	str r4, [r7, #8]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	movs r0, #0x9e
	lsls r0, r0, #1
	adds r7, r6, r0
	ldr r0, [r6, #0x28]
	str r0, [r7]
	ldr r2, _0809209C @ =gUnknown_080D7438
	ldr r1, [r2, #4]
	lsls r1, r1, #5
	ldr r0, [r6, #0x28]
	adds r0, r0, r1
	str r0, [r6, #0x28]
	ldrh r0, [r2]
	strh r0, [r7, #0xc]
	ldrb r0, [r2, #2]
	strb r0, [r7, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	ldr r0, [r6, #0x54]
	asrs r0, r0, #8
	strh r0, [r7, #0x10]
	ldr r0, [r6, #0x58]
	asrs r0, r0, #8
	strh r0, [r7, #0x12]
	mov r1, r8
	strh r1, [r7, #0x14]
	strh r4, [r7, #0xe]
	strh r4, [r7, #0x16]
	strb r5, [r7, #0x1c]
	mov r2, sb
	strb r2, [r7, #0x1f]
	str r4, [r7, #8]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r7, r6, #0
	adds r7, #0x74
	ldr r1, [r6, #0x28]
	str r1, [r6, #0x74]
	ldr r2, _080920A0 @ =gUnknown_080D7440
	ldr r0, [r2, #4]
	lsls r0, r0, #5
	adds r1, r1, r0
	str r1, [r6, #0x28]
	ldrh r0, [r2]
	strh r0, [r7, #0xc]
	ldrb r0, [r2, #2]
	strb r0, [r7, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	ldr r0, [r6, #0x34]
	asrs r0, r0, #8
	strh r0, [r7, #0x10]
	ldr r0, [r6, #0x38]
	asrs r0, r0, #8
	strh r0, [r7, #0x12]
	movs r0, #0x80
	strh r0, [r7, #0x14]
	strh r4, [r7, #0xe]
	strh r4, [r7, #0x16]
	strb r5, [r7, #0x1c]
	mov r3, sb
	strb r3, [r7, #0x1f]
	str r4, [r7, #8]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	movs r0, #0xb2
	lsls r0, r0, #1
	adds r7, r6, r0
	ldr r0, [r6, #0x28]
	str r0, [r7]
	ldr r2, _080920A4 @ =gUnknown_080D73C8
	ldr r1, [r2, #4]
	lsls r1, r1, #5
	ldr r0, [r6, #0x28]
	adds r0, r0, r1
	str r0, [r6, #0x28]
	ldrh r0, [r2]
	strh r0, [r7, #0xc]
	ldrb r0, [r2, #2]
	strb r0, [r7, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	ldr r0, [r6, #0x5c]
	asrs r0, r0, #8
	strh r0, [r7, #0x10]
	ldr r0, [r6, #0x60]
	asrs r0, r0, #8
	strh r0, [r7, #0x12]
	mov r1, r8
	strh r1, [r7, #0x14]
	strh r4, [r7, #0xe]
	strh r4, [r7, #0x16]
	strb r5, [r7, #0x1c]
	mov r2, sb
	strb r2, [r7, #0x1f]
	str r4, [r7, #8]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	movs r3, #0xbd
	lsls r3, r3, #2
	adds r4, r6, r3
	movs r3, #0
	adds r0, r6, #0
	adds r0, #0xec
	str r0, [sp, #8]
	ldr r1, _080920A8 @ =gUnknown_080D7448
	mov r8, r1
	movs r5, #0
	ldrb r2, [r1, #2]
	mov sl, r2
	ldr r0, [r1, #4]
	lsls r0, r0, #5
	mov sb, r0
_0809202C:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r0, #0x9c
	adds r7, r6, r0
	ldr r0, [r6, #0x28]
	str r0, [r7]
	ldr r0, [r6, #0x28]
	add r0, sb
	str r0, [r6, #0x28]
	mov r1, r8
	ldrh r0, [r1]
	strh r0, [r7, #0xc]
	mov r2, sl
	strb r2, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	ldr r0, [r6, #0x3c]
	asrs r0, r0, #8
	strh r0, [r7, #0x10]
	ldr r0, [r6, #0x40]
	asrs r0, r0, #8
	strh r0, [r7, #0x12]
	movs r0, #0x80
	strh r0, [r7, #0x14]
	strh r5, [r7, #0xe]
	strh r5, [r7, #0x16]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	movs r0, #0
	strb r0, [r7, #0x1f]
	cmp r3, #0
	beq _080920AC
	movs r0, #0xe1
	str r0, [r7, #8]
	strh r5, [r4]
	ldrh r0, [r6, #0x14]
	strh r0, [r4, #2]
	ldrh r0, [r6, #0x16]
	strh r0, [r4, #4]
	ldrh r0, [r7, #0x10]
	strh r0, [r4, #6]
	ldrh r0, [r7, #0x12]
	strh r0, [r4, #8]
	adds r0, r7, #0
	adds r1, r4, #0
	str r3, [sp, #0x10]
	bl TransformSprite
	ldr r3, [sp, #0x10]
	b _080920AE
	.align 2, 0
_08092094: .4byte gUnknown_080D73D0
_08092098: .4byte gUnknown_080D7430
_0809209C: .4byte gUnknown_080D7438
_080920A0: .4byte gUnknown_080D7440
_080920A4: .4byte gUnknown_080D73C8
_080920A8: .4byte gUnknown_080D7448
_080920AC:
	str r3, [r7, #8]
_080920AE:
	adds r0, r7, #0
	str r3, [sp, #0x10]
	bl UpdateSpriteAnimation
	ldr r3, [sp, #0x10]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	bls _0809202C
	ldr r7, [sp, #8]
	ldr r0, [r6, #0x28]
	str r0, [r7]
	ldr r2, _080921A0 @ =gUnknown_080D7450
	ldr r1, [r2, #4]
	lsls r1, r1, #5
	ldr r0, [r6, #0x28]
	adds r0, r0, r1
	str r0, [r6, #0x28]
	ldrh r0, [r2]
	movs r1, #0
	mov sb, r1
	movs r1, #0
	strh r0, [r7, #0xc]
	ldrb r0, [r2, #2]
	strb r0, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	ldr r0, [r6, #0x44]
	asrs r0, r0, #8
	strh r0, [r7, #0x10]
	ldr r0, [r6, #0x48]
	asrs r0, r0, #8
	strh r0, [r7, #0x12]
	movs r0, #0x80
	strh r0, [r7, #0x14]
	strh r1, [r7, #0xe]
	strh r1, [r7, #0x16]
	movs r2, #0x10
	mov r8, r2
	mov r3, r8
	strb r3, [r7, #0x1c]
	mov r0, sb
	strb r0, [r7, #0x1f]
	str r1, [r7, #8]
	adds r0, r7, #0
	str r1, [sp, #0xc]
	bl UpdateSpriteAnimation
	movs r2, #0xda
	lsls r2, r2, #1
	adds r7, r6, r2
	ldr r0, [r6, #0x28]
	str r0, [r7]
	ldr r4, _080921A4 @ =gUnknown_080D7458
	ldr r5, [r4, #4]
	lsls r5, r5, #5
	ldr r0, [r6, #0x28]
	adds r0, r0, r5
	str r0, [r6, #0x28]
	ldrh r0, [r4]
	strh r0, [r7, #0xc]
	ldrb r0, [r6, #2]
	ldrb r3, [r4, #2]
	adds r0, r0, r3
	strb r0, [r7, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	ldr r0, [r6, #0x3c]
	asrs r0, r0, #8
	strh r0, [r7, #0x10]
	ldr r0, [r6, #0x40]
	asrs r0, r0, #8
	strh r0, [r7, #0x12]
	movs r0, #0x40
	strh r0, [r7, #0x14]
	ldr r1, [sp, #0xc]
	strh r1, [r7, #0xe]
	strh r1, [r7, #0x16]
	mov r0, r8
	strb r0, [r7, #0x1c]
	mov r2, sb
	strb r2, [r7, #0x1f]
	str r1, [r7, #8]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	movs r3, #0
	mov sl, r4
	str r5, [sp]
	movs r0, #0
	mov sb, r0
_08092168:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #3
	movs r1, #0xee
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r7, r6, r0
	ldr r0, [r6, #0x28]
	str r0, [r7]
	ldr r0, [r6, #0x28]
	ldr r2, [sp]
	adds r0, r0, r2
	str r0, [r6, #0x28]
	ldr r0, _080921A8 @ =gLoadedSaveGame
	lsls r1, r3, #1
	adds r0, #4
	adds r1, r1, r0
	ldrh r2, [r1]
	ldr r0, _080921AC @ =0x0000FFFF
	cmp r2, r0
	beq _080921C2
	strb r2, [r7, #0x1a]
	ldrh r0, [r1]
	cmp r0, #0xff
	bls _080921B4
	ldr r0, _080921B0 @ =gUnknown_080D7460
	ldrh r0, [r0]
	b _080921B8
	.align 2, 0
_080921A0: .4byte gUnknown_080D7450
_080921A4: .4byte gUnknown_080D7458
_080921A8: .4byte gLoadedSaveGame
_080921AC: .4byte 0x0000FFFF
_080921B0: .4byte gUnknown_080D7460
_080921B4:
	mov r1, sl
	ldrh r0, [r1]
_080921B8:
	strh r0, [r7, #0xc]
	ldrb r0, [r6, #5]
	adds r0, #1
	strb r0, [r6, #5]
	b _080921CC
_080921C2:
	mov r2, sl
	ldrh r0, [r2]
	strh r0, [r7, #0xc]
	mov r0, sb
	strb r0, [r7, #0x1a]
_080921CC:
	movs r2, #1
	rsbs r2, r2, #0
	mov r1, sp
	strb r2, [r1, #4]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	ldr r0, [r6, #0x44]
	asrs r0, r0, #8
	movs r4, #0
	strh r0, [r7, #0x10]
	ldr r0, [r6, #0x48]
	asrs r0, r0, #8
	strh r0, [r7, #0x12]
	movs r0, #0x40
	mov r8, r0
	mov r1, r8
	strh r1, [r7, #0x14]
	strh r4, [r7, #0xe]
	strh r4, [r7, #0x16]
	movs r5, #0x10
	strb r5, [r7, #0x1c]
	mov r2, sb
	strb r2, [r7, #0x1f]
	str r4, [r7, #8]
	adds r0, r7, #0
	str r3, [sp, #0x10]
	bl UpdateSpriteAnimation
	ldr r3, [sp, #0x10]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #5
	bls _08092168
	ldrb r0, [r6, #5]
	strb r0, [r6, #6]
	movs r3, #0xb3
	lsls r3, r3, #2
	adds r7, r6, r3
	ldr r0, [r6, #0x28]
	str r0, [r7]
	ldr r2, _08092270 @ =gUnknown_080D7468
	ldr r1, [r2, #4]
	lsls r1, r1, #5
	ldr r0, [r6, #0x28]
	adds r0, r0, r1
	str r0, [r6, #0x28]
	ldrh r0, [r2]
	movs r1, #0
	strh r0, [r7, #0xc]
	ldrb r0, [r2, #2]
	strb r0, [r7, #0x1a]
	ldrb r0, [r7, #0x1b]
	mov r2, sp
	ldrb r2, [r2, #4]
	orrs r0, r2
	strb r0, [r7, #0x1b]
	ldr r0, [r6, #0x6c]
	asrs r0, r0, #8
	strh r0, [r7, #0x10]
	ldr r0, [r6, #0x70]
	asrs r0, r0, #8
	strh r0, [r7, #0x12]
	mov r3, r8
	strh r3, [r7, #0x14]
	strh r4, [r7, #0xe]
	strh r4, [r7, #0x16]
	strb r5, [r7, #0x1c]
	strb r1, [r7, #0x1f]
	str r4, [r7, #8]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08092270: .4byte gUnknown_080D7468

.syntax divided

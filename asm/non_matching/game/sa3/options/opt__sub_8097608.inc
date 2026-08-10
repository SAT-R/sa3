
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp]
	movs r4, #0
	ldrb r0, [r6, #0x18]
	mov sl, r0
	ldrb r1, [r6, #2]
	adds r0, r1, r0
	cmp r0, #0xb
	bhi _08097634
	mov r0, sl
	adds r0, #0xff
	adds r0, r1, r0
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_08097634:
	adds r1, r6, #0
	adds r1, #0xd
	adds r0, r1, r5
	strb r4, [r0]
	movs r7, #0
	str r1, [sp, #4]
_08097640:
	ldrb r1, [r6, #2]
	mov r2, sl
	adds r0, r1, r2
	cmp r0, #0xb
	bhi _080976EC
	mov r0, sl
	adds r0, #0xff
	adds r0, r1, r0
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, [sp]
	lsls r3, r0, #4
	subs r1, r3, r0
	lsls r1, r1, #4
	ldr r2, _08097690 @ =0x000008F8
	adds r1, r1, r2
	adds r1, r6, r1
	lsls r2, r7, #2
	adds r0, r2, r7
	lsls r0, r0, #3
	adds r4, r1, r0
	lsls r1, r7, #1
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r0, r6, #0
	adds r0, #0x3e
	adds r1, r0, r1
	ldrh r0, [r1]
	mov r8, r3
	mov sb, r2
	ldr r2, _08097694 @ =0x0000FFFF
	cmp r0, r2
	beq _080976B6
	cmp r0, #0xff
	bls _0809769C
	ldr r0, _08097698 @ =gUnknown_080D8C64
	b _0809769E
	.align 2, 0
_08097690: .4byte 0x000008F8
_08097694: .4byte 0x0000FFFF
_08097698: .4byte gUnknown_080D8C64
_0809769C:
	ldr r0, _08097708 @ =gUnknown_080D8C5C
_0809769E:
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	ldrh r0, [r1]
	strb r0, [r4, #0x1a]
	ldr r0, [sp, #4]
	adds r1, r0, r5
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
_080976B6:
	mov r2, r8
	ldr r0, [sp]
	subs r1, r2, r0
	lsls r1, r1, #4
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r1, r2
	adds r1, r6, r1
	mov r2, sb
	adds r0, r2, r7
	lsls r0, r0, #3
	adds r4, r1, r0
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #1
	adds r0, r7, r0
	adds r1, r6, #0
	adds r1, #0xc2
	adds r1, r1, r0
	ldrb r0, [r1]
	ldr r1, _0809770C @ =gUnknown_080D8C54
	ldrb r1, [r1, #2]
	adds r0, r0, r1
	strb r0, [r4, #0x1a]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
_080976EC:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #5
	bls _08097640
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08097708: .4byte gUnknown_080D8C5C
_0809770C: .4byte gUnknown_080D8C54

.syntax divided

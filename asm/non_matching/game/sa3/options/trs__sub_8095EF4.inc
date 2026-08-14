
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	adds r6, r0, #0
	movs r0, #0
	str r0, [sp, #0x10]
	ldr r1, _08095FBC @ =gUnknown_080D8BE2
	mov r0, sp
	movs r2, #5
	bl memcpy
	ldrb r1, [r6, #0x1e]
	ldrb r2, [r6, #0x1f]
	movs r3, #0
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	str r0, [sp, #0x14]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #4
	str r0, [sp, #0x18]
_08095F26:
	movs r1, #0
	mov r8, r1
	lsls r0, r3, #1
	ldr r2, [sp, #0x14]
	adds r0, r0, r2
	ldr r1, [sp, #0x18]
	adds r0, r0, r1
	ldr r2, _08095FC0 @ =0x0000054C
	adds r1, r6, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #4
	bhi _08095F46
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _08095FC4
_08095F46:
	movs r1, #1
	str r1, [sp, #0x10]
	movs r4, #0
	lsls r7, r3, #3
	adds r5, r6, #0
	adds r5, #0x78
	movs r2, #0x7c
	adds r2, r2, r6
	mov sb, r2
	adds r3, #1
	str r3, [sp, #0x24]
	mov sl, r7
	adds r2, r2, r7
	str r2, [sp, #0x2c]
_08095F62:
	cmp r4, #1
	beq _08095F6A
	cmp r4, #3
	bne _08095F74
_08095F6A:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_08095F74:
	mov r3, sp
	adds r0, r3, r4
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0xde
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r2, r6, r0
	mov r3, sl
	adds r0, r5, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r0, #0xaa
	lsls r1, r4, #3
	adds r0, r0, r1
	adds r0, r0, r4
	mov r3, r8
	lsls r1, r3, #3
	adds r0, r0, r1
	strh r0, [r2, #0x10]
	ldr r1, [sp, #0x2c]
	ldr r0, [r1]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08095F62
	b _08096058
	.align 2, 0
_08095FBC: .4byte gUnknown_080D8BE2
_08095FC0: .4byte 0x0000054C
_08095FC4:
	movs r4, #0
	lsls r7, r3, #3
	adds r5, r6, #0
	adds r5, #0x78
	movs r2, #0x7c
	adds r2, r2, r6
	mov sb, r2
	mov r0, sp
	adds r0, #8
	str r0, [sp, #0x20]
	lsls r0, r3, #2
	adds r1, r3, #1
	str r1, [sp, #0x24]
	str r7, [sp, #0x1c]
	adds r2, r2, r7
	mov sl, r2
	adds r0, r0, r3
	lsls r0, r0, #1
	str r0, [sp, #0x2c]
_08095FEA:
	ldr r3, [sp, #0x20]
	adds r2, r3, r4
	lsls r0, r4, #1
	ldr r1, [sp, #0x2c]
	adds r0, r0, r1
	ldr r3, [sp, #0x14]
	adds r0, r0, r3
	ldr r1, [sp, #0x18]
	adds r0, r0, r1
	ldr r3, _080960AC @ =0x00000556
	adds r1, r6, r3
	adds r1, r1, r0
	ldrh r0, [r1]
	strb r0, [r2]
	ldrb r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0xde
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r2, r6, r0
	cmp r4, #1
	beq _0809601E
	cmp r4, #3
	bne _08096028
_0809601E:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_08096028:
	ldr r3, [sp, #0x1c]
	adds r0, r5, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r0, #0xaa
	lsls r1, r4, #3
	adds r0, r0, r1
	adds r0, r0, r4
	mov r3, r8
	lsls r1, r3, #3
	adds r0, r0, r1
	strh r0, [r2, #0x10]
	mov r1, sl
	ldr r0, [r1]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08095FEA
_08096058:
	ldr r3, _080960B0 @ =0x0000043C
	adds r2, r6, r3
	adds r5, r5, r7
	ldr r0, [r5]
	asrs r0, r0, #8
	adds r0, #0xb3
	strh r0, [r2, #0x10]
	mov r0, sb
	adds r4, r0, r7
	ldr r0, [r4]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	ldr r1, _080960B4 @ =0x00000464
	adds r2, r6, r1
	ldr r0, [r5]
	asrs r0, r0, #8
	adds r0, #0xce
	strh r0, [r2, #0x10]
	ldr r0, [r4]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	ldr r2, [sp, #0x24]
	lsls r0, r2, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #4
	bhi _0809609A
	b _08095F26
_0809609A:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080960AC: .4byte 0x00000556
_080960B0: .4byte 0x0000043C
_080960B4: .4byte 0x00000464

.syntax divided

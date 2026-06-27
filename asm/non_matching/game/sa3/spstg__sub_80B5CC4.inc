
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r1, #0
	lsls r0, r0, #0x10
	ldr r1, _080B5D10 @ =gCurTask
	ldr r1, [r1]
	ldrh r2, [r1, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r2, r2, r1
	ldr r1, [r2]
	mov sl, r1
	lsrs r3, r0, #0x10
	mov sb, r3
	asrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	movs r0, #0xca
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r7, r2, r1
	movs r3, #0
	ldrh r0, [r6]
	subs r0, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #9
	bhi _080B5D62
	lsls r0, r0, #2
	ldr r1, _080B5D14 @ =_080B5D18
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080B5D10: .4byte gCurTask
_080B5D14: .4byte _080B5D18
_080B5D18: @ jump table
	.4byte _080B5D40 @ case 0
	.4byte _080B5D44 @ case 1
	.4byte _080B5D4A @ case 2
	.4byte _080B5D62 @ case 3
	.4byte _080B5D5E @ case 4
	.4byte _080B5D50 @ case 5
	.4byte _080B5D62 @ case 6
	.4byte _080B5D62 @ case 7
	.4byte _080B5D56 @ case 8
	.4byte _080B5D5E @ case 9
_080B5D40:
	adds r3, r2, #4
	b _080B5D62
_080B5D44:
	adds r3, r2, #0
	adds r3, #0x2c
	b _080B5D62
_080B5D4A:
	adds r3, r2, #0
	adds r3, #0x54
	b _080B5D62
_080B5D50:
	adds r3, r2, #0
	adds r3, #0xcc
	b _080B5D62
_080B5D56:
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r3, r2, r1
	b _080B5D62
_080B5D5E:
	adds r3, r2, #0
	adds r3, #0xa4
_080B5D62:
	ldrh r2, [r6, #2]
	mov r8, r2
	ldrh r4, [r6, #4]
	ldrh r0, [r6, #6]
	subs r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r2, _080B5DE8 @ =0x0400000A
	adds r0, r3, #0
	adds r1, r7, #0
	bl CpuSet
	movs r3, #0x83
	lsls r3, r3, #5
	adds r1, r3, #0
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r5, r0, #0x10
	adds r0, r5, #0
	orrs r0, r1
	movs r1, #0xc0
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r7, #8]
	mov r3, r8
	strh r3, [r7, #0x10]
	strh r4, [r7, #0x12]
	movs r0, #4
	ldrsh r1, [r6, r0]
	ldr r0, _080B5DEC @ =0x000008DA
	add r0, sl
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r0, #0xf
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r2, r3, #0
	cmp r1, r0
	bge _080B5DB6
	movs r0, #0xd0
	lsls r0, r0, #2
	adds r2, r0, #0
_080B5DB6:
	strh r2, [r7, #0x14]
	adds r0, r7, #0
	bl sub_8E8_80B69B4
	lsls r0, r5, #5
	ldr r1, _080B5DF0 @ =gOamBuffer + 0x6
	adds r0, r0, r1
	ldrh r1, [r6, #0xc]
	strh r1, [r0]
	adds r0, #8
	ldrh r1, [r6, #0xe]
	strh r1, [r0]
	adds r0, #8
	ldrh r1, [r6, #0x10]
	strh r1, [r0]
	ldrh r1, [r6, #0x12]
	strh r1, [r0, #8]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B5DE8: .4byte 0x0400000A
_080B5DEC: .4byte 0x000008DA
_080B5DF0: .4byte gOamBuffer + 0x6

.syntax divided

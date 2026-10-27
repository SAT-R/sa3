
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r0, [r4]
	mov r8, r0
	adds r7, r4, #0
	adds r7, #0x1c
	ldrb r0, [r4, #0x1b]
	cmp r0, #0
	beq _0807469C
	subs r0, #1
	strb r0, [r4, #0x1b]
	b _080747E6
_0807469C:
	adds r0, r6, #0
	bl sub_802C080
	cmp r0, #0
	beq _080746A8
	b _080747E6
_080746A8:
	ldr r1, [r4, #4]
	asrs r1, r1, #8
	ldr r2, [r4, #8]
	asrs r2, r2, #8
	str r6, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl sub_8020E3C
	cmp r0, #0
	bne _080746C0
	b _080747D4
_080746C0:
	ldr r0, [r6, #4]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080746CC
	b _080747D4
_080746CC:
	movs r1, #0x30
	ldrsh r0, [r6, r1]
	cmp r0, #0xf7
	bne _080746D6
	b _080747D4
_080746D6:
	movs r0, #0xa
	strb r0, [r4, #0x1b]
	movs r0, #1
	strb r0, [r4, #0x1a]
	ldrb r0, [r4, #0x19]
	adds r0, #1
	strb r0, [r4, #0x19]
	ldr r0, [r6, #0x14]
	ldr r1, [r4, #8]
	subs r0, r0, r1
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r6, #0x10]
	ldr r2, [r4, #4]
	subs r1, r1, r2
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	bl sa2__sub_8004418
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrh r0, [r4, #0x14]
	adds r1, r5, #0
	movs r2, #0xa
	bl sa2__sub_808558C
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08074734
	ldrh r1, [r4, #0x14]
	subs r0, r1, r5
	cmp r0, #0
	blt _08074724
	subs r1, r1, r0
	ldr r0, _08074720 @ =0x000003FF
	b _0807472A
	.align 2, 0
_08074720: .4byte 0x000003FF
_08074724:
	subs r0, r5, r1
	subs r0, r1, r0
	ldr r1, _08074730 @ =0x000003FF
_0807472A:
	ands r0, r1
	strh r0, [r4, #0x14]
	b _08074750
	.align 2, 0
_08074730: .4byte 0x000003FF
_08074734:
	ldrh r1, [r4, #0x14]
	subs r0, r1, r5
	cmp r0, #0
	blt _08074748
	adds r1, r1, r0
	ldr r0, _08074744 @ =0x000003FF
	b _0807474C
	.align 2, 0
_08074744: .4byte 0x000003FF
_08074748:
	ldr r0, _080747C4 @ =0x000003FF
	adds r1, r5, #0
_0807474C:
	ands r1, r0
	strh r1, [r4, #0x14]
_08074750:
	ldr r2, _080747C8 @ =gSineTable
	ldrh r0, [r4, #0x14]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, [r4, #0x10]
	muls r0, r1, r0
	rsbs r0, r0, #0
	asrs r0, r0, #8
	strh r0, [r4, #0xc]
	ldrh r0, [r4, #0x14]
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r1, r0
	rsbs r0, r0, #0
	asrs r0, r0, #8
	strh r0, [r4, #0xe]
	ldrh r0, [r6, #0x1c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	rsbs r0, r0, #0
	strh r0, [r6, #0x1c]
	ldrh r0, [r6, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	rsbs r0, r0, #0
	strh r0, [r6, #0x18]
	ldrh r0, [r6, #0x1a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	rsbs r0, r0, #0
	strh r0, [r6, #0x1a]
	mov r1, r8
	ldr r0, [r1, #0x54]
	str r0, [r7]
	ldr r0, _080747CC @ =0x000004E4
	strh r0, [r7, #0xc]
	movs r0, #1
	strb r0, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r2, #0x30
	ldrsh r0, [r6, r2]
	cmp r0, #0xd4
	bne _080747BC
	adds r0, r6, #0
	bl Player_800DB30
_080747BC:
	ldr r0, _080747D0 @ =0x00000233
	bl m4aSongNumStart
	b _080747E6
	.align 2, 0
_080747C4: .4byte 0x000003FF
_080747C8: .4byte gSineTable
_080747CC: .4byte 0x000004E4
_080747D0: .4byte 0x00000233
_080747D4:
	ldr r1, [r4, #4]
	asrs r1, r1, #8
	ldr r2, [r4, #8]
	asrs r2, r2, #8
	str r6, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl sub_8020CE0
_080747E6:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

.syntax divided

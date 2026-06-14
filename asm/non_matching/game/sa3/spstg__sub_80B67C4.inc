
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov r8, r0
	mov sl, r1
	adds r7, r2, #0
	str r3, [sp]
	ldr r0, [r7]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	str r0, [sp, #4]
	ldr r0, [r7, #0xc]
	ldrh r3, [r0, #6]
	adds r3, r3, r1
	ldr r1, _080B6898 @ =0x000008BC
	adds r0, r7, r1
	ldrh r1, [r0]
	rsbs r1, r1, #0
	ldr r2, _080B689C @ =0x000003FF
	adds r0, r2, #0
	ands r1, r0
	ldr r4, _080B68A0 @ =gSineTable
	lsls r0, r1, #1
	adds r0, r0, r4
	movs r5, #0
	ldrsh r2, [r0, r5]
	lsls r2, r2, #2
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, r1, r4
	movs r0, #0
	ldrsh r5, [r1, r0]
	mov r1, sl
	ldr r0, [r1]
	ldr r4, [r3, #0x4c]
	subs r4, r4, r0
	ldr r1, [r1, #4]
	ldr r3, _080B68A4 @ =0x000008B4
	adds r0, r7, r3
	ldr r3, [r0]
	subs r3, r3, r1
	asrs r0, r2, #8
	asrs r3, r3, #8
	adds r1, r0, #0
	muls r1, r3, r1
	asrs r5, r5, #6
	asrs r4, r4, #8
	adds r0, r5, #0
	muls r0, r4, r0
	adds r1, r1, r0
	asrs r1, r1, #2
	mov sb, r1
	rsbs r2, r2, #0
	asrs r2, r2, #8
	adds r0, r2, #0
	muls r0, r4, r0
	adds r1, r5, #0
	muls r1, r3, r1
	adds r0, r0, r1
	asrs r3, r0, #1
	ldr r5, _080B68A8 @ =0x000005AC
	adds r0, r7, r5
	ldr r2, [r0]
	ldr r0, _080B68AC @ =0x000008DF
	adds r4, r7, r0
	ldrb r1, [r4]
	lsls r1, r1, #3
	adds r0, r7, #0
	adds r0, #0xb4
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r3, r2
	ble _080B6916
	cmp r3, r0
	bge _080B6916
	movs r1, #0x8e
	lsls r1, r1, #4
	adds r0, r7, r1
	ldrb r5, [r0]
	ldr r2, _080B68B0 @ =0x000008E1
	adds r0, r7, r2
	ldrb r6, [r0]
	lsls r1, r5, #0x10
	movs r0, #0xb0
	adds r0, r0, r7
	mov ip, r0
	cmp r1, #0
	beq _080B68F2
_080B6882:
	lsls r0, r6, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0x9f
	ble _080B68B4
	asrs r0, r1, #0x11
	subs r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r5, #0x10
	b _080B68E6
	.align 2, 0
_080B6898: .4byte 0x000008BC
_080B689C: .4byte 0x000003FF
_080B68A0: .4byte gSineTable
_080B68A4: .4byte 0x000008B4
_080B68A8: .4byte 0x000005AC
_080B68AC: .4byte 0x000008DF
_080B68B0: .4byte 0x000008E1
_080B68B4:
	ldrb r1, [r4]
	cmp r2, r1
	bge _080B68C2
	lsls r1, r5, #0x10
	asrs r0, r1, #0x11
	adds r0, r2, r0
	b _080B68E2
_080B68C2:
	lsls r1, r2, #3
	adds r0, r7, #0
	adds r0, #0xb4
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, r3
	ble _080B68D8
	lsls r1, r5, #0x10
	asrs r0, r1, #0x11
	adds r0, r2, r0
	b _080B68E2
_080B68D8:
	cmp r0, r3
	bge _080B68F2
	lsls r1, r5, #0x10
	asrs r0, r1, #0x11
	subs r0, r2, r0
_080B68E2:
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_080B68E6:
	asrs r0, r1, #0x11
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r5, #0x10
	cmp r1, #0
	bne _080B6882
_080B68F2:
	lsls r3, r6, #0x10
	asrs r5, r3, #0x10
	lsls r0, r5, #3
	add r0, ip
	ldr r1, [r0]
	asrs r1, r1, #1
	rsbs r0, r1, #0
	lsls r2, r0, #3
	adds r2, r2, r0
	asrs r2, r2, #3
	lsls r0, r1, #3
	adds r0, r0, r1
	asrs r7, r0, #3
	str r3, [sp, #8]
	cmp sb, r2
	ble _080B6916
	cmp sb, r7
	blt _080B691A
_080B6916:
	movs r0, #0
	b _080B69A2
_080B691A:
	mov r2, r8
	strh r6, [r2, #0xa]
	mov r3, sl
	ldrh r4, [r3, #0xe]
	subs r4, r6, r4
	movs r1, #0x12
	ldrsh r0, [r3, r1]
	lsls r0, r0, #0x10
	ldr r2, [sp, #4]
	ldr r1, [r2, #0xc]
	lsls r5, r5, #2
	adds r1, r5, r1
	ldr r1, [r1]
	bl __divsi3
	subs r4, r4, r0
	ldr r3, [sp]
	adds r4, r4, r3
	mov r0, r8
	strh r4, [r0, #4]
	mov r1, sb
	lsls r0, r1, #4
	add r0, sb
	lsls r0, r0, #3
	subs r0, r0, r1
	adds r1, r7, #0
	bl __divsi3
	movs r1, #0x78
	subs r1, r1, r0
	mov r2, r8
	strh r1, [r2, #8]
	mov r3, sl
	ldrh r0, [r3, #0xc]
	subs r1, r1, r0
	strh r1, [r2, #2]
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _080B6982
	lsls r0, r0, #3
	ldr r2, [sp, #4]
	ldr r1, [r2, #0xc]
	adds r1, r5, r1
	ldr r1, [r1]
	bl __divsi3
	lsls r1, r0, #3
	adds r1, r1, r0
	asrs r1, r1, #2
	mov r3, r8
	strh r1, [r3, #6]
	b _080B6986
_080B6982:
	mov r5, r8
	strh r0, [r5, #6]
_080B6986:
	ldr r0, [sp, #4]
	ldr r1, [r0, #0xc]
	ldr r2, [sp, #8]
	asrs r0, r2, #0xe
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	movs r1, #0
	mov r3, r8
	strh r0, [r3, #0xc]
	strh r0, [r3, #0x12]
	strh r1, [r3, #0x10]
	strh r1, [r3, #0xe]
	movs r0, #1
_080B69A2:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

.syntax divided

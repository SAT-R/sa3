
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	str r2, [sp, #0x28]
	str r3, [sp, #0x2c]
	ldr r2, _080B5B80 @ =gCurTask
	ldr r2, [r2]
	ldrh r3, [r2, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r3, r2
	str r2, [sp, #0x30]
	adds r5, r1, #0
	ldr r4, _080B5B84 @ =gSineTable
	ldr r2, _080B5B88 @ =0x030008E4
	adds r1, r3, r2
	ldrh r2, [r1]
	lsls r1, r2, #1
	adds r1, r1, r4
	ldrh r1, [r1]
	str r1, [sp, #0x34]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #1
	adds r2, r2, r4
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x38]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r2, _080B5B8C @ =0x030008DE
	adds r3, r3, r2
	ldrh r3, [r3]
	mov sb, r3
	mov r0, sb
	adds r0, #0x14
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r3, #0
	ldrsh r1, [r5, r3]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080B5B3E
	b _080B5CAE
_080B5B3E:
	mov r1, sb
	lsls r0, r1, #0x10
	lsls r1, r2, #0x10
	mov r8, r0
	str r1, [sp, #0x3c]
	cmp r8, r1
	blt _080B5B4E
	b _080B5CAE
_080B5B4E:
	mov r7, sp
_080B5B50:
	movs r2, #0
	ldrsh r0, [r5, r2]
	ldr r3, [sp, #0x30]
	ldr r2, _080B5B90 @ =0x000007B4
	adds r1, r3, r2
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _080B5B66
	b _080B5C88
_080B5B66:
	movs r0, #0xc
	ldrsb r0, [r5, r0]
	adds r0, #1
	cmp r0, #5
	beq _080B5B94
	cmp r0, #5
	blt _080B5B98
	cmp r0, #8
	bgt _080B5B98
	cmp r0, #7
	blt _080B5B98
	b _080B5C88
	.align 2, 0
_080B5B80: .4byte gCurTask
_080B5B84: .4byte gSineTable
_080B5B88: .4byte 0x030008E4
_080B5B8C: .4byte 0x030008DE
_080B5B90: .4byte 0x000007B4
_080B5B94:
	movs r0, #0x10
	b _080B5B9A
_080B5B98:
	movs r0, #8
_080B5B9A:
	strh r0, [r7, #0xc]
	strh r0, [r7, #0xe]
	movs r3, #2
	ldrsh r1, [r5, r3]
	lsls r1, r1, #0x10
	movs r0, #8
	ldrsh r2, [r5, r0]
	ldr r3, [sp, #0x34]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	muls r0, r2, r0
	adds r1, r1, r0
	str r1, [sp]
	movs r0, #6
	ldrsh r1, [r5, r0]
	lsls r1, r1, #0xc
	movs r3, #0xa
	ldrsh r2, [r5, r3]
	ldr r3, [sp, #0x38]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	muls r0, r2, r0
	adds r1, r1, r0
	str r1, [sp, #8]
	movs r1, #4
	ldrsh r0, [r5, r1]
	lsls r0, r0, #0x10
	str r0, [sp, #4]
	movs r0, #0
	strh r0, [r7, #0x10]
	movs r0, #5
	strh r0, [r7, #0x12]
	add r6, sp, #0x14
	ldr r3, [sp, #0x30]
	ldr r2, [r3]
	adds r0, r6, #0
	mov r1, sp
	ldr r3, [sp, #0x2c]
	bl sub_80B67C4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080B5C88
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0x13
	bgt _080B5C84
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r2, [sp, #0x28]
	adds r4, r2, r0
	adds r0, r6, #0
	adds r1, r4, #0
	ldr r2, _080B5C28 @ =0x04000005
	bl CpuSet
	movs r3, #0
	ldrsh r1, [r5, r3]
	ldr r2, [sp, #0x30]
	ldr r3, _080B5C2C @ =0x000007B4
	adds r0, r2, r3
	adds r1, r0, r1
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0xa
	ble _080B5C30
	strh r0, [r4]
	b _080B5C68
	.align 2, 0
_080B5C28: .4byte 0x04000005
_080B5C2C: .4byte 0x000007B4
_080B5C30:
	movs r0, #0xc
	ldrsb r0, [r5, r0]
	adds r0, #1
	strh r0, [r4]
	cmp r0, #4
	bne _080B5C42
	mov r0, sb
	strh r0, [r4, #8]
	b _080B5C68
_080B5C42:
	cmp r0, #5
	bne _080B5C68
	ldr r1, [sp, #0x30]
	ldr r2, _080B5C78 @ =0x000008E2
	adds r0, r1, r2
	mov r3, r8
	asrs r1, r3, #0xa
	ldrh r0, [r0]
	adds r1, r1, r0
	ldr r0, _080B5C7C @ =0x000001FF
	ands r1, r0
	cmp r1, #0
	bne _080B5C68
	mov r0, sp
	bl sub_80B6538
	ldr r0, _080B5C80 @ =0x0000020F @ SE_527
	bl m4aSongNumStart
_080B5C68:
	mov r1, sl
	lsls r0, r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r0, r0, #0x10
	mov sl, r0
	b _080B5C88
	.align 2, 0
_080B5C78: .4byte 0x000008E2
_080B5C7C: .4byte 0x000001FF
_080B5C80: .4byte 0x0000020F
_080B5C84:
	adds r0, r1, #0
	b _080B5CB4
_080B5C88:
	adds r5, #0x10
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, r8
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r3, #0
	ldrsh r1, [r5, r3]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080B5CAE
	mov r1, sb
	lsls r0, r1, #0x10
	mov r8, r0
	ldr r2, [sp, #0x3c]
	cmp r8, r2
	bge _080B5CAE
	b _080B5B50
_080B5CAE:
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
_080B5CB4:
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

.syntax divided


.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	ldr r7, _0801508C @ =gCamera
	ldr r6, [r4, #0x10]
	ldr r5, [r4, #0x14]
	movs r0, #0
	mov sb, r0
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	mov r8, r1
	ands r0, r1
	cmp r0, #0
	beq _08015090
	movs r0, #1
	b _08015132
	.align 2, 0
_0801508C: .4byte gCamera
_08015090:
	adds r0, r4, #0
	bl sub_8016FA8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080150E0
	ldr r0, [r4, #4]
	mov r1, r8
	orrs r0, r1
	str r0, [r4, #4]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080150B4
	ldr r0, _080150B0 @ =0x0000FD60
	b _080150B6
	.align 2, 0
_080150B0: .4byte 0x0000FD60
_080150B4:
	ldr r0, _080150CC @ =0x0000FB20
_080150B6:
	strh r0, [r4, #0x1a]
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _080150D0
	ldr r0, [r7, #0x10]
	lsls r5, r0, #8
	b _080150D6
	.align 2, 0
_080150CC: .4byte 0x0000FB20
_080150D0:
	ldr r0, [r7, #0x14]
	lsls r0, r0, #8
	subs r5, r0, #1
_080150D6:
	adds r0, r4, #0
	bl Player_HitWithoutRingsUpdate
	movs r0, #1
	mov sb, r0
_080150E0:
	ldr r2, [r7, #0x10]
	ldr r3, [r7, #0x14]
	mov r8, r6
	mov ip, r5
	ldr r0, [r7, #0x18]
	adds r0, #0xc
	lsls r0, r0, #8
	cmp r6, r0
	blt _08015102
	ldr r0, [r7, #0x1c]
	lsls r0, r0, #8
	ldr r7, _08015140 @ =0xFFFFF4FF
	adds r1, r0, r7
	adds r0, r6, #0
	cmp r0, r1
	ble _08015102
	adds r0, r1, #0
_08015102:
	adds r6, r0, #0
	lsls r0, r2, #8
	cmp r5, r0
	blt _08015116
	lsls r0, r3, #8
	subs r1, r0, #1
	adds r0, r5, #0
	cmp r0, r1
	ble _08015116
	adds r0, r1, #0
_08015116:
	adds r5, r0, #0
	cmp r6, r8
	beq _08015122
	movs r0, #0
	strh r0, [r4, #0x18]
	strh r0, [r4, #0x1c]
_08015122:
	cmp r5, ip
	beq _0801512C
	movs r0, #0
	strh r0, [r4, #0x1a]
	strh r0, [r4, #0x1c]
_0801512C:
	str r6, [r4, #0x10]
	str r5, [r4, #0x14]
	mov r0, sb
_08015132:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08015140: .4byte 0xFFFFF4FF

.syntax divided

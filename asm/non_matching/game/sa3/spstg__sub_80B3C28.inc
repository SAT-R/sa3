
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080B3D28 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
	ldr r6, [r0]
	ldr r0, _080B3D2C @ =0x030000AC
	adds r0, r0, r1
	mov sl, r0
	ldrh r0, [r0]
	cmp r0, #0xa
	bne _080B3D18
	ldr r2, _080B3D30 @ =0x030000B0
	adds r7, r1, r2
	ldrh r0, [r7]
	adds r0, #1
	strh r0, [r7]
	ldr r3, _080B3D34 @ =0x000008C2
	adds r3, r3, r6
	mov r8, r3
	ldr r4, _080B3D38 @ =0x000008C7
	adds r4, r4, r6
	mov sb, r4
	ldrb r0, [r4]
	lsls r0, r0, #2
	ldr r1, _080B3D3C @ =gUnknown_080DBE84
	adds r0, r0, r1
	ldrh r2, [r3]
	movs r4, #0
	ldrsh r1, [r3, r4]
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r1, r0
	bge _080B3CBC
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r4, r8
	strh r0, [r4]
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0x64
	bl Div
	ldr r1, _080B3D40 @ =0x000008D1
	adds r5, r6, r1
	strb r0, [r5]
	adds r0, r4, #0
	movs r1, #0xa
	bl Div
	movs r2, #0
	ldrsb r2, [r5, r2]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #1
	subs r0, r0, r1
	ldr r2, _080B3D44 @ =0x000008D2
	adds r1, r6, r2
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0xa
	bl Mod
	ldr r3, _080B3D48 @ =0x000008D3
	adds r1, r6, r3
	strb r0, [r1]
_080B3CBC:
	ldrh r1, [r7]
	movs r0, #0xb4
	lsls r0, r0, #1
	cmp r1, r0
	bls _080B3D18
	movs r4, #0
	strh r4, [r7]
	mov r0, sl
	strh r4, [r0]
	mov r1, sb
	ldrb r0, [r1]
	lsls r0, r0, #2
	ldr r2, _080B3D3C @ =gUnknown_080DBE84
	adds r0, r0, r2
	ldrh r0, [r0]
	mov r3, r8
	strh r0, [r3]
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0x64
	bl Div
	ldr r1, _080B3D40 @ =0x000008D1
	adds r5, r6, r1
	strb r0, [r5]
	adds r0, r4, #0
	movs r1, #0xa
	bl Div
	movs r2, #0
	ldrsb r2, [r5, r2]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #1
	subs r0, r0, r1
	ldr r2, _080B3D44 @ =0x000008D2
	adds r1, r6, r2
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0xa
	bl Mod
	ldr r3, _080B3D48 @ =0x000008D3
	adds r1, r6, r3
	strb r0, [r1]
_080B3D18:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B3D28: .4byte gCurTask
_080B3D2C: .4byte 0x030000AC
_080B3D30: .4byte 0x030000B0
_080B3D34: .4byte 0x000008C2
_080B3D38: .4byte 0x000008C7
_080B3D3C: .4byte gUnknown_080DBE84
_080B3D40: .4byte 0x000008D1
_080B3D44: .4byte 0x000008D2
_080B3D48: .4byte 0x000008D3

.syntax divided

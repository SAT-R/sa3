.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start sub_80C3850
sub_80C3850: @ 0x080C3850
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	bl sub_80C40D0
	cmp r0, #0
	beq _080C3868
	b _080C3D58
_080C3868:
	adds r0, r7, #0
	adds r0, #0x4a
	ldrb r1, [r0]
	str r0, [sp]
	cmp r1, #0xf
	bls _080C387C
	subs r0, r1, #1
	ldr r1, [sp]
	strb r0, [r1]
	b _080C3D58
_080C387C:
	adds r0, r7, #0
	adds r0, #0x48
	ldrb r1, [r0]
	mov sl, r0
	cmp r1, #0
	beq _080C38D0
	movs r1, #0
	strb r1, [r0]
	ldr r2, _080C38C0 @ =0x04000128
	ldrh r0, [r2]
	movs r5, #0xfc
	ands r5, r0
	cmp r5, #8
	beq _080C38D0
	strb r1, [r7, #0x1e]
	strb r1, [r7, #0x18]
	strb r1, [r7, #0x1d]
	movs r0, #0xf
	ldr r3, [sp]
	strb r0, [r3]
	mov r0, sl
	strb r1, [r0]
	strh r1, [r7, #0x16]
	ldr r0, _080C38C4 @ =0x04000134
	strh r1, [r0]
	ldr r3, _080C38C8 @ =0x00002003
	adds r0, r3, #0
	strh r0, [r2]
	ldr r0, _080C38CC @ =0x0400012A
	strh r1, [r0]
	movs r0, #8
	eors r0, r5
	b _080C3D5A
	.align 2, 0
_080C38C0: .4byte 0x04000128
_080C38C4: .4byte 0x04000134
_080C38C8: .4byte 0x00002003
_080C38CC: .4byte 0x0400012A
_080C38D0:
	ldrb r0, [r7, #0x18]
	cmp r0, #0xdf
	bls _080C3952
	adds r0, r7, #0
	bl sub_80C3F78
	adds r5, r0, #0
	cmp r5, #0
	beq _080C38E4
	b _080C3D5A
_080C38E4:
	adds r0, r7, #0
	adds r0, #0x4b
	ldrb r0, [r0]
	cmp r0, #1
	bne _080C3900
	ldrb r0, [r7, #0x18]
	cmp r0, #0xe1
	bls _080C3900
	adds r0, r7, #0
	bl sub_80C40D0
	cmp r0, #0
	bne _080C3900
	b _080C3CE4
_080C3900:
	adds r0, r7, #0
	bl sub_80C40D0
	cmp r0, #0
	beq _080C390C
	b _080C3D58
_080C390C:
	ldrh r0, [r7, #0x16]
	adds r2, r0, #0
	cmp r2, #0
	bne _080C394C
	strb r2, [r7, #0x1e]
	strb r2, [r7, #0x18]
	strb r2, [r7, #0x1d]
	movs r0, #0xf
	ldr r1, [sp]
	strb r0, [r1]
	mov r3, sl
	strb r2, [r3]
	strh r2, [r7, #0x16]
	ldr r0, _080C393C @ =0x04000134
	strh r2, [r0]
	ldr r1, _080C3940 @ =0x04000128
	ldr r3, _080C3944 @ =0x00002003
	adds r0, r3, #0
	strh r0, [r1]
	ldr r0, _080C3948 @ =0x0400012A
	strh r2, [r0]
	movs r0, #0x71
	b _080C3D5A
	.align 2, 0
_080C393C: .4byte 0x04000134
_080C3940: .4byte 0x04000128
_080C3944: .4byte 0x00002003
_080C3948: .4byte 0x0400012A
_080C394C:
	subs r0, #1
	strh r0, [r7, #0x16]
	b _080C3D58
_080C3952:
	ldrb r0, [r7, #0x18]
	cmp r0, #2
	bne _080C395A
	b _080C3A94
_080C395A:
	cmp r0, #2
	bgt _080C3968
	cmp r0, #0
	beq _080C3976
	cmp r0, #1
	beq _080C3A34
	b _080C3C04
_080C3968:
	cmp r0, #0xd0
	bne _080C396E
	b _080C3AE0
_080C396E:
	cmp r0, #0xd1
	bne _080C3974
	b _080C3B80
_080C3974:
	b _080C3C04
_080C3976:
	movs r3, #0xe
	movs r5, #3
	ldr r0, _080C39BC @ =0x04000120
	ldrh r0, [r0, #6]
	adds r1, r0, #0
	ldr r0, _080C39C0 @ =0x0000FFFF
	ldrb r2, [r7, #0x1e]
	adds r6, r2, #0
	cmp r1, r0
	bne _080C399E
	adds r4, r1, #0
	ldr r1, _080C39C4 @ =0x04000126
_080C398E:
	asrs r3, r3, #1
	subs r1, #2
	subs r5, #1
	cmp r5, #0
	beq _080C399E
	ldrh r0, [r1]
	cmp r0, r4
	beq _080C398E
_080C399E:
	movs r0, #0xe
	ands r3, r0
	strb r3, [r7, #0x1d]
	movs r5, #3
	ldr r0, _080C39BC @ =0x04000120
	ldrh r0, [r0, #6]
	adds r4, r0, #0
	asrs r0, r2, #3
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C39CC
	ldr r0, _080C39C8 @ =0x00007208
	b _080C39F2
	.align 2, 0
_080C39BC: .4byte 0x04000120
_080C39C0: .4byte 0x0000FFFF
_080C39C4: .4byte 0x04000126
_080C39C8: .4byte 0x00007208
_080C39CC:
	subs r5, #1
	cmp r5, #0
	beq _080C39F8
	lsls r0, r5, #1
	ldr r1, _080C3A20 @ =0x04000120
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r4, r0, #0
	adds r0, r2, #0
	asrs r0, r5
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C39CC
	adds r0, r1, #0
	lsls r0, r5
	movs r1, #0xe4
	lsls r1, r1, #7
	orrs r0, r1
_080C39F2:
	cmp r4, r0
	beq _080C39CC
	movs r3, #0
_080C39F8:
	adds r0, r3, #0
	ands r0, r6
	strb r0, [r7, #0x1e]
	cmp r3, #0
	bne _080C3A08
	movs r0, #0xf
	ldr r2, [sp]
	strb r0, [r2]
_080C3A08:
	ldr r3, [sp]
	ldrb r0, [r3]
	cmp r0, #0
	bne _080C3A24
	ldrb r0, [r7, #0x1d]
	ldrb r1, [r7, #0x1e]
	cmp r0, r1
	beq _080C3A2A
	adds r0, r7, #0
	bl sub_80C3DE4
	b _080C3A34
	.align 2, 0
_080C3A20: .4byte 0x04000120
_080C3A24:
	subs r0, #1
	ldr r2, [sp]
	strb r0, [r2]
_080C3A2A:
	ldrb r1, [r7, #0x1e]
	movs r3, #0xc4
	lsls r3, r3, #7
	adds r0, r3, #0
	b _080C3B3E
_080C3A34:
	adds r1, r7, #0
	adds r1, #0x49
	movs r0, #0
	strb r0, [r1]
	movs r5, #3
	mov ip, r1
	ldr r3, _080C3A8C @ =0x0300041C
_080C3A42:
	lsls r0, r5, #1
	ldr r2, _080C3A90 @ =0x04000120
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r4, r0, #0
	asrs r0, r4, #8
	subs r2, r5, #1
	cmp r0, #0x72
	bne _080C3A6C
	lsls r0, r2, #1
	adds r0, r0, r3
	strh r4, [r0]
	movs r0, #0xff
	ands r4, r0
	movs r0, #1
	lsls r0, r5
	cmp r4, r0
	bne _080C3A6C
	ldrb r0, [r1]
	orrs r4, r0
	strb r4, [r1]
_080C3A6C:
	adds r5, r2, #0
	cmp r5, #0
	bne _080C3A42
	ldrb r0, [r7, #0x1d]
	mov r3, ip
	ldrb r3, [r3]
	cmp r0, r3
	bne _080C3A2A
	movs r0, #2
	strb r0, [r7, #0x18]
	mov r0, ip
	ldrb r1, [r0]
	movs r2, #0xc2
	lsls r2, r2, #7
	b _080C3B3C
	.align 2, 0
_080C3A8C: .4byte 0x0300041C
_080C3A90: .4byte 0x04000120
_080C3A94:
	movs r5, #3
	movs r3, #0x49
	adds r3, r3, r7
	mov ip, r3
	mov r4, ip
	movs r6, #1
	ldr r0, _080C3AD8 @ =0x0300041C
	mov sb, r0
	ldr r1, _080C3ADC @ =0x04000120
	mov r8, r1
_080C3AA8:
	ldrb r3, [r4]
	adds r0, r3, #0
	asrs r0, r5
	ands r0, r6
	subs r2, r5, #1
	cmp r0, #0
	beq _080C3ACE
	lsls r0, r5, #1
	add r0, r8
	ldrh r1, [r0]
	lsls r0, r2, #1
	add r0, sb
	ldrh r0, [r0]
	cmp r1, r0
	beq _080C3ACE
	adds r0, r6, #0
	lsls r0, r5
	eors r3, r0
	strb r3, [r4]
_080C3ACE:
	adds r5, r2, #0
	cmp r5, #0
	bne _080C3AA8
	b _080C3C6C
	.align 2, 0
_080C3AD8: .4byte 0x0300041C
_080C3ADC: .4byte 0x04000120
_080C3AE0:
	movs r3, #1
	movs r5, #3
	movs r2, #0x49
	adds r2, r2, r7
	mov ip, r2
	movs r0, #0x19
	adds r0, r0, r7
	mov r8, r0
	movs r6, #0
	ldr r1, _080C3B48 @ =0x0300041C
	mov sb, r1
_080C3AF6:
	lsls r0, r5, #1
	ldr r2, _080C3B4C @ =0x04000120
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r4, r0, #0
	subs r2, r5, #1
	mov r1, r8
	adds r0, r1, r2
	strb r4, [r0]
	mov r0, ip
	ldrb r1, [r0]
	asrs r1, r5
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080C3B2C
	asrs r0, r4, #8
	subs r0, #0x72
	cmp r0, #1
	bls _080C3B20
	b _080C3CEA
_080C3B20:
	lsls r0, r2, #1
	add r0, sb
	ldrh r0, [r0]
	cmp r4, r0
	bne _080C3B2C
	movs r3, #0
_080C3B2C:
	adds r5, r2, #0
	cmp r5, #0
	bne _080C3AF6
	cmp r3, #0
	bne _080C3B50
	ldrb r1, [r7, #0x1c]
	movs r2, #0xc6
	lsls r2, r2, #7
_080C3B3C:
	adds r0, r2, #0
_080C3B3E:
	orrs r1, r0
	adds r0, r7, #0
	bl sub_80C3D6C
	b _080C3D5A
	.align 2, 0
_080C3B48: .4byte 0x0300041C
_080C3B4C: .4byte 0x04000120
_080C3B50:
	movs r0, #0xd1
	strb r0, [r7, #0x18]
	movs r3, #0x11
	movs r5, #3
	mov r1, r8
	adds r1, #2
_080C3B5C:
	ldrb r0, [r1]
	adds r3, r3, r0
	subs r1, #1
	subs r5, #1
	cmp r5, #0
	bne _080C3B5C
	strb r3, [r7, #0x14]
	movs r0, #0xff
	ands r3, r0
	movs r1, #0xc8
	lsls r1, r1, #7
	adds r0, r1, #0
	orrs r3, r0
	adds r0, r7, #0
	adds r1, r3, #0
	bl sub_80C3D6C
	b _080C3D5A
_080C3B80:
	movs r5, #3
	movs r2, #0x49
	ldrb r1, [r2, r7]
	ldr r2, _080C3BC0 @ =0x04000126
	movs r3, #1
_080C3B8A:
	ldrh r0, [r2]
	adds r4, r0, #0
	adds r0, r1, #0
	asrs r0, r5
	ands r0, r3
	cmp r0, #0
	beq _080C3BA0
	asrs r0, r4, #8
	cmp r0, #0x73
	beq _080C3BA0
	b _080C3D20
_080C3BA0:
	subs r2, #2
	subs r5, #1
	cmp r5, #0
	bne _080C3B8A
	adds r0, r7, #0
	bl MultiBoot
	adds r5, r0, #0
	cmp r5, #0
	bne _080C3BC4
	movs r0, #0xe0
	strb r0, [r7, #0x18]
	adds r0, #0xb0
	strh r0, [r7, #0x16]
	b _080C3D58
	.align 2, 0
_080C3BC0: .4byte 0x04000126
_080C3BC4:
	movs r1, #0
	strb r1, [r7, #0x1e]
	strb r1, [r7, #0x18]
	strb r1, [r7, #0x1d]
	movs r0, #0xf
	ldr r3, [sp]
	strb r0, [r3]
	mov r0, sl
	strb r1, [r0]
	strh r1, [r7, #0x16]
	ldr r0, _080C3BF4 @ =0x04000134
	strh r1, [r0]
	ldr r2, _080C3BF8 @ =0x04000128
	ldr r3, _080C3BFC @ =0x00002003
	adds r0, r3, #0
	strh r0, [r2]
	ldr r0, _080C3C00 @ =0x0400012A
	strh r1, [r0]
	movs r0, #0x1e
	ldr r1, [sp]
	strb r0, [r1]
	movs r0, #0x70
	b _080C3D5A
	.align 2, 0
_080C3BF4: .4byte 0x04000134
_080C3BF8: .4byte 0x04000128
_080C3BFC: .4byte 0x00002003
_080C3C00: .4byte 0x0400012A
_080C3C04:
	movs r5, #3
	movs r2, #0x49
	adds r2, r2, r7
	mov ip, r2
	mov r8, ip
	movs r3, #1
	mov sb, r3
_080C3C12:
	mov r0, r8
	ldrb r6, [r0]
	adds r0, r6, #0
	asrs r0, r5
	mov r1, sb
	ands r0, r1
	cmp r0, #0
	beq _080C3C4C
	lsls r0, r5, #1
	ldr r2, _080C3C68 @ =0x04000120
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r4, r0, #0
	asrs r2, r4, #8
	ldrb r0, [r7, #0x18]
	lsrs r0, r0, #1
	movs r1, #0x62
	subs r1, r1, r0
	mov r3, sb
	lsls r3, r5
	cmp r2, r1
	bne _080C3C46
	movs r0, #0xff
	ands r4, r0
	cmp r4, r3
	beq _080C3C4C
_080C3C46:
	eors r6, r3
	mov r3, r8
	strb r6, [r3]
_080C3C4C:
	subs r5, #1
	cmp r5, #0
	bne _080C3C12
	ldrb r0, [r7, #0x18]
	cmp r0, #0xc4
	bne _080C3C6C
	mov r0, ip
	ldrb r1, [r0]
	movs r0, #0xe
	ands r0, r1
	strb r0, [r7, #0x1e]
	strb r5, [r7, #0x18]
	b _080C3A2A
	.align 2, 0
_080C3C68: .4byte 0x04000120
_080C3C6C:
	mov r1, ip
	ldrb r2, [r1]
	cmp r2, #0
	bne _080C3CAC
	strb r2, [r7, #0x1e]
	strb r2, [r7, #0x18]
	strb r2, [r7, #0x1d]
	movs r0, #0xf
	ldr r3, [sp]
	strb r0, [r3]
	mov r0, sl
	strb r2, [r0]
	strh r2, [r7, #0x16]
	ldr r0, _080C3C9C @ =0x04000134
	strh r2, [r0]
	ldr r1, _080C3CA0 @ =0x04000128
	ldr r3, _080C3CA4 @ =0x00002003
	adds r0, r3, #0
	strh r0, [r1]
	ldr r0, _080C3CA8 @ =0x0400012A
	strh r2, [r0]
	movs r0, #0x50
	b _080C3D5A
	.align 2, 0
_080C3C9C: .4byte 0x04000134
_080C3CA0: .4byte 0x04000128
_080C3CA4: .4byte 0x00002003
_080C3CA8: .4byte 0x0400012A
_080C3CAC:
	ldrb r0, [r7, #0x18]
	adds r0, #2
	strb r0, [r7, #0x18]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xc4
	bne _080C3CBC
	b _080C3A2A
_080C3CBC:
	ldrb r0, [r7, #0x18]
	ldr r1, [r7, #0x28]
	adds r0, r0, r1
	subs r1, r0, #3
	ldrb r2, [r1]
	lsls r2, r2, #8
	subs r0, #4
	ldrb r1, [r0]
	orrs r1, r2
	adds r0, r7, #0
	bl sub_80C3D6C
	adds r5, r0, #0
	cmp r5, #0
	bne _080C3D5A
	adds r0, r7, #0
	adds r0, #0x4b
	ldrb r0, [r0]
	cmp r0, #1
	bne _080C3D58
_080C3CE4:
	bl sub_80C40E4
	b _080C387C
_080C3CEA:
	strb r6, [r7, #0x1e]
	strb r6, [r7, #0x18]
	strb r6, [r7, #0x1d]
	movs r0, #0xf
	ldr r1, [sp]
	strb r0, [r1]
	mov r2, sl
	strb r6, [r2]
	strh r6, [r7, #0x16]
	ldr r0, _080C3D10 @ =0x04000134
	strh r6, [r0]
	ldr r1, _080C3D14 @ =0x04000128
	ldr r3, _080C3D18 @ =0x00002003
	adds r0, r3, #0
	strh r0, [r1]
	ldr r0, _080C3D1C @ =0x0400012A
	strh r6, [r0]
	movs r0, #0x60
	b _080C3D5A
	.align 2, 0
_080C3D10: .4byte 0x04000134
_080C3D14: .4byte 0x04000128
_080C3D18: .4byte 0x00002003
_080C3D1C: .4byte 0x0400012A
_080C3D20:
	movs r1, #0
	strb r1, [r7, #0x1e]
	strb r1, [r7, #0x18]
	strb r1, [r7, #0x1d]
	movs r0, #0xf
	ldr r2, [sp]
	strb r0, [r2]
	mov r3, sl
	strb r1, [r3]
	strh r1, [r7, #0x16]
	ldr r0, _080C3D48 @ =0x04000134
	strh r1, [r0]
	ldr r2, _080C3D4C @ =0x04000128
	ldr r3, _080C3D50 @ =0x00002003
	adds r0, r3, #0
	strh r0, [r2]
	ldr r0, _080C3D54 @ =0x0400012A
	strh r1, [r0]
	movs r0, #0x60
	b _080C3D5A
	.align 2, 0
_080C3D48: .4byte 0x04000134
_080C3D4C: .4byte 0x04000128
_080C3D50: .4byte 0x00002003
_080C3D54: .4byte 0x0400012A
_080C3D58:
	movs r0, #0
_080C3D5A:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80C3D6C
sub_80C3D6C: @ 0x080C3D6C
	push {r4, r5, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r5, _080C3D98 @ =0x04000128
	ldrh r0, [r5]
	movs r4, #0x8c
	ands r4, r0
	cmp r4, #8
	bne _080C3DA4
	ldr r0, _080C3D9C @ =0x0400012A
	strh r1, [r0]
	ldr r1, _080C3DA0 @ =0x00002083
	adds r0, r1, #0
	strh r0, [r5]
	adds r1, r2, #0
	adds r1, #0x48
	movs r0, #1
	strb r0, [r1]
	movs r0, #0
	b _080C3DD0
	.align 2, 0
_080C3D98: .4byte 0x04000128
_080C3D9C: .4byte 0x0400012A
_080C3DA0: .4byte 0x00002083
_080C3DA4:
	movs r1, #0
	strb r1, [r2, #0x1e]
	strb r1, [r2, #0x18]
	strb r1, [r2, #0x1d]
	adds r3, r2, #0
	adds r3, #0x4a
	movs r0, #0xf
	strb r0, [r3]
	adds r0, r2, #0
	adds r0, #0x48
	strb r1, [r0]
	strh r1, [r2, #0x16]
	ldr r0, _080C3DD8 @ =0x04000134
	strh r1, [r0]
	ldr r2, _080C3DDC @ =0x00002003
	adds r0, r2, #0
	strh r0, [r5]
	ldr r0, _080C3DE0 @ =0x0400012A
	strh r1, [r0]
	movs r0, #8
	eors r4, r0
	adds r0, r4, #0
_080C3DD0:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080C3DD8: .4byte 0x04000134
_080C3DDC: .4byte 0x00002003
_080C3DE0: .4byte 0x0400012A

	thumb_func_start sub_80C3DE4
sub_80C3DE4: @ 0x080C3DE4
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0x18]
	cmp r0, #0
	beq _080C3E28
	movs r1, #0
	strb r1, [r2, #0x1e]
	strb r1, [r2, #0x18]
	strb r1, [r2, #0x1d]
	adds r3, r2, #0
	adds r3, #0x4a
	movs r0, #0xf
	strb r0, [r3]
	adds r0, r2, #0
	adds r0, #0x48
	strb r1, [r0]
	strh r1, [r2, #0x16]
	ldr r0, _080C3E18 @ =0x04000134
	strh r1, [r0]
	ldr r2, _080C3E1C @ =0x04000128
	ldr r3, _080C3E20 @ =0x00002003
	adds r0, r3, #0
	strh r0, [r2]
	ldr r0, _080C3E24 @ =0x0400012A
	strh r1, [r0]
	b _080C3E34
	.align 2, 0
_080C3E18: .4byte 0x04000134
_080C3E1C: .4byte 0x04000128
_080C3E20: .4byte 0x00002003
_080C3E24: .4byte 0x0400012A
_080C3E28:
	adds r1, r2, #0
	adds r1, #0x4a
	strb r0, [r1]
	strb r0, [r2, #0x1e]
	movs r0, #1
	strb r0, [r2, #0x18]
_080C3E34:
	pop {r0}
	bx r0

	thumb_func_start sub_80C3E38
sub_80C3E38: @ 0x080C3E38
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov ip, r0
	adds r7, r1, #0
	adds r5, r2, #0
	ldr r0, [sp, #0x18]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	mov r1, ip
	ldrb r0, [r1, #0x18]
	cmp r0, #0
	bne _080C3E68
	ldrb r0, [r1, #0x1e]
	cmp r0, #0
	beq _080C3E68
	mov r6, ip
	adds r6, #0x4a
	ldrb r2, [r6]
	cmp r2, #0
	beq _080C3EA4
_080C3E68:
	movs r1, #0
	mov r2, ip
	strb r1, [r2, #0x1e]
	strb r1, [r2, #0x18]
	strb r1, [r2, #0x1d]
	adds r2, #0x4a
	movs r0, #0xf
	strb r0, [r2]
	mov r0, ip
	adds r0, #0x48
	strb r1, [r0]
	mov r3, ip
	strh r1, [r3, #0x16]
	ldr r0, _080C3E94 @ =0x04000134
	strh r1, [r0]
	ldr r2, _080C3E98 @ =0x04000128
	ldr r3, _080C3E9C @ =0x00002003
	adds r0, r3, #0
	strh r0, [r2]
	ldr r0, _080C3EA0 @ =0x0400012A
	strh r1, [r0]
	b _080C3F6E
	.align 2, 0
_080C3E94: .4byte 0x04000134
_080C3E98: .4byte 0x04000128
_080C3E9C: .4byte 0x00002003
_080C3EA0: .4byte 0x0400012A
_080C3EA4:
	mov r0, ip
	str r7, [r0, #0x20]
	adds r5, #0xf
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r5, r0
	subs r0, #0xf0
	adds r1, r5, r0
	ldr r0, _080C3EE0 @ =0x0003FF00
	cmp r1, r0
	bls _080C3EF4
	mov r1, ip
	strb r2, [r1, #0x1e]
	strb r2, [r1, #0x18]
	strb r2, [r1, #0x1d]
	movs r0, #0xf
	strb r0, [r6]
	mov r0, ip
	adds r0, #0x48
	strb r2, [r0]
	strh r2, [r1, #0x16]
	ldr r0, _080C3EE4 @ =0x04000134
	strh r2, [r0]
	ldr r1, _080C3EE8 @ =0x04000128
	ldr r3, _080C3EEC @ =0x00002003
	adds r0, r3, #0
	strh r0, [r1]
	ldr r0, _080C3EF0 @ =0x0400012A
	strh r2, [r0]
	b _080C3F6E
	.align 2, 0
_080C3EE0: .4byte 0x0003FF00
_080C3EE4: .4byte 0x04000134
_080C3EE8: .4byte 0x04000128
_080C3EEC: .4byte 0x00002003
_080C3EF0: .4byte 0x0400012A
_080C3EF4:
	adds r0, r7, r5
	mov r1, ip
	str r0, [r1, #0x24]
	mov r2, r8
	lsls r1, r2, #0x18
	movs r2, #0x80
	lsls r2, r2, #0x13
	adds r0, r1, r2
	asrs r0, r0, #0x18
	adds r2, r1, #0
	cmp r0, #8
	bhi _080C3F58
	lsls r0, r0, #2
	ldr r1, _080C3F18 @ =_080C3F1C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080C3F18: .4byte _080C3F1C
_080C3F1C: @ jump table
	.4byte _080C3F40 @ case 0
	.4byte _080C3F40 @ case 1
	.4byte _080C3F40 @ case 2
	.4byte _080C3F40 @ case 3
	.4byte _080C3F4A @ case 4
	.4byte _080C3F50 @ case 5
	.4byte _080C3F50 @ case 6
	.4byte _080C3F50 @ case 7
	.4byte _080C3F50 @ case 8
_080C3F40:
	lsls r4, r3, #3
	asrs r1, r2, #0x18
	movs r0, #3
	subs r0, r0, r1
	b _080C3F56
_080C3F4A:
	movs r0, #0x38
	adds r4, r3, #0
	b _080C3F56
_080C3F50:
	lsls r4, r3, #3
	asrs r0, r2, #0x18
	subs r0, #1
_080C3F56:
	orrs r4, r0
_080C3F58:
	movs r0, #0x3f
	ands r4, r0
	lsls r0, r4, #1
	movs r3, #0x7f
	rsbs r3, r3, #0
	adds r1, r3, #0
	orrs r0, r1
	mov r1, ip
	strb r0, [r1, #0x1c]
	movs r0, #0xd0
	strb r0, [r1, #0x18]
_080C3F6E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80C3F78
sub_80C3F78: @ 0x080C3F78
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0x18]
	cmp r0, #0xe0
	beq _080C3F94
	cmp r0, #0xe0
	blt _080C3FA4
	cmp r0, #0xe8
	bgt _080C3FA4
	cmp r0, #0xe7
	blt _080C3FA4
	movs r4, #3
	ldrb r5, [r2, #0x1e]
	b _080C4004
_080C3F94:
	movs r1, #0
	movs r0, #0xe1
	strb r0, [r2, #0x18]
	str r1, [r2, #4]
	movs r0, #0x80
	lsls r0, r0, #0xd
	str r0, [r2]
	b _080C3FF6
_080C3FA4:
	movs r4, #3
	ldrb r5, [r2, #0x1e]
	movs r6, #1
	ldr r1, _080C4000 @ =0x04000126
_080C3FAC:
	ldrh r0, [r1]
	adds r3, r0, #0
	adds r0, r5, #0
	asrs r0, r4
	ands r0, r6
	cmp r0, #0
	beq _080C3FC0
	ldr r0, [r2, #4]
	cmp r3, r0
	bne _080C3F94
_080C3FC0:
	subs r1, #2
	subs r4, #1
	cmp r4, #0
	bne _080C3FAC
	ldrb r0, [r2, #0x18]
	adds r0, #1
	strb r0, [r2, #0x18]
	ldr r1, [r2]
	ldrh r0, [r2]
	str r0, [r2, #4]
	cmp r1, #0
	bne _080C3FEE
	ldr r0, [r2, #0x28]
	adds r1, r0, #0
	adds r1, #0xac
	ldrb r1, [r1]
	adds r0, #0xad
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r1, r0
	str r1, [r2, #4]
	lsls r1, r1, #5
	str r1, [r2]
_080C3FEE:
	ldr r0, [r2]
	lsrs r0, r0, #5
	str r0, [r2]
_080C3FF4:
	ldrh r1, [r2]
_080C3FF6:
	adds r0, r2, #0
	bl sub_80C3D6C
	b _080C408E
	.align 2, 0
_080C4000: .4byte 0x04000126
_080C4004:
	lsls r0, r4, #1
	ldr r1, _080C404C @ =0x04000120
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r3, r0, #0
	adds r0, r5, #0
	asrs r0, r4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C4020
	ldr r0, [r2, #4]
	cmp r3, r0
	bne _080C4050
_080C4020:
	subs r4, #1
	cmp r4, #0
	bne _080C4004
	ldrb r0, [r2, #0x18]
	adds r0, #1
	strb r0, [r2, #0x18]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe9
	beq _080C408C
	ldr r0, [r2, #0x28]
	adds r1, r0, #0
	adds r1, #0xae
	ldrb r1, [r1]
	adds r0, #0xaf
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r1, r0
	str r1, [r2]
	str r1, [r2, #4]
	b _080C3FF4
	.align 2, 0
_080C404C: .4byte 0x04000120
_080C4050:
	movs r1, #0
	strb r1, [r2, #0x1e]
	strb r1, [r2, #0x18]
	strb r1, [r2, #0x1d]
	adds r3, r2, #0
	adds r3, #0x4a
	movs r0, #0xf
	strb r0, [r3]
	adds r0, r2, #0
	adds r0, #0x48
	strb r1, [r0]
	strh r1, [r2, #0x16]
	ldr r0, _080C407C @ =0x04000134
	strh r1, [r0]
	ldr r2, _080C4080 @ =0x04000128
	ldr r3, _080C4084 @ =0x00002003
	adds r0, r3, #0
	strh r0, [r2]
	ldr r0, _080C4088 @ =0x0400012A
	strh r1, [r0]
	movs r0, #0x71
	b _080C408E
	.align 2, 0
_080C407C: .4byte 0x04000134
_080C4080: .4byte 0x04000128
_080C4084: .4byte 0x00002003
_080C4088: .4byte 0x0400012A
_080C408C:
	movs r0, #0
_080C408E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_80C4094
sub_80C4094: @ 0x080C4094
	adds r2, r0, #0
	movs r1, #0
	strb r1, [r2, #0x1e]
	strb r1, [r2, #0x18]
	strb r1, [r2, #0x1d]
	adds r3, r2, #0
	adds r3, #0x4a
	movs r0, #0xf
	strb r0, [r3]
	adds r0, r2, #0
	adds r0, #0x48
	strb r1, [r0]
	strh r1, [r2, #0x16]
	ldr r0, _080C40C0 @ =0x04000134
	strh r1, [r0]
	ldr r2, _080C40C4 @ =0x04000128
	ldr r3, _080C40C8 @ =0x00002003
	adds r0, r3, #0
	strh r0, [r2]
	ldr r0, _080C40CC @ =0x0400012A
	strh r1, [r0]
	bx lr
	.align 2, 0
_080C40C0: .4byte 0x04000134
_080C40C4: .4byte 0x04000128
_080C40C8: .4byte 0x00002003
_080C40CC: .4byte 0x0400012A

	thumb_func_start sub_80C40D0
sub_80C40D0: @ 0x080C40D0
	push {lr}
	ldrb r0, [r0, #0x18]
	cmp r0, #0xe9
	beq _080C40DC
	movs r0, #0
	b _080C40DE
_080C40DC:
	movs r0, #1
_080C40DE:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80C40E4
sub_80C40E4: @ 0x080C40E4
	push {r4, r5, lr}
	movs r2, #0
	ldr r3, _080C4124 @ =0x04000128
	ldrh r1, [r3]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080C4108
	ldr r5, _080C4128 @ =0x0000795C
	movs r4, #0x80
_080C40F8:
	adds r2, #1
	cmp r2, r5
	bgt _080C4108
	ldrh r1, [r3]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _080C40F8
_080C4108:
	mov r2, pc
	lsrs r2, r2, #0x18
	movs r1, #0xc
	cmp r2, #2
	beq _080C411A
	movs r1, #0xd
	cmp r2, #8
	beq _080C411A
	movs r1, #4
_080C411A:
	subs r0, r0, r1
	bgt _080C411A
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C4124: .4byte 0x04000128
_080C4128: .4byte 0x0000795C

.if 0
.endif

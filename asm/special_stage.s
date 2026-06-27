.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
	thumb_func_start sub_80B5CC4
sub_80B5CC4: @ 0x080B5CC4
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
.endif

	thumb_func_start sub_80B5DF4
sub_80B5DF4: @ 0x080B5DF4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	lsls r5, r5, #0x10
	ldr r0, _080B5EA8 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r0, r2
	ldr r1, [r2]
	ldr r1, [r1, #8]
	ldrh r1, [r1, #6]
	mov sb, r1
	lsrs r1, r5, #0x10
	mov sl, r1
	asrs r5, r5, #0x10
	lsls r1, r5, #2
	adds r1, r1, r5
	lsls r1, r1, #3
	movs r3, #0xca
	lsls r3, r3, #1
	adds r1, r1, r3
	adds r7, r2, r1
	ldr r1, _080B5EAC @ =0x0300011C
	adds r0, r0, r1
	ldrh r3, [r6, #2]
	mov r8, r3
	ldrh r4, [r6, #4]
	ldrh r1, [r6, #6]
	subs r4, r4, r1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r2, _080B5EB0 @ =0x0400000A
	adds r1, r7, #0
	bl CpuSet
	movs r1, #0x83
	lsls r1, r1, #5
	adds r0, r1, #0
	orrs r5, r0
	movs r0, #0xc0
	lsls r0, r0, #0xc
	orrs r5, r0
	str r5, [r7, #8]
	mov r3, r8
	strh r3, [r7, #0x10]
	strh r4, [r7, #0x12]
	movs r0, #0xd0
	lsls r0, r0, #2
	strh r0, [r7, #0x14]
	ldr r0, _080B5EB4 @ =0x030000AC
	add r0, sb
	ldrh r0, [r0]
	cmp r0, #0x14
	bgt _080B5E72
	cmp r0, #0x13
	bge _080B5E78
_080B5E72:
	adds r0, r7, #0
	bl sub_8E8_80B69B4
_080B5E78:
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r0, r0, #0xb
	ldr r1, _080B5EB8 @ =gOamBuffer + 0x6
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
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B5EA8: .4byte gCurTask
_080B5EAC: .4byte 0x0300011C
_080B5EB0: .4byte 0x0400000A
_080B5EB4: .4byte 0x030000AC
_080B5EB8: .4byte gOamBuffer + 0x6

	thumb_func_start sub_80B5EBC
sub_80B5EBC: @ 0x080B5EBC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	adds r3, r0, #0
	str r1, [sp, #0x28]
	ldr r0, _080B5FC8 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r1, r0, r2
	mov r8, r1
	ldr r5, [r1]
	ldr r1, [r5, #0xc]
	ldrh r1, [r1, #6]
	adds r1, r1, r2
	str r1, [sp, #0x2c]
	lsls r3, r3, #0x10
	str r3, [sp, #0x30]
	asrs r4, r3, #0x10
	lsls r1, r4, #2
	adds r1, r1, r4
	lsls r1, r1, #3
	movs r2, #0xca
	lsls r2, r2, #1
	adds r1, r1, r2
	mov r3, r8
	adds r7, r3, r1
	ldr r2, _080B5FCC @ =gUnknown_08E2EF8C
	ldr r6, _080B5FD0 @ =0x000008C7
	adds r1, r5, r6
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldr r3, [sp, #0x28]
	movs r6, #8
	ldrsh r1, [r3, r6]
	lsls r1, r1, #4
	adds r6, r2, r1
	ldr r1, _080B5FD4 @ =gSineTable
	mov sb, r1
	ldr r2, _080B5FD8 @ =0x030008E4
	adds r1, r0, r2
	ldrh r2, [r1]
	lsls r1, r2, #1
	add r1, sb
	ldrh r1, [r1]
	str r1, [sp, #0x38]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #1
	add r2, sb
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	ldr r1, _080B5FDC @ =0x0300007C
	adds r0, r0, r1
	ldr r2, _080B5FE0 @ =0x0400000A
	adds r1, r7, #0
	bl CpuSet
	movs r2, #0x83
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r4, r0
	movs r0, #0xc0
	lsls r0, r0, #0xc
	orrs r4, r0
	str r4, [r7, #8]
	ldr r3, [sp, #0x28]
	movs r0, #4
	ldrsh r1, [r3, r0]
	ldr r2, _080B5FE4 @ =0x000008DA
	adds r5, r5, r2
	movs r3, #0
	ldrsh r0, [r5, r3]
	subs r0, #0xf
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r3, r2, #0
	cmp r1, r0
	bge _080B5F76
	movs r0, #0xd0
	lsls r0, r0, #2
	adds r3, r0, #0
_080B5F76:
	movs r2, #0
	strh r3, [r7, #0x14]
	ldr r1, [sp, #0x2c]
	ldr r0, [r1, #0x54]
	asrs r0, r0, #0xa
	movs r1, #0x1e
	subs r1, r1, r0
	str r1, [sp, #0x34]
	mov r0, sp
	movs r1, #8
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	strh r2, [r0, #0x10]
	mov r1, sp
	movs r0, #5
	strh r0, [r1, #0x12]
	movs r2, #4
	ldrsh r0, [r6, r2]
	lsls r0, r0, #0x10
	str r0, [sp, #4]
	movs r2, #0
	ldr r3, [sp, #0x30]
	str r3, [sp, #0x3c]
	ldr r0, [sp, #0x38]
	lsls r0, r0, #0x10
	str r0, [sp, #0x40]
	mov r1, sl
	lsls r1, r1, #0x10
	mov sl, r1
	add r4, sp, #0x14
_080B5FB2:
	movs r1, #0
	lsls r2, r2, #0x10
	mov sb, r2
_080B5FB8:
	mov r2, sb
	cmp r2, #0
	beq _080B5FEC
	ldr r0, _080B5FE8 @ =0x000008E2
	add r0, r8
	ldrh r0, [r0]
	rsbs r3, r0, #0
	b _080B5FF2
	.align 2, 0
_080B5FC8: .4byte gCurTask
_080B5FCC: .4byte gUnknown_08E2EF8C
_080B5FD0: .4byte 0x000008C7
_080B5FD4: .4byte gSineTable
_080B5FD8: .4byte 0x030008E4
_080B5FDC: .4byte 0x0300007C
_080B5FE0: .4byte 0x0400000A
_080B5FE4: .4byte 0x000008DA
_080B5FE8: .4byte 0x000008E2
_080B5FEC:
	ldr r0, _080B60D0 @ =0x000008E2
	add r0, r8
	ldrh r3, [r0]
_080B5FF2:
	lsls r0, r1, #0x10
	asrs r5, r0, #0x10
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r1, r0, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r3, r3, r0
	ldr r0, _080B60D4 @ =0x000003FF
	ands r3, r0
	movs r0, #2
	ldrsh r1, [r6, r0]
	lsls r1, r1, #0x10
	movs r0, #8
	ldrsh r2, [r6, r0]
	mov ip, r2
	ldr r2, [sp, #0x40]
	asrs r0, r2, #0x10
	mov r2, ip
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, r1, r0
	str r1, [sp]
	lsls r0, r3, #1
	ldr r2, _080B60D8 @ =gSineTable
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #5
	adds r1, r1, r0
	str r1, [sp]
	movs r0, #6
	ldrsh r1, [r6, r0]
	lsls r1, r1, #0xc
	movs r0, #0xa
	ldrsh r2, [r6, r0]
	mov ip, r2
	mov r2, sl
	asrs r0, r2, #0x10
	mov r2, ip
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, r1, r0
	str r1, [sp, #8]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r3, r2
	lsls r0, r0, #1
	ldr r3, _080B60D8 @ =gSineTable
	adds r0, r0, r3
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #3
	adds r1, r1, r0
	str r1, [sp, #8]
	mov r3, r8
	ldr r2, [r3]
	adds r0, r4, #0
	mov r1, sp
	ldr r3, [sp, #0x34]
	bl sub_80B67C4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080B6086
	ldrh r0, [r4, #2]
	strh r0, [r7, #0x10]
	ldrh r0, [r4, #4]
	ldrh r1, [r4, #6]
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl sub_8E8_80B69B4
_080B6086:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _080B5FB8
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, sb
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _080B5FB2
	ldr r6, [sp, #0x3c]
	asrs r0, r6, #0xb
	ldr r1, _080B60DC @ =gOamBuffer + 0x6
	adds r0, r0, r1
	ldr r2, [sp, #0x28]
	ldrh r1, [r2, #0xc]
	strh r1, [r0]
	adds r0, #8
	ldrh r1, [r2, #0xe]
	strh r1, [r0]
	adds r0, #8
	ldrh r1, [r2, #0x10]
	strh r1, [r0]
	ldrh r1, [r2, #0x12]
	strh r1, [r0, #8]
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B60D0: .4byte 0x000008E2
_080B60D4: .4byte 0x000003FF
_080B60D8: .4byte gSineTable
_080B60DC: .4byte gOamBuffer + 0x6

	thumb_func_start sub_80B60E0
sub_80B60E0: @ 0x080B60E0
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	adds r5, r1, #0
	ldr r0, _080B6188 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r4, [r0]
	lsls r2, r2, #0x10
	asrs r7, r2, #0x10
	lsls r1, r7, #2
	adds r1, r1, r7
	lsls r1, r1, #3
	movs r2, #0xca
	lsls r2, r2, #1
	adds r1, r1, r2
	adds r6, r0, r1
	ldrh r2, [r5]
	subs r2, #0xb
	lsls r2, r2, #0x10
	asrs r2, r2, #0x13
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #3
	movs r3, #0xa2
	lsls r3, r3, #1
	adds r1, r1, r3
	adds r0, r0, r1
	ldr r2, _080B618C @ =0x0400000A
	adds r1, r6, #0
	bl CpuSet
	movs r0, #0x83
	lsls r0, r0, #5
	adds r1, r0, #0
	adds r0, r7, #0
	orrs r0, r1
	movs r1, #0xc0
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r6, #8]
	ldrh r0, [r5, #2]
	strh r0, [r6, #0x10]
	ldrh r0, [r5, #4]
	ldrh r1, [r5, #6]
	subs r0, r0, r1
	strh r0, [r6, #0x12]
	movs r2, #4
	ldrsh r1, [r5, r2]
	ldr r3, _080B6190 @ =0x000008DA
	adds r4, r4, r3
	movs r2, #0
	ldrsh r0, [r4, r2]
	subs r0, #0xf
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r2, r3, #0
	cmp r1, r0
	bge _080B6160
	movs r0, #0xd0
	lsls r0, r0, #2
	adds r2, r0, #0
_080B6160:
	strh r2, [r6, #0x14]
	adds r0, r6, #0
	bl sub_8E8_80B69B4
	lsls r0, r7, #5
	ldr r1, _080B6194 @ =gOamBuffer + 0x6
	adds r0, r0, r1
	ldrh r1, [r5, #0xc]
	strh r1, [r0]
	adds r0, #8
	ldrh r1, [r5, #0xe]
	strh r1, [r0]
	adds r0, #8
	ldrh r1, [r5, #0x10]
	strh r1, [r0]
	ldrh r1, [r5, #0x12]
	strh r1, [r0, #8]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B6188: .4byte gCurTask
_080B618C: .4byte 0x0400000A
_080B6190: .4byte 0x000008DA
_080B6194: .4byte gOamBuffer + 0x6

	thumb_func_start sub_80B6198
sub_80B6198: @ 0x080B6198
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	ldr r0, [r7, #4]
	ldrh r6, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r0, r6, r2
	mov ip, r0
	ldr r0, [r7, #8]
	ldrh r4, [r0, #6]
	ldr r0, [r7, #0xc]
	ldrh r3, [r0, #6]
	adds r3, r3, r2
	adds r2, #0x8c
	adds r0, r4, r2
	ldr r0, [r0]
	str r0, [sp]
	adds r2, #4
	adds r0, r4, r2
	ldr r5, [r0]
	ldr r2, _080B6220 @ =0xFFFFEC00
	adds r0, r5, r2
	lsls r0, r0, #1
	movs r2, #0xf2
	lsls r2, r2, #7
	subs r2, r2, r0
	mov sb, r2
	ldr r0, [r3, #0x54]
	subs r0, r0, r5
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldr r3, _080B6224 @ =0x030008E0
	adds r6, r6, r3
	strh r0, [r6]
	movs r2, #0x8b
	lsls r2, r2, #4
	adds r0, r7, r2
	ldr r5, [r0]
	ldr r3, _080B6228 @ =0x030000A0
	adds r4, r4, r3
	ldr r2, [r4]
	movs r0, #0x78
	subs r0, r0, r2
	lsls r0, r0, #0xe
	adds r5, r5, r0
	lsls r2, r1, #0x10
	asrs r1, r2, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080B622C
	movs r1, #0x8c
	lsls r1, r1, #4
	adds r0, r7, r1
	ldrh r1, [r0]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #8
	ble _080B621A
	movs r1, #8
_080B621A:
	adds r0, r1, #0
	b _080B622E
	.align 2, 0
_080B6220: .4byte 0xFFFFEC00
_080B6224: .4byte 0x030008E0
_080B6228: .4byte 0x030000A0
_080B622C:
	lsrs r0, r2, #0x10
_080B622E:
	movs r2, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r2, r0
	bge _080B62B2
	ldr r3, _080B62E8 @ =0x000008E2
	add r3, ip
	mov r8, r3
	ldr r6, _080B62EC @ =gSineTable
	ldr r7, _080B62F0 @ =0x0000FF60
	mov sl, r7
	str r0, [sp, #4]
_080B6246:
	lsls r0, r2, #0x10
	asrs r4, r0, #0x10
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r0, r0, #2
	ldr r1, _080B62F4 @ =0x000005F4
	adds r0, r0, r1
	mov r3, ip
	adds r2, r3, r0
	str r5, [r2]
	ldr r7, [sp]
	str r7, [r2, #4]
	mov r0, sb
	str r0, [r2, #8]
	lsls r0, r4, #7
	mov r1, r8
	ldrh r1, [r1]
	adds r0, r0, r1
	ldr r3, _080B62F8 @ =0x000003FF
	adds r1, r3, #0
	ands r0, r1
	adds r3, r0, #0
	lsls r0, r3, #1
	adds r0, r0, r6
	movs r7, #0
	ldrsh r1, [r0, r7]
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r3, r7
	lsls r0, r0, #1
	adds r0, r0, r6
	movs r7, #0
	ldrsh r0, [r0, r7]
	asrs r1, r1, #7
	str r1, [r2, #0xc]
	movs r0, #0xa0
	str r0, [r2, #0x10]
	movs r1, #0xa0
	lsls r1, r1, #3
	adds r0, r3, r1
	str r0, [r2, #0x14]
	mov r3, sl
	strh r3, [r2, #0x18]
	movs r0, #1
	strb r0, [r2, #0x1a]
	movs r7, #0
	strb r7, [r2, #0x1b]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #4]
	cmp r0, r1
	blt _080B6246
_080B62B2:
	lsls r1, r2, #0x10
	asrs r0, r1, #0x10
	cmp r0, #7
	bgt _080B62D6
	ldr r3, _080B62F4 @ =0x000005F4
	movs r2, #0
_080B62BE:
	asrs r0, r1, #0x10
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r3
	add r1, ip
	strb r2, [r1, #0x1a]
	adds r0, #1
	lsls r1, r0, #0x10
	asrs r0, r1, #0x10
	cmp r0, #7
	ble _080B62BE
_080B62D6:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B62E8: .4byte 0x000008E2
_080B62EC: .4byte gSineTable
_080B62F0: .4byte 0x0000FF60
_080B62F4: .4byte 0x000005F4
_080B62F8: .4byte 0x000003FF

	thumb_func_start sub_80B62FC
sub_80B62FC: @ 0x080B62FC
	push {r4, r5, lr}
	ldr r0, [r0, #4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r2, #0
_080B630A:
	lsls r2, r2, #0x10
	asrs r1, r2, #0x10
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080B636C @ =0x000005F4
	adds r0, r0, r1
	adds r3, r4, r0
	ldrb r0, [r3, #0x1a]
	cmp r0, #0
	beq _080B6356
	ldr r1, [r3, #0xc]
	lsls r1, r1, #8
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
	ldr r1, [r3, #0x10]
	lsls r1, r1, #8
	ldr r0, [r3, #4]
	adds r0, r0, r1
	str r0, [r3, #4]
	ldr r0, [r3, #8]
	ldr r1, [r3, #0x14]
	adds r0, r0, r1
	str r0, [r3, #8]
	movs r5, #0x18
	ldrsh r0, [r3, r5]
	adds r1, r1, r0
	str r1, [r3, #0x14]
	ldrb r0, [r3, #0x1b]
	adds r0, #1
	movs r1, #0
	strb r0, [r3, #0x1b]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bls _080B6356
	strb r1, [r3, #0x1a]
_080B6356:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r2, r1
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #7
	ble _080B630A
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B636C: .4byte 0x000005F4

	thumb_func_start sub_80B6370
sub_80B6370: @ 0x080B6370
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	ldr r2, _080B6448 @ =gCurTask
	ldr r2, [r2]
	ldrh r2, [r2, #6]
	mov sl, r2
	movs r2, #0xc0
	lsls r2, r2, #0x12
	mov r3, sl
	adds r4, r3, r2
	ldr r3, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov sb, r0
	lsls r0, r0, #2
	add r0, sb
	lsls r0, r0, #3
	ldr r5, _080B644C @ =0x000004B4
	adds r0, r0, r5
	adds r0, r0, r4
	mov r8, r0
	ldr r0, [r3, #0xc]
	ldrh r0, [r0, #6]
	adds r0, r0, r2
	ldr r0, [r0, #0x54]
	asrs r0, r0, #8
	movs r3, #0x1e
	subs r3, r3, r0
	ldr r0, [r1]
	str r0, [sp]
	ldr r0, [r1, #4]
	str r0, [sp, #4]
	ldr r0, [r1, #8]
	lsls r0, r0, #4
	str r0, [sp, #8]
	mov r0, sp
	movs r2, #0
	movs r1, #8
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	strh r2, [r0, #0x10]
	mov r1, sp
	movs r0, #5
	strh r0, [r1, #0x12]
	add r7, sp, #0x14
	ldr r2, [r4]
	adds r0, r7, #0
	bl sub_80B67C4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080B6438
	movs r0, #2
	ldrsh r6, [r7, r0]
	movs r1, #4
	ldrsh r5, [r7, r1]
	movs r3, #6
	ldrsh r0, [r7, r3]
	subs r5, r5, r0
	ldr r0, _080B6450 @ =0x03000004
	add r0, sl
	ldr r2, _080B6454 @ =0x0400000A
	mov r1, r8
	bl CpuSet
	mov r4, sb
	adds r4, #0x18
	ldr r0, _080B6458 @ =0x000C0060
	orrs r0, r4
	mov r1, r8
	str r0, [r1, #8]
	strh r6, [r1, #0x10]
	ldr r0, _080B645C @ =0x030008E0
	add r0, sl
	ldrh r0, [r0]
	adds r0, r0, r5
	strh r0, [r1, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r1, #0x14]
	mov r0, r8
	bl sub_8E8_80B69B4
	lsls r4, r4, #5
	ldr r0, _080B6460 @ =gOamBuffer + 0x6
	adds r4, r4, r0
	ldrh r0, [r7, #0xc]
	strh r0, [r4]
	adds r4, #8
	ldrh r0, [r7, #0xe]
	strh r0, [r4]
	adds r4, #8
	ldrh r0, [r7, #0x10]
	strh r0, [r4]
	ldrh r0, [r7, #0x12]
	strh r0, [r4, #8]
_080B6438:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B6448: .4byte gCurTask
_080B644C: .4byte 0x000004B4
_080B6450: .4byte 0x03000004
_080B6454: .4byte 0x0400000A
_080B6458: .4byte 0x000C0060
_080B645C: .4byte 0x030008E0
_080B6460: .4byte gOamBuffer + 0x6

	thumb_func_start sub_80B6464
sub_80B6464: @ 0x080B6464
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x28
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r0, _080B6524 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r4, r2, r3
	ldr r0, [r4]
	ldr r5, _080B6528 @ =0x030000F4
	adds r6, r2, r5
	ldr r0, [r0, #0xc]
	ldrh r0, [r0, #6]
	adds r0, r0, r3
	ldr r0, [r0, #0x54]
	asrs r0, r0, #0xa
	movs r3, #0x1e
	subs r3, r3, r0
	ldr r0, [r1]
	str r0, [sp]
	ldr r0, [r1, #4]
	str r0, [sp, #4]
	ldr r0, [r1, #8]
	str r0, [sp, #8]
	mov r0, sp
	movs r2, #0
	movs r1, #8
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	strh r2, [r0, #0x10]
	mov r1, sp
	movs r0, #5
	strh r0, [r1, #0x12]
	add r7, sp, #0x14
	ldr r2, [r4]
	adds r0, r7, #0
	bl sub_80B67C4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080B6514
	movs r1, #2
	ldrsh r0, [r7, r1]
	mov r8, r0
	movs r0, #4
	ldrsh r5, [r7, r0]
	movs r1, #6
	ldrsh r0, [r7, r1]
	subs r5, r5, r0
	ldr r2, _080B652C @ =0x0400000A
	adds r0, r6, #0
	adds r1, r6, #0
	bl CpuSet
	mov r0, sb
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	adds r4, #0x14
	ldr r0, _080B6530 @ =0x000C0060
	orrs r0, r4
	str r0, [r6, #8]
	mov r1, r8
	strh r1, [r6, #0x10]
	strh r5, [r6, #0x12]
	movs r0, #0xc0
	strh r0, [r6, #0x14]
	adds r0, r6, #0
	bl sub_8E8_80B69B4
	lsls r4, r4, #5
	ldr r0, _080B6534 @ =gOamBuffer + 0x6
	adds r4, r4, r0
	ldrh r0, [r7, #0xc]
	strh r0, [r4]
	adds r4, #8
	ldrh r0, [r7, #0xe]
	strh r0, [r4]
	adds r4, #8
	ldrh r0, [r7, #0x10]
	strh r0, [r4]
	ldrh r0, [r7, #0x12]
	strh r0, [r4, #8]
_080B6514:
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B6524: .4byte gCurTask
_080B6528: .4byte 0x030000F4
_080B652C: .4byte 0x0400000A
_080B6530: .4byte 0x000C0060
_080B6534: .4byte gOamBuffer + 0x6

	thumb_func_start sub_80B6538
sub_80B6538: @ 0x080B6538
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r0, _080B65D4 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r6, r0, r3
	ldr r0, [r6]
	ldr r1, [r0, #8]
	ldrh r2, [r1, #6]
	adds r3, r3, r2
	mov ip, r3
	movs r1, #0x8b
	lsls r1, r1, #4
	adds r0, r0, r1
	ldr r5, [r0]
	ldr r1, _080B65D8 @ =0x030000A0
	adds r0, r2, r1
	ldr r1, [r0]
	movs r0, #0x78
	subs r0, r0, r1
	lsls r0, r0, #0xe
	adds r5, r5, r0
	movs r1, #0
	ldr r0, _080B65DC @ =0x0300008C
	adds r7, r2, r0
	movs r2, #0
	mov r8, r2
_080B6576:
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _080B65E0 @ =0x000006D4
	adds r0, r0, r2
	adds r3, r6, r0
	ldrb r2, [r3, #0x1a]
	cmp r2, #0
	bne _080B65E8
	ldr r0, [r4]
	str r0, [r3]
	ldr r0, [r4, #4]
	str r0, [r3, #4]
	ldr r0, [r4, #8]
	str r0, [r3, #8]
	ldr r1, [r4]
	subs r1, r5, r1
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	asrs r0, r0, #0xb
	str r0, [r3, #0xc]
	ldr r1, [r4, #4]
	ldr r0, _080B65E4 @ =0xFF973C00
	adds r1, r1, r0
	ldr r0, [r7]
	subs r0, r0, r1
	asrs r0, r0, #6
	str r0, [r3, #0x10]
	ldr r1, [r4, #8]
	asrs r1, r1, #4
	movs r0, #0x8c
	lsls r0, r0, #8
	subs r0, r0, r1
	mov r1, ip
	adds r1, #0x90
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #2
	str r0, [r3, #0x14]
	strh r2, [r3, #0x18]
	movs r0, #1
	strb r0, [r3, #0x1a]
	mov r1, r8
	strb r1, [r3, #0x1b]
	b _080B65F2
	.align 2, 0
_080B65D4: .4byte gCurTask
_080B65D8: .4byte 0x030000A0
_080B65DC: .4byte 0x0300008C
_080B65E0: .4byte 0x000006D4
_080B65E4: .4byte 0xFF973C00
_080B65E8:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _080B6576
_080B65F2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80B65FC
sub_80B65FC: @ 0x080B65FC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	str r1, [sp, #0x28]
	ldr r1, _080B6710 @ =gCurTask
	ldr r1, [r1]
	ldrh r1, [r1, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r1, r1, r3
	str r1, [sp, #0x30]
	ldr r1, [r1]
	str r1, [sp, #0x34]
	ldr r1, [r1, #8]
	ldrh r2, [r1, #6]
	ldr r4, [sp, #0x34]
	ldr r1, [r4, #0xc]
	ldrh r1, [r1, #6]
	adds r1, r1, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	movs r5, #0x8b
	lsls r5, r5, #4
	adds r0, r4, r5
	movs r4, #2
	ldrsh r3, [r0, r4]
	mov sb, r3
	ldr r5, _080B6714 @ =0x030000A0
	adds r0, r2, r5
	ldr r0, [r0]
	movs r3, #0x78
	subs r0, r3, r0
	asrs r0, r0, #2
	add sb, r0
	ldr r4, _080B6718 @ =0x0300008C
	adds r0, r2, r4
	movs r4, #2
	ldrsh r5, [r0, r4]
	str r5, [sp, #0x38]
	ldr r5, _080B671C @ =0x03000090
	adds r2, r2, r5
	ldr r0, [r2]
	asrs r0, r0, #8
	subs r3, r3, r0
	mov r8, r3
	ldr r0, [r1, #0x54]
	asrs r0, r0, #0xa
	movs r1, #0x1e
	subs r1, r1, r0
	str r1, [sp, #0x2c]
	add r8, r1
	movs r2, #0
	mov r7, sp
_080B666E:
	lsls r2, r2, #0x10
	asrs r1, r2, #0x10
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080B6720 @ =0x000006D4
	adds r0, r0, r1
	ldr r3, [sp, #0x30]
	adds r5, r3, r0
	ldrb r0, [r5, #0x1a]
	str r2, [sp, #0x3c]
	cmp r0, #0
	beq _080B674A
	ldr r3, [r5]
	ldr r0, [r5, #0xc]
	adds r3, r3, r0
	str r3, [r5]
	ldr r2, [r5, #4]
	ldr r0, [r5, #0x10]
	adds r2, r2, r0
	str r2, [r5, #4]
	ldr r1, [r5, #8]
	ldr r0, [r5, #0x14]
	adds r1, r1, r0
	str r1, [r5, #8]
	asrs r3, r3, #0x10
	asrs r2, r2, #0x10
	asrs r1, r1, #0xc
	mov r0, sb
	subs r0, #0xa
	cmp r3, r0
	ble _080B66DA
	adds r0, #0x14
	cmp r3, r0
	bge _080B66DA
	ldr r0, [sp, #0x38]
	subs r0, #0xa
	cmp r2, r0
	ble _080B66DA
	ldr r0, [sp, #0x38]
	adds r0, #8
	cmp r2, r0
	bge _080B66DA
	mov r0, r8
	subs r0, #0x11
	cmp r1, r0
	blt _080B66DA
	adds r0, #0x25
	cmp r1, r0
	bgt _080B66DA
	ldr r0, [sp, #0x34]
	movs r1, #5
	bl sub_80B4654
_080B66DA:
	ldr r0, [r5]
	str r0, [sp]
	ldr r0, [r5, #4]
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	str r0, [sp, #8]
	movs r4, #0
	movs r1, #0
	movs r0, #8
	strh r0, [r7, #0xc]
	strh r0, [r7, #0xe]
	strh r1, [r7, #0x10]
	movs r0, #5
	strh r0, [r7, #0x12]
	add r6, sp, #0x14
	ldr r0, [sp, #0x30]
	ldr r2, [r0]
	adds r0, r6, #0
	mov r1, sp
	ldr r3, [sp, #0x2c]
	bl sub_80B67C4
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080B6724
	strb r4, [r5, #0x1a]
	b _080B674A
	.align 2, 0
_080B6710: .4byte gCurTask
_080B6714: .4byte 0x030000A0
_080B6718: .4byte 0x0300008C
_080B671C: .4byte 0x03000090
_080B6720: .4byte 0x000006D4
_080B6724:
	mov r1, sl
	lsls r4, r1, #0x10
	asrs r4, r4, #0x10
	lsls r5, r4, #2
	adds r5, r5, r4
	lsls r5, r5, #2
	ldr r2, [sp, #0x28]
	adds r5, r2, r5
	adds r0, r6, #0
	adds r1, r5, #0
	ldr r2, _080B6770 @ =0x04000005
	bl CpuSet
	movs r0, #6
	strh r0, [r5]
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov sl, r4
_080B674A:
	ldr r3, [sp, #0x3c]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r3, r4
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _080B666E
	mov r5, sl
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080B6770: .4byte 0x04000005

.if 0
.endif

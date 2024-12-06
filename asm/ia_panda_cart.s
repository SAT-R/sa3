.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 01
	thumb_func_start Task_804891C
Task_804891C: @ 0x0804891C
	push {r4, r5, r6, lr}
	ldr r0, _08048958 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0		@ r5 = cart
	adds r0, #0xc
	adds r6, r4, r0		@ r6 = s
	bl sub_8048A50
	ldr r1, _0804895C @ =0x03000056
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #2
	bne _080489C4
	subs r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r1, r0, #0x10
	asrs r2, r1, #0x10
	cmp r2, #0
	beq _08048960
	cmp r2, #0x40
	bgt _08048960
	ldr r0, [r5, #0x44]
	adds r0, #0x10
	str r0, [r5, #0x44]
	adds r4, r1, #0
	b _08048970
	.align 2, 0
_08048958: .4byte gCurTask
_0804895C: .4byte 0x03000056
_08048960:
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r4, r0, #0
	cmp r1, #0xbf
	ble _08048970
	ldr r0, [r5, #0x44]
	subs r0, #0x10
	str r0, [r5, #0x44]
_08048970:
	ldr r0, [r5, #0x44]
	cmp r0, #0
	bge _08048978
	rsbs r0, r0, #0
_08048978:
	movs r1, #0x80
	lsls r1, r1, #4
	cmp r0, r1
	ble _08048992
	ldr r0, [r5, #0x44]
	cmp r0, #0
	bge _08048990
	ldr r0, _0804898C @ =0xFFFFF800
	str r0, [r5, #0x44]
	b _08048992
	.align 2, 0
_0804898C: .4byte 0xFFFFF800
_08048990:
	str r1, [r5, #0x44]
_08048992:
	ldr r3, [r5, #0x44]
	ldr r2, _080489C0 @ =gSineTable
	asrs r1, r4, #0x10
	lsls r0, r1, #3
	movs r4, #0x80
	lsls r4, r4, #2
	adds r0, r0, r4
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r3, r0
	asrs r0, r0, #8
	str r0, [r5, #0x48]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r3, r0
	asrs r0, r0, #8
	adds r0, r0, r4
	b _080489D0
	.align 2, 0
_080489C0: .4byte gSineTable
_080489C4:
	cmp r0, #3
	beq _080489CC
	cmp r0, #1
	bne _080489D2
_080489CC:
	ldr r0, [r5, #0x4c]
	adds r0, #0x20
_080489D0:
	str r0, [r5, #0x4c]
_080489D2:
	ldr r0, [r5, #0x3c]
	ldr r1, [r5, #0x48]
	adds r0, r0, r1
	str r0, [r5, #0x3c]
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x4c]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	ldr r2, [r5, #0x50]
	cmp r2, #0
	beq _08048A44
	ldr r1, [r2]
	ldr r0, _08048A00 @ =Player_8008A8C
	cmp r1, r0
	beq _080489F6
	ldr r0, _08048A04 @ =Player_800ED80
	cmp r1, r0
	bne _08048A0C
_080489F6:
	ldr r1, _08048A08 @ =0x00000257
	adds r0, r2, #0
	bl Player_StopSong
	b _08048A40
	.align 2, 0
_08048A00: .4byte Player_8008A8C
_08048A04: .4byte Player_800ED80
_08048A08: .4byte 0x00000257
_08048A0C:
	ldr r1, _08048A3C @ =gStageData
	ldrb r0, [r1, #4]
	subs r0, #5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08048A20
	ldrb r0, [r1, #3]
	cmp r0, #5
	beq _080489F6
_08048A20:
	ldr r0, [r2, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08048A40
	ldr r0, [r2, #0x6c]
	cmp r0, r6
	bne _08048A40
	ldr r0, [r5, #0x3c]
	str r0, [r2, #0x10]
	ldr r0, [r5, #0x40]
	str r0, [r2, #0x14]
	b _08048A44
	.align 2, 0
_08048A3C: .4byte gStageData
_08048A40:
	movs r0, #0
	str r0, [r5, #0x50]
_08048A44:
	bl sub_8048C18
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.endif

	thumb_func_start sub_8048A50
sub_8048A50: @ 0x08048A50
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	ldr r0, _08048AB4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, #0x55
	adds r0, r0, r1
	mov r8, r0
	ldrb r1, [r0]
	add r0, sp, #8
	strb r1, [r0]
	ldr r3, _08048AB8 @ =gSineTable
	lsls r0, r1, #3
	adds r0, r0, r3
	movs r4, #0
	ldrsh r2, [r0, r4]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	rsbs r0, r0, #0
	asrs r7, r0, #6
	lsls r0, r1, #3
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r0, r0, r3
	movs r3, #0
	ldrsh r2, [r0, r3]
	lsls r0, r2, #1
	adds r0, r0, r2
	asrs r2, r0, #3
	adds r1, #0x20
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	add r0, sp, #8
	strb r1, [r0]
	lsrs r4, r1, #6
	cmp r4, #1
	beq _08048B08
	cmp r4, #1
	bgt _08048ABC
	cmp r4, #0
	beq _08048AC6
	b _08048B8A
	.align 2, 0
_08048AB4: .4byte gCurTask
_08048AB8: .4byte gSineTable
_08048ABC:
	cmp r4, #2
	beq _08048B48
	cmp r4, #3
	beq _08048B50
	b _08048B8A
_08048AC6:
	ldr r0, [r5, #0x40]
	adds r0, r0, r2
	asrs r0, r0, #8
	ldr r1, [r5, #0x3c]
	adds r1, r1, r7
	asrs r1, r1, #8
	add r4, sp, #8
	str r4, [sp]
	ldr r2, _08048B04 @ =sub_805217C
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sub_80517FC
	adds r6, r0, #0
	cmp r6, #7
	bgt _08048B8A
	lsls r1, r6, #8
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	add r0, sp, #8
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08048B8A
	mov r0, r8
	strb r1, [r0]
	b _08048B8A
	.align 2, 0
_08048B04: .4byte sub_805217C
_08048B08:
	ldr r0, [r5, #0x3c]
	adds r0, r0, r7
	asrs r0, r0, #8
	ldr r1, [r5, #0x40]
	adds r1, r1, r2
	asrs r1, r1, #8
	movs r3, #8
	rsbs r3, r3, #0
	add r2, sp, #8
	str r2, [sp]
	ldr r2, _08048B44 @ =sub_805203C
	str r2, [sp, #4]
	movs r2, #1
	bl sub_80517FC
	adds r6, r0, #0
	cmp r6, #7
	bgt _08048B8A
	lsls r0, r6, #8
	ldr r1, [r5, #0x3c]
	subs r1, r1, r0
	str r1, [r5, #0x3c]
	add r0, sp, #8
	ldrb r0, [r0]
	ands r4, r0
	cmp r4, #0
	bne _08048B8A
	mov r3, r8
	strb r0, [r3]
	b _08048B8A
	.align 2, 0
_08048B44: .4byte sub_805203C
_08048B48:
	movs r0, #0
	mov r4, r8
	strb r0, [r4]
	b _08048B8A
_08048B50:
	ldr r0, [r5, #0x3c]
	adds r0, r0, r7
	asrs r0, r0, #8
	ldr r1, [r5, #0x40]
	adds r1, r1, r2
	asrs r1, r1, #8
	add r2, sp, #8
	str r2, [sp]
	ldr r2, _08048BCC @ =sub_805203C
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sub_80517FC
	adds r6, r0, #0
	cmp r6, #7
	bgt _08048B8A
	lsls r1, r6, #8
	ldr r0, [r5, #0x3c]
	adds r0, r0, r1
	str r0, [r5, #0x3c]
	add r0, sp, #8
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08048B8A
	mov r3, r8
	strb r1, [r3]
_08048B8A:
	cmp r6, #8
	ble _08048BEC
	adds r1, r5, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #2
	bne _08048C0A
	movs r0, #3
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x57
	ldrb r1, [r0]
	adds r2, r0, #0
	cmp r1, #0
	bne _08048BBE
	movs r1, #0xc0
	lsls r1, r1, #2
	str r1, [r5, #0x48]
	subs r0, #3
	ldrb r0, [r0]
	cmp r0, #0
	beq _08048BBA
	rsbs r0, r1, #0
	str r0, [r5, #0x48]
_08048BBA:
	ldr r0, _08048BD0 @ =0xFFFFFA00
	str r0, [r5, #0x4c]
_08048BBE:
	ldrb r0, [r2]
	cmp r0, #7
	bhi _08048BD4
	adds r0, #1
	strb r0, [r2]
	b _08048BDC
	.align 2, 0
_08048BCC: .4byte sub_805203C
_08048BD0: .4byte 0xFFFFFA00
_08048BD4:
	adds r1, r5, #0
	adds r1, #0x55
	movs r0, #0
	strb r0, [r1]
_08048BDC:
	ldr r0, [r5, #0x50]
	ldr r1, _08048BE8 @ =0x00000257
	bl Player_StopSong
	b _08048C0A
	.align 2, 0
_08048BE8: .4byte 0x00000257
_08048BEC:
	adds r1, r5, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #1
	bne _08048BFA
	movs r0, #2
	b _08048C00
_08048BFA:
	cmp r0, #3
	bne _08048C02
	movs r0, #4
_08048C00:
	strb r0, [r1]
_08048C02:
	adds r1, r5, #0
	adds r1, #0x57
	movs r0, #0
	strb r0, [r1]
_08048C0A:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8048C18
sub_8048C18: @ 0x08048C18
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08048CCC @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	ldr r1, _08048CD0 @ =0x0300000C
	adds r7, r5, r1
	ldr r0, [r4]
	mov sl, r0
	ldr r0, [r4, #0x3c]
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r0, [r4, #0x40]
	lsls r0, r0, #8
	lsrs r6, r0, #0x10
	adds r1, #0x4a
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #4
	bne _08048C80
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _08048C70
	adds r2, r0, #0
	ldr r0, [r2, #4]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #4]
	movs r0, #0
	str r0, [r4, #0x50]
	movs r1, #0x96
	lsls r1, r1, #2
	adds r0, r2, #0
	bl Player_PlaySong
_08048C70:
	ldr r0, _08048CD4 @ =0x03000057
	adds r1, r5, r0
	movs r0, #0
	strb r0, [r1]
	mov r0, sb
	ldr r1, [r0]
	ldr r0, _08048CD8 @ =sub_8048D0C
	str r0, [r1, #8]
_08048C80:
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r5, r0, #0x10
	lsls r0, r6, #0x10
	asrs r6, r0, #0x10
	adds r0, r5, #0
	adds r1, r6, #0
	bl IsWorldPtActive
	adds r3, r0, #0
	cmp r3, #0
	bne _08048CE0
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _08048CBA
	adds r2, r0, #0
	ldr r0, [r2, #4]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #4]
	str r3, [r2, #0x6c]
	strh r3, [r2, #0x18]
	strh r3, [r2, #0x1a]
	strh r3, [r2, #0x1c]
	ldr r1, _08048CDC @ =Player_8005380
	adds r0, r2, #0
	bl SetPlayerCallback
_08048CBA:
	ldrb r0, [r4, #0xa]
	mov r1, sl
	strb r0, [r1]
	ldr r0, _08048CCC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08048CFA
	.align 2, 0
_08048CCC: .4byte gCurTask
_08048CD0: .4byte 0x0300000C
_08048CD4: .4byte 0x03000057
_08048CD8: .4byte sub_8048D0C
_08048CDC: .4byte Player_8005380
_08048CE0:
	ldr r0, _08048D08 @ =gCamera
	ldr r1, [r0]
	subs r1, r5, r1
	strh r1, [r7, #0x10]
	ldr r0, [r0, #4]
	subs r0, r6, r0
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_08048CFA:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08048D08: .4byte gCamera

	thumb_func_start sub_8048D0C
sub_8048D0C: @ 0x08048D0C
	push {r4, lr}
	ldr r3, _08048D30 @ =gCurTask
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, [r4]
	adds r0, #0x57
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0xa
	beq _08048D50
	cmp r0, #0xa
	bgt _08048D34
	cmp r0, #0
	beq _08048D3E
	b _08048D8A
	.align 2, 0
_08048D30: .4byte gCurTask
_08048D34:
	cmp r0, #0x14
	beq _08048D64
	cmp r0, #0x64
	beq _08048D7E
	b _08048D8A
_08048D3E:
	movs r0, #0xa
	strb r0, [r1]
	movs r0, #0x1e
	strh r0, [r4, #8]
	adds r0, r4, #0
	movs r1, #0
	bl sub_8048E74
	b _08048D8A
_08048D50:
	ldrh r0, [r4, #8]
	subs r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08048D74
	movs r0, #0x3c
	strh r0, [r4, #8]
	movs r0, #0x14
	b _08048D72
_08048D64:
	ldrh r0, [r4, #8]
	subs r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08048D74
	movs r0, #0x64
_08048D72:
	strb r0, [r1]
_08048D74:
	adds r0, r4, #0
	movs r1, #1
	bl sub_8048E74
	b _08048D8A
_08048D7E:
	ldrb r0, [r4, #0xa]
	strb r0, [r2]
	ldr r0, [r3]
	bl TaskDestroy
	b _08048D90
_08048D8A:
	adds r0, r4, #0
	bl sub_8048F70
_08048D90:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8048D98
sub_8048D98: @ 0x08048D98
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r1, _08048E68 @ =gUnknown_080D03C0
	mov r0, sp
	movs r2, #8
	bl memcpy
	movs r6, #0
	movs r0, #1
	add r0, sp
	mov sb, r0
	movs r3, #0
	adds r7, r5, #0
	adds r7, #0x78
	adds r4, r5, #0
	adds r4, #0x7c
_08048DC2:
	lsls r0, r6, #2
	adds r0, r5, r0
	adds r1, r0, #0
	adds r1, #0x58
	strh r3, [r1]
	adds r0, #0x5a
	strh r3, [r0]
	lsls r1, r6, #3
	adds r2, r7, r1
	ldr r0, [r5, #0x3c]
	str r0, [r2]
	adds r1, r4, r1
	ldr r0, [r5, #0x40]
	str r0, [r1]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #7
	bls _08048DC2
	ldr r7, [r5, #0xc]
	movs r6, #0
	mov r8, r6
	ldr r1, _08048E6C @ =0x00000393
	mov sl, r1
_08048DF2:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	adds r0, #0xb8
	adds r0, r5, r0
	str r7, [r0]
	mov r2, sl
	strh r2, [r0, #0xc]
	lsls r4, r6, #1
	mov r2, sp
	adds r1, r2, r4
	ldrb r1, [r1]
	strb r1, [r0, #0x1a]
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r0, #0x14]
	mov r1, r8
	strh r1, [r0, #0xe]
	strh r1, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	movs r2, #0
	strb r2, [r0, #0x1f]
	subs r1, #0x11
	str r1, [r0, #0x20]
	mov r1, r8
	str r1, [r0, #8]
	ldr r2, [r5, #0x3c]
	asrs r2, r2, #8
	ldr r3, _08048E70 @ =gCamera
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r0, #0x10]
	ldr r1, [r5, #0x40]
	asrs r1, r1, #8
	ldr r2, [r3, #4]
	subs r1, r1, r2
	strh r1, [r0, #0x12]
	bl UpdateSpriteAnimation
	add r4, sb
	ldrb r0, [r4]
	lsls r0, r0, #5
	adds r7, r7, r0
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #2
	bls _08048DF2
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08048E68: .4byte gUnknown_080D03C0
_08048E6C: .4byte 0x00000393
_08048E70: .4byte gCamera

	thumb_func_start sub_8048E74
sub_8048E74: @ 0x08048E74
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	lsls r1, r1, #0x18
	cmp r1, #0
	bne _08048F20
	movs r4, #0
	movs r0, #0x78
	adds r0, r0, r6
	mov sb, r0
	movs r1, #0x7c
	adds r1, r1, r6
	mov r8, r1
	ldr r2, _08048F10 @ =gPseudoRandom
	mov ip, r2
	ldr r7, _08048F14 @ =gSineTable
_08048E98:
	mov r3, ip
	ldr r1, [r3]
	ldr r0, _08048F18 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08048F1C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r3]
	movs r1, #0xff
	ands r0, r1
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r5, r0, #0
	movs r0, #1
	ands r0, r4
	adds r0, #3
	adds r2, r0, #0
	lsls r0, r4, #2
	adds r3, r6, r0
	adds r1, #1
	adds r0, r5, r1
	lsls r0, r0, #1
	adds r0, r0, r7
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r2, r0
	cmp r0, #0
	bge _08048ED2
	adds r0, #0x3f
_08048ED2:
	asrs r1, r0, #6
	adds r0, r3, #0
	adds r0, #0x58
	strh r1, [r0]
	lsls r0, r5, #1
	adds r0, r0, r7
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r2, r0
	cmp r0, #0
	bge _08048EEA
	adds r0, #0x3f
_08048EEA:
	asrs r1, r0, #6
	adds r0, r3, #0
	adds r0, #0x5a
	strh r1, [r0]
	lsls r1, r4, #3
	mov r3, sb
	adds r2, r3, r1
	ldr r0, [r6, #0x3c]
	str r0, [r2]
	add r1, r8
	ldr r0, [r6, #0x40]
	str r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _08048E98
	b _08048F64
	.align 2, 0
_08048F10: .4byte gPseudoRandom
_08048F14: .4byte gSineTable
_08048F18: .4byte 0x00196225
_08048F1C: .4byte 0x3C6EF35F
_08048F20:
	movs r4, #0
	adds r7, r6, #0
	adds r7, #0x78
	adds r5, r6, #0
	adds r5, #0x7c
_08048F2A:
	lsls r1, r4, #2
	adds r1, r6, r1
	movs r0, #0x5a
	adds r0, r0, r1
	mov ip, r0
	ldrh r0, [r0]
	adds r0, #0x20
	mov r2, ip
	strh r0, [r2]
	lsls r2, r4, #3
	adds r3, r7, r2
	adds r1, #0x58
	movs r0, #0
	ldrsh r1, [r1, r0]
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
	adds r2, r5, r2
	mov r3, ip
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _08048F2A
_08048F64:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8048F70
sub_8048F70: @ 0x08048F70
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	movs r6, #0
	movs r5, #0
	ldr r0, _08048FE0 @ =gCamera
	mov r8, r0
_08048F80:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0xb8
	adds r4, r7, r0
	lsls r2, r6, #3
	adds r0, r7, #0
	adds r0, #0x78
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	mov r3, r8
	ldr r1, [r3]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	adds r0, r7, #0
	adds r0, #0x7c
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, [r3, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	cmp r6, #2
	bhi _08048FB8
	adds r0, r4, #0
	bl UpdateSpriteAnimation
_08048FB8:
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08048FCA
	movs r5, #0
_08048FCA:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #7
	bls _08048F80
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08048FE0: .4byte gCamera

	thumb_func_start TaskDestructor_PandaCart
TaskDestructor_PandaCart: @ 0x08048FE4
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8048FF8
sub_8048FF8: @ 0x08048FF8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x22
	bl VramMalloc
	str r0, [r4]
	movs r2, #0
	movs r1, #0
	ldr r0, _08049038 @ =0x00000397
	strh r0, [r4, #0xc]
	strb r2, [r4, #0x1a]
	subs r0, #0x97
	strh r0, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	str r0, [r4, #0x28]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08049038: .4byte 0x00000397

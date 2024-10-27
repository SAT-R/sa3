.include "asm/macros.inc"
.include "constants/constants.inc"

.section .rodata
    .global gUnknown_08E2DEF4
gUnknown_08E2DEF4:
    .incbin "baserom.gba", 0x00E2DEF4, 0x240

    .global gUnknown_08E2E134
gUnknown_08E2E134:
    .incbin "baserom.gba", 0x00E2E134, 0x14C

    .global gUnknown_08E2E280
gUnknown_08E2E280:
    .incbin "baserom.gba", 0x00E2E280, 0x2D0

    .global gUnknown_08E2E550
gUnknown_08E2E550:
    .incbin "baserom.gba", 0x00E2E550, 0x14C

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_803B6E8
sub_803B6E8: @ 0x0803B6E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	movs r4, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #8
	movs r0, #0xb8
	lsls r0, r0, #5
	adds r6, r2, r0
	ldr r1, _0803B74C @ =gUnknown_080CFA3E
	mov r8, r1
_0803B708:
	lsls r2, r4, #2
	adds r1, r5, #0
	adds r1, #0x48
	adds r1, r1, r2
	lsls r0, r4, #1
	add r0, r8
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x4a
	adds r0, r0, r2
	ldr r2, _0803B750 @ =0xFFFFFB80
	adds r1, r2, #0
	cmp r4, #0
	beq _0803B72A
	subs r2, #0x40
	adds r1, r2, #0
_0803B72A:
	strh r1, [r0]
	lsls r1, r4, #3
	adds r0, r5, #0
	adds r0, #0x68
	adds r3, r0, r1
	lsrs r1, r4, #1
	lsls r0, r7, #0x10
	asrs r2, r0, #0x10
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	bne _0803B754
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	subs r0, r2, r0
	b _0803B75C
	.align 2, 0
_0803B74C: .4byte gUnknown_080CFA3E
_0803B750: .4byte 0xFFFFFB80
_0803B754:
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r2, r0
_0803B75C:
	lsls r0, r0, #8
	str r0, [r3]
	lsls r0, r4, #3
	adds r1, r5, #0
	adds r1, #0x6c
	adds r1, r1, r0
	str r6, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _0803B708
	movs r0, #0x10
	bl VramMalloc
	adds r6, r0, #0
	movs r4, #0
	ldr r0, _0803B7FC @ =gTileInfoAnimals
	mov sb, r0
	ldr r1, _0803B800 @ =gStageData
	mov r8, r1
	movs r2, #0
	mov sl, r2
	movs r7, #0
_0803B78C:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb6
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r0, r5, r0
	str r6, [r0]
	adds r6, #0x80
	lsls r3, r4, #3
	mov r1, r8
	ldrb r2, [r1, #9]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #3
	adds r1, r3, r1
	add r1, sb
	ldrh r1, [r1, #4]
	strh r1, [r0, #0xc]
	mov r1, r8
	ldrb r2, [r1, #9]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #3
	adds r3, r3, r1
	add r3, sb
	ldrb r1, [r3, #6]
	strb r1, [r0, #0x1a]
	movs r1, #0x80
	strh r1, [r0, #0x14]
	strh r7, [r0, #0xe]
	strh r7, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	mov r2, sl
	strb r2, [r0, #0x1f]
	subs r1, #0x11
	str r1, [r0, #0x20]
	str r7, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _0803B78C
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803B7FC: .4byte gTileInfoAnimals
_0803B800: .4byte gStageData

	thumb_func_start sub_803B804
sub_803B804: @ 0x0803B804
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _0803B82C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov sb, r1
	ldrh r0, [r1, #0x2c]
	lsrs r0, r0, #2
	cmp r0, #7
	bhi _0803B830
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _0803B832
	.align 2, 0
_0803B82C: .4byte gCurTask
_0803B830:
	movs r0, #8
_0803B832:
	str r0, [sp, #4]
	movs r1, #0
	mov sl, r1
	ldr r3, [sp, #4]
	cmp sl, r3
	bhs _0803B8F6
	mov r0, sb
	adds r0, #0x4a
	str r0, [sp, #8]
_0803B844:
	mov r1, sl
	lsls r1, r1, #2
	mov r8, r1
	ldr r7, [sp, #8]
	add r7, r8
	ldrh r0, [r7]
	adds r0, #0x40
	strh r0, [r7]
	mov r3, sl
	lsls r2, r3, #3
	mov r0, sb
	adds r0, #0x68
	adds r4, r0, r2
	subs r0, #0x20
	adds r5, r0, r1
	movs r0, #0
	ldrsh r1, [r5, r0]
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	mov r0, sb
	adds r0, #0x6c
	adds r6, r0, r2
	movs r3, #0
	ldrsh r1, [r7, r3]
	ldr r0, [r6]
	adds r0, r0, r1
	str r0, [r6]
	asrs r0, r0, #8
	ldr r1, [r4]
	asrs r1, r1, #8
	ldr r2, _0803B8BC @ =sub_8051F54
	str r2, [sp]
	movs r2, #1
	movs r3, #8
	bl sub_8052418
	adds r1, r0, #0
	mov r2, r8
	cmp r1, #0
	bge _0803B8E6
	movs r3, #0
	ldrsh r0, [r7, r3]
	cmp r0, #0
	ble _0803B8E6
	lsls r0, r1, #8
	ldr r1, [r6]
	adds r1, r1, r0
	str r1, [r6]
	ldr r1, [r4]
	movs r0, #0xc8
	lsls r0, r0, #8
	cmp r1, r0
	ble _0803B8C0
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0
	ble _0803B8D2
	b _0803B8CE
	.align 2, 0
_0803B8BC: .4byte sub_8051F54
_0803B8C0:
	ldr r0, _0803B908 @ =0x00004FFF
	cmp r1, r0
	bgt _0803B8D2
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _0803B8D2
_0803B8CE:
	rsbs r0, r0, #0
	strh r0, [r5]
_0803B8D2:
	ldr r0, [sp, #8]
	adds r2, r0, r2
	movs r1, #3
	mov r3, sl
	ands r1, r3
	lsls r1, r1, #6
	ldr r3, _0803B90C @ =0xFFFFFB80
	adds r0, r3, #0
	subs r0, r0, r1
	strh r0, [r2]
_0803B8E6:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	ldr r0, [sp, #4]
	cmp sl, r0
	blo _0803B844
_0803B8F6:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803B908: .4byte 0x00004FFF
_0803B90C: .4byte 0xFFFFFB80

	thumb_func_start sub_803B910
sub_803B910: @ 0x0803B910
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r1, _0803B9CC @ =gUnknown_080CFA4E
	mov r0, sp
	movs r2, #2
	bl memcpy
	ldr r0, _0803B9D0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r2, [r5]
	ldrb r0, [r5, #0xa]
	lsls r0, r0, #3
	ldrh r1, [r5, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	ldrh r1, [r5, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	movs r6, #0
_0803B956:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	movs r1, #0xb6
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r0, r5, r0
	bl UpdateSpriteAnimation
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #2
	bls _0803B956
	movs r6, #0
	movs r2, #0x68
	adds r2, r2, r5
	mov sl, r2
	movs r7, #0x6c
	adds r7, r7, r5
	mov sb, r7
	movs r0, #0x48
	adds r0, r0, r5
	mov r8, r0
	ldr r7, _0803B9D4 @ =gCamera
_0803B988:
	movs r1, #0xb6
	lsls r1, r1, #3
	adds r4, r5, r1
	movs r0, #2
	ands r0, r6
	cmp r0, #0
	beq _0803B99C
	movs r2, #0xbb
	lsls r2, r2, #3
	adds r4, r5, r2
_0803B99C:
	lsls r2, r6, #3
	mov r1, sl
	adds r0, r1, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, [r7]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	add r2, sb
	ldr r0, [r2]
	asrs r0, r0, #8
	ldr r1, [r7, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	lsls r0, r6, #2
	add r0, r8
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bgt _0803B9DC
	ldr r0, [r4, #8]
	ldr r1, _0803B9D8 @ =0xFFFFFBFF
	ands r0, r1
	b _0803B9E4
	.align 2, 0
_0803B9CC: .4byte gUnknown_080CFA4E
_0803B9D0: .4byte gCurTask
_0803B9D4: .4byte gCamera
_0803B9D8: .4byte 0xFFFFFBFF
_0803B9DC:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
_0803B9E4:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #7
	bls _0803B988
	ldrh r1, [r5, #0x2c]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	cmp r0, #0x3b
	bhi _0803BA12
	lsls r0, r1, #0x11
	lsrs r0, r0, #0x10
	mov ip, r0
	lsrs r7, r2, #0x12
	ldrh r1, [r5, #0x2c]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsrs r3, r0, #3
	b _0803BA1C
_0803BA12:
	movs r7, #0x78
	mov ip, r7
	movs r7, #0xf
	movs r3, #0x28
	ldrh r1, [r5, #0x2c]
_0803BA1C:
	movs r0, #0xc0
	lsls r0, r0, #3
	adds r4, r5, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	movs r0, #0xd
	muls r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r2, _0803BB08 @ =gCamera
	ldr r1, [r2]
	ldr r5, [sp, #4]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [r2, #4]
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	ldr r2, [sp, #8]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	movs r6, #0
	mov r5, ip
	lsls r5, r5, #0x10
	mov sl, r5
	lsls r7, r7, #0x10
	mov sb, r7
	ldr r7, _0803BB0C @ =gSineTable
	mov r8, r7
	movs r5, #1
_0803BA70:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	ldr r1, [sp, #0xc]
	adds r3, r1, r0
	adds r0, r3, #0
	ldr r2, _0803BB10 @ =0x000003FF
	ands r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	mov r7, sl
	asrs r1, r7, #0x10
	muls r1, r0, r1
	asrs r1, r1, #8
	adds r2, r6, #0
	ands r2, r5
	mov r7, sp
	adds r0, r7, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	muls r1, r0, r1
	ldr r7, [sp, #4]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	strh r0, [r4, #0x10]
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #3
	ldr r1, [sp, #0x10]
	adds r0, r1, r0
	ldr r7, _0803BB10 @ =0x000003FF
	ands r0, r7
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	mov r7, sb
	asrs r1, r7, #0x10
	muls r1, r0, r1
	asrs r1, r1, #8
	lsrs r0, r6, #1
	ands r0, r5
	add r0, sp
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	muls r1, r0, r1
	ldr r7, [sp, #8]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	strh r0, [r4, #0x12]
	cmp r2, #0
	beq _0803BB18
	ldr r1, _0803BB14 @ =0xFFFFFF00
	adds r0, r3, r1
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0803BB34
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _0803BB3A
	.align 2, 0
_0803BB08: .4byte gCamera
_0803BB0C: .4byte gSineTable
_0803BB10: .4byte 0x000003FF
_0803BB14: .4byte 0xFFFFFF00
_0803BB18:
	ldr r2, _0803BB30 @ =0xFFFFFF00
	adds r0, r3, r2
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0803BB34
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _0803BB3A
	.align 2, 0
_0803BB30: .4byte 0xFFFFFF00
_0803BB34:
	ldr r0, [r4, #8]
	ldr r1, _0803BB5C @ =0xFFFFFBFF
	ands r0, r1
_0803BB3A:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #7
	bls _0803BA70
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803BB5C: .4byte 0xFFFFFBFF

	thumb_func_start sub_803BB60
sub_803BB60: @ 0x0803BB60
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _0803BC04 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	movs r5, #0
_0803BB72:
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #2
	adds r0, #0xec
	adds r4, r6, r0
	movs r0, #5
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _0803BB92
	ldrb r1, [r4, #6]
	movs r0, #6
	ldrsb r0, [r4, r0]
	cmp r0, #0
	beq _0803BBF0
	subs r0, r1, #1
	strb r0, [r4, #6]
_0803BB92:
	ldrh r0, [r4, #0xa]
	adds r0, #0x18
	strh r0, [r4, #0xa]
	movs r1, #8
	ldrsh r0, [r4, r1]
	ldr r1, [r4, #0xc]
	adds r1, r1, r0
	str r1, [r4, #0xc]
	movs r0, #0xa
	ldrsh r2, [r4, r0]
	ldr r0, [r4, #0x10]
	adds r0, r0, r2
	str r0, [r4, #0x10]
	asrs r0, r0, #8
	asrs r1, r1, #8
	ldr r2, _0803BC08 @ =sub_8051F54
	str r2, [sp]
	movs r2, #1
	movs r3, #8
	bl sub_8052418
	adds r2, r0, #0
	cmp r2, #0
	bge _0803BBF0
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _0803BBF0
	adds r1, r0, #0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	rsbs r0, r0, #0
	asrs r0, r0, #4
	strh r0, [r4, #0xa]
	lsls r1, r2, #8
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldrb r1, [r4, #5]
	movs r0, #5
	ldrsb r0, [r4, r0]
	cmp r0, #0
	beq _0803BBF0
	subs r0, r1, #1
	strb r0, [r4, #5]
_0803BBF0:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0803BB72
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803BC04: .4byte gCurTask
_0803BC08: .4byte sub_8051F54

	thumb_func_start sub_803BC0C
sub_803BC0C: @ 0x0803BC0C
	push {r4, r5, r6, r7, lr}
	ldr r0, _0803BC74 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	movs r5, #0
	ldr r6, _0803BC78 @ =gCamera
_0803BC1E:
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #2
	adds r0, #0xec
	adds r2, r7, r0
	movs r0, #6
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _0803BC62
	ldr r0, [r2, #4]
	ldr r1, _0803BC7C @ =0x0002FF00
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xa
	cmp r0, r1
	beq _0803BC62
	adds r4, r2, #0
	adds r4, #0x14
	ldr r0, [r2, #0xc]
	asrs r0, r0, #8
	ldr r1, [r6]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r2, #0x10]
	asrs r0, r0, #8
	ldr r1, [r6, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0803BC62:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0803BC1E
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803BC74: .4byte gCurTask
_0803BC78: .4byte gCamera
_0803BC7C: .4byte 0x0002FF00

	thumb_func_start sub_803BC80
sub_803BC80: @ 0x0803BC80
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _0803BD18 @ =sub_803BD28
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0803BD1C @ =sub_803BE34
	str r1, [sp]
	movs r1, #0x30
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r4, r1
	ldr r0, _0803BD20 @ =0x03000008
	adds r4, r4, r0
	movs r0, #0
	mov sl, r0
	movs r0, #0
	mov sb, r0
	strh r5, [r1]
	strh r6, [r1, #2]
	movs r0, #0x2d
	strh r0, [r1, #4]
	movs r0, #9
	bl VramMalloc
	str r0, [r4]
	ldr r0, _0803BD24 @ =0x00000483
	strh r0, [r4, #0xc]
	mov r0, r8
	strb r0, [r4, #0x1a]
	movs r0, #0x80
	strh r0, [r4, #0x14]
	mov r0, sb
	strh r0, [r4, #0xe]
	strh r0, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	mov r0, sl
	strb r0, [r4, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803BD18: .4byte sub_803BD28
_0803BD1C: .4byte sub_803BE34
_0803BD20: .4byte 0x03000008
_0803BD24: .4byte 0x00000483

	thumb_func_start sub_803BD28
sub_803BD28: @ 0x0803BD28
	push {r4, r5, lr}
	ldr r0, _0803BD50 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	adds r0, #8
	adds r4, r1, r0
	ldrh r0, [r3, #4]
	subs r1, r0, #1
	strh r1, [r3, #4]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _0803BD54
	adds r0, r2, #0
	bl TaskDestroy
	b _0803BD90
	.align 2, 0
_0803BD50: .4byte gCurTask
_0803BD54:
	cmp r0, #0x13
	bgt _0803BD60
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	bne _0803BD90
_0803BD60:
	ldr r2, _0803BD98 @ =gCamera
	ldr r1, [r2]
	ldrh r0, [r3]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r2, #4]
	ldrh r1, [r3, #2]
	subs r1, r1, r0
	ldr r2, _0803BD9C @ =gSineTable
	movs r5, #4
	ldrsh r0, [r3, r5]
	lsls r0, r0, #3
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r0, r3
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x19
	subs r1, r1, r0
	strh r1, [r4, #0x12]
	adds r0, r4, #0
	bl DisplaySprite
_0803BD90:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803BD98: .4byte gCamera
_0803BD9C: .4byte gSineTable

	thumb_func_start sub_803BDA0
sub_803BDA0: @ 0x0803BDA0
	push {r4, r5, r6, lr}
	ldr r0, _0803BE18 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	ldr r0, _0803BE1C @ =0x03000628
	adds r5, r4, r0
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, _0803BE20 @ =gUnknown_03000650
	adds r5, r4, r0
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, _0803BE24 @ =gUnknown_03000678
	adds r5, r4, r0
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, _0803BE28 @ =gUnknown_030006A0
	adds r5, r4, r0
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, _0803BE2C @ =gUnknown_030006C8
	adds r5, r4, r0
	ldrb r0, [r6, #0x14]
	cmp r0, #0
	beq _0803BE04
	ldrb r0, [r6, #0x15]
	subs r0, #1
	strb r0, [r6, #0x15]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0803BE04
	movs r0, #0x14
	strb r0, [r6, #0x15]
	ldr r0, _0803BE30 @ =0x0000020D
	bl sub_8003DF0
	ldrb r0, [r6, #0x14]
	subs r0, #1
	strb r0, [r6, #0x14]
	ldrb r0, [r5, #0x1a]
	adds r0, #1
	strb r0, [r5, #0x1a]
_0803BE04:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803BE18: .4byte gCurTask
_0803BE1C: .4byte 0x03000628
_0803BE20: .4byte gUnknown_03000650
_0803BE24: .4byte gUnknown_03000678
_0803BE28: .4byte gUnknown_030006A0
_0803BE2C: .4byte gUnknown_030006C8
_0803BE30: .4byte 0x0000020D

	thumb_func_start sub_803BE34
sub_803BE34: @ 0x0803BE34
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #8]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_803BE48
sub_803BE48: @ 0x0803BE48
	push {lr}
	ldr r2, _0803BE94 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrh r0, [r1, #0x2c]
	adds r0, #1
	strh r0, [r1, #0x2c]
	ldrb r0, [r1, #0xd]
	subs r0, #1
	strb r0, [r1, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803BE76
	movs r0, #0x80
	strb r0, [r1, #0xd]
	movs r0, #0
	strb r0, [r1, #0x15]
	ldr r1, [r2]
	ldr r0, _0803BE98 @ =Task_803AA28
	str r0, [r1, #8]
_0803BE76:
	bl sub_803B804
	bl sub_803B910
	bl sub_803BB60
	bl sub_803BC0C
	bl sub_803B498
	bl sub_803B354
	pop {r0}
	bx r0
	.align 2, 0
_0803BE94: .4byte gCurTask
_0803BE98: .4byte Task_803AA28

	thumb_func_start sub_803BE9C
sub_803BE9C: @ 0x0803BE9C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x3f
	bl VramMalloc
	str r0, [r4]
	movs r2, #0
	movs r1, #0
	ldr r0, _0803BEDC @ =0x00000482
	strh r0, [r4, #0xc]
	strb r2, [r4, #0x1a]
	adds r0, #0xbe
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
_0803BEDC: .4byte 0x00000482

	thumb_func_start sub_803BEE0
sub_803BEE0: @ 0x0803BEE0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #8
	bl VramMalloc
	str r0, [r4]
	movs r2, #0
	movs r1, #0
	movs r0, #0x91
	lsls r0, r0, #3
	strh r0, [r4, #0xc]
	strb r2, [r4, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #2
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
	str r1, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_803BF20
sub_803BF20: @ 0x0803BF20
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	movs r0, #6
	bl VramMalloc
	str r0, [r5]
	movs r1, #0
	ldr r0, _0803BF74 @ =0x00000484
	strh r0, [r5, #0xc]
	movs r0, #0x14
	cmp r4, #0
	bne _0803BF42
	movs r0, #9
_0803BF42:
	strb r0, [r5, #0x1a]
	movs r0, #0xb0
	lsls r0, r0, #3
	strh r0, [r5, #0x14]
	strh r1, [r5, #0xe]
	strh r1, [r5, #0x16]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	movs r0, #0
	strb r0, [r5, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x20]
	movs r0, #0x80
	lsls r0, r0, #6
	orrs r0, r6
	str r0, [r5, #8]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803BF74: .4byte 0x00000484

	thumb_func_start sub_803BF78
sub_803BF78: @ 0x0803BF78
	push {r4, lr}
	adds r3, r0, #0
	ldr r0, _0803BFC0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrb r0, [r1, #0xd]
	cmp r0, #0
	beq _0803BFB8
	subs r2, r0, #1
	strb r2, [r1, #0xd]
	cmp r3, #0
	bne _0803BFA6
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1e
	bhi _0803BFA6
	movs r0, #2
	ands r2, r0
	cmp r2, #0
	beq _0803BFB8
_0803BFA6:
	movs r0, #0xb1
	lsls r0, r0, #3
	adds r4, r1, r0
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0803BFB8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803BFC0: .4byte gCurTask

	thumb_func_start sub_803BFC4
sub_803BFC4: @ 0x0803BFC4
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r3, #0
	movs r4, #0
	ldr r5, _0803C00C @ =sSwitchesScreenPositions
	adds r0, r5, #2
	mov ip, r0
	movs r7, #4
_0803BFD4:
	lsls r1, r3, #4
	subs r1, r1, r3
	lsls r1, r1, #2
	adds r1, #0xec
	adds r1, r6, r1
	strh r4, [r1, #8]
	strh r4, [r1, #0xa]
	lsls r2, r3, #2
	adds r0, r2, r5
	ldrh r0, [r0]
	lsls r0, r0, #8
	str r0, [r1, #0xc]
	add r2, ip
	ldrh r0, [r2]
	lsls r0, r0, #8
	str r0, [r1, #0x10]
	strb r7, [r1, #5]
	movs r0, #0x3c
	strb r0, [r1, #6]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #4
	bls _0803BFD4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803C00C: .4byte sSwitchesScreenPositions

	thumb_func_start sub_803C010
sub_803C010: @ 0x0803C010
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x14
	mov r8, r0
	mov r0, sp
	movs r1, #0
	movs r2, #0x14
	bl memset
	ldr r0, _0803C044 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	movs r5, #0
	ldr r7, _0803C048 @ =gPlayers
_0803C034:
	cmp r5, #0
	beq _0803C04C
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0803C050
	.align 2, 0
_0803C044: .4byte gCurTask
_0803C048: .4byte gPlayers
_0803C04C:
	ldr r0, _0803C090 @ =gStageData
	ldrb r1, [r0, #6]
_0803C050:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r7
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _0803C07E
	adds r0, r6, #0
	adds r1, r4, #0
	mov r2, sp
	mov r3, r8
	bl sub_803AD38
	lsls r2, r5, #0x18
	lsrs r2, r2, #0x18
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_803AAE8
_0803C07E:
	adds r5, #1
	cmp r5, #1
	ble _0803C034
	add sp, #0x14
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803C090: .4byte gStageData

	thumb_func_start sub_803C094
sub_803C094: @ 0x0803C094
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x14
	adds r7, r0, #0
	mov r8, r2
	mov sb, r3
	ldr r5, [sp, #0x30]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r6, r1, #0
	adds r0, r5, #0
	adds r0, #0x24
	ldrb r4, [r0]
	rsbs r0, r4, #0
	add r1, sp, #0x10
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x25
	ldrb r3, [r0]
	rsbs r2, r3, #0
	mov r0, sp
	adds r0, #0x11
	strb r2, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #1
	strb r3, [r0]
	add r0, sp, #0xc
	movs r2, #4
	bl memcpy
	lsls r1, r6, #3
	adds r0, r7, #0
	adds r0, #0x20
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0803C0F4
	ldr r1, [r5, #4]
	movs r2, #0x80
	lsls r2, r2, #1
	ands r2, r1
	cmp r2, #0
	beq _0803C0F8
_0803C0F4:
	movs r0, #0
	b _0803C11E
_0803C0F8:
	ldr r0, [sp, #0x34]
	cmp r0, #0
	beq _0803C10A
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #4
	orrs r1, r0
	str r1, [r5, #4]
_0803C10A:
	add r0, sp, #0xc
	str r0, [sp]
	str r5, [sp, #4]
	str r2, [sp, #8]
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, r8
	mov r3, sb
	bl sub_8020A58
_0803C11E:
	add sp, #0x14
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

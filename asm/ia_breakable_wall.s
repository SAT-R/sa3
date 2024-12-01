.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_8034A20
sub_8034A20: @ 0x08034A20
	push {lr}
	adds r2, r0, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #0xc
	bne _08034A32
	b _08034BC8
_08034A32:
	ldrh r0, [r2, #0x30]
	subs r0, #0xa6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x5d
	bls _08034A40
	b _08034C2A
_08034A40:
	lsls r0, r0, #2
	ldr r1, _08034A4C @ =_08034A50
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08034A4C: .4byte _08034A50
_08034A50: @ jump table
	.4byte _08034C38 @ case 0
	.4byte _08034C2A @ case 1
	.4byte _08034C38 @ case 2
	.4byte _08034C2A @ case 3
	.4byte _08034C2A @ case 4
	.4byte _08034C2A @ case 5
	.4byte _08034C2A @ case 6
	.4byte _08034C2A @ case 7
	.4byte _08034C2A @ case 8
	.4byte _08034C2A @ case 9
	.4byte _08034C2A @ case 10
	.4byte _08034C2A @ case 11
	.4byte _08034C2A @ case 12
	.4byte _08034C2A @ case 13
	.4byte _08034C2A @ case 14
	.4byte _08034C2A @ case 15
	.4byte _08034C2A @ case 16
	.4byte _08034C2A @ case 17
	.4byte _08034C38 @ case 18
	.4byte _08034C2A @ case 19
	.4byte _08034C2A @ case 20
	.4byte _08034C2A @ case 21
	.4byte _08034C2A @ case 22
	.4byte _08034C2A @ case 23
	.4byte _08034C2A @ case 24
	.4byte _08034C2A @ case 25
	.4byte _08034C2A @ case 26
	.4byte _08034C2A @ case 27
	.4byte _08034C2A @ case 28
	.4byte _08034C2A @ case 29
	.4byte _08034C2A @ case 30
	.4byte _08034C2A @ case 31
	.4byte _08034C2A @ case 32
	.4byte _08034C2A @ case 33
	.4byte _08034C2A @ case 34
	.4byte _08034C2A @ case 35
	.4byte _08034C2A @ case 36
	.4byte _08034C2A @ case 37
	.4byte _08034C38 @ case 38
	.4byte _08034C2A @ case 39
	.4byte _08034C2A @ case 40
	.4byte _08034C2A @ case 41
	.4byte _08034C2A @ case 42
	.4byte _08034C2A @ case 43
	.4byte _08034C2A @ case 44
	.4byte _08034C2A @ case 45
	.4byte _08034C2A @ case 46
	.4byte _08034C2A @ case 47
	.4byte _08034C2A @ case 48
	.4byte _08034C2A @ case 49
	.4byte _08034C2A @ case 50
	.4byte _08034C2A @ case 51
	.4byte _08034C2A @ case 52
	.4byte _08034C2A @ case 53
	.4byte _08034C2A @ case 54
	.4byte _08034C2A @ case 55
	.4byte _08034C2A @ case 56
	.4byte _08034C2A @ case 57
	.4byte _08034C2A @ case 58
	.4byte _08034C2A @ case 59
	.4byte _08034C4A @ case 60
	.4byte _08034C4A @ case 61
	.4byte _08034C2A @ case 62
	.4byte _08034C4A @ case 63
	.4byte _08034C38 @ case 64
	.4byte _08034C2A @ case 65
	.4byte _08034C2A @ case 66
	.4byte _08034C2A @ case 67
	.4byte _08034C2A @ case 68
	.4byte _08034C2A @ case 69
	.4byte _08034C2A @ case 70
	.4byte _08034C2A @ case 71
	.4byte _08034C2A @ case 72
	.4byte _08034C2A @ case 73
	.4byte _08034C2A @ case 74
	.4byte _08034C2A @ case 75
	.4byte _08034C2A @ case 76
	.4byte _08034C2A @ case 77
	.4byte _08034C2A @ case 78
	.4byte _08034C2A @ case 79
	.4byte _08034C2A @ case 80
	.4byte _08034C2A @ case 81
	.4byte _08034C2A @ case 82
	.4byte _08034C2A @ case 83
	.4byte _08034C2A @ case 84
	.4byte _08034C2A @ case 85
	.4byte _08034C2A @ case 86
	.4byte _08034C2A @ case 87
	.4byte _08034C38 @ case 88
	.4byte _08034C4A @ case 89
	.4byte _08034C2A @ case 90
	.4byte _08034C2A @ case 91
	.4byte _08034C2A @ case 92
	.4byte _08034C38 @ case 93
_08034BC8:
	ldrh r1, [r2, #0x34]
	ldr r0, _08034BE4 @ =0x0000020F
	cmp r1, r0
	bgt _08034BF2
	subs r0, #1
	cmp r1, r0
	bge _08034C4A
	cmp r1, #0x2a
	beq _08034C38
	cmp r1, #0x2a
	bgt _08034BE8
	cmp r1, #0x26
	beq _08034C24
	b _08034C2A
	.align 2, 0
_08034BE4: .4byte 0x0000020F
_08034BE8:
	cmp r1, #0xcd
	beq _08034C38
	movs r0, #0xb8
	lsls r0, r0, #1
	b _08034C18
_08034BF2:
	ldr r0, _08034C0C @ =0x000002B1
	cmp r1, r0
	beq _08034C38
	cmp r1, r0
	bgt _08034C10
	subs r0, #0x9e
	cmp r1, r0
	beq _08034C38
	adds r0, #0x27
	cmp r1, r0
	beq _08034C4A
	b _08034C2A
	.align 2, 0
_08034C0C: .4byte 0x000002B1
_08034C10:
	ldr r0, _08034C20 @ =0x000002B2
	cmp r1, r0
	beq _08034C4A
	adds r0, #5
_08034C18:
	cmp r1, r0
	beq _08034C38
	b _08034C2A
	.align 2, 0
_08034C20: .4byte 0x000002B2
_08034C24:
	ldrh r0, [r2, #0x36]
	cmp r0, #2
	bne _08034C38
_08034C2A:
	movs r1, #0x30
	ldrsh r0, [r2, r1]
	cmp r0, #0xd5
	bne _08034C3C
	ldrh r0, [r2, #0x36]
	cmp r0, #1
	bne _08034C3C
_08034C38:
	movs r0, #2
	b _08034C5A
_08034C3C:
	ldr r1, [r2]
	ldr r0, _08034C50 @ =sub_801D73C
	cmp r1, r0
	beq _08034C4A
	ldr r0, _08034C54 @ =sub_801DF18
	cmp r1, r0
	bne _08034C58
_08034C4A:
	movs r0, #3
	b _08034C5A
	.align 2, 0
_08034C50: .4byte sub_801D73C
_08034C54: .4byte sub_801DF18
_08034C58:
	movs r0, #1
_08034C5A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8034C60
sub_8034C60: @ 0x08034C60
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	ldr r1, _08034C88 @ =gCurTask
	ldr r1, [r1]
	ldrh r4, [r1, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r4, r1
	ldr r2, _08034C8C @ =0x03000039
	adds r1, r4, r2
	ldrb r1, [r1]
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	blt _08034C94
	ldr r0, _08034C90 @ =0x0000025B
	bl sub_8003DF0
	b _08034CF8
	.align 2, 0
_08034C88: .4byte gCurTask
_08034C8C: .4byte 0x03000039
_08034C90: .4byte 0x0000025B
_08034C94:
	subs r0, r2, r1
	lsls r0, r0, #0x10
	ldr r2, _08034CC4 @ =0x0300003A
	adds r1, r4, r2
	ldrb r2, [r1]
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r2, r0
	bgt _08034CD4
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08034CC8 @ =0x0000024A
	bl sub_8003DF0
	ldr r1, _08034CCC @ =0x0300000C
	adds r0, r4, r1
	ldr r2, _08034CD0 @ =0x03000038
	adds r1, r4, r2
	ldrb r1, [r1]
	movs r2, #1
	bl sub_80351A8
	b _08034CF8
	.align 2, 0
_08034CC4: .4byte 0x0300003A
_08034CC8: .4byte 0x0000024A
_08034CCC: .4byte 0x0300000C
_08034CD0: .4byte 0x03000038
_08034CD4:
	subs r0, r2, r3
	strb r0, [r1]
	ldr r0, _08034D00 @ =0x0000024B
	bl sub_8003DF0
	ldr r1, _08034D04 @ =0x0300000C
	adds r0, r4, r1
	ldr r2, _08034D08 @ =0x03000038
	adds r1, r4, r2
	ldrb r1, [r1]
	ldrb r2, [r5, #8]
	bl sub_80351A8
	ldrh r0, [r5, #8]
	cmp r0, #0
	bne _08034CF8
	adds r0, #1
	strh r0, [r5, #8]
_08034CF8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08034D00: .4byte 0x0000024B
_08034D04: .4byte 0x0300000C
_08034D08: .4byte 0x03000038

	thumb_func_start sub_8034D0C
sub_8034D0C: @ 0x08034D0C
	push {r4, r5, r6, lr}
	sub sp, #0x48
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	ldr r1, _08034D2C @ =gUnknown_080CF590
	mov r0, sp
	movs r2, #0x48
	bl memcpy
	ldr r1, _08034D30 @ =gStageData
	ldrb r0, [r1, #0xa]
	cmp r0, #9
	bne _08034D34
	movs r2, #0
	b _08034D3E
	.align 2, 0
_08034D2C: .4byte gUnknown_080CF590
_08034D30: .4byte gStageData
_08034D34:
	ldrb r0, [r1, #9]
	movs r2, #0
	cmp r0, #6
	beq _08034D3E
	adds r2, r0, #0
_08034D3E:
	lsls r4, r6, #1
	adds r4, r4, r6
	lsls r4, r4, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r4, r4, r0
	add r0, sp, #4
	adds r0, r0, r4
	ldrh r0, [r0]
	bl VramMalloc
	str r0, [r5]
	mov r1, sp
	adds r0, r1, r4
	ldrh r0, [r0]
	strh r0, [r5, #0xc]
	mov r0, sp
	adds r0, #2
	adds r0, r0, r4
	ldrh r0, [r0]
	strb r0, [r5, #0x1a]
	add sp, #0x48
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8034D74
sub_8034D74: @ 0x08034D74
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _08034DDC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	adds r0, #0xc
	adds r6, r1, r0
	ldr r1, [r7]
	mov r8, r1
	ldrb r0, [r7, #0xa]
	lsls r0, r0, #3
	ldrh r1, [r7, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	mov r2, r8
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	ldrh r2, [r7, #6]
	lsls r2, r2, #8
	adds r1, r1, r2
	ldr r3, _08034DE0 @ =gCamera
	ldr r2, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r2, r0, r2
	strh r2, [r6, #0x10]
	ldr r2, [r3, #4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r2, r1, r2
	strh r2, [r6, #0x12]
	bl IsWorldPtActive
	cmp r0, #0
	bne _08034E2C
	movs r1, #0
	ldr r2, _08034DE4 @ =gPlayers
_08034DC8:
	lsls r0, r1, #0x10
	adds r4, r0, #0
	cmp r4, #0
	beq _08034DE8
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08034DEC
	.align 2, 0
_08034DDC: .4byte gCurTask
_08034DE0: .4byte gCamera
_08034DE4: .4byte gPlayers
_08034DE8:
	ldr r0, _08034E24 @ =gStageData
	ldrb r1, [r0, #6]
_08034DEC:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r5, r0, r2
	adds r0, r6, #0
	adds r1, r5, #0
	str r2, [sp]
	bl ResolvePlayerSpriteCollision
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp]
	cmp r0, #1
	ble _08034DC8
	ldrb r0, [r7, #0xa]
	mov r2, r8
	strb r0, [r2]
	ldr r0, _08034E28 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08034E38
	.align 2, 0
_08034E24: .4byte gStageData
_08034E28: .4byte gCurTask
_08034E2C:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_08034E38:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start Task_8034E44
Task_8034E44: @ 0x08034E44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r3, _08034E7C @ =gCurTask
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, [r5]
	mov ip, r0
	ldr r4, _08034E80 @ =0x0300000C
	adds r2, r1, r4
	adds r4, #0x2e
	adds r0, r1, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08034E84
	cmp r0, #0x28
	beq _08034F60
	adds r0, r4, #0
	adds r0, r0, r1
	mov sb, r0
	b _08034F6E
	.align 2, 0
_08034E7C: .4byte gCurTask
_08034E80: .4byte 0x0300000C
_08034E84:
	movs r4, #0
	ldr r0, _08034F40 @ =0x03000032
	adds r0, r0, r1
	mov r8, r0
	ldr r0, _08034F44 @ =0x03000033
	adds r0, r0, r1
	mov sl, r0
	ldr r0, _08034F48 @ =0x0300003A
	adds r0, r0, r1
	mov sb, r0
	ldr r7, _08034F4C @ =gPlayers
	movs r6, #0
	movs r3, #0x21
	rsbs r3, r3, #0
_08034EA0:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r1, r0, r7
	ldr r0, [r1, #0x6c]
	cmp r0, r2
	bne _08034EBA
	str r6, [r1, #0x6c]
	ldr r0, [r1, #4]
	ands r0, r3
	str r0, [r1, #4]
_08034EBA:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08034EA0
	ldrb r3, [r5, #0xa]
	lsls r3, r3, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r3, r3, r0
	mov r1, r8
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r3, r3, r0
	mov r2, ip
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r4, sl
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsrs r2, r0, #0x1f
	adds r0, r0, r2
	asrs r0, r0, #1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	movs r4, #0
	ldr r6, _08034F50 @ =gPseudoRandom
	lsls r3, r3, #0x10
	mov r8, r3
	lsls r7, r1, #0x10
_08034F08:
	ldr r1, [r6]
	ldr r0, _08034F54 @ =0x00196225
	adds r3, r1, #0
	muls r3, r0, r3
	ldr r0, _08034F58 @ =0x3C6EF35F
	adds r3, r3, r0
	str r3, [r6]
	ldr r0, _08034F5C @ =0x000001FF
	ands r3, r0
	movs r0, #0x1e
	str r0, [sp]
	str r4, [sp, #4]
	ldr r0, [r5, #0xc]
	str r0, [sp, #8]
	mov r1, r8
	asrs r0, r1, #0x10
	asrs r1, r7, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	bl sub_8034F88
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #5
	bls _08034F08
	b _08034F6E
	.align 2, 0
_08034F40: .4byte 0x03000032
_08034F44: .4byte 0x03000033
_08034F48: .4byte 0x0300003A
_08034F4C: .4byte gPlayers
_08034F50: .4byte gPseudoRandom
_08034F54: .4byte 0x00196225
_08034F58: .4byte 0x3C6EF35F
_08034F5C: .4byte 0x000001FF
_08034F60:
	ldrb r0, [r5, #0xa]
	mov r2, ip
	strb r0, [r2]
	ldr r0, [r3]
	bl TaskDestroy
	b _08034F76
_08034F6E:
	mov r4, sb
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
_08034F76:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8034F88
sub_8034F88: @ 0x08034F88
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x4c
	adds r4, r2, #0
	adds r6, r3, #0
	ldr r5, [sp, #0x6c]
	ldr r2, [sp, #0x70]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r1, _08035028 @ =gUnknown_080CF638
	add r0, sp, #4
	movs r2, #0x48
	bl memcpy
	ldr r0, _0803502C @ =sub_80350EC
	movs r2, #0x84
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x38
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov ip, r0
	ldr r0, _08035030 @ =0x03000010
	adds r7, r1, r0
	mov r1, ip
	strb r5, [r1, #0xe]
	movs r0, #0x20
	strh r0, [r1, #0xc]
	ldr r2, _08035034 @ =gSineTable
	ldr r1, _08035038 @ =0x000003FF
	ands r1, r6
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r1, r3
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	muls r0, r4, r0
	asrs r0, r0, #0xe
	mov r3, ip
	strh r0, [r3, #8]
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	muls r0, r4, r0
	asrs r0, r0, #0xe
	strh r0, [r3, #0xa]
	ldr r1, _0803503C @ =gStageData
	ldrb r0, [r1, #0xa]
	cmp r0, #9
	bne _08035040
	movs r2, #0
	b _0803504A
	.align 2, 0
_08035028: .4byte gUnknown_080CF638
_0803502C: .4byte sub_80350EC
_08035030: .4byte 0x03000010
_08035034: .4byte gSineTable
_08035038: .4byte 0x000003FF
_0803503C: .4byte gStageData
_08035040:
	ldrb r0, [r1, #9]
	movs r2, #0
	cmp r0, #6
	beq _0803504A
	adds r2, r0, #0
_0803504A:
	movs r3, #1
	mov r0, r8
	ands r3, r0
	cmp r3, #0
	bne _0803505C
	ldr r1, [sp, #0x74]
	str r1, [r7]
	lsls r2, r2, #0x10
	b _08035074
_0803505C:
	lsls r2, r2, #0x10
	asrs r0, r2, #0x10
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	add r0, sp, #8
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r1, [sp, #0x74]
	adds r0, r1, r0
	str r0, [r7]
_08035074:
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #1
	asrs r2, r2, #0x10
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	mov r0, sp
	adds r0, r0, r1
	adds r0, #4
	ldrh r0, [r0]
	movs r3, #0
	movs r2, #0
	strh r0, [r7, #0xc]
	mov r0, sp
	adds r0, #6
	adds r0, r0, r1
	ldrh r0, [r0]
	strb r0, [r7, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r7, #0x14]
	strh r2, [r7, #0xe]
	strh r2, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	strb r3, [r7, #0x1f]
	subs r0, #0x11
	str r0, [r7, #0x20]
	str r2, [r7, #8]
	mov r2, r8
	cmp r2, #1
	bls _080350C2
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [r7, #8]
_080350C2:
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r0, r0, #8
	mov r1, ip
	str r0, [r1]
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r0, r0, #8
	str r0, [r1, #4]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	add sp, #0x4c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80350EC
sub_80350EC: @ 0x080350EC
	push {r4, lr}
	ldr r2, _08035114 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	adds r0, #0x10
	adds r4, r1, r0
	ldrb r0, [r3, #0xe]
	subs r0, #1
	strb r0, [r3, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08035118
	ldr r0, [r2]
	bl TaskDestroy
	b _0803514E
	.align 2, 0
_08035114: .4byte gCurTask
_08035118:
	movs r1, #8
	ldrsh r0, [r3, r1]
	ldr r1, [r3]
	adds r1, r1, r0
	str r1, [r3]
	ldrh r0, [r3, #0xc]
	ldrh r2, [r3, #0xa]
	adds r0, r0, r2
	strh r0, [r3, #0xa]
	movs r0, #0xa
	ldrsh r2, [r3, r0]
	ldr r0, [r3, #4]
	adds r0, r0, r2
	str r0, [r3, #4]
	asrs r1, r1, #8
	ldr r2, _08035154 @ =gCamera
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r4, #0x10]
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl DisplaySprite
_0803514E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08035154: .4byte gCamera

	thumb_func_start TaskDestructor_BreakableWall
TaskDestructor_BreakableWall: @ 0x08035158
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_803516C
sub_803516C: @ 0x0803516C
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl sub_8034D0C
	movs r2, #0
	movs r1, #0
	movs r0, #0xc0
	lsls r0, r0, #3
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
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80351A8
sub_80351A8: @ 0x080351A8
	push {r4, r5, r6, lr}
	sub sp, #0x60
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	ldr r1, _080351CC @ =gUnknown_080CF5D8
	mov r0, sp
	movs r2, #0x60
	bl memcpy
	ldr r1, _080351D0 @ =gStageData
	ldrb r0, [r1, #0xa]
	cmp r0, #9
	bne _080351D4
	movs r2, #0
	b _080351DE
	.align 2, 0
_080351CC: .4byte gUnknown_080CF5D8
_080351D0: .4byte gStageData
_080351D4:
	ldrb r0, [r1, #9]
	movs r2, #0
	cmp r0, #6
	beq _080351DE
	adds r2, r0, #0
_080351DE:
	lsls r1, r5, #1
	adds r1, r1, r4
	lsls r1, r1, #2
	lsls r0, r2, #4
	adds r1, r1, r0
	mov r2, sp
	adds r0, r2, r1
	ldrh r0, [r0]
	strh r0, [r6, #0xc]
	mov r0, sp
	adds r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strb r0, [r6, #0x1a]
	add sp, #0x60
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

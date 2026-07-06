.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start sub_8081C80
sub_8081C80: @ 0x08081C80
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _08081CB0 @ =Task_8081E74
	ldr r1, _08081CB4 @ =0x00000878
	movs r2, #0xc4
	lsls r2, r2, #6
	ldr r3, _08081CB8 @ =TaskDestructor_8081D64
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r2, r1
	ldr r2, _08081CBC @ =gStageData
	adds r1, r2, #0
	adds r1, #0x88
	str r0, [r1]
	ldrb r0, [r2, #1]
	cmp r0, #0
	bne _08081CC0
	movs r0, #0xc
	b _08081CC2
	.align 2, 0
_08081CB0: .4byte Task_8081E74
_08081CB4: .4byte 0x00000878
_08081CB8: .4byte TaskDestructor_8081D64
_08081CBC: .4byte gStageData
_08081CC0:
	movs r0, #0xa
_08081CC2:
	strb r0, [r5]
	movs r4, #0
	movs r2, #0
	movs r3, #1
	movs r0, #1
	strh r0, [r5, #0x10]
	strh r2, [r5, #0x12]
	strh r0, [r5, #4]
	strh r2, [r5, #8]
	strb r4, [r5, #1]
	strb r4, [r5, #0xa]
	strb r4, [r5, #0xc]
	strb r4, [r5, #0xd]
	str r2, [r5, #0x6c]
	strb r4, [r5, #0x17]
	str r2, [r5, #0x18]
	ldr r1, _08081D54 @ =gBgScrollRegs
	movs r0, #0x68
	strh r0, [r1]
	movs r0, #0x30
	strh r0, [r1, #2]
	ldr r1, _08081D58 @ =gCamera
	adds r1, #0x5c
	ldrh r0, [r1]
	orrs r0, r3
	strh r0, [r1]
	movs r1, #0xe3
	lsls r1, r1, #2
	adds r0, r5, r1
	str r2, [r0]
	adds r1, #0x28
	adds r0, r5, r1
	str r2, [r0]
	adds r1, #0xa0
	adds r0, r5, r1
	str r2, [r0]
	ldr r1, _08081D5C @ =0x00000814
	adds r0, r5, r1
	str r2, [r0]
	str r2, [r5, #0x1c]
	str r2, [r5, #0x20]
	str r2, [r5, #0x24]
	str r2, [r5, #0x6c]
	str r2, [r5, #0x74]
	bl SetFixedRandomIfTimeAttackMode
	ldr r1, _08081D60 @ =gPlayers
	str r1, [r5, #0x28]
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r0, r1, r2
	str r0, [r5, #0x2c]
	subs r2, #8
	adds r1, r1, r2
	adds r0, r5, #0
	adds r0, #0x58
	str r0, [r1]
	ldr r0, [r5, #0x2c]
	adds r0, r0, r2
	adds r1, r5, #0
	adds r1, #0x68
	str r1, [r0]
	adds r0, r5, #0
	adds r0, #0x70
	strb r4, [r0]
	adds r0, r5, #0
	bl sub_80853D8
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08081D54: .4byte gBgScrollRegs
_08081D58: .4byte gCamera
_08081D5C: .4byte 0x00000814
_08081D60: .4byte gPlayers

	thumb_func_start TaskDestructor_8081D64
TaskDestructor_8081D64: @ 0x08081D64
	push {r4, r5, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldr r1, _08081DE4 @ =0x0300038C
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08081D7C
	bl VramFree
_08081D7C:
	ldr r1, _08081DE8 @ =0x030003B4
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08081D8A
	bl VramFree
_08081D8A:
	ldr r1, _08081DEC @ =0x03000454
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08081D98
	bl VramFree
_08081D98:
	ldr r1, _08081DF0 @ =0x03000814
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08081DA6
	bl VramFree
_08081DA6:
	ldrb r0, [r5, #1]
	cmp r0, #6
	beq _08081DDE
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _08081DB6
	bl VramFree
_08081DB6:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _08081DC0
	bl VramFree
_08081DC0:
	ldr r0, [r5, #0x24]
	cmp r0, #0
	beq _08081DCA
	bl VramFree
_08081DCA:
	ldr r0, [r5, #0x6c]
	cmp r0, #0
	beq _08081DD4
	bl VramFree
_08081DD4:
	ldr r0, [r5, #0x74]
	cmp r0, #0
	beq _08081DDE
	bl VramFree
_08081DDE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08081DE4: .4byte 0x0300038C
_08081DE8: .4byte 0x030003B4
_08081DEC: .4byte 0x03000454
_08081DF0: .4byte 0x03000814

	thumb_func_start sub_8081DF4
sub_8081DF4: @ 0x08081DF4
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _08081E5C @ =sub_8086FA4
	ldr r1, _08081E60 @ =0x00000878
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r3, _08081E64 @ =sub_8086ED8
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r3, r4
	str r5, [r4, #0x30]
	movs r1, #0
	movs r2, #0
	movs r0, #1
	strh r0, [r4, #4]
	strh r2, [r4, #8]
	movs r0, #6
	strb r0, [r4, #1]
	strb r1, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xd]
	strb r1, [r4, #0x17]
	str r2, [r4, #0x18]
	str r2, [r4, #0x6c]
	ldr r0, _08081E68 @ =gPlayers
	str r0, [r4, #0x28]
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r4, #0x2c]
	ldr r1, _08081E6C @ =0x0300038C
	adds r0, r3, r1
	str r2, [r0]
	ldr r0, _08081E70 @ =0x03000454
	adds r3, r3, r0
	str r2, [r3]
	adds r0, r4, #0
	bl sub_8081FBC
	adds r0, r4, #0
	bl sub_8082A4C
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08081E5C: .4byte sub_8086FA4
_08081E60: .4byte 0x00000878
_08081E64: .4byte sub_8086ED8
_08081E68: .4byte gPlayers
_08081E6C: .4byte 0x0300038C
_08081E70: .4byte 0x03000454

	thumb_func_start Task_8081E74
Task_8081E74: @ 0x08081E74
	push {r4, r5, r6, lr}
	ldr r6, _08081EDC @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, _08081EE0 @ =gStageData
	ldrb r0, [r0, #4]
	cmp r0, #3
	bne _08081ED4
	ldr r2, _08081EE4 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08081EE8 @ =0x00009FFF
	ands r0, r1
	ldr r1, _08081EEC @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _08081EF0 @ =gCamera
	adds r1, #0x5c
	ldrh r2, [r1]
	ldr r0, _08081EF4 @ =0x0000FFFE
	ands r0, r2
	movs r4, #0
	strh r0, [r1]
	movs r0, #1
	strh r0, [r5, #4]
	strh r4, [r5, #8]
	movs r0, #0x3c
	strh r0, [r5, #6]
	adds r0, r5, #0
	bl sub_8081FBC
	adds r0, r5, #0
	bl sub_80824F4
	movs r0, #0x10
	bl VramMalloc
	str r0, [r5, #0x1c]
	movs r0, #0x10
	bl VramMalloc
	str r0, [r5, #0x20]
	str r4, [r5, #0x24]
	ldr r1, [r6]
	ldr r0, _08081EF8 @ =sub_8086F08
	str r0, [r1, #8]
_08081ED4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08081EDC: .4byte gCurTask
_08081EE0: .4byte gStageData
_08081EE4: .4byte gDispCnt
_08081EE8: .4byte 0x00009FFF
_08081EEC: .4byte 0x0000FEFF
_08081EF0: .4byte gCamera
_08081EF4: .4byte 0x0000FFFE
_08081EF8: .4byte sub_8086F08

	thumb_func_start sub_8081EFC
sub_8081EFC: @ 0x08081EFC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, _08081F14 @ =gStageData
	adds r4, r1, #0
	adds r4, #0xac
	ldrh r3, [r4]
	cmp r3, #0
	beq _08081F18
	ldrb r0, [r5]
	cmp r0, #0
	bne _08081F6C
	b _08081FB0
	.align 2, 0
_08081F14: .4byte gStageData
_08081F18:
	ldrb r0, [r1, #4]
	cmp r0, #7
	beq _08081F46
	ldr r2, [r5, #0x28]
	ldr r0, [r2, #4]
	movs r4, #0x80
	lsls r4, r4, #1
	ands r0, r4
	cmp r0, #0
	bne _08081F34
	ldr r1, _08081F68 @ =sub_80105F0
	adds r0, r2, #0
	bl SetPlayerCallback
_08081F34:
	ldr r2, [r5, #0x2c]
	ldr r0, [r2, #4]
	ands r0, r4
	cmp r0, #0
	bne _08081F46
	ldr r1, _08081F68 @ =sub_80105F0
	adds r0, r2, #0
	bl SetPlayerCallback
_08081F46:
	adds r3, r5, #0
	adds r3, #0x5f
	ldrb r0, [r3]
	adds r2, r0, #0
	cmp r2, #1
	bne _08081FB0
	adds r0, #1
	movs r1, #0
	strb r0, [r3]
	strh r2, [r5, #4]
	strh r1, [r5, #8]
	movs r0, #7
	strb r0, [r5, #1]
	ldrb r0, [r5, #0xc]
	strb r0, [r5, #0xd]
	b _08081FB0
	.align 2, 0
_08081F68: .4byte sub_80105F0
_08081F6C:
	ldrb r0, [r1, #4]
	cmp r0, #7
	bne _08081F76
	strb r0, [r5, #1]
	b _08081FB0
_08081F76:
	ldr r2, [r5, #0x28]
	ldr r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08081FB0
	ldrh r0, [r5, #6]
	subs r0, #1
	strh r0, [r5, #6]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08081FB0
	movs r0, #0x3c
	strh r0, [r5, #6]
	subs r0, r3, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08081FB0
	ldr r4, _08081FB8 @ =sub_80105F0
	adds r0, r2, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	ldr r0, [r5, #0x2c]
	adds r1, r4, #0
	bl SetPlayerCallback
_08081FB0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08081FB8: .4byte sub_80105F0

	thumb_func_start sub_8081FBC
sub_8081FBC: @ 0x08081FBC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	ldrb r0, [r7, #1]
	cmp r0, #6
	beq _08082014
	adds r4, r7, #0
	adds r4, #0x9c
	ldr r0, _08082010 @ =gCamera
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0xc8
	lsls r0, r0, #8
	str r0, [r4]
	adds r3, r7, #0
	adds r3, #0xa0
	movs r2, #0xf0
	lsls r2, r2, #7
	str r2, [r3]
	adds r0, r7, #0
	adds r0, #0xf4
	adds r1, #0x78
	lsls r1, r1, #8
	str r1, [r0]
	adds r0, #4
	str r2, [r0]
	subs r0, #0x48
	str r2, [r0]
	adds r1, r7, #0
	adds r1, #0xb4
	movs r0, #0
	str r0, [r1]
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r0, #1
	b _0808204C
	.align 2, 0
_08082010: .4byte gCamera
_08082014:
	adds r4, r7, #0
	adds r4, #0x9c
	ldr r0, _08082110 @ =gCamera
	ldr r2, [r0]
	adds r2, #0x78
	lsls r2, r2, #8
	str r2, [r4]
	adds r3, r7, #0
	adds r3, #0xa0
	ldr r0, [r0, #4]
	adds r0, #0x50
	lsls r0, r0, #8
	str r0, [r3]
	adds r1, r7, #0
	adds r1, #0xf4
	str r2, [r1]
	adds r1, #4
	str r0, [r1]
	adds r0, r7, #0
	adds r0, #0xb0
	movs r1, #0
	str r1, [r0]
	adds r0, #4
	str r1, [r0]
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r0, #2
_0808204C:
	strb r0, [r1]
	mov r8, r4
	mov sl, r3
	adds r0, r7, #0
	adds r0, #0xfc
	movs r4, #0
	str r4, [r0]
	movs r1, #0xb8
	adds r1, r1, r7
	mov sb, r1
	movs r5, #0
	strh r4, [r1]
	adds r1, r7, #0
	adds r1, #0xa4
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r1]
	adds r0, r7, #0
	adds r0, #0xee
	strb r5, [r0]
	adds r0, #1
	strb r5, [r0]
	adds r0, #1
	strh r4, [r0]
	adds r0, r7, #0
	movs r1, #0
	bl sub_8086FF8
	movs r0, #0xe3
	lsls r0, r0, #2
	adds r6, r7, r0
	ldr r1, _08082114 @ =0x0000083C
	adds r3, r7, r1
	movs r0, #0x80
	str r3, [sp]
	bl VramMalloc
	str r0, [r6]
	ldr r0, _08082118 @ =0x000004FD
	strh r0, [r6, #0xc]
	strb r5, [r6, #0x1a]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r6, #0x14]
	strh r4, [r6, #0xe]
	strh r4, [r6, #0x16]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	movs r0, #0x10
	strb r0, [r6, #0x1c]
	strb r5, [r6, #0x1f]
	subs r0, #0x11
	str r0, [r6, #0x20]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r6, #8]
	ldrb r0, [r7, #1]
	ldr r3, [sp]
	cmp r0, #6
	beq _080820CA
	movs r0, #0x2a
	orrs r0, r1
	str r0, [r6, #8]
_080820CA:
	mov r1, r8
	ldr r0, [r1]
	asrs r0, r0, #8
	ldr r2, _08082110 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r6, #0x10]
	mov r1, sl
	ldr r0, [r1]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r6, #0x12]
	mov r1, sb
	ldrh r0, [r1]
	strh r0, [r3]
	ldrh r0, [r6, #0x10]
	strh r0, [r3, #6]
	ldrh r0, [r6, #0x12]
	strh r0, [r3, #8]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r3, #2]
	strh r0, [r3, #4]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08082110: .4byte gCamera
_08082114: .4byte 0x0000083C
_08082118: .4byte 0x000004FD

	thumb_func_start sub_808211C
sub_808211C: @ 0x0808211C
	push {r4, r5, r6, lr}
	mov ip, r0
	ldr r0, [r0, #0x28]
	ldr r0, [r0, #0x10]
	asrs r0, r0, #8
	ldr r2, _08082148 @ =gCamera
	adds r1, r2, #0
	adds r1, #0x6a
	movs r3, #0
	ldrsh r1, [r1, r3]
	lsls r1, r1, #1
	adds r1, r0, r1
	ldr r0, [r2]
	subs r0, r1, r0
	adds r1, r0, #0
	subs r1, #0xb4
	adds r3, r2, #0
	cmp r1, #0
	bgt _0808214C
	movs r1, #0
	b _0808214E
	.align 2, 0
_08082148: .4byte gCamera
_0808214C:
	rsbs r1, r1, #0
_0808214E:
	ldr r0, _08082180 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #5
	bne _08082186
	cmp r1, #0
	bne _08082186
	mov r4, ip
	ldr r0, [r4, #0x2c]
	ldr r0, [r0, #0x10]
	asrs r0, r0, #8
	adds r1, r3, #0
	adds r1, #0x6a
	movs r5, #0
	ldrsh r1, [r1, r5]
	lsls r1, r1, #1
	adds r1, r0, r1
	ldr r0, [r3]
	subs r0, r1, r0
	adds r1, r0, #0
	subs r1, #0xb4
	cmp r1, #0
	bgt _08082184
	movs r1, #0
	b _08082186
	.align 2, 0
_08082180: .4byte gStageData
_08082184:
	rsbs r1, r1, #0
_08082186:
	mov r2, ip
	ldrb r0, [r2, #1]
	cmp r0, #7
	bne _08082190
	movs r1, #0
_08082190:
	adds r4, r3, #0
	adds r4, #0x6a
	movs r5, #0
	ldrsh r0, [r4, r5]
	mov r5, ip
	ldrb r2, [r5, #0x17]
	cmp r0, #0
	bne _080821A4
	cmp r2, #0
	beq _080821C0
_080821A4:
	cmp r2, #0
	beq _080821AE
	subs r0, r2, #1
	mov r1, ip
	strb r0, [r1, #0x17]
_080821AE:
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _080821BC
	movs r0, #1
	mov r4, ip
	strb r0, [r4, #0x17]
_080821BC:
	mov r5, ip
	ldr r1, [r5, #0x18]
_080821C0:
	mov r0, ip
	str r1, [r0, #0x18]
	mov r2, ip
	adds r2, #0xf4
	adds r1, #0x78
	ldr r0, [r3]
	adds r0, r0, r1
	lsls r0, r0, #8
	str r0, [r2]
	mov r1, ip
	adds r1, #0xee
	movs r0, #0
	strb r0, [r1]
	mov r0, ip
	adds r0, #0xed
	ldrb r0, [r0]
	adds r6, r2, #0
	adds r5, r1, #0
	mov r3, ip
	adds r3, #0xb0
	mov r4, ip
	adds r4, #0xb4
	cmp r0, #8
	bls _080821F2
	b _08082360
_080821F2:
	lsls r0, r0, #2
	ldr r1, _080821FC @ =_08082200
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080821FC: .4byte _08082200
_08082200: @ jump table
	.4byte _08082360 @ case 0
	.4byte _08082224 @ case 1
	.4byte _08082248 @ case 2
	.4byte _08082270 @ case 3
	.4byte _080822C0 @ case 4
	.4byte _080822F0 @ case 5
	.4byte _08082310 @ case 6
	.4byte _08082360 @ case 7
	.4byte _08082338 @ case 8
_08082224:
	mov r0, ip
	adds r0, #0xb0
	ldr r1, [r0]
	ldr r2, _08082244 @ =0xFFFFFE00
	adds r1, r1, r2
	str r1, [r0]
	adds r3, r0, #0
	mov r4, ip
	adds r4, #0xb4
	cmp r1, #0
	ble _0808223C
	b _08082360
_0808223C:
	movs r0, #0
	str r0, [r3]
	b _0808232C
	.align 2, 0
_08082244: .4byte 0xFFFFFE00
_08082248:
	mov r0, ip
	adds r0, #0xb0
	ldr r1, [r0]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r1, r3
	str r1, [r0]
	ldr r2, _0808226C @ =0x000077FF
	adds r3, r0, #0
	mov r4, ip
	adds r4, #0xb4
	cmp r1, r2
	bgt _08082264
	b _08082360
_08082264:
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r3]
	b _0808232C
	.align 2, 0
_0808226C: .4byte 0x000077FF
_08082270:
	ldr r5, _080822BC @ =gSineTable
	mov r4, ip
	adds r4, #0xe0
	ldrh r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov r2, ip
	adds r2, #0xfc
	ldr r0, [r2]
	muls r0, r1, r0
	mov r3, ip
	adds r3, #0xb0
	cmp r0, #0
	bge _08082298
	adds r0, #0x3f
_08082298:
	asrs r0, r0, #6
	str r0, [r3]
	ldrh r0, [r4]
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r4, #0
	ldrsh r1, [r0, r4]
	ldr r0, [r2]
	muls r0, r1, r0
	mov r4, ip
	adds r4, #0xb4
	cmp r0, #0
	bge _080822B4
	adds r0, #0x3f
_080822B4:
	asrs r0, r0, #6
	str r0, [r4]
	b _08082360
	.align 2, 0
_080822BC: .4byte gSineTable
_080822C0:
	mov r0, ip
	adds r0, #0xb4
	ldr r3, [r0]
	adds r4, r0, #0
	cmp r3, #0
	bge _080822DE
	adds r0, r3, #0
	adds r0, #0x80
	str r0, [r4]
	mov r3, ip
	adds r3, #0xb0
	cmp r0, #0
	blt _08082360
	movs r0, #0
	b _0808232A
_080822DE:
	adds r0, r3, #0
	subs r0, #0x80
	str r0, [r4]
	mov r3, ip
	adds r3, #0xb0
	cmp r0, #0
	bgt _08082360
	movs r0, #0
	b _0808232A
_080822F0:
	mov r1, ip
	adds r1, #0xb4
	ldr r0, [r1]
	subs r0, #0x80
	str r0, [r1]
	ldr r2, _0808230C @ =0xFFFFA000
	mov r3, ip
	adds r3, #0xb0
	adds r4, r1, #0
	cmp r0, r2
	bgt _08082360
	str r2, [r4]
	b _0808232C
	.align 2, 0
_0808230C: .4byte 0xFFFFA000
_08082310:
	mov r0, ip
	adds r0, #0xb4
	ldr r1, [r0]
	adds r1, #0x80
	str r1, [r0]
	ldr r2, _08082334 @ =0x00005FFF
	mov r3, ip
	adds r3, #0xb0
	adds r4, r0, #0
	cmp r1, r2
	ble _08082360
	movs r0, #0xc0
	lsls r0, r0, #7
_0808232A:
	str r0, [r4]
_0808232C:
	movs r0, #1
	strb r0, [r5]
	b _08082360
	.align 2, 0
_08082334: .4byte 0x00005FFF
_08082338:
	mov r4, ip
	adds r4, #0xa8
	ldr r0, [r4]
	adds r0, #4
	str r0, [r4]
	mov r3, ip
	adds r3, #0xb0
	mov r1, ip
	adds r1, #0xa4
	ldr r0, [r3]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r3]
	mov r2, ip
	adds r2, #0xb4
	ldr r0, [r2]
	ldr r1, [r4]
	adds r0, r0, r1
	str r0, [r2]
	adds r4, r2, #0
_08082360:
	mov r2, ip
	adds r2, #0x9c
	ldr r0, [r6]
	ldr r1, [r3]
	adds r0, r0, r1
	str r0, [r2]
	adds r2, #4
	mov r0, ip
	adds r0, #0xf8
	ldr r0, [r0]
	ldr r1, [r4]
	adds r0, r0, r1
	str r0, [r2]
	mov r0, ip
	movs r1, #0
	bl sub_8082E2C
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_8082388
sub_8082388: @ 0x08082388
	push {r4, r5, lr}
	adds r3, r0, #0
	movs r0, #0xe3
	lsls r0, r0, #2
	adds r4, r3, r0
	ldr r1, _080823A8 @ =0x0000083C
	adds r5, r3, r1
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _080823AC
	cmp r0, #2
	beq _080823F4
	b _0808241E
	.align 2, 0
_080823A8: .4byte 0x0000083C
_080823AC:
	adds r0, r3, #0
	adds r0, #0x9c
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r2, _080823F0 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	adds r0, r3, #0
	adds r0, #0xa0
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r3, #0
	adds r0, #0xb8
	ldrh r0, [r0]
	strh r0, [r5]
	ldrh r0, [r4, #0x10]
	strh r0, [r5, #6]
	ldrh r0, [r4, #0x12]
	strh r0, [r5, #8]
	adds r0, r4, #0
	adds r1, r5, #0
	bl TransformSprite
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	b _0808241E
	.align 2, 0
_080823F0: .4byte gCamera
_080823F4:
	adds r0, r3, #0
	adds r0, #0x9c
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r2, _08082424 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	adds r0, r3, #0
	adds r0, #0xa0
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0808241E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08082424: .4byte gCamera

	thumb_func_start sub_8082428
sub_8082428: @ 0x08082428
	push {lr}
	adds r1, r0, #0
	movs r0, #0xe3
	lsls r0, r0, #2
	adds r2, r1, r0
	adds r3, r1, #0
	adds r3, #0xef
	ldrb r0, [r3]
	cmp r0, #0x34
	beq _080824EA
	cmp r0, #0x34
	bgt _0808244A
	cmp r0, #0x32
	beq _08082462
	cmp r0, #0x32
	bgt _08082478
	b _080824EA
_0808244A:
	cmp r0, #0x65
	beq _080824A8
	cmp r0, #0x65
	bgt _08082458
	cmp r0, #0x64
	beq _08082494
	b _080824EA
_08082458:
	cmp r0, #0x66
	beq _080824C4
	cmp r0, #0x96
	beq _080824C8
	b _080824EA
_08082462:
	adds r1, #0xf0
	movs r0, #6
	strh r0, [r1]
	ldr r0, _08082474 @ =0x000004FD
	strh r0, [r2, #0xc]
	movs r0, #1
	strb r0, [r2, #0x1a]
	b _080824E4
	.align 2, 0
_08082474: .4byte 0x000004FD
_08082478:
	adds r1, #0xf0
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080824EA
	ldr r0, _08082490 @ =0x000004FD
	strh r0, [r2, #0xc]
	movs r0, #2
	strb r0, [r2, #0x1a]
	b _080824E4
	.align 2, 0
_08082490: .4byte 0x000004FD
_08082494:
	adds r1, #0xf0
	movs r0, #6
	strh r0, [r1]
	ldr r0, _080824A4 @ =0x000004FD
	strh r0, [r2, #0xc]
	movs r0, #1
	strb r0, [r2, #0x1a]
	b _080824E4
	.align 2, 0
_080824A4: .4byte 0x000004FD
_080824A8:
	adds r1, #0xf0
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080824EA
	ldr r0, _080824C0 @ =0x000004FD
	strh r0, [r2, #0xc]
	movs r0, #0
	strb r0, [r2, #0x1a]
	b _080824E4
	.align 2, 0
_080824C0: .4byte 0x000004FD
_080824C4:
	movs r0, #0
	b _080824E8
_080824C8:
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r0, #2
	strb r0, [r1]
	movs r1, #0
	ldr r0, _080824F0 @ =0x00000507
	strh r0, [r2, #0xc]
	strb r1, [r2, #0x1a]
	subs r0, #0x47
	strh r0, [r2, #0x14]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r2, #8]
_080824E4:
	ldrb r0, [r3]
	adds r0, #1
_080824E8:
	strb r0, [r3]
_080824EA:
	pop {r0}
	bx r0
	.align 2, 0
_080824F0: .4byte 0x00000507

	thumb_func_start sub_80824F4
sub_80824F4: @ 0x080824F4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r7, r0, #0
	movs r0, #0x10
	bl VramMalloc
	str r0, [sp, #4]
	movs r0, #1
	bl VramMalloc
	str r0, [sp, #8]
	movs r0, #0
	mov r8, r0
	movs r1, #0x80
	str r1, [sp]
_0808251A:
	ldr r2, [sp]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r2, r3
	lsls r0, r0, #1
	ldr r4, _0808276C @ =gSineTable
	adds r0, r0, r4
	movs r5, #0
	ldrsh r1, [r0, r5]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	cmp r0, #0
	bge _08082538
	adds r0, #0x3f
_08082538:
	asrs r4, r0, #6
	ldr r1, [sp]
	lsls r0, r1, #1
	ldr r2, _0808276C @ =gSineTable
	adds r0, r0, r2
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	cmp r0, #0
	bge _08082552
	adds r0, #0x3f
_08082552:
	asrs r3, r0, #6
	mov r5, r8
	lsls r1, r5, #1
	add r1, r8
	lsls r2, r1, #3
	movs r5, #0x86
	lsls r5, r5, #1
	adds r0, r7, r5
	adds r0, r0, r2
	mov sb, r0
	adds r5, r7, #0
	adds r5, #0x9c
	ldr r0, [r5]
	adds r0, r0, r4
	mov r4, sb
	str r0, [r4]
	movs r4, #0x88
	lsls r4, r4, #1
	adds r0, r7, r4
	adds r0, r0, r2
	mov ip, r0
	adds r4, r7, #0
	adds r4, #0xa0
	ldr r0, [r4]
	adds r0, r0, r3
	mov r3, ip
	str r0, [r3]
	adds r2, r7, r2
	movs r0, #0x90
	lsls r0, r0, #1
	adds r2, r2, r0
	mov r3, sp
	ldrh r3, [r3]
	strh r3, [r2]
	mov r3, r8
	lsls r0, r3, #2
	add r0, r8
	lsls r0, r0, #3
	movs r3, #0xed
	lsls r3, r3, #2
	adds r0, r0, r3
	adds r6, r7, r0
	lsls r1, r1, #2
	ldr r0, _08082770 @ =0x00000848
	adds r1, r1, r0
	adds r3, r7, r1
	ldr r1, [sp, #4]
	str r1, [r6]
	ldr r0, _08082774 @ =0x000004FE
	strh r0, [r6, #0xc]
	movs r0, #1
	strb r0, [r6, #0x1a]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r6, #0x14]
	movs r0, #0
	strh r0, [r6, #0xe]
	strh r0, [r6, #0x16]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	movs r0, #0x10
	strb r0, [r6, #0x1c]
	movs r1, #0
	strb r1, [r6, #0x1f]
	subs r0, #0x11
	str r0, [r6, #0x20]
	movs r0, #0x20
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	mov r1, r8
	adds r1, #0xb
	orrs r1, r0
	str r1, [r6, #8]
	str r5, [sp, #0x14]
	str r4, [sp, #0x18]
	mov r4, r8
	cmp r4, #0
	beq _080825F8
	movs r0, #0x80
	lsls r0, r0, #0xc
	orrs r1, r0
	str r1, [r6, #8]
_080825F8:
	mov r5, sb
	ldr r1, [r5]
	asrs r1, r1, #8
	ldr r4, _08082778 @ =gCamera
	ldr r0, [r4]
	subs r1, r1, r0
	strh r1, [r6, #0x10]
	mov r1, ip
	ldr r0, [r1]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r6, #0x12]
	ldr r5, _0808277C @ =0xFFFFFD80
	adds r0, r5, #0
	ldrh r2, [r2]
	adds r0, r0, r2
	ldr r2, _08082780 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r3]
	ldrh r0, [r6, #0x10]
	strh r0, [r3, #6]
	ldrh r0, [r6, #0x12]
	strh r0, [r3, #8]
	movs r5, #0x80
	lsls r5, r5, #1
	strh r5, [r3, #2]
	adds r0, r5, #0
	strh r0, [r3, #4]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	movs r5, #0
	mov r1, r8
	lsls r0, r1, #4
	adds r1, #1
	str r1, [sp, #0x10]
	mov r2, r8
	subs r2, r0, r2
	mov sb, r2
	lsls r0, r2, #4
	ldr r3, _08082784 @ =0x00000454
	adds r0, r0, r3
	adds r0, r7, r0
	str r0, [sp, #0xc]
	mov sl, r4
_08082656:
	lsls r1, r5, #2
	adds r1, r1, r5
	lsls r2, r1, #2
	mov r4, sb
	lsls r0, r4, #3
	adds r2, r2, r0
	movs r0, #0xb6
	lsls r0, r0, #1
	adds r3, r7, r0
	adds r3, r3, r2
	ldr r4, [sp, #0x14]
	ldr r0, [r4]
	str r0, [r3]
	movs r0, #0xb8
	lsls r0, r0, #1
	adds r4, r7, r0
	adds r4, r4, r2
	ldr r2, [sp, #0x18]
	ldr r0, [r2]
	str r0, [r4]
	lsls r1, r1, #3
	ldr r0, [sp, #0xc]
	adds r6, r0, r1
	ldr r1, [sp, #8]
	str r1, [r6]
	ldr r0, _08082788 @ =0x000004FF
	strh r0, [r6, #0xc]
	movs r2, #0
	strb r2, [r6, #0x1a]
	subs r0, #0x3f
	strh r0, [r6, #0x14]
	movs r0, #0
	strh r0, [r6, #0xe]
	strh r0, [r6, #0x16]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	movs r0, #0x10
	strb r0, [r6, #0x1c]
	movs r1, #0
	strb r1, [r6, #0x1f]
	subs r0, #0x11
	str r0, [r6, #0x20]
	movs r2, #0x80
	lsls r2, r2, #5
	str r2, [r6, #8]
	ldr r0, [r3]
	asrs r0, r0, #8
	mov r3, sl
	ldr r1, [r3]
	subs r0, r0, r1
	strh r0, [r6, #0x10]
	ldr r0, [r4]
	asrs r0, r0, #8
	ldr r1, [r3, #4]
	subs r0, r0, r1
	strh r0, [r6, #0x12]
	mov r4, r8
	cmp r4, #0
	bne _080826D0
	cmp r5, #0
	beq _080826D6
_080826D0:
	movs r0, #0x81
	lsls r0, r0, #0xc
	str r0, [r6, #8]
_080826D6:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #5
	bls _08082656
	ldr r1, [sp, #0x10]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r2, [sp]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r2, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	mov r4, r8
	cmp r4, #3
	bhi _08082704
	b _0808251A
_08082704:
	ldr r5, _0808278C @ =0x00000814
	adds r6, r7, r5
	movs r0, #0x10
	bl VramMalloc
	str r0, [r6]
	movs r3, #0
	movs r1, #0
	ldr r0, _08082790 @ =0x00000504
	strh r0, [r6, #0xc]
	strb r3, [r6, #0x1a]
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r6, #0x14]
	strh r1, [r6, #0xe]
	strh r1, [r6, #0x16]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	movs r0, #0x10
	strb r0, [r6, #0x1c]
	strb r3, [r6, #0x1f]
	subs r0, #0x11
	str r0, [r6, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r6, #8]
	movs r1, #0x86
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r2, _08082778 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r6, #0x10]
	movs r4, #0x88
	lsls r4, r4, #1
	adds r0, r7, r4
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r6, #0x12]
	strb r3, [r7, #0xf]
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808276C: .4byte gSineTable
_08082770: .4byte 0x00000848
_08082774: .4byte 0x000004FE
_08082778: .4byte gCamera
_0808277C: .4byte 0xFFFFFD80
_08082780: .4byte 0x000003FF
_08082784: .4byte 0x00000454
_08082788: .4byte 0x000004FF
_0808278C: .4byte 0x00000814
_08082790: .4byte 0x00000504

	thumb_func_start sub_8082794
sub_8082794: @ 0x08082794
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	ldrb r0, [r6]
	cmp r0, #0
	bne _080827AA
	b _08082924
_080827AA:
	movs r7, #0
	ldr r0, _08082908 @ =gCamera
	mov sb, r0
_080827B0:
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r0, r0, #3
	movs r1, #0xed
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r5, r6, r0
	lsls r2, r7, #1
	adds r2, r2, r7
	lsls r0, r2, #2
	ldr r3, _0808290C @ =0x00000848
	adds r0, r0, r3
	adds r3, r6, r0
	lsls r2, r2, #3
	movs r4, #0x86
	lsls r4, r4, #1
	adds r0, r6, r4
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	mov r4, sb
	ldr r1, [r4]
	subs r0, r0, r1
	strh r0, [r5, #0x10]
	movs r1, #0x88
	lsls r1, r1, #1
	adds r0, r6, r1
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r5, #0x12]
	adds r2, r6, r2
	movs r4, #0x90
	lsls r4, r4, #1
	adds r2, r2, r4
	ldr r1, _08082910 @ =0xFFFFFD80
	adds r0, r1, #0
	ldrh r2, [r2]
	adds r0, r0, r2
	ldr r2, _08082914 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r3]
	ldrh r0, [r5, #0x10]
	strh r0, [r3, #6]
	ldrh r0, [r5, #0x12]
	strh r0, [r3, #8]
	adds r0, r5, #0
	adds r1, r3, #0
	bl TransformSprite
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	movs r4, #0
	lsls r0, r7, #4
	adds r3, r7, #1
	mov r8, r3
	subs r1, r0, r7
	lsls r0, r1, #4
	ldr r7, _08082918 @ =0x00000454
	adds r0, r0, r7
	adds r3, r6, r0
	lsls r1, r1, #3
	mov sl, r1
_0808283C:
	lsls r2, r4, #2
	adds r2, r2, r4
	lsls r0, r2, #3
	adds r5, r3, r0
	lsls r2, r2, #2
	add r2, sl
	movs r1, #0xb6
	lsls r1, r1, #1
	adds r0, r6, r1
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	mov r7, sb
	ldr r1, [r7]
	subs r0, r0, r1
	strh r0, [r5, #0x10]
	movs r1, #0xb8
	lsls r1, r1, #1
	adds r0, r6, r1
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, [r7, #4]
	subs r0, r0, r1
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	str r3, [sp]
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r3, [sp]
	cmp r4, #5
	bls _0808283C
	mov r2, r8
	lsls r0, r2, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	bls _080827B0
	ldrb r0, [r6, #0xf]
	cmp r0, #0
	bne _08082894
	b _08082A28
_08082894:
	ldr r3, _0808291C @ =0x00000814
	adds r5, r6, r3
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	movs r4, #0xaa
	lsls r4, r4, #1
	adds r0, r6, r4
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r4, _08082908 @ =gCamera
	ldr r1, [r4]
	subs r0, r0, r1
	subs r0, #0x10
	strh r0, [r5, #0x10]
	movs r7, #0xac
	lsls r7, r7, #1
	adds r0, r6, r7
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	adds r0, #4
	strh r0, [r5, #0x12]
	ldr r0, [r5, #8]
	ldr r1, _08082920 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	bl DisplaySprite
	movs r1, #0x86
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, [r4]
	subs r0, r0, r1
	subs r0, #0x10
	strh r0, [r5, #0x10]
	movs r2, #0x88
	lsls r2, r2, #1
	adds r0, r6, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	subs r0, #4
	strh r0, [r5, #0x12]
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	bl DisplaySprite
	b _08082A28
	.align 2, 0
_08082908: .4byte gCamera
_0808290C: .4byte 0x00000848
_08082910: .4byte 0xFFFFFD80
_08082914: .4byte 0x000003FF
_08082918: .4byte 0x00000454
_0808291C: .4byte 0x00000814
_08082920: .4byte 0xFFFFF7FF
_08082924:
	movs r7, #0
	ldr r3, _08082A38 @ =gCamera
	mov sl, r3
_0808292A:
	lsls r0, r7, #1
	adds r1, r0, r7
	lsls r2, r1, #3
	adds r4, r6, r2
	movs r3, #0x8e
	lsls r3, r3, #1
	adds r0, r4, r3
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	beq _080829B4
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r0, r0, #3
	movs r3, #0xed
	lsls r3, r3, #2
	adds r0, r0, r3
	adds r5, r6, r0
	lsls r0, r1, #2
	ldr r1, _08082A3C @ =0x00000848
	adds r0, r0, r1
	adds r3, r6, r0
	movs r1, #0x86
	lsls r1, r1, #1
	adds r0, r6, r1
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	mov sb, r0
	mov r0, sl
	ldr r0, [r0]
	mov r1, sb
	subs r1, r1, r0
	strh r1, [r5, #0x10]
	movs r1, #0x88
	lsls r1, r1, #1
	adds r0, r6, r1
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	mov r2, sl
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r5, #0x12]
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r2, _08082A40 @ =0xFFFFFD80
	adds r0, r2, #0
	ldrh r1, [r1]
	adds r0, r0, r1
	ldr r4, _08082A44 @ =0x000003FF
	adds r1, r4, #0
	ands r0, r1
	strh r0, [r3]
	ldrh r0, [r5, #0x10]
	strh r0, [r3, #6]
	ldrh r0, [r5, #0x12]
	strh r0, [r3, #8]
	adds r0, r5, #0
	adds r1, r3, #0
	bl TransformSprite
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_080829B4:
	movs r4, #0
	lsls r0, r7, #4
	adds r1, r7, #1
	mov r8, r1
	subs r7, r0, r7
	lsls r0, r7, #4
	ldr r2, _08082A48 @ =0x00000454
	adds r0, r0, r2
	adds r0, r0, r6
	mov sb, r0
_080829C8:
	lsls r0, r4, #2
	adds r2, r0, r4
	lsls r1, r2, #2
	lsls r0, r7, #3
	adds r3, r1, r0
	adds r0, r6, r3
	movs r1, #0xbe
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _08082A14
	lsls r0, r2, #3
	mov r2, sb
	adds r5, r2, r0
	movs r1, #0xb6
	lsls r1, r1, #1
	adds r0, r6, r1
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	mov r2, sl
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r5, #0x10]
	movs r1, #0xb8
	lsls r1, r1, #1
	adds r0, r6, r1
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl DisplaySprite
_08082A14:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #5
	bls _080829C8
	mov r2, r8
	lsls r0, r2, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	bls _0808292A
_08082A28:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08082A38: .4byte gCamera
_08082A3C: .4byte 0x00000848
_08082A40: .4byte 0xFFFFFD80
_08082A44: .4byte 0x000003FF
_08082A48: .4byte 0x00000454

	thumb_func_start sub_8082A4C
sub_8082A4C: @ 0x08082A4C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	mov sb, r0
	ldr r0, _08082B38 @ =0x06012800
	str r0, [sp, #4]
	movs r0, #1
	bl VramMalloc
	str r0, [sp, #8]
	movs r1, #0
	mov sl, r1
	movs r2, #0x80
	str r2, [sp]
_08082A6E:
	ldr r2, _08082B3C @ =gSineTable
	ldr r3, [sp]
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r3, r7
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	cmp r0, #0
	bge _08082A8C
	adds r0, #0x3f
_08082A8C:
	asrs r5, r0, #6
	ldr r7, [sp]
	lsls r0, r7, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	cmp r0, #0
	bge _08082AA4
	adds r0, #0x3f
_08082AA4:
	asrs r4, r0, #6
	mov r3, sl
	lsls r3, r3, #1
	mov r8, r3
	add r3, sl
	lsls r2, r3, #3
	movs r1, #0x86
	lsls r1, r1, #1
	add r1, sb
	adds r1, r1, r2
	mov r6, sb
	adds r6, #0x9c
	ldr r0, [r6]
	adds r0, r0, r5
	str r0, [r1]
	movs r1, #0x88
	lsls r1, r1, #1
	add r1, sb
	adds r1, r1, r2
	mov r5, sb
	adds r5, #0xa0
	ldr r0, [r5]
	adds r0, r0, r4
	str r0, [r1]
	add r2, sb
	movs r7, #0x90
	lsls r7, r7, #1
	adds r2, r2, r7
	movs r4, #0
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r2]
	mov r1, sl
	lsls r0, r1, #2
	add r0, sl
	lsls r0, r0, #3
	movs r2, #0xed
	lsls r2, r2, #2
	adds r0, r0, r2
	mov r1, sb
	adds r7, r1, r0
	lsls r3, r3, #2
	ldr r2, _08082B40 @ =0x00000848
	adds r3, r3, r2
	add r3, sb
	ldr r0, [sp, #4]
	str r0, [r7]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r7, #0x14]
	strh r4, [r7, #0xe]
	strh r4, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	strb r4, [r7, #0x1f]
	subs r0, #0x11
	str r0, [r7, #0x20]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r7, #8]
	mov r2, r8
	str r6, [sp, #0x14]
	str r5, [sp, #0x18]
	mov r0, sl
	cmp r0, #1
	beq _08082B5C
	cmp r0, #1
	bgt _08082B44
	cmp r0, #0
	beq _08082B50
	b _08082B88
	.align 2, 0
_08082B38: .4byte 0x06012800
_08082B3C: .4byte gSineTable
_08082B40: .4byte 0x00000848
_08082B44:
	mov r0, sl
	cmp r0, #2
	beq _08082B68
	cmp r0, #3
	beq _08082B80
	b _08082B88
_08082B50:
	ldr r1, _08082B58 @ =0x000004FE
	strh r1, [r7, #0xc]
	movs r0, #4
	b _08082B86
	.align 2, 0
_08082B58: .4byte 0x000004FE
_08082B5C:
	ldr r0, _08082B64 @ =0x000004FE
	strh r0, [r7, #0xc]
	movs r0, #2
	b _08082B86
	.align 2, 0
_08082B64: .4byte 0x000004FE
_08082B68:
	ldr r0, _08082B7C @ =0x000004FE
	strh r0, [r7, #0xc]
	strb r4, [r7, #0x1a]
	movs r0, #0x20
	orrs r0, r1
	movs r1, #0xd
	orrs r0, r1
	str r0, [r7, #8]
	b _08082B88
	.align 2, 0
_08082B7C: .4byte 0x000004FE
_08082B80:
	ldr r1, _08082CEC @ =0x000004FE
	strh r1, [r7, #0xc]
	movs r0, #6
_08082B86:
	strb r0, [r7, #0x1a]
_08082B88:
	add r2, sl
	lsls r2, r2, #3
	movs r0, #0x86
	lsls r0, r0, #1
	add r0, sb
	adds r0, r0, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	ldr r4, _08082CF0 @ =gCamera
	ldr r0, [r4]
	subs r1, r1, r0
	strh r1, [r7, #0x10]
	movs r0, #0x88
	lsls r0, r0, #1
	add r0, sb
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	add r2, sb
	movs r0, #0x90
	lsls r0, r0, #1
	adds r2, r2, r0
	ldr r1, _08082CF4 @ =0xFFFFFD80
	adds r0, r1, #0
	ldrh r2, [r2]
	adds r0, r0, r2
	ldr r2, _08082CF8 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r3]
	ldrh r0, [r7, #0x10]
	strh r0, [r3, #6]
	ldrh r0, [r7, #0x12]
	strh r0, [r3, #8]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r3, #2]
	strh r0, [r3, #4]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	ldr r3, [sp, #4]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r3, r3, r7
	str r3, [sp, #4]
	movs r5, #0
	mov r1, sl
	lsls r0, r1, #4
	adds r1, #1
	str r1, [sp, #0x10]
	mov r2, sl
	subs r6, r0, r2
	lsls r0, r6, #4
	ldr r3, _08082CFC @ =0x00000454
	adds r0, r0, r3
	add r0, sb
	str r0, [sp, #0xc]
	mov r8, r4
_08082C04:
	lsls r4, r5, #2
	adds r3, r4, r5
	lsls r2, r3, #2
	lsls r0, r6, #3
	adds r2, r2, r0
	movs r0, #0xb6
	lsls r0, r0, #1
	add r0, sb
	adds r0, r0, r2
	ldr r7, [sp, #0x14]
	ldr r1, [r7]
	str r1, [r0]
	movs r0, #0xb8
	lsls r0, r0, #1
	add r0, sb
	adds r0, r0, r2
	ldr r2, [sp, #0x18]
	ldr r1, [r2]
	str r1, [r0]
	lsls r3, r3, #3
	ldr r0, [sp, #0xc]
	adds r7, r0, r3
	ldr r1, [sp, #8]
	str r1, [r7]
	ldr r0, _08082D00 @ =0x000004FF
	strh r0, [r7, #0xc]
	movs r2, #0
	strb r2, [r7, #0x1a]
	subs r0, #0x3f
	strh r0, [r7, #0x14]
	movs r3, #0
	strh r3, [r7, #0xe]
	strh r3, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	movs r0, #0
	strb r0, [r7, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x20]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r7, #8]
	mov r2, sl
	cmp r2, #0
	bne _08082C68
	cmp r5, #0
	beq _08082C74
_08082C68:
	movs r0, #0x80
	lsls r0, r0, #0xc
	movs r3, #0x80
	lsls r3, r3, #5
	orrs r0, r3
	str r0, [r7, #8]
_08082C74:
	adds r2, r4, r5
	lsls r2, r2, #2
	lsls r0, r6, #3
	adds r2, r2, r0
	movs r0, #0xb6
	lsls r0, r0, #1
	add r0, sb
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	mov r3, r8
	ldr r1, [r3]
	subs r0, r0, r1
	strh r0, [r7, #0x10]
	movs r0, #0xb8
	lsls r0, r0, #1
	add r0, sb
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, [r3, #4]
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #5
	bls _08082C04
	ldr r7, [sp, #0x10]
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	ldr r1, [sp]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	mov r3, sl
	cmp r3, #3
	bhi _08082CD0
	b _08082A6E
_08082CD0:
	ldr r7, _08082D04 @ =0x00000814
	add r7, sb
	movs r0, #0
	str r0, [r7]
	mov r7, sb
	strb r0, [r7, #0xf]
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08082CEC: .4byte 0x000004FE
_08082CF0: .4byte gCamera
_08082CF4: .4byte 0xFFFFFD80
_08082CF8: .4byte 0x000003FF
_08082CFC: .4byte 0x00000454
_08082D00: .4byte 0x000004FF
_08082D04: .4byte 0x00000814

	thumb_func_start sub_8082D08
sub_8082D08: @ 0x08082D08
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	movs r5, #0
	ldr r0, _08082DEC @ =gCamera
	mov r8, r0
_08082D1C:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	movs r1, #0xed
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r4, r6, r0
	lsls r2, r5, #1
	adds r2, r2, r5
	lsls r0, r2, #2
	ldr r7, _08082DF0 @ =0x00000848
	adds r0, r0, r7
	adds r3, r6, r0
	lsls r2, r2, #3
	movs r1, #0x86
	lsls r1, r1, #1
	adds r0, r6, r1
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	mov r7, r8
	ldr r1, [r7]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	movs r1, #0x88
	lsls r1, r1, #1
	adds r0, r6, r1
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, [r7, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	cmp r5, #2
	bne _08082E00
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r1, r6, r2
	ldr r7, _08082DF4 @ =0xFFFFFD80
	adds r0, r7, #0
	ldrh r1, [r1]
	adds r0, r0, r1
	ldr r2, _08082DF8 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r3]
	ldrh r0, [r4, #0x10]
	strh r0, [r3, #6]
	ldrh r0, [r4, #0x12]
	strh r0, [r3, #8]
	adds r0, r4, #0
	adds r1, r3, #0
	bl TransformSprite
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	movs r5, #0
	movs r7, #3
	mov sb, r7
	ldr r0, _08082DFC @ =0x00000634
	adds r0, r0, r6
	mov sl, r0
	movs r3, #0xf0
_08082DA2:
	lsls r2, r5, #2
	adds r2, r2, r5
	lsls r0, r2, #3
	mov r1, sl
	adds r4, r1, r0
	lsls r2, r2, #2
	adds r2, r2, r3
	movs r7, #0xb6
	lsls r7, r7, #1
	adds r0, r6, r7
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	mov r7, r8
	ldr r1, [r7]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	movs r1, #0xb8
	lsls r1, r1, #1
	adds r0, r6, r1
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, [r7, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	str r3, [sp]
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r3, [sp]
	cmp r5, #5
	bls _08082DA2
	b _08082E10
	.align 2, 0
_08082DEC: .4byte gCamera
_08082DF0: .4byte 0x00000848
_08082DF4: .4byte 0xFFFFFD80
_08082DF8: .4byte 0x000003FF
_08082DFC: .4byte 0x00000634
_08082E00:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r5, #1
	mov sb, r5
_08082E10:
	mov r2, sb
	lsls r0, r2, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bhi _08082E1C
	b _08082D1C
_08082E1C:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8082E2C
sub_8082E2C: @ 0x08082E2C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x98
	mov r8, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x20]
	mov r1, sp
	ldr r0, _08082E64 @ =gUnknown_080D5E64
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	ldr r5, [sp, #0x20]
	cmp r5, #6
	bls _08082E5A
	bl _08083A1C
_08082E5A:
	lsls r0, r5, #2
	ldr r1, _08082E68 @ =_08082E6C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08082E64: .4byte gUnknown_080D5E64
_08082E68: .4byte _08082E6C
_08082E6C: @ jump table
	.4byte _08082E88 @ case 0
	.4byte _08083500 @ case 1
	.4byte _080835FC @ case 2
	.4byte _08082F46 @ case 3
	.4byte _0808325C @ case 4
	.4byte _0808371C @ case 5
	.4byte _080838F0 @ case 6
_08082E88:
	movs r6, #0
	str r6, [sp, #0x24]
	movs r7, #0x80
	mov r0, sp
	adds r0, #4
	str r0, [sp, #0x8c]
	movs r1, #0x86
	lsls r1, r1, #1
	add r1, r8
	str r1, [sp, #0x2c]
	movs r2, #0x9c
	add r2, r8
	mov sb, r2
	movs r3, #0x88
	lsls r3, r3, #1
	add r3, r8
	str r3, [sp, #0x30]
	mov r5, r8
	adds r5, #0xa0
	movs r4, #0xb6
	lsls r4, r4, #1
	add r4, r8
	mov ip, r4
	movs r6, #0xb8
	lsls r6, r6, #1
	add r6, r8
	mov sl, r6
_08082EBE:
	ldr r0, [sp, #0x24]
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #3
	ldr r1, [sp, #0x2c]
	adds r4, r1, r2
	lsls r3, r0, #3
	mov r6, sp
	adds r0, r6, r3
	ldr r1, [r0]
	lsls r1, r1, #8
	mov r6, sb
	ldr r0, [r6]
	adds r0, r0, r1
	str r0, [r4]
	ldr r0, [sp, #0x30]
	adds r4, r0, r2
	ldr r1, [sp, #0x8c]
	adds r3, r1, r3
	ldr r1, [r3]
	lsls r1, r1, #8
	ldr r0, [r5]
	adds r0, r0, r1
	str r0, [r4]
	add r2, r8
	movs r3, #0x90
	lsls r3, r3, #1
	adds r2, r2, r3
	strh r7, [r2]
	movs r6, #0
	ldr r4, [sp, #0x24]
	lsls r0, r4, #4
	adds r4, #1
	str r4, [sp, #0x90]
	ldr r1, [sp, #0x24]
	subs r0, r0, r1
	lsls r3, r0, #3
_08082F08:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r3
	mov r4, ip
	adds r2, r4, r0
	mov r4, sb
	ldr r1, [r4]
	str r1, [r2]
	add r0, sl
	ldr r1, [r5]
	str r1, [r0]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #5
	bls _08082F08
	ldr r6, [sp, #0x90]
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x24]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r7, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r2, [sp, #0x24]
	cmp r2, #3
	bls _08082EBE
	bl _08083A1C
_08082F46:
	movs r3, #0
	str r3, [sp, #0x24]
	movs r4, #0xa8
	lsls r4, r4, #1
	add r4, r8
	str r4, [sp, #0x34]
	movs r5, #0x86
	lsls r5, r5, #1
	add r5, r8
	str r5, [sp, #0x38]
	movs r6, #0x9c
	lsls r6, r6, #1
	add r6, r8
	str r6, [sp, #0x48]
_08082F62:
	movs r0, #0
	str r0, [sp, #0x28]
	ldr r1, [sp, #0x24]
	lsls r7, r1, #8
	movs r0, #0x80
	orrs r7, r0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r7, r2
	lsls r0, r0, #1
	ldr r3, _08082FF0 @ =gSineTable
	adds r0, r0, r3
	movs r4, #0
	ldrsh r1, [r0, r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	cmp r0, #0
	bge _08082F8A
	adds r0, #0x3f
_08082F8A:
	asrs r0, r0, #6
	mov sl, r0
	lsls r0, r7, #1
	ldr r5, _08082FF0 @ =gSineTable
	adds r0, r0, r5
	movs r6, #0
	ldrsh r1, [r0, r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	cmp r0, #0
	bge _08082FA4
	adds r0, #0x3f
_08082FA4:
	asrs r0, r0, #6
	mov sb, r0
	ldr r0, [sp, #0x24]
	cmp r0, #1
	bne _08082FB0
	b _0808310A
_08082FB0:
	adds r0, #1
	str r0, [sp, #0x90]
	ldr r1, [sp, #0x24]
	cmp r1, #2
	beq _08082FBC
	b _0808324C
_08082FBC:
	mov r0, r8
	adds r0, #0xe2
	ldrb r0, [r0]
	cmp r0, #0
	bne _08083006
	mov r2, r8
	adds r2, #0xbc
	ldrb r1, [r2]
	ldr r3, _08082FF4 @ =gUnknown_080D5D64
	adds r0, r1, r3
	ldrb r5, [r0]
	lsls r0, r5, #8
	rsbs r5, r0, #0
	ldr r4, _08082FF8 @ =gUnknown_080D5DE4
	adds r0, r1, r4
	ldrb r4, [r0]
	lsls r0, r4, #8
	rsbs r4, r0, #0
	str r2, [sp, #0x80]
	cmp r1, #0xc
	bhi _08082FFC
	movs r0, #0xa0
	lsls r0, r0, #2
	ldr r6, [sp, #0x34]
	strh r0, [r6]
	b _0808302E
	.align 2, 0
_08082FF0: .4byte gSineTable
_08082FF4: .4byte gUnknown_080D5D64
_08082FF8: .4byte gUnknown_080D5DE4
_08082FFC:
	movs r0, #0x80
	lsls r0, r0, #2
	ldr r1, [sp, #0x34]
	strh r0, [r1]
	b _0808302E
_08083006:
	mov r0, r8
	adds r0, #0xc6
	ldrb r1, [r0]
	ldr r2, _080830D0 @ =gUnknown_080D5D64
	adds r0, r1, r2
	ldrb r5, [r0]
	lsls r0, r5, #8
	rsbs r5, r0, #0
	ldr r3, _080830D4 @ =gUnknown_080D5DE4
	adds r1, r1, r3
	ldrb r4, [r1]
	lsls r0, r4, #8
	rsbs r4, r0, #0
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r6, [sp, #0x34]
	strh r0, [r6]
	mov r1, r8
	adds r1, #0xbc
	str r1, [sp, #0x80]
_0808302E:
	ldr r2, [sp, #0x24]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #3
	ldr r3, [sp, #0x38]
	adds r2, r3, r1
	mov r3, r8
	adds r3, #0x9c
	ldr r0, [r3]
	add r0, sl
	adds r0, r0, r5
	str r0, [r2]
	movs r2, #0x88
	lsls r2, r2, #1
	add r2, r8
	adds r2, r2, r1
	mov r1, r8
	adds r1, #0xa0
	ldr r0, [r1]
	add r0, sb
	adds r0, r0, r4
	str r0, [r2]
	ldr r0, [sp, #0x28]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x28]
	movs r6, #0
	ldr r4, [sp, #0x24]
	lsls r0, r4, #4
	adds r4, #1
	str r4, [sp, #0x90]
	ldr r5, [sp, #0x24]
	subs r0, r0, r5
	lsls r0, r0, #3
	str r0, [sp, #0x3c]
	movs r0, #0xb6
	lsls r0, r0, #1
	add r0, r8
	str r0, [sp, #0x40]
	movs r2, #0xb8
	lsls r2, r2, #1
	add r2, r8
	str r2, [sp, #0x44]
	mov ip, r3
	adds r7, r1, #0
_0808308A:
	ldr r3, [sp, #0x80]
	ldr r4, [sp, #0x28]
	adds r1, r3, r4
	ldrb r0, [r1]
	cmp r0, #0
	beq _080830D8
	adds r1, r0, #0
	ldr r5, _080830D0 @ =gUnknown_080D5D64
	adds r0, r1, r5
	ldrb r5, [r0]
	lsls r3, r5, #8
	ldr r0, _080830D4 @ =gUnknown_080D5DE4
	adds r1, r1, r0
	ldrb r4, [r1]
	lsls r4, r4, #8
	lsls r1, r6, #2
	adds r1, r1, r6
	lsls r1, r1, #2
	ldr r2, [sp, #0x3c]
	adds r1, r1, r2
	ldr r5, [sp, #0x40]
	adds r2, r5, r1
	mov r5, ip
	ldr r0, [r5]
	add r0, sl
	subs r0, r0, r3
	str r0, [r2]
	ldr r0, [sp, #0x44]
	adds r1, r0, r1
	ldr r0, [r7]
	add r0, sb
	subs r0, r0, r4
	str r0, [r1]
	b _080830F4
	.align 2, 0
_080830D0: .4byte gUnknown_080D5D64
_080830D4: .4byte gUnknown_080D5DE4
_080830D8:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #2
	ldr r1, [sp, #0x3c]
	adds r0, r0, r1
	ldr r3, [sp, #0x40]
	adds r2, r3, r0
	mov r4, ip
	ldr r1, [r4]
	str r1, [r2]
	ldr r5, [sp, #0x44]
	adds r0, r5, r0
	ldr r1, [r7]
	str r1, [r0]
_080830F4:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r0, [sp, #0x28]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x28]
	cmp r6, #5
	bls _0808308A
	b _0808324C
_0808310A:
	mov r0, r8
	adds r0, #0xe2
	ldrb r0, [r0]
	cmp r0, #0
	bne _0808314E
	mov r2, r8
	adds r2, #0xbc
	ldrb r1, [r2]
	ldr r6, _0808313C @ =gUnknown_080D5D64
	adds r0, r1, r6
	ldrb r5, [r0]
	lsls r0, r5, #8
	rsbs r5, r0, #0
	ldr r3, _08083140 @ =gUnknown_080D5DE4
	adds r0, r1, r3
	ldrb r4, [r0]
	lsls r4, r4, #8
	str r2, [sp, #0x80]
	cmp r1, #0xc
	bhi _08083144
	movs r0, #0xc0
	lsls r0, r0, #1
	ldr r6, [sp, #0x48]
	strh r0, [r6]
	b _08083174
	.align 2, 0
_0808313C: .4byte gUnknown_080D5D64
_08083140: .4byte gUnknown_080D5DE4
_08083144:
	movs r0, #0x80
	lsls r0, r0, #2
	ldr r1, [sp, #0x48]
	strh r0, [r1]
	b _08083174
_0808314E:
	mov r0, r8
	adds r0, #0xc5
	ldrb r1, [r0]
	ldr r2, _08083214 @ =gUnknown_080D5D64
	adds r0, r1, r2
	ldrb r5, [r0]
	lsls r0, r5, #8
	rsbs r5, r0, #0
	ldr r3, _08083218 @ =gUnknown_080D5DE4
	adds r1, r1, r3
	ldrb r4, [r1]
	lsls r4, r4, #8
	movs r0, #0xc0
	lsls r0, r0, #2
	ldr r6, [sp, #0x48]
	strh r0, [r6]
	mov r0, r8
	adds r0, #0xbc
	str r0, [sp, #0x80]
_08083174:
	ldr r2, [sp, #0x24]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #3
	ldr r3, [sp, #0x38]
	adds r2, r3, r1
	mov r3, r8
	adds r3, #0x9c
	ldr r0, [r3]
	add r0, sl
	adds r0, r0, r5
	str r0, [r2]
	movs r2, #0x88
	lsls r2, r2, #1
	add r2, r8
	adds r2, r2, r1
	mov r1, r8
	adds r1, #0xa0
	ldr r0, [r1]
	add r0, sb
	adds r0, r0, r4
	str r0, [r2]
	ldr r0, [sp, #0x28]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x28]
	movs r6, #0
	ldr r4, [sp, #0x24]
	lsls r0, r4, #4
	adds r4, #1
	str r4, [sp, #0x90]
	ldr r5, [sp, #0x24]
	subs r0, r0, r5
	lsls r0, r0, #3
	str r0, [sp, #0x4c]
	movs r0, #0xb6
	lsls r0, r0, #1
	add r0, r8
	str r0, [sp, #0x50]
	movs r2, #0xb8
	lsls r2, r2, #1
	add r2, r8
	str r2, [sp, #0x54]
	mov ip, r3
	adds r7, r1, #0
_080831D0:
	ldr r3, [sp, #0x80]
	ldr r4, [sp, #0x28]
	adds r1, r3, r4
	ldrb r0, [r1]
	cmp r0, #0
	beq _0808321C
	adds r1, r0, #0
	ldr r5, _08083214 @ =gUnknown_080D5D64
	adds r0, r1, r5
	ldrb r5, [r0]
	lsls r3, r5, #8
	ldr r0, _08083218 @ =gUnknown_080D5DE4
	adds r1, r1, r0
	ldrb r4, [r1]
	lsls r4, r4, #8
	lsls r1, r6, #2
	adds r1, r1, r6
	lsls r1, r1, #2
	ldr r2, [sp, #0x4c]
	adds r1, r1, r2
	ldr r5, [sp, #0x50]
	adds r2, r5, r1
	mov r5, ip
	ldr r0, [r5]
	add r0, sl
	subs r0, r0, r3
	str r0, [r2]
	ldr r0, [sp, #0x54]
	adds r1, r0, r1
	ldr r0, [r7]
	add r0, sb
	adds r0, r0, r4
	str r0, [r1]
	b _08083238
	.align 2, 0
_08083214: .4byte gUnknown_080D5D64
_08083218: .4byte gUnknown_080D5DE4
_0808321C:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #2
	ldr r1, [sp, #0x4c]
	adds r0, r0, r1
	ldr r3, [sp, #0x50]
	adds r2, r3, r0
	mov r4, ip
	ldr r1, [r4]
	str r1, [r2]
	ldr r5, [sp, #0x54]
	adds r0, r5, r0
	ldr r1, [r7]
	str r1, [r0]
_08083238:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r0, [sp, #0x28]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x28]
	cmp r6, #5
	bls _080831D0
_0808324C:
	ldr r6, [sp, #0x90]
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x24]
	cmp r0, #3
	bhi _0808325A
	b _08082F62
_0808325A:
	b _08083A1C
_0808325C:
	movs r0, #0
	str r0, [sp, #0x24]
_08083260:
	ldr r1, [sp, #0x24]
	lsls r7, r1, #8
	movs r0, #0x80
	orrs r7, r0
	cmp r1, #0
	bne _0808326E
	b _080833A0
_0808326E:
	adds r1, #1
	str r1, [sp, #0x90]
	ldr r2, [sp, #0x24]
	cmp r2, #3
	beq _0808327A
	b _080834EA
_0808327A:
	mov r0, r8
	adds r0, #0xd4
	ldr r3, [r0]
	cmp r3, #0
	bne _08083286
	b _080834EA
_08083286:
	ldr r2, _08083368 @ =gSineTable
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r7, r4
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r5, #0
	ldrsh r1, [r0, r5]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	cmp r0, #0
	bge _080832A2
	adds r0, #0x3f
_080832A2:
	asrs r0, r0, #6
	mov sl, r0
	lsls r0, r7, #1
	ldr r6, _08083368 @ =gSineTable
	adds r0, r0, r6
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	cmp r0, #0
	bge _080832BC
	adds r0, #0x3f
_080832BC:
	asrs r0, r0, #6
	mov sb, r0
	mov r0, r8
	adds r0, #0x9c
	ldr r0, [r0]
	add sl, r0
	mov r0, r8
	adds r0, #0xa0
	ldr r0, [r0]
	add sb, r0
	adds r0, r3, #0
	movs r1, #6
	bl __divsi3
	mov ip, r0
	movs r7, #0xb0
	lsls r7, r7, #2
	mov r0, r8
	adds r0, #0xe4
	ldr r0, [r0]
	asrs r0, r0, #8
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r6, #6
	movs r4, #6
	str r4, [sp, #0x94]
	lsrs r0, r0, #0x12
	str r0, [sp, #0x58]
_080832F4:
	subs r2, r6, #1
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	movs r5, #0xb4
	lsls r5, r5, #1
	adds r1, r1, r5
	movs r0, #0xb6
	lsls r0, r0, #1
	add r0, r8
	adds r0, r0, r1
	mov r4, sl
	str r4, [r0]
	movs r0, #0xb8
	lsls r0, r0, #1
	add r0, r8
	adds r0, r0, r1
	mov r5, sb
	str r5, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r7, r1
	lsls r0, r0, #1
	ldr r4, _08083368 @ =gSineTable
	adds r0, r0, r4
	movs r5, #0
	ldrsh r0, [r0, r5]
	mov r1, ip
	muls r1, r0, r1
	adds r0, r1, #0
	cmp r0, #0
	bge _08083338
	ldr r4, _0808336C @ =0x00003FFF
	adds r0, r0, r4
_08083338:
	asrs r5, r0, #0xe
	lsls r0, r7, #1
	ldr r1, _08083368 @ =gSineTable
	adds r0, r0, r1
	movs r4, #0
	ldrsh r0, [r0, r4]
	mov r1, ip
	muls r1, r0, r1
	adds r0, r1, #0
	cmp r0, #0
	bge _08083352
	ldr r4, _0808336C @ =0x00003FFF
	adds r0, r0, r4
_08083352:
	asrs r4, r0, #0xe
	add sl, r5
	add sb, r4
	cmp r6, #1
	bne _08083374
	ldr r5, [sp, #0x58]
	subs r7, r7, r5
	ldr r6, _08083370 @ =0x000003FF
	ands r7, r6
	b _08083392
	.align 2, 0
_08083368: .4byte gSineTable
_0808336C: .4byte 0x00003FFF
_08083370: .4byte 0x000003FF
_08083374:
	cmp r6, #1
	blt _0808338C
	cmp r6, #3
	bgt _0808338C
	ldr r0, [sp, #0x58]
	adds r7, r7, r0
	ldr r1, _08083388 @ =0x000003FF
	ands r7, r1
	b _08083392
	.align 2, 0
_08083388: .4byte 0x000003FF
_0808338C:
	subs r7, r7, r3
	ldr r4, _0808339C @ =0x000003FF
	ands r7, r4
_08083392:
	lsls r0, r2, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0
	bne _080832F4
	b _080834BE
	.align 2, 0
_0808339C: .4byte 0x000003FF
_080833A0:
	mov r0, r8
	adds r0, #0xd8
	ldr r3, [r0]
	movs r6, #1
	str r6, [sp, #0x90]
	cmp r3, #0
	bne _080833B0
	b _080834EA
_080833B0:
	ldr r2, _0808348C @ =gSineTable
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r7, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r4, #0
	ldrsh r1, [r0, r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	cmp r0, #0
	bge _080833CC
	adds r0, #0x3f
_080833CC:
	asrs r0, r0, #6
	mov sl, r0
	lsls r0, r7, #1
	ldr r5, _0808348C @ =gSineTable
	adds r0, r0, r5
	movs r6, #0
	ldrsh r1, [r0, r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	cmp r0, #0
	bge _080833E6
	adds r0, #0x3f
_080833E6:
	asrs r0, r0, #6
	mov sb, r0
	mov r0, r8
	adds r0, #0x9c
	ldr r0, [r0]
	add sl, r0
	mov r0, r8
	adds r0, #0xa0
	ldr r0, [r0]
	add sb, r0
	adds r0, r3, #0
	movs r1, #6
	bl __divsi3
	mov ip, r0
	movs r7, #0xa0
	lsls r7, r7, #1
	mov r0, r8
	adds r0, #0xe8
	ldr r0, [r0]
	asrs r0, r0, #8
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r6, #6
	movs r1, #0
	str r1, [sp, #0x94]
	lsrs r0, r0, #0x12
	str r0, [sp, #0x5c]
_0808341E:
	subs r2, r6, #1
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, #0
	movs r0, #0xb6
	lsls r0, r0, #1
	add r0, r8
	adds r0, r0, r1
	mov r4, sl
	str r4, [r0]
	movs r0, #0xb8
	lsls r0, r0, #1
	add r0, r8
	adds r0, r0, r1
	mov r5, sb
	str r5, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r7, r1
	lsls r0, r0, #1
	ldr r4, _0808348C @ =gSineTable
	adds r0, r0, r4
	movs r5, #0
	ldrsh r0, [r0, r5]
	mov r1, ip
	muls r1, r0, r1
	adds r0, r1, #0
	cmp r0, #0
	bge _0808345E
	ldr r4, _08083490 @ =0x00003FFF
	adds r0, r0, r4
_0808345E:
	asrs r5, r0, #0xe
	lsls r0, r7, #1
	ldr r1, _0808348C @ =gSineTable
	adds r0, r0, r1
	movs r4, #0
	ldrsh r0, [r0, r4]
	mov r1, ip
	muls r1, r0, r1
	adds r0, r1, #0
	cmp r0, #0
	bge _08083478
	ldr r4, _08083490 @ =0x00003FFF
	adds r0, r0, r4
_08083478:
	asrs r4, r0, #0xe
	add sl, r5
	add sb, r4
	cmp r6, #1
	bne _08083498
	ldr r5, [sp, #0x5c]
	adds r7, r7, r5
	ldr r6, _08083494 @ =0x000003FF
	ands r7, r6
	b _080834B6
	.align 2, 0
_0808348C: .4byte gSineTable
_08083490: .4byte 0x00003FFF
_08083494: .4byte 0x000003FF
_08083498:
	cmp r6, #1
	blt _080834B0
	cmp r6, #3
	bgt _080834B0
	ldr r0, [sp, #0x5c]
	subs r7, r7, r0
	ldr r1, _080834AC @ =0x000003FF
	ands r7, r1
	b _080834B6
	.align 2, 0
_080834AC: .4byte 0x000003FF
_080834B0:
	adds r7, r7, r3
	ldr r4, _080834FC @ =0x000003FF
	ands r7, r4
_080834B6:
	lsls r0, r2, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0
	bne _0808341E
_080834BE:
	ldr r5, [sp, #0x94]
	ldr r6, [sp, #0x24]
	adds r1, r5, r6
	lsls r1, r1, #3
	mov r2, r8
	adds r0, r2, r1
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r0, r3
	strh r7, [r0]
	movs r0, #0x86
	lsls r0, r0, #1
	add r0, r8
	adds r0, r0, r1
	mov r4, sl
	str r4, [r0]
	movs r0, #0x88
	lsls r0, r0, #1
	add r0, r8
	adds r0, r0, r1
	mov r5, sb
	str r5, [r0]
_080834EA:
	ldr r6, [sp, #0x90]
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x24]
	cmp r0, #3
	bhi _080834F8
	b _08083260
_080834F8:
	b _08083A1C
	.align 2, 0
_080834FC: .4byte 0x000003FF
_08083500:
	mov r0, r8
	adds r0, #0xe3
	ldrb r0, [r0]
	str r0, [sp, #0x24]
	ldr r4, _080835F4 @ =gSineTable
	lsls r2, r0, #8
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r0, r2, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	cmp r0, #0
	bge _08083526
	adds r0, #0x3f
_08083526:
	asrs r0, r0, #6
	mov sl, r0
	adds r0, r2, #0
	adds r0, #0x80
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r5, #0
	ldrsh r1, [r0, r5]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	cmp r0, #0
	bge _08083542
	adds r0, #0x3f
_08083542:
	asrs r0, r0, #6
	mov sb, r0
	mov r0, r8
	adds r0, #0x9c
	ldr r0, [r0]
	add sl, r0
	mov r0, r8
	adds r0, #0xa0
	ldr r0, [r0]
	add sb, r0
	mov r0, r8
	adds r0, #0xd4
	ldr r0, [r0]
	movs r1, #6
	bl __divsi3
	mov ip, r0
	mov r1, r8
	adds r1, #0xcc
	ldrh r2, [r1]
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r2, r6
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r3, #0
	ldrsh r0, [r0, r3]
	mov r5, ip
	muls r5, r0, r5
	adds r0, r5, #0
	str r1, [sp, #0x84]
	cmp r0, #0
	bge _08083588
	ldr r6, _080835F8 @ =0x00003FFF
	adds r0, r0, r6
_08083588:
	asrs r5, r0, #0xe
	lsls r0, r2, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	mov r2, ip
	muls r2, r0, r2
	adds r0, r2, #0
	cmp r0, #0
	bge _080835A0
	ldr r3, _080835F8 @ =0x00003FFF
	adds r0, r0, r3
_080835A0:
	asrs r4, r0, #0xe
	movs r6, #6
	ldr r0, [sp, #0x24]
	lsls r0, r0, #1
	str r0, [sp, #0x94]
	ldr r1, [sp, #0x24]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	mov ip, r0
	movs r7, #0xb6
	lsls r7, r7, #1
	add r7, r8
	movs r3, #0xb8
	lsls r3, r3, #1
	add r3, r8
_080835C0:
	subs r0, r6, #1
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	add r1, ip
	adds r2, r7, r1
	mov r6, sl
	str r6, [r2]
	adds r1, r3, r1
	mov r2, sb
	str r2, [r1]
	add sl, r5
	add sb, r4
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0
	bne _080835C0
	ldr r3, [sp, #0x94]
	ldr r4, [sp, #0x24]
	adds r1, r3, r4
	lsls r1, r1, #3
	mov r5, r8
	adds r0, r5, r1
	ldr r6, [sp, #0x84]
	b _080836F0
	.align 2, 0
_080835F4: .4byte gSineTable
_080835F8: .4byte 0x00003FFF
_080835FC:
	mov r0, r8
	adds r0, #0xe3
	ldrb r0, [r0]
	str r0, [sp, #0x24]
	ldr r4, _08083714 @ =gSineTable
	lsls r2, r0, #8
	movs r6, #0xc0
	lsls r6, r6, #1
	adds r0, r2, r6
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	cmp r0, #0
	bge _08083622
	adds r0, #0x3f
_08083622:
	asrs r0, r0, #6
	mov sl, r0
	adds r0, r2, #0
	adds r0, #0x80
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r5, #0
	ldrsh r1, [r0, r5]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	cmp r0, #0
	bge _0808363E
	adds r0, #0x3f
_0808363E:
	asrs r0, r0, #6
	mov sb, r0
	mov r0, r8
	adds r0, #0x9c
	ldr r0, [r0]
	add sl, r0
	mov r0, r8
	adds r0, #0xa0
	ldr r0, [r0]
	add sb, r0
	mov r0, r8
	adds r0, #0xd4
	ldr r0, [r0]
	movs r1, #6
	bl __divsi3
	mov ip, r0
	mov r0, r8
	adds r0, #0xcc
	ldrh r1, [r0]
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r1, r6
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	mov r3, ip
	muls r3, r0, r3
	adds r0, r3, #0
	cmp r0, #0
	bge _08083682
	ldr r5, _08083718 @ =0x00003FFF
	adds r0, r0, r5
_08083682:
	asrs r5, r0, #0xe
	lsls r0, r1, #1
	adds r0, r0, r4
	movs r6, #0
	ldrsh r0, [r0, r6]
	mov r1, ip
	muls r1, r0, r1
	adds r0, r1, #0
	cmp r0, #0
	bge _0808369A
	ldr r2, _08083718 @ =0x00003FFF
	adds r0, r0, r2
_0808369A:
	asrs r4, r0, #0xe
	movs r6, #6
	ldr r3, [sp, #0x24]
	lsls r3, r3, #1
	str r3, [sp, #0x94]
	ldr r1, [sp, #0x24]
	lsls r0, r1, #4
	mov r2, r8
	adds r2, #0xce
	str r2, [sp, #0x88]
	subs r0, r0, r1
	lsls r0, r0, #3
	mov ip, r0
	movs r7, #0xb6
	lsls r7, r7, #1
	add r7, r8
	movs r3, #0xb8
	lsls r3, r3, #1
	add r3, r8
_080836C0:
	subs r0, r6, #1
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	add r1, ip
	adds r2, r7, r1
	mov r6, sl
	str r6, [r2]
	adds r1, r3, r1
	mov r2, sb
	str r2, [r1]
	add sl, r5
	add sb, r4
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0
	bne _080836C0
	ldr r3, [sp, #0x94]
	ldr r4, [sp, #0x24]
	adds r1, r3, r4
	lsls r1, r1, #3
	mov r5, r8
	adds r0, r5, r1
	ldr r6, [sp, #0x88]
_080836F0:
	ldrh r2, [r6]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r0, r3
	strh r2, [r0]
	movs r0, #0x86
	lsls r0, r0, #1
	add r0, r8
	adds r0, r0, r1
	mov r4, sl
	str r4, [r0]
	movs r0, #0x88
	lsls r0, r0, #1
	add r0, r8
	adds r0, r0, r1
	mov r5, sb
	str r5, [r0]
	b _08083A1C
	.align 2, 0
_08083714: .4byte gSineTable
_08083718: .4byte 0x00003FFF
_0808371C:
	mov r0, r8
	adds r0, #0xb8
	ldrh r7, [r0]
	adds r7, #0x80
	ldr r6, _080837F4 @ =0x000003FF
	adds r0, r6, #0
	ands r7, r0
	movs r0, #0
	str r0, [sp, #0x24]
	mov r1, r8
	adds r1, #0x9c
	str r1, [sp, #0x74]
	mov r2, r8
	adds r2, #0xa0
	str r2, [sp, #0x78]
	mov r3, r8
	adds r3, #0xbb
	str r3, [sp, #0x7c]
	mov r4, r8
	adds r4, #0xbc
	str r4, [sp, #0x60]
_08083746:
	movs r5, #0x80
	lsls r5, r5, #1
	adds r0, r7, r5
	lsls r0, r0, #1
	ldr r6, _080837F8 @ =gSineTable
	adds r0, r0, r6
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	cmp r0, #0
	bge _08083762
	adds r0, #0x3f
_08083762:
	asrs r0, r0, #6
	mov sl, r0
	lsls r0, r7, #1
	ldr r3, _080837F8 @ =gSineTable
	adds r0, r0, r3
	movs r4, #0
	ldrsh r1, [r0, r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	cmp r0, #0
	bge _0808377C
	adds r0, #0x3f
_0808377C:
	asrs r0, r0, #6
	mov sb, r0
	ldr r5, [sp, #0x74]
	ldr r0, [r5]
	add sl, r0
	ldr r6, [sp, #0x78]
	ldr r0, [r6]
	add sb, r0
	movs r6, #6
	adds r3, r7, #0
	ldr r0, [sp, #0x24]
	lsls r0, r0, #1
	str r0, [sp, #0x94]
	ldr r1, [sp, #0x24]
	lsls r0, r1, #4
	adds r1, #1
	str r1, [sp, #0x90]
	ldr r2, [sp, #0x24]
	subs r0, r0, r2
	lsls r0, r0, #3
	str r0, [sp, #0x64]
	movs r4, #0xb6
	lsls r4, r4, #1
	add r4, r8
	str r4, [sp, #0x68]
	movs r5, #0xb8
	lsls r5, r5, #1
	add r5, r8
	mov ip, r5
_080837B6:
	ldr r0, [sp, #0x60]
	adds r1, r0, r6
	ldrb r0, [r1]
	cmp r0, #0
	beq _080837FC
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r3, r2
	lsls r0, r0, #1
	ldr r4, _080837F8 @ =gSineTable
	adds r0, r0, r4
	movs r5, #0
	ldrsh r0, [r0, r5]
	ldrb r1, [r1]
	muls r0, r1, r0
	cmp r0, #0
	bge _080837DA
	adds r0, #0x3f
_080837DA:
	asrs r5, r0, #6
	lsls r0, r3, #1
	ldr r2, _080837F8 @ =gSineTable
	adds r0, r0, r2
	movs r4, #0
	ldrsh r0, [r0, r4]
	muls r0, r1, r0
	cmp r0, #0
	bge _080837EE
	adds r0, #0x3f
_080837EE:
	asrs r4, r0, #6
	b _08083800
	.align 2, 0
_080837F4: .4byte 0x000003FF
_080837F8: .4byte gSineTable
_080837FC:
	movs r5, #0
	movs r4, #0
_08083800:
	add sl, r5
	add sb, r4
	subs r2, r6, #1
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r5, [sp, #0x64]
	adds r0, r0, r5
	ldr r6, [sp, #0x68]
	adds r1, r6, r0
	mov r4, sl
	str r4, [r1]
	add r0, ip
	mov r5, sb
	str r5, [r0]
	adds r3, #0x20
	ldr r6, _08083868 @ =0x000003FF
	adds r0, r6, #0
	ands r3, r0
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	cmp r6, #0
	bne _080837B6
	ldr r1, [sp, #0x60]
	ldrb r0, [r1]
	cmp r0, #0
	beq _08083870
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r3, r2
	lsls r0, r0, #1
	ldr r4, _0808386C @ =gSineTable
	adds r0, r0, r4
	movs r5, #0
	ldrsh r0, [r0, r5]
	ldrb r1, [r1]
	muls r0, r1, r0
	cmp r0, #0
	bge _08083850
	adds r0, #0x3f
_08083850:
	asrs r5, r0, #6
	lsls r0, r3, #1
	ldr r6, _0808386C @ =gSineTable
	adds r0, r0, r6
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r1, r0
	cmp r0, #0
	bge _08083864
	adds r0, #0x3f
_08083864:
	asrs r4, r0, #6
	b _08083874
	.align 2, 0
_08083868: .4byte 0x000003FF
_0808386C: .4byte gSineTable
_08083870:
	movs r5, #0
	movs r4, #0
_08083874:
	ldr r6, [sp, #0x7c]
	ldrb r0, [r6]
	cmp r0, #0
	bne _08083898
	ldr r1, [sp, #0x60]
	ldrb r0, [r1]
	cmp r0, #0
	bne _08083898
	ldr r2, [sp, #0x94]
	ldr r3, [sp, #0x24]
	adds r0, r2, r3
	lsls r0, r0, #3
	add r0, r8
	movs r6, #0x90
	lsls r6, r6, #1
	adds r0, r0, r6
	strh r7, [r0]
	b _080838AA
_08083898:
	ldr r1, [sp, #0x94]
	ldr r2, [sp, #0x24]
	adds r0, r1, r2
	lsls r0, r0, #3
	add r0, r8
	movs r6, #0x90
	lsls r6, r6, #1
	adds r0, r0, r6
	strh r3, [r0]
_080838AA:
	ldr r0, [sp, #0x94]
	ldr r1, [sp, #0x24]
	adds r2, r0, r1
	lsls r2, r2, #3
	movs r0, #0x86
	lsls r0, r0, #1
	add r0, r8
	adds r0, r0, r2
	mov r3, sl
	adds r1, r3, r5
	str r1, [r0]
	movs r0, #0x88
	lsls r0, r0, #1
	add r0, r8
	adds r0, r0, r2
	mov r5, sb
	adds r1, r5, r4
	str r1, [r0]
	movs r6, #0x80
	lsls r6, r6, #1
	adds r7, r7, r6
	ldr r1, _080838EC @ =0x000003FF
	adds r0, r1, #0
	ands r7, r0
	ldr r2, [sp, #0x90]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x24]
	cmp r0, #3
	bhi _080838E8
	b _08083746
_080838E8:
	b _08083A1C
	.align 2, 0
_080838EC: .4byte 0x000003FF
_080838F0:
	movs r3, #2
	str r3, [sp, #0x24]
	lsls r1, r3, #8
	adds r7, r1, #0
	adds r7, #0x80
	mov r0, r8
	adds r0, #0xd4
	ldr r2, [r0]
	cmp r2, #0
	bne _08083906
	b _08083A1C
_08083906:
	ldr r4, _08083A38 @ =gSineTable
	movs r5, #0xc0
	lsls r5, r5, #1
	adds r0, r1, r5
	lsls r0, r0, #1
	adds r0, r4, r0
	movs r6, #0
	ldrsh r1, [r0, r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	cmp r0, #0
	bge _08083922
	adds r0, #0x3f
_08083922:
	asrs r0, r0, #6
	mov sl, r0
	lsls r0, r7, #1
	adds r0, r4, r0
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	cmp r0, #0
	bge _0808393A
	adds r0, #0x3f
_0808393A:
	asrs r0, r0, #6
	mov sb, r0
	mov r0, r8
	adds r0, #0x9c
	ldr r0, [r0]
	add sl, r0
	mov r0, r8
	adds r0, #0xa0
	ldr r0, [r0]
	add sb, r0
	adds r0, r2, #0
	movs r1, #6
	bl __divsi3
	mov ip, r0
	mov r0, r8
	adds r0, #0xe8
	ldr r0, [r0]
	lsls r0, r0, #8
	lsrs r7, r0, #0x10
	mov r0, r8
	adds r0, #0xe4
	ldr r0, [r0]
	cmp r0, #0
	bge _0808396E
	adds r0, #0xff
_0808396E:
	lsls r0, r0, #8
	lsrs r3, r0, #0x10
	movs r6, #6
	movs r5, #4
	str r5, [sp, #0x94]
	movs r0, #0xb6
	lsls r0, r0, #1
	add r0, r8
	str r0, [sp, #0x6c]
	movs r1, #0xb8
	lsls r1, r1, #1
	add r1, r8
	str r1, [sp, #0x70]
_08083988:
	subs r2, r6, #1
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, #0xf0
	ldr r4, [sp, #0x6c]
	adds r1, r4, r0
	mov r5, sl
	str r5, [r1]
	ldr r6, [sp, #0x70]
	adds r0, r6, r0
	mov r1, sb
	str r1, [r0]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r7, r4
	lsls r0, r0, #1
	ldr r5, _08083A38 @ =gSineTable
	adds r0, r0, r5
	movs r6, #0
	ldrsh r0, [r0, r6]
	mov r1, ip
	muls r1, r0, r1
	adds r0, r1, #0
	cmp r0, #0
	bge _080839C0
	ldr r4, _08083A3C @ =0x00003FFF
	adds r0, r0, r4
_080839C0:
	asrs r5, r0, #0xe
	lsls r0, r7, #1
	ldr r6, _08083A38 @ =gSineTable
	adds r0, r0, r6
	movs r1, #0
	ldrsh r0, [r0, r1]
	mov r4, ip
	muls r4, r0, r4
	adds r0, r4, #0
	cmp r0, #0
	bge _080839DA
	ldr r6, _08083A3C @ =0x00003FFF
	adds r0, r0, r6
_080839DA:
	asrs r4, r0, #0xe
	add sl, r5
	add sb, r4
	adds r7, r7, r3
	ldr r1, _08083A40 @ =0x000003FF
	adds r0, r1, #0
	ands r7, r0
	lsls r0, r2, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0
	bne _08083988
	ldr r2, [sp, #0x94]
	ldr r3, [sp, #0x24]
	adds r1, r2, r3
	lsls r1, r1, #3
	mov r4, r8
	adds r0, r4, r1
	movs r5, #0x90
	lsls r5, r5, #1
	adds r0, r0, r5
	strh r7, [r0]
	movs r0, #0x86
	lsls r0, r0, #1
	add r0, r8
	adds r0, r0, r1
	mov r6, sl
	str r6, [r0]
	movs r0, #0x88
	lsls r0, r0, #1
	add r0, r8
	adds r0, r0, r1
	mov r1, sb
	str r1, [r0]
_08083A1C:
	add r2, sp, #0x20
	ldrb r3, [r2]
	mov r2, r8
	strb r3, [r2, #0xc]
	movs r0, #0
	add sp, #0x98
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08083A38: .4byte gSineTable
_08083A3C: .4byte 0x00003FFF
_08083A40: .4byte 0x000003FF

	thumb_func_start sub_8083A44
sub_8083A44: @ 0x08083A44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, [r7, #0x28]
	cmp r1, #0
	beq _08083A62
	cmp r1, #1
	bne _08083A60
	b _08083B7E
_08083A60:
	b _08083BD0
_08083A62:
	ldr r0, _08083AA4 @ =gCamera
	adds r0, #0x6a
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #8
	ldr r1, [r2, #0x10]
	adds r4, r1, r0
	ldr r5, [r2, #0x14]
	adds r0, r7, #0
	adds r0, #0xa0
	ldr r1, [r0]
	movs r2, #1
	mov sl, r2
	adds r3, r0, #0
	cmp r5, r1
	bgt _08083A86
	movs r6, #2
	mov sl, r6
_08083A86:
	adds r0, r7, #0
	adds r0, #0x9c
	ldr r1, [r0]
	ldr r2, _08083AA8 @ =0xFFFF5800
	adds r0, r1, r2
	cmp r4, r0
	bgt _08083AAC
	asrs r0, r1, #8
	subs r0, #0xa8
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	mov r4, sl
	lsls r2, r4, #1
	b _08083ACA
	.align 2, 0
_08083AA4: .4byte gCamera
_08083AA8: .4byte 0xFFFF5800
_08083AAC:
	mov r6, sl
	lsls r2, r6, #1
	adds r1, r2, r6
	lsls r1, r1, #3
	movs r6, #0x86
	lsls r6, r6, #1
	adds r0, r7, r6
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r4, r0
	blt _08083AC6
	lsls r0, r0, #8
	b _08083AC8
_08083AC6:
	lsls r0, r4, #8
_08083AC8:
	lsrs r1, r0, #0x10
_08083ACA:
	ldr r4, [r3]
	ldr r3, _08083ADC @ =0xFFFFE000
	adds r0, r4, r3
	cmp r5, r0
	bgt _08083AE0
	asrs r0, r4, #8
	subs r0, #0x20
	lsls r0, r0, #0x10
	b _08083AF4
	.align 2, 0
_08083ADC: .4byte 0xFFFFE000
_08083AE0:
	movs r6, #0x80
	lsls r6, r6, #6
	adds r0, r4, r6
	cmp r5, r0
	blt _08083AF2
	asrs r0, r4, #8
	adds r0, #0x20
	lsls r0, r0, #0x10
	b _08083AF4
_08083AF2:
	lsls r0, r5, #8
_08083AF4:
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r3, r1, #8
	mov r8, r3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r6, r0, #8
	mov r4, sl
	adds r3, r2, r4
	lsls r3, r3, #3
	movs r2, #0x86
	lsls r2, r2, #1
	adds r5, r7, r2
	adds r5, r5, r3
	ldr r2, [r5]
	asrs r2, r2, #8
	subs r1, r1, r2
	movs r2, #0x88
	lsls r2, r2, #1
	adds r4, r7, r2
	adds r4, r4, r3
	ldr r2, [r4]
	asrs r2, r2, #8
	subs r0, r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sa2__sub_8004418
	adds r1, r7, #0
	adds r1, #0xcc
	movs r3, #0
	mov sb, r3
	strh r0, [r1]
	ldr r0, [r5]
	mov r1, r8
	subs r1, r1, r0
	mov r8, r1
	ldr r0, [r4]
	subs r6, r6, r0
	mov r0, r8
	muls r0, r1, r0
	adds r1, r6, #0
	muls r1, r6, r1
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r7, #0
	adds r1, #0xd0
	str r0, [r1]
	adds r0, r7, #0
	adds r0, #0xd4
	mov r2, sb
	str r2, [r0]
	movs r3, #0xa2
	lsls r3, r3, #1
	adds r1, r7, r3
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [r1]
	adds r0, r7, #0
	adds r0, #0xe3
	mov r4, sl
	strb r4, [r0]
	b _08083BD0
_08083B7E:
	adds r0, r7, #0
	adds r0, #0xe3
	ldrb r0, [r0]
	mov sl, r0
	ldr r1, [r2, #0x10]
	ldr r0, _08083BE0 @ =gCamera
	adds r0, #0x6a
	asrs r1, r1, #8
	ldrh r0, [r0]
	adds r1, r1, r0
	mov r6, sl
	lsls r3, r6, #1
	add r3, sl
	lsls r3, r3, #3
	movs r4, #0x86
	lsls r4, r4, #1
	adds r0, r7, r4
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	ldr r0, [r2, #0x14]
	asrs r0, r0, #8
	movs r6, #0x88
	lsls r6, r6, #1
	adds r2, r7, r6
	adds r2, r2, r3
	ldr r2, [r2]
	asrs r2, r2, #8
	subs r0, r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sa2__sub_8004418
	adds r1, r7, #0
	adds r1, #0xce
	strh r0, [r1]
_08083BD0:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08083BE0: .4byte gCamera

	thumb_func_start sub_8083BE4
sub_8083BE4: @ 0x08083BE4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #8]
	movs r3, #0x9b
	lsls r3, r3, #1
	cmp r1, r3
	bne _08083BF4
	b _08083E46
_08083BF4:
	cmp r1, r3
	bgt _08083C2C
	cmp r1, #0x14
	bne _08083BFE
	b _08083D92
_08083BFE:
	cmp r1, #0x14
	bgt _08083C0E
	cmp r1, #0
	beq _08083C78
	cmp r1, #0xa
	bne _08083C0C
	b _08083D3A
_08083C0C:
	b _08083F86
_08083C0E:
	cmp r1, #0xc8
	bne _08083C14
	b _08083DBC
_08083C14:
	cmp r1, #0xc8
	bgt _08083C20
	cmp r1, #0x64
	bne _08083C1E
	b _08083D6C
_08083C1E:
	b _08083F86
_08083C20:
	movs r0, #0x96
	lsls r0, r0, #1
	cmp r1, r0
	bne _08083C2A
	b _08083E18
_08083C2A:
	b _08083F86
_08083C2C:
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp r1, r0
	beq _08083CC6
	cmp r1, r0
	bgt _08083C4C
	movs r0, #0xa0
	lsls r0, r0, #1
	cmp r1, r0
	bne _08083C42
	b _08083F04
_08083C42:
	adds r0, #0xb4
	cmp r1, r0
	bne _08083C4A
	b _08083F44
_08083C4A:
	b _08083F86
_08083C4C:
	movs r0, #0xfa
	lsls r0, r0, #3
	cmp r1, r0
	bne _08083C56
	b _08083F70
_08083C56:
	cmp r1, r0
	bgt _08083C68
	ldr r0, _08083C64 @ =0x000003F2
	cmp r1, r0
	beq _08083C9A
	b _08083F86
	.align 2, 0
_08083C64: .4byte 0x000003F2
_08083C68:
	ldr r0, _08083C74 @ =0x00001770
	cmp r1, r0
	bne _08083C70
	b _08083F76
_08083C70:
	b _08083F86
	.align 2, 0
_08083C74: .4byte 0x00001770
_08083C78:
	adds r0, r4, #0
	adds r0, #0xe2
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	ldr r2, _08083D24 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _08083D28 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08083D2C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	adds r2, r4, #0
	adds r2, #0xf2
	movs r1, #0
	strh r0, [r2]
	strb r1, [r4, #2]
_08083C9A:
	movs r0, #0xfa
	lsls r0, r0, #2
	strh r0, [r4, #8]
	movs r0, #0x3c
	strh r0, [r4, #4]
	movs r1, #0
	ldr r3, _08083D30 @ =0x000004FE
	movs r2, #1
_08083CAA:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r5, #0xed
	lsls r5, r5, #2
	adds r0, r0, r5
	adds r0, r4, r0
	strh r3, [r0, #0xc]
	strb r2, [r0, #0x1a]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _08083CAA
_08083CC6:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08083CD4
	b _08083F86
_08083CD4:
	adds r0, r4, #0
	adds r0, #0xf2
	adds r2, r4, #0
	adds r2, #0xe2
	ldrb r1, [r2]
	movs r3, #1
	lsls r3, r1
	ldrh r0, [r0]
	ands r3, r0
	cmp r1, #4
	bhi _08083CEE
	cmp r3, #0
	bne _08083CF2
_08083CEE:
	cmp r1, #0
	bne _08083D34
_08083CF2:
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	movs r0, #0x3c
	strh r0, [r4, #4]
	movs r1, #0
	movs r3, #0
	ldr r2, _08083D30 @ =0x000004FE
_08083D02:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r5, #0xed
	lsls r5, r5, #2
	adds r0, r0, r5
	adds r0, r4, r0
	strh r2, [r0, #0xc]
	strb r3, [r0, #0x1a]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _08083D02
	movs r0, #0xa
	b _08083F84
	.align 2, 0
_08083D24: .4byte gPseudoRandom
_08083D28: .4byte 0x00196225
_08083D2C: .4byte 0x3C6EF35F
_08083D30: .4byte 0x000004FE
_08083D34:
	movs r0, #0xfa
	lsls r0, r0, #3
	b _08083F84
_08083D3A:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _08083D56
	movs r0, #0x64
	strh r0, [r4, #8]
	movs r0, #0x90
	lsls r0, r0, #2
	bl m4aSongNumStart
	b _08083D62
_08083D56:
	cmp r0, #0xa
	bne _08083D62
	adds r0, r4, #0
	movs r1, #0
	bl sub_8083A44
_08083D62:
	adds r0, r4, #0
	movs r1, #0
	bl sub_8082E2C
	b _08083F86
_08083D6C:
	adds r0, r4, #0
	adds r0, #0xd0
	adds r2, r4, #0
	adds r2, #0xd4
	ldr r0, [r0]
	ldr r1, [r2]
	cmp r0, r1
	ble _08083D8A
	movs r3, #0xa2
	lsls r3, r3, #1
	adds r0, r4, r3
	ldr r0, [r0]
	adds r0, r1, r0
	str r0, [r2]
	b _08083F60
_08083D8A:
	movs r0, #0x3c
	strh r0, [r4, #4]
	movs r0, #0x14
	b _08083F5E
_08083D92:
	adds r0, r4, #0
	movs r1, #1
	bl sub_8082E2C
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _08083DAC
	movs r0, #0xc8
	b _08083F84
_08083DAC:
	cmp r0, #0xa
	beq _08083DB2
	b _08083F86
_08083DB2:
	adds r0, r4, #0
	movs r1, #1
	bl sub_8083A44
	b _08083F86
_08083DBC:
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r4, #8]
	ldrb r0, [r4]
	cmp r0, #2
	bls _08083DD0
	movs r0, #0x78
	strh r0, [r4, #4]
	movs r0, #0
	b _08083DFA
_08083DD0:
	adds r0, r4, #0
	adds r0, #0xce
	ldrh r1, [r0]
	ldr r0, _08083DE4 @ =0x000001FF
	cmp r1, r0
	bhi _08083DE8
	adds r1, r4, #0
	adds r1, #0xe4
	movs r0, #1
	b _08083DEE
	.align 2, 0
_08083DE4: .4byte 0x000001FF
_08083DE8:
	adds r1, r4, #0
	adds r1, #0xe4
	movs r0, #0
_08083DEE:
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0xe8
	movs r1, #0
	str r1, [r0]
	movs r0, #1
_08083DFA:
	strb r0, [r4, #2]
	ldr r0, _08083E14 @ =0x00000241
	bl m4aSongNumStart
	movs r0, #0
	bl sub_80870E4
	adds r0, r4, #0
	movs r1, #2
	bl sub_8082E2C
	b _08083F86
	.align 2, 0
_08083E14: .4byte 0x00000241
_08083E18:
	ldr r2, _08083EA4 @ =gDispCnt
	ldrh r0, [r2]
	movs r5, #0x80
	lsls r5, r5, #6
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08083EA8 @ =gWinRegs
	movs r0, #0xa0
	strh r0, [r1]
	movs r0, #0xf0
	strh r0, [r1, #4]
	movs r0, #0x3f
	strh r0, [r1, #8]
	movs r0, #0x18
	strh r0, [r1, #0xa]
	ldr r1, _08083EAC @ =gBldRegs
	ldr r0, _08083EB0 @ =0x00003FBF
	strh r0, [r1]
	movs r0, #8
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r3, [r4, #8]
_08083E46:
	adds r0, r4, #0
	movs r1, #2
	bl sub_8082E2C
	adds r0, r4, #0
	adds r0, #0xe3
	ldrb r0, [r0]
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #3
	movs r1, #0x86
	lsls r1, r1, #1
	adds r0, r4, r1
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r3, _08083EB4 @ =gCamera
	ldr r1, [r3]
	subs r0, r0, r1
	movs r5, #0x88
	lsls r5, r5, #1
	adds r1, r4, r5
	adds r1, r1, r2
	ldr r1, [r1]
	asrs r1, r1, #8
	ldr r2, [r3, #4]
	subs r1, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r5, r4, #0
	adds r5, #0xce
	ldrh r2, [r5]
	bl sub_808587C
	ldrb r0, [r4, #2]
	cmp r0, #0
	bne _08083EB8
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08083EF2
	b _08083EEC
	.align 2, 0
_08083EA4: .4byte gDispCnt
_08083EA8: .4byte gWinRegs
_08083EAC: .4byte gBldRegs
_08083EB0: .4byte 0x00003FBF
_08083EB4: .4byte gCamera
_08083EB8:
	adds r0, r4, #0
	adds r0, #0xe4
	ldr r0, [r0]
	cmp r0, #0
	beq _08083ED0
	ldrh r0, [r5]
	adds r0, #8
	ldr r2, _08083ECC @ =0x000003FF
	adds r1, r2, #0
	b _08083ED8
	.align 2, 0
_08083ECC: .4byte 0x000003FF
_08083ED0:
	ldrh r0, [r5]
	subs r0, #8
	ldr r3, _08083EFC @ =0x000003FF
	adds r1, r3, #0
_08083ED8:
	ands r0, r1
	strh r0, [r5]
	adds r0, r4, #0
	adds r0, #0xe8
	ldr r1, [r0]
	adds r1, #8
	str r1, [r0]
	ldr r0, _08083F00 @ =0x000005FF
	cmp r1, r0
	ble _08083EF2
_08083EEC:
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r4, #8]
_08083EF2:
	adds r0, r4, #0
	bl sub_808717C
	b _08083F86
	.align 2, 0
_08083EFC: .4byte 0x000003FF
_08083F00: .4byte 0x000005FF
_08083F04:
	ldr r2, _08083F30 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08083F34 @ =0x0000DFFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08083F38 @ =gWinRegs
	movs r1, #0
	strh r1, [r0, #8]
	strh r1, [r0, #0xa]
	ldr r0, _08083F3C @ =gBldRegs
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	ldr r2, _08083F40 @ =gFlags
	ldr r0, [r2]
	subs r1, #5
	ands r0, r1
	str r0, [r2]
	movs r0, #0xfa
	lsls r0, r0, #1
	b _08083F5E
	.align 2, 0
_08083F30: .4byte gDispCnt
_08083F34: .4byte 0x0000DFFF
_08083F38: .4byte gWinRegs
_08083F3C: .4byte gBldRegs
_08083F40: .4byte gFlags
_08083F44:
	adds r2, r4, #0
	adds r2, #0xd4
	ldr r1, [r2]
	cmp r1, #0
	beq _08083F5C
	movs r5, #0xa2
	lsls r5, r5, #1
	adds r0, r4, r5
	ldr r0, [r0]
	subs r0, r1, r0
	str r0, [r2]
	b _08083F60
_08083F5C:
	ldr r0, _08083F6C @ =0x000003F2
_08083F5E:
	strh r0, [r4, #8]
_08083F60:
	adds r0, r4, #0
	movs r1, #1
	bl sub_8082E2C
	b _08083F86
	.align 2, 0
_08083F6C: .4byte 0x000003F2
_08083F70:
	movs r0, #0
	strb r0, [r4, #1]
	b _08083F86
_08083F76:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _08083F86
_08083F84:
	strh r0, [r4, #8]
_08083F86:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8083F8C
sub_8083F8C: @ 0x08083F8C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	ldrh r1, [r7, #8]
	cmp r1, #0xc8
	bne _08083FA2
	b _08084164
_08083FA2:
	cmp r1, #0xc8
	bgt _08083FBA
	cmp r1, #0x64
	beq _0808404C
	cmp r1, #0x64
	bgt _08083FB4
	cmp r1, #0
	beq _08083FDC
	b _0808438C
_08083FB4:
	cmp r1, #0x6e
	beq _080840AE
	b _0808438C
_08083FBA:
	movs r0, #0xfa
	lsls r0, r0, #1
	cmp r1, r0
	bne _08083FC4
	b _0808430C
_08083FC4:
	cmp r1, r0
	bgt _08083FD0
	cmp r1, #0xd2
	bne _08083FCE
	b _080842C8
_08083FCE:
	b _0808438C
_08083FD0:
	movs r0, #0xff
	lsls r0, r0, #1
	cmp r1, r0
	bne _08083FDA
	b _08084374
_08083FDA:
	b _0808438C
_08083FDC:
	adds r0, r7, #0
	adds r0, #0xbb
	strb r1, [r0]
	movs r3, #0
	adds r5, r7, #0
	adds r5, #0xe2
	adds r4, r7, #0
	adds r4, #0xbc
	movs r1, #0
	adds r2, r7, #0
	adds r2, #0xc4
_08083FF2:
	adds r0, r4, r3
	strb r1, [r0]
	adds r0, r2, r3
	strb r1, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #6
	bls _08083FF2
	movs r0, #0
	strb r0, [r5]
	strb r0, [r7, #3]
	strb r0, [r7, #2]
	movs r0, #1
	strh r0, [r7, #4]
	movs r0, #0x64
	strh r0, [r7, #8]
	movs r0, #0x90
	lsls r0, r0, #2
	bl m4aSongNumStart
	movs r1, #0
	movs r3, #0
	ldr r2, _08084048 @ =0x000004FE
_08084022:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r4, #0xed
	lsls r4, r4, #2
	adds r0, r0, r4
	adds r0, r7, r0
	strh r2, [r0, #0xc]
	strb r3, [r0, #0x1a]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _08084022
	adds r0, r7, #0
	movs r1, #0
	bl sub_8082E2C
	b _0808438C
	.align 2, 0
_08084048: .4byte 0x000004FE
_0808404C:
	ldrh r0, [r7, #4]
	subs r0, #1
	strh r0, [r7, #4]
	lsls r0, r0, #0x10
	adds r1, r7, #0
	adds r1, #0xbb
	cmp r0, #0
	bne _08084078
	movs r0, #0x14
	strh r0, [r7, #4]
	ldrb r0, [r1]
	cmp r0, #6
	bhi _08084078
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #6
	bne _08084078
	ldrh r0, [r7, #4]
	subs r0, #4
	strh r0, [r7, #4]
_08084078:
	movs r3, #0
	adds r2, r1, #0
	adds r4, r7, #0
	adds r4, #0xbc
	ldrb r0, [r2]
	cmp r3, r0
	bhs _0808409C
	adds r5, r4, #0
_08084088:
	adds r0, r5, r3
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldrb r1, [r2]
	cmp r3, r1
	blo _08084088
_0808409C:
	ldrb r0, [r4]
	cmp r0, #0x77
	bhi _080840A4
	b _08084364
_080840A4:
	movs r0, #0x3c
	strh r0, [r7, #4]
	movs r0, #0x6e
	strh r0, [r7, #8]
	b _08084364
_080840AE:
	ldrh r0, [r7, #4]
	subs r0, #1
	strh r0, [r7, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080840BC
	b _08084364
_080840BC:
	adds r1, r7, #0
	adds r1, #0xe2
	movs r0, #1
	strb r0, [r1]
	movs r3, #1
	adds r6, r7, #0
	adds r6, #0xc4
	ldr r2, _08084118 @ =gUnknown_080D5D50
	mov sl, r2
	ldr r4, _0808411C @ =gPseudoRandom
	mov r8, r4
	movs r0, #0
	mov sb, r0
_080840D6:
	adds r1, r6, r3
	movs r0, #0x78
	strb r0, [r1]
	lsls r4, r3, #1
	adds r0, r4, r3
	lsls r0, r0, #3
	adds r5, r7, r0
	mov r2, r8
	ldr r1, [r2]
	ldr r0, _08084120 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08084124 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0xa
	str r3, [sp, #4]
	bl __umodsi3
	lsls r0, r0, #1
	add r0, sl
	ldrh r1, [r0]
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r0, r5, r2
	strh r1, [r0]
	ldr r3, [sp, #4]
	cmp r3, #2
	bne _08084128
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r1, r7, r0
	subs r0, #0x50
	b _08084132
	.align 2, 0
_08084118: .4byte gUnknown_080D5D50
_0808411C: .4byte gPseudoRandom
_08084120: .4byte 0x00196225
_08084124: .4byte 0x3C6EF35F
_08084128:
	movs r2, #0x90
	lsls r2, r2, #1
	adds r1, r5, r2
	movs r0, #0xc0
	lsls r0, r0, #2
_08084132:
	strh r0, [r1]
	adds r0, r4, r3
	lsls r0, r0, #3
	adds r2, r7, r0
	movs r4, #0x91
	lsls r4, r4, #1
	adds r1, r2, r4
	movs r0, #1
	strb r0, [r1]
	movs r1, #0x8f
	lsls r1, r1, #1
	adds r0, r2, r1
	mov r2, sb
	strh r2, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #2
	bls _080840D6
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r7, #4]
	movs r0, #0xc8
	strh r0, [r7, #8]
	b _08084364
_08084164:
	adds r0, r7, #0
	movs r1, #3
	bl sub_8082E2C
	movs r3, #1
	ldr r4, _08084194 @ =gPseudoRandom
	mov sl, r4
_08084172:
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r0, r0, r7
	mov r8, r0
	movs r0, #0x8f
	lsls r0, r0, #1
	add r0, r8
	mov sb, r0
	ldrh r0, [r0]
	cmp r0, #0xa
	beq _080841FC
	cmp r0, #0xa
	bgt _08084198
	cmp r0, #0
	beq _0808419E
	b _0808428E
	.align 2, 0
_08084194: .4byte gPseudoRandom
_08084198:
	cmp r0, #0x14
	beq _08084232
	b _0808428E
_0808419E:
	movs r1, #0x8e
	lsls r1, r1, #1
	add r1, r8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080841BC
	movs r0, #0x1e
	strh r0, [r1]
	movs r0, #0xa
	mov r1, sb
	strh r0, [r1]
	b _0808428E
_080841BC:
	movs r2, #0x91
	lsls r2, r2, #1
	add r2, r8
	ldrb r0, [r2]
	cmp r0, #0
	bne _080841DE
	adds r1, r7, #0
	adds r1, #0xc4
	adds r1, r1, r3
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x69
	bls _0808428E
	b _080841F2
_080841DE:
	adds r1, r7, #0
	adds r1, #0xc4
	adds r1, r1, r3
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x14
	bhi _0808428E
_080841F2:
	ldrb r0, [r2]
	movs r1, #1
	eors r0, r1
	strb r0, [r2]
	b _0808428E
_080841FC:
	movs r4, #0x8e
	lsls r4, r4, #1
	add r4, r8
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0808428E
	adds r0, r7, r3
	ldrb r0, [r0, #1]
	cmp r0, #0
	beq _0808421C
	movs r0, #1
	strh r0, [r4]
	b _0808428E
_0808421C:
	adds r0, r7, #0
	adds r1, r3, #0
	str r3, [sp, #4]
	bl sub_8086A40
	movs r0, #0x1e
	strh r0, [r4]
	movs r0, #0x14
	mov r2, sb
	strh r0, [r2]
	b _0808428C
_08084232:
	movs r6, #0x8e
	lsls r6, r6, #1
	add r6, r8
	ldrh r0, [r6]
	subs r0, #1
	strh r0, [r6]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	bne _0808428E
	mov r4, sl
	ldr r0, [r4]
	ldr r1, _080842BC @ =0x00196225
	adds r4, r0, #0
	muls r4, r1, r4
	ldr r5, _080842C0 @ =0x3C6EF35F
	adds r4, r4, r5
	mov r0, sl
	str r4, [r0]
	adds r0, r4, #0
	movs r1, #0xa
	str r2, [sp]
	str r3, [sp, #4]
	bl __umodsi3
	lsls r0, r0, #1
	ldr r1, _080842C4 @ =gUnknown_080D5D50
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r6]
	ldr r0, _080842BC @ =0x00196225
	adds r1, r4, #0
	muls r1, r0, r1
	adds r1, r1, r5
	mov r4, sl
	str r1, [r4]
	movs r0, #1
	ands r1, r0
	movs r0, #0x91
	lsls r0, r0, #1
	add r0, r8
	strb r1, [r0]
	ldr r2, [sp]
	mov r0, sb
	strh r2, [r0]
_0808428C:
	ldr r3, [sp, #4]
_0808428E:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #2
	bhi _0808429A
	b _08084172
_0808429A:
	ldrh r1, [r7, #4]
	movs r2, #4
	ldrsh r0, [r7, r2]
	cmp r0, #0
	beq _080842AE
	subs r0, r1, #1
	strh r0, [r7, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0808438C
_080842AE:
	ldrh r0, [r7, #2]
	cmp r0, #0
	bne _0808438C
	movs r0, #0xd2
	strh r0, [r7, #8]
	b _0808438C
	.align 2, 0
_080842BC: .4byte 0x00196225
_080842C0: .4byte 0x3C6EF35F
_080842C4: .4byte gUnknown_080D5D50
_080842C8:
	movs r3, #1
	adds r6, r7, #0
	adds r6, #0xc4
	adds r2, r6, #0
_080842D0:
	adds r1, r2, r3
	ldrb r0, [r1]
	cmp r0, #0x77
	bhi _080842DC
	adds r0, #1
	strb r0, [r1]
_080842DC:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #2
	bls _080842D0
	ldr r0, [r6]
	ldr r1, _08084304 @ =0x00FFFF00
	ands r0, r1
	ldr r1, _08084308 @ =0x00787800
	cmp r0, r1
	bne _08084364
	adds r1, r7, #0
	adds r1, #0xe2
	movs r0, #0
	strb r0, [r1]
	movs r0, #0xfa
	lsls r0, r0, #1
	strh r0, [r7, #8]
	b _08084364
	.align 2, 0
_08084304: .4byte 0x00FFFF00
_08084308: .4byte 0x00787800
_0808430C:
	movs r3, #0
	adds r0, r7, #0
	adds r0, #0xbb
	adds r1, r0, #0
	adds r4, r7, #0
	adds r4, #0xbc
	ldrb r0, [r1]
	cmp r3, r0
	bhs _0808433A
	adds r5, r4, #0
	adds r2, r1, #0
_08084322:
	adds r1, r5, r3
	ldrb r0, [r1]
	cmp r0, #0
	beq _0808432E
	subs r0, #1
	strb r0, [r1]
_0808432E:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldrb r1, [r2]
	cmp r3, r1
	blo _08084322
_0808433A:
	ldrb r0, [r4]
	cmp r0, #0
	bne _08084364
	strb r0, [r7, #1]
	movs r1, #0
	ldr r3, _08084370 @ =0x000004FE
	movs r2, #1
_08084348:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r4, #0xed
	lsls r4, r4, #2
	adds r0, r0, r4
	adds r0, r7, r0
	strh r3, [r0, #0xc]
	strb r2, [r0, #0x1a]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _08084348
_08084364:
	adds r0, r7, #0
	movs r1, #3
	bl sub_8082E2C
	b _0808438C
	.align 2, 0
_08084370: .4byte 0x000004FE
_08084374:
	ldrh r0, [r7, #4]
	subs r0, #1
	strh r0, [r7, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _08084384
	strh r0, [r7, #8]
_08084384:
	adds r0, r7, #0
	movs r1, #3
	bl sub_8082E2C
_0808438C:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_808439C
sub_808439C: @ 0x0808439C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	ldrh r3, [r7, #8]
	movs r4, #0x96
	lsls r4, r4, #1
	cmp r3, r4
	bne _080843B2
	b _0808457C
_080843B2:
	cmp r3, r4
	bgt _080843D6
	cmp r3, #0x64
	beq _080844B0
	cmp r3, #0x64
	bgt _080843C8
	cmp r3, #0
	beq _0808440A
	cmp r3, #0xa
	beq _08084490
	b _08084908
_080843C8:
	cmp r3, #0x6e
	bne _080843CE
	b _08084504
_080843CE:
	cmp r3, #0xc8
	bne _080843D4
	b _08084550
_080843D4:
	b _08084908
_080843D6:
	movs r0, #0xaf
	lsls r0, r0, #1
	cmp r3, r0
	bne _080843E0
	b _080846F0
_080843E0:
	cmp r3, r0
	bgt _080843F6
	subs r0, #0x14
	cmp r3, r0
	bne _080843EC
	b _080845D4
_080843EC:
	adds r0, #0xa
	cmp r3, r0
	bne _080843F4
	b _080846D8
_080843F4:
	b _08084908
_080843F6:
	movs r0, #0xb4
	lsls r0, r0, #1
	cmp r3, r0
	bne _08084400
	b _08084788
_08084400:
	adds r0, #0x8c
	cmp r3, r0
	bne _08084408
	b _0808489C
_08084408:
	b _08084908
_0808440A:
	ldr r2, _0808447C @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _08084480 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08084484 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #1
	ands r0, r1
	adds r1, r7, #0
	adds r1, #0xe2
	strb r0, [r1]
	subs r1, #0x12
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r1]
	adds r0, r7, #0
	adds r0, #0xd4
	str r3, [r0]
	adds r0, #4
	str r3, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r1]
	adds r0, r7, #0
	adds r0, #0xe4
	str r3, [r0]
	adds r0, #4
	str r3, [r0]
	strh r3, [r7, #4]
	movs r0, #0x64
	strh r0, [r7, #8]
	ldr r0, _08084488 @ =0x00000239
	bl m4aSongNumStart
	movs r1, #0
	movs r3, #0
	ldr r2, _0808448C @ =0x000004FE
_0808445C:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r4, #0xed
	lsls r4, r4, #2
	adds r0, r0, r4
	adds r0, r7, r0
	strh r2, [r0, #0xc]
	strb r3, [r0, #0x1a]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _0808445C
	b _08084908
	.align 2, 0
_0808447C: .4byte gPseudoRandom
_08084480: .4byte 0x00196225
_08084484: .4byte 0x3C6EF35F
_08084488: .4byte 0x00000239
_0808448C: .4byte 0x000004FE
_08084490:
	ldrh r0, [r7, #4]
	subs r0, #1
	strh r0, [r7, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0808449E
	b _08084908
_0808449E:
	adds r2, r7, #0
	adds r2, #0xe2
	ldrb r0, [r2]
	movs r1, #1
	eors r0, r1
	strb r0, [r2]
	movs r0, #0x64
	strh r0, [r7, #8]
	b _08084908
_080844B0:
	adds r0, r7, #0
	adds r0, #0xe2
	ldrb r0, [r0]
	movs r1, #1
	cmp r0, #0
	beq _080844BE
	movs r1, #2
_080844BE:
	adds r4, r1, #0
	adds r0, r7, #0
	adds r0, #0xd0
	lsls r1, r4, #2
	adds r2, r0, r1
	ldr r0, [r0]
	ldr r1, [r2]
	cmp r0, r1
	ble _080844DE
	movs r6, #0xa2
	lsls r6, r6, #1
	adds r0, r7, r6
	ldr r0, [r0]
	adds r0, r1, r0
	str r0, [r2]
	b _080844E8
_080844DE:
	ldr r0, _08084500 @ =0x00000239
	bl m4aSongNumStart
	movs r0, #0x6e
	strh r0, [r7, #8]
_080844E8:
	subs r0, r4, #1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0xe4
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	b _0808456C
	.align 2, 0
_08084500: .4byte 0x00000239
_08084504:
	adds r0, r7, #0
	adds r0, #0xe2
	ldrb r0, [r0]
	movs r1, #2
	cmp r0, #0
	beq _08084512
	movs r1, #1
_08084512:
	adds r4, r1, #0
	adds r0, r7, #0
	adds r0, #0xd0
	lsls r1, r4, #2
	adds r2, r0, r1
	ldr r0, [r0]
	ldr r1, [r2]
	cmp r0, r1
	ble _08084532
	movs r3, #0xa2
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r0, [r0]
	adds r0, r1, r0
	str r0, [r2]
	b _0808453A
_08084532:
	movs r0, #0x3c
	strh r0, [r7, #4]
	movs r0, #0xc8
	strh r0, [r7, #8]
_0808453A:
	subs r0, r4, #1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0xe4
	adds r1, r1, r0
	ldr r0, [r1]
	movs r4, #0xc0
	lsls r4, r4, #1
	adds r0, r0, r4
	str r0, [r1]
	b _0808456C
_08084550:
	ldrh r0, [r7, #4]
	subs r0, #1
	strh r0, [r7, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0808456C
	ldr r0, _08084578 @ =0x00000505
	movs r2, #0x87
	lsls r2, r2, #2
	movs r1, #0
	movs r3, #1
	bl sub_8078DB0
	strh r4, [r7, #8]
_0808456C:
	adds r0, r7, #0
	movs r1, #4
	bl sub_8082E2C
	b _08084908
	.align 2, 0
_08084578: .4byte 0x00000505
_0808457C:
	ldr r2, _080845F8 @ =gDispCnt
	ldrh r0, [r2]
	movs r6, #0x84
	lsls r6, r6, #6
	adds r1, r6, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080845FC @ =gWinRegs
	movs r3, #0
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	movs r0, #0x3f
	strh r0, [r1, #8]
	movs r0, #0x18
	strh r0, [r1, #0xa]
	ldr r1, _08084600 @ =gBldRegs
	ldr r0, _08084604 @ =0x00003841
	strh r0, [r1]
	ldr r0, _08084608 @ =0x00000C0C
	strh r0, [r1, #2]
	movs r0, #0xc
	strh r0, [r1, #4]
	movs r0, #1
	strb r0, [r7, #0xf]
	ldr r0, _0808460C @ =0x00000814
	adds r1, r7, r0
	ldr r2, _08084610 @ =gUnknown_080D5D0C
	ldrh r0, [r2]
	strh r0, [r1, #0xc]
	ldrh r0, [r2, #2]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	adds r0, r7, #0
	adds r0, #0xcc
	strh r3, [r0]
	ldr r0, _08084614 @ =0x0000023E
	bl m4aSongNumStart
	movs r0, #0xa5
	lsls r0, r0, #1
	strh r0, [r7, #8]
_080845D4:
	adds r1, r7, #0
	adds r1, #0xcc
	ldrh r0, [r1]
	adds r0, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r3, r1, #0
	cmp r0, #0xff
	bls _0808463A
	adds r0, r7, #0
	adds r0, #0xe2
	ldrb r0, [r0]
	cmp r0, #0
	bne _08084618
	movs r0, #5
	adds r1, #0x21
	b _0808461E
	.align 2, 0
_080845F8: .4byte gDispCnt
_080845FC: .4byte gWinRegs
_08084600: .4byte gBldRegs
_08084604: .4byte 0x00003841
_08084608: .4byte 0x00000C0C
_0808460C: .4byte 0x00000814
_08084610: .4byte gUnknown_080D5D0C
_08084614: .4byte 0x0000023E
_08084618:
	movs r0, #6
	adds r1, r7, #0
	adds r1, #0xed
_0808461E:
	strb r0, [r1]
	movs r0, #0xb4
	strh r0, [r7, #4]
	ldr r2, _080846BC @ =0x00000814
	adds r1, r7, r2
	ldr r2, _080846C0 @ =gUnknown_080D5D0C
	ldrh r0, [r2, #4]
	strh r0, [r1, #0xc]
	ldrh r0, [r2, #6]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	adds r0, #0x55
	strh r0, [r7, #8]
_0808463A:
	adds r0, r7, #0
	adds r0, #0x9c
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r2, _080846C4 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r0, r7, #0
	adds r0, #0xa0
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r1, _080846C8 @ =gSineTable
	ldrh r0, [r3]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	cmp r0, #0
	bge _0808467A
	ldr r4, _080846CC @ =0x00003FFF
	adds r0, r0, r4
_0808467A:
	mov r6, r8
	lsls r4, r6, #0x10
	asrs r1, r4, #0x10
	mov r8, r1
	ldr r2, _080846D0 @ =0xFFA80000
	adds r4, r4, r2
	asrs r4, r4, #0x10
	mov r3, sb
	lsls r5, r3, #0x10
	asrs r5, r5, #0x10
	asrs r6, r0, #0xe
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_8085618
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_8087188
	adds r0, r7, #0
	movs r1, #4
	bl sub_8082E2C
	ldr r1, _080846D4 @ =gBgScrollRegs
	movs r4, #0xac
	lsls r4, r4, #1
	adds r0, r4, #0
	mov r6, r8
	b _08084766
	.align 2, 0
_080846BC: .4byte 0x00000814
_080846C0: .4byte gUnknown_080D5D0C
_080846C4: .4byte gCamera
_080846C8: .4byte gSineTable
_080846CC: .4byte 0x00003FFF
_080846D0: .4byte 0xFFA80000
_080846D4: .4byte gBgScrollRegs
_080846D8:
	adds r0, r7, #0
	adds r0, #0xee
	ldrb r0, [r0]
	cmp r0, #0
	beq _08084718
	movs r0, #4
	adds r1, r7, #0
	adds r1, #0xed
	strb r0, [r1]
	movs r0, #0xaf
	lsls r0, r0, #1
	b _08084716
_080846F0:
	adds r0, r7, #0
	adds r0, #0xee
	ldrb r0, [r0]
	cmp r0, #0
	beq _08084718
	adds r1, r7, #0
	adds r1, #0xed
	movs r0, #0
	strb r0, [r1]
	ldr r3, _08084774 @ =0x00000814
	adds r1, r7, r3
	ldr r2, _08084778 @ =gUnknown_080D5D0C
	ldrh r0, [r2]
	strh r0, [r1, #0xc]
	ldrh r0, [r2, #2]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	adds r0, #0x69
_08084716:
	strh r0, [r7, #8]
_08084718:
	adds r0, r7, #0
	adds r0, #0x9c
	ldr r4, [r0]
	asrs r4, r4, #8
	ldr r1, _0808477C @ =gCamera
	ldr r0, [r1]
	subs r4, r4, r0
	adds r0, r7, #0
	adds r0, #0xa0
	ldr r5, [r0]
	asrs r5, r5, #8
	ldr r0, [r1, #4]
	subs r5, r5, r0
	lsls r4, r4, #0x10
	asrs r6, r4, #0x10
	ldr r0, _08084780 @ =0xFFA80000
	adds r4, r4, r0
	asrs r4, r4, #0x10
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x18
	bl sub_8085618
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #0x18
	bl sub_8087188
	adds r0, r7, #0
	movs r1, #4
	bl sub_8082E2C
	ldr r1, _08084784 @ =gBgScrollRegs
	movs r2, #0xac
	lsls r2, r2, #1
	adds r0, r2, #0
_08084766:
	subs r0, r0, r6
	strh r0, [r1]
	movs r0, #0x18
	subs r0, r0, r5
	strh r0, [r1, #2]
	b _08084908
	.align 2, 0
_08084774: .4byte 0x00000814
_08084778: .4byte gUnknown_080D5D0C
_0808477C: .4byte gCamera
_08084780: .4byte 0xFFA80000
_08084784: .4byte gBgScrollRegs
_08084788:
	adds r4, r7, #0
	adds r4, #0xcc
	ldrh r0, [r4]
	subs r0, #4
	strh r0, [r4]
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _080847D4
	ldr r2, _0808486C @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08084870 @ =0x0000DEFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08084874 @ =gWinRegs
	strh r3, [r0, #8]
	strh r3, [r0, #0xa]
	ldr r0, _08084878 @ =gBldRegs
	strh r3, [r0]
	strh r3, [r0, #2]
	strh r3, [r0, #4]
	ldr r2, _0808487C @ =gFlags
	ldr r0, [r2]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	ldr r3, _08084880 @ =0x00000814
	adds r1, r7, r3
	ldr r2, _08084884 @ =gUnknown_080D5D0C
	ldrh r0, [r2, #8]
	strh r0, [r1, #0xc]
	ldrh r0, [r2, #0xa]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	adds r0, #0xf5
	strh r0, [r7, #8]
_080847D4:
	ldrh r0, [r4]
	cmp r0, #0
	beq _08084842
	adds r0, r7, #0
	adds r0, #0x9c
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r2, _08084888 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r0, r7, #0
	adds r0, #0xa0
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r1, _0808488C @ =gSineTable
	ldrh r0, [r4]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r4, #0
	ldrsh r1, [r0, r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	cmp r0, #0
	bge _0808481A
	ldr r6, _08084890 @ =0x00003FFF
	adds r0, r0, r6
_0808481A:
	mov r1, r8
	lsls r4, r1, #0x10
	ldr r2, _08084894 @ =0xFFA80000
	adds r4, r4, r2
	asrs r4, r4, #0x10
	mov r3, sb
	lsls r5, r3, #0x10
	asrs r5, r5, #0x10
	asrs r6, r0, #0xe
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_8085618
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_8087188
_08084842:
	adds r0, r7, #0
	movs r1, #4
	bl sub_8082E2C
	ldr r2, _08084898 @ =gBgScrollRegs
	movs r4, #0xac
	lsls r4, r4, #1
	adds r1, r4, #0
	mov r6, r8
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r2]
	movs r1, #0x18
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r2, #2]
	b _08084908
	.align 2, 0
_0808486C: .4byte gDispCnt
_08084870: .4byte 0x0000DEFF
_08084874: .4byte gWinRegs
_08084878: .4byte gBldRegs
_0808487C: .4byte gFlags
_08084880: .4byte 0x00000814
_08084884: .4byte gUnknown_080D5D0C
_08084888: .4byte gCamera
_0808488C: .4byte gSineTable
_08084890: .4byte 0x00003FFF
_08084894: .4byte 0xFFA80000
_08084898: .4byte gBgScrollRegs
_0808489C:
	adds r3, r7, #0
	adds r3, #0xd4
	ldr r2, [r3]
	cmp r2, #0
	beq _080848C4
	movs r4, #0xa2
	lsls r4, r4, #1
	adds r1, r7, r4
	ldr r0, [r1]
	subs r0, r2, r0
	str r0, [r3]
	adds r2, r7, #0
	adds r2, #0xd8
	ldr r0, [r2]
	ldr r1, [r1]
	subs r0, r0, r1
	str r0, [r2]
	adds r2, #0xc
	adds r3, #0x14
	b _080848F2
_080848C4:
	strb r2, [r7, #0xf]
	strb r2, [r7, #1]
	movs r1, #0
	adds r2, r7, #0
	adds r2, #0xe4
	adds r3, r7, #0
	adds r3, #0xe8
	ldr r5, _08084914 @ =0x000004FE
	movs r4, #1
_080848D6:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r6, #0xed
	lsls r6, r6, #2
	adds r0, r0, r6
	adds r0, r7, r0
	strh r5, [r0, #0xc]
	strb r4, [r0, #0x1a]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _080848D6
_080848F2:
	ldr r0, [r2]
	ldr r1, _08084918 @ =0xFFFFFE80
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
	adds r0, r7, #0
	movs r1, #4
	bl sub_8082E2C
_08084908:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08084914: .4byte 0x000004FE
_08084918: .4byte 0xFFFFFE80

	thumb_func_start sub_808491C
sub_808491C: @ 0x0808491C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r2, [r4, #8]
	cmp r2, #0x64
	beq _080849E0
	cmp r2, #0x64
	bgt _08084934
	cmp r2, #0
	beq _0808494E
	cmp r2, #0xa
	beq _08084986
	b _08084B26
_08084934:
	cmp r2, #0xc8
	bne _0808493A
	b _08084B04
_0808493A:
	cmp r2, #0xc8
	bgt _08084946
	cmp r2, #0x6e
	bne _08084944
	b _08084A6C
_08084944:
	b _08084B26
_08084946:
	cmp r2, #0xd2
	bne _0808494C
	b _08084B12
_0808494C:
	b _08084B26
_0808494E:
	adds r0, r4, #0
	adds r0, #0xb8
	movs r1, #0
	strh r2, [r0]
	adds r0, #2
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	movs r1, #0
	adds r5, r4, #0
	adds r5, #0xed
	adds r2, r4, #0
	adds r2, #0xbc
	movs r3, #0
_0808496A:
	adds r0, r2, r1
	strb r3, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #6
	bls _0808496A
	movs r0, #1
	strb r0, [r5]
	movs r0, #0
	strh r0, [r4, #4]
	movs r0, #0xa
	strh r0, [r4, #8]
	b _08084B26
_08084986:
	adds r0, r4, #0
	adds r0, #0xee
	ldrb r0, [r0]
	cmp r0, #0
	bne _08084992
	b _08084B26
_08084992:
	adds r1, r4, #0
	adds r1, #0xed
	movs r0, #0
	strb r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r1, #0
	str r1, [r0]
	movs r2, #0x82
	lsls r2, r2, #1
	adds r0, r4, r2
	str r1, [r0]
	movs r0, #0x85
	lsls r0, r0, #2
	bl m4aSongNumStart
	movs r1, #0
	movs r3, #0
	ldr r2, _080849DC @ =0x000004FE
_080849BA:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r5, #0xed
	lsls r5, r5, #2
	adds r0, r0, r5
	adds r0, r4, r0
	strh r2, [r0, #0xc]
	strb r3, [r0, #0x1a]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _080849BA
	movs r0, #0x64
	strh r0, [r4, #8]
	b _08084B26
	.align 2, 0
_080849DC: .4byte 0x000004FE
_080849E0:
	adds r2, r4, #0
	adds r2, #0xbb
	ldrb r0, [r2]
	cmp r0, #5
	bhi _08084A06
	adds r1, r4, #0
	adds r1, #0xbc
	ldrb r0, [r2]
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x17
	bls _08084A06
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
_08084A06:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	movs r1, #0x82
	lsls r1, r1, #1
	adds r5, r4, r1
	ldr r0, [r5]
	asrs r0, r0, #8
	cmp r0, #0
	bge _08084A1E
	ldr r2, _08084A58 @ =0x000003FF
	adds r0, r0, r2
_08084A1E:
	asrs r0, r0, #0xa
	lsls r0, r0, #0x18
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r4, r1
	ldr r1, _08084A5C @ =gUnknown_080D5D20
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r1, [r2]
	ldr r3, [r0]
	subs r1, r1, r3
	ldr r0, _08084A60 @ =0x0003FFFF
	ands r1, r0
	str r1, [r2]
	asrs r1, r1, #8
	adds r0, r4, #0
	adds r0, #0xb8
	strh r1, [r0]
	ldr r0, [r5]
	adds r1, r0, r3
	str r1, [r5]
	ldr r0, _08084A64 @ =0x000BFFFF
	cmp r1, r0
	ble _08084AEC
	ldr r2, _08084A68 @ =0xFFF80000
	adds r0, r1, r2
	str r0, [r5]
	movs r0, #0x6e
	b _08084AEA
	.align 2, 0
_08084A58: .4byte 0x000003FF
_08084A5C: .4byte gUnknown_080D5D20
_08084A60: .4byte 0x0003FFFF
_08084A64: .4byte 0x000BFFFF
_08084A68: .4byte 0xFFF80000
_08084A6C:
	adds r2, r4, #0
	adds r2, #0xbb
	ldrb r0, [r2]
	cmp r0, #0
	beq _08084A8E
	adds r1, r0, #0
	adds r1, r4, r1
	adds r1, #0xbb
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08084A8E
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
_08084A8E:
	movs r5, #0x80
	lsls r5, r5, #1
	adds r2, r4, r5
	ldr r1, _08084AF8 @ =gUnknown_080D5D20
	ldr r0, [r2]
	ldr r3, [r1, #8]
	subs r0, r0, r3
	ldr r1, _08084AFC @ =0x0003FFFF
	ands r0, r1
	str r0, [r2]
	asrs r0, r0, #8
	adds r2, r4, #0
	adds r2, #0xb8
	strh r0, [r2]
	movs r0, #0x82
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	subs r0, r0, r3
	str r0, [r1]
	cmp r0, #0
	bgt _08084AEC
	movs r0, #0
	strh r0, [r2]
	movs r0, #0x85
	lsls r0, r0, #2
	bl m4aSongNumStop
	movs r1, #0
	ldr r3, _08084B00 @ =0x000004FE
	movs r2, #1
_08084ACC:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r5, #0xed
	lsls r5, r5, #2
	adds r0, r0, r5
	adds r0, r4, r0
	strh r3, [r0, #0xc]
	strb r2, [r0, #0x1a]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _08084ACC
	movs r0, #0xc8
_08084AEA:
	strh r0, [r4, #8]
_08084AEC:
	adds r0, r4, #0
	movs r1, #5
	bl sub_8082E2C
	b _08084B26
	.align 2, 0
_08084AF8: .4byte gUnknown_080D5D20
_08084AFC: .4byte 0x0003FFFF
_08084B00: .4byte 0x000004FE
_08084B04:
	movs r0, #2
	adds r1, r4, #0
	adds r1, #0xed
	strb r0, [r1]
	movs r0, #0xd2
	strh r0, [r4, #8]
	b _08084B26
_08084B12:
	adds r0, r4, #0
	adds r0, #0xee
	ldrb r0, [r0]
	cmp r0, #0
	beq _08084B26
	adds r1, r4, #0
	adds r1, #0xed
	movs r0, #0
	strb r0, [r1]
	strb r0, [r4, #1]
_08084B26:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8084B2C
sub_8084B2C: @ 0x08084B2C
	push {lr}
	adds r3, r0, #0
	ldrh r0, [r3, #8]
	cmp r0, #0x64
	beq _08084B66
	cmp r0, #0x64
	bgt _08084B44
	cmp r0, #0
	beq _08084B4A
	cmp r0, #0xa
	beq _08084B52
	b _08084BDA
_08084B44:
	cmp r0, #0xc8
	beq _08084BB4
	b _08084BDA
_08084B4A:
	movs r0, #0xf0
	strh r0, [r3, #4]
	movs r0, #0xa
	b _08084BD8
_08084B52:
	ldrh r0, [r3, #4]
	subs r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08084BDA
	movs r0, #0x78
	strh r0, [r3, #4]
	movs r0, #0x64
	b _08084BD8
_08084B66:
	ldrh r1, [r3, #4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08084B7E
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrb r1, [r0]
	movs r2, #1
	eors r1, r2
	strb r1, [r0]
_08084B7E:
	ldrh r0, [r3, #4]
	subs r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08084BDA
	movs r0, #0xb4
	strh r0, [r3, #4]
	movs r0, #8
	adds r1, r3, #0
	adds r1, #0xed
	strb r0, [r1]
	subs r1, #0x49
	ldr r0, _08084BAC @ =0xFFFFFE00
	str r0, [r1]
	adds r1, #4
	ldr r0, _08084BB0 @ =0xFFFFFF00
	str r0, [r1]
	movs r0, #0x96
	adds r1, #0x47
	strb r0, [r1]
	movs r0, #0xc8
	b _08084BD8
	.align 2, 0
_08084BAC: .4byte 0xFFFFFE00
_08084BB0: .4byte 0xFFFFFF00
_08084BB4:
	ldrh r0, [r3, #4]
	subs r0, #1
	movs r1, #0
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08084BDA
	movs r2, #0x84
	lsls r2, r2, #1
	adds r0, r3, r2
	strb r1, [r0]
	adds r0, r3, #0
	adds r0, #0xed
	strb r1, [r0]
	ldr r0, _08084BE8 @ =0x00000BB8
	strh r0, [r3, #0x12]
	movs r0, #0x96
	lsls r0, r0, #1
_08084BD8:
	strh r0, [r3, #8]
_08084BDA:
	ldrb r1, [r3, #0xd]
	adds r0, r3, #0
	bl sub_8082E2C
	pop {r0}
	bx r0
	.align 2, 0
_08084BE8: .4byte 0x00000BB8

	thumb_func_start sub_8084BEC
sub_8084BEC: @ 0x08084BEC
	push {r4, lr}
	adds r3, r0, #0
	ldrh r1, [r3, #8]
	cmp r1, #0
	bne _08084C2E
	movs r0, #1
	strh r0, [r3, #4]
	movs r0, #0xfa
	lsls r0, r0, #2
	strh r0, [r3, #8]
	ldr r4, _08084C3C @ =gDispCnt
	ldrh r2, [r4]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r2
	cmp r0, #0
	beq _08084C2E
	ldr r0, _08084C40 @ =0x0000DEFF
	ands r0, r2
	strh r0, [r4]
	ldr r0, _08084C44 @ =gWinRegs
	strh r1, [r0, #8]
	strh r1, [r0, #0xa]
	ldr r0, _08084C48 @ =gBldRegs
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	ldr r2, _08084C4C @ =gFlags
	ldr r0, [r2]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
_08084C2E:
	ldrb r1, [r3, #0xd]
	adds r0, r3, #0
	bl sub_8082E2C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08084C3C: .4byte gDispCnt
_08084C40: .4byte 0x0000DEFF
_08084C44: .4byte gWinRegs
_08084C48: .4byte gBldRegs
_08084C4C: .4byte gFlags

	thumb_func_start sub_8084C50
sub_8084C50: @ 0x08084C50
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x30]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldrh r0, [r4, #8]
	cmp r0, #0x82
	beq _08084D58
	cmp r0, #0x82
	bgt _08084C84
	cmp r0, #0x64
	beq _08084CCE
	cmp r0, #0x64
	bgt _08084C7A
	cmp r0, #0
	beq _08084CB4
	cmp r0, #0xa
	beq _08084CBC
	b _08084EA6
_08084C7A:
	cmp r0, #0x6e
	beq _08084D08
	cmp r0, #0x78
	beq _08084D48
	b _08084EA6
_08084C84:
	cmp r0, #0xa0
	bne _08084C8A
	b _08084DE8
_08084C8A:
	cmp r0, #0xa0
	bgt _08084C9A
	cmp r0, #0x8c
	beq _08084D7C
	cmp r0, #0x96
	bne _08084C98
	b _08084DC8
_08084C98:
	b _08084EA6
_08084C9A:
	cmp r0, #0xd2
	bne _08084CA0
	b _08084E7A
_08084CA0:
	cmp r0, #0xd2
	bgt _08084CAC
	cmp r0, #0xc8
	bne _08084CAA
	b _08084E48
_08084CAA:
	b _08084EA6
_08084CAC:
	cmp r0, #0xdc
	bne _08084CB2
	b _08084E98
_08084CB2:
	b _08084EA6
_08084CB4:
	movs r0, #0x78
	strh r0, [r4, #4]
	movs r0, #0xa
	b _08084EA4
_08084CBC:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08084CCA
	b _08084EA6
_08084CCA:
	movs r0, #0x64
	b _08084EA4
_08084CCE:
	adds r1, r4, #0
	adds r1, #0xd0
	movs r0, #0x8c
	lsls r0, r0, #8
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0xd4
	movs r2, #0
	str r2, [r0]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0xe4
	str r2, [r0]
	adds r1, r4, #0
	adds r1, #0xe8
	movs r0, #0xd8
	lsls r0, r0, #0xa
	str r0, [r1]
	movs r0, #0x90
	lsls r0, r0, #2
	bl m4aSongNumStart
	movs r0, #0x6e
	b _08084EA4
_08084D08:
	adds r0, r4, #0
	adds r0, #0xd0
	adds r2, r4, #0
	adds r2, #0xd4
	ldr r0, [r0]
	ldr r1, [r2]
	cmp r0, r1
	ble _08084D26
	movs r3, #0xa2
	lsls r3, r3, #1
	adds r0, r4, r3
	ldr r0, [r0]
	adds r0, r1, r0
	str r0, [r2]
	b _08084D32
_08084D26:
	ldr r0, _08084D44 @ =0x0000042E
	strh r0, [r5, #0x2c]
	movs r0, #0x3c
	strh r0, [r4, #4]
	movs r0, #0x78
	strh r0, [r4, #8]
_08084D32:
	adds r1, r4, #0
	adds r1, #0xe4
	ldr r0, [r1]
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	b _08084E3A
	.align 2, 0
_08084D44: .4byte 0x0000042E
_08084D48:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08084E3A
	movs r0, #0x82
	b _08084E38
_08084D58:
	adds r0, r4, #0
	adds r0, #0xe8
	ldr r1, [r0]
	ldr r3, _08084D78 @ =0xFFFFFE00
	adds r1, r1, r3
	str r1, [r0]
	asrs r1, r1, #8
	movs r0, #0xb8
	lsls r0, r0, #2
	cmp r1, r0
	bgt _08084D9A
	movs r0, #0x87
	lsls r0, r0, #3
	strh r0, [r5, #0x2c]
	movs r0, #0x8c
	b _08084D98
	.align 2, 0
_08084D78: .4byte 0xFFFFFE00
_08084D7C:
	adds r0, r4, #0
	adds r0, #0xe4
	ldr r1, [r0]
	ldr r3, _08084DBC @ =0xFFFFF800
	adds r1, r1, r3
	str r1, [r0]
	ldr r0, _08084DC0 @ =0xFFFF9600
	cmp r1, r0
	bgt _08084D9A
	ldr r0, _08084DC4 @ =0x0000044C
	strh r0, [r5, #0x2c]
	movs r0, #0x78
	strh r0, [r4, #4]
	movs r0, #0x96
_08084D98:
	strh r0, [r4, #8]
_08084D9A:
	adds r0, r4, #0
	movs r1, #6
	bl sub_8082E2C
	movs r1, #0x9e
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, [r0]
	str r1, [r5, #0x14]
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r0, r4, r2
	ldr r0, [r0]
	str r0, [r5, #0x18]
	str r1, [r5, #0x30]
	str r0, [r5, #0x34]
	b _08084EA6
	.align 2, 0
_08084DBC: .4byte 0xFFFFF800
_08084DC0: .4byte 0xFFFF9600
_08084DC4: .4byte 0x0000044C
_08084DC8:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08084E3A
	movs r3, #0xa2
	lsls r3, r3, #1
	adds r0, r4, r3
	ldr r1, _08084DE4 @ =0xFFFFFC00
	str r1, [r0]
	movs r0, #0xa0
	b _08084E38
	.align 2, 0
_08084DE4: .4byte 0xFFFFFC00
_08084DE8:
	adds r1, r4, #0
	adds r1, #0xe4
	ldr r0, [r1]
	cmp r0, #0
	beq _08084E02
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r0, r2
	str r0, [r1]
	cmp r0, #0
	blt _08084E02
	movs r0, #0
	str r0, [r1]
_08084E02:
	adds r3, r4, #0
	adds r3, #0xe8
	ldr r2, [r3]
	asrs r1, r2, #8
	movs r0, #0xb0
	lsls r0, r0, #2
	cmp r1, r0
	beq _08084E18
	ldr r1, _08084E44 @ =0xFFFFFF00
	adds r0, r2, r1
	str r0, [r3]
_08084E18:
	adds r2, r4, #0
	adds r2, #0xd4
	movs r3, #0xa2
	lsls r3, r3, #1
	adds r0, r4, r3
	ldr r1, [r2]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r2]
	cmp r1, #0
	bgt _08084E3A
	movs r0, #0
	str r0, [r2]
	movs r0, #0x3c
	strh r0, [r4, #4]
	movs r0, #0xc8
_08084E38:
	strh r0, [r4, #8]
_08084E3A:
	adds r0, r4, #0
	movs r1, #6
	bl sub_8082E2C
	b _08084EA6
	.align 2, 0
_08084E44: .4byte 0xFFFFFF00
_08084E48:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	bne _08084EA6
	movs r0, #0x50
	rsbs r0, r0, #0
	movs r1, #0x78
	bl sa2__sub_8004418
	adds r1, r4, #0
	adds r1, #0xe0
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0xfc
	str r5, [r0]
	subs r0, #0x58
	str r5, [r0]
	movs r0, #3
	adds r1, #0xd
	strb r0, [r1]
	movs r0, #0xd2
	b _08084EA4
_08084E7A:
	adds r0, r4, #0
	adds r0, #0xa4
	ldr r1, [r0]
	adds r1, #0x80
	str r1, [r0]
	adds r2, r4, #0
	adds r2, #0xfc
	asrs r1, r1, #8
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	cmp r0, #0xc7
	ble _08084EA6
	movs r0, #0xdc
	b _08084EA4
_08084E98:
	ldr r0, _08084EAC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08084EB0 @ =sub_8086FE4
	str r0, [r1, #8]
	movs r0, #0xfa
	lsls r0, r0, #2
_08084EA4:
	strh r0, [r4, #8]
_08084EA6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08084EAC: .4byte gCurTask
_08084EB0: .4byte sub_8086FE4

	thumb_func_start sub_8084EB4
sub_8084EB4: @ 0x08084EB4
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	ldrh r1, [r5, #0x12]
	ldr r6, _08084EDC @ =0x000003F2
	cmp r1, r6
	bne _08084EC4
	b _08085058
_08084EC4:
	cmp r1, r6
	bgt _08084EF2
	cmp r1, #0x64
	beq _08084F82
	cmp r1, #0x64
	bgt _08084EE0
	cmp r1, #0
	beq _08084F34
	cmp r1, #0xa
	beq _08084F4E
	b _080851EE
	.align 2, 0
_08084EDC: .4byte 0x000003F2
_08084EE0:
	cmp r1, #0x6e
	bne _08084EE6
	b _080851EE
_08084EE6:
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp r1, r0
	bne _08084EF0
	b _08085014
_08084EF0:
	b _080851EE
_08084EF2:
	ldr r0, _08084F14 @ =0x00000BB8
	cmp r1, r0
	bne _08084EFA
	b _08085164
_08084EFA:
	cmp r1, r0
	bgt _08084F18
	movs r0, #0xff
	lsls r0, r0, #2
	cmp r1, r0
	bne _08084F08
	b _0808509E
_08084F08:
	movs r0, #0xfa
	lsls r0, r0, #3
	cmp r1, r0
	bne _08084F12
	b _080850BC
_08084F12:
	b _080851EE
	.align 2, 0
_08084F14: .4byte 0x00000BB8
_08084F18:
	ldr r0, _08084F2C @ =0x00000BC2
	cmp r1, r0
	bne _08084F20
	b _080851B0
_08084F20:
	ldr r0, _08084F30 @ =0x00001388
	cmp r1, r0
	bne _08084F28
	b _080851E6
_08084F28:
	b _080851EE
	.align 2, 0
_08084F2C: .4byte 0x00000BC2
_08084F30: .4byte 0x00001388
_08084F34:
	adds r0, r5, #0
	movs r1, #0
	bl sub_80867FC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08084F44
	b _080851EE
_08084F44:
	adds r0, r5, #0
	movs r1, #0
	bl sub_80854B8
	b _080851EE
_08084F4E:
	ldrh r0, [r5, #0x10]
	subs r0, #1
	strh r0, [r5, #0x10]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	beq _08084F76
	adds r0, r5, #0
	movs r1, #1
	bl sub_80867FC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08084F6C
	b _080851EE
_08084F6C:
	adds r0, r5, #0
	movs r1, #1
	bl sub_80854B8
	b _080851EE
_08084F76:
	movs r0, #0x64
	adds r1, r5, #0
	adds r1, #0xef
	strb r0, [r1]
	strh r2, [r5, #0x12]
	b _080851EE
_08084F82:
	ldrh r0, [r5, #0x14]
	subs r0, #1
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _08084F92
	b _080851EE
_08084F92:
	ldrb r0, [r5]
	cmp r0, #0
	beq _08084FB0
	ldrh r0, [r5, #0x10]
	subs r0, #0x78
	strh r0, [r5, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _08084FAA
	strh r1, [r5, #0x10]
	strh r1, [r5, #0x12]
	b _08085002
_08084FAA:
	movs r0, #0xa
	strh r0, [r5, #0x12]
	b _08085002
_08084FB0:
	ldr r1, _08084FC4 @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _08084FD0
	ldrb r0, [r1, #6]
	cmp r0, #0
	beq _08084FC8
	movs r0, #0x6e
	b _08084FDE
	.align 2, 0
_08084FC4: .4byte gStageData
_08084FC8:
	movs r0, #1
	movs r1, #0
	bl sub_8027674
_08084FD0:
	adds r0, r5, #0
	bl sub_8085458
	movs r0, #0x78
	strh r0, [r5, #0x10]
	movs r0, #0xfa
	lsls r0, r0, #2
_08084FDE:
	strh r0, [r5, #0x12]
	ldr r0, [r5, #0x28]
	adds r0, #0x48
	movs r1, #1
	strh r1, [r0]
	ldr r0, [r5, #0x2c]
	adds r0, #0x48
	strh r1, [r0]
	ldr r1, [r5, #0x28]
	ldr r0, [r1, #4]
	movs r2, #0x80
	lsls r2, r2, #0x14
	orrs r0, r2
	str r0, [r1, #4]
	ldr r1, [r5, #0x2c]
	ldr r0, [r1, #4]
	orrs r0, r2
	str r0, [r1, #4]
_08085002:
	ldrh r0, [r5, #0x12]
	cmp r0, #0xa
	bne _0808500A
	b _080851EE
_0808500A:
	movs r1, #0x64
	adds r0, r5, #0
	adds r0, #0xef
	strb r1, [r0]
	b _080851EE
_08085014:
	ldrh r0, [r5, #0x10]
	subs r0, #1
	strh r0, [r5, #0x10]
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	beq _08085024
	b _080851EE
_08085024:
	ldr r0, [r5, #0x1c]
	bl VramFree
	ldr r0, [r5, #0x20]
	bl VramFree
	str r4, [r5, #0x1c]
	str r4, [r5, #0x20]
	movs r0, #0x74
	bl VramMalloc
	str r0, [r5, #0x24]
	adds r0, r5, #0
	movs r1, #1
	bl sub_80851FC
	ldr r0, _08085054 @ =0x00000221
	bl m4aSongNumStart
	movs r0, #0xf
	strh r0, [r5, #0x10]
	strh r6, [r5, #0x12]
	b _080851EE
	.align 2, 0
_08085054: .4byte 0x00000221
_08085058:
	ldrh r0, [r5, #0x10]
	subs r0, #1
	strh r0, [r5, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08085066
	b _080851EE
_08085066:
	ldrb r1, [r5, #0xe]
	adds r1, #0xa
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0
	bl sub_80851FC
	ldr r0, _08085090 @ =0x00000221
	bl m4aSongNumStart
	ldrb r0, [r5, #0xe]
	adds r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bhi _08085094
	movs r0, #0xf
	strh r0, [r5, #0x10]
	b _080851EE
	.align 2, 0
_08085090: .4byte 0x00000221
_08085094:
	movs r0, #0x78
	strh r0, [r5, #0x10]
	movs r0, #0xff
	lsls r0, r0, #2
	b _080851EC
_0808509E:
	ldrh r0, [r5, #0x10]
	subs r0, #1
	strh r0, [r5, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080850AC
	b _080851EE
_080850AC:
	ldr r0, _080850B8 @ =0x00000221
	bl m4aSongNumStart
	movs r0, #0xfa
	lsls r0, r0, #3
	b _080851EC
	.align 2, 0
_080850B8: .4byte 0x00000221
_080850BC:
	ldr r0, _08085148 @ =gStageData
	ldr r0, [r0, #0x1c]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08085132
	ldr r3, _0808514C @ =gPseudoRandom
	ldr r0, [r3]
	ldr r2, _08085150 @ =0x00196225
	muls r0, r2, r0
	ldr r1, _08085154 @ =0x3C6EF35F
	adds r0, r0, r1
	ldr r4, _08085158 @ =0x000003FF
	ands r4, r0
	muls r0, r2, r0
	adds r0, r0, r1
	str r0, [r3]
	movs r1, #0x30
	bl __umodsi3
	ldr r3, _0808515C @ =gSineTable
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r4, r2
	lsls r1, r1, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r1, [r1, r2]
	adds r2, r1, #0
	muls r2, r0, r2
	lsrs r2, r2, #6
	lsls r1, r4, #1
	adds r1, r1, r3
	movs r3, #0
	ldrsh r1, [r1, r3]
	adds r3, r1, #0
	muls r3, r0, r3
	lsrs r3, r3, #6
	adds r0, r5, #0
	adds r0, #0x9c
	ldr r0, [r0]
	adds r0, r0, r2
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0xa0
	ldr r1, [r1]
	adds r1, r1, r3
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	movs r2, #0xc0
	lsls r2, r2, #2
	movs r3, #0x1e
	str r3, [sp]
	ldr r3, [r5, #0x24]
	str r3, [sp, #4]
	adds r3, r4, #0
	bl sub_8086D64
_08085132:
	ldrh r0, [r5, #0x10]
	adds r0, #1
	strh r0, [r5, #0x10]
	movs r1, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _080851EE
	ldr r0, _08085160 @ =0x00000221
	bl m4aSongNumStart
	b _080851EE
	.align 2, 0
_08085148: .4byte gStageData
_0808514C: .4byte gPseudoRandom
_08085150: .4byte 0x00196225
_08085154: .4byte 0x3C6EF35F
_08085158: .4byte 0x000003FF
_0808515C: .4byte gSineTable
_08085160: .4byte 0x00000221
_08085164:
	ldr r1, _0808519C @ =gBldRegs
	movs r2, #0
	ldr r0, _080851A0 @ =0x00003FBF
	strh r0, [r1]
	movs r0, #8
	strh r0, [r1, #2]
	strh r2, [r1, #4]
	strh r0, [r5, #0x10]
	ldr r0, _080851A4 @ =0x00000BC2
	strh r0, [r5, #0x12]
	ldr r1, _080851A8 @ =gPlayers
	ldr r0, [r1, #4]
	movs r2, #0x80
	lsls r2, r2, #0x14
	orrs r0, r2
	str r0, [r1, #4]
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r0, [r1]
	orrs r0, r2
	str r0, [r1]
	ldr r1, _080851AC @ =gMusicManagerState
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r1, #6]
	b _080851EE
	.align 2, 0
_0808519C: .4byte gBldRegs
_080851A0: .4byte 0x00003FBF
_080851A4: .4byte 0x00000BC2
_080851A8: .4byte gPlayers
_080851AC: .4byte gMusicManagerState
_080851B0:
	ldrh r0, [r5, #0x10]
	subs r0, #1
	strh r0, [r5, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080851EE
	ldr r1, _080851D8 @ =gBldRegs
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x10
	bne _080851E0
	ldr r0, _080851DC @ =0x00001388
	strh r0, [r5, #0x12]
	movs r0, #0x78
	strh r0, [r5, #0x10]
	b _080851EE
	.align 2, 0
_080851D8: .4byte gBldRegs
_080851DC: .4byte 0x00001388
_080851E0:
	movs r0, #8
	strh r0, [r5, #0x10]
	b _080851EE
_080851E6:
	bl sub_805602C
	ldr r0, _080851F8 @ =0x00001392
_080851EC:
	strh r0, [r5, #0x12]
_080851EE:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080851F8: .4byte 0x00001392

	thumb_func_start sub_80851FC
sub_80851FC: @ 0x080851FC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0
	beq _0808522A
	cmp r1, #1
	beq _0808527E
	movs r0, #0
	mov sb, r0
	movs r2, #0x80
	str r2, [sp, #8]
	subs r1, #0xa
	str r1, [sp, #0x10]
	adds r3, r6, #0
	adds r3, #0x9c
	str r3, [sp, #0x14]
	b _080852D4
_0808522A:
	ldrb r0, [r6, #0xc]
	strb r0, [r6, #0xd]
	strb r1, [r6, #0xe]
	movs r4, #0
	mov sb, r4
	movs r3, #1
	movs r4, #0xbe
	lsls r4, r4, #1
_0808523A:
	mov r5, sb
	lsls r0, r5, #1
	add r0, sb
	lsls r0, r0, #3
	adds r0, r6, r0
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r0, r1
	strh r3, [r0]
	movs r7, #0
	lsls r5, r5, #4
	mov r1, sb
	adds r1, #1
	mov r2, sb
	subs r0, r5, r2
	lsls r2, r0, #3
_0808525A:
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r0, r0, #2
	adds r0, r0, r2
	adds r0, r6, r0
	adds r0, r0, r4
	strh r3, [r0]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #5
	bls _0808525A
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #3
	bls _0808523A
	b _080853C4
_0808527E:
	movs r3, #0
	mov sb, r3
_08085282:
	mov r5, sb
	lsls r4, r5, #1
	add r4, sb
	lsls r4, r4, #3
	movs r1, #0x86
	lsls r1, r1, #1
	adds r0, r6, r1
	adds r0, r0, r4
	ldr r0, [r0]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	movs r2, #0x88
	lsls r2, r2, #1
	adds r1, r6, r2
	adds r1, r1, r4
	ldr r1, [r1]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	movs r2, #0x1e
	str r2, [sp]
	ldr r2, [r6, #0x24]
	str r2, [sp, #4]
	movs r2, #0x80
	lsls r2, r2, #2
	movs r3, #0
	bl sub_8086D64
	adds r4, r6, r4
	movs r3, #0x8e
	lsls r3, r3, #1
	adds r4, r4, r3
	movs r0, #0
	strh r0, [r4]
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #3
	bls _08085282
	b _080853C4
_080852D4:
	ldr r4, [sp, #0x10]
	lsls r0, r4, #0x18
	lsrs r7, r0, #0x18
	ldr r2, _080853D4 @ =gSineTable
	ldr r5, [sp, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r5, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	cmp r0, #0
	bge _080852F8
	adds r0, #0x3f
_080852F8:
	asrs r0, r0, #6
	str r0, [sp, #0xc]
	ldr r4, [sp, #8]
	lsls r0, r4, #1
	adds r0, r0, r2
	movs r5, #0
	ldrsh r1, [r0, r5]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	cmp r0, #0
	bge _08085312
	adds r0, #0x3f
_08085312:
	asrs r0, r0, #6
	mov sl, r0
	lsls r3, r7, #2
	adds r1, r3, r7
	lsls r1, r1, #2
	mov r0, sb
	lsls r2, r0, #4
	subs r0, r2, r0
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r4, #0xb6
	lsls r4, r4, #1
	adds r0, r6, r4
	adds r0, r0, r1
	mov ip, r0
	ldr r4, [r0]
	ldr r5, [sp, #0x14]
	ldr r0, [r5]
	mov r8, r3
	adds r5, r2, #0
	cmp r4, r0
	bne _08085360
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r6, r2
	adds r3, r0, r1
	adds r2, r6, #0
	adds r2, #0xa0
	ldr r1, [r3]
	ldr r0, [r2]
	cmp r1, r0
	bne _08085360
	ldr r1, [sp, #0xc]
	adds r0, r4, r1
	mov r4, ip
	str r0, [r4]
	ldr r0, [r2]
	add r0, sl
	str r0, [r3]
_08085360:
	mov r0, r8
	adds r4, r0, r7
	lsls r4, r4, #2
	mov r1, sb
	subs r0, r5, r1
	lsls r0, r0, #3
	adds r4, r4, r0
	movs r2, #0xb6
	lsls r2, r2, #1
	adds r0, r6, r2
	adds r0, r0, r4
	ldr r0, [r0]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	movs r3, #0xb8
	lsls r3, r3, #1
	adds r1, r6, r3
	adds r1, r1, r4
	ldr r1, [r1]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	adds r2, #0x94
	movs r3, #0x1e
	str r3, [sp]
	ldr r3, [r6, #0x24]
	str r3, [sp, #4]
	movs r3, #0
	bl sub_8086D64
	adds r4, r6, r4
	movs r5, #0xbe
	lsls r5, r5, #1
	adds r4, r4, r5
	movs r0, #0
	strh r0, [r4]
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	ldr r1, [sp, #8]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	mov r3, sb
	cmp r3, #3
	bls _080852D4
_080853C4:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080853D4: .4byte gSineTable

	thumb_func_start sub_80853D8
sub_80853D8: @ 0x080853D8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldr r0, [r7, #0x2c]
	mov r8, r0
	movs r0, #0x40
	bl VramMalloc
	str r0, [r7, #0x6c]
	adds r1, r7, #0
	adds r1, #0x72
	movs r6, #0
	movs r5, #0
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r1]
	adds r4, r7, #0
	adds r4, #0x74
	movs r0, #0x10
	bl VramMalloc
	str r0, [r7, #0x74]
	movs r0, #0x9f
	lsls r0, r0, #3
	strh r0, [r4, #0xc]
	strb r6, [r4, #0x1a]
	subs r0, #0xb8
	strh r0, [r4, #0x14]
	strh r5, [r4, #0xe]
	strh r5, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r6, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	movs r0, #0xa0
	lsls r0, r0, #5
	str r0, [r4, #8]
	mov r1, r8
	ldr r0, [r1, #0x10]
	asrs r0, r0, #8
	ldr r2, _08085454 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	mov r1, r8
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08085454: .4byte gCamera

	thumb_func_start sub_8085458
sub_8085458: @ 0x08085458
	push {lr}
	movs r2, #0
	movs r1, #5
	strb r1, [r0, #1]
	movs r1, #1
	strh r1, [r0, #4]
	strh r2, [r0, #8]
	ldr r3, _080854A0 @ =gDispCnt
	ldrh r1, [r3]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	beq _08085494
	ldr r0, _080854A4 @ =0x0000DEFF
	ands r0, r1
	strh r0, [r3]
	ldr r0, _080854A8 @ =gWinRegs
	strh r2, [r0, #8]
	strh r2, [r0, #0xa]
	ldr r0, _080854AC @ =gBldRegs
	strh r2, [r0]
	strh r2, [r0, #2]
	strh r2, [r0, #4]
	ldr r2, _080854B0 @ =gFlags
	ldr r0, [r2]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
_08085494:
	ldr r1, _080854B4 @ =gStageData
	movs r0, #6
	strb r0, [r1, #4]
	pop {r0}
	bx r0
	.align 2, 0
_080854A0: .4byte gDispCnt
_080854A4: .4byte 0x0000DEFF
_080854A8: .4byte gWinRegs
_080854AC: .4byte gBldRegs
_080854B0: .4byte gFlags
_080854B4: .4byte gStageData

	thumb_func_start sub_80854B8
sub_80854B8: @ 0x080854B8
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	cmp r1, #0
	bne _080854FE
	adds r0, #0x5a
	ldrh r0, [r0]
	strh r0, [r4, #0x10]
	movs r0, #0x32
	adds r1, r4, #0
	adds r1, #0xef
	strb r0, [r1]
	movs r0, #0xa
	strh r0, [r4, #0x12]
	movs r0, #0x91
	lsls r0, r0, #2
	bl m4aSongNumStart
	ldr r1, _080854F0 @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _08085580
	ldrb r0, [r1, #6]
	cmp r0, #0
	bne _080854F4
	movs r0, #5
	b _080854F6
	.align 2, 0
_080854F0: .4byte gStageData
_080854F4:
	movs r0, #6
_080854F6:
	movs r1, #0
	bl sub_8027674
	b _08085580
_080854FE:
	movs r0, #0x78
	strh r0, [r4, #0x14]
	ldr r0, _08085548 @ =0x00000502
	movs r1, #0
	movs r2, #0x78
	movs r3, #0
	bl sub_8078DB0
	movs r0, #0x64
	strh r0, [r4, #0x12]
	movs r0, #0xeb
	bl m4aSongNumStart
	ldrb r0, [r4]
	cmp r0, #0
	beq _08085528
	subs r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08085530
_08085528:
	adds r0, r4, #0
	movs r1, #0
	bl sub_80851FC
_08085530:
	ldr r0, _0808554C @ =gStageData
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _08085550
	ldrb r0, [r4]
	cmp r0, #6
	bne _0808555C
	movs r0, #0x39
	bl sub_80299D4
	b _0808555C
	.align 2, 0
_08085548: .4byte 0x00000502
_0808554C: .4byte gStageData
_08085550:
	ldrb r0, [r4]
	cmp r0, #5
	bne _0808555C
	movs r0, #0x39
	bl sub_80299D4
_0808555C:
	ldr r1, _08085574 @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _08085580
	ldrb r0, [r1, #6]
	cmp r0, #0
	bne _08085578
	ldrb r1, [r4]
	movs r0, #3
	bl sub_8027674
	b _08085580
	.align 2, 0
_08085574: .4byte gStageData
_08085578:
	ldrb r1, [r4]
	movs r0, #4
	bl sub_8027674
_08085580:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08085588
sub_08085588: @ 0x08085588
	push {r4, lr}
	ldr r1, _080855B8 @ =gStageData
	adds r1, #0x88
	ldr r1, [r1]
	ldrh r2, [r1, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r2, r1
	ldrb r2, [r0, #2]
	movs r1, #0x7f
	ands r1, r2
	ldrb r2, [r0, #3]
	ldrb r0, [r0, #4]
	lsls r0, r0, #8
	orrs r2, r0
	subs r0, r1, #1
	cmp r0, #5
	bhi _08085610
	lsls r0, r0, #2
	ldr r1, _080855BC @ =_080855C0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080855B8: .4byte gStageData
_080855BC: .4byte _080855C0
_080855C0: @ jump table
	.4byte _080855D8 @ case 0
	.4byte _08085610 @ case 1
	.4byte _080855EE @ case 2
	.4byte _080855EE @ case 3
	.4byte _08085602 @ case 4
	.4byte _08085602 @ case 5
_080855D8:
	movs r0, #0
	strb r0, [r4]
	adds r0, r4, #0
	bl sub_8085458
	movs r0, #0x78
	strh r0, [r4, #0x10]
	movs r0, #0xfa
	lsls r0, r0, #2
	strh r0, [r4, #0x12]
	b _08085610
_080855EE:
	ldrb r1, [r4]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	beq _08085610
	adds r0, r4, #0
	movs r1, #1
	bl sub_80854B8
	b _08085610
_08085602:
	ldrh r0, [r4, #0x12]
	cmp r0, #0
	bne _08085610
	adds r0, r4, #0
	movs r1, #0
	bl sub_80854B8
_08085610:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8085618
sub_8085618: @ 0x08085618
	push {r4, r5, r6, lr}
	sub sp, #8
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	movs r1, #0
	ldr r0, _08085648 @ =gBgOffsetsHBlankPrimary
	ldr r0, [r0]
	ldr r2, _0808564C @ =gBgOffsetsBuffer
	cmp r0, r2
	bne _08085658
	add r0, sp, #4
	strh r1, [r0]
	ldr r0, _08085650 @ =0x040000D4
	add r1, sp, #4
	str r1, [r0]
	str r2, [r0, #4]
	ldr r1, _08085654 @ =0x81000140
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	b _0808566E
	.align 2, 0
_08085648: .4byte gBgOffsetsHBlankPrimary
_0808564C: .4byte gBgOffsetsBuffer
_08085650: .4byte 0x040000D4
_08085654: .4byte 0x81000140
_08085658:
	add r0, sp, #4
	strh r1, [r0]
	ldr r1, _080856B0 @ =0x040000D4
	str r0, [r1]
	movs r6, #0xa0
	lsls r6, r6, #2
	adds r0, r2, r6
	str r0, [r1, #4]
	ldr r0, _080856B4 @ =0x81000140
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0808566E:
	cmp r4, #0
	bne _08085674
	movs r4, #1
_08085674:
	lsls r0, r3, #0x10
	asrs r3, r0, #0x10
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	subs r0, r3, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _08085688
	movs r2, #0
_08085688:
	adds r0, r3, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xa0
	ble _08085696
	movs r1, #0xa0
_08085696:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9f
	bgt _080856A4
	lsls r0, r1, #0x10
	cmp r0, #0
	bgt _080856BC
_080856A4:
	ldr r0, _080856B8 @ =gFlags
	ldr r1, [r0]
	movs r2, #4
	orrs r1, r2
	str r1, [r0]
	b _080856D2
	.align 2, 0
_080856B0: .4byte 0x040000D4
_080856B4: .4byte 0x81000140
_080856B8: .4byte gFlags
_080856BC:
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r3, r5, #0x18
	lsrs r3, r3, #0x18
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	bl sa2__sub_8007A08
_080856D2:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80856DC
sub_80856DC: @ 0x080856DC
	push {r4, r5, r6, lr}
	sub sp, #0xc
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r1, #0
	ldr r0, _0808570C @ =gBgOffsetsHBlankPrimary
	ldr r0, [r0]
	ldr r4, _08085710 @ =gBgOffsetsBuffer
	cmp r0, r4
	bne _0808571C
	add r0, sp, #8
	strh r1, [r0]
	ldr r0, _08085714 @ =0x040000D4
	add r1, sp, #8
	str r1, [r0]
	str r4, [r0, #4]
	ldr r1, _08085718 @ =0x81000140
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	b _08085732
	.align 2, 0
_0808570C: .4byte gBgOffsetsHBlankPrimary
_08085710: .4byte gBgOffsetsBuffer
_08085714: .4byte 0x040000D4
_08085718: .4byte 0x81000140
_0808571C:
	add r0, sp, #8
	strh r1, [r0]
	ldr r1, _0808577C @ =0x040000D4
	str r0, [r1]
	movs r6, #0xa0
	lsls r6, r6, #2
	adds r0, r4, r6
	str r0, [r1, #4]
	ldr r0, _08085780 @ =0x81000140
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08085732:
	cmp r2, #0
	bne _08085738
	movs r2, #1
_08085738:
	lsls r0, r5, #0x10
	asrs r4, r0, #0x10
	lsls r5, r2, #0x10
	asrs r2, r5, #0x10
	subs r0, r4, r2
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, #0
	bge _0808574C
	movs r1, #0
_0808574C:
	adds r0, r4, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xa0
	ble _0808575A
	movs r2, #0xa0
_0808575A:
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	str r4, [sp]
	lsrs r0, r5, #0x10
	str r0, [sp, #4]
	movs r0, #0
	bl sa2__sub_80075D0
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0808577C: .4byte 0x040000D4
_08085780: .4byte 0x81000140

	thumb_func_start sub_8085784
sub_8085784: @ 0x08085784
	push {r4, lr}
	sub sp, #8
	movs r1, #0
	ldr r0, _080857A8 @ =gBgOffsetsHBlankPrimary
	ldr r0, [r0]
	ldr r2, _080857AC @ =gBgOffsetsBuffer
	cmp r0, r2
	bne _080857B8
	add r0, sp, #4
	strh r1, [r0]
	ldr r0, _080857B0 @ =0x040000D4
	add r1, sp, #4
	str r1, [r0]
	str r2, [r0, #4]
	ldr r1, _080857B4 @ =0x81000140
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	b _080857CE
	.align 2, 0
_080857A8: .4byte gBgOffsetsHBlankPrimary
_080857AC: .4byte gBgOffsetsBuffer
_080857B0: .4byte 0x040000D4
_080857B4: .4byte 0x81000140
_080857B8:
	add r0, sp, #4
	strh r1, [r0]
	ldr r1, _08085830 @ =0x040000D4
	str r0, [r1]
	movs r3, #0xa0
	lsls r3, r3, #2
	adds r0, r2, r3
	str r0, [r1, #4]
	ldr r0, _08085834 @ =0x81000140
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_080857CE:
	movs r0, #0xa0
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0x42
	bl sa2__sub_8005FB4
	movs r2, #0xf0
	lsls r2, r2, #2
	ldr r1, _08085838 @ =gSineTable
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r2, r3
	lsls r0, r0, #1
	adds r0, r1, r0
	movs r4, #0
	ldrsh r0, [r0, r4]
	lsls r0, r2, #1
	adds r0, r1, r0
	movs r2, #0
	ldrsh r0, [r0, r2]
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r0, r3, r2
	lsls r0, r0, #1
	adds r0, r1, r0
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r0, r2, #1
	adds r0, r1, r0
	movs r4, #0
	ldrsh r0, [r0, r4]
	movs r1, #0
	ldr r0, _0808583C @ =gBgOffsetsHBlankPrimary
	ldr r0, [r0]
	ldr r2, _08085840 @ =gBgOffsetsBuffer
	cmp r0, r2
	bne _08085844
	add r0, sp, #4
	strh r1, [r0]
	ldr r0, _08085830 @ =0x040000D4
	add r1, sp, #4
	str r1, [r0]
	str r2, [r0, #4]
	ldr r1, _08085834 @ =0x81000140
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	b _0808585A
	.align 2, 0
_08085830: .4byte 0x040000D4
_08085834: .4byte 0x81000140
_08085838: .4byte gSineTable
_0808583C: .4byte gBgOffsetsHBlankPrimary
_08085840: .4byte gBgOffsetsBuffer
_08085844:
	add r0, sp, #4
	strh r1, [r0]
	ldr r1, _08085874 @ =0x040000D4
	str r0, [r1]
	movs r3, #0xa0
	lsls r3, r3, #2
	adds r0, r2, r3
	str r0, [r1, #4]
	ldr r0, _08085878 @ =0x81000140
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0808585A:
	movs r0, #6
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0xe
	bl sa2__sub_8005FB4
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08085874: .4byte 0x040000D4
_08085878: .4byte 0x81000140

	thumb_func_start sub_808587C
sub_808587C: @ 0x0808587C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	movs r4, #0
	ldr r0, _080858B8 @ =gBgOffsetsHBlankPrimary
	ldr r1, [r0]
	ldr r2, _080858BC @ =gBgOffsetsBuffer
	mov sb, r0
	cmp r1, r2
	bne _080858C8
	add r1, sp, #8
	strh r4, [r1]
	ldr r0, _080858C0 @ =0x040000D4
	str r1, [r0]
	str r2, [r0, #4]
	ldr r1, _080858C4 @ =0x81000140
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	b _080858DE
	.align 2, 0
_080858B8: .4byte gBgOffsetsHBlankPrimary
_080858BC: .4byte gBgOffsetsBuffer
_080858C0: .4byte 0x040000D4
_080858C4: .4byte 0x81000140
_080858C8:
	add r0, sp, #8
	strh r4, [r0]
	ldr r1, _08085948 @ =0x040000D4
	str r0, [r1]
	movs r4, #0xa0
	lsls r4, r4, #2
	adds r0, r2, r4
	str r0, [r1, #4]
	ldr r0, _0808594C @ =0x81000140
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_080858DE:
	ldr r2, _08085950 @ =gFlags
	ldr r0, [r2]
	movs r1, #4
	orrs r0, r1
	str r0, [r2]
	lsls r0, r6, #0x10
	lsrs r1, r0, #0x10
	adds r4, r0, #0
	cmp r1, #0xef
	bls _080858F6
	bl _080862C4
_080858F6:
	lsls r0, r7, #0x10
	asrs r1, r0, #0x10
	adds r5, r0, #0
	cmp r1, #0x9f
	ble _08085904
	bl _080862C4
_08085904:
	cmp r1, #0
	bge _0808590C
	bl _080862C4
_0808590C:
	mov r1, r8
	lsrs r0, r1, #5
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldr r0, _08085954 @ =gUnknown_080D5D30
	adds r0, r2, r0
	ldrb r0, [r0]
	adds r2, r0, #0
	movs r0, #3
	ands r0, r2
	cmp r0, #0
	beq _08085934
	ldr r1, _08085958 @ =gHBlankCopySize
	movs r0, #2
	strb r0, [r1]
	mov r0, sb
	ldr r3, [r0]
	ldr r1, _0808595C @ =gHBlankCopyTarget
	ldr r0, _08085960 @ =0x04000040
	str r0, [r1]
_08085934:
	cmp r2, #0xf
	bls _0808593C
	bl _080862C4
_0808593C:
	lsls r0, r2, #2
	ldr r1, _08085964 @ =_08085968
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08085948: .4byte 0x040000D4
_0808594C: .4byte 0x81000140
_08085950: .4byte gFlags
_08085954: .4byte gUnknown_080D5D30
_08085958: .4byte gHBlankCopySize
_0808595C: .4byte gHBlankCopyTarget
_08085960: .4byte 0x04000040
_08085964: .4byte _08085968
_08085968: @ jump table
	.4byte _080859A8 @ case 0
	.4byte _080859E4 @ case 1
	.4byte _08085AAC @ case 2
	.4byte _08085B28 @ case 3
	.4byte _08085BE8 @ case 4
	.4byte _08085C10 @ case 5
	.4byte _08085CE0 @ case 6
	.4byte _08085D58 @ case 7
	.4byte _08085E2A @ case 8
	.4byte _08085E64 @ case 9
	.4byte _08085F36 @ case 10
	.4byte _08085FBC @ case 11
	.4byte _0808608C @ case 12
	.4byte _080860AC @ case 13
	.4byte _08086174 @ case 14
	.4byte _080861F4 @ case 15
_080859A8:
	asrs r1, r5, #0x10
	ldr r2, _080859E0 @ =0xFFF80000
	adds r0, r5, r2
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _080859B6
	movs r2, #0
_080859B6:
	adds r0, r1, #0
	adds r0, #8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xa0
	ble _080859C6
	movs r4, #0xa0
_080859C6:
	lsls r1, r6, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0
	movs r3, #0xf0
	bl sa2__sub_8007A08
	bl _080862C4
	.align 2, 0
_080859E0: .4byte 0xFFF80000
_080859E4:
	movs r1, #0xc0
	lsls r1, r1, #0xa
	adds r0, r4, r1
	lsrs r0, r0, #0x10
	mov ip, r0
	ldr r2, _08085A34 @ =0xFFF90000
	adds r0, r5, r2
	lsls r0, r0, #8
	lsrs r6, r0, #0x18
	ldr r0, _08085A38 @ =gHBlankCopySize
	ldrb r0, [r0]
	muls r0, r6, r0
	adds r3, r3, r0
	add r2, sp, #4
	adds r1, r2, #0
	movs r0, #0
	strb r0, [r1, #1]
	strb r0, [r2]
	movs r7, #0
	movs r4, #0
	mov r8, r4
	cmp r6, #0x9f
	bls _08085A16
	bl _080862C4
_08085A16:
	adds r4, r1, #0
	movs r5, #0xf0
	ldr r0, _08085A3C @ =gUnknown_080D5E84
	mov sl, r0
	mov r1, ip
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	movs r2, #1
	mov sb, r2
_08085A28:
	ldrb r0, [r4]
	cmp r0, #0
	beq _08085A40
	strb r5, [r3]
	b _08085A5C
	.align 2, 0
_08085A34: .4byte 0xFFF90000
_08085A38: .4byte gHBlankCopySize
_08085A3C: .4byte gUnknown_080D5E84
_08085A40:
	adds r0, r7, #0
	adds r0, #0xe
	lsls r0, r0, #1
	add r0, sl
	ldrh r0, [r0]
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xef
	ble _08085A5A
	mov r0, sb
	strb r0, [r4]
_08085A5A:
	strb r2, [r3]
_08085A5C:
	adds r3, #1
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _08085A68
	strb r5, [r3]
	b _08085A88
_08085A68:
	lsls r0, r7, #1
	add r0, sl
	ldrh r0, [r0]
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xef
	ble _08085A84
	strb r5, [r3]
	adds r3, #1
	mov r2, sb
	strb r2, [r4, #1]
	b _08085A8A
_08085A84:
	add r2, r8
	strb r2, [r3]
_08085A88:
	adds r3, #1
_08085A8A:
	cmp r7, #0xd
	bne _08085A92
	ldr r0, _08085AA8 @ =0x0000FFFA
	mov r8, r0
_08085A92:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r6, #0x9f
	bls _08085A28
	bl _080862C4
	.align 2, 0
_08085AA8: .4byte 0x0000FFFA
_08085AAC:
	movs r2, #0xc0
	lsls r2, r2, #0xb
	adds r1, r4, r2
	ldr r4, _08085B00 @ =0xFFFA0000
	adds r0, r5, r4
	lsls r0, r0, #8
	lsrs r6, r0, #0x18
	ldr r0, _08085B04 @ =gHBlankCopySize
	ldrb r0, [r0]
	muls r0, r6, r0
	adds r3, r3, r0
	lsls r1, r1, #8
	lsrs r4, r1, #0x18
	adds r5, r4, #0
	add r2, sp, #4
	adds r1, r2, #0
	movs r0, #0
	strb r0, [r1, #1]
	strb r0, [r2]
	movs r7, #0
	cmp r6, #0x9f
	bls _08085ADC
	bl _080862C4
_08085ADC:
	strb r5, [r3]
	adds r3, #1
	strb r4, [r3]
	adds r3, #1
	cmp r5, #0xef
	bhi _08085AEE
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_08085AEE:
	ldrb r0, [r1]
	cmp r0, #0
	beq _08085B08
	cmp r4, #0xef
	bhi _08085B1C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	b _08085B1C
	.align 2, 0
_08085B00: .4byte 0xFFFA0000
_08085B04: .4byte gHBlankCopySize
_08085B08:
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0xa
	bls _08085B1C
	movs r0, #1
	strb r0, [r1]
_08085B1C:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x9f
	bls _08085ADC
	b _080862C4
_08085B28:
	movs r1, #0xe0
	lsls r1, r1, #0xb
	adds r0, r4, r1
	lsrs r0, r0, #0x10
	mov ip, r0
	ldr r2, _08085B74 @ =0xFFFD0000
	adds r0, r5, r2
	lsls r0, r0, #8
	lsrs r6, r0, #0x18
	ldr r0, _08085B78 @ =gHBlankCopySize
	ldrb r0, [r0]
	muls r0, r6, r0
	adds r3, r3, r0
	add r2, sp, #4
	adds r1, r2, #0
	movs r0, #0
	strb r0, [r1, #1]
	strb r0, [r2]
	movs r7, #0
	movs r4, #0
	mov r8, r4
	cmp r6, #0x9f
	bls _08085B58
	b _080862C4
_08085B58:
	adds r4, r1, #0
	movs r5, #0xf0
	ldr r0, _08085B7C @ =gUnknown_080D5FC4
	mov sl, r0
	mov r1, ip
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	movs r2, #1
	mov sb, r2
_08085B6A:
	ldrb r0, [r4]
	cmp r0, #0
	beq _08085B80
	strb r5, [r3]
	b _08085B9A
	.align 2, 0
_08085B74: .4byte 0xFFFD0000
_08085B78: .4byte gHBlankCopySize
_08085B7C: .4byte gUnknown_080D5FC4
_08085B80:
	adds r0, r7, #7
	lsls r0, r0, #1
	add r0, sl
	ldrh r0, [r0]
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xef
	ble _08085B98
	mov r0, sb
	strb r0, [r4]
_08085B98:
	strb r2, [r3]
_08085B9A:
	adds r3, #1
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _08085BA6
	strb r5, [r3]
	b _08085BC6
_08085BA6:
	lsls r0, r7, #1
	add r0, sl
	ldrh r0, [r0]
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xef
	ble _08085BC2
	strb r5, [r3]
	adds r3, #1
	mov r2, sb
	strb r2, [r4, #1]
	b _08085BC8
_08085BC2:
	add r2, r8
	strb r2, [r3]
_08085BC6:
	adds r3, #1
_08085BC8:
	cmp r7, #6
	bne _08085BD0
	ldr r0, _08085BE4 @ =0x0000FFF2
	mov r8, r0
_08085BD0:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r6, #0x9f
	bls _08085B6A
	b _080862C4
	.align 2, 0
_08085BE4: .4byte 0x0000FFF2
_08085BE8:
	adds r2, r7, #0
	cmp r5, #0
	bge _08085BF0
	movs r2, #0
_08085BF0:
	adds r1, r6, #0
	subs r1, #8
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r3, r6, #0
	adds r3, #8
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	movs r0, #0xa0
	str r0, [sp]
	movs r0, #0
	bl sa2__sub_8007A08
	b _080862C4
_08085C10:
	ldr r1, _08085C60 @ =0xFFF90000
	adds r0, r4, r1
	lsrs r0, r0, #0x10
	mov ip, r0
	ldr r2, _08085C64 @ =0xFFFD0000
	adds r0, r5, r2
	lsls r0, r0, #8
	lsrs r6, r0, #0x18
	ldr r0, _08085C68 @ =gHBlankCopySize
	ldrb r0, [r0]
	muls r0, r6, r0
	adds r3, r3, r0
	add r2, sp, #4
	adds r1, r2, #0
	movs r0, #0
	strb r0, [r1, #1]
	strb r0, [r2]
	movs r7, #0
	movs r4, #0
	mov r8, r4
	cmp r6, #0x9f
	bls _08085C3E
	b _080862C4
_08085C3E:
	adds r5, r1, #0
	ldr r0, _08085C6C @ =gUnknown_080D5FC4
	mov sl, r0
	mov r1, ip
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov ip, r0
	movs r2, #1
	mov sb, r2
_08085C50:
	ldrb r0, [r5, #1]
	adds r4, r0, #0
	cmp r4, #0
	beq _08085C70
	movs r4, #0
	strb r4, [r3]
	b _08085C96
	.align 2, 0
_08085C60: .4byte 0xFFF90000
_08085C64: .4byte 0xFFFD0000
_08085C68: .4byte gHBlankCopySize
_08085C6C: .4byte gUnknown_080D5FC4
_08085C70:
	lsls r0, r7, #1
	add r0, sl
	ldrh r1, [r0]
	mov r0, ip
	subs r1, r0, r1
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _08085C94
	strb r4, [r3]
	adds r3, #1
	mov r4, sb
	strb r4, [r5, #1]
	b _08085C98
_08085C94:
	strb r2, [r3]
_08085C96:
	adds r3, #1
_08085C98:
	ldrb r1, [r5]
	cmp r1, #0
	beq _08085CA4
	movs r0, #0
	strb r0, [r3]
	b _08085CC4
_08085CA4:
	adds r0, r7, #7
	lsls r0, r0, #1
	add r0, sl
	ldrh r0, [r0]
	mov r2, ip
	subs r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _08085CC2
	strb r1, [r3]
	adds r3, #1
	mov r4, sb
	strb r4, [r5]
	b _08085CC6
_08085CC2:
	strb r2, [r3]
_08085CC4:
	adds r3, #1
_08085CC6:
	cmp r7, #6
	bne _08085CCE
	movs r0, #0xe
	mov r8, r0
_08085CCE:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r6, #0x9f
	bls _08085C50
	b _080862C4
_08085CE0:
	ldr r2, _08085D30 @ =0xFFFA0000
	adds r1, r4, r2
	adds r0, r5, r2
	lsls r0, r0, #8
	lsrs r6, r0, #0x18
	ldr r0, _08085D34 @ =gHBlankCopySize
	ldrb r0, [r0]
	muls r0, r6, r0
	adds r3, r3, r0
	lsls r1, r1, #8
	lsrs r4, r1, #0x18
	adds r5, r4, #0
	add r2, sp, #4
	adds r1, r2, #0
	movs r0, #0
	strb r0, [r1, #1]
	strb r0, [r2]
	movs r7, #0
	cmp r6, #0x9f
	bls _08085D0A
	b _080862C4
_08085D0A:
	strb r5, [r3]
	adds r3, #1
	strb r4, [r3]
	adds r3, #1
	cmp r4, #0
	beq _08085D1C
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08085D1C:
	ldrb r0, [r1, #1]
	cmp r0, #0
	beq _08085D38
	cmp r5, #0
	beq _08085D4C
	subs r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	b _08085D4C
	.align 2, 0
_08085D30: .4byte 0xFFFA0000
_08085D34: .4byte gHBlankCopySize
_08085D38:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0xa
	bls _08085D4C
	movs r0, #1
	strb r0, [r1, #1]
_08085D4C:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x9f
	bls _08085D0A
	b _080862C4
_08085D58:
	ldr r1, _08085DA8 @ =0xFFFD0000
	adds r0, r4, r1
	lsrs r0, r0, #0x10
	mov ip, r0
	ldr r2, _08085DAC @ =0xFFF90000
	adds r0, r5, r2
	lsls r0, r0, #8
	lsrs r6, r0, #0x18
	ldr r0, _08085DB0 @ =gHBlankCopySize
	ldrb r0, [r0]
	muls r0, r6, r0
	adds r3, r3, r0
	add r2, sp, #4
	adds r1, r2, #0
	movs r0, #0
	strb r0, [r1, #1]
	strb r0, [r2]
	movs r7, #0
	movs r4, #0
	mov r8, r4
	cmp r6, #0x9f
	bls _08085D86
	b _080862C4
_08085D86:
	adds r5, r1, #0
	ldr r0, _08085DB4 @ =gUnknown_080D5E84
	mov sl, r0
	mov r1, ip
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov ip, r0
	movs r2, #1
	mov sb, r2
_08085D98:
	ldrb r0, [r5, #1]
	adds r4, r0, #0
	cmp r4, #0
	beq _08085DB8
	movs r4, #0
	strb r4, [r3]
	b _08085DDE
	.align 2, 0
_08085DA8: .4byte 0xFFFD0000
_08085DAC: .4byte 0xFFF90000
_08085DB0: .4byte gHBlankCopySize
_08085DB4: .4byte gUnknown_080D5E84
_08085DB8:
	lsls r0, r7, #1
	add r0, sl
	ldrh r1, [r0]
	mov r0, ip
	subs r1, r0, r1
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _08085DDC
	strb r4, [r3]
	adds r3, #1
	mov r4, sb
	strb r4, [r5, #1]
	b _08085DE0
_08085DDC:
	strb r2, [r3]
_08085DDE:
	adds r3, #1
_08085DE0:
	ldrb r1, [r5]
	cmp r1, #0
	beq _08085DEC
	movs r0, #0
	strb r0, [r3]
	b _08085E0E
_08085DEC:
	adds r0, r7, #0
	adds r0, #0xe
	lsls r0, r0, #1
	add r0, sl
	ldrh r0, [r0]
	mov r2, ip
	subs r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _08085E0C
	strb r1, [r3]
	adds r3, #1
	mov r4, sb
	strb r4, [r5]
	b _08085E10
_08085E0C:
	strb r2, [r3]
_08085E0E:
	adds r3, #1
_08085E10:
	cmp r7, #0xd
	bne _08085E18
	movs r0, #6
	mov r8, r0
_08085E18:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r6, #0x9f
	bls _08085D98
	b _080862C4
_08085E2A:
	asrs r1, r5, #0x10
	ldr r2, _08085E60 @ =0xFFF80000
	adds r0, r5, r2
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _08085E38
	movs r2, #0
_08085E38:
	adds r0, r1, #0
	adds r0, #8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xa0
	ble _08085E48
	movs r4, #0xa0
_08085E48:
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r3, r6, #0x18
	lsrs r3, r3, #0x18
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	bl sa2__sub_8007A08
	b _080862C4
	.align 2, 0
_08085E60: .4byte 0xFFF80000
_08085E64:
	ldr r1, _08085EB8 @ =0xFFFD0000
	adds r0, r4, r1
	lsrs r0, r0, #0x10
	mov ip, r0
	movs r2, #0xe0
	lsls r2, r2, #0xb
	adds r0, r5, r2
	lsls r0, r0, #8
	lsrs r6, r0, #0x18
	ldr r0, _08085EBC @ =gHBlankCopySize
	ldrb r0, [r0]
	muls r0, r6, r0
	adds r3, r3, r0
	mov r4, ip
	strb r4, [r3, #1]
	add r2, sp, #4
	adds r1, r2, #0
	movs r0, #0
	strb r0, [r1, #1]
	strb r0, [r2]
	movs r7, #0
	mov r8, r0
	cmp r6, #0
	bne _08085E96
	b _080862C0
_08085E96:
	adds r5, r1, #0
	ldr r1, _08085EC0 @ =gUnknown_080D5E84
	mov sl, r1
	mov r2, ip
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	mov ip, r0
	movs r4, #1
	mov sb, r4
_08085EA8:
	ldrb r0, [r5, #1]
	adds r4, r0, #0
	cmp r4, #0
	beq _08085EC4
	movs r0, #0
	strb r0, [r3]
	b _08085EEA
	.align 2, 0
_08085EB8: .4byte 0xFFFD0000
_08085EBC: .4byte gHBlankCopySize
_08085EC0: .4byte gUnknown_080D5E84
_08085EC4:
	lsls r0, r7, #1
	add r0, sl
	ldrh r1, [r0]
	mov r2, ip
	subs r1, r2, r1
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _08085EE8
	strb r4, [r3]
	subs r3, #1
	mov r4, sb
	strb r4, [r5, #1]
	b _08085EEC
_08085EE8:
	strb r2, [r3]
_08085EEA:
	subs r3, #1
_08085EEC:
	ldrb r1, [r5]
	cmp r1, #0
	beq _08085EF8
	movs r0, #0
	strb r0, [r3]
	b _08085F1A
_08085EF8:
	adds r0, r7, #0
	adds r0, #0xe
	lsls r0, r0, #1
	add r0, sl
	ldrh r0, [r0]
	mov r2, ip
	subs r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _08085F18
	strb r1, [r3]
	subs r3, #1
	mov r4, sb
	strb r4, [r5]
	b _08085F1C
_08085F18:
	strb r2, [r3]
_08085F1A:
	subs r3, #1
_08085F1C:
	cmp r7, #0xd
	bne _08085F24
	movs r0, #6
	mov r8, r0
_08085F24:
	subs r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r6, #0
	bne _08085EA8
	b _080862C0
_08085F36:
	ldr r1, _08085F94 @ =0xFFFA0000
	adds r0, r4, r1
	lsrs r0, r0, #0x10
	mov ip, r0
	movs r2, #0xc0
	lsls r2, r2, #0xb
	adds r0, r5, r2
	lsls r0, r0, #8
	lsrs r6, r0, #0x18
	ldr r0, _08085F98 @ =gHBlankCopySize
	ldrb r0, [r0]
	muls r0, r6, r0
	adds r3, r3, r0
	mov r4, ip
	strb r4, [r3, #1]
	mov r1, ip
	lsls r0, r1, #0x18
	lsrs r4, r0, #0x18
	adds r5, r4, #0
	add r2, sp, #4
	adds r1, r2, #0
	movs r0, #0
	strb r0, [r1, #1]
	strb r0, [r2]
	movs r7, #0
	cmp r6, #0
	bne _08085F6E
	b _080862C0
_08085F6E:
	strb r5, [r3]
	subs r3, #1
	strb r4, [r3]
	subs r3, #1
	cmp r4, #0
	beq _08085F80
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08085F80:
	ldrb r0, [r1, #1]
	cmp r0, #0
	beq _08085F9C
	cmp r5, #0
	beq _08085FB0
	subs r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	b _08085FB0
	.align 2, 0
_08085F94: .4byte 0xFFFA0000
_08085F98: .4byte gHBlankCopySize
_08085F9C:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0xa
	bls _08085FB0
	movs r0, #1
	strb r0, [r1, #1]
_08085FB0:
	subs r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0
	bne _08085F6E
	b _080862C0
_08085FBC:
	ldr r2, _08086010 @ =0xFFF90000
	adds r0, r4, r2
	lsrs r0, r0, #0x10
	mov ip, r0
	movs r4, #0xc0
	lsls r4, r4, #0xa
	adds r0, r5, r4
	lsls r0, r0, #8
	lsrs r6, r0, #0x18
	ldr r0, _08086014 @ =gHBlankCopySize
	ldrb r0, [r0]
	muls r0, r6, r0
	adds r3, r3, r0
	mov r0, ip
	strb r0, [r3, #1]
	add r2, sp, #4
	adds r1, r2, #0
	movs r0, #0
	strb r0, [r1, #1]
	strb r0, [r2]
	movs r7, #0
	movs r1, #0
	mov r8, r1
	cmp r6, #0
	bne _08085FF0
	b _080862C0
_08085FF0:
	adds r5, r2, #0
	ldr r2, _08086018 @ =gUnknown_080D5FC4
	mov sl, r2
	mov r4, ip
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	mov ip, r0
	movs r0, #1
	mov sb, r0
_08086002:
	ldrb r0, [r5, #1]
	adds r4, r0, #0
	cmp r4, #0
	beq _0808601C
	movs r1, #0
	strb r1, [r3]
	b _08086042
	.align 2, 0
_08086010: .4byte 0xFFF90000
_08086014: .4byte gHBlankCopySize
_08086018: .4byte gUnknown_080D5FC4
_0808601C:
	lsls r0, r7, #1
	add r0, sl
	ldrh r1, [r0]
	mov r2, ip
	subs r1, r2, r1
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _08086040
	strb r4, [r3]
	subs r3, #1
	mov r4, sb
	strb r4, [r5, #1]
	b _08086044
_08086040:
	strb r2, [r3]
_08086042:
	subs r3, #1
_08086044:
	ldrb r1, [r5]
	cmp r1, #0
	beq _08086050
	movs r0, #0
	strb r0, [r3]
	b _08086070
_08086050:
	adds r0, r7, #7
	lsls r0, r0, #1
	add r0, sl
	ldrh r0, [r0]
	mov r2, ip
	subs r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _0808606E
	strb r1, [r3]
	subs r3, #1
	mov r4, sb
	strb r4, [r5]
	b _08086072
_0808606E:
	strb r2, [r3]
_08086070:
	subs r3, #1
_08086072:
	cmp r7, #6
	bne _0808607A
	movs r0, #0xe
	mov r8, r0
_0808607A:
	subs r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r6, #0
	bne _08086002
	b _080862C0
_0808608C:
	adds r1, r6, #0
	subs r1, #8
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r3, r6, #0
	adds r3, #8
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0
	movs r2, #0
	bl sa2__sub_8007A08
	b _080862C4
_080860AC:
	movs r1, #0xe0
	lsls r1, r1, #0xb
	adds r0, r4, r1
	lsrs r0, r0, #0x10
	mov ip, r0
	movs r2, #0xc0
	lsls r2, r2, #0xa
	adds r0, r5, r2
	lsls r0, r0, #8
	lsrs r6, r0, #0x18
	ldr r0, _08086100 @ =gHBlankCopySize
	ldrb r0, [r0]
	muls r0, r6, r0
	adds r3, r3, r0
	mov r4, ip
	strb r4, [r3, #1]
	add r2, sp, #4
	adds r1, r2, #0
	movs r0, #0
	strb r0, [r1, #1]
	strb r0, [r2]
	movs r7, #0
	mov r8, r0
	cmp r6, #0
	bne _080860E0
	b _080862C0
_080860E0:
	adds r4, r1, #0
	movs r1, #0xf0
	mov sb, r1
	ldr r2, _08086104 @ =gUnknown_080D5FC4
	mov sl, r2
	mov r1, ip
	lsls r0, r1, #0x10
	asrs r5, r0, #0x10
	movs r2, #1
	mov ip, r2
_080860F4:
	ldrb r0, [r4]
	cmp r0, #0
	beq _08086108
	mov r0, sb
	strb r0, [r3]
	b _08086122
	.align 2, 0
_08086100: .4byte gHBlankCopySize
_08086104: .4byte gUnknown_080D5FC4
_08086108:
	adds r0, r7, #7
	lsls r0, r0, #1
	add r0, sl
	ldrh r0, [r0]
	adds r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xef
	ble _08086120
	mov r1, ip
	strb r1, [r4]
_08086120:
	strb r2, [r3]
_08086122:
	subs r3, #1
	ldrb r0, [r4, #1]
	cmp r0, #0
	bne _08086150
	lsls r0, r7, #1
	add r0, sl
	ldrh r1, [r0]
	adds r1, r5, r1
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xef
	ble _08086152
	mov r0, sb
	strb r0, [r3]
	subs r3, #1
	mov r1, ip
	strb r1, [r4, #1]
	b _08086156
_08086150:
	mov r2, sb
_08086152:
	strb r2, [r3]
	subs r3, #1
_08086156:
	cmp r7, #6
	bne _0808615E
	ldr r2, _08086170 @ =0x0000FFF2
	mov r8, r2
_0808615E:
	subs r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r6, #0
	bne _080860F4
	b _080862C0
	.align 2, 0
_08086170: .4byte 0x0000FFF2
_08086174:
	movs r1, #0xc0
	lsls r1, r1, #0xb
	adds r0, r4, r1
	lsrs r0, r0, #0x10
	mov ip, r0
	adds r0, r5, r1
	lsls r0, r0, #8
	lsrs r6, r0, #0x18
	ldr r0, _080861D0 @ =gHBlankCopySize
	ldrb r0, [r0]
	muls r0, r6, r0
	adds r3, r3, r0
	mov r2, ip
	strb r2, [r3, #1]
	mov r4, ip
	lsls r0, r4, #0x18
	lsrs r4, r0, #0x18
	adds r5, r4, #0
	add r2, sp, #4
	adds r1, r2, #0
	movs r0, #0
	strb r0, [r1, #1]
	strb r0, [r2]
	movs r7, #0
	cmp r6, #0
	bne _080861AA
	b _080862C0
_080861AA:
	strb r5, [r3]
	subs r3, #1
	strb r4, [r3]
	subs r3, #1
	cmp r5, #0xef
	bhi _080861BC
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080861BC:
	ldrb r0, [r1]
	cmp r0, #0
	beq _080861D4
	cmp r4, #0xef
	bhi _080861E8
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	b _080861E8
	.align 2, 0
_080861D0: .4byte gHBlankCopySize
_080861D4:
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0xa
	bls _080861E8
	movs r0, #1
	strb r0, [r1]
_080861E8:
	subs r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0
	bne _080861AA
	b _080862C0
_080861F4:
	movs r1, #0xc0
	lsls r1, r1, #0xa
	adds r0, r4, r1
	lsrs r0, r0, #0x10
	mov ip, r0
	movs r2, #0xe0
	lsls r2, r2, #0xb
	adds r0, r5, r2
	lsls r0, r0, #8
	lsrs r6, r0, #0x18
	ldr r0, _08086244 @ =gHBlankCopySize
	ldrb r0, [r0]
	muls r0, r6, r0
	adds r3, r3, r0
	mov r4, ip
	strb r4, [r3, #1]
	add r2, sp, #4
	adds r1, r2, #0
	movs r0, #0
	strb r0, [r1, #1]
	strb r0, [r2]
	movs r7, #0
	mov r8, r0
	cmp r6, #0
	beq _080862C0
	adds r4, r1, #0
	movs r1, #0xf0
	mov sb, r1
	mov r2, ip
	lsls r0, r2, #0x10
	asrs r5, r0, #0x10
	movs r0, #1
	mov sl, r0
_08086236:
	ldrb r0, [r4]
	cmp r0, #0
	beq _08086248
	mov r1, sb
	strb r1, [r3]
	b _08086266
	.align 2, 0
_08086244: .4byte gHBlankCopySize
_08086248:
	adds r0, r7, #0
	adds r0, #0xe
	lsls r0, r0, #1
	ldr r2, _08086274 @ =gUnknown_080D5E84
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xef
	ble _08086264
	mov r0, sl
	strb r0, [r4]
_08086264:
	strb r2, [r3]
_08086266:
	subs r3, #1
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _08086278
	mov r1, sb
	strb r1, [r3]
	b _080862A6
	.align 2, 0
_08086274: .4byte gUnknown_080D5E84
_08086278:
	lsls r0, r7, #1
	ldr r2, _080862A0 @ =gUnknown_080D5E84
	adds r0, r0, r2
	ldrh r1, [r0]
	adds r1, r5, r1
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xef
	ble _080862A4
	mov r0, sb
	strb r0, [r3]
	subs r3, #1
	mov r1, sl
	strb r1, [r4, #1]
	b _080862A8
	.align 2, 0
_080862A0: .4byte gUnknown_080D5E84
_080862A4:
	strb r2, [r3]
_080862A6:
	subs r3, #1
_080862A8:
	cmp r7, #0xd
	bne _080862B0
	ldr r2, _080862D4 @ =0x0000FFFA
	mov r8, r2
_080862B0:
	subs r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r6, #0
	bne _08086236
_080862C0:
	movs r0, #0
	strb r0, [r3, #1]
_080862C4:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080862D4: .4byte 0x0000FFFA

	thumb_func_start sub_80862D8
sub_80862D8: @ 0x080862D8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5]
	cmp r0, #0
	bne _080862E4
	b _080863F0
_080862E4:
	ldr r1, [r5, #0x28]
	ldr r0, [r1, #4]
	movs r2, #0x80
	lsls r2, r2, #1
	ands r0, r2
	cmp r0, #0
	bne _080863F0
	ldr r0, [r5, #0x2c]
	ldr r0, [r0, #4]
	ands r0, r2
	cmp r0, #0
	bne _080863F0
	adds r4, r1, #0
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08086354
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_80863FC
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0808634E
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_80865B0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0808634E
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_80871CC
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0808634E
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_8086774
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _08086354
_0808634E:
	adds r0, r4, #0
	bl sub_801038C
_08086354:
	ldr r4, [r5, #0x2c]
	adds r0, r5, #0
	adds r0, #0x70
	ldrb r0, [r0]
	cmp r0, #0
	beq _08086392
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_80865B0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0808638A
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_80871CC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0808638A
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_8086774
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080863F0
_0808638A:
	adds r0, r4, #0
	bl sub_8010C58
	b _080863F0
_08086392:
	ldr r0, _080863F8 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #5
	bne _080863F0
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080863F0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_80863FC
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _080863EA
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_80865B0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _080863EA
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_80871CC
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _080863EA
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_8086774
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _080863F0
_080863EA:
	adds r0, r4, #0
	bl sub_801038C
_080863F0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080863F8: .4byte gStageData

	thumb_func_start sub_80863FC
sub_80863FC: @ 0x080863FC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	adds r3, r1, #0
	movs r0, #0
	mov sb, r0
	adds r0, r3, #0
	adds r0, #0xe0
	ldr r6, [r0]
	movs r1, #0xc
	adds r1, r1, r6
	mov ip, r1
	ldr r0, [r3, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08086430
	mov r4, ip
	ldr r1, [r4, #0x20]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08086434
_08086430:
	movs r0, #0
	b _0808659E
_08086434:
	mov r0, r8
	ldr r1, [r0, #0x34]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080864EC
	ldr r5, [r3, #0x10]
	ldr r0, _080864D8 @ =gCamera
	adds r0, #0x6a
	asrs r5, r5, #8
	ldrh r0, [r0]
	adds r5, r5, r0
	mov r0, r8
	adds r0, #0xe3
	ldrb r0, [r0]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	movs r0, #0x86
	lsls r0, r0, #1
	add r0, r8
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r0, #4
	subs r5, r5, r0
	ldr r4, [r3, #0x14]
	asrs r4, r4, #8
	movs r0, #0x88
	lsls r0, r0, #1
	add r0, r8
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl sa2__sub_8004418
	adds r6, r0, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	ldr r1, _080864DC @ =gUnknown_080D5D30
	mov r0, r8
	adds r0, #0xce
	ldrh r0, [r0]
	lsrs r0, r0, #5
	adds r0, r0, r1
	ldrb r0, [r0]
	mov r8, r0
	mov r1, r8
	lsls r1, r1, #6
	mov r8, r1
	adds r1, r5, #0
	muls r1, r5, r1
	adds r0, r4, #0
	muls r0, r4, r0
	adds r1, r1, r0
	adds r0, r1, #0
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xc
	bl __divsi3
	adds r1, r0, #0
	movs r0, #0x20
	subs r1, r0, r1
	mov r3, r8
	lsls r6, r6, #0x10
	asrs r0, r6, #0x10
	subs r2, r3, r0
	cmp r2, #0
	blt _080864E0
	cmp r2, r1
	ble _080864E6
	b _0808659C
	.align 2, 0
_080864D8: .4byte gCamera
_080864DC: .4byte gUnknown_080D5D30
_080864E0:
	subs r0, r0, r3
	cmp r0, r1
	bgt _0808659C
_080864E6:
	movs r4, #2
	mov sb, r4
	b _0808659C
_080864EC:
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	beq _0808659C
	ldr r2, [r3, #0x10]
	asrs r2, r2, #8
	ldr r1, _080865AC @ =gCamera
	adds r0, r1, #0
	adds r0, #0x6a
	movs r4, #0
	ldrsh r0, [r0, r4]
	adds r2, r2, r0
	ldr r0, [r1]
	subs r2, r2, r0
	ldr r0, [r3, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #4]
	subs r7, r0, r1
	mov r0, r8
	adds r0, #0x3c
	movs r4, #0
	ldrsb r4, [r0, r4]
	mov r1, r8
	ldr r0, [r1, #0x48]
	adds r3, r0, r4
	adds r0, r6, #0
	adds r0, #0x30
	movs r5, #0
	ldrsb r5, [r0, r5]
	adds r1, r2, r5
	cmp r3, r1
	bgt _08086542
	mov r0, r8
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r3, r0
	cmp r0, r1
	bge _08086554
	cmp r3, r1
	blt _0808659C
_08086542:
	adds r0, r6, #0
	adds r0, #0x32
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r1, r0
	cmp r0, r3
	blt _0808659C
_08086554:
	mov r0, r8
	adds r0, #0x3d
	movs r3, #0
	ldrsb r3, [r0, r3]
	mov r4, r8
	ldr r0, [r4, #0x4c]
	adds r2, r0, r3
	mov r0, ip
	adds r0, #0x25
	movs r4, #0
	ldrsb r4, [r0, r4]
	adds r1, r7, r4
	cmp r2, r1
	bgt _08086586
	mov r0, r8
	adds r0, #0x3f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _08086598
	cmp r2, r1
	blt _0808659C
_08086586:
	mov r0, ip
	adds r0, #0x27
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r2
	blt _0808659C
_08086598:
	movs r0, #1
	mov sb, r0
_0808659C:
	mov r0, sb
_0808659E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080865AC: .4byte gCamera

	thumb_func_start sub_80865B0
sub_80865B0: @ 0x080865B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r3, r0, #0
	adds r6, r1, #0
	movs r0, #0
	mov sb, r0
	movs r1, #0xe3
	lsls r1, r1, #2
	adds r1, r1, r3
	mov r8, r1
	adds r0, r6, #0
	adds r0, #0xe0
	ldr r0, [r0]
	mov ip, r0
	mov r7, ip
	adds r7, #0xc
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080865EE
	mov r2, r8
	ldr r0, [r2, #0x20]
	movs r2, #1
	rsbs r2, r2, #0
	cmp r0, r2
	bne _080865F2
_080865EE:
	movs r0, #0
	b _0808675C
_080865F2:
	ldr r1, [r7, #0x20]
	cmp r1, r2
	beq _080866A4
	adds r0, r3, #0
	adds r0, #0x9c
	ldr r0, [r0]
	asrs r0, r0, #8
	movs r4, #0xec
	lsls r4, r4, #2
	adds r1, r3, r4
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	mov sl, r1
	adds r2, r0, r1
	ldr r1, [r6, #0x10]
	asrs r1, r1, #8
	ldr r0, _0808669C @ =gCamera
	adds r0, #0x6a
	movs r5, #0
	ldrsh r0, [r0, r5]
	adds r1, r1, r0
	mov r0, ip
	adds r0, #0x30
	movs r4, #0
	ldrsb r4, [r0, r4]
	adds r1, r1, r4
	cmp r2, r1
	bgt _08086646
	ldr r5, _080866A0 @ =0x000003B2
	adds r0, r3, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r5, sl
	subs r0, r0, r5
	adds r0, r2, r0
	cmp r0, r1
	bge _0808665A
	cmp r2, r1
	bge _08086646
	b _0808675A
_08086646:
	mov r0, ip
	adds r0, #0x32
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r2
	bge _0808665A
	b _0808675A
_0808665A:
	adds r0, r3, #0
	adds r0, #0xa0
	ldr r0, [r0]
	asrs r0, r0, #8
	mov r2, r8
	adds r2, #0x25
	movs r4, #0
	ldrsb r4, [r2, r4]
	adds r3, r0, r4
	ldr r0, [r6, #0x14]
	asrs r0, r0, #8
	adds r2, r7, #0
	adds r2, #0x25
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r1, r0, r2
	cmp r3, r1
	bgt _08086696
	mov r0, r8
	adds r0, #0x27
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r3, r0
	cmp r0, r1
	bge _08086756
	cmp r3, r1
	blt _0808675A
_08086696:
	adds r0, r7, #0
	adds r0, #0x27
	b _08086748
	.align 2, 0
_0808669C: .4byte gCamera
_080866A0: .4byte 0x000003B2
_080866A4:
	ldr r0, [r7, #0x28]
	cmp r0, r1
	beq _0808675A
	adds r0, r3, #0
	adds r0, #0x9c
	ldr r0, [r0]
	asrs r0, r0, #8
	movs r2, #0xec
	lsls r2, r2, #2
	adds r1, r3, r2
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	mov sl, r1
	adds r2, r0, r1
	ldr r1, [r6, #0x10]
	asrs r1, r1, #8
	ldr r0, _0808676C @ =gCamera
	adds r0, #0x6a
	movs r4, #0
	ldrsh r0, [r0, r4]
	adds r1, r1, r0
	mov r0, ip
	adds r0, #0x38
	movs r4, #0
	ldrsb r4, [r0, r4]
	adds r1, r1, r4
	cmp r2, r1
	bgt _080866F6
	ldr r5, _08086770 @ =0x000003B2
	adds r0, r3, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r5, sl
	subs r0, r0, r5
	adds r0, r2, r0
	cmp r0, r1
	bge _08086708
	cmp r2, r1
	blt _0808675A
_080866F6:
	mov r0, ip
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r2
	blt _0808675A
_08086708:
	adds r0, r3, #0
	adds r0, #0xa0
	ldr r0, [r0]
	asrs r0, r0, #8
	mov r2, r8
	adds r2, #0x25
	movs r4, #0
	ldrsb r4, [r2, r4]
	adds r3, r0, r4
	ldr r0, [r6, #0x14]
	asrs r0, r0, #8
	adds r2, r7, #0
	adds r2, #0x2d
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r1, r0, r2
	cmp r3, r1
	bgt _08086744
	mov r0, r8
	adds r0, #0x27
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r3, r0
	cmp r0, r1
	bge _08086756
	cmp r3, r1
	blt _0808675A
_08086744:
	adds r0, r7, #0
	adds r0, #0x2f
_08086748:
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r2
	adds r0, r1, r0
	cmp r0, r3
	blt _0808675A
_08086756:
	movs r0, #1
	mov sb, r0
_0808675A:
	mov r0, sb
_0808675C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0808676C: .4byte gCamera
_08086770: .4byte 0x000003B2

	thumb_func_start sub_8086774
sub_8086774: @ 0x08086774
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	mov sb, r1
	movs r0, #0
	mov r8, r0
	movs r5, #0
_08086788:
	movs r4, #0
_0808678A:
	lsls r2, r5, #4
	subs r2, r2, r5
	lsls r0, r2, #4
	ldr r1, _080867F8 @ =0x00000454
	adds r0, r0, r1
	adds r0, r6, r0
	lsls r3, r4, #2
	adds r3, r3, r4
	lsls r1, r3, #3
	adds r0, r0, r1
	lsls r3, r3, #2
	lsls r2, r2, #3
	adds r3, r3, r2
	movs r2, #0xb6
	lsls r2, r2, #1
	adds r1, r6, r2
	adds r1, r1, r3
	ldr r1, [r1]
	asrs r1, r1, #8
	movs r7, #0xb8
	lsls r7, r7, #1
	adds r2, r6, r7
	adds r2, r2, r3
	ldr r2, [r2]
	asrs r2, r2, #8
	mov r3, sb
	str r3, [sp]
	movs r3, #0
	bl sub_8010184
	cmp r0, #1
	bne _080867D2
	movs r7, #1
	mov r8, r7
	movs r5, #4
	movs r4, #6
_080867D2:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #5
	bls _0808678A
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _08086788
	mov r0, r8
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080867F8: .4byte 0x00000454

	thumb_func_start sub_80867FC
sub_80867FC: @ 0x080867FC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	movs r0, #0
	str r0, [sp]
	mov r1, ip
	ldr r1, [r1, #0x28]
	str r1, [sp, #4]
	mov r2, ip
	ldr r2, [r2, #0x2c]
	mov sl, r2
	ldr r0, _080868A4 @ =0xFFFFFF00
	ands r0, r5
	movs r1, #0xf8
	orrs r0, r1
	ldr r1, _080868A8 @ =0xFFFF00FF
	ands r1, r0
	movs r0, #0xf8
	lsls r0, r0, #8
	orrs r1, r0
	ldr r0, _080868AC @ =0xFF00FFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	ldr r3, _080868B0 @ =0x00FFFFFF
	mov r8, r3
	mov r7, r8
	ands r7, r0
	movs r0, #0x80
	lsls r0, r0, #0x14
	adds r1, r7, #0
	orrs r1, r0
	mov r8, r1
	mov r5, r8
	mov r0, ip
	adds r0, #0xb8
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	ldrh r0, [r0]
	adds r1, r1, r0
	ldr r3, _080868B4 @ =0x000003FF
	adds r0, r3, #0
	ands r1, r0
	ldr r3, _080868B8 @ =gSineTable
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r1, r7
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsrs r2, r0, #0x1f
	adds r0, r0, r2
	asrs r2, r0, #1
	lsls r1, r1, #1
	adds r1, r1, r3
	movs r3, #0
	ldrsh r0, [r1, r3]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	mov sb, r0
	mov r0, ip
	adds r0, #0x9c
	ldr r0, [r0]
	adds r2, r2, r0
	mov r0, ip
	adds r0, #0xa0
	ldr r0, [r0]
	add sb, r0
	cmp r6, #0
	beq _080868BC
	cmp r6, #1
	beq _08086978
	b _08086A2A
	.align 2, 0
_080868A4: .4byte 0xFFFFFF00
_080868A8: .4byte 0xFFFF00FF
_080868AC: .4byte 0xFF00FFFF
_080868B0: .4byte 0x00FFFFFF
_080868B4: .4byte 0x000003FF
_080868B8: .4byte gSineTable
_080868BC:
	mov r0, ip
	adds r0, #0x70
	ldrb r0, [r0]
	cmp r0, #0
	bne _080868C8
	b _08086A2A
_080868C8:
	mov r0, sl
	adds r0, #0xe0
	ldr r3, [r0]
	movs r6, #0xc
	adds r6, r6, r3
	mov ip, r6
	asrs r1, r2, #8
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #8]
	adds r2, r1, r0
	mov r7, sl
	ldr r1, [r7, #0x10]
	asrs r1, r1, #8
	ldr r0, _08086974 @ =gCamera
	adds r0, #0x6a
	movs r6, #0
	ldrsh r0, [r0, r6]
	adds r1, r1, r0
	adds r0, r3, #0
	adds r0, #0x38
	movs r6, #0
	ldrsb r6, [r0, r6]
	adds r1, r1, r6
	cmp r2, r1
	bgt _08086916
	mov r7, r8
	lsls r0, r7, #8
	asrs r0, r0, #0x18
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r7, [sp, #8]
	subs r0, r0, r7
	adds r0, r2, r0
	cmp r0, r1
	bge _0808692A
	cmp r2, r1
	bge _08086916
	b _08086A2A
_08086916:
	adds r0, r3, #0
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r6
	adds r0, r1, r0
	cmp r0, r2
	bge _0808692A
	b _08086A2A
_0808692A:
	mov r1, sb
	asrs r0, r1, #8
	adds r4, r5, #0
	lsls r1, r4, #0x10
	asrs r1, r1, #0x18
	adds r3, r0, r1
	mov r2, sl
	ldr r0, [r2, #0x14]
	asrs r0, r0, #8
	mov r2, ip
	adds r2, #0x2d
	movs r5, #0
	ldrsb r5, [r2, r5]
	adds r2, r0, r5
	cmp r3, r2
	bgt _08086958
	asrs r0, r4, #0x18
	subs r0, r0, r1
	adds r0, r3, r0
	cmp r0, r2
	bge _0808696A
	cmp r3, r2
	blt _08086A2A
_08086958:
	mov r0, ip
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r2, r0
	cmp r0, r3
	blt _08086A2A
_0808696A:
	mov r0, sl
	bl sub_8010C58
	b _08086A26
	.align 2, 0
_08086974: .4byte gCamera
_08086978:
	ldr r0, [sp, #4]
	adds r0, #0xe0
	ldr r3, [r0]
	movs r6, #0xc
	adds r6, r6, r3
	mov ip, r6
	ldr r1, [r6, #0x28]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08086A2A
	asrs r1, r2, #8
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	mov sl, r0
	adds r2, r1, r0
	ldr r7, [sp, #4]
	ldr r1, [r7, #0x10]
	asrs r1, r1, #8
	ldr r0, _08086A3C @ =gCamera
	adds r0, #0x6a
	movs r6, #0
	ldrsh r0, [r0, r6]
	adds r1, r1, r0
	adds r0, r3, #0
	adds r0, #0x38
	movs r6, #0
	ldrsb r6, [r0, r6]
	adds r1, r1, r6
	cmp r2, r1
	bgt _080869CE
	mov r7, r8
	lsls r0, r7, #8
	asrs r0, r0, #0x18
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r7, sl
	subs r0, r0, r7
	adds r0, r2, r0
	cmp r0, r1
	bge _080869E0
	cmp r2, r1
	blt _08086A2A
_080869CE:
	adds r0, r3, #0
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r6
	adds r0, r1, r0
	cmp r0, r2
	blt _08086A2A
_080869E0:
	mov r1, sb
	asrs r0, r1, #8
	adds r4, r5, #0
	lsls r1, r4, #0x10
	asrs r1, r1, #0x18
	adds r3, r0, r1
	ldr r2, [sp, #4]
	ldr r0, [r2, #0x14]
	asrs r0, r0, #8
	mov r2, ip
	adds r2, #0x2d
	movs r5, #0
	ldrsb r5, [r2, r5]
	adds r2, r0, r5
	cmp r3, r2
	bgt _08086A0E
	asrs r0, r4, #0x18
	subs r0, r0, r1
	adds r0, r3, r0
	cmp r0, r2
	bge _08086A20
	cmp r3, r2
	blt _08086A2A
_08086A0E:
	mov r0, ip
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r2, r0
	cmp r0, r3
	blt _08086A2A
_08086A20:
	ldr r0, [sp, #4]
	bl sub_8010C88
_08086A26:
	movs r3, #1
	str r3, [sp]
_08086A2A:
	ldr r0, [sp]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08086A3C: .4byte gCamera

	thumb_func_start sub_8086A40
sub_8086A40: @ 0x08086A40
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r7, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	movs r1, #4
	ldrsh r0, [r7, r1]
	cmp r0, #0
	bne _08086A58
	b _08086B84
_08086A58:
	ldr r0, _08086A94 @ =sub_8086B94
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08086A98 @ =sub_80870AC
	str r1, [sp]
	movs r1, #0x50
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	str r7, [r6, #0x4c]
	strb r4, [r6, #0x16]
	ldr r2, _08086A9C @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _08086AA0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08086AA4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08086AA8
	movs r0, #0x80
	lsls r0, r0, #2
	b _08086AAC
	.align 2, 0
_08086A94: .4byte sub_8086B94
_08086A98: .4byte sub_80870AC
_08086A9C: .4byte gPseudoRandom
_08086AA0: .4byte 0x00196225
_08086AA4: .4byte 0x3C6EF35F
_08086AA8:
	movs r0, #0x80
	lsls r0, r0, #1
_08086AAC:
	str r0, [r6, #0xc]
	ldrb r0, [r6, #0x16]
	cmp r0, #2
	bne _08086AC8
	movs r2, #0x94
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r0, [r0]
	str r0, [r6, #8]
	movs r0, #0
	strh r0, [r6, #0x14]
	movs r0, #1
	strb r0, [r7, #3]
	b _08086AE0
_08086AC8:
	ldr r0, [r6, #0xc]
	rsbs r0, r0, #0
	str r0, [r6, #0xc]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	str r0, [r6, #8]
	movs r0, #0
	strh r0, [r6, #0x14]
	movs r0, #1
	strb r0, [r7, #2]
_08086AE0:
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #3
	movs r2, #0x86
	lsls r2, r2, #1
	adds r0, r7, r2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r6]
	adds r2, #4
	adds r0, r7, r2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r6, #4]
	movs r0, #0
	mov r8, r0
	movs r4, #0
	movs r0, #1
	strh r0, [r6, #0x10]
	strh r4, [r6, #0x12]
	movs r0, #0x96
	lsls r0, r0, #2     @ SE_MINECART_DESTROYED
	bl m4aSongNumStart
	adds r3, r6, #0
	adds r3, #0x18
	adds r5, r6, #0
	adds r5, #0x40
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r3, #0xc]
	mov r1, r8
	strb r1, [r3, #0x1a]
	movs r0, #0xb0
	lsls r0, r0, #2
	strh r0, [r3, #0x14]
	strh r4, [r3, #0xe]
	strh r4, [r3, #0x16]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	strb r1, [r3, #0x1f]
	subs r0, #0x11
	str r0, [r3, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r3, #8]
	ldrb r0, [r6, #0x16]
	cmp r0, #2
	bne _08086B56
	ldr r0, [r7, #0x1c]
	str r0, [r6, #0x18]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r3, #8]
	b _08086B5A
_08086B56:
	ldr r0, [r7, #0x20]
	str r0, [r6, #0x18]
_08086B5A:
	ldr r0, [r6]
	asrs r0, r0, #8
	ldr r2, _08086B90 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r3, #0x10]
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r3, #0x12]
	ldrh r0, [r6, #0x14]
	strh r0, [r5]
	ldrh r0, [r3, #0x10]
	strh r0, [r5, #6]
	ldrh r0, [r3, #0x12]
	strh r0, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5, #2]
	strh r0, [r5, #4]
_08086B84:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08086B90: .4byte gCamera

	thumb_func_start sub_8086B94
sub_8086B94: @ 0x08086B94
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _08086BDC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r7, [r4, #0x4c]
	adds r0, #0x18
	adds r6, r1, r0
	ldr r2, _08086BE0 @ =0x03000040
	adds r2, r2, r1
	mov r8, r2
	movs r0, #0
	mov sb, r0
	ldrb r0, [r7]
	cmp r0, #0
	bne _08086BCA
	ldrh r0, [r4, #0x12]
	cmp r0, #0
	bne _08086BCA
	movs r0, #0x64
	strh r0, [r4, #0x12]
_08086BCA:
	ldrh r0, [r4, #0x12]
	cmp r0, #0x64
	beq _08086C0C
	cmp r0, #0x64
	bgt _08086BE4
	cmp r0, #0
	beq _08086BEA
	b _08086C38
	.align 2, 0
_08086BDC: .4byte gCurTask
_08086BE0: .4byte 0x03000040
_08086BE4:
	cmp r0, #0x6e
	beq _08086C28
	b _08086C38
_08086BEA:
	ldr r0, [r4, #4]
	ldr r1, [r4, #0xc]
	adds r1, r0, r1
	str r1, [r4, #4]
	ldrb r0, [r4, #0x16]
	cmp r0, #2
	bne _08086C00
	ldr r0, [r4, #8]
	cmp r1, r0
	blt _08086C38
	b _08086C06
_08086C00:
	ldr r0, [r4, #8]
	cmp r1, r0
	bgt _08086C38
_08086C06:
	movs r0, #0x64
	strh r0, [r4, #0x12]
	b _08086C38
_08086C0C:
	movs r1, #0
	ldr r0, _08086C24 @ =0x00000501
	strh r0, [r6, #0xc]
	strb r1, [r6, #0x1a]
	movs r0, #0x90          @ SE_CAPSULE_DESTROY
	bl m4aSongNumStart
	movs r0, #0x15
	strh r0, [r4, #0x10]
	movs r0, #0x6e
	strh r0, [r4, #0x12]
	b _08086C38
	.align 2, 0
_08086C24: .4byte 0x00000501
_08086C28:
	ldrh r0, [r4, #0x10]
	subs r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08086C38
	movs r1, #1
	mov sb, r1
_08086C38:
	ldr r0, _08086C7C @ =gCamera
	adds r0, #0x6a
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r1, r1, #8
	ldr r0, [r4]
	adds r0, r0, r1
	movs r1, #0x80
	lsls r1, r1, #3
	adds r2, r0, r1
	str r2, [r4]
	ldr r5, [r7, #0x28]
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08086CA6
	asrs r1, r2, #8
	ldr r2, [r4, #4]
	asrs r2, r2, #8
	str r5, [sp]
	adds r0, r6, #0
	movs r3, #0
	bl sub_8010184
	cmp r0, #0
	beq _08086C80
	adds r0, r5, #0
	movs r1, #1
	bl sub_801038C
	b _08086CA6
	.align 2, 0
_08086C7C: .4byte gCamera
_08086C80:
	ldr r1, [r4]
	asrs r1, r1, #8
	ldr r2, [r4, #4]
	asrs r2, r2, #8
	str r5, [sp]
	adds r0, r6, #0
	movs r3, #0
	bl sub_8010288
	cmp r0, #0
	beq _08086CA6
	ldrh r0, [r4, #0x12]
	cmp r0, #0
	bne _08086CA0
	movs r0, #0x64
	strh r0, [r4, #0x12]
_08086CA0:
	adds r0, r5, #0
	bl sub_8010C88
_08086CA6:
	ldr r5, [r7, #0x2c]
	ldr r0, _08086CF0 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #5
	bne _08086CFC
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08086CFC
	ldr r1, [r4]
	asrs r1, r1, #8
	ldr r2, [r4, #4]
	asrs r2, r2, #8
	str r5, [sp]
	adds r0, r6, #0
	movs r3, #0
	bl sub_8010184
	cmp r0, #0
	beq _08086CFC
	adds r0, r7, #0
	adds r0, #0x70
	ldrb r0, [r0]
	cmp r0, #0
	beq _08086CF4
	ldrh r0, [r4, #0x12]
	cmp r0, #0
	bne _08086CE6
	movs r0, #0x64
	strh r0, [r4, #0x12]
_08086CE6:
	adds r0, r5, #0
	bl sub_8010C58
	b _08086CFC
	.align 2, 0
_08086CF0: .4byte gStageData
_08086CF4:
	adds r0, r5, #0
	movs r1, #1
	bl sub_801038C
_08086CFC:
	mov r2, sb
	cmp r2, #0
	beq _08086D20
	ldrb r0, [r4, #0x16]
	cmp r0, #2
	bne _08086D0E
	movs r0, #0
	strb r0, [r7, #3]
	b _08086D12
_08086D0E:
	movs r0, #0
	strb r0, [r7, #2]
_08086D12:
	ldr r0, _08086D1C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08086D50
	.align 2, 0
_08086D1C: .4byte gCurTask
_08086D20:
	ldr r0, [r4]
	asrs r0, r0, #8
	ldr r2, _08086D60 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r6, #0x10]
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r6, #0x12]
	ldrh r0, [r4, #0x14]
	mov r1, r8
	strh r0, [r1]
	ldrh r0, [r6, #0x10]
	strh r0, [r1, #6]
	ldrh r0, [r6, #0x12]
	strh r0, [r1, #8]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_08086D50:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08086D60: .4byte gCamera

	thumb_func_start sub_8086D64
sub_8086D64: @ 0x08086D64
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	mov r8, r1
	adds r4, r2, #0
	mov sb, r3
	ldr r5, [sp, #0x24]
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r7, sb
	lsls r7, r7, #0x10
	adds r0, r7, #0
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r0, _08086E40 @ =Task_8086E58
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08086E44 @ =TaskDestructor_8087234
	str r1, [sp]
	movs r1, #0x38
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r3, r2, r3
	ldr r7, _08086E48 @ =0x03000010
	adds r2, r2, r7
	movs r0, #0
	mov sl, r0
	strb r5, [r3, #0xe]
	movs r5, #0
	mov ip, r5
	mov r7, sl
	strh r7, [r3, #0xc]
	ldr r5, _08086E4C @ =gSineTable
	ldr r1, _08086E50 @ =0x000003FF
	mov r0, sb
	ands r1, r0
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r1, r7
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r7, #0
	ldrsh r0, [r0, r7]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	muls r0, r4, r0
	asrs r0, r0, #0xe
	strh r0, [r3, #8]
	lsls r1, r1, #1
	adds r1, r1, r5
	movs r5, #0
	ldrsh r0, [r1, r5]
	muls r0, r4, r0
	asrs r0, r0, #0xe
	strh r0, [r3, #0xa]
	ldr r7, [sp, #0x28]
	str r7, [r2]
	ldr r0, _08086E54 @ =0x000004F9
	strh r0, [r2, #0xc]
	mov r0, ip
	strb r0, [r2, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r2, #0x14]
	mov r5, sl
	strh r5, [r2, #0xe]
	strh r5, [r2, #0x16]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	movs r0, #0x10
	strb r0, [r2, #0x1c]
	mov r7, ip
	strb r7, [r2, #0x1f]
	subs r0, #0x11
	str r0, [r2, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r2, #8]
	lsls r6, r6, #0x10
	asrs r6, r6, #8
	str r6, [r3]
	mov r0, r8
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	str r0, [r3, #4]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08086E40: .4byte Task_8086E58
_08086E44: .4byte TaskDestructor_8087234
_08086E48: .4byte 0x03000010
_08086E4C: .4byte gSineTable
_08086E50: .4byte 0x000003FF
_08086E54: .4byte 0x000004F9

	thumb_func_start Task_8086E58
Task_8086E58: @ 0x08086E58
	push {r4, r5, lr}
	ldr r2, _08086E80 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0x10
	adds r5, r1, r0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08086E84
	ldr r0, [r2]
	bl TaskDestroy
	b _08086ECC
	.align 2, 0
_08086E80: .4byte gCurTask
_08086E84:
	ldr r3, _08086ED4 @ =gCamera
	adds r0, r3, #0
	adds r0, #0x6a
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #8
	ldr r1, [r4]
	adds r1, r1, r0
	movs r2, #8
	ldrsh r0, [r4, r2]
	adds r1, r1, r0
	str r1, [r4]
	ldrh r0, [r4, #0xc]
	ldrh r2, [r4, #0xa]
	adds r0, r0, r2
	strh r0, [r4, #0xa]
	movs r0, #0xa
	ldrsh r2, [r4, r0]
	ldr r0, [r4, #4]
	adds r0, r0, r2
	str r0, [r4, #4]
	asrs r1, r1, #8
	ldr r0, [r3]
	subs r1, r1, r0
	strh r1, [r5, #0x10]
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	ldr r1, [r3, #4]
	subs r0, r0, r1
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_08086ECC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08086ED4: .4byte gCamera

	thumb_func_start sub_8086ED8
sub_8086ED8: @ 0x08086ED8
	push {r4, lr}
	ldrh r4, [r0, #6]
	ldr r1, _08086F00 @ =0x0300038C
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08086EEA
	bl VramFree
_08086EEA:
	ldr r1, _08086F04 @ =0x03000454
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08086EF8
	bl VramFree
_08086EF8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08086F00: .4byte 0x0300038C
_08086F04: .4byte 0x03000454

	thumb_func_start sub_8086F08
sub_8086F08: @ 0x08086F08
	push {r4, r5, lr}
	ldr r5, _08086F3C @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, _08086F40 @ =0x0000023F @ SE_EXTRA_BOSS_578
	bl m4aSongNumStart
	adds r0, r4, #0
	bl sub_808211C
	adds r0, r4, #0
	bl sub_8082388
	adds r0, r4, #0
	bl sub_8082794
	ldr r1, [r5]
	ldr r0, _08086F44 @ =sub_8086F48
	str r0, [r1, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08086F3C: .4byte gCurTask
_08086F40: .4byte 0x0000023F
_08086F44: .4byte sub_8086F48

	thumb_func_start sub_8086F48
sub_8086F48: @ 0x08086F48
	push {r4, lr}
	ldr r0, _08086F9C @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_8087174
	adds r0, r4, #0
	bl sub_808211C
	ldr r1, _08086FA0 @ =gUnknown_08E2ED50
	ldrb r0, [r4, #1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_80862D8
	adds r0, r4, #0
	bl sub_8084EB4
	adds r0, r4, #0
	bl sub_8082428
	adds r0, r4, #0
	bl sub_8082388
	adds r0, r4, #0
	bl sub_8082794
	adds r0, r4, #0
	bl sub_8081EFC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08086F9C: .4byte gCurTask
_08086FA0: .4byte gUnknown_08E2ED50

	thumb_func_start sub_8086FA4
sub_8086FA4: @ 0x08086FA4
	push {r4, lr}
	ldr r0, _08086FDC @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_808211C
	ldr r1, _08086FE0 @ =gUnknown_08E2ED50
	ldrb r0, [r4, #1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_8082388
	adds r0, r4, #0
	bl sub_8082D08
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08086FDC: .4byte gCurTask
_08086FE0: .4byte gUnknown_08E2ED50

	thumb_func_start sub_8086FE4
sub_8086FE4: @ 0x08086FE4
	push {lr}
	ldr r0, _08086FF4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	pop {r0}
	bx r0
	.align 2, 0
_08086FF4: .4byte gCurTask

	thumb_func_start sub_8086FF8
sub_8086FF8: @ 0x08086FF8
	push {lr}
	adds r2, r0, #0
	adds r0, #0xed
	strb r1, [r0]
	ldrb r0, [r0]
	cmp r0, #7
	beq _0808700C
	cmp r0, #8
	beq _0808701C
	b _0808702A
_0808700C:
	adds r1, r2, #0
	adds r1, #0xb0
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r1]
	adds r1, #4
	movs r0, #0
	b _08087028
_0808701C:
	adds r1, r2, #0
	adds r1, #0xa4
	ldr r0, _08087030 @ =0xFFFFFE00
	str r0, [r1]
	adds r1, #4
	ldr r0, _08087034 @ =0xFFFFFF00
_08087028:
	str r0, [r1]
_0808702A:
	pop {r0}
	bx r0
	.align 2, 0
_08087030: .4byte 0xFFFFFE00
_08087034: .4byte 0xFFFFFF00

	thumb_func_start sub_8087038
sub_8087038: @ 0x08087038
	adds r0, #0xef
	strb r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_8087040
sub_8087040: @ 0x08087040
	bx lr
	.align 2, 0

	thumb_func_start sub_8087044
sub_8087044: @ 0x08087044
	lsls r1, r1, #0x18
	ldr r2, _08087064 @ =0x00000814
	adds r0, r0, r2
	ldr r3, _08087068 @ =gUnknown_080D5D0C
	lsrs r1, r1, #0x16
	adds r2, r1, r3
	ldrh r2, [r2]
	strh r2, [r0, #0xc]
	adds r3, #2
	adds r1, r1, r3
	ldrh r1, [r1]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	bx lr
	.align 2, 0
_08087064: .4byte 0x00000814
_08087068: .4byte gUnknown_080D5D0C

	thumb_func_start sub_808706C
sub_808706C: @ 0x0808706C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0
	movs r7, #0xed
	lsls r7, r7, #2
	movs r6, #0
	ldr r3, _08087094 @ =0x000004FE
	movs r5, #1
_08087080:
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r7
	adds r0, r4, r0
	cmp r1, #0
	bne _08087098
	strh r3, [r0, #0xc]
	strb r5, [r0, #0x1a]
	b _0808709C
	.align 2, 0
_08087094: .4byte 0x000004FE
_08087098:
	strh r3, [r0, #0xc]
	strb r6, [r0, #0x1a]
_0808709C:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _08087080
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80870AC
sub_80870AC: @ 0x080870AC
	bx lr
	.align 2, 0

	thumb_func_start sub_80870B0
sub_80870B0: @ 0x080870B0
	push {lr}
	adds r2, r0, #0
	ldr r1, _080870DC @ =gUnknown_080D5D18
	ldrb r0, [r2, #0xa]
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #0
	strb r0, [r2, #1]
	ldrb r0, [r2, #0xa]
	adds r0, #1
	strb r0, [r2, #0xa]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _080870D0
	strb r1, [r2, #0xa]
_080870D0:
	movs r0, #1
	strh r0, [r2, #4]
	strh r1, [r2, #8]
	pop {r0}
	bx r0
	.align 2, 0
_080870DC: .4byte gUnknown_080D5D18

    thumb_func_start sub_080870E0
sub_080870E0:
    movs r0, #0
    bx lr
	.align 2, 0

	thumb_func_start sub_80870E4
sub_80870E4: @ 0x080870E4
	push {lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _0808710C @ =gBgOffsetsHBlankPrimary
	ldr r0, [r0]
	ldr r2, _08087110 @ =gBgOffsetsBuffer
	cmp r0, r2
	bne _0808711C
	mov r0, sp
	strh r1, [r0]
	ldr r0, _08087114 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	str r2, [r0, #4]
	ldr r1, _08087118 @ =0x81000140
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	b _08087132
	.align 2, 0
_0808710C: .4byte gBgOffsetsHBlankPrimary
_08087110: .4byte gBgOffsetsBuffer
_08087114: .4byte 0x040000D4
_08087118: .4byte 0x81000140
_0808711C:
	mov r0, sp
	strh r1, [r0]
	ldr r1, _08087138 @ =0x040000D4
	str r0, [r1]
	movs r3, #0xa0
	lsls r3, r3, #2
	adds r0, r2, r3
	str r0, [r1, #4]
	ldr r0, _0808713C @ =0x81000140
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08087132:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08087138: .4byte 0x040000D4
_0808713C: .4byte 0x81000140

	thumb_func_start sub_8087140
sub_8087140: @ 0x08087140
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r0, _08087170 @ =gBgOffsetsHBlankPrimary
	ldr r3, [r0]
	lsls r0, r1, #1
	adds r3, r3, r0
	cmp r1, r2
	bhs _08087168
_0808715A:
	strh r4, [r3]
	adds r3, #2
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, r2
	blo _0808715A
_08087168:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08087170: .4byte gBgOffsetsHBlankPrimary

	thumb_func_start sub_8087174
sub_8087174: @ 0x08087174
	movs r1, #0
	str r1, [r0, #0x34]
	bx lr
	.align 2, 0

	thumb_func_start sub_808717C
sub_808717C: @ 0x0808717C
	ldr r1, [r0, #0x34]
	movs r2, #1
	orrs r1, r2
	str r1, [r0, #0x34]
	bx lr
	.align 2, 0

	thumb_func_start sub_8087188
sub_8087188: @ 0x08087188
	push {r4, lr}
	mov ip, r0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r0, [r0, #0x34]
	movs r4, #2
	orrs r0, r4
	mov r4, ip
	str r0, [r4, #0x34]
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	lsrs r1, r1, #0x1f
	adds r4, r4, r1
	asrs r4, r4, #1
	mov r0, ip
	str r4, [r0, #0x48]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	str r2, [r0, #0x4c]
	rsbs r1, r4, #0
	adds r0, #0x3c
	strb r1, [r0]
	rsbs r0, r3, #0
	mov r1, ip
	adds r1, #0x3d
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x3e
	strb r4, [r0]
	adds r0, #1
	strb r3, [r0]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_80871CC
sub_80871CC: @ 0x080871CC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	mov r8, r1
	movs r6, #0
	movs r4, #0
_080871DC:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xed
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	lsls r3, r4, #1
	adds r3, r3, r4
	lsls r3, r3, #3
	movs r2, #0x86
	lsls r2, r2, #1
	adds r1, r5, r2
	adds r1, r1, r3
	ldr r1, [r1]
	asrs r1, r1, #8
	movs r7, #0x88
	lsls r7, r7, #1
	adds r2, r5, r7
	adds r2, r2, r3
	ldr r2, [r2]
	asrs r2, r2, #8
	mov r3, r8
	str r3, [sp]
	movs r3, #0
	bl sub_8010184
	cmp r0, #1
	bne _0808721A
	movs r6, #1
	b _08087224
_0808721A:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _080871DC
_08087224:
	adds r0, r6, #0
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start TaskDestructor_8087234
TaskDestructor_8087234: @ 0x08087234
	bx lr
	.align 2, 0

	thumb_func_start sub_8087238
sub_8087238: @ 0x08087238
	bx lr
	.align 2, 0

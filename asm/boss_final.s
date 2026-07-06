.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ void* unk
	thumb_func_start CreateHyperEggRobo
CreateHyperEggRobo: @ 0x0807B6C8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _0807B704 @ =Task_HyperEggRoboInit
	movs r1, #0xd6
	lsls r1, r1, #2     @ 0x358
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r3, _0807B708 @ =TaskDestructor_HyperEggRobo
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r2, r2, r1
	mov ip, r2
	ldr r2, _0807B70C @ =gStageData
	adds r1, r2, #0
	adds r1, #0x88
	str r0, [r1]
	ldrb r0, [r2, #1]
	cmp r0, #0
	bne _0807B710
	movs r0, #8
	b _0807B712
	.align 2, 0
_0807B704: .4byte Task_HyperEggRoboInit
_0807B708: .4byte TaskDestructor_HyperEggRobo
_0807B70C: .4byte gStageData
_0807B710:
	movs r0, #6
_0807B712:
	mov r1, ip
	strb r0, [r1]
	mov r0, ip
	str r4, [r0, #4]
	movs r3, #0
	movs r0, #1
	mov r1, ip
	strh r0, [r1, #0x14]
	strh r3, [r1, #0x16]
	strh r0, [r1, #8]
	strh r3, [r1, #0xc]
	ldr r2, _0807B7E8 @ =gPlayers
	str r2, [r1, #0x20]
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	mov r1, ip
	str r0, [r1, #0x24]
	movs r0, #0x94
	lsls r0, r0, #2
	add r0, ip
	str r3, [r0]
	movs r0, #0x8a
	lsls r0, r0, #2
	add r0, ip
	str r3, [r0]
	movs r1, #0
	ldr r5, _0807B7EC @ =gDispCnt
	ldr r6, _0807B7F0 @ =gBgScrollRegs
	ldr r7, _0807B7F4 @ =gBgCntRegs
	ldr r0, _0807B7F8 @ =gBgSprites_Unknown1
	mov r8, r0
	ldr r4, _0807B7FC @ =gBgSprites_Unknown2
	mov r2, ip
	adds r2, #0x7c
_0807B768:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r2, r0
	str r3, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _0807B768
	movs r0, #0
	mov r1, ip
	str r0, [r1, #0x18]
	movs r1, #0
	movs r2, #0xb2
	lsls r2, r2, #2
	add r2, ip
	movs r3, #0
_0807B78C:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r2, r0
	str r3, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #2
	bls _0807B78C
	movs r0, #0x9e
	lsls r0, r0, #2
	add r0, ip
	movs r2, #0
	str r2, [r0]
	movs r0, #0xa8
	lsls r0, r0, #2
	add r0, ip
	str r2, [r0]
	ldrh r1, [r5]
	ldr r0, _0807B800 @ =0x0000FEFF
	ands r0, r1
	strh r0, [r5]
	movs r1, #0
	strh r2, [r6]
	strh r2, [r6, #2]
	ldr r0, _0807B804 @ =0x00009B0E
	strh r0, [r7]
	mov r0, r8
	strb r1, [r0]
	strb r1, [r4]
	strb r1, [r4, #1]
	movs r0, #0xff
	strb r0, [r4, #2]
	movs r0, #0x20
	strb r0, [r4, #3]
	mov r0, ip
	bl sub_807C074
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807B7E8: .4byte gPlayers
_0807B7EC: .4byte gDispCnt
_0807B7F0: .4byte gBgScrollRegs
_0807B7F4: .4byte gBgCntRegs
_0807B7F8: .4byte gBgSprites_Unknown1
_0807B7FC: .4byte gBgSprites_Unknown2
_0807B800: .4byte 0x0000FEFF
_0807B804: .4byte 0x00009B0E

	thumb_func_start Task_807B808
Task_807B808: @ 0x0807B808
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _0807B854 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r5, [r4, #0x20]
	ldr r6, [r4, #0x24]
	adds r0, r4, #0
	bl sub_807C14C
	adds r0, r4, #0
	bl sub_80816C0
	mov r1, sp
	mov r0, sp
	movs r2, #0
	mov r8, r2
	movs r7, #0
	strh r7, [r0, #2]
	strh r7, [r1]
	ldrh r1, [r4, #0xc]
	cmp r1, #0x64
	beq _0807B8B0
	cmp r1, #0x64
	bgt _0807B858
	cmp r1, #0
	beq _0807B874
	cmp r1, #0xa
	beq _0807B896
	b _0807B9A8
	.align 2, 0
_0807B854: .4byte gCurTask
_0807B858:
	cmp r1, #0xc8
	bne _0807B85E
	b _0807B95E
_0807B85E:
	cmp r1, #0xc8
	bgt _0807B868
	cmp r1, #0x6e
	beq _0807B94C
	b _0807B9A8
_0807B868:
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp r1, r0
	bne _0807B872
	b _0807B99C
_0807B872:
	b _0807B9A8
_0807B874:
	movs r0, #0xc
	bl sub_807FB7C
	movs r0, #0
	bl sub_807FB7C
	movs r0, #0xa
	bl sub_807FB7C
	movs r0, #0xb
	bl sub_807FB7C
	movs r0, #5
	strh r0, [r4, #8]
	movs r0, #0xa
	strh r0, [r4, #0xc]
	b _0807B9A8
_0807B896:
	ldrh r0, [r4, #8]
	subs r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0807B8A4
	b _0807B9A8
_0807B8A4:
	movs r0, #0x36
	bl sub_80299D4
	movs r0, #0x64
	strh r0, [r4, #0xc]
	b _0807B9A8
_0807B8B0:
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	ldr r1, _0807B8C4 @ =0x0000068C
	cmp r0, r1
	ble _0807B8CC
	ldr r0, _0807B8C8 @ =0x00068D00
	str r0, [r5, #0x10]
	strh r7, [r5, #0x1c]
	strh r7, [r5, #0x18]
	b _0807B8D2
	.align 2, 0
_0807B8C4: .4byte 0x0000068C
_0807B8C8: .4byte 0x00068D00
_0807B8CC:
	mov r1, sp
	movs r0, #0x10
	strh r0, [r1]
_0807B8D2:
	ldr r0, [r6, #0x10]
	asrs r0, r0, #8
	ldr r1, _0807B8E8 @ =0x00000664
	cmp r0, r1
	ble _0807B8F0
	ldr r0, _0807B8EC @ =0x00066500
	str r0, [r6, #0x10]
	movs r0, #0
	strh r0, [r6, #0x1c]
	strh r0, [r6, #0x18]
	b _0807B8FC
	.align 2, 0
_0807B8E8: .4byte 0x00000664
_0807B8EC: .4byte 0x00066500
_0807B8F0:
	mov r2, sp
	mov r0, sp
	ldrh r1, [r0, #2]
	movs r0, #0x10
	orrs r0, r1
	strh r0, [r2, #2]
_0807B8FC:
	ldrh r1, [r5, #0x1e]
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r5, #0x1e]
	eors r1, r0
	ands r1, r0
	strh r1, [r5, #0x20]
	ldrh r1, [r6, #0x1e]
	mov r0, sp
	ldrh r0, [r0, #2]
	strh r0, [r6, #0x1e]
	eors r1, r0
	ands r1, r0
	strh r1, [r6, #0x20]
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	ldr r1, _0807B948 @ =0x0000068C
	cmp r0, r1
	ble _0807B9A8
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	cmp r0, #0xb2
	ble _0807B9A8
	ldr r0, [r6, #0x10]
	asrs r0, r0, #8
	subs r1, #0x28
	cmp r0, r1
	ble _0807B9A8
	ldr r0, [r6, #0x14]
	asrs r0, r0, #8
	cmp r0, #0xb2
	ble _0807B9A8
	movs r0, #0x1e
	strh r0, [r4, #8]
	movs r0, #0x6e
	strh r0, [r4, #0xc]
	b _0807B9A8
	.align 2, 0
_0807B948: .4byte 0x0000068C
_0807B94C:
	ldrh r0, [r4, #8]
	subs r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807B9A8
	movs r0, #0xc8
	strh r0, [r4, #0xc]
	b _0807B9A8
_0807B95E:
	ldr r1, _0807B994 @ =gCamera
	movs r0, #0x10
	str r0, [r1, #0x10]
	adds r0, r4, #0
	bl sub_807BCCC
	adds r0, r4, #0
	bl sub_807BEF0
	adds r0, r4, #0
	bl sub_807D6C4
	adds r0, r4, #0
	bl sub_807CBC8
	mov r0, r8
	strb r0, [r4, #0x10]
	strb r0, [r4, #0x12]
	movs r0, #1
	strh r0, [r4, #8]
	strh r7, [r4, #0xc]
	mov r2, sb
	ldr r1, [r2]
	ldr r0, _0807B998 @ =sub_807B9B8
	str r0, [r1, #8]
	b _0807B9A8
	.align 2, 0
_0807B994: .4byte gCamera
_0807B998: .4byte sub_807B9B8
_0807B99C:
	strh r7, [r5, #0x1c]
	strh r7, [r5, #0x18]
	strh r7, [r6, #0x1c]
	strh r7, [r6, #0x18]
	bl sub_807A4A8
_0807B9A8:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_807B9B8
sub_807B9B8: @ 0x0807B9B8
	push {r4, lr}
	sub sp, #4
	ldr r3, _0807B9E8 @ =gCurTask
	ldr r0, [r3]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
	ldrh r0, [r4, #0xc]
	cmp r0, #0x14
	bne _0807B9D0
	b _0807BAD0
_0807B9D0:
	cmp r0, #0x14
	bgt _0807B9F6
	cmp r0, #0xa
	beq _0807BA80
	cmp r0, #0xa
	bgt _0807B9EC
	cmp r0, #0
	beq _0807BA26
	cmp r0, #1
	beq _0807BA30
	b _0807BBD4
	.align 2, 0
_0807B9E8: .4byte gCurTask
_0807B9EC:
	cmp r0, #0xb
	beq _0807BAAA
	cmp r0, #0xc
	beq _0807BA94
	b _0807BBD4
_0807B9F6:
	cmp r0, #0x1f
	bne _0807B9FC
	b _0807BB64
_0807B9FC:
	cmp r0, #0x1f
	bgt _0807BA0C
	cmp r0, #0x15
	beq _0807BAE2
	cmp r0, #0x1e
	bne _0807BA0A
	b _0807BB30
_0807BA0A:
	b _0807BBD4
_0807BA0C:
	cmp r0, #0x64
	bne _0807BA12
	b _0807BBB0
_0807BA12:
	cmp r0, #0x64
	bgt _0807BA1E
	cmp r0, #0x20
	bne _0807BA1C
	b _0807BB8E
_0807BA1C:
	b _0807BBD4
_0807BA1E:
	cmp r0, #0xc8
	bne _0807BA24
	b _0807BBC2
_0807BA24:
	b _0807BBD4
_0807BA26:
	movs r0, #0x3c
	strh r0, [r4, #8]
	movs r0, #1
	strh r0, [r4, #0xc]
	b _0807BBD4
_0807BA30:
	ldrh r0, [r4, #8]
	subs r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0807BA3E
	b _0807BBD4
_0807BA3E:
	ldr r0, _0807BA78 @ =0x00000237
	bl m4aSongNumStart
	movs r0, #0x78
	strh r0, [r4, #8]
	movs r0, #0xa
	strh r0, [r4, #0xc]
	ldr r2, _0807BA7C @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0xd3
	str r1, [sp]
	movs r1, #4
	movs r2, #0
	bl CreateScreenShake
	movs r0, #0xd2
	bl sub_807FB7C
	b _0807BBD4
	.align 2, 0
_0807BA78: .4byte 0x00000237
_0807BA7C: .4byte gDispCnt
_0807BA80:
	ldrh r0, [r4, #8]
	subs r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0807BA8E
	b _0807BBD4
_0807BA8E:
	movs r0, #0xc
	strh r0, [r4, #0xc]
	b _0807BBD4
_0807BA94:
	ldr r1, _0807BACC @ =0x03000120
	adds r0, r2, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	cmp r0, #0xb7
	bgt _0807BAAA
	movs r0, #0xdc
	bl sub_807FB7C
	movs r0, #0xb
	strh r0, [r4, #0xc]
_0807BAAA:
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r4, r3
	ldr r1, [r0]
	subs r1, #0x80
	str r1, [r0]
	movs r0, #0x98
	lsls r0, r0, #8
	cmp r1, r0
	ble _0807BAC0
	b _0807BBD4
_0807BAC0:
	movs r0, #0x3c
	strh r0, [r4, #8]
	movs r0, #0x14
	strh r0, [r4, #0xc]
	b _0807BBD4
	.align 2, 0
_0807BACC: .4byte 0x03000120
_0807BAD0:
	ldrh r0, [r4, #8]
	subs r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807BBD4
	movs r0, #0x15
	strh r0, [r4, #0xc]
	b _0807BBD4
_0807BAE2:
	ldr r0, _0807BB1C @ =0x03000144
	adds r1, r2, r0
	ldr r0, [r1]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	str r0, [r1]
	ldr r0, _0807BB20 @ =0x0300016C
	adds r2, r2, r0
	ldr r0, [r2]
	ldr r3, _0807BB24 @ =0xFFFFFF00
	adds r0, r0, r3
	str r0, [r2]
	ldr r1, [r1]
	ldr r0, _0807BB28 @ =0x000613FF
	cmp r1, r0
	ble _0807BBD4
	movs r0, #0x1e
	strh r0, [r4, #8]
	strh r0, [r4, #0xc]
	ldr r0, _0807BB2C @ =0x00000237
	bl m4aSongNumStop
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_8081A74
	b _0807BBD4
	.align 2, 0
_0807BB1C: .4byte 0x03000144
_0807BB20: .4byte 0x0300016C
_0807BB24: .4byte 0xFFFFFF00
_0807BB28: .4byte 0x000613FF
_0807BB2C: .4byte 0x00000237
_0807BB30:
	ldrh r0, [r4, #8]
	subs r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807BBD4
	movs r0, #0x24
	strh r0, [r4, #8]
	movs r0, #0x1f
	strh r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_8081A74
	adds r0, r4, #0
	movs r1, #0
	movs r2, #4
	bl UpdateHandAnimation
	adds r0, r4, #0
	movs r1, #1
	movs r2, #4
	bl UpdateHandAnimation
	b _0807BBD4
_0807BB64:
	ldrh r0, [r4, #8]
	subs r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807BBD4
	movs r0, #0x24
	strh r0, [r4, #8]
	movs r0, #0x20
	strh r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #5
	bl UpdateHandAnimation
	adds r0, r4, #0
	movs r1, #1
	movs r2, #5
	bl UpdateHandAnimation
	b _0807BBD4
_0807BB8E:
	ldrh r0, [r4, #8]
	subs r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807BBD4
	movs r0, #0xfa
	bl sub_807FB7C
	movs r0, #0x14
	bl sub_807FB7C
	movs r0, #0x1e
	strh r0, [r4, #8]
	movs r0, #0x64
	strh r0, [r4, #0xc]
	b _0807BBD4
_0807BBB0:
	ldrh r0, [r4, #8]
	subs r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807BBD4
	movs r0, #0xc8
	strh r0, [r4, #0xc]
	b _0807BBD4
_0807BBC2:
	movs r2, #0
	movs r1, #0
	movs r0, #1
	strh r0, [r4, #8]
	strh r1, [r4, #0xc]
	strb r2, [r4, #1]
	ldr r1, [r3]
	ldr r0, _0807BC00 @ =sub_807BC04
	str r0, [r1, #8]
_0807BBD4:
	adds r0, r4, #0
	bl sub_807BD88
	adds r0, r4, #0
	bl sub_807BFEC
	adds r0, r4, #0
	bl sub_807DB60
	adds r0, r4, #0
	bl sub_807D81C
	adds r0, r4, #0
	bl sub_807C14C
	adds r0, r4, #0
	bl sub_80816C0
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0807BC00: .4byte sub_807BC04

	thumb_func_start sub_807BC04
sub_807BC04: @ 0x0807BC04
	push {r4, r5, lr}
	ldr r0, _0807BC84 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r1, _0807BC88 @ =gUnknown_08E2ED00
	ldrb r0, [r4, #1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_807ED8C
	adds r0, r4, #0
	bl sub_807BD88
	adds r0, r4, #0
	bl sub_807DB60
	adds r0, r4, #0
	bl sub_807D81C
	adds r0, r4, #0
	bl sub_807BFEC
	adds r0, r4, #0
	bl sub_807C14C
	adds r0, r4, #0
	bl sub_80816C0
	ldr r0, _0807BC8C @ =gStageData
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0807BC90 @ =gPlayers
	adds r4, r0, r1
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	cmp r0, #0xd9
	ble _0807BCBA
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0807BC98
	movs r0, #0xa0
	bl sub_807FB7C
	ldr r1, _0807BC94 @ =Player_HitWithoutRingsUpdate
	adds r0, r4, #0
	bl SetPlayerCallback
	b _0807BCBA
	.align 2, 0
_0807BC84: .4byte gCurTask
_0807BC88: .4byte gUnknown_08E2ED00
_0807BC8C: .4byte gStageData
_0807BC90: .4byte gPlayers
_0807BC94: .4byte Player_HitWithoutRingsUpdate
_0807BC98:
	ldr r1, [r4]
	ldr r5, _0807BCC0 @ =Player_HitWithoutRingsUpdate
	cmp r1, r5
	beq _0807BCBA
	ldr r0, _0807BCC4 @ =sub_800913C
	cmp r1, r0
	beq _0807BCBA
	ldr r0, _0807BCC8 @ =sub_800DF9C
	cmp r1, r0
	beq _0807BCBA
	movs r0, #0xa0
	bl sub_807FB7C
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
_0807BCBA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0807BCC0: .4byte Player_HitWithoutRingsUpdate
_0807BCC4: .4byte sub_800913C
_0807BCC8: .4byte sub_800DF9C

	thumb_func_start sub_807BCCC
sub_807BCCC: @ 0x0807BCCC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	mov ip, r0
	movs r0, #0xf4
	lsls r0, r0, #1
	add r0, ip
	movs r1, #0x92
	lsls r1, r1, #1
	add r1, ip
	movs r4, #0
	str r4, [r1]
	movs r1, #0x94
	lsls r1, r1, #1
	add r1, ip
	str r4, [r1]
	movs r2, #0x96
	lsls r2, r2, #1
	add r2, ip
	movs r1, #0
	mov r8, r1
	movs r1, #1
	strh r1, [r2]
	movs r1, #0x97
	lsls r1, r1, #1
	add r1, ip
	strh r4, [r1]
	movs r2, #0x8e
	lsls r2, r2, #1
	add r2, ip
	movs r1, #0xcf
	lsls r1, r1, #0xb
	str r1, [r2]
	movs r1, #0x90
	lsls r1, r1, #1
	add r1, ip
	movs r3, #0xb0
	lsls r3, r3, #9
	str r3, [r1]
	ldr r6, _0807BD70 @ =gBgScrollRegs
	ldr r1, [r2]
	asrs r1, r1, #8
	ldr r5, _0807BD74 @ =gCamera
	ldr r2, [r5]
	subs r1, r1, r2
	movs r2, #0x80
	subs r1, r2, r1
	strh r1, [r6]
	asrs r3, r3, #8
	ldr r1, [r5, #4]
	subs r3, r3, r1
	subs r2, r2, r3
	strh r2, [r6, #2]
	ldr r1, _0807BD78 @ =0x0600C000
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _0807BD7C @ =0x0600D800
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	ldr r1, _0807BD80 @ =0x000001D3
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	movs r1, #0x20
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	ldr r1, _0807BD84 @ =0x00000212
	add r1, ip
	mov r2, r8
	strb r2, [r1]
	strh r4, [r0, #0x2e]
	bl DrawBackground
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0807BD70: .4byte gBgScrollRegs
_0807BD74: .4byte gCamera
_0807BD78: .4byte 0x0600C000
_0807BD7C: .4byte 0x0600D800
_0807BD80: .4byte 0x000001D3
_0807BD84: .4byte 0x00000212

	thumb_func_start sub_807BD88
sub_807BD88: @ 0x0807BD88
	push {r4, r5, r6, lr}
	mov ip, r0
	movs r3, #0x97
	lsls r3, r3, #1
	add r3, ip
	ldrh r0, [r3]
	cmp r0, #0xa
	beq _0807BDA2
	cmp r0, #0xa
	ble _0807BE1A
	cmp r0, #0x14
	beq _0807BDFC
	b _0807BE1A
_0807BDA2:
	movs r5, #0x8e
	lsls r5, r5, #1
	add r5, ip
	movs r4, #0x92
	lsls r4, r4, #1
	add r4, ip
	ldr r2, _0807BDF8 @ =gUnknown_080D5C80
	movs r3, #0x96
	lsls r3, r3, #1
	add r3, ip
	movs r1, #0
	ldrsh r0, [r3, r1]
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r6, #0
	ldrsh r1, [r0, r6]
	lsls r1, r1, #8
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r5]
	movs r5, #0x90
	lsls r5, r5, #1
	add r5, ip
	movs r4, #0x94
	lsls r4, r4, #1
	add r4, ip
	movs r1, #0
	ldrsh r0, [r3, r1]
	lsls r0, r0, #2
	adds r2, #2
	adds r0, r0, r2
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r1, r1, #8
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r5]
	ldrh r0, [r3]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	b _0807BE18
	.align 2, 0
_0807BDF8: .4byte gUnknown_080D5C80
_0807BDFC:
	movs r2, #0x90
	lsls r2, r2, #1
	add r2, ip
	movs r1, #0x94
	lsls r1, r1, #1
	add r1, ip
	ldr r0, [r2]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r2]
	ldr r1, _0807BE4C @ =0x00015FFF
	cmp r0, r1
	ble _0807BE1A
	movs r0, #0
_0807BE18:
	strh r0, [r3]
_0807BE1A:
	ldr r4, _0807BE50 @ =gBgScrollRegs
	movs r0, #0x8e
	lsls r0, r0, #1
	add r0, ip
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r3, _0807BE54 @ =gCamera
	ldr r1, [r3]
	subs r0, r0, r1
	movs r2, #0x80
	subs r0, r2, r0
	strh r0, [r4]
	movs r0, #0x90
	lsls r0, r0, #1
	add r0, ip
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, [r3, #4]
	subs r0, r0, r1
	subs r2, r2, r0
	strh r2, [r4, #2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0807BE4C: .4byte 0x00015FFF
_0807BE50: .4byte gBgScrollRegs
_0807BE54: .4byte gCamera

	thumb_func_start sub_807BE58
sub_807BE58: @ 0x0807BE58
	push {r4, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	cmp r3, #1
	beq _0807BEA4
	cmp r3, #1
	bgt _0807BE6E
	cmp r3, #0
	beq _0807BE74
	b _0807BEE8
_0807BE6E:
	cmp r3, #0xa
	beq _0807BECC
	b _0807BEE8
_0807BE74:
	movs r0, #0x92
	lsls r0, r0, #1
	adds r1, r2, r0
	movs r4, #0x8e
	lsls r4, r4, #1
	adds r0, r2, r4
	ldr r0, [r0]
	str r0, [r1]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r1, r2, r0
	adds r4, #4
	adds r0, r2, r4
	ldr r0, [r0]
	str r0, [r1]
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r2, r1
	strh r3, [r0]
	movs r3, #0x97
	lsls r3, r3, #1
	adds r1, r2, r3
	movs r0, #0xa
	b _0807BEE6
_0807BEA4:
	movs r4, #0x97
	lsls r4, r4, #1
	adds r1, r2, r4
	movs r0, #0
	strh r0, [r1]
	movs r0, #0x8e
	lsls r0, r0, #1
	adds r1, r2, r0
	movs r3, #0x92
	lsls r3, r3, #1
	adds r0, r2, r3
	ldr r0, [r0]
	str r0, [r1]
	subs r4, #0xe
	adds r1, r2, r4
	adds r3, #4
	adds r0, r2, r3
	ldr r0, [r0]
	str r0, [r1]
	b _0807BEE8
_0807BECC:
	movs r4, #0x94
	lsls r4, r4, #1
	adds r1, r2, r4
	movs r0, #0x80
	str r0, [r1]
	adds r0, #0xac
	adds r1, r2, r0
	movs r0, #0
	strh r0, [r1]
	movs r3, #0x97
	lsls r3, r3, #1
	adds r1, r2, r3
	movs r0, #0x14
_0807BEE6:
	strh r0, [r1]
_0807BEE8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_807BEF0
sub_807BEF0: @ 0x0807BEF0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	movs r0, #0x98
	lsls r0, r0, #1
	add r0, sl
	mov r8, r0
	movs r0, #0x8e
	lsls r0, r0, #1
	add r0, sl
	ldr r0, [r0]
	mov r1, r8
	str r0, [r1]
	movs r0, #0x9a
	lsls r0, r0, #1
	add r0, sl
	mov sb, r0
	movs r0, #0x90
	lsls r0, r0, #1
	add r0, sl
	ldr r0, [r0]
	ldr r1, _0807BFDC @ =0xFFFFB800
	adds r0, r0, r1
	mov r1, sb
	str r0, [r1]
	movs r7, #0x94
	lsls r7, r7, #2
	add r7, sl
	movs r0, #0x10
	bl VramMalloc
	str r0, [r7]
	movs r6, #0
	movs r5, #0
	ldr r0, _0807BFE0 @ =0x000004F2 @ ANIM_BOSS_FINAL_GLASS
	strh r0, [r7, #0xc]
	strb r6, [r7, #0x1a]
	adds r0, #0x8e
	strh r0, [r7, #0x14]
	strh r5, [r7, #0xe]
	strh r5, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r1, #0x10
	strb r1, [r7, #0x1c]
	strb r6, [r7, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x20]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r7, #8]
	mov r1, r8
	ldr r0, [r1]
	asrs r0, r0, #8
	ldr r4, _0807BFE4 @ =gCamera
	ldr r1, [r4]
	subs r0, r0, r1
	strh r0, [r7, #0x10]
	mov r1, sb
	ldr r0, [r1]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	movs r7, #0x8a
	lsls r7, r7, #2
	add r7, sl
	movs r0, #8
	bl VramMalloc
	str r0, [r7]
	ldr r0, _0807BFE8 @ =0x000004F3 @ ANIM_BOSS_FINAL_EGGMAN
	strh r0, [r7, #0xc]
	strb r6, [r7, #0x1a]
	adds r0, #0x8d
	strh r0, [r7, #0x14]
	strh r5, [r7, #0xe]
	strh r5, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	movs r1, #0x10
	strb r1, [r7, #0x1c]
	strb r6, [r7, #0x1f]
	str r0, [r7, #0x20]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r7, #8]
	mov r1, r8
	ldr r0, [r1]
	asrs r0, r0, #8
	ldr r1, [r4]
	subs r0, r0, r1
	strh r0, [r7, #0x10]
	mov r1, sb
	ldr r0, [r1]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807BFDC: .4byte 0xFFFFB800
_0807BFE0: .4byte 0x000004F2
_0807BFE4: .4byte gCamera
_0807BFE8: .4byte 0x000004F3

	thumb_func_start sub_807BFEC
sub_807BFEC: @ 0x0807BFEC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	movs r5, #0x98
	lsls r5, r5, #1
	add r5, r8
	movs r0, #0x8e
	lsls r0, r0, #1
	add r0, r8
	ldr r0, [r0]
	str r0, [r5]
	movs r6, #0x9a
	lsls r6, r6, #1
	add r6, r8
	movs r0, #0x90
	lsls r0, r0, #1
	add r0, r8
	ldr r0, [r0]
	ldr r1, _0807C06C @ =0xFFFFB800
	adds r0, r0, r1
	str r0, [r6]
	movs r7, #0x8a
	lsls r7, r7, #2
	add r7, r8
	ldr r0, [r5]
	asrs r0, r0, #8
	ldr r4, _0807C070 @ =gCamera
	ldr r1, [r4]
	subs r0, r0, r1
	strh r0, [r7, #0x10]
	ldr r0, [r6]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	movs r7, #0x94
	lsls r7, r7, #2
	add r7, r8
	ldr r0, [r5]
	asrs r0, r0, #8
	ldr r1, [r4]
	subs r0, r0, r1
	strh r0, [r7, #0x10]
	ldr r0, [r6]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl DisplaySprite
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807C06C: .4byte 0xFFFFB800
_0807C070: .4byte gCamera

	thumb_func_start sub_807C074
sub_807C074: @ 0x0807C074
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	movs r0, #0x15
	bl VramMalloc
	mov sl, r0
	movs r6, #0
	movs r0, #0
	mov sb, r0
	movs r7, #0
	ldr r2, _0807C140 @ =gCamera
	mov r8, r2
_0807C094:
	lsls r3, r6, #2
	adds r3, r3, r6
	lsls r4, r3, #3
	adds r4, #0x7c
	adds r4, r5, r4
	mov r0, sl
	str r0, [r4]
	ldr r0, _0807C144 @ =0x000003BF @ ANIM_BOSS_7_WIDE_PLATFORM
	strh r0, [r4, #0xc]
	mov r2, sb
	strb r2, [r4, #0x1a]
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r7, [r4, #0xe]
	strh r7, [r4, #0x16]
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
	lsls r3, r3, #2
	adds r1, r5, r3
	movs r0, #1
	strh r0, [r1, #0x3c]
	strh r7, [r1, #0x3e]
	adds r0, r5, #0
	adds r0, #0x34
	adds r0, r0, r3
	str r7, [r0]
	adds r0, r5, #0
	adds r0, #0x38
	adds r0, r0, r3
	str r7, [r0]
	adds r1, r5, #0
	adds r1, #0x2c
	adds r1, r1, r3
	lsls r0, r6, #4
	subs r0, r0, r6
	lsls r0, r0, #2
	subs r0, r0, r6
	ldr r2, _0807C148 @ =0x0000061F
	adds r0, r0, r2
	lsls r0, r0, #8
	str r0, [r1]
	adds r2, r5, #0
	adds r2, #0x30
	adds r2, r2, r3
	movs r0, #0xcc
	lsls r0, r0, #8
	str r0, [r2]
	ldr r0, [r1]
	asrs r0, r0, #8
	mov r3, r8
	ldr r1, [r3]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r2]
	asrs r0, r0, #8
	ldr r1, [r3, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r4, #0x27
	ldrb r0, [r4]
	adds r0, #0x20
	strb r0, [r4]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _0807C094
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807C140: .4byte gCamera
_0807C144: .4byte 0x000003BF
_0807C148: .4byte 0x0000061F

	thumb_func_start sub_807C14C
sub_807C14C: @ 0x0807C14C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	movs r0, #0
	mov r8, r0
_0807C15C:
	ldrb r0, [r6]
	mov r1, r8
	lsls r1, r1, #2
	mov ip, r1
	adds r1, r6, #0
	adds r1, #0x38
	cmp r0, #0
	bne _0807C18E
	mov r0, ip
	add r0, r8
	lsls r0, r0, #2
	adds r3, r6, r0
	ldrh r2, [r3, #0x3e]
	cmp r2, #0x64
	beq _0807C17E
	cmp r2, #0x6e
	bne _0807C18E
_0807C17E:
	adds r2, r6, #0
	adds r2, #0x38
	adds r1, r2, r0
	ldr r0, _0807C1C0 @ =0xFFFFFC00
	str r0, [r1]
	movs r0, #0xc8
	strh r0, [r3, #0x3e]
	adds r1, r2, #0
_0807C18E:
	mov r0, ip
	add r0, r8
	lsls r0, r0, #2
	adds r2, r6, #0
	adds r2, #0x30
	adds r4, r2, r0
	ldr r7, [r4]
	adds r5, r1, r0
	ldr r1, [r5]
	adds r1, r7, r1
	str r1, [r4]
	subs r7, r7, r1
	adds r3, r6, r0
	ldrh r0, [r3, #0x3e]
	mov sb, r2
	cmp r0, #0x64
	beq _0807C1C4
	cmp r0, #0x64
	ble _0807C208
	cmp r0, #0x6e
	beq _0807C1DC
	cmp r0, #0xc8
	beq _0807C1F8
	b _0807C208
	.align 2, 0
_0807C1C0: .4byte 0xFFFFFC00
_0807C1C4:
	ldr r0, _0807C1D8 @ =0x0000F3FF
	cmp r1, r0
	ble _0807C208
	adds r0, #1
	str r0, [r4]
	movs r0, #0x78
	strh r0, [r3, #0x3c]
	movs r0, #0x6e
	b _0807C206
	.align 2, 0
_0807C1D8: .4byte 0x0000F3FF
_0807C1DC:
	ldrh r0, [r3, #0x3c]
	subs r0, #1
	strh r0, [r3, #0x3c]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807C208
	ldr r0, [r5]
	rsbs r0, r0, #0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	str r0, [r5]
	movs r0, #0xc8
	b _0807C206
_0807C1F8:
	movs r0, #0xcc
	lsls r0, r0, #8
	cmp r1, r0
	bgt _0807C208
	str r0, [r4]
	movs r0, #0
	str r0, [r5]
_0807C206:
	strh r0, [r3, #0x3e]
_0807C208:
	mov r2, ip
	add r2, r8
	lsls r0, r2, #3
	adds r0, #0x7c
	adds r0, r6, r0
	lsls r2, r2, #2
	adds r1, r6, #0
	adds r1, #0x2c
	adds r1, r1, r2
	ldr r1, [r1]
	add r2, sb
	ldr r2, [r2]
	str r7, [sp]
	movs r3, #0
	bl sub_807C374
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #3
	bls _0807C15C
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_807C244
sub_807C244: @ 0x0807C244
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sb, r0
	mov r8, r1
	adds r7, r2, #0
	str r3, [sp, #4]
	ldr r0, [sp, #0x2c]
	mov sl, r0
	ldr r0, _0807C2BC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	str r1, [sp, #8]
	movs r6, #0
	movs r5, #0
_0807C26E:
	lsls r0, r5, #2
	ldr r1, [sp, #8]
	adds r1, #0x20
	adds r1, r1, r0
	ldr r4, [r1]
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _0807C356
	ldr r1, [r4, #4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0807C2CC
	ldr r0, [r4, #0x6c]
	cmp r0, sb
	bne _0807C2CC
	ldr r0, [r4, #0x10]
	ldr r2, [sp, #4]
	subs r0, r0, r2
	str r0, [r4, #0x10]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	bne _0807C2C0
	ldr r0, [r4, #0x14]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	mov r2, sl
	subs r0, r0, r2
	str r0, [r4, #0x14]
	movs r0, #1
	lsls r0, r5
	orrs r6, r0
	lsls r0, r6, #0x18
	lsrs r6, r0, #0x18
	b _0807C2CC
	.align 2, 0
_0807C2BC: .4byte gCurTask
_0807C2C0:
	ldr r0, [r4, #0x14]
	mov r1, sl
	subs r0, r0, r1
	ldr r2, _0807C31C @ =0xFFFFFE00
	adds r0, r0, r2
	str r0, [r4, #0x14]
_0807C2CC:
	ldr r1, [r4, #0x10]
	mov r2, r8
	subs r0, r1, r2
	cmp r0, #0
	bge _0807C2DA
	mov r2, r8
	subs r0, r2, r1
_0807C2DA:
	asrs r0, r0, #8
	cmp r0, #0x40
	bgt _0807C356
	ldr r1, [r4, #0x14]
	subs r0, r1, r7
	cmp r0, #0
	bge _0807C2EA
	subs r0, r7, r1
_0807C2EA:
	asrs r0, r0, #8
	cmp r0, #0x40
	bgt _0807C356
	movs r0, #0
	str r0, [sp]
	mov r0, sb
	mov r2, r8
	asrs r1, r2, #8
	asrs r2, r7, #8
	adds r3, r4, #0
	bl sub_8020950
	adds r2, r0, #0
	movs r3, #0x80
	lsls r3, r3, #9
	ands r3, r2
	cmp r3, #0
	beq _0807C320
	lsls r1, r2, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	b _0807C33C
	.align 2, 0
_0807C31C: .4byte 0xFFFFFE00
_0807C320:
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _0807C33C
	ldr r1, [r4, #0x14]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	lsls r0, r2, #0x18
	asrs r0, r0, #0x10
	adds r1, r1, r0
	str r1, [r4, #0x14]
	strh r3, [r4, #0x1a]
_0807C33C:
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r2
	cmp r0, #0
	beq _0807C356
	lsls r0, r2, #0x10
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	ldr r1, [r4, #0x10]
	adds r1, r1, r0
	str r1, [r4, #0x10]
	movs r0, #0
	strh r0, [r4, #0x18]
_0807C356:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0807C26E
	adds r0, r6, #0
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_807C374
sub_807C374: @ 0x0807C374
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sb, r0
	mov r8, r1
	adds r7, r2, #0
	str r3, [sp, #4]
	ldr r0, [sp, #0x2c]
	mov sl, r0
	ldr r0, _0807C434 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	str r1, [sp, #8]
	movs r6, #0
	movs r5, #0
_0807C39E:
	lsls r0, r5, #2
	ldr r1, [sp, #8]
	adds r1, #0x20
	adds r1, r1, r0
	ldr r4, [r1]
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _0807C46E
	ldr r0, [r4, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0807C3DC
	ldr r0, [r4, #0x6c]
	cmp r0, sb
	bne _0807C3DC
	ldr r0, [r4, #0x10]
	ldr r1, [sp, #4]
	subs r0, r0, r1
	str r0, [r4, #0x10]
	mov r2, sl
	cmp r2, #0
	beq _0807C3DC
	ldr r0, [r4, #0x14]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	subs r0, r0, r2
	str r0, [r4, #0x14]
_0807C3DC:
	ldr r1, [r4, #0x10]
	mov r2, r8
	subs r0, r1, r2
	cmp r0, #0
	bge _0807C3EA
	mov r2, r8
	subs r0, r2, r1
_0807C3EA:
	asrs r0, r0, #8
	cmp r0, #0x40
	bgt _0807C46E
	ldr r1, [r4, #0x14]
	subs r0, r1, r7
	cmp r0, #0
	bge _0807C3FA
	subs r0, r7, r1
_0807C3FA:
	asrs r0, r0, #8
	cmp r0, #0x40
	bgt _0807C46E
	movs r0, #0
	str r0, [sp]
	mov r0, sb
	mov r2, r8
	asrs r1, r2, #8
	asrs r2, r7, #8
	adds r3, r4, #0
	bl sub_8020950
	adds r2, r0, #0
	movs r3, #0x80
	lsls r3, r3, #9
	ands r3, r2
	cmp r3, #0
	beq _0807C438
	lsls r1, r2, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r0, #1
	lsls r0, r5
	orrs r6, r0
	lsls r0, r6, #0x18
	lsrs r6, r0, #0x18
	b _0807C454
	.align 2, 0
_0807C434: .4byte gCurTask
_0807C438:
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _0807C454
	ldr r1, [r4, #0x14]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	lsls r0, r2, #0x18
	asrs r0, r0, #0x10
	adds r1, r1, r0
	str r1, [r4, #0x14]
	strh r3, [r4, #0x1a]
_0807C454:
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r2
	cmp r0, #0
	beq _0807C46E
	lsls r0, r2, #0x10
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	ldr r1, [r4, #0x10]
	adds r1, r1, r0
	str r1, [r4, #0x10]
	movs r0, #0
	strh r0, [r4, #0x18]
_0807C46E:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0807C39E
	adds r0, r6, #0
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_807C48C
sub_807C48C: @ 0x0807C48C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r0, _0807C514 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	movs r5, #0
_0807C49E:
	lsls r0, r5, #2
	adds r1, r6, #0
	adds r1, #0x20
	adds r1, r1, r0
	ldr r4, [r1]
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _0807C504
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _0807C4C8
	cmp r1, #8
	beq _0807C4C8
	cmp r1, #0x10
	bne _0807C504
_0807C4C8:
	ldr r1, [r4, #4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0807C504
	ldr r0, [r4, #0x6c]
	cmp r0, r7
	bne _0807C504
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #4
	orrs r1, r0
	str r1, [r4, #4]
	movs r0, #0
	str r0, [r4, #0x6c]
	adds r0, r4, #0
	bl sub_8016F28
	adds r2, r4, #0
	adds r2, #0x2c
	ldrb r0, [r2]
	movs r3, #5
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl Player_8005380
_0807C504:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0807C49E
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807C514: .4byte gCurTask

	thumb_func_start sub_807C518
sub_807C518: @ 0x0807C518
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r1, r0, #3
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r1, r2
	adds r0, r0, r5
	mov r8, r0
	movs r2, #0x9e
	lsls r2, r2, #2
	adds r0, r1, r2
	adds r6, r5, r0
	movs r7, #0
_0807C540:
	lsls r0, r7, #2
	adds r1, r5, #0
	adds r1, #0x20
	adds r1, r1, r0
	ldr r4, [r1]
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _0807C5BA
	adds r0, r6, #0
	adds r0, #0x27
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	mov r1, r8
	ldr r2, [r1, #4]
	adds r0, r2, r0
	ldr r1, [r4, #0x14]
	adds r3, r2, #0
	cmp r1, r0
	ble _0807C5BA
	ldr r0, [r4, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0807C5A8
	adds r0, r5, #0
	adds r0, #0x7c
	ldr r1, [r4, #0x6c]
	cmp r1, r0
	beq _0807C594
	adds r0, #0x28
	cmp r1, r0
	beq _0807C594
	adds r0, #0x28
	cmp r1, r0
	beq _0807C594
	adds r0, #0x28
	cmp r1, r0
	bne _0807C5BA
_0807C594:
	mov r2, r8
	ldr r1, [r2]
	asrs r1, r1, #8
	asrs r2, r3, #8
	str r4, [sp]
	adds r0, r6, #0
	movs r3, #0
	bl sub_8020CE0
	b _0807C5BA
_0807C5A8:
	mov r0, r8
	ldr r1, [r0]
	asrs r1, r1, #8
	asrs r2, r2, #8
	str r4, [sp]
	adds r0, r6, #0
	movs r3, #0
	bl sub_8020CE0
_0807C5BA:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #1
	bls _0807C540
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_807C5D0
sub_807C5D0: @ 0x0807C5D0
	push {r4, r5, r6, lr}
	ldr r0, _0807C66C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	movs r6, #0
_0807C5E0:
	lsls r0, r6, #2
	adds r1, r5, #0
	adds r1, #0x20
	adds r1, r1, r0
	ldr r4, [r1]
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _0807C600
	cmp r1, #8
	beq _0807C600
	cmp r1, #0x10
	bne _0807C65C
_0807C600:
	adds r0, r4, #0
	bl sub_802C0D4
	adds r3, r0, #0
	cmp r3, #0
	bne _0807C65C
	ldr r2, [r4, #4]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _0807C65C
	adds r0, r5, #0
	adds r0, #0x7c
	ldr r1, [r4, #0x6c]
	cmp r1, r0
	beq _0807C65C
	adds r0, #0x28
	cmp r1, r0
	beq _0807C65C
	adds r0, #0x28
	cmp r1, r0
	beq _0807C65C
	adds r0, #0x28
	cmp r1, r0
	beq _0807C65C
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r2, r0
	movs r0, #4
	orrs r2, r0
	str r2, [r4, #4]
	str r3, [r4, #0x6c]
	adds r0, r4, #0
	bl sub_8016F28
	adds r2, r4, #0
	adds r2, #0x2c
	ldrb r0, [r2]
	movs r3, #5
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl Player_8005380
_0807C65C:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _0807C5E0
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0807C66C: .4byte gCurTask

	thumb_func_start sub_807C670
sub_807C670: @ 0x0807C670
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r5, #0
	ldr r1, _0807C6AC @ =gUnknown_080D5CA0
	mov r0, sp
	movs r2, #4
	bl memcpy
	ldr r2, _0807C6B0 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _0807C6B4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0807C6B8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	adds r2, r0, #0
	ldr r1, _0807C6BC @ =0x00002710
	bl __umodsi3
	adds r2, r0, #0
	ldr r0, _0807C6C0 @ =gStageData
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _0807C6C4
	ldrb r0, [r4]
	cmp r0, #4
	bhi _0807C6CC
	b _0807C6E4
	.align 2, 0
_0807C6AC: .4byte gUnknown_080D5CA0
_0807C6B0: .4byte gPseudoRandom
_0807C6B4: .4byte 0x00196225
_0807C6B8: .4byte 0x3C6EF35F
_0807C6BC: .4byte 0x00002710
_0807C6C0: .4byte gStageData
_0807C6C4:
	ldrb r0, [r4]
	cmp r0, #3
	bhi _0807C6CC
	movs r5, #1
_0807C6CC:
	cmp r5, #0
	bne _0807C6E4
	ldrb r0, [r4, #0x12]
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r4, #1]
	ldrb r0, [r4, #0x12]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	strb r0, [r4, #0x12]
	b _0807C718
_0807C6E4:
	ldr r0, _0807C6F0 @ =0x000009C3
	cmp r2, r0
	bhi _0807C6F4
	movs r0, #1
	b _0807C716
	.align 2, 0
_0807C6F0: .4byte 0x000009C3
_0807C6F4:
	ldr r0, _0807C700 @ =0x00001387
	cmp r2, r0
	bhi _0807C704
	movs r0, #2
	b _0807C716
	.align 2, 0
_0807C700: .4byte 0x00001387
_0807C704:
	ldr r0, _0807C710 @ =0x00001D4B
	cmp r2, r0
	bhi _0807C714
	movs r0, #3
	b _0807C716
	.align 2, 0
_0807C710: .4byte 0x00001D4B
_0807C714:
	movs r0, #4
_0807C716:
	strb r0, [r4, #1]
_0807C718:
	movs r1, #0
	movs r0, #1
	strh r0, [r4, #8]
	strh r1, [r4, #0xc]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_807C728
sub_807C728: @ 0x0807C728
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	movs r2, #0
	ldrh r1, [r4, #0xc]
	cmp r1, #0xa
	beq _0807C7EC
	cmp r1, #0xa
	bgt _0807C746
	cmp r1, #0
	beq _0807C752
	b _0807C892
_0807C746:
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp r1, r0
	bne _0807C750
	b _0807C86C
_0807C750:
	b _0807C892
_0807C752:
	movs r3, #0
	ldr r0, _0807C7DC @ =gPseudoRandom
	mov sl, r0
	movs r1, #0xca
	lsls r1, r1, #1
	adds r1, r1, r4
	mov ip, r1
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r7, r4, r2
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r6, r4, r0
	movs r1, #0x90
	lsls r1, r1, #1
	adds r5, r4, r1
	adds r2, #0x90
	mov sb, r2
	mov r8, r3
_0807C778:
	lsls r1, r3, #3
	subs r1, r1, r3
	lsls r1, r1, #2
	adds r0, r4, r1
	add r0, sb
	mov r2, r8
	strh r2, [r0]
	mov r0, ip
	adds r2, r0, r1
	ldr r0, [r7]
	str r0, [r2]
	adds r1, r6, r1
	ldr r0, [r5]
	ldr r2, _0807C7E0 @ =0xFFFFE000
	adds r0, r0, r2
	str r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #2
	bls _0807C778
	mov r0, sl
	ldr r1, [r0]
	ldr r0, _0807C7E4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0807C7E8 @ =0x3C6EF35F
	adds r0, r0, r1
	mov r2, sl
	str r0, [r2]
	movs r1, #1
	ands r0, r1
	strb r0, [r4, #2]
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r4, #0xa]
	strh r1, [r4, #8]
	movs r0, #0xa
	strh r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_807DB00
	adds r0, r4, #0
	movs r1, #1
	movs r2, #1
	bl sub_807DB00
	b _0807C892
	.align 2, 0
_0807C7DC: .4byte gPseudoRandom
_0807C7E0: .4byte 0xFFFFE000
_0807C7E4: .4byte 0x00196225
_0807C7E8: .4byte 0x3C6EF35F
_0807C7EC:
	ldrb r0, [r4, #2]
	cmp r0, #0
	bne _0807C800
	ldrh r0, [r4, #0xa]
	subs r0, #1
	strh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807C808
	b _0807C80C
_0807C800:
	ldrh r0, [r4, #0x16]
	cmp r0, #0
	beq _0807C808
	movs r2, #1
_0807C808:
	cmp r2, #0
	beq _0807C842
_0807C80C:
	movs r3, #0
	movs r6, #0xd6
	lsls r6, r6, #1
	movs r5, #0xd4
	lsls r5, r5, #1
	movs r2, #0xef
_0807C818:
	lsls r0, r3, #3
	subs r0, r0, r3
	lsls r0, r0, #2
	adds r1, r4, r0
	adds r0, r1, r6
	ldrh r0, [r0]
	cmp r0, #1
	bne _0807C82C
	adds r0, r1, r5
	strh r2, [r0]
_0807C82C:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #2
	bls _0807C818
	movs r0, #0x3c
	strh r0, [r4, #8]
	movs r0, #0xfa
	lsls r0, r0, #2
	strh r0, [r4, #0xc]
	b _0807C892
_0807C842:
	ldrh r0, [r4, #8]
	subs r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807C892
	adds r0, r4, #0
	bl sub_807CD4C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0807C866
	adds r0, r4, #0
	bl sub_807CDF0
	movs r0, #0x3c
	strh r0, [r4, #8]
	b _0807C892
_0807C866:
	movs r0, #1
	strh r0, [r4, #8]
	b _0807C892
_0807C86C:
	ldrh r0, [r4, #8]
	subs r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807C892
	adds r0, r4, #0
	movs r1, #0
	movs r2, #5
	bl sub_807DB00
	adds r0, r4, #0
	movs r1, #1
	movs r2, #5
	bl sub_807DB00
	adds r0, r4, #0
	bl sub_8081BBC
_0807C892:
	adds r0, r4, #0
	bl sub_807CFAC
	adds r0, r4, #0
	bl sub_807CCA8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_807C8AC
sub_807C8AC: @ 0x0807C8AC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0xc]
	cmp r1, #0x64
	beq _0807C960
	cmp r1, #0x64
	bgt _0807C8CE
	cmp r1, #0xa
	beq _0807C90C
	cmp r1, #0xa
	bgt _0807C8C8
	cmp r1, #0
	beq _0807C8EA
	b _0807C9B8
_0807C8C8:
	cmp r1, #0x14
	beq _0807C91E
	b _0807C9B8
_0807C8CE:
	movs r5, #0xfa
	lsls r5, r5, #1
	cmp r1, r5
	beq _0807C988
	cmp r1, r5
	bgt _0807C8E0
	cmp r1, #0xc8
	beq _0807C97A
	b _0807C9B8
_0807C8E0:
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp r1, r0
	beq _0807C99E
	b _0807C9B8
_0807C8EA:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #2
	bl sub_807DB00
	adds r0, r4, #0
	movs r1, #1
	movs r2, #2
	bl sub_807DB00
	movs r0, #0xf0
	strh r0, [r4, #8]
	movs r0, #1
	strb r0, [r4, #0xe]
	movs r0, #0xa
	strh r0, [r4, #0xc]
	b _0807C9B8
_0807C90C:
	ldrh r0, [r4, #8]
	subs r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807C9B8
	movs r0, #0x14
	strh r0, [r4, #0xc]
	b _0807C9B8
_0807C91E:
	ldr r2, _0807C950 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _0807C954 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0807C958 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	ldr r1, _0807C95C @ =0x00002710
	bl __umodsi3
	lsrs r0, r0, #2
	movs r1, #3
	ands r0, r1
	strb r0, [r4, #3]
	movs r0, #1
	strb r0, [r4, #2]
	ldrb r2, [r4, #3]
	adds r0, r4, #0
	movs r1, #1
	bl sub_807D8B4
	movs r0, #0x64
	strh r0, [r4, #0xc]
	b _0807C9B8
	.align 2, 0
_0807C950: .4byte gPseudoRandom
_0807C954: .4byte 0x00196225
_0807C958: .4byte 0x3C6EF35F
_0807C95C: .4byte 0x00002710
_0807C960:
	adds r0, r4, #0
	movs r1, #0
	bl sub_807D9B4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0807C9B8
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	movs r0, #0xc8
	strh r0, [r4, #0xc]
	b _0807C9B8
_0807C97A:
	adds r0, r4, #0
	movs r1, #0x14
	movs r2, #0
	bl sub_807D8B4
	strh r5, [r4, #0xc]
	b _0807C9B8
_0807C988:
	adds r0, r4, #0
	movs r1, #1
	bl sub_807D9B4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0807C9B8
	movs r0, #0xfa
	lsls r0, r0, #2
	strh r0, [r4, #0xc]
	b _0807C9B8
_0807C99E:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #5
	bl sub_807DB00
	adds r0, r4, #0
	movs r1, #1
	movs r2, #5
	bl sub_807DB00
	adds r0, r4, #0
	bl sub_8081BBC
_0807C9B8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_807C9C0
sub_807C9C0: @ 0x0807C9C0
	push {r4, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0xc]
	cmp r1, #0xa
	beq _0807CA00
	cmp r1, #0xa
	bgt _0807C9D4
	cmp r1, #0
	beq _0807C9DE
	b _0807CA30
_0807C9D4:
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp r1, r0
	beq _0807CA16
	b _0807CA30
_0807C9DE:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #3
	bl sub_807DB00
	adds r0, r4, #0
	movs r1, #1
	movs r2, #3
	bl sub_807DB00
	movs r0, #0
	movs r1, #1
	strh r1, [r4, #8]
	strb r0, [r4, #0xe]
	movs r0, #0xa
	strh r0, [r4, #0xc]
	b _0807CA30
_0807CA00:
	adds r0, r4, #0
	movs r1, #0
	bl sub_807D9B4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0807CA30
	movs r0, #0xfa
	lsls r0, r0, #2
	strh r0, [r4, #0xc]
	b _0807CA30
_0807CA16:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #5
	bl sub_807DB00
	adds r0, r4, #0
	movs r1, #1
	movs r2, #5
	bl sub_807DB00
	adds r0, r4, #0
	bl sub_8081BBC
_0807CA30:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_807CA38
sub_807CA38: @ 0x0807CA38
	push {r4, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0xc]
	cmp r1, #0x6e
	beq _0807CB00
	cmp r1, #0x6e
	bgt _0807CA5A
	cmp r1, #0xa
	beq _0807CA9A
	cmp r1, #0xa
	bgt _0807CA54
	cmp r1, #0
	beq _0807CA78
	b _0807CB70
_0807CA54:
	cmp r1, #0x64
	beq _0807CAAA
	b _0807CB70
_0807CA5A:
	movs r0, #0xff
	lsls r0, r0, #1
	cmp r1, r0
	beq _0807CB42
	cmp r1, r0
	bgt _0807CA6E
	subs r0, #0xa
	cmp r1, r0
	beq _0807CB32
	b _0807CB70
_0807CA6E:
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp r1, r0
	beq _0807CB56
	b _0807CB70
_0807CA78:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #4
	bl sub_807DB00
	adds r0, r4, #0
	movs r1, #1
	movs r2, #4
	bl sub_807DB00
	movs r0, #0
	movs r1, #1
	strh r1, [r4, #8]
	strb r0, [r4, #0xe]
	movs r0, #0xa
	strh r0, [r4, #0xc]
	b _0807CB70
_0807CA9A:
	adds r0, r4, #0
	movs r1, #2
	bl sub_807D9B4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0807CB70
	b _0807CB1C
_0807CAAA:
	ldrh r0, [r4, #8]
	subs r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807CABA
	movs r0, #0x6e
	strh r0, [r4, #0xc]
_0807CABA:
	movs r1, #8
	ldrsh r0, [r4, r1]
	cmp r0, #0xa
	bne _0807CB70
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _0807CAE4
	ldr r0, [r4, #0x20]
	ldr r0, [r0, #0x10]
	asrs r0, r0, #8
	ldr r1, _0807CADC @ =gCamera
	ldr r1, [r1]
	subs r0, r0, r1
	cmp r0, #0x77
	bgt _0807CAE0
	movs r0, #0
	b _0807CAE2
	.align 2, 0
_0807CADC: .4byte gCamera
_0807CAE0:
	movs r0, #1
_0807CAE2:
	strb r0, [r4, #2]
_0807CAE4:
	ldr r0, _0807CAFC @ =gUnknown_080D5C78
	ldrb r1, [r4, #2]
	lsls r1, r1, #2
	ldrb r2, [r4, #0xe]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r1, [r1]
	adds r0, r4, #0
	bl sub_807DA34
	b _0807CB70
	.align 2, 0
_0807CAFC: .4byte gUnknown_080D5C78
_0807CB00:
	adds r0, r4, #0
	movs r1, #2
	bl sub_807D9B4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0807CB70
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _0807CB26
_0807CB1C:
	movs r0, #0x1e
	strh r0, [r4, #8]
	movs r0, #0x64
	strh r0, [r4, #0xc]
	b _0807CB70
_0807CB26:
	movs r0, #0xff
	lsls r0, r0, #1
	strh r0, [r4, #0xc]
	movs r0, #0x3c
	strh r0, [r4, #8]
	b _0807CB70
_0807CB32:
	adds r0, r4, #0
	movs r1, #0
	bl sub_807D9B4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0807CB70
	b _0807CB4E
_0807CB42:
	ldrh r0, [r4, #8]
	subs r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807CB70
_0807CB4E:
	movs r0, #0xfa
	lsls r0, r0, #2
	strh r0, [r4, #0xc]
	b _0807CB70
_0807CB56:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #5
	bl sub_807DB00
	adds r0, r4, #0
	movs r1, #1
	movs r2, #5
	bl sub_807DB00
	adds r0, r4, #0
	bl sub_8081BBC
_0807CB70:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_807CB78
sub_807CB78: @ 0x0807CB78
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0xc]
	cmp r0, #0xa
	beq _0807CB90
	cmp r0, #0xa
	ble _0807CBC2
	cmp r0, #0x14
	beq _0807CBC2
	cmp r0, #0x64
	beq _0807CBB6
	b _0807CBC2
_0807CB90:
	ldrh r0, [r4, #8]
	subs r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807CBC2
	movs r0, #0x14
	strh r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0xa
	bl sub_807DB00
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0xa
	bl sub_807DB00
	b _0807CBC2
_0807CBB6:
	movs r2, #0
	movs r1, #0
	movs r0, #1
	strh r0, [r4, #8]
	strh r1, [r4, #0xc]
	strb r2, [r4, #1]
_0807CBC2:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_807CBC8
sub_807CBC8: @ 0x0807CBC8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	movs r0, #0x74
	bl VramMalloc
	str r0, [r5, #0x18]
	str r0, [sp]
	movs r6, #0
	movs r0, #0
	mov sl, r0
	movs r1, #0
	mov r8, r1
	ldr r2, _0807CCA4 @ =gCamera
	mov sb, r2
_0807CBEE:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	movs r3, #0xb2
	lsls r3, r3, #2
	adds r0, r0, r3
	adds r0, r5, r0
	ldr r7, [sp]
	str r7, [r0]
	movs r1, #0x9e
	lsls r1, r1, #3         @ r1 = ANIM_BOSS_FINAL_PROJ
	strh r1, [r0, #0xc]
	mov r1, sl
	strb r1, [r0, #0x1a]
	movs r1, #0xa0
	lsls r1, r1, #3
	strh r1, [r0, #0x14]
	mov r2, r8
	strh r2, [r0, #0xe]
	strh r2, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	mov r3, sl
	strb r3, [r0, #0x1f]
	subs r1, #0x11
	str r1, [r0, #0x20]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r0, #8]
	lsls r4, r6, #3
	subs r4, r4, r6
	lsls r4, r4, #2
	movs r7, #0xca
	lsls r7, r7, #1
	adds r2, r5, r7
	adds r2, r2, r4
	movs r1, #0xcf
	lsls r1, r1, #0xb
	str r1, [r2]
	movs r1, #0xcc
	lsls r1, r1, #1
	adds r3, r5, r1
	adds r3, r3, r4
	movs r1, #0xb0
	lsls r1, r1, #9
	str r1, [r3]
	ldr r1, [r2]
	asrs r1, r1, #8
	mov r7, sb
	ldr r2, [r7]
	subs r1, r1, r2
	strh r1, [r0, #0x10]
	ldr r1, [r3]
	asrs r1, r1, #8
	ldr r2, [r7, #4]
	subs r1, r1, r2
	strh r1, [r0, #0x12]
	bl UpdateSpriteAnimation
	adds r1, r5, r4
	movs r2, #0xd6
	lsls r2, r2, #1
	adds r0, r1, r2
	mov r3, r8
	strh r3, [r0]
	movs r7, #0xd7
	lsls r7, r7, #1
	adds r1, r1, r7
	movs r0, #1
	strh r0, [r1]
	ldr r0, [sp]
	movs r1, #0x90
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [sp]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #2
	bls _0807CBEE
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807CCA4: .4byte gCamera

	thumb_func_start sub_807CCA8
sub_807CCA8: @ 0x0807CCA8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	movs r7, #0
	ldr r0, _0807CD28 @ =gCamera
	mov r8, r0
_0807CCB6:
	lsls r0, r7, #3
	subs r0, r0, r7
	lsls r2, r0, #2
	adds r3, r6, r2
	movs r1, #0xd6
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	cmp r0, #0
	beq _0807CD38
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r0, r0, #3
	movs r4, #0xb2
	lsls r4, r4, #2
	adds r0, r0, r4
	adds r5, r6, r0
	subs r1, #0x18
	adds r0, r6, r1
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	mov r4, r8
	ldr r1, [r4]
	subs r0, r0, r1
	strh r0, [r5, #0x10]
	movs r1, #0xcc
	lsls r1, r1, #1
	adds r0, r6, r1
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r5, #0x12]
	movs r2, #0xd7
	lsls r2, r2, #1
	adds r4, r3, r2
	ldrh r1, [r4]
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _0807CD2C
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0807CD20
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_0807CD20:
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	b _0807CD38
	.align 2, 0
_0807CD28: .4byte gCamera
_0807CD2C:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_0807CD38:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #2
	bls _0807CCB6
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_807CD4C
sub_807CD4C: @ 0x0807CD4C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r7, #0
	movs r1, #0xd6
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r0, [r0]
	cmp r0, #0
	beq _0807CD7E
	movs r2, #0xe4
	lsls r2, r2, #1
	adds r0, r4, r2
	ldrh r0, [r0]
	cmp r0, #0
	beq _0807CD7E
	movs r3, #0xf2
	lsls r3, r3, #1
	adds r0, r4, r3
	ldrh r0, [r0]
	cmp r0, #0
	beq _0807CD7E
	movs r0, #0
	b _0807CDE6
_0807CD7A:
	movs r7, #1
	b _0807CDE4
_0807CD7E:
	movs r5, #0
	ldr r6, _0807CDEC @ =0x000017FF
_0807CD82:
	lsls r0, r5, #3
	subs r0, r0, r5
	lsls r3, r0, #2
	adds r0, r4, r3
	movs r1, #0xd6
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0
	beq _0807CDDA
	movs r2, #0xca
	lsls r2, r2, #1
	adds r0, r4, r2
	adds r0, r0, r3
	subs r2, #0x78
	adds r1, r4, r2
	ldr r2, [r0]
	ldr r0, [r1]
	subs r2, r2, r0
	movs r1, #0xcc
	lsls r1, r1, #1
	adds r0, r4, r1
	adds r0, r0, r3
	ldr r1, [r0]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r1, r3
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r4, r3
	ldr r0, [r0]
	subs r1, r1, r0
	adds r0, r2, #0
	muls r0, r2, r0
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r6
	bls _0807CD7A
_0807CDDA:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _0807CD82
_0807CDE4:
	adds r0, r7, #0
_0807CDE6:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0807CDEC: .4byte 0x000017FF

	thumb_func_start sub_807CDF0
sub_807CDF0: @ 0x0807CDF0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	movs r0, #0
	mov ip, r0
_0807CDFC:
	mov r2, ip
	lsls r1, r2, #3
	subs r0, r1, r2
	lsls r6, r0, #2
	adds r2, r5, r6
	movs r7, #0xd6
	lsls r7, r7, #1
	adds r3, r2, r7
	ldrh r4, [r3]
	adds r7, r1, #0
	cmp r4, #0
	beq _0807CE16
	b _0807CF86
_0807CE16:
	movs r0, #1
	strh r0, [r3]
	movs r1, #0xd4
	lsls r1, r1, #1
	adds r0, r2, r1
	strh r4, [r0]
	movs r3, #0xd7
	lsls r3, r3, #1
	adds r1, r2, r3
	movs r0, #0x1e
	strh r0, [r1]
	movs r0, #0xca
	lsls r0, r0, #1
	adds r1, r5, r0
	adds r1, r1, r6
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r0, r5, r2
	ldr r0, [r0]
	str r0, [r1]
	subs r3, #0x16
	adds r1, r5, r3
	adds r1, r1, r6
	adds r2, #4
	adds r0, r5, r2
	ldr r0, [r0]
	ldr r3, _0807CE78 @ =0xFFFFE000
	adds r0, r0, r3
	str r0, [r1]
	ldr r2, _0807CE7C @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _0807CE80 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0807CE84 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	ldr r1, _0807CE88 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsrs r0, r0, #0x17
	cmp r0, #7
	bhi _0807CEE4
	lsls r0, r0, #2
	ldr r1, _0807CE8C @ =_0807CE90
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0807CE78: .4byte 0xFFFFE000
_0807CE7C: .4byte gPseudoRandom
_0807CE80: .4byte 0x00196225
_0807CE84: .4byte 0x3C6EF35F
_0807CE88: .4byte 0x000003FF
_0807CE8C: .4byte _0807CE90
_0807CE90: @ jump table
	.4byte _0807CEB0 @ case 0
	.4byte _0807CEC2 @ case 1
	.4byte _0807CED0 @ case 2
	.4byte _0807CEB0 @ case 3
	.4byte _0807CEB0 @ case 4
	.4byte _0807CEC2 @ case 5
	.4byte _0807CED0 @ case 6
	.4byte _0807CEB0 @ case 7
_0807CEB0:
	mov r3, ip
	subs r0, r7, r3
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0xd5
	lsls r1, r1, #1
	adds r0, r0, r1
	strh r2, [r0]
	b _0807CEE4
_0807CEC2:
	mov r3, ip
	subs r0, r7, r3
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r1, r2, #0
	subs r1, #0x80
	b _0807CEDC
_0807CED0:
	mov r3, ip
	subs r0, r7, r3
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r1, r2, #0
	adds r1, #0x80
_0807CEDC:
	movs r2, #0xd5
	lsls r2, r2, #1
	adds r0, r0, r2
	strh r1, [r0]
_0807CEE4:
	mov r3, ip
	subs r0, r7, r3
	lsls r2, r0, #2
	movs r7, #0xd2
	lsls r7, r7, #1
	adds r0, r5, r7
	adds r6, r0, r2
	ldr r1, _0807CFA0 @ =gUnknown_080D5C50
	ldrb r0, [r5, #0x10]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	str r1, [r6]
	movs r3, #0xce
	lsls r3, r3, #1
	adds r0, r5, r3
	adds r4, r0, r2
	ldr r7, _0807CFA4 @ =gSineTable
	mov r8, r7
	adds r0, r5, r2
	movs r7, #0xd5
	lsls r7, r7, #1
	adds r3, r0, r7
	ldrh r0, [r3]
	subs r7, #0xaa
	adds r0, r0, r7
	lsls r0, r0, #1
	add r0, r8
	movs r7, #0
	ldrsh r0, [r0, r7]
	muls r0, r1, r0
	cmp r0, #0
	bge _0807CF2A
	ldr r1, _0807CFA8 @ =0x00003FFF
	adds r0, r0, r1
_0807CF2A:
	asrs r0, r0, #0xe
	str r0, [r4]
	movs r7, #0xd0
	lsls r7, r7, #1
	adds r0, r5, r7
	adds r2, r0, r2
	ldrh r0, [r3]
	lsls r0, r0, #1
	add r0, r8
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, [r6]
	muls r0, r1, r0
	cmp r0, #0
	bge _0807CF4C
	ldr r7, _0807CFA8 @ =0x00003FFF
	adds r0, r0, r7
_0807CF4C:
	asrs r0, r0, #0xe
	str r0, [r2]
	mov r1, ip
	lsls r0, r1, #2
	add r0, ip
	lsls r0, r0, #3
	movs r2, #0xb2
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r0, r5, r0
	movs r4, #0
	movs r1, #0x9e
	lsls r1, r1, #3
	strh r1, [r0, #0xc]
	strb r4, [r0, #0x1a]
	movs r0, #0x8e
	lsls r0, r0, #2
	bl m4aSongNumStart
	ldrb r0, [r5, #0x10]
	adds r0, #1
	strb r0, [r5, #0x10]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _0807CF82
	strb r4, [r5, #0x10]
_0807CF82:
	movs r3, #3
	mov ip, r3
_0807CF86:
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	cmp r0, #2
	bhi _0807CF96
	b _0807CDFC
_0807CF96:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807CFA0: .4byte gUnknown_080D5C50
_0807CFA4: .4byte gSineTable
_0807CFA8: .4byte 0x00003FFF

	thumb_func_start sub_807CFAC
sub_807CFAC: @ 0x0807CFAC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r7, r0, #0
	movs r0, #0
	str r0, [sp, #4]
_0807CFBE:
	ldr r1, [sp, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r2, #0xb2
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r0, r7, r0
	str r0, [sp, #0x10]
	lsls r1, r1, #3
	ldr r3, [sp, #4]
	subs r0, r1, r3
	lsls r4, r0, #2
	adds r5, r7, r4
	mov r8, r5
	movs r3, #0xd6
	lsls r3, r3, #1
	add r3, r8
	ldrh r5, [r3]
	str r1, [sp, #0x14]
	cmp r5, #1
	beq _0807D002
	ldr r6, [sp, #4]
	adds r6, #1
	cmp r5, #1
	bgt _0807CFF4
	b _0807D286
_0807CFF4:
	cmp r5, #0x64
	bne _0807CFFA
	b _0807D1F6
_0807CFFA:
	cmp r5, #0x6e
	bne _0807D000
	b _0807D270
_0807D000:
	b _0807D286
_0807D002:
	movs r1, #0xca
	lsls r1, r1, #1
	adds r0, r7, r1
	adds r0, r0, r4
	mov sl, r0
	ldr r3, [r0]
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r0, r7, r2
	adds r6, r0, r4
	ldr r0, [r6]
	mov sb, r0
	adds r1, #8
	adds r0, r7, r1
	adds r0, r0, r4
	ldr r0, [r0]
	adds r0, r3, r0
	mov r2, sl
	str r0, [r2]
	adds r1, #4
	adds r0, r7, r1
	adds r0, r0, r4
	ldr r1, [r6]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r6]
	adds r0, r7, #0
	ldr r1, [sp, #4]
	str r3, [sp, #0x18]
	bl sub_807D41C
	mov r2, sl
	ldr r0, [r2]
	ldr r3, [sp, #0x18]
	subs r3, r3, r0
	ldr r1, [r6]
	mov r0, sb
	subs r0, r0, r1
	mov sb, r0
	ldr r0, [sp, #0x10]
	adds r0, #0x27
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [sp, #0xc]
	movs r2, #0xca
	lsls r2, r2, #1
	adds r1, r4, r2
	adds r1, r7, r1
	adds r0, r7, #0
	str r3, [sp, #0x18]
	bl sub_807D37C
	movs r0, #0xd7
	lsls r0, r0, #1
	add r0, r8
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r3, [sp, #0x18]
	cmp r0, #0
	bne _0807D13C
	mov r2, sl
	ldr r1, [r2]
	ldr r2, [r6]
	mov r0, sb
	str r0, [sp]
	ldr r0, [sp, #0x10]
	bl sub_807C244
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r4, [r7, #0x20]
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _0807D0EE
	ldr r1, [sp, #8]
	ands r5, r1
	cmp r5, #0
	beq _0807D0CC
	ldr r0, [r6]
	asrs r0, r0, #8
	cmp r0, #0x20
	bgt _0807D0EE
	adds r0, r4, #0
	adds r0, #0x4a
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _0807D0EE
	ldrb r0, [r7]
	cmp r0, #0
	beq _0807D0EE
	adds r0, r4, #0
	bl Call__Player_8014550
	b _0807D0EE
_0807D0CC:
	ldr r0, [r4, #0x14]
	ldr r3, [sp, #0xc]
	cmp r0, r3
	ble _0807D0EE
	ldrb r0, [r7]
	cmp r0, #0
	beq _0807D0EE
	mov r5, sl
	ldr r1, [r5]
	asrs r1, r1, #8
	ldr r2, [r6]
	asrs r2, r2, #8
	str r4, [sp]
	ldr r0, [sp, #0x10]
	movs r3, #0
	bl sub_8020CE0
_0807D0EE:
	ldr r4, [r7, #0x24]
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _0807D13C
	movs r0, #2
	ldr r1, [sp, #8]
	ands r0, r1
	cmp r0, #0
	bne _0807D13C
	ldr r0, [r4, #0x14]
	ldr r2, [sp, #0xc]
	cmp r0, r2
	ble _0807D13C
	ldrb r0, [r7]
	cmp r0, #0
	beq _0807D13C
	ldr r3, [sp, #0x14]
	ldr r5, [sp, #4]
	subs r2, r3, r5
	lsls r2, r2, #2
	movs r1, #0xca
	lsls r1, r1, #1
	adds r0, r7, r1
	adds r0, r0, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	movs r3, #0xcc
	lsls r3, r3, #1
	adds r0, r7, r3
	adds r0, r0, r2
	ldr r2, [r0]
	asrs r2, r2, #8
	str r4, [sp]
	ldr r0, [sp, #0x10]
	movs r3, #0
	bl sub_8020CE0
_0807D13C:
	ldr r5, [sp, #0x14]
	ldr r1, [sp, #4]
	subs r0, r5, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	movs r2, #0xd4
	lsls r2, r2, #1
	adds r1, r0, r2
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _0807D1B2
	adds r0, r2, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb4
	beq _0807D1B2
	cmp r0, #0xf0
	bne _0807D1B2
	movs r0, #1
	ldr r5, [sp, #8]
	ands r0, r5
	cmp r0, #0
	beq _0807D182
	ldr r4, [r7, #0x20]
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _0807D182
	adds r0, r4, #0
	bl Call__Player_8014550
_0807D182:
	movs r0, #2
	ldr r1, [sp, #8]
	ands r0, r1
	cmp r0, #0
	beq _0807D19E
	ldr r4, [r7, #0x24]
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _0807D19E
	adds r0, r4, #0
	bl Call__Player_8014550
_0807D19E:
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #4]
	subs r0, r2, r3
	lsls r0, r0, #2
	adds r0, r7, r0
	movs r5, #0xd6
	lsls r5, r5, #1
	adds r0, r0, r5
	movs r1, #0x64
	strh r1, [r0]
_0807D1B2:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0807D1DA
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #4]
	subs r0, r1, r2
	lsls r0, r0, #2
	adds r0, r7, r0
	movs r3, #0xd4
	lsls r3, r3, #1
	adds r1, r0, r3
	movs r5, #0
	ldrsh r0, [r1, r5]
	adds r6, r2, #0
	adds r6, #1
	cmp r0, #0
	bne _0807D286
	movs r0, #1
	strh r0, [r1]
	b _0807D286
_0807D1DA:
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #4]
	subs r0, r1, r2
	lsls r0, r0, #2
	adds r0, r7, r0
	movs r3, #0xd4
	lsls r3, r3, #1
	adds r0, r0, r3
	mov r5, sp
	ldrh r5, [r5, #8]
	strh r5, [r0]
	adds r6, r2, #0
	adds r6, #1
	b _0807D286
_0807D1F6:
	movs r1, #0xd4
	lsls r1, r1, #1
	add r1, r8
	movs r4, #0
	movs r2, #0
	movs r0, #0x1e
	strh r0, [r1]
	movs r0, #0x6e
	strh r0, [r3]
	movs r0, #0xd7
	lsls r0, r0, #1
	add r0, r8
	strh r2, [r0]
	ldr r0, _0807D268 @ =0x00000239
	bl m4aSongNumStart
	ldr r0, _0807D26C @ =0x000004F6
	ldr r1, [sp, #0x10]
	strh r0, [r1, #0xc]
	strb r4, [r1, #0x1a]
	movs r2, #0
	str r2, [sp, #8]
	adds r2, r7, #0
	adds r2, #0x20
	movs r3, #0x20
	mov r8, r3
	movs r5, #0x21
	rsbs r5, r5, #0
	mov sb, r5
	movs r3, #0
_0807D232:
	ldr r1, [sp, #8]
	lsls r0, r1, #2
	adds r0, r2, r0
	ldr r4, [r0]
	ldr r1, [r4, #4]
	adds r0, r1, #0
	mov r5, r8
	ands r0, r5
	cmp r0, #0
	beq _0807D256
	ldr r0, [r4, #0x6c]
	ldr r5, [sp, #0x10]
	cmp r0, r5
	bne _0807D256
	mov r0, sb
	ands r1, r0
	str r1, [r4, #4]
	str r3, [r4, #0x6c]
_0807D256:
	ldr r0, [sp, #8]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	cmp r0, #1
	bls _0807D232
	b _0807D286
	.align 2, 0
_0807D268: .4byte 0x00000239
_0807D26C: .4byte 0x000004F6
_0807D270:
	movs r1, #0xd4
	lsls r1, r1, #1
	add r1, r8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _0807D286
	strh r0, [r3]
_0807D286:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	cmp r0, #2
	bhi _0807D292
	b _0807CFBE
_0807D292:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_807D2A4
sub_807D2A4: @ 0x0807D2A4
	push {r4, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r1, #0
	ldrh r2, [r3, #0x16]
	cmp r1, #1
	beq _0807D2E2
	cmp r1, #1
	bgt _0807D2BE
	cmp r1, #0
	beq _0807D2C8
	b _0807D328
_0807D2BE:
	cmp r0, #2
	beq _0807D2F4
	cmp r0, #3
	beq _0807D308
	b _0807D328
_0807D2C8:
	ldr r0, _0807D2D8 @ =0x000002FF
	cmp r2, r0
	bls _0807D2DC
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r1, #0
	b _0807D322
	.align 2, 0
_0807D2D8: .4byte 0x000002FF
_0807D2DC:
	movs r4, #0x80
	lsls r4, r4, #3
	b _0807D320
_0807D2E2:
	cmp r2, #0xff
	bls _0807D2EE
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r1, #0
	b _0807D322
_0807D2EE:
	movs r4, #0x80
	lsls r4, r4, #3
	b _0807D320
_0807D2F4:
	ldr r0, _0807D304 @ =0x000001FF
	cmp r2, r0
	bls _0807D31C
	movs r1, #0xc0
	lsls r1, r1, #3
	adds r0, r1, #0
	b _0807D322
	.align 2, 0
_0807D304: .4byte 0x000001FF
_0807D308:
	ldr r0, _0807D318 @ =0x000002FF
	cmp r2, r0
	bls _0807D31C
	movs r1, #0xc0
	lsls r1, r1, #3
	adds r0, r1, #0
	b _0807D322
	.align 2, 0
_0807D318: .4byte 0x000002FF
_0807D31C:
	movs r4, #0x80
	lsls r4, r4, #2
_0807D320:
	adds r0, r4, #0
_0807D322:
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0807D328:
	ldr r0, _0807D370 @ =0x000003FF
	ands r2, r0
	strh r2, [r3, #0x16]
	ldr r2, _0807D374 @ =gSineTable
	ldrh r0, [r3, #0x16]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r4, #0
	ldrsh r0, [r0, r4]
	ldr r1, [r3, #0x10]
	muls r0, r1, r0
	cmp r0, #0
	bge _0807D34C
	ldr r4, _0807D378 @ =0x00003FFF
	adds r0, r0, r4
_0807D34C:
	asrs r0, r0, #0xe
	str r0, [r3, #8]
	ldrh r0, [r3, #0x16]
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r1, r0
	cmp r0, #0
	bge _0807D364
	ldr r4, _0807D378 @ =0x00003FFF
	adds r0, r0, r4
_0807D364:
	asrs r0, r0, #0xe
	str r0, [r3, #0xc]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0807D370: .4byte 0x000003FF
_0807D374: .4byte gSineTable
_0807D378: .4byte 0x00003FFF

	thumb_func_start sub_807D37C
sub_807D37C: @ 0x0807D37C
	push {r4, r5, r6, r7, lr}
	adds r4, r1, #0
	movs r5, #0
	ldr r0, [r4]
	asrs r0, r0, #8
	ldr r2, _0807D400 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r0, #0
	bgt _0807D3B4
	ldrh r1, [r4, #0x16]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	bls _0807D3B4
	adds r0, r4, #0
	movs r1, #0
	bl sub_807D2A4
	movs r5, #1
_0807D3B4:
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	adds r0, #8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xbf
	ble _0807D3D8
	ldrh r1, [r4, #0x16]
	ldr r0, _0807D404 @ =0x000001FF
	cmp r1, r0
	bhi _0807D3D8
	cmp r5, #0
	bne _0807D40C
	adds r0, r4, #0
	movs r1, #1
	bl sub_807D2A4
	movs r5, #2
_0807D3D8:
	cmp r5, #0
	bne _0807D40C
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb3
	bgt _0807D3F6
	lsls r0, r7, #0x10
	asrs r1, r0, #0x10
	movs r0, #0x14
	rsbs r0, r0, #0
	cmp r1, r0
	ble _0807D3F6
	ldr r0, _0807D408 @ =0x00000103
	cmp r1, r0
	ble _0807D414
_0807D3F6:
	movs r0, #0
	strh r0, [r4, #0x18]
	movs r5, #3
	b _0807D414
	.align 2, 0
_0807D400: .4byte gCamera
_0807D404: .4byte 0x000001FF
_0807D408: .4byte 0x00000103
_0807D40C:
	movs r0, #0x8e
	lsls r0, r0, #2
	bl m4aSongNumStart
_0807D414:
	adds r0, r5, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_807D41C
sub_807D41C: @ 0x0807D41C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp, #4]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #8]
	movs r7, #0
	ldr r1, _0807D458 @ =gUnknown_080D5CA4
	mov r0, sp
	movs r2, #4
	bl memcpy
	ldr r1, [sp, #8]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	movs r2, #0xca
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r3, [sp, #4]
	adds r5, r3, r0
	adds r0, r1, #0
	add r0, sp
	ldrb r0, [r0]
	b _0807D5DC
	.align 2, 0
_0807D458: .4byte gUnknown_080D5CA4
_0807D45C:
	ldr r0, [sp, #8]
	cmp sb, r0
	bne _0807D464
	b _0807D5D4
_0807D464:
	mov r1, sb
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	movs r2, #0xca
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r3, [sp, #4]
	adds r4, r3, r0
	ldrh r0, [r4, #0x18]
	cmp r0, #0
	bne _0807D47E
	b _0807D5D4
_0807D47E:
	ldr r1, [r5]
	ldr r0, [r4]
	subs r1, r1, r0
	mov ip, r1
	ldr r1, [r5, #4]
	ldr r0, [r4, #4]
	subs r6, r1, r0
	mov r1, ip
	mov r0, ip
	muls r0, r1, r0
	adds r1, r6, #0
	muls r1, r6, r1
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	cmp r0, #0x13
	bls _0807D4A6
	b _0807D5D4
_0807D4A6:
	ldr r1, [r5]
	ldr r0, [r4]
	subs r1, r1, r0
	ldr r0, [r5, #4]
	ldr r2, [r4, #4]
	subs r0, r0, r2
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	bl sa2__sub_8004418
	strh r0, [r5, #0x16]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r3, _0807D604 @ =0x000003FF
	adds r1, r3, #0
	ands r0, r1
	strh r0, [r4, #0x16]
	ldr r0, [r5]
	ldr r1, [r4]
	adds r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	mov ip, r0
	ldr r0, [r5, #4]
	ldr r1, [r4, #4]
	adds r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r6, r0, #1
	ldr r7, _0807D608 @ =gSineTable
	ldrh r3, [r5, #0x16]
	movs r0, #0x80
	lsls r0, r0, #1
	mov sl, r0
	adds r0, r3, r0
	lsls r0, r0, #1
	adds r0, r0, r7
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r2, #0xb
	mov r8, r2
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	cmp r0, #0
	bge _0807D50C
	adds r0, #0x3f
_0807D50C:
	asrs r2, r0, #6
	lsls r0, r3, #1
	adds r0, r0, r7
	movs r3, #0
	ldrsh r0, [r0, r3]
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	cmp r0, #0
	bge _0807D522
	adds r0, #0x3f
_0807D522:
	asrs r1, r0, #6
	mov r3, ip
	adds r0, r3, r2
	str r0, [r5]
	adds r0, r6, r1
	str r0, [r5, #4]
	ldrh r3, [r5, #0x16]
	mov r1, sl
	adds r0, r3, r1
	lsls r0, r0, #1
	adds r0, r0, r7
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldr r2, [r5, #0x10]
	muls r0, r2, r0
	cmp r0, #0
	bge _0807D548
	ldr r1, _0807D60C @ =0x00003FFF
	adds r0, r0, r1
_0807D548:
	asrs r0, r0, #0xe
	str r0, [r5, #8]
	lsls r0, r3, #1
	adds r0, r0, r7
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r0, r2, r0
	cmp r0, #0
	bge _0807D55E
	ldr r1, _0807D60C @ =0x00003FFF
	adds r0, r0, r1
_0807D55E:
	asrs r0, r0, #0xe
	str r0, [r5, #0xc]
	ldrh r3, [r4, #0x16]
	mov r2, sl
	adds r0, r3, r2
	lsls r0, r0, #1
	adds r0, r0, r7
	movs r1, #0
	ldrsh r0, [r0, r1]
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	cmp r0, #0
	bge _0807D57C
	adds r0, #0x3f
_0807D57C:
	asrs r2, r0, #6
	lsls r0, r3, #1
	adds r0, r0, r7
	movs r3, #0
	ldrsh r0, [r0, r3]
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	cmp r0, #0
	bge _0807D592
	adds r0, #0x3f
_0807D592:
	asrs r1, r0, #6
	mov r3, ip
	adds r0, r3, r2
	str r0, [r4]
	adds r0, r6, r1
	str r0, [r4, #4]
	ldrh r2, [r4, #0x16]
	mov r1, sl
	adds r0, r2, r1
	lsls r0, r0, #1
	adds r0, r0, r7
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldr r1, [r4, #0x10]
	muls r0, r1, r0
	cmp r0, #0
	bge _0807D5B8
	ldr r3, _0807D60C @ =0x00003FFF
	adds r0, r0, r3
_0807D5B8:
	asrs r0, r0, #0xe
	str r0, [r4, #8]
	lsls r0, r2, #1
	adds r0, r0, r7
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r1, r0
	cmp r0, #0
	bge _0807D5CE
	ldr r3, _0807D60C @ =0x00003FFF
	adds r0, r0, r3
_0807D5CE:
	asrs r0, r0, #0xe
	str r0, [r4, #0xc]
	movs r7, #1
_0807D5D4:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_0807D5DC:
	mov sb, r0
	cmp r0, #2
	bhi _0807D5E4
	b _0807D45C
_0807D5E4:
	cmp r7, #0
	beq _0807D5F0
	movs r0, #0x8e
	lsls r0, r0, #2
	bl m4aSongNumStart
_0807D5F0:
	adds r0, r7, #0
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0807D604: .4byte 0x000003FF
_0807D608: .4byte gSineTable
_0807D60C: .4byte 0x00003FFF

	thumb_func_start sub_807D610
sub_807D610: @ 0x0807D610
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	str r0, [sp]
	adds r5, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sb, r2
	movs r7, #0
	movs r2, #0
	movs r1, #0xca
	lsls r1, r1, #1
	adds r4, r0, r1
	movs r3, #0xd5
	lsls r3, r3, #1
	mov r8, r3
	movs r6, #0x80
	mov ip, r6
	movs r0, #0x80
	lsls r0, r0, #2
	mov sl, r0
_0807D640:
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r3, r0, #2
	ldr r6, [sp]
	adds r1, r6, r3
	movs r6, #0xd6
	lsls r6, r6, #1
	adds r0, r1, r6
	ldrh r0, [r0]
	cmp r0, #0
	beq _0807D6A4
	mov r0, sb
	cmp r0, #0
	bne _0807D680
	adds r0, r4, r3
	ldr r0, [r0]
	cmp r0, r5
	bgt _0807D6A4
	mov r3, r8
	adds r0, r1, r3
	ldrh r0, [r0]
	subs r6, #0xac
	cmp r0, r6
	bls _0807D6A4
	ldr r1, _0807D67C @ =0x000002FF
	cmp r0, r1
	bhi _0807D6A4
	mov r7, ip
	orrs r7, r2
	b _0807D6A2
	.align 2, 0
_0807D67C: .4byte 0x000002FF
_0807D680:
	adds r0, r4, r3
	ldr r0, [r0]
	cmp r0, r5
	blt _0807D6A4
	add r1, r8
	ldr r3, _0807D6C0 @ =0xFFFFFF00
	adds r0, r3, #0
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, sl
	bls _0807D6A4
	mov r6, ip
	orrs r2, r6
	lsls r0, r2, #0x18
	lsrs r7, r0, #0x18
_0807D6A2:
	movs r2, #3
_0807D6A4:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #2
	bls _0807D640
	adds r0, r7, #0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0807D6C0: .4byte 0xFFFFFF00

	thumb_func_start sub_807D6C4
sub_807D6C4: @ 0x0807D6C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sl, r0
	movs r5, #0xa2
	lsls r5, r5, #1
	add r5, sl
	ldr r0, _0807D804 @ =0x0005C400
	str r0, [r5]
	movs r6, #0xa4
	lsls r6, r6, #1
	add r6, sl
	movs r4, #0x98
	lsls r4, r4, #8
	str r4, [r6]
	mov r0, sl
	movs r1, #0
	movs r2, #0
	bl sub_807DB00
	movs r0, #0xb6
	lsls r0, r0, #1
	add r0, sl
	mov sb, r0
	ldr r0, _0807D808 @ =0x00072C00
	mov r1, sb
	str r0, [r1]
	movs r0, #0xb8
	lsls r0, r0, #1
	add r0, sl
	mov r8, r0
	str r4, [r0]
	mov r0, sl
	movs r1, #1
	movs r2, #0
	bl sub_807DB00
	movs r7, #0x9e
	lsls r7, r7, #2
	add r7, sl
	movs r2, #0xd0
	lsls r2, r2, #2
	add r2, sl
	movs r0, #0x40
	str r2, [sp]
	bl VramMalloc
	str r0, [r7]
	ldr r1, _0807D80C @ =0x000004F1 @ ANIM_BOSS_FINAL_HAND
	strh r1, [r7, #0xc]
	movs r0, #0
	strb r0, [r7, #0x1a]
	adds r1, #0xf
	strh r1, [r7, #0x14]
	movs r0, #0
	strh r0, [r7, #0xe]
	strh r0, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r1, #0x10
	strb r1, [r7, #0x1c]
	movs r0, #0
	strb r0, [r7, #0x1f]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r7, #0x20]
	ldr r0, _0807D810 @ =0x0000106A
	str r0, [r7, #8]
	ldr r0, [r5]
	asrs r0, r0, #8
	ldr r5, _0807D814 @ =gCamera
	ldr r1, [r5]
	subs r0, r0, r1
	strh r0, [r7, #0x10]
	ldr r0, [r6]
	asrs r0, r0, #8
	ldr r1, [r5, #4]
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	ldr r2, [sp]
	movs r0, #0
	strh r0, [r2]
	ldrh r0, [r7, #0x10]
	strh r0, [r2, #6]
	ldrh r0, [r7, #0x12]
	strh r0, [r2, #8]
	movs r4, #0x80
	lsls r4, r4, #1
	strh r4, [r2, #2]
	strh r4, [r2, #4]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	movs r7, #0xa8
	lsls r7, r7, #2
	add r7, sl
	movs r2, #0xd3
	lsls r2, r2, #2
	add r2, sl
	movs r0, #0x40
	str r2, [sp]
	bl VramMalloc
	str r0, [r7]
	ldr r1, _0807D80C @ =0x000004F1 @ ANIM_BOSS_FINAL_HAND
	strh r1, [r7, #0xc]
	movs r0, #6
	strb r0, [r7, #0x1a]
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r7, #0x14]
	movs r1, #0
	strh r1, [r7, #0xe]
	strh r1, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	strb r1, [r7, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x20]
	ldr r0, _0807D818 @ =0x0000106B
	str r0, [r7, #8]
	mov r1, sb
	ldr r0, [r1]
	asrs r0, r0, #8
	ldr r1, [r5]
	subs r0, r0, r1
	strh r0, [r7, #0x10]
	mov r1, r8
	ldr r0, [r1]
	asrs r0, r0, #8
	ldr r1, [r5, #4]
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	ldr r2, [sp]
	movs r0, #0
	strh r0, [r2]
	ldrh r0, [r7, #0x10]
	strh r0, [r2, #6]
	ldrh r0, [r7, #0x12]
	strh r0, [r2, #8]
	strh r4, [r2, #2]
	strh r4, [r2, #4]
	adds r0, r7, #0
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
_0807D804: .4byte 0x0005C400
_0807D808: .4byte 0x00072C00
_0807D80C: .4byte 0x000004F1
_0807D810: .4byte 0x0000106A
_0807D814: .4byte gCamera
_0807D818: .4byte 0x0000106B

	thumb_func_start sub_807D81C
sub_807D81C: @ 0x0807D81C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r5, r6, r0
	movs r1, #0xd0
	lsls r1, r1, #2
	adds r3, r6, r1
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r2, [r0]
	asrs r2, r2, #8
	ldr r4, _0807D8B0 @ =gCamera
	ldr r0, [r4]
	subs r2, r2, r0
	strh r2, [r5, #0x10]
	adds r1, #4
	adds r0, r6, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r5, #0x12]
	strh r2, [r3, #6]
	ldrh r0, [r5, #0x12]
	strh r0, [r3, #8]
	adds r0, r5, #0
	adds r1, r3, #0
	bl TransformSprite
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r5, r6, r0
	movs r1, #0xd3
	lsls r1, r1, #2
	adds r3, r6, r1
	movs r1, #0xb6
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r2, [r0]
	asrs r2, r2, #8
	ldr r0, [r4]
	subs r2, r2, r0
	strh r2, [r5, #0x10]
	adds r1, #4
	adds r0, r6, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r5, #0x12]
	strh r2, [r3, #6]
	ldrh r0, [r5, #0x12]
	strh r0, [r3, #8]
	adds r0, r5, #0
	adds r1, r3, #0
	bl TransformSprite
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0807D8B0: .4byte gCamera

	thumb_func_start sub_807D8B4
sub_807D8B4: @ 0x0807D8B4
	push {r4, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r0, r1, #0x18
	adds r4, r0, #0
	lsls r2, r2, #0x18
	lsrs r1, r2, #0x18
	adds r2, r1, #0
	cmp r0, #1
	beq _0807D910
	cmp r0, #1
	bgt _0807D8D2
	cmp r0, #0
	beq _0807D8DC
	b _0807D9AC
_0807D8D2:
	cmp r4, #0xa
	beq _0807D978
	cmp r4, #0x14
	beq _0807D998
	b _0807D9AC
_0807D8DC:
	cmp r1, #1
	bhi _0807D8F8
	movs r0, #0x80
	movs r4, #0xaf
	lsls r4, r4, #1
	adds r2, r3, r4
	orrs r1, r0
	strb r1, [r2]
	movs r0, #0xc1
	lsls r0, r0, #1
	adds r1, r3, r0
	movs r0, #0xfa
	lsls r0, r0, #2
	b _0807D9AA
_0807D8F8:
	movs r0, #0x80
	movs r4, #0xc3
	lsls r4, r4, #1
	adds r2, r3, r4
	orrs r1, r0
	strb r1, [r2]
	movs r0, #0xad
	lsls r0, r0, #1
	adds r1, r3, r0
	movs r0, #0xfa
	lsls r0, r0, #2
	b _0807D9AA
_0807D910:
	cmp r1, #1
	beq _0807D93A
	cmp r1, #1
	bgt _0807D91E
	cmp r1, #0
	beq _0807D928
	b _0807D9AC
_0807D91E:
	cmp r2, #2
	beq _0807D94C
	cmp r2, #3
	beq _0807D962
	b _0807D9AC
_0807D928:
	movs r2, #0xaf
	lsls r2, r2, #1
	adds r1, r3, r2
	movs r0, #0x80
	strb r0, [r1]
	movs r4, #0xc3
	lsls r4, r4, #1
	adds r1, r3, r4
	b _0807D95C
_0807D93A:
	movs r0, #0xaf
	lsls r0, r0, #1
	adds r1, r3, r0
	movs r0, #0x80
	strb r0, [r1]
	movs r2, #0xc3
	lsls r2, r2, #1
	adds r1, r3, r2
	b _0807D972
_0807D94C:
	movs r4, #0xaf
	lsls r4, r4, #1
	adds r1, r3, r4
	movs r0, #0x81
	strb r0, [r1]
	movs r0, #0xc3
	lsls r0, r0, #1
	adds r1, r3, r0
_0807D95C:
	movs r0, #0x82
	strb r0, [r1]
	b _0807D9AC
_0807D962:
	movs r2, #0xaf
	lsls r2, r2, #1
	adds r1, r3, r2
	movs r0, #0x81
	strb r0, [r1]
	movs r4, #0xc3
	lsls r4, r4, #1
	adds r1, r3, r4
_0807D972:
	movs r0, #0x83
	strb r0, [r1]
	b _0807D9AC
_0807D978:
	movs r0, #0xaf
	lsls r0, r0, #1
	adds r1, r3, r0
	movs r0, #0
	strb r0, [r1]
	movs r2, #0xc3
	lsls r2, r2, #1
	adds r1, r3, r2
	strb r0, [r1]
	movs r4, #0xad
	lsls r4, r4, #1
	adds r1, r3, r4
	movs r0, #0x14
	strh r0, [r1]
	subs r2, #4
	b _0807D9A8
_0807D998:
	movs r4, #0xad
	lsls r4, r4, #1
	adds r1, r3, r4
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r1]
	movs r2, #0xc1
	lsls r2, r2, #1
_0807D9A8:
	adds r1, r3, r2
_0807D9AA:
	strh r0, [r1]
_0807D9AC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_807D9B4
sub_807D9B4: @ 0x0807D9B4
	push {r4, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r1, #0
	movs r3, #0
	cmp r1, #1
	beq _0807D9F2
	cmp r1, #1
	bgt _0807D9CE
	cmp r1, #0
	beq _0807D9D4
	b _0807DA2A
_0807D9CE:
	cmp r0, #2
	beq _0807DA10
	b _0807DA2A
_0807D9D4:
	movs r1, #0xad
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrh r1, [r0]
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp r1, r0
	bne _0807DA2A
	movs r4, #0xc1
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrh r0, [r0]
	cmp r0, r1
	bne _0807DA2A
	b _0807DA28
_0807D9F2:
	movs r1, #0xad
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrh r1, [r0]
	movs r0, #0xaf
	lsls r0, r0, #1
	cmp r1, r0
	bne _0807DA2A
	movs r4, #0xc1
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrh r0, [r0]
	cmp r0, r1
	bne _0807DA2A
	b _0807DA28
_0807DA10:
	movs r1, #0xad
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrh r0, [r0]
	cmp r0, #0x6e
	bne _0807DA2A
	movs r4, #0xc1
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrh r0, [r0]
	cmp r0, #0x6e
	bne _0807DA2A
_0807DA28:
	movs r3, #1
_0807DA2A:
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_807DA34
sub_807DA34: @ 0x0807DA34
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r7, r1, #0
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r0, r0, #3
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r0, r1
	mov r2, r8
	adds r6, r2, r0
	ldr r4, [r2, #0x20]
	ldr r1, [r4, #0x10]
	asrs r1, r1, #8
	ldr r0, [r6]
	asrs r0, r0, #8
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, _0807DAE4 @ =0xFFFF0000
	ldr r2, [sp]
	ands r2, r3
	orrs r2, r1
	str r2, [sp]
	ldr r1, [r4, #0x14]
	asrs r1, r1, #8
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	subs r1, r1, r0
	lsls r1, r1, #0x10
	ldr r0, _0807DAE8 @ =0x0000FFFF
	ands r0, r2
	orrs r0, r1
	str r0, [sp]
	mov r5, sp
	ldr r0, [sp, #4]
	ands r0, r3
	str r0, [sp, #4]
	mov r0, sp
	movs r1, #8
	bl sa2__sub_8085A9C
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	str r0, [r6, #8]
	movs r2, #2
	ldrsh r0, [r5, r2]
	str r0, [r6, #0xc]
	ldr r2, [r4, #0x10]
	ldr r0, [r6]
	subs r2, r2, r0
	ldr r1, [r4, #0x14]
	ldr r0, [r6, #4]
	subs r1, r1, r0
	adds r0, r2, #0
	muls r0, r2, r0
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [r6, #0x24]
	asrs r0, r0, #4
	str r0, [r6, #0x1c]
	movs r0, #0
	str r0, [r6, #0x20]
	movs r0, #0xa
	strh r0, [r6, #0x14]
	movs r0, #0xc8
	strh r0, [r6, #0x16]
	movs r1, #0xa8
	lsls r1, r1, #2
	add r1, r8
	cmp r7, #0
	beq _0807DAEC
	movs r0, #0x98
	lsls r0, r0, #3
	b _0807DAF0
	.align 2, 0
_0807DAE4: .4byte 0xFFFF0000
_0807DAE8: .4byte 0x0000FFFF
_0807DAEC:
	movs r0, #0xa0
	lsls r0, r0, #3
_0807DAF0:
	strh r0, [r1, #0x14]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_807DB00
sub_807DB00: @ 0x0807DB00
	push {r4, r5, lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r3, r1, #2
	adds r3, r3, r1
	lsls r3, r3, #3
	movs r4, #0xa6
	lsls r4, r4, #1
	adds r1, r0, r4
	adds r1, r1, r3
	movs r4, #0
	str r4, [r1]
	movs r5, #0xa8
	lsls r5, r5, #1
	adds r1, r0, r5
	adds r1, r1, r3
	str r4, [r1]
	adds r0, r0, r3
	mov ip, r0
	movs r1, #0xac
	lsls r1, r1, #1
	add r1, ip
	movs r3, #0
	movs r5, #1
	movs r0, #1
	strh r0, [r1]
	movs r0, #0xad
	lsls r0, r0, #1
	add r0, ip
	strh r4, [r0]
	movs r0, #0xae
	lsls r0, r0, #1
	add r0, ip
	strb r2, [r0]
	ldr r0, _0807DB58 @ =0x0000015D
	add r0, ip
	strb r3, [r0]
	ldr r0, _0807DB5C @ =0x00000157
	add r0, ip
	strb r5, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0807DB58: .4byte 0x0000015D
_0807DB5C: .4byte 0x00000157

	thumb_func_start sub_807DB60
sub_807DB60: @ 0x0807DB60
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	mov r8, r0
	movs r0, #0
	str r0, [sp, #4]
_0807DB72:
	movs r2, #0
	mov r1, r8
	strb r2, [r1, #0x11]
	ldr r3, [sp, #4]
	lsls r5, r3, #2
	adds r0, r5, r3
	lsls r0, r0, #3
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r0, r1
	mov r2, r8
	adds r6, r2, r0
	ldr r4, _0807DBEC @ =gUnknown_08E2ED18
	ldrb r0, [r6, #0x18]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r2, [r0]
	mov r0, r8
	adds r1, r3, #0
	bl _call_via_r2
	ldrb r0, [r6, #0x18]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	ldr r0, _0807DBF0 @ =sub_807E214
	str r5, [sp, #0x10]
	cmp r1, r0
	bne _0807DBC2
	ldrb r0, [r6, #0x1b]
	cmp r0, #0
	beq _0807DBC2
	mov r3, r8
	ldr r0, [r3, #0x20]
	ldr r1, [r0]
	ldr r0, _0807DBF4 @ =PlayerCB_80819BC
	cmp r1, r0
	beq _0807DBC2
	movs r0, #0
	strb r0, [r6, #0x1b]
_0807DBC2:
	ldrb r0, [r6, #0x13]
	ldr r1, [sp, #4]
	lsls r1, r1, #1
	str r1, [sp, #0xc]
	ldr r2, [sp, #4]
	adds r2, #1
	str r2, [sp, #8]
	cmp r0, #0
	beq _0807DC92
	mov r3, r8
	ldrb r0, [r3]
	cmp r0, #0
	beq _0807DC92
	ldrb r0, [r3, #0x11]
	cmp r0, #0
	beq _0807DBF8
	mov r0, r8
	ldr r1, [sp, #4]
	bl sub_807C518
	b _0807DC92
	.align 2, 0
_0807DBEC: .4byte gUnknown_08E2ED18
_0807DBF0: .4byte sub_807E214
_0807DBF4: .4byte PlayerCB_80819BC
_0807DBF8:
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #4]
	adds r0, r1, r2
	lsls r0, r0, #3
	mov r3, r8
	adds r7, r0, r3
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r7, r7, r0
	ldr r1, [r6]
	mov sl, r1
	ldr r6, [r6, #4]
	ldr r0, _0807DC70 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r5, r0, r2
	movs r3, #0
	mov sb, r3
_0807DC20:
	mov r1, sb
	lsls r0, r1, #2
	adds r1, r5, #0
	adds r1, #0x20
	adds r1, r1, r0
	ldr r4, [r1]
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _0807DC84
	ldr r0, [r4, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0807DC74
	adds r0, r5, #0
	adds r0, #0x7c
	ldr r1, [r4, #0x6c]
	cmp r1, r0
	beq _0807DC5C
	adds r0, #0x28
	cmp r1, r0
	beq _0807DC5C
	adds r0, #0x28
	cmp r1, r0
	beq _0807DC5C
	adds r0, #0x28
	cmp r1, r0
	bne _0807DC84
_0807DC5C:
	str r4, [sp]
	adds r0, r7, #0
	mov r2, sl
	asrs r1, r2, #8
	asrs r2, r6, #8
	movs r3, #0
	bl sub_8020CE0
	b _0807DC84
	.align 2, 0
_0807DC70: .4byte gCurTask
_0807DC74:
	str r4, [sp]
	adds r0, r7, #0
	mov r3, sl
	asrs r1, r3, #8
	asrs r2, r6, #8
	movs r3, #0
	bl sub_8020CE0
_0807DC84:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #1
	bls _0807DC20
_0807DC92:
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #4]
	adds r0, r1, r2
	lsls r0, r0, #3
	movs r3, #0x9e
	lsls r3, r3, #2
	adds r0, r0, r3
	add r0, r8
	ldr r3, [sp, #0xc]
	adds r1, r3, r2
	lsls r1, r1, #2
	movs r2, #0xd0
	lsls r2, r2, #2
	adds r1, r1, r2
	add r1, r8
	movs r2, #0
	ldr r3, [sp, #4]
	bl sub_807F334
	ldr r3, [sp, #8]
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	cmp r0, #1
	bhi _0807DCC6
	b _0807DB72
_0807DCC6:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_807DCD8
sub_807DCD8: @ 0x0807DCD8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r2, r0, #0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r5, r0, #3
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r5, r1
	adds r4, r2, r0
	movs r3, #0
	mov r8, r3
	ldrh r0, [r4, #0x16]
	cmp r0, #0xa
	beq _0807DD3C
	cmp r0, #0xa
	bgt _0807DD06
	cmp r0, #0
	beq _0807DD0C
	b _0807DE14
_0807DD06:
	cmp r0, #0x14
	beq _0807DE04
	b _0807DE14
_0807DD0C:
	cmp r7, #0
	bne _0807DD1A
	ldr r0, [r4]
	movs r6, #0xc8
	lsls r6, r6, #6
	adds r1, r0, r6
	b _0807DD20
_0807DD1A:
	ldr r0, [r4]
	ldr r3, _0807DD38 @ =0xFFFFCE00
	adds r1, r0, r3
_0807DD20:
	adds r0, r2, #0
	adds r2, r7, #0
	bl sub_807D610
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	beq _0807DE14
	strb r3, [r4, #0x19]
	movs r0, #0xa
	b _0807DE12
	.align 2, 0
_0807DD38: .4byte 0xFFFFCE00
_0807DD3C:
	ldrb r0, [r4, #0x19]
	movs r3, #0x7f
	ands r3, r0
	lsls r0, r3, #3
	subs r0, r0, r3
	lsls r1, r0, #2
	adds r0, r2, r1
	movs r6, #0xd6
	lsls r6, r6, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	cmp r0, #0
	bne _0807DD62
	mov r0, r8
	strb r0, [r4, #0x19]
	movs r0, #0x3c
	strh r0, [r4, #0x14]
	movs r0, #0x14
	b _0807DE12
_0807DD62:
	movs r6, #0xcc
	lsls r6, r6, #1
	adds r0, r2, r6
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r4, #4]
	cmp r1, r0
	ble _0807DD7E
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r2, r1
	adds r0, r0, r5
	adds r1, #0xb0
	b _0807DD88
_0807DD7E:
	movs r6, #0xa8
	lsls r6, r6, #1
	adds r0, r2, r6
	adds r0, r0, r5
	ldr r1, _0807DE00 @ =0xFFFFFE00
_0807DD88:
	str r1, [r0]
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	adds r6, r1, r0
	str r6, [r4, #4]
	lsls r0, r3, #3
	subs r0, r0, r3
	lsls r5, r0, #2
	movs r0, #0xca
	lsls r0, r0, #1
	mov ip, r0
	adds r0, r2, r0
	adds r0, r0, r5
	ldr r1, [r4]
	ldr r0, [r0]
	subs r3, r1, r0
	adds r0, r3, #0
	cmp r3, #0
	bge _0807DDB0
	rsbs r0, r3, #0
_0807DDB0:
	asrs r3, r0, #8
	movs r1, #0xcc
	lsls r1, r1, #1
	adds r0, r2, r1
	adds r0, r0, r5
	ldr r0, [r0]
	subs r1, r6, r0
	adds r0, r1, #0
	cmp r1, #0
	bge _0807DDC6
	rsbs r0, r1, #0
_0807DDC6:
	asrs r1, r0, #8
	cmp r3, #0xf
	bgt _0807DDE4
	cmp r1, #0x1f
	bgt _0807DDE4
	mov r3, ip
	adds r0, r5, r3
	adds r0, r2, r0
	adds r1, r7, #2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl sub_807D2A4
	movs r6, #1
	mov r8, r6
_0807DDE4:
	mov r0, r8
	cmp r0, #0
	beq _0807DE14
	movs r0, #0x8e
	lsls r0, r0, #2
	bl m4aSongNumStart
	movs r0, #0
	strb r0, [r4, #0x19]
	movs r0, #0x3c
	strh r0, [r4, #0x14]
	movs r0, #0x14
	b _0807DE12
	.align 2, 0
_0807DE00: .4byte 0xFFFFFE00
_0807DE04:
	ldrh r0, [r4, #0x14]
	subs r0, #1
	strh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _0807DE14
_0807DE12:
	strh r0, [r4, #0x16]
_0807DE14:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_807DE20
sub_807DE20: @ 0x0807DE20
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #3
	mov sb, r0
	movs r0, #0xa2
	lsls r0, r0, #1
	add r0, sb
	adds r5, r7, r0
	movs r0, #0x9e
	lsls r0, r0, #2
	add r0, sb
	adds r0, r0, r7
	mov r8, r0
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	movs r1, #0xd0
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r2, r7, r0
	movs r4, #0
	mov sl, r4
	ldrh r6, [r5, #0x16]
	cmp r6, #0x78
	bne _0807DE66
	b _0807E0D2
_0807DE66:
	cmp r6, #0x78
	bgt _0807DE96
	cmp r6, #0x14
	beq _0807DF50
	cmp r6, #0x14
	bgt _0807DE7C
	cmp r6, #0
	beq _0807DEDC
	cmp r6, #0xa
	beq _0807DEEC
	b _0807E200
_0807DE7C:
	cmp r6, #0x64
	bne _0807DE82
	b _0807DFEE
_0807DE82:
	cmp r6, #0x64
	bgt _0807DE8E
	cmp r6, #0x1e
	bne _0807DE8C
	b _0807DFDC
_0807DE8C:
	b _0807E200
_0807DE8E:
	cmp r6, #0x6e
	bne _0807DE94
	b _0807E0B0
_0807DE94:
	b _0807E200
_0807DE96:
	movs r0, #0x9b
	lsls r0, r0, #1
	cmp r6, r0
	bne _0807DEA0
	b _0807E19C
_0807DEA0:
	cmp r6, r0
	bgt _0807DEC2
	cmp r6, #0xd2
	bne _0807DEAA
	b _0807E170
_0807DEAA:
	cmp r6, #0xd2
	bgt _0807DEB6
	cmp r6, #0xc8
	bne _0807DEB4
	b _0807E124
_0807DEB4:
	b _0807E200
_0807DEB6:
	movs r0, #0x96
	lsls r0, r0, #1
	cmp r6, r0
	bne _0807DEC0
	b _0807E182
_0807DEC0:
	b _0807E200
_0807DEC2:
	movs r0, #0xaf
	lsls r0, r0, #1
	cmp r6, r0
	bne _0807DECC
	b _0807E200
_0807DECC:
	cmp r6, r0
	ble _0807DED2
	b _0807E200
_0807DED2:
	subs r0, #0x1e
	cmp r6, r0
	bne _0807DEDA
	b _0807E1D0
_0807DEDA:
	b _0807E200
_0807DEDC:
	ldr r0, _0807DEE8 @ =0xFFFFFE00
	str r0, [r5, #0xc]
	mov r0, sl
	strb r0, [r5, #0x1a]
	movs r0, #0xa
	b _0807E1FE
	.align 2, 0
_0807DEE8: .4byte 0xFFFFFE00
_0807DEEC:
	cmp r3, #0
	bne _0807DF00
	ldrh r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _0807DF16
	adds r0, r1, #0
	adds r0, #0x10
	b _0807DF0E
_0807DF00:
	ldrh r1, [r2]
	movs r0, #0xc0
	lsls r0, r0, #2
	cmp r1, r0
	beq _0807DF16
	adds r0, r1, #0
	subs r0, #0x10
_0807DF0E:
	ldr r4, _0807DF3C @ =0x000003FF
	adds r1, r4, #0
	ands r0, r1
	strh r0, [r2]
_0807DF16:
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	ldr r4, _0807DF40 @ =0xFFFFC000
	adds r2, r0, r4
	ldr r0, [r5, #4]
	ldr r1, [r5, #0xc]
	adds r0, r0, r1
	str r0, [r5, #4]
	cmp r0, r2
	ble _0807DF30
	b _0807E200
_0807DF30:
	cmp r3, #0
	bne _0807DF44
	movs r0, #0x80
	lsls r0, r0, #2
	b _0807DF46
	.align 2, 0
_0807DF3C: .4byte 0x000003FF
_0807DF40: .4byte 0xFFFFC000
_0807DF44:
	ldr r0, _0807DF4C @ =0xFFFFFE00
_0807DF46:
	str r0, [r5, #8]
	movs r0, #0x14
	b _0807E1FE
	.align 2, 0
_0807DF4C: .4byte 0xFFFFFE00
_0807DF50:
	ldr r0, [r5]
	ldr r1, [r5, #8]
	adds r2, r0, r1
	str r2, [r5]
	cmp r3, #0
	bne _0807DF78
	cmp r1, #0
	blt _0807DF70
	ldr r0, _0807DF6C @ =0x000667FF
	cmp r2, r0
	ble _0807DF9A
	adds r0, #1
	b _0807DF94
	.align 2, 0
_0807DF6C: .4byte 0x000667FF
_0807DF70:
	ldr r0, _0807DF74 @ =0x00061400
	b _0807DF90
	.align 2, 0
_0807DF74: .4byte 0x00061400
_0807DF78:
	cmp r1, #0
	blt _0807DF8C
	ldr r0, _0807DF88 @ =0x0006DBFF
	cmp r2, r0
	ble _0807DF9A
	adds r0, #1
	b _0807DF94
	.align 2, 0
_0807DF88: .4byte 0x0006DBFF
_0807DF8C:
	movs r0, #0xd1
	lsls r0, r0, #0xb
_0807DF90:
	cmp r2, r0
	bgt _0807DF9A
_0807DF94:
	str r0, [r5]
	rsbs r0, r1, #0
	str r0, [r5, #8]
_0807DF9A:
	ldrb r2, [r5, #0x1a]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	bne _0807DFA6
	b _0807E200
_0807DFA6:
	movs r1, #0x7f
	ands r1, r2
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0x2c
	adds r1, r1, r0
	ldr r1, [r1]
	ldr r0, [r5]
	subs r2, r1, r0
	adds r0, r2, #0
	cmp r2, #0
	bge _0807DFC4
	rsbs r0, r2, #0
_0807DFC4:
	asrs r2, r0, #8
	cmp r2, #1
	ble _0807DFCC
	b _0807E200
_0807DFCC:
	str r1, [r5]
	movs r0, #0x1e
	strh r0, [r5, #0x14]
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #3
	str r0, [r5, #0xc]
	b _0807E200
_0807DFDC:
	ldrh r0, [r5, #0x14]
	subs r0, #1
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0807DFEA
	b _0807E200
_0807DFEA:
	movs r0, #0x64
	b _0807E1FE
_0807DFEE:
	ldr r4, [r5, #4]
	ldr r0, [r5, #0xc]
	adds r0, r4, r0
	str r0, [r5, #4]
	subs r4, r4, r0
	mov r0, r8
	adds r1, r2, #0
	movs r2, #1
	bl sub_807F334
	ldr r1, [r5]
	ldr r2, [r5, #4]
	str r4, [sp]
	mov r0, r8
	movs r3, #0
	bl sub_807C244
	movs r0, #1
	strb r0, [r7, #0x11]
	ldrb r0, [r5, #0x1a]
	movs r1, #0x7f
	ands r1, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r2, r0, #2
	adds r0, r7, #0
	adds r0, #0x38
	adds r3, r0, r2
	ldr r0, [r3]
	cmp r0, #0
	bgt _0807E064
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r7, r0
	add r1, sb
	adds r0, r7, #0
	adds r0, #0x30
	adds r0, r0, r2
	ldr r1, [r1]
	ldr r0, [r0]
	subs r1, r1, r0
	adds r0, r1, #0
	cmp r1, #0
	bge _0807E048
	rsbs r0, r1, #0
_0807E048:
	asrs r1, r0, #8
	cmp r1, #0x13
	bgt _0807E064
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r7, r1
	add r0, sb
	ldr r0, [r0]
	str r0, [r3]
	adds r0, r7, r2
	strh r6, [r0, #0x3e]
	ldr r0, _0807E094 @ =0x0000023A
	bl m4aSongNumStart
_0807E064:
	ldr r1, [r5, #4]
	ldr r0, _0807E098 @ =0x0000F3FF
	cmp r1, r0
	bgt _0807E06E
	b _0807E200
_0807E06E:
	ldr r0, _0807E09C @ =0xFFFFFE80
	str r0, [r5, #0xc]
	ldr r2, _0807E0A0 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _0807E0A4 @ =0x00196225
	muls r0, r1, r0
	ldr r3, _0807E0A8 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	movs r1, #3
	ands r0, r1
	ldr r1, _0807E0AC @ =gUnknown_080D5C70
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r5, #0x14]
	movs r0, #0x6e
	b _0807E1FE
	.align 2, 0
_0807E094: .4byte 0x0000023A
_0807E098: .4byte 0x0000F3FF
_0807E09C: .4byte 0xFFFFFE80
_0807E0A0: .4byte gPseudoRandom
_0807E0A4: .4byte 0x00196225
_0807E0A8: .4byte 0x3C6EF35F
_0807E0AC: .4byte gUnknown_080D5C70
_0807E0B0:
	mov r0, r8
	adds r1, r2, #0
	movs r2, #1
	bl sub_807F334
	ldrh r0, [r5, #0x14]
	subs r0, #1
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0807E0C8
	b _0807E200
_0807E0C8:
	movs r0, #0x78
	strh r0, [r5, #0x16]
	movs r0, #1
	strb r0, [r5, #0x13]
	b _0807E200
_0807E0D2:
	ldr r4, [r5, #4]
	ldr r0, [r5, #0xc]
	adds r0, r4, r0
	str r0, [r5, #4]
	subs r4, r4, r0
	mov r0, r8
	adds r1, r2, #0
	movs r2, #1
	bl sub_807F334
	ldr r1, [r5]
	ldr r2, [r5, #4]
	str r4, [sp]
	mov r0, r8
	movs r3, #0
	bl sub_807C244
	movs r0, #1
	strb r0, [r7, #0x11]
	movs r4, #0x90
	lsls r4, r4, #1
	adds r0, r7, r4
	ldr r0, [r0]
	ldr r1, _0807E120 @ =0xFFFFC000
	adds r2, r0, r1
	ldr r3, [r5, #4]
	cmp r3, r2
	ble _0807E10C
	b _0807E200
_0807E10C:
	ldr r1, [r5]
	mov r0, r8
	adds r2, r3, #0
	bl sub_807C48C
	mov r3, sl
	strb r3, [r5, #0x13]
	movs r0, #0xc8
	b _0807E1FE
	.align 2, 0
_0807E120: .4byte 0xFFFFC000
_0807E124:
	cmp r3, #0
	bne _0807E144
	ldrh r0, [r2]
	subs r0, #0x10
	ldr r4, _0807E140 @ =0x000003FF
	adds r1, r4, #0
	ands r0, r1
	strh r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	bne _0807E15C
	b _0807E162
	.align 2, 0
_0807E140: .4byte 0x000003FF
_0807E144:
	ldrh r0, [r2]
	adds r0, #0x10
	ldr r3, _0807E16C @ =0x000003FF
	adds r1, r3, #0
	ands r0, r1
	strh r0, [r2]
	movs r1, #0xc0
	lsls r1, r1, #2
	cmp r0, r1
	bne _0807E15C
	movs r4, #1
	mov sl, r4
_0807E15C:
	mov r0, sl
	cmp r0, #0
	beq _0807E200
_0807E162:
	movs r0, #0x1e
	strh r0, [r5, #0x14]
	movs r0, #0xd2
	b _0807E1FE
	.align 2, 0
_0807E16C: .4byte 0x000003FF
_0807E170:
	ldrh r0, [r5, #0x14]
	subs r0, #1
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807E200
	movs r0, #0xfa
	lsls r0, r0, #2
	b _0807E1FE
_0807E182:
	cmp r3, #0
	bne _0807E190
	ldr r0, _0807E18C @ =0xFFFFFE00
	b _0807E194
	.align 2, 0
_0807E18C: .4byte 0xFFFFFE00
_0807E190:
	movs r0, #0x80
	lsls r0, r0, #2
_0807E194:
	str r0, [r5, #8]
	movs r0, #0x9b
	lsls r0, r0, #1
	b _0807E1FE
_0807E19C:
	ldr r1, [r5]
	ldr r0, [r5, #8]
	adds r1, r1, r0
	str r1, [r5]
	cmp r3, #0
	bne _0807E1BC
	ldr r0, _0807E1B8 @ =0x00061400
	cmp r1, r0
	bgt _0807E200
	str r0, [r5]
	movs r0, #0xa0
	lsls r0, r0, #1
	b _0807E1FE
	.align 2, 0
_0807E1B8: .4byte 0x00061400
_0807E1BC:
	ldr r0, _0807E1CC @ =0x0006DBFF
	cmp r1, r0
	ble _0807E200
	adds r0, #1
	str r0, [r5]
	movs r0, #0xa0
	lsls r0, r0, #1
	b _0807E1FE
	.align 2, 0
_0807E1CC: .4byte 0x0006DBFF
_0807E1D0:
	cmp r3, #0
	bne _0807E1E4
	ldrh r0, [r2]
	subs r0, #0x10
	ldr r3, _0807E1E0 @ =0x000003FF
	adds r1, r3, #0
	b _0807E1EC
	.align 2, 0
_0807E1E0: .4byte 0x000003FF
_0807E1E4:
	ldrh r0, [r2]
	adds r0, #0x10
	ldr r4, _0807E210 @ =0x000003FF
	adds r1, r4, #0
_0807E1EC:
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	cmp r0, #0
	bne _0807E200
	movs r0, #1
	strb r0, [r5, #0x13]
	movs r0, #0xaf
	lsls r0, r0, #1
_0807E1FE:
	strh r0, [r5, #0x16]
_0807E200:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807E210: .4byte 0x000003FF

	thumb_func_start sub_807E214
sub_807E214: @ 0x0807E214
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x30
	mov r8, r0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r0, r1
	mov r2, r8
	adds r4, r2, r0
	movs r7, #0
	ldrh r1, [r4, #0x16]
	cmp r1, #0xc8
	bne _0807E23C
	b _0807E3E0
_0807E23C:
	cmp r1, #0xc8
	bgt _0807E254
	cmp r1, #0xa
	beq _0807E292
	cmp r1, #0xa
	bgt _0807E24E
	cmp r1, #0
	beq _0807E282
	b _0807E53A
_0807E24E:
	cmp r1, #0x64
	beq _0807E31E
	b _0807E53A
_0807E254:
	movs r2, #0x9b
	lsls r2, r2, #1
	cmp r1, r2
	bne _0807E25E
	b _0807E424
_0807E25E:
	cmp r1, r2
	bgt _0807E26E
	movs r0, #0x96
	lsls r0, r0, #1
	cmp r1, r0
	bne _0807E26C
	b _0807E414
_0807E26C:
	b _0807E53A
_0807E26E:
	movs r0, #0xa0
	lsls r0, r0, #1
	cmp r1, r0
	bne _0807E278
	b _0807E484
_0807E278:
	adds r0, #0xb4
	cmp r1, r0
	bne _0807E280
	b _0807E508
_0807E280:
	b _0807E53A
_0807E282:
	str r7, [r4, #8]
	str r7, [r4, #0xc]
	strb r7, [r4, #0x1b]
	str r7, [r4, #0x1c]
	movs r0, #0x79
	strh r0, [r4, #0x14]
	movs r0, #0xa
	b _0807E538
_0807E292:
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x1c]
	adds r1, r1, r0
	str r1, [r4, #0xc]
	cmp r1, #0
	bge _0807E2AC
	ldr r0, _0807E2A8 @ =0xFFFFFE00
	cmp r1, r0
	bgt _0807E2B6
	b _0807E2B4
	.align 2, 0
_0807E2A8: .4byte 0xFFFFFE00
_0807E2AC:
	ldr r0, _0807E2D4 @ =0x000001FF
	cmp r1, r0
	ble _0807E2B6
	adds r0, #1
_0807E2B4:
	str r0, [r4, #0xc]
_0807E2B6:
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	adds r7, r1, r0
	str r7, [r4, #4]
	ldrh r0, [r4, #0x14]
	subs r0, #1
	strh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807E2EC
	cmp r6, #0
	bne _0807E2D8
	movs r0, #0x80
	lsls r0, r0, #3
	b _0807E2DA
	.align 2, 0
_0807E2D4: .4byte 0x000001FF
_0807E2D8:
	ldr r0, _0807E2E8 @ =0xFFFFFC00
_0807E2DA:
	str r0, [r4, #8]
	movs r1, #0
	movs r0, #0x64
	strh r0, [r4, #0x16]
	strb r1, [r4, #0x13]
	b _0807E53A
	.align 2, 0
_0807E2E8: .4byte 0xFFFFFC00
_0807E2EC:
	movs r1, #0x14
	ldrsh r0, [r4, r1]
	movs r1, #0xa
	bl __modsi3
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0807E2FE
	b _0807E53A
_0807E2FE:
	mov r2, r8
	ldr r5, [r2, #0x20]
	ldr r0, [r5, #0x14]
	ldr r1, _0807E314 @ =0xFFFFF000
	adds r0, r0, r1
	cmp r7, r0
	ble _0807E318
	movs r0, #0x40
	rsbs r0, r0, #0
	str r0, [r4, #0x1c]
	b _0807E53A
	.align 2, 0
_0807E314: .4byte 0xFFFFF000
_0807E318:
	movs r0, #0x40
	str r0, [r4, #0x1c]
	b _0807E53A
_0807E31E:
	ldr r3, [r4]
	ldr r0, [r4, #8]
	adds r1, r3, r0
	str r1, [r4]
	cmp r6, #0
	bne _0807E338
	ldr r0, _0807E334 @ =0x000667FF
	cmp r1, r0
	ble _0807E344
	adds r0, #1
	b _0807E340
	.align 2, 0
_0807E334: .4byte 0x000667FF
_0807E338:
	movs r0, #0xd1
	lsls r0, r0, #0xb
	cmp r1, r0
	bgt _0807E344
_0807E340:
	str r0, [r4]
	movs r7, #1
_0807E344:
	ldr r1, [r4]
	subs r3, r3, r1
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	movs r2, #0x9e
	lsls r2, r2, #2
	adds r0, r0, r2
	add r0, r8
	ldr r2, [r4, #4]
	movs r5, #0
	str r5, [sp]
	bl sub_807C244
	cmp r7, #0
	bne _0807E366
	b _0807E53A
_0807E366:
	movs r0, #0xc8
	strh r0, [r4, #0x16]
	cmp r6, #0
	bne _0807E370
	b _0807E53A
_0807E370:
	bl sub_807C5D0
	str r5, [sp, #0x28]
	add r0, sp, #0x2c
	movs r1, #0xf0
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	mov r1, sp
	adds r1, #0x2e
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x1e
	strb r0, [r1]
	mov r0, r8
	ldr r5, [r0, #0x20]
	adds r0, r5, #0
	adds r0, #0x4a
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0807E3D4
	movs r6, #0x8e
	lsls r6, r6, #1
	add r6, r8
	ldr r1, [r6]
	asrs r1, r1, #8
	ldr r2, [r4, #4]
	asrs r2, r2, #8
	str r5, [sp]
	str r0, [sp, #4]
	add r0, sp, #8
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	beq _0807E3D4
	movs r0, #1
	strb r0, [r4, #0x1b]
	movs r0, #0xa0
	bl sub_807FB7C
	adds r0, r5, #0
	bl sub_8081A10
	ldr r0, [r6]
	str r0, [r5, #0x10]
	ldr r0, [r4, #4]
	str r0, [r5, #0x14]
_0807E3D4:
	ldr r0, _0807E3DC @ =0x0000023B
	bl m4aSongNumStart
	b _0807E53A
	.align 2, 0
_0807E3DC: .4byte 0x0000023B
_0807E3E0:
	cmp r6, #0
	bne _0807E3E6
	b _0807E53A
_0807E3E6:
	adds r1, r4, #0
	subs r1, #0x28
	ldrh r0, [r1, #0x16]
	cmp r0, #0xc8
	beq _0807E3F2
	b _0807E53A
_0807E3F2:
	ldrb r0, [r4, #0x1b]
	cmp r0, #0
	beq _0807E3FE
	movs r0, #0x96
	lsls r0, r0, #1
	b _0807E402
_0807E3FE:
	movs r0, #0xfa
	lsls r0, r0, #1
_0807E402:
	strh r0, [r4, #0x16]
	strh r0, [r1, #0x16]
	ldr r0, [r4, #8]
	rsbs r0, r0, #0
	str r0, [r4, #8]
	ldr r0, [r1, #8]
	rsbs r0, r0, #0
	str r0, [r1, #8]
	b _0807E53A
_0807E414:
	ldr r0, _0807E420 @ =0xFFFFF800
	str r0, [r4, #0xc]
	movs r0, #4
	strb r0, [r4, #0x1b]
	strh r2, [r4, #0x16]
	b _0807E53A
	.align 2, 0
_0807E420: .4byte 0xFFFFF800
_0807E424:
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	adds r1, r1, r0
	str r1, [r4, #4]
	adds r0, #0x80
	str r0, [r4, #0xc]
	cmp r6, #0
	beq _0807E440
	ldrb r0, [r4, #0x1b]
	cmp r0, #0
	beq _0807E440
	mov r2, r8
	ldr r5, [r2, #0x20]
	str r1, [r5, #0x14]
_0807E440:
	ldr r1, [r4, #4]
	ldr r0, _0807E480 @ =0x0000AFFF
	cmp r1, r0
	ble _0807E53A
	ldr r0, [r4, #0xc]
	cmp r0, #0
	blt _0807E53A
	movs r0, #0xb0
	lsls r0, r0, #8
	str r0, [r4, #4]
	movs r0, #0x1e
	strh r0, [r4, #0x14]
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r4, #0x16]
	cmp r6, #0
	beq _0807E53A
	adds r0, #0xfc
	bl m4aSongNumStart
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x91
	str r1, [sp]
	movs r1, #0x20
	movs r2, #0
	bl CreateScreenShake
	b _0807E53A
	.align 2, 0
_0807E480: .4byte 0x0000AFFF
_0807E484:
	ldrh r0, [r4, #0x14]
	subs r0, #1
	strh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807E53A
	ldrb r0, [r4, #0x1b]
	cmp r0, #0
	beq _0807E49A
	subs r0, #1
	strb r0, [r4, #0x1b]
_0807E49A:
	ldrb r0, [r4, #0x1b]
	cmp r0, #1
	bhi _0807E4FA
	cmp r6, #0
	beq _0807E4EE
	mov r1, r8
	ldr r5, [r1, #0x20]
	cmp r0, #0
	beq _0807E4EE
	adds r6, r5, #0
	adds r6, #0x4a
	movs r2, #0
	ldrsh r0, [r6, r2]
	cmp r0, #0
	bgt _0807E4C4
	adds r0, r5, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _0807E4E8
_0807E4C4:
	adds r0, r5, #0
	adds r0, #0x9e
	strh r7, [r0]
	ldr r0, [r5, #4]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #4]
	str r7, [r5, #0x6c]
	ldr r1, _0807E4E4 @ =Player_8008CD0
	adds r0, r5, #0
	bl SetPlayerCallback
	movs r0, #0x78
	strh r0, [r6]
	b _0807E4EE
	.align 2, 0
_0807E4E4: .4byte Player_8008CD0
_0807E4E8:
	adds r0, r5, #0
	bl Player_8014550
_0807E4EE:
	movs r0, #0xfa
	lsls r0, r0, #1
	strh r0, [r4, #0x16]
	movs r0, #1
	strb r0, [r4, #0x13]
	b _0807E53A
_0807E4FA:
	ldr r0, _0807E504 @ =0xFFFFF600
	str r0, [r4, #0xc]
	strh r2, [r4, #0x16]
	b _0807E53A
	.align 2, 0
_0807E504: .4byte 0xFFFFF600
_0807E508:
	ldr r1, [r4]
	ldr r0, [r4, #8]
	adds r1, r1, r0
	str r1, [r4]
	cmp r6, #0
	bne _0807E524
	ldr r0, _0807E520 @ =0x00061400
	cmp r1, r0
	bgt _0807E530
	str r0, [r4]
	b _0807E534
	.align 2, 0
_0807E520: .4byte 0x00061400
_0807E524:
	ldr r0, _0807E548 @ =0x0006DBFF
	cmp r1, r0
	ble _0807E530
	adds r0, #1
	str r0, [r4]
	movs r7, #1
_0807E530:
	cmp r7, #0
	beq _0807E53A
_0807E534:
	movs r0, #0xfa
	lsls r0, r0, #2
_0807E538:
	strh r0, [r4, #0x16]
_0807E53A:
	add sp, #0x30
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807E548: .4byte 0x0006DBFF

	thumb_func_start sub_807E54C
sub_807E54C: @ 0x0807E54C
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r5, r7, r0
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #2
	movs r2, #0xd0
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r3, r7, r0
	movs r4, #0
	ldrh r2, [r5, #0x16]
	cmp r2, #0xc8
	bne _0807E57C
	b _0807E78C
_0807E57C:
	cmp r2, #0xc8
	bgt _0807E59C
	cmp r2, #0x14
	bne _0807E586
	b _0807E6B2
_0807E586:
	cmp r2, #0x14
	bgt _0807E594
	cmp r2, #0
	beq _0807E5C8
	cmp r2, #0xa
	beq _0807E66C
	b _0807E98C
_0807E594:
	cmp r2, #0x64
	bne _0807E59A
	b _0807E6C8
_0807E59A:
	b _0807E98C
_0807E59C:
	cmp r2, #0xe6
	bne _0807E5A2
	b _0807E854
_0807E5A2:
	cmp r2, #0xe6
	bgt _0807E5B4
	cmp r2, #0xd2
	bne _0807E5AC
	b _0807E7AC
_0807E5AC:
	cmp r2, #0xdc
	bne _0807E5B2
	b _0807E83C
_0807E5B2:
	b _0807E98C
_0807E5B4:
	movs r0, #0x96
	lsls r0, r0, #1
	cmp r2, r0
	bne _0807E5BE
	b _0807E8B4
_0807E5BE:
	adds r0, #0xa
	cmp r2, r0
	bne _0807E5C6
	b _0807E940
_0807E5C6:
	b _0807E98C
_0807E5C8:
	cmp r6, #0
	beq _0807E5D2
	cmp r6, #1
	beq _0807E5E0
	b _0807E5F0
_0807E5D2:
	movs r3, #0x9e
	lsls r3, r3, #2
	adds r2, r7, r3
	ldr r0, _0807E5DC @ =sBossFinalAnimsHands
	b _0807E5E8
	.align 2, 0
_0807E5DC: .4byte sBossFinalAnimsHands
_0807E5E0:
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r2, r7, r0
	ldr r0, _0807E600 @ =sBossFinalAnimsHands+0x18
_0807E5E8:
	ldrh r1, [r0, #4]
	strh r1, [r2, #0xc]
	ldrh r0, [r0, #6]
	strb r0, [r2, #0x1a]
_0807E5F0:
	cmp r6, #0
	bne _0807E604
	ldr r0, [r5]
	asrs r0, r0, #8
	movs r2, #0xc6
	lsls r2, r2, #3
	adds r1, r2, #0
	b _0807E60E
	.align 2, 0
_0807E600: .4byte sBossFinalAnimsHands+0x18
_0807E604:
	ldr r0, [r5]
	asrs r0, r0, #8
	movs r3, #0xd8
	lsls r3, r3, #3
	adds r1, r3, #0
_0807E60E:
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _0807E664 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r2
	orrs r0, r1
	str r0, [sp]
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	movs r1, #0x60
	subs r1, r1, r0
	lsls r1, r1, #0x10
	ldr r2, _0807E668 @ =0x0000FFFF
	ldr r0, [sp]
	ands r0, r2
	orrs r0, r1
	str r0, [sp]
	ldr r1, _0807E664 @ =0xFFFF0000
	mov r4, sp
	ldr r0, [sp, #4]
	ands r0, r1
	str r0, [sp, #4]
	mov r0, sp
	movs r1, #8
	bl sa2__sub_8085A9C
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #1
	str r0, [r5, #8]
	movs r2, #2
	ldrsh r0, [r4, r2]
	lsls r0, r0, #1
	str r0, [r5, #0xc]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r5, #0x10]
	movs r0, #0xa
	strh r0, [r5, #0x16]
	b _0807E98C
	.align 2, 0
_0807E664: .4byte 0xFFFF0000
_0807E668: .4byte 0x0000FFFF
_0807E66C:
	ldr r0, [r5]
	ldr r1, [r5, #8]
	adds r0, r0, r1
	str r0, [r5]
	ldr r0, [r5, #4]
	ldr r1, [r5, #0xc]
	adds r0, r0, r1
	str r0, [r5, #4]
	movs r1, #0xc0
	lsls r1, r1, #7
	cmp r0, r1
	bgt _0807E68C
	strb r4, [r5, #0x13]
	strh r2, [r5, #0x14]
	movs r0, #0x14
	strh r0, [r5, #0x16]
_0807E68C:
	cmp r6, #0
	bne _0807E6A0
	ldrh r1, [r3]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _0807E69C
	b _0807E98C
_0807E69C:
	adds r0, r1, #0
	b _0807E982
_0807E6A0:
	ldrh r1, [r3]
	movs r0, #0xc0
	lsls r0, r0, #2
	cmp r1, r0
	bne _0807E6AC
	b _0807E98C
_0807E6AC:
	adds r0, r1, #0
	subs r0, #0x10
	b _0807E984
_0807E6B2:
	ldrh r0, [r5, #0x14]
	subs r0, #1
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0807E6C0
	b _0807E98C
_0807E6C0:
	strh r4, [r5, #0x14]
	movs r0, #0x64
	strh r0, [r5, #0x16]
	b _0807E98C
_0807E6C8:
	cmp r6, #0
	bne _0807E71C
	ldr r4, _0807E718 @ =gSineTable
	ldrh r3, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r3, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	cmp r0, #0
	bge _0807E6EA
	adds r0, #0x3f
_0807E6EA:
	asrs r2, r0, #6
	lsls r0, r3, #1
	adds r0, r0, r4
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	cmp r0, #0
	bge _0807E700
	adds r0, #0x3f
_0807E700:
	asrs r1, r0, #6
	movs r3, #0xc6
	lsls r3, r3, #0xb
	adds r0, r2, r3
	str r0, [r5]
	movs r2, #0xf0
	lsls r2, r2, #7
	adds r0, r1, r2
	str r0, [r5, #4]
	ldrh r0, [r5, #0x10]
	subs r0, #0x10
	b _0807E766
	.align 2, 0
_0807E718: .4byte gSineTable
_0807E71C:
	ldr r4, _0807E780 @ =gSineTable
	ldrh r3, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r3, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	cmp r0, #0
	bge _0807E73A
	adds r0, #0x3f
_0807E73A:
	asrs r2, r0, #6
	lsls r0, r3, #1
	adds r0, r0, r4
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	cmp r0, #0
	bge _0807E750
	adds r0, #0x3f
_0807E750:
	asrs r1, r0, #6
	movs r3, #0xd8
	lsls r3, r3, #0xb
	adds r0, r2, r3
	str r0, [r5]
	movs r2, #0xf0
	lsls r2, r2, #7
	adds r0, r1, r2
	str r0, [r5, #4]
	ldrh r0, [r5, #0x10]
	adds r0, #0x10
_0807E766:
	ldr r3, _0807E784 @ =0x000003FF
	adds r1, r3, #0
	ands r0, r1
	strh r0, [r5, #0x10]
	ldrh r0, [r5, #0x14]
	adds r0, #0x10
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	ldr r1, _0807E788 @ =0x07FF0000
	cmp r0, r1
	bgt _0807E77E
	b _0807E98C
_0807E77E:
	b _0807E8AE
	.align 2, 0
_0807E780: .4byte gSineTable
_0807E784: .4byte 0x000003FF
_0807E788: .4byte 0x07FF0000
_0807E78C:
	ldrh r0, [r5, #0x14]
	subs r0, #1
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0807E79A
	b _0807E98C
_0807E79A:
	ldr r0, _0807E7A8 @ =0x0000023D
	bl m4aSongNumStart
	movs r0, #0xd2
	strh r0, [r5, #0x16]
	b _0807E98C
	.align 2, 0
_0807E7A8: .4byte 0x0000023D
_0807E7AC:
	ldr r1, [r5, #0x20]
	ldr r0, [r5, #0x24]
	cmp r1, r0
	bge _0807E7E0
	ldr r2, [r5, #0x1c]
	adds r0, r1, r2
	str r0, [r5, #0x20]
	ldr r0, [r5, #8]
	muls r0, r2, r0
	cmp r0, #0
	bge _0807E7C4
	adds r0, #0xff
_0807E7C4:
	asrs r0, r0, #8
	ldr r1, [r5]
	adds r1, r1, r0
	str r1, [r5]
	ldr r0, [r5, #0xc]
	muls r0, r2, r0
	cmp r0, #0
	bge _0807E7D6
	adds r0, #0xff
_0807E7D6:
	asrs r1, r0, #8
	ldr r0, [r5, #4]
	adds r0, r0, r1
	str r0, [r5, #4]
	b _0807E7E2
_0807E7E0:
	movs r4, #1
_0807E7E2:
	ldrh r2, [r3, #2]
	movs r0, #2
	ldrsh r1, [r3, r0]
	ldr r0, _0807E7FC @ =0x000001FF
	cmp r1, r0
	bgt _0807E800
	adds r0, r2, #0
	adds r0, #0x10
	strh r0, [r3, #2]
	ldrh r0, [r3, #4]
	adds r0, #0x10
	strh r0, [r3, #4]
	b _0807E804
	.align 2, 0
_0807E7FC: .4byte 0x000001FF
_0807E800:
	movs r0, #2
	orrs r4, r0
_0807E804:
	movs r2, #2
	ldrsh r1, [r3, r2]
	movs r0, #0xc0
	lsls r0, r0, #1
	cmp r1, r0
	ble _0807E82C
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	movs r1, #0x9e
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r7, r0
	adds r1, r3, #0
	movs r2, #2
	adds r3, r6, #0
	bl sub_807F334
	movs r0, #1
	strb r0, [r5, #0x13]
_0807E82C:
	cmp r4, #3
	beq _0807E832
	b _0807E98C
_0807E832:
	movs r0, #0xa
	strh r0, [r5, #0x14]
	movs r0, #0xdc
	strh r0, [r5, #0x16]
	b _0807E98C
_0807E83C:
	ldrh r0, [r5, #0x14]
	subs r0, #1
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0807E84A
	b _0807E98C
_0807E84A:
	movs r0, #0xe6
	strh r0, [r5, #0x16]
	movs r0, #0
	strb r0, [r5, #0x13]
	b _0807E98C
_0807E854:
	ldr r1, [r5, #0x20]
	cmp r1, #0
	ble _0807E888
	ldr r0, [r5, #0x1c]
	subs r1, r1, r0
	str r1, [r5, #0x20]
	rsbs r2, r0, #0
	ldr r0, [r5, #8]
	muls r0, r2, r0
	cmp r0, #0
	bge _0807E86C
	adds r0, #0xff
_0807E86C:
	asrs r0, r0, #8
	ldr r1, [r5]
	adds r1, r1, r0
	str r1, [r5]
	ldr r0, [r5, #0xc]
	muls r0, r2, r0
	cmp r0, #0
	bge _0807E87E
	adds r0, #0xff
_0807E87E:
	asrs r1, r0, #8
	ldr r0, [r5, #4]
	adds r0, r0, r1
	str r0, [r5, #4]
	b _0807E88A
_0807E888:
	movs r4, #1
_0807E88A:
	ldrh r2, [r3, #2]
	movs r0, #2
	ldrsh r1, [r3, r0]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	ble _0807E8A6
	adds r0, r2, #0
	subs r0, #0x10
	strh r0, [r3, #2]
	ldrh r0, [r3, #4]
	subs r0, #0x10
	strh r0, [r3, #4]
	b _0807E8AA
_0807E8A6:
	movs r0, #2
	orrs r4, r0
_0807E8AA:
	cmp r4, #3
	bne _0807E98C
_0807E8AE:
	movs r0, #0x6e
	strh r0, [r5, #0x16]
	b _0807E98C
_0807E8B4:
	cmp r6, #0
	bne _0807E8C8
	ldr r0, [r5]
	asrs r0, r0, #8
	ldr r2, _0807E8C4 @ =0x00000614
	adds r1, r2, #0
	b _0807E8D0
	.align 2, 0
_0807E8C4: .4byte 0x00000614
_0807E8C8:
	ldr r0, [r5]
	asrs r0, r0, #8
	ldr r3, _0807E90C @ =0x000006DC
	adds r1, r3, #0
_0807E8D0:
	subs r1, r1, r0
	mov r0, sp
	strh r1, [r0]
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	movs r1, #0x98
	subs r1, r1, r0
	mov r4, sp
	movs r0, #0
	strh r1, [r4, #2]
	strh r0, [r4, #4]
	mov r0, sp
	movs r1, #8
	bl sa2__sub_8085A9C
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #1
	str r0, [r5, #8]
	movs r2, #2
	ldrsh r0, [r4, r2]
	lsls r0, r0, #1
	str r0, [r5, #0xc]
	cmp r6, #0
	beq _0807E910
	cmp r6, #1
	beq _0807E920
	b _0807E930
	.align 2, 0
_0807E90C: .4byte 0x000006DC
_0807E910:
	movs r3, #0x9e
	lsls r3, r3, #2
	adds r2, r7, r3
	ldr r0, _0807E91C @ =sBossFinalAnimsHands
	b _0807E928
	.align 2, 0
_0807E91C: .4byte sBossFinalAnimsHands
_0807E920:
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r2, r7, r0
	ldr r0, _0807E93C @ =sBossFinalAnimsHands+0x18
_0807E928:
	ldrh r1, [r0, #0xc]
	strh r1, [r2, #0xc]
	ldrh r0, [r0, #0xe]
	strb r0, [r2, #0x1a]
_0807E930:
	movs r0, #1
	strb r0, [r5, #0x13]
	movs r0, #0x9b
	lsls r0, r0, #1
	strh r0, [r5, #0x16]
	b _0807E98C
	.align 2, 0
_0807E93C: .4byte sBossFinalAnimsHands+0x18
_0807E940:
	ldr r1, [r5]
	ldr r0, [r5, #8]
	adds r2, r1, r0
	str r2, [r5]
	ldr r0, [r5, #4]
	ldr r1, [r5, #0xc]
	adds r0, r0, r1
	str r0, [r5, #4]
	cmp r6, #0
	bne _0807E970
	ldr r0, _0807E96C @ =0x00061400
	cmp r2, r0
	bgt _0807E960
	movs r0, #0xfa
	lsls r0, r0, #2
	strh r0, [r5, #0x16]
_0807E960:
	ldrh r0, [r3]
	cmp r0, #0
	beq _0807E98C
	subs r0, #0x10
	b _0807E984
	.align 2, 0
_0807E96C: .4byte 0x00061400
_0807E970:
	ldr r0, _0807E994 @ =0x0006DBFF
	cmp r2, r0
	ble _0807E97C
	movs r0, #0xfa
	lsls r0, r0, #2
	strh r0, [r5, #0x16]
_0807E97C:
	ldrh r0, [r3]
	cmp r0, #0
	beq _0807E98C
_0807E982:
	adds r0, #0x10
_0807E984:
	ldr r2, _0807E998 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r3]
_0807E98C:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807E994: .4byte 0x0006DBFF
_0807E998: .4byte 0x000003FF

	thumb_func_start sub_807E99C
sub_807E99C: @ 0x0807E99C
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x18
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #3
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r5, r4, r0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	movs r1, #0xd0
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r3, r4, r0
	ldrh r0, [r5, #0x16]
	cmp r0, #0x1f
	bls _0807E9CA
	b _0807EBAC
_0807E9CA:
	lsls r0, r0, #2
	ldr r1, _0807E9D4 @ =_0807E9D8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0807E9D4: .4byte _0807E9D8
_0807E9D8: @ jump table
	.4byte _0807EA58 @ case 0
	.4byte _0807EBAC @ case 1
	.4byte _0807EBAC @ case 2
	.4byte _0807EBAC @ case 3
	.4byte _0807EBAC @ case 4
	.4byte _0807EBAC @ case 5
	.4byte _0807EBAC @ case 6
	.4byte _0807EBAC @ case 7
	.4byte _0807EBAC @ case 8
	.4byte _0807EBAC @ case 9
	.4byte _0807EADC @ case 10
	.4byte _0807EBAC @ case 11
	.4byte _0807EBAC @ case 12
	.4byte _0807EBAC @ case 13
	.4byte _0807EBAC @ case 14
	.4byte _0807EBAC @ case 15
	.4byte _0807EBAC @ case 16
	.4byte _0807EBAC @ case 17
	.4byte _0807EBAC @ case 18
	.4byte _0807EBAC @ case 19
	.4byte _0807EB1E @ case 20
	.4byte _0807EBAC @ case 21
	.4byte _0807EBAC @ case 22
	.4byte _0807EBAC @ case 23
	.4byte _0807EBAC @ case 24
	.4byte _0807EBAC @ case 25
	.4byte _0807EBAC @ case 26
	.4byte _0807EBAC @ case 27
	.4byte _0807EBAC @ case 28
	.4byte _0807EBAC @ case 29
	.4byte _0807EB3A @ case 30
	.4byte _0807EB6C @ case 31
_0807EA58:
	cmp r2, #0
	bne _0807EA6E
	movs r2, #0x98
	lsls r2, r2, #1
	adds r0, r4, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	ldr r0, [r5]
	asrs r0, r0, #8
	adds r0, #0x20
	b _0807EA7E
_0807EA6E:
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, [r0]
	asrs r1, r1, #8
	ldr r0, [r5]
	asrs r0, r0, #8
	subs r0, #0x20
_0807EA7E:
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _0807EAD4 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r2
	orrs r0, r1
	str r0, [sp]
	movs r2, #0x9a
	lsls r2, r2, #1
	adds r0, r4, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	subs r1, r1, r0
	lsls r1, r1, #0x10
	ldr r2, _0807EAD8 @ =0x0000FFFF
	ldr r0, [sp]
	ands r0, r2
	orrs r0, r1
	str r0, [sp]
	ldr r1, _0807EAD4 @ =0xFFFF0000
	mov r4, sp
	ldr r0, [sp, #4]
	ands r0, r1
	str r0, [sp, #4]
	mov r0, sp
	movs r1, #8
	bl sa2__sub_8085A9C
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #1
	str r0, [r5, #8]
	movs r2, #2
	ldrsh r0, [r4, r2]
	lsls r0, r0, #1
	str r0, [r5, #0xc]
	movs r0, #0xa
	b _0807EBAA
	.align 2, 0
_0807EAD4: .4byte 0xFFFF0000
_0807EAD8: .4byte 0x0000FFFF
_0807EADC:
	ldr r1, [r5]
	ldr r0, [r5, #8]
	adds r3, r1, r0
	str r3, [r5]
	ldr r0, [r5, #4]
	ldr r1, [r5, #0xc]
	adds r0, r0, r1
	str r0, [r5, #4]
	cmp r2, #0
	bne _0807EB08
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	ldr r2, _0807EB04 @ =0xFFFFE000
	adds r0, r0, r2
	cmp r0, r3
	bgt _0807EBAC
	movs r0, #0x14
	b _0807EBAA
	.align 2, 0
_0807EB04: .4byte 0xFFFFE000
_0807EB08:
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r0, r2
	cmp r0, r3
	blt _0807EBAC
	movs r0, #0x14
	b _0807EBAA
_0807EB1E:
	cmp r2, #0
	beq _0807EBAC
	adds r1, r5, #0
	subs r1, #0x28
	ldrh r0, [r5, #0x16]
	cmp r0, #0x14
	bne _0807EBAC
	ldrh r0, [r1, #0x16]
	cmp r0, #0x14
	bne _0807EBAC
	movs r0, #0x1e
	strh r0, [r5, #0x16]
	strh r0, [r1, #0x16]
	b _0807EBAC
_0807EB3A:
	cmp r2, #0
	beq _0807EB44
	cmp r2, #1
	beq _0807EB54
	b _0807EB64
_0807EB44:
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r2, r4, r0
	ldr r0, _0807EB50 @ =sBossFinalAnimsHands
	b _0807EB5C
	.align 2, 0
_0807EB50: .4byte sBossFinalAnimsHands
_0807EB54:
	movs r1, #0xa8
	lsls r1, r1, #2
	adds r2, r4, r1
	ldr r0, _0807EB68 @ =sBossFinalAnimsHands+0x18
_0807EB5C:
	ldrh r1, [r0, #0x10]
	strh r1, [r2, #0xc]
	ldrh r0, [r0, #0x12]
	strb r0, [r2, #0x1a]
_0807EB64:
	movs r0, #0x1f
	b _0807EBAA
	.align 2, 0
_0807EB68: .4byte sBossFinalAnimsHands+0x18
_0807EB6C:
	cmp r2, #0
	bne _0807EB94
	ldrh r0, [r3]
	subs r0, #8
	ldr r2, _0807EB90 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r3]
	movs r1, #0xc0
	lsls r1, r1, #2
	cmp r0, r1
	bne _0807EBAC
	movs r0, #0x64
	strh r0, [r5, #0x16]
	movs r0, #0xa
	strh r0, [r4, #0xc]
	b _0807EBAC
	.align 2, 0
_0807EB90: .4byte 0x000003FF
_0807EB94:
	ldrh r0, [r3]
	adds r0, #8
	ldr r2, _0807EBB4 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	bne _0807EBAC
	movs r0, #0x64
_0807EBAA:
	strh r0, [r5, #0x16]
_0807EBAC:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0807EBB4: .4byte 0x000003FF

	thumb_func_start sub_807EBB8
sub_807EBB8: @ 0x0807EBB8
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r5, r7, r0
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #2
	movs r2, #0xd0
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r2, r7, r0
	ldrh r0, [r5, #0x16]
	cmp r0, #0xa
	beq _0807EC98
	cmp r0, #0xa
	bgt _0807EBEE
	cmp r0, #0
	beq _0807EBF4
	b _0807ECEE
_0807EBEE:
	cmp r0, #0x14
	beq _0807ECBC
	b _0807ECEE
_0807EBF4:
	cmp r6, #0
	bne _0807EC08
	ldr r0, [r5]
	asrs r0, r0, #8
	ldr r3, _0807EC04 @ =0x00000614
	adds r1, r3, #0
	b _0807EC10
	.align 2, 0
_0807EC04: .4byte 0x00000614
_0807EC08:
	ldr r0, [r5]
	asrs r0, r0, #8
	ldr r2, _0807EC64 @ =0x000006DC
	adds r1, r2, #0
_0807EC10:
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _0807EC68 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r2
	orrs r0, r1
	str r0, [sp]
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	movs r1, #0x98
	subs r1, r1, r0
	lsls r1, r1, #0x10
	ldr r2, _0807EC6C @ =0x0000FFFF
	ldr r0, [sp]
	ands r0, r2
	orrs r0, r1
	str r0, [sp]
	ldr r1, _0807EC68 @ =0xFFFF0000
	mov r4, sp
	ldr r0, [sp, #4]
	ands r0, r1
	str r0, [sp, #4]
	mov r0, sp
	movs r1, #8
	bl sa2__sub_8085A9C
	mov r0, sp
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r0, r0, #1
	str r0, [r5, #8]
	movs r1, #2
	ldrsh r0, [r4, r1]
	lsls r0, r0, #1
	str r0, [r5, #0xc]
	cmp r6, #0
	beq _0807EC70
	cmp r6, #1
	beq _0807EC80
	b _0807EC90
	.align 2, 0
_0807EC64: .4byte 0x000006DC
_0807EC68: .4byte 0xFFFF0000
_0807EC6C: .4byte 0x0000FFFF
_0807EC70:
	movs r3, #0x9e
	lsls r3, r3, #2
	adds r2, r7, r3
	ldr r0, _0807EC7C @ =sBossFinalAnimsHands
	b _0807EC88
	.align 2, 0
_0807EC7C: .4byte sBossFinalAnimsHands
_0807EC80:
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r2, r7, r0
	ldr r0, _0807EC94 @ =sBossFinalAnimsHands+0x18
_0807EC88:
	ldrh r1, [r0, #0x14]
	strh r1, [r2, #0xc]
	ldrh r0, [r0, #0x16]
	strb r0, [r2, #0x1a]
_0807EC90:
	movs r0, #0xa
	b _0807ECEC
	.align 2, 0
_0807EC94: .4byte sBossFinalAnimsHands+0x18
_0807EC98:
	cmp r6, #0
	bne _0807ECA2
	ldrh r0, [r2]
	adds r0, #8
	b _0807ECA6
_0807ECA2:
	ldrh r0, [r2]
	subs r0, #8
_0807ECA6:
	ldr r3, _0807ECB8 @ =0x000003FF
	adds r1, r3, #0
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	cmp r0, #0
	bne _0807ECEE
	movs r0, #0x14
	b _0807ECEC
	.align 2, 0
_0807ECB8: .4byte 0x000003FF
_0807ECBC:
	ldr r1, [r5]
	ldr r0, [r5, #8]
	adds r2, r1, r0
	str r2, [r5]
	ldr r0, [r5, #4]
	ldr r1, [r5, #0xc]
	adds r0, r0, r1
	str r0, [r5, #4]
	cmp r6, #0
	bne _0807ECE4
	ldr r0, _0807ECE0 @ =0x00061400
	cmp r2, r0
	bgt _0807ECEE
	movs r0, #0x1e
	strh r0, [r5, #0x16]
	movs r0, #0x64
	strh r0, [r7, #0xc]
	b _0807ECEE
	.align 2, 0
_0807ECE0: .4byte 0x00061400
_0807ECE4:
	ldr r0, _0807ECF8 @ =0x0006DBFF
	cmp r2, r0
	ble _0807ECEE
	movs r0, #0x1e
_0807ECEC:
	strh r0, [r5, #0x16]
_0807ECEE:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807ECF8: .4byte 0x0006DBFF

	thumb_func_start sub_807ECFC
sub_807ECFC: @ 0x0807ECFC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r4, r6, r0
	ldrh r1, [r4, #0x16]
	cmp r1, #0
	beq _0807ED20
	cmp r1, #0xa
	beq _0807ED30
	b _0807ED84
_0807ED20:
	str r1, [r4, #8]
	ldr r0, _0807ED2C @ =0xFFFFFD00
	str r0, [r4, #0xc]
	strh r1, [r4, #0x14]
	movs r0, #0xa
	b _0807ED82
	.align 2, 0
_0807ED2C: .4byte 0xFFFFFD00
_0807ED30:
	ldr r1, [r4]
	ldr r0, [r4, #8]
	adds r3, r1, r0
	str r3, [r4]
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	adds r2, r1, r0
	str r2, [r4, #4]
	adds r0, #0x40
	str r0, [r4, #0xc]
	ldrh r0, [r4, #0x14]
	adds r0, #1
	movs r5, #0
	strh r0, [r4, #0x14]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0807ED72
	lsls r1, r3, #8
	asrs r1, r1, #0x10
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	movs r3, #0xc0
	lsls r3, r3, #2
	str r5, [sp]
	movs r0, #0x1e
	str r0, [sp, #4]
	str r5, [sp, #8]
	ldr r0, [r6, #0x18]
	str r0, [sp, #0xc]
	movs r0, #7
	bl sub_8079758
_0807ED72:
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	movs r1, #0x96
	lsls r1, r1, #9
	cmp r0, r1
	ble _0807ED84
	movs r0, #0xfa
	lsls r0, r0, #2
_0807ED82:
	strh r0, [r4, #0x16]
_0807ED84:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_807ED8C
sub_807ED8C: @ 0x0807ED8C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	adds r5, r0, #0
	ldrh r1, [r5, #0x16]
	cmp r1, #0x6e
	bne _0807ED9E
	b _0807F200
_0807ED9E:
	cmp r1, #0x6e
	bgt _0807EDB6
	cmp r1, #1
	beq _0807EDFE
	cmp r1, #1
	bgt _0807EDB0
	cmp r1, #0
	beq _0807EDDA
	b _0807F200
_0807EDB0:
	cmp r1, #0x64
	beq _0807EE64
	b _0807F200
_0807EDB6:
	cmp r1, #0xd2
	bne _0807EDBC
	b _0807F010
_0807EDBC:
	cmp r1, #0xd2
	bgt _0807EDC8
	cmp r1, #0xc8
	bne _0807EDC6
	b _0807EF44
_0807EDC6:
	b _0807F200
_0807EDC8:
	cmp r1, #0xdc
	bne _0807EDCE
	b _0807F064
_0807EDCE:
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp r1, r0
	bne _0807EDD8
	b _0807F1A0
_0807EDD8:
	b _0807F200
_0807EDDA:
	ldrb r0, [r5, #1]
	cmp r0, #4
	ble _0807EDE2
	b _0807F200
_0807EDE2:
	cmp r0, #1
	bge _0807EDE8
	b _0807F200
_0807EDE8:
	adds r0, r5, #0
	bl sub_807F228
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0807EDF6
	b _0807F200
_0807EDF6:
	adds r0, r5, #0
	bl sub_807F434
	b _0807F200
_0807EDFE:
	ldrh r0, [r5, #0x14]
	subs r0, #1
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	beq _0807EE0E
	b _0807F200
_0807EE0E:
	adds r0, r5, #0
	movs r1, #1
	bl sub_807BE58
	ldrb r0, [r5]
	cmp r0, #0
	beq _0807EE34
	movs r0, #0x8a
	lsls r0, r0, #2
	adds r2, r5, r0
	ldr r1, _0807EE30 @ =gUnknown_080D5C38
	ldrh r0, [r1]
	strh r0, [r2, #0xc]
	ldrh r0, [r1, #2]
	strb r0, [r2, #0x1a]
	strh r4, [r5, #0x16]
	b _0807F200
	.align 2, 0
_0807EE30: .4byte gUnknown_080D5C38
_0807EE34:
	ldr r1, _0807EE48 @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _0807EE58
	ldrb r0, [r1, #6]
	cmp r0, #0
	beq _0807EE4C
	movs r0, #0x6e
	strh r0, [r5, #0x16]
	b _0807F200
	.align 2, 0
_0807EE48: .4byte gStageData
_0807EE4C:
	adds r0, r1, #0
	adds r0, #0xae
	ldrh r1, [r0]
	movs r0, #1
	bl sub_8027674
_0807EE58:
	adds r0, r5, #0
	bl sub_8081C08
	movs r0, #0x64
	strh r0, [r5, #0x16]
	b _0807F200
_0807EE64:
	ldrh r0, [r5, #0x14]
	subs r0, #1
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0807EE72
	b _0807F200
_0807EE72:
	movs r3, #0
	ldr r4, _0807EEA8 @ =gPlayers
_0807EE76:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r3
	lsls r0, r0, #4
	adds r2, r0, r4
	ldr r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0807EEAC
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _0807EEA0
	cmp r1, #0xc
	bne _0807EEAC
_0807EEA0:
	movs r0, #4
	strh r0, [r5, #0x14]
	b _0807F200
	.align 2, 0
_0807EEA8: .4byte gPlayers
_0807EEAC:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	bls _0807EE76
	ldr r1, _0807EEE8 @ =gStageData
	movs r0, #4
	strb r0, [r1, #4]
	adds r0, r5, #0
	movs r1, #0xa
	bl sub_807BE58
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0xd3
	str r1, [sp]
	movs r1, #4
	movs r2, #0
	bl CreateScreenShake
	ldrb r0, [r5]
	cmp r0, #0
	beq _0807EEEC
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	b _0807EEEE
	.align 2, 0
_0807EEE8: .4byte gStageData
_0807EEEC:
	movs r1, #0
_0807EEEE:
	ldr r0, _0807EF38 @ =gUnknown_080D5C48
	adds r0, r1, r0
	ldrb r0, [r0]
	movs r1, #0
	strh r0, [r5, #8]
	strh r1, [r5, #0xc]
	movs r0, #5
	strb r0, [r5, #1]
	adds r0, r5, #0
	movs r2, #0xb
	bl sub_807DB00
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0xb
	bl sub_807DB00
	movs r1, #0x8a
	lsls r1, r1, #2
	adds r2, r5, r1
	ldr r1, _0807EF3C @ =gUnknown_080D5C38
	ldrh r0, [r1, #0xc]
	strh r0, [r2, #0xc]
	ldrh r0, [r1, #0xe]
	strb r0, [r2, #0x1a]
	ldr r0, _0807EF40 @ =0x00000221
	bl m4aSongNumStart
	movs r0, #0x96
	bl sub_807FB7C
	movs r0, #0
	bl sub_807FB7C
	movs r0, #0xc8
	strh r0, [r5, #0x16]
	b _0807F200
	.align 2, 0
_0807EF38: .4byte gUnknown_080D5C48
_0807EF3C: .4byte gUnknown_080D5C38
_0807EF40: .4byte 0x00000221
_0807EF44:
	ldrh r1, [r5, #0x14]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0807EFC4
	ldr r3, _0807EFF8 @ =gPseudoRandom
	ldr r0, [r3]
	ldr r2, _0807EFFC @ =0x00196225
	muls r0, r2, r0
	ldr r1, _0807F000 @ =0x3C6EF35F
	adds r0, r0, r1
	ldr r7, _0807F004 @ =0x000003FF
	ands r7, r0
	muls r0, r2, r0
	adds r0, r0, r1
	str r0, [r3]
	movs r1, #0x30
	bl __umodsi3
	adds r2, r0, #0
	ldr r1, _0807F008 @ =gSineTable
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r7, r3
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r4, #0
	ldrsh r0, [r0, r4]
	muls r0, r2, r0
	lsrs r4, r0, #6
	lsls r0, r7, #1
	adds r0, r0, r1
	movs r6, #0
	ldrsh r0, [r0, r6]
	muls r0, r2, r0
	lsrs r6, r0, #6
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r1, [r0]
	adds r1, r1, r4
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r5, r2
	ldr r2, [r0]
	adds r2, r2, r6
	asrs r2, r2, #8
	subs r2, #0x30
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r3, #0xc0
	lsls r3, r3, #2
	str r7, [sp]
	movs r0, #0x1e
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0x18]
	str r0, [sp, #0xc]
	movs r0, #7
	bl sub_8079758
_0807EFC4:
	ldrh r0, [r5, #0x14]
	adds r0, #1
	strh r0, [r5, #0x14]
	movs r1, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _0807EFD8
	ldr r0, _0807F00C @ =0x00000221
	bl m4aSongNumStart
_0807EFD8:
	movs r3, #0x97
	lsls r3, r3, #1
	adds r0, r5, r3
	ldrh r0, [r0]
	cmp r0, #0
	beq _0807EFE6
	b _0807F200
_0807EFE6:
	movs r0, #0xd2
	strh r0, [r5, #0x16]
	movs r0, #0x3c
	strh r0, [r5, #0x14]
	movs r0, #0xa
	bl sub_807FB7C
	b _0807F200
	.align 2, 0
_0807EFF8: .4byte gPseudoRandom
_0807EFFC: .4byte 0x00196225
_0807F000: .4byte 0x3C6EF35F
_0807F004: .4byte 0x000003FF
_0807F008: .4byte gSineTable
_0807F00C: .4byte 0x00000221
_0807F010:
	movs r1, #0
	ldr r3, _0807F058 @ =gPlayers
	movs r2, #0xb4
	lsls r2, r2, #1
_0807F018:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r0, #0x52
	strh r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _0807F018
	ldrh r0, [r5, #0x14]
	subs r0, #1
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0807F040
	b _0807F200
_0807F040:
	movs r0, #0xb4
	strh r0, [r5, #0x14]
	movs r0, #0xdc
	strh r0, [r5, #0x16]
	ldr r0, _0807F05C @ =0x00000221
	bl m4aSongNumStart
	ldr r1, _0807F060 @ =gMusicManagerState
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r1, #6]
	b _0807F200
	.align 2, 0
_0807F058: .4byte gPlayers
_0807F05C: .4byte 0x00000221
_0807F060: .4byte gMusicManagerState
_0807F064:
	movs r1, #0
	ldr r3, _0807F14C @ =gPlayers
	movs r2, #0xb4
	lsls r2, r2, #1
_0807F06C:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r0, #0x52
	strh r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _0807F06C
	ldrh r1, [r5, #0x14]
	movs r4, #1
	mov r8, r4
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	beq _0807F120
	ldr r4, _0807F150 @ =gPseudoRandom
	ldr r0, [r4]
	ldr r3, _0807F154 @ =0x00196225
	adds r1, r0, #0
	muls r1, r3, r1
	ldr r2, _0807F158 @ =0x3C6EF35F
	adds r1, r1, r2
	movs r0, #0xff
	ands r0, r1
	movs r6, #0xa0
	lsls r6, r6, #2
	adds r7, r0, r6
	adds r0, r1, #0
	muls r0, r3, r0
	adds r0, r0, r2
	str r0, [r4]
	movs r1, #0x30
	bl __umodsi3
	adds r2, r0, #0
	movs r0, #3
	adds r3, r2, #0
	ands r3, r0
	lsls r3, r3, #8
	ldr r1, _0807F15C @ =gSineTable
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r7, r4
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r6, #0
	ldrsh r0, [r0, r6]
	muls r0, r2, r0
	lsrs r4, r0, #6
	lsls r0, r7, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r2, r0
	lsrs r6, r0, #6
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r0, r5, r2
	ldr r1, [r0]
	adds r1, r1, r4
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	movs r4, #0x90
	lsls r4, r4, #1
	adds r0, r5, r4
	ldr r2, [r0]
	adds r2, r2, r6
	asrs r2, r2, #8
	subs r2, #0x60
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r6, #0x80
	lsls r6, r6, #3
	adds r0, r6, #0
	orrs r3, r0
	str r7, [sp]
	movs r0, #0x1e
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0x18]
	str r0, [sp, #0xc]
	movs r0, #7
	bl sub_8079758
_0807F120:
	ldrh r1, [r5, #0x14]
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _0807F130
	ldr r0, _0807F160 @ =0x00000221
	bl m4aSongNumStart
_0807F130:
	movs r1, #0x14
	ldrsh r0, [r5, r1]
	ldrh r3, [r5, #0x14]
	cmp r0, #0x3c
	bne _0807F16C
	ldr r1, _0807F164 @ =gBldRegs
	movs r2, #0
	ldr r0, _0807F168 @ =0x00003FBF
	strh r0, [r1]
	movs r0, #8
	strh r0, [r1, #2]
	strh r2, [r1, #4]
	b _0807F184
	.align 2, 0
_0807F14C: .4byte gPlayers
_0807F150: .4byte gPseudoRandom
_0807F154: .4byte 0x00196225
_0807F158: .4byte 0x3C6EF35F
_0807F15C: .4byte gSineTable
_0807F160: .4byte 0x00000221
_0807F164: .4byte gBldRegs
_0807F168: .4byte 0x00003FBF
_0807F16C:
	cmp r0, #0x3b
	bgt _0807F184
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _0807F184
	ldr r1, _0807F19C @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0x10
	beq _0807F184
	adds r0, #1
	strh r0, [r1, #4]
_0807F184:
	subs r0, r3, #1
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807F200
	movs r0, #0x3c
	strh r0, [r5, #0x14]
	movs r0, #0xfa
	lsls r0, r0, #2
	strh r0, [r5, #0x16]
	b _0807F200
	.align 2, 0
_0807F19C: .4byte gBldRegs
_0807F1A0:
	ldrh r0, [r5, #0x14]
	subs r0, #1
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bne _0807F200
	movs r0, #1
	strh r0, [r5, #8]
	strh r1, [r5, #0xc]
	ldr r0, _0807F20C @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #0
	bne _0807F1F8
	ldr r4, _0807F210 @ =gPlayers
	movs r3, #0xaa
	lsls r3, r3, #1
	adds r2, r4, r3
	ldr r0, [r2]
	ldr r1, _0807F214 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r2]
	movs r6, #0xa8
	lsls r6, r6, #1
	adds r0, r4, r6
	ldr r1, _0807F218 @ =Player_8005380
	bl SetPlayerCallback
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r4, #0x10]
	str r0, [r1]
	movs r2, #0xb2
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r0, [r4, #0x14]
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0x27
	ldrb r0, [r0]
	ldr r3, _0807F21C @ =0x00000177
	adds r1, r4, r3
	strb r0, [r1]
_0807F1F8:
	ldr r0, _0807F220 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0807F224 @ =sub_807F568
	str r0, [r1, #8]
_0807F200:
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807F20C: .4byte gStageData
_0807F210: .4byte gPlayers
_0807F214: .4byte 0xFFFFFEFF
_0807F218: .4byte Player_8005380
_0807F21C: .4byte 0x00000177
_0807F220: .4byte gCurTask
_0807F224: .4byte sub_807F568

	thumb_func_start sub_807F228
sub_807F228: @ 0x0807F228
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sb, r0
	movs r0, #0
	mov sl, r0
	movs r0, #0x94
	lsls r0, r0, #2
	add r0, sb
	mov r8, r0
	movs r0, #0x98
	lsls r0, r0, #1
	add r0, sb
	ldr r0, [r0]
	movs r1, #0x9a
	lsls r1, r1, #1
	add r1, sb
	ldr r1, [r1]
	bl sub_8004D68
	ldr r2, _0807F2FC @ =gPlayers
	ldr r0, _0807F300 @ =gStageData
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r1, r0, r2
	adds r0, r1, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	beq _0807F298
	adds r0, r1, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	bne _0807F2A6
_0807F298:
	mov r0, r8
	bl sub_807A1DC
	cmp r0, #1
	bne _0807F2A6
	movs r0, #1
	mov sl, r0
_0807F2A6:
	movs r7, #0
_0807F2A8:
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r0, r0, #2
	adds r0, r0, r7
	lsls r0, r0, #4
	ldr r1, _0807F2FC @ =gPlayers
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _0807F316
	mov r0, r8
	ldr r1, [r0, #0x20]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0807F316
	movs r6, #0x98
	lsls r6, r6, #1
	add r6, sb
	ldr r1, [r6]
	asrs r1, r1, #8
	movs r5, #0x9a
	lsls r5, r5, #1
	add r5, sb
	ldr r2, [r5]
	asrs r2, r2, #8
	str r4, [sp]
	mov r0, r8
	movs r3, #0
	bl sub_8020E3C
	cmp r0, #1
	bne _0807F304
	movs r0, #1
	mov sl, r0
	adds r0, r4, #0
	bl sub_80044CC
	b _0807F316
	.align 2, 0
_0807F2FC: .4byte gPlayers
_0807F300: .4byte gStageData
_0807F304:
	ldr r1, [r6]
	asrs r1, r1, #8
	ldr r2, [r5]
	asrs r2, r2, #8
	str r4, [sp]
	mov r0, r8
	movs r3, #0
	bl sub_8020CE0
_0807F316:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #1
	bls _0807F2A8
	mov r0, sl
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_807F334
sub_807F334: @ 0x0807F334
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	cmp r2, #1
	beq _0807F382
	cmp r2, #1
	ble _0807F34E
	cmp r2, #2
	beq _0807F3B6
_0807F34E:
	cmp r3, #0
	bne _0807F366
	mov r1, ip
	adds r1, #0x24
	movs r0, #0xf3
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xed
	strb r0, [r1]
	adds r1, #1
	movs r0, #8
	b _0807F378
_0807F366:
	mov r1, ip
	adds r1, #0x24
	movs r0, #0xf8
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xed
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xd
_0807F378:
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x1e
	strb r0, [r1]
	b _0807F42C
_0807F382:
	cmp r3, #0
	bne _0807F39A
	mov r1, ip
	adds r1, #0x24
	movs r0, #0xe2
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xf3
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x13
	b _0807F3AC
_0807F39A:
	mov r1, ip
	adds r1, #0x24
	movs r0, #0xed
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xf3
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x1e
_0807F3AC:
	strb r0, [r1]
	adds r1, #1
	movs r0, #8
	strb r0, [r1]
	b _0807F42C
_0807F3B6:
	cmp r3, #0
	bne _0807F3D2
	mov r4, ip
	adds r4, #0x24
	movs r0, #0xe2
	strb r0, [r4]
	mov r3, ip
	adds r3, #0x25
	movs r0, #0xf3
	strb r0, [r3]
	mov r2, ip
	adds r2, #0x26
	movs r0, #0x13
	b _0807F3E8
_0807F3D2:
	mov r4, ip
	adds r4, #0x24
	movs r0, #0xed
	strb r0, [r4]
	mov r3, ip
	adds r3, #0x25
	movs r0, #0xf3
	strb r0, [r3]
	mov r2, ip
	adds r2, #0x26
	movs r0, #0x1e
_0807F3E8:
	strb r0, [r2]
	mov r1, ip
	adds r1, #0x27
	movs r0, #8
	strb r0, [r1]
	adds r5, r1, #0
	movs r1, #0
	ldrsb r1, [r4, r1]
	movs r7, #2
	ldrsh r0, [r6, r7]
	muls r0, r1, r0
	asrs r0, r0, #8
	strb r0, [r4]
	movs r1, #0
	ldrsb r1, [r3, r1]
	movs r4, #4
	ldrsh r0, [r6, r4]
	muls r0, r1, r0
	asrs r0, r0, #8
	strb r0, [r3]
	movs r1, #0
	ldrsb r1, [r2, r1]
	movs r7, #2
	ldrsh r0, [r6, r7]
	muls r0, r1, r0
	asrs r0, r0, #8
	strb r0, [r2]
	movs r1, #0
	ldrsb r1, [r5, r1]
	movs r2, #4
	ldrsh r0, [r6, r2]
	muls r0, r1, r0
	asrs r0, r0, #8
	strb r0, [r5]
_0807F42C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_807F434
sub_807F434: @ 0x0807F434
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x78
	strh r0, [r4, #0x14]
	adds r0, r4, #0
	movs r1, #0
	bl sub_807BE58
	movs r0, #0x8a
	lsls r0, r0, #2
	adds r2, r4, r0
	ldr r1, _0807F494 @ =gUnknown_080D5C38
	ldrh r0, [r1, #8]
	strh r0, [r2, #0xc]
	ldrh r0, [r1, #0xa]
	strb r0, [r2, #0x1a]
	ldr r0, _0807F498 @ =0x000004F4
	movs r1, #0x14
	ldrsh r2, [r4, r1]
	movs r1, #0
	movs r3, #0
	bl sub_8078DB0
	ldr r0, _0807F49C @ =0x000004F5
	movs r1, #0x14
	ldrsh r2, [r4, r1]
	movs r1, #0
	movs r3, #0
	bl sub_8078DB0
	ldrb r0, [r4]
	subs r1, r0, #1
	strb r1, [r4]
	movs r0, #1
	strh r0, [r4, #0x16]
	ldr r0, _0807F4A0 @ =gStageData
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _0807F4A4
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bne _0807F4B2
	movs r0, #0x37
	bl sub_80299D4
	b _0807F4B2
	.align 2, 0
_0807F494: .4byte gUnknown_080D5C38
_0807F498: .4byte 0x000004F4
_0807F49C: .4byte 0x000004F5
_0807F4A0: .4byte gStageData
_0807F4A4:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bne _0807F4B2
	movs r0, #0x37
	bl sub_80299D4
_0807F4B2:
	movs r0, #0xeb
	bl m4aSongNumStart
	bl sub_807A468
	ldr r1, _0807F4DC @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _0807F4E8
	ldrb r0, [r1, #6]
	cmp r0, #0
	bne _0807F4E0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0807F4E8
	adds r1, r0, #0
	movs r0, #3
	bl sub_8027674
	b _0807F4E8
	.align 2, 0
_0807F4DC: .4byte gStageData
_0807F4E0:
	ldrb r1, [r4]
	movs r0, #4
	bl sub_8027674
_0807F4E8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807F4F0
sub_0807F4F0: @ 0x0807F4F0
	push {r4, r5, lr}
	ldr r5, _0807F538 @ =gStageData
	adds r1, r5, #0
	adds r1, #0x88
	ldr r1, [r1]
	ldrh r4, [r1, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r3, r4, r1
	ldrb r2, [r0, #2]
	movs r1, #0x7f
	ands r1, r2
	ldrb r2, [r0, #3]
	ldrb r0, [r0, #4]
	lsls r0, r0, #8
	orrs r2, r0
	adds r0, r2, #0
	cmp r1, #1
	bne _0807F544
	movs r0, #0
	strb r0, [r3]
	adds r0, r5, #0
	adds r0, #0xae
	strh r2, [r0]
	movs r0, #0x3c
	strh r0, [r3, #0x14]
	ldr r0, _0807F53C @ =0x03000228
	adds r2, r4, r0
	ldr r1, _0807F540 @ =gUnknown_080D5C38
	ldrh r0, [r1]
	strh r0, [r2, #0xc]
	ldrh r0, [r1, #2]
	strb r0, [r2, #0x1a]
	movs r0, #0x64
	strh r0, [r3, #0x16]
	b _0807F560
	.align 2, 0
_0807F538: .4byte gStageData
_0807F53C: .4byte 0x03000228
_0807F540: .4byte gUnknown_080D5C38
_0807F544:
	cmp r1, #1
	blt _0807F560
	cmp r1, #4
	bgt _0807F560
	cmp r1, #3
	blt _0807F560
	ldrb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	beq _0807F560
	adds r0, r3, #0
	bl sub_807F434
_0807F560:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_807F568
sub_807F568: @ 0x0807F568
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0807F61C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldr r0, _0807F620 @ =gStageData
	adds r0, #0xac
	movs r1, #0
	strh r1, [r0]
	adds r0, r7, #0
	bl sub_807C14C
	movs r4, #0
	ldr r5, _0807F624 @ =gCamera
_0807F58C:
	lsls r3, r4, #2
	adds r3, r3, r4
	lsls r0, r3, #3
	adds r0, #0x7c
	adds r0, r7, r0
	lsls r3, r3, #2
	adds r1, r7, #0
	adds r1, #0x2c
	adds r1, r1, r3
	ldr r1, [r1]
	asrs r1, r1, #8
	ldr r2, [r5]
	subs r1, r1, r2
	strh r1, [r0, #0x10]
	adds r1, r7, #0
	adds r1, #0x30
	adds r1, r1, r3
	ldr r1, [r1]
	asrs r1, r1, #8
	ldr r2, [r5, #4]
	subs r1, r1, r2
	strh r1, [r0, #0x12]
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0807F58C
	ldrh r1, [r7, #0xc]
	ldr r0, _0807F628 @ =0x00000406
	cmp r1, r0
	beq _0807F5F0
	movs r1, #0
	ldr r3, _0807F62C @ =gPlayers
	movs r2, #0xb4
	lsls r2, r2, #1
_0807F5D6:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r0, #0x52
	strh r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _0807F5D6
_0807F5F0:
	ldrh r1, [r7, #0xc]
	ldr r2, _0807F630 @ =0x000007DA
	cmp r1, r2
	bne _0807F5FA
	b _0807F904
_0807F5FA:
	cmp r1, r2
	bgt _0807F684
	ldr r4, _0807F634 @ =0x000003E9
	cmp r1, r4
	bne _0807F606
	b _0807F80C
_0807F606:
	cmp r1, r4
	bgt _0807F64A
	cmp r1, #0xa
	bne _0807F610
	b _0807F7BC
_0807F610:
	cmp r1, #0xa
	bgt _0807F638
	cmp r1, #0
	beq _0807F700
	b _0807FB6C
	.align 2, 0
_0807F61C: .4byte gCurTask
_0807F620: .4byte gStageData
_0807F624: .4byte gCamera
_0807F628: .4byte 0x00000406
_0807F62C: .4byte gPlayers
_0807F630: .4byte 0x000007DA
_0807F634: .4byte 0x000003E9
_0807F638:
	cmp r1, #0x64
	bne _0807F63E
	b _0807F7C2
_0807F63E:
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp r1, r0
	bne _0807F648
	b _0807F7DA
_0807F648:
	b _0807FB6C
_0807F64A:
	ldr r0, _0807F66C @ =0x00000406
	mov r8, r0
	cmp r1, r8
	bne _0807F654
	b _0807FB6C
_0807F654:
	cmp r1, r8
	bgt _0807F670
	subs r0, #0x14
	cmp r1, r0
	bne _0807F660
	b _0807F834
_0807F660:
	adds r0, #0xa
	cmp r1, r0
	bne _0807F668
	b _0807F84A
_0807F668:
	b _0807FB6C
	.align 2, 0
_0807F66C: .4byte 0x00000406
_0807F670:
	movs r0, #0xfa
	lsls r0, r0, #3
	cmp r1, r0
	bne _0807F67A
	b _0807F898
_0807F67A:
	adds r0, #1
	cmp r1, r0
	bne _0807F682
	b _0807F8DC
_0807F682:
	b _0807FB6C
_0807F684:
	ldr r4, _0807F6A8 @ =0x00000802
	cmp r1, r4
	bne _0807F68C
	b _0807FAA0
_0807F68C:
	cmp r1, r4
	bgt _0807F6CC
	ldr r5, _0807F6AC @ =0x000007EE
	cmp r1, r5
	bne _0807F698
	b _0807F994
_0807F698:
	cmp r1, r5
	bgt _0807F6B4
	ldr r0, _0807F6B0 @ =0x000007E4
	cmp r1, r0
	bne _0807F6A4
	b _0807F934
_0807F6A4:
	b _0807FB6C
	.align 2, 0
_0807F6A8: .4byte 0x00000802
_0807F6AC: .4byte 0x000007EE
_0807F6B0: .4byte 0x000007E4
_0807F6B4:
	ldr r0, _0807F6C8 @ =0x000007F3
	cmp r1, r0
	bne _0807F6BC
	b _0807F9EC
_0807F6BC:
	adds r0, #5
	cmp r1, r0
	bne _0807F6C4
	b _0807FA2A
_0807F6C4:
	b _0807FB6C
	.align 2, 0
_0807F6C8: .4byte 0x000007F3
_0807F6CC:
	movs r5, #0x82
	lsls r5, r5, #4
	cmp r1, r5
	bne _0807F6D6
	b _0807FB40
_0807F6D6:
	cmp r1, r5
	bgt _0807F6F0
	ldr r0, _0807F6EC @ =0x0000080C
	cmp r1, r0
	bne _0807F6E2
	b _0807FAD6
_0807F6E2:
	adds r0, #0xa
	cmp r1, r0
	bne _0807F6EA
	b _0807FAFC
_0807F6EA:
	b _0807FB6C
	.align 2, 0
_0807F6EC: .4byte 0x0000080C
_0807F6F0:
	ldr r0, _0807F6FC @ =0x000008FC
	cmp r1, r0
	bne _0807F6F8
	b _0807FB58
_0807F6F8:
	b _0807FB6C
	.align 2, 0
_0807F6FC: .4byte 0x000008FC
_0807F700:
	ldr r6, _0807F7A8 @ =gStageData
	ldrb r1, [r6, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r2, _0807F7AC @ =gPlayers
	adds r0, r0, r2
	adds r1, r0, #0
	adds r1, #0x4a
	movs r5, #0
	strh r5, [r1]
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	adds r0, #0x4a
	strh r5, [r0]
	ldr r0, [r7, #0x18]
	cmp r0, #0
	beq _0807F73E
	bl VramFree
	str r5, [r7, #0x18]
_0807F73E:
	movs r1, #0x9e
	lsls r1, r1, #2
	adds r4, r7, r1
	ldr r0, [r4]
	cmp r0, #0
	beq _0807F750
	bl VramFree
	str r5, [r4]
_0807F750:
	movs r2, #0xa8
	lsls r2, r2, #2
	adds r4, r7, r2
	ldr r0, [r4]
	cmp r0, #0
	beq _0807F762
	bl VramFree
	str r5, [r4]
_0807F762:
	movs r0, #0x94
	lsls r0, r0, #2
	adds r4, r7, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _0807F774
	bl VramFree
	str r5, [r4]
_0807F774:
	movs r1, #0x8a
	lsls r1, r1, #2
	adds r4, r7, r1
	ldr r0, [r4]
	cmp r0, #0
	beq _0807F786
	bl VramFree
	str r5, [r4]
_0807F786:
	ldr r2, _0807F7B0 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0807F7B4 @ =0x00009EFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _0807F7B8 @ =gBgScrollRegs
	strh r5, [r0]
	strh r5, [r0, #2]
	bl sub_80299FC
	movs r0, #9
	strb r0, [r6, #4]
	movs r0, #7
	strb r0, [r6, #9]
	movs r0, #0xa
	strh r0, [r7, #0xc]
	b _0807FB6C
	.align 2, 0
_0807F7A8: .4byte gStageData
_0807F7AC: .4byte gPlayers
_0807F7B0: .4byte gDispCnt
_0807F7B4: .4byte 0x00009EFF
_0807F7B8: .4byte gBgScrollRegs
_0807F7BC:
	movs r0, #0x64
	strh r0, [r7, #0xc]
	b _0807FB6C
_0807F7C2:
	bl MetExtraBossEnableConditions
	cmp r0, #0
	beq _0807F7D2
	movs r0, #0xfa
	lsls r0, r0, #3
	strh r0, [r7, #0xc]
	b _0807FB6C
_0807F7D2:
	movs r0, #0xfa
	lsls r0, r0, #2
	strh r0, [r7, #0xc]
	b _0807FB6C
_0807F7DA:
	movs r0, #1
	bl sub_807FB7C
	movs r0, #0
	bl sub_808178C
	movs r0, #0
	bl sub_80808E8
	movs r0, #2
	bl sub_807FB7C
	ldr r0, _0807F808 @ =gCamera
	ldr r1, [r0, #0x1c]
	movs r2, #0x96
	lsls r2, r2, #2
	adds r1, r1, r2
	str r1, [r0, #0x1c]
	movs r0, #0x96
	lsls r0, r0, #3
	strh r0, [r7, #8]
	strh r4, [r7, #0xc]
	b _0807FB6C
	.align 2, 0
_0807F808: .4byte gCamera
_0807F80C:
	ldr r1, _0807F830 @ =gBldRegs
	ldrh r0, [r1, #4]
	subs r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _0807F81E
	b _0807FB6C
_0807F81E:
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	movs r0, #0x96
	lsls r0, r0, #3
	strh r0, [r7, #8]
	subs r0, #0xbe
	strh r0, [r7, #0xc]
	b _0807FB6C
	.align 2, 0
_0807F830: .4byte gBldRegs
_0807F834:
	ldrh r0, [r7, #8]
	subs r0, #1
	strh r0, [r7, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0807F842
	b _0807FB6C
_0807F842:
	movs r0, #0xff
	lsls r0, r0, #2
	strh r0, [r7, #0xc]
	b _0807FB6C
_0807F84A:
	ldr r0, _0807F88C @ =gStageData
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r4, _0807F890 @ =gPlayers
	adds r6, r0, r4
	ldr r5, _0807F894 @ =Player_8005E80
	adds r0, r6, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r6, r0, r4
	adds r0, r6, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	mov r4, r8
	strh r4, [r7, #0xc]
	b _0807FB6C
	.align 2, 0
_0807F88C: .4byte gStageData
_0807F890: .4byte gPlayers
_0807F894: .4byte Player_8005E80
_0807F898:
	movs r0, #1
	bl sub_807FB7C
	movs r0, #1
	bl sub_80808E8
	str r0, [r7, #0x28]
	movs r0, #1
	bl sub_808178C
	movs r0, #2
	bl sub_807FB7C
	ldr r1, _0807F8D4 @ =gCamera
	ldr r0, [r1, #0x1c]
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1, #0x1c]
	ldr r0, [r1, #4]
	str r0, [r1, #0x10]
	movs r0, #0xb8
	lsls r0, r0, #2
	strh r0, [r7, #8]
	bl m4aMPlayAllStop
	ldr r0, _0807F8D8 @ =0x000007D1
	strh r0, [r7, #0xc]
	b _0807FB6C
	.align 2, 0
_0807F8D4: .4byte gCamera
_0807F8D8: .4byte 0x000007D1
_0807F8DC:
	ldr r1, _0807F900 @ =gBldRegs
	ldrh r0, [r1, #4]
	subs r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _0807F8EE
	b _0807FB6C
_0807F8EE:
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	movs r0, #0xb8
	lsls r0, r0, #2
	strh r0, [r7, #8]
	strh r2, [r7, #0xc]
	b _0807FB6C
	.align 2, 0
_0807F900: .4byte gBldRegs
_0807F904:
	ldrh r0, [r7, #8]
	subs r0, #1
	strh r0, [r7, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0807F912
	b _0807FB6C
_0807F912:
	ldr r1, _0807F92C @ =gCamera
	ldr r0, [r1, #0x1c]
	subs r0, #0xf0
	str r0, [r1, #0x18]
	movs r0, #0xc8
	strh r0, [r7, #8]
	movs r0, #0x3c      @ MUS_EX_DEMO_1
	bl m4aSongNumStart
	ldr r0, _0807F930 @ =0x000007E4
	strh r0, [r7, #0xc]
	b _0807FB6C
	.align 2, 0
_0807F92C: .4byte gCamera
_0807F930: .4byte 0x000007E4
_0807F934:
	ldrh r0, [r7, #8]
	subs r0, #1
	strh r0, [r7, #8]
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	cmp r3, #0
	beq _0807F944
	b _0807FB6C
_0807F944:
	ldr r2, _0807F97C @ =gDispCnt
	ldrh r0, [r2]
	movs r4, #0x80
	lsls r4, r4, #6
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0807F980 @ =gWinRegs
	ldr r0, _0807F984 @ =0x00007778
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	movs r0, #0x3c
	strh r0, [r1, #8]
	movs r0, #0x1c
	strh r0, [r1, #0xa]
	ldr r1, _0807F988 @ =gBldRegs
	ldr r0, _0807F98C @ =0x00003FBF
	strh r0, [r1]
	movs r0, #8
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r3, [r7, #0xa]
	strh r5, [r7, #0xc]
	ldr r0, _0807F990 @ =0x0000029B
	bl m4aSongNumStart
	b _0807FB6C
	.align 2, 0
_0807F97C: .4byte gDispCnt
_0807F980: .4byte gWinRegs
_0807F984: .4byte 0x00007778
_0807F988: .4byte gBldRegs
_0807F98C: .4byte 0x00003FBF
_0807F990: .4byte 0x0000029B
_0807F994:
	ldrh r0, [r7, #0xa]
	adds r0, #0x20
	strh r0, [r7, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	ble _0807F9B2
	movs r0, #0x78
	strh r0, [r7, #8]
	movs r0, #2
	strh r0, [r7, #0xa]
	movs r0, #0
	strb r0, [r7, #0xe]
	ldr r0, _0807F9E0 @ =0x000007F3
	strh r0, [r7, #0xc]
_0807F9B2:
	ldr r1, _0807F9E4 @ =gSineTable
	movs r2, #0xa
	ldrsh r0, [r7, r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0
	bge _0807F9C8
	ldr r1, _0807F9E8 @ =0x000001FF
	adds r0, r0, r1
_0807F9C8:
	asrs r1, r0, #9
	movs r0, #0x78
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r0, #0
	bge _0807F9D8
	movs r4, #0
_0807F9D8:
	adds r0, r1, #0
	adds r0, #0x78
	b _0807FA72
	.align 2, 0
_0807F9E0: .4byte 0x000007F3
_0807F9E4: .4byte gSineTable
_0807F9E8: .4byte 0x000001FF
_0807F9EC:
	movs r4, #0x58
	movs r3, #0x98
	ldrh r0, [r7, #8]
	subs r0, #1
	strh r0, [r7, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _0807FA08
	strh r0, [r7, #0xa]
	movs r0, #0xff
	lsls r0, r0, #3
	strh r0, [r7, #0xc]
	b _0807FA7E
_0807FA08:
	ldrh r0, [r7, #0xa]
	subs r0, #1
	strh r0, [r7, #0xa]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807FA7E
	movs r0, #2
	strh r0, [r7, #0xa]
	ldrb r0, [r7, #0xe]
	movs r1, #1
	eors r0, r1
	strb r0, [r7, #0xe]
	cmp r0, #0
	bne _0807FA7E
	movs r4, #0x60
	movs r3, #0x90
	b _0807FA7E
_0807FA2A:
	ldrh r0, [r7, #0xa]
	adds r0, #8
	strh r0, [r7, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	ble _0807FA44
	movs r0, #4
	strh r0, [r7, #8]
	ldr r0, _0807FA90 @ =0x0000029B
	bl m4aSongNumStop
	strh r4, [r7, #0xc]
_0807FA44:
	ldr r1, _0807FA94 @ =gSineTable
	movs r2, #0xa
	ldrsh r0, [r7, r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r4, #0
	ldrsh r1, [r0, r4]
	movs r0, #0x58
	muls r0, r1, r0
	cmp r0, #0
	bge _0807FA5E
	ldr r1, _0807FA98 @ =0x00003FFF
	adds r0, r0, r1
_0807FA5E:
	asrs r1, r0, #0xe
	movs r0, #0x58
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r0, #0
	bge _0807FA6E
	movs r4, #0
_0807FA6E:
	adds r0, r1, #0
	adds r0, #0x98
_0807FA72:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf0
	ble _0807FA7E
	movs r3, #0xf0
_0807FA7E:
	ldr r2, _0807FA9C @ =gWinRegs
	lsls r1, r4, #0x10
	asrs r1, r1, #8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	orrs r0, r1
	strh r0, [r2]
	b _0807FB6C
	.align 2, 0
_0807FA90: .4byte 0x0000029B
_0807FA94: .4byte gSineTable
_0807FA98: .4byte 0x00003FFF
_0807FA9C: .4byte gWinRegs
_0807FAA0:
	ldrh r0, [r7, #8]
	subs r0, #1
	strh r0, [r7, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807FB6C
	ldr r1, _0807FAC8 @ =gBldRegs
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x10
	bne _0807FAD0
	movs r0, #0x78
	strh r0, [r7, #8]
	ldr r0, _0807FACC @ =0x0000080C
	strh r0, [r7, #0xc]
	b _0807FB6C
	.align 2, 0
_0807FAC8: .4byte gBldRegs
_0807FACC: .4byte 0x0000080C
_0807FAD0:
	movs r0, #4
	strh r0, [r7, #8]
	b _0807FB6C
_0807FAD6:
	ldrh r0, [r7, #8]
	subs r0, #1
	strh r0, [r7, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807FB6C
	ldr r0, [r7, #0x28]
	bl sub_8081DF4
	ldr r0, _0807FAF4 @ =0x0000023F
	bl m4aSongNumStart
	ldr r0, _0807FAF8 @ =0x00000816
	strh r0, [r7, #0xc]
	b _0807FB6C
	.align 2, 0
_0807FAF4: .4byte 0x0000023F
_0807FAF8: .4byte 0x00000816
_0807FAFC:
	ldr r4, _0807FB2C @ =gBldRegs
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _0807FB6C
	ldr r2, _0807FB30 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0807FB34 @ =0x0000DFFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _0807FB38 @ =gWinRegs
	strh r3, [r0, #8]
	strh r3, [r0, #0xa]
	strh r3, [r4]
	strh r3, [r4, #2]
	strh r3, [r4, #4]
	ldr r0, _0807FB3C @ =0x0000078A
	strh r0, [r7, #8]
	strh r5, [r7, #0xc]
	b _0807FB6C
	.align 2, 0
_0807FB2C: .4byte gBldRegs
_0807FB30: .4byte gDispCnt
_0807FB34: .4byte 0x0000DFFF
_0807FB38: .4byte gWinRegs
_0807FB3C: .4byte 0x0000078A
_0807FB40:
	ldrh r0, [r7, #8]
	subs r0, #1
	strh r0, [r7, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807FB6C
	ldr r0, _0807FB54 @ =0x000008FC
	strh r0, [r7, #0xc]
	b _0807FB6C
	.align 2, 0
_0807FB54: .4byte 0x000008FC
_0807FB58:
	movs r0, #0x58      @ MUS_FINAL_CLEAR
	bl m4aSongNumStart
	bl sub_8002508
	ldr r0, _0807FB78 @ =0x0000091A
	strh r0, [r7, #0xc]
	movs r0, #0x1e
	bl sub_807FB7C
_0807FB6C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807FB78: .4byte 0x0000091A

	thumb_func_start sub_807FB7C
sub_807FB7C: @ 0x0807FB7C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	adds r4, r3, #0
	ldr r7, _0807FBE0 @ =gPlayers
	movs r0, #0x2b
	adds r0, r0, r7
	mov sb, r0
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r6, r0, r7
	ldr r2, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	mov r8, r1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0807FBB6
	b _0807FE36
_0807FBB6:
	ldr r5, [r6, #4]
	ands r5, r1
	cmp r5, #0
	beq _0807FBC0
	b _0807FE36
_0807FBC0:
	cmp r3, #0x1e
	bne _0807FBC6
	b _0807FD64
_0807FBC6:
	cmp r3, #0x1e
	bgt _0807FBFC
	cmp r3, #0xa
	beq _0807FCBC
	cmp r3, #0xa
	bgt _0807FBEA
	cmp r3, #1
	beq _0807FC44
	cmp r3, #1
	bgt _0807FBE4
	cmp r3, #0
	beq _0807FC3A
	b _0807FE36
	.align 2, 0
_0807FBE0: .4byte gPlayers
_0807FBE4:
	cmp r3, #2
	beq _0807FCB0
	b _0807FE36
_0807FBEA:
	cmp r3, #0xc
	bne _0807FBF0
	b _0807FE36
_0807FBF0:
	cmp r3, #0xc
	blt _0807FCC8
	cmp r3, #0x14
	bne _0807FBFA
	b _0807FD40
_0807FBFA:
	b _0807FE36
_0807FBFC:
	cmp r3, #0xc8
	bne _0807FC02
	b _0807FDE2
_0807FC02:
	cmp r3, #0xc8
	bgt _0807FC20
	cmp r3, #0x96
	bne _0807FC0C
	b _0807FD88
_0807FC0C:
	cmp r3, #0x96
	bgt _0807FC18
	cmp r3, #0x64
	bne _0807FC16
	b _0807FD78
_0807FC16:
	b _0807FE36
_0807FC18:
	cmp r3, #0xa0
	bne _0807FC1E
	b _0807FDA0
_0807FC1E:
	b _0807FE36
_0807FC20:
	cmp r3, #0xdc
	bne _0807FC26
	b _0807FE0C
_0807FC26:
	cmp r3, #0xdc
	bgt _0807FC32
	cmp r3, #0xd2
	bne _0807FC30
	b _0807FDFC
_0807FC30:
	b _0807FE36
_0807FC32:
	cmp r4, #0xfa
	bne _0807FC38
	b _0807FE24
_0807FC38:
	b _0807FE36
_0807FC3A:
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r2, r1
	str r2, [r7, #4]
	b _0807FCA2
_0807FC44:
	ldr r0, _0807FCAC @ =gStageData
	adds r0, #0xac
	strh r5, [r0]
	movs r1, #2
	rsbs r1, r1, #0
	ands r2, r1
	str r2, [r7, #4]
	ldr r0, [r6, #4]
	ands r0, r1
	subs r1, #0xff
	ands r0, r1
	str r0, [r6, #4]
	ldr r0, [r6, #8]
	ands r0, r1
	str r0, [r6, #8]
	strh r5, [r7, #0x1c]
	strh r5, [r7, #0x18]
	strh r5, [r7, #0x1a]
	adds r0, r7, #0
	adds r0, #0x4a
	strh r5, [r0]
	adds r0, r7, #0
	bl Player_8005380
	movs r0, #0xcf
	lsls r0, r0, #0xb
	str r0, [r7, #0x10]
	movs r4, #0xb3
	lsls r4, r4, #8
	str r4, [r7, #0x14]
	strh r5, [r6, #0x1c]
	strh r5, [r6, #0x18]
	strh r5, [r6, #0x1a]
	adds r0, r6, #0
	adds r0, #0x4a
	strh r5, [r0]
	adds r0, r6, #0
	bl Player_8005380
	movs r0, #0xcb
	lsls r0, r0, #0xb
	str r0, [r6, #0x10]
	str r4, [r6, #0x14]
	ldr r0, [r7, #4]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r7, #4]
_0807FCA2:
	ldr r0, [r6, #4]
	orrs r0, r1
	str r0, [r6, #4]
	b _0807FE36
	.align 2, 0
_0807FCAC: .4byte gStageData
_0807FCB0:
	ldr r1, _0807FCB8 @ =0xF7FFFFFF
	ands r2, r1
	str r2, [r7, #4]
	b _0807FD38
	.align 2, 0
_0807FCB8: .4byte 0xF7FFFFFF
_0807FCBC:
	ldr r1, _0807FCC4 @ =gStageData
	movs r0, #9
	strb r0, [r1, #4]
	b _0807FD52
	.align 2, 0
_0807FCC4: .4byte gStageData
_0807FCC8:
	movs r4, #0xc0
	lsls r4, r4, #0x10
	ands r2, r4
	cmp r2, #0
	beq _0807FCE6
	adds r0, r7, #0
	bl sub_8016F28
	adds r2, r7, #0
	adds r2, #0x2c
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_0807FCE6:
	ldr r0, [r6, #4]
	ands r0, r4
	cmp r0, #0
	beq _0807FD02
	adds r0, r6, #0
	bl sub_8016F28
	adds r2, r6, #0
	adds r2, #0x2c
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_0807FD02:
	ldr r0, [r7, #4]
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	bne _0807FD12
	adds r0, r7, #0
	bl Player_8005380
_0807FD12:
	ldr r0, [r6, #4]
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _0807FD28
	mov r0, sb
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #8
	bne _0807FD2E
_0807FD28:
	adds r0, r6, #0
	bl Player_8005380
_0807FD2E:
	ldr r0, [r7, #4]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #4]
_0807FD38:
	ldr r0, [r6, #4]
	ands r0, r1
	str r0, [r6, #4]
	b _0807FE36
_0807FD40:
	ldr r1, _0807FD5C @ =gStageData
	movs r0, #3
	strb r0, [r1, #4]
	ldr r1, _0807FD60 @ =0xF7FFFFFF
	ands r2, r1
	str r2, [r7, #4]
	ldr r0, [r6, #4]
	ands r0, r1
	str r0, [r6, #4]
_0807FD52:
	strh r5, [r7, #0x1e]
	strh r5, [r7, #0x20]
	strh r5, [r6, #0x1e]
	strh r5, [r6, #0x20]
	b _0807FE36
	.align 2, 0
_0807FD5C: .4byte gStageData
_0807FD60: .4byte 0xF7FFFFFF
_0807FD64:
	adds r2, r6, #0
	adds r2, #0x2a
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	b _0807FE36
_0807FD78:
	ldr r1, _0807FD84 @ =sub_8081810
	adds r0, r7, #0
	bl SetPlayerCallback
	b _0807FE36
	.align 2, 0
_0807FD84: .4byte sub_8081810
_0807FD88:
	bl sub_807C5D0
	ldr r1, [r7]
	ldr r0, _0807FD9C @ =PlayerCB_80819BC
	cmp r1, r0
	bne _0807FE36
	adds r0, r7, #0
	bl Player_8005380
	b _0807FE36
	.align 2, 0
_0807FD9C: .4byte PlayerCB_80819BC
_0807FDA0:
	movs r4, #0xc0
	lsls r4, r4, #0x10
	ands r2, r4
	cmp r2, #0
	beq _0807FDBE
	adds r0, r7, #0
	bl sub_8016F28
	adds r2, r7, #0
	adds r2, #0x2c
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_0807FDBE:
	ldr r0, [r6, #4]
	ands r0, r4
	cmp r0, #0
	beq _0807FE36
	adds r0, r6, #0
	bl sub_8016F28
	adds r2, r6, #0
	adds r2, #0x2c
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r6, #0
	bl Player_8005380
	b _0807FE36
_0807FDE2:
	strh r5, [r6, #0x18]
	strh r5, [r6, #0x1a]
	ldr r4, _0807FDF8 @ =sub_808183C
	adds r0, r6, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r6, #0
	bl _call_via_r4
	b _0807FE36
	.align 2, 0
_0807FDF8: .4byte sub_808183C
_0807FDFC:
	movs r0, #1
	orrs r2, r0
	str r2, [r7, #4]
	ldr r4, _0807FE08 @ =sub_8081840
	b _0807FE0E
	.align 2, 0
_0807FE08: .4byte sub_8081840
_0807FE0C:
	ldr r4, _0807FE20 @ =sub_808186C
_0807FE0E:
	adds r0, r7, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r6, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	b _0807FE36
	.align 2, 0
_0807FE20: .4byte sub_808186C
_0807FE24:
	ldr r4, _0807FE44 @ =Player_8005380
	adds r0, r7, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r6, #0
	adds r1, r4, #0
	bl SetPlayerCallback
_0807FE36:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807FE44: .4byte Player_8005380

	thumb_func_start Task_ExtraChaosEmeraldsInit
Task_ExtraChaosEmeraldsInit: @ 0x0807FE48
	push {r4, r5, r6, lr}
	ldr r0, _0807FEA8 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r5, r0
	ldr r6, _0807FEAC @ =gPlayers
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #2
	adds r4, r4, r0
	lsls r4, r4, #4
	adds r4, r4, r6
	movs r0, #0
	strh r0, [r5, #0x16]
	strh r0, [r5, #0x14]
	ldr r1, _0807FEB0 @ =gUnknown_08E2ED48
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	ldrh r1, [r6, #0x1e]
	ldrh r0, [r5, #0x14]
	strh r0, [r6, #0x1e]
	eors r1, r0
	ands r1, r0
	strh r1, [r6, #0x20]
	ldrh r1, [r4, #0x1e]
	ldrh r0, [r5, #0x16]
	strh r0, [r4, #0x1e]
	eors r1, r0
	ands r1, r0
	strh r1, [r4, #0x20]
	adds r0, r5, #0
	bl sub_8080548
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0807FEA8: .4byte gCurTask
_0807FEAC: .4byte gPlayers
_0807FEB0: .4byte gUnknown_08E2ED48

	thumb_func_start sub_807FEB4
sub_807FEB4: @ 0x0807FEB4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r3, _0807FEEC @ =gPlayers
	adds r0, r3, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r2, r0, r3
	ldrh r1, [r4, #0x12]
	cmp r1, #0xc8
	bne _0807FED8
	b _08080076
_0807FED8:
	cmp r1, #0xc8
	bgt _0807FEFC
	cmp r1, #0xa
	beq _0807FF2E
	cmp r1, #0xa
	bgt _0807FEF0
	cmp r1, #0
	beq _0807FF24
	b _08080076
	.align 2, 0
_0807FEEC: .4byte gPlayers
_0807FEF0:
	cmp r1, #0x64
	beq _0807FF44
	cmp r1, #0x82
	bne _0807FEFA
	b _08080054
_0807FEFA:
	b _08080076
_0807FEFC:
	movs r5, #0x9b
	lsls r5, r5, #1
	cmp r1, r5
	beq _0807FFB0
	cmp r1, r5
	bgt _0807FF12
	movs r0, #0x96
	lsls r0, r0, #1
	cmp r1, r0
	beq _0807FF70
	b _08080076
_0807FF12:
	movs r0, #0xa0
	lsls r0, r0, #1
	cmp r1, r0
	beq _0807FFEC
	adds r0, #0xa
	cmp r1, r0
	bne _0807FF22
	b _0808001C
_0807FF22:
	b _08080076
_0807FF24:
	movs r0, #0xb9
	lsls r0, r0, #1
	strh r0, [r4, #0x10]
	movs r0, #0xa
	b _08080074
_0807FF2E:
	ldrh r0, [r4, #0x10]
	subs r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0807FF3C
	b _08080076
_0807FF3C:
	movs r0, #0xb4
	strh r0, [r4, #0x10]
	movs r0, #0x64
	b _08080074
_0807FF44:
	ldrh r0, [r4, #0x14]
	movs r3, #0x10
	movs r2, #0
	orrs r0, r3
	strh r0, [r4, #0x14]
	ldrh r1, [r4, #0x10]
	movs r5, #0x10
	ldrsh r0, [r4, r5]
	cmp r0, #0x95
	bgt _0807FF5E
	ldrh r0, [r4, #0x16]
	orrs r0, r3
	strh r0, [r4, #0x16]
_0807FF5E:
	subs r0, r1, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0807FF6A
	b _08080076
_0807FF6A:
	movs r0, #0x96
	lsls r0, r0, #1
	b _08080074
_0807FF70:
	ldr r0, [r3, #0x10]
	asrs r2, r0, #8
	ldr r0, _0807FFA8 @ =0x00000898
	cmp r2, r0
	ble _0807FF82
	ldrh r1, [r4, #0x14]
	movs r0, #0x20
	orrs r0, r1
	strh r0, [r4, #0x14]
_0807FF82:
	ldr r0, _0807FFAC @ =0x000008CB
	cmp r2, r0
	ble _08080076
	ldr r0, [r3, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08080076
	movs r1, #0
	movs r0, #0x3c
	strh r0, [r4, #0x10]
	strh r1, [r3, #0x1c]
	strh r1, [r3, #0x18]
	strh r1, [r3, #0x1a]
	adds r0, r3, #0
	bl Player_8005380
	strh r5, [r4, #0x12]
	b _08080076
	.align 2, 0
_0807FFA8: .4byte 0x00000898
_0807FFAC: .4byte 0x000008CB
_0807FFB0:
	ldrh r0, [r4, #0x10]
	subs r0, #1
	movs r3, #0
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807FFC8
	movs r0, #0x14
	strh r0, [r4, #0x10]
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r4, #0x12]
_0807FFC8:
	ldr r0, [r2, #0x10]
	asrs r0, r0, #8
	ldr r1, _0807FFE8 @ =0x00000897
	cmp r0, r1
	ble _08080076
	movs r1, #0x18
	ldrsh r0, [r2, r1]
	cmp r0, #0
	beq _08080076
	strh r3, [r2, #0x1c]
	strh r3, [r2, #0x18]
	strh r3, [r2, #0x1a]
	adds r0, r2, #0
	bl Player_8005380
	b _08080076
	.align 2, 0
_0807FFE8: .4byte 0x00000897
_0807FFEC:
	ldrh r1, [r4, #0x14]
	movs r0, #0x10
	adds r2, r0, #0
	orrs r2, r1
	strh r2, [r4, #0x14]
	ldrh r0, [r4, #0x10]
	subs r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08080076
	ldr r0, [r3, #0xc]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r3, #0xc]
	ldr r0, _08080018 @ =gStageData
	ldrh r0, [r0, #0x14]
	orrs r2, r0
	strh r2, [r4, #0x14]
	movs r0, #0xa5
	lsls r0, r0, #1
	b _08080074
	.align 2, 0
_08080018: .4byte gStageData
_0808001C:
	ldrh r1, [r4, #0x14]
	movs r0, #0x10
	orrs r0, r1
	ldr r1, _0808004C @ =gStageData
	ldrh r1, [r1, #0x14]
	orrs r0, r1
	strh r0, [r4, #0x14]
	ldr r0, [r3, #0x10]
	asrs r0, r0, #8
	ldr r1, _08080050 @ =0x0000090F
	cmp r0, r1
	ble _08080076
	movs r5, #0x18
	ldrsh r0, [r3, r5]
	rsbs r0, r0, #0
	strh r0, [r3, #0x18]
	movs r0, #0
	strh r0, [r3, #0x1a]
	adds r0, r3, #0
	bl sub_80044CC
	movs r0, #0x82
	b _08080074
	.align 2, 0
_0808004C: .4byte gStageData
_08080050: .4byte 0x0000090F
_08080054:
	ldr r0, [r3, #0x14]
	asrs r0, r0, #8
	cmp r0, #0xb0
	ble _08080076
	movs r1, #0x1a
	ldrsh r0, [r3, r1]
	cmp r0, #0
	ble _08080076
	movs r0, #0
	strh r0, [r3, #0x1c]
	strh r0, [r3, #0x18]
	strh r0, [r3, #0x1a]
	adds r0, r3, #0
	bl Player_8005380
	movs r0, #0xc8
_08080074:
	strh r0, [r4, #0x12]
_08080076:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_808007C
sub_808007C: @ 0x0808007C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r5, _080800B4 @ =gPlayers
	ldr r1, _080800B8 @ =gStageData
	movs r2, #0
	movs r0, #9
	strb r0, [r1, #4]
	ldrh r1, [r4, #0x12]
	cmp r1, #0xbe
	bne _08080092
	b _08080374
_08080092:
	cmp r1, #0xbe
	bgt _080800EE
	cmp r1, #0x82
	bne _0808009C
	b _08080200
_0808009C:
	cmp r1, #0x82
	bgt _080800C8
	cmp r1, #0x64
	beq _0808017E
	cmp r1, #0x64
	bgt _080800BC
	cmp r1, #0
	beq _0808015A
	cmp r1, #0xa
	beq _08080168
	b _080804AC
	.align 2, 0
_080800B4: .4byte gPlayers
_080800B8: .4byte gStageData
_080800BC:
	cmp r1, #0x6e
	beq _080801A8
	cmp r1, #0x78
	bne _080800C6
	b _080801D4
_080800C6:
	b _080804AC
_080800C8:
	cmp r1, #0xab
	bne _080800CE
	b _08080318
_080800CE:
	cmp r1, #0xab
	bgt _080800E0
	cmp r1, #0x8c
	bne _080800D8
	b _08080230
_080800D8:
	cmp r1, #0xaa
	bne _080800DE
	b _080802F8
_080800DE:
	b _080804AC
_080800E0:
	cmp r1, #0xac
	bne _080800E6
	b _08080334
_080800E6:
	cmp r1, #0xb4
	bne _080800EC
	b _08080358
_080800EC:
	b _080804AC
_080800EE:
	cmp r1, #0xfa
	bne _080800F4
	b _0808048C
_080800F4:
	cmp r1, #0xfa
	bgt _0808011E
	cmp r1, #0xdc
	bne _080800FE
	b _080803FC
_080800FE:
	cmp r1, #0xdc
	bgt _08080110
	cmp r1, #0xc8
	bne _08080108
	b _080803A0
_08080108:
	cmp r1, #0xd2
	bne _0808010E
	b _080803D8
_0808010E:
	b _080804AC
_08080110:
	cmp r1, #0xe6
	bne _08080116
	b _0808043C
_08080116:
	cmp r1, #0xf0
	bne _0808011C
	b _08080460
_0808011C:
	b _080804AC
_0808011E:
	movs r2, #0x82
	lsls r2, r2, #2
	cmp r1, r2
	bne _08080128
	b _0808028E
_08080128:
	cmp r1, r2
	bgt _08080140
	movs r0, #0xfa
	lsls r0, r0, #1
	cmp r1, r0
	bne _08080136
	b _08080250
_08080136:
	adds r0, #0xa
	cmp r1, r0
	bne _0808013E
	b _08080274
_0808013E:
	b _080804AC
_08080140:
	movs r0, #0x96
	lsls r0, r0, #2
	cmp r1, r0
	bne _0808014A
	b _08080420
_0808014A:
	cmp r1, r0
	ble _08080150
	b _080804AC
_08080150:
	subs r0, #0x46
	cmp r1, r0
	bne _08080158
	b _080802D0
_08080158:
	b _080804AC
_0808015A:
	ldr r0, _08080164 @ =0x00000181
	strh r0, [r4, #0x10]
	movs r0, #0xa
	b _080804AA
	.align 2, 0
_08080164: .4byte 0x00000181
_08080168:
	ldrh r0, [r4, #0x10]
	subs r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08080176
	b _080804AC
_08080176:
	movs r0, #0x87
	strh r0, [r4, #0x10]
	movs r0, #0x64
	b _080804AA
_0808017E:
	ldrh r0, [r4, #0x14]
	movs r3, #0x10
	movs r2, #0
	orrs r0, r3
	strh r0, [r4, #0x14]
	ldrh r1, [r4, #0x10]
	movs r5, #0x10
	ldrsh r0, [r4, r5]
	cmp r0, #0x45
	bgt _08080198
	ldrh r0, [r4, #0x16]
	orrs r0, r3
	strh r0, [r4, #0x16]
_08080198:
	subs r0, r1, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080801A4
	b _080804AC
_080801A4:
	movs r0, #0x6e
	b _080804AA
_080801A8:
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	ldr r1, _080801D0 @ =0x0000085C
	cmp r0, r1
	bgt _080801B4
	b _080804AC
_080801B4:
	strh r2, [r5, #0x1c]
	strh r2, [r5, #0x18]
	strh r2, [r5, #0x1a]
	adds r0, r5, #0
	bl Player_8005380
	movs r0, #0xd6
	strh r0, [r4, #0x10]
	movs r0, #0x78
	strh r0, [r4, #0x12]
	movs r0, #0xc8
	bl sub_807FB7C
	b _080804AC
	.align 2, 0
_080801D0: .4byte 0x0000085C
_080801D4:
	ldrh r0, [r4, #0x10]
	subs r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080801E2
	b _080804AC
_080801E2:
	ldr r1, _080801F8 @ =Player_8008CD0
	adds r0, r5, #0
	bl SetPlayerCallback
	ldr r0, _080801FC @ =0x0000029A
	bl m4aSongNumStart
	movs r0, #0xa
	strh r0, [r4, #0xc]
	movs r0, #0x82
	b _080804AA
	.align 2, 0
_080801F8: .4byte Player_8008CD0
_080801FC: .4byte 0x0000029A
_08080200:
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	ldr r1, _0808022C @ =0x00000803
	cmp r0, r1
	ble _0808020C
	b _080804AC
_0808020C:
	ldr r0, [r5, #4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #4]
	strh r2, [r5, #0x1c]
	strh r2, [r5, #0x18]
	strh r2, [r5, #0x1a]
	adds r0, r5, #0
	adds r0, #0x4a
	strh r2, [r0]
	adds r0, r5, #0
	bl Player_8005380
	movs r0, #0x8c
	b _080804AA
	.align 2, 0
_0808022C: .4byte 0x00000803
_08080230:
	ldr r0, _0808024C @ =gBldRegs
	ldrh r0, [r0, #4]
	cmp r0, #0x10
	beq _0808023A
	b _080804AC
_0808023A:
	ldrh r1, [r4, #0x14]
	movs r0, #0x80
	orrs r0, r1
	strh r0, [r4, #0x14]
	movs r0, #0xd2
	lsls r0, r0, #1
	strh r0, [r4, #0x10]
	adds r0, #0x50
	b _080804AA
	.align 2, 0
_0808024C: .4byte gBldRegs
_08080250:
	ldrh r0, [r4, #0x10]
	subs r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0808025E
	b _080804AC
_0808025E:
	ldr r1, _08080270 @ =Player_8008CD0
	adds r0, r5, #0
	bl SetPlayerCallback
	movs r0, #0xb4
	strh r0, [r4, #0x10]
	movs r0, #0xff
	lsls r0, r0, #1
	b _080804AA
	.align 2, 0
_08080270: .4byte Player_8008CD0
_08080274:
	ldrh r0, [r4, #0x10]
	subs r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _08080284
	b _080804AC
_08080284:
	strh r2, [r4, #0x12]
	adds r0, r5, #0
	adds r0, #0x4a
	strh r1, [r0]
	b _080804AC
_0808028E:
	ldrh r1, [r4, #0x14]
	movs r0, #0x10
	movs r7, #0
	orrs r0, r1
	strh r0, [r4, #0x14]
	ldr r1, [r5, #0x10]
	asrs r1, r1, #8
	ldr r6, _080802C8 @ =gCamera
	ldr r0, [r6]
	adds r0, #0x78
	cmp r1, r0
	bge _080802A8
	b _080804AC
_080802A8:
	movs r0, #0x64
	bl sub_807FB7C
	ldr r0, [r6]
	adds r0, #0x78
	lsls r0, r0, #8
	str r0, [r5, #0x10]
	movs r0, #0x3c
	strh r0, [r4, #0x10]
	ldr r0, _080802CC @ =0x00000212
	strh r0, [r4, #0x12]
	movs r0, #0x73      @ SE_STOPPING
	bl m4aSongNumStart
	b _080804AC
	.align 2, 0
_080802C8: .4byte gCamera
_080802CC: .4byte 0x00000212
_080802D0:
	ldrh r0, [r4, #0x10]
	subs r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080802DE
	b _080804AC
_080802DE:
	movs r0, #0x93
	lsls r0, r0, #1
	strh r0, [r5, #0x30]
	adds r0, #0xba
	strh r0, [r4, #0x10]
	movs r0, #0xaa
	strh r0, [r4, #0x12]
	movs r0, #0x64
	strh r0, [r4, #0xc]
	movs r0, #0x3d      @ MUS_EX_DEMO_2
	bl m4aSongNumStart
	b _080804AC
_080802F8:
	ldrh r0, [r4, #0x10]
	subs r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08080306
	b _080804AC
_08080306:
	ldr r0, _08080314 @ =0x00000127
	strh r0, [r5, #0x30]
	movs r0, #0x1e
	strh r0, [r4, #0x10]
	movs r0, #0xab
	b _080804AA
	.align 2, 0
_08080314: .4byte 0x00000127
_08080318:
	ldrh r0, [r4, #0x10]
	subs r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08080326
	b _080804AC
_08080326:
	ldr r0, _08080330 @ =0x0000FF80
	strh r0, [r5, #0x1a]
	movs r0, #0xac
	b _080804AA
	.align 2, 0
_08080330: .4byte 0x0000FF80
_08080334:
	movs r1, #0x1a
	ldrsh r0, [r5, r1]
	ldr r1, [r5, #0x14]
	adds r1, r1, r0
	str r1, [r5, #0x14]
	asrs r1, r1, #8
	ldr r0, _08080354 @ =gCamera
	ldr r0, [r0, #4]
	adds r0, #0x64
	cmp r1, r0
	ble _0808034C
	b _080804AC
_0808034C:
	movs r0, #1
	strh r0, [r4, #0x10]
	movs r0, #0xb4
	b _080804AA
	.align 2, 0
_08080354: .4byte gCamera
_08080358:
	ldrh r0, [r4, #0x10]
	subs r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08080366
	b _080804AC
_08080366:
	movs r0, #0x94
	lsls r0, r0, #1
	strh r0, [r5, #0x30]
	movs r0, #0x78
	strh r0, [r4, #0x10]
	movs r0, #0xbe
	b _080804AA
_08080374:
	ldrh r0, [r4, #0x10]
	subs r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	beq _08080384
	b _080804AC
_08080384:
	ldr r1, _08080398 @ =gBldRegs
	ldr r0, _0808039C @ =0x00003FBF
	strh r0, [r1]
	movs r0, #8
	strh r0, [r1, #2]
	strh r2, [r1, #4]
	movs r0, #1
	strh r0, [r4, #0x10]
	movs r0, #0xc8
	b _080804AA
	.align 2, 0
_08080398: .4byte gBldRegs
_0808039C: .4byte 0x00003FBF
_080803A0:
	ldrh r0, [r4, #0x10]
	subs r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080803AE
	b _080804AC
_080803AE:
	movs r0, #4
	strh r0, [r4, #0x10]
	ldr r1, _080803D4 @ =gBldRegs
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x10
	bne _080804AC
	movs r0, #0
	strb r0, [r4, #1]
	movs r0, #0xfa
	lsls r0, r0, #2
	strh r0, [r4, #0xc]
	movs r0, #0x3c
	strh r0, [r4, #0x10]
	movs r0, #0xd2
	b _080804AA
	.align 2, 0
_080803D4: .4byte gBldRegs
_080803D8:
	ldrh r0, [r4, #0x10]
	subs r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080804AC
	ldr r0, _080803F4 @ =0x00000129
	strh r0, [r5, #0x30]
	movs r0, #0xdc
	strh r0, [r4, #0x12]
	ldr r0, _080803F8 @ =0x0000023F
	bl m4aSongNumStart
	b _080804AC
	.align 2, 0
_080803F4: .4byte 0x00000129
_080803F8: .4byte 0x0000023F
_080803FC:
	ldr r1, _0808041C @ =gBldRegs
	ldrh r0, [r1, #4]
	subs r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _080804AC
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	movs r0, #0x78
	strh r0, [r4, #0x10]
	movs r0, #0x96
	lsls r0, r0, #2
	b _080804AA
	.align 2, 0
_0808041C: .4byte gBldRegs
_08080420:
	ldrh r0, [r4, #0x10]
	subs r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080804AC
	ldr r0, [r5, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #4]
	movs r0, #0x78
	strh r0, [r4, #0x10]
	movs r0, #0xe6
	b _080804AA
_0808043C:
	ldrh r0, [r4, #0x10]
	subs r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080804AC
	ldr r0, [r5, #4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #4]
	movs r0, #0x95
	lsls r0, r0, #1
	strh r0, [r5, #0x30]
	movs r0, #0x1e
	strh r0, [r4, #0x10]
	movs r0, #0xf0
	b _080804AA
_08080460:
	ldrh r0, [r4, #0x10]
	subs r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bne _080804AC
	ldr r0, _08080488 @ =0x0000012B
	strh r0, [r5, #0x30]
	strh r1, [r5, #0x18]
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r5, #0x1a]
	movs r0, #0xfa
	strh r0, [r4, #0x12]
	movs r0, #0x70
	bl m4aSongNumStart
	b _080804AC
	.align 2, 0
_08080488: .4byte 0x0000012B
_0808048C:
	ldrh r0, [r5, #0x1a]
	subs r0, #0x2a
	strh r0, [r5, #0x1a]
	movs r0, #0x1a
	ldrsh r1, [r5, r0]
	ldr r0, [r5, #0x14]
	adds r0, r0, r1
	str r0, [r5, #0x14]
	asrs r0, r0, #8
	movs r1, #0x10
	rsbs r1, r1, #0
	cmp r0, r1
	bge _080804AC
	movs r0, #0x96
	lsls r0, r0, #1
_080804AA:
	strh r0, [r4, #0x12]
_080804AC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start InitChaosEmeraldSprites
InitChaosEmeraldSprites: @ 0x080804B4
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0xa8
	ldr r6, [r3, #0x18]
	movs r0, #0
	strb r0, [r3, #1]
	movs r5, #0
	movs r4, #0
	ldr r7, _08080544 @ =sBossExtraAnimsChaosEmeralds
	adds r0, r7, #4
	mov ip, r0
_080804CC:
	lsls r1, r5, #2
	adds r1, r1, r5
	lsls r1, r1, #2
	adds r0, r3, #0
	adds r0, #0x1c
	adds r0, r0, r1
	str r4, [r0]
	adds r0, r3, #0
	adds r0, #0x20
	adds r0, r0, r1
	str r4, [r0]
	adds r0, r3, #0
	adds r0, #0x24
	adds r0, r0, r1
	str r4, [r0]
	adds r0, r3, #0
	adds r0, #0x28
	adds r0, r0, r1
	str r4, [r0]
	adds r1, r3, r1
	movs r0, #1
	strh r0, [r1, #0x2c]
	strh r4, [r1, #0x2e]
	str r6, [r2]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r2, #0x14]
	lsls r1, r5, #1
	adds r1, r1, r5
	lsls r1, r1, #1
	adds r0, r1, r7
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	adds r0, r7, #2
	adds r0, r1, r0
	ldrh r0, [r0]
	strb r0, [r2, #0x1a]
	strh r4, [r2, #0x16]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	movs r0, #0x10
	strb r0, [r2, #0x1c]
	add r1, ip
	ldrh r0, [r1]
	strb r0, [r2, #0x1f]
	strh r4, [r2, #0x10]
	strh r4, [r2, #0x12]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r2, #8]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r2, #0x28
	adds r6, #0x80
	cmp r5, #6
	bls _080804CC
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08080544: .4byte sBossExtraAnimsChaosEmeralds

	thumb_func_start sub_8080548
sub_8080548: @ 0x08080548
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov ip, r0
	ldr r1, _08080574 @ =gPlayers
	ldrh r0, [r0, #0xc]
	cmp r0, #0x1e
	bne _08080560
	b _0808066C
_08080560:
	cmp r0, #0x1e
	bgt _08080578
	cmp r0, #0xa
	beq _08080592
	cmp r0, #0xa
	bgt _0808056E
	b _0808087A
_0808056E:
	cmp r0, #0x14
	beq _08080600
	b _0808087A
	.align 2, 0
_08080574: .4byte gPlayers
_08080578:
	cmp r0, #0x64
	bne _0808057E
	b _080806F4
_0808057E:
	cmp r0, #0x64
	bgt _0808058A
	cmp r0, #0x28
	bne _08080588
	b _080806B0
_08080588:
	b _0808087A
_0808058A:
	cmp r0, #0x6e
	bne _08080590
	b _080807AC
_08080590:
	b _0808087A
_08080592:
	movs r5, #0
	movs r0, #0x1c
	add r0, ip
	mov sb, r0
	movs r2, #0x20
	add r2, ip
	mov r8, r2
	ldr r7, [r1, #0x14]
	mov r6, ip
	adds r6, #0x24
	movs r3, #0x28
	add r3, ip
	mov sl, r3
	ldr r4, _080805F4 @ =gUnknown_080D5CD4
_080805AE:
	lsls r2, r5, #2
	adds r2, r2, r5
	lsls r2, r2, #2
	mov r0, sb
	adds r1, r0, r2
	ldr r3, _080805F8 @ =gCamera
	ldr r0, [r3]
	adds r0, #0x78
	lsls r0, r0, #8
	str r0, [r1]
	mov r1, r8
	adds r0, r1, r2
	str r7, [r0]
	adds r3, r6, r2
	lsls r1, r5, #3
	adds r0, r1, r4
	ldr r0, [r0]
	str r0, [r3]
	add r2, sl
	ldr r3, _080805FC @ =gUnknown_080D5CD8
	adds r1, r1, r3
	ldr r0, [r1]
	str r0, [r2]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #6
	bls _080805AE
	movs r0, #1
	mov r1, ip
	strb r0, [r1, #1]
	movs r0, #0x14
	strh r0, [r1, #0xc]
	b _0808087A
	.align 2, 0
_080805F4: .4byte gUnknown_080D5CD4
_080805F8: .4byte gCamera
_080805FC: .4byte gUnknown_080D5CD8
_08080600:
	movs r5, #0
	movs r6, #0
	movs r2, #0x20
	add r2, ip
	mov r8, r2
_0808060A:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r3, r0, #2
	mov r0, r8
	adds r4, r0, r3
	ldr r0, [r4]
	asrs r0, r0, #8
	cmp r0, #0xbb
	ble _0808062A
	movs r0, #0xbc
	lsls r0, r0, #8
	str r0, [r4]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	b _08080650
_0808062A:
	mov r2, ip
	adds r2, #0x1c
	adds r2, r2, r3
	mov r0, ip
	adds r0, #0x24
	adds r0, r0, r3
	ldr r1, [r2]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r2]
	mov r0, ip
	adds r0, #0x28
	adds r0, r0, r3
	ldr r1, [r0]
	adds r1, #0x2a
	str r1, [r0]
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
_08080650:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #6
	bls _0808060A
	cmp r6, #7
	beq _08080660
	b _0808087A
_08080660:
	movs r0, #0xb4
	mov r1, ip
	strh r0, [r1, #0xe]
	movs r0, #0x1e
	strh r0, [r1, #0xc]
	b _0808087A
_0808066C:
	mov r2, ip
	ldrh r0, [r2, #0xe]
	subs r0, #1
	strh r0, [r2, #0xe]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0808067C
	b _0808087A
_0808067C:
	movs r5, #0
	adds r2, #0x28
	ldr r3, _080806AC @ =gUnknown_080D5CD8
_08080682:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r1, r2, r0
	lsls r0, r5, #3
	adds r0, r0, r3
	ldr r0, [r0]
	cmp r0, #0
	bge _08080696
	adds r0, #7
_08080696:
	asrs r0, r0, #3
	str r0, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #6
	bls _08080682
	movs r0, #0x28
	mov r3, ip
	strh r0, [r3, #0xc]
	b _0808087A
	.align 2, 0
_080806AC: .4byte gUnknown_080D5CD8
_080806B0:
	movs r5, #0
	ldr r6, _080806F0 @ =gBldRegs
	mov r4, ip
	adds r4, #0x20
	mov r3, ip
	adds r3, #0x28
_080806BC:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r2, r4, r0
	adds r0, r3, r0
	ldr r1, [r2]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r2]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #6
	bls _080806BC
	ldrh r0, [r6, #4]
	cmp r0, #0x10
	beq _080806E0
	b _0808087A
_080806E0:
	movs r0, #0
	mov r1, ip
	strb r0, [r1, #1]
	movs r0, #0xfa
	lsls r0, r0, #2
	strh r0, [r1, #0xc]
	b _0808087A
	.align 2, 0
_080806F0: .4byte gBldRegs
_080806F4:
	movs r0, #0
	mov r2, ip
	strh r0, [r2, #2]
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r2, #8]
	lsls r0, r0, #2
	str r0, [r2, #4]
	ldr r1, _0808079C @ =gCamera
	ldr r0, [r1]
	adds r0, #0x78
	lsls r0, r0, #8
	str r0, [r2, #0x24]
	ldr r0, [r1, #4]
	adds r0, #0x68
	lsls r0, r0, #8
	str r0, [r2, #0x28]
	movs r5, #0
	movs r7, #0
	movs r3, #0x1c
	add r3, ip
	mov sb, r3
	movs r0, #0x20
	add r0, ip
	mov r8, r0
	ldr r1, _080807A0 @ =gSineTable
	mov sl, r1
	ldr r4, _080807A4 @ =0x00003FFF
_0808072C:
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r7, r2
	lsls r0, r0, #1
	add r0, sl
	movs r3, #0
	ldrsh r1, [r0, r3]
	mov r2, ip
	ldr r0, [r2, #4]
	muls r0, r1, r0
	cmp r0, #0
	bge _08080746
	adds r0, r0, r4
_08080746:
	asrs r6, r0, #0xe
	lsls r0, r7, #1
	add r0, sl
	movs r3, #0
	ldrsh r1, [r0, r3]
	mov r2, ip
	ldr r0, [r2, #8]
	muls r0, r1, r0
	cmp r0, #0
	bge _0808075C
	adds r0, r0, r4
_0808075C:
	asrs r3, r0, #0xe
	lsls r1, r5, #2
	adds r1, r1, r5
	lsls r1, r1, #2
	mov r0, sb
	adds r0, r0, r1
	str r0, [sp]
	mov r2, ip
	ldr r0, [r2, #0x24]
	adds r0, r6, r0
	ldr r2, [sp]
	str r0, [r2]
	add r1, r8
	mov r2, ip
	ldr r0, [r2, #0x28]
	adds r0, r3, r0
	str r0, [r1]
	adds r7, #0x92
	ldr r3, _080807A8 @ =0x000003FF
	adds r0, r3, #0
	ands r7, r0
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #6
	bls _0808072C
	movs r0, #1
	strb r0, [r2, #1]
	movs r0, #0x6e
	strh r0, [r2, #0xc]
	b _0808087A
	.align 2, 0
_0808079C: .4byte gCamera
_080807A0: .4byte gSineTable
_080807A4: .4byte 0x00003FFF
_080807A8: .4byte 0x000003FF
_080807AC:
	mov r1, ip
	ldrh r0, [r1, #2]
	subs r0, #8
	ldr r2, _08080850 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	mov r3, ip
	strh r0, [r3, #2]
	ldr r0, [r3, #8]
	subs r0, #0x40
	str r0, [r3, #8]
	asrs r0, r0, #8
	cmp r0, #8
	bgt _080807CE
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [r3, #8]
_080807CE:
	mov r1, ip
	ldr r0, [r1, #8]
	lsls r0, r0, #2
	str r0, [r1, #4]
	mov r4, ip
	adds r4, #0xa8
	movs r5, #0
	ldrh r7, [r1, #2]
	movs r2, #0x1c
	add r2, ip
	mov sb, r2
	movs r3, #0x20
	add r3, ip
	mov r8, r3
	ldr r0, _08080854 @ =0x00003FFF
	mov sl, r0
_080807EE:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r7, r1
	lsls r0, r0, #1
	ldr r2, _08080858 @ =gSineTable
	adds r0, r0, r2
	movs r3, #0
	ldrsh r1, [r0, r3]
	mov r2, ip
	ldr r0, [r2, #4]
	muls r0, r1, r0
	cmp r0, #0
	bge _0808080A
	add r0, sl
_0808080A:
	asrs r6, r0, #0xe
	lsls r0, r7, #1
	ldr r3, _08080858 @ =gSineTable
	adds r0, r0, r3
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov r3, ip
	ldr r0, [r3, #8]
	muls r0, r1, r0
	cmp r0, #0
	bge _08080822
	add r0, sl
_08080822:
	asrs r3, r0, #0xe
	lsls r1, r5, #2
	adds r1, r1, r5
	lsls r1, r1, #2
	mov r0, sb
	adds r0, r0, r1
	str r0, [sp]
	mov r2, ip
	ldr r0, [r2, #0x24]
	adds r0, r6, r0
	ldr r2, [sp]
	str r0, [r2]
	add r1, r8
	mov r2, ip
	ldr r0, [r2, #0x28]
	adds r0, r3, r0
	str r0, [r1]
	ldr r3, _0808085C @ =0x000001FF
	cmp r7, r3
	bhi _08080860
	movs r0, #0x80
	lsls r0, r0, #2
	b _08080864
	.align 2, 0
_08080850: .4byte 0x000003FF
_08080854: .4byte 0x00003FFF
_08080858: .4byte gSineTable
_0808085C: .4byte 0x000001FF
_08080860:
	movs r0, #0x98
	lsls r0, r0, #3
_08080864:
	strh r0, [r4, #0x14]
	adds r7, #0x92
	ldr r1, _080808E0 @ =0x000003FF
	adds r0, r1, #0
	ands r7, r0
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r4, #0x28
	cmp r5, #6
	bls _080807EE
_0808087A:
	mov r2, ip
	ldrb r0, [r2, #1]
	cmp r0, #0
	beq _080808CE
	mov r4, ip
	adds r4, #0xa8
	movs r5, #0
	movs r3, #0x1c
	add r3, ip
	mov sb, r3
	movs r0, #0x20
	add r0, ip
	mov r8, r0
	ldr r6, _080808E4 @ =gCamera
_08080896:
	lsls r2, r5, #2
	adds r2, r2, r5
	lsls r2, r2, #2
	mov r1, sb
	adds r0, r1, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, [r6]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	add r2, r8
	ldr r0, [r2]
	asrs r0, r0, #8
	ldr r1, [r6, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r4, #0x28
	cmp r5, #6
	bls _08080896
_080808CE:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080808E0: .4byte 0x000003FF
_080808E4: .4byte gCamera

	thumb_func_start sub_80808E8
sub_80808E8: @ 0x080808E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0808099C @ =Task_8080AD4
	movs r1, #0x8e
	lsls r1, r1, #1     @ 0x11C
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r3, _080809A0 @ =TaskDestructor_8081C4C
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #4]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r2, r0
	movs r1, #0
	strb r4, [r7]
	movs r0, #1
	strh r0, [r7, #4]
	strh r1, [r7, #6]
	strh r1, [r7, #2]
	str r1, [r7, #0xc]
	str r1, [r7, #0x10]
	movs r4, #0
	ldr r0, _080809A4 @ =0x03000068
	adds r1, r2, r0
	movs r3, #0
	adds r5, r1, #0
_08080932:
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r0, r0, #3
	adds r0, r1, r0
	str r3, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _08080932
	movs r4, #0
	adds r1, r7, #0
	adds r1, #0x1c
	str r1, [sp, #8]
	adds r2, r7, #0
	adds r2, #0x20
	str r2, [sp, #0xc]
	movs r0, #0x24
	adds r0, r0, r7
	mov sl, r0
	adds r6, r7, #0
	adds r6, #0xa0
	movs r1, #0xd8
	adds r1, r1, r7
	mov r8, r1
	ldr r2, _080809A8 @ =gCamera
	mov sb, r2
	mov ip, r4
_0808096A:
	cmp r4, #2
	beq _080809AC
	lsls r3, r4, #3
	subs r2, r3, r4
	lsls r2, r2, #2
	adds r1, r7, #0
	adds r1, #0x14
	adds r1, r1, r2
	str r1, [sp, #0x14]
	mov r1, sb
	ldr r0, [r1]
	adds r0, #0x78
	lsls r0, r0, #8
	ldr r1, [sp, #0x14]
	str r0, [r1]
	adds r1, r7, #0
	adds r1, #0x18
	adds r1, r1, r2
	mov r2, sb
	ldr r0, [r2, #4]
	adds r0, #0xb4
	lsls r0, r0, #8
	str r0, [r1]
	b _080809C0
	.align 2, 0
_0808099C: .4byte Task_8080AD4
_080809A0: .4byte TaskDestructor_8081C4C
_080809A4: .4byte 0x03000068
_080809A8: .4byte gCamera
_080809AC:
	mov r1, sb
	ldr r0, [r1]
	adds r0, #0x8c
	lsls r0, r0, #8
	str r0, [r7, #0x4c]
	ldr r0, [r1, #4]
	adds r0, #0xd4
	lsls r0, r0, #8
	str r0, [r7, #0x50]
	movs r3, #0x10
_080809C0:
	subs r1, r3, r4
	lsls r1, r1, #2
	ldr r2, [sp, #8]
	adds r0, r2, r1
	mov r2, ip
	str r2, [r0]
	ldr r2, [sp, #0xc]
	adds r0, r2, r1
	mov r2, ip
	str r2, [r0]
	mov r2, sl
	adds r0, r2, r1
	mov r2, ip
	str r2, [r0]
	adds r1, r7, r1
	movs r0, #1
	strh r0, [r1, #0x28]
	strh r2, [r1, #0x2a]
	ldrb r0, [r7]
	cmp r0, #0
	beq _080809EE
	movs r0, #0xfa
	lsls r0, r0, #2
_080809EE:
	strh r0, [r1, #0x2c]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _0808096A
	ldrb r0, [r7]
	cmp r0, #0
	bne _08080A08
	movs r0, #0x74
	bl VramMalloc
	b _08080A0A
_08080A08:
	movs r0, #0
_08080A0A:
	str r0, [r7, #8]
	movs r0, #0x80
	bl VramMalloc
	adds r1, r0, #0
	str r1, [r7, #0xc]
	str r1, [r7, #0x68]
	movs r2, #0
	movs r4, #0
	movs r0, #0xa8
	lsls r0, r0, #3
	strh r0, [r5, #0x14]
	subs r0, #0x48
	strh r0, [r5, #0xc]
	movs r0, #4
	strb r0, [r5, #0x1a]
	strh r4, [r5, #0x16]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #0x10
	mov sl, r0
	mov r0, sl
	strb r0, [r5, #0x1c]
	strb r2, [r5, #0x1f]
	strh r4, [r5, #0x10]
	strh r4, [r5, #0x12]
	movs r0, #0x80
	lsls r0, r0, #5
	mov sb, r0
	str r0, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #4
	adds r1, r1, r0
	str r1, [r6]
	movs r0, #0xb0
	lsls r0, r0, #3
	strh r0, [r6, #0x14]
	subs r0, #0x89
	strh r0, [r6, #0xc]
	strb r2, [r6, #0x1a]
	strh r4, [r6, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r6, #0x1b]
	mov r1, sl
	strb r1, [r6, #0x1c]
	movs r0, #9
	strb r0, [r6, #0x1f]
	strh r4, [r6, #0x10]
	strh r4, [r6, #0x12]
	mov r0, sb
	str r0, [r6, #8]
	movs r0, #0x88
	lsls r0, r0, #1
	adds r1, r7, r0
	ldrh r0, [r7, #2]
	strh r0, [r1]
	ldrh r0, [r6, #0x10]
	strh r0, [r1, #6]
	ldrh r0, [r6, #0x12]
	strh r0, [r1, #8]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	movs r0, #0x24
	str r2, [sp, #0x10]
	bl VramMalloc
	adds r1, r0, #0
	str r1, [r7, #0x10]
	mov r0, r8
	str r1, [r0]
	movs r0, #0xa0
	lsls r0, r0, #3
	mov r1, r8
	strh r0, [r1, #0x14]
	adds r0, #0xa
	strh r0, [r1, #0xc]
	ldr r2, [sp, #0x10]
	strb r2, [r1, #0x1a]
	strh r4, [r1, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	mov r0, sl
	strb r0, [r1, #0x1c]
	strb r2, [r1, #0x1f]
	strh r4, [r1, #0x10]
	strh r4, [r1, #0x12]
	mov r2, sb
	str r2, [r1, #8]
	ldr r0, [sp, #4]
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start Task_8080AD4
Task_8080AD4: @ 0x08080AD4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08080B1C @ =gCurTask
	ldr r1, [r0]
	ldrh r2, [r1, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r2, r1
	ldr r1, _08080B20 @ =0x03000110
	adds r7, r2, r1
	ldrh r1, [r5, #0x2c]
	adds r3, r0, #0
	cmp r1, #0xc8
	bne _08080B00
	ldr r4, _08080B24 @ =0x03000064
	adds r0, r2, r4
	ldrh r0, [r0]
	cmp r0, #0xc8
	beq _08080B12
_08080B00:
	movs r0, #0xfa
	lsls r0, r0, #3
	cmp r1, r0
	bne _08080B28
	ldr r4, _08080B24 @ =0x03000064
	adds r0, r2, r4
	ldrh r0, [r0]
	cmp r0, r1
	bne _08080B28
_08080B12:
	ldr r0, [r3]
	bl TaskDestroy
	b _08080BC0
	.align 2, 0
_08080B1C: .4byte gCurTask
_08080B20: .4byte 0x03000110
_08080B24: .4byte 0x03000064
_08080B28:
	adds r0, r5, #0
	bl sub_8080BD0
	adds r0, r5, #0
	bl sub_80811E0
	movs r6, #0
	movs r0, #0x14
	adds r0, r0, r5
	mov sl, r0
	movs r1, #0x18
	adds r1, r1, r5
	mov sb, r1
	ldr r2, _08080B9C @ =gCamera
	mov r8, r2
_08080B46:
	lsls r2, r6, #3
	subs r2, r2, r6
	lsls r0, r2, #3
	adds r0, #0x68
	adds r4, r5, r0
	lsls r2, r2, #2
	mov r3, sl
	adds r0, r3, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	mov r3, r8
	ldr r1, [r3]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	add r2, sb
	ldr r0, [r2]
	asrs r0, r0, #8
	ldr r1, [r3, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	ldr r0, [r4, #8]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08080BA0
	ldrh r0, [r5, #2]
	strh r0, [r7]
	ldrh r0, [r4, #0x10]
	strh r0, [r7, #6]
	ldrh r0, [r4, #0x12]
	strh r0, [r7, #8]
	adds r0, r4, #0
	adds r1, r7, #0
	bl TransformSprite
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	b _08080BAC
	.align 2, 0
_08080B9C: .4byte gCamera
_08080BA0:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08080BAC:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #2
	bhi _08080BC0
	cmp r6, #2
	bne _08080B46
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _08080B46
_08080BC0:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8080BD0
sub_8080BD0: @ 0x08080BD0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r6, r0, #0
	adds r5, r6, #0
	adds r5, #0x14
	movs r0, #0x30
	adds r0, r0, r6
	mov sb, r0
	adds r7, r6, #0
	adds r7, #0x68
	adds r3, r6, #0
	adds r3, #0xa0
	ldrh r1, [r5, #0x18]
	ldr r4, _08080C20 @ =0x0000041A
	cmp r1, r4
	bne _08080BF8
	b _0808100C
_08080BF8:
	cmp r1, r4
	bgt _08080C7C
	cmp r1, #0x32
	bne _08080C02
	b _08080DD4
_08080C02:
	cmp r1, #0x32
	bgt _08080C32
	cmp r1, #0x14
	bne _08080C0C
	b _08080D58
_08080C0C:
	cmp r1, #0x14
	bgt _08080C24
	cmp r1, #0
	bne _08080C16
	b _08080D30
_08080C16:
	cmp r1, #0xa
	bne _08080C1C
	b _08080D38
_08080C1C:
	b _080811C6
	.align 2, 0
_08080C20: .4byte 0x0000041A
_08080C24:
	cmp r1, #0x1e
	bne _08080C2A
	b _08080D70
_08080C2A:
	cmp r1, #0x28
	bne _08080C30
	b _08080D8C
_08080C30:
	b _080811C6
_08080C32:
	ldr r2, _08080C50 @ =0x000003F2
	cmp r1, r2
	bne _08080C3A
	b _08080F38
_08080C3A:
	cmp r1, r2
	bgt _08080C54
	cmp r1, #0x64
	bne _08080C44
	b _08080E2C
_08080C44:
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp r1, r0
	bne _08080C4E
	b _08080F34
_08080C4E:
	b _080811C6
	.align 2, 0
_08080C50: .4byte 0x000003F2
_08080C54:
	ldr r2, _08080C6C @ =0x00000406
	cmp r1, r2
	bne _08080C5C
	b _08080F6C
_08080C5C:
	cmp r1, r2
	bgt _08080C70
	movs r0, #0xff
	lsls r0, r0, #2
	cmp r1, r0
	bne _08080C6A
	b _08080F58
_08080C6A:
	b _080811C6
	.align 2, 0
_08080C6C: .4byte 0x00000406
_08080C70:
	movs r0, #0x82
	lsls r0, r0, #3
	cmp r1, r0
	bne _08080C7A
	b _08080FB4
_08080C7A:
	b _080811C6
_08080C7C:
	ldr r4, _08080CA8 @ =0x0000046A
	cmp r1, r4
	bne _08080C84
	b _0808111C
_08080C84:
	cmp r1, r4
	bgt _08080CDC
	movs r0, #0x87
	lsls r0, r0, #3
	cmp r1, r0
	bne _08080C92
	b _0808103E
_08080C92:
	cmp r1, r0
	bgt _08080CB0
	ldr r2, _08080CAC @ =0x00000424
	cmp r1, r2
	bne _08080C9E
	b _080811C6
_08080C9E:
	subs r0, #0xa
	cmp r1, r0
	bne _08080CA6
	b _0808102C
_08080CA6:
	b _080811C6
	.align 2, 0
_08080CA8: .4byte 0x0000046A
_08080CAC: .4byte 0x00000424
_08080CB0:
	ldr r2, _08080CC8 @ =0x00000456
	cmp r1, r2
	bne _08080CB8
	b _08081092
_08080CB8:
	cmp r1, r2
	bgt _08080CD0
	ldr r0, _08080CCC @ =0x0000044C
	cmp r1, r0
	bne _08080CC4
	b _08081084
_08080CC4:
	b _080811C6
	.align 2, 0
_08080CC8: .4byte 0x00000456
_08080CCC: .4byte 0x0000044C
_08080CD0:
	movs r0, #0x8c
	lsls r0, r0, #3
	cmp r1, r0
	bne _08080CDA
	b _080810E0
_08080CDA:
	b _080811C6
_08080CDC:
	movs r2, #0x91
	lsls r2, r2, #3
	cmp r1, r2
	bne _08080CE6
	b _0808116A
_08080CE6:
	cmp r1, r2
	bgt _08080D00
	ldr r0, _08080CFC @ =0x00000474
	cmp r1, r0
	bne _08080CF2
	b _08081128
_08080CF2:
	adds r0, #0xa
	cmp r1, r0
	bne _08080CFA
	b _08081154
_08080CFA:
	b _080811C6
	.align 2, 0
_08080CFC: .4byte 0x00000474
_08080D00:
	ldr r2, _08080D18 @ =0x0000049C
	cmp r1, r2
	bne _08080D08
	b _08081180
_08080D08:
	cmp r1, r2
	bgt _08080D20
	ldr r0, _08080D1C @ =0x00000492
	cmp r1, r0
	bne _08080D14
	b _0808113C
_08080D14:
	b _080811C6
	.align 2, 0
_08080D18: .4byte 0x0000049C
_08080D1C: .4byte 0x00000492
_08080D20:
	ldr r0, _08080D2C @ =0x000004A6
	cmp r1, r0
	bne _08080D28
	b _080811AC
_08080D28:
	b _080811C6
	.align 2, 0
_08080D2C: .4byte 0x000004A6
_08080D30:
	movs r0, #0x4b
	strh r0, [r5, #0x14]
	movs r0, #0xa
	b _080811C4
_08080D38:
	ldrh r0, [r5, #0x14]
	subs r0, #1
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _08080D48
	b _080811C6
_08080D48:
	str r0, [r5, #8]
	ldr r0, _08080D54 @ =0xFFFFFF00
	str r0, [r5, #0xc]
	movs r0, #0x14
	b _080811C4
	.align 2, 0
_08080D54: .4byte 0xFFFFFF00
_08080D58:
	ldr r0, [r5, #4]
	ldr r1, [r5, #0xc]
	adds r0, r0, r1
	str r0, [r5, #4]
	asrs r0, r0, #8
	cmp r0, #0x6e
	ble _08080D68
	b _080811C6
_08080D68:
	movs r0, #0x28
	strh r0, [r5, #0x14]
	movs r0, #0x1e
	b _080811C4
_08080D70:
	ldrh r0, [r5, #0x14]
	subs r0, #1
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _08080D80
	b _080811C6
_08080D80:
	movs r0, #0xc0
	lsls r0, r0, #1
	str r0, [r5, #8]
	str r1, [r5, #0xc]
	movs r0, #0x28
	b _08080F88
_08080D8C:
	ldr r0, [r6, #0x14]
	ldr r1, [r5, #8]
	adds r0, r0, r1
	str r0, [r6, #0x14]
	asrs r1, r0, #8
	ldr r0, _08080DBC @ =0x00000923
	cmp r1, r0
	ble _08080DC0
	movs r0, #0
	strh r0, [r5, #0x16]
	movs r0, #0x20
	strh r0, [r5, #0x14]
	ldr r0, [r6, #0x14]
	str r0, [r5, #8]
	ldr r0, [r5, #4]
	str r0, [r5, #0xc]
	movs r0, #0x32
	strh r0, [r5, #0x18]
	movs r0, #0x9f
	lsls r0, r0, #2     @ VOICE__EGGMAN__OW
	bl m4aSongNumStart
	b _080811C6
	.align 2, 0
_08080DBC: .4byte 0x00000923
_08080DC0:
	ldr r0, _08080DD0 @ =0x00000833
	cmp r1, r0
	bgt _08080DC8
	b _080811C6
_08080DC8:
	movs r0, #0xc0
	lsls r0, r0, #1
	str r0, [r5, #8]
	b _080811C6
	.align 2, 0
_08080DD0: .4byte 0x00000833
_08080DD4:
	ldr r2, _08080E24 @ =gUnknown_080D5C80
	ldrh r0, [r5, #0x16]
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r1, r1, #8
	ldr r0, [r5, #8]
	adds r0, r0, r1
	str r0, [r6, #0x14]
	ldrh r0, [r5, #0x16]
	lsls r0, r0, #2
	adds r2, #2
	adds r0, r0, r2
	movs r4, #0
	ldrsh r1, [r0, r4]
	lsls r1, r1, #8
	ldr r0, [r5, #0xc]
	adds r0, r0, r1
	str r0, [r5, #4]
	ldrh r0, [r5, #0x16]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	strh r0, [r5, #0x16]
	ldrh r0, [r5, #0x14]
	subs r0, #1
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08080E14
	b _080811C6
_08080E14:
	movs r0, #0x80
	str r0, [r5, #0xc]
	movs r0, #0x64
	strh r0, [r5, #0x18]
	ldr r0, _08080E28 @ =0x00000221
	bl m4aSongNumStart
	b _080811C6
	.align 2, 0
_08080E24: .4byte gUnknown_080D5C80
_08080E28: .4byte 0x00000221
_08080E2C:
	ldrh r0, [r5, #0x16]
	adds r0, #8
	ldr r2, _08080F10 @ =0x000001FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r5, #0x16]
	ldr r3, _08080F14 @ =gSineTable
	mov ip, r3
	ldrh r0, [r5, #0x16]
	lsls r0, r0, #1
	add r0, ip
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0
	bge _08080E4C
	adds r0, #0x3f
_08080E4C:
	asrs r4, r0, #6
	ldr r0, [r6, #0x14]
	adds r0, r0, r4
	str r0, [r6, #0x14]
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	adds r1, r1, r0
	mov r8, r1
	str r1, [r5, #4]
	ldrh r0, [r5, #0x14]
	adds r0, #1
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #9
	ble _08080EEA
	ldr r0, _08080F18 @ =gStageData
	ldr r0, [r0, #0x1c]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08080ED0
	ldr r4, _08080F1C @ =gPseudoRandom
	ldr r0, [r4]
	ldr r3, _08080F20 @ =0x00196225
	muls r0, r3, r0
	ldr r2, _08080F24 @ =0x3C6EF35F
	adds r0, r0, r2
	ldr r1, _08080F28 @ =0x000003FF
	ands r1, r0
	muls r0, r3, r0
	adds r0, r0, r2
	str r0, [r4]
	movs r3, #0xf
	ands r3, r0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	lsls r0, r0, #1
	add r0, ip
	movs r4, #0
	ldrsh r0, [r0, r4]
	muls r0, r3, r0
	lsrs r4, r0, #6
	lsls r0, r1, #1
	add r0, ip
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r0, #0
	muls r1, r3, r1
	lsrs r1, r1, #6
	ldr r0, [r6, #0x14]
	adds r0, r0, r4
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	add r1, r8
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	movs r3, #0x80
	lsls r3, r3, #2
	movs r4, #0x1e
	str r4, [sp]
	ldr r4, [r6, #8]
	str r4, [sp, #4]
	bl sub_8086D64
_08080ED0:
	ldr r0, [r6, #0x14]
	asrs r0, r0, #8
	ldr r1, _08080F2C @ =0x00000996
	cmp r0, r1
	bgt _08080EEA
	ldrh r1, [r5, #0x14]
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _08080EEA
	ldr r0, _08080F30 @ =0x00000221
	bl m4aSongNumStart
_08080EEA:
	movs r2, #0x14
	ldrsh r0, [r5, r2]
	cmp r0, #0xa
	bne _08080F00
	movs r0, #0x9f
	lsls r0, r0, #3
	strh r0, [r7, #0xc]
	movs r0, #4
	strb r0, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
_08080F00:
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	cmp r0, #0xf9
	bgt _08080F0A
	b _080811C6
_08080F0A:
	movs r0, #0xc8
	b _080811C4
	.align 2, 0
_08080F10: .4byte 0x000001FF
_08080F14: .4byte gSineTable
_08080F18: .4byte gStageData
_08080F1C: .4byte gPseudoRandom
_08080F20: .4byte 0x00196225
_08080F24: .4byte 0x3C6EF35F
_08080F28: .4byte 0x000003FF
_08080F2C: .4byte 0x00000996
_08080F30: .4byte 0x00000221
_08080F34:
	movs r0, #0x4b
	b _08081164
_08080F38:
	ldrh r0, [r5, #0x14]
	subs r0, #1
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _08080F48
	b _080811C6
_08080F48:
	str r0, [r5, #8]
	ldr r0, _08080F54 @ =0xFFFFFF00
	str r0, [r5, #0xc]
	movs r0, #0xff
	lsls r0, r0, #2
	b _080811C4
	.align 2, 0
_08080F54: .4byte 0xFFFFFF00
_08080F58:
	ldr r0, [r5, #4]
	ldr r1, [r5, #0xc]
	adds r0, r0, r1
	str r0, [r5, #4]
	asrs r0, r0, #8
	cmp r0, #0x6e
	ble _08080F68
	b _080811C6
_08080F68:
	movs r0, #0x28
	b _08081164
_08080F6C:
	ldrh r0, [r5, #0x14]
	subs r0, #1
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _08080F7C
	b _080811C6
_08080F7C:
	movs r0, #0xc0
	lsls r0, r0, #1
	str r0, [r5, #8]
	str r1, [r5, #0xc]
	movs r0, #0x82
	lsls r0, r0, #3
_08080F88:
	strh r0, [r5, #0x18]
	movs r0, #0x9f
	lsls r0, r0, #3
	strh r0, [r7, #0xc]
	movs r0, #8
	strb r0, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r7, #8]
	ldr r0, [r3, #8]
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, _08080FB0 @ =0x0000027E @ VOICE__EGGMAN__YOURE_GOING_TO_PAY_FOR_THIS
	bl m4aSongNumStart
	b _080811C6
	.align 2, 0
_08080FB0: .4byte 0x0000027E
_08080FB4:
	ldr r0, [r6, #0x14]
	ldr r1, [r5, #8]
	adds r0, r0, r1
	str r0, [r6, #0x14]
	asrs r0, r0, #8
	ldr r1, _08080FE8 @ =0x000008FB
	cmp r0, r1
	ble _08080FF4
	ldr r0, _08080FEC @ =0xFFFFFF00
	str r0, [r5, #8]
	movs r1, #0
	movs r0, #0x9f
	lsls r0, r0, #3
	strh r0, [r7, #0xc]
	strb r1, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	ldr r0, [r7, #8]
	ldr r1, _08080FF0 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r7, #8]
	ldr r0, [r3, #8]
	ands r0, r1
	str r0, [r3, #8]
	strh r4, [r5, #0x18]
	b _080811C6
	.align 2, 0
_08080FE8: .4byte 0x000008FB
_08080FEC: .4byte 0xFFFFFF00
_08080FF0: .4byte 0xFFFFFBFF
_08080FF4:
	ldr r0, [r5]
	asrs r0, r0, #8
	ldr r1, _08081008 @ =0x000007CF
	cmp r0, r1
	bgt _08081000
	b _080811C6
_08081000:
	movs r0, #0xa0
	lsls r0, r0, #2
	str r0, [r5, #8]
	b _080811C6
	.align 2, 0
_08081008: .4byte 0x000007CF
_0808100C:
	ldr r0, [r6, #0x14]
	ldr r1, [r5, #8]
	adds r0, r0, r1
	str r0, [r6, #0x14]
	asrs r0, r0, #8
	ldr r1, _08081024 @ =0x000008BB
	cmp r0, r1
	ble _0808101E
	b _080811C6
_0808101E:
	ldr r0, _08081028 @ =0x00000424
	b _080811C4
	.align 2, 0
_08081024: .4byte 0x000008BB
_08081028: .4byte 0x00000424
_0808102C:
	movs r0, #0x9f
	lsls r0, r0, #3
	strh r0, [r7, #0xc]
	movs r0, #8
	strb r0, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	strh r2, [r5, #0x18]
	b _080811C6
_0808103E:
	movs r0, #0x9f
	lsls r0, r0, #3
	strh r0, [r7, #0xc]
	movs r0, #0xc
	strb r0, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r7, #0x14]
	ldr r0, _08081080 @ =0x000004F7
	strh r0, [r3, #0xc]
	movs r0, #5
	strb r0, [r3, #0x1a]
	subs r0, #6
	strb r0, [r3, #0x1b]
	movs r0, #0xb0
	lsls r0, r0, #2
	strh r0, [r3, #0x14]
	ldr r0, [r7, #8]
	movs r1, #0x3e
	orrs r0, r1
	str r0, [r7, #8]
	ldr r0, [r3, #8]
	movs r1, #0x3f
	orrs r0, r1
	str r0, [r3, #8]
	movs r0, #0xe0
	lsls r0, r0, #2
	strh r0, [r6, #2]
	adds r0, #0xa4
	b _080811C4
	.align 2, 0
_08081080: .4byte 0x000004F7
_08081084:
	movs r0, #0
	str r0, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [r5, #0xc]
	strh r2, [r5, #0x18]
	b _080811C6
_08081092:
	ldr r0, [r6, #0x14]
	ldr r1, [r5, #8]
	adds r0, r0, r1
	str r0, [r6, #0x14]
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	adds r1, r1, r0
	str r1, [r5, #4]
	asrs r1, r1, #8
	ldr r0, _080810D8 @ =gCamera
	ldr r0, [r0, #4]
	adds r0, #0x79
	cmp r1, r0
	bge _080810B0
	b _080811C6
_080810B0:
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x91
	str r1, [sp]
	movs r1, #0x40
	movs r2, #0
	bl CreateScreenShake
	movs r0, #0x9f
	lsls r0, r0, #2
	bl m4aSongNumStart  @ VOICE__EGGMAN__OW
	ldr r0, _080810DC @ =0xFFFFFC00
	str r0, [r5, #0xc]
	movs r0, #0x8c
	lsls r0, r0, #3
	b _080811C4
	.align 2, 0
_080810D8: .4byte gCamera
_080810DC: .4byte 0xFFFFFC00
_080810E0:
	ldr r0, [r5, #0xc]
	adds r0, #0x2a
	str r0, [r5, #0xc]
	ldr r1, [r5, #4]
	adds r1, r1, r0
	str r1, [r5, #4]
	ldrh r1, [r6, #2]
	movs r0, #0xc0
	lsls r0, r0, #2
	cmp r1, r0
	beq _080810FC
	adds r0, r1, #0
	subs r0, #8
	strh r0, [r6, #2]
_080810FC:
	ldr r1, [r5, #4]
	asrs r1, r1, #8
	ldr r0, _08081118 @ =gCamera
	ldr r0, [r0, #4]
	adds r0, #0x79
	cmp r1, r0
	blt _080811C6
	ldr r0, [r5, #0xc]
	cmp r0, #0
	ble _080811C6
	movs r0, #0
	str r0, [r5, #0xc]
	strh r4, [r5, #0x18]
	b _080811C6
	.align 2, 0
_08081118: .4byte gCamera
_0808111C:
	ldr r0, _08081124 @ =0x000004E2
	strh r0, [r5, #0x14]
	subs r0, #0x6e
	b _080811C4
	.align 2, 0
_08081124: .4byte 0x000004E2
_08081128:
	ldrh r0, [r5, #0x14]
	subs r0, #1
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080811C6
	ldr r0, _08081138 @ =0x00000492
	b _080811C4
	.align 2, 0
_08081138: .4byte 0x00000492
_0808113C:
	ldrh r0, [r6, #2]
	adds r0, #8
	ldr r3, _08081150 @ =0x000003FF
	adds r1, r3, #0
	ands r0, r1
	strh r0, [r6, #2]
	cmp r0, #0
	bne _080811C6
	movs r0, #0xb4
	b _08081164
	.align 2, 0
_08081150: .4byte 0x000003FF
_08081154:
	ldrh r0, [r5, #0x14]
	subs r0, #1
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080811C6
	movs r0, #0x96
	lsls r0, r0, #1
_08081164:
	strh r0, [r5, #0x14]
	strh r2, [r5, #0x18]
	b _080811C6
_0808116A:
	ldrh r0, [r5, #0x14]
	subs r0, #1
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080811C6
	ldr r0, _0808117C @ =0x00000492
	b _080811C4
	.align 2, 0
_0808117C: .4byte 0x00000492
_08081180:
	ldrh r0, [r5, #0x14]
	subs r0, #1
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080811C6
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r5, #8]
	ldr r0, _080811A4 @ =0xFFFFFC00
	str r0, [r5, #0xc]
	ldr r0, _080811A8 @ =0x000004A6
	strh r0, [r5, #0x18]
	movs r0, #0x70
	bl m4aSongNumStart
	b _080811C6
	.align 2, 0
_080811A4: .4byte 0xFFFFFC00
_080811A8: .4byte 0x000004A6
_080811AC:
	ldr r0, [r6, #0x14]
	ldr r1, [r5, #8]
	adds r0, r0, r1
	str r0, [r6, #0x14]
	ldr r0, [r5, #4]
	ldr r1, [r5, #0xc]
	adds r0, r0, r1
	str r0, [r5, #4]
	cmp r0, #0
	bge _080811C6
	movs r0, #0xfa
	lsls r0, r0, #3
_080811C4:
	strh r0, [r5, #0x18]
_080811C6:
	ldr r0, [r5]
	mov r4, sb
	str r0, [r4]
	ldr r0, [r5, #4]
	str r0, [r4, #4]
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80811E0
sub_80811E0: @ 0x080811E0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x4c
	adds r3, r5, #0
	adds r3, #0xd8
	ldrh r1, [r4, #0x18]
	ldr r2, _08081218 @ =0x000003F2
	cmp r1, r2
	bne _080811F6
	b _0808148E
_080811F6:
	cmp r1, r2
	bgt _08081260
	cmp r1, #0x32
	bne _08081200
	b _08081380
_08081200:
	cmp r1, #0x32
	bgt _0808122A
	cmp r1, #0x14
	bne _0808120A
	b _08081328
_0808120A:
	cmp r1, #0x14
	bgt _0808121C
	cmp r1, #0
	beq _08081300
	cmp r1, #0xa
	beq _08081308
	b _080816B8
	.align 2, 0
_08081218: .4byte 0x000003F2
_0808121C:
	cmp r1, #0x1e
	bne _08081222
	b _08081340
_08081222:
	cmp r1, #0x28
	bne _08081228
	b _0808135E
_08081228:
	b _080816B8
_0808122A:
	cmp r1, #0x50
	bne _08081230
	b _080813EC
_08081230:
	cmp r1, #0x50
	bgt _08081242
	cmp r1, #0x3c
	bne _0808123A
	b _080813A4
_0808123A:
	cmp r1, #0x46
	bne _08081240
	b _080813CC
_08081240:
	b _080816B8
_08081242:
	cmp r1, #0x64
	bne _08081248
	b _08081464
_08081248:
	cmp r1, #0x64
	bgt _08081254
	cmp r1, #0x5a
	bne _08081252
	b _08081420
_08081252:
	b _080816B8
_08081254:
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp r1, r0
	bne _0808125E
	b _08081486
_0808125E:
	b _080816B8
_08081260:
	ldr r6, _08081290 @ =0x0000042E
	cmp r1, r6
	bne _08081268
	b _08081598
_08081268:
	cmp r1, r6
	bgt _080812AC
	movs r2, #0x82
	lsls r2, r2, #3
	cmp r1, r2
	bne _08081276
	b _08081504
_08081276:
	cmp r1, r2
	bgt _08081294
	movs r0, #0xff
	lsls r0, r0, #2
	cmp r1, r0
	bne _08081284
	b _080814B0
_08081284:
	adds r0, #0xa
	cmp r1, r0
	bne _0808128C
	b _080814CC
_0808128C:
	b _080816B8
	.align 2, 0
_08081290: .4byte 0x0000042E
_08081294:
	ldr r0, _080812A8 @ =0x0000041A
	cmp r1, r0
	bne _0808129C
	b _08081544
_0808129C:
	adds r0, #0xa
	cmp r1, r0
	bne _080812A4
	b _08081570
_080812A4:
	b _080816B8
	.align 2, 0
_080812A8: .4byte 0x0000041A
_080812AC:
	ldr r6, _080812CC @ =0x00000442
	cmp r1, r6
	bne _080812B4
	b _0808163C
_080812B4:
	cmp r1, r6
	bgt _080812D4
	ldr r0, _080812D0 @ =0x00000433
	cmp r1, r0
	bne _080812C0
	b _080815E6
_080812C0:
	adds r0, #5
	cmp r1, r0
	bne _080812C8
	b _08081600
_080812C8:
	b _080816B8
	.align 2, 0
_080812CC: .4byte 0x00000442
_080812D0: .4byte 0x00000433
_080812D4:
	ldr r2, _080812EC @ =0x00000456
	cmp r1, r2
	bne _080812DC
	b _0808168C
_080812DC:
	cmp r1, r2
	bgt _080812F4
	ldr r0, _080812F0 @ =0x0000044C
	cmp r1, r0
	bne _080812E8
	b _08081664
_080812E8:
	b _080816B8
	.align 2, 0
_080812EC: .4byte 0x00000456
_080812F0: .4byte 0x0000044C
_080812F4:
	movs r0, #0x8c
	lsls r0, r0, #3
	cmp r1, r0
	bne _080812FE
	b _080816A8
_080812FE:
	b _080816B8
_08081300:
	movs r0, #0x4b
	strh r0, [r4, #0x14]
	movs r0, #0xa
	b _080816B6
_08081308:
	ldrh r0, [r4, #0x14]
	subs r0, #1
	strh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _08081318
	b _080816B8
_08081318:
	str r0, [r4, #8]
	ldr r0, _08081324 @ =0xFFFFFF00
	str r0, [r4, #0xc]
	movs r0, #0x14
	b _080816B6
	.align 2, 0
_08081324: .4byte 0xFFFFFF00
_08081328:
	ldr r0, [r4, #4]
	ldr r1, [r4, #0xc]
	adds r0, r0, r1
	str r0, [r4, #4]
	asrs r0, r0, #8
	cmp r0, #0x8e
	ble _08081338
	b _080816B8
_08081338:
	movs r0, #0x28
	strh r0, [r4, #0x14]
	movs r0, #0x1e
	b _080816B6
_08081340:
	ldrh r0, [r4, #0x14]
	subs r0, #1
	strh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _08081350
	b _080816B8
_08081350:
	movs r0, #0xc0
	lsls r0, r0, #1
	str r0, [r4, #8]
	str r1, [r4, #0xc]
	movs r0, #0x28
	strh r0, [r4, #0x18]
	b _080814E6
_0808135E:
	ldr r0, [r5, #0x4c]
	ldr r1, [r4, #8]
	adds r0, r0, r1
	str r0, [r5, #0x4c]
	asrs r0, r0, #8
	ldr r1, _0808137C @ =0x00000819
	cmp r0, r1
	bgt _08081370
	b _080816B8
_08081370:
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [r4, #8]
	movs r0, #0x32
	b _080816B6
	.align 2, 0
_0808137C: .4byte 0x00000819
_08081380:
	ldr r0, [r5, #0x4c]
	ldr r1, [r4, #8]
	adds r0, r0, r1
	str r0, [r5, #0x4c]
	asrs r0, r0, #8
	ldr r1, _080813A0 @ =0x000008F2
	cmp r0, r1
	bgt _08081392
	b _080816B8
_08081392:
	movs r0, #0
	str r0, [r4, #8]
	movs r0, #0x80
	str r0, [r4, #0xc]
	movs r0, #0x3c
	strh r0, [r4, #0x14]
	b _080816B6
	.align 2, 0
_080813A0: .4byte 0x000008F2
_080813A4:
	ldr r0, [r4, #4]
	ldr r1, [r4, #0xc]
	adds r0, r0, r1
	str r0, [r4, #4]
	asrs r0, r0, #8
	cmp r0, #0xb3
	bgt _080813B4
	b _080816B8
_080813B4:
	ldr r0, _080813C8 @ =0x0000050B
	strh r0, [r3, #0xc]
	movs r0, #1
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0x14
	strh r0, [r4, #0x14]
	movs r0, #0x46
	b _080816B6
	.align 2, 0
_080813C8: .4byte 0x0000050B
_080813CC:
	ldrh r0, [r4, #0x14]
	subs r0, #1
	strh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080813DA
	b _080816B8
_080813DA:
	movs r0, #0x3c
	strh r0, [r4, #0x14]
	movs r0, #0x50
	strh r0, [r4, #0x18]
	ldr r0, _080813E8 @ =0x00000506
	b _08081586
	.align 2, 0
_080813E8: .4byte 0x00000506
_080813EC:
	ldrh r0, [r4, #0x14]
	subs r0, #1
	strh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080813FA
	b _080816B8
_080813FA:
	movs r0, #0x96
	strh r0, [r4, #0x14]
	movs r0, #0x5a
	strh r0, [r4, #0x18]
	ldr r0, _08081418 @ =0x0000050B
	strh r0, [r3, #0xc]
	movs r0, #2
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	ldr r0, [r3, #8]
	ldr r1, _0808141C @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r3, #8]
	b _080816B8
	.align 2, 0
_08081418: .4byte 0x0000050B
_0808141C: .4byte 0xFFFFFBFF
_08081420:
	ldrh r0, [r4, #0x14]
	subs r0, #1
	strh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0808142E
	b _080816B8
_0808142E:
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [r4, #8]
	ldr r0, _0808145C @ =0xFFFFFC00
	str r0, [r4, #0xc]
	ldr r0, _08081460 @ =0x0000050A
	strh r0, [r3, #0xc]
	movs r0, #0
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r3, #8]
	movs r0, #0x64
	strh r0, [r4, #0x18]
	movs r0, #0x74      @ SE_JUMP
	bl m4aSongNumStart
	b _080816B8
	.align 2, 0
_0808145C: .4byte 0xFFFFFC00
_08081460: .4byte 0x0000050A
_08081464:
	ldr r0, [r4, #0xc]
	adds r0, #0x2a
	str r0, [r4, #0xc]
	ldr r0, [r5, #0x4c]
	ldr r1, [r4, #8]
	adds r0, r0, r1
	str r0, [r5, #0x4c]
	ldr r0, [r4, #4]
	ldr r1, [r4, #0xc]
	adds r0, r0, r1
	str r0, [r4, #4]
	asrs r0, r0, #8
	cmp r0, #0xf9
	bgt _08081482
	b _080816B8
_08081482:
	movs r0, #0xc8
	b _080816B6
_08081486:
	movs r0, #0x4b
	strh r0, [r4, #0x14]
	strh r2, [r4, #0x18]
	b _080816B8
_0808148E:
	ldrh r0, [r4, #0x14]
	subs r0, #1
	strh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _0808149E
	b _080816B8
_0808149E:
	str r0, [r4, #8]
	ldr r0, _080814AC @ =0xFFFFFF00
	str r0, [r4, #0xc]
	movs r0, #0xff
	lsls r0, r0, #2
	b _080816B6
	.align 2, 0
_080814AC: .4byte 0xFFFFFF00
_080814B0:
	ldr r0, [r4, #4]
	ldr r1, [r4, #0xc]
	adds r0, r0, r1
	str r0, [r4, #4]
	asrs r0, r0, #8
	cmp r0, #0x8e
	ble _080814C0
	b _080816B8
_080814C0:
	movs r0, #0x28
	strh r0, [r4, #0x14]
	ldr r0, _080814C8 @ =0x00000406
	b _080816B6
	.align 2, 0
_080814C8: .4byte 0x00000406
_080814CC:
	ldrh r0, [r4, #0x14]
	subs r0, #1
	strh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _080814DC
	b _080816B8
_080814DC:
	movs r0, #0xc0
	lsls r0, r0, #1
	str r0, [r4, #8]
	str r1, [r4, #0xc]
	strh r2, [r4, #0x18]
_080814E6:
	ldr r0, _08081500 @ =0x0000050A
	strh r0, [r3, #0xc]
	movs r0, #0
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r3, #8]
	b _080816B8
	.align 2, 0
_08081500: .4byte 0x0000050A
_08081504:
	ldr r0, [r5, #0x4c]
	ldr r1, [r4, #8]
	adds r0, r0, r1
	str r0, [r5, #0x4c]
	asrs r1, r0, #8
	ldr r0, _08081528 @ =0x000008AB
	cmp r1, r0
	ble _08081530
	movs r0, #0
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r4, #0xc]
	movs r0, #0x3c
	strh r0, [r4, #0x14]
	ldr r0, _0808152C @ =0x0000041A
	b _080816B6
	.align 2, 0
_08081528: .4byte 0x000008AB
_0808152C: .4byte 0x0000041A
_08081530:
	ldr r0, _08081540 @ =0x0000076B
	cmp r1, r0
	bgt _08081538
	b _080816B8
_08081538:
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r4, #8]
	b _080816B8
	.align 2, 0
_08081540: .4byte 0x0000076B
_08081544:
	ldr r0, [r4, #4]
	ldr r1, [r4, #0xc]
	adds r0, r0, r1
	str r0, [r4, #4]
	asrs r0, r0, #8
	cmp r0, #0xb3
	bgt _08081554
	b _080816B8
_08081554:
	ldr r0, _08081568 @ =0x0000050B
	strh r0, [r3, #0xc]
	movs r0, #1
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0x14
	strh r0, [r4, #0x14]
	ldr r0, _0808156C @ =0x00000424
	b _080816B6
	.align 2, 0
_08081568: .4byte 0x0000050B
_0808156C: .4byte 0x00000424
_08081570:
	ldrh r0, [r4, #0x14]
	subs r0, #1
	strh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0808157E
	b _080816B8
_0808157E:
	movs r0, #0xb4
	strh r0, [r4, #0x14]
	strh r6, [r4, #0x18]
	ldr r0, _08081594 @ =0x00000509
_08081586:
	strh r0, [r3, #0xc]
	movs r0, #0
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	b _080816B8
	.align 2, 0
_08081594: .4byte 0x00000509
_08081598:
	ldrh r0, [r4, #0x14]
	subs r1, r0, #1
	strh r1, [r4, #0x14]
	lsls r0, r1, #0x10
	cmp r0, #0
	bne _080815D4
	movs r0, #0xa
	strh r0, [r4, #0x14]
	ldr r0, _080815C8 @ =0x00000433
	strh r0, [r4, #0x18]
	adds r0, #0xd8
	strh r0, [r3, #0xc]
	movs r0, #0
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	ldr r0, [r3, #8]
	ldr r1, _080815CC @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r0, _080815D0 @ =0x00000223
	bl m4aSongNumStart
	b _080816B8
	.align 2, 0
_080815C8: .4byte 0x00000433
_080815CC: .4byte 0xFFFFFBFF
_080815D0: .4byte 0x00000223
_080815D4:
	movs r0, #0x3f
	ands r1, r0
	cmp r1, #0
	bne _080816B8
	movs r0, #0x89
	lsls r0, r0, #2
	bl m4aSongNumStart
	b _080816B8
_080815E6:
	ldrh r0, [r4, #0x14]
	subs r0, #1
	strh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080816B8
	ldr r0, _080815FC @ =0xFFFFFC00
	str r0, [r4, #8]
	movs r0, #0x87
	lsls r0, r0, #3
	b _080816B6
	.align 2, 0
_080815FC: .4byte 0xFFFFFC00
_08081600:
	ldr r0, [r5, #0x4c]
	ldr r1, [r4, #8]
	adds r0, r0, r1
	str r0, [r5, #0x4c]
	asrs r0, r0, #8
	ldr r1, _08081630 @ =0x0000085C
	cmp r0, r1
	bgt _080816B8
	movs r1, #0
	movs r2, #0
	ldr r0, _08081634 @ =0x00000509
	strh r0, [r3, #0xc]
	strb r1, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	str r2, [r4, #8]
	str r2, [r4, #0xc]
	movs r0, #0x78
	strh r0, [r4, #0x14]
	strh r6, [r4, #0x18]
	ldr r0, _08081638 @ =0x00000223
	bl m4aSongNumStop
	b _080816B8
	.align 2, 0
_08081630: .4byte 0x0000085C
_08081634: .4byte 0x00000509
_08081638: .4byte 0x00000223
_0808163C:
	ldrh r0, [r4, #0x14]
	subs r0, #1
	strh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080816B8
	ldr r0, _0808165C @ =0x000005CA
	strh r0, [r3, #0xc]
	movs r0, #0
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0xb4
	strh r0, [r4, #0x14]
	ldr r0, _08081660 @ =0x0000044C
	b _080816B6
	.align 2, 0
_0808165C: .4byte 0x000005CA
_08081660: .4byte 0x0000044C
_08081664:
	ldrh r0, [r4, #0x14]
	subs r0, #1
	strh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080816B8
	ldr r0, _08081688 @ =0x000005CA
	strh r0, [r3, #0xc]
	movs r0, #1
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0x80
	rsbs r0, r0, #0
	str r0, [r4, #0xc]
	strh r2, [r4, #0x18]
	b _080816B8
	.align 2, 0
_08081688: .4byte 0x000005CA
_0808168C:
	ldr r0, [r4, #4]
	ldr r1, [r4, #0xc]
	adds r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080816A4 @ =gBldRegs
	ldrh r0, [r0, #4]
	cmp r0, #0x10
	bne _080816B8
	movs r0, #0x8c
	lsls r0, r0, #3
	b _080816B6
	.align 2, 0
_080816A4: .4byte gBldRegs
_080816A8:
	ldr r0, [r5, #0x10]
	bl VramFree
	movs r0, #0
	str r0, [r5, #0x10]
	movs r0, #0xfa
	lsls r0, r0, #3
_080816B6:
	strh r0, [r4, #0x18]
_080816B8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80816C0
sub_80816C0: @ 0x080816C0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r4, #0
	ldr r6, _08081708 @ =gCamera
_080816C8:
	lsls r3, r4, #2
	adds r3, r3, r4
	lsls r0, r3, #3
	adds r0, #0x7c
	adds r0, r5, r0
	lsls r3, r3, #2
	adds r1, r5, #0
	adds r1, #0x2c
	adds r1, r1, r3
	ldr r1, [r1]
	asrs r1, r1, #8
	ldr r2, [r6]
	subs r1, r1, r2
	strh r1, [r0, #0x10]
	adds r1, r5, #0
	adds r1, #0x30
	adds r1, r1, r3
	ldr r1, [r1]
	asrs r1, r1, #8
	ldr r2, [r6, #4]
	subs r1, r1, r2
	strh r1, [r0, #0x12]
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _080816C8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08081708: .4byte gCamera

	thumb_func_start sub_808170C
sub_808170C: @ 0x0808170C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x7c]
	cmp r0, #0
	beq _0808171E
	bl VramFree
	movs r0, #0
	str r0, [r4, #0x7c]
_0808171E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8081724
sub_8081724: @ 0x08081724
	push {r4, r5, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r2, r0, #2
	adds r0, r3, #0
	adds r0, #0x38
	adds r5, r0, r2
	ldr r0, [r5]
	cmp r0, #0
	bgt _08081782
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r4, r0, #3
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r3, r0
	adds r1, r1, r4
	adds r0, r3, #0
	adds r0, #0x30
	adds r0, r0, r2
	ldr r1, [r1]
	ldr r0, [r0]
	subs r1, r1, r0
	adds r0, r1, #0
	cmp r1, #0
	bge _08081764
	rsbs r0, r1, #0
_08081764:
	asrs r1, r0, #8
	cmp r1, #0x13
	bgt _08081782
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r3, r1
	adds r0, r0, r4
	ldr r0, [r0]
	str r0, [r5]
	adds r1, r3, r2
	movs r0, #0x64
	strh r0, [r1, #0x3e]
	ldr r0, _08081788 @ =0x0000023A
	bl m4aSongNumStart
_08081782:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08081788: .4byte 0x0000023A

	thumb_func_start sub_808178C
sub_808178C: @ 0x0808178C
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r0, _080817D8 @ =Task_ExtraChaosEmeraldsInit
	movs r1, #0xe0
	lsls r1, r1, #1
	movs r2, #0x88
	lsls r2, r2, #6
	ldr r3, _080817DC @ =TaskDestructor_ExtraChaosEmeralds
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	movs r1, #0
	strb r5, [r4]
	movs r0, #1
	strh r0, [r4, #0x10]
	strh r1, [r4, #0x12]
	strh r1, [r4, #0xc]
	strh r1, [r4, #0x16]
	strh r1, [r4, #0x14]
	movs r0, #0x1c
	bl VramMalloc
	str r0, [r4, #0x18]
	adds r0, r4, #0
	bl InitChaosEmeraldSprites
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080817D8: .4byte Task_ExtraChaosEmeraldsInit
_080817DC: .4byte TaskDestructor_ExtraChaosEmeralds

	thumb_func_start TaskDestructor_HyperEggRobo
TaskDestructor_HyperEggRobo: @ 0x080817E0
	push {r4, lr}
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _080817F8
	bl VramFree
	movs r0, #0
	str r0, [r4, #0x18]
_080817F8:
	adds r0, r4, #0
	bl sub_8081AA0
	adds r0, r4, #0
	bl sub_8081A40
	adds r0, r4, #0
	bl sub_808170C
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8081810
sub_8081810: @ 0x08081810
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0
	ldr r0, _08081834 @ =0x00000125
	strh r0, [r4, #0x30]
	strh r1, [r4, #0x18]
	strh r1, [r4, #0x1a]
	ldr r5, _08081838 @ =sub_808183C
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08081834: .4byte 0x00000125
_08081838: .4byte sub_808183C

	thumb_func_start sub_808183C
sub_808183C: @ 0x0808183C
	bx lr
	.align 2, 0

	thumb_func_start sub_8081840
sub_8081840: @ 0x08081840
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	strh r0, [r4, #0x1a]
	movs r0, #0x96
	strh r0, [r4, #0x30]
	ldr r5, _08081868 @ =PlayerCB_8081894
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08081868: .4byte PlayerCB_8081894

	thumb_func_start sub_808186C
sub_808186C: @ 0x0808186C
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	strh r0, [r4, #0x1a]
	strh r0, [r4, #0x30]
	ldr r5, _08081890 @ =PlayerCB_8081894
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08081890: .4byte PlayerCB_8081894

	thumb_func_start PlayerCB_8081894
PlayerCB_8081894: @ 0x08081894
	bx lr
	.align 2, 0

	thumb_func_start sub_8081898
sub_8081898: @ 0x08081898
	push {r4, r5, r6, lr}
	ldr r6, _080818F4 @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r4, [r5, #0x20]
	adds r0, r5, #0
	bl sub_807C14C
	adds r0, r5, #0
	bl sub_80816C0
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	ldr r1, _080818F8 @ =0x0000066C
	cmp r0, r1
	ble _080818EC
	ldr r1, _080818FC @ =gCamera
	movs r0, #0x10
	str r0, [r1, #0x10]
	adds r0, r5, #0
	bl sub_807BCCC
	adds r0, r5, #0
	bl sub_807BEF0
	adds r0, r5, #0
	bl sub_807D6C4
	adds r0, r5, #0
	bl sub_807CBC8
	movs r1, #0
	strb r1, [r5, #0x10]
	movs r0, #1
	strh r0, [r5, #8]
	strh r1, [r5, #0xc]
	ldr r1, [r6]
	ldr r0, _08081900 @ =sub_807B9B8
	str r0, [r1, #8]
_080818EC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080818F4: .4byte gCurTask
_080818F8: .4byte 0x0000066C
_080818FC: .4byte gCamera
_08081900: .4byte sub_807B9B8

	thumb_func_start Task_HyperEggRoboInit
Task_HyperEggRoboInit: @ 0x08081904
	push {r4, r5, lr}
	ldr r5, _08081930 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_807C14C
	adds r0, r4, #0
	bl sub_80816C0
	ldr r0, [r4, #4]
	ldrb r0, [r0]
	cmp r0, #3
	bne _08081934
	ldr r0, [r5]
	bl TaskDestroy
	b _0808194E
	.align 2, 0
_08081930: .4byte gCurTask
_08081934:
	bl sub_8079FFC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08081948
	ldr r1, [r5]
	ldr r0, _08081944 @ =Task_8081958
	b _0808194C
	.align 2, 0
_08081944: .4byte Task_8081958
_08081948:
	ldr r1, [r5]
	ldr r0, _08081954 @ =Task_807B808
_0808194C:
	str r0, [r1, #8]
_0808194E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08081954: .4byte Task_807B808

	thumb_func_start Task_8081958
Task_8081958: @ 0x08081958
	push {r4, r5, lr}
	ldr r5, _08081978 @ =gCurTask
	ldr r2, [r5]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #4]
	ldrb r0, [r0]
	cmp r0, #3
	bne _0808197C
	adds r0, r2, #0
	bl TaskDestroy
	b _080819B2
	.align 2, 0
_08081978: .4byte gCurTask
_0808197C:
	adds r0, r4, #0
	bl sub_807C14C
	adds r0, r4, #0
	bl sub_80816C0
	ldr r0, [r4, #4]
	ldrb r0, [r0]
	cmp r0, #2
	bne _080819B2
	bl sub_807A074
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080819B2
	movs r0, #0
	bl sub_807FB7C
	movs r0, #0xa
	bl sub_807FB7C
	movs r0, #0xb
	bl sub_807FB7C
	ldr r1, [r5]
	ldr r0, _080819B8 @ =Task_80819BC
	str r0, [r1, #8]
_080819B2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080819B8: .4byte Task_80819BC

	thumb_func_start Task_80819BC
Task_80819BC: @ 0x080819BC
	push {r4, r5, lr}
	ldr r5, _080819DC @ =gCurTask
	ldr r2, [r5]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #4]
	ldrb r0, [r0]
	cmp r0, #3
	bne _080819E0
	adds r0, r2, #0
	bl TaskDestroy
	b _08081A06
	.align 2, 0
_080819DC: .4byte gCurTask
_080819E0:
	adds r0, r4, #0
	bl sub_807C14C
	adds r0, r4, #0
	bl sub_80816C0
	ldr r0, [r4, #4]
	ldrb r0, [r0]
	cmp r0, #2
	bne _08081A06
	movs r0, #5
	strh r0, [r4, #8]
	movs r0, #0xa
	strh r0, [r4, #0xc]
	bl SetFixedRandomIfTimeAttackMode
	ldr r1, [r5]
	ldr r0, _08081A0C @ =Task_807B808
	str r0, [r1, #8]
_08081A06:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08081A0C: .4byte Task_807B808

	thumb_func_start sub_8081A10
sub_8081A10: @ 0x08081A10
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	strh r0, [r4, #0x1a]
	movs r0, #0x96
	strh r0, [r4, #0x30]
	ldr r5, _08081A38 @ =PlayerCB_80819BC
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08081A38: .4byte PlayerCB_80819BC

	thumb_func_start PlayerCB_80819BC
PlayerCB_80819BC: @ 0x08081A3C
	bx lr
	.align 2, 0

	thumb_func_start sub_8081A40
sub_8081A40: @ 0x08081A40
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x94
	lsls r0, r0, #2
	adds r4, r5, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _08081A58
	bl VramFree
	movs r0, #0
	str r0, [r4]
_08081A58:
	movs r0, #0x8a
	lsls r0, r0, #2
	adds r4, r5, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _08081A6C
	bl VramFree
	movs r0, #0
	str r0, [r4]
_08081A6C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8081A74
sub_8081A74: @ 0x08081A74
	push {lr}
	lsls r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r1, #0
	bne _08081A98
	movs r1, #0x8a
	lsls r1, r1, #2
	adds r3, r0, r1
	ldr r1, _08081A9C @ =gUnknown_080D5C38
	lsls r2, r2, #2
	adds r0, r2, r1
	ldrh r0, [r0]
	strh r0, [r3, #0xc]
	adds r1, #2
	adds r2, r2, r1
	ldrh r0, [r2]
	strb r0, [r3, #0x1a]
_08081A98:
	pop {r0}
	bx r0
	.align 2, 0
_08081A9C: .4byte gUnknown_080D5C38

	thumb_func_start sub_8081AA0
sub_8081AA0: @ 0x08081AA0
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r4, r5, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _08081AB8
	bl VramFree
	movs r0, #0
	str r0, [r4]
_08081AB8:
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r4, r5, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _08081ACC
	bl VramFree
	movs r0, #0
	str r0, [r4]
_08081ACC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

@; For Final Boss
	thumb_func_start UpdateHandAnimation
UpdateHandAnimation: @ 0x08081AD4
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r1, #0
	beq _08081AE8
	cmp r1, #1
	beq _08081AF8
	b _08081B10
_08081AE8:
	movs r1, #0x9e
	lsls r1, r1, #2
	adds r3, r0, r1
	ldr r1, _08081AF4 @ =sBossFinalAnimsHands
	b _08081B00
	.align 2, 0
_08081AF4: .4byte sBossFinalAnimsHands
_08081AF8:
	movs r1, #0xa8
	lsls r1, r1, #2
	adds r3, r0, r1
	ldr r1, _08081B14 @ =sBossFinalAnimsHands+0x18
_08081B00:
	lsls r2, r2, #2
	adds r0, r2, r1
	ldrh r0, [r0]
	strh r0, [r3, #0xc]
	adds r1, #2
	adds r2, r2, r1
	ldrh r0, [r2]
	strb r0, [r3, #0x1a]
_08081B10:
	pop {r0}
	bx r0
	.align 2, 0
_08081B14: .4byte sBossFinalAnimsHands+0x18

	thumb_func_start sub_8081B18
sub_8081B18: @ 0x08081B18
	bx lr
	.align 2, 0

	thumb_func_start sub_8081B1C
sub_8081B1C: @ 0x08081B1C
	bx lr
	.align 2, 0

	thumb_func_start sub_8081B20
sub_8081B20: @ 0x08081B20
	bx lr
	.align 2, 0

@ Unused?
	thumb_func_start sub_8081B24
sub_8081B24: @ 0x08081B24
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov sb, r0
	mov r8, r1
	adds r7, r2, #0
	ldr r0, _08081B90 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	movs r6, #0
_08081B42:
	lsls r0, r6, #2
	adds r1, r5, #0
	adds r1, #0x20
	adds r1, r1, r0
	ldr r4, [r1]
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _08081BA4
	ldr r0, [r4, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08081B94
	adds r0, r5, #0
	adds r0, #0x7c
	ldr r1, [r4, #0x6c]
	cmp r1, r0
	beq _08081B7C
	adds r0, #0x28
	cmp r1, r0
	beq _08081B7C
	adds r0, #0x28
	cmp r1, r0
	beq _08081B7C
	adds r0, #0x28
	cmp r1, r0
	bne _08081BA4
_08081B7C:
	str r4, [sp]
	mov r0, sb
	mov r2, r8
	asrs r1, r2, #8
	asrs r2, r7, #8
	movs r3, #0
	bl sub_8020CE0
	b _08081BA4
	.align 2, 0
_08081B90: .4byte gCurTask
_08081B94:
	str r4, [sp]
	mov r0, sb
	mov r2, r8
	asrs r1, r2, #8
	asrs r2, r7, #8
	movs r3, #0
	bl sub_8020CE0
_08081BA4:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _08081B42
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8081BBC
sub_8081BBC: @ 0x08081BBC
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2]
	cmp r0, #0
	beq _08081BCE
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	b _08081BD0
_08081BCE:
	movs r1, #0
_08081BD0:
	ldr r0, _08081BE4 @ =gUnknown_080D5C48
	adds r0, r1, r0
	ldrb r0, [r0]
	movs r1, #0
	strh r0, [r2, #8]
	strh r1, [r2, #0xc]
	movs r0, #5
	strb r0, [r2, #1]
	pop {r0}
	bx r0
	.align 2, 0
_08081BE4: .4byte gUnknown_080D5C48

	thumb_func_start sub_8081BE8
sub_8081BE8: @ 0x08081BE8
	push {lr}
	adds r2, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0
	beq _08081BFA
	cmp r1, #1
	beq _08081BFE
	b _08081C02
_08081BFA:
	movs r0, #0xa
	b _08081C00
_08081BFE:
	movs r0, #0x64
_08081C00:
	strh r0, [r2, #0xc]
_08081C02:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8081C08
sub_8081C08: @ 0x08081C08
	movs r1, #0x3c
	strh r1, [r0, #0x14]
	movs r1, #0x8a
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r2, _08081C20 @ =gUnknown_080D5C38
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldrh r1, [r2, #2]
	strb r1, [r0, #0x1a]
	bx lr
	.align 2, 0
_08081C20: .4byte gUnknown_080D5C38

	thumb_func_start TaskDestructor_ExtraChaosEmeralds
TaskDestructor_ExtraChaosEmeralds: @ 0x08081C24
	push {r4, lr}
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r1, _08081C48 @ =gStageData
	movs r0, #5
	strb r0, [r1, #4]
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _08081C42
	bl VramFree
	movs r0, #0
	str r0, [r4, #0x18]
_08081C42:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08081C48: .4byte gStageData

	thumb_func_start TaskDestructor_8081C4C
TaskDestructor_8081C4C: @ 0x08081C4C
	push {r4, lr}
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _08081C64
	bl VramFree
	movs r0, #0
	str r0, [r4, #8]
_08081C64:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _08081C6E
	bl VramFree
_08081C6E:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _08081C78
	bl VramFree
_08081C78:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

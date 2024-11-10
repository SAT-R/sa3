.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ Start of sprite.c
	thumb_func_start sa2__sub_8004418
sa2__sub_8004418: @ 0x080BF30C
	push {r4, r5, r6, lr}
	sub sp, #8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	movs r6, #0
	ldr r1, _080BF33C @ =unkFractions
	mov r0, sp
	movs r2, #8
	bl memcpy
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	lsls r0, r5, #0x10
	asrs r2, r0, #0x10
	adds r0, r1, #0
	orrs r0, r2
	cmp r0, #0
	bne _080BF340
	movs r0, #1
	rsbs r0, r0, #0
	b _080BF3C2
	.align 2, 0
_080BF33C: .4byte unkFractions
_080BF340:
	cmp r1, #0
	bgt _080BF34C
	rsbs r0, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r6, #4
_080BF34C:
	cmp r2, #0
	bgt _080BF35C
	rsbs r0, r2, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r6, #2
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_080BF35C:
	lsls r0, r4, #0x10
	asrs r2, r0, #0x10
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	cmp r2, r1
	blt _080BF37C
	lsls r0, r1, #0x17
	lsrs r5, r0, #0x10
	cmp r2, #0
	bne _080BF374
	adds r2, r5, #0
	b _080BF39A
_080BF374:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	adds r1, r2, #0
	b _080BF392
_080BF37C:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r0, r2, #0x17
	lsrs r4, r0, #0x10
	cmp r1, #0
	bne _080BF38E
	adds r2, r4, #0
	b _080BF39A
_080BF38E:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
_080BF392:
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080BF39A:
	mov r0, sp
	adds r3, r0, r6
	ldrb r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080BF3B4
	movs r1, #0x80
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
_080BF3B4:
	ldrb r1, [r3]
	lsls r1, r1, #7
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
_080BF3C2:
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start numToASCII
numToASCII: @ 0x080BF3CC
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	movs r2, #0
	movs r5, #0xf0
	lsls r5, r5, #8
_080BF3DA:
	adds r0, r3, #0
	ands r0, r5
	lsrs r0, r0, #0xc
	cmp r0, #9
	bls _080BF3EA
	adds r1, r4, r2
	adds r0, #0x57
	b _080BF3EE
_080BF3EA:
	adds r1, r4, r2
	adds r0, #0x30
_080BF3EE:
	strb r0, [r1]
	lsls r0, r3, #0x14
	lsrs r3, r0, #0x10
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _080BF3DA
	adds r1, r4, r2
	movs r0, #0
	strb r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Base10DigitsToHexNibbles
Base10DigitsToHexNibbles: @ 0x080BF40C
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r6, #0
	movs r5, #0
_080BF416:
	adds r0, r4, #0
	movs r1, #0xa
	bl Div
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #1
	subs r1, r4, r1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r0, r5, #2
	lsls r1, r0
	orrs r6, r1
	lsls r0, r6, #0x10
	lsrs r6, r0, #0x10
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _080BF416
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start UpdateSpriteAnimation
UpdateSpriteAnimation: @ 0x080BF44C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r2, [r4, #0x1a]
	ldrb r0, [r4, #0x1b]
	cmp r0, r2
	bne _080BF460
	ldrh r0, [r4, #0x18]
	ldrh r1, [r4, #0xc]
	cmp r0, r1
	beq _080BF474
_080BF460:
	movs r1, #0
	strb r2, [r4, #0x1b]
	ldrh r0, [r4, #0xc]
	strh r0, [r4, #0x18]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	ldr r0, [r4, #8]
	ldr r1, _080BF484 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r4, #8]
_080BF474:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080BF488
	movs r0, #0
	b _080BF530
	.align 2, 0
_080BF484: .4byte 0xFFFFBFFF
_080BF488:
	ldrh r1, [r4, #0x16]
	movs r2, #0x16
	ldrsh r0, [r4, r2]
	cmp r0, #0
	ble _080BF4A0
	ldrb r0, [r4, #0x1c]
	lsls r0, r0, #4
	subs r0, r1, r0
	strh r0, [r4, #0x16]
	b _080BF52E
_080BF49C:
	adds r0, r1, #0
	b _080BF530
_080BF4A0:
	ldr r0, _080BF538 @ =gRefSpriteTables
	ldr r1, [r0]
	ldrh r0, [r4, #0xc]
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldrb r0, [r4, #0x1a]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r5, [r0]
	ldrh r0, [r4, #0xe]
	lsls r0, r0, #2
	adds r3, r5, r0
	ldr r0, [r3]
	cmp r0, #0
	bge _080BF50A
	ldr r6, _080BF53C @ =animCmdTable
_080BF4C4:
	mvns r0, r0
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r2, [r0]
	adds r0, r3, #0
	adds r1, r4, #0
	bl _call_via_r2
	adds r1, r0, #0
	cmp r1, #1
	beq _080BF4FE
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080BF49C
	ldr r0, _080BF538 @ =gRefSpriteTables
	ldr r1, [r0]
	ldrh r0, [r4, #0xc]
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldrb r0, [r4, #0x1a]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #0
	strh r0, [r4, #0xe]
	adds r5, r1, #0
_080BF4FE:
	ldrh r0, [r4, #0xe]
	lsls r0, r0, #2
	adds r3, r5, r0
	ldr r0, [r3]
	cmp r0, #0
	blt _080BF4C4
_080BF50A:
	ldr r0, [r3]
	lsls r0, r0, #8
	ldrh r1, [r4, #0x16]
	adds r0, r0, r1
	ldrb r1, [r4, #0x1c]
	lsls r1, r1, #4
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldr r0, [r3, #4]
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x13
	orrs r0, r1
	str r0, [r4, #8]
	ldrh r0, [r4, #0xe]
	adds r0, #2
	strh r0, [r4, #0xe]
_080BF52E:
	movs r0, #1
_080BF530:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080BF538: .4byte gRefSpriteTables
_080BF53C: .4byte animCmdTable

	thumb_func_start sub_80BF540
sub_80BF540: @ 0x080BF540
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	movs r3, #0
	mov sb, r3
	ldrb r0, [r5, #0x1a]
	strb r0, [r5, #0x1b]
	ldrh r0, [r5, #0xc]
	strh r0, [r5, #0x18]
	strh r3, [r5, #0xe]
	strh r3, [r5, #0x16]
	ldr r0, [r5, #8]
	ldr r1, _080BF5C4 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r5, #8]
	ldr r0, _080BF5C8 @ =gRefSpriteTables
	ldr r1, [r0]
	ldrh r0, [r5, #0xc]
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldrb r0, [r5, #0x1a]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r7, [r0]
	cmp r6, #0
	blt _080BF644
_080BF582:
	ldrh r0, [r5, #0xe]
	lsls r0, r0, #2
	adds r4, r7, r0
	ldr r1, [r4]
	cmp r1, #0
	bge _080BF5F8
	ldr r0, _080BF5CC @ =animCmdTable
	mov r8, r0
_080BF592:
	movs r0, #3
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080BF59C
	mov sb, r3
_080BF59C:
	mvns r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	str r3, [sp]
	bl _call_via_r2
	adds r1, r0, #0
	ldr r3, [sp]
	cmp r1, #1
	beq _080BF5EC
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080BF5D0
	adds r0, r1, #0
	b _080BF646
	.align 2, 0
_080BF5C4: .4byte 0xFFFFBFFF
_080BF5C8: .4byte gRefSpriteTables
_080BF5CC: .4byte animCmdTable
_080BF5D0:
	ldr r0, _080BF624 @ =gRefSpriteTables
	ldr r1, [r0]
	ldrh r0, [r5, #0xc]
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldrb r0, [r5, #0x1a]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #0
	strh r0, [r5, #0xe]
	adds r7, r1, #0
_080BF5EC:
	ldrh r0, [r5, #0xe]
	lsls r0, r0, #2
	adds r4, r7, r0
	ldr r1, [r4]
	cmp r1, #0
	blt _080BF592
_080BF5F8:
	ldr r0, [r4]
	lsls r0, r0, #8
	strh r0, [r5, #0x16]
	ldr r0, [r4]
	subs r6, r6, r0
	lsls r0, r6, #8
	rsbs r0, r0, #0
	strh r0, [r5, #0x16]
	mov r0, sb
	cmp r0, #0
	beq _080BF628
	cmp r6, #0
	ble _080BF628
	adds r0, r6, #0
	mov r1, sb
	str r3, [sp]
	bl Mod
	adds r6, r0, #0
	ldr r3, [sp]
	b _080BF62C
	.align 2, 0
_080BF624: .4byte gRefSpriteTables
_080BF628:
	ldr r0, [r4]
	adds r3, r3, r0
_080BF62C:
	ldr r0, [r4, #4]
	str r0, [r5, #4]
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #0x13
	orrs r0, r1
	str r0, [r5, #8]
	ldrh r0, [r5, #0xe]
	adds r0, #2
	strh r0, [r5, #0xe]
	cmp r6, #0
	bge _080BF582
_080BF644:
	movs r0, #1
_080BF646:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start animCmd_GetTiles
animCmd_GetTiles: @ 0x080BF654
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	adds r4, r1, #0
	ldrh r0, [r4, #0xe]
	adds r0, #3
	strh r0, [r4, #0xe]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0xc
	ands r0, r1
	cmp r0, #0
	bne _080BF6CE
	ldr r1, [r2, #4]
	cmp r1, #0
	bge _080BF688
	ldr r0, _080BF684 @ =gRefSpriteTables
	ldr r0, [r0]
	lsls r1, r1, #6
	ldr r0, [r0, #0x14]
	adds r5, r0, r1
	ldr r0, [r2, #8]
	lsls r0, r0, #0x16
	b _080BF696
	.align 2, 0
_080BF684: .4byte gRefSpriteTables
_080BF688:
	ldr r0, _080BF6D8 @ =gRefSpriteTables
	ldr r0, [r0]
	lsls r1, r1, #5
	ldr r0, [r0, #0x10]
	adds r5, r0, r1
	ldr r0, [r2, #8]
	lsls r0, r0, #0x15
_080BF696:
	lsrs r6, r0, #0x10
	ldr r3, _080BF6DC @ =gVramGraphicsCopyQueue
	ldr r2, _080BF6E0 @ =gVramGraphicsCopyQueueIndex
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	str r5, [r0]
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r3, #4
	adds r0, r0, r1
	ldr r1, [r4]
	str r1, [r0]
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	strh r6, [r0, #8]
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r2]
_080BF6CE:
	movs r0, #1
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080BF6D8: .4byte gRefSpriteTables
_080BF6DC: .4byte gVramGraphicsCopyQueue
_080BF6E0: .4byte gVramGraphicsCopyQueueIndex

	thumb_func_start sub_80BF6E4
sub_80BF6E4: @ 0x080BF6E4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r3, r1, #0
	ldrh r0, [r3, #0xe]
	adds r0, #3
	strh r0, [r3, #0xe]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	bne _080BF764
	ldr r1, [r5, #4]
	ldr r6, _080BF72C @ =gFlags
	ldr r4, [r6]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r4
	cmp r0, #0
	beq _080BF734
	ldr r0, _080BF730 @ =gRefSpriteTables
	ldr r0, [r0]
	lsls r1, r1, #5
	ldr r0, [r0, #0xc]
	adds r0, r0, r1
	ldrb r1, [r3, #0x1f]
	lsls r1, r1, #4
	ldrb r2, [r5, #0xa]
	adds r1, r1, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldrh r2, [r5, #8]
	bl sub_80C4564
	b _080BF764
	.align 2, 0
_080BF72C: .4byte gFlags
_080BF730: .4byte gRefSpriteTables
_080BF734:
	ldr r2, _080BF76C @ =0x040000D4
	ldr r0, _080BF770 @ =gRefSpriteTables
	ldr r0, [r0]
	lsls r1, r1, #5
	ldr r0, [r0, #0xc]
	adds r0, r0, r1
	str r0, [r2]
	ldrb r0, [r3, #0x1f]
	lsls r0, r0, #4
	ldrh r1, [r5, #0xa]
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _080BF774 @ =gObjPalette
	adds r0, r0, r1
	str r0, [r2, #4]
	ldrh r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r0, #2
	orrs r4, r0
	str r4, [r6]
_080BF764:
	movs r0, #1
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080BF76C: .4byte 0x040000D4
_080BF770: .4byte gRefSpriteTables
_080BF774: .4byte gObjPalette

	thumb_func_start sub_80BF778
sub_80BF778: @ 0x080BF778
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	ldr r5, [r3, #4]
	movs r0, #0xf
	ands r5, r0
	ldrh r0, [r4, #0xe]
	adds r0, #3
	strh r0, [r4, #0xe]
	ldr r1, _080BF7C0 @ =0x040000D4
	adds r0, r3, #4
	str r0, [r1]
	lsls r2, r5, #3
	adds r0, r2, #0
	adds r0, #0x20
	adds r0, r4, r0
	str r0, [r1, #4]
	ldr r0, _080BF7C4 @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrb r0, [r3, #8]
	ldrb r1, [r3, #0xa]
	cmp r0, r1
	bne _080BF7C8
	ldrb r0, [r3, #9]
	ldrb r3, [r3, #0xb]
	cmp r0, r3
	bne _080BF7C8
	adds r0, r4, #0
	adds r0, #0x20
	adds r0, r0, r2
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0]
	b _080BF82C
	.align 2, 0
_080BF7C0: .4byte 0x040000D4
_080BF7C4: .4byte 0x84000002
_080BF7C8:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080BF7FA
	lsls r2, r5, #3
	adds r2, r4, r2
	adds r3, r2, #0
	adds r3, #0x25
	adds r2, #0x27
	ldrb r1, [r3]
	ldrb r0, [r2]
	eors r1, r0
	strb r1, [r3]
	ldrb r0, [r2]
	eors r0, r1
	strb r0, [r2]
	ldrb r1, [r3]
	eors r0, r1
	rsbs r0, r0, #0
	strb r0, [r3]
	ldrb r0, [r2]
	rsbs r0, r0, #0
	strb r0, [r2]
_080BF7FA:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080BF82C
	lsls r2, r5, #3
	adds r2, r4, r2
	adds r3, r2, #0
	adds r3, #0x24
	adds r2, #0x26
	ldrb r1, [r3]
	ldrb r0, [r2]
	eors r1, r0
	strb r1, [r3]
	ldrb r0, [r2]
	eors r0, r1
	strb r0, [r2]
	ldrb r1, [r3]
	eors r0, r1
	rsbs r0, r0, #0
	strb r0, [r3]
	ldrb r0, [r2]
	rsbs r0, r0, #0
	strb r0, [r2]
_080BF82C:
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_80BF834
sub_80BF834: @ 0x080BF834
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	mov r8, r1
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0xb
	ldr r0, _080BF8EC @ =gUnknown_03006246
	adds r6, r6, r0
	movs r0, #0x80
	lsls r0, r0, #9
	mov sl, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r8, r1
	bl Div
	ldr r7, _080BF8F0 @ =gSineTable
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r4, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r1, [r1]
	mov sb, r1
	mov r1, sb
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	mov sb, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r2, sb
	muls r2, r0, r2
	adds r0, r2, #0
	asrs r0, r0, #8
	strh r0, [r6]
	mov r0, sl
	mov r1, r8
	bl Div
	lsls r4, r4, #1
	adds r4, r4, r7
	ldrh r1, [r4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r6, #8]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	mov r0, sl
	adds r1, r5, #0
	bl Div
	movs r2, #0
	ldrsh r1, [r4, r2]
	rsbs r1, r1, #0
	asrs r1, r1, #6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r6, #0x10]
	mov r0, sl
	adds r1, r5, #0
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	asrs r0, r0, #8
	strh r0, [r6, #0x18]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BF8EC: .4byte gUnknown_03006246
_080BF8F0: .4byte gSineTable

	thumb_func_start TransformSprite
TransformSprite: @ 0x080BF8F4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	str r0, [sp, #0x24]
	adds r7, r1, #0
	ldr r2, [r0, #4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne _080BF910
	b _080BFB7E
_080BF910:
	lsrs r0, r2, #0x1c
	cmp r0, #0
	bne _080BF934
	ldr r0, _080BF930 @ =gRefSpriteTables
	ldr r0, [r0]
	ldr r3, [sp, #0x24]
	ldrh r1, [r3, #0xc]
	ldr r0, [r0, #4]
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r6, r1, r0
	b _080BF948
	.align 2, 0
_080BF930: .4byte gRefSpriteTables
_080BF934:
	ldr r0, _080BFAE8 @ =gRefSpriteTables
	ldr r1, [r0]
	ldr r5, [sp, #0x24]
	ldrh r0, [r5, #0xc]
	ldr r1, [r1, #4]
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r1, r2, #4
	ldr r0, [r0]
	adds r6, r0, r1
_080BF948:
	add r2, sp, #0x20
	ldr r1, [sp, #0x24]
	ldr r0, [r1, #8]
	movs r1, #0x1f
	ands r0, r1
	strh r0, [r2]
	ldrh r4, [r2]
	lsls r4, r4, #5
	ldr r0, _080BFAEC @ =gUnknown_03006246
	adds r4, r4, r0
	subs r2, #0x18
	str r2, [sp, #0x28]
	ldr r2, _080BFAF0 @ =gSineTable
	ldrh r0, [r7]
	ldr r1, _080BFAF4 @ =0x000003FF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r1, r3
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldr r5, [sp, #0x28]
	strh r0, [r5]
	movs r0, #0xa
	add r0, sp
	mov sl, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	mov r1, sl
	strh r0, [r1]
	add r2, sp, #0xc
	mov r8, r2
	ldrh r0, [r7, #2]
	strh r0, [r2]
	movs r3, #0xe
	add r3, sp
	mov sb, r3
	ldrh r0, [r7, #4]
	strh r0, [r3]
	movs r5, #0x80
	lsls r5, r5, #9
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl Div
	ldr r2, [sp, #0x28]
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4]
	mov r3, r8
	ldrh r1, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl Div
	mov r2, sl
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4, #8]
	mov r3, sb
	ldrh r1, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl Div
	mov r2, sl
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	rsbs r1, r1, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	mov r3, sb
	ldrh r1, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl Div
	ldr r5, [sp, #0x28]
	ldrh r1, [r5]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	ldrh r0, [r7, #2]
	movs r2, #2
	ldrsh r1, [r7, r2]
	str r1, [sp, #0x2c]
	cmp r1, #0
	bge _080BFA38
	rsbs r0, r0, #0
	mov r3, r8
	strh r0, [r3]
_080BFA38:
	movs r5, #4
	ldrsh r0, [r7, r5]
	ldrh r1, [r7, #4]
	mov ip, r1
	cmp r0, #0
	bge _080BFA4C
	mov r2, ip
	rsbs r0, r2, #0
	mov r3, sb
	strh r0, [r3]
_080BFA4C:
	mov r2, sp
	ldr r5, [sp, #0x28]
	ldrh r1, [r5]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r3, r8
	ldrh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r2]
	mov r4, sp
	adds r4, #2
	mov r5, sl
	ldrh r1, [r5]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	rsbs r1, r1, #0
	ldrh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4]
	add r3, sp, #4
	ldrh r1, [r5]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r2, sb
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r3]
	mov r2, sp
	adds r2, #6
	ldr r5, [sp, #0x28]
	ldrh r1, [r5]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r5, sb
	ldrh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r2]
	add r0, sp, #0x18
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	adds r0, #2
	movs r1, #0
	strh r1, [r0]
	add r0, sp, #0x1c
	strh r1, [r0]
	adds r0, #2
	movs r5, #0x80
	lsls r5, r5, #1
	strh r5, [r0]
	movs r1, #6
	ldrsh r0, [r7, r1]
	str r0, [sp, #0x10]
	movs r5, #8
	ldrsh r0, [r7, r5]
	str r0, [sp, #0x14]
	adds r7, r4, #0
	mov r8, r3
	mov sb, r2
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	ble _080BFAF8
	ldrh r4, [r6, #8]
	ldrh r2, [r6, #4]
	b _080BFB04
	.align 2, 0
_080BFAE8: .4byte gRefSpriteTables
_080BFAEC: .4byte gUnknown_03006246
_080BFAF0: .4byte gSineTable
_080BFAF4: .4byte 0x000003FF
_080BFAF8:
	ldrh r1, [r6, #4]
	ldrh r0, [r6, #8]
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r2, r1, #0
_080BFB04:
	mov r1, ip
	lsls r0, r1, #0x10
	cmp r0, #0
	ble _080BFB12
	ldrh r3, [r6, #0xa]
	ldrh r5, [r6, #6]
	b _080BFB1E
_080BFB12:
	ldrh r1, [r6, #6]
	ldrh r0, [r6, #0xa]
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r5, r1, #0
_080BFB1E:
	mov r0, sp
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsrs r2, r2, #1
	subs r4, r4, r2
	adds r1, r0, #0
	muls r1, r4, r1
	ldrh r0, [r7]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	lsrs r5, r5, #1
	subs r3, r3, r5
	muls r0, r3, r0
	adds r1, r1, r0
	lsls r2, r2, #8
	adds r1, r1, r2
	asrs r1, r1, #8
	ldr r0, [sp, #0x10]
	subs r0, r0, r1
	str r0, [sp, #0x10]
	mov r2, r8
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	muls r1, r4, r1
	mov r2, sb
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r3, r0
	adds r1, r1, r0
	lsls r5, r5, #8
	adds r1, r1, r5
	asrs r1, r1, #8
	ldr r0, [sp, #0x14]
	subs r0, r0, r1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	ldr r3, [sp, #0x24]
	strh r0, [r3, #0x10]
	ldr r0, [sp, #0x14]
	strh r0, [r3, #0x12]
_080BFB7E:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start UnusedTransform
UnusedTransform: @ 0x080BFB90
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	str r0, [sp, #0x24]
	adds r7, r1, #0
	ldr r2, [r0, #4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne _080BFBAC
	b _080BFF18
_080BFBAC:
	lsrs r0, r2, #0x1c
	cmp r0, #0
	bne _080BFBD4
	ldr r0, _080BFBD0 @ =gRefSpriteTables
	ldr r0, [r0]
	ldr r3, [sp, #0x24]
	ldrh r1, [r3, #0xc]
	ldr r0, [r0, #4]
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	mov sb, r1
	b _080BFBEA
	.align 2, 0
_080BFBD0: .4byte gRefSpriteTables
_080BFBD4:
	ldr r0, _080BFE68 @ =gRefSpriteTables
	ldr r1, [r0]
	ldr r4, [sp, #0x24]
	ldrh r0, [r4, #0xc]
	ldr r1, [r1, #4]
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r1, r2, #4
	ldr r0, [r0]
	adds r0, r0, r1
	mov sb, r0
_080BFBEA:
	add r2, sp, #0x20
	ldr r5, [sp, #0x24]
	ldr r0, [r5, #8]
	movs r1, #0x1f
	ands r0, r1
	strh r0, [r2]
	ldrh r4, [r2]
	lsls r4, r4, #5
	ldr r0, _080BFE6C @ =gUnknown_03006246
	adds r4, r4, r0
	mov r6, sp
	adds r6, #8
	str r6, [sp, #0x28]
	ldrh r0, [r7]
	ldr r2, _080BFE70 @ =gUnknown_03002C54
	ldrh r1, [r2]
	adds r0, r0, r1
	ldr r2, _080BFE74 @ =0x000003FF
	ands r0, r2
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #1
	ldr r5, _080BFE78 @ =gSineTable
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	strh r0, [r6]
	movs r6, #0xa
	add r6, sp
	mov r8, r6
	ldrh r0, [r7]
	ldr r3, _080BFE70 @ =gUnknown_03002C54
	ldrh r1, [r3]
	adds r0, r0, r1
	ands r0, r2
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	strh r0, [r6]
	add r6, sp, #0xc
	movs r5, #2
	ldrsh r1, [r7, r5]
	ldr r2, _080BFE7C @ =gUnknown_03002AF0
	ldrh r0, [r2]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r6]
	movs r3, #0xe
	add r3, sp
	mov sl, r3
	movs r5, #4
	ldrsh r1, [r7, r5]
	ldr r2, _080BFE80 @ =gUnknown_03006844
	ldrh r0, [r2]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r3]
	movs r5, #0x80
	lsls r5, r5, #9
	ldrh r1, [r6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl Div
	ldr r3, [sp, #0x28]
	ldrh r1, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4]
	ldrh r1, [r6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl Div
	mov r2, r8
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4, #8]
	mov r3, sl
	ldrh r1, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl Div
	mov r2, r8
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	rsbs r1, r1, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	mov r3, sl
	ldrh r1, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl Div
	ldr r5, [sp, #0x28]
	ldrh r1, [r5]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	movs r1, #2
	ldrsh r0, [r7, r1]
	str r0, [sp, #0x2c]
	cmp r0, #0
	bge _080BFD00
	movs r2, #2
	ldrsh r0, [r7, r2]
	rsbs r0, r0, #0
	ldr r3, _080BFE7C @ =gUnknown_03002AF0
	ldrh r1, [r3]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r6]
_080BFD00:
	movs r4, #4
	ldrsh r0, [r7, r4]
	ldr r5, _080BFE80 @ =gUnknown_03006844
	ldrh r3, [r5]
	ldrh r2, [r7, #4]
	mov r1, sp
	strh r2, [r1, #0x34]
	cmp r0, #0
	bge _080BFD24
	movs r4, #4
	ldrsh r0, [r7, r4]
	rsbs r0, r0, #0
	muls r0, r3, r0
	asrs r0, r0, #8
	mov r5, sl
	strh r0, [r5]
	ldr r0, _080BFE80 @ =gUnknown_03006844
	ldrh r3, [r0]
_080BFD24:
	mov r2, sp
	ldr r4, [sp, #0x28]
	ldrh r1, [r4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r0, [r6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r2]
	mov r5, sp
	adds r5, #2
	str r5, [sp, #0x30]
	mov r0, r8
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	rsbs r1, r1, #0
	ldrh r0, [r6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r5]
	add r1, sp, #4
	mov ip, r1
	mov r2, r8
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r4, sl
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	mov r5, ip
	strh r0, [r5]
	mov r6, sp
	adds r6, #6
	str r6, [sp, #0x38]
	ldr r0, [sp, #0x28]
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r6]
	add r5, sp, #0x18
	ldr r1, _080BFE70 @ =gUnknown_03002C54
	ldrh r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	ldr r4, _080BFE78 @ =gSineTable
	adds r0, r0, r4
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldr r6, _080BFE7C @ =gUnknown_03002AF0
	ldrh r1, [r6]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r5]
	mov r2, sp
	adds r2, #0x1a
	ldr r1, _080BFE70 @ =gUnknown_03002C54
	ldrh r0, [r1]
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r4, #0
	ldrsh r0, [r0, r4]
	rsbs r0, r0, #0
	asrs r0, r0, #6
	ldrh r1, [r6]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r2]
	add r4, sp, #0x1c
	ldr r6, _080BFE70 @ =gUnknown_03002C54
	ldrh r0, [r6]
	lsls r0, r0, #1
	ldr r1, _080BFE78 @ =gSineTable
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r3, r0
	asrs r0, r0, #8
	strh r0, [r4]
	mov r3, sp
	adds r3, #0x1e
	ldrh r0, [r6]
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldr r6, _080BFE80 @ =gUnknown_03006844
	ldrh r1, [r6]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r3]
	ldrh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r5, #6
	ldrsh r1, [r7, r5]
	muls r1, r0, r1
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r6, #8
	ldrsh r2, [r7, r6]
	muls r0, r2, r0
	adds r1, r1, r0
	ldr r0, _080BFE84 @ =gUnknown_03002C5C
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #8
	adds r1, r1, r0
	asrs r1, r1, #8
	str r1, [sp, #0x10]
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r4, #6
	ldrsh r1, [r7, r4]
	muls r1, r0, r1
	ldrh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r5, #8
	ldrsh r2, [r7, r5]
	muls r0, r2, r0
	adds r1, r1, r0
	ldr r0, _080BFE88 @ =gUnknown_03003C0C
	movs r6, #0
	ldrsh r0, [r0, r6]
	lsls r0, r0, #8
	adds r1, r1, r0
	asrs r1, r1, #8
	str r1, [sp, #0x14]
	ldr r7, [sp, #0x30]
	mov r8, ip
	ldr r6, [sp, #0x38]
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	ble _080BFE8C
	mov r1, sb
	ldrh r4, [r1, #8]
	ldrh r2, [r1, #4]
	b _080BFE9A
	.align 2, 0
_080BFE68: .4byte gRefSpriteTables
_080BFE6C: .4byte gUnknown_03006246
_080BFE70: .4byte gUnknown_03002C54
_080BFE74: .4byte 0x000003FF
_080BFE78: .4byte gSineTable
_080BFE7C: .4byte gUnknown_03002AF0
_080BFE80: .4byte gUnknown_03006844
_080BFE84: .4byte gUnknown_03002C5C
_080BFE88: .4byte gUnknown_03003C0C
_080BFE8C:
	mov r2, sb
	ldrh r1, [r2, #4]
	ldrh r0, [r2, #8]
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r2, r1, #0
_080BFE9A:
	mov r3, sp
	ldrh r3, [r3, #0x34]
	lsls r0, r3, #0x10
	cmp r0, #0
	ble _080BFEAC
	mov r5, sb
	ldrh r3, [r5, #0xa]
	ldrh r5, [r5, #6]
	b _080BFEBA
_080BFEAC:
	mov r0, sb
	ldrh r1, [r0, #6]
	ldrh r0, [r0, #0xa]
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r5, r1, #0
_080BFEBA:
	mov r0, sp
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsrs r2, r2, #1
	subs r4, r4, r2
	adds r1, r0, #0
	muls r1, r4, r1
	ldrh r0, [r7]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	lsrs r5, r5, #1
	subs r3, r3, r5
	muls r0, r3, r0
	adds r1, r1, r0
	lsls r2, r2, #8
	adds r1, r1, r2
	asrs r1, r1, #8
	ldr r0, [sp, #0x10]
	subs r0, r0, r1
	str r0, [sp, #0x10]
	mov r1, r8
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	muls r1, r4, r1
	ldrh r0, [r6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r3, r0
	adds r1, r1, r0
	lsls r5, r5, #8
	adds r1, r1, r5
	asrs r1, r1, #8
	ldr r0, [sp, #0x14]
	subs r0, r0, r1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x24]
	strh r0, [r2, #0x10]
	ldr r0, [sp, #0x14]
	strh r0, [r2, #0x12]
_080BFF18:
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80BFF28
sub_80BFF28: @ 0x080BFF28
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	str r0, [sp, #0x24]
	adds r6, r1, #0
	ldr r2, [r0, #4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne _080BFF44
	b _080C032C
_080BFF44:
	lsrs r0, r2, #0x1c
	cmp r0, #0
	bne _080BFF6C
	ldr r0, _080BFF68 @ =gRefSpriteTables
	ldr r0, [r0]
	ldr r3, [sp, #0x24]
	ldrh r1, [r3, #0xc]
	ldr r0, [r0, #4]
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	mov sb, r1
	b _080BFF82
	.align 2, 0
_080BFF68: .4byte gRefSpriteTables
_080BFF6C:
	ldr r0, _080C0278 @ =gRefSpriteTables
	ldr r1, [r0]
	ldr r4, [sp, #0x24]
	ldrh r0, [r4, #0xc]
	ldr r1, [r1, #4]
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r1, r2, #4
	ldr r0, [r0]
	adds r0, r0, r1
	mov sb, r0
_080BFF82:
	add r2, sp, #0x20
	ldr r5, [sp, #0x24]
	ldr r0, [r5, #8]
	movs r1, #0x1f
	ands r0, r1
	strh r0, [r2]
	ldrh r4, [r2]
	lsls r4, r4, #5
	ldr r0, _080C027C @ =gUnknown_03006246
	adds r4, r4, r0
	mov r7, sp
	adds r7, #8
	str r7, [sp, #0x28]
	ldrh r0, [r6]
	ldr r2, _080C0280 @ =gUnknown_03002C54
	ldrh r1, [r2]
	adds r0, r0, r1
	ldr r2, _080C0284 @ =0x000003FF
	ands r0, r2
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #1
	ldr r5, _080C0288 @ =gSineTable
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	strh r0, [r7]
	movs r7, #0xa
	add r7, sp
	mov r8, r7
	ldrh r0, [r6]
	ldr r3, _080C0280 @ =gUnknown_03002C54
	ldrh r1, [r3]
	adds r0, r0, r1
	ands r0, r2
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	strh r0, [r7]
	add r7, sp, #0xc
	movs r5, #2
	ldrsh r1, [r6, r5]
	ldr r2, _080C028C @ =gUnknown_03002AF0
	ldrh r0, [r2]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r7]
	movs r3, #0xe
	add r3, sp
	mov sl, r3
	movs r5, #4
	ldrsh r1, [r6, r5]
	ldr r2, _080C0290 @ =gUnknown_03006844
	ldrh r0, [r2]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r3]
	movs r5, #0x80
	lsls r5, r5, #9
	ldrh r1, [r7]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl Div
	ldr r3, [sp, #0x28]
	ldrh r1, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4]
	ldrh r1, [r7]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl Div
	mov r2, r8
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4, #8]
	mov r3, sl
	ldrh r1, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl Div
	mov r2, r8
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	rsbs r1, r1, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	mov r3, sl
	ldrh r1, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl Div
	ldr r5, [sp, #0x28]
	ldrh r1, [r5]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	movs r1, #2
	ldrsh r0, [r6, r1]
	str r0, [sp, #0x2c]
	cmp r0, #0
	bge _080C0098
	movs r2, #2
	ldrsh r0, [r6, r2]
	rsbs r0, r0, #0
	ldr r3, _080C028C @ =gUnknown_03002AF0
	ldrh r1, [r3]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r7]
_080C0098:
	movs r4, #4
	ldrsh r0, [r6, r4]
	ldr r5, _080C0290 @ =gUnknown_03006844
	ldrh r4, [r5]
	ldrh r2, [r6, #4]
	mov r1, sp
	strh r2, [r1, #0x3c]
	cmp r0, #0
	bge _080C00BA
	movs r3, #4
	ldrsh r0, [r6, r3]
	rsbs r0, r0, #0
	muls r0, r4, r0
	asrs r0, r0, #8
	mov r4, sl
	strh r0, [r4]
	ldrh r4, [r5]
_080C00BA:
	mov r2, sp
	ldr r5, [sp, #0x28]
	ldrh r1, [r5]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r0, [r7]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r2]
	mov r0, sp
	adds r0, #2
	str r0, [sp, #0x30]
	mov r2, r8
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	rsbs r1, r1, #0
	ldrh r0, [r7]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	ldr r3, [sp, #0x30]
	strh r0, [r3]
	mov r5, sp
	adds r5, #4
	str r5, [sp, #0x34]
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r2, sl
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r5]
	mov r3, sp
	adds r3, #6
	str r3, [sp, #0x38]
	ldr r5, [sp, #0x28]
	ldrh r1, [r5]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r3]
	add r0, sp, #0x18
	mov r8, r0
	ldr r1, _080C0280 @ =gUnknown_03002C54
	ldrh r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	ldr r3, _080C0288 @ =gSineTable
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldr r5, _080C028C @ =gUnknown_03002AF0
	ldrh r1, [r5]
	adds r2, r0, #0
	muls r2, r1, r2
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	ldrh r0, [r7]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _080C0294 @ =gUnknown_03006848
	movs r5, #0
	ldrsh r1, [r3, r5]
	muls r0, r1, r0
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	muls r0, r2, r0
	asrs r0, r0, #8
	mov r1, r8
	strh r0, [r1]
	movs r2, #0x1a
	add r2, sp
	mov ip, r2
	ldr r5, _080C0280 @ =gUnknown_03002C54
	ldrh r0, [r5]
	lsls r0, r0, #1
	ldr r1, _080C0288 @ =gSineTable
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	rsbs r0, r0, #0
	asrs r0, r0, #6
	ldr r5, _080C028C @ =gUnknown_03002AF0
	ldrh r1, [r5]
	adds r2, r0, #0
	muls r2, r1, r2
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	ldrh r0, [r7]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r7, #0
	ldrsh r1, [r3, r7]
	muls r0, r1, r0
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	muls r0, r2, r0
	asrs r0, r0, #8
	mov r1, ip
	strh r0, [r1]
	add r5, sp, #0x1c
	ldr r2, _080C0280 @ =gUnknown_03002C54
	ldrh r0, [r2]
	lsls r0, r0, #1
	ldr r7, _080C0288 @ =gSineTable
	adds r0, r0, r7
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	adds r2, r0, #0
	muls r2, r4, r2
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	mov r1, sl
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r4, #0
	ldrsh r1, [r3, r4]
	muls r0, r1, r0
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	muls r0, r2, r0
	asrs r0, r0, #8
	strh r0, [r5]
	mov r4, sp
	adds r4, #0x1e
	ldr r7, _080C0280 @ =gUnknown_03002C54
	ldrh r0, [r7]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r2, _080C0288 @ =gSineTable
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldr r7, _080C0290 @ =gUnknown_03006844
	ldrh r1, [r7]
	adds r2, r0, #0
	muls r2, r1, r2
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	mov r1, sl
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r7, #0
	ldrsh r1, [r3, r7]
	muls r0, r1, r0
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	muls r0, r2, r0
	asrs r0, r0, #8
	strh r0, [r4]
	mov r1, r8
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #6
	ldrsh r1, [r6, r2]
	muls r1, r0, r1
	mov r3, ip
	ldrh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r7, #8
	ldrsh r2, [r6, r7]
	muls r0, r2, r0
	adds r1, r1, r0
	ldr r0, _080C0298 @ =gUnknown_03002C5C
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #8
	adds r1, r1, r0
	asrs r1, r1, #8
	str r1, [sp, #0x10]
	ldrh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #6
	ldrsh r1, [r6, r3]
	muls r1, r0, r1
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r4, #8
	ldrsh r2, [r6, r4]
	muls r0, r2, r0
	adds r1, r1, r0
	ldr r0, _080C029C @ =gUnknown_03003C0C
	movs r5, #0
	ldrsh r0, [r0, r5]
	lsls r0, r0, #8
	adds r1, r1, r0
	asrs r1, r1, #8
	str r1, [sp, #0x14]
	ldr r6, [sp, #0x30]
	ldr r7, [sp, #0x34]
	ldr r0, [sp, #0x38]
	mov r8, r0
	ldr r1, [sp, #0x2c]
	cmp r1, #0
	ble _080C02A0
	mov r2, sb
	ldrh r4, [r2, #8]
	ldrh r2, [r2, #4]
	b _080C02AE
	.align 2, 0
_080C0278: .4byte gRefSpriteTables
_080C027C: .4byte gUnknown_03006246
_080C0280: .4byte gUnknown_03002C54
_080C0284: .4byte 0x000003FF
_080C0288: .4byte gSineTable
_080C028C: .4byte gUnknown_03002AF0
_080C0290: .4byte gUnknown_03006844
_080C0294: .4byte gUnknown_03006848
_080C0298: .4byte gUnknown_03002C5C
_080C029C: .4byte gUnknown_03003C0C
_080C02A0:
	mov r3, sb
	ldrh r1, [r3, #4]
	ldrh r0, [r3, #8]
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r2, r1, #0
_080C02AE:
	mov r5, sp
	ldrh r5, [r5, #0x3c]
	lsls r0, r5, #0x10
	cmp r0, #0
	ble _080C02C0
	mov r0, sb
	ldrh r3, [r0, #0xa]
	ldrh r5, [r0, #6]
	b _080C02CE
_080C02C0:
	mov r3, sb
	ldrh r1, [r3, #6]
	ldrh r0, [r3, #0xa]
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r5, r1, #0
_080C02CE:
	mov r0, sp
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsrs r2, r2, #1
	subs r4, r4, r2
	adds r1, r0, #0
	muls r1, r4, r1
	ldrh r0, [r6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	lsrs r5, r5, #1
	subs r3, r3, r5
	muls r0, r3, r0
	adds r1, r1, r0
	lsls r2, r2, #8
	adds r1, r1, r2
	asrs r1, r1, #8
	ldr r0, [sp, #0x10]
	subs r0, r0, r1
	str r0, [sp, #0x10]
	ldrh r0, [r7]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	muls r1, r4, r1
	mov r4, r8
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r3, r0
	adds r1, r1, r0
	lsls r5, r5, #8
	adds r1, r1, r5
	asrs r1, r1, #8
	ldr r0, [sp, #0x14]
	subs r0, r0, r1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	ldr r5, [sp, #0x24]
	strh r0, [r5, #0x10]
	ldr r0, [sp, #0x14]
	strh r0, [r5, #0x12]
_080C032C:
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start DisplaySprite
DisplaySprite: @ 0x080C033C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	mov sb, r0
	movs r0, #0
	str r0, [sp, #0x14]
	movs r1, #0
	str r1, [sp, #0x18]
	movs r2, #0
	str r2, [sp, #0x1c]
	movs r3, #0
	str r3, [sp, #0x20]
	movs r4, #0
	str r4, [sp, #0x24]
	mov r0, sb
	ldr r4, [r0, #4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	bne _080C036C
	b _080C07C8
_080C036C:
	lsrs r0, r4, #0x1c
	cmp r0, #0
	bne _080C0394
	ldr r3, _080C0390 @ =gRefSpriteTables
	ldr r0, [r3]
	mov r1, sb
	ldrh r2, [r1, #0xc]
	ldr r0, [r0, #4]
	lsls r1, r2, #2
	adds r1, r1, r0
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	mov r8, r1
	b _080C03AA
	.align 2, 0
_080C0390: .4byte gRefSpriteTables
_080C0394:
	ldr r3, _080C0460 @ =gRefSpriteTables
	ldr r0, [r3]
	mov r1, sb
	ldrh r2, [r1, #0xc]
	ldr r1, [r0, #4]
	lsls r0, r2, #2
	adds r0, r0, r1
	lsls r1, r4, #4
	ldr r0, [r0]
	adds r0, r0, r1
	mov r8, r0
_080C03AA:
	mov r4, r8
	ldrh r0, [r4, #2]
	mov r1, sb
	strb r0, [r1, #0x1e]
	movs r0, #0x10
	ldrsh r4, [r1, r0]
	str r4, [sp]
	movs r4, #0x12
	ldrsh r1, [r1, r4]
	mov sl, r1
	mov r0, sb
	ldr r1, [r0, #8]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r1
	adds r5, r1, #0
	cmp r0, #0
	beq _080C03E4
	ldr r0, _080C0464 @ =gUnknown_03002AF4
	movs r4, #0
	ldrsh r1, [r0, r4]
	ldr r4, [sp]
	subs r4, r4, r1
	str r4, [sp]
	movs r1, #2
	ldrsh r0, [r0, r1]
	mov r4, sl
	subs r4, r4, r0
	mov sl, r4
_080C03E4:
	mov r0, r8
	ldrh r0, [r0, #4]
	str r0, [sp, #4]
	mov r1, r8
	ldrh r1, [r1, #6]
	str r1, [sp, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080C0408
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r4, #0
	ldr r4, [sp, #0x14]
	orrs r4, r0
	str r4, [sp, #0x14]
_080C0408:
	movs r0, #0x20
	ands r0, r5
	cmp r0, #0
	beq _080C0468
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r4, #0
	ldr r4, [sp, #0x14]
	orrs r4, r0
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	movs r0, #0x1f
	ands r0, r5
	lsls r0, r0, #9
	ldr r4, [sp, #0x18]
	orrs r4, r0
	str r4, [sp, #0x18]
	movs r0, #0x40
	ands r0, r5
	cmp r0, #0
	beq _080C04DE
	ldr r4, [sp, #4]
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x11
	ldr r4, [sp]
	subs r4, r4, r0
	str r4, [sp]
	ldr r4, [sp, #8]
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x11
	mov r4, sl
	subs r4, r4, r0
	mov sl, r4
	ldr r0, [sp, #4]
	lsls r0, r0, #1
	str r0, [sp, #4]
	ldr r4, [sp, #8]
	lsls r4, r4, #1
	str r4, [sp, #8]
	ldr r0, [sp, #0x14]
	orrs r0, r1
	str r0, [sp, #0x14]
	b _080C04DE
	.align 2, 0
_080C0460: .4byte gRefSpriteTables
_080C0464: .4byte gUnknown_03002AF4
_080C0468:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r5
	cmp r0, #0
	beq _080C0484
	mov r1, r8
	movs r4, #0xa
	ldrsh r0, [r1, r4]
	ldr r1, [sp, #8]
	subs r0, r1, r0
	mov r4, sl
	subs r4, r4, r0
	mov sl, r4
	b _080C0490
_080C0484:
	mov r1, r8
	movs r4, #0xa
	ldrsh r0, [r1, r4]
	mov r1, sl
	subs r1, r1, r0
	mov sl, r1
_080C0490:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r5
	cmp r0, #0
	beq _080C04AC
	mov r4, r8
	movs r1, #8
	ldrsh r0, [r4, r1]
	ldr r4, [sp, #4]
	subs r0, r4, r0
	ldr r1, [sp]
	subs r1, r1, r0
	str r1, [sp]
	b _080C04B8
_080C04AC:
	mov r4, r8
	movs r1, #8
	ldrsh r0, [r4, r1]
	ldr r4, [sp]
	subs r4, r4, r0
	str r4, [sp]
_080C04B8:
	lsrs r0, r5, #0xb
	movs r6, #1
	ands r0, r6
	mov r4, r8
	ldrh r1, [r4]
	lsls r4, r1, #0x10
	lsrs r1, r4, #0x1f
	cmp r0, r1
	beq _080C04CE
	movs r0, #1
	str r0, [sp, #0x20]
_080C04CE:
	lsrs r1, r5, #0xa
	lsrs r0, r4, #0x1e
	eors r0, r1
	ands r0, r6
	cmp r0, #0
	beq _080C04DE
	movs r1, #1
	str r1, [sp, #0x24]
_080C04DE:
	ldr r4, [sp, #4]
	cmp r4, #0
	beq _080C0506
	ldr r1, [sp]
	adds r0, r1, r4
	cmp r0, #0
	bge _080C04EE
	b _080C07C8
_080C04EE:
	cmp r1, #0xf0
	ble _080C04F4
	b _080C07C8
_080C04F4:
	ldr r0, [sp, #8]
	add r0, sl
	cmp r0, #0
	bge _080C04FE
	b _080C07C8
_080C04FE:
	mov r4, sl
	cmp r4, #0xa0
	ble _080C0506
	b _080C07C8
_080C0506:
	mov r0, sb
	ldrb r1, [r0, #0x1f]
	lsls r1, r1, #0xc
	ldr r4, [sp, #0x1c]
	adds r1, r4, r1
	lsls r1, r1, #0x10
	movs r0, #0xc0
	lsls r0, r0, #1
	ands r0, r5
	lsls r0, r0, #3
	ldr r4, [sp, #0x14]
	orrs r4, r0
	str r4, [sp, #0x14]
	movs r0, #0xc0
	lsls r0, r0, #6
	ands r0, r5
	lsls r0, r0, #0xe
	orrs r0, r1
	lsrs r0, r0, #0x10
	str r0, [sp, #0x1c]
	ldr r0, [r3]
	ldr r1, [r0, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x10]
	ldr r0, _080C06C0 @ =gUnknown_03002C00
	ldrb r0, [r0]
	mov r1, sb
	strb r0, [r1, #0x1d]
	movs r2, #0
	str r2, [sp, #0xc]
	mov r3, r8
	ldrh r3, [r3, #2]
	cmp r2, r3
	blo _080C0550
	b _080C0678
_080C0550:
	mov r4, sb
	ldrh r0, [r4, #0x14]
	movs r2, #0xf8
	lsls r2, r2, #3
	adds r1, r2, #0
	ands r0, r1
	lsrs r0, r0, #6
	bl sub_80C108C
	adds r4, r0, #0
	ldr r0, _080C06C4 @ =iwram_end
	ldr r0, [r0]
	cmp r0, r4
	bne _080C056E
	b _080C07C8
_080C056E:
	mov r3, r8
	ldrh r0, [r3]
	ldr r2, _080C06C8 @ =0x00003FFF
	adds r1, r2, #0
	ands r1, r0
	ldr r3, [sp, #0xc]
	adds r1, r1, r3
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, [sp, #0x10]
	adds r0, r1, r0
	ldr r2, _080C06CC @ =0x040000D4
	str r0, [r2]
	str r4, [r2, #4]
	ldr r0, _080C06D0 @ =0x80000003
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r1, [r4, #2]
	ldr r3, _080C06D4 @ =0x000001FF
	adds r0, r3, #0
	adds r7, r0, #0
	ands r7, r1
	ldrh r2, [r4]
	ldrb r5, [r4]
	movs r0, #0xfe
	lsls r0, r0, #8
	adds r3, r0, #0
	ands r3, r1
	strh r3, [r4, #2]
	adds r1, r0, #0
	ands r1, r2
	strh r1, [r4]
	ldr r0, [sp, #0x20]
	ldr r2, [sp, #0x24]
	orrs r0, r2
	cmp r0, #0
	beq _080C060E
	adds r0, r1, #0
	movs r1, #0xc0
	lsls r1, r1, #8
	ands r0, r1
	lsrs r2, r0, #0xc
	adds r0, r3, #0
	ands r0, r1
	lsrs r0, r0, #0xe
	orrs r2, r0
	adds r6, r2, #0
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _080C05EE
	movs r0, #0x80
	lsls r0, r0, #6
	adds r1, r0, #0
	adds r0, r3, #0
	eors r0, r1
	strh r0, [r4, #2]
	lsls r0, r2, #1
	ldr r1, _080C06D8 @ =gOamShapesSizes+1
	adds r0, r0, r1
	ldrb r0, [r0]
	ldr r2, [sp, #8]
	subs r0, r2, r0
	subs r5, r0, r5
_080C05EE:
	ldr r3, [sp, #0x24]
	cmp r3, #0
	beq _080C060E
	ldrh r0, [r4, #2]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	eors r0, r1
	strh r0, [r4, #2]
	lsls r0, r6, #1
	ldr r3, _080C06DC @ =gOamShapesSizes
	adds r0, r0, r3
	ldrb r0, [r0]
	ldr r1, [sp, #4]
	subs r0, r1, r0
	subs r7, r0, r7
_080C060E:
	mov r3, sl
	adds r2, r3, r5
	movs r0, #0xff
	ands r2, r0
	ldrh r0, [r4]
	adds r2, r2, r0
	ldr r1, [sp]
	adds r0, r1, r7
	ldr r3, _080C06D4 @ =0x000001FF
	adds r1, r3, #0
	ands r0, r1
	ldrh r1, [r4, #2]
	adds r0, r0, r1
	ldr r3, [sp, #0x14]
	orrs r2, r3
	strh r2, [r4]
	ldr r1, [sp, #0x18]
	orrs r0, r1
	strh r0, [r4, #2]
	ldrh r0, [r4, #4]
	ldr r3, [sp, #0x1c]
	orrs r3, r0
	strh r3, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r1, #0
	ands r2, r0
	cmp r2, #0
	beq _080C0654
	ldr r2, _080C06E0 @ =0x000003FF
	adds r1, r2, #0
	adds r0, r3, #0
	ands r0, r1
	adds r0, r3, r0
	strh r0, [r4, #4]
_080C0654:
	mov r3, sb
	ldr r0, [r3]
	ldr r1, _080C06E4 @ =0xF9FF0000
	adds r0, r0, r1
	lsrs r0, r0, #5
	ldrh r2, [r4, #4]
	adds r0, r0, r2
	strh r0, [r4, #4]
	ldr r0, [sp, #0xc]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xc]
	mov r3, r8
	ldrh r3, [r3, #2]
	cmp r0, r3
	bhs _080C0678
	b _080C0550
_080C0678:
	mov r4, sb
	ldr r0, [r4, #4]
	lsrs r0, r0, #0x1c
	cmp r0, #1
	beq _080C0684
	b _080C07C8
_080C0684:
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r0, r1
	cmp r0, #0
	bne _080C0692
	b _080C07C8
_080C0692:
	ldr r0, _080C06E8 @ =0xFBFFFFFF
	ands r1, r0
	str r1, [r4, #8]
	mov r1, r8
	ldr r0, [r1, #0xc]
	ldr r1, _080C06EC @ =0x00FFFFFF
	ands r1, r0
	lsrs r0, r0, #0x18
	str r0, [sp, #0x28]
	ldr r0, _080C06F0 @ =gRefSpriteTables
	ldr r2, [r0]
	lsls r1, r1, #2
	ldr r0, [r2, #0x18]
	adds r0, r0, r1
	mov sl, r0
	ldr r0, [r0]
	cmp r0, #0
	blt _080C06F4
	movs r3, #0x20
	mov ip, r3
	ldr r2, [r2, #0x10]
	b _080C06FA
	.align 2, 0
_080C06C0: .4byte gUnknown_03002C00
_080C06C4: .4byte iwram_end
_080C06C8: .4byte 0x00003FFF
_080C06CC: .4byte 0x040000D4
_080C06D0: .4byte 0x80000003
_080C06D4: .4byte 0x000001FF
_080C06D8: .4byte gOamShapesSizes+1
_080C06DC: .4byte gOamShapesSizes
_080C06E0: .4byte 0x000003FF
_080C06E4: .4byte 0xF9FF0000
_080C06E8: .4byte 0xFBFFFFFF
_080C06EC: .4byte 0x00FFFFFF
_080C06F0: .4byte gRefSpriteTables
_080C06F4:
	movs r4, #0x40
	mov ip, r4
	ldr r2, [r2, #0x14]
_080C06FA:
	mov r8, r2
	mov r3, ip
	mov r1, sl
	adds r1, #4
	mov sl, r1
	subs r1, #4
	ldm r1!, {r0}
	muls r0, r3, r0
	mov r4, r8
	adds r2, r4, r0
	mov r0, sb
	ldr r6, [r0]
	movs r7, #1
	ldr r1, [sp, #0x28]
	cmp r7, r1
	bhs _080C0790
	ldr r4, _080C0744 @ =gVramGraphicsCopyQueue
	mov sb, r4
	ldr r5, _080C0748 @ =gVramGraphicsCopyQueueIndex
_080C0720:
	mov r1, sl
	adds r1, #4
	mov sl, r1
	subs r1, #4
	ldm r1!, {r0}
	mov r4, ip
	muls r4, r0, r4
	adds r0, r4, #0
	mov r1, r8
	adds r4, r1, r0
	adds r0, r2, r3
	cmp r0, r4
	bne _080C074C
	mov r4, ip
	adds r0, r3, r4
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	b _080C0784
	.align 2, 0
_080C0744: .4byte gVramGraphicsCopyQueue
_080C0748: .4byte gVramGraphicsCopyQueueIndex
_080C074C:
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sb
	str r2, [r0]
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	mov r1, sb
	adds r1, #4
	adds r0, r0, r1
	str r6, [r0]
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sb
	strh r3, [r0, #8]
	ldrb r0, [r5]
	adds r0, #1
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r5]
	adds r6, r6, r3
	mov r3, ip
	adds r2, r4, #0
_080C0784:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r0, [sp, #0x28]
	cmp r7, r0
	blo _080C0720
_080C0790:
	ldr r4, _080C07D8 @ =gVramGraphicsCopyQueueIndex
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080C07DC @ =gVramGraphicsCopyQueue
	adds r0, r0, r1
	str r2, [r0]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080C07DC @ =gVramGraphicsCopyQueue
	adds r1, #4
	adds r0, r0, r1
	str r6, [r0]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _080C07DC @ =gVramGraphicsCopyQueue
	adds r0, r0, r2
	strh r3, [r0, #8]
	ldrb r0, [r4]
	adds r0, #1
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4]
_080C07C8:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C07D8: .4byte gVramGraphicsCopyQueueIndex
_080C07DC: .4byte gVramGraphicsCopyQueue

	thumb_func_start sub_80C07E0
sub_80C07E0: @ 0x080C07E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x38
	mov sl, r0
	movs r0, #0
	str r0, [sp, #0x20]
	movs r1, #0
	str r1, [sp, #0x24]
	movs r2, #0
	str r2, [sp, #0x28]
	movs r3, #0
	str r3, [sp, #0x2c]
	movs r4, #0
	str r4, [sp, #0x30]
	mov r0, sl
	ldr r4, [r0, #4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	bne _080C0810
	b _080C0C90
_080C0810:
	lsrs r0, r4, #0x1c
	cmp r0, #0
	bne _080C0838
	ldr r3, _080C0834 @ =gRefSpriteTables
	ldr r0, [r3]
	mov r1, sl
	ldrh r2, [r1, #0xc]
	ldr r0, [r0, #4]
	lsls r1, r2, #2
	adds r1, r1, r0
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	mov sb, r1
	b _080C084E
	.align 2, 0
_080C0834: .4byte gRefSpriteTables
_080C0838:
	ldr r3, _080C08EC @ =gRefSpriteTables
	ldr r0, [r3]
	mov r1, sl
	ldrh r2, [r1, #0xc]
	ldr r1, [r0, #4]
	lsls r0, r2, #2
	adds r0, r0, r1
	lsls r1, r4, #4
	ldr r0, [r0]
	adds r0, r0, r1
	mov sb, r0
_080C084E:
	mov r4, sb
	ldrh r0, [r4, #2]
	mov r1, sl
	strb r0, [r1, #0x1e]
	movs r0, #0x10
	ldrsh r4, [r1, r0]
	str r4, [sp, #8]
	movs r4, #0x12
	ldrsh r1, [r1, r4]
	str r1, [sp, #0xc]
	mov r0, sl
	ldr r1, [r0, #8]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r1
	adds r5, r1, #0
	cmp r0, #0
	beq _080C0888
	ldr r0, _080C08F0 @ =gUnknown_03002AF4
	movs r4, #0
	ldrsh r1, [r0, r4]
	ldr r4, [sp, #8]
	subs r4, r4, r1
	str r4, [sp, #8]
	movs r1, #2
	ldrsh r0, [r0, r1]
	ldr r4, [sp, #0xc]
	subs r4, r4, r0
	str r4, [sp, #0xc]
_080C0888:
	mov r0, sb
	ldrh r0, [r0, #4]
	str r0, [sp, #0x10]
	mov r1, sb
	ldrh r1, [r1, #6]
	str r1, [sp, #0x14]
	movs r0, #0x20
	ands r0, r5
	cmp r0, #0
	beq _080C08F4
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r4, #0
	ldr r1, [sp, #0x20]
	orrs r1, r0
	str r1, [sp, #0x20]
	movs r0, #0x1f
	ands r0, r5
	lsls r0, r0, #9
	ldr r4, [sp, #0x24]
	orrs r4, r0
	str r4, [sp, #0x24]
	movs r0, #0x40
	ands r0, r5
	cmp r0, #0
	beq _080C096A
	ldr r1, [sp, #0x10]
	lsrs r0, r1, #1
	ldr r4, [sp, #8]
	subs r4, r4, r0
	str r4, [sp, #8]
	ldr r1, [sp, #0x14]
	lsrs r0, r1, #1
	ldr r4, [sp, #0xc]
	subs r4, r4, r0
	str r4, [sp, #0xc]
	ldr r0, [sp, #0x10]
	lsls r0, r0, #1
	str r0, [sp, #0x10]
	lsls r1, r1, #1
	str r1, [sp, #0x14]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r1, #0
	ldr r4, [sp, #0x20]
	orrs r4, r0
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x20]
	b _080C096A
	.align 2, 0
_080C08EC: .4byte gRefSpriteTables
_080C08F0: .4byte gUnknown_03002AF4
_080C08F4:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r5
	cmp r0, #0
	beq _080C0910
	mov r1, sb
	movs r4, #0xa
	ldrsh r0, [r1, r4]
	ldr r1, [sp, #0x14]
	subs r0, r1, r0
	ldr r4, [sp, #0xc]
	subs r4, r4, r0
	str r4, [sp, #0xc]
	b _080C091C
_080C0910:
	mov r1, sb
	movs r4, #0xa
	ldrsh r0, [r1, r4]
	ldr r1, [sp, #0xc]
	subs r1, r1, r0
	str r1, [sp, #0xc]
_080C091C:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r5
	cmp r0, #0
	beq _080C0938
	mov r4, sb
	movs r1, #8
	ldrsh r0, [r4, r1]
	ldr r4, [sp, #0x10]
	subs r0, r4, r0
	ldr r1, [sp, #8]
	subs r1, r1, r0
	str r1, [sp, #8]
	b _080C0944
_080C0938:
	mov r4, sb
	movs r1, #8
	ldrsh r0, [r4, r1]
	ldr r4, [sp, #8]
	subs r4, r4, r0
	str r4, [sp, #8]
_080C0944:
	lsrs r0, r5, #0xb
	movs r6, #1
	ands r0, r6
	mov r4, sb
	ldrh r1, [r4]
	lsls r4, r1, #0x10
	lsrs r1, r4, #0x1f
	cmp r0, r1
	beq _080C095A
	movs r0, #1
	str r0, [sp, #0x2c]
_080C095A:
	lsrs r1, r5, #0xa
	lsrs r0, r4, #0x1e
	eors r0, r1
	ands r0, r6
	cmp r0, #0
	beq _080C096A
	movs r1, #1
	str r1, [sp, #0x30]
_080C096A:
	ldr r4, [sp, #0x10]
	cmp r4, #0
	beq _080C0992
	ldr r1, [sp, #8]
	adds r0, r1, r4
	cmp r0, #0
	bge _080C097A
	b _080C0C90
_080C097A:
	cmp r1, #0xf0
	ble _080C0980
	b _080C0C90
_080C0980:
	ldr r4, [sp, #0xc]
	ldr r1, [sp, #0x14]
	adds r0, r4, r1
	cmp r0, #0
	bge _080C098C
	b _080C0C90
_080C098C:
	cmp r4, #0xa0
	ble _080C0992
	b _080C0C90
_080C0992:
	mov r4, sl
	ldrb r1, [r4, #0x1f]
	lsls r1, r1, #0xc
	ldr r0, [sp, #0x28]
	adds r1, r0, r1
	lsls r1, r1, #0x10
	movs r0, #0xc0
	lsls r0, r0, #1
	ands r0, r5
	lsls r0, r0, #3
	ldr r4, [sp, #0x20]
	orrs r4, r0
	str r4, [sp, #0x20]
	movs r0, #0xc0
	lsls r0, r0, #6
	ands r0, r5
	lsls r0, r0, #0xe
	orrs r0, r1
	lsrs r0, r0, #0x10
	str r0, [sp, #0x28]
	ldr r0, [r3]
	ldr r1, [r0, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x1c]
	ldr r0, _080C0B84 @ =gUnknown_03002C00
	ldrb r0, [r0]
	mov r1, sl
	strb r0, [r1, #0x1d]
	movs r2, #0
	str r2, [sp, #0x18]
	mov r3, sb
	ldrh r3, [r3, #2]
	cmp r2, r3
	blo _080C09DC
	b _080C0B3C
_080C09DC:
	ldr r4, _080C0B88 @ =0x040000D4
	mov r8, r4
	mov r4, sp
_080C09E2:
	mov r1, sb
	ldrh r0, [r1]
	ldr r2, _080C0B8C @ =0x00003FFF
	adds r1, r2, #0
	ands r1, r0
	ldr r3, [sp, #0x18]
	adds r1, r1, r3
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, [sp, #0x1c]
	adds r0, r1, r0
	mov r2, r8
	str r0, [r2]
	mov r3, sp
	str r3, [r2, #4]
	ldr r0, _080C0B90 @ =0x80000003
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r2, [r4, #2]
	ldr r1, _080C0B94 @ =0x000001FF
	adds r0, r1, #0
	adds r6, r0, #0
	ands r6, r2
	cmp r6, #0xff
	ble _080C0A1A
	ldr r3, _080C0B98 @ =0xFFFFFE00
	adds r6, r6, r3
_080C0A1A:
	ldrh r0, [r4]
	ldrb r5, [r4]
	cmp r5, #0x7f
	ble _080C0A26
	ldr r1, _080C0B9C @ =0xFFFFFF00
	adds r5, r5, r1
_080C0A26:
	movs r1, #0xfe
	lsls r1, r1, #8
	adds r3, r1, #0
	ands r3, r2
	strh r3, [r4, #2]
	ands r1, r0
	strh r1, [r4]
	movs r2, #0xc0
	lsls r2, r2, #8
	ands r1, r2
	lsrs r1, r1, #0xc
	adds r0, r3, #0
	ands r0, r2
	lsrs r0, r0, #0xe
	orrs r1, r0
	ldr r2, _080C0BA0 @ =gOamShapesSizes
	lsls r1, r1, #1
	adds r0, r2, #1
	adds r0, r1, r0
	ldrb r7, [r0]
	adds r1, r1, r2
	ldrb r1, [r1]
	mov ip, r1
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x30]
	orrs r0, r1
	cmp r0, #0
	beq _080C0A90
	ldr r2, [sp, #0x2c]
	cmp r2, #0
	beq _080C0A76
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r1, #0
	adds r1, r3, #0
	eors r1, r0
	strh r1, [r4, #2]
	ldr r2, [sp, #0x14]
	subs r0, r2, r7
	subs r5, r0, r5
_080C0A76:
	ldr r3, [sp, #0x30]
	cmp r3, #0
	beq _080C0A90
	ldrh r0, [r4, #2]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	eors r0, r1
	strh r0, [r4, #2]
	ldr r3, [sp, #0x10]
	mov r1, ip
	subs r0, r3, r1
	subs r6, r0, r6
_080C0A90:
	ldr r2, [sp, #0xc]
	adds r1, r2, r5
	adds r0, r1, r7
	cmp r0, #0
	blt _080C0B28
	cmp r1, #0xa0
	bgt _080C0B28
	ldr r3, [sp, #8]
	adds r2, r3, r6
	mov r3, ip
	adds r0, r2, r3
	cmp r0, #0
	blt _080C0B28
	cmp r2, #0xf0
	bgt _080C0B28
	movs r0, #0xff
	ands r1, r0
	ldrh r0, [r4]
	adds r1, r1, r0
	ldr r3, _080C0B94 @ =0x000001FF
	adds r0, r3, #0
	ands r2, r0
	ldrh r0, [r4, #2]
	adds r0, r0, r2
	ldr r2, [sp, #0x20]
	orrs r1, r2
	strh r1, [r4]
	ldr r3, [sp, #0x24]
	orrs r0, r3
	strh r0, [r4, #2]
	ldrh r0, [r4, #4]
	ldr r2, [sp, #0x28]
	orrs r2, r0
	strh r2, [r4, #4]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r0, r3, #0
	ands r1, r0
	cmp r1, #0
	beq _080C0AEC
	ldr r0, _080C0BA4 @ =0x000003FF
	adds r1, r0, #0
	adds r0, r2, #0
	ands r0, r1
	adds r0, r2, r0
	strh r0, [r4, #4]
_080C0AEC:
	mov r1, sl
	ldr r0, [r1]
	ldr r2, _080C0BA8 @ =0xF9FF0000
	adds r0, r0, r2
	lsrs r0, r0, #5
	ldrh r3, [r4, #4]
	adds r0, r0, r3
	strh r0, [r4, #4]
	ldrh r0, [r1, #0x14]
	movs r2, #0xf8
	lsls r2, r2, #3
	adds r1, r2, #0
	ands r0, r1
	lsrs r0, r0, #6
	bl sub_80C108C
	adds r1, r0, #0
	ldr r0, _080C0BAC @ =iwram_end
	ldr r0, [r0]
	cmp r0, r1
	bne _080C0B18
	b _080C0C90
_080C0B18:
	mov r3, sp
	mov r0, r8
	str r3, [r0]
	str r1, [r0, #4]
	ldr r0, _080C0B90 @ =0x80000003
	mov r1, r8
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_080C0B28:
	ldr r0, [sp, #0x18]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	mov r2, sb
	ldrh r2, [r2, #2]
	cmp r0, r2
	bhs _080C0B3C
	b _080C09E2
_080C0B3C:
	mov r3, sl
	ldr r0, [r3, #4]
	lsrs r0, r0, #0x1c
	cmp r0, #1
	beq _080C0B48
	b _080C0C90
_080C0B48:
	ldr r1, [r3, #8]
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r0, r1
	cmp r0, #0
	bne _080C0B56
	b _080C0C90
_080C0B56:
	ldr r0, _080C0BB0 @ =0xFBFFFFFF
	ands r1, r0
	str r1, [r3, #8]
	mov r4, sb
	ldr r0, [r4, #0xc]
	ldr r1, _080C0BB4 @ =0x00FFFFFF
	ands r1, r0
	lsrs r0, r0, #0x18
	str r0, [sp, #0x34]
	ldr r0, _080C0BB8 @ =gRefSpriteTables
	ldr r2, [r0]
	lsls r1, r1, #2
	ldr r0, [r2, #0x18]
	adds r0, r0, r1
	mov ip, r0
	ldr r0, [r0]
	cmp r0, #0
	blt _080C0BBC
	movs r0, #0x20
	mov r8, r0
	ldr r2, [r2, #0x10]
	b _080C0BC2
	.align 2, 0
_080C0B84: .4byte gUnknown_03002C00
_080C0B88: .4byte 0x040000D4
_080C0B8C: .4byte 0x00003FFF
_080C0B90: .4byte 0x80000003
_080C0B94: .4byte 0x000001FF
_080C0B98: .4byte 0xFFFFFE00
_080C0B9C: .4byte 0xFFFFFF00
_080C0BA0: .4byte gOamShapesSizes
_080C0BA4: .4byte 0x000003FF
_080C0BA8: .4byte 0xF9FF0000
_080C0BAC: .4byte iwram_end
_080C0BB0: .4byte 0xFBFFFFFF
_080C0BB4: .4byte 0x00FFFFFF
_080C0BB8: .4byte gRefSpriteTables
_080C0BBC:
	movs r1, #0x40
	mov r8, r1
	ldr r2, [r2, #0x14]
_080C0BC2:
	mov sb, r2
	mov r3, r8
	mov r2, ip
	adds r2, #4
	mov ip, r2
	subs r2, #4
	ldm r2!, {r0}
	muls r0, r3, r0
	mov r4, sb
	adds r2, r4, r0
	mov r0, sl
	ldr r6, [r0]
	movs r7, #1
	ldr r1, [sp, #0x34]
	cmp r7, r1
	bhs _080C0C58
	ldr r4, _080C0C0C @ =gVramGraphicsCopyQueue
	mov sl, r4
	ldr r5, _080C0C10 @ =gVramGraphicsCopyQueueIndex
_080C0BE8:
	mov r1, ip
	adds r1, #4
	mov ip, r1
	subs r1, #4
	ldm r1!, {r0}
	mov r4, r8
	muls r4, r0, r4
	adds r0, r4, #0
	mov r1, sb
	adds r4, r1, r0
	adds r0, r2, r3
	cmp r0, r4
	bne _080C0C14
	mov r4, r8
	adds r0, r3, r4
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	b _080C0C4C
	.align 2, 0
_080C0C0C: .4byte gVramGraphicsCopyQueue
_080C0C10: .4byte gVramGraphicsCopyQueueIndex
_080C0C14:
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sl
	str r2, [r0]
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	mov r1, sl
	adds r1, #4
	adds r0, r0, r1
	str r6, [r0]
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sl
	strh r3, [r0, #8]
	ldrb r0, [r5]
	adds r0, #1
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r5]
	adds r6, r6, r3
	mov r3, r8
	adds r2, r4, #0
_080C0C4C:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r0, [sp, #0x34]
	cmp r7, r0
	blo _080C0BE8
_080C0C58:
	ldr r4, _080C0CA0 @ =gVramGraphicsCopyQueueIndex
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080C0CA4 @ =gVramGraphicsCopyQueue
	adds r0, r0, r1
	str r2, [r0]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080C0CA4 @ =gVramGraphicsCopyQueue
	adds r1, #4
	adds r0, r0, r1
	str r6, [r0]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _080C0CA4 @ =gVramGraphicsCopyQueue
	adds r0, r0, r2
	strh r3, [r0, #8]
	ldrb r0, [r4]
	adds r0, #1
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4]
_080C0C90:
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C0CA0: .4byte gVramGraphicsCopyQueueIndex
_080C0CA4: .4byte gVramGraphicsCopyQueue

	thumb_func_start sub_80C0CA8
sub_80C0CA8: @ 0x080C0CA8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	mov sb, r0
	str r1, [sp, #8]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0xc]
	ldr r2, [r0, #4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne _080C0CCA
	b _080C1060
_080C0CCA:
	lsrs r0, r2, #0x1c
	cmp r0, #0
	bne _080C0CF0
	ldr r0, _080C0CEC @ =gRefSpriteTables
	ldr r0, [r0]
	mov r3, sb
	ldrh r1, [r3, #0xc]
	ldr r0, [r0, #4]
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	mov sl, r1
	b _080C0D06
	.align 2, 0
_080C0CEC: .4byte gRefSpriteTables
_080C0CF0:
	ldr r0, _080C0D7C @ =gRefSpriteTables
	ldr r1, [r0]
	mov r4, sb
	ldrh r0, [r4, #0xc]
	ldr r1, [r1, #4]
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r1, r2, #4
	ldr r0, [r0]
	adds r0, r0, r1
	mov sl, r0
_080C0D06:
	mov r5, sl
	ldrh r0, [r5, #2]
	mov r1, sb
	strb r0, [r1, #0x1e]
	movs r2, #0x10
	ldrsh r0, [r1, r2]
	str r0, [sp]
	movs r3, #0x12
	ldrsh r0, [r1, r3]
	str r0, [sp, #4]
	ldr r1, [r1, #8]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r1
	adds r3, r1, #0
	cmp r0, #0
	beq _080C0D3E
	ldr r2, _080C0D80 @ =gUnknown_03002AF4
	movs r4, #0
	ldrsh r1, [r2, r4]
	ldr r0, [sp]
	subs r0, r0, r1
	str r0, [sp]
	movs r5, #2
	ldrsh r1, [r2, r5]
	ldr r0, [sp, #4]
	subs r0, r0, r1
	str r0, [sp, #4]
_080C0D3E:
	mov r0, sl
	ldrh r0, [r0, #4]
	str r0, [sp, #0x10]
	mov r1, sl
	ldrh r1, [r1, #6]
	str r1, [sp, #0x14]
	movs r0, #0x20
	ands r0, r3
	cmp r0, #0
	beq _080C0D84
	movs r0, #0x40
	ands r0, r3
	cmp r0, #0
	beq _080C0DC8
	ldr r2, [sp, #0x10]
	lsrs r1, r2, #1
	ldr r0, [sp]
	subs r0, r0, r1
	str r0, [sp]
	mov r3, sl
	ldrh r1, [r3, #6]
	lsrs r1, r1, #1
	ldr r0, [sp, #4]
	subs r0, r0, r1
	str r0, [sp, #4]
	lsls r2, r2, #1
	str r2, [sp, #0x10]
	ldr r4, [sp, #0x14]
	lsls r4, r4, #1
	str r4, [sp, #0x14]
	b _080C0DC8
	.align 2, 0
_080C0D7C: .4byte gRefSpriteTables
_080C0D80: .4byte gUnknown_03002AF4
_080C0D84:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r3
	cmp r0, #0
	beq _080C0D9A
	mov r5, sl
	movs r0, #0xa
	ldrsh r1, [r5, r0]
	ldr r2, [sp, #0x14]
	subs r1, r2, r1
	b _080C0DA0
_080C0D9A:
	mov r4, sl
	movs r5, #0xa
	ldrsh r1, [r4, r5]
_080C0DA0:
	ldr r0, [sp, #4]
	subs r0, r0, r1
	str r0, [sp, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r3
	cmp r0, #0
	beq _080C0DBC
	mov r0, sl
	movs r2, #8
	ldrsh r1, [r0, r2]
	ldr r3, [sp, #0x10]
	subs r1, r3, r1
	b _080C0DC2
_080C0DBC:
	mov r4, sl
	movs r5, #8
	ldrsh r1, [r4, r5]
_080C0DC2:
	ldr r0, [sp]
	subs r0, r0, r1
	str r0, [sp]
_080C0DC8:
	mov r0, sb
	movs r2, #0x10
	ldrsh r1, [r0, r2]
	ldr r0, [sp]
	subs r0, r0, r1
	str r0, [sp, #0x24]
	mov r3, sb
	movs r4, #0x12
	ldrsh r1, [r3, r4]
	ldr r0, [sp, #4]
	subs r0, r0, r1
	str r0, [sp, #0x28]
	ldr r0, [sp]
	ldr r5, [sp, #0x10]
	adds r0, r0, r5
	cmp r0, #0
	bge _080C0DEC
	b _080C1060
_080C0DEC:
	ldr r0, [sp]
	cmp r0, #0xf0
	ble _080C0DF4
	b _080C1060
_080C0DF4:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x14]
	adds r0, r0, r1
	cmp r0, #0
	bge _080C0E00
	b _080C1060
_080C0E00:
	ldr r0, [sp, #4]
	cmp r0, #0xa0
	ble _080C0E08
	b _080C1060
_080C0E08:
	movs r2, #0
	str r2, [sp, #0x18]
	mov r3, sl
	ldrh r3, [r3, #2]
	cmp r2, r3
	blo _080C0E16
	b _080C1060
_080C0E16:
	ldr r0, _080C0ED4 @ =gRefSpriteTables
	ldr r1, [r0]
	mov r4, sb
	ldrh r0, [r4, #0xc]
	ldr r1, [r1, #8]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	mov r5, sb
	ldrh r0, [r5, #0x14]
	movs r2, #0xf8
	lsls r2, r2, #3
	adds r1, r2, #0
	ands r0, r1
	lsrs r0, r0, #6
	bl sub_80C108C
	adds r6, r0, #0
	ldr r0, _080C0ED8 @ =iwram_end
	ldr r0, [r0]
	cmp r0, r6
	bne _080C0E44
	b _080C1060
_080C0E44:
	ldr r2, _080C0EDC @ =0x040000D4
	mov r3, sl
	ldrh r0, [r3]
	ldr r5, _080C0EE0 @ =0x00003FFF
	adds r1, r5, #0
	ands r1, r0
	ldr r0, [sp, #0x18]
	adds r1, r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r4, r0
	str r0, [r2]
	str r6, [r2, #4]
	ldr r0, _080C0EE4 @ =0x80000003
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r1, [r6, #2]
	ldr r2, _080C0EE8 @ =0x000001FF
	adds r0, r2, #0
	adds r3, r0, #0
	ands r3, r1
	str r3, [sp, #0x1c]
	ldrh r0, [r6]
	ldrb r4, [r6]
	str r4, [sp, #0x20]
	movs r3, #0xfe
	lsls r3, r3, #8
	ands r3, r1
	movs r5, #0
	strh r3, [r6, #2]
	movs r2, #0xfe
	lsls r2, r2, #8
	ands r2, r0
	strh r2, [r6]
	mov r1, sb
	ldrb r0, [r1, #0x1f]
	lsls r0, r0, #0xc
	ldrh r4, [r6, #4]
	adds r0, r0, r4
	strh r0, [r6, #4]
	ldr r4, [r1, #8]
	movs r0, #0x20
	ands r0, r4
	cmp r0, #0
	beq _080C0EEC
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	orrs r2, r0
	orrs r2, r5
	strh r2, [r6]
	mov r3, sb
	ldr r0, [r3, #8]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080C0EC2
	movs r4, #0x80
	lsls r4, r4, #2
	adds r0, r4, #0
	orrs r2, r0
	strh r2, [r6]
_080C0EC2:
	mov r5, sb
	ldr r0, [r5, #8]
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #9
	ldrh r1, [r6, #2]
	orrs r0, r1
	strh r0, [r6, #2]
	b _080C0F60
	.align 2, 0
_080C0ED4: .4byte gRefSpriteTables
_080C0ED8: .4byte iwram_end
_080C0EDC: .4byte 0x040000D4
_080C0EE0: .4byte 0x00003FFF
_080C0EE4: .4byte 0x80000003
_080C0EE8: .4byte 0x000001FF
_080C0EEC:
	movs r1, #0xc0
	lsls r1, r1, #8
	adds r0, r2, #0
	ands r0, r1
	lsrs r2, r0, #0xc
	adds r0, r3, #0
	ands r0, r1
	lsrs r0, r0, #0xe
	orrs r2, r0
	lsrs r1, r4, #0xb
	movs r4, #1
	ands r1, r4
	mov r5, sl
	ldrh r0, [r5]
	lsrs r0, r0, #0xf
	cmp r1, r0
	beq _080C0F2E
	movs r0, #0x80
	lsls r0, r0, #6
	adds r1, r0, #0
	adds r0, r3, #0
	eors r0, r1
	strh r0, [r6, #2]
	ldr r0, _080C1070 @ =gOamShapesSizes
	lsls r1, r2, #1
	adds r0, #1
	adds r1, r1, r0
	ldrb r0, [r1]
	ldr r1, [sp, #0x14]
	subs r0, r1, r0
	ldr r3, [sp, #0x20]
	subs r3, r0, r3
	str r3, [sp, #0x20]
_080C0F2E:
	mov r5, sb
	ldr r1, [r5, #8]
	lsrs r1, r1, #0xa
	mov r3, sl
	ldrh r0, [r3]
	lsrs r0, r0, #0xe
	eors r0, r1
	ands r0, r4
	cmp r0, #0
	beq _080C0F60
	ldrh r0, [r6, #2]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r1, r4, #0
	eors r0, r1
	strh r0, [r6, #2]
	ldr r1, _080C1070 @ =gOamShapesSizes
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	ldr r5, [sp, #0x10]
	subs r0, r5, r0
	ldr r1, [sp, #0x1c]
	subs r1, r0, r1
	str r1, [sp, #0x1c]
_080C0F60:
	mov r3, sb
	ldr r2, [r3, #8]
	movs r0, #0xc0
	lsls r0, r0, #1
	ands r2, r0
	lsls r2, r2, #3
	ldrh r0, [r6]
	orrs r2, r0
	strh r2, [r6]
	ldr r0, [r3, #8]
	movs r1, #0xc0
	lsls r1, r1, #6
	ands r0, r1
	lsrs r3, r0, #2
	ldrh r0, [r6, #4]
	orrs r3, r0
	strh r3, [r6, #4]
	ldr r0, [sp, #4]
	ldr r4, [sp, #0x20]
	adds r0, r0, r4
	movs r1, #0xff
	ands r0, r1
	adds r2, r2, r0
	strh r2, [r6]
	ldr r0, [sp]
	ldr r5, [sp, #0x1c]
	adds r0, r0, r5
	ldr r4, _080C1074 @ =0x000001FF
	adds r1, r4, #0
	ands r0, r1
	ldrh r5, [r6, #2]
	adds r0, r0, r5
	strh r0, [r6, #2]
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r1, #0
	ands r2, r0
	cmp r2, #0
	beq _080C0FBA
	ldr r2, _080C1078 @ =0x000003FF
	adds r1, r2, #0
	adds r0, r3, #0
	ands r0, r1
	adds r0, r3, r0
	strh r0, [r6, #4]
_080C0FBA:
	mov r3, sb
	ldr r0, [r3]
	ldr r4, _080C107C @ =0xF9FF0000
	adds r0, r0, r4
	lsrs r0, r0, #5
	ldrh r5, [r6, #4]
	adds r0, r0, r5
	strh r0, [r6, #4]
	movs r7, #0
	ldr r0, [sp, #0xc]
	cmp r7, r0
	bhs _080C104C
	ldr r1, _080C1080 @ =0x040000D4
	mov r8, r1
_080C0FD6:
	mov r2, sb
	ldrh r0, [r2, #0x14]
	movs r3, #0xf8
	lsls r3, r3, #3
	adds r1, r3, #0
	ands r0, r1
	lsrs r0, r0, #6
	bl sub_80C108C
	adds r5, r0, #0
	ldr r0, _080C1084 @ =iwram_end
	ldr r0, [r0]
	cmp r0, r6
	beq _080C1060
	mov r4, r8
	str r6, [r4]
	str r5, [r4, #4]
	ldr r0, _080C1088 @ =0x80000003
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r4, [r5, #2]
	movs r0, #0xfe
	lsls r0, r0, #8
	ands r4, r0
	strh r4, [r5, #2]
	ldrh r2, [r5]
	movs r1, #0xff
	lsls r1, r1, #8
	adds r0, r1, #0
	ands r2, r0
	strh r2, [r5]
	lsls r3, r7, #2
	ldr r0, [sp, #8]
	adds r3, r3, r0
	ldrh r0, [r3, #2]
	ldr r1, [sp, #0x28]
	adds r0, r0, r1
	ldr r1, [sp, #0x20]
	adds r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	adds r2, r2, r0
	strh r2, [r5]
	ldrh r0, [r3]
	ldr r2, [sp, #0x24]
	adds r0, r0, r2
	ldr r3, [sp, #0x1c]
	adds r0, r0, r3
	ldr r2, _080C1074 @ =0x000001FF
	adds r1, r2, #0
	ands r0, r1
	adds r4, r4, r0
	strh r4, [r5, #2]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r3, [sp, #0xc]
	cmp r7, r3
	blo _080C0FD6
_080C104C:
	ldr r0, [sp, #0x18]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	mov r4, sl
	ldrh r4, [r4, #2]
	cmp r0, r4
	bhs _080C1060
	b _080C0E16
_080C1060:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C1070: .4byte gOamShapesSizes
_080C1074: .4byte 0x000001FF
_080C1078: .4byte 0x000003FF
_080C107C: .4byte 0xF9FF0000
_080C1080: .4byte 0x040000D4
_080C1084: .4byte iwram_end
_080C1088: .4byte 0x80000003

	thumb_func_start sub_80C108C
sub_80C108C: @ 0x080C108C
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x1f
	bls _080C1098
	movs r5, #0x1f
_080C1098:
	ldr r0, _080C10AC @ =gUnknown_03002C00
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r4, r0, #0
	cmp r1, #0
	bge _080C10B4
	ldr r0, _080C10B0 @ =iwram_end
	ldr r0, [r0]
	b _080C1110
	.align 2, 0
_080C10AC: .4byte gUnknown_03002C00
_080C10B0: .4byte iwram_end
_080C10B4:
	ldr r0, _080C10D8 @ =gUnknown_03002B50
	adds r2, r5, r0
	ldrb r0, [r2]
	cmp r0, #0xff
	bne _080C10E4
	ldr r1, _080C10DC @ =gUnknown_03003750
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r1
	movs r1, #0xff
	strb r1, [r0, #6]
	ldrb r0, [r4]
	strb r0, [r2]
	ldr r0, _080C10E0 @ =gUnknown_03006210
	adds r0, r5, r0
	ldrb r1, [r4]
	strb r1, [r0]
	b _080C1102
	.align 2, 0
_080C10D8: .4byte gUnknown_03002B50
_080C10DC: .4byte gUnknown_03003750
_080C10E0: .4byte gUnknown_03006210
_080C10E4:
	ldr r3, _080C1118 @ =gUnknown_03003750
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r3
	movs r1, #0xff
	strb r1, [r0, #6]
	ldr r2, _080C111C @ =gUnknown_03006210
	adds r2, r5, r2
	ldrb r0, [r2]
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrb r1, [r4]
	strb r1, [r0, #6]
	ldrb r0, [r4]
	strb r0, [r2]
_080C1102:
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	ldrb r0, [r4]
	lsls r0, r0, #3
	ldr r1, _080C1120 @ =gUnknown_03003750-0x8
	adds r0, r0, r1
_080C1110:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080C1118: .4byte gUnknown_03003750
_080C111C: .4byte gUnknown_03006210
_080C1120: .4byte gUnknown_03003750-0x8

	thumb_func_start sub_80C1124
sub_80C1124: @ 0x080C1124
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r5, _080C11D4 @ =gOamBuffer
	movs r0, #0
	mov sb, r0
	movs r3, #0
	ldr r1, _080C11D8 @ =gUnknown_03003F90
	mov sl, r1
	mov r2, sp
	adds r2, #8
	str r2, [sp, #0xc]
_080C1142:
	ldr r1, _080C11DC @ =gUnknown_03002B50
	adds r0, r3, r1
	ldrb r0, [r0]
	lsls r2, r0, #0x18
	asrs r0, r2, #0x18
	adds r6, r3, #1
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080C118A
	ldr r4, _080C11E0 @ =0x040000D4
	mov r8, r1
	ldr r0, _080C11E4 @ =gUnknown_03003B80
	mov ip, r0
	ldr r7, _080C11E8 @ =gUnknown_03003750
_080C1160:
	asrs r2, r2, #0x18
	lsls r3, r2, #3
	adds r3, r3, r7
	str r3, [r4]
	str r5, [r4, #4]
	ldr r0, _080C11EC @ =0x80000003
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	adds r5, #8
	add r2, ip
	mov r1, sb
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	strb r1, [r2]
	ldrb r0, [r3, #6]
	lsls r2, r0, #0x18
	asrs r0, r2, #0x18
	cmp r0, r8
	bne _080C1160
_080C118A:
	adds r3, r6, #0
	cmp r3, #0x1f
	ble _080C1142
	ldr r2, _080C11F0 @ =gFlags
	ldr r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080C11FC
	ldr r0, _080C11F4 @ =gUnknown_03002C00
	ldrb r3, [r0]
	lsls r0, r3, #3
	ldr r1, _080C11D4 @ =gOamBuffer
	adds r5, r0, r1
	mov r2, sl
	ldrb r0, [r2]
	cmp r3, r0
	bge _080C1288
	mov r4, sp
	movs r1, #0x80
	lsls r1, r1, #2
	adds r7, r1, #0
	ldr r1, _080C11E0 @ =0x040000D4
	ldr r6, _080C11F8 @ =0x81000003
_080C11BC:
	strh r7, [r4]
	mov r0, sp
	str r0, [r1]
	str r5, [r1, #4]
	str r6, [r1, #8]
	ldr r0, [r1, #8]
	adds r5, #8
	adds r3, #1
	ldrb r0, [r2]
	cmp r3, r0
	blt _080C11BC
	b _080C1288
	.align 2, 0
_080C11D4: .4byte gOamBuffer
_080C11D8: .4byte gUnknown_03003F90
_080C11DC: .4byte gUnknown_03002B50
_080C11E0: .4byte 0x040000D4
_080C11E4: .4byte gUnknown_03003B80
_080C11E8: .4byte gUnknown_03003750
_080C11EC: .4byte 0x80000003
_080C11F0: .4byte gFlags
_080C11F4: .4byte gUnknown_03002C00
_080C11F8: .4byte 0x81000003
_080C11FC:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080C1284
	ldr r1, _080C1270 @ =gUnknown_03002C00
	ldrb r0, [r1]
	subs r3, r0, #1
	lsls r0, r3, #3
	ldr r2, _080C1274 @ =gOamBuffer
	adds r5, r0, r2
	cmp r3, #0
	blt _080C1236
	ldr r2, _080C1278 @ =0x040000D4
	ldr r6, _080C127C @ =0x80000003
	ldr r0, _080C1274 @ =gOamBuffer
	movs r1, #0xfe
	lsls r1, r1, #2
	adds r4, r0, r1
	adds r1, r5, #0
_080C1224:
	str r1, [r2]
	str r4, [r2, #4]
	str r6, [r2, #8]
	ldr r0, [r2, #8]
	subs r1, #8
	subs r3, #1
	subs r4, #8
	cmp r3, #0
	bge _080C1224
_080C1236:
	ldr r2, _080C1270 @ =gUnknown_03002C00
	ldrb r1, [r2]
	movs r0, #0x80
	subs r0, r0, r1
	mov r1, sl
	strb r0, [r1]
	movs r3, #0
	ldrb r0, [r1]
	cmp r3, r0
	bge _080C1288
	mov r5, sp
	movs r2, #0x80
	lsls r2, r2, #2
	adds r7, r2, #0
	ldr r1, _080C1278 @ =0x040000D4
	adds r4, r0, #0
	ldr r6, _080C1280 @ =0x81000003
	ldr r2, _080C1274 @ =gOamBuffer
_080C125A:
	strh r7, [r5]
	mov r0, sp
	str r0, [r1]
	str r2, [r1, #4]
	str r6, [r1, #8]
	ldr r0, [r1, #8]
	adds r2, #8
	adds r3, #1
	cmp r3, r4
	blt _080C125A
	b _080C1288
	.align 2, 0
_080C1270: .4byte gUnknown_03002C00
_080C1274: .4byte gOamBuffer
_080C1278: .4byte 0x040000D4
_080C127C: .4byte 0x80000003
_080C1280: .4byte 0x81000003
_080C1284:
	mov r1, sl
	strb r0, [r1]
_080C1288:
	movs r0, #0
	ldr r2, _080C12BC @ =gUnknown_03002C00
	strb r0, [r2]
	ldr r1, _080C12C0 @ =gFlags
	ldr r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080C12D0
	movs r4, #1
	rsbs r4, r4, #0
	str r4, [sp, #4]
	add r0, sp, #4
	ldr r5, _080C12C4 @ =0x05000008
	ldr r1, _080C12C8 @ =gUnknown_03002B50
	adds r2, r5, #0
	bl CpuSet
	str r4, [sp, #8]
	ldr r1, _080C12CC @ =gUnknown_03006210
	ldr r0, [sp, #0xc]
	adds r2, r5, #0
	bl CpuSet
	b _080C12F4
	.align 2, 0
_080C12BC: .4byte gUnknown_03002C00
_080C12C0: .4byte gFlags
_080C12C4: .4byte 0x05000008
_080C12C8: .4byte gUnknown_03002B50
_080C12CC: .4byte gUnknown_03006210
_080C12D0:
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [sp, #8]
	ldr r0, _080C1304 @ =0x040000D4
	ldr r2, [sp, #0xc]
	str r2, [r0]
	ldr r2, _080C1308 @ =gUnknown_03002B50
	str r2, [r0, #4]
	ldr r2, _080C130C @ =0x85000008
	str r2, [r0, #8]
	ldr r3, [r0, #8]
	str r1, [sp, #8]
	ldr r1, [sp, #0xc]
	str r1, [r0]
	ldr r1, _080C1310 @ =gUnknown_03006210
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
_080C12F4:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C1304: .4byte 0x040000D4
_080C1308: .4byte gUnknown_03002B50
_080C130C: .4byte 0x85000008
_080C1310: .4byte gUnknown_03006210

	thumb_func_start sub_80C1314
sub_80C1314: @ 0x080C1314
	ldr r2, [r0, #4]
	ldrh r0, [r1, #0xe]
	subs r0, r0, r2
	strh r0, [r1, #0xe]
	movs r0, #1
	bx lr

	thumb_func_start sub_80C1320
sub_80C1320: @ 0x080C1320
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #7
	orrs r0, r2
	str r0, [r1, #8]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_80C1330
sub_80C1330: @ 0x080C1330
	push {lr}
	ldrh r2, [r1, #0xe]
	adds r2, #2
	strh r2, [r1, #0xe]
	ldrh r0, [r0, #4]
	bl m4aSongNumStart
	movs r0, #1
	pop {r1}
	bx r1

	thumb_func_start sub_80C1344
sub_80C1344: @ 0x080C1344
	ldrh r2, [r1, #0xe]
	adds r2, #2
	strh r2, [r1, #0xe]
	ldrh r2, [r0, #4]
	ldrh r3, [r1, #0x10]
	adds r2, r2, r3
	strh r2, [r1, #0x10]
	ldrh r0, [r0, #6]
	ldrh r2, [r1, #0x12]
	adds r0, r0, r2
	strh r0, [r1, #0x12]
	movs r0, #1
	bx lr
	.align 2, 0

	thumb_func_start sub_80C1360
sub_80C1360: @ 0x080C1360
	ldrh r0, [r1, #0xe]
	adds r0, #3
	strh r0, [r1, #0xe]
	movs r0, #1
	bx lr
	.align 2, 0

	thumb_func_start sub_80C136C
sub_80C136C: @ 0x080C136C
	ldrh r2, [r1, #0xe]
	adds r2, #2
	strh r2, [r1, #0xe]
	ldrh r2, [r0, #4]
	strh r2, [r1, #0xc]
	movs r2, #0xff
	strb r2, [r1, #0x1b]
	ldrh r0, [r0, #6]
	strb r0, [r1, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	bx lr

	thumb_func_start sub_80C1384
sub_80C1384: @ 0x080C1384
	ldrh r2, [r1, #0xe]
	adds r2, #4
	strh r2, [r1, #0xe]
	bx lr

	thumb_func_start sub_80C138C
sub_80C138C: @ 0x080C138C
	ldrh r2, [r1, #0xe]
	adds r2, #2
	strh r2, [r1, #0xe]
	ldr r2, [r1, #8]
	ldr r3, _080C13A4 @ =0xFFFFCFFF
	ands r2, r3
	ldr r0, [r0, #4]
	lsls r0, r0, #0xc
	orrs r2, r0
	str r2, [r1, #8]
	movs r0, #1
	bx lr
	.align 2, 0
_080C13A4: .4byte 0xFFFFCFFF

	thumb_func_start sub_80C13A8
sub_80C13A8: @ 0x080C13A8
	ldrh r2, [r1, #0xe]
	adds r2, #2
	strh r2, [r1, #0xe]
	ldr r0, [r0, #4]
	lsls r0, r0, #6
	strh r0, [r1, #0x14]
	movs r0, #1
	bx lr

 @ End of sprite.c

.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 01
	thumb_func_start Task_804E41C
Task_804E41C: @ 0x0804E41C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r7, _0804E488 @ =gStageData
	ldrb r1, [r7, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0804E48C @ =gPlayers
	mov ip, r1
	adds r5, r0, r1
	ldr r2, _0804E490 @ =gCurTask
	mov r8, r2
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	ldr r0, _0804E494 @ =0x03000072
	adds r4, r1, r0
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	ldr r2, _0804E498 @ =0x03000073
	adds r1, r1, r2
	strb r0, [r1]
	adds r1, r5, #0
	adds r1, #0x9e
	ldrh r0, [r1]
	adds r0, #0x40
	movs r6, #0
	strh r0, [r1]
	ldrb r3, [r4]
	cmp r3, #0
	beq _0804E4A8
	ldr r3, _0804E49C @ =gWinRegs
	ldr r0, _0804E4A0 @ =0x000020D0
	strh r0, [r3, #2]
	ldrb r0, [r4]
	movs r2, #0x10
	subs r2, r2, r0
	lsls r2, r2, #1
	adds r1, r2, #0
	adds r1, #0x18
	lsls r1, r1, #8
	movs r0, #0x58
	subs r0, r0, r2
	orrs r1, r0
	strh r1, [r3, #6]
	ldr r1, _0804E4A4 @ =gBldRegs
	ldrb r0, [r4]
	lsrs r0, r0, #1
	strh r0, [r1, #4]
	b _0804E516
	.align 2, 0
_0804E488: .4byte gStageData
_0804E48C: .4byte gPlayers
_0804E490: .4byte gCurTask
_0804E494: .4byte 0x03000072
_0804E498: .4byte 0x03000073
_0804E49C: .4byte gWinRegs
_0804E4A0: .4byte 0x000020D0
_0804E4A4: .4byte gBldRegs
_0804E4A8:
	ldr r2, _0804E520 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0804E524 @ =0x0000BFFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _0804E528 @ =gBldRegs
	strh r3, [r0]
	strh r3, [r0, #4]
	ldr r0, [r5, #4]
	ldr r3, _0804E52C @ =0xEFFFFFFF
	ands r0, r3
	str r0, [r5, #4]
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	mov r1, ip
	adds r2, r0, r1
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #8
	bne _0804E4EC
	ldr r0, [r2, #4]
	ands r0, r3
	str r0, [r2, #4]
_0804E4EC:
	movs r0, #3
	strb r0, [r7, #4]
	adds r0, r7, #0
	adds r0, #0xb9
	strb r6, [r0]
	subs r0, #0x34
	strb r6, [r0]
	mov r2, r8
	ldr r0, [r2]
	bl TaskDestroy
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #5
	bgt _0804E516
	movs r0, #0x4b
	bl sub_8029A18
_0804E516:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804E520: .4byte gDispCnt
_0804E524: .4byte 0x0000BFFF
_0804E528: .4byte gBldRegs
_0804E52C: .4byte 0xEFFFFFFF
.endif

	thumb_func_start sub_804E530
sub_804E530: @ 0x0804E530
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r0, #0x70
	ldrb r4, [r0]
	movs r0, #0x14
	bl VramMalloc
	adds r1, r0, #0
	str r1, [r7, #0x68]
	adds r0, r7, #0
	adds r0, #0xc
	str r1, [r7, #0xc]
	ldr r2, _0804E5C4 @ =gUnknown_080D03F8
	lsls r4, r4, #2
	adds r1, r4, r2
	ldrh r1, [r1]
	movs r3, #0
	mov r8, r3
	movs r5, #0
	strh r1, [r0, #0xc]
	adds r2, #2
	adds r4, r4, r2
	ldrh r1, [r4]
	strb r1, [r0, #0x1a]
	movs r1, #0xc0
	lsls r1, r1, #3
	strh r1, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r4, #0x10
	strb r4, [r0, #0x1c]
	mov r1, r8
	strb r1, [r0, #0x1f]
	movs r6, #1
	rsbs r6, r6, #0
	str r6, [r0, #0x20]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0x34
	ldr r1, [r7, #0x68]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r1, r2
	str r1, [r7, #0x34]
	ldr r1, _0804E5C8 @ =0x00000412
	strh r1, [r0, #0xc]
	mov r3, r8
	strb r3, [r0, #0x1a]
	strh r5, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	adds r1, r6, #0
	strb r1, [r0, #0x1b]
	strb r4, [r0, #0x1c]
	movs r1, #0xf
	strb r1, [r0, #0x1f]
	str r6, [r0, #0x20]
	str r5, [r0, #8]
	bl UpdateSpriteAnimation
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804E5C4: .4byte gUnknown_080D03F8
_0804E5C8: .4byte 0x00000412

	thumb_func_start sub_804E5CC
sub_804E5CC: @ 0x0804E5CC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0804E618 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldr r2, _0804E61C @ =0x0300000C
	adds r4, r1, r2
	ldr r0, [r7]
	mov r8, r0
	adds r2, #0x60
	adds r0, r1, r2
	adds r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r5, [r0, r2]
	movs r0, #0
	ldrsh r6, [r1, r0]
	adds r0, r5, #0
	adds r1, r6, #0
	bl IsPointInScreenRect
	cmp r0, #0
	bne _0804E620
	ldrb r0, [r7, #0xa]
	mov r1, r8
	strb r0, [r1]
	mov r2, sb
	ldr r0, [r2]
	bl TaskDestroy
	b _0804E63A
	.align 2, 0
_0804E618: .4byte gCurTask
_0804E61C: .4byte 0x0300000C
_0804E620:
	ldr r0, _0804E648 @ =gCamera
	ldr r1, [r0]
	subs r1, r5, r1
	strh r1, [r4, #0x10]
	ldr r0, [r0, #4]
	subs r0, r6, r0
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0804E63A:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804E648: .4byte gCamera

	thumb_func_start TaskDestructor_IAChao
TaskDestructor_IAChao: @ 0x0804E64C
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x68]
	bl VramFree
	ldr r0, [r4, #0x74]
	cmp r0, #0
	beq _0804E666
	bl EwramFree
_0804E666:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start Task_804E66C
Task_804E66C: @ 0x0804E66C
	push {lr}
	ldr r0, _0804E694 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _0804E698 @ =0x0300005C
	adds r0, r0, r1
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804E68E
	bl sub_804E210
	movs r0, #0x81
	lsls r0, r0, #2
	bl sub_8003DF0
_0804E68E:
	pop {r0}
	bx r0
	.align 2, 0
_0804E694: .4byte gCurTask
_0804E698: .4byte 0x0300005C

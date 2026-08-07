.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_8094144
sub_8094144: @ 0x08094144
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	adds r0, #0xf4
	adds r5, r7, #0
	adds r5, #0xa0
	ldr r1, [r5]
	str r1, [r0]
	ldr r3, _08094388 @ =gUnknown_080D76C0
	ldrb r1, [r7, #4]
	lsls r1, r1, #3
	adds r2, r3, #4
	adds r1, r1, r2
	ldr r2, [r1]
	lsls r2, r2, #5
	ldr r1, [r5]
	adds r1, r1, r2
	str r1, [r5]
	ldrb r1, [r7, #4]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrh r1, [r1]
	movs r2, #0
	mov sb, r2
	movs r4, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r7, #4]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x68]
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x6c]
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r3, #0x10
	mov r8, r3
	mov r6, r8
	strb r6, [r0, #0x1c]
	mov r1, sb
	strb r1, [r0, #0x1f]
	str r4, [r0, #8]
	movs r6, #1
	rsbs r6, r6, #0
	str r6, [r0, #0x20]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0xa4
	ldr r1, [r5]
	str r1, [r0]
	ldr r1, [r5]
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r1, r1, r2
	str r1, [r5]
	ldr r2, _0809438C @ =gUnknown_080D7628
	ldrb r1, [r7, #4]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrh r1, [r1]
	strh r1, [r0, #0xc]
	ldrb r1, [r7, #4]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	adds r1, r6, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x60]
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x64]
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	mov r3, r8
	strb r3, [r0, #0x1c]
	mov r1, sb
	strb r1, [r0, #0x1f]
	str r4, [r0, #8]
	str r6, [r0, #0x20]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0xcc
	ldr r1, [r5]
	str r1, [r0]
	ldr r1, [r5]
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r1, r1, r2
	str r1, [r5]
	ldr r2, _08094390 @ =gUnknown_080D7658
	ldrb r1, [r7, #4]
	lsls r1, r1, #1
	ldrb r3, [r7, #6]
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrh r1, [r1]
	strh r1, [r0, #0xc]
	ldrb r1, [r7, #4]
	lsls r1, r1, #1
	ldrb r3, [r7, #6]
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	adds r1, r6, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x60]
	adds r1, #0x40
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x64]
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	mov r1, r8
	strb r1, [r0, #0x1c]
	mov r2, sb
	strb r2, [r0, #0x1f]
	str r4, [r0, #8]
	str r6, [r0, #0x20]
	bl UpdateSpriteAnimation
	ldr r2, _08094394 @ =gUnknown_080D76F0
	movs r6, #0
	ldrb r0, [r2, #2]
	mov r3, sp
	strb r0, [r3, #4]
	ldr r0, [r2, #4]
	lsls r0, r0, #5
	str r0, [sp]
	mov r8, r5
_08094268:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r0, r7, r0
	ldr r1, [r5]
	str r1, [r0]
	ldr r1, [r5]
	ldr r3, [sp]
	adds r1, r1, r3
	str r1, [r5]
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	mov r1, sp
	ldrb r1, [r1, #4]
	strb r1, [r0, #0x1a]
	movs r3, #1
	rsbs r3, r3, #0
	mov sb, r3
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	adds r1, r7, #0
	adds r1, #0x90
	ldr r1, [r1]
	strh r1, [r0, #0x10]
	adds r1, r7, #0
	adds r1, #0x94
	ldr r1, [r1]
	strh r1, [r0, #0x12]
	strh r6, [r0, #0x14]
	strh r6, [r0, #0xe]
	strh r6, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	movs r3, #0
	strb r3, [r0, #0x1f]
	str r6, [r0, #8]
	movs r1, #1
	rsbs r1, r1, #0
	mov sl, r1
	str r1, [r0, #0x20]
	str r2, [sp, #8]
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r2, [sp, #8]
	cmp r4, #2
	bls _08094268
	movs r2, #0xf2
	lsls r2, r2, #1
	adds r0, r7, r2
	mov r3, r8
	ldr r1, [r3]
	str r1, [r0]
	ldr r3, _08094398 @ =gUnknown_080D76B8
	ldr r2, [r3, #4]
	lsls r2, r2, #5
	mov r4, r8
	ldr r1, [r4]
	adds r1, r1, r2
	str r1, [r4]
	ldrh r1, [r3]
	movs r5, #0
	movs r4, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r3, #2]
	strb r1, [r0, #0x1a]
	ldrb r1, [r0, #0x1b]
	mov r6, sb
	orrs r1, r6
	strb r1, [r0, #0x1b]
	adds r1, r7, #0
	adds r1, #0x80
	ldr r1, [r1]
	strh r1, [r0, #0x10]
	adds r1, r7, #0
	adds r1, #0x84
	ldr r1, [r1]
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r5, [r0, #0x1f]
	str r4, [r0, #8]
	mov r2, sl
	str r2, [r0, #0x20]
	bl UpdateSpriteAnimation
	movs r3, #0xde
	lsls r3, r3, #1
	adds r0, r7, r3
	mov r6, r8
	ldr r1, [r6]
	str r1, [r0]
	ldr r3, _0809439C @ =gUnknown_080D7740
	ldr r2, [r3, #4]
	lsls r2, r2, #5
	ldr r1, [r6]
	adds r1, r1, r2
	str r1, [r6]
	ldrh r1, [r3]
	strh r1, [r0, #0xc]
	ldrb r1, [r3, #2]
	strb r1, [r0, #0x1a]
	ldrb r1, [r0, #0x1b]
	mov r2, sb
	orrs r1, r2
	strb r1, [r0, #0x1b]
	adds r1, r7, #0
	adds r1, #0x88
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	adds r1, r7, #0
	adds r1, #0x8c
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r3, #0x10
	strb r3, [r0, #0x1c]
	strb r5, [r0, #0x1f]
	str r4, [r0, #8]
	mov r4, sl
	str r4, [r0, #0x20]
	bl UpdateSpriteAnimation
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08094388: .4byte gUnknown_080D76C0
_0809438C: .4byte gUnknown_080D7628
_08094390: .4byte gUnknown_080D7658
_08094394: .4byte gUnknown_080D76F0
_08094398: .4byte gUnknown_080D76B8
_0809439C: .4byte gUnknown_080D7740

	thumb_func_start Task_SoundTestUI_Init
Task_SoundTestUI_Init: @ 0x080943A0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08094430 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldrb r4, [r5, #4]
	adds r0, r4, #0
	adds r0, #8
	cmp r4, r0
	bge _0809440E
	ldr r7, _08094434 @ =gUnknown_080D8A84
	movs r6, #0
	ldrb r0, [r7, #2]
	mov r8, r0
_080943C4:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x1c
	adds r0, r5, r0
	ldr r1, [r5, #0x18]
	str r1, [r0]
	ldr r1, [r5, #0x18]
	adds r1, #0x80
	str r1, [r5, #0x18]
	ldrh r1, [r7]
	strh r1, [r0, #0xc]
	mov r1, r8
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	strh r6, [r0, #0x10]
	strh r6, [r0, #0x12]
	strh r6, [r0, #0x14]
	strh r6, [r0, #0xe]
	strh r6, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	movs r1, #9
	strb r1, [r0, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #0xb
	str r1, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldrb r0, [r5, #4]
	adds r0, #8
	cmp r4, r0
	blt _080943C4
_0809440E:
	ldrb r0, [r5, #4]
	adds r0, #8
	cmp r0, #0x17
	ble _0809447C
	ldr r3, _08094438 @ =gFlags
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _08094440
	ldr r0, _0809443C @ =gUnknown_080D8A8C
	movs r1, #0xf0
	movs r2, #0x10
	bl CopyObjPaletteMasked
	b _08094456
	.align 2, 0
_08094430: .4byte gCurTask
_08094434: .4byte gUnknown_080D8A84
_08094438: .4byte gFlags
_0809443C: .4byte gUnknown_080D8A8C
_08094440:
	ldr r1, _08094464 @ =0x040000D4
	ldr r0, _08094468 @ =gUnknown_080D8A8C
	str r0, [r1]
	ldr r0, _0809446C @ =gObjPalette + 0x1E0
	str r0, [r1, #4]
	ldr r0, _08094470 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #2
	orrs r2, r0
	str r2, [r3]
_08094456:
	movs r0, #0
	strb r0, [r5, #4]
	ldr r0, _08094474 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08094478 @ =sub_80946F0
	str r0, [r1, #8]
	b _0809447E
	.align 2, 0
_08094464: .4byte 0x040000D4
_08094468: .4byte gUnknown_080D8A8C
_0809446C: .4byte gObjPalette + 0x1E0
_08094470: .4byte 0x80000010
_08094474: .4byte gCurTask
_08094478: .4byte sub_80946F0
_0809447C:
	strb r0, [r5, #4]
_0809447E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start SoundTest_DrawSongName
SoundTest_DrawSongName: @ 0x08094488
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	movs r5, #0
	ldr r3, _0809453C @ =sSongNames
	ldr r2, [r6, #8]
	movs r0, #0
	ldrsh r1, [r2, r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3     @ r0 = &sSongNames[i]
	ldrb r0, [r0]       @ r0 = sSongNames[i].strlen
	cmp r5, r0
	bhs _08094530
	mov sb, r3
	movs r1, #1
	add r1, sb
	mov r8, r1
	ldr r7, _08094540 @ =gUnknown_080D8A84
_080944B4:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x1c
	adds r4, r6, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r5, r0
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #0x30
	beq _08094516
	ldrh r0, [r7]
	strh r0, [r4, #0xc]
	ldr r0, [r6, #8]
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r5, r0
	add r0, r8
	ldrb r0, [r0]
	ldrb r1, [r7, #2]
	adds r0, r0, r1
	subs r0, #0x20
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	ldr r0, _08094544 @ =gBgScrollRegs
	ldrh r1, [r0, #4]
	ldr r0, [r6, #0x10]
	asrs r0, r0, #8
	subs r0, r0, r1
	lsls r1, r5, #3
	adds r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r6, #0x14]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08094516:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r2, [r6, #8]
	movs r0, #0
	ldrsh r1, [r2, r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, sb
	ldrb r0, [r0]
	cmp r5, r0
	blo _080944B4
_08094530:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809453C: .4byte sSongNames
_08094540: .4byte gUnknown_080D8A84
_08094544: .4byte gBgScrollRegs

	thumb_func_start Task_SoundTest
Task_SoundTest: @ 0x08094548
	push {r4, r5, r6, lr}
	ldr r6, _0809458C @ =gCurTask
	ldr r0, [r6]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldr r0, _08094590 @ =gBgScrollRegs
	movs r2, #4
	ldrsh r1, [r0, r2]
	movs r0, #0x1e
	rsbs r0, r0, #0
	cmp r1, r0
	ble _08094584
	ldr r3, _08094594 @ =0x03000018
	adds r0, r4, r3
	ldr r1, [r5, #0xc]
	adds r3, #0x88
	adds r2, r4, r3
	ldr r2, [r2]
	bl CreateSoundTestUI
	ldr r2, _08094598 @ =0x0300024C
	adds r1, r4, r2
	str r0, [r1]
	movs r0, #1
	str r0, [r5]
	ldr r1, [r6]
	ldr r0, _0809459C @ =Task_8093AB0
	str r0, [r1, #8]
_08094584:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809458C: .4byte gCurTask
_08094590: .4byte gBgScrollRegs
_08094594: .4byte 0x03000018
_08094598: .4byte 0x0300024C
_0809459C: .4byte Task_8093AB0

	thumb_func_start sub_80945A0
sub_80945A0: @ 0x080945A0
	push {r4, lr}
	ldr r3, _08094600 @ =gBgScrollRegs
	movs r1, #4
	ldrsh r2, [r3, r1]
	movs r1, #0x18
	subs r1, r1, r2
	str r1, [r0, #0x60]
	movs r4, #6
	ldrsh r2, [r3, r4]
	movs r1, #0x87
	subs r1, r1, r2
	str r1, [r0, #0x64]
	movs r2, #4
	ldrsh r1, [r3, r2]
	movs r2, #0x19
	subs r1, r2, r1
	str r1, [r0, #0x68]
	movs r4, #6
	ldrsh r1, [r3, r4]
	subs r2, r2, r1
	str r2, [r0, #0x6c]
	movs r2, #4
	ldrsh r1, [r3, r2]
	rsbs r1, r1, #0
	adds r1, #0x50
	str r1, [r0, #0x78]
	movs r4, #6
	ldrsh r1, [r3, r4]
	rsbs r1, r1, #0
	adds r1, #0x5c
	str r1, [r0, #0x7c]
	adds r2, r0, #0
	adds r2, #0x90
	movs r4, #4
	ldrsh r1, [r3, r4]
	rsbs r1, r1, #0
	adds r1, #0x50
	str r1, [r2]
	adds r0, #0x94
	movs r2, #6
	ldrsh r1, [r3, r2]
	rsbs r1, r1, #0
	adds r1, #0x5c
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08094600: .4byte gBgScrollRegs

	thumb_func_start sub_8094604
sub_8094604: @ 0x08094604
	push {lr}
	adds r1, r0, #0
	adds r2, r1, #0
	adds r2, #0x88
	ldr r0, [r2]
	ldr r3, _0809462C @ =0x000009FF
	cmp r0, r3
	bgt _08094620
	adds r0, #0x60
	str r0, [r2]
	cmp r0, r3
	ble _08094620
	movs r0, #0
	str r0, [r2]
_08094620:
	adds r1, #0x8c
	movs r0, #0
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0809462C: .4byte 0x000009FF

	thumb_func_start sub_8094630
sub_8094630: @ 0x08094630
	push {lr}
	adds r2, r0, #0
	adds r2, #0xf4
	ldr r3, _08094660 @ =gUnknown_080D76C0
	ldrb r1, [r0, #4]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrh r1, [r1]
	strh r1, [r2, #0xc]
	ldrb r1, [r0, #4]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrb r1, [r1, #2]
	strb r1, [r2, #0x1a]
	ldr r1, [r0, #0x68]
	strh r1, [r2, #0x10]
	ldr r0, [r0, #0x6c]
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	pop {r0}
	bx r0
	.align 2, 0
_08094660: .4byte gUnknown_080D76C0

	thumb_func_start sub_8094664
sub_8094664: @ 0x08094664
	push {lr}
	sub sp, #0x10
	movs r1, #0x26
	ldrsh r2, [r0, r1]
	movs r1, #0x40
	str r1, [sp]
	ldr r1, [r0, #0x78]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #4]
	ldr r0, [r0, #0x7c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, _08094694 @ =gBgAffineRegs
	str r0, [sp, #0xc]
	movs r0, #0
	adds r1, r2, #0
	movs r3, #0x40
	bl sa2__sub_8003EE4
	add sp, #0x10
	pop {r0}
	bx r0
	.align 2, 0
_08094694: .4byte gBgAffineRegs
    
	thumb_func_start TaskDestructor_SoundTest
TaskDestructor_SoundTest: @ 0x08094698
	bx lr
	.align 2, 0

	thumb_func_start CreateSoundTestUI
CreateSoundTestUI: @ 0x0809469C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	ldr r0, _080946E4 @ =Task_SoundTestUI_Init
	movs r1, #0xf7
	lsls r1, r1, #2
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _080946E8 @ =TaskDestructor_SoundTestUI
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r1, r1, r2
	str r4, [r1]
	str r5, [r1, #8]
	movs r2, #0
	strb r2, [r1, #4]
	strh r2, [r1, #0xc]
	movs r2, #0x8c
	lsls r2, r2, #6
	str r2, [r1, #0x10]
	movs r2, #0xf0
	lsls r2, r2, #6
	str r2, [r1, #0x14]
	str r6, [r1, #0x18]
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080946E4: .4byte Task_SoundTestUI_Init
_080946E8: .4byte TaskDestructor_SoundTestUI

	thumb_func_start TaskDestructor_SoundTestUI
TaskDestructor_SoundTestUI: @ 0x080946EC
	bx lr
	.align 2, 0

	thumb_func_start sub_80946F0
sub_80946F0: @ 0x080946F0
	push {r4, lr}
	ldr r0, _08094720 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _08094724 @ =gBgScrollRegs
	movs r3, #4
	ldrsh r1, [r0, r3]
	movs r0, #0x14
	rsbs r0, r0, #0
	cmp r1, r0
	blt _08094728
	movs r0, #1
	strb r0, [r4, #4]
	adds r0, r4, #0
	bl SoundTest_DrawSongName
	adds r0, r4, #0
	bl sub_809473C
	b _08094734
	.align 2, 0
_08094720: .4byte gCurTask
_08094724: .4byte gBgScrollRegs
_08094728:
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _08094734
	adds r0, r2, #0
	bl TaskDestroy
_08094734:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_809473C
sub_809473C: @ 0x0809473C
	bx lr
	.align 2, 0

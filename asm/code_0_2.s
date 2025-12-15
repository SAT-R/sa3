.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ --- screen_fade ---

@ This is almost like the following, but ASM is slightly different:
@ In SA2: src/game/screen_fade.c : UpdateScreenFade (0x0802D4CC)
	thumb_func_start UpdateScreenFade
UpdateScreenFade: @ 0x080213FC
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #0
	beq _08021434
	ldr r2, _0802142C @ =gDispCnt
	ldrh r0, [r2]
	movs r4, #0x80
	lsls r4, r4, #7
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08021430 @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r1, #2]
	movs r0, #0xa0
	strh r0, [r1, #6]
	ldrh r2, [r1, #8]
	movs r4, #0xfc
	lsls r4, r4, #6
	adds r0, r4, #0
	b _08021450
	.align 2, 0
_0802142C: .4byte gDispCnt
_08021430: .4byte gWinRegs
_08021434:
	ldr r2, _0802147C @ =gDispCnt
	ldrh r0, [r2]
	movs r4, #0x80
	lsls r4, r4, #6
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08021480 @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	ldrh r2, [r1, #8]
	movs r0, #0x3f
_08021450:
	orrs r0, r2
	strh r0, [r1, #8]
	ldrh r2, [r1, #0xa]
	movs r0, #0x1f
	orrs r0, r2
	strh r0, [r1, #0xa]
	ldr r1, _08021484 @ =gBldRegs
	ldrh r0, [r3, #8]
	strh r0, [r1]
	ldrh r0, [r3, #0xa]
	strh r0, [r1, #2]
	ldrh r2, [r3, #2]
	movs r0, #1
	ands r0, r2
	adds r5, r1, #0
	adds r6, r2, #0
	cmp r0, #0
	beq _08021488
	ldrh r0, [r3, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	b _08021492
	.align 2, 0
_0802147C: .4byte gDispCnt
_08021480: .4byte gWinRegs
_08021484: .4byte gBldRegs
_08021488:
	ldrh r1, [r3, #4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x18
	movs r0, #0x20
	subs r0, r0, r1
_08021492:
	strh r0, [r5, #4]
	ldrh r1, [r3, #4]
	adds r2, r5, #0
	ldrh r0, [r2, #4]
	cmp r0, #0x1f
	bls _080214A2
	movs r0, #0x20
	strh r0, [r2, #4]
_080214A2:
	ldrh r0, [r2, #4]
	lsrs r0, r0, #1
	strh r0, [r2, #4]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	ldr r4, _080214C8 @ =0x00001FFF
	cmp r0, r4
	ble _080214D2
	movs r0, #0x80
	lsls r0, r0, #6
	strh r0, [r3, #4]
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	beq _080214CC
	movs r0, #0x10
	strh r0, [r2, #4]
	b _080214CE
	.align 2, 0
_080214C8: .4byte 0x00001FFF
_080214CC:
	strh r0, [r5, #4]
_080214CE:
	movs r0, #1
	b _080214E8
_080214D2:
	ldrh r0, [r3, #6]
	adds r0, r1, r0
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r4
	ble _080214E6
	movs r0, #0x80
	lsls r0, r0, #6
	strh r0, [r3, #4]
_080214E6:
	movs r0, #0
_080214E8:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

@ In SA2: src/game/screen_fade.c : ScreenFadeUpdateValues (0x0802D5A0)
	thumb_func_start ScreenFadeUpdateValues
ScreenFadeUpdateValues: @ 0x080214F0
	push {r4, lr}
	adds r3, r0, #0
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #0
	beq _08021528
	ldr r2, _08021520 @ =gDispCnt
	ldrh r0, [r2]
	movs r4, #0x80
	lsls r4, r4, #7
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08021524 @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r1, #2]
	movs r0, #0xa0
	strh r0, [r1, #6]
	ldrh r2, [r1, #8]
	movs r4, #0xfc
	lsls r4, r4, #6
	adds r0, r4, #0
	b _08021544
	.align 2, 0
_08021520: .4byte gDispCnt
_08021524: .4byte gWinRegs
_08021528:
	ldr r2, _08021570 @ =gDispCnt
	ldrh r0, [r2]
	movs r4, #0x80
	lsls r4, r4, #6
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08021574 @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	ldrh r2, [r1, #8]
	movs r0, #0x3f
_08021544:
	orrs r0, r2
	strh r0, [r1, #8]
	ldrh r2, [r1, #0xa]
	movs r0, #0x1f
	orrs r0, r2
	strh r0, [r1, #0xa]
	ldr r1, _08021578 @ =gBldRegs
	ldrh r0, [r3, #8]
	strh r0, [r1]
	ldrh r0, [r3, #0xa]
	strh r0, [r1, #2]
	ldrh r2, [r3, #2]
	movs r0, #1
	ands r0, r2
	adds r2, r1, #0
	cmp r0, #0
	beq _0802157C
	ldrh r0, [r3, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	b _08021586
	.align 2, 0
_08021570: .4byte gDispCnt
_08021574: .4byte gWinRegs
_08021578: .4byte gBldRegs
_0802157C:
	ldrh r1, [r3, #4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x18
	movs r0, #0x20
	subs r0, r0, r1
_08021586:
	strh r0, [r2, #4]
	adds r1, r2, #0
	ldrh r0, [r1, #4]
	cmp r0, #0x1f
	bls _08021594
	movs r0, #0x20
	strh r0, [r1, #4]
_08021594:
	ldrh r0, [r2, #4]
	lsrs r0, r0, #1
	strh r0, [r2, #4]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_80215A0
sub_80215A0: @ 0x080215A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	ldr r1, _080215D4 @ =gUnknown_080CEE20
	add r0, sp, #4
	movs r2, #5
	bl memcpy
	add r4, sp, #0xc
	ldr r1, _080215D8 @ =gUnknown_080CEE25
	adds r0, r4, #0
	movs r2, #0x19
	bl memcpy
	ldr r1, _080215DC @ =gStageData
	ldrb r0, [r1, #0xa]
	subs r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080215E0
	movs r0, #0
	b _080219C8
	.align 2, 0
_080215D4: .4byte gUnknown_080CEE20
_080215D8: .4byte gUnknown_080CEE25
_080215DC: .4byte gStageData
_080215E0:
	ldrb r0, [r1, #3]
	cmp r0, #6
	bne _080215EC
	bl sub_8021EE8
	b _080219C8
_080215EC:
	ldrh r0, [r1, #0xe]
	cmp r0, #0xb
	bne _08021620
	ldr r0, _08021618 @ =sub_8022868
	movs r1, #0xd3
	lsls r1, r1, #2
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r3, _0802161C @ =sub_80227A4
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #0x28]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov sl, r1
	movs r0, #1
	b _08021642
	.align 2, 0
_08021618: .4byte sub_8022868
_0802161C: .4byte sub_80227A4
_08021620:
	ldr r0, _080218A4 @ =sub_8022868
	movs r1, #0xb5
	lsls r1, r1, #2
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r3, _080218A8 @ =sub_80227A4
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #0x28]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov sl, r1
	movs r0, #0
_08021642:
	strb r0, [r1, #1]
	movs r0, #0x10
	mov r1, sl
	strb r0, [r1]
	ldr r6, _080218AC @ =0x06013800
	movs r2, #0
	ldr r0, _080218B0 @ =gPlayers
	mov r8, r0
	ldr r4, _080218B4 @ =gUnknown_080CECF8
	movs r5, #0
	movs r3, #0
_08021658:
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, #4
	mov r1, sl
	adds r7, r1, r0
	lsls r0, r2, #6
	adds r0, r6, r0
	str r0, [r7]
	lsls r1, r2, #3
	adds r1, r1, r4
	ldrh r0, [r1, #4]
	strh r0, [r7, #0xc]
	ldrb r0, [r1, #6]
	strb r0, [r7, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r7, #0x14]
	strh r3, [r7, #0xe]
	strh r3, [r7, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	add r0, sp, #0x30
	strb r1, [r0]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r1, #0x10
	strb r1, [r7, #0x1c]
	strb r5, [r7, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x20]
	str r3, [r7, #8]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xb
	bls _08021658
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r6, r6, r1
	ldr r2, _080218B8 @ =gStageData
	ldrb r0, [r2, #6]
	lsls r2, r0, #2
	adds r2, r2, r0
	lsls r2, r2, #2
	adds r2, r2, r0
	lsls r2, r2, #4
	add r2, r8
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
	add r0, r8
	str r0, [sp, #0x2c]
	movs r7, #0xf2
	lsls r7, r7, #1
	add r7, sl
	str r6, [r7]
	movs r4, #0
	movs r5, #0
	ldr r0, _080218BC @ =0x0000058F
	strh r0, [r7, #0xc]
	adds r2, #0x2a
	str r2, [sp, #0x34]
	ldrb r0, [r2]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	add r0, sp
	adds r0, #4
	ldrb r0, [r0]
	strb r0, [r7, #0x1a]
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r7, #0x14]
	strh r5, [r7, #0xe]
	strh r5, [r7, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	add r2, sp, #0x38
	strb r1, [r2]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r0, #0x10
	mov sb, r0
	mov r1, sb
	strb r1, [r7, #0x1c]
	strb r4, [r7, #0x1f]
	movs r2, #1
	rsbs r2, r2, #0
	mov r8, r2
	str r2, [r7, #0x20]
	str r5, [r7, #8]
	ldr r1, _080218B8 @ =gStageData
	ldrb r0, [r1, #9]
	cmp r0, #8
	bne _0802172A
	movs r0, #5
	strb r0, [r7, #0x1a]
_0802172A:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r6, #0xc0
	movs r7, #0x83
	lsls r7, r7, #2
	add r7, sl
	str r6, [r7]
	ldr r2, _080218BC @ =0x0000058F
	strh r2, [r7, #0xc]
	ldr r0, [sp, #0x2c]
	adds r0, #0x2a
	str r0, [sp, #0x3c]
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	add r0, sp
	adds r0, #4
	ldrb r0, [r0]
	strb r0, [r7, #0x1a]
	movs r1, #0xc0
	lsls r1, r1, #1
	strh r1, [r7, #0x14]
	strh r5, [r7, #0xe]
	strh r5, [r7, #0x16]
	ldrb r0, [r7, #0x1b]
	add r2, sp, #0x38
	ldrb r2, [r2]
	orrs r0, r2
	strb r0, [r7, #0x1b]
	mov r0, sb
	strb r0, [r7, #0x1c]
	strb r4, [r7, #0x1f]
	mov r1, r8
	str r1, [r7, #0x20]
	str r5, [r7, #8]
	ldr r2, _080218B8 @ =gStageData
	ldrb r0, [r2, #9]
	cmp r0, #8
	bne _0802177E
	movs r0, #6
	strb r0, [r7, #0x1a]
_0802177E:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r6, #0xc0
	ldr r1, _080218B8 @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	beq _080217C4
	movs r7, #0x8d
	lsls r7, r7, #2
	add r7, sl
	str r6, [r7]
	ldr r0, _080218C0 @ =0x0000058E
	strh r0, [r7, #0xc]
	strb r4, [r7, #0x1a]
	movs r2, #0xc0
	lsls r2, r2, #1
	strh r2, [r7, #0x14]
	strh r5, [r7, #0xe]
	strh r5, [r7, #0x16]
	ldrb r0, [r7, #0x1b]
	add r1, sp, #0x38
	ldrb r1, [r1]
	orrs r0, r1
	strb r0, [r7, #0x1b]
	mov r2, sb
	strb r2, [r7, #0x1c]
	strb r4, [r7, #0x1f]
	mov r0, r8
	str r0, [r7, #0x20]
	str r5, [r7, #8]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r6, #0x80
_080217C4:
	movs r7, #0x97
	lsls r7, r7, #2
	add r7, sl
	str r6, [r7]
	ldr r0, _080218C4 @ =0x0000058C
	strh r0, [r7, #0xc]
	ldr r1, [sp, #0x3c]
	ldrb r2, [r1]
	lsls r2, r2, #0x1c
	lsrs r2, r2, #0x1c
	ldr r0, [sp, #0x34]
	ldrb r1, [r0]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r2, r2, r0
	add r2, sp
	adds r2, #0xc
	ldrb r0, [r2]
	strb r0, [r7, #0x1a]
	movs r1, #0xc0
	lsls r1, r1, #1
	strh r1, [r7, #0x14]
	strh r5, [r7, #0xe]
	strh r5, [r7, #0x16]
	ldrb r0, [r7, #0x1b]
	add r2, sp, #0x30
	ldrb r2, [r2]
	orrs r0, r2
	strb r0, [r7, #0x1b]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	strb r4, [r7, #0x1f]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r7, #0x20]
	str r5, [r7, #8]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	movs r2, #0x90
	lsls r2, r2, #1
	adds r6, r6, r2
	movs r7, #0xa1
	lsls r7, r7, #2
	add r7, sl
	str r6, [r7]
	ldr r0, _080218C8 @ =0x0000058D
	strh r0, [r7, #0xc]
	strb r4, [r7, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r7, #0x14]
	strh r5, [r7, #0xe]
	strh r5, [r7, #0x16]
	ldrb r0, [r7, #0x1b]
	add r1, sp, #0x30
	ldrb r1, [r1]
	orrs r0, r1
	strb r0, [r7, #0x1b]
	movs r2, #0x10
	strb r2, [r7, #0x1c]
	strb r4, [r7, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x20]
	str r5, [r7, #8]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	movs r7, #0xab
	lsls r7, r7, #2
	add r7, sl
	ldr r1, _080218B8 @ =gStageData
	ldrb r0, [r1, #0xa]
	cmp r0, #2
	bhi _080218CC
	ldrb r0, [r1, #9]
	cmp r0, #6
	bhi _080218CC
	movs r0, #0x20
	bl VramMalloc
	str r0, [r7]
	movs r0, #0xb2
	lsls r0, r0, #3
	strh r0, [r7, #0xc]
	ldr r2, _080218B8 @ =gStageData
	ldrb r0, [r2, #9]
	strb r0, [r7, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r7, #0x14]
	strh r5, [r7, #0xe]
	strh r5, [r7, #0x16]
	ldrb r0, [r7, #0x1b]
	add r1, sp, #0x30
	ldrb r1, [r1]
	orrs r0, r1
	strb r0, [r7, #0x1b]
	movs r2, #0x10
	strb r2, [r7, #0x1c]
	strb r4, [r7, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x20]
	str r5, [r7, #8]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	b _080218D0
	.align 2, 0
_080218A4: .4byte sub_8022868
_080218A8: .4byte sub_80227A4
_080218AC: .4byte 0x06013800
_080218B0: .4byte gPlayers
_080218B4: .4byte gUnknown_080CECF8
_080218B8: .4byte gStageData
_080218BC: .4byte 0x0000058F
_080218C0: .4byte 0x0000058E
_080218C4: .4byte 0x0000058C
_080218C8: .4byte 0x0000058D
_080218CC:
	movs r0, #0
	str r0, [r7]
_080218D0:
	mov r1, sl
	ldrb r0, [r1, #1]
	cmp r0, #1
	bne _080219C6
	ldr r0, _080219D8 @ =gStageData
	ldrb r6, [r0, #9]
	lsls r6, r6, #0x10
	lsrs r0, r6, #0x10
	bl GetChaoCount
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r7, #0xb5
	lsls r7, r7, #2
	add r7, sl
	ldr r4, _080219DC @ =gUnknown_080CED58
	lsrs r6, r6, #0xd
	adds r4, r6, r4
	ldr r0, [r4]
	bl VramMalloc
	str r0, [r7]
	ldrh r0, [r4, #4]
	movs r2, #0
	mov r8, r2
	strh r0, [r7, #0xc]
	ldrb r0, [r4, #6]
	strb r0, [r7, #0x1a]
	movs r0, #0xc0
	strh r0, [r7, #0x14]
	mov r1, r8
	strh r1, [r7, #0xe]
	strh r1, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r2, #0x10
	mov sb, r2
	mov r0, sb
	strb r0, [r7, #0x1c]
	movs r1, #0
	strb r1, [r7, #0x1f]
	movs r4, #1
	rsbs r4, r4, #0
	str r4, [r7, #0x20]
	mov r2, r8
	str r2, [r7, #8]
	movs r0, #0xa0
	strh r0, [r7, #0x10]
	movs r0, #0x28
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	movs r7, #0xbf
	lsls r7, r7, #2
	add r7, sl
	ldr r0, _080219E0 @ =gUnknown_080CED90
	lsls r5, r5, #0x10
	asrs r5, r5, #0xd
	adds r5, r5, r0
	ldr r0, [r5]
	bl VramMalloc
	str r0, [r7]
	ldrh r0, [r5, #4]
	strh r0, [r7, #0xc]
	ldrb r0, [r5, #6]
	strb r0, [r7, #0x1a]
	movs r0, #0xc0
	strh r0, [r7, #0x14]
	mov r1, r8
	strh r1, [r7, #0xe]
	strh r1, [r7, #0x16]
	adds r0, r4, #0
	strb r0, [r7, #0x1b]
	mov r2, sb
	strb r2, [r7, #0x1c]
	movs r0, #0
	strb r0, [r7, #0x1f]
	str r4, [r7, #0x20]
	mov r1, r8
	str r1, [r7, #8]
	movs r0, #0xb4
	strh r0, [r7, #0x10]
	movs r5, #0x3a
	strh r5, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	movs r7, #0xc9
	lsls r7, r7, #2
	add r7, sl
	ldr r0, _080219E4 @ =gUnknown_080CEDE8
	adds r6, r6, r0
	ldr r0, [r6]
	bl VramMalloc
	str r0, [r7]
	ldrh r0, [r6, #4]
	strh r0, [r7, #0xc]
	ldrb r0, [r6, #6]
	strb r0, [r7, #0x1a]
	movs r2, #0xc0
	strh r2, [r7, #0x14]
	mov r0, r8
	strh r0, [r7, #0xe]
	strh r0, [r7, #0x16]
	adds r0, r4, #0
	strb r0, [r7, #0x1b]
	mov r1, sb
	strb r1, [r7, #0x1c]
	movs r2, #0
	strb r2, [r7, #0x1f]
	str r4, [r7, #0x20]
	mov r0, r8
	str r0, [r7, #8]
	movs r0, #0xd0
	strh r0, [r7, #0x10]
	strh r5, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
_080219C6:
	ldr r0, [sp, #0x28]
_080219C8:
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080219D8: .4byte gStageData
_080219DC: .4byte gUnknown_080CED58
_080219E0: .4byte gUnknown_080CED90
_080219E4: .4byte gUnknown_080CEDE8

	thumb_func_start sub_80219E8
sub_80219E8: @ 0x080219E8
	push {r4, lr}
	ldr r0, _08021A60 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	movs r2, #0
	movs r4, #0xff
_080219FA:
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, #4
	adds r1, r3, r0
	ldrb r0, [r1, #0x1b]
	orrs r0, r4
	strb r0, [r1, #0x1b]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xb
	bls _080219FA
	movs r0, #0xf2
	lsls r0, r0, #1
	adds r1, r3, r0
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #0x83
	lsls r0, r0, #2
	adds r1, r3, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	movs r0, #0x8d
	lsls r0, r0, #2
	adds r1, r3, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	movs r0, #0x97
	lsls r0, r0, #2
	adds r1, r3, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	movs r0, #0xa1
	lsls r0, r0, #2
	adds r1, r3, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	movs r0, #0xab
	lsls r0, r0, #2
	adds r1, r3, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08021A60: .4byte gCurTask

	thumb_func_start sub_8021A64
sub_8021A64: @ 0x08021A64
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r2, _08021D30 @ =gStageData
	adds r0, r2, #0
	adds r0, #0x87
	ldrb r0, [r0]
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, _08021D34 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov sl, r1
	ldrb r1, [r1]
	mov sb, r1
	ldrb r0, [r2, #0xa]
	cmp r0, #2
	bls _08021A9C
	ldrb r0, [r2, #9]
	cmp r0, #6
	bls _08021AA8
_08021A9C:
	ldrb r0, [r2, #9]
	cmp r0, #7
	beq _08021AA8
	cmp r0, #8
	beq _08021AA8
	b _08021D54
_08021AA8:
	ldr r6, _08021D30 @ =gStageData
	adds r7, r6, #0
	adds r7, #0xae
	ldrh r4, [r7]
	adds r0, r4, #0
	movs r1, #0x3c
	bl Div
	mov r8, r0
	movs r1, #0x3c
	bl Div
	str r0, [sp]
	ldr r2, _08021D38 @ =sFrameCountPerSecond
	lsls r1, r0, #1
	adds r0, r1, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	mov r3, r8
	subs r3, r3, r0
	mov r8, r3
	lsls r0, r3, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r4, r4, r0
	ldr r0, _08021D3C @ =gUnknown_080CFA28
	adds r1, r1, r0
	ldrh r0, [r1]
	subs r5, r4, r0
	ldrb r0, [r6, #2]
	cmp r0, #0
	bne _08021B16
	ldrh r1, [r7]
	ldr r0, _08021D40 @ =0x00007E8F
	cmp r1, r0
	bls _08021B00
	ldr r0, [r6, #0x1c]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08021B00
	movs r3, #1
	str r3, [sp, #8]
_08021B00:
	ldr r0, _08021D30 @ =gStageData
	adds r0, #0xae
	ldrh r1, [r0]
	ldr r0, _08021D44 @ =0x000087EF
	cmp r1, r0
	bls _08021B16
	cmp r5, #0
	bne _08021B16
	movs r0, #0x8b
	bl m4aSongNumStart
_08021B16:
	ldr r4, _08021D48 @ =gUnknown_080CF936
	lsls r5, r5, #1
	adds r0, r5, r4
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r6, _08021D4C @ =0xFFFFFE74
	adds r0, r0, r6
	mov r1, sl
	adds r7, r1, r0
	movs r0, #0x90
	strh r0, [r7, #0x10]
	movs r0, #0x12
	mov r2, sb
	lsls r2, r2, #0x10
	str r2, [sp, #0x10]
	asrs r3, r2, #0x10
	str r3, [sp, #0xc]
	subs r3, r0, r3
	mov sb, r3
	strh r3, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	mov r0, sp
	ldrb r0, [r0, #8]
	strb r0, [r7, #0x1f]
	adds r0, r7, #0
	bl DisplaySprite
	movs r1, #0
	strb r1, [r7, #0x1f]
	adds r4, #1
	adds r5, r5, r4
	ldrb r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r6
	mov r2, sl
	adds r7, r2, r0
	movs r0, #0x98
	strh r0, [r7, #0x10]
	mov r3, sb
	strh r3, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	mov r0, sp
	ldrb r0, [r0, #8]
	strb r0, [r7, #0x1f]
	adds r0, r7, #0
	bl DisplaySprite
	movs r1, #0
	strb r1, [r7, #0x1f]
	movs r7, #0xde
	lsls r7, r7, #1
	add r7, sl
	movs r0, #0x89
	strh r0, [r7, #0x10]
	movs r6, #0x11
	ldr r2, [sp, #0xc]
	subs r6, r6, r2
	strh r6, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	ldr r4, _08021D50 @ =gUnknown_080CF8BC
	mov r3, r8
	lsls r5, r3, #1
	adds r0, r5, r4
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #4
	mov r1, sl
	adds r7, r1, r0
	movs r0, #0x7a
	strh r0, [r7, #0x10]
	mov r2, sb
	strh r2, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	mov r3, sp
	ldrb r3, [r3, #8]
	strb r3, [r7, #0x1f]
	adds r0, r7, #0
	bl DisplaySprite
	movs r0, #0
	strb r0, [r7, #0x1f]
	adds r4, #1
	adds r5, r5, r4
	ldrb r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #4
	mov r1, sl
	adds r7, r1, r0
	movs r0, #0x82
	strh r0, [r7, #0x10]
	mov r2, sb
	strh r2, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	mov r3, sp
	ldrb r3, [r3, #8]
	strb r3, [r7, #0x1f]
	adds r0, r7, #0
	bl DisplaySprite
	movs r0, #0
	strb r0, [r7, #0x1f]
	movs r7, #0xca
	lsls r7, r7, #1
	add r7, sl
	movs r0, #0x75
	strh r0, [r7, #0x10]
	strh r6, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	ldr r1, [sp]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #4
	mov r2, sl
	adds r7, r2, r0
	movs r0, #0x6e
	strh r0, [r7, #0x10]
	mov r3, sb
	strh r3, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	mov r0, sp
	ldrb r0, [r0, #8]
	strb r0, [r7, #0x1f]
	adds r0, r7, #0
	bl DisplaySprite
	movs r1, #0
	strb r1, [r7, #0x1f]
	movs r7, #0xa1
	lsls r7, r7, #2
	add r7, sl
	movs r0, #0x58
	strh r0, [r7, #0x10]
	movs r0, #7
	ldr r2, [sp, #0xc]
	subs r0, r0, r2
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	ldr r7, _08021D30 @ =gStageData
	adds r5, r7, #0
	adds r5, #0xac
	movs r3, #0
	ldrsh r4, [r5, r3]
	adds r0, r4, #0
	movs r1, #0x64
	bl Div
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r6, r0, #0
	movs r0, #0x64
	muls r0, r6, r0
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0xa
	bl Div
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #2
	adds r1, r1, r0
	str r1, [sp, #0x14]
	lsls r0, r1, #1
	subs r4, r4, r0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldrh r0, [r5]
	movs r5, #0
	ldr r1, [sp, #0x10]
	mov r8, r1
	cmp r0, #0
	bne _08021CBE
	ldr r0, [r7, #0x1c]
	movs r1, #0x10
	ands r0, r1
	rsbs r0, r0, #0
	lsrs r5, r0, #0x1f
_08021CBE:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	adds r0, #4
	mov r2, sl
	adds r7, r2, r0
	movs r0, #0x28
	strh r0, [r7, #0x10]
	mov r3, sb
	strh r3, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	strb r5, [r7, #0x1f]
	adds r0, r7, #0
	bl DisplaySprite
	movs r0, #0
	strb r0, [r7, #0x1f]
	ldr r1, [sp, #0x14]
	lsls r0, r1, #3
	adds r0, #4
	mov r2, sl
	adds r7, r2, r0
	movs r0, #0x30
	strh r0, [r7, #0x10]
	mov r3, sb
	strh r3, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	strb r5, [r7, #0x1f]
	adds r0, r7, #0
	bl DisplaySprite
	movs r0, #0
	strb r0, [r7, #0x1f]
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #4
	mov r1, sl
	adds r7, r1, r0
	movs r0, #0x38
	strh r0, [r7, #0x10]
	mov r2, sb
	strh r2, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	strb r5, [r7, #0x1f]
	adds r0, r7, #0
	bl DisplaySprite
	movs r3, #0
	strb r3, [r7, #0x1f]
	b _08021E1A
	.align 2, 0
_08021D30: .4byte gStageData
_08021D34: .4byte gCurTask
_08021D38: .4byte sFrameCountPerSecond
_08021D3C: .4byte gUnknown_080CFA28
_08021D40: .4byte 0x00007E8F
_08021D44: .4byte 0x000087EF
_08021D48: .4byte gUnknown_080CF936
_08021D4C: .4byte 0xFFFFFE74
_08021D50: .4byte gUnknown_080CF8BC
_08021D54:
	ldrb r0, [r2, #3]
	cmp r0, #5
	beq _08021D9C
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, _08021D98 @ =gLoadedSaveGame
	adds r0, #0x22
	ldrb r2, [r2, #9]
	adds r0, r0, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #4
	mov r1, sl
	adds r7, r1, r0
	mov r2, sb
	lsls r4, r2, #0x10
	lsrs r1, r4, #0xf
	movs r0, #0x24
	subs r0, r0, r1
	strh r0, [r7, #0x10]
	movs r0, #0x28
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	mov r8, r4
	b _08021DA6
	.align 2, 0
_08021D98: .4byte gLoadedSaveGame
_08021D9C:
	movs r3, #0
	str r3, [sp, #4]
	mov r0, sb
	lsls r0, r0, #0x10
	mov r8, r0
_08021DA6:
	movs r7, #0xab
	lsls r7, r7, #2
	add r7, sl
	ldr r0, [r7]
	cmp r0, #0
	beq _08021DCA
	movs r0, #0x70
	strh r0, [r7, #0x10]
	mov r1, r8
	asrs r0, r1, #0x10
	adds r0, #0x90
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_08021DCA:
	mov r2, sl
	ldrb r6, [r2, #1]
	cmp r6, #1
	bne _08021E1A
	movs r4, #0xb5
	lsls r4, r4, #2
	add r4, sl
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	movs r4, #0xbf
	lsls r4, r4, #2
	add r4, sl
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, _08021EE0 @ =gLoadedSaveGame
	adds r0, #0x32
	ldrb r0, [r0]
	ldr r1, _08021EE4 @ =gStageData
	ldrb r1, [r1, #9]
	asrs r0, r1
	ands r0, r6
	cmp r0, #0
	beq _08021E1A
	movs r4, #0xc9
	lsls r4, r4, #2
	add r4, sl
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08021E1A:
	ldr r1, _08021EE4 @ =gStageData
	ldrb r0, [r1, #3]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08021E58
	adds r0, r1, #0
	adds r0, #0xb4
	ldrb r1, [r0]
	cmp r1, #9
	bls _08021E34
	movs r1, #9
_08021E34:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #4
	mov r3, sl
	adds r7, r3, r0
	movs r0, #0x24
	strh r0, [r7, #0x10]
	mov r1, r8
	asrs r0, r1, #0x10
	adds r0, #0x9c
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_08021E58:
	movs r7, #0xf2
	lsls r7, r7, #1
	add r7, sl
	movs r6, #0
	movs r0, #5
	strh r0, [r7, #0x10]
	mov r2, r8
	asrs r5, r2, #0x10
	adds r4, r5, #0
	adds r4, #0x8d
	strh r4, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	movs r7, #0x83
	lsls r7, r7, #2
	add r7, sl
	movs r0, #0xf
	strh r0, [r7, #0x10]
	strh r4, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	movs r7, #0x97
	lsls r7, r7, #2
	add r7, sl
	lsls r4, r5, #1
	movs r0, #8
	subs r0, r0, r4
	strh r0, [r7, #0x10]
	strh r6, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	ldr r3, [sp, #4]
	cmp r3, #0
	beq _08021ED0
	movs r7, #0x8d
	lsls r7, r7, #2
	add r7, sl
	movs r0, #0xb
	subs r0, r0, r4
	strh r0, [r7, #0x10]
	movs r0, #0x18
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_08021ED0:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08021EE0: .4byte gLoadedSaveGame
_08021EE4: .4byte gStageData

	thumb_func_start sub_8021EE8
sub_8021EE8: @ 0x08021EE8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	ldr r1, _08022168 @ =gUnknown_080CEE20
	add r0, sp, #4
	movs r2, #5
	bl memcpy
	add r4, sp, #0xc
	ldr r1, _0802216C @ =gUnknown_080CEE25
	adds r0, r4, #0
	movs r2, #0x19
	bl memcpy
	ldr r0, _08022170 @ =sub_8022898
	movs r1, #0xd6
	lsls r1, r1, #2
	movs r2, #0x84
	lsls r2, r2, #6
	movs r3, #0
	str r3, [sp]
	bl TaskCreate
	str r0, [sp, #0x28]
	movs r0, #0x10
	mov r1, sb
	strb r0, [r1]
	ldr r2, [sp, #0x28]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov sb, r1
	movs r0, #2
	strb r0, [r1, #1]
	ldr r6, _08022174 @ =0x06013800
	movs r5, #0
	ldr r7, _08022178 @ =gUnknown_080CECF8
	movs r4, #0
	movs r2, #0
_08021F3E:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #4
	mov r1, sb
	adds r3, r1, r0
	lsls r0, r5, #6
	adds r0, r6, r0
	str r0, [r3]
	lsls r1, r5, #3
	adds r1, r1, r7
	ldrh r0, [r1, #4]
	strh r0, [r3, #0xc]
	ldrb r0, [r1, #6]
	strb r0, [r3, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r3, #0x14]
	strh r2, [r3, #0xe]
	strh r2, [r3, #0x16]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	strb r4, [r3, #0x1f]
	subs r0, #0x11
	str r0, [r3, #0x20]
	str r2, [r3, #8]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xb
	bls _08021F3E
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r6, r6, r2
	movs r5, #0
	movs r4, #0
	ldr r0, _0802217C @ =0x0000058F
	mov r8, r0
_08021F8E:
	lsls r1, r5, #2
	adds r1, r1, r5
	lsls r0, r1, #2
	adds r0, r0, r5
	lsls r0, r0, #4
	ldr r2, _08022180 @ =gPlayers
	adds r7, r0, r2
	lsls r1, r1, #3
	movs r0, #0xf2
	lsls r0, r0, #1
	adds r1, r1, r0
	mov r2, sb
	adds r3, r2, r1
	str r6, [r3]
	mov r0, r8
	strh r0, [r3, #0xc]
	adds r0, r7, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	add r0, sp
	adds r0, #4
	ldrb r0, [r0]
	strb r0, [r3, #0x1a]
	movs r7, #0xa0
	lsls r7, r7, #1
	strh r7, [r3, #0x14]
	strh r4, [r3, #0xe]
	strh r4, [r3, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	mov sl, r1
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r2, #0x10
	strb r2, [r3, #0x1c]
	movs r0, #0
	strb r0, [r3, #0x1f]
	str r1, [r3, #0x20]
	str r4, [r3, #8]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	adds r6, #0x80
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _08021F8E
	movs r3, #0xa1
	lsls r3, r3, #2
	add r3, sb
	str r6, [r3]
	movs r5, #0
	movs r4, #0
	ldr r1, _08022184 @ =0x000005E7
	strh r1, [r3, #0xc]
	strb r5, [r3, #0x1a]
	strh r7, [r3, #0x14]
	strh r4, [r3, #0xe]
	strh r4, [r3, #0x16]
	ldrb r0, [r3, #0x1b]
	mov r2, sl
	orrs r0, r2
	strb r0, [r3, #0x1b]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	strb r5, [r3, #0x1f]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r3, #0x20]
	movs r2, #0x80
	lsls r2, r2, #0xb
	mov r8, r2
	str r2, [r3, #8]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	adds r6, #0x80
	movs r3, #0xab
	lsls r3, r3, #2
	add r3, sb
	str r6, [r3]
	ldr r0, _08022184 @ =0x000005E7
	strh r0, [r3, #0xc]
	movs r0, #1
	strb r0, [r3, #0x1a]
	movs r1, #0xc0
	lsls r1, r1, #1
	strh r1, [r3, #0x14]
	strh r4, [r3, #0xe]
	strh r4, [r3, #0x16]
	ldrb r0, [r3, #0x1b]
	mov r2, sl
	orrs r0, r2
	strb r0, [r3, #0x1b]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	strb r5, [r3, #0x1f]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r3, #0x20]
	mov r2, r8
	str r2, [r3, #8]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	adds r6, #0x80
	ldr r0, _08022188 @ =gStageData
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08022180 @ =gPlayers
	adds r7, r0, r1
	adds r0, r7, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r2, _08022180 @ =gPlayers
	adds r1, r1, r2
	movs r3, #0xb8
	lsls r3, r3, #2
	add r3, sb
	str r6, [r3]
	ldr r0, _0802218C @ =0x0000058C
	strh r0, [r3, #0xc]
	adds r1, #0x2a
	ldrb r2, [r1]
	lsls r2, r2, #0x1c
	lsrs r2, r2, #0x1c
	adds r0, r7, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r2, r2, r0
	add r2, sp
	adds r2, #0xc
	ldrb r0, [r2]
	strb r0, [r3, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r3, #0x14]
	strh r4, [r3, #0xe]
	strh r4, [r3, #0x16]
	ldrb r0, [r3, #0x1b]
	mov r1, sl
	orrs r0, r1
	strb r0, [r3, #0x1b]
	movs r2, #0x10
	strb r2, [r3, #0x1c]
	strb r5, [r3, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x20]
	str r4, [r3, #8]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	movs r1, #0x90
	lsls r1, r1, #1
	adds r6, r6, r1
	movs r3, #0xc2
	lsls r3, r3, #2
	add r3, sb
	str r6, [r3]
	ldr r0, _08022190 @ =0x000005EB
	strh r0, [r3, #0xc]
	strb r5, [r3, #0x1a]
	movs r2, #0xc0
	lsls r2, r2, #1
	strh r2, [r3, #0x14]
	strh r4, [r3, #0xe]
	strh r4, [r3, #0x16]
	ldrb r0, [r3, #0x1b]
	mov r1, sl
	orrs r0, r1
	strb r0, [r3, #0x1b]
	movs r2, #0x10
	strb r2, [r3, #0x1c]
	strb r5, [r3, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x20]
	str r4, [r3, #8]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	adds r6, #0x80
	movs r3, #0xcc
	lsls r3, r3, #2
	add r3, sb
	str r6, [r3]
	ldr r0, _08022194 @ =0x000005EA
	strh r0, [r3, #0xc]
	strb r5, [r3, #0x1a]
	movs r1, #0xc0
	lsls r1, r1, #1
	strh r1, [r3, #0x14]
	strh r4, [r3, #0xe]
	strh r4, [r3, #0x16]
	ldrb r0, [r3, #0x1b]
	mov r2, sl
	orrs r0, r2
	strb r0, [r3, #0x1b]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	strb r5, [r3, #0x1f]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r3, #0x20]
	str r4, [r3, #8]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	ldr r0, [sp, #0x28]
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08022168: .4byte gUnknown_080CEE20
_0802216C: .4byte gUnknown_080CEE25
_08022170: .4byte sub_8022898
_08022174: .4byte 0x06013800
_08022178: .4byte gUnknown_080CECF8
_0802217C: .4byte 0x0000058F
_08022180: .4byte gPlayers
_08022184: .4byte 0x000005E7
_08022188: .4byte gStageData
_0802218C: .4byte 0x0000058C
_08022190: .4byte 0x000005EB
_08022194: .4byte 0x000005EA

	thumb_func_start sub_8022198
sub_8022198: @ 0x08022198
	push {r4, r5, lr}
	ldr r0, _08022230 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	movs r3, #0
	movs r4, #0xff
_080221AA:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r0, #4
	adds r2, r1, r0
	ldrb r0, [r2, #0x1b]
	orrs r0, r4
	strb r0, [r2, #0x1b]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xb
	bls _080221AA
	movs r3, #0
	movs r5, #0xf2
	lsls r5, r5, #1
	movs r4, #0xff
_080221CC:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r0, r0, r5
	adds r2, r1, r0
	ldrb r0, [r2, #0x1b]
	orrs r0, r4
	strb r0, [r2, #0x1b]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _080221CC
	movs r3, #0
	movs r5, #0xa1
	lsls r5, r5, #2
	movs r4, #0xff
_080221EE:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r0, r0, r5
	adds r2, r1, r0
	ldrb r0, [r2, #0x1b]
	orrs r0, r4
	strb r0, [r2, #0x1b]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	bls _080221EE
	movs r0, #0xb8
	lsls r0, r0, #2
	adds r2, r1, r0
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	movs r0, #0xc2
	lsls r0, r0, #2
	adds r2, r1, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r2, #0x1b]
	movs r0, #0xcc
	lsls r0, r0, #2
	adds r2, r1, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r2, #0x1b]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08022230: .4byte gCurTask

	thumb_func_start sub_8022234
sub_8022234: @ 0x08022234
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	ldr r0, _08022530 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov sl, r1
	ldrb r0, [r1]
	mov r8, r0
	ldr r7, _08022534 @ =gStageData
	adds r6, r7, #0
	adds r6, #0xae
	ldrh r4, [r6]
	adds r0, r4, #0
	movs r1, #0x3c
	bl Div
	str r0, [sp, #4]
	movs r1, #0x3c
	bl Div
	str r0, [sp]
	ldr r2, _08022538 @ =sFrameCountPerSecond
	lsls r1, r0, #1
	adds r0, r1, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldr r3, [sp, #4]
	subs r3, r3, r0
	str r3, [sp, #4]
	lsls r0, r3, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r4, r4, r0
	ldr r0, _0802253C @ =gUnknown_080CFA28
	adds r1, r1, r0
	ldrh r0, [r1]
	subs r5, r4, r0
	ldrh r2, [r6]
	ldr r0, _08022540 @ =0x00007E90
	movs r3, #0
	str r3, [sp, #0xc]
	cmp r2, r0
	bls _080222A6
	ldr r0, [r7, #0x1c]
	movs r1, #0x10
	ands r0, r1
	rsbs r0, r0, #0
	lsrs r0, r0, #0x1f
	str r0, [sp, #0xc]
_080222A6:
	ldr r0, _08022544 @ =0x000087EF
	cmp r2, r0
	bls _080222B6
	cmp r5, #0
	bne _080222B6
	movs r0, #0x8b
	bl m4aSongNumStart
_080222B6:
	ldr r4, _08022548 @ =gUnknown_080CF936
	lsls r5, r5, #1
	adds r0, r5, r4
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r6, _0802254C @ =0xFFFFFE74
	adds r0, r0, r6
	mov r1, sl
	adds r7, r1, r0
	movs r0, #0x90
	strh r0, [r7, #0x10]
	movs r0, #0x12
	mov r2, r8
	lsls r2, r2, #0x10
	str r2, [sp, #0x18]
	asrs r2, r2, #0x10
	mov r8, r2
	subs r2, r0, r2
	mov sb, r2
	strh r2, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	mov r3, sp
	ldrb r3, [r3, #0xc]
	strb r3, [r7, #0x1f]
	adds r0, r7, #0
	bl DisplaySprite
	movs r0, #0
	strb r0, [r7, #0x1f]
	adds r4, #1
	adds r5, r5, r4
	ldrb r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r6
	mov r1, sl
	adds r7, r1, r0
	movs r0, #0x98
	strh r0, [r7, #0x10]
	mov r2, sb
	strh r2, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	mov r3, sp
	ldrb r3, [r3, #0xc]
	strb r3, [r7, #0x1f]
	adds r0, r7, #0
	bl DisplaySprite
	movs r4, #0
	strb r4, [r7, #0x1f]
	movs r7, #0xde
	lsls r7, r7, #1
	add r7, sl
	movs r0, #0x89
	strh r0, [r7, #0x10]
	movs r6, #0x11
	mov r0, r8
	subs r6, r6, r0
	strh r6, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	ldr r4, _08022550 @ =gUnknown_080CF8BC
	ldr r1, [sp, #4]
	lsls r5, r1, #1
	adds r0, r5, r4
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #4
	mov r2, sl
	adds r7, r2, r0
	movs r0, #0x7a
	strh r0, [r7, #0x10]
	mov r3, sb
	strh r3, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	mov r0, sp
	ldrb r0, [r0, #0xc]
	strb r0, [r7, #0x1f]
	adds r0, r7, #0
	bl DisplaySprite
	movs r1, #0
	strb r1, [r7, #0x1f]
	adds r4, #1
	adds r5, r5, r4
	ldrb r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #4
	mov r2, sl
	adds r7, r2, r0
	movs r0, #0x82
	strh r0, [r7, #0x10]
	mov r3, sb
	strh r3, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	mov r4, sp
	ldrb r4, [r4, #0xc]
	strb r4, [r7, #0x1f]
	adds r0, r7, #0
	bl DisplaySprite
	movs r0, #0
	strb r0, [r7, #0x1f]
	movs r7, #0xca
	lsls r7, r7, #1
	add r7, sl
	movs r0, #0x75
	strh r0, [r7, #0x10]
	strh r6, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	ldr r1, [sp]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #4
	mov r2, sl
	adds r7, r2, r0
	movs r0, #0x6e
	strh r0, [r7, #0x10]
	mov r3, sb
	strh r3, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	mov r4, sp
	ldrb r4, [r4, #0xc]
	strb r4, [r7, #0x1f]
	adds r0, r7, #0
	bl DisplaySprite
	movs r0, #0
	strb r0, [r7, #0x1f]
	ldr r5, _08022534 @ =gStageData
	adds r5, #0xac
	movs r1, #0
	ldrsh r4, [r5, r1]
	adds r0, r4, #0
	movs r1, #0x64
	bl Div
	lsls r0, r0, #0x18
	asrs r6, r0, #0x18
	movs r0, #0x64
	muls r0, r6, r0
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0xa
	bl Div
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r1, r0, #2
	adds r1, r1, r0
	mov r8, r1
	lsls r0, r1, #1
	subs r4, r4, r0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp, #8]
	ldrh r0, [r5]
	movs r4, #0
	ldr r2, [sp, #0x18]
	str r2, [sp, #0x1c]
	cmp r0, #0
	bne _08022440
	ldr r3, _08022534 @ =gStageData
	ldr r0, [r3, #0x1c]
	movs r1, #0x10
	ands r0, r1
	rsbs r0, r0, #0
	lsrs r4, r0, #0x1f
_08022440:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	adds r0, #4
	mov r1, sl
	adds r7, r1, r0
	movs r0, #0x28
	strh r0, [r7, #0x10]
	mov r2, sb
	strh r2, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	strb r4, [r7, #0x1f]
	adds r0, r7, #0
	bl DisplaySprite
	movs r3, #0
	strb r3, [r7, #0x1f]
	mov r1, r8
	lsls r0, r1, #3
	adds r0, #4
	mov r2, sl
	adds r7, r2, r0
	movs r0, #0x30
	strh r0, [r7, #0x10]
	mov r3, sb
	strh r3, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	strb r4, [r7, #0x1f]
	adds r0, r7, #0
	bl DisplaySprite
	movs r0, #0
	strb r0, [r7, #0x1f]
	ldr r2, [sp, #8]
	lsls r1, r2, #0x18
	asrs r1, r1, #0x18
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #4
	mov r3, sl
	adds r7, r3, r0
	movs r0, #0x38
	strh r0, [r7, #0x10]
	mov r0, sb
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	strb r4, [r7, #0x1f]
	adds r0, r7, #0
	bl DisplaySprite
	movs r1, #0
	strb r1, [r7, #0x1f]
	ldr r0, _08022554 @ =gUnknown_080D1750
	ldr r2, _08022534 @ =gStageData
	ldrh r1, [r2, #0xe]
	lsls r1, r1, #2
	adds r0, r1, r0
	ldr r0, [r0]
	ldrh r3, [r0]
	str r3, [sp, #0x10]
	ldrh r0, [r0, #2]
	str r0, [sp, #0x14]
	ldr r0, _08022558 @ =gUnknown_080D191C
	adds r1, r1, r0
	ldr r0, [r1]
	ldrh r2, [r0]
	ldrh r1, [r0, #2]
	ldrb r0, [r0, #4]
	mov sb, r0
	ldr r4, [sp, #0x14]
	subs r4, r1, r4
	mov r8, r4
	cmp r0, #0
	bne _080224E6
	subs r3, r2, r3
	mov r8, r3
_080224E6:
	movs r3, #0
_080224E8:
	lsls r3, r3, #0x10
	asrs r2, r3, #0x10
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r0, r1, #3
	movs r4, #0xf2
	lsls r4, r4, #1
	adds r0, r0, r4
	mov r4, sl
	adds r7, r4, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	lsls r1, r1, #4
	ldr r0, _0802255C @ =gPlayers
	adds r6, r1, r0
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	adds r5, r3, #0
	cmp r0, #0
	beq _0802259E
	lsls r0, r1, #0x1b
	lsrs r0, r0, #0x1d
	cmp r0, #3
	bhi _0802259E
	mov r0, sb
	cmp r0, #0
	bne _08022560
	ldr r0, [r6, #0x10]
	asrs r0, r0, #8
	ldr r2, [sp, #0x10]
	subs r1, r0, r2
	b _08022568
	.align 2, 0
_08022530: .4byte gCurTask
_08022534: .4byte gStageData
_08022538: .4byte sFrameCountPerSecond
_0802253C: .4byte gUnknown_080CFA28
_08022540: .4byte 0x00007E90
_08022544: .4byte 0x000087EF
_08022548: .4byte gUnknown_080CF936
_0802254C: .4byte 0xFFFFFE74
_08022550: .4byte gUnknown_080CF8BC
_08022554: .4byte gUnknown_080D1750
_08022558: .4byte gUnknown_080D191C
_0802255C: .4byte gPlayers
_08022560:
	ldr r0, [r6, #0x14]
	asrs r0, r0, #8
	ldr r3, [sp, #0x14]
	subs r1, r0, r3
_08022568:
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #5
	mov r1, r8
	bl Div
	cmp r0, #0
	blt _08022580
	cmp r0, #0xe0
	ble _08022582
	movs r0, #0xe0
	b _08022582
_08022580:
	movs r0, #0
_08022582:
	adds r0, #8
	movs r1, #0
	strh r0, [r7, #0x10]
	ldr r4, [sp, #0x1c]
	asrs r0, r4, #0x10
	adds r0, #0x8d
	strh r0, [r7, #0x12]
	strb r1, [r7, #0x1f]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_0802259E:
	ldr r7, _08022660 @ =gStageData
	ldrb r0, [r7, #6]
	asrs r4, r5, #0x10
	cmp r0, r4
	beq _080225EC
	adds r6, #0x2b
	ldrb r1, [r6]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #0xc
	bne _080225EC
	adds r0, r4, #0
	bl sub_8022934
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080225EC
	ldrb r0, [r6]
	lsls r0, r0, #0x1e
	ldrb r1, [r7, #6]
	lsrs r0, r0, #0x1e
	movs r7, #0xab
	lsls r7, r7, #2
	add r7, sl
	cmp r1, r0
	bne _080225D8
	movs r7, #0xa1
	lsls r7, r7, #2
	add r7, sl
_080225D8:
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_8022664
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_080225EC:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	bgt _080225FC
	b _080224E8
_080225FC:
	movs r7, #0xb8
	lsls r7, r7, #2
	add r7, sl
	ldr r2, [sp, #0x1c]
	lsrs r5, r2, #0xf
	movs r4, #8
	subs r4, r4, r5
	movs r0, #0
	strh r4, [r7, #0x10]
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	movs r7, #0xc2
	lsls r7, r7, #2
	add r7, sl
	strh r4, [r7, #0x10]
	movs r0, #0x9a
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	movs r7, #0xcc
	lsls r7, r7, #2
	add r7, sl
	adds r5, #0xe8
	strh r5, [r7, #0x10]
	movs r0, #0x96
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08022660: .4byte gStageData

	thumb_func_start sub_8022664
sub_8022664: @ 0x08022664
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov sb, r1
	lsls r0, r0, #0x10
	ldr r1, _08022724 @ =gCurTask
	ldr r1, [r1]
	ldrh r3, [r1, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r1, r3
	mov r8, r1
	ldr r1, _08022728 @ =gStageData
	ldrb r1, [r1, #6]
	lsls r6, r1, #2
	adds r6, r6, r1
	lsls r6, r6, #2
	adds r6, r6, r1
	lsls r6, r6, #4
	ldr r2, _0802272C @ =gPlayers
	adds r6, r6, r2
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r1, r1, r2
	ldr r0, [r6, #0x10]
	ldr r2, [r1, #0x10]
	subs r0, r0, r2
	lsls r0, r0, #8
	lsrs r7, r0, #0x10
	ldr r0, [r6, #0x14]
	ldr r1, [r1, #0x14]
	subs r0, r0, r1
	lsls r0, r0, #8
	lsrs r5, r0, #0x10
	mov r0, sb
	strb r4, [r0, #0x1f]
	ldr r2, _08022730 @ =gNextFreeAffineIndex
	ldrb r0, [r2]
	ldr r1, _08022734 @ =0x00040020
	orrs r0, r1
	mov r1, sb
	str r0, [r1, #8]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r5, #0x10
	asrs r5, r0, #0x10
	asrs r0, r0, #0x12
	lsls r1, r7, #0x10
	asrs r4, r1, #0x10
	asrs r1, r1, #0x12
	str r3, [sp]
	bl sa2__sub_8004418
	ldr r2, _08022738 @ =0xFFFFFF00
	adds r0, r0, r2
	ldr r2, _0802273C @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	ldr r3, [sp]
	ldr r1, _08022740 @ =0x030002D4
	adds r3, r3, r1
	strh r0, [r3]
	rsbs r4, r4, #0
	ldr r1, [r6, #0x10]
	asrs r1, r1, #8
	ldr r2, _08022744 @ =gCamera
	ldr r0, [r2]
	subs r1, r1, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r4, r4, r1
	lsls r4, r4, #0x10
	rsbs r5, r5, #0
	ldr r0, [r6, #0x14]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	adds r5, r5, r0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsrs r7, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0xf
	bgt _08022748
	movs r7, #0x10
	b _0802274E
	.align 2, 0
_08022724: .4byte gCurTask
_08022728: .4byte gStageData
_0802272C: .4byte gPlayers
_08022730: .4byte gNextFreeAffineIndex
_08022734: .4byte 0x00040020
_08022738: .4byte 0xFFFFFF00
_0802273C: .4byte 0x000003FF
_08022740: .4byte 0x030002D4
_08022744: .4byte gCamera
_08022748:
	cmp r4, #0xe0
	ble _0802274E
	movs r7, #0xe0
_0802274E:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x17
	bgt _0802275A
	movs r5, #0x18
	b _08022760
_0802275A:
	cmp r0, #0x80
	ble _08022760
	movs r5, #0x80
_08022760:
	ldr r0, _0802279C @ =0x000002DA
	add r0, r8
	strh r7, [r0]
	movs r0, #0xb7
	lsls r0, r0, #2
	add r0, r8
	strh r5, [r0]
	ldr r0, _080227A0 @ =0x000002D6
	add r0, r8
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	movs r0, #0xb6
	lsls r0, r0, #2
	add r0, r8
	strh r1, [r0]
	movs r1, #0xb5
	lsls r1, r1, #2
	add r1, r8
	mov r0, sb
	bl TransformSprite
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802279C: .4byte 0x000002DA
_080227A0: .4byte 0x000002D6

	thumb_func_start sub_80227A4
sub_80227A4: @ 0x080227A4
	push {r4, r5, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldr r1, _080227E8 @ =0x030002AC
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080227BC
	bl VramFree
_080227BC:
	ldrb r0, [r5, #1]
	cmp r0, #1
	bne _080227E0
	ldr r1, _080227EC @ =0x030002D4
	adds r0, r4, r1
	ldr r0, [r0]
	bl VramFree
	ldr r1, _080227F0 @ =0x030002FC
	adds r0, r4, r1
	ldr r0, [r0]
	bl VramFree
	ldr r1, _080227F4 @ =0x03000324
	adds r0, r4, r1
	ldr r0, [r0]
	bl VramFree
_080227E0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080227E8: .4byte 0x030002AC
_080227EC: .4byte 0x030002D4
_080227F0: .4byte 0x030002FC
_080227F4: .4byte 0x03000324

	thumb_func_start sub_80227F8
sub_80227F8: @ 0x080227F8
	push {r4, lr}
	ldr r4, _08022818 @ =gCurTask
	bl sub_8021A64
	ldr r0, _0802281C @ =gStageData
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	beq _08022810
	ldr r1, [r4]
	ldr r0, _08022820 @ =sub_8022824
	str r0, [r1, #8]
_08022810:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08022818: .4byte gCurTask
_0802281C: .4byte gStageData
_08022820: .4byte sub_8022824

	thumb_func_start sub_8022824
sub_8022824: @ 0x08022824
	push {r4, lr}
	ldr r4, _0802285C @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0xf
	bhi _08022840
	adds r0, #1
	strb r0, [r1]
	bl sub_8021A64
_08022840:
	ldr r0, _08022860 @ =gStageData
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	bne _08022854
	bl sub_80219E8
	ldr r1, [r4]
	ldr r0, _08022864 @ =sub_8022868
	str r0, [r1, #8]
_08022854:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802285C: .4byte gCurTask
_08022860: .4byte gStageData
_08022864: .4byte sub_8022868

	thumb_func_start sub_8022868
sub_8022868: @ 0x08022868
	push {lr}
	ldr r2, _08022890 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08022888
	ldr r1, [r2]
	ldr r0, _08022894 @ =sub_80227F8
	str r0, [r1, #8]
_08022888:
	bl sub_8021A64
	pop {r0}
	bx r0
	.align 2, 0
_08022890: .4byte gCurTask
_08022894: .4byte sub_80227F8

	thumb_func_start sub_8022898
sub_8022898: @ 0x08022898
	push {lr}
	ldr r2, _080228C0 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080228B8
	ldr r1, [r2]
	ldr r0, _080228C4 @ =sub_80228C8
	str r0, [r1, #8]
_080228B8:
	bl sub_8022234
	pop {r0}
	bx r0
	.align 2, 0
_080228C0: .4byte gCurTask
_080228C4: .4byte sub_80228C8

	thumb_func_start sub_80228C8
sub_80228C8: @ 0x080228C8
	push {lr}
	bl sub_8022234
	ldr r0, _080228E4 @ =gStageData
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	beq _080228E0
	ldr r0, _080228E8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080228EC @ =sub_80228F0
	str r0, [r1, #8]
_080228E0:
	pop {r0}
	bx r0
	.align 2, 0
_080228E4: .4byte gStageData
_080228E8: .4byte gCurTask
_080228EC: .4byte sub_80228F0

	thumb_func_start sub_80228F0
sub_80228F0: @ 0x080228F0
	push {r4, lr}
	ldr r4, _08022928 @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0xf
	bhi _0802290C
	adds r0, #1
	strb r0, [r1]
	bl sub_8022234
_0802290C:
	ldr r0, _0802292C @ =gStageData
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	bne _08022920
	bl sub_8022198
	ldr r1, [r4]
	ldr r0, _08022930 @ =sub_8022898
	str r0, [r1, #8]
_08022920:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08022928: .4byte gCurTask
_0802292C: .4byte gStageData
_08022930: .4byte sub_8022898

	thumb_func_start sub_8022934
sub_8022934: @ 0x08022934
	push {lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r0, _0802296C @ =gPlayers
	adds r1, r1, r0
	adds r1, #0xe0
	ldr r0, [r1]
	adds r1, r0, #0
	adds r1, #0xc
	ldrh r0, [r1, #0x10]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xee
	bhi _08022970
	movs r2, #0x12
	ldrsh r0, [r1, r2]
	cmp r0, #0
	ble _08022970
	cmp r0, #0x9f
	bgt _08022970
	movs r0, #1
	b _08022972
	.align 2, 0
_0802296C: .4byte gPlayers
_08022970:
	movs r0, #0
_08022972:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8022978
sub_8022978: @ 0x08022978
	push {r4, r5, r6, lr}
	ldr r0, _08022A00 @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	ldr r5, _08022A04 @ =gStageData
	adds r5, #0xae
	ldrh r0, [r5]
	movs r1, #0x3c
	bl Div
	adds r4, r0, #0
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	ldrh r1, [r5]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _08022A08 @ =0x030000F0
	adds r3, r6, r0
	ldr r2, _08022A0C @ =gUnknown_080CE4B2
	lsrs r1, r1, #0xf
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r0, #0x10
	strb r0, [r3, #0x1a]
	ldr r0, _08022A10 @ =0x03000118
	adds r3, r6, r0
	adds r2, #1
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, #0x10
	strb r0, [r3, #0x1a]
	adds r0, r4, #0
	movs r1, #0x3c
	bl Div
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	subs r4, r4, r1
	lsls r4, r4, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08022A14 @ =0x030000A0
	adds r3, r6, r1
	ldr r2, _08022A18 @ =gUnknown_080CE438
	lsrs r4, r4, #0xf
	adds r1, r4, r2
	ldrb r1, [r1]
	adds r1, #0x10
	strb r1, [r3, #0x1a]
	ldr r1, _08022A1C @ =0x030000C8
	adds r3, r6, r1
	adds r2, #1
	adds r4, r4, r2
	ldrb r1, [r4]
	adds r1, #0x10
	strb r1, [r3, #0x1a]
	ldr r1, _08022A20 @ =0x03000078
	adds r3, r6, r1
	adds r0, #0x10
	strb r0, [r3, #0x1a]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08022A00: .4byte gCurTask
_08022A04: .4byte gStageData
_08022A08: .4byte 0x030000F0
_08022A0C: .4byte gUnknown_080CE4B2
_08022A10: .4byte 0x03000118
_08022A14: .4byte 0x030000A0
_08022A18: .4byte gUnknown_080CE438
_08022A1C: .4byte 0x030000C8
_08022A20: .4byte 0x03000078

	thumb_func_start sub_8022A24
sub_8022A24: @ 0x08022A24
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08022A68 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov r8, r0
	ldr r0, _08022A6C @ =gStageData
	adds r0, #0x8e
	ldrb r0, [r0]
	cmp r0, #3
	bhi _08022B08
	ldr r0, _08022A70 @ =0x03000234
	adds r2, r1, r0
	ldrb r0, [r2]
	adds r1, r0, #1
	movs r0, #0x3f
	ands r1, r0
	strb r1, [r2]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08022A74
	movs r0, #0x40
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _08022A76
	.align 2, 0
_08022A68: .4byte gCurTask
_08022A6C: .4byte gStageData
_08022A70: .4byte 0x03000234
_08022A74:
	ldrb r0, [r2]
_08022A76:
	movs r2, #0
	ldr r1, _08022B18 @ =gUnknown_080CEE40
	mov sl, r1
	ldr r1, _08022B1C @ =gStageData + 0x8E
	mov sb, r1
	lsls r0, r0, #0x18
	asrs r6, r0, #0x18
	movs r1, #0x20
	subs r1, r1, r6
	movs r7, #0x1f
	lsls r0, r1, #5
	subs r0, r0, r1
	lsls r0, r0, #0xb
	lsrs r0, r0, #0x10
	mov ip, r0
_08022A94:
	lsls r4, r2, #0x18
	asrs r4, r4, #0x18
	lsls r5, r4, #1
	mov r1, sb
	ldrb r0, [r1]
	lsls r0, r0, #5
	adds r0, r5, r0
	add r0, sl
	ldrh r3, [r0]
	movs r0, #0x1f
	ands r0, r3
	adds r2, r0, #0
	muls r2, r6, r2
	asrs r2, r2, #5
	add r2, ip
	ands r2, r7
	lsrs r0, r3, #5
	ands r0, r7
	adds r1, r0, #0
	muls r1, r6, r1
	asrs r1, r1, #5
	add r1, ip
	ands r1, r7
	lsrs r3, r3, #0xa
	ands r3, r7
	adds r0, r3, #0
	muls r0, r6, r0
	asrs r0, r0, #5
	add r0, ip
	ands r0, r7
	movs r3, #0x85
	lsls r3, r3, #2
	add r3, r8
	adds r5, r3, r5
	lsls r1, r1, #5
	orrs r2, r1
	lsls r0, r0, #0xa
	orrs r2, r0
	strh r2, [r5]
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r2, r4, #0x18
	asrs r4, r4, #0x18
	cmp r4, #0xf
	ble _08022A94
	ldr r0, _08022B20 @ =0x040000D4
	str r3, [r0]
	ldr r1, _08022B24 @ =gObjPalette + 0x100
	str r1, [r0, #4]
	ldr r1, _08022B28 @ =0x80000010
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldr r1, _08022B2C @ =gFlags
	ldr r0, [r1]
	movs r1, #2
	orrs r0, r1
	ldr r1, _08022B2C @ =gFlags
	str r0, [r1]
_08022B08:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08022B18: .4byte gUnknown_080CEE40
_08022B1C: .4byte gStageData + 0x8E
_08022B20: .4byte 0x040000D4
_08022B24: .4byte gObjPalette + 0x100
_08022B28: .4byte 0x80000010
_08022B2C: .4byte gFlags

	thumb_func_start sub_8022B30
sub_8022B30: @ 0x08022B30
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x2c
	adds r6, r0, #0
	movs r0, #0
	str r0, [sp, #0x28]
	add r0, sp, #0x28
	ldr r2, _08022D14 @ =0x0500000A
	mov r1, sp
	bl CpuSet
	mov r1, sp
	ldr r0, _08022D18 @ =0x0000FFFF
	strh r0, [r1, #0x18]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	subs r0, #0x11
	str r0, [sp, #0x20]
	adds r7, r6, #0
	movs r4, #0
_08022B60:
	mov r0, sp
	adds r1, r7, #0
	ldr r2, _08022D1C @ =0x0400000A
	bl CpuSet
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	adds r7, #0x28
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xc
	ble _08022B60
	adds r7, r6, #0
	ldr r1, _08022D20 @ =0x06012000
	str r1, [r7]
	movs r2, #0
	mov sb, r2
	ldr r0, _08022D24 @ =0x0000058D
	strh r0, [r7, #0xc]
	movs r4, #0
	strb r4, [r7, #0x1a]
	movs r0, #0x8c
	mov r8, r0
	mov r2, r8
	strh r2, [r7, #0x10]
	movs r4, #0xa
	mov ip, r4
	mov r0, ip
	strh r0, [r7, #0x12]
	adds r1, #0x40
	adds r7, #0x28
	str r1, [r7]
	ldr r3, _08022D28 @ =0x00000462
	strh r3, [r7, #0xc]
	movs r4, #0x1a
	strb r4, [r7, #0x1a]
	movs r0, #0xb4
	strh r0, [r7, #0x10]
	movs r2, #0x14
	strh r2, [r7, #0x12]
	adds r1, #0x40
	adds r7, #0x28
	str r1, [r7]
	strh r3, [r7, #0xc]
	strb r4, [r7, #0x1a]
	movs r0, #0xd2
	strh r0, [r7, #0x10]
	strh r2, [r7, #0x12]
	adds r1, #0x40
	adds r7, #0x28
	str r1, [r7]
	strh r3, [r7, #0xc]
	movs r4, #0x10
	strb r4, [r7, #0x1a]
	movs r0, #0xaa
	strh r0, [r7, #0x10]
	strh r2, [r7, #0x12]
	adds r1, #0x40
	adds r7, #0x28
	str r1, [r7]
	strh r3, [r7, #0xc]
	strb r4, [r7, #0x1a]
	movs r0, #0xbe
	strh r0, [r7, #0x10]
	strh r2, [r7, #0x12]
	adds r1, #0x40
	adds r7, #0x28
	str r1, [r7]
	strh r3, [r7, #0xc]
	strb r4, [r7, #0x1a]
	movs r0, #0xc8
	strh r0, [r7, #0x10]
	strh r2, [r7, #0x12]
	adds r1, #0x40
	adds r7, #0x28
	str r1, [r7]
	strh r3, [r7, #0xc]
	strb r4, [r7, #0x1a]
	movs r0, #0xdc
	strh r0, [r7, #0x10]
	strh r2, [r7, #0x12]
	adds r1, #0x40
	adds r7, #0x28
	str r1, [r7]
	strh r3, [r7, #0xc]
	strb r4, [r7, #0x1a]
	movs r0, #0xe6
	strh r0, [r7, #0x10]
	strh r2, [r7, #0x12]
	adds r1, #0x40
	adds r7, #0x28
	str r1, [r7]
	ldr r4, _08022D2C @ =0x000005EC
	strh r4, [r7, #0xc]
	movs r2, #0
	strb r2, [r7, #0x1a]
	ldr r0, [r7, #8]
	movs r2, #0x80
	lsls r2, r2, #0xb
	orrs r0, r2
	str r0, [r7, #8]
	movs r0, #0
	strb r0, [r7, #0x1f]
	mov r0, ip
	strh r0, [r7, #0x10]
	movs r5, #2
	movs r3, #2
	strh r3, [r7, #0x12]
	adds r1, #0xc0
	adds r7, #0x28
	str r1, [r7]
	strh r4, [r7, #0xc]
	movs r0, #0
	strb r0, [r7, #0x1a]
	ldr r0, [r7, #8]
	orrs r0, r2
	str r0, [r7, #8]
	movs r0, #1
	strb r0, [r7, #0x1f]
	movs r0, #0x1e
	strh r0, [r7, #0x10]
	strh r3, [r7, #0x12]
	adds r1, #0xc0
	adds r7, #0x28
	str r1, [r7]
	strh r4, [r7, #0xc]
	movs r0, #0
	strb r0, [r7, #0x1a]
	ldr r0, [r7, #8]
	orrs r0, r2
	str r0, [r7, #8]
	strb r5, [r7, #0x1f]
	movs r0, #0x32
	strh r0, [r7, #0x10]
	strh r3, [r7, #0x12]
	adds r1, #0xc0
	adds r7, #0x28
	str r1, [r7]
	strh r4, [r7, #0xc]
	movs r4, #0
	strb r4, [r7, #0x1a]
	ldr r0, [r7, #8]
	orrs r0, r2
	str r0, [r7, #8]
	movs r0, #3
	strb r0, [r7, #0x1f]
	movs r0, #0x46
	strh r0, [r7, #0x10]
	strh r3, [r7, #0x12]
	adds r1, #0xc0
	adds r7, #0x28
	str r1, [r7]
	ldr r0, _08022D30 @ =0x000005E7
	strh r0, [r7, #0xc]
	strb r4, [r7, #0x1a]
	ldr r0, [r7, #8]
	ldr r1, _08022D34 @ =0x00040020
	orrs r0, r1
	ldr r2, _08022D38 @ =gNextFreeAffineIndex
	ldrb r1, [r2]
	orrs r0, r1
	str r0, [r7, #8]
	movs r0, #8
	strb r0, [r7, #0x1f]
	movs r3, #0x78
	strh r3, [r7, #0x10]
	mov r0, r8
	strh r0, [r7, #0x12]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	movs r2, #0x82
	lsls r2, r2, #2
	adds r1, r6, r2
	mov r4, sb
	strh r4, [r1]
	adds r2, #2
	adds r0, r6, r2
	movs r2, #0x80
	lsls r2, r2, #1
	strh r2, [r0]
	movs r4, #0x83
	lsls r4, r4, #2
	adds r0, r6, r4
	strh r2, [r0]
	ldr r2, _08022D3C @ =0x0000020E
	adds r0, r6, r2
	strh r3, [r0]
	adds r4, #4
	adds r0, r6, r4
	mov r2, r8
	strh r2, [r0]
	adds r0, r7, #0
	bl TransformSprite
	adds r7, r6, #0
	movs r4, #0
_08022CEE:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	lsls r0, r4, #0x10
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r0, r4
	adds r7, #0x28
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xc
	ble _08022CEE
	add sp, #0x2c
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08022D14: .4byte 0x0500000A
_08022D18: .4byte 0x0000FFFF
_08022D1C: .4byte 0x0400000A
_08022D20: .4byte 0x06012000
_08022D24: .4byte 0x0000058D
_08022D28: .4byte 0x00000462
_08022D2C: .4byte 0x000005EC
_08022D30: .4byte 0x000005E7
_08022D34: .4byte 0x00040020
_08022D38: .4byte gNextFreeAffineIndex
_08022D3C: .4byte 0x0000020E

	thumb_func_start sub_8022D40
sub_8022D40: @ 0x08022D40
	push {r4, r5, r6, r7, lr}
	ldr r0, _08022D74 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	movs r5, #0
	ldr r3, _08022D78 @ =gStageData
	adds r7, r3, #0
	adds r7, #0x8e
	ldr r4, _08022D7C @ =0x0000015F
_08022D58:
	ldrb r1, [r7]
	lsls r0, r5, #0x10
	asrs r2, r0, #0x10
	cmp r1, r2
	bne _08022D80
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, r6, r0
	adds r0, r0, r4
	movs r1, #8
	strb r1, [r0]
	b _08022D8C
	.align 2, 0
_08022D74: .4byte gCurTask
_08022D78: .4byte gStageData
_08022D7C: .4byte 0x0000015F
_08022D80:
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, r6, r0
	adds r0, r0, r4
	strb r5, [r0]
_08022D8C:
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08022D58
	adds r0, r3, #0
	adds r0, #0x8e
	ldrb r0, [r0]
	ldrb r3, [r3, #6]
	cmp r0, r3
	beq _08022DCC
	cmp r0, #0xff
	beq _08022DCC
	bl sub_8023000
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08022DCC
	bl sub_8022E84
	movs r0, #0xf0
	lsls r0, r0, #1
	adds r4, r6, r0
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08022DCC:
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r4, r6, r1
	movs r5, #0
_08022DD4:
	ldr r0, _08022E78 @ =gUnknown_03001060
	ldrb r1, [r0, #7]
	lsls r0, r5, #0x10
	asrs r5, r0, #0x10
	asrs r1, r5
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08022DF2
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08022DF2:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	adds r4, #0x28
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08022DD4
	adds r4, r6, #0
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r4, #0x28
	movs r5, #0
_08022E12:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	adds r4, #0x28
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08022E12
	ldr r0, _08022E7C @ =gStageData
	adds r0, #0xae
	ldrh r1, [r0]
	ldr r0, _08022E80 @ =0x00000E0F
	movs r6, #0
	cmp r1, r0
	bhi _08022E4A
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsrs r6, r0, #0x1f
_08022E4A:
	movs r5, #0
	movs r7, #0
_08022E4E:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	strb r6, [r4, #0x1f]
	adds r0, r4, #0
	bl DisplaySprite
	strb r7, [r4, #0x1f]
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	adds r4, #0x28
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _08022E4E
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08022E78: .4byte gUnknown_03001060
_08022E7C: .4byte gStageData
_08022E80: .4byte 0x00000E0F

	thumb_func_start sub_8022E84
sub_8022E84: @ 0x08022E84
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _08022F44 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r3
	mov r8, r0
	ldr r1, _08022F48 @ =gStageData
	ldrb r0, [r1, #6]
	lsls r6, r0, #2
	adds r6, r6, r0
	lsls r6, r6, #2
	adds r6, r6, r0
	lsls r6, r6, #4
	ldr r2, _08022F4C @ =gPlayers
	adds r6, r6, r2
	adds r1, #0x8e
	ldrb r1, [r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	ldr r1, _08022F50 @ =0x030001E0
	adds r1, r1, r3
	mov sb, r1
	ldr r1, [r6, #0x10]
	ldr r2, [r0, #0x10]
	subs r1, r1, r2
	lsls r1, r1, #8
	lsrs r7, r1, #0x10
	ldr r1, [r6, #0x14]
	ldr r0, [r0, #0x14]
	subs r1, r1, r0
	lsls r1, r1, #8
	lsrs r5, r1, #0x10
	ldr r2, _08022F54 @ =gNextFreeAffineIndex
	ldrb r0, [r2]
	ldr r1, _08022F58 @ =0x00040020
	orrs r0, r1
	mov r1, sb
	str r0, [r1, #8]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r5, #0x10
	asrs r5, r0, #0x10
	asrs r0, r0, #0x12
	lsls r1, r7, #0x10
	asrs r4, r1, #0x10
	asrs r1, r1, #0x12
	str r3, [sp]
	bl sa2__sub_8004418
	ldr r2, _08022F5C @ =0xFFFFFF00
	adds r0, r0, r2
	ldr r2, _08022F60 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	ldr r3, [sp]
	ldr r1, _08022F64 @ =0x03000208
	adds r3, r3, r1
	strh r0, [r3]
	rsbs r4, r4, #0
	ldr r1, [r6, #0x10]
	asrs r1, r1, #8
	ldr r2, _08022F68 @ =gCamera
	ldr r0, [r2]
	subs r1, r1, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r4, r4, r1
	lsls r4, r4, #0x10
	rsbs r5, r5, #0
	ldr r0, [r6, #0x14]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	adds r5, r5, r0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsrs r7, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0xf
	bgt _08022F6C
	movs r7, #0x10
	b _08022F72
	.align 2, 0
_08022F44: .4byte gCurTask
_08022F48: .4byte gStageData
_08022F4C: .4byte gPlayers
_08022F50: .4byte 0x030001E0
_08022F54: .4byte gNextFreeAffineIndex
_08022F58: .4byte 0x00040020
_08022F5C: .4byte 0xFFFFFF00
_08022F60: .4byte 0x000003FF
_08022F64: .4byte 0x03000208
_08022F68: .4byte gCamera
_08022F6C:
	cmp r4, #0xe0
	ble _08022F72
	movs r7, #0xe0
_08022F72:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x17
	bgt _08022F7E
	movs r5, #0x18
	b _08022F84
_08022F7E:
	cmp r0, #0x90
	ble _08022F84
	movs r5, #0x90
_08022F84:
	ldr r0, _08022FAC @ =0x0000020E
	add r0, r8
	strh r7, [r0]
	movs r0, #0x84
	lsls r0, r0, #2
	add r0, r8
	strh r5, [r0]
	movs r1, #0x82
	lsls r1, r1, #2
	add r1, r8
	mov r0, sb
	bl TransformSprite
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08022FAC: .4byte 0x0000020E

	thumb_func_start sub_8022FB0
sub_8022FB0: @ 0x08022FB0
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _08022FE4 @ =sub_8022FEC
	movs r1, #0x8e
	lsls r1, r1, #2
	movs r2, #0x84
	lsls r2, r2, #6
	movs r5, #0
	str r5, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	bl sub_8022B30
	ldr r0, _08022FE8 @ =0x03000234
	adds r4, r4, r0
	strb r5, [r4]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08022FE4: .4byte sub_8022FEC
_08022FE8: .4byte 0x03000234

	thumb_func_start sub_8022FEC
sub_8022FEC: @ 0x08022FEC
	push {lr}
	bl sub_8022978
	bl sub_8022A24
	bl sub_8022D40
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8023000
sub_8023000: @ 0x08023000
	push {lr}
	ldr r0, _0802303C @ =gStageData
	adds r0, #0x8e
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08023040 @ =gPlayers
	adds r0, r0, r1
	adds r0, #0xe0
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0xc
	ldrh r0, [r1, #0x10]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xee
	bhi _08023044
	movs r2, #0x12
	ldrsh r0, [r1, r2]
	cmp r0, #0
	ble _08023044
	cmp r0, #0x9f
	bgt _08023044
	movs r0, #1
	b _08023046
	.align 2, 0
_0802303C: .4byte gStageData
_08023040: .4byte gPlayers
_08023044:
	movs r0, #0
_08023046:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_802304C
sub_802304C: @ 0x0802304C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r7, r0, #0
	ldr r1, _08023158 @ =gUnknown_080CEEC0
	mov r0, sp
	movs r2, #0xc
	bl memcpy
	ldr r1, _0802315C @ =gDispCnt
	movs r2, #0xba
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08023160 @ =gBgCntRegs
	movs r5, #0
	movs r4, #0
	movs r0, #0xe0
	lsls r0, r0, #3
	strh r0, [r1]
	ldr r0, _08023164 @ =0x00008E06
	strh r0, [r1, #2]
	ldr r0, _08023168 @ =0x0000970B
	strh r0, [r1, #4]
	ldr r0, _0802316C @ =gBgScrollRegs
	strh r4, [r0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	strh r4, [r0, #6]
	strh r4, [r0, #8]
	strh r4, [r0, #0xa]
	adds r1, r7, #0
	adds r1, #8
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	strh r4, [r1, #0xa]
	ldr r0, _08023170 @ =0x06003800
	str r0, [r1, #0xc]
	strh r4, [r1, #0x18]
	strh r4, [r1, #0x1a]
	ldr r0, _08023174 @ =gStageData
	ldrb r0, [r0]
	lsls r0, r0, #1
	add r0, sp
	ldrh r0, [r0]
	strh r0, [r1, #0x1c]
	strh r4, [r1, #0x1e]
	strh r4, [r1, #0x20]
	strh r4, [r1, #0x22]
	strh r4, [r1, #0x24]
	movs r6, #0x20
	strh r6, [r1, #0x26]
	strh r6, [r1, #0x28]
	adds r0, r7, #0
	adds r0, #0x32
	strb r5, [r0]
	adds r0, #1
	strb r5, [r0]
	adds r0, #1
	strb r5, [r0]
	strh r4, [r1, #0x2e]
	strh r4, [r1, #0x30]
	strh r4, [r1, #0x32]
	adds r0, r1, #0
	bl DrawBackground
	adds r1, r7, #0
	adds r1, #0x48
	ldr r0, _08023178 @ =0x06004000
	str r0, [r1, #4]
	strh r4, [r1, #0xa]
	ldr r0, _0802317C @ =0x06007000
	str r0, [r1, #0xc]
	strh r4, [r1, #0x18]
	strh r4, [r1, #0x1a]
	ldr r0, _08023180 @ =0x000001C5
	strh r0, [r1, #0x1c]
	strh r4, [r1, #0x1e]
	strh r4, [r1, #0x20]
	strh r4, [r1, #0x22]
	strh r4, [r1, #0x24]
	strh r6, [r1, #0x26]
	movs r0, #0x40
	strh r0, [r1, #0x28]
	adds r0, r7, #0
	adds r0, #0x72
	strb r5, [r0]
	adds r0, #1
	strb r5, [r0]
	adds r0, #1
	strb r5, [r0]
	movs r0, #1
	strh r0, [r1, #0x2e]
	strh r4, [r1, #0x30]
	strh r4, [r1, #0x32]
	adds r0, r1, #0
	bl DrawBackground
	adds r1, r7, #0
	adds r1, #0x88
	ldr r0, _08023184 @ =0x06008000
	str r0, [r1, #4]
	strh r4, [r1, #0xa]
	ldr r0, _08023188 @ =0x0600B800
	str r0, [r1, #0xc]
	strh r4, [r1, #0x18]
	strh r4, [r1, #0x1a]
	movs r0, #0xe3
	lsls r0, r0, #1
	strh r0, [r1, #0x1c]
	strh r4, [r1, #0x1e]
	strh r4, [r1, #0x20]
	strh r4, [r1, #0x22]
	strh r4, [r1, #0x24]
	strh r6, [r1, #0x26]
	strh r6, [r1, #0x28]
	adds r0, r7, #0
	adds r0, #0xb2
	strb r5, [r0]
	adds r0, #1
	strb r5, [r0]
	adds r0, #1
	strb r5, [r0]
	movs r0, #2
	strh r0, [r1, #0x2e]
	strh r4, [r1, #0x30]
	strh r4, [r1, #0x32]
	adds r0, r1, #0
	bl DrawBackground
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023158: .4byte gUnknown_080CEEC0
_0802315C: .4byte gDispCnt
_08023160: .4byte gBgCntRegs
_08023164: .4byte 0x00008E06
_08023168: .4byte 0x0000970B
_0802316C: .4byte gBgScrollRegs
_08023170: .4byte 0x06003800
_08023174: .4byte gStageData
_08023178: .4byte 0x06004000
_0802317C: .4byte 0x06007000
_08023180: .4byte 0x000001C5
_08023184: .4byte 0x06008000
_08023188: .4byte 0x0600B800

	thumb_func_start sub_802318C
sub_802318C: @ 0x0802318C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r0, [sp, #0xc]
	ldr r1, _0802322C @ =gUnknown_080CEECC
	mov r0, sp
	movs r2, #0xa
	bl memcpy
	ldr r0, [sp, #0xc]
	adds r0, #0xc8
	movs r6, #0
	ldr r7, _08023230 @ =sChaoIATilesInfo
	movs r1, #0
	mov sb, r1
	adds r2, r7, #2
	mov r8, r2
	movs r4, #0
_080231B6:
	adds r5, r0, #0
	movs r0, #0x10
	bl VramMalloc
	str r0, [r5]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #8]
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	lsls r2, r1, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	strh r0, [r5, #0xc]
	strh r4, [r5, #0x10]
	strh r4, [r5, #0x12]
	lsls r0, r1, #6
	strh r0, [r5, #0x14]
	strh r4, [r5, #0x16]
	ldr r0, _08023234 @ =0x0000FFFF
	strh r0, [r5, #0x18]
	add r2, r8
	ldrh r0, [r2]
	strb r0, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	mov r0, sb
	strb r0, [r5, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x20]
	str r0, [r5, #0x28]
	adds r1, #1
	lsls r1, r1, #0x10
	adds r0, r5, #0
	adds r0, #0x28
	lsrs r6, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #5
	ble _080231B6
	ldr r1, [sp, #0xc]
	movs r2, #0x96
	lsls r2, r2, #2
	adds r5, r1, r2
	movs r6, #0
_08023214:
	lsls r0, r6, #0x10
	asrs r1, r0, #0x10
	adds r2, r0, #0
	cmp r1, #4
	bgt _08023238
	movs r0, #0x38
	str r0, [sp, #0x10]
	movs r1, #0x10
	str r1, [sp, #0x14]
	lsrs r0, r2, #0x10
	b _08023246
	.align 2, 0
_0802322C: .4byte gUnknown_080CEECC
_08023230: .4byte sChaoIATilesInfo
_08023234: .4byte 0x0000FFFF
_08023238:
	movs r0, #0x4a
	str r0, [sp, #0x10]
	movs r0, #0x20
	str r0, [sp, #0x14]
	subs r0, r1, #5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_08023246:
	mov r8, r0
	movs r4, #0
	movs r1, #8
	adds r1, r1, r5
	mov sl, r1
	asrs r7, r2, #0x10
	lsls r2, r7, #1
	mov sb, r2
_08023256:
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	mov r2, sp
	adds r1, r2, r7
	ldrb r1, [r1]
	bl GetChaoFlag
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _080232B0
	asrs r3, r4, #0x10
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r1, r0, #4
	adds r2, r1, r5
	movs r1, #1
	strb r1, [r2]
	ldr r1, _080232AC @ =gUnknown_080D0410
	lsls r0, r0, #2
	add r0, sb
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r2, #1]
	movs r1, #0
	cmp r0, #2
	bls _0802328E
	movs r1, #8
_0802328E:
	strb r1, [r2, #2]
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0xb
	ldr r1, [sp, #0x10]
	adds r0, r1, r0
	strh r0, [r2, #4]
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #4
	adds r0, #0x20
	ldr r1, [sp, #0x14]
	adds r0, r1, r0
	strh r0, [r2, #6]
	b _080232BC
	.align 2, 0
_080232AC: .4byte gUnknown_080D0410
_080232B0:
	asrs r1, r4, #0x10
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r5
	strb r2, [r0]
_080232BC:
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r4, r2
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #6
	ble _08023256
	lsls r0, r6, #0x10
	adds r0, r0, r2
	mov r5, sl
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #9
	ble _08023214
	movs r6, #0
	movs r7, #0
	ldr r0, _0802334C @ =0x00000356
	mov r8, r0
_080232E0:
	lsls r4, r6, #0x10
	asrs r4, r4, #0x10
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0x91
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r2, [sp, #0xc]
	adds r5, r2, r0
	movs r0, #0x14
	bl VramMalloc
	str r0, [r5]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r5, #8]
	mov r0, r8
	strh r0, [r5, #0xc]
	movs r0, #0x78
	strh r0, [r5, #0x10]
	strh r7, [r5, #0x12]
	strh r7, [r5, #0x14]
	strh r7, [r5, #0x16]
	ldr r0, _08023350 @ =0x0000FFFF
	strh r0, [r5, #0x18]
	strb r6, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	adds r0, r6, #1
	strb r0, [r5, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x20]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r6, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #6
	ble _080232E0
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802334C: .4byte 0x00000356
_08023350: .4byte 0x0000FFFF

	thumb_func_start sub_8023354
sub_8023354: @ 0x08023354
	push {r4, lr}
	ldr r3, _080233BC @ =gCurTask
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, _080233C0 @ =gInput
	ldrh r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0802337E
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _0802337E
	ldrh r0, [r4, #2]
	subs r0, #1
	strh r0, [r4, #2]
	strh r0, [r4]
_0802337E:
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08023396
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #4
	bgt _08023396
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
_08023396:
	movs r1, #2
	ldrsh r0, [r4, r1]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r0, r1, #4
	strh r0, [r4, #6]
	lsls r1, r1, #0x14
	asrs r1, r1, #0x10
	cmp r1, #0xd4
	ble _080233AE
	movs r0, #0xd4
	strh r0, [r4, #6]
_080233AE:
	ldr r1, [r3]
	ldr r0, _080233C4 @ =sub_80233C8
	str r0, [r1, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080233BC: .4byte gCurTask
_080233C0: .4byte gInput
_080233C4: .4byte sub_80233C8

	thumb_func_start sub_80233C8
sub_80233C8: @ 0x080233C8
	push {r4, r5, lr}
	ldr r0, _080233F4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r3, [r4, #6]
	movs r0, #6
	ldrsh r2, [r4, r0]
	ldrh r0, [r4, #4]
	movs r5, #4
	ldrsh r1, [r4, r5]
	cmp r2, r1
	bge _080233F8
	subs r0, #4
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r2, r0
	ble _0802340A
	b _08023408
	.align 2, 0
_080233F4: .4byte gCurTask
_080233F8:
	cmp r2, r1
	ble _0802340A
	adds r0, #4
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r2, r0
	bge _0802340A
_08023408:
	strh r3, [r4, #4]
_0802340A:
	ldr r1, _08023434 @ =gBgScrollRegs
	ldrh r0, [r4, #4]
	strh r0, [r1, #6]
	bl sub_8023440
	movs r0, #6
	ldrsh r1, [r4, r0]
	movs r2, #4
	ldrsh r0, [r4, r2]
	cmp r1, r0
	bne _0802342C
	ldrh r0, [r4, #2]
	strh r0, [r4]
	ldr r0, _08023438 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802343C @ =sub_8023694
	str r0, [r1, #8]
_0802342C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08023434: .4byte gBgScrollRegs
_08023438: .4byte gCurTask
_0802343C: .4byte sub_8023694

	thumb_func_start sub_8023440
sub_8023440: @ 0x08023440
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _080234F4 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r3, r0
	ldrh r1, [r7]
	movs r4, #0
	ldrsh r0, [r7, r4]
	cmp r0, #4
	ble _08023464
	movs r1, #4
_08023464:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0x11
	lsrs r4, r0, #0x10
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r1, #4
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0x11
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x46
	ble _08023486
	movs r2, #0x46
_08023486:
	ldr r0, _080234F8 @ =0x030000C8
	adds r1, r3, r0
	adds r0, #0xf0
	adds r0, r0, r3
	mov sl, r0
	movs r0, #0
	mov sb, r0
	lsls r2, r2, #0x10
	str r2, [sp, #4]
	lsls r4, r4, #0x10
	str r4, [sp]
_0802349C:
	adds r5, r1, #0
	movs r1, #0
	mov r8, r1
	mov r6, sl
	ldr r2, [sp]
	lsrs r3, r2, #0x10
	lsls r1, r3, #0x10
	ldr r4, [sp, #4]
	asrs r2, r4, #0x10
	mov r4, sb
	lsls r0, r4, #0x10
	adds r4, r5, #0
	adds r4, #0x28
	str r4, [sp, #8]
	ldr r4, [sp, #4]
	cmp r1, r4
	bge _0802352E
	asrs r0, r0, #0x10
	mov ip, r0
	adds r4, r2, #0
_080234C4:
	asrs r0, r1, #0xd
	movs r1, #0x96
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r2, r7, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _0802351C
	ldrb r0, [r2, #1]
	cmp r0, ip
	bne _0802351C
	mov r0, r8
	cmp r0, #0
	bne _080234FC
	ldrh r0, [r2, #4]
	strh r0, [r5, #0x10]
	ldrb r1, [r2, #2]
	ldrh r0, [r2, #6]
	adds r0, r0, r1
	ldrh r1, [r7, #4]
	subs r0, r0, r1
	strh r0, [r5, #0x12]
	b _0802350E
	.align 2, 0
_080234F4: .4byte gCurTask
_080234F8: .4byte 0x030000C8
_080234FC:
	ldrh r0, [r2, #4]
	strh r0, [r6]
	ldrb r1, [r2, #2]
	ldrh r0, [r2, #6]
	adds r0, r0, r1
	ldrh r1, [r7, #4]
	subs r0, r0, r1
	strh r0, [r6, #2]
	adds r6, #4
_0802350E:
	mov r1, r8
	lsls r0, r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r0, r0, #0x10
	mov r8, r0
_0802351C:
	lsls r0, r3, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r3, r0, #0x10
	lsls r1, r3, #0x10
	asrs r0, r1, #0x10
	cmp r0, r4
	blt _080234C4
_0802352E:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	beq _08023544
	adds r0, r5, #0
	bl DisplaySprite
_08023544:
	cmp r4, #1
	ble _0802355A
	mov r2, r8
	subs r2, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r5, #0
	mov r1, sl
	bl DisplaySprites
	mov sl, r6
_0802355A:
	mov r4, sb
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	ldr r1, [sp, #8]
	lsrs r2, r0, #0x10
	mov sb, r2
	asrs r0, r0, #0x10
	cmp r0, #5
	ble _0802349C
	movs r4, #0
	mov sb, r4
	ldr r6, _080235C8 @ =gLoadedSaveGame + 0x32
_08023576:
	ldrb r0, [r6]
	mov r2, sb
	lsls r1, r2, #0x10
	asrs r4, r1, #0x10
	asrs r0, r4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080235AA
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0x91
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r5, r7, r0
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #4
	ldrh r0, [r7, #4]
	subs r0, #0x38
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	adds r0, r5, #0
	bl DisplaySprite
_080235AA:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov sb, r2
	asrs r0, r0, #0x10
	cmp r0, #6
	ble _08023576
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080235C8: .4byte gLoadedSaveGame + 0x32

	thumb_func_start sub_80235CC
sub_80235CC: @ 0x080235CC
	push {r4, r5, r6, lr}
	ldr r0, _08023630 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r0, #0xc8
	adds r4, r1, r0
	movs r5, #0
_080235E0:
	ldr r0, [r4]
	cmp r0, #0
	beq _080235EA
	bl VramFree
_080235EA:
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	adds r4, #0x28
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #5
	ble _080235E0
	movs r5, #0
_080235FE:
	lsls r4, r5, #0x10
	asrs r4, r4, #0x10
	lsls r1, r4, #2
	adds r1, r1, r4
	lsls r1, r1, #3
	movs r2, #0x91
	lsls r2, r2, #3
	adds r0, r6, r2
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r5, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #6
	ble _080235FE
	movs r0, #0xb
	movs r1, #1
	bl WarpToMap
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08023630: .4byte gCurTask

	thumb_func_start sub_8023634
sub_8023634: @ 0x08023634
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _08023684 @ =sub_8023694
	movs r1, #0xb4
	lsls r1, r1, #3
	movs r2, #0x80
	lsls r2, r2, #1
	movs r5, #0
	str r5, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_802304C
	adds r0, r4, #0
	bl sub_802318C
	ldr r0, _08023688 @ =gMPlayInfo_SE1
	bl MPlayStop
	ldr r0, _0802368C @ =gMPlayInfo_SE2
	bl MPlayStop
	ldr r0, _08023690 @ =gMPlayInfo_SE3
	bl MPlayStop
	strh r5, [r4]
	strh r5, [r4, #2]
	strh r5, [r4, #4]
	strh r5, [r4, #6]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08023684: .4byte sub_8023694
_08023688: .4byte gMPlayInfo_SE1
_0802368C: .4byte gMPlayInfo_SE2
_08023690: .4byte gMPlayInfo_SE3

	thumb_func_start sub_8023694
sub_8023694: @ 0x08023694
	push {lr}
	ldr r0, _080236B8 @ =gInput
	ldrh r1, [r0]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _080236A6
	bl sub_8023354
_080236A6:
	ldr r0, _080236BC @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080236C0
	bl sub_80235CC
	b _080236C4
	.align 2, 0
_080236B8: .4byte gInput
_080236BC: .4byte gPressedKeys
_080236C0:
	bl sub_8023440
_080236C4:
	pop {r0}
	bx r0

	thumb_func_start sub_80236C8
sub_80236C8: @ 0x080236C8
	push {r4, r5, lr}
	adds r4, r2, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	str r0, [r4]
	movs r1, #0
	movs r3, #0
	movs r0, #8
	strh r0, [r4, #0xa]
	movs r2, #0x28
	movs r0, #0x28
	strh r0, [r4, #0x12]
	strh r0, [r4, #0x14]
	strb r2, [r4, #0xf]
	strb r2, [r4, #0x10]
	strb r1, [r4, #0xd]
	strb r1, [r4, #0xe]
	strb r1, [r4, #5]
	strb r1, [r4, #6]
	strh r3, [r4, #8]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0x1c]
	strh r3, [r4, #0x1a]
	strb r1, [r4, #0x1d]
	strb r1, [r4, #0x1e]
	ldr r0, _08023724 @ =0x06012000
	str r0, [r4, #0x24]
	strb r1, [r4, #0x1f]
	ldr r0, _08023728 @ =gLoadedSaveGame
	ldr r1, _0802372C @ =0x00000366
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #5
	bls _0802370E
	movs r0, #5
_0802370E:
	ldr r1, _08023730 @ =gUnknown_08E7EA78
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r0, r5, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4, #0x20]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08023724: .4byte 0x06012000
_08023728: .4byte gLoadedSaveGame
_0802372C: .4byte 0x00000366
_08023730: .4byte gUnknown_08E7EA78

	thumb_func_start sub_8023734
sub_8023734: @ 0x08023734
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0
	strb r0, [r4, #0x1c]
	ldrb r0, [r4, #5]
	cmp r0, #0
	beq _0802379E
	ldr r1, [r4, #0x20]
	lsls r0, r0, #1
	adds r0, r0, r1
	subs r0, #2
	ldrh r2, [r0]
	ldr r1, _08023774 @ =0xFFFFFEAC
	adds r0, r2, r1
	cmp r0, #1
	bhi _0802379E
	ldr r0, _08023778 @ =gPressedKeys
	ldrh r1, [r0]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _0802377C
	ldrb r1, [r4, #0x1f]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _0802377C
	movs r0, #1
	strb r0, [r4, #0x1c]
	b _0802399E
	.align 2, 0
_08023774: .4byte 0xFFFFFEAC
_08023778: .4byte gPressedKeys
_0802377C:
	movs r0, #0xaa
	lsls r0, r0, #1
	cmp r2, r0
	beq _08023788
	movs r0, #1
	b _080239A0
_08023788:
	ldrh r0, [r4, #0xa]
	subs r0, #2
	movs r1, #0
	strh r0, [r4, #8]
	strb r1, [r4, #6]
	strb r1, [r4, #0xc]
	movs r0, #0x28
	strh r0, [r4, #0x12]
	strh r0, [r4, #0x14]
	ldr r0, _08023868 @ =0x06012000
	str r0, [r4, #0x24]
_0802379E:
	ldrh r0, [r4, #8]
	adds r2, r0, #2
	strh r2, [r4, #8]
	ldr r0, _0802386C @ =gInput
	ldrh r1, [r0]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080237C0
	ldrb r1, [r4, #0x1f]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _080237C0
	adds r0, r2, #2
	strh r0, [r4, #8]
_080237C0:
	ldrh r0, [r4, #8]
	ldrh r3, [r4, #0xa]
	cmp r0, r3
	bhs _080237CA
	b _0802399E
_080237CA:
	subs r6, r0, r3
	strh r6, [r4, #8]
	ldrb r0, [r4, #5]
	adds r0, #1
	strb r0, [r4, #5]
	ldrb r0, [r4, #5]
	ldr r1, [r4, #0x20]
	lsls r0, r0, #1
	adds r0, r0, r1
	subs r0, #2
	ldrh r2, [r0]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r5, r1, #0
	cmp r2, r0
	bhi _080238C4
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _08023804
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #4
	adds r3, r4, r0
	ldrh r0, [r4, #0x16]
	strh r0, [r3, #0x10]
	ldrh r0, [r4, #0x18]
	strh r0, [r3, #0x12]
_08023804:
	lsls r2, r2, #3
	ldr r0, _08023870 @ =gUnknown_086835B8
	adds r5, r2, r0
	ldrb r1, [r4, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x2c
	adds r3, r4, r0
	ldrh r1, [r4, #0x12]
	movs r6, #0x12
	ldrsh r0, [r4, r6]
	adds r6, r2, #0
	cmp r0, #0x28
	beq _08023828
	ldrb r2, [r5, #3]
	adds r0, r1, r2
	strh r0, [r4, #0x12]
_08023828:
	movs r0, #4
	strb r0, [r4, #0x1e]
	ldr r0, [r4, #0x24]
	str r0, [r3]
	ldr r0, [r4, #0x24]
	adds r0, #0x80
	str r0, [r4, #0x24]
	ldrh r0, [r5]
	strh r0, [r3, #0xc]
	ldrb r0, [r5, #2]
	strb r0, [r3, #0x1a]
	ldrh r1, [r4, #0x12]
	strh r1, [r3, #0x10]
	movs r0, #0xc
	ldrsb r0, [r4, r0]
	ldrh r2, [r4, #0x14]
	adds r0, r0, r2
	strh r0, [r3, #0x12]
	strh r1, [r4, #0x16]
	ldrh r0, [r3, #0x12]
	strh r0, [r4, #0x18]
	ldrb r0, [r4, #0x1d]
	cmp r0, #1
	beq _08023874
	cmp r0, #1
	ble _0802388A
	cmp r0, #2
	beq _0802387C
	cmp r0, #3
	beq _08023884
	b _0802388A
	.align 2, 0
_08023868: .4byte 0x06012000
_0802386C: .4byte gInput
_08023870: .4byte gUnknown_086835B8
_08023874:
	ldrh r0, [r3, #0x12]
	subs r0, #8
	strh r0, [r3, #0x12]
	b _0802388A
_0802387C:
	ldrh r0, [r3, #0x12]
	adds r0, #8
	strh r0, [r3, #0x12]
	b _0802388A
_08023884:
	ldrh r0, [r3, #0x10]
	subs r0, #8
	strh r0, [r3, #0x10]
_0802388A:
	movs r1, #0
	strh r1, [r3, #0x14]
	strh r1, [r3, #0xe]
	strh r1, [r3, #0x16]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	movs r0, #0xf
	strb r0, [r3, #0x1f]
	subs r0, #0x10
	str r0, [r3, #0x20]
	str r1, [r3, #8]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	ldr r1, _080238C0 @ =gUnknown_086835B8
	adds r1, r6, r1
	ldrh r0, [r4, #0x12]
	ldrb r1, [r1, #4]
	adds r0, r0, r1
	strh r0, [r4, #0x12]
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	b _0802399E
	.align 2, 0
_080238C0: .4byte gUnknown_086835B8
_080238C4:
	ldr r1, _080238E0 @ =0x0000FFFE
	adds r0, r6, r1
	adds r0, r3, r0
	strh r0, [r4, #8]
	ldr r6, _080238E4 @ =0xFFFFFEAF
	adds r0, r2, r6
	cmp r0, #0xb
	bhi _0802399E
	lsls r0, r0, #2
	ldr r1, _080238E8 @ =_080238EC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080238E0: .4byte 0x0000FFFE
_080238E4: .4byte 0xFFFFFEAF
_080238E8: .4byte _080238EC
_080238EC: @ jump table
	.4byte _0802391C @ case 0
	.4byte _08023934 @ case 1
	.4byte _08023952 @ case 2
	.4byte _08023960 @ case 3
	.4byte _0802399E @ case 4
	.4byte _08023966 @ case 5
	.4byte _0802397A @ case 6
	.4byte _0802399E @ case 7
	.4byte _0802398E @ case 8
	.4byte _08023992 @ case 9
	.4byte _08023996 @ case 10
	.4byte _0802399A @ case 11
_0802391C:
	ldrb r0, [r4, #5]
	adds r0, #1
	strb r0, [r4, #5]
	ldrb r0, [r4, #5]
	lsls r0, r0, #1
	adds r0, r0, r5
	subs r0, #2
	ldrh r1, [r4, #0x12]
	ldrh r0, [r0]
	adds r1, r1, r0
	strh r1, [r4, #0x12]
	b _0802399E
_08023934:
	ldrb r0, [r4, #5]
	adds r0, #1
	strb r0, [r4, #5]
	ldrb r0, [r4, #5]
	lsls r0, r0, #1
	adds r0, r0, r5
	subs r0, #2
	ldrh r2, [r0]
	cmp r2, #2
	bhi _0802394A
	movs r2, #2
_0802394A:
	movs r0, #0
	strh r0, [r4, #8]
	strh r2, [r4, #0xa]
	b _0802399E
_08023952:
	movs r0, #0xf
	ldrsb r0, [r4, r0]
	strh r0, [r4, #0x12]
	ldrh r0, [r4, #0x14]
	adds r0, #0x10
	strh r0, [r4, #0x14]
	b _0802399E
_08023960:
	ldr r0, [r4, #0x28]
	str r0, [r4, #0x24]
	b _0802399E
_08023966:
	ldrb r0, [r4, #5]
	adds r0, #1
	strb r0, [r4, #5]
	ldrb r0, [r4, #5]
	lsls r0, r0, #1
	adds r0, r0, r5
	subs r0, #2
	ldrh r2, [r0]
	strb r2, [r4, #0xc]
	b _0802399E
_0802397A:
	ldrb r0, [r4, #5]
	adds r0, #1
	strb r0, [r4, #5]
	ldrb r0, [r4, #5]
	lsls r0, r0, #1
	adds r0, r0, r5
	subs r0, #2
	ldrh r2, [r0]
	strh r2, [r4, #0x1a]
	b _0802399E
_0802398E:
	movs r0, #0
	b _0802399C
_08023992:
	movs r0, #1
	b _0802399C
_08023996:
	movs r0, #2
	b _0802399C
_0802399A:
	movs r0, #3
_0802399C:
	strb r0, [r4, #0x1d]
_0802399E:
	movs r0, #0
_080239A0:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80239A8
sub_80239A8: @ 0x080239A8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r7, [r5]
	ldrb r6, [r5, #6]
	cmp r6, #0
	beq _08023A62
	ldrb r0, [r5, #0x1e]
	cmp r0, #0
	beq _080239C0
	subs r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_080239C0:
	movs r4, #0
	cmp r4, r6
	bhs _080239F4
_080239C6:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x2c
	adds r1, r5, r0
	movs r0, #0xd
	ldrsb r0, [r5, r0]
	ldrh r2, [r1, #0x10]
	adds r0, r0, r2
	strh r0, [r1, #0x10]
	movs r0, #0xe
	ldrsb r0, [r5, r0]
	ldrh r2, [r1, #0x12]
	adds r0, r0, r2
	strh r0, [r1, #0x12]
	adds r0, r1, #0
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r6
	blo _080239C6
_080239F4:
	ldrb r0, [r5, #0x1e]
	cmp r0, #0
	beq _08023A62
	subs r0, #1
	strb r0, [r5, #0x1e]
	ldrb r0, [r5, #0x1d]
	cmp r0, #1
	beq _08023A24
	cmp r0, #1
	bgt _08023A0E
	cmp r0, #0
	beq _08023A18
	b _08023A62
_08023A0E:
	cmp r0, #2
	beq _08023A34
	cmp r0, #3
	beq _08023A4C
	b _08023A62
_08023A18:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x2c
	adds r1, r5, r0
	b _08023A44
_08023A24:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x2c
	adds r1, r5, r0
	ldrh r0, [r1, #0x12]
	adds r0, #2
	b _08023A42
_08023A34:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x2c
	adds r1, r5, r0
	ldrh r0, [r1, #0x12]
	subs r0, #2
_08023A42:
	strh r0, [r1, #0x12]
_08023A44:
	adds r0, r1, #0
	bl DisplaySprite
	b _08023A62
_08023A4C:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x2c
	adds r1, r5, r0
	ldrh r0, [r1, #0x10]
	adds r0, #2
	strh r0, [r1, #0x10]
	adds r0, r1, #0
	bl DisplaySprite
_08023A62:
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _08023A82
	cmp r7, #0
	beq _08023A82
	ldrh r0, [r5, #0x12]
	adds r0, #0xa
	strh r0, [r7, #0x10]
	ldrh r0, [r5, #0x14]
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_08023A82:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8023A88
sub_8023A88: @ 0x08023A88
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r1, _08023AA8 @ =gStageData
	ldr r0, _08023AAC @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	strb r0, [r1, #6]
	cmp r0, #0
	beq _08023AB0
	movs r0, #0
	b _08023B80
	.align 2, 0
_08023AA8: .4byte gStageData
_08023AAC: .4byte 0x04000128
_08023AB0:
	bl sub_802610C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _08023B80
	ldr r2, _08023AD0 @ =gMultiSioStatusFlags
	ldr r1, [r2]
	ldr r0, _08023AD4 @ =0x00000C0C
	ands r1, r0
	cmp r1, #0
	beq _08023AD8
	movs r0, #4
	rsbs r0, r0, #0
	b _08023B80
	.align 2, 0
_08023AD0: .4byte gMultiSioStatusFlags
_08023AD4: .4byte 0x00000C0C
_08023AD8:
	ldr r4, _08023B90 @ =gMultiSioSend
	strb r1, [r4, #2]
	movs r1, #0
	movs r7, #1
	ldr r0, _08023B94 @ =gLoadedSaveGame
	mov ip, r0
	adds r5, r4, #6
	mov sl, r5
	movs r0, #0xd9
	lsls r0, r0, #2
	add r0, ip
	mov sb, r0
	ldr r5, _08023B98 @ =0x00000365
	add r5, ip
	mov r8, r5
_08023AF6:
	lsls r1, r1, #0x10
	asrs r2, r1, #0x10
	adds r3, r7, #0
	lsls r3, r2
	ldr r5, _08023B9C @ =gMultiSioStatusFlags
	ldr r0, [r5]
	ands r0, r3
	adds r6, r1, #0
	cmp r0, #0
	beq _08023B6C
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, _08023BA0 @ =gMultiSioRecv
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _08023BA4 @ =0x00006C01
	cmp r0, r1
	bne _08023B6C
	ldrb r0, [r4, #2]
	orrs r3, r0
	strb r3, [r4, #2]
	mov r5, ip
	ldrb r0, [r5, #0x10]
	strb r0, [r4, #3]
	ldrb r0, [r5, #0x11]
	strb r0, [r4, #4]
	ldr r1, _08023BA8 @ =gLoadedSaveGame + 0x36
	ldrb r0, [r1]
	strb r0, [r4, #5]
	movs r1, #0
	mov r3, sl
	ldr r5, _08023BAC @ =gLoadedSaveGame + 0x29
_08023B38:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r2, r3, r0
	adds r1, r0, r5
	ldrb r1, [r1]
	strb r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #6
	ble _08023B38
	strb r7, [r4, #0xd]
	mov r5, sb
	ldrb r0, [r5]
	strb r0, [r4, #0xe]
	mov r1, r8
	ldrb r0, [r1]
	strb r0, [r4, #0xf]
	mov r0, ip
	adds r0, #0x32
	ldrb r0, [r0]
	strb r0, [r4, #0x10]
	mov r5, ip
	ldrh r0, [r5, #0x34]
	strb r0, [r4, #0x11]
_08023B6C:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r6, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08023AF6
	bl sub_8024314
	ldrb r0, [r4, #2]
_08023B80:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08023B90: .4byte gMultiSioSend
_08023B94: .4byte gLoadedSaveGame
_08023B98: .4byte 0x00000365
_08023B9C: .4byte gMultiSioStatusFlags
_08023BA0: .4byte gMultiSioRecv
_08023BA4: .4byte 0x00006C01
_08023BA8: .4byte gLoadedSaveGame + 0x36
_08023BAC: .4byte gLoadedSaveGame + 0x29

	thumb_func_start sub_8023BB0
sub_8023BB0: @ 0x08023BB0
	push {r4, r5, lr}
	ldr r1, _08023BDC @ =gStageData
	ldr r0, _08023BE0 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	strb r0, [r1, #6]
	bl sub_802610C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _08023C4C
	ldr r0, _08023BE4 @ =gMultiSioStatusFlags
	ldr r0, [r0]
	ldr r1, _08023BE8 @ =0x00000C0C
	ands r0, r1
	cmp r0, #0
	beq _08023BEC
	movs r0, #4
	rsbs r0, r0, #0
	b _08023C4C
	.align 2, 0
_08023BDC: .4byte gStageData
_08023BE0: .4byte 0x04000128
_08023BE4: .4byte gMultiSioStatusFlags
_08023BE8: .4byte 0x00000C0C
_08023BEC:
	ldr r0, _08023C08 @ =gMultiSioSend
	ldr r1, _08023C0C @ =gUnknown_03001060
	ldrb r4, [r0, #2]
	strb r4, [r1, #7]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	bl sub_8024324
	lsls r4, r4, #0x10
	asrs r0, r4, #0x10
	cmp r0, #3
	beq _08023C14
	b _08023C4C
	.align 2, 0
_08023C08: .4byte gMultiSioSend
_08023C0C: .4byte gUnknown_03001060
_08023C10:
	adds r0, r3, #0
	b _08023C4C
_08023C14:
	movs r1, #0
	movs r3, #3
	ldr r5, _08023C54 @ =0x00006C02
_08023C1A:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r0, r3, #0
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08023C3A
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, _08023C58 @ =gMultiSioRecv
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, r5
	bne _08023C10
_08023C3A:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08023C1A
	movs r1, #0x10
	asrs r0, r4, #0x10
	orrs r0, r1
_08023C4C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08023C54: .4byte 0x00006C02
_08023C58: .4byte gMultiSioRecv

	thumb_func_start sub_8023C5C
sub_8023C5C: @ 0x08023C5C
	push {r4, r5, r6, r7, lr}
	ldr r1, _08023C8C @ =gStageData
	ldr r0, _08023C90 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	strb r0, [r1, #6]
	cmp r0, #0
	beq _08023CA4
	bl sub_802610C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _08023D4E
	ldr r0, _08023C94 @ =gMultiSioStatusFlags
	ldr r1, [r0]
	ldr r0, _08023C98 @ =0x00000C0C
	ands r0, r1
	cmp r0, #0
	beq _08023C9C
	movs r0, #4
	rsbs r0, r0, #0
	b _08023D4E
	.align 2, 0
_08023C8C: .4byte gStageData
_08023C90: .4byte 0x04000128
_08023C94: .4byte gMultiSioStatusFlags
_08023C98: .4byte 0x00000C0C
_08023C9C:
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	bne _08023CA8
_08023CA4:
	movs r0, #0
	b _08023D4E
_08023CA8:
	ldr r3, _08023CC8 @ =gMultiSioSend
	ldr r5, _08023CCC @ =gMultiSioRecv
	ldrh r2, [r5]
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r2
	movs r1, #0xd8
	lsls r1, r1, #7
	cmp r0, r1
	beq _08023CD0
	cmp r2, #0
	beq _08023CD0
	movs r0, #5
	rsbs r0, r0, #0
	b _08023D4E
	.align 2, 0
_08023CC8: .4byte gMultiSioSend
_08023CCC: .4byte gMultiSioRecv
_08023CD0:
	ldrb r0, [r5, #2]
	strb r0, [r3, #2]
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldrh r1, [r5]
	ldr r0, _08023CE8 @ =0x00006C02
	cmp r1, r0
	bne _08023CEC
	movs r0, #0x10
	orrs r6, r0
	b _08023D48
	.align 2, 0
_08023CE8: .4byte 0x00006C02
_08023CEC:
	ldr r0, _08023D54 @ =0x00006C01
	cmp r1, r0
	bne _08023D48
	ldr r1, _08023D58 @ =gLoadedSaveGame
	ldrb r0, [r5, #3]
	strb r0, [r1, #0x10]
	ldrb r0, [r5, #4]
	strb r0, [r1, #0x11]
	ldrb r0, [r5, #5]
	adds r2, r1, #0
	adds r2, #0x36
	strb r0, [r2]
	movs r2, #0
	ldr r0, _08023D5C @ =gStageData
	mov ip, r0
	adds r3, r1, #0
	adds r7, r3, #0
	adds r7, #0x29
	adds r4, r5, #6
_08023D12:
	adds r1, r2, r7
	adds r0, r4, r2
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #6
	bls _08023D12
	movs r0, #1
	mov r1, ip
	strb r0, [r1, #9]
	ldrb r1, [r5, #0xe]
	movs r2, #0xd9
	lsls r2, r2, #2
	adds r0, r3, r2
	strb r1, [r0]
	ldrb r1, [r5, #0xf]
	adds r2, #1
	adds r0, r3, r2
	strb r1, [r0]
	ldrb r0, [r5, #0x10]
	adds r1, r3, #0
	adds r1, #0x32
	strb r0, [r1]
	ldrb r0, [r5, #0x11]
	strh r0, [r3, #0x34]
_08023D48:
	bl sub_8024314
	adds r0, r6, #0
_08023D4E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08023D54: .4byte 0x00006C01
_08023D58: .4byte gLoadedSaveGame
_08023D5C: .4byte gStageData

	thumb_func_start sub_8023D60
sub_8023D60: @ 0x08023D60
	push {r4, r5, lr}
	ldr r1, _08023D8C @ =gStageData
	ldr r0, _08023D90 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	strb r0, [r1, #6]
	bl sub_802610C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _08023DE8
	ldr r0, _08023D94 @ =gMultiSioStatusFlags
	ldr r1, [r0]
	ldr r0, _08023D98 @ =0x00000C0C
	ands r0, r1
	cmp r0, #0
	beq _08023D9C
	movs r0, #4
	rsbs r0, r0, #0
	b _08023DE8
	.align 2, 0
_08023D8C: .4byte gStageData
_08023D90: .4byte 0x04000128
_08023D94: .4byte gMultiSioStatusFlags
_08023D98: .4byte 0x00000C0C
_08023D9C:
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	bne _08023DA8
	movs r0, #0
	b _08023DE8
_08023DA8:
	ldr r5, _08023DF0 @ =gMultiSioSend
	ldr r3, _08023DF4 @ =gMultiSioRecv
	movs r4, #0
	ldr r1, _08023DF8 @ =0xFFFF93FE
	adds r0, r1, #0
	ldrh r1, [r3]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08023DCC
	ldr r2, _08023DFC @ =gUnknown_03001060
	ldrb r1, [r3, #2]
	strb r1, [r5, #2]
	movs r0, #0xff
	ands r0, r1
	strb r0, [r2, #7]
	adds r4, r0, #0
_08023DCC:
	ldrh r1, [r3]
	ldr r0, _08023E00 @ =0x00006C03
	cmp r1, r0
	bne _08023DE0
	movs r1, #0x10
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08023DE0:
	bl sub_8024324
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
_08023DE8:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08023DF0: .4byte gMultiSioSend
_08023DF4: .4byte gMultiSioRecv
_08023DF8: .4byte 0xFFFF93FE
_08023DFC: .4byte gUnknown_03001060
_08023E00: .4byte 0x00006C03

	thumb_func_start sub_8023E04
sub_8023E04: @ 0x08023E04
	push {r4, lr}
	bl sub_802610C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _08023E6C
	ldr r0, _08023E24 @ =gMultiSioStatusFlags
	ldr r1, [r0]
	ldr r0, _08023E28 @ =0x00000C0C
	ands r0, r1
	cmp r0, #0
	beq _08023E2C
	movs r0, #4
	rsbs r0, r0, #0
	b _08023E6C
	.align 2, 0
_08023E24: .4byte gMultiSioStatusFlags
_08023E28: .4byte 0x00000C0C
_08023E2C:
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	bne _08023E38
	movs r0, #0
	b _08023E6C
_08023E38:
	ldr r2, _08023E74 @ =gMultiSioRecv
	movs r4, #0
	ldrh r1, [r2]
	ldr r3, _08023E78 @ =0xFFFF93FD
	adds r0, r1, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08023E4E
	ldrb r0, [r2, #4]
	adds r4, r0, #1
_08023E4E:
	ldr r0, _08023E7C @ =0x00006C04
	cmp r1, r0
	bne _08023E60
	movs r1, #0x10
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08023E60:
	movs r0, #1
	movs r1, #0xff
	bl sub_8024354
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
_08023E6C:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08023E74: .4byte gMultiSioRecv
_08023E78: .4byte 0xFFFF93FD
_08023E7C: .4byte 0x00006C04

	thumb_func_start sub_8023E80
sub_8023E80: @ 0x08023E80
	push {r4, lr}
	bl sub_802610C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _08023EE8
	ldr r0, _08023EA0 @ =gMultiSioStatusFlags
	ldr r1, [r0]
	ldr r0, _08023EA4 @ =0x00000C0C
	ands r0, r1
	cmp r0, #0
	beq _08023EA8
	movs r0, #4
	rsbs r0, r0, #0
	b _08023EE8
	.align 2, 0
_08023EA0: .4byte gMultiSioStatusFlags
_08023EA4: .4byte 0x00000C0C
_08023EA8:
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	bne _08023EB4
	movs r0, #0
	b _08023EE8
_08023EB4:
	ldr r2, _08023EF0 @ =gMultiSioRecv+1*0x18
	movs r4, #0
	ldrh r1, [r2]
	ldr r3, _08023EF4 @ =0xFFFF93F9
	adds r0, r1, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08023ECA
	ldrb r0, [r2, #4]
	adds r4, r0, #1
_08023ECA:
	ldr r0, _08023EF8 @ =0x00006C08
	cmp r1, r0
	bne _08023EDC
	movs r1, #0x10
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08023EDC:
	movs r0, #0
	movs r1, #0xff
	bl sub_8024394
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
_08023EE8:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08023EF0: .4byte gMultiSioRecv+1*0x18
_08023EF4: .4byte 0xFFFF93F9
_08023EF8: .4byte 0x00006C08

	thumb_func_start sub_8023EFC
sub_8023EFC: @ 0x08023EFC
	push {r4, lr}
	bl sub_802610C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _08023F50
	ldr r0, _08023F1C @ =gMultiSioStatusFlags
	ldr r1, [r0]
	ldr r0, _08023F20 @ =0x00000C0C
	ands r0, r1
	cmp r0, #0
	beq _08023F24
	movs r0, #4
	rsbs r0, r0, #0
	b _08023F50
	.align 2, 0
_08023F1C: .4byte gMultiSioStatusFlags
_08023F20: .4byte 0x00000C0C
_08023F24:
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	bne _08023F30
	movs r0, #0
	b _08023F50
_08023F30:
	ldr r0, _08023F58 @ =gMultiSioRecv+1*0x18
	movs r4, #0
	ldrh r1, [r0]
	ldr r0, _08023F5C @ =0x00006C08
	cmp r1, r0
	beq _08023F42
	adds r0, #2
	cmp r1, r0
	bne _08023F44
_08023F42:
	movs r4, #0x10
_08023F44:
	movs r0, #0
	movs r1, #0xff
	bl sub_80243C4
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
_08023F50:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08023F58: .4byte gMultiSioRecv+1*0x18
_08023F5C: .4byte 0x00006C08

	thumb_func_start sub_8023F60
sub_8023F60: @ 0x08023F60
	push {r4, r5, lr}
	bl sub_802610C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _08023FCE
	ldr r0, _08023F80 @ =gMultiSioStatusFlags
	ldr r1, [r0]
	ldr r0, _08023F84 @ =0x00000C0C
	ands r0, r1
	cmp r0, #0
	beq _08023F88
	movs r0, #4
	rsbs r0, r0, #0
	b _08023FCE
	.align 2, 0
_08023F80: .4byte gMultiSioStatusFlags
_08023F84: .4byte 0x00000C0C
_08023F88:
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	bne _08023F94
	movs r0, #0
	b _08023FCE
_08023F94:
	ldr r4, _08023FD4 @ =gMultiSioRecv
	movs r5, #0
	ldr r1, _08023FD8 @ =0xFFFF93F5
	adds r0, r1, #0
	ldrh r1, [r4]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08023FAA
	ldrb r5, [r4, #7]
_08023FAA:
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl sub_80243E4
	ldrh r1, [r4]
	ldr r0, _08023FDC @ =0x00006C0C
	cmp r1, r0
	bne _08023FCA
	movs r0, #0x80
	lsls r0, r0, #5
	adds r1, r0, #0
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_08023FCA:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
_08023FCE:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08023FD4: .4byte gMultiSioRecv
_08023FD8: .4byte 0xFFFF93F5
_08023FDC: .4byte 0x00006C0C

	thumb_func_start sub_8023FE0
sub_8023FE0: @ 0x08023FE0
	push {r4, lr}
	bl sub_802610C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _08024032
	ldr r0, _08024000 @ =gMultiSioStatusFlags
	ldr r1, [r0]
	ldr r0, _08024004 @ =0x00000C0C
	ands r0, r1
	cmp r0, #0
	beq _08024008
	movs r0, #4
	rsbs r0, r0, #0
	b _08024032
	.align 2, 0
_08024000: .4byte gMultiSioStatusFlags
_08024004: .4byte 0x00000C0C
_08024008:
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	bne _08024014
	movs r0, #0
	b _08024032
_08024014:
	ldr r2, _08024038 @ =gMultiSioRecv
	movs r4, #0
	ldrh r1, [r2]
	ldr r0, _0802403C @ =0x00006C0C
	cmp r1, r0
	bne _0802402A
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ldrb r4, [r2, #7]
	orrs r4, r0
_0802402A:
	ldrb r0, [r2, #7]
	bl sub_80243F8
	adds r0, r4, #0
_08024032:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08024038: .4byte gMultiSioRecv
_0802403C: .4byte 0x00006C0C

	thumb_func_start sub_8024040
sub_8024040: @ 0x08024040
	push {r4, lr}
	bl sub_8025D58
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_8024304
	ldr r1, _08024064 @ =gUnknown_03001060
	movs r0, #0
	strb r0, [r1, #7]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08024064: .4byte gUnknown_03001060

	thumb_func_start sub_8024068
sub_8024068: @ 0x08024068
	push {lr}
	bl sub_8024334
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8024074
sub_8024074: @ 0x08024074
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	bl sub_802610C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _080240AC
	ldr r0, _080240A0 @ =gMultiSioStatusFlags
	ldr r0, [r0]
	ldr r1, _080240A4 @ =0x00000C0C
	ands r0, r1
	cmp r0, #0
	bne _080240A8
	movs r0, #0
	adds r1, r4, #0
	bl sub_8024354
	movs r0, #0
	b _080240AC
	.align 2, 0
_080240A0: .4byte gMultiSioStatusFlags
_080240A4: .4byte 0x00000C0C
_080240A8:
	movs r0, #4
	rsbs r0, r0, #0
_080240AC:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80240B4
sub_80240B4: @ 0x080240B4
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	bl sub_802610C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _080240EC
	ldr r0, _080240E0 @ =gMultiSioStatusFlags
	ldr r0, [r0]
	ldr r1, _080240E4 @ =0x00000C0C
	ands r0, r1
	cmp r0, #0
	bne _080240E8
	movs r0, #0
	adds r1, r4, #0
	bl sub_8024374
	movs r0, #0
	b _080240EC
	.align 2, 0
_080240E0: .4byte gMultiSioStatusFlags
_080240E4: .4byte 0x00000C0C
_080240E8:
	movs r0, #4
	rsbs r0, r0, #0
_080240EC:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80240F4
sub_80240F4: @ 0x080240F4
	push {lr}
	bl sub_802610C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _0802412C
	ldr r0, _08024114 @ =gMultiSioStatusFlags
	ldr r1, [r0]
	ldr r0, _08024118 @ =0x00000C0C
	ands r0, r1
	cmp r0, #0
	beq _0802411C
	movs r0, #4
	rsbs r0, r0, #0
	b _0802412C
	.align 2, 0
_08024114: .4byte gMultiSioStatusFlags
_08024118: .4byte 0x00000C0C
_0802411C:
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0802412A
	movs r1, #0xff
	bl sub_8024374
_0802412A:
	movs r0, #0
_0802412C:
	pop {r1}
	bx r1

	thumb_func_start sub_8024130
sub_8024130: @ 0x08024130
	push {r4, lr}
	bl sub_802610C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _0802417A
	ldr r0, _08024150 @ =gMultiSioStatusFlags
	ldr r1, [r0]
	ldr r0, _08024154 @ =0x00000C0C
	ands r0, r1
	cmp r0, #0
	beq _08024158
	movs r0, #4
	rsbs r0, r0, #0
	b _0802417A
	.align 2, 0
_08024150: .4byte gMultiSioStatusFlags
_08024154: .4byte 0x00000C0C
_08024158:
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	bne _08024164
	movs r0, #0
	b _0802417A
_08024164:
	ldr r0, _08024180 @ =gMultiSioRecv+1*0x18
	movs r4, #0
	ldrh r1, [r0]
	ldr r0, _08024184 @ =0x00006C0A
	cmp r1, r0
	bne _08024172
	movs r4, #0x10
_08024172:
	bl sub_80243B4
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
_0802417A:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08024180: .4byte gMultiSioRecv+1*0x18
_08024184: .4byte 0x00006C0A

	thumb_func_start sub_8024188
sub_8024188: @ 0x08024188
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	bl sub_802610C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _080241A4
	movs r0, #1
	adds r1, r4, #0
	bl sub_8024394
	movs r0, #0
_080241A4:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80241AC
sub_80241AC: @ 0x080241AC
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	bl sub_802610C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _080241F8
	ldr r0, _080241D0 @ =gMultiSioStatusFlags
	ldr r0, [r0]
	ldr r1, _080241D4 @ =0x00000C0C
	ands r0, r1
	cmp r0, #0
	beq _080241D8
	movs r0, #4
	rsbs r0, r0, #0
	b _080241F8
	.align 2, 0
_080241D0: .4byte gMultiSioStatusFlags
_080241D4: .4byte 0x00000C0C
_080241D8:
	movs r4, #0
	ldr r0, _08024200 @ =gMultiSioRecv
	ldrh r1, [r0]
	ldr r0, _08024204 @ =0x00006C08
	cmp r1, r0
	beq _080241EA
	adds r0, #3
	cmp r1, r0
	bne _080241EC
_080241EA:
	movs r4, #0x10
_080241EC:
	movs r0, #1
	adds r1, r5, #0
	bl sub_80243C4
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
_080241F8:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08024200: .4byte gMultiSioRecv
_08024204: .4byte 0x00006C08

	thumb_func_start sub_8024208
sub_8024208: @ 0x08024208
	push {r4, lr}
	bl sub_802610C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _08024246
	ldr r0, _08024228 @ =gMultiSioStatusFlags
	ldr r0, [r0]
	ldr r1, _0802422C @ =0x00000C0C
	ands r0, r1
	cmp r0, #0
	beq _08024230
	movs r0, #4
	rsbs r0, r0, #0
	b _08024246
	.align 2, 0
_08024228: .4byte gMultiSioStatusFlags
_0802422C: .4byte 0x00000C0C
_08024230:
	movs r4, #0
	ldr r0, _0802424C @ =gMultiSioRecv
	ldrh r1, [r0]
	ldr r0, _08024250 @ =0x00006C0A
	cmp r1, r0
	bne _0802423E
	movs r4, #0x10
_0802423E:
	bl sub_80243B4
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
_08024246:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0802424C: .4byte gMultiSioRecv
_08024250: .4byte 0x00006C0A

	thumb_func_start sub_8024254
sub_8024254: @ 0x08024254
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	bl sub_802610C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _08024290
	ldr r0, _08024278 @ =gMultiSioStatusFlags
	ldr r1, [r0]
	ldr r0, _0802427C @ =0x00000C0C
	ands r0, r1
	cmp r0, #0
	beq _08024280
	movs r0, #4
	rsbs r0, r0, #0
	b _08024290
	.align 2, 0
_08024278: .4byte gMultiSioStatusFlags
_0802427C: .4byte 0x00000C0C
_08024280:
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	beq _0802428E
	adds r0, r4, #0
	bl sub_80243E4
_0802428E:
	movs r0, #0
_08024290:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8024298
sub_8024298: @ 0x08024298
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	bl sub_802610C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _080242F4
	ldr r0, _080242BC @ =gMultiSioStatusFlags
	ldr r1, [r0]
	ldr r0, _080242C0 @ =0x00000C0C
	ands r0, r1
	cmp r0, #0
	beq _080242C4
	movs r0, #4
	rsbs r0, r0, #0
	b _080242F4
	.align 2, 0
_080242BC: .4byte gMultiSioStatusFlags
_080242C0: .4byte 0x00000C0C
_080242C4:
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	bne _080242D0
	movs r0, #0
	b _080242F4
_080242D0:
	adds r0, r4, #0
	bl sub_80243F8
	ldr r0, _080242FC @ =gMultiSioRecv+1*0x18
	ldrh r1, [r0]
	ldr r0, _08024300 @ =0x00006C0C
	cmp r1, r0
	bne _080242F0
	movs r0, #0x80
	lsls r0, r0, #5
	adds r1, r0, #0
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_080242F0:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
_080242F4:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080242FC: .4byte gMultiSioRecv+1*0x18
_08024300: .4byte 0x00006C0C

	thumb_func_start sub_8024304
sub_8024304: @ 0x08024304
	ldr r0, _08024310 @ =gMultiSioSend
	movs r2, #0
	movs r1, #0
	strh r1, [r0]
	strb r2, [r0, #2]
	bx lr
	.align 2, 0
_08024310: .4byte gMultiSioSend

	thumb_func_start sub_8024314
sub_8024314: @ 0x08024314
	ldr r1, _0802431C @ =gMultiSioSend
	ldr r0, _08024320 @ =0x00006C01
	strh r0, [r1]
	bx lr
	.align 2, 0
_0802431C: .4byte gMultiSioSend
_08024320: .4byte 0x00006C01

	thumb_func_start sub_8024324
sub_8024324: @ 0x08024324
	ldr r1, _0802432C @ =gMultiSioSend
	ldr r0, _08024330 @ =0x00006C02
	strh r0, [r1]
	bx lr
	.align 2, 0
_0802432C: .4byte gMultiSioSend
_08024330: .4byte 0x00006C02

	thumb_func_start sub_8024334
sub_8024334: @ 0x08024334
	ldr r1, _0802434C @ =gMultiSioSend
	movs r2, #0
	ldr r0, _08024350 @ =0x00006C03
	strh r0, [r1]
	strb r2, [r1, #4]
	strb r2, [r1, #3]
	movs r0, #0xff
	strb r0, [r1, #5]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #6]
	bx lr
	.align 2, 0
_0802434C: .4byte gMultiSioSend
_08024350: .4byte 0x00006C03

	thumb_func_start sub_8024354
sub_8024354: @ 0x08024354
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, _0802436C @ =gMultiSioSend
	ldr r3, _08024370 @ =0x00006C03
	strh r3, [r2]
	strb r1, [r2, #4]
	adds r0, r0, r2
	strb r1, [r0, #5]
	bx lr
	.align 2, 0
_0802436C: .4byte gMultiSioSend
_08024370: .4byte 0x00006C03

	thumb_func_start sub_8024374
sub_8024374: @ 0x08024374
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, _0802438C @ =gMultiSioSend
	ldr r3, _08024390 @ =0x00006C04
	strh r3, [r2]
	strb r1, [r2, #4]
	adds r0, r0, r2
	strb r1, [r0, #5]
	bx lr
	.align 2, 0
_0802438C: .4byte gMultiSioSend
_08024390: .4byte 0x00006C04

	thumb_func_start sub_8024394
sub_8024394: @ 0x08024394
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, _080243AC @ =gMultiSioSend
	ldr r3, _080243B0 @ =0x00006C07
	strh r3, [r2]
	strb r1, [r2, #4]
	adds r0, r0, r2
	strb r1, [r0, #5]
	bx lr
	.align 2, 0
_080243AC: .4byte gMultiSioSend
_080243B0: .4byte 0x00006C07

	thumb_func_start sub_80243B4
sub_80243B4: @ 0x080243B4
	ldr r1, _080243BC @ =gMultiSioSend
	ldr r0, _080243C0 @ =0x00006C0A
	strh r0, [r1]
	bx lr
	.align 2, 0
_080243BC: .4byte gMultiSioSend
_080243C0: .4byte 0x00006C0A

	thumb_func_start sub_80243C4
sub_80243C4: @ 0x080243C4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, _080243DC @ =gMultiSioSend
	ldr r3, _080243E0 @ =0x00006C08
	strh r3, [r2]
	strb r1, [r2, #4]
	adds r0, r0, r2
	strb r1, [r0, #5]
	bx lr
	.align 2, 0
_080243DC: .4byte gMultiSioSend
_080243E0: .4byte 0x00006C08

	thumb_func_start sub_80243E4
sub_80243E4: @ 0x080243E4
	ldr r2, _080243F0 @ =gMultiSioSend
	ldr r1, _080243F4 @ =0x00006C0B
	strh r1, [r2]
	strb r0, [r2, #7]
	bx lr
	.align 2, 0
_080243F0: .4byte gMultiSioSend
_080243F4: .4byte 0x00006C0B

	thumb_func_start sub_80243F8
sub_80243F8: @ 0x080243F8
	ldr r2, _08024404 @ =gMultiSioSend
	ldr r1, _08024408 @ =0x00006C0C
	strh r1, [r2]
	strb r0, [r2, #7]
	bx lr
	.align 2, 0
_08024404: .4byte gMultiSioSend
_08024408: .4byte 0x00006C0C

	thumb_func_start sub_802440C
sub_802440C: @ 0x0802440C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r1, _0802442C @ =gStageData
	ldr r0, _08024430 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	strb r0, [r1, #6]
	adds r4, r0, #0
	cmp r4, #0
	beq _08024434
	movs r0, #0
	b _080244BE
	.align 2, 0
_0802442C: .4byte gStageData
_08024430: .4byte 0x04000128
_08024434:
	bl sub_802610C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _080244BE
	ldr r7, _080244CC @ =gMultiSioSend
	strb r4, [r7, #2]
	movs r1, #0
	ldr r0, _080244D0 @ =gMultiSioStatusFlags
	mov sb, r0
	ldr r2, _080244D4 @ =0x00006601
	mov r8, r2
	ldr r0, _080244D8 @ =gUnknown_0300106C
	mov ip, r0
_08024452:
	lsls r1, r1, #0x10
	asrs r3, r1, #0x10
	movs r4, #1
	lsls r4, r3
	mov r2, sb
	ldr r0, [r2]
	ands r0, r4
	adds r6, r1, #0
	cmp r0, #0
	beq _080244AA
	lsls r0, r3, #1
	adds r5, r0, r3
	lsls r1, r5, #3
	ldr r0, _080244DC @ =gMultiSioRecv
	adds r2, r1, r0
	ldrh r0, [r2]
	cmp r0, r8
	bne _080244AA
	ldrb r0, [r7, #2]
	orrs r4, r0
	strb r4, [r7, #2]
	lsls r0, r3, #2
	add r0, ip
	ldr r1, [r2, #4]
	str r1, [r0]
	movs r1, #0
	lsls r4, r5, #2
	ldr r5, _080244E0 @ =gUnknown_0300107C
	adds r3, r2, #0
	adds r3, #8
_0802448E:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #1
	adds r2, r1, r4
	adds r2, r2, r5
	adds r1, r3, r1
	ldrh r1, [r1]
	strh r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #5
	ble _0802448E
_080244AA:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r6, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08024452
	bl sub_8025BA0
	ldrb r0, [r7, #2]
_080244BE:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080244CC: .4byte gMultiSioSend
_080244D0: .4byte gMultiSioStatusFlags
_080244D4: .4byte 0x00006601
_080244D8: .4byte gUnknown_0300106C
_080244DC: .4byte gMultiSioRecv
_080244E0: .4byte gUnknown_0300107C

	thumb_func_start sub_80244E4
sub_80244E4: @ 0x080244E4
	push {r4, r5, lr}
	ldr r1, _08024524 @ =gStageData
	ldr r0, _08024528 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	strb r0, [r1, #6]
	bl sub_802610C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _08024576
	ldr r2, _0802452C @ =gMultiSioSend
	ldr r3, _08024530 @ =gUnknown_03001060
	ldr r0, _08024534 @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #0xf
	ands r0, r1
	strb r0, [r2, #2]
	strb r0, [r3, #7]
	adds r4, r0, #0
	bl sub_8025BB0
	adds r0, r4, #0
	cmp r0, #3
	beq _0802453C
	cmp r0, #7
	beq _0802453C
	cmp r0, #0xf
	beq _0802453C
	b _08024576
	.align 2, 0
_08024524: .4byte gStageData
_08024528: .4byte 0x04000128
_0802452C: .4byte gMultiSioSend
_08024530: .4byte gUnknown_03001060
_08024534: .4byte gMultiSioStatusFlags
_08024538:
	adds r0, r3, #0
	b _08024576
_0802453C:
	movs r1, #0
	lsls r4, r4, #0x10
	asrs r3, r4, #0x10
	ldr r5, _0802457C @ =0x00006602
_08024544:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r0, r3, #0
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08024564
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, _08024580 @ =gMultiSioRecv
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, r5
	bne _08024538
_08024564:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08024544
	movs r1, #0x10
	asrs r0, r4, #0x10
	orrs r0, r1
_08024576:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0802457C: .4byte 0x00006602
_08024580: .4byte gMultiSioRecv

	thumb_func_start sub_8024584
sub_8024584: @ 0x08024584
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _0802462C @ =gStageData
	ldr r0, _08024630 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	strb r0, [r1, #6]
	cmp r0, #0
	beq _08024628
	bl sub_802610C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080245A8
	b _080246A2
_080245A8:
	movs r1, #0
	ldr r0, _08024634 @ =gMultiSioStatusFlags
	mov r8, r0
	mov ip, r8
	ldr r7, _08024638 @ =gUnknown_0300106C
_080245B2:
	lsls r0, r1, #0x10
	asrs r3, r0, #0x10
	movs r1, #1
	lsls r1, r3
	mov r4, ip
	ldr r2, [r4]
	ands r2, r1
	adds r6, r0, #0
	cmp r2, #0
	beq _0802460E
	lsls r0, r3, #1
	adds r4, r0, r3
	lsls r1, r4, #3
	ldr r0, _0802463C @ =gMultiSioRecv
	adds r2, r1, r0
	ldr r1, _08024640 @ =0xFFFF99FF
	adds r0, r1, #0
	ldrh r1, [r2]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _0802460E
	lsls r0, r3, #2
	adds r0, r0, r7
	ldr r1, [r2, #4]
	str r1, [r0]
	movs r1, #0
	lsls r4, r4, #2
	ldr r5, _08024644 @ =gUnknown_0300107C
	adds r3, r2, #0
	adds r3, #8
_080245F2:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #1
	adds r2, r1, r4
	adds r2, r2, r5
	adds r1, r3, r1
	ldrh r1, [r1]
	strh r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #5
	ble _080245F2
_0802460E:
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r6, r4
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _080245B2
	mov r1, r8
	ldr r0, [r1]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08024648
_08024628:
	movs r0, #0
	b _080246A2
	.align 2, 0
_0802462C: .4byte gStageData
_08024630: .4byte 0x04000128
_08024634: .4byte gMultiSioStatusFlags
_08024638: .4byte gUnknown_0300106C
_0802463C: .4byte gMultiSioRecv
_08024640: .4byte 0xFFFF99FF
_08024644: .4byte gUnknown_0300107C
_08024648:
	ldr r5, _08024668 @ =gMultiSioSend
	ldr r2, _0802466C @ =gMultiSioRecv
	movs r4, #0
	ldrh r3, [r2]
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r3
	movs r1, #0xcc
	lsls r1, r1, #7
	cmp r0, r1
	beq _08024670
	cmp r3, #0
	beq _08024670
	movs r0, #5
	rsbs r0, r0, #0
	b _080246A2
	.align 2, 0
_08024668: .4byte gMultiSioSend
_0802466C: .4byte gMultiSioRecv
_08024670:
	ldr r1, _080246AC @ =0xFFFF99FF
	adds r0, r1, #0
	ldrh r1, [r2]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08024686
	ldrb r0, [r2, #2]
	strb r0, [r5, #2]
	ldrb r4, [r2, #2]
_08024686:
	ldrh r1, [r2]
	ldr r0, _080246B0 @ =0x00006602
	cmp r1, r0
	bne _0802469A
	movs r1, #0x10
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0802469A:
	bl sub_8025BA0
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
_080246A2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080246AC: .4byte 0xFFFF99FF
_080246B0: .4byte 0x00006602

	thumb_func_start sub_80246B4
sub_80246B4: @ 0x080246B4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _08024758 @ =gStageData
	ldr r0, _0802475C @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	strb r0, [r1, #6]
	bl sub_802610C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _080247B4
	movs r1, #0
	ldr r0, _08024760 @ =gMultiSioStatusFlags
	mov r8, r0
	mov ip, r8
	ldr r7, _08024764 @ =gUnknown_0300106C
_080246DC:
	lsls r0, r1, #0x10
	asrs r3, r0, #0x10
	movs r1, #1
	lsls r1, r3
	mov r4, ip
	ldr r2, [r4]
	ands r2, r1
	adds r6, r0, #0
	cmp r2, #0
	beq _08024738
	lsls r0, r3, #1
	adds r4, r0, r3
	lsls r1, r4, #3
	ldr r0, _08024768 @ =gMultiSioRecv
	adds r2, r1, r0
	ldr r1, _0802476C @ =0xFFFF99FF
	adds r0, r1, #0
	ldrh r1, [r2]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08024738
	lsls r0, r3, #2
	adds r0, r0, r7
	ldr r1, [r2, #4]
	str r1, [r0]
	movs r1, #0
	lsls r4, r4, #2
	ldr r5, _08024770 @ =gUnknown_0300107C
	adds r3, r2, #0
	adds r3, #8
_0802471C:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #1
	adds r2, r1, r4
	adds r2, r2, r5
	adds r1, r3, r1
	ldrh r1, [r1]
	strh r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #5
	ble _0802471C
_08024738:
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r6, r4
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _080246DC
	mov r0, r8
	ldr r3, [r0]
	movs r0, #1
	ands r0, r3
	cmp r0, #0
	bne _08024774
	movs r0, #0
	b _080247B4
	.align 2, 0
_08024758: .4byte gStageData
_0802475C: .4byte 0x04000128
_08024760: .4byte gMultiSioStatusFlags
_08024764: .4byte gUnknown_0300106C
_08024768: .4byte gMultiSioRecv
_0802476C: .4byte 0xFFFF99FF
_08024770: .4byte gUnknown_0300107C
_08024774:
	ldr r5, _080247C0 @ =gMultiSioSend
	ldr r2, _080247C4 @ =gMultiSioRecv
	movs r4, #0
	ldr r1, _080247C8 @ =0xFFFF99FE
	adds r0, r1, #0
	ldrh r1, [r2]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08024798
	ldr r1, _080247CC @ =gUnknown_03001060
	movs r0, #0xf
	ands r0, r3
	strb r0, [r2, #2]
	strb r0, [r5, #2]
	strb r0, [r1, #7]
	adds r4, r0, #0
_08024798:
	ldrh r1, [r2]
	ldr r0, _080247D0 @ =0x00006603
	cmp r1, r0
	bne _080247AC
	movs r1, #0x10
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_080247AC:
	bl sub_8025BB0
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
_080247B4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080247C0: .4byte gMultiSioSend
_080247C4: .4byte gMultiSioRecv
_080247C8: .4byte 0xFFFF99FE
_080247CC: .4byte gUnknown_03001060
_080247D0: .4byte 0x00006603

	thumb_func_start sub_80247D4
sub_80247D4: @ 0x080247D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08024840 @ =gUnknown_03001060
	ldrb r0, [r0, #7]
	str r0, [sp]
	movs r7, #0
	movs r5, #0
	ldr r0, _08024844 @ =gMultiSioSend
	mov sl, r0
	movs r2, #0
	mov r6, sl
	adds r6, #0xf
	adds r3, r6, #0
	movs r4, #1
_080247F8:
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	adds r1, r3, r2
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _08024810
	adds r0, r4, #0
	ldrb r1, [r1]
	lsls r0, r1
	orrs r7, r0
	lsls r0, r7, #0x18
	lsrs r7, r0, #0x18
_08024810:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _080247F8
	movs r2, #0
	ldr r0, _08024848 @ =gUnknown_030010AC
	mov sb, r0
	movs r0, #0xff
	mov r8, r0
_08024826:
	lsls r2, r2, #0x10
	asrs r3, r2, #0x10
	ldr r1, [sp]
	asrs r1, r3
	movs r0, #1
	ands r1, r0
	mov ip, r2
	cmp r1, #0
	beq _080248D4
	cmp r3, #0
	bne _0802484C
	mov r1, sl
	b _08024856
	.align 2, 0
_08024840: .4byte gUnknown_03001060
_08024844: .4byte gMultiSioSend
_08024848: .4byte gUnknown_030010AC
_0802484C:
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #3
	ldr r1, _08024880 @ =gMultiSioRecv
	adds r1, r0, r1
_08024856:
	ldrb r0, [r1, #3]
	ldrh r3, [r1]
	ldr r2, _08024884 @ =0x00006604
	cmp r3, r2
	beq _08024866
	adds r2, #4
	cmp r3, r2
	bne _08024888
_08024866:
	mov r2, sb
	adds r3, r0, r2
	adds r2, r6, r0
	adds r1, #0xf
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r2]
	ldrb r1, [r1]
	mov r0, r8
	ands r0, r1
	strb r0, [r3]
	b _080248D4
	.align 2, 0
_08024880: .4byte gMultiSioRecv
_08024884: .4byte 0x00006604
_08024888:
	adds r3, r0, #0
	adds r0, r1, #0
	adds r0, #0xf
	adds r1, r0, r3
	ldrb r0, [r1]
	cmp r0, #0xff
	bne _080248A0
	adds r2, r6, r3
	ldrb r1, [r2]
	mov r0, r8
	orrs r0, r1
	b _080248D2
_080248A0:
	ldrb r4, [r1]
	adds r0, r7, #0
	asrs r0, r4
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _080248BA
	movs r0, #0x10
	lsls r0, r3
	orrs r5, r0
	lsls r0, r5, #0x10
	lsrs r5, r0, #0x10
	b _080248D4
_080248BA:
	adds r0, r2, #0
	lsls r0, r3
	orrs r5, r0
	lsls r0, r5, #0x10
	lsrs r5, r0, #0x10
	mov r0, sb
	adds r2, r3, r0
	adds r0, r6, r3
	strb r4, [r0]
	ldrb r1, [r1]
	mov r0, r8
	ands r0, r1
_080248D2:
	strb r0, [r2]
_080248D4:
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, ip
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08024826
	adds r0, r5, #0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80248F4
sub_80248F4: @ 0x080248F4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r4, #0
	ldr r0, _08024974 @ =gUnknown_03001060
	ldrb r7, [r0, #7]
	ldr r1, _08024978 @ =gMultiSioSend
	mov ip, r1
	movs r2, #0
	ldr r1, _0802497C @ =0x00006605
	mov sb, r1
	adds r0, #0x4c
	mov r8, r0
	movs r6, #0xff
_08024912:
	lsls r2, r2, #0x10
	asrs r3, r2, #0x10
	adds r1, r7, #0
	asrs r1, r3
	movs r0, #1
	ands r1, r0
	adds r5, r2, #0
	cmp r1, #0
	beq _08024958
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #3
	ldr r1, _08024980 @ =gMultiSioRecv
	adds r0, r0, r1
	ldrb r2, [r0, #3]
	ldrh r0, [r0]
	cmp r0, sb
	bne _08024958
	movs r0, #0x80
	lsls r0, r0, #1
	lsls r0, r2
	orrs r4, r0
	lsls r0, r4, #0x10
	lsrs r4, r0, #0x10
	mov r0, r8
	adds r3, r2, r0
	mov r1, ip
	adds r1, #0xf
	adds r1, r1, r2
	ldrb r0, [r1]
	orrs r0, r6
	strb r0, [r1]
	ldrb r0, [r3]
	orrs r0, r6
	strb r0, [r3]
_08024958:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08024912
	adds r0, r4, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08024974: .4byte gUnknown_03001060
_08024978: .4byte gMultiSioSend
_0802497C: .4byte 0x00006605
_08024980: .4byte gMultiSioRecv

	thumb_func_start sub_8024984
sub_8024984: @ 0x08024984
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r7, _08024A00 @ =gUnknown_03001060
	ldrb r6, [r7, #7]
	ldr r0, _08024A04 @ =gStageData
	ldrb r4, [r0, #6]
	bl sub_802610C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _08024A3E
	ldr r1, _08024A08 @ =gMultiSioSend
	adds r2, r1, #0
	adds r2, #0xf
	adds r0, r4, r2
	strb r5, [r0]
	adds r0, r7, #0
	adds r0, #0x4c
	strb r5, [r0]
	movs r3, #0
	adds r4, r1, #0
	mov ip, r2
	adds r7, r0, #0
_080249B6:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	mov r1, ip
	adds r2, r1, r0
	adds r1, r0, r7
	ldrb r1, [r1]
	strb r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _080249B6
	movs r0, #0
	strh r0, [r4, #0xc]
	bl sub_80247D4
	ldrh r1, [r4, #0xc]
	orrs r1, r0
	strh r1, [r4, #0xc]
	bl sub_80248F4
	ldrh r1, [r4, #0xc]
	orrs r1, r0
	strh r1, [r4, #0xc]
	adds r0, r5, #0
	bl sub_8025714
	cmp r6, #3
	beq _08024A0C
	cmp r6, #7
	beq _08024A0C
	cmp r6, #0xf
	beq _08024A0C
_080249FA:
	movs r0, #0
	b _08024A3E
	.align 2, 0
_08024A00: .4byte gUnknown_03001060
_08024A04: .4byte gStageData
_08024A08: .4byte gMultiSioSend
_08024A0C:
	movs r3, #0
	ldr r4, _08024A44 @ =0x00006604
_08024A10:
	lsls r0, r3, #0x10
	asrs r2, r0, #0x10
	adds r0, r6, #0
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08024A30
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, _08024A48 @ =gMultiSioRecv
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, r4
	bne _080249FA
_08024A30:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08024A10
	movs r0, #2
_08024A3E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08024A44: .4byte 0x00006604
_08024A48: .4byte gMultiSioRecv

	thumb_func_start sub_8024A4C
sub_8024A4C: @ 0x08024A4C
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	bl sub_802610C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _08024AAA
	ldr r2, _08024AB0 @ =gMultiSioSend
	ldr r0, _08024AB4 @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	lsls r6, r4, #0x18
	cmp r0, #0
	beq _08024AA2
	ldr r1, _08024AB8 @ =gMultiSioRecv
	ldr r3, _08024ABC @ =0xFFFF99FD
	adds r0, r3, #0
	ldrh r3, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08024AA2
	movs r3, #0
	adds r5, r2, #0
	adds r5, #0xf
	adds r4, r1, #0
	adds r4, #0xf
_08024A8A:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r2, r5, r0
	adds r1, r4, r0
	ldrb r1, [r1]
	strb r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08024A8A
_08024AA2:
	lsrs r0, r6, #0x18
	bl sub_8025BEC
	movs r0, #0
_08024AAA:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08024AB0: .4byte gMultiSioSend
_08024AB4: .4byte gMultiSioStatusFlags
_08024AB8: .4byte gMultiSioRecv
_08024ABC: .4byte 0xFFFF99FD

	thumb_func_start sub_8024AC0
sub_8024AC0: @ 0x08024AC0
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	movs r5, #0
	ldr r1, _08024B50 @ =gStageData
	ldr r0, _08024B54 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	strb r0, [r1, #6]
	adds r4, r0, #0
	bl sub_802610C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _08024B7C
	ldr r0, _08024B58 @ =gMultiSioSend
	mov ip, r0
	ldr r0, _08024B5C @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08024B72
	ldr r3, _08024B60 @ =gMultiSioRecv
	ldrh r1, [r3]
	ldr r2, _08024B64 @ =0xFFFF99FD
	adds r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _08024B08
	ldr r0, _08024B68 @ =0x00006606
	cmp r1, r0
	bne _08024B72
_08024B08:
	movs r1, #0
	ldr r6, _08024B6C @ =gUnknown_030010AC
	adds r5, r3, #0
	adds r5, #0xf
_08024B10:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r2, r0, r6
	adds r1, r5, r0
	ldrb r1, [r1]
	strb r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08024B10
	ldrh r2, [r3, #0xc]
	adds r0, r2, #0
	asrs r0, r4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08024B70
	movs r0, #0x10
	lsls r0, r4
	ands r2, r0
	cmp r2, #0
	beq _08024B70
	mov r0, ip
	adds r0, #0xf
	adds r0, r0, r4
	movs r1, #0xff
	strb r1, [r0]
	movs r0, #2
	b _08024B7C
	.align 2, 0
_08024B50: .4byte gStageData
_08024B54: .4byte 0x04000128
_08024B58: .4byte gMultiSioSend
_08024B5C: .4byte gMultiSioStatusFlags
_08024B60: .4byte gMultiSioRecv
_08024B64: .4byte 0xFFFF99FD
_08024B68: .4byte 0x00006606
_08024B6C: .4byte gUnknown_030010AC
_08024B70:
	movs r5, #1
_08024B72:
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	bl sub_8025C20
	adds r0, r5, #0
_08024B7C:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8024B84
sub_8024B84: @ 0x08024B84
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r0, #0
	mov sl, r0
	ldr r1, _08024C20 @ =gStageData
	ldr r0, _08024C24 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	strb r0, [r1, #6]
	mov sb, r0
	bl sub_802610C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _08024C58
	ldr r3, _08024C28 @ =gMultiSioSend
	ldr r0, _08024C2C @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	lsls r4, r4, #0x18
	str r4, [sp]
	cmp r0, #0
	beq _08024C4E
	ldr r5, _08024C30 @ =gMultiSioRecv
	ldr r1, _08024C34 @ =0xFFFF99FD
	adds r0, r1, #0
	ldrh r2, [r5]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08024C4E
	movs r0, #0
	ldr r1, _08024C38 @ =gUnknown_030010AC
	mov r8, r1
	adds r3, #0xf
	mov ip, r3
	adds r6, r5, #0
	adds r6, #0xf
	movs r7, #0xff
_08024BE6:
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	mov r2, r8
	adds r4, r1, r2
	mov r0, ip
	adds r3, r0, r1
	adds r2, r6, r1
	ldrb r0, [r2]
	strb r0, [r3]
	ldrb r2, [r2]
	adds r0, r7, #0
	ands r0, r2
	strb r0, [r4]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #3
	ble _08024BE6
	ldrh r1, [r5, #0xc]
	movs r0, #0x80
	lsls r0, r0, #1
	mov r2, sb
	lsls r0, r2
	ands r0, r1
	cmp r0, #0
	beq _08024C3C
	movs r0, #1
	b _08024C4C
	.align 2, 0
_08024C20: .4byte gStageData
_08024C24: .4byte 0x04000128
_08024C28: .4byte gMultiSioSend
_08024C2C: .4byte gMultiSioStatusFlags
_08024C30: .4byte gMultiSioRecv
_08024C34: .4byte 0xFFFF99FD
_08024C38: .4byte gUnknown_030010AC
_08024C3C:
	movs r0, #0x80
	lsls r0, r0, #5
	mov r2, sb
	lsls r0, r2
	ands r1, r0
	cmp r1, #0
	beq _08024C4E
	movs r0, #2
_08024C4C:
	mov sl, r0
_08024C4E:
	ldr r1, [sp]
	lsrs r0, r1, #0x18
	bl sub_8025C64
	mov r0, sl
_08024C58:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8024C68
sub_8024C68: @ 0x08024C68
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r5, #0
	ldr r1, _08024D0C @ =gStageData
	ldr r0, _08024D10 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	strb r0, [r1, #6]
	adds r4, r0, #0
	bl sub_802610C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08024C94
	b _08024DBA
_08024C94:
	ldr r2, _08024D14 @ =gMultiSioSend
	subs r1, r4, #2
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	adds r3, r4, #0
	mov r8, r1
	cmp r0, #1
	bhi _08024CA6
	adds r3, r0, #0
_08024CA6:
	ldr r1, _08024D18 @ =gUnknown_03001060
	adds r1, #0x4c
	adds r0, r3, r1
	mov r3, sb
	strb r3, [r0]
	movs r3, #0
	ldr r0, _08024D1C @ =gMultiSioStatusFlags
	mov ip, r0
	adds r7, r2, #0
	adds r7, #0xf
	adds r6, r1, #0
_08024CBC:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r2, r7, r0
	adds r1, r0, r6
	ldrb r1, [r1]
	strb r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08024CBC
	mov r1, ip
	ldr r0, [r1]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08024D5C
	ldr r2, _08024D20 @ =gMultiSioRecv
	cmp r4, #1
	bhi _08024D30
	ldrh r1, [r2]
	ldr r2, _08024D24 @ =0xFFFF99FD
	adds r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _08024CFA
	ldr r0, _08024D28 @ =0x00006606
	cmp r1, r0
	bne _08024D5C
_08024CFA:
	ldr r0, _08024D2C @ =0x00006604
	cmp r1, r0
	bne _08024D02
	movs r5, #1
_08024D02:
	ldr r0, _08024D28 @ =0x00006606
	cmp r1, r0
	bne _08024D5C
_08024D08:
	movs r5, #2
	b _08024D5C
	.align 2, 0
_08024D0C: .4byte gStageData
_08024D10: .4byte 0x04000128
_08024D14: .4byte gMultiSioSend
_08024D18: .4byte gUnknown_03001060
_08024D1C: .4byte gMultiSioStatusFlags
_08024D20: .4byte gMultiSioRecv
_08024D24: .4byte 0xFFFF99FD
_08024D28: .4byte 0x00006606
_08024D2C: .4byte 0x00006604
_08024D30:
	mov r3, r8
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08024D5C
	adds r0, r4, #0
	ands r0, r1
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r2, r1, r2
	ldrh r1, [r2]
	ldr r2, _08024D6C @ =0xFFFF99F9
	adds r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _08024D08
	ldr r0, _08024D70 @ =0x0000660A
	cmp r1, r0
	beq _08024D08
	movs r5, #1
_08024D5C:
	cmp r4, #1
	bhi _08024D74
	mov r3, sb
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
	bl sub_8025714
	b _08024D7A
	.align 2, 0
_08024D6C: .4byte 0xFFFF99F9
_08024D70: .4byte 0x0000660A
_08024D74:
	movs r0, #0xff
	bl sub_8025714
_08024D7A:
	cmp r4, #1
	bne _08024D88
	movs r0, #0
	cmp r5, #2
	bne _08024DBA
	movs r0, #2
	b _08024DBA
_08024D88:
	cmp r4, #2
	beq _08024DB8
	cmp r4, #3
	bne _08024DB8
	cmp r5, #2
	bne _08024D98
	movs r0, #2
	b _08024DBA
_08024D98:
	ldr r2, _08024DAC @ =gMultiSioRecv+1*0x18
	ldrh r1, [r2]
	ldr r0, _08024DB0 @ =0x00006604
	cmp r1, r0
	beq _08024DA8
	adds r0, #2
	cmp r1, r0
	bne _08024DB4
_08024DA8:
	movs r0, #1
	b _08024DBA
	.align 2, 0
_08024DAC: .4byte gMultiSioRecv+1*0x18
_08024DB0: .4byte 0x00006604
_08024DB4:
	movs r0, #0
	b _08024DBA
_08024DB8:
	adds r0, r5, #0
_08024DBA:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8024DC8
sub_8024DC8: @ 0x08024DC8
	push {r4, lr}
	movs r4, #0
	ldr r1, _08024E08 @ =gStageData
	ldr r0, _08024E0C @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	strb r0, [r1, #6]
	bl sub_802610C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _08024E02
	ldr r0, _08024E10 @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08024DFC
	ldr r0, _08024E14 @ =gMultiSioRecv
	ldrh r1, [r0]
	ldr r0, _08024E18 @ =0x00006606
	cmp r1, r0
	bne _08024DFC
	movs r4, #1
_08024DFC:
	bl sub_8025770
	adds r0, r4, #0
_08024E02:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08024E08: .4byte gStageData
_08024E0C: .4byte 0x04000128
_08024E10: .4byte gMultiSioStatusFlags
_08024E14: .4byte gMultiSioRecv
_08024E18: .4byte 0x00006606

	thumb_func_start sub_8024E1C
sub_8024E1C: @ 0x08024E1C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _08024E60 @ =gUnknown_03001060
	ldrb r5, [r0, #7]
	ldr r0, _08024E64 @ =gStageData
	ldrb r6, [r0, #6]
	bl sub_802610C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _08024F12
	ldr r7, _08024E68 @ =gMultiSioSend
	cmp r6, #1
	bhi _08024E6C
	movs r0, #4
	lsls r0, r6
	ands r0, r5
	cmp r0, #0
	bne _08024E6C
	adds r0, r6, #2
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r7, #0
	adds r0, #0xf
	adds r0, r4, r0
	mov r1, r8
	strb r1, [r0]
	b _08024E6E
	.align 2, 0
_08024E60: .4byte gUnknown_03001060
_08024E64: .4byte gStageData
_08024E68: .4byte gMultiSioSend
_08024E6C:
	adds r4, r6, #0
_08024E6E:
	movs r0, #0
	strh r0, [r7, #0xc]
	bl sub_80247D4
	ldrh r1, [r7, #0xc]
	orrs r1, r0
	strh r1, [r7, #0xc]
	bl sub_80248F4
	ldrh r1, [r7, #0xc]
	orrs r1, r0
	strh r1, [r7, #0xc]
	mov r0, r8
	bl sub_8025874
	cmp r5, #3
	beq _08024E98
	cmp r5, #7
	beq _08024E98
	cmp r5, #0xf
	bne _08024F00
_08024E98:
	cmp r6, #1
	bhi _08024EDC
	cmp r4, r6
	beq _08024EDC
	cmp r4, #2
	bne _08024EB4
	lsrs r0, r5, #3
	movs r1, #1
	ands r0, r1
	ldr r1, _08024EB0 @ =gMultiSioRecv+1*0x18
	b _08024EBC
	.align 2, 0
_08024EB0: .4byte gMultiSioRecv+1*0x18
_08024EB4:
	lsrs r0, r5, #2
	movs r1, #1
	ands r0, r1
	ldr r1, _08024ED4 @ =gMultiSioRecv
_08024EBC:
	cmp r0, #0
	beq _08024EC2
	adds r1, #0x30
_08024EC2:
	ldrh r1, [r1]
	ldr r0, _08024ED8 @ =0x00006608
	cmp r1, r0
	beq _08024F10
	adds r0, #3
	cmp r1, r0
	beq _08024F10
	b _08024F00
	.align 2, 0
_08024ED4: .4byte gMultiSioRecv
_08024ED8: .4byte 0x00006608
_08024EDC:
	ldr r1, _08024F04 @ =gMultiSioRecv+3*0x18
	cmp r4, #0
	bne _08024EE4
	subs r1, #0x18
_08024EE4:
	ldrh r2, [r1]
	ldr r0, _08024F08 @ =0x0000660B
	cmp r2, r0
	bne _08024F00
	lsrs r0, r5, #3
	movs r1, #1
	ands r0, r1
	ldr r1, _08024F0C @ =gMultiSioRecv+1*0x18
	cmp r0, #0
	beq _08024EFA
	adds r1, #0x30
_08024EFA:
	ldrh r0, [r1]
	cmp r0, r2
	beq _08024F10
_08024F00:
	movs r0, #0
	b _08024F12
	.align 2, 0
_08024F04: .4byte gMultiSioRecv+3*0x18
_08024F08: .4byte 0x0000660B
_08024F0C: .4byte gMultiSioRecv+1*0x18
_08024F10:
	movs r0, #1
_08024F12:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8024F1C
sub_8024F1C: @ 0x08024F1C
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r1, _08024F78 @ =gStageData
	ldr r0, _08024F7C @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	strb r0, [r1, #6]
	movs r6, #0xff
	adds r5, r0, #0
	cmp r5, #1
	bhi _08024F38
	adds r5, #2
_08024F38:
	bl sub_802610C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _08024F72
	ldr r4, _08024F80 @ =gMultiSioSend
	adds r1, r4, #0
	adds r1, #0xf
	adds r1, r5, r1
	ldrb r0, [r1]
	orrs r0, r6
	strb r0, [r1]
	movs r0, #0
	strh r0, [r4, #0xc]
	bl sub_80247D4
	ldrh r1, [r4, #0xc]
	orrs r1, r0
	strh r1, [r4, #0xc]
	bl sub_80248F4
	ldrh r1, [r4, #0xc]
	orrs r1, r0
	strh r1, [r4, #0xc]
	adds r0, r7, #0
	bl sub_8025C8C
	movs r0, #1
_08024F72:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08024F78: .4byte gStageData
_08024F7C: .4byte 0x04000128
_08024F80: .4byte gMultiSioSend

	thumb_func_start sub_8024F84
sub_8024F84: @ 0x08024F84
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	bl sub_802610C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _08025018
	ldr r0, _08025000 @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08025010
	ldr r3, _08025004 @ =gMultiSioRecv
	ldr r1, _08025008 @ =0xFFFF99F9
	adds r0, r1, #0
	ldrh r1, [r3]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08025010
	movs r1, #0
	ldr r5, _0802500C @ =gUnknown_030010AC
	adds r4, r3, #0
	adds r4, #0xf
_08024FC0:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r2, r0, r5
	adds r1, r4, r0
	ldrb r1, [r1]
	strb r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08024FC0
	ldrh r2, [r3, #0xc]
	adds r0, r2, #0
	asrs r0, r6
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08025010
	movs r0, #0x10
	lsls r0, r6
	ands r2, r0
	cmp r2, #0
	beq _08025010
	mov r0, r8
	adds r0, #0xf
	adds r0, r0, r6
	movs r1, #0xff
	strb r1, [r0]
	movs r0, #2
	b _08025018
	.align 2, 0
_08025000: .4byte gMultiSioStatusFlags
_08025004: .4byte gMultiSioRecv
_08025008: .4byte 0xFFFF99F9
_0802500C: .4byte gUnknown_030010AC
_08025010:
	adds r0, r7, #0
	bl sub_80257AC
	movs r0, #0
_08025018:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8025024
sub_8025024: @ 0x08025024
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r5, #0
	ldr r1, _080250B8 @ =gStageData
	ldr r0, _080250BC @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	strb r0, [r1, #6]
	adds r4, r0, #0
	cmp r4, #1
	bhi _08025046
	adds r4, #2
_08025046:
	bl sub_802610C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _080250E2
	ldr r2, _080250C0 @ =gMultiSioSend
	ldr r0, _080250C4 @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080250D6
	ldr r6, _080250C8 @ =gMultiSioRecv
	ldr r1, _080250CC @ =0xFFFF99F9
	adds r0, r1, #0
	ldrh r1, [r6]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _080250D6
	movs r1, #0
	adds r7, r2, #0
	adds r7, #0xf
	adds r5, r7, #0
	ldr r3, _080250D0 @ =gUnknown_030010AC
_0802507C:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r2, r5, r0
	adds r1, r0, r3
	ldrb r1, [r1]
	strb r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0802507C
	ldrh r2, [r6, #0xc]
	adds r0, r2, #0
	asrs r0, r4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080250D4
	movs r0, #0x10
	lsls r0, r4
	ands r2, r0
	cmp r2, #0
	beq _080250D4
	adds r1, r7, r4
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #2
	b _080250E2
	.align 2, 0
_080250B8: .4byte gStageData
_080250BC: .4byte 0x04000128
_080250C0: .4byte gMultiSioSend
_080250C4: .4byte gMultiSioStatusFlags
_080250C8: .4byte gMultiSioRecv
_080250CC: .4byte 0xFFFF99F9
_080250D0: .4byte gUnknown_030010AC
_080250D4:
	movs r5, #1
_080250D6:
	mov r1, r8
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	bl sub_8025808
	adds r0, r5, #0
_080250E2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80250EC
sub_80250EC: @ 0x080250EC
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r0, _08025124 @ =gUnknown_03001060
	ldrb r5, [r0, #7]
	movs r6, #0
	ldr r1, _08025128 @ =gStageData
	ldr r0, _0802512C @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	strb r0, [r1, #6]
	adds r4, r0, #0
	bl sub_802610C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _080251E8
	cmp r4, #1
	bhi _08025130
	movs r0, #4
	lsls r0, r4
	ands r0, r5
	cmp r0, #0
	bne _08025130
	adds r2, r4, #2
	b _08025132
	.align 2, 0
_08025124: .4byte gUnknown_03001060
_08025128: .4byte gStageData
_0802512C: .4byte 0x04000128
_08025130:
	adds r2, r4, #0
_08025132:
	ldr r0, _08025160 @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080251E0
	subs r0, r2, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080251C4
	cmp r2, #3
	bne _08025168
	ldr r1, _08025164 @ =gMultiSioRecv+2*0x18
	cmp r4, #1
	bhi _0802518E
	movs r0, #4
	lsls r0, r4
	ands r5, r0
	cmp r5, #0
	bne _0802518E
	b _0802518C
	.align 2, 0
_08025160: .4byte gMultiSioStatusFlags
_08025164: .4byte gMultiSioRecv+2*0x18
_08025168:
	cmp r4, #1
	bhi _08025180
	movs r0, #4
	lsls r0, r4
	ands r0, r5
	cmp r0, #0
	bne _08025180
	ldr r1, _0802517C @ =gMultiSioRecv+1*0x18
	b _0802518E
	.align 2, 0
_0802517C: .4byte gMultiSioRecv+1*0x18
_08025180:
	lsrs r0, r5, #3
	movs r1, #1
	ands r0, r1
	ldr r1, _080251B4 @ =gMultiSioRecv+3*0x18
	cmp r0, #0
	bne _0802518E
_0802518C:
	subs r1, #0x30
_0802518E:
	ldrh r1, [r1]
	ldr r2, _080251B8 @ =0xFFFF99F9
	adds r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _080251AA
	adds r2, r1, #0
	ldr r0, _080251BC @ =0x0000660B
	cmp r2, r0
	beq _080251AA
	subs r0, #1
	cmp r2, r0
	bne _080251E0
_080251AA:
	ldr r0, _080251C0 @ =0x00006608
	cmp r1, r0
	beq _080251DE
	adds r0, #3
	b _080251DA
	.align 2, 0
_080251B4: .4byte gMultiSioRecv+3*0x18
_080251B8: .4byte 0xFFFF99F9
_080251BC: .4byte 0x0000660B
_080251C0: .4byte 0x00006608
_080251C4:
	cmp r4, #0
	bne _080251D0
	ldr r1, _080251CC @ =gMultiSioRecv+2*0x18
	b _080251D6
	.align 2, 0
_080251CC: .4byte gMultiSioRecv+2*0x18
_080251D0:
	cmp r4, #1
	bne _080251E0
	ldr r1, _080251F0 @ =gMultiSioRecv+3*0x18
_080251D6:
	ldrh r1, [r1]
	ldr r0, _080251F4 @ =0x0000660B
_080251DA:
	cmp r1, r0
	bne _080251E0
_080251DE:
	movs r6, #1
_080251E0:
	adds r0, r7, #0
	bl sub_8025874
	adds r0, r6, #0
_080251E8:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080251F0: .4byte gMultiSioRecv+3*0x18
_080251F4: .4byte 0x0000660B

	thumb_func_start sub_80251F8
sub_80251F8: @ 0x080251F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r0, #0
	mov sl, r0
	ldr r1, _080252A0 @ =gStageData
	ldr r0, _080252A4 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	strb r0, [r1, #6]
	adds r5, r0, #0
	bl sub_802610C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _080252D6
	cmp r5, #1
	bhi _08025230
	adds r0, r5, #2
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_08025230:
	ldr r3, _080252A8 @ =gMultiSioSend
	ldr r0, _080252AC @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	lsls r4, r4, #0x18
	str r4, [sp]
	cmp r0, #0
	beq _080252CC
	ldr r6, _080252B0 @ =gMultiSioRecv
	ldr r1, _080252B4 @ =0xFFFF99F9
	adds r0, r1, #0
	ldrh r1, [r6]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _080252CC
	movs r0, #0
	ldr r1, _080252B8 @ =gUnknown_030010AC
	mov sb, r1
	adds r3, #0xf
	mov r8, r3
	adds r7, r6, #0
	adds r7, #0xf
	movs r1, #0xff
	mov ip, r1
_08025266:
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	mov r0, sb
	adds r4, r1, r0
	mov r0, r8
	adds r3, r0, r1
	adds r2, r7, r1
	ldrb r0, [r2]
	strb r0, [r3]
	ldrb r2, [r2]
	mov r0, ip
	ands r0, r2
	strb r0, [r4]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #3
	ble _08025266
	ldrh r1, [r6, #0xc]
	movs r0, #0x80
	lsls r0, r0, #1
	lsls r0, r5
	ands r0, r1
	cmp r0, #0
	beq _080252BC
	movs r1, #1
	mov sl, r1
	b _080252CC
	.align 2, 0
_080252A0: .4byte gStageData
_080252A4: .4byte 0x04000128
_080252A8: .4byte gMultiSioSend
_080252AC: .4byte gMultiSioStatusFlags
_080252B0: .4byte gMultiSioRecv
_080252B4: .4byte 0xFFFF99F9
_080252B8: .4byte gUnknown_030010AC
_080252BC:
	movs r0, #0x80
	lsls r0, r0, #5
	lsls r0, r5
	ands r1, r0
	cmp r1, #0
	beq _080252CC
	movs r0, #2
	mov sl, r0
_080252CC:
	ldr r1, [sp]
	lsrs r0, r1, #0x18
	bl sub_8025C8C
	mov r0, sl
_080252D6:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80252E8
sub_80252E8: @ 0x080252E8
	push {r4, lr}
	movs r4, #0
	ldr r1, _08025348 @ =gStageData
	ldr r0, _0802534C @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	strb r0, [r1, #6]
	bl sub_802610C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _08025342
	ldr r0, _08025350 @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0802533C
	ldr r2, _08025354 @ =gMultiSioRecv
	ldrh r1, [r2]
	ldr r0, _08025358 @ =0x0000660A
	cmp r1, r0
	bne _0802533C
	movs r1, #0
	ldr r4, _0802535C @ =gUnknown_030010AC
	adds r3, r2, #0
	adds r3, #0xf
_08025322:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r2, r0, r4
	adds r1, r3, r0
	ldrb r1, [r1]
	strb r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08025322
	movs r4, #1
_0802533C:
	bl sub_8025CD8
	adds r0, r4, #0
_08025342:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08025348: .4byte gStageData
_0802534C: .4byte 0x04000128
_08025350: .4byte gMultiSioStatusFlags
_08025354: .4byte gMultiSioRecv
_08025358: .4byte 0x0000660A
_0802535C: .4byte gUnknown_030010AC

	thumb_func_start sub_8025360
sub_8025360: @ 0x08025360
	push {r4, lr}
	ldr r0, _08025388 @ =gUnknown_03001060
	ldrb r4, [r0, #7]
	bl sub_802610C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _080253BE
	bl sub_8025D10
	cmp r4, #3
	beq _0802538C
	cmp r4, #7
	beq _0802538C
	cmp r4, #0xf
	beq _0802538C
_08025382:
	movs r0, #0
	b _080253BE
	.align 2, 0
_08025388: .4byte gUnknown_03001060
_0802538C:
	movs r1, #0
	ldr r3, _080253C4 @ =0x0000660C
_08025390:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r0, r4, #0
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080253B0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, _080253C8 @ =gMultiSioRecv
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, r3
	bne _08025382
_080253B0:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08025390
	movs r0, #1
_080253BE:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080253C4: .4byte 0x0000660C
_080253C8: .4byte gMultiSioRecv

	thumb_func_start sub_80253CC
sub_80253CC: @ 0x080253CC
	push {r4, lr}
	ldr r1, _08025440 @ =gStageData
	ldr r0, _08025444 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	strb r0, [r1, #6]
	bl sub_802610C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _0802545A
	bl sub_8025D00
	ldr r0, _08025448 @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08025458
	ldr r4, _0802544C @ =gMultiSioRecv
	ldr r1, _08025450 @ =0xFFFF99F5
	adds r0, r1, #0
	ldrh r1, [r4]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08025458
	ldr r3, _08025454 @ =gUnknown_03001060
	ldrb r0, [r4, #0xf]
	adds r2, r3, #0
	adds r2, #0x4c
	strb r0, [r2]
	ldrb r0, [r4, #0x10]
	adds r1, r3, #0
	adds r1, #0x4d
	strb r0, [r1]
	ldrb r0, [r4, #0x11]
	adds r1, #1
	strb r0, [r1]
	ldrb r1, [r4, #0x12]
	adds r0, r3, #0
	adds r0, #0x4f
	strb r1, [r0]
	movs r1, #0
_0802542A:
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #4
	bhi _08025458
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _0802542A
	movs r0, #1
	b _0802545A
	.align 2, 0
_08025440: .4byte gStageData
_08025444: .4byte 0x04000128
_08025448: .4byte gMultiSioStatusFlags
_0802544C: .4byte gMultiSioRecv
_08025450: .4byte 0xFFFF99F5
_08025454: .4byte gUnknown_03001060
_08025458:
	movs r0, #0
_0802545A:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_8025460
sub_8025460: @ 0x08025460
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r5, _08025478 @ =gUnknown_03001060
	ldrb r6, [r5, #7]
	bl sub_802610C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08025480
	b _080254BE
	.align 2, 0
_08025478: .4byte gUnknown_03001060
_0802547C:
	movs r0, #0
	b _080254BE
_08025480:
	adds r0, r5, #0
	adds r0, #0x50
	strh r4, [r0]
	adds r0, r4, #0
	bl sub_8025D20
	movs r1, #0
	ldr r3, _080254C4 @ =0x0000660E
_08025490:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r0, r6, #0
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080254B0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, _080254C8 @ =gMultiSioRecv
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, r3
	bne _0802547C
_080254B0:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08025490
	movs r0, #1
_080254BE:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080254C4: .4byte 0x0000660E
_080254C8: .4byte gMultiSioRecv

	thumb_func_start sub_80254CC
sub_80254CC: @ 0x080254CC
	push {r4, r5, lr}
	ldr r4, _080254E0 @ =gUnknown_03001060
	ldrb r5, [r4, #7]
	bl sub_802610C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080254E8
	b _08025526
	.align 2, 0
_080254E0: .4byte gUnknown_03001060
_080254E4:
	movs r0, #0
	b _08025526
_080254E8:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	bl sub_8025D20
	movs r1, #0
	ldr r3, _0802552C @ =0x0000660D
_080254F8:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r0, r5, #0
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08025518
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, _08025530 @ =gMultiSioRecv
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, r3
	bne _080254E4
_08025518:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _080254F8
	movs r0, #1
_08025526:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0802552C: .4byte 0x0000660D
_08025530: .4byte gMultiSioRecv

	thumb_func_start sub_8025534
sub_8025534: @ 0x08025534
	push {r4, r5, r6, lr}
	ldr r5, _08025560 @ =gUnknown_03001060
	ldrb r4, [r5, #7]
	bl sub_802610C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _0802559E
	adds r0, r5, #0
	adds r0, #0x50
	ldrb r0, [r0]
	bl sub_8025D34
	cmp r4, #3
	beq _08025564
	cmp r4, #7
	beq _08025564
	cmp r4, #0xf
	beq _08025564
_0802555C:
	movs r0, #0
	b _0802559E
	.align 2, 0
_08025560: .4byte gUnknown_03001060
_08025564:
	movs r2, #0
	ldr r6, _080255A4 @ =0x0000660E
	ldr r5, _080255A8 @ =0x00006810
_0802556A:
	lsls r2, r2, #0x10
	asrs r3, r2, #0x10
	adds r1, r4, #0
	asrs r1, r3
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0802558E
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #3
	ldr r1, _080255AC @ =gMultiSioRecv
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, r6
	beq _0802558E
	cmp r0, r5
	bne _0802555C
_0802558E:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r2, r1
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0802556A
	movs r0, #1
_0802559E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080255A4: .4byte 0x0000660E
_080255A8: .4byte 0x00006810
_080255AC: .4byte gMultiSioRecv

	thumb_func_start sub_80255B0
sub_80255B0: @ 0x080255B0
	push {r4, lr}
	bl sub_802610C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _0802560E
	ldr r0, _080255F8 @ =gUnknown_03001060
	adds r4, r0, #0
	adds r4, #0x50
	ldrb r0, [r4]
	bl sub_8025D20
	ldr r0, _080255FC @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0802560C
	ldr r2, _08025600 @ =gMultiSioRecv
	ldrh r1, [r2]
	ldr r3, _08025604 @ =0xFFFF99F3
	adds r0, r1, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _0802560C
	ldrb r0, [r2, #5]
	strh r0, [r4]
	lsls r1, r1, #0x10
	ldr r0, _08025608 @ =0x660E0000
	cmp r1, r0
	bne _0802560C
	movs r0, #1
	b _0802560E
	.align 2, 0
_080255F8: .4byte gUnknown_03001060
_080255FC: .4byte gMultiSioStatusFlags
_08025600: .4byte gMultiSioRecv
_08025604: .4byte 0xFFFF99F3
_08025608: .4byte 0x660E0000
_0802560C:
	movs r0, #0
_0802560E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_8025614
sub_8025614: @ 0x08025614
	push {r4, lr}
	bl sub_802610C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _0802566E
	ldr r0, _08025658 @ =gUnknown_03001060
	adds r4, r0, #0
	adds r4, #0x50
	ldrb r0, [r4]
	bl sub_8025D34
	ldr r0, _0802565C @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0802566C
	ldr r3, _08025660 @ =gMultiSioRecv
	ldrh r1, [r3]
	ldr r2, _08025664 @ =0x0000660E
	cmp r1, r2
	beq _0802564A
	ldr r0, _08025668 @ =0x0000680F
	cmp r1, r0
	bls _0802566C
_0802564A:
	ldrb r0, [r3, #5]
	strh r0, [r4]
	cmp r1, r2
	bne _0802566C
	movs r0, #1
	b _0802566E
	.align 2, 0
_08025658: .4byte gUnknown_03001060
_0802565C: .4byte gMultiSioStatusFlags
_08025660: .4byte gMultiSioRecv
_08025664: .4byte 0x0000660E
_08025668: .4byte 0x0000680F
_0802566C:
	movs r0, #0
_0802566E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_8025674
sub_8025674: @ 0x08025674
	push {r4, lr}
	ldr r0, _0802569C @ =gUnknown_03001060
	ldrb r4, [r0, #7]
	bl sub_802610C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _080256D2
	bl sub_8025D48
	cmp r4, #3
	beq _080256A0
	cmp r4, #7
	beq _080256A0
	cmp r4, #0xf
	beq _080256A0
_08025696:
	movs r0, #0
	b _080256D2
	.align 2, 0
_0802569C: .4byte gUnknown_03001060
_080256A0:
	movs r1, #0
	ldr r3, _080256D8 @ =0x0000660F
_080256A4:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r0, r4, #0
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080256C4
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, _080256DC @ =gMultiSioRecv
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, r3
	bne _08025696
_080256C4:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _080256A4
	movs r0, #1
_080256D2:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080256D8: .4byte 0x0000660F
_080256DC: .4byte gMultiSioRecv

	thumb_func_start sub_80256E0
sub_80256E0: @ 0x080256E0
	ldr r2, _0802570C @ =gMultiSioSend
	movs r1, #0
	movs r0, #0
	strh r0, [r2]
	strb r1, [r2, #2]
	ldr r1, _08025710 @ =gLoadedSaveGame
	ldr r0, [r1]
	str r0, [r2, #4]
	ldrh r0, [r1, #4]
	strh r0, [r2, #8]
	ldrh r0, [r1, #6]
	strh r0, [r2, #0xa]
	ldrh r0, [r1, #8]
	strh r0, [r2, #0xc]
	ldrh r0, [r1, #0xa]
	strh r0, [r2, #0xe]
	ldrh r0, [r1, #0xc]
	strh r0, [r2, #0x10]
	ldrh r0, [r1, #0xe]
	strh r0, [r2, #0x12]
	bx lr
	.align 2, 0
_0802570C: .4byte gMultiSioSend
_08025710: .4byte gLoadedSaveGame

	thumb_func_start sub_8025714
sub_8025714: @ 0x08025714
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r3, _08025748 @ =gMultiSioSend
	ldr r1, _0802574C @ =gStageData
	ldr r0, _08025750 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	strb r0, [r1, #6]
	movs r4, #0xff
	adds r2, r0, #0
	ldr r0, _08025754 @ =0x00006604
	strh r0, [r3]
	strb r2, [r3, #3]
	cmp r2, #1
	bhi _0802575C
	adds r0, r3, #0
	adds r0, #0xf
	adds r0, r2, r0
	ldr r1, _08025758 @ =gUnknown_03001060
	adds r1, #0x4c
	adds r1, r2, r1
	ldrb r1, [r1]
	strb r1, [r0]
	b _08025768
	.align 2, 0
_08025748: .4byte gMultiSioSend
_0802574C: .4byte gStageData
_08025750: .4byte 0x04000128
_08025754: .4byte 0x00006604
_08025758: .4byte gUnknown_03001060
_0802575C:
	adds r1, r3, #0
	adds r1, #0xf
	adds r1, r2, r1
	ldrb r0, [r1]
	orrs r0, r4
	strb r0, [r1]
_08025768:
	strb r5, [r3, #4]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8025770
sub_8025770: @ 0x08025770
	ldr r2, _08025798 @ =gMultiSioSend
	ldr r1, _0802579C @ =gStageData
	ldr r0, _080257A0 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	strb r0, [r1, #6]
	strb r0, [r2, #3]
	ldr r0, _080257A4 @ =0x00006606
	strh r0, [r2]
	ldr r0, _080257A8 @ =gUnknown_03001060
	adds r1, r0, #0
	adds r1, #0x4c
	ldrb r1, [r1]
	strb r1, [r2, #0xf]
	adds r0, #0x4d
	ldrb r0, [r0]
	strb r0, [r2, #0x10]
	bx lr
	.align 2, 0
_08025798: .4byte gMultiSioSend
_0802579C: .4byte gStageData
_080257A0: .4byte 0x04000128
_080257A4: .4byte 0x00006606
_080257A8: .4byte gUnknown_03001060

	thumb_func_start sub_80257AC
sub_80257AC: @ 0x080257AC
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r3, _080257F4 @ =gMultiSioSend
	ldr r1, _080257F8 @ =gStageData
	ldr r0, _080257FC @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	strb r0, [r1, #6]
	movs r4, #0xff
	adds r2, r0, #0
	ldr r0, _08025800 @ =gUnknown_03001060
	adds r1, r0, #0
	adds r1, #0x4c
	ldrb r1, [r1]
	strb r1, [r3, #0xf]
	adds r0, #0x4d
	ldrb r0, [r0]
	strb r0, [r3, #0x10]
	cmp r2, #1
	bhi _080257DA
	adds r2, #2
_080257DA:
	adds r0, r3, #0
	adds r0, #0xf
	adds r0, r2, r0
	ldrb r1, [r0]
	orrs r1, r4
	strb r1, [r0]
	ldr r0, _08025804 @ =0x00006607
	strh r0, [r3]
	strb r2, [r3, #3]
	strb r5, [r3, #4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080257F4: .4byte gMultiSioSend
_080257F8: .4byte gStageData
_080257FC: .4byte 0x04000128
_08025800: .4byte gUnknown_03001060
_08025804: .4byte 0x00006607

	thumb_func_start sub_8025808
sub_8025808: @ 0x08025808
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r5, _0802585C @ =gMultiSioSend
	ldr r1, _08025860 @ =gStageData
	ldr r0, _08025864 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	strb r0, [r1, #6]
	adds r2, r0, #0
	cmp r2, #1
	bhi _08025832
	ldr r0, _08025868 @ =gUnknown_03001060
	ldrb r1, [r0, #7]
	movs r0, #4
	lsls r0, r2
	ands r1, r0
	cmp r1, #0
	bne _08025832
	adds r2, #2
_08025832:
	ldr r0, _0802586C @ =0x00006607
	strh r0, [r5]
	strb r2, [r5, #3]
	movs r2, #0
	adds r3, r5, #0
	adds r3, #0xf
	ldr r4, _08025870 @ =gUnknown_030010AC
_08025840:
	adds r1, r3, r2
	adds r0, r2, r4
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _08025840
	strb r6, [r5, #4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802585C: .4byte gMultiSioSend
_08025860: .4byte gStageData
_08025864: .4byte 0x04000128
_08025868: .4byte gUnknown_03001060
_0802586C: .4byte 0x00006607
_08025870: .4byte gUnknown_030010AC

	thumb_func_start sub_8025874
sub_8025874: @ 0x08025874
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r3, _080258C0 @ =gMultiSioSend
	ldr r1, _080258C4 @ =gStageData
	ldr r0, _080258C8 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	strb r0, [r1, #6]
	adds r2, r0, #0
	cmp r2, #1
	bhi _0802589E
	ldr r0, _080258CC @ =gUnknown_03001060
	ldrb r1, [r0, #7]
	movs r0, #4
	lsls r0, r2
	ands r1, r0
	cmp r1, #0
	bne _0802589E
	adds r2, #2
_0802589E:
	ldr r0, _080258D0 @ =0x00006608
	strh r0, [r3]
	strb r2, [r3, #3]
	cmp r2, #1
	bls _080258B8
	adds r0, r3, #0
	adds r0, #0xf
	adds r0, r0, r2
	ldr r1, _080258CC @ =gUnknown_03001060
	adds r1, #0x4c
	adds r1, r2, r1
	ldrb r1, [r1]
	strb r1, [r0]
_080258B8:
	strb r4, [r3, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080258C0: .4byte gMultiSioSend
_080258C4: .4byte gStageData
_080258C8: .4byte 0x04000128
_080258CC: .4byte gUnknown_03001060
_080258D0: .4byte 0x00006608

	thumb_func_start sub_80258D4
sub_80258D4: @ 0x080258D4
	push {r4, lr}
	bl sub_8025D58
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_80256E0
	ldr r1, _080258F8 @ =gUnknown_03001060
	movs r0, #0
	strb r0, [r1, #7]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080258F8: .4byte gUnknown_03001060

	thumb_func_start sub_80258FC
sub_80258FC: @ 0x080258FC
	push {lr}
	bl sub_8025BC0
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8025908
sub_8025908: @ 0x08025908
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	bl sub_802610C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _0802593C
	ldr r4, _08025944 @ =gMultiSioSend
	movs r0, #0
	strh r0, [r4, #0xc]
	bl sub_80247D4
	ldrh r1, [r4, #0xc]
	orrs r1, r0
	strh r1, [r4, #0xc]
	bl sub_80248F4
	ldrh r1, [r4, #0xc]
	orrs r1, r0
	strh r1, [r4, #0xc]
	adds r0, r5, #0
	bl sub_8025BEC
	movs r0, #0
_0802593C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08025944: .4byte gMultiSioSend

	thumb_func_start sub_8025948
sub_8025948: @ 0x08025948
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r0, _08025990 @ =gStageData
	ldrb r5, [r0, #6]
	bl sub_802610C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _0802598A
	ldr r4, _08025994 @ =gMultiSioSend
	adds r0, r4, #0
	adds r0, #0xf
	adds r0, r5, r0
	movs r1, #0xff
	strb r1, [r0]
	movs r0, #0
	strh r0, [r4, #0xc]
	bl sub_80247D4
	ldrh r1, [r4, #0xc]
	orrs r1, r0
	strh r1, [r4, #0xc]
	bl sub_80248F4
	ldrh r1, [r4, #0xc]
	orrs r1, r0
	strh r1, [r4, #0xc]
	adds r0, r6, #0
	bl sub_8025C64
	movs r0, #1
_0802598A:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08025990: .4byte gStageData
_08025994: .4byte gMultiSioSend

	thumb_func_start sub_8025998
sub_8025998: @ 0x08025998
	push {r4, lr}
	ldr r0, _080259D8 @ =gUnknown_03001060
	ldrb r4, [r0, #7]
	bl sub_802610C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _080259E6
	bl sub_8025770
	cmp r4, #3
	beq _080259BA
	cmp r4, #7
	beq _080259BA
	cmp r4, #0xf
	bne _080259D4
_080259BA:
	ldr r2, _080259DC @ =gMultiSioRecv+1*0x18
	ldr r0, _080259D8 @ =gUnknown_03001060
	ldrb r1, [r2, #4]
	adds r0, #0x4d
	strb r1, [r0]
	ldr r1, _080259E0 @ =0xFFFF99FA
	adds r0, r1, #0
	ldrh r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _080259E4
_080259D4:
	movs r0, #0
	b _080259E6
	.align 2, 0
_080259D8: .4byte gUnknown_03001060
_080259DC: .4byte gMultiSioRecv+1*0x18
_080259E0: .4byte 0xFFFF99FA
_080259E4:
	movs r0, #1
_080259E6:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_80259EC
sub_80259EC: @ 0x080259EC
	push {lr}
	bl sub_8025BC0
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80259F8
sub_80259F8: @ 0x080259F8
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	bl sub_802610C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _08025A2C
	ldr r4, _08025A34 @ =gMultiSioSend
	movs r0, #0
	strh r0, [r4, #0xc]
	bl sub_80247D4
	ldrh r1, [r4, #0xc]
	orrs r1, r0
	strh r1, [r4, #0xc]
	bl sub_80248F4
	ldrh r1, [r4, #0xc]
	orrs r1, r0
	strh r1, [r4, #0xc]
	adds r0, r5, #0
	bl sub_80257AC
	movs r0, #0
_08025A2C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08025A34: .4byte gMultiSioSend

	thumb_func_start sub_8025A38
sub_8025A38: @ 0x08025A38
	push {r4, lr}
	ldr r0, _08025A7C @ =gUnknown_03001060
	ldrb r4, [r0, #7]
	bl sub_802610C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _08025A8A
	bl sub_8025CD8
	cmp r4, #3
	beq _08025A5A
	cmp r4, #7
	beq _08025A5A
	cmp r4, #0xf
	bne _08025A88
_08025A5A:
	lsrs r0, r4, #3
	movs r1, #1
	ands r0, r1
	ldr r1, _08025A80 @ =gMultiSioRecv+1*0x18
	cmp r0, #0
	beq _08025A68
	adds r1, #0x30
_08025A68:
	ldr r2, _08025A84 @ =0xFFFF99F6
	adds r0, r2, #0
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08025A88
	movs r0, #1
	b _08025A8A
	.align 2, 0
_08025A7C: .4byte gUnknown_03001060
_08025A80: .4byte gMultiSioRecv+1*0x18
_08025A84: .4byte 0xFFFF99F6
_08025A88:
	movs r0, #0
_08025A8A:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_8025A90
sub_8025A90: @ 0x08025A90
	push {lr}
	bl sub_802610C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _08025AA4
	bl sub_8025D00
	movs r0, #0
_08025AA4:
	pop {r1}
	bx r1

	thumb_func_start sub_8025AA8
sub_8025AA8: @ 0x08025AA8
	push {lr}
	ldr r1, _08025AE0 @ =gStageData
	ldr r0, _08025AE4 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	strb r0, [r1, #6]
	bl sub_802610C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _08025AF6
	bl sub_8025D10
	ldr r0, _08025AE8 @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08025AF4
	ldr r0, _08025AEC @ =gMultiSioRecv
	ldrh r1, [r0]
	ldr r0, _08025AF0 @ =0x0000660D
	cmp r1, r0
	bne _08025AF4
	movs r0, #1
	b _08025AF6
	.align 2, 0
_08025AE0: .4byte gStageData
_08025AE4: .4byte 0x04000128
_08025AE8: .4byte gMultiSioStatusFlags
_08025AEC: .4byte gMultiSioRecv
_08025AF0: .4byte 0x0000660D
_08025AF4:
	movs r0, #0
_08025AF6:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8025AFC
sub_8025AFC: @ 0x08025AFC
	push {lr}
	bl sub_802610C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _08025B42
	ldr r0, _08025B30 @ =gUnknown_03001060
	adds r0, #0x50
	ldrb r0, [r0]
	bl sub_8025D20
	ldr r0, _08025B34 @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08025B40
	ldr r0, _08025B38 @ =gMultiSioRecv
	ldrh r1, [r0]
	ldr r0, _08025B3C @ =0x0000660D
	cmp r1, r0
	bne _08025B40
	movs r0, #1
	b _08025B42
	.align 2, 0
_08025B30: .4byte gUnknown_03001060
_08025B34: .4byte gMultiSioStatusFlags
_08025B38: .4byte gMultiSioRecv
_08025B3C: .4byte 0x0000660D
_08025B40:
	movs r0, #0
_08025B42:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8025B48
sub_8025B48: @ 0x08025B48
	push {lr}
	bl sub_802610C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _08025B72
	bl sub_8025D48
	ldr r0, _08025B68 @ =gMultiSioRecv
	ldrh r1, [r0]
	ldr r0, _08025B6C @ =0x0000660F
	cmp r1, r0
	bhi _08025B70
	movs r0, #0
	b _08025B72
	.align 2, 0
_08025B68: .4byte gMultiSioRecv
_08025B6C: .4byte 0x0000660F
_08025B70:
	movs r0, #1
_08025B72:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8025B78
sub_8025B78: @ 0x08025B78
	push {r4, lr}
	ldr r4, _08025B9C @ =gMultiSioSend
	movs r0, #0
	strh r0, [r4, #0xc]
	bl sub_80247D4
	ldrh r1, [r4, #0xc]
	orrs r1, r0
	strh r1, [r4, #0xc]
	bl sub_80248F4
	ldrh r1, [r4, #0xc]
	orrs r1, r0
	strh r1, [r4, #0xc]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08025B9C: .4byte gMultiSioSend

	thumb_func_start sub_8025BA0
sub_8025BA0: @ 0x08025BA0
	ldr r1, _08025BA8 @ =gMultiSioSend
	ldr r0, _08025BAC @ =0x00006601
	strh r0, [r1]
	bx lr
	.align 2, 0
_08025BA8: .4byte gMultiSioSend
_08025BAC: .4byte 0x00006601

	thumb_func_start sub_8025BB0
sub_8025BB0: @ 0x08025BB0
	ldr r1, _08025BB8 @ =gMultiSioSend
	ldr r0, _08025BBC @ =0x00006602
	strh r0, [r1]
	bx lr
	.align 2, 0
_08025BB8: .4byte gMultiSioSend
_08025BBC: .4byte 0x00006602

	thumb_func_start sub_8025BC0
sub_8025BC0: @ 0x08025BC0
	ldr r1, _08025BE4 @ =gMultiSioSend
	movs r3, #0
	movs r2, #0
	ldr r0, _08025BE8 @ =0x00006603
	strh r0, [r1]
	strb r3, [r1, #3]
	strb r3, [r1, #4]
	strh r2, [r1, #6]
	str r2, [r1, #8]
	strh r2, [r1, #0xc]
	movs r0, #0xff
	strb r0, [r1, #0xf]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x10]
	strb r0, [r1, #0x11]
	strb r0, [r1, #0x12]
	bx lr
	.align 2, 0
_08025BE4: .4byte gMultiSioSend
_08025BE8: .4byte 0x00006603

	thumb_func_start sub_8025BEC
sub_8025BEC: @ 0x08025BEC
	ldr r3, _08025C10 @ =gMultiSioSend
	ldr r2, _08025C14 @ =gStageData
	ldr r1, _08025C18 @ =0x04000128
	ldr r1, [r1]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	strb r1, [r2, #6]
	ldr r2, _08025C1C @ =0x00006603
	strh r2, [r3]
	strb r1, [r3, #3]
	adds r2, r3, #0
	adds r2, #0xf
	adds r1, r1, r2
	movs r2, #0xff
	strb r2, [r1]
	strb r0, [r3, #4]
	bx lr
	.align 2, 0
_08025C10: .4byte gMultiSioSend
_08025C14: .4byte gStageData
_08025C18: .4byte 0x04000128
_08025C1C: .4byte 0x00006603

	thumb_func_start sub_8025C20
sub_8025C20: @ 0x08025C20
	push {r4, lr}
	ldr r4, _08025C50 @ =gMultiSioSend
	ldr r3, _08025C54 @ =gStageData
	ldr r1, _08025C58 @ =0x04000128
	ldr r2, [r1]
	lsls r2, r2, #0x1a
	lsrs r2, r2, #0x1e
	strb r2, [r3, #6]
	ldr r1, _08025C5C @ =0x00006603
	strh r1, [r4]
	strb r2, [r4, #3]
	adds r3, r4, #0
	adds r3, #0xf
	adds r3, r2, r3
	ldr r1, _08025C60 @ =gUnknown_03001060
	adds r1, #0x4c
	adds r2, r2, r1
	ldrb r1, [r2]
	strb r1, [r3]
	strb r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08025C50: .4byte gMultiSioSend
_08025C54: .4byte gStageData
_08025C58: .4byte 0x04000128
_08025C5C: .4byte 0x00006603
_08025C60: .4byte gUnknown_03001060

	thumb_func_start sub_8025C64
sub_8025C64: @ 0x08025C64
	ldr r3, _08025C7C @ =gMultiSioSend
	ldr r2, _08025C80 @ =gStageData
	ldr r1, _08025C84 @ =0x04000128
	ldr r1, [r1]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	strb r1, [r2, #6]
	ldr r2, _08025C88 @ =0x00006605
	strh r2, [r3]
	strb r1, [r3, #3]
	strb r0, [r3, #4]
	bx lr
	.align 2, 0
_08025C7C: .4byte gMultiSioSend
_08025C80: .4byte gStageData
_08025C84: .4byte 0x04000128
_08025C88: .4byte 0x00006605

	thumb_func_start sub_8025C8C
sub_8025C8C: @ 0x08025C8C
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r3, _08025CC4 @ =gMultiSioSend
	ldr r1, _08025CC8 @ =gStageData
	ldr r0, _08025CCC @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	strb r0, [r1, #6]
	adds r2, r0, #0
	cmp r2, #1
	bhi _08025CB6
	ldr r0, _08025CD0 @ =gUnknown_03001060
	ldrb r1, [r0, #7]
	movs r0, #4
	lsls r0, r2
	ands r1, r0
	cmp r1, #0
	bne _08025CB6
	adds r2, #2
_08025CB6:
	ldr r0, _08025CD4 @ =0x00006605
	strh r0, [r3]
	strb r2, [r3, #3]
	strb r4, [r3, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08025CC4: .4byte gMultiSioSend
_08025CC8: .4byte gStageData
_08025CCC: .4byte 0x04000128
_08025CD0: .4byte gUnknown_03001060
_08025CD4: .4byte 0x00006605

	thumb_func_start sub_8025CD8
sub_8025CD8: @ 0x08025CD8
	ldr r2, _08025CF0 @ =gMultiSioSend
	ldr r1, _08025CF4 @ =gStageData
	ldr r0, _08025CF8 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	strb r0, [r1, #6]
	strb r0, [r2, #3]
	ldr r0, _08025CFC @ =0x0000660A
	strh r0, [r2]
	bx lr
	.align 2, 0
_08025CF0: .4byte gMultiSioSend
_08025CF4: .4byte gStageData
_08025CF8: .4byte 0x04000128
_08025CFC: .4byte 0x0000660A

	thumb_func_start sub_8025D00
sub_8025D00: @ 0x08025D00
	ldr r1, _08025D08 @ =gMultiSioSend
	ldr r0, _08025D0C @ =0x0000660B
	strh r0, [r1]
	bx lr
	.align 2, 0
_08025D08: .4byte gMultiSioSend
_08025D0C: .4byte 0x0000660B

	thumb_func_start sub_8025D10
sub_8025D10: @ 0x08025D10
	ldr r1, _08025D18 @ =gMultiSioSend
	ldr r0, _08025D1C @ =0x0000660C
	strh r0, [r1]
	bx lr
	.align 2, 0
_08025D18: .4byte gMultiSioSend
_08025D1C: .4byte 0x0000660C

	thumb_func_start sub_8025D20
sub_8025D20: @ 0x08025D20
	ldr r2, _08025D2C @ =gMultiSioSend
	ldr r1, _08025D30 @ =0x0000660D
	strh r1, [r2]
	strb r0, [r2, #5]
	bx lr
	.align 2, 0
_08025D2C: .4byte gMultiSioSend
_08025D30: .4byte 0x0000660D

	thumb_func_start sub_8025D34
sub_8025D34: @ 0x08025D34
	ldr r2, _08025D40 @ =gMultiSioSend
	ldr r1, _08025D44 @ =0x0000660E
	strh r1, [r2]
	strb r0, [r2, #5]
	bx lr
	.align 2, 0
_08025D40: .4byte gMultiSioSend
_08025D44: .4byte 0x0000660E

	thumb_func_start sub_8025D48
sub_8025D48: @ 0x08025D48
	ldr r1, _08025D50 @ =gMultiSioSend
	ldr r0, _08025D54 @ =0x0000660F
	strh r0, [r1]
	bx lr
	.align 2, 0
_08025D50: .4byte gMultiSioSend
_08025D54: .4byte 0x0000660F

	thumb_func_start sub_8025D58
sub_8025D58: @ 0x08025D58
	push {r4, r5, r6, lr}
	sub sp, #4
	bl sub_80260F0
	movs r2, #0
	str r2, [sp]
	ldr r1, _08025DF8 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08025DFC @ =gMultiSioSend
	str r0, [r1, #4]
	ldr r0, _08025E00 @ =0x85000006
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	str r2, [sp]
	mov r0, sp
	str r0, [r1]
	ldr r0, _08025E04 @ =gMultiSioRecv
	str r0, [r1, #4]
	ldr r0, _08025E08 @ =0x85000018
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	str r2, [sp]
	mov r0, sp
	str r0, [r1]
	ldr r2, _08025E0C @ =gUnknown_03001060
	str r2, [r1, #4]
	ldr r0, _08025E10 @ =0x85000001
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	adds r3, r2, #0
	adds r6, r3, #0
	adds r6, #0x4c
	movs r5, #0xff
	movs r4, #0
_08025DA0:
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	adds r2, r1, r6
	ldrb r0, [r2]
	orrs r0, r5
	strb r0, [r2]
	adds r0, r1, r3
	strb r4, [r0]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #3
	ble _08025DA0
	movs r0, #0
	bl MultiSioInit
	ldr r0, _08025DFC @ =gMultiSioSend
	ldr r1, _08025E04 @ =gMultiSioRecv
	movs r2, #0
	bl MultiSioMain
	ldr r1, _08025E14 @ =gMultiSioStatusFlags
	str r0, [r1]
	ldr r4, _08025E18 @ =gStageData
	ldr r1, _08025E1C @ =0x04000128
	ldr r1, [r1]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	strb r1, [r4, #6]
	ldr r2, _08025E20 @ =gMultiSioEnabled
	movs r1, #1
	strb r1, [r2]
	movs r1, #0x80
	ands r1, r0
	cmp r1, #0
	beq _08025DEE
	bl MultiSioStart
_08025DEE:
	ldrb r0, [r4, #6]
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08025DF8: .4byte 0x040000D4
_08025DFC: .4byte gMultiSioSend
_08025E00: .4byte 0x85000006
_08025E04: .4byte gMultiSioRecv
_08025E08: .4byte 0x85000018
_08025E0C: .4byte gUnknown_03001060
_08025E10: .4byte 0x85000001
_08025E14: .4byte gMultiSioStatusFlags
_08025E18: .4byte gStageData
_08025E1C: .4byte 0x04000128
_08025E20: .4byte gMultiSioEnabled

	thumb_func_start sub_8025E24
sub_8025E24: @ 0x08025E24
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	adds r5, r3, #0
	ldr r4, _08025E60 @ =gUnknown_03001060
	movs r6, #0
	ldr r1, _08025E64 @ =gMultiSioStatusFlags
	ldr r2, [r1]
	movs r0, #0x81
	ands r0, r2
	adds r7, r4, #0
	mov ip, r1
	cmp r0, #0
	beq _08025E6C
	movs r0, #1
	lsls r0, r3
	ands r2, r0
	cmp r2, #0
	bne _08025E68
	adds r1, r3, r4
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb4
	bls _08025E6C
	movs r0, #2
	rsbs r0, r0, #0
	b _08025EE4
	.align 2, 0
_08025E60: .4byte gUnknown_03001060
_08025E64: .4byte gMultiSioStatusFlags
_08025E68:
	adds r0, r5, r4
	strb r6, [r0]
_08025E6C:
	mov r0, ip
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08025E7C
	movs r6, #1
_08025E7C:
	ldr r3, _08025EC4 @ =gMultiSioRecv
	ldrb r2, [r7, #7]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	bne _08025EAC
	cmp r6, #0
	beq _08025E9C
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	bne _08025E9C
	ldrh r0, [r3]
	cmp r0, #0
	bne _08025EAC
_08025E9C:
	cmp r2, #0
	beq _08025EC8
	mov r1, ip
	ldr r0, [r1]
	movs r1, #0xf
	ands r0, r1
	cmp r2, r0
	beq _08025EC8
_08025EAC:
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	ldrb r1, [r4, #6]
	movs r0, #4
	ldrsb r0, [r4, r0]
	adds r0, #8
	cmp r1, r0
	blt _08025ECC
	movs r0, #1
	rsbs r0, r0, #0
	b _08025EE4
	.align 2, 0
_08025EC4: .4byte gMultiSioRecv
_08025EC8:
	movs r0, #0
	strb r0, [r4, #6]
_08025ECC:
	ldrb r0, [r4, #4]
	movs r1, #4
	ldrsb r1, [r4, r1]
	cmp r1, #0
	ble _08025EDA
	subs r0, #1
	b _08025EE0
_08025EDA:
	cmp r1, #0
	bge _08025EE2
	adds r0, #1
_08025EE0:
	strb r0, [r4, #4]
_08025EE2:
	movs r0, #0
_08025EE4:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8025EEC
sub_8025EEC: @ 0x08025EEC
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	ldr r1, _0802601C @ =gTilemapsRef
	ldr r0, _08026020 @ =gTilemaps
	str r0, [r1]
	ldr r0, _08026024 @ =gStageData
	mov sb, r0
	ldr r0, _08026028 @ =gLoadedSaveGame
	ldr r1, _0802602C @ =0x00000366
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r4, #0
	mov r2, sb
	strb r0, [r2]
	ldr r0, _08026030 @ =sub_8026080
	movs r2, #0x80
	lsls r2, r2, #6
	str r4, [sp]
	movs r1, #0x90
	movs r3, #0
	bl TaskCreate
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r6, r0
	ldr r3, _08026034 @ =0x0300008C
	adds r2, r6, r3
	movs r1, #0
	mov r8, r1
	movs r1, #0x96
	lsls r1, r1, #1
	strh r1, [r2]
	ldr r2, _08026038 @ =gDispCnt
	movs r3, #0xd0
	lsls r3, r3, #2
	adds r1, r3, #0
	strh r1, [r2]
	strh r4, [r0]
	movs r1, #2
	strh r1, [r0, #2]
	strh r4, [r0, #4]
	movs r1, #0x80
	lsls r1, r1, #3
	strh r1, [r0, #6]
	movs r1, #0xff
	strh r1, [r0, #8]
	strh r4, [r0, #0xa]
	bl ScreenFadeUpdateValues
	ldr r1, _0802603C @ =gBgCntRegs
	ldr r0, _08026040 @ =0x00001F0D
	strh r0, [r1]
	ldr r0, _08026044 @ =0x00001708
	strh r0, [r1, #2]
	ldr r0, _08026048 @ =gBgScrollRegs
	strh r4, [r0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	strh r4, [r0, #6]
	ldr r0, _0802604C @ =0x0300004C
	adds r1, r6, r0
	ldr r0, _08026050 @ =0x0600C000
	str r0, [r1, #4]
	strh r4, [r1, #0xa]
	ldr r0, _08026054 @ =0x0600F800
	str r0, [r1, #0xc]
	strh r4, [r1, #0x18]
	strh r4, [r1, #0x1a]
	movs r0, #0xc5
	lsls r0, r0, #1
	strh r0, [r1, #0x1c]
	strh r4, [r1, #0x1e]
	strh r4, [r1, #0x20]
	strh r4, [r1, #0x22]
	strh r4, [r1, #0x24]
	movs r5, #0x20
	strh r5, [r1, #0x26]
	strh r5, [r1, #0x28]
	ldr r2, _08026058 @ =0x03000076
	adds r0, r6, r2
	mov r3, r8
	strb r3, [r0]
	strh r4, [r1, #0x2e]
	adds r0, r1, #0
	bl DrawBackground
	ldr r0, _0802605C @ =0x0300000C
	adds r1, r6, r0
	ldr r0, _08026060 @ =0x06008000
	str r0, [r1, #4]
	strh r4, [r1, #0xa]
	ldr r0, _08026064 @ =0x0600B800
	str r0, [r1, #0xc]
	strh r4, [r1, #0x18]
	strh r4, [r1, #0x1a]
	ldr r2, _08026068 @ =0x00000183
	adds r0, r2, #0
	mov r3, sb
	ldrb r3, [r3]
	adds r0, r0, r3
	strh r0, [r1, #0x1c]
	strh r4, [r1, #0x1e]
	strh r4, [r1, #0x20]
	strh r4, [r1, #0x22]
	strh r4, [r1, #0x24]
	strh r5, [r1, #0x26]
	strh r5, [r1, #0x28]
	ldr r0, _0802606C @ =0x03000036
	adds r6, r6, r0
	mov r2, r8
	strb r2, [r6]
	movs r0, #0x11
	strh r0, [r1, #0x2e]
	adds r0, r1, #0
	bl DrawBackground
	bl m4aMPlayAllStop
	movs r0, #0x64
	bl m4aSongNumStart
	ldr r2, _08026070 @ =gFlags
	ldr r0, [r2]
	ldr r1, _08026074 @ =0xFFFFBFFF
	ands r0, r1
	ldr r1, _08026078 @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r2]
	bl m4aSoundVSyncOn
	bl sub_8001E84
	ldr r0, _0802607C @ =gMultiSioEnabled
	mov r3, r8
	strb r3, [r0]
	bl MultiSioStop
	movs r0, #0
	bl MultiSioInit
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802601C: .4byte gTilemapsRef
_08026020: .4byte gTilemaps
_08026024: .4byte gStageData
_08026028: .4byte gLoadedSaveGame
_0802602C: .4byte 0x00000366
_08026030: .4byte sub_8026080
_08026034: .4byte 0x0300008C
_08026038: .4byte gDispCnt
_0802603C: .4byte gBgCntRegs
_08026040: .4byte 0x00001F0D
_08026044: .4byte 0x00001708
_08026048: .4byte gBgScrollRegs
_0802604C: .4byte 0x0300004C
_08026050: .4byte 0x0600C000
_08026054: .4byte 0x0600F800
_08026058: .4byte 0x03000076
_0802605C: .4byte 0x0300000C
_08026060: .4byte 0x06008000
_08026064: .4byte 0x0600B800
_08026068: .4byte 0x00000183
_0802606C: .4byte 0x03000036
_08026070: .4byte gFlags
_08026074: .4byte 0xFFFFBFFF
_08026078: .4byte 0xFFFF7FFF
_0802607C: .4byte gMultiSioEnabled

	thumb_func_start sub_8026080
sub_8026080: @ 0x08026080
	push {r4, r5, r6, lr}
	ldr r6, _080260E0 @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r5, r0
	adds r4, r0, #0
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080260D8
	ldr r0, _080260E4 @ =0x0300008C
	adds r1, r5, r0
	ldrh r0, [r1]
	subs r2, r0, #1
	movs r3, #0
	strh r2, [r1]
	ldr r0, _080260E8 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080260B8
	lsls r0, r2, #0x10
	cmp r0, #0
	bne _080260D8
_080260B8:
	strh r3, [r4]
	movs r0, #1
	strh r0, [r4, #2]
	strh r3, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #6]
	movs r0, #0xff
	strh r0, [r4, #8]
	strh r3, [r4, #0xa]
	adds r0, r4, #0
	bl ScreenFadeUpdateValues
	ldr r1, [r6]
	ldr r0, _080260EC @ =sub_802618C
	str r0, [r1, #8]
_080260D8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080260E0: .4byte gCurTask
_080260E4: .4byte 0x0300008C
_080260E8: .4byte gPressedKeys
_080260EC: .4byte sub_802618C

	thumb_func_start sub_80260F0
sub_80260F0: @ 0x080260F0
	push {lr}
	ldr r1, _08026108 @ =gMultiSioEnabled
	movs r0, #0
	strb r0, [r1]
	bl MultiSioStop
	movs r0, #0
	bl MultiSioInit
	pop {r0}
	bx r0
	.align 2, 0
_08026108: .4byte gMultiSioEnabled

	thumb_func_start sub_802610C
sub_802610C: @ 0x0802610C
	push {lr}
	ldr r0, _0802612C @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	ldr r1, _08026130 @ =gStageData
	ldrb r1, [r1, #6]
	cmp r1, r0
	bne _08026134
	adds r0, r1, #0
	bl sub_8025E24
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	b _08026138
	.align 2, 0
_0802612C: .4byte 0x04000128
_08026130: .4byte gStageData
_08026134:
	movs r0, #1
	rsbs r0, r0, #0
_08026138:
	pop {r1}
	bx r1

	thumb_func_start sub_802613C
sub_802613C: @ 0x0802613C
	push {lr}
	sub sp, #4
	ldr r2, _08026160 @ =gFlags
	ldr r0, [r2]
	ldr r1, _08026164 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r2]
	ldr r0, _08026168 @ =sub_8026178
	movs r2, #0x80
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r3, #0
	bl TaskCreate
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08026160: .4byte gFlags
_08026164: .4byte 0xFFFFFBFF
_08026168: .4byte sub_8026178

	thumb_func_start sub_802616C
sub_802616C: @ 0x0802616C
	ldr r1, _08026174 @ =gUnknown_03001060
	strb r0, [r1, #4]
	bx lr
	.align 2, 0
_08026174: .4byte gUnknown_03001060

	thumb_func_start sub_8026178
sub_8026178: @ 0x08026178
	push {lr}
	ldr r0, _08026188 @ =sub_8025EEC
	movs r1, #0
	bl sub_8001D58
	pop {r0}
	bx r0
	.align 2, 0
_08026188: .4byte sub_8025EEC

	thumb_func_start sub_802618C
sub_802618C: @ 0x0802618C
	push {lr}
	ldr r0, _080261AC @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080261A8
	bl LaunchTitleScreen
_080261A8:
	pop {r0}
	bx r0
	.align 2, 0
_080261AC: .4byte gCurTask

	thumb_func_start sub_80261B0
sub_80261B0: @ 0x080261B0
	push {r4, r5, r6, r7, lr}
	ldr r2, _08026244 @ =gUnknown_03001CC0
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	movs r1, #0
	strb r0, [r2]
	strb r1, [r2, #1]
	ldr r7, _08026248 @ =gMultiSioSend
	adds r4, r2, #2
	movs r3, #0xff
_080261C8:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r2, r0, #2
	adds r2, r2, r0
	adds r2, r2, r4
	ldrb r1, [r2]
	orrs r1, r3
	strb r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #7
	ble _080261C8
	movs r1, #0
	ldr r5, _0802624C @ =gPlayers
	movs r6, #0x39
	rsbs r6, r6, #0
	movs r4, #0x20
_080261EE:
	lsls r2, r1, #0x10
	asrs r2, r2, #0x10
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r2
	lsls r1, r1, #4
	adds r1, r1, r5
	adds r1, #0x2c
	ldrb r3, [r1]
	adds r0, r6, #0
	ands r0, r3
	orrs r0, r4
	strb r0, [r1]
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r1, r2, #0x10
	asrs r2, r2, #0x10
	cmp r2, #3
	ble _080261EE
	movs r0, #0xff
	strb r0, [r7, #0x12]
	movs r1, #0
	ldr r4, _08026250 @ =gMultiSioRecv
	movs r3, #0xff
_08026220:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r2, r1, r4
	ldrb r1, [r2, #0x12]
	orrs r1, r3
	strb r1, [r2, #0x12]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08026220
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08026244: .4byte gUnknown_03001CC0
_08026248: .4byte gMultiSioSend
_0802624C: .4byte gPlayers
_08026250: .4byte gMultiSioRecv

	thumb_func_start sub_8026254
sub_8026254: @ 0x08026254
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r3, _08026280 @ =gMultiSioSend
	ldr r0, _08026284 @ =gStageData
	ldrb r1, [r0, #3]
	adds r5, r0, #0
	cmp r1, #7
	bne _08026272
	ldrh r1, [r3]
	ldr r0, _08026288 @ =0x0000600E
	cmp r1, r0
	bne _08026272
	b _0802646E
_08026272:
	ldrb r1, [r5, #4]
	cmp r1, #4
	bne _0802628C
	bl sub_8026720
	b _0802646E
	.align 2, 0
_08026280: .4byte gMultiSioSend
_08026284: .4byte gStageData
_08026288: .4byte 0x0000600E
_0802628C:
	ldrh r2, [r3]
	ldr r0, _080262AC @ =0x000068FC
	cmp r2, r0
	bne _08026296
	b _0802646E
_08026296:
	cmp r1, #5
	bne _080262B4
	ldr r1, _080262B0 @ =0x000068E0
	cmp r2, r1
	beq _080262E8
	subs r0, #0x14
	cmp r2, r0
	beq _080262E8
	strh r1, [r3]
	b _080262E8
	.align 2, 0
_080262AC: .4byte 0x000068FC
_080262B0: .4byte 0x000068E0
_080262B4:
	cmp r1, #8
	bne _080262C0
	ldr r0, _080262BC @ =0x000068FA
	b _080262E6
	.align 2, 0
_080262BC: .4byte 0x000068FA
_080262C0:
	cmp r1, #1
	bne _080262CC
	ldr r0, _080262C8 @ =0x00006801
	b _080262E6
	.align 2, 0
_080262C8: .4byte 0x00006801
_080262CC:
	cmp r1, #2
	bne _080262D8
	ldr r0, _080262D4 @ =0x00006802
	b _080262E6
	.align 2, 0
_080262D4: .4byte 0x00006802
_080262D8:
	cmp r1, #7
	bne _080262E4
	ldr r0, _080262E0 @ =0x000068FE
	b _080262E6
	.align 2, 0
_080262E0: .4byte 0x000068FE
_080262E4:
	ldr r0, _080262FC @ =0x00006810
_080262E6:
	strh r0, [r3]
_080262E8:
	ldr r0, [r5, #0x1c]
	strh r0, [r3, #2]
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	strh r0, [r3, #4]
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bge _08026300
	movs r0, #0
	b _08026302
	.align 2, 0
_080262FC: .4byte 0x00006810
_08026300:
	asrs r0, r0, #8
_08026302:
	strh r0, [r3, #6]
	ldr r0, [r4, #4]
	str r0, [r3, #8]
	ldrh r0, [r4, #0x34]
	ldr r1, _08026340 @ =0x000007FF
	ands r1, r0
	ldrh r2, [r3, #0xc]
	ldr r0, _08026344 @ =0xFFFFF800
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #0xc]
	ldrh r1, [r4, #0x36]
	lsls r1, r1, #3
	ldrb r2, [r3, #0xd]
	movs r0, #7
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0xd]
	ldrb r0, [r5, #3]
	cmp r0, #7
	beq _08026350
	cmp r0, #5
	bne _08026348
	ldrb r0, [r5, #0xa]
	cmp r0, #8
	bne _08026348
	adds r0, r5, #0
	adds r0, #0x8c
	ldrh r0, [r0]
	b _08026352
	.align 2, 0
_08026340: .4byte 0x000007FF
_08026344: .4byte 0xFFFFF800
_08026348:
	adds r0, r5, #0
	adds r0, #0xac
	ldrh r0, [r0]
	b _08026352
_08026350:
	ldrh r0, [r4, #0x30]
_08026352:
	ldr r1, _080263AC @ =0x000003FF
	ands r1, r0
	ldrh r2, [r3, #0xe]
	ldr r0, _080263B0 @ =0xFFFFFC00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #0xe]
	movs r1, #0x9e
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r1, [r0]
	lsrs r1, r1, #4
	lsls r1, r1, #2
	ldrb r2, [r3, #0xf]
	movs r0, #0x7d
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	adds r1, r4, #0
	adds r1, #0x27
	ldrb r1, [r1]
	movs r2, #1
	ands r1, r2
	lsls r1, r1, #7
	movs r2, #0x7f
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0xf]
	ldrh r0, [r4, #0x1c]
	lsrs r0, r0, #8
	strb r0, [r3, #0x10]
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r0, [r0]
	strb r0, [r3, #0x11]
	ldrh r1, [r3]
	ldr r0, _080263B4 @ =0x000068E0
	cmp r1, r0
	beq _080263A6
	adds r0, #8
	cmp r1, r0
	bne _080263C4
_080263A6:
	bl sub_80278C4
	b _0802646E
	.align 2, 0
_080263AC: .4byte 0x000003FF
_080263B0: .4byte 0xFFFFFC00
_080263B4: .4byte 0x000068E0
_080263B8:
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r6
	movs r1, #0xff
	strb r1, [r0]
	b _08026454
_080263C4:
	ldr r2, _08026460 @ =gUnknown_03001CC0
	ldrb r0, [r2, #1]
	mov r8, r2
	cmp r0, #0
	bne _0802646A
	ldrb r4, [r2, #2]
	adds r0, r4, #0
	cmp r0, #0xff
	beq _08026464
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	strb r0, [r2]
	lsls r0, r0, #6
	orrs r0, r4
	strb r0, [r3, #0x12]
	ldrb r0, [r2, #3]
	strb r0, [r3, #0x13]
	ldrb r0, [r2, #4]
	strb r0, [r3, #0x14]
	ldrb r0, [r2, #5]
	strb r0, [r3, #0x15]
	ldrb r0, [r2, #6]
	strb r0, [r3, #0x16]
	movs r0, #6
	strb r0, [r2, #1]
	movs r1, #0
	adds r6, r2, #2
	adds r4, r2, #3
	mov ip, r4
	adds r7, r2, #4
_08026404:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r5, r2, #1
	lsls r0, r5, #2
	adds r3, r0, r5
	adds r0, r3, r6
	ldrb r4, [r0]
	adds r0, r4, #0
	cmp r0, #0xff
	beq _080263B8
	lsls r1, r2, #2
	adds r1, r1, r2
	adds r0, r1, r6
	strb r4, [r0]
	mov r0, ip
	adds r2, r1, r0
	adds r0, r3, r0
	ldrb r0, [r0]
	strb r0, [r2]
	adds r2, r1, r7
	adds r0, r3, r7
	ldrb r0, [r0]
	strb r0, [r2]
	mov r0, r8
	adds r0, #5
	adds r2, r1, r0
	adds r0, r3, r0
	ldrb r0, [r0]
	strb r0, [r2]
	mov r0, r8
	adds r0, #6
	adds r1, r1, r0
	adds r0, r3, r0
	ldrb r0, [r0]
	strb r0, [r1]
	lsls r0, r5, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #6
	ble _08026404
_08026454:
	mov r1, r8
	adds r1, #0x25
	movs r0, #0xff
	strb r0, [r1]
	b _0802646E
	.align 2, 0
_08026460: .4byte gUnknown_03001CC0
_08026464:
	movs r0, #0xff
	strb r0, [r3, #0x12]
	b _0802646E
_0802646A:
	subs r0, #1
	strb r0, [r2, #1]
_0802646E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8026478
sub_8026478: @ 0x08026478
	push {r4, r5, r6, lr}
	ldr r2, _080264C4 @ =gStageData
	ldrb r0, [r2, #4]
	adds r6, r2, #0
	cmp r0, #2
	bne _080264E2
	ldrb r0, [r2, #6]
	cmp r0, #0
	bne _080264D4
	movs r1, #1
	ldr r0, _080264C8 @ =gUnknown_03001060
	ldrb r3, [r0, #7]
	ldr r5, _080264CC @ =0x00006802
	movs r4, #1
_08026494:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r0, r3, #0
	asrs r0, r2
	ands r0, r4
	cmp r0, #0
	beq _080264B2
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, _080264D0 @ =gMultiSioRecv
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, r5
	bne _080264E2
_080264B2:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08026494
	movs r0, #3
	strb r0, [r6, #4]
	b _080264E2
	.align 2, 0
_080264C4: .4byte gStageData
_080264C8: .4byte gUnknown_03001060
_080264CC: .4byte 0x00006802
_080264D0: .4byte gMultiSioRecv
_080264D4:
	ldr r0, _080264E8 @ =gMultiSioRecv
	ldrh r1, [r0]
	ldr r0, _080264EC @ =0x00006810
	cmp r1, r0
	bne _080264E2
	movs r0, #3
	strb r0, [r2, #4]
_080264E2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080264E8: .4byte gMultiSioRecv
_080264EC: .4byte 0x00006810

	thumb_func_start sub_80264F0
sub_80264F0: @ 0x080264F0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r4, _08026520 @ =gStageData
	ldrb r1, [r4, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08026524 @ =gPlayers
	adds r5, r0, r1
	bl sub_802610C
	lsls r0, r0, #0x10
	adds r3, r4, #0
	cmp r0, #0
	beq _08026528
	bl sub_802613C
	movs r0, #1
	rsbs r0, r0, #0
	b _08026716
	.align 2, 0
_08026520: .4byte gStageData
_08026524: .4byte gPlayers
_08026528:
	movs r2, #0
	adds r6, r3, #0
	adds r6, #0xae
	adds r7, r3, #0
_08026530:
	lsls r2, r2, #0x10
	asrs r3, r2, #0x10
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r3
	lsls r0, r0, #4
	ldr r1, _0802657C @ =gPlayers
	adds r0, r0, r1
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	mov r8, r2
	cmp r0, #0xc
	beq _08026552
	b _08026704
_08026552:
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #3
	ldr r1, _08026580 @ =gMultiSioRecv
	adds r4, r0, r1
	ldrh r1, [r4]
	ldr r0, _08026584 @ =0x000068E0
	cmp r1, r0
	beq _080265EC
	cmp r1, r0
	bgt _080265A8
	subs r0, #0xde
	cmp r1, r0
	bgt _0802658C
	subs r0, #1
	cmp r1, r0
	bge _080265E8
	cmp r1, #6
	beq _0802663E
	ldr r3, _08026588 @ =gStageData
	b _080266F0
	.align 2, 0
_0802657C: .4byte gPlayers
_08026580: .4byte gMultiSioRecv
_08026584: .4byte 0x000068E0
_08026588: .4byte gStageData
_0802658C:
	ldr r0, _080265A0 @ =0x000068D0
	cmp r1, r0
	beq _0802665C
	adds r0, #1
	cmp r1, r0
	bne _0802659A
	b _0802668A
_0802659A:
	ldr r3, _080265A4 @ =gStageData
	b _080266F0
	.align 2, 0
_080265A0: .4byte 0x000068D0
_080265A4: .4byte gStageData
_080265A8:
	ldr r0, _080265C4 @ =0x000068FC
	cmp r1, r0
	beq _080265E4
	cmp r1, r0
	bgt _080265CC
	subs r0, #0x14
	cmp r1, r0
	beq _08026646
	adds r0, #0x12
	cmp r1, r0
	bne _080265C0
	b _080266BC
_080265C0:
	ldr r3, _080265C8 @ =gStageData
	b _080266F0
	.align 2, 0
_080265C4: .4byte 0x000068FC
_080265C8: .4byte gStageData
_080265CC:
	ldr r0, _080265DC @ =0x000068FE
	cmp r1, r0
	beq _080266A4
	adds r0, #1
	cmp r1, r0
	beq _080265E8
	ldr r3, _080265E0 @ =gStageData
	b _080266F0
	.align 2, 0
_080265DC: .4byte 0x000068FE
_080265E0: .4byte gStageData
_080265E4:
	bl sub_8004D30
_080265E8:
	movs r0, #1
	b _08026716
_080265EC:
	ldr r0, _08026614 @ =gStageData
	ldrb r1, [r0, #4]
	adds r3, r0, #0
	cmp r1, #1
	bhi _080265F8
	b _08026714
_080265F8:
	cmp r1, #4
	bhi _08026634
	movs r1, #0
	movs r0, #5
	strb r0, [r3, #4]
	ldrb r0, [r3, #3]
	cmp r0, #6
	bne _08026618
	ldrb r0, [r4, #0x12]
	strb r0, [r3, #5]
	ldrh r0, [r4, #0x14]
	strh r0, [r6]
	adds r0, r3, #0
	b _0802664C
	.align 2, 0
_08026614: .4byte gStageData
_08026618:
	ldrh r0, [r4, #0x14]
	strh r0, [r6]
	strh r1, [r5, #0x1c]
	ldrb r0, [r3, #0xa]
	cmp r0, #7
	bne _0802662C
	adds r0, r5, #0
	bl Player_800613C
	b _080265E8
_0802662C:
	adds r0, r5, #0
	bl Player_8005DAC
	b _080265E8
_08026634:
	cmp r1, #5
	bne _080266F0
	ldrh r0, [r4, #0x14]
	strh r0, [r6]
	b _080266F0
_0802663E:
	ldrb r0, [r7, #4]
	cmp r0, #1
	bls _08026714
	b _080265E8
_08026646:
	ldrb r0, [r4, #0x12]
	strb r0, [r7, #5]
	adds r0, r7, #0
_0802664C:
	adds r0, #0x90
	ldr r1, [r0]
	ldr r0, _08026658 @ =Task_800303C
	str r0, [r1, #8]
	b _080265E8
	.align 2, 0
_08026658: .4byte Task_800303C
_0802665C:
	ldr r1, _08026678 @ =gStageData
	ldrb r0, [r1, #4]
	cmp r0, #3
	bne _0802668A
	adds r3, r1, #0
	adds r3, #0xb9
	ldrb r1, [r3]
	cmp r1, #0
	bne _0802667C
	ldrb r0, [r4, #0x10]
	strb r0, [r3]
	bl sub_800341C
	b _0802668A
	.align 2, 0
_08026678: .4byte gStageData
_0802667C:
	ldrb r2, [r4, #0x10]
	adds r0, r2, #0
	cmp r1, r0
	bls _0802668A
	cmp r0, #0
	beq _0802668A
	strb r2, [r3]
_0802668A:
	ldrb r0, [r4, #0x12]
	ldr r3, _080266A0 @ =gStageData
	cmp r0, #0xff
	bne _080266F0
	ldrb r1, [r4, #0x13]
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #8
	orrs r1, r0
	strh r1, [r6]
	b _080266F0
	.align 2, 0
_080266A0: .4byte gStageData
_080266A4:
	ldrb r0, [r7, #4]
	cmp r0, #7
	beq _080265E8
	bl sub_8002414
	adds r0, r5, #0
	ldr r1, _080266B8 @ =sub_800DF9C
	bl SetPlayerCallback
	b _080265E8
	.align 2, 0
_080266B8: .4byte sub_800DF9C
_080266BC:
	ldr r1, _080266E4 @ =gStageData
	ldrb r0, [r1, #4]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080265E8
	movs r0, #0
	strh r0, [r5, #0x1c]
	movs r0, #8
	strb r0, [r1, #4]
	ldr r0, [r5, #4]
	ldr r1, _080266E8 @ =0xEFFFFFFF
	ands r0, r1
	str r0, [r5, #4]
	adds r0, r5, #0
	ldr r1, _080266EC @ =Player_800EB4C
	bl SetPlayerCallback
	b _080265E8
	.align 2, 0
_080266E4: .4byte gStageData
_080266E8: .4byte 0xEFFFFFFF
_080266EC: .4byte Player_800EB4C
_080266F0:
	ldrb r0, [r3, #3]
	cmp r0, #5
	bne _08026704
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08026704
	b _080265E8
_08026704:
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, r8
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	bgt _08026714
	b _08026530
_08026714:
	movs r0, #0
_08026716:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8026720
sub_8026720: @ 0x08026720
	push {r4, r5, lr}
	ldr r3, _08026748 @ =gStageData
	ldrb r2, [r3, #6]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r2
	lsls r0, r0, #4
	ldr r1, _0802674C @ =gPlayers
	adds r5, r0, r1
	ldr r4, _08026750 @ =gMultiSioSend
	adds r0, r3, #0
	adds r0, #0xb9
	ldrb r1, [r0]
	movs r0, #1
	lsls r0, r2
	cmp r1, r0
	bne _08026758
	ldr r0, _08026754 @ =0x000068D0
	b _0802675A
	.align 2, 0
_08026748: .4byte gStageData
_0802674C: .4byte gPlayers
_08026750: .4byte gMultiSioSend
_08026754: .4byte 0x000068D0
_08026758:
	ldr r0, _080267D4 @ =0x000068D1
_0802675A:
	strh r0, [r4]
	ldr r0, [r3, #0x1c]
	strh r0, [r4, #2]
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	strh r0, [r4, #4]
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	strh r0, [r4, #6]
	ldr r0, [r5, #4]
	str r0, [r4, #8]
	ldrh r0, [r5, #0x34]
	ldr r1, _080267D8 @ =0x000007FF
	ands r1, r0
	ldrh r2, [r4, #0xc]
	ldr r0, _080267DC @ =0xFFFFF800
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #0xc]
	ldrh r1, [r5, #0x36]
	lsls r1, r1, #3
	ldrb r2, [r4, #0xd]
	movs r0, #7
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0xd]
	adds r0, r3, #0
	adds r0, #0xac
	ldrh r0, [r0]
	ldr r1, _080267E0 @ =0x000003FF
	ands r1, r0
	ldrh r2, [r4, #0xe]
	ldr r0, _080267E4 @ =0xFFFFFC00
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #0xe]
	ldrb r1, [r4, #0xf]
	movs r0, #0x7d
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0xf]
	adds r0, r3, #0
	adds r0, #0xb9
	ldrb r0, [r0]
	strb r0, [r4, #0x10]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r0, [r0]
	strb r0, [r4, #0x11]
	ldrb r0, [r4, #0x12]
	cmp r0, #0xff
	bne _080267CE
	adds r0, r3, #0
	adds r0, #0xae
	ldrh r0, [r0]
	strb r0, [r4, #0x13]
	lsrs r0, r0, #8
	strb r0, [r4, #0x14]
_080267CE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080267D4: .4byte 0x000068D1
_080267D8: .4byte 0x000007FF
_080267DC: .4byte 0xFFFFF800
_080267E0: .4byte 0x000003FF
_080267E4: .4byte 0xFFFFFC00

	thumb_func_start sub_80267E8
sub_80267E8: @ 0x080267E8
	push {r4, r5, lr}
	sub sp, #4
	ldr r5, _08026844 @ =gStageData
	ldrb r0, [r5, #6]
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #2
	adds r4, r4, r0
	lsls r4, r4, #4
	ldr r0, _08026848 @ =gPlayers
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_8015D7C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r2, sp
	movs r1, #0x38
	strb r1, [r2]
	movs r1, #0x22
	strb r1, [r2, #1]
	mov r1, sp
	strb r0, [r1, #2]
	adds r4, #0x27
	ldrb r1, [r4]
	strb r1, [r2, #3]
	ldr r4, _0802684C @ =gUnknown_03001060
	ldrb r1, [r5, #6]
	adds r1, #4
	movs r2, #1
	lsls r2, r1
	ldrb r3, [r4, #9]
	bics r3, r2
	ldrb r1, [r5, #6]
	adds r1, #4
	lsls r0, r1
	orrs r3, r0
	strb r3, [r4, #9]
	mov r0, sp
	bl sub_8026AB8
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08026844: .4byte gStageData
_08026848: .4byte gPlayers
_0802684C: .4byte gUnknown_03001060

	thumb_func_start sub_8026850
sub_8026850: @ 0x08026850
	push {r4, r5, lr}
	sub sp, #4
	ldr r5, _080268AC @ =gStageData
	ldrb r0, [r5, #6]
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #2
	adds r4, r4, r0
	lsls r4, r4, #4
	ldr r0, _080268B0 @ =gPlayers
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_8015D7C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r2, sp
	movs r1, #0x38
	strb r1, [r2]
	movs r1, #0xb
	strb r1, [r2, #1]
	mov r1, sp
	strb r0, [r1, #2]
	adds r4, #0x27
	ldrb r1, [r4]
	strb r1, [r2, #3]
	ldr r4, _080268B4 @ =gUnknown_03001060
	ldrb r1, [r5, #6]
	adds r1, #4
	movs r2, #1
	lsls r2, r1
	ldrb r3, [r4, #9]
	bics r3, r2
	ldrb r1, [r5, #6]
	adds r1, #4
	lsls r0, r1
	orrs r3, r0
	strb r3, [r4, #9]
	mov r0, sp
	bl sub_8026AB8
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080268AC: .4byte gStageData
_080268B0: .4byte gPlayers
_080268B4: .4byte gUnknown_03001060

	thumb_func_start sub_80268B8
sub_80268B8: @ 0x080268B8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	mov ip, r1
	asrs r6, r0, #0x10
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #3
	ldr r1, _080269D0 @ =gMultiSioRecv
	adds r7, r0, r1
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r6
	lsls r0, r0, #4
	ldr r2, _080269D4 @ =gPlayers
	adds r4, r0, r2
	ldr r3, _080269D8 @ =gStageData
	ldrb r5, [r3, #6]
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r5
	lsls r0, r0, #4
	adds r0, r0, r2
	mov sb, r0
	ldrh r1, [r7]
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r1
	movs r1, #0xd0
	lsls r1, r1, #7
	mov sl, r2
	mov r8, r3
	cmp r0, r1
	beq _0802690A
	b _08026AA6
_0802690A:
	cmp r6, #0
	bne _08026918
	cmp r5, #0
	beq _08026918
	ldrh r0, [r7, #2]
	mov r2, r8
	str r0, [r2, #0x1c]
_08026918:
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	ldr r1, [r4, #0x10]
	subs r5, r0, r1
	strh r5, [r4, #0x18]
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	ldr r1, [r4, #0x14]
	subs r3, r0, r1
	strh r3, [r4, #0x1a]
	movs r0, #0x18
	ldrsh r2, [r4, r0]
	cmp r2, #0
	bge _08026936
	rsbs r2, r2, #0
_08026936:
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	cmp r1, #0
	bge _08026940
	rsbs r1, r1, #0
_08026940:
	adds r0, r5, #0
	cmp r2, r1
	bge _08026948
	adds r0, r3, #0
_08026948:
	strh r0, [r4, #0x1c]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08026954
	movs r0, #0x10
	strh r0, [r4, #0x1c]
_08026954:
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	str r0, [r4, #0x10]
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	str r0, [r4, #0x14]
	ldr r0, _080269DC @ =0x0000FFFF
	strh r0, [r4, #0x30]
	ldrh r0, [r7, #0xc]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x15
	strh r0, [r4, #0x34]
	ldrb r0, [r7, #0xd]
	lsrs r0, r0, #3
	strh r0, [r4, #0x36]
	ldrb r0, [r7, #0x11]
	adds r1, r4, #0
	adds r1, #0x26
	strb r0, [r1]
	ldrb r0, [r7, #0x10]
	lsls r0, r0, #8
	strh r0, [r4, #0x1c]
	ldr r0, [r7, #8]
	str r0, [r4, #4]
	movs r1, #0x9e
	lsls r1, r1, #1
	adds r2, r4, r1
	ldrb r0, [r2]
	movs r1, #0xf
	ands r1, r0
	ldrb r0, [r7, #0xf]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1b
	lsls r0, r0, #4
	orrs r1, r0
	strb r1, [r2]
	ldrb r0, [r7, #0xf]
	lsrs r0, r0, #7
	adds r1, r4, #0
	adds r1, #0x27
	strb r0, [r1]
	mov r2, r8
	ldrb r0, [r2, #3]
	cmp r0, #7
	beq _08026A94
	cmp r0, #5
	bne _080269E0
	ldrb r0, [r2, #0xa]
	cmp r0, #8
	bne _080269E0
	mov r3, r8
	adds r3, #0x8c
	ldrh r0, [r7, #0xe]
	lsls r0, r0, #0x16
	lsrs r1, r0, #0x16
	ldrh r0, [r3]
	mov r2, ip
	lsls r5, r2, #0x10
	cmp r0, r1
	bhs _08026AA0
	strh r1, [r3]
	b _08026AA0
	.align 2, 0
_080269D0: .4byte gMultiSioRecv
_080269D4: .4byte gPlayers
_080269D8: .4byte gStageData
_080269DC: .4byte 0x0000FFFF
_080269E0:
	mov r1, r8
	ldrb r0, [r1, #9]
	cmp r0, #8
	bne _08026A10
	mov r2, ip
	lsls r0, r2, #0x10
	adds r5, r0, #0
	cmp r5, #0
	bne _08026AA0
	adds r4, r1, #0
	adds r4, #0xac
	ldrh r0, [r7, #0xe]
	lsls r0, r0, #0x16
	ldrh r1, [r4]
	lsrs r0, r0, #0x16
	cmp r1, r0
	bhs _08026A06
	bl sub_8029BB0
_08026A06:
	ldrh r0, [r7, #0xe]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	strh r0, [r4]
	b _08026AA0
_08026A10:
	cmp sb, r4
	beq _08026A32
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	add r0, sl
	mov r1, ip
	lsls r5, r1, #0x10
	cmp sb, r0
	bne _08026AA0
_08026A32:
	mov r2, r8
	ldrb r0, [r2, #4]
	mov r1, ip
	lsls r5, r1, #0x10
	cmp r0, #1
	beq _08026AA0
	mov r4, r8
	adds r4, #0xac
	ldrh r0, [r7, #0xe]
	lsls r0, r0, #0x16
	ldrh r1, [r4]
	lsrs r0, r0, #0x16
	cmp r1, r0
	bhs _08026AA0
	mov r0, r8
	adds r0, #0xbb
	ldrb r0, [r0]
	cmp r0, #0
	bne _08026AA0
	adds r6, r1, #0
	bl sub_8029BB0
	ldrh r0, [r7, #0xe]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	strh r0, [r4]
	mov r2, r8
	ldrh r0, [r2, #0xe]
	cmp r0, #0x48
	beq _08026AA0
	ldrh r0, [r4]
	movs r1, #0x64
	bl Div
	adds r4, r0, #0
	adds r0, r6, #0
	movs r1, #0x64
	bl Div
	cmp r4, r0
	beq _08026AA0
	mov r1, r8
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _08026AA0
	movs r0, #1
	bl AddLives
	b _08026AA0
_08026A94:
	ldrh r0, [r7, #0xe]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	strh r0, [r4, #0x30]
	mov r2, ip
	lsls r5, r2, #0x10
_08026AA0:
	asrs r0, r5, #0x10
	bl sub_8026B10
_08026AA6:
	ldrh r0, [r7]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8026AB8
sub_8026AB8: @ 0x08026AB8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r1, #0
	ldr r5, _08026AF8 @ =gUnknown_03001CC0
	adds r6, r5, #2
_08026AC2:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	lsls r0, r1, #2
	adds r2, r0, r1
	adds r3, r2, r6
	ldrb r0, [r3]
	cmp r0, #0xff
	bne _08026AFC
	ldrb r0, [r4]
	strb r0, [r3]
	adds r0, r5, #3
	adds r0, r2, r0
	ldrb r1, [r4, #1]
	strb r1, [r0]
	adds r0, r5, #4
	adds r0, r2, r0
	ldrb r1, [r4, #2]
	strb r1, [r0]
	adds r0, r5, #5
	adds r0, r2, r0
	ldrb r1, [r4, #3]
	strb r1, [r0]
	adds r0, r5, #6
	adds r0, r2, r0
	ldrb r1, [r4, #4]
	strb r1, [r0]
	b _08026B08
	.align 2, 0
_08026AF8: .4byte gUnknown_03001CC0
_08026AFC:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #7
	ble _08026AC2
_08026B08:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8026B10
sub_8026B10: @ 0x08026B10
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	mov sl, r1
	asrs r0, r0, #0x10
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	ldr r2, _08026B80 @ =gMultiSioRecv
	adds r4, r1, r2
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r2, _08026B84 @ =gPlayers
	adds r6, r1, r2
	ldrb r1, [r4, #0x12]
	lsls r3, r1, #0x18
	lsrs r0, r3, #0x18
	mov r8, r2
	cmp r0, #0xff
	bne _08026B4C
	bl _08027496
_08026B4C:
	lsrs r3, r3, #0x1e
	str r3, [sp, #8]
	movs r3, #0x38
	ands r3, r1
	movs r7, #7
	ands r7, r1
	ldrb r5, [r4, #0x13]
	adds r0, r6, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1d
	ldr r2, [sp, #8]
	cmp r2, r0
	bne _08026B6E
	bl _08027496
_08026B6E:
	cmp r3, #0x38
	bls _08026B76
	bl _08027470
_08026B76:
	lsls r0, r3, #2
	ldr r1, _08026B88 @ =_08026B8C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08026B80: .4byte gMultiSioRecv
_08026B84: .4byte gPlayers
_08026B88: .4byte _08026B8C
_08026B8C: @ jump table
	.4byte _08027496 @ case 0
	.4byte _08027470 @ case 1
	.4byte _08027470 @ case 2
	.4byte _08027470 @ case 3
	.4byte _08027470 @ case 4
	.4byte _08027470 @ case 5
	.4byte _08027470 @ case 6
	.4byte _08027470 @ case 7
	.4byte _08026C70 @ case 8
	.4byte _08027470 @ case 9
	.4byte _08027470 @ case 10
	.4byte _08027470 @ case 11
	.4byte _08027470 @ case 12
	.4byte _08027470 @ case 13
	.4byte _08027470 @ case 14
	.4byte _08027470 @ case 15
	.4byte _08026D7C @ case 16
	.4byte _08027470 @ case 17
	.4byte _08027470 @ case 18
	.4byte _08027470 @ case 19
	.4byte _08027470 @ case 20
	.4byte _08027470 @ case 21
	.4byte _08027470 @ case 22
	.4byte _08027470 @ case 23
	.4byte _08026CD0 @ case 24
	.4byte _08027470 @ case 25
	.4byte _08027470 @ case 26
	.4byte _08027470 @ case 27
	.4byte _08027470 @ case 28
	.4byte _08027470 @ case 29
	.4byte _08027470 @ case 30
	.4byte _08027470 @ case 31
	.4byte _08026D08 @ case 32
	.4byte _08027470 @ case 33
	.4byte _08027470 @ case 34
	.4byte _08027470 @ case 35
	.4byte _08027470 @ case 36
	.4byte _08027470 @ case 37
	.4byte _08027470 @ case 38
	.4byte _08027470 @ case 39
	.4byte _08026EA8 @ case 40
	.4byte _08027470 @ case 41
	.4byte _08027470 @ case 42
	.4byte _08027470 @ case 43
	.4byte _08027470 @ case 44
	.4byte _08027470 @ case 45
	.4byte _08027470 @ case 46
	.4byte _08027470 @ case 47
	.4byte _08026DD8 @ case 48
	.4byte _08027470 @ case 49
	.4byte _08027470 @ case 50
	.4byte _08027470 @ case 51
	.4byte _08027470 @ case 52
	.4byte _08027470 @ case 53
	.4byte _08027470 @ case 54
	.4byte _08027470 @ case 55
	.4byte _08026F10 @ case 56
_08026C70:
	adds r0, r4, #0
	adds r0, #0x12
	ldrb r2, [r0, #1]
	ldrb r1, [r0, #2]
	lsls r1, r1, #8
	orrs r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r6, #0
	bl sub_802AE64
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	lsls r2, r0, #0x1e
	ldr r1, _08026CC8 @ =gStageData
	lsrs r0, r2, #0x1e
	ldrb r1, [r1, #6]
	cmp r0, r1
	beq _08026C9C
	bl _08027470
_08026C9C:
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08026CCC @ =gPlayers
	adds r0, r0, r1
	adds r1, r0, #0
	adds r1, #0x4a
	ldrh r0, [r1]
	adds r0, #0x3c
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x78
	bgt _08026CC0
	b _08027470
_08026CC0:
	movs r0, #0x78
	strh r0, [r1]
	b _08027470
	.align 2, 0
_08026CC8: .4byte gStageData
_08026CCC: .4byte gPlayers
_08026CD0:
	adds r2, r4, #0
	adds r2, #0x12
	ldr r0, _08026D04 @ =gStageData
	adds r0, #0x94
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r3, r0
	ldrb r1, [r2, #1]
	ldrb r0, [r2, #2]
	lsls r0, r0, #8
	orrs r0, r1
	ldrb r1, [r2, #3]
	lsls r1, r1, #0x10
	orrs r1, r0
	ldrb r0, [r2, #4]
	lsls r0, r0, #0x18
	orrs r0, r1
	ldr r1, [r3, #4]
	adds r1, r1, r0
	movs r3, #3
	rsbs r3, r3, #0
	adds r0, r3, #0
	strb r0, [r1]
	b _08027470
	.align 2, 0
_08026D04: .4byte gStageData
_08026D08:
	adds r4, #0x12
	ldr r2, _08026D74 @ =gStageData
	adds r0, r2, #0
	adds r0, #0x94
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldrb r0, [r2, #0xa]
	cmp r0, #9
	bne _08026D52
	ldrb r1, [r4, #1]
	ldrb r0, [r4, #2]
	lsls r0, r0, #8
	orrs r0, r1
	ldrb r2, [r4, #3]
	lsls r2, r2, #0x10
	orrs r2, r0
	ldrb r1, [r4, #4]
	lsls r1, r1, #0x18
	orrs r1, r2
	ldr r0, [r5, #8]
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #2
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08026D52
	ldr r1, _08026D78 @ =gUnknown_03001D00
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0x8a
	bl m4aSongNumStart
_08026D52:
	ldrb r1, [r4, #1]
	ldrb r0, [r4, #2]
	lsls r0, r0, #8
	orrs r0, r1
	ldrb r1, [r4, #3]
	lsls r1, r1, #0x10
	orrs r1, r0
	ldrb r0, [r4, #4]
	lsls r0, r0, #0x18
	orrs r0, r1
	ldr r1, [r5, #8]
	adds r1, r1, r0
	mov r0, sl
	subs r0, #6
	strb r0, [r1]
	b _08027470
	.align 2, 0
_08026D74: .4byte gStageData
_08026D78: .4byte gUnknown_03001D00
_08026D7C:
	adds r5, r4, #0
	adds r5, #0x12
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r3, _08026DD0 @ =gPlayers
	adds r1, r1, r3
	ldr r4, _08026DD4 @ =gStageData
	ldrb r2, [r4, #6]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r2
	lsls r0, r0, #4
	adds r0, r0, r3
	cmp r0, r1
	beq _08026DAE
	b _08027470
_08026DAE:
	adds r0, r4, #0
	adds r0, #0x21
	strb r7, [r0]
	adds r0, #0x8d
	ldrh r0, [r0]
	str r0, [r4, #0x24]
	ldrb r1, [r5, #1]
	ldrb r0, [r5, #2]
	lsls r0, r0, #8
	orrs r0, r1
	strh r0, [r4, #0x28]
	ldrb r1, [r5, #3]
	ldrb r0, [r5, #4]
	lsls r0, r0, #8
	orrs r0, r1
	strh r0, [r4, #0x2a]
	b _08027470
	.align 2, 0
_08026DD0: .4byte gPlayers
_08026DD4: .4byte gStageData
_08026DD8:
	adds r2, r4, #0
	adds r2, #0x12
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
	ldr r1, _08026E94 @ =gPlayers
	adds r4, r0, r1
	ldr r1, _08026E98 @ =gCamera
	ldrb r3, [r2, #1]
	ldrb r0, [r2, #2]
	lsls r0, r0, #8
	orrs r0, r3
	str r0, [r1]
	str r0, [r1, #0x28]
	ldrb r3, [r2, #3]
	ldrb r0, [r2, #4]
	lsls r0, r0, #8
	orrs r0, r3
	str r0, [r1, #4]
	str r0, [r1, #0x2c]
	ldrb r1, [r2, #1]
	ldrb r0, [r2, #2]
	lsls r0, r0, #8
	orrs r0, r1
	adds r0, #0x78
	lsls r0, r0, #8
	str r0, [r4, #0x10]
	ldrb r1, [r2, #3]
	ldrb r0, [r2, #4]
	lsls r0, r0, #8
	orrs r0, r1
	adds r1, r4, #0
	adds r1, #0x25
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	adds r0, #0x50
	lsls r0, r0, #8
	str r0, [r4, #0x14]
	ldr r0, [r4, #4]
	ldr r1, _08026E9C @ =0xFFFEFFFF
	ands r0, r1
	str r0, [r4, #4]
	movs r3, #0x80
	lsls r3, r3, #1
	ands r3, r0
	cmp r3, #0
	bne _08026E88
	adds r0, r6, #0
	adds r0, #0x27
	ldrb r0, [r0]
	adds r2, r4, #0
	adds r2, #0x27
	strb r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #0x18]
	strh r0, [r4, #0x1c]
	ldr r0, [r4, #4]
	ldr r1, _08026EA0 @ =0xEFFFFFDF
	ands r0, r1
	str r0, [r4, #4]
	str r3, [r4, #0x6c]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08026E76
	adds r0, r4, #0
	bl sub_8016F28
_08026E76:
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	bne _08026E88
	adds r0, r4, #0
	bl Player_8005380
_08026E88:
	ldr r0, _08026EA4 @ =gStageData
	adds r0, #0xb7
	movs r1, #2
	strb r1, [r0]
	b _08027470
	.align 2, 0
_08026E94: .4byte gPlayers
_08026E98: .4byte gCamera
_08026E9C: .4byte 0xFFFEFFFF
_08026EA0: .4byte 0xEFFFFFDF
_08026EA4: .4byte gStageData
_08026EA8:
	adds r4, #0x12
	mov r0, sl
	cmp r0, #0
	beq _08026EBA
	ldr r0, _08026F08 @ =gStageData
	ldrb r0, [r0, #6]
	cmp r0, #0
	beq _08026EBA
	b _08027470
_08026EBA:
	ldrb r1, [r4, #1]
	ldrb r0, [r4, #2]
	lsls r0, r0, #8
	orrs r0, r1
	ldrb r2, [r4, #3]
	ldrb r1, [r4, #4]
	lsls r1, r1, #8
	orrs r1, r2
	bl sub_0802790C
	ldr r1, _08026F08 @ =gStageData
	ldrb r0, [r1, #6]
	cmp r0, #0
	beq _08026ED8
	b _08027470
_08026ED8:
	ldrb r0, [r4, #1]
	ldrb r2, [r4, #2]
	lsls r2, r2, #8
	orrs r2, r0
	ldrb r3, [r4, #3]
	ldrb r4, [r4, #4]
	adds r1, #0x8f
	movs r0, #1
	strb r0, [r1]
	mov r1, sp
	movs r0, #0x28
	strb r0, [r1]
	lsls r2, r2, #8
	ldr r0, [sp]
	ldr r1, _08026F0C @ =0xFF0000FF
	ands r0, r1
	orrs r0, r2
	str r0, [sp]
	mov r0, sp
	strb r3, [r0, #3]
	strb r4, [r0, #4]
	bl sub_8026AB8
	b _08027470
	.align 2, 0
_08026F08: .4byte gStageData
_08026F0C: .4byte 0xFF0000FF
_08026F10:
	subs r0, r5, #1
	cmp r0, #0x24
	bls _08026F18
	b _08027470
_08026F18:
	lsls r0, r0, #2
	ldr r1, _08026F24 @ =_08026F28
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08026F24: .4byte _08026F28
_08026F28: @ jump table
	.4byte _08026FBC @ case 0
	.4byte _08027470 @ case 1
	.4byte _08027074 @ case 2
	.4byte _08027470 @ case 3
	.4byte _08027064 @ case 4
	.4byte _080273A4 @ case 5
	.4byte _080270A8 @ case 6
	.4byte _08027108 @ case 7
	.4byte _0802715C @ case 8
	.4byte _080271A4 @ case 9
	.4byte _08027218 @ case 10
	.4byte _0802736C @ case 11
	.4byte _08027470 @ case 12
	.4byte _08027470 @ case 13
	.4byte _08027470 @ case 14
	.4byte _08027470 @ case 15
	.4byte _08027470 @ case 16
	.4byte _08027470 @ case 17
	.4byte _08027470 @ case 18
	.4byte _08027470 @ case 19
	.4byte _08027470 @ case 20
	.4byte _08027470 @ case 21
	.4byte _08027470 @ case 22
	.4byte _08027470 @ case 23
	.4byte _08027470 @ case 24
	.4byte _08027470 @ case 25
	.4byte _08027470 @ case 26
	.4byte _08027470 @ case 27
	.4byte _08027470 @ case 28
	.4byte _08027470 @ case 29
	.4byte _08027470 @ case 30
	.4byte _08027020 @ case 31
	.4byte _08027300 @ case 32
	.4byte _08027210 @ case 33
	.4byte _080271F8 @ case 34
	.4byte _0802737C @ case 35
	.4byte _0802738C @ case 36
_08026FBC:
	adds r2, r4, #0
	adds r2, #0x12
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
	ldr r1, _08026FF8 @ =gPlayers
	adds r3, r0, r1
	ldr r4, _08026FFC @ =gStageData
	ldrb r0, [r2, #2]
	strb r0, [r4, #0xc]
	ldrb r0, [r2, #3]
	strh r0, [r4, #0x12]
	ldr r0, [r3, #4]
	ldr r1, _08027000 @ =0xEFFFFFFF
	ands r0, r1
	str r0, [r3, #4]
	ldrb r0, [r2, #3]
	cmp r0, #1
	bne _08027008
	ldrb r0, [r2, #4]
	strb r0, [r4, #9]
	ldr r4, _08027004 @ =Player_800AE14
	b _0802700A
	.align 2, 0
_08026FF8: .4byte gPlayers
_08026FFC: .4byte gStageData
_08027000: .4byte 0xEFFFFFFF
_08027004: .4byte Player_800AE14
_08027008:
	ldr r4, _0802701C @ =Player_800AD24
_0802700A:
	adds r0, r3, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r6, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	b _08027470
	.align 2, 0
_0802701C: .4byte Player_800AD24
_08027020:
	adds r2, r4, #0
	adds r2, #0x12
	ldr r0, _08027060 @ =gStageData
	ldrb r1, [r0, #0xb]
	adds r4, r0, #0
	ldrb r3, [r2, #2]
	cmp r1, r3
	bne _08027042
	ldrh r0, [r4, #0xe]
	ldrb r1, [r2, #3]
	cmp r0, r1
	bne _08027042
	ldrb r0, [r4, #9]
	ldrb r3, [r2, #4]
	cmp r0, r3
	bne _08027042
	b _08027470
_08027042:
	ldrb r0, [r2, #2]
	strb r0, [r4, #0xb]
	ldrb r0, [r2, #3]
	strh r0, [r4, #0xe]
	ldrb r0, [r2, #4]
	strb r0, [r4, #9]
	bl sub_8003D2C
	movs r1, #0xe
	ldrsh r0, [r4, r1]
	ldrb r1, [r4, #0xb]
	bl WarpToMap
	b _08027470
	.align 2, 0
_08027060: .4byte gStageData
_08027064:
	ldr r0, _08027070 @ =gStageData
	adds r0, #0xb6
	movs r1, #1
	strb r1, [r0]
	b _08027470
	.align 2, 0
_08027070: .4byte gStageData
_08027074:
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
	ldr r1, _080270A4 @ =gPlayers
	adds r2, r0, r1
	ldr r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0802709A
	b _08027470
_0802709A:
	adds r0, r2, #0
	bl sub_8009518
	b _08027470
	.align 2, 0
_080270A4: .4byte gPlayers
_080270A8:
	adds r5, r4, #0
	adds r5, #0x12
	ldrb r0, [r5, #2]
	ldr r2, _08027100 @ =gStageData
	ldrb r3, [r2, #6]
	asrs r0, r3
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080270C8
	adds r1, r2, #0
	adds r1, #0xac
	ldrh r0, [r1]
	ldrb r2, [r5, #3]
	adds r0, r0, r2
	strh r0, [r1]
_080270C8:
	movs r3, #0
	movs r6, #1
_080270CC:
	ldrb r1, [r5, #2]
	lsls r0, r3, #0x10
	asrs r4, r0, #0x10
	adds r0, r4, #0
	ands r0, r6
	asrs r1, r0
	ands r1, r6
	cmp r1, #0
	beq _080270F0
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r4
	lsls r0, r0, #4
	ldr r1, _08027104 @ =gPlayers
	adds r0, r0, r1
	bl sub_8017A58
_080270F0:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _080270CC
	b _08027470
	.align 2, 0
_08027100: .4byte gStageData
_08027104: .4byte gPlayers
_08027108:
	adds r6, r4, #0
	adds r6, #0x12
	movs r3, #0
	movs r5, #0
_08027110:
	ldrb r0, [r6, #2]
	lsls r1, r3, #0x10
	asrs r4, r1, #0x10
	asrs r0, r4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08027148
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r4
	lsls r0, r0, #4
	ldr r1, _08027158 @ =gPlayers
	adds r2, r0, r1
	adds r1, r2, #0
	adds r1, #0x60
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0x5e
	strh r5, [r0]
	adds r0, #4
	strh r5, [r0]
	adds r0, r2, #0
	bl sub_80179BC
_08027148:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08027110
	b _08027470
	.align 2, 0
_08027158: .4byte gPlayers
_0802715C:
	adds r2, r4, #0
	adds r2, #0x12
	movs r3, #0
	movs r5, #0
_08027164:
	ldrb r0, [r2, #2]
	lsls r1, r3, #0x10
	asrs r4, r1, #0x10
	asrs r0, r4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08027196
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r4
	lsls r0, r0, #4
	mov r3, r8
	adds r1, r0, r3
	adds r3, r1, #0
	adds r3, #0x5e
	movs r0, #0x96
	lsls r0, r0, #3
	strh r0, [r3]
	adds r0, r1, #0
	adds r0, #0x60
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
_08027196:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08027164
	b _08027470
_080271A4:
	adds r6, r4, #0
	adds r6, #0x12
	movs r3, #0
	movs r5, #0
_080271AC:
	ldrb r0, [r6, #2]
	lsls r1, r3, #0x10
	asrs r4, r1, #0x10
	asrs r0, r4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080271E4
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r4
	lsls r0, r0, #4
	ldr r1, _080271F4 @ =gPlayers
	adds r1, r0, r1
	adds r2, r1, #0
	adds r2, #0x62
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r2]
	adds r0, r1, #0
	adds r0, #0x5e
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	adds r0, r1, #0
	bl sub_80179BC
_080271E4:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _080271AC
	b _08027470
	.align 2, 0
_080271F4: .4byte gPlayers
_080271F8:
	ldr r1, _0802720C @ =gStageData
	ldrb r0, [r4, #0x15]
	subs r0, #1
	adds r1, #0xb4
	strb r0, [r1]
	movs r0, #1
	bl AddLives
	b _08027470
	.align 2, 0
_0802720C: .4byte gStageData
_08027210:
	ldr r1, _080272EC @ =gUnknown_03001060
	movs r0, #0
	strb r0, [r1, #8]
	strb r0, [r1, #9]
_08027218:
	adds r2, r4, #0
	adds r2, #0x12
	ldr r0, _080272F0 @ =gStageData
	mov r8, r0
	ldrb r3, [r0, #6]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r3
	lsls r0, r0, #4
	ldr r1, _080272F4 @ =gPlayers
	mov sb, r1
	adds r6, r0, r1
	movs r0, #1
	mov ip, r0
	ldr r5, _080272EC @ =gUnknown_03001060
	ldrb r1, [r5, #8]
	adds r0, r1, #0
	asrs r0, r3
	movs r7, #1
	ands r0, r7
	cmp r0, #0
	beq _0802724A
	movs r0, #0
	mov ip, r0
_0802724A:
	adds r0, r7, #0
	lsls r0, r3
	orrs r1, r0
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r4, r7, #0
	lsls r4, r0
	orrs r1, r4
	strb r1, [r5, #8]
	adds r0, #4
	adds r3, r7, #0
	lsls r3, r0
	adds r1, r3, #0
	orrs r1, r4
	ldrb r0, [r5, #9]
	bics r0, r1
	strb r0, [r5, #9]
	ldrb r1, [r5, #9]
	ldrb r0, [r2, #2]
	cmp r0, #0
	beq _08027278
	orrs r1, r3
_08027278:
	strb r1, [r5, #9]
	ldrb r1, [r5, #9]
	ldrb r0, [r2, #3]
	cmp r0, #0
	beq _08027284
	orrs r1, r4
_08027284:
	strb r1, [r5, #9]
	ldr r1, [r6]
	ldr r0, _080272F8 @ =Player_8008A8C
	cmp r1, r0
	bne _08027290
	b _08027470
_08027290:
	ldr r0, _080272FC @ =Player_800ED80
	cmp r1, r0
	bne _08027298
	b _08027470
_08027298:
	mov r0, ip
	cmp r0, #0
	bne _080272A0
	b _08027470
_080272A0:
	bl sub_8026850
	ldrb r1, [r5, #9]
	mov r2, r8
	ldrb r0, [r2, #6]
	adds r0, #4
	asrs r1, r0
	ands r1, r7
	cmp r1, #0
	bne _080272B6
	b _08027470
_080272B6:
	adds r0, r6, #0
	bl sub_800ED50
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
	mov r3, sb
	adds r2, r0, r3
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #8
	beq _080272E4
	b _08027470
_080272E4:
	adds r0, r2, #0
	bl sub_800ED50
	b _08027470
	.align 2, 0
_080272EC: .4byte gUnknown_03001060
_080272F0: .4byte gStageData
_080272F4: .4byte gPlayers
_080272F8: .4byte Player_8008A8C
_080272FC: .4byte Player_800ED80
_08027300:
	ldr r0, _08027360 @ =gStageData
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r5, _08027364 @ =gPlayers
	adds r4, r0, r5
	ldr r1, [r4]
	ldr r0, _08027368 @ =Player_800ED80
	cmp r1, r0
	beq _0802731C
	b _08027470
_0802731C:
	adds r0, r4, #0
	bl Player_8008C1C
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r2, r0, r5
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #8
	bne _0802734C
	adds r0, r2, #0
	bl Player_8008C1C
_0802734C:
	mov r1, sp
	movs r0, #0x38
	strb r0, [r1]
	movs r0, #0x21
	strb r0, [r1, #1]
	mov r0, sp
	bl sub_8026AB8
	b _08027470
	.align 2, 0
_08027360: .4byte gStageData
_08027364: .4byte gPlayers
_08027368: .4byte Player_800ED80
_0802736C:
	adds r0, r4, #0
	adds r0, #0x12
	mov r2, sl
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	bl sub_0807A0E8
	b _08027470
_0802737C:
	ldr r0, _08027388 @ =gStageData
	ldrb r1, [r4, #0x14]
	adds r0, #0xb4
	strb r1, [r0]
	b _08027470
	.align 2, 0
_08027388: .4byte gStageData
_0802738C:
	adds r0, r4, #0
	adds r0, #0x12
	ldr r1, _080273A0 @ =gStageData
	ldrb r2, [r0, #2]
	ldrb r0, [r0, #3]
	lsls r0, r0, #8
	orrs r0, r2
	adds r1, #0xae
	strh r0, [r1]
	b _08027470
	.align 2, 0
_080273A0: .4byte gStageData
_080273A4:
	adds r4, #0x12
	ldr r5, _080273EC @ =gStageData
	ldrb r0, [r5, #3]
	cmp r0, #6
	bne _080273F4
	adds r0, r5, #0
	adds r0, #0x98
	ldr r0, [r0]
	cmp r0, #0
	beq _08027470
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _080273F0 @ =gPlayers
	adds r2, r0, r1
	adds r0, r2, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #1
	beq _080273E0
	adds r1, r2, #0
	adds r1, #0x54
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r1]
_080273E0:
	movs r0, #0
	adds r1, r2, #0
	bl sub_801EBC0
	b _08027470
	.align 2, 0
_080273EC: .4byte gStageData
_080273F0: .4byte gPlayers
_080273F4:
	cmp r0, #7
	bne _08027470
	ldrb r0, [r5, #6]
	mov r3, sl
	cmp r3, #0
	beq _08027404
	cmp r0, #0
	bne _08027470
_08027404:
	cmp r0, #0
	bne _08027412
	adds r0, r5, #0
	adds r0, #0xae
	ldrh r0, [r0]
	cmp r0, #0
	beq _0802742E
_08027412:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08027458 @ =gPlayers
	adds r0, r0, r1
	bl sub_80293E8
	ldrb r1, [r4, #2]
	adds r0, r5, #0
	adds r0, #0x8e
	strb r1, [r0]
_0802742E:
	ldr r3, _0802745C @ =gStageData
	ldrb r0, [r3, #6]
	cmp r0, #0
	bne _08027470
	ldrb r2, [r4, #2]
	mov r1, sp
	movs r0, #0x38
	strb r0, [r1]
	movs r0, #6
	strb r0, [r1, #1]
	adds r0, r3, #0
	adds r0, #0xae
	ldrh r0, [r0]
	cmp r0, #0
	bne _08027460
	mov r0, sp
	adds r1, r3, #0
	adds r1, #0x8e
	ldrb r1, [r1]
	strb r1, [r0, #2]
	b _0802746A
	.align 2, 0
_08027458: .4byte gPlayers
_0802745C: .4byte gStageData
_08027460:
	mov r0, sp
	strb r2, [r0, #2]
	adds r0, r3, #0
	adds r0, #0x8e
	strb r2, [r0]
_0802746A:
	mov r0, sp
	bl sub_8026AB8
_08027470:
	ldr r2, _080274A8 @ =gPlayers
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r1, r1, r2
	adds r1, #0x2c
	ldr r2, [sp, #8]
	lsls r3, r2, #3
	ldrb r2, [r1]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r3
	strb r0, [r1]
_08027496:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080274A8: .4byte gPlayers

	thumb_func_start sub_80274AC
sub_80274AC: @ 0x080274AC
	push {r4, lr}
	sub sp, #8
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	mov r3, sp
	movs r2, #8
	strb r2, [r3]
	lsrs r0, r0, #8
	ldr r2, [sp]
	ldr r3, _080274EC @ =0xFF0000FF
	ands r2, r3
	orrs r2, r0
	str r2, [sp]
	mov r2, sp
	movs r0, #0xff
	ands r4, r0
	strb r4, [r2, #3]
	lsrs r1, r1, #0x18
	strb r1, [r2, #4]
	ldr r0, _080274F0 @ =gStageData
	adds r0, #0xbb
	movs r1, #7
	strb r1, [r0]
	mov r0, sp
	bl sub_8026AB8
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080274EC: .4byte 0xFF0000FF
_080274F0: .4byte gStageData

	thumb_func_start sub_80274F4
sub_80274F4: @ 0x080274F4
	push {r4, lr}
	sub sp, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x10
	mov r4, sp
	movs r3, #7
	ands r0, r3
	movs r3, #0x10
	orrs r0, r3
	strb r0, [r4]
	lsrs r1, r1, #8
	ldr r0, [sp]
	ldr r3, _08027534 @ =0xFF0000FF
	ands r0, r3
	orrs r0, r1
	str r0, [sp]
	mov r3, sp
	lsls r2, r2, #0x10
	lsrs r0, r2, #0x10
	movs r1, #0xff
	ands r0, r1
	strb r0, [r3, #3]
	lsrs r2, r2, #0x18
	strb r2, [r3, #4]
	mov r0, sp
	bl sub_8026AB8
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08027534: .4byte 0xFF0000FF

	thumb_func_start sub_8027538
sub_8027538: @ 0x08027538
	push {r4, lr}
	sub sp, #8
	ldr r1, _08027574 @ =gStageData
	adds r1, #0x94
	ldr r1, [r1]
	ldrh r1, [r1, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r1, r1, r2
	ldr r1, [r1, #4]
	subs r0, r0, r1
	mov r2, sp
	movs r1, #0x18
	strb r1, [r2]
	mov r4, sp
	lsls r3, r0, #8
	ldr r1, [sp]
	movs r2, #0xff
	ands r1, r2
	orrs r1, r3
	str r1, [sp]
	lsrs r0, r0, #0x18
	strb r0, [r4, #4]
	mov r0, sp
	bl sub_8026AB8
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08027574: .4byte gStageData

	thumb_func_start sub_8027578
sub_8027578: @ 0x08027578
	push {r4, lr}
	sub sp, #8
	ldr r1, _080275B4 @ =gStageData
	adds r1, #0x94
	ldr r1, [r1]
	ldrh r1, [r1, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r1, r1, r2
	ldr r1, [r1, #8]
	subs r0, r0, r1
	mov r2, sp
	movs r1, #0x20
	strb r1, [r2]
	mov r4, sp
	lsls r3, r0, #8
	ldr r1, [sp]
	movs r2, #0xff
	ands r1, r2
	orrs r1, r3
	str r1, [sp]
	lsrs r0, r0, #0x18
	strb r0, [r4, #4]
	mov r0, sp
	bl sub_8026AB8
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080275B4: .4byte gStageData

	thumb_func_start sub_80275B8
sub_80275B8: @ 0x080275B8
	push {r4, lr}
	sub sp, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r1, sp
	movs r0, #0x38
	strb r0, [r1]
	movs r0, #1
	strb r0, [r1, #1]
	mov r0, sp
	strb r2, [r0, #2]
	cmp r3, #1
	bne _080275DE
	strb r4, [r0, #4]
_080275DE:
	mov r0, sp
	strb r3, [r0, #3]
	bl sub_8026AB8
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80275F0
sub_80275F0: @ 0x080275F0
	push {r4, lr}
	sub sp, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r4, sp
	movs r3, #0x38
	strb r3, [r4]
	movs r3, #0x20
	strb r3, [r4, #1]
	mov r3, sp
	strb r2, [r3, #2]
	mov r2, sp
	strb r1, [r2, #4]
	mov r1, sp
	strb r0, [r1, #3]
	mov r0, sp
	bl sub_8026AB8
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8027620
sub_8027620: @ 0x08027620
	push {lr}
	sub sp, #8
	mov r3, sp
	movs r2, #0x30
	strb r2, [r3]
	lsls r0, r0, #0x10
	lsrs r0, r0, #8
	ldr r2, [sp]
	ldr r3, _08027654 @ =0xFF0000FF
	ands r2, r3
	orrs r2, r0
	str r2, [sp]
	mov r3, sp
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	movs r2, #0xff
	ands r0, r2
	strb r0, [r3, #3]
	lsrs r1, r1, #0x18
	strb r1, [r3, #4]
	mov r0, sp
	bl sub_8026AB8
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0
_08027654: .4byte 0xFF0000FF

	thumb_func_start sub_8027658
sub_8027658: @ 0x08027658
	push {lr}
	sub sp, #4
	mov r1, sp
	movs r0, #0x38
	strb r0, [r1]
	movs r0, #5
	strb r0, [r1, #1]
	mov r0, sp
	bl sub_8026AB8
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8027674
sub_8027674: @ 0x08027674
	push {r4, lr}
	sub sp, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	mov r3, sp
	movs r2, #0x38
	strb r2, [r3]
	movs r2, #0xc
	strb r2, [r3, #1]
	mov r2, sp
	strb r0, [r2, #2]
	movs r0, #0xff
	ands r4, r0
	strb r4, [r2, #3]
	lsrs r1, r1, #0x18
	strb r1, [r2, #4]
	mov r0, sp
	bl sub_8026AB8
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80276A8
sub_80276A8: @ 0x080276A8
	push {lr}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	mov r1, sp
	movs r0, #0x38
	strb r0, [r1]
	movs r0, #6
	strb r0, [r1, #1]
	ldr r0, _080276D8 @ =gStageData
	ldrb r1, [r0, #6]
	adds r2, r0, #0
	cmp r1, #0
	bne _080276DC
	adds r0, #0xae
	ldrh r0, [r0]
	cmp r0, #0
	bne _080276DC
	mov r0, sp
	adds r1, r2, #0
	adds r1, #0x8e
	ldrb r1, [r1]
	strb r1, [r0, #2]
	b _080276E6
	.align 2, 0
_080276D8: .4byte gStageData
_080276DC:
	mov r0, sp
	strb r3, [r0, #2]
	adds r0, r2, #0
	adds r0, #0x8e
	strb r3, [r0]
_080276E6:
	mov r0, sp
	bl sub_8026AB8
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80276F4
sub_80276F4: @ 0x080276F4
	push {r4, lr}
	sub sp, #8
	lsls r0, r0, #0x10      @ r0 = param0 << 16
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10      @ r4 = playerIndex
	ldr r2, _08027734 @ =gStageData
	adds r2, #0x8f
	movs r3, #1
	strb r3, [r2]
	mov r3, sp
	movs r2, #0x28
	strb r2, [r3]
	lsrs r0, r0, #8
	ldr r2, [sp]
	ldr r3, _08027738 @ =0xFF0000FF
	ands r2, r3
	orrs r2, r0
	str r2, [sp]
	mov r2, sp
	movs r0, #0xff
	ands r4, r0
	strb r4, [r2, #3]
	lsrs r1, r1, #0x18
	strb r1, [r2, #4]
	mov r0, sp
	bl sub_8026AB8
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08027734: .4byte gStageData
_08027738: .4byte 0xFF0000FF

	thumb_func_start sub_802773C
sub_802773C: @ 0x0802773C
	push {lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r3, sp
	movs r2, #0x38
	strb r2, [r3]
	movs r2, #7
	strb r2, [r3, #1]
	movs r2, #1
	lsls r2, r0
	strb r2, [r3, #2]
	mov r0, sp
	strb r1, [r0, #3]
	bl sub_8026AB8
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8027768
sub_8027768: @ 0x08027768
	push {lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	mov r2, sp
	movs r1, #0x38
	strb r1, [r2]
	movs r1, #8
	strb r1, [r2, #1]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08027790
	cmp r3, #0
	bne _0802779A
	mov r1, sp
	movs r0, #5
	b _0802779E
_08027790:
	cmp r3, #0
	beq _0802779A
	mov r1, sp
	movs r0, #5
	b _0802779E
_0802779A:
	mov r1, sp
	movs r0, #0xa
_0802779E:
	strb r0, [r1, #2]
	mov r0, sp
	bl sub_8026AB8
	add sp, #4
	pop {r0}
	bx r0

	thumb_func_start sub_80277AC
sub_80277AC: @ 0x080277AC
	push {lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	mov r2, sp
	movs r1, #0x38
	strb r1, [r2]
	movs r1, #9
	strb r1, [r2, #1]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080277D4
	cmp r3, #0
	bne _080277DE
	mov r1, sp
	movs r0, #0xa
	b _080277E2
_080277D4:
	cmp r3, #0
	beq _080277DE
	mov r1, sp
	movs r0, #0xa
	b _080277E2
_080277DE:
	mov r1, sp
	movs r0, #5
_080277E2:
	strb r0, [r1, #2]
	mov r0, sp
	bl sub_8026AB8
	add sp, #4
	pop {r0}
	bx r0

	thumb_func_start sub_80277F0
sub_80277F0: @ 0x080277F0
	push {lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	mov r2, sp
	movs r1, #0x38
	strb r1, [r2]
	mov r1, sp
	movs r2, #0xa
	strb r2, [r1, #1]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08027816
	cmp r3, #0
	bne _08027822
	b _0802781A
_08027816:
	cmp r3, #0
	beq _08027822
_0802781A:
	mov r1, sp
	movs r0, #5
	strb r0, [r1, #2]
	b _08027826
_08027822:
	mov r0, sp
	strb r2, [r0, #2]
_08027826:
	mov r0, sp
	bl sub_8026AB8
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8027834
sub_8027834: @ 0x08027834
	push {lr}
	sub sp, #4
	mov r1, sp
	movs r0, #0x38
	strb r0, [r1]
	movs r0, #0x23
	strb r0, [r1, #1]
	ldr r0, _08027858 @ =gStageData
	adds r0, #0xb4
	ldrb r0, [r0]
	strb r0, [r1, #3]
	mov r0, sp
	bl sub_8026AB8
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08027858: .4byte gStageData

	thumb_func_start sub_802785C
sub_802785C: @ 0x0802785C
	push {lr}
	sub sp, #4
	mov r1, sp
	movs r0, #0x38
	strb r0, [r1]
	movs r0, #0x21
	strb r0, [r1, #1]
	mov r0, sp
	bl sub_8026AB8
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8027878
sub_8027878: @ 0x08027878
	push {lr}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r2, sp
	movs r1, #0x38
	strb r1, [r2]
	movs r1, #0x24
	strb r1, [r2, #1]
	mov r1, sp
	strb r0, [r1, #2]
	mov r0, sp
	bl sub_8026AB8
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_802789C
sub_802789C: @ 0x0802789C
	push {lr}
	sub sp, #4
	mov r1, sp
	movs r0, #0x38
	strb r0, [r1]
	movs r0, #0x25
	strb r0, [r1, #1]
	ldr r0, _080278C0 @ =gStageData
	adds r0, #0xae
	ldrh r0, [r0]
	strh r0, [r1, #2]
	mov r0, sp
	bl sub_8026AB8
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080278C0: .4byte gStageData

	thumb_func_start sub_80278C4
sub_80278C4: @ 0x080278C4
	ldr r2, _080278D4 @ =gMultiSioSend
	ldr r0, _080278D8 @ =gStageData
	ldrb r1, [r0, #5]
	strb r1, [r2, #0x12]
	adds r0, #0xae
	ldrh r0, [r0]
	strh r0, [r2, #0x14]
	bx lr
	.align 2, 0
_080278D4: .4byte gMultiSioSend
_080278D8: .4byte gStageData

	thumb_func_start sub_80278DC
sub_80278DC: @ 0x080278DC
	push {lr}
	sub sp, #4
	mov r1, sp
	movs r0, #0x38
	strb r0, [r1]
	movs r0, #3
	strb r0, [r1, #1]
	mov r0, sp
	bl sub_8026AB8
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80278F8
sub_80278F8: @ 0x080278F8
	ldr r1, _08027900 @ =gStageData
	ldrh r0, [r0, #2]
	strh r0, [r1, #0x12]
	bx lr
	.align 2, 0
_08027900: .4byte gStageData

	thumb_func_start sub_8027904
sub_8027904: @ 0x08027904
	bx lr
	.align 2, 0

	thumb_func_start sub_8027908
sub_8027908: @ 0x08027908
	bx lr
	.align 2, 0

	thumb_func_start sub_0802790C
sub_0802790C: @ 0x0802790C
	push {lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _08027940 @ =gPlayers
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r2, r0, r2
	adds r0, r2, #0
	adds r0, #0x69
	strb r3, [r0]
	ldr r0, _08027944 @ =gStageData
	adds r0, #0x8f
	movs r1, #1
	strb r1, [r0]
	movs r0, #0xf0
	ands r0, r3
	cmp r0, #0x10
	beq _08027948
	cmp r0, #0x20
	beq _08027954
	b _0802795C
	.align 2, 0
_08027940: .4byte gPlayers
_08027944: .4byte gStageData
_08027948:
	adds r1, r2, #0
	adds r1, #0x66
	movs r0, #0xe1
	lsls r0, r0, #2
	strh r0, [r1]
	b _0802795C
_08027954:
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
	bl sub_80296F8
_0802795C:
	pop {r0}
	bx r0

	thumb_func_start sub_8027960
sub_8027960: @ 0x08027960
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	ldr r1, _080279E8 @ =gDispCnt
	movs r2, #0x9a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _080279EC @ =gBgScrollRegs
	movs r0, #0
	mov r8, r0
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	str r0, [sp, #4]
	ldr r2, _080279F0 @ =0x040000D4
	add r1, sp, #4
	str r1, [r2]
	ldr r0, _080279F4 @ =gBgCntRegs
	ldrh r1, [r0, #4]
	movs r0, #0xc
	ands r0, r1
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _080279F8 @ =0x85000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r3, _080279FC @ =gBgSprites_Unknown1
	mov r2, r8
	strb r2, [r3, #2]
	ldr r0, _08027A00 @ =gBgSprites_Unknown2
	strb r2, [r0, #8]
	strb r2, [r0, #9]
	movs r1, #0xff
	strb r1, [r0, #0xa]
	movs r2, #0x40
	strb r2, [r0, #0xb]
	mov r1, r8
	strb r1, [r3, #1]
	strb r1, [r0, #4]
	strb r1, [r0, #5]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #6]
	strb r2, [r0, #7]
	mov r1, r8
	strb r1, [r3]
	strb r1, [r0]
	strb r1, [r0, #1]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #2]
	strb r2, [r0, #3]
	bl sub_8025D58
	lsls r0, r0, #0x10
	asrs r7, r0, #0x10
	cmp r7, #0
	beq _08027A04
	bl sub_802613C
	b _08027AA4
	.align 2, 0
_080279E8: .4byte gDispCnt
_080279EC: .4byte gBgScrollRegs
_080279F0: .4byte 0x040000D4
_080279F4: .4byte gBgCntRegs
_080279F8: .4byte 0x85000010
_080279FC: .4byte gBgSprites_Unknown1
_08027A00: .4byte gBgSprites_Unknown2
_08027A04:
	ldr r0, _08027AB0 @ =gLoadedSaveGame
	ldr r2, _08027AB4 @ =0x00000366
	adds r0, r0, r2
	ldrb r5, [r0]
	ldr r0, _08027AB8 @ =sub_80283CC
	movs r2, #0x80
	lsls r2, r2, #5
	str r7, [sp]
	movs r1, #0xf4
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r2, r4
	ldr r1, _08027ABC @ =0x030000F0
	adds r0, r2, r1
	strh r7, [r0]
	subs r1, #0x14
	adds r0, r2, r1
	mov r1, r8
	strb r1, [r0]
	ldr r1, _08027AC0 @ =0x030000DD
	adds r0, r2, r1
	mov r1, r8
	strb r1, [r0]
	ldr r0, _08027AC4 @ =0x030000E0
	adds r6, r2, r0
	ldr r1, _08027AC8 @ =gUnknown_080CEED8
	lsls r5, r5, #3
	adds r0, r5, r1
	ldr r3, [r0]
	str r3, [r6]
	ldr r0, _08027ACC @ =0x030000E4
	adds r6, r2, r0
	adds r1, #4
	adds r5, r5, r1
	ldr r0, [r5]
	subs r0, r0, r3
	str r0, [r6]
	ldr r1, _08027AD0 @ =0x030000E8
	adds r0, r2, r1
	str r7, [r0]
	ldr r0, _08027AD4 @ =0x030000EC
	adds r2, r2, r0
	str r7, [r2]
	movs r0, #0x44
	bl m4aSongNumStart
	adds r0, r4, #0
	bl sub_80280AC
	adds r0, r4, #0
	bl sub_8027FD4
	strh r7, [r4]
	movs r0, #2
	strh r0, [r4, #2]
	strh r7, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #6]
	movs r0, #0xff
	strh r0, [r4, #8]
	strh r7, [r4, #0xa]
	adds r0, r4, #0
	bl ScreenFadeUpdateValues
	movs r0, #0xa0
	lsls r0, r0, #0x13
	strh r7, [r0]
	ldr r0, _08027AD8 @ =gUnknown_03001060
	mov r1, r8
	strb r1, [r0, #3]
	strb r1, [r0, #2]
	strb r1, [r0, #1]
	strb r1, [r0]
	bl sub_80C6168
_08027AA4:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08027AB0: .4byte gLoadedSaveGame
_08027AB4: .4byte 0x00000366
_08027AB8: .4byte sub_80283CC
_08027ABC: .4byte 0x030000F0
_08027AC0: .4byte 0x030000DD
_08027AC4: .4byte 0x030000E0
_08027AC8: .4byte gUnknown_080CEED8
_08027ACC: .4byte 0x030000E4
_08027AD0: .4byte 0x030000E8
_08027AD4: .4byte 0x030000EC
_08027AD8: .4byte gUnknown_03001060

	thumb_func_start sub_8027ADC
sub_8027ADC: @ 0x08027ADC
	push {r4, r5, r6, lr}
	ldr r6, _08027B24 @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r5, r0
	ldr r0, _08027B28 @ =gUnknown_03001060
	movs r4, #0
	strb r4, [r0, #3]
	strb r4, [r0, #2]
	strb r4, [r0, #1]
	strb r4, [r0]
	ldr r0, _08027B2C @ =gMultiSioEnabled
	strb r4, [r0]
	bl sub_80260F0
	strh r4, [r5]
	movs r0, #1
	strh r0, [r5, #2]
	strh r4, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5, #6]
	movs r0, #0xff
	strh r0, [r5, #8]
	strh r4, [r5, #0xa]
	adds r0, r5, #0
	bl ScreenFadeUpdateValues
	ldr r1, [r6]
	ldr r0, _08027B30 @ =sub_8028418
	str r0, [r1, #8]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08027B24: .4byte gCurTask
_08027B28: .4byte gUnknown_03001060
_08027B2C: .4byte gMultiSioEnabled
_08027B30: .4byte sub_8028418

	thumb_func_start sub_8027B34
sub_8027B34: @ 0x08027B34
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _08027B6C @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r6, r0
	bl sub_802855C
	lsls r0, r0, #0x18
	asrs r0, r0, #8
	lsrs r0, r0, #0x10
	adds r2, r0, #0
	ldr r1, _08027B70 @ =0x030000DC
	adds r0, r6, r1
	strb r2, [r0]
	ldr r0, _08027B74 @ =0x04000128
	ldrb r1, [r0]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08027B78
	bl sub_802613C
	b _08027D18
	.align 2, 0
_08027B6C: .4byte gCurTask
_08027B70: .4byte 0x030000DC
_08027B74: .4byte 0x04000128
_08027B78:
	ldr r0, _08027C40 @ =gMultiBootParam
	mov r8, r0
	ldrb r0, [r0, #0x1e]
	movs r1, #0xe
	ands r1, r0
	cmp r1, #0
	beq _08027C68
	mov r1, r8
	ldrb r0, [r1, #0x18]
	cmp r0, #0
	bne _08027C80
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08027C80
	bl sub_80285A0
	ldr r0, _08027C44 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08027C80
	ldr r2, _08027C48 @ =0x030000DD
	adds r0, r6, r2
	movs r5, #1
	strb r5, [r0]
	ldr r4, _08027C4C @ =gFlags
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	str r0, [r4]
	bl m4aMPlayAllStop
	ldr r0, [r4]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4]
	bl m4aSoundVSyncOff
	ldr r1, _08027C50 @ =0x040000B0
	ldrh r2, [r1, #0xa]
	ldr r4, _08027C54 @ =0x0000C5FF
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r3, _08027C58 @ =0x00007FFF
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	adds r1, #0xc
	ldrh r2, [r1, #0xa]
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	adds r1, #0xc
	ldrh r2, [r1, #0xa]
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldr r0, _08027C5C @ =0x040000D4
	ldrh r1, [r0, #0xa]
	ands r4, r1
	strh r4, [r0, #0xa]
	ldrh r1, [r0, #0xa]
	ands r3, r1
	strh r3, [r0, #0xa]
	ldrh r0, [r0, #0xa]
	ldr r1, _08027C60 @ =0x030000E0
	adds r0, r6, r1
	ldr r1, [r0]
	adds r1, #0xc0
	ldr r2, _08027C64 @ =0x030000E4
	adds r0, r6, r2
	ldr r2, [r0]
	subs r2, #0xc0
	str r5, [sp]
	mov r0, r8
	movs r3, #4
	bl MultiBootStartMaster
	b _08027C80
	.align 2, 0
_08027C40: .4byte gMultiBootParam
_08027C44: .4byte gPressedKeys
_08027C48: .4byte 0x030000DD
_08027C4C: .4byte gFlags
_08027C50: .4byte 0x040000B0
_08027C54: .4byte 0x0000C5FF
_08027C58: .4byte 0x00007FFF
_08027C5C: .4byte 0x040000D4
_08027C60: .4byte 0x030000E0
_08027C64: .4byte 0x030000E4
_08027C68:
	ldr r2, _08027CA4 @ =0x030000DD
	adds r0, r6, r2
	strb r1, [r0]
	ldr r2, _08027CA8 @ =gFlags
	ldr r0, [r2]
	ldr r1, _08027CAC @ =0xFFFFBFFF
	ands r0, r1
	ldr r1, _08027CB0 @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r2]
	bl m4aSoundVSyncOn
_08027C80:
	adds r0, r7, #0
	adds r0, #0xdd
	ldrb r0, [r0]
	cmp r0, #0
	bne _08027CC0
	ldr r0, _08027CB4 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08027CC0
	movs r0, #0x6b
	bl m4aSongNumStart
	ldr r0, _08027CB8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08027CBC @ =sub_8027ADC
	b _08027D16
	.align 2, 0
_08027CA4: .4byte 0x030000DD
_08027CA8: .4byte gFlags
_08027CAC: .4byte 0xFFFFBFFF
_08027CB0: .4byte 0xFFFF7FFF
_08027CB4: .4byte gPressedKeys
_08027CB8: .4byte gCurTask
_08027CBC: .4byte sub_8027ADC
_08027CC0:
	bl sub_8028530
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	bne _08027D18
	ldr r0, _08027D24 @ =gMultiBootParam
	bl MultiBootCheckComplete
	cmp r0, #0
	beq _08027D18
	adds r0, r7, #0
	bl sub_8028160
	adds r0, r7, #0
	adds r0, #0xde
	strb r5, [r0]
	ldr r2, _08027D28 @ =gMultiSioSend
	strb r5, [r2]
	ldr r0, _08027D2C @ =gMultiSioRecv
	mov ip, r0
	strb r5, [r0]
	strb r5, [r0, #0x18]
	mov r4, ip
	adds r4, #0x30
	strb r5, [r4]
	mov r3, ip
	adds r3, #0x48
	strb r5, [r3]
	strb r5, [r2, #2]
	movs r1, #0
	ldr r0, _08027D30 @ =0x0000F001
	strh r0, [r2]
	mov r2, ip
	strb r1, [r2, #2]
	mov r0, ip
	adds r0, #0x18
	strb r1, [r0, #2]
	strb r1, [r4, #2]
	strb r1, [r3, #2]
	ldr r0, _08027D34 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08027D38 @ =sub_8028448
_08027D16:
	str r0, [r1, #8]
_08027D18:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08027D24: .4byte gMultiBootParam
_08027D28: .4byte gMultiSioSend
_08027D2C: .4byte gMultiSioRecv
_08027D30: .4byte 0x0000F001
_08027D34: .4byte gCurTask
_08027D38: .4byte sub_8028448

	thumb_func_start sub_8027D3C
sub_8027D3C: @ 0x08027D3C
	push {r4, lr}
	ldr r0, _08027D80 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	bl MultiSioStop
	ldr r2, _08027D84 @ =0x04000208
	movs r0, #0
	strh r0, [r2]
	ldr r1, _08027D88 @ =gIntrTable
	ldr r0, _08027D8C @ =Sio32MultiLoadIntr
	str r0, [r1]
	movs r0, #1
	strh r0, [r2]
	ldr r0, _08027D90 @ =0x030000DE
	adds r4, r4, r0
	ldrb r0, [r4]
	cmp r0, #4
	bne _08027DBC
	ldr r0, _08027D94 @ =gLoadedSaveGame
	ldr r1, _08027D98 @ =0x00000366
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08027DA4
	ldr r0, _08027D9C @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	ldr r1, _08027DA0 @ =gUnknown_08E5F6B0
	bl Sio32MultiLoadInit
	b _08027DD2
	.align 2, 0
_08027D80: .4byte gCurTask
_08027D84: .4byte 0x04000208
_08027D88: .4byte gIntrTable
_08027D8C: .4byte Sio32MultiLoadIntr
_08027D90: .4byte 0x030000DE
_08027D94: .4byte gLoadedSaveGame
_08027D98: .4byte 0x00000366
_08027D9C: .4byte gMultiSioStatusFlags
_08027DA0: .4byte gUnknown_08E5F6B0
_08027DA4:
	ldr r0, _08027DB4 @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	ldr r1, _08027DB8 @ =gUnknown_08E5C244
	bl Sio32MultiLoadInit
	b _08027DD2
	.align 2, 0
_08027DB4: .4byte gMultiSioStatusFlags
_08027DB8: .4byte gUnknown_08E5C244
_08027DBC:
	ldr r0, _08027DE4 @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	ldr r2, _08027DE8 @ =gUnknown_080CEF08
	ldrb r1, [r4]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl Sio32MultiLoadInit
_08027DD2:
	ldr r0, _08027DEC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08027DF0 @ =sub_8027DF4
	str r0, [r1, #8]
	bl sub_8028338
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08027DE4: .4byte gMultiSioStatusFlags
_08027DE8: .4byte gUnknown_080CEF08
_08027DEC: .4byte gCurTask
_08027DF0: .4byte sub_8027DF4

	thumb_func_start sub_8027DF4
sub_8027DF4: @ 0x08027DF4
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r5, _08027E30 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	movs r0, #0
	str r0, [sp]
	mov r0, sp
	bl Sio32MultiLoadMain
	cmp r0, #0
	beq _08027E18
	ldr r1, [r5]
	ldr r0, _08027E34 @ =sub_8028478
	str r0, [r1, #8]
_08027E18:
	ldr r0, _08027E38 @ =0x030000EC
	adds r5, r4, r0
	ldr r1, [sp]
	ldr r3, [r5]
	cmp r1, r3
	bls _08027E3C
	subs r0, #4
	adds r2, r4, r0
	subs r1, r1, r3
	ldr r0, [r2]
	b _08027E52
	.align 2, 0
_08027E30: .4byte gCurTask
_08027E34: .4byte sub_8028478
_08027E38: .4byte 0x030000EC
_08027E3C:
	cmp r1, r3
	bhs _08027E5A
	ldr r1, _08027E6C @ =0x030000E8
	adds r2, r4, r1
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r0, r1
	subs r0, r0, r3
	str r0, [r2]
	ldr r1, [sp]
_08027E52:
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, [sp]
	str r0, [r5]
_08027E5A:
	adds r0, r6, #0
	bl sub_8028644
	bl sub_8028338
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08027E6C: .4byte 0x030000E8

	thumb_func_start sub_8027E70
sub_8027E70: @ 0x08027E70
	push {r4, r5, r6, r7, lr}
	ldr r0, _08027EFC @ =gCurTask
	ldr r4, [r0]
	ldrh r3, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r3, r0
	ldr r2, _08027F00 @ =gMultiSioStatusFlags
	ldr r0, [r2]
	movs r1, #0x20
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	beq _08027E9A
	ldr r1, _08027F04 @ =0x030000DE
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #8
	bhi _08027E9A
	ldr r0, _08027F08 @ =sub_8027D3C
	str r0, [r4, #8]
_08027E9A:
	adds r4, r6, #0
	ldr r0, [r4]
	movs r1, #0x10
	ands r0, r1
	adds r2, r5, #0
	adds r2, #0xdd
	cmp r0, #0
	beq _08027EAE
	movs r0, #1
	strb r0, [r2]
_08027EAE:
	ldr r0, _08027F0C @ =gMultiSioSend
	ldr r1, _08027F10 @ =gLoadedSaveGame
	ldr r3, _08027F14 @ =0x00000366
	adds r1, r1, r3
	ldrb r1, [r1]
	rsbs r1, r1, #0
	lsrs r1, r1, #0x1f
	strb r1, [r0]
	ldr r1, _08027F18 @ =gMultiSioRecv
	ldrb r2, [r2]
	bl MultiSioMain
	str r0, [r4]
	adds r4, r5, #0
	adds r4, #0xdf
	ldrb r0, [r4]
	cmp r0, #0
	bne _08027EDA
	bl MultiSioStart
	movs r0, #1
	strb r0, [r4]
_08027EDA:
	ldr r0, [r6]
	movs r1, #0xf0
	lsls r1, r1, #4
	ands r0, r1
	lsrs r6, r0, #8
	movs r4, #1
	ldr r7, _08027F1C @ =0x00006001
_08027EE8:
	lsls r4, r4, #0x10
	lsrs r1, r4, #0x10
	adds r0, r5, #0
	bl sub_80285EC
	cmp r0, #0
	bne _08027F20
	bl sub_802613C
	b _08027FC8
	.align 2, 0
_08027EFC: .4byte gCurTask
_08027F00: .4byte gMultiSioStatusFlags
_08027F04: .4byte 0x030000DE
_08027F08: .4byte sub_8027D3C
_08027F0C: .4byte gMultiSioSend
_08027F10: .4byte gLoadedSaveGame
_08027F14: .4byte 0x00000366
_08027F18: .4byte gMultiSioRecv
_08027F1C: .4byte 0x00006001
_08027F20:
	asrs r1, r4, #0x10
	adds r0, r6, #0
	lsls r0, r1
	cmp r0, #0
	beq _08027FA0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _08027F80 @ =gMultiSioRecv
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, r7
	bne _08027FA0
	movs r2, #0
	ldr r4, _08027F84 @ =gUnknown_03000970
	movs r3, #0
_08027F40:
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #2
	adds r0, r0, r4
	strb r3, [r0]
	strb r3, [r0, #1]
	strb r2, [r0, #2]
	strb r3, [r0, #3]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #3
	ble _08027F40
	movs r0, #0
	ldr r1, _08027F88 @ =0x0000FFFF
	bl TasksDestroyInPriorityRange
	ldr r1, _08027F8C @ =gBackgroundsCopyQueueCursor
	ldr r0, _08027F90 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08027F94 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08027F98 @ =gVramGraphicsCopyCursor
	ldr r0, _08027F9C @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl sub_8028708
	b _08027FC8
	.align 2, 0
_08027F80: .4byte gMultiSioRecv
_08027F84: .4byte gUnknown_03000970
_08027F88: .4byte 0x0000FFFF
_08027F8C: .4byte gBackgroundsCopyQueueCursor
_08027F90: .4byte gBackgroundsCopyQueueIndex
_08027F94: .4byte gBgSpritesCount
_08027F98: .4byte gVramGraphicsCopyCursor
_08027F9C: .4byte gVramGraphicsCopyQueueIndex
_08027FA0:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08027EE8
	adds r0, r5, #0
	bl sub_8028644
	adds r2, r5, #0
	adds r2, #0xde
	ldr r0, _08027FD0 @ =gMultiSioRecv
	ldrb r1, [r0, #2]
	ldrb r0, [r2]
	cmp r0, r1
	beq _08027FC4
	strb r1, [r2]
_08027FC4:
	bl sub_8028338
_08027FC8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08027FD0: .4byte gMultiSioRecv

	thumb_func_start sub_8027FD4
sub_8027FD4: @ 0x08027FD4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r7, r0, #0
	ldr r6, _08028098 @ =0x06010000
	ldr r1, _0802809C @ =gUnknown_080CEF2C
	mov r0, sp
	movs r2, #0x24
	bl memcpy
	ldr r0, _080280A0 @ =gLoadedSaveGame
	ldr r1, _080280A4 @ =0x00000366
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r1, r7, #0
	adds r1, #0x8c
	str r6, [r1]
	lsls r4, r0, #1
	adds r4, r4, r0
	lsls r4, r4, #1
	mov r2, sp
	adds r0, r2, r4
	ldrh r0, [r0]
	movs r2, #0
	mov sl, r2
	movs r5, #0
	strh r0, [r1, #0xc]
	mov r0, sp
	adds r0, #2
	adds r0, r0, r4
	ldrh r0, [r0]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #0x78
	strh r0, [r1, #0x10]
	movs r0, #0x8c
	strh r0, [r1, #0x12]
	strh r5, [r1, #0x14]
	strh r5, [r1, #0xe]
	strh r5, [r1, #0x16]
	movs r0, #0x10
	mov sb, r0
	mov r2, sb
	strb r2, [r1, #0x1c]
	mov r0, sl
	strb r0, [r1, #0x1f]
	str r5, [r1, #8]
	movs r2, #1
	rsbs r2, r2, #0
	mov r8, r2
	str r2, [r1, #0x20]
	adds r0, r1, #0
	bl UpdateSpriteAnimation
	add r0, sp, #4
	adds r0, r0, r4
	ldrh r0, [r0]
	lsls r0, r0, #5
	adds r6, r0, r6
	adds r1, r7, #0
	adds r1, #0xb4
	str r6, [r1]
	ldr r0, _080280A8 @ =0x00000596
	strh r0, [r1, #0xc]
	movs r0, #0xf
	strb r0, [r1, #0x1a]
	subs r0, #0x10
	strb r0, [r1, #0x1b]
	movs r0, #0x70
	strh r0, [r1, #0x10]
	movs r0, #0x68
	strh r0, [r1, #0x12]
	strh r5, [r1, #0x14]
	strh r5, [r1, #0xe]
	strh r5, [r1, #0x16]
	mov r0, sb
	strb r0, [r1, #0x1c]
	mov r2, sl
	strb r2, [r1, #0x1f]
	str r5, [r1, #8]
	mov r0, r8
	str r0, [r1, #0x20]
	adds r0, r1, #0
	bl UpdateSpriteAnimation
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08028098: .4byte 0x06010000
_0802809C: .4byte gUnknown_080CEF2C
_080280A0: .4byte gLoadedSaveGame
_080280A4: .4byte 0x00000366
_080280A8: .4byte 0x00000596

	thumb_func_start sub_80280AC
sub_80280AC: @ 0x080280AC
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r1, _08028134 @ =gBgCntRegs
	movs r6, #0
	movs r4, #0
	ldr r0, _08028138 @ =0x00001E0F
	strh r0, [r1]
	ldr r0, _0802813C @ =0x00001C0A
	strh r0, [r1, #2]
	adds r2, r7, #0
	adds r2, #0xc
	ldr r0, _08028140 @ =0x0600C000
	str r0, [r2, #4]
	strh r4, [r2, #0xa]
	ldr r0, _08028144 @ =0x0600F000
	str r0, [r2, #0xc]
	strh r4, [r2, #0x18]
	strh r4, [r2, #0x1a]
	ldr r0, _08028148 @ =0x00000189
	strh r0, [r2, #0x1c]
	strh r4, [r2, #0x1e]
	strh r4, [r2, #0x20]
	strh r4, [r2, #0x22]
	strh r4, [r2, #0x24]
	movs r5, #0x20
	strh r5, [r2, #0x26]
	strh r5, [r2, #0x28]
	adds r0, r7, #0
	adds r0, #0x36
	strb r6, [r0]
	strh r4, [r2, #0x2e]
	adds r0, r2, #0
	bl DrawBackground
	adds r2, r7, #0
	adds r2, #0x4c
	ldr r0, _0802814C @ =0x06008000
	str r0, [r2, #4]
	strh r4, [r2, #0xa]
	ldr r0, _08028150 @ =0x0600E000
	str r0, [r2, #0xc]
	strh r4, [r2, #0x18]
	strh r4, [r2, #0x1a]
	ldr r1, _08028154 @ =gLoadedSaveGame
	ldr r0, _08028158 @ =0x00000366
	adds r1, r1, r0
	ldr r3, _0802815C @ =0x00000177
	adds r0, r3, #0
	ldrb r1, [r1]
	adds r0, r0, r1
	strh r0, [r2, #0x1c]
	strh r4, [r2, #0x1e]
	strh r4, [r2, #0x20]
	strh r4, [r2, #0x22]
	strh r4, [r2, #0x24]
	strh r5, [r2, #0x26]
	strh r5, [r2, #0x28]
	adds r0, r7, #0
	adds r0, #0x76
	strb r6, [r0]
	movs r0, #0x11
	strh r0, [r2, #0x2e]
	adds r0, r2, #0
	bl DrawBackground
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08028134: .4byte gBgCntRegs
_08028138: .4byte 0x00001E0F
_0802813C: .4byte 0x00001C0A
_08028140: .4byte 0x0600C000
_08028144: .4byte 0x0600F000
_08028148: .4byte 0x00000189
_0802814C: .4byte 0x06008000
_08028150: .4byte 0x0600E000
_08028154: .4byte gLoadedSaveGame
_08028158: .4byte 0x00000366
_0802815C: .4byte 0x00000177

	thumb_func_start sub_8028160
sub_8028160: @ 0x08028160
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	ldr r0, _080282DC @ =0x06010000
	str r0, [sp, #4]
	ldr r2, _080282E0 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080282E4 @ =gBgCntRegs
	movs r5, #0
	movs r4, #0
	ldr r0, _080282E8 @ =0x00001E0F
	strh r0, [r1]
	ldr r0, _080282EC @ =0x00001C0A
	strh r0, [r1, #2]
	ldr r1, _080282F0 @ =gBgScrollRegs
	strh r4, [r1]
	strh r4, [r1, #2]
	ldr r0, _080282F4 @ =0x0000FFE0
	strh r0, [r1, #4]
	adds r0, #0x10
	strh r0, [r1, #6]
	str r4, [sp]
	ldr r1, _080282F8 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _080282FC @ =0x06009FE0
	str r0, [r1, #4]
	ldr r0, _08028300 @ =0x85000008
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, _08028304 @ =gBgSprites_Unknown1
	movs r0, #0xff
	strb r0, [r1, #1]
	ldr r1, _08028308 @ =gBgSprites_Unknown2
	strb r5, [r1, #4]
	strb r5, [r1, #5]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #6]
	movs r0, #0x20
	strb r0, [r1, #7]
	adds r2, r7, #0
	adds r2, #0xc
	ldr r0, _0802830C @ =0x0600C000
	str r0, [r2, #4]
	strh r4, [r2, #0xa]
	ldr r0, _08028310 @ =0x0600F000
	str r0, [r2, #0xc]
	strh r4, [r2, #0x18]
	strh r4, [r2, #0x1a]
	movs r0, #0xc6
	lsls r0, r0, #1
	strh r0, [r2, #0x1c]
	strh r4, [r2, #0x1e]
	strh r4, [r2, #0x20]
	strh r4, [r2, #0x22]
	strh r4, [r2, #0x24]
	movs r0, #0x1e
	strh r0, [r2, #0x26]
	movs r0, #0x14
	strh r0, [r2, #0x28]
	adds r0, r7, #0
	adds r0, #0x36
	strb r5, [r0]
	strh r4, [r2, #0x2e]
	adds r0, r2, #0
	bl DrawBackground
	adds r2, r7, #0
	adds r2, #0x4c
	ldr r0, _08028314 @ =0x06008000
	str r0, [r2, #4]
	strh r4, [r2, #0xa]
	ldr r0, _08028318 @ =0x0600E000
	str r0, [r2, #0xc]
	strh r4, [r2, #0x18]
	strh r4, [r2, #0x1a]
	ldr r1, _0802831C @ =gLoadedSaveGame
	ldr r3, _08028320 @ =0x00000366
	adds r1, r1, r3
	ldr r3, _08028324 @ =0x0000018D
	adds r0, r3, #0
	ldrb r1, [r1]
	adds r0, r0, r1
	strh r0, [r2, #0x1c]
	strh r4, [r2, #0x1e]
	strh r4, [r2, #0x20]
	strh r4, [r2, #0x22]
	strh r4, [r2, #0x24]
	movs r0, #0xe
	strh r0, [r2, #0x26]
	movs r0, #3
	strh r0, [r2, #0x28]
	adds r0, r7, #0
	adds r0, #0x76
	strb r5, [r0]
	movs r0, #1
	mov sl, r0
	movs r0, #1
	strh r0, [r2, #0x2e]
	adds r0, r2, #0
	bl DrawBackground
	ldr r1, _08028328 @ =gWinRegs
	ldr r0, _0802832C @ =0x0000B8D0
	strh r0, [r1]
	ldr r0, _08028330 @ =0x00000898
	strh r0, [r1, #4]
	strh r4, [r1, #8]
	movs r0, #0x13
	strh r0, [r1, #0xa]
	adds r1, r7, #0
	adds r1, #0x8c
	ldr r3, [sp, #4]
	str r3, [r1]
	ldr r0, _08028334 @ =0x000005AD
	mov sb, r0
	mov r3, sb
	strh r3, [r1, #0xc]
	strb r5, [r1, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	movs r0, #0x50
	strh r0, [r1, #0x10]
	movs r0, #0x6c
	strh r0, [r1, #0x12]
	strh r4, [r1, #0x14]
	strh r4, [r1, #0xe]
	strh r4, [r1, #0x16]
	movs r0, #0x10
	mov r8, r0
	mov r3, r8
	strb r3, [r1, #0x1c]
	strb r5, [r1, #0x1f]
	str r4, [r1, #8]
	movs r6, #1
	rsbs r6, r6, #0
	str r6, [r1, #0x20]
	adds r0, r1, #0
	bl UpdateSpriteAnimation
	movs r0, #0xc0
	lsls r0, r0, #3
	ldr r1, [sp, #4]
	adds r1, r1, r0
	str r1, [sp, #4]
	adds r1, r7, #0
	adds r1, #0xb4
	ldr r3, [sp, #4]
	str r3, [r1]
	mov r0, sb
	strh r0, [r1, #0xc]
	mov r3, sl
	strb r3, [r1, #0x1a]
	adds r0, r6, #0
	strb r0, [r1, #0x1b]
	movs r0, #0x70
	strh r0, [r1, #0x10]
	movs r0, #0x58
	strh r0, [r1, #0x12]
	strh r4, [r1, #0x14]
	strh r4, [r1, #0xe]
	strh r4, [r1, #0x16]
	mov r0, r8
	strb r0, [r1, #0x1c]
	strb r5, [r1, #0x1f]
	str r4, [r1, #8]
	str r6, [r1, #0x20]
	adds r0, r1, #0
	bl UpdateSpriteAnimation
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080282DC: .4byte 0x06010000
_080282E0: .4byte gDispCnt
_080282E4: .4byte gBgCntRegs
_080282E8: .4byte 0x00001E0F
_080282EC: .4byte 0x00001C0A
_080282F0: .4byte gBgScrollRegs
_080282F4: .4byte 0x0000FFE0
_080282F8: .4byte 0x040000D4
_080282FC: .4byte 0x06009FE0
_08028300: .4byte 0x85000008
_08028304: .4byte gBgSprites_Unknown1
_08028308: .4byte gBgSprites_Unknown2
_0802830C: .4byte 0x0600C000
_08028310: .4byte 0x0600F000
_08028314: .4byte 0x06008000
_08028318: .4byte 0x0600E000
_0802831C: .4byte gLoadedSaveGame
_08028320: .4byte 0x00000366
_08028324: .4byte 0x0000018D
_08028328: .4byte gWinRegs
_0802832C: .4byte 0x0000B8D0
_08028330: .4byte 0x00000898
_08028334: .4byte 0x000005AD

	thumb_func_start sub_8028338
sub_8028338: @ 0x08028338
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _080283B4 @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	ldr r0, _080283B8 @ =0x030000F0
	adds r4, r6, r0
	ldrh r0, [r4]
	adds r0, #1
	ldr r5, _080283BC @ =0x000003FF
	ands r0, r5
	strh r0, [r4]
	ldrh r0, [r4]
	lsls r0, r0, #3
	ands r0, r5
	ldr r1, _080283C0 @ =0x0300008C
	adds r7, r6, r1
	ldr r1, _080283C4 @ =gSineTable
	mov r8, r1
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1a
	adds r0, #8
	asrs r0, r0, #1
	adds r0, #0x67
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	ldrh r0, [r4]
	lsls r0, r0, #3
	adds r0, #0x20
	ands r0, r5
	ldr r1, _080283C8 @ =0x030000B4
	adds r7, r6, r1
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1a
	adds r0, #8
	asrs r0, r0, #1
	adds r0, #0x5d
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080283B4: .4byte gCurTask
_080283B8: .4byte 0x030000F0
_080283BC: .4byte 0x000003FF
_080283C0: .4byte 0x0300008C
_080283C4: .4byte gSineTable
_080283C8: .4byte 0x030000B4

	thumb_func_start sub_80283CC
sub_80283CC: @ 0x080283CC
	push {r4, r5, lr}
	ldr r5, _08028408 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08028400
	ldr r0, _0802840C @ =gMultiBootParam
	ldr r2, _08028410 @ =0x030000E0
	adds r1, r4, r2
	ldr r1, [r1]
	str r1, [r0, #0x28]
	adds r2, r0, #0
	adds r2, #0x4b
	movs r1, #0
	strb r1, [r2]
	bl MultiBootInit
	ldr r1, [r5]
	ldr r0, _08028414 @ =sub_8027B34
	str r0, [r1, #8]
_08028400:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08028408: .4byte gCurTask
_0802840C: .4byte gMultiBootParam
_08028410: .4byte 0x030000E0
_08028414: .4byte sub_8027B34

	thumb_func_start sub_8028418
sub_8028418: @ 0x08028418
	push {r4, lr}
	ldr r4, _08028444 @ =gCurTask
	ldr r0, [r4]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0802843E
	movs r0, #1
	movs r1, #4
	bl LaunchChaoMenu
	ldr r0, [r4]
	bl TaskDestroy
_0802843E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08028444: .4byte gCurTask

	thumb_func_start sub_8028448
sub_8028448: @ 0x08028448
	push {r4, lr}
	ldr r4, _08028470 @ =gCurTask
	ldr r0, [r4]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	bl sub_80284E8
	ldr r1, [r4]
	ldr r0, _08028474 @ =sub_8027E70
	str r0, [r1, #8]
	bl MultiSioStart
	bl sub_8028338
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08028470: .4byte gCurTask
_08028474: .4byte sub_8027E70

	thumb_func_start sub_8028478
sub_8028478: @ 0x08028478
	push {r4, lr}
	ldr r4, _0802849C @ =gCurTask
	ldr r0, [r4]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	bl sub_80284E8
	ldr r1, [r4]
	ldr r0, _080284A0 @ =sub_80284A4
	str r0, [r1, #8]
	bl sub_8028338
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802849C: .4byte gCurTask
_080284A0: .4byte sub_80284A4

	thumb_func_start sub_80284A4
sub_80284A4: @ 0x080284A4
	push {lr}
	ldr r0, _080284D8 @ =gMultiSioStatusFlags
	ldr r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080284CA
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	beq _080284C2
	ldr r1, _080284DC @ =gMultiSioSend
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
_080284C2:
	ldr r0, _080284E0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080284E4 @ =sub_8027E70
	str r0, [r1, #8]
_080284CA:
	bl sub_8027E70
	bl sub_8028338
	pop {r0}
	bx r0
	.align 2, 0
_080284D8: .4byte gMultiSioStatusFlags
_080284DC: .4byte gMultiSioSend
_080284E0: .4byte gCurTask
_080284E4: .4byte sub_8027E70

	thumb_func_start sub_80284E8
sub_80284E8: @ 0x080284E8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r2, _08028520 @ =0x04000208
	movs r5, #0
	strh r5, [r2]
	ldr r1, _08028524 @ =gIntrTable
	ldr r0, _08028528 @ =gMultiSioIntrFuncBuf
	str r0, [r1]
	movs r0, #1
	strh r0, [r2]
	ldr r6, _0802852C @ =gMultiSioStatusFlags
	ldr r0, [r6]
	movs r1, #0xf0
	lsls r1, r1, #4
	ands r0, r1
	lsrs r0, r0, #8
	bl MultiSioInit
	adds r1, r4, #0
	adds r1, #0xdd
	movs r0, #0
	strb r5, [r1]
	adds r4, #0xdf
	strb r5, [r4]
	str r0, [r6]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08028520: .4byte 0x04000208
_08028524: .4byte gIntrTable
_08028528: .4byte gMultiSioIntrFuncBuf
_0802852C: .4byte gMultiSioStatusFlags

	thumb_func_start sub_8028530
sub_8028530: @ 0x08028530
	push {lr}
	ldr r0, _08028550 @ =gMultiBootParam
	bl MultiBootMain
	cmp r0, #0x50
	beq _08028548
	cmp r0, #0x60
	beq _08028548
	cmp r0, #0x70
	beq _08028548
	cmp r0, #0x71
	bne _08028554
_08028548:
	bl sub_802613C
	movs r0, #1
	b _08028556
	.align 2, 0
_08028550: .4byte gMultiBootParam
_08028554:
	movs r0, #0
_08028556:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_802855C
sub_802855C: @ 0x0802855C
	push {r4, r5, lr}
	movs r2, #1
	movs r1, #1
	ldr r4, _0802859C @ =gMultiBootParam
	ldrb r5, [r4, #0x1d]
	movs r3, #1
_08028568:
	adds r0, r5, #0
	asrs r0, r1
	ands r0, r3
	cmp r0, #0
	beq _08028586
	ldrb r0, [r4, #0x1e]
	asrs r0, r1
	ands r0, r3
	cmp r0, #0
	beq _08028586
	lsls r0, r2, #0x18
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r0, r0, r2
	lsrs r2, r0, #0x18
_08028586:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _08028568
	lsls r0, r2, #0x18
	asrs r0, r0, #0x18
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0802859C: .4byte gMultiBootParam

	thumb_func_start sub_80285A0
sub_80285A0: @ 0x080285A0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _080285DC @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	ldr r0, _080285E0 @ =0x0300008C
	adds r6, r5, r0
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	ldr r0, _080285E4 @ =0x030000B4
	adds r6, r5, r0
	ldr r0, _080285E8 @ =0x00000596
	strh r0, [r6, #0xc]
	adds r4, #0xd
	strb r4, [r6, #0x1a]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080285DC: .4byte gCurTask
_080285E0: .4byte 0x0300008C
_080285E4: .4byte 0x030000B4
_080285E8: .4byte 0x00000596

	thumb_func_start sub_80285EC
sub_80285EC: @ 0x080285EC
	push {r4, lr}
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	adds r4, r2, #0
	adds r1, r2, #0
	adds r1, #8
	movs r3, #1
	adds r0, r3, #0
	lsls r0, r1
	ldr r1, _08028628 @ =gMultiSioStatusFlags
	ldr r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08028638
	adds r0, r3, #0
	lsls r0, r2
	ands r0, r1
	cmp r0, #0
	bne _08028630
	ldr r0, _0802862C @ =gUnknown_03001060
	adds r0, r2, r0
	ldrb r1, [r0]
	adds r2, r1, #1
	strb r2, [r0]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0xb4
	bls _08028638
	movs r0, #0
	b _0802863A
	.align 2, 0
_08028628: .4byte gMultiSioStatusFlags
_0802862C: .4byte gUnknown_03001060
_08028630:
	ldr r0, _08028640 @ =gUnknown_03001060
	adds r0, r4, r0
	movs r1, #0
	strb r1, [r0]
_08028638:
	movs r0, #1
_0802863A:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08028640: .4byte gUnknown_03001060

	thumb_func_start sub_8028644
sub_8028644: @ 0x08028644
	push {lr}
	movs r1, #0x90
	adds r0, #0xe8
	ldr r0, [r0]
	muls r0, r1, r0
	movs r1, #0x90
	lsls r1, r1, #9
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x90
	bls _08028660
	movs r3, #0x90
_08028660:
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r0, #0
	strh r0, [r1]
	ldr r2, _08028680 @ =gWinRegs
	ldr r0, _08028684 @ =0x0000B8D0
	strh r0, [r2]
	movs r0, #0x98
	subs r0, r0, r3
	movs r3, #0x80
	lsls r3, r3, #4
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #4]
	pop {r0}
	bx r0
	.align 2, 0
_08028680: .4byte gWinRegs
_08028684: .4byte 0x0000B8D0

	thumb_func_start sub_8028688
sub_8028688: @ 0x08028688
	push {r4, r5, lr}
	sub sp, #0xc
	movs r5, #0
	str r5, [sp]
	ldr r1, _080286EC @ =gUnknown_03000970
	ldr r2, _080286F0 @ =0x05000004
	mov r0, sp
	bl CpuSet
	str r5, [sp, #4]
	add r0, sp, #4
	ldr r4, _080286F4 @ =gStageData
	ldr r2, _080286F8 @ =0x05000032
	adds r1, r4, #0
	bl CpuSet
	movs r0, #7
	strb r0, [r4, #3]
	strb r5, [r4, #1]
	ldr r0, _080286FC @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	strb r0, [r4, #6]
	str r5, [sp, #8]
	add r0, sp, #8
	ldr r4, _08028700 @ =gUnknown_03001060
	ldr r2, _08028704 @ =0x05000016
	adds r1, r4, #0
	bl CpuSet
	movs r1, #0
	adds r2, r4, #0
	adds r2, #0xc
	adds r4, #0x4c
_080286CE:
	lsls r0, r1, #2
	adds r0, r0, r2
	str r1, [r0]
	adds r0, r1, r4
	strb r1, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _080286CE
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080286EC: .4byte gUnknown_03000970
_080286F0: .4byte 0x05000004
_080286F4: .4byte gStageData
_080286F8: .4byte 0x05000032
_080286FC: .4byte 0x04000128
_08028700: .4byte gUnknown_03001060
_08028704: .4byte 0x05000016

	thumb_func_start sub_8028708
sub_8028708: @ 0x08028708
	push {lr}
	ldr r1, _08028748 @ =gTilemapsRef
	ldr r0, _0802874C @ =gUnknown_080D1C0C
	str r0, [r1]
	ldr r1, _08028750 @ =gRefSpriteTables
	ldr r0, _08028754 @ =gSpriteTables
	str r0, [r1]
	ldr r1, _08028758 @ =gMultiSioEnabled
	movs r0, #1
	strb r0, [r1]
	ldr r2, _0802875C @ =gFlags
	ldr r0, [r2]
	ldr r1, _08028760 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2]
	bl m4aSoundVSyncOn
	bl sub_8028688
	ldr r1, _08028764 @ =gStageData
	ldr r0, _08028768 @ =gLoadedSaveGame
	ldr r2, _0802876C @ =0x00000366
	adds r0, r0, r2
	ldrb r0, [r0]
	rsbs r0, r0, #0
	lsrs r0, r0, #0x1f
	strb r0, [r1]
	bl sub_80287B8
	pop {r0}
	bx r0
	.align 2, 0
_08028748: .4byte gTilemapsRef
_0802874C: .4byte gUnknown_080D1C0C
_08028750: .4byte gRefSpriteTables
_08028754: .4byte gSpriteTables
_08028758: .4byte gMultiSioEnabled
_0802875C: .4byte gFlags
_08028760: .4byte 0xFFFFBFFF
_08028764: .4byte gStageData
_08028768: .4byte gLoadedSaveGame
_0802876C: .4byte 0x00000366

	thumb_func_start sub_8028770
sub_8028770: @ 0x08028770
	push {lr}
	ldr r1, _0802879C @ =gMultiSioEnabled
	movs r0, #1
	strb r0, [r1]
	ldr r2, _080287A0 @ =gFlags
	ldr r0, [r2]
	ldr r1, _080287A4 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2]
	ldr r1, _080287A8 @ =gTilemapsRef
	ldr r0, _080287AC @ =gUnknown_02035000
	ldr r0, [r0]
	str r0, [r1]
	ldr r1, _080287B0 @ =gRefSpriteTables
	ldr r0, _080287B4 @ =0x02022000
	str r0, [r1]
	bl sub_8025D58
	bl sub_80287B8
	pop {r0}
	bx r0
	.align 2, 0
_0802879C: .4byte gMultiSioEnabled
_080287A0: .4byte gFlags
_080287A4: .4byte 0xFFFFBFFF
_080287A8: .4byte gTilemapsRef
_080287AC: .4byte gUnknown_02035000
_080287B0: .4byte gRefSpriteTables
_080287B4: .4byte 0x02022000

	thumb_func_start sub_80287B8
sub_80287B8: @ 0x080287B8
	push {lr}
	ldr r1, _080287C8 @ =gUnknown_03001060
	movs r0, #0
	strb r0, [r1, #7]
	bl sub_80287CC
	pop {r0}
	bx r0
	.align 2, 0
_080287C8: .4byte gUnknown_03001060

	thumb_func_start sub_80287CC
sub_80287CC: @ 0x080287CC
	push {r4, lr}
	sub sp, #4
	ldr r0, _08028830 @ =Task_80288F0
	ldr r1, _08028834 @ =0x00000494
	movs r2, #0x80
	lsls r2, r2, #5
	movs r4, #0
	str r4, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
	ldr r3, _08028838 @ =0x03000488
	adds r2, r1, r3
	movs r3, #0
	strh r4, [r2]
	ldr r4, _0802883C @ =0x0300048A
	adds r2, r1, r4
	strb r3, [r2]
	adds r4, #1
	adds r2, r1, r4
	strb r3, [r2]
	adds r4, #1
	adds r2, r1, r4
	strb r3, [r2]
	adds r4, #1
	adds r2, r1, r4
	strb r3, [r2]
	ldr r2, _08028840 @ =0x03000492
	adds r1, r1, r2
	strb r3, [r1]
	bl sub_8028DEC
	bl m4aMPlayAllStop
	ldr r0, _08028844 @ =0x00000321
	bl m4aSongNumStart
	ldr r2, _08028848 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0802884C @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08028830: .4byte Task_80288F0
_08028834: .4byte 0x00000494
_08028838: .4byte 0x03000488
_0802883C: .4byte 0x0300048A
_08028840: .4byte 0x03000492
_08028844: .4byte 0x00000321
_08028848: .4byte gDispCnt
_0802884C: .4byte 0x0000FEFF

	thumb_func_start sub_8028850
sub_8028850: @ 0x08028850
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _080288C8 @ =Task_80288F0
	ldr r1, _080288CC @ =0x00000494
	movs r2, #0x80
	lsls r2, r2, #5
	movs r6, #0
	str r6, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r5, r4, r5
	ldr r1, _080288D0 @ =0x03000488
	adds r0, r4, r1
	movs r2, #0
	strh r6, [r0]
	ldr r0, _080288D4 @ =0x0300048A
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
	ldr r1, _080288D8 @ =0x0300048B
	adds r0, r4, r1
	strb r2, [r0]
	adds r1, #1
	adds r0, r4, r1
	strb r2, [r0]
	adds r1, #1
	adds r0, r4, r1
	strb r2, [r0]
	bl sub_80293BC
	ldr r1, _080288DC @ =0x03000492
	adds r4, r4, r1
	strb r0, [r4]
	adds r0, r5, #0
	bl sub_8028DEC
	bl m4aMPlayAllStop
	ldr r0, _080288E0 @ =0x00000323
	bl m4aSongNumStart
	movs r0, #0xa0
	lsls r0, r0, #0x13
	strh r6, [r0]
	ldr r0, _080288E4 @ =gBgPalette
	strh r6, [r0]
	ldr r2, _080288E8 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _080288EC @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080288C8: .4byte Task_80288F0
_080288CC: .4byte 0x00000494
_080288D0: .4byte 0x03000488
_080288D4: .4byte 0x0300048A
_080288D8: .4byte 0x0300048B
_080288DC: .4byte 0x03000492
_080288E0: .4byte 0x00000323
_080288E4: .4byte gBgPalette
_080288E8: .4byte gDispCnt
_080288EC: .4byte 0x0000FEFF

	thumb_func_start Task_80288F0
Task_80288F0: @ 0x080288F0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _08028924 @ =gCurTask
	ldr r0, [r0]
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r7
	mov sb, r0
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _0802891E
	bl sub_8029368
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	beq _08028928
_0802891E:
	bl sub_802613C
	b _08028A4A
	.align 2, 0
_08028924: .4byte gCurTask
_08028928:
	ldr r0, _08028A58 @ =gBldRegs
	strh r5, [r0]
	strh r5, [r0, #4]
	ldr r1, _08028A5C @ =gDispCnt
	movs r2, #0xc2
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r3, _08028A60 @ =gUnknown_03001060
	ldr r0, _08028A64 @ =gMultiSioStatusFlags
	ldr r2, [r0]
	movs r0, #0xf0
	lsls r0, r0, #4
	ands r2, r0
	lsrs r2, r2, #8
	ldr r0, _08028A68 @ =0x04000128
	ldr r1, [r0]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	movs r0, #1
	lsls r0, r1
	orrs r2, r0
	strb r2, [r3, #7]
	ldr r4, _08028A6C @ =gMultiSioSend
	ldr r0, _08028A70 @ =0x00006001
	strh r0, [r4]
	ldrb r0, [r3, #7]
	strb r0, [r4, #2]
	ldr r6, _08028A74 @ =gStageData
	ldrb r0, [r6]
	strb r0, [r4, #3]
	ldr r1, _08028A78 @ =0x0300048C
	adds r0, r7, r1
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r2, _08028A7C @ =0x0300048B
	adds r1, r7, r2
	ldrb r1, [r1]
	orrs r0, r1
	strb r0, [r4, #5]
	movs r0, #0x8e
	adds r0, r0, r6
	mov r8, r0
	ldrb r0, [r0]
	strb r0, [r4, #7]
	ldrb r1, [r3, #7]
	subs r2, #3
	adds r0, r7, r2
	movs r3, #0
	ldrsh r2, [r0, r3]
	movs r0, #0
	bl sub_8029150
	movs r0, #0xa0
	lsls r0, r0, #0x13
	strh r5, [r0]
	ldr r4, _08028A80 @ =gMultiSioRecv
	ldrb r0, [r6, #6]
	cmp r0, #0
	beq _080289C0
	ldrb r0, [r4, #7]
	mov r1, r8
	strb r0, [r1]
	ldrb r2, [r4, #3]
	ldrb r0, [r6]
	adds r1, r2, #0
	cmp r0, r1
	beq _080289C0
	strb r2, [r6]
	ldr r2, _08028A84 @ =0x03000460
	adds r0, r7, r2
	rsbs r1, r1, #0
	lsrs r1, r1, #0x1f
	strb r1, [r0, #0x1a]
	bl UpdateSpriteAnimation
_080289C0:
	ldrh r1, [r4]
	ldr r0, _08028A70 @ =0x00006001
	cmp r1, r0
	beq _080289D0
	ldr r0, _08028A74 @ =gStageData
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _08028A4A
_080289D0:
	movs r0, #0x91
	lsls r0, r0, #3
	add r0, sb
	ldrh r1, [r0]
	adds r1, #5
	strh r1, [r0]
	lsls r1, r1, #0x10
	movs r0, #0xc3
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _08028A4A
	ldr r0, _08028A74 @ =gStageData
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _08028A26
	ldr r2, _08028A88 @ =gPseudoRandom
	ldr r0, [r2]
	ldr r6, _08028A8C @ =0x00196225
	muls r0, r6, r0
	ldr r5, _08028A90 @ =0x3C6EF35F
	adds r4, r0, r5
	str r4, [r2]
	str r4, [sp]
	ldr r0, [sp]
	movs r1, #0xf
	ands r0, r1
	lsls r3, r0, #0x10
	cmp r3, #0
	beq _08028A22
	adds r7, r2, #0
	adds r1, r4, #0
_08028A0E:
	adds r0, r1, #0
	muls r0, r6, r0
	adds r1, r0, r5
	str r1, [sp]
	ldr r0, _08028A94 @ =0xFFFF0000
	adds r3, r3, r0
	asrs r0, r3, #0x10
	cmp r0, #0
	bne _08028A0E
	str r1, [r7]
_08028A22:
	ldr r0, [sp]
	str r0, [r2]
_08028A26:
	bl sub_80293BC
	ldr r1, _08028A98 @ =0x00000492
	add r1, sb
	strb r0, [r1]
	mov r0, sb
	bl sub_80292C8
	movs r1, #0x91
	lsls r1, r1, #3
	add r1, sb
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r1]
	ldr r0, _08028A9C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08028AA0 @ =Task_8028AA4
	str r0, [r1, #8]
_08028A4A:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08028A58: .4byte gBldRegs
_08028A5C: .4byte gDispCnt
_08028A60: .4byte gUnknown_03001060
_08028A64: .4byte gMultiSioStatusFlags
_08028A68: .4byte 0x04000128
_08028A6C: .4byte gMultiSioSend
_08028A70: .4byte 0x00006001
_08028A74: .4byte gStageData
_08028A78: .4byte 0x0300048C
_08028A7C: .4byte 0x0300048B
_08028A80: .4byte gMultiSioRecv
_08028A84: .4byte 0x03000460
_08028A88: .4byte gPseudoRandom
_08028A8C: .4byte 0x00196225
_08028A90: .4byte 0x3C6EF35F
_08028A94: .4byte 0xFFFF0000
_08028A98: .4byte 0x00000492
_08028A9C: .4byte gCurTask
_08028AA0: .4byte Task_8028AA4

	thumb_func_start Task_8028AA4
Task_8028AA4: @ 0x08028AA4
	push {r4, r5, r6, r7, lr}
	ldr r0, _08028ACC @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _08028AC6
	bl sub_8029368
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08028AD0
_08028AC6:
	bl sub_802613C
	b _08028C80
	.align 2, 0
_08028ACC: .4byte gCurTask
_08028AD0:
	ldr r2, _08028BAC @ =gUnknown_03001060
	ldr r0, _08028BB0 @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #0xf0
	lsls r1, r1, #4
	ands r0, r1
	lsrs r0, r0, #8
	mov ip, r0
	ldr r0, _08028BB4 @ =0x04000128
	ldr r1, [r0]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	movs r0, #1
	lsls r0, r1
	mov r1, ip
	orrs r0, r1
	strb r0, [r2, #7]
	ldr r3, _08028BB8 @ =gMultiSioSend
	ldr r0, _08028BBC @ =0x00006001
	strh r0, [r3]
	ldrb r0, [r2, #7]
	strb r0, [r3, #2]
	ldr r2, _08028BC0 @ =0x0300048C
	adds r7, r4, r2
	ldrb r0, [r7]
	lsls r0, r0, #4
	ldr r1, _08028BC4 @ =0x0300048B
	adds r6, r4, r1
	ldrb r1, [r6]
	orrs r0, r1
	strb r0, [r3, #5]
	ldr r1, _08028BC8 @ =gStageData
	adds r0, r1, #0
	adds r0, #0x8e
	ldrb r0, [r0]
	strb r0, [r3, #7]
	ldrb r0, [r1, #6]
	cmp r0, #0
	bne _08028B70
	ldr r2, _08028BCC @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _08028BD0 @ =0x00196225
	muls r1, r0, r1
	ldr r3, _08028BD4 @ =0x3C6EF35F
	adds r1, r1, r3
	str r1, [r2]
	movs r2, #7
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r6]
	lsrs r3, r1, #3
	movs r0, #1
	ands r3, r0
	strb r3, [r7]
	lsrs r3, r1, #6
	ands r3, r2
	ldr r2, _08028BD8 @ =0x0300048D
	adds r0, r4, r2
	strb r3, [r0]
	lsrs r1, r1, #9
	movs r2, #3
	ands r1, r2
	ldr r3, _08028BDC @ =0x0300048E
	adds r0, r4, r3
	strb r1, [r0]
	adds r1, #1
	ands r1, r2
	adds r3, #1
	adds r0, r4, r3
	strb r1, [r0]
	adds r1, #1
	ands r1, r2
	adds r3, #1
	adds r0, r4, r3
	strb r1, [r0]
	adds r1, #1
	ands r1, r2
	ldr r2, _08028BE0 @ =0x03000491
	adds r0, r4, r2
	strb r1, [r0]
_08028B70:
	ldr r3, _08028BE4 @ =0x0300048A
	adds r2, r4, r3
	ldrb r0, [r2]
	cmp r0, #0
	bne _08028C58
	mov r0, ip
	cmp r0, #3
	beq _08028B88
	cmp r0, #7
	beq _08028B88
	cmp r0, #0xf
	bne _08028C44
_08028B88:
	movs r1, #0x8c
	lsls r1, r1, #3
	adds r0, r5, r1
	bl DisplaySprite
	ldr r0, _08028BC8 @ =gStageData
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _08028BEC
	ldr r0, _08028BE8 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08028C72
	bl sub_8029324
	b _08028C72
	.align 2, 0
_08028BAC: .4byte gUnknown_03001060
_08028BB0: .4byte gMultiSioStatusFlags
_08028BB4: .4byte 0x04000128
_08028BB8: .4byte gMultiSioSend
_08028BBC: .4byte 0x00006001
_08028BC0: .4byte 0x0300048C
_08028BC4: .4byte 0x0300048B
_08028BC8: .4byte gStageData
_08028BCC: .4byte gPseudoRandom
_08028BD0: .4byte 0x00196225
_08028BD4: .4byte 0x3C6EF35F
_08028BD8: .4byte 0x0300048D
_08028BDC: .4byte 0x0300048E
_08028BE0: .4byte 0x03000491
_08028BE4: .4byte 0x0300048A
_08028BE8: .4byte gPressedKeys
_08028BEC:
	ldr r3, _08028C34 @ =gMultiSioRecv
	ldrh r1, [r3]
	ldr r0, _08028C38 @ =0x00006002
	cmp r1, r0
	bne _08028C72
	ldrb r1, [r3, #6]
	ldr r2, _08028C3C @ =0x0000048C
	adds r0, r5, r2
	strb r1, [r0]
	ldrb r1, [r3, #5]
	subs r2, #1
	adds r0, r5, r2
	strb r1, [r0]
	ldrb r1, [r3, #4]
	adds r2, #2
	adds r0, r5, r2
	strb r1, [r0]
	ldrb r1, [r3, #8]
	adds r2, #1
	adds r0, r5, r2
	strb r1, [r0]
	ldrb r1, [r3, #9]
	adds r2, #1
	adds r0, r5, r2
	strb r1, [r0]
	ldrb r1, [r3, #0xa]
	adds r2, #1
	adds r0, r5, r2
	strb r1, [r0]
	ldrb r1, [r3, #0xb]
	ldr r3, _08028C40 @ =0x00000491
	adds r0, r5, r3
	strb r1, [r0]
	bl sub_8029324
	b _08028C72
	.align 2, 0
_08028C34: .4byte gMultiSioRecv
_08028C38: .4byte 0x00006002
_08028C3C: .4byte 0x0000048C
_08028C40: .4byte 0x00000491
_08028C44:
	ldr r2, _08028C50 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08028C54 @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
	b _08028C72
	.align 2, 0
_08028C50: .4byte gDispCnt
_08028C54: .4byte 0x0000FEFF
_08028C58:
	ldr r0, _08028C88 @ =0x03000488
	adds r1, r4, r0
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08028C72
	movs r0, #0
	strb r0, [r2]
	ldr r0, _08028C8C @ =0x00000321
	bl m4aSongNumStart
_08028C72:
	ldr r0, _08028C90 @ =gUnknown_03001060
	ldrb r1, [r0, #7]
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #1
	bl sub_8029150
_08028C80:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08028C88: .4byte 0x03000488
_08028C8C: .4byte 0x00000321
_08028C90: .4byte gUnknown_03001060

	thumb_func_start sub_8028C94
sub_8028C94: @ 0x08028C94
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08028CC4 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r4
	mov r8, r0
	movs r7, #0
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _08028CBE
	bl sub_8029368
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08028CC8
_08028CBE:
	bl sub_802613C
	b _08028DCC
	.align 2, 0
_08028CC4: .4byte gCurTask
_08028CC8:
	ldr r5, _08028D68 @ =gUnknown_03001060
	ldrb r1, [r5, #7]
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #1
	bl sub_8029150
	ldr r3, _08028D6C @ =gMultiSioSend
	ldr r1, _08028D70 @ =0x00006002
	strh r1, [r3]
	ldrb r0, [r5, #7]
	strb r0, [r3, #2]
	ldr r2, _08028D74 @ =0x0300048D
	adds r0, r4, r2
	ldrb r0, [r0]
	strb r0, [r3, #4]
	subs r2, #2
	adds r0, r4, r2
	ldrb r0, [r0]
	strb r0, [r3, #5]
	adds r2, #1
	adds r0, r4, r2
	ldrb r0, [r0]
	strb r0, [r3, #6]
	adds r2, #2
	adds r0, r4, r2
	ldrb r0, [r0]
	strb r0, [r3, #8]
	adds r2, #1
	adds r0, r4, r2
	ldrb r0, [r0]
	strb r0, [r3, #9]
	adds r2, #1
	adds r0, r4, r2
	ldrb r0, [r0]
	strb r0, [r3, #0xa]
	adds r2, #1
	adds r0, r4, r2
	ldrb r0, [r0]
	strb r0, [r3, #0xb]
	movs r2, #0
	ldrb r0, [r5, #7]
	mov ip, r0
	movs r6, #1
	adds r4, r5, #0
	ldr r5, _08028D78 @ =gMultiSioRecv
_08028D24:
	mov r0, ip
	asrs r0, r2
	ands r0, r6
	cmp r0, #0
	beq _08028D46
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r3, r0, r5
	ldrh r0, [r3]
	cmp r0, r1
	bne _08028D46
	adds r0, r6, #0
	lsls r0, r2
	orrs r7, r0
	lsls r0, r7, #0x18
	lsrs r7, r0, #0x18
_08028D46:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _08028D24
	movs r1, #0x91
	lsls r1, r1, #3
	add r1, r8
	ldrh r0, [r1]
	movs r2, #0
	ldrsh r3, [r1, r2]
	cmp r3, #0
	beq _08028D7C
	subs r0, #1
	strh r0, [r1]
	b _08028DCC
	.align 2, 0
_08028D68: .4byte gUnknown_03001060
_08028D6C: .4byte gMultiSioSend
_08028D70: .4byte 0x00006002
_08028D74: .4byte 0x0300048D
_08028D78: .4byte gMultiSioRecv
_08028D7C:
	ldrb r0, [r4, #7]
	cmp r0, r7
	bne _08028DCC
	ldr r0, _08028DD8 @ =0x0000048B
	add r0, r8
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x54
	strb r1, [r0]
	ldr r0, _08028DDC @ =0x0000048C
	add r0, r8
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x55
	strb r0, [r1]
	ldr r0, _08028DE0 @ =0x0000048D
	add r0, r8
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x56
	strb r1, [r0]
	ldr r1, _08028DE4 @ =gStageData
	adds r2, r1, #0
	adds r2, #0x8e
	movs r0, #0xff
	strb r0, [r2]
	adds r0, r1, #0
	adds r0, #0x8f
	strb r3, [r0]
	ldr r0, _08028DE8 @ =0x0000048E
	add r0, r8
	ldrb r2, [r1, #6]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1, #0xb]
	bl sub_800214C
	movs r0, #0
	bl sub_80022E8
_08028DCC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08028DD8: .4byte 0x0000048B
_08028DDC: .4byte 0x0000048C
_08028DE0: .4byte 0x0000048D
_08028DE4: .4byte gStageData
_08028DE8: .4byte 0x0000048E

	thumb_func_start sub_8028DEC
sub_8028DEC: @ 0x08028DEC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x4c
	mov sb, r0
	mov r6, sb
	adds r6, #0x40
	mov r0, sp
	adds r0, #0x28
	str r0, [sp, #0x3c]
	ldr r1, _080290E8 @ =gUnknown_080CEF50
	movs r2, #8
	bl memcpy
	ldr r1, _080290EC @ =gDispCnt
	movs r2, #0x82
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	movs r7, #0
	ldr r0, _080290F0 @ =0x00001E08
	ldr r3, _080290F4 @ =gBgCntRegs
	strh r0, [r3]
	ldr r0, _080290F8 @ =0x00005C0F
	strh r0, [r3, #6]
	str r7, [sp, #0x30]
	ldr r5, _080290FC @ =0x040000D4
	add r0, sp, #0x30
	str r0, [r5]
	movs r1, #0xc
	mov r8, r1
	movs r2, #3
	lsls r1, r2, #0xe
	ldr r2, _08029100 @ =0x060004C0
	adds r1, r1, r2
	str r1, [r5, #4]
	ldr r3, _08029104 @ =0x85000008
	str r3, [r5, #8]
	ldr r1, [r5, #8]
	movs r1, #0x26
	ldr r2, _08029108 @ =gBgSprites_Unknown1
	strb r1, [r2, #3]
	ldr r4, _0802910C @ =gBgSprites_Unknown2
	movs r3, #0
	strb r3, [r4, #0xc]
	strb r3, [r4, #0xd]
	movs r1, #0xff
	strb r1, [r4, #0xe]
	movs r1, #0x40
	strb r1, [r4, #0xf]
	str r7, [sp, #0x30]
	ldr r1, _08029110 @ =0x05000010
	mov sl, r1
	mov r1, sb
	mov r2, sl
	bl CpuSet
	ldr r0, _08029114 @ =0x0600C000
	mov r2, sb
	str r0, [r2, #4]
	ldr r0, _08029118 @ =0x0600E000
	str r0, [r2, #0xc]
	movs r3, #4
	strh r3, [r2, #0x1c]
	movs r0, #0x1e
	strh r0, [r2, #0x26]
	movs r0, #0x19
	strh r0, [r2, #0x28]
	movs r0, #3
	strh r0, [r2, #0x2e]
	mov r0, sb
	bl DrawBackground
	str r7, [sp, #0x34]
	add r0, sp, #0x34
	adds r1, r6, #0
	mov r2, sl
	bl CpuSet
	ldr r0, _0802911C @ =0x06008000
	str r0, [r6, #4]
	ldr r0, _08029120 @ =0x0600F000
	str r0, [r6, #0xc]
	ldr r0, _08029124 @ =gStageData
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, #5
	strh r0, [r6, #0x1c]
	movs r0, #0x12
	strh r0, [r6, #0x26]
	movs r1, #4
	strh r1, [r6, #0x28]
	strh r7, [r6, #0x2e]
	adds r0, r6, #0
	bl DrawBackground
	ldr r1, _08029128 @ =gBgScrollRegs
	ldr r0, _0802912C @ =0x0000FFD0
	strh r0, [r1]
	subs r0, #0x10
	strh r0, [r1, #2]
	str r7, [sp, #0x38]
	add r1, sp, #0x38
	str r1, [r5]
	ldr r2, _080290F4 @ =gBgCntRegs
	ldrh r0, [r2]
	mov r3, r8
	ands r3, r0
	lsls r3, r3, #0xc
	mov r8, r3
	ldr r0, _08029130 @ =0x06000480
	add r8, r0
	mov r0, r8
	str r0, [r5, #4]
	ldr r2, _08029104 @ =0x85000008
	str r2, [r5, #8]
	ldr r0, [r5, #8]
	movs r0, #0x24
	ldr r3, _08029108 @ =gBgSprites_Unknown1
	strb r0, [r3]
	movs r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #2]
	movs r0, #0x20
	strb r0, [r4, #3]
	ldr r2, _08029134 @ =0x06010000
	mov sl, r2
	movs r3, #0
_08028EF6:
	lsls r4, r3, #0x10
	asrs r4, r4, #0x10
	lsls r1, r4, #1
	adds r0, r1, r4
	lsls r0, r0, #4
	adds r0, #0x80
	mov r2, sb
	adds r7, r2, r0
	mov r0, sl
	str r0, [r7]
	movs r2, #0x80
	lsls r2, r2, #5
	mov r8, r2
	str r2, [r7, #8]
	add r1, sp
	adds r1, #0x28
	ldrh r0, [r1]
	movs r1, #0
	strh r0, [r7, #0xc]
	strb r1, [r7, #0x1a]
	movs r0, #0x78
	strh r0, [r7, #0x10]
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x14
	strh r0, [r7, #0x12]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r7, #0x14]
	strh r1, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	add r1, sp, #0x40
	strh r0, [r1]
	ldr r0, _08029138 @ =0x0000FFFF
	strh r0, [r7, #0x18]
	movs r2, #1
	rsbs r2, r2, #0
	add r0, sp, #0x44
	strb r2, [r0]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r6, #0x10
	strb r6, [r7, #0x1c]
	strb r3, [r7, #0x1f]
	adds r5, r2, #0
	str r5, [r7, #0x20]
	str r5, [r7, #0x28]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r4, #1
	lsls r4, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #4
	add sl, r1
	lsrs r3, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #3
	ble _08028EF6
	movs r0, #0
	str r0, [sp, #0x38]
	ldr r2, _0802913C @ =0x0500000A
	add r0, sp, #0x38
	mov r1, sp
	bl CpuSet
	mov r2, r8
	str r2, [sp, #8]
	mov r3, sl
	str r3, [sp]
	mov r1, sp
	ldrh r0, [r1, #0x18]
	add r2, sp, #0x40
	ldrh r2, [r2]
	orrs r0, r2
	strh r0, [r1, #0x18]
	ldrb r0, [r1, #0x1b]
	add r3, sp, #0x44
	ldrb r3, [r3]
	orrs r0, r3
	strb r0, [r1, #0x1b]
	mov r0, sp
	strb r6, [r0, #0x1c]
	str r5, [sp, #0x20]
	movs r7, #0xa0
	lsls r7, r7, #1
	add r7, sb
	ldr r2, _08029140 @ =0x0400000A
	adds r1, r7, #0
	bl CpuSet
	movs r7, #0xb4
	lsls r7, r7, #1
	add r7, sb
	ldr r0, [sp, #8]
	movs r1, #0xc0
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [sp, #8]
	movs r3, #1
_08028FC2:
	mov r0, sp
	adds r1, r7, #0
	ldr r2, _08029140 @ =0x0400000A
	str r3, [sp, #0x48]
	bl CpuSet
	ldr r3, [sp, #0x48]
	lsls r0, r3, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	adds r7, #0x28
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x14
	ble _08028FC2
	movs r7, #0xa0
	lsls r7, r7, #1
	add r7, sb
	movs r3, #0
	movs r2, #0xb3
	lsls r2, r2, #3
	mov r8, r2
_08028FF0:
	ldr r0, _08029144 @ =gUnknown_03000970
	lsls r6, r3, #0x10
	asrs r6, r6, #0x10
	lsls r5, r6, #2
	adds r0, r5, r0
	ldrb r4, [r0, #1]
	adds r0, r4, #0
	movs r1, #0xa
	str r3, [sp, #0x48]
	bl Div
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #1
	subs r4, r4, r1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r1, r8
	strh r1, [r7, #0xc]
	ldr r3, [sp, #0x48]
	strb r3, [r7, #0x1a]
	movs r1, #0x28
	strh r1, [r7, #0x10]
	adds r5, r5, r6
	lsls r5, r5, #3
	adds r5, #0x14
	strh r5, [r7, #0x12]
	adds r7, #0x28
	mov r2, r8
	strh r2, [r7, #0xc]
	adds r0, #0xb
	strb r0, [r7, #0x1a]
	movs r0, #0xaa
	strh r0, [r7, #0x10]
	strh r5, [r7, #0x12]
	adds r7, #0x28
	strh r2, [r7, #0xc]
	adds r4, #0xb
	strb r4, [r7, #0x1a]
	movs r0, #0xb4
	strh r0, [r7, #0x10]
	strh r5, [r7, #0x12]
	adds r7, #0x28
	strh r2, [r7, #0xc]
	movs r0, #0xa
	strb r0, [r7, #0x1a]
	movs r0, #0xc8
	strh r0, [r7, #0x10]
	strh r5, [r7, #0x12]
	adds r7, #0x28
	strh r2, [r7, #0xc]
	ldr r4, _08029124 @ =gStageData
	ldrb r0, [r4]
	lsls r2, r0, #1
	adds r2, r2, r0
	adds r2, #4
	ldr r0, _08029148 @ =0x00000492
	add r0, sb
	ldrb r1, [r0]
	lsls r0, r6, #1
	asrs r1, r0
	movs r0, #3
	ands r1, r0
	adds r2, r2, r1
	strb r2, [r7, #0x1a]
	movs r1, #0x50
	strh r1, [r7, #0x10]
	strh r5, [r7, #0x12]
	adds r6, #1
	lsls r6, r6, #0x10
	adds r7, #0x28
	lsrs r3, r6, #0x10
	asrs r6, r6, #0x10
	cmp r6, #3
	ble _08028FF0
	movs r3, #0xb4
	lsls r3, r3, #4
	add sl, r3
	movs r7, #0x8c
	lsls r7, r7, #3
	add r7, sb
	mov r0, sl
	str r0, [r7]
	ldr r0, _0802914C @ =0x00000599
	strh r0, [r7, #0xc]
	ldrb r0, [r4]
	rsbs r0, r0, #0
	lsrs r0, r0, #0x1f
	strb r0, [r7, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r7, #8]
	movs r0, #0x78
	strh r0, [r7, #0x10]
	strh r1, [r7, #0x12]
	movs r7, #0xa0
	lsls r7, r7, #1
	add r7, sb
	movs r3, #0
_080290BA:
	adds r0, r7, #0
	str r3, [sp, #0x48]
	bl UpdateSpriteAnimation
	ldr r3, [sp, #0x48]
	lsls r0, r3, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	adds r7, #0x28
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x14
	ble _080290BA
	add sp, #0x4c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080290E8: .4byte gUnknown_080CEF50
_080290EC: .4byte gDispCnt
_080290F0: .4byte 0x00001E08
_080290F4: .4byte gBgCntRegs
_080290F8: .4byte 0x00005C0F
_080290FC: .4byte 0x040000D4
_08029100: .4byte 0x060004C0
_08029104: .4byte 0x85000008
_08029108: .4byte gBgSprites_Unknown1
_0802910C: .4byte gBgSprites_Unknown2
_08029110: .4byte 0x05000010
_08029114: .4byte 0x0600C000
_08029118: .4byte 0x0600E000
_0802911C: .4byte 0x06008000
_08029120: .4byte 0x0600F000
_08029124: .4byte gStageData
_08029128: .4byte gBgScrollRegs
_0802912C: .4byte 0x0000FFD0
_08029130: .4byte 0x06000480
_08029134: .4byte 0x06010000
_08029138: .4byte 0x0000FFFF
_0802913C: .4byte 0x0500000A
_08029140: .4byte 0x0400000A
_08029144: .4byte gUnknown_03000970
_08029148: .4byte 0x00000492
_0802914C: .4byte 0x00000599

	thumb_func_start sub_8029150
sub_8029150: @ 0x08029150
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #4]
	lsls r2, r2, #0x10
	ldr r0, _080291AC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov r8, r1
	movs r5, #0
	lsrs r0, r2, #0x10
	mov sb, r0
	asrs r2, r2, #0x10
	mvns r2, r2
	rsbs r0, r2, #0
	orrs r0, r2
	lsrs r6, r0, #0x1f
	movs r1, #0
_0802918A:
	lsls r7, r1, #0x10
	cmp r6, #0
	beq _080291D8
	asrs r1, r7, #0x10
	movs r0, #0x32
	muls r1, r0, r1
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080291B0
	movs r2, #0
	b _080291B6
	.align 2, 0
_080291AC: .4byte gCurTask
_080291B0:
	cmp r0, #0xf0
	ble _080291B6
	movs r2, #0xf0
_080291B6:
	asrs r0, r7, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080291CE
	movs r1, #0xf0
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	b _080291D6
_080291CE:
	lsls r0, r2, #0x10
	ldr r1, _080291F8 @ =0xFF100000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
_080291D6:
	adds r5, r0, #0
_080291D8:
	ldr r0, _080291FC @ =gUnknown_03001060
	ldrb r1, [r0, #7]
	asrs r2, r7, #0x10
	asrs r1, r2
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	bne _08029200
	movs r1, #4
	subs r1, r1, r2
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x10
	b _08029202
	.align 2, 0
_080291F8: .4byte 0xFF100000
_080291FC: .4byte gUnknown_03001060
_08029200:
	movs r0, #0
_08029202:
	asrs r4, r7, #0x10
	lsls r1, r4, #2
	adds r1, r1, r4
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x18
	adds r4, #1
	lsls r2, r4, #2
	adds r2, r2, r4
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x18
	lsls r3, r5, #0x10
	lsrs r3, r3, #0x10
	str r0, [sp]
	movs r0, #3
	bl sa2__sub_80078D4
	lsls r4, r4, #0x10
	lsrs r1, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #3
	ble _0802918A
	mov r2, sl
	cmp r2, #0
	beq _080292B4
	movs r1, #0
_08029234:
	lsls r2, r1, #0x10
	asrs r4, r2, #0x10
	ldr r1, [sp, #4]
	asrs r1, r4
	movs r0, #1
	ands r1, r0
	adds r7, r2, #0
	cmp r1, #0
	beq _080292A6
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r0, #0x80
	mov r1, r8
	adds r5, r1, r0
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	movs r1, #0
	ldr r0, _080292C4 @ =0x0000048A
	add r0, r8
	ldrb r0, [r0]
	adds r0, #4
	cmp r1, r0
	bge _080292A6
	movs r0, #0xc8
	muls r0, r4, r0
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r0, r0, r2
	mov r2, r8
	adds r6, r2, r0
_0802927A:
	lsls r4, r1, #0x10
	asrs r4, r4, #0x10
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r5, r6, r0
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r1, r4, #0x10
	asrs r4, r4, #0x10
	ldr r0, _080292C4 @ =0x0000048A
	add r0, r8
	ldrb r0, [r0]
	adds r0, #4
	cmp r4, r0
	blt _0802927A
_080292A6:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r7, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08029234
_080292B4:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080292C4: .4byte 0x0000048A

	thumb_func_start sub_80292C8
sub_80292C8: @ 0x080292C8
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0
_080292CE:
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	movs r0, #0xc8
	muls r0, r4, r0
	adds r0, r0, r5
	movs r1, #0xf0
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #0xb3
	lsls r1, r1, #3
	strh r1, [r0, #0xc]
	ldr r1, _0802931C @ =gStageData
	ldrb r1, [r1]
	lsls r3, r1, #1
	adds r3, r3, r1
	adds r3, #4
	ldr r2, _08029320 @ =0x00000492
	adds r1, r5, r2
	ldrb r2, [r1]
	lsls r1, r4, #1
	asrs r2, r1
	movs r1, #3
	ands r2, r1
	adds r3, r3, r2
	strb r3, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	bl UpdateSpriteAnimation
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #3
	ble _080292CE
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802931C: .4byte gStageData
_08029320: .4byte 0x00000492

	thumb_func_start sub_8029324
sub_8029324: @ 0x08029324
	push {r4, r5, lr}
	ldr r4, _08029354 @ =gCurTask
	ldr r0, [r4]
	ldrh r2, [r0, #6]
	ldr r3, _08029358 @ =gDispCnt
	ldrh r0, [r3]
	movs r5, #0x80
	lsls r5, r5, #1
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r3]
	ldr r0, _0802935C @ =0x03000488
	adds r2, r2, r0
	movs r0, #0x78
	strh r0, [r2]
	ldr r0, _08029360 @ =0x0000032A
	bl m4aSongNumStart
	ldr r1, [r4]
	ldr r0, _08029364 @ =sub_8028C94
	str r0, [r1, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08029354: .4byte gCurTask
_08029358: .4byte gDispCnt
_0802935C: .4byte 0x03000488
_08029360: .4byte 0x0000032A
_08029364: .4byte sub_8028C94

	thumb_func_start sub_8029368
sub_8029368: @ 0x08029368
	push {r4, r5, lr}
	movs r2, #0
	ldr r0, _08029398 @ =gUnknown_03001060
	ldrb r4, [r0, #7]
	ldr r5, _0802939C @ =0x000060FF
_08029372:
	lsls r2, r2, #0x10
	asrs r3, r2, #0x10
	adds r1, r4, #0
	asrs r1, r3
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080293A4
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #3
	ldr r1, _080293A0 @ =gMultiSioRecv
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, r5
	bne _080293A4
	movs r0, #1
	b _080293B4
	.align 2, 0
_08029398: .4byte gUnknown_03001060
_0802939C: .4byte 0x000060FF
_080293A0: .4byte gMultiSioRecv
_080293A4:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r2, r1
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08029372
	movs r0, #0
_080293B4:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80293BC
sub_80293BC: @ 0x080293BC
	push {lr}
	ldr r0, _080293E4 @ =gStageData
	adds r1, r0, #0
	adds r1, #0x8e
	ldrb r0, [r1]
	movs r2, #0xaa
	cmp r0, #0xff
	beq _080293DC
	movs r2, #0x55
	adds r1, r0, #0
	lsls r1, r1, #1
	movs r0, #1
	lsls r0, r1
	subs r0, r2, r0
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_080293DC:
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0
_080293E4: .4byte gStageData

	thumb_func_start sub_80293E8
sub_80293E8: @ 0x080293E8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r7, r0, #0
	ldr r1, _0802944C @ =gStageData
	adds r0, r1, #0
	adds r0, #0xae
	ldrh r0, [r0]
	cmp r0, #0
	beq _08029466
	adds r1, #0x98
	mov r8, r1
	ldr r6, [r1]
	cmp r6, #0
	bne _0802945C
	ldr r5, [r7, #0x10]
	lsls r5, r5, #8
	asrs r5, r5, #0x10
	ldr r4, [r7, #0x14]
	lsls r4, r4, #8
	asrs r4, r4, #0x10
	movs r0, #0x81
	lsls r0, r0, #2
	bl m4aSongNumStart
	ldr r0, _08029450 @ =sub_8029474
	str r6, [sp]
	movs r1, #0x40
	ldr r2, _08029454 @ =0x00003010
	movs r3, #0
	bl TaskCreate
	mov r1, r8
	str r0, [r1]
	ldrh r0, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r1, r0, r2
	lsls r5, r5, #8
	str r5, [r1]
	lsls r4, r4, #8
	str r4, [r1, #4]
	str r7, [r1, #0x3c]
	ldr r1, _08029458 @ =0x03000014
	adds r0, r0, r1
	bl sub_80295C0
	b _08029466
	.align 2, 0
_0802944C: .4byte gStageData
_08029450: .4byte sub_8029474
_08029454: .4byte 0x00003010
_08029458: .4byte 0x03000014
_0802945C:
	ldrh r0, [r6, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	str r7, [r0, #0x3c]
_08029466:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8029474
sub_8029474: @ 0x08029474
	push {r4, lr}
	ldr r0, _080294A0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	ldr r4, [r2, #0x3c]
	ldr r3, [r4, #0x10]
	ldr r0, _080294A4 @ =0xFFFFFF00
	ands r3, r0
	str r3, [r2, #8]
	ldr r0, [r4, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080294A8
	movs r0, #0xc0
	lsls r0, r0, #5
	adds r3, r3, r0
	b _080294AC
	.align 2, 0
_080294A0: .4byte gCurTask
_080294A4: .4byte 0xFFFFFF00
_080294A8:
	ldr r1, _080294D4 @ =0xFFFFE800
	adds r3, r3, r1
_080294AC:
	str r3, [r2, #8]
	ldr r0, [r4, #0x14]
	ldr r1, _080294D8 @ =0xFFFFFF00
	ands r0, r1
	ldr r1, _080294D4 @ =0xFFFFE800
	adds r0, r0, r1
	str r0, [r2, #0xc]
	ldr r0, [r2]
	cmp r0, r3
	ble _080294E4
	ldr r1, _080294DC @ =0xFFFFF800
	adds r0, r0, r1
	str r0, [r2]
	cmp r0, r3
	bge _080294CC
	str r3, [r2]
_080294CC:
	ldr r0, [r2, #0x1c]
	ldr r1, _080294E0 @ =0xFFFFFBFF
	ands r0, r1
	b _08029516
	.align 2, 0
_080294D4: .4byte 0xFFFFE800
_080294D8: .4byte 0xFFFFFF00
_080294DC: .4byte 0xFFFFF800
_080294E0: .4byte 0xFFFFFBFF
_080294E4:
	cmp r0, r3
	blt _08029500
	ldr r0, [r4, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0802950E
	ldr r0, [r2, #0x1c]
	ldr r1, _080294FC @ =0xFFFFFBFF
	ands r0, r1
	b _08029516
	.align 2, 0
_080294FC: .4byte 0xFFFFFBFF
_08029500:
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r2]
	cmp r0, r3
	ble _0802950E
	str r3, [r2]
_0802950E:
	ldr r0, [r2, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
_08029516:
	str r0, [r2, #0x1c]
	ldr r0, [r2, #4]
	ldr r1, [r2, #0xc]
	cmp r0, r1
	ble _08029530
	ldr r3, _0802952C @ =0xFFFFF800
	adds r0, r0, r3
	str r0, [r2, #4]
	cmp r0, r1
	bge _08029542
	b _08029540
	.align 2, 0
_0802952C: .4byte 0xFFFFF800
_08029530:
	cmp r0, r1
	bge _08029542
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r0, r3
	str r0, [r2, #4]
	cmp r0, r1
	ble _08029542
_08029540:
	str r1, [r2, #4]
_08029542:
	bl sub_8029600
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_802954C
sub_802954C: @ 0x0802954C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	ldr r0, _080295B0 @ =gStageData
	adds r5, r0, #0
	adds r5, #0x98
	ldr r4, [r5]
	cmp r4, #0
	bne _080295A2
	movs r0, #0x81
	lsls r0, r0, #2
	bl m4aSongNumStart
	ldr r0, _080295B4 @ =sub_8029474
	ldr r2, _080295B8 @ =0x00003010
	str r4, [sp]
	movs r1, #0x40
	movs r3, #0
	bl TaskCreate
	str r0, [r5]
	ldrh r0, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r0, r2
	lsls r1, r6, #0x10
	asrs r1, r1, #8
	str r1, [r2]
	lsls r1, r7, #0x10
	asrs r1, r1, #8
	str r1, [r2, #4]
	mov r1, r8
	str r1, [r2, #0x3c]
	ldr r1, _080295BC @ =0x03000014
	adds r0, r0, r1
	bl sub_80295C0
_080295A2:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080295B0: .4byte gStageData
_080295B4: .4byte sub_8029474
_080295B8: .4byte 0x00003010
_080295BC: .4byte 0x03000014

	thumb_func_start sub_80295C0
sub_80295C0: @ 0x080295C0
	push {lr}
	ldr r1, _080295F8 @ =0x06012580
	str r1, [r0]
	movs r3, #0
	movs r2, #0
	ldr r1, _080295FC @ =0x0000032F
	strh r1, [r0, #0xc]
	strb r3, [r0, #0x1a]
	subs r1, #0xaf
	strh r1, [r0, #0x14]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r3, [r0, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r0, #8]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0, #0x20]
	bl UpdateSpriteAnimation
	pop {r0}
	bx r0
	.align 2, 0
_080295F8: .4byte 0x06012580
_080295FC: .4byte 0x0000032F

	thumb_func_start sub_8029600
sub_8029600: @ 0x08029600
	push {r4, lr}
	ldr r0, _0802963C @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r4, r2
	ldr r0, _08029640 @ =0x03000014
	adds r4, r4, r0
	ldr r0, [r2]
	asrs r0, r0, #8
	ldr r3, _08029644 @ =gCamera
	ldr r1, [r3]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	ldr r1, [r3, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802963C: .4byte gCurTask
_08029640: .4byte 0x03000014
_08029644: .4byte gCamera

	thumb_func_start sub_8029648
sub_8029648: @ 0x08029648
	push {lr}
	ldr r2, _08029668 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	ldrb r1, [r3, #3]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0x20
	beq _0802966C
	movs r1, #0
	strh r1, [r3]
	b _08029678
	.align 2, 0
_08029668: .4byte gCurTask
_0802966C:
	ldrb r1, [r3, #3]
	ldr r0, _08029698 @ =gStageData
	ldrb r0, [r0, #6]
	asrs r1, r0
	movs r0, #1
	ands r1, r0
_08029678:
	ldrh r0, [r3]
	cmp r0, #0
	beq _080296A4
	subs r0, #1
	strh r0, [r3]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080296A4
	cmp r1, #0
	beq _0802969C
	ldrb r0, [r3, #2]
	cmp r0, #0x3b
	bhi _080296B6
	adds r0, #1
	b _080296B4
	.align 2, 0
_08029698: .4byte gStageData
_0802969C:
	ldrb r0, [r3, #2]
	cmp r0, #0
	beq _080296B6
	b _080296B2
_080296A4:
	ldrb r0, [r3, #2]
	cmp r0, #0
	bne _080296B2
	ldr r0, [r2]
	bl TaskDestroy
	b _080296EA
_080296B2:
	subs r0, #1
_080296B4:
	strb r0, [r3, #2]
_080296B6:
	ldrb r0, [r3, #2]
	lsrs r0, r0, #2
	movs r1, #0xf
	ands r0, r1
	ldr r3, _080296F0 @ =0x0400004C
	lsls r1, r0, #0xc
	lsls r2, r0, #8
	orrs r1, r2
	lsls r2, r0, #4
	orrs r1, r2
	orrs r0, r1
	strh r0, [r3]
	ldr r1, _080296F4 @ =gBgCntRegs
	ldrh r0, [r1]
	movs r2, #0x40
	orrs r0, r2
	strh r0, [r1]
	ldrh r0, [r1, #2]
	orrs r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r1, #4]
	orrs r0, r2
	strh r0, [r1, #4]
	ldrh r0, [r1, #6]
	orrs r2, r0
	strh r2, [r1, #6]
_080296EA:
	pop {r0}
	bx r0
	.align 2, 0
_080296F0: .4byte 0x0400004C
_080296F4: .4byte gBgCntRegs

	thumb_func_start sub_80296F8
sub_80296F8: @ 0x080296F8
	push {r4, r5, r6, lr}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r1, _0802971C @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #6
	bls _0802975C
	adds r5, r1, #0
	adds r5, #0xa8
	ldr r4, [r5]
	cmp r4, #0
	beq _08029720
	ldrh r1, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	b _0802973E
	.align 2, 0
_0802971C: .4byte gStageData
_08029720:
	ldr r0, _08029764 @ =sub_8029648
	movs r2, #0xe0
	lsls r2, r2, #8
	ldr r1, _08029768 @ =TaskDestructor_8029774
	str r1, [sp]
	movs r1, #4
	movs r3, #0
	bl TaskCreate
	str r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	strb r4, [r1, #2]
_0802973E:
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r1]
	strb r6, [r1, #3]
	ldr r1, _0802976C @ =gStageData
	adds r0, r6, #0
	ldrb r1, [r1, #6]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0802975C
	ldr r0, _08029770 @ =0x00000337
	bl sub_8003DF0
_0802975C:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08029764: .4byte sub_8029648
_08029768: .4byte TaskDestructor_8029774
_0802976C: .4byte gStageData
_08029770: .4byte 0x00000337

	thumb_func_start TaskDestructor_8029774
TaskDestructor_8029774: @ 0x08029774
	push {r4, lr}
	ldr r0, _080297AC @ =gStageData
	adds r0, #0xa8
	movs r4, #0
	str r4, [r0]
	ldr r2, _080297B0 @ =gBgCntRegs
	ldrh r3, [r2]
	ldr r1, _080297B4 @ =0x0000FFBF
	adds r0, r1, #0
	ands r0, r3
	strh r0, [r2]
	ldrh r3, [r2, #2]
	adds r0, r1, #0
	ands r0, r3
	strh r0, [r2, #2]
	ldrh r3, [r2, #4]
	adds r0, r1, #0
	ands r0, r3
	strh r0, [r2, #4]
	ldrh r0, [r2, #6]
	ands r1, r0
	strh r1, [r2, #6]
	ldr r0, _080297B8 @ =0x0400004C
	strh r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080297AC: .4byte gStageData
_080297B0: .4byte gBgCntRegs
_080297B4: .4byte 0x0000FFBF
_080297B8: .4byte 0x0400004C

	thumb_func_start Task_80297BC
Task_80297BC: @ 0x080297BC
	push {r4, r5, r6, r7, lr}
	ldr r0, _0802980C @ =gMPlayTable
	ldr r0, [r0]
	ldr r7, [r0]
	ldr r0, _08029810 @ =gUnknown_03001CF0
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0
	beq _080297D0
	b _08029988
_080297D0:
	ldr r2, _08029814 @ =gPlayers
	ldr r3, _08029818 @ =gStageData
	ldrb r1, [r3, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	mov ip, r0
	adds r0, r2, #4
	add r0, ip
	ldr r4, [r0]
	movs r5, #0x80
	lsls r5, r5, #1
	ands r5, r4
	cmp r5, #0
	beq _080297F4
	b _08029988
_080297F4:
	ldrh r0, [r6, #6]
	cmp r0, #0
	beq _0802981C
	bl sub_8029A5C
	movs r0, #0xff
	strb r0, [r6]
	strh r5, [r6, #6]
	movs r0, #1
	strb r0, [r6, #5]
	b _08029988
	.align 2, 0
_0802980C: .4byte gMPlayTable
_08029810: .4byte gUnknown_03001CF0
_08029814: .4byte gPlayers
_08029818: .4byte gStageData
_0802981C:
	ldr r1, _08029874 @ =gSongTable
	movs r5, #0x96
	lsls r5, r5, #2
	adds r0, r1, r5
	ldr r0, [r0]
	adds r5, r1, #0
	cmp r7, r0
	bne _08029880
	ldr r0, _08029878 @ =gMPlayInfo_BGM
	ldr r1, [r0, #4]
	ldrh r0, [r0, #4]
	cmp r0, #0
	beq _08029880
	cmp r1, #0
	blt _08029880
	movs r0, #0x80
	ands r4, r0
	cmp r4, #0
	beq _08029860
	add r2, ip
	adds r0, r2, #0
	adds r0, #0x56
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xe
	bne _08029866
	adds r0, r2, #0
	adds r0, #0x57
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x3c
	bne _08029866
_08029860:
	movs r0, #0x4b
	bl m4aSongNumStop
_08029866:
	ldr r0, _0802987C @ =gUnknown_03001CF0
	movs r1, #0
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	movs r1, #1
	strb r1, [r0, #5]
	b _08029988
	.align 2, 0
_08029874: .4byte gSongTable
_08029878: .4byte gMPlayInfo_BGM
_0802987C: .4byte gUnknown_03001CF0
_08029880:
	ldrb r0, [r6, #4]
	cmp r0, #0
	beq _08029896
	movs r0, #0
	strb r0, [r6, #4]
	movs r0, #1
	strb r0, [r6, #5]
	movs r0, #0x4b
	bl m4aSongNumStart
	b _08029988
_08029896:
	movs r1, #0x92
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r7, r0
	bne _080298D8
	ldr r0, _080298D4 @ =gMPlayInfo_BGM
	ldr r1, [r0, #4]
	ldrh r0, [r0, #4]
	cmp r0, #0
	beq _080298D8
	cmp r1, #0
	blt _080298D8
	ldrb r0, [r3, #6]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r1, r1, r2
	adds r1, #0x4c
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bgt _080298D8
	movs r0, #1
	strb r0, [r6, #5]
	movs r0, #0x49
	bl m4aSongNumStop
	b _08029988
	.align 2, 0
_080298D4: .4byte gMPlayInfo_BGM
_080298D8:
	movs r1, #0xa6
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r7, r0
	beq _08029910
	movs r4, #0x92
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	cmp r7, r0
	beq _08029910
	ldrb r0, [r3, #6]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r1, r1, r2
	adds r1, #0x4c
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #0
	ble _08029910
	ldrb r0, [r6, #2]
	cmp r0, #0
	bne _08029918
	b _0802991A
_08029910:
	adds r4, r6, #0
	ldrb r0, [r4, #2]
	cmp r0, #0
	beq _08029928
_08029918:
	movs r0, #0
_0802991A:
	strb r0, [r6, #2]
	movs r0, #1
	strb r0, [r6, #5]
	movs r0, #0x49
	bl m4aSongNumStart
	b _08029988
_08029928:
	ldrb r5, [r4, #3]
	cmp r5, #0
	beq _0802993C
	strb r0, [r4, #3]
	movs r0, #1
	strb r0, [r4, #5]
	movs r0, #0x53
	bl m4aSongNumStart
	b _08029988
_0802993C:
	ldrb r7, [r4, #1]
	cmp r7, #0
	beq _0802995C
	ldrh r0, [r4, #8]
	bl m4aSongNumStart
	ldrb r0, [r4, #1]
	cmp r0, #2
	bne _08029954
	strb r5, [r4, #5]
	bl sub_8029A30
_08029954:
	strb r5, [r4, #1]
	bl sub_8029A78
	b _08029988
_0802995C:
	ldr r0, _08029980 @ =gMPlayInfo_BGM
	ldr r1, [r0, #4]
	ldrh r0, [r0, #4]
	cmp r0, #0
	beq _0802996A
	cmp r1, #0
	bge _08029984
_0802996A:
	ldrh r0, [r6, #8]
	bl m4aSongNumStartOrContinue
	ldrb r0, [r6, #5]
	cmp r0, #0
	beq _08029988
	strb r7, [r6, #5]
	bl sub_8029A30
	b _08029988
	.align 2, 0
_08029980: .4byte gMPlayInfo_BGM
_08029984:
	bl sub_8029A78
_08029988:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8029990
sub_8029990: @ 0x08029990
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _080299CC @ =Task_80297BC
	movs r2, #0x80
	lsls r2, r2, #7
	movs r5, #0
	str r5, [sp]
	movs r1, #0
	movs r3, #0
	bl TaskCreate
	ldr r0, _080299D0 @ =gUnknown_03001CF0
	movs r2, #0
	strh r4, [r0, #8]
	movs r1, #1
	strb r1, [r0, #1]
	strb r2, [r0]
	strb r2, [r0, #2]
	strb r2, [r0, #3]
	strb r2, [r0, #4]
	strb r2, [r0, #5]
	strh r5, [r0, #6]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080299CC: .4byte Task_80297BC
_080299D0: .4byte gUnknown_03001CF0

	thumb_func_start sub_80299D4
sub_80299D4: @ 0x080299D4
	ldr r2, _080299E4 @ =gUnknown_03001CF0
	movs r1, #0
	strb r1, [r2]
	strh r0, [r2, #8]
	movs r0, #1
	strb r0, [r2, #1]
	bx lr
	.align 2, 0
_080299E4: .4byte gUnknown_03001CF0

	thumb_func_start sub_80299E8
sub_80299E8: @ 0x080299E8
	ldr r2, _080299F8 @ =gUnknown_03001CF0
	movs r1, #0
	strb r1, [r2]
	strh r0, [r2, #8]
	movs r0, #2
	strb r0, [r2, #1]
	bx lr
	.align 2, 0
_080299F8: .4byte gUnknown_03001CF0

	thumb_func_start sub_80299FC
sub_80299FC: @ 0x080299FC
	push {lr}
	ldr r0, _08029A10 @ =gMPlayInfo_BGM
	bl MPlayStop
	ldr r1, _08029A14 @ =gUnknown_03001CF0
	movs r0, #0xff
	strb r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08029A10: .4byte gMPlayInfo_BGM
_08029A14: .4byte gUnknown_03001CF0

	thumb_func_start sub_8029A18
sub_8029A18: @ 0x08029A18
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStartOrContinue
	ldr r1, _08029A2C @ =gUnknown_03001CF0
	movs r0, #0
	strb r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08029A2C: .4byte gUnknown_03001CF0

	thumb_func_start sub_8029A30
sub_8029A30: @ 0x08029A30
	push {r4, lr}
	ldr r4, _08029A58 @ =gMPlayInfo_BGM
	adds r0, r4, #0
	bl m4aMPlayImmInit
	adds r0, r4, #0
	movs r1, #0xff
	movs r2, #4
	bl m4aMPlayVolumeControl
	adds r0, r4, #0
	movs r1, #4
	bl m4aMPlayFadeIn
	bl sub_8029A78
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08029A58: .4byte gMPlayInfo_BGM

	thumb_func_start sub_8029A5C
sub_8029A5C: @ 0x08029A5C
	push {lr}
	adds r1, r0, #0
	lsls r1, r1, #0x10
	ldr r0, _08029A74 @ =gMPlayInfo_BGM
	lsrs r1, r1, #0x14
	bl m4aMPlayFadeOutTemporarily
	bl sub_8029A78
	pop {r0}
	bx r0
	.align 2, 0
_08029A74: .4byte gMPlayInfo_BGM

	thumb_func_start sub_8029A78
sub_8029A78: @ 0x08029A78
	push {lr}
	ldr r2, _08029AA4 @ =gPlayers
	ldr r0, _08029AA8 @ =gStageData
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r1, r0, r2
	adds r0, r1, #0
	adds r0, #0x5e
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	ble _08029AB0
	ldr r0, _08029AAC @ =gMPlayInfo_BGM
	movs r1, #0x80
	lsls r1, r1, #2
	bl m4aMPlayTempoControl
	b _08029AD6
	.align 2, 0
_08029AA4: .4byte gPlayers
_08029AA8: .4byte gStageData
_08029AAC: .4byte gMPlayInfo_BGM
_08029AB0:
	adds r0, r1, #0
	adds r0, #0x60
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _08029ACC
	ldr r0, _08029AC8 @ =gMPlayInfo_BGM
	movs r1, #0x80
	bl m4aMPlayTempoControl
	b _08029AD6
	.align 2, 0
_08029AC8: .4byte gMPlayInfo_BGM
_08029ACC:
	ldr r0, _08029ADC @ =gMPlayInfo_BGM
	movs r1, #0x80
	lsls r1, r1, #1
	bl m4aMPlayTempoControl
_08029AD6:
	pop {r0}
	bx r0
	.align 2, 0
_08029ADC: .4byte gMPlayInfo_BGM

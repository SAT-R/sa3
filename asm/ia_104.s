.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Interactable104
CreateEntity_Interactable104: @ 0x080430B8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r7, r0, #0
	adds r4, r3, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08043128 @ =sub_80431C4
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0804312C @ =sub_80436E8
	str r1, [sp]
	movs r1, #0x6c
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r2
	mov ip, r0
	strh r6, [r0, #4]
	mov r1, r8
	strh r1, [r0, #6]
	str r7, [r0]
	ldrb r0, [r7]
	mov r3, ip
	strb r0, [r3, #0xa]
	strb r4, [r3, #0xb]
	ldrb r1, [r7, #7]
	movs r0, #0xf0
	ands r0, r1
	rsbs r0, r0, #0
	lsrs r0, r0, #0x1f
	ldr r3, _08043130 @ =0x03000069
	adds r1, r2, r3
	strb r0, [r1]
	movs r3, #0
	ldrb r0, [r7, #7]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08043138
	ldr r0, _08043134 @ =0x03000068
	adds r1, r2, r0
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08043134 @ =0x03000068
	adds r2, r2, r1
	b _0804315A
	.align 2, 0
_08043128: .4byte sub_80431C4
_0804312C: .4byte sub_80436E8
_08043130: .4byte 0x03000069
_08043134: .4byte 0x03000068
_08043138:
	lsls r0, r3, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r3, r0, #0x10
	asrs r1, r0, #0x10
	mov r2, ip
	adds r2, #0x68
	cmp r1, #7
	bgt _0804315A
	ldrb r0, [r7, #7]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08043138
	strb r3, [r2]
_0804315A:
	ldrb r0, [r2]
	cmp r0, #3
	bls _08043164
	subs r0, #4
	strb r0, [r2]
_08043164:
	mov r0, ip
	adds r0, #0x6a
	movs r5, #0
	strh r5, [r0]
	ldrb r0, [r7]
	lsls r0, r0, #3
	lsls r1, r6, #8
	adds r0, r0, r1
	mov r4, ip
	adds r4, #0x64
	strh r0, [r4]
	ldrb r0, [r7, #1]
	lsls r0, r0, #3
	mov r3, r8
	lsls r1, r3, #8
	adds r0, r0, r1
	mov r6, ip
	adds r6, #0x66
	strh r0, [r6]
	mov r3, ip
	adds r3, #0x34
	ldr r2, _080431C0 @ =gUnknown_03001D10
	ldr r1, [r2]
	ldrh r0, [r4]
	subs r0, r0, r1
	strh r0, [r3, #0x10]
	ldr r1, [r2, #4]
	ldrh r0, [r6]
	subs r0, r0, r1
	strh r0, [r3, #0x12]
	mov r0, ip
	str r5, [r0, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r7]
	mov r0, ip
	bl sub_80433C8
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080431C0: .4byte gUnknown_03001D10

	thumb_func_start sub_80431C4
sub_80431C4: @ 0x080431C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _08043208 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r1, r0
	mov r8, r1
	ldr r1, _0804320C @ =0x03000034
	adds r7, r0, r1
	ldr r2, _08043210 @ =0x03000064
	adds r1, r0, r2
	ldrh r1, [r1]
	ldr r3, _08043214 @ =0x03000066
	adds r0, r0, r3
	ldrh r0, [r0]
	movs r3, #0
	lsls r1, r1, #0x10
	mov sl, r1
	lsls r0, r0, #0x10
	mov sb, r0
_080431F8:
	lsls r0, r3, #0x10
	str r0, [sp, #8]
	cmp r0, #0
	bne _0804321C
	ldr r0, _08043218 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _08043226
	.align 2, 0
_08043208: .4byte gCurTask
_0804320C: .4byte 0x03000034
_08043210: .4byte 0x03000064
_08043214: .4byte 0x03000066
_08043218: .4byte gUnknown_030008A0
_0804321C:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_08043226:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _080432A0 @ =gUnknown_030015C0
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C080
	adds r2, r0, #0
	cmp r2, #0
	bne _080432F8
	mov r0, r8
	adds r0, #0x69
	ldrb r0, [r0]
	cmp r0, #0
	bne _080432B0
	ldr r1, [r4]
	ldr r0, _080432A4 @ =sub_800E3EC
	cmp r1, r0
	bne _08043254
	b _080433A2
_08043254:
	ldr r0, _080432A8 @ =sub_800B004
	cmp r1, r0
	bne _0804325C
	b _080433A2
_0804325C:
	mov r0, sl
	asrs r5, r0, #0x10
	mov r1, sb
	asrs r6, r1, #0x10
	str r4, [sp]
	str r2, [sp, #4]
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020700
	adds r2, r0, #0
	cmp r2, #0
	beq _080432F8
	mov r1, r8
	adds r1, #0x6a
	movs r0, #0x3c
	strh r0, [r1]
	mov r0, r8
	adds r0, #0x68
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_8043708
	ldr r0, _080432AC @ =0x00000251
	bl sub_8003DF0
	adds r0, r4, #0
	bl sub_8016F28
	b _080433A2
	.align 2, 0
_080432A0: .4byte gUnknown_030015C0
_080432A4: .4byte sub_800E3EC
_080432A8: .4byte sub_800B004
_080432AC: .4byte 0x00000251
_080432B0:
	ldr r1, [r4]
	ldr r0, _080432F0 @ =sub_800B128
	cmp r1, r0
	beq _080433A2
	ldr r0, _080432F4 @ =sub_800E564
	cmp r1, r0
	beq _080433A2
	mov r3, sl
	asrs r5, r3, #0x10
	mov r0, sb
	asrs r6, r0, #0x10
	str r4, [sp]
	str r2, [sp, #4]
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020700
	adds r2, r0, #0
	cmp r2, #0
	beq _080432F8
	mov r0, r8
	adds r0, #0x68
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_80437A0
	b _080433A2
	.align 2, 0
_080432F0: .4byte sub_800B128
_080432F4: .4byte sub_800E564
_080432F8:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _0804330E
	cmp r1, #8
	beq _0804330E
	cmp r1, #0x10
	bne _080433A2
_0804330E:
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _080433A2
	ldr r0, [r4, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08043330
	ldr r0, [r4, #0x6c]
	cmp r0, r7
	bne _08043330
	ldr r0, [r4, #0x14]
	adds r1, #0xe0
	adds r0, r0, r1
	str r0, [r4, #0x14]
_08043330:
	movs r0, #0
	str r0, [sp]
	adds r0, r7, #0
	mov r2, sl
	asrs r1, r2, #0x10
	mov r3, sb
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_8020950
	adds r2, r0, #0
	movs r0, #0xc0
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _08043386
	lsls r0, r2, #0x18
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x14]
	adds r3, r1, r0
	str r3, [r4, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _08043386
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08043378
	ldr r1, _08043374 @ =0xFFFFFF00
	b _0804337C
	.align 2, 0
_08043374: .4byte 0xFFFFFF00
_08043378:
	movs r1, #0x80
	lsls r1, r1, #1
_0804337C:
	adds r0, r3, r1
	str r0, [r4, #0x14]
	movs r0, #0
	strh r0, [r4, #0x1a]
	strh r0, [r4, #0x1c]
_08043386:
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r2
	cmp r0, #0
	beq _080433A2
	lsls r0, r2, #0x10
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	ldr r1, [r4, #0x10]
	adds r1, r1, r0
	str r1, [r4, #0x10]
	movs r0, #0
	strh r0, [r4, #0x18]
	strh r0, [r4, #0x1c]
_080433A2:
	ldr r2, [sp, #8]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r2, r3
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _080433B4
	b _080431F8
_080433B4:
	bl sub_8043530
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80433C8
sub_80433C8: @ 0x080433C8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r5, r6, #0
	adds r5, #0x34
	movs r0, #0
	str r0, [r5, #8]
	adds r0, r6, #0
	adds r0, #0x69
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804342C
	adds r2, r6, #0
	adds r2, #0x68
	ldrb r1, [r2]
	movs r0, #2
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	beq _08043418
	movs r0, #0x15
	bl VramMalloc
	str r0, [r6, #0x34]
	movs r1, #0
	ldr r0, _08043414 @ =0x000003B5
	strh r0, [r5, #0xc]
	strb r1, [r5, #0x1a]
	ldrb r1, [r7]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08043480
	movs r0, #0x80
	lsls r0, r0, #4
	b _0804347E
	.align 2, 0
_08043414: .4byte 0x000003B5
_08043418:
	movs r0, #0x15
	bl VramMalloc
	str r0, [r6, #0x34]
	movs r1, #0
	ldr r0, _08043428 @ =0x000003B6
	b _0804346C
	.align 2, 0
_08043428: .4byte 0x000003B6
_0804342C:
	adds r2, r6, #0
	adds r2, #0x68
	ldrb r1, [r2]
	movs r0, #2
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	beq _08043460
	movs r0, #0x15
	bl VramMalloc
	str r0, [r6, #0x34]
	movs r1, #0
	ldr r0, _0804345C @ =0x00000385
	strh r0, [r5, #0xc]
	strb r1, [r5, #0x1a]
	ldrb r1, [r7]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08043480
	movs r0, #0x80
	lsls r0, r0, #4
	b _0804347E
	.align 2, 0
_0804345C: .4byte 0x00000385
_08043460:
	movs r0, #0x15
	bl VramMalloc
	str r0, [r6, #0x34]
	movs r1, #0
	ldr r0, _080434DC @ =0x00000386
_0804346C:
	strh r0, [r5, #0xc]
	strb r1, [r5, #0x1a]
	ldrb r1, [r7]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08043480
	movs r0, #0x80
	lsls r0, r0, #3
_0804347E:
	str r0, [r5, #8]
_08043480:
	movs r0, #0
	mov r8, r0
	movs r4, #0
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r5, #0x14]
	strh r4, [r5, #0xe]
	strh r4, [r5, #0x16]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	mov r0, r8
	strb r0, [r5, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x20]
	str r0, [r5, #0x28]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r5, r6, #0
	adds r5, #0xc
	str r4, [r5, #8]
	ldrb r1, [r7]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080434E0
	movs r0, #0x15
	bl VramMalloc
	str r0, [r6, #0xc]
	movs r0, #0xef
	lsls r0, r0, #2
	strh r0, [r5, #0xc]
	mov r0, r8
	strb r0, [r5, #0x1a]
	ldrb r1, [r7]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08043500
	movs r0, #0x80
	lsls r0, r0, #4
	b _080434FE
	.align 2, 0
_080434DC: .4byte 0x00000386
_080434E0:
	movs r0, #0x15
	bl VramMalloc
	str r0, [r6, #0xc]
	ldr r0, _0804352C @ =0x000003BB
	strh r0, [r5, #0xc]
	mov r0, r8
	strb r0, [r5, #0x1a]
	ldrb r1, [r7]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08043500
	movs r0, #0x80
	lsls r0, r0, #3
_080434FE:
	str r0, [r5, #8]
_08043500:
	movs r2, #0
	movs r1, #0
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r5, #0x14]
	strh r1, [r5, #0xe]
	strh r1, [r5, #0x16]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	strb r2, [r5, #0x1f]
	subs r0, #0x11
	str r0, [r5, #0x20]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804352C: .4byte 0x000003BB

	thumb_func_start sub_8043530
sub_8043530: @ 0x08043530
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _08043594 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r4
	mov sl, r0
	ldr r0, _08043598 @ =0x03000034
	adds r6, r4, r0
	mov r1, sl
	ldr r1, [r1]
	str r1, [sp]
	ldr r2, _0804359C @ =0x03000064
	adds r0, r4, r2
	ldr r3, _080435A0 @ =0x03000066
	adds r1, r4, r3
	ldrh r2, [r0]
	mov sb, r2
	movs r2, #0
	ldrsh r3, [r0, r2]
	mov r8, r3
	ldrh r3, [r1]
	str r3, [sp, #4]
	movs r0, #0
	ldrsh r7, [r1, r0]
	mov r0, r8
	adds r1, r7, #0
	bl sub_802C198
	cmp r0, #0
	bne _080435E8
	movs r1, #0
	ldr r7, _080435A4 @ =gUnknown_030015C0
_0804357E:
	lsls r0, r1, #0x10
	adds r4, r0, #0
	cmp r4, #0
	beq _080435A8
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _080435AC
	.align 2, 0
_08043594: .4byte gCurTask
_08043598: .4byte 0x03000034
_0804359C: .4byte 0x03000064
_080435A0: .4byte 0x03000066
_080435A4: .4byte gUnknown_030015C0
_080435A8:
	ldr r0, _080435E0 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_080435AC:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r5, r0, r7
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_80213B0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0804357E
	mov r2, sl
	ldrb r0, [r2, #0xa]
	ldr r3, [sp]
	strb r0, [r3]
	ldr r0, _080435E4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080436CE
	.align 2, 0
_080435E0: .4byte gUnknown_030008A0
_080435E4: .4byte gCurTask
_080435E8:
	ldr r1, _08043604 @ =0x03000068
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08043608
	mov r0, r8
	adds r0, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	b _08043610
	.align 2, 0
_08043604: .4byte 0x03000068
_08043608:
	adds r0, r7, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
_08043610:
	ldr r2, _08043654 @ =gUnknown_03001D10
	ldr r1, [r2]
	mov r3, sb
	lsls r5, r3, #0x10
	asrs r0, r5, #0x10
	subs r0, r0, r1
	strh r0, [r6, #0x10]
	ldr r1, [r2, #4]
	ldr r0, [sp, #4]
	lsls r4, r0, #0x10
	asrs r0, r4, #0x10
	subs r0, r0, r1
	strh r0, [r6, #0x12]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	mov r0, sl
	adds r0, #0x68
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	mov r8, r4
	cmp r0, #0
	beq _08043678
	movs r4, #0
	mov r7, sl
	adds r7, #0x69
_08043646:
	cmp r4, #0
	beq _08043658
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _0804365E
	.align 2, 0
_08043654: .4byte gUnknown_03001D10
_08043658:
	ldr r0, [r6, #8]
	ldr r1, _08043674 @ =0xFFFFFBFF
	ands r0, r1
_0804365E:
	str r0, [r6, #8]
	adds r0, r6, #0
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _08043646
	b _080436A4
	.align 2, 0
_08043674: .4byte 0xFFFFFBFF
_08043678:
	movs r4, #0
	mov r7, sl
	adds r7, #0x69
_0804367E:
	cmp r4, #0
	beq _0804368C
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	b _08043692
_0804368C:
	ldr r0, [r6, #8]
	ldr r1, _080436E0 @ =0xFFFFF7FF
	ands r0, r1
_08043692:
	str r0, [r6, #8]
	adds r0, r6, #0
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0804367E
_080436A4:
	ldrb r0, [r7]
	cmp r0, #0
	bne _080436CE
	mov r6, sl
	adds r6, #0xc
	ldr r2, _080436E4 @ =gUnknown_03001D10
	ldr r1, [r2]
	asrs r0, r5, #0x10
	subs r0, r0, r1
	strh r0, [r6, #0x10]
	ldr r1, [r2, #4]
	mov r2, r8
	asrs r0, r2, #0x10
	subs r0, r0, r1
	strh r0, [r6, #0x12]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_080436CE:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080436E0: .4byte 0xFFFFF7FF
_080436E4: .4byte gUnknown_03001D10

	thumb_func_start sub_80436E8
sub_80436E8: @ 0x080436E8
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x34]
	bl VramFree
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _08043702
	bl VramFree
_08043702:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8043708
sub_8043708: @ 0x08043708
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r5, r1, #0
	lsls r2, r2, #0x10
	asrs r0, r2, #8
	str r0, [r4, #0x70]
	lsls r3, r3, #0x10
	asrs r3, r3, #8
	str r3, [r4, #0x74]
	cmp r1, #1
	beq _08043750
	cmp r1, #1
	bgt _0804372C
	cmp r1, #0
	beq _08043736
	b _08043794
_0804372C:
	cmp r5, #2
	beq _0804376C
	cmp r5, #3
	beq _08043784
	b _08043794
_08043736:
	movs r1, #0xa0
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [r4, #0x70]
	movs r1, #0xa0
	lsls r1, r1, #3
	adds r0, r3, r1
	str r0, [r4, #0x74]
	ldr r1, _0804374C @ =sub_800E3C4
	b _08043774
	.align 2, 0
_0804374C: .4byte sub_800E3C4
_08043750:
	ldr r1, _08043764 @ =0xFFFFEC00
	adds r0, r0, r1
	str r0, [r4, #0x70]
	movs r1, #0xa0
	lsls r1, r1, #3
	adds r0, r3, r1
	str r0, [r4, #0x74]
	ldr r1, _08043768 @ =sub_800E398
	b _08043774
	.align 2, 0
_08043764: .4byte 0xFFFFEC00
_08043768: .4byte sub_800E398
_0804376C:
	ldr r1, _0804377C @ =0xFFFFEC00
	adds r0, r3, r1
	str r0, [r4, #0x74]
	ldr r1, _08043780 @ =sub_800E348
_08043774:
	adds r0, r4, #0
	bl sub_800D87C
	b _08043794
	.align 2, 0
_0804377C: .4byte 0xFFFFEC00
_08043780: .4byte sub_800E348
_08043784:
	movs r1, #0xa0
	lsls r1, r1, #5
	adds r0, r3, r1
	str r0, [r4, #0x74]
	ldr r1, _0804379C @ =sub_800E370
	adds r0, r4, #0
	bl sub_800D87C
_08043794:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804379C: .4byte sub_800E370

	thumb_func_start sub_80437A0
sub_80437A0: @ 0x080437A0
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r5, r1, #0
	lsls r2, r2, #0x10
	asrs r0, r2, #8
	str r0, [r4, #0x70]
	lsls r3, r3, #0x10
	asrs r3, r3, #8
	str r3, [r4, #0x74]
	cmp r1, #1
	beq _080437DC
	cmp r1, #1
	bgt _080437C4
	cmp r1, #0
	beq _080437CE
	b _08043812
_080437C4:
	cmp r5, #2
	beq _080437E8
	cmp r5, #3
	beq _08043800
	b _08043812
_080437CE:
	subs r0, #0x10
	str r0, [r4, #0x70]
	ldr r1, _080437D8 @ =sub_800E4B8
	b _080437F4
	.align 2, 0
_080437D8: .4byte sub_800E4B8
_080437DC:
	adds r0, #0x10
	str r0, [r4, #0x70]
	ldr r1, _080437E4 @ =sub_800E4E0
	b _080437F4
	.align 2, 0
_080437E4: .4byte sub_800E4E0
_080437E8:
	adds r0, #4
	str r0, [r4, #0x70]
	adds r0, r3, #0
	adds r0, #0x10
	str r0, [r4, #0x74]
	ldr r1, _080437FC @ =sub_800E490
_080437F4:
	adds r0, r4, #0
	bl sub_800D87C
	b _08043812
	.align 2, 0
_080437FC: .4byte sub_800E490
_08043800:
	adds r0, #4
	str r0, [r4, #0x70]
	adds r0, r3, #0
	subs r0, #0x10
	str r0, [r4, #0x74]
	ldr r1, _08043818 @ =sub_800E468
	adds r0, r4, #0
	bl sub_800D87C
_08043812:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08043818: .4byte sub_800E468

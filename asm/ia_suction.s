.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

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
	bl IsPointInScreenRect
	cmp r0, #0
	bne _080435E8
	movs r1, #0
	ldr r7, _080435A4 @ =gPlayers
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
_080435A4: .4byte gPlayers
_080435A8:
	ldr r0, _080435E0 @ =gStageData
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
_080435E0: .4byte gStageData
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
	ldr r2, _08043654 @ =gCamera
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
_08043654: .4byte gCamera
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
	ldr r2, _080436E4 @ =gCamera
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
_080436E4: .4byte gCamera

	thumb_func_start TaskDestructor_Suction
TaskDestructor_Suction: @ 0x080436E8
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
	bl SetPlayerCallback
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
	bl SetPlayerCallback
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
	bl SetPlayerCallback
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
	bl SetPlayerCallback
_08043812:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08043818: .4byte sub_800E468

.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Interactable101
CreateEntity_Interactable101: @ 0x080420F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sb, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _080421D0 @ =gUnknown_030008A0
	ldrb r0, [r0, #9]
	mov r8, r0
	ldr r0, _080421D4 @ =sub_80421E8
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _080421D8 @ =sub_80425E4
	str r1, [sp]
	movs r1, #0x4c
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r0, r2
	movs r3, #0
	movs r1, #0
	mov sl, r1
	strh r4, [r2, #4]
	strh r5, [r2, #6]
	mov r7, sb
	str r7, [r2]
	ldrb r1, [r7]
	strb r1, [r2, #0xa]
	strb r6, [r2, #0xb]
	ldr r6, _080421DC @ =0x03000034
	adds r1, r0, r6
	strb r3, [r1]
	ldrb r1, [r7]
	lsls r1, r1, #3
	lsls r4, r4, #8
	adds r1, r1, r4
	lsls r1, r1, #8
	str r1, [r2, #0x3c]
	ldrb r1, [r7, #1]
	lsls r1, r1, #3
	lsls r5, r5, #8
	adds r1, r1, r5
	lsls r1, r1, #8
	str r1, [r2, #0x40]
	ldr r1, _080421E0 @ =gUnknown_08E2EC5C
	mov r7, r8
	lsls r7, r7, #2
	mov r8, r7
	add r8, r1
	mov r3, sb
	ldrb r1, [r3, #7]
	mov r4, r8
	ldr r3, [r4]
	lsls r1, r1, #2
	adds r1, r1, r3
	ldr r3, [r1]
	str r3, [r2, #0x38]
	ldrh r1, [r3]
	lsls r1, r1, #8
	str r1, [r2, #0x44]
	ldrh r1, [r3, #2]
	lsls r1, r1, #8
	str r1, [r2, #0x48]
	ldrh r3, [r3, #4]
	adds r6, #1
	adds r1, r0, r6
	strb r3, [r1]
	mov r7, sl
	strh r7, [r2, #0x36]
	ldr r1, [r2, #0x38]
	adds r1, #6
	str r1, [r2, #0x38]
	ldr r1, _080421E4 @ =0x0300000C
	adds r0, r0, r1
	ldr r1, [r2, #0x3c]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r2, #0x40]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r2, #2
	rsbs r2, r2, #0
	adds r1, r2, #0
	mov r3, sb
	strb r1, [r3]
	bl sub_80424B0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080421D0: .4byte gUnknown_030008A0
_080421D4: .4byte sub_80421E8
_080421D8: .4byte sub_80425E4
_080421DC: .4byte 0x03000034
_080421E0: .4byte gUnknown_08E2EC5C
_080421E4: .4byte 0x0300000C

	thumb_func_start sub_80421E8
sub_80421E8: @ 0x080421E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r0, #0
	str r0, [sp, #4]
	mov sb, r0
	ldr r0, _08042230 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r2, _08042234 @ =0x03000035
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r2, r0, #4
	ldr r0, _08042238 @ =0x03000034
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _08042310
	ldr r1, [r6, #0x3c]
	str r1, [sp, #4]
	ldr r0, [r6, #0x40]
	mov sb, r0
	ldr r7, [r6, #0x44]
	cmp r1, r7
	bge _0804223C
	adds r0, r2, r1
	str r0, [r6, #0x3c]
	lsls r2, r2, #0x10
	b _0804224A
	.align 2, 0
_08042230: .4byte gCurTask
_08042234: .4byte 0x03000035
_08042238: .4byte 0x03000034
_0804223C:
	lsls r2, r2, #0x10
	ldr r1, [sp, #4]
	cmp r1, r7
	ble _0804224A
	asrs r0, r2, #0x10
	subs r0, r1, r0
	str r0, [r6, #0x3c]
_0804224A:
	ldr r1, [r6, #0x40]
	ldr r5, [r6, #0x48]
	cmp r1, r5
	bge _08042258
	asrs r0, r2, #0x10
	adds r0, r1, r0
	b _08042260
_08042258:
	cmp r1, r5
	ble _08042262
	asrs r0, r2, #0x10
	subs r0, r1, r0
_08042260:
	str r0, [r6, #0x40]
_08042262:
	asrs r3, r2, #0x10
	ldr r1, [r6, #0x3c]
	subs r0, r1, r7
	cmp r0, #0
	blt _08042272
	cmp r0, r3
	blt _08042278
	b _0804227A
_08042272:
	subs r0, r7, r1
	cmp r0, r3
	bge _0804227A
_08042278:
	str r7, [r6, #0x3c]
_0804227A:
	asrs r2, r2, #0x10
	ldr r1, [r6, #0x40]
	subs r0, r1, r5
	cmp r0, #0
	blt _0804228A
	cmp r0, r2
	blt _08042290
	b _08042292
_0804228A:
	subs r0, r5, r1
	cmp r0, r2
	bge _08042292
_08042290:
	str r5, [r6, #0x40]
_08042292:
	ldr r2, [r6, #0x38]
	ldrh r3, [r2]
	ldr r0, _080422D8 @ =0x0000FFFF
	cmp r3, r0
	beq _08042300
	ldrh r1, [r2, #2]
	cmp r1, r0
	beq _08042300
	ldr r0, [r6, #0x3c]
	cmp r0, r7
	bne _08042300
	ldr r0, [r6, #0x40]
	cmp r0, r5
	bne _08042300
	ldr r0, _080422DC @ =0x0000FFFE
	cmp r3, r0
	bne _080422E6
	ldrh r0, [r6, #0x36]
	cmp r1, r0
	bhi _080422E0
	movs r0, #0
	strh r0, [r6, #0x36]
	adds r1, r2, #6
	str r1, [r6, #0x38]
	ldrh r0, [r2, #6]
	lsls r0, r0, #8
	str r0, [r6, #0x44]
	ldrh r0, [r1, #2]
	lsls r0, r0, #8
	str r0, [r6, #0x48]
	ldrh r0, [r1, #4]
	adds r1, r6, #0
	adds r1, #0x35
	strb r0, [r1]
	b _080422FA
	.align 2, 0
_080422D8: .4byte 0x0000FFFF
_080422DC: .4byte 0x0000FFFE
_080422E0:
	adds r0, #1
	strh r0, [r6, #0x36]
	b _08042300
_080422E6:
	ldrh r0, [r2]
	lsls r0, r0, #8
	str r0, [r6, #0x44]
	ldrh r0, [r2, #2]
	lsls r0, r0, #8
	str r0, [r6, #0x48]
	ldrh r0, [r2, #4]
	adds r2, r6, #0
	adds r2, #0x35
	strb r0, [r2]
_080422FA:
	ldr r0, [r6, #0x38]
	adds r0, #6
	str r0, [r6, #0x38]
_08042300:
	ldr r0, [r6, #0x3c]
	ldr r2, [sp, #4]
	subs r2, r2, r0
	str r2, [sp, #4]
	ldr r0, [r6, #0x40]
	mov r1, sb
	subs r1, r1, r0
	mov sb, r1
_08042310:
	movs r2, #0xc
	adds r2, r2, r6
	mov sl, r2
	movs r1, #0
_08042318:
	lsls r0, r1, #0x10
	mov r8, r0
	cmp r0, #0
	bne _0804232C
	ldr r0, _08042328 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _08042336
	.align 2, 0
_08042328: .4byte gUnknown_030008A0
_0804232C:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_08042336:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0804237C @ =gUnknown_030015C0
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	beq _08042350
	b _0804248C
_08042350:
	ldr r1, [r4, #4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08042394
	ldr r0, [r4, #0x6c]
	cmp r0, sl
	bne _08042394
	ldr r0, [r4, #0x10]
	ldr r2, [sp, #4]
	subs r0, r0, r2
	str r0, [r4, #0x10]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r1, r0
	cmp r1, #0
	beq _08042380
	movs r0, #0x80
	lsls r0, r0, #2
	add sb, r0
	b _08042384
	.align 2, 0
_0804237C: .4byte gUnknown_030015C0
_08042380:
	ldr r1, _080423E8 @ =0xFFFFFE00
	add sb, r1
_08042384:
	ldr r0, [r4, #0x14]
	mov r2, sb
	subs r0, r0, r2
	str r0, [r4, #0x14]
	adds r1, r6, #0
	adds r1, #0x34
	movs r0, #1
	strb r0, [r1]
_08042394:
	ldr r1, [r6, #0x3c]
	asrs r1, r1, #8
	ldr r2, [r6, #0x40]
	asrs r2, r2, #8
	movs r0, #1
	str r0, [sp]
	mov r0, sl
	adds r3, r4, #0
	bl sub_8020950
	adds r5, r0, #0
	movs r2, #0x80
	lsls r2, r2, #9
	ands r0, r2
	cmp r0, #0
	beq _080423EC
	lsls r1, r5, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	ldr r1, [r6, #0x40]
	ldr r0, [r6, #0x48]
	cmp r1, r0
	beq _0804241C
	cmp r1, r0
	ble _0804241C
	adds r0, r4, #0
	bl sub_801226C
	cmp r0, #0
	bge _0804241C
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _0804241C
	adds r0, r4, #0
	bl sub_8008E38
	b _0804241C
	.align 2, 0
_080423E8: .4byte 0xFFFFFE00
_080423EC:
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r5
	cmp r0, #0
	beq _0804241C
	lsls r0, r5, #0x18
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x14]
	adds r1, r1, r0
	str r1, [r4, #0x14]
	ldr r0, [r4, #4]
	ands r0, r2
	cmp r0, #0
	beq _08042410
	ldr r2, _0804240C @ =0xFFFFFF00
	b _08042414
	.align 2, 0
_0804240C: .4byte 0xFFFFFF00
_08042410:
	movs r2, #0x80
	lsls r2, r2, #1
_08042414:
	adds r0, r1, r2
	str r0, [r4, #0x14]
	movs r0, #0
	strh r0, [r4, #0x1a]
_0804241C:
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r5
	cmp r0, #0
	beq _0804248C
	lsls r0, r5, #0x10
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	ldr r1, [r4, #0x10]
	adds r3, r1, r0
	str r3, [r4, #0x10]
	movs r0, #0
	strh r0, [r4, #0x18]
	ldr r0, [r4, #4]
	movs r2, #4
	ands r2, r0
	adds r7, r0, #0
	cmp r2, #0
	bne _0804248C
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r5
	cmp r0, #0
	beq _08042464
	ldrh r1, [r4, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08042464
	ldr r1, _08042460 @ =0xFFFFFF00
	adds r0, r3, r1
	str r0, [r4, #0x10]
	strh r2, [r4, #0x1c]
	b _08042486
	.align 2, 0
_08042460: .4byte 0xFFFFFF00
_08042464:
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r5
	cmp r0, #0
	beq _0804248C
	ldrh r1, [r4, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0804248C
	ldr r0, [r4, #0x10]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r4, #0x10]
	movs r0, #0
	strh r0, [r4, #0x1c]
_08042486:
	movs r0, #0x40
	orrs r0, r7
	str r0, [r4, #4]
_0804248C:
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, r8
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _0804249C
	b _08042318
_0804249C:
	bl sub_8042520
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80424B0
sub_80424B0: @ 0x080424B0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080424C4 @ =gUnknown_030008A0
	ldrb r0, [r0, #9]
	cmp r0, #2
	beq _080424C8
	cmp r0, #5
	beq _080424DC
	b _08042514
	.align 2, 0
_080424C4: .4byte gUnknown_030008A0
_080424C8:
	movs r0, #0x15
	bl VramMalloc
	str r0, [r4]
	movs r1, #0
	ldr r0, _080424D8 @ =0x00000382
	b _080424E8
	.align 2, 0
_080424D8: .4byte 0x00000382
_080424DC:
	movs r0, #0x15
	bl VramMalloc
	str r0, [r4]
	movs r1, #0
	ldr r0, _0804251C @ =0x000003AE
_080424E8:
	strh r0, [r4, #0xc]
	strb r1, [r4, #0x1a]
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
_08042514:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804251C: .4byte 0x000003AE

	thumb_func_start sub_8042520
sub_8042520: @ 0x08042520
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _0804257C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	adds r0, #0xc
	adds r6, r1, r0
	ldr r1, [r7]
	mov r8, r1
	ldr r0, [r7, #0x3c]
	asrs r0, r0, #8
	ldr r2, _08042580 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r6, #0x10]
	ldr r1, [r7, #0x40]
	asrs r1, r1, #8
	ldr r2, [r2, #4]
	subs r1, r1, r2
	strh r1, [r6, #0x12]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_802C1D0
	cmp r0, #0
	bne _080425CC
	movs r1, #0
	ldr r2, _08042584 @ =gUnknown_030015C0
_08042566:
	lsls r0, r1, #0x10
	adds r5, r0, #0
	cmp r5, #0
	beq _08042588
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0804258C
	.align 2, 0
_0804257C: .4byte gCurTask
_08042580: .4byte gCamera
_08042584: .4byte gUnknown_030015C0
_08042588:
	ldr r0, _080425C4 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_0804258C:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r2
	adds r0, r6, #0
	adds r1, r4, #0
	str r2, [sp]
	bl sub_80213B0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp]
	cmp r0, #1
	ble _08042566
	ldrb r0, [r7, #0xa]
	mov r1, r8
	strb r0, [r1]
	ldr r0, _080425C8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080425D8
	.align 2, 0
_080425C4: .4byte gUnknown_030008A0
_080425C8: .4byte gCurTask
_080425CC:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_080425D8:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80425E4
sub_80425E4: @ 0x080425E4
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl VramFree
	pop {r0}
	bx r0

.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

@ Very similar to sub_8079468
	thumb_func_start sub_8079194
sub_8079194: @ 0x08079194
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	str r0, [sp, #0x24]
	adds r4, r1, #0
	str r3, [sp, #0x28]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sl, r2
	ldr r1, _080793B4 @ =gUnknown_080D5AE4
	add r0, sp, #0x10
	movs r2, #4
	bl memcpy
	add r1, sp, #0x20
	movs r0, #4
	strh r0, [r1]
	subs r4, #1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r8, r4
	lsls r0, r4, #0x10
	cmp r0, #0
	bge _080791D0
	b _08079454
_080791D0:
	asrs r0, r0, #0xe
	ldr r1, [sp, #0x24]
	adds r0, r0, r1
	ldr r5, [r0]
	ldr r6, [r5, #0xc]
	ldr r7, [r5, #8]
	ldrh r0, [r5, #0x12]
	adds r0, #0x40
	movs r2, #0
	strh r0, [r5, #0x12]
	movs r3, #0x10
	ldrsh r0, [r5, r3]
	adds r6, r6, r0
	movs r1, #0x12
	ldrsh r0, [r5, r1]
	adds r7, r7, r0
	asrs r0, r7, #8
	asrs r1, r6, #8
	str r2, [sp]
	ldr r2, _080793B8 @ =sa2__sub_801EE64
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801F07C
	adds r2, r0, #0
	cmp r2, #0
	bge _0807922A
	movs r3, #0x12
	ldrsh r0, [r5, r3]
	cmp r0, #0
	ble _0807922A
	lsls r1, r0, #6
	subs r0, r0, r1
	asrs r0, r0, #6
	strh r0, [r5, #0x12]
	movs r3, #0x10
	ldrsh r1, [r5, r3]
	lsls r0, r1, #6
	subs r0, r0, r1
	asrs r0, r0, #6
	strh r0, [r5, #0x10]
	adds r0, r2, #1
	lsls r0, r0, #8
	adds r7, r7, r0
_0807922A:
	ldr r0, _080793BC @ =gCamera
	ldr r1, [r0]
	asrs r4, r6, #8
	cmp r1, r4
	ble _0807923C
	movs r2, #0x10
	ldrsh r0, [r5, r2]
	cmp r0, #0
	blt _0807924C
_0807923C:
	adds r0, r1, #0
	adds r0, #0xf0
	cmp r0, r4
	bge _08079254
	movs r3, #0x10
	ldrsh r0, [r5, r3]
	cmp r0, #0
	ble _08079254
_0807924C:
	movs r1, #0x10
	ldrsh r0, [r5, r1]
	rsbs r0, r0, #0
	strh r0, [r5, #0x10]
_08079254:
	str r6, [r5, #0xc]
	str r7, [r5, #8]
	ldr r0, _080793C0 @ =gStageData
	mov r3, r8
	lsls r2, r3, #0x10
	asrs r1, r2, #0xd
	ldr r0, [r0, #0x1c]
	adds r3, r0, r1
	movs r0, #0x1f
	ands r3, r0
	mov sb, r2
	cmp r3, #0
	bne _0807928A
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	lsls r2, r7, #8
	asrs r2, r2, #0x10
	str r3, [sp]
	movs r0, #0x14
	str r0, [sp, #4]
	str r3, [sp, #8]
	ldr r0, [sp, #0x28]
	str r0, [sp, #0xc]
	movs r0, #6
	movs r3, #0
	bl sub_8079758
_0807928A:
	ldr r1, _080793BC @ =gCamera
	ldr r0, [r1]
	lsls r0, r0, #8
	subs r6, r6, r0
	ldr r0, [r1, #4]
	lsls r0, r0, #8
	subs r7, r7, r0
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _080792AC
	adds r0, r5, #0
	adds r0, #0x30
	ldrb r1, [r5, #2]
	mov r2, sl
	ldr r3, [sp, #0x28]
	bl sub_8079194
_080792AC:
	movs r1, #0x2c
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _080792BA
	ldrh r0, [r5, #0x2c]
	mov r2, sp
	strh r0, [r2, #0x20]
_080792BA:
	ldr r4, [r5, #0x14]
	cmp r4, #0
	bne _080792C2
	b _08079444
_080792C2:
	ldr r3, [r5, #0x18]
	mov ip, r3
	ldr r1, [r3]
	movs r0, #4
	ands r1, r0
	ldr r3, [r4, #8]
	cmp r1, #0
	beq _080792DE
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _080792DE
	b _08079444
_080792DE:
	ldr r2, _080793C4 @ =0xFFFFCFFF
	ands r2, r3
	str r2, [r4, #8]
	ldr r1, [r5, #4]
	movs r3, #0xc0
	lsls r3, r3, #0x10
	ands r1, r3
	lsrs r1, r1, #0x16
	mov r8, r1
	mov r1, ip
	ldr r0, [r1]
	ands r0, r3
	lsrs r0, r0, #0x16
	mov r3, r8
	adds r1, r3, r0
	lsls r1, r1, #0xc
	orrs r2, r1
	str r2, [r4, #8]
	ldr r1, [r5, #4]
	ldr r2, _080793C8 @ =0x003FE000
	ands r1, r2
	lsrs r1, r1, #0xd
	mov r3, ip
	ldr r0, [r3]
	ands r0, r2
	lsrs r0, r0, #0xd
	adds r1, r1, r0
	lsls r1, r1, #6
	strh r1, [r4, #0x14]
	ldr r0, [r5, #0x18]
	ldr r0, [r0]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080793E2
	mov r0, sp
	ldrh r0, [r0, #0x20]
	mov r8, r0
	mov r1, sp
	movs r2, #0x20
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bne _08079350
	ldr r0, [r5, #0x14]
	ldr r0, [r0, #8]
	movs r1, #0xc0
	lsls r1, r1, #9
	ands r0, r1
	lsrs r0, r0, #0xf
	cmp r0, #1
	bls _080793E2
	ldr r0, _080793CC @ =gDispCnt
	ldrh r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080793E2
_08079350:
	ldr r4, [r5, #0x14]
	ldr r1, [r4, #8]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #8]
	ldr r3, _080793D0 @ =gNextFreeAffineIndex
	ldrb r2, [r3]
	movs r0, #0x20
	orrs r0, r2
	orrs r1, r0
	str r1, [r4, #8]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	ldr r2, [r5, #0x14]
	ldr r0, [r2, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r2, #8]
	add r3, sp, #0x14
	mov r0, r8
	strh r0, [r3]
	add r0, sp, #0x10
	ldrh r0, [r0]
	strh r0, [r3, #2]
	add r0, sp, #0x10
	ldrh r0, [r0, #2]
	strh r0, [r3, #4]
	asrs r0, r6, #8
	strh r0, [r3, #6]
	asrs r0, r7, #8
	strh r0, [r3, #8]
	ldr r0, [r5, #0x20]
	ldr r0, [r0, #4]
	movs r1, #0xf0
	lsls r1, r1, #0x18
	ands r0, r1
	cmp r0, #0
	beq _080793D8
	ldr r0, [r5, #0x14]
	ldr r2, [r0, #8]
	lsrs r2, r2, #0xf
	lsls r2, r2, #4
	ldr r1, _080793D4 @ =gEmptyTask
	adds r2, r2, r1
	adds r1, r3, #0
	bl sub_80BECF8
	b _08079422
	.align 2, 0
_080793B4: .4byte gUnknown_080D5AE4
_080793B8: .4byte sa2__sub_801EE64
_080793BC: .4byte gCamera
_080793C0: .4byte gStageData
_080793C4: .4byte 0xFFFFCFFF
_080793C8: .4byte 0x003FE000
_080793CC: .4byte gDispCnt
_080793D0: .4byte gNextFreeAffineIndex
_080793D4: .4byte gEmptyTask
_080793D8:
	ldr r0, [r5, #0x14]
	adds r1, r3, #0
	bl TransformSprite
	b _08079422
_080793E2:
	ldr r1, [r5, #0x14]
	asrs r0, r6, #8
	strh r0, [r1, #0x10]
	ldr r1, [r5, #0x14]
	asrs r0, r7, #8
	strh r0, [r1, #0x12]
	ldr r3, [r5, #0x14]
	ldr r2, [r3, #8]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r2, r0
	str r2, [r3, #8]
	ldr r0, [r5, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0807940C
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r2, r0
	str r2, [r3, #8]
_0807940C:
	ldr r0, [r5, #4]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08079422
	ldr r0, [r5, #0x14]
	ldr r1, [r0, #8]
	movs r2, #0x80
	lsls r2, r2, #4
	orrs r1, r2
	str r1, [r0, #8]
_08079422:
	mov r1, sl
	cmp r1, #0
	beq _08079444
	ldr r2, [r5, #0x14]
	ldr r0, [r2, #8]
	movs r1, #0xc0
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0807943E
	adds r0, r2, #0
	bl sub_80BE46C
	b _08079444
_0807943E:
	adds r0, r2, #0
	bl DisplaySprite
_08079444:
	ldr r0, _08079464 @ =0xFFFF0000
	add r0, sb
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _08079454
	b _080791D0
_08079454:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08079464: .4byte 0xFFFF0000

@ Very similar to sub_8079194
	thumb_func_start sub_8079468
sub_8079468: @ 0x08079468
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	str r0, [sp, #0x24]
	adds r4, r1, #0
	str r3, [sp, #0x28]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sl, r2
	ldr r1, _080796A0 @ =gUnknown_080D5AE4
	add r0, sp, #0x10
	movs r2, #4
	bl memcpy
	add r1, sp, #0x20
	movs r0, #4
	strh r0, [r1]
	subs r4, #1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r8, r4
	lsls r0, r4, #0x10
	cmp r0, #0
	bge _080794A4
	b _08079744
_080794A4:
	asrs r0, r0, #0xe
	ldr r1, [sp, #0x24]
	adds r0, r0, r1
	ldr r5, [r0]
	ldr r6, [r5, #0xc]
	ldr r7, [r5, #8]
	ldrh r2, [r5, #0x12]
	adds r1, r2, #0
	adds r1, #0x40
	movs r3, #0
	strh r1, [r5, #0x12]
	movs r4, #0x10
	ldrsh r0, [r5, r4]
	adds r6, r6, r0
	movs r4, #0x12
	ldrsh r0, [r5, r4]
	adds r7, r7, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, _080796A4 @ =0xFFFFFC00
	cmp r1, r0
	bge _080794D8
	movs r1, #0x88
	lsls r1, r1, #3
	adds r0, r2, r1
	strh r0, [r5, #0x12]
_080794D8:
	asrs r0, r7, #8
	asrs r1, r6, #8
	str r3, [sp]
	ldr r2, _080796A8 @ =sa2__sub_801EE64
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801F07C
	adds r2, r0, #0
	cmp r2, #0
	bge _08079512
	movs r3, #0x12
	ldrsh r0, [r5, r3]
	cmp r0, #0
	ble _08079512
	lsls r1, r0, #6
	subs r0, r0, r1
	asrs r0, r0, #6
	strh r0, [r5, #0x12]
	movs r0, #0x10
	ldrsh r1, [r5, r0]
	lsls r0, r1, #6
	subs r0, r0, r1
	asrs r0, r0, #6
	strh r0, [r5, #0x10]
	adds r0, r2, #1
	lsls r0, r0, #8
	adds r7, r7, r0
_08079512:
	ldr r0, _080796AC @ =gCamera
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x10
	asrs r4, r6, #8
	cmp r0, r4
	ble _08079528
	movs r2, #0x10
	ldrsh r0, [r5, r2]
	cmp r0, #0
	blt _08079538
_08079528:
	adds r0, r1, #0
	adds r0, #0xe0
	cmp r0, r4
	bge _08079540
	movs r3, #0x10
	ldrsh r0, [r5, r3]
	cmp r0, #0
	ble _08079540
_08079538:
	movs r1, #0x10
	ldrsh r0, [r5, r1]
	rsbs r0, r0, #0
	strh r0, [r5, #0x10]
_08079540:
	str r6, [r5, #0xc]
	str r7, [r5, #8]
	ldr r0, _080796B0 @ =gStageData
	mov r3, r8
	lsls r2, r3, #0x10
	asrs r1, r2, #0xd
	ldr r0, [r0, #0x1c]
	adds r3, r0, r1
	movs r0, #0x1f
	ands r3, r0
	mov sb, r2
	cmp r3, #0
	bne _08079576
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	lsls r2, r7, #8
	asrs r2, r2, #0x10
	str r3, [sp]
	movs r0, #0x14
	str r0, [sp, #4]
	str r3, [sp, #8]
	ldr r4, [sp, #0x28]
	str r4, [sp, #0xc]
	movs r0, #6
	movs r3, #0
	bl sub_8079758
_08079576:
	ldr r1, _080796AC @ =gCamera
	ldr r0, [r1]
	lsls r0, r0, #8
	subs r6, r6, r0
	ldr r0, [r1, #4]
	lsls r0, r0, #8
	subs r7, r7, r0
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _08079598
	adds r0, r5, #0
	adds r0, #0x30
	ldrb r1, [r5, #2]
	mov r2, sl
	ldr r3, [sp, #0x28]
	bl sub_8079194
_08079598:
	movs r1, #0x2c
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _080795A6
	ldrh r0, [r5, #0x2c]
	mov r2, sp
	strh r0, [r2, #0x20]
_080795A6:
	ldr r4, [r5, #0x14]
	cmp r4, #0
	bne _080795AE
	b _08079734
_080795AE:
	ldr r3, [r5, #0x18]
	mov ip, r3
	ldr r1, [r3]
	movs r0, #4
	ands r1, r0
	ldr r3, [r4, #8]
	cmp r1, #0
	beq _080795CA
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _080795CA
	b _08079734
_080795CA:
	ldr r2, _080796B4 @ =0xFFFFCFFF
	ands r2, r3
	str r2, [r4, #8]
	ldr r1, [r5, #4]
	movs r3, #0xc0
	lsls r3, r3, #0x10
	ands r1, r3
	lsrs r1, r1, #0x16
	mov r8, r1
	mov r1, ip
	ldr r0, [r1]
	ands r0, r3
	lsrs r0, r0, #0x16
	mov r3, r8
	adds r1, r3, r0
	lsls r1, r1, #0xc
	orrs r2, r1
	str r2, [r4, #8]
	ldr r1, [r5, #4]
	ldr r2, _080796B8 @ =0x003FE000
	ands r1, r2
	lsrs r1, r1, #0xd
	mov r3, ip
	ldr r0, [r3]
	ands r0, r2
	lsrs r0, r0, #0xd
	adds r1, r1, r0
	lsls r1, r1, #6
	strh r1, [r4, #0x14]
	ldr r0, [r5, #0x18]
	ldr r0, [r0]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080796D2
	mov r4, sp
	ldrh r4, [r4, #0x20]
	mov r8, r4
	mov r1, sp
	movs r2, #0x20
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bne _0807963C
	ldr r0, [r5, #0x14]
	ldr r0, [r0, #8]
	movs r1, #0xc0
	lsls r1, r1, #9
	ands r0, r1
	lsrs r0, r0, #0xf
	cmp r0, #1
	bls _080796D2
	ldr r0, _080796BC @ =gDispCnt
	ldrh r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080796D2
_0807963C:
	ldr r4, [r5, #0x14]
	ldr r1, [r4, #8]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #8]
	ldr r3, _080796C0 @ =gNextFreeAffineIndex
	ldrb r2, [r3]
	movs r0, #0x20
	orrs r0, r2
	orrs r1, r0
	str r1, [r4, #8]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	ldr r2, [r5, #0x14]
	ldr r0, [r2, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r2, #8]
	add r3, sp, #0x14
	mov r4, r8
	strh r4, [r3]
	add r0, sp, #0x10
	ldrh r0, [r0]
	strh r0, [r3, #2]
	add r0, sp, #0x10
	ldrh r0, [r0, #2]
	strh r0, [r3, #4]
	asrs r0, r6, #8
	strh r0, [r3, #6]
	asrs r0, r7, #8
	strh r0, [r3, #8]
	ldr r0, [r5, #0x20]
	ldr r0, [r0, #4]
	movs r1, #0xf0
	lsls r1, r1, #0x18
	ands r0, r1
	cmp r0, #0
	beq _080796C8
	ldr r0, [r5, #0x14]
	ldr r2, [r0, #8]
	lsrs r2, r2, #0xf
	lsls r2, r2, #4
	ldr r1, _080796C4 @ =gEmptyTask
	adds r2, r2, r1
	adds r1, r3, #0
	bl sub_80BECF8
	b _08079712
	.align 2, 0
_080796A0: .4byte gUnknown_080D5AE4
_080796A4: .4byte 0xFFFFFC00
_080796A8: .4byte sa2__sub_801EE64
_080796AC: .4byte gCamera
_080796B0: .4byte gStageData
_080796B4: .4byte 0xFFFFCFFF
_080796B8: .4byte 0x003FE000
_080796BC: .4byte gDispCnt
_080796C0: .4byte gNextFreeAffineIndex
_080796C4: .4byte gEmptyTask
_080796C8:
	ldr r0, [r5, #0x14]
	adds r1, r3, #0
	bl TransformSprite
	b _08079712
_080796D2:
	ldr r1, [r5, #0x14]
	asrs r0, r6, #8
	strh r0, [r1, #0x10]
	ldr r1, [r5, #0x14]
	asrs r0, r7, #8
	strh r0, [r1, #0x12]
	ldr r3, [r5, #0x14]
	ldr r2, [r3, #8]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r2, r0
	str r2, [r3, #8]
	ldr r0, [r5, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080796FC
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r2, r0
	str r2, [r3, #8]
_080796FC:
	ldr r0, [r5, #4]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08079712
	ldr r0, [r5, #0x14]
	ldr r1, [r0, #8]
	movs r2, #0x80
	lsls r2, r2, #4
	orrs r1, r2
	str r1, [r0, #8]
_08079712:
	mov r0, sl
	cmp r0, #0
	beq _08079734
	ldr r2, [r5, #0x14]
	ldr r0, [r2, #8]
	movs r1, #0xc0
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0807972E
	adds r0, r2, #0
	bl sub_80BE46C
	b _08079734
_0807972E:
	adds r0, r2, #0
	bl DisplaySprite
_08079734:
	ldr r0, _08079754 @ =0xFFFF0000
	add r0, sb
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _08079744
	b _080794A4
_08079744:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08079754: .4byte 0xFFFF0000

	thumb_func_start sub_8079758
sub_8079758: @ 0x08079758
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r4, r3, #0
	ldr r6, [sp, #0x30]
	ldr r5, [sp, #0x34]
	ldr r3, [sp, #0x38]
	mov r8, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #4]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #8]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r0, _0807980C @ =Task_38_807989C
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08079810 @ =TaskDestructor_38_807A4E4
	str r1, [sp]
	movs r1, #0x38
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #0xc]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov sb, r0
	ldr r2, _08079814 @ =0x03000010
	adds r7, r1, r2
	strb r5, [r0, #0xe]
	ldr r2, _08079818 @ =gSineTable
	ldr r1, _0807981C @ =0x000003FF
	ands r1, r6
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r1, r3
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r5, #0
	ldrsh r0, [r0, r5]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	muls r0, r4, r0
	asrs r0, r0, #0xe
	mov r3, sb
	strh r0, [r3, #8]
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r5, #0
	ldrsh r0, [r1, r5]
	muls r0, r4, r0
	asrs r0, r0, #0xe
	strh r0, [r3, #0xa]
	mov r0, r8
	strh r0, [r3, #0xc]
	ldr r1, [sp, #0x3c]
	cmp r1, #0
	beq _08079824
	movs r0, #0
	strb r0, [r3, #0xf]
	ldr r1, _08079820 @ =gUnknown_080D5A6C
	mov r3, sl
	lsls r2, r3, #1
	adds r0, r2, r3
	lsls r0, r0, #2
	adds r1, #8
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r5, [sp, #0x3c]
	adds r0, r5, r0
	adds r4, r2, #0
	b _0807983E
	.align 2, 0
_0807980C: .4byte Task_38_807989C
_08079810: .4byte TaskDestructor_38_807A4E4
_08079814: .4byte 0x03000010
_08079818: .4byte gSineTable
_0807981C: .4byte 0x000003FF
_08079820: .4byte gUnknown_080D5A6C
_08079824:
	movs r0, #1
	mov r1, sb
	strb r0, [r1, #0xf]
	ldr r1, _08079898 @ =gUnknown_080D5A6C
	mov r2, sl
	lsls r4, r2, #1
	adds r0, r4, r2
	lsls r0, r0, #2
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramMalloc
_0807983E:
	str r0, [r7]
	movs r3, #0
	movs r2, #0
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r7, #0x14]
	ldr r1, _08079898 @ =gUnknown_080D5A6C
	mov r5, sl
	adds r0, r4, r5
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	strh r1, [r7, #0xc]
	ldrb r0, [r0, #2]
	strb r0, [r7, #0x1a]
	strh r2, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	strb r3, [r7, #0x1f]
	strh r2, [r7, #0x10]
	strh r2, [r7, #0x12]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r7, #8]
	ldr r1, [sp, #4]
	lsls r0, r1, #0x10
	asrs r0, r0, #8
	mov r2, sb
	str r0, [r2]
	ldr r3, [sp, #8]
	lsls r0, r3, #0x10
	asrs r0, r0, #8
	str r0, [r2, #4]
	ldr r0, [sp, #0xc]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08079898: .4byte gUnknown_080D5A6C

	thumb_func_start Task_38_807989C
Task_38_807989C: @ 0x0807989C
	push {r4, lr}
	ldr r0, _080798BC @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	adds r0, #0x10
	adds r4, r1, r0
	ldrb r0, [r3, #0xe]
	cmp r0, #0
	bne _080798C0
	adds r0, r2, #0
	bl TaskDestroy
	b _08079900
	.align 2, 0
_080798BC: .4byte gCurTask
_080798C0:
	subs r0, #1
	strb r0, [r3, #0xe]
	ldrh r0, [r3, #0xc]
	ldrh r1, [r3, #0xa]
	adds r0, r0, r1
	strh r0, [r3, #0xa]
	movs r1, #8
	ldrsh r0, [r3, r1]
	ldr r1, [r3]
	adds r1, r1, r0
	str r1, [r3]
	movs r0, #0xa
	ldrsh r2, [r3, r0]
	ldr r0, [r3, #4]
	adds r0, r0, r2
	str r0, [r3, #4]
	asrs r1, r1, #8
	ldr r2, _08079908 @ =gCamera
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r4, #0x10]
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08079900:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08079908: .4byte gCamera

	thumb_func_start Task_C8_807990C
Task_C8_807990C: @ 0x0807990C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _08079980 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	movs r5, #0
	mov r8, r2
	adds r0, #4
	adds r0, r0, r1
	mov ip, r0
	ldr r3, _08079984 @ =gCamera
	ldr r0, _08079988 @ =0x03000008
	adds r7, r1, r0
_0807992E:
	lsls r2, r5, #3
	subs r0, r2, r5
	lsls r0, r0, #3
	adds r0, #0x1c
	adds r4, r6, r0
	mov r1, ip
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r1, [r3]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	adds r2, r7, r2
	ldr r0, [r2]
	ldr r1, [r3, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _0807992E
	ldrh r0, [r6]
	adds r0, #1
	strh r0, [r6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x96
	bhi _08079968
	b _08079A84
_08079968:
	movs r0, #0
	strh r0, [r6]
	ldr r0, _0807998C @ =gStageData
	ldrb r0, [r0, #9]
	cmp r0, #8
	bls _08079976
	b _08079A7C
_08079976:
	lsls r0, r0, #2
	ldr r1, _08079990 @ =_08079994
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08079980: .4byte gCurTask
_08079984: .4byte gCamera
_08079988: .4byte 0x03000008
_0807998C: .4byte gStageData
_08079990: .4byte _08079994
_08079994: @ jump table
	.4byte _08079A7C @ case 0
	.4byte _080799B8 @ case 1
	.4byte _08079A7C @ case 2
	.4byte _080799D8 @ case 3
	.4byte _08079A40 @ case 4
	.4byte _08079A04 @ case 5
	.4byte _08079A7C @ case 6
	.4byte _08079A7C @ case 7
	.4byte _08079A7C @ case 8
_080799B8:
	adds r4, r6, #0
	adds r4, #0x8c
	movs r1, #0
	ldr r0, _080799D0 @ =0x0000050A @ ANIM_GEMERL_HOVER_AWAY
	strh r0, [r4, #0xc]
	strb r1, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _080799D4 @ =sub_8079C60
	b _08079A82
	.align 2, 0
_080799D0: .4byte 0x0000050A
_080799D4: .4byte sub_8079C60
_080799D8:
	adds r4, r6, #0
	adds r4, #0x8c
	movs r1, #0
	ldr r0, _080799FC @ =0x00000517 @ ANIM_GEMERL_HOVER_AWAY
	strh r0, [r4, #0xc]
	strb r1, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _08079A00 @ =sub_8079B8C
	b _08079A82
	.align 2, 0
_080799FC: .4byte 0x00000517
_08079A00: .4byte sub_8079B8C
_08079A04:
	adds r4, r6, #0
	adds r4, #0x1c
	movs r2, #0
	movs r1, #0
	movs r0, #0xb0
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	str r1, [r4, #8]
	adds r4, #0x38
	adds r0, #0x40
	strh r0, [r4, #0x14]
	str r1, [r4, #8]
	adds r4, #0x38
	ldr r0, _08079A38 @ =0x0000050A @ ANIM_GEMERL_HOVER_AWAY
	strh r0, [r4, #0xc]
	strb r2, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	str r1, [r4, #8]
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _08079A3C @ =sub_8079D40
	b _08079A82
	.align 2, 0
_08079A38: .4byte 0x0000050A
_08079A3C: .4byte sub_8079D40
_08079A40:
	adds r4, r6, #0
	adds r4, #0x1c
	movs r2, #0
	movs r1, #0
	movs r0, #0xb0
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	str r1, [r4, #8]
	adds r4, #0x38
	adds r0, #0x40
	strh r0, [r4, #0x14]
	str r1, [r4, #8]
	adds r4, #0x38
	ldr r0, _08079A74 @ =0x0000050A @ ANIM_GEMERL_HOVER_AWAY
	strh r0, [r4, #0xc]
	strb r2, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	str r1, [r4, #8]
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _08079A78 @ =sub_8079DFC
	b _08079A82
	.align 2, 0
_08079A74: .4byte 0x0000050A
_08079A78: .4byte sub_8079DFC
_08079A7C:
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _08079AB0 @ =sub_8079AB4
_08079A82:
	str r0, [r1, #8]
_08079A84:
	movs r5, #0
_08079A86:
	lsls r0, r5, #3
	subs r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x1c
	adds r4, r6, r0
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08079A86
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08079AB0: .4byte sub_8079AB4

	thumb_func_start sub_8079AB4
sub_8079AB4: @ 0x08079AB4
	push {r4, r5, r6, r7, lr}
	ldr r2, _08079B7C @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	movs r5, #0
	mov ip, r2
	ldr r7, _08079B80 @ =gCamera
_08079AC8:
	adds r3, r6, #0
	adds r3, #8
	cmp r5, #2
	beq _08079ADA
	lsls r1, r5, #3
	adds r1, r3, r1
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
_08079ADA:
	lsls r2, r5, #3
	subs r0, r2, r5
	lsls r0, r0, #3
	adds r0, #0x1c
	adds r4, r6, r0
	adds r0, r6, #4
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r1, [r7]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	adds r2, r3, r2
	ldr r0, [r2]
	ldr r1, [r7, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08079AC8
	ldrh r0, [r6]
	adds r0, #1
	strh r0, [r6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x32
	bls _08079B52
	adds r4, r6, #0
	adds r4, #0x1c
	movs r0, #8
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
	adds r4, #0x38
	ldr r0, [r4, #8]
	orrs r0, r1
	str r0, [r4, #8]
	adds r4, #0x38
	ldr r0, _08079B84 @ =0x0000050A @ ANIM_GEMERL_HOVER_AWAY
	strh r0, [r4, #0xc]
	movs r0, #0
	strb r0, [r4, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	ldr r0, [r4, #8]
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #0
	strh r0, [r6]
	mov r0, ip
	ldr r1, [r0]
	ldr r0, _08079B88 @ =Task_8079EDC
	str r0, [r1, #8]
_08079B52:
	movs r5, #0
_08079B54:
	lsls r0, r5, #3
	subs r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x1c
	adds r4, r6, r0
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08079B54
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08079B7C: .4byte gCurTask
_08079B80: .4byte gCamera
_08079B84: .4byte 0x0000050A
_08079B88: .4byte Task_8079EDC

	thumb_func_start sub_8079B8C
sub_8079B8C: @ 0x08079B8C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _08079C4C @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	movs r5, #0
	mov r8, r2
	adds r0, #8
	adds r0, r0, r1
	mov ip, r0
	ldr r3, _08079C50 @ =gCamera
	ldr r0, _08079C54 @ =0x03000004
	adds r7, r1, r0
_08079BAE:
	lsls r1, r5, #3
	mov r0, ip
	adds r2, r0, r1
	ldr r0, [r2]
	subs r0, #1
	str r0, [r2]
	subs r0, r1, r5
	lsls r0, r0, #3
	adds r0, #0x1c
	adds r4, r6, r0
	adds r1, r7, r1
	ldr r0, [r1]
	ldr r1, [r3]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r2]
	ldr r1, [r3, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08079BAE
	ldrh r0, [r6]
	adds r0, #1
	strh r0, [r6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x8c
	bls _08079C20
	adds r4, r6, #0
	adds r4, #0x1c
	movs r0, #8
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
	adds r4, #0x38
	ldr r0, [r4, #8]
	orrs r0, r1
	str r0, [r4, #8]
	adds r4, #0x38
	ldr r0, [r4, #8]
	ldr r1, _08079C58 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #0
	strh r0, [r6]
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _08079C5C @ =Task_8079EDC
	str r0, [r1, #8]
_08079C20:
	movs r5, #0
_08079C22:
	lsls r0, r5, #3
	subs r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x1c
	adds r4, r6, r0
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08079C22
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08079C4C: .4byte gCurTask
_08079C50: .4byte gCamera
_08079C54: .4byte 0x03000004
_08079C58: .4byte 0xFFFFFBFF
_08079C5C: .4byte Task_8079EDC

	thumb_func_start sub_8079C60
sub_8079C60: @ 0x08079C60
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _08079D2C @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	movs r5, #0
	mov r8, r2
	adds r0, #8
	adds r0, r0, r1
	mov ip, r0
	ldr r3, _08079D30 @ =gCamera
	ldr r0, _08079D34 @ =0x03000004
	adds r7, r1, r0
_08079C82:
	lsls r1, r5, #3
	mov r0, ip
	adds r2, r0, r1
	ldr r0, [r2]
	subs r0, #1
	str r0, [r2]
	subs r0, r1, r5
	lsls r0, r0, #3
	adds r0, #0x1c
	adds r4, r6, r0
	adds r1, r7, r1
	ldr r0, [r1]
	ldr r1, [r3]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r2]
	ldr r1, [r3, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08079C82
	ldrh r0, [r6]
	adds r0, #1
	strh r0, [r6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x64
	bls _08079D00
	adds r4, r6, #0
	adds r4, #0x1c
	movs r0, #8
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
	adds r4, #0x38
	ldr r0, [r4, #8]
	orrs r0, r1
	str r0, [r4, #8]
	adds r4, #0x38
	ldr r0, _08079D38 @ =0x0000050A @ ANIM_GEMERL_HOVER_AWAY
	strh r0, [r4, #0xc]
	movs r0, #0
	strb r0, [r4, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	ldr r0, [r4, #8]
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #0
	strh r0, [r6]
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _08079D3C @ =Task_8079EDC
	str r0, [r1, #8]
_08079D00:
	movs r5, #0
_08079D02:
	lsls r0, r5, #3
	subs r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x1c
	adds r4, r6, r0
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08079D02
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08079D2C: .4byte gCurTask
_08079D30: .4byte gCamera
_08079D34: .4byte 0x03000004
_08079D38: .4byte 0x0000050A
_08079D3C: .4byte Task_8079EDC

	thumb_func_start sub_8079D40
sub_8079D40: @ 0x08079D40
	push {r4, r5, r6, r7, lr}
	ldr r0, _08079DB4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	movs r5, #0
	adds r0, #8
	adds r0, r0, r1
	mov ip, r0
	ldr r3, _08079DB8 @ =gCamera
	ldr r0, _08079DBC @ =0x03000004
	adds r7, r1, r0
_08079D5C:
	lsls r1, r5, #3
	mov r0, ip
	adds r2, r0, r1
	ldr r0, [r2]
	subs r0, #1
	str r0, [r2]
	subs r0, r1, r5
	lsls r0, r0, #3
	adds r0, #0x1c
	adds r4, r6, r0
	adds r1, r7, r1
	ldr r0, [r1]
	ldr r1, [r3]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r2]
	ldr r1, [r3, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08079D5C
	ldrh r0, [r6]
	adds r2, r0, #1
	strh r2, [r6]
	lsls r1, r2, #0x10
	movs r0, #0xc8
	lsls r0, r0, #0x11
	cmp r1, r0
	bls _08079DC0
	adds r0, r6, #0
	adds r0, #0xc4
	ldr r0, [r0]
	cmp r0, #0
	beq _08079DAA
	bl _call_via_r0
_08079DAA:
	ldr r0, _08079DB4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08079DF0
	.align 2, 0
_08079DB4: .4byte gCurTask
_08079DB8: .4byte gCamera
_08079DBC: .4byte 0x03000004
_08079DC0:
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xa0
	bne _08079DCE
	ldr r0, _08079DF8 @ =0x0000027E @ VOICE__EGGMAN__YOURE_GOING_TO_PAY_FOR_THIS
	bl m4aSongNumStart
_08079DCE:
	movs r5, #0
_08079DD0:
	lsls r0, r5, #3
	subs r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x1c
	adds r4, r6, r0
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08079DD0
_08079DF0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08079DF8: .4byte 0x0000027E

	thumb_func_start sub_8079DFC
sub_8079DFC: @ 0x08079DFC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _08079EC8 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	movs r5, #0
	mov r8, r2
	adds r0, #8
	adds r0, r0, r1
	mov ip, r0
	ldr r3, _08079ECC @ =gCamera
	ldr r0, _08079ED0 @ =0x03000004
	adds r7, r1, r0
_08079E1E:
	lsls r1, r5, #3
	mov r0, ip
	adds r2, r0, r1
	ldr r0, [r2]
	subs r0, #1
	str r0, [r2]
	subs r0, r1, r5
	lsls r0, r0, #3
	adds r0, #0x1c
	adds r4, r6, r0
	adds r1, r7, r1
	ldr r0, [r1]
	ldr r1, [r3]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r2]
	ldr r1, [r3, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08079E1E
	ldrh r0, [r6]
	adds r0, #1
	strh r0, [r6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xb4
	bls _08079E9C
	adds r4, r6, #0
	adds r4, #0x1c
	movs r0, #8
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
	adds r4, #0x38
	ldr r0, [r4, #8]
	orrs r0, r1
	str r0, [r4, #8]
	adds r4, #0x38
	ldr r0, _08079ED4 @ =0x0000050A @ ANIM_GEMERL_HOVER_AWAY
	strh r0, [r4, #0xc]
	movs r0, #0
	strb r0, [r4, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	ldr r0, [r4, #8]
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #0
	strh r0, [r6]
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _08079ED8 @ =Task_8079EDC
	str r0, [r1, #8]
_08079E9C:
	movs r5, #0
_08079E9E:
	lsls r0, r5, #3
	subs r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x1c
	adds r4, r6, r0
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08079E9E
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08079EC8: .4byte gCurTask
_08079ECC: .4byte gCamera
_08079ED0: .4byte 0x03000004
_08079ED4: .4byte 0x0000050A
_08079ED8: .4byte Task_8079EDC

	thumb_func_start Task_8079EDC
Task_8079EDC: @ 0x08079EDC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r0, #1
	mov r8, r0
	ldr r0, _08079F5C @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	ldrh r0, [r6]
	cmp r0, #0
	bne _08079F08
	ldr r0, _08079F60 @ =0x0000027E @ VOICE__EGGMAN__YOURE_GOING_TO_PAY_FOR_THIS
	bl m4aSongNumStart
	mov r1, r8
	strh r1, [r6]
_08079F08:
	movs r5, #0
	ldr r2, _08079F64 @ =0x03000004
	adds r2, r4, r2
	str r2, [sp]
	ldr r0, _08079F68 @ =gCamera
	mov sb, r0
	ldr r1, _08079F6C @ =0x03000008
	adds r1, r1, r4
	mov sl, r1
	ldr r2, _08079F70 @ =gStageData
	mov ip, r2
	mov r7, sb
_08079F20:
	lsls r2, r5, #3
	ldr r1, [sp]
	adds r0, r1, r2
	ldr r1, [r0]
	adds r1, #1
	str r1, [r0]
	subs r0, r2, r5
	lsls r0, r0, #3
	adds r0, #0x1c
	adds r4, r6, r0
	ldr r0, [r7]
	subs r3, r1, r0
	strh r3, [r4, #0x10]
	add r2, sl
	ldr r0, [r2]
	ldr r1, [r7, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	mov r2, ip
	ldrb r0, [r2, #9]
	cmp r0, #1
	bne _08079F78
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	ldr r1, _08079F74 @ =0x0000013F
	cmp r0, r1
	bgt _08079F96
	movs r2, #0
	mov r8, r2
	b _08079F96
	.align 2, 0
_08079F5C: .4byte gCurTask
_08079F60: .4byte 0x0000027E
_08079F64: .4byte 0x03000004
_08079F68: .4byte gCamera
_08079F6C: .4byte 0x03000008
_08079F70: .4byte gStageData
_08079F74: .4byte 0x0000013F
_08079F78:
	movs r0, #0x10
	ldrsh r1, [r4, r0]
	mov r2, sb
	ldr r0, [r2]
	adds r1, r1, r0
	mov r2, ip
	ldrb r0, [r2, #9]
	lsls r0, r0, #1
	ldr r2, _08079FC0 @ =gUnknown_080D5AE8
	adds r0, r0, r2
	ldrh r0, [r0]
	cmp r1, r0
	bge _08079F96
	movs r0, #0
	mov r8, r0
_08079F96:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08079F20
	mov r1, r8
	cmp r1, #0
	beq _08079FC8
	adds r0, r6, #0
	adds r0, #0xc4
	ldr r0, [r0]
	cmp r0, #0
	beq _08079FB4
	bl _call_via_r0
_08079FB4:
	ldr r0, _08079FC4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08079FEA
	.align 2, 0
_08079FC0: .4byte gUnknown_080D5AE8
_08079FC4: .4byte gCurTask
_08079FC8:
	movs r5, #0
_08079FCA:
	lsls r0, r5, #3
	subs r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x1c
	adds r4, r6, r0
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08079FCA
_08079FEA:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8079FFC
sub_8079FFC: @ 0x08079FFC
	push {r4, lr}
	ldr r2, _0807A060 @ =gStageData
	ldrb r0, [r2, #3]
	cmp r0, #5
	bne _0807A06C
	movs r0, #0xb7
	adds r0, r0, r2
	mov ip, r0
	ldrb r3, [r0]
	cmp r3, #0
	bne _0807A054
	ldrb r1, [r2, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0807A064 @ =gPlayers
	adds r4, r0, r1
	adds r0, r2, #0
	adds r0, #0xb6
	strb r3, [r0]
	movs r0, #1
	mov r1, ip
	strb r0, [r1]
	ldr r1, _0807A068 @ =gCamera
	movs r2, #0
	ldrsh r0, [r1, r2]
	movs r2, #4
	ldrsh r1, [r1, r2]
	bl sub_8027620
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807A054
	adds r0, r4, #0
	bl sub_8016F28
	adds r0, r4, #0
	bl Player_8005380
_0807A054:
	ldr r0, _0807A060 @ =gStageData
	adds r0, #0xb6
	movs r1, #0
	strb r1, [r0]
	movs r0, #1
	b _0807A06E
	.align 2, 0
_0807A060: .4byte gStageData
_0807A064: .4byte gPlayers
_0807A068: .4byte gCamera
_0807A06C:
	movs r0, #0
_0807A06E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_807A074
sub_807A074: @ 0x0807A074
	push {r4, r5, lr}
	movs r5, #0
	ldr r2, _0807A08C @ =gStageData
	ldrb r0, [r2, #4]
	subs r0, #6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _0807A090
	movs r0, #0
	b _0807A0E0
	.align 2, 0
_0807A08C: .4byte gStageData
_0807A090:
	ldrb r1, [r2, #6]
	cmp r1, #0
	bne _0807A0C4
	adds r4, r2, #0
	adds r4, #0xb6
	ldrb r0, [r4]
	cmp r0, #0
	beq _0807A0AE
	cmp r0, #1
	beq _0807A0B8
	adds r0, #1
	movs r1, #7
	ands r0, r1
	strb r0, [r4]
	b _0807A0DE
_0807A0AE:
	bl sub_8027658
	movs r0, #2
	strb r0, [r4]
	b _0807A0DE
_0807A0B8:
	movs r5, #1
	strb r1, [r4]
	adds r0, r2, #0
	adds r0, #0xb7
	strb r1, [r0]
	b _0807A0DE
_0807A0C4:
	adds r3, r2, #0
	adds r3, #0xb6
	ldrb r0, [r3]
	cmp r0, #0
	beq _0807A0DE
	movs r5, #1
	movs r1, #0
	strb r1, [r3]
	adds r0, r2, #0
	adds r0, #0xb7
	strb r1, [r0]
	bl sub_8027658
_0807A0DE:
	adds r0, r5, #0
_0807A0E0:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_807A0E8
sub_807A0E8: @ 0x0807A0E8
	push {lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	ldr r0, _0807A104 @ =gStageData
	ldrb r0, [r0, #9]
	cmp r0, #8
	bhi _0807A1D8
	lsls r0, r0, #2
	ldr r1, _0807A108 @ =_0807A10C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0807A104: .4byte gStageData
_0807A108: .4byte _0807A10C
_0807A10C: @ jump table
	.4byte _0807A130 @ case 0
	.4byte _0807A146 @ case 1
	.4byte _0807A15C @ case 2
	.4byte _0807A168 @ case 3
	.4byte _0807A17E @ case 4
	.4byte _0807A18A @ case 5
	.4byte _0807A1A0 @ case 6
	.4byte _0807A1AC @ case 7
	.4byte _0807A1CE @ case 8
_0807A130:
	ldrb r1, [r2, #2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0807A1B6
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	adds r0, r2, #0
	bl sub_806A69C
	b _0807A1D8
_0807A146:
	ldrb r1, [r2, #2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0807A1B6
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	adds r0, r2, #0
	bl sub_806CDB8
	b _0807A1D8
_0807A15C:
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	adds r0, r2, #0
	bl sub_806DAD4
	b _0807A1D8
_0807A168:
	ldrb r1, [r2, #2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0807A1B6
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	adds r0, r2, #0
	bl sub_8071594
	b _0807A1D8
_0807A17E:
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	adds r0, r2, #0
	bl sub_80732CC
	b _0807A1D8
_0807A18A:
	ldrb r1, [r2, #2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0807A1B6
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	adds r0, r2, #0
	bl sub_8074BA0
	b _0807A1D8
_0807A1A0:
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	adds r0, r2, #0
	bl sub_80769C4
	b _0807A1D8
_0807A1AC:
	ldrb r1, [r2, #2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0807A1C2
_0807A1B6:
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	adds r0, r2, #0
	bl sub_8067EA0
	b _0807A1D8
_0807A1C2:
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	adds r0, r2, #0
	bl sub_807F4F0
	b _0807A1D8
_0807A1CE:
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	adds r0, r2, #0
	bl sub_8085588
_0807A1D8:
	pop {r0}
	bx r0

	thumb_func_start sub_807A1DC
sub_807A1DC: @ 0x0807A1DC
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	movs r0, #0
	mov ip, r0
	ldr r0, _0807A29C @ =gStageData
	adds r0, #0x98
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	ldr r1, _0807A2A0 @ =0x03000020
	adds r6, r4, r1
	ldr r0, [r3, #0x20]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0807A294
	ldr r0, [r6, #0x28]
	cmp r0, r1
	beq _0807A294
	movs r5, #0x10
	ldrsh r1, [r3, r5]
	adds r0, r3, #0
	adds r0, #0x24
	movs r5, #0
	ldrsb r5, [r0, r5]
	adds r2, r1, r5
	movs r7, #0x10
	ldrsh r1, [r6, r7]
	ldr r7, _0807A2A4 @ =0x0300004C
	adds r0, r4, r7
	movs r7, #0
	ldrsb r7, [r0, r7]
	adds r1, r1, r7
	cmp r2, r1
	bgt _0807A236
	adds r0, r3, #0
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r2, r0
	cmp r0, r1
	bge _0807A248
	cmp r2, r1
	blt _0807A294
_0807A236:
	ldr r5, _0807A2A8 @ =0x0300004E
	adds r0, r4, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r7
	adds r0, r1, r0
	cmp r0, r2
	blt _0807A294
_0807A248:
	movs r7, #0x12
	ldrsh r0, [r3, r7]
	adds r1, r3, #0
	adds r1, #0x25
	movs r4, #0
	ldrsb r4, [r1, r4]
	adds r2, r0, r4
	movs r1, #0x12
	ldrsh r0, [r6, r1]
	adds r1, r6, #0
	adds r1, #0x2d
	movs r5, #0
	ldrsb r5, [r1, r5]
	adds r1, r0, r5
	cmp r2, r1
	bgt _0807A27E
	adds r0, r3, #0
	adds r0, #0x27
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r2, r0
	cmp r0, r1
	bge _0807A290
	cmp r2, r1
	blt _0807A294
_0807A27E:
	adds r0, r6, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r1, r0
	cmp r0, r2
	blt _0807A294
_0807A290:
	movs r5, #1
	mov ip, r5
_0807A294:
	mov r0, ip
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0807A29C: .4byte gStageData
_0807A2A0: .4byte 0x03000020
_0807A2A4: .4byte 0x0300004C
_0807A2A8: .4byte 0x0300004E

	thumb_func_start sub_807A2AC
sub_807A2AC: @ 0x0807A2AC
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r1, _0807A358 @ =gUnknown_080D5AF6
	mov r0, sp
	movs r2, #8
	bl memcpy
	ldr r0, _0807A35C @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #0
	bne _0807A370
	ldr r5, _0807A360 @ =gPlayers
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0807A370
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r0, r1
	mov ip, r1
	cmp r0, #0
	bne _0807A370
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0807A330
	ldr r6, _0807A364 @ =gCamera
	mov r0, sp
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r6]
	adds r3, r0, r1
	ldr r0, [r4, #0x10]
	asrs r2, r0, #8
	cmp r3, r2
	bgt _0807A330
	mov r0, sp
	movs r7, #4
	ldrsh r0, [r0, r7]
	subs r0, r0, r1
	adds r0, r3, r0
	cmp r0, r2
	blt _0807A330
	mov r0, sp
	movs r2, #2
	ldrsh r1, [r0, r2]
	ldr r0, [r6, #4]
	adds r3, r0, r1
	ldr r0, [r4, #0x14]
	asrs r2, r0, #8
	cmp r3, r2
	bgt _0807A330
	mov r0, sp
	movs r6, #6
	ldrsh r0, [r0, r6]
	subs r0, r0, r1
	adds r0, r3, r0
	cmp r0, r2
	bge _0807A370
_0807A330:
	ldr r0, _0807A368 @ =0xFFFFFEFF
	mov r7, ip
	ands r0, r7
	str r0, [r4, #4]
	ldr r1, _0807A36C @ =Player_8005380
	adds r0, r4, #0
	bl SetPlayerCallback
	ldr r0, [r5, #0x10]
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r4, #0x14]
	adds r0, r5, #0
	adds r0, #0x27
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x27
	strb r1, [r0]
	movs r0, #1
	b _0807A372
	.align 2, 0
_0807A358: .4byte gUnknown_080D5AF6
_0807A35C: .4byte gStageData
_0807A360: .4byte gPlayers
_0807A364: .4byte gCamera
_0807A368: .4byte 0xFFFFFEFF
_0807A36C: .4byte Player_8005380
_0807A370:
	movs r0, #0
_0807A372:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_807A37C
sub_807A37C: @ 0x0807A37C
	push {r4, lr}
	ldr r1, _0807A3A0 @ =gCamera
	ldr r0, [r1, #0x1c]
	movs r3, #0xf0
	lsls r3, r3, #1
	adds r0, r0, r3
	str r0, [r1, #0x1c]
	movs r3, #0
	ldr r4, _0807A3A4 @ =gPlayers
_0807A38E:
	cmp r3, #0
	beq _0807A3A8
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0807A3AC
	.align 2, 0
_0807A3A0: .4byte gCamera
_0807A3A4: .4byte gPlayers
_0807A3A8:
	ldr r0, _0807A3D0 @ =gStageData
	ldrb r1, [r0, #6]
_0807A3AC:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r2, r0, r4
	ldr r0, [r2, #4]
	ldr r1, _0807A3D4 @ =0xF7FFFFFF
	ands r0, r1
	str r0, [r2, #4]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	bls _0807A38E
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0807A3D0: .4byte gStageData
_0807A3D4: .4byte 0xF7FFFFFF

	thumb_func_start sub_807A3D8
sub_807A3D8: @ 0x0807A3D8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov sb, r0
	ldr r6, [sp, #0x20]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r5, r3, #0x18
	movs r3, #0
	ldrb r0, [r6]
	cmp r0, #0
	bne _0807A400
	movs r0, #0
	b _0807A45A
_0807A400:
	movs r4, #0
	cmp r3, r8
	bhs _0807A458
	mov r0, sb
	ldr r1, [r0]
_0807A40A:
	ldr r2, [r1, #0x14]
	ldrh r0, [r2, #0xc]
	cmp r0, r7
	bne _0807A424
	ldrb r0, [r2, #0x1a]
	cmp r0, r5
	bne _0807A424
	ldrb r0, [r6]
	subs r0, #1
	strb r0, [r6]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0807A442
_0807A424:
	ldrb r0, [r1, #2]
	cmp r0, #0
	beq _0807A444
	adds r0, r1, #0
	adds r0, #0x30
	ldrb r1, [r1, #2]
	str r6, [sp]
	adds r2, r7, #0
	adds r3, r5, #0
	bl sub_807A3D8
	adds r3, r0, #0
	cmp r3, #0
	beq _0807A444
	b _0807A45A
_0807A442:
	adds r3, r1, #0
_0807A444:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r8
	bhs _0807A458
	lsls r0, r4, #2
	add r0, sb
	ldr r1, [r0]
	cmp r3, #0
	beq _0807A40A
_0807A458:
	adds r0, r3, #0
_0807A45A:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_807A468
sub_807A468: @ 0x0807A468
	push {lr}
	ldr r2, _0807A48C @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _0807A490 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0807A494 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0807A498
	movs r0, #0x9f
	lsls r0, r0, #2
	bl m4aSongNumStart
	b _0807A49E
	.align 2, 0
_0807A48C: .4byte gPseudoRandom
_0807A490: .4byte 0x00196225
_0807A494: .4byte 0x3C6EF35F
_0807A498:
	ldr r0, _0807A4A4 @ =0x0000027D
	bl m4aSongNumStart
_0807A49E:
	pop {r0}
	bx r0
	.align 2, 0
_0807A4A4: .4byte 0x0000027D

	thumb_func_start sub_807A4A8
sub_807A4A8: @ 0x0807A4A8
	ldr r0, _0807A4B8 @ =gStageData
	adds r2, r0, #0
	adds r2, #0xb6
	movs r1, #0
	strb r1, [r2]
	adds r0, #0xb7
	strb r1, [r0]   @ gStageData.unkB7 = .unkB6 = 0
	bx lr
	.align 2, 0
_0807A4B8: .4byte gStageData

	thumb_func_start SetFixedRandomIfTimeAttackMode
SetFixedRandomIfTimeAttackMode: @ 0x0807A4BC
	push {lr}
	ldr r1, _0807A4DC @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _0807A4D8
	ldrb r0, [r1, #9]
	lsls r1, r0, #5
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r0
	ldr r0, _0807A4E0 @ =gPseudoRandom
	str r1, [r0]
_0807A4D8:
	pop {r0}
	bx r0
	.align 2, 0
_0807A4DC: .4byte gStageData
_0807A4E0: .4byte gPseudoRandom

	thumb_func_start TaskDestructor_38_807A4E4
TaskDestructor_38_807A4E4: @ 0x0807A4E4
	push {lr}
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrb r0, [r1, #0xf]
	cmp r0, #0
	beq _0807A4FA
	ldr r0, [r1, #0x10]
	bl VramFree
_0807A4FA:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start TaskDestructor_C8_807A500
TaskDestructor_C8_807A500: @ 0x0807A500
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x1c]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start Task_2C_807A514
Task_2C_807A514: @ 0x0807A514
	push {lr}
	ldr r0, _0807A538 @ =gCurTask
	ldr r3, [r0]
	ldrh r2, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r2, r0
	ldrh r0, [r1, #0x28]
	subs r0, #1
	strh r0, [r1, #0x28]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807A53C
	adds r0, r3, #0
	bl TaskDestroy
	b _0807A56C
	.align 2, 0
_0807A538: .4byte gCurTask
_0807A53C:
	ldr r3, _0807A554 @ =0x0300002A
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _0807A55C
	adds r0, r1, #0
	bl UpdateSpriteAnimation_BG
	ldr r0, _0807A558 @ =gFlags
	ldr r1, [r0]
	movs r2, #1
	b _0807A568
	.align 2, 0
_0807A554: .4byte 0x0300002A
_0807A558: .4byte gFlags
_0807A55C:
	adds r0, r1, #0
	bl UpdateSpriteAnimation
	ldr r0, _0807A570 @ =gFlags
	ldr r1, [r0]
	movs r2, #2
_0807A568:
	orrs r1, r2
	str r1, [r0]
_0807A56C:
	pop {r0}
	bx r0
	.align 2, 0
_0807A570: .4byte gFlags

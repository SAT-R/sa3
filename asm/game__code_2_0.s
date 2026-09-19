.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ TODO: game__code_2_0.s, game__code_2_1.s and game__code_2_2.s might be the same module?

.if 01
	thumb_func_start LoadCharacterSelectSprites
LoadCharacterSelectSprites: @ 0x0809B770
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _0809B798 @ =gUnknown_080D8F18
	ldr r0, [r5]
	ldrb r0, [r0]
	adds r0, r0, r1
	ldrb r2, [r0]
	ldr r0, [r5, #4]
	ldrb r0, [r0]
	cmp r0, #0x15
	bls _0809B7A4
	ldr r0, _0809B79C @ =gUnknown_080D9438
	adds r0, r2, r0
	ldrb r7, [r0]
	ldr r1, _0809B7A0 @ =gUnknown_080D93EC
	b _0809B7AC
	.align 2, 0
_0809B798: .4byte gUnknown_080D8F18
_0809B79C: .4byte gUnknown_080D9438
_0809B7A0: .4byte gUnknown_080D93EC
_0809B7A4:
	ldr r0, _0809B828 @ =gUnknown_080D9432
	adds r0, r2, r0
	ldrb r7, [r0]
	ldr r1, _0809B82C @ =gUnknown_080D93D4
_0809B7AC:
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	mov r8, r0
	ldr r6, [r5, #0xc]
	movs r4, #0
	cmp r4, r7
	bhs _0809B818
	movs r0, #0
	mov sb, r0
	movs r3, #0
_0809B7C2:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x18
	adds r0, r5, r0
	str r6, [r0]
	lsls r2, r4, #3
	add r2, r8
	ldr r1, [r2, #4]
	lsls r1, r1, #5
	adds r6, r6, r1
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r5, #0x10]
	ldr r1, [r1]
    asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r5, #0x14]
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0x40
	strh r1, [r0, #0x14]
	strh r3, [r0, #0xe]
	strh r3, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	mov r1, sb
	strb r1, [r0, #0x1f]
	str r3, [r0, #8]
	str r3, [sp]
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r3, [sp]
	cmp r4, r7
	blo _0809B7C2
_0809B818:
	ldr r0, [r5, #4]
	ldrb r0, [r0]
	cmp r0, #0x15
	bls _0809B838
	ldr r0, _0809B830 @ =gUnknown_080D9438
	ldrb r7, [r0, #5]
	ldr r0, _0809B834 @ =gUnknown_080D93EC
	b _0809B83E
	.align 2, 0
_0809B828: .4byte gUnknown_080D9432
_0809B82C: .4byte gUnknown_080D93D4
_0809B830: .4byte gUnknown_080D9438
_0809B834: .4byte gUnknown_080D93EC
_0809B838:
	ldr r0, _0809B8C0 @ =gUnknown_080D9432
	ldrb r7, [r0, #5]
	ldr r0, _0809B8C4 @ =gUnknown_080D93D4
_0809B83E:
	ldr r0, [r0, #0x14]
	mov r8, r0
	movs r4, #0
	cmp r4, r7
	bhs _0809B8A8
	movs r0, #0
	mov sb, r0
	movs r3, #0
_0809B84E:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xd4
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r0, r5, r0
	str r6, [r0]
	lsls r2, r4, #3
	add r2, r8
	ldr r1, [r2, #4]
	lsls r1, r1, #5
	adds r6, r6, r1
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r5, #0x10]
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r5, #0x14]
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0x40
	strh r1, [r0, #0x14]
	strh r3, [r0, #0xe]
	strh r3, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	mov r1, sb
	strb r1, [r0, #0x1f]
	str r3, [r0, #8]
	str r3, [sp]
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r3, [sp]
	cmp r4, r7
	blo _0809B84E
_0809B8A8:
	ldr r0, [r5, #0xc]
	movs r1, #0xd4
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r5, #0xc]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809B8C0: .4byte gUnknown_080D9432
_0809B8C4: .4byte gUnknown_080D93D4

	thumb_func_start Task_270_809B8C8
Task_270_809B8C8: @ 0x0809B8C8
	push {r4, r5, lr}
	ldr r5, _0809B91C @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_809BA58
	cmp r0, #0
	beq _0809B960
	ldr r0, [r4, #4]
	ldrb r0, [r0]
	subs r0, #0x16
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #6
	bhi _0809B8F4
	adds r0, r4, #0
	bl sub_809B970
_0809B8F4:
	ldr r0, [r4, #0x10]
	ldr r1, [r0]
	movs r2, #0xf0
	lsls r2, r2, #6
	adds r1, r1, r2
	movs r2, #0xb4
	lsls r2, r2, #9
	ldr r3, [r4, #4]
	adds r4, r0, #0
	cmp r1, r2
	bls _0809B934
	ldrb r0, [r3]
	cmp r0, #0x1d
	beq _0809B914
	cmp r0, #0x23
	bls _0809B92C
_0809B914:
	cmp r0, #0x24
	bne _0809B920
	movs r0, #0x25
	b _0809B922
	.align 2, 0
_0809B91C: .4byte gCurTask
_0809B920:
	movs r0, #0x24
_0809B922:
	strb r0, [r3]
	ldr r0, [r5]
	bl TaskDestroy
	b _0809B960
_0809B92C:
	cmp r0, #4
	bne _0809B934
	ldr r1, [r5]
	b _0809B95C
_0809B934:
	ldrb r0, [r3]
	cmp r0, #0x1f
	bne _0809B960
	ldr r0, [r4]
	movs r1, #0xf0
	lsls r1, r1, #6
	adds r0, r0, r1
	movs r1, #0xb4
	lsls r1, r1, #9
	cmp r0, r1
	bls _0809B958
	ldr r0, _0809B954 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0809B960
	.align 2, 0
_0809B954: .4byte gCurTask
_0809B958:
	ldr r0, _0809B968 @ =gCurTask
	ldr r1, [r0]
_0809B95C:
	ldr r0, _0809B96C @ =Task_270_809BF9C
	str r0, [r1, #8]
_0809B960:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809B968: .4byte gCurTask
_0809B96C: .4byte Task_270_809BF9C
.else
.endif

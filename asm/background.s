.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ Start of background.c

.if 0
.endif

	thumb_func_start sub_80BE190
sub_80BE190: @ 0x080BE190
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
	ldr r1, _080BE214 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r5, #8]
	ldr r0, _080BE218 @ =gRefSpriteTables
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
	blt _080BE294
_080BE1D2:
	ldrh r0, [r5, #0xe]
	lsls r0, r0, #2
	adds r4, r7, r0
	ldr r1, [r4]
	cmp r1, #0
	bge _080BE248
	ldr r0, _080BE21C @ =animCmdTable_BG
	mov r8, r0
_080BE1E2:
	movs r0, #3
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080BE1EC
	mov sb, r3
_080BE1EC:
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
	beq _080BE23C
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080BE220
	adds r0, r1, #0
	b _080BE296
	.align 2, 0
_080BE214: .4byte 0xFFFFBFFF
_080BE218: .4byte gRefSpriteTables
_080BE21C: .4byte animCmdTable_BG
_080BE220:
	ldr r0, _080BE274 @ =gRefSpriteTables
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
_080BE23C:
	ldrh r0, [r5, #0xe]
	lsls r0, r0, #2
	adds r4, r7, r0
	ldr r1, [r4]
	cmp r1, #0
	blt _080BE1E2
_080BE248:
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
	beq _080BE278
	cmp r6, #0
	ble _080BE278
	adds r0, r6, #0
	mov r1, sb
	str r3, [sp]
	bl Mod
	adds r6, r0, #0
	ldr r3, [sp]
	b _080BE27C
	.align 2, 0
_080BE274: .4byte gRefSpriteTables
_080BE278:
	ldr r0, [r4]
	adds r3, r3, r0
_080BE27C:
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
	bge _080BE1D2
_080BE294:
	movs r0, #1
_080BE296:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start animCmd_GetTiles_BG
animCmd_GetTiles_BG: @ 0x080BE2A4
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
	bne _080BE31E
	ldr r1, [r2, #4]
	cmp r1, #0
	bge _080BE2D8
	ldr r0, _080BE2D4 @ =gRefSpriteTables
	ldr r0, [r0]
	lsls r1, r1, #6
	ldr r0, [r0, #0x14]
	adds r5, r0, r1
	ldr r0, [r2, #8]
	lsls r0, r0, #0x16
	b _080BE2E6
	.align 2, 0
_080BE2D4: .4byte gRefSpriteTables
_080BE2D8:
	ldr r0, _080BE328 @ =gRefSpriteTables
	ldr r0, [r0]
	lsls r1, r1, #5
	ldr r0, [r0, #0x10]
	adds r5, r0, r1
	ldr r0, [r2, #8]
	lsls r0, r0, #0x15
_080BE2E6:
	lsrs r6, r0, #0x10
	ldr r3, _080BE32C @ =gVramGraphicsCopyQueue
	ldr r2, _080BE330 @ =gVramGraphicsCopyQueueIndex
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
_080BE31E:
	movs r0, #1
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080BE328: .4byte gRefSpriteTables
_080BE32C: .4byte gVramGraphicsCopyQueue
_080BE330: .4byte gVramGraphicsCopyQueueIndex

	thumb_func_start animCmd_GetPalette_BG
animCmd_GetPalette_BG: @ 0x080BE334
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
	bne _080BE3B4
	ldr r1, [r5, #4]
	ldr r6, _080BE37C @ =gFlags
	ldr r4, [r6]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r4
	cmp r0, #0
	beq _080BE384
	ldr r0, _080BE380 @ =gRefSpriteTables
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
	bl sub_80C460C
	b _080BE3B4
	.align 2, 0
_080BE37C: .4byte gFlags
_080BE380: .4byte gRefSpriteTables
_080BE384:
	ldr r2, _080BE3BC @ =0x040000D4
	ldr r0, _080BE3C0 @ =gRefSpriteTables
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
	ldr r1, _080BE3C4 @ =gBgPalette
	adds r0, r0, r1
	str r0, [r2, #4]
	ldrh r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r0, #1
	orrs r4, r0
	str r4, [r6]
_080BE3B4:
	movs r0, #1
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080BE3BC: .4byte 0x040000D4
_080BE3C0: .4byte gRefSpriteTables
_080BE3C4: .4byte gBgPalette

	thumb_func_start animCmd_AddHitbox_BG
animCmd_AddHitbox_BG: @ 0x080BE3C8
	push {r4, lr}
	adds r4, r1, #0
	ldr r3, [r0, #4]
	movs r1, #0xf
	ands r3, r1
	ldrh r1, [r4, #0xe]
	adds r1, #3
	strh r1, [r4, #0xe]
	ldr r2, _080BE404 @ =0x040000D4
	adds r1, r0, #4
	str r1, [r2]
	lsls r3, r3, #3
	adds r1, r3, #0
	adds r1, #0x20
	adds r1, r4, r1
	str r1, [r2, #4]
	ldr r1, _080BE408 @ =0x84000002
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _080BE40C
	adds r0, r4, #0
	adds r0, #0x20
	adds r0, r0, r3
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0]
	b _080BE462
	.align 2, 0
_080BE404: .4byte 0x040000D4
_080BE408: .4byte 0x84000002
_080BE40C:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080BE43A
	adds r2, r4, r3
	movs r0, #0x25
	adds r0, r0, r2
	mov ip, r0
	adds r2, #0x27
	ldrb r1, [r0]
	ldrb r0, [r2]
	eors r1, r0
	mov r0, ip
	strb r1, [r0]
	ldrb r0, [r2]
	eors r0, r1
	strb r0, [r2]
	mov r2, ip
	ldrb r1, [r2]
	eors r0, r1
	strb r0, [r2]
_080BE43A:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080BE462
	adds r2, r4, r3
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
	strb r0, [r3]
_080BE462:
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80BE46C
sub_80BE46C: @ 0x080BE46C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	ldr r2, _080BE4B8 @ =gUnknown_030061C0
	ldr r1, _080BE4BC @ =gUnknown_03006840
	ldrb r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r2
	str r6, [r0]
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r2, [r6, #4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne _080BE498
	b _080BE676
_080BE498:
	lsrs r0, r2, #0x1c
	cmp r0, #0
	bne _080BE4C4
	ldr r0, _080BE4C0 @ =gRefSpriteTables
	ldr r0, [r0]
	ldrh r1, [r6, #0xc]
	ldr r0, [r0, #4]
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	mov r8, r1
	b _080BE4D8
	.align 2, 0
_080BE4B8: .4byte gUnknown_030061C0
_080BE4BC: .4byte gUnknown_03006840
_080BE4C0: .4byte gRefSpriteTables
_080BE4C4:
	ldr r0, _080BE584 @ =gRefSpriteTables
	ldr r1, [r0]
	ldrh r0, [r6, #0xc]
	ldr r1, [r1, #4]
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r1, r2, #4
	ldr r0, [r0]
	adds r0, r0, r1
	mov r8, r0
_080BE4D8:
	ldr r0, [r6, #8]
	movs r1, #0xc0
	lsls r1, r1, #9
	ands r0, r1
	lsrs r7, r0, #0xf
	cmp r7, #1
	bls _080BE4F2
	ldr r0, _080BE588 @ =gDispCnt
	ldrh r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #1
	beq _080BE524
_080BE4F2:
	mov r1, r8
	movs r2, #8
	ldrsh r0, [r1, r2]
	movs r2, #0x10
	ldrsh r1, [r6, r2]
	subs r0, r0, r1
	movs r1, #0x10
	bl Mod
	ldr r4, _080BE58C @ =gBgScrollRegs
	lsls r5, r7, #2
	adds r1, r5, r4
	strh r0, [r1]
	mov r1, r8
	movs r2, #0xa
	ldrsh r0, [r1, r2]
	movs r2, #0x12
	ldrsh r1, [r6, r2]
	subs r0, r0, r1
	movs r1, #8
	bl Mod
	adds r4, #2
	adds r5, r5, r4
	strh r0, [r5]
_080BE524:
	ldr r0, _080BE590 @ =gBgCntRegs
	lsls r3, r7, #1
	adds r3, r3, r0
	ldrh r0, [r3]
	ldr r2, _080BE594 @ =0x0000FFFC
	ands r2, r0
	strh r2, [r3]
	ldr r0, [r6, #8]
	movs r1, #0xc0
	lsls r1, r1, #6
	ands r0, r1
	lsrs r0, r0, #0xc
	orrs r0, r2
	strh r0, [r3]
	ldr r0, [r6, #4]
	lsrs r0, r0, #0x1c
	cmp r0, #1
	beq _080BE54A
	b _080BE676
_080BE54A:
	ldr r1, [r6, #8]
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r0, r1
	cmp r0, #0
	bne _080BE558
	b _080BE676
_080BE558:
	ldr r0, _080BE598 @ =0xFBFFFFFF
	ands r1, r0
	str r1, [r6, #8]
	mov r1, r8
	ldr r0, [r1, #0xc]
	ldr r1, _080BE59C @ =0x00FFFFFF
	ands r1, r0
	lsrs r0, r0, #0x18
	str r0, [sp]
	ldr r0, _080BE584 @ =gRefSpriteTables
	ldr r2, [r0]
	lsls r1, r1, #2
	ldr r0, [r2, #0x18]
	adds r0, r0, r1
	mov sl, r0
	ldr r0, [r0]
	cmp r0, #0
	blt _080BE5A0
	movs r0, #0x20
	mov ip, r0
	ldr r2, [r2, #0x10]
	b _080BE5A6
	.align 2, 0
_080BE584: .4byte gRefSpriteTables
_080BE588: .4byte gDispCnt
_080BE58C: .4byte gBgScrollRegs
_080BE590: .4byte gBgCntRegs
_080BE594: .4byte 0x0000FFFC
_080BE598: .4byte 0xFBFFFFFF
_080BE59C: .4byte 0x00FFFFFF
_080BE5A0:
	movs r1, #0x40
	mov ip, r1
	ldr r2, [r2, #0x14]
_080BE5A6:
	mov r8, r2
	mov r3, ip
	mov r2, sl
	adds r2, #4
	mov sl, r2
	subs r2, #4
	ldm r2!, {r0}
	muls r0, r3, r0
	mov r1, r8
	adds r2, r1, r0
	ldr r6, [r6]
	movs r7, #1
	ldr r0, [sp]
	cmp r7, r0
	bhs _080BE63C
	ldr r1, _080BE5F0 @ =gVramGraphicsCopyQueue
	mov sb, r1
	ldr r5, _080BE5F4 @ =gVramGraphicsCopyQueueIndex
_080BE5CA:
	mov r1, sl
	adds r1, #4
	mov sl, r1
	subs r1, #4
	ldm r1!, {r0}
	mov r1, ip
	muls r1, r0, r1
	adds r0, r1, #0
	mov r1, r8
	adds r4, r1, r0
	adds r0, r2, r3
	cmp r0, r4
	bne _080BE5F8
	mov r1, ip
	adds r0, r3, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	b _080BE630
	.align 2, 0
_080BE5F0: .4byte gVramGraphicsCopyQueue
_080BE5F4: .4byte gVramGraphicsCopyQueueIndex
_080BE5F8:
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
_080BE630:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r0, [sp]
	cmp r7, r0
	blo _080BE5CA
_080BE63C:
	ldr r0, _080BE688 @ =gVramGraphicsCopyQueueIndex
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080BE68C @ =gVramGraphicsCopyQueue
	adds r0, r0, r1
	str r2, [r0]
	ldr r2, _080BE688 @ =gVramGraphicsCopyQueueIndex
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080BE68C @ =gVramGraphicsCopyQueue
	adds r1, #4
	adds r0, r0, r1
	str r6, [r0]
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080BE68C @ =gVramGraphicsCopyQueue
	adds r0, r0, r1
	strh r3, [r0, #8]
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r2]
_080BE676:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BE688: .4byte gVramGraphicsCopyQueueIndex
_080BE68C: .4byte gVramGraphicsCopyQueue

	thumb_func_start sa2__sub_80039E4
sa2__sub_80039E4: @ 0x080BE690
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	movs r0, #5
	str r0, [sp, #0x28]
	ldr r0, _080BE6B0 @ =0x04000004
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080BE6B4
	movs r0, #0
	b _080BEBB2
	.align 2, 0
_080BE6B0: .4byte 0x04000004
_080BE6B4:
	ldr r0, _080BE704 @ =gUnknown_03006840
	ldrb r1, [r0]
	cmp r1, #0
	bne _080BE6BE
	b _080BEBB0
_080BE6BE:
	movs r6, #0
	cmp r6, r1
	blo _080BE6C6
	b _080BEBAA
_080BE6C6:
	lsls r0, r6, #2
	ldr r1, _080BE708 @ =gUnknown_030061C0
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0xc]
	ldr r3, [r0, #4]
	movs r0, #1
	rsbs r0, r0, #0
	adds r2, r6, #1
	str r2, [sp, #0x3c]
	cmp r3, r0
	bne _080BE6E0
	b _080BEB9A
_080BE6E0:
	lsrs r0, r3, #0x1c
	cmp r0, #0
	bne _080BE710
	ldr r4, _080BE70C @ =gRefSpriteTables
	ldr r0, [r4]
	ldr r5, [sp, #0xc]
	ldrh r2, [r5, #0xc]
	ldr r0, [r0, #4]
	lsls r1, r2, #2
	adds r1, r1, r0
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	mov sl, r1
	adds r7, r4, #0
	b _080BE726
	.align 2, 0
_080BE704: .4byte gUnknown_03006840
_080BE708: .4byte gUnknown_030061C0
_080BE70C: .4byte gRefSpriteTables
_080BE710:
	ldr r7, _080BE89C @ =gRefSpriteTables
	ldr r0, [r7]
	ldr r1, [sp, #0xc]
	ldrh r2, [r1, #0xc]
	ldr r1, [r0, #4]
	lsls r0, r2, #2
	adds r0, r0, r1
	lsls r1, r3, #4
	ldr r0, [r0]
	adds r0, r0, r1
	mov sl, r0
_080BE726:
	ldr r3, [sp, #0xc]
	ldr r0, [r3, #8]
	movs r1, #0xc0
	lsls r1, r1, #9
	ands r0, r1
	lsrs r4, r0, #0xf
	lsls r0, r4, #1
	ldr r5, _080BE8A0 @ =gBgCntRegs
	adds r0, r0, r5
	ldrh r3, [r0]
	movs r0, #0xc
	ands r0, r3
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [sp, #0x14]
	movs r0, #0xf8
	lsls r0, r0, #5
	ands r0, r3
	lsls r0, r0, #3
	adds r0, r0, r1
	str r0, [sp, #0x18]
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	beq _080BE760
	movs r0, #6
	str r0, [sp, #0x28]
_080BE760:
	cmp r4, #1
	bhi _080BE766
	b _080BE922
_080BE766:
	ldr r0, _080BE8A4 @ =gDispCnt
	ldrh r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080BE774
	b _080BE922
_080BE774:
	lsrs r1, r3, #0xe
	movs r0, #0x80
	lsls r0, r0, #0xd
	lsls r0, r1
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [r7]
	ldr r1, [r0, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x1c]
	mov r1, sl
	ldrh r0, [r1]
	ldr r1, _080BE8A8 @ =0x00003FFF
	ands r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r2, [sp, #0x1c]
	adds r2, r2, r0
	str r2, [sp, #0x1c]
	movs r3, #0
	str r3, [sp, #8]
	adds r6, #1
	str r6, [sp, #0x3c]
	mov r4, sl
	ldrh r4, [r4, #2]
	cmp r3, r4
	blo _080BE7B2
	b _080BEB9A
_080BE7B2:
	mov sb, sp
	ldr r5, [sp, #0x10]
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x30]
_080BE7BC:
	ldr r1, _080BE8AC @ =0x040000D4
	ldr r6, [sp, #0x1c]
	str r6, [r1]
	mov r7, sp
	str r7, [r1, #4]
	ldr r0, _080BE8B0 @ =0x80000003
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r6, #6
	str r6, [sp, #0x1c]
	mov r0, sb
	ldrh r3, [r0]
	movs r1, #0xc0
	lsls r1, r1, #8
	ands r1, r3
	lsrs r1, r1, #0xc
	ldrh r2, [r0, #2]
	movs r0, #0xc0
	lsls r0, r0, #8
	ands r0, r2
	lsrs r0, r0, #0xe
	orrs r1, r0
	lsls r1, r1, #1
	ldr r2, _080BE8B4 @ =gOamShapesSizes
	adds r0, r1, r2
	ldrb r0, [r0]
	lsrs r0, r0, #3
	str r0, [sp, #0x20]
	ldr r4, _080BE8B8 @ =gOamShapesSizes+1
	adds r1, r1, r4
	ldrb r0, [r1]
	lsrs r0, r0, #3
	mov ip, r0
	mov r4, ip
	ldr r5, [sp, #0xc]
	movs r6, #0x12
	ldrsh r1, [r5, r6]
	mov r7, sl
	movs r2, #0xa
	ldrsh r0, [r7, r2]
	subs r5, r1, r0
	ldr r6, [sp, #0xc]
	movs r7, #0x10
	ldrsh r1, [r6, r7]
	mov r2, sl
	movs r6, #8
	ldrsh r0, [r2, r6]
	subs r1, r1, r0
	mov r8, r1
	movs r0, #0x10
	rsbs r0, r0, #0
	mov r7, r8
	ands r7, r0
	mov r8, r7
	movs r0, #0xff
	ands r0, r3
	adds r0, r5, r0
	asrs r0, r0, #3
	ldr r1, [sp, #0x10]
	muls r0, r1, r0
	ldr r2, [sp, #0x18]
	adds r7, r2, r0
	ldr r3, [sp, #0xc]
	ldr r1, [r3]
	ldr r5, [sp, #0x14]
	subs r1, r1, r5
	ldr r6, [sp, #0x28]
	lsrs r1, r6
	mov r0, sb
	ldrh r2, [r0, #4]
	ldr r0, _080BE8BC @ =0x000003FF
	ands r0, r2
	adds r5, r1, r0
	movs r1, #0xff
	ands r5, r1
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	ldr r2, [sp, #8]
	adds r2, #1
	str r2, [sp, #0x40]
	cmp r4, #0
	beq _080BE90E
	ldr r3, [sp, #0x30]
	lsls r0, r3, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x34]
_080BE86C:
	mov r4, sb
	ldrh r0, [r4, #2]
	ldr r1, _080BE8C0 @ =0x000001FF
	ands r1, r0
	add r1, r8
	asrs r1, r1, #3
	adds r2, r7, r1
	ldr r0, [sp, #0x20]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	mov r6, ip
	subs r6, #1
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _080BE8E6
	movs r4, #1
_080BE88E:
	adds r0, r2, #0
	ands r0, r4
	cmp r0, #0
	bne _080BE8C4
	str r5, [sp, #0x24]
	b _080BE8D2
	.align 2, 0
_080BE89C: .4byte gRefSpriteTables
_080BE8A0: .4byte gBgCntRegs
_080BE8A4: .4byte gDispCnt
_080BE8A8: .4byte 0x00003FFF
_080BE8AC: .4byte 0x040000D4
_080BE8B0: .4byte 0x80000003
_080BE8B4: .4byte gOamShapesSizes
_080BE8B8: .4byte gOamShapesSizes+1
_080BE8BC: .4byte 0x000003FF
_080BE8C0: .4byte 0x000001FF
_080BE8C4:
	lsls r0, r5, #8
	ldr r1, [sp, #0x24]
	orrs r1, r0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x24]
	strh r0, [r2]
_080BE8D2:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r2, #1
	adds r1, r3, #0
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r1, #0
	bne _080BE88E
_080BE8E6:
	adds r0, r2, #0
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BE8FE
	ldrh r1, [r2]
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r1
	ldr r3, [sp, #0x24]
	orrs r0, r3
	strh r0, [r2]
_080BE8FE:
	ldr r4, [sp, #0x34]
	adds r7, r7, r4
	mov r1, ip
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	cmp r1, #0
	bne _080BE86C
_080BE90E:
	ldr r5, [sp, #0x40]
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	mov r6, sl
	ldrh r6, [r6, #2]
	cmp r0, r6
	bhs _080BE920
	b _080BE7BC
_080BE920:
	b _080BEB9A
_080BE922:
	movs r0, #0x20
	str r0, [sp, #0x10]
	lsls r0, r4, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsrs r1, r0, #0xe
	subs r0, r1, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080BE93C
	movs r1, #0x40
	str r1, [sp, #0x10]
_080BE93C:
	ldr r0, [r7]
	ldr r1, [r0, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x1c]
	mov r2, sl
	ldrh r0, [r2]
	ldr r1, _080BE9FC @ =0x00003FFF
	ands r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r3, [sp, #0x1c]
	adds r3, r3, r0
	str r3, [sp, #0x1c]
	movs r4, #0
	str r4, [sp, #8]
	adds r6, #1
	str r6, [sp, #0x3c]
	ldrh r5, [r2, #2]
	cmp r4, r5
	blo _080BE96C
	b _080BEB9A
_080BE96C:
	mov sb, sp
_080BE96E:
	ldr r1, _080BEA00 @ =0x040000D4
	ldr r6, [sp, #0x1c]
	str r6, [r1]
	mov r7, sp
	str r7, [r1, #4]
	ldr r0, _080BEA04 @ =0x80000003
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r6, #6
	str r6, [sp, #0x1c]
	mov r0, sb
	ldrh r2, [r0]
	movs r1, #0xc0
	lsls r1, r1, #8
	ands r1, r2
	lsrs r1, r1, #0xc
	ldrh r3, [r0, #2]
	movs r0, #0xc0
	lsls r0, r0, #8
	ands r0, r3
	lsrs r0, r0, #0xe
	orrs r1, r0
	lsls r1, r1, #1
	ldr r4, _080BEA08 @ =gOamShapesSizes
	adds r0, r1, r4
	ldrb r0, [r0]
	lsrs r0, r0, #3
	str r0, [sp, #0x20]
	ldr r5, _080BEA0C @ =gOamShapesSizes+1
	adds r1, r1, r5
	ldrb r0, [r1]
	lsrs r0, r0, #3
	mov ip, r0
	ldr r4, _080BEA10 @ =0x000001FF
	ands r4, r3
	movs r6, #0xff
	ands r6, r2
	ldr r7, [sp, #0xc]
	ldrb r0, [r7, #0x1f]
	lsls r0, r0, #0xc
	mov r1, sb
	ldrh r1, [r1, #4]
	adds r0, r0, r1
	mov r2, sb
	strh r0, [r2, #4]
	ldr r1, [r7, #8]
	lsrs r1, r1, #0xb
	movs r5, #1
	ands r1, r5
	mov r7, sl
	ldrh r0, [r7]
	lsrs r0, r0, #0xf
	cmp r1, r0
	beq _080BEA32
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r1, #0
	eors r0, r3
	strh r0, [r2, #2]
	ldrh r1, [r7]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _080BEA14
	ldr r2, [sp, #0xc]
	movs r3, #0x12
	ldrsh r0, [r2, r3]
	movs r5, #0xa
	ldrsh r1, [r7, r5]
	b _080BEA24
	.align 2, 0
_080BE9FC: .4byte 0x00003FFF
_080BEA00: .4byte 0x040000D4
_080BEA04: .4byte 0x80000003
_080BEA08: .4byte gOamShapesSizes
_080BEA0C: .4byte gOamShapesSizes+1
_080BEA10: .4byte 0x000001FF
_080BEA14:
	ldr r7, [sp, #0xc]
	movs r1, #0x12
	ldrsh r0, [r7, r1]
	mov r2, sl
	ldrh r1, [r2, #6]
	movs r3, #0xa
	ldrsh r2, [r2, r3]
	subs r1, r1, r2
_080BEA24:
	adds r0, r0, r1
	adds r5, r0, #0
	subs r5, #8
	lsls r0, r6, #0x10
	rsbs r0, r0, #0
	lsrs r6, r0, #0x10
	b _080BEA40
_080BEA32:
	ldr r5, [sp, #0xc]
	movs r7, #0x12
	ldrsh r1, [r5, r7]
	mov r2, sl
	movs r3, #0xa
	ldrsh r0, [r2, r3]
	subs r5, r1, r0
_080BEA40:
	ldr r7, [sp, #0xc]
	ldr r1, [r7, #8]
	lsrs r1, r1, #0xa
	mov r2, sl
	ldrh r0, [r2]
	lsrs r0, r0, #0xe
	eors r0, r1
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	beq _080BEA9C
	mov r7, sb
	ldrh r0, [r7, #2]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	eors r0, r1
	strh r0, [r7, #2]
	mov r3, sl
	ldrh r1, [r3]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _080BEA7E
	ldr r7, [sp, #0xc]
	movs r1, #0x10
	ldrsh r0, [r7, r1]
	movs r2, #8
	ldrsh r1, [r3, r2]
	b _080BEA8E
_080BEA7E:
	ldr r3, [sp, #0xc]
	movs r7, #0x10
	ldrsh r0, [r3, r7]
	mov r2, sl
	ldrh r1, [r2, #4]
	movs r3, #8
	ldrsh r2, [r2, r3]
	subs r1, r1, r2
_080BEA8E:
	adds r0, r0, r1
	subs r0, #8
	mov r8, r0
	lsls r0, r4, #0x10
	rsbs r0, r0, #0
	lsrs r4, r0, #0x10
	b _080BEAAC
_080BEA9C:
	ldr r7, [sp, #0xc]
	movs r0, #0x10
	ldrsh r1, [r7, r0]
	mov r2, sl
	movs r3, #8
	ldrsh r0, [r2, r3]
	subs r1, r1, r0
	mov r8, r1
_080BEAAC:
	movs r0, #0x10
	rsbs r0, r0, #0
	mov r7, r8
	ands r7, r0
	mov r8, r7
	adds r0, #8
	ands r5, r0
	mov r0, sb
	ldrh r1, [r0, #2]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	movs r2, #2
	str r2, [sp, #0x2c]
	cmp r0, #0
	beq _080BEAD0
	movs r3, #0xfe
	str r3, [sp, #0x2c]
_080BEAD0:
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	beq _080BEAE2
	ldr r7, [sp, #0x10]
	lsls r0, r7, #0x19
	rsbs r0, r0, #0
	b _080BEAE6
_080BEAE2:
	ldr r1, [sp, #0x10]
	lsls r0, r1, #0x19
_080BEAE6:
	lsrs r0, r0, #0x18
	str r0, [sp, #0x30]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	adds r0, r5, r0
	asrs r0, r0, #2
	ldr r2, [sp, #0x10]
	muls r0, r2, r0
	ldr r3, [sp, #0x18]
	adds r7, r3, r0
	ldr r5, [sp, #0xc]
	ldr r1, [r5]
	ldr r6, [sp, #0x14]
	subs r1, r1, r6
	ldr r0, [sp, #0x28]
	lsrs r1, r0
	mov r3, sb
	ldrh r2, [r3, #4]
	ldr r0, _080BEBC4 @ =0x0000F3FF
	ands r0, r2
	adds r1, r1, r0
	ldrh r2, [r3, #2]
	movs r0, #0xc0
	lsls r0, r0, #6
	ands r0, r2
	lsrs r0, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	mov r1, ip
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	ldr r6, [sp, #8]
	adds r6, #1
	str r6, [sp, #0x40]
	cmp r1, #0
	beq _080BEB88
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	add r0, r8
	asrs r0, r0, #2
	str r0, [sp, #0x38]
	ldr r1, [sp, #0x30]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	mov r8, r0
_080BEB46:
	ldr r3, [sp, #0x38]
	adds r2, r7, r3
	ldr r0, [sp, #0x20]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	mov r6, ip
	subs r6, #1
	ldr r4, [sp, #0x20]
	cmp r4, #0
	beq _080BEB7A
	ldr r1, [sp, #0x2c]
	lsls r0, r1, #0x18
	asrs r4, r0, #0x18
_080BEB62:
	adds r1, r5, #0
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	strh r1, [r2]
	adds r2, r2, r4
	adds r1, r3, #0
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r1, #0
	bne _080BEB62
_080BEB7A:
	add r7, r8
	mov r1, ip
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	cmp r1, #0
	bne _080BEB46
_080BEB88:
	ldr r2, [sp, #0x40]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	mov r3, sl
	ldrh r3, [r3, #2]
	cmp r0, r3
	bhs _080BEB9A
	b _080BE96E
_080BEB9A:
	ldr r4, [sp, #0x3c]
	lsls r0, r4, #0x18
	lsrs r6, r0, #0x18
	ldr r5, _080BEBC8 @ =gUnknown_03006840
	ldrb r5, [r5]
	cmp r6, r5
	bhs _080BEBAA
	b _080BE6C6
_080BEBAA:
	movs r0, #0
	ldr r6, _080BEBC8 @ =gUnknown_03006840
	strb r0, [r6]
_080BEBB0:
	movs r0, #1
_080BEBB2:
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080BEBC4: .4byte 0x0000F3FF
_080BEBC8: .4byte gUnknown_03006840

	thumb_func_start sa2__sub_8003EE4
sa2__sub_8003EE4: @ 0x080BEBCC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r4, r0, #0
	mov sb, r1
	adds r5, r2, #0
	ldr r0, [sp, #0x2c]
	ldr r6, [sp, #0x30]
	ldr r1, [sp, #0x34]
	mov r8, r1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r2, r8
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	movs r7, #0x80
	lsls r7, r7, #9
	mov r3, sb
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	mov sb, r3
	adds r0, r7, #0
	mov r1, sb
	bl Div
	ldr r1, _080BECF4 @ =gSineTable
	mov sl, r1
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r4, r2
	lsls r1, r1, #1
	add r1, sl
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	str r1, [sp, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	ldr r3, [sp, #0x38]
	strh r0, [r3]
	adds r0, r7, #0
	mov r1, sb
	bl Div
	lsls r4, r4, #1
	add r4, sl
	ldrh r1, [r4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	ldr r1, [sp, #0x38]
	strh r0, [r1, #2]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	adds r0, r7, #0
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
	ldr r3, [sp, #0x38]
	strh r0, [r3, #4]
	adds r0, r7, #0
	adds r1, r5, #0
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #8]
	muls r0, r1, r0
	asrs r0, r0, #8
	ldr r2, [sp, #0x38]
	strh r0, [r2, #6]
	lsls r6, r6, #0x10
	rsbs r6, r6, #0
	mov r3, r8
	lsls r3, r3, #0x10
	rsbs r3, r3, #0
	mov r8, r3
	movs r1, #0
	ldrsh r0, [r2, r1]
	asrs r6, r6, #0x10
	adds r1, r0, #0
	muls r1, r6, r1
	movs r3, #2
	ldrsh r0, [r2, r3]
	mov r2, r8
	asrs r2, r2, #0x10
	mov r8, r2
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	adds r1, r1, r0
	ldr r0, [sp]
	lsls r3, r0, #0x10
	asrs r3, r3, #8
	adds r1, r1, r3
	ldr r2, [sp, #0x38]
	str r1, [r2, #8]
	movs r3, #4
	ldrsh r0, [r2, r3]
	adds r1, r0, #0
	muls r1, r6, r1
	movs r3, #6
	ldrsh r0, [r2, r3]
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, r1, r0
	ldr r3, [sp, #4]
	lsls r0, r3, #0x10
	asrs r0, r0, #8
	adds r1, r1, r0
	ldr r0, [sp, #0x38]
	str r1, [r0, #0xc]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BECF4: .4byte gSineTable

	thumb_func_start sub_80BECF8
sub_80BECF8: @ 0x080BECF8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r7, r1, #0
	adds r6, r2, #0
	ldr r2, [r5, #4]
	lsrs r0, r2, #0x1c
	cmp r0, #0
	bne _080BED2C
	ldr r0, _080BED28 @ =gRefSpriteTables
	ldr r0, [r0]
	ldrh r1, [r5, #0xc]
	ldr r0, [r0, #4]
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	b _080BED3E
	.align 2, 0
_080BED28: .4byte gRefSpriteTables
_080BED2C:
	ldr r0, _080BEE30 @ =gRefSpriteTables
	ldr r1, [r0]
	ldrh r0, [r5, #0xc]
	ldr r1, [r1, #4]
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r1, r2, #4
	ldr r0, [r0]
	adds r1, r0, r1
_080BED3E:
	ldrh r0, [r1, #8]
	strh r0, [r5, #0x10]
	ldrh r0, [r1, #0xa]
	strh r0, [r5, #0x12]
	movs r4, #0x80
	lsls r4, r4, #9
	movs r0, #2
	ldrsh r1, [r7, r0]
	adds r0, r4, #0
	bl Div
	ldr r1, _080BEE34 @ =gSineTable
	mov r8, r1
	ldrh r1, [r7]
	movs r2, #0x80
	lsls r2, r2, #1
	mov sb, r2
	add r1, sb
	lsls r1, r1, #1
	add r1, r8
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r6]
	movs r3, #2
	ldrsh r1, [r7, r3]
	adds r0, r4, #0
	bl Div
	ldrh r1, [r7]
	lsls r1, r1, #1
	add r1, r8
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r6, #2]
	movs r0, #4
	ldrsh r1, [r7, r0]
	adds r0, r4, #0
	bl Div
	ldrh r1, [r7]
	lsls r1, r1, #1
	add r1, r8
	movs r2, #0
	ldrsh r1, [r1, r2]
	rsbs r1, r1, #0
	asrs r1, r1, #6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r6, #4]
	movs r3, #4
	ldrsh r1, [r7, r3]
	adds r0, r4, #0
	bl Div
	ldrh r1, [r7]
	add r1, sb
	lsls r1, r1, #1
	add r1, r8
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r6, #6]
	movs r0, #0
	ldrsh r1, [r6, r0]
	movs r2, #6
	ldrsh r0, [r7, r2]
	rsbs r0, r0, #0
	muls r1, r0, r1
	movs r3, #2
	ldrsh r2, [r6, r3]
	movs r3, #8
	ldrsh r0, [r7, r3]
	rsbs r0, r0, #0
	muls r0, r2, r0
	adds r1, r1, r0
	movs r2, #0x10
	ldrsh r0, [r5, r2]
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [r6, #8]
	movs r3, #4
	ldrsh r1, [r6, r3]
	movs r2, #6
	ldrsh r0, [r7, r2]
	rsbs r0, r0, #0
	muls r1, r0, r1
	movs r3, #6
	ldrsh r2, [r6, r3]
	movs r3, #8
	ldrsh r0, [r7, r3]
	rsbs r0, r0, #0
	muls r0, r2, r0
	adds r1, r1, r0
	movs r2, #0x12
	ldrsh r0, [r5, r2]
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [r6, #0xc]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BEE30: .4byte gRefSpriteTables
_080BEE34: .4byte gSineTable

	thumb_func_start sa2__sub_8004010
sa2__sub_8004010: @ 0x080BEE38
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	movs r0, #0
	mov r8, r0
	mov r1, sp
	str r1, [sp, #0x10]
_080BEE4C:
	mov r2, r8
	lsls r0, r2, #2
	ldr r1, _080BEF04 @ =gUnknown_03003590
	adds r1, #1
	adds r4, r0, r1
	ldr r6, _080BEF08 @ =gUnknown_03003593
	adds r6, r0, r6
	str r6, [sp, #0xc]
	ldrb r1, [r4]
	ldrb r2, [r6]
	mov ip, r2
	mov sl, r0
	cmp r1, ip
	bne _080BEE7E
	ldr r0, _080BEF04 @ =gUnknown_03003590
	add r0, sl
	ldr r1, _080BEF0C @ =gUnknown_03003592
	add r1, sl
	ldrb r0, [r0]
	mov r7, r8
	adds r7, #1
	ldrb r1, [r1]
	cmp r0, r1
	bne _080BEE7E
	b _080BF06A
_080BEE7E:
	ldr r2, _080BEF10 @ =gBgCntRegs
	mov r6, r8
	lsls r3, r6, #1
	adds r0, r3, r2
	ldrh r6, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r0, #0xf8
	lsls r0, r0, #5
	ands r0, r6
	lsls r0, r0, #3
	adds r5, r0, r1
	ldrb r4, [r4]
	ldr r0, _080BEF04 @ =gUnknown_03003590
	add r0, sl
	ldrb r0, [r0]
	str r0, [sp, #8]
	adds r7, r2, #0
	adds r2, r3, #0
	mov r0, r8
	cmp r0, #1
	bls _080BEF90
	ldr r0, _080BEF14 @ =gDispCnt
	ldrh r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080BEF90
	ldr r1, [sp, #8]
	adds r5, r5, r1
	lsrs r2, r6, #0xe
	movs r0, #0x80
	lsls r0, r0, #0xd
	lsls r0, r2
	lsrs r3, r0, #0x10
	mov r2, ip
	cmp r2, #0xff
	bne _080BEF20
	ldr r0, _080BEF18 @ =gUnknown_03006230
	add r0, r8
	ldrb r1, [r0]
	lsls r0, r1, #8
	orrs r1, r0
	adds r0, r4, #0
	muls r0, r3, r0
	adds r0, r5, r0
	ldr r6, [sp, #0x10]
	strh r1, [r6]
	mov r1, sp
	ldr r2, _080BEF1C @ =0x040000D4
	str r1, [r2]
	str r0, [r2, #4]
	ldr r6, [sp, #0xc]
	ldrb r0, [r6]
	subs r0, r0, r4
	muls r0, r3, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	movs r1, #0x81
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	add r2, sp, #4
	mov sb, r2
	b _080BEFE8
	.align 2, 0
_080BEF04: .4byte gUnknown_03003590
_080BEF08: .4byte gUnknown_03003593
_080BEF0C: .4byte gUnknown_03003592
_080BEF10: .4byte gBgCntRegs
_080BEF14: .4byte gDispCnt
_080BEF18: .4byte gUnknown_03006230
_080BEF1C: .4byte 0x040000D4
_080BEF20:
	add r6, sp, #4
	mov sb, r6
	mov r7, r8
	adds r7, #1
	cmp r4, ip
	bls _080BEF2E
	b _080BF054
_080BEF2E:
	ldr r0, _080BEF84 @ =gUnknown_03006230
	add r0, r8
	mov ip, r0
	ldr r2, _080BEF88 @ =0x040000D4
	ldr r1, _080BEF8C @ =gUnknown_03003592
	add r1, sl
	mov r8, r1
	ldr r6, [sp, #0xc]
	str r6, [sp, #0x14]
_080BEF40:
	mov r0, ip
	ldrb r1, [r0]
	lsls r0, r1, #8
	orrs r1, r0
	adds r0, r4, #0
	muls r0, r3, r0
	adds r0, r5, r0
	ldr r6, [sp, #0x10]
	strh r1, [r6]
	mov r1, sp
	str r1, [r2]
	str r0, [r2, #4]
	mov r6, r8
	ldrb r0, [r6]
	ldr r1, [sp, #8]
	subs r0, r0, r1
	adds r0, #1
	asrs r1, r0, #1
	lsrs r0, r0, #0x1f
	adds r1, r1, r0
	asrs r1, r1, #1
	movs r6, #0x81
	lsls r6, r6, #0x18
	orrs r1, r6
	str r1, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [sp, #0x14]
	ldrb r0, [r0]
	cmp r4, r0
	bls _080BEF40
	b _080BF054
	.align 2, 0
_080BEF84: .4byte gUnknown_03006230
_080BEF88: .4byte 0x040000D4
_080BEF8C: .4byte gUnknown_03003592
_080BEF90:
	ldr r1, [sp, #8]
	lsls r0, r1, #1
	adds r5, r5, r0
	movs r3, #0x20
	adds r0, r2, r7
	ldrh r0, [r0]
	lsrs r2, r0, #0xe
	subs r0, r2, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080BEFAA
	movs r3, #0x40
_080BEFAA:
	ldr r1, _080BEFF0 @ =gUnknown_03003592
	add r1, sl
	ldrb r0, [r1]
	cmp r0, #0xff
	bne _080BF000
	ldr r0, _080BEFF4 @ =gUnknown_03006230
	add r0, r8
	ldrb r1, [r0]
	lsls r0, r3, #1
	muls r0, r4, r0
	adds r0, r5, r0
	ldr r2, [sp, #0x10]
	strh r1, [r2]
	mov r6, sp
	ldr r1, _080BEFF8 @ =0x040000D4
	str r6, [r1]
	str r0, [r1, #4]
	ldr r0, _080BEFFC @ =gUnknown_03003593
	add r0, sl
	ldrb r0, [r0]
	subs r0, r0, r4
	muls r0, r3, r0
	lsls r0, r0, #1
	asrs r0, r0, #1
	movs r2, #0x81
	lsls r2, r2, #0x18
	orrs r0, r2
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add r6, sp, #4
	mov sb, r6
_080BEFE8:
	mov r7, r8
	adds r7, #1
	b _080BF054
	.align 2, 0
_080BEFF0: .4byte gUnknown_03003592
_080BEFF4: .4byte gUnknown_03006230
_080BEFF8: .4byte 0x040000D4
_080BEFFC: .4byte gUnknown_03003593
_080BF000:
	ldr r0, _080BF088 @ =gUnknown_03003593
	add r0, sl
	add r2, sp, #4
	mov sb, r2
	mov r7, r8
	adds r7, #1
	ldrb r6, [r0]
	cmp r4, r6
	bhi _080BF054
	ldr r2, _080BF08C @ =gUnknown_03006230
	add r8, r2
	ldr r2, _080BF090 @ =0x040000D4
	mov ip, r1
	str r0, [sp, #0x14]
	lsls r3, r3, #1
_080BF01E:
	mov r6, r8
	ldrb r1, [r6]
	adds r0, r4, #0
	muls r0, r3, r0
	adds r0, r5, r0
	ldr r6, [sp, #0x10]
	strh r1, [r6]
	mov r1, sp
	str r1, [r2]
	str r0, [r2, #4]
	mov r6, ip
	ldrb r0, [r6]
	ldr r1, [sp, #8]
	subs r0, r0, r1
	adds r0, #1
	movs r6, #0x81
	lsls r6, r6, #0x18
	orrs r0, r6
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [sp, #0x14]
	ldrb r0, [r0]
	cmp r4, r0
	bls _080BF01E
_080BF054:
	movs r0, #0
	str r0, [sp, #4]
	mov r1, sb
	ldr r2, _080BF090 @ =0x040000D4
	str r1, [r2]
	ldr r0, _080BF094 @ =gUnknown_03003590
	add r0, sl
	str r0, [r2, #4]
	ldr r0, _080BF098 @ =0x85000001
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_080BF06A:
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #3
	bhi _080BF076
	b _080BEE4C
_080BF076:
	movs r0, #1
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080BF088: .4byte gUnknown_03003593
_080BF08C: .4byte gUnknown_03006230
_080BF090: .4byte 0x040000D4
_080BF094: .4byte gUnknown_03003590
_080BF098: .4byte 0x85000001

	thumb_func_start RenderText
RenderText: @ 0x080BF09C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	str r0, [sp]
	mov sl, r1
	ldr r0, [sp, #0x24]
	ldr r7, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	lsls r2, r2, #0x10
	lsls r3, r3, #0x10
	lsls r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	movs r5, #0
	ldr r1, _080BF138 @ =gBgCntRegs
	lsrs r0, r0, #0x17
	adds r0, r0, r1
	ldrh r4, [r0]
	movs r0, #0xc
	ands r0, r4
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	mov r8, r0
	movs r0, #0xf8
	lsls r0, r0, #5
	ands r0, r4
	lsls r0, r0, #3
	adds r0, r0, r1
	lsrs r3, r3, #0xa
	adds r0, r0, r3
	lsrs r2, r2, #0xf
	adds r6, r0, r2
	ldrb r0, [r7]
	cmp r0, #0
	beq _080BF126
_080BF0EE:
	lsls r4, r5, #5
	ldr r0, [sp]
	adds r4, r0, r4
	adds r0, r7, r5
	ldrb r0, [r0]
	lsls r0, r0, #5
	add r0, sl
	adds r1, r4, #0
	movs r2, #8
	bl CpuFastSet
	mov r2, r8
	subs r4, r4, r2
	lsls r4, r4, #0xb
	lsrs r4, r4, #0x10
	lsls r1, r5, #1
	adds r1, r6, r1
	mov r2, sb
	lsls r0, r2, #0xc
	orrs r4, r0
	strh r4, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r7, r5
	ldrb r0, [r0]
	cmp r0, #0
	bne _080BF0EE
_080BF126:
	lsls r0, r5, #5
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080BF138: .4byte gBgCntRegs

	thumb_func_start animCmd_JumpBack_BG
animCmd_JumpBack_BG: @ 0x080BF13C
	ldr r2, [r0, #4]
	ldrh r0, [r1, #0xe]
	subs r0, r0, r2
	strh r0, [r1, #0xe]
	movs r0, #1
	bx lr

	thumb_func_start animCmd_End_BG
animCmd_End_BG: @ 0x080BF148
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #7
	orrs r0, r2
	str r0, [r1, #8]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start animCmd_PlaySoundEffect_BG
animCmd_PlaySoundEffect_BG: @ 0x080BF158
	push {lr}
	ldrh r2, [r1, #0xe]
	adds r2, #2
	strh r2, [r1, #0xe]
	ldrh r0, [r0, #4]
	bl m4aSongNumStart
	movs r0, #1
	pop {r1}
	bx r1

	thumb_func_start animCmd_TranslateSprite_BG
animCmd_TranslateSprite_BG: @ 0x080BF16C
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

	thumb_func_start animCmd_8_BG
animCmd_8_BG: @ 0x080BF188
	ldrh r0, [r1, #0xe]
	adds r0, #3
	strh r0, [r1, #0xe]
	movs r0, #1
	bx lr
	.align 2, 0

	thumb_func_start animCmd_SetIdAndVariant_BG
animCmd_SetIdAndVariant_BG: @ 0x080BF194
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

	thumb_func_start animCmd_10_BG
animCmd_10_BG: @ 0x080BF1AC
	ldrh r2, [r1, #0xe]
	adds r2, #4
	strh r2, [r1, #0xe]
	bx lr

	thumb_func_start animCmd_SetSpritePriority_BG
animCmd_SetSpritePriority_BG: @ 0x080BF1B4
	ldrh r0, [r1, #0xe]
	adds r0, #2
	strh r0, [r1, #0xe]
	movs r0, #1
	bx lr
	.align 2, 0

	thumb_func_start animCmd_SetOamOrder_BG
animCmd_SetOamOrder_BG: @ 0x080BF1C0
	ldrh r0, [r1, #0xe]
	adds r0, #2
	strh r0, [r1, #0xe]
	movs r0, #1
	bx lr
	.align 2, 0

@ Not in SA2
	thumb_func_start sub_80BF1CC
sub_80BF1CC: @ 0x080BF1CC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r6, r0, #0
	ldr r0, [sp, #0x44]
	ldr r4, [sp, #0x48]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #4]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sl, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r4, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	ldrh r1, [r6, #0x26]
	cmp r0, r1
	bge _080BF2F6
_080BF206:
	ldr r2, [sp]
	ldr r0, [sp, #0x10]
	adds r4, r2, r0
	ldrh r1, [r6, #0x14]
	adds r0, r4, #0
	bl Div
	str r0, [sp, #0x14]
	ldrh r1, [r6, #0x14]
	adds r2, r0, #0
	adds r0, r2, #0
	muls r0, r1, r0
	subs r4, r4, r0
	str r4, [sp, #0x18]
	ldrh r0, [r6, #0x28]
	mov r8, r0
	ldrh r0, [r6, #0x26]
	ldr r2, [sp, #0x10]
	subs r0, r0, r2
	subs r1, r1, r4
	cmp r1, r0
	ble _080BF234
	adds r1, r0, #0
_080BF234:
	mov r0, sl
	muls r0, r1, r0
	str r0, [sp, #0x1c]
	movs r2, #0
	mov sb, r2
	ldr r0, [sp, #0x10]
	adds r1, r0, r1
	str r1, [sp, #0x20]
	cmp sb, r8
	bge _080BF2EC
_080BF248:
	ldr r4, [sp, #4]
	add r4, sb
	ldrh r1, [r6, #0x16]
	adds r0, r4, #0
	bl Div
	ldrh r3, [r6, #0x16]
	adds r1, r0, #0
	muls r1, r3, r1
	subs r4, r4, r1
	subs r5, r3, r4
	ldrh r1, [r6, #0x3c]
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, [sp, #0x14]
	lsls r2, r0, #1
	ldr r0, [r6, #0x38]
	adds r0, r0, r1
	adds r0, r0, r2
	ldrh r0, [r0]
	ldrh r1, [r6, #0x14]
	muls r0, r1, r0
	adds r2, r0, #0
	muls r2, r3, r2
	adds r0, r4, #0
	muls r0, r1, r0
	ldr r1, [sp, #0x18]
	adds r0, r0, r1
	adds r2, r2, r0
	mov r1, sl
	muls r1, r2, r1
	ldr r0, [r6, #0x10]
	adds r7, r0, r1
	ldrh r1, [r6, #0x24]
	ldr r0, [r6, #0xc]
	adds r0, r0, r1
	ldr r2, [sp, #8]
	mov r1, sb
	muls r1, r2, r1
	adds r0, r0, r1
	ldrh r1, [r6, #0x22]
	adds r0, r0, r1
	ldr r2, [sp, #0x10]
	mov r1, sl
	muls r1, r2, r1
	adds r3, r0, r1
	add sb, r5
	cmp r5, r8
	ble _080BF2AC
	mov r5, r8
_080BF2AC:
	mov r0, r8
	subs r0, r0, r5
	mov r8, r0
	adds r0, r5, #0
	subs r5, #1
	cmp r0, #0
	beq _080BF2E6
	ldr r2, _080BF308 @ =0x040000D4
	ldr r1, [sp, #0x1c]
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r1, r0, #1
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r1, r0
	ldr r0, [sp, #0xc]
	mov r4, sl
	muls r4, r0, r4
_080BF2D0:
	str r7, [r2]
	str r3, [r2, #4]
	str r1, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [sp, #8]
	adds r3, r3, r0
	adds r7, r7, r4
	adds r0, r5, #0
	subs r5, #1
	cmp r0, #0
	bne _080BF2D0
_080BF2E6:
	ldrh r1, [r6, #0x28]
	cmp sb, r1
	blt _080BF248
_080BF2EC:
	ldr r2, [sp, #0x20]
	str r2, [sp, #0x10]
	ldrh r0, [r6, #0x26]
	cmp r2, r0
	blt _080BF206
_080BF2F6:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BF308: .4byte 0x040000D4

@ End of background.c

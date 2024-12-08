
.syntax unified
.text
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
	ldr r0, _080BFE6C @ =gOamBuffer + 0x6
	adds r4, r4, r0
	mov r6, sp
	adds r6, #8
	str r6, [sp, #0x28]
	ldrh r0, [r7]
	ldr r2, _080BFE70 @ =sa2__gUnknown_03001944
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
	ldr r3, _080BFE70 @ =sa2__gUnknown_03001944
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
	ldr r2, _080BFE7C @ =sa2__gUnknown_030017F0
	ldrh r0, [r2]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r6]
	movs r3, #0xe
	add r3, sp
	mov sl, r3
	movs r5, #4
	ldrsh r1, [r7, r5]
	ldr r2, _080BFE80 @ =sa2__gUnknown_03005394
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
	ldr r3, _080BFE7C @ =sa2__gUnknown_030017F0
	ldrh r1, [r3]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r6]
_080BFD00:
	movs r4, #4
	ldrsh r0, [r7, r4]
	ldr r5, _080BFE80 @ =sa2__gUnknown_03005394
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
	ldr r0, _080BFE80 @ =sa2__gUnknown_03005394
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
	ldr r1, _080BFE70 @ =sa2__gUnknown_03001944
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
	ldr r6, _080BFE7C @ =sa2__gUnknown_030017F0
	ldrh r1, [r6]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r5]
	mov r2, sp
	adds r2, #0x1a
	ldr r1, _080BFE70 @ =sa2__gUnknown_03001944
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
	ldr r6, _080BFE70 @ =sa2__gUnknown_03001944
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
	ldr r6, _080BFE80 @ =sa2__gUnknown_03005394
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
	ldr r0, _080BFE84 @ =sa2__gUnknown_0300194C
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
	ldr r0, _080BFE88 @ =sa2__gUnknown_03002820
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
_080BFE6C: .4byte gOamBuffer + 0x6
_080BFE70: .4byte sa2__gUnknown_03001944
_080BFE74: .4byte 0x000003FF
_080BFE78: .4byte gSineTable
_080BFE7C: .4byte sa2__gUnknown_030017F0
_080BFE80: .4byte sa2__gUnknown_03005394
_080BFE84: .4byte sa2__gUnknown_0300194C
_080BFE88: .4byte sa2__gUnknown_03002820
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
.syntax divided

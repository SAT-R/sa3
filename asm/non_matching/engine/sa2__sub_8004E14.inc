.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	str r0, [sp, #0x24]
	adds r6, r1, #0
	ldr r2, [r0, #4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne _080BFF44
	b _080C032C
_080BFF44:
	lsrs r0, r2, #0x1c
	cmp r0, #0
	bne _080BFF6C
	ldr r0, _080BFF68 @ =gRefSpriteTables
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
	b _080BFF82
	.align 2, 0
_080BFF68: .4byte gRefSpriteTables
_080BFF6C:
	ldr r0, _080C0278 @ =gRefSpriteTables
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
_080BFF82:
	add r2, sp, #0x20
	ldr r5, [sp, #0x24]
	ldr r0, [r5, #8]
	movs r1, #0x1f
	ands r0, r1
	strh r0, [r2]
	ldrh r4, [r2]
	lsls r4, r4, #5
	ldr r0, _080C027C @ =gOamBuffer + 0x6
	adds r4, r4, r0
	mov r7, sp
	adds r7, #8
	str r7, [sp, #0x28]
	ldrh r0, [r6]
	ldr r2, _080C0280 @ =sa2__gUnknown_03001944
	ldrh r1, [r2]
	adds r0, r0, r1
	ldr r2, _080C0284 @ =0x000003FF
	ands r0, r2
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #1
	ldr r5, _080C0288 @ =gSineTable
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	strh r0, [r7]
	movs r7, #0xa
	add r7, sp
	mov r8, r7
	ldrh r0, [r6]
	ldr r3, _080C0280 @ =sa2__gUnknown_03001944
	ldrh r1, [r3]
	adds r0, r0, r1
	ands r0, r2
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	strh r0, [r7]
	add r7, sp, #0xc
	movs r5, #2
	ldrsh r1, [r6, r5]
	ldr r2, _080C028C @ =sa2__gUnknown_030017F0
	ldrh r0, [r2]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r7]
	movs r3, #0xe
	add r3, sp
	mov sl, r3
	movs r5, #4
	ldrsh r1, [r6, r5]
	ldr r2, _080C0290 @ =sa2__gUnknown_03005394
	ldrh r0, [r2]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r3]
	movs r5, #0x80
	lsls r5, r5, #9
	ldrh r1, [r7]
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
	ldrh r1, [r7]
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
	ldrsh r0, [r6, r1]
	str r0, [sp, #0x2c]
	cmp r0, #0
	bge _080C0098
	movs r2, #2
	ldrsh r0, [r6, r2]
	rsbs r0, r0, #0
	ldr r3, _080C028C @ =sa2__gUnknown_030017F0
	ldrh r1, [r3]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r7]
_080C0098:
	movs r4, #4
	ldrsh r0, [r6, r4]
	ldr r5, _080C0290 @ =sa2__gUnknown_03005394
	ldrh r4, [r5]
	ldrh r2, [r6, #4]
	mov r1, sp
	strh r2, [r1, #0x3c]
	cmp r0, #0
	bge _080C00BA
	movs r3, #4
	ldrsh r0, [r6, r3]
	rsbs r0, r0, #0
	muls r0, r4, r0
	asrs r0, r0, #8
	mov r4, sl
	strh r0, [r4]
	ldrh r4, [r5]
_080C00BA:
	mov r2, sp
	ldr r5, [sp, #0x28]
	ldrh r1, [r5]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r0, [r7]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r2]
	mov r0, sp
	adds r0, #2
	str r0, [sp, #0x30]
	mov r2, r8
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	rsbs r1, r1, #0
	ldrh r0, [r7]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	ldr r3, [sp, #0x30]
	strh r0, [r3]
	mov r5, sp
	adds r5, #4
	str r5, [sp, #0x34]
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r2, sl
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r5]
	mov r3, sp
	adds r3, #6
	str r3, [sp, #0x38]
	ldr r5, [sp, #0x28]
	ldrh r1, [r5]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r3]
	add r0, sp, #0x18
	mov r8, r0
	ldr r1, _080C0280 @ =sa2__gUnknown_03001944
	ldrh r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	ldr r3, _080C0288 @ =gSineTable
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldr r5, _080C028C @ =sa2__gUnknown_030017F0
	ldrh r1, [r5]
	adds r2, r0, #0
	muls r2, r1, r2
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	ldrh r0, [r7]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _080C0294 @ =sa2__gUnknown_03005398
	movs r5, #0
	ldrsh r1, [r3, r5]
	muls r0, r1, r0
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	muls r0, r2, r0
	asrs r0, r0, #8
	mov r1, r8
	strh r0, [r1]
	movs r2, #0x1a
	add r2, sp
	mov ip, r2
	ldr r5, _080C0280 @ =sa2__gUnknown_03001944
	ldrh r0, [r5]
	lsls r0, r0, #1
	ldr r1, _080C0288 @ =gSineTable
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	rsbs r0, r0, #0
	asrs r0, r0, #6
	ldr r5, _080C028C @ =sa2__gUnknown_030017F0
	ldrh r1, [r5]
	adds r2, r0, #0
	muls r2, r1, r2
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	ldrh r0, [r7]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r7, #0
	ldrsh r1, [r3, r7]
	muls r0, r1, r0
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	muls r0, r2, r0
	asrs r0, r0, #8
	mov r1, ip
	strh r0, [r1]
	add r5, sp, #0x1c
	ldr r2, _080C0280 @ =sa2__gUnknown_03001944
	ldrh r0, [r2]
	lsls r0, r0, #1
	ldr r7, _080C0288 @ =gSineTable
	adds r0, r0, r7
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	adds r2, r0, #0
	muls r2, r4, r2
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	mov r1, sl
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r4, #0
	ldrsh r1, [r3, r4]
	muls r0, r1, r0
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	muls r0, r2, r0
	asrs r0, r0, #8
	strh r0, [r5]
	mov r4, sp
	adds r4, #0x1e
	ldr r7, _080C0280 @ =sa2__gUnknown_03001944
	ldrh r0, [r7]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r2, _080C0288 @ =gSineTable
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldr r7, _080C0290 @ =sa2__gUnknown_03005394
	ldrh r1, [r7]
	adds r2, r0, #0
	muls r2, r1, r2
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	mov r1, sl
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r7, #0
	ldrsh r1, [r3, r7]
	muls r0, r1, r0
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	muls r0, r2, r0
	asrs r0, r0, #8
	strh r0, [r4]
	mov r1, r8
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #6
	ldrsh r1, [r6, r2]
	muls r1, r0, r1
	mov r3, ip
	ldrh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r7, #8
	ldrsh r2, [r6, r7]
	muls r0, r2, r0
	adds r1, r1, r0
	ldr r0, _080C0298 @ =sa2__gUnknown_0300194C
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #8
	adds r1, r1, r0
	asrs r1, r1, #8
	str r1, [sp, #0x10]
	ldrh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #6
	ldrsh r1, [r6, r3]
	muls r1, r0, r1
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r4, #8
	ldrsh r2, [r6, r4]
	muls r0, r2, r0
	adds r1, r1, r0
	ldr r0, _080C029C @ =sa2__gUnknown_03002820
	movs r5, #0
	ldrsh r0, [r0, r5]
	lsls r0, r0, #8
	adds r1, r1, r0
	asrs r1, r1, #8
	str r1, [sp, #0x14]
	ldr r6, [sp, #0x30]
	ldr r7, [sp, #0x34]
	ldr r0, [sp, #0x38]
	mov r8, r0
	ldr r1, [sp, #0x2c]
	cmp r1, #0
	ble _080C02A0
	mov r2, sb
	ldrh r4, [r2, #8]
	ldrh r2, [r2, #4]
	b _080C02AE
	.align 2, 0
_080C0278: .4byte gRefSpriteTables
_080C027C: .4byte gOamBuffer + 0x6
_080C0280: .4byte sa2__gUnknown_03001944
_080C0284: .4byte 0x000003FF
_080C0288: .4byte gSineTable
_080C028C: .4byte sa2__gUnknown_030017F0
_080C0290: .4byte sa2__gUnknown_03005394
_080C0294: .4byte sa2__gUnknown_03005398
_080C0298: .4byte sa2__gUnknown_0300194C
_080C029C: .4byte sa2__gUnknown_03002820
_080C02A0:
	mov r3, sb
	ldrh r1, [r3, #4]
	ldrh r0, [r3, #8]
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r2, r1, #0
_080C02AE:
	mov r5, sp
	ldrh r5, [r5, #0x3c]
	lsls r0, r5, #0x10
	cmp r0, #0
	ble _080C02C0
	mov r0, sb
	ldrh r3, [r0, #0xa]
	ldrh r5, [r0, #6]
	b _080C02CE
_080C02C0:
	mov r3, sb
	ldrh r1, [r3, #6]
	ldrh r0, [r3, #0xa]
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r5, r1, #0
_080C02CE:
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
	ldrh r0, [r6]
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
	ldrh r0, [r7]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	muls r1, r4, r1
	mov r4, r8
	ldrh r0, [r4]
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
	ldr r5, [sp, #0x24]
	strh r0, [r5, #0x10]
	ldr r0, [sp, #0x14]
	strh r0, [r5, #0x12]
_080C032C:
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	
.syntax divided

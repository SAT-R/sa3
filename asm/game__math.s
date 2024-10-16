.include "asm/macros.inc"
.include "constants/constants.inc"

.section .rodata
    .global gUnknown_080DBE54
gUnknown_080DBE54:
    .2byte 0x0AAA, 0x02AA

.text
.syntax unified
.arm

@ Start of math.c (src/game/math.c)
	thumb_func_start sa2__sub_80832FC
sa2__sub_80832FC: @ 0x080AEDD4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	mov r8, r0
	mov sl, r1
	str r2, [sp]
	str r3, [sp, #4]
	ldr r6, [sp, #0x54]
	ldr r0, [sp, #0x58]
	mov sb, r0
	mov r1, sb
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	str r6, [sp, #8]
	asrs r2, r6, #0x1f
	str r2, [sp, #0xc]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	adds r3, r1, #0
	adds r2, r0, #0
	bl __muldi3
	mov r2, sb
	bl __ashrdi3
	str r0, [sp, #0x14]
	asrs r0, r0, #0x1f
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	bl __muldi3
	mov r2, sb
	bl __ashrdi3
	str r0, [sp, #0x1c]
	str r1, [sp, #0x20]
	ldr r3, [sp, #0x1c]
	str r3, [sp, #0x10]
	movs r4, #1
	mov r0, sb
	lsls r4, r0
	subs r4, r4, r6
	asrs r5, r4, #0x1f
	adds r1, r5, #0
	adds r0, r4, #0
	adds r3, r5, #0
	adds r2, r4, #0
	bl __muldi3
	mov r2, sb
	bl __ashrdi3
	str r0, [sp, #0x2c]
	asrs r0, r0, #0x1f
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x30]
	adds r3, r5, #0
	adds r2, r4, #0
	bl __muldi3
	mov r2, sb
	bl __ashrdi3
	adds r3, r1, #0
	adds r2, r0, #0
	adds r0, r2, #0
	asrs r1, r2, #0x1f
	mov r2, r8
	asrs r3, r2, #0x1f
	bl __muldi3
	str r0, [sp, #0x24]
	str r1, [sp, #0x28]
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x30]
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	bl __muldi3
	mov r2, sb
	bl __ashrdi3
	mov r2, sl
	asrs r3, r2, #0x1f
	bl __muldi3
	lsrs r2, r0, #0x1f
	mov r8, r2
	lsls r6, r1, #1
	mov r3, r8
	orrs r3, r6
	lsls r2, r0, #1
	adds r2, r2, r0
	adcs r3, r1
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x28]
	adds r0, r0, r2
	adcs r1, r3
	str r0, [sp, #0x24]
	str r1, [sp, #0x28]
	adds r1, r5, #0
	adds r0, r4, #0
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	bl __muldi3
	mov r2, sb
	bl __ashrdi3
	ldr r2, [sp]
	asrs r3, r2, #0x1f
	bl __muldi3
	lsrs r5, r0, #0x1f
	lsls r4, r1, #1
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #1
	adds r2, r2, r0
	adcs r3, r1
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x28]
	adds r0, r0, r2
	adcs r1, r3
	str r0, [sp, #0x24]
	str r1, [sp, #0x28]
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x10]
	asrs r1, r2, #0x1f
	ldr r2, [sp, #4]
	asrs r3, r2, #0x1f
	bl __muldi3
	ldr r3, [sp, #0x24]
	ldr r4, [sp, #0x28]
	adds r3, r3, r0
	adcs r4, r1
	str r3, [sp, #0x24]
	str r4, [sp, #0x28]
	adds r1, r4, #0
	adds r0, r3, #0
	mov r2, sb
	bl __ashrdi3
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sa2__sub_808343C
sa2__sub_808343C: @ 0x080AEF14
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	mov sl, r1
	str r2, [sp]
	str r3, [sp, #4]
	ldr r0, [sp, #0x2c]
	mov r8, r0
	mov r1, r8
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	ldr r4, [sp, #0x28]
	asrs r5, r4, #0x1f
	adds r1, r5, #0
	adds r0, r4, #0
	adds r3, r5, #0
	adds r2, r4, #0
	bl __muldi3
	mov r2, r8
	bl __ashrdi3
	adds r3, r1, #0
	adds r2, r0, #0
	adds r6, r2, #0
	adds r0, r2, #0
	asrs r1, r6, #0x1f
	adds r3, r5, #0
	adds r2, r4, #0
	bl __muldi3
	mov r2, r8
	bl __ashrdi3
	adds r7, r0, #0
	mov r4, sb
	asrs r5, r4, #0x1f
	subs r2, r7, r6
	lsls r2, r2, #1
	subs r2, r2, r6
	movs r0, #1
	mov r3, r8
	lsls r0, r3
	adds r2, r2, r0
	asrs r3, r2, #0x1f
	adds r1, r5, #0
	adds r0, r4, #0
	bl __muldi3
	adds r5, r1, #0
	adds r4, r0, #0
	mov r0, sl
	asrs r1, r0, #0x1f
	subs r2, r7, r6
	mov sb, r2
	subs r2, r2, r6
	ldr r3, [sp, #0x28]
	adds r2, r2, r3
	asrs r3, r2, #0x1f
	bl __muldi3
	adds r4, r4, r0
	adcs r5, r1
	ldr r0, [sp, #4]
	asrs r1, r0, #0x1f
	lsls r2, r6, #1
	adds r2, r2, r6
	subs r2, r2, r7
	subs r2, r2, r7
	asrs r3, r2, #0x1f
	bl __muldi3
	adds r4, r4, r0
	adcs r5, r1
	ldr r0, [sp]
	asrs r1, r0, #0x1f
	mov r2, sb
	asrs r3, r2, #0x1f
	bl __muldi3
	adds r4, r4, r0
	adcs r5, r1
	adds r1, r5, #0
	adds r0, r4, #0
	mov r2, r8
	bl __ashrdi3
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sa2__sub_8083504
sa2__sub_8083504: @ 0x080AEFDC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	movs r0, #2
	ldrsh r1, [r5, r0]
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r1, r0
	beq _080AF006
	ldr r0, [r6, #8]
	muls r0, r1, r0
	asrs r3, r0, #0xa
	movs r2, #2
	ldrsh r0, [r6, r2]
	muls r0, r1, r0
	asrs r0, r0, #0xa
	strh r0, [r7, #2]
	b _080AF008
_080AF006:
	ldr r3, [r6, #8]
_080AF008:
	movs r0, #4
	ldrsh r1, [r5, r0]
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r1, r0
	beq _080AF026
	ldr r0, [r6, #0xc]
	muls r0, r1, r0
	asrs r4, r0, #0xa
	movs r2, #4
	ldrsh r0, [r6, r2]
	muls r0, r1, r0
	asrs r0, r0, #0xa
	strh r0, [r7, #4]
	b _080AF028
_080AF026:
	ldr r4, [r6, #0xc]
_080AF028:
	ldrh r0, [r5]
	cmp r0, #0
	beq _080AF090
	ldr r0, _080AF08C @ =gSineTable
	mov ip, r0
	ldrh r1, [r5]
	movs r2, #0x80
	lsls r2, r2, #1
	mov r8, r2
	adds r0, r1, r2
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	adds r2, r3, #0
	muls r2, r0, r2
	asrs r2, r2, #8
	lsls r1, r1, #1
	add r1, ip
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r4, r0
	asrs r0, r0, #8
	subs r2, r2, r0
	ldr r0, [r5, #8]
	adds r0, r0, r2
	str r0, [r7, #8]
	ldrh r1, [r5]
	lsls r0, r1, #1
	add r0, ip
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	adds r2, r3, #0
	muls r2, r0, r2
	asrs r2, r2, #8
	add r1, r8
	lsls r1, r1, #1
	add r1, ip
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r4, r0
	asrs r0, r0, #8
	adds r2, r2, r0
	ldr r0, [r5, #0xc]
	adds r0, r0, r2
	b _080AF09A
	.align 2, 0
_080AF08C: .4byte gSineTable
_080AF090:
	ldr r0, [r5, #8]
	adds r0, r0, r3
	str r0, [r7, #8]
	ldr r0, [r5, #0xc]
	adds r0, r0, r4
_080AF09A:
	str r0, [r7, #0xc]
	ldrh r0, [r5]
	ldrh r6, [r6]
	adds r0, r0, r6
	ldr r2, _080AF0B4 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r7]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AF0B4: .4byte 0x000003FF

	thumb_func_start sa2__sub_80835E0
sa2__sub_80835E0: @ 0x080AF0B8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #2
	ldrsh r1, [r6, r0]
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r1, r0
	beq _080AF0E0
	ldr r0, [r5, #8]
	muls r0, r1, r0
	asrs r4, r0, #0xa
	movs r2, #2
	ldrsh r0, [r5, r2]
	muls r0, r1, r0
	asrs r0, r0, #0xa
	strh r0, [r5, #2]
	b _080AF0E2
_080AF0E0:
	ldr r4, [r5, #8]
_080AF0E2:
	movs r0, #4
	ldrsh r1, [r6, r0]
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r1, r0
	beq _080AF100
	ldr r0, [r5, #0xc]
	muls r0, r1, r0
	asrs r7, r0, #0xa
	movs r2, #4
	ldrsh r0, [r5, r2]
	muls r0, r1, r0
	asrs r0, r0, #0xa
	strh r0, [r5, #4]
	b _080AF102
_080AF100:
	ldr r7, [r5, #0xc]
_080AF102:
	ldrh r0, [r6]
	mov ip, r0
	mov r0, ip
	cmp r0, #0
	beq _080AF16C
	ldr r3, _080AF168 @ =gSineTable
	ldrh r1, [r6]
	movs r2, #0x80
	lsls r2, r2, #1
	mov r8, r2
	adds r0, r1, r2
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	adds r2, r4, #0
	muls r2, r0, r2
	asrs r2, r2, #8
	lsls r1, r1, #1
	adds r1, r1, r3
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r7, r0
	asrs r0, r0, #8
	subs r2, r2, r0
	ldr r0, [r6, #8]
	adds r0, r0, r2
	str r0, [r5, #8]
	ldrh r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	adds r2, r4, #0
	muls r2, r0, r2
	asrs r2, r2, #8
	add r1, r8
	lsls r1, r1, #1
	adds r1, r1, r3
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r7, r0
	asrs r0, r0, #8
	adds r2, r2, r0
	ldr r0, [r6, #0xc]
	adds r0, r0, r2
	b _080AF176
	.align 2, 0
_080AF168: .4byte gSineTable
_080AF16C:
	ldr r0, [r6, #8]
	adds r0, r0, r4
	str r0, [r5, #8]
	ldr r0, [r6, #0xc]
	adds r0, r0, r7
_080AF176:
	str r0, [r5, #0xc]
	ldrh r0, [r5]
	add r0, ip
	ldr r2, _080AF190 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r5]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AF190: .4byte 0x000003FF

	thumb_func_start sa2__sub_80836BC
sa2__sub_80836BC: @ 0x080AF194
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r5, r1, #0
	movs r0, #2
	ldrsh r1, [r5, r0]
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r1, r0
	beq _080AF1BC
	ldr r0, [r6, #8]
	muls r0, r1, r0
	asrs r4, r0, #0xa
	movs r2, #2
	ldrsh r0, [r6, r2]
	muls r0, r1, r0
	asrs r0, r0, #0xa
	strh r0, [r5, #2]
	b _080AF1BE
_080AF1BC:
	ldr r4, [r6, #8]
_080AF1BE:
	movs r0, #4
	ldrsh r1, [r5, r0]
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r1, r0
	beq _080AF1DC
	ldr r0, [r6, #0xc]
	muls r0, r1, r0
	asrs r7, r0, #0xa
	movs r2, #4
	ldrsh r0, [r6, r2]
	muls r0, r1, r0
	asrs r0, r0, #0xa
	strh r0, [r5, #4]
	b _080AF1DE
_080AF1DC:
	ldr r7, [r6, #0xc]
_080AF1DE:
	ldrh r0, [r5]
	mov ip, r0
	mov r0, ip
	cmp r0, #0
	beq _080AF248
	ldr r3, _080AF244 @ =gSineTable
	ldrh r1, [r5]
	movs r2, #0x80
	lsls r2, r2, #1
	mov r8, r2
	adds r0, r1, r2
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	adds r2, r4, #0
	muls r2, r0, r2
	asrs r2, r2, #8
	lsls r1, r1, #1
	adds r1, r1, r3
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r7, r0
	asrs r0, r0, #8
	subs r2, r2, r0
	ldr r0, [r5, #8]
	adds r0, r0, r2
	str r0, [r5, #8]
	ldrh r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	adds r2, r4, #0
	muls r2, r0, r2
	asrs r2, r2, #8
	add r1, r8
	lsls r1, r1, #1
	adds r1, r1, r3
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r7, r0
	asrs r0, r0, #8
	adds r2, r2, r0
	ldr r0, [r5, #0xc]
	adds r0, r0, r2
	b _080AF252
	.align 2, 0
_080AF244: .4byte gSineTable
_080AF248:
	ldr r0, [r5, #8]
	adds r0, r0, r4
	str r0, [r5, #8]
	ldr r0, [r5, #0xc]
	adds r0, r0, r7
_080AF252:
	str r0, [r5, #0xc]
	ldrh r0, [r6]
	add r0, ip
	ldr r2, _080AF26C @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r5]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AF26C: .4byte 0x000003FF

	thumb_func_start sa2__sub_8083798
sa2__sub_8083798: @ 0x080AF270
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r1, #2
	ldrsh r0, [r7, r1]
	movs r4, #0x80
	lsls r4, r4, #3
	cmp r0, r4
	beq _080AF29A
	movs r0, #0x80
	lsls r0, r0, #0xd
	movs r2, #2
	ldrsh r1, [r7, r2]
	bl Div
	strh r0, [r7, #2]
	movs r0, #2
	ldrsh r1, [r7, r0]
	ldr r0, [r7, #8]
	muls r0, r1, r0
	asrs r0, r0, #0xa
	str r0, [r7, #8]
_080AF29A:
	movs r1, #4
	ldrsh r0, [r7, r1]
	cmp r0, r4
	beq _080AF2BC
	movs r0, #0x80
	lsls r0, r0, #0xd
	movs r2, #4
	ldrsh r1, [r7, r2]
	bl Div
	strh r0, [r7, #4]
	movs r0, #4
	ldrsh r1, [r7, r0]
	ldr r0, [r7, #0xc]
	muls r0, r1, r0
	asrs r0, r0, #0xa
	str r0, [r7, #0xc]
_080AF2BC:
	ldrh r0, [r7]
	subs r0, r4, r0
	ldr r2, _080AF314 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r7]
	cmp r0, #0
	beq _080AF31C
	ldr r5, [r7, #8]
	rsbs r5, r5, #0
	ldr r6, _080AF318 @ =gSineTable
	ldrh r1, [r7]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r3, [r0]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x16
	adds r4, r5, #0
	muls r4, r3, r4
	asrs r4, r4, #8
	ldr r2, [r7, #0xc]
	rsbs r2, r2, #0
	lsls r1, r1, #1
	adds r1, r1, r6
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	adds r0, r2, #0
	muls r0, r1, r0
	asrs r0, r0, #8
	subs r4, r4, r0
	muls r1, r5, r1
	asrs r1, r1, #8
	adds r0, r2, #0
	muls r0, r3, r0
	asrs r0, r0, #8
	adds r1, r1, r0
	str r1, [r7, #0xc]
	str r4, [r7, #8]
	b _080AF328
	.align 2, 0
_080AF314: .4byte 0x000003FF
_080AF318: .4byte gSineTable
_080AF31C:
	ldr r0, [r7, #8]
	rsbs r0, r0, #0
	str r0, [r7, #8]
	ldr r0, [r7, #0xc]
	rsbs r0, r0, #0
	str r0, [r7, #0xc]
_080AF328:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sa2__sub_8083858
sa2__sub_8083858: @ 0x080AF330
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r2, r0, #0
	muls r2, r0, r2
	adds r0, r2, #0
	movs r2, #2
	ldrsh r1, [r4, r2]
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	movs r2, #4
	ldrsh r1, [r4, r2]
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	movs r2, #6
	ldrsh r1, [r4, r2]
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #0xd
	bl __divsi3
	movs r2, #0
	ldrsh r1, [r4, r2]
	muls r1, r0, r1
	asrs r1, r1, #0xa
	strh r1, [r4]
	movs r2, #2
	ldrsh r1, [r4, r2]
	muls r1, r0, r1
	asrs r1, r1, #0xa
	strh r1, [r4, #2]
	movs r2, #4
	ldrsh r1, [r4, r2]
	muls r1, r0, r1
	asrs r1, r1, #0xa
	strh r1, [r4, #4]
	movs r2, #6
	ldrsh r1, [r4, r2]
	muls r0, r1, r0
	asrs r0, r0, #0xa
	strh r0, [r4, #6]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sa2__sub_80838CC
sa2__sub_80838CC: @ 0x080AF3A4
	push {r4, r5, r6, lr}
	movs r3, #6
	ldrsh r4, [r0, r3]
	movs r5, #0
	ldrsh r3, [r1, r5]
	muls r3, r4, r3
	movs r6, #0
	ldrsh r5, [r0, r6]
	movs r6, #6
	ldrsh r4, [r1, r6]
	muls r4, r5, r4
	adds r3, r3, r4
	movs r4, #2
	ldrsh r5, [r0, r4]
	movs r6, #4
	ldrsh r4, [r1, r6]
	muls r4, r5, r4
	adds r3, r3, r4
	movs r4, #4
	ldrsh r5, [r0, r4]
	movs r6, #2
	ldrsh r4, [r1, r6]
	muls r4, r5, r4
	subs r3, r3, r4
	asrs r3, r3, #0xa
	strh r3, [r2]
	movs r3, #6
	ldrsh r4, [r0, r3]
	movs r5, #2
	ldrsh r3, [r1, r5]
	muls r3, r4, r3
	movs r6, #0
	ldrsh r5, [r0, r6]
	movs r6, #4
	ldrsh r4, [r1, r6]
	muls r4, r5, r4
	subs r3, r3, r4
	movs r4, #2
	ldrsh r5, [r0, r4]
	movs r6, #6
	ldrsh r4, [r1, r6]
	muls r4, r5, r4
	adds r3, r3, r4
	movs r4, #4
	ldrsh r5, [r0, r4]
	movs r6, #0
	ldrsh r4, [r1, r6]
	muls r4, r5, r4
	adds r3, r3, r4
	asrs r3, r3, #0xa
	strh r3, [r2, #2]
	movs r3, #6
	ldrsh r4, [r0, r3]
	movs r5, #4
	ldrsh r3, [r1, r5]
	muls r3, r4, r3
	movs r6, #0
	ldrsh r5, [r0, r6]
	movs r6, #2
	ldrsh r4, [r1, r6]
	muls r4, r5, r4
	adds r3, r3, r4
	movs r4, #2
	ldrsh r5, [r0, r4]
	movs r6, #0
	ldrsh r4, [r1, r6]
	muls r4, r5, r4
	subs r3, r3, r4
	movs r4, #4
	ldrsh r5, [r0, r4]
	movs r6, #6
	ldrsh r4, [r1, r6]
	muls r4, r5, r4
	adds r3, r3, r4
	asrs r3, r3, #0xa
	strh r3, [r2, #4]
	movs r3, #6
	ldrsh r4, [r0, r3]
	movs r5, #6
	ldrsh r3, [r1, r5]
	muls r3, r4, r3
	movs r6, #0
	ldrsh r5, [r0, r6]
	movs r6, #0
	ldrsh r4, [r1, r6]
	muls r4, r5, r4
	subs r3, r3, r4
	movs r4, #2
	ldrsh r5, [r0, r4]
	movs r6, #2
	ldrsh r4, [r1, r6]
	muls r4, r5, r4
	subs r3, r3, r4
	movs r5, #4
	ldrsh r4, [r0, r5]
	movs r6, #4
	ldrsh r0, [r1, r6]
	muls r0, r4, r0
	subs r3, r3, r0
	asrs r3, r3, #0xa
	strh r3, [r2, #6]
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sa2__sub_808399C
sa2__sub_808399C: @ 0x080AF474
	push {r4, r5, r6, r7, lr}
	movs r2, #6
	ldrsh r3, [r0, r2]
	movs r4, #0
	ldrsh r2, [r1, r4]
	muls r2, r3, r2
	movs r7, #0
	ldrsh r6, [r0, r7]
	movs r4, #6
	ldrsh r3, [r1, r4]
	muls r3, r6, r3
	adds r2, r2, r3
	movs r7, #2
	ldrsh r5, [r0, r7]
	movs r4, #4
	ldrsh r3, [r1, r4]
	muls r3, r5, r3
	adds r2, r2, r3
	movs r7, #4
	ldrsh r4, [r0, r7]
	movs r7, #2
	ldrsh r3, [r1, r7]
	muls r3, r4, r3
	subs r2, r2, r3
	asrs r2, r2, #0xa
	strh r2, [r0]
	movs r2, #6
	ldrsh r3, [r0, r2]
	movs r7, #2
	ldrsh r2, [r1, r7]
	muls r2, r3, r2
	movs r7, #4
	ldrsh r3, [r1, r7]
	muls r3, r6, r3
	subs r2, r2, r3
	movs r7, #6
	ldrsh r3, [r1, r7]
	muls r3, r5, r3
	adds r2, r2, r3
	movs r7, #0
	ldrsh r3, [r1, r7]
	muls r3, r4, r3
	adds r2, r2, r3
	asrs r2, r2, #0xa
	strh r2, [r0, #2]
	movs r2, #6
	ldrsh r3, [r0, r2]
	movs r7, #4
	ldrsh r2, [r1, r7]
	muls r2, r3, r2
	movs r7, #2
	ldrsh r3, [r1, r7]
	muls r3, r6, r3
	adds r2, r2, r3
	movs r7, #0
	ldrsh r3, [r1, r7]
	muls r3, r5, r3
	subs r2, r2, r3
	movs r7, #6
	ldrsh r3, [r1, r7]
	muls r3, r4, r3
	adds r2, r2, r3
	asrs r2, r2, #0xa
	strh r2, [r0, #4]
	movs r2, #6
	ldrsh r3, [r0, r2]
	movs r7, #6
	ldrsh r2, [r1, r7]
	muls r2, r3, r2
	movs r7, #0
	ldrsh r3, [r1, r7]
	muls r3, r6, r3
	subs r2, r2, r3
	movs r6, #2
	ldrsh r3, [r1, r6]
	muls r3, r5, r3
	subs r2, r2, r3
	movs r7, #4
	ldrsh r1, [r1, r7]
	muls r1, r4, r1
	subs r2, r2, r1
	asrs r2, r2, #0xa
	strh r2, [r0, #6]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sa2__sub_8083A48
sa2__sub_8083A48: @ 0x080AF520
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r3, #6
	ldrsh r2, [r0, r3]
	movs r5, #0
	ldrsh r4, [r1, r5]
	mov r8, r4
	mov r7, r8
	muls r7, r2, r7
	adds r2, r7, #0
	movs r3, #0
	ldrsh r4, [r0, r3]
	movs r5, #6
	ldrsh r3, [r1, r5]
	muls r3, r4, r3
	adds r2, r2, r3
	movs r7, #2
	ldrsh r3, [r0, r7]
	movs r4, #4
	ldrsh r6, [r1, r4]
	muls r3, r6, r3
	adds r2, r2, r3
	movs r5, #4
	ldrsh r3, [r0, r5]
	movs r7, #2
	ldrsh r5, [r1, r7]
	muls r3, r5, r3
	subs r2, r2, r3
	asrs r2, r2, #0xa
	strh r2, [r1]
	movs r3, #6
	ldrsh r2, [r0, r3]
	muls r2, r5, r2
	movs r4, #0
	ldrsh r3, [r0, r4]
	muls r3, r6, r3
	subs r2, r2, r3
	movs r7, #2
	ldrsh r4, [r0, r7]
	movs r7, #6
	ldrsh r3, [r1, r7]
	muls r3, r4, r3
	adds r2, r2, r3
	movs r4, #4
	ldrsh r3, [r0, r4]
	mov r7, r8
	muls r7, r3, r7
	adds r3, r7, #0
	adds r2, r2, r3
	asrs r2, r2, #0xa
	strh r2, [r1, #2]
	movs r3, #6
	ldrsh r2, [r0, r3]
	muls r2, r6, r2
	movs r4, #0
	ldrsh r3, [r0, r4]
	muls r3, r5, r3
	adds r2, r2, r3
	movs r7, #2
	ldrsh r3, [r0, r7]
	mov r4, r8
	muls r4, r3, r4
	adds r3, r4, #0
	subs r2, r2, r3
	movs r7, #4
	ldrsh r4, [r0, r7]
	movs r7, #6
	ldrsh r3, [r1, r7]
	muls r3, r4, r3
	adds r2, r2, r3
	asrs r2, r2, #0xa
	strh r2, [r1, #4]
	movs r2, #6
	ldrsh r3, [r0, r2]
	movs r4, #6
	ldrsh r2, [r1, r4]
	muls r2, r3, r2
	movs r7, #0
	ldrsh r3, [r0, r7]
	mov r4, r8
	muls r4, r3, r4
	adds r3, r4, #0
	subs r2, r2, r3
	movs r7, #2
	ldrsh r3, [r0, r7]
	muls r3, r5, r3
	subs r2, r2, r3
	movs r3, #4
	ldrsh r0, [r0, r3]
	muls r0, r6, r0
	subs r2, r2, r0
	asrs r2, r2, #0xa
	strh r2, [r1, #6]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sa2__sub_8083B10
sa2__sub_8083B10: @ 0x080AF5E8
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r2, r0, #0
	muls r2, r0, r2
	adds r0, r2, #0
	movs r2, #2
	ldrsh r1, [r4, r2]
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	movs r2, #4
	ldrsh r1, [r4, r2]
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	movs r2, #6
	ldrsh r1, [r4, r2]
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #0xd
	bl __divsi3
	movs r2, #0
	ldrsh r1, [r4, r2]
	rsbs r1, r1, #0
	muls r1, r0, r1
	asrs r1, r1, #0xa
	strh r1, [r4]
	movs r2, #2
	ldrsh r1, [r4, r2]
	rsbs r1, r1, #0
	muls r1, r0, r1
	asrs r1, r1, #0xa
	strh r1, [r4, #2]
	movs r2, #4
	ldrsh r1, [r4, r2]
	rsbs r1, r1, #0
	muls r1, r0, r1
	asrs r1, r1, #0xa
	strh r1, [r4, #4]
	movs r2, #6
	ldrsh r1, [r4, r2]
	muls r0, r1, r0
	asrs r0, r0, #0xa
	strh r0, [r4, #6]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sa2__sub_8083B88
sa2__sub_8083B88: @ 0x080AF660
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	movs r0, #2
	ldrsh r1, [r5, r0]
	movs r2, #2
	ldrsh r0, [r6, r2]
	muls r0, r1, r0
	movs r3, #4
	ldrsh r2, [r5, r3]
	movs r3, #8
	ldrsh r1, [r6, r3]
	muls r1, r2, r1
	adds r0, r0, r1
	movs r1, #6
	ldrsh r2, [r5, r1]
	movs r3, #0xe
	ldrsh r1, [r6, r3]
	muls r1, r2, r1
	adds r0, r0, r1
	asrs r0, r0, #0xa
	mov r1, r8
	strh r0, [r1, #2]
	movs r2, #2
	ldrsh r1, [r5, r2]
	movs r3, #4
	ldrsh r0, [r6, r3]
	muls r0, r1, r0
	movs r1, #4
	ldrsh r2, [r5, r1]
	movs r3, #0xa
	ldrsh r1, [r6, r3]
	muls r1, r2, r1
	adds r0, r0, r1
	movs r1, #6
	ldrsh r2, [r5, r1]
	movs r3, #0x10
	ldrsh r1, [r6, r3]
	muls r1, r2, r1
	adds r0, r0, r1
	asrs r0, r0, #0xa
	mov r1, r8
	strh r0, [r1, #4]
	movs r2, #2
	ldrsh r1, [r5, r2]
	movs r3, #6
	ldrsh r0, [r6, r3]
	muls r0, r1, r0
	movs r1, #4
	ldrsh r2, [r5, r1]
	movs r3, #0xc
	ldrsh r1, [r6, r3]
	muls r1, r2, r1
	adds r0, r0, r1
	movs r1, #6
	ldrsh r2, [r5, r1]
	movs r3, #0x12
	ldrsh r1, [r6, r3]
	muls r1, r2, r1
	adds r0, r0, r1
	asrs r0, r0, #0xa
	mov r1, r8
	strh r0, [r1, #6]
	movs r2, #8
	ldrsh r1, [r5, r2]
	movs r3, #2
	ldrsh r0, [r6, r3]
	muls r0, r1, r0
	movs r1, #0xa
	ldrsh r2, [r5, r1]
	movs r3, #8
	ldrsh r1, [r6, r3]
	muls r1, r2, r1
	adds r0, r0, r1
	movs r1, #0xc
	ldrsh r2, [r5, r1]
	movs r3, #0xe
	ldrsh r1, [r6, r3]
	muls r1, r2, r1
	adds r0, r0, r1
	asrs r0, r0, #0xa
	mov r1, r8
	strh r0, [r1, #8]
	movs r2, #8
	ldrsh r1, [r5, r2]
	movs r3, #4
	ldrsh r0, [r6, r3]
	muls r0, r1, r0
	movs r1, #0xa
	ldrsh r2, [r5, r1]
	movs r3, #0xa
	ldrsh r1, [r6, r3]
	muls r1, r2, r1
	adds r0, r0, r1
	movs r1, #0xc
	ldrsh r2, [r5, r1]
	movs r3, #0x10
	ldrsh r1, [r6, r3]
	muls r1, r2, r1
	adds r0, r0, r1
	asrs r0, r0, #0xa
	mov r1, r8
	strh r0, [r1, #0xa]
	movs r2, #8
	ldrsh r1, [r5, r2]
	movs r3, #6
	ldrsh r0, [r6, r3]
	muls r0, r1, r0
	movs r1, #0xa
	ldrsh r2, [r5, r1]
	movs r3, #0xc
	ldrsh r1, [r6, r3]
	muls r1, r2, r1
	adds r0, r0, r1
	movs r1, #0xc
	ldrsh r2, [r5, r1]
	movs r3, #0x12
	ldrsh r1, [r6, r3]
	muls r1, r2, r1
	adds r0, r0, r1
	asrs r0, r0, #0xa
	mov r1, r8
	strh r0, [r1, #0xc]
	movs r2, #0xe
	ldrsh r1, [r5, r2]
	movs r3, #2
	ldrsh r0, [r6, r3]
	muls r0, r1, r0
	movs r1, #0x10
	ldrsh r2, [r5, r1]
	movs r3, #8
	ldrsh r1, [r6, r3]
	muls r1, r2, r1
	adds r0, r0, r1
	movs r1, #0x12
	ldrsh r2, [r5, r1]
	movs r3, #0xe
	ldrsh r1, [r6, r3]
	muls r1, r2, r1
	adds r0, r0, r1
	asrs r0, r0, #0xa
	mov r1, r8
	strh r0, [r1, #0xe]
	movs r2, #0xe
	ldrsh r1, [r5, r2]
	movs r3, #4
	ldrsh r0, [r6, r3]
	muls r0, r1, r0
	movs r1, #0x10
	ldrsh r2, [r5, r1]
	movs r3, #0xa
	ldrsh r1, [r6, r3]
	muls r1, r2, r1
	adds r0, r0, r1
	movs r1, #0x12
	ldrsh r2, [r5, r1]
	movs r3, #0x10
	ldrsh r1, [r6, r3]
	muls r1, r2, r1
	adds r0, r0, r1
	asrs r0, r0, #0xa
	mov r1, r8
	strh r0, [r1, #0x10]
	movs r2, #0xe
	ldrsh r1, [r5, r2]
	movs r3, #6
	ldrsh r0, [r6, r3]
	muls r0, r1, r0
	movs r1, #0x10
	ldrsh r2, [r5, r1]
	movs r3, #0xc
	ldrsh r1, [r6, r3]
	muls r1, r2, r1
	adds r0, r0, r1
	movs r1, #0x12
	ldrsh r2, [r5, r1]
	movs r3, #0x12
	ldrsh r1, [r6, r3]
	muls r1, r2, r1
	adds r0, r0, r1
	asrs r0, r0, #0xa
	mov r1, r8
	strh r0, [r1, #0x12]
	ldr r2, [r5, #0x14]
	mov sl, r2
	mov r3, sl
	asrs r3, r3, #0x1f
	str r3, [sp]
	mov r0, sl
	adds r1, r3, #0
	movs r2, #2
	ldrsh r4, [r6, r2]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	bl __muldi3
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r3, [r5, #0x18]
	mov sb, r3
	mov r0, sb
	asrs r0, r0, #0x1f
	str r0, [sp, #0xc]
	mov r0, sb
	ldr r1, [sp, #0xc]
	movs r2, #8
	ldrsh r4, [r6, r2]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	bl __muldi3
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	adds r2, r2, r0
	adcs r3, r1
	str r2, [sp, #4]
	str r3, [sp, #8]
	ldr r5, [r5, #0x1c]
	asrs r7, r5, #0x1f
	adds r0, r5, #0
	adds r1, r7, #0
	movs r3, #0xe
	ldrsh r4, [r6, r3]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	bl __muldi3
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	adds r0, r0, r2
	adcs r1, r3
	ldr r4, [r6, #0x14]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	adds r0, r0, r2
	adcs r1, r3
	lsls r3, r1, #0x16
	lsrs r2, r0, #0xa
	adds r0, r3, #0
	orrs r0, r2
	mov r3, r8
	str r0, [r3, #0x14]
	mov r0, sl
	ldr r1, [sp]
	movs r2, #4
	ldrsh r4, [r6, r2]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	bl __muldi3
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	mov r0, sb
	ldr r1, [sp, #0xc]
	movs r3, #0xa
	ldrsh r4, [r6, r3]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	bl __muldi3
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	adds r2, r2, r0
	adcs r3, r1
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	adds r0, r5, #0
	adds r1, r7, #0
	movs r3, #0x10
	ldrsh r4, [r6, r3]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	bl __muldi3
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	adds r0, r0, r2
	adcs r1, r3
	ldr r4, [r6, #0x18]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	adds r0, r0, r2
	adcs r1, r3
	lsls r3, r1, #0x16
	lsrs r2, r0, #0xa
	adds r0, r3, #0
	orrs r0, r2
	mov r3, r8
	str r0, [r3, #0x18]
	mov r0, sl
	ldr r1, [sp]
	movs r2, #6
	ldrsh r4, [r6, r2]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	bl __muldi3
	str r0, [sp, #0x18]
	str r1, [sp, #0x1c]
	mov r0, sb
	ldr r1, [sp, #0xc]
	movs r3, #0xc
	ldrsh r4, [r6, r3]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	bl __muldi3
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	adds r2, r2, r0
	adcs r3, r1
	str r2, [sp, #0x18]
	str r3, [sp, #0x1c]
	adds r0, r5, #0
	adds r1, r7, #0
	movs r3, #0x12
	ldrsh r4, [r6, r3]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	bl __muldi3
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	adds r0, r0, r2
	adcs r1, r3
	ldr r4, [r6, #0x1c]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	adds r0, r0, r2
	adcs r1, r3
	lsls r3, r1, #0x16
	lsrs r2, r0, #0xa
	adds r0, r3, #0
	orrs r0, r2
	mov r3, r8
	str r0, [r3, #0x1c]
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sa2__sub_8083E44
sa2__sub_8083E44: @ 0x080AF91C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x30
	adds r6, r0, #0
	adds r5, r1, #0
	movs r0, #2
	ldrsh r2, [r6, r0]
	movs r1, #4
	ldrsh r4, [r6, r1]
	movs r3, #6
	ldrsh r7, [r6, r3]
	movs r1, #2
	ldrsh r0, [r5, r1]
	muls r0, r2, r0
	movs r3, #8
	ldrsh r1, [r5, r3]
	muls r1, r4, r1
	adds r0, r0, r1
	movs r3, #0xe
	ldrsh r1, [r5, r3]
	muls r1, r7, r1
	adds r0, r0, r1
	asrs r0, r0, #0xa
	strh r0, [r6, #2]
	movs r1, #4
	ldrsh r0, [r5, r1]
	muls r0, r2, r0
	movs r3, #0xa
	ldrsh r1, [r5, r3]
	muls r1, r4, r1
	adds r0, r0, r1
	movs r3, #0x10
	ldrsh r1, [r5, r3]
	muls r1, r7, r1
	adds r0, r0, r1
	asrs r0, r0, #0xa
	strh r0, [r6, #4]
	movs r1, #6
	ldrsh r0, [r5, r1]
	muls r0, r2, r0
	movs r2, #0xc
	ldrsh r1, [r5, r2]
	muls r1, r4, r1
	adds r0, r0, r1
	movs r3, #0x12
	ldrsh r1, [r5, r3]
	muls r1, r7, r1
	adds r0, r0, r1
	asrs r0, r0, #0xa
	strh r0, [r6, #6]
	movs r0, #8
	ldrsh r2, [r6, r0]
	movs r1, #0xa
	ldrsh r4, [r6, r1]
	movs r3, #0xc
	ldrsh r7, [r6, r3]
	movs r1, #2
	ldrsh r0, [r5, r1]
	muls r0, r2, r0
	movs r3, #8
	ldrsh r1, [r5, r3]
	muls r1, r4, r1
	adds r0, r0, r1
	movs r3, #0xe
	ldrsh r1, [r5, r3]
	muls r1, r7, r1
	adds r0, r0, r1
	asrs r0, r0, #0xa
	strh r0, [r6, #8]
	movs r1, #4
	ldrsh r0, [r5, r1]
	muls r0, r2, r0
	movs r3, #0xa
	ldrsh r1, [r5, r3]
	muls r1, r4, r1
	adds r0, r0, r1
	movs r3, #0x10
	ldrsh r1, [r5, r3]
	muls r1, r7, r1
	adds r0, r0, r1
	asrs r0, r0, #0xa
	strh r0, [r6, #0xa]
	movs r1, #6
	ldrsh r0, [r5, r1]
	muls r0, r2, r0
	movs r2, #0xc
	ldrsh r1, [r5, r2]
	muls r1, r4, r1
	adds r0, r0, r1
	movs r3, #0x12
	ldrsh r1, [r5, r3]
	muls r1, r7, r1
	adds r0, r0, r1
	asrs r0, r0, #0xa
	strh r0, [r6, #0xc]
	movs r0, #0xe
	ldrsh r2, [r6, r0]
	movs r1, #0x10
	ldrsh r4, [r6, r1]
	movs r3, #0x12
	ldrsh r7, [r6, r3]
	movs r1, #2
	ldrsh r0, [r5, r1]
	muls r0, r2, r0
	movs r3, #8
	ldrsh r1, [r5, r3]
	muls r1, r4, r1
	adds r0, r0, r1
	movs r3, #0xe
	ldrsh r1, [r5, r3]
	muls r1, r7, r1
	adds r0, r0, r1
	asrs r0, r0, #0xa
	strh r0, [r6, #0xe]
	movs r1, #4
	ldrsh r0, [r5, r1]
	muls r0, r2, r0
	movs r3, #0xa
	ldrsh r1, [r5, r3]
	muls r1, r4, r1
	adds r0, r0, r1
	movs r3, #0x10
	ldrsh r1, [r5, r3]
	muls r1, r7, r1
	adds r0, r0, r1
	asrs r0, r0, #0xa
	strh r0, [r6, #0x10]
	movs r1, #6
	ldrsh r0, [r5, r1]
	muls r0, r2, r0
	movs r2, #0xc
	ldrsh r1, [r5, r2]
	muls r1, r4, r1
	adds r0, r0, r1
	movs r3, #0x12
	ldrsh r1, [r5, r3]
	muls r1, r7, r1
	adds r0, r0, r1
	asrs r0, r0, #0xa
	strh r0, [r6, #0x12]
	ldr r2, [r6, #0x14]
	ldr r4, [r6, #0x18]
	ldr r7, [r6, #0x1c]
	str r2, [sp]
	asrs r2, r2, #0x1f
	str r2, [sp, #4]
	movs r1, #2
	ldrsh r0, [r5, r1]
	adds r2, r0, #0
	asrs r3, r0, #0x1f
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl __muldi3
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r4, [sp, #0x10]
	asrs r4, r4, #0x1f
	str r4, [sp, #0x14]
	movs r2, #8
	ldrsh r0, [r5, r2]
	adds r2, r0, #0
	asrs r3, r0, #0x1f
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	bl __muldi3
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	adds r2, r2, r0
	adcs r3, r1
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	str r7, [sp, #0x18]
	asrs r7, r7, #0x1f
	str r7, [sp, #0x1c]
	movs r3, #0xe
	ldrsh r0, [r5, r3]
	adds r2, r0, #0
	asrs r3, r0, #0x1f
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	bl __muldi3
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	adds r0, r0, r2
	adcs r1, r3
	ldr r4, [r5, #0x14]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	adds r0, r0, r2
	adcs r1, r3
	lsls r3, r1, #0x16
	lsrs r2, r0, #0xa
	adds r0, r3, #0
	orrs r0, r2
	str r0, [r6, #0x14]
	movs r3, #4
	ldrsh r0, [r5, r3]
	adds r2, r0, #0
	asrs r3, r0, #0x1f
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl __muldi3
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	movs r1, #0xa
	ldrsh r0, [r5, r1]
	adds r2, r0, #0
	asrs r3, r0, #0x1f
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	bl __muldi3
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x24]
	adds r2, r2, r0
	adcs r3, r1
	str r2, [sp, #0x20]
	str r3, [sp, #0x24]
	movs r3, #0x10
	ldrsh r0, [r5, r3]
	adds r2, r0, #0
	asrs r3, r0, #0x1f
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	bl __muldi3
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x24]
	adds r0, r0, r2
	adcs r1, r3
	ldr r4, [r5, #0x18]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	adds r0, r0, r2
	adcs r1, r3
	lsls r3, r1, #0x16
	lsrs r2, r0, #0xa
	adds r0, r3, #0
	orrs r0, r2
	str r0, [r6, #0x18]
	movs r3, #6
	ldrsh r0, [r5, r3]
	adds r2, r0, #0
	asrs r3, r0, #0x1f
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl __muldi3
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	movs r1, #0xc
	ldrsh r0, [r5, r1]
	adds r2, r0, #0
	asrs r3, r0, #0x1f
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	bl __muldi3
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x2c]
	adds r2, r2, r0
	adcs r3, r1
	str r2, [sp, #0x28]
	str r3, [sp, #0x2c]
	movs r3, #0x12
	ldrsh r0, [r5, r3]
	adds r2, r0, #0
	asrs r3, r0, #0x1f
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	bl __muldi3
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x2c]
	adds r0, r0, r2
	adcs r1, r3
	ldr r4, [r5, #0x1c]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	adds r0, r0, r2
	adcs r1, r3
	lsls r3, r1, #0x16
	lsrs r2, r0, #0xa
	adds r0, r3, #0
	orrs r0, r2
	str r0, [r6, #0x1c]
	add sp, #0x30
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sa2__sub_8084090
sa2__sub_8084090: @ 0x080AFB68
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r0, [r6, #0x14]
	asrs r0, r0, #0x1f
	mov sb, r0
	ldr r0, [r6, #0x14]
	mov r1, sb
	movs r2, #2
	ldrsh r4, [r5, r2]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	bl __muldi3
	str r0, [sp]
	str r1, [sp, #4]
	ldr r3, [r6, #0x18]
	asrs r3, r3, #0x1f
	mov sl, r3
	ldr r0, [r6, #0x18]
	mov r1, sl
	movs r7, #8
	ldrsh r4, [r5, r7]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	bl __muldi3
	ldr r2, [sp]
	ldr r3, [sp, #4]
	adds r2, r2, r0
	adcs r3, r1
	str r2, [sp]
	str r3, [sp, #4]
	ldr r3, [r6, #0x1c]
	mov r8, r3
	asrs r7, r3, #0x1f
	mov r0, r8
	adds r1, r7, #0
	movs r2, #0xe
	ldrsh r4, [r5, r2]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	bl __muldi3
	ldr r2, [sp]
	ldr r3, [sp, #4]
	adds r0, r0, r2
	adcs r1, r3
	ldr r4, [r5, #0x14]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	adds r0, r0, r2
	adcs r1, r3
	lsls r3, r1, #0x16
	lsrs r2, r0, #0xa
	adds r0, r3, #0
	orrs r0, r2
	str r0, [r5, #0x14]
	ldr r0, [r6, #0x14]
	mov r1, sb
	movs r3, #4
	ldrsh r4, [r5, r3]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	bl __muldi3
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r6, #0x18]
	mov r1, sl
	movs r2, #0xa
	ldrsh r4, [r5, r2]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	bl __muldi3
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	adds r2, r2, r0
	adcs r3, r1
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, r8
	adds r1, r7, #0
	movs r3, #0x10
	ldrsh r4, [r5, r3]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	bl __muldi3
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	adds r0, r0, r2
	adcs r1, r3
	ldr r4, [r5, #0x18]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	adds r0, r0, r2
	adcs r1, r3
	lsls r3, r1, #0x16
	lsrs r2, r0, #0xa
	adds r0, r3, #0
	orrs r0, r2
	str r0, [r5, #0x18]
	ldr r0, [r6, #0x14]
	mov r1, sb
	movs r3, #6
	ldrsh r4, [r5, r3]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	bl __muldi3
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	ldr r0, [r6, #0x18]
	mov r1, sl
	movs r2, #0xc
	ldrsh r4, [r5, r2]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	bl __muldi3
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	adds r2, r2, r0
	adcs r3, r1
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	mov r0, r8
	adds r1, r7, #0
	movs r3, #0x12
	ldrsh r4, [r5, r3]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	bl __muldi3
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	adds r0, r0, r2
	adcs r1, r3
	ldr r4, [r5, #0x1c]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	adds r0, r0, r2
	adcs r1, r3
	lsls r3, r1, #0x16
	lsrs r2, r0, #0xa
	adds r0, r3, #0
	orrs r0, r2
	str r0, [r5, #0x1c]
	movs r3, #2
	ldrsh r2, [r5, r3]
	movs r7, #8
	ldrsh r3, [r5, r7]
	movs r0, #0xe
	ldrsh r4, [r5, r0]
	movs r1, #2
	ldrsh r0, [r6, r1]
	muls r0, r2, r0
	movs r7, #4
	ldrsh r1, [r6, r7]
	muls r1, r3, r1
	adds r0, r0, r1
	movs r7, #6
	ldrsh r1, [r6, r7]
	muls r1, r4, r1
	adds r0, r0, r1
	asrs r0, r0, #0xa
	strh r0, [r5, #2]
	movs r1, #8
	ldrsh r0, [r6, r1]
	muls r0, r2, r0
	movs r7, #0xa
	ldrsh r1, [r6, r7]
	muls r1, r3, r1
	adds r0, r0, r1
	movs r7, #0xc
	ldrsh r1, [r6, r7]
	muls r1, r4, r1
	adds r0, r0, r1
	asrs r0, r0, #0xa
	strh r0, [r5, #8]
	movs r1, #0xe
	ldrsh r0, [r6, r1]
	muls r0, r2, r0
	movs r2, #0x10
	ldrsh r1, [r6, r2]
	muls r1, r3, r1
	adds r0, r0, r1
	movs r3, #0x12
	ldrsh r1, [r6, r3]
	muls r1, r4, r1
	adds r0, r0, r1
	asrs r0, r0, #0xa
	strh r0, [r5, #0xe]
	movs r7, #4
	ldrsh r2, [r5, r7]
	movs r0, #0xa
	ldrsh r3, [r5, r0]
	movs r1, #0x10
	ldrsh r4, [r5, r1]
	movs r7, #2
	ldrsh r0, [r6, r7]
	muls r0, r2, r0
	movs r7, #4
	ldrsh r1, [r6, r7]
	muls r1, r3, r1
	adds r0, r0, r1
	movs r7, #6
	ldrsh r1, [r6, r7]
	muls r1, r4, r1
	adds r0, r0, r1
	asrs r0, r0, #0xa
	strh r0, [r5, #4]
	movs r1, #8
	ldrsh r0, [r6, r1]
	muls r0, r2, r0
	movs r7, #0xa
	ldrsh r1, [r6, r7]
	muls r1, r3, r1
	adds r0, r0, r1
	movs r7, #0xc
	ldrsh r1, [r6, r7]
	muls r1, r4, r1
	adds r0, r0, r1
	asrs r0, r0, #0xa
	strh r0, [r5, #0xa]
	movs r1, #0xe
	ldrsh r0, [r6, r1]
	muls r0, r2, r0
	movs r2, #0x10
	ldrsh r1, [r6, r2]
	muls r1, r3, r1
	adds r0, r0, r1
	movs r3, #0x12
	ldrsh r1, [r6, r3]
	muls r1, r4, r1
	adds r0, r0, r1
	asrs r0, r0, #0xa
	strh r0, [r5, #0x10]
	movs r7, #6
	ldrsh r2, [r5, r7]
	movs r0, #0xc
	ldrsh r3, [r5, r0]
	movs r1, #0x12
	ldrsh r4, [r5, r1]
	movs r7, #2
	ldrsh r0, [r6, r7]
	muls r0, r2, r0
	movs r7, #4
	ldrsh r1, [r6, r7]
	muls r1, r3, r1
	adds r0, r0, r1
	movs r7, #6
	ldrsh r1, [r6, r7]
	muls r1, r4, r1
	adds r0, r0, r1
	asrs r0, r0, #0xa
	strh r0, [r5, #6]
	movs r1, #8
	ldrsh r0, [r6, r1]
	muls r0, r2, r0
	movs r7, #0xa
	ldrsh r1, [r6, r7]
	muls r1, r3, r1
	adds r0, r0, r1
	movs r7, #0xc
	ldrsh r1, [r6, r7]
	muls r1, r4, r1
	adds r0, r0, r1
	asrs r0, r0, #0xa
	strh r0, [r5, #0xc]
	movs r1, #0xe
	ldrsh r0, [r6, r1]
	muls r0, r2, r0
	movs r2, #0x10
	ldrsh r1, [r6, r2]
	muls r1, r3, r1
	adds r0, r0, r1
	movs r3, #0x12
	ldrsh r1, [r6, r3]
	muls r1, r4, r1
	adds r0, r0, r1
	asrs r0, r0, #0xa
	strh r0, [r5, #0x12]
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sa2__sub_80842E4
sa2__sub_80842E4: @ 0x080AFDBC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov sb, r0
	mov r8, r1
	str r2, [sp]
	ldr r7, [r0]
	asrs r0, r7, #0x1f
	str r0, [sp, #4]
	adds r0, r7, #0
	ldr r1, [sp, #4]
	mov r2, r8
	movs r3, #2
	ldrsh r4, [r2, r3]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	bl __muldi3
	adds r6, r1, #0
	adds r5, r0, #0
	mov r0, sb
	ldr r0, [r0, #4]
	mov sl, r0
	mov r1, sl
	asrs r1, r1, #0x1f
	str r1, [sp, #8]
	mov r2, r8
	movs r3, #8
	ldrsh r4, [r2, r3]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	bl __muldi3
	adds r5, r5, r0
	adcs r6, r1
	mov r0, sb
	ldr r0, [r0, #8]
	mov sb, r0
	mov r1, sb
	asrs r1, r1, #0x1f
	str r1, [sp, #0xc]
	mov r2, r8
	movs r3, #0xe
	ldrsh r4, [r2, r3]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	bl __muldi3
	adds r0, r0, r5
	adcs r1, r6
	mov r2, r8
	ldr r4, [r2, #0x14]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	adds r0, r0, r2
	adcs r1, r3
	lsls r3, r1, #0x16
	lsrs r2, r0, #0xa
	adds r0, r3, #0
	orrs r0, r2
	ldr r3, [sp]
	str r0, [r3]
	adds r0, r7, #0
	ldr r1, [sp, #4]
	mov r2, r8
	movs r3, #4
	ldrsh r4, [r2, r3]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	bl __muldi3
	adds r6, r1, #0
	adds r5, r0, #0
	mov r0, sl
	ldr r1, [sp, #8]
	mov r2, r8
	movs r3, #0xa
	ldrsh r4, [r2, r3]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	bl __muldi3
	adds r5, r5, r0
	adcs r6, r1
	mov r0, sb
	ldr r1, [sp, #0xc]
	mov r2, r8
	movs r3, #0x10
	ldrsh r4, [r2, r3]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	bl __muldi3
	adds r0, r0, r5
	adcs r1, r6
	mov r2, r8
	ldr r4, [r2, #0x18]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	adds r0, r0, r2
	adcs r1, r3
	lsls r3, r1, #0x16
	lsrs r2, r0, #0xa
	adds r0, r3, #0
	orrs r0, r2
	ldr r3, [sp]
	str r0, [r3, #4]
	adds r0, r7, #0
	ldr r1, [sp, #4]
	mov r2, r8
	movs r3, #6
	ldrsh r4, [r2, r3]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	bl __muldi3
	adds r6, r1, #0
	adds r5, r0, #0
	mov r0, sl
	ldr r1, [sp, #8]
	mov r2, r8
	movs r3, #0xc
	ldrsh r4, [r2, r3]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	bl __muldi3
	adds r5, r5, r0
	adcs r6, r1
	mov r0, sb
	ldr r1, [sp, #0xc]
	mov r2, r8
	movs r3, #0x12
	ldrsh r4, [r2, r3]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	bl __muldi3
	adds r0, r0, r5
	adcs r1, r6
	mov r2, r8
	ldr r4, [r2, #0x1c]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	adds r0, r0, r2
	adcs r1, r3
	lsls r3, r1, #0x16
	lsrs r2, r0, #0xa
	adds r0, r3, #0
	orrs r0, r2
	ldr r3, [sp]
	str r0, [r3, #8]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sa2__sub_808442C
sa2__sub_808442C: @ 0x080AFF04
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	mov sl, r0
	mov r8, r1
	ldr r2, [r0]
	adds r0, r2, #0
	asrs r1, r2, #0x1f
	mov r2, r8
	movs r3, #2
	ldrsh r4, [r2, r3]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	bl __muldi3
	adds r6, r1, #0
	adds r5, r0, #0
	mov r0, sl
	ldr r0, [r0, #4]
	mov sb, r0
	asrs r7, r0, #0x1f
	adds r1, r7, #0
	mov r2, r8
	movs r3, #8
	ldrsh r4, [r2, r3]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	bl __muldi3
	adds r5, r5, r0
	adcs r6, r1
	mov r0, sl
	ldr r0, [r0, #8]
	asrs r0, r0, #0x1f
	str r0, [sp]
	mov r2, sl
	ldr r0, [r2, #8]
	ldr r1, [sp]
	mov r3, r8
	movs r2, #0xe
	ldrsh r4, [r3, r2]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	bl __muldi3
	adds r4, r1, #0
	adds r3, r0, #0
	adds r3, r3, r5
	adcs r4, r6
	mov r0, r8
	ldr r2, [r0, #0x14]
	adds r0, r2, #0
	asrs r1, r2, #0x1f
	adds r3, r3, r0
	adcs r4, r1
	lsls r1, r4, #0x16
	lsrs r0, r3, #0xa
	orrs r1, r0
	str r1, [sp, #4]
	asrs r3, r4, #0xa
	str r3, [sp, #8]
	mov r2, sl
	str r1, [r2]
	ldr r3, [sp, #4]
	asrs r6, r3, #0x1f
	adds r0, r3, #0
	adds r1, r6, #0
	mov r2, r8
	movs r3, #4
	ldrsh r4, [r2, r3]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	bl __muldi3
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r0, sb
	adds r1, r7, #0
	mov r2, r8
	movs r3, #0xa
	ldrsh r4, [r2, r3]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	bl __muldi3
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	adds r2, r2, r0
	adcs r3, r1
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	mov r3, sl
	ldr r0, [r3, #8]
	ldr r1, [sp]
	mov r2, r8
	movs r3, #0x10
	ldrsh r4, [r2, r3]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	bl __muldi3
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	adds r4, r4, r0
	adcs r5, r1
	mov r1, r8
	ldr r2, [r1, #0x18]
	adds r0, r2, #0
	asrs r1, r2, #0x1f
	adds r4, r4, r0
	adcs r5, r1
	lsls r1, r5, #0x16
	lsrs r0, r4, #0xa
	adds r4, r1, #0
	orrs r4, r0
	mov r2, sl
	str r4, [r2, #4]
	ldr r0, [sp, #4]
	adds r1, r6, #0
	mov r3, r8
	movs r2, #6
	ldrsh r6, [r3, r2]
	adds r2, r6, #0
	asrs r3, r6, #0x1f
	bl __muldi3
	adds r7, r1, #0
	adds r6, r0, #0
	adds r0, r4, #0
	asrs r1, r4, #0x1f
	mov r3, r8
	movs r2, #0xc
	ldrsh r4, [r3, r2]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	bl __muldi3
	adds r6, r6, r0
	adcs r7, r1
	mov r3, sl
	ldr r0, [r3, #8]
	ldr r1, [sp]
	mov r2, r8
	movs r3, #0x12
	ldrsh r4, [r2, r3]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	bl __muldi3
	adds r0, r0, r6
	adcs r1, r7
	mov r2, r8
	ldr r4, [r2, #0x1c]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	adds r0, r0, r2
	adcs r1, r3
	lsls r3, r1, #0x16
	lsrs r2, r0, #0xa
	adds r0, r3, #0
	orrs r0, r2
	mov r3, sl
	str r0, [r3, #8]
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sa2__sub_808458C
sa2__sub_808458C: @ 0x080B0064
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	mov sb, r0
	mov sl, r1
	str r2, [sp]
	ldr r0, [r1]
	str r0, [sp, #4]
	asrs r0, r0, #0x1f
	str r0, [sp, #8]
	mov r1, sb
	ldr r0, [r1, #0x14]
	adds r2, r0, #0
	asrs r3, r0, #0x1f
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	bl __muldi3
	adds r7, r1, #0
	adds r6, r0, #0
	mov r2, sl
	ldr r0, [r2, #4]
	str r0, [sp, #0xc]
	asrs r0, r0, #0x1f
	str r0, [sp, #0x10]
	mov r3, sb
	ldr r0, [r3, #0x18]
	adds r2, r0, #0
	asrs r3, r0, #0x1f
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	bl __muldi3
	adds r6, r6, r0
	adcs r7, r1
	mov r1, sl
	ldr r0, [r1, #8]
	adds r4, r0, #0
	asrs r5, r0, #0x1f
	mov r2, sb
	ldr r0, [r2, #0x1c]
	adds r2, r0, #0
	asrs r3, r0, #0x1f
	adds r1, r5, #0
	adds r0, r4, #0
	bl __muldi3
	adds r3, r1, #0
	adds r2, r0, #0
	adds r2, r2, r6
	adcs r3, r7
	ldr r1, _080B0250 @ =0x00000000
	ldr r0, _080B024C @ =0x00100000
	adds r2, r2, r0
	adcs r3, r1
	lsls r6, r3, #0x16
	mov r8, r6
	lsrs r6, r2, #0xa
	mov r2, r8
	orrs r2, r6
	asrs r3, r3, #0xa
	bl __divdi3
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r6, [sp, #0x14]
	mov r1, sb
	movs r2, #2
	ldrsh r0, [r1, r2]
	adds r2, r0, #0
	asrs r3, r0, #0x1f
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	bl __muldi3
	str r0, [sp, #0x1c]
	str r1, [sp, #0x20]
	mov r3, sb
	movs r1, #4
	ldrsh r0, [r3, r1]
	adds r2, r0, #0
	asrs r3, r0, #0x1f
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	bl __muldi3
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	adds r2, r2, r0
	adcs r3, r1
	str r2, [sp, #0x1c]
	str r3, [sp, #0x20]
	mov r3, sb
	movs r1, #6
	ldrsh r0, [r3, r1]
	adds r2, r0, #0
	asrs r3, r0, #0x1f
	adds r1, r5, #0
	adds r0, r4, #0
	bl __muldi3
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	adds r0, r0, r2
	adcs r1, r3
	lsls r3, r1, #0x16
	lsrs r2, r0, #0xa
	adds r0, r3, #0
	orrs r0, r2
	asrs r1, r1, #0xa
	ldr r3, [sp, #0x14]
	str r3, [sp, #0x24]
	asrs r6, r6, #0x1f
	str r6, [sp, #0x28]
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x28]
	bl __muldi3
	lsls r3, r1, #0x16
	lsrs r2, r0, #0xa
	adds r0, r3, #0
	orrs r0, r2
	ldr r6, [sp]
	str r0, [r6]
	mov r0, sl
	ldr r2, [r0]
	adds r0, r2, #0
	asrs r1, r2, #0x1f
	mov r2, sb
	movs r3, #8
	ldrsh r4, [r2, r3]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	bl __muldi3
	adds r6, r1, #0
	adds r5, r0, #0
	mov r0, sl
	ldr r2, [r0, #4]
	adds r0, r2, #0
	asrs r1, r2, #0x1f
	mov r2, sb
	movs r3, #0xa
	ldrsh r4, [r2, r3]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	bl __muldi3
	adds r5, r5, r0
	adcs r6, r1
	mov r0, sl
	ldr r2, [r0, #8]
	adds r0, r2, #0
	asrs r1, r2, #0x1f
	mov r2, sb
	movs r3, #0xc
	ldrsh r4, [r2, r3]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	bl __muldi3
	adds r0, r0, r5
	adcs r1, r6
	lsls r3, r1, #0x16
	lsrs r2, r0, #0xa
	adds r0, r3, #0
	orrs r0, r2
	asrs r1, r1, #0xa
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x28]
	bl __muldi3
	lsls r3, r1, #0x16
	lsrs r2, r0, #0xa
	adds r0, r3, #0
	orrs r0, r2
	ldr r6, [sp]
	str r0, [r6, #4]
	mov r0, sl
	ldr r2, [r0]
	adds r0, r2, #0
	asrs r1, r2, #0x1f
	mov r2, sb
	movs r3, #0xe
	ldrsh r4, [r2, r3]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	bl __muldi3
	adds r6, r1, #0
	adds r5, r0, #0
	mov r0, sl
	ldr r2, [r0, #4]
	adds r0, r2, #0
	asrs r1, r2, #0x1f
	mov r2, sb
	movs r3, #0x10
	ldrsh r4, [r2, r3]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	bl __muldi3
	adds r5, r5, r0
	adcs r6, r1
	mov r0, sl
	ldr r2, [r0, #8]
	adds r0, r2, #0
	asrs r1, r2, #0x1f
	mov r2, sb
	movs r3, #0x12
	ldrsh r4, [r2, r3]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	bl __muldi3
	adds r0, r0, r5
	adcs r1, r6
	lsls r3, r1, #0x16
	lsrs r2, r0, #0xa
	adds r0, r3, #0
	orrs r0, r2
	asrs r1, r1, #0xa
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x28]
	bl __muldi3
	lsls r3, r1, #0x16
	lsrs r2, r0, #0xa
	adds r0, r3, #0
	orrs r0, r2
	ldr r6, [sp]
	str r0, [r6, #8]
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B024C: .4byte 0x00100000
_080B0250: .4byte 0x00000000

	thumb_func_start sa2__sub_808477C
sa2__sub_808477C: @ 0x080B0254
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	mov r8, r0
	str r1, [sp]
	ldr r4, [r1]
	ldr r7, [r1, #4]
	ldr r0, [r0, #0x14]
	adds r1, r4, #0
	muls r1, r0, r1
	mov r2, r8
	ldr r0, [r2, #0x18]
	muls r0, r7, r0
	adds r1, r1, r0
	ldr r3, [sp]
	ldr r3, [r3, #8]
	mov sb, r3
	ldr r0, [r2, #0x1c]
	mov r2, sb
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, r1, r0
	movs r0, #0x80
	lsls r0, r0, #0xd
	adds r1, r1, r0
	asrs r1, r1, #0xa
	bl __divsi3
	mov sl, r0
	str r4, [sp, #4]
	asrs r4, r4, #0x1f
	str r4, [sp, #8]
	mov r3, r8
	movs r1, #2
	ldrsh r0, [r3, r1]
	adds r2, r0, #0
	asrs r3, r0, #0x1f
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	bl __muldi3
	adds r6, r1, #0
	adds r5, r0, #0
	str r7, [sp, #0xc]
	asrs r7, r7, #0x1f
	str r7, [sp, #0x10]
	mov r2, r8
	movs r3, #4
	ldrsh r0, [r2, r3]
	adds r2, r0, #0
	asrs r3, r0, #0x1f
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	bl __muldi3
	adds r5, r5, r0
	adcs r6, r1
	mov r0, sb
	asrs r7, r0, #0x1f
	adds r1, r7, #0
	mov r2, r8
	movs r3, #6
	ldrsh r4, [r2, r3]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	bl __muldi3
	adds r0, r0, r5
	adcs r1, r6
	lsls r3, r1, #0x16
	lsrs r2, r0, #0xa
	adds r0, r3, #0
	orrs r0, r2
	asrs r1, r1, #0xa
	mov r2, sl
	str r2, [sp, #0x14]
	asrs r2, r2, #0x1f
	str r2, [sp, #0x18]
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	bl __muldi3
	lsls r3, r1, #0x16
	lsrs r2, r0, #0xa
	adds r0, r3, #0
	orrs r0, r2
	ldr r3, [sp]
	str r0, [r3]
	mov r1, r8
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r2, r0, #0
	asrs r3, r0, #0x1f
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	bl __muldi3
	adds r6, r1, #0
	adds r5, r0, #0
	mov r3, r8
	movs r1, #0xa
	ldrsh r0, [r3, r1]
	adds r2, r0, #0
	asrs r3, r0, #0x1f
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	bl __muldi3
	adds r5, r5, r0
	adcs r6, r1
	mov r0, sb
	adds r1, r7, #0
	mov r2, r8
	movs r3, #0xc
	ldrsh r4, [r2, r3]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	bl __muldi3
	adds r0, r0, r5
	adcs r1, r6
	lsls r3, r1, #0x16
	lsrs r2, r0, #0xa
	adds r0, r3, #0
	orrs r0, r2
	asrs r1, r1, #0xa
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	bl __muldi3
	lsls r3, r1, #0x16
	lsrs r2, r0, #0xa
	adds r0, r3, #0
	orrs r0, r2
	ldr r2, [sp]
	str r0, [r2, #4]
	mov r3, r8
	movs r1, #0xe
	ldrsh r0, [r3, r1]
	adds r2, r0, #0
	asrs r3, r0, #0x1f
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	bl __muldi3
	adds r6, r1, #0
	adds r5, r0, #0
	mov r2, r8
	movs r3, #0x10
	ldrsh r0, [r2, r3]
	adds r2, r0, #0
	asrs r3, r0, #0x1f
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	bl __muldi3
	adds r5, r5, r0
	adcs r6, r1
	mov r0, sb
	adds r1, r7, #0
	mov r2, r8
	movs r3, #0x12
	ldrsh r4, [r2, r3]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	bl __muldi3
	adds r0, r0, r5
	adcs r1, r6
	lsls r3, r1, #0x16
	lsrs r2, r0, #0xa
	adds r0, r3, #0
	orrs r0, r2
	asrs r1, r1, #0xa
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	bl __muldi3
	lsls r3, r1, #0x16
	lsrs r2, r0, #0xa
	adds r0, r3, #0
	orrs r0, r2
	ldr r2, [sp]
	str r0, [r2, #8]
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sa2__sub_8084904
sa2__sub_8084904: @ 0x080B03DC
	push {r4, r5, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	adds r1, r2, #0
	movs r0, #0
	ldr r5, _080B0438 @ =gSineTable
	movs r3, #0
_080B03EC:
	stm r1!, {r3}
	adds r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1f
	bls _080B03EC
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r1, #0x12]
	strh r0, [r1, #0xa]
	strh r0, [r1, #2]
	lsls r0, r4, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r4, r3
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	strh r0, [r2, #0xa]
	strh r1, [r2, #0xc]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	rsbs r1, r1, #0
	strh r1, [r2, #0x10]
	strh r0, [r2, #0x12]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B0438: .4byte gSineTable

	thumb_func_start sa2__sub_8084964
sa2__sub_8084964: @ 0x080B043C
	push {r4, r5, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	adds r1, r3, #0
	movs r0, #0
	ldr r5, _080B0498 @ =gSineTable
	movs r2, #0
_080B044C:
	stm r1!, {r2}
	adds r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1f
	bls _080B044C
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r1, #0x12]
	strh r0, [r1, #0xa]
	strh r0, [r1, #2]
	lsls r0, r4, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	lsls r1, r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r4, r2
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	strh r0, [r3, #2]
	lsrs r2, r1, #0x10
	asrs r1, r1, #0x10
	rsbs r1, r1, #0
	strh r1, [r3, #6]
	strh r2, [r3, #0xe]
	strh r0, [r3, #0x12]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B0498: .4byte gSineTable

	thumb_func_start sa2__sub_80849C4
sa2__sub_80849C4: @ 0x080B049C
	push {r4, r5, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	adds r1, r2, #0
	movs r0, #0
	ldr r5, _080B04F8 @ =gSineTable
	movs r3, #0
_080B04AC:
	stm r1!, {r3}
	adds r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1f
	bls _080B04AC
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r1, #0x12]
	strh r0, [r1, #0xa]
	strh r0, [r1, #2]
	lsls r0, r4, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r4, r3
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	strh r0, [r2, #2]
	strh r1, [r2, #4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	rsbs r1, r1, #0
	strh r1, [r2, #8]
	strh r0, [r2, #0xa]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B04F8: .4byte gSineTable

	thumb_func_start sa2__sub_8084A24
sa2__sub_8084A24: @ 0x080B04FC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov ip, r0
	adds r7, r2, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r2, ip
	movs r0, #0
	ldr r4, _080B0628 @ =gSineTable
	movs r3, #0
_080B0512:
	stm r2!, {r3}
	adds r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1f
	bls _080B0512
	movs r0, #0x80
	lsls r0, r0, #3
	mov r8, r0
	mov r3, r8
	strh r3, [r2, #0x12]
	strh r3, [r2, #0xa]
	strh r3, [r2, #2]
	lsls r0, r1, #1
	adds r0, r0, r4
	ldrh r5, [r0]
	lsls r5, r5, #0x10
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r6, [r0]
	lsls r6, r6, #0x10
	asrs r6, r6, #0x14
	movs r0, #0
	ldrsh r3, [r7, r0]
	movs r1, #2
	ldrsh r4, [r7, r1]
	adds r0, r3, #0
	muls r0, r4, r0
	asrs r0, r0, #0xa
	mov r2, r8
	subs r2, r2, r6
	mov r8, r2
	mov r1, r8
	muls r1, r0, r1
	lsls r1, r1, #6
	movs r0, #4
	ldrsh r2, [r7, r0]
	adds r0, r4, #0
	muls r0, r2, r0
	asrs r0, r0, #0xa
	mov r4, r8
	muls r4, r0, r4
	lsls r4, r4, #6
	adds r0, r3, #0
	muls r0, r2, r0
	asrs r0, r0, #0xa
	mov r2, r8
	muls r2, r0, r2
	lsls r2, r2, #6
	adds r0, r3, #0
	muls r0, r3, r0
	asrs r0, r0, #0xa
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	asrs r0, r0, #0xa
	adds r0, r6, r0
	mov r3, ip
	strh r0, [r3, #2]
	movs r3, #4
	ldrsh r0, [r7, r3]
	asrs r5, r5, #0x14
	muls r0, r5, r0
	asrs r0, r0, #0xa
	asrs r1, r1, #0x10
	adds r0, r1, r0
	mov r3, ip
	strh r0, [r3, #4]
	movs r3, #2
	ldrsh r0, [r7, r3]
	muls r0, r5, r0
	asrs r0, r0, #0xa
	asrs r2, r2, #0x10
	subs r0, r2, r0
	mov r3, ip
	strh r0, [r3, #6]
	movs r3, #4
	ldrsh r0, [r7, r3]
	muls r0, r5, r0
	asrs r0, r0, #0xa
	subs r1, r1, r0
	mov r0, ip
	strh r1, [r0, #8]
	movs r1, #2
	ldrsh r0, [r7, r1]
	adds r3, r0, #0
	muls r3, r0, r3
	adds r0, r3, #0
	asrs r0, r0, #0xa
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	asrs r0, r0, #0xa
	adds r0, r6, r0
	mov r3, ip
	strh r0, [r3, #0xa]
	movs r1, #0
	ldrsh r0, [r7, r1]
	muls r0, r5, r0
	asrs r0, r0, #0xa
	asrs r4, r4, #0x10
	adds r0, r4, r0
	strh r0, [r3, #0xc]
	movs r3, #2
	ldrsh r0, [r7, r3]
	muls r0, r5, r0
	asrs r0, r0, #0xa
	adds r2, r2, r0
	mov r0, ip
	strh r2, [r0, #0xe]
	movs r1, #0
	ldrsh r0, [r7, r1]
	muls r0, r5, r0
	asrs r0, r0, #0xa
	subs r4, r4, r0
	mov r2, ip
	strh r4, [r2, #0x10]
	movs r3, #4
	ldrsh r0, [r7, r3]
	adds r1, r0, #0
	muls r1, r0, r1
	adds r0, r1, #0
	asrs r0, r0, #0xa
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	asrs r0, r0, #0xa
	adds r6, r6, r0
	mov r3, ip
	strh r6, [r3, #0x12]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B0628: .4byte gSineTable

	thumb_func_start sa2__sub_8084B54
sa2__sub_8084B54: @ 0x080B062C
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r6, _080B0744 @ =gSineTable
	lsls r4, r2, #1
	adds r4, r4, r6
	ldrh r4, [r4]
	mov sl, r4
	mov r4, sl
	lsls r4, r4, #0x10
	mov sl, r4
	movs r4, #0x80
	lsls r4, r4, #1
	adds r2, r2, r4
	lsls r2, r2, #1
	adds r2, r2, r6
	ldrh r2, [r2]
	mov ip, r2
	mov r2, ip
	lsls r2, r2, #0x10
	mov ip, r2
	lsls r2, r1, #1
	adds r2, r2, r6
	ldrh r2, [r2]
	mov r8, r2
	mov r2, r8
	lsls r2, r2, #0x10
	mov r8, r2
	adds r1, r1, r4
	lsls r1, r1, #1
	adds r1, r1, r6
	ldrh r1, [r1]
	mov sb, r1
	mov r1, sb
	lsls r1, r1, #0x10
	mov sb, r1
	lsls r1, r3, #1
	adds r1, r1, r6
	ldrh r5, [r1]
	lsls r5, r5, #0x10
	adds r3, r3, r4
	lsls r3, r3, #1
	adds r3, r3, r6
	ldrh r4, [r3]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x14
	mov r2, sb
	asrs r2, r2, #0x14
	mov sb, r2
	mov r2, sb
	muls r2, r4, r2
	asrs r2, r2, #0xa
	asrs r5, r5, #0x14
	mov r1, sl
	asrs r1, r1, #0x14
	mov sl, r1
	mov r3, sl
	muls r3, r5, r3
	asrs r3, r3, #0xa
	mov r1, r8
	asrs r1, r1, #0x14
	mov r8, r1
	mov r1, r8
	muls r1, r3, r1
	asrs r1, r1, #0xa
	adds r2, r2, r1
	movs r6, #0
	strh r2, [r0, #2]
	mov r2, ip
	asrs r2, r2, #0x14
	mov ip, r2
	mov r1, ip
	muls r1, r5, r1
	asrs r1, r1, #0xa
	strh r1, [r0, #4]
	rsbs r1, r4, #0
	mov r2, r8
	muls r2, r1, r2
	asrs r2, r2, #0xa
	mov r1, sb
	muls r1, r3, r1
	asrs r1, r1, #0xa
	adds r2, r2, r1
	strh r2, [r0, #6]
	rsbs r1, r5, #0
	mov r2, sb
	muls r2, r1, r2
	asrs r2, r2, #0xa
	mov r3, sl
	muls r3, r4, r3
	asrs r3, r3, #0xa
	mov r1, r8
	muls r1, r3, r1
	asrs r1, r1, #0xa
	adds r2, r2, r1
	strh r2, [r0, #8]
	mov r1, ip
	muls r1, r4, r1
	asrs r1, r1, #0xa
	strh r1, [r0, #0xa]
	mov r2, r8
	muls r2, r5, r2
	asrs r2, r2, #0xa
	mov r1, sb
	muls r1, r3, r1
	asrs r1, r1, #0xa
	adds r2, r2, r1
	strh r2, [r0, #0xc]
	mov r4, r8
	mov r1, ip
	muls r1, r4, r1
	asrs r1, r1, #0xa
	strh r1, [r0, #0xe]
	mov r1, sl
	rsbs r1, r1, #0
	strh r1, [r0, #0x10]
	mov r2, sb
	mov r1, ip
	muls r1, r2, r1
	asrs r1, r1, #0xa
	strh r1, [r0, #0x12]
	str r6, [r0, #0x1c]
	str r6, [r0, #0x18]
	str r6, [r0, #0x14]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B0744: .4byte gSineTable

	thumb_func_start sa2__sub_8084C70
sa2__sub_8084C70: @ 0x080B0748
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r3, #0
	ldr r3, [r1]
	str r3, [r5, #0x14]
	ldr r4, [r1, #4]
	str r4, [r5, #0x18]
	ldr r1, [r1, #8]
	str r1, [r5, #0x1c]
	adds r6, r5, #0
	adds r6, #0xe
	ldr r0, [r2]
	subs r0, r0, r3
	movs r3, #0
	strh r0, [r5, #0xe]
	ldr r0, [r2, #4]
	subs r0, r0, r4
	strh r0, [r6, #2]
	ldr r0, [r2, #8]
	subs r0, r0, r1
	strh r0, [r6, #4]
	movs r0, #0xe
	ldrsh r2, [r5, r0]
	movs r1, #0x10
	ldrsh r0, [r5, r1]
	adds r0, r2, r0
	movs r4, #0x12
	ldrsh r1, [r5, r4]
	adds r0, r0, r1
	cmp r0, #0
	bge _080B0788
	rsbs r0, r0, #0
_080B0788:
	cmp r0, #0x20
	ble _080B07DA
	adds r0, r2, #0
	muls r0, r2, r0
	movs r2, #2
	ldrsh r1, [r6, r2]
	adds r3, r1, #0
	muls r3, r1, r3
	adds r1, r3, #0
	adds r0, r0, r1
	movs r4, #4
	ldrsh r1, [r6, r4]
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #0xd
	bl __divsi3
	movs r3, #0xe
	ldrsh r1, [r5, r3]
	muls r1, r0, r1
	asrs r1, r1, #0xa
	strh r1, [r5, #0xe]
	movs r4, #2
	ldrsh r1, [r6, r4]
	muls r1, r0, r1
	asrs r1, r1, #0xa
	strh r1, [r6, #2]
	movs r2, #4
	ldrsh r1, [r6, r2]
	muls r0, r1, r0
	asrs r0, r0, #0xa
	strh r0, [r6, #4]
	b _080B07E4
_080B07DA:
	strh r3, [r5, #0xe]
	strh r3, [r5, #0x10]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r5, #0x12]
_080B07E4:
	adds r3, r5, #0
	adds r3, #0xe
	adds r4, r5, #2
	movs r6, #2
	ldrsh r1, [r7, r6]
	movs r2, #4
	ldrsh r0, [r3, r2]
	muls r1, r0, r1
	movs r6, #4
	ldrsh r2, [r7, r6]
	movs r6, #2
	ldrsh r0, [r3, r6]
	muls r0, r2, r0
	subs r1, r1, r0
	asrs r1, r1, #0xa
	movs r0, #0
	mov ip, r0
	strh r1, [r5, #2]
	movs r2, #4
	ldrsh r1, [r7, r2]
	movs r6, #0xe
	ldrsh r0, [r5, r6]
	muls r0, r1, r0
	movs r1, #0
	ldrsh r2, [r7, r1]
	movs r6, #4
	ldrsh r1, [r3, r6]
	muls r1, r2, r1
	subs r0, r0, r1
	asrs r0, r0, #0xa
	strh r0, [r4, #2]
	movs r0, #0
	ldrsh r1, [r7, r0]
	movs r2, #2
	ldrsh r0, [r3, r2]
	muls r0, r1, r0
	movs r6, #2
	ldrsh r2, [r7, r6]
	movs r6, #0xe
	ldrsh r1, [r5, r6]
	muls r1, r2, r1
	subs r0, r0, r1
	asrs r0, r0, #0xa
	strh r0, [r4, #4]
	movs r0, #2
	ldrsh r2, [r5, r0]
	movs r1, #4
	ldrsh r0, [r5, r1]
	adds r0, r2, r0
	movs r6, #6
	ldrsh r1, [r5, r6]
	adds r0, r0, r1
	adds r7, r3, #0
	cmp r0, #0
	bge _080B0854
	rsbs r0, r0, #0
_080B0854:
	cmp r0, #0x20
	ble _080B08A6
	adds r0, r2, #0
	muls r0, r2, r0
	movs r2, #2
	ldrsh r1, [r4, r2]
	adds r3, r1, #0
	muls r3, r1, r3
	adds r1, r3, #0
	adds r0, r0, r1
	movs r6, #4
	ldrsh r1, [r4, r6]
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #0xd
	bl __divsi3
	movs r3, #2
	ldrsh r1, [r5, r3]
	muls r1, r0, r1
	asrs r1, r1, #0xa
	strh r1, [r5, #2]
	movs r6, #2
	ldrsh r1, [r4, r6]
	muls r1, r0, r1
	asrs r1, r1, #0xa
	strh r1, [r4, #2]
	movs r2, #4
	ldrsh r1, [r4, r2]
	muls r0, r1, r0
	asrs r0, r0, #0xa
	strh r0, [r4, #4]
	b _080B08B2
_080B08A6:
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r5, #2]
	mov r3, ip
	strh r3, [r5, #4]
	strh r3, [r5, #6]
_080B08B2:
	adds r6, r5, #0
	adds r6, #8
	movs r0, #2
	ldrsh r1, [r7, r0]
	movs r2, #4
	ldrsh r0, [r4, r2]
	muls r1, r0, r1
	movs r3, #4
	ldrsh r2, [r7, r3]
	movs r3, #2
	ldrsh r0, [r4, r3]
	muls r0, r2, r0
	subs r1, r1, r0
	asrs r1, r1, #0xa
	movs r3, #0
	strh r1, [r5, #8]
	movs r0, #4
	ldrsh r1, [r7, r0]
	movs r2, #2
	ldrsh r0, [r5, r2]
	muls r0, r1, r0
	movs r2, #0xe
	ldrsh r1, [r5, r2]
	mov ip, r1
	movs r2, #4
	ldrsh r1, [r4, r2]
	mov r2, ip
	muls r2, r1, r2
	adds r1, r2, #0
	subs r0, r0, r1
	asrs r0, r0, #0xa
	strh r0, [r6, #2]
	movs r0, #0xe
	ldrsh r1, [r5, r0]
	movs r2, #2
	ldrsh r0, [r4, r2]
	muls r0, r1, r0
	movs r4, #2
	ldrsh r2, [r7, r4]
	movs r4, #2
	ldrsh r1, [r5, r4]
	muls r1, r2, r1
	subs r0, r0, r1
	asrs r0, r0, #0xa
	strh r0, [r6, #4]
	movs r0, #8
	ldrsh r2, [r5, r0]
	movs r1, #0xa
	ldrsh r0, [r5, r1]
	adds r0, r2, r0
	movs r4, #0xc
	ldrsh r1, [r5, r4]
	adds r0, r0, r1
	cmp r0, #0
	bge _080B0922
	rsbs r0, r0, #0
_080B0922:
	cmp r0, #0x20
	ble _080B0974
	adds r0, r2, #0
	muls r0, r2, r0
	movs r2, #2
	ldrsh r1, [r6, r2]
	adds r3, r1, #0
	muls r3, r1, r3
	adds r1, r3, #0
	adds r0, r0, r1
	movs r4, #4
	ldrsh r1, [r6, r4]
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #0xd
	bl __divsi3
	movs r3, #8
	ldrsh r1, [r5, r3]
	muls r1, r0, r1
	asrs r1, r1, #0xa
	strh r1, [r5, #8]
	movs r4, #2
	ldrsh r1, [r6, r4]
	muls r1, r0, r1
	asrs r1, r1, #0xa
	strh r1, [r6, #2]
	movs r2, #4
	ldrsh r1, [r6, r2]
	muls r0, r1, r0
	asrs r0, r0, #0xa
	strh r0, [r6, #4]
	b _080B097E
_080B0974:
	strh r3, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r5, #0xa]
	strh r3, [r5, #0xc]
_080B097E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sa2__sub_8084EAC
sa2__sub_8084EAC: @ 0x080B0984
	ldrh r2, [r0, #4]
	ldrh r3, [r0, #8]
	eors r2, r3
	adds r1, r2, #0
	eors r1, r3
	strh r1, [r0, #8]
	eors r2, r1
	strh r2, [r0, #4]
	ldrh r2, [r0, #6]
	ldrh r3, [r0, #0xe]
	eors r2, r3
	adds r1, r2, #0
	eors r1, r3
	strh r1, [r0, #0xe]
	eors r2, r1
	strh r2, [r0, #6]
	ldrh r2, [r0, #0xc]
	ldrh r3, [r0, #0x10]
	eors r2, r3
	adds r1, r2, #0
	eors r1, r3
	strh r1, [r0, #0x10]
	eors r2, r1
	strh r2, [r0, #0xc]
	bx lr
	.align 2, 0

	thumb_func_start sa2__sub_8084EE0
sa2__sub_8084EE0: @ 0x080B09B8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	mov r8, r0
	movs r1, #2
	ldrsh r4, [r0, r1]
	movs r3, #0xa
	ldrsh r2, [r0, r3]
	str r2, [sp, #0x20]
	movs r5, #0x12
	ldrsh r2, [r0, r5]
	ldr r7, [sp, #0x20]
	adds r0, r7, #0
	muls r0, r2, r0
	mov r1, r8
	movs r5, #0xc
	ldrsh r3, [r1, r5]
	movs r5, #0x10
	ldrsh r7, [r1, r5]
	str r7, [sp, #0x24]
	adds r1, r3, #0
	muls r1, r7, r1
	subs r0, r0, r1
	asrs r0, r0, #0xa
	adds r1, r4, #0
	muls r1, r0, r1
	mov r7, r8
	movs r0, #4
	ldrsh r6, [r7, r0]
	movs r4, #8
	ldrsh r5, [r7, r4]
	adds r0, r5, #0
	muls r0, r2, r0
	movs r2, #0xe
	ldrsh r4, [r7, r2]
	adds r2, r3, #0
	muls r2, r4, r2
	subs r0, r0, r2
	asrs r0, r0, #0xa
	muls r0, r6, r0
	subs r1, r1, r0
	movs r0, #6
	ldrsh r3, [r7, r0]
	ldr r2, [sp, #0x24]
	adds r0, r5, #0
	muls r0, r2, r0
	ldr r5, [sp, #0x20]
	adds r2, r5, #0
	muls r2, r4, r2
	subs r0, r0, r2
	asrs r0, r0, #0xa
	muls r0, r3, r0
	adds r1, r1, r0
	movs r0, #0x80
	lsls r0, r0, #0xd
	bl __divsi3
	mov r2, sp
	mov r1, r8
	ldm r1!, {r3, r4, r7}
	stm r2!, {r3, r4, r7}
	ldm r1!, {r3, r5, r7}
	stm r2!, {r3, r5, r7}
	ldm r1!, {r4, r5}
	stm r2!, {r4, r5}
	mov r1, sp
	movs r7, #0xa
	ldrsh r2, [r1, r7]
	movs r3, #0x12
	ldrsh r1, [r1, r3]
	muls r2, r1, r2
	mov r1, sp
	movs r4, #0xc
	ldrsh r3, [r1, r4]
	movs r5, #0x10
	ldrsh r1, [r1, r5]
	muls r1, r3, r1
	subs r2, r2, r1
	asrs r2, r2, #0xa
	adds r1, r0, #0
	muls r1, r2, r1
	asrs r1, r1, #0xa
	mov r7, r8
	strh r1, [r7, #2]
	rsbs r4, r0, #0
	mov r1, sp
	movs r3, #4
	ldrsh r2, [r1, r3]
	movs r5, #0x12
	ldrsh r1, [r1, r5]
	muls r2, r1, r2
	mov r1, sp
	movs r7, #6
	ldrsh r3, [r1, r7]
	movs r5, #0x10
	ldrsh r1, [r1, r5]
	muls r1, r3, r1
	subs r2, r2, r1
	asrs r2, r2, #0xa
	adds r1, r4, #0
	muls r1, r2, r1
	asrs r1, r1, #0xa
	mov r7, r8
	strh r1, [r7, #4]
	mov r1, sp
	movs r3, #4
	ldrsh r2, [r1, r3]
	movs r5, #0xc
	ldrsh r1, [r1, r5]
	muls r2, r1, r2
	mov r1, sp
	movs r7, #6
	ldrsh r3, [r1, r7]
	movs r5, #0xa
	ldrsh r1, [r1, r5]
	muls r1, r3, r1
	subs r2, r2, r1
	asrs r2, r2, #0xa
	adds r1, r0, #0
	muls r1, r2, r1
	asrs r1, r1, #0xa
	mov r7, r8
	strh r1, [r7, #6]
	mov r1, sp
	movs r3, #8
	ldrsh r2, [r1, r3]
	movs r5, #0x12
	ldrsh r1, [r1, r5]
	muls r2, r1, r2
	mov r1, sp
	movs r7, #0xc
	ldrsh r3, [r1, r7]
	movs r5, #0xe
	ldrsh r1, [r1, r5]
	muls r1, r3, r1
	subs r2, r2, r1
	asrs r2, r2, #0xa
	adds r1, r4, #0
	muls r1, r2, r1
	asrs r1, r1, #0xa
	mov r7, r8
	strh r1, [r7, #8]
	mov r1, sp
	movs r3, #2
	ldrsh r2, [r1, r3]
	movs r5, #0x12
	ldrsh r1, [r1, r5]
	muls r2, r1, r2
	mov r1, sp
	movs r7, #6
	ldrsh r3, [r1, r7]
	movs r5, #0xe
	ldrsh r1, [r1, r5]
	muls r1, r3, r1
	subs r2, r2, r1
	asrs r2, r2, #0xa
	adds r1, r0, #0
	muls r1, r2, r1
	asrs r1, r1, #0xa
	mov r7, r8
	strh r1, [r7, #0xa]
	mov r1, sp
	movs r3, #2
	ldrsh r2, [r1, r3]
	movs r5, #0xc
	ldrsh r1, [r1, r5]
	muls r2, r1, r2
	mov r1, sp
	movs r7, #6
	ldrsh r3, [r1, r7]
	movs r5, #8
	ldrsh r1, [r1, r5]
	muls r1, r3, r1
	subs r2, r2, r1
	asrs r2, r2, #0xa
	adds r1, r4, #0
	muls r1, r2, r1
	asrs r1, r1, #0xa
	mov r7, r8
	strh r1, [r7, #0xc]
	mov r1, sp
	movs r3, #8
	ldrsh r2, [r1, r3]
	movs r5, #0x10
	ldrsh r1, [r1, r5]
	muls r2, r1, r2
	mov r1, sp
	movs r7, #0xa
	ldrsh r3, [r1, r7]
	movs r5, #0xe
	ldrsh r1, [r1, r5]
	muls r1, r3, r1
	subs r2, r2, r1
	asrs r2, r2, #0xa
	adds r1, r0, #0
	muls r1, r2, r1
	asrs r1, r1, #0xa
	mov r7, r8
	strh r1, [r7, #0xe]
	mov r1, sp
	movs r3, #2
	ldrsh r2, [r1, r3]
	movs r5, #0x10
	ldrsh r1, [r1, r5]
	muls r2, r1, r2
	mov r1, sp
	movs r7, #4
	ldrsh r3, [r1, r7]
	movs r5, #0xe
	ldrsh r1, [r1, r5]
	muls r1, r3, r1
	subs r2, r2, r1
	asrs r2, r2, #0xa
	adds r1, r4, #0
	muls r1, r2, r1
	asrs r1, r1, #0xa
	mov r7, r8
	strh r1, [r7, #0x10]
	mov r1, sp
	movs r3, #2
	ldrsh r2, [r1, r3]
	movs r4, #0xa
	ldrsh r1, [r1, r4]
	muls r2, r1, r2
	mov r1, sp
	movs r5, #4
	ldrsh r3, [r1, r5]
	movs r7, #8
	ldrsh r1, [r1, r7]
	muls r1, r3, r1
	subs r2, r2, r1
	asrs r2, r2, #0xa
	muls r0, r2, r0
	asrs r0, r0, #0xa
	mov r1, r8
	strh r0, [r1, #0x12]
	ldr r2, [sp, #0x14]
	asrs r2, r2, #0x1f
	mov sb, r2
	ldr r0, [sp, #0x14]
	mov r1, sb
	mov r2, sp
	movs r3, #2
	ldrsh r4, [r2, r3]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	bl __muldi3
	adds r6, r1, #0
	adds r5, r0, #0
	ldr r4, [sp, #0x18]
	asrs r4, r4, #0x1f
	mov sl, r4
	ldr r0, [sp, #0x18]
	mov r1, sl
	mov r2, sp
	movs r7, #8
	ldrsh r4, [r2, r7]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	bl __muldi3
	adds r5, r5, r0
	adcs r6, r1
	ldr r0, [sp, #0x1c]
	asrs r7, r0, #0x1f
	adds r1, r7, #0
	mov r2, sp
	movs r3, #0xe
	ldrsh r4, [r2, r3]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	bl __muldi3
	adds r5, r5, r0
	adcs r6, r1
	adds r1, r6, #0
	adds r0, r5, #0
	bl __negdi2
	lsls r3, r1, #0x16
	lsrs r2, r0, #0xa
	adds r0, r3, #0
	orrs r0, r2
	mov r4, r8
	strh r0, [r4, #0x14]
	ldr r0, [sp, #0x14]
	mov r1, sb
	mov r2, sp
	movs r5, #4
	ldrsh r4, [r2, r5]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	bl __muldi3
	adds r6, r1, #0
	adds r5, r0, #0
	ldr r0, [sp, #0x18]
	mov r1, sl
	mov r2, sp
	movs r3, #0xa
	ldrsh r4, [r2, r3]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	bl __muldi3
	adds r5, r5, r0
	adcs r6, r1
	ldr r0, [sp, #0x1c]
	adds r1, r7, #0
	mov r2, sp
	movs r3, #0x10
	ldrsh r4, [r2, r3]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	bl __muldi3
	adds r5, r5, r0
	adcs r6, r1
	adds r1, r6, #0
	adds r0, r5, #0
	bl __negdi2
	lsls r3, r1, #0x16
	lsrs r2, r0, #0xa
	adds r0, r3, #0
	orrs r0, r2
	mov r4, r8
	strh r0, [r4, #0x16]
	ldr r0, [sp, #0x14]
	mov r1, sb
	mov r2, sp
	movs r5, #6
	ldrsh r4, [r2, r5]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	bl __muldi3
	adds r6, r1, #0
	adds r5, r0, #0
	ldr r0, [sp, #0x18]
	mov r1, sl
	mov r2, sp
	movs r3, #0xc
	ldrsh r4, [r2, r3]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	bl __muldi3
	adds r5, r5, r0
	adcs r6, r1
	ldr r0, [sp, #0x1c]
	adds r1, r7, #0
	mov r2, sp
	movs r7, #0x12
	ldrsh r4, [r2, r7]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	bl __muldi3
	adds r5, r5, r0
	adcs r6, r1
	adds r1, r6, #0
	adds r0, r5, #0
	bl __negdi2
	lsls r3, r1, #0x16
	lsrs r2, r0, #0xa
	adds r0, r3, #0
	orrs r0, r2
	mov r2, r8
	strh r0, [r2, #0x18]
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sa2__sub_80851E0
sa2__sub_80851E0: @ 0x080B0CB8
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #0x10
	mov r8, r0
	bl sa2__sub_8084EAC
	mov r1, r8
	ldr r0, [r1, #0x14]
	rsbs r0, r0, #0
	str r0, [r1, #0x14]
	ldr r4, [r1, #0x18]
	rsbs r4, r4, #0
	str r4, [r1, #0x18]
	ldr r2, [r1, #0x1c]
	mov sb, r2
	mov r3, sb
	rsbs r3, r3, #0
	mov sb, r3
	str r3, [r1, #0x1c]
	str r0, [sp]
	asrs r0, r0, #0x1f
	str r0, [sp, #4]
	movs r2, #2
	ldrsh r0, [r1, r2]
	adds r2, r0, #0
	asrs r3, r0, #0x1f
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl __muldi3
	adds r6, r1, #0
	adds r5, r0, #0
	str r4, [sp, #8]
	asrs r4, r4, #0x1f
	str r4, [sp, #0xc]
	mov r3, r8
	movs r1, #8
	ldrsh r0, [r3, r1]
	adds r2, r0, #0
	asrs r3, r0, #0x1f
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	bl __muldi3
	adds r5, r5, r0
	adcs r6, r1
	mov r2, sb
	asrs r2, r2, #0x1f
	mov sl, r2
	mov r0, sb
	mov r1, sl
	mov r3, r8
	movs r2, #0xe
	ldrsh r4, [r3, r2]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	bl __muldi3
	adds r0, r0, r5
	adcs r1, r6
	lsls r3, r1, #0x16
	lsrs r2, r0, #0xa
	adds r0, r3, #0
	orrs r0, r2
	mov r3, r8
	str r0, [r3, #0x14]
	movs r1, #4
	ldrsh r0, [r3, r1]
	adds r2, r0, #0
	asrs r3, r0, #0x1f
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl __muldi3
	adds r6, r1, #0
	adds r5, r0, #0
	mov r2, r8
	movs r3, #0xa
	ldrsh r0, [r2, r3]
	adds r2, r0, #0
	asrs r3, r0, #0x1f
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	bl __muldi3
	adds r5, r5, r0
	adcs r6, r1
	mov r0, sb
	mov r1, sl
	mov r2, r8
	movs r3, #0x10
	ldrsh r4, [r2, r3]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	bl __muldi3
	adds r0, r0, r5
	adcs r1, r6
	lsls r3, r1, #0x16
	lsrs r2, r0, #0xa
	adds r0, r3, #0
	orrs r0, r2
	mov r2, r8
	str r0, [r2, #0x18]
	movs r3, #6
	ldrsh r0, [r2, r3]
	adds r2, r0, #0
	asrs r3, r0, #0x1f
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl __muldi3
	adds r6, r1, #0
	adds r5, r0, #0
	mov r1, r8
	movs r2, #0xc
	ldrsh r0, [r1, r2]
	adds r2, r0, #0
	asrs r3, r0, #0x1f
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	bl __muldi3
	adds r5, r5, r0
	adcs r6, r1
	mov r0, sb
	mov r1, sl
	mov r3, r8
	movs r2, #0x12
	ldrsh r4, [r3, r2]
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	bl __muldi3
	adds r0, r0, r5
	adcs r1, r6
	lsls r3, r1, #0x16
	lsrs r2, r0, #0xa
	adds r0, r3, #0
	orrs r0, r2
	mov r3, r8
	str r0, [r3, #0x1c]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sa2__sub_8085314
sa2__sub_8085314: @ 0x080B0DEC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r2, #0
	ldrsh r3, [r1, r2]
	lsls r3, r3, #1
	movs r5, #2
	ldrsh r4, [r1, r5]
	lsls r4, r4, #1
	movs r7, #4
	ldrsh r6, [r1, r7]
	lsls r6, r6, #1
	movs r5, #6
	ldrsh r2, [r1, r5]
	adds r5, r3, #0
	muls r5, r2, r5
	lsls r5, r5, #6
	str r5, [sp]
	adds r7, r4, #0
	muls r7, r2, r7
	adds r5, r7, #0
	lsls r5, r5, #6
	mov ip, r5
	adds r7, r6, #0
	muls r7, r2, r7
	adds r2, r7, #0
	lsls r2, r2, #6
	mov sb, r2
	movs r5, #0
	ldrsh r2, [r1, r5]
	adds r7, r3, #0
	muls r7, r2, r7
	adds r3, r7, #0
	lsls r3, r3, #6
	mov r8, r3
	adds r3, r4, #0
	muls r3, r2, r3
	lsls r3, r3, #6
	adds r5, r6, #0
	muls r5, r2, r5
	lsls r5, r5, #6
	movs r7, #2
	ldrsh r2, [r1, r7]
	adds r7, r4, #0
	muls r7, r2, r7
	adds r4, r7, #0
	lsls r4, r4, #6
	mov sl, r4
	adds r4, r6, #0
	muls r4, r2, r4
	lsls r4, r4, #6
	movs r7, #4
	ldrsh r1, [r1, r7]
	adds r2, r6, #0
	muls r2, r1, r2
	lsls r2, r2, #6
	mov r1, sl
	asrs r1, r1, #0x10
	mov sl, r1
	asrs r2, r2, #0x10
	adds r1, r1, r2
	movs r7, #0x80
	lsls r7, r7, #3
	adds r6, r7, #0
	subs r1, r6, r1
	movs r7, #0
	str r7, [r0, #0x14]
	strh r1, [r0, #2]
	asrs r3, r3, #0x10
	mov r1, sb
	asrs r1, r1, #0x10
	mov sb, r1
	subs r1, r3, r1
	strh r1, [r0, #4]
	asrs r5, r5, #0x10
	mov r7, ip
	asrs r7, r7, #0x10
	adds r1, r5, r7
	strh r1, [r0, #6]
	add r3, sb
	strh r3, [r0, #8]
	mov r1, r8
	asrs r1, r1, #0x10
	mov r8, r1
	add r2, r8
	subs r2, r6, r2
	strh r2, [r0, #0xa]
	asrs r4, r4, #0x10
	ldr r2, [sp]
	asrs r3, r2, #0x10
	subs r1, r4, r3
	strh r1, [r0, #0xc]
	subs r5, r5, r7
	strh r5, [r0, #0xe]
	adds r4, r4, r3
	strh r4, [r0, #0x10]
	add r8, sl
	mov r3, r8
	subs r6, r6, r3
	strh r6, [r0, #0x12]
	ldr r4, [r0, #0x14]
	str r4, [r0, #0x1c]
	str r4, [r0, #0x18]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sa2__sub_80853F8
sa2__sub_80853F8: @ 0x080B0ED0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0xc]
	movs r5, #1
	ands r0, r5
	cmp r0, #0
	bne _080B0FAA
	ldr r0, [r4, #0x10]
	cmp r0, #1
	bne _080B0FA4
	adds r0, r4, #0
	adds r0, #0x34
	adds r1, r4, #0
	adds r1, #0x54
	ldrh r1, [r1]
	adds r2, r4, #0
	adds r2, #0x56
	ldrh r2, [r2]
	adds r3, r4, #0
	adds r3, #0x58
	ldrh r3, [r3]
	bl sa2__sub_8084B54
	adds r2, r4, #0
	adds r2, #0x5c
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r3, #0x36
	ldrsh r0, [r4, r3]
	muls r0, r1, r0
	asrs r0, r0, #0xa
	strh r0, [r4, #0x36]
	movs r6, #0
	ldrsh r1, [r2, r6]
	movs r3, #0x38
	ldrsh r0, [r4, r3]
	muls r0, r1, r0
	asrs r0, r0, #0xa
	strh r0, [r4, #0x38]
	movs r6, #0
	ldrsh r1, [r2, r6]
	movs r2, #0x3a
	ldrsh r0, [r4, r2]
	muls r0, r1, r0
	asrs r0, r0, #0xa
	strh r0, [r4, #0x3a]
	adds r2, r4, #0
	adds r2, #0x5e
	movs r3, #0
	ldrsh r1, [r2, r3]
	movs r6, #0x3c
	ldrsh r0, [r4, r6]
	muls r0, r1, r0
	asrs r0, r0, #0xa
	strh r0, [r4, #0x3c]
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r3, #0x3e
	ldrsh r0, [r4, r3]
	muls r0, r1, r0
	asrs r0, r0, #0xa
	strh r0, [r4, #0x3e]
	movs r6, #0
	ldrsh r2, [r2, r6]
	adds r1, r4, #0
	adds r1, #0x40
	movs r3, #0
	ldrsh r0, [r1, r3]
	muls r0, r2, r0
	asrs r0, r0, #0xa
	strh r0, [r1]
	adds r3, r4, #0
	adds r3, #0x60
	movs r6, #0
	ldrsh r1, [r3, r6]
	adds r2, r4, #0
	adds r2, #0x42
	movs r6, #0
	ldrsh r0, [r2, r6]
	muls r0, r1, r0
	asrs r0, r0, #0xa
	strh r0, [r2]
	movs r0, #0
	ldrsh r2, [r3, r0]
	adds r1, r4, #0
	adds r1, #0x44
	movs r6, #0
	ldrsh r0, [r1, r6]
	muls r0, r2, r0
	asrs r0, r0, #0xa
	strh r0, [r1]
	movs r0, #0
	ldrsh r1, [r3, r0]
	adds r2, r4, #0
	adds r2, #0x46
	movs r3, #0
	ldrsh r0, [r2, r3]
	muls r0, r1, r0
	asrs r0, r0, #0xa
	strh r0, [r2]
	ldr r0, [r4, #0x64]
	str r0, [r4, #0x48]
	ldr r0, [r4, #0x68]
	str r0, [r4, #0x4c]
	ldr r0, [r4, #0x6c]
	str r0, [r4, #0x50]
_080B0FA4:
	ldr r0, [r4, #0xc]
	orrs r0, r5
	str r0, [r4, #0xc]
_080B0FAA:
	adds r0, r4, #0
	adds r0, #0x34
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start Random
Random: @ 0x080B0FB4
	ldr r3, _080B0FCC @ =gRngPrevValue
	ldr r1, _080B0FD0 @ =gRngValue
	ldr r0, [r3]
	ldr r2, [r1]
	str r2, [r3]
	ldr r3, _080B0FD4 @ =0x37119371
	adds r0, r0, r3
	adds r0, r0, r2
	str r0, [r1]
	ldrh r0, [r1, #2]
	bx lr
	.align 2, 0
_080B0FCC: .4byte gRngPrevValue
_080B0FD0: .4byte gRngValue
_080B0FD4: .4byte 0x37119371

	thumb_func_start SeedRng
SeedRng: @ 0x080B0FD8
	ldr r2, _080B0FE4 @ =gRngPrevValue
	str r0, [r2]
	ldr r0, _080B0FE8 @ =gRngValue
	str r1, [r0]
	bx lr
	.align 2, 0
_080B0FE4: .4byte gRngPrevValue
_080B0FE8: .4byte gRngValue

	thumb_func_start AbsMax
AbsMax: @ 0x080B0FEC
	push {lr}
	adds r2, r0, #0
	adds r0, r1, #0
	cmp r2, #0
	bge _080B0FF8
	rsbs r2, r2, #0
_080B0FF8:
	cmp r0, #0
	bge _080B0FFE
	rsbs r0, r0, #0
_080B0FFE:
	cmp r0, r2
	bge _080B1004
	adds r0, r2, #0
_080B1004:
	pop {r1}
	bx r1

	thumb_func_start sa2__sub_8085530
sa2__sub_8085530: @ 0x080B1008
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	cmp r7, #0
	bge _080B1014
	rsbs r7, r7, #0
_080B1014:
	cmp r6, #0
	bge _080B101A
	rsbs r6, r6, #0
_080B101A:
	cmp r7, r6
	bgt _080B1034
	adds r0, r6, #0
	asrs r1, r6, #0x1f
	movs r2, #0xf6
	movs r3, #0
	bl __muldi3
	adds r5, r1, #0
	adds r4, r0, #0
	adds r0, r7, #0
	asrs r1, r7, #0x1f
	b _080B1048
_080B1034:
	adds r0, r7, #0
	asrs r1, r7, #0x1f
	movs r2, #0xf6
	movs r3, #0
	bl __muldi3
	adds r5, r1, #0
	adds r4, r0, #0
	adds r0, r6, #0
	asrs r1, r6, #0x1f
_080B1048:
	movs r2, #0x66
	movs r3, #0
	bl __muldi3
	adds r0, r0, r4
	adcs r1, r5
	lsls r3, r1, #0x18
	lsrs r2, r0, #8
	adds r0, r3, #0
	orrs r0, r2
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sa2__sub_808558C
sa2__sub_808558C: @ 0x080B1064
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r4, #1
	lsls r4, r2
	subs r1, r4, #1
	subs r0, r3, r0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsrs r0, r4, #1
	cmp r3, r0
	bls _080B108C
	subs r0, r3, r4
	lsls r0, r0, #0x10
	b _080B108E
_080B108C:
	lsls r0, r3, #0x10
_080B108E:
	asrs r0, r0, #0x10
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sa2__sub_80855C0
sa2__sub_80855C0: @ 0x080B1098
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	mov r8, r0
	adds r4, r1, #0
	adds r0, r2, #0
	lsls r6, r3, #0x18
	lsrs r6, r6, #0x18
	asrs r1, r0, #0x1f
	mov r2, r8
	subs r4, r2, r4
	asrs r5, r4, #0x1f
	adds r3, r5, #0
	adds r2, r4, #0
	bl __muldi3
	adds r2, r6, #0
	bl __ashrdi3
	mov r2, r8
	subs r2, r2, r0
	mov r8, r2
	mov r0, r8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sa2__sub_80855F8
sa2__sub_80855F8: @ 0x080B10D0
	push {r4, r5, r6, r7, lr}
	ldr r4, [sp, #0x14]
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	lsls r3, r3, #0x10
	lsrs r5, r3, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsrs r2, r1, #0x10
	movs r3, #1
	lsls r3, r6
	subs r1, r3, #1
	subs r0, r2, r7
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsrs r0, r3, #1
	cmp r2, r0
	bls _080B1102
	subs r0, r2, r3
	lsls r0, r0, #0x10
	b _080B1104
_080B1102:
	lsls r0, r2, #0x10
_080B1104:
	asrs r1, r0, #0x10
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	rsbs r1, r1, #0
	muls r0, r1, r0
	asrs r0, r4
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, r7, r0
	movs r1, #1
	lsls r1, r6
	subs r1, #1
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sa2__sub_8085654
sa2__sub_8085654: @ 0x080B112C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	mov r8, r1
	adds r6, r2, #0
	ldr r0, [sp, #0x18]
	lsls r3, r3, #0x18
	lsrs r7, r3, #0x18
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080B1142:
	adds r0, r6, #0
	asrs r1, r6, #0x1f
	mov r3, r8
	subs r2, r4, r3
	asrs r3, r2, #0x1f
	bl __muldi3
	adds r2, r7, #0
	bl __ashrdi3
	subs r4, r4, r0
	subs r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xff
	bne _080B1142
	adds r0, r4, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sa2__sub_8085698
sa2__sub_8085698: @ 0x080B1170
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	ldr r0, [sp, #0x18]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r8, r3
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080B1188:
	adds r0, r6, #0
	asrs r1, r6, #0x1f
	subs r2, r7, r4
	asrs r3, r2, #0x1f
	bl __muldi3
	mov r2, r8
	bl __ashrdi3
	subs r4, r7, r0
	subs r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xff
	bne _080B1188
	adds r0, r4, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sa2__sub_80856DC
sa2__sub_80856DC: @ 0x080B11B4
	push {lr}
	adds r3, r0, #0
	lsls r0, r3, #3
	subs r0, r0, r3
	lsls r3, r1, #1
	adds r3, r3, r1
	lsls r3, r3, #1
	adds r0, r0, r3
	subs r0, r0, r2
	movs r1, #0xc
	bl __divsi3
	pop {r1}
	bx r1

	thumb_func_start sa2__sub_80856F8
sa2__sub_80856F8: @ 0x080B11D0
	push {lr}
	adds r3, r0, #0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	subs r0, r0, r3
	lsls r1, r2, #3
	subs r1, r1, r2
	adds r0, r0, r1
	movs r1, #0xc
	bl __divsi3
	pop {r1}
	bx r1

	thumb_func_start sa2__sub_8085714
sa2__sub_8085714: @ 0x080B11EC
	lsls r1, r1, #3
	adds r0, r0, r1
	subs r0, r0, r2
	asrs r0, r0, #3
	bx lr
	.align 2, 0

	thumb_func_start sa2__sub_8085720
sa2__sub_8085720: @ 0x080B11F8
	lsls r1, r1, #3
	subs r1, r1, r0
	adds r1, r1, r2
	asrs r1, r1, #3
	adds r0, r1, #0
	bx lr

	thumb_func_start sa2__sub_808572C
sa2__sub_808572C: @ 0x080B1204
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r1, r2, #0
	ldr r6, [sp, #0x14]
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	subs r4, r4, r0
	asrs r5, r4, #0x1f
	movs r2, #1
	lsls r2, r6
	subs r2, r2, r1
	asrs r3, r2, #0x1f
	adds r1, r5, #0
	adds r0, r4, #0
	bl __muldi3
	adds r2, r6, #0
	bl __ashrdi3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

    thumb_func_start:
sa2__sub_8085758:
	subs r0, r1, r0
	bx	lr
	.align 2, 0

	thumb_func_start sa2__sub_808575C
sa2__sub_808575C: @ 0x080B1234
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r4, r0, #0
	ldr r6, [sp, #0x1c]
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	subs r4, r2, r4
	asrs r0, r4, #1
	adds r4, r4, r0
	asrs r1, r1, #1
	subs r4, r4, r1
	asrs r5, r4, #0x1f
	movs r2, #1
	lsls r2, r6
	subs r2, r2, r3
	asrs r3, r2, #0x1f
	adds r1, r5, #0
	adds r0, r4, #0
	bl __muldi3
	adds r2, r6, #0
	bl __ashrdi3
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sa2__sub_8085798
sa2__sub_8085798: @ 0x080B1270
	subs r0, r2, r0
	asrs r2, r0, #1
	adds r0, r0, r2
	asrs r1, r1, #1
	subs r0, r0, r1
	bx lr

	thumb_func_start sa2__sub_80857A4
sa2__sub_80857A4: @ 0x080B127C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r4, r0, #0
	ldr r6, [sp, #0x1c]
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	subs r4, r2, r4
	asrs r0, r4, #1
	adds r4, r4, r0
	asrs r1, r1, #1
	subs r4, r4, r1
	asrs r5, r4, #0x1f
	movs r2, #1
	lsls r2, r6
	subs r2, r2, r3
	asrs r3, r2, #0x1f
	adds r1, r5, #0
	adds r0, r4, #0
	bl __muldi3
	adds r2, r6, #0
	bl __ashrdi3
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sa2__sub_80857E0
sa2__sub_80857E0: @ 0x080B12B8
	subs r0, r2, r0
	asrs r2, r0, #1
	adds r0, r0, r2
	asrs r1, r1, #1
	subs r0, r0, r1
	bx lr

	thumb_func_start sa2__sub_80857EC
sa2__sub_80857EC: @ 0x080B12C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r4, r0, #0
	mov sb, r1
	adds r7, r2, #0
	str r3, [sp]
	ldr r6, [sp, #0x34]
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	subs r4, r1, r4
	asrs r5, r4, #0x1f
	movs r0, #1
	mov sl, r0
	mov r1, sl
	lsls r1, r6
	mov sl, r1
	ldr r2, [sp, #0x30]
	add r2, sl
	asrs r3, r2, #0x1f
	adds r1, r5, #0
	adds r0, r4, #0
	bl __muldi3
	adds r2, r6, #0
	bl __ashrdi3
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r2, [sp, #4]
	mov r8, r2
	mov r3, sb
	subs r2, r7, r3
	adds r0, r2, #0
	asrs r1, r2, #0x1f
	mov r7, sl
	ldr r2, [sp, #0x30]
	subs r4, r7, r2
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	bl __muldi3
	adds r2, r6, #0
	bl __ashrdi3
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r4, [sp, #4]
	mov r7, r8
	asrs r5, r7, #0x1f
	subs r2, r2, r7
	adds r0, r2, #0
	asrs r1, r2, #0x1f
	subs r2, r6, #1
	movs r3, #1
	lsls r3, r2
	ldr r7, [sp, #0x2c]
	asrs r2, r7, #1
	adds r7, r3, r2
	adds r2, r7, #0
	asrs r3, r7, #0x1f
	bl __muldi3
	adds r2, r6, #0
	bl __ashrdi3
	adds r4, r4, r0
	adcs r5, r1
	mov r1, sl
	ldr r2, [sp]
	subs r0, r1, r2
	adds r2, r0, #0
	asrs r3, r0, #0x1f
	adds r1, r5, #0
	adds r0, r4, #0
	bl __muldi3
	adds r2, r6, #0
	bl __ashrdi3
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sa2__sub_80858A4
sa2__sub_80858A4: @ 0x080B137C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r4, r0, #0
	mov sb, r1
	adds r7, r2, #0
	str r3, [sp]
	ldr r6, [sp, #0x34]
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	subs r4, r1, r4
	asrs r5, r4, #0x1f
	movs r0, #1
	mov sl, r0
	mov r1, sl
	lsls r1, r6
	mov sl, r1
	ldr r2, [sp, #0x30]
	add r2, sl
	asrs r3, r2, #0x1f
	adds r1, r5, #0
	adds r0, r4, #0
	bl __muldi3
	adds r2, r6, #0
	bl __ashrdi3
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r2, [sp, #4]
	mov r8, r2
	mov r3, sb
	subs r2, r7, r3
	adds r0, r2, #0
	asrs r1, r2, #0x1f
	mov r7, sl
	ldr r2, [sp, #0x30]
	subs r4, r7, r2
	adds r2, r4, #0
	asrs r3, r4, #0x1f
	bl __muldi3
	adds r2, r6, #0
	bl __ashrdi3
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r4, [sp, #4]
	mov r7, r8
	asrs r5, r7, #0x1f
	subs r2, r2, r7
	adds r0, r2, #0
	asrs r1, r2, #0x1f
	subs r2, r6, #1
	movs r3, #1
	lsls r3, r2
	ldr r7, [sp, #0x2c]
	asrs r2, r7, #1
	subs r7, r3, r2
	adds r2, r7, #0
	asrs r3, r7, #0x1f
	bl __muldi3
	adds r2, r6, #0
	bl __ashrdi3
	adds r4, r4, r0
	adcs r5, r1
	mov r1, sl
	ldr r2, [sp]
	subs r0, r1, r2
	adds r2, r0, #0
	asrs r3, r0, #0x1f
	adds r1, r5, #0
	adds r0, r4, #0
	bl __muldi3
	adds r2, r6, #0
	bl __ashrdi3
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sa2__sub_808595C
sa2__sub_808595C: @ 0x080B1434
	subs r0, r1, r0
	subs r2, r2, r1
	subs r2, r2, r0
	asrs r2, r2, #1
	adds r0, r0, r2
	bx lr

	thumb_func_start sa2__sub_8085968
sa2__sub_8085968: @ 0x080B1440
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _080B14C4 @ =0x00000FFF
	subs r7, r0, r1
	adds r0, r7, #0
	muls r0, r7, r0
	asrs r0, r0, #0xc
	muls r0, r7, r0
	asrs r7, r0, #0xc
	movs r2, #0
	ldrsh r0, [r4, r2]
	muls r0, r7, r0
	movs r5, #0xab
	mov r8, r5
	mov r6, r8
	muls r6, r0, r6
	adds r0, r6, #0
	asrs r0, r0, #0xa
	adds r4, #2
	adds r3, r1, #0
	muls r3, r1, r3
	asrs r3, r3, #0xc
	adds r2, r3, #0
	muls r2, r1, r2
	asrs r7, r2, #0xc
	movs r6, #0
	ldrsh r5, [r4, r6]
	mov ip, r5
	asrs r2, r2, #0xd
	ldr r6, _080B14C8 @ =gUnknown_080DBE54
	subs r2, r2, r3
	ldrh r5, [r6]
	adds r2, r2, r5
	mov r5, ip
	muls r5, r2, r5
	adds r2, r5, #0
	adds r0, r0, r2
	adds r4, #2
	movs r5, #0
	ldrsh r2, [r4, r5]
	adds r1, r1, r3
	subs r1, r1, r7
	asrs r1, r1, #1
	ldrh r6, [r6, #2]
	adds r1, r1, r6
	muls r1, r2, r1
	adds r0, r0, r1
	movs r6, #2
	ldrsh r1, [r4, r6]
	muls r1, r7, r1
	mov r2, r8
	muls r2, r1, r2
	adds r1, r2, #0
	asrs r1, r1, #0xa
	adds r0, r0, r1
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080B14C4: .4byte 0x00000FFF
_080B14C8: .4byte gUnknown_080DBE54

	thumb_func_start sa2__sub_80859F4
sa2__sub_80859F4: @ 0x080B14CC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x1c
	lsls r0, r0, #1
	adds r4, r4, r0
	ldr r0, _080B1558 @ =0x00000FFF
	lsrs r1, r1, #0x10
	ands r1, r0
	subs r7, r0, r1
	adds r0, r7, #0
	muls r0, r7, r0
	asrs r0, r0, #0xc
	muls r0, r7, r0
	asrs r7, r0, #0xc
	movs r2, #0
	ldrsh r0, [r4, r2]
	muls r0, r7, r0
	movs r5, #0xab
	mov r8, r5
	mov r6, r8
	muls r6, r0, r6
	adds r0, r6, #0
	asrs r0, r0, #0xa
	adds r3, r1, #0
	muls r3, r1, r3
	asrs r3, r3, #0xc
	adds r2, r3, #0
	muls r2, r1, r2
	asrs r7, r2, #0xc
	movs r6, #2
	ldrsh r5, [r4, r6]
	mov ip, r5
	asrs r2, r2, #0xd
	ldr r6, _080B155C @ =gUnknown_080DBE54
	subs r2, r2, r3
	ldrh r5, [r6]
	adds r2, r2, r5
	mov r5, ip
	muls r5, r2, r5
	adds r2, r5, #0
	adds r0, r0, r2
	adds r4, #4
	movs r5, #0
	ldrsh r2, [r4, r5]
	adds r1, r1, r3
	subs r1, r1, r7
	asrs r1, r1, #1
	ldrh r6, [r6, #2]
	adds r1, r1, r6
	muls r1, r2, r1
	adds r0, r0, r1
	movs r6, #2
	ldrsh r1, [r4, r6]
	muls r1, r7, r1
	mov r2, r8
	muls r2, r1, r2
	adds r1, r2, #0
	asrs r1, r1, #0xa
	adds r0, r0, r1
	lsls r0, r0, #0xa
	lsrs r0, r0, #0x16
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080B1558: .4byte 0x00000FFF
_080B155C: .4byte gUnknown_080DBE54

@ This function was added, it is not in SA2.
	thumb_func_start sub_80B1560
sub_80B1560: @ 0x080B1560
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x1c
	lsls r0, r0, #1
	adds r4, r4, r0
	ldr r0, _080B15EC @ =0x00000FFF
	lsrs r1, r1, #0x10
	ands r1, r0
	subs r7, r0, r1
	adds r0, r7, #0
	muls r0, r7, r0
	asrs r0, r0, #0xc
	muls r0, r7, r0
	asrs r7, r0, #0xc
	movs r2, #0
	ldrsh r0, [r4, r2]
	muls r0, r7, r0
	movs r5, #0xab
	mov r8, r5
	mov r6, r8
	muls r6, r0, r6
	adds r0, r6, #0
	asrs r0, r0, #0xa
	adds r3, r1, #0
	muls r3, r1, r3
	asrs r3, r3, #0xc
	adds r2, r3, #0
	muls r2, r1, r2
	asrs r7, r2, #0xc
	movs r6, #2
	ldrsh r5, [r4, r6]
	mov ip, r5
	asrs r2, r2, #0xd
	ldr r6, _080B15F0 @ =gUnknown_080DBE54
	subs r2, r2, r3
	ldrh r5, [r6]
	adds r2, r2, r5
	mov r5, ip
	muls r5, r2, r5
	adds r2, r5, #0
	adds r0, r0, r2
	adds r4, #4
	movs r5, #0
	ldrsh r2, [r4, r5]
	adds r1, r1, r3
	subs r1, r1, r7
	asrs r1, r1, #1
	ldrh r6, [r6, #2]
	adds r1, r1, r6
	muls r1, r2, r1
	adds r0, r0, r1
	movs r6, #2
	ldrsh r1, [r4, r6]
	muls r1, r7, r1
	mov r2, r8
	muls r2, r1, r2
	adds r1, r2, #0
	asrs r1, r1, #0xa
	adds r0, r0, r1
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080B15EC: .4byte 0x00000FFF
_080B15F0: .4byte gUnknown_080DBE54

	thumb_func_start sa2__sub_8085A88
sa2__sub_8085A88: @ 0x080B15F4
	movs r2, #0
	strh r2, [r0]
	movs r1, #0x80
	lsls r1, r1, #3
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	str r2, [r0, #8]
	str r2, [r0, #0xc]
	bx lr
	.align 2, 0

	thumb_func_start sa2__sub_8085A9C
sa2__sub_8085A9C: @ 0x080B1608
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r5, r1, #0x18
	lsrs r5, r5, #0x18
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r2, r0, #0
	muls r2, r0, r2
	adds r0, r2, #0
	movs r2, #2
	ldrsh r1, [r4, r2]
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	movs r2, #4
	ldrsh r1, [r4, r2]
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r5, #1
	movs r0, #1
	lsls r0, r2
	bl __divsi3
	movs r2, #0
	ldrsh r1, [r4, r2]
	muls r1, r0, r1
	asrs r1, r5
	strh r1, [r4]
	movs r2, #2
	ldrsh r1, [r4, r2]
	muls r1, r0, r1
	asrs r1, r5
	strh r1, [r4, #2]
	movs r2, #4
	ldrsh r1, [r4, r2]
	muls r0, r1, r0
	asrs r0, r5
	strh r0, [r4, #4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sa2__sub_8085B00
sa2__sub_8085B00: @ 0x080B166C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0
	ldrsh r3, [r5, r0]
	movs r4, #0
	ldrsh r0, [r1, r4]
	muls r0, r3, r0
	movs r6, #2
	ldrsh r4, [r5, r6]
	movs r6, #2
	ldrsh r3, [r1, r6]
	muls r3, r4, r3
	adds r0, r0, r3
	movs r4, #4
	ldrsh r3, [r5, r4]
	movs r6, #4
	ldrsh r1, [r1, r6]
	muls r1, r3, r1
	adds r0, r0, r1
	asrs r0, r2
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sa2__sub_8085B34
sa2__sub_8085B34: @ 0x080B16A0
	push {r4, r5, r6, r7, lr}
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	movs r4, #2
	ldrsh r5, [r0, r4]
	movs r6, #4
	ldrsh r4, [r1, r6]
	muls r4, r5, r4
	movs r7, #4
	ldrsh r6, [r0, r7]
	movs r7, #2
	ldrsh r5, [r1, r7]
	muls r5, r6, r5
	subs r4, r4, r5
	asrs r4, r3
	strh r4, [r2]
	movs r4, #4
	ldrsh r5, [r0, r4]
	movs r6, #0
	ldrsh r4, [r1, r6]
	muls r4, r5, r4
	movs r7, #0
	ldrsh r6, [r0, r7]
	movs r7, #4
	ldrsh r5, [r1, r7]
	muls r5, r6, r5
	subs r4, r4, r5
	asrs r4, r3
	strh r4, [r2, #2]
	movs r4, #0
	ldrsh r5, [r0, r4]
	movs r6, #2
	ldrsh r4, [r1, r6]
	muls r4, r5, r4
	movs r7, #2
	ldrsh r5, [r0, r7]
	movs r6, #0
	ldrsh r0, [r1, r6]
	muls r0, r5, r0
	subs r4, r4, r0
	asrs r4, r3
	strh r4, [r2, #4]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sa2__sub_8085B90
sa2__sub_8085B90: @ 0x080B16FC
	movs r1, #0
	strh r1, [r0, #4]
	strh r1, [r0, #2]
	strh r1, [r0]
	movs r1, #0x80
	lsls r1, r1, #3
	strh r1, [r0, #6]
	bx lr

	thumb_func_start sa2__sub_8085BA0
sa2__sub_8085BA0: @ 0x080B170C
	ldrh r1, [r0]
	rsbs r1, r1, #0
	strh r1, [r0]
	ldrh r1, [r0, #2]
	rsbs r1, r1, #0
	strh r1, [r0, #2]
	ldrh r1, [r0, #4]
	rsbs r1, r1, #0
	strh r1, [r0, #4]
	bx lr

	thumb_func_start sa2__sub_8085BB4
sa2__sub_8085BB4: @ 0x080B1720
	push {r4, lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x11
	ldr r4, _080B1754 @ =gSineTable
	lsls r2, r1, #1
	adds r2, r2, r4
	ldrh r2, [r2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x14
	movs r3, #0
	strh r2, [r0]
	strh r3, [r0, #2]
	strh r3, [r0, #4]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	strh r1, [r0, #6]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B1754: .4byte gSineTable

	thumb_func_start sa2__sub_8085BEC
sa2__sub_8085BEC: @ 0x080B1758
	push {r4, lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x11
	ldr r4, _080B178C @ =gSineTable
	lsls r2, r1, #1
	adds r2, r2, r4
	ldrh r2, [r2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x14
	movs r3, #0
	strh r3, [r0]
	strh r2, [r0, #2]
	strh r3, [r0, #4]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	strh r1, [r0, #6]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B178C: .4byte gSineTable

	thumb_func_start sa2__sub_8085C24
sa2__sub_8085C24: @ 0x080B1790
	push {r4, lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x11
	ldr r4, _080B17C4 @ =gSineTable
	lsls r2, r1, #1
	adds r2, r2, r4
	ldrh r2, [r2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x14
	movs r3, #0
	strh r3, [r0]
	strh r3, [r0, #2]
	strh r2, [r0, #4]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	strh r1, [r0, #6]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B17C4: .4byte gSineTable

	thumb_func_start sa2__sub_8085C5C
sa2__sub_8085C5C: @ 0x080B17C8
	push {r4, r5, r6, lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x11
	ldr r5, _080B1810 @ =gSineTable
	lsls r3, r1, #1
	adds r3, r3, r5
	ldrh r4, [r3]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x14
	movs r6, #0
	ldrsh r3, [r2, r6]
	muls r3, r4, r3
	asrs r3, r3, #0xa
	strh r3, [r0]
	movs r6, #2
	ldrsh r3, [r2, r6]
	muls r3, r4, r3
	asrs r3, r3, #0xa
	strh r3, [r0, #2]
	movs r3, #4
	ldrsh r2, [r2, r3]
	muls r2, r4, r2
	asrs r2, r2, #0xa
	strh r2, [r0, #4]
	movs r6, #0x80
	lsls r6, r6, #1
	adds r1, r1, r6
	lsls r1, r1, #1
	adds r1, r1, r5
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	strh r1, [r0, #6]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B1810: .4byte gSineTable

	thumb_func_start sa2__sub_8085CA8
sa2__sub_8085CA8: @ 0x080B1814
	push {lr}
	adds r1, r0, #0
	movs r0, #0
	movs r2, #0
_080B181C:
	stm r1!, {r2}
	adds r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1f
	bls _080B181C
	pop {r0}
	bx r0

	thumb_func_start sa2__sub_8085CC0
sa2__sub_8085CC0: @ 0x080B182C
	push {lr}
	adds r1, r0, #0
	movs r0, #0
	movs r2, #0
_080B1834:
	stm r1!, {r2}
	adds r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1f
	bls _080B1834
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r1, #0x12]
	strh r0, [r1, #0xa]
	strh r0, [r1, #2]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sa2__sub_8085CE4
sa2__sub_8085CE4: @ 0x080B1850
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r1, r4, #0
	movs r0, #0
	movs r2, #0
_080B185E:
	stm r1!, {r2}
	adds r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1f
	bls _080B185E
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r1, #0x12]
	strh r0, [r1, #0xa]
	strh r0, [r1, #2]
	str r5, [r4, #0x14]
	str r6, [r4, #0x18]
	str r3, [r4, #0x1c]
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sa2__sub_8085D14
sa2__sub_8085D14: @ 0x080B1880
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r1, r4, #0
	movs r0, #0
	movs r2, #0
_080B188E:
	stm r1!, {r2}
	adds r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1f
	bls _080B188E
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r1, #0x12]
	strh r0, [r1, #0xa]
	strh r0, [r1, #2]
	strh r5, [r4, #2]
	strh r6, [r4, #0xa]
	strh r3, [r4, #0x12]
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sa2__sub_8085D44
sa2__sub_8085D44: @ 0x080B18B0
	movs r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	bx lr

	thumb_func_start sa2__sub_8085D50
sa2__sub_8085D50: @ 0x080B18BC
	push {lr}
	adds r1, r0, #0
	b _080B18C4
_080B18C2:
	ldr r1, [r1]
_080B18C4:
	ldr r0, [r1]
	cmp r0, #0
	bne _080B18C2
	adds r0, r1, #0
	pop {r1}
	bx r1

	thumb_func_start sa2__sub_8085D64
sa2__sub_8085D64: @ 0x080B18D0
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1]
	cmp r0, #0
	beq _080B18DE
	bl sa2__sub_8085D98
_080B18DE:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sa2__sub_8085D78
sa2__sub_8085D78: @ 0x080B18E4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _080B18F4
	bl sa2__sub_8085D98
_080B18F4:
	str r5, [r4]
	ldr r0, [r5, #4]
	str r0, [r4, #8]
	str r4, [r5, #4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sa2__sub_8085D98
sa2__sub_8085D98: @ 0x080B1904
	push {r4, lr}
	adds r3, r0, #0
	ldr r0, [r3, #4]
	movs r2, #0
	cmp r0, #0
	beq _080B1934
	movs r4, #0
_080B1912:
	cmp r0, r1
	bne _080B192C
	cmp r2, #0
	bne _080B1920
	ldr r0, [r0, #8]
	str r0, [r3, #4]
	b _080B1924
_080B1920:
	ldr r0, [r0, #8]
	str r0, [r2, #8]
_080B1924:
	str r4, [r1]
	str r4, [r1, #8]
	movs r0, #1
	b _080B1936
_080B192C:
	adds r2, r0, #0
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _080B1912
_080B1934:
	movs r0, #0
_080B1936:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sa2__sub_8085DD0
sa2__sub_8085DD0: @ 0x080B193C
	push {lr}
	adds r1, r0, #0
	movs r0, #0
	ldr r1, [r1, #4]
	cmp r1, #0
	beq _080B1954
_080B1948:
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [r1, #8]
	cmp r1, #0
	bne _080B1948
_080B1954:
	pop {r1}
	bx r1

	thumb_func_start sa2__sub_8085DEC
sa2__sub_8085DEC: @ 0x080B1958
	push {lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	ldr r2, [r2, #4]
	b _080B196C
_080B1964:
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, [r2, #8]
_080B196C:
	cmp r2, #0
	beq _080B1974
	cmp r0, #0
	bne _080B1964
_080B1974:
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sa2__sub_8085E10
sa2__sub_8085E10: @ 0x080B197C
	push {r4, lr}
	adds r0, #0x10
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sa2__sub_8085E24
sa2__sub_8085E24: @ 0x080B1990
	push {r4, lr}
	adds r0, #0x10
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sa2__sub_8085E38
sa2__sub_8085E38: @ 0x080B19A4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r0, r5, #0
	adds r1, r4, #0
	adds r1, #0x10
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
	b _080B19C4
_080B19BA:
	adds r1, r4, #0
	adds r1, #0x10
	adds r0, r5, #0
	bl sa2__sub_80835E0
_080B19C4:
	ldr r4, [r4]
	cmp r4, #0
	bne _080B19BA
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sa2__sub_8085E64
sa2__sub_8085E64: @ 0x080B19D0
	push {lr}
	adds r2, r0, #0
	movs r0, #0
	str r0, [r2, #0x10]
	adds r1, r2, #0
	adds r1, #0x34
	movs r3, #0
_080B19DE:
	stm r1!, {r3}
	adds r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1f
	bls _080B19DE
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r1, #0x12]
	strh r0, [r1, #0xa]
	strh r0, [r1, #2]
	ldr r0, [r2, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0xc]
	pop {r0}
	bx r0

	thumb_func_start sa2__sub_8085E94
sa2__sub_8085E94: @ 0x080B1A00
	adds r2, r0, #0
	movs r0, #1
	str r0, [r2, #0x10]
	adds r0, r2, #0
	adds r0, #0x58
	movs r1, #0
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	str r1, [r2, #0x6c]
	str r1, [r2, #0x68]
	str r1, [r2, #0x64]
	adds r0, #0xc
	movs r1, #0x80
	lsls r1, r1, #3
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sa2__sub_8085EC4
sa2__sub_8085EC4: @ 0x080B1A30
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r6, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _080B1A44
	adds r0, r4, #0
	bl sa2__sub_8085EC4
	adds r6, r0, #0
_080B1A44:
	ldr r1, [r4, #0xc]
	movs r0, #3
	ands r0, r1
	cmp r0, #3
	bne _080B1A56
	cmp r6, #0
	bne _080B1A70
	movs r0, #0
	b _080B1A80
_080B1A56:
	movs r5, #1
	ands r1, r5
	cmp r1, #0
	bne _080B1A70
	adds r0, r4, #0
	bl sa2__sub_80853F8
	ldr r0, [r4, #0xc]
	orrs r0, r5
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0xc]
_080B1A70:
	adds r0, r4, #0
	adds r0, #0x34
	adds r4, #0x14
	adds r1, r6, #0
	adds r2, r4, #0
	bl sa2__sub_8083B88
	adds r0, r4, #0
_080B1A80:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sa2__sub_8085F1C
sa2__sub_8085F1C: @ 0x080B1A88
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r6, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _080B1A9C
	adds r0, r4, #0
	bl sa2__sub_8085EC4
	adds r6, r0, #0
_080B1A9C:
	ldr r1, [r4, #0xc]
	movs r0, #3
	ands r0, r1
	cmp r0, #3
	bne _080B1ABC
	adds r5, r4, #0
	adds r5, #0x14
	cmp r6, #0
	beq _080B1AE6
	adds r0, r4, #0
	adds r0, #0x34
	adds r1, r6, #0
	adds r2, r5, #0
	bl sa2__sub_8083B88
	b _080B1AE6
_080B1ABC:
	movs r5, #1
	ands r1, r5
	cmp r1, #0
	bne _080B1AD6
	adds r0, r4, #0
	bl sa2__sub_80853F8
	ldr r0, [r4, #0xc]
	orrs r0, r5
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0xc]
_080B1AD6:
	adds r0, r4, #0
	adds r0, #0x34
	adds r4, #0x14
	adds r1, r6, #0
	adds r2, r4, #0
	bl sa2__sub_8083B88
	adds r5, r4, #0
_080B1AE6:
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

    thumb_func_start sa2__nullsub_8085F84
sa2__nullsub_8085F84:
	bx lr
    .align 2 , 0

@ End of math.c (src/game/math.c)

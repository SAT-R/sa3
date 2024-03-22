.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
	thumb_func_start memcpy
memcpy: @ 0x080CA3B0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r3, r1, #0
	cmp r2, #0xf
	bls _080CA3F0
	adds r0, r3, #0
	orrs r0, r5
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080CA3F0
	adds r1, r5, #0
_080CA3CA:
	ldm r3!, {r0}
	stm r1!, {r0}
	ldm r3!, {r0}
	stm r1!, {r0}
	ldm r3!, {r0}
	stm r1!, {r0}
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #0x10
	cmp r2, #0xf
	bhi _080CA3CA
	cmp r2, #3
	bls _080CA3EE
_080CA3E4:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #4
	cmp r2, #3
	bhi _080CA3E4
_080CA3EE:
	adds r4, r1, #0
_080CA3F0:
	subs r2, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _080CA40A
	adds r1, r0, #0
_080CA3FC:
	ldrb r0, [r3]
	strb r0, [r4]
	adds r3, #1
	adds r4, #1
	subs r2, #1
	cmp r2, r1
	bne _080CA3FC
_080CA40A:
	adds r0, r5, #0
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start memset
memset: @ 0x080CA410
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r3, r5, #0
	cmp r2, #3
	bls _080CA456
	movs r0, #3
	ands r0, r5
	cmp r0, #0
	bne _080CA456
	adds r1, r5, #0
	movs r0, #0xff
	ands r4, r0
	lsls r3, r4, #8
	orrs r3, r4
	lsls r0, r3, #0x10
	orrs r3, r0
	cmp r2, #0xf
	bls _080CA44A
_080CA436:
	stm r1!, {r3}
	stm r1!, {r3}
	stm r1!, {r3}
	stm r1!, {r3}
	subs r2, #0x10
	cmp r2, #0xf
	bhi _080CA436
	b _080CA44A
_080CA446:
	stm r1!, {r3}
	subs r2, #4
_080CA44A:
	cmp r2, #3
	bhi _080CA446
	adds r3, r1, #0
	b _080CA456
_080CA452:
	strb r4, [r3]
	adds r3, #1
_080CA456:
	adds r0, r2, #0
	subs r2, #1
	cmp r0, #0
	bne _080CA452
	adds r0, r5, #0
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start _sprintf_r
_sprintf_r: @ 0x080CA464
	push {r2, r3}
	push {r4, r5, lr}
	sub sp, #0x58
	ldr r4, [sp, #0x64]
	mov r3, sp
	movs r5, #0
	movs r2, #0x82
	lsls r2, r2, #2
	strh r2, [r3, #0xc]
	str r1, [sp]
	str r1, [sp, #0x10]
	ldr r1, _080CA49C @ =0x7FFFFFFF
	str r1, [sp, #8]
	str r1, [sp, #0x14]
	str r0, [sp, #0x54]
	add r2, sp, #0x68
	mov r0, sp
	adds r1, r4, #0
	bl vfprintf
	ldr r1, [sp]
	strb r5, [r1]
	add sp, #0x58
	pop {r4, r5}
	pop {r3}
	add sp, #8
	bx r3
	.align 2, 0
_080CA49C: .4byte 0x7FFFFFFF

	thumb_func_start sprintf
sprintf: @ 0x080CA4A0
	push {r1, r2, r3}
	push {r4, lr}
	sub sp, #0x58
	ldr r1, [sp, #0x60]
	mov r3, sp
	movs r4, #0
	movs r2, #0x82
	lsls r2, r2, #2
	strh r2, [r3, #0xc]
	str r0, [sp]
	str r0, [sp, #0x10]
	ldr r0, _080CA4D8 @ =0x7FFFFFFF
	str r0, [sp, #8]
	str r0, [sp, #0x14]
	ldr r0, _080CA4DC @ =_impure_ptr
	ldr r0, [r0]
	str r0, [sp, #0x54]
	add r2, sp, #0x64
	mov r0, sp
	bl vfprintf
	ldr r1, [sp]
	strb r4, [r1]
	add sp, #0x58
	pop {r4}
	pop {r3}
	add sp, #0xc
	bx r3
	.align 2, 0
_080CA4D8: .4byte 0x7FFFFFFF
_080CA4DC: .4byte _impure_ptr

	thumb_func_start __sprint
__sprint: @ 0x080CA4E0
	push {r4, lr}
	adds r4, r1, #0
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _080CA4F8
	adds r1, r4, #0
	bl __sfvwrite
	movs r1, #0
	str r1, [r4, #8]
	str r1, [r4, #4]
	b _080CA4FC
_080CA4F8:
	str r1, [r4, #4]
	movs r0, #0
_080CA4FC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __sbprintf
__sbprintf: @ 0x080CA500
	push {r4, r5, lr}
	ldr r4, _080CA570 @ =0xFFFFFBA8
	add sp, r4
	adds r5, r0, #0
	ldr r0, [r5, #0x54]
	str r0, [sp, #0x54]
	mov r3, sp
	movs r0, #3
	rsbs r0, r0, #0
	ldrh r4, [r5, #0xc]
	ands r0, r4
	movs r4, #0
	strh r0, [r3, #0xc]
	ldrh r0, [r5, #0xe]
	strh r0, [r3, #0xe]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0x24]
	str r0, [sp, #0x24]
	add r0, sp, #0x58
	str r0, [sp]
	str r0, [sp, #0x10]
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [sp, #8]
	str r0, [sp, #0x14]
	str r4, [sp, #0x18]
	mov r0, sp
	bl vfprintf
	adds r4, r0, #0
	cmp r4, #0
	blt _080CA550
	mov r0, sp
	bl fflush
	cmp r0, #0
	beq _080CA550
	movs r4, #1
	rsbs r4, r4, #0
_080CA550:
	mov r1, sp
	movs r0, #0x40
	ldrh r1, [r1, #0xc]
	ands r0, r1
	cmp r0, #0
	beq _080CA564
	movs r0, #0x40
	ldrh r1, [r5, #0xc]
	orrs r0, r1
	strh r0, [r5, #0xc]
_080CA564:
	adds r0, r4, #0
	movs r3, #0x8b
	lsls r3, r3, #3
	add sp, r3
	pop {r4, r5, pc}
	.align 2, 0
_080CA570: .4byte 0xFFFFFBA8

	thumb_func_start vfprintf
vfprintf: @ 0x080CA574
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r3, r2, #0
	ldr r0, [r4, #0x54]
	adds r1, r4, #0
	adds r2, r5, #0
	bl _vfprintf_r
	pop {r4, r5, pc}

	thumb_func_start _vfprintf_r
_vfprintf_r: @ 0x080CA588
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _080CA5F0 @ =0xFFFFFDE0
	add sp, r4
	str r0, [sp, #0x1dc]
	str r1, [sp, #0x1e0]
	adds r4, r2, #0
	mov sl, r3
	bl localeconv
	ldr r0, [r0]
	str r0, [sp, #0x1f8]
	movs r1, #0
	add r0, sp, #0x1d0
	str r1, [r0]
	ldr r1, [sp, #0x1e0]
	ldr r0, [r1, #0x54]
	cmp r0, #0
	bne _080CA5BA
	ldr r0, _080CA5F4 @ =_impure_ptr
	ldr r0, [r0]
	str r0, [r1, #0x54]
_080CA5BA:
	ldr r2, [sp, #0x1e0]
	ldr r1, [r2, #0x54]
	ldr r0, [r1, #0x38]
	cmp r0, #0
	bne _080CA5CA
	adds r0, r1, #0
	bl __sinit
_080CA5CA:
	movs r0, #8
	ldr r1, [sp, #0x1e0]
	ldrh r1, [r1, #0xc]
	ands r0, r1
	cmp r0, #0
	beq _080CA5DE
	ldr r2, [sp, #0x1e0]
	ldr r0, [r2, #0x10]
	cmp r0, #0
	bne _080CA5F8
_080CA5DE:
	ldr r0, [sp, #0x1e0]
	bl __swsetup
	cmp r0, #0
	beq _080CA5F8
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_80CB4D8
	.align 2, 0
_080CA5F0: .4byte 0xFFFFFDE0
_080CA5F4: .4byte _impure_ptr
_080CA5F8:
	movs r0, #0x1a
	ldr r1, [sp, #0x1e0]
	ldrh r1, [r1, #0xc]
	ands r0, r1
	cmp r0, #0xa
	bne _080CA61C
	ldr r2, [sp, #0x1e0]
	movs r1, #0xe
	ldrsh r0, [r2, r1]
	cmp r0, #0
	blt _080CA61C
	adds r0, r2, #0
	adds r1, r4, #0
	mov r2, sl
	bl __sbprintf
	bl sub_80CB4D8
_080CA61C:
	str r4, [sp, #0x1e4]
	add r1, sp, #0x1c
	add r5, sp, #0x28
	str r5, [sp, #0x1c]
	movs r0, #0
	str r0, [r1, #8]
	str r0, [r1, #4]
	movs r2, #0
	str r2, [sp, #0x1f0]
	mov sb, r1
	movs r4, #0xe6
	lsls r4, r4, #1
	add r4, sp
	str r4, [sp, #0x214]
	movs r0, #0xe8
	lsls r0, r0, #1
	add r0, sp
	str r0, [sp, #0x218]
_080CA640:
	ldr r1, [sp, #0x1e4]
	mov r8, r1
_080CA644:
	ldr r0, _080CA6F0 @ =_impure_ptr
	ldr r0, [r0]
	ldr r1, _080CA6F4 @ =gUnknown_08E7ED9C
	ldr r3, [r1]
	ldr r2, [sp, #0x218]
	str r2, [sp]
	ldr r1, [sp, #0x214]
	ldr r2, [sp, #0x1e4]
	bl _mbtowc_r
	adds r4, r0, #0
	cmp r4, #0
	ble _080CA672
	ldr r0, [sp, #0x1e4]
	adds r0, r0, r4
	str r0, [sp, #0x1e4]
	add r0, sp, #0x1cc
	ldr r0, [r0]
	cmp r0, #0x25
	bne _080CA644
	ldr r1, [sp, #0x1e4]
	subs r1, #1
	str r1, [sp, #0x1e4]
_080CA672:
	ldr r2, [sp, #0x1e4]
	mov r0, r8
	subs r6, r2, r0
	cmp r6, #0
	beq _080CA6AA
	str r0, [r5]
	str r6, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r6
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _080CA6A4
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	beq _080CA6A2
	bl _080CB4C4
_080CA6A2:
	add r5, sp, #0x28
_080CA6A4:
	ldr r2, [sp, #0x1f0]
	adds r2, r2, r6
	str r2, [sp, #0x1f0]
_080CA6AA:
	cmp r4, #0
	bgt _080CA6B2
	bl _080CB4AC
_080CA6B2:
	ldr r4, [sp, #0x1e4]
	adds r4, #1
	str r4, [sp, #0x1e4]
	movs r0, #0
	str r0, [sp, #0x1ec]
	movs r1, #0
	str r1, [sp, #0x208]
	movs r2, #0
	str r2, [sp, #0x1f4]
	movs r6, #1
	rsbs r6, r6, #0
	ldr r0, _080CA6F8 @ =0x000001C9
	add r0, sp
	strb r2, [r0]
_080CA6CE:
	ldr r0, [sp, #0x1e4]
	ldrb r0, [r0]
	str r0, [sp, #0x1e8]
	ldr r1, [sp, #0x1e4]
	adds r1, #1
	str r1, [sp, #0x1e4]
_080CA6DA:
	ldr r0, [sp, #0x1e8]
	subs r0, #0x20
	cmp r0, #0x58
	bls _080CA6E4
	b _080CAD96
_080CA6E4:
	lsls r0, r0, #2
	ldr r1, _080CA6FC @ =_080CA700
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080CA6F0: .4byte _impure_ptr
_080CA6F4: .4byte gUnknown_08E7ED9C
_080CA6F8: .4byte 0x000001C9
_080CA6FC: .4byte _080CA700
_080CA700: @ jump table
	.4byte _080CA864 @ case 0
	.4byte _080CAD96 @ case 1
	.4byte _080CAD96 @ case 2
	.4byte _080CA87C @ case 3
	.4byte _080CAD96 @ case 4
	.4byte _080CAD96 @ case 5
	.4byte _080CAD96 @ case 6
	.4byte _080CAD96 @ case 7
	.4byte _080CAD96 @ case 8
	.4byte _080CAD96 @ case 9
	.4byte _080CA880 @ case 10
	.4byte _080CA89A @ case 11
	.4byte _080CAD96 @ case 12
	.4byte _080CA896 @ case 13
	.4byte _080CA8A8 @ case 14
	.4byte _080CAD96 @ case 15
	.4byte _080CA908 @ case 16
	.4byte _080CA90C @ case 17
	.4byte _080CA90C @ case 18
	.4byte _080CA90C @ case 19
	.4byte _080CA90C @ case 20
	.4byte _080CA90C @ case 21
	.4byte _080CA90C @ case 22
	.4byte _080CA90C @ case 23
	.4byte _080CA90C @ case 24
	.4byte _080CA90C @ case 25
	.4byte _080CAD96 @ case 26
	.4byte _080CAD96 @ case 27
	.4byte _080CAD96 @ case 28
	.4byte _080CAD96 @ case 29
	.4byte _080CAD96 @ case 30
	.4byte _080CAD96 @ case 31
	.4byte _080CAD96 @ case 32
	.4byte _080CAD96 @ case 33
	.4byte _080CAD96 @ case 34
	.4byte _080CAD96 @ case 35
	.4byte _080CA976 @ case 36
	.4byte _080CA9C8 @ case 37
	.4byte _080CAD96 @ case 38
	.4byte _080CA9C8 @ case 39
	.4byte _080CAD96 @ case 40
	.4byte _080CAD96 @ case 41
	.4byte _080CAD96 @ case 42
	.4byte _080CAD96 @ case 43
	.4byte _080CA930 @ case 44
	.4byte _080CAD96 @ case 45
	.4byte _080CAD96 @ case 46
	.4byte _080CAB7E @ case 47
	.4byte _080CAD96 @ case 48
	.4byte _080CAD96 @ case 49
	.4byte _080CAD96 @ case 50
	.4byte _080CAD96 @ case 51
	.4byte _080CAD96 @ case 52
	.4byte _080CAC16 @ case 53
	.4byte _080CAD96 @ case 54
	.4byte _080CAD96 @ case 55
	.4byte _080CAC52 @ case 56
	.4byte _080CAD96 @ case 57
	.4byte _080CAD96 @ case 58
	.4byte _080CAD96 @ case 59
	.4byte _080CAD96 @ case 60
	.4byte _080CAD96 @ case 61
	.4byte _080CAD96 @ case 62
	.4byte _080CAD96 @ case 63
	.4byte _080CAD96 @ case 64
	.4byte _080CAD96 @ case 65
	.4byte _080CAD96 @ case 66
	.4byte _080CA964 @ case 67
	.4byte _080CA97E @ case 68
	.4byte _080CA9C8 @ case 69
	.4byte _080CA9C8 @ case 70
	.4byte _080CA9C8 @ case 71
	.4byte _080CA934 @ case 72
	.4byte _080CA97E @ case 73
	.4byte _080CAD96 @ case 74
	.4byte _080CAD96 @ case 75
	.4byte _080CA938 @ case 76
	.4byte _080CAD96 @ case 77
	.4byte _080CAB38 @ case 78
	.4byte _080CAB86 @ case 79
	.4byte _080CABB4 @ case 80
	.4byte _080CA95A @ case 81
	.4byte _080CAD96 @ case 82
	.4byte _080CABD4 @ case 83
	.4byte _080CAD96 @ case 84
	.4byte _080CAC1E @ case 85
	.4byte _080CAD96 @ case 86
	.4byte _080CAD96 @ case 87
	.4byte _080CAC5C @ case 88
_080CA864:
	ldr r1, _080CA878 @ =0x000001C9
	add r1, sp
	ldrb r0, [r1]
	cmp r0, #0
	beq _080CA870
	b _080CA6CE
_080CA870:
	movs r0, #0x20
	strb r0, [r1]
	b _080CA6CE
	.align 2, 0
_080CA878: .4byte 0x000001C9
_080CA87C:
	movs r0, #1
	b _080CA948
_080CA880:
	movs r4, #4
	add sl, r4
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	str r0, [sp, #0x1f4]
	cmp r0, #0
	blt _080CA892
	b _080CA6CE
_080CA892:
	rsbs r0, r0, #0
	str r0, [sp, #0x1f4]
_080CA896:
	movs r0, #4
	b _080CA95C
_080CA89A:
	ldr r1, _080CA8A4 @ =0x000001C9
	add r1, sp
	movs r0, #0x2b
	strb r0, [r1]
	b _080CA6CE
	.align 2, 0
_080CA8A4: .4byte 0x000001C9
_080CA8A8:
	ldr r2, [sp, #0x1e4]
	ldrb r2, [r2]
	str r2, [sp, #0x1e8]
	ldr r4, [sp, #0x1e4]
	adds r4, #1
	str r4, [sp, #0x1e4]
	cmp r2, #0x2a
	bne _080CA8D2
	movs r0, #4
	add sl, r0
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
	adds r6, r4, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	blt _080CA8CE
	b _080CA6CE
_080CA8CE:
	adds r6, r0, #0
	b _080CA6CE
_080CA8D2:
	movs r4, #0
	ldr r0, [sp, #0x1e8]
	b _080CA8F2
_080CA8D8:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #1
	subs r0, #0x30
	ldr r1, [sp, #0x1e8]
	adds r4, r0, r1
	ldr r2, [sp, #0x1e4]
	ldrb r2, [r2]
	str r2, [sp, #0x1e8]
	ldr r0, [sp, #0x1e4]
	adds r0, #1
	str r0, [sp, #0x1e4]
	adds r0, r2, #0
_080CA8F2:
	subs r0, #0x30
	cmp r0, #9
	bls _080CA8D8
	adds r6, r4, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	blt _080CA904
	b _080CA6DA
_080CA904:
	adds r6, r0, #0
	b _080CA6DA
_080CA908:
	movs r0, #0x80
	b _080CA95C
_080CA90C:
	movs r4, #0
_080CA90E:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #1
	subs r0, #0x30
	ldr r2, [sp, #0x1e8]
	adds r4, r0, r2
	ldr r0, [sp, #0x1e4]
	ldrb r0, [r0]
	str r0, [sp, #0x1e8]
	ldr r1, [sp, #0x1e4]
	adds r1, #1
	str r1, [sp, #0x1e4]
	subs r0, #0x30
	cmp r0, #9
	bls _080CA90E
	str r4, [sp, #0x1f4]
	b _080CA6DA
_080CA930:
	movs r0, #8
	b _080CA948
_080CA934:
	movs r0, #0x40
	b _080CA952
_080CA938:
	ldr r0, [sp, #0x1e4]
	ldrb r0, [r0]
	cmp r0, #0x6c
	bne _080CA950
	ldr r1, [sp, #0x1e4]
	adds r1, #1
	str r1, [sp, #0x1e4]
	movs r0, #0x20
_080CA948:
	ldr r2, [sp, #0x1ec]
	orrs r2, r0
	str r2, [sp, #0x1ec]
	b _080CA6CE
_080CA950:
	movs r0, #0x10
_080CA952:
	ldr r4, [sp, #0x1ec]
	orrs r4, r0
	str r4, [sp, #0x1ec]
	b _080CA6CE
_080CA95A:
	movs r0, #0x20
_080CA95C:
	ldr r1, [sp, #0x1ec]
	orrs r1, r0
	str r1, [sp, #0x1ec]
	b _080CA6CE
_080CA964:
	add r2, sp, #0x68
	mov r8, r2
	movs r4, #4
	add sl, r4
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	strb r0, [r2]
	b _080CADA4
_080CA976:
	movs r0, #0x10
	ldr r1, [sp, #0x1ec]
	orrs r1, r0
	str r1, [sp, #0x1ec]
_080CA97E:
	movs r0, #0x10
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	beq _080CA98E
	movs r4, #4
	add sl, r4
	b _080CA9AA
_080CA98E:
	movs r0, #0x40
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _080CA9A6
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	movs r1, #0
	ldrsh r4, [r0, r1]
	b _080CA9B0
_080CA9A6:
	movs r2, #4
	add sl, r2
_080CA9AA:
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
_080CA9B0:
	cmp r4, #0
	bge _080CA9BE
	rsbs r4, r4, #0
	ldr r1, _080CA9C4 @ =0x000001C9
	add r1, sp
	movs r0, #0x2d
	strb r0, [r1]
_080CA9BE:
	movs r2, #1
	b _080CACAA
	.align 2, 0
_080CA9C4: .4byte 0x000001C9
_080CA9C8:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	bne _080CA9D4
	movs r6, #6
	b _080CA9E4
_080CA9D4:
	ldr r4, [sp, #0x1e8]
	cmp r4, #0x67
	beq _080CA9DE
	cmp r4, #0x47
	bne _080CA9E4
_080CA9DE:
	cmp r6, #0
	bne _080CA9E4
	movs r6, #1
_080CA9E4:
	movs r0, #8
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	movs r2, #8
	add sl, r2
	mov r0, sl
	subs r0, #8
	ldr r1, [r0]
	ldr r2, [r0, #4]
	str r1, [sp, #0x1fc]
	str r2, [sp, #0x200]
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #0x200]
	bl isinf
	cmp r0, #0
	beq _080CAA38
	ldr r3, _080CAA2C @ =0x00000000
	ldr r2, _080CAA28 @ =0x00000000
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #0x200]
	bl __ltdf2
	cmp r0, #0
	bge _080CAA1E
	ldr r1, _080CAA30 @ =0x000001C9
	add r1, sp
	movs r0, #0x2d
	strb r0, [r1]
_080CAA1E:
	ldr r2, _080CAA34 @ =gUnknown_08E2E7C0
	mov r8, r2
	movs r3, #3
	b _080CADAE
	.align 2, 0
_080CAA28: .4byte 0x00000000
_080CAA2C: .4byte 0x00000000
_080CAA30: .4byte 0x000001C9
_080CAA34: .4byte gUnknown_08E2E7C0
_080CAA38:
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #0x200]
	bl isnan
	cmp r0, #0
	beq _080CAA50
	ldr r4, _080CAA4C @ =gUnknown_08E2E7C4
	mov r8, r4
	movs r3, #3
	b _080CADAE
	.align 2, 0
_080CAA4C: .4byte gUnknown_08E2E7C4
_080CAA50:
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r1, [sp, #0x1ec]
	orrs r1, r0
	str r1, [sp, #0x1ec]
	str r1, [sp]
	add r0, sp, #0x1c8
	str r0, [sp, #4]
	add r0, sp, #0x1d4
	str r0, [sp, #8]
	ldr r2, [sp, #0x1e8]
	str r2, [sp, #0xc]
	add r0, sp, #0x1d8
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x1dc]
	ldr r1, [sp, #0x1fc]
	ldr r2, [sp, #0x200]
	adds r3, r6, #0
	bl cvt_vfprintf
	mov r8, r0
	ldr r4, [sp, #0x1e8]
	cmp r4, #0x67
	beq _080CAA84
	cmp r4, #0x47
	bne _080CAAA6
_080CAA84:
	add r0, sp, #0x1d4
	ldr r1, [r0]
	movs r0, #4
	rsbs r0, r0, #0
	cmp r1, r0
	ble _080CAA94
	cmp r1, r6
	ble _080CAAA2
_080CAA94:
	movs r0, #0x45
	ldr r1, [sp, #0x1e8]
	cmp r1, #0x67
	bne _080CAA9E
	movs r0, #0x65
_080CAA9E:
	str r0, [sp, #0x1e8]
	b _080CAAA6
_080CAAA2:
	movs r2, #0x67
	str r2, [sp, #0x1e8]
_080CAAA6:
	ldr r4, [sp, #0x1e8]
	cmp r4, #0x65
	bgt _080CAACC
	add r0, sp, #0x1d4
	ldr r1, [r0]
	subs r1, #1
	str r1, [r0]
	add r0, sp, #0x14
	ldr r2, [sp, #0x1e8]
	bl exponent_vfprintf
	str r0, [sp, #0x204]
	add r0, sp, #0x1d8
	ldr r0, [r0]
	ldr r1, [sp, #0x204]
	adds r3, r1, r0
	cmp r0, #1
	bgt _080CAB0C
	b _080CAB02
_080CAACC:
	ldr r4, [sp, #0x1e8]
	cmp r4, #0x66
	bne _080CAAF4
	add r0, sp, #0x1d4
	ldr r0, [r0]
	cmp r0, #0
	ble _080CAAF0
	adds r3, r0, #0
	cmp r6, #0
	bne _080CAAEA
	movs r0, #1
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _080CAB1C
_080CAAEA:
	adds r0, r3, #1
	adds r3, r0, r6
	b _080CAB1C
_080CAAF0:
	adds r3, r6, #2
	b _080CAB1C
_080CAAF4:
	add r0, sp, #0x1d4
	ldr r1, [r0]
	add r0, sp, #0x1d8
	ldr r0, [r0]
	cmp r1, r0
	blt _080CAB10
	adds r3, r1, #0
_080CAB02:
	movs r0, #1
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	beq _080CAB1C
_080CAB0C:
	adds r3, #1
	b _080CAB1C
_080CAB10:
	cmp r1, #0
	bgt _080CAB1A
	adds r0, #2
	subs r3, r0, r1
	b _080CAB1C
_080CAB1A:
	adds r3, r0, #1
_080CAB1C:
	add r0, sp, #0x1c8
	ldrb r0, [r0]
	adds r7, r5, #0
	adds r7, #8
	cmp r0, #0
	bne _080CAB2A
	b _080CADB2
_080CAB2A:
	ldr r1, _080CAB34 @ =0x000001C9
	add r1, sp
	movs r0, #0x2d
	strb r0, [r1]
	b _080CADB2
	.align 2, 0
_080CAB34: .4byte 0x000001C9
_080CAB38:
	movs r0, #0x10
	ldr r4, [sp, #0x1ec]
	ands r0, r4
	cmp r0, #0
	beq _080CAB52
	movs r0, #4
	add sl, r0
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	ldr r1, [sp, #0x1f0]
	str r1, [r0]
	b _080CA640
_080CAB52:
	movs r0, #0x40
	ldr r2, [sp, #0x1ec]
	ands r2, r0
	cmp r2, #0
	beq _080CAB6E
	movs r4, #4
	add sl, r4
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	add r1, sp, #0x1f0
	ldrh r1, [r1]
	strh r1, [r0]
	b _080CA640
_080CAB6E:
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	ldr r4, [sp, #0x1f0]
	str r4, [r0]
	b _080CA640
_080CAB7E:
	movs r0, #0x10
	ldr r1, [sp, #0x1ec]
	orrs r1, r0
	str r1, [sp, #0x1ec]
_080CAB86:
	movs r0, #0x10
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	bne _080CABA6
	movs r0, #0x40
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _080CABA6
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	ldrh r4, [r0]
	b _080CABB0
_080CABA6:
	movs r4, #4
	add sl, r4
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
_080CABB0:
	movs r2, #0
	b _080CACA2
_080CABB4:
	movs r0, #4
	add sl, r0
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
	movs r2, #2
	ldr r1, _080CABD0 @ =gUnknown_08E2E7C8
	str r1, [sp, #0x210]
	ldr r0, [sp, #0x1ec]
	orrs r0, r2
	str r0, [sp, #0x1ec]
	movs r1, #0x78
	str r1, [sp, #0x1e8]
	b _080CACA2
	.align 2, 0
_080CABD0: .4byte gUnknown_08E2E7C8
_080CABD4:
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	mov r8, r0
	cmp r0, #0
	bne _080CABE8
	ldr r4, _080CAC08 @ =gUnknown_08E2E7DC
	mov r8, r4
_080CABE8:
	cmp r6, #0
	blt _080CAC0C
	mov r0, r8
	movs r1, #0
	adds r2, r6, #0
	bl memchr
	cmp r0, #0
	beq _080CAC04
	mov r1, r8
	subs r3, r0, r1
	cmp r3, r6
	bgt _080CAC04
	b _080CADA6
_080CAC04:
	adds r3, r6, #0
	b _080CADA6
	.align 2, 0
_080CAC08: .4byte gUnknown_08E2E7DC
_080CAC0C:
	mov r0, r8
	bl strlen
	adds r3, r0, #0
	b _080CADA6
_080CAC16:
	movs r0, #0x10
	ldr r2, [sp, #0x1ec]
	orrs r2, r0
	str r2, [sp, #0x1ec]
_080CAC1E:
	movs r0, #0x10
	ldr r4, [sp, #0x1ec]
	ands r0, r4
	cmp r0, #0
	beq _080CAC2E
	movs r0, #4
	add sl, r0
	b _080CAC48
_080CAC2E:
	movs r0, #0x40
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _080CAC44
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	ldrh r4, [r0]
	b _080CAC4E
_080CAC44:
	movs r4, #4
	add sl, r4
_080CAC48:
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
_080CAC4E:
	movs r2, #1
	b _080CACA2
_080CAC52:
	ldr r0, _080CAC58 @ =gUnknown_08E2E7E4
	str r0, [sp, #0x210]
	b _080CAC60
	.align 2, 0
_080CAC58: .4byte gUnknown_08E2E7E4
_080CAC5C:
	ldr r1, _080CAC80 @ =gUnknown_08E2E7C8
	str r1, [sp, #0x210]
_080CAC60:
	movs r0, #0x10
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	bne _080CAC84
	movs r0, #0x40
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _080CAC84
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	ldrh r4, [r0]
	b _080CAC8E
	.align 2, 0
_080CAC80: .4byte gUnknown_08E2E7C8
_080CAC84:
	movs r4, #4
	add sl, r4
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
_080CAC8E:
	movs r2, #2
	movs r0, #1
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _080CACA2
	cmp r4, #0
	beq _080CACA2
	orrs r1, r2
	str r1, [sp, #0x1ec]
_080CACA2:
	ldr r1, _080CACEC @ =0x000001C9
	add r1, sp
	movs r0, #0
	strb r0, [r1]
_080CACAA:
	str r6, [sp, #0x208]
	cmp r6, #0
	blt _080CACBA
	movs r0, #0x81
	rsbs r0, r0, #0
	ldr r1, [sp, #0x1ec]
	ands r1, r0
	str r1, [sp, #0x1ec]
_080CACBA:
	movs r0, #0xe2
	lsls r0, r0, #1
	add r0, sp
	mov r8, r0
	cmp r4, #0
	bne _080CACD0
	adds r7, r5, #0
	adds r7, #8
	ldr r1, [sp, #0x208]
	cmp r1, #0
	beq _080CAD88
_080CACD0:
	cmp r2, #1
	beq _080CAD2E
	cmp r2, #1
	blo _080CACF4
	cmp r2, #2
	beq _080CAD68
	ldr r2, _080CACF0 @ =gUnknown_08E2E7F8
	mov r8, r2
	mov r0, r8
	bl strlen
	adds r3, r0, #0
	b _080CADAE
	.align 2, 0
_080CACEC: .4byte 0x000001C9
_080CACF0: .4byte gUnknown_08E2E7F8
_080CACF4:
	adds r7, r5, #0
	adds r7, #8
	movs r2, #7
_080CACFA:
	movs r0, #1
	rsbs r0, r0, #0
	add r8, r0
	adds r0, r4, #0
	ands r0, r2
	adds r1, r0, #0
	adds r1, #0x30
	mov r0, r8
	strb r1, [r0]
	lsrs r4, r4, #3
	cmp r4, #0
	bne _080CACFA
	movs r0, #1
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	beq _080CAD88
	cmp r1, #0x30
	beq _080CAD88
	movs r4, #1
	rsbs r4, r4, #0
	add r8, r4
	movs r0, #0x30
	mov r1, r8
	strb r0, [r1]
	b _080CAD88
_080CAD2E:
	adds r7, r5, #0
	adds r7, #8
	cmp r4, #9
	bls _080CAD58
_080CAD36:
	movs r2, #1
	rsbs r2, r2, #0
	add r8, r2
	adds r0, r4, #0
	movs r1, #0xa
	bl __umodsi3
	adds r0, #0x30
	mov r1, r8
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0xa
	bl __udivsi3
	adds r4, r0, #0
	cmp r4, #9
	bhi _080CAD36
_080CAD58:
	movs r2, #1
	rsbs r2, r2, #0
	add r8, r2
	adds r0, r4, #0
	adds r0, #0x30
	mov r4, r8
	strb r0, [r4]
	b _080CAD88
_080CAD68:
	adds r7, r5, #0
	adds r7, #8
	movs r1, #0xf
_080CAD6E:
	movs r0, #1
	rsbs r0, r0, #0
	add r8, r0
	adds r0, r4, #0
	ands r0, r1
	ldr r2, [sp, #0x210]
	adds r0, r2, r0
	ldrb r0, [r0]
	mov r2, r8
	strb r0, [r2]
	lsrs r4, r4, #4
	cmp r4, #0
	bne _080CAD6E
_080CAD88:
	add r4, sp, #0x14
	mov r1, r8
	subs r0, r4, r1
	movs r2, #0xd8
	lsls r2, r2, #1
	adds r3, r0, r2
	b _080CADB2
_080CAD96:
	ldr r4, [sp, #0x1e8]
	cmp r4, #0
	bne _080CAD9E
	b _080CB4AC
_080CAD9E:
	add r0, sp, #0x68
	mov r8, r0
	strb r4, [r0]
_080CADA4:
	movs r3, #1
_080CADA6:
	ldr r1, _080CADD0 @ =0x000001C9
	add r1, sp
	movs r0, #0
	strb r0, [r1]
_080CADAE:
	adds r7, r5, #0
	adds r7, #8
_080CADB2:
	str r3, [sp, #0x20c]
	ldr r2, [sp, #0x208]
	cmp r3, r2
	bge _080CADBC
	str r2, [sp, #0x20c]
_080CADBC:
	ldr r0, _080CADD0 @ =0x000001C9
	add r0, sp
	ldrb r0, [r0]
	cmp r0, #0
	beq _080CADD4
	ldr r4, [sp, #0x20c]
	adds r4, #1
	str r4, [sp, #0x20c]
	b _080CADE4
	.align 2, 0
_080CADD0: .4byte 0x000001C9
_080CADD4:
	movs r0, #2
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _080CADE4
	ldr r2, [sp, #0x20c]
	adds r2, #2
	str r2, [sp, #0x20c]
_080CADE4:
	movs r0, #0x84
	ldr r4, [sp, #0x1ec]
	ands r0, r4
	cmp r0, #0
	bne _080CAE64
	ldr r0, [sp, #0x1f4]
	ldr r1, [sp, #0x20c]
	subs r4, r0, r1
	cmp r4, #0
	ble _080CAE64
	ldr r1, _080CAE90 @ =gUnknown_08E2E7A0
	cmp r4, #0x10
	ble _080CAE38
	mov r6, sb
_080CAE00:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, r7, #0
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _080CAE2E
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	str r3, [sp, #0x21c]
	bl __sprint
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _080CAE2A
	b _080CB4C4
_080CAE2A:
	add r5, sp, #0x28
	ldr r1, _080CAE90 @ =gUnknown_08E2E7A0
_080CAE2E:
	subs r4, #0x10
	adds r7, r5, #0
	adds r7, #8
	cmp r4, #0x10
	bgt _080CAE00
_080CAE38:
	str r1, [r5]
	str r4, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r4
	str r0, [r2, #8]
	adds r5, r7, #0
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
	cmp r0, #7
	ble _080CAE64
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	str r3, [sp, #0x21c]
	bl __sprint
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _080CAE62
	b _080CB4C4
_080CAE62:
	add r5, sp, #0x28
_080CAE64:
	ldr r1, _080CAE94 @ =0x000001C9
	add r1, sp
	ldrb r0, [r1]
	cmp r0, #0
	beq _080CAE98
	str r1, [r5]
	movs r0, #1
	str r0, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	adds r0, #1
	str r0, [r4, #8]
	adds r5, #8
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	cmp r0, #7
	ble _080CAED8
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	b _080CAEC8
	.align 2, 0
_080CAE90: .4byte gUnknown_08E2E7A0
_080CAE94: .4byte 0x000001C9
_080CAE98:
	movs r2, #2
	ldr r0, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	beq _080CAED8
	add r1, sp, #0x1c4
	movs r0, #0x30
	strb r0, [r1]
	add r0, sp, #0x1e8
	ldrb r0, [r0]
	strb r0, [r1, #1]
	str r1, [r5]
	str r2, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, #2
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _080CAED8
	ldr r0, [sp, #0x1e0]
_080CAEC8:
	str r3, [sp, #0x21c]
	bl __sprint
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _080CAED6
	b _080CB4C4
_080CAED6:
	add r5, sp, #0x28
_080CAED8:
	movs r0, #0x84
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0x80
	bne _080CAF54
	ldr r0, [sp, #0x1f4]
	ldr r1, [sp, #0x20c]
	subs r4, r0, r1
	cmp r4, #0
	ble _080CAF54
	ldr r1, _080CAFF0 @ =gUnknown_08E2E7B0
	cmp r4, #0x10
	ble _080CAF28
	mov r6, sb
_080CAEF4:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _080CAF22
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	str r3, [sp, #0x21c]
	bl __sprint
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _080CAF1E
	b _080CB4C4
_080CAF1E:
	add r5, sp, #0x28
	ldr r1, _080CAFF0 @ =gUnknown_08E2E7B0
_080CAF22:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _080CAEF4
_080CAF28:
	str r1, [r5]
	str r4, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r4
	str r0, [r2, #8]
	adds r5, #8
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
	cmp r0, #7
	ble _080CAF54
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	str r3, [sp, #0x21c]
	bl __sprint
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _080CAF52
	b _080CB4C4
_080CAF52:
	add r5, sp, #0x28
_080CAF54:
	ldr r0, [sp, #0x208]
	subs r4, r0, r3
	cmp r4, #0
	ble _080CAFC2
	ldr r1, _080CAFF0 @ =gUnknown_08E2E7B0
	cmp r4, #0x10
	ble _080CAF98
	mov r6, sb
_080CAF64:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _080CAF92
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	str r3, [sp, #0x21c]
	bl __sprint
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _080CAF8E
	b _080CB4C4
_080CAF8E:
	add r5, sp, #0x28
	ldr r1, _080CAFF0 @ =gUnknown_08E2E7B0
_080CAF92:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _080CAF64
_080CAF98:
	str r1, [r5]
	str r4, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r4
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _080CAFC2
	ldr r0, [sp, #0x1e0]
	str r3, [sp, #0x21c]
	bl __sprint
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _080CAFC0
	b _080CB4C4
_080CAFC0:
	add r5, sp, #0x28
_080CAFC2:
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	bne _080CAFF4
	mov r4, r8
	str r4, [r5]
	str r3, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r3
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	bgt _080CAFEA
	b _080CB40A
_080CAFEA:
	ldr r0, [sp, #0x1e0]
	b _080CB400
	.align 2, 0
_080CAFF0: .4byte gUnknown_08E2E7B0
_080CAFF4:
	ldr r2, [sp, #0x1e8]
	cmp r2, #0x65
	bgt _080CAFFC
	b _080CB2E0
_080CAFFC:
	ldr r3, _080CB0C8 @ =0x00000000
	ldr r2, _080CB0C4 @ =0x00000000
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #0x200]
	bl __eqdf2
	cmp r0, #0
	bne _080CB0D4
	ldr r0, _080CB0CC @ =gUnknown_08E2E814
	str r0, [r5]
	movs r6, #1
	str r6, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	adds r0, #1
	str r0, [r4, #8]
	adds r5, #8
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	cmp r0, #7
	ble _080CB038
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _080CB036
	b _080CB4C4
_080CB036:
	add r5, sp, #0x28
_080CB038:
	add r0, sp, #0x1d4
	ldr r1, [r0]
	add r4, sp, #0x1d8
	ldr r0, [r4]
	cmp r1, r0
	blt _080CB04E
	ldr r0, [sp, #0x1ec]
	ands r0, r6
	cmp r0, #0
	bne _080CB04E
	b _080CB40A
_080CB04E:
	ldr r0, [sp, #0x1f8]
	str r0, [r5]
	str r6, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, #1
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _080CB076
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	beq _080CB074
	b _080CB4C4
_080CB074:
	add r5, sp, #0x28
_080CB076:
	ldr r0, [r4]
	subs r4, r0, #1
	cmp r4, #0
	bgt _080CB080
	b _080CB40A
_080CB080:
	ldr r1, _080CB0D0 @ =gUnknown_08E2E7B0
	cmp r4, #0x10
	ble _080CB0B8
	mov r6, sb
_080CB088:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _080CB0B2
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _080CB0AE
	b _080CB4C4
_080CB0AE:
	add r5, sp, #0x28
	ldr r1, _080CB0D0 @ =gUnknown_08E2E7B0
_080CB0B2:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _080CB088
_080CB0B8:
	str r1, [r5]
	str r4, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r4
	b _080CB3EE
	.align 2, 0
_080CB0C4: .4byte 0x00000000
_080CB0C8: .4byte 0x00000000
_080CB0CC: .4byte gUnknown_08E2E814
_080CB0D0: .4byte gUnknown_08E2E7B0
_080CB0D4:
	add r6, sp, #0x1d4
	ldr r2, [r6]
	cmp r2, #0
	bgt _080CB1BC
	ldr r0, _080CB1B4 @ =gUnknown_08E2E814
	str r0, [r5]
	movs r4, #1
	str r4, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, #1
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _080CB106
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	beq _080CB104
	b _080CB4C4
_080CB104:
	add r5, sp, #0x28
_080CB106:
	ldr r2, [sp, #0x1f8]
	str r2, [r5]
	str r4, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	adds r0, #1
	str r0, [r4, #8]
	adds r5, #8
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	cmp r0, #7
	ble _080CB130
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _080CB12E
	b _080CB4C4
_080CB12E:
	add r5, sp, #0x28
_080CB130:
	ldr r0, [r6]
	rsbs r4, r0, #0
	cmp r4, #0
	ble _080CB196
	ldr r1, _080CB1B8 @ =gUnknown_08E2E7B0
	cmp r4, #0x10
	ble _080CB170
	mov r6, sb
_080CB140:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _080CB16A
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _080CB166
	b _080CB4C4
_080CB166:
	add r5, sp, #0x28
	ldr r1, _080CB1B8 @ =gUnknown_08E2E7B0
_080CB16A:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _080CB140
_080CB170:
	str r1, [r5]
	str r4, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r4
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _080CB196
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	beq _080CB194
	b _080CB4C4
_080CB194:
	add r5, sp, #0x28
_080CB196:
	mov r2, r8
	str r2, [r5]
	add r0, sp, #0x1d8
	ldr r1, [r0]
	str r1, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	adds r0, r0, r1
	str r0, [r4, #8]
	adds r5, #8
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	b _080CB3F8
	.align 2, 0
_080CB1B4: .4byte gUnknown_08E2E814
_080CB1B8: .4byte gUnknown_08E2E7B0
_080CB1BC:
	add r4, sp, #0x1d8
	ldr r1, [r4]
	cmp r2, r1
	blt _080CB278
	mov r0, r8
	str r0, [r5]
	str r1, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r1
	str r0, [r2, #8]
	adds r5, #8
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
	cmp r0, #7
	ble _080CB1EE
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _080CB1EC
	b _080CB4C4
_080CB1EC:
	add r5, sp, #0x28
_080CB1EE:
	ldr r1, [r6]
	ldr r0, [r4]
	subs r4, r1, r0
	cmp r4, #0
	ble _080CB256
	ldr r1, _080CB270 @ =gUnknown_08E2E7B0
	cmp r4, #0x10
	ble _080CB230
	mov r6, sb
_080CB200:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _080CB22A
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _080CB226
	b _080CB4C4
_080CB226:
	add r5, sp, #0x28
	ldr r1, _080CB270 @ =gUnknown_08E2E7B0
_080CB22A:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _080CB200
_080CB230:
	str r1, [r5]
	str r4, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r4
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _080CB256
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	beq _080CB254
	b _080CB4C4
_080CB254:
	add r5, sp, #0x28
_080CB256:
	movs r1, #1
	ldr r0, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	bne _080CB262
	b _080CB40A
_080CB262:
	ldr r0, _080CB274 @ =gUnknown_08E2E818
	str r0, [r5]
	str r1, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, #1
	b _080CB3EE
	.align 2, 0
_080CB270: .4byte gUnknown_08E2E7B0
_080CB274: .4byte gUnknown_08E2E818
_080CB278:
	mov r0, r8
	str r0, [r5]
	str r2, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r2
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _080CB2A0
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	beq _080CB29E
	b _080CB4C4
_080CB29E:
	add r5, sp, #0x28
_080CB2A0:
	ldr r0, [r6]
	add r8, r0
	ldr r0, _080CB2DC @ =gUnknown_08E2E818
	str r0, [r5]
	movs r0, #1
	str r0, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, #1
	str r0, [r2, #8]
	adds r5, #8
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
	cmp r0, #7
	ble _080CB2D0
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _080CB2CE
	b _080CB4C4
_080CB2CE:
	add r5, sp, #0x28
_080CB2D0:
	mov r0, r8
	str r0, [r5]
	ldr r1, [r4]
	ldr r0, [r6]
	subs r1, r1, r0
	b _080CB3E6
	.align 2, 0
_080CB2DC: .4byte gUnknown_08E2E818
_080CB2E0:
	add r4, sp, #0x1d8
	ldr r0, [r4]
	cmp r0, #1
	bgt _080CB2F2
	movs r1, #1
	ldr r0, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _080CB3B8
_080CB2F2:
	add r1, sp, #0x1c4
	mov r2, r8
	ldrb r0, [r2]
	strb r0, [r1]
	movs r0, #1
	add r8, r0
	movs r0, #0x2e
	strb r0, [r1, #1]
	str r1, [r5]
	movs r0, #2
	str r0, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, #2
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _080CB32A
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	beq _080CB328
	b _080CB4C4
_080CB328:
	add r5, sp, #0x28
_080CB32A:
	ldr r3, _080CB354 @ =0x00000000
	ldr r2, _080CB350 @ =0x00000000
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #0x200]
	bl __nedf2
	cmp r0, #0
	beq _080CB358
	mov r2, r8
	str r2, [r5]
	ldr r1, [r4]
	subs r0, r1, #1
	str r0, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	subs r0, #1
	adds r0, r0, r1
	b _080CB3C4
	.align 2, 0
_080CB350: .4byte 0x00000000
_080CB354: .4byte 0x00000000
_080CB358:
	ldr r0, [r4]
	subs r4, r0, #1
	cmp r4, #0
	ble _080CB3E0
	ldr r1, _080CB3B4 @ =gUnknown_08E2E7B0
	cmp r4, #0x10
	ble _080CB398
	mov r6, sb
_080CB368:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _080CB392
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _080CB38E
	b _080CB4C4
_080CB38E:
	add r5, sp, #0x28
	ldr r1, _080CB3B4 @ =gUnknown_08E2E7B0
_080CB392:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _080CB368
_080CB398:
	str r1, [r5]
	str r4, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r4
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _080CB3E0
	ldr r0, [sp, #0x1e0]
	b _080CB3D6
	.align 2, 0
_080CB3B4: .4byte gUnknown_08E2E7B0
_080CB3B8:
	mov r2, r8
	str r2, [r5]
	str r1, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	adds r0, #1
_080CB3C4:
	str r0, [r4, #8]
	adds r5, #8
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	cmp r0, #7
	ble _080CB3E0
	ldr r0, [sp, #0x1e0]
	mov r1, sb
_080CB3D6:
	bl __sprint
	cmp r0, #0
	bne _080CB4C4
	add r5, sp, #0x28
_080CB3E0:
	add r0, sp, #0x14
	str r0, [r5]
	ldr r1, [sp, #0x204]
_080CB3E6:
	str r1, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r1
_080CB3EE:
	str r0, [r2, #8]
	adds r5, #8
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
_080CB3F8:
	cmp r0, #7
	ble _080CB40A
	ldr r0, [sp, #0x1e0]
	mov r1, sb
_080CB400:
	bl __sprint
	cmp r0, #0
	bne _080CB4C4
	add r5, sp, #0x28
_080CB40A:
	movs r0, #4
	ldr r4, [sp, #0x1ec]
	ands r4, r0
	cmp r4, #0
	beq _080CB476
	ldr r0, [sp, #0x1f4]
	ldr r1, [sp, #0x20c]
	subs r4, r0, r1
	cmp r4, #0
	ble _080CB476
	ldr r1, _080CB4A8 @ =gUnknown_08E2E7A0
	cmp r4, #0x10
	ble _080CB454
	mov r6, sb
_080CB426:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _080CB44E
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	bne _080CB4C4
	add r5, sp, #0x28
	ldr r1, _080CB4A8 @ =gUnknown_08E2E7A0
_080CB44E:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _080CB426
_080CB454:
	str r1, [r5]
	str r4, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r4
	str r0, [r2, #8]
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
	cmp r0, #7
	ble _080CB476
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	bne _080CB4C4
_080CB476:
	ldr r0, [sp, #0x20c]
	ldr r4, [sp, #0x1f4]
	cmp r0, r4
	bge _080CB480
	adds r0, r4, #0
_080CB480:
	ldr r1, [sp, #0x1f0]
	adds r1, r1, r0
	str r1, [sp, #0x1f0]
	mov r2, sb
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _080CB49A
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	bne _080CB4C4
_080CB49A:
	movs r0, #0
	mov r4, sb
	str r0, [r4, #4]
	add r5, sp, #0x28
	bl _080CA640
	.align 2, 0
_080CB4A8: .4byte gUnknown_08E2E7A0
_080CB4AC:
	mov r1, sb
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _080CB4BE
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	bne _080CB4C4
_080CB4BE:
	movs r0, #0
	mov r1, sb
	str r0, [r1, #4]
_080CB4C4:
	movs r0, #0x40
	ldr r2, [sp, #0x1e0]
	ldrh r2, [r2, #0xc]
	ands r0, r2
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, #0
	bne _080CB4D6
	ldr r1, [sp, #0x1f0]
_080CB4D6:
	adds r0, r1, #0
sub_80CB4D8:
	movs r3, #0x88
	lsls r3, r3, #2
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start cvt_vfprintf
cvt_vfprintf: @ 0x080CB4E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	str r0, [sp, #0x18]
	adds r5, r2, #0
	adds r4, r1, #0
	mov r8, r3
	ldr r6, [sp, #0x3c]
	ldr r0, [sp, #0x44]
	mov sl, r0
	ldr r1, [sp, #0x48]
	mov sb, r1
	cmp r1, #0x66
	bne _080CB50E
	movs r7, #3
	b _080CB51E
_080CB50E:
	mov r0, sb
	cmp r0, #0x65
	beq _080CB518
	cmp r0, #0x45
	bne _080CB51C
_080CB518:
	movs r1, #1
	add r8, r1
_080CB51C:
	movs r7, #2
_080CB51E:
	lsls r0, r4, #0x1f
	lsrs r0, r0, #0x1f
	cmp r0, #0
	beq _080CB534
	adds r1, r5, #0
	adds r0, r4, #0
	bl __negdf2
	adds r5, r1, #0
	adds r4, r0, #0
	movs r0, #0x2d
_080CB534:
	ldr r1, [sp, #0x40]
	strb r0, [r1]
	mov r0, r8
	str r0, [sp]
	mov r1, sl
	str r1, [sp, #4]
	add r0, sp, #0x10
	str r0, [sp, #8]
	add r0, sp, #0x14
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	adds r2, r5, #0
	adds r1, r4, #0
	adds r3, r7, #0
	bl _dtoa_r
	adds r7, r0, #0
	mov r1, sb
	cmp r1, #0x67
	beq _080CB560
	cmp r1, #0x47
	bne _080CB568
_080CB560:
	movs r0, #1
	ands r6, r0
	cmp r6, #0
	beq _080CB5BC
_080CB568:
	mov r0, r8
	adds r6, r7, r0
	mov r1, sb
	cmp r1, #0x66
	bne _080CB598
	ldrb r0, [r7]
	cmp r0, #0x30
	bne _080CB592
	ldr r3, _080CB5D8 @ =0x00000000
	ldr r2, _080CB5D4 @ =0x00000000
	adds r1, r5, #0
	adds r0, r4, #0
	bl __nedf2
	cmp r0, #0
	beq _080CB592
	mov r1, r8
	rsbs r0, r1, #0
	adds r0, #1
	mov r1, sl
	str r0, [r1]
_080CB592:
	mov r1, sl
	ldr r0, [r1]
	adds r6, r6, r0
_080CB598:
	ldr r3, _080CB5D8 @ =0x00000000
	ldr r2, _080CB5D4 @ =0x00000000
	adds r1, r5, #0
	adds r0, r4, #0
	bl __eqdf2
	cmp r0, #0
	bne _080CB5AA
	str r6, [sp, #0x14]
_080CB5AA:
	ldr r0, [sp, #0x14]
	cmp r0, r6
	bhs _080CB5BC
	movs r1, #0x30
_080CB5B2:
	strb r1, [r0]
	adds r0, #1
	str r0, [sp, #0x14]
	cmp r0, r6
	blo _080CB5B2
_080CB5BC:
	ldr r0, [sp, #0x14]
	subs r0, r0, r7
	ldr r1, [sp, #0x4c]
	str r0, [r1]
	adds r0, r7, #0
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080CB5D4: .4byte 0x00000000
_080CB5D8: .4byte 0x00000000

	thumb_func_start exponent_vfprintf
exponent_vfprintf: @ 0x080CB5DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x134
	adds r7, r0, #0
	adds r6, r1, #0
	strb r2, [r7]
	adds r5, r7, #1
	cmp r6, #0
	bge _080CB5F2
	rsbs r6, r6, #0
	movs r0, #0x2d
	b _080CB5F4
_080CB5F2:
	movs r0, #0x2b
_080CB5F4:
	strb r0, [r7, #1]
	adds r5, #1
	add r4, sp, #0x134
	cmp r6, #9
	ble _080CB636
_080CB5FE:
	subs r4, #1
	adds r0, r6, #0
	movs r1, #0xa
	bl __modsi3
	adds r0, #0x30
	strb r0, [r4]
	adds r0, r6, #0
	movs r1, #0xa
	bl __divsi3
	adds r6, r0, #0
	cmp r6, #9
	bgt _080CB5FE
	subs r4, #1
	adds r0, #0x30
	strb r0, [r4]
	add r0, sp, #0x134
	cmp r4, r0
	bhs _080CB644
	adds r1, r0, #0
_080CB628:
	ldrb r0, [r4]
	strb r0, [r5]
	adds r4, #1
	adds r5, #1
	cmp r4, r1
	blo _080CB628
	b _080CB644
_080CB636:
	movs r0, #0x30
	strb r0, [r5]
	adds r5, #1
	adds r0, r6, #0
	adds r0, #0x30
	strb r0, [r5]
	adds r5, #1
_080CB644:
	subs r0, r5, r7
	add sp, #0x134
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start __swsetup
__swsetup: @ 0x080CB64C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x54]
	cmp r0, #0
	bne _080CB65C
	ldr r0, _080CB688 @ =_impure_ptr
	ldr r0, [r0]
	str r0, [r4, #0x54]
_080CB65C:
	ldr r1, [r4, #0x54]
	ldr r0, [r1, #0x38]
	cmp r0, #0
	bne _080CB66A
	adds r0, r1, #0
	bl __sinit
_080CB66A:
	ldrh r1, [r4, #0xc]
	movs r0, #8
	ands r0, r1
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	bne _080CB6C4
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080CB68C
	movs r0, #1
	rsbs r0, r0, #0
	b _080CB6F6
	.align 2, 0
_080CB688: .4byte _impure_ptr
_080CB68C:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080CB6BC
	ldr r1, [r4, #0x30]
	cmp r1, #0
	beq _080CB6AA
	adds r0, r4, #0
	adds r0, #0x40
	cmp r1, r0
	beq _080CB6A8
	ldr r0, [r4, #0x54]
	bl _free_r
_080CB6A8:
	str r5, [r4, #0x30]
_080CB6AA:
	movs r0, #0x25
	rsbs r0, r0, #0
	ldrh r1, [r4, #0xc]
	ands r0, r1
	movs r1, #0
	strh r0, [r4, #0xc]
	str r1, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r4]
_080CB6BC:
	movs r0, #8
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	strh r0, [r4, #0xc]
_080CB6C4:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _080CB6D0
	adds r0, r4, #0
	bl __smakebuf
_080CB6D0:
	ldrh r1, [r4, #0xc]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080CB6E6
	movs r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0x14]
	rsbs r0, r0, #0
	str r0, [r4, #0x18]
	b _080CB6F4
_080CB6E6:
	movs r0, #2
	ands r0, r1
	movs r1, #0
	cmp r0, #0
	bne _080CB6F2
	ldr r1, [r4, #0x14]
_080CB6F2:
	str r1, [r4, #8]
_080CB6F4:
	movs r0, #0
_080CB6F6:
	pop {r4, r5, pc}

	thumb_func_start sub_80CB6F8
sub_80CB6F8: @ 0x080CB6F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r0, [sp]
	str r1, [sp, #4]
	ldr r7, [r1, #0x10]
	ldr r0, [r0, #0x10]
	cmp r0, r7
	bge _080CB714
	movs r0, #0
	b _080CB848
_080CB714:
	ldr r0, [sp, #4]
	adds r0, #0x14
	mov r8, r0
	subs r7, #1
	lsls r0, r7, #2
	mov r1, r8
	adds r1, r1, r0
	str r1, [sp, #0xc]
	ldr r4, [sp]
	adds r4, #0x14
	adds r5, r4, r0
	ldr r1, [r1]
	adds r1, #1
	ldr r2, [r5]
	mov sl, r2
	mov r0, sl
	bl __udivsi3
	str r0, [sp, #8]
	mov r3, r8
	str r3, [sp, #0x14]
	str r4, [sp, #0x10]
	cmp r0, #0
	beq _080CB7BE
	movs r6, #0
	mov sb, r6
	ldr r0, _080CB7A8 @ =0x0000FFFF
	mov ip, r0
_080CB74C:
	mov r2, r8
	adds r2, #4
	mov r8, r2
	subs r2, #4
	ldm r2!, {r1}
	adds r0, r1, #0
	mov r3, ip
	ands r0, r3
	ldr r2, [sp, #8]
	muls r0, r2, r0
	mov r3, sb
	adds r2, r0, r3
	lsrs r0, r1, #0x10
	ldr r3, [sp, #8]
	adds r1, r0, #0
	muls r1, r3, r1
	lsrs r0, r2, #0x10
	adds r3, r1, r0
	lsrs r0, r3, #0x10
	mov sb, r0
	ldr r0, [r4]
	mov r1, ip
	ands r0, r1
	ands r2, r1
	subs r0, r0, r2
	adds r2, r0, r6
	asrs r6, r2, #0x10
	ldr r0, [r4]
	lsrs r1, r0, #0x10
	mov r0, ip
	ands r3, r0
	subs r1, r1, r3
	adds r0, r1, r6
	asrs r6, r0, #0x10
	strh r0, [r4]
	strh r2, [r4, #2]
	adds r4, #4
	ldr r1, [sp, #0xc]
	cmp r8, r1
	bls _080CB74C
	mov r2, sl
	cmp r2, #0
	bne _080CB7BE
	ldr r4, [sp, #0x10]
	b _080CB7AE
	.align 2, 0
_080CB7A8: .4byte 0x0000FFFF
_080CB7AC:
	subs r7, #1
_080CB7AE:
	subs r5, #4
	cmp r5, r4
	bls _080CB7BA
	ldr r0, [r5]
	cmp r0, #0
	beq _080CB7AC
_080CB7BA:
	ldr r3, [sp]
	str r7, [r3, #0x10]
_080CB7BE:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl __mcmp
	cmp r0, #0
	blt _080CB846
	ldr r0, [sp, #8]
	adds r0, #1
	str r0, [sp, #8]
	movs r6, #0
	mov sb, r6
	ldr r4, [sp, #0x10]
	ldr r1, [sp, #0x14]
	mov r8, r1
	lsls r2, r7, #2
	mov sl, r2
	ldr r5, _080CB830 @ =0x0000FFFF
_080CB7E0:
	mov r3, r8
	adds r3, #4
	mov r8, r3
	subs r3, #4
	ldm r3!, {r1}
	adds r0, r1, #0
	ands r0, r5
	mov r3, sb
	adds r2, r0, r3
	lsrs r1, r1, #0x10
	lsrs r0, r2, #0x10
	adds r3, r1, r0
	lsrs r0, r3, #0x10
	mov sb, r0
	ldr r1, [r4]
	adds r0, r1, #0
	ands r0, r5
	ands r2, r5
	subs r0, r0, r2
	adds r2, r0, r6
	asrs r6, r2, #0x10
	lsrs r1, r1, #0x10
	ands r3, r5
	subs r1, r1, r3
	adds r0, r1, r6
	asrs r6, r0, #0x10
	strh r0, [r4]
	strh r2, [r4, #2]
	adds r4, #4
	ldr r1, [sp, #0xc]
	cmp r8, r1
	bls _080CB7E0
	ldr r4, [sp, #0x10]
	mov r2, sl
	adds r5, r4, r2
	ldr r0, [r5]
	cmp r0, #0
	bne _080CB846
	b _080CB836
	.align 2, 0
_080CB830: .4byte 0x0000FFFF
_080CB834:
	subs r7, #1
_080CB836:
	subs r5, #4
	cmp r5, r4
	bls _080CB842
	ldr r0, [r5]
	cmp r0, #0
	beq _080CB834
_080CB842:
	ldr r3, [sp]
	str r7, [r3, #0x10]
_080CB846:
	ldr r0, [sp, #8]
_080CB848:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start _dtoa_r
_dtoa_r: @ 0x080CB854
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x84
	mov sl, r0
	str r3, [sp, #0xc]
	ldr r4, [sp, #0xac]
	str r1, [sp, #0x40]
	str r2, [sp, #0x44]
	ldr r2, [r0, #0x40]
	cmp r2, #0
	beq _080CB88C
	ldr r0, [r0, #0x44]
	str r0, [r2, #4]
	mov r0, sl
	ldr r1, [r0, #0x44]
	movs r0, #1
	lsls r0, r1
	str r0, [r2, #8]
	mov r0, sl
	adds r1, r2, #0
	bl _Bfree
	movs r0, #0
	mov r1, sl
	str r0, [r1, #0x40]
_080CB88C:
	movs r0, #0x80
	lsls r0, r0, #0x18
	ldr r1, [sp, #0x40]
	ands r0, r1
	cmp r0, #0
	beq _080CB8A8
	movs r0, #1
	str r0, [r4]
	ldr r0, _080CB8A4 @ =0x7FFFFFFF
	ands r1, r0
	str r1, [sp, #0x40]
	b _080CB8AA
	.align 2, 0
_080CB8A4: .4byte 0x7FFFFFFF
_080CB8A8:
	str r0, [r4]
_080CB8AA:
	ldr r1, _080CB8EC @ =0x7FF00000
	ldr r2, [sp, #0x40]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, r1
	bne _080CB900
	ldr r0, _080CB8F0 @ =0x0000270F
	ldr r3, [sp, #0xa8]
	str r0, [r3]
	ldr r0, _080CB8F4 @ =gUnknown_08E2E828
	mov sb, r0
	ldr r1, [sp, #0x44]
	cmp r1, #0
	bne _080CB8D2
	ldr r0, _080CB8F8 @ =0x000FFFFF
	ands r2, r0
	cmp r2, #0
	bne _080CB8D2
	ldr r2, _080CB8FC @ =gUnknown_08E2E81C
	mov sb, r2
_080CB8D2:
	ldr r3, [sp, #0xb0]
	cmp r3, #0
	beq _080CB924
	mov r1, sb
	ldrb r0, [r1, #3]
	adds r1, #3
	cmp r0, #0
	beq _080CB8E4
	adds r1, #5
_080CB8E4:
	ldr r2, [sp, #0xb0]
	str r1, [r2]
	b _080CB924
	.align 2, 0
_080CB8EC: .4byte 0x7FF00000
_080CB8F0: .4byte 0x0000270F
_080CB8F4: .4byte gUnknown_08E2E828
_080CB8F8: .4byte 0x000FFFFF
_080CB8FC: .4byte gUnknown_08E2E81C
_080CB900:
	ldr r3, _080CB930 @ =0x00000000
	ldr r2, _080CB92C @ =0x00000000
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __eqdf2
	cmp r0, #0
	bne _080CB938
	movs r0, #1
	ldr r3, [sp, #0xa8]
	str r0, [r3]
	ldr r0, _080CB934 @ =gUnknown_08E2E82C
	mov sb, r0
	ldr r1, [sp, #0xb0]
	cmp r1, #0
	beq _080CB924
	adds r0, #1
	str r0, [r1]
_080CB924:
	mov r0, sb
	bl sub_80CC53E
	.align 2, 0
_080CB92C: .4byte 0x00000000
_080CB930: .4byte 0x00000000
_080CB934: .4byte gUnknown_08E2E82C
_080CB938:
	add r0, sp, #8
	str r0, [sp]
	mov r0, sl
	ldr r1, [sp, #0x40]
	ldr r2, [sp, #0x44]
	add r3, sp, #4
	bl _d2b
	str r0, [sp, #0x5c]
	ldr r2, [sp, #0x40]
	lsls r0, r2, #1
	lsrs r0, r0, #0x15
	mov r8, r0
	cmp r0, #0
	beq _080CB988
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	str r0, [sp, #0x48]
	str r1, [sp, #0x4c]
	ldr r0, _080CB97C @ =0x000FFFFF
	ldr r1, [sp, #0x48]
	ands r1, r0
	str r1, [sp, #0x48]
	ldr r0, _080CB980 @ =0x3FF00000
	adds r2, r1, #0
	orrs r2, r0
	str r2, [sp, #0x48]
	ldr r3, _080CB984 @ =0xFFFFFC01
	add r8, r3
	movs r0, #0
	str r0, [sp, #0x58]
	ldr r6, [sp, #8]
	b _080CB9E8
	.align 2, 0
_080CB97C: .4byte 0x000FFFFF
_080CB980: .4byte 0x3FF00000
_080CB984: .4byte 0xFFFFFC01
_080CB988:
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	adds r2, r1, r0
	ldr r3, _080CB9B0 @ =0x00000432
	adds r3, r3, r2
	mov r8, r3
	adds r6, r1, #0
	cmp r3, #0x20
	ble _080CB9B8
	movs r0, #0x40
	subs r0, r0, r3
	ldr r4, [sp, #0x40]
	lsls r4, r0
	ldr r1, _080CB9B4 @ =0x00000412
	adds r0, r2, r1
	ldr r2, [sp, #0x44]
	lsrs r2, r0
	adds r0, r2, #0
	orrs r4, r0
	b _080CB9C2
	.align 2, 0
_080CB9B0: .4byte 0x00000432
_080CB9B4: .4byte 0x00000412
_080CB9B8:
	movs r0, #0x20
	mov r3, r8
	subs r0, r0, r3
	ldr r4, [sp, #0x44]
	lsls r4, r0
_080CB9C2:
	adds r0, r4, #0
	bl __floatsidf
	cmp r4, #0
	bge _080CB9D4
	ldr r3, _080CBA98 @ =0x00000000
	ldr r2, _080CBA94 @ =0x41F00000
	bl __adddf3
_080CB9D4:
	str r0, [sp, #0x48]
	str r1, [sp, #0x4c]
	ldr r1, _080CBA9C @ =0xFE100000
	ldr r0, [sp, #0x48]
	adds r1, r0, r1
	str r1, [sp, #0x48]
	ldr r2, _080CBAA0 @ =0xFFFFFBCD
	add r8, r2
	movs r3, #1
	str r3, [sp, #0x58]
_080CB9E8:
	ldr r2, _080CBAA4 @ =0x3FF80000
	ldr r3, _080CBAA8 @ =0x00000000
	ldr r0, [sp, #0x48]
	ldr r1, [sp, #0x4c]
	bl __subdf3
	ldr r2, _080CBAAC @ =0x3FD287A7
	ldr r3, _080CBAB0 @ =0x636F4361
	bl __muldf3
	ldr r2, _080CBAB4 @ =0x3FC68A28
	ldr r3, _080CBAB8 @ =0x8B60C8B3
	bl __adddf3
	adds r5, r1, #0
	adds r4, r0, #0
	mov r0, r8
	bl __floatsidf
	ldr r2, _080CBABC @ =0x3FD34413
	ldr r3, _080CBAC0 @ =0x509F79FB
	bl __muldf3
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl __adddf3
	str r0, [sp, #0x6c]
	str r1, [sp, #0x70]
	bl __fixdfsi
	str r0, [sp, #0x24]
	ldr r2, _080CBAC4 @ =0x00000000
	ldr r3, _080CBAC8 @ =0x00000000
	ldr r0, [sp, #0x6c]
	ldr r1, [sp, #0x70]
	bl __ltdf2
	cmp r0, #0
	bge _080CBA58
	ldr r0, [sp, #0x24]
	bl __floatsidf
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x6c]
	ldr r1, [sp, #0x70]
	bl __nedf2
	cmp r0, #0
	beq _080CBA58
	ldr r0, [sp, #0x24]
	subs r0, #1
	str r0, [sp, #0x24]
_080CBA58:
	movs r1, #1
	str r1, [sp, #0x2c]
	ldr r2, [sp, #0x24]
	cmp r2, #0x16
	bhi _080CBA82
	ldr r1, _080CBACC @ =gUnknown_08E2E878
	lsls r0, r2, #3
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r3, [r0, #4]
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __ltdf2
	cmp r0, #0
	bge _080CBA7E
	ldr r3, [sp, #0x24]
	subs r3, #1
	str r3, [sp, #0x24]
_080CBA7E:
	movs r0, #0
	str r0, [sp, #0x2c]
_080CBA82:
	mov r1, r8
	subs r0, r6, r1
	subs r4, r0, #1
	cmp r4, #0
	blt _080CBAD0
	movs r2, #0
	str r2, [sp, #0x10]
	str r4, [sp, #0x34]
	b _080CBAD8
	.align 2, 0
_080CBA94: .4byte 0x41F00000
_080CBA98: .4byte 0x00000000
_080CBA9C: .4byte 0xFE100000
_080CBAA0: .4byte 0xFFFFFBCD
_080CBAA4: .4byte 0x3FF80000
_080CBAA8: .4byte 0x00000000
_080CBAAC: .4byte 0x3FD287A7
_080CBAB0: .4byte 0x636F4361
_080CBAB4: .4byte 0x3FC68A28
_080CBAB8: .4byte 0x8B60C8B3
_080CBABC: .4byte 0x3FD34413
_080CBAC0: .4byte 0x509F79FB
_080CBAC4: .4byte 0x00000000
_080CBAC8: .4byte 0x00000000
_080CBACC: .4byte gUnknown_08E2E878
_080CBAD0:
	rsbs r4, r4, #0
	str r4, [sp, #0x10]
	movs r3, #0
	str r3, [sp, #0x34]
_080CBAD8:
	ldr r0, [sp, #0x24]
	cmp r0, #0
	blt _080CBAEC
	movs r1, #0
	str r1, [sp, #0x14]
	str r0, [sp, #0x38]
	ldr r2, [sp, #0x34]
	adds r2, r2, r0
	str r2, [sp, #0x34]
	b _080CBAFC
_080CBAEC:
	ldr r3, [sp, #0x10]
	ldr r0, [sp, #0x24]
	subs r3, r3, r0
	str r3, [sp, #0x10]
	rsbs r1, r0, #0
	str r1, [sp, #0x14]
	movs r2, #0
	str r2, [sp, #0x38]
_080CBAFC:
	ldr r3, [sp, #0xc]
	cmp r3, #9
	bls _080CBB06
	movs r0, #0
	str r0, [sp, #0xc]
_080CBB06:
	movs r5, #1
	ldr r1, [sp, #0xc]
	cmp r1, #5
	ble _080CBB14
	subs r1, #4
	str r1, [sp, #0xc]
	movs r5, #0
_080CBB14:
	movs r2, #1
	str r2, [sp, #0x30]
	ldr r3, [sp, #0xc]
	cmp r3, #5
	bhi _080CBB8E
	lsls r0, r3, #2
	ldr r1, _080CBB28 @ =_080CBB2C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080CBB28: .4byte _080CBB2C
_080CBB2C: @ jump table
	.4byte _080CBB44 @ case 0
	.4byte _080CBB44 @ case 1
	.4byte _080CBB56 @ case 2
	.4byte _080CBB72 @ case 3
	.4byte _080CBB5A @ case 4
	.4byte _080CBB76 @ case 5
_080CBB44:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x20]
	movs r1, #0x12
	mov r8, r1
	movs r2, #0
	str r2, [sp, #0xa4]
	b _080CBB8E
_080CBB56:
	movs r3, #0
	str r3, [sp, #0x30]
_080CBB5A:
	ldr r0, [sp, #0xa4]
	cmp r0, #0
	bgt _080CBB64
	movs r1, #1
	str r1, [sp, #0xa4]
_080CBB64:
	ldr r2, [sp, #0xa4]
	mov r8, r2
	mov r3, r8
	str r3, [sp, #0x20]
	mov r0, r8
	str r0, [sp, #0x18]
	b _080CBB8E
_080CBB72:
	movs r1, #0
	str r1, [sp, #0x30]
_080CBB76:
	ldr r2, [sp, #0xa4]
	ldr r3, [sp, #0x24]
	adds r0, r2, r3
	adds r1, r0, #1
	mov r8, r1
	mov r2, r8
	str r2, [sp, #0x18]
	str r0, [sp, #0x20]
	cmp r1, #0
	bgt _080CBB8E
	movs r3, #1
	mov r8, r3
_080CBB8E:
	movs r4, #4
	movs r0, #0
	mov r1, sl
	str r0, [r1, #0x44]
	mov r2, r8
	cmp r2, #0x17
	bls _080CBBAE
	movs r1, #0
_080CBB9E:
	adds r1, #1
	lsls r4, r4, #1
	adds r0, r4, #0
	adds r0, #0x14
	cmp r0, r8
	bls _080CBB9E
	mov r3, sl
	str r1, [r3, #0x44]
_080CBBAE:
	mov r0, sl
	ldr r1, [r0, #0x44]
	bl _Balloc
	mov r1, sl
	str r0, [r1, #0x40]
	str r0, [sp, #0x74]
	mov sb, r0
	ldr r2, [sp, #0x18]
	cmp r2, #0xe
	bls _080CBBC6
	b _080CBF38
_080CBBC6:
	cmp r5, #0
	bne _080CBBCC
	b _080CBF38
_080CBBCC:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	str r0, [sp, #0x78]
	str r1, [sp, #0x7c]
	str r0, [sp, #0x48]
	str r1, [sp, #0x4c]
	ldr r1, [sp, #0x24]
	str r1, [sp, #0x28]
	str r2, [sp, #0x1c]
	movs r7, #2
	cmp r1, #0
	ble _080CBC5C
	ldr r0, _080CBC54 @ =gUnknown_08E2E878
	movs r2, #0xf
	ands r1, r2
	lsls r1, r1, #3
	adds r3, r1, r0
	ldr r0, [r3]
	ldr r1, [r3, #4]
	str r0, [sp, #0x6c]
	str r1, [sp, #0x70]
	ldr r1, [sp, #0x24]
	asrs r4, r1, #4
	movs r0, #0x10
	ands r0, r4
	cmp r0, #0
	beq _080CBC18
	ands r4, r2
	ldr r0, _080CBC58 @ =gUnknown_08E2E940
	ldr r2, [r0, #0x20]
	ldr r3, [r0, #0x24]
	ldr r0, [sp, #0x78]
	ldr r1, [sp, #0x7c]
	bl __divdf3
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	movs r7, #3
_080CBC18:
	cmp r4, #0
	beq _080CBC40
	ldr r5, _080CBC58 @ =gUnknown_08E2E940
_080CBC1E:
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _080CBC38
	adds r7, #1
	ldr r2, [r5]
	ldr r3, [r5, #4]
	ldr r0, [sp, #0x6c]
	ldr r1, [sp, #0x70]
	bl __muldf3
	str r0, [sp, #0x6c]
	str r1, [sp, #0x70]
_080CBC38:
	asrs r4, r4, #1
	adds r5, #8
	cmp r4, #0
	bne _080CBC1E
_080CBC40:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	bl __divdf3
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	b _080CBCA8
	.align 2, 0
_080CBC54: .4byte gUnknown_08E2E878
_080CBC58: .4byte gUnknown_08E2E940
_080CBC5C:
	ldr r2, [sp, #0x24]
	rsbs r6, r2, #0
	cmp r6, #0
	beq _080CBCA8
	ldr r1, _080CBD50 @ =gUnknown_08E2E878
	movs r0, #0xf
	ands r0, r6
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, [r0, #4]
	ldr r0, [r0]
	ldr r2, [sp, #0x78]
	ldr r3, [sp, #0x7c]
	bl __muldf3
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	asrs r4, r6, #4
	cmp r4, #0
	beq _080CBCA8
	ldr r5, _080CBD54 @ =gUnknown_08E2E940
_080CBC86:
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _080CBCA0
	adds r7, #1
	ldr r0, [r5]
	ldr r1, [r5, #4]
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	bl __muldf3
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
_080CBCA0:
	asrs r4, r4, #1
	adds r5, #8
	cmp r4, #0
	bne _080CBC86
_080CBCA8:
	ldr r3, [sp, #0x2c]
	cmp r3, #0
	beq _080CBCE6
	ldr r2, _080CBD58 @ =0x3FF00000
	ldr r3, _080CBD5C @ =0x00000000
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __ltdf2
	cmp r0, #0
	bge _080CBCE6
	ldr r0, [sp, #0x18]
	cmp r0, #0
	ble _080CBCE6
	ldr r1, [sp, #0x20]
	cmp r1, #0
	bgt _080CBCCC
	b _080CBF24
_080CBCCC:
	str r1, [sp, #0x18]
	ldr r2, [sp, #0x24]
	subs r2, #1
	str r2, [sp, #0x24]
	ldr r0, _080CBD60 @ =0x40240000
	ldr r1, _080CBD64 @ =0x00000000
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	bl __muldf3
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	adds r7, #1
_080CBCE6:
	adds r0, r7, #0
	bl __floatsidf
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	bl __muldf3
	ldr r2, _080CBD68 @ =0x401C0000
	ldr r3, _080CBD6C @ =0x00000000
	bl __adddf3
	str r0, [sp, #0x50]
	str r1, [sp, #0x54]
	ldr r0, _080CBD70 @ =0xFCC00000
	ldr r3, [sp, #0x50]
	adds r0, r3, r0
	str r0, [sp, #0x50]
	ldr r1, [sp, #0x18]
	cmp r1, #0
	bne _080CBD7C
	movs r2, #0
	str r2, [sp, #0x64]
	movs r3, #0
	str r3, [sp, #0x68]
	ldr r2, _080CBD74 @ =0x40140000
	ldr r3, _080CBD78 @ =0x00000000
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __subdf3
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl __gtdf2
	cmp r0, #0
	ble _080CBD34
	b _080CC2AE
_080CBD34:
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x54]
	bl __negdf2
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl __ltdf2
	cmp r0, #0
	bge _080CBD4E
	b _080CC2A6
_080CBD4E:
	b _080CBF24
	.align 2, 0
_080CBD50: .4byte gUnknown_08E2E878
_080CBD54: .4byte gUnknown_08E2E940
_080CBD58: .4byte 0x3FF00000
_080CBD5C: .4byte 0x00000000
_080CBD60: .4byte 0x40240000
_080CBD64: .4byte 0x00000000
_080CBD68: .4byte 0x401C0000
_080CBD6C: .4byte 0x00000000
_080CBD70: .4byte 0xFCC00000
_080CBD74: .4byte 0x40140000
_080CBD78: .4byte 0x00000000
_080CBD7C:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _080CBE4C
	ldr r1, _080CBDAC @ =gUnknown_08E2E878
	ldr r0, [sp, #0x18]
	subs r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r3, [r0, #4]
	ldr r0, _080CBDB0 @ =0x3FE00000
	ldr r1, _080CBDB4 @ =0x00000000
	bl __divdf3
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl __subdf3
	str r0, [sp, #0x50]
	str r1, [sp, #0x54]
	movs r1, #0
	mov r8, r1
	b _080CBDD8
	.align 2, 0
_080CBDAC: .4byte gUnknown_08E2E878
_080CBDB0: .4byte 0x3FE00000
_080CBDB4: .4byte 0x00000000
_080CBDB8:
	ldr r1, _080CBE40 @ =0x00000000
	ldr r0, _080CBE3C @ =0x40240000
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl __muldf3
	str r0, [sp, #0x50]
	str r1, [sp, #0x54]
	ldr r1, _080CBE40 @ =0x00000000
	ldr r0, _080CBE3C @ =0x40240000
	adds r3, r5, #0
	adds r2, r4, #0
	bl __muldf3
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
_080CBDD8:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __fixdfsi
	adds r6, r0, #0
	bl __floatsidf
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __subdf3
	adds r5, r1, #0
	adds r4, r0, #0
	adds r0, r6, #0
	adds r0, #0x30
	mov r2, sb
	strb r0, [r2]
	movs r3, #1
	add sb, r3
	adds r1, r5, #0
	adds r0, r4, #0
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl __ltdf2
	cmp r0, #0
	bge _080CBE14
	b _080CC51E
_080CBE14:
	ldr r0, _080CBE44 @ =0x3FF00000
	ldr r1, _080CBE48 @ =0x00000000
	adds r3, r5, #0
	adds r2, r4, #0
	bl __subdf3
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl __ltdf2
	cmp r0, #0
	bge _080CBE2E
	b _080CC038
_080CBE2E:
	movs r0, #1
	add r8, r0
	ldr r1, [sp, #0x18]
	cmp r8, r1
	blt _080CBDB8
	b _080CBF24
	.align 2, 0
_080CBE3C: .4byte 0x40240000
_080CBE40: .4byte 0x00000000
_080CBE44: .4byte 0x3FF00000
_080CBE48: .4byte 0x00000000
_080CBE4C:
	ldr r1, _080CBE6C @ =gUnknown_08E2E878
	ldr r0, [sp, #0x18]
	subs r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, [r0, #4]
	ldr r0, [r0]
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl __muldf3
	str r0, [sp, #0x50]
	str r1, [sp, #0x54]
	movs r2, #1
	mov r8, r2
	b _080CBE84
	.align 2, 0
_080CBE6C: .4byte gUnknown_08E2E878
_080CBE70:
	movs r3, #1
	add r8, r3
	ldr r1, _080CBF18 @ =0x00000000
	ldr r0, _080CBF14 @ =0x40240000
	adds r3, r5, #0
	adds r2, r4, #0
	bl __muldf3
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
_080CBE84:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __fixdfsi
	adds r6, r0, #0
	bl __floatsidf
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __subdf3
	adds r5, r1, #0
	adds r4, r0, #0
	adds r0, r6, #0
	adds r0, #0x30
	mov r1, sb
	strb r0, [r1]
	movs r2, #1
	add sb, r2
	ldr r3, [sp, #0x18]
	cmp r8, r3
	bne _080CBE70
	ldr r6, _080CBF1C @ =0x3FE00000
	ldr r7, _080CBF20 @ =0x00000000
	adds r1, r7, #0
	adds r0, r6, #0
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl __adddf3
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl __gtdf2
	cmp r0, #0
	ble _080CBED6
	b _080CC038
_080CBED6:
	adds r1, r7, #0
	adds r0, r6, #0
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl __subdf3
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl __ltdf2
	cmp r0, #0
	bge _080CBF24
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
	mov r1, sb
	ldrb r1, [r1]
	cmp r1, #0x30
	beq _080CBF02
	b _080CC05E
_080CBF02:
	movs r2, #1
	rsbs r2, r2, #0
	add sb, r2
	mov r3, sb
	ldrb r3, [r3]
	cmp r3, #0x30
	beq _080CBF02
	b _080CC05E
	.align 2, 0
_080CBF14: .4byte 0x40240000
_080CBF18: .4byte 0x00000000
_080CBF1C: .4byte 0x3FE00000
_080CBF20: .4byte 0x00000000
_080CBF24:
	ldr r1, [sp, #0x74]
	mov sb, r1
	ldr r2, [sp, #0x48]
	ldr r3, [sp, #0x4c]
	str r2, [sp, #0x40]
	str r3, [sp, #0x44]
	ldr r3, [sp, #0x28]
	str r3, [sp, #0x24]
	ldr r0, [sp, #0x1c]
	str r0, [sp, #0x18]
_080CBF38:
	ldr r0, [sp, #4]
	cmp r0, #0
	bge _080CBF40
	b _080CC074
_080CBF40:
	ldr r1, [sp, #0x24]
	cmp r1, #0xe
	ble _080CBF48
	b _080CC074
_080CBF48:
	ldr r1, _080CBF94 @ =gUnknown_08E2E878
	ldr r2, [sp, #0x24]
	lsls r0, r2, #3
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r2, [r0, #4]
	str r1, [sp, #0x6c]
	str r2, [sp, #0x70]
	ldr r2, [sp, #0xa4]
	cmp r2, #0
	bge _080CBFA0
	ldr r3, [sp, #0x18]
	cmp r3, #0
	bgt _080CBFA0
	movs r0, #0
	str r0, [sp, #0x64]
	movs r1, #0
	str r1, [sp, #0x68]
	cmp r3, #0
	bge _080CBF72
	b _080CC2A6
_080CBF72:
	ldr r2, _080CBF98 @ =0x40140000
	ldr r3, _080CBF9C @ =0x00000000
	ldr r0, [sp, #0x6c]
	ldr r1, [sp, #0x70]
	bl __muldf3
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __ledf2
	cmp r0, #0
	bgt _080CBF90
	b _080CC2A6
_080CBF90:
	b _080CC2AE
	.align 2, 0
_080CBF94: .4byte gUnknown_08E2E878
_080CBF98: .4byte 0x40140000
_080CBF9C: .4byte 0x00000000
_080CBFA0:
	movs r2, #1
	mov r8, r2
	b _080CBFC4
_080CBFA6:
	ldr r1, _080CC068 @ =0x00000000
	ldr r0, _080CC064 @ =0x40240000
	bl __muldf3
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	ldr r2, _080CC06C @ =0x00000000
	ldr r3, _080CC070 @ =0x00000000
	bl __eqdf2
	cmp r0, #0
	bne _080CBFC0
	b _080CC51E
_080CBFC0:
	movs r3, #1
	add r8, r3
_080CBFC4:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	bl __divdf3
	bl __fixdfsi
	adds r6, r0, #0
	bl __floatsidf
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	bl __muldf3
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __subdf3
	adds r3, r1, #0
	adds r2, r0, #0
	adds r0, r6, #0
	adds r0, #0x30
	mov r1, sb
	strb r0, [r1]
	movs r0, #1
	add sb, r0
	ldr r1, [sp, #0x18]
	cmp r8, r1
	bne _080CBFA6
	adds r1, r3, #0
	adds r0, r2, #0
	bl __adddf3
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	bl __gtdf2
	cmp r0, #0
	bgt _080CC038
	adds r1, r5, #0
	adds r0, r4, #0
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	bl __eqdf2
	cmp r0, #0
	beq _080CC02E
	b _080CC51E
_080CC02E:
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	bne _080CC038
	b _080CC51E
_080CC038:
	movs r0, #0x30
_080CC03A:
	movs r2, #1
	rsbs r2, r2, #0
	add sb, r2
	mov r3, sb
	ldrb r3, [r3]
	cmp r3, #0x39
	bne _080CC056
	ldr r1, [sp, #0x74]
	cmp sb, r1
	bne _080CC03A
	ldr r2, [sp, #0x24]
	adds r2, #1
	str r2, [sp, #0x24]
	strb r0, [r1]
_080CC056:
	mov r3, sb
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
_080CC05E:
	movs r0, #1
	add sb, r0
	b _080CC51E
	.align 2, 0
_080CC064: .4byte 0x40240000
_080CC068: .4byte 0x00000000
_080CC06C: .4byte 0x00000000
_080CC070: .4byte 0x00000000
_080CC074:
	ldr r5, [sp, #0x10]
	ldr r6, [sp, #0x14]
	movs r1, #0
	str r1, [sp, #0x60]
	movs r2, #0
	str r2, [sp, #0x64]
	ldr r3, [sp, #0x30]
	cmp r3, #0
	beq _080CC0EA
	ldr r1, [sp, #0xc]
	cmp r1, #1
	bgt _080CC0A8
	ldr r2, [sp, #0x58]
	cmp r2, #0
	beq _080CC0A0
	ldr r3, _080CC09C @ =0x00000433
	adds r3, r3, r0
	mov r8, r3
	b _080CC0D4
	.align 2, 0
_080CC09C: .4byte 0x00000433
_080CC0A0:
	ldr r1, [sp, #8]
	movs r0, #0x36
	subs r0, r0, r1
	b _080CC0D2
_080CC0A8:
	ldr r4, [sp, #0x18]
	subs r4, #1
	ldr r0, [sp, #0x14]
	cmp r0, r4
	blt _080CC0B6
	subs r6, r0, r4
	b _080CC0C6
_080CC0B6:
	ldr r1, [sp, #0x14]
	subs r4, r4, r1
	ldr r2, [sp, #0x38]
	adds r2, r2, r4
	str r2, [sp, #0x38]
	adds r1, r1, r4
	str r1, [sp, #0x14]
	movs r6, #0
_080CC0C6:
	ldr r3, [sp, #0x18]
	mov r8, r3
	cmp r3, #0
	bge _080CC0D4
	subs r5, r5, r3
	movs r0, #0
_080CC0D2:
	mov r8, r0
_080CC0D4:
	ldr r1, [sp, #0x10]
	add r1, r8
	str r1, [sp, #0x10]
	ldr r2, [sp, #0x34]
	add r2, r8
	str r2, [sp, #0x34]
	mov r0, sl
	movs r1, #1
	bl _i2b
	str r0, [sp, #0x64]
_080CC0EA:
	cmp r5, #0
	ble _080CC10C
	ldr r3, [sp, #0x34]
	cmp r3, #0
	ble _080CC10C
	mov r8, r3
	cmp r8, r5
	ble _080CC0FC
	mov r8, r5
_080CC0FC:
	ldr r0, [sp, #0x10]
	mov r1, r8
	subs r0, r0, r1
	str r0, [sp, #0x10]
	subs r5, r5, r1
	ldr r2, [sp, #0x34]
	subs r2, r2, r1
	str r2, [sp, #0x34]
_080CC10C:
	ldr r3, [sp, #0x14]
	cmp r3, #0
	ble _080CC15A
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _080CC14E
	cmp r6, #0
	ble _080CC13E
	mov r0, sl
	ldr r1, [sp, #0x64]
	adds r2, r6, #0
	bl _pow5mult
	str r0, [sp, #0x64]
	mov r0, sl
	ldr r1, [sp, #0x64]
	ldr r2, [sp, #0x5c]
	bl _multiply
	adds r4, r0, #0
	mov r0, sl
	ldr r1, [sp, #0x5c]
	bl _Bfree
	str r4, [sp, #0x5c]
_080CC13E:
	ldr r1, [sp, #0x14]
	subs r4, r1, r6
	cmp r4, #0
	beq _080CC15A
	mov r0, sl
	ldr r1, [sp, #0x5c]
	adds r2, r4, #0
	b _080CC154
_080CC14E:
	mov r0, sl
	ldr r1, [sp, #0x5c]
	ldr r2, [sp, #0x14]
_080CC154:
	bl _pow5mult
	str r0, [sp, #0x5c]
_080CC15A:
	mov r0, sl
	movs r1, #1
	bl _i2b
	str r0, [sp, #0x68]
	ldr r2, [sp, #0x38]
	cmp r2, #0
	ble _080CC174
	mov r0, sl
	ldr r1, [sp, #0x68]
	bl _pow5mult
	str r0, [sp, #0x68]
_080CC174:
	ldr r3, [sp, #0xc]
	cmp r3, #1
	bgt _080CC1B0
	ldr r0, [sp, #0x44]
	cmp r0, #0
	bne _080CC1AC
	ldr r0, _080CC1A4 @ =0x000FFFFF
	ldr r1, [sp, #0x40]
	ands r0, r1
	cmp r0, #0
	bne _080CC1AC
	ldr r0, _080CC1A8 @ =0x7FF00000
	ands r1, r0
	cmp r1, #0
	beq _080CC1AC
	ldr r1, [sp, #0x10]
	adds r1, #1
	str r1, [sp, #0x10]
	ldr r2, [sp, #0x34]
	adds r2, #1
	str r2, [sp, #0x34]
	movs r3, #1
	str r3, [sp, #0x3c]
	b _080CC1B0
	.align 2, 0
_080CC1A4: .4byte 0x000FFFFF
_080CC1A8: .4byte 0x7FF00000
_080CC1AC:
	movs r0, #0
	str r0, [sp, #0x3c]
_080CC1B0:
	ldr r1, [sp, #0x38]
	cmp r1, #0
	beq _080CC1DC
	ldr r2, [sp, #0x68]
	ldr r1, [r2, #0x10]
	subs r1, #1
	lsls r1, r1, #2
	adds r0, r2, #0
	adds r0, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	bl _hi0bits
	ldr r1, [sp, #0x34]
	adds r1, #0x20
	subs r1, r1, r0
	mov r8, r1
	movs r0, #0x1f
	mov r3, r8
	ands r3, r0
	mov r8, r3
	b _080CC1EA
_080CC1DC:
	ldr r0, [sp, #0x34]
	adds r0, #1
	mov r8, r0
	movs r0, #0x1f
	mov r1, r8
	ands r1, r0
	mov r8, r1
_080CC1EA:
	mov r2, r8
	cmp r2, #0
	beq _080CC1F6
	movs r0, #0x20
	subs r2, r0, r2
	mov r8, r2
_080CC1F6:
	mov r3, r8
	cmp r3, #4
	ble _080CC202
	movs r0, #4
	rsbs r0, r0, #0
	b _080CC20A
_080CC202:
	mov r3, r8
	cmp r3, #3
	bgt _080CC21A
	movs r0, #0x1c
_080CC20A:
	add r8, r0
	ldr r1, [sp, #0x10]
	add r1, r8
	str r1, [sp, #0x10]
	add r5, r8
	ldr r2, [sp, #0x34]
	add r2, r8
	str r2, [sp, #0x34]
_080CC21A:
	ldr r3, [sp, #0x10]
	cmp r3, #0
	ble _080CC22C
	mov r0, sl
	ldr r1, [sp, #0x5c]
	adds r2, r3, #0
	bl _lshift
	str r0, [sp, #0x5c]
_080CC22C:
	ldr r0, [sp, #0x34]
	cmp r0, #0
	ble _080CC23E
	mov r0, sl
	ldr r1, [sp, #0x68]
	ldr r2, [sp, #0x34]
	bl _lshift
	str r0, [sp, #0x68]
_080CC23E:
	ldr r1, [sp, #0x2c]
	cmp r1, #0
	beq _080CC27C
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl __mcmp
	cmp r0, #0
	bge _080CC27C
	ldr r2, [sp, #0x24]
	subs r2, #1
	str r2, [sp, #0x24]
	mov r0, sl
	ldr r1, [sp, #0x5c]
	movs r2, #0xa
	movs r3, #0
	bl _multadd
	str r0, [sp, #0x5c]
	ldr r3, [sp, #0x30]
	cmp r3, #0
	beq _080CC278
	mov r0, sl
	ldr r1, [sp, #0x64]
	movs r2, #0xa
	movs r3, #0
	bl _multadd
	str r0, [sp, #0x64]
_080CC278:
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x18]
_080CC27C:
	ldr r1, [sp, #0x18]
	cmp r1, #0
	bgt _080CC2C0
	ldr r2, [sp, #0xc]
	cmp r2, #2
	ble _080CC2C0
	cmp r1, #0
	blt _080CC2A6
	mov r0, sl
	ldr r1, [sp, #0x68]
	movs r2, #5
	movs r3, #0
	bl _multadd
	str r0, [sp, #0x68]
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl __mcmp
	cmp r0, #0
	bgt _080CC2AE
_080CC2A6:
	ldr r3, [sp, #0xa4]
	mvns r3, r3
	str r3, [sp, #0x24]
	b _080CC4F6
_080CC2AE:
	movs r0, #0x31
	mov r1, sb
	strb r0, [r1]
	movs r2, #1
	add sb, r2
	ldr r3, [sp, #0x24]
	adds r3, #1
	str r3, [sp, #0x24]
	b _080CC4F6
_080CC2C0:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bne _080CC2C8
	b _080CC43E
_080CC2C8:
	cmp r5, #0
	ble _080CC2D8
	mov r0, sl
	ldr r1, [sp, #0x64]
	adds r2, r5, #0
	bl _lshift
	str r0, [sp, #0x64]
_080CC2D8:
	ldr r1, [sp, #0x64]
	str r1, [sp, #0x60]
	ldr r2, [sp, #0x3c]
	cmp r2, #0
	beq _080CC30A
	ldr r1, [r1, #4]
	mov r0, sl
	bl _Balloc
	str r0, [sp, #0x64]
	adds r0, #0xc
	ldr r1, [sp, #0x60]
	adds r1, #0xc
	ldr r3, [sp, #0x60]
	ldr r2, [r3, #0x10]
	lsls r2, r2, #2
	adds r2, #8
	bl memcpy
	mov r0, sl
	ldr r1, [sp, #0x64]
	movs r2, #1
	bl _lshift
	str r0, [sp, #0x64]
_080CC30A:
	movs r0, #1
	mov r8, r0
	mov r1, r8
	ldr r2, [sp, #0x44]
	ands r2, r1
	str r2, [sp, #0x80]
	b _080CC360
_080CC318:
	mov r0, sl
	ldr r1, [sp, #0x5c]
	movs r2, #0xa
	movs r3, #0
	bl _multadd
	str r0, [sp, #0x5c]
	ldr r3, [sp, #0x60]
	ldr r0, [sp, #0x64]
	cmp r3, r0
	bne _080CC340
	mov r0, sl
	ldr r1, [sp, #0x64]
	movs r2, #0xa
	movs r3, #0
	bl _multadd
	str r0, [sp, #0x64]
	str r0, [sp, #0x60]
	b _080CC35C
_080CC340:
	mov r0, sl
	ldr r1, [sp, #0x60]
	movs r2, #0xa
	movs r3, #0
	bl _multadd
	str r0, [sp, #0x60]
	mov r0, sl
	ldr r1, [sp, #0x64]
	movs r2, #0xa
	movs r3, #0
	bl _multadd
	str r0, [sp, #0x64]
_080CC35C:
	movs r1, #1
	add r8, r1
_080CC360:
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl sub_80CB6F8
	adds r7, r0, #0
	adds r7, #0x30
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x60]
	bl __mcmp
	adds r4, r0, #0
	mov r0, sl
	ldr r1, [sp, #0x68]
	ldr r2, [sp, #0x64]
	bl __mdiff
	adds r5, r0, #0
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080CC394
	ldr r0, [sp, #0x5c]
	adds r1, r5, #0
	bl __mcmp
	adds r6, r0, #0
	b _080CC396
_080CC394:
	movs r6, #1
_080CC396:
	mov r0, sl
	adds r1, r5, #0
	bl _Bfree
	cmp r6, #0
	bne _080CC3C2
	ldr r2, [sp, #0xc]
	cmp r2, #0
	bne _080CC3C2
	ldr r3, [sp, #0x80]
	cmp r3, #0
	bne _080CC3C2
	cmp r7, #0x39
	beq _080CC414
	cmp r4, #0
	ble _080CC3B8
	adds r7, #1
_080CC3B8:
	mov r0, sb
	strb r7, [r0]
	movs r1, #1
	add sb, r1
	b _080CC4F6
_080CC3C2:
	cmp r4, #0
	blt _080CC3D6
	cmp r4, #0
	bne _080CC40C
	ldr r2, [sp, #0xc]
	cmp r2, #0
	bne _080CC40C
	ldr r3, [sp, #0x80]
	cmp r3, #0
	bne _080CC40C
_080CC3D6:
	cmp r6, #0
	ble _080CC406
	mov r0, sl
	ldr r1, [sp, #0x5c]
	movs r2, #1
	bl _lshift
	str r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl __mcmp
	adds r6, r0, #0
	cmp r6, #0
	bgt _080CC400
	cmp r6, #0
	bne _080CC406
	adds r0, r7, #0
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CC406
_080CC400:
	adds r7, #1
	cmp r7, #0x3a
	beq _080CC414
_080CC406:
	mov r2, sb
	strb r7, [r2]
	b _080CC4BE
_080CC40C:
	cmp r6, #0
	ble _080CC42C
	cmp r7, #0x39
	bne _080CC420
_080CC414:
	movs r0, #0x39
	mov r1, sb
	strb r0, [r1]
	movs r2, #1
	add sb, r2
	b _080CC494
_080CC420:
	adds r0, r7, #1
	mov r3, sb
	strb r0, [r3]
	movs r0, #1
	add sb, r0
	b _080CC4F6
_080CC42C:
	mov r1, sb
	strb r7, [r1]
	movs r2, #1
	add sb, r2
	ldr r3, [sp, #0x18]
	cmp r8, r3
	beq _080CC43C
	b _080CC318
_080CC43C:
	b _080CC470
_080CC43E:
	movs r0, #1
	mov r8, r0
	b _080CC456
_080CC444:
	mov r0, sl
	ldr r1, [sp, #0x5c]
	movs r2, #0xa
	movs r3, #0
	bl _multadd
	str r0, [sp, #0x5c]
	movs r1, #1
	add r8, r1
_080CC456:
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl sub_80CB6F8
	adds r7, r0, #0
	adds r7, #0x30
	mov r2, sb
	strb r7, [r2]
	movs r3, #1
	add sb, r3
	ldr r0, [sp, #0x18]
	cmp r8, r0
	blt _080CC444
_080CC470:
	mov r0, sl
	ldr r1, [sp, #0x5c]
	movs r2, #1
	bl _lshift
	str r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl __mcmp
	adds r4, r0, #0
	cmp r4, #0
	bgt _080CC494
	cmp r4, #0
	bne _080CC4D6
	movs r0, #1
	ands r7, r0
	cmp r7, #0
	beq _080CC4D6
_080CC494:
	movs r1, #1
	rsbs r1, r1, #0
	add sb, r1
	mov r2, sb
	ldrb r2, [r2]
	cmp r2, #0x39
	bne _080CC4B6
_080CC4A2:
	ldr r3, [sp, #0x74]
	cmp sb, r3
	beq _080CC4C4
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
	mov r1, sb
	ldrb r1, [r1]
	cmp r1, #0x39
	beq _080CC4A2
_080CC4B6:
	mov r2, sb
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
_080CC4BE:
	movs r3, #1
	add sb, r3
	b _080CC4F6
_080CC4C4:
	ldr r0, [sp, #0x24]
	adds r0, #1
	str r0, [sp, #0x24]
	movs r0, #0x31
	ldr r1, [sp, #0x74]
	strb r0, [r1]
	adds r1, #1
	mov sb, r1
	b _080CC4F6
_080CC4D6:
	movs r2, #1
	rsbs r2, r2, #0
	add sb, r2
	mov r3, sb
	ldrb r3, [r3]
	cmp r3, #0x30
	bne _080CC4F2
_080CC4E4:
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
	mov r1, sb
	ldrb r1, [r1]
	cmp r1, #0x30
	beq _080CC4E4
_080CC4F2:
	movs r2, #1
	add sb, r2
_080CC4F6:
	mov r0, sl
	ldr r1, [sp, #0x68]
	bl _Bfree
	ldr r3, [sp, #0x64]
	cmp r3, #0
	beq _080CC51E
	ldr r0, [sp, #0x60]
	cmp r0, #0
	beq _080CC516
	cmp r0, r3
	beq _080CC516
	mov r0, sl
	ldr r1, [sp, #0x60]
	bl _Bfree
_080CC516:
	mov r0, sl
	ldr r1, [sp, #0x64]
	bl _Bfree
_080CC51E:
	mov r0, sl
	ldr r1, [sp, #0x5c]
	bl _Bfree
	movs r0, #0
	mov r1, sb
	strb r0, [r1]
	ldr r0, [sp, #0x24]
	adds r0, #1
	ldr r2, [sp, #0xa8]
	str r0, [r2]
	ldr r3, [sp, #0xb0]
	cmp r3, #0
	beq _080CC53C
	str r1, [r3]
_080CC53C:
	ldr r0, [sp, #0x74]
sub_80CC53E:
	add sp, #0x84
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start fflush
fflush: @ 0x080CC54C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	cmp r4, #0
	bne _080CC568
	ldr r0, _080CC560 @ =_impure_ptr
	ldr r0, [r0]
	ldr r1, _080CC564 @ =fflush
	bl _fwalk
	b _080CC5DE
	.align 2, 0
_080CC560: .4byte _impure_ptr
_080CC564: .4byte fflush
_080CC568:
	ldr r0, [r4, #0x54]
	cmp r0, #0
	bne _080CC574
	ldr r0, _080CC5A8 @ =_impure_ptr
	ldr r0, [r0]
	str r0, [r4, #0x54]
_080CC574:
	ldr r1, [r4, #0x54]
	ldr r0, [r1, #0x38]
	cmp r0, #0
	bne _080CC582
	adds r0, r1, #0
	bl __sinit
_080CC582:
	movs r0, #0xc
	ldrsh r1, [r4, r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080CC5DC
	ldr r6, [r4, #0x10]
	cmp r6, #0
	beq _080CC5DC
	ldr r0, [r4]
	subs r5, r0, r6
	str r6, [r4]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080CC5BA
	ldr r0, [r4, #0x14]
	b _080CC5BC
	.align 2, 0
_080CC5A8: .4byte _impure_ptr
_080CC5AC:
	movs r0, #0x40
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	strh r0, [r4, #0xc]
	movs r0, #1
	rsbs r0, r0, #0
	b _080CC5DE
_080CC5BA:
	movs r0, #0
_080CC5BC:
	str r0, [r4, #8]
	cmp r5, #0
	ble _080CC5DC
_080CC5C2:
	ldr r0, [r4, #0x1c]
	ldr r3, [r4, #0x24]
	adds r1, r6, #0
	adds r2, r5, #0
	bl _call_via_r3
	adds r1, r0, #0
	cmp r1, #0
	ble _080CC5AC
	adds r6, r6, r1
	subs r5, r5, r1
	cmp r5, #0
	bgt _080CC5C2
_080CC5DC:
	movs r0, #0
_080CC5DE:
	pop {r4, r5, r6, pc}

	thumb_func_start std_findfp
std_findfp: @ 0x080CC5E0
	push {r4, lr}
	movs r4, #0
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	strh r1, [r0, #0xc]
	strh r2, [r0, #0xe]
	str r4, [r0, #0x10]
	str r4, [r0, #0x18]
	str r0, [r0, #0x1c]
	ldr r1, _080CC608 @ =__sread
	str r1, [r0, #0x20]
	ldr r1, _080CC60C @ =__swrite
	str r1, [r0, #0x24]
	ldr r1, _080CC610 @ =__sseek
	str r1, [r0, #0x28]
	ldr r1, _080CC614 @ =__sclose
	str r1, [r0, #0x2c]
	str r3, [r0, #0x54]
	pop {r4, pc}
	.align 2, 0
_080CC608: .4byte __sread
_080CC60C: .4byte __swrite
_080CC610: .4byte __sseek
_080CC614: .4byte __sclose

	thumb_func_start __sfmoreglue
__sfmoreglue: @ 0x080CC618
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	movs r1, #0x58
	adds r6, r5, #0
	muls r6, r1, r6
	adds r1, r6, #0
	adds r1, #0xc
	bl _malloc_r
	adds r4, r0, #0
	cmp r4, #0
	beq _080CC644
	adds r0, #0xc
	movs r1, #0
	str r1, [r4]
	str r5, [r4, #4]
	str r0, [r4, #8]
	adds r2, r6, #0
	bl memset
	adds r0, r4, #0
	b _080CC646
_080CC644:
	movs r0, #0
_080CC646:
	pop {r4, r5, r6, pc}

	thumb_func_start __sfp
__sfp: @ 0x080CC648
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x38]
	cmp r0, #0
	bne _080CC658
	adds r0, r5, #0
	bl __sinit
_080CC658:
	movs r0, #0xec
	lsls r0, r0, #1
	adds r4, r5, r0
	b _080CC662
_080CC660:
	ldr r4, [r4]
_080CC662:
	ldr r2, [r4, #8]
	ldr r0, [r4, #4]
	b _080CC672
_080CC668:
	movs r3, #0xc
	ldrsh r1, [r2, r3]
	cmp r1, #0
	beq _080CC694
	adds r2, #0x58
_080CC672:
	subs r0, #1
	cmp r0, #0
	bge _080CC668
	ldr r0, [r4]
	cmp r0, #0
	bne _080CC660
	adds r0, r5, #0
	movs r1, #4
	bl __sfmoreglue
	str r0, [r4]
	cmp r0, #0
	bne _080CC660
	movs r0, #0xc
	str r0, [r5]
	movs r0, #0
	b _080CC6B4
_080CC694:
	movs r0, #1
	strh r0, [r2, #0xc]
	str r1, [r2]
	str r1, [r2, #8]
	str r1, [r2, #4]
	str r1, [r2, #0x10]
	str r1, [r2, #0x14]
	str r1, [r2, #0x18]
	ldr r0, _080CC6B8 @ =0x0000FFFF
	strh r0, [r2, #0xe]
	str r1, [r2, #0x30]
	str r1, [r2, #0x34]
	str r1, [r2, #0x44]
	str r1, [r2, #0x48]
	str r5, [r2, #0x54]
	adds r0, r2, #0
_080CC6B4:
	pop {r4, r5, pc}
	.align 2, 0
_080CC6B8: .4byte 0x0000FFFF

	thumb_func_start _cleanup_r
_cleanup_r: @ 0x080CC6BC
	push {lr}
	ldr r1, _080CC6C8 @ =fflush
	bl _fwalk
	pop {pc}
	.align 2, 0
_080CC6C8: .4byte fflush

	thumb_func_start _cleanup
_cleanup: @ 0x080CC6CC
	push {lr}
	ldr r0, _080CC6D8 @ =_impure_ptr
	ldr r0, [r0]
	bl _cleanup_r
	pop {pc}
	.align 2, 0
_080CC6D8: .4byte _impure_ptr

	thumb_func_start __sinit
__sinit: @ 0x080CC6DC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _080CC738 @ =_cleanup_r
	str r0, [r5, #0x3c]
	movs r0, #1
	str r0, [r5, #0x38]
	movs r0, #0xf2
	lsls r0, r0, #1
	adds r4, r5, r0
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	adds r3, r5, #0
	bl std_findfp
	movs r1, #0x8f
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #9
	movs r2, #1
	adds r3, r5, #0
	bl std_findfp
	movs r1, #0xa5
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #0xa
	movs r2, #2
	adds r3, r5, #0
	bl std_findfp
	movs r0, #0xec
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0
	str r0, [r1]
	movs r0, #0xee
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #3
	str r0, [r1]
	movs r1, #0xf0
	lsls r1, r1, #1
	adds r0, r5, r1
	str r4, [r0]
	pop {r4, r5, pc}
	.align 2, 0
_080CC738: .4byte _cleanup_r

	thumb_func_start _free_r
_free_r: @ 0x080CC73C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	adds r4, r1, #0
	cmp r4, #0
	bne _080CC74E
	b _080CC8F2
_080CC74E:
	bl __malloc_lock
	adds r5, r4, #0
	subs r5, #8
	ldr r1, [r5, #4]
	movs r6, #2
	rsbs r6, r6, #0
	ands r6, r1
	adds r7, r5, r6
	ldr r4, [r7, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r4, r0
	ldr r0, _080CC7B0 @ =gUnknown_08E7EDB0
	mov ip, r0
	ldr r0, [r0, #8]
	cmp r7, r0
	bne _080CC7BC
	adds r6, r6, r4
	movs r4, #1
	ands r1, r4
	cmp r1, #0
	bne _080CC78A
	ldr r0, [r5]
	subs r5, r5, r0
	adds r6, r6, r0
	ldr r3, [r5, #0xc]
	ldr r2, [r5, #8]
	str r3, [r2, #0xc]
	str r2, [r3, #8]
_080CC78A:
	adds r0, r6, #0
	orrs r0, r4
	str r0, [r5, #4]
	mov r2, ip
	str r5, [r2, #8]
	ldr r0, _080CC7B4 @ =gUnknown_08E7F1B8
	ldr r0, [r0]
	cmp r6, r0
	blo _080CC7A6
	ldr r0, _080CC7B8 @ =gUnknown_08E7F1BC
	ldr r1, [r0]
	mov r0, sb
	bl _malloc_trim_r
_080CC7A6:
	mov r0, sb
	bl __malloc_unlock
	b _080CC8F2
	.align 2, 0
_080CC7B0: .4byte gUnknown_08E7EDB0
_080CC7B4: .4byte gUnknown_08E7F1B8
_080CC7B8: .4byte gUnknown_08E7F1BC
_080CC7BC:
	str r4, [r7, #4]
	movs r0, #0
	mov r8, r0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	bne _080CC7E8
	ldr r0, [r5]
	subs r5, r5, r0
	adds r6, r6, r0
	ldr r1, [r5, #8]
	mov r0, ip
	adds r0, #8
	cmp r1, r0
	bne _080CC7E0
	movs r2, #1
	mov r8, r2
	b _080CC7E8
_080CC7E0:
	ldr r3, [r5, #0xc]
	adds r2, r1, #0
	str r3, [r2, #0xc]
	str r2, [r3, #8]
_080CC7E8:
	adds r0, r7, r4
	ldr r0, [r0, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CC820
	adds r6, r6, r4
	ldr r1, [r7, #8]
	mov r0, r8
	cmp r0, #0
	bne _080CC818
	ldr r0, _080CC814 @ =gUnknown_08E7EDB8
	cmp r1, r0
	bne _080CC818
	movs r2, #1
	mov r8, r2
	str r5, [r1, #0xc]
	str r5, [r1, #8]
	str r1, [r5, #0xc]
	str r1, [r5, #8]
	b _080CC820
	.align 2, 0
_080CC814: .4byte gUnknown_08E7EDB8
_080CC818:
	ldr r3, [r7, #0xc]
	adds r2, r1, #0
	str r3, [r2, #0xc]
	str r2, [r3, #8]
_080CC820:
	movs r1, #1
	adds r0, r6, #0
	orrs r0, r1
	str r0, [r5, #4]
	adds r0, r5, r6
	str r6, [r0]
	mov r0, r8
	cmp r0, #0
	bne _080CC8EC
	ldr r0, _080CC850 @ =0x000001FF
	cmp r6, r0
	bhi _080CC858
	lsrs r4, r6, #3
	ldr r2, _080CC854 @ =gUnknown_08E7EDB0
	adds r0, r4, #0
	asrs r0, r0, #2
	lsls r1, r0
	ldr r0, [r2, #4]
	orrs r0, r1
	str r0, [r2, #4]
	lsls r0, r4, #3
	adds r3, r0, r2
	ldr r2, [r3, #8]
	b _080CC8E4
	.align 2, 0
_080CC850: .4byte 0x000001FF
_080CC854: .4byte gUnknown_08E7EDB0
_080CC858:
	lsrs r1, r6, #9
	cmp r1, #0
	bne _080CC862
	lsrs r4, r6, #3
	b _080CC8AA
_080CC862:
	cmp r1, #4
	bhi _080CC86E
	lsrs r0, r6, #6
	adds r4, r0, #0
	adds r4, #0x38
	b _080CC8AA
_080CC86E:
	cmp r1, #0x14
	bhi _080CC878
	adds r4, r1, #0
	adds r4, #0x5b
	b _080CC8AA
_080CC878:
	cmp r1, #0x54
	bhi _080CC884
	lsrs r0, r6, #0xc
	adds r4, r0, #0
	adds r4, #0x6e
	b _080CC8AA
_080CC884:
	movs r0, #0xaa
	lsls r0, r0, #1
	cmp r1, r0
	bhi _080CC894
	lsrs r0, r6, #0xf
	adds r4, r0, #0
	adds r4, #0x77
	b _080CC8AA
_080CC894:
	ldr r0, _080CC8A4 @ =0x00000554
	cmp r1, r0
	bhi _080CC8A8
	lsrs r0, r6, #0x12
	adds r4, r0, #0
	adds r4, #0x7c
	b _080CC8AA
	.align 2, 0
_080CC8A4: .4byte 0x00000554
_080CC8A8:
	movs r4, #0x7e
_080CC8AA:
	lsls r0, r4, #3
	ldr r7, _080CC8C8 @ =gUnknown_08E7EDB0
	adds r3, r0, r7
	ldr r2, [r3, #8]
	cmp r2, r3
	bne _080CC8CC
	adds r0, r4, #0
	asrs r0, r0, #2
	movs r1, #1
	lsls r1, r0
	ldr r0, [r7, #4]
	orrs r0, r1
	str r0, [r7, #4]
	b _080CC8E4
	.align 2, 0
_080CC8C8: .4byte gUnknown_08E7EDB0
_080CC8CC:
	ldr r0, [r2, #4]
	movs r1, #4
	rsbs r1, r1, #0
	b _080CC8DC
_080CC8D4:
	ldr r2, [r2, #8]
	cmp r2, r3
	beq _080CC8E2
	ldr r0, [r2, #4]
_080CC8DC:
	ands r0, r1
	cmp r6, r0
	blo _080CC8D4
_080CC8E2:
	ldr r3, [r2, #0xc]
_080CC8E4:
	str r3, [r5, #0xc]
	str r2, [r5, #8]
	str r5, [r3, #8]
	str r5, [r2, #0xc]
_080CC8EC:
	mov r0, sb
	bl __malloc_unlock
_080CC8F2:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start _malloc_trim_r
_malloc_trim_r: @ 0x080CC8FC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r4, r1, #0
	bl __malloc_lock
	ldr r0, _080CC984 @ =gUnknown_08E7EDB0
	mov r8, r0
	ldr r0, [r0, #8]
	ldr r6, [r0, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r6, r0
	subs r4, r6, r4
	movs r5, #0x80
	lsls r5, r5, #5
	ldr r1, _080CC988 @ =0x00000FEF
	adds r4, r4, r1
	adds r0, r4, #0
	adds r1, r5, #0
	bl __udivsi3
	subs r0, #1
	lsls r4, r0, #0xc
	cmp r4, r5
	blt _080CC97A
	adds r0, r7, #0
	movs r1, #0
	bl _sbrk_r
	adds r2, r0, #0
	mov r1, r8
	ldr r0, [r1, #8]
	adds r0, r0, r6
	cmp r2, r0
	bne _080CC97A
	rsbs r1, r4, #0
	adds r0, r7, #0
	bl _sbrk_r
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _080CC994
	adds r0, r7, #0
	movs r1, #0
	bl _sbrk_r
	adds r2, r0, #0
	mov r0, r8
	ldr r3, [r0, #8]
	subs r6, r2, r3
	cmp r6, #0xf
	ble _080CC97A
	ldr r1, _080CC98C @ =gUnknown_08E7F1CC
	ldr r0, _080CC990 @ =gUnknown_08E7F1C0
	ldr r0, [r0]
	subs r0, r2, r0
	str r0, [r1]
	movs r0, #1
	orrs r6, r0
	str r6, [r3, #4]
_080CC97A:
	adds r0, r7, #0
	bl __malloc_unlock
	movs r0, #0
	b _080CC9B0
	.align 2, 0
_080CC984: .4byte gUnknown_08E7EDB0
_080CC988: .4byte 0x00000FEF
_080CC98C: .4byte gUnknown_08E7F1CC
_080CC990: .4byte gUnknown_08E7F1C0
_080CC994:
	mov r1, r8
	ldr r2, [r1, #8]
	subs r0, r6, r4
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #4]
	ldr r1, _080CC9B8 @ =gUnknown_08E7F1CC
	ldr r0, [r1]
	subs r0, r0, r4
	str r0, [r1]
	adds r0, r7, #0
	bl __malloc_unlock
	movs r0, #1
_080CC9B0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080CC9B8: .4byte gUnknown_08E7F1CC

	thumb_func_start __sfvwrite
__sfvwrite: @ 0x080CC9BC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	mov sl, r1
	ldr r6, [r1, #8]
	cmp r6, #0
	bne _080CC9D4
	b _080CCBCA
_080CC9D4:
	movs r0, #8
	ldrh r1, [r5, #0xc]
	ands r0, r1
	cmp r0, #0
	beq _080CC9E4
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080CC9F0
_080CC9E4:
	adds r0, r5, #0
	bl __swsetup
	cmp r0, #0
	beq _080CC9F0
	b _080CCBD6
_080CC9F0:
	mov r2, sl
	ldr r2, [r2]
	mov r8, r2
	movs r6, #0
	ldrh r1, [r5, #0xc]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080CCA44
_080CCA02:
	ldr r0, [r5, #0x1c]
	ldr r3, [r5, #0x24]
	cmp r6, #0
	bne _080CCA18
_080CCA0A:
	mov r1, r8
	ldr r7, [r1]
	ldr r6, [r1, #4]
	movs r2, #8
	add r8, r2
	cmp r6, #0
	beq _080CCA0A
_080CCA18:
	adds r2, r6, #0
	movs r1, #0x80
	lsls r1, r1, #3
	cmp r6, r1
	bls _080CCA24
	adds r2, r1, #0
_080CCA24:
	adds r1, r7, #0
	bl _call_via_r3
	adds r4, r0, #0
	cmp r4, #0
	bgt _080CCA32
	b _080CCBCE
_080CCA32:
	adds r7, r7, r4
	subs r6, r6, r4
	mov r1, sl
	ldr r0, [r1, #8]
	subs r0, r0, r4
	str r0, [r1, #8]
	cmp r0, #0
	bne _080CCA02
	b _080CCBCA
_080CCA44:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080CCAFE
_080CCA4C:
	ldrh r1, [r5, #0xc]
	ldr r0, [r5, #8]
	ldr r3, [r5]
	cmp r6, #0
	bne _080CCA64
_080CCA56:
	mov r2, r8
	ldr r7, [r2]
	ldr r6, [r2, #4]
	movs r2, #8
	add r8, r2
	cmp r6, #0
	beq _080CCA56
_080CCA64:
	adds r4, r0, #0
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080CCA92
	cmp r6, r4
	bhs _080CCA78
	adds r4, r6, #0
_080CCA78:
	adds r0, r3, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memmove
	ldr r0, [r5, #8]
	subs r0, r0, r4
	str r0, [r5, #8]
	ldr r0, [r5]
	adds r0, r0, r4
	str r0, [r5]
	adds r4, r6, #0
	b _080CCAEC
_080CCA92:
	ldr r0, [r5, #0x10]
	cmp r3, r0
	bls _080CCABA
	cmp r6, r4
	bls _080CCABA
	adds r0, r3, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memmove
	ldr r0, [r5]
	adds r0, r0, r4
	str r0, [r5]
	adds r0, r5, #0
	bl fflush
	cmp r0, #0
	beq _080CCAB8
	b _080CCBCE
_080CCAB8:
	b _080CCAEC
_080CCABA:
	ldr r4, [r5, #0x14]
	cmp r6, r4
	blo _080CCAD4
	ldr r0, [r5, #0x1c]
	ldr r3, [r5, #0x24]
	adds r1, r7, #0
	adds r2, r4, #0
	bl _call_via_r3
	adds r4, r0, #0
	cmp r4, #0
	ble _080CCBCE
	b _080CCAEC
_080CCAD4:
	adds r4, r6, #0
	adds r0, r3, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memmove
	ldr r0, [r5, #8]
	subs r0, r0, r4
	str r0, [r5, #8]
	ldr r0, [r5]
	adds r0, r0, r4
	str r0, [r5]
_080CCAEC:
	adds r7, r7, r4
	subs r6, r6, r4
	mov r1, sl
	ldr r0, [r1, #8]
	subs r0, r0, r4
	str r0, [r1, #8]
	cmp r0, #0
	bne _080CCA4C
	b _080CCBCA
_080CCAFE:
	movs r2, #0
	str r2, [sp]
_080CCB02:
	cmp r6, #0
	bne _080CCB18
	movs r0, #0
	str r0, [sp]
_080CCB0A:
	mov r1, r8
	ldr r7, [r1]
	ldr r6, [r1, #4]
	movs r2, #8
	add r8, r2
	cmp r6, #0
	beq _080CCB0A
_080CCB18:
	ldr r0, [sp]
	cmp r0, #0
	bne _080CCB3C
	adds r0, r7, #0
	movs r1, #0xa
	adds r2, r6, #0
	bl memchr
	adds r1, r0, #0
	cmp r1, #0
	beq _080CCB34
	subs r0, r7, #1
	subs r1, r1, r0
	b _080CCB36
_080CCB34:
	adds r1, r6, #1
_080CCB36:
	mov sb, r1
	movs r2, #1
	str r2, [sp]
_080CCB3C:
	mov r2, sb
	cmp sb, r6
	bls _080CCB44
	adds r2, r6, #0
_080CCB44:
	ldr r0, [r5, #8]
	ldr r1, [r5, #0x14]
	adds r4, r0, r1
	ldr r0, [r5, #0x10]
	ldr r3, [r5]
	cmp r3, r0
	bls _080CCB72
	cmp r2, r4
	ble _080CCB72
	adds r0, r3, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memmove
	ldr r0, [r5]
	adds r0, r0, r4
	str r0, [r5]
	adds r0, r5, #0
	bl fflush
	cmp r0, #0
	bne _080CCBCE
	b _080CCBA2
_080CCB72:
	adds r4, r1, #0
	cmp r2, r4
	blt _080CCB8C
	ldr r0, [r5, #0x1c]
	ldr r3, [r5, #0x24]
	adds r1, r7, #0
	adds r2, r4, #0
	bl _call_via_r3
	adds r4, r0, #0
	cmp r4, #0
	ble _080CCBCE
	b _080CCBA2
_080CCB8C:
	adds r4, r2, #0
	adds r0, r3, #0
	adds r1, r7, #0
	bl memmove
	ldr r0, [r5, #8]
	subs r0, r0, r4
	str r0, [r5, #8]
	ldr r0, [r5]
	adds r0, r0, r4
	str r0, [r5]
_080CCBA2:
	mov r0, sb
	subs r0, r0, r4
	mov sb, r0
	cmp r0, #0
	bne _080CCBBA
	adds r0, r5, #0
	bl fflush
	cmp r0, #0
	bne _080CCBCE
	movs r1, #0
	str r1, [sp]
_080CCBBA:
	adds r7, r7, r4
	subs r6, r6, r4
	mov r2, sl
	ldr r0, [r2, #8]
	subs r0, r0, r4
	str r0, [r2, #8]
	cmp r0, #0
	bne _080CCB02
_080CCBCA:
	movs r0, #0
	b _080CCBDA
_080CCBCE:
	movs r0, #0x40
	ldrh r1, [r5, #0xc]
	orrs r0, r1
	strh r0, [r5, #0xc]
_080CCBD6:
	movs r0, #1
	rsbs r0, r0, #0
_080CCBDA:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start _fwalk
_fwalk: @ 0x080CCBE8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r1
	movs r7, #0
	movs r1, #0xec
	lsls r1, r1, #1
	adds r6, r0, r1
	cmp r6, #0
	beq _080CCC20
_080CCBFC:
	ldr r5, [r6, #8]
	ldr r4, [r6, #4]
	b _080CCC14
_080CCC02:
	movs r1, #0xc
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _080CCC12
	adds r0, r5, #0
	bl _call_via_r8
	orrs r7, r0
_080CCC12:
	adds r5, #0x58
_080CCC14:
	subs r4, #1
	cmp r4, #0
	bge _080CCC02
	ldr r6, [r6]
	cmp r6, #0
	bne _080CCBFC
_080CCC20:
	adds r0, r7, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start _setlocale_r
_setlocale_r: @ 0x080CCC28
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	cmp r4, #0
	beq _080CCC5C
	ldr r1, _080CCC50 @ =gUnknown_08E2E868
	adds r0, r4, #0
	bl strcmp
	cmp r0, #0
	beq _080CCC58
	ldr r1, _080CCC54 @ =gUnknown_08E2E860
	adds r0, r4, #0
	bl strcmp
	cmp r0, #0
	beq _080CCC58
	movs r0, #0
	b _080CCC5E
	.align 2, 0
_080CCC50: .4byte gUnknown_08E2E868
_080CCC54: .4byte gUnknown_08E2E860
_080CCC58:
	str r6, [r5, #0x30]
	str r4, [r5, #0x34]
_080CCC5C:
	ldr r0, _080CCC60 @ =gUnknown_08E2E868
_080CCC5E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080CCC60: .4byte gUnknown_08E2E868

	thumb_func_start _localeconv_r
_localeconv_r: @ 0x080CCC64
	ldr r0, _080CCC68 @ =gUnknown_08E2E830
	bx lr
	.align 2, 0
_080CCC68: .4byte gUnknown_08E2E830

	thumb_func_start setlocale
setlocale: @ 0x080CCC6C
	push {lr}
	adds r3, r0, #0
	adds r2, r1, #0
	ldr r0, _080CCC80 @ =_impure_ptr
	ldr r0, [r0]
	adds r1, r3, #0
	bl _setlocale_r
	pop {pc}
	.align 2, 0
_080CCC80: .4byte _impure_ptr

	thumb_func_start localeconv
localeconv: @ 0x080CCC84
	push {lr}
	ldr r0, _080CCC90 @ =_impure_ptr
	ldr r0, [r0]
	bl _localeconv_r
	pop {pc}
	.align 2, 0
_080CCC90: .4byte _impure_ptr

	thumb_func_start __smakebuf
__smakebuf: @ 0x080CCC94
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	adds r4, r0, #0
	movs r0, #2
	ldrh r1, [r4, #0xc]
	ands r0, r1
	cmp r0, #0
	bne _080CCD2A
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	cmp r0, #0
	blt _080CCCBC
	ldr r0, [r4, #0x54]
	movs r2, #0xe
	ldrsh r1, [r4, r2]
	mov r2, sp
	bl _fstat_r
	cmp r0, #0
	bge _080CCCCE
_080CCCBC:
	movs r7, #0
	movs r6, #0x80
	lsls r6, r6, #3
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r1, #0
	ldrh r2, [r4, #0xc]
	orrs r0, r2
	b _080CCD12
_080CCCCE:
	movs r7, #0
	ldr r1, [sp, #4]
	movs r0, #0xf0
	lsls r0, r0, #8
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r1, r0
	bne _080CCCE2
	movs r7, #1
_080CCCE2:
	movs r6, #0x80
	lsls r6, r6, #3
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r1, r0
	bne _080CCD08
	ldr r1, [r4, #0x28]
	ldr r0, _080CCD04 @ =__sseek
	cmp r1, r0
	bne _080CCD08
	adds r0, r6, #0
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	strh r0, [r4, #0xc]
	str r6, [r4, #0x4c]
	b _080CCD14
	.align 2, 0
_080CCD04: .4byte __sseek
_080CCD08:
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r2, #0
	ldrh r1, [r4, #0xc]
	orrs r0, r1
_080CCD12:
	strh r0, [r4, #0xc]
_080CCD14:
	ldr r0, [r4, #0x54]
	adds r1, r6, #0
	bl _malloc_r
	adds r2, r0, #0
	cmp r2, #0
	bne _080CCD38
	movs r0, #2
	ldrh r2, [r4, #0xc]
	orrs r0, r2
	strh r0, [r4, #0xc]
_080CCD2A:
	adds r0, r4, #0
	adds r0, #0x43
	str r0, [r4]
	str r0, [r4, #0x10]
	movs r0, #1
	str r0, [r4, #0x14]
	b _080CCD66
_080CCD38:
	ldr r1, [r4, #0x54]
	ldr r0, _080CCD6C @ =_cleanup_r
	str r0, [r1, #0x3c]
	movs r0, #0x80
	movs r5, #0
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	strh r0, [r4, #0xc]
	str r2, [r4]
	str r2, [r4, #0x10]
	str r6, [r4, #0x14]
	cmp r7, #0
	beq _080CCD66
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	bl isatty
	cmp r0, #0
	beq _080CCD66
	movs r0, #1
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	strh r0, [r4, #0xc]
_080CCD66:
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080CCD6C: .4byte _cleanup_r

	thumb_func_start malloc_extend_top
malloc_extend_top: @ 0x080CCD70
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	str r0, [sp]
	ldr r0, _080CCDE4 @ =gUnknown_08E7EDB0
	ldr r0, [r0, #8]
	mov r8, r0
	ldr r7, [r0, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r7, r0
	mov r2, r8
	adds r4, r2, r7
	ldr r0, _080CCDE8 @ =gUnknown_08E7F1BC
	ldr r0, [r0]
	adds r1, r1, r0
	adds r6, r1, #0
	adds r6, #0x10
	ldr r3, _080CCDEC @ =gUnknown_08E7F1C0
	mov sl, r3
	ldr r0, [r3]
	movs r2, #1
	rsbs r2, r2, #0
	mov sb, r2
	cmp r0, sb
	beq _080CCDB2
	ldr r3, _080CCDF0 @ =0x0000100F
	adds r6, r1, r3
	ldr r0, _080CCDF4 @ =0xFFFFF000
	ands r6, r0
_080CCDB2:
	ldr r0, [sp]
	adds r1, r6, #0
	bl _sbrk_r
	adds r5, r0, #0
	cmp r5, sb
	beq _080CCEB4
	cmp r5, r4
	bhs _080CCDCA
	ldr r0, _080CCDE4 @ =gUnknown_08E7EDB0
	cmp r8, r0
	bne _080CCEB4
_080CCDCA:
	ldr r1, _080CCDF8 @ =gUnknown_08E7F1CC
	ldr r0, [r1]
	adds r2, r0, r6
	str r2, [r1]
	cmp r5, r4
	bne _080CCDFC
	adds r2, r6, r7
	ldr r3, _080CCDE4 @ =gUnknown_08E7EDB0
	ldr r1, [r3, #8]
	movs r0, #1
	orrs r2, r0
	str r2, [r1, #4]
	b _080CCE9C
	.align 2, 0
_080CCDE4: .4byte gUnknown_08E7EDB0
_080CCDE8: .4byte gUnknown_08E7F1BC
_080CCDEC: .4byte gUnknown_08E7F1C0
_080CCDF0: .4byte 0x0000100F
_080CCDF4: .4byte 0xFFFFF000
_080CCDF8: .4byte gUnknown_08E7F1CC
_080CCDFC:
	mov r3, sl
	ldr r0, [r3]
	cmp r0, sb
	bne _080CCE08
	str r5, [r3]
	b _080CCE0E
_080CCE08:
	subs r0, r5, r4
	adds r0, r2, r0
	str r0, [r1]
_080CCE0E:
	adds r1, r5, #0
	adds r1, #8
	movs r0, #7
	ands r1, r0
	cmp r1, #0
	beq _080CCE22
	movs r0, #8
	subs r4, r0, r1
	adds r5, r5, r4
	b _080CCE24
_080CCE22:
	movs r4, #0
_080CCE24:
	adds r0, r5, r6
	movs r1, #0x80
	lsls r1, r1, #5
	subs r1, #1
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #5
	subs r0, r1, r0
	adds r4, r4, r0
	ldr r0, [sp]
	adds r1, r4, #0
	bl _sbrk_r
	adds r2, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _080CCEB4
	ldr r1, _080CCE6C @ =gUnknown_08E7F1CC
	ldr r0, [r1]
	adds r0, r0, r4
	str r0, [r1]
	ldr r1, _080CCE70 @ =gUnknown_08E7EDB0
	str r5, [r1, #8]
	subs r0, r2, r5
	adds r2, r0, r4
	movs r3, #1
	orrs r2, r3
	str r2, [r5, #4]
	cmp r8, r1
	beq _080CCE9C
	cmp r7, #0xf
	bhi _080CCE74
	str r3, [r5, #4]
	b _080CCEB4
	.align 2, 0
_080CCE6C: .4byte gUnknown_08E7F1CC
_080CCE70: .4byte gUnknown_08E7EDB0
_080CCE74:
	subs r7, #0xc
	movs r0, #8
	rsbs r0, r0, #0
	ands r7, r0
	mov r2, r8
	ldr r0, [r2, #4]
	ands r0, r3
	orrs r0, r7
	str r0, [r2, #4]
	adds r1, r2, r7
	movs r0, #5
	str r0, [r1, #4]
	str r0, [r1, #8]
	cmp r7, #0xf
	bls _080CCE9C
	mov r1, r8
	adds r1, #8
	ldr r0, [sp]
	bl _free_r
_080CCE9C:
	ldr r0, _080CCEC0 @ =gUnknown_08E7F1CC
	ldr r2, _080CCEC4 @ =gUnknown_08E7F1C4
	ldr r1, [r0]
	ldr r0, [r2]
	cmp r1, r0
	bls _080CCEAA
	str r1, [r2]
_080CCEAA:
	ldr r2, _080CCEC8 @ =gUnknown_08E7F1C8
	ldr r0, [r2]
	cmp r1, r0
	bls _080CCEB4
	str r1, [r2]
_080CCEB4:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080CCEC0: .4byte gUnknown_08E7F1CC
_080CCEC4: .4byte gUnknown_08E7F1C4
_080CCEC8: .4byte gUnknown_08E7F1C8

	thumb_func_start _malloc_r
_malloc_r: @ 0x080CCECC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp]
	adds r1, #0xb
	cmp r1, #0x16
	ble _080CCEEE
	movs r0, #8
	rsbs r0, r0, #0
	mov r8, r0
	mov r2, r8
	ands r2, r1
	mov r8, r2
	b _080CCEF2
_080CCEEE:
	movs r3, #0x10
	mov r8, r3
_080CCEF2:
	ldr r0, [sp]
	bl __malloc_lock
	ldr r0, _080CCF38 @ =0x000001F7
	cmp r8, r0
	bhi _080CCF46
	mov r4, r8
	lsrs r4, r4, #3
	mov ip, r4
	ldr r0, _080CCF3C @ =gUnknown_08E7EDB0
	mov r7, r8
	adds r2, r7, r0
	ldr r5, [r2, #0xc]
	cmp r5, r2
	bne _080CCF1A
	adds r2, r5, #0
	adds r2, #8
	ldr r5, [r2, #0xc]
	cmp r5, r2
	beq _080CCF40
_080CCF1A:
	ldr r2, [r5, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r2, r0
	ldr r6, [r5, #0xc]
	ldr r4, [r5, #8]
	str r6, [r4, #0xc]
	str r4, [r6, #8]
	adds r2, r5, r2
	ldr r0, [r2, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #4]
	b _080CD272
	.align 2, 0
_080CCF38: .4byte 0x000001F7
_080CCF3C: .4byte gUnknown_08E7EDB0
_080CCF40:
	movs r0, #2
	add ip, r0
	b _080CCFF2
_080CCF46:
	mov r2, r8
	lsrs r1, r2, #9
	cmp r1, #0
	bne _080CCF52
	lsrs r2, r2, #3
	b _080CCFA2
_080CCF52:
	cmp r1, #4
	bhi _080CCF60
	mov r3, r8
	lsrs r0, r3, #6
	adds r0, #0x38
	mov ip, r0
	b _080CCFA4
_080CCF60:
	cmp r1, #0x14
	bhi _080CCF6A
	adds r1, #0x5b
	mov ip, r1
	b _080CCFA4
_080CCF6A:
	cmp r1, #0x54
	bhi _080CCF78
	mov r4, r8
	lsrs r0, r4, #0xc
	adds r0, #0x6e
	mov ip, r0
	b _080CCFA4
_080CCF78:
	movs r0, #0xaa
	lsls r0, r0, #1
	cmp r1, r0
	bhi _080CCF8A
	mov r7, r8
	lsrs r0, r7, #0xf
	adds r0, #0x77
	mov ip, r0
	b _080CCFA4
_080CCF8A:
	ldr r0, _080CCF9C @ =0x00000554
	cmp r1, r0
	bhi _080CCFA0
	mov r1, r8
	lsrs r0, r1, #0x12
	adds r0, #0x7c
	mov ip, r0
	b _080CCFA4
	.align 2, 0
_080CCF9C: .4byte 0x00000554
_080CCFA0:
	movs r2, #0x7e
_080CCFA2:
	mov ip, r2
_080CCFA4:
	mov r3, ip
	lsls r0, r3, #3
	ldr r1, _080CCFC8 @ =gUnknown_08E7EDB0
	adds r4, r0, r1
	ldr r5, [r4, #0xc]
	cmp r5, r4
	beq _080CCFEE
	ldr r1, [r5, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r1, r0
	mov r7, r8
	subs r3, r1, r7
	cmp r3, #0xf
	ble _080CCFCC
	adds r0, #3
	add ip, r0
	b _080CCFEE
	.align 2, 0
_080CCFC8: .4byte gUnknown_08E7EDB0
_080CCFCC:
	cmp r3, #0
	blt _080CCFD2
	b _080CD20C
_080CCFD2:
	ldr r5, [r5, #0xc]
	cmp r5, r4
	beq _080CCFEE
	ldr r1, [r5, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r1, r0
	mov r2, r8
	subs r3, r1, r2
	cmp r3, #0xf
	ble _080CCFCC
	movs r3, #1
	rsbs r3, r3, #0
	add ip, r3
_080CCFEE:
	movs r4, #1
	add ip, r4
_080CCFF2:
	ldr r0, _080CD030 @ =gUnknown_08E7EDB8
	ldr r5, [r0, #8]
	mov sl, r0
	cmp r5, sl
	bne _080CCFFE
	b _080CD100
_080CCFFE:
	ldr r1, [r5, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r1, r0
	mov r7, r8
	subs r3, r1, r7
	cmp r3, #0xf
	ble _080CD034
	adds r2, r5, r7
	movs r1, #1
	adds r0, r7, #0
	orrs r0, r1
	str r0, [r5, #4]
	mov r4, sl
	str r2, [r4, #0xc]
	str r2, [r4, #8]
	str r4, [r2, #0xc]
	str r4, [r2, #8]
	adds r0, r3, #0
	orrs r0, r1
	str r0, [r2, #4]
	adds r0, r2, r3
	str r3, [r0]
	b _080CD272
	.align 2, 0
_080CD030: .4byte gUnknown_08E7EDB8
_080CD034:
	mov r7, sl
	str r7, [r7, #0xc]
	str r7, [r7, #8]
	cmp r3, #0
	blt _080CD04A
	adds r2, r5, r1
	ldr r0, [r2, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #4]
	b _080CD272
_080CD04A:
	ldr r0, _080CD06C @ =0x000001FF
	cmp r1, r0
	bhi _080CD070
	lsrs r2, r1, #3
	mov r3, sl
	subs r3, #8
	adds r0, r2, #0
	asrs r0, r0, #2
	movs r1, #1
	lsls r1, r0
	ldr r0, [r3, #4]
	orrs r0, r1
	str r0, [r3, #4]
	lsls r0, r2, #3
	adds r6, r0, r3
	ldr r4, [r6, #8]
	b _080CD0F8
	.align 2, 0
_080CD06C: .4byte 0x000001FF
_080CD070:
	lsrs r2, r1, #9
	cmp r2, #0
	bne _080CD07A
	lsrs r2, r1, #3
	b _080CD0BE
_080CD07A:
	cmp r2, #4
	bhi _080CD086
	lsrs r0, r1, #6
	adds r2, r0, #0
	adds r2, #0x38
	b _080CD0BE
_080CD086:
	cmp r2, #0x14
	bhi _080CD08E
	adds r2, #0x5b
	b _080CD0BE
_080CD08E:
	cmp r2, #0x54
	bhi _080CD09A
	lsrs r0, r1, #0xc
	adds r2, r0, #0
	adds r2, #0x6e
	b _080CD0BE
_080CD09A:
	movs r0, #0xaa
	lsls r0, r0, #1
	cmp r2, r0
	bhi _080CD0AA
	lsrs r0, r1, #0xf
	adds r2, r0, #0
	adds r2, #0x77
	b _080CD0BE
_080CD0AA:
	ldr r0, _080CD0B8 @ =0x00000554
	cmp r2, r0
	bhi _080CD0BC
	lsrs r0, r1, #0x12
	adds r2, r0, #0
	adds r2, #0x7c
	b _080CD0BE
	.align 2, 0
_080CD0B8: .4byte 0x00000554
_080CD0BC:
	movs r2, #0x7e
_080CD0BE:
	lsls r0, r2, #3
	ldr r3, _080CD0DC @ =gUnknown_08E7EDB0
	adds r6, r0, r3
	ldr r4, [r6, #8]
	cmp r4, r6
	bne _080CD0E0
	adds r0, r2, #0
	asrs r0, r0, #2
	movs r1, #1
	lsls r1, r0
	ldr r7, _080CD0DC @ =gUnknown_08E7EDB0
	ldr r0, [r7, #4]
	orrs r0, r1
	str r0, [r7, #4]
	b _080CD0F8
	.align 2, 0
_080CD0DC: .4byte gUnknown_08E7EDB0
_080CD0E0:
	ldr r0, [r4, #4]
	movs r2, #4
	rsbs r2, r2, #0
	b _080CD0F0
_080CD0E8:
	ldr r4, [r4, #8]
	cmp r4, r6
	beq _080CD0F6
	ldr r0, [r4, #4]
_080CD0F0:
	ands r0, r2
	cmp r1, r0
	blo _080CD0E8
_080CD0F6:
	ldr r6, [r4, #0xc]
_080CD0F8:
	str r6, [r5, #0xc]
	str r4, [r5, #8]
	str r5, [r6, #8]
	str r5, [r4, #0xc]
_080CD100:
	mov r0, ip
	cmp r0, #0
	bge _080CD108
	adds r0, #3
_080CD108:
	asrs r0, r0, #2
	movs r6, #1
	lsls r6, r0
	ldr r0, _080CD12C @ =gUnknown_08E7EDB0
	ldr r1, [r0, #4]
	cmp r6, r1
	bhi _080CD1CA
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _080CD13E
	movs r0, #4
	rsbs r0, r0, #0
	mov r2, ip
	ands r0, r2
	adds r0, #4
	mov ip, r0
	b _080CD134
	.align 2, 0
_080CD12C: .4byte gUnknown_08E7EDB0
_080CD130:
	movs r3, #4
	add ip, r3
_080CD134:
	lsls r6, r6, #1
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080CD130
_080CD13E:
	ldr r4, _080CD1BC @ =gUnknown_08E7EDB0
	mov sb, r4
_080CD142:
	mov r7, ip
	str r7, [sp, #4]
	mov r1, ip
	lsls r0, r1, #3
	mov r3, sb
	adds r2, r0, r3
	adds r4, r2, #0
_080CD150:
	ldr r5, [r4, #0xc]
	cmp r5, r4
	beq _080CD170
	movs r0, #4
	rsbs r0, r0, #0
_080CD15A:
	ldr r1, [r5, #4]
	ands r1, r0
	mov r7, r8
	subs r3, r1, r7
	cmp r3, #0xf
	bgt _080CD220
	cmp r3, #0
	bge _080CD248
	ldr r5, [r5, #0xc]
	cmp r5, r4
	bne _080CD15A
_080CD170:
	adds r4, #8
	movs r0, #1
	add ip, r0
	mov r0, ip
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080CD150
_080CD180:
	ldr r0, [sp, #4]
	ands r0, r1
	cmp r0, #0
	beq _080CD1C0
	ldr r3, [sp, #4]
	subs r3, #1
	str r3, [sp, #4]
	subs r2, #8
	ldr r0, [r2, #8]
	cmp r0, r2
	beq _080CD180
_080CD196:
	lsls r6, r6, #1
	mov r4, sb
	ldr r1, [r4, #4]
	cmp r6, r1
	bhi _080CD1CA
	cmp r6, #0
	beq _080CD1CA
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _080CD142
_080CD1AC:
	movs r7, #4
	add ip, r7
	lsls r6, r6, #1
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080CD1AC
	b _080CD142
	.align 2, 0
_080CD1BC: .4byte gUnknown_08E7EDB0
_080CD1C0:
	mov r1, sb
	ldr r0, [r1, #4]
	bics r0, r6
	str r0, [r1, #4]
	b _080CD196
_080CD1CA:
	ldr r2, _080CD208 @ =gUnknown_08E7EDB0
	ldr r0, [r2, #8]
	ldr r0, [r0, #4]
	movs r4, #4
	rsbs r4, r4, #0
	ands r0, r4
	mov r7, r8
	subs r3, r0, r7
	cmp r0, r8
	blo _080CD1E2
	cmp r3, #0xf
	bgt _080CD25C
_080CD1E2:
	ldr r0, [sp]
	mov r1, r8
	bl malloc_extend_top
	ldr r1, _080CD208 @ =gUnknown_08E7EDB0
	ldr r0, [r1, #8]
	ldr r0, [r0, #4]
	ands r0, r4
	mov r2, r8
	subs r3, r0, r2
	cmp r0, r8
	blo _080CD1FE
	cmp r3, #0xf
	bgt _080CD25C
_080CD1FE:
	ldr r0, [sp]
	bl __malloc_unlock
	movs r0, #0
	b _080CD27C
	.align 2, 0
_080CD208: .4byte gUnknown_08E7EDB0
_080CD20C:
	ldr r6, [r5, #0xc]
	ldr r4, [r5, #8]
	str r6, [r4, #0xc]
	str r4, [r6, #8]
	adds r2, r5, r1
	ldr r0, [r2, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #4]
	b _080CD272
_080CD220:
	mov r4, r8
	adds r2, r5, r4
	movs r1, #1
	orrs r4, r1
	str r4, [r5, #4]
	ldr r6, [r5, #0xc]
	ldr r4, [r5, #8]
	str r6, [r4, #0xc]
	str r4, [r6, #8]
	mov r7, sl
	str r2, [r7, #0xc]
	str r2, [r7, #8]
	str r7, [r2, #0xc]
	str r7, [r2, #8]
	adds r0, r3, #0
	orrs r0, r1
	str r0, [r2, #4]
	adds r0, r2, r3
	str r3, [r0]
	b _080CD272
_080CD248:
	adds r2, r5, r1
	ldr r0, [r2, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #4]
	ldr r6, [r5, #0xc]
	ldr r4, [r5, #8]
	str r6, [r4, #0xc]
	str r4, [r6, #8]
	b _080CD272
_080CD25C:
	ldr r2, _080CD288 @ =gUnknown_08E7EDB0
	ldr r5, [r2, #8]
	movs r1, #1
	mov r0, r8
	orrs r0, r1
	str r0, [r5, #4]
	mov r4, r8
	adds r0, r5, r4
	str r0, [r2, #8]
	orrs r3, r1
	str r3, [r0, #4]
_080CD272:
	ldr r0, [sp]
	bl __malloc_unlock
	adds r0, r5, #0
	adds r0, #8
_080CD27C:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080CD288: .4byte gUnknown_08E7EDB0

	thumb_func_start _mbtowc_r
_mbtowc_r: @ 0x080CD28C
	sub sp, #4
	cmp r1, #0
	bne _080CD294
	mov r1, sp
_080CD294:
	cmp r2, #0
	beq _080CD2B0
	cmp r3, #0
	bne _080CD2A2
	movs r0, #1
	rsbs r0, r0, #0
	b _080CD2B2
_080CD2A2:
	ldrb r0, [r2]
	str r0, [r1]
	ldrb r0, [r2]
	cmp r0, #0
	beq _080CD2B0
	movs r0, #1
	b _080CD2B2
_080CD2B0:
	movs r0, #0
_080CD2B2:
	add sp, #4
	bx lr
	.align 2, 0

	thumb_func_start memchr
memchr: @ 0x080CD2B8
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r1, r0, #0
	movs r0, #0xff
	ands r5, r0
	cmp r2, #3
	bls _080CD32C
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080CD32C
	adds r4, r1, #0
	movs r6, #0
	movs r1, #0
_080CD2D4:
	lsls r0, r6, #8
	adds r6, r0, r5
	adds r1, #1
	cmp r1, #3
	bls _080CD2D4
	cmp r2, #3
	bls _080CD312
	ldr r0, _080CD318 @ =0xFEFEFEFF
	mov ip, r0
	ldr r7, _080CD31C @ =0x80808080
_080CD2E8:
	ldr r1, [r4]
	eors r1, r6
	mov r3, ip
	adds r0, r1, r3
	bics r0, r1
	ands r0, r7
	cmp r0, #0
	beq _080CD30A
	adds r1, r4, #0
	movs r3, #0
_080CD2FC:
	ldrb r0, [r1]
	cmp r0, r5
	beq _080CD326
	adds r1, #1
	adds r3, #1
	cmp r3, #3
	bls _080CD2FC
_080CD30A:
	subs r2, #4
	adds r4, #4
	cmp r2, #3
	bhi _080CD2E8
_080CD312:
	adds r1, r4, #0
	b _080CD32C
	.align 2, 0
_080CD318: .4byte 0xFEFEFEFF
_080CD31C: .4byte 0x80808080
_080CD320:
	ldrb r0, [r1]
	cmp r0, r5
	bne _080CD32A
_080CD326:
	adds r0, r1, #0
	b _080CD336
_080CD32A:
	adds r1, #1
_080CD32C:
	adds r0, r2, #0
	subs r2, #1
	cmp r0, #0
	bne _080CD320
	movs r0, #0
_080CD336:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start memmove
memmove: @ 0x080CD338
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r3, r1, #0
	cmp r3, r5
	bhs _080CD36A
	adds r0, r3, r2
	cmp r5, r0
	bhs _080CD36A
	adds r3, r0, #0
	adds r4, r5, r2
	subs r2, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _080CD3BC
	adds r1, r0, #0
_080CD35A:
	subs r4, #1
	subs r3, #1
	ldrb r0, [r3]
	strb r0, [r4]
	subs r2, #1
	cmp r2, r1
	bne _080CD35A
	b _080CD3BC
_080CD36A:
	cmp r2, #0xf
	bls _080CD3A2
	adds r0, r3, #0
	orrs r0, r4
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080CD3A2
	adds r1, r3, #0
_080CD37C:
	ldm r1!, {r0}
	stm r4!, {r0}
	ldm r1!, {r0}
	stm r4!, {r0}
	ldm r1!, {r0}
	stm r4!, {r0}
	ldm r1!, {r0}
	stm r4!, {r0}
	subs r2, #0x10
	cmp r2, #0xf
	bhi _080CD37C
	cmp r2, #3
	bls _080CD3A0
_080CD396:
	ldm r1!, {r0}
	stm r4!, {r0}
	subs r2, #4
	cmp r2, #3
	bhi _080CD396
_080CD3A0:
	adds r3, r1, #0
_080CD3A2:
	subs r2, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _080CD3BC
	adds r1, r0, #0
_080CD3AE:
	ldrb r0, [r3]
	strb r0, [r4]
	adds r3, #1
	adds r4, #1
	subs r2, #1
	cmp r2, r1
	bne _080CD3AE
_080CD3BC:
	adds r0, r5, #0
	pop {r4, r5, pc}

	thumb_func_start __malloc_lock
__malloc_lock: @ 0x080CD3C0
	bx lr
	.align 2, 0

	thumb_func_start __malloc_unlock
__malloc_unlock: @ 0x080CD3C4
	bx lr
	.align 2, 0

	thumb_func_start _Balloc
_Balloc: @ 0x080CD3C8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	bne _080CD3E4
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0x10
	bl _calloc_r
	str r0, [r4, #0x4c]
	cmp r0, #0
	beq _080CD40C
_080CD3E4:
	ldr r1, [r4, #0x4c]
	lsls r0, r6, #2
	adds r2, r0, r1
	ldr r1, [r2]
	cmp r1, #0
	beq _080CD3F6
	ldr r0, [r1]
	str r0, [r2]
	b _080CD414
_080CD3F6:
	movs r5, #1
	lsls r5, r6
	lsls r2, r5, #2
	adds r2, #0x14
	adds r0, r4, #0
	movs r1, #1
	bl _calloc_r
	adds r1, r0, #0
	cmp r1, #0
	bne _080CD410
_080CD40C:
	movs r0, #0
	b _080CD41C
_080CD410:
	str r6, [r1, #4]
	str r5, [r1, #8]
_080CD414:
	movs r0, #0
	str r0, [r1, #0x10]
	str r0, [r1, #0xc]
	adds r0, r1, #0
_080CD41C:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start _Bfree
_Bfree: @ 0x080CD420
	adds r3, r0, #0
	adds r2, r1, #0
	cmp r2, #0
	beq _080CD436
	ldr r0, [r2, #4]
	ldr r1, [r3, #0x4c]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	str r1, [r2]
	str r2, [r0]
_080CD436:
	bx lr

	thumb_func_start _multadd
_multadd: @ 0x080CD438
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	adds r5, r1, #0
	adds r4, r2, #0
	mov r8, r3
	ldr r6, [r5, #0x10]
	adds r3, r5, #0
	adds r3, #0x14
	movs r7, #0
	ldr r0, _080CD4CC @ =0x0000FFFF
	mov ip, r0
_080CD454:
	ldr r1, [r3]
	adds r0, r1, #0
	mov r2, ip
	ands r0, r2
	adds r2, r0, #0
	muls r2, r4, r2
	add r2, r8
	lsrs r1, r1, #0x10
	adds r0, r1, #0
	muls r0, r4, r0
	lsrs r1, r2, #0x10
	adds r0, r0, r1
	lsrs r1, r0, #0x10
	mov r8, r1
	lsls r0, r0, #0x10
	mov r1, ip
	ands r2, r1
	adds r0, r0, r2
	stm r3!, {r0}
	adds r7, #1
	cmp r7, r6
	blt _080CD454
	mov r2, r8
	cmp r2, #0
	beq _080CD4C2
	ldr r0, [r5, #8]
	cmp r6, r0
	blt _080CD4B2
	ldr r1, [r5, #4]
	adds r1, #1
	mov r0, sb
	bl _Balloc
	adds r4, r0, #0
	adds r0, #0xc
	adds r1, r5, #0
	adds r1, #0xc
	ldr r2, [r5, #0x10]
	lsls r2, r2, #2
	adds r2, #8
	bl memcpy
	mov r0, sb
	adds r1, r5, #0
	bl _Bfree
	adds r5, r4, #0
_080CD4B2:
	lsls r1, r6, #2
	adds r0, r5, #0
	adds r0, #0x14
	adds r0, r0, r1
	mov r1, r8
	str r1, [r0]
	adds r6, #1
	str r6, [r5, #0x10]
_080CD4C2:
	adds r0, r5, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080CD4CC: .4byte 0x0000FFFF

	thumb_func_start _s2b
_s2b: @ 0x080CD4D0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	mov r8, r3
	mov r0, r8
	adds r0, #8
	movs r1, #9
	bl __divsi3
	movs r1, #0
	movs r2, #1
	cmp r0, #1
	ble _080CD4F8
_080CD4F0:
	lsls r2, r2, #1
	adds r1, #1
	cmp r0, r2
	bgt _080CD4F0
_080CD4F8:
	adds r0, r7, #0
	bl _Balloc
	adds r1, r0, #0
	ldr r0, [sp, #0x18]
	str r0, [r1, #0x14]
	movs r0, #1
	str r0, [r1, #0x10]
	movs r5, #9
	cmp r6, #9
	ble _080CD52A
	adds r4, #9
_080CD510:
	ldrb r3, [r4]
	subs r3, #0x30
	adds r4, #1
	adds r0, r7, #0
	movs r2, #0xa
	bl _multadd
	adds r1, r0, #0
	adds r5, #1
	cmp r5, r6
	blt _080CD510
	adds r4, #1
	b _080CD52C
_080CD52A:
	adds r4, #0xa
_080CD52C:
	cmp r5, r8
	bge _080CD54A
	mov r0, r8
	subs r5, r0, r5
_080CD534:
	ldrb r3, [r4]
	subs r3, #0x30
	adds r4, #1
	adds r0, r7, #0
	movs r2, #0xa
	bl _multadd
	adds r1, r0, #0
	subs r5, #1
	cmp r5, #0
	bne _080CD534
_080CD54A:
	adds r0, r1, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start _hi0bits
_hi0bits: @ 0x080CD554
	adds r1, r0, #0
	movs r2, #0
	ldr r0, _080CD5A4 @ =0xFFFF0000
	ands r0, r1
	cmp r0, #0
	bne _080CD564
	movs r2, #0x10
	lsls r1, r1, #0x10
_080CD564:
	movs r0, #0xff
	lsls r0, r0, #0x18
	ands r0, r1
	cmp r0, #0
	bne _080CD572
	adds r2, #8
	lsls r1, r1, #8
_080CD572:
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r0, r1
	cmp r0, #0
	bne _080CD580
	adds r2, #4
	lsls r1, r1, #4
_080CD580:
	movs r0, #0xc0
	lsls r0, r0, #0x18
	ands r0, r1
	cmp r0, #0
	bne _080CD58E
	adds r2, #2
	lsls r1, r1, #2
_080CD58E:
	cmp r1, #0
	blt _080CD5A8
	adds r2, #1
	movs r0, #0x80
	lsls r0, r0, #0x17
	ands r0, r1
	cmp r0, #0
	bne _080CD5A8
	movs r0, #0x20
	b _080CD5AA
	.align 2, 0
_080CD5A4: .4byte 0xFFFF0000
_080CD5A8:
	adds r0, r2, #0
_080CD5AA:
	bx lr

	thumb_func_start _lo0bits
_lo0bits: @ 0x080CD5AC
	adds r3, r0, #0
	ldr r1, [r3]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	beq _080CD5DC
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080CD5C4
	movs r0, #0
	b _080CD62C
_080CD5C4:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080CD5D4
	lsrs r0, r1, #1
	str r0, [r3]
	movs r0, #1
	b _080CD62C
_080CD5D4:
	lsrs r0, r1, #2
	str r0, [r3]
	movs r0, #2
	b _080CD62C
_080CD5DC:
	movs r2, #0
	ldr r0, _080CD624 @ =0x0000FFFF
	ands r0, r1
	cmp r0, #0
	bne _080CD5EA
	movs r2, #0x10
	lsrs r1, r1, #0x10
_080CD5EA:
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	bne _080CD5F6
	adds r2, #8
	lsrs r1, r1, #8
_080CD5F6:
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080CD602
	adds r2, #4
	lsrs r1, r1, #4
_080CD602:
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080CD60E
	adds r2, #2
	lsrs r1, r1, #2
_080CD60E:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080CD628
	adds r2, #1
	lsrs r1, r1, #1
	cmp r1, #0
	bne _080CD628
	movs r0, #0x20
	b _080CD62C
	.align 2, 0
_080CD624: .4byte 0x0000FFFF
_080CD628:
	str r1, [r3]
	adds r0, r2, #0
_080CD62C:
	bx lr
	.align 2, 0

	thumb_func_start _i2b
_i2b: @ 0x080CD630
	push {r4, lr}
	adds r4, r1, #0
	movs r1, #1
	bl _Balloc
	str r4, [r0, #0x14]
	movs r1, #1
	str r1, [r0, #0x10]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start _multiply
_multiply: @ 0x080CD644
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r3, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	ldr r1, [r4, #0x10]
	ldr r0, [r5, #0x10]
	cmp r1, r0
	bge _080CD664
	str r4, [sp]
	adds r4, r5, #0
	ldr r5, [sp]
_080CD664:
	ldr r1, [r4, #4]
	ldr r6, [r4, #0x10]
	ldr r0, [r5, #0x10]
	mov r8, r0
	mov r2, r8
	adds r2, r6, r2
	str r2, [sp, #4]
	ldr r0, [r4, #8]
	cmp r2, r0
	ble _080CD67A
	adds r1, #1
_080CD67A:
	adds r0, r3, #0
	bl _Balloc
	str r0, [sp]
	adds r7, r0, #0
	adds r7, #0x14
	ldr r1, [sp, #4]
	lsls r0, r1, #2
	adds r2, r7, r0
	str r2, [sp, #8]
	str r0, [sp, #0x18]
	adds r1, r4, #0
	adds r1, #0x14
	lsls r3, r6, #2
	adds r2, r5, #0
	adds r2, #0x14
	mov r5, r8
	lsls r4, r5, #2
	ldr r0, [sp, #8]
	cmp r7, r0
	bhs _080CD6AE
	movs r0, #0
_080CD6A6:
	stm r7!, {r0}
	ldr r5, [sp, #8]
	cmp r7, r5
	blo _080CD6A6
_080CD6AE:
	str r1, [sp, #8]
	adds r3, r1, r3
	str r3, [sp, #0xc]
	mov r8, r2
	add r4, r8
	str r4, [sp, #0x10]
	ldr r0, [sp]
	adds r0, #0x14
	mov sb, r0
	mov r1, sb
	str r1, [sp, #0x20]
	cmp r8, r4
	bhs _080CD776
_080CD6C8:
	mov r2, r8
	ldm r2!, {r6}
	str r2, [sp, #0x14]
	ldr r0, _080CD784 @ =0x0000FFFF
	ands r6, r0
	mov r4, sb
	adds r4, #4
	str r4, [sp, #0x1c]
	cmp r6, #0
	beq _080CD720
	ldr r7, [sp, #8]
	mov r5, sb
	movs r1, #0
	mov ip, r1
	mov sl, r0
_080CD6E6:
	ldm r7!, {r3}
	adds r0, r3, #0
	mov r2, sl
	ands r0, r2
	adds r1, r0, #0
	muls r1, r6, r1
	ldr r2, [r5]
	adds r0, r2, #0
	mov r4, sl
	ands r0, r4
	adds r1, r1, r0
	mov r0, ip
	adds r4, r1, r0
	lsrs r1, r4, #0x10
	lsrs r3, r3, #0x10
	adds r0, r3, #0
	muls r0, r6, r0
	lsrs r2, r2, #0x10
	adds r0, r0, r2
	adds r2, r0, r1
	lsrs r0, r2, #0x10
	mov ip, r0
	strh r2, [r5]
	strh r4, [r5, #2]
	adds r5, #4
	ldr r1, [sp, #0xc]
	cmp r7, r1
	blo _080CD6E6
	str r0, [r5]
_080CD720:
	mov r2, r8
	ldrh r6, [r2, #2]
	cmp r6, #0
	beq _080CD768
	ldr r7, [sp, #8]
	mov r5, sb
	movs r4, #0
	mov ip, r4
	ldr r2, [r5]
	ldr r3, _080CD784 @ =0x0000FFFF
_080CD734:
	ldm r7!, {r1}
	adds r0, r1, #0
	ands r0, r3
	muls r0, r6, r0
	ldrh r4, [r5, #2]
	adds r4, r4, r0
	mov r8, r4
	add r4, ip
	lsrs r0, r4, #0x10
	mov ip, r0
	strh r4, [r5]
	strh r2, [r5, #2]
	adds r5, #4
	lsrs r1, r1, #0x10
	muls r1, r6, r1
	ldr r0, [r5]
	ands r0, r3
	adds r1, r1, r0
	mov r4, ip
	adds r2, r1, r4
	lsrs r0, r2, #0x10
	mov ip, r0
	ldr r1, [sp, #0xc]
	cmp r7, r1
	blo _080CD734
	str r2, [r5]
_080CD768:
	ldr r2, [sp, #0x14]
	mov r8, r2
	ldr r4, [sp, #0x1c]
	mov sb, r4
	ldr r5, [sp, #0x10]
	cmp r8, r5
	blo _080CD6C8
_080CD776:
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x18]
	adds r5, r0, r1
	ldr r2, [sp, #4]
	cmp r2, #0
	ble _080CD79A
	b _080CD792
	.align 2, 0
_080CD784: .4byte 0x0000FFFF
_080CD788:
	ldr r4, [sp, #4]
	subs r4, #1
	str r4, [sp, #4]
	cmp r4, #0
	ble _080CD79A
_080CD792:
	subs r5, #4
	ldr r0, [r5]
	cmp r0, #0
	beq _080CD788
_080CD79A:
	ldr r5, [sp, #4]
	ldr r0, [sp]
	str r5, [r0, #0x10]
	ldr r0, [sp]
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start _pow5mult
_pow5mult: @ 0x080CD7B0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r7, r1, #0
	adds r6, r2, #0
	movs r1, #3
	ands r1, r6
	cmp r1, #0
	beq _080CD7DA
	ldr r0, _080CD7FC @ =gUnknown_08E2E86C
	subs r1, #1
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r2, [r1]
	mov r0, r8
	adds r1, r7, #0
	movs r3, #0
	bl _multadd
	adds r7, r0, #0
_080CD7DA:
	asrs r6, r6, #2
	cmp r6, #0
	beq _080CD840
	mov r0, r8
	ldr r5, [r0, #0x48]
	adds r4, r5, #0
	cmp r5, #0
	bne _080CD81C
	ldr r1, _080CD800 @ =0x00000271
	bl _i2b
	mov r1, r8
	str r0, [r1, #0x48]
	adds r5, r0, #0
	str r4, [r5]
	b _080CD81C
	.align 2, 0
_080CD7FC: .4byte gUnknown_08E2E86C
_080CD800: .4byte 0x00000271
_080CD804:
	ldr r0, [r5]
	adds r4, r0, #0
	cmp r0, #0
	bne _080CD81A
	mov r0, r8
	adds r1, r5, #0
	adds r2, r5, #0
	bl _multiply
	str r0, [r5]
	str r4, [r0]
_080CD81A:
	adds r5, r0, #0
_080CD81C:
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	beq _080CD83A
	mov r0, r8
	adds r1, r7, #0
	adds r2, r5, #0
	bl _multiply
	adds r4, r0, #0
	mov r0, r8
	adds r1, r7, #0
	bl _Bfree
	adds r7, r4, #0
_080CD83A:
	asrs r6, r6, #1
	cmp r6, #0
	bne _080CD804
_080CD840:
	adds r0, r7, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start _lshift
_lshift: @ 0x080CD848
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	mov r8, r1
	adds r5, r2, #0
	asrs r6, r5, #5
	ldr r1, [r1, #4]
	mov r2, r8
	ldr r0, [r2, #0x10]
	adds r0, r6, r0
	adds r7, r0, #1
	ldr r2, [r2, #8]
	cmp r7, r2
	ble _080CD872
_080CD86A:
	adds r1, #1
	lsls r2, r2, #1
	cmp r7, r2
	bgt _080CD86A
_080CD872:
	mov r0, sl
	bl _Balloc
	mov sb, r0
	mov r4, sb
	adds r4, #0x14
	mov r0, r8
	adds r0, #0x14
	cmp r6, #0
	ble _080CD892
	movs r1, #0
	adds r2, r6, #0
_080CD88A:
	stm r4!, {r1}
	subs r2, #1
	cmp r2, #0
	bne _080CD88A
_080CD892:
	adds r3, r0, #0
	mov r1, r8
	ldr r0, [r1, #0x10]
	lsls r0, r0, #2
	adds r6, r3, r0
	movs r0, #0x1f
	ands r5, r0
	cmp r5, #0
	beq _080CD8C4
	movs r0, #0x20
	subs r1, r0, r5
	movs r2, #0
_080CD8AA:
	ldr r0, [r3]
	lsls r0, r5
	orrs r0, r2
	stm r4!, {r0}
	ldm r3!, {r2}
	lsrs r2, r1
	cmp r3, r6
	blo _080CD8AA
	str r2, [r4]
	cmp r2, #0
	beq _080CD8CC
	adds r7, #1
	b _080CD8CC
_080CD8C4:
	ldm r3!, {r0}
	stm r4!, {r0}
	cmp r3, r6
	blo _080CD8C4
_080CD8CC:
	subs r0, r7, #1
	mov r2, sb
	str r0, [r2, #0x10]
	mov r0, sl
	mov r1, r8
	bl _Bfree
	mov r0, sb
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start __mcmp
__mcmp: @ 0x080CD8E8
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r5, r1, #0
	ldr r0, [r2, #0x10]
	ldr r1, [r5, #0x10]
	subs r0, r0, r1
	cmp r0, #0
	bne _080CD924
	adds r4, r2, #0
	adds r4, #0x14
	lsls r1, r1, #2
	adds r3, r4, r1
	adds r0, r5, #0
	adds r0, #0x14
	adds r1, r0, r1
_080CD906:
	subs r3, #4
	subs r1, #4
	ldr r0, [r3]
	ldr r2, [r1]
	cmp r0, r2
	beq _080CD91E
	movs r1, #1
	cmp r0, r2
	bhs _080CD91A
	subs r1, #2
_080CD91A:
	adds r0, r1, #0
	b _080CD924
_080CD91E:
	cmp r3, r4
	bhi _080CD906
	movs r0, #0
_080CD924:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start __mdiff
__mdiff: @ 0x080CD928
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	adds r5, r1, #0
	mov r8, r2
	adds r0, r5, #0
	mov r1, r8
	bl __mcmp
	adds r4, r0, #0
	cmp r4, #0
	bne _080CD95A
	adds r0, r6, #0
	movs r1, #0
	bl _Balloc
	adds r7, r0, #0
	movs r0, #1
	str r0, [r7, #0x10]
	str r4, [r7, #0x14]
	b _080CDA0A
_080CD95A:
	cmp r4, #0
	bge _080CD968
	adds r7, r5, #0
	mov r5, r8
	mov r8, r7
	movs r4, #1
	b _080CD96A
_080CD968:
	movs r4, #0
_080CD96A:
	ldr r1, [r5, #4]
	adds r0, r6, #0
	bl _Balloc
	adds r7, r0, #0
	str r4, [r7, #0xc]
	ldr r0, [r5, #0x10]
	mov sb, r0
	adds r6, r5, #0
	adds r6, #0x14
	lsls r0, r0, #2
	adds r0, r0, r6
	mov sl, r0
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r3, #0x14
	add r3, r8
	mov ip, r3
	lsls r0, r0, #2
	add r0, ip
	str r0, [sp]
	adds r4, r7, #0
	adds r4, #0x14
	movs r5, #0
	ldr r0, _080CD9F4 @ =0x0000FFFF
	mov r8, r0
_080CD99E:
	ldm r6!, {r1}
	str r1, [sp, #4]
	mov r3, r8
	ands r1, r3
	mov r0, ip
	adds r0, #4
	mov ip, r0
	subs r0, #4
	ldm r0!, {r2}
	adds r0, r2, #0
	ands r0, r3
	subs r1, r1, r0
	adds r0, r1, r5
	asrs r5, r0, #0x10
	ldr r1, [sp, #4]
	lsrs r3, r1, #0x10
	lsrs r2, r2, #0x10
	subs r3, r3, r2
	adds r1, r3, r5
	asrs r5, r1, #0x10
	strh r1, [r4]
	strh r0, [r4, #2]
	adds r4, #4
	ldr r3, [sp]
	cmp ip, r3
	blo _080CD99E
	cmp r6, sl
	bhs _080CD9FE
	ldr r2, _080CD9F4 @ =0x0000FFFF
_080CD9D8:
	ldm r6!, {r1}
	adds r0, r1, #0
	ands r0, r2
	adds r0, r0, r5
	asrs r5, r0, #0x10
	lsrs r1, r1, #0x10
	adds r1, r1, r5
	asrs r5, r1, #0x10
	strh r1, [r4]
	strh r0, [r4, #2]
	adds r4, #4
	cmp r6, sl
	blo _080CD9D8
	b _080CD9FE
	.align 2, 0
_080CD9F4: .4byte 0x0000FFFF
_080CD9F8:
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
_080CD9FE:
	subs r4, #4
	ldr r0, [r4]
	cmp r0, #0
	beq _080CD9F8
	mov r1, sb
	str r1, [r7, #0x10]
_080CDA0A:
	adds r0, r7, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start _ulp
_ulp: @ 0x080CDA18
	push {r4, lr}
	ldr r2, _080CDA2C @ =0x7FF00000
	ands r2, r0
	ldr r0, _080CDA30 @ =0xFCC00000
	adds r2, r2, r0
	cmp r2, #0
	ble _080CDA34
	adds r3, r2, #0
	movs r4, #0
	b _080CDA5E
	.align 2, 0
_080CDA2C: .4byte 0x7FF00000
_080CDA30: .4byte 0xFCC00000
_080CDA34:
	rsbs r0, r2, #0
	asrs r2, r0, #0x14
	cmp r2, #0x13
	bgt _080CDA48
	movs r0, #0x80
	lsls r0, r0, #0xc
	adds r3, r0, #0
	asrs r3, r2
	movs r4, #0
	b _080CDA5E
_080CDA48:
	movs r3, #0
	subs r2, #0x14
	cmp r2, #0x1e
	bgt _080CDA5A
	movs r0, #0x1f
	subs r0, r0, r2
	movs r1, #1
	lsls r1, r0
	b _080CDA5C
_080CDA5A:
	movs r1, #1
_080CDA5C:
	adds r4, r1, #0
_080CDA5E:
	adds r1, r4, #0
	adds r0, r3, #0
	pop {r4, pc}

	thumb_func_start _b2d
_b2d: @ 0x080CDA64
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r1, #0
	movs r1, #0x14
	adds r1, r1, r0
	mov r8, r1
	ldr r0, [r0, #0x10]
	lsls r0, r0, #2
	adds r5, r1, r0
	subs r5, #4
	ldr r2, [r5]
	adds r0, r2, #0
	str r2, [sp]
	bl _hi0bits
	adds r3, r0, #0
	movs r0, #0x20
	subs r0, r0, r3
	str r0, [r4]
	ldr r2, [sp]
	cmp r3, #0xa
	bgt _080CDAC4
	movs r0, #0xb
	subs r0, r0, r3
	adds r1, r2, #0
	lsrs r1, r0
	ldr r0, _080CDAAC @ =0x3FF00000
	adds r6, r1, #0
	orrs r6, r0
	cmp r5, r8
	bls _080CDAB0
	subs r5, #4
	ldr r1, [r5]
	b _080CDAB2
	.align 2, 0
_080CDAAC: .4byte 0x3FF00000
_080CDAB0:
	movs r1, #0
_080CDAB2:
	adds r0, r3, #0
	adds r0, #0x15
	lsls r2, r0
	movs r0, #0xb
	subs r0, r0, r3
	lsrs r1, r0
	adds r7, r2, #0
	orrs r7, r1
	b _080CDB10
_080CDAC4:
	cmp r5, r8
	bls _080CDACE
	subs r5, #4
	ldr r4, [r5]
	b _080CDAD0
_080CDACE:
	movs r4, #0
_080CDAD0:
	subs r3, #0xb
	cmp r3, #0
	beq _080CDB08
	lsls r2, r3
	movs r0, #0x20
	subs r0, r0, r3
	adds r1, r4, #0
	lsrs r1, r0
	ldr r0, _080CDAF4 @ =0x3FF00000
	orrs r1, r0
	adds r6, r2, #0
	orrs r6, r1
	cmp r5, r8
	bls _080CDAF8
	subs r5, #4
	ldr r2, [r5]
	b _080CDAFA
	.align 2, 0
_080CDAF4: .4byte 0x3FF00000
_080CDAF8:
	movs r2, #0
_080CDAFA:
	lsls r4, r3
	movs r0, #0x20
	subs r0, r0, r3
	lsrs r2, r0
	adds r7, r4, #0
	orrs r7, r2
	b _080CDB10
_080CDB08:
	ldr r0, _080CDB1C @ =0x3FF00000
	adds r6, r2, #0
	orrs r6, r0
	adds r7, r4, #0
_080CDB10:
	adds r1, r7, #0
	adds r0, r6, #0
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080CDB1C: .4byte 0x3FF00000

	thumb_func_start _d2b
_d2b: @ 0x080CDB20
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r3
	ldr r3, [sp, #0x28]
	mov sl, r3
	adds r5, r2, #0
	adds r4, r1, #0
	movs r1, #1
	bl _Balloc
	adds r6, r0, #0
	movs r0, #0x14
	adds r0, r0, r6
	mov r8, r0
	ldr r2, _080CDB88 @ =0x000FFFFF
	adds r1, r4, #0
	ands r2, r1
	str r2, [sp, #4]
	ldr r0, _080CDB8C @ =0x7FFFFFFF
	ands r4, r0
	lsrs r7, r4, #0x14
	cmp r7, #0
	beq _080CDB5E
	movs r0, #0x80
	lsls r0, r0, #0xd
	orrs r0, r2
	str r0, [sp, #4]
_080CDB5E:
	str r5, [sp]
	cmp r5, #0
	beq _080CDBA8
	mov r0, sp
	bl _lo0bits
	adds r2, r0, #0
	cmp r2, #0
	beq _080CDB90
	movs r0, #0x20
	subs r0, r0, r2
	ldr r1, [sp, #4]
	lsls r1, r0
	ldr r0, [sp]
	orrs r0, r1
	str r0, [r6, #0x14]
	ldr r0, [sp, #4]
	lsrs r0, r2
	str r0, [sp, #4]
	b _080CDB94
	.align 2, 0
_080CDB88: .4byte 0x000FFFFF
_080CDB8C: .4byte 0x7FFFFFFF
_080CDB90:
	ldr r0, [sp]
	str r0, [r6, #0x14]
_080CDB94:
	ldr r0, [sp, #4]
	mov r1, r8
	str r0, [r1, #4]
	movs r1, #1
	cmp r0, #0
	beq _080CDBA2
	movs r1, #2
_080CDBA2:
	str r1, [r6, #0x10]
	adds r4, r1, #0
	b _080CDBBC
_080CDBA8:
	add r0, sp, #4
	bl _lo0bits
	adds r2, r0, #0
	ldr r0, [sp, #4]
	str r0, [r6, #0x14]
	movs r0, #1
	str r0, [r6, #0x10]
	movs r4, #1
	adds r2, #0x20
_080CDBBC:
	cmp r7, #0
	beq _080CDBD8
	ldr r3, _080CDBD4 @ =0xFFFFFBCD
	adds r0, r2, r3
	adds r0, r7, r0
	mov r1, sb
	str r0, [r1]
	movs r0, #0x35
	subs r0, r0, r2
	mov r3, sl
	str r0, [r3]
	b _080CDBF4
	.align 2, 0
_080CDBD4: .4byte 0xFFFFFBCD
_080CDBD8:
	ldr r1, _080CDC04 @ =0xFFFFFBCE
	adds r0, r2, r1
	mov r3, sb
	str r0, [r3]
	lsls r0, r4, #2
	add r0, r8
	subs r0, #4
	ldr r0, [r0]
	bl _hi0bits
	lsls r1, r4, #5
	subs r1, r1, r0
	mov r0, sl
	str r1, [r0]
_080CDBF4:
	adds r0, r6, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080CDC04: .4byte 0xFFFFFBCE

	thumb_func_start _ratio
_ratio: @ 0x080CDC08
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r5, r1, #0
	mov r1, sp
	bl _b2d
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r1, sp, #4
	adds r0, r5, #0
	bl _b2d
	adds r7, r1, #0
	adds r6, r0, #0
	ldr r2, [sp]
	ldr r0, [sp, #4]
	subs r2, r2, r0
	ldr r0, [r4, #0x10]
	ldr r1, [r5, #0x10]
	subs r0, r0, r1
	lsls r0, r0, #5
	adds r0, r2, r0
	cmp r0, #0
	ble _080CDC44
	lsls r0, r0, #0x14
	ldr r1, [sp, #8]
	adds r0, r1, r0
	str r0, [sp, #8]
	b _080CDC48
_080CDC44:
	lsls r0, r0, #0x14
	subs r6, r6, r0
_080CDC48:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	adds r3, r7, #0
	adds r2, r6, #0
	bl __divdf3
	add sp, #0x10
	pop {r4, r5, r6, r7, pc}

	thumb_func_start _mprec_log10
_mprec_log10: @ 0x080CDC58
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080CDC74 @ =0x00000000
	ldr r0, _080CDC70 @ =0x3FF00000
	cmp r4, #0x17
	bgt _080CDC7C
	ldr r0, _080CDC78 @ =gUnknown_08E2E878
	lsls r1, r4, #3
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r1, [r1, #4]
	b _080CDC8E
	.align 2, 0
_080CDC70: .4byte 0x3FF00000
_080CDC74: .4byte 0x00000000
_080CDC78: .4byte gUnknown_08E2E878
_080CDC7C:
	cmp r4, #0
	ble _080CDC8E
_080CDC80:
	ldr r3, _080CDC94 @ =0x00000000
	ldr r2, _080CDC90 @ =0x40240000
	bl __muldf3
	subs r4, #1
	cmp r4, #0
	bgt _080CDC80
_080CDC8E:
	pop {r4, pc}
	.align 2, 0
_080CDC90: .4byte 0x40240000
_080CDC94: .4byte 0x00000000

	thumb_func_start isinf
isinf: @ 0x080CDC98
	ldr r3, _080CDCB4 @ =0x7FFFFFFF
	ands r3, r0
	rsbs r2, r1, #0
	orrs r2, r1
	lsrs r2, r2, #0x1f
	orrs r3, r2
	ldr r0, _080CDCB8 @ =0x7FF00000
	subs r3, r0, r3
	rsbs r0, r3, #0
	orrs r3, r0
	lsrs r3, r3, #0x1f
	movs r0, #1
	subs r0, r0, r3
	bx lr
	.align 2, 0
_080CDCB4: .4byte 0x7FFFFFFF
_080CDCB8: .4byte 0x7FF00000

	thumb_func_start isnan
isnan: @ 0x080CDCBC
	ldr r3, _080CDCD4 @ =0x7FFFFFFF
	ands r3, r0
	rsbs r2, r1, #0
	orrs r2, r1
	lsrs r2, r2, #0x1f
	orrs r3, r2
	ldr r0, _080CDCD8 @ =0x7FF00000
	subs r3, r0, r3
	lsrs r3, r3, #0x1f
	adds r0, r3, #0
	bx lr
	.align 2, 0
_080CDCD4: .4byte 0x7FFFFFFF
_080CDCD8: .4byte 0x7FF00000

	thumb_func_start _sbrk_r
_sbrk_r: @ 0x080CDCDC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	ldr r4, _080CDD04 @ =errno
	movs r1, #0
	str r1, [r4]
	bl _sbrk
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080CDCFE
	ldr r0, [r4]
	cmp r0, #0
	beq _080CDCFE
	str r0, [r5]
_080CDCFE:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_080CDD04: .4byte errno

	thumb_func_start __sread
__sread: @ 0x080CDD08
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r3, r2, #0
	ldr r0, [r5, #0x54]
	movs r2, #0xe
	ldrsh r1, [r5, r2]
	adds r2, r4, #0
	bl sub_80CE408
	adds r1, r0, #0
	cmp r1, #0
	blt _080CDD2A
	ldr r0, [r5, #0x50]
	adds r0, r0, r1
	str r0, [r5, #0x50]
	b _080CDD32
_080CDD2A:
	ldr r0, _080CDD38 @ =0xFFFFEFFF
	ldrh r2, [r5, #0xc]
	ands r0, r2
	strh r0, [r5, #0xc]
_080CDD32:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_080CDD38: .4byte 0xFFFFEFFF

	thumb_func_start __swrite
__swrite: @ 0x080CDD3C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	movs r0, #0x80
	lsls r0, r0, #1
	ldrh r1, [r4, #0xc]
	ands r0, r1
	cmp r0, #0
	beq _080CDD5E
	ldr r0, [r4, #0x54]
	movs r2, #0xe
	ldrsh r1, [r4, r2]
	movs r2, #0
	movs r3, #2
	bl _lseek_r
_080CDD5E:
	ldr r0, _080CDD78 @ =0xFFFFEFFF
	ldrh r1, [r4, #0xc]
	ands r0, r1
	strh r0, [r4, #0xc]
	ldr r0, [r4, #0x54]
	movs r2, #0xe
	ldrsh r1, [r4, r2]
	adds r2, r5, #0
	adds r3, r6, #0
	bl _write_r
	pop {r4, r5, r6, pc}
	.align 2, 0
_080CDD78: .4byte 0xFFFFEFFF

	thumb_func_start __sseek
__sseek: @ 0x080CDD7C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r3, r2, #0
	ldr r0, [r5, #0x54]
	movs r2, #0xe
	ldrsh r1, [r5, r2]
	adds r2, r4, #0
	bl _lseek_r
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080CDDA8
	ldr r0, _080CDDA4 @ =0xFFFFEFFF
	ldrh r2, [r5, #0xc]
	ands r0, r2
	strh r0, [r5, #0xc]
	b _080CDDB6
	.align 2, 0
_080CDDA4: .4byte 0xFFFFEFFF
_080CDDA8:
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	ldrh r2, [r5, #0xc]
	orrs r0, r2
	strh r0, [r5, #0xc]
	str r1, [r5, #0x50]
_080CDDB6:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start __sclose
__sclose: @ 0x080CDDBC
	push {lr}
	ldr r2, [r0, #0x54]
	movs r3, #0xe
	ldrsh r1, [r0, r3]
	adds r0, r2, #0
	bl _close_r
	pop {pc}

	thumb_func_start strcmp
strcmp: @ 0x080CDDCC
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	orrs r0, r3
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080CDE12
	ldr r1, [r2]
	ldr r0, [r3]
	cmp r1, r0
	bne _080CDE12
	ldr r5, _080CDDF8 @ =0xFEFEFEFF
	ldr r4, _080CDDFC @ =0x80808080
_080CDDE8:
	ldr r1, [r2]
	adds r0, r1, r5
	bics r0, r1
	ands r0, r4
	cmp r0, #0
	beq _080CDE00
	movs r0, #0
	b _080CDE24
	.align 2, 0
_080CDDF8: .4byte 0xFEFEFEFF
_080CDDFC: .4byte 0x80808080
_080CDE00:
	adds r2, #4
	adds r3, #4
	ldr r1, [r2]
	ldr r0, [r3]
	cmp r1, r0
	beq _080CDDE8
	b _080CDE12
_080CDE0E:
	adds r2, #1
	adds r3, #1
_080CDE12:
	ldrb r0, [r2]
	cmp r0, #0
	beq _080CDE1E
	ldrb r1, [r3]
	cmp r0, r1
	beq _080CDE0E
_080CDE1E:
	ldrb r2, [r2]
	ldrb r3, [r3]
	subs r0, r2, r3
_080CDE24:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start strlen
strlen: @ 0x080CDE28
	push {r4, r5, lr}
	adds r1, r0, #0
	adds r5, r1, #0
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080CDE60
	adds r2, r1, #0
	ldr r1, [r2]
	ldr r4, _080CDE44 @ =0xFEFEFEFF
	adds r0, r1, r4
	bics r0, r1
	ldr r3, _080CDE48 @ =0x80808080
	b _080CDE54
	.align 2, 0
_080CDE44: .4byte 0xFEFEFEFF
_080CDE48: .4byte 0x80808080
_080CDE4C:
	adds r2, #4
	ldr r1, [r2]
	adds r0, r1, r4
	bics r0, r1
_080CDE54:
	ands r0, r3
	cmp r0, #0
	beq _080CDE4C
	adds r1, r2, #0
	b _080CDE60
_080CDE5E:
	adds r1, #1
_080CDE60:
	ldrb r0, [r1]
	cmp r0, #0
	bne _080CDE5E
	subs r0, r1, r5
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start findslot_arm_syscalls
findslot_arm_syscalls: @ 0x080CDE6C
	adds r3, r0, #0
	movs r1, #0
	ldr r2, _080CDE74 @ =0x03000488
	b _080CDE80
	.align 2, 0
_080CDE74: .4byte 0x03000488
_080CDE78:
	adds r2, #8
	adds r1, #1
	cmp r1, #0x13
	bgt _080CDE86
_080CDE80:
	ldr r0, [r2]
	cmp r0, r3
	bne _080CDE78
_080CDE86:
	adds r0, r1, #0
	bx lr
	.align 2, 0

	thumb_func_start remap_handle_arm_syscalls
remap_handle_arm_syscalls: @ 0x080CDE8C
	adds r2, r0, #0
	ldr r0, _080CDEA0 @ =_impure_ptr
	ldr r1, [r0]
	ldr r0, [r1, #4]
	movs r3, #0xe
	ldrsh r0, [r0, r3]
	cmp r2, r0
	bne _080CDEA8
	ldr r0, _080CDEA4 @ =0x0300047C
	b _080CDECE
	.align 2, 0
_080CDEA0: .4byte _impure_ptr
_080CDEA4: .4byte 0x0300047C
_080CDEA8:
	ldr r0, [r1, #8]
	movs r3, #0xe
	ldrsh r0, [r0, r3]
	cmp r2, r0
	bne _080CDEBC
	ldr r0, _080CDEB8 @ =0x03000480
	b _080CDECE
	.align 2, 0
_080CDEB8: .4byte 0x03000480
_080CDEBC:
	ldr r0, [r1, #0xc]
	movs r1, #0xe
	ldrsh r0, [r0, r1]
	cmp r2, r0
	beq _080CDECC
	adds r0, r2, #0
	subs r0, #0x20
	b _080CDED0
_080CDECC:
	ldr r0, _080CDED4 @ =0x03000484
_080CDECE:
	ldr r0, [r0]
_080CDED0:
	bx lr
	.align 2, 0
_080CDED4: .4byte 0x03000484

	thumb_func_start initialise_monitor_handles
initialise_monitor_handles: @ 0x080CDED8
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r4, _080CDF34 @ =gUnknown_08E2E990
	str r4, [sp]
	movs r3, #3
	str r3, [sp, #8]
	movs r0, #0
	str r0, [sp, #4]
	movs r5, #1
	adds r0, r5, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	ldr r5, _080CDF38 @ =0x0300047C
	str r2, [r5]
	str r4, [sp]
	str r3, [sp, #8]
	movs r0, #4
	str r0, [sp, #4]
	ldr r3, _080CDF3C @ =0x03000480
	movs r4, #1
	adds r0, r4, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	ldr r0, _080CDF40 @ =0x03000484
	str r2, [r0]
	str r2, [r3]
	ldr r2, _080CDF44 @ =0x03000488
	adds r1, r2, #0
	subs r4, #2
	adds r0, r2, #0
	adds r0, #0x98
_080CDF1A:
	str r4, [r0]
	subs r0, #8
	cmp r0, r1
	bge _080CDF1A
	movs r0, #0
	ldr r1, [r5]
	str r1, [r2]
	str r0, [r2, #4]
	ldr r1, [r3]
	str r1, [r2, #8]
	str r0, [r2, #0xc]
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_080CDF34: .4byte gUnknown_08E2E990
_080CDF38: .4byte 0x0300047C
_080CDF3C: .4byte 0x03000480
_080CDF40: .4byte 0x03000484
_080CDF44: .4byte 0x03000488

	thumb_func_start get_errno
get_errno: @ 0x080CDF48
	push {r4, lr}
	movs r3, #0x13
	movs r4, #0
	adds r0, r3, #0
	adds r1, r4, #0
	svc #0xab
	adds r2, r0, #0
	adds r0, r2, #0
	pop {r4, pc}
	.align 2, 0

	thumb_func_start error_arm_syscalls
error_arm_syscalls: @ 0x080CDF5C
	push {r4, r5, lr}
	adds r5, r0, #0
	bl __errno
	adds r4, r0, #0
	bl get_errno
	str r0, [r4]
	adds r0, r5, #0
	pop {r4, r5, pc}

	thumb_func_start wrap_arm_syscalls
wrap_arm_syscalls: @ 0x080CDF70
	push {lr}
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080CDF80
	adds r0, r1, #0
	b _080CDF86
_080CDF80:
	adds r0, r1, #0
	bl error_arm_syscalls
_080CDF86:
	pop {pc}

	thumb_func_start _swiread
_swiread: @ 0x080CDF88
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r1, #0
	adds r5, r2, #0
	bl remap_handle_arm_syscalls
	str r0, [sp]
	str r4, [sp, #4]
	str r5, [sp, #8]
	movs r3, #6
	adds r0, r3, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	adds r0, r2, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start _read
_read: @ 0x080CDFAC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	bl remap_handle_arm_syscalls
	bl findslot_arm_syscalls
	adds r6, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl _swiread
	cmp r0, #0
	bge _080CDFD6
	movs r0, #1
	rsbs r0, r0, #0
	bl error_arm_syscalls
	b _080CDFEC
_080CDFD6:
	subs r2, r7, r0
	cmp r6, #0x14
	beq _080CDFEA
	ldr r0, _080CDFF0 @ =0x03000488
	lsls r1, r6, #3
	adds r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, r0, r2
	str r0, [r1]
_080CDFEA:
	adds r0, r2, #0
_080CDFEC:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080CDFF0: .4byte 0x03000488

	thumb_func_start _swilseek
_swilseek: @ 0x080CDFF4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	adds r5, r1, #0
	adds r4, r2, #0
	bl remap_handle_arm_syscalls
	adds r7, r0, #0
	bl findslot_arm_syscalls
	adds r6, r0, #0
	cmp r4, #1
	bne _080CE02A
	cmp r6, #0x14
	bne _080CE01C
	movs r0, #1
	rsbs r0, r0, #0
	b _080CE06C
_080CE01C:
	ldr r0, _080CE074 @ =0x03000488
	lsls r1, r6, #3
	adds r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
	adds r5, r5, r0
	movs r4, #0
_080CE02A:
	cmp r4, #2
	bne _080CE03C
	str r7, [sp]
	movs r3, #0xc
	adds r0, r3, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	adds r5, r5, r2
_080CE03C:
	mov r0, r8
	bl remap_handle_arm_syscalls
	str r0, [sp]
	str r5, [sp, #4]
	movs r3, #0xa
	adds r0, r3, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	cmp r6, #0x14
	beq _080CE062
	cmp r2, #0
	bne _080CE062
	ldr r0, _080CE074 @ =0x03000488
	lsls r1, r6, #3
	adds r0, #4
	adds r1, r1, r0
	str r5, [r1]
_080CE062:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, #0
	bne _080CE06C
	adds r0, r5, #0
_080CE06C:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080CE074: .4byte 0x03000488

	thumb_func_start sub_80CE078
sub_80CE078: @ 0x080CE078
	push {lr}
	bl _swilseek
	bl wrap_arm_syscalls
	pop {pc}

	thumb_func_start sub_80CE084
sub_80CE084: @ 0x080CE084
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r1, #0
	adds r5, r2, #0
	bl remap_handle_arm_syscalls
	str r0, [sp]
	str r4, [sp, #4]
	str r5, [sp, #8]
	movs r3, #5
	adds r0, r3, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	adds r0, r2, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start _write
_write: @ 0x080CE0A8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	bl remap_handle_arm_syscalls
	bl findslot_arm_syscalls
	adds r7, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80CE084
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080CE0D0
	cmp r0, r6
	bne _080CE0D8
_080CE0D0:
	adds r0, r1, #0
	bl error_arm_syscalls
	b _080CE0EE
_080CE0D8:
	subs r2, r6, r0
	cmp r7, #0x14
	beq _080CE0EC
	ldr r0, _080CE0F0 @ =0x03000488
	lsls r1, r7, #3
	adds r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, r0, r2
	str r0, [r1]
_080CE0EC:
	adds r0, r2, #0
_080CE0EE:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080CE0F0: .4byte 0x03000488

	thumb_func_start _swiopen
_swiopen: @ 0x080CE0F4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r7, r0, #0
	adds r4, r1, #0
	movs r5, #0
	movs r6, #1
	rsbs r6, r6, #0
	adds r0, r6, #0
	bl findslot_arm_syscalls
	mov r8, r0
	cmp r0, #0x14
	bne _080CE116
	adds r0, r6, #0
	b _080CE18A
_080CE116:
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _080CE120
	movs r5, #2
_080CE120:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r4
	cmp r0, #0
	beq _080CE12E
	movs r0, #4
	orrs r5, r0
_080CE12E:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r4
	cmp r0, #0
	beq _080CE13C
	movs r0, #4
	orrs r5, r0
_080CE13C:
	movs r1, #8
	ands r4, r1
	cmp r4, #0
	beq _080CE14C
	movs r0, #5
	rsbs r0, r0, #0
	ands r5, r0
	orrs r5, r1
_080CE14C:
	str r7, [sp]
	adds r0, r7, #0
	bl strlen
	str r0, [sp, #8]
	str r5, [sp, #4]
	movs r2, #1
	adds r0, r2, #0
	mov r1, sp
	svc #0xab
	adds r3, r0, #0
	cmp r3, #0
	blt _080CE184
	ldr r0, _080CE180 @ =0x03000488
	mov r1, r8
	lsls r2, r1, #3
	adds r1, r2, r0
	str r3, [r1]
	adds r0, #4
	adds r2, r2, r0
	movs r0, #0
	str r0, [r2]
	adds r0, r3, #0
	adds r0, #0x20
	b _080CE18A
	.align 2, 0
_080CE180: .4byte 0x03000488
_080CE184:
	adds r0, r3, #0
	bl error_arm_syscalls
_080CE18A:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start _open
_open: @ 0x080CE194
	push {r1, r2, r3}
	push {lr}
	ldr r1, [sp, #4]
	bl _swiopen
	bl wrap_arm_syscalls
	pop {r3}
	add sp, #0xc
	bx r3

	thumb_func_start _swiclose
_swiclose: @ 0x080CE1A8
	push {lr}
	sub sp, #4
	bl remap_handle_arm_syscalls
	str r0, [sp]
	bl findslot_arm_syscalls
	adds r1, r0, #0
	cmp r1, #0x14
	beq _080CE1C8
	ldr r0, _080CE1D8 @ =0x03000488
	lsls r1, r1, #3
	adds r1, r1, r0
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
_080CE1C8:
	movs r3, #2
	adds r0, r3, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	adds r0, r2, #0
	add sp, #4
	pop {pc}
	.align 2, 0
_080CE1D8: .4byte 0x03000488

	thumb_func_start _close
_close: @ 0x080CE1DC
	push {lr}
	bl _swiclose
	bl wrap_arm_syscalls
	pop {pc}

	thumb_func_start _exit
_exit: @ 0x080CE1E8
	mov ip, r3
	mov r3, r8
	push {r3}
	mov r3, ip
	movs r2, #0x18
	ldr r3, _080CE204 @ =0x00020026
	adds r0, r2, #0
	adds r1, r3, #0
	svc #0xab
	mov r8, r0
	pop {r3}
	mov r8, r3
	bx lr
	.align 2, 0
_080CE204: .4byte 0x00020026

	thumb_func_start _kill
_kill: @ 0x080CE208
	mov ip, r3
	mov r3, r8
	push {r3}
	mov r3, ip
	movs r2, #0x18
	ldr r3, _080CE224 @ =0x00020026
	adds r0, r2, #0
	adds r1, r3, #0
	svc #0xab
	mov r8, r0
	pop {r3}
	mov r8, r3
	bx lr
	.align 2, 0
_080CE224: .4byte 0x00020026

    thumb_func_start _getpid
_getpid: @ 0x080CE228
    movs r0, #1
	bx lr
	.align 2, 0

	thumb_func_start _sbrk
_sbrk: @ 0x080CE22C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r4, _080CE25C @ =0x03000478
	ldr r0, [r4]
	cmp r0, #0
	bne _080CE23C
	ldr r0, _080CE260 @ =iwram_end
	str r0, [r4]
_080CE23C:
	ldr r5, [r4]
	adds r0, r5, r6
	cmp r0, sp
	bls _080CE252
	ldr r1, _080CE264 @ =gUnknown_08E2E994
	movs r0, #1
	movs r2, #0x20
	bl _write
	bl abort
_080CE252:
	ldr r0, [r4]
	adds r0, r0, r6
	str r0, [r4]
	adds r0, r5, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_080CE25C: .4byte 0x03000478
_080CE260: .4byte iwram_end
_080CE264: .4byte gUnknown_08E2E994

	thumb_func_start _fstat
_fstat: @ 0x080CE268
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r1, #4]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_80CE274
sub_80CE274: @ 0x080CE274
	movs r0, #1
	rsbs r0, r0, #0
	bx lr
	.align 2, 0

	thumb_func_start _raise
_raise: @ 0x080CE27C
	bx lr
	.align 2, 0

	thumb_func_start _gettimeofday
_gettimeofday: @ 0x080CE280
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	cmp r2, #0
	beq _080CE29E
	movs r4, #0x11
	movs r5, #0
	adds r0, r4, #0
	adds r1, r5, #0
	svc #0xab
	adds r5, r0, #0
	adds r4, r5, #0
	str r4, [r2]
	movs r0, #0
	str r0, [r2, #4]
_080CE29E:
	cmp r3, #0
	beq _080CE2A8
	movs r0, #0
	str r0, [r3]
	str r0, [r3, #4]
_080CE2A8:
	movs r0, #0
	pop {r4, r5, pc}

	thumb_func_start _times
_times: @ 0x080CE2AC
	push {r4, r5, lr}
	adds r2, r0, #0
	movs r4, #0x10
	movs r5, #0
	adds r0, r4, #0
	adds r1, r5, #0
	svc #0xab
	adds r3, r0, #0
	cmp r2, #0
	beq _080CE2CA
	str r3, [r2]
	movs r0, #0
	str r0, [r2, #4]
	str r0, [r2, #8]
	str r0, [r2, #0xc]
_080CE2CA:
	adds r0, r3, #0
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start _write_r
_write_r: @ 0x080CE2D0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	ldr r4, _080CE2FC @ =errno
	movs r3, #0
	str r3, [r4]
	bl _write
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080CE2F6
	ldr r0, [r4]
	cmp r0, #0
	beq _080CE2F6
	str r0, [r5]
_080CE2F6:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_080CE2FC: .4byte errno

	thumb_func_start _calloc_r
_calloc_r: @ 0x080CE300
	push {r4, lr}
	muls r1, r2, r1
	bl _malloc_r
	adds r4, r0, #0
	cmp r4, #0
	bne _080CE312
	movs r0, #0
	b _080CE356
_080CE312:
	adds r0, r4, #0
	subs r0, #8
	ldr r0, [r0, #4]
	movs r1, #4
	rsbs r1, r1, #0
	ands r0, r1
	subs r2, r0, #4
	cmp r2, #0x24
	bhi _080CE34C
	adds r1, r4, #0
	cmp r2, #0x13
	bls _080CE342
	movs r0, #0
	stm r1!, {r0}
	str r0, [r4, #4]
	adds r1, #4
	cmp r2, #0x1b
	bls _080CE342
	stm r1!, {r0}
	stm r1!, {r0}
	cmp r2, #0x23
	bls _080CE342
	stm r1!, {r0}
	stm r1!, {r0}
_080CE342:
	movs r0, #0
	stm r1!, {r0}
	stm r1!, {r0}
	str r0, [r1]
	b _080CE354
_080CE34C:
	adds r0, r4, #0
	movs r1, #0
	bl memset
_080CE354:
	adds r0, r4, #0
_080CE356:
	pop {r4, pc}

	thumb_func_start _close_r
_close_r: @ 0x080CE358
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	ldr r4, _080CE380 @ =errno
	movs r1, #0
	str r1, [r4]
	bl _close
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080CE37A
	ldr r0, [r4]
	cmp r0, #0
	beq _080CE37A
	str r0, [r5]
_080CE37A:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_080CE380: .4byte errno

	thumb_func_start _fstat_r
_fstat_r: @ 0x080CE384
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	ldr r4, _080CE3AC @ =errno
	movs r2, #0
	str r2, [r4]
	bl _fstat
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080CE3A8
	ldr r0, [r4]
	cmp r0, #0
	beq _080CE3A8
	str r0, [r5]
_080CE3A8:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_080CE3AC: .4byte errno

	thumb_func_start abort
abort: @ 0x080CE3B0
	mov ip, r3
	mov r3, r8
	push {r3}
	mov r3, ip
	movs r2, #0x18
	ldr r3, _080CE3CC @ =0x00020022
	adds r0, r2, #0
	adds r1, r3, #0
	svc #0xab
	mov r8, r0
	pop {r3}
	mov r8, r3
	bx lr
	.align 2, 0
_080CE3CC: .4byte 0x00020022

	thumb_func_start isatty
isatty: @ 0x080CE3D0
	movs r0, #1
	bx lr

	thumb_func_start alarm
alarm: @ 0x080CE3D4
	bx lr
	.align 2, 0

	thumb_func_start _lseek_r
_lseek_r: @ 0x080CE3D8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	ldr r4, _080CE404 @ =errno
	movs r3, #0
	str r3, [r4]
	bl sub_80CE078
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080CE3FE
	ldr r0, [r4]
	cmp r0, #0
	beq _080CE3FE
	str r0, [r5]
_080CE3FE:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_080CE404: .4byte errno

	thumb_func_start sub_80CE408
sub_80CE408: @ 0x080CE408
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	ldr r4, _080CE434 @ =errno
	movs r3, #0
	str r3, [r4]
	bl _read
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080CE42E
	ldr r0, [r4]
	cmp r0, #0
	beq _080CE42E
	str r0, [r5]
_080CE42E:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_080CE434: .4byte errno
.endif

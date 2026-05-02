.include "asm/macros.inc"
.include "constants/constants.inc"

.section .rodata
.align 2 , 0

.text
.syntax unified
.arm

	thumb_func_start sub_80517FC
sub_80517FC: @ 0x080517FC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	mov sb, r1
	mov sl, r2
	mov r8, r3
	ldr r7, [sp, #0x28]
	cmp r7, #0
	bne _08051818
	mov r7, sp
_08051818:
	mov r4, sp
	adds r4, #1
	adds r0, r6, #0
	mov r1, sb
	mov r2, sl
	adds r3, r4, #0
	ldr r5, [sp, #0x2c]
	bl _call_via_r5
	adds r1, r0, #0
	cmp r1, #0
	bne _080518F2
	mov r1, r8
	adds r0, r6, r1
	mov r1, sb
	mov r2, sl
	adds r3, r4, #0
	bl _call_via_r5
	adds r1, r0, #0
	cmp r1, #0
	bne _080518B4
	mov r5, r8
	lsls r5, r5, #1
	adds r0, r6, r5
	mov r1, sb
	mov r2, sl
	adds r3, r4, #0
	ldr r5, [sp, #0x2c]
	bl _call_via_r5
	adds r1, r0, #0
	cmp r1, #0
	bne _08051874
	mov r0, r8
	cmp r0, #0
	ble _0805186C
	movs r0, #7
	ands r0, r6
	movs r1, #0x18
	subs r0, r1, r0
	b _080519DC
_0805186C:
	movs r0, #7
	ands r0, r6
	adds r0, #0x11
	b _080519DC
_08051874:
	cmp r1, #8
	bne _08051894
	ldrb r0, [r4]
	strb r0, [r7]
	mov r1, r8
	cmp r1, #0
	ble _0805188C
	movs r0, #7
	ands r0, r6
	mvns r0, r0
	adds r0, #0x10
	b _080519DC
_0805188C:
	movs r0, #7
	ands r0, r6
	adds r0, #8
	b _080519DC
_08051894:
	ldrb r0, [r4]
	strb r0, [r7]
	cmp r1, #0
	ble _080518AA
	subs r1, #1
	movs r0, #7
	ands r0, r6
	subs r1, r1, r0
	adds r0, r1, #0
	adds r0, #0x10
	b _080519DC
_080518AA:
	movs r0, #7
	ands r0, r6
	adds r0, r1, r0
	adds r0, #0x10
	b _080519DC
_080518B4:
	cmp r1, #8
	bne _080518D2
	ldrb r0, [r4]
	strb r0, [r7]
	mov r5, r8
	cmp r5, #0
	ble _080518CC
	movs r0, #7
	ands r0, r6
	mvns r0, r0
	adds r0, #8
	b _080519DC
_080518CC:
	movs r0, #7
	ands r0, r6
	b _080519DC
_080518D2:
	ldrb r0, [r4]
	strb r0, [r7]
	cmp r1, #0
	ble _080518E8
	subs r1, #1
	movs r0, #7
	ands r0, r6
	subs r1, r1, r0
	adds r0, r1, #0
	adds r0, #8
	b _080519DC
_080518E8:
	movs r0, #7
	ands r0, r6
	adds r0, r1, r0
	adds r0, #8
	b _080519DC
_080518F2:
	cmp r1, #8
	bne _080519C4
	ldrb r0, [r4]
	strb r0, [r7]
	mov r0, r8
	rsbs r0, r0, #0
	str r0, [sp, #4]
	adds r0, r6, r0
	mov r1, sb
	mov r2, sl
	adds r3, r4, #0
	ldr r5, [sp, #0x2c]
	bl _call_via_r5
	adds r1, r0, #0
	cmp r1, #8
	bne _0805198A
	ldrb r0, [r4]
	strb r0, [r7]
	ldr r0, [sp, #4]
	mov r1, r8
	subs r0, r0, r1
	adds r0, r6, r0
	mov r1, sb
	mov r2, sl
	adds r3, r4, #0
	bl _call_via_r5
	adds r1, r0, #0
	cmp r1, #8
	bne _0805194C
	ldrb r0, [r4]
	strb r0, [r7]
	mov r5, r8
	cmp r5, #0
	ble _08051944
	movs r0, #7
	ands r0, r6
	mvns r0, r0
	subs r0, #0x10
	b _080519DC
_08051944:
	movs r0, #7
	ands r0, r6
	subs r0, #0x18
	b _080519DC
_0805194C:
	cmp r1, #0
	bne _0805196A
	mov r0, r8
	cmp r0, #0
	ble _08051962
	movs r0, #7
	ands r0, r6
	movs r1, #9
	rsbs r1, r1, #0
	subs r0, r1, r0
	b _080519DC
_08051962:
	movs r0, #7
	ands r0, r6
	subs r0, #0x10
	b _080519DC
_0805196A:
	ldrb r0, [r4]
	strb r0, [r7]
	cmp r1, #0
	ble _08051980
	subs r1, #1
	movs r0, #7
	ands r0, r6
	subs r1, r1, r0
	adds r0, r1, #0
	subs r0, #0x10
	b _080519DC
_08051980:
	movs r0, #7
	ands r0, r6
	adds r0, r1, r0
	subs r0, #0x10
	b _080519DC
_0805198A:
	cmp r1, #0
	bne _080519A4
	mov r1, r8
	cmp r1, #0
	ble _0805199C
	movs r0, #7
	ands r0, r6
	mvns r0, r0
	b _080519DC
_0805199C:
	movs r0, #8
	rsbs r0, r0, #0
	orrs r0, r6
	b _080519DC
_080519A4:
	ldrb r0, [r4]
	strb r0, [r7]
	cmp r1, #0
	ble _080519BA
	subs r1, #1
	movs r0, #7
	ands r0, r6
	subs r1, r1, r0
	adds r0, r1, #0
	subs r0, #8
	b _080519DC
_080519BA:
	movs r0, #7
	ands r0, r6
	adds r0, r1, r0
	subs r0, #8
	b _080519DC
_080519C4:
	ldrb r0, [r4]
	strb r0, [r7]
	cmp r1, #0
	ble _080519D6
	subs r1, #1
	movs r0, #7
	ands r0, r6
	subs r0, r1, r0
	b _080519DC
_080519D6:
	movs r0, #7
	ands r0, r6
	adds r0, r1, r0
_080519DC:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80519EC
sub_80519EC: @ 0x080519EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	mov sb, r1
	mov sl, r2
	mov r8, r3
	ldr r0, [sp, #0x24]
	cmp r0, #0
	bne _08051A0A
	mov r1, sp
	str r1, [sp, #0x24]
_08051A0A:
	mov r5, sp
	adds r5, #1
	adds r0, r6, #0
	mov r1, sb
	mov r2, sl
	adds r3, r5, #0
	ldr r4, [sp, #0x28]
	bl _call_via_r4
	adds r1, r0, #0
	cmp r1, #0
	beq _08051A24
	b _08051BF8
_08051A24:
	mov r7, r8
	adds r0, r6, r7
	mov r1, sb
	mov r2, sl
	adds r3, r5, #0
	bl _call_via_r4
	adds r1, r0, #0
	cmp r1, #0
	beq _08051A3A
	b _08051BB6
_08051A3A:
	lsls r4, r7, #1
	adds r0, r6, r4
	mov r1, sb
	mov r2, sl
	adds r3, r5, #0
	ldr r7, [sp, #0x28]
	bl _call_via_r7
	adds r1, r0, #0
	cmp r1, #0
	beq _08051A52
	b _08051B72
_08051A52:
	add r4, r8
	adds r0, r6, r4
	mov r1, sb
	mov r2, sl
	adds r3, r5, #0
	bl _call_via_r7
	adds r1, r0, #0
	cmp r1, #0
	bne _08051B2E
	add r4, r8
	adds r0, r6, r4
	mov r1, sb
	mov r2, sl
	adds r3, r5, #0
	bl _call_via_r7
	adds r1, r0, #0
	cmp r1, #0
	bne _08051AEA
	add r4, r8
	adds r0, r6, r4
	mov r1, sb
	mov r2, sl
	adds r3, r5, #0
	bl _call_via_r7
	adds r1, r0, #0
	cmp r1, #0
	bne _08051AA6
	mov r0, r8
	cmp r0, #0
	ble _08051A9E
	movs r0, #7
	ands r0, r6
	movs r1, #0x30
	subs r0, r1, r0
	b _08051E4C
_08051A9E:
	movs r0, #7
	ands r0, r6
	adds r0, #0x29
	b _08051E4C
_08051AA6:
	cmp r1, #8
	bne _08051AC8
	ldrb r0, [r5]
	ldr r1, [sp, #0x24]
	strb r0, [r1]
	mov r2, r8
	cmp r2, #0
	ble _08051AC0
	movs r0, #7
	ands r0, r6
	mvns r0, r0
	adds r0, #0x28
	b _08051E4C
_08051AC0:
	movs r0, #7
	ands r0, r6
	adds r0, #0x20
	b _08051E4C
_08051AC8:
	ldrb r0, [r5]
	ldr r4, [sp, #0x24]
	strb r0, [r4]
	cmp r1, #0
	ble _08051AE0
	subs r1, #1
	movs r0, #7
	ands r0, r6
	subs r1, r1, r0
	adds r0, r1, #0
	adds r0, #0x28
	b _08051E4C
_08051AE0:
	movs r0, #7
	ands r0, r6
	adds r0, r1, r0
	adds r0, #0x28
	b _08051E4C
_08051AEA:
	cmp r1, #8
	bne _08051B0C
	ldrb r0, [r5]
	ldr r7, [sp, #0x24]
	strb r0, [r7]
	mov r0, r8
	cmp r0, #0
	ble _08051B04
	movs r0, #7
	ands r0, r6
	mvns r0, r0
	adds r0, #0x20
	b _08051E4C
_08051B04:
	movs r0, #7
	ands r0, r6
	adds r0, #0x18
	b _08051E4C
_08051B0C:
	ldrb r0, [r5]
	ldr r2, [sp, #0x24]
	strb r0, [r2]
	cmp r1, #0
	ble _08051B24
	subs r1, #1
	movs r0, #7
	ands r0, r6
	subs r1, r1, r0
	adds r0, r1, #0
	adds r0, #0x20
	b _08051E4C
_08051B24:
	movs r0, #7
	ands r0, r6
	adds r0, r1, r0
	adds r0, #0x20
	b _08051E4C
_08051B2E:
	cmp r1, #8
	bne _08051B50
	ldrb r0, [r5]
	ldr r4, [sp, #0x24]
	strb r0, [r4]
	mov r7, r8
	cmp r7, #0
	ble _08051B48
	movs r0, #7
	ands r0, r6
	mvns r0, r0
	adds r0, #0x18
	b _08051E4C
_08051B48:
	movs r0, #7
	ands r0, r6
	adds r0, #0x10
	b _08051E4C
_08051B50:
	ldrb r0, [r5]
	ldr r2, [sp, #0x24]
	strb r0, [r2]
	cmp r1, #0
	ble _08051B68
	subs r1, #1
	movs r0, #7
	ands r0, r6
	subs r1, r1, r0
	adds r0, r1, #0
	adds r0, #0x18
	b _08051E4C
_08051B68:
	movs r0, #7
	ands r0, r6
	adds r0, r1, r0
	adds r0, #0x18
	b _08051E4C
_08051B72:
	cmp r1, #8
	bne _08051B94
	ldrb r0, [r5]
	ldr r4, [sp, #0x24]
	strb r0, [r4]
	mov r7, r8
	cmp r7, #0
	ble _08051B8C
	movs r0, #7
	ands r0, r6
	mvns r0, r0
	adds r0, #0x10
	b _08051E4C
_08051B8C:
	movs r0, #7
	ands r0, r6
	adds r0, #8
	b _08051E4C
_08051B94:
	ldrb r0, [r5]
	ldr r2, [sp, #0x24]
	strb r0, [r2]
	cmp r1, #0
	ble _08051BAC
	subs r1, #1
	movs r0, #7
	ands r0, r6
	subs r1, r1, r0
	adds r0, r1, #0
	adds r0, #0x10
	b _08051E4C
_08051BAC:
	movs r0, #7
	ands r0, r6
	adds r0, r1, r0
	adds r0, #0x10
	b _08051E4C
_08051BB6:
	cmp r1, #8
	bne _08051BD6
	ldrb r0, [r5]
	ldr r4, [sp, #0x24]
	strb r0, [r4]
	mov r7, r8
	cmp r7, #0
	ble _08051BD0
	movs r0, #7
	ands r0, r6
	mvns r0, r0
	adds r0, #8
	b _08051E4C
_08051BD0:
	movs r0, #7
	ands r0, r6
	b _08051E4C
_08051BD6:
	ldrb r0, [r5]
	ldr r2, [sp, #0x24]
	strb r0, [r2]
	cmp r1, #0
	ble _08051BEE
	subs r1, #1
	movs r0, #7
	ands r0, r6
	subs r1, r1, r0
	adds r0, r1, #0
	adds r0, #8
	b _08051E4C
_08051BEE:
	movs r0, #7
	ands r0, r6
	adds r0, r1, r0
	adds r0, #8
	b _08051E4C
_08051BF8:
	cmp r1, #8
	beq _08051BFE
	b _08051E32
_08051BFE:
	ldrb r0, [r5]
	ldr r4, [sp, #0x24]
	strb r0, [r4]
	mov r7, r8
	rsbs r4, r7, #0
	adds r0, r6, r4
	mov r1, sb
	mov r2, sl
	adds r3, r5, #0
	ldr r7, [sp, #0x28]
	bl _call_via_r7
	adds r1, r0, #0
	cmp r1, #8
	beq _08051C1E
	b _08051DF6
_08051C1E:
	ldrb r0, [r5]
	ldr r1, [sp, #0x24]
	strb r0, [r1]
	mov r2, r8
	subs r4, r4, r2
	adds r0, r6, r4
	mov r1, sb
	mov r2, sl
	adds r3, r5, #0
	bl _call_via_r7
	adds r1, r0, #0
	cmp r1, #8
	beq _08051C3C
	b _08051DD0
_08051C3C:
	ldrb r0, [r5]
	ldr r7, [sp, #0x24]
	strb r0, [r7]
	mov r0, r8
	subs r4, r4, r0
	adds r0, r6, r4
	mov r1, sb
	mov r2, sl
	adds r3, r5, #0
	ldr r7, [sp, #0x28]
	bl _call_via_r7
	adds r1, r0, #0
	cmp r1, #8
	beq _08051C5C
	b _08051D90
_08051C5C:
	ldrb r0, [r5]
	ldr r1, [sp, #0x24]
	strb r0, [r1]
	mov r2, r8
	subs r4, r4, r2
	adds r0, r6, r4
	mov r1, sb
	mov r2, sl
	adds r3, r5, #0
	bl _call_via_r7
	adds r1, r0, #0
	cmp r1, #8
	bne _08051D50
	ldrb r0, [r5]
	ldr r7, [sp, #0x24]
	strb r0, [r7]
	mov r0, r8
	subs r4, r4, r0
	adds r0, r6, r4
	mov r1, sb
	mov r2, sl
	adds r3, r5, #0
	ldr r7, [sp, #0x28]
	bl _call_via_r7
	adds r1, r0, #0
	cmp r1, #8
	bne _08051D10
	ldrb r0, [r5]
	ldr r1, [sp, #0x24]
	strb r0, [r1]
	mov r2, r8
	subs r4, r4, r2
	adds r0, r6, r4
	mov r1, sb
	mov r2, sl
	adds r3, r5, #0
	bl _call_via_r7
	adds r1, r0, #0
	cmp r1, #8
	bne _08051CD0
	ldrb r0, [r5]
	ldr r4, [sp, #0x24]
	strb r0, [r4]
	mov r7, r8
	cmp r7, #0
	ble _08051CC8
	movs r0, #7
	ands r0, r6
	mvns r0, r0
	subs r0, #0x28
	b _08051E4C
_08051CC8:
	movs r0, #7
	ands r0, r6
	subs r0, #0x30
	b _08051E4C
_08051CD0:
	cmp r1, #0
	bne _08051CEE
	mov r0, r8
	cmp r0, #0
	ble _08051CE6
	movs r0, #7
	ands r0, r6
	movs r1, #0x21
	rsbs r1, r1, #0
	subs r0, r1, r0
	b _08051E4C
_08051CE6:
	movs r0, #7
	ands r0, r6
	subs r0, #0x28
	b _08051E4C
_08051CEE:
	ldrb r0, [r5]
	ldr r2, [sp, #0x24]
	strb r0, [r2]
	cmp r1, #0
	ble _08051D06
	subs r1, #1
	movs r0, #7
	ands r0, r6
	subs r1, r1, r0
	adds r0, r1, #0
	subs r0, #0x28
	b _08051E4C
_08051D06:
	movs r0, #7
	ands r0, r6
	adds r0, r1, r0
	subs r0, #0x28
	b _08051E4C
_08051D10:
	cmp r1, #0
	bne _08051D2E
	mov r4, r8
	cmp r4, #0
	ble _08051D26
	movs r0, #7
	ands r0, r6
	movs r1, #0x19
	rsbs r1, r1, #0
	subs r0, r1, r0
	b _08051E4C
_08051D26:
	movs r0, #7
	ands r0, r6
	subs r0, #0x20
	b _08051E4C
_08051D2E:
	ldrb r0, [r5]
	ldr r7, [sp, #0x24]
	strb r0, [r7]
	cmp r1, #0
	ble _08051D46
	subs r1, #1
	movs r0, #7
	ands r0, r6
	subs r1, r1, r0
	adds r0, r1, #0
	subs r0, #0x20
	b _08051E4C
_08051D46:
	movs r0, #7
	ands r0, r6
	adds r0, r1, r0
	subs r0, #0x20
	b _08051E4C
_08051D50:
	cmp r1, #0
	bne _08051D6E
	mov r0, r8
	cmp r0, #0
	ble _08051D66
	movs r0, #7
	ands r0, r6
	movs r1, #0x11
	rsbs r1, r1, #0
	subs r0, r1, r0
	b _08051E4C
_08051D66:
	movs r0, #7
	ands r0, r6
	subs r0, #0x18
	b _08051E4C
_08051D6E:
	ldrb r0, [r5]
	ldr r2, [sp, #0x24]
	strb r0, [r2]
	cmp r1, #0
	ble _08051D86
	subs r1, #1
	movs r0, #7
	ands r0, r6
	subs r1, r1, r0
	adds r0, r1, #0
	subs r0, #0x18
	b _08051E4C
_08051D86:
	movs r0, #7
	ands r0, r6
	adds r0, r1, r0
	subs r0, #0x18
	b _08051E4C
_08051D90:
	cmp r1, #0
	bne _08051DAE
	mov r4, r8
	cmp r4, #0
	ble _08051DA6
_08051D9A:
	movs r0, #7
	ands r0, r6
	movs r1, #9
	rsbs r1, r1, #0
	subs r0, r1, r0
	b _08051E4C
_08051DA6:
	movs r0, #7
	ands r0, r6
	subs r0, #0x10
	b _08051E4C
_08051DAE:
	ldrb r0, [r5]
	ldr r7, [sp, #0x24]
	strb r0, [r7]
	cmp r1, #0
	ble _08051DC6
_08051DB8:
	subs r1, #1
	movs r0, #7
	ands r0, r6
	subs r1, r1, r0
	adds r0, r1, #0
	subs r0, #0x10
	b _08051E4C
_08051DC6:
	movs r0, #7
	ands r0, r6
	adds r0, r1, r0
	subs r0, #0x10
	b _08051E4C
_08051DD0:
	cmp r1, #0
	bne _08051DE2
	mov r0, r8
	cmp r0, #0
	bgt _08051D9A
	movs r0, #7
	ands r0, r6
	subs r0, #0x10
	b _08051E4C
_08051DE2:
	ldrb r0, [r5]
	ldr r2, [sp, #0x24]
	strb r0, [r2]
	cmp r1, #0
	bgt _08051DB8
	movs r0, #7
	ands r0, r6
	adds r0, r1, r0
	subs r0, #0x10
	b _08051E4C
_08051DF6:
	cmp r1, #0
	bne _08051E10
	mov r4, r8
	cmp r4, #0
	ble _08051E08
	movs r0, #7
	ands r0, r6
	mvns r0, r0
	b _08051E4C
_08051E08:
	movs r0, #8
	rsbs r0, r0, #0
	orrs r0, r6
	b _08051E4C
_08051E10:
	ldrb r0, [r5]
	ldr r7, [sp, #0x24]
	strb r0, [r7]
	cmp r1, #0
	ble _08051E28
	subs r1, #1
	movs r0, #7
	ands r0, r6
	subs r1, r1, r0
	adds r0, r1, #0
	subs r0, #8
	b _08051E4C
_08051E28:
	movs r0, #7
	ands r0, r6
	adds r0, r1, r0
	subs r0, #8
	b _08051E4C
_08051E32:
	ldrb r0, [r5]
	ldr r2, [sp, #0x24]
	strb r0, [r2]
	cmp r1, #0
	ble _08051E46
	subs r1, #1
	movs r0, #7
	ands r0, r6
	subs r0, r1, r0
	b _08051E4C
_08051E46:
	movs r0, #7
	ands r0, r6
	adds r0, r1, r0
_08051E4C:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8051E5C
sub_8051E5C: @ 0x08051E5C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r3, r0, #0
	adds r4, r1, #0
	adds r7, r2, #0
	cmp r3, #0
	blt _08051E84
	ldr r0, _08051E80 @ =gRefCollision
	ldr r0, [r0]
	ldr r0, [r0, #0x1c]
	subs r1, r0, #1
	adds r0, r3, #0
	cmp r0, r1
	bls _08051E86
	adds r0, r1, #0
	b _08051E86
	.align 2, 0
_08051E80: .4byte gRefCollision
_08051E84:
	movs r0, #0
_08051E86:
	adds r3, r0, #0
	cmp r4, #0
	blt _08051EA4
	ldr r0, _08051EA0 @ =gRefCollision
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	subs r0, #1
	adds r1, r4, #0
	cmp r1, r0
	bls _08051EA6
	adds r1, r0, #0
	b _08051EA6
	.align 2, 0
_08051EA0: .4byte gRefCollision
_08051EA4:
	movs r1, #0
_08051EA6:
	adds r4, r1, #0
	movs r0, #1
	mov r8, r0
	adds r2, r7, #0
	ands r2, r0
	adds r0, r3, #0
	bl sub_80522AC
	adds r5, r0, #0
	ldr r3, _08051F3C @ =0x000003FF
	ands r3, r5
	movs r6, #7
	adds r2, r6, #0
	ands r2, r4
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r5
	cmp r0, #0
	beq _08051ECE
	subs r2, r6, r2
_08051ECE:
	ldr r0, _08051F40 @ =gRefCollision
	ldr r4, [r0]
	lsls r0, r3, #3
	ldr r1, [r4]
	adds r0, r0, r2
	adds r1, r1, r0
	movs r2, #0
	ldrsb r2, [r1, r2]
	movs r0, #0xf
	ands r2, r0
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _08051EF0
	movs r0, #0x10
	rsbs r0, r0, #0
	orrs r2, r0
_08051EF0:
	movs r0, #8
	rsbs r0, r0, #0
	cmp r2, r0
	bne _08051EFA
	movs r2, #8
_08051EFA:
	movs r0, #0x80
	ands r0, r7
	cmp r0, #0
	beq _08051F1C
	lsrs r0, r3, #3
	ldr r1, [r4, #0x14]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	ands r3, r6
	lsls r1, r3, #1
	asrs r0, r1
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _08051F1C
	movs r2, #0
_08051F1C:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r5
	cmp r0, #0
	beq _08051F48
	cmp r2, #8
	beq _08051F44
	cmp r2, #0
	beq _08051F44
	adds r0, r2, #0
	adds r0, #8
	cmp r2, #0
	ble _08051F46
	subs r0, #0x10
	b _08051F46
	.align 2, 0
_08051F3C: .4byte 0x000003FF
_08051F40: .4byte gRefCollision
_08051F44:
	adds r0, r2, #0
_08051F46:
	adds r2, r0, #0
_08051F48:
	adds r0, r2, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8051F54
sub_8051F54: @ 0x08051F54
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r3, r0, #0
	adds r4, r1, #0
	adds r7, r2, #0
	cmp r4, #0
	blt _08051F7C
	ldr r0, _08051F78 @ =gRefCollision
	ldr r0, [r0]
	ldr r0, [r0, #0x1c]
	subs r1, r0, #1
	adds r0, r4, #0
	cmp r0, r1
	bls _08051F7E
	adds r0, r1, #0
	b _08051F7E
	.align 2, 0
_08051F78: .4byte gRefCollision
_08051F7C:
	movs r0, #0
_08051F7E:
	adds r4, r0, #0
	cmp r3, #0
	blt _08051F9C
	ldr r0, _08051F98 @ =gRefCollision
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	subs r1, r0, #1
	adds r0, r3, #0
	cmp r0, r1
	bls _08051F9E
	adds r0, r1, #0
	b _08051F9E
	.align 2, 0
_08051F98: .4byte gRefCollision
_08051F9C:
	movs r0, #0
_08051F9E:
	adds r3, r0, #0
	movs r0, #1
	mov r8, r0
	adds r2, r7, #0
	ands r2, r0
	adds r0, r4, #0
	adds r1, r3, #0
	bl sub_80522AC
	adds r5, r0, #0
	ldr r3, _08052024 @ =0x000003FF
	ands r3, r5
	movs r6, #7
	adds r2, r6, #0
	ands r2, r4
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r5
	cmp r0, #0
	beq _08051FC8
	subs r2, r6, r2
_08051FC8:
	ldr r0, _08052028 @ =gRefCollision
	ldr r4, [r0]
	lsls r0, r3, #3
	ldr r1, [r4]
	adds r0, r0, r2
	adds r1, r1, r0
	movs r2, #0
	ldrsb r2, [r1, r2]
	asrs r2, r2, #4
	movs r0, #8
	rsbs r0, r0, #0
	cmp r2, r0
	bne _08051FE4
	movs r2, #8
_08051FE4:
	movs r0, #0x80
	ands r0, r7
	cmp r0, #0
	beq _08052006
	lsrs r0, r3, #3
	ldr r1, [r4, #0x14]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	ands r3, r6
	lsls r1, r3, #1
	asrs r0, r1
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _08052006
	movs r2, #0
_08052006:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r5
	cmp r0, #0
	beq _08052030
	cmp r2, #8
	beq _0805202C
	cmp r2, #0
	beq _0805202C
	adds r0, r2, #0
	adds r0, #8
	cmp r2, #0
	ble _0805202E
	subs r0, #0x10
	b _0805202E
	.align 2, 0
_08052024: .4byte 0x000003FF
_08052028: .4byte gRefCollision
_0805202C:
	adds r0, r2, #0
_0805202E:
	adds r2, r0, #0
_08052030:
	adds r0, r2, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_805203C
sub_805203C: @ 0x0805203C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	adds r5, r1, #0
	mov r8, r2
	mov sl, r3
	cmp r4, #0
	blt _08052068
	ldr r0, _08052064 @ =gRefCollision
	ldr r0, [r0]
	ldr r0, [r0, #0x1c]
	subs r1, r0, #1
	adds r0, r4, #0
	cmp r0, r1
	bls _0805206A
	adds r0, r1, #0
	b _0805206A
	.align 2, 0
_08052064: .4byte gRefCollision
_08052068:
	movs r0, #0
_0805206A:
	adds r4, r0, #0
	cmp r5, #0
	blt _08052088
	ldr r0, _08052084 @ =gRefCollision
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	subs r0, #1
	adds r1, r5, #0
	cmp r1, r0
	bls _0805208A
	adds r1, r0, #0
	b _0805208A
	.align 2, 0
_08052084: .4byte gRefCollision
_08052088:
	movs r1, #0
_0805208A:
	adds r5, r1, #0
	movs r0, #1
	mov sb, r0
	mov r2, r8
	ands r2, r0
	adds r0, r4, #0
	bl sub_80522AC
	adds r4, r0, #0
	ldr r6, _08052124 @ =0x000003FF
	ands r6, r4
	movs r7, #7
	adds r3, r7, #0
	ands r3, r5
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r4
	cmp r0, #0
	beq _080520B2
	subs r3, r7, r3
_080520B2:
	ldr r2, _08052128 @ =gRefCollision
	ldr r5, [r2]
	lsls r0, r6, #3
	ldr r1, [r5]
	adds r0, r0, r3
	adds r1, r1, r0
	movs r3, #0
	ldrsb r3, [r1, r3]
	movs r0, #0xf
	ands r3, r0
	movs r0, #8
	ands r0, r3
	cmp r0, #0
	beq _080520D4
	movs r0, #0x10
	rsbs r0, r0, #0
	orrs r3, r0
_080520D4:
	movs r0, #8
	rsbs r0, r0, #0
	cmp r3, r0
	bne _080520DE
	movs r3, #8
_080520DE:
	movs r0, #0x80
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _08052104
	lsrs r0, r6, #3
	ldr r1, [r5, #0x14]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r6, #0
	ands r0, r7
	lsls r0, r0, #1
	asrs r1, r0
	mov r0, sb
	ands r1, r0
	cmp r1, #0
	beq _08052104
	movs r3, #0
_08052104:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r4
	cmp r0, #0
	beq _08052130
	cmp r3, #8
	beq _0805212C
	cmp r3, #0
	beq _0805212C
	adds r0, r3, #0
	adds r0, #8
	cmp r3, #0
	ble _0805212E
	subs r0, #0x10
	b _0805212E
	.align 2, 0
_08052124: .4byte 0x000003FF
_08052128: .4byte gRefCollision
_0805212C:
	adds r0, r3, #0
_0805212E:
	adds r3, r0, #0
_08052130:
	ldr r0, [r2]
	ldr r0, [r0, #4]
	adds r0, r0, r6
	ldrb r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r4
	cmp r0, #0
	beq _0805214C
	movs r0, #0x80
	rsbs r0, r0, #0
	subs r0, r0, r2
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_0805214C:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r4
	cmp r0, #0
	beq _08052166
	cmp r3, #0
	beq _08052162
	rsbs r0, r2, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _08052164
_08052162:
	adds r0, r2, #0
_08052164:
	adds r2, r0, #0
_08052166:
	mov r1, sl
	strb r2, [r1]
	adds r0, r3, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_805217C
sub_805217C: @ 0x0805217C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	adds r5, r1, #0
	mov r8, r2
	mov sl, r3
	cmp r5, #0
	blt _080521A8
	ldr r0, _080521A4 @ =gRefCollision
	ldr r0, [r0]
	ldr r0, [r0, #0x1c]
	subs r1, r0, #1
	adds r0, r5, #0
	cmp r0, r1
	bls _080521AA
	adds r0, r1, #0
	b _080521AA
	.align 2, 0
_080521A4: .4byte gRefCollision
_080521A8:
	movs r0, #0
_080521AA:
	adds r5, r0, #0
	cmp r4, #0
	blt _080521C8
	ldr r0, _080521C4 @ =gRefCollision
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	subs r1, r0, #1
	adds r0, r4, #0
	cmp r0, r1
	bls _080521CA
	adds r0, r1, #0
	b _080521CA
	.align 2, 0
_080521C4: .4byte gRefCollision
_080521C8:
	movs r0, #0
_080521CA:
	adds r4, r0, #0
	movs r0, #1
	mov sb, r0
	mov r2, r8
	ands r2, r0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_80522AC
	adds r4, r0, #0
	ldr r7, _08052254 @ =0x000003FF
	ands r7, r4
	movs r6, #7
	adds r3, r6, #0
	ands r3, r5
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r4
	cmp r0, #0
	beq _080521F4
	subs r3, r6, r3
_080521F4:
	ldr r2, _08052258 @ =gRefCollision
	ldr r5, [r2]
	lsls r0, r7, #3
	ldr r1, [r5]
	adds r0, r0, r3
	adds r1, r1, r0
	movs r3, #0
	ldrsb r3, [r1, r3]
	asrs r3, r3, #4
	movs r0, #8
	rsbs r0, r0, #0
	cmp r3, r0
	bne _08052210
	movs r3, #8
_08052210:
	movs r0, #0x80
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _08052236
	lsrs r0, r7, #3
	ldr r1, [r5, #0x14]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r7, #0
	ands r0, r6
	lsls r0, r0, #1
	asrs r1, r0
	mov r0, sb
	ands r1, r0
	cmp r1, #0
	beq _08052236
	movs r3, #0
_08052236:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r4
	cmp r0, #0
	beq _08052260
	cmp r3, #8
	beq _0805225C
	cmp r3, #0
	beq _0805225C
	adds r0, r3, #0
	adds r0, #8
	cmp r3, #0
	ble _0805225E
	subs r0, #0x10
	b _0805225E
	.align 2, 0
_08052254: .4byte 0x000003FF
_08052258: .4byte gRefCollision
_0805225C:
	adds r0, r3, #0
_0805225E:
	adds r3, r0, #0
_08052260:
	ldr r0, [r2]
	ldr r0, [r0, #4]
	adds r0, r0, r7
	ldrb r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r4
	cmp r0, #0
	beq _08052278
	rsbs r0, r2, #0
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_08052278:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r4
	cmp r0, #0
	beq _08052296
	cmp r3, #0
	beq _08052292
	movs r0, #0x80
	rsbs r0, r0, #0
	subs r0, r0, r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _08052294
_08052292:
	adds r0, r2, #0
_08052294:
	adds r2, r0, #0
_08052296:
	mov r1, sl
	strb r2, [r1]
	adds r0, r3, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80522AC
sub_80522AC: @ 0x080522AC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r1, #0
	mov sb, r2
	asrs r4, r0, #3
	ldr r5, _080522C8 @ =0x03000400
	ldr r0, [r5]
	cmp r0, r4
	bne _080522CC
	ldr r7, [r5, #8]
	ldr r0, [r5, #4]
	b _080522E4
	.align 2, 0
_080522C8: .4byte 0x03000400
_080522CC:
	adds r0, r4, #0
	movs r1, #0xc
	bl Div
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	subs r1, r4, r1
	str r4, [r5]
	str r0, [r5, #4]
	str r1, [r5, #8]
	adds r7, r1, #0
_080522E4:
	mov r8, r0
	asrs r4, r6, #3
	ldr r6, _080522F8 @ =0x03000410
	ldr r0, [r6]
	cmp r0, r4
	bne _080522FC
	ldr r5, [r6, #8]
	ldr r3, [r6, #4]
	b _08052316
	.align 2, 0
_080522F8: .4byte 0x03000410
_080522FC:
	adds r0, r4, #0
	movs r1, #0xc
	bl Div
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	subs r1, r4, r1
	adds r3, r0, #0
	str r4, [r6]
	str r3, [r6, #4]
	str r1, [r6, #8]
	adds r5, r1, #0
_08052316:
	ldr r0, _08052358 @ =gRefCollision
	ldr r4, [r0]
	mov r1, sb
	lsls r0, r1, #2
	adds r1, r4, #0
	adds r1, #0xc
	adds r1, r1, r0
	ldrh r0, [r4, #0x18]
	muls r0, r3, r0
	add r0, r8
	ldr r1, [r1]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r2, [r0]
	lsls r1, r5, #3
	lsls r0, r5, #2
	adds r1, r1, r0
	adds r1, r1, r7
	lsls r3, r2, #8
	lsls r2, r2, #5
	lsls r1, r1, #1
	ldr r0, [r4, #8]
	adds r0, r0, r3
	adds r0, r0, r2
	adds r0, r0, r1
	ldrh r0, [r0]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08052358: .4byte gRefCollision

	thumb_func_start sub_805235C
sub_805235C: @ 0x0805235C
	sub sp, #4
	movs r3, #0
	str r3, [sp]
	ldr r0, _08052384 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r1, _08052388 @ =0x03000400
	str r1, [r0, #4]
	ldr r2, _0805238C @ =0x85000003
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	str r3, [sp]
	mov r1, sp
	str r1, [r0]
	ldr r1, _08052390 @ =0x03000410
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	add sp, #4
	bx lr
	.align 2, 0
_08052384: .4byte 0x040000D4
_08052388: .4byte 0x03000400
_0805238C: .4byte 0x85000003
_08052390: .4byte 0x03000410

@ Collision (of projectiles with Player?)
	thumb_func_start sub_8052394
sub_8052394: @ 0x08052394
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	mov r8, r3
	ldr r6, [sp, #0x1c]
	cmp r6, #0
	bne _080523A8
	mov r6, sp
_080523A8:
	mov r4, sp
	adds r4, #1
	adds r0, r5, #0
	adds r3, r4, #0
	ldr r7, [sp, #0x20]
	bl _call_via_r7
	adds r1, r0, #0
	cmp r1, #0
	bne _080523D4
	mov r0, r8
	cmp r0, #0
	ble _080523CC
	movs r0, #7
	ands r0, r5
	movs r1, #8
	subs r0, r1, r0
	b _0805240A
_080523CC:
	movs r0, #7
	ands r0, r5
	adds r0, #1
	b _0805240A
_080523D4:
	cmp r1, #8
	bne _080523F2
	ldrb r0, [r4]
	strb r0, [r6]
	mov r7, r8
	cmp r7, #0
	ble _080523EA
	movs r0, #7
	ands r0, r5
	mvns r0, r0
	b _0805240A
_080523EA:
	movs r0, #8
	rsbs r0, r0, #0
	orrs r0, r5
	b _0805240A
_080523F2:
	ldrb r0, [r4]
	strb r0, [r6]
	cmp r1, #0
	ble _08052404
	subs r1, #1
	movs r0, #7
	ands r0, r5
	subs r0, r1, r0
	b _0805240A
_08052404:
	movs r0, #7
	ands r0, r5
	adds r0, r1, r0
_0805240A:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8052418
sub_8052418: @ 0x08052418
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r3, #0
	ldr r3, [sp, #0xc]
	bl _call_via_r3
	adds r1, r0, #0
	cmp r1, #0
	bne _08052440
	cmp r5, #0
	ble _08052438
	movs r0, #7
	ands r0, r4
	movs r1, #8
	subs r0, r1, r0
	b _0805246C
_08052438:
	movs r0, #7
	ands r0, r4
	adds r0, #1
	b _0805246C
_08052440:
	cmp r1, #8
	bne _08052458
	cmp r5, #0
	ble _08052450
	movs r0, #7
	ands r0, r4
	mvns r0, r0
	b _0805246C
_08052450:
	movs r0, #8
	rsbs r0, r0, #0
	orrs r0, r4
	b _0805246C
_08052458:
	cmp r1, #0
	ble _08052466
	subs r1, #1
	movs r0, #7
	ands r0, r4
	subs r0, r1, r0
	b _0805246C
_08052466:
	movs r0, #7
	ands r0, r4
	adds r0, r1, r0
_0805246C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start Task_8052474
Task_8052474: @ 0x08052474
	push {r4, r5, lr}
	ldr r0, _08052498 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	ldr r0, [r3, #0xc]
	cmp r0, #0
	beq _0805248E
	ldr r0, [r3]
	cmp r0, #0
	bgt _0805249C
_0805248E:
	adds r0, r2, #0
	bl TaskDestroy
	b _0805255C
	.align 2, 0
_08052498: .4byte gCurTask
_0805249C:
	ldr r5, _080524C0 @ =gCamera
	ldr r0, [r3, #0x10]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080524D0
	ldr r2, _080524C4 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _080524C8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080524CC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x17
	adds r1, r0, #0
	subs r1, #0xff
	b _080524DE
	.align 2, 0
_080524C0: .4byte gCamera
_080524C4: .4byte gPseudoRandom
_080524C8: .4byte 0x00196225
_080524CC: .4byte 0x3C6EF35F
_080524D0:
	ldr r0, _080524F8 @ =gSineTable
	ldr r1, [r3, #0x14]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x16
_080524DE:
	ldr r0, [r3]
	muls r0, r1, r0
	asrs r2, r0, #0x10
	ldr r0, [r3, #0x10]
	movs r1, #3
	ands r1, r0
	adds r4, r0, #0
	cmp r1, #1
	beq _080524FC
	cmp r1, #2
	beq _08052504
	b _0805250E
	.align 2, 0
_080524F8: .4byte gSineTable
_080524FC:
	cmp r2, #0
	bge _0805250E
	rsbs r2, r2, #0
	b _0805250E
_08052504:
	adds r0, r2, #0
	cmp r2, #0
	bge _0805250C
	rsbs r0, r2, #0
_0805250C:
	rsbs r2, r0, #0
_0805250E:
	movs r0, #0x20
	ands r0, r4
	cmp r0, #0
	beq _08052524
	ldr r0, _08052564 @ =gStageData
	adds r0, #0xae
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0805253A
_08052524:
	movs r0, #0x40
	ands r0, r4
	cmp r0, #0
	beq _0805252E
	strh r2, [r5, #0xc]
_0805252E:
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0805253A
	strh r2, [r5, #0xe]
_0805253A:
	ldr r0, [r3, #0xc]
	cmp r0, #0
	ble _08052544
	subs r0, #1
	str r0, [r3, #0xc]
_08052544:
	ldr r1, [r3]
	cmp r1, #0
	ble _08052550
	ldr r0, [r3, #4]
	subs r0, r1, r0
	str r0, [r3]
_08052550:
	ldr r0, [r3, #0x14]
	ldr r1, [r3, #8]
	adds r0, r0, r1
	ldr r1, _08052568 @ =0x000003FF
	ands r0, r1
	str r0, [r3, #0x14]
_0805255C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08052564: .4byte gStageData
_08052568: .4byte 0x000003FF

	thumb_func_start sub_805256C
sub_805256C: @ 0x0805256C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	mov r8, r3
	ldr r7, [sp, #0x1c]
	ldr r0, _080525B4 @ =Task_8052474
	ldr r2, _080525B8 @ =0x00000EFF
	ldr r1, _080525BC @ =TaskDestructor_80525C0
	str r1, [sp]
	movs r1, #0x18
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r1, r1, r2
	str r4, [r1]
	str r5, [r1, #4]
	str r6, [r1, #8]
	movs r2, #0
	str r2, [r1, #0x14]
	mov r2, r8
	str r2, [r1, #0xc]
	str r7, [r1, #0x10]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080525B4: .4byte Task_8052474
_080525B8: .4byte 0x00000EFF
_080525BC: .4byte TaskDestructor_80525C0

	thumb_func_start TaskDestructor_80525C0
TaskDestructor_80525C0: @ 0x080525C0
	push {lr}
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	ldr r3, _080525EC @ =gCamera
	ldr r0, [r2, #0x10]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080525DA
	movs r0, #0
	strh r0, [r3, #0xc]
_080525DA:
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080525E8
	movs r0, #0
	strh r0, [r3, #0xe]
_080525E8:
	pop {r0}
	bx r0
	.align 2, 0
_080525EC: .4byte gCamera

	thumb_func_start sub_80525F0
sub_80525F0: @ 0x080525F0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r0, _08052668 @ =Task_8052798
	ldr r1, _0805266C @ =0x0000043C
	ldr r2, _08052670 @ =0x0000FFFE
	ldr r3, _08052674 @ =TaskDestructor_8052C18
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldr r1, _08052678 @ =gCamera
	str r0, [r1, #0x54]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	ldr r1, _0805267C @ =0x0000FFFF
	strh r1, [r0, #4]
	movs r1, #1
	rsbs r1, r1, #0
	strh r1, [r0, #6]
	movs r1, #0xff
	strb r1, [r0, #2]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #1]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r1, r5
	str r1, [r0, #8]
	str r6, [r0, #0xc]
	bl sub_8052D2C
	ldr r0, _08052680 @ =0x03000014
	adds r4, r4, r0
	ldr r0, _08052684 @ =0x06014D80
	str r0, [r4]
	movs r2, #0
	movs r1, #0
	ldr r0, _08052688 @ =0x000003CD
	strh r0, [r4, #0xc]
	strb r2, [r4, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	strh r1, [r4, #0x14]
	strh r1, [r4, #0x16]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	str r1, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08052668: .4byte Task_8052798
_0805266C: .4byte 0x0000043C
_08052670: .4byte 0x0000FFFE
_08052674: .4byte TaskDestructor_8052C18
_08052678: .4byte gCamera
_0805267C: .4byte 0x0000FFFF
_08052680: .4byte 0x03000014
_08052684: .4byte 0x06014D80
_08052688: .4byte 0x000003CD

	thumb_func_start sub_805268C
sub_805268C: @ 0x0805268C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r1, r2, #0
	asrs r7, r3, #4
	adds r0, r7, #0
	subs r7, #1
	cmp r0, #0
	beq _0805273E
	ldr r6, _08052744 @ =0x7BDE7BDE
	ldr r3, _08052748 @ =0x739C739C
	adds r2, r3, #0
	ands r2, r1
_080526A6:
	ldm r4!, {r0}
	adds r1, r0, #0
	ands r1, r6
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r5!, {r1}
	ldm r4!, {r0}
	adds r1, r0, #0
	ands r1, r6
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r5!, {r1}
	ldm r4!, {r0}
	adds r1, r0, #0
	ands r1, r6
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r5!, {r1}
	ldm r4!, {r0}
	adds r1, r0, #0
	ands r1, r6
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r5!, {r1}
	ldm r4!, {r0}
	adds r1, r0, #0
	ands r1, r6
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r5!, {r1}
	ldm r4!, {r0}
	adds r1, r0, #0
	ands r1, r6
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r5!, {r1}
	ldm r4!, {r0}
	adds r1, r0, #0
	ands r1, r6
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r5!, {r1}
	ldm r4!, {r0}
	adds r1, r0, #0
	ands r1, r6
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r5!, {r1}
	adds r0, r7, #0
	subs r7, #1
	cmp r0, #0
	bne _080526A6
_0805273E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08052744: .4byte 0x7BDE7BDE
_08052748: .4byte 0x739C739C

	thumb_func_start sub_805274C
sub_805274C: @ 0x0805274C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, r3, #0
	subs r3, #1
	cmp r0, #0
	beq _08052790
	movs r6, #0x1f
	movs r7, #0x1f
_0805275E:
	ldrh r0, [r4]
	adds r2, r7, #0
	ands r2, r0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x15
	ands r1, r7
	lsrs r0, r0, #0x1a
	ands r0, r7
	lsrs r2, r2, #1
	ands r2, r6
	lsrs r1, r1, #1
	ands r1, r6
	lsls r1, r1, #5
	orrs r2, r1
	lsrs r0, r0, #1
	ands r0, r6
	lsls r0, r0, #0xa
	orrs r2, r0
	strh r2, [r5]
	adds r5, #2
	adds r4, #2
	adds r0, r3, #0
	subs r3, #1
	cmp r0, #0
	bne _0805275E
_08052790:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Task_8052798
Task_8052798: @ 0x08052798
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x70
	ldr r0, _080527D0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldr r0, _080527D4 @ =gCamera
	str r0, [sp, #0x68]
	movs r1, #0
	mov sb, r1
	adds r0, r7, #0
	bl sub_8052B84
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080527D8
	movs r0, #1
	strb r0, [r7]
	ldr r1, [sp, #0x68]
	adds r1, #0x69
	strb r0, [r1]
	b _080527E2
	.align 2, 0
_080527D0: .4byte gCurTask
_080527D4: .4byte gCamera
_080527D8:
	mov r2, sb
	strb r2, [r7]
	ldr r0, [sp, #0x68]
	adds r0, #0x69
	strb r2, [r0]
_080527E2:
	ldrb r0, [r7]
	cmp r0, #0
	bne _080527FC
	ldr r0, _080527F8 @ =gFlags
	ldr r1, [r0]
	movs r2, #0x41
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0]
	b _08052B62
	.align 2, 0
_080527F8: .4byte gFlags
_080527FC:
	ldr r0, _08052870 @ =gCamera
	ldr r1, [r0, #4]
	ldrh r0, [r7, #4]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, _08052874 @ =gStageData
	ldrb r1, [r0, #3]
	mov sl, r0
	add r0, sp, #0xc
	mov r8, r0
	adds r2, r7, #0
	adds r2, #0x3c
	str r2, [sp, #0x6c]
	cmp r1, #4
	bhi _080528B0
	mov r1, sl
	ldr r0, [r1, #0x1c]
	ldr r1, _08052878 @ =0x000001FF
	ands r0, r1
	lsrs r5, r0, #1
	ldr r2, _0805287C @ =gFlags
	ldr r0, [r2]
	movs r1, #4
	orrs r0, r1
	str r0, [r2]
	ldr r1, _08052880 @ =gHBlankCopyTarget
	ldr r0, _08052884 @ =0x0400001C
	str r0, [r1]
	ldr r1, _08052888 @ =gHBlankCopySize
	movs r0, #2
	strb r0, [r1]
	ldr r0, _0805288C @ =gBgOffsetsHBlankPrimary
	ldr r2, [r0]
	movs r1, #0
	lsls r0, r3, #0x10
	asrs r4, r0, #0x10
	ldr r3, _08052890 @ =gSineTable
	mov ip, r3
	ldr r6, _08052894 @ =gBgScrollRegs
_0805284C:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r3, r0, #0
	cmp r4, r1
	bge _0805289C
	lsls r0, r1, #1
	adds r0, r5, r0
	lsls r0, r0, #4
	ldr r1, _08052898 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	adds r0, #8
	b _0805289E
	.align 2, 0
_08052870: .4byte gCamera
_08052874: .4byte gStageData
_08052878: .4byte 0x000001FF
_0805287C: .4byte gFlags
_08052880: .4byte gHBlankCopyTarget
_08052884: .4byte 0x0400001C
_08052888: .4byte gHBlankCopySize
_0805288C: .4byte gBgOffsetsHBlankPrimary
_08052890: .4byte gSineTable
_08052894: .4byte gBgScrollRegs
_08052898: .4byte 0x000003FF
_0805289C:
	ldrh r0, [r6, #0xc]
_0805289E:
	strh r0, [r2]
	adds r2, #2
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r3, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9f
	ble _0805284C
_080528B0:
	mov r2, sl
	ldrb r0, [r2, #9]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, _08052A28 @ =0x040000D4
	ldr r1, _08052A2C @ =gObjPalette + 0x1F2
	str r1, [r0]
	mov r1, sp
	str r1, [r0, #4]
	ldr r1, _08052A30 @ =0x80000006
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08052A2C @ =gObjPalette + 0x1F2
	subs r1, #0xf2
	str r1, [r0]
	mov r1, r8
	str r1, [r0, #4]
	ldr r1, _08052A34 @ =0x80000010
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldr r0, [r2, #8]
	ldr r1, _08052A38 @ =0x00FFFF00
	ands r0, r1
	ldr r1, _08052A3C @ =0x00090400
	cmp r0, r1
	bne _080528F4
	mov r2, sb
	lsls r0, r2, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	mov sb, r0
_080528F4:
	mov r2, sl
	ldrb r0, [r2, #3]
	movs r5, #4
	cmp r0, #6
	beq _08052900
	movs r5, #3
_08052900:
	lsls r0, r3, #0x10
	asrs r4, r0, #0x10
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r4, r0
	lsls r0, r0, #1
	ldr r1, _08052A40 @ =gUnknown_080D1BF6
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r0, [sp, #0x6c]
	bl sub_8052D30
	lsls r0, r5, #0x10
	movs r1, #0
	adds r5, r0, #0
	cmp r5, #0
	ble _0805296A
	ldr r2, _08052A44 @ =gUnknown_080D1BC4
	mov sl, r2
	lsls r6, r4, #1
	ldr r3, _08052A48 @ =gPlayers
	mov sb, r3
_08052932:
	lsls r4, r1, #0x10
	asrs r4, r4, #0x10
	lsls r0, r4, #5
	adds r0, #0x3c
	adds r0, r7, r0
	lsls r1, r4, #2
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r4
	lsls r1, r1, #4
	add r1, sb
	adds r1, #0x2a
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x19
	adds r1, r6, r1
	add r1, sl
	ldrh r1, [r1]
	movs r2, #0x10
	bl sub_8052D30
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r1, r4, #0x10
	asrs r4, r4, #0x10
	asrs r0, r5, #0x10
	cmp r4, r0
	blt _08052932
_0805296A:
	ldr r1, _08052A4C @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bhi _0805299A
	adds r0, r7, #0
	adds r0, #0x7c
	ldr r4, _08052A50 @ =gUnknown_080D1BEC
	ldr r3, _08052A48 @ =gPlayers
	ldrb r2, [r1, #6]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r2
	lsls r1, r1, #4
	adds r1, r1, r3
	adds r1, #0x2a
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1b
	adds r1, r1, r4
	ldrh r1, [r1]
	movs r2, #0x10
	bl sub_8052D30
_0805299A:
	ldr r1, _08052A28 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r2, _08052A54 @ =0x0000022E
	adds r0, r7, r2
	str r0, [r1, #4]
	ldr r0, _08052A30 @ =0x80000006
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	ldr r4, _08052A58 @ =gBgPalette
	cmp r0, #0
	bge _080529C0
_080529B8:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _080529B8
_080529C0:
	ldr r1, _08052A28 @ =0x040000D4
	mov r3, r8
	str r3, [r1]
	movs r2, #0x9e
	lsls r2, r2, #1
	adds r0, r7, r2
	str r0, [r1, #4]
	ldr r0, _08052A34 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _080529E6
_080529DE:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _080529DE
_080529E6:
	movs r3, #0x8f
	lsls r3, r3, #2
	adds r0, r7, r3
	ldr r2, [r7, #0xc]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r4, #0
	bl sub_805268C
	ldr r3, _08052A5C @ =gVBlankCallbacks
	ldr r2, _08052A60 @ =gNumVBlankCallbacks
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r3
	ldr r1, _08052A64 @ =sub_8052C54
	str r1, [r0]
	ldr r2, _08052A68 @ =gFlags
	ldr r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2]
	movs r0, #4
	ldrsh r2, [r7, r0]
	ldr r3, [sp, #0x68]
	ldr r1, [r3, #4]
	cmp r2, r1
	bgt _08052A6C
	movs r0, #0
	b _08052A7C
	.align 2, 0
_08052A28: .4byte 0x040000D4
_08052A2C: .4byte gObjPalette + 0x1F2
_08052A30: .4byte 0x80000006
_08052A34: .4byte 0x80000010
_08052A38: .4byte 0x00FFFF00
_08052A3C: .4byte 0x00090400
_08052A40: .4byte gUnknown_080D1BF6
_08052A44: .4byte gUnknown_080D1BC4
_08052A48: .4byte gPlayers
_08052A4C: .4byte gStageData
_08052A50: .4byte gUnknown_080D1BEC
_08052A54: .4byte 0x0000022E
_08052A58: .4byte gBgPalette
_08052A5C: .4byte gVBlankCallbacks
_08052A60: .4byte gNumVBlankCallbacks
_08052A64: .4byte sub_8052C54
_08052A68: .4byte gFlags
_08052A6C:
	adds r0, r1, #0
	adds r0, #0xa0
	cmp r2, r0
	bge _08052A7A
	ldrb r0, [r7, #4]
	subs r0, r0, r1
	b _08052A7C
_08052A7A:
	movs r0, #0xff
_08052A7C:
	strb r0, [r7, #2]
	ldrb r0, [r7, #1]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x9e
	bhi _08052AFA
	adds r5, r7, #0
	adds r5, #0x14
	ldr r0, [sp, #0x68]
	ldr r1, [r0]
	ldr r4, _08052B28 @ =gStageData
	ldr r0, [r4, #0x1c]
	lsrs r0, r0, #2
	adds r1, r1, r0
	movs r0, #7
	ands r1, r0
	rsbs r1, r1, #0
	strh r1, [r5, #0x10]
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	ldrb r0, [r7, #2]
	adds r0, #1
	strh r0, [r5, #0x12]
	mov r8, r0
	ldr r0, [r5, #8]
	movs r1, #0xc0
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	ldr r0, [r4, #0x1c]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08052AFA
	add r4, sp, #0x2c
	adds r0, r5, #0
	bl DisplaySprite
	movs r2, #0xf
	adds r1, r4, #0
_08052AD4:
	lsls r0, r6, #0x10
	movs r3, #0x80
	lsls r3, r3, #0xd
	adds r0, r0, r3
	lsrs r6, r0, #0x10
	strh r6, [r4]
	mov r0, r8
	strh r0, [r4, #2]
	lsls r0, r2, #0x10
	ldr r2, _08052B2C @ =0xFFFF0000
	adds r0, r0, r2
	adds r4, #4
	lsrs r2, r0, #0x10
	cmp r0, #0
	bgt _08052AD4
	adds r0, r5, #0
	movs r2, #0xf
	bl DisplaySprites
_08052AFA:
	ldrb r0, [r7, #2]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x9e
	bhi _08052B44
	ldr r2, _08052B30 @ =0x04000208
	movs r0, #0
	strh r0, [r2]
	ldr r1, _08052B34 @ =gIntrTable
	ldr r0, _08052B38 @ =sub_8052CCC
	str r0, [r1, #0xc]
	movs r0, #1
	strh r0, [r2]
	ldr r1, _08052B3C @ =sa2__gUnknown_03002874
	ldrb r0, [r7, #2]
	subs r0, #1
	strb r0, [r1]
	ldr r2, _08052B40 @ =gFlags
	ldr r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	b _08052B60
	.align 2, 0
_08052B28: .4byte gStageData
_08052B2C: .4byte 0xFFFF0000
_08052B30: .4byte 0x04000208
_08052B34: .4byte gIntrTable
_08052B38: .4byte sub_8052CCC
_08052B3C: .4byte sa2__gUnknown_03002874
_08052B40: .4byte gFlags
_08052B44:
	ldr r2, _08052B74 @ =0x04000208
	movs r0, #0
	strh r0, [r2]
	ldr r1, _08052B78 @ =gIntrTable
	ldr r0, _08052B7C @ =gIntrTableTemplate
	ldr r0, [r0, #0xc]
	str r0, [r1, #0xc]
	movs r0, #1
	strh r0, [r2]
	ldr r2, _08052B80 @ =gFlags
	ldr r0, [r2]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
_08052B60:
	str r0, [r2]
_08052B62:
	add sp, #0x70
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08052B74: .4byte 0x04000208
_08052B78: .4byte gIntrTable
_08052B7C: .4byte gIntrTableTemplate
_08052B80: .4byte gFlags

	thumb_func_start sub_8052B84
sub_8052B84: @ 0x08052B84
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	ldr r3, _08052BA0 @ =gStageData
	adds r0, r3, #0
	adds r0, #0x84
	ldrb r2, [r0]
	cmp r2, #0
	bne _08052BB2
	b _08052C04
	.align 2, 0
_08052BA0: .4byte gStageData
_08052BA4:
	mov r0, sl
	strh r4, [r0, #4]
	ldrh r0, [r1, #2]
	mov r1, sl
	strh r0, [r1, #6]
	movs r0, #1
	b _08052C06
_08052BB2:
	ldr r1, _08052C14 @ =gCamera
	ldrh r7, [r1]
	adds r0, r7, #0
	adds r0, #0xf0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldrh r6, [r1, #4]
	adds r0, r6, #0
	adds r0, #0xa0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r0, r3, #0
	adds r0, #0x80
	ldr r1, [r0]
	movs r5, #0
	cmp r5, r2
	bge _08052C04
	mov ip, r2
_08052BDA:
	ldrh r0, [r1]
	ldrh r4, [r1, #2]
	ldrh r2, [r1, #4]
	ldrh r3, [r1, #6]
	cmp r0, sb
	bhs _08052BF2
	cmp r4, r8
	bhs _08052BF2
	cmp r2, r7
	bls _08052BF2
	cmp r3, r6
	bhi _08052BA4
_08052BF2:
	lsls r0, r5, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	adds r1, #8
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, ip
	blt _08052BDA
_08052C04:
	movs r0, #0
_08052C06:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08052C14: .4byte gCamera

	thumb_func_start TaskDestructor_8052C18
TaskDestructor_8052C18: @ 0x08052C18
	ldr r2, _08052C40 @ =gFlags
	ldr r0, [r2]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	ldr r2, _08052C44 @ =0x04000208
	movs r0, #0
	strh r0, [r2]
	ldr r1, _08052C48 @ =gIntrTable
	ldr r0, _08052C4C @ =gIntrTableTemplate
	ldr r0, [r0, #0xc]
	str r0, [r1, #0xc]
	movs r0, #1
	strh r0, [r2]
	ldr r1, _08052C50 @ =gCamera
	movs r0, #0
	str r0, [r1, #0x54]
	bx lr
	.align 2, 0
_08052C40: .4byte gFlags
_08052C44: .4byte 0x04000208
_08052C48: .4byte gIntrTable
_08052C4C: .4byte gIntrTableTemplate
_08052C50: .4byte gCamera

	thumb_func_start sub_8052C54
sub_8052C54: @ 0x08052C54
	push {r4, lr}
	ldr r0, _08052CAC @ =gCamera
	ldr r0, [r0, #0x54]
	ldrh r4, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r4, r1
	ldrb r3, [r1, #2]
	strb r3, [r1, #1]
	ldr r0, [r1, #8]
	movs r2, #2
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r1, #8]
	lsls r3, r3, #0x18
	cmp r3, #0
	bne _08052CA4
	ldr r1, _08052CB0 @ =0x040000D4
	ldr r2, _08052CB4 @ =0x0300023C
	adds r0, r4, r2
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08052CB8 @ =0x84000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _08052CBC @ =0x0300003C
	adds r0, r4, r2
	str r0, [r1]
	ldr r0, _08052CC0 @ =0x05000200
	str r0, [r1, #4]
	ldr r0, _08052CC4 @ =0x84000078
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _08052CC8 @ =gFlags
	ldr r0, [r2]
	movs r1, #3
	orrs r0, r1
	str r0, [r2]
_08052CA4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08052CAC: .4byte gCamera
_08052CB0: .4byte 0x040000D4
_08052CB4: .4byte 0x0300023C
_08052CB8: .4byte 0x84000080
_08052CBC: .4byte 0x0300003C
_08052CC0: .4byte 0x05000200
_08052CC4: .4byte 0x84000078
_08052CC8: .4byte gFlags

	thumb_func_start sub_8052CCC
sub_8052CCC: @ 0x08052CCC
	ldr r0, _08052D08 @ =gCamera
	ldr r0, [r0, #0x54]
	ldrh r0, [r0, #6]
	ldr r1, _08052D0C @ =0x0300003C
	adds r2, r0, r1
	ldr r1, _08052D10 @ =0x040000D4
	ldr r3, _08052D14 @ =0x0300023C
	adds r0, r0, r3
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08052D18 @ =0x84000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	str r2, [r1]
	ldr r0, _08052D1C @ =0x05000200
	str r0, [r1, #4]
	ldr r0, _08052D20 @ =0x84000078
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _08052D24 @ =gFlags
	ldr r0, [r2]
	movs r1, #3
	orrs r0, r1
	str r0, [r2]
	ldr r1, _08052D28 @ =0x04000202
	movs r0, #4
	strh r0, [r1]
	bx lr
	.align 2, 0
_08052D08: .4byte gCamera
_08052D0C: .4byte 0x0300003C
_08052D10: .4byte 0x040000D4
_08052D14: .4byte 0x0300023C
_08052D18: .4byte 0x84000080
_08052D1C: .4byte 0x05000200
_08052D20: .4byte 0x84000078
_08052D24: .4byte gFlags
_08052D28: .4byte 0x04000202

	thumb_func_start sub_8052D2C
sub_8052D2C: @ 0x08052D2C
	bx lr
	.align 2, 0

	thumb_func_start sub_8052D30
sub_8052D30: @ 0x08052D30
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r3, r2, #0x10
	ldr r0, _08052D7C @ =gAnimations
	lsrs r1, r1, #0xe
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r2, [r0]
	ldm r2!, {r1}
	movs r0, #2
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08052D76
	ldr r1, [r2]
	ldr r2, _08052D80 @ =0x040000D4
	ldr r0, _08052D84 @ =gRefSpriteTables
	ldr r0, [r0]
	lsls r1, r1, #5
	ldr r0, [r0, #0xc]
	adds r0, r0, r1
	str r0, [r2]
	str r4, [r2, #4]
	lsrs r0, r3, #1
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r2, _08052D88 @ =gFlags
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
_08052D76:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08052D7C: .4byte gAnimations
_08052D80: .4byte 0x040000D4
_08052D84: .4byte gRefSpriteTables
_08052D88: .4byte gFlags

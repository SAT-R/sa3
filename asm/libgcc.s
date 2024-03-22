.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start __udivsi3
__udivsi3: @ 0x080C8B50
	cmp r1, #0
	beq _080C8BBE
	movs r3, #1
	movs r2, #0
	push {r4}
	cmp r0, r1
	blo _080C8BB8
	movs r4, #1
	lsls r4, r4, #0x1c
_080C8B62:
	cmp r1, r4
	bhs _080C8B70
	cmp r1, r0
	bhs _080C8B70
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _080C8B62
_080C8B70:
	lsls r4, r4, #3
_080C8B72:
	cmp r1, r4
	bhs _080C8B80
	cmp r1, r0
	bhs _080C8B80
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _080C8B72
_080C8B80:
	cmp r0, r1
	blo _080C8B88
	subs r0, r0, r1
	orrs r2, r3
_080C8B88:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _080C8B94
	subs r0, r0, r4
	lsrs r4, r3, #1
	orrs r2, r4
_080C8B94:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _080C8BA0
	subs r0, r0, r4
	lsrs r4, r3, #2
	orrs r2, r4
_080C8BA0:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _080C8BAC
	subs r0, r0, r4
	lsrs r4, r3, #3
	orrs r2, r4
_080C8BAC:
	cmp r0, #0
	beq _080C8BB8
	lsrs r3, r3, #4
	beq _080C8BB8
	lsrs r1, r1, #4
	b _080C8B80
_080C8BB8:
	adds r0, r2, #0
	pop {r4}
	mov pc, lr
_080C8BBE:
	push {lr}
	bl __div0
	movs r0, #0
	pop {pc}

	thumb_func_start __umodsi3
__umodsi3: @ 0x080C8BC8
	cmp r1, #0
	beq _080C8C7E
	movs r3, #1
	cmp r0, r1
	bhs _080C8BD4
	mov pc, lr
_080C8BD4:
	push {r4}
	movs r4, #1
	lsls r4, r4, #0x1c
_080C8BDA:
	cmp r1, r4
	bhs _080C8BE8
	cmp r1, r0
	bhs _080C8BE8
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _080C8BDA
_080C8BE8:
	lsls r4, r4, #3
_080C8BEA:
	cmp r1, r4
	bhs _080C8BF8
	cmp r1, r0
	bhs _080C8BF8
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _080C8BEA
_080C8BF8:
	movs r2, #0
	cmp r0, r1
	blo _080C8C00
	subs r0, r0, r1
_080C8C00:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _080C8C12
	subs r0, r0, r4
	mov ip, r3
	movs r4, #1
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_080C8C12:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _080C8C24
	subs r0, r0, r4
	mov ip, r3
	movs r4, #2
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_080C8C24:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _080C8C36
	subs r0, r0, r4
	mov ip, r3
	movs r4, #3
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_080C8C36:
	mov ip, r3
	cmp r0, #0
	beq _080C8C44
	lsrs r3, r3, #4
	beq _080C8C44
	lsrs r1, r1, #4
	b _080C8BF8
_080C8C44:
	movs r4, #0xe
	lsls r4, r4, #0x1c
	ands r2, r4
	bne _080C8C50
	pop {r4}
	mov pc, lr
_080C8C50:
	mov r3, ip
	movs r4, #3
	rors r3, r4
	tst r2, r3
	beq _080C8C5E
	lsrs r4, r1, #3
	adds r0, r0, r4
_080C8C5E:
	mov r3, ip
	movs r4, #2
	rors r3, r4
	tst r2, r3
	beq _080C8C6C
	lsrs r4, r1, #2
	adds r0, r0, r4
_080C8C6C:
	mov r3, ip
	movs r4, #1
	rors r3, r4
	tst r2, r3
	beq _080C8C7A
	lsrs r4, r1, #1
	adds r0, r0, r4
_080C8C7A:
	pop {r4}
	mov pc, lr
_080C8C7E:
	push {lr}
	bl __div0
	movs r0, #0
	pop {pc}

	thumb_func_start __pack_d
__pack_d: @ 0x080C8C88
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r1, r0, #0
	ldr r4, [r1, #0xc]
	ldr r5, [r1, #0x10]
	ldr r7, [r1, #4]
	movs r6, #0
	movs r2, #0
	ldr r0, [r1]
	cmp r0, #1
	bhi _080C8CA0
	movs r2, #1
_080C8CA0:
	cmp r2, #0
	beq _080C8CC0
	ldr r6, _080C8CB4 @ =0x000007FF
	ldr r2, _080C8CB8 @ =0x00000000
	ldr r3, _080C8CBC @ =0x00080000
	adds r0, r4, #0
	adds r1, r5, #0
	orrs r1, r3
	b _080C8D78
	.align 2, 0
_080C8CB4: .4byte 0x000007FF
_080C8CB8: .4byte 0x00000000
_080C8CBC: .4byte 0x00080000
_080C8CC0:
	movs r2, #0
	cmp r0, #4
	bne _080C8CC8
	movs r2, #1
_080C8CC8:
	cmp r2, #0
	bne _080C8D14
	movs r2, #0
	cmp r0, #2
	bne _080C8CD4
	movs r2, #1
_080C8CD4:
	cmp r2, #0
	beq _080C8CDE
	movs r4, #0
	movs r5, #0
	b _080C8D7C
_080C8CDE:
	adds r0, r5, #0
	orrs r0, r4
	cmp r0, #0
	beq _080C8D7C
	ldr r2, [r1, #8]
	ldr r0, _080C8CFC @ =0xFFFFFC02
	cmp r2, r0
	bge _080C8D0E
	subs r2, r0, r2
	cmp r2, #0x38
	ble _080C8D00
	movs r4, #0
	movs r5, #0
	b _080C8D6E
	.align 2, 0
_080C8CFC: .4byte 0xFFFFFC02
_080C8D00:
	adds r1, r5, #0
	adds r0, r4, #0
	bl __lshrdi3
	adds r5, r1, #0
	adds r4, r0, #0
	b _080C8D6E
_080C8D0E:
	ldr r0, _080C8D1C @ =0x000003FF
	cmp r2, r0
	ble _080C8D24
_080C8D14:
	ldr r6, _080C8D20 @ =0x000007FF
	movs r4, #0
	movs r5, #0
	b _080C8D7C
	.align 2, 0
_080C8D1C: .4byte 0x000003FF
_080C8D20: .4byte 0x000007FF
_080C8D24:
	ldr r0, _080C8D4C @ =0x000003FF
	adds r6, r2, r0
	movs r0, #0xff
	adds r1, r4, #0
	ands r1, r0
	movs r2, #0
	cmp r1, #0x80
	bne _080C8D50
	cmp r2, #0
	bne _080C8D50
	adds r0, #1
	adds r1, r4, #0
	ands r1, r0
	adds r0, r2, #0
	orrs r0, r1
	cmp r0, #0
	beq _080C8D58
	movs r0, #0x80
	movs r1, #0
	b _080C8D54
	.align 2, 0
_080C8D4C: .4byte 0x000003FF
_080C8D50:
	movs r0, #0x7f
	movs r1, #0
_080C8D54:
	adds r4, r4, r0
	adcs r5, r1
_080C8D58:
	ldr r0, _080C8DBC @ =0x1FFFFFFF
	cmp r5, r0
	bls _080C8D6E
	lsls r3, r5, #0x1f
	lsrs r2, r4, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r5, #1
	adds r5, r1, #0
	adds r4, r0, #0
	adds r6, #1
_080C8D6E:
	lsls r3, r5, #0x18
	lsrs r2, r4, #8
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r5, #8
_080C8D78:
	adds r5, r1, #0
	adds r4, r0, #0
_080C8D7C:
	str r4, [sp]
	ldr r2, _080C8DC0 @ =0x000FFFFF
	ands r2, r5
	ldr r0, [sp, #4]
	ldr r1, _080C8DC4 @ =0xFFF00000
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #4]
	mov r2, sp
	ldr r1, _080C8DC8 @ =0x000007FF
	adds r0, r1, #0
	ands r6, r0
	lsls r1, r6, #4
	ldr r0, _080C8DCC @ =0xFFFF800F
	ldrh r3, [r2, #6]
	ands r0, r3
	orrs r0, r1
	strh r0, [r2, #6]
	lsls r1, r7, #7
	movs r0, #0x7f
	ldrb r3, [r2, #7]
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #7]
	ldr r1, [sp]
	ldr r0, [sp, #4]
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add sp, #8
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080C8DBC: .4byte 0x1FFFFFFF
_080C8DC0: .4byte 0x000FFFFF
_080C8DC4: .4byte 0xFFF00000
_080C8DC8: .4byte 0x000007FF
_080C8DCC: .4byte 0xFFFF800F

	thumb_func_start __unpack_d
__unpack_d: @ 0x080C8DD0
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r2, r0, #0
	adds r6, r1, #0
	ldr r1, [r2, #4]
	str r1, [sp]
	ldr r0, [r2]
	str r0, [sp, #4]
	mov r2, sp
	adds r4, r1, #0
	lsls r0, r0, #0xc
	lsrs r5, r0, #0xc
	ldrh r3, [r2, #6]
	lsls r0, r3, #0x11
	lsrs r3, r0, #0x15
	ldrb r2, [r2, #7]
	lsrs r0, r2, #7
	str r0, [r6, #4]
	cmp r3, #0
	bne _080C8E44
	orrs r1, r5
	cmp r1, #0
	bne _080C8E04
	movs r0, #2
	str r0, [r6]
	b _080C8E98
_080C8E04:
	ldr r0, _080C8E3C @ =0xFFFFFC02
	str r0, [r6, #8]
	lsrs r3, r4, #0x18
	lsls r2, r5, #8
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #8
	adds r5, r1, #0
	adds r4, r0, #0
	movs r0, #3
	str r0, [r6]
	ldr r0, _080C8E40 @ =0x0FFFFFFF
	cmp r5, r0
	bhi _080C8E74
	adds r7, r0, #0
_080C8E22:
	lsrs r3, r4, #0x1f
	lsls r2, r5, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #1
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r0, [r6, #8]
	subs r0, #1
	str r0, [r6, #8]
	cmp r5, r7
	bls _080C8E22
	b _080C8E74
	.align 2, 0
_080C8E3C: .4byte 0xFFFFFC02
_080C8E40: .4byte 0x0FFFFFFF
_080C8E44:
	ldr r0, _080C8E58 @ =0x000007FF
	cmp r3, r0
	bne _080C8E7A
	orrs r1, r5
	cmp r1, #0
	bne _080C8E5C
	movs r0, #4
	str r0, [r6]
	b _080C8E98
	.align 2, 0
_080C8E58: .4byte 0x000007FF
_080C8E5C:
	movs r2, #0x80
	lsls r2, r2, #0xc
	movs r0, #0
	adds r1, r5, #0
	ands r1, r2
	orrs r1, r0
	cmp r1, #0
	beq _080C8E72
	movs r0, #1
	str r0, [r6]
	b _080C8E74
_080C8E72:
	str r1, [r6]
_080C8E74:
	str r4, [r6, #0xc]
	str r5, [r6, #0x10]
	b _080C8E98
_080C8E7A:
	ldr r1, _080C8E9C @ =0xFFFFFC01
	adds r0, r3, r1
	str r0, [r6, #8]
	movs r0, #3
	str r0, [r6]
	lsrs r3, r4, #0x18
	lsls r2, r5, #8
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #8
	ldr r2, _080C8EA0 @ =0x00000000
	ldr r3, _080C8EA4 @ =0x10000000
	orrs r1, r3
	str r0, [r6, #0xc]
	str r1, [r6, #0x10]
_080C8E98:
	add sp, #8
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080C8E9C: .4byte 0xFFFFFC01
_080C8EA0: .4byte 0x00000000
_080C8EA4: .4byte 0x10000000

	thumb_func_start _fpadd_parts
_fpadd_parts: @ 0x080C8EA8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r3, r0, #0
	adds r4, r1, #0
	mov sl, r2
	movs r0, #0
	ldr r2, [r3]
	cmp r2, #1
	bhi _080C8EC4
	movs r0, #1
_080C8EC4:
	cmp r0, #0
	beq _080C8ECC
_080C8EC8:
	adds r0, r3, #0
	b _080C9104
_080C8ECC:
	movs r1, #0
	ldr r0, [r4]
	cmp r0, #1
	bhi _080C8ED6
	movs r1, #1
_080C8ED6:
	cmp r1, #0
	bne _080C8F4E
	movs r1, #0
	cmp r2, #4
	bne _080C8EE2
	movs r1, #1
_080C8EE2:
	cmp r1, #0
	beq _080C8F04
	movs r1, #0
	cmp r0, #4
	bne _080C8EEE
	movs r1, #1
_080C8EEE:
	cmp r1, #0
	beq _080C8EC8
	ldr r1, [r3, #4]
	ldr r0, [r4, #4]
	cmp r1, r0
	beq _080C8EC8
	ldr r0, _080C8F00 @ =0x03000450
	b _080C9104
	.align 2, 0
_080C8F00: .4byte 0x03000450
_080C8F04:
	movs r1, #0
	cmp r0, #4
	bne _080C8F0C
	movs r1, #1
_080C8F0C:
	cmp r1, #0
	bne _080C8F4E
	movs r1, #0
	cmp r0, #2
	bne _080C8F18
	movs r1, #1
_080C8F18:
	cmp r1, #0
	beq _080C8F40
	movs r0, #0
	cmp r2, #2
	bne _080C8F24
	movs r0, #1
_080C8F24:
	cmp r0, #0
	beq _080C8EC8
	mov r1, sl
	adds r0, r3, #0
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
	ldm r0!, {r2, r5}
	stm r1!, {r2, r5}
	ldr r0, [r3, #4]
	ldr r1, [r4, #4]
	ands r0, r1
	mov r6, sl
	str r0, [r6, #4]
	b _080C9102
_080C8F40:
	movs r1, #0
	ldr r0, [r3]
	cmp r0, #2
	bne _080C8F4A
	movs r1, #1
_080C8F4A:
	cmp r1, #0
	beq _080C8F52
_080C8F4E:
	adds r0, r4, #0
	b _080C9104
_080C8F52:
	ldr r0, [r3, #8]
	mov sb, r0
	ldr r1, [r4, #8]
	mov r8, r1
	ldr r6, [r3, #0xc]
	ldr r7, [r3, #0x10]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	str r0, [sp]
	str r1, [sp, #4]
	mov r1, sb
	mov r2, r8
	subs r0, r1, r2
	cmp r0, #0
	bge _080C8F72
	rsbs r0, r0, #0
_080C8F72:
	cmp r0, #0x3f
	bgt _080C8FF0
	ldr r3, [r3, #4]
	mov ip, r3
	ldr r4, [r4, #4]
	str r4, [sp, #8]
	cmp sb, r8
	ble _080C8FBC
	mov r3, sb
	mov r4, r8
	subs r3, r3, r4
	mov r8, r3
_080C8F8A:
	movs r5, #1
	rsbs r5, r5, #0
	add r8, r5
	ldr r2, [sp]
	movs r0, #1
	ands r2, r0
	movs r3, #0
	ldr r1, [sp, #4]
	lsls r5, r1, #0x1f
	ldr r0, [sp]
	lsrs r4, r0, #1
	adds r0, r5, #0
	orrs r0, r4
	adds r4, r1, #0
	lsrs r1, r4, #1
	adds r5, r2, #0
	orrs r5, r0
	str r5, [sp]
	adds r4, r3, #0
	orrs r4, r1
	str r4, [sp, #4]
	mov r5, r8
	cmp r5, #0
	bne _080C8F8A
	mov r8, sb
_080C8FBC:
	cmp r8, sb
	ble _080C900C
	mov r0, r8
	mov r1, sb
	subs r0, r0, r1
	mov sb, r0
_080C8FC8:
	movs r2, #1
	rsbs r2, r2, #0
	add sb, r2
	movs r2, #1
	ands r2, r6
	movs r3, #0
	lsls r5, r7, #0x1f
	lsrs r4, r6, #1
	adds r0, r5, #0
	orrs r0, r4
	lsrs r1, r7, #1
	adds r6, r2, #0
	orrs r6, r0
	adds r7, r3, #0
	orrs r7, r1
	mov r3, sb
	cmp r3, #0
	bne _080C8FC8
	mov sb, r8
	b _080C900C
_080C8FF0:
	cmp sb, r8
	ble _080C8FFE
	movs r0, #0
	movs r1, #0
	str r0, [sp]
	str r1, [sp, #4]
	b _080C9004
_080C8FFE:
	mov sb, r8
	movs r6, #0
	movs r7, #0
_080C9004:
	ldr r3, [r3, #4]
	mov ip, r3
	ldr r4, [r4, #4]
	str r4, [sp, #8]
_080C900C:
	ldr r1, [sp, #8]
	cmp ip, r1
	beq _080C90B4
	mov r2, ip
	cmp r2, #0
	beq _080C902E
	adds r1, r7, #0
	adds r0, r6, #0
	bl __negdi2
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r4, [sp]
	ldr r5, [sp, #4]
	adds r2, r2, r4
	adcs r3, r5
	b _080C903A
_080C902E:
	adds r3, r7, #0
	adds r2, r6, #0
	ldr r0, [sp]
	ldr r1, [sp, #4]
	subs r2, r2, r0
	sbcs r3, r1
_080C903A:
	cmp r3, #0
	blt _080C9050
	movs r0, #0
	mov r1, sl
	str r0, [r1, #4]
	mov r4, sb
	str r4, [r1, #8]
	mov r5, sl
	str r2, [r5, #0xc]
	str r3, [r5, #0x10]
	b _080C9068
_080C9050:
	movs r0, #1
	mov r6, sl
	str r0, [r6, #4]
	mov r0, sb
	str r0, [r6, #8]
	adds r1, r3, #0
	adds r0, r2, #0
	bl __negdi2
	mov r2, sl
	str r0, [r2, #0xc]
	str r1, [r2, #0x10]
_080C9068:
	mov r4, sl
	ldr r2, [r4, #0xc]
	ldr r3, [r4, #0x10]
	movs r0, #1
	rsbs r0, r0, #0
	asrs r1, r0, #0x1f
_080C9074:
	adds r2, r2, r0
	adcs r3, r1
	ldr r0, _080C90B0 @ =0x0FFFFFFF
	cmp r3, r0
	bhi _080C90CC
	cmp r3, r0
	bne _080C908A
	movs r0, #2
	rsbs r0, r0, #0
	cmp r2, r0
	bhi _080C90CC
_080C908A:
	mov r5, sl
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	lsrs r3, r0, #0x1f
	lsls r2, r1, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r0, #1
	mov r6, sl
	str r0, [r6, #0xc]
	str r1, [r6, #0x10]
	ldr r2, [r6, #8]
	subs r2, #1
	str r2, [r6, #8]
	movs r2, #1
	rsbs r2, r2, #0
	asrs r3, r2, #0x1f
	b _080C9074
	.align 2, 0
_080C90B0: .4byte 0x0FFFFFFF
_080C90B4:
	mov r0, ip
	mov r1, sl
	str r0, [r1, #4]
	mov r2, sb
	str r2, [r1, #8]
	ldr r3, [sp]
	ldr r4, [sp, #4]
	adds r6, r6, r3
	adcs r7, r4
	mov r4, sl
	str r6, [r4, #0xc]
	str r7, [r4, #0x10]
_080C90CC:
	movs r0, #3
	mov r5, sl
	str r0, [r5]
	ldr r1, [r5, #0x10]
	ldr r0, _080C9110 @ =0x1FFFFFFF
	cmp r1, r0
	bls _080C9102
	ldr r4, [r5, #0xc]
	ldr r5, [r5, #0x10]
	movs r2, #1
	adds r0, r4, #0
	ands r0, r2
	movs r1, #0
	lsls r6, r5, #0x1f
	mov r8, r6
	lsrs r6, r4, #1
	mov r2, r8
	orrs r2, r6
	lsrs r3, r5, #1
	orrs r0, r2
	orrs r1, r3
	mov r2, sl
	str r0, [r2, #0xc]
	str r1, [r2, #0x10]
	ldr r0, [r2, #8]
	adds r0, #1
	str r0, [r2, #8]
_080C9102:
	mov r0, sl
_080C9104:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080C9110: .4byte 0x1FFFFFFF

	thumb_func_start __adddf3
__adddf3: @ 0x080C9114
	push {r4, lr}
	sub sp, #0x4c
	str r0, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r2, [sp, #0x44]
	str r3, [sp, #0x48]
	add r0, sp, #0x3c
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x44
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	add r2, sp, #0x28
	mov r0, sp
	adds r1, r4, #0
	bl _fpadd_parts
	bl __pack_d
	add sp, #0x4c
	pop {r4, pc}

	thumb_func_start __subdf3
__subdf3: @ 0x080C9144
	push {r4, lr}
	sub sp, #0x4c
	str r0, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r2, [sp, #0x44]
	str r3, [sp, #0x48]
	add r0, sp, #0x3c
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x44
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	ldr r0, [r4, #4]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #4]
	add r2, sp, #0x28
	mov r0, sp
	adds r1, r4, #0
	bl _fpadd_parts
	bl __pack_d
	add sp, #0x4c
	pop {r4, pc}

	thumb_func_start __muldf3
__muldf3: @ 0x080C917C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x74
	str r0, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r2, [sp, #0x44]
	str r3, [sp, #0x48]
	add r0, sp, #0x3c
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x44
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	mov r8, sp
	add r0, sp, #0x28
	mov sl, r0
	movs r0, #0
	ldr r1, [sp]
	cmp r1, #1
	bhi _080C91B2
	movs r0, #1
_080C91B2:
	cmp r0, #0
	bne _080C9216
	movs r2, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _080C91C0
	movs r2, #1
_080C91C0:
	cmp r2, #0
	beq _080C91C8
	ldr r0, [sp, #4]
	b _080C9238
_080C91C8:
	movs r2, #0
	cmp r1, #4
	bne _080C91D0
	movs r2, #1
_080C91D0:
	cmp r2, #0
	beq _080C91E2
	movs r1, #0
	cmp r0, #2
	bne _080C91DC
	movs r1, #1
_080C91DC:
	cmp r1, #0
	bne _080C91FA
	b _080C9216
_080C91E2:
	movs r2, #0
	cmp r0, #4
	bne _080C91EA
	movs r2, #1
_080C91EA:
	cmp r2, #0
	beq _080C920A
	movs r0, #0
	cmp r1, #2
	bne _080C91F6
	movs r0, #1
_080C91F6:
	cmp r0, #0
	beq _080C9204
_080C91FA:
	ldr r0, _080C9200 @ =0x03000450
	b _080C9402
	.align 2, 0
_080C9200: .4byte 0x03000450
_080C9204:
	mov r1, r8
	ldr r0, [r1, #4]
	b _080C9238
_080C920A:
	movs r2, #0
	cmp r1, #2
	bne _080C9212
	movs r2, #1
_080C9212:
	cmp r2, #0
	beq _080C9228
_080C9216:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x18]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #4]
	mov r0, sp
	b _080C9402
_080C9228:
	movs r1, #0
	cmp r0, #2
	bne _080C9230
	movs r1, #1
_080C9230:
	cmp r1, #0
	beq _080C9248
	mov r2, r8
	ldr r0, [r2, #4]
_080C9238:
	ldr r1, [sp, #0x18]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #0x18]
	adds r0, r4, #0
	b _080C9402
_080C9248:
	mov r4, r8
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	adds r6, r0, #0
	movs r7, #0
	str r1, [sp, #0x4c]
	movs r5, #0
	str r5, [sp, #0x50]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	adds r4, r0, #0
	str r1, [sp, #0x54]
	movs r0, #0
	str r0, [sp, #0x58]
	adds r1, r5, #0
	adds r0, r4, #0
	adds r3, r7, #0
	adds r2, r6, #0
	bl __muldi3
	str r0, [sp, #0x5c]
	str r1, [sp, #0x60]
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x58]
	adds r3, r7, #0
	adds r2, r6, #0
	bl __muldi3
	adds r7, r1, #0
	adds r6, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	ldr r2, [sp, #0x4c]
	ldr r3, [sp, #0x50]
	bl __muldi3
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x58]
	ldr r2, [sp, #0x4c]
	ldr r3, [sp, #0x50]
	bl __muldi3
	str r0, [sp, #0x64]
	str r1, [sp, #0x68]
	movs r1, #0
	movs r2, #0
	str r1, [sp, #0x6c]
	str r2, [sp, #0x70]
	adds r3, r7, #0
	adds r2, r6, #0
	adds r2, r2, r4
	adcs r3, r5
	cmp r7, r3
	bhi _080C92C0
	cmp r7, r3
	bne _080C92C8
	cmp r6, r2
	bls _080C92C8
_080C92C0:
	ldr r5, _080C9418 @ =0x00000001
	ldr r4, _080C9414 @ =0x00000000
	str r4, [sp, #0x6c]
	str r5, [sp, #0x70]
_080C92C8:
	adds r1, r2, #0
	movs r6, #0
	adds r7, r1, #0
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x60]
	adds r6, r6, r0
	adcs r7, r1
	cmp r1, r7
	bhi _080C92E4
	ldr r1, [sp, #0x60]
	cmp r1, r7
	bne _080C92F4
	cmp r0, r6
	bls _080C92F4
_080C92E4:
	movs r0, #1
	movs r1, #0
	ldr r4, [sp, #0x6c]
	ldr r5, [sp, #0x70]
	adds r4, r4, r0
	adcs r5, r1
	str r4, [sp, #0x6c]
	str r5, [sp, #0x70]
_080C92F4:
	adds r0, r3, #0
	adds r2, r0, #0
	movs r3, #0
	adds r5, r3, #0
	adds r4, r2, #0
	ldr r0, [sp, #0x64]
	ldr r1, [sp, #0x68]
	adds r4, r4, r0
	adcs r5, r1
	ldr r1, [sp, #0x6c]
	ldr r2, [sp, #0x70]
	adds r4, r4, r1
	adcs r5, r2
	mov r0, r8
	ldr r2, [r0, #8]
	ldr r0, [sp, #0x1c]
	adds r2, r2, r0
	str r2, [sp, #0x30]
	mov r0, r8
	ldr r1, [r0, #4]
	ldr r0, [sp, #0x18]
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	str r0, [sp, #0x2c]
	adds r2, #4
	str r2, [sp, #0x30]
	ldr r0, _080C941C @ =0x1FFFFFFF
	cmp r5, r0
	bls _080C9376
	movs r1, #1
	mov sb, r1
	mov r8, r0
	mov ip, r2
_080C933A:
	movs r2, #1
	add ip, r2
	mov r0, sb
	ands r0, r4
	cmp r0, #0
	beq _080C9360
	lsls r3, r7, #0x1f
	lsrs r2, r6, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r7, #1
	adds r7, r1, #0
	adds r6, r0, #0
	adds r0, r6, #0
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r1, r7
	adds r7, r1, #0
	adds r6, r0, #0
_080C9360:
	lsls r3, r5, #0x1f
	lsrs r2, r4, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r5, #1
	adds r5, r1, #0
	adds r4, r0, #0
	cmp r5, r8
	bhi _080C933A
	mov r0, ip
	str r0, [sp, #0x30]
_080C9376:
	ldr r0, _080C9420 @ =0x0FFFFFFF
	cmp r5, r0
	bhi _080C93C8
	movs r1, #0x80
	lsls r1, r1, #0x18
	mov sb, r1
	mov r8, r0
	ldr r2, [sp, #0x30]
	mov ip, r2
_080C9388:
	movs r0, #1
	rsbs r0, r0, #0
	add ip, r0
	lsrs r3, r4, #0x1f
	lsls r2, r5, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #1
	adds r5, r1, #0
	adds r4, r0, #0
	movs r0, #0
	mov r1, sb
	ands r1, r7
	orrs r0, r1
	cmp r0, #0
	beq _080C93B2
	movs r0, #1
	orrs r0, r4
	adds r1, r5, #0
	adds r5, r1, #0
	adds r4, r0, #0
_080C93B2:
	lsrs r3, r6, #0x1f
	lsls r2, r7, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r6, #1
	adds r7, r1, #0
	adds r6, r0, #0
	cmp r5, r8
	bls _080C9388
	mov r1, ip
	str r1, [sp, #0x30]
_080C93C8:
	movs r0, #0xff
	adds r1, r4, #0
	ands r1, r0
	movs r2, #0
	cmp r1, #0x80
	bne _080C93F6
	cmp r2, #0
	bne _080C93F6
	adds r0, #1
	adds r1, r4, #0
	ands r1, r0
	adds r0, r2, #0
	orrs r0, r1
	cmp r0, #0
	bne _080C93EE
	adds r0, r7, #0
	orrs r0, r6
	cmp r0, #0
	beq _080C93F6
_080C93EE:
	movs r0, #0x80
	movs r1, #0
	adds r4, r4, r0
	adcs r5, r1
_080C93F6:
	str r4, [sp, #0x34]
	str r5, [sp, #0x38]
	movs r0, #3
	mov r2, sl
	str r0, [r2]
	add r0, sp, #0x28
_080C9402:
	bl __pack_d
	add sp, #0x74
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080C9414: .4byte 0x00000000
_080C9418: .4byte 0x00000001
_080C941C: .4byte 0x1FFFFFFF
_080C9420: .4byte 0x0FFFFFFF

	thumb_func_start __divdf3
__divdf3: @ 0x080C9424
	push {r4, r5, r6, r7, lr}
	sub sp, #0x48
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	mov ip, sp
	movs r0, #0
	ldr r3, [sp]
	cmp r3, #1
	bhi _080C944E
	movs r0, #1
_080C944E:
	cmp r0, #0
	beq _080C9456
	mov r1, sp
	b _080C9598
_080C9456:
	movs r0, #0
	ldr r2, [sp, #0x14]
	adds r5, r2, #0
	cmp r2, #1
	bhi _080C9462
	movs r0, #1
_080C9462:
	cmp r0, #0
	beq _080C946A
	adds r1, r4, #0
	b _080C9598
_080C946A:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x18]
	eors r0, r1
	str r0, [sp, #4]
	movs r0, #0
	cmp r3, #4
	bne _080C947A
	movs r0, #1
_080C947A:
	cmp r0, #0
	bne _080C948A
	movs r4, #0
	cmp r3, #2
	bne _080C9486
	movs r4, #1
_080C9486:
	cmp r4, #0
	beq _080C949C
_080C948A:
	mov r1, ip
	ldr r0, [r1]
	cmp r0, r5
	beq _080C9494
	b _080C9598
_080C9494:
	ldr r1, _080C9498 @ =0x03000450
	b _080C9598
	.align 2, 0
_080C9498: .4byte 0x03000450
_080C949C:
	movs r0, #0
	cmp r2, #4
	bne _080C94A4
	movs r0, #1
_080C94A4:
	cmp r0, #0
	beq _080C94B6
	movs r0, #0
	movs r1, #0
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r4, [sp, #8]
	mov r1, sp
	b _080C9598
_080C94B6:
	movs r0, #0
	cmp r2, #2
	bne _080C94BE
	movs r0, #1
_080C94BE:
	cmp r0, #0
	beq _080C94CA
	movs r0, #4
	mov r2, ip
	str r0, [r2]
	b _080C9596
_080C94CA:
	mov r3, ip
	ldr r1, [r3, #8]
	ldr r0, [sp, #0x1c]
	subs r6, r1, r0
	str r6, [r3, #8]
	ldr r4, [r3, #0xc]
	ldr r5, [r3, #0x10]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	str r0, [sp, #0x38]
	str r1, [sp, #0x3c]
	cmp r1, r5
	bhi _080C94EE
	ldr r1, [sp, #0x3c]
	cmp r1, r5
	bne _080C9502
	cmp r0, r4
	bls _080C9502
_080C94EE:
	lsrs r3, r4, #0x1f
	lsls r2, r5, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #1
	adds r5, r1, #0
	adds r4, r0, #0
	subs r0, r6, #1
	mov r2, ip
	str r0, [r2, #8]
_080C9502:
	ldr r7, _080C95A8 @ =0x10000000
	ldr r6, _080C95A4 @ =0x00000000
	movs r0, #0
	movs r1, #0
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
_080C950E:
	ldr r1, [sp, #0x3c]
	cmp r1, r5
	bhi _080C9532
	cmp r1, r5
	bne _080C951E
	ldr r2, [sp, #0x38]
	cmp r2, r4
	bhi _080C9532
_080C951E:
	ldr r0, [sp, #0x40]
	orrs r0, r6
	ldr r1, [sp, #0x44]
	orrs r1, r7
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x3c]
	subs r4, r4, r0
	sbcs r5, r1
_080C9532:
	lsls r3, r7, #0x1f
	lsrs r2, r6, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r7, #1
	adds r7, r1, #0
	adds r6, r0, #0
	lsrs r3, r4, #0x1f
	lsls r2, r5, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #1
	adds r5, r1, #0
	adds r4, r0, #0
	adds r0, r7, #0
	orrs r0, r6
	cmp r0, #0
	bne _080C950E
	movs r0, #0xff
	ldr r1, [sp, #0x40]
	ands r1, r0
	movs r2, #0
	cmp r1, #0x80
	bne _080C958C
	cmp r2, #0
	bne _080C958C
	adds r0, #1
	ldr r1, [sp, #0x40]
	ands r1, r0
	adds r0, r2, #0
	orrs r0, r1
	cmp r0, #0
	bne _080C957C
	adds r0, r5, #0
	orrs r0, r4
	cmp r0, #0
	beq _080C958C
_080C957C:
	movs r0, #0x80
	movs r1, #0
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	adds r2, r2, r0
	adcs r3, r1
	str r2, [sp, #0x40]
	str r3, [sp, #0x44]
_080C958C:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	mov r2, ip
	str r0, [r2, #0xc]
	str r1, [r2, #0x10]
_080C9596:
	mov r1, ip
_080C9598:
	adds r0, r1, #0
	bl __pack_d
	add sp, #0x48
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080C95A4: .4byte 0x00000000
_080C95A8: .4byte 0x10000000

	thumb_func_start __fpcmp_parts_d
__fpcmp_parts_d: @ 0x080C95AC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #0
	ldr r1, [r5]
	cmp r1, #1
	bhi _080C95BC
	movs r0, #1
_080C95BC:
	cmp r0, #0
	bne _080C95CE
	movs r0, #0
	ldr r2, [r6]
	cmp r2, #1
	bhi _080C95CA
	movs r0, #1
_080C95CA:
	cmp r0, #0
	beq _080C95D2
_080C95CE:
	movs r0, #1
	b _080C96A8
_080C95D2:
	movs r0, #0
	cmp r1, #4
	bne _080C95DA
	movs r0, #1
_080C95DA:
	cmp r0, #0
	beq _080C95F2
	movs r0, #0
	cmp r2, #4
	bne _080C95E6
	movs r0, #1
_080C95E6:
	cmp r0, #0
	beq _080C95F2
	ldr r0, [r6, #4]
	ldr r1, [r5, #4]
	subs r0, r0, r1
	b _080C96A8
_080C95F2:
	movs r1, #0
	ldr r0, [r5]
	cmp r0, #4
	bne _080C95FC
	movs r1, #1
_080C95FC:
	cmp r1, #0
	bne _080C964A
	movs r1, #0
	cmp r2, #4
	bne _080C9608
	movs r1, #1
_080C9608:
	cmp r1, #0
	beq _080C961A
_080C960C:
	ldr r0, [r6, #4]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, #0
	beq _080C9654
	movs r1, #1
	b _080C9654
_080C961A:
	movs r1, #0
	cmp r0, #2
	bne _080C9622
	movs r1, #1
_080C9622:
	cmp r1, #0
	beq _080C9632
	movs r1, #0
	cmp r2, #2
	bne _080C962E
	movs r1, #1
_080C962E:
	cmp r1, #0
	bne _080C96A6
_080C9632:
	movs r1, #0
	cmp r0, #2
	bne _080C963A
	movs r1, #1
_080C963A:
	cmp r1, #0
	bne _080C960C
	movs r0, #0
	cmp r2, #2
	bne _080C9646
	movs r0, #1
_080C9646:
	cmp r0, #0
	beq _080C9658
_080C964A:
	ldr r0, [r5, #4]
	movs r1, #1
	cmp r0, #0
	beq _080C9654
	subs r1, #2
_080C9654:
	adds r0, r1, #0
	b _080C96A8
_080C9658:
	ldr r0, [r6, #4]
	ldr r4, [r5, #4]
	cmp r4, r0
	beq _080C966A
_080C9660:
	movs r0, #1
	cmp r4, #0
	beq _080C96A8
	subs r0, #2
	b _080C96A8
_080C966A:
	ldr r1, [r5, #8]
	ldr r0, [r6, #8]
	cmp r1, r0
	bgt _080C9660
	cmp r1, r0
	bge _080C9682
_080C9676:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, #0
	beq _080C96A8
	movs r0, #1
	b _080C96A8
_080C9682:
	ldr r3, [r5, #0x10]
	ldr r2, [r6, #0x10]
	cmp r3, r2
	bhi _080C9660
	cmp r3, r2
	bne _080C9696
	ldr r1, [r5, #0xc]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	bhi _080C9660
_080C9696:
	cmp r2, r3
	bhi _080C9676
	cmp r2, r3
	bne _080C96A6
	ldr r1, [r6, #0xc]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	bhi _080C9676
_080C96A6:
	movs r0, #0
_080C96A8:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start __cmpdf2
__cmpdf2: @ 0x080C96AC
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __eqdf2
__eqdf2: @ 0x080C96D8
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _080C9700
	movs r1, #1
_080C9700:
	cmp r1, #0
	bne _080C9712
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _080C970E
	movs r1, #1
_080C970E:
	cmp r1, #0
	beq _080C9716
_080C9712:
	movs r0, #1
	b _080C971E
_080C9716:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
_080C971E:
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __nedf2
__nedf2: @ 0x080C9724
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _080C974C
	movs r1, #1
_080C974C:
	cmp r1, #0
	bne _080C975E
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _080C975A
	movs r1, #1
_080C975A:
	cmp r1, #0
	beq _080C9762
_080C975E:
	movs r0, #1
	b _080C976A
_080C9762:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
_080C976A:
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __gtdf2
__gtdf2: @ 0x080C9770
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _080C9798
	movs r1, #1
_080C9798:
	cmp r1, #0
	bne _080C97AA
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _080C97A6
	movs r1, #1
_080C97A6:
	cmp r1, #0
	beq _080C97B0
_080C97AA:
	movs r0, #1
	rsbs r0, r0, #0
	b _080C97B8
_080C97B0:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
_080C97B8:
	add sp, #0x38
	pop {r4, pc}

	thumb_func_start __gedf2
__gedf2: @ 0x080C97BC
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _080C97E4
	movs r1, #1
_080C97E4:
	cmp r1, #0
	bne _080C97F6
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _080C97F2
	movs r1, #1
_080C97F2:
	cmp r1, #0
	beq _080C97FC
_080C97F6:
	movs r0, #1
	rsbs r0, r0, #0
	b _080C9804
_080C97FC:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
_080C9804:
	add sp, #0x38
	pop {r4, pc}

	thumb_func_start __ltdf2
__ltdf2: @ 0x080C9808
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _080C9830
	movs r1, #1
_080C9830:
	cmp r1, #0
	bne _080C9842
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _080C983E
	movs r1, #1
_080C983E:
	cmp r1, #0
	beq _080C9846
_080C9842:
	movs r0, #1
	b _080C984E
_080C9846:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
_080C984E:
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __ledf2
__ledf2: @ 0x080C9854
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _080C987C
	movs r1, #1
_080C987C:
	cmp r1, #0
	bne _080C988E
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _080C988A
	movs r1, #1
_080C988A:
	cmp r1, #0
	beq _080C9892
_080C988E:
	movs r0, #1
	b _080C989A
_080C9892:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
_080C989A:
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __floatsidf
__floatsidf: @ 0x080C98A0
	push {r4, r5, lr}
	sub sp, #0x14
	adds r2, r0, #0
	movs r0, #3
	str r0, [sp]
	lsrs r1, r2, #0x1f
	str r1, [sp, #4]
	cmp r2, #0
	bne _080C98B8
	movs r0, #2
	str r0, [sp]
	b _080C990E
_080C98B8:
	movs r0, #0x3c
	str r0, [sp, #8]
	cmp r1, #0
	beq _080C98DE
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r2, r0
	bne _080C98D8
	ldr r1, _080C98D4 @ =0x00000000
	ldr r0, _080C98D0 @ =0xC1E00000
	b _080C9914
	.align 2, 0
_080C98D0: .4byte 0xC1E00000
_080C98D4: .4byte 0x00000000
_080C98D8:
	rsbs r0, r2, #0
	asrs r1, r0, #0x1f
	b _080C98E2
_080C98DE:
	adds r0, r2, #0
	asrs r1, r2, #0x1f
_080C98E2:
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r0, [sp, #0x10]
	ldr r1, _080C9918 @ =0x0FFFFFFF
	cmp r0, r1
	bhi _080C990E
	adds r5, r1, #0
	ldr r4, [sp, #8]
_080C98F2:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	lsrs r3, r0, #0x1f
	lsls r2, r1, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r0, #1
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	subs r4, #1
	ldr r0, [sp, #0x10]
	cmp r0, r5
	bls _080C98F2
	str r4, [sp, #8]
_080C990E:
	mov r0, sp
	bl __pack_d
_080C9914:
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
_080C9918: .4byte 0x0FFFFFFF

	thumb_func_start __fixdfsi
__fixdfsi: @ 0x080C991C
	push {lr}
	sub sp, #0x1c
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, sp, #0x14
	mov r1, sp
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #2
	bne _080C9936
	movs r1, #1
_080C9936:
	cmp r1, #0
	bne _080C996A
	movs r1, #0
	cmp r0, #1
	bhi _080C9942
	movs r1, #1
_080C9942:
	cmp r1, #0
	bne _080C996A
	movs r1, #0
	cmp r0, #4
	bne _080C994E
	movs r1, #1
_080C994E:
	cmp r1, #0
	beq _080C9964
_080C9952:
	ldr r0, [sp, #4]
	ldr r1, _080C9960 @ =0x7FFFFFFF
	cmp r0, #0
	beq _080C9988
	adds r1, #1
	b _080C9988
	.align 2, 0
_080C9960: .4byte 0x7FFFFFFF
_080C9964:
	ldr r0, [sp, #8]
	cmp r0, #0
	bge _080C996E
_080C996A:
	movs r0, #0
	b _080C998A
_080C996E:
	cmp r0, #0x1e
	bgt _080C9952
	movs r2, #0x3c
	subs r2, r2, r0
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	bl __lshrdi3
	adds r1, r0, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _080C9988
	rsbs r1, r1, #0
_080C9988:
	adds r0, r1, #0
_080C998A:
	add sp, #0x1c
	pop {pc}
	.align 2, 0

	thumb_func_start __negdf2
__negdf2: @ 0x080C9990
	push {lr}
	sub sp, #0x1c
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, sp, #0x14
	mov r1, sp
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _080C99AA
	movs r1, #1
_080C99AA:
	str r1, [sp, #4]
	mov r0, sp
	bl __pack_d
	add sp, #0x1c
	pop {pc}
	.align 2, 0

	thumb_func_start __make_dp
__make_dp: @ 0x080C99B8
	sub sp, #4
	push {r4, lr}
	sub sp, #0x14
	str r3, [sp, #0x1c]
	ldr r3, [sp, #0x1c]
	ldr r4, [sp, #0x20]
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	str r4, [sp, #0x10]
	mov r0, sp
	bl __pack_d
	add sp, #0x14
	pop {r4}
	pop {r3}
	add sp, #4
	bx r3
	.align 2, 0

	thumb_func_start __truncdfsf2
__truncdfsf2: @ 0x080C99E0
	push {r4, r5, lr}
	sub sp, #0x1c
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, sp, #0x14
	mov r1, sp
	bl __unpack_d
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	lsls r5, r3, #2
	lsrs r4, r2, #0x1e
	adds r0, r5, #0
	orrs r0, r4
	adds r5, r0, #0
	ldr r4, _080C9A20 @ =0x3FFFFFFF
	adds r0, r2, #0
	ands r0, r4
	movs r1, #0
	orrs r0, r1
	cmp r0, #0
	beq _080C9A10
	movs r0, #1
	orrs r5, r0
_080C9A10:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	adds r3, r5, #0
	bl __make_fp
	add sp, #0x1c
	pop {r4, r5, pc}
	.align 2, 0
_080C9A20: .4byte 0x3FFFFFFF

	thumb_func_start __pack_f
__pack_f: @ 0x080C9A24
	push {r4, r5, r6, lr}
	ldr r2, [r0, #0xc]
	ldr r6, [r0, #4]
	movs r5, #0
	movs r1, #0
	ldr r3, [r0]
	cmp r3, #1
	bhi _080C9A36
	movs r1, #1
_080C9A36:
	cmp r1, #0
	beq _080C9A44
	movs r5, #0xff
	movs r0, #0x80
	lsls r0, r0, #0xd
	orrs r2, r0
	b _080C9AAA
_080C9A44:
	movs r1, #0
	cmp r3, #4
	bne _080C9A4C
	movs r1, #1
_080C9A4C:
	cmp r1, #0
	bne _080C9A80
	movs r1, #0
	cmp r3, #2
	bne _080C9A58
	movs r1, #1
_080C9A58:
	cmp r1, #0
	beq _080C9A60
	movs r2, #0
	b _080C9AAA
_080C9A60:
	cmp r2, #0
	beq _080C9AAA
	ldr r0, [r0, #8]
	movs r3, #0x7e
	rsbs r3, r3, #0
	cmp r0, r3
	bge _080C9A7C
	subs r0, r3, r0
	cmp r0, #0x19
	ble _080C9A78
	movs r2, #0
	b _080C9AA8
_080C9A78:
	lsrs r2, r0
	b _080C9AA8
_080C9A7C:
	cmp r0, #0x7f
	ble _080C9A86
_080C9A80:
	movs r5, #0xff
	movs r2, #0
	b _080C9AAA
_080C9A86:
	adds r5, r0, #0
	adds r5, #0x7f
	movs r0, #0x7f
	ands r0, r2
	cmp r0, #0x40
	bne _080C9A9E
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _080C9AA0
	adds r2, #0x40
	b _080C9AA0
_080C9A9E:
	adds r2, #0x3f
_080C9AA0:
	cmp r2, #0
	bge _080C9AA8
	lsrs r2, r2, #1
	adds r5, #1
_080C9AA8:
	lsrs r2, r2, #7
_080C9AAA:
	ldr r0, _080C9ACC @ =0x007FFFFF
	ands r2, r0
	ldr r0, _080C9AD0 @ =0xFF800000
	ands r4, r0
	orrs r4, r2
	movs r0, #0xff
	ands r5, r0
	lsls r1, r5, #0x17
	ldr r0, _080C9AD4 @ =0x807FFFFF
	ands r4, r0
	orrs r4, r1
	lsls r1, r6, #0x1f
	ldr r0, _080C9AD8 @ =0x7FFFFFFF
	ands r4, r0
	orrs r4, r1
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_080C9ACC: .4byte 0x007FFFFF
_080C9AD0: .4byte 0xFF800000
_080C9AD4: .4byte 0x807FFFFF
_080C9AD8: .4byte 0x7FFFFFFF

	thumb_func_start __unpack_f
__unpack_f: @ 0x080C9ADC
	push {r4, lr}
	adds r3, r1, #0
	ldr r0, [r0]
	lsls r1, r0, #9
	lsrs r2, r1, #9
	lsls r1, r0, #1
	lsrs r1, r1, #0x18
	lsrs r0, r0, #0x1f
	str r0, [r3, #4]
	cmp r1, #0
	bne _080C9B20
	cmp r2, #0
	bne _080C9AFC
	movs r0, #2
	str r0, [r3]
	b _080C9B54
_080C9AFC:
	adds r4, r1, #0
	subs r4, #0x7e
	str r4, [r3, #8]
	lsls r2, r2, #7
	movs r0, #3
	str r0, [r3]
	ldr r1, _080C9B1C @ =0x3FFFFFFF
	cmp r2, r1
	bhi _080C9B3C
	adds r0, r4, #0
_080C9B10:
	lsls r2, r2, #1
	subs r0, #1
	cmp r2, r1
	bls _080C9B10
	str r0, [r3, #8]
	b _080C9B3C
	.align 2, 0
_080C9B1C: .4byte 0x3FFFFFFF
_080C9B20:
	cmp r1, #0xff
	bne _080C9B40
	cmp r2, #0
	bne _080C9B2E
	movs r0, #4
	str r0, [r3]
	b _080C9B54
_080C9B2E:
	movs r0, #0x80
	lsls r0, r0, #0xd
	ands r0, r2
	cmp r0, #0
	beq _080C9B3A
	movs r0, #1
_080C9B3A:
	str r0, [r3]
_080C9B3C:
	str r2, [r3, #0xc]
	b _080C9B54
_080C9B40:
	adds r0, r1, #0
	subs r0, #0x7f
	str r0, [r3, #8]
	movs r0, #3
	str r0, [r3]
	lsls r0, r2, #7
	movs r1, #0x80
	lsls r1, r1, #0x17
	orrs r0, r1
	str r0, [r3, #0xc]
_080C9B54:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_80C9B58
sub_80C9B58: @ 0x080C9B58
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r7, r1, #0
	adds r5, r2, #0
	movs r0, #0
	ldr r2, [r6]
	cmp r2, #1
	bhi _080C9B6E
	movs r0, #1
_080C9B6E:
	cmp r0, #0
	beq _080C9B76
_080C9B72:
	adds r0, r6, #0
	b _080C9CCC
_080C9B76:
	movs r1, #0
	ldr r0, [r7]
	cmp r0, #1
	bhi _080C9B80
	movs r1, #1
_080C9B80:
	cmp r1, #0
	bne _080C9BF4
	movs r1, #0
	cmp r2, #4
	bne _080C9B8C
	movs r1, #1
_080C9B8C:
	cmp r1, #0
	beq _080C9BAC
	movs r1, #0
	cmp r0, #4
	bne _080C9B98
	movs r1, #1
_080C9B98:
	cmp r1, #0
	beq _080C9B72
	ldr r1, [r6, #4]
	ldr r0, [r7, #4]
	cmp r1, r0
	beq _080C9B72
	ldr r0, _080C9BA8 @ =0x03000468
	b _080C9CCC
	.align 2, 0
_080C9BA8: .4byte 0x03000468
_080C9BAC:
	movs r1, #0
	cmp r0, #4
	bne _080C9BB4
	movs r1, #1
_080C9BB4:
	cmp r1, #0
	bne _080C9BF4
	movs r1, #0
	cmp r0, #2
	bne _080C9BC0
	movs r1, #1
_080C9BC0:
	cmp r1, #0
	beq _080C9BE6
	movs r0, #0
	cmp r2, #2
	bne _080C9BCC
	movs r0, #1
_080C9BCC:
	cmp r0, #0
	beq _080C9B72
	adds r1, r5, #0
	adds r0, r6, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, [r6, #4]
	ldr r1, [r7, #4]
	ands r0, r1
	str r0, [r5, #4]
	b _080C9CCA
_080C9BE6:
	movs r1, #0
	ldr r0, [r6]
	cmp r0, #2
	bne _080C9BF0
	movs r1, #1
_080C9BF0:
	cmp r1, #0
	beq _080C9BF8
_080C9BF4:
	adds r0, r7, #0
	b _080C9CCC
_080C9BF8:
	ldr r1, [r6, #8]
	ldr r3, [r7, #8]
	ldr r2, [r6, #0xc]
	ldr r4, [r7, #0xc]
	subs r0, r1, r3
	cmp r0, #0
	bge _080C9C08
	rsbs r0, r0, #0
_080C9C08:
	cmp r0, #0x1f
	bgt _080C9C4C
	ldr r6, [r6, #4]
	ldr r7, [r7, #4]
	mov r8, r7
	cmp r1, r3
	ble _080C9C2E
	movs r7, #1
	mov ip, r7
	subs r3, r1, r3
_080C9C1C:
	subs r3, #1
	adds r0, r4, #0
	mov r7, ip
	ands r0, r7
	lsrs r4, r4, #1
	orrs r4, r0
	cmp r3, #0
	bne _080C9C1C
	adds r3, r1, #0
_080C9C2E:
	cmp r3, r1
	ble _080C9C5E
	movs r0, #1
	mov ip, r0
	subs r1, r3, r1
_080C9C38:
	subs r1, #1
	adds r0, r2, #0
	mov r7, ip
	ands r0, r7
	lsrs r2, r2, #1
	orrs r2, r0
	cmp r1, #0
	bne _080C9C38
	adds r1, r3, #0
	b _080C9C5E
_080C9C4C:
	cmp r1, r3
	ble _080C9C54
	movs r4, #0
	b _080C9C58
_080C9C54:
	adds r1, r3, #0
	movs r2, #0
_080C9C58:
	ldr r6, [r6, #4]
	ldr r7, [r7, #4]
	mov r8, r7
_080C9C5E:
	cmp r6, r8
	beq _080C9CA8
	cmp r6, #0
	beq _080C9C6A
	subs r3, r4, r2
	b _080C9C6C
_080C9C6A:
	subs r3, r2, r4
_080C9C6C:
	cmp r3, #0
	blt _080C9C7A
	movs r0, #0
	str r0, [r5, #4]
	str r1, [r5, #8]
	str r3, [r5, #0xc]
	b _080C9C84
_080C9C7A:
	movs r0, #1
	str r0, [r5, #4]
	str r1, [r5, #8]
	rsbs r0, r3, #0
	str r0, [r5, #0xc]
_080C9C84:
	ldr r1, [r5, #0xc]
	subs r0, r1, #1
	ldr r2, _080C9CA4 @ =0x3FFFFFFE
	cmp r0, r2
	bhi _080C9CB0
_080C9C8E:
	lsls r0, r1, #1
	str r0, [r5, #0xc]
	ldr r1, [r5, #8]
	subs r1, #1
	str r1, [r5, #8]
	adds r1, r0, #0
	subs r0, r1, #1
	cmp r0, r2
	bls _080C9C8E
	b _080C9CB0
	.align 2, 0
_080C9CA4: .4byte 0x3FFFFFFE
_080C9CA8:
	str r6, [r5, #4]
	str r1, [r5, #8]
	adds r0, r2, r4
	str r0, [r5, #0xc]
_080C9CB0:
	movs r0, #3
	str r0, [r5]
	ldr r1, [r5, #0xc]
	cmp r1, #0
	bge _080C9CCA
	movs r0, #1
	ands r0, r1
	lsrs r1, r1, #1
	orrs r0, r1
	str r0, [r5, #0xc]
	ldr r0, [r5, #8]
	adds r0, #1
	str r0, [r5, #8]
_080C9CCA:
	adds r0, r5, #0
_080C9CCC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start __addsf3
__addsf3: @ 0x080C9CD4
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x30]
	str r1, [sp, #0x34]
	add r0, sp, #0x30
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x34
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	add r2, sp, #0x20
	mov r0, sp
	adds r1, r4, #0
	bl sub_80C9B58
	bl __pack_f
	add sp, #0x38
	pop {r4, pc}

	thumb_func_start __subsf3
__subsf3: @ 0x080C9D00
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x30]
	str r1, [sp, #0x34]
	add r0, sp, #0x30
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x34
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	ldr r0, [r4, #4]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #4]
	add r2, sp, #0x20
	mov r0, sp
	adds r1, r4, #0
	bl sub_80C9B58
	bl __pack_f
	add sp, #0x38
	pop {r4, pc}

	thumb_func_start __mulsf3
__mulsf3: @ 0x080C9D34
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x38
	str r0, [sp, #0x30]
	str r1, [sp, #0x34]
	add r0, sp, #0x30
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x34
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	mov r7, sp
	add r0, sp, #0x20
	mov r8, r0
	movs r0, #0
	ldr r1, [sp]
	mov sb, r8
	cmp r1, #1
	bhi _080C9D66
	movs r0, #1
_080C9D66:
	cmp r0, #0
	bne _080C9DC4
	movs r2, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _080C9D74
	movs r2, #1
_080C9D74:
	cmp r2, #0
	beq _080C9D7C
	ldr r0, [sp, #4]
	b _080C9DE4
_080C9D7C:
	movs r2, #0
	cmp r1, #4
	bne _080C9D84
	movs r2, #1
_080C9D84:
	cmp r2, #0
	beq _080C9D96
	movs r1, #0
	cmp r0, #2
	bne _080C9D90
	movs r1, #1
_080C9D90:
	cmp r1, #0
	bne _080C9DAE
	b _080C9DC4
_080C9D96:
	movs r2, #0
	cmp r0, #4
	bne _080C9D9E
	movs r2, #1
_080C9D9E:
	cmp r2, #0
	beq _080C9DB8
	movs r0, #0
	cmp r1, #2
	bne _080C9DAA
	movs r0, #1
_080C9DAA:
	cmp r0, #0
	beq _080C9DE2
_080C9DAE:
	ldr r0, _080C9DB4 @ =0x03000468
	b _080C9E86
	.align 2, 0
_080C9DB4: .4byte 0x03000468
_080C9DB8:
	movs r2, #0
	cmp r1, #2
	bne _080C9DC0
	movs r2, #1
_080C9DC0:
	cmp r2, #0
	beq _080C9DD6
_080C9DC4:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x14]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #4]
	mov r0, sp
	b _080C9E86
_080C9DD6:
	movs r1, #0
	cmp r0, #2
	bne _080C9DDE
	movs r1, #1
_080C9DDE:
	cmp r1, #0
	beq _080C9DF4
_080C9DE2:
	ldr r0, [r7, #4]
_080C9DE4:
	ldr r1, [sp, #0x14]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #0x14]
	adds r0, r4, #0
	b _080C9E86
_080C9DF4:
	ldr r0, [r7, #0xc]
	movs r1, #0
	ldr r2, [sp, #0x1c]
	movs r3, #0
	bl __muldi3
	adds r2, r1, #0
	adds r5, r2, #0
	adds r6, r0, #0
	ldr r4, [r7, #8]
	ldr r0, [sp, #0x18]
	adds r4, r4, r0
	str r4, [sp, #0x28]
	ldr r1, [r7, #4]
	ldr r0, [sp, #0x14]
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	str r0, [sp, #0x24]
	adds r4, #2
	str r4, [sp, #0x28]
	cmp r2, #0
	bge _080C9E40
	movs r2, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
_080C9E2A:
	adds r4, #1
	adds r0, r5, #0
	ands r0, r2
	cmp r0, #0
	beq _080C9E38
	lsrs r6, r6, #1
	orrs r6, r1
_080C9E38:
	lsrs r5, r5, #1
	cmp r5, #0
	blt _080C9E2A
	str r4, [sp, #0x28]
_080C9E40:
	ldr r0, _080C9E94 @ =0x3FFFFFFF
	cmp r5, r0
	bhi _080C9E66
	movs r4, #0x80
	lsls r4, r4, #0x18
	movs r3, #1
	adds r2, r0, #0
	ldr r1, [sp, #0x28]
_080C9E50:
	subs r1, #1
	lsls r5, r5, #1
	adds r0, r6, #0
	ands r0, r4
	cmp r0, #0
	beq _080C9E5E
	orrs r5, r3
_080C9E5E:
	lsls r6, r6, #1
	cmp r5, r2
	bls _080C9E50
	str r1, [sp, #0x28]
_080C9E66:
	movs r0, #0x7f
	ands r0, r5
	cmp r0, #0x40
	bne _080C9E7C
	movs r0, #0x80
	ands r0, r5
	cmp r0, #0
	bne _080C9E7A
	cmp r6, #0
	beq _080C9E7C
_080C9E7A:
	adds r5, #0x40
_080C9E7C:
	str r5, [sp, #0x2c]
	movs r0, #3
	mov r1, r8
	str r0, [r1]
	mov r0, sb
_080C9E86:
	bl __pack_f
	add sp, #0x38
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080C9E94: .4byte 0x3FFFFFFF

	thumb_func_start __divsf3
__divsf3: @ 0x080C9E98
	push {r4, r5, r6, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x24
	add r5, sp, #0x10
	adds r1, r5, #0
	bl __unpack_f
	mov r4, sp
	movs r0, #0
	ldr r3, [sp]
	cmp r3, #1
	bhi _080C9EBE
	movs r0, #1
_080C9EBE:
	cmp r0, #0
	beq _080C9EC6
	mov r1, sp
	b _080C9F78
_080C9EC6:
	movs r0, #0
	ldr r2, [sp, #0x10]
	adds r6, r2, #0
	cmp r2, #1
	bhi _080C9ED2
	movs r0, #1
_080C9ED2:
	cmp r0, #0
	beq _080C9EDA
	adds r1, r5, #0
	b _080C9F78
_080C9EDA:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x14]
	eors r0, r1
	str r0, [sp, #4]
	movs r0, #0
	cmp r3, #4
	bne _080C9EEA
	movs r0, #1
_080C9EEA:
	cmp r0, #0
	bne _080C9EFA
	movs r0, #0
	cmp r3, #2
	bne _080C9EF6
	movs r0, #1
_080C9EF6:
	cmp r0, #0
	beq _080C9F0C
_080C9EFA:
	ldr r0, [r4]
	adds r1, r4, #0
	cmp r0, r6
	bne _080C9F78
	ldr r1, _080C9F08 @ =0x03000468
	b _080C9F78
	.align 2, 0
_080C9F08: .4byte 0x03000468
_080C9F0C:
	movs r1, #0
	cmp r2, #4
	bne _080C9F14
	movs r1, #1
_080C9F14:
	cmp r1, #0
	beq _080C9F20
	str r0, [sp, #0xc]
	str r0, [sp, #8]
	mov r1, sp
	b _080C9F78
_080C9F20:
	movs r0, #0
	cmp r2, #2
	bne _080C9F28
	movs r0, #1
_080C9F28:
	cmp r0, #0
	beq _080C9F32
	movs r0, #4
	str r0, [r4]
	b _080C9F76
_080C9F32:
	ldr r1, [r4, #8]
	ldr r0, [sp, #0x18]
	subs r0, r1, r0
	str r0, [r4, #8]
	ldr r2, [r4, #0xc]
	ldr r3, [sp, #0x1c]
	cmp r2, r3
	bhs _080C9F48
	lsls r2, r2, #1
	subs r0, #1
	str r0, [r4, #8]
_080C9F48:
	movs r0, #0x80
	lsls r0, r0, #0x17
	movs r1, #0
_080C9F4E:
	cmp r2, r3
	blo _080C9F56
	orrs r1, r0
	subs r2, r2, r3
_080C9F56:
	lsrs r0, r0, #1
	lsls r2, r2, #1
	cmp r0, #0
	bne _080C9F4E
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x40
	bne _080C9F74
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080C9F72
	cmp r2, #0
	beq _080C9F74
_080C9F72:
	adds r1, #0x40
_080C9F74:
	str r1, [r4, #0xc]
_080C9F76:
	adds r1, r4, #0
_080C9F78:
	adds r0, r1, #0
	bl __pack_f
	add sp, #0x28
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start __fpcmp_parts_f
__fpcmp_parts_f: @ 0x080C9F84
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	ldr r2, [r4]
	cmp r2, #1
	bhi _080C9F92
	movs r0, #1
_080C9F92:
	cmp r0, #0
	bne _080C9FA4
	movs r0, #0
	ldr r3, [r1]
	cmp r3, #1
	bhi _080C9FA0
	movs r0, #1
_080C9FA0:
	cmp r0, #0
	beq _080C9FA8
_080C9FA4:
	movs r0, #1
	b _080CA066
_080C9FA8:
	movs r0, #0
	cmp r2, #4
	bne _080C9FB0
	movs r0, #1
_080C9FB0:
	cmp r0, #0
	beq _080C9FC8
	movs r0, #0
	cmp r3, #4
	bne _080C9FBC
	movs r0, #1
_080C9FBC:
	cmp r0, #0
	beq _080C9FC8
	ldr r0, [r1, #4]
	ldr r1, [r4, #4]
	subs r0, r0, r1
	b _080CA066
_080C9FC8:
	movs r2, #0
	ldr r0, [r4]
	cmp r0, #4
	bne _080C9FD2
	movs r2, #1
_080C9FD2:
	cmp r2, #0
	bne _080CA020
	movs r2, #0
	cmp r3, #4
	bne _080C9FDE
	movs r2, #1
_080C9FDE:
	cmp r2, #0
	beq _080C9FF0
_080C9FE2:
	ldr r0, [r1, #4]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, #0
	beq _080CA02A
	movs r1, #1
	b _080CA02A
_080C9FF0:
	movs r2, #0
	cmp r0, #2
	bne _080C9FF8
	movs r2, #1
_080C9FF8:
	cmp r2, #0
	beq _080CA008
	movs r2, #0
	cmp r3, #2
	bne _080CA004
	movs r2, #1
_080CA004:
	cmp r2, #0
	bne _080CA064
_080CA008:
	movs r2, #0
	cmp r0, #2
	bne _080CA010
	movs r2, #1
_080CA010:
	cmp r2, #0
	bne _080C9FE2
	movs r0, #0
	cmp r3, #2
	bne _080CA01C
	movs r0, #1
_080CA01C:
	cmp r0, #0
	beq _080CA02E
_080CA020:
	ldr r0, [r4, #4]
	movs r1, #1
	cmp r0, #0
	beq _080CA02A
	subs r1, #2
_080CA02A:
	adds r0, r1, #0
	b _080CA066
_080CA02E:
	ldr r3, [r4, #4]
	ldr r0, [r1, #4]
	cmp r3, r0
	beq _080CA040
_080CA036:
	movs r0, #1
	cmp r3, #0
	beq _080CA066
	subs r0, #2
	b _080CA066
_080CA040:
	ldr r2, [r4, #8]
	ldr r0, [r1, #8]
	cmp r2, r0
	bgt _080CA036
	cmp r2, r0
	bge _080CA058
_080CA04C:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, #0
	beq _080CA066
	movs r0, #1
	b _080CA066
_080CA058:
	ldr r0, [r4, #0xc]
	ldr r1, [r1, #0xc]
	cmp r0, r1
	bhi _080CA036
	cmp r0, r1
	blo _080CA04C
_080CA064:
	movs r0, #0
_080CA066:
	pop {r4, pc}

	thumb_func_start __cmpsf2
__cmpsf2: @ 0x080CA068
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __eqsf2
__eqsf2: @ 0x080CA090
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _080CA0B4
	movs r1, #1
_080CA0B4:
	cmp r1, #0
	bne _080CA0C6
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _080CA0C2
	movs r1, #1
_080CA0C2:
	cmp r1, #0
	beq _080CA0CA
_080CA0C6:
	movs r0, #1
	b _080CA0D2
_080CA0CA:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
_080CA0D2:
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __nesf2
__nesf2: @ 0x080CA0D8
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _080CA0FC
	movs r1, #1
_080CA0FC:
	cmp r1, #0
	bne _080CA10E
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _080CA10A
	movs r1, #1
_080CA10A:
	cmp r1, #0
	beq _080CA112
_080CA10E:
	movs r0, #1
	b _080CA11A
_080CA112:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
_080CA11A:
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __gtsf2
__gtsf2: @ 0x080CA120
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _080CA144
	movs r1, #1
_080CA144:
	cmp r1, #0
	bne _080CA156
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _080CA152
	movs r1, #1
_080CA152:
	cmp r1, #0
	beq _080CA15C
_080CA156:
	movs r0, #1
	rsbs r0, r0, #0
	b _080CA164
_080CA15C:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
_080CA164:
	add sp, #0x28
	pop {r4, pc}

	thumb_func_start __gesf2
__gesf2: @ 0x080CA168
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _080CA18C
	movs r1, #1
_080CA18C:
	cmp r1, #0
	bne _080CA19E
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _080CA19A
	movs r1, #1
_080CA19A:
	cmp r1, #0
	beq _080CA1A4
_080CA19E:
	movs r0, #1
	rsbs r0, r0, #0
	b _080CA1AC
_080CA1A4:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
_080CA1AC:
	add sp, #0x28
	pop {r4, pc}

	thumb_func_start __ltsf2
__ltsf2: @ 0x080CA1B0
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _080CA1D4
	movs r1, #1
_080CA1D4:
	cmp r1, #0
	bne _080CA1E6
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _080CA1E2
	movs r1, #1
_080CA1E2:
	cmp r1, #0
	beq _080CA1EA
_080CA1E6:
	movs r0, #1
	b _080CA1F2
_080CA1EA:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
_080CA1F2:
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __lesf2
__lesf2: @ 0x080CA1F8
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _080CA21C
	movs r1, #1
_080CA21C:
	cmp r1, #0
	bne _080CA22E
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _080CA22A
	movs r1, #1
_080CA22A:
	cmp r1, #0
	beq _080CA232
_080CA22E:
	movs r0, #1
	b _080CA23A
_080CA232:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
_080CA23A:
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __floatsisf
__floatsisf: @ 0x080CA240
	push {lr}
	sub sp, #0x10
	adds r1, r0, #0
	movs r0, #3
	str r0, [sp]
	lsrs r2, r1, #0x1f
	str r2, [sp, #4]
	cmp r1, #0
	bne _080CA258
	movs r0, #2
	str r0, [sp]
	b _080CA290
_080CA258:
	movs r0, #0x1e
	str r0, [sp, #8]
	cmp r2, #0
	beq _080CA276
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r1, r0
	bne _080CA270
	ldr r0, _080CA26C @ =0xCF000000
	b _080CA296
	.align 2, 0
_080CA26C: .4byte 0xCF000000
_080CA270:
	rsbs r0, r1, #0
	str r0, [sp, #0xc]
	b _080CA278
_080CA276:
	str r1, [sp, #0xc]
_080CA278:
	ldr r2, [sp, #0xc]
	ldr r3, _080CA29C @ =0x3FFFFFFF
	cmp r2, r3
	bhi _080CA290
	ldr r1, [sp, #8]
_080CA282:
	lsls r0, r2, #1
	subs r1, #1
	adds r2, r0, #0
	cmp r0, r3
	bls _080CA282
	str r1, [sp, #8]
	str r0, [sp, #0xc]
_080CA290:
	mov r0, sp
	bl __pack_f
_080CA296:
	add sp, #0x10
	pop {pc}
	.align 2, 0
_080CA29C: .4byte 0x3FFFFFFF

	thumb_func_start __fixsfsi
__fixsfsi: @ 0x080CA2A0
	push {lr}
	sub sp, #0x14
	str r0, [sp, #0x10]
	add r0, sp, #0x10
	mov r1, sp
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #2
	bne _080CA2B8
	movs r1, #1
_080CA2B8:
	cmp r1, #0
	bne _080CA2EA
	movs r1, #0
	cmp r0, #1
	bhi _080CA2C4
	movs r1, #1
_080CA2C4:
	cmp r1, #0
	bne _080CA2EA
	movs r1, #0
	cmp r0, #4
	bne _080CA2D0
	movs r1, #1
_080CA2D0:
	cmp r1, #0
	beq _080CA2E4
_080CA2D4:
	ldr r0, [sp, #4]
	ldr r1, _080CA2E0 @ =0x7FFFFFFF
	cmp r0, #0
	beq _080CA302
	adds r1, #1
	b _080CA302
	.align 2, 0
_080CA2E0: .4byte 0x7FFFFFFF
_080CA2E4:
	ldr r1, [sp, #8]
	cmp r1, #0
	bge _080CA2EE
_080CA2EA:
	movs r0, #0
	b _080CA304
_080CA2EE:
	cmp r1, #0x1e
	bgt _080CA2D4
	movs r0, #0x1e
	subs r0, r0, r1
	ldr r1, [sp, #0xc]
	lsrs r1, r0
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _080CA302
	rsbs r1, r1, #0
_080CA302:
	adds r0, r1, #0
_080CA304:
	add sp, #0x14
	pop {pc}

	thumb_func_start __negsf2
__negsf2: @ 0x080CA308
	push {lr}
	sub sp, #0x14
	str r0, [sp, #0x10]
	add r0, sp, #0x10
	mov r1, sp
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _080CA320
	movs r1, #1
_080CA320:
	str r1, [sp, #4]
	mov r0, sp
	bl __pack_f
	add sp, #0x14
	pop {pc}

	thumb_func_start __make_fp
__make_fp: @ 0x080CA32C
	push {lr}
	sub sp, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, sp
	bl __pack_f
	add sp, #0x10
	pop {pc}
	.align 2, 0

	thumb_func_start __extendsfdf2
__extendsfdf2: @ 0x080CA344
	push {r4, r5, r6, lr}
	sub sp, #0x18
	str r0, [sp, #0x14]
	add r0, sp, #0x14
	add r1, sp, #4
	bl __unpack_f
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	movs r4, #0
	lsrs r6, r3, #2
	lsls r5, r4, #0x1e
	adds r4, r6, #0
	orrs r4, r5
	lsls r3, r3, #0x1e
	str r4, [sp]
	bl __make_dp
	add sp, #0x18
	pop {r4, r5, r6, pc}

	thumb_func_start __lshrdi3
__lshrdi3: @ 0x080CA370
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r5, r0, #0
	cmp r2, #0
	beq _080CA3A0
	movs r0, #0x20
	subs r0, r0, r2
	cmp r0, #0
	bgt _080CA38C
	movs r4, #0
	rsbs r0, r0, #0
	adds r3, r6, #0
	lsrs r3, r0
	b _080CA39C
_080CA38C:
	adds r1, r6, #0
	lsls r1, r0
	adds r4, r6, #0
	lsrs r4, r2
	adds r0, r5, #0
	lsrs r0, r2
	adds r3, r0, #0
	orrs r3, r1
_080CA39C:
	adds r1, r4, #0
	adds r0, r3, #0
_080CA3A0:
	pop {r4, r5, r6, pc}
	.align 2, 0

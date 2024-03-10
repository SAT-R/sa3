.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Interactables016_027
CreateEntity_Interactables016_027: @ 0x0802EB04
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov sb, r1
	mov sl, r2
	adds r4, r3, #0
	ldr r5, [sp, #0x30]
	ldr r1, [sp, #0x34]
	mov r8, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	mov r2, sb
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _0802EC2C @ =Task_802ED40
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0802EC30 @ =TaskDestruction_Interactables016_027
	str r1, [sp]
	movs r1, #0x58
	movs r3, #0
	bl TaskCreate
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r6, r0
	ldr r1, _0802EC34 @ =0x0300002C
	adds r1, r6, r1
	str r1, [sp, #8]
	str r7, [sp, #0xc]
	strh r4, [r7, #4]
	strh r5, [r7, #6]
	mov r2, sl
	str r2, [r7]
	ldrb r0, [r2]
	strb r0, [r7, #0xa]
	mov r0, r8
	strb r0, [r7, #0xb]
	ldrb r0, [r2]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	lsls r0, r0, #8
	mov r8, r0
	str r0, [r7, #0xc]
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	lsls r4, r0, #8
	str r4, [r7, #0x10]
	mov r1, sb
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	mov r2, r8
	asrs r1, r2, #8
	asrs r2, r4, #8
	mov r3, sl
	bl sub_804DC38
	strh r0, [r7, #0x28]
	ldr r5, _0802EC38 @ =0x0300002B
	adds r0, r6, r5
	mov r1, sb
	strb r1, [r0]
	ldr r2, _0802EC3C @ =0x03000054
	adds r0, r6, r2
	movs r5, #0
	strb r5, [r0]
	ldr r0, _0802EC40 @ =0x03000055
	adds r6, r6, r0
	movs r1, #3
	ldr r2, [sp, #4]
	ands r1, r2
	ldrb r2, [r6]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r6]
	mov r5, sl
	movs r2, #4
	ldrsb r2, [r5, r2]
	lsls r2, r2, #0xb
	adds r2, r4, r2
	ldrb r3, [r5, #6]
	lsls r3, r3, #0xa
	movs r0, #3
	ldrsb r0, [r5, r0]
	lsls r0, r0, #0xb
	add r0, r8
	ldrb r1, [r5, #5]
	lsls r1, r1, #0xa
	str r3, [r7, #0x14]
	str r1, [r7, #0x18]
	adds r0, r0, r1
	str r0, [r7, #0x1c]
	adds r2, r2, r3
	str r2, [r7, #0x20]
	movs r2, #0
	ldrb r0, [r5, #7]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0802EC10
	movs r3, #1
_0802EBF4:
	lsls r0, r2, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #4
	bgt _0802EC10
	mov r5, sl
	ldrb r0, [r5, #7]
	asrs r0, r1
	ands r0, r3
	cmp r0, #0
	beq _0802EBF4
_0802EC10:
	adds r0, r2, #1
	ldr r1, [sp, #0xc]
	adds r1, #0x2a
	strb r0, [r1]
	ldr r1, [sp, #4]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	beq _0802EC88
	cmp r0, #1
	bgt _0802EC44
	cmp r0, #0
	beq _0802EC4E
	b _0802EC48
	.align 2, 0
_0802EC2C: .4byte Task_802ED40
_0802EC30: .4byte TaskDestruction_Interactables016_027
_0802EC34: .4byte 0x0300002C
_0802EC38: .4byte 0x0300002B
_0802EC3C: .4byte 0x03000054
_0802EC40: .4byte 0x03000055
_0802EC44:
	cmp r0, #2
	beq _0802ECA2
_0802EC48:
	adds r2, r7, #0
	adds r2, #0x55
	b _0802ED08
_0802EC4E:
	mov r2, sl
	ldrb r1, [r2, #7]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802EC66
	adds r0, r7, #0
	adds r0, #0x55
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	b _0802EC72
_0802EC66:
	adds r0, r7, #0
	adds r0, #0x55
	ldrb r2, [r0]
	movs r1, #9
	rsbs r1, r1, #0
	ands r1, r2
_0802EC72:
	strb r1, [r0]
	adds r2, r0, #0
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0x10
	b _0802ED04
_0802EC88:
	adds r2, r7, #0
	adds r2, #0x55
	ldrb r1, [r2]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0x10
	b _0802ED04
_0802ECA2:
	adds r1, r7, #0
	adds r1, #0x55
	ldrb r2, [r1]
	movs r0, #8
	adds r3, r2, #0
	orrs r3, r0
	strb r3, [r1]
	mov r5, sl
	ldrb r2, [r5, #7]
	movs r0, #0x80
	ands r0, r2
	adds r2, r1, #0
	cmp r0, #0
	beq _0802ECC4
	movs r0, #4
	orrs r3, r0
	b _0802ECCA
_0802ECC4:
	movs r0, #5
	rsbs r0, r0, #0
	ands r3, r0
_0802ECCA:
	strb r3, [r2]
	mov r0, sl
	ldrb r1, [r0, #7]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0802ECE0
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	b _0802ECE8
_0802ECE0:
	ldrb r1, [r2]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
_0802ECE8:
	strb r0, [r2]
	mov r5, sl
	ldrb r1, [r5, #7]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0802ECFE
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	b _0802ED06
_0802ECFE:
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
_0802ED04:
	ands r0, r1
_0802ED06:
	strb r0, [r2]
_0802ED08:
	mov r1, r8
	asrs r0, r1, #8
	ldr r5, [sp, #8]
	strh r0, [r5, #0x10]
	asrs r0, r4, #8
	strh r0, [r5, #0x12]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r5, sl
	strb r0, [r5]
	ldrb r1, [r2]
	lsls r0, r1, #0x1e
	lsrs r0, r0, #0x1e
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1f
	ldr r2, [sp, #8]
	bl sub_802F9C4
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Task_802ED40
Task_802ED40: @ 0x0802ED40
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	movs r0, #0
	str r0, [sp, #0x10]
	ldr r0, _0802EDB8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
	str r0, [sp, #8]
	str r0, [sp, #4]
	ldr r2, _0802EDBC @ =0x0300002C
	adds r2, r1, r2
	str r2, [sp, #0xc]
	ldr r0, [r0, #0xc]
	mov sb, r0
	ldr r1, [sp, #8]
	ldr r1, [r1, #0x10]
	mov sl, r1
	ldr r0, [sp, #8]
	bl sub_804DD68
	ldr r2, [sp, #8]
	ldr r0, [r2, #0xc]
	mov r1, sb
	subs r1, r1, r0
	mov sb, r1
	ldr r0, [r2, #0x10]
	mov r2, sl
	subs r7, r2, r0
	mov sl, r7
	movs r1, #0
_0802ED8A:
	ldr r2, _0802EDC0 @ =gUnknown_030008A0
	ldrb r0, [r2, #3]
	lsls r1, r1, #0x10
	str r1, [sp, #0x14]
	cmp r0, #7
	bne _0802ED9C
	cmp r1, #0
	beq _0802ED9C
	b _0802F136
_0802ED9C:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _0802EDC8
	ldr r1, _0802EDC0 @ =gUnknown_030008A0
	ldrb r0, [r1, #6]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r0, _0802EDC4 @ =gUnknown_030015C0
	adds r4, r1, r0
	b _0802EDE0
	.align 2, 0
_0802EDB8: .4byte gCurTask
_0802EDBC: .4byte 0x0300002C
_0802EDC0: .4byte gUnknown_030008A0
_0802EDC4: .4byte gUnknown_030015C0
_0802EDC8:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0802EE18 @ =gUnknown_030015C0
	adds r4, r0, r1
_0802EDE0:
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	beq _0802EDEC
	b _0802F136
_0802EDEC:
	ldr r1, [r4, #4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0802EE50
	ldr r0, [r4, #0x6c]
	ldr r2, [sp, #0xc]
	cmp r0, r2
	bne _0802EE50
	ldr r0, [r4, #0x10]
	mov r2, sb
	subs r0, r0, r2
	str r0, [r4, #0x10]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r1, r0
	cmp r1, #0
	beq _0802EE1C
	movs r0, #0x80
	lsls r0, r0, #3
	add sl, r0
	b _0802EE20
	.align 2, 0
_0802EE18: .4byte gUnknown_030015C0
_0802EE1C:
	ldr r1, _0802EE4C @ =0xFFFFFC00
	add sl, r1
_0802EE20:
	ldr r0, [r4, #0x14]
	mov r2, sl
	subs r0, r0, r2
	str r0, [r4, #0x14]
	movs r0, #1
	str r0, [sp, #0x10]
	ldr r2, [sp, #4]
	adds r2, #0x55
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	mov r8, r2
	cmp r0, #0
	beq _0802EE60
	bl sub_802F2C8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802EE48
	b _0802F1A4
_0802EE48:
	b _0802EE60
	.align 2, 0
_0802EE4C: .4byte 0xFFFFFC00
_0802EE50:
	ldr r1, [sp, #4]
	adds r1, #0x55
	mov r8, r1
	ldr r2, [sp, #0x10]
	cmp r2, #0
	bne _0802EE60
	ldr r0, _0802EEB0 @ =0x0000FFFF
	str r0, [sp, #0x10]
_0802EE60:
	ldr r2, [sp, #8]
	ldr r1, [r2, #0xc]
	asrs r1, r1, #8
	ldr r2, [r2, #0x10]
	asrs r2, r2, #8
	movs r5, #0
	str r5, [sp]
	ldr r0, [sp, #0xc]
	adds r3, r4, #0
	bl sub_8020950
	adds r6, r0, #0
	movs r2, #0x80
	lsls r2, r2, #9
	ands r0, r2
	cmp r0, #0
	beq _0802EED8
	lsls r1, r6, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r0, #0
	strh r5, [r4, #0x1a]
	adds r1, r4, #0
	adds r1, #0x26
	strb r0, [r1]
	ldr r1, _0802EEB4 @ =gUnknown_030008A0
	ldrb r0, [r1, #3]
	cmp r0, #7
	bne _0802EEA0
	b _0802EFCA
_0802EEA0:
	ldr r2, [sp, #0x10]
	cmp r2, #1
	bne _0802EEB8
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r7, r0
	bgt _0802EEBE
	b _0802EFCA
	.align 2, 0
_0802EEB0: .4byte 0x0000FFFF
_0802EEB4: .4byte gUnknown_030008A0
_0802EEB8:
	cmp r7, #0
	bgt _0802EEBE
	b _0802EFCA
_0802EEBE:
	adds r0, r4, #0
	bl sub_801226C
	cmp r0, #0
	blt _0802EECA
	b _0802EFCA
_0802EECA:
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	beq _0802EED6
	b _0802EFCA
_0802EED6:
	b _0802EFA4
_0802EED8:
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0802EEE6
	b _0802F136
_0802EEE6:
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r6
	cmp r0, #0
	beq _0802EFCA
	ldr r0, [r4, #4]
	ands r0, r2
	cmp r0, #0
	beq _0802EF28
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r6
	lsls r3, r0, #8
	ldr r2, [r4, #0x14]
	ldr r1, [sp, #0x10]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r5, r0, #0
	cmp r1, #1
	bne _0802EF1C
	ldr r1, _0802EF18 @ =0xFFFFFA00
	adds r0, r2, r1
	adds r0, r0, r3
	b _0802EF68
	.align 2, 0
_0802EF18: .4byte 0xFFFFFA00
_0802EF1C:
	ldr r1, _0802EF24 @ =0xFFFFFC00
	adds r0, r2, r1
	adds r0, r0, r3
	b _0802EF68
	.align 2, 0
_0802EF24: .4byte 0xFFFFFC00
_0802EF28:
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r6
	lsls r3, r0, #8
	ldr r2, [r4, #0x14]
	ldr r1, [sp, #0x10]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r5, r0, #0
	cmp r1, #1
	bne _0802EF44
	movs r1, #0xc0
	lsls r1, r1, #3
	b _0802EF48
_0802EF44:
	movs r1, #0x80
	lsls r1, r1, #3
_0802EF48:
	adds r0, r2, r1
	adds r0, r0, r3
	str r0, [r4, #0x14]
	asrs r0, r5, #0x10
	cmp r0, #1
	bne _0802EF60
	ldr r0, _0802EF5C @ =0x000001FF
	cmp r7, r0
	ble _0802EF64
	b _0802EF6A
	.align 2, 0
_0802EF5C: .4byte 0x000001FF
_0802EF60:
	cmp r7, #0
	bge _0802EF6A
_0802EF64:
	ldr r0, [r4, #0x14]
	subs r0, r0, r7
_0802EF68:
	str r0, [r4, #0x14]
_0802EF6A:
	asrs r0, r5, #0x10
	cmp r0, #1
	bne _0802EF7C
	ldr r0, _0802EF78 @ =0x000001FF
	cmp r7, r0
	ble _0802EF80
	b _0802EF84
	.align 2, 0
_0802EF78: .4byte 0x000001FF
_0802EF7C:
	cmp r7, #0
	bge _0802EF84
_0802EF80:
	rsbs r0, r7, #0
	b _0802EF86
_0802EF84:
	movs r0, #0
_0802EF86:
	strh r0, [r4, #0x1a]
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _0802EFCA
	ldr r2, _0802EFAC @ =gUnknown_030008A0
	ldrb r0, [r2, #3]
	cmp r0, #7
	beq _0802EFCA
	adds r0, r4, #0
	bl sub_8012368
	cmp r0, #0
	bge _0802EFB0
_0802EFA4:
	adds r0, r4, #0
	bl sub_8008E38
	b _0802EFCA
	.align 2, 0
_0802EFAC: .4byte gUnknown_030008A0
_0802EFB0:
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0802EFCA
	adds r0, r4, #0
	bl sub_8012FE0
	movs r0, #0x18
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	bl sub_800DAF4
_0802EFCA:
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0802EFD8
	b _0802F136
_0802EFD8:
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r6
	cmp r0, #0
	bne _0802EFE4
	b _0802F136
_0802EFE4:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	ldr r1, [r4, #0x10]
	adds r1, r1, r0
	str r1, [r4, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r6
	cmp r0, #0
	beq _0802F006
	ldr r1, [r4, #4]
	movs r0, #1
	ands r0, r1
	adds r2, r1, #0
	cmp r0, #0
	bne _0802F01C
_0802F006:
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r6
	cmp r0, #0
	beq _0802F0F2
	ldr r1, [r4, #4]
	movs r0, #1
	ands r0, r1
	adds r2, r1, #0
	cmp r0, #0
	bne _0802F0F2
_0802F01C:
	movs r0, #6
	ands r0, r2
	cmp r0, #0
	beq _0802F06C
	movs r0, #0
	strh r0, [r4, #0x18]
	strh r0, [r4, #0x1c]
	movs r0, #3
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_80110E8
	cmp r0, #0
	bge _0802F0F2
	ldr r0, [r4, #0x14]
	ldr r1, _0802F058 @ =0xFFFFF700
	adds r0, r0, r1
	str r0, [r4, #0x14]
	ldr r0, [r4, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0802F05C
	ldr r0, [r4, #0x10]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r0, r2
	str r0, [r4, #0x10]
	b _0802F0F2
	.align 2, 0
_0802F058: .4byte 0xFFFFF700
_0802F05C:
	ldr r0, [r4, #0x10]
	ldr r1, _0802F068 @ =0xFFFFF000
	adds r0, r0, r1
	str r0, [r4, #0x10]
	b _0802F0F2
	.align 2, 0
_0802F068: .4byte 0xFFFFF000
_0802F06C:
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #3
	bne _0802F082
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0xe7
	beq _0802F0F2
_0802F082:
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r6
	cmp r0, #0
	beq _0802F0B4
	ldrh r1, [r4, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0802F0B4
	mov r0, sb
	cmp r0, #0
	beq _0802F0A8
	ldr r0, [r4, #0x10]
	ldr r1, _0802F0A4 @ =0xFFFFFE00
	b _0802F0DC
	.align 2, 0
_0802F0A4: .4byte 0xFFFFFE00
_0802F0A8:
	ldr r0, [r4, #0x10]
	ldr r1, _0802F0B0 @ =0xFFFFFF00
	b _0802F0DC
	.align 2, 0
_0802F0B0: .4byte 0xFFFFFF00
_0802F0B4:
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r6
	cmp r0, #0
	beq _0802F0EE
	ldrh r1, [r4, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0802F0EE
	mov r0, sb
	cmp r0, #0
	beq _0802F0D6
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #2
	b _0802F0DC
_0802F0D6:
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
_0802F0DC:
	adds r0, r0, r1
	str r0, [r4, #0x10]
	mov r1, sb
	rsbs r0, r1, #0
	strh r0, [r4, #0x1c]
	movs r0, #0x40
	orrs r0, r2
	str r0, [r4, #4]
	b _0802F0F2
_0802F0EE:
	movs r0, #0
	strh r0, [r4, #0x1c]
_0802F0F2:
	ldrh r1, [r4, #0x30]
	adds r0, r1, #0
	subs r0, #0xee
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0802F10C
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf4
	beq _0802F10C
	cmp r0, #0xf5
	bne _0802F112
_0802F10C:
	adds r0, r4, #0
	bl sub_8008E38
_0802F112:
	adds r0, r4, #0
	bl sub_801246C
	cmp r0, #0
	blt _0802F126
	adds r0, r4, #0
	bl sub_8012550
	cmp r0, #0
	bge _0802F136
_0802F126:
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _0802F136
	adds r0, r4, #0
	bl sub_8008E38
_0802F136:
	ldr r2, [sp, #0x14]
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r2, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _0802F148
	b _0802ED8A
_0802F148:
	ldr r2, [sp, #0x10]
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	adds r5, r0, #0
	ldr r2, [sp, #4]
	adds r2, #0x54
	cmp r1, #0
	beq _0802F17A
	cmp r1, #1
	bne _0802F166
	ldrb r0, [r2]
	cmp r0, #0xf
	bhi _0802F166
	adds r0, #1
	b _0802F178
_0802F166:
	asrs r1, r5, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0802F17A
	ldrb r0, [r2]
	cmp r0, #0
	beq _0802F17A
	subs r0, #1
_0802F178:
	strb r0, [r2]
_0802F17A:
	ldr r1, _0802F1B4 @ =gUnknown_082B48B4
	ldrb r0, [r2]
	lsls r0, r0, #5
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x15
	ldr r2, [sp, #8]
	ldr r0, [r2, #0x10]
	adds r0, r0, r1
	str r0, [r2, #0x10]
	ldr r0, [sp, #0xc]
	bl sub_802F1B8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802F1A4
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	bl sub_804DDD4
_0802F1A4:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802F1B4: .4byte gUnknown_082B48B4

	thumb_func_start sub_802F1B8
sub_802F1B8: @ 0x0802F1B8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	ldr r0, _0802F200 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, [r5]
	mov r8, r0
	movs r1, #0
	mov ip, r1
	ldr r7, _0802F204 @ =gUnknown_03001D10
_0802F1D8:
	lsls r0, r1, #0x10
	adds r4, r0, #0
	cmp r4, #0
	bne _0802F208
	ldrb r1, [r5, #0xa]
	lsls r1, r1, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r7]
	subs r3, r1, r0
	mov r0, r8
	ldrb r1, [r0, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r7, #4]
	subs r2, r1, r0
	b _0802F218
	.align 2, 0
_0802F200: .4byte gCurTask
_0802F204: .4byte gUnknown_03001D10
_0802F208:
	ldr r0, [r5, #0xc]
	asrs r0, r0, #8
	ldr r1, [r7]
	subs r3, r0, r1
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	ldr r1, [r7, #4]
	subs r2, r0, r1
_0802F218:
	adds r1, r3, #0
	adds r1, #0x80
	movs r0, #0xf8
	lsls r0, r0, #1
	cmp r1, r0
	bhi _0802F234
	adds r0, r2, #0
	adds r0, #0x80
	cmp r0, #0
	blt _0802F234
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r2, r0
	ble _0802F242
_0802F234:
	mov r1, ip
	lsls r0, r1, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	mov ip, r0
_0802F242:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0802F1D8
	mov r1, ip
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0802F2B8
	movs r1, #0
	ldr r7, _0802F274 @ =gUnknown_030015C0
_0802F25E:
	lsls r0, r1, #0x10
	adds r4, r0, #0
	cmp r4, #0
	beq _0802F278
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0802F27C
	.align 2, 0
_0802F274: .4byte gUnknown_030015C0
_0802F278:
	ldr r0, _0802F2B0 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_0802F27C:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r6, r0, r7
	mov r0, sb
	adds r1, r6, #0
	bl sub_80213B0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0802F25E
	ldrb r0, [r5, #0xa]
	mov r1, r8
	strb r0, [r1]
	ldr r0, _0802F2B4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	movs r0, #1
	b _0802F2BA
	.align 2, 0
_0802F2B0: .4byte gUnknown_030008A0
_0802F2B4: .4byte gCurTask
_0802F2B8:
	movs r0, #0
_0802F2BA:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_802F2C8
sub_802F2C8: @ 0x0802F2C8
	push {r4, r5, r6, lr}
	ldr r6, _0802F2FC @ =gCurTask
	ldr r0, [r6]
	ldrh r0, [r0, #6]
	ldr r1, _0802F300 @ =0x0300002C
	adds r5, r0, r1
	adds r1, #0x28
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	adds r0, r5, #0
	bl sub_802F1B8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802F354
	movs r1, #0
	ldr r3, _0802F304 @ =gUnknown_030015C0
_0802F2EC:
	lsls r0, r1, #0x10
	adds r2, r0, #0
	cmp r2, #0
	bne _0802F30C
	ldr r0, _0802F308 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _0802F316
	.align 2, 0
_0802F2FC: .4byte gCurTask
_0802F300: .4byte 0x0300002C
_0802F304: .4byte gUnknown_030015C0
_0802F308: .4byte gUnknown_030008A0
_0802F30C:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0802F316:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r3
	ldr r1, [r4, #4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0802F342
	ldr r0, [r4, #0x6c]
	cmp r0, r5
	bne _0802F342
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #4
	orrs r1, r0
	str r1, [r4, #4]
	movs r0, #0
	str r0, [r4, #0x6c]
_0802F342:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r2, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0802F2EC
	movs r0, #1
	b _0802F35C
_0802F354:
	ldr r1, [r6]
	ldr r0, _0802F364 @ =sub_802F368
	str r0, [r1, #8]
	movs r0, #0
_0802F35C:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0802F364: .4byte sub_802F368

	thumb_func_start sub_802F368
sub_802F368: @ 0x0802F368
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _0802F3B8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	str r7, [sp, #4]
	adds r0, #0x2c
	adds r0, r0, r1
	mov sl, r0
	ldr r0, [r7, #0x10]
	mov sb, r0
	ldr r0, _0802F3BC @ =0x03000054
	adds r1, r1, r0
	ldrb r2, [r1]
	movs r0, #0x2a
	muls r0, r2, r0
	add r0, sb
	str r0, [r7, #0x10]
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, [r7, #0x10]
	mov r1, sb
	subs r1, r1, r0
	mov sb, r1
	movs r1, #0
_0802F3AA:
	lsls r0, r1, #0x10
	mov r8, r0
	cmp r0, #0
	bne _0802F3C4
	ldr r0, _0802F3C0 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _0802F3CE
	.align 2, 0
_0802F3B8: .4byte gCurTask
_0802F3BC: .4byte 0x03000054
_0802F3C0: .4byte gUnknown_030008A0
_0802F3C4:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0802F3CE:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0802F460 @ =gUnknown_030015C0
	adds r4, r0, r1
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _0802F3F4
	cmp r1, #8
	beq _0802F3F4
	cmp r1, #0x10
	beq _0802F3F4
	b _0802F5A8
_0802F3F4:
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	beq _0802F400
	b _0802F5A8
_0802F400:
	ldr r0, [r4, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0802F420
	ldr r0, [r4, #0x6c]
	cmp r0, sl
	bne _0802F420
	mov r0, sb
	lsls r1, r0, #1
	ldr r0, [r4, #0x14]
	subs r0, r0, r1
	str r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_80149E4
_0802F420:
	ldr r1, [r7, #0xc]
	asrs r1, r1, #8
	ldr r2, [r7, #0x10]
	asrs r2, r2, #8
	movs r6, #0
	str r6, [sp]
	mov r0, sl
	adds r3, r4, #0
	bl sub_8020950
	adds r5, r0, #0
	movs r3, #0x80
	lsls r3, r3, #9
	ands r0, r3
	cmp r0, #0
	beq _0802F464
	lsls r0, r5, #0x18
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x14]
	adds r1, r1, r0
	str r1, [r4, #0x14]
	adds r0, r4, #0
	adds r0, #0x26
	strb r6, [r0]
	adds r0, r4, #0
	bl sub_801226C
	ldr r6, [sp, #4]
	adds r6, #0x55
	cmp r0, #0
	bge _0802F4FA
	b _0802F4BA
	.align 2, 0
_0802F460: .4byte gUnknown_030015C0
_0802F464:
	ldr r2, [sp, #4]
	adds r2, #0x55
	ldrb r1, [r2]
	movs r0, #8
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	bne _0802F476
	b _0802F5A8
_0802F476:
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r5
	cmp r0, #0
	beq _0802F4FA
	ldr r0, [r4, #4]
	ands r0, r3
	cmp r0, #0
	beq _0802F494
	ldr r1, [r4, #0x14]
	ldr r0, _0802F490 @ =0xFFFFFC00
	b _0802F49A
	.align 2, 0
_0802F490: .4byte 0xFFFFFC00
_0802F494:
	ldr r1, [r4, #0x14]
	movs r0, #0x80
	lsls r0, r0, #3
_0802F49A:
	adds r1, r1, r0
	lsls r0, r5, #0x18
	asrs r0, r0, #0x10
	adds r1, r1, r0
	str r1, [r4, #0x14]
	movs r0, #0
	strh r0, [r4, #0x1a]
	ldr r0, _0802F4CC @ =gUnknown_030008A0
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _0802F4FA
	adds r0, r4, #0
	bl sub_8012368
	cmp r0, #0
	bge _0802F4D0
_0802F4BA:
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _0802F4FA
	adds r0, r4, #0
	bl sub_8008E38
	b _0802F4FA
	.align 2, 0
_0802F4CC: .4byte gUnknown_030008A0
_0802F4D0:
	ldrh r1, [r4, #0x30]
	adds r0, r1, #0
	subs r0, #0xee
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0802F4EA
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf4
	beq _0802F4EA
	cmp r0, #0xf5
	bne _0802F4FA
_0802F4EA:
	adds r0, r4, #0
	bl sub_8012FE0
	movs r0, #0x18
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	bl sub_800DAF4
_0802F4FA:
	ldrb r1, [r6]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0802F5A8
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r5
	cmp r0, #0
	beq _0802F5A8
	lsls r1, r5, #0x10
	asrs r1, r1, #0x18
	lsls r1, r1, #8
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r0, #0
	strh r0, [r4, #0x18]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r5
	cmp r0, #0
	beq _0802F532
	ldr r0, [r4, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0802F546
_0802F532:
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r5
	cmp r0, #0
	beq _0802F54A
	ldr r0, [r4, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0802F54A
_0802F546:
	movs r0, #0
	strh r0, [r4, #0x1c]
_0802F54A:
	ldrh r1, [r4, #0x30]
	adds r0, r1, #0
	subs r0, #0xee
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0802F564
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf4
	beq _0802F564
	cmp r0, #0xf5
	bne _0802F574
_0802F564:
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _0802F574
	adds r0, r4, #0
	bl sub_8008E38
_0802F574:
	adds r0, r4, #0
	bl sub_801246C
	cmp r0, #0
	bge _0802F58E
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _0802F58E
	adds r0, r4, #0
	bl sub_8008E38
_0802F58E:
	adds r0, r4, #0
	bl sub_8012550
	cmp r0, #0
	bge _0802F5A8
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _0802F5A8
	adds r0, r4, #0
	bl sub_8008E38
_0802F5A8:
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, r8
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _0802F5B8
	b _0802F3AA
_0802F5B8:
	mov r0, sl
	bl sub_802F1B8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802F626
	movs r1, #0
	ldr r2, _0802F5D8 @ =gUnknown_030015C0
_0802F5C8:
	lsls r0, r1, #0x10
	mov r8, r0
	cmp r0, #0
	bne _0802F5E0
	ldr r0, _0802F5DC @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _0802F5EA
	.align 2, 0
_0802F5D8: .4byte gUnknown_030015C0
_0802F5DC: .4byte gUnknown_030008A0
_0802F5E0:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0802F5EA:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r2
	ldr r1, [r4, #4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0802F616
	ldr r0, [r4, #0x6c]
	cmp r0, sl
	bne _0802F616
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #4
	orrs r1, r0
	str r1, [r4, #4]
	movs r0, #0
	str r0, [r4, #0x6c]
_0802F616:
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, r8
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0802F5C8
	b _0802F67A
_0802F626:
	ldr r0, [sp, #4]
	adds r0, #0x55
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	ldr r4, [sp, #4]
	adds r4, #0x54
	cmp r0, #0
	beq _0802F664
	ldr r0, [r7, #0x10]
	asrs r0, r0, #8
	ldr r1, [r7, #0xc]
	asrs r1, r1, #8
	ldr r2, _0802F68C @ =sub_8051F54
	str r2, [sp]
	movs r2, #1
	movs r3, #8
	bl sub_8052418
	cmp r0, #0
	bgt _0802F664
	lsls r1, r0, #8
	ldr r0, [r7, #0x10]
	subs r0, r0, r1
	str r0, [r7, #0x10]
	movs r0, #0xff
	strb r0, [r4]
	ldr r0, _0802F690 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802F694 @ =sub_802F698
	str r0, [r1, #8]
_0802F664:
	adds r0, r7, #0
	mov r1, sl
	bl sub_804DDD4
	ldrb r0, [r4]
	cmp r0, #0x1d
	bls _0802F67A
	ldr r0, _0802F690 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802F694 @ =sub_802F698
	str r0, [r1, #8]
_0802F67A:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802F68C: .4byte sub_8051F54
_0802F690: .4byte gCurTask
_0802F694: .4byte sub_802F698

	thumb_func_start sub_802F698
sub_802F698: @ 0x0802F698
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _0802F6F0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	str r7, [sp, #4]
	adds r0, #0x2c
	adds r0, r0, r1
	mov sl, r0
	ldr r0, [r7, #0x10]
	mov sb, r0
	ldr r0, _0802F6F4 @ =0x03000054
	adds r2, r1, r0
	ldrb r0, [r2]
	cmp r0, #0xff
	beq _0802F6D6
	adds r1, r0, #0
	movs r0, #0x2a
	muls r0, r1, r0
	add r0, sb
	str r0, [r7, #0x10]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
_0802F6D6:
	ldr r0, [r7, #0x10]
	mov r1, sb
	subs r1, r1, r0
	mov sb, r1
	movs r1, #0
_0802F6E0:
	lsls r0, r1, #0x10
	mov r8, r0
	cmp r0, #0
	bne _0802F6FC
	ldr r0, _0802F6F8 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _0802F706
	.align 2, 0
_0802F6F0: .4byte gCurTask
_0802F6F4: .4byte 0x03000054
_0802F6F8: .4byte gUnknown_030008A0
_0802F6FC:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0802F706:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0802F798 @ =gUnknown_030015C0
	adds r4, r0, r1
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _0802F72C
	cmp r1, #8
	beq _0802F72C
	cmp r1, #0x10
	beq _0802F72C
	b _0802F8E0
_0802F72C:
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	beq _0802F738
	b _0802F8E0
_0802F738:
	ldr r0, [r4, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0802F756
	ldr r0, [r4, #0x6c]
	cmp r0, sl
	bne _0802F756
	ldr r0, [r4, #0x14]
	mov r1, sb
	subs r0, r0, r1
	str r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_80149E4
_0802F756:
	ldr r1, [r7, #0xc]
	asrs r1, r1, #8
	ldr r2, [r7, #0x10]
	asrs r2, r2, #8
	movs r6, #0
	str r6, [sp]
	mov r0, sl
	adds r3, r4, #0
	bl sub_8020950
	adds r5, r0, #0
	movs r3, #0x80
	lsls r3, r3, #9
	ands r0, r3
	cmp r0, #0
	beq _0802F79C
	lsls r0, r5, #0x18
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x14]
	adds r1, r1, r0
	str r1, [r4, #0x14]
	adds r0, r4, #0
	adds r0, #0x26
	strb r6, [r0]
	adds r0, r4, #0
	bl sub_801226C
	ldr r6, [sp, #4]
	adds r6, #0x55
	cmp r0, #0
	bge _0802F832
	b _0802F7F2
	.align 2, 0
_0802F798: .4byte gUnknown_030015C0
_0802F79C:
	ldr r2, [sp, #4]
	adds r2, #0x55
	ldrb r1, [r2]
	movs r0, #8
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	bne _0802F7AE
	b _0802F8E0
_0802F7AE:
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r5
	cmp r0, #0
	beq _0802F832
	ldr r0, [r4, #4]
	ands r0, r3
	cmp r0, #0
	beq _0802F7CC
	ldr r1, [r4, #0x14]
	ldr r0, _0802F7C8 @ =0xFFFFFC00
	b _0802F7D2
	.align 2, 0
_0802F7C8: .4byte 0xFFFFFC00
_0802F7CC:
	ldr r1, [r4, #0x14]
	movs r0, #0x80
	lsls r0, r0, #3
_0802F7D2:
	adds r1, r1, r0
	lsls r0, r5, #0x18
	asrs r0, r0, #0x10
	adds r1, r1, r0
	str r1, [r4, #0x14]
	movs r0, #0
	strh r0, [r4, #0x1a]
	ldr r0, _0802F804 @ =gUnknown_030008A0
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _0802F832
	adds r0, r4, #0
	bl sub_8012368
	cmp r0, #0
	bge _0802F808
_0802F7F2:
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _0802F832
	adds r0, r4, #0
	bl sub_8008E38
	b _0802F832
	.align 2, 0
_0802F804: .4byte gUnknown_030008A0
_0802F808:
	ldrh r1, [r4, #0x30]
	adds r0, r1, #0
	subs r0, #0xee
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0802F822
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf4
	beq _0802F822
	cmp r0, #0xf5
	bne _0802F832
_0802F822:
	adds r0, r4, #0
	bl sub_8012FE0
	movs r0, #0x18
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	bl sub_800DAF4
_0802F832:
	ldrb r1, [r6]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0802F8E0
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r5
	cmp r0, #0
	beq _0802F8E0
	lsls r1, r5, #0x10
	asrs r1, r1, #0x18
	lsls r1, r1, #8
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r0, #0
	strh r0, [r4, #0x18]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r5
	cmp r0, #0
	beq _0802F86A
	ldr r0, [r4, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0802F87E
_0802F86A:
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r5
	cmp r0, #0
	beq _0802F882
	ldr r0, [r4, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0802F882
_0802F87E:
	movs r0, #0
	strh r0, [r4, #0x1c]
_0802F882:
	ldrh r1, [r4, #0x30]
	adds r0, r1, #0
	subs r0, #0xee
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0802F89C
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf4
	beq _0802F89C
	cmp r0, #0xf5
	bne _0802F8AC
_0802F89C:
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _0802F8AC
	adds r0, r4, #0
	bl sub_8008E38
_0802F8AC:
	adds r0, r4, #0
	bl sub_801246C
	cmp r0, #0
	bge _0802F8C6
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _0802F8C6
	adds r0, r4, #0
	bl sub_8008E38
_0802F8C6:
	adds r0, r4, #0
	bl sub_8012550
	cmp r0, #0
	bge _0802F8E0
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _0802F8E0
	adds r0, r4, #0
	bl sub_8008E38
_0802F8E0:
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, r8
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _0802F8F0
	b _0802F6E0
_0802F8F0:
	mov r0, sl
	bl sub_802F1B8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802F95E
	movs r1, #0
	ldr r2, _0802F910 @ =gUnknown_030015C0
_0802F900:
	lsls r0, r1, #0x10
	mov r8, r0
	cmp r0, #0
	bne _0802F918
	ldr r0, _0802F914 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _0802F922
	.align 2, 0
_0802F910: .4byte gUnknown_030015C0
_0802F914: .4byte gUnknown_030008A0
_0802F918:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0802F922:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r2
	ldr r1, [r4, #4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0802F94E
	ldr r0, [r4, #0x6c]
	cmp r0, sl
	bne _0802F94E
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #4
	orrs r1, r0
	str r1, [r4, #4]
	movs r0, #0
	str r0, [r4, #0x6c]
_0802F94E:
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, r8
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0802F900
	b _0802F9AE
_0802F95E:
	ldr r0, [sp, #4]
	adds r0, #0x55
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0802F9A6
	ldr r4, [sp, #4]
	adds r4, #0x54
	ldrb r0, [r4]
	cmp r0, #0xff
	beq _0802F9A6
	ldr r0, [r7, #0x10]
	asrs r0, r0, #8
	mov r1, sl
	adds r1, #0x27
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	ldr r1, [r7, #0xc]
	asrs r1, r1, #8
	ldr r2, _0802F9C0 @ =sub_8051F54
	str r2, [sp]
	movs r2, #1
	movs r3, #8
	bl sub_8052418
	cmp r0, #0
	bgt _0802F9A6
	lsls r0, r0, #8
	ldr r1, [r7, #0x10]
	adds r1, r1, r0
	str r1, [r7, #0x10]
	movs r0, #0xff
	strb r0, [r4]
_0802F9A6:
	adds r0, r7, #0
	mov r1, sl
	bl sub_804DDD4
_0802F9AE:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802F9C0: .4byte sub_8051F54

	thumb_func_start sub_802F9C4
sub_802F9C4: @ 0x0802F9C4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x88
	adds r5, r2, #0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	movs r0, #0
	mov sb, r0
	ldr r1, _0802FA1C @ =gUnknown_080CF498
	mov r0, sp
	movs r2, #0x30
	bl sub_80CA3B0
	add r6, sp, #0x30
	ldr r1, _0802FA20 @ =gUnknown_080CF4C8
	adds r0, r6, #0
	movs r2, #0x2a
	bl sub_80CA3B0
	add r4, sp, #0x5c
	ldr r1, _0802FA24 @ =gUnknown_080CF4F2
	adds r0, r4, #0
	movs r2, #0x2a
	bl sub_80CA3B0
	ldr r1, _0802FA28 @ =gUnknown_030008A0
	ldrb r0, [r1, #3]
	cmp r0, #7
	beq _0802FAA4
	cmp r7, #2
	bne _0802FA5A
	ldrb r0, [r1, #0xa]
	cmp r0, #9
	bne _0802FA30
	ldr r6, _0802FA2C @ =0x000003E5
	movs r4, #0
	movs r0, #0x24
	b _0802FAB0
	.align 2, 0
_0802FA1C: .4byte gUnknown_080CF498
_0802FA20: .4byte gUnknown_080CF4C8
_0802FA24: .4byte gUnknown_080CF4F2
_0802FA28: .4byte gUnknown_030008A0
_0802FA2C: .4byte 0x000003E5
_0802FA30:
	mov r2, r8
	cmp r2, #0
	beq _0802FA40
	mov r0, sp
	ldrh r6, [r0, #0x2a]
	ldrh r4, [r0, #0x2c]
	ldrh r0, [r0, #0x2e]
	b _0802FAB0
_0802FA40:
	ldrb r0, [r1, #9]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	mov r2, sp
	adds r0, r2, r1
	ldrh r6, [r0]
	mov r0, sp
	adds r0, #2
	adds r0, r0, r1
	ldrh r4, [r0]
	add r0, sp, #4
	b _0802FA9E
_0802FA5A:
	ldrb r0, [r1, #0xa]
	cmp r0, #9
	bne _0802FA6C
	ldr r6, _0802FA68 @ =0x000003E5
	movs r4, #1
	movs r0, #0x12
	b _0802FAB0
	.align 2, 0
_0802FA68: .4byte 0x000003E5
_0802FA6C:
	cmp r0, #2
	beq _0802FA88
	ldrb r0, [r1, #9]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r6, [r0]
	mov r0, sp
	adds r0, #0x5e
	adds r0, r0, r1
	ldrh r4, [r0]
	add r0, sp, #0x60
	b _0802FA9E
_0802FA88:
	ldrb r0, [r1, #9]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrh r6, [r0]
	mov r0, sp
	adds r0, #0x32
	adds r0, r0, r1
	ldrh r4, [r0]
	add r0, sp, #0x34
_0802FA9E:
	adds r0, r0, r1
	ldrh r0, [r0]
	b _0802FAB0
_0802FAA4:
	ldr r6, _0802FAF0 @ =0x00000379
	movs r4, #0
	movs r0, #0x12
	movs r1, #0x80
	lsls r1, r1, #2
	mov sb, r1
_0802FAB0:
	bl sub_80C3224
	str r0, [r5]
	movs r2, #0
	movs r1, #0
	strh r6, [r5, #0xc]
	strb r4, [r5, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r5, #0x14]
	strh r1, [r5, #0xe]
	strh r1, [r5, #0x16]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	strb r2, [r5, #0x1f]
	subs r0, #0x11
	str r0, [r5, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	mov r2, sb
	orrs r2, r0
	str r2, [r5, #8]
	add sp, #0x88
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802FAF0: .4byte 0x00000379

	thumb_func_start CreateEntity_Interactable016
CreateEntity_Interactable016: @ 0x0802FAF4
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r2, [sp]
	str r3, [sp, #4]
	movs r0, #0
	movs r1, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl CreateEntity_Interactables016_027
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable017
CreateEntity_Interactable017: @ 0x0802FB20
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r2, [sp]
	str r3, [sp, #4]
	movs r0, #0
	movs r1, #1
	adds r2, r5, #0
	adds r3, r4, #0
	bl CreateEntity_Interactables016_027
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable018
CreateEntity_Interactable018: @ 0x0802FB4C
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r2, [sp]
	str r3, [sp, #4]
	movs r0, #0
	movs r1, #2
	adds r2, r5, #0
	adds r3, r4, #0
	bl CreateEntity_Interactables016_027
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable019
CreateEntity_Interactable019: @ 0x0802FB78
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r2, [sp]
	str r3, [sp, #4]
	movs r0, #0
	movs r1, #3
	adds r2, r5, #0
	adds r3, r4, #0
	bl CreateEntity_Interactables016_027
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable020
CreateEntity_Interactable020: @ 0x0802FBA4
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r2, [sp]
	str r3, [sp, #4]
	movs r0, #1
	movs r1, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl CreateEntity_Interactables016_027
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable021
CreateEntity_Interactable021: @ 0x0802FBD0
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r2, [sp]
	str r3, [sp, #4]
	movs r0, #1
	movs r1, #1
	adds r2, r5, #0
	adds r3, r4, #0
	bl CreateEntity_Interactables016_027
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable022
CreateEntity_Interactable022: @ 0x0802FBFC
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r2, [sp]
	str r3, [sp, #4]
	movs r0, #1
	movs r1, #2
	adds r2, r5, #0
	adds r3, r4, #0
	bl CreateEntity_Interactables016_027
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable023
CreateEntity_Interactable023: @ 0x0802FC28
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r2, [sp]
	str r3, [sp, #4]
	movs r0, #1
	movs r1, #3
	adds r2, r5, #0
	adds r3, r4, #0
	bl CreateEntity_Interactables016_027
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable024
CreateEntity_Interactable024: @ 0x0802FC54
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r2, [sp]
	str r3, [sp, #4]
	movs r0, #2
	movs r1, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl CreateEntity_Interactables016_027
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable025
CreateEntity_Interactable025: @ 0x0802FC80
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r2, [sp]
	str r3, [sp, #4]
	movs r0, #2
	movs r1, #1
	adds r2, r5, #0
	adds r3, r4, #0
	bl CreateEntity_Interactables016_027
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable026
CreateEntity_Interactable026: @ 0x0802FCAC
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r2, [sp]
	str r3, [sp, #4]
	movs r0, #2
	movs r1, #2
	adds r2, r5, #0
	adds r3, r4, #0
	bl CreateEntity_Interactables016_027
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable027
CreateEntity_Interactable027: @ 0x0802FCD8
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r2, [sp]
	str r3, [sp, #4]
	movs r0, #2
	movs r1, #3
	adds r2, r5, #0
	adds r3, r4, #0
	bl CreateEntity_Interactables016_027
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start TaskDestruction_Interactables016_027
TaskDestruction_Interactables016_027: @ 0x0802FD04
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x2c]
	bl sub_80C3304
	pop {r0}
	bx r0

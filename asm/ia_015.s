.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start Task_802E92C
Task_802E92C: @ 0x0802E92C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r5, _0802E984 @ =gUnknown_03003B60
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r0, [r6]
	str r0, [sp]
	ldrb r0, [r6, #0xa]
	ldrh r1, [r6, #4]
	ldrh r2, [r6, #6]
	lsls r0, r0, #3
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	ldr r3, [sp]
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	lsls r2, r2, #8
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r7, r0, #0x10
	mov sl, r7
	asrs r0, r0, #0x10
	lsrs r2, r1, #0x10
	mov sb, r2
	asrs r1, r1, #0x10
	bl sub_802C198
	cmp r0, #0
	bne _0802E988
	ldrb r0, [r6, #0xa]
	ldr r3, [sp]
	strb r0, [r3]
	ldr r0, [r5]
	bl sub_80BCF8C
	b _0802EA70
	.align 2, 0
_0802E984: .4byte gUnknown_03003B60
_0802E988:
	movs r1, #0
	ldr r7, _0802E9B4 @ =gUnknown_030008A0
	mov r8, r7
_0802E98E:
	mov r2, r8
	ldrb r0, [r2, #3]
	lsls r5, r1, #0x10
	cmp r0, #7
	bne _0802E99C
	cmp r5, #0
	bne _0802EA62
_0802E99C:
	cmp r5, #0
	bne _0802E9BC
	mov r3, r8
	ldrb r0, [r3, #6]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r0, _0802E9B8 @ =gUnknown_030015C0
	adds r4, r1, r0
	b _0802E9D4
	.align 2, 0
_0802E9B4: .4byte gUnknown_030008A0
_0802E9B8: .4byte gUnknown_030015C0
_0802E9BC:
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
	ldr r1, _0802EA80 @ =gUnknown_030015C0
	adds r4, r0, r1
_0802E9D4:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _0802E9EA
	cmp r1, #8
	beq _0802E9EA
	cmp r1, #0x10
	bne _0802EA62
_0802E9EA:
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _0802EA62
	ldr r3, [r4, #4]
	movs r0, #4
	ands r0, r3
	cmp r0, #0
	beq _0802EA62
	mov r7, sl
	lsls r0, r7, #0x10
	asrs r2, r0, #0x10
	ldr r0, [r4, #0x10]
	asrs r1, r0, #8
	cmp r2, r1
	bgt _0802EA62
	ldr r7, [sp]
	ldrb r0, [r7, #5]
	lsls r0, r0, #3
	adds r0, r2, r0
	cmp r0, r1
	blt _0802EA62
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	ldr r0, [r4, #0x14]
	asrs r1, r0, #8
	cmp r2, r1
	bgt _0802EA62
	ldrb r0, [r7, #6]
	lsls r0, r0, #3
	adds r0, r2, r0
	cmp r0, r1
	blt _0802EA62
	movs r0, #0x80
	lsls r0, r0, #0xc
	orrs r3, r0
	str r3, [r4, #4]
	ldrb r0, [r6, #0xc]
	movs r1, #1
	ands r1, r0
	adds r3, r4, #0
	adds r3, #0x2e
	lsls r1, r1, #7
	ldrb r2, [r3]
	movs r0, #0x7f
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldrb r1, [r6, #0xd]
	movs r2, #3
	ands r2, r1
	lsls r2, r2, #4
	movs r7, #0x71
	rsbs r7, r7, #0
	adds r1, r7, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
_0802EA62:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0802E98E
_0802EA70:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802EA80: .4byte gUnknown_030015C0

	thumb_func_start CreateEntity_Interactable015
CreateEntity_Interactable015: @ 0x0802EA84
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _0802EAF8 @ =Task_802E92C
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0802EAFC @ =TaskDestructor_Interactable015
	str r1, [sp]
	movs r1, #0x10
	movs r3, #0
	bl sub_80BCEF4
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	strh r4, [r1, #4]
	strh r5, [r1, #6]
	mov r0, r8
	str r0, [r1]
	ldrb r0, [r0]
	strb r0, [r1, #0xa]
	strb r6, [r1, #0xb]
	mov r0, r8
	ldrb r2, [r0, #7]
	movs r0, #0x10
	ands r0, r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	strb r0, [r1, #0xc]
	mov r0, r8
	ldrb r2, [r0, #7]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #0xd]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r2, r8
	strb r0, [r2]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802EAF8: .4byte Task_802E92C
_0802EAFC: .4byte 0x0802EB01

	thumb_func_start TaskDestructor_Interactable015
TaskDestructor_Interactable015:
    bx lr
	.align 2, 0

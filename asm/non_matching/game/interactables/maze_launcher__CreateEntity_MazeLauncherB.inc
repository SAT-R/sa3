.include "asm/macros.inc"
.include "constants/constants.inc"

.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r3, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0804CD94 @ =Task_Interactable137Main
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0804CD98 @ =TaskDestructor_Interactable137
	str r1, [sp]
	movs r1, #0x44
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	strh r6, [r3, #4]
	mov r0, sl
	strh r0, [r3, #6]
	str r5, [r3]
	ldrb r0, [r5]
	strb r0, [r3, #0xa]
	strb r4, [r3, #0xb]
	movs r4, #0
	ldrb r0, [r5, #7]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0804CCEE
	movs r2, #1
_0804CCD4:
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #3
	bgt _0804CCEE
	ldrb r0, [r5, #7]
	asrs r0, r1
	ands r0, r2
	cmp r0, #0
	beq _0804CCD4
_0804CCEE:
	adds r2, r3, #0
	adds r2, #0x3c
	strb r4, [r2]
	movs r4, #0
	ldrb r1, [r5, #7]
	asrs r1, r1, #4
	movs r0, #1
	ands r1, r0
	str r2, [sp, #4]
	movs r2, #0x3d
	adds r2, r2, r3
	mov sb, r2
	lsls r6, r6, #8
	mov r8, r6
	adds r7, r3, #0
	adds r7, #0x40
	mov r0, sl
	lsls r0, r0, #8
	mov sl, r0
	movs r2, #0x42
	adds r2, r2, r3
	mov ip, r2
	adds r6, r3, #0
	adds r6, #0xc
	cmp r1, #0
	bne _0804CD40
	movs r2, #1
_0804CD24:
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #3
	bgt _0804CD40
	ldrb r0, [r5, #7]
	adds r1, #4
	asrs r0, r1
	ands r0, r2
	cmp r0, #0
	beq _0804CD24
_0804CD40:
	movs r0, #0
	mov r2, sb
	strb r4, [r2]
	strh r0, [r3, #0x3e]
	ldrb r0, [r5]
	lsls r0, r0, #3
	add r0, r8
	strh r0, [r7]
	ldrb r0, [r5, #1]
	lsls r0, r0, #3
	add r0, sl
	mov r1, ip
	strh r0, [r1]
	ldr r2, _0804CD9C @ =gCamera
	ldr r1, [r2]
	ldrh r0, [r7]
	subs r0, r0, r1
	strh r0, [r6, #0x10]
	ldr r1, [r2, #4]
	mov r2, ip
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r6, #0x12]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r5]
	ldr r2, [sp, #4]
	ldrb r1, [r2]
	mov r0, sb
	ldrb r2, [r0]
	adds r0, r6, #0
	bl sub_804D360
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804CD94: .4byte Task_Interactable137Main
_0804CD98: .4byte TaskDestructor_Interactable137
_0804CD9C: .4byte gCamera

.syntax divided

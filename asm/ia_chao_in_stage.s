.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Interactable140
CreateEntity_Interactable140: @ 0x0804DE30
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r3, r3, #0x18
	lsrs r6, r3, #0x18
	ldr r1, _0804DE5C @ =gUnknown_030008A0
	ldrb r0, [r1, #3]
	cmp r0, #0
	beq _0804DE60
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r7]
	b _0804DF02
	.align 2, 0
_0804DE5C: .4byte gUnknown_030008A0
_0804DE60:
	ldrb r0, [r7, #7]
	movs r4, #0xf
	ands r4, r0
	ldrb r0, [r1, #9]
	adds r1, r4, #0
	bl sub_8001F4C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r0, #0
	beq _0804DE82
	movs r2, #2
	rsbs r2, r2, #0
	adds r0, r2, #0
	strb r0, [r7]
	b _0804DF02
_0804DE82:
	ldr r0, _0804DF10 @ =sub_804E06C
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0804DF14 @ =sub_804E64C
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r3, r0
	strh r5, [r0, #4]
	mov r1, sb
	strh r1, [r0, #6]
	str r7, [r0]
	ldrb r1, [r7]
	strb r1, [r0, #0xa]
	strb r6, [r0, #0xb]
	ldrb r1, [r7]
	lsls r1, r1, #3
	lsls r2, r5, #8
	adds r1, r1, r2
	ldr r2, _0804DF18 @ =0x0300006C
	adds r2, r2, r3
	mov ip, r2
	strh r1, [r2]
	ldrb r1, [r7, #1]
	lsls r1, r1, #3
	mov r5, sb
	lsls r2, r5, #8
	adds r1, r1, r2
	ldr r6, _0804DF1C @ =0x0300006E
	adds r5, r3, r6
	strh r1, [r5]
	ldrb r1, [r7, #7]
	lsrs r1, r1, #4
	adds r6, #2
	adds r2, r3, r6
	strb r1, [r2]
	ldr r2, _0804DF20 @ =0x03000071
	adds r1, r3, r2
	strb r4, [r1]
	mov r6, r8
	str r6, [r0, #0x74]
	ldr r1, _0804DF24 @ =0x0300000C
	adds r3, r3, r1
	ldr r4, _0804DF28 @ =gCamera
	ldr r2, [r4]
	mov r6, ip
	ldrh r1, [r6]
	subs r1, r1, r2
	strh r1, [r3, #0x10]
	ldr r2, [r4, #4]
	ldrh r1, [r5]
	subs r1, r1, r2
	strh r1, [r3, #0x12]
	movs r2, #2
	rsbs r2, r2, #0
	adds r1, r2, #0
	strb r1, [r7]
	bl sub_804E530
_0804DF02:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804DF10: .4byte sub_804E06C
_0804DF14: .4byte sub_804E64C
_0804DF18: .4byte 0x0300006C
_0804DF1C: .4byte 0x0300006E
_0804DF20: .4byte 0x03000071
_0804DF24: .4byte 0x0300000C
_0804DF28: .4byte gCamera

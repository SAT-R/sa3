.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_80656B0
sub_80656B0: @ 0x080656B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	adds r3, r4, #0
	adds r3, #0x50
	ldr r1, [r4, #0x48]
	asrs r1, r1, #8
	ldrh r0, [r4, #0x12]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r2, _08065704 @ =gCamera
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r3, #0x10]
	ldr r1, [r4, #0x4c]
	asrs r1, r1, #8
	ldrh r0, [r4, #0x14]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r3, #0x12]
	ldr r1, _08065708 @ =0xFFFFC000
	adds r0, r1, #0
	ldrh r2, [r4, #8]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	movs r1, #0x84
	lsls r1, r1, #0x18
	cmp r0, r1
	bls _08065710
	movs r0, #7
	ldrsb r0, [r4, r0]
	cmp r0, #0
	blt _08065724
	ldr r0, [r3, #8]
	ldr r1, _0806570C @ =0xFFFFFBFF
	ands r0, r1
	b _0806572C
	.align 2, 0
_08065704: .4byte gCamera
_08065708: .4byte 0xFFFFC000
_0806570C: .4byte 0xFFFFFBFF
_08065710:
	movs r0, #7
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _08065724
	ldr r0, [r3, #8]
	ldr r1, _08065720 @ =0xFFFFFBFF
	ands r0, r1
	b _0806572C
	.align 2, 0
_08065720: .4byte 0xFFFFFBFF
_08065724:
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
_0806572C:
	str r0, [r3, #8]
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _0806573E
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r3, #8]
_0806573E:
	adds r0, r3, #0
	bl DisplaySprite
	movs r5, #0
	movs r0, #0x80
	adds r0, r0, r4
	mov sl, r0
	movs r1, #0x20
	adds r1, r1, r4
	mov sb, r1
	movs r2, #0x24
	adds r2, r2, r4
	mov r8, r2
	adds r7, r4, #0
	adds r7, #8
	ldr r6, _080657B8 @ =gCamera
_0806575E:
	mov r3, sl
	cmp r5, #1
	bhi _08065768
	adds r3, r4, #0
	adds r3, #0xb0
_08065768:
	lsls r2, r5, #3
	mov r1, sb
	adds r0, r1, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	ldrh r0, [r4, #0x12]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r6]
	subs r1, r1, r0
	strh r1, [r3, #0x10]
	add r2, r8
	ldr r1, [r2]
	asrs r1, r1, #8
	ldrh r0, [r4, #0x14]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r6, #4]
	subs r1, r1, r0
	strh r1, [r3, #0x12]
	lsls r1, r5, #1
	adds r1, r7, r1
	ldr r2, _080657BC @ =0xFFFFC000
	adds r0, r2, #0
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x84
	lsls r1, r1, #8
	cmp r0, r1
	bls _080657C4
	movs r0, #7
	ldrsb r0, [r4, r0]
	cmp r0, #0
	blt _080657D8
	ldr r0, [r3, #8]
	ldr r1, _080657C0 @ =0xFFFFFBFF
	ands r0, r1
	b _080657E0
	.align 2, 0
_080657B8: .4byte gCamera
_080657BC: .4byte 0xFFFFC000
_080657C0: .4byte 0xFFFFFBFF
_080657C4:
	movs r0, #7
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _080657D8
	ldr r0, [r3, #8]
	ldr r1, _080657D4 @ =0xFFFFFBFF
	ands r0, r1
	b _080657E0
	.align 2, 0
_080657D4: .4byte 0xFFFFFBFF
_080657D8:
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
_080657E0:
	str r0, [r3, #8]
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _080657F2
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r3, #8]
_080657F2:
	adds r0, r3, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _0806575E
	movs r0, #1
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start CreateEntity_GuruGuru
CreateEntity_GuruGuru: @ 0x08065814
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	mov sb, r0
	adds r6, r1, #0
	mov r8, r2
	adds r5, r3, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18  @ r5 = id
	ldr r0, _0806587C @ =Task_GuruguruInit
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08065880 @ =TaskDestructor_Guruguru
	str r1, [sp]
	movs r1, #0xe0
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	str r5, [sp]
	adds r0, r4, #0
	mov r1, sb
	adds r2, r6, #0
	mov r3, r8
	bl sub_80651D0
	adds r0, r4, #0
	bl sub_8065300
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r1, sb
	strb r0, [r1]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806587C: .4byte Task_GuruguruInit
_08065880: .4byte TaskDestructor_Guruguru

	thumb_func_start sub_8065884
sub_8065884: @ 0x08065884
	push {r4, r5, r6, lr}
	sub sp, #0x28
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	mov r3, sp
	bl sub_8065634
	str r0, [sp, #4]
	str r6, [sp, #0x1c]
	ldr r0, [r4]
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	str r0, [sp, #0x14]
	mov r1, sp
	ldrh r0, [r5, #0x12]
	strh r0, [r1, #0xc]
	ldrh r0, [r5, #0x14]
	strh r0, [r1, #0xe]
	ldr r0, [r5]
	str r0, [sp]
	ldrb r0, [r5, #5]
	strb r0, [r1, #8]
	mov r0, sp
	bl sub_805C280
	add sp, #0x28
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start TaskDestructor_Guruguru
TaskDestructor_Guruguru: @ 0x080658C0
	push {lr}
	ldrh r0, [r0, #6]
	ldr r1, _080658D4 @ =0x030000B0
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0
	.align 2, 0
_080658D4: .4byte 0x030000B0

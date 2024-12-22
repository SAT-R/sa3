.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_8065300
sub_8065300: @ 0x08065300
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #0x16
	bl VramMalloc
	adds r5, r0, #0
	adds r2, r4, #0
	adds r2, #0xb0
	str r5, [r2]
	ldr r6, _0806547C @ =gUnknown_080D2180
	ldr r0, [r6, #0x14]
	lsls r0, r0, #5
	adds r5, r5, r0
	ldrh r0, [r6, #0x10]
	movs r1, #0
	mov sb, r1
	strh r0, [r2, #0xc]
	ldrb r0, [r6, #0x12]
	strb r0, [r2, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	mov r3, sp
	strb r0, [r3]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	ldr r1, [r4, #0x48]
	asrs r1, r1, #8
	ldrh r0, [r4, #0x12]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r3, _08065480 @ =gCamera
	mov r8, r3
	ldr r0, [r3]
	subs r1, r1, r0
	strh r1, [r2, #0x10]
	ldr r1, [r4, #0x4c]
	asrs r1, r1, #8
	ldrh r0, [r4, #0x14]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r2, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r2, #0x14]
	mov r1, sb
	strh r1, [r2, #0xe]
	strh r1, [r2, #0x16]
	movs r3, #0x10
	strb r3, [r2, #0x1c]
	movs r0, #0
	strb r0, [r2, #0x1f]
	movs r1, #1
	rsbs r1, r1, #0
	mov sl, r1
	str r1, [r2, #0x20]
	movs r7, #0x80
	lsls r7, r7, #5
	str r7, [r2, #8]
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _08065390
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r0, r7
	str r0, [r2, #8]
_08065390:
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	adds r2, r4, #0
	adds r2, #0x50
	str r5, [r4, #0x50]
	ldr r0, [r6, #4]
	lsls r0, r0, #5
	adds r5, r5, r0
	ldrh r0, [r6]
	strh r0, [r2, #0xc]
	ldrb r0, [r6, #2]
	strb r0, [r2, #0x1a]
	ldrb r0, [r2, #0x1b]
	mov r3, sp
	ldrb r3, [r3]
	orrs r0, r3
	strb r0, [r2, #0x1b]
	ldr r1, [r4, #0x48]
	asrs r1, r1, #8
	ldrh r0, [r4, #0x12]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r3, r8
	ldr r0, [r3]
	subs r1, r1, r0
	strh r1, [r2, #0x10]
	ldr r1, [r4, #0x4c]
	asrs r1, r1, #8
	ldrh r0, [r4, #0x14]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r2, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r2, #0x14]
	mov r1, sb
	strh r1, [r2, #0xe]
	strh r1, [r2, #0x16]
	movs r3, #0x10
	strb r3, [r2, #0x1c]
	movs r0, #0
	strb r0, [r2, #0x1f]
	mov r1, sl
	str r1, [r2, #0x20]
	str r7, [r2, #8]
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _080653FE
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r0, r7
	str r0, [r2, #8]
_080653FE:
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	adds r2, r4, #0
	adds r2, #0x80
	str r5, [r2]
	ldrh r0, [r6, #8]
	strh r0, [r2, #0xc]
	ldrb r0, [r6, #0xa]
	strb r0, [r2, #0x1a]
	ldrb r0, [r2, #0x1b]
	mov r3, sp
	ldrb r3, [r3]
	orrs r0, r3
	strb r0, [r2, #0x1b]
	ldr r1, [r4, #0x48]
	asrs r1, r1, #8
	ldrh r0, [r4, #0x12]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r3, r8
	ldr r0, [r3]
	subs r1, r1, r0
	strh r1, [r2, #0x10]
	ldr r1, [r4, #0x4c]
	asrs r1, r1, #8
	ldrh r0, [r4, #0x14]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r2, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r2, #0x14]
	mov r1, sb
	strh r1, [r2, #0xe]
	strh r1, [r2, #0x16]
	movs r3, #0x10
	strb r3, [r2, #0x1c]
	movs r0, #0
	strb r0, [r2, #0x1f]
	mov r1, sl
	str r1, [r2, #0x20]
	str r7, [r2, #8]
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _08065466
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r0, r7
	str r0, [r2, #8]
_08065466:
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806547C: .4byte gUnknown_080D2180
_08065480: .4byte gCamera

	thumb_func_start Task_GuruguruInit
Task_GuruguruInit: @ 0x08065484
	push {r4, r5, r6, r7, lr}
	ldr r0, _080654F0 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	adds r0, r5, #0
	bl sub_80656B0
	ldr r0, _080654F4 @ =gStageData
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _080654B6
	cmp r1, #4
	beq _080654B6
	ldr r0, _080654F8 @ =0x03000048
	adds r1, r4, r0
	adds r0, r5, #0
	movs r2, #0
	bl sub_8065544
_080654B6:
	movs r4, #0
	adds r7, r5, #0
	adds r7, #0x50
	adds r6, r5, #0
	adds r6, #0x40
_080654C0:
	lsls r1, r4, #3
	adds r1, #0x20
	adds r1, r5, r1
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_8065544
	cmp r4, #3
	bls _080654C0
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_8065884
	cmp r0, #1
	bne _080654FC
	ldr r0, _080654F0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0806553C
	.align 2, 0
_080654F0: .4byte gCurTask
_080654F4: .4byte gStageData
_080654F8: .4byte 0x03000048
_080654FC:
	movs r4, #0
_080654FE:
	cmp r4, #0
	beq _08065528
	cmp r4, #1
	bhi _08065518
	lsls r2, r4, #3
	adds r2, #0x20
	adds r2, r5, r2
	adds r0, r5, #0
	adds r1, r5, #0
	adds r1, #0xb0
	bl sub_8065884
	b _08065528
_08065518:
	lsls r2, r4, #3
	adds r2, #0x20
	adds r2, r5, r2
	adds r0, r5, #0
	adds r1, r5, #0
	adds r1, #0x80
	bl sub_8065884
_08065528:
	ldr r1, [r5]
	movs r2, #2
	rsbs r2, r2, #0
	adds r0, r2, #0
	strb r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _080654FE
_0806553C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8065544
sub_8065544: @ 0x08065544
	push {r4, r5, r6, lr}
	mov ip, r0
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r1, r2, #0x18
	ldrb r0, [r0, #7]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r5, _08065574 @ =0x0000FFFD
	cmp r0, #0
	bge _0806555C
	movs r5, #3
_0806555C:
	cmp r1, #0
	bne _08065578
	lsls r0, r5, #0x10
	asrs r0, r0, #0xa
	mov r1, ip
	ldrh r1, [r1, #8]
	adds r0, r0, r1
	mov r2, ip
	strh r0, [r2, #8]
	movs r4, #0
	adds r2, #8
	b _080655C8
	.align 2, 0
_08065574: .4byte 0x0000FFFD
_08065578:
	cmp r1, #1
	bne _0806558C
	lsls r1, r5, #0x10
	asrs r1, r1, #7
	mov r3, ip
	ldrh r0, [r3, #8]
	subs r0, r0, r1
	strh r0, [r3, #0xa]
	movs r4, #2
	b _080655A8
_0806558C:
	cmp r1, #2
	bls _080655AE
	cmp r1, #3
	bne _080655AE
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	lsls r2, r0, #6
	lsls r0, r0, #9
	mov r5, ip
	ldrh r1, [r5, #0xc]
	subs r1, r1, r0
	subs r1, r1, r2
	strh r1, [r5, #0xe]
	movs r4, #6
_080655A8:
	mov r2, ip
	adds r2, #8
	b _080655C8
_080655AE:
	lsls r3, r1, #1
	mov r2, ip
	adds r2, #8
	adds r4, r2, r3
	subs r0, r1, #1
	lsls r0, r0, #1
	adds r0, r2, r0
	lsls r1, r5, #0x10
	asrs r1, r1, #7
	ldrh r0, [r0]
	subs r0, r0, r1
	strh r0, [r4]
	adds r4, r3, #0
_080655C8:
	mov r1, ip
	movs r0, #7
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bge _080655E4
	adds r3, r2, r4
	ldrh r1, [r3]
	movs r0, #0xff
	lsls r0, r0, #8
	cmp r1, r0
	bls _080655F2
	movs r0, #0
	strh r0, [r3]
	b _080655F2
_080655E4:
	adds r3, r2, r4
	ldrh r0, [r3]
	movs r1, #0xff
	lsls r1, r1, #8
	cmp r0, r1
	bls _080655F2
	strh r1, [r3]
_080655F2:
	ldr r3, _08065630 @ =gSineTable
	adds r0, r2, r4
	ldrh r2, [r0]
	lsls r2, r2, #0x10
	movs r4, #0xff
	lsrs r0, r2, #0x18
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #5
	mov r5, ip
	ldr r1, [r5, #0x40]
	adds r1, r1, r0
	str r1, [r6]
	lsrs r2, r2, #0x17
	ands r2, r4
	lsls r2, r2, #3
	adds r2, r2, r3
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #4
	ldr r1, [r5, #0x44]
	adds r1, r1, r0
	str r1, [r6, #4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08065630: .4byte gSineTable

	thumb_func_start sub_8065634
sub_8065634: @ 0x08065634
	push {r4, lr}
	mov ip, r0
	movs r4, #0
	str r4, [r3]
	strb r4, [r3, #8]
	str r4, [r3, #4]
	str r1, [r3, #0x1c]
	adds r0, #0x50
	cmp r1, r0
	bne _08065674
	adds r0, #0x10
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r2, _08065670 @ =gCamera
	ldr r1, [r2]
	adds r0, r0, r1
	lsls r0, r0, #8
	str r0, [r3, #0x10]
	mov r0, ip
	adds r0, #0x62
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, [r2, #4]
	adds r0, r0, r1
	lsls r0, r0, #8
	str r0, [r3, #0x14]
	strh r4, [r3, #0xc]
	strh r4, [r3, #0xe]
	b _080656A2
	.align 2, 0
_08065670: .4byte gCamera
_08065674:
	adds r0, r1, #0
	adds r0, #0x2c
	movs r1, #0xfa
	strb r1, [r0]
	ldr r0, [r3, #0x1c]
	adds r0, #0x2d
	strb r1, [r0]
	ldr r0, [r3, #0x1c]
	adds r0, #0x2e
	movs r1, #6
	strb r1, [r0]
	ldr r0, [r3, #0x1c]
	adds r0, #0x2f
	strb r1, [r0]
	ldr r0, [r2]
	str r0, [r3, #0x10]
	ldr r0, [r2, #4]
	str r0, [r3, #0x14]
	mov r1, ip
	ldrh r0, [r1, #0x12]
	strh r0, [r3, #0xc]
	ldrh r0, [r1, #0x14]
	strh r0, [r3, #0xe]
_080656A2:
	adds r0, r3, #0
	bl sub_805C63C
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

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


.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r7, r0, #0     @ r7 = me
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1          @ sl = regionX
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #4]    @ sp04 = regionY
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp, #8]    @ sp08 = id
	ldrb r0, [r7, #7]
	mov sb, r0          @ sb = textId
	ldr r0, _08037EF0 @ =gStageData
	ldrb r1, [r0, #3]
	adds r2, r0, #0
	cmp r1, #0
	bne _08037ED6
	mov r0, sb
	cmp r0, #0x2c
	bne _08037E44
	ldr r0, _08037EF4 @ =gSaveGame
	ldrb r0, [r0, #0x11]
	cmp r0, #7
	bls _08037ED6
_08037E44:
	mov r0, sb
	cmp r0, #3
	beq _08037E52
	cmp r0, #8
	beq _08037E52
	cmp r0, #9
	bne _08037E58
_08037E52:
	ldrb r0, [r2, #3]
	cmp r0, #0
	bne _08037ED6
_08037E58:
	ldr r0, _08037EF8 @ =Task_OmochaoInit
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08037EFC @ =TaskDestructor_Omochao
	str r1, [sp]
	movs r1, #0x68
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4     @ r4 = omochao
	ldr r2, _08037F00 @ =0x0300000C
	adds r6, r5, r2     @ r6 = s
	ldr r0, _08037F04 @ =0x03000034
	adds r0, r0, r5
	mov r8, r0          @ r8 = s2
	ldr r0, _08037F08 @ =0x00000CAC
	bl EwramMalloc
	str r0, [r4, #0x64] @ omochao->data = EwramMalloc(0xCAC)
	movs r2, #0
	movs r3, #0
	mov r1, sl
	strh r1, [r4, #4]
	mov r0, sp
	ldrh r0, [r0, #4]
	strh r0, [r4, #6]
	str r7, [r4]
	ldrb r0, [r7]
	strb r0, [r4, #0xa]
	mov r1, sp
	ldrb r1, [r1, #8]
	strb r1, [r4, #0xb]
	ldr r1, _08037F0C @ =0x03000061
	adds r0, r5, r1
	mov r1, sb
	strb r1, [r0]
	ldr r0, _08037F10 @ =0x03000060
	adds r1, r5, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08037F14 @ =0x03000062
	adds r5, r5, r1
	strb r2, [r5]
	str r3, [r4, #0x5c]
	ldrb r0, [r7]
	lsls r0, r0, #3
	mov r2, sl
	lsls r1, r2, #8
	adds r0, r0, r1
	strh r0, [r6, #0x10]
	ldrb r0, [r7, #1]
	lsls r0, r0, #3
	ldr r2, [sp, #4]
	lsls r1, r2, #8
	adds r0, r0, r1
	strh r0, [r6, #0x12]
	adds r0, r6, #0
	mov r1, r8
	bl sub_80384B0
_08037ED6:
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r7]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08037EF0: .4byte gStageData
_08037EF4: .4byte gSaveGame
_08037EF8: .4byte Task_OmochaoInit
_08037EFC: .4byte TaskDestructor_Omochao
_08037F00: .4byte 0x0300000C
_08037F04: .4byte 0x03000034
_08037F08: .4byte 0x00000CAC
_08037F0C: .4byte 0x03000061
_08037F10: .4byte 0x03000060
_08037F14: .4byte 0x03000062

.syntax divided

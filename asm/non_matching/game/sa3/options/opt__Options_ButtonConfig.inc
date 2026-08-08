
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	adds r4, r0, #0
	str r1, [sp, #0x14]
	mov sb, r3
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r1, _08091018 @ =gLoadedSaveGame
	movs r2, #0xd7
	lsls r2, r2, #2
	adds r0, r1, r2
	ldrh r0, [r0]
	add r5, sp, #0xc
	movs r6, #0
	movs r2, #0
	mov r8, r2
	strh r0, [r5]
	ldr r2, _0809101C @ =0x0000035E
	adds r0, r1, r2
	ldrh r2, [r0]
	mov r0, sp
	adds r0, #0xe
	strh r2, [r0]
	movs r0, #0xd8
	lsls r0, r0, #2
	adds r1, r1, r0
	ldrh r1, [r1]
	add r0, sp, #0x10
	strh r1, [r0]
	add r0, sp, #4
	adds r1, r5, #0
	movs r2, #6
	bl memcpy
	ldr r1, _08091020 @ =gUnknown_080D73BC
	adds r0, r5, #0
	movs r2, #3
	bl memcpy
	ldr r0, _08091024 @ =Task_Options_ButtonConfig_Init
	movs r1, #0x93
	lsls r1, r1, #2     @ 0x24C
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _08091028 @ =TaskDestructor_Options_ButtonConfig
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov ip, r1
	strh r4, [r1, #0x1e]
	mov r2, sb
	str r2, [r1, #8]
	mov r0, r8
	strh r0, [r1, #0x20]
	strb r6, [r1, #1]
	movs r0, #2
	strb r0, [r1, #3]
	strb r6, [r1, #2]
	mov r2, r8
	strh r2, [r1, #0x22]
	movs r0, #1
	strb r0, [r1, #4]
	movs r6, #0
_08091000:
	lsls r0, r6, #1
	add r0, sp
	adds r0, #4
	ldrh r1, [r0]
	cmp r1, #2
	beq _08091040
	cmp r1, #2
	bgt _0809102C
	cmp r1, #1
	beq _08091036
	b _08091052
	.align 2, 0
_08091018: .4byte gLoadedSaveGame
_0809101C: .4byte 0x0000035E
_08091020: .4byte gUnknown_080D73BC
_08091024: .4byte Task_Options_ButtonConfig_Init
_08091028: .4byte TaskDestructor_Options_ButtonConfig
_0809102C:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _0809104A
	b _08091052
_08091036:
	adds r0, r5, r6
	ldrb r0, [r0]
	mov r1, ip
	strh r0, [r1, #0x18]
	b _08091052
_08091040:
	adds r0, r5, r6
	ldrb r0, [r0]
	mov r2, ip
	strh r0, [r2, #0x1a]
	b _08091052
_0809104A:
	adds r0, r5, r6
	ldrb r0, [r0]
	mov r1, ip
	strh r0, [r1, #0x1c]
_08091052:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #2
	bls _08091000
	mov r2, ip
	ldrh r0, [r2, #0x18]
	strh r0, [r2, #0x20]
	movs r6, #0
	adds r2, #0x24
	str r2, [sp, #0x28]
	ldr r5, _08091144 @ =gBgScrollRegs
	mov r0, ip
	adds r0, #0x28
	str r0, [sp, #0x2c]
	mov r1, ip
	adds r1, #0x3c
	str r1, [sp, #0x18]
	adds r2, #0x1c
	str r2, [sp, #0x1c]
	movs r0, #0xc
	add r0, ip
	mov sl, r0
	movs r1, #0x18
	add r1, ip
	mov sb, r1
	movs r2, #0x12
	add r2, ip
	mov r8, r2
	mov r0, ip
	adds r0, #0x64
	str r0, [sp, #0x20]
	mov r1, ip
	adds r1, #0x66
	str r1, [sp, #0x24]
	adds r7, r5, #0
_0809109A:
	lsls r2, r6, #3
	ldr r0, [sp, #0x28]
	adds r4, r0, r2
	movs r0, #4
	ldrsh r1, [r7, r0]
	movs r0, #0x70
	subs r0, r0, r1
	str r0, [r4]
	ldr r1, [sp, #0x2c]
	adds r3, r1, r2
	movs r0, #6
	ldrsh r1, [r7, r0]
	movs r0, #0x2d
	subs r0, r0, r1
	str r0, [r3]
	ldr r0, [sp, #0x18]
	adds r1, r0, r2
	ldr r0, [r4]
	subs r0, #0x46
	str r0, [r1]
	ldr r1, [sp, #0x1c]
	adds r2, r1, r2
	ldr r0, [r3]
	str r0, [r2]
	lsls r1, r6, #1
	mov r2, sl
	adds r3, r2, r1
	mov r0, sb
	adds r2, r0, r1
	ldrh r0, [r2]
	strh r0, [r3]
	add r1, r8
	ldrh r0, [r2]
	strh r0, [r1]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #2
	bls _0809109A
	movs r1, #4
	ldrsh r0, [r5, r1]
	rsbs r0, r0, #0
	mov r2, ip
	str r0, [r2, #0x54]
	movs r1, #6
	ldrsh r0, [r5, r1]
	rsbs r0, r0, #0
	str r0, [r2, #0x58]
	ldrh r0, [r5, #4]
	rsbs r0, r0, #0
	adds r0, #0x64
	ldr r2, [sp, #0x20]
	strh r0, [r2]
	ldrh r0, [r5, #6]
	rsbs r0, r0, #0
	ldr r1, [sp, #0x24]
	strh r0, [r1]
	movs r2, #4
	ldrsh r0, [r5, r2]
	rsbs r0, r0, #0
	mov r1, ip
	str r0, [r1, #0x5c]
	movs r2, #6
	ldrsh r0, [r5, r2]
	rsbs r0, r0, #0
	str r0, [r1, #0x60]
	ldr r0, [sp, #0x14]
	str r0, [r1, #0x68]
	ldr r1, _08091148 @ =gLoadedSaveGame
	ldr r2, _0809114C @ =0x00000366
	adds r0, r1, r2
	ldrb r0, [r0]
	mov r1, ip
	strb r0, [r1]
	mov r0, ip
	bl sub_8091150
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08091144: .4byte gBgScrollRegs
_08091148: .4byte gLoadedSaveGame
_0809114C: .4byte 0x00000366

.syntax divided

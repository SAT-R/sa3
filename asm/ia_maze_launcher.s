.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif


@ Very similar to CreateEntity_MazeLauncherA
	thumb_func_start CreateEntity_MazeLauncherC
CreateEntity_MazeLauncherC: @ 0x0804CDA0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r3, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0804CE68 @ =Task_Interactable138Main
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0804CE6C @ =TaskDestructor_Interactable138
	str r1, [sp]
	movs r1, #0x44
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	strh r7, [r3, #4]
	mov r0, r8
	strh r0, [r3, #6]
	str r5, [r3]
	ldrb r0, [r5]
	strb r0, [r3, #0xa]
	strb r4, [r3, #0xb]
	movs r6, #0
	ldrb r0, [r5, #7]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0804CE0A
	movs r2, #1
_0804CDF0:
	lsls r0, r6, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r6, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #3
	bgt _0804CE0A
	ldrb r0, [r5, #7]
	asrs r0, r1
	ands r0, r2
	cmp r0, #0
	beq _0804CDF0
_0804CE0A:
	adds r0, r3, #0
	adds r0, #0x3c
	movs r1, #0
	strb r6, [r0]
	strh r1, [r3, #0x3e]
	ldrb r0, [r5]
	lsls r0, r0, #3
	lsls r1, r7, #8
	adds r0, r0, r1
	adds r4, r3, #0
	adds r4, #0x40
	strh r0, [r4]
	ldrb r0, [r5, #1]
	lsls r0, r0, #3
	mov r2, r8
	lsls r1, r2, #8
	adds r0, r0, r1
	movs r1, #0x42
	adds r1, r1, r3
	mov ip, r1
	strh r0, [r1]
	adds r0, r3, #0
	adds r0, #0xc
	ldr r3, _0804CE70 @ =gCamera
	ldr r2, [r3]
	ldrh r1, [r4]
	subs r1, r1, r2
	strh r1, [r0, #0x10]
	ldr r2, [r3, #4]
	mov r3, ip
	ldrh r1, [r3]
	subs r1, r1, r2
	strh r1, [r0, #0x12]
	movs r2, #2
	rsbs r2, r2, #0
	adds r1, r2, #0
	strb r1, [r5]
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	bl sub_804D658
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804CE68: .4byte Task_Interactable138Main
_0804CE6C: .4byte TaskDestructor_Interactable138
_0804CE70: .4byte gCamera

	thumb_func_start Task_MazeLauncher
Task_MazeLauncher: @ 0x0804CE74
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r0, _0804CECC @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	str r0, [sp, #8]
	ldr r0, _0804CED0 @ =0x0300000C
	adds r0, r0, r2
	mov r8, r0
	ldr r1, _0804CED4 @ =0x03000040
	adds r0, r2, r1
	ldrh r0, [r0]
	str r0, [sp, #0xc]
	ldr r3, _0804CED8 @ =0x03000042
	adds r0, r2, r3
	ldrh r0, [r0]
	mov sl, r0
	ldr r0, _0804CEDC @ =0x0300003D
	adds r3, r2, r0
	ldrb r0, [r3]
	adds r0, #1
	movs r1, #0xff
	ands r0, r1
	movs r1, #0xf
	ands r0, r1
	strb r0, [r3]
	movs r1, #0
	ldr r3, _0804CEDC @ =0x0300003D
	adds r7, r2, r3
_0804CEBC:
	lsls r0, r1, #0x10
	mov sb, r0
	cmp r0, #0
	bne _0804CEE4
	ldr r0, _0804CEE0 @ =gStageData
	ldrb r1, [r0, #6]
	b _0804CEEE
	.align 2, 0
_0804CECC: .4byte gCurTask
_0804CED0: .4byte 0x0300000C
_0804CED4: .4byte 0x03000040
_0804CED8: .4byte 0x03000042
_0804CEDC: .4byte 0x0300003D
_0804CEE0: .4byte gStageData
_0804CEE4:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0804CEEE:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0804CF20 @ =gPlayers
	adds r4, r0, r1
	ldr r1, [r4, #4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0804CF32
	ldr r0, [r4, #0x6c]
	cmp r0, r8
	bne _0804CF32
	movs r0, #0x80
	lsls r0, r0, #9
	ands r1, r0
	cmp r1, #0
	beq _0804CF28
	ldr r0, [r4, #0x14]
	ldr r1, _0804CF24 @ =0xFFFFFE00
	adds r0, r0, r1
	b _0804CF30
	.align 2, 0
_0804CF20: .4byte gPlayers
_0804CF24: .4byte 0xFFFFFE00
_0804CF28:
	ldr r0, [r4, #0x14]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
_0804CF30:
	str r0, [r4, #0x14]
_0804CF32:
	adds r0, r4, #0
	bl sub_802C080
	adds r2, r0, #0
	cmp r2, #0
	bne _0804CFC8
	ldr r1, [r4]
	ldr r0, _0804CF7C @ =sub_800B5A4
	cmp r1, r0
	beq _0804CF52
	ldr r0, _0804CF80 @ =sub_800DD44
	cmp r1, r0
	beq _0804CF52
	ldr r0, _0804CF84 @ =Player_800DDD0
	cmp r1, r0
	bne _0804CF96
_0804CF52:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #4
	beq _0804CF62
	b _0804D066
_0804CF62:
	movs r3, #0x18
	ldrsh r0, [r4, r3]
	cmp r0, #0
	blt _0804CF72
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _0804CF88
_0804CF72:
	ldrb r0, [r7]
	movs r1, #0xf
	ands r1, r0
	movs r0, #0x10
	b _0804CF90
	.align 2, 0
_0804CF7C: .4byte sub_800B5A4
_0804CF80: .4byte sub_800DD44
_0804CF84: .4byte Player_800DDD0
_0804CF88:
	ldrb r0, [r7]
	movs r1, #0xf
	ands r1, r0
	movs r0, #0x20
_0804CF90:
	orrs r1, r0
	strb r1, [r7]
	b _0804D066
_0804CF96:
	ldr r3, [sp, #0xc]
	lsls r0, r3, #0x10
	asrs r6, r0, #0x10
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r5, r0, #0x10
	str r4, [sp]
	str r2, [sp, #4]
	mov r0, r8
	adds r1, r6, #0
	adds r2, r5, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _0804CFC8
	ldr r0, [sp, #8]
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_804D7F0
	b _0804D066
_0804CFC8:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _0804CFDE
	cmp r1, #8
	beq _0804CFDE
	cmp r1, #0x10
	bne _0804D066
_0804CFDE:
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _0804D066
	ldr r2, [sp, #0xc]
	lsls r1, r2, #0x10
	mov r3, sl
	lsls r2, r3, #0x10
	str r0, [sp]
	mov r0, r8
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	adds r3, r4, #0
	bl sub_8020950
	adds r2, r0, #0
	movs r3, #0x80
	lsls r3, r3, #9
	ands r0, r3
	cmp r0, #0
	beq _0804D016
	lsls r1, r2, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	b _0804D04A
_0804D016:
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _0804D04A
	lsls r0, r2, #0x18
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x14]
	adds r1, r1, r0
	str r1, [r4, #0x14]
	ldr r0, [r4, #4]
	ands r0, r3
	cmp r0, #0
	beq _0804D03C
	ldr r3, _0804D038 @ =0xFFFFFF00
	b _0804D040
	.align 2, 0
_0804D038: .4byte 0xFFFFFF00
_0804D03C:
	movs r3, #0x80
	lsls r3, r3, #1
_0804D040:
	adds r0, r1, r3
	str r0, [r4, #0x14]
	movs r0, #0
	strh r0, [r4, #0x1a]
	strh r0, [r4, #0x1c]
_0804D04A:
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r2
	cmp r0, #0
	beq _0804D066
	lsls r0, r2, #0x10
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	ldr r1, [r4, #0x10]
	adds r1, r1, r0
	str r1, [r4, #0x10]
	movs r0, #0
	strh r0, [r4, #0x18]
	strh r0, [r4, #0x1c]
_0804D066:
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, sb
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _0804D076
	b _0804CEBC
_0804D076:
	bl sub_804D114
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_804D08C
sub_804D08C: @ 0x0804D08C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r6, #0
	lsls r1, r1, #0x10
	asrs r5, r1, #0x10
	movs r0, #2
	ands r0, r5
	cmp r0, #0
	beq _0804D0C2
	movs r0, #0x30
	bl VramMalloc
	str r0, [r4]
	movs r0, #0xeb
	lsls r0, r0, #2
	strh r0, [r4, #0xc]
	movs r0, #3
	strb r0, [r4, #0x1a]
	movs r1, #1
	ands r1, r5
	rsbs r0, r1, #0
	orrs r0, r1
	asrs r6, r0, #0x1f
	movs r0, #0x80
	lsls r0, r0, #4
	ands r6, r0
	b _0804D0E0
_0804D0C2:
	movs r0, #0x30
	bl VramMalloc
	str r0, [r4]
	movs r1, #0
	movs r0, #0xeb
	lsls r0, r0, #2
	strh r0, [r4, #0xc]
	strb r1, [r4, #0x1a]
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _0804D0E0
	movs r6, #0x80
	lsls r6, r6, #3
_0804D0E0:
	movs r2, #0
	movs r1, #0
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	str r0, [r4, #0x28]
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r6, r0
	str r6, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_804D114
sub_804D114: @ 0x0804D114
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0804D160 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	ldr r1, _0804D164 @ =0x0300000C
	adds r5, r4, r1
	ldr r7, [r6]
	ldr r2, _0804D168 @ =0x03000040
	adds r0, r4, r2
	ldr r3, _0804D16C @ =0x03000042
	adds r1, r4, r3
	ldrh r2, [r0]
	mov sb, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldrh r2, [r1]
	mov sl, r2
	movs r3, #0
	ldrsh r1, [r1, r3]
	bl IsPointInScreenRect
	cmp r0, #0
	bne _0804D170
	ldrb r0, [r6, #0xa]
	strb r0, [r7]
	mov r1, r8
	ldr r0, [r1]
	bl TaskDestroy
	b _0804D200
	.align 2, 0
_0804D160: .4byte gCurTask
_0804D164: .4byte 0x0300000C
_0804D168: .4byte 0x03000040
_0804D16C: .4byte 0x03000042
_0804D170:
	ldr r2, _0804D188 @ =0x0300003D
	adds r0, r4, r2
	ldrb r0, [r0]
	lsrs r2, r0, #4
	cmp r2, #1
	beq _0804D1AC
	cmp r2, #1
	bgt _0804D18C
	cmp r2, #0
	beq _0804D192
	b _0804D1DA
	.align 2, 0
_0804D188: .4byte 0x0300003D
_0804D18C:
	cmp r2, #2
	beq _0804D1C8
	b _0804D1DA
_0804D192:
	ldr r3, _0804D1A8 @ =0x0300003C
	adds r0, r4, r3
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	movs r1, #0
	cmp r0, #0
	beq _0804D1BE
	movs r1, #3
	b _0804D1BE
	.align 2, 0
_0804D1A8: .4byte 0x0300003C
_0804D1AC:
	ldr r1, _0804D1C4 @ =0x0300003C
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	beq _0804D1BE
	movs r1, #4
_0804D1BE:
	strb r1, [r5, #0x1a]
	b _0804D1DA
	.align 2, 0
_0804D1C4: .4byte 0x0300003C
_0804D1C8:
	ldr r3, _0804D210 @ =0x0300003C
	adds r0, r4, r3
	ldrb r0, [r0]
	ands r2, r0
	movs r0, #2
	cmp r2, #0
	beq _0804D1D8
	movs r0, #5
_0804D1D8:
	strb r0, [r5, #0x1a]
_0804D1DA:
	ldr r2, _0804D214 @ =gCamera
	ldr r1, [r2]
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r5, #0x10]
	ldr r1, [r2, #4]
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_0804D200:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804D210: .4byte 0x0300003C
_0804D214: .4byte gCamera

	thumb_func_start Task_Interactable137Main
Task_Interactable137Main: @ 0x0804D218
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _0804D258 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r0, r1
	str r1, [sp, #8]
	ldr r1, _0804D25C @ =0x0300000C
	adds r1, r1, r0
	mov sl, r1
	ldr r2, _0804D260 @ =0x03000040
	adds r1, r0, r2
	ldrh r1, [r1]
	mov sb, r1
	ldr r1, _0804D264 @ =0x03000042
	adds r0, r0, r1
	ldrh r0, [r0]
	mov r8, r0
	movs r1, #0
_0804D24A:
	lsls r0, r1, #0x10
	adds r7, r0, #0
	cmp r7, #0
	bne _0804D26C
	ldr r0, _0804D268 @ =gStageData
	ldrb r1, [r0, #6]
	b _0804D276
	.align 2, 0
_0804D258: .4byte gCurTask
_0804D25C: .4byte 0x0300000C
_0804D260: .4byte 0x03000040
_0804D264: .4byte 0x03000042
_0804D268: .4byte gStageData
_0804D26C:
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0804D276:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0804D2F0 @ =gPlayers
	adds r5, r0, r1
	adds r0, r5, #0
	bl sub_802C080
	adds r2, r0, #0
	cmp r2, #0
	bne _0804D2CE
	ldr r1, [r5]
	ldr r0, _0804D2F4 @ =Player_800DDD0
	cmp r1, r0
	bne _0804D2CE
	ldr r0, _0804D2F8 @ =sub_800B628
	cmp r1, r0
	beq _0804D2CE
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r6, r0, #0x10
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	str r5, [sp]
	str r2, [sp, #4]
	mov r0, sl
	adds r1, r6, #0
	adds r2, r4, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _0804D2CE
	ldr r0, [sp, #8]
	adds r0, #0x3d
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_804D2FC
_0804D2CE:
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r7, r2
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0804D24A
	bl sub_804D3FC
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804D2F0: .4byte gPlayers
_0804D2F4: .4byte Player_800DDD0
_0804D2F8: .4byte sub_800B628

	thumb_func_start sub_804D2FC
sub_804D2FC: @ 0x0804D2FC
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x10
	asrs r2, r2, #8
	str r2, [r4, #0x70]
	lsls r3, r3, #0x10
	asrs r3, r3, #8
	str r3, [r4, #0x74]
	movs r2, #0
	strh r2, [r4, #0x1c]
	cmp r1, #1
	beq _0804D332
	cmp r1, #1
	bgt _0804D322
	cmp r1, #0
	beq _0804D32C
	b _0804D34C
_0804D322:
	cmp r1, #2
	beq _0804D33C
	cmp r1, #3
	beq _0804D344
	b _0804D34C
_0804D32C:
	movs r0, #0xf8
	lsls r0, r0, #8
	b _0804D336
_0804D332:
	movs r0, #0x80
	lsls r0, r0, #4
_0804D336:
	strh r0, [r4, #0x18]
	strh r2, [r4, #0x1a]
	b _0804D34C
_0804D33C:
	strh r2, [r4, #0x18]
	movs r0, #0xf8
	lsls r0, r0, #8
	b _0804D34A
_0804D344:
	strh r2, [r4, #0x18]
	movs r0, #0x80
	lsls r0, r0, #4
_0804D34A:
	strh r0, [r4, #0x1a]
_0804D34C:
	ldr r1, _0804D35C @ =sub_800DDB4
	adds r0, r4, #0
	bl SetPlayerCallback
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804D35C: .4byte sub_800DDB4

	thumb_func_start sub_804D360
sub_804D360: @ 0x0804D360
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r5, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #1
	beq _0804D396
	cmp r1, #1
	bgt _0804D37C
	cmp r1, #0
	beq _0804D386
	b _0804D3B8
_0804D37C:
	cmp r1, #2
	beq _0804D3A0
	cmp r1, #3
	beq _0804D3B0
	b _0804D3B8
_0804D386:
	movs r5, #0x80
	lsls r5, r5, #3
	cmp r2, #2
	bne _0804D3B8
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r5, r0
	b _0804D3B8
_0804D396:
	cmp r2, #2
	bne _0804D3B8
	movs r5, #0x80
	lsls r5, r5, #4
	b _0804D3B8
_0804D3A0:
	movs r5, #0x80
	lsls r5, r5, #4
	cmp r2, #0
	bne _0804D3B8
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r5, r0
	b _0804D3B8
_0804D3B0:
	cmp r2, #0
	bne _0804D3B8
	movs r5, #0x80
	lsls r5, r5, #3
_0804D3B8:
	movs r0, #9
	bl VramMalloc
	str r0, [r4]
	movs r2, #0
	movs r1, #0
	movs r0, #0xeb
	lsls r0, r0, #2
	strh r0, [r4, #0xc]
	movs r0, #6
	strb r0, [r4, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r5, r0
	str r5, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_804D3FC
sub_804D3FC: @ 0x0804D3FC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0804D454 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0xc
	adds r5, r1, r0
	ldr r1, [r4]
	mov r8, r1
	ldrb r2, [r4, #0xa]
	lsls r2, r2, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r6, r2, #0x10
	lsls r1, r1, #0x10
	asrs r7, r1, #0x10
	adds r0, r6, #0
	adds r1, r7, #0
	bl IsPointInScreenRect
	cmp r0, #0
	bne _0804D458
	ldrb r0, [r4, #0xa]
	mov r1, r8
	strb r0, [r1]
	mov r1, sb
	ldr r0, [r1]
	bl TaskDestroy
	b _0804D472
	.align 2, 0
_0804D454: .4byte gCurTask
_0804D458:
	ldr r0, _0804D480 @ =gCamera
	ldr r1, [r0]
	subs r1, r6, r1
	strh r1, [r5, #0x10]
	ldr r0, [r0, #4]
	subs r0, r7, r0
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_0804D472:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804D480: .4byte gCamera

	thumb_func_start Task_Interactable138Main
Task_Interactable138Main: @ 0x0804D484
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _0804D4D8 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	str r0, [sp, #8]
	ldr r0, _0804D4DC @ =0x0300000C
	adds r7, r2, r0
	ldr r1, _0804D4E0 @ =0x03000040
	adds r0, r2, r1
	ldrh r3, [r0]
	adds r1, #2
	adds r0, r2, r1
	ldrh r0, [r0]
	mov sl, r0
	ldr r0, _0804D4E4 @ =0x0300003D
	adds r2, r2, r0
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #0xff
	ands r0, r1
	movs r1, #0xf
	ands r0, r1
	strb r0, [r2]
	movs r1, #0
	lsls r3, r3, #0x10
	mov sb, r3
_0804D4C8:
	lsls r0, r1, #0x10
	mov r8, r0
	cmp r0, #0
	bne _0804D4EC
	ldr r0, _0804D4E8 @ =gStageData
	ldrb r1, [r0, #6]
	b _0804D4F6
	.align 2, 0
_0804D4D8: .4byte gCurTask
_0804D4DC: .4byte 0x0300000C
_0804D4E0: .4byte 0x03000040
_0804D4E4: .4byte 0x0300003D
_0804D4E8: .4byte gStageData
_0804D4EC:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0804D4F6:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0804D528 @ =gPlayers
	adds r4, r0, r1
	ldr r1, [r4, #4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0804D53A
	ldr r0, [r4, #0x6c]
	cmp r0, r7
	bne _0804D53A
	movs r0, #0x80
	lsls r0, r0, #9
	ands r1, r0
	cmp r1, #0
	beq _0804D530
	ldr r0, [r4, #0x14]
	ldr r1, _0804D52C @ =0xFFFFFE00
	adds r0, r0, r1
	b _0804D538
	.align 2, 0
_0804D528: .4byte gPlayers
_0804D52C: .4byte 0xFFFFFE00
_0804D530:
	ldr r0, [r4, #0x14]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r0, r3
_0804D538:
	str r0, [r4, #0x14]
_0804D53A:
	adds r0, r4, #0
	bl sub_802C080
	adds r2, r0, #0
	cmp r2, #0
	bne _0804D598
	ldr r1, [r4]
	ldr r0, _0804D55C @ =Player_800DDD0
	cmp r1, r0
	beq _0804D568
	ldr r0, _0804D560 @ =sub_800B6C4
	cmp r1, r0
	beq _0804D632
	ldr r0, _0804D564 @ =sub_800B748
	cmp r1, r0
	bne _0804D598
	b _0804D632
	.align 2, 0
_0804D55C: .4byte Player_800DDD0
_0804D560: .4byte sub_800B6C4
_0804D564: .4byte sub_800B748
_0804D568:
	mov r0, sb
	asrs r6, r0, #0x10
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r5, r0, #0x10
	str r4, [sp]
	str r2, [sp, #4]
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	beq _0804D632
	ldr r0, [sp, #8]
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_804D83C
	b _0804D632
_0804D598:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _0804D5AE
	cmp r1, #8
	beq _0804D5AE
	cmp r1, #0x10
	bne _0804D632
_0804D5AE:
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _0804D632
	mov r3, sl
	lsls r2, r3, #0x10
	str r0, [sp]
	adds r0, r7, #0
	mov r3, sb
	asrs r1, r3, #0x10
	asrs r2, r2, #0x10
	adds r3, r4, #0
	bl sub_8020950
	adds r2, r0, #0
	movs r3, #0x80
	lsls r3, r3, #9
	ands r0, r3
	cmp r0, #0
	beq _0804D5E4
	lsls r1, r2, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	b _0804D616
_0804D5E4:
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _0804D616
	lsls r0, r2, #0x18
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x14]
	adds r1, r1, r0
	str r1, [r4, #0x14]
	ldr r0, [r4, #4]
	ands r0, r3
	cmp r0, #0
	beq _0804D608
	ldr r3, _0804D604 @ =0xFFFFFF00
	b _0804D60C
	.align 2, 0
_0804D604: .4byte 0xFFFFFF00
_0804D608:
	movs r3, #0x80
	lsls r3, r3, #1
_0804D60C:
	adds r0, r1, r3
	str r0, [r4, #0x14]
	movs r0, #0
	strh r0, [r4, #0x1a]
	strh r0, [r4, #0x1c]
_0804D616:
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r2
	cmp r0, #0
	beq _0804D632
	lsls r0, r2, #0x10
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	ldr r1, [r4, #0x10]
	adds r1, r1, r0
	str r1, [r4, #0x10]
	movs r0, #0
	strh r0, [r4, #0x18]
	strh r0, [r4, #0x1c]
_0804D632:
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, r8
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _0804D642
	b _0804D4C8
_0804D642:
	bl sub_804D6D8
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_804D658
sub_804D658: @ 0x0804D658
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r6, #0
	lsls r1, r1, #0x10
	asrs r5, r1, #0x10
	movs r0, #2
	ands r0, r5
	cmp r0, #0
	beq _0804D68A
	movs r0, #0x2a
	bl VramMalloc
	str r0, [r4]
	movs r0, #0xeb
	lsls r0, r0, #2
	strh r0, [r4, #0xc]
	movs r0, #7
	strb r0, [r4, #0x1a]
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	bne _0804D6A8
	movs r6, #0x80
	lsls r6, r6, #4
	b _0804D6A8
_0804D68A:
	movs r0, #0x2a
	bl VramMalloc
	str r0, [r4]
	movs r0, #0xeb
	lsls r0, r0, #2
	strh r0, [r4, #0xc]
	movs r0, #8
	strb r0, [r4, #0x1a]
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	bne _0804D6A8
	movs r6, #0x80
	lsls r6, r6, #3
_0804D6A8:
	movs r2, #0
	movs r1, #0
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r6, r0
	str r6, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_804D6D8
sub_804D6D8: @ 0x0804D6D8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0804D73C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov r8, r0
	ldr r0, _0804D740 @ =0x0300000C
	adds r7, r1, r0
	mov r1, r8
	ldr r1, [r1]
	mov sb, r1
	mov r3, r8
	ldrb r2, [r3, #0xa]
	lsls r2, r2, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r5, r2, #0x10
	lsls r1, r1, #0x10
	asrs r6, r1, #0x10
	adds r0, r5, #0
	adds r1, r6, #0
	bl IsPointInScreenRect
	cmp r0, #0
	bne _0804D788
	movs r1, #0
	ldr r6, _0804D744 @ =gPlayers
_0804D726:
	lsls r0, r1, #0x10
	adds r5, r0, #0
	cmp r5, #0
	beq _0804D748
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0804D74C
	.align 2, 0
_0804D73C: .4byte gCurTask
_0804D740: .4byte 0x0300000C
_0804D744: .4byte gPlayers
_0804D748:
	ldr r0, _0804D780 @ =gStageData
	ldrb r1, [r0, #6]
_0804D74C:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r6
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_80213B0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0804D726
	mov r3, r8
	ldrb r0, [r3, #0xa]
	mov r1, sb
	strb r0, [r1]
	ldr r0, _0804D784 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0804D7A2
	.align 2, 0
_0804D780: .4byte gStageData
_0804D784: .4byte gCurTask
_0804D788:
	ldr r0, _0804D7B0 @ =gCamera
	ldr r1, [r0]
	subs r1, r5, r1
	strh r1, [r7, #0x10]
	ldr r0, [r0, #4]
	subs r0, r6, r0
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_0804D7A2:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804D7B0: .4byte gCamera

	thumb_func_start TaskDestructor_MazeLauncher
TaskDestructor_MazeLauncher: @ 0x0804D7B4
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_Interactable137
TaskDestructor_Interactable137: @ 0x0804D7C8
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_Interactable138
TaskDestructor_Interactable138: @ 0x0804D7DC
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_804D7F0
sub_804D7F0: @ 0x0804D7F0
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r5, r1, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #8
	str r2, [r4, #0x70]
	lsls r3, r3, #0x10
	asrs r3, r3, #8
	str r3, [r4, #0x74]
	movs r0, #0
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	strh r0, [r4, #0x1a]
	cmp r1, #0
	blt _0804D830
	cmp r1, #1
	bgt _0804D824
	ldr r1, _0804D820 @ =sub_800DD0C
	adds r0, r4, #0
	bl SetPlayerCallback
	b _0804D830
	.align 2, 0
_0804D820: .4byte sub_800DD0C
_0804D824:
	cmp r5, #3
	bgt _0804D830
	ldr r1, _0804D838 @ =sub_800DD28
	adds r0, r4, #0
	bl SetPlayerCallback
_0804D830:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804D838: .4byte sub_800DD28

	thumb_func_start sub_804D83C
sub_804D83C: @ 0x0804D83C
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x10
	asrs r2, r2, #8
	str r2, [r4, #0x70]
	lsls r3, r3, #0x10
	asrs r3, r3, #8
	str r3, [r4, #0x74]
	cmp r1, #1
	beq _0804D86E
	cmp r1, #1
	bgt _0804D85E
	cmp r1, #0
	beq _0804D868
	b _0804D88E
_0804D85E:
	cmp r1, #2
	beq _0804D87A
	cmp r1, #3
	beq _0804D884
	b _0804D88E
_0804D868:
	movs r0, #0xf8
	lsls r0, r0, #8
	b _0804D874
_0804D86E:
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #4
_0804D874:
	strh r0, [r4, #0x18]
	strh r1, [r4, #0x1a]
	b _0804D88E
_0804D87A:
	movs r0, #0
	strh r0, [r4, #0x18]
	movs r0, #0xf8
	lsls r0, r0, #8
	b _0804D88C
_0804D884:
	movs r0, #0
	strh r0, [r4, #0x18]
	movs r0, #0x80
	lsls r0, r0, #4
_0804D88C:
	strh r0, [r4, #0x1a]
_0804D88E:
	ldr r1, _0804D89C @ =sub_800DE48
	adds r0, r4, #0
	bl SetPlayerCallback
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804D89C: .4byte sub_800DE48

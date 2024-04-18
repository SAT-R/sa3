.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

    @ NOTE(Jace): I already matched most spring procedures until TaskDestructor_Spring in the past.
    @             I just need to port and rename them to the SAT-R style, unless I forgot anything.
	thumb_func_start CreateEntity_Spring
CreateEntity_Spring: @ 0x0802DC64
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r1, #0
	ldr r4, [sp, #0x20]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0802DD38 @ =Task_SpringMain
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0802DD3C @ =TaskDestructor_Spring
	str r1, [sp]
	movs r1, #0x3c
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	adds r0, #0xc
	adds r6, r1, r0
	movs r2, #0
	strh r7, [r3, #4]
	mov r0, r8
	strh r0, [r3, #6]
	str r5, [r3]
	ldrb r0, [r5]
	strb r0, [r3, #0xa]
	strb r4, [r3, #0xb]
	ldr r4, _0802DD40 @ =0x03000038
	adds r0, r1, r4
	mov r4, sb
	strb r4, [r0]
	ldr r0, _0802DD44 @ =0x0300003A
	adds r1, r1, r0
	strb r2, [r1]
	movs r2, #0
	ldrb r0, [r5, #7]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0802DCEA
	movs r4, #1
_0802DCD0:
	lsls r0, r2, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #7
	bgt _0802DCEA
	ldrb r0, [r5, #7]
	asrs r0, r1
	ands r0, r4
	cmp r0, #0
	beq _0802DCD0
_0802DCEA:
	adds r0, r3, #0
	adds r0, #0x39
	strb r2, [r0]
	ldrb r1, [r5]
	lsls r1, r1, #3
	lsls r0, r7, #8
	adds r1, r1, r0
	strh r1, [r3, #0x34]
	ldrb r0, [r5, #1]
	lsls r0, r0, #3
	mov r4, r8
	lsls r2, r4, #8
	adds r0, r0, r2
	strh r0, [r3, #0x36]
	ldr r2, _0802DD48 @ =gCamera
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r6, #0x10]
	ldr r1, [r2, #4]
	ldrh r0, [r3, #0x36]
	subs r0, r0, r1
	strh r0, [r6, #0x12]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r5]
	mov r4, sb
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r1, r6, #0
	bl sub_802DFC8
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802DD38: .4byte Task_SpringMain
_0802DD3C: .4byte TaskDestructor_Spring
_0802DD40: .4byte 0x03000038
_0802DD44: .4byte 0x0300003A
_0802DD48: .4byte gCamera

	thumb_func_start Task_SpringMain
Task_SpringMain: @ 0x0802DD4C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r0, _0802DDA8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov r8, r0
	ldr r0, _0802DDAC @ =0x0300000C
	adds r0, r0, r1
	mov sl, r0
	mov r1, r8
	ldrh r1, [r1, #0x34]
	str r1, [sp, #8]
	mov r0, r8
	ldrh r0, [r0, #0x36]
	str r0, [sp, #0xc]
	movs r1, #0
_0802DD7A:
	ldr r2, _0802DDB0 @ =gStageData
	ldrb r0, [r2, #3]
	lsls r7, r1, #0x10
	cmp r0, #7
	bne _0802DD8A
	cmp r7, #0
	beq _0802DD8A
	b _0802DFA4
_0802DD8A:
	cmp r7, #0
	beq _0802DDB8
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0802DDB4 @ =gPlayers
	adds r5, r0, r1
	b _0802DDC8
	.align 2, 0
_0802DDA8: .4byte gCurTask
_0802DDAC: .4byte 0x0300000C
_0802DDB0: .4byte gStageData
_0802DDB4: .4byte gPlayers
_0802DDB8:
	ldrb r0, [r2, #6]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r0, _0802DEC8 @ =gPlayers
	adds r5, r1, r0
_0802DDC8:
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _0802DDE0
	cmp r1, #8
	beq _0802DDE0
	cmp r1, #0x10
	beq _0802DDE0
	b _0802DFA4
_0802DDE0:
	adds r0, r5, #0
	bl sub_802C0D4
	cmp r0, #0
	beq _0802DDEC
	b _0802DFA4
_0802DDEC:
	movs r1, #0
	mov sb, r1
	movs r0, #0x30
	ldrsh r1, [r5, r0]
	cmp r1, #0xa8
	beq _0802DE30
	cmp r1, #0xb8
	beq _0802DE30
	cmp r1, #0xcc
	beq _0802DE30
	cmp r1, #0xd5
	bne _0802DE0A
	ldrh r0, [r5, #0x36]
	cmp r0, #1
	beq _0802DE30
_0802DE0A:
	cmp r1, #0xe6
	beq _0802DE30
	cmp r1, #0xfe
	beq _0802DE30
	cmp r1, #0xff
	beq _0802DE30
	movs r0, #0x81
	lsls r0, r0, #1
	cmp r1, r0
	beq _0802DE30
	adds r0, #1
	cmp r1, r0
	beq _0802DE30
	adds r0, #1
	cmp r1, r0
	beq _0802DE30
	subs r0, #4
	cmp r1, r0
	bne _0802DE52
_0802DE30:
	ldr r0, [sp, #8]
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	ldr r0, [sp, #0xc]
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	str r5, [sp]
	movs r0, #1
	str r0, [sp, #4]
	mov r0, sl
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	beq _0802DE52
	movs r1, #1
	mov sb, r1
_0802DE52:
	mov r0, sb
	cmp r0, #0
	bne _0802DE78
	ldr r0, [sp, #8]
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	ldr r0, [sp, #0xc]
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	str r5, [sp]
	mov r0, sb
	str r0, [sp, #4]
	mov r0, sl
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	bne _0802DE78
	b _0802DF94
_0802DE78:
	movs r6, #0
	mov r3, r8
	adds r3, #0x3a
	ldrb r1, [r3]
	asrs r2, r7, #0x10
	adds r0, r1, #0
	asrs r0, r2
	movs r4, #1
	ands r0, r4
	cmp r0, #0
	bne _0802DE9E
	adds r0, r4, #0
	lsls r0, r2
	orrs r1, r0
	strb r1, [r3]
	adds r0, r5, #0
	movs r1, #0x94
	bl sub_8004E98
_0802DE9E:
	mov r0, sl
	ldrb r1, [r0, #0x1a]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _0802DEB0
	adds r0, r1, #1
	mov r1, sl
	strb r0, [r1, #0x1a]
_0802DEB0:
	mov r0, r8
	adds r0, #0x38
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #9
	bhi _0802DEFE
	lsls r0, r1, #2
	ldr r1, _0802DECC @ =_0802DED0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802DEC8: .4byte gPlayers
_0802DECC: .4byte _0802DED0
_0802DED0: @ jump table
	.4byte _0802DEF8 @ case 0
	.4byte _0802DEFC @ case 1
	.4byte _0802DEF8 @ case 2
	.4byte _0802DEF8 @ case 3
	.4byte _0802DEF8 @ case 4
	.4byte _0802DEFC @ case 5
	.4byte _0802DEF8 @ case 6
	.4byte _0802DEFC @ case 7
	.4byte _0802DEF8 @ case 8
	.4byte _0802DEF8 @ case 9
_0802DEF8:
	movs r6, #0
	b _0802DEFE
_0802DEFC:
	movs r6, #1
_0802DEFE:
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0802DF14
	movs r0, #0
	cmp r6, #0
	bne _0802DF12
	movs r0, #1
_0802DF12:
	adds r6, r0, #0
_0802DF14:
	mov r0, sb
	cmp r0, #0
	beq _0802DF44
	cmp r6, #0
	bne _0802DF3C
	movs r0, #0x18
	ldrsh r1, [r5, r0]
	movs r0, #0xa0
	lsls r0, r0, #2
	cmp r1, r0
	ble _0802DF34
	ldr r1, _0802DF30 @ =sub_8009C94
	b _0802DF5E
	.align 2, 0
_0802DF30: .4byte sub_8009C94
_0802DF34:
	ldr r1, _0802DF38 @ =sub_800EA74
	b _0802DF5E
	.align 2, 0
_0802DF38: .4byte sub_800EA74
_0802DF3C:
	ldr r1, _0802DF40 @ =sub_8009D04
	b _0802DF5E
	.align 2, 0
_0802DF40: .4byte sub_8009D04
_0802DF44:
	cmp r6, #0
	bne _0802DF6C
	movs r0, #0x18
	ldrsh r1, [r5, r0]
	movs r0, #0xa0
	lsls r0, r0, #2
	cmp r1, r0
	ble _0802DF5C
	ldr r1, _0802DF58 @ =PlayerCB_8009B4C
	b _0802DF5E
	.align 2, 0
_0802DF58: .4byte PlayerCB_8009B4C
_0802DF5C:
	ldr r1, _0802DF68 @ =PlayerCB_800EA0C
_0802DF5E:
	adds r0, r5, #0
	bl SetPlayerCallback
	b _0802DF74
	.align 2, 0
_0802DF68: .4byte PlayerCB_800EA0C
_0802DF6C:
	ldr r1, _0802DF90 @ =sub_8009BF0
	adds r0, r5, #0
	bl SetPlayerCallback
_0802DF74:
	ldrb r1, [r4]
	mov r0, r8
	adds r0, #0x39
	ldrb r0, [r0]
	movs r2, #0xf
	ands r1, r2
	lsls r1, r1, #4
	ands r0, r2
	orrs r1, r0
	adds r0, r5, #0
	adds r0, #0xa4
	strb r1, [r0]
	b _0802DFA4
	.align 2, 0
_0802DF90: .4byte sub_8009BF0
_0802DF94:
	mov r2, r8
	adds r2, #0x3a
	asrs r0, r7, #0x10
	movs r1, #1
	lsls r1, r0
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
_0802DFA4:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r7, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _0802DFB4
	b _0802DD7A
_0802DFB4:
	bl sub_802E0D8
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_802DFC8
sub_802DFC8: @ 0x0802DFC8
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	movs r5, #0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0802DFEE
	movs r6, #6
	movs r0, #1
	ands r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	asrs r5, r1, #0x1f
	movs r0, #0x80
	lsls r0, r0, #3
	ands r5, r0
	b _0802E03A
_0802DFEE:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0802E014
	movs r6, #4
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802E004
	movs r5, #0x80
	lsls r5, r5, #3
_0802E004:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0802E03A
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r5, r0
	b _0802E03A
_0802E014:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802E02C
	movs r6, #2
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0802E03A
	movs r5, #0x80
	lsls r5, r5, #3
	b _0802E03A
_0802E02C:
	movs r6, #0
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0802E03A
	movs r5, #0x80
	lsls r5, r5, #4
_0802E03A:
	ldr r1, _0802E064 @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #7
	beq _0802E094
	ldrb r0, [r1, #0xa]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bhi _0802E080
	ldrb r0, [r1, #9]
	cmp r0, #5
	bne _0802E068
	movs r0, #0xf
	bl VramMalloc
	str r0, [r4]
	movs r0, #0xea
	lsls r0, r0, #2
	strh r0, [r4, #0xc]
	b _0802E0A6
	.align 2, 0
_0802E064: .4byte gStageData
_0802E068:
	cmp r0, #3
	bne _0802E080
	movs r0, #0x14
	bl VramMalloc
	str r0, [r4]
	ldr r0, _0802E07C @ =0x000003DB
	strh r0, [r4, #0xc]
	b _0802E0A6
	.align 2, 0
_0802E07C: .4byte 0x000003DB
_0802E080:
	movs r0, #0x14
	bl VramMalloc
	str r0, [r4]
	ldr r0, _0802E090 @ =0x00000362
	strh r0, [r4, #0xc]
	b _0802E0A6
	.align 2, 0
_0802E090: .4byte 0x00000362
_0802E094:
	movs r0, #0x14
	bl VramMalloc
	str r0, [r4]
	ldr r0, _0802E0D4 @ =0x00000362
	strh r0, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r5, r0
_0802E0A6:
	movs r1, #0
	strb r6, [r4, #0x1a]
	movs r2, #0
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
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802E0D4: .4byte 0x00000362

	thumb_func_start sub_802E0D8
sub_802E0D8: @ 0x0802E0D8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0802E11C @ =gCurTask
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
	movs r0, #0x34
	ldrsh r6, [r4, r0]
	movs r1, #0x36
	ldrsh r7, [r4, r1]
	adds r0, r6, #0
	adds r1, r7, #0
	bl IsPointInScreenRect
	cmp r0, #0
	bne _0802E120
	ldrb r0, [r4, #0xa]
	mov r1, r8
	strb r0, [r1]
	mov r1, sb
	ldr r0, [r1]
	bl TaskDestroy
	b _0802E14C
	.align 2, 0
_0802E11C: .4byte gCurTask
_0802E120:
	ldr r1, _0802E158 @ =gCamera
	ldr r0, [r1]
	subs r0, r6, r0
	strh r0, [r5, #0x10]
	ldr r0, [r1, #4]
	subs r0, r7, r0
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _0802E146
	ldrb r1, [r5, #0x1a]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0802E146
	subs r0, r1, #1
	strb r0, [r5, #0x1a]
_0802E146:
	adds r0, r5, #0
	bl DisplaySprite
_0802E14C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802E158: .4byte gCamera

	thumb_func_start CreateEntity_Spring_Up
CreateEntity_Spring_Up: @ 0x0802E15C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #0
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl CreateEntity_Spring
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Spring_Down
CreateEntity_Spring_Down: @ 0x0802E188
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #1
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl CreateEntity_Spring
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Spring_Left
CreateEntity_Spring_Left: @ 0x0802E1B4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #3
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl CreateEntity_Spring
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Spring_Right
CreateEntity_Spring_Right: @ 0x0802E1E0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #2
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl CreateEntity_Spring
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Spring_UpLeft
CreateEntity_Spring_UpLeft: @ 0x0802E20C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #6
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl CreateEntity_Spring
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Spring_DownLeft
CreateEntity_Spring_DownLeft: @ 0x0802E238
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #7
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl CreateEntity_Spring
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Spring_UpRight
CreateEntity_Spring_UpRight: @ 0x0802E264
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #4
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl CreateEntity_Spring
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Spring_DownRight
CreateEntity_Spring_DownRight: @ 0x0802E290
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #5
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl CreateEntity_Spring
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Spring_Small_UpRight
CreateEntity_Spring_Small_UpRight: @ 0x0802E2BC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #8
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl CreateEntity_Spring
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Spring_Small_UpLeft
CreateEntity_Spring_Small_UpLeft: @ 0x0802E2E8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #9
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl CreateEntity_Spring
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_Spring
TaskDestructor_Spring: @ 0x0802E314
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl VramFree
	pop {r0}
	bx r0

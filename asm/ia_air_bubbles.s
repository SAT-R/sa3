.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 01
	thumb_func_start Task_AirBubbleBig
Task_AirBubbleBig: @ 0x08043BC4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x14
	ldr r5, _08043CC8 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0x14
	adds r6, r1, r0
	movs r2, #0
	mov r8, r2
	ldr r0, [r4]
	lsls r0, r0, #8
	lsrs r2, r0, #0x10
	ldr r0, [r4, #4]
	lsls r0, r0, #8
	lsrs r1, r0, #0x10
	ldrb r0, [r6, #0x1a]
	cmp r0, #1
	beq _08043CD4
	lsls r0, r2, #0x10
	asrs r7, r0, #0x10
	lsls r1, r1, #0x10
	asrs r0, r1, #0x10
	mov sb, r0
	ldr r2, _08043CCC @ =0xFFF80000
	adds r1, r1, r2
	asrs r1, r1, #0x10
	adds r0, r7, #0
	movs r2, #0
	bl sub_8004E20
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08043CE8
	ldr r5, [r4, #0xc]
	adds r3, r5, #0
	adds r3, #0x24
	ldrb r0, [r3]
	rsbs r0, r0, #0
	add r1, sp, #0x10
	strb r0, [r1]
	movs r0, #0x25
	adds r0, r0, r5
	mov ip, r0
	ldrb r0, [r0]
	rsbs r0, r0, #0
	mov r2, sp
	adds r2, #0x11
	strb r0, [r2]
	ldrb r2, [r3]
	mov r0, sp
	adds r0, #0x12
	strb r2, [r0]
	mov r0, ip
	ldrb r2, [r0]
	mov r0, sp
	adds r0, #0x13
	strb r2, [r0]
	add r0, sp, #0xc
	movs r2, #4
	bl memcpy
	adds r0, r5, #0
	bl sub_802C080
	cmp r0, #0
	bne _08043C82
	ldr r0, [r5, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08043C82
	add r2, sp, #0xc
	str r2, [sp]
	str r5, [sp, #4]
	mov r0, r8
	str r0, [sp, #8]
	adds r0, r6, #0
	movs r1, #0
	adds r2, r7, #0
	mov r3, sb
	bl sub_8020A58
	cmp r0, #0
	beq _08043C82
	movs r2, #1
	mov r8, r2
	adds r0, r5, #0
	bl sub_8016D04
_08043C82:
	mov r0, r8
	cmp r0, #0
	bne _08043D50
	ldrb r0, [r4, #8]
	cmp r0, #4
	bhi _08043CA2
	adds r0, #1
	strb r0, [r4, #8]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bne _08043CA2
	mov r2, r8
	strb r2, [r6, #0x1a]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
_08043CA2:
	ldr r2, _08043CD0 @ =gStageData
	ldrb r0, [r2, #4]
	cmp r0, #4
	beq _08043D2A
	ldr r1, [r2, #0x1c]
	lsls r0, r1, #1
	adds r0, r0, r1
	ldr r1, [r4, #4]
	subs r1, #0xb0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r1, r1, r0
	str r1, [r4, #4]
	ldr r1, [r2, #0x1c]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	b _08043D14
	.align 2, 0
_08043CC8: .4byte gCurTask
_08043CCC: .4byte 0xFFF80000
_08043CD0: .4byte gStageData
_08043CD4:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0
	bl sub_8004E20
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08043CF0
_08043CE8:
	ldr r0, [r5]
	bl TaskDestroy
	b _08043D74
_08043CF0:
	ldr r2, _08043D5C @ =gStageData
	ldrb r0, [r2, #4]
	cmp r0, #4
	beq _08043D2A
	ldr r1, [r2, #0x1c]
	lsls r0, r1, #3
	subs r0, r0, r1
	ldr r1, [r4, #4]
	subs r1, #0xb0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r1, r1, r0
	str r1, [r4, #4]
	ldr r1, [r2, #0x1c]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r1
_08043D14:
	ldr r1, _08043D60 @ =0x000003FF
	ands r0, r1
	ldr r1, _08043D64 @ =gSineTable
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
_08043D2A:
	ldr r0, [r4]
	lsls r0, r0, #8
	lsrs r2, r0, #0x10
	ldr r0, [r4, #4]
	lsls r0, r0, #8
	lsrs r1, r0, #0x10
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r3, _08043D68 @ =gCamera
	ldr r2, [r3]
	subs r2, r0, r2
	ldr r3, [r3, #4]
	subs r3, r1, r3
	bl sub_802C140
	cmp r0, #0
	bne _08043D70
_08043D50:
	ldr r0, _08043D6C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08043D74
	.align 2, 0
_08043D5C: .4byte gStageData
_08043D60: .4byte 0x000003FF
_08043D64: .4byte gSineTable
_08043D68: .4byte gCamera
_08043D6C: .4byte gCurTask
_08043D70:
	bl sub_8043D98
_08043D74:
	add sp, #0x14
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.endif

	thumb_func_start TaskDestructor_AirBubbles
TaskDestructor_AirBubbles: @ 0x08043D84
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8043D98
sub_8043D98: @ 0x08043D98
	push {r4, lr}
	ldr r0, _08043DD4 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r4, r2
	ldr r0, _08043DD8 @ =0x03000014
	adds r4, r4, r0
	ldr r0, [r2]
	asrs r0, r0, #8
	ldr r3, _08043DDC @ =gCamera
	ldr r1, [r3]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	ldr r1, [r3, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08043DD4: .4byte gCurTask
_08043DD8: .4byte 0x03000014
_08043DDC: .4byte gCamera

	thumb_func_start TaskDestructor_AirBubbleBig
TaskDestructor_AirBubbleBig: @ 0x08043DE0
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x14]
	bl VramFree
	pop {r0}
	bx r0

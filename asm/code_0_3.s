.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_8022E84
sub_8022E84: @ 0x08022E84
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _08022F44 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r3
	mov r8, r0
	ldr r1, _08022F48 @ =gStageData
	ldrb r0, [r1, #6]
	lsls r6, r0, #2
	adds r6, r6, r0
	lsls r6, r6, #2
	adds r6, r6, r0
	lsls r6, r6, #4
	ldr r2, _08022F4C @ =gPlayers
	adds r6, r6, r2
	adds r1, #0x8e
	ldrb r1, [r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	ldr r1, _08022F50 @ =0x030001E0
	adds r1, r1, r3
	mov sb, r1
	ldr r1, [r6, #0x10]
	ldr r2, [r0, #0x10]
	subs r1, r1, r2
	lsls r1, r1, #8
	lsrs r7, r1, #0x10
	ldr r1, [r6, #0x14]
	ldr r0, [r0, #0x14]
	subs r1, r1, r0
	lsls r1, r1, #8
	lsrs r5, r1, #0x10
	ldr r2, _08022F54 @ =gNextFreeAffineIndex
	ldrb r0, [r2]
	ldr r1, _08022F58 @ =0x00040020
	orrs r0, r1
	mov r1, sb
	str r0, [r1, #8]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r5, #0x10
	asrs r5, r0, #0x10
	asrs r0, r0, #0x12
	lsls r1, r7, #0x10
	asrs r4, r1, #0x10
	asrs r1, r1, #0x12
	str r3, [sp]
	bl sa2__sub_8004418
	ldr r2, _08022F5C @ =0xFFFFFF00
	adds r0, r0, r2
	ldr r2, _08022F60 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	ldr r3, [sp]
	ldr r1, _08022F64 @ =0x03000208
	adds r3, r3, r1
	strh r0, [r3]
	rsbs r4, r4, #0
	ldr r1, [r6, #0x10]
	asrs r1, r1, #8
	ldr r2, _08022F68 @ =gCamera
	ldr r0, [r2]
	subs r1, r1, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r4, r4, r1
	lsls r4, r4, #0x10
	rsbs r5, r5, #0
	ldr r0, [r6, #0x14]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	adds r5, r5, r0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsrs r7, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0xf
	bgt _08022F6C
	movs r7, #0x10
	b _08022F72
	.align 2, 0
_08022F44: .4byte gCurTask
_08022F48: .4byte gStageData
_08022F4C: .4byte gPlayers
_08022F50: .4byte 0x030001E0
_08022F54: .4byte gNextFreeAffineIndex
_08022F58: .4byte 0x00040020
_08022F5C: .4byte 0xFFFFFF00
_08022F60: .4byte 0x000003FF
_08022F64: .4byte 0x03000208
_08022F68: .4byte gCamera
_08022F6C:
	cmp r4, #0xe0
	ble _08022F72
	movs r7, #0xe0
_08022F72:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x17
	bgt _08022F7E
	movs r5, #0x18
	b _08022F84
_08022F7E:
	cmp r0, #0x90
	ble _08022F84
	movs r5, #0x90
_08022F84:
	ldr r0, _08022FAC @ =0x0000020E
	add r0, r8
	strh r7, [r0]
	movs r0, #0x84
	lsls r0, r0, #2
	add r0, r8
	strh r5, [r0]
	movs r1, #0x82
	lsls r1, r1, #2
	add r1, r8
	mov r0, sb
	bl TransformSprite
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08022FAC: .4byte 0x0000020E

	thumb_func_start CreateSinglePakStageUI
CreateSinglePakStageUI: @ 0x08022FB0
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _08022FE4 @ =Task_8022FEC
	movs r1, #0x8e
	lsls r1, r1, #2
	movs r2, #0x84
	lsls r2, r2, #6
	movs r5, #0
	str r5, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	bl sub_8022B30
	ldr r0, _08022FE8 @ =0x03000234
	adds r4, r4, r0
	strb r5, [r4]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08022FE4: .4byte Task_8022FEC
_08022FE8: .4byte 0x03000234

	thumb_func_start Task_8022FEC
Task_8022FEC: @ 0x08022FEC
	push {lr}
	bl sub_8022978
	bl sub_8022A24
	bl sub_8022D40
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8023000
sub_8023000: @ 0x08023000
	push {lr}
	ldr r0, _0802303C @ =gStageData
	adds r0, #0x8e
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08023040 @ =gPlayers
	adds r0, r0, r1
	adds r0, #0xe0
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0xc
	ldrh r0, [r1, #0x10]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xee
	bhi _08023044
	movs r2, #0x12
	ldrsh r0, [r1, r2]
	cmp r0, #0
	ble _08023044
	cmp r0, #0x9f
	bgt _08023044
	movs r0, #1
	b _08023046
	.align 2, 0
_0802303C: .4byte gStageData
_08023040: .4byte gPlayers
_08023044:
	movs r0, #0
_08023046:
	pop {r1}
	bx r1
	.align 2, 0

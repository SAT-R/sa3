.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 01
	thumb_func_start sub_8060FE0
sub_8060FE0: @ 0x08060FE0
	push {r4, r5, lr}
	ldr r5, [sp, #0xc]
	ldr r4, [sp, #0x10]
	strb r4, [r0, #4]
	str r2, [r0]
	ldrb r4, [r2]
	strb r4, [r0, #5]
	movs r4, #0
	strh r3, [r0, #0xa]
	strh r5, [r0, #0xc]
	ldrb r3, [r2]
	lsls r3, r3, #0xb
	str r3, [r0, #0x18]
	ldrb r2, [r2, #1]
	lsls r2, r2, #0xb
	str r2, [r0, #0x1c]
	str r3, [r0, #0x10]
	str r2, [r0, #0x14]
	strb r4, [r0, #8]
	strb r1, [r0, #6]
	strb r4, [r0, #7]
	pop {r4, r5}
	pop {r0}
	bx r0
.endif

	thumb_func_start sub_8061010
sub_8061010: @ 0x08061010
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x20
	ldr r2, [r0, #0x18]
	asrs r2, r2, #8
	ldrh r1, [r0, #0xa]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _08061050 @ =gCamera
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #0x1c]
	asrs r1, r1, #8
	ldrh r0, [r0, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r4, r0, #0
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08061050: .4byte gCamera

	thumb_func_start sub_8061054
sub_8061054: @ 0x08061054
	push {r4, lr}
	sub sp, #0x28
	adds r4, r0, #0
	mov r1, sp
	bl sub_8061090
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x20
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x10]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [sp, #0x14]
	mov r1, sp
	ldrh r0, [r4, #0xa]
	strh r0, [r1, #0xc]
	ldrh r0, [r4, #0xc]
	strh r0, [r1, #0xe]
	ldr r0, [r4]
	str r0, [sp]
	ldrb r0, [r4, #5]
	strb r0, [r1, #8]
	mov r0, sp
	bl sub_805C280
	add sp, #0x28
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_8061090
sub_8061090: @ 0x08061090
	push {lr}
	movs r2, #0
	str r2, [r1]
	strb r2, [r1, #8]
	str r2, [r1, #4]
	adds r2, r0, #0
	adds r2, #0x20
	str r2, [r1, #0x1c]
	ldr r2, [r0, #0x18]
	str r2, [r1, #0x10]
	ldr r2, [r0, #0x1c]
	str r2, [r1, #0x14]
	ldrh r2, [r0, #0xa]
	strh r2, [r1, #0xc]
	ldrh r0, [r0, #0xc]
	strh r0, [r1, #0xe]
	adds r0, r1, #0
	bl sub_805C63C
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start TaskDestructor_Yukigasen
TaskDestructor_Yukigasen: @ 0x080610BC
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x20]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start CreateYukigasenSnowball
CreateYukigasenSnowball: @ 0x080610D0
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #8
	mov sb, r0
	mov sl, r1
	adds r6, r2, #0
	mov r8, r3
	ldr r5, [sp, #0x24]
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r0, _0806115C @ =Task_SnowballMain
	ldr r2, _08061160 @ =0x00004040
	ldr r1, _08061164 @ =sub_80611E4
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r1, r4
	mov r3, sb
	str r3, [r4, #0x10]
	mov r0, sl
	str r0, [r4, #0x14]
	movs r0, #0
	movs r2, #0
	strh r6, [r4, #4]
	mov r3, r8
	strh r3, [r4, #6]
	strb r0, [r4]
	strb r5, [r4, #1]
	strb r0, [r4, #2]
	lsls r5, r5, #0x18
	asrs r5, r5, #0x18
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #8
	strh r0, [r4, #0xa]
	strh r2, [r4, #0xc]
	strh r2, [r4, #8]
	add r0, sp, #4
	strh r2, [r0]
	ldr r0, _08061168 @ =0x03000044
	adds r1, r1, r0
	ldr r2, _0806116C @ =0x01000002
	add r0, sp, #4
	bl CpuSet
	adds r0, r4, #0
	bl sub_Snowball_8060B60
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806115C: .4byte Task_SnowballMain
_08061160: .4byte 0x00004040
_08061164: .4byte sub_80611E4
_08061168: .4byte 0x03000044
_0806116C: .4byte 0x01000002

	thumb_func_start Task_Snowball_8061170
Task_Snowball_8061170: @ 0x08061170
	push {r4, r5, r6, lr}
	ldr r6, _0806119C @ =gCurTask
	ldr r0, [r6]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_80611A0
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_8060C68
	cmp r5, #0
	bne _08061196
	ldr r0, [r6]
	bl TaskDestroy
_08061196:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806119C: .4byte gCurTask

	thumb_func_start sub_80611A0
sub_80611A0: @ 0x080611A0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x18
	ldr r2, [r0, #0x10]
	asrs r2, r2, #8
	ldrh r1, [r0, #4]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _080611E0 @ =gCamera
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #0x14]
	asrs r1, r1, #8
	ldrh r0, [r0, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r4, r0, #0
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080611E0: .4byte gCamera

	thumb_func_start sub_80611E4
sub_80611E4: @ 0x080611E4
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	bl VramFree
	pop {r0}
	bx r0

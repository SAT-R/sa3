.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 01
	thumb_func_start CreateApeProjectile
CreateApeProjectile: @ 0x0805AD04
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #0xc
	adds r5, r0, #0     @ r5 = qPosX
	mov sl, r1          @ sl = qPosY
	mov r8, r2
	mov sb, r3
	ldr r6, [sp, #0x28]
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0          @ r8 = regionX
	mov r1, sb
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1          @ sb = regionY
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _0805ADB0 @ =Task_ApeProjectileInit
	ldr r2, _0805ADB4 @ =0x00004040
	ldr r1, _0805ADB8 @ =TaskDestructor_ApeProjectile
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r3, r4
	lsls r1, r6, #0x18
	asrs r1, r1, #0x18
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #8
	adds r5, r5, r0
	str r5, [r4, #0x10]
	mov r0, sl
	str r0, [r4, #0x14]
	movs r0, #0
	movs r5, #0
	mov r1, r8
	strh r1, [r4, #4]
	mov r1, sb
	strh r1, [r4, #6]
	strb r0, [r4]
	strb r6, [r4, #1]
	movs r0, #0xff
	strb r0, [r4, #2]
	strh r5, [r4, #0xa]
	strh r5, [r4, #0xc]
	strh r5, [r4, #8]
	add r0, sp, #4
	strh r5, [r0]
	ldr r0, _0805ADBC @ =0x03000044
	adds r1, r3, r0
	ldr r6, _0805ADC0 @ =0x01000002
	add r0, sp, #4
	adds r2, r6, #0
	str r3, [sp, #8]
	bl CpuSet
	mov r0, sp
	adds r0, #6
	strh r5, [r0]
	ldr r3, [sp, #8]
	ldr r1, _0805ADC4 @ =0x0300003C
	adds r3, r3, r1
	adds r1, r3, #0
	adds r2, r6, #0
	bl CpuSet
	adds r0, r4, #0
	bl sub_805AAB0
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805ADB0: .4byte Task_ApeProjectileInit
_0805ADB4: .4byte 0x00004040
_0805ADB8: .4byte TaskDestructor_ApeProjectile
_0805ADBC: .4byte 0x03000044
_0805ADC0: .4byte 0x01000002
_0805ADC4: .4byte 0x0300003C
.endif

	thumb_func_start Task_805ADC8
Task_805ADC8: @ 0x0805ADC8
	push {r4, r5, r6, lr}
	ldr r6, _0805ADF4 @ =gCurTask
	ldr r0, [r6]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_805AE30
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_805ABE4
	cmp r5, #0
	bne _0805ADEE
	ldr r0, [r6]
	bl TaskDestroy
_0805ADEE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805ADF4: .4byte gCurTask

	thumb_func_start sub_805ADF8
sub_805ADF8: @ 0x0805ADF8
	movs r2, #2
	ldrsb r2, [r0, r2]
	movs r3, #1
	ldrsb r3, [r0, r3]
	ldrh r1, [r0, #0xc]
	adds r1, #0x20
	strh r1, [r0, #0xc]
	lsls r2, r2, #0x19
	asrs r2, r2, #0x10
	adds r2, r2, r1
	ldrh r1, [r0, #0xa]
	adds r1, #1
	strh r1, [r0, #0xa]
	adds r1, r3, #0
	lsls r3, r3, #8
	adds r3, r3, r1
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldr r1, [r0, #0x14]
	adds r1, r1, r2
	str r1, [r0, #0x14]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x11
	ldr r1, [r0, #0x10]
	adds r1, r1, r3
	str r1, [r0, #0x10]
	bx lr
	.align 2, 0

	thumb_func_start sub_805AE30
sub_805AE30: @ 0x0805AE30
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x18
	ldr r2, [r0, #0x10]
	asrs r2, r2, #8
	ldrh r1, [r0, #4]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _0805AE70 @ =gCamera
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
_0805AE70: .4byte gCamera

	thumb_func_start TaskDestructor_ApeProjectile
TaskDestructor_ApeProjectile: @ 0x0805AE74
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	bl VramFree
	pop {r0}
	bx r0

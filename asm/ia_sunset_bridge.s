.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_8045060
sub_8045060: @ 0x08045060
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov ip, r0
	adds r0, #0x68
	ldrh r5, [r0]
	movs r1, #0
	movs r4, #0
	cmp r4, r5
	bge _080450AE
	movs r0, #0x28
	add r0, ip
	mov r8, r0
	ldr r2, _080450D4 @ =gSineTable
	mov sb, r2
_08045080:
	lsls r3, r4, #2
	add r3, r8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #1
	add r0, sb
	movs r6, #0
	ldrsh r2, [r0, r6]
	mov r7, ip
	movs r6, #0x22
	ldrsh r0, [r7, r6]
	muls r0, r2, r0
	asrs r0, r0, #0xe
	str r0, [r3]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldrh r0, [r7, #0x24]
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r4, r5
	blt _08045080
_080450AE:
	cmp r4, #0xf
	bhi _080450C8
	mov r1, ip
	adds r1, #0x28
	movs r2, #0
_080450B8:
	lsls r0, r4, #2
	adds r0, r1, r0
	str r2, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xf
	bls _080450B8
_080450C8:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080450D4: .4byte gSineTable

	thumb_func_start sub_80450D8
sub_80450D8: @ 0x080450D8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r1, #0x20
	ldrsh r0, [r4, r1]
	lsls r2, r0, #1
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	movs r3, #0x14
	ldrsh r1, [r4, r3]
	subs r0, r0, r1
	cmp r0, #0
	bge _080450F4
	movs r0, #0
_080450F4:
	lsls r0, r0, #9
	adds r1, r2, #0
	bl __divsi3
	ldr r1, _08045130 @ =gSineTable
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r3, #0x22
	ldrsh r0, [r4, r3]
	muls r0, r1, r0
	asrs r0, r0, #6
	ldr r1, [r4, #0x6c]
	muls r0, r1, r0
	asrs r0, r0, #8
	ldr r1, [r4, #0x10]
	adds r1, r1, r0
	adds r0, r5, #0
	adds r0, #0x25
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	subs r1, r1, r0
	str r1, [r5, #0x14]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08045130: .4byte gSineTable

	thumb_func_start TaskDestructor_SunsetBridge
TaskDestructor_SunsetBridge: @ 0x08045134
	push {lr}
	ldrh r0, [r0, #6]
	ldr r1, _08045148 @ =0x03000080
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0
	.align 2, 0
_08045148: .4byte 0x03000080

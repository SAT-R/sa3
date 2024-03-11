.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start sub_8058C74
sub_8058C74: @ 0x08058C74
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0x18
	bl VramMalloc
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0x1c
	str r1, [r4, #0x1c]
	movs r6, #0
	movs r5, #0
	ldr r1, _08058CDC @ =0x0000048E
	strh r1, [r0, #0xc]
	strb r6, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r2, [r4, #0x14]
	asrs r2, r2, #8
	ldrh r1, [r4, #6]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _08058CE0 @ =gUnknown_03001D10
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r0, #0x10]
	ldr r2, [r4, #0x18]
	asrs r2, r2, #8
	ldrh r1, [r4, #8]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r1, [r3, #4]
	subs r2, r2, r1
	strh r2, [r0, #0x12]
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r6, [r0, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r0, #8]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0, #0x20]
	bl sub_80BF44C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08058CDC: .4byte 0x0000048E
_08058CE0: .4byte gUnknown_03001D10

	thumb_func_start CreateEntity_Spinner
CreateEntity_Spinner: @ 0x08058CE4
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #8
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
	lsrs r5, r5, #0x18
	ldr r0, _08058D70 @ =Task_SpinnerMain
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08058D74 @ =TaskDestructor_Spinner
	str r1, [sp]
	movs r1, #0x4c
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r1, r4
	movs r3, #0
	strb r5, [r4, #4]
	mov r2, sb
	str r2, [r4]
	ldrb r0, [r2]
	strb r0, [r4, #5]
	strh r6, [r4, #6]
	mov r5, r8
	strh r5, [r4, #8]
	ldrb r2, [r2]
	lsls r2, r2, #0xb
	str r2, [r4, #0x14]
	mov r5, sb
	ldrb r0, [r5, #1]
	lsls r0, r0, #0xb
	str r0, [r4, #0x18]
	str r2, [r4, #0xc]
	str r0, [r4, #0x10]
	add r0, sp, #4
	strh r3, [r0]
	ldr r0, _08058D78 @ =0x03000048
	adds r1, r1, r0
	ldr r2, _08058D7C @ =0x01000002
	add r0, sp, #4
	bl sub_80C7520
	adds r0, r4, #0
	bl sub_8058C74
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r5]
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08058D70: .4byte Task_SpinnerMain
_08058D74: .4byte TaskDestructor_Spinner
_08058D78: .4byte 0x03000048
_08058D7C: .4byte 0x01000002

	thumb_func_start Task_SpinnerMain
Task_SpinnerMain: @ 0x08058D80
	push {r4, r5, lr}
	ldr r5, _08058DA0 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_8058DF4
	cmp r0, #1
	bne _08058DA4
	ldr r0, [r5]
	bl TaskDestroy
	b _08058DAA
	.align 2, 0
_08058DA0: .4byte gCurTask
_08058DA4:
	adds r0, r4, #0
	bl sub_8058DB0
_08058DAA:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8058DB0
sub_8058DB0: @ 0x08058DB0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x1c
	ldr r2, [r0, #0x14]
	asrs r2, r2, #8
	ldrh r1, [r0, #6]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _08058DF0 @ =gUnknown_03001D10
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #0x18]
	asrs r1, r1, #8
	ldrh r0, [r0, #8]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	adds r0, r5, #0
	bl sub_80BF44C
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_80C033C
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08058DF0: .4byte gUnknown_03001D10

	thumb_func_start sub_8058DF4
sub_8058DF4: @ 0x08058DF4
	push {r4, lr}
	sub sp, #0x28
	adds r4, r0, #0
	mov r1, sp
	bl sub_8058E30
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x1c
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x10]
	str r0, [sp, #0x14]
	mov r1, sp
	ldrh r0, [r4, #6]
	strh r0, [r1, #0xc]
	ldrh r0, [r4, #8]
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

	thumb_func_start sub_8058E30
sub_8058E30: @ 0x08058E30
	push {lr}
	movs r2, #0
	str r2, [r1]
	strb r2, [r1, #8]
	str r2, [r1, #4]
	adds r2, r0, #0
	adds r2, #0x1c
	str r2, [r1, #0x1c]
	ldr r2, [r0, #0x14]
	str r2, [r1, #0x10]
	ldr r2, [r0, #0x18]
	str r2, [r1, #0x14]
	ldrh r2, [r0, #6]
	strh r2, [r1, #0xc]
	ldrh r0, [r0, #8]
	strh r0, [r1, #0xe]
	adds r0, r1, #0
	bl sub_805C63C
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start TaskDestructor_Spinner
TaskDestructor_Spinner: @ 0x08058E5C
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x1c]
	bl VramFree
	pop {r0}
	bx r0

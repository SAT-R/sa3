.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start sub_8055E50
sub_8055E50: @ 0x08055E50
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	ldr r0, _08055F1C @ =gStageData
	ldrb r2, [r0]
	mov r0, sl
	adds r0, #0x5e
	ldrb r0, [r0]
	mov sb, r0
	mov r0, sl
	adds r0, #0x5f
	ldrb r1, [r0]
	mov r7, sl
	adds r7, #0xc
	ldr r5, _08055F20 @ =gUnknown_080D1CE4
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r4, r2, #3
	adds r4, r4, r2
	adds r4, r4, r0
	lsls r4, r4, #1
	adds r0, r5, #4
	adds r0, r4, r0
	ldrh r0, [r0]
	bl VramMalloc
	mov r1, sl
	str r0, [r1, #0xc]
	adds r0, r4, r5
	ldrh r0, [r0]
	movs r6, #0
	strh r0, [r7, #0xc]
	adds r5, #2
	adds r4, r4, r5
	ldrh r0, [r4]
	strb r0, [r7, #0x1a]
	movs r0, #0x80
	strh r0, [r7, #0x14]
	str r6, [r7, #8]
	strh r6, [r7, #0xe]
	movs r1, #0x78
	strh r1, [r7, #0x10]
	movs r0, #0x50
	strh r0, [r7, #0x12]
	strh r6, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	movs r1, #0
	strb r1, [r7, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	str r0, [r7, #0x20]
	adds r7, #0x28
	ldr r5, _08055F24 @ =gUnknown_080D1CD2
	mov r1, sb
	lsls r4, r1, #1
	add r4, sb
	lsls r4, r4, #1
	adds r0, r5, #4
	adds r0, r4, r0
	ldrh r0, [r0]
	bl VramMalloc
	mov r1, sl
	str r0, [r1, #0x34]
	adds r0, r4, r5
	ldrh r0, [r0]
	strh r0, [r7, #0xc]
	adds r5, #2
	adds r4, r4, r5
	ldrh r0, [r4]
	strb r0, [r7, #0x1a]
	movs r0, #0x80
	strh r0, [r7, #0x14]
	str r6, [r7, #8]
	strh r6, [r7, #0xe]
	movs r1, #0x78
	strh r1, [r7, #0x10]
	movs r0, #0x28
	strh r0, [r7, #0x12]
	strh r6, [r7, #0x16]
	subs r0, #0x29
	strb r0, [r7, #0x1b]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	movs r1, #0
	strb r1, [r7, #0x1f]
	mov r0, r8
	str r0, [r7, #0x20]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08055F1C: .4byte gStageData
_08055F20: .4byte gUnknown_080D1CE4
_08055F24: .4byte gUnknown_080D1CD2

.if 0
.endif

.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start sub_805EB68
sub_805EB68: @ 0x0805EB68
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0xe]
	adds r0, #0x20
	strh r0, [r4, #0xe]
	lsls r1, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x14
	cmp r1, r0
	bhi _0805EBAC
	ldr r3, [r4, #0x1c]
	ldr r2, _0805EBA8 @ =gSineTable
	lsrs r0, r1, #0x14
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #6
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r0, r1
	ldr r1, [r3]
	subs r1, r1, r0
	str r1, [r4, #0x24]
	ldr r0, [r4, #0x18]
	ldr r0, [r0]
	str r0, [r4, #0x20]
	movs r0, #0
	b _0805EBAE
	.align 2, 0
_0805EBA8: .4byte gSineTable
_0805EBAC:
	movs r0, #1
_0805EBAE:
	pop {r4}
	pop {r1}
	bx r1
.if 0
.endif

	thumb_func_start sub_805EBB4
sub_805EBB4: @ 0x0805EBB4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x28
	ldr r2, [r0, #0x20]
	asrs r2, r2, #8
	ldrh r1, [r0, #0xa]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _0805EBF4 @ =gCamera
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #0x24]
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
_0805EBF4: .4byte gCamera
    
    thumb_func_start TaskDestructor_JugglingPin
TaskDestructor_JugglingPin:
    bx lr
    .align 2 , 0

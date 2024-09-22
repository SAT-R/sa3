.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

@ DrawPlatform?
	thumb_func_start sub_804DDD4
sub_804DDD4: @ 0x0804DDD4
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	ldr r4, [r0, #0xc]
	asrs r4, r4, #8
	ldr r2, _0804DE28 @ =gCamera
	ldr r1, [r2]
	subs r4, r4, r1
	strh r4, [r5, #0x10]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, [r0, #0x10]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r5, #0x12]
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	lsls r4, r4, #0x10
	movs r0, #0xf0
	lsls r0, r0, #0xd
	adds r4, r4, r0
	ldr r0, _0804DE2C @ =0x012D0000
	cmp r4, r0
	bhi _0804DE20
	lsls r0, r6, #0x10
	asrs r1, r0, #0x10
	movs r0, #0x20
	rsbs r0, r0, #0
	cmp r1, r0
	ble _0804DE20
	cmp r1, #0xbf
	bgt _0804DE20
	adds r0, r5, #0
	bl DisplaySprite
_0804DE20:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804DE28: .4byte gCamera
_0804DE2C: .4byte 0x012D0000

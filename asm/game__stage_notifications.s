.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_80239A8
sub_80239A8: @ 0x080239A8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r7, [r5]
	ldrb r6, [r5, #6]
	cmp r6, #0
	beq _08023A62
	ldrb r0, [r5, #0x1e]
	cmp r0, #0
	beq _080239C0
	subs r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_080239C0:
	movs r4, #0
	cmp r4, r6
	bhs _080239F4
_080239C6:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x2c
	adds r1, r5, r0
	movs r0, #0xd
	ldrsb r0, [r5, r0]
	ldrh r2, [r1, #0x10]
	adds r0, r0, r2
	strh r0, [r1, #0x10]
	movs r0, #0xe
	ldrsb r0, [r5, r0]
	ldrh r2, [r1, #0x12]
	adds r0, r0, r2
	strh r0, [r1, #0x12]
	adds r0, r1, #0
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r6
	blo _080239C6
_080239F4:
	ldrb r0, [r5, #0x1e]
	cmp r0, #0
	beq _08023A62
	subs r0, #1
	strb r0, [r5, #0x1e]
	ldrb r0, [r5, #0x1d]
	cmp r0, #1
	beq _08023A24
	cmp r0, #1
	bgt _08023A0E
	cmp r0, #0
	beq _08023A18
	b _08023A62
_08023A0E:
	cmp r0, #2
	beq _08023A34
	cmp r0, #3
	beq _08023A4C
	b _08023A62
_08023A18:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x2c
	adds r1, r5, r0
	b _08023A44
_08023A24:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x2c
	adds r1, r5, r0
	ldrh r0, [r1, #0x12]
	adds r0, #2
	b _08023A42
_08023A34:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x2c
	adds r1, r5, r0
	ldrh r0, [r1, #0x12]
	subs r0, #2
_08023A42:
	strh r0, [r1, #0x12]
_08023A44:
	adds r0, r1, #0
	bl DisplaySprite
	b _08023A62
_08023A4C:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x2c
	adds r1, r5, r0
	ldrh r0, [r1, #0x10]
	adds r0, #2
	strh r0, [r1, #0x10]
	adds r0, r1, #0
	bl DisplaySprite
_08023A62:
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _08023A82
	cmp r7, #0
	beq _08023A82
	ldrh r0, [r5, #0x12]
	adds r0, #0xa
	strh r0, [r7, #0x10]
	ldrh r0, [r5, #0x14]
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_08023A82:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0


.syntax unified
.text
	push {r4, lr}
	adds r4, r0, #0		@ r4 = enemy
	movs r1, #0xa0
	adds r2, r4, #0
	adds r2, #0x4c
	ldrh r0, [r4, #8]
	cmp r0, #0x2c
	bls _0805A8C4
	cmp r0, #0x54
	blo _0805A8CC
_0805A8C4:
	cmp r0, #0xac
	bls _0805A8D2
	cmp r0, #0xd4
	bhs _0805A8D2
_0805A8CC:
	ldrh r0, [r4, #8]
	adds r0, #3
	b _0805A8D6
_0805A8D2:
	ldrh r0, [r4, #8]
	adds r0, #1
_0805A8D6:
	strh r0, [r4, #8]
	ldrh r0, [r4, #8]
	cmp r0, #0xe0
	bls _0805A8E2
	movs r0, #0x20
	strh r0, [r4, #8]
_0805A8E2:
	ldrh r0, [r4, #8]
	cmp r0, #0x60
	bls _0805A8EE
	cmp r0, r1
	bhs _0805A8EE
	strh r1, [r4, #8]
_0805A8EE:
	ldrh r1, [r4, #8]
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3e
	bls _0805A906
	adds r0, r1, #0
	subs r0, #0xc1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3e
	bhi _0805A910
_0805A906:
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _0805A916
_0805A910:
	ldr r0, [r2, #8]
	ldr r1, _0805A958 @ =0xFFFFFBFF
	ands r0, r1
_0805A916:
	str r0, [r2, #8]
	ldr r3, _0805A95C @ =gSineTable
	ldrb r2, [r4, #8]
	lsls r0, r2, #3
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #5
	ldr r1, [r4, #0x14]
	adds r1, r1, r0
	str r1, [r4, #0x1c]
	lsls r2, r2, #3
	adds r2, r2, r3
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r1, r0, #5
	cmp r1, #0
	bge _0805A946
	rsbs r1, r1, #0
_0805A946:
	ldr r0, [r4, #0x18]
	adds r0, r0, r1
	ldr r1, _0805A960 @ =0xFFFFF600
	adds r0, r0, r1
	str r0, [r4, #0x20]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805A958: .4byte 0xFFFFFBFF
_0805A95C: .4byte gSineTable
_0805A960: .4byte 0xFFFFF600

.syntax divided

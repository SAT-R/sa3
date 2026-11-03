
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x98
	mov r8, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x20]
	mov r1, sp
	ldr r0, _08082E64 @ =gUnknown_080D5E64
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	ldr r5, [sp, #0x20]
	cmp r5, #6
	bls _08082E5A
	bl _08083A1C
_08082E5A:
	lsls r0, r5, #2
	ldr r1, _08082E68 @ =_08082E6C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08082E64: .4byte gUnknown_080D5E64
_08082E68: .4byte _08082E6C
_08082E6C: @ jump table
	.4byte _08082E88 @ case 0
	.4byte _08083500 @ case 1
	.4byte _080835FC @ case 2
	.4byte _08082F46 @ case 3
	.4byte _0808325C @ case 4
	.4byte _0808371C @ case 5
	.4byte _080838F0 @ case 6
_08082E88:
	movs r6, #0
	str r6, [sp, #0x24]
	movs r7, #0x80
	mov r0, sp
	adds r0, #4
	str r0, [sp, #0x8c]
	movs r1, #0x86
	lsls r1, r1, #1
	add r1, r8
	str r1, [sp, #0x2c]
	movs r2, #0x9c
	add r2, r8
	mov sb, r2
	movs r3, #0x88
	lsls r3, r3, #1
	add r3, r8
	str r3, [sp, #0x30]
	mov r5, r8
	adds r5, #0xa0
	movs r4, #0xb6
	lsls r4, r4, #1
	add r4, r8
	mov ip, r4
	movs r6, #0xb8
	lsls r6, r6, #1
	add r6, r8
	mov sl, r6
_08082EBE:
	ldr r0, [sp, #0x24]
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #3
	ldr r1, [sp, #0x2c]
	adds r4, r1, r2
	lsls r3, r0, #3
	mov r6, sp
	adds r0, r6, r3
	ldr r1, [r0]
	lsls r1, r1, #8
	mov r6, sb
	ldr r0, [r6]
	adds r0, r0, r1
	str r0, [r4]
	ldr r0, [sp, #0x30]
	adds r4, r0, r2
	ldr r1, [sp, #0x8c]
	adds r3, r1, r3
	ldr r1, [r3]
	lsls r1, r1, #8
	ldr r0, [r5]
	adds r0, r0, r1
	str r0, [r4]
	add r2, r8
	movs r3, #0x90
	lsls r3, r3, #1
	adds r2, r2, r3
	strh r7, [r2]
	movs r6, #0
	ldr r4, [sp, #0x24]
	lsls r0, r4, #4
	adds r4, #1
	str r4, [sp, #0x90]
	ldr r1, [sp, #0x24]
	subs r0, r0, r1
	lsls r3, r0, #3
_08082F08:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r3
	mov r4, ip
	adds r2, r4, r0
	mov r4, sb
	ldr r1, [r4]
	str r1, [r2]
	add r0, sl
	ldr r1, [r5]
	str r1, [r0]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #5
	bls _08082F08
	ldr r6, [sp, #0x90]
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x24]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r7, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r2, [sp, #0x24]
	cmp r2, #3
	bls _08082EBE
	bl _08083A1C
_08082F46:
	movs r3, #0
	str r3, [sp, #0x24]
	movs r4, #0xa8
	lsls r4, r4, #1
	add r4, r8
	str r4, [sp, #0x34]
	movs r5, #0x86
	lsls r5, r5, #1
	add r5, r8
	str r5, [sp, #0x38]
	movs r6, #0x9c
	lsls r6, r6, #1
	add r6, r8
	str r6, [sp, #0x48]
_08082F62:
	movs r0, #0
	str r0, [sp, #0x28]
	ldr r1, [sp, #0x24]
	lsls r7, r1, #8
	movs r0, #0x80
	orrs r7, r0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r7, r2
	lsls r0, r0, #1
	ldr r3, _08082FF0 @ =gSineTable
	adds r0, r0, r3
	movs r4, #0
	ldrsh r1, [r0, r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	cmp r0, #0
	bge _08082F8A
	adds r0, #0x3f
_08082F8A:
	asrs r0, r0, #6
	mov sl, r0
	lsls r0, r7, #1
	ldr r5, _08082FF0 @ =gSineTable
	adds r0, r0, r5
	movs r6, #0
	ldrsh r1, [r0, r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	cmp r0, #0
	bge _08082FA4
	adds r0, #0x3f
_08082FA4:
	asrs r0, r0, #6
	mov sb, r0
	ldr r0, [sp, #0x24]
	cmp r0, #1
	bne _08082FB0
	b _0808310A
_08082FB0:
	adds r0, #1
	str r0, [sp, #0x90]
	ldr r1, [sp, #0x24]
	cmp r1, #2
	beq _08082FBC
	b _0808324C
_08082FBC:
	mov r0, r8
	adds r0, #0xe2
	ldrb r0, [r0]
	cmp r0, #0
	bne _08083006
	mov r2, r8
	adds r2, #0xbc
	ldrb r1, [r2]
	ldr r3, _08082FF4 @ =gUnknown_080D5D64
	adds r0, r1, r3
	ldrb r5, [r0]
	lsls r0, r5, #8
	rsbs r5, r0, #0
	ldr r4, _08082FF8 @ =gUnknown_080D5DE4
	adds r0, r1, r4
	ldrb r4, [r0]
	lsls r0, r4, #8
	rsbs r4, r0, #0
	str r2, [sp, #0x80]
	cmp r1, #0xc
	bhi _08082FFC
	movs r0, #0xa0
	lsls r0, r0, #2
	ldr r6, [sp, #0x34]
	strh r0, [r6]
	b _0808302E
	.align 2, 0
_08082FF0: .4byte gSineTable
_08082FF4: .4byte gUnknown_080D5D64
_08082FF8: .4byte gUnknown_080D5DE4
_08082FFC:
	movs r0, #0x80
	lsls r0, r0, #2
	ldr r1, [sp, #0x34]
	strh r0, [r1]
	b _0808302E
_08083006:
	mov r0, r8
	adds r0, #0xc6
	ldrb r1, [r0]
	ldr r2, _080830D0 @ =gUnknown_080D5D64
	adds r0, r1, r2
	ldrb r5, [r0]
	lsls r0, r5, #8
	rsbs r5, r0, #0
	ldr r3, _080830D4 @ =gUnknown_080D5DE4
	adds r1, r1, r3
	ldrb r4, [r1]
	lsls r0, r4, #8
	rsbs r4, r0, #0
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r6, [sp, #0x34]
	strh r0, [r6]
	mov r1, r8
	adds r1, #0xbc
	str r1, [sp, #0x80]
_0808302E:
	ldr r2, [sp, #0x24]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #3
	ldr r3, [sp, #0x38]
	adds r2, r3, r1
	mov r3, r8
	adds r3, #0x9c
	ldr r0, [r3]
	add r0, sl
	adds r0, r0, r5
	str r0, [r2]
	movs r2, #0x88
	lsls r2, r2, #1
	add r2, r8
	adds r2, r2, r1
	mov r1, r8
	adds r1, #0xa0
	ldr r0, [r1]
	add r0, sb
	adds r0, r0, r4
	str r0, [r2]
	ldr r0, [sp, #0x28]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x28]
	movs r6, #0
	ldr r4, [sp, #0x24]
	lsls r0, r4, #4
	adds r4, #1
	str r4, [sp, #0x90]
	ldr r5, [sp, #0x24]
	subs r0, r0, r5
	lsls r0, r0, #3
	str r0, [sp, #0x3c]
	movs r0, #0xb6
	lsls r0, r0, #1
	add r0, r8
	str r0, [sp, #0x40]
	movs r2, #0xb8
	lsls r2, r2, #1
	add r2, r8
	str r2, [sp, #0x44]
	mov ip, r3
	adds r7, r1, #0
_0808308A:
	ldr r3, [sp, #0x80]
	ldr r4, [sp, #0x28]
	adds r1, r3, r4
	ldrb r0, [r1]
	cmp r0, #0
	beq _080830D8
	adds r1, r0, #0
	ldr r5, _080830D0 @ =gUnknown_080D5D64
	adds r0, r1, r5
	ldrb r5, [r0]
	lsls r3, r5, #8
	ldr r0, _080830D4 @ =gUnknown_080D5DE4
	adds r1, r1, r0
	ldrb r4, [r1]
	lsls r4, r4, #8
	lsls r1, r6, #2
	adds r1, r1, r6
	lsls r1, r1, #2
	ldr r2, [sp, #0x3c]
	adds r1, r1, r2
	ldr r5, [sp, #0x40]
	adds r2, r5, r1
	mov r5, ip
	ldr r0, [r5]
	add r0, sl
	subs r0, r0, r3
	str r0, [r2]
	ldr r0, [sp, #0x44]
	adds r1, r0, r1
	ldr r0, [r7]
	add r0, sb
	subs r0, r0, r4
	str r0, [r1]
	b _080830F4
	.align 2, 0
_080830D0: .4byte gUnknown_080D5D64
_080830D4: .4byte gUnknown_080D5DE4
_080830D8:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #2
	ldr r1, [sp, #0x3c]
	adds r0, r0, r1
	ldr r3, [sp, #0x40]
	adds r2, r3, r0
	mov r4, ip
	ldr r1, [r4]
	str r1, [r2]
	ldr r5, [sp, #0x44]
	adds r0, r5, r0
	ldr r1, [r7]
	str r1, [r0]
_080830F4:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r0, [sp, #0x28]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x28]
	cmp r6, #5
	bls _0808308A
	b _0808324C
_0808310A:
	mov r0, r8
	adds r0, #0xe2
	ldrb r0, [r0]
	cmp r0, #0
	bne _0808314E
	mov r2, r8
	adds r2, #0xbc
	ldrb r1, [r2]
	ldr r6, _0808313C @ =gUnknown_080D5D64
	adds r0, r1, r6
	ldrb r5, [r0]
	lsls r0, r5, #8
	rsbs r5, r0, #0
	ldr r3, _08083140 @ =gUnknown_080D5DE4
	adds r0, r1, r3
	ldrb r4, [r0]
	lsls r4, r4, #8
	str r2, [sp, #0x80]
	cmp r1, #0xc
	bhi _08083144
	movs r0, #0xc0
	lsls r0, r0, #1
	ldr r6, [sp, #0x48]
	strh r0, [r6]
	b _08083174
	.align 2, 0
_0808313C: .4byte gUnknown_080D5D64
_08083140: .4byte gUnknown_080D5DE4
_08083144:
	movs r0, #0x80
	lsls r0, r0, #2
	ldr r1, [sp, #0x48]
	strh r0, [r1]
	b _08083174
_0808314E:
	mov r0, r8
	adds r0, #0xc5
	ldrb r1, [r0]
	ldr r2, _08083214 @ =gUnknown_080D5D64
	adds r0, r1, r2
	ldrb r5, [r0]
	lsls r0, r5, #8
	rsbs r5, r0, #0
	ldr r3, _08083218 @ =gUnknown_080D5DE4
	adds r1, r1, r3
	ldrb r4, [r1]
	lsls r4, r4, #8
	movs r0, #0xc0
	lsls r0, r0, #2
	ldr r6, [sp, #0x48]
	strh r0, [r6]
	mov r0, r8
	adds r0, #0xbc
	str r0, [sp, #0x80]
_08083174:
	ldr r2, [sp, #0x24]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #3
	ldr r3, [sp, #0x38]
	adds r2, r3, r1
	mov r3, r8
	adds r3, #0x9c
	ldr r0, [r3]
	add r0, sl
	adds r0, r0, r5
	str r0, [r2]
	movs r2, #0x88
	lsls r2, r2, #1
	add r2, r8
	adds r2, r2, r1
	mov r1, r8
	adds r1, #0xa0
	ldr r0, [r1]
	add r0, sb
	adds r0, r0, r4
	str r0, [r2]
	ldr r0, [sp, #0x28]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x28]
	movs r6, #0
	ldr r4, [sp, #0x24]
	lsls r0, r4, #4
	adds r4, #1
	str r4, [sp, #0x90]
	ldr r5, [sp, #0x24]
	subs r0, r0, r5
	lsls r0, r0, #3
	str r0, [sp, #0x4c]
	movs r0, #0xb6
	lsls r0, r0, #1
	add r0, r8
	str r0, [sp, #0x50]
	movs r2, #0xb8
	lsls r2, r2, #1
	add r2, r8
	str r2, [sp, #0x54]
	mov ip, r3
	adds r7, r1, #0
_080831D0:
	ldr r3, [sp, #0x80]
	ldr r4, [sp, #0x28]
	adds r1, r3, r4
	ldrb r0, [r1]
	cmp r0, #0
	beq _0808321C
	adds r1, r0, #0
	ldr r5, _08083214 @ =gUnknown_080D5D64
	adds r0, r1, r5
	ldrb r5, [r0]
	lsls r3, r5, #8
	ldr r0, _08083218 @ =gUnknown_080D5DE4
	adds r1, r1, r0
	ldrb r4, [r1]
	lsls r4, r4, #8
	lsls r1, r6, #2
	adds r1, r1, r6
	lsls r1, r1, #2
	ldr r2, [sp, #0x4c]
	adds r1, r1, r2
	ldr r5, [sp, #0x50]
	adds r2, r5, r1
	mov r5, ip
	ldr r0, [r5]
	add r0, sl
	subs r0, r0, r3
	str r0, [r2]
	ldr r0, [sp, #0x54]
	adds r1, r0, r1
	ldr r0, [r7]
	add r0, sb
	adds r0, r0, r4
	str r0, [r1]
	b _08083238
	.align 2, 0
_08083214: .4byte gUnknown_080D5D64
_08083218: .4byte gUnknown_080D5DE4
_0808321C:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #2
	ldr r1, [sp, #0x4c]
	adds r0, r0, r1
	ldr r3, [sp, #0x50]
	adds r2, r3, r0
	mov r4, ip
	ldr r1, [r4]
	str r1, [r2]
	ldr r5, [sp, #0x54]
	adds r0, r5, r0
	ldr r1, [r7]
	str r1, [r0]
_08083238:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r0, [sp, #0x28]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x28]
	cmp r6, #5
	bls _080831D0
_0808324C:
	ldr r6, [sp, #0x90]
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x24]
	cmp r0, #3
	bhi _0808325A
	b _08082F62
_0808325A:
	b _08083A1C
_0808325C:
	movs r0, #0
	str r0, [sp, #0x24]
_08083260:
	ldr r1, [sp, #0x24]
	lsls r7, r1, #8
	movs r0, #0x80
	orrs r7, r0
	cmp r1, #0
	bne _0808326E
	b _080833A0
_0808326E:
	adds r1, #1
	str r1, [sp, #0x90]
	ldr r2, [sp, #0x24]
	cmp r2, #3
	beq _0808327A
	b _080834EA
_0808327A:
	mov r0, r8
	adds r0, #0xd4
	ldr r3, [r0]
	cmp r3, #0
	bne _08083286
	b _080834EA
_08083286:
	ldr r2, _08083368 @ =gSineTable
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r7, r4
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r5, #0
	ldrsh r1, [r0, r5]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	cmp r0, #0
	bge _080832A2
	adds r0, #0x3f
_080832A2:
	asrs r0, r0, #6
	mov sl, r0
	lsls r0, r7, #1
	ldr r6, _08083368 @ =gSineTable
	adds r0, r0, r6
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	cmp r0, #0
	bge _080832BC
	adds r0, #0x3f
_080832BC:
	asrs r0, r0, #6
	mov sb, r0
	mov r0, r8
	adds r0, #0x9c
	ldr r0, [r0]
	add sl, r0
	mov r0, r8
	adds r0, #0xa0
	ldr r0, [r0]
	add sb, r0
	adds r0, r3, #0
	movs r1, #6
	bl __divsi3
	mov ip, r0
	movs r7, #0xb0
	lsls r7, r7, #2
	mov r0, r8
	adds r0, #0xe4
	ldr r0, [r0]
	asrs r0, r0, #8
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r6, #6
	movs r4, #6
	str r4, [sp, #0x94]
	lsrs r0, r0, #0x12
	str r0, [sp, #0x58]
_080832F4:
	subs r2, r6, #1
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	movs r5, #0xb4
	lsls r5, r5, #1
	adds r1, r1, r5
	movs r0, #0xb6
	lsls r0, r0, #1
	add r0, r8
	adds r0, r0, r1
	mov r4, sl
	str r4, [r0]
	movs r0, #0xb8
	lsls r0, r0, #1
	add r0, r8
	adds r0, r0, r1
	mov r5, sb
	str r5, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r7, r1
	lsls r0, r0, #1
	ldr r4, _08083368 @ =gSineTable
	adds r0, r0, r4
	movs r5, #0
	ldrsh r0, [r0, r5]
	mov r1, ip
	muls r1, r0, r1
	adds r0, r1, #0
	cmp r0, #0
	bge _08083338
	ldr r4, _0808336C @ =0x00003FFF
	adds r0, r0, r4
_08083338:
	asrs r5, r0, #0xe
	lsls r0, r7, #1
	ldr r1, _08083368 @ =gSineTable
	adds r0, r0, r1
	movs r4, #0
	ldrsh r0, [r0, r4]
	mov r1, ip
	muls r1, r0, r1
	adds r0, r1, #0
	cmp r0, #0
	bge _08083352
	ldr r4, _0808336C @ =0x00003FFF
	adds r0, r0, r4
_08083352:
	asrs r4, r0, #0xe
	add sl, r5
	add sb, r4
	cmp r6, #1
	bne _08083374
	ldr r5, [sp, #0x58]
	subs r7, r7, r5
	ldr r6, _08083370 @ =0x000003FF
	ands r7, r6
	b _08083392
	.align 2, 0
_08083368: .4byte gSineTable
_0808336C: .4byte 0x00003FFF
_08083370: .4byte 0x000003FF
_08083374:
	cmp r6, #1
	blt _0808338C
	cmp r6, #3
	bgt _0808338C
	ldr r0, [sp, #0x58]
	adds r7, r7, r0
	ldr r1, _08083388 @ =0x000003FF
	ands r7, r1
	b _08083392
	.align 2, 0
_08083388: .4byte 0x000003FF
_0808338C:
	subs r7, r7, r3
	ldr r4, _0808339C @ =0x000003FF
	ands r7, r4
_08083392:
	lsls r0, r2, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0
	bne _080832F4
	b _080834BE
	.align 2, 0
_0808339C: .4byte 0x000003FF
_080833A0:
	mov r0, r8
	adds r0, #0xd8
	ldr r3, [r0]
	movs r6, #1
	str r6, [sp, #0x90]
	cmp r3, #0
	bne _080833B0
	b _080834EA
_080833B0:
	ldr r2, _0808348C @ =gSineTable
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r7, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r4, #0
	ldrsh r1, [r0, r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	cmp r0, #0
	bge _080833CC
	adds r0, #0x3f
_080833CC:
	asrs r0, r0, #6
	mov sl, r0
	lsls r0, r7, #1
	ldr r5, _0808348C @ =gSineTable
	adds r0, r0, r5
	movs r6, #0
	ldrsh r1, [r0, r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	cmp r0, #0
	bge _080833E6
	adds r0, #0x3f
_080833E6:
	asrs r0, r0, #6
	mov sb, r0
	mov r0, r8
	adds r0, #0x9c
	ldr r0, [r0]
	add sl, r0
	mov r0, r8
	adds r0, #0xa0
	ldr r0, [r0]
	add sb, r0
	adds r0, r3, #0
	movs r1, #6
	bl __divsi3
	mov ip, r0
	movs r7, #0xa0
	lsls r7, r7, #1
	mov r0, r8
	adds r0, #0xe8
	ldr r0, [r0]
	asrs r0, r0, #8
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r6, #6
	movs r1, #0
	str r1, [sp, #0x94]
	lsrs r0, r0, #0x12
	str r0, [sp, #0x5c]
_0808341E:
	subs r2, r6, #1
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, #0
	movs r0, #0xb6
	lsls r0, r0, #1
	add r0, r8
	adds r0, r0, r1
	mov r4, sl
	str r4, [r0]
	movs r0, #0xb8
	lsls r0, r0, #1
	add r0, r8
	adds r0, r0, r1
	mov r5, sb
	str r5, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r7, r1
	lsls r0, r0, #1
	ldr r4, _0808348C @ =gSineTable
	adds r0, r0, r4
	movs r5, #0
	ldrsh r0, [r0, r5]
	mov r1, ip
	muls r1, r0, r1
	adds r0, r1, #0
	cmp r0, #0
	bge _0808345E
	ldr r4, _08083490 @ =0x00003FFF
	adds r0, r0, r4
_0808345E:
	asrs r5, r0, #0xe
	lsls r0, r7, #1
	ldr r1, _0808348C @ =gSineTable
	adds r0, r0, r1
	movs r4, #0
	ldrsh r0, [r0, r4]
	mov r1, ip
	muls r1, r0, r1
	adds r0, r1, #0
	cmp r0, #0
	bge _08083478
	ldr r4, _08083490 @ =0x00003FFF
	adds r0, r0, r4
_08083478:
	asrs r4, r0, #0xe
	add sl, r5
	add sb, r4
	cmp r6, #1
	bne _08083498
	ldr r5, [sp, #0x5c]
	adds r7, r7, r5
	ldr r6, _08083494 @ =0x000003FF
	ands r7, r6
	b _080834B6
	.align 2, 0
_0808348C: .4byte gSineTable
_08083490: .4byte 0x00003FFF
_08083494: .4byte 0x000003FF
_08083498:
	cmp r6, #1
	blt _080834B0
	cmp r6, #3
	bgt _080834B0
	ldr r0, [sp, #0x5c]
	subs r7, r7, r0
	ldr r1, _080834AC @ =0x000003FF
	ands r7, r1
	b _080834B6
	.align 2, 0
_080834AC: .4byte 0x000003FF
_080834B0:
	adds r7, r7, r3
	ldr r4, _080834FC @ =0x000003FF
	ands r7, r4
_080834B6:
	lsls r0, r2, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0
	bne _0808341E
_080834BE:
	ldr r5, [sp, #0x94]
	ldr r6, [sp, #0x24]
	adds r1, r5, r6
	lsls r1, r1, #3
	mov r2, r8
	adds r0, r2, r1
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r0, r3
	strh r7, [r0]
	movs r0, #0x86
	lsls r0, r0, #1
	add r0, r8
	adds r0, r0, r1
	mov r4, sl
	str r4, [r0]
	movs r0, #0x88
	lsls r0, r0, #1
	add r0, r8
	adds r0, r0, r1
	mov r5, sb
	str r5, [r0]
_080834EA:
	ldr r6, [sp, #0x90]
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x24]
	cmp r0, #3
	bhi _080834F8
	b _08083260
_080834F8:
	b _08083A1C
	.align 2, 0
_080834FC: .4byte 0x000003FF
_08083500:
	mov r0, r8
	adds r0, #0xe3
	ldrb r0, [r0]
	str r0, [sp, #0x24]
	ldr r4, _080835F4 @ =gSineTable
	lsls r2, r0, #8
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r0, r2, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	cmp r0, #0
	bge _08083526
	adds r0, #0x3f
_08083526:
	asrs r0, r0, #6
	mov sl, r0
	adds r0, r2, #0
	adds r0, #0x80
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r5, #0
	ldrsh r1, [r0, r5]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	cmp r0, #0
	bge _08083542
	adds r0, #0x3f
_08083542:
	asrs r0, r0, #6
	mov sb, r0
	mov r0, r8
	adds r0, #0x9c
	ldr r0, [r0]
	add sl, r0
	mov r0, r8
	adds r0, #0xa0
	ldr r0, [r0]
	add sb, r0
	mov r0, r8
	adds r0, #0xd4
	ldr r0, [r0]
	movs r1, #6
	bl __divsi3
	mov ip, r0
	mov r1, r8
	adds r1, #0xcc
	ldrh r2, [r1]
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r2, r6
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r3, #0
	ldrsh r0, [r0, r3]
	mov r5, ip
	muls r5, r0, r5
	adds r0, r5, #0
	str r1, [sp, #0x84]
	cmp r0, #0
	bge _08083588
	ldr r6, _080835F8 @ =0x00003FFF
	adds r0, r0, r6
_08083588:
	asrs r5, r0, #0xe
	lsls r0, r2, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	mov r2, ip
	muls r2, r0, r2
	adds r0, r2, #0
	cmp r0, #0
	bge _080835A0
	ldr r3, _080835F8 @ =0x00003FFF
	adds r0, r0, r3
_080835A0:
	asrs r4, r0, #0xe
	movs r6, #6
	ldr r0, [sp, #0x24]
	lsls r0, r0, #1
	str r0, [sp, #0x94]
	ldr r1, [sp, #0x24]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	mov ip, r0
	movs r7, #0xb6
	lsls r7, r7, #1
	add r7, r8
	movs r3, #0xb8
	lsls r3, r3, #1
	add r3, r8
_080835C0:
	subs r0, r6, #1
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	add r1, ip
	adds r2, r7, r1
	mov r6, sl
	str r6, [r2]
	adds r1, r3, r1
	mov r2, sb
	str r2, [r1]
	add sl, r5
	add sb, r4
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0
	bne _080835C0
	ldr r3, [sp, #0x94]
	ldr r4, [sp, #0x24]
	adds r1, r3, r4
	lsls r1, r1, #3
	mov r5, r8
	adds r0, r5, r1
	ldr r6, [sp, #0x84]
	b _080836F0
	.align 2, 0
_080835F4: .4byte gSineTable
_080835F8: .4byte 0x00003FFF
_080835FC:
	mov r0, r8
	adds r0, #0xe3
	ldrb r0, [r0]
	str r0, [sp, #0x24]
	ldr r4, _08083714 @ =gSineTable
	lsls r2, r0, #8
	movs r6, #0xc0
	lsls r6, r6, #1
	adds r0, r2, r6
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	cmp r0, #0
	bge _08083622
	adds r0, #0x3f
_08083622:
	asrs r0, r0, #6
	mov sl, r0
	adds r0, r2, #0
	adds r0, #0x80
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r5, #0
	ldrsh r1, [r0, r5]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	cmp r0, #0
	bge _0808363E
	adds r0, #0x3f
_0808363E:
	asrs r0, r0, #6
	mov sb, r0
	mov r0, r8
	adds r0, #0x9c
	ldr r0, [r0]
	add sl, r0
	mov r0, r8
	adds r0, #0xa0
	ldr r0, [r0]
	add sb, r0
	mov r0, r8
	adds r0, #0xd4
	ldr r0, [r0]
	movs r1, #6
	bl __divsi3
	mov ip, r0
	mov r0, r8
	adds r0, #0xcc
	ldrh r1, [r0]
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r1, r6
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	mov r3, ip
	muls r3, r0, r3
	adds r0, r3, #0
	cmp r0, #0
	bge _08083682
	ldr r5, _08083718 @ =0x00003FFF
	adds r0, r0, r5
_08083682:
	asrs r5, r0, #0xe
	lsls r0, r1, #1
	adds r0, r0, r4
	movs r6, #0
	ldrsh r0, [r0, r6]
	mov r1, ip
	muls r1, r0, r1
	adds r0, r1, #0
	cmp r0, #0
	bge _0808369A
	ldr r2, _08083718 @ =0x00003FFF
	adds r0, r0, r2
_0808369A:
	asrs r4, r0, #0xe
	movs r6, #6
	ldr r3, [sp, #0x24]
	lsls r3, r3, #1
	str r3, [sp, #0x94]
	ldr r1, [sp, #0x24]
	lsls r0, r1, #4
	mov r2, r8
	adds r2, #0xce
	str r2, [sp, #0x88]
	subs r0, r0, r1
	lsls r0, r0, #3
	mov ip, r0
	movs r7, #0xb6
	lsls r7, r7, #1
	add r7, r8
	movs r3, #0xb8
	lsls r3, r3, #1
	add r3, r8
_080836C0:
	subs r0, r6, #1
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	add r1, ip
	adds r2, r7, r1
	mov r6, sl
	str r6, [r2]
	adds r1, r3, r1
	mov r2, sb
	str r2, [r1]
	add sl, r5
	add sb, r4
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0
	bne _080836C0
	ldr r3, [sp, #0x94]
	ldr r4, [sp, #0x24]
	adds r1, r3, r4
	lsls r1, r1, #3
	mov r5, r8
	adds r0, r5, r1
	ldr r6, [sp, #0x88]
_080836F0:
	ldrh r2, [r6]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r0, r3
	strh r2, [r0]
	movs r0, #0x86
	lsls r0, r0, #1
	add r0, r8
	adds r0, r0, r1
	mov r4, sl
	str r4, [r0]
	movs r0, #0x88
	lsls r0, r0, #1
	add r0, r8
	adds r0, r0, r1
	mov r5, sb
	str r5, [r0]
	b _08083A1C
	.align 2, 0
_08083714: .4byte gSineTable
_08083718: .4byte 0x00003FFF
_0808371C:
	mov r0, r8
	adds r0, #0xb8
	ldrh r7, [r0]
	adds r7, #0x80
	ldr r6, _080837F4 @ =0x000003FF
	adds r0, r6, #0
	ands r7, r0
	movs r0, #0
	str r0, [sp, #0x24]
	mov r1, r8
	adds r1, #0x9c
	str r1, [sp, #0x74]
	mov r2, r8
	adds r2, #0xa0
	str r2, [sp, #0x78]
	mov r3, r8
	adds r3, #0xbb
	str r3, [sp, #0x7c]
	mov r4, r8
	adds r4, #0xbc
	str r4, [sp, #0x60]
_08083746:
	movs r5, #0x80
	lsls r5, r5, #1
	adds r0, r7, r5
	lsls r0, r0, #1
	ldr r6, _080837F8 @ =gSineTable
	adds r0, r0, r6
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	cmp r0, #0
	bge _08083762
	adds r0, #0x3f
_08083762:
	asrs r0, r0, #6
	mov sl, r0
	lsls r0, r7, #1
	ldr r3, _080837F8 @ =gSineTable
	adds r0, r0, r3
	movs r4, #0
	ldrsh r1, [r0, r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	cmp r0, #0
	bge _0808377C
	adds r0, #0x3f
_0808377C:
	asrs r0, r0, #6
	mov sb, r0
	ldr r5, [sp, #0x74]
	ldr r0, [r5]
	add sl, r0
	ldr r6, [sp, #0x78]
	ldr r0, [r6]
	add sb, r0
	movs r6, #6
	adds r3, r7, #0
	ldr r0, [sp, #0x24]
	lsls r0, r0, #1
	str r0, [sp, #0x94]
	ldr r1, [sp, #0x24]
	lsls r0, r1, #4
	adds r1, #1
	str r1, [sp, #0x90]
	ldr r2, [sp, #0x24]
	subs r0, r0, r2
	lsls r0, r0, #3
	str r0, [sp, #0x64]
	movs r4, #0xb6
	lsls r4, r4, #1
	add r4, r8
	str r4, [sp, #0x68]
	movs r5, #0xb8
	lsls r5, r5, #1
	add r5, r8
	mov ip, r5
_080837B6:
	ldr r0, [sp, #0x60]
	adds r1, r0, r6
	ldrb r0, [r1]
	cmp r0, #0
	beq _080837FC
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r3, r2
	lsls r0, r0, #1
	ldr r4, _080837F8 @ =gSineTable
	adds r0, r0, r4
	movs r5, #0
	ldrsh r0, [r0, r5]
	ldrb r1, [r1]
	muls r0, r1, r0
	cmp r0, #0
	bge _080837DA
	adds r0, #0x3f
_080837DA:
	asrs r5, r0, #6
	lsls r0, r3, #1
	ldr r2, _080837F8 @ =gSineTable
	adds r0, r0, r2
	movs r4, #0
	ldrsh r0, [r0, r4]
	muls r0, r1, r0
	cmp r0, #0
	bge _080837EE
	adds r0, #0x3f
_080837EE:
	asrs r4, r0, #6
	b _08083800
	.align 2, 0
_080837F4: .4byte 0x000003FF
_080837F8: .4byte gSineTable
_080837FC:
	movs r5, #0
	movs r4, #0
_08083800:
	add sl, r5
	add sb, r4
	subs r2, r6, #1
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r5, [sp, #0x64]
	adds r0, r0, r5
	ldr r6, [sp, #0x68]
	adds r1, r6, r0
	mov r4, sl
	str r4, [r1]
	add r0, ip
	mov r5, sb
	str r5, [r0]
	adds r3, #0x20
	ldr r6, _08083868 @ =0x000003FF
	adds r0, r6, #0
	ands r3, r0
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	cmp r6, #0
	bne _080837B6
	ldr r1, [sp, #0x60]
	ldrb r0, [r1]
	cmp r0, #0
	beq _08083870
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r3, r2
	lsls r0, r0, #1
	ldr r4, _0808386C @ =gSineTable
	adds r0, r0, r4
	movs r5, #0
	ldrsh r0, [r0, r5]
	ldrb r1, [r1]
	muls r0, r1, r0
	cmp r0, #0
	bge _08083850
	adds r0, #0x3f
_08083850:
	asrs r5, r0, #6
	lsls r0, r3, #1
	ldr r6, _0808386C @ =gSineTable
	adds r0, r0, r6
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r1, r0
	cmp r0, #0
	bge _08083864
	adds r0, #0x3f
_08083864:
	asrs r4, r0, #6
	b _08083874
	.align 2, 0
_08083868: .4byte 0x000003FF
_0808386C: .4byte gSineTable
_08083870:
	movs r5, #0
	movs r4, #0
_08083874:
	ldr r6, [sp, #0x7c]
	ldrb r0, [r6]
	cmp r0, #0
	bne _08083898
	ldr r1, [sp, #0x60]
	ldrb r0, [r1]
	cmp r0, #0
	bne _08083898
	ldr r2, [sp, #0x94]
	ldr r3, [sp, #0x24]
	adds r0, r2, r3
	lsls r0, r0, #3
	add r0, r8
	movs r6, #0x90
	lsls r6, r6, #1
	adds r0, r0, r6
	strh r7, [r0]
	b _080838AA
_08083898:
	ldr r1, [sp, #0x94]
	ldr r2, [sp, #0x24]
	adds r0, r1, r2
	lsls r0, r0, #3
	add r0, r8
	movs r6, #0x90
	lsls r6, r6, #1
	adds r0, r0, r6
	strh r3, [r0]
_080838AA:
	ldr r0, [sp, #0x94]
	ldr r1, [sp, #0x24]
	adds r2, r0, r1
	lsls r2, r2, #3
	movs r0, #0x86
	lsls r0, r0, #1
	add r0, r8
	adds r0, r0, r2
	mov r3, sl
	adds r1, r3, r5
	str r1, [r0]
	movs r0, #0x88
	lsls r0, r0, #1
	add r0, r8
	adds r0, r0, r2
	mov r5, sb
	adds r1, r5, r4
	str r1, [r0]
	movs r6, #0x80
	lsls r6, r6, #1
	adds r7, r7, r6
	ldr r1, _080838EC @ =0x000003FF
	adds r0, r1, #0
	ands r7, r0
	ldr r2, [sp, #0x90]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x24]
	cmp r0, #3
	bhi _080838E8
	b _08083746
_080838E8:
	b _08083A1C
	.align 2, 0
_080838EC: .4byte 0x000003FF
_080838F0:
	movs r3, #2
	str r3, [sp, #0x24]
	lsls r1, r3, #8
	adds r7, r1, #0
	adds r7, #0x80
	mov r0, r8
	adds r0, #0xd4
	ldr r2, [r0]
	cmp r2, #0
	bne _08083906
	b _08083A1C
_08083906:
	ldr r4, _08083A38 @ =gSineTable
	movs r5, #0xc0
	lsls r5, r5, #1
	adds r0, r1, r5
	lsls r0, r0, #1
	adds r0, r4, r0
	movs r6, #0
	ldrsh r1, [r0, r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	cmp r0, #0
	bge _08083922
	adds r0, #0x3f
_08083922:
	asrs r0, r0, #6
	mov sl, r0
	lsls r0, r7, #1
	adds r0, r4, r0
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	cmp r0, #0
	bge _0808393A
	adds r0, #0x3f
_0808393A:
	asrs r0, r0, #6
	mov sb, r0
	mov r0, r8
	adds r0, #0x9c
	ldr r0, [r0]
	add sl, r0
	mov r0, r8
	adds r0, #0xa0
	ldr r0, [r0]
	add sb, r0
	adds r0, r2, #0
	movs r1, #6
	bl __divsi3
	mov ip, r0
	mov r0, r8
	adds r0, #0xe8
	ldr r0, [r0]
	lsls r0, r0, #8
	lsrs r7, r0, #0x10
	mov r0, r8
	adds r0, #0xe4
	ldr r0, [r0]
	cmp r0, #0
	bge _0808396E
	adds r0, #0xff
_0808396E:
	lsls r0, r0, #8
	lsrs r3, r0, #0x10
	movs r6, #6
	movs r5, #4
	str r5, [sp, #0x94]
	movs r0, #0xb6
	lsls r0, r0, #1
	add r0, r8
	str r0, [sp, #0x6c]
	movs r1, #0xb8
	lsls r1, r1, #1
	add r1, r8
	str r1, [sp, #0x70]
_08083988:
	subs r2, r6, #1
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, #0xf0
	ldr r4, [sp, #0x6c]
	adds r1, r4, r0
	mov r5, sl
	str r5, [r1]
	ldr r6, [sp, #0x70]
	adds r0, r6, r0
	mov r1, sb
	str r1, [r0]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r7, r4
	lsls r0, r0, #1
	ldr r5, _08083A38 @ =gSineTable
	adds r0, r0, r5
	movs r6, #0
	ldrsh r0, [r0, r6]
	mov r1, ip
	muls r1, r0, r1
	adds r0, r1, #0
	cmp r0, #0
	bge _080839C0
	ldr r4, _08083A3C @ =0x00003FFF
	adds r0, r0, r4
_080839C0:
	asrs r5, r0, #0xe
	lsls r0, r7, #1
	ldr r6, _08083A38 @ =gSineTable
	adds r0, r0, r6
	movs r1, #0
	ldrsh r0, [r0, r1]
	mov r4, ip
	muls r4, r0, r4
	adds r0, r4, #0
	cmp r0, #0
	bge _080839DA
	ldr r6, _08083A3C @ =0x00003FFF
	adds r0, r0, r6
_080839DA:
	asrs r4, r0, #0xe
	add sl, r5
	add sb, r4
	adds r7, r7, r3
	ldr r1, _08083A40 @ =0x000003FF
	adds r0, r1, #0
	ands r7, r0
	lsls r0, r2, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0
	bne _08083988
	ldr r2, [sp, #0x94]
	ldr r3, [sp, #0x24]
	adds r1, r2, r3
	lsls r1, r1, #3
	mov r4, r8
	adds r0, r4, r1
	movs r5, #0x90
	lsls r5, r5, #1
	adds r0, r0, r5
	strh r7, [r0]
	movs r0, #0x86
	lsls r0, r0, #1
	add r0, r8
	adds r0, r0, r1
	mov r6, sl
	str r6, [r0]
	movs r0, #0x88
	lsls r0, r0, #1
	add r0, r8
	adds r0, r0, r1
	mov r1, sb
	str r1, [r0]
_08083A1C:
	add r2, sp, #0x20
	ldrb r3, [r2]
	mov r2, r8
	strb r3, [r2, #0xc]
	movs r0, #0
	add sp, #0x98
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08083A38: .4byte gSineTable
_08083A3C: .4byte 0x00003FFF
_08083A40: .4byte 0x000003FF

.syntax divided

.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_808FCF4
sub_808FCF4: @ 0x0808FCF4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldr r1, _0808FD9C @ =gDispCnt
	ldr r2, _0808FDA0 @ =0x00001341
	adds r0, r2, #0
	strh r0, [r1]
	ldr r6, _0808FDA4 @ =gBgCntRegs
	movs r0, #0
	mov r8, r0
	movs r4, #0
	ldr r0, _0808FDA8 @ =0x00000603
	strh r0, [r6]
	ldr r5, _0808FDAC @ =gBgScrollRegs
	strh r4, [r5]
	strh r4, [r5, #2]
	movs r1, #0x83
	lsls r1, r1, #2
	adds r0, r7, r1
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _0808FDB0 @ =0x06003000
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	ldr r1, _0808FDB4 @ =0x0000015D
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	movs r1, #0x20
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	ldr r2, _0808FDB8 @ =0x00000236
	adds r1, r7, r2
	mov r2, r8
	strb r2, [r1]
	strh r4, [r0, #0x2e]
	bl DrawBackground
	ldr r0, _0808FDBC @ =0x00005E06
	strh r0, [r6, #2]
	strh r4, [r5, #4]
	ldr r0, _0808FDC0 @ =0x0000FFF6
	strh r0, [r5, #6]
	movs r1, #0xe6
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r1, _0808FDC4 @ =0x06004000
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _0808FDC8 @ =0x0600F000
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	movs r1, #0xaf
	lsls r1, r1, #1
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	movs r1, #0x1e
	strh r1, [r0, #0x26]
	movs r1, #0x14
	strh r1, [r0, #0x28]
	movs r2, #0xfb
	lsls r2, r2, #1
	adds r1, r7, r2
	mov r2, r8
	strb r2, [r1]
	movs r1, #1
	strh r1, [r0, #0x2e]
	bl DrawBackground
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808FD9C: .4byte gDispCnt
_0808FDA0: .4byte 0x00001341
_0808FDA4: .4byte gBgCntRegs
_0808FDA8: .4byte 0x00000603
_0808FDAC: .4byte gBgScrollRegs
_0808FDB0: .4byte 0x06003000
_0808FDB4: .4byte 0x0000015D
_0808FDB8: .4byte 0x00000236
_0808FDBC: .4byte 0x00005E06
_0808FDC0: .4byte 0x0000FFF6
_0808FDC4: .4byte 0x06004000
_0808FDC8: .4byte 0x0600F000

	thumb_func_start sub_808FDCC
sub_808FDCC: @ 0x0808FDCC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	movs r1, #0xd2
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r1, [r7, #0x60]
	str r1, [r0]
	ldr r1, [r7, #0x60]
	movs r2, #0xc8
	lsls r2, r2, #3
	adds r1, r1, r2
	str r1, [r7, #0x60]
	ldr r3, _0808FEE0 @ =gUnknown_080D70FC
	ldrb r1, [r7]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrh r1, [r1]
	movs r4, #0
	movs r2, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r7]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	adds r1, r7, #0
	adds r1, #0x54
	ldrh r1, [r1]
	lsrs r1, r1, #8
	strh r1, [r0, #0x10]
	adds r1, r7, #0
	adds r1, #0x56
	ldrh r1, [r1]
	lsrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r2, [r0, #0x14]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r4, [r0, #0x1f]
	str r2, [r0, #8]
	subs r1, #0x11
	str r1, [r0, #0x20]
	bl UpdateSpriteAnimation
	movs r4, #0
	ldr r6, _0808FEE4 @ =gUnknown_080D70CC
	movs r3, #0
	mov r8, r3
	movs r5, #0
	movs r0, #0x14
	adds r0, r0, r7
	mov sb, r0
	movs r1, #0x18
	adds r1, r1, r7
	mov sl, r1
_0808FE4A:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x64
	adds r0, r7, r0
	ldr r1, [r7, #0x60]
	str r1, [r0]
	lsls r3, r4, #3
	adds r1, r6, #4
	adds r1, r3, r1
	ldr r2, [r1]
	lsls r2, r2, #5
	ldr r1, [r7, #0x60]
	adds r1, r1, r2
	str r1, [r7, #0x60]
	adds r2, r3, r6
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	adds r1, r7, #0
	adds r1, #0x14
	adds r1, r1, r3
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	adds r1, r7, #0
	adds r1, #0x18
	adds r1, r1, r3
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0x40
	strh r1, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	mov r2, r8
	strb r2, [r0, #0x1f]
	str r5, [r0, #8]
	subs r1, #0x11
	str r1, [r0, #0x20]
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #5
	bls _0808FE4A
	movs r3, #0xaa
	lsls r3, r3, #1
	adds r2, r7, r3
	ldrb r1, [r7]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r3, r0, #0x1f
	ldr r0, [r7, #0x60]
	str r0, [r2]
	ldr r0, [r7, #0xc]
	cmp r0, #0
	bne _0808FEEC
	ldr r0, [r7, #0x60]
	movs r1, #0xa8
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [r7, #0x60]
	ldr r1, _0808FEE8 @ =gUnknown_080D70BC
	lsls r0, r3, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	strh r1, [r2, #0xc]
	b _0808FF08
	.align 2, 0
_0808FEE0: .4byte gUnknown_080D70FC
_0808FEE4: .4byte gUnknown_080D70CC
_0808FEE8: .4byte gUnknown_080D70BC
_0808FEEC:
	ldr r0, [r7, #0x60]
	movs r3, #0xb4
	lsls r3, r3, #3
	adds r0, r0, r3
	str r0, [r7, #0x60]
	ldr r1, _0808FFD4 @ =gUnknown_080D7024
	ldrb r0, [r7]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	ldrb r0, [r7]
	lsls r0, r0, #3
	adds r0, r0, r1
_0808FF08:
	ldrb r0, [r0, #2]
	strb r0, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	ldr r0, [r7, #0x44]
	asrs r0, r0, #8
	movs r1, #0
	mov r8, r1
	movs r4, #0
	strh r0, [r2, #0x10]
	ldr r0, [r7, #0x48]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	strh r4, [r2, #0x14]
	strh r4, [r2, #0xe]
	strh r4, [r2, #0x16]
	movs r6, #0x10
	strb r6, [r2, #0x1c]
	mov r3, r8
	strb r3, [r2, #0x1f]
	str r4, [r2, #8]
	movs r5, #1
	rsbs r5, r5, #0
	str r5, [r2, #0x20]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	movs r1, #0xbe
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r1, [r7, #0x60]
	str r1, [r0]
	ldr r3, _0808FFD8 @ =gUnknown_080D701C
	ldr r2, [r3, #4]
	lsls r2, r2, #5
	ldr r1, [r7, #0x60]
	adds r1, r1, r2
	str r1, [r7, #0x60]
	ldrh r1, [r3]
	strh r1, [r0, #0xc]
	ldrb r1, [r3, #2]
	strb r1, [r0, #0x1a]
	adds r1, r5, #0
	strb r1, [r0, #0x1b]
	movs r2, #0xa
	ldrsh r1, [r7, r2]
	lsls r1, r1, #3
	add r1, sb
	ldr r1, [r1]
	subs r1, #1
	strh r1, [r0, #0x10]
	movs r3, #0xa
	ldrsh r1, [r7, r3]
	lsls r1, r1, #3
	add r1, sl
	ldr r2, [r1]
	ldrh r1, [r7, #0xa]
	lsls r1, r1, #4
	adds r2, r2, r1
	adds r2, #1
	strh r2, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	strb r6, [r0, #0x1c]
	mov r1, r8
	strb r1, [r0, #0x1f]
	str r4, [r0, #8]
	str r5, [r0, #0x20]
	bl UpdateSpriteAnimation
	ldr r2, _0808FFDC @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _0808FFE0 @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r2]
	movs r0, #0xa0
	strh r0, [r2, #4]
	ldrh r0, [r2, #8]
	movs r1, #0x3f
	orrs r0, r1
	strh r0, [r2, #8]
	ldrh r0, [r2, #0xa]
	movs r1, #0x1f
	orrs r0, r1
	strh r0, [r2, #0xa]
	ldr r1, _0808FFE4 @ =gBldRegs
	ldr r0, _0808FFE8 @ =0x00003FFF
	strh r0, [r1]
	strh r4, [r1, #4]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808FFD4: .4byte gUnknown_080D7024
_0808FFD8: .4byte gUnknown_080D701C
_0808FFDC: .4byte gDispCnt
_0808FFE0: .4byte gWinRegs
_0808FFE4: .4byte gBldRegs
_0808FFE8: .4byte 0x00003FFF

	thumb_func_start Task_Options_Language_Init
Task_Options_Language_Init: @ 0x0808FFEC
	push {r4, r5, r6, lr}
	ldr r6, _08090044 @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_8090314
	ldr r0, _08090048 @ =gBgScrollRegs
	movs r1, #4
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08090058
	ldr r0, _0809004C @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _08090058
	movs r0, #0x6a
	bl m4aSongNumStart
	ldr r5, [r4, #0xc]
	cmp r5, #0
	bne _08090058
	ldr r0, _08090050 @ =gLoadedSaveGame
	ldrh r1, [r4, #0xa]
	ldr r2, _08090054 @ =0x00000366
	adds r0, r0, r2
	strb r1, [r0]
	movs r0, #0
	bl CreateNameEntryScreen
	ldr r0, [r6]
	bl TaskDestroy
	movs r0, #1
	strb r0, [r4, #8]
	ldr r0, [r4, #4]
	strb r5, [r0]
	b _0809013C
	.align 2, 0
_08090044: .4byte gCurTask
_08090048: .4byte gBgScrollRegs
_0809004C: .4byte gPressedKeys
_08090050: .4byte gLoadedSaveGame
_08090054: .4byte 0x00000366
_08090058:
	ldr r0, _08090084 @ =gBgScrollRegs
	movs r3, #4
	ldrsh r2, [r0, r3]
	movs r1, #0xc8
	rsbs r1, r1, #0
	adds r3, r0, #0
	cmp r2, r1
	bgt _0809008C
	movs r0, #4
	ldrsh r1, [r3, r0]
	ldr r0, [r4, #0x4c]
	cmn r0, r1
	bgt _0809008C
	ldr r1, [r4, #4]
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08090088 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0809013C
	.align 2, 0
_08090084: .4byte gBgScrollRegs
_08090088: .4byte gCurTask
_0809008C:
	movs r1, #4
	ldrsh r0, [r3, r1]
	rsbs r0, r0, #0
	str r0, [r4, #0x4c]
	movs r2, #4
	ldrsh r0, [r3, r2]
	cmp r0, #0
	bne _08090100
	ldr r0, [r4, #4]
	ldrb r0, [r0]
	cmp r0, #0
	beq _08090100
	ldr r5, _080900D4 @ =gRepeatedKeys
	ldrh r1, [r5]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _08090100
	movs r0, #0x6c
	bl m4aSongNumStart
	ldrh r1, [r5]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _080900DC
	ldrh r1, [r4, #0xa]
	movs r3, #0xa
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bne _080900D8
	movs r0, #5
	b _080900F4
	.align 2, 0
_080900D4: .4byte gRepeatedKeys
_080900D8:
	subs r0, r1, #1
	b _080900F4
_080900DC:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080900F6
	ldrh r1, [r4, #0xa]
	movs r3, #0xa
	ldrsh r0, [r4, r3]
	cmp r0, #5
	bne _080900F2
	strh r2, [r4, #0xa]
	b _080900F6
_080900F2:
	adds r0, r1, #1
_080900F4:
	strh r0, [r4, #0xa]
_080900F6:
	ldr r1, [r4, #0xc]
	cmp r1, #0
	beq _08090106
	ldrh r0, [r4, #0xa]
	strh r0, [r1]
_08090100:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _08090124
_08090106:
	ldr r1, [r4, #0x58]
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	str r1, [r4, #0x58]
	ldr r0, [r4, #0x5c]
	ldr r2, _08090144 @ =0xFFFFFE80
	adds r0, r0, r2
	str r0, [r4, #0x5c]
	ldr r2, _08090148 @ =gBgScrollRegs
	asrs r1, r1, #8
	strh r1, [r2]
	ldr r0, [r4, #0x5c]
	asrs r0, r0, #8
	strh r0, [r2, #2]
_08090124:
	adds r0, r4, #0
	bl sub_809014C
	adds r0, r4, #0
	bl sub_8090244
	adds r0, r4, #0
	bl sub_80901D4
	adds r0, r4, #0
	bl sub_8090290
_0809013C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08090144: .4byte 0xFFFFFE80
_08090148: .4byte gBgScrollRegs

	thumb_func_start sub_809014C
sub_809014C: @ 0x0809014C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	ldr r0, [r6, #0xc]
	cmp r0, #0
	bne _08090162
	ldrb r7, [r6, #0xa]
	b _08090164
_08090162:
	ldrb r7, [r0]
_08090164:
	movs r5, #0
	movs r0, #0x14
	adds r0, r0, r6
	mov sb, r0
	movs r1, #0x18
	adds r1, r1, r6
	mov r8, r1
	movs r0, #0
	mov sl, r0
_08090176:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x64
	adds r4, r6, r0
	ldr r1, _080901A8 @ =gUnknown_080D70CC
	lsls r2, r5, #3
	adds r1, r2, r1
	ldrh r0, [r1]
	strh r0, [r4, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r4, #0x1a]
	mov r1, sb
	adds r0, r1, r2
	ldr r0, [r0]
	strh r0, [r4, #0x10]
	add r2, r8
	ldr r0, [r2]
	lsls r1, r5, #4
	adds r0, r0, r1
	strh r0, [r4, #0x12]
	cmp r5, r7
	beq _080901AC
	movs r0, #1
	b _080901AE
	.align 2, 0
_080901A8: .4byte gUnknown_080D70CC
_080901AC:
	mov r0, sl
_080901AE:
	strb r0, [r4, #0x1f]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #5
	bls _08090176
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80901D4
sub_80901D4: @ 0x080901D4
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r0, [r3, #0xc]
	cmp r0, #0
	bne _080901E2
	ldrb r1, [r3, #0xa]
	b _080901E4
_080901E2:
	ldrb r1, [r0]
_080901E4:
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r4, r3, r1
	ldr r2, [r3, #0xc]
	cmp r2, #0
	bne _08090208
	ldr r1, _08090204 @ =gUnknown_080D70BC
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	strh r1, [r4, #0xc]
	b _08090220
	.align 2, 0
_08090204: .4byte gUnknown_080D70BC
_08090208:
	ldr r1, _08090240 @ =gUnknown_080D7024
	movs r5, #0
	ldrsh r0, [r2, r5]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	ldr r0, [r3, #0xc]
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #3
	adds r0, r0, r1
_08090220:
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x1a]
	ldr r0, [r3, #0x44]
	strh r0, [r4, #0x10]
	ldr r0, [r3, #0x48]
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08090240: .4byte gUnknown_080D7024

	thumb_func_start sub_8090244
sub_8090244: @ 0x08090244
	push {r4, lr}
	adds r2, r0, #0
	ldr r0, [r2, #0xc]
	cmp r0, #0
	bne _08090252
	ldrb r0, [r2, #0xa]
	b _08090254
_08090252:
	ldrb r0, [r0]
_08090254:
	movs r1, #0xd2
	lsls r1, r1, #1
	adds r4, r2, r1
	ldr r1, _0809028C @ =gUnknown_080D70FC
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	strh r1, [r4, #0xc]
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x1a]
	adds r0, r2, #0
	adds r0, #0x54
	ldrh r0, [r0]
	strh r0, [r4, #0x10]
	adds r0, r2, #0
	adds r0, #0x56
	ldrh r0, [r0]
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809028C: .4byte gUnknown_080D70FC

	thumb_func_start sub_8090290
sub_8090290: @ 0x08090290
	push {r4, lr}
	adds r3, r0, #0
	ldr r0, [r3, #0xc]
	cmp r0, #0
	beq _080902D4
	movs r1, #0xbe
	lsls r1, r1, #1
	adds r4, r3, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r1, r1, #3
	adds r0, r3, #0
	adds r0, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	subs r0, #1
	strh r0, [r4, #0x10]
	ldr r2, [r3, #0xc]
	movs r0, #0
	ldrsh r1, [r2, r0]
	lsls r1, r1, #3
	adds r0, r3, #0
	adds r0, #0x18
	adds r0, r0, r1
	ldr r1, [r0]
	ldrh r0, [r2]
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r1, #1
	strh r1, [r4, #0x12]
	adds r0, r4, #0
	bl DisplaySprite
	b _0809030A
_080902D4:
	movs r1, #0xbe
	lsls r1, r1, #1
	adds r4, r3, r1
	movs r2, #0xa
	ldrsh r1, [r3, r2]
	lsls r1, r1, #3
	adds r0, r3, #0
	adds r0, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	subs r0, #1
	strh r0, [r4, #0x10]
	movs r0, #0xa
	ldrsh r1, [r3, r0]
	lsls r1, r1, #3
	adds r0, r3, #0
	adds r0, #0x18
	adds r0, r0, r1
	ldr r1, [r0]
	ldrh r0, [r3, #0xa]
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r1, #1
	strh r1, [r4, #0x12]
	adds r0, r4, #0
	bl DisplaySprite
_0809030A:
	pop {r4}
	pop {r0}
	bx r0
    
	thumb_func_start TaskDestructor_Options_Language
TaskDestructor_Options_Language: @ 0x08090310
	bx lr
	.align 2, 0

	thumb_func_start sub_8090314
sub_8090314: @ 0x08090314
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r3, r0, #0
	movs r2, #0
	ldr r6, _0809038C @ =gBgScrollRegs
	movs r0, #0x14
	adds r0, r0, r3
	mov ip, r0
	movs r7, #4
	ldrsh r1, [r6, r7]
	movs r0, #0x28
	subs r0, r0, r1
	mov r8, r0
	movs r0, #6
	ldrsh r1, [r6, r0]
	movs r0, #0x26
	subs r5, r0, r1
	adds r4, r3, #0
	adds r4, #0x18
_0809033C:
	lsls r1, r2, #3
	mov r7, ip
	adds r0, r7, r1
	mov r7, r8
	str r7, [r0]
	adds r1, r4, r1
	str r5, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #5
	bls _0809033C
	movs r0, #4
	ldrsh r1, [r6, r0]
	movs r0, #0x78
	subs r0, r0, r1
	str r0, [r3, #0x44]
	movs r7, #6
	ldrsh r1, [r6, r7]
	movs r0, #0x8c
	subs r0, r0, r1
	str r0, [r3, #0x48]
	ldrh r1, [r6, #4]
	movs r0, #0x78
	subs r0, r0, r1
	adds r1, r3, #0
	adds r1, #0x54
	strh r0, [r1]
	ldrh r1, [r6, #6]
	movs r0, #0x1a
	subs r0, r0, r1
	adds r1, r3, #0
	adds r1, #0x56
	strh r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809038C: .4byte gBgScrollRegs

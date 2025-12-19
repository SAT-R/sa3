.include "asm/macros.inc"
.include "constants/constants.inc"

.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	ldr r0, _0804AA64 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r3
	mov sl, r0          @ sl = wall
	ldr r1, _0804AA68 @ =0x0300005C
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #2          @ if(wall->unk5C)
	beq _0804AA78
	ldr r2, _0804AA6C @ =0x03000062
	adds r0, r3, r2
	ldr r4, _0804AA70 @ =0x0300005E
	adds r2, r3, r4
	ldrh r1, [r0]
	ldrh r2, [r2]
	subs r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0xc]
	ldr r1, _0804AA74 @ =0x03000064
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r0, r1, #0
	subs r0, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	adds r1, #0x18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x10]
	b _0804AA88
	.align 2, 0
_0804AA64: .4byte gCurTask
_0804AA68: .4byte 0x0300005C
_0804AA6C: .4byte 0x03000062
_0804AA70: .4byte 0x0300005E
_0804AA74: .4byte 0x03000064
_0804AA78:
	movs r2, #0
	str r2, [sp, #4]
	movs r3, #0
	str r3, [sp, #0xc]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #0
	str r0, [sp, #0x10]
_0804AA88:
	movs r1, #0             @ i = 0
	mov r2, sl
	adds r2, #0x62
	str r2, [sp, #0x18]     @ sp18 = wall->unk62
	movs r3, #0x5e
	add r3, sl
	mov r8, r3              @ r8 = &wall->unk5E
	mov r4, sl
	adds r4, #0x64
	str r4, [sp, #0x1c]     @ sp1C = wall->unk64
	movs r0, #0x5c
	add r0, sl
	mov sb, r0              @ sb = &wall->unk5C
	subs r2, #2
	str r2, [sp, #0x14]     @ sp14 = &wall->unk60
_0804AAA6_loop:
	lsls r0, r1, #0x10
	str r0, [sp, #0x20]
	cmp r0, #0
	bne _0804AAB8
	ldr r0, _0804AAB4 @ =gStageData
	ldrb r1, [r0, #6]
	b _0804AAC2
	.align 2, 0
_0804AAB4: .4byte gStageData
_0804AAB8:
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0804AAC2:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0804AAF8 @ =gPlayers
	adds r6, r0, r1         @ r6 = p
	movs r2, #0             @ r2 = j
_0804AAD2_inner_loop:
	lsls r2, r2, #0x10
	asrs r1, r2, #0x10
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0xc
	mov r3, sl
	adds r7, r3, r0         @ r7 = s = &wall->s[j];
	ldr r4, [sp, #0x18]
	movs r0, #0
	ldrsh r3, [r4, r0]      @ r3 = wall->unk62
	str r2, [sp, #0x24]     @ sp24 = (j << 16)
	cmp r1, #0
	beq _0804AAFC
	mov r1, r8
	ldrh r0, [r1]
	adds r0, r3, r0
	b _0804AB02
	.align 2, 0
_0804AAF8: .4byte gPlayers
_0804AAFC:
	mov r2, r8
	ldrh r0, [r2]
	subs r0, r3, r0
_0804AB02:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r3, [sp, #0x1c]
	ldrh r5, [r3]           @ r5 = wall->unk64
	adds r0, r6, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _0804AAD2_inner_continue
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	str r0, [sp]
	adds r0, r7, #0
	adds r3, r6, #0
	bl sub_8020950
	adds r2, r0, #0
	movs r3, #0x80
	lsls r3, r3, #9
	ands r3, r2
	cmp r3, #0
	beq _0804AB3E
	lsls r1, r2, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r6, #0x14]
	adds r0, r0, r1
	str r0, [r6, #0x14]
	b _0804AB5A
_0804AB3E:
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _0804AB5A
	ldr r1, [r6, #0x14]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r1, r4
	lsls r0, r2, #0x18
	asrs r0, r0, #0x10
	adds r1, r1, r0
	str r1, [r6, #0x14]
	strh r3, [r6, #0x1a]
_0804AB5A:
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r2
	cmp r0, #0
	beq _0804AB76
	lsls r0, r2, #0x10
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	ldr r1, [r6, #0x10]
	adds r1, r1, r0
	str r1, [r6, #0x10]
	movs r0, #0
	strh r0, [r6, #0x18]
	strh r0, [r6, #0x1c]
_0804AB76:
	mov r0, sb              @ r0 = sb = &wall->unk5C
	ldrb r3, [r0]
	cmp r3, #2
	beq _0804AAD2_inner_continue
	ldr r0, [r6, #0x10]
	lsls r0, r0, #8
	ldr r1, [r6, #0x14]
	lsls r1, r1, #8
	lsrs r1, r1, #0x10      @ r1 = I(p->qWorldY)
	asrs r2, r0, #0x10
	ldr r4, [sp, #4]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r2, r0
	ble _0804AAD2_inner_continue
	ldr r4, [sp, #0xc]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r2, r0
	bge _0804AAD2_inner_continue
	lsls r0, r1, #0x10
	ldr r2, [sp, #8]
	lsls r1, r2, #0x10
	asrs r2, r0, #0x10
	cmp r0, r1
	ble _0804AAD2_inner_continue
	ldr r4, [sp, #0x10]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r2, r0
	bge _0804AAD2_inner_continue
	cmp r3, #0
	bne _0804ABD2
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #8
	beq _0804AAD2_inner_continue
	cmp r1, #0x14
	beq _0804AAD2_inner_continue
	movs r0, #1
	mov r1, sb              @ r1 = sb = &wall->unk5C
	strb r0, [r1]
	b _0804AAD2_inner_continue
_0804ABD2:
	mov r2, r8              @ r2 = r8 = wall->unk5E
	ldrh r0, [r2]
	cmp r0, #0x25
	bhi _0804AAD2_inner_continue
	adds r0, r6, #0
	bl sub_802C080
	cmp r0, #0
	bne _0804AAD2_inner_continue
	adds r0, r6, #0
	bl Player_HitWithoutRingsUpdate
_0804AAD2_inner_continue:
	ldr r3, [sp, #0x24]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r3, r4
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _0804ABFC_outer_continue
	b _0804AAD2_inner_loop
_0804ABFC_outer_continue:
	ldr r1, [sp, #0x20]
	adds r0, r1, r4
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _0804AC0A
	b _0804AAA6_loop
_0804AC0A:
	mov r2, sb
	ldrb r0, [r2]           @ r0 = wall->unk5C
	ldr r2, _0804AC54 @ =gStageData
	cmp r0, #1
	bne _0804AC3A
	ldr r0, [r2, #0x1c]
	ldr r3, [sp, #0x14]
	ldrh r1, [r3]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	mov r4, r8              @ r4 = r8 = &wall->unk5E
	ldrh r0, [r4]
	cmp r0, #0x20
	bls _0804AC34
	subs r0, r0, r1
	strh r0, [r4]           @ wall->unk5E = 
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x20
	bhi _0804AC3A
_0804AC34:
	movs r0, #2
	mov r1, sb
	strb r0, [r1]
_0804AC3A:
	ldr r0, [r2, #0x1c]
	ldr r2, [sp, #0x14]
	strh r0, [r2]
	bl sub_804ACF0
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804AC54: .4byte gStageData


.syntax divided

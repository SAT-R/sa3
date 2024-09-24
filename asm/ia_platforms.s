.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
    thumb_func_start Task_802F368
Task_802F368: @ 0x0802F368
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #8
    ldr r0, _0802F3B8 @ =gCurTask
    ldr r0, [r0]
    ldrh r1, [r0, #6]
    movs r0, #0xc0
    lsls r0, r0, #0x12
    adds r7, r1, r0     @ r7 = platform
    str r7, [sp, #4]    @ sp04 = r7 = shared
    adds r0, #0x2c
    adds r0, r0, r1
    mov sl, r0          @ sl = s
    ldr r0, [r7, #0x10]
    mov sb, r0          @ sb = qWorldY
    ldr r0, _0802F3BC @ =0x03000054
    adds r1, r1, r0     @ r1 = &platform->kindA
    ldrb r2, [r1]       @ r2 = platform->kindA
    movs r0, #0x2a
    muls r0, r2, r0
    add r0, sb
    str r0, [r7, #0x10]
    ldrb r0, [r1]
    adds r0, #1
    strb r0, [r1]
    ldr r0, [r7, #0x10]
    mov r1, sb
    subs r1, r1, r0
    mov sb, r1
    movs r1, #0
_0802F3AA:
    lsls r0, r1, #0x10
    mov r8, r0
    cmp r0, #0
    bne _0802F3C4
    ldr r0, _0802F3C0 @ =gStageData
    ldrb r1, [r0, #6]
    b _0802F3CE
    .align 2, 0
_0802F3B8: .4byte gCurTask
_0802F3BC: .4byte 0x03000054
_0802F3C0: .4byte gStageData
_0802F3C4:
    adds r0, r4, #0
    adds r0, #0x2b
    ldrb r1, [r0]
    lsls r1, r1, #0x1e
    lsrs r1, r1, #0x1e
_0802F3CE:
    lsls r0, r1, #2
    adds r0, r0, r1
    lsls r0, r0, #2
    adds r0, r0, r1
    lsls r0, r0, #4
    ldr r1, _0802F460 @ =gPlayers
    adds r4, r0, r1     @ r4 = p
    adds r0, r4, #0
    adds r0, #0x2b
    ldrb r0, [r0]
    movs r1, #0x1c
    ands r1, r0
    cmp r1, #4
    beq _0802F3F4
    cmp r1, #8
    beq _0802F3F4
    cmp r1, #0x10
    beq _0802F3F4
    b _0802F5A8_continue
_0802F3F4:
    adds r0, r4, #0
    bl sub_802C0D4
    cmp r0, #0
    beq _0802F400
    b _0802F5A8_continue
_0802F400:
    ldr r0, [r4, #4]
    movs r1, #0x20
    ands r0, r1
    cmp r0, #0
    beq _0802F420
    ldr r0, [r4, #0x6c]
    cmp r0, sl
    bne _0802F420
    mov r0, sb
    lsls r1, r0, #1
    ldr r0, [r4, #0x14]
    subs r0, r0, r1
    str r0, [r4, #0x14]
    adds r0, r4, #0
    bl Player_80149E4
_0802F420:
    ldr r1, [r7, #0xc]
    asrs r1, r1, #8
    ldr r2, [r7, #0x10]
    asrs r2, r2, #8
    movs r6, #0
    str r6, [sp]
    mov r0, sl
    adds r3, r4, #0
    bl sub_8020950
    adds r5, r0, #0     @ r5 = res
    movs r3, #0x80
    lsls r3, r3, #9
    ands r0, r3
    cmp r0, #0
    beq _0802F464
    lsls r0, r5, #0x18
    asrs r0, r0, #0x10
    ldr r1, [r4, #0x14]
    adds r1, r1, r0
    str r1, [r4, #0x14]
    adds r0, r4, #0
    adds r0, #0x26
    strb r6, [r0]
    adds r0, r4, #0
    bl sub_801226C
    ldr r6, [sp, #4]
    adds r6, #0x55
    cmp r0, #0
    bge _0802F4FA
    b _0802F4BA
    .align 2, 0
_0802F460: .4byte gPlayers
_0802F464:
    ldr r2, [sp, #4]
    adds r2, #0x55
    ldrb r1, [r2]
    movs r0, #8
    ands r0, r1
    adds r6, r2, #0
    cmp r0, #0
    bne _0802F476
    b _0802F5A8_continue
_0802F476:
    movs r0, #0x80
    lsls r0, r0, #0xa
    ands r0, r5
    cmp r0, #0
    beq _0802F4FA
    ldr r0, [r4, #4]
    ands r0, r3
    cmp r0, #0
    beq _0802F494
    ldr r1, [r4, #0x14]
    ldr r0, _0802F490 @ =0xFFFFFC00
    b _0802F49A
    .align 2, 0
_0802F490: .4byte 0xFFFFFC00
_0802F494:
    ldr r1, [r4, #0x14]
    movs r0, #0x80
    lsls r0, r0, #3
_0802F49A:
    adds r1, r1, r0
    lsls r0, r5, #0x18
    asrs r0, r0, #0x10
    adds r1, r1, r0
    str r1, [r4, #0x14]
    movs r0, #0
    strh r0, [r4, #0x1a]
    ldr r0, _0802F4CC @ =gStageData
    ldrb r0, [r0, #3]
    cmp r0, #7
    beq _0802F4FA
    adds r0, r4, #0
    bl sub_8012368
    cmp r0, #0
    bge _0802F4D0
_0802F4BA:
    adds r0, r4, #0
    bl sub_802C080
    cmp r0, #0
    bne _0802F4FA
    adds r0, r4, #0
    bl sub_8008E38
    b _0802F4FA
    .align 2, 0
_0802F4CC: .4byte gStageData
_0802F4D0:
    ldrh r1, [r4, #0x30]
    adds r0, r1, #0
    subs r0, #0xee
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    cmp r0, #1
    bls _0802F4EA
    lsls r0, r1, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0xf4
    beq _0802F4EA
    cmp r0, #0xf5
    bne _0802F4FA
_0802F4EA:
    adds r0, r4, #0
    bl sub_8012FE0
    movs r0, #0x18
    strh r0, [r4, #0x30]
    adds r0, r4, #0
    bl Player_800DAF4
_0802F4FA:
    ldrb r1, [r6]       @ r1 = platform->flags_3
    movs r0, #8
    ands r0, r1
    cmp r0, #0
    beq _0802F5A8_continue
    movs r0, #0xc0
    lsls r0, r0, #0xc
    ands r0, r5
    cmp r0, #0
    beq _0802F5A8_continue
    lsls r1, r5, #0x10
    asrs r1, r1, #0x18
    lsls r1, r1, #8
    ldr r0, [r4, #0x10]
    adds r0, r0, r1
    str r0, [r4, #0x10]
    movs r0, #0
    strh r0, [r4, #0x18]
    movs r0, #0x80
    lsls r0, r0, #0xb
    ands r0, r5
    cmp r0, #0
    beq _0802F532
    ldr r0, [r4, #4]
    movs r1, #1
    ands r0, r1
    cmp r0, #0
    bne _0802F546
_0802F532:
    movs r0, #0x80
    lsls r0, r0, #0xc
    ands r0, r5
    cmp r0, #0
    beq _0802F54A
    ldr r0, [r4, #4]
    movs r1, #1
    ands r0, r1
    cmp r0, #0
    bne _0802F54A
_0802F546:
    movs r0, #0
    strh r0, [r4, #0x1c]
_0802F54A:
    ldrh r1, [r4, #0x30]
    adds r0, r1, #0
    subs r0, #0xee
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    cmp r0, #1
    bls _0802F564
    lsls r0, r1, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0xf4
    beq _0802F564
    cmp r0, #0xf5
    bne _0802F574
_0802F564:
    adds r0, r4, #0
    bl sub_802C080
    cmp r0, #0
    bne _0802F574
    adds r0, r4, #0
    bl sub_8008E38
_0802F574:
    adds r0, r4, #0
    bl sub_801246C
    cmp r0, #0
    bge _0802F58E
    adds r0, r4, #0
    bl sub_802C080
    cmp r0, #0
    bne _0802F58E
    adds r0, r4, #0
    bl sub_8008E38
_0802F58E:
    adds r0, r4, #0
    bl sub_8012550
    cmp r0, #0
    bge _0802F5A8_continue
    adds r0, r4, #0
    bl sub_802C080
    cmp r0, #0
    bne _0802F5A8_continue
    adds r0, r4, #0
    bl sub_8008E38
_0802F5A8_continue:
    movs r0, #0x80
    lsls r0, r0, #9
    add r0, r8
    lsrs r1, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    bgt _0802F5B8
    b _0802F3AA
_0802F5B8:
    mov r0, sl
    bl sub_802F1B8
    lsls r0, r0, #0x10
    cmp r0, #0
    beq _0802F626
    movs r1, #0
    ldr r2, _0802F5D8 @ =gPlayers
_0802F5C8:
    lsls r0, r1, #0x10
    mov r8, r0
    cmp r0, #0
    bne _0802F5E0
    ldr r0, _0802F5DC @ =gStageData
    ldrb r1, [r0, #6]
    b _0802F5EA
    .align 2, 0
_0802F5D8: .4byte gPlayers
_0802F5DC: .4byte gStageData
_0802F5E0:
    adds r0, r4, #0
    adds r0, #0x2b
    ldrb r1, [r0]
    lsls r1, r1, #0x1e
    lsrs r1, r1, #0x1e
_0802F5EA:
    lsls r0, r1, #2
    adds r0, r0, r1
    lsls r0, r0, #2
    adds r0, r0, r1
    lsls r0, r0, #4
    adds r4, r0, r2     @ r4 = p
    ldr r1, [r4, #4]
    movs r0, #0x20
    ands r0, r1
    cmp r0, #0
    beq _0802F616
    ldr r0, [r4, #0x6c]
    cmp r0, sl
    bne _0802F616
    movs r0, #0x21
    rsbs r0, r0, #0
    ands r1, r0
    movs r0, #4
    orrs r1, r0
    str r1, [r4, #4]
    movs r0, #0
    str r0, [r4, #0x6c]
_0802F616:
    movs r0, #0x80
    lsls r0, r0, #9
    add r0, r8
    lsrs r1, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    ble _0802F5C8
    b _0802F67A
_0802F626:
    ldr r0, [sp, #4]
    adds r0, #0x55
    ldrb r1, [r0]
    movs r0, #0x10
    ands r0, r1
    ldr r4, [sp, #4]
    adds r4, #0x54
    cmp r0, #0
    beq _0802F664
    ldr r0, [r7, #0x10]
    asrs r0, r0, #8
    ldr r1, [r7, #0xc]
    asrs r1, r1, #8
    ldr r2, _0802F68C @ =sub_8051F54
    str r2, [sp]
    movs r2, #1
    movs r3, #8
    bl sub_8052418
    cmp r0, #0
    bgt _0802F664
    lsls r1, r0, #8
    ldr r0, [r7, #0x10]
    subs r0, r0, r1
    str r0, [r7, #0x10]
    movs r0, #0xff
    strb r0, [r4]
    ldr r0, _0802F690 @ =gCurTask
    ldr r1, [r0]
    ldr r0, _0802F694 @ =Task_802F698
    str r0, [r1, #8]
_0802F664:
    adds r0, r7, #0
    mov r1, sl
    bl DrawPlatformShared
    ldrb r0, [r4]
    cmp r0, #0x1d
    bls _0802F67A
    ldr r0, _0802F690 @ =gCurTask
    ldr r1, [r0]
    ldr r0, _0802F694 @ =Task_802F698
    str r0, [r1, #8]
_0802F67A:
    add sp, #8
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_0802F68C: .4byte sub_8051F54
_0802F690: .4byte gCurTask
_0802F694: .4byte Task_802F698
.endif

@ Similar to Task_802F368
    thumb_func_start Task_802F698
Task_802F698: @ 0x0802F698
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #8
    ldr r0, _0802F6F0 @ =gCurTask
    ldr r0, [r0]
    ldrh r1, [r0, #6]
    movs r0, #0xc0
    lsls r0, r0, #0x12
    adds r7, r1, r0
    str r7, [sp, #4]
    adds r0, #0x2c
    adds r0, r0, r1
    mov sl, r0
    ldr r0, [r7, #0x10]
    mov sb, r0
    ldr r0, _0802F6F4 @ =0x03000054
    adds r2, r1, r0
    ldrb r0, [r2]
    cmp r0, #0xff
    beq _0802F6D6
    adds r1, r0, #0
    movs r0, #0x2a
    muls r0, r1, r0
    add r0, sb
    str r0, [r7, #0x10]
    ldrb r0, [r2]
    adds r0, #1
    strb r0, [r2]
_0802F6D6:
    ldr r0, [r7, #0x10]
    mov r1, sb
    subs r1, r1, r0
    mov sb, r1
    movs r1, #0
_0802F6E0:
    lsls r0, r1, #0x10
    mov r8, r0
    cmp r0, #0
    bne _0802F6FC
    ldr r0, _0802F6F8 @ =gStageData
    ldrb r1, [r0, #6]
    b _0802F706
    .align 2, 0
_0802F6F0: .4byte gCurTask
_0802F6F4: .4byte 0x03000054
_0802F6F8: .4byte gStageData
_0802F6FC:
    adds r0, r4, #0
    adds r0, #0x2b
    ldrb r1, [r0]
    lsls r1, r1, #0x1e
    lsrs r1, r1, #0x1e
_0802F706:
    lsls r0, r1, #2
    adds r0, r0, r1
    lsls r0, r0, #2
    adds r0, r0, r1
    lsls r0, r0, #4
    ldr r1, _0802F798 @ =gPlayers
    adds r4, r0, r1
    adds r0, r4, #0
    adds r0, #0x2b
    ldrb r0, [r0]
    movs r1, #0x1c
    ands r1, r0
    cmp r1, #4
    beq _0802F72C
    cmp r1, #8
    beq _0802F72C
    cmp r1, #0x10
    beq _0802F72C
    b _0802F8E0
_0802F72C:
    adds r0, r4, #0
    bl sub_802C0D4
    cmp r0, #0
    beq _0802F738
    b _0802F8E0
_0802F738:
    ldr r0, [r4, #4]
    movs r1, #0x20
    ands r0, r1
    cmp r0, #0
    beq _0802F756
    ldr r0, [r4, #0x6c]
    cmp r0, sl
    bne _0802F756
    ldr r0, [r4, #0x14]
    mov r1, sb
    subs r0, r0, r1
    str r0, [r4, #0x14]
    adds r0, r4, #0
    bl Player_80149E4
_0802F756:
    ldr r1, [r7, #0xc]
    asrs r1, r1, #8
    ldr r2, [r7, #0x10]
    asrs r2, r2, #8
    movs r6, #0
    str r6, [sp]
    mov r0, sl
    adds r3, r4, #0
    bl sub_8020950
    adds r5, r0, #0
    movs r3, #0x80
    lsls r3, r3, #9
    ands r0, r3
    cmp r0, #0
    beq _0802F79C
    lsls r0, r5, #0x18
    asrs r0, r0, #0x10
    ldr r1, [r4, #0x14]
    adds r1, r1, r0
    str r1, [r4, #0x14]
    adds r0, r4, #0
    adds r0, #0x26
    strb r6, [r0]
    adds r0, r4, #0
    bl sub_801226C
    ldr r6, [sp, #4]
    adds r6, #0x55
    cmp r0, #0
    bge _0802F832
    b _0802F7F2
    .align 2, 0
_0802F798: .4byte gPlayers
_0802F79C:
    ldr r2, [sp, #4]
    adds r2, #0x55
    ldrb r1, [r2]
    movs r0, #8
    ands r0, r1
    adds r6, r2, #0
    cmp r0, #0
    bne _0802F7AE
    b _0802F8E0
_0802F7AE:
    movs r0, #0x80
    lsls r0, r0, #0xa
    ands r0, r5
    cmp r0, #0
    beq _0802F832
    ldr r0, [r4, #4]
    ands r0, r3
    cmp r0, #0
    beq _0802F7CC
    ldr r1, [r4, #0x14]
    ldr r0, _0802F7C8 @ =0xFFFFFC00
    b _0802F7D2
    .align 2, 0
_0802F7C8: .4byte 0xFFFFFC00
_0802F7CC:
    ldr r1, [r4, #0x14]
    movs r0, #0x80
    lsls r0, r0, #3
_0802F7D2:
    adds r1, r1, r0
    lsls r0, r5, #0x18
    asrs r0, r0, #0x10
    adds r1, r1, r0
    str r1, [r4, #0x14]
    movs r0, #0
    strh r0, [r4, #0x1a]
    ldr r0, _0802F804 @ =gStageData
    ldrb r0, [r0, #3]
    cmp r0, #7
    beq _0802F832
    adds r0, r4, #0
    bl sub_8012368
    cmp r0, #0
    bge _0802F808
_0802F7F2:
    adds r0, r4, #0
    bl sub_802C080
    cmp r0, #0
    bne _0802F832
    adds r0, r4, #0
    bl sub_8008E38
    b _0802F832
    .align 2, 0
_0802F804: .4byte gStageData
_0802F808:
    ldrh r1, [r4, #0x30]
    adds r0, r1, #0
    subs r0, #0xee
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    cmp r0, #1
    bls _0802F822
    lsls r0, r1, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0xf4
    beq _0802F822
    cmp r0, #0xf5
    bne _0802F832
_0802F822:
    adds r0, r4, #0
    bl sub_8012FE0
    movs r0, #0x18
    strh r0, [r4, #0x30]
    adds r0, r4, #0
    bl Player_800DAF4
_0802F832:
    ldrb r1, [r6]
    movs r0, #8
    ands r0, r1
    cmp r0, #0
    beq _0802F8E0
    movs r0, #0xc0
    lsls r0, r0, #0xc
    ands r0, r5
    cmp r0, #0
    beq _0802F8E0
    lsls r1, r5, #0x10
    asrs r1, r1, #0x18
    lsls r1, r1, #8
    ldr r0, [r4, #0x10]
    adds r0, r0, r1
    str r0, [r4, #0x10]
    movs r0, #0
    strh r0, [r4, #0x18]
    movs r0, #0x80
    lsls r0, r0, #0xb
    ands r0, r5
    cmp r0, #0
    beq _0802F86A
    ldr r0, [r4, #4]
    movs r1, #1
    ands r0, r1
    cmp r0, #0
    bne _0802F87E
_0802F86A:
    movs r0, #0x80
    lsls r0, r0, #0xc
    ands r0, r5
    cmp r0, #0
    beq _0802F882
    ldr r0, [r4, #4]
    movs r1, #1
    ands r0, r1
    cmp r0, #0
    bne _0802F882
_0802F87E:
    movs r0, #0
    strh r0, [r4, #0x1c]
_0802F882:
    ldrh r1, [r4, #0x30]
    adds r0, r1, #0
    subs r0, #0xee
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    cmp r0, #1
    bls _0802F89C
    lsls r0, r1, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0xf4
    beq _0802F89C
    cmp r0, #0xf5
    bne _0802F8AC
_0802F89C:
    adds r0, r4, #0
    bl sub_802C080
    cmp r0, #0
    bne _0802F8AC
    adds r0, r4, #0
    bl sub_8008E38
_0802F8AC:
    adds r0, r4, #0
    bl sub_801246C
    cmp r0, #0
    bge _0802F8C6
    adds r0, r4, #0
    bl sub_802C080
    cmp r0, #0
    bne _0802F8C6
    adds r0, r4, #0
    bl sub_8008E38
_0802F8C6:
    adds r0, r4, #0
    bl sub_8012550
    cmp r0, #0
    bge _0802F8E0
    adds r0, r4, #0
    bl sub_802C080
    cmp r0, #0
    bne _0802F8E0
    adds r0, r4, #0
    bl sub_8008E38
_0802F8E0:
    movs r0, #0x80
    lsls r0, r0, #9
    add r0, r8
    lsrs r1, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    bgt _0802F8F0
    b _0802F6E0
_0802F8F0:
    mov r0, sl
    bl sub_802F1B8
    lsls r0, r0, #0x10
    cmp r0, #0
    beq _0802F95E
    movs r1, #0
    ldr r2, _0802F910 @ =gPlayers
_0802F900:
    lsls r0, r1, #0x10
    mov r8, r0
    cmp r0, #0
    bne _0802F918
    ldr r0, _0802F914 @ =gStageData
    ldrb r1, [r0, #6]
    b _0802F922
    .align 2, 0
_0802F910: .4byte gPlayers
_0802F914: .4byte gStageData
_0802F918:
    adds r0, r4, #0
    adds r0, #0x2b
    ldrb r1, [r0]
    lsls r1, r1, #0x1e
    lsrs r1, r1, #0x1e
_0802F922:
    lsls r0, r1, #2
    adds r0, r0, r1
    lsls r0, r0, #2
    adds r0, r0, r1
    lsls r0, r0, #4
    adds r4, r0, r2
    ldr r1, [r4, #4]
    movs r0, #0x20
    ands r0, r1
    cmp r0, #0
    beq _0802F94E
    ldr r0, [r4, #0x6c]
    cmp r0, sl
    bne _0802F94E
    movs r0, #0x21
    rsbs r0, r0, #0
    ands r1, r0
    movs r0, #4
    orrs r1, r0
    str r1, [r4, #4]
    movs r0, #0
    str r0, [r4, #0x6c]
_0802F94E:
    movs r0, #0x80
    lsls r0, r0, #9
    add r0, r8
    lsrs r1, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    ble _0802F900
    b _0802F9AE
_0802F95E:
    ldr r0, [sp, #4]
    adds r0, #0x55
    ldrb r1, [r0]
    movs r0, #0x10
    ands r0, r1
    cmp r0, #0
    beq _0802F9A6
    ldr r4, [sp, #4]
    adds r4, #0x54
    ldrb r0, [r4]
    cmp r0, #0xff
    beq _0802F9A6
    ldr r0, [r7, #0x10]
    asrs r0, r0, #8
    mov r1, sl
    adds r1, #0x27
    ldrb r1, [r1]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    adds r0, r0, r1
    ldr r1, [r7, #0xc]
    asrs r1, r1, #8
    ldr r2, _0802F9C0 @ =sub_8051F54
    str r2, [sp]
    movs r2, #1
    movs r3, #8
    bl sub_8052418
    cmp r0, #0
    bgt _0802F9A6
    lsls r0, r0, #8
    ldr r1, [r7, #0x10]
    adds r1, r1, r0
    str r1, [r7, #0x10]
    movs r0, #0xff
    strb r0, [r4]
_0802F9A6:
    adds r0, r7, #0
    mov r1, sl
    bl DrawPlatformShared
_0802F9AE:
    add sp, #8
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_0802F9C0: .4byte sub_8051F54

    thumb_func_start sub_802F9C4
sub_802F9C4: @ 0x0802F9C4
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    sub sp, #0x88
    adds r5, r2, #0
    lsls r0, r0, #0x10
    lsrs r7, r0, #0x10
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    mov r8, r1
    movs r0, #0
    mov sb, r0
    ldr r1, _0802FA1C @ =gUnknown_080CF498
    mov r0, sp
    movs r2, #0x30
    bl memcpy
    add r6, sp, #0x30
    ldr r1, _0802FA20 @ =gUnknown_080CF4C8
    adds r0, r6, #0
    movs r2, #0x2a
    bl memcpy
    add r4, sp, #0x5c
    ldr r1, _0802FA24 @ =gUnknown_080CF4F2
    adds r0, r4, #0
    movs r2, #0x2a
    bl memcpy
    ldr r1, _0802FA28 @ =gStageData
    ldrb r0, [r1, #3]
    cmp r0, #7
    beq _0802FAA4
    cmp r7, #2
    bne _0802FA5A
    ldrb r0, [r1, #0xa]
    cmp r0, #9
    bne _0802FA30
    ldr r6, _0802FA2C @ =0x000003E5
    movs r4, #0
    movs r0, #0x24
    b _0802FAB0
    .align 2, 0
_0802FA1C: .4byte gUnknown_080CF498
_0802FA20: .4byte gUnknown_080CF4C8
_0802FA24: .4byte gUnknown_080CF4F2
_0802FA28: .4byte gStageData
_0802FA2C: .4byte 0x000003E5
_0802FA30:
    mov r2, r8
    cmp r2, #0
    beq _0802FA40
    mov r0, sp
    ldrh r6, [r0, #0x2a]
    ldrh r4, [r0, #0x2c]
    ldrh r0, [r0, #0x2e]
    b _0802FAB0
_0802FA40:
    ldrb r0, [r1, #9]
    lsls r1, r0, #1
    adds r1, r1, r0
    lsls r1, r1, #1
    mov r2, sp
    adds r0, r2, r1
    ldrh r6, [r0]
    mov r0, sp
    adds r0, #2
    adds r0, r0, r1
    ldrh r4, [r0]
    add r0, sp, #4
    b _0802FA9E
_0802FA5A:
    ldrb r0, [r1, #0xa]
    cmp r0, #9
    bne _0802FA6C
    ldr r6, _0802FA68 @ =0x000003E5
    movs r4, #1
    movs r0, #0x12
    b _0802FAB0
    .align 2, 0
_0802FA68: .4byte 0x000003E5
_0802FA6C:
    cmp r0, #2
    beq _0802FA88
    ldrb r0, [r1, #9]
    lsls r1, r0, #1
    adds r1, r1, r0
    lsls r1, r1, #1
    adds r0, r4, r1
    ldrh r6, [r0]
    mov r0, sp
    adds r0, #0x5e
    adds r0, r0, r1
    ldrh r4, [r0]
    add r0, sp, #0x60
    b _0802FA9E
_0802FA88:
    ldrb r0, [r1, #9]
    lsls r1, r0, #1
    adds r1, r1, r0
    lsls r1, r1, #1
    adds r0, r6, r1
    ldrh r6, [r0]
    mov r0, sp
    adds r0, #0x32
    adds r0, r0, r1
    ldrh r4, [r0]
    add r0, sp, #0x34
_0802FA9E:
    adds r0, r0, r1
    ldrh r0, [r0]
    b _0802FAB0
_0802FAA4:
    ldr r6, _0802FAF0 @ =0x00000379
    movs r4, #0
    movs r0, #0x12
    movs r1, #0x80
    lsls r1, r1, #2
    mov sb, r1
_0802FAB0:
    bl VramMalloc
    str r0, [r5]
    movs r2, #0
    movs r1, #0
    strh r6, [r5, #0xc]
    strb r4, [r5, #0x1a]
    movs r0, #0xc0
    lsls r0, r0, #3
    strh r0, [r5, #0x14]
    strh r1, [r5, #0xe]
    strh r1, [r5, #0x16]
    movs r0, #0xff
    strb r0, [r5, #0x1b]
    movs r0, #0x10
    strb r0, [r5, #0x1c]
    strb r2, [r5, #0x1f]
    subs r0, #0x11
    str r0, [r5, #0x20]
    movs r0, #0x80
    lsls r0, r0, #5
    mov r2, sb
    orrs r2, r0
    str r2, [r5, #8]
    add sp, #0x88
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_0802FAF0: .4byte 0x00000379

    thumb_func_start CreateEntity_Interactable016
CreateEntity_Interactable016: @ 0x0802FAF4
    push {r4, r5, lr}
    sub sp, #8
    adds r5, r0, #0
    adds r4, r1, #0
    lsls r4, r4, #0x10
    lsrs r4, r4, #0x10
    lsls r2, r2, #0x10
    lsrs r2, r2, #0x10
    lsls r3, r3, #0x18
    lsrs r3, r3, #0x18
    str r2, [sp]
    str r3, [sp, #4]
    movs r0, #0
    movs r1, #0
    adds r2, r5, #0
    adds r3, r4, #0
    bl CreateEntity_Interactables016_027
    add sp, #8
    pop {r4, r5}
    pop {r0}
    bx r0

    thumb_func_start CreateEntity_Interactable017
CreateEntity_Interactable017: @ 0x0802FB20
    push {r4, r5, lr}
    sub sp, #8
    adds r5, r0, #0
    adds r4, r1, #0
    lsls r4, r4, #0x10
    lsrs r4, r4, #0x10
    lsls r2, r2, #0x10
    lsrs r2, r2, #0x10
    lsls r3, r3, #0x18
    lsrs r3, r3, #0x18
    str r2, [sp]
    str r3, [sp, #4]
    movs r0, #0
    movs r1, #1
    adds r2, r5, #0
    adds r3, r4, #0
    bl CreateEntity_Interactables016_027
    add sp, #8
    pop {r4, r5}
    pop {r0}
    bx r0

    thumb_func_start CreateEntity_Interactable018
CreateEntity_Interactable018: @ 0x0802FB4C
    push {r4, r5, lr}
    sub sp, #8
    adds r5, r0, #0
    adds r4, r1, #0
    lsls r4, r4, #0x10
    lsrs r4, r4, #0x10
    lsls r2, r2, #0x10
    lsrs r2, r2, #0x10
    lsls r3, r3, #0x18
    lsrs r3, r3, #0x18
    str r2, [sp]
    str r3, [sp, #4]
    movs r0, #0
    movs r1, #2
    adds r2, r5, #0
    adds r3, r4, #0
    bl CreateEntity_Interactables016_027
    add sp, #8
    pop {r4, r5}
    pop {r0}
    bx r0

    thumb_func_start CreateEntity_Interactable019
CreateEntity_Interactable019: @ 0x0802FB78
    push {r4, r5, lr}
    sub sp, #8
    adds r5, r0, #0
    adds r4, r1, #0
    lsls r4, r4, #0x10
    lsrs r4, r4, #0x10
    lsls r2, r2, #0x10
    lsrs r2, r2, #0x10
    lsls r3, r3, #0x18
    lsrs r3, r3, #0x18
    str r2, [sp]
    str r3, [sp, #4]
    movs r0, #0
    movs r1, #3
    adds r2, r5, #0
    adds r3, r4, #0
    bl CreateEntity_Interactables016_027
    add sp, #8
    pop {r4, r5}
    pop {r0}
    bx r0

    thumb_func_start CreateEntity_Interactable020
CreateEntity_Interactable020: @ 0x0802FBA4
    push {r4, r5, lr}
    sub sp, #8
    adds r5, r0, #0
    adds r4, r1, #0
    lsls r4, r4, #0x10
    lsrs r4, r4, #0x10
    lsls r2, r2, #0x10
    lsrs r2, r2, #0x10
    lsls r3, r3, #0x18
    lsrs r3, r3, #0x18
    str r2, [sp]
    str r3, [sp, #4]
    movs r0, #1
    movs r1, #0
    adds r2, r5, #0
    adds r3, r4, #0
    bl CreateEntity_Interactables016_027
    add sp, #8
    pop {r4, r5}
    pop {r0}
    bx r0

    thumb_func_start CreateEntity_Interactable021
CreateEntity_Interactable021: @ 0x0802FBD0
    push {r4, r5, lr}
    sub sp, #8
    adds r5, r0, #0
    adds r4, r1, #0
    lsls r4, r4, #0x10
    lsrs r4, r4, #0x10
    lsls r2, r2, #0x10
    lsrs r2, r2, #0x10
    lsls r3, r3, #0x18
    lsrs r3, r3, #0x18
    str r2, [sp]
    str r3, [sp, #4]
    movs r0, #1
    movs r1, #1
    adds r2, r5, #0
    adds r3, r4, #0
    bl CreateEntity_Interactables016_027
    add sp, #8
    pop {r4, r5}
    pop {r0}
    bx r0

    thumb_func_start CreateEntity_Interactable022
CreateEntity_Interactable022: @ 0x0802FBFC
    push {r4, r5, lr}
    sub sp, #8
    adds r5, r0, #0
    adds r4, r1, #0
    lsls r4, r4, #0x10
    lsrs r4, r4, #0x10
    lsls r2, r2, #0x10
    lsrs r2, r2, #0x10
    lsls r3, r3, #0x18
    lsrs r3, r3, #0x18
    str r2, [sp]
    str r3, [sp, #4]
    movs r0, #1
    movs r1, #2
    adds r2, r5, #0
    adds r3, r4, #0
    bl CreateEntity_Interactables016_027
    add sp, #8
    pop {r4, r5}
    pop {r0}
    bx r0

    thumb_func_start CreateEntity_Interactable023
CreateEntity_Interactable023: @ 0x0802FC28
    push {r4, r5, lr}
    sub sp, #8
    adds r5, r0, #0
    adds r4, r1, #0
    lsls r4, r4, #0x10
    lsrs r4, r4, #0x10
    lsls r2, r2, #0x10
    lsrs r2, r2, #0x10
    lsls r3, r3, #0x18
    lsrs r3, r3, #0x18
    str r2, [sp]
    str r3, [sp, #4]
    movs r0, #1
    movs r1, #3
    adds r2, r5, #0
    adds r3, r4, #0
    bl CreateEntity_Interactables016_027
    add sp, #8
    pop {r4, r5}
    pop {r0}
    bx r0

    thumb_func_start CreateEntity_Interactable024
CreateEntity_Interactable024: @ 0x0802FC54
    push {r4, r5, lr}
    sub sp, #8
    adds r5, r0, #0
    adds r4, r1, #0
    lsls r4, r4, #0x10
    lsrs r4, r4, #0x10
    lsls r2, r2, #0x10
    lsrs r2, r2, #0x10
    lsls r3, r3, #0x18
    lsrs r3, r3, #0x18
    str r2, [sp]
    str r3, [sp, #4]
    movs r0, #2
    movs r1, #0
    adds r2, r5, #0
    adds r3, r4, #0
    bl CreateEntity_Interactables016_027
    add sp, #8
    pop {r4, r5}
    pop {r0}
    bx r0

    thumb_func_start CreateEntity_Interactable025
CreateEntity_Interactable025: @ 0x0802FC80
    push {r4, r5, lr}
    sub sp, #8
    adds r5, r0, #0
    adds r4, r1, #0
    lsls r4, r4, #0x10
    lsrs r4, r4, #0x10
    lsls r2, r2, #0x10
    lsrs r2, r2, #0x10
    lsls r3, r3, #0x18
    lsrs r3, r3, #0x18
    str r2, [sp]
    str r3, [sp, #4]
    movs r0, #2
    movs r1, #1
    adds r2, r5, #0
    adds r3, r4, #0
    bl CreateEntity_Interactables016_027
    add sp, #8
    pop {r4, r5}
    pop {r0}
    bx r0

    thumb_func_start CreateEntity_Interactable026
CreateEntity_Interactable026: @ 0x0802FCAC
    push {r4, r5, lr}
    sub sp, #8
    adds r5, r0, #0
    adds r4, r1, #0
    lsls r4, r4, #0x10
    lsrs r4, r4, #0x10
    lsls r2, r2, #0x10
    lsrs r2, r2, #0x10
    lsls r3, r3, #0x18
    lsrs r3, r3, #0x18
    str r2, [sp]
    str r3, [sp, #4]
    movs r0, #2
    movs r1, #2
    adds r2, r5, #0
    adds r3, r4, #0
    bl CreateEntity_Interactables016_027
    add sp, #8
    pop {r4, r5}
    pop {r0}
    bx r0

    thumb_func_start CreateEntity_Interactable027
CreateEntity_Interactable027: @ 0x0802FCD8
    push {r4, r5, lr}
    sub sp, #8
    adds r5, r0, #0
    adds r4, r1, #0
    lsls r4, r4, #0x10
    lsrs r4, r4, #0x10
    lsls r2, r2, #0x10
    lsrs r2, r2, #0x10
    lsls r3, r3, #0x18
    lsrs r3, r3, #0x18
    str r2, [sp]
    str r3, [sp, #4]
    movs r0, #2
    movs r1, #3
    adds r2, r5, #0
    adds r3, r4, #0
    bl CreateEntity_Interactables016_027
    add sp, #8
    pop {r4, r5}
    pop {r0}
    bx r0

    thumb_func_start TaskDestructor_Platform
TaskDestructor_Platform: @ 0x0802FD04
    push {lr}
    ldrh r0, [r0, #6]
    movs r1, #0xc0
    lsls r1, r1, #0x12
    adds r0, r0, r1
    ldr r0, [r0, #0x2c]
    bl VramFree
    pop {r0}
    bx r0

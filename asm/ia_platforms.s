.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

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

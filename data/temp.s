	.cpu arm7tdmi
	.arch armv4t
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"temp.c"
	.text
	.global	a
	.section	.rodata
	.align	2
	.type	a, %object
	.size	a, 4
a:
	.word	-1
	.ident	"GCC: (devkitARM release 65) 14.2.0"

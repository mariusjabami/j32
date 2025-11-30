.global _start
.global kmain

.section .text
_start:

	ldr sp, =_stack_top
	bl kmain

hang:
	b hang

.section .bss
_stack_bottom:
	.skip 0x4000

_stack_top:

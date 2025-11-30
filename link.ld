ENTRY(_start)

MEMORY
{
	RAM (rwx) : ORIGIN = 0X8000, LENGTH = 64K
}

SECTIONS
{
	.text : { *(.text) } > RAM
	.bss : { *(.bss) } > RAM
}

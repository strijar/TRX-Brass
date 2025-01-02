OUTPUT_FORMAT("elf32-microblaze", "", "")

ENTRY(_start)

MEMORY
{
    TEXT (w)    : ORIGIN = 0x00000000, LENGTH = 64k
    DATA (rw)   : ORIGIN = 0x10000000, LENGTH = 64k
}

SECTIONS
{
    .text ALIGN(4):
    {
        *(start.o)
        *(.text.startup .text)
    } >TEXT =0

    .data :
    {
        *(.shared)
        *(.data .data.* .gnu.linkonce.d.*)
        *(.rodata)
        *(.bss)
        SORT(CONSTRUCTORS)
    } >DATA
}

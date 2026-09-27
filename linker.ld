MEMORY
{
    FLASH (rx) : ORIGIN = 0x08000000, LENGTH = 32K
    RAM   (rwx): ORIGIN = 0x20000000, LENGTH = 12K
}

SECTIONS
{
    .text :
    {
        *(.text)
    } > FLASH

    .rodata :
    {
        *(.rodata)
    } > FLASH

    .data :
    {
        *(.data)
    } > RAM AT> FLASH

    .bss :
    {
        *(.bss)
    } > RAM
}
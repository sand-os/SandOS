@echo off
rem The SandOS Build Script

if exist SandOS.img del SandOS.img

echo Assembling the bootloader...
fasm boot_floppy.asm

echo Assembling the kernel...
fasm kernel.asm

echo Creating the floppy disk...
fat_imgen -c -f SandOS.img

echo Copying the bootloader to the disk...
fat_imgen -m -f SandOS.img -s boot_floppy.snd

echo Copying the kernel to the disk...
fat_imgen -m -f SandOS.img -i kernel.snd

echo Done!
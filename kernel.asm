;=======================================================================;
;		SandOS															;
;			(C) Copyright All SandOS Contributors						;
;			Licensed under the GPLv3 license - Read GPLv3.txt			;
;		boot_floppy.asm - The FAT12 floppy disk boot sector				;
;=======================================================================;
																		;
	use16																; We are loaded in 16-bit real mode, and we will set the gdt and protected mode later
	org 0																; We need this for 32 and 16-bit code
	format binary as 'snd'												; Output a sand core file
																		;
	jmp Sand16															; Jump to the 16-bit entry point
	
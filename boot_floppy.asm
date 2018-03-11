; ===================================================================
; =		SandOS														=
; =			(C) Copyright All SandOS Contributors					=
; =			Licensed under the GPLv3 license - Read GPLv3.txt		=
; =		boot_floppy.asm - The FAT12 floppy disk boot sector			=
; ===================================================================
	
	use16
	org 0
	
	jmp LoadSandKernel
	
	bpbOEMLabel					db	"SANDOS  "
	bpbBytesPerSector			dw	512
	bpbSectorsPerCluster		db	1
	bpbReservedForBoot			dw	1
	bpbNumberOfFATs				db	2
	bpbRootDirEntries			dw	224
	bpbTotalSectors				dw	2880
	bpbMediaDescriptorByte		db	0xF0
	bpbSectorsPerFAT			dw	9
	bpbSectorsPerTrack			dw	18
	bpbHeadsPerCylinder			dw	2
	bpbHiddenSectors			dd	0
	bpbLargeSectors				dd	0
	bsDriveNumber				db	0
	bsNTReserved				db	0
	bsBootSignature				db	0x29
	bsSerialNumber				dd	0x77777777
	bsVolumeLabel				db	"SANDOS     "
	bsFileSystem				db	"FAT12   "
	
	LF							equ	10
	CR							equ	13
	KernelSegment				equ	0x0700
	Buffer						equ	0x0200
	
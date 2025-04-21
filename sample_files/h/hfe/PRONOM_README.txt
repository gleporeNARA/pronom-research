A Universal Floppy Disk Drive Emulator

New website/server online ! : https://hxc2001.com

Introduction
Floppy disks have disappeared from the market since many years now, but surprisly the machines needed them still largely being used in various domains : Video games, Retro computing, Music, CNC machines (manufacturing/industrial process)... Early 2000s an alternative to the floppy disks was needed for these machines because the floppy support in PC machines started to disappear and the floppy disks reliability and quality was getting worse and worse.

I personnally started this project in 2006 to revive my Atari ST & Amiga machines and make them easier to use in the incoming world without floppy disks and floppy drives. The project have grown with the various support requests received during all these years. It now supports hundreds of machines and floppy formats. See the showroom to have a preview of the currently supported machines.

The HxC Floppy Emulator project main idea is to completely replace the floppy disk drive by an electronic device. This electronic device emulate the floppy disk drive behavior and functionnalities. The HxC Floppy emulators are designed to be very versatile and to support a large variety of computers / keyboards / samplers / CNC machines at a reasonable price. The HxC Floppy Emulators support most existing floppy formats.

http://hxc2001.free.fr/floppy_drive_emulator/


SDCard HxC Floppy Emulator HFE File format
Rev.1.1 - 06/20/2012
HxC Floppy Emulator Project
© 2006 – 2010 HxC2001
http://hxc2001.com/
http://torlus.com/floppy
SD HxC Floppy Emulator HFE File format
(Note : All data in this file are subject to change)
The HFE file format is an optimized floppy image format for the SD HxC Floppy Emulator hardware (PIC18F
based).
First part : 0x0000-0x0200 (512 bytes) : File header
typedef struct picfileformatheader_
{
unsigned char HEADERSIGNATURE[8]; // “HXCPICFE” 

https://hxc2001.com/download/floppy_drive_emulator/SDCard_HxC_Floppy_Emulator_HFE_file_format.pdf

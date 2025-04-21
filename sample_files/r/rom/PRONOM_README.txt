MSX is a standardized home computer architecture, announced by ASCII Corporation on June 16, 1983.[1][2] It was initially conceived by Microsoft as a product for the Eastern sector, and jointly marketed by Kazuhiko Nishi, the director at ASCII Corporation.[3] Microsoft and Nishi conceived the project as an attempt to create unified standards among various home computing system manufacturers of the period, in the same fashion as the VHS standard for home video tape machines.[4][5] The first MSX computer sold to the public was a Mitsubishi ML-8000, released on October 21, 1983, thus marking its official release date.[6]

https://en.wikipedia.org/wiki/MSX

Develop a program in cartridge ROM
MSX cartridge ROM can take a multitude of forms depending on the needs. Only the programming aspect will be explained here.

A ROM needs a header to be auto-executed by the system when the MSX is initialized.

After finding the RAM and initializing the system variables, the MSX system looks for the ROM headers in all the slots on the memory pages 4000h-7FFFh and 8000h-BFFFh. The search is done in ascending order. When a primary Slot is expanded, the search is done in the corresponding secondary Slots before going to the next Primary Slot.

The ROM Header
A header consists of 16 bytes and should be placed at 4000h or 8000h as below.

Header	Name	Use
+0	ID	Put these first two bytes at 041H and 042H ("AB") to indicate that it is an additional ROM.
+2	INIT	Address of the routine to call to initialize a work area or I/O ports, or run a game, etc. The system calls the address from INIT of each ROM header during the MSX initialisation in that order.
+4	STATEMENT	Runtime address of a program whose purpose is to add instructions to the MSX-Basic using CALL. STATEMENT is called by CALL instructions. It is ignored when 0000h. It is not called at MSX start up.
+6	DEVICE	Execution address of a program used to control a device built into the cartridge. For example, a disk interface. It is not called at MSX start up.
+8	TEXT	Pointer of the tokenizen Basic program contained in ROM. TEXT must be always an address more than 8000h and be specified in the header of the page 8000h-BFFFh. In other cases, it must always be 0000h under penalty of causing crash or bug.
+10	Reserved	6 bytes reserved for future updates.

https://www.msx.org/wiki/Develop_a_program_in_cartridge_ROM

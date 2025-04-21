BIOS Extension:
Why?
The full extent of the BIOS does not need to be cast forever in the silicon of the single PROM chip holding the firmware.

What?
The IBM BIOS can accept additional code as its own into one integrated whole. Hence additional PROM chips containing BIOS routines can be added to the PC. The BIOS will incorporate these new routines.

How?
The key for making BIOS extendable is a firmware routine that enables the BIOS to look for add-in code.

(1) Search for Preamble Bytes

During POST after interrupt vectors have been loaded into RAM, the resident BIOS code instructs the computer to check its ROM memory for the occurrence of the special preamble bytes, that mark the beginning of add-in BIOS routines. The BIOS searches for these preamble bytes in the absolute address range 0C8000 - 0F4000.

The preamble bytes take a specific form:

Two bytes indicate the beginning of an extension code section: 055h followed by 0AAh.

http://staff.ustc.edu.cn/~xyfeng/research/cos/resources/machine/biosextension.htm

https://en.wikipedia.org/wiki/Option_ROM

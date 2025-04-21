FCE Ultra
a Nintendo - NES Emulator on the Windows platform
<< Go to Nintendo - NES emulators list

FCE Ultra is an open-source, portable NES/Famicom emulator based on Bero's FCE source code. It has excellent sound emulation and support for a wide variety of in-cart expansion hardware("mappers"). PPU/CPU timing is good(in comparison to *most* other NES emulators, which are rated poor in this area). Several VS Unisystem games are supported well. Interesting features include emulation of the Zapper and VS Unisystem light gun via the mouse, and "authentic" Game Genie emulation.

https://www.zophar.net/nes/fce-ultra.html


FCE Ultra Save State Format

Updated:  Mar 9, 2003

---------------------------------------



FCE Ultra's save state format is now designed to be as forward and backwards

compatible as possible.  This is achieved through the (over)use of chunks.

All multiple-byte variables are stored LSB(least significant byte)-first.

Data types:



       (u)int8 - (un)signed 8 bit variable(also referred to as "byte")

       (u)int16 - (un)signed 16 bit variable

       (u)int32 - (un)signed 32 bit variable



-- Main File Header:



The main file header is 16-bytes in length.  The first three bytes contain

the string "FCS".  The next byte contains the version of FCE Ultra that saved

this save state.  This document only applies to version "53"(.53) and higher.

After the version byte, the size of the entire file in bytes(minus the 16 byte

main file header) is stored.  If oldversion is set to 255, the 32-bit version

field will be used.  In this field, a version such as 0.98.10 is stored as "9810"(decimal).

The rest of the header is currently unused and should be nulled out.  

Example of relevant parts:



       FCS <uint8 oldversion> <uint32 totalsize> <uint32 version>
       
       http://fceux.com/web/help/fceux.html

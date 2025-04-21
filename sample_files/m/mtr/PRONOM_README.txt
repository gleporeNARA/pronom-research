;+------------------------------+
;|MASTER TRACKER 1.1 AKMTRK1.OBJ|
;|BY [PYRO-FYRE]/ARKHAM 06/05/95|
;+------------------------------+

  This document is intended for the experienced programmer with knowledge of
a good deal of assembly and the 386. 

  This is the documentation for the MASTER TRACKER 2.x AKMTRK1.OBJ sound
routine. 
I realise that several ADLIB players exist on the PC but the editors was never
present with the routines for using in demos.
And i think the Sound Blaster is not a good device to play several digitized
voices when you have a slow PC because this system use a lot of time of the
CPU.
The FM music is quite fast when you use only 4 voices with an ADLIB or SB.
With the new fast registers of the SBPRO/SB16 and GUS, you can use 9 voices
without spend a lot of CPU time!
I think a demo is more good when you use FM music. I think the only GUS demos 
are not fantastic without song when you haven't a GUS (arrrg, I haven't got 
a GUS) and a simple FM music is welcommed!

  This code and the .OBJ file were writen by [PYRO-FYRE] from ARKHAM.
If you want to use this thing as it is though, you will have to code in 100% 
ASM. But it could be adapted on other language easilly: my editor 
MASTERTRACKER use these routines with a simple BASIC language.

This program don't support the mtr files larger than 64 Kb because of the 
segmentation in real mode.
In fact, MASTERTRACKER 2.x use the REAL FLAT MODE for making music larger 
than 64 Kb.

https://hwiegman.home.xs4all.nl/fileformats/mtr/Mtr.txt

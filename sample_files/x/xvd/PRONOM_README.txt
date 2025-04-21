
XVD 
        XGE Video Driver 
        Release 0 Specification
        by Lorenzo Micheletto
        
While devenloping XGE 2.00, one of my targets was to add more flexibility
to the hardware specific subsystems.
So i looked at what i was doing and where the hardware dipendence 
could be bound.

Chapter I: THE XVD INTERFACE

An XVD driver as defined in release 0 of the XVD specification
is a very minimalist thing, just the routines needed to check for
the graphics card, set the video mode and execute paging/video-ram-allocation.
Initially i planned to devenlop very complex drivers capable to "take over"
lots of higher level function if needed but to do this
i needed a "link while the program is running" module
to "link-in" the driver code (very complex)
and this "autolinker" could not restrict with safety the driver's actions
(imagine a driver conceived for "cracking specific programs" or worse)
so i decided to use very minimalist drivers that could be linked as they was.
As a side effect of this, an XVD TYPE ZERO driver is usually less than
one Kbyte long.
The 386video module just checks for XVD.XVD, loads it into memory
and fix-ups some offsets to complete the code/data relocation.
As i said the driver has only to check for video card, set the graphics mode
perform display-start, set-cpu-window and paletter read/write functions.
All the other things (blitting, page update methods etc. etc.) are up to
the 386video module and all the other related to graphics.

Chapter III: The driver header

; XVD XGE Video Driver
; Header format
__XVD_SIGNATURE= 0
                ; It be the four byte signature 'XVD0'
                ; XGE Video Driver TYPE ZERO, four byte file marker
                ; use it to see if the binary file is  an XVD driver
                ; now here comes the driver base relative offsets
                ; of every function supported
                
                

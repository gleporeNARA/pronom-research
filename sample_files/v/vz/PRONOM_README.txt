The VZ200 is a Z80 based 8-bit microcomputer dating back to 1983. It was manufactured by Video Technology in Hong Kong, and distributed in Australia by Dick Smith Electronics. There was a successor, the VZ300, which while showing some significant differences, was a revision rather than a major re-design. (Video Technology sold the same computer or variations thereof around the world under a number of different labels. If you want to write about those that is allowed. As this is an Australian website we will consistently use the terms VZ200 and VZ300 to refer to the computer except where a distinction is required.)

A wiki is a collaborative work and so contributions are most welcome. Please contact Andrew Laird via the VZ200/VZ300 Fans Facebook group (https://www.facebook.com/groups/4609469943/) if you would like to register an account here and help out.

http://wiki.vz200.org/index.php?title=Main_Page

Example 7 : Assembling directly to .VZ snapshot.
Purist's will skip this part, as the .VZ snapshot file format is a hack and nothing more than a hack. And
rightly so. It was created by Brian Murray way back in the early days just to get something to work , and
a such, from whichever side of the fence you are on, has stuck and has been pretty much the majority
standard for VZ snapshots, be it good or bad.
Unfortunately I have no documentation on the more formal and proper file method being the ".CVZ"
cassette file format, of which, MAME ( I think?), DSVZ200 and JVZ200 emulators use. So in this
section, we will quickly look at how to assemble a listing to the .VZ file snapshot.
There are two methods, either including the 23 bytes of the .VZ header into your own assembly listing,
and assembling or compiling the lot into a direct outputted machine code object code that is the .VZ
snapshot.
Or, by assembling a generic Z80 listing to object code, then running the Wintel executable file
"RBINARY.EXE" (created by Brian or Guy Thomason years ago), which simply amends the .VZ file
header to the machine code object file, and spits out the resulting .VZ snapshot file that all known
emulators do read.
RBINARY.EXE utility can be found on most good VZ200 It can also be found in the files section of the
VZ/Laser Facebook group. You will need to rename it. Worse case scenario, email the author for it.
; Code for .VZ snapshot header.
 defb 'VZF0'
 defb 'AGDGAME ' ; 16 spaces for filename.
 defb $f1
 defb $00 ; lb $7B00
 defb $7B0 ; hb $7B00
 org $7B00 
 
 http://www.vz200.org/bushy/Zen%20and%20the%20art%20of%20Assembly%20Language%20conversion.pdf

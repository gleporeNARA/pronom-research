From shred@chessy.aworld.de Wed Aug 13 08:34:28 1997
Date: Thu,  8 Aug 97  2:49:28 GMT
From: Richard Koerber <shred@chessy.aworld.de>
To: clevy@obelix.saclay.cea.fr
Subject: Re: MAUD format

Hi, Laurent!


> i answered Thomas Wenzel if i could supply me the specification of the MAUD
> format. he answered me you are the best person to contact for this question.

Yes, he's right. I wrote the multisnd.library for MacroSystem, so I know
all about the MAUD standard.

> can you help ?

I hope so. But tomorrow I will be on vacation for two weeks. And it is pretty
late now. I will write a short summary, let's hope it is enough so far. But if
you have any further questions, please feel free to write back. :-)

- Standard IFF format ("FORM....MAUD")

ID_MAUD:       equ       'MAUD'             ;the FORM-ID
ID_MHDR:       equ       'MHDR'             ;file header chunk
ID_MDAT:       equ       'MDAT'             ;sample data chunk
ID_MINF:       equ       'MINF'             ;optional channel info chunk (future)

http://lclevy.free.fr/amiga/MAUDINFO.TXT

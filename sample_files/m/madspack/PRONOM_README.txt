

As for MADSPACK decompression (or pFab, as you like), I do know what particular routines execute it. MADSPACK is Microprose's internal name for the whole algorithm, while pFab stands in the beginning of symbolic names of the key decompressing routines. I actually tried to RE them, to rewrite them into C, but I found it difficult. These routines were written in pure asm, and include a lot of opcodes (RCR, SAR, SHR) I don't know how to reproduce in C.
Also you will never find out anything about MADSPACK compression. All of Microprose executables include decompressing only.

I will research further for FF files, which use MADSPACK as well.

Colonization is not the only game using MADSPACK compression (and MADS game engine, in general), though. There are also:
Rex Nebular (1992)
Return of the Phantom (1993)
Dragonsphere (1993)
Bloodnet (1994) - maybe?
Darklands (1992) - maybe?

FF files contain fonts, it's pretty obvious, if you'd look into symbolic info. 

https://forums.civfanatics.com/threads/colonization-picture-viewer.256665/



Madspack file format decoder/encoder for Rex Nebular, Dragonsphere, Colonization and other Microprose games. Can run on Linux or Windows (using Cygwin). Designed as a translation/modding tool.

https://github.com/institution/mpskit

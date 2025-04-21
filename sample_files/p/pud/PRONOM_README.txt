Chief PUD Description

.PUD
File ID:	.pud
Type:	Blizzard Map
The file stores game map for the Starcraft 1, Warcraft 2, Warcraft 3, and such strategic computer games for Apple Mac and Microsoft Windows developed by Blizzard. The files are stored in Blizzard MPQ game data archives.

https://www.solvusoft.com/en/file-extensions/file-extension-pud/



PUD file format revision 3


Symbols used:

char    occupy 1 byte.
byte    occupy 1 byte.
word    occupy 2 bytes.
long    occupy 4 bytes.

The pud format consist of many sections, all sections start the same way:

        4 char          name of section
        long            length of the data (excluding header info)
        ...             data

0: Section 'TYPE', identifies as a PUD file

       10 bytes     'WAR2 MAP' + 00 00
        2 bytes     unused (always set to $0a and $ff by edtior,
                            but can be anything for the game)
        4 bytes     id tag (for consistence check in multiplayer)
        
        http://cade.datamax.bg/war2x/pudspec.html

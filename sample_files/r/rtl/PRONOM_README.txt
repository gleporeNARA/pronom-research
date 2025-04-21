Rise of the Triad: Dark War is a first-person shooter video game, developed and published by Apogee Software (now 3D Realms) in 1995. The player can choose one of five different characters to play as, each bearing unique attributes such as height, speed, and endurance. The game's story follows these five characters who have been sent to investigate a deadly cult, and soon become aware of a deadly plot to destroy a nearby city. Its remake was designed by Interceptor Entertainment and released by Apogee Games in 2013. The shareware version of the game is titled Rise of the Triad: The HUNT Begins.

The game began as a follow-up game to Wolfenstein 3D, but was soon altered and became a stand-alone game. It includes both single-player and multi-player functions, allowing individuals to connect with other gamers and tackle missions as a team. It is made by a modified version of Wolfenstein 3D engine and it was supposed to be called wolfenstein 2 the rise of the triad. The idea was scrapped by ID Software and apogee software bought the license of that game.

https://en.wikipedia.org/wiki/Rise_of_the_Triad


Rise of the Triad

                                 Version 1.1

                                 Hacker Info

RTL & RTC File format:
----------------------

Rise of the Triad (ROTT) uses two file extensions for levels data, RTL
and RTC.  RTC indicates that the file is for Comm-bat (multiplayer) play
only and does not contain any enemies or exits.  RTL indicates the file
can can be used for both Comm-bat and standard game levels.  In Comm-bat,
the enemies in RTL maps in standard play are not present during Comm-bat
games and the exit and entrance arches behave like teleporters.  Other than
these differences, the two files are alike.

The RTL/RTC file format changed with the release of ROTT version 1.1.
Since the shareware version of ROTT cannot use alternate levels, this
should not be a problem for map designers.  The new format is much more
formal.  If any changes are made in the format in the future,  the first 8
bytes of the file will inform you if it is compatible with your editor/viewer.

The RTL/RTC file is broken into three sections:  Version info, Header block,
and Data block.


                            RTL/RTC version info

This 8 byte block of data indicates what type of file it is and which
version of the RTL/RTC file format it is.

  Offset   Size    Description
-------------------------------------------------------------
    0        4     Format signature
    4        4     Version number

Format signature :

This is used to indicate what type of levels are contained within the
file.  This is a null-terminated string containing either "RTL" or "RTC".

Version number :

0101h for version 1.1.  If this value is higher, it indicates that the file
format has changed.  This is NOT the ROTT version.


https://github.com/videogamepreservation/rott/blob/master/rott/HACKER.TXT

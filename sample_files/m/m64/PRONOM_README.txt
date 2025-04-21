Mupen64 is a n64 emulator desgined to be multi-OS. It has been developped on/for Linux originally but the emulator has already been ported succesfully on Windows and MacOSX for example. Actually the program can be easily ported on all OS supported by the SDL library.

In its current state, the emulator is highly compatible and use a plugin system. With the correct plugins (``correct'' can be computer dependent), it can achieve nearly perfect graphics and sound in many games.

The biggest problem of this emulator until now was its speed but now it's progressively changing with a totally new core and there's still a huge room for improvements. Anyway if you have a fast machine, you should already be able to get many games running fullspeed.

http://mupen64.emulation64.com/what.htm


Emulator Resources
Mupen
M64
m64 is the movie capture format of Mupen64.
M64 files consist of a 1024-byte header with various blocks that depend on settings, followed by some input data.
Header format
000 4-byte signature: 4D 36 34 1A "M64\x1A"
004 4-byte little-endian unsigned int: version number, should be 3
008 4-byte little-endian integer: movie "uid" - identifies the movie-savestate relationship,
                                  also used as the recording time in Unix epoch format
                                  
https://tasvideos.org/EmulatorResources/Mupen/M64

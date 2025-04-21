REDengine
REDengine is a game engine developed by CD Projekt Red exclusively for their nonlinear role-playing video games.[63] It is the replacement of the Aurora Engine CD Projekt Red had previously licensed from BioWare for the development of The Witcher.[64]

REDengine is portable across 32- and 64-bit software platforms and runs under Windows.[63] REDengine was first used in The Witcher 2: Assassins of Kings for Windows.[65] REDengine 2, an updated version of REDengine used in The Witcher 2,[63] also runs under Xbox 360[66] and both OS X[67] and Linux, however these ports were made using a compatibility layer similar to Wine called eON. REDengine 3 was designed exclusively for a 64-bit software platform, and also runs under PlayStation 4,[68] Xbox One, and Nintendo Switch.

https://en.wikipedia.org/wiki/CD_Projekt#REDengine

struct Header {
    char RDAR[4];
    int version; // 12
    int64 fileSystemOffset;
    int64 fileSystemSize;
    int64 unk2; // 0
    int64 fileSize;
    int unk3[33]; // 0
};

https://wiki.redmodding.org/cyberpunk-2077-modding/for-mod-creators/files-and-what-they-do/file-formats

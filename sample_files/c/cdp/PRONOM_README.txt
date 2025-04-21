CHUMP File Format Specification (*.chump, *.cdp)
A chump file or cdp file is a binary coded file for storing Trainz Assets of configuration files in a compact format, easy to process by the game.

A file with the chump extension is simply a packed config.txt file, whereas a cdp file can contain more assets and files beyond the config.txt. Note that there is no difference in format between the two.

The file format specification was determined by reverse-engineering and does not reflect any data provided by Auran/N3V.

All data is stored in little-endian (least significant byte first).

File header
4 bytes: File ID: Always ACS$ (41 43 53 24)
4 bytes: Version: Always 01 00 00 00
4 bytes: Reserved: Always 00 00 00 00
4 bytes: File length (UInt32) - how many bytes are left to read until EOF is reached e.g. 32 00 00 00 (50 more bytes until EOF)

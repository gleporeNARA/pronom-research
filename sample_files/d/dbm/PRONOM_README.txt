DBM0 Format Specification
27 Jan 2012
1. Introduction
This is the official specification of DBM0 file format used by DigiBooster 3 for storing music modules. Version 3 of DigiBooster does not introduce any extensions to the format, so files saved with version 2 and 3 are both ways compatible. It applies to module players as well, every player supporting DigiBooster Professional 2, will play modules saved with version 3. The only difference between a module saved with version 2 or 3 is version number encoded in the file header.

The DBM0 format is chunk-based, similarly to good old IFF. Every chunk starts with a header, containing chunk identifier and its data length in bytes. Traditional chunk order is (NAME, INFO, VENV, PENV, SONG, INST, PATT, SMPL). DigiBooster 3 preserves this order when saving, but loader does not depend on it, and accepts any order with one exception that INFO must be placed before SONG, INST, PATT, and SMPL. Writing chunk order dependent loaders assuming more than this INFO rule is strongly discouraged. A chunk header is defined as follows:


0	Chunk ID	4 bytes	Four ASCII codes of capital letters.
4	Data Length	4 bytes	In bytes, excluding this header.
All multibyte numbers (16 or 32 bits) are stored with big-endian byte order (native for M680x0 and PowerPC processors) regardless of host byte ordering. Sound samples are stored in big-endian as well, the same for chunk identifiers. Text informations (module name, song names, instrument names) are assumed to be encoded with ISO-8859-1 (Latin1) character set, DigiBooster 3 performs no conversions, so every character with code above 127 is just passed through and displayed with local encoding. That is why using such characters is not recommended. Possible future Unicode support will be added via additional chunks. If a byte is treated as a bitfield, bit 0 is the least significant, bit 7 is the most significant.

2. DBM0 File Header
0	'D'	'B'	'M'	'0'	4 bytes	File format identifier.
4	ver.	rev.	 	2 bytes	Version and revision of the creator.
6	reserved	 	2 bytes	Reserved.

https://web.archive.org/web/20121213001136/http://digibooster.eu/en/format.php

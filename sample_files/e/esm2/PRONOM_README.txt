Morrowind ESP File Format
Overview
The esp is basically a list of objects. Each object represents something that has been added or changed from the ESM.

The first 362 bytes of the ESP are the header. (This is true for most ESP files, but can vary if the ESP uses a different master file than Morrowind.esm, or if it is dependent upon more than one master file). The header contains the author's name, a description of the mod, the master filename, etc.

Objects begin following the header. Each object starts with its type and length. Then come the subobjects ((type + length + data) + subobject + ...). The type is a 4 letter word (Ex: DOOR, LIGH, STAT). The length field of some larger objects is 12 bytes, but the length field of most objects and subobjects is only 4 bytes.

Note: It appears that the extra 8 bytes of "length data" may actually hold bitflag information. E.g., if an item is marked as being "blocked" or "references persist", the last 8 bytes of this "length" field change. We just haven't pinned down what it all means at this time.

The length, as with all binary values in the ESP file, is written in little endian form, base 256, so that the least significant byte comes first, and the most-significant comes last: A*256^0 + B*256^1 + C*256^2....

In addition, most "name" fields in Morrowind are limited to 31 characters in length. In the ESP file, these fields are often written as 32-byte strings, with extra space at the end filled by zeroes, and there must be at least one zero at the end, which forces the maximum name length to be 31.


Field	Type	Length	Description
Header
Warning. Be careful about assuming a fixed length for the header. Because the header contains the master filename, the length of the header can vary....
File Signature	String	4	This is always "TES3" to indicate that it's an elder scrolls 3 file.


https://www.mwmythicmods.com/tutorials/MorrowindESPFormat.html

TES4 is the header record for the mod file. It contains info like author, description, file type, and masters list. Record flags indicate the following:

0x1: if set, the file is treated as a master, regardless of what the file extension says.
0x80: whether the file has localized string tables. If this flag is not set, lstrings are treated as zstrings.
0x200: if set, the file is treated as a light master.
C	Field	Type/Size	Info
+	HEDR	struct
(12 bytes)	Header
float32 - Version (0.94 for older files; 1.7 for more recent ones).
uint32 - Number of records and groups (not including TES4 record itself).
uint32 - Next available object ID.


Type/Size	Info
char[4]	Type
uint32	Size of data field
uint32	Flags
Flag	Meaning
0x00000001	(TES4) Master (ESM) file

https://en.uesp.net/wiki/Skyrim_Mod:Mod_File_Format/TES4


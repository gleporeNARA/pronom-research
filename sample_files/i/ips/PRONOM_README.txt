IPS (binary patch format)
File Format
Name	IPS (binary patch format)
Ontology	
Electronic File Formats
Archiving
IPS (binary patch format)
Extension(s)	.ips
Released	≤ 1993
IPS is a simple format for binary file patches, popular in the ROM hacking community. "IPS" allegedly stands for "International Patching System". The original author of the format is unknown.

Structure
An IPS file starts with the magic number "PATCH" (50 41 54 43 48), followed by a series of hunks and an end-of-file marker "EOF" (45 4f 46). All numerical values are unsigned and stored big-endian.

Regular hunks consist of a three-byte offset followed by a two-byte length of the payload and the payload itself. Applying the hunk is done by writing the payload at the specified offset.

RLE hunks have their length field set to zero; in place of a payload there is a two-byte length of the run followed by a single byte indicating the value to be written. Applying the RLE hunk is done by writing this byte the specified number of times at the specified offset.

As an extension, the end-of-file marker may be followed by a three-byte length to which the resulting file should be truncated. Not every patching program will implement this extension, however.

Limitations and pitfalls
Due to its simplicity, the IPS format suffers from a number of problems:

Programs generating IPS files should avoid generating hunks with offset 0x454f46, as the byte encoding of this offset may be misinterpreted as the end-of-file marker. (One way to do it is to generate them with offset 0x454f45 and include the preceding byte.)
IPS patches are not reversible, unlike e.g. unified diffs: one cannot recover an unpatched binary from a patch file and a patched binary.
There are no integrity checks built into the IPS format. The responsibility to ensure that the patch is not corrupted, that the correct file is patched, and that the result of patching is valid falls upon the user.
The IPS format is next to impossible to extend in a backwards-compatible way; extending the format risks introducing misinterpretations which are often not even detectable by the patching software (given the above).
IPS patches cannot affect bytes beyond offset 16842750 (0x100fffe = 0xffffff + 0xffff); the IPS patch format may be therefore inadequate for files larger than 16 MiB.
External links
Format description at ROM Hack City


http://fileformats.archiveteam.org/wiki/IPS_(binary_patch_format)

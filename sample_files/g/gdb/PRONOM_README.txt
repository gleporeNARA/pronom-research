Garmin MapSource (MPS), GPS Database (GDB) and
Folder and Item (GFI) File Format

General file structure
Type Content
char[4] Signature
Page 4
Garmin MapSource (MPS), GPS Database (GDB) and Folder and Item (GFI) File Format 2021-11-29
Type Content
"MsRc" (probably stands for "MapSource"): MPS and GDB
"DifG" (probably stands for "GFI Database" backwards): GFI
version Primary file format
Record 'D' – File format version
Record 'A' – File author information
string Application field (the presence of this field depends on the primary file format version)
List of further records

https://www.memotech.franken.de/FileFormats/Garmin_MPS_GDB_and_GFI_Format.pdf

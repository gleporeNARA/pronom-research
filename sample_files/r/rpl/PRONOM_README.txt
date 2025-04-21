EA DAT TERF
Contents
1	DAT (TYPE 1 - NO COMPRESSION USED)
1.1	Format Specifications
1.2	Notes and Comments
2	DAT (TYPE 2 - SOME COMPRESSION USED)
2.1	Format Specifications
2.2	Notes and Comments
3	DAT (TYPE 3 - SOME COMPRESSION USED)
3.1	Format Specifications
3.2	Notes and Comments
4	COMMON INFO
4.1	Compatible Programs
4.2	QuickBMS Script
4.3	Games
DAT (TYPE 1 - NO COMPRESSION USED)
Format Type : Archive
Endian Order : Little Endian

Format Specifications
char {4}     - Header (TERF)
uint32 {4}   - Directory Offset (64)
uint32 {4}   - Unknown (83886594)
uint16 {2}   - File Padding Size (64)
uint16 {2}   - Number Of Files
byte {48}    - null
char {4}     - Directory Header (DIR1)

http://wiki.xentax.com/index.php/EA_DAT_TERF

http://footballidiot.com/forum/viewtopic.php?t=2897

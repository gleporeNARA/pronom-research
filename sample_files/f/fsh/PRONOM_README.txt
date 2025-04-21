EA SSH FSH Image
Return to the list of games
Choose archive extension:

Contents
1	SSH, FSH, MSH, XSH, PSH
1.1	Format Specifications
1.2	Format Specifications (FSH/ShpF type)
1.3	Binary Attachments Specifications
1.4	Entry Types
1.5	MultiEx BMS
1.6	Notes
1.7	Games
1.8	Supported Programs
1.9	Noesis Scripts
1.10	See Also
2	Gallery
SSH, FSH, MSH, XSH, PSH
Format Type : Image
Endian Order : Little Endian
Signature : SHPI / SHPP / SHPS / SHPX / SHPM

Format Specifications
// EA Graphics (FSH, SSH etc.)
// file format

// Note: Whole file may be compressed with LZSS or Huffman
// Note: Image data may be swizzled (XBOX only?)


// header
4 bytes (char) - signature  // "SHPI" for PC games
                            // "SHPP" for PS1 games
                            // "SHPS" for PS2 games
                            // "ShpX" or "SHPX" for XBOX games
                            // "SHPM" for PSP games
4 bytes (uint32) - total file size

https://wiki.xentax.com/index.php/EA_SSH_FSH_Image

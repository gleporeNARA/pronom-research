LSLib
This package provides utilities for manipulating Divinity Original Sin 1, Enhanced Edition, Original Sin 2 and Baldur's Gate 3 EA files:

Extracting/creating PAK packages
Extracting/creating LSV savegame packages
Converting LSB, LSF, LSX, LSJ resource files

public struct LSBHeader
    {
        /// <summary>
        /// LSB file signature since BG3
        /// </summary>
        public static byte[] SignatureBG3 = new byte[] { 0x4C, 0x53, 0x46, 0x4D };

https://github.com/Norbyte/lslib/blob/262890bcaa4db5987d3afb21e77b5dd26f8d5d6c/LSLib/LS/Resource.cs#L79

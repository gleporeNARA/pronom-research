LSLib
This package provides utilities for manipulating Divinity Original Sin 1, Enhanced Edition, Original Sin 2 and Baldur's Gate 3 EA files:

Extracting/creating PAK packages
Extracting/creating LSV savegame packages
Converting LSB, LSF, LSX, LSJ resource files

internal struct LSFMagic
    {
        /// <summary>
        /// LSOF file signature
        /// </summary>
        public static byte[] Signature = new byte[] { 0x4C, 0x53, 0x4F, 0x46 };

        
https://github.com/Norbyte/lslib/blob/262890bcaa4db5987d3afb21e77b5dd26f8d5d6c/LSLib/LS/Resources/LSF/LSFCommon.cs#L12

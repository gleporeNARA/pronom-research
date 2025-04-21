List of radio stations (VC)
Jump to navigationJump to search
This is a list of radio stations in Vice City, including their file information. Radio stations are long stretches of audio that can be only heard while the player is in a vehicle. Some vehicles are restricted to only one station. In the PC version, radio station audio are in ADF format located in the Audio directory. In the PS2 version, they are in VB format located in the audio\Music directory. In the Xbox version, they are in standard WMA format located in the Audio directory. Textures of radio icons as seen in the pause menu are located in the fronten2.txd file. Opcode 041E is used to set the radio station in the script.

https://gtamods.com/wiki/List_of_radio_stations_(VC)

ADF
Jump to navigationJump to search
The ADF file format is used for the radio stations in Vice City. It is equal to a raw MP3 file with no ID3 tag (though a tag will likely be ignored) with a very simple encryption: every byte should be XOR-ed against the value 0x22.

Example
This is an example of performing a XOR operation on a byte within a file. The first byte in an ADF file is 0xDD. In binary, that would be 0b11011101. Perform a XOR on that against the value 0x22, which is 0b100010 in binary. If the digit in 0xDD corresponds to 0x22's digit "1", then switch the digit to its opposite. If the digit in 0xDD corresponds to 0x22's digit "0", then leave the digit alone. The result would be 0b11111111, which is 0xFF.

https://gtamods.com/wiki/ADF

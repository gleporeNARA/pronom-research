Purpose: SymMOD (Symphonie Pro) module loader
* Notes  : Some effects aren't supported.
*          Virtual instruments are partially supported.
*          DSP settings aren't supported (yet?), but instruments which use the DSP will be set to use
*          plugin number 1, so you can easily configure a suitable effect yourself in OpenMPT.
* Authors: Devin Acker


if (!file.ReadMagic("SymM")
		|| file.ReadUint32BE() != 1)
		return false;
		
https://github.com/devinacker/openmpt/commit/ea89d3090ecc2509b7505f41575b2f40a74bca0b


Symphonie Song Player (.SymMod)
First Release to play songs pretty well already
Full source code is included to show how to decode Symphonie Soundmodules.

http://aminet.net/package/mus/play/SymphoniePlayer

Pro Evolution Soccer 2016/zlib

Introduction
zlib is the library used by PES for file compression. While zlib is a very general method for file compression, Konami has edited it very slightly for use in PES. If for example a *.dds file appears to be broken or a text file only displays gibberish, it is likely that it is just compressed with zlib. This page will explain in several sections how you can recognize zlib, what files generally use zlib and when you use it, how you can unzlib and zlib files yourself, some general reminders and as last the download section.

Recognizing zlib
As described in the Introduction, zlib is the reason 99% of the time why the texture you ripped from PES won't open in Photoshop or any other image editor. Photoshop will give the error Could not complete your request because the file-format module cannot parse the file. Usually Explorer also won't show a preview in the thumbnail of the texture either (provided you had DDS preview thumbnails to begin with). A .xml file with zlib will usually show nothing when it is opened. Although if you open it with a text editor (like Notepad) it should read WESYS at the start of the file and this goes for .mtl and .bin files as well. WESYS is the header of zlibbed files for PES. Most MODEL-files in PES are usually zlibbed as well. A general way to check whether something is zlibbed or not is to just open the file in a hex editor and check the header of the file. Keep in mind that not all files in PES have to be zlibbed when you extracted them.

https://implyingrigged.info/wiki/Pro_Evolution_Soccer_2016/zlib

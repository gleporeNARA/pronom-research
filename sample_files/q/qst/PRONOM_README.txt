I recently discovered Zelda Classic, a fascinating project to clone the classic Legend of Zelda game. This is what the original game looks like running in an emulator:


The Legend of Zelda
Why does anyone care? Look, it’s just a really cool game, okay?

These programmers created their own game engine and then cloned the original Zelda graphics for use in the game. But the real value-add is being able to create new quests, distribute them for others to play, and download other quests to play in the engine.


But I just can’t leave well enough alone. And I can’t contain my curiousity for how this thing operates. It’s free, but not open source (that makes it free as in beer but not speech for those of you who understand those terms better). A Linux engine is slated, but nothing is solid. But no engine source code will be released. However, just as in multimedia hacking, I maintain that the code is not nearly as important as the data. If the data file format for the quest files was known, independent, interoperable game engines could be created.

Let’s look at a sample data file: A file begins with a 24- (0x18-) byte signature consisting of the characters “Zelda Classic Quest File” (no NULL termination). From then on, the data is apparently encrypted. According to the documentation and forums over at the Zelda Classic website, the password is stored somewhere in the data file, in an obfuscated manner. The game engine needs to be able to decrypt and load the file. Whereas, if you load a file in the ZC editor, it will ask you for a password before allowing you to do anything with it.

If you are editing a quest file, you have the option of exporting an unencoded quest file (with an extension of .qsu). This file type begins with a signature of “AG ZC Enhanced Quest File”. It goes on to have a clear fourcc-chunked format. After sorting out the chunk types, I found out from the Zelda Classic forums that this file format is actually quite carefully documented. At the very least, C header file definitions are available:

https://multimedia.cx/eggs/the-data-of-zelda/

https://www.zeldaclassic.com/

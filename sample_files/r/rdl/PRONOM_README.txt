Descent is a first-person shooter (FPS) game developed by Parallax Software and released by Interplay Productions in 1995 for MS-DOS, and later for Macintosh, PlayStation, and RISC OS. It popularized a subgenre of FPS games employing six degrees of freedom and was the first FPS to feature entirely true-3D graphics. The player is cast as a mercenary hired to eliminate the threat of a mysterious extraterrestrial computer virus infecting off-world mining robots. In a series of mines throughout the Solar System, the protagonist pilots a spaceship and must locate and destroy the mine's power reactor and escape being caught in the mine's self-destruction, defeating opposing robots along the way. Players can play online and compete in either deathmatches or cooperate to take on the robots.

Descent was a commercial success. Together with its sequel, it sold over 1.1 million units as of 1998 and was critically acclaimed. Commentators and reviewers compared it to Doom and praised its unrestrained range of motion and full 3D graphics. The combination of traditional first-person shooter mechanics with that of a space flight simulator was also well received. Complaints tended to focus on the frequency for the player to become disoriented and the potential to induce motion sickness. The game's success spawned expansion packs and the sequels Descent II (1996) and Descent 3 (1999). A prequel, also titled Descent, was successfully funded in 2015, but production ceased in late 2019.

https://en.wikipedia.org/wiki/Descent_(1995_video_game)

A Descent level is encoded in a file called an RDL (Registered Descent Level) file. This document describes in some detail the format of an RDL file, and what each section and structure in the file is.

This document was written by Jon Hylands.

Basic Structure
An RDL file is composed of three main parts:

Header information
Mine structures
Objects
We will now examine each of these three parts in detail.
 

Header Information

char[4] signature;
long version;
long mineDataOffset;
long objectsOffset;
long fileSize;
Every Descent RDL file starts with a four-bye signature string, which is the ascii string "LVLP". The following four bytes is the version of the RDL file, which, for Descent 1 is 1.

https://web.archive.org/web/20081120054017/http://www.descent2.com/ddn/specs/rdl

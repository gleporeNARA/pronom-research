Ego Game Technology Engine is a video game engine developed by Codemasters. While it is primarily used for racing games, it has also been used in a few first-person shooters.

Ego is a modified version of the Neon game engine that was used in Colin McRae: Dirt and was developed by Codemasters and Sony Computer Entertainment using Sony Computer Entertainment's PhyreEngine cross-platform graphics engine.[1] The Ego engine was developed to render more detailed damage and physics as well as render large-scale environments

https://en.wikipedia.org/wiki/Ego_(game_engine)

The NeFS archive file format has been partially reversed engineered. The NeFS format is used in various games developed by Codemasters (such as DiRT 4) using their proprietary EGO game engine.

The NeFS Edit tool was created to extract files from and modify these archive files. The tool has limitations and has issues with certain archives. Read the readme for more information. Binaries and source code provided as-is with no support.

NeFS Edit downloads
NeFS Edit source
NeFS file format documentation

https://victorbush.com/2018/04/nefs-edit/

https://github.com/victorbush/ego.nefsedit/wiki

Header Intro
The header intro contains size, encryption, and verification information.

Start*	End*	Length	Description	Notes
0x00	0x03	0x04	Magic #	4E 65 46 53 (ASCII: "NeFS"); 0x5346654E

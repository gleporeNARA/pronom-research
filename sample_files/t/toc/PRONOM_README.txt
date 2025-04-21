Frostbite is a game engine developed by DICE, designed for cross-platform use on Microsoft Windows, seventh generation game consoles PlayStation 3 and Xbox 360, eighth generation game consoles PlayStation 4, Xbox One and Nintendo Switch and ninth generation game consoles PlayStation 5 and Xbox Series X/S.

The game engine was originally employed in the Battlefield video game series, but would later be expanded to other first-person shooter video games and a variety of other genres. To date, Frostbite has been exclusive to video games published by Electronic Arts.[1][2]

https://en.wikipedia.org/wiki/Frostbite_(game_engine)

TOC files
The purpose of the TOC (Table of Content) files is to describe what content can be found in the underlying data structure.

For example, layout.toc contains information about the available installation chunks (packages), how they depend on each other and what bundles they contain.

In the case of superbundles, TOC files always come with an associated .sb file. The TOC file contains the meta data of the bundles and specifies where the data of them can be found in the corresponding .sb file. In addition to this, it also contains references to file parts which we call TOC resources.

TOC files always start with magic 0x00D1CE01 and the data section starts at 0x22C. In case of superbundle TOC files the data section appears to be wrapped inside another container format that starts with magic 0x00000030.

https://github.com/xyrin88/anthemtool
